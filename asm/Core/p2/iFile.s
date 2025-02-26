.include "macros.inc"

.section .bss

.global tbuffer
tbuffer:
	.skip 0x1020
.global file_queue
file_queue:
	.skip 0x70
.global gHostPath
gHostPath:
	.skip 0x100

.section .rodata

.global $$2stringBase0_26
$$2stringBase0_26:
	.incbin "baserom.dol", 0x2CF880, 0x18

.section .sbss

.global buffer32
buffer32:
	.skip 0x4
.global iFileSyncAsyncReadActive
iFileSyncAsyncReadActive:
	.skip 0x4
.global fopcount$704
fopcount$704:
	.skip 0x4
.global init$705
init$705:
	.skip 0x4

.section .text

.global iFileInit__Fv
iFileInit__Fv:
/* 8007471C 0007151C  3C 60 80 35 */	lis r3, tbuffer@ha
/* 80074720 00071520  38 63 3E 08 */	addi r3, r3, tbuffer@l
/* 80074724 00071524  38 03 00 1F */	addi r0, r3, 0x1f
/* 80074728 00071528  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8007472C 0007152C  90 0D C0 08 */	stw r0, buffer32-_SDA_BASE_(r13)
/* 80074730 00071530  4E 80 00 20 */	blr 

.global iFileExit__Fv
iFileExit__Fv:
/* 80074734 00071534  4E 80 00 20 */	blr 

.global iFileLoad__FPCcPUiPUi
iFileLoad__FPCcPUiPUi:
/* 80074738 00071538  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 8007473C 0007153C  7C 08 02 A6 */	mflr r0
/* 80074740 00071540  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 80074744 00071544  BF A1 01 A4 */	stmw r29, 0x1a4(r1)
/* 80074748 00071548  7C 9D 23 78 */	mr r29, r4
/* 8007474C 0007154C  7C 7F 1B 78 */	mr r31, r3
/* 80074750 00071550  7C BE 2B 78 */	mr r30, r5
/* 80074754 00071554  38 81 00 08 */	addi r4, r1, 8
/* 80074758 00071558  48 00 06 55 */	bl iFileFullPath__FPCcPc
/* 8007475C 0007155C  7F E3 FB 78 */	mr r3, r31
/* 80074760 00071560  38 A1 00 88 */	addi r5, r1, 0x88
/* 80074764 00071564  38 80 00 04 */	li r4, 4
/* 80074768 00071568  48 00 00 7D */	bl iFileOpen__FPCciP9tag_xFile
/* 8007476C 0007156C  38 61 00 88 */	addi r3, r1, 0x88
/* 80074770 00071570  48 00 05 D9 */	bl iFileGetSize__FP9tag_xFile
/* 80074774 00071574  28 1D 00 00 */	cmplwi r29, 0
/* 80074778 00071578  7C 7F 1B 78 */	mr r31, r3
/* 8007477C 0007157C  40 82 00 24 */	bne lbl_800747A0
/* 80074780 00071580  80 AD E6 54 */	lwz r5, RwEngineInstance-_SDA_BASE_(r13)
/* 80074784 00071584  38 1F 00 1F */	addi r0, r31, 0x1f
/* 80074788 00071588  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8007478C 0007158C  38 80 00 00 */	li r4, 0
/* 80074790 00071590  81 85 01 08 */	lwz r12, 0x108(r5)
/* 80074794 00071594  7D 89 03 A6 */	mtctr r12
/* 80074798 00071598  4E 80 04 21 */	bctrl 
/* 8007479C 0007159C  7C 7D 1B 78 */	mr r29, r3
lbl_800747A0:
/* 800747A0 000715A0  38 1F 00 1F */	addi r0, r31, 0x1f
/* 800747A4 000715A4  7F A4 EB 78 */	mr r4, r29
/* 800747A8 000715A8  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 800747AC 000715AC  38 61 00 88 */	addi r3, r1, 0x88
/* 800747B0 000715B0  7F E5 FB 78 */	mr r5, r31
/* 800747B4 000715B4  48 00 01 85 */	bl iFileRead__FP9tag_xFilePvUi
/* 800747B8 000715B8  28 1E 00 00 */	cmplwi r30, 0
/* 800747BC 000715BC  41 82 00 08 */	beq lbl_800747C4
/* 800747C0 000715C0  93 FE 00 00 */	stw r31, 0(r30)
lbl_800747C4:
/* 800747C4 000715C4  38 61 00 88 */	addi r3, r1, 0x88
/* 800747C8 000715C8  48 00 05 2D */	bl iFileClose__FP9tag_xFile
/* 800747CC 000715CC  7F A3 EB 78 */	mr r3, r29
/* 800747D0 000715D0  BB A1 01 A4 */	lmw r29, 0x1a4(r1)
/* 800747D4 000715D4  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 800747D8 000715D8  7C 08 03 A6 */	mtlr r0
/* 800747DC 000715DC  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 800747E0 000715E0  4E 80 00 20 */	blr 

.global iFileOpen__FPCciP9tag_xFile
iFileOpen__FPCciP9tag_xFile:
/* 800747E4 000715E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800747E8 000715E8  7C 08 02 A6 */	mflr r0
/* 800747EC 000715EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800747F0 000715F0  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 800747F4 000715F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800747F8 000715F8  7C BF 2B 78 */	mr r31, r5
/* 800747FC 000715FC  41 82 00 14 */	beq lbl_80074810
/* 80074800 00071600  7C 64 1B 78 */	mr r4, r3
/* 80074804 00071604  38 7F 00 24 */	addi r3, r31, 0x24
/* 80074808 00071608  48 24 7C ED */	bl strcpy
/* 8007480C 0007160C  48 00 00 0C */	b lbl_80074818
lbl_80074810:
/* 80074810 00071610  38 9F 00 24 */	addi r4, r31, 0x24
/* 80074814 00071614  48 00 05 99 */	bl iFileFullPath__FPCcPc
lbl_80074818:
/* 80074818 00071618  38 7F 00 24 */	addi r3, r31, 0x24
/* 8007481C 0007161C  48 23 A8 99 */	bl DVDConvertPathToEntrynum
/* 80074820 00071620  90 7F 00 A4 */	stw r3, 0xa4(r31)
/* 80074824 00071624  80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 80074828 00071628  2C 03 FF FF */	cmpwi r3, -1
/* 8007482C 0007162C  40 82 00 0C */	bne lbl_80074838
/* 80074830 00071630  38 60 00 01 */	li r3, 1
/* 80074834 00071634  48 00 00 48 */	b lbl_8007487C
lbl_80074838:
/* 80074838 00071638  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 8007483C 0007163C  48 23 AB 6D */	bl DVDFastOpen
/* 80074840 00071640  2C 03 00 00 */	cmpwi r3, 0
/* 80074844 00071644  40 82 00 14 */	bne lbl_80074858
/* 80074848 00071648  38 00 FF FF */	li r0, -1
/* 8007484C 0007164C  38 60 00 01 */	li r3, 1
/* 80074850 00071650  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 80074854 00071654  48 00 00 28 */	b lbl_8007487C
lbl_80074858:
/* 80074858 00071658  38 60 00 00 */	li r3, 0
/* 8007485C 0007165C  38 00 00 01 */	li r0, 1
/* 80074860 00071660  90 7F 00 E4 */	stw r3, 0xe4(r31)
/* 80074864 00071664  7F E3 FB 78 */	mr r3, r31
/* 80074868 00071668  38 80 00 00 */	li r4, 0
/* 8007486C 0007166C  38 A0 00 00 */	li r5, 0
/* 80074870 00071670  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80074874 00071674  48 00 00 1D */	bl iFileSeek__FP9tag_xFileii
/* 80074878 00071678  38 60 00 00 */	li r3, 0
lbl_8007487C:
/* 8007487C 0007167C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074880 00071680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80074884 00071684  7C 08 03 A6 */	mtlr r0
/* 80074888 00071688  38 21 00 10 */	addi r1, r1, 0x10
/* 8007488C 0007168C  4E 80 00 20 */	blr 

.global iFileSeek__FP9tag_xFileii
iFileSeek__FP9tag_xFileii:
/* 80074890 00071690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074894 00071694  7C 08 02 A6 */	mflr r0
/* 80074898 00071698  2C 05 00 01 */	cmpwi r5, 1
/* 8007489C 0007169C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800748A0 000716A0  BF C1 00 08 */	stmw r30, 8(r1)
/* 800748A4 000716A4  7C 7E 1B 78 */	mr r30, r3
/* 800748A8 000716A8  7C 9F 23 78 */	mr r31, r4
/* 800748AC 000716AC  41 82 00 28 */	beq lbl_800748D4
/* 800748B0 000716B0  40 80 00 10 */	bge lbl_800748C0
/* 800748B4 000716B4  2C 05 00 00 */	cmpwi r5, 0
/* 800748B8 000716B8  40 80 00 14 */	bge lbl_800748CC
/* 800748BC 000716BC  48 00 00 50 */	b lbl_8007490C
lbl_800748C0:
/* 800748C0 000716C0  2C 05 00 03 */	cmpwi r5, 3
/* 800748C4 000716C4  40 80 00 48 */	bge lbl_8007490C
/* 800748C8 000716C8  48 00 00 30 */	b lbl_800748F8
lbl_800748CC:
/* 800748CC 000716CC  7F E0 FB 78 */	mr r0, r31
/* 800748D0 000716D0  48 00 00 40 */	b lbl_80074910
lbl_800748D4:
/* 800748D4 000716D4  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 800748D8 000716D8  48 23 D1 15 */	bl DVDGetCommandBlockStatus
/* 800748DC 000716DC  2C 03 00 01 */	cmpwi r3, 1
/* 800748E0 000716E0  40 82 00 0C */	bne lbl_800748EC
/* 800748E4 000716E4  38 60 FF FF */	li r3, -1
/* 800748E8 000716E8  48 00 00 30 */	b lbl_80074918
lbl_800748EC:
/* 800748EC 000716EC  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 800748F0 000716F0  7C 1F 02 14 */	add r0, r31, r0
/* 800748F4 000716F4  48 00 00 1C */	b lbl_80074910
lbl_800748F8:
/* 800748F8 000716F8  80 1E 00 DC */	lwz r0, 0xdc(r30)
/* 800748FC 000716FC  7C 1F 00 51 */	subf. r0, r31, r0
/* 80074900 00071700  40 80 00 10 */	bge lbl_80074910
/* 80074904 00071704  38 00 00 00 */	li r0, 0
/* 80074908 00071708  48 00 00 08 */	b lbl_80074910
lbl_8007490C:
/* 8007490C 0007170C  7F E0 FB 78 */	mr r0, r31
lbl_80074910:
/* 80074910 00071710  90 1E 01 0C */	stw r0, 0x10c(r30)
/* 80074914 00071714  80 7E 01 0C */	lwz r3, 0x10c(r30)
lbl_80074918:
/* 80074918 00071718  BB C1 00 08 */	lmw r30, 8(r1)
/* 8007491C 0007171C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074920 00071720  7C 08 03 A6 */	mtlr r0
/* 80074924 00071724  38 21 00 10 */	addi r1, r1, 0x10
/* 80074928 00071728  4E 80 00 20 */	blr 

.global ifilereadCB__FP9tag_xFile
ifilereadCB__FP9tag_xFile:
/* 8007492C 0007172C  38 00 00 00 */	li r0, 0
/* 80074930 00071730  90 0D C0 0C */	stw r0, iFileSyncAsyncReadActive-_SDA_BASE_(r13)
/* 80074934 00071734  4E 80 00 20 */	blr 

.global iFileRead__FP9tag_xFilePvUi
iFileRead__FP9tag_xFilePvUi:
/* 80074938 00071738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007493C 0007173C  7C 08 02 A6 */	mflr r0
/* 80074940 00071740  90 01 00 24 */	stw r0, 0x24(r1)
/* 80074944 00071744  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 80074948 00071748  7C 9D 23 78 */	mr r29, r4
/* 8007494C 0007174C  7C BE 2B 78 */	mr r30, r5
/* 80074950 00071750  7C 7C 1B 78 */	mr r28, r3
/* 80074954 00071754  38 A0 00 00 */	li r5, 0
/* 80074958 00071758  80 83 01 0C */	lwz r4, 0x10c(r3)
/* 8007495C 0007175C  4B FF FF 35 */	bl iFileSeek__FP9tag_xFileii
/* 80074960 00071760  38 00 00 01 */	li r0, 1
/* 80074964 00071764  3C 60 80 07 */	lis r3, ifilereadCB__FP9tag_xFile@ha
/* 80074968 00071768  90 0D C0 0C */	stw r0, iFileSyncAsyncReadActive-_SDA_BASE_(r13)
/* 8007496C 0007176C  3B E3 49 2C */	addi r31, r3, ifilereadCB__FP9tag_xFile@l
lbl_80074970:
/* 80074970 00071770  7F 83 E3 78 */	mr r3, r28
/* 80074974 00071774  7F A4 EB 78 */	mr r4, r29
/* 80074978 00071778  7F C5 F3 78 */	mr r5, r30
/* 8007497C 0007177C  7F E6 FB 78 */	mr r6, r31
/* 80074980 00071780  38 E0 00 00 */	li r7, 0
/* 80074984 00071784  48 00 02 21 */	bl iFileReadAsync__FP9tag_xFilePvUiPFP9tag_xFile_vi
/* 80074988 00071788  2C 03 FF FF */	cmpwi r3, -1
/* 8007498C 0007178C  40 82 00 1C */	bne lbl_800749A8
/* 80074990 00071790  48 00 EB 71 */	bl TRCCheck__8iTRCDiskFv
/* 80074994 00071794  48 00 01 89 */	bl iFileAsyncService__Fv
/* 80074998 00071798  4B FF FF D8 */	b lbl_80074970
/* 8007499C 0007179C  48 00 00 0C */	b lbl_800749A8
lbl_800749A0:
/* 800749A0 000717A0  48 00 EB 61 */	bl TRCCheck__8iTRCDiskFv
/* 800749A4 000717A4  48 00 01 79 */	bl iFileAsyncService__Fv
lbl_800749A8:
/* 800749A8 000717A8  80 0D C0 0C */	lwz r0, iFileSyncAsyncReadActive-_SDA_BASE_(r13)
/* 800749AC 000717AC  28 00 00 00 */	cmplwi r0, 0
/* 800749B0 000717B0  40 82 FF F0 */	bne lbl_800749A0
/* 800749B4 000717B4  80 1C 01 0C */	lwz r0, 0x10c(r28)
/* 800749B8 000717B8  7F C3 F3 78 */	mr r3, r30
/* 800749BC 000717BC  7C 00 F2 14 */	add r0, r0, r30
/* 800749C0 000717C0  90 1C 01 0C */	stw r0, 0x10c(r28)
/* 800749C4 000717C4  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 800749C8 000717C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800749CC 000717CC  7C 08 03 A6 */	mtlr r0
/* 800749D0 000717D0  38 21 00 20 */	addi r1, r1, 0x20
/* 800749D4 000717D4  4E 80 00 20 */	blr 

.global async_cb__FlP11DVDFileInfo
async_cb__FlP11DVDFileInfo:
/* 800749D8 000717D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800749DC 000717DC  7C 08 02 A6 */	mflr r0
/* 800749E0 000717E0  2C 03 FF FE */	cmpwi r3, -2
/* 800749E4 000717E4  39 00 FF FF */	li r8, -1
/* 800749E8 000717E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800749EC 000717EC  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 800749F0 000717F0  3C 80 80 35 */	lis r4, file_queue@ha
/* 800749F4 000717F4  1C A0 00 1C */	mulli r5, r0, 0x1c
/* 800749F8 000717F8  38 04 4E 28 */	addi r0, r4, file_queue@l
/* 800749FC 000717FC  7C E0 2A 14 */	add r7, r0, r5
/* 80074A00 00071800  41 82 00 28 */	beq lbl_80074A28
/* 80074A04 00071804  40 80 00 10 */	bge lbl_80074A14
/* 80074A08 00071808  2C 03 FF FD */	cmpwi r3, -3
/* 80074A0C 0007180C  40 80 00 28 */	bge lbl_80074A34
/* 80074A10 00071810  48 00 00 18 */	b lbl_80074A28
lbl_80074A14:
/* 80074A14 00071814  2C 03 00 00 */	cmpwi r3, 0
/* 80074A18 00071818  40 80 00 10 */	bge lbl_80074A28
/* 80074A1C 0007181C  38 60 00 0C */	li r3, 0xc
/* 80074A20 00071820  4B FF AD A1 */	bl xTRCDisk__F12_tagTRCState
/* 80074A24 00071824  48 00 00 E8 */	b lbl_80074B0C
lbl_80074A28:
/* 80074A28 00071828  2C 03 00 00 */	cmpwi r3, 0
/* 80074A2C 0007182C  41 80 00 08 */	blt lbl_80074A34
/* 80074A30 00071830  7C 68 1B 78 */	mr r8, r3
lbl_80074A34:
/* 80074A34 00071834  2C 08 00 00 */	cmpwi r8, 0
/* 80074A38 00071838  40 80 00 10 */	bge lbl_80074A48
/* 80074A3C 0007183C  38 00 00 03 */	li r0, 3
/* 80074A40 00071840  90 07 00 10 */	stw r0, 0x10(r7)
/* 80074A44 00071844  48 00 00 C8 */	b lbl_80074B0C
lbl_80074A48:
/* 80074A48 00071848  80 A7 00 0C */	lwz r5, 0xc(r7)
/* 80074A4C 0007184C  80 07 00 08 */	lwz r0, 8(r7)
/* 80074A50 00071850  7C 88 2A 14 */	add r4, r8, r5
/* 80074A54 00071854  7C 04 00 40 */	cmplw r4, r0
/* 80074A58 00071858  40 80 00 20 */	bge lbl_80074A78
/* 80074A5C 0007185C  80 C7 00 00 */	lwz r6, 0(r7)
/* 80074A60 00071860  80 66 01 0C */	lwz r3, 0x10c(r6)
/* 80074A64 00071864  80 06 00 DC */	lwz r0, 0xdc(r6)
/* 80074A68 00071868  7C 65 1A 14 */	add r3, r5, r3
/* 80074A6C 0007186C  7C 68 1A 14 */	add r3, r8, r3
/* 80074A70 00071870  7C 03 00 40 */	cmplw r3, r0
/* 80074A74 00071874  41 80 00 18 */	blt lbl_80074A8C
lbl_80074A78:
/* 80074A78 00071878  38 00 00 02 */	li r0, 2
/* 80074A7C 0007187C  90 07 00 10 */	stw r0, 0x10(r7)
/* 80074A80 00071880  80 07 00 08 */	lwz r0, 8(r7)
/* 80074A84 00071884  90 07 00 0C */	stw r0, 0xc(r7)
/* 80074A88 00071888  48 00 00 84 */	b lbl_80074B0C
lbl_80074A8C:
/* 80074A8C 0007188C  90 87 00 0C */	stw r4, 0xc(r7)
/* 80074A90 00071890  38 00 00 01 */	li r0, 1
/* 80074A94 00071894  90 07 00 10 */	stw r0, 0x10(r7)
/* 80074A98 00071898  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 80074A9C 0007189C  80 07 00 08 */	lwz r0, 8(r7)
/* 80074AA0 000718A0  7C 66 00 50 */	subf r3, r6, r0
/* 80074AA4 000718A4  28 03 80 00 */	cmplwi r3, 0x8000
/* 80074AA8 000718A8  40 80 00 10 */	bge lbl_80074AB8
/* 80074AAC 000718AC  38 A3 00 03 */	addi r5, r3, 3
/* 80074AB0 000718B0  54 A5 00 3A */	rlwinm r5, r5, 0, 0, 0x1d
/* 80074AB4 000718B4  48 00 00 0C */	b lbl_80074AC0
lbl_80074AB8:
/* 80074AB8 000718B8  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 80074ABC 000718BC  38 A3 80 00 */	addi r5, r3, 0x00008000@l
lbl_80074AC0:
/* 80074AC0 000718C0  81 07 00 00 */	lwz r8, 0(r7)
/* 80074AC4 000718C4  81 28 01 0C */	lwz r9, 0x10c(r8)
/* 80074AC8 000718C8  80 68 00 DC */	lwz r3, 0xdc(r8)
/* 80074ACC 000718CC  7C 06 4A 14 */	add r0, r6, r9
/* 80074AD0 000718D0  7C 05 02 14 */	add r0, r5, r0
/* 80074AD4 000718D4  7C 00 18 40 */	cmplw r0, r3
/* 80074AD8 000718D8  40 81 00 14 */	ble lbl_80074AEC
/* 80074ADC 000718DC  7C A9 18 50 */	subf r5, r9, r3
/* 80074AE0 000718E0  7C A6 28 50 */	subf r5, r6, r5
/* 80074AE4 000718E4  38 A5 00 1F */	addi r5, r5, 0x1f
/* 80074AE8 000718E8  54 A5 00 34 */	rlwinm r5, r5, 0, 0, 0x1a
lbl_80074AEC:
/* 80074AEC 000718EC  80 87 00 04 */	lwz r4, 4(r7)
/* 80074AF0 000718F0  3C 60 80 07 */	lis r3, async_cb__FlP11DVDFileInfo@ha
/* 80074AF4 000718F4  38 E3 49 D8 */	addi r7, r3, async_cb__FlP11DVDFileInfo@l
/* 80074AF8 000718F8  7C 84 32 14 */	add r4, r4, r6
/* 80074AFC 000718FC  38 68 00 A8 */	addi r3, r8, 0xa8
/* 80074B00 00071900  7C C9 32 14 */	add r6, r9, r6
/* 80074B04 00071904  39 00 00 02 */	li r8, 2
/* 80074B08 00071908  48 23 AC 25 */	bl DVDReadAsyncPrio
lbl_80074B0C:
/* 80074B0C 0007190C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074B10 00071910  7C 08 03 A6 */	mtlr r0
/* 80074B14 00071914  38 21 00 10 */	addi r1, r1, 0x10
/* 80074B18 00071918  4E 80 00 20 */	blr 

.global iFileAsyncService__Fv
iFileAsyncService__Fv:
/* 80074B1C 0007191C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80074B20 00071920  7C 08 02 A6 */	mflr r0
/* 80074B24 00071924  3C 60 80 35 */	lis r3, file_queue@ha
/* 80074B28 00071928  90 01 00 24 */	stw r0, 0x24(r1)
/* 80074B2C 0007192C  BF 41 00 08 */	stmw r26, 8(r1)
/* 80074B30 00071930  3B E0 00 00 */	li r31, 0
/* 80074B34 00071934  7F FD FB 78 */	mr r29, r31
/* 80074B38 00071938  3B 60 00 00 */	li r27, 0
/* 80074B3C 0007193C  3B 83 4E 28 */	addi r28, r3, file_queue@l
/* 80074B40 00071940  3B C0 FF FF */	li r30, -1
lbl_80074B44:
/* 80074B44 00071944  7F 5C FA 14 */	add r26, r28, r31
/* 80074B48 00071948  81 9A 00 14 */	lwz r12, 0x14(r26)
/* 80074B4C 0007194C  28 0C 00 00 */	cmplwi r12, 0
/* 80074B50 00071950  41 82 00 30 */	beq lbl_80074B80
/* 80074B54 00071954  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 80074B58 00071958  2C 00 00 02 */	cmpwi r0, 2
/* 80074B5C 0007195C  41 82 00 0C */	beq lbl_80074B68
/* 80074B60 00071960  2C 00 00 03 */	cmpwi r0, 3
/* 80074B64 00071964  40 82 00 1C */	bne lbl_80074B80
lbl_80074B68:
/* 80074B68 00071968  80 7A 00 00 */	lwz r3, 0(r26)
/* 80074B6C 0007196C  7D 89 03 A6 */	mtctr r12
/* 80074B70 00071970  4E 80 04 21 */	bctrl 
/* 80074B74 00071974  93 BA 00 14 */	stw r29, 0x14(r26)
/* 80074B78 00071978  80 7A 00 00 */	lwz r3, 0(r26)
/* 80074B7C 0007197C  93 C3 00 E8 */	stw r30, 0xe8(r3)
lbl_80074B80:
/* 80074B80 00071980  3B 7B 00 01 */	addi r27, r27, 1
/* 80074B84 00071984  3B FF 00 1C */	addi r31, r31, 0x1c
/* 80074B88 00071988  2C 1B 00 04 */	cmpwi r27, 4
/* 80074B8C 0007198C  41 80 FF B8 */	blt lbl_80074B44
/* 80074B90 00071990  BB 41 00 08 */	lmw r26, 8(r1)
/* 80074B94 00071994  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80074B98 00071998  7C 08 03 A6 */	mtlr r0
/* 80074B9C 0007199C  38 21 00 20 */	addi r1, r1, 0x20
/* 80074BA0 000719A0  4E 80 00 20 */	blr 

.global iFileReadAsync__FP9tag_xFilePvUiPFP9tag_xFile_vi
iFileReadAsync__FP9tag_xFilePvUiPFP9tag_xFile_vi:
/* 80074BA4 000719A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80074BA8 000719A8  7C 08 02 A6 */	mflr r0
/* 80074BAC 000719AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80074BB0 000719B0  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 80074BB4 000719B4  7C 7F 1B 78 */	mr r31, r3
/* 80074BB8 000719B8  88 0D C0 14 */	lbz r0, init$705-_SDA_BASE_(r13)
/* 80074BBC 000719BC  7C 00 07 75 */	extsb. r0, r0
/* 80074BC0 000719C0  40 82 00 10 */	bne lbl_80074BD0
/* 80074BC4 000719C4  38 00 00 01 */	li r0, 1
/* 80074BC8 000719C8  90 0D C0 10 */	stw r0, fopcount$704-_SDA_BASE_(r13)
/* 80074BCC 000719CC  98 0D C0 14 */	stb r0, init$705-_SDA_BASE_(r13)
lbl_80074BD0:
/* 80074BD0 000719D0  3C 60 80 35 */	lis r3, file_queue@ha
/* 80074BD4 000719D4  38 00 00 04 */	li r0, 4
/* 80074BD8 000719D8  38 E3 4E 28 */	addi r7, r3, file_queue@l
/* 80074BDC 000719DC  3B 80 00 00 */	li r28, 0
/* 80074BE0 000719E0  38 60 00 00 */	li r3, 0
/* 80074BE4 000719E4  7C 09 03 A6 */	mtctr r0
lbl_80074BE8:
/* 80074BE8 000719E8  7D 07 1A 14 */	add r8, r7, r3
/* 80074BEC 000719EC  80 08 00 14 */	lwz r0, 0x14(r8)
/* 80074BF0 000719F0  28 00 00 00 */	cmplwi r0, 0
/* 80074BF4 000719F4  40 82 00 90 */	bne lbl_80074C84
/* 80074BF8 000719F8  80 08 00 10 */	lwz r0, 0x10(r8)
/* 80074BFC 000719FC  2C 00 00 04 */	cmpwi r0, 4
/* 80074C00 00071A00  41 82 00 84 */	beq lbl_80074C84
/* 80074C04 00071A04  2C 00 00 01 */	cmpwi r0, 1
/* 80074C08 00071A08  41 82 00 7C */	beq lbl_80074C84
/* 80074C0C 00071A0C  93 E8 00 00 */	stw r31, 0(r8)
/* 80074C10 00071A10  38 60 00 00 */	li r3, 0
/* 80074C14 00071A14  80 ED C0 10 */	lwz r7, fopcount$704-_SDA_BASE_(r13)
/* 80074C18 00071A18  38 00 00 04 */	li r0, 4
/* 80074C1C 00071A1C  90 88 00 04 */	stw r4, 4(r8)
/* 80074C20 00071A20  28 05 00 20 */	cmplwi r5, 0x20
/* 80074C24 00071A24  54 FD 10 3A */	slwi r29, r7, 2
/* 80074C28 00071A28  38 E7 00 01 */	addi r7, r7, 1
/* 80074C2C 00071A2C  90 A8 00 08 */	stw r5, 8(r8)
/* 80074C30 00071A30  7F DD E2 14 */	add r30, r29, r28
/* 80074C34 00071A34  39 20 00 20 */	li r9, 0x20
/* 80074C38 00071A38  90 68 00 0C */	stw r3, 0xc(r8)
/* 80074C3C 00071A3C  90 08 00 10 */	stw r0, 0x10(r8)
/* 80074C40 00071A40  90 C8 00 14 */	stw r6, 0x14(r8)
/* 80074C44 00071A44  90 ED C0 10 */	stw r7, fopcount$704-_SDA_BASE_(r13)
/* 80074C48 00071A48  93 C8 00 18 */	stw r30, 0x18(r8)
/* 80074C4C 00071A4C  40 80 00 0C */	bge lbl_80074C58
/* 80074C50 00071A50  39 25 00 03 */	addi r9, r5, 3
/* 80074C54 00071A54  55 29 00 3A */	rlwinm r9, r9, 0, 0, 0x1d
lbl_80074C58:
/* 80074C58 00071A58  93 9F 00 D4 */	stw r28, 0xd4(r31)
/* 80074C5C 00071A5C  3C 60 80 07 */	lis r3, async_cb__FlP11DVDFileInfo@ha
/* 80074C60 00071A60  38 E3 49 D8 */	addi r7, r3, async_cb__FlP11DVDFileInfo@l
/* 80074C64 00071A64  7D 25 4B 78 */	mr r5, r9
/* 80074C68 00071A68  80 DF 01 0C */	lwz r6, 0x10c(r31)
/* 80074C6C 00071A6C  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80074C70 00071A70  39 00 00 02 */	li r8, 2
/* 80074C74 00071A74  48 23 AA B9 */	bl DVDReadAsyncPrio
/* 80074C78 00071A78  93 DF 00 E8 */	stw r30, 0xe8(r31)
/* 80074C7C 00071A7C  7C 7D E2 14 */	add r3, r29, r28
/* 80074C80 00071A80  48 00 00 14 */	b lbl_80074C94
lbl_80074C84:
/* 80074C84 00071A84  3B 9C 00 01 */	addi r28, r28, 1
/* 80074C88 00071A88  38 63 00 1C */	addi r3, r3, 0x1c
/* 80074C8C 00071A8C  42 00 FF 5C */	bdnz lbl_80074BE8
/* 80074C90 00071A90  38 60 FF FF */	li r3, -1
lbl_80074C94:
/* 80074C94 00071A94  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 80074C98 00071A98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80074C9C 00071A9C  7C 08 03 A6 */	mtlr r0
/* 80074CA0 00071AA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80074CA4 00071AA4  4E 80 00 20 */	blr 

.global iFileReadAsyncStatus__FiPi
iFileReadAsyncStatus__FiPi:
/* 80074CA8 00071AA8  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80074CAC 00071AAC  3C A0 80 35 */	lis r5, file_queue@ha
/* 80074CB0 00071AB0  1C C0 00 1C */	mulli r6, r0, 0x1c
/* 80074CB4 00071AB4  38 05 4E 28 */	addi r0, r5, file_queue@l
/* 80074CB8 00071AB8  7C A0 32 14 */	add r5, r0, r6
/* 80074CBC 00071ABC  80 05 00 18 */	lwz r0, 0x18(r5)
/* 80074CC0 00071AC0  7C 03 00 40 */	cmplw r3, r0
/* 80074CC4 00071AC4  41 82 00 0C */	beq lbl_80074CD0
/* 80074CC8 00071AC8  38 60 00 05 */	li r3, 5
/* 80074CCC 00071ACC  4E 80 00 20 */	blr 
lbl_80074CD0:
/* 80074CD0 00071AD0  28 04 00 00 */	cmplwi r4, 0
/* 80074CD4 00071AD4  41 82 00 0C */	beq lbl_80074CE0
/* 80074CD8 00071AD8  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80074CDC 00071ADC  90 04 00 00 */	stw r0, 0(r4)
lbl_80074CE0:
/* 80074CE0 00071AE0  3C 60 80 35 */	lis r3, file_queue@ha
/* 80074CE4 00071AE4  38 03 4E 28 */	addi r0, r3, file_queue@l
/* 80074CE8 00071AE8  7C 60 32 14 */	add r3, r0, r6
/* 80074CEC 00071AEC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80074CF0 00071AF0  4E 80 00 20 */	blr 

.global iFileClose__FP9tag_xFile
iFileClose__FP9tag_xFile:
/* 80074CF4 00071AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074CF8 00071AF8  7C 08 02 A6 */	mflr r0
/* 80074CFC 00071AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80074D00 00071B00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80074D04 00071B04  7C 7F 1B 78 */	mr r31, r3
/* 80074D08 00071B08  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80074D0C 00071B0C  48 23 A7 D9 */	bl DVDClose
/* 80074D10 00071B10  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80074D14 00071B14  48 23 A7 D1 */	bl DVDClose
/* 80074D18 00071B18  2C 03 00 00 */	cmpwi r3, 0
/* 80074D1C 00071B1C  40 82 00 0C */	bne lbl_80074D28
/* 80074D20 00071B20  38 60 00 01 */	li r3, 1
/* 80074D24 00071B24  48 00 00 10 */	b lbl_80074D34
lbl_80074D28:
/* 80074D28 00071B28  38 00 00 00 */	li r0, 0
/* 80074D2C 00071B2C  38 60 00 00 */	li r3, 0
/* 80074D30 00071B30  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_80074D34:
/* 80074D34 00071B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074D38 00071B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80074D3C 00071B3C  7C 08 03 A6 */	mtlr r0
/* 80074D40 00071B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80074D44 00071B44  4E 80 00 20 */	blr 

.global iFileGetSize__FP9tag_xFile
iFileGetSize__FP9tag_xFile:
/* 80074D48 00071B48  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 80074D4C 00071B4C  4E 80 00 20 */	blr 

.global iFileExists__FPCci
iFileExists__FPCci:
/* 80074D50 00071B50  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80074D54 00071B54  7C 08 02 A6 */	mflr r0
/* 80074D58 00071B58  90 01 00 94 */	stw r0, 0x94(r1)
/* 80074D5C 00071B5C  38 81 00 08 */	addi r4, r1, 8
/* 80074D60 00071B60  48 00 00 4D */	bl iFileFullPath__FPCcPc
/* 80074D64 00071B64  38 61 00 08 */	addi r3, r1, 8
/* 80074D68 00071B68  48 23 A3 4D */	bl DVDConvertPathToEntrynum
/* 80074D6C 00071B6C  20 63 FF FF */	subfic r3, r3, -1
/* 80074D70 00071B70  30 03 FF FF */	addic r0, r3, -1
/* 80074D74 00071B74  7C 60 19 10 */	subfe r3, r0, r3
/* 80074D78 00071B78  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80074D7C 00071B7C  7C 08 03 A6 */	mtlr r0
/* 80074D80 00071B80  38 21 00 90 */	addi r1, r1, 0x90
/* 80074D84 00071B84  4E 80 00 20 */	blr 

.global iFileReadStop__Fv
iFileReadStop__Fv:
/* 80074D88 00071B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074D8C 00071B8C  7C 08 02 A6 */	mflr r0
/* 80074D90 00071B90  38 60 00 00 */	li r3, 0
/* 80074D94 00071B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80074D98 00071B98  48 23 D0 F9 */	bl DVDCancelAllAsync
/* 80074D9C 00071B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074DA0 00071BA0  7C 08 03 A6 */	mtlr r0
/* 80074DA4 00071BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80074DA8 00071BA8  4E 80 00 20 */	blr 

.global iFileFullPath__FPCcPc
iFileFullPath__FPCcPc:
/* 80074DAC 00071BAC  38 A0 00 2F */	li r5, 0x2f
/* 80074DB0 00071BB0  48 00 00 24 */	b lbl_80074DD4
lbl_80074DB4:
/* 80074DB4 00071BB4  7C C0 07 74 */	extsb r0, r6
/* 80074DB8 00071BB8  2C 00 00 5C */	cmpwi r0, 0x5c
/* 80074DBC 00071BBC  40 82 00 0C */	bne lbl_80074DC8
/* 80074DC0 00071BC0  98 A4 00 00 */	stb r5, 0(r4)
/* 80074DC4 00071BC4  48 00 00 08 */	b lbl_80074DCC
lbl_80074DC8:
/* 80074DC8 00071BC8  98 C4 00 00 */	stb r6, 0(r4)
lbl_80074DCC:
/* 80074DCC 00071BCC  38 63 00 01 */	addi r3, r3, 1
/* 80074DD0 00071BD0  38 84 00 01 */	addi r4, r4, 1
lbl_80074DD4:
/* 80074DD4 00071BD4  88 C3 00 00 */	lbz r6, 0(r3)
/* 80074DD8 00071BD8  7C C0 07 75 */	extsb. r0, r6
/* 80074DDC 00071BDC  40 82 FF D8 */	bne lbl_80074DB4
/* 80074DE0 00071BE0  38 00 00 00 */	li r0, 0
/* 80074DE4 00071BE4  98 04 00 00 */	stb r0, 0(r4)
/* 80074DE8 00071BE8  4E 80 00 20 */	blr 

.global iFileSetPath__FPCc
iFileSetPath__FPCc:
/* 80074DEC 00071BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074DF0 00071BF0  7C 08 02 A6 */	mflr r0
/* 80074DF4 00071BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80074DF8 00071BF8  BF C1 00 08 */	stmw r30, 8(r1)
/* 80074DFC 00071BFC  7C 7E 1B 78 */	mr r30, r3
/* 80074E00 00071C00  48 24 77 AD */	bl strlen
/* 80074E04 00071C04  3C 80 80 2D */	lis r4, $$2stringBase0_26@ha
/* 80074E08 00071C08  7C 7F 1B 78 */	mr r31, r3
/* 80074E0C 00071C0C  38 64 28 80 */	addi r3, r4, $$2stringBase0_26@l
/* 80074E10 00071C10  7F C4 F3 78 */	mr r4, r30
/* 80074E14 00071C14  4C C6 31 82 */	crclr 6
/* 80074E18 00071C18  48 24 41 41 */	bl printf
/* 80074E1C 00071C1C  3C 60 80 35 */	lis r3, gHostPath@ha
/* 80074E20 00071C20  7F C4 F3 78 */	mr r4, r30
/* 80074E24 00071C24  38 63 4E 98 */	addi r3, r3, gHostPath@l
/* 80074E28 00071C28  48 24 76 CD */	bl strcpy
/* 80074E2C 00071C2C  28 1F 00 00 */	cmplwi r31, 0
/* 80074E30 00071C30  41 82 00 38 */	beq lbl_80074E68
/* 80074E34 00071C34  3C 60 80 35 */	lis r3, gHostPath@ha
/* 80074E38 00071C38  38 A3 4E 98 */	addi r5, r3, gHostPath@l
/* 80074E3C 00071C3C  7C 85 FA 14 */	add r4, r5, r31
/* 80074E40 00071C40  88 04 FF FF */	lbz r0, -1(r4)
/* 80074E44 00071C44  7C 00 07 74 */	extsb r0, r0
/* 80074E48 00071C48  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80074E4C 00071C4C  41 82 00 1C */	beq lbl_80074E68
/* 80074E50 00071C50  2C 00 00 5C */	cmpwi r0, 0x5c
/* 80074E54 00071C54  41 82 00 14 */	beq lbl_80074E68
/* 80074E58 00071C58  38 60 00 2F */	li r3, 0x2f
/* 80074E5C 00071C5C  38 00 00 00 */	li r0, 0
/* 80074E60 00071C60  7C 65 F9 AE */	stbx r3, r5, r31
/* 80074E64 00071C64  98 04 00 01 */	stb r0, 1(r4)
lbl_80074E68:
/* 80074E68 00071C68  BB C1 00 08 */	lmw r30, 8(r1)
/* 80074E6C 00071C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074E70 00071C70  7C 08 03 A6 */	mtlr r0
/* 80074E74 00071C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80074E78 00071C78  4E 80 00 20 */	blr 

.global iFileFind__FPCciP9tag_xFile
iFileFind__FPCciP9tag_xFile:
/* 80074E7C 00071C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074E80 00071C80  7C 08 02 A6 */	mflr r0
/* 80074E84 00071C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80074E88 00071C88  4B FF F9 5D */	bl iFileOpen__FPCciP9tag_xFile
/* 80074E8C 00071C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074E90 00071C90  7C 08 03 A6 */	mtlr r0
/* 80074E94 00071C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80074E98 00071C98  4E 80 00 20 */	blr 

.global iFileGetInfo__FP9tag_xFilePUiPUi
iFileGetInfo__FP9tag_xFilePUiPUi:
/* 80074E9C 00071C9C  28 04 00 00 */	cmplwi r4, 0
/* 80074EA0 00071CA0  41 82 00 0C */	beq lbl_80074EAC
/* 80074EA4 00071CA4  80 03 00 D8 */	lwz r0, 0xd8(r3)
/* 80074EA8 00071CA8  90 04 00 00 */	stw r0, 0(r4)
lbl_80074EAC:
/* 80074EAC 00071CAC  28 05 00 00 */	cmplwi r5, 0
/* 80074EB0 00071CB0  4D 82 00 20 */	beqlr 
/* 80074EB4 00071CB4  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 80074EB8 00071CB8  90 05 00 00 */	stw r0, 0(r5)
/* 80074EBC 00071CBC  4E 80 00 20 */	blr 

.global iFileGetSectorSize__F14xFileDriveType
iFileGetSectorSize__F14xFileDriveType:
/* 80074EC0 00071CC0  2C 03 00 00 */	cmpwi r3, 0
/* 80074EC4 00071CC4  41 82 00 08 */	beq lbl_80074ECC
/* 80074EC8 00071CC8  48 00 00 0C */	b lbl_80074ED4
lbl_80074ECC:
/* 80074ECC 00071CCC  38 60 00 20 */	li r3, 0x20
/* 80074ED0 00071CD0  4E 80 00 20 */	blr 
lbl_80074ED4:
/* 80074ED4 00071CD4  38 60 00 00 */	li r3, 0
/* 80074ED8 00071CD8  4E 80 00 20 */	blr 
