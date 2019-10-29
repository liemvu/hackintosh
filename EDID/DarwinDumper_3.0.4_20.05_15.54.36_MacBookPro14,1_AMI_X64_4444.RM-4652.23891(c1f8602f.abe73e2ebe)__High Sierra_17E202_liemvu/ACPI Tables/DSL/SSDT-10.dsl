/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160729-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/liemvu/Desktop/e7480_install_10.13/edid/DarwinDumper_3.0.4_20.05_15.54.36_MacBookPro14,1_AMI_X64_4444.RM-4652.23891(c1f8602f.abe73e2ebe)__High Sierra_17E202_liemvu/ACPI Tables/AML/SSDT-10.aml, Sun May 20 15:55:05 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000053 (83)
 *     Revision         0x01
 *     Checksum         0x80
 *     OEM ID           "PmRef"
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120320 (538051360)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "CpuPm", 0x00003000)
{
    External (_PR_.CPU0, ProcessorObj)

    Scope (\_PR.CPU0)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (Arg2 == Zero)
            {
                Return (Buffer (One)
                {
                     0x03                                             /* . */
                })
            }

            Return (Package (0x02)
            {
                "plugin-type", 
                One
            })
        }
    }
}

