/*
   DEMOVESA.C   By Paolo Pancheri (300797)
   URL: URL: http://www.geocities.com/SiliconValley/Park/8933/
   Email: darkangel@tin.it

   How to use the Vesa BIOS extensions 2.0
   Version for DJGPP 2.0
   Last revision: 26/08/97
*/

#include <stdio.h>
#include <time.h>
#include "vesa.h"

int main(void)
{
   struct VBEINFO vbeinfo;
   struct MODEINFO modeinfo;
   char string[200];
   WORD modes[100];
   BOOL result;
   int i, x, y;

   if(result=get_VBE_info(&vbeinfo)) {
      printf("VBE Software error (%hi)!\n", result);
      return(result);
   }
   clrscr();

   // Get informations about the VBE
   printf("Signature:                    "); for(i=0;i<4;i++) printf("%c", vbeinfo.vbesignature[i]); printf("\n");
   printf("Version:                      %hX\n", vbeinfo.vbeversion);
   printf("Oem string:                   %s\n", get_oem_string(vbeinfo.oemstringptr, string, 200));
   printf("Capabilities:                 ");
      if(!(vbeinfo.capabilities[0] & 0x01)) printf("DAC is fixed width\n");
      else printf("DAC is programmable width\n");
      if(!(vbeinfo.capabilities[0] & 0x02)) printf("\t\t\t      Controller is VGA compatible\n");
      else printf("\t\t\t      Controller is not VGA compatible\n");
      if(!(vbeinfo.capabilities[0] & 0x04)) printf("\t\t\t      Normal RAMDAC operation\n");
      else printf("\t\t\t      Use blank bit for RAMDAC operation\n");
   printf("Video modes avaiable:         ");
      get_video_modes(vbeinfo.videomodeptr, modes, 200);
      for(i=0;modes[i]!=0xFFFF;i++) printf("%hX ", modes[i]);
   printf("\n");
   printf("Total memory:                 %iKb\n", vbeinfo.totalmemory * 64);
   printf("Oem software revision:        %hX\n", vbeinfo.oemsoftwarerev);
   printf("Oem vendor name:              %s\n", get_oem_string(vbeinfo.oemvendornameptr, string, 200));
   printf("Oem product name pointer:     %s\n", get_oem_string(vbeinfo.oemproductnameptr, string, 200));
   printf("Oem product revision pointer: %s\n", get_oem_string(vbeinfo.oemproductrevptr, string, 200));
   printf("Press a key....\n"); getch();

   // Get informations about all the video modes
   for(i=0;i<0xffff;i++) {
      while(get_mode_info(i, &modeinfo)) i++;
      printf("Mode %X\n", i);
      printf("Attributes: ");
         if(modeinfo.modeattributes&0x01) printf("Mode supported in hardware\n");
         else printf("Mode not supported in hardware\n");
         if(modeinfo.modeattributes&0x04) printf("\t    TTY Output functions supported by the BIOS\n");
         else printf("\t    TTY Output functions not supported by the BIOS\n");
         if(modeinfo.modeattributes&0x08) printf("\t    Color mode\n");
         else printf("\t    Monochrome mode\n");
         if(modeinfo.modeattributes&0x10) printf("\t    Graphics mode\n");
         else printf("\t    Text mode\n");
         if(modeinfo.modeattributes&0x20) printf("\t    Not VGA compatible mode\n");
         else printf("\t    VGA compatible mode\n");
         if(modeinfo.modeattributes&0x40) printf("\t    VGA compatible windowed memory mode not avaiable\n");
         else printf("\t    VGA compatible mode windowed memory mode avaiable\n");
         if(modeinfo.modeattributes&0x80) printf("\t    Linear frame buffer avaiable\n");
         else printf("\t    Linear frame buffer not avaiable\n");
      printf("Window A attributes: ");
         if(modeinfo.winaattributes&0x01) printf("Relocatable window(s) are supported\n");
         else printf("Single non-relocatable window only\n");
         if(modeinfo.winaattributes&0x02) printf("\t\t     Window is readable\n");
         else printf("\t\t     Window is not readable\n");
         if(modeinfo.winaattributes&0x04) printf("\t\t     Window is writeable\n");
         else printf("\t\t     Window is not writeable\n");
         if(modeinfo.winaattributes&0x01) printf("\t\t     Relocatable window(s) are supported\n");
         else printf("\t\t     Single non-relocatable window only\n");
      printf("Window B attributes: ");
         if(modeinfo.winaattributes&0x01) printf("Relocatable window(s) are supported\n");
         else printf("Single non-relocatable window only\n");
         if(modeinfo.winaattributes&0x02) printf("\t\t     Window is readable\n");
         else printf("\t\t     Window is not readable\n");
         if(modeinfo.winaattributes&0x04) printf("\t\t     Window is writeable\n");
         else printf("\t\t     Window is not writeable\n");
         if(modeinfo.winaattributes&0x01) printf("\t\t     Relocatable window(s) are supported\n");
         else printf("\t\t     Single non-relocatable window only\n");
      printf("Granularity:         %hiKb\n", modeinfo.wingranularity);
      printf("Size of the window:  %hiKb\n", modeinfo.winsize);
      printf("Window A segment:    %X\n", modeinfo.winasegment);
      printf("Window B segment:    %X\n", modeinfo.winbsegment);
      printf("Bytes per scan line: %hi\n", modeinfo.bytesperscanline);
      printf("X resolution:        %hi\n", modeinfo.xresolution);
      printf("Y resolution:        %hi\n", modeinfo.yresolution);
      printf("Bits per pixel:      %hi\n", (WORD)modeinfo.bitsperpixel);
      if(getch()==27) break;
   }

   if(result=init_VBE_mode(i)) {
      printf("Cannot init the graphics mode %X (%i)!\n", i, result);
      return(result);
   }
   for(y=0;y<yresolution;y++)
      for(x=0;x<xresolution;x++)
         put_pixel(x, y, (BYTE)y);
   getch();

   done_VBE_mode();
   return(0);
}
