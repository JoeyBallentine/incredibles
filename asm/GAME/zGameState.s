.include "macros.inc"

.section .data

.global $$21040_0
$$21040_0:
	.incbin "baserom.dol", 0x306C58, 0x30

.section .sbss

.global gGameMode
gGameMode:
	.skip 0x4
.global gGameOstrich
gGameOstrich:
	.skip 0x4

.section .sdata

.global gGameState
gGameState:
	.incbin "baserom.dol", 0x32BFB0, 0x4
.global sGameMode_DispatchTable
sGameMode_DispatchTable:
	.incbin "baserom.dol", 0x32BFB4, 0x30
.global sGameState_DispatchTable
sGameState_DispatchTable:
	.incbin "baserom.dol", 0x32BFE4, 0x20
.global sPauseState_DispatchTable
sPauseState_DispatchTable:
	.incbin "baserom.dol", 0x32C004, 0x8
.global sSaveState_DispatchTable
sSaveState_DispatchTable:
	.incbin "baserom.dol", 0x32C00C, 0xC
.global sOptionsState_DispatchTable
sOptionsState_DispatchTable:
	.incbin "baserom.dol", 0x32C018, 0x4
.global sLoadState_DispatchTable
sLoadState_DispatchTable:
	.incbin "baserom.dol", 0x32C01C, 0xC
.global sTitleState_DispatchTable
sTitleState_DispatchTable:
	.incbin "baserom.dol", 0x32C028, 0x8
.global sIntroState_DispatchTable
sIntroState_DispatchTable:
	.incbin "baserom.dol", 0x32C030, 0x10
.global sGameState_DoDispatchTable
sGameState_DoDispatchTable:
	.incbin "baserom.dol", 0x32C040, 0x20
.global sPauseState_DoDispatchTable
sPauseState_DoDispatchTable:
	.incbin "baserom.dol", 0x32C060, 0x8
.global sSaveState_DoDispatchTable
sSaveState_DoDispatchTable:
	.incbin "baserom.dol", 0x32C068, 0xC
.global sOptionsState_DoDispatchTable
sOptionsState_DoDispatchTable:
	.incbin "baserom.dol", 0x32C074, 0x4
.global sLoadState_DoDispatchTable
sLoadState_DoDispatchTable:
	.incbin "baserom.dol", 0x32C078, 0xC
.global sTitleState_DoDispatchTable
sTitleState_DoDispatchTable:
	.incbin "baserom.dol", 0x32C084, 0x8
.global sIntroState_DoDispatchTable
sIntroState_DoDispatchTable:
	.incbin "baserom.dol", 0x32C08C, 0x14

.section .text

.global zGameStateGet__Fv
zGameStateGet__Fv:
/* 800CF7D8 000CC5D8  80 6D 8F F0 */	lwz r3, gGameState-_SDA_BASE_(r13)
/* 800CF7DC 000CC5DC  4E 80 00 20 */	blr 

.global zGameModeGet__Fv
zGameModeGet__Fv:
/* 800CF7E0 000CC5E0  80 6D C8 30 */	lwz r3, gGameMode-_SDA_BASE_(r13)
/* 800CF7E4 000CC5E4  4E 80 00 20 */	blr 

.global zGameGetOstrich__Fv
zGameGetOstrich__Fv:
/* 800CF7E8 000CC5E8  80 6D C8 34 */	lwz r3, gGameOstrich-_SDA_BASE_(r13)
/* 800CF7EC 000CC5EC  4E 80 00 20 */	blr 

.global zGameSetOstrich__F12_GameOstrich
zGameSetOstrich__F12_GameOstrich:
/* 800CF7F0 000CC5F0  90 6D C8 34 */	stw r3, gGameOstrich-_SDA_BASE_(r13)
/* 800CF7F4 000CC5F4  4E 80 00 20 */	blr 

.global zGameStateFindEvent__FPUiiiiPiPi
zGameStateFindEvent__FPUiiiiPiPi:
/* 800CF7F8 000CC5F8  39 40 00 00 */	li r10, 0
/* 800CF7FC 000CC5FC  39 20 00 00 */	li r9, 0
/* 800CF800 000CC600  7C 89 03 A6 */	mtctr r4
/* 800CF804 000CC604  2C 04 00 00 */	cmpwi r4, 0
/* 800CF808 000CC608  40 81 00 2C */	ble lbl_800CF834
lbl_800CF80C:
/* 800CF80C 000CC60C  7C 03 48 2E */	lwzx r0, r3, r9
/* 800CF810 000CC610  7C 06 00 40 */	cmplw r6, r0
/* 800CF814 000CC614  40 82 00 14 */	bne lbl_800CF828
/* 800CF818 000CC618  90 A7 00 00 */	stw r5, 0(r7)
/* 800CF81C 000CC61C  38 60 00 01 */	li r3, 1
/* 800CF820 000CC620  91 48 00 00 */	stw r10, 0(r8)
/* 800CF824 000CC624  4E 80 00 20 */	blr 
lbl_800CF828:
/* 800CF828 000CC628  39 4A 00 01 */	addi r10, r10, 1
/* 800CF82C 000CC62C  39 29 00 04 */	addi r9, r9, 4
/* 800CF830 000CC630  42 00 FF DC */	bdnz lbl_800CF80C
lbl_800CF834:
/* 800CF834 000CC634  38 60 00 00 */	li r3, 0
/* 800CF838 000CC638  4E 80 00 20 */	blr 

.global zGameStateSwitchEvent__Fi
zGameStateSwitchEvent__Fi:
/* 800CF83C 000CC63C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CF840 000CC640  7C 08 02 A6 */	mflr r0
/* 800CF844 000CC644  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CF848 000CC648  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 800CF84C 000CC64C  7C 7D 1B 78 */	mr r29, r3
/* 800CF850 000CC650  4B FF FF 91 */	bl zGameModeGet__Fv
/* 800CF854 000CC654  7C 7E 1B 78 */	mr r30, r3
/* 800CF858 000CC658  4B FF FF 81 */	bl zGameStateGet__Fv
/* 800CF85C 000CC65C  38 00 FF FF */	li r0, -1
/* 800CF860 000CC660  7C 7F 1B 78 */	mr r31, r3
/* 800CF864 000CC664  90 01 00 0C */	stw r0, 0xc(r1)
/* 800CF868 000CC668  7F A6 EB 78 */	mr r6, r29
/* 800CF86C 000CC66C  38 E1 00 0C */	addi r7, r1, 0xc
/* 800CF870 000CC670  39 01 00 08 */	addi r8, r1, 8
/* 800CF874 000CC674  90 01 00 08 */	stw r0, 8(r1)
/* 800CF878 000CC678  38 6D 90 80 */	addi r3, r13, sGameState_DoDispatchTable-_SDA_BASE_
/* 800CF87C 000CC67C  38 80 00 08 */	li r4, 8
/* 800CF880 000CC680  38 A0 00 0B */	li r5, 0xb
/* 800CF884 000CC684  4B FF FF 75 */	bl zGameStateFindEvent__FPUiiiiPiPi
/* 800CF888 000CC688  2C 03 00 00 */	cmpwi r3, 0
/* 800CF88C 000CC68C  40 82 00 D4 */	bne lbl_800CF960
/* 800CF890 000CC690  7F A6 EB 78 */	mr r6, r29
/* 800CF894 000CC694  38 E1 00 0C */	addi r7, r1, 0xc
/* 800CF898 000CC698  39 01 00 08 */	addi r8, r1, 8
/* 800CF89C 000CC69C  38 6D 90 A0 */	addi r3, r13, sPauseState_DoDispatchTable-_SDA_BASE_
/* 800CF8A0 000CC6A0  38 80 00 02 */	li r4, 2
/* 800CF8A4 000CC6A4  38 A0 00 07 */	li r5, 7
/* 800CF8A8 000CC6A8  4B FF FF 51 */	bl zGameStateFindEvent__FPUiiiiPiPi
/* 800CF8AC 000CC6AC  2C 03 00 00 */	cmpwi r3, 0
/* 800CF8B0 000CC6B0  40 82 00 B0 */	bne lbl_800CF960
/* 800CF8B4 000CC6B4  7F A6 EB 78 */	mr r6, r29
/* 800CF8B8 000CC6B8  38 E1 00 0C */	addi r7, r1, 0xc
/* 800CF8BC 000CC6BC  39 01 00 08 */	addi r8, r1, 8
/* 800CF8C0 000CC6C0  38 6D 90 A8 */	addi r3, r13, sSaveState_DoDispatchTable-_SDA_BASE_
/* 800CF8C4 000CC6C4  38 80 00 03 */	li r4, 3
/* 800CF8C8 000CC6C8  38 A0 00 06 */	li r5, 6
/* 800CF8CC 000CC6CC  4B FF FF 2D */	bl zGameStateFindEvent__FPUiiiiPiPi
/* 800CF8D0 000CC6D0  2C 03 00 00 */	cmpwi r3, 0
/* 800CF8D4 000CC6D4  40 82 00 8C */	bne lbl_800CF960
/* 800CF8D8 000CC6D8  7F A6 EB 78 */	mr r6, r29
/* 800CF8DC 000CC6DC  38 E1 00 0C */	addi r7, r1, 0xc
/* 800CF8E0 000CC6E0  39 01 00 08 */	addi r8, r1, 8
/* 800CF8E4 000CC6E4  38 6D 90 B4 */	addi r3, r13, sOptionsState_DoDispatchTable-_SDA_BASE_
/* 800CF8E8 000CC6E8  38 80 00 01 */	li r4, 1
/* 800CF8EC 000CC6EC  38 A0 00 05 */	li r5, 5
/* 800CF8F0 000CC6F0  4B FF FF 09 */	bl zGameStateFindEvent__FPUiiiiPiPi
/* 800CF8F4 000CC6F4  2C 03 00 00 */	cmpwi r3, 0
/* 800CF8F8 000CC6F8  40 82 00 68 */	bne lbl_800CF960
/* 800CF8FC 000CC6FC  7F A6 EB 78 */	mr r6, r29
/* 800CF900 000CC700  38 E1 00 0C */	addi r7, r1, 0xc
/* 800CF904 000CC704  39 01 00 08 */	addi r8, r1, 8
/* 800CF908 000CC708  38 6D 90 B8 */	addi r3, r13, sLoadState_DoDispatchTable-_SDA_BASE_
/* 800CF90C 000CC70C  38 80 00 03 */	li r4, 3
/* 800CF910 000CC710  38 A0 00 04 */	li r5, 4
/* 800CF914 000CC714  4B FF FE E5 */	bl zGameStateFindEvent__FPUiiiiPiPi
/* 800CF918 000CC718  2C 03 00 00 */	cmpwi r3, 0
/* 800CF91C 000CC71C  40 82 00 44 */	bne lbl_800CF960
/* 800CF920 000CC720  7F A6 EB 78 */	mr r6, r29
/* 800CF924 000CC724  38 E1 00 0C */	addi r7, r1, 0xc
/* 800CF928 000CC728  39 01 00 08 */	addi r8, r1, 8
/* 800CF92C 000CC72C  38 6D 90 C4 */	addi r3, r13, sTitleState_DoDispatchTable-_SDA_BASE_
/* 800CF930 000CC730  38 80 00 02 */	li r4, 2
/* 800CF934 000CC734  38 A0 00 02 */	li r5, 2
/* 800CF938 000CC738  4B FF FE C1 */	bl zGameStateFindEvent__FPUiiiiPiPi
/* 800CF93C 000CC73C  2C 03 00 00 */	cmpwi r3, 0
/* 800CF940 000CC740  40 82 00 20 */	bne lbl_800CF960
/* 800CF944 000CC744  7F A6 EB 78 */	mr r6, r29
/* 800CF948 000CC748  38 E1 00 0C */	addi r7, r1, 0xc
/* 800CF94C 000CC74C  39 01 00 08 */	addi r8, r1, 8
/* 800CF950 000CC750  38 6D 90 CC */	addi r3, r13, sIntroState_DoDispatchTable-_SDA_BASE_
/* 800CF954 000CC754  38 80 00 04 */	li r4, 4
/* 800CF958 000CC758  38 A0 00 01 */	li r5, 1
/* 800CF95C 000CC75C  4B FF FE 9D */	bl zGameStateFindEvent__FPUiiiiPiPi
lbl_800CF960:
/* 800CF960 000CC760  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800CF964 000CC764  7C 03 F0 00 */	cmpw r3, r30
/* 800CF968 000CC768  41 82 00 08 */	beq lbl_800CF970
/* 800CF96C 000CC76C  48 00 01 71 */	bl zGameModeSwitch__F9eGameMode
lbl_800CF970:
/* 800CF970 000CC770  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800CF974 000CC774  7C 00 F0 00 */	cmpw r0, r30
/* 800CF978 000CC778  40 82 00 10 */	bne lbl_800CF988
/* 800CF97C 000CC77C  80 01 00 08 */	lwz r0, 8(r1)
/* 800CF980 000CC780  7C 00 F8 00 */	cmpw r0, r31
/* 800CF984 000CC784  41 82 00 4C */	beq lbl_800CF9D0
lbl_800CF988:
/* 800CF988 000CC788  80 61 00 08 */	lwz r3, 8(r1)
/* 800CF98C 000CC78C  48 00 00 59 */	bl zGameStateSwitch__Fi
/* 800CF990 000CC790  80 01 00 08 */	lwz r0, 8(r1)
/* 800CF994 000CC794  2C 00 00 07 */	cmpwi r0, 7
/* 800CF998 000CC798  40 82 00 24 */	bne lbl_800CF9BC
/* 800CF99C 000CC79C  4B F9 02 B9 */	bl xSerialWipeMainBuffer__Fv
/* 800CF9A0 000CC7A0  4B F9 CE 01 */	bl IsPS2Demo__Fv
/* 800CF9A4 000CC7A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CF9A8 000CC7A8  41 82 00 14 */	beq lbl_800CF9BC
/* 800CF9AC 000CC7AC  80 6D 91 D0 */	lwz r3, xglobals-_SDA_BASE_(r13)
/* 800CF9B0 000CC7B0  38 00 00 01 */	li r0, 1
/* 800CF9B4 000CC7B4  80 63 04 D0 */	lwz r3, 0x4d0(r3)
/* 800CF9B8 000CC7B8  B0 03 00 30 */	sth r0, 0x30(r3)
lbl_800CF9BC:
/* 800CF9BC 000CC7BC  3C 60 80 38 */	lis r3, globals@ha
/* 800CF9C0 000CC7C0  38 00 00 00 */	li r0, 0
/* 800CF9C4 000CC7C4  38 63 2A 38 */	addi r3, r3, globals@l
/* 800CF9C8 000CC7C8  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 800CF9CC 000CC7CC  90 03 00 30 */	stw r0, 0x30(r3)
lbl_800CF9D0:
/* 800CF9D0 000CC7D0  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 800CF9D4 000CC7D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CF9D8 000CC7D8  7C 08 03 A6 */	mtlr r0
/* 800CF9DC 000CC7DC  38 21 00 20 */	addi r1, r1, 0x20
/* 800CF9E0 000CC7E0  4E 80 00 20 */	blr 

.global zGameStateSwitch__Fi
zGameStateSwitch__Fi:
/* 800CF9E4 000CC7E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CF9E8 000CC7E8  7C 08 02 A6 */	mflr r0
/* 800CF9EC 000CC7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CF9F0 000CC7F0  BF C1 00 08 */	stmw r30, 8(r1)
/* 800CF9F4 000CC7F4  7C 7E 1B 78 */	mr r30, r3
/* 800CF9F8 000CC7F8  2C 1E 00 01 */	cmpwi r30, 1
/* 800CF9FC 000CC7FC  3B E0 00 00 */	li r31, 0
/* 800CFA00 000CC800  80 0D 8F F0 */	lwz r0, gGameState-_SDA_BASE_(r13)
/* 800CFA04 000CC804  93 CD 8F F0 */	stw r30, gGameState-_SDA_BASE_(r13)
/* 800CFA08 000CC808  40 82 00 1C */	bne lbl_800CFA24
/* 800CFA0C 000CC80C  2C 00 00 00 */	cmpwi r0, 0
/* 800CFA10 000CC810  40 82 00 14 */	bne lbl_800CFA24
/* 800CFA14 000CC814  4B F9 EE 4D */	bl Get__15xTextureManagerFv
/* 800CFA18 000CC818  4B F9 F4 89 */	bl FreeMemory__15xTextureManagerFv
/* 800CFA1C 000CC81C  38 00 00 01 */	li r0, 1
/* 800CFA20 000CC820  90 0D 8E 28 */	stw r0, startPressed-_SDA_BASE_(r13)
lbl_800CFA24:
/* 800CFA24 000CC824  80 0D C8 30 */	lwz r0, gGameMode-_SDA_BASE_(r13)
/* 800CFA28 000CC828  28 00 00 0B */	cmplwi r0, 0xb
/* 800CFA2C 000CC82C  41 81 00 88 */	bgt lbl_800CFAB4
/* 800CFA30 000CC830  3C 60 80 31 */	lis r3, $$21040_0@ha
/* 800CFA34 000CC834  54 00 10 3A */	slwi r0, r0, 2
/* 800CFA38 000CC838  38 63 9C 58 */	addi r3, r3, $$21040_0@l
/* 800CFA3C 000CC83C  7C 03 00 2E */	lwzx r0, r3, r0
/* 800CFA40 000CC840  7C 09 03 A6 */	mtctr r0
/* 800CFA44 000CC844  4E 80 04 20 */	bctr 
/* 800CFA48 000CC848  57 C0 10 3A */	slwi r0, r30, 2
/* 800CFA4C 000CC84C  38 6D 90 70 */	addi r3, r13, sIntroState_DispatchTable-_SDA_BASE_
/* 800CFA50 000CC850  7F E3 00 2E */	lwzx r31, r3, r0
/* 800CFA54 000CC854  48 00 00 60 */	b lbl_800CFAB4
/* 800CFA58 000CC858  57 C0 10 3A */	slwi r0, r30, 2
/* 800CFA5C 000CC85C  38 6D 90 68 */	addi r3, r13, sTitleState_DispatchTable-_SDA_BASE_
/* 800CFA60 000CC860  7F E3 00 2E */	lwzx r31, r3, r0
/* 800CFA64 000CC864  48 00 00 50 */	b lbl_800CFAB4
/* 800CFA68 000CC868  57 C0 10 3A */	slwi r0, r30, 2
/* 800CFA6C 000CC86C  38 6D 90 5C */	addi r3, r13, sLoadState_DispatchTable-_SDA_BASE_
/* 800CFA70 000CC870  7F E3 00 2E */	lwzx r31, r3, r0
/* 800CFA74 000CC874  48 00 00 40 */	b lbl_800CFAB4
/* 800CFA78 000CC878  57 C0 10 3A */	slwi r0, r30, 2
/* 800CFA7C 000CC87C  38 6D 90 58 */	addi r3, r13, sOptionsState_DispatchTable-_SDA_BASE_
/* 800CFA80 000CC880  7F E3 00 2E */	lwzx r31, r3, r0
/* 800CFA84 000CC884  48 00 00 30 */	b lbl_800CFAB4
/* 800CFA88 000CC888  57 C0 10 3A */	slwi r0, r30, 2
/* 800CFA8C 000CC88C  38 6D 90 4C */	addi r3, r13, sSaveState_DispatchTable-_SDA_BASE_
/* 800CFA90 000CC890  7F E3 00 2E */	lwzx r31, r3, r0
/* 800CFA94 000CC894  48 00 00 20 */	b lbl_800CFAB4
/* 800CFA98 000CC898  57 C0 10 3A */	slwi r0, r30, 2
/* 800CFA9C 000CC89C  38 6D 90 44 */	addi r3, r13, sPauseState_DispatchTable-_SDA_BASE_
/* 800CFAA0 000CC8A0  7F E3 00 2E */	lwzx r31, r3, r0
/* 800CFAA4 000CC8A4  48 00 00 10 */	b lbl_800CFAB4
/* 800CFAA8 000CC8A8  57 C0 10 3A */	slwi r0, r30, 2
/* 800CFAAC 000CC8AC  38 6D 90 24 */	addi r3, r13, sGameState_DispatchTable-_SDA_BASE_
/* 800CFAB0 000CC8B0  7F E3 00 2E */	lwzx r31, r3, r0
lbl_800CFAB4:
/* 800CFAB4 000CC8B4  28 1F 00 00 */	cmplwi r31, 0
/* 800CFAB8 000CC8B8  41 82 00 10 */	beq lbl_800CFAC8
/* 800CFABC 000CC8BC  7F E3 FB 78 */	mr r3, r31
/* 800CFAC0 000CC8C0  38 80 00 1E */	li r4, 0x1e
/* 800CFAC4 000CC8C4  4B FE E3 99 */	bl zEntEventAllOfType__FUiUi
lbl_800CFAC8:
/* 800CFAC8 000CC8C8  BB C1 00 08 */	lmw r30, 8(r1)
/* 800CFACC 000CC8CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CFAD0 000CC8D0  7C 08 03 A6 */	mtlr r0
/* 800CFAD4 000CC8D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800CFAD8 000CC8D8  4E 80 00 20 */	blr 

.global zGameModeSwitch__F9eGameMode
zGameModeSwitch__F9eGameMode:
/* 800CFADC 000CC8DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CFAE0 000CC8E0  7C 08 02 A6 */	mflr r0
/* 800CFAE4 000CC8E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CFAE8 000CC8E8  BF C1 00 08 */	stmw r30, 8(r1)
/* 800CFAEC 000CC8EC  7C 7E 1B 78 */	mr r30, r3
/* 800CFAF0 000CC8F0  80 8D C8 30 */	lwz r4, gGameMode-_SDA_BASE_(r13)
/* 800CFAF4 000CC8F4  2C 04 00 0B */	cmpwi r4, 0xb
/* 800CFAF8 000CC8F8  40 82 00 0C */	bne lbl_800CFB04
/* 800CFAFC 000CC8FC  2C 1E 00 07 */	cmpwi r30, 7
/* 800CFB00 000CC900  41 82 00 14 */	beq lbl_800CFB14
lbl_800CFB04:
/* 800CFB04 000CC904  2C 04 00 0B */	cmpwi r4, 0xb
/* 800CFB08 000CC908  40 82 00 60 */	bne lbl_800CFB68
/* 800CFB0C 000CC90C  2C 1E 00 06 */	cmpwi r30, 6
/* 800CFB10 000CC910  40 82 00 58 */	bne lbl_800CFB68
lbl_800CFB14:
/* 800CFB14 000CC914  38 60 00 04 */	li r3, 4
/* 800CFB18 000CC918  38 80 00 01 */	li r4, 1
/* 800CFB1C 000CC91C  38 A0 00 01 */	li r5, 1
/* 800CFB20 000CC920  4B F9 6A C1 */	bl xSndMgrPauseSounds__Fsbb
/* 800CFB24 000CC924  38 60 00 02 */	li r3, 2
/* 800CFB28 000CC928  38 80 00 01 */	li r4, 1
/* 800CFB2C 000CC92C  38 A0 00 00 */	li r5, 0
/* 800CFB30 000CC930  4B F9 6A B1 */	bl xSndMgrPauseSounds__Fsbb
/* 800CFB34 000CC934  38 60 00 01 */	li r3, 1
/* 800CFB38 000CC938  38 80 00 01 */	li r4, 1
/* 800CFB3C 000CC93C  38 A0 00 01 */	li r5, 1
/* 800CFB40 000CC940  4B F9 6A A1 */	bl xSndMgrPauseSounds__Fsbb
/* 800CFB44 000CC944  38 60 00 00 */	li r3, 0
/* 800CFB48 000CC948  38 80 00 01 */	li r4, 1
/* 800CFB4C 000CC94C  38 A0 00 01 */	li r5, 1
/* 800CFB50 000CC950  4B F9 6A 91 */	bl xSndMgrPauseSounds__Fsbb
/* 800CFB54 000CC954  38 60 00 03 */	li r3, 3
/* 800CFB58 000CC958  38 80 00 01 */	li r4, 1
/* 800CFB5C 000CC95C  38 A0 00 01 */	li r5, 1
/* 800CFB60 000CC960  4B F9 6A 81 */	bl xSndMgrPauseSounds__Fsbb
/* 800CFB64 000CC964  48 00 00 A8 */	b lbl_800CFC0C
lbl_800CFB68:
/* 800CFB68 000CC968  38 04 FF FA */	addi r0, r4, -6
/* 800CFB6C 000CC96C  28 00 00 01 */	cmplwi r0, 1
/* 800CFB70 000CC970  40 81 00 0C */	ble lbl_800CFB7C
/* 800CFB74 000CC974  2C 04 00 04 */	cmpwi r4, 4
/* 800CFB78 000CC978  40 82 00 94 */	bne lbl_800CFC0C
lbl_800CFB7C:
/* 800CFB7C 000CC97C  2C 1E 00 0B */	cmpwi r30, 0xb
/* 800CFB80 000CC980  40 82 00 8C */	bne lbl_800CFC0C
/* 800CFB84 000CC984  3C 60 80 38 */	lis r3, globals@ha
/* 800CFB88 000CC988  80 0D CB 00 */	lwz r0, SCENE_ID_MNU_START-_SDA_BASE_(r13)
/* 800CFB8C 000CC98C  3B E3 2A 38 */	addi r31, r3, globals@l
/* 800CFB90 000CC990  80 7F 04 C8 */	lwz r3, 0x4c8(r31)
/* 800CFB94 000CC994  80 63 00 00 */	lwz r3, 0(r3)
/* 800CFB98 000CC998  7C 03 00 40 */	cmplw r3, r0
/* 800CFB9C 000CC99C  41 82 00 10 */	beq lbl_800CFBAC
/* 800CFBA0 000CC9A0  38 60 00 02 */	li r3, 2
/* 800CFBA4 000CC9A4  38 80 00 01 */	li r4, 1
/* 800CFBA8 000CC9A8  4B F9 68 FD */	bl xSndMgrStopSounds__Fsb
lbl_800CFBAC:
/* 800CFBAC 000CC9AC  80 7F 04 C8 */	lwz r3, 0x4c8(r31)
/* 800CFBB0 000CC9B0  80 03 00 68 */	lwz r0, 0x68(r3)
/* 800CFBB4 000CC9B4  28 00 00 00 */	cmplwi r0, 0
/* 800CFBB8 000CC9B8  40 82 00 54 */	bne lbl_800CFC0C
/* 800CFBBC 000CC9BC  38 60 00 04 */	li r3, 4
/* 800CFBC0 000CC9C0  38 80 00 00 */	li r4, 0
/* 800CFBC4 000CC9C4  38 A0 00 01 */	li r5, 1
/* 800CFBC8 000CC9C8  4B F9 6A 19 */	bl xSndMgrPauseSounds__Fsbb
/* 800CFBCC 000CC9CC  38 60 00 02 */	li r3, 2
/* 800CFBD0 000CC9D0  38 80 00 00 */	li r4, 0
/* 800CFBD4 000CC9D4  38 A0 00 01 */	li r5, 1
/* 800CFBD8 000CC9D8  4B F9 6A 09 */	bl xSndMgrPauseSounds__Fsbb
/* 800CFBDC 000CC9DC  38 60 00 01 */	li r3, 1
/* 800CFBE0 000CC9E0  38 80 00 00 */	li r4, 0
/* 800CFBE4 000CC9E4  38 A0 00 01 */	li r5, 1
/* 800CFBE8 000CC9E8  4B F9 69 F9 */	bl xSndMgrPauseSounds__Fsbb
/* 800CFBEC 000CC9EC  38 60 00 00 */	li r3, 0
/* 800CFBF0 000CC9F0  38 80 00 00 */	li r4, 0
/* 800CFBF4 000CC9F4  38 A0 00 01 */	li r5, 1
/* 800CFBF8 000CC9F8  4B F9 69 E9 */	bl xSndMgrPauseSounds__Fsbb
/* 800CFBFC 000CC9FC  38 60 00 03 */	li r3, 3
/* 800CFC00 000CCA00  38 80 00 00 */	li r4, 0
/* 800CFC04 000CCA04  38 A0 00 01 */	li r5, 1
/* 800CFC08 000CCA08  4B F9 69 D9 */	bl xSndMgrPauseSounds__Fsbb
lbl_800CFC0C:
/* 800CFC0C 000CCA0C  57 C0 10 3A */	slwi r0, r30, 2
/* 800CFC10 000CCA10  38 6D 8F F4 */	addi r3, r13, sGameMode_DispatchTable-_SDA_BASE_
/* 800CFC14 000CCA14  93 CD C8 30 */	stw r30, gGameMode-_SDA_BASE_(r13)
/* 800CFC18 000CCA18  38 80 00 1E */	li r4, 0x1e
/* 800CFC1C 000CCA1C  7C 63 00 2E */	lwzx r3, r3, r0
/* 800CFC20 000CCA20  4B FE E2 3D */	bl zEntEventAllOfType__FUiUi
/* 800CFC24 000CCA24  BB C1 00 08 */	lmw r30, 8(r1)
/* 800CFC28 000CCA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CFC2C 000CCA2C  7C 08 03 A6 */	mtlr r0
/* 800CFC30 000CCA30  38 21 00 10 */	addi r1, r1, 0x10
/* 800CFC34 000CCA34  4E 80 00 20 */	blr 
