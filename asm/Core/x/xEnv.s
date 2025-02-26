.include "macros.inc"

.section .sbss

.global gCurXEnv
gCurXEnv:
	.skip 0x8

.section .text

.global xEnvLoadJSPList__FP4xEnvi
xEnvLoadJSPList__FP4xEnvi:
/* 8002ECBC 0002BABC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8002ECC0 0002BAC0  7C 08 02 A6 */	mflr r0
/* 8002ECC4 0002BAC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8002ECC8 0002BAC8  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 8002ECCC 0002BACC  7C 9A 23 79 */	or. r26, r4, r4
/* 8002ECD0 0002BAD0  7C 79 1B 78 */	mr r25, r3
/* 8002ECD4 0002BAD4  40 82 00 AC */	bne lbl_8002ED80
/* 8002ECD8 0002BAD8  38 19 00 04 */	addi r0, r25, 4
/* 8002ECDC 0002BADC  3C 60 4A 53 */	lis r3, 0x4A535020@ha
/* 8002ECE0 0002BAE0  90 19 00 00 */	stw r0, 0(r25)
/* 8002ECE4 0002BAE4  38 63 50 20 */	addi r3, r3, 0x4A535020@l
/* 8002ECE8 0002BAE8  48 03 D6 65 */	bl xSTAssetCountByType__FUi
/* 8002ECEC 0002BAEC  7C 7E 1B 78 */	mr r30, r3
/* 8002ECF0 0002BAF0  80 79 00 00 */	lwz r3, 0(r25)
/* 8002ECF4 0002BAF4  7F C0 0E 70 */	srawi r0, r30, 1
/* 8002ECF8 0002BAF8  7F 44 D3 78 */	mr r4, r26
/* 8002ECFC 0002BAFC  7C A0 01 94 */	addze r5, r0
/* 8002ED00 0002BB00  48 04 51 D9 */	bl iEnvLoadBegin__FP4iEnvii
/* 8002ED04 0002BB04  3B 80 00 00 */	li r28, 0
/* 8002ED08 0002BB08  3B 60 00 00 */	li r27, 0
/* 8002ED0C 0002BB0C  3F E0 4A 53 */	lis r31, 0x4a53
/* 8002ED10 0002BB10  48 00 00 54 */	b lbl_8002ED64
lbl_8002ED14:
/* 8002ED14 0002BB14  7F 64 DB 78 */	mr r4, r27
/* 8002ED18 0002BB18  38 7F 50 20 */	addi r3, r31, 0x5020
/* 8002ED1C 0002BB1C  38 A1 00 08 */	addi r5, r1, 8
/* 8002ED20 0002BB20  48 03 D6 9D */	bl xSTFindAssetByType__FUiiPUi
/* 8002ED24 0002BB24  7C 7D 1B 78 */	mr r29, r3
/* 8002ED28 0002BB28  7F 64 DB 78 */	mr r4, r27
/* 8002ED2C 0002BB2C  38 7F 50 20 */	addi r3, r31, 0x5020
/* 8002ED30 0002BB30  38 A1 00 0C */	addi r5, r1, 0xc
/* 8002ED34 0002BB34  48 03 D7 C9 */	bl xSTGetAssetInfoByType__FUiiP15PKRAssetTOCInfo
/* 8002ED38 0002BB38  80 79 00 00 */	lwz r3, 0(r25)
/* 8002ED3C 0002BB3C  7F A5 EB 78 */	mr r5, r29
/* 8002ED40 0002BB40  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8002ED44 0002BB44  7F 47 D3 78 */	mr r7, r26
/* 8002ED48 0002BB48  80 C1 00 08 */	lwz r6, 8(r1)
/* 8002ED4C 0002BB4C  7F 88 E3 78 */	mr r8, r28
/* 8002ED50 0002BB50  48 04 52 69 */	bl iEnvLoadJSP__FP4iEnvUiPCvUiii
/* 8002ED54 0002BB54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8002ED58 0002BB58  41 82 00 08 */	beq lbl_8002ED60
/* 8002ED5C 0002BB5C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8002ED60:
/* 8002ED60 0002BB60  3B 7B 00 01 */	addi r27, r27, 1
lbl_8002ED64:
/* 8002ED64 0002BB64  7C 1B F0 00 */	cmpw r27, r30
/* 8002ED68 0002BB68  41 80 FF AC */	blt lbl_8002ED14
/* 8002ED6C 0002BB6C  80 79 00 00 */	lwz r3, 0(r25)
/* 8002ED70 0002BB70  7F 44 D3 78 */	mr r4, r26
/* 8002ED74 0002BB74  93 83 00 10 */	stw r28, 0x10(r3)
/* 8002ED78 0002BB78  80 79 00 00 */	lwz r3, 0(r25)
/* 8002ED7C 0002BB7C  48 04 55 A9 */	bl iEnvLoadEnd__FP4iEnvi
lbl_8002ED80:
/* 8002ED80 0002BB80  93 2D B8 80 */	stw r25, gCurXEnv-_SDA_BASE_(r13)
/* 8002ED84 0002BB84  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 8002ED88 0002BB88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8002ED8C 0002BB8C  7C 08 03 A6 */	mtlr r0
/* 8002ED90 0002BB90  38 21 00 50 */	addi r1, r1, 0x50
/* 8002ED94 0002BB94  4E 80 00 20 */	blr 

.global xEnvSetup__FP4xEnv
xEnvSetup__FP4xEnv:
/* 8002ED98 0002BB98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002ED9C 0002BB9C  7C 08 02 A6 */	mflr r0
/* 8002EDA0 0002BBA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002EDA4 0002BBA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002EDA8 0002BBA8  7C 7F 1B 78 */	mr r31, r3
/* 8002EDAC 0002BBAC  80 63 00 00 */	lwz r3, 0(r3)
/* 8002EDB0 0002BBB0  48 04 58 35 */	bl iEnvSetup__FP4iEnv
/* 8002EDB4 0002BBB4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8002EDB8 0002BBB8  48 04 56 31 */	bl iEnvDefaultLighting__FP4iEnv
/* 8002EDBC 0002BBBC  38 00 00 00 */	li r0, 0
/* 8002EDC0 0002BBC0  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8002EDC4 0002BBC4  93 ED B8 80 */	stw r31, gCurXEnv-_SDA_BASE_(r13)
/* 8002EDC8 0002BBC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002EDCC 0002BBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002EDD0 0002BBD0  7C 08 03 A6 */	mtlr r0
/* 8002EDD4 0002BBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8002EDD8 0002BBD8  4E 80 00 20 */	blr 

.global xEnvFree__FP4xEnv
xEnvFree__FP4xEnv:
/* 8002EDDC 0002BBDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002EDE0 0002BBE0  7C 08 02 A6 */	mflr r0
/* 8002EDE4 0002BBE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002EDE8 0002BBE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002EDEC 0002BBEC  7C 7F 1B 78 */	mr r31, r3
/* 8002EDF0 0002BBF0  80 63 00 00 */	lwz r3, 0(r3)
/* 8002EDF4 0002BBF4  28 03 00 00 */	cmplwi r3, 0
/* 8002EDF8 0002BBF8  41 82 00 10 */	beq lbl_8002EE08
/* 8002EDFC 0002BBFC  48 04 55 81 */	bl iEnvFree__FP4iEnv
/* 8002EE00 0002BC00  38 00 00 00 */	li r0, 0
/* 8002EE04 0002BC04  90 1F 00 00 */	stw r0, 0(r31)
lbl_8002EE08:
/* 8002EE08 0002BC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002EE0C 0002BC0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002EE10 0002BC10  7C 08 03 A6 */	mtlr r0
/* 8002EE14 0002BC14  38 21 00 10 */	addi r1, r1, 0x10
/* 8002EE18 0002BC18  4E 80 00 20 */	blr 

.global xEnvRender__FP4xEnvb
xEnvRender__FP4xEnvb:
/* 8002EE1C 0002BC1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002EE20 0002BC20  7C 08 02 A6 */	mflr r0
/* 8002EE24 0002BC24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002EE28 0002BC28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002EE2C 0002BC2C  7C 7F 1B 78 */	mr r31, r3
/* 8002EE30 0002BC30  80 63 00 00 */	lwz r3, 0(r3)
/* 8002EE34 0002BC34  28 03 00 00 */	cmplwi r3, 0
/* 8002EE38 0002BC38  41 82 00 08 */	beq lbl_8002EE40
/* 8002EE3C 0002BC3C  48 04 57 B1 */	bl iEnvRender__FP4iEnvb
lbl_8002EE40:
/* 8002EE40 0002BC40  80 7F 00 00 */	lwz r3, 0(r31)
/* 8002EE44 0002BC44  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8002EE48 0002BC48  2C 00 00 00 */	cmpwi r0, 0
/* 8002EE4C 0002BC4C  40 81 00 24 */	ble lbl_8002EE70
/* 8002EE50 0002BC50  7C 09 03 A6 */	mtctr r0
/* 8002EE54 0002BC54  40 81 00 08 */	ble lbl_8002EE5C
lbl_8002EE58:
/* 8002EE58 0002BC58  42 00 00 00 */	bdnz lbl_8002EE58
lbl_8002EE5C:
/* 8002EE5C 0002BC5C  2C 00 00 01 */	cmpwi r0, 1
/* 8002EE60 0002BC60  40 82 00 10 */	bne lbl_8002EE70
/* 8002EE64 0002BC64  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8002EE68 0002BC68  38 00 00 01 */	li r0, 1
/* 8002EE6C 0002BC6C  90 03 00 00 */	stw r0, 0(r3)
lbl_8002EE70:
/* 8002EE70 0002BC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002EE74 0002BC74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002EE78 0002BC78  7C 08 03 A6 */	mtlr r0
/* 8002EE7C 0002BC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002EE80 0002BC80  4E 80 00 20 */	blr 
