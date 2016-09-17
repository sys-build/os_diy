; initial program loader
;

        ORG     0x7c00

; boot sector

        JMP     entry
        NOP
        DB      "tinyos  "      ; OS name
        DW      512             ; Bytes per Sector
        DB      1               ; Sectors per Cluster
        DW      1               ; Reserved sectors
        DB      2               ; Number of FAT copies
        DW      224             ; Number of possible root entries
        DW      2880            ; Small number of sectors
        DB      0xf0            ; Media Descriptor
        DW      9               ; Sectors per FAT
        DW      18              ; Sectors per Track
        DW      2               ; Number of Heads
        DD      0               ; Hidden Sectors
        DD      2880            ; Large number of sectors
        DB      0               ; Drive Number
        DB      0               ; Reserved
        DB      0x29            ; Extended Boot Signature
        DD      0xffffffff      ; Volume Serial Number
        DB      "tinyos     "   ; Volume Label
        DB      "FAT12   "      ; File System Type

entry:
        MOV     AX,0
        MOV     SS,AX
        ;MOV     SP,0x7c00
        MOV     DS,AX

        MOV     AX,0x0800
        MOV     ES,AX
        MOV     CH,0            ; cylinder 0
        MOV     DH,0            ; head 0
        MOV     CL,1            ; sector 1

read_sector:
        MOV     SI,0            ; count of read fail
read_sector_retry:
        MOV     AH,0x02
        MOV     AL,1
        MOV     BX,0
        MOV     DL,0x00
        INT     0x13            ; read sector via BIOS interrupt call
        JNC     next_sector     ; jump to next sector if no error
        ADD     SI,1
        CMP     SI,5
        JAE     error           ; show error message if read sector fail
        MOV     AH,0x00
        MOV     DL,0x00
        INT     0x13            ; Reset Disk Drives via BIOS interrupt call
        JMP     read_sector_retry

next_sector:
        MOV     AX,ES
        ADD     AX,0x0020
        MOV     ES,AX
        ADD     CL,1
        CMP     CL,18
        JBE     read_sector
        MOV     CL,1
        ADD     DH,1
        CMP     DH,2
        JB      read_sector
        MOV     DH,0
        ADD     CH,1
        CMP     CH,10           ; load 10 cylinders into memory
        JB      read_sector
        MOV     [0x0ff0],CH
        JMP     0xc400          ; jump to asmhead

error:
        MOV     SI,error_msg
show_loop:
        MOV     AL,[SI]
        ADD     SI,1
        CMP     AL,0
        JE      finish
        MOV     AH,0x0e
        MOV     BX,15
        INT     0x10            ; show char via BIOS
        JMP     show_loop

finish:
        HLT
        JMP     finish

error_msg:
        DB      "read sector fail"
        DB      0

        TIMES   510-($-$$)      DB      0
        DB      0x55,0xaa
