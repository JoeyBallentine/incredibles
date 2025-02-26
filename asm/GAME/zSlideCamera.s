.include "macros.inc"

.section .sdata

.global __vt__9zSlideCam
__vt__9zSlideCam:
	.incbin "baserom.dol", 0x32CF88, 0x28

.section .sdata2

.global $$2860
$$2860:
	.incbin "baserom.dol", 0x331FA8, 0x4
.global $$2865_0
$$2865_0:
	.incbin "baserom.dol", 0x331FAC, 0x4
.global $$2866_0
$$2866_0:
	.incbin "baserom.dol", 0x331FB0, 0x4
.global $$2867
$$2867:
	.incbin "baserom.dol", 0x331FB4, 0x4
.global $$2868
$$2868:
	.incbin "baserom.dol", 0x331FB8, 0x4
.global $$2932_1
$$2932_1:
	.incbin "baserom.dol", 0x331FBC, 0x4
.global lbl_803D5600
lbl_803D5600:
	.incbin "baserom.dol", 0x331FC0, 0x4
.global lbl_803D5604
lbl_803D5604:
	.incbin "baserom.dol", 0x331FC4, 0x4
.global $$2937_2
$$2937_2:
	.incbin "baserom.dol", 0x331FC8, 0x8

.section .text

.global create__9zSlideCamFv
create__9zSlideCamFv:
/* 8015E344 0015B144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015E348 0015B148  7C 08 02 A6 */	mflr r0
/* 8015E34C 0015B14C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015E350 0015B150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015E354 0015B154  7C 7F 1B 78 */	mr r31, r3
/* 8015E358 0015B158  4B EB 06 01 */	bl create__4xCamFv
/* 8015E35C 0015B15C  38 80 00 00 */	li r4, 0
/* 8015E360 0015B160  38 00 00 80 */	li r0, 0x80
/* 8015E364 0015B164  90 9F 00 6C */	stw r4, 0x6c(r31)
/* 8015E368 0015B168  7F E3 FB 78 */	mr r3, r31
/* 8015E36C 0015B16C  C0 02 B8 C8 */	lfs f0, $$2860-_SDA2_BASE_(r2)
/* 8015E370 0015B170  90 9F 00 70 */	stw r4, 0x70(r31)
/* 8015E374 0015B174  98 1F 00 A4 */	stb r0, 0xa4(r31)
/* 8015E378 0015B178  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 8015E37C 0015B17C  48 00 00 19 */	bl load_cfg__9zSlideCamFv
/* 8015E380 0015B180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015E384 0015B184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015E388 0015B188  7C 08 03 A6 */	mtlr r0
/* 8015E38C 0015B18C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015E390 0015B190  4E 80 00 20 */	blr 

.global load_cfg__9zSlideCamFv
load_cfg__9zSlideCamFv:
/* 8015E394 0015B194  C0 22 B8 CC */	lfs f1, $$2865_0-_SDA2_BASE_(r2)
/* 8015E398 0015B198  C0 02 B8 D0 */	lfs f0, $$2866_0-_SDA2_BASE_(r2)
/* 8015E39C 0015B19C  D0 23 00 C4 */	stfs f1, 0xc4(r3)
/* 8015E3A0 0015B1A0  C0 22 B8 D4 */	lfs f1, $$2867-_SDA2_BASE_(r2)
/* 8015E3A4 0015B1A4  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 8015E3A8 0015B1A8  C0 02 B8 D8 */	lfs f0, $$2868-_SDA2_BASE_(r2)
/* 8015E3AC 0015B1AC  D0 23 00 CC */	stfs f1, 0xcc(r3)
/* 8015E3B0 0015B1B0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8015E3B4 0015B1B4  4E 80 00 20 */	blr 

.global start__9zSlideCamFv
start__9zSlideCamFv:
/* 8015E3B8 0015B1B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015E3BC 0015B1BC  7C 08 02 A6 */	mflr r0
/* 8015E3C0 0015B1C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015E3C4 0015B1C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015E3C8 0015B1C8  7C 7F 1B 78 */	mr r31, r3
/* 8015E3CC 0015B1CC  4B EB 02 6D */	bl start__4xCamFv
/* 8015E3D0 0015B1D0  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8015E3D4 0015B1D4  38 9F 00 D4 */	addi r4, r31, 0xd4
/* 8015E3D8 0015B1D8  4B EA CC D1 */	bl __as__5xVec3FRC5xVec3
/* 8015E3DC 0015B1DC  38 7F 00 EC */	addi r3, r31, 0xec
/* 8015E3E0 0015B1E0  38 9F 00 D4 */	addi r4, r31, 0xd4
/* 8015E3E4 0015B1E4  4B EA CC C5 */	bl __as__5xVec3FRC5xVec3
/* 8015E3E8 0015B1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015E3EC 0015B1EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015E3F0 0015B1F0  7C 08 03 A6 */	mtlr r0
/* 8015E3F4 0015B1F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8015E3F8 0015B1F8  4E 80 00 20 */	blr 

.global SpringDamp__FRC5xVec3RC5xVec3RC5xVec3ffff
SpringDamp__FRC5xVec3RC5xVec3RC5xVec3ffff:
/* 8015E3FC 0015B1FC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8015E400 0015B200  7C 08 02 A6 */	mflr r0
/* 8015E404 0015B204  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8015E408 0015B208  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8015E40C 0015B20C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 8015E410 0015B210  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8015E414 0015B214  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 8015E418 0015B218  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8015E41C 0015B21C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 8015E420 0015B220  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8015E424 0015B224  F3 81 00 88 */	psq_st f28, 136(r1), 0, qr0
/* 8015E428 0015B228  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8015E42C 0015B22C  F3 61 00 78 */	psq_st f27, 120(r1), 0, qr0
/* 8015E430 0015B230  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 8015E434 0015B234  F3 41 00 68 */	psq_st f26, 104(r1), 0, qr0
/* 8015E438 0015B238  BF 81 00 50 */	stmw r28, 0x50(r1)
/* 8015E43C 0015B23C  FF 40 08 90 */	fmr f26, f1
/* 8015E440 0015B240  7C 7C 1B 78 */	mr r28, r3
/* 8015E444 0015B244  FF 60 10 90 */	fmr f27, f2
/* 8015E448 0015B248  7C 9D 23 78 */	mr r29, r4
/* 8015E44C 0015B24C  FF 80 18 90 */	fmr f28, f3
/* 8015E450 0015B250  7C BE 2B 78 */	mr r30, r5
/* 8015E454 0015B254  FF A0 20 90 */	fmr f29, f4
/* 8015E458 0015B258  7C DF 33 78 */	mr r31, r6
/* 8015E45C 0015B25C  38 61 00 20 */	addi r3, r1, 0x20
/* 8015E460 0015B260  4B EA D4 91 */	bl __mi__5xVec3CFRC5xVec3
/* 8015E464 0015B264  38 61 00 44 */	addi r3, r1, 0x44
/* 8015E468 0015B268  38 81 00 20 */	addi r4, r1, 0x20
/* 8015E46C 0015B26C  4B EA CC 3D */	bl __as__5xVec3FRC5xVec3
/* 8015E470 0015B270  7F E4 FB 78 */	mr r4, r31
/* 8015E474 0015B274  7F C5 F3 78 */	mr r5, r30
/* 8015E478 0015B278  38 61 00 08 */	addi r3, r1, 8
/* 8015E47C 0015B27C  4B EA D4 75 */	bl __mi__5xVec3CFRC5xVec3
/* 8015E480 0015B280  FC 20 D0 90 */	fmr f1, f26
/* 8015E484 0015B284  38 61 00 14 */	addi r3, r1, 0x14
/* 8015E488 0015B288  38 81 00 08 */	addi r4, r1, 8
/* 8015E48C 0015B28C  4B EA D8 DD */	bl __ml__5xVec3CFf
/* 8015E490 0015B290  38 61 00 38 */	addi r3, r1, 0x38
/* 8015E494 0015B294  38 81 00 14 */	addi r4, r1, 0x14
/* 8015E498 0015B298  4B EA CC 11 */	bl __as__5xVec3FRC5xVec3
/* 8015E49C 0015B29C  38 61 00 44 */	addi r3, r1, 0x44
/* 8015E4A0 0015B2A0  4B EB 21 6D */	bl xVec3Length__FPC5xVec3
/* 8015E4A4 0015B2A4  FF C0 08 90 */	fmr f30, f1
/* 8015E4A8 0015B2A8  38 61 00 44 */	addi r3, r1, 0x44
/* 8015E4AC 0015B2AC  38 81 00 38 */	addi r4, r1, 0x38
/* 8015E4B0 0015B2B0  4B F1 32 95 */	bl xVec3Dot__FPC5xVec3PC5xVec3
/* 8015E4B4 0015B2B4  FF E0 08 90 */	fmr f31, f1
/* 8015E4B8 0015B2B8  38 61 00 44 */	addi r3, r1, 0x44
/* 8015E4BC 0015B2BC  7C 64 1B 78 */	mr r4, r3
/* 8015E4C0 0015B2C0  4B F1 31 61 */	bl xVec3Normalize__FP5xVec3PC5xVec3
/* 8015E4C4 0015B2C4  EC 1F F0 24 */	fdivs f0, f31, f30
/* 8015E4C8 0015B2C8  38 61 00 44 */	addi r3, r1, 0x44
/* 8015E4CC 0015B2CC  EC 3D F0 28 */	fsubs f1, f29, f30
/* 8015E4D0 0015B2D0  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8015E4D4 0015B2D4  EC 1B 00 7A */	fmadds f0, f27, f1, f0
/* 8015E4D8 0015B2D8  EC 20 06 B2 */	fmuls f1, f0, f26
/* 8015E4DC 0015B2DC  4B EA D3 C5 */	bl __amu__5xVec3Ff
/* 8015E4E0 0015B2E0  7F A4 EB 78 */	mr r4, r29
/* 8015E4E4 0015B2E4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8015E4E8 0015B2E8  38 A1 00 44 */	addi r5, r1, 0x44
/* 8015E4EC 0015B2EC  4B EA F1 7D */	bl xVec3Add__FP5xVec3PC5xVec3PC5xVec3
/* 8015E4F0 0015B2F0  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8015E4F4 0015B2F4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8015E4F8 0015B2F8  90 7C 00 00 */	stw r3, 0(r28)
/* 8015E4FC 0015B2FC  90 1C 00 04 */	stw r0, 4(r28)
/* 8015E500 0015B300  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015E504 0015B304  90 1C 00 08 */	stw r0, 8(r28)
/* 8015E508 0015B308  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8015E50C 0015B30C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8015E510 0015B310  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 8015E514 0015B314  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8015E518 0015B318  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 8015E51C 0015B31C  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8015E520 0015B320  E3 81 00 88 */	psq_l f28, 136(r1), 0, qr0
/* 8015E524 0015B324  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8015E528 0015B328  E3 61 00 78 */	psq_l f27, 120(r1), 0, qr0
/* 8015E52C 0015B32C  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8015E530 0015B330  E3 41 00 68 */	psq_l f26, 104(r1), 0, qr0
/* 8015E534 0015B334  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 8015E538 0015B338  BB 81 00 50 */	lmw r28, 0x50(r1)
/* 8015E53C 0015B33C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8015E540 0015B340  7C 08 03 A6 */	mtlr r0
/* 8015E544 0015B344  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8015E548 0015B348  4E 80 00 20 */	blr 

.global setCurrTgtPos__9zSlideCamFRC5xVec3RC5xVec3
setCurrTgtPos__9zSlideCamFRC5xVec3RC5xVec3:
/* 8015E54C 0015B34C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015E550 0015B350  7C 08 02 A6 */	mflr r0
/* 8015E554 0015B354  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015E558 0015B358  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 8015E55C 0015B35C  7C 7E 1B 78 */	mr r30, r3
/* 8015E560 0015B360  7C BF 2B 78 */	mr r31, r5
/* 8015E564 0015B364  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 8015E568 0015B368  4B EA CB 41 */	bl __as__5xVec3FRC5xVec3
/* 8015E56C 0015B36C  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8015E570 0015B370  7F E4 FB 78 */	mr r4, r31
/* 8015E574 0015B374  38 61 00 08 */	addi r3, r1, 8
/* 8015E578 0015B378  4B EA D7 F1 */	bl __ml__5xVec3CFf
/* 8015E57C 0015B37C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 8015E580 0015B380  38 81 00 08 */	addi r4, r1, 8
/* 8015E584 0015B384  4B EA D1 6D */	bl __apl__5xVec3FRC5xVec3
/* 8015E588 0015B388  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 8015E58C 0015B38C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015E590 0015B390  7C 08 03 A6 */	mtlr r0
/* 8015E594 0015B394  38 21 00 20 */	addi r1, r1, 0x20
/* 8015E598 0015B398  4E 80 00 20 */	blr 

.global setPrevTgtPos__9zSlideCamFRC5xVec3RC5xVec3
setPrevTgtPos__9zSlideCamFRC5xVec3RC5xVec3:
/* 8015E59C 0015B39C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015E5A0 0015B3A0  7C 08 02 A6 */	mflr r0
/* 8015E5A4 0015B3A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015E5A8 0015B3A8  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 8015E5AC 0015B3AC  7C 7E 1B 78 */	mr r30, r3
/* 8015E5B0 0015B3B0  7C BF 2B 78 */	mr r31, r5
/* 8015E5B4 0015B3B4  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 8015E5B8 0015B3B8  4B EA CA F1 */	bl __as__5xVec3FRC5xVec3
/* 8015E5BC 0015B3BC  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8015E5C0 0015B3C0  7F E4 FB 78 */	mr r4, r31
/* 8015E5C4 0015B3C4  38 61 00 08 */	addi r3, r1, 8
/* 8015E5C8 0015B3C8  4B EA D7 A1 */	bl __ml__5xVec3CFf
/* 8015E5CC 0015B3CC  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 8015E5D0 0015B3D0  38 81 00 08 */	addi r4, r1, 8
/* 8015E5D4 0015B3D4  4B EA D1 1D */	bl __apl__5xVec3FRC5xVec3
/* 8015E5D8 0015B3D8  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 8015E5DC 0015B3DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015E5E0 0015B3E0  7C 08 03 A6 */	mtlr r0
/* 8015E5E4 0015B3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8015E5E8 0015B3E8  4E 80 00 20 */	blr 

.global update__9zSlideCamFR6xScenef
update__9zSlideCamFR6xScenef:
/* 8015E5EC 0015B3EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8015E5F0 0015B3F0  7C 08 02 A6 */	mflr r0
/* 8015E5F4 0015B3F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8015E5F8 0015B3F8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8015E5FC 0015B3FC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8015E600 0015B400  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8015E604 0015B404  7C 7F 1B 78 */	mr r31, r3
/* 8015E608 0015B408  FF E0 08 90 */	fmr f31, f1
/* 8015E60C 0015B40C  80 A3 00 C0 */	lwz r5, 0xc0(r3)
/* 8015E610 0015B410  38 85 00 30 */	addi r4, r5, 0x30
/* 8015E614 0015B414  38 A5 00 10 */	addi r5, r5, 0x10
/* 8015E618 0015B418  4B FF FF 35 */	bl setCurrTgtPos__9zSlideCamFRC5xVec3RC5xVec3
/* 8015E61C 0015B41C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8015E620 0015B420  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8015E624 0015B424  C0 9F 00 D8 */	lfs f4, 0xd8(r31)
/* 8015E628 0015B428  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 8015E62C 0015B42C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8015E630 0015B430  C0 7F 00 DC */	lfs f3, 0xdc(r31)
/* 8015E634 0015B434  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8015E638 0015B438  EC 44 10 28 */	fsubs f2, f4, f2
/* 8015E63C 0015B43C  EC 63 00 28 */	fsubs f3, f3, f0
/* 8015E640 0015B440  4B F2 91 15 */	bl xVec3Length__Ffff
/* 8015E644 0015B444  C0 02 B8 E8 */	lfs f0, $$2937_2-_SDA2_BASE_(r2)
/* 8015E648 0015B448  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015E64C 0015B44C  40 81 00 34 */	ble lbl_8015E680
/* 8015E650 0015B450  FC 20 F8 90 */	fmr f1, f31
/* 8015E654 0015B454  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 8015E658 0015B458  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 8015E65C 0015B45C  38 61 00 14 */	addi r3, r1, 0x14
/* 8015E660 0015B460  C0 9F 00 C4 */	lfs f4, 0xc4(r31)
/* 8015E664 0015B464  38 9F 00 EC */	addi r4, r31, 0xec
/* 8015E668 0015B468  38 BF 00 D4 */	addi r5, r31, 0xd4
/* 8015E66C 0015B46C  38 DF 00 E0 */	addi r6, r31, 0xe0
/* 8015E670 0015B470  4B FF FD 8D */	bl SpringDamp__FRC5xVec3RC5xVec3RC5xVec3ffff
/* 8015E674 0015B474  38 7F 00 EC */	addi r3, r31, 0xec
/* 8015E678 0015B478  38 81 00 14 */	addi r4, r1, 0x14
/* 8015E67C 0015B47C  4B EA CA 2D */	bl __as__5xVec3FRC5xVec3
lbl_8015E680:
/* 8015E680 0015B480  80 C2 B8 DC */	lwz r6, $$2932_1-_SDA2_BASE_(r2)
/* 8015E684 0015B484  38 7F 00 10 */	addi r3, r31, 0x10
/* 8015E688 0015B488  80 A2 B8 E0 */	lwz r5, lbl_803D5600-_SDA2_BASE_(r2)
/* 8015E68C 0015B48C  38 81 00 20 */	addi r4, r1, 0x20
/* 8015E690 0015B490  80 02 B8 E4 */	lwz r0, lbl_803D5604-_SDA2_BASE_(r2)
/* 8015E694 0015B494  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8015E698 0015B498  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8015E69C 0015B49C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8015E6A0 0015B4A0  4B EA CA 09 */	bl __as__5xVec3FRC5xVec3
/* 8015E6A4 0015B4A4  38 61 00 08 */	addi r3, r1, 8
/* 8015E6A8 0015B4A8  38 9F 00 E0 */	addi r4, r31, 0xe0
/* 8015E6AC 0015B4AC  38 BF 00 EC */	addi r5, r31, 0xec
/* 8015E6B0 0015B4B0  4B EA D2 41 */	bl __mi__5xVec3CFRC5xVec3
/* 8015E6B4 0015B4B4  38 7F 00 20 */	addi r3, r31, 0x20
/* 8015E6B8 0015B4B8  38 81 00 08 */	addi r4, r1, 8
/* 8015E6BC 0015B4BC  4B EA C9 ED */	bl __as__5xVec3FRC5xVec3
/* 8015E6C0 0015B4C0  38 7F 00 20 */	addi r3, r31, 0x20
/* 8015E6C4 0015B4C4  7C 64 1B 78 */	mr r4, r3
/* 8015E6C8 0015B4C8  4B F1 2F 59 */	bl xVec3Normalize__FP5xVec3PC5xVec3
/* 8015E6CC 0015B4CC  7F E3 FB 78 */	mr r3, r31
/* 8015E6D0 0015B4D0  38 9F 00 10 */	addi r4, r31, 0x10
/* 8015E6D4 0015B4D4  38 BF 00 20 */	addi r5, r31, 0x20
/* 8015E6D8 0015B4D8  4B EB 94 45 */	bl xVec3Cross__FP5xVec3PC5xVec3PC5xVec3
/* 8015E6DC 0015B4DC  7F E3 FB 78 */	mr r3, r31
/* 8015E6E0 0015B4E0  7F E4 FB 78 */	mr r4, r31
/* 8015E6E4 0015B4E4  4B F1 2F 3D */	bl xVec3Normalize__FP5xVec3PC5xVec3
/* 8015E6E8 0015B4E8  7F E5 FB 78 */	mr r5, r31
/* 8015E6EC 0015B4EC  38 7F 00 10 */	addi r3, r31, 0x10
/* 8015E6F0 0015B4F0  38 9F 00 20 */	addi r4, r31, 0x20
/* 8015E6F4 0015B4F4  4B EB 94 29 */	bl xVec3Cross__FP5xVec3PC5xVec3PC5xVec3
/* 8015E6F8 0015B4F8  38 7F 00 10 */	addi r3, r31, 0x10
/* 8015E6FC 0015B4FC  7C 64 1B 78 */	mr r4, r3
/* 8015E700 0015B500  4B F1 2F 21 */	bl xVec3Normalize__FP5xVec3PC5xVec3
/* 8015E704 0015B504  38 7F 00 74 */	addi r3, r31, 0x74
/* 8015E708 0015B508  38 9F 00 EC */	addi r4, r31, 0xec
/* 8015E70C 0015B50C  4B EA C9 9D */	bl __as__5xVec3FRC5xVec3
/* 8015E710 0015B510  38 7F 00 30 */	addi r3, r31, 0x30
/* 8015E714 0015B514  38 9F 00 74 */	addi r4, r31, 0x74
/* 8015E718 0015B518  4B EA C9 91 */	bl __as__5xVec3FRC5xVec3
/* 8015E71C 0015B51C  7F E4 FB 78 */	mr r4, r31
/* 8015E720 0015B520  38 7F 00 94 */	addi r3, r31, 0x94
/* 8015E724 0015B524  4B EE A7 E1 */	bl xQuatFromMat__FP5xQuatPC7xMat3x3
/* 8015E728 0015B528  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8015E72C 0015B52C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8015E730 0015B530  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8015E734 0015B534  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8015E738 0015B538  7C 08 03 A6 */	mtlr r0
/* 8015E73C 0015B53C  38 21 00 50 */	addi r1, r1, 0x50
/* 8015E740 0015B540  4E 80 00 20 */	blr 
