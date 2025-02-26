.include "macros.inc"

.section .sbss

.global cnt_fadesInProgress__Q210ScreenFade10GlobalData
cnt_fadesInProgress__Q210ScreenFade10GlobalData:
	.skip 0x8

.section .sdata2

.global $$21020_3
$$21020_3:
	.incbin "baserom.dol", 0x332878, 0x4
.global $$21021_3
$$21021_3:
	.incbin "baserom.dol", 0x33287C, 0x4

.section .text

.global load__11xScreenFadeFRQ211xScreenFade10asset_type
load__11xScreenFadeFRQ211xScreenFade10asset_type:
/* 80189D94 00186B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80189D98 00186B98  7C 08 02 A6 */	mflr r0
/* 80189D9C 00186B9C  38 A0 00 28 */	li r5, 0x28
/* 80189DA0 00186BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80189DA4 00186BA4  BF C1 00 08 */	stmw r30, 8(r1)
/* 80189DA8 00186BA8  7C 9F 23 78 */	mr r31, r4
/* 80189DAC 00186BAC  7C 7E 1B 78 */	mr r30, r3
/* 80189DB0 00186BB0  38 80 00 00 */	li r4, 0
/* 80189DB4 00186BB4  4B E7 93 4D */	bl memset
/* 80189DB8 00186BB8  7F C3 F3 78 */	mr r3, r30
/* 80189DBC 00186BBC  7F E4 FB 78 */	mr r4, r31
/* 80189DC0 00186BC0  4B E8 26 E1 */	bl xBaseInit__FP5xBasePC10xBaseAsset
/* 80189DC4 00186BC4  38 00 00 6E */	li r0, 0x6e
/* 80189DC8 00186BC8  3C 60 80 19 */	lis r3, cb_dispatch__11xScreenFadeFP5xBaseP5xBaseUiPCfP5xBaseUi@ha
/* 80189DCC 00186BCC  98 1E 00 04 */	stb r0, 4(r30)
/* 80189DD0 00186BD0  38 03 9E C8 */	addi r0, r3, cb_dispatch__11xScreenFadeFP5xBaseP5xBaseUiPCfP5xBaseUi@l
/* 80189DD4 00186BD4  93 FE 00 10 */	stw r31, 0x10(r30)
/* 80189DD8 00186BD8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80189DDC 00186BDC  88 1E 00 05 */	lbz r0, 5(r30)
/* 80189DE0 00186BE0  28 00 00 00 */	cmplwi r0, 0
/* 80189DE4 00186BE4  41 82 00 0C */	beq lbl_80189DF0
/* 80189DE8 00186BE8  38 1F 00 20 */	addi r0, r31, 0x20
/* 80189DEC 00186BEC  90 1E 00 08 */	stw r0, 8(r30)
lbl_80189DF0:
/* 80189DF0 00186BF0  38 00 00 00 */	li r0, 0
/* 80189DF4 00186BF4  38 7E 00 18 */	addi r3, r30, 0x18
/* 80189DF8 00186BF8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80189DFC 00186BFC  38 82 82 44 */	addi r4, r2, g_CLEAR-_SDA2_BASE_
/* 80189E00 00186C00  4B E8 C4 3D */	bl __as__10xColor_tagFRC10xColor_tag
/* 80189E04 00186C04  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80189E08 00186C08  C0 02 C1 98 */	lfs f0, $$21020_3-_SDA2_BASE_(r2)
/* 80189E0C 00186C0C  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80189E10 00186C10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80189E14 00186C14  40 80 00 0C */	bge lbl_80189E20
/* 80189E18 00186C18  C0 02 C1 9C */	lfs f0, $$21021_3-_SDA2_BASE_(r2)
/* 80189E1C 00186C1C  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_80189E20:
/* 80189E20 00186C20  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80189E24 00186C24  C0 02 C1 98 */	lfs f0, $$21020_3-_SDA2_BASE_(r2)
/* 80189E28 00186C28  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80189E2C 00186C2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80189E30 00186C30  40 80 00 0C */	bge lbl_80189E3C
/* 80189E34 00186C34  C0 02 C1 9C */	lfs f0, $$21021_3-_SDA2_BASE_(r2)
/* 80189E38 00186C38  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80189E3C:
/* 80189E3C 00186C3C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80189E40 00186C40  C0 02 C1 98 */	lfs f0, $$21020_3-_SDA2_BASE_(r2)
/* 80189E44 00186C44  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80189E48 00186C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80189E4C 00186C4C  40 80 00 0C */	bge lbl_80189E58
/* 80189E50 00186C50  C0 02 C1 9C */	lfs f0, $$21021_3-_SDA2_BASE_(r2)
/* 80189E54 00186C54  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80189E58:
/* 80189E58 00186C58  38 00 00 00 */	li r0, 0
/* 80189E5C 00186C5C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80189E60 00186C60  BB C1 00 08 */	lmw r30, 8(r1)
/* 80189E64 00186C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80189E68 00186C68  7C 08 03 A6 */	mtlr r0
/* 80189E6C 00186C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80189E70 00186C70  4E 80 00 20 */	blr 

.global StartFade__11xScreenFadeFv
StartFade__11xScreenFadeFv:
/* 80189E74 00186C74  38 00 00 01 */	li r0, 1
/* 80189E78 00186C78  C0 02 C1 98 */	lfs f0, $$21020_3-_SDA2_BASE_(r2)
/* 80189E7C 00186C7C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80189E80 00186C80  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80189E84 00186C84  80 6D D4 C8 */	lwz r3, cnt_fadesInProgress__Q210ScreenFade10GlobalData-_SDA_BASE_(r13)
/* 80189E88 00186C88  38 03 00 01 */	addi r0, r3, 1
/* 80189E8C 00186C8C  90 0D D4 C8 */	stw r0, cnt_fadesInProgress__Q210ScreenFade10GlobalData-_SDA_BASE_(r13)
/* 80189E90 00186C90  4E 80 00 20 */	blr 

.global reset__11xScreenFadeFv
reset__11xScreenFadeFv:
/* 80189E94 00186C94  38 00 00 00 */	li r0, 0
/* 80189E98 00186C98  90 03 00 14 */	stw r0, 0x14(r3)
/* 80189E9C 00186C9C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80189EA0 00186CA0  90 0D D4 C8 */	stw r0, cnt_fadesInProgress__Q210ScreenFade10GlobalData-_SDA_BASE_(r13)
/* 80189EA4 00186CA4  4E 80 00 20 */	blr 

.global load__11xScreenFadeFR5xBaseR9xDynAssetUl
load__11xScreenFadeFR5xBaseR9xDynAssetUl:
/* 80189EA8 00186CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80189EAC 00186CAC  7C 08 02 A6 */	mflr r0
/* 80189EB0 00186CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80189EB4 00186CB4  4B FF FE E1 */	bl load__11xScreenFadeFRQ211xScreenFade10asset_type
/* 80189EB8 00186CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80189EBC 00186CBC  7C 08 03 A6 */	mtlr r0
/* 80189EC0 00186CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80189EC4 00186CC4  4E 80 00 20 */	blr 

.global cb_dispatch__11xScreenFadeFP5xBaseP5xBaseUiPCfP5xBaseUi
cb_dispatch__11xScreenFadeFP5xBaseP5xBaseUiPCfP5xBaseUi:
/* 80189EC8 00186CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80189ECC 00186CCC  7C 08 02 A6 */	mflr r0
/* 80189ED0 00186CD0  2C 05 00 58 */	cmpwi r5, 0x58
/* 80189ED4 00186CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80189ED8 00186CD8  41 82 00 20 */	beq lbl_80189EF8
/* 80189EDC 00186CDC  40 80 00 10 */	bge lbl_80189EEC
/* 80189EE0 00186CE0  2C 05 00 0A */	cmpwi r5, 0xa
/* 80189EE4 00186CE4  41 82 00 14 */	beq lbl_80189EF8
/* 80189EE8 00186CE8  48 00 00 28 */	b lbl_80189F10
lbl_80189EEC:
/* 80189EEC 00186CEC  2C 05 02 61 */	cmpwi r5, 0x261
/* 80189EF0 00186CF0  41 82 00 14 */	beq lbl_80189F04
/* 80189EF4 00186CF4  48 00 00 1C */	b lbl_80189F10
lbl_80189EF8:
/* 80189EF8 00186CF8  7C 83 23 78 */	mr r3, r4
/* 80189EFC 00186CFC  4B FF FF 99 */	bl reset__11xScreenFadeFv
/* 80189F00 00186D00  48 00 00 10 */	b lbl_80189F10
lbl_80189F04:
/* 80189F04 00186D04  90 64 00 24 */	stw r3, 0x24(r4)
/* 80189F08 00186D08  7C 83 23 78 */	mr r3, r4
/* 80189F0C 00186D0C  4B FF FF 69 */	bl StartFade__11xScreenFadeFv
lbl_80189F10:
/* 80189F10 00186D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80189F14 00186D14  7C 08 03 A6 */	mtlr r0
/* 80189F18 00186D18  38 21 00 10 */	addi r1, r1, 0x10
/* 80189F1C 00186D1C  4E 80 00 20 */	blr 
