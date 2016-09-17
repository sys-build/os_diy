; tiny os boot asm code
;

BOTPAK  EQU     0x00280000
DSKCAC  EQU     0x00100000
DSKCAC0 EQU     0x00008000

CYLS    EQU     0x0ff0
LEDS    EQU     0x0ff1
VMODE   EQU     0x0ff2
SCRNX   EQU     0x0ff4
SCRNY   EQU     0x0ff6
VRAM    EQU     0x0ff8

        ORG     0xc400

; VESA - Get SuperVGA info
; http://www.ctyme.com/intr/rb-0273.htm

        MOV     AX,0x9000
        MOV     ES,AX
        MOV     DI,0
        MOV     AX,0x4f00
        INT     0x10
        CMP     AX,0x004f
        JNE     default_video_mode

; Check VESA version number

        MOV     AX,[ES:DI+4]
        CMP     AX,0x0200
        JB      default_video_mode          ; if (AX < 0x0200) goto default_video_mode

; Determine the attributes of the specified video mode
; http://www.ctyme.com/intr/rb-0274.htm

        MOV     AX,0x4f01
        MOV     CX,0x0115                   ; 800×600 24-bit
        INT     0x10
        CMP     AX,0x004f
        JNE     default_video_mode          ; not support the specified video mode

; Check the video mode
; mode attributes
; bit 0: mode supported if set
;     1: optional information available if set
;     2: BIOS output supported if set
;     3: set if color, clear if monochrome
;     4: set if graphics mode, clear if text mode
;     5: (VBE2) non-VGA mode
;     6: (VBE2) No bank swiotching supported
;     7: (VBE2) Linear framebuffer mode supported 
; memory model type
;   0 Text
;   1 CGA graphics
;   2 Hercules Graphics
;   3 EGA 16 color
;   4 Packed pixels
;   5 Non chain 4 256 color modes
;   6 Direct 15/16/24 bit
;   7 YUV (luminance-chrominance, alos called YIQ)

        CMP     BYTE [ES:DI+0x19],24        ; 19h number of bits per pixel
        JNE     default_video_mode
        CMP     BYTE [ES:DI+0x1b],6         ; 1bh memory model type
        JNE     default_video_mode
        MOV     AX,[ES:DI+0x00]             ; 00h mode attributes
        AND     AX,0x0080
        JZ      default_video_mode

        MOV     BX,0x0115+0x4000
        MOV     AX,0x4f02
        INT     0x10
        MOV     AL,[ES:DI+0x19]             ; number of bits per pixel
        MOV     BYTE [VMODE],AL
        MOV     AX,[ES:DI+0x12]             ; width in pixels
        MOV     [SCRNX],AX
        MOV     AX,[ES:DI+0x14]             ; height in pixels
        MOV     [SCRNY],AX
        MOV     EAX,[ES:DI+0x28]            ; Physical address of linear video buffer 
        MOV     [VRAM],EAX
        JMP     keystatus

default_video_mode:
        MOV     AL,0x13
        MOV     AH,0x00
        INT     0x10
        MOV     BYTE [VMODE],8
        MOV     WORD [SCRNX],320
        MOV     WORD [SCRNY],200
        MOV     DWORD [VRAM],0x000a0000

keystatus:
        MOV     AH,0x02
        INT     0x16             ; keyboard BIOS
        MOV     [LEDS],AL

; PIC
;
        MOV     AL,0xff
        OUT     0x21,AL
        NOP                        ; OUT
        OUT     0xa1,AL

        CLI                        ;

; CPU

        CALL    waitkbdout
        MOV     AL,0xd1
        OUT     0x64,AL
        CALL    waitkbdout
        MOV     AL,0xdf            ; enable A20
        OUT     0x60,AL
        CALL    waitkbdout

; 

        LGDT    [GDTR0]            ; 
        MOV     EAX,CR0
        AND     EAX,0x7fffffff    ; bit31
        OR      EAX,0x00000001    ; bit0
        MOV     CR0,EAX
        JMP     pipelineflush
pipelineflush:
        MOV     AX,1*8            ; 
        MOV     DS,AX
        MOV     ES,AX
        MOV     FS,AX
        MOV     GS,AX
        MOV     SS,AX

; bootpack

        MOV     ESI,bootpack    ; 
        MOV     EDI,BOTPAK        ; 
        MOV     ECX,512*1024/4
        CALL    memcpy

; 

; 

        MOV     ESI,0x7c00        ;
        MOV     EDI,DSKCAC        ;
        MOV     ECX,512/4
        CALL    memcpy

; 

        MOV     ESI,DSKCAC0+512    ; 
        MOV     EDI,DSKCAC+512    ; 
        MOV     ECX,0
        MOV     CL,BYTE [CYLS]
        IMUL    ECX,512*18*2/4    ; 
        SUB     ECX,512/4        ; IPL
        CALL    memcpy

; asmhead
;

; bootpack

        MOV     EBX,BOTPAK
        MOV     ECX,[EBX+16]
        ADD     ECX,3            ; ECX += 3;
        SHR     ECX,2            ; ECX /= 4;
        JZ      skip            ; 
        MOV     ESI,[EBX+20]    ; 
        ADD     ESI,EBX
        MOV     EDI,[EBX+12]    ; 
        CALL    memcpy
skip:
        MOV     ESP,[EBX+12]    ; 
        JMP     DWORD 2*8:0x0000001b

waitkbdout:
        IN      AL,0x64
        AND     AL,0x02
        JNZ     waitkbdout        ; AND
        RET

memcpy:
        MOV     EAX,[ESI]
        ADD     ESI,4
        MOV     [EDI],EAX
        ADD     EDI,4
        SUB     ECX,1
        JNZ     memcpy            ; 
        RET
; memcpy

        ALIGNB  16
GDT0:
        TIMES   8  DB  0                ; 
        DW      0xffff,0x0000,0x9200,0x00cf    ;
        DW      0xffff,0x0000,0x9a28,0x0047    ;

        DW      0
GDTR0:
        DW      8*3-1
        DD      GDT0

        ALIGNB  16
bootpack:

