.include "macros.inc"

.section .sdata2

.global $$2677_0
$$2677_0:
	.incbin "baserom.dol", 0x32E930, 0x4
.global $$2678_0
$$2678_0:
	.incbin "baserom.dol", 0x32E934, 0x4
.global $$2681
$$2681:
	.incbin "baserom.dol", 0x32E938, 0x8
.global $$2682
$$2682:
	.incbin "baserom.dol", 0x32E940, 0x8

.section .text

.global xCurveAssetEvaluate__FPC11xCurveAssetf
xCurveAssetEvaluate__FPC11xCurveAssetf:
/* 8001C594 00019394  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001C598 00019398  7C 08 02 A6 */	mflr r0
/* 8001C59C 0001939C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001C5A0 000193A0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8001C5A4 000193A4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8001C5A8 000193A8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8001C5AC 000193AC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8001C5B0 000193B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001C5B4 000193B4  7C 7F 1B 78 */	mr r31, r3
/* 8001C5B8 000193B8  3C 00 43 30 */	lis r0, 0x4330
/* 8001C5BC 000193BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8001C5C0 000193C0  FF E0 08 90 */	fmr f31, f1
/* 8001C5C4 000193C4  80 9F 00 04 */	lwz r4, 4(r31)
/* 8001C5C8 000193C8  38 63 FF FF */	addi r3, r3, -1
/* 8001C5CC 000193CC  90 01 00 08 */	stw r0, 8(r1)
/* 8001C5D0 000193D0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8001C5D4 000193D4  C8 22 82 58 */	lfd f1, $$2681-_SDA2_BASE_(r2)
/* 8001C5D8 000193D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001C5DC 000193DC  2C 04 00 00 */	cmpwi r4, 0
/* 8001C5E0 000193E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8001C5E4 000193E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8001C5E8 000193E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8001C5EC 000193EC  EF C2 00 32 */	fmuls f30, f2, f0
/* 8001C5F0 000193F0  40 82 00 34 */	bne lbl_8001C624
/* 8001C5F4 000193F4  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8001C5F8 000193F8  40 80 00 0C */	bge lbl_8001C604
/* 8001C5FC 000193FC  FC 20 F8 90 */	fmr f1, f31
/* 8001C600 00019400  48 00 00 08 */	b lbl_8001C608
lbl_8001C604:
/* 8001C604 00019404  FC 20 F0 90 */	fmr f1, f30
lbl_8001C608:
/* 8001C608 00019408  C0 02 82 50 */	lfs f0, $$2677_0-_SDA2_BASE_(r2)
/* 8001C60C 0001940C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001C610 00019410  40 81 00 0C */	ble lbl_8001C61C
/* 8001C614 00019414  FF E0 08 90 */	fmr f31, f1
/* 8001C618 00019418  48 00 00 74 */	b lbl_8001C68C
lbl_8001C61C:
/* 8001C61C 0001941C  FF E0 00 90 */	fmr f31, f0
/* 8001C620 00019420  48 00 00 6C */	b lbl_8001C68C
lbl_8001C624:
/* 8001C624 00019424  EC 3F F0 24 */	fdivs f1, f31, f30
/* 8001C628 00019428  C0 02 82 50 */	lfs f0, $$2677_0-_SDA2_BASE_(r2)
/* 8001C62C 0001942C  FC 20 08 1E */	fctiwz f1, f1
/* 8001C630 00019430  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8001C634 00019434  D8 21 00 08 */	stfd f1, 8(r1)
/* 8001C638 00019438  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8001C63C 0001943C  40 80 00 08 */	bge lbl_8001C644
/* 8001C640 00019440  38 A5 FF FF */	addi r5, r5, -1
lbl_8001C644:
/* 8001C644 00019444  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 8001C648 00019448  3C 00 43 30 */	lis r0, 0x4330
/* 8001C64C 0001944C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8001C650 00019450  2C 04 00 02 */	cmpwi r4, 2
/* 8001C654 00019454  C8 22 82 58 */	lfd f1, $$2681-_SDA2_BASE_(r2)
/* 8001C658 00019458  90 01 00 08 */	stw r0, 8(r1)
/* 8001C65C 0001945C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8001C660 00019460  EC 00 08 28 */	fsubs f0, f0, f1
/* 8001C664 00019464  EF E0 FF BC */	fnmsubs f31, f0, f30, f31
/* 8001C668 00019468  40 82 00 24 */	bne lbl_8001C68C
/* 8001C66C 0001946C  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 8001C670 00019470  54 A0 07 FE */	clrlwi r0, r5, 0x1f
/* 8001C674 00019474  7C 00 1A 78 */	xor r0, r0, r3
/* 8001C678 00019478  7C 63 00 50 */	subf r3, r3, r0
/* 8001C67C 0001947C  48 29 B1 CD */	bl abs
/* 8001C680 00019480  2C 03 00 01 */	cmpwi r3, 1
/* 8001C684 00019484  40 82 00 08 */	bne lbl_8001C68C
/* 8001C688 00019488  EF FE F8 28 */	fsubs f31, f30, f31
lbl_8001C68C:
/* 8001C68C 0001948C  C3 DF 00 08 */	lfs f30, 8(r31)
/* 8001C690 00019490  EC 3F F0 24 */	fdivs f1, f31, f30
/* 8001C694 00019494  48 1D E7 61 */	bl __cvt_fp2unsigned
/* 8001C698 00019498  3C 00 43 30 */	lis r0, 0x4330
/* 8001C69C 0001949C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8001C6A0 000194A0  C8 22 82 60 */	lfd f1, $$2682-_SDA2_BASE_(r2)
/* 8001C6A4 000194A4  54 64 10 3A */	slwi r4, r3, 2
/* 8001C6A8 000194A8  90 01 00 08 */	stw r0, 8(r1)
/* 8001C6AC 000194AC  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 8001C6B0 000194B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8001C6B4 000194B4  7C 65 22 14 */	add r3, r5, r4
/* 8001C6B8 000194B8  C0 42 82 54 */	lfs f2, $$2678_0-_SDA2_BASE_(r2)
/* 8001C6BC 000194BC  EC 60 08 28 */	fsubs f3, f0, f1
/* 8001C6C0 000194C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001C6C4 000194C4  7C 25 24 2E */	lfsx f1, r5, r4
/* 8001C6C8 000194C8  EC 63 FF BC */	fnmsubs f3, f3, f30, f31
/* 8001C6CC 000194CC  EC 63 F0 24 */	fdivs f3, f3, f30
/* 8001C6D0 000194D0  EC 42 18 28 */	fsubs f2, f2, f3
/* 8001C6D4 000194D4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8001C6D8 000194D8  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8001C6DC 000194DC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8001C6E0 000194E0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8001C6E4 000194E4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8001C6E8 000194E8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8001C6EC 000194EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001C6F0 000194F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001C6F4 000194F4  7C 08 03 A6 */	mtlr r0
/* 8001C6F8 000194F8  38 21 00 40 */	addi r1, r1, 0x40
/* 8001C6FC 000194FC  4E 80 00 20 */	blr 
