.include "macros.inc"

.section .data

.global zHitSourceCCs
zHitSourceCCs:
	.incbin "baserom.dol", 0x306D70, 0x58

.section .rodata

.global zHitSourceMap
zHitSourceMap:
	.incbin "baserom.dol", 0x2DA760, 0xB0
.global $$2stringBase0_59
$$2stringBase0_59:
	.incbin "baserom.dol", 0x2DA810, 0xB0

.section .sdata

.global zHitTargetCCs
zHitTargetCCs:
	.incbin "baserom.dol", 0x32C0A0, 0x20

.section .text

.global getSourceCCIdx__FUi
getSourceCCIdx__FUi:
/* 800D15A0 000CE3A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D15A4 000CE3A4  7C 08 02 A6 */	mflr r0
/* 800D15A8 000CE3A8  3C 80 80 31 */	lis r4, zHitSourceCCs@ha
/* 800D15AC 000CE3AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D15B0 000CE3B0  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 800D15B4 000CE3B4  7C 7C 1B 78 */	mr r28, r3
/* 800D15B8 000CE3B8  3B C4 9D 70 */	addi r30, r4, zHitSourceCCs@l
/* 800D15BC 000CE3BC  3B A0 00 00 */	li r29, 0
/* 800D15C0 000CE3C0  3B E0 00 00 */	li r31, 0
lbl_800D15C4:
/* 800D15C4 000CE3C4  7C DE F8 2E */	lwzx r6, r30, r31
/* 800D15C8 000CE3C8  38 61 00 08 */	addi r3, r1, 8
/* 800D15CC 000CE3CC  54 C5 46 3E */	srwi r5, r6, 0x18
/* 800D15D0 000CE3D0  54 C4 86 3E */	rlwinm r4, r6, 0x10, 0x18, 0x1f
/* 800D15D4 000CE3D4  54 C0 C6 3E */	rlwinm r0, r6, 0x18, 0x18, 0x1f
/* 800D15D8 000CE3D8  98 A1 00 08 */	stb r5, 8(r1)
/* 800D15DC 000CE3DC  98 81 00 09 */	stb r4, 9(r1)
/* 800D15E0 000CE3E0  98 01 00 0A */	stb r0, 0xa(r1)
/* 800D15E4 000CE3E4  98 C1 00 0B */	stb r6, 0xb(r1)
/* 800D15E8 000CE3E8  4B F9 B6 39 */	bl xStrHash__FPCc
/* 800D15EC 000CE3EC  7C 1C 18 40 */	cmplw r28, r3
/* 800D15F0 000CE3F0  40 82 00 0C */	bne lbl_800D15FC
/* 800D15F4 000CE3F4  7F A3 EB 78 */	mr r3, r29
/* 800D15F8 000CE3F8  48 00 00 18 */	b lbl_800D1610
lbl_800D15FC:
/* 800D15FC 000CE3FC  3B BD 00 01 */	addi r29, r29, 1
/* 800D1600 000CE400  3B FF 00 04 */	addi r31, r31, 4
/* 800D1604 000CE404  2C 1D 00 15 */	cmpwi r29, 0x15
/* 800D1608 000CE408  41 80 FF BC */	blt lbl_800D15C4
/* 800D160C 000CE40C  38 60 FF FF */	li r3, -1
lbl_800D1610:
/* 800D1610 000CE410  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 800D1614 000CE414  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D1618 000CE418  7C 08 03 A6 */	mtlr r0
/* 800D161C 000CE41C  38 21 00 20 */	addi r1, r1, 0x20
/* 800D1620 000CE420  4E 80 00 20 */	blr 
