/*
   VESA.H   By Paolo Pancheri (300797)
   URL: URL: http://www.geocities.com/SiliconValley/Park/8933/
   Email: darkangel@tin.it

   Using the Vesa BIOS extensions 2.0
   Version for DJGPP 2.0
   Last revision: 26/08/97
*/

#ifndef __VESA_H
#define __VESA_H

#include <dos.h>
#include <go32.h>
#include <dpmi.h>
#include <stdio.h>
#include <sys/nearptr.h>
#include <sys/movedata.h>

#define BLACK         0
#define BLUE          1
#define GREEN         2
#define CYAN          3
#define RED           4
#define MAGENTA       5
#define BROWN         6
#define LIGHTGRAY     7
#define DARKGRAY      8
#define LIGHTBLUE     9
#define LIGHTGREEN   10
#define LIGHTCYAN    11
#define LIGHTRED     12
#define LIGHTMAGENTA 13
#define YELLOW       14
#define WHITE        15

#define RGB_RESET 0x03C6
#define RGB_READ  0x03C7
#define RGB_WRITE 0x03C8
#define RGB_DATA  0x03C9

#ifndef __TYPES__
#define __TYPES__
#define BYTE unsigned char
#define WORD unsigned short int
#define DWORD unsigned int
#define BOOL signed char
#define TRUE 1
#define FALSE 0
#endif

#define VBE_OK           0    // No errors
#define VBE_NOMEM        1    // Insufficient memory
#define VBE_NOBUFFER     2    // Call to a buffer-function without buffer
#define VBE_INVALID_MODE 3    // Try to init with an invalid VBE mode
#define VBE_MAPPING      4    // Error during mapping physical address
#define VBE_LINEAR       5    // Linear flat mode not supported

// General record for the image data
#ifndef __IMAGE__
#define __IMAGE__
struct IMAGE {
       DWORD width;
       DWORD height;
       char  *data;
};
#endif

char *vbememory;
char *vbebuffer;
WORD xresolution;
WORD yresolution;

#define PACKED __attribute__ ((packed))
#pragma pack(1)
struct VBEINFO {
   char  vbesignature[4]   PACKED;  // VBE Signature
   WORD  vbeversion        PACKED;  // VBE Version
   DWORD oemstringptr      PACKED;  // Pointer to OEM String
   BYTE  capabilities[4]   PACKED;  // Capabilities of graphics cont.
   DWORD videomodeptr      PACKED;  // Pointer to Video Mode List
   WORD  totalmemory       PACKED;  // number of 64Kb memory blocks
   WORD  oemsoftwarerev    PACKED;  // VBE implementation Software revision
   DWORD oemvendornameptr  PACKED;  // Pointer to Vendor Name String
   DWORD oemproductnameptr PACKED;  // Pointer to Product Name String
   DWORD oemproductrevptr  PACKED;  // Pointer to Product Revision String
   char  reserved[222]     PACKED;  // Reserved for VBE implementation scratch area
   char  oemdata[256]      PACKED;  // Data Area for OEM Strings
};

struct MODEINFO {
   // Mandatory information for all VBE revision
   WORD  modeattributes      PACKED;    // Mode attributes
   BYTE  winaattributes      PACKED;    // Window A attributes
   BYTE  winbattributes      PACKED;    // Window B attributes
   WORD  wingranularity      PACKED;    // Window granularity
   WORD  winsize             PACKED;    // Window size
   WORD  winasegment         PACKED;    // Window A start segment
   WORD  winbsegment         PACKED;    // Window B start segment
   DWORD winfuncptr          PACKED;    // pointer to window function
   WORD  bytesperscanline    PACKED;    // Bytes per scan line

   // Mandatory information for VBE 1.2 and above
   WORD  xresolution         PACKED;    // Horizontal resolution in pixel or chars
   WORD  yresolution         PACKED;    // Vertical resolution in pixel or chars
   BYTE  xcharsize           PACKED;    // Character cell width in pixel
   BYTE  ycharsize           PACKED;    // Character cell height in pixel
   BYTE  numberofplanes      PACKED;    // Number of memory planes
   BYTE  bitsperpixel        PACKED;    // Bits per pixel
   BYTE  numberofbanks       PACKED;    // Number of banks
   BYTE  memorymodel         PACKED;    // Memory model type
   BYTE  banksize            PACKED;    // Bank size in KB
   BYTE  numberofimagepages  PACKED;    // Number of images
   BYTE  reserved1           PACKED;    // Reserved for page function

   // Direct Color fields (required for direct/6 and YUV/7 memory models)
   BYTE  redmasksize         PACKED;    // Size of direct color red mask in bits
   BYTE  redfieldposition    PACKED;    // Bit position of lsb of red bask
   BYTE  greenmasksize       PACKED;    // Size of direct color green mask in bits
   BYTE  greenfieldposition  PACKED;    // Bit position of lsb of green bask
   BYTE  bluemasksize        PACKED;    // Size of direct color blue mask in bits
   BYTE  bluefieldposition   PACKED;    // Bit position of lsb of blue bask
   BYTE  rsvdmasksize        PACKED;    // Size of direct color reserved mask in bits
   BYTE  rsvdfieldposition   PACKED;    // Bit position of lsb of reserved bask
   BYTE  directcolormodeinfo PACKED;    // Direct color mode attributes

   // Mandatory information for VBE 2.0 and above
   DWORD physbaseptr         PACKED;    // Physical address for flat frame buffer
   DWORD offscreenmemoffset  PACKED;    // Pointer to start of off screen memory
   WORD  offscreenmemsize    PACKED;    // Amount of off screen memory in 1Kb units
   char  reserved2[206]      PACKED;    // Remainder of ModeInfoBlock
};

/*
   Capabilities bits:
   D0    = 0  DAC is fixed width, with 6 bits per primary color
         = 1  DAC width is switchable to 8 bits per primary color
   D1    = 0  Controller is VGA compatible
         = 1  Controller is not VGA compatible
   D2    = 0  Normal RAMDAC operation
         = 1  When programming large blocks of information to the RAMDAC
              use blank bit in Function 09h. i.e. RAMDAC recoomendes
              programming during blank period only.
   D3-31 = Reserved

   Video mode attributes:
   D0 =     Mode supported by the hardware configuration
      0   = Mode not supported in hardware
      1   = Mode supported in hardware
   D1 =     1 (Reserved)
   D2 =     TTY Output functions supported by BIOS
      0   = TTY Output functions not supported by BIOS
      1   = TTY Output functions supported by BIOS
   D3 =     monochrome/color mode
      0   = Monochrome mode
      1   = Color mode
   D4 =     Mode type
      0   = Text mode
      1   = Graphics mode
   D5 =     VGA Compatible mode
      0   = Yes
      1   = No
   D6 =     VGA Compatible windowed memory mode is avaiable
      0   = Yes
      1   = No
   D7 =     Linear frame buffer mode is avaiable
      0   = No
      1   = Yes
   D8-D15 = Reserved

   winaattributes, winbattributes:
   D0    =   Relocatable window(s) supported
         0 = Single non-relocatable window only
         1 = Relocatable window(s) are supported
   D1    =   Window readable
         0 = Window is not readable
         1 = Window is readable
   D2    =   Window writeable
         0 = Window is not writeable
         1 = Window is writeable
   D3-D7 = Reserved

   VBE RETURN STATUS
       AL == 4Fh: Function is supported
       AL != 4Fh: Function isn't supported
       AH == 00h: Function call successful
       AH == 01h: Function call failed
       AH == 02h: Software supports this function, but the
                  hardware does not
       AH == 03h: Function call invalid in current video mode

   The following VESA functions return AH:
       Ah == 04h: Transfer buffer too small
*/

BOOL init_VBE_mode(WORD vbemode);
BOOL done_VBE_mode(void);
BOOL getVBE_info(struct VBEINFO *vbeinfo);
BOOL get_mode_info(WORD mode, struct MODEINFO *modeinfo);
char *get_oem_string(DWORD oemstringptr, char *string, int maxlength);
WORD *get_video_modes(DWORD videomodeptr, WORD *modes, int maxlength);
BOOL set_VBE_mode(WORD vbemode);
BOOL get_VBE_mode(WORD *vbemode);
void setpalette(char *palette);
void getpalette(char *palette);
void waitretrace(void);
BOOL clearbuffer(BYTE color);
void put_pixel(int x, int y, BYTE color);
void put_pixelb(int x, int y, BYTE color);
void showframe(short x, short y, struct IMAGE *frame);
void showframeb(short x, short y, struct IMAGE *frame);
void showframeb_rev(short x, short y, struct IMAGE *frame);
BOOL showbuffer(void);
#endif
