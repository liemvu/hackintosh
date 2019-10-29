/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160729-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/liemvu/Desktop/e7480_install_10.13/edid/DarwinDumper_3.0.4_20.05_15.54.36_MacBookPro14,1_AMI_X64_4444.RM-4652.23891(c1f8602f.abe73e2ebe)__High Sierra_17E202_liemvu/ACPI Tables/AML/SSDT-5.aml, Sun May 20 15:55:06 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000029F (671)
 *     Revision         0x02
 *     Checksum         0x48
 *     OEM ID           "INTEL "
 *     OEM Table ID     "sensrhub"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "sensrhub", 0x00000000)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.I2C0.DFUD, DeviceObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (GPBS, UnknownObj)
    External (SDS0, UnknownObj)
    External (SHAP, UnknownObj)
    External (USBH, UnknownObj)

    Scope (\)
    {
        Device (SHAD)
        {
            Name (_HID, EisaId ("INT33D0"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((SDS0 & One) || (USBH & One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (PGCE, Zero)
                Name (PGCD, Zero)
                Name (PGCG, 0x2E)
                Name (DFUE, Zero)
                Name (DFUD, Zero)
                Name (OLDV, Zero)
                Name (PGCV, Zero)
                Name (DFUV, Zero)
                If (Arg0 == ToUUID ("03c868d5-563f-42a8-9f57-9a18d949b7cb"))
                {
                    If (SHAP == One)
                    {
                        PGCG = 0x3A
                    }

                    If (ToInteger (Arg1) >= One)
                    {
                        While (One)
                        {
                            _T_0 = ToInteger (Arg2)
                            If (_T_0 == Zero)
                            {
                                Return (Buffer (One)
                                {
                                     0x0F                                             /* . */
                                })
                            }
                            ElseIf (_T_0 == One)
                            {
                                PGCE = DerefOf (Arg3 [Zero])
                                PGCD = DerefOf (Arg3 [One])
                                OLDV = \_SB.GGOV (0x02010016)
                                \_SB.SGOV (0x02010016, PGCE)
                                If (PGCD > Zero)
                                {
                                    Sleep (PGCD)
                                    \_SB.GGOV (0x02010016)
                                    OLDV
                                }

                                If (\_SB.GGOV (0x02010016) == One)
                                {
                                    Sleep (0x96)
                                    If (\_SB.GGOV (0x02010014) == One) {}
                                    Else
                                    {
                                        Notify (\_SB.PCI0.I2C0.DFUD, One) // Device Check
                                    }
                                }

                                Return (Zero)
                            }
                            ElseIf (_T_0 == 0x02)
                            {
                                DFUE = DerefOf (Arg3 [Zero])
                                DFUD = DerefOf (Arg3 [One])
                                OLDV = \_SB.GGOV (0x02010014)
                                \_SB.GGOV (0x02010014)
                                DFUE
                                If (DFUD > Zero)
                                {
                                    Sleep (DFUD)
                                    \_SB.GGOV (0x02010014)
                                    OLDV
                                }

                                Return (Zero)
                            }
                            ElseIf (_T_0 == 0x03)
                            {
                                DFUV = \_SB.GGOV (0x02010014)
                                PGCV = \_SB.GGOV (0x02010016)
                                Return (Package (0x02)
                                {
                                    PGCV, 
                                    DFUV
                                })
                            }

                            Break
                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Buffer (One)
                {
                     0x00                                             /* . */
                })
            }
        }
    }
}

