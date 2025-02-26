.include "macros.inc"

.section .sbss

.global g_mvpt_list
g_mvpt_list:
	.skip 0x4
.global g_mvpt_cnt
g_mvpt_cnt:
	.skip 0x4

.section .text

.global zMovePoint_GetMemPool__Fi
zMovePoint_GetMemPool__Fi:
/* 800E4518 000E1318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E451C 000E131C  7C 08 02 A6 */	mflr r0
/* 800E4520 000E1320  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E4524 000E1324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E4528 000E1328  7C 7F 1B 79 */	or. r31, r3, r3
/* 800E452C 000E132C  41 82 00 18 */	beq lbl_800E4544
/* 800E4530 000E1330  1C 9F 00 30 */	mulli r4, r31, 0x30
/* 800E4534 000E1334  80 6D BA E4 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 800E4538 000E1338  38 A0 00 00 */	li r5, 0
/* 800E453C 000E133C  4B F6 56 25 */	bl xMemAlloc__FUiUii
/* 800E4540 000E1340  48 00 00 08 */	b lbl_800E4548
lbl_800E4544:
/* 800E4544 000E1344  38 60 00 00 */	li r3, 0
lbl_800E4548:
/* 800E4548 000E1348  90 6D CB 58 */	stw r3, g_mvpt_list-_SDA_BASE_(r13)
/* 800E454C 000E134C  93 ED CB 5C */	stw r31, g_mvpt_cnt-_SDA_BASE_(r13)
/* 800E4550 000E1350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E4554 000E1354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E4558 000E1358  7C 08 03 A6 */	mtlr r0
/* 800E455C 000E135C  38 21 00 10 */	addi r1, r1, 0x10
/* 800E4560 000E1360  4E 80 00 20 */	blr 

.global zMovePointInit__FP10zMovePointP15xMovePointAsset
zMovePointInit__FP10zMovePointP15xMovePointAsset:
/* 800E4564 000E1364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E4568 000E1368  7C 08 02 A6 */	mflr r0
/* 800E456C 000E136C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E4570 000E1370  BF C1 00 08 */	stmw r30, 8(r1)
/* 800E4574 000E1374  7C 7E 1B 78 */	mr r30, r3
/* 800E4578 000E1378  7C 9F 23 78 */	mr r31, r4
/* 800E457C 000E137C  4B F6 95 AD */	bl xMovePointInit__FP10xMovePointP15xMovePointAsset
/* 800E4580 000E1380  3C 60 80 0E */	lis r3, zMovePointEventCB__FP5xBaseP5xBaseUiPCfP5xBaseUi@ha
/* 800E4584 000E1384  38 03 46 5C */	addi r0, r3, zMovePointEventCB__FP5xBaseP5xBaseUiPCfP5xBaseUi@l
/* 800E4588 000E1388  90 1E 00 0C */	stw r0, 0xc(r30)
/* 800E458C 000E138C  88 1E 00 05 */	lbz r0, 5(r30)
/* 800E4590 000E1390  28 00 00 00 */	cmplwi r0, 0
/* 800E4594 000E1394  41 82 00 1C */	beq lbl_800E45B0
/* 800E4598 000E1398  A0 1F 00 1A */	lhz r0, 0x1a(r31)
/* 800E459C 000E139C  54 03 10 3A */	slwi r3, r0, 2
/* 800E45A0 000E13A0  38 03 00 28 */	addi r0, r3, 0x28
/* 800E45A4 000E13A4  7C 1F 02 14 */	add r0, r31, r0
/* 800E45A8 000E13A8  90 1E 00 08 */	stw r0, 8(r30)
/* 800E45AC 000E13AC  48 00 00 0C */	b lbl_800E45B8
lbl_800E45B0:
/* 800E45B0 000E13B0  38 00 00 00 */	li r0, 0
/* 800E45B4 000E13B4  90 1E 00 08 */	stw r0, 8(r30)
lbl_800E45B8:
/* 800E45B8 000E13B8  BB C1 00 08 */	lmw r30, 8(r1)
/* 800E45BC 000E13BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E45C0 000E13C0  7C 08 03 A6 */	mtlr r0
/* 800E45C4 000E13C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E45C8 000E13C8  4E 80 00 20 */	blr 

.global zMovePoint_GetInst__Fi
zMovePoint_GetInst__Fi:
/* 800E45CC 000E13CC  1C 03 00 30 */	mulli r0, r3, 0x30
/* 800E45D0 000E13D0  80 6D CB 58 */	lwz r3, g_mvpt_list-_SDA_BASE_(r13)
/* 800E45D4 000E13D4  7C 63 02 14 */	add r3, r3, r0
/* 800E45D8 000E13D8  4E 80 00 20 */	blr 

.global zMovePointSetup__FP10zMovePointP6zScene
zMovePointSetup__FP10zMovePointP6zScene:
/* 800E45DC 000E13DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E45E0 000E13E0  7C 08 02 A6 */	mflr r0
/* 800E45E4 000E13E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E45E8 000E13E8  4B F6 96 49 */	bl xMovePointSetup__FP10xMovePointP6xScene
/* 800E45EC 000E13EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E45F0 000E13F0  7C 08 03 A6 */	mtlr r0
/* 800E45F4 000E13F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E45F8 000E13F8  4E 80 00 20 */	blr 

.global zMovePointSave__FP10zMovePointP7xSerial
zMovePointSave__FP10zMovePointP7xSerial:
/* 800E45FC 000E13FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E4600 000E1400  7C 08 02 A6 */	mflr r0
/* 800E4604 000E1404  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E4608 000E1408  4B F6 95 A1 */	bl xMovePointSave__FP10xMovePointP7xSerial
/* 800E460C 000E140C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E4610 000E1410  7C 08 03 A6 */	mtlr r0
/* 800E4614 000E1414  38 21 00 10 */	addi r1, r1, 0x10
/* 800E4618 000E1418  4E 80 00 20 */	blr 

.global zMovePointLoad__FP10zMovePointP7xSerial
zMovePointLoad__FP10zMovePointP7xSerial:
/* 800E461C 000E141C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E4620 000E1420  7C 08 02 A6 */	mflr r0
/* 800E4624 000E1424  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E4628 000E1428  4B F6 95 A1 */	bl xMovePointLoad__FP10xMovePointP7xSerial
/* 800E462C 000E142C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E4630 000E1430  7C 08 03 A6 */	mtlr r0
/* 800E4634 000E1434  38 21 00 10 */	addi r1, r1, 0x10
/* 800E4638 000E1438  4E 80 00 20 */	blr 

.global zMovePointReset__FP10zMovePoint
zMovePointReset__FP10zMovePoint:
/* 800E463C 000E143C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E4640 000E1440  7C 08 02 A6 */	mflr r0
/* 800E4644 000E1444  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E4648 000E1448  4B F6 95 A1 */	bl xMovePointReset__FP10xMovePoint
/* 800E464C 000E144C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E4650 000E1450  7C 08 03 A6 */	mtlr r0
/* 800E4654 000E1454  38 21 00 10 */	addi r1, r1, 0x10
/* 800E4658 000E1458  4E 80 00 20 */	blr 

.global zMovePointEventCB__FP5xBaseP5xBaseUiPCfP5xBaseUi
zMovePointEventCB__FP5xBaseP5xBaseUiPCfP5xBaseUi:
/* 800E465C 000E145C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E4660 000E1460  7C 08 02 A6 */	mflr r0
/* 800E4664 000E1464  2C 05 00 1F */	cmpwi r5, 0x1f
/* 800E4668 000E1468  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E466C 000E146C  41 82 00 4C */	beq lbl_800E46B8
/* 800E4670 000E1470  40 80 00 10 */	bge lbl_800E4680
/* 800E4674 000E1474  2C 05 00 0A */	cmpwi r5, 0xa
/* 800E4678 000E1478  41 82 00 38 */	beq lbl_800E46B0
/* 800E467C 000E147C  48 00 00 3C */	b lbl_800E46B8
lbl_800E4680:
/* 800E4680 000E1480  2C 05 00 27 */	cmpwi r5, 0x27
/* 800E4684 000E1484  41 82 00 20 */	beq lbl_800E46A4
/* 800E4688 000E1488  40 80 00 30 */	bge lbl_800E46B8
/* 800E468C 000E148C  2C 05 00 26 */	cmpwi r5, 0x26
/* 800E4690 000E1490  40 80 00 08 */	bge lbl_800E4698
/* 800E4694 000E1494  48 00 00 24 */	b lbl_800E46B8
lbl_800E4698:
/* 800E4698 000E1498  38 00 00 01 */	li r0, 1
/* 800E469C 000E149C  98 04 00 24 */	stb r0, 0x24(r4)
/* 800E46A0 000E14A0  48 00 00 18 */	b lbl_800E46B8
lbl_800E46A4:
/* 800E46A4 000E14A4  38 00 00 00 */	li r0, 0
/* 800E46A8 000E14A8  98 04 00 24 */	stb r0, 0x24(r4)
/* 800E46AC 000E14AC  48 00 00 0C */	b lbl_800E46B8
lbl_800E46B0:
/* 800E46B0 000E14B0  7C 83 23 78 */	mr r3, r4
/* 800E46B4 000E14B4  4B FF FF 89 */	bl zMovePointReset__FP10zMovePoint
lbl_800E46B8:
/* 800E46B8 000E14B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E46BC 000E14BC  7C 08 03 A6 */	mtlr r0
/* 800E46C0 000E14C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800E46C4 000E14C4  4E 80 00 20 */	blr 

.global zMovePointGetPos__FPC10zMovePoint
zMovePointGetPos__FPC10zMovePoint:
/* 800E46C8 000E14C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E46CC 000E14CC  7C 08 02 A6 */	mflr r0
/* 800E46D0 000E14D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E46D4 000E14D4  4B F6 99 99 */	bl xMovePointGetPos__FPC10xMovePoint
/* 800E46D8 000E14D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E46DC 000E14DC  7C 08 03 A6 */	mtlr r0
/* 800E46E0 000E14E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800E46E4 000E14E4  4E 80 00 20 */	blr 
