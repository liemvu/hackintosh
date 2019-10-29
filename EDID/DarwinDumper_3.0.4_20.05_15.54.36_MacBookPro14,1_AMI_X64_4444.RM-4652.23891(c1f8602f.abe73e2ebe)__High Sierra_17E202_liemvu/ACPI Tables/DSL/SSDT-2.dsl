/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160729-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/liemvu/Desktop/e7480_install_10.13/edid/DarwinDumper_3.0.4_20.05_15.54.36_MacBookPro14,1_AMI_X64_4444.RM-4652.23891(c1f8602f.abe73e2ebe)__High Sierra_17E202_liemvu/ACPI Tables/AML/SSDT-2.aml, Sun May 20 15:55:05 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000EBE (3774)
 *     Revision         0x02
 *     Checksum         0x17
 *     OEM ID           "INTEL"
 *     OEM Table ID     "xh_OEMBD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL", "xh_OEMBD", 0x00000000)
{
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS03, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS05, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS06, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.USR1, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.USR2, DeviceObj)
    External (CBID, UnknownObj)
    External (TBTS, UnknownObj)

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Method (GPLD, 2, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x10) {}
            })
            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
            REV = One
            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
            VISI = Arg0
            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
            GPOS = Arg1
            Return (PCKG) /* \_SB_.PCI0.XHC_.RHUB.GPLD.PCKG */
        }

        Method (GUPC, 1, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            PCKG [Zero] = Arg0
            Return (PCKG) /* \_SB_.PCI0.XHC_.RHUB.GUPC.PCKG */
        }

        Method (TPLD, 2, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x10) {}
            })
            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
            REV = One
            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
            VISI = Arg0
            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
            GPOS = Arg1
            CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
            SHAP = One
            CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
            WID = 0x08
            CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
            HGT = 0x03
            Return (PCKG) /* \_SB_.PCI0.XHC_.RHUB.TPLD.PCKG */
        }

        Method (TUPC, 1, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                One, 
                Zero, 
                Zero, 
                Zero
            })
            PCKG [One] = Arg0
            Return (PCKG) /* \_SB_.PCI0.XHC_.RHUB.TUPC.PCKG */
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, One))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            If ((CBID == 0x079F) || (CBID == 0x07F3))
            {
                Return (GUPC (Zero))
            }
            ElseIf (CBID == 0x07A0)
            {
                Return (GUPC (One))
            }
            ElseIf (TBTS == Zero)
            {
                Return (TUPC (0x09))
            }
            Else
            {
                Return (GUPC (Zero))
            }
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            If ((CBID == 0x079F) || (CBID == 0x07F3))
            {
                Return (GPLD (Zero, Zero))
            }
            ElseIf (CBID == 0x07A0)
            {
                Return (GPLD (One, 0x03))
            }
            ElseIf (TBTS == Zero)
            {
                Return (TPLD (One, 0x03))
            }
            Else
            {
                Return (GPLD (Zero, Zero))
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x04))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x05))
        }

        Device (CAM5)
        {
            Name (_ADR, 0x05)  // _ADR: Address
            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDP, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                        /* 0008 */  0x24, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,  /* $....... */
                        /* 0010 */  0xC8, 0x00, 0xA0, 0x00                           /* .... */
                    }
                })
                Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS05.CAM5._PLD.PLDP */
            }
        }

        Device (CAM7)
        {
            Name (_ADR, 0x07)  // _ADR: Address
            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDP, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                        /* 0008 */  0x24, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,  /* $....... */
                        /* 0010 */  0xC8, 0x00, 0xA0, 0x00                           /* .... */
                    }
                })
                Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS05.CAM7._PLD.PLDP */
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            If (((CBID == 0x079F) || (CBID == 0x07F3)) || (CBID == 0x07A0))
            {
                Return (GUPC (Zero))
            }
            Else
            {
                Return (GUPC (One))
            }
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            If (((CBID == 0x079F) || (CBID == 0x07F3)) || (CBID == 0x07A0))
            {
                Return (GPLD (Zero, Zero))
            }
            Else
            {
                Return (GPLD (Zero, 0x06))
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x07))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS08)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x08))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS09)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            If (TBTS == Zero)
            {
                Return (TUPC (0x09))
            }
            Else
            {
                Return (GUPC (Zero))
            }
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            If (TBTS == Zero)
            {
                Return (TPLD (One, 0x09))
            }
            Else
            {
                Return (GPLD (Zero, Zero))
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS10)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x0A))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR1)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR2)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, One))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x04))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            If ((CBID == 0x079F) || (CBID == 0x07F3))
            {
                Return (GUPC (Zero))
            }
            ElseIf (CBID == 0x07A0)
            {
                Return (GUPC (One))
            }
            Else
            {
                Return (GUPC (One))
            }
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            If ((CBID == 0x079F) || (CBID == 0x07F3))
            {
                Return (GPLD (Zero, Zero))
            }
            ElseIf (CBID == 0x07A0)
            {
                Return (GPLD (One, 0x03))
            }
            Else
            {
                Return (GPLD (Zero, 0x03))
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            If (((CBID == 0x079F) || (CBID == 0x07F3)) || (CBID == 0x07A0))
            {
                Return (GUPC (Zero))
            }
            ElseIf (TBTS == Zero)
            {
                Return (TUPC (0x09))
            }
            Else
            {
                Return (GUPC (Zero))
            }
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            If (((CBID == 0x079F) || (CBID == 0x07F3)) || (CBID == 0x07A0))
            {
                Return (GPLD (Zero, Zero))
            }
            ElseIf (TBTS == Zero)
            {
                Return (TPLD (One, 0x03))
            }
            Else
            {
                Return (GPLD (Zero, Zero))
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            If (TBTS == Zero)
            {
                Return (TUPC (0x09))
            }
            Else
            {
                Return (GUPC (Zero))
            }
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            If (TBTS == Zero)
            {
                Return (TPLD (One, 0x09))
            }
            Else
            {
                Return (GPLD (Zero, Zero))
            }
        }
    }

    If (((CBID == 0x079F) || (CBID == 0x07F3)) || (CBID == 0x07A0))
    {
        If (CondRefOf (\_SB.PCI0.RP05.PXSX) && (TBTS == One))
        {
            Scope (\_SB.PCI0.RP05.PXSX)
            {
                Device (TBL1)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }

                Device (TBL2)
                {
                    Name (_ADR, 0x00010000)  // _ADR: Address
                }

                Device (TBL3)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    Device (TBTU)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (GPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10) {}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                Return (PCKG) /* \_SB_.PCI0.RP05.PXSX.TBL3.TBTU.RHUB.GPLD.PCKG */
                            }

                            Method (GUPC, 1, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    Zero, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [Zero] = Arg0
                                Return (PCKG) /* \_SB_.PCI0.RP05.PXSX.TBL3.TBTU.RHUB.GUPC.PCKG */
                            }

                            Method (TPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10) {}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                SHAP = One
                                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                WID = 0x08
                                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                HGT = 0x03
                                Return (PCKG) /* \_SB_.PCI0.RP05.PXSX.TBL3.TBTU.RHUB.TPLD.PCKG */
                            }

                            Method (TUPC, 1, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [One] = Arg0
                                Return (PCKG) /* \_SB_.PCI0.RP05.PXSX.TBL3.TBTU.RHUB.TUPC.PCKG */
                            }

                            Device (UB21)
                            {
                                Name (_ADR, One)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (TUPC (0x09))
                                }

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (TPLD (One, One))
                                }
                            }

                            Device (UB22)
                            {
                                Name (_ADR, 0x02)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (GUPC (Zero))
                                }

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (GPLD (Zero, Zero))
                                }
                            }

                            Device (UB31)
                            {
                                Name (_ADR, 0x03)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (TUPC (0x09))
                                }

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (TPLD (One, One))
                                }
                            }

                            Device (UB32)
                            {
                                Name (_ADR, 0x04)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (GUPC (Zero))
                                }

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (GPLD (Zero, Zero))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    ElseIf (CondRefOf (\_SB.PCI0.RP01.PXSX) && (TBTS == One))
    {
        Scope (\_SB.PCI0.RP01.PXSX)
        {
            Device (TBL1)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (TBL2)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
            }

            Device (TBL3)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Device (TBTU)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (GPLD, 2, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x10) {}
                            })
                            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                            REV = One
                            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0
                            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1
                            Return (PCKG) /* \_SB_.PCI0.RP01.PXSX.TBL3.TBTU.RHUB.GPLD.PCKG */
                        }

                        Method (GUPC, 1, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            PCKG [Zero] = Arg0
                            Return (PCKG) /* \_SB_.PCI0.RP01.PXSX.TBL3.TBTU.RHUB.GUPC.PCKG */
                        }

                        Method (TPLD, 2, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x10) {}
                            })
                            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                            REV = One
                            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0
                            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1
                            CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                            SHAP = One
                            CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                            WID = 0x08
                            CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                            HGT = 0x03
                            Return (PCKG) /* \_SB_.PCI0.RP01.PXSX.TBL3.TBTU.RHUB.TPLD.PCKG */
                        }

                        Method (TUPC, 1, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            PCKG [One] = Arg0
                            Return (PCKG) /* \_SB_.PCI0.RP01.PXSX.TBL3.TBTU.RHUB.TUPC.PCKG */
                        }

                        Device (UB21)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (TPLD (One, One))
                            }
                        }

                        Device (UB22)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (TPLD (One, 0x02))
                            }
                        }

                        Device (UB31)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (TPLD (One, One))
                            }
                        }

                        Device (UB32)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (TPLD (One, 0x02))
                            }
                        }
                    }
                }
            }
        }
    }
}

