#!/usr/bin/python

import sys
import os
import struct

def usage(x):
    print 'Usage: %s [-b bootsec | --boot=bootsec ] outfile [infile]' % os.path.basename(x)

def copy_bootsec(fout, bootsec):
    try:
        fin = open(bootsec, 'rb')
    except IOError:
        print >> sys.stderr, 'cannot open %s' % bootsec
        sys.exit(1)
    fout.write(fin.read(512))
    fin.close

def fill_bootsec(fout):
    import random
    fout.write(struct.pack('3B', 0xeb, 0x3c, 0x90))
    fout.write(struct.pack('8s', 'mkdosfs'))
    fout.write(struct.pack('<HBH', 512, 1, 1))
    fout.write(struct.pack('<BHHBHHHLL', 2, 224, 2880, 0xf0, 9, 18, 2, 0, 2880))
    fout.write(struct.pack('<BBBL', 0, 0, 0x29, random.randint(0, 0xffffffff)))
    fout.write(' ' * 11)
    fout.write('%-8s' % 'FAT12')
    fout.write(struct.pack('8B', 0x0e, 0x1f, 0xbe, 0x5b, 0x7c, 0xac, 0x22, 0xc0))
    fout.write(struct.pack('8B', 0x74, 0x0b, 0x56, 0xb4, 0x0e, 0xbb, 0x07, 0x00))
    fout.write(struct.pack('8B', 0xcd, 0x10, 0x5e, 0xeb, 0xf0, 0x32, 0xe4, 0xcd))
    fout.write(struct.pack('5B', 0x16, 0xcd, 0x19, 0xeb, 0xfe))
    fout.write('This is not a bootable disk.  Please insert a bootable floppy and\r\n'
               +'press any key to try again ... \r\n')
    fout.seek(510)
    fout.write(struct.pack('2B', 0x55, 0xaa))

def empty_body(fout):
    fout.write(struct.pack('3B', 0xf0, 0xff, 0xff))
    fout.seek(512 * 10)
    fout.write(struct.pack('3B', 0xf0, 0xff, 0xff))

def fill_fat(fout, filesize):
    clusters = (filesize + 511) / 512
    fat = [0xff0, 0xfff]
    i = 3
    while i < clusters + 2:
        fat.append(i)
        i += 1
    fat.append(0xfff)
    if len(fat) % 2 == 1:
        fat.append(0)
    fat_stream = ''
    i = 0
    while i < len(fat):
        fat_stream += struct.pack('3B', fat[i] & 0xff,
                      fat[i] >> 8 | (fat[i + 1] << 4 & 0xf0), fat[i + 1] >> 4)
        i += 2
    # 1st FAT
    fout.write(fat_stream)
    # 2nd FAT
    fout.seek(512 * 10)
    fout.write(fat_stream)

def fill_rootdir(fout, infile, filesize):
    import time
    # Root Directory
    fout.seek(512 * 19)
    (base, __dot, ext) = infile.upper().rpartition('.')
    base = base.ljust(8, ' ')
    ext = ext.ljust(3, ' ')
    mtime = time.localtime(os.path.getmtime(infile))
    fout.write(struct.pack('<8s3sB10xHHHL', base, ext, 0x20,
                        mtime.tm_hour << 11 | mtime.tm_min << 5 | mtime.tm_sec,
               (mtime.tm_year - 1980) << 9 | mtime.tm_mon << 5 | mtime.tm_mday,
                                                                  2, filesize))

def copy_infile(fout, infile):
    fout.seek(512 * 33)
    try:
        fin = open(infile, 'rb')
    except IOError:
        print >> sys.stderr, 'cannot open %s' % infile
        sys.exit(1)
    fout.write(fin.read())
    fin.close()

def write_infile(fout, infile):
    filesize = os.path.getsize(infile)
    fill_fat(fout, filesize)
    fill_rootdir(fout, infile, filesize)
    copy_infile(fout, infile)

def main():
    import getopt
    try:
        opts, args = getopt.getopt(sys.argv[1:], "b:h", ["boot=", "help"])
    except getopt.GetoptError:
        usage(sys.argv[0])
        sys.exit(2)
    bootsec=None
    outfile=None
    infile=None
    for o, a in opts:
        if o in ("-h", "--help"):
            usage()
            sys.exit()
        if o in ("-b", "--boot"):
            bootsec = a
    outfile=args[0]
    if len(args) > 1:
        infile=args[1]
    try:
        fout = open(outfile, 'wb')
    except IOError:
        print >> sys.stderr, 'cannot open %s' % outfile
        sys.exit(1)
    if bootsec:
        copy_bootsec(fout, bootsec)
    else:
        fill_bootsec(fout)
    if infile:
        write_infile(fout, infile)
    else:
        empty_body(fout)
    fout.seek(512 * 2880 - 1)
    fout.write(struct.pack('x'))
    fout.close()

if __name__ == '__main__':
    main()
