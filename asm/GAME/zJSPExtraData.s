.include "macros.inc"

.section .bss

.global sJspGroupPairs__13zJSPExtraData
sJspGroupPairs__13zJSPExtraData:
	.skip 0xA0

.section .sbss

.global sNumPairs__13zJSPExtraData
sNumPairs__13zJSPExtraData:
	.skip 0x8

.section .text

.global ShowAssociatedGroup__13zJSPExtraDataFUib
ShowAssociatedGroup__13zJSPExtraDataFUib:
/* 801DEEE8 001DBCE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DEEEC 001DBCEC  7C 08 02 A6 */	mflr r0
/* 801DEEF0 001DBCF0  3C A0 80 3A */	lis r5, sJspGroupPairs__13zJSPExtraData@ha
/* 801DEEF4 001DBCF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DEEF8 001DBCF8  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 801DEEFC 001DBCFC  7C 79 1B 78 */	mr r25, r3
/* 801DEF00 001DBD00  7C 9A 23 78 */	mr r26, r4
/* 801DEF04 001DBD04  3B 60 00 00 */	li r27, 0
/* 801DEF08 001DBD08  3B C5 F5 D8 */	addi r30, r5, sJspGroupPairs__13zJSPExtraData@l
/* 801DEF0C 001DBD0C  3B E0 00 00 */	li r31, 0
/* 801DEF10 001DBD10  48 00 00 B0 */	b lbl_801DEFC0
lbl_801DEF14:
/* 801DEF14 001DBD14  7F BE FA 14 */	add r29, r30, r31
/* 801DEF18 001DBD18  80 1D 00 00 */	lwz r0, 0(r29)
/* 801DEF1C 001DBD1C  7C 19 00 40 */	cmplw r25, r0
/* 801DEF20 001DBD20  40 82 00 98 */	bne lbl_801DEFB8
/* 801DEF24 001DBD24  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801DEF28 001DBD28  41 82 00 4C */	beq lbl_801DEF74
/* 801DEF2C 001DBD2C  3B 9D 00 08 */	addi r28, r29, 8
/* 801DEF30 001DBD30  80 1D 00 08 */	lwz r0, 8(r29)
/* 801DEF34 001DBD34  28 00 00 00 */	cmplwi r0, 0
/* 801DEF38 001DBD38  40 82 00 18 */	bne lbl_801DEF50
/* 801DEF3C 001DBD3C  80 7D 00 04 */	lwz r3, 4(r29)
/* 801DEF40 001DBD40  28 03 00 00 */	cmplwi r3, 0
/* 801DEF44 001DBD44  41 82 00 0C */	beq lbl_801DEF50
/* 801DEF48 001DBD48  4B F7 B7 95 */	bl zSceneFindObject__FUi
/* 801DEF4C 001DBD4C  90 7C 00 00 */	stw r3, 0(r28)
lbl_801DEF50:
/* 801DEF50 001DBD50  80 7C 00 00 */	lwz r3, 0(r28)
/* 801DEF54 001DBD54  28 03 00 00 */	cmplwi r3, 0
/* 801DEF58 001DBD58  41 82 00 0C */	beq lbl_801DEF64
/* 801DEF5C 001DBD5C  38 80 02 D8 */	li r4, 0x2d8
/* 801DEF60 001DBD60  4B E4 AD 51 */	bl zEntEvent__FP5xBaseUi
lbl_801DEF64:
/* 801DEF64 001DBD64  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801DEF68 001DBD68  38 80 00 26 */	li r4, 0x26
/* 801DEF6C 001DBD6C  4B E4 AD 45 */	bl zEntEvent__FP5xBaseUi
/* 801DEF70 001DBD70  48 00 00 48 */	b lbl_801DEFB8
lbl_801DEF74:
/* 801DEF74 001DBD74  3B 9D 00 08 */	addi r28, r29, 8
/* 801DEF78 001DBD78  80 1D 00 08 */	lwz r0, 8(r29)
/* 801DEF7C 001DBD7C  28 00 00 00 */	cmplwi r0, 0
/* 801DEF80 001DBD80  40 82 00 18 */	bne lbl_801DEF98
/* 801DEF84 001DBD84  80 7D 00 04 */	lwz r3, 4(r29)
/* 801DEF88 001DBD88  28 03 00 00 */	cmplwi r3, 0
/* 801DEF8C 001DBD8C  41 82 00 0C */	beq lbl_801DEF98
/* 801DEF90 001DBD90  4B F7 B7 4D */	bl zSceneFindObject__FUi
/* 801DEF94 001DBD94  90 7C 00 00 */	stw r3, 0(r28)
lbl_801DEF98:
/* 801DEF98 001DBD98  80 7C 00 00 */	lwz r3, 0(r28)
/* 801DEF9C 001DBD9C  28 03 00 00 */	cmplwi r3, 0
/* 801DEFA0 001DBDA0  41 82 00 0C */	beq lbl_801DEFAC
/* 801DEFA4 001DBDA4  38 80 02 D7 */	li r4, 0x2d7
/* 801DEFA8 001DBDA8  4B E4 AD 09 */	bl zEntEvent__FP5xBaseUi
lbl_801DEFAC:
/* 801DEFAC 001DBDAC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801DEFB0 001DBDB0  38 80 00 27 */	li r4, 0x27
/* 801DEFB4 001DBDB4  4B E4 AC FD */	bl zEntEvent__FP5xBaseUi
lbl_801DEFB8:
/* 801DEFB8 001DBDB8  3B 7B 00 01 */	addi r27, r27, 1
/* 801DEFBC 001DBDBC  3B FF 00 10 */	addi r31, r31, 0x10
lbl_801DEFC0:
/* 801DEFC0 001DBDC0  80 0D DB B0 */	lwz r0, sNumPairs__13zJSPExtraData-_SDA_BASE_(r13)
/* 801DEFC4 001DBDC4  7C 1B 00 00 */	cmpw r27, r0
/* 801DEFC8 001DBDC8  41 80 FF 4C */	blt lbl_801DEF14
/* 801DEFCC 001DBDCC  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 801DEFD0 001DBDD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DEFD4 001DBDD4  7C 08 03 A6 */	mtlr r0
/* 801DEFD8 001DBDD8  38 21 00 30 */	addi r1, r1, 0x30
/* 801DEFDC 001DBDDC  4E 80 00 20 */	blr 

.global AddPair__13zJSPExtraDataFUiUiP13zJSPExtraData
AddPair__13zJSPExtraDataFUiUiP13zJSPExtraData:
/* 801DEFE0 001DBDE0  81 0D DB B0 */	lwz r8, sNumPairs__13zJSPExtraData-_SDA_BASE_(r13)
/* 801DEFE4 001DBDE4  3C C0 80 3A */	lis r6, sJspGroupPairs__13zJSPExtraData@ha
/* 801DEFE8 001DBDE8  38 E6 F5 D8 */	addi r7, r6, sJspGroupPairs__13zJSPExtraData@l
/* 801DEFEC 001DBDEC  38 C0 00 00 */	li r6, 0
/* 801DEFF0 001DBDF0  55 09 20 36 */	slwi r9, r8, 4
/* 801DEFF4 001DBDF4  38 08 00 01 */	addi r0, r8, 1
/* 801DEFF8 001DBDF8  7C 67 49 2E */	stwx r3, r7, r9
/* 801DEFFC 001DBDFC  7C 67 4A 14 */	add r3, r7, r9
/* 801DF000 001DBE00  90 83 00 04 */	stw r4, 4(r3)
/* 801DF004 001DBE04  90 C3 00 08 */	stw r6, 8(r3)
/* 801DF008 001DBE08  90 A3 00 0C */	stw r5, 0xc(r3)
/* 801DF00C 001DBE0C  90 0D DB B0 */	stw r0, sNumPairs__13zJSPExtraData-_SDA_BASE_(r13)
/* 801DF010 001DBE10  4E 80 00 20 */	blr 

.global Load__13zJSPExtraDataFR5xBaseR9xDynAssetUl
Load__13zJSPExtraDataFR5xBaseR9xDynAssetUl:
/* 801DF014 001DBE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DF018 001DBE18  7C 08 02 A6 */	mflr r0
/* 801DF01C 001DBE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DF020 001DBE20  48 00 00 15 */	bl LoadPrivate__13zJSPExtraDataFRCQ213zJSPExtraData18zJSPExtraDataAsset
/* 801DF024 001DBE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DF028 001DBE28  7C 08 03 A6 */	mtlr r0
/* 801DF02C 001DBE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DF030 001DBE30  4E 80 00 20 */	blr 

.global LoadPrivate__13zJSPExtraDataFRCQ213zJSPExtraData18zJSPExtraDataAsset
LoadPrivate__13zJSPExtraDataFRCQ213zJSPExtraData18zJSPExtraDataAsset:
/* 801DF034 001DBE34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DF038 001DBE38  7C 08 02 A6 */	mflr r0
/* 801DF03C 001DBE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DF040 001DBE40  BF C1 00 08 */	stmw r30, 8(r1)
/* 801DF044 001DBE44  7C 7E 1B 78 */	mr r30, r3
/* 801DF048 001DBE48  7C 9F 23 78 */	mr r31, r4
/* 801DF04C 001DBE4C  4B E2 D4 55 */	bl xBaseInit__FP5xBasePC10xBaseAsset
/* 801DF050 001DBE50  88 1E 00 05 */	lbz r0, 5(r30)
/* 801DF054 001DBE54  28 00 00 00 */	cmplwi r0, 0
/* 801DF058 001DBE58  41 82 00 10 */	beq lbl_801DF068
/* 801DF05C 001DBE5C  38 1F 00 18 */	addi r0, r31, 0x18
/* 801DF060 001DBE60  90 1E 00 08 */	stw r0, 8(r30)
/* 801DF064 001DBE64  48 00 00 0C */	b lbl_801DF070
lbl_801DF068:
/* 801DF068 001DBE68  38 00 00 00 */	li r0, 0
/* 801DF06C 001DBE6C  90 1E 00 08 */	stw r0, 8(r30)
lbl_801DF070:
/* 801DF070 001DBE70  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801DF074 001DBE74  7F C5 F3 78 */	mr r5, r30
/* 801DF078 001DBE78  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801DF07C 001DBE7C  4B FF FF 65 */	bl AddPair__13zJSPExtraDataFUiUiP13zJSPExtraData
/* 801DF080 001DBE80  BB C1 00 08 */	lmw r30, 8(r1)
/* 801DF084 001DBE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DF088 001DBE88  7C 08 03 A6 */	mtlr r0
/* 801DF08C 001DBE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DF090 001DBE90  4E 80 00 20 */	blr 
