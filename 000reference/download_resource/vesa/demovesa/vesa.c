/*
   VESA.C   By Paolo Pancheri (300797)
   URL: http://www.geocities.com/SiliconValley/Park/8933/
   Email: darkangel@tin.it


   Using the Vesa BIOS extensions 2.0
   Version for DJGPP 2.0
   last revision: 26/08/97
*/

#include "vesa.h"

BOOL init_VBE_mode(WORD vbemode)
{
   struct MODEINFO modeinfo;
   __dpmi_meminfo meminfo;

   if(get_mode_info(vbemode, &modeinfo)) return(VBE_INVALID_MODE);
   if(modeinfo.bitsperpixel!=8) return(VBE_INVALID_MODE);
   if(!(modeinfo.modeattributes&0x80)) return(VBE_LINEAR);
   meminfo.size=(unsigned long)(modeinfo.xresolution*modeinfo.yresolution);
   meminfo.address=modeinfo.physbaseptr;
   if(__dpmi_physical_address_mapping(&meminfo)) return(VBE_MAPPING);

   __djgpp_nearptr_enable();
   vbememory=(char *)(meminfo.address + __djgpp_conventional_base);
   if((vbebuffer=(char *)malloc(modeinfo.xresolution*modeinfo.yresolution))==NULL) return(VBE_NOMEM);
   xresolution=modeinfo.xresolution;
   yresolution=modeinfo.yresolution;

   return(set_VBE_mode(vbemode));
}

BOOL done_VBE_mode(void)
{
   union REGS regs;

   regs.h.ah=0x00;
   regs.h.al=0x03;
   int86(0x10, &regs, &regs);

   free(vbebuffer);
   __djgpp_nearptr_disable();
}

BOOL get_VBE_info(struct VBEINFO *vbeinfo)
{
   __dpmi_regs regs;

   strncpy(vbeinfo->vbesignature, "VBE2", 4);
   regs.x.ax=0x4F00;
   regs.x.di=__tb & 0x0F;
   regs.x.es=(__tb >> 4) & 0xFFFF;
   dosmemput(vbeinfo, sizeof(struct VBEINFO), __tb);
   __dpmi_int(0x10, &regs);
   dosmemget(__tb, sizeof(struct VBEINFO), vbeinfo);

   return(regs.h.ah);
}

char *get_oem_string(DWORD oemstringptr, char *string, int maxlength)
{
   int offset;

   offset=(oemstringptr>>12 & 0xFFFF0) + (oemstringptr & 0xFFFF);
   dosmemget(offset, maxlength, string);
   return(string);
}

WORD *get_video_modes(DWORD videomodeptr, WORD *modes, int maxlength)
{
   int offset;

   offset=(videomodeptr>>12 & 0xFFFF0) + (videomodeptr & 0xFFFF);
   dosmemget(offset, maxlength, modes);
   return(modes);
}

BOOL get_mode_info(WORD mode, struct MODEINFO *modeinfo)
{
   __dpmi_regs regs;

   regs.x.ax=0x4F01;
   regs.x.cx=mode;
   regs.x.di=__tb & 0x0F;
   regs.x.es=(__tb >> 4) & 0xFFFF;
   __dpmi_int(0x10, &regs);
   dosmemget(__tb, sizeof(struct MODEINFO), modeinfo);

   return(regs.h.ah);
}

BOOL set_VBE_mode(WORD vbemode)
{
   __dpmi_regs regs;

   regs.x.ax=0x4F02;
   regs.x.bx=vbemode;
   __dpmi_int(0x10, &regs);

   return(regs.h.ah);
}

BOOL get_VBE_mode(WORD *vbemode)
{
   __dpmi_regs regs;

   regs.x.ax=0x4F03;
   __dpmi_int(0x10, &regs);

   *vbemode=regs.x.bx;
   return(regs.h.ah);
}

// Set all the palette (using a series of 768 char)
void setpalette(char *palette)
{
   register int i;

   outp(RGB_RESET, 0xFF);  // Prepare the VGA card
   outp(RGB_WRITE, 0);     // Tell that we'll write all the palette
   for(i=0;i<256;i++) {
      outp(RGB_DATA, palette[i*3]);    // Red
      outp(RGB_DATA, palette[i*3+1]);  // Green
      outp(RGB_DATA, palette[i*3+2]);  // Blue
   }
}

// Read the palette
void getpalette(char *palette)
{
   register int i;

   outp(RGB_RESET, 0xFF);  // Prepare the VGA card
   outp(RGB_READ, 0);      // Tell that we'll write all the palette
   for(i=0;i<256;i++) {
      palette[i*3]=  inp(RGB_DATA);  // Red
      palette[i*3+1]=inp(RGB_DATA);  // Green
      palette[i*3+2]=inp(RGB_DATA);  // Blue
   }
}

// Wait for the retrace of the screen
void waitretrace(void)
{
   // Wait vertical retrace
   while((inportb(0x03DA)&0x08));

   // Wait refresh
   while(!(inportb(0x03DA)&0x08));
}

BOOL clearbuffer(BYTE color)
{
   memset(vbebuffer, color, xresolution*yresolution);
}

void put_pixel(int x, int y, BYTE color)
{
   vbememory[y*xresolution+x]=color;
}

void put_pixelb(int x, int y, BYTE color)
{
   vbebuffer[y*xresolution+x]=color;
}

// Draw a frame in the video memory. Work only in VGA mode 320x200x256
void showframe(short x, short y, struct IMAGE *frame)
{
   register int county, countx, pixel;

   for(county=0;county<frame->height;county++)
      for(countx=0;countx<frame->width;countx++)
         if(pixel=frame->data[county*frame->width+countx])
            vbememory[(y+county)*xresolution+x+countx]=pixel;
}

void showframeb(short x, short y, struct IMAGE *frame)
{
   register int county, countx, pixel;

   for(county=0;county<frame->height;county++)
      for(countx=0;countx<frame->width;countx++)
         if((pixel=frame->data[county*frame->width+countx])!=-2)
            vbebuffer[(y+county)*xresolution+x+countx]=pixel;
}

void showframeb_rev(short x, short y, struct IMAGE *frame)
{
   register int county, countx, pixel;

   for(county=0;county<frame->height;county++)
      for(countx=0;countx<frame->width;countx++)
         if((pixel=frame->data[county*frame->width+countx])!=-2)
            vbebuffer[(y+county)*xresolution+x+frame->width-countx]=pixel;
}

BOOL showbuffer(void)
{
   memcpy(vbememory, vbebuffer, xresolution*yresolution);
}
