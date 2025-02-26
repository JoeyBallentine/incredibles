.include "macros.inc"

.section .rodata

.global $$2stringBase0_13
$$2stringBase0_13:
	.incbin "baserom.dol", 0x2CEDD0, 0x10

.section .text

.global TrimWhitespace__FPc
TrimWhitespace__FPc:
/* 8003F2A0 0003C0A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003F2A4 0003C0A4  7C 08 02 A6 */	mflr r0
/* 8003F2A8 0003C0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F2AC 0003C0AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003F2B0 0003C0B0  7C 7F 1B 78 */	mr r31, r3
/* 8003F2B4 0003C0B4  48 00 00 08 */	b lbl_8003F2BC
lbl_8003F2B8:
/* 8003F2B8 0003C0B8  3B FF 00 01 */	addi r31, r31, 1
lbl_8003F2BC:
/* 8003F2BC 0003C0BC  88 7F 00 00 */	lbz r3, 0(r31)
/* 8003F2C0 0003C0C0  7C 60 07 74 */	extsb r0, r3
/* 8003F2C4 0003C0C4  2C 00 00 20 */	cmpwi r0, 0x20
/* 8003F2C8 0003C0C8  41 82 FF F0 */	beq lbl_8003F2B8
/* 8003F2CC 0003C0CC  2C 00 00 09 */	cmpwi r0, 9
/* 8003F2D0 0003C0D0  41 82 FF E8 */	beq lbl_8003F2B8
/* 8003F2D4 0003C0D4  7C 60 07 75 */	extsb. r0, r3
/* 8003F2D8 0003C0D8  40 82 00 0C */	bne lbl_8003F2E4
/* 8003F2DC 0003C0DC  7F E3 FB 78 */	mr r3, r31
/* 8003F2E0 0003C0E0  48 00 00 40 */	b lbl_8003F320
lbl_8003F2E4:
/* 8003F2E4 0003C0E4  7F E3 FB 78 */	mr r3, r31
/* 8003F2E8 0003C0E8  48 27 D2 C5 */	bl strlen
/* 8003F2EC 0003C0EC  7C 83 FA 14 */	add r4, r3, r31
/* 8003F2F0 0003C0F0  38 84 FF FF */	addi r4, r4, -1
/* 8003F2F4 0003C0F4  48 00 00 08 */	b lbl_8003F2FC
lbl_8003F2F8:
/* 8003F2F8 0003C0F8  38 84 FF FF */	addi r4, r4, -1
lbl_8003F2FC:
/* 8003F2FC 0003C0FC  88 04 00 00 */	lbz r0, 0(r4)
/* 8003F300 0003C100  7C 00 07 74 */	extsb r0, r0
/* 8003F304 0003C104  2C 00 00 20 */	cmpwi r0, 0x20
/* 8003F308 0003C108  41 82 FF F0 */	beq lbl_8003F2F8
/* 8003F30C 0003C10C  2C 00 00 09 */	cmpwi r0, 9
/* 8003F310 0003C110  41 82 FF E8 */	beq lbl_8003F2F8
/* 8003F314 0003C114  38 00 00 00 */	li r0, 0
/* 8003F318 0003C118  7F E3 FB 78 */	mr r3, r31
/* 8003F31C 0003C11C  98 04 00 01 */	stb r0, 1(r4)
lbl_8003F320:
/* 8003F320 0003C120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003F324 0003C124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003F328 0003C128  7C 08 03 A6 */	mtlr r0
/* 8003F32C 0003C12C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003F330 0003C130  4E 80 00 20 */	blr 

.global xIniParse__FPci
xIniParse__FPci:
/* 8003F334 0003C134  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003F338 0003C138  7C 08 02 A6 */	mflr r0
/* 8003F33C 0003C13C  38 A0 00 01 */	li r5, 1
/* 8003F340 0003C140  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003F344 0003C144  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8003F348 0003C148  7C 9B 23 79 */	or. r27, r4, r4
/* 8003F34C 0003C14C  7C 7A 1B 78 */	mr r26, r3
/* 8003F350 0003C150  3B E0 00 01 */	li r31, 1
/* 8003F354 0003C154  3B C0 00 00 */	li r30, 0
/* 8003F358 0003C158  3B A0 FF FF */	li r29, -1
/* 8003F35C 0003C15C  38 80 00 00 */	li r4, 0
/* 8003F360 0003C160  7F 69 03 A6 */	mtctr r27
/* 8003F364 0003C164  40 81 00 58 */	ble lbl_8003F3BC
lbl_8003F368:
/* 8003F368 0003C168  88 03 00 00 */	lbz r0, 0(r3)
/* 8003F36C 0003C16C  7C 00 07 74 */	extsb r0, r0
/* 8003F370 0003C170  2C 00 00 0D */	cmpwi r0, 0xd
/* 8003F374 0003C174  41 82 00 2C */	beq lbl_8003F3A0
/* 8003F378 0003C178  40 80 00 10 */	bge lbl_8003F388
/* 8003F37C 0003C17C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8003F380 0003C180  41 82 00 14 */	beq lbl_8003F394
/* 8003F384 0003C184  48 00 00 2C */	b lbl_8003F3B0
lbl_8003F388:
/* 8003F388 0003C188  2C 00 00 5B */	cmpwi r0, 0x5b
/* 8003F38C 0003C18C  41 82 00 20 */	beq lbl_8003F3AC
/* 8003F390 0003C190  48 00 00 20 */	b lbl_8003F3B0
lbl_8003F394:
/* 8003F394 0003C194  7C 9D 23 78 */	mr r29, r4
/* 8003F398 0003C198  38 A5 00 01 */	addi r5, r5, 1
/* 8003F39C 0003C19C  48 00 00 14 */	b lbl_8003F3B0
lbl_8003F3A0:
/* 8003F3A0 0003C1A0  7C 9D 23 78 */	mr r29, r4
/* 8003F3A4 0003C1A4  3B FF 00 01 */	addi r31, r31, 1
/* 8003F3A8 0003C1A8  48 00 00 08 */	b lbl_8003F3B0
lbl_8003F3AC:
/* 8003F3AC 0003C1AC  3B DE 00 01 */	addi r30, r30, 1
lbl_8003F3B0:
/* 8003F3B0 0003C1B0  38 84 00 01 */	addi r4, r4, 1
/* 8003F3B4 0003C1B4  38 63 00 01 */	addi r3, r3, 1
/* 8003F3B8 0003C1B8  42 00 FF B0 */	bdnz lbl_8003F368
lbl_8003F3BC:
/* 8003F3BC 0003C1BC  7C 05 F8 00 */	cmpw r5, r31
/* 8003F3C0 0003C1C0  40 81 00 08 */	ble lbl_8003F3C8
/* 8003F3C4 0003C1C4  7C BF 2B 78 */	mr r31, r5
lbl_8003F3C8:
/* 8003F3C8 0003C1C8  80 6D E6 54 */	lwz r3, RwEngineInstance-_SDA_BASE_(r13)
/* 8003F3CC 0003C1CC  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 8003F3D0 0003C1D0  57 E4 18 38 */	slwi r4, r31, 3
/* 8003F3D4 0003C1D4  81 83 01 08 */	lwz r12, 0x108(r3)
/* 8003F3D8 0003C1D8  7C 7D D8 50 */	subf r3, r29, r27
/* 8003F3DC 0003C1DC  7C 04 02 14 */	add r0, r4, r0
/* 8003F3E0 0003C1E0  38 80 00 00 */	li r4, 0
/* 8003F3E4 0003C1E4  7C 60 1A 14 */	add r3, r0, r3
/* 8003F3E8 0003C1E8  7D 89 03 A6 */	mtctr r12
/* 8003F3EC 0003C1EC  38 63 02 14 */	addi r3, r3, 0x214
/* 8003F3F0 0003C1F0  4E 80 04 21 */	bctrl 
/* 8003F3F4 0003C1F4  38 E0 00 00 */	li r7, 0
/* 8003F3F8 0003C1F8  7C 7C 1B 78 */	mr r28, r3
/* 8003F3FC 0003C1FC  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8003F400 0003C200  38 1D 00 01 */	addi r0, r29, 1
/* 8003F404 0003C204  7F 60 D8 50 */	subf r27, r0, r27
/* 8003F408 0003C208  7C 9D D2 14 */	add r4, r29, r26
/* 8003F40C 0003C20C  90 E3 00 00 */	stw r7, 0(r3)
/* 8003F410 0003C210  38 DC 02 14 */	addi r6, r28, 0x214
/* 8003F414 0003C214  57 E3 18 38 */	slwi r3, r31, 3
/* 8003F418 0003C218  7F 65 DB 78 */	mr r5, r27
/* 8003F41C 0003C21C  90 FC 00 04 */	stw r7, 4(r28)
/* 8003F420 0003C220  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 8003F424 0003C224  38 84 00 01 */	addi r4, r4, 1
/* 8003F428 0003C228  90 DC 00 08 */	stw r6, 8(r28)
/* 8003F42C 0003C22C  80 DC 00 08 */	lwz r6, 8(r28)
/* 8003F430 0003C230  7C 66 1A 14 */	add r3, r6, r3
/* 8003F434 0003C234  90 7C 00 0C */	stw r3, 0xc(r28)
/* 8003F438 0003C238  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8003F43C 0003C23C  7F C3 02 14 */	add r30, r3, r0
/* 8003F440 0003C240  7F C3 F3 78 */	mr r3, r30
/* 8003F444 0003C244  48 27 D0 6D */	bl strncpy
/* 8003F448 0003C248  38 00 00 00 */	li r0, 0
/* 8003F44C 0003C24C  2C 1D 00 00 */	cmpwi r29, 0
/* 8003F450 0003C250  7C 1E D9 AE */	stbx r0, r30, r27
/* 8003F454 0003C254  41 80 00 0C */	blt lbl_8003F460
/* 8003F458 0003C258  7C 1A E9 AE */	stbx r0, r26, r29
/* 8003F45C 0003C25C  48 00 00 08 */	b lbl_8003F464
lbl_8003F460:
/* 8003F460 0003C260  98 1A 00 00 */	stb r0, 0(r26)
lbl_8003F464:
/* 8003F464 0003C264  3C 80 80 2D */	lis r4, $$2stringBase0_13@ha
/* 8003F468 0003C268  7F 43 D3 78 */	mr r3, r26
/* 8003F46C 0003C26C  38 84 1D D0 */	addi r4, r4, $$2stringBase0_13@l
/* 8003F470 0003C270  38 A1 00 08 */	addi r5, r1, 8
/* 8003F474 0003C274  48 02 D8 75 */	bl xStrTok__FPcPCcPPc
/* 8003F478 0003C278  28 03 00 00 */	cmplwi r3, 0
/* 8003F47C 0003C27C  40 82 00 1C */	bne lbl_8003F498
/* 8003F480 0003C280  3C 80 80 2D */	lis r4, $$2stringBase0_13@ha
/* 8003F484 0003C284  7F C3 F3 78 */	mr r3, r30
/* 8003F488 0003C288  38 84 1D D0 */	addi r4, r4, $$2stringBase0_13@l
/* 8003F48C 0003C28C  38 A1 00 08 */	addi r5, r1, 8
/* 8003F490 0003C290  48 02 D8 59 */	bl xStrTok__FPcPCcPPc
/* 8003F494 0003C294  3B C0 00 00 */	li r30, 0
lbl_8003F498:
/* 8003F498 0003C298  3C 80 80 2D */	lis r4, $$2stringBase0_13@ha
/* 8003F49C 0003C29C  3B 44 1D D0 */	addi r26, r4, $$2stringBase0_13@l
/* 8003F4A0 0003C2A0  48 00 01 A4 */	b lbl_8003F644
lbl_8003F4A4:
/* 8003F4A4 0003C2A4  4B FF FD FD */	bl TrimWhitespace__FPc
/* 8003F4A8 0003C2A8  88 03 00 00 */	lbz r0, 0(r3)
/* 8003F4AC 0003C2AC  7C 7B 1B 78 */	mr r27, r3
/* 8003F4B0 0003C2B0  7C 04 07 74 */	extsb r4, r0
/* 8003F4B4 0003C2B4  2C 04 00 23 */	cmpwi r4, 0x23
/* 8003F4B8 0003C2B8  41 82 01 54 */	beq lbl_8003F60C
/* 8003F4BC 0003C2BC  7C 00 07 75 */	extsb. r0, r0
/* 8003F4C0 0003C2C0  41 82 01 4C */	beq lbl_8003F60C
/* 8003F4C4 0003C2C4  2C 04 00 5B */	cmpwi r4, 0x5b
/* 8003F4C8 0003C2C8  40 82 00 88 */	bne lbl_8003F550
/* 8003F4CC 0003C2CC  3C 80 80 2D */	lis r4, $$2stringBase0_13@ha
/* 8003F4D0 0003C2D0  38 84 1D D0 */	addi r4, r4, $$2stringBase0_13@l
/* 8003F4D4 0003C2D4  38 84 00 03 */	addi r4, r4, 3
/* 8003F4D8 0003C2D8  48 00 01 8D */	bl strstr__3stdFPcPCc
/* 8003F4DC 0003C2DC  28 03 00 00 */	cmplwi r3, 0
/* 8003F4E0 0003C2E0  41 82 01 2C */	beq lbl_8003F60C
/* 8003F4E4 0003C2E4  38 00 00 00 */	li r0, 0
/* 8003F4E8 0003C2E8  98 03 00 00 */	stb r0, 0(r3)
/* 8003F4EC 0003C2EC  38 7B 00 01 */	addi r3, r27, 1
/* 8003F4F0 0003C2F0  4B FF FD B1 */	bl TrimWhitespace__FPc
/* 8003F4F4 0003C2F4  88 03 00 00 */	lbz r0, 0(r3)
/* 8003F4F8 0003C2F8  7C 00 07 75 */	extsb. r0, r0
/* 8003F4FC 0003C2FC  41 82 01 10 */	beq lbl_8003F60C
/* 8003F500 0003C300  80 1C 00 04 */	lwz r0, 4(r28)
/* 8003F504 0003C304  38 A0 00 00 */	li r5, 0
/* 8003F508 0003C308  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8003F50C 0003C30C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8003F510 0003C310  7C 64 01 2E */	stwx r3, r4, r0
/* 8003F514 0003C314  80 1C 00 04 */	lwz r0, 4(r28)
/* 8003F518 0003C318  80 DC 00 00 */	lwz r6, 0(r28)
/* 8003F51C 0003C31C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8003F520 0003C320  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8003F524 0003C324  38 03 00 04 */	addi r0, r3, 4
/* 8003F528 0003C328  7C C4 01 2E */	stwx r6, r4, r0
/* 8003F52C 0003C32C  80 1C 00 04 */	lwz r0, 4(r28)
/* 8003F530 0003C330  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8003F534 0003C334  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8003F538 0003C338  38 03 00 08 */	addi r0, r3, 8
/* 8003F53C 0003C33C  7C A4 01 2E */	stwx r5, r4, r0
/* 8003F540 0003C340  80 7C 00 04 */	lwz r3, 4(r28)
/* 8003F544 0003C344  38 03 00 01 */	addi r0, r3, 1
/* 8003F548 0003C348  90 1C 00 04 */	stw r0, 4(r28)
/* 8003F54C 0003C34C  48 00 00 C0 */	b lbl_8003F60C
lbl_8003F550:
/* 8003F550 0003C350  3C 80 80 2D */	lis r4, $$2stringBase0_13@ha
/* 8003F554 0003C354  38 84 1D D0 */	addi r4, r4, $$2stringBase0_13@l
/* 8003F558 0003C358  38 84 00 05 */	addi r4, r4, 5
/* 8003F55C 0003C35C  48 00 01 09 */	bl strstr__3stdFPcPCc
/* 8003F560 0003C360  7C 7D 1B 79 */	or. r29, r3, r3
/* 8003F564 0003C364  41 82 00 A8 */	beq lbl_8003F60C
/* 8003F568 0003C368  38 00 00 00 */	li r0, 0
/* 8003F56C 0003C36C  7F 63 DB 78 */	mr r3, r27
/* 8003F570 0003C370  98 1D 00 00 */	stb r0, 0(r29)
/* 8003F574 0003C374  4B FF FD 2D */	bl TrimWhitespace__FPc
/* 8003F578 0003C378  7C 7B 1B 78 */	mr r27, r3
/* 8003F57C 0003C37C  88 03 00 00 */	lbz r0, 0(r3)
/* 8003F580 0003C380  7C 00 07 75 */	extsb. r0, r0
/* 8003F584 0003C384  41 82 00 88 */	beq lbl_8003F60C
/* 8003F588 0003C388  3C 60 80 2D */	lis r3, $$2stringBase0_13@ha
/* 8003F58C 0003C38C  3B BD 00 01 */	addi r29, r29, 1
/* 8003F590 0003C390  38 83 1D D0 */	addi r4, r3, $$2stringBase0_13@l
/* 8003F594 0003C394  7F A3 EB 78 */	mr r3, r29
/* 8003F598 0003C398  38 84 00 07 */	addi r4, r4, 7
/* 8003F59C 0003C39C  48 00 00 C9 */	bl strstr__3stdFPcPCc
/* 8003F5A0 0003C3A0  28 03 00 00 */	cmplwi r3, 0
/* 8003F5A4 0003C3A4  41 82 00 0C */	beq lbl_8003F5B0
/* 8003F5A8 0003C3A8  38 00 00 00 */	li r0, 0
/* 8003F5AC 0003C3AC  98 03 00 00 */	stb r0, 0(r3)
lbl_8003F5B0:
/* 8003F5B0 0003C3B0  7F A3 EB 78 */	mr r3, r29
/* 8003F5B4 0003C3B4  4B FF FC ED */	bl TrimWhitespace__FPc
/* 8003F5B8 0003C3B8  80 1C 00 00 */	lwz r0, 0(r28)
/* 8003F5BC 0003C3BC  80 9C 00 08 */	lwz r4, 8(r28)
/* 8003F5C0 0003C3C0  54 00 18 38 */	slwi r0, r0, 3
/* 8003F5C4 0003C3C4  7F 64 01 2E */	stwx r27, r4, r0
/* 8003F5C8 0003C3C8  80 1C 00 00 */	lwz r0, 0(r28)
/* 8003F5CC 0003C3CC  80 BC 00 08 */	lwz r5, 8(r28)
/* 8003F5D0 0003C3D0  54 04 18 38 */	slwi r4, r0, 3
/* 8003F5D4 0003C3D4  38 04 00 04 */	addi r0, r4, 4
/* 8003F5D8 0003C3D8  7C 65 01 2E */	stwx r3, r5, r0
/* 8003F5DC 0003C3DC  80 7C 00 00 */	lwz r3, 0(r28)
/* 8003F5E0 0003C3E0  38 03 00 01 */	addi r0, r3, 1
/* 8003F5E4 0003C3E4  90 1C 00 00 */	stw r0, 0(r28)
/* 8003F5E8 0003C3E8  80 1C 00 04 */	lwz r0, 4(r28)
/* 8003F5EC 0003C3EC  2C 00 00 00 */	cmpwi r0, 0
/* 8003F5F0 0003C3F0  41 82 00 1C */	beq lbl_8003F60C
/* 8003F5F4 0003C3F4  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8003F5F8 0003C3F8  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 8003F5FC 0003C3FC  38 83 FF FC */	addi r4, r3, -4
/* 8003F600 0003C400  7C 65 20 2E */	lwzx r3, r5, r4
/* 8003F604 0003C404  38 03 00 01 */	addi r0, r3, 1
/* 8003F608 0003C408  7C 05 21 2E */	stwx r0, r5, r4
lbl_8003F60C:
/* 8003F60C 0003C40C  7F 44 D3 78 */	mr r4, r26
/* 8003F610 0003C410  38 A1 00 08 */	addi r5, r1, 8
/* 8003F614 0003C414  38 60 00 00 */	li r3, 0
/* 8003F618 0003C418  48 02 D6 D1 */	bl xStrTok__FPcPCcPPc
/* 8003F61C 0003C41C  28 03 00 00 */	cmplwi r3, 0
/* 8003F620 0003C420  40 82 00 24 */	bne lbl_8003F644
/* 8003F624 0003C424  28 1E 00 00 */	cmplwi r30, 0
/* 8003F628 0003C428  41 82 00 1C */	beq lbl_8003F644
/* 8003F62C 0003C42C  3C 80 80 2D */	lis r4, $$2stringBase0_13@ha
/* 8003F630 0003C430  7F C3 F3 78 */	mr r3, r30
/* 8003F634 0003C434  38 84 1D D0 */	addi r4, r4, $$2stringBase0_13@l
/* 8003F638 0003C438  38 A1 00 08 */	addi r5, r1, 8
/* 8003F63C 0003C43C  48 02 D6 AD */	bl xStrTok__FPcPCcPPc
/* 8003F640 0003C440  3B C0 00 00 */	li r30, 0
lbl_8003F644:
/* 8003F644 0003C444  28 03 00 00 */	cmplwi r3, 0
/* 8003F648 0003C448  40 82 FE 5C */	bne lbl_8003F4A4
/* 8003F64C 0003C44C  7F 83 E3 78 */	mr r3, r28
/* 8003F650 0003C450  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8003F654 0003C454  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003F658 0003C458  7C 08 03 A6 */	mtlr r0
/* 8003F65C 0003C45C  38 21 00 30 */	addi r1, r1, 0x30
/* 8003F660 0003C460  4E 80 00 20 */	blr 

.global strstr__3stdFPcPCc
strstr__3stdFPcPCc:
/* 8003F664 0003C464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003F668 0003C468  7C 08 02 A6 */	mflr r0
/* 8003F66C 0003C46C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F670 0003C470  48 27 CA 8D */	bl strstr
/* 8003F674 0003C474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003F678 0003C478  7C 08 03 A6 */	mtlr r0
/* 8003F67C 0003C47C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003F680 0003C480  4E 80 00 20 */	blr 

.global xIniDestroy__FP8xIniFile
xIniDestroy__FP8xIniFile:
/* 8003F684 0003C484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003F688 0003C488  7C 08 02 A6 */	mflr r0
/* 8003F68C 0003C48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F690 0003C490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003F694 0003C494  7C 7F 1B 78 */	mr r31, r3
/* 8003F698 0003C498  80 8D E6 54 */	lwz r4, RwEngineInstance-_SDA_BASE_(r13)
/* 8003F69C 0003C49C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8003F6A0 0003C4A0  81 84 01 0C */	lwz r12, 0x10c(r4)
/* 8003F6A4 0003C4A4  7D 89 03 A6 */	mtctr r12
/* 8003F6A8 0003C4A8  4E 80 04 21 */	bctrl 
/* 8003F6AC 0003C4AC  80 8D E6 54 */	lwz r4, RwEngineInstance-_SDA_BASE_(r13)
/* 8003F6B0 0003C4B0  7F E3 FB 78 */	mr r3, r31
/* 8003F6B4 0003C4B4  81 84 01 0C */	lwz r12, 0x10c(r4)
/* 8003F6B8 0003C4B8  7D 89 03 A6 */	mtctr r12
/* 8003F6BC 0003C4BC  4E 80 04 21 */	bctrl 
/* 8003F6C0 0003C4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003F6C4 0003C4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003F6C8 0003C4C8  7C 08 03 A6 */	mtlr r0
/* 8003F6CC 0003C4CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8003F6D0 0003C4D0  4E 80 00 20 */	blr 

.global xIniGetIndex__FP8xIniFilePCc
xIniGetIndex__FP8xIniFilePCc:
/* 8003F6D4 0003C4D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003F6D8 0003C4D8  7C 08 02 A6 */	mflr r0
/* 8003F6DC 0003C4DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003F6E0 0003C4E0  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 8003F6E4 0003C4E4  7C 7C 1B 78 */	mr r28, r3
/* 8003F6E8 0003C4E8  7C 9D 23 78 */	mr r29, r4
/* 8003F6EC 0003C4EC  3B C0 00 00 */	li r30, 0
/* 8003F6F0 0003C4F0  3B E0 00 00 */	li r31, 0
/* 8003F6F4 0003C4F4  48 00 00 2C */	b lbl_8003F720
lbl_8003F6F8:
/* 8003F6F8 0003C4F8  80 7C 00 08 */	lwz r3, 8(r28)
/* 8003F6FC 0003C4FC  7F A4 EB 78 */	mr r4, r29
/* 8003F700 0003C500  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8003F704 0003C504  48 02 D9 D5 */	bl xStricmp__FPCcPCc
/* 8003F708 0003C508  2C 03 00 00 */	cmpwi r3, 0
/* 8003F70C 0003C50C  40 82 00 0C */	bne lbl_8003F718
/* 8003F710 0003C510  7F C3 F3 78 */	mr r3, r30
/* 8003F714 0003C514  48 00 00 1C */	b lbl_8003F730
lbl_8003F718:
/* 8003F718 0003C518  3B DE 00 01 */	addi r30, r30, 1
/* 8003F71C 0003C51C  3B FF 00 08 */	addi r31, r31, 8
lbl_8003F720:
/* 8003F720 0003C520  80 1C 00 00 */	lwz r0, 0(r28)
/* 8003F724 0003C524  7C 1E 00 00 */	cmpw r30, r0
/* 8003F728 0003C528  41 80 FF D0 */	blt lbl_8003F6F8
/* 8003F72C 0003C52C  38 60 FF FF */	li r3, -1
lbl_8003F730:
/* 8003F730 0003C530  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 8003F734 0003C534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003F738 0003C538  7C 08 03 A6 */	mtlr r0
/* 8003F73C 0003C53C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003F740 0003C540  4E 80 00 20 */	blr 

.global xIniGetInt__FP8xIniFilePCci
xIniGetInt__FP8xIniFilePCci:
/* 8003F744 0003C544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003F748 0003C548  7C 08 02 A6 */	mflr r0
/* 8003F74C 0003C54C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F750 0003C550  BF C1 00 08 */	stmw r30, 8(r1)
/* 8003F754 0003C554  7C 7E 1B 78 */	mr r30, r3
/* 8003F758 0003C558  7C BF 2B 78 */	mr r31, r5
/* 8003F75C 0003C55C  4B FF FF 79 */	bl xIniGetIndex__FP8xIniFilePCc
/* 8003F760 0003C560  2C 03 FF FF */	cmpwi r3, -1
/* 8003F764 0003C564  40 82 00 0C */	bne lbl_8003F770
/* 8003F768 0003C568  7F E3 FB 78 */	mr r3, r31
/* 8003F76C 0003C56C  48 00 00 18 */	b lbl_8003F784
lbl_8003F770:
/* 8003F770 0003C570  80 9E 00 08 */	lwz r4, 8(r30)
/* 8003F774 0003C574  54 60 18 38 */	slwi r0, r3, 3
/* 8003F778 0003C578  7C 64 02 14 */	add r3, r4, r0
/* 8003F77C 0003C57C  80 63 00 04 */	lwz r3, 4(r3)
/* 8003F780 0003C580  48 27 DE E1 */	bl atoi
lbl_8003F784:
/* 8003F784 0003C584  BB C1 00 08 */	lmw r30, 8(r1)
/* 8003F788 0003C588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003F78C 0003C58C  7C 08 03 A6 */	mtlr r0
/* 8003F790 0003C590  38 21 00 10 */	addi r1, r1, 0x10
/* 8003F794 0003C594  4E 80 00 20 */	blr 

.global xIniGetFloat__FP8xIniFilePCcf
xIniGetFloat__FP8xIniFilePCcf:
/* 8003F798 0003C598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003F79C 0003C59C  7C 08 02 A6 */	mflr r0
/* 8003F7A0 0003C5A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003F7A4 0003C5A4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8003F7A8 0003C5A8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8003F7AC 0003C5AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003F7B0 0003C5B0  7C 7F 1B 78 */	mr r31, r3
/* 8003F7B4 0003C5B4  FF E0 08 90 */	fmr f31, f1
/* 8003F7B8 0003C5B8  4B FF FF 1D */	bl xIniGetIndex__FP8xIniFilePCc
/* 8003F7BC 0003C5BC  2C 03 FF FF */	cmpwi r3, -1
/* 8003F7C0 0003C5C0  40 82 00 0C */	bne lbl_8003F7CC
/* 8003F7C4 0003C5C4  FC 20 F8 90 */	fmr f1, f31
/* 8003F7C8 0003C5C8  48 00 00 1C */	b lbl_8003F7E4
lbl_8003F7CC:
/* 8003F7CC 0003C5CC  80 9F 00 08 */	lwz r4, 8(r31)
/* 8003F7D0 0003C5D0  54 60 18 38 */	slwi r0, r3, 3
/* 8003F7D4 0003C5D4  7C 64 02 14 */	add r3, r4, r0
/* 8003F7D8 0003C5D8  80 63 00 04 */	lwz r3, 4(r3)
/* 8003F7DC 0003C5DC  48 27 CD ED */	bl atof
/* 8003F7E0 0003C5E0  FC 20 08 18 */	frsp f1, f1
lbl_8003F7E4:
/* 8003F7E4 0003C5E4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8003F7E8 0003C5E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003F7EC 0003C5EC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8003F7F0 0003C5F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003F7F4 0003C5F4  7C 08 03 A6 */	mtlr r0
/* 8003F7F8 0003C5F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003F7FC 0003C5FC  4E 80 00 20 */	blr 

.global xIniGetString__FP8xIniFilePCcPCc
xIniGetString__FP8xIniFilePCcPCc:
/* 8003F800 0003C600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003F804 0003C604  7C 08 02 A6 */	mflr r0
/* 8003F808 0003C608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F80C 0003C60C  BF C1 00 08 */	stmw r30, 8(r1)
/* 8003F810 0003C610  7C 7E 1B 78 */	mr r30, r3
/* 8003F814 0003C614  7C BF 2B 78 */	mr r31, r5
/* 8003F818 0003C618  4B FF FE BD */	bl xIniGetIndex__FP8xIniFilePCc
/* 8003F81C 0003C61C  2C 03 FF FF */	cmpwi r3, -1
/* 8003F820 0003C620  40 82 00 0C */	bne lbl_8003F82C
/* 8003F824 0003C624  7F E3 FB 78 */	mr r3, r31
/* 8003F828 0003C628  48 00 00 14 */	b lbl_8003F83C
lbl_8003F82C:
/* 8003F82C 0003C62C  80 9E 00 08 */	lwz r4, 8(r30)
/* 8003F830 0003C630  54 60 18 38 */	slwi r0, r3, 3
/* 8003F834 0003C634  7C 64 02 14 */	add r3, r4, r0
/* 8003F838 0003C638  80 63 00 04 */	lwz r3, 4(r3)
lbl_8003F83C:
/* 8003F83C 0003C63C  BB C1 00 08 */	lmw r30, 8(r1)
/* 8003F840 0003C640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003F844 0003C644  7C 08 03 A6 */	mtlr r0
/* 8003F848 0003C648  38 21 00 10 */	addi r1, r1, 0x10
/* 8003F84C 0003C64C  4E 80 00 20 */	blr 

.global xIniGetIndex__FP8xIniFilePCci
xIniGetIndex__FP8xIniFilePCci:
/* 8003F850 0003C650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003F854 0003C654  7C 08 02 A6 */	mflr r0
/* 8003F858 0003C658  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003F85C 0003C65C  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 8003F860 0003C660  7C 7C 1B 78 */	mr r28, r3
/* 8003F864 0003C664  7C BE 2B 78 */	mr r30, r5
/* 8003F868 0003C668  7C 9D 23 78 */	mr r29, r4
/* 8003F86C 0003C66C  54 BF 18 38 */	slwi r31, r5, 3
/* 8003F870 0003C670  48 00 00 2C */	b lbl_8003F89C
lbl_8003F874:
/* 8003F874 0003C674  80 7C 00 08 */	lwz r3, 8(r28)
/* 8003F878 0003C678  7F A4 EB 78 */	mr r4, r29
/* 8003F87C 0003C67C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8003F880 0003C680  48 02 D8 59 */	bl xStricmp__FPCcPCc
/* 8003F884 0003C684  2C 03 00 00 */	cmpwi r3, 0
/* 8003F888 0003C688  40 82 00 0C */	bne lbl_8003F894
/* 8003F88C 0003C68C  7F C3 F3 78 */	mr r3, r30
/* 8003F890 0003C690  48 00 00 1C */	b lbl_8003F8AC
lbl_8003F894:
/* 8003F894 0003C694  3B DE 00 01 */	addi r30, r30, 1
/* 8003F898 0003C698  3B FF 00 08 */	addi r31, r31, 8
lbl_8003F89C:
/* 8003F89C 0003C69C  80 1C 00 00 */	lwz r0, 0(r28)
/* 8003F8A0 0003C6A0  7C 1E 00 00 */	cmpw r30, r0
/* 8003F8A4 0003C6A4  41 80 FF D0 */	blt lbl_8003F874
/* 8003F8A8 0003C6A8  38 60 FF FF */	li r3, -1
lbl_8003F8AC:
/* 8003F8AC 0003C6AC  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 8003F8B0 0003C6B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003F8B4 0003C6B4  7C 08 03 A6 */	mtlr r0
/* 8003F8B8 0003C6B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003F8BC 0003C6BC  4E 80 00 20 */	blr 

.global xIniGetString__FP8xIniFilePCcPCcRi
xIniGetString__FP8xIniFilePCcPCcRi:
/* 8003F8C0 0003C6C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003F8C4 0003C6C4  7C 08 02 A6 */	mflr r0
/* 8003F8C8 0003C6C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003F8CC 0003C6CC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8003F8D0 0003C6D0  7C BE 2B 78 */	mr r30, r5
/* 8003F8D4 0003C6D4  7C DF 33 78 */	mr r31, r6
/* 8003F8D8 0003C6D8  7C 7D 1B 78 */	mr r29, r3
/* 8003F8DC 0003C6DC  80 A6 00 00 */	lwz r5, 0(r6)
/* 8003F8E0 0003C6E0  4B FF FF 71 */	bl xIniGetIndex__FP8xIniFilePCci
/* 8003F8E4 0003C6E4  90 7F 00 00 */	stw r3, 0(r31)
/* 8003F8E8 0003C6E8  80 BF 00 00 */	lwz r5, 0(r31)
/* 8003F8EC 0003C6EC  2C 05 FF FF */	cmpwi r5, -1
/* 8003F8F0 0003C6F0  40 82 00 0C */	bne lbl_8003F8FC
/* 8003F8F4 0003C6F4  7F C3 F3 78 */	mr r3, r30
/* 8003F8F8 0003C6F8  48 00 00 1C */	b lbl_8003F914
lbl_8003F8FC:
/* 8003F8FC 0003C6FC  80 9D 00 08 */	lwz r4, 8(r29)
/* 8003F900 0003C700  38 65 00 01 */	addi r3, r5, 1
/* 8003F904 0003C704  54 A0 18 38 */	slwi r0, r5, 3
/* 8003F908 0003C708  90 7F 00 00 */	stw r3, 0(r31)
/* 8003F90C 0003C70C  7C 64 02 14 */	add r3, r4, r0
/* 8003F910 0003C710  80 63 00 04 */	lwz r3, 4(r3)
lbl_8003F914:
/* 8003F914 0003C714  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 8003F918 0003C718  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003F91C 0003C71C  7C 08 03 A6 */	mtlr r0
/* 8003F920 0003C720  38 21 00 20 */	addi r1, r1, 0x20
/* 8003F924 0003C724  4E 80 00 20 */	blr 
