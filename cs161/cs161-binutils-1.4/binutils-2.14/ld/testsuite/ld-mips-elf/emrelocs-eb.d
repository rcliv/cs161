#name: MIPS 32-bit ELF embedded relocs (big endian)
#source: emrelocs1.s -EB
#source: emrelocs2.s -EB
#ld: -EB --embedded-relocs -T $srcdir/$subdir/emrelocs.ld
#objdump: -s

.*:     file format elf.*mips.*

Contents of section \.text:
 100000 00000000 00000001 00000000 00000000  .*
 100010 00000000 00000000 00000003 00000000  .*
Contents of section \.data:
 200000 00000000 00000002 00000000 00000000  .*
 200010 00000000 00000000 00000004 00000000  .*
 200020 00100004 00200004 00100018 00200018  .*
 200030 00000000 00100004 00000000 00200004  .*
 200040 00000000 00100018 00000000 00200018  .*
Contents of section \.rel\.sdata:
 300000 00000020 2e746578 74000000 00000024  .*
 300010 2e646174 61000000 00000028 2e746578  .*
 300020 74000000 0000002c 2e646174 61000000  .*
 300030 00000031 2e746578 74000000 00000039  .*
 300040 2e646174 61000000 00000041 2e746578  .*
 300050 74000000 00000049 2e646174 61000000  .*
#pass
