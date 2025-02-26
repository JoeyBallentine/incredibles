.include "macros.inc"

.section .bss

.global mPad
mPad:
	.skip 0x4E0

.section .sdata2

.global $$2936_1
$$2936_1:
	.incbin "baserom.dol", 0x32F230, 0x4
.global $$2937_0
$$2937_0:
	.incbin "baserom.dol", 0x32F234, 0x4
.global $$21011_1
$$21011_1:
	.incbin "baserom.dol", 0x32F238, 0x4
.global $$21012_0
$$21012_0:
	.incbin "baserom.dol", 0x32F23C, 0x4
.global $$21040_1
$$21040_1:
	.incbin "baserom.dol", 0x32F240, 0x8

.section .text

.global xPadInit__Fv
xPadInit__Fv:
/* 8004F890 0004C690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004F894 0004C694  7C 08 02 A6 */	mflr r0
/* 8004F898 0004C698  3C 60 80 34 */	lis r3, mPad@ha
/* 8004F89C 0004C69C  38 80 00 00 */	li r4, 0
/* 8004F8A0 0004C6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004F8A4 0004C6A4  38 63 46 90 */	addi r3, r3, mPad@l
/* 8004F8A8 0004C6A8  38 A0 04 E0 */	li r5, 0x4e0
/* 8004F8AC 0004C6AC  4B FB 38 55 */	bl memset
/* 8004F8B0 0004C6B0  48 02 BF 45 */	bl iPadInit__Fv
/* 8004F8B4 0004C6B4  30 03 FF FF */	addic r0, r3, -1
/* 8004F8B8 0004C6B8  7C 60 19 10 */	subfe r3, r0, r3
/* 8004F8BC 0004C6BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004F8C0 0004C6C0  7C 08 03 A6 */	mtlr r0
/* 8004F8C4 0004C6C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004F8C8 0004C6C8  4E 80 00 20 */	blr 

.global xPadEnable__Fi
xPadEnable__Fi:
/* 8004F8CC 0004C6CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004F8D0 0004C6D0  7C 08 02 A6 */	mflr r0
/* 8004F8D4 0004C6D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004F8D8 0004C6D8  BF C1 00 08 */	stmw r30, 8(r1)
/* 8004F8DC 0004C6DC  7C 7E 1B 78 */	mr r30, r3
/* 8004F8E0 0004C6E0  1C 9E 01 38 */	mulli r4, r30, 0x138
/* 8004F8E4 0004C6E4  3C 60 80 34 */	lis r3, mPad@ha
/* 8004F8E8 0004C6E8  38 03 46 90 */	addi r0, r3, mPad@l
/* 8004F8EC 0004C6EC  7C 60 22 14 */	add r3, r0, r4
/* 8004F8F0 0004C6F0  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8004F8F4 0004C6F4  2C 00 00 00 */	cmpwi r0, 0
/* 8004F8F8 0004C6F8  41 82 00 08 */	beq lbl_8004F900
/* 8004F8FC 0004C6FC  48 00 00 2C */	b lbl_8004F928
lbl_8004F900:
/* 8004F900 0004C700  2C 1E 00 00 */	cmpwi r30, 0
/* 8004F904 0004C704  41 82 00 08 */	beq lbl_8004F90C
/* 8004F908 0004C708  48 00 00 20 */	b lbl_8004F928
lbl_8004F90C:
/* 8004F90C 0004C70C  7F C4 07 34 */	extsh r4, r30
/* 8004F910 0004C710  48 02 BF 41 */	bl iPadEnable__FP8_tagxPads
/* 8004F914 0004C714  7C 7F 1B 78 */	mr r31, r3
/* 8004F918 0004C718  7F C3 F3 78 */	mr r3, r30
/* 8004F91C 0004C71C  38 80 00 01 */	li r4, 1
/* 8004F920 0004C720  48 00 00 1D */	bl xPadRumbleEnable__Fii
/* 8004F924 0004C724  7F E3 FB 78 */	mr r3, r31
lbl_8004F928:
/* 8004F928 0004C728  BB C1 00 08 */	lmw r30, 8(r1)
/* 8004F92C 0004C72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004F930 0004C730  7C 08 03 A6 */	mtlr r0
/* 8004F934 0004C734  38 21 00 10 */	addi r1, r1, 0x10
/* 8004F938 0004C738  4E 80 00 20 */	blr 

.global xPadRumbleEnable__Fii
xPadRumbleEnable__Fii:
/* 8004F93C 0004C73C  1C A3 01 38 */	mulli r5, r3, 0x138
/* 8004F940 0004C740  3C 60 80 34 */	lis r3, mPad@ha
/* 8004F944 0004C744  38 03 46 90 */	addi r0, r3, mPad@l
/* 8004F948 0004C748  7C A0 2A 14 */	add r5, r0, r5
/* 8004F94C 0004C74C  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 8004F950 0004C750  2C 00 00 02 */	cmpwi r0, 2
/* 8004F954 0004C754  41 82 00 08 */	beq lbl_8004F95C
/* 8004F958 0004C758  38 80 00 00 */	li r4, 0
lbl_8004F95C:
/* 8004F95C 0004C75C  2C 04 00 00 */	cmpwi r4, 0
/* 8004F960 0004C760  41 82 00 1C */	beq lbl_8004F97C
/* 8004F964 0004C764  80 65 00 40 */	lwz r3, 0x40(r5)
/* 8004F968 0004C768  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8004F96C 0004C76C  4D 82 00 20 */	beqlr 
/* 8004F970 0004C770  60 60 00 08 */	ori r0, r3, 8
/* 8004F974 0004C774  90 05 00 40 */	stw r0, 0x40(r5)
/* 8004F978 0004C778  4E 80 00 20 */	blr 
lbl_8004F97C:
/* 8004F97C 0004C77C  80 65 00 40 */	lwz r3, 0x40(r5)
/* 8004F980 0004C780  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8004F984 0004C784  4D 82 00 20 */	beqlr 
/* 8004F988 0004C788  68 60 00 08 */	xori r0, r3, 8
/* 8004F98C 0004C78C  90 05 00 40 */	stw r0, 0x40(r5)
/* 8004F990 0004C790  4E 80 00 20 */	blr 

.global xPadUpdate__Fif
xPadUpdate__Fif:
/* 8004F994 0004C794  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8004F998 0004C798  7C 08 02 A6 */	mflr r0
/* 8004F99C 0004C79C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8004F9A0 0004C7A0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8004F9A4 0004C7A4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8004F9A8 0004C7A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8004F9AC 0004C7AC  38 00 00 00 */	li r0, 0
/* 8004F9B0 0004C7B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8004F9B4 0004C7B4  FF E0 08 90 */	fmr f31, f1
/* 8004F9B8 0004C7B8  90 01 00 08 */	stw r0, 8(r1)
/* 8004F9BC 0004C7BC  41 82 00 0C */	beq lbl_8004F9C8
/* 8004F9C0 0004C7C0  38 60 00 00 */	li r3, 0
/* 8004F9C4 0004C7C4  48 00 02 A4 */	b lbl_8004FC68
lbl_8004F9C8:
/* 8004F9C8 0004C7C8  48 10 B2 4D */	bl zScene_ScreenAdjustMode__Fv
/* 8004F9CC 0004C7CC  28 03 00 00 */	cmplwi r3, 0
/* 8004F9D0 0004C7D0  41 82 00 14 */	beq lbl_8004F9E4
/* 8004F9D4 0004C7D4  7F E3 FB 78 */	mr r3, r31
/* 8004F9D8 0004C7D8  38 80 00 00 */	li r4, 0
/* 8004F9DC 0004C7DC  48 00 05 19 */	bl xPadAnalogIsDigital__Fii
/* 8004F9E0 0004C7E0  48 00 00 38 */	b lbl_8004FA18
lbl_8004F9E4:
/* 8004F9E4 0004C7E4  48 09 3A F5 */	bl zMenuRunning__Fv
/* 8004F9E8 0004C7E8  2C 03 00 00 */	cmpwi r3, 0
/* 8004F9EC 0004C7EC  40 82 00 10 */	bne lbl_8004F9FC
/* 8004F9F0 0004C7F0  48 07 E5 89 */	bl zGameIsPaused__Fv
/* 8004F9F4 0004C7F4  2C 03 00 00 */	cmpwi r3, 0
/* 8004F9F8 0004C7F8  41 82 00 14 */	beq lbl_8004FA0C
lbl_8004F9FC:
/* 8004F9FC 0004C7FC  7F E3 FB 78 */	mr r3, r31
/* 8004FA00 0004C800  38 80 00 01 */	li r4, 1
/* 8004FA04 0004C804  48 00 04 F1 */	bl xPadAnalogIsDigital__Fii
/* 8004FA08 0004C808  48 00 00 10 */	b lbl_8004FA18
lbl_8004FA0C:
/* 8004FA0C 0004C80C  7F E3 FB 78 */	mr r3, r31
/* 8004FA10 0004C810  38 80 00 00 */	li r4, 0
/* 8004FA14 0004C814  48 00 04 E1 */	bl xPadAnalogIsDigital__Fii
lbl_8004FA18:
/* 8004FA18 0004C818  1C BF 01 38 */	mulli r5, r31, 0x138
/* 8004FA1C 0004C81C  3C 60 80 34 */	lis r3, mPad@ha
/* 8004FA20 0004C820  38 81 00 08 */	addi r4, r1, 8
/* 8004FA24 0004C824  38 03 46 90 */	addi r0, r3, mPad@l
/* 8004FA28 0004C828  7F E0 2A 14 */	add r31, r0, r5
/* 8004FA2C 0004C82C  7F E3 FB 78 */	mr r3, r31
/* 8004FA30 0004C830  48 02 BF 11 */	bl iPadUpdate__FP8_tagxPadPUi
/* 8004FA34 0004C834  2C 03 00 00 */	cmpwi r3, 0
/* 8004FA38 0004C838  40 82 00 18 */	bne lbl_8004FA50
/* 8004FA3C 0004C83C  38 00 00 00 */	li r0, 0
/* 8004FA40 0004C840  38 60 00 01 */	li r3, 1
/* 8004FA44 0004C844  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8004FA48 0004C848  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8004FA4C 0004C84C  48 00 02 1C */	b lbl_8004FC68
lbl_8004FA50:
/* 8004FA50 0004C850  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8004FA54 0004C854  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8004FA58 0004C858  41 82 00 A0 */	beq lbl_8004FAF8
/* 8004FA5C 0004C85C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8004FA60 0004C860  41 82 00 98 */	beq lbl_8004FAF8
/* 8004FA64 0004C864  88 1F 00 38 */	lbz r0, 0x38(r31)
/* 8004FA68 0004C868  38 60 00 00 */	li r3, 0
/* 8004FA6C 0004C86C  7C 00 07 74 */	extsb r0, r0
/* 8004FA70 0004C870  2C 00 00 32 */	cmpwi r0, 0x32
/* 8004FA74 0004C874  41 80 00 0C */	blt lbl_8004FA80
/* 8004FA78 0004C878  60 63 00 20 */	ori r3, r3, 0x20
/* 8004FA7C 0004C87C  48 00 00 10 */	b lbl_8004FA8C
lbl_8004FA80:
/* 8004FA80 0004C880  2C 00 FF CE */	cmpwi r0, -50
/* 8004FA84 0004C884  41 81 00 08 */	bgt lbl_8004FA8C
/* 8004FA88 0004C888  60 63 00 80 */	ori r3, r3, 0x80
lbl_8004FA8C:
/* 8004FA8C 0004C88C  88 1F 00 39 */	lbz r0, 0x39(r31)
/* 8004FA90 0004C890  7C 00 07 74 */	extsb r0, r0
/* 8004FA94 0004C894  2C 00 00 32 */	cmpwi r0, 0x32
/* 8004FA98 0004C898  41 80 00 0C */	blt lbl_8004FAA4
/* 8004FA9C 0004C89C  60 63 00 40 */	ori r3, r3, 0x40
/* 8004FAA0 0004C8A0  48 00 00 10 */	b lbl_8004FAB0
lbl_8004FAA4:
/* 8004FAA4 0004C8A4  2C 00 FF CE */	cmpwi r0, -50
/* 8004FAA8 0004C8A8  41 81 00 08 */	bgt lbl_8004FAB0
/* 8004FAAC 0004C8AC  60 63 00 10 */	ori r3, r3, 0x10
lbl_8004FAB0:
/* 8004FAB0 0004C8B0  28 03 00 00 */	cmplwi r3, 0
/* 8004FAB4 0004C8B4  40 82 00 10 */	bne lbl_8004FAC4
/* 8004FAB8 0004C8B8  C0 02 8B 50 */	lfs f0, $$2936_1-_SDA2_BASE_(r2)
/* 8004FABC 0004C8BC  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8004FAC0 0004C8C0  48 00 00 38 */	b lbl_8004FAF8
lbl_8004FAC4:
/* 8004FAC4 0004C8C4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8004FAC8 0004C8C8  C0 02 8B 50 */	lfs f0, $$2936_1-_SDA2_BASE_(r2)
/* 8004FACC 0004C8CC  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8004FAD0 0004C8D0  D0 3F 00 4C */	stfs f1, 0x4c(r31)
/* 8004FAD4 0004C8D4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8004FAD8 0004C8D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004FADC 0004C8DC  4C 40 13 82 */	cror 2, 0, 2
/* 8004FAE0 0004C8E0  40 82 00 18 */	bne lbl_8004FAF8
/* 8004FAE4 0004C8E4  80 01 00 08 */	lwz r0, 8(r1)
/* 8004FAE8 0004C8E8  C0 02 8B 54 */	lfs f0, $$2937_0-_SDA2_BASE_(r2)
/* 8004FAEC 0004C8EC  7C 00 1B 78 */	or r0, r0, r3
/* 8004FAF0 0004C8F0  90 01 00 08 */	stw r0, 8(r1)
/* 8004FAF4 0004C8F4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
lbl_8004FAF8:
/* 8004FAF8 0004C8F8  80 A1 00 08 */	lwz r5, 8(r1)
/* 8004FAFC 0004C8FC  38 00 00 16 */	li r0, 0x16
/* 8004FB00 0004C900  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8004FB04 0004C904  38 C0 00 00 */	li r6, 0
/* 8004FB08 0004C908  38 60 00 00 */	li r3, 0
/* 8004FB0C 0004C90C  7C A4 20 78 */	andc r4, r5, r4
/* 8004FB10 0004C910  90 9F 00 30 */	stw r4, 0x30(r31)
/* 8004FB14 0004C914  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8004FB18 0004C918  7C 84 28 78 */	andc r4, r4, r5
/* 8004FB1C 0004C91C  90 9F 00 34 */	stw r4, 0x34(r31)
/* 8004FB20 0004C920  90 BF 00 2C */	stw r5, 0x2c(r31)
/* 8004FB24 0004C924  7C 09 03 A6 */	mtctr r0
lbl_8004FB28:
/* 8004FB28 0004C928  38 00 00 01 */	li r0, 1
/* 8004FB2C 0004C92C  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8004FB30 0004C930  7C 05 30 30 */	slw r5, r0, r6
/* 8004FB34 0004C934  7C 80 28 39 */	and. r0, r4, r5
/* 8004FB38 0004C938  41 82 00 14 */	beq lbl_8004FB4C
/* 8004FB3C 0004C93C  C0 02 8B 50 */	lfs f0, $$2936_1-_SDA2_BASE_(r2)
/* 8004FB40 0004C940  38 03 00 B0 */	addi r0, r3, 0xb0
/* 8004FB44 0004C944  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8004FB48 0004C948  48 00 00 1C */	b lbl_8004FB64
lbl_8004FB4C:
/* 8004FB4C 0004C94C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8004FB50 0004C950  7C 00 28 39 */	and. r0, r0, r5
/* 8004FB54 0004C954  41 82 00 10 */	beq lbl_8004FB64
/* 8004FB58 0004C958  C0 02 8B 50 */	lfs f0, $$2936_1-_SDA2_BASE_(r2)
/* 8004FB5C 0004C95C  38 03 00 58 */	addi r0, r3, 0x58
/* 8004FB60 0004C960  7C 1F 05 2E */	stfsx f0, r31, r0
lbl_8004FB64:
/* 8004FB64 0004C964  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8004FB68 0004C968  7C 00 28 39 */	and. r0, r0, r5
/* 8004FB6C 0004C96C  41 82 00 18 */	beq lbl_8004FB84
/* 8004FB70 0004C970  38 03 00 B0 */	addi r0, r3, 0xb0
/* 8004FB74 0004C974  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8004FB78 0004C978  EC 00 F8 2A */	fadds f0, f0, f31
/* 8004FB7C 0004C97C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8004FB80 0004C980  48 00 00 14 */	b lbl_8004FB94
lbl_8004FB84:
/* 8004FB84 0004C984  38 03 00 58 */	addi r0, r3, 0x58
/* 8004FB88 0004C988  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8004FB8C 0004C98C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8004FB90 0004C990  7C 1F 05 2E */	stfsx f0, r31, r0
lbl_8004FB94:
/* 8004FB94 0004C994  38 C6 00 01 */	addi r6, r6, 1
/* 8004FB98 0004C998  38 63 00 04 */	addi r3, r3, 4
/* 8004FB9C 0004C99C  42 00 FF 8C */	bdnz lbl_8004FB28
/* 8004FBA0 0004C9A0  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8004FBA4 0004C9A4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8004FBA8 0004C9A8  41 82 00 BC */	beq lbl_8004FC64
/* 8004FBAC 0004C9AC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8004FBB0 0004C9B0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8004FBB4 0004C9B4  40 82 00 28 */	bne lbl_8004FBDC
/* 8004FBB8 0004C9B8  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8004FBBC 0004C9BC  40 82 00 20 */	bne lbl_8004FBDC
/* 8004FBC0 0004C9C0  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8004FBC4 0004C9C4  40 82 00 18 */	bne lbl_8004FBDC
/* 8004FBC8 0004C9C8  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8004FBCC 0004C9CC  40 82 00 10 */	bne lbl_8004FBDC
/* 8004FBD0 0004C9D0  C0 02 8B 50 */	lfs f0, $$2936_1-_SDA2_BASE_(r2)
/* 8004FBD4 0004C9D4  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8004FBD8 0004C9D8  48 00 00 8C */	b lbl_8004FC64
lbl_8004FBDC:
/* 8004FBDC 0004C9DC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8004FBE0 0004C9E0  C0 02 8B 50 */	lfs f0, $$2936_1-_SDA2_BASE_(r2)
/* 8004FBE4 0004C9E4  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8004FBE8 0004C9E8  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 8004FBEC 0004C9EC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8004FBF0 0004C9F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004FBF4 0004C9F4  4C 40 13 82 */	cror 2, 0, 2
/* 8004FBF8 0004C9F8  40 82 00 6C */	bne lbl_8004FC64
/* 8004FBFC 0004C9FC  C0 02 8B 54 */	lfs f0, $$2937_0-_SDA2_BASE_(r2)
/* 8004FC00 0004CA00  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8004FC04 0004CA04  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8004FC08 0004CA08  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8004FC0C 0004CA0C  41 82 00 14 */	beq lbl_8004FC20
/* 8004FC10 0004CA10  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8004FC14 0004CA14  60 00 00 10 */	ori r0, r0, 0x10
/* 8004FC18 0004CA18  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8004FC1C 0004CA1C  48 00 00 18 */	b lbl_8004FC34
lbl_8004FC20:
/* 8004FC20 0004CA20  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8004FC24 0004CA24  41 82 00 10 */	beq lbl_8004FC34
/* 8004FC28 0004CA28  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8004FC2C 0004CA2C  60 00 00 40 */	ori r0, r0, 0x40
/* 8004FC30 0004CA30  90 1F 00 30 */	stw r0, 0x30(r31)
lbl_8004FC34:
/* 8004FC34 0004CA34  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8004FC38 0004CA38  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8004FC3C 0004CA3C  41 82 00 14 */	beq lbl_8004FC50
/* 8004FC40 0004CA40  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8004FC44 0004CA44  60 00 00 80 */	ori r0, r0, 0x80
/* 8004FC48 0004CA48  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8004FC4C 0004CA4C  48 00 00 18 */	b lbl_8004FC64
lbl_8004FC50:
/* 8004FC50 0004CA50  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8004FC54 0004CA54  41 82 00 10 */	beq lbl_8004FC64
/* 8004FC58 0004CA58  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8004FC5C 0004CA5C  60 00 00 20 */	ori r0, r0, 0x20
/* 8004FC60 0004CA60  90 1F 00 30 */	stw r0, 0x30(r31)
lbl_8004FC64:
/* 8004FC64 0004CA64  38 60 00 01 */	li r3, 1
lbl_8004FC68:
/* 8004FC68 0004CA68  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8004FC6C 0004CA6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8004FC70 0004CA70  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8004FC74 0004CA74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8004FC78 0004CA78  7C 08 03 A6 */	mtlr r0
/* 8004FC7C 0004CA7C  38 21 00 30 */	addi r1, r1, 0x30
/* 8004FC80 0004CA80  4E 80 00 20 */	blr 

.global xPadNormalizeAnalog__FR8_tagxPadii
xPadNormalizeAnalog__FR8_tagxPadii:
/* 8004FC84 0004CA84  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8004FC88 0004CA88  7C 08 02 A6 */	mflr r0
/* 8004FC8C 0004CA8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8004FC90 0004CA90  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8004FC94 0004CA94  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8004FC98 0004CA98  BE 81 00 10 */	stmw r20, 0x10(r1)
/* 8004FC9C 0004CA9C  7C 74 1B 78 */	mr r20, r3
/* 8004FCA0 0004CAA0  7C 95 23 78 */	mr r21, r4
/* 8004FCA4 0004CAA4  7C B6 2B 78 */	mr r22, r5
/* 8004FCA8 0004CAA8  C3 E2 8B 50 */	lfs f31, $$2936_1-_SDA2_BASE_(r2)
/* 8004FCAC 0004CAAC  3B 14 00 38 */	addi r24, r20, 0x38
/* 8004FCB0 0004CAB0  7F B5 00 D0 */	neg r29, r21
/* 8004FCB4 0004CAB4  7F 96 00 D0 */	neg r28, r22
/* 8004FCB8 0004CAB8  3A E0 00 00 */	li r23, 0
/* 8004FCBC 0004CABC  3B E0 00 00 */	li r31, 0
/* 8004FCC0 0004CAC0  3B C0 00 00 */	li r30, 0
lbl_8004FCC4:
/* 8004FCC4 0004CAC4  7F 78 F2 14 */	add r27, r24, r30
/* 8004FCC8 0004CAC8  7F 84 E3 78 */	mr r4, r28
/* 8004FCCC 0004CACC  88 7B 00 00 */	lbz r3, 0(r27)
/* 8004FCD0 0004CAD0  7E C5 B3 78 */	mr r5, r22
/* 8004FCD4 0004CAD4  7F A7 EB 78 */	mr r7, r29
/* 8004FCD8 0004CAD8  7E A8 AB 78 */	mr r8, r21
/* 8004FCDC 0004CADC  7C 63 07 74 */	extsb r3, r3
/* 8004FCE0 0004CAE0  38 C0 00 00 */	li r6, 0
/* 8004FCE4 0004CAE4  48 00 01 21 */	bl normalize_analog__Fiiiiii
/* 8004FCE8 0004CAE8  7F 54 FA 14 */	add r26, r20, r31
/* 8004FCEC 0004CAEC  7F 84 E3 78 */	mr r4, r28
/* 8004FCF0 0004CAF0  D0 3A 01 08 */	stfs f1, 0x108(r26)
/* 8004FCF4 0004CAF4  7E C5 B3 78 */	mr r5, r22
/* 8004FCF8 0004CAF8  7F A7 EB 78 */	mr r7, r29
/* 8004FCFC 0004CAFC  7E A8 AB 78 */	mr r8, r21
/* 8004FD00 0004CB00  88 7B 00 01 */	lbz r3, 1(r27)
/* 8004FD04 0004CB04  38 C0 00 00 */	li r6, 0
/* 8004FD08 0004CB08  7C 63 07 74 */	extsb r3, r3
/* 8004FD0C 0004CB0C  48 00 00 F9 */	bl normalize_analog__Fiiiiii
/* 8004FD10 0004CB10  D0 3A 01 0C */	stfs f1, 0x10c(r26)
/* 8004FD14 0004CB14  C0 3A 01 08 */	lfs f1, 0x108(r26)
/* 8004FD18 0004CB18  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 8004FD1C 0004CB1C  40 82 00 30 */	bne lbl_8004FD4C
/* 8004FD20 0004CB20  C0 1A 01 0C */	lfs f0, 0x10c(r26)
/* 8004FD24 0004CB24  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8004FD28 0004CB28  40 82 00 24 */	bne lbl_8004FD4C
/* 8004FD2C 0004CB2C  FC 40 F8 90 */	fmr f2, f31
/* 8004FD30 0004CB30  D3 FA 01 18 */	stfs f31, 0x118(r26)
/* 8004FD34 0004CB34  C0 22 8B 58 */	lfs f1, $$21011_1-_SDA2_BASE_(r2)
/* 8004FD38 0004CB38  38 7A 01 10 */	addi r3, r26, 0x110
/* 8004FD3C 0004CB3C  4B FC 06 0D */	bl assign__5xVec2Fff
/* 8004FD40 0004CB40  C0 02 8B 50 */	lfs f0, $$2936_1-_SDA2_BASE_(r2)
/* 8004FD44 0004CB44  D0 1A 01 1C */	stfs f0, 0x11c(r26)
/* 8004FD48 0004CB48  48 00 00 8C */	b lbl_8004FDD4
lbl_8004FD4C:
/* 8004FD4C 0004CB4C  C0 02 8B 58 */	lfs f0, $$21011_1-_SDA2_BASE_(r2)
/* 8004FD50 0004CB50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004FD54 0004CB54  40 81 00 0C */	ble lbl_8004FD60
/* 8004FD58 0004CB58  D0 1A 01 08 */	stfs f0, 0x108(r26)
/* 8004FD5C 0004CB5C  48 00 00 14 */	b lbl_8004FD70
lbl_8004FD60:
/* 8004FD60 0004CB60  C0 02 8B 5C */	lfs f0, $$21012_0-_SDA2_BASE_(r2)
/* 8004FD64 0004CB64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004FD68 0004CB68  40 80 00 08 */	bge lbl_8004FD70
/* 8004FD6C 0004CB6C  D0 1A 01 08 */	stfs f0, 0x108(r26)
lbl_8004FD70:
/* 8004FD70 0004CB70  C0 3A 01 0C */	lfs f1, 0x10c(r26)
/* 8004FD74 0004CB74  C0 02 8B 58 */	lfs f0, $$21011_1-_SDA2_BASE_(r2)
/* 8004FD78 0004CB78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004FD7C 0004CB7C  40 81 00 0C */	ble lbl_8004FD88
/* 8004FD80 0004CB80  D0 1A 01 0C */	stfs f0, 0x10c(r26)
/* 8004FD84 0004CB84  48 00 00 14 */	b lbl_8004FD98
lbl_8004FD88:
/* 8004FD88 0004CB88  C0 02 8B 5C */	lfs f0, $$21012_0-_SDA2_BASE_(r2)
/* 8004FD8C 0004CB8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004FD90 0004CB90  40 80 00 08 */	bge lbl_8004FD98
/* 8004FD94 0004CB94  D0 1A 01 0C */	stfs f0, 0x10c(r26)
lbl_8004FD98:
/* 8004FD98 0004CB98  3B 7A 01 08 */	addi r27, r26, 0x108
/* 8004FD9C 0004CB9C  7F 63 DB 78 */	mr r3, r27
/* 8004FDA0 0004CBA0  4B FC 08 49 */	bl length__5xVec2CFv
/* 8004FDA4 0004CBA4  3B 3A 01 10 */	addi r25, r26, 0x110
/* 8004FDA8 0004CBA8  D0 3A 01 18 */	stfs f1, 0x118(r26)
/* 8004FDAC 0004CBAC  7F 23 CB 78 */	mr r3, r25
/* 8004FDB0 0004CBB0  7F 64 DB 78 */	mr r4, r27
/* 8004FDB4 0004CBB4  4B FC 09 19 */	bl __as__5xVec2FRC5xVec2
/* 8004FDB8 0004CBB8  C0 3A 01 18 */	lfs f1, 0x118(r26)
/* 8004FDBC 0004CBBC  7F 23 CB 78 */	mr r3, r25
/* 8004FDC0 0004CBC0  4B FC 08 E9 */	bl __adv__5xVec2Ff
/* 8004FDC4 0004CBC4  C0 3A 01 14 */	lfs f1, 0x114(r26)
/* 8004FDC8 0004CBC8  C0 5A 01 10 */	lfs f2, 0x110(r26)
/* 8004FDCC 0004CBCC  4B FC 01 45 */	bl xatan2__Fff
/* 8004FDD0 0004CBD0  D0 3A 01 1C */	stfs f1, 0x11c(r26)
lbl_8004FDD4:
/* 8004FDD4 0004CBD4  3A F7 00 01 */	addi r23, r23, 1
/* 8004FDD8 0004CBD8  3B DE 00 02 */	addi r30, r30, 2
/* 8004FDDC 0004CBDC  2C 17 00 02 */	cmpwi r23, 2
/* 8004FDE0 0004CBE0  3B FF 00 18 */	addi r31, r31, 0x18
/* 8004FDE4 0004CBE4  41 80 FE E0 */	blt lbl_8004FCC4
/* 8004FDE8 0004CBE8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8004FDEC 0004CBEC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8004FDF0 0004CBF0  BA 81 00 10 */	lmw r20, 0x10(r1)
/* 8004FDF4 0004CBF4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8004FDF8 0004CBF8  7C 08 03 A6 */	mtlr r0
/* 8004FDFC 0004CBFC  38 21 00 50 */	addi r1, r1, 0x50
/* 8004FE00 0004CC00  4E 80 00 20 */	blr 

.global normalize_analog__Fiiiiii
normalize_analog__Fiiiiii:
/* 8004FE04 0004CC04  7C 03 30 00 */	cmpw r3, r6
/* 8004FE08 0004CC08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004FE0C 0004CC0C  41 81 00 64 */	bgt lbl_8004FE70
/* 8004FE10 0004CC10  7C 03 38 00 */	cmpw r3, r7
/* 8004FE14 0004CC14  41 80 00 0C */	blt lbl_8004FE20
/* 8004FE18 0004CC18  C0 22 8B 50 */	lfs f1, $$2936_1-_SDA2_BASE_(r2)
/* 8004FE1C 0004CC1C  48 00 00 B0 */	b lbl_8004FECC
lbl_8004FE20:
/* 8004FE20 0004CC20  7C 03 20 00 */	cmpw r3, r4
/* 8004FE24 0004CC24  41 81 00 0C */	bgt lbl_8004FE30
/* 8004FE28 0004CC28  C0 22 8B 5C */	lfs f1, $$21012_0-_SDA2_BASE_(r2)
/* 8004FE2C 0004CC2C  48 00 00 A0 */	b lbl_8004FECC
lbl_8004FE30:
/* 8004FE30 0004CC30  7C A7 18 50 */	subf r5, r7, r3
/* 8004FE34 0004CC34  7C 04 38 50 */	subf r0, r4, r7
/* 8004FE38 0004CC38  3C 60 43 30 */	lis r3, 0x4330
/* 8004FE3C 0004CC3C  C8 42 8B 60 */	lfd f2, $$21040_1-_SDA2_BASE_(r2)
/* 8004FE40 0004CC40  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 8004FE44 0004CC44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8004FE48 0004CC48  90 81 00 0C */	stw r4, 0xc(r1)
/* 8004FE4C 0004CC4C  90 61 00 08 */	stw r3, 8(r1)
/* 8004FE50 0004CC50  C8 01 00 08 */	lfd f0, 8(r1)
/* 8004FE54 0004CC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FE58 0004CC58  EC 20 10 28 */	fsubs f1, f0, f2
/* 8004FE5C 0004CC5C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8004FE60 0004CC60  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8004FE64 0004CC64  EC 00 10 28 */	fsubs f0, f0, f2
/* 8004FE68 0004CC68  EC 21 00 24 */	fdivs f1, f1, f0
/* 8004FE6C 0004CC6C  48 00 00 60 */	b lbl_8004FECC
lbl_8004FE70:
/* 8004FE70 0004CC70  7C 03 40 00 */	cmpw r3, r8
/* 8004FE74 0004CC74  41 81 00 0C */	bgt lbl_8004FE80
/* 8004FE78 0004CC78  C0 22 8B 50 */	lfs f1, $$2936_1-_SDA2_BASE_(r2)
/* 8004FE7C 0004CC7C  48 00 00 50 */	b lbl_8004FECC
lbl_8004FE80:
/* 8004FE80 0004CC80  7C 03 28 00 */	cmpw r3, r5
/* 8004FE84 0004CC84  41 80 00 0C */	blt lbl_8004FE90
/* 8004FE88 0004CC88  C0 22 8B 58 */	lfs f1, $$21011_1-_SDA2_BASE_(r2)
/* 8004FE8C 0004CC8C  48 00 00 40 */	b lbl_8004FECC
lbl_8004FE90:
/* 8004FE90 0004CC90  7C 88 18 50 */	subf r4, r8, r3
/* 8004FE94 0004CC94  7C 08 28 50 */	subf r0, r8, r5
/* 8004FE98 0004CC98  3C 60 43 30 */	lis r3, 0x4330
/* 8004FE9C 0004CC9C  C8 42 8B 60 */	lfd f2, $$21040_1-_SDA2_BASE_(r2)
/* 8004FEA0 0004CCA0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8004FEA4 0004CCA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8004FEA8 0004CCA8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004FEAC 0004CCAC  90 61 00 10 */	stw r3, 0x10(r1)
/* 8004FEB0 0004CCB0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8004FEB4 0004CCB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004FEB8 0004CCB8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8004FEBC 0004CCBC  90 61 00 08 */	stw r3, 8(r1)
/* 8004FEC0 0004CCC0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8004FEC4 0004CCC4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8004FEC8 0004CCC8  EC 21 00 24 */	fdivs f1, f1, f0
lbl_8004FECC:
/* 8004FECC 0004CCCC  38 21 00 20 */	addi r1, r1, 0x20
/* 8004FED0 0004CCD0  4E 80 00 20 */	blr 

.global xPadKill__Fv
xPadKill__Fv:
/* 8004FED4 0004CCD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FED8 0004CCD8  7C 08 02 A6 */	mflr r0
/* 8004FEDC 0004CCDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FEE0 0004CCE0  48 02 C1 89 */	bl iPadKill__Fv
/* 8004FEE4 0004CCE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004FEE8 0004CCE8  7C 08 03 A6 */	mtlr r0
/* 8004FEEC 0004CCEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8004FEF0 0004CCF0  4E 80 00 20 */	blr 

.global xPadAnalogIsDigital__Fii
xPadAnalogIsDigital__Fii:
/* 8004FEF4 0004CCF4  2C 03 00 00 */	cmpwi r3, 0
/* 8004FEF8 0004CCF8  4C 82 00 20 */	bnelr 
/* 8004FEFC 0004CCFC  1C A3 01 38 */	mulli r5, r3, 0x138
/* 8004FF00 0004CD00  3C 60 80 34 */	lis r3, mPad@ha
/* 8004FF04 0004CD04  2C 04 00 00 */	cmpwi r4, 0
/* 8004FF08 0004CD08  38 03 46 90 */	addi r0, r3, mPad@l
/* 8004FF0C 0004CD0C  7C 60 2A 14 */	add r3, r0, r5
/* 8004FF10 0004CD10  41 82 00 14 */	beq lbl_8004FF24
/* 8004FF14 0004CD14  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8004FF18 0004CD18  60 00 00 10 */	ori r0, r0, 0x10
/* 8004FF1C 0004CD1C  90 03 00 40 */	stw r0, 0x40(r3)
/* 8004FF20 0004CD20  48 00 00 10 */	b lbl_8004FF30
lbl_8004FF24:
/* 8004FF24 0004CD24  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8004FF28 0004CD28  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8004FF2C 0004CD2C  90 03 00 40 */	stw r0, 0x40(r3)
lbl_8004FF30:
/* 8004FF30 0004CD30  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 8004FF34 0004CD34  C0 02 8B 54 */	lfs f0, $$2937_0-_SDA2_BASE_(r2)
/* 8004FF38 0004CD38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004FF3C 0004CD3C  4C 41 13 82 */	cror 2, 1, 2
/* 8004FF40 0004CD40  40 82 00 08 */	bne lbl_8004FF48
/* 8004FF44 0004CD44  D0 03 00 4C */	stfs f0, 0x4c(r3)
lbl_8004FF48:
/* 8004FF48 0004CD48  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8004FF4C 0004CD4C  C0 02 8B 54 */	lfs f0, $$2937_0-_SDA2_BASE_(r2)
/* 8004FF50 0004CD50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004FF54 0004CD54  4C 41 13 82 */	cror 2, 1, 2
/* 8004FF58 0004CD58  40 82 00 08 */	bne lbl_8004FF60
/* 8004FF5C 0004CD5C  D0 03 00 50 */	stfs f0, 0x50(r3)
lbl_8004FF60:
/* 8004FF60 0004CD60  C0 23 00 54 */	lfs f1, 0x54(r3)
/* 8004FF64 0004CD64  C0 02 8B 54 */	lfs f0, $$2937_0-_SDA2_BASE_(r2)
/* 8004FF68 0004CD68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004FF6C 0004CD6C  4C 41 13 82 */	cror 2, 1, 2
/* 8004FF70 0004CD70  4C 82 00 20 */	bnelr 
/* 8004FF74 0004CD74  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 8004FF78 0004CD78  4E 80 00 20 */	blr 
