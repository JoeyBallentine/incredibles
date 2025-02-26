.include "macros.inc"

.section .bss

.global gOccludeCalc
gOccludeCalc:
	.skip 0x320

.section .sbss

.global vols
vols:
	.skip 0x4
.global nvols
nvols:
	.skip 0x4
.global gOccludeCount
gOccludeCount:
	.skip 0x4
.global gOccludeList
gOccludeList:
	.skip 0x28
.global gOccludeCalcCount
gOccludeCalcCount:
	.skip 0x4

.section .sdata2

.global $$21056_3
$$21056_3:
	.incbin "baserom.dol", 0x3322C8, 0x8

.section .text

.global zVolumeInit__FP7zVolumeP12xVolumeAsset
zVolumeInit__FP7zVolumeP12xVolumeAsset:
/* 801701B4 0016CFB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801701B8 0016CFB8  7C 08 02 A6 */	mflr r0
/* 801701BC 0016CFBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801701C0 0016CFC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801701C4 0016CFC4  7C 7F 1B 78 */	mr r31, r3
/* 801701C8 0016CFC8  4B F0 15 9D */	bl Init__7xVolumeFP12xVolumeAsset
/* 801701CC 0016CFCC  3C 60 80 17 */	lis r3, zVolumeEventCB__FP5xBaseP5xBaseUiPCfP5xBaseUi@ha
/* 801701D0 0016CFD0  38 03 06 44 */	addi r0, r3, zVolumeEventCB__FP5xBaseP5xBaseUiPCfP5xBaseUi@l
/* 801701D4 0016CFD4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801701D8 0016CFD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801701DC 0016CFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801701E0 0016CFE0  7C 08 03 A6 */	mtlr r0
/* 801701E4 0016CFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 801701E8 0016CFE8  4E 80 00 20 */	blr 

.global zVolumeInit__Fv
zVolumeInit__Fv:
/* 801701EC 0016CFEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801701F0 0016CFF0  7C 08 02 A6 */	mflr r0
/* 801701F4 0016CFF4  3C 60 56 4F */	lis r3, 0x564F4C55@ha
/* 801701F8 0016CFF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801701FC 0016CFFC  38 63 4C 55 */	addi r3, r3, 0x564F4C55@l
/* 80170200 0016D000  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 80170204 0016D004  4B EF C1 49 */	bl xSTAssetCountByType__FUi
/* 80170208 0016D008  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8017020C 0016D00C  B0 6D D2 64 */	sth r3, nvols-_SDA_BASE_(r13)
/* 80170210 0016D010  41 82 00 64 */	beq lbl_80170274
/* 80170214 0016D014  1C 80 00 14 */	mulli r4, r0, 0x14
/* 80170218 0016D018  80 6D BA E4 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 8017021C 0016D01C  38 A0 00 00 */	li r5, 0
/* 80170220 0016D020  4B ED 99 41 */	bl xMemAlloc__FUiUii
/* 80170224 0016D024  90 6D D2 60 */	stw r3, vols-_SDA_BASE_(r13)
/* 80170228 0016D028  3B C0 00 00 */	li r30, 0
/* 8017022C 0016D02C  3F E0 56 4F */	lis r31, 0x564f
/* 80170230 0016D030  48 00 00 30 */	b lbl_80170260
lbl_80170234:
/* 80170234 0016D034  38 7F 4C 55 */	addi r3, r31, 0x4c55
/* 80170238 0016D038  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 8017023C 0016D03C  38 A1 00 08 */	addi r5, r1, 8
/* 80170240 0016D040  4B EF C1 7D */	bl xSTFindAssetByType__FUiiPUi
/* 80170244 0016D044  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80170248 0016D048  80 AD D2 60 */	lwz r5, vols-_SDA_BASE_(r13)
/* 8017024C 0016D04C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80170250 0016D050  7C 64 1B 78 */	mr r4, r3
/* 80170254 0016D054  7C 65 02 14 */	add r3, r5, r0
/* 80170258 0016D058  4B FF FF 5D */	bl zVolumeInit__FP7zVolumeP12xVolumeAsset
/* 8017025C 0016D05C  3B DE 00 01 */	addi r30, r30, 1
lbl_80170260:
/* 80170260 0016D060  A0 0D D2 64 */	lhz r0, nvols-_SDA_BASE_(r13)
/* 80170264 0016D064  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 80170268 0016D068  7C 03 00 40 */	cmplw r3, r0
/* 8017026C 0016D06C  41 80 FF C8 */	blt lbl_80170234
/* 80170270 0016D070  48 00 00 0C */	b lbl_8017027C
lbl_80170274:
/* 80170274 0016D074  38 00 00 00 */	li r0, 0
/* 80170278 0016D078  90 0D D2 60 */	stw r0, vols-_SDA_BASE_(r13)
lbl_8017027C:
/* 8017027C 0016D07C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 80170280 0016D080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80170284 0016D084  7C 08 03 A6 */	mtlr r0
/* 80170288 0016D088  38 21 00 20 */	addi r1, r1, 0x20
/* 8017028C 0016D08C  4E 80 00 20 */	blr 

.global zVolumeSetup__Fv
zVolumeSetup__Fv:
/* 80170290 0016D090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80170294 0016D094  7C 08 02 A6 */	mflr r0
/* 80170298 0016D098  90 01 00 14 */	stw r0, 0x14(r1)
/* 8017029C 0016D09C  BF C1 00 08 */	stmw r30, 8(r1)
/* 801702A0 0016D0A0  3B C0 00 00 */	li r30, 0
/* 801702A4 0016D0A4  3B E0 00 00 */	li r31, 0
/* 801702A8 0016D0A8  48 00 00 20 */	b lbl_801702C8
lbl_801702AC:
/* 801702AC 0016D0AC  80 6D D2 60 */	lwz r3, vols-_SDA_BASE_(r13)
/* 801702B0 0016D0B0  38 1F 00 10 */	addi r0, r31, 0x10
/* 801702B4 0016D0B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 801702B8 0016D0B8  38 63 00 0C */	addi r3, r3, 0xc
/* 801702BC 0016D0BC  4B EE 46 15 */	bl xQuickCullForEverything__FP7xQCData
/* 801702C0 0016D0C0  3B DE 00 01 */	addi r30, r30, 1
/* 801702C4 0016D0C4  3B FF 00 14 */	addi r31, r31, 0x14
lbl_801702C8:
/* 801702C8 0016D0C8  A0 0D D2 64 */	lhz r0, nvols-_SDA_BASE_(r13)
/* 801702CC 0016D0CC  7C 1E 00 40 */	cmplw r30, r0
/* 801702D0 0016D0D0  41 80 FF DC */	blt lbl_801702AC
/* 801702D4 0016D0D4  BB C1 00 08 */	lmw r30, 8(r1)
/* 801702D8 0016D0D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801702DC 0016D0DC  7C 08 03 A6 */	mtlr r0
/* 801702E0 0016D0E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801702E4 0016D0E4  4E 80 00 20 */	blr 

.global zVolumeGetVolume__FUs
zVolumeGetVolume__FUs:
/* 801702E8 0016D0E8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801702EC 0016D0EC  80 6D D2 60 */	lwz r3, vols-_SDA_BASE_(r13)
/* 801702F0 0016D0F0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 801702F4 0016D0F4  7C 63 02 14 */	add r3, r3, r0
/* 801702F8 0016D0F8  4E 80 00 20 */	blr 

.global zVolume_OccludePrecalc__FP5xVec3
zVolume_OccludePrecalc__FP5xVec3:
/* 801702FC 0016D0FC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80170300 0016D100  7C 08 02 A6 */	mflr r0
/* 80170304 0016D104  90 01 01 04 */	stw r0, 0x104(r1)
/* 80170308 0016D108  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8017030C 0016D10C  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 80170310 0016D110  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 80170314 0016D114  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, qr0
/* 80170318 0016D118  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 8017031C 0016D11C  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, qr0
/* 80170320 0016D120  BE 81 00 A0 */	stmw r20, 0xa0(r1)
/* 80170324 0016D124  38 00 00 00 */	li r0, 0
/* 80170328 0016D128  3C 80 80 39 */	lis r4, gOccludeCalc@ha
/* 8017032C 0016D12C  90 0D D2 94 */	stw r0, gOccludeCalcCount-_SDA_BASE_(r13)
/* 80170330 0016D130  7C 79 1B 78 */	mr r25, r3
/* 80170334 0016D134  C3 E2 BB E8 */	lfs f31, $$21056_3-_SDA2_BASE_(r2)
/* 80170338 0016D138  3B C1 00 6C */	addi r30, r1, 0x6c
/* 8017033C 0016D13C  3B A1 00 78 */	addi r29, r1, 0x78
/* 80170340 0016D140  3B 81 00 90 */	addi r28, r1, 0x90
/* 80170344 0016D144  3B E4 36 F0 */	addi r31, r4, gOccludeCalc@l
/* 80170348 0016D148  3B 60 00 00 */	li r27, 0
/* 8017034C 0016D14C  3B 00 00 00 */	li r24, 0
/* 80170350 0016D150  48 00 02 BC */	b lbl_8017060C
lbl_80170354:
/* 80170354 0016D154  38 6D D2 6C */	addi r3, r13, gOccludeList-_SDA_BASE_
/* 80170358 0016D158  7C 63 C0 2E */	lwzx r3, r3, r24
/* 8017035C 0016D15C  82 83 00 10 */	lwz r20, 0x10(r3)
/* 80170360 0016D160  C0 34 00 58 */	lfs f1, 0x58(r20)
/* 80170364 0016D164  4B F0 64 C9 */	bl icos__Ff
/* 80170368 0016D168  FF C0 08 90 */	fmr f30, f1
/* 8017036C 0016D16C  C0 34 00 58 */	lfs f1, 0x58(r20)
/* 80170370 0016D170  4B F0 64 79 */	bl isin__Ff
/* 80170374 0016D174  C0 F4 00 5C */	lfs f7, 0x5c(r20)
/* 80170378 0016D178  7F 83 E3 78 */	mr r3, r28
/* 8017037C 0016D17C  C0 14 00 48 */	lfs f0, 0x48(r20)
/* 80170380 0016D180  38 81 00 60 */	addi r4, r1, 0x60
/* 80170384 0016D184  80 0D D2 94 */	lwz r0, gOccludeCalcCount-_SDA_BASE_(r13)
/* 80170388 0016D188  EC 00 38 28 */	fsubs f0, f0, f7
/* 8017038C 0016D18C  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80170390 0016D190  EC DE 38 3A */	fmadds f6, f30, f0, f7
/* 80170394 0016D194  7F 5F 02 14 */	add r26, r31, r0
/* 80170398 0016D198  D0 C1 00 60 */	stfs f6, 0x60(r1)
/* 8017039C 0016D19C  C0 B4 00 4C */	lfs f5, 0x4c(r20)
/* 801703A0 0016D1A0  D0 A1 00 64 */	stfs f5, 0x64(r1)
/* 801703A4 0016D1A4  C0 94 00 50 */	lfs f4, 0x50(r20)
/* 801703A8 0016D1A8  EC 61 20 3A */	fmadds f3, f1, f0, f4
/* 801703AC 0016D1AC  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 801703B0 0016D1B0  C0 14 00 3C */	lfs f0, 0x3c(r20)
/* 801703B4 0016D1B4  EC 40 38 28 */	fsubs f2, f0, f7
/* 801703B8 0016D1B8  D0 A1 00 70 */	stfs f5, 0x70(r1)
/* 801703BC 0016D1BC  EC 1E 38 BA */	fmadds f0, f30, f2, f7
/* 801703C0 0016D1C0  EC 21 20 BA */	fmadds f1, f1, f2, f4
/* 801703C4 0016D1C4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801703C8 0016D1C8  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 801703CC 0016D1CC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801703D0 0016D1D0  C0 14 00 40 */	lfs f0, 0x40(r20)
/* 801703D4 0016D1D4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801703D8 0016D1D8  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 801703DC 0016D1DC  D0 C1 00 84 */	stfs f6, 0x84(r1)
/* 801703E0 0016D1E0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801703E4 0016D1E4  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 801703E8 0016D1E8  4B E9 AC C1 */	bl __as__5xVec3FRC5xVec3
/* 801703EC 0016D1EC  7F C4 F3 78 */	mr r4, r30
/* 801703F0 0016D1F0  38 61 00 14 */	addi r3, r1, 0x14
/* 801703F4 0016D1F4  38 A1 00 60 */	addi r5, r1, 0x60
/* 801703F8 0016D1F8  4B E9 74 B5 */	bl xVec3Sub__FP5xVec3PC5xVec3PC5xVec3
/* 801703FC 0016D1FC  7F A4 EB 78 */	mr r4, r29
/* 80170400 0016D200  38 61 00 08 */	addi r3, r1, 8
/* 80170404 0016D204  38 A1 00 60 */	addi r5, r1, 0x60
/* 80170408 0016D208  4B E9 74 A5 */	bl xVec3Sub__FP5xVec3PC5xVec3PC5xVec3
/* 8017040C 0016D20C  7F 43 D3 78 */	mr r3, r26
/* 80170410 0016D210  38 81 00 14 */	addi r4, r1, 0x14
/* 80170414 0016D214  38 A1 00 08 */	addi r5, r1, 8
/* 80170418 0016D218  4B EA 77 05 */	bl xVec3Cross__FP5xVec3PC5xVec3PC5xVec3
/* 8017041C 0016D21C  7F 43 D3 78 */	mr r3, r26
/* 80170420 0016D220  7F 44 D3 78 */	mr r4, r26
/* 80170424 0016D224  4B F0 11 FD */	bl xVec3Normalize__FP5xVec3PC5xVec3
/* 80170428 0016D228  7F 43 D3 78 */	mr r3, r26
/* 8017042C 0016D22C  38 81 00 60 */	addi r4, r1, 0x60
/* 80170430 0016D230  4B F0 13 15 */	bl xVec3Dot__FPC5xVec3PC5xVec3
/* 80170434 0016D234  FF C0 08 90 */	fmr f30, f1
/* 80170438 0016D238  7F 43 D3 78 */	mr r3, r26
/* 8017043C 0016D23C  7F 24 CB 78 */	mr r4, r25
/* 80170440 0016D240  4B F0 13 05 */	bl xVec3Dot__FPC5xVec3PC5xVec3
/* 80170444 0016D244  FF A0 08 90 */	fmr f29, f1
/* 80170448 0016D248  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 8017044C 0016D24C  40 81 00 18 */	ble lbl_80170464
/* 80170450 0016D250  7F 43 D3 78 */	mr r3, r26
/* 80170454 0016D254  7F 44 D3 78 */	mr r4, r26
/* 80170458 0016D258  4B E9 9E C1 */	bl xVec3Inv__FP5xVec3PC5xVec3
/* 8017045C 0016D25C  FF A0 E8 50 */	fneg f29, f29
/* 80170460 0016D260  FF C0 F0 50 */	fneg f30, f30
lbl_80170464:
/* 80170464 0016D264  EC 1D F0 28 */	fsubs f0, f29, f30
/* 80170468 0016D268  FC 00 02 10 */	fabs f0, f0
/* 8017046C 0016D26C  FC 00 00 18 */	frsp f0, f0
/* 80170470 0016D270  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80170474 0016D274  41 80 01 90 */	blt lbl_80170604
/* 80170478 0016D278  D3 DA 00 0C */	stfs f30, 0xc(r26)
/* 8017047C 0016D27C  3A 80 00 00 */	li r20, 0
/* 80170480 0016D280  3A C0 00 00 */	li r22, 0
/* 80170484 0016D284  3A E0 00 00 */	li r23, 0
lbl_80170488:
/* 80170488 0016D288  38 81 00 60 */	addi r4, r1, 0x60
/* 8017048C 0016D28C  7F 25 CB 78 */	mr r5, r25
/* 80170490 0016D290  38 61 00 14 */	addi r3, r1, 0x14
/* 80170494 0016D294  7C 84 BA 14 */	add r4, r4, r23
/* 80170498 0016D298  4B E9 74 15 */	bl xVec3Sub__FP5xVec3PC5xVec3PC5xVec3
/* 8017049C 0016D29C  38 14 00 01 */	addi r0, r20, 1
/* 801704A0 0016D2A0  38 81 00 60 */	addi r4, r1, 0x60
/* 801704A4 0016D2A4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801704A8 0016D2A8  7F 25 CB 78 */	mr r5, r25
/* 801704AC 0016D2AC  38 61 00 08 */	addi r3, r1, 8
/* 801704B0 0016D2B0  7C 84 02 14 */	add r4, r4, r0
/* 801704B4 0016D2B4  4B E9 73 F9 */	bl xVec3Sub__FP5xVec3PC5xVec3PC5xVec3
/* 801704B8 0016D2B8  3A A1 00 20 */	addi r21, r1, 0x20
/* 801704BC 0016D2BC  38 81 00 14 */	addi r4, r1, 0x14
/* 801704C0 0016D2C0  7E B5 B2 14 */	add r21, r21, r22
/* 801704C4 0016D2C4  38 A1 00 08 */	addi r5, r1, 8
/* 801704C8 0016D2C8  7E A3 AB 78 */	mr r3, r21
/* 801704CC 0016D2CC  4B EA 76 51 */	bl xVec3Cross__FP5xVec3PC5xVec3PC5xVec3
/* 801704D0 0016D2D0  7E A3 AB 78 */	mr r3, r21
/* 801704D4 0016D2D4  7E A4 AB 78 */	mr r4, r21
/* 801704D8 0016D2D8  4B F0 11 49 */	bl xVec3Normalize__FP5xVec3PC5xVec3
/* 801704DC 0016D2DC  3A 94 00 01 */	addi r20, r20, 1
/* 801704E0 0016D2E0  3A F7 00 0C */	addi r23, r23, 0xc
/* 801704E4 0016D2E4  2C 14 00 04 */	cmpwi r20, 4
/* 801704E8 0016D2E8  3A D6 00 10 */	addi r22, r22, 0x10
/* 801704EC 0016D2EC  41 80 FF 9C */	blt lbl_80170488
/* 801704F0 0016D2F0  38 61 00 20 */	addi r3, r1, 0x20
/* 801704F4 0016D2F4  38 81 00 60 */	addi r4, r1, 0x60
/* 801704F8 0016D2F8  4B F0 12 4D */	bl xVec3Dot__FPC5xVec3PC5xVec3
/* 801704FC 0016D2FC  FF C0 08 90 */	fmr f30, f1
/* 80170500 0016D300  7F A4 EB 78 */	mr r4, r29
/* 80170504 0016D304  38 61 00 20 */	addi r3, r1, 0x20
/* 80170508 0016D308  4B F0 12 3D */	bl xVec3Dot__FPC5xVec3PC5xVec3
/* 8017050C 0016D30C  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 80170510 0016D310  40 81 00 2C */	ble lbl_8017053C
/* 80170514 0016D314  3A 80 00 00 */	li r20, 0
/* 80170518 0016D318  3A C0 00 00 */	li r22, 0
lbl_8017051C:
/* 8017051C 0016D31C  38 61 00 20 */	addi r3, r1, 0x20
/* 80170520 0016D320  7C 63 B2 14 */	add r3, r3, r22
/* 80170524 0016D324  7C 64 1B 78 */	mr r4, r3
/* 80170528 0016D328  4B E9 9D F1 */	bl xVec3Inv__FP5xVec3PC5xVec3
/* 8017052C 0016D32C  3A 94 00 01 */	addi r20, r20, 1
/* 80170530 0016D330  3A D6 00 10 */	addi r22, r22, 0x10
/* 80170534 0016D334  2C 14 00 04 */	cmpwi r20, 4
/* 80170538 0016D338  41 80 FF E4 */	blt lbl_8017051C
lbl_8017053C:
/* 8017053C 0016D33C  3A 80 00 00 */	li r20, 0
/* 80170540 0016D340  3A E0 00 00 */	li r23, 0
/* 80170544 0016D344  3A C0 00 00 */	li r22, 0
lbl_80170548:
/* 80170548 0016D348  3A A1 00 20 */	addi r21, r1, 0x20
/* 8017054C 0016D34C  38 81 00 60 */	addi r4, r1, 0x60
/* 80170550 0016D350  7E B5 B2 14 */	add r21, r21, r22
/* 80170554 0016D354  7E A3 AB 78 */	mr r3, r21
/* 80170558 0016D358  7C 84 BA 14 */	add r4, r4, r23
/* 8017055C 0016D35C  4B F0 11 E9 */	bl xVec3Dot__FPC5xVec3PC5xVec3
/* 80170560 0016D360  3A 94 00 01 */	addi r20, r20, 1
/* 80170564 0016D364  D0 35 00 0C */	stfs f1, 0xc(r21)
/* 80170568 0016D368  2C 14 00 04 */	cmpwi r20, 4
/* 8017056C 0016D36C  3A F7 00 0C */	addi r23, r23, 0xc
/* 80170570 0016D370  3A D6 00 10 */	addi r22, r22, 0x10
/* 80170574 0016D374  41 80 FF D4 */	blt lbl_80170548
/* 80170578 0016D378  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8017057C 0016D37C  80 6D D2 94 */	lwz r3, gOccludeCalcCount-_SDA_BASE_(r13)
/* 80170580 0016D380  D0 1A 00 10 */	stfs f0, 0x10(r26)
/* 80170584 0016D384  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80170588 0016D388  38 03 00 01 */	addi r0, r3, 1
/* 8017058C 0016D38C  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80170590 0016D390  D0 1A 00 14 */	stfs f0, 0x14(r26)
/* 80170594 0016D394  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80170598 0016D398  D0 3A 00 18 */	stfs f1, 0x18(r26)
/* 8017059C 0016D39C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801705A0 0016D3A0  D0 1A 00 1C */	stfs f0, 0x1c(r26)
/* 801705A4 0016D3A4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801705A8 0016D3A8  D0 3A 00 20 */	stfs f1, 0x20(r26)
/* 801705AC 0016D3AC  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 801705B0 0016D3B0  D0 1A 00 24 */	stfs f0, 0x24(r26)
/* 801705B4 0016D3B4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 801705B8 0016D3B8  D0 3A 00 28 */	stfs f1, 0x28(r26)
/* 801705BC 0016D3BC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801705C0 0016D3C0  D0 1A 00 2C */	stfs f0, 0x2c(r26)
/* 801705C4 0016D3C4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801705C8 0016D3C8  D0 3A 00 30 */	stfs f1, 0x30(r26)
/* 801705CC 0016D3CC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 801705D0 0016D3D0  D0 1A 00 34 */	stfs f0, 0x34(r26)
/* 801705D4 0016D3D4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 801705D8 0016D3D8  D0 3A 00 38 */	stfs f1, 0x38(r26)
/* 801705DC 0016D3DC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801705E0 0016D3E0  D0 1A 00 3C */	stfs f0, 0x3c(r26)
/* 801705E4 0016D3E4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801705E8 0016D3E8  D0 3A 00 40 */	stfs f1, 0x40(r26)
/* 801705EC 0016D3EC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 801705F0 0016D3F0  D0 1A 00 44 */	stfs f0, 0x44(r26)
/* 801705F4 0016D3F4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801705F8 0016D3F8  D0 3A 00 48 */	stfs f1, 0x48(r26)
/* 801705FC 0016D3FC  D0 1A 00 4C */	stfs f0, 0x4c(r26)
/* 80170600 0016D400  90 0D D2 94 */	stw r0, gOccludeCalcCount-_SDA_BASE_(r13)
lbl_80170604:
/* 80170604 0016D404  3B 7B 00 01 */	addi r27, r27, 1
/* 80170608 0016D408  3B 18 00 04 */	addi r24, r24, 4
lbl_8017060C:
/* 8017060C 0016D40C  80 0D D2 68 */	lwz r0, gOccludeCount-_SDA_BASE_(r13)
/* 80170610 0016D410  7C 1B 00 00 */	cmpw r27, r0
/* 80170614 0016D414  41 80 FD 40 */	blt lbl_80170354
/* 80170618 0016D418  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 8017061C 0016D41C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80170620 0016D420  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, qr0
/* 80170624 0016D424  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 80170628 0016D428  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, qr0
/* 8017062C 0016D42C  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 80170630 0016D430  BA 81 00 A0 */	lmw r20, 0xa0(r1)
/* 80170634 0016D434  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80170638 0016D438  7C 08 03 A6 */	mtlr r0
/* 8017063C 0016D43C  38 21 01 00 */	addi r1, r1, 0x100
/* 80170640 0016D440  4E 80 00 20 */	blr 

.global zVolumeEventCB__FP5xBaseP5xBaseUiPCfP5xBaseUi
zVolumeEventCB__FP5xBaseP5xBaseUiPCfP5xBaseUi:
/* 80170644 0016D444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80170648 0016D448  7C 08 02 A6 */	mflr r0
/* 8017064C 0016D44C  2C 05 01 08 */	cmpwi r5, 0x108
/* 80170650 0016D450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80170654 0016D454  41 82 00 2C */	beq lbl_80170680
/* 80170658 0016D458  40 80 00 10 */	bge lbl_80170668
/* 8017065C 0016D45C  2C 05 00 0A */	cmpwi r5, 0xa
/* 80170660 0016D460  41 82 00 14 */	beq lbl_80170674
/* 80170664 0016D464  48 00 00 BC */	b lbl_80170720
lbl_80170668:
/* 80170668 0016D468  2C 05 01 0A */	cmpwi r5, 0x10a
/* 8017066C 0016D46C  40 80 00 B4 */	bge lbl_80170720
/* 80170670 0016D470  48 00 00 60 */	b lbl_801706D0
lbl_80170674:
/* 80170674 0016D474  7C 83 23 78 */	mr r3, r4
/* 80170678 0016D478  4B F0 11 45 */	bl Reset__7xVolumeFv
/* 8017067C 0016D47C  48 00 00 A4 */	b lbl_80170720
lbl_80170680:
/* 80170680 0016D480  80 CD D2 68 */	lwz r6, gOccludeCount-_SDA_BASE_(r13)
/* 80170684 0016D484  2C 06 00 0A */	cmpwi r6, 0xa
/* 80170688 0016D488  41 82 00 98 */	beq lbl_80170720
/* 8017068C 0016D48C  38 60 00 00 */	li r3, 0
/* 80170690 0016D490  38 AD D2 6C */	addi r5, r13, gOccludeList-_SDA_BASE_
/* 80170694 0016D494  7C C9 03 A6 */	mtctr r6
/* 80170698 0016D498  2C 06 00 00 */	cmpwi r6, 0
/* 8017069C 0016D49C  40 81 00 18 */	ble lbl_801706B4
lbl_801706A0:
/* 801706A0 0016D4A0  7C 05 18 2E */	lwzx r0, r5, r3
/* 801706A4 0016D4A4  7C 00 20 40 */	cmplw r0, r4
/* 801706A8 0016D4A8  41 82 00 78 */	beq lbl_80170720
/* 801706AC 0016D4AC  38 63 00 04 */	addi r3, r3, 4
/* 801706B0 0016D4B0  42 00 FF F0 */	bdnz lbl_801706A0
lbl_801706B4:
/* 801706B4 0016D4B4  80 6D D2 68 */	lwz r3, gOccludeCount-_SDA_BASE_(r13)
/* 801706B8 0016D4B8  54 C6 10 3A */	slwi r6, r6, 2
/* 801706BC 0016D4BC  38 AD D2 6C */	addi r5, r13, gOccludeList-_SDA_BASE_
/* 801706C0 0016D4C0  38 03 00 01 */	addi r0, r3, 1
/* 801706C4 0016D4C4  7C 85 31 2E */	stwx r4, r5, r6
/* 801706C8 0016D4C8  90 0D D2 68 */	stw r0, gOccludeCount-_SDA_BASE_(r13)
/* 801706CC 0016D4CC  48 00 00 54 */	b lbl_80170720
lbl_801706D0:
/* 801706D0 0016D4D0  80 CD D2 68 */	lwz r6, gOccludeCount-_SDA_BASE_(r13)
/* 801706D4 0016D4D4  38 60 00 00 */	li r3, 0
/* 801706D8 0016D4D8  38 AD D2 6C */	addi r5, r13, gOccludeList-_SDA_BASE_
/* 801706DC 0016D4DC  7C C9 03 A6 */	mtctr r6
/* 801706E0 0016D4E0  2C 06 00 00 */	cmpwi r6, 0
/* 801706E4 0016D4E4  40 81 00 3C */	ble lbl_80170720
lbl_801706E8:
/* 801706E8 0016D4E8  7C 05 18 2E */	lwzx r0, r5, r3
/* 801706EC 0016D4EC  7C 00 20 40 */	cmplw r0, r4
/* 801706F0 0016D4F0  40 82 00 28 */	bne lbl_80170718
/* 801706F4 0016D4F4  54 C6 10 3A */	slwi r6, r6, 2
/* 801706F8 0016D4F8  38 AD D2 6C */	addi r5, r13, gOccludeList-_SDA_BASE_
/* 801706FC 0016D4FC  7C 85 32 14 */	add r4, r5, r6
/* 80170700 0016D500  80 6D D2 68 */	lwz r3, gOccludeCount-_SDA_BASE_(r13)
/* 80170704 0016D504  80 84 FF FC */	lwz r4, -4(r4)
/* 80170708 0016D508  38 03 FF FF */	addi r0, r3, -1
/* 8017070C 0016D50C  7C 85 31 2E */	stwx r4, r5, r6
/* 80170710 0016D510  90 0D D2 68 */	stw r0, gOccludeCount-_SDA_BASE_(r13)
/* 80170714 0016D514  48 00 00 0C */	b lbl_80170720
lbl_80170718:
/* 80170718 0016D518  38 63 00 04 */	addi r3, r3, 4
/* 8017071C 0016D51C  42 00 FF CC */	bdnz lbl_801706E8
lbl_80170720:
/* 80170720 0016D520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80170724 0016D524  7C 08 03 A6 */	mtlr r0
/* 80170728 0016D528  38 21 00 10 */	addi r1, r1, 0x10
/* 8017072C 0016D52C  4E 80 00 20 */	blr 
