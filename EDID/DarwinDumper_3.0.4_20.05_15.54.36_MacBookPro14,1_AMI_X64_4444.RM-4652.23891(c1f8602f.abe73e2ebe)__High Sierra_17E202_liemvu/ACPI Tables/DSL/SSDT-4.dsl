/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160729-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/liemvu/Desktop/e7480_install_10.13/edid/DarwinDumper_3.0.4_20.05_15.54.36_MacBookPro14,1_AMI_X64_4444.RM-4652.23891(c1f8602f.abe73e2ebe)__High Sierra_17E202_liemvu/ACPI Tables/AML/SSDT-4.aml, Sun May 20 15:55:06 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000141 (321)
 *     Revision         0x02
 *     Checksum         0xBD
 *     OEM ID           "INTEL "
 *     OEM Table ID     "HdaDsp"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "HdaDsp", 0x00000000)
{
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (ADPM, IntObj)
    External (AG1H, IntObj)
    External (AG1L, IntObj)
    External (AG2H, IntObj)
    External (AG2L, IntObj)
    External (AG3H, IntObj)
    External (AG3L, IntObj)

    Scope (\_SB.PCI0.HDEF)
    {
        Method (PPMS, 1, Serialized)
        {
            If (Arg0 == ToUUID ("7c708106-3aff-40fe-88be-8c999b3f7445"))
            {
                Return ((ADPM & 0x04))
            }

            If (Arg0 == ToUUID ("ec774fa9-28d3-424a-90e4-69f984f1eeb7"))
            {
                Return ((ADPM & 0x0100))
            }

            If (Arg0 == ACCG (AG1L, AG1H))
            {
                Return ((ADPM & 0x20000000))
            }

            If (Arg0 == ACCG (AG2L, AG2H))
            {
                Return ((ADPM & 0x40000000))
            }

            If (Arg0 == ACCG (AG3L, AG3H))
            {
                Return ((ADPM & 0x80000000))
            }

            Return (Zero)
        }

        Method (ACCG, 2, NotSerialized)
        {
            Name (GBUF, Buffer (0x10) {})
            Concatenate (Arg0, Arg1, GBUF) /* \_SB_.PCI0.HDEF.ACCG.GBUF */
            Return (GBUF) /* \_SB_.PCI0.HDEF.ACCG.GBUF */
        }
    }
}

