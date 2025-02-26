.include "macros.inc"

.section .bss

.global sCollisionGeomTable
sCollisionGeomTable:
	.skip 0xA0

.section .rodata

.global $$2stringBase0_38
$$2stringBase0_38:
	.incbin "baserom.dol", 0x2D7440, 0x8

.section .sbss

.global sCollisionGeomTableCount
sCollisionGeomTableCount:
	.skip 0x8

.section .text

.global zCollGeom_EntSetup__FP4xEnt
zCollGeom_EntSetup__FP4xEnt:
/* 8008E22C 0008B02C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8008E230 0008B030  7C 08 02 A6 */	mflr r0
/* 8008E234 0008B034  90 01 00 44 */	stw r0, 0x44(r1)
/* 8008E238 0008B038  38 00 00 00 */	li r0, 0
/* 8008E23C 0008B03C  BE A1 00 14 */	stmw r21, 0x14(r1)
/* 8008E240 0008B040  7C 79 1B 78 */	mr r25, r3
/* 8008E244 0008B044  88 63 00 04 */	lbz r3, 4(r3)
/* 8008E248 0008B048  90 19 00 2C */	stw r0, 0x2c(r25)
/* 8008E24C 0008B04C  20 63 00 0B */	subfic r3, r3, 0xb
/* 8008E250 0008B050  7C 63 00 34 */	cntlzw r3, r3
/* 8008E254 0008B054  90 19 00 30 */	stw r0, 0x30(r25)
/* 8008E258 0008B058  54 7B D9 7E */	srwi r27, r3, 5
/* 8008E25C 0008B05C  80 19 00 28 */	lwz r0, 0x28(r25)
/* 8008E260 0008B060  28 00 00 00 */	cmplwi r0, 0
/* 8008E264 0008B064  41 82 01 58 */	beq lbl_8008E3BC
/* 8008E268 0008B068  3C 60 80 37 */	lis r3, sCollisionGeomTable@ha
/* 8008E26C 0008B06C  3B 80 00 00 */	li r28, 0
/* 8008E270 0008B070  3B E3 58 A8 */	addi r31, r3, sCollisionGeomTable@l
/* 8008E274 0008B074  3B 00 00 00 */	li r24, 0
/* 8008E278 0008B078  48 00 01 38 */	b lbl_8008E3B0
lbl_8008E27C:
/* 8008E27C 0008B07C  7F DF C2 14 */	add r30, r31, r24
/* 8008E280 0008B080  3B A0 00 00 */	li r29, 0
/* 8008E284 0008B084  83 5E 00 04 */	lwz r26, 4(r30)
/* 8008E288 0008B088  3A E0 00 00 */	li r23, 0
/* 8008E28C 0008B08C  48 00 01 10 */	b lbl_8008E39C
lbl_8008E290:
/* 8008E290 0008B090  80 79 00 28 */	lwz r3, 0x28(r25)
/* 8008E294 0008B094  7C BA BA 14 */	add r5, r26, r23
/* 8008E298 0008B098  80 85 00 00 */	lwz r4, 0(r5)
/* 8008E29C 0008B09C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8008E2A0 0008B0A0  7C 04 00 40 */	cmplw r4, r0
/* 8008E2A4 0008B0A4  40 82 00 F0 */	bne lbl_8008E394
/* 8008E2A8 0008B0A8  82 C5 00 04 */	lwz r22, 4(r5)
/* 8008E2AC 0008B0AC  28 16 00 00 */	cmplwi r22, 0
/* 8008E2B0 0008B0B0  41 82 00 6C */	beq lbl_8008E31C
/* 8008E2B4 0008B0B4  7E C3 B3 78 */	mr r3, r22
/* 8008E2B8 0008B0B8  7F 24 CB 78 */	mr r4, r25
/* 8008E2BC 0008B0BC  38 A0 20 00 */	li r5, 0x2000
/* 8008E2C0 0008B0C0  38 C0 00 00 */	li r6, 0
/* 8008E2C4 0008B0C4  38 E0 00 00 */	li r7, 0
/* 8008E2C8 0008B0C8  4B F9 81 A1 */	bl xModelInstanceAlloc__FP8RpAtomicPvUsUcPUc
/* 8008E2CC 0008B0CC  7C 75 1B 78 */	mr r21, r3
/* 8008E2D0 0008B0D0  92 B9 00 2C */	stw r21, 0x2c(r25)
/* 8008E2D4 0008B0D4  80 99 00 28 */	lwz r4, 0x28(r25)
/* 8008E2D8 0008B0D8  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 8008E2DC 0008B0DC  80 04 00 54 */	lwz r0, 0x54(r4)
/* 8008E2E0 0008B0E0  90 03 00 54 */	stw r0, 0x54(r3)
/* 8008E2E4 0008B0E4  48 00 00 24 */	b lbl_8008E308
lbl_8008E2E8:
/* 8008E2E8 0008B0E8  7E C3 B3 78 */	mr r3, r22
/* 8008E2EC 0008B0EC  7F 24 CB 78 */	mr r4, r25
/* 8008E2F0 0008B0F0  38 A0 20 00 */	li r5, 0x2000
/* 8008E2F4 0008B0F4  38 C0 00 00 */	li r6, 0
/* 8008E2F8 0008B0F8  38 E0 00 00 */	li r7, 0
/* 8008E2FC 0008B0FC  4B F9 81 6D */	bl xModelInstanceAlloc__FP8RpAtomicPvUsUcPUc
/* 8008E300 0008B100  7E A4 AB 78 */	mr r4, r21
/* 8008E304 0008B104  4B FB C3 D1 */	bl xModelInstanceAttach__FP14xModelInstanceP14xModelInstance
lbl_8008E308:
/* 8008E308 0008B108  7E C3 B3 78 */	mr r3, r22
/* 8008E30C 0008B10C  4B FE B3 D5 */	bl iModelFile_RWMultiAtomic__FP8RpAtomic
/* 8008E310 0008B110  7C 76 1B 79 */	or. r22, r3, r3
/* 8008E314 0008B114  40 82 FF D4 */	bne lbl_8008E2E8
/* 8008E318 0008B118  48 00 00 7C */	b lbl_8008E394
lbl_8008E31C:
/* 8008E31C 0008B11C  82 C5 00 08 */	lwz r22, 8(r5)
/* 8008E320 0008B120  28 16 00 00 */	cmplwi r22, 0
/* 8008E324 0008B124  41 82 00 6C */	beq lbl_8008E390
/* 8008E328 0008B128  7E C3 B3 78 */	mr r3, r22
/* 8008E32C 0008B12C  7F 24 CB 78 */	mr r4, r25
/* 8008E330 0008B130  38 A0 20 00 */	li r5, 0x2000
/* 8008E334 0008B134  38 C0 00 00 */	li r6, 0
/* 8008E338 0008B138  38 E0 00 00 */	li r7, 0
/* 8008E33C 0008B13C  4B F9 81 2D */	bl xModelInstanceAlloc__FP8RpAtomicPvUsUcPUc
/* 8008E340 0008B140  7C 75 1B 78 */	mr r21, r3
/* 8008E344 0008B144  92 B9 00 30 */	stw r21, 0x30(r25)
/* 8008E348 0008B148  80 99 00 28 */	lwz r4, 0x28(r25)
/* 8008E34C 0008B14C  80 79 00 30 */	lwz r3, 0x30(r25)
/* 8008E350 0008B150  80 04 00 54 */	lwz r0, 0x54(r4)
/* 8008E354 0008B154  90 03 00 54 */	stw r0, 0x54(r3)
/* 8008E358 0008B158  48 00 00 24 */	b lbl_8008E37C
lbl_8008E35C:
/* 8008E35C 0008B15C  7E C3 B3 78 */	mr r3, r22
/* 8008E360 0008B160  7F 24 CB 78 */	mr r4, r25
/* 8008E364 0008B164  38 A0 20 00 */	li r5, 0x2000
/* 8008E368 0008B168  38 C0 00 00 */	li r6, 0
/* 8008E36C 0008B16C  38 E0 00 00 */	li r7, 0
/* 8008E370 0008B170  4B F9 80 F9 */	bl xModelInstanceAlloc__FP8RpAtomicPvUsUcPUc
/* 8008E374 0008B174  7E A4 AB 78 */	mr r4, r21
/* 8008E378 0008B178  4B FB C3 5D */	bl xModelInstanceAttach__FP14xModelInstanceP14xModelInstance
lbl_8008E37C:
/* 8008E37C 0008B17C  7E C3 B3 78 */	mr r3, r22
/* 8008E380 0008B180  4B FE B3 61 */	bl iModelFile_RWMultiAtomic__FP8RpAtomic
/* 8008E384 0008B184  7C 76 1B 79 */	or. r22, r3, r3
/* 8008E388 0008B188  40 82 FF D4 */	bne lbl_8008E35C
/* 8008E38C 0008B18C  48 00 00 08 */	b lbl_8008E394
lbl_8008E390:
/* 8008E390 0008B190  3B 60 00 00 */	li r27, 0
lbl_8008E394:
/* 8008E394 0008B194  3B BD 00 01 */	addi r29, r29, 1
/* 8008E398 0008B198  3A F7 00 0C */	addi r23, r23, 0xc
lbl_8008E39C:
/* 8008E39C 0008B19C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8008E3A0 0008B1A0  7C 1D 00 40 */	cmplw r29, r0
/* 8008E3A4 0008B1A4  41 80 FE EC */	blt lbl_8008E290
/* 8008E3A8 0008B1A8  3B 9C 00 01 */	addi r28, r28, 1
/* 8008E3AC 0008B1AC  3B 18 00 08 */	addi r24, r24, 8
lbl_8008E3B0:
/* 8008E3B0 0008B1B0  80 0D C3 C8 */	lwz r0, sCollisionGeomTableCount-_SDA_BASE_(r13)
/* 8008E3B4 0008B1B4  7C 1C 00 40 */	cmplw r28, r0
/* 8008E3B8 0008B1B8  41 80 FE C4 */	blt lbl_8008E27C
lbl_8008E3BC:
/* 8008E3BC 0008B1BC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8008E3C0 0008B1C0  41 82 00 18 */	beq lbl_8008E3D8
/* 8008E3C4 0008B1C4  80 19 00 30 */	lwz r0, 0x30(r25)
/* 8008E3C8 0008B1C8  28 00 00 00 */	cmplwi r0, 0
/* 8008E3CC 0008B1CC  40 82 00 0C */	bne lbl_8008E3D8
/* 8008E3D0 0008B1D0  80 19 00 28 */	lwz r0, 0x28(r25)
/* 8008E3D4 0008B1D4  90 19 00 30 */	stw r0, 0x30(r25)
lbl_8008E3D8:
/* 8008E3D8 0008B1D8  80 19 00 2C */	lwz r0, 0x2c(r25)
/* 8008E3DC 0008B1DC  28 00 00 00 */	cmplwi r0, 0
/* 8008E3E0 0008B1E0  41 82 00 0C */	beq lbl_8008E3EC
/* 8008E3E4 0008B1E4  38 60 00 01 */	li r3, 1
/* 8008E3E8 0008B1E8  48 00 00 10 */	b lbl_8008E3F8
lbl_8008E3EC:
/* 8008E3EC 0008B1EC  80 19 00 28 */	lwz r0, 0x28(r25)
/* 8008E3F0 0008B1F0  38 60 00 00 */	li r3, 0
/* 8008E3F4 0008B1F4  90 19 00 2C */	stw r0, 0x2c(r25)
lbl_8008E3F8:
/* 8008E3F8 0008B1F8  BA A1 00 14 */	lmw r21, 0x14(r1)
/* 8008E3FC 0008B1FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8008E400 0008B200  7C 08 03 A6 */	mtlr r0
/* 8008E404 0008B204  38 21 00 40 */	addi r1, r1, 0x40
/* 8008E408 0008B208  4E 80 00 20 */	blr 

.global zCollGeom_Init__Fv
zCollGeom_Init__Fv:
/* 8008E40C 0008B20C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8008E410 0008B210  7C 08 02 A6 */	mflr r0
/* 8008E414 0008B214  3C 60 43 4F */	lis r3, 0x434F4C4C@ha
/* 8008E418 0008B218  90 01 00 34 */	stw r0, 0x34(r1)
/* 8008E41C 0008B21C  38 63 4C 4C */	addi r3, r3, 0x434F4C4C@l
/* 8008E420 0008B220  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 8008E424 0008B224  4B FD DF 29 */	bl xSTAssetCountByType__FUi
/* 8008E428 0008B228  28 03 00 00 */	cmplwi r3, 0
/* 8008E42C 0008B22C  90 6D C3 C8 */	stw r3, sCollisionGeomTableCount-_SDA_BASE_(r13)
/* 8008E430 0008B230  41 82 01 58 */	beq lbl_8008E588
/* 8008E434 0008B234  28 03 00 14 */	cmplwi r3, 0x14
/* 8008E438 0008B238  40 81 00 0C */	ble lbl_8008E444
/* 8008E43C 0008B23C  38 00 00 14 */	li r0, 0x14
/* 8008E440 0008B240  90 0D C3 C8 */	stw r0, sCollisionGeomTableCount-_SDA_BASE_(r13)
lbl_8008E444:
/* 8008E444 0008B244  3B 60 00 00 */	li r27, 0
/* 8008E448 0008B248  3B 40 00 00 */	li r26, 0
/* 8008E44C 0008B24C  3F E0 43 4F */	lis r31, 0x434f
/* 8008E450 0008B250  48 00 01 2C */	b lbl_8008E57C
lbl_8008E454:
/* 8008E454 0008B254  7F 64 DB 78 */	mr r4, r27
/* 8008E458 0008B258  38 7F 4C 4C */	addi r3, r31, 0x4c4c
/* 8008E45C 0008B25C  38 A1 00 08 */	addi r5, r1, 8
/* 8008E460 0008B260  4B FD DF 5D */	bl xSTFindAssetByType__FUiiPUi
/* 8008E464 0008B264  28 03 00 00 */	cmplwi r3, 0
/* 8008E468 0008B268  41 82 01 0C */	beq lbl_8008E574
/* 8008E46C 0008B26C  3C 80 80 37 */	lis r4, sCollisionGeomTable@ha
/* 8008E470 0008B270  80 A3 00 00 */	lwz r5, 0(r3)
/* 8008E474 0008B274  38 04 58 A8 */	addi r0, r4, sCollisionGeomTable@l
/* 8008E478 0008B278  7F C0 D2 14 */	add r30, r0, r26
/* 8008E47C 0008B27C  90 BE 00 00 */	stw r5, 0(r30)
/* 8008E480 0008B280  80 1E 00 00 */	lwz r0, 0(r30)
/* 8008E484 0008B284  28 00 00 00 */	cmplwi r0, 0
/* 8008E488 0008B288  40 82 00 10 */	bne lbl_8008E498
/* 8008E48C 0008B28C  38 00 00 00 */	li r0, 0
/* 8008E490 0008B290  90 1E 00 04 */	stw r0, 4(r30)
/* 8008E494 0008B294  48 00 00 E0 */	b lbl_8008E574
lbl_8008E498:
/* 8008E498 0008B298  38 03 00 04 */	addi r0, r3, 4
/* 8008E49C 0008B29C  3B BE 00 04 */	addi r29, r30, 4
/* 8008E4A0 0008B2A0  90 1E 00 04 */	stw r0, 4(r30)
/* 8008E4A4 0008B2A4  3B 80 00 00 */	li r28, 0
/* 8008E4A8 0008B2A8  3B 20 00 00 */	li r25, 0
/* 8008E4AC 0008B2AC  48 00 00 BC */	b lbl_8008E568
lbl_8008E4B0:
/* 8008E4B0 0008B2B0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8008E4B4 0008B2B4  7C 63 C8 2E */	lwzx r3, r3, r25
/* 8008E4B8 0008B2B8  28 03 00 00 */	cmplwi r3, 0
/* 8008E4BC 0008B2BC  41 82 00 48 */	beq lbl_8008E504
/* 8008E4C0 0008B2C0  7C 78 1B 78 */	mr r24, r3
/* 8008E4C4 0008B2C4  38 80 00 00 */	li r4, 0
/* 8008E4C8 0008B2C8  4B FD DD D9 */	bl xSTFindAsset__FUiPUi
/* 8008E4CC 0008B2CC  80 9D 00 00 */	lwz r4, 0(r29)
/* 8008E4D0 0008B2D0  7C 64 C9 2E */	stwx r3, r4, r25
/* 8008E4D4 0008B2D4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8008E4D8 0008B2D8  7C 03 C8 2E */	lwzx r0, r3, r25
/* 8008E4DC 0008B2DC  28 00 00 00 */	cmplwi r0, 0
/* 8008E4E0 0008B2E0  40 82 00 24 */	bne lbl_8008E504
/* 8008E4E4 0008B2E4  3C 80 80 2E */	lis r4, $$2stringBase0_38@ha
/* 8008E4E8 0008B2E8  7F 03 C3 78 */	mr r3, r24
/* 8008E4EC 0008B2EC  38 84 A4 40 */	addi r4, r4, $$2stringBase0_38@l
/* 8008E4F0 0008B2F0  4B FD E7 C1 */	bl xStrHashCat__FUiPCc
/* 8008E4F4 0008B2F4  38 80 00 00 */	li r4, 0
/* 8008E4F8 0008B2F8  4B FD DD A9 */	bl xSTFindAsset__FUiPUi
/* 8008E4FC 0008B2FC  80 9D 00 00 */	lwz r4, 0(r29)
/* 8008E500 0008B300  7C 64 C9 2E */	stwx r3, r4, r25
lbl_8008E504:
/* 8008E504 0008B304  80 7D 00 00 */	lwz r3, 0(r29)
/* 8008E508 0008B308  38 03 00 04 */	addi r0, r3, 4
/* 8008E50C 0008B30C  7C 79 00 2E */	lwzx r3, r25, r0
/* 8008E510 0008B310  28 03 00 00 */	cmplwi r3, 0
/* 8008E514 0008B314  41 82 00 18 */	beq lbl_8008E52C
/* 8008E518 0008B318  38 80 00 00 */	li r4, 0
/* 8008E51C 0008B31C  4B FD DD 85 */	bl xSTFindAsset__FUiPUi
/* 8008E520 0008B320  80 9D 00 00 */	lwz r4, 0(r29)
/* 8008E524 0008B324  38 04 00 04 */	addi r0, r4, 4
/* 8008E528 0008B328  7C 79 01 2E */	stwx r3, r25, r0
lbl_8008E52C:
/* 8008E52C 0008B32C  80 1D 00 00 */	lwz r0, 0(r29)
/* 8008E530 0008B330  7C 60 CA 14 */	add r3, r0, r25
/* 8008E534 0008B334  80 03 00 04 */	lwz r0, 4(r3)
/* 8008E538 0008B338  28 00 00 00 */	cmplwi r0, 0
/* 8008E53C 0008B33C  40 82 00 24 */	bne lbl_8008E560
/* 8008E540 0008B340  80 63 00 08 */	lwz r3, 8(r3)
/* 8008E544 0008B344  28 03 00 00 */	cmplwi r3, 0
/* 8008E548 0008B348  41 82 00 18 */	beq lbl_8008E560
/* 8008E54C 0008B34C  38 80 00 00 */	li r4, 0
/* 8008E550 0008B350  4B FD DD 51 */	bl xSTFindAsset__FUiPUi
/* 8008E554 0008B354  80 9D 00 00 */	lwz r4, 0(r29)
/* 8008E558 0008B358  38 19 00 08 */	addi r0, r25, 8
/* 8008E55C 0008B35C  7C 64 01 2E */	stwx r3, r4, r0
lbl_8008E560:
/* 8008E560 0008B360  3B 9C 00 01 */	addi r28, r28, 1
/* 8008E564 0008B364  3B 39 00 0C */	addi r25, r25, 0xc
lbl_8008E568:
/* 8008E568 0008B368  80 1E 00 00 */	lwz r0, 0(r30)
/* 8008E56C 0008B36C  7C 1C 00 40 */	cmplw r28, r0
/* 8008E570 0008B370  41 80 FF 40 */	blt lbl_8008E4B0
lbl_8008E574:
/* 8008E574 0008B374  3B 7B 00 01 */	addi r27, r27, 1
/* 8008E578 0008B378  3B 5A 00 08 */	addi r26, r26, 8
lbl_8008E57C:
/* 8008E57C 0008B37C  80 0D C3 C8 */	lwz r0, sCollisionGeomTableCount-_SDA_BASE_(r13)
/* 8008E580 0008B380  7C 1B 00 40 */	cmplw r27, r0
/* 8008E584 0008B384  41 80 FE D0 */	blt lbl_8008E454
lbl_8008E588:
/* 8008E588 0008B388  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 8008E58C 0008B38C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8008E590 0008B390  7C 08 03 A6 */	mtlr r0
/* 8008E594 0008B394  38 21 00 30 */	addi r1, r1, 0x30
/* 8008E598 0008B398  4E 80 00 20 */	blr 

.global zCollGeom_CamEnable__FP4xEnt
zCollGeom_CamEnable__FP4xEnt:
/* 8008E59C 0008B39C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8008E5A0 0008B3A0  28 00 00 00 */	cmplwi r0, 0
/* 8008E5A4 0008B3A4  4C 82 00 20 */	bnelr 
/* 8008E5A8 0008B3A8  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8008E5AC 0008B3AC  90 03 00 30 */	stw r0, 0x30(r3)
/* 8008E5B0 0008B3B0  4E 80 00 20 */	blr 

.global zCollGeom_CamDisable__FP4xEnt
zCollGeom_CamDisable__FP4xEnt:
/* 8008E5B4 0008B3B4  38 00 00 00 */	li r0, 0
/* 8008E5B8 0008B3B8  90 03 00 30 */	stw r0, 0x30(r3)
/* 8008E5BC 0008B3BC  4E 80 00 20 */	blr 
