/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160729-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembly of /Users/liemvu/Desktop/e7480_install_10.13/edid/DarwinDumper_3.0.4_20.05_15.54.36_MacBookPro14,1_AMI_X64_4444.RM-4652.23891(c1f8602f.abe73e2ebe)__High Sierra_17E202_liemvu/ACPI Tables/AML/DBGP.aml, Sun May 20 15:54:58 2018
 *
 * ACPI Data Table [DBGP]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "DBGP"    [Debug Port table]
[004h 0004   4]                 Table Length : 00000034
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 9A
[00Ah 0010   6]                       Oem ID : "INTEL "
[010h 0016   8]                 Oem Table ID : ""
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "MSFT"
[020h 0032   4]        Asl Compiler Revision : 0000005F

[024h 0036   1]               Interface Type : 00
[025h 0037   3]                     Reserved : 8D4C00

[028h 0040  12]          Debug Port Register : [Generic Address Structure]
[028h 0040   1]                     Space ID : 01 [SystemIO]
[029h 0041   1]                    Bit Width : 08
[02Ah 0042   1]                   Bit Offset : 00
[02Bh 0043   1]         Encoded Access Width : 00 [Undefined/Legacy]
[02Ch 0044   8]                      Address : 00000000000003F8


Raw Table Data: Length 52 (0x34)

  0000: 44 42 47 50 34 00 00 00 01 9A 49 4E 54 45 4C 20  // DBGP4.....INTEL 
  0010: 00 00 00 00 00 00 00 00 02 00 00 00 4D 53 46 54  // ............MSFT
  0020: 5F 00 00 00 00 00 4C 8D 01 08 00 00 F8 03 00 00  // _.....L.........
  0030: 00 00 00 00                                      // ....
