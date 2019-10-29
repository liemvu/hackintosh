/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160729-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/liemvu/Desktop/e7480_install_10.13/edid/DarwinDumper_3.0.4_20.05_15.54.36_MacBookPro14,1_AMI_X64_4444.RM-4652.23891(c1f8602f.abe73e2ebe)__High Sierra_17E202_liemvu/ACPI Tables/AML/SSDT-1.aml, Sun May 20 15:55:05 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000012FE (4862)
 *     Revision         0x02
 *     Checksum         0x10
 *     OEM ID           "SaSsdt"
 *     OEM Table ID     "SaSsdt "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "SaSsdt", "SaSsdt ", 0x00003000)
{
    /*
     * iASL Warning: There were 3 external control methods found during
     * disassembly, but only 2 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.B0D3, DeviceObj)
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.IGPU.HNOT, MethodObj)    // 1 Arguments
    External (CPSC, UnknownObj)
    External (DSEN, UnknownObj)
    External (ECON, IntObj)
    External (GUAM, MethodObj)    // 1 Arguments
    External (HNOT, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (OSYS, IntObj)
    External (PNHM, IntObj)
    External (S0ID, UnknownObj)

    OperationRegion (SANV, SystemMemory, 0x7AF5D118, 0x01F7)
    Field (SANV, AnyAcc, Lock, Preserve)
    {
        ASLB,   32, 
        IMON,   8, 
        IGDS,   8, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        GSMI,   8, 
        PAVP,   8, 
        CADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        DID9,   32, 
        DIDA,   32, 
        DIDB,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        DIDX,   32, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        NXDX,   32, 
        LIDS,   8, 
        KSV0,   32, 
        KSV1,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        IMTP,   8, 
        EDPV,   8, 
        SGMD,   8, 
        SGFL,   8, 
        SGGP,   8, 
        HRE0,   8, 
        HRG0,   32, 
        HRA0,   8, 
        PWE0,   8, 
        PWG0,   32, 
        PWA0,   8, 
        P1GP,   8, 
        HRE1,   8, 
        HRG1,   32, 
        HRA1,   8, 
        PWE1,   8, 
        PWG1,   32, 
        PWA1,   8, 
        P2GP,   8, 
        HRE2,   8, 
        HRG2,   32, 
        HRA2,   8, 
        PWE2,   8, 
        PWG2,   32, 
        PWA2,   8, 
        DLPW,   16, 
        DLHR,   16, 
        EECP,   8, 
        XBAS,   32, 
        GBAS,   16, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        LTRX,   8, 
        OBFX,   8, 
        LTRY,   8, 
        OBFY,   8, 
        LTRZ,   8, 
        OBFZ,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        PCSL,   8, 
        PBGE,   8, 
        M64B,   64, 
        M64L,   64, 
        CPEX,   32, 
        EEC1,   8, 
        EEC2,   8, 
        SBN0,   8, 
        SBN1,   8, 
        SBN2,   8, 
        M32B,   32, 
        M32L,   32, 
        P0WK,   32, 
        P1WK,   32, 
        P2WK,   32, 
        MXD1,   32, 
        MXD2,   32, 
        MXD3,   32, 
        MXD4,   32, 
        MXD5,   32, 
        MXD6,   32, 
        MXD7,   32, 
        MXD8,   32, 
        PXFD,   8, 
        EBAS,   32, 
        DGVS,   32, 
        DGVB,   32, 
        HYSS,   32, 
        NVAF,   8, 
        Offset (0x1F4), 
        Offset (0x1F7)
    }

    Scope (\_SB.PCI0.IGPU)
    {
        Scope (\_SB.PCI0)
        {
            OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
            Field (MCHP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x14), 
                AUDE,   8, 
                Offset (0x60), 
                TASM,   10, 
                Offset (0x62)
            }
        }

        OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
        Field (IGDP, AnyAcc, NoLock, Preserve)
        {
            Offset (0x10), 
                ,   1, 
            GIVD,   1, 
                ,   2, 
            GUMA,   3, 
            Offset (0x12), 
            Offset (0x14), 
                ,   4, 
            GMFN,   1, 
            Offset (0x18), 
            Offset (0xA4), 
            ASLE,   8, 
            Offset (0xA8), 
            GSSE,   1, 
            GSSB,   14, 
            GSES,   1, 
            Offset (0xB0), 
                ,   12, 
            CDVL,   1, 
            Offset (0xB2), 
            Offset (0xB5), 
            LBPC,   8, 
            Offset (0xBC), 
            ASLS,   32
        }

        OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
        Field (IGDM, AnyAcc, NoLock, Preserve)
        {
            SIGN,   128, 
            SIZE,   32, 
            OVER,   32, 
            SVER,   256, 
            VVER,   128, 
            GVER,   128, 
            MBOX,   32, 
            DMOD,   32, 
            PCON,   32, 
            DVER,   64, 
            Offset (0x100), 
            DRDY,   32, 
            CSTS,   32, 
            CEVT,   32, 
            Offset (0x120), 
            DIDL,   32, 
            DDL2,   32, 
            DDL3,   32, 
            DDL4,   32, 
            DDL5,   32, 
            DDL6,   32, 
            DDL7,   32, 
            DDL8,   32, 
            CPDL,   32, 
            CPL2,   32, 
            CPL3,   32, 
            CPL4,   32, 
            CPL5,   32, 
            CPL6,   32, 
            CPL7,   32, 
            CPL8,   32, 
            CADL,   32, 
            CAL2,   32, 
            CAL3,   32, 
            CAL4,   32, 
            CAL5,   32, 
            CAL6,   32, 
            CAL7,   32, 
            CAL8,   32, 
            NADL,   32, 
            NDL2,   32, 
            NDL3,   32, 
            NDL4,   32, 
            NDL5,   32, 
            NDL6,   32, 
            NDL7,   32, 
            NDL8,   32, 
            ASLP,   32, 
            TIDX,   32, 
            CHPD,   32, 
            CLID,   32, 
            CDCK,   32, 
            SXSW,   32, 
            EVTS,   32, 
            CNOT,   32, 
            NRDY,   32, 
            DDL9,   32, 
            DD10,   32, 
            DD11,   32, 
            DD12,   32, 
            DD13,   32, 
            DD14,   32, 
            DD15,   32, 
            CPL9,   32, 
            CP10,   32, 
            CP11,   32, 
            CP12,   32, 
            CP13,   32, 
            CP14,   32, 
            CP15,   32, 
            Offset (0x200), 
            SCIE,   1, 
            GEFC,   4, 
            GXFC,   3, 
            GESF,   8, 
            Offset (0x204), 
            PARM,   32, 
            DSLP,   32, 
            Offset (0x300), 
            ARDY,   32, 
            ASLC,   32, 
            TCHE,   32, 
            ALSI,   32, 
            BCLP,   32, 
            PFIT,   32, 
            CBLV,   32, 
            BCLM,   320, 
            CPFM,   32, 
            EPFM,   32, 
            PLUT,   592, 
            PFMB,   32, 
            CCDV,   32, 
            PCFT,   32, 
            SROT,   32, 
            IUER,   32, 
            FDSP,   64, 
            FDSS,   32, 
            STAT,   32, 
            Offset (0x400), 
            GVD1,   49152, 
            PHED,   32, 
            BDDC,   2048
        }

        Name (DBTB, Package (0x15)
        {
            Zero, 
            0x07, 
            0x38, 
            0x01C0, 
            0x0E00, 
            0x3F, 
            0x01C7, 
            0x0E07, 
            0x01F8, 
            0x0E38, 
            0x0FC0, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            0x7000, 
            0x7007, 
            0x7038, 
            0x71C0, 
            0x7E00
        })
        Name (CDCT, Package (0x05)
        {
            Package (0x02)
            {
                0xE4, 
                0x0140
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                Zero, 
                Zero
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }
        })
        Name (SUCC, One)
        Name (NVLD, 0x02)
        Name (CRIT, 0x04)
        Name (NCRT, 0x06)
        Method (GSCI, 0, Serialized)
        {
            Method (GBDA, 0, Serialized)
            {
                If (GESF == Zero)
                {
                    PARM = 0x0659
                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == One)
                {
                    PARM = 0x00300482
                    If (S0ID == One)
                    {
                        PARM |= 0x0100
                    }

                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x04)
                {
                    PARM &= 0xEFFF0000
                    PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                    PARM |= IBTT /* \_SB_.PCI0.IGPU.PARM */
                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x05)
                {
                    PARM = IPSC /* \IPSC */
                    PARM |= (IPAT << 0x08)
                    PARM += 0x0100
                    PARM |= (LIDS << 0x10)
                    PARM += 0x00010000
                    PARM |= (IBIA << 0x14)
                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x07)
                {
                    PARM = GIVD /* \_SB_.PCI0.IGPU.GIVD */
                    PARM ^= One
                    PARM |= (GMFN << One)
                    PARM |= 0x1800
                    PARM |= (IDMS << 0x11)
                    PARM |= (DerefOf (DerefOf (CDCT [HVCO]) [CDVL]) << 
                        0x15) /* \_SB_.PCI0.IGPU.PARM */
                    GESF = One
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x0A)
                {
                    PARM = Zero
                    If (ISSC)
                    {
                        PARM |= 0x03
                    }

                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x0B)
                {
                    PARM = KSV0 /* \KSV0 */
                    GESF = KSV1 /* \KSV1 */
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                GESF = Zero
                Return (CRIT) /* \_SB_.PCI0.IGPU.CRIT */
            }

            Method (SBCB, 0, Serialized)
            {
                If (GESF == Zero)
                {
                    PARM = Zero
                    PARM = 0x000F87DD
                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == One)
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x03)
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x04)
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x05)
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x07)
                {
                    If ((S0ID == One) && (OSYS < 0x07DF))
                    {
                        If ((PARM & 0xFF) == One)
                        {
                            \GUAM (One)
                        }

                        If ((PARM & 0xFF) == Zero)
                        {
                            \GUAM (Zero)
                        }
                    }

                    If (PARM == Zero)
                    {
                        Local0 = CLID /* \_SB_.PCI0.IGPU.CLID */
                        If (0x80000000 & Local0)
                        {
                            CLID &= 0x0F
                            GLID (CLID)
                        }
                    }

                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x08)
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x09)
                {
                    IBTT = (PARM & 0xFF)
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x0A)
                {
                    IPSC = (PARM & 0xFF)
                    If ((PARM >> 0x08) & 0xFF)
                    {
                        IPAT = ((PARM >> 0x08) & 0xFF)
                        IPAT--
                    }

                    IBIA = ((PARM >> 0x14) & 0x07)
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x0B)
                {
                    IF1E = ((PARM >> One) & One)
                    If (PARM & 0x0001E000)
                    {
                        IDMS = ((PARM >> 0x0D) & 0x0F)
                    }
                    Else
                    {
                        IDMS = ((PARM >> 0x11) & 0x0F)
                    }

                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x10)
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x11)
                {
                    PARM = (LIDS << 0x08)
                    PARM += 0x0100
                    GESF = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x12)
                {
                    If (PARM & One)
                    {
                        If ((PARM >> One) == One)
                        {
                            ISSC = One
                        }
                        Else
                        {
                            GESF = Zero
                            Return (CRIT) /* \_SB_.PCI0.IGPU.CRIT */
                        }
                    }
                    Else
                    {
                        ISSC = Zero
                    }

                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x13)
                {
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                If (GESF == 0x14)
                {
                    PAVP = (PARM & 0x0F)
                    GESF = Zero
                    PARM = Zero
                    Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
                }

                GESF = Zero
                Return (SUCC) /* \_SB_.PCI0.IGPU.SUCC */
            }

            If (GEFC == 0x04)
            {
                GXFC = GBDA ()
            }

            If (GEFC == 0x06)
            {
                GXFC = SBCB ()
            }

            GEFC = Zero
            CPSC = One
            GSSE = Zero
            SCIE = Zero
            Return (Zero)
        }

        Method (PDRD, 0, NotSerialized)
        {
            Return (!DRDY)
        }

        Method (PSTS, 0, NotSerialized)
        {
            If (CSTS > 0x02)
            {
                Sleep (ASLP)
            }

            Return ((CSTS == 0x03))
        }

        Method (GNOT, 2, NotSerialized)
        {
            If (PDRD ())
            {
                Return (One)
            }

            CEVT = Arg0
            CSTS = 0x03
            If ((CHPD == Zero) && (Arg1 == Zero))
            {
                Notify (\_SB.PCI0.IGPU, Arg1)
            }

            If (CondRefOf (HNOT))
            {
                HNOT (Arg0)
            }
            Else
            {
                Notify (\_SB.PCI0.IGPU, 0x80) // Status Change
            }

            Return (Zero)
        }

        Method (GHDS, 1, NotSerialized)
        {
            TIDX = Arg0
            Return (GNOT (One, Zero))
        }

        Method (GLID, 1, NotSerialized)
        {
            If (Arg0 == One)
            {
                CLID = 0x03
            }
            Else
            {
                CLID = Arg0
            }

            If (GNOT (0x02, Zero))
            {
                CLID |= 0x80000000
                Return (One)
            }

            Return (Zero)
        }

        Method (GDCK, 1, NotSerialized)
        {
            CDCK = Arg0
            Return (GNOT (0x04, Zero))
        }

        Method (PARD, 0, NotSerialized)
        {
            If (!ARDY)
            {
                Sleep (ASLP)
            }

            Return (!ARDY)
        }

        Method (IUEH, 1, Serialized)
        {
            IUER &= 0xC0
            IUER ^= (One << Arg0)
            If (Arg0 <= 0x04)
            {
                Return (AINT (0x05, Zero))
            }
            Else
            {
                Return (AINT (Arg0, Zero))
            }
        }

        Method (AINT, 2, NotSerialized)
        {
            If (!(TCHE & (One << Arg0)))
            {
                Return (One)
            }

            If (PARD ())
            {
                Return (One)
            }

            If ((Arg0 >= 0x05) && (Arg0 <= 0x07))
            {
                ASLC = (One << Arg0)
                ASLE = One
                Local2 = Zero
                While ((Local2 < 0xFA) && (ASLC != Zero))
                {
                    Sleep (0x04)
                    Local2++
                }

                Return (Zero)
            }

            If (Arg0 == 0x02)
            {
                If (CPFM)
                {
                    Local0 = (CPFM & 0x0F)
                    Local1 = (EPFM & 0x0F)
                    If (Local0 == One)
                    {
                        If (Local1 & 0x06)
                        {
                            PFIT = 0x06
                        }
                        ElseIf (Local1 & 0x08)
                        {
                            PFIT = 0x08
                        }
                        Else
                        {
                            PFIT = One
                        }
                    }

                    If (Local0 == 0x06)
                    {
                        If (Local1 & 0x08)
                        {
                            PFIT = 0x08
                        }
                        ElseIf (Local1 & One)
                        {
                            PFIT = One
                        }
                        Else
                        {
                            PFIT = 0x06
                        }
                    }

                    If (Local0 == 0x08)
                    {
                        If (Local1 & One)
                        {
                            PFIT = One
                        }
                        ElseIf (Local1 & 0x06)
                        {
                            PFIT = 0x06
                        }
                        Else
                        {
                            PFIT = 0x08
                        }
                    }
                }
                Else
                {
                    PFIT ^= 0x07
                }

                PFIT |= 0x80000000
                ASLC = 0x04
            }
            ElseIf (Arg0 == One)
            {
                BCLP = Arg1
                BCLP |= 0x80000000
                ASLC = 0x02
            }
            ElseIf (Arg0 == Zero)
            {
                ALSI = Arg1
                ASLC = One
            }
            Else
            {
                Return (One)
            }

            ASLE = One
            Return (Zero)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (Arg0 == ToUUID ("3e5b41c6-eb1d-4260-9d15-c71fbadae414"))
            {
                While (One)
                {
                    _T_0 = ToInteger (Arg2)
                    If (_T_0 == Zero)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "iGfx Supported Functions Bitmap "
                            Return (0x0001E7FF)
                        }
                    }
                    ElseIf (_T_0 == One)
                    {
                        If (Arg1 == One)
                        {
                            Debug = " Adapter Power State Notification "
                            If ((S0ID == One) && (OSYS < 0x07DF))
                            {
                                If ((DerefOf (Arg3 [Zero]) & 0xFF) == One)
                                {
                                    \GUAM (One)
                                }

                                Local0 = (DerefOf (Arg3 [One]) & 0xFF)
                                If (Local0 == Zero)
                                {
                                    \GUAM (Zero)
                                }
                            }

                            If (DerefOf (Arg3 [Zero]) == Zero)
                            {
                                Local0 = CLID /* \_SB_.PCI0.IGPU.CLID */
                                If (0x80000000 & Local0)
                                {
                                    CLID &= 0x0F
                                    GLID (CLID)
                                }
                            }

                            Return (One)
                        }
                    }
                    ElseIf (_T_0 == 0x02)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "Display Power State Notification "
                            Return (One)
                        }
                    }
                    ElseIf (_T_0 == 0x03)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "BIOS POST Completion Notification "
                            Return (One)
                        }
                    }
                    ElseIf (_T_0 == 0x04)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "Pre-Hires Set Mode "
                            Return (One)
                        }
                    }
                    ElseIf (_T_0 == 0x05)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "Post-Hires Set Mode "
                            Return (One)
                        }
                    }
                    ElseIf (_T_0 == 0x06)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "SetDisplayDeviceNotification"
                            Return (One)
                        }
                    }
                    ElseIf (_T_0 == 0x07)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "SetBootDevicePreference "
                            IBTT = (DerefOf (Arg3 [Zero]) & 0xFF)
                            Return (One)
                        }
                    }
                    ElseIf (_T_0 == 0x08)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "SetPanelPreference "
                            IPSC = (DerefOf (Arg3 [Zero]) & 0xFF)
                            If (DerefOf (Arg3 [One]) & 0xFF)
                            {
                                IPAT = (DerefOf (Arg3 [One]) & 0xFF)
                                IPAT--
                            }

                            IBIA = ((DerefOf (Arg3 [0x02]) >> 0x04) & 0x07)
                            Return (One)
                        }
                    }
                    ElseIf (_T_0 == 0x09)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "FullScreenDOS "
                            Return (One)
                        }
                    }
                    ElseIf (_T_0 == 0x0A)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "APM Complete "
                            Local0 = (LIDS << 0x08)
                            Local0 += 0x0100
                            Return (Local0)
                        }
                    }
                    ElseIf (_T_0 == 0x0D)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "GetBootDisplayPreference "
                            Local0 = ((DerefOf (Arg3 [0x03]) << 0x18) | (DerefOf (
                                Arg3 [0x02]) << 0x10))
                            Local0 &= 0xEFFF0000
                            Local0 &= (DerefOf (DBTB [IBTT]) << 0x10)
                            Local0 |= IBTT
                            Return (Local0)
                        }
                    }
                    ElseIf (_T_0 == 0x0E)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "GetPanelDetails "
                            Local0 = IPSC /* \IPSC */
                            Local0 |= (IPAT << 0x08)
                            Local0 += 0x0100
                            Local0 |= (LIDS << 0x10)
                            Local0 += 0x00010000
                            Local0 |= (IBIA << 0x14)
                            Return (Local0)
                        }
                    }
                    ElseIf (_T_0 == 0x0F)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "GetInternalGraphics "
                            Local0 = GIVD /* \_SB_.PCI0.IGPU.GIVD */
                            Local0 ^= One
                            Local0 |= (GMFN << One)
                            Local0 |= 0x1800
                            Local0 |= (IDMS << 0x11)
                            Local0 |= (DerefOf (DerefOf (CDCT [HVCO]) [CDVL]) << 
                                0x15)
                            Return (Local0)
                        }
                    }
                    ElseIf (_T_0 == 0x10)
                    {
                        If (Arg1 == One)
                        {
                            Debug = "GetAKSV "
                            Name (KSVP, Package (0x02)
                            {
                                0x80000000, 
                                0x8000
                            })
                            KSVP [Zero] = KSV0 /* \KSV0 */
                            KSVP [One] = KSV1 /* \KSV1 */
                            Return (KSVP) /* \_SB_.PCI0.IGPU._DSM.KSVP */
                        }
                    }

                    Break
                }
            }

            Return (Buffer (One)
            {
                 0x00                                             /* . */
            })
        }
    }

    Scope (\_SB)
    {
        Device (SKC0)
        {
            Name (_HID, "INT3470")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IMTP == 0x02)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PCI0.IGPU)
    {
        Device (SKC0)
        {
            Name (_ADR, 0xCA00)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IMTP == One)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (ISP0)
        {
            Name (_ADR, 0x00050000)  // _ADR: Address
        }
    }
}

