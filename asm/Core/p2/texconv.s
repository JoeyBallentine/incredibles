.include "macros.inc"

.section .sdata2

.global $$2620
$$2620:
	.incbin "baserom.dol", 0x3338F0, 0x4
.global $$2683_0
$$2683_0:
	.incbin "baserom.dol", 0x3338F4, 0x4

.section .text

.global ImageForwardDiff__FP7RwImagef
ImageForwardDiff__FP7RwImagef:
/* 801D8608 001D5408  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D860C 001D540C  7C 08 02 A6 */	mflr r0
/* 801D8610 001D5410  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D8614 001D5414  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801D8618 001D5418  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801D861C 001D541C  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 801D8620 001D5420  7C 78 1B 78 */	mr r24, r3
/* 801D8624 001D5424  FF E0 08 90 */	fmr f31, f1
/* 801D8628 001D5428  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801D862C 001D542C  83 C3 00 04 */	lwz r30, 4(r3)
/* 801D8630 001D5430  2C 00 00 08 */	cmpwi r0, 8
/* 801D8634 001D5434  83 A3 00 08 */	lwz r29, 8(r3)
/* 801D8638 001D5438  41 82 00 2C */	beq lbl_801D8664
/* 801D863C 001D543C  40 80 00 10 */	bge lbl_801D864C
/* 801D8640 001D5440  2C 00 00 04 */	cmpwi r0, 4
/* 801D8644 001D5444  41 82 00 2C */	beq lbl_801D8670
/* 801D8648 001D5448  48 00 00 28 */	b lbl_801D8670
lbl_801D864C:
/* 801D864C 001D544C  2C 00 00 20 */	cmpwi r0, 0x20
/* 801D8650 001D5450  41 82 00 08 */	beq lbl_801D8658
/* 801D8654 001D5454  48 00 00 1C */	b lbl_801D8670
lbl_801D8658:
/* 801D8658 001D5458  57 DC 10 3A */	slwi r28, r30, 2
/* 801D865C 001D545C  3B 60 00 04 */	li r27, 4
/* 801D8660 001D5460  48 00 00 18 */	b lbl_801D8678
lbl_801D8664:
/* 801D8664 001D5464  7F DC F3 78 */	mr r28, r30
/* 801D8668 001D5468  3B 60 00 01 */	li r27, 1
/* 801D866C 001D546C  48 00 00 0C */	b lbl_801D8678
lbl_801D8670:
/* 801D8670 001D5470  38 60 00 00 */	li r3, 0
/* 801D8674 001D5474  48 00 01 04 */	b lbl_801D8778
lbl_801D8678:
/* 801D8678 001D5478  38 7E FF FF */	addi r3, r30, -1
/* 801D867C 001D547C  38 1D FF FF */	addi r0, r29, -1
/* 801D8680 001D5480  7F 5B 19 D6 */	mullw r26, r27, r3
/* 801D8684 001D5484  7F C3 F3 78 */	mr r3, r30
/* 801D8688 001D5488  7F A4 EB 78 */	mr r4, r29
/* 801D868C 001D548C  38 A0 00 20 */	li r5, 0x20
/* 801D8690 001D5490  7F 3C 01 D6 */	mullw r25, r28, r0
/* 801D8694 001D5494  48 0B CF 99 */	bl RwImageCreate
/* 801D8698 001D5498  7C 7F 1B 78 */	mr r31, r3
/* 801D869C 001D549C  48 0B D0 A1 */	bl RwImageAllocatePixels
/* 801D86A0 001D54A0  C0 02 D2 10 */	lfs f0, $$2620-_SDA2_BASE_(r2)
/* 801D86A4 001D54A4  38 9B FF FF */	addi r4, r27, -1
/* 801D86A8 001D54A8  80 18 00 14 */	lwz r0, 0x14(r24)
/* 801D86AC 001D54AC  38 C0 00 00 */	li r6, 0
/* 801D86B0 001D54B0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801D86B4 001D54B4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801D86B8 001D54B8  7C 80 22 14 */	add r4, r0, r4
/* 801D86BC 001D54BC  FC 00 00 1E */	fctiwz f0, f0
/* 801D86C0 001D54C0  D8 01 00 08 */	stfd f0, 8(r1)
/* 801D86C4 001D54C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801D86C8 001D54C8  48 00 00 A4 */	b lbl_801D876C
lbl_801D86CC:
/* 801D86CC 001D54CC  38 A0 00 00 */	li r5, 0
/* 801D86D0 001D54D0  7F A9 03 A6 */	mtctr r29
/* 801D86D4 001D54D4  28 1D 00 00 */	cmplwi r29, 0
/* 801D86D8 001D54D8  40 81 00 90 */	ble lbl_801D8768
lbl_801D86DC:
/* 801D86DC 001D54DC  28 05 00 00 */	cmplwi r5, 0
/* 801D86E0 001D54E0  89 04 00 00 */	lbz r8, 0(r4)
/* 801D86E4 001D54E4  41 82 00 10 */	beq lbl_801D86F4
/* 801D86E8 001D54E8  7C FB 20 50 */	subf r7, r27, r4
/* 801D86EC 001D54EC  88 E7 00 00 */	lbz r7, 0(r7)
/* 801D86F0 001D54F0  48 00 00 08 */	b lbl_801D86F8
lbl_801D86F4:
/* 801D86F4 001D54F4  7C FA 20 AE */	lbzx r7, r26, r4
lbl_801D86F8:
/* 801D86F8 001D54F8  54 E7 06 3E */	clrlwi r7, r7, 0x18
/* 801D86FC 001D54FC  28 06 00 00 */	cmplwi r6, 0
/* 801D8700 001D5500  7C E8 38 50 */	subf r7, r8, r7
/* 801D8704 001D5504  7C E7 01 D6 */	mullw r7, r7, r0
/* 801D8708 001D5508  3C E7 00 01 */	addis r7, r7, 1
/* 801D870C 001D550C  38 E7 80 00 */	addi r7, r7, -32768
/* 801D8710 001D5510  7C E7 46 70 */	srawi r7, r7, 8
/* 801D8714 001D5514  98 E3 00 03 */	stb r7, 3(r3)
/* 801D8718 001D5518  89 04 00 00 */	lbz r8, 0(r4)
/* 801D871C 001D551C  41 82 00 10 */	beq lbl_801D872C
/* 801D8720 001D5520  7C FC 20 50 */	subf r7, r28, r4
/* 801D8724 001D5524  88 E7 00 00 */	lbz r7, 0(r7)
/* 801D8728 001D5528  48 00 00 08 */	b lbl_801D8730
lbl_801D872C:
/* 801D872C 001D552C  7C F9 20 AE */	lbzx r7, r25, r4
lbl_801D8730:
/* 801D8730 001D5530  54 E7 06 3E */	clrlwi r7, r7, 0x18
/* 801D8734 001D5534  38 A5 00 01 */	addi r5, r5, 1
/* 801D8738 001D5538  7C E8 38 50 */	subf r7, r8, r7
/* 801D873C 001D553C  7C E7 01 D6 */	mullw r7, r7, r0
/* 801D8740 001D5540  3C E7 00 01 */	addis r7, r7, 1
/* 801D8744 001D5544  38 E7 80 00 */	addi r7, r7, -32768
/* 801D8748 001D5548  7C E7 46 70 */	srawi r7, r7, 8
/* 801D874C 001D554C  98 E3 00 02 */	stb r7, 2(r3)
/* 801D8750 001D5550  88 E4 00 00 */	lbz r7, 0(r4)
/* 801D8754 001D5554  7C 84 DA 14 */	add r4, r4, r27
/* 801D8758 001D5558  98 E3 00 01 */	stb r7, 1(r3)
/* 801D875C 001D555C  98 E3 00 00 */	stb r7, 0(r3)
/* 801D8760 001D5560  38 63 00 04 */	addi r3, r3, 4
/* 801D8764 001D5564  42 00 FF 78 */	bdnz lbl_801D86DC
lbl_801D8768:
/* 801D8768 001D5568  38 C6 00 01 */	addi r6, r6, 1
lbl_801D876C:
/* 801D876C 001D556C  7C 06 F0 40 */	cmplw r6, r30
/* 801D8770 001D5570  41 80 FF 5C */	blt lbl_801D86CC
/* 801D8774 001D5574  7F E3 FB 78 */	mr r3, r31
lbl_801D8778:
/* 801D8778 001D5578  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801D877C 001D557C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801D8780 001D5580  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 801D8784 001D5584  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D8788 001D5588  7C 08 03 A6 */	mtlr r0
/* 801D878C 001D558C  38 21 00 40 */	addi r1, r1, 0x40
/* 801D8790 001D5590  4E 80 00 20 */	blr 

.global TextureDiffBumpRGBA8__FP9RwTexturef
TextureDiffBumpRGBA8__FP9RwTexturef:
/* 801D8794 001D5594  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D8798 001D5598  7C 08 02 A6 */	mflr r0
/* 801D879C 001D559C  38 A0 00 20 */	li r5, 0x20
/* 801D87A0 001D55A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D87A4 001D55A4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801D87A8 001D55A8  FF E0 08 90 */	fmr f31, f1
/* 801D87AC 001D55AC  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 801D87B0 001D55B0  7C 7E 1B 78 */	mr r30, r3
/* 801D87B4 001D55B4  80 83 00 00 */	lwz r4, 0(r3)
/* 801D87B8 001D55B8  80 64 00 0C */	lwz r3, 0xc(r4)
/* 801D87BC 001D55BC  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801D87C0 001D55C0  48 0B CE 6D */	bl RwImageCreate
/* 801D87C4 001D55C4  7C 7F 1B 78 */	mr r31, r3
/* 801D87C8 001D55C8  48 0B CF 75 */	bl RwImageAllocatePixels
/* 801D87CC 001D55CC  80 9E 00 00 */	lwz r4, 0(r30)
/* 801D87D0 001D55D0  7F E3 FB 78 */	mr r3, r31
/* 801D87D4 001D55D4  48 0B EA 09 */	bl RwImageSetFromRaster
/* 801D87D8 001D55D8  38 C0 00 00 */	li r6, 0
/* 801D87DC 001D55DC  38 60 00 00 */	li r3, 0
/* 801D87E0 001D55E0  48 00 00 1C */	b lbl_801D87FC
lbl_801D87E4:
/* 801D87E4 001D55E4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 801D87E8 001D55E8  38 C6 00 01 */	addi r6, r6, 1
/* 801D87EC 001D55EC  7C 80 1A 14 */	add r4, r0, r3
/* 801D87F0 001D55F0  38 63 00 04 */	addi r3, r3, 4
/* 801D87F4 001D55F4  88 04 00 00 */	lbz r0, 0(r4)
/* 801D87F8 001D55F8  98 04 00 03 */	stb r0, 3(r4)
lbl_801D87FC:
/* 801D87FC 001D55FC  80 BE 00 00 */	lwz r5, 0(r30)
/* 801D8800 001D5600  80 85 00 0C */	lwz r4, 0xc(r5)
/* 801D8804 001D5604  80 05 00 10 */	lwz r0, 0x10(r5)
/* 801D8808 001D5608  7C 04 01 D6 */	mullw r0, r4, r0
/* 801D880C 001D560C  7C 06 00 00 */	cmpw r6, r0
/* 801D8810 001D5610  41 80 FF D4 */	blt lbl_801D87E4
/* 801D8814 001D5614  FC 20 F8 90 */	fmr f1, f31
/* 801D8818 001D5618  7F E3 FB 78 */	mr r3, r31
/* 801D881C 001D561C  4B FF FD ED */	bl ImageForwardDiff__FP7RwImagef
/* 801D8820 001D5620  7C 60 1B 78 */	mr r0, r3
/* 801D8824 001D5624  7F E3 FB 78 */	mr r3, r31
/* 801D8828 001D5628  7C 1F 03 78 */	mr r31, r0
/* 801D882C 001D562C  48 0B CE A9 */	bl RwImageDestroy
/* 801D8830 001D5630  28 1F 00 00 */	cmplwi r31, 0
/* 801D8834 001D5634  40 82 00 0C */	bne lbl_801D8840
/* 801D8838 001D5638  38 60 00 00 */	li r3, 0
/* 801D883C 001D563C  48 00 00 1C */	b lbl_801D8858
lbl_801D8840:
/* 801D8840 001D5640  80 7E 00 00 */	lwz r3, 0(r30)
/* 801D8844 001D5644  7F E4 FB 78 */	mr r4, r31
/* 801D8848 001D5648  48 0B EA 09 */	bl RwRasterSetFromImage
/* 801D884C 001D564C  7F E3 FB 78 */	mr r3, r31
/* 801D8850 001D5650  48 0B CE 85 */	bl RwImageDestroy
/* 801D8854 001D5654  7F C3 F3 78 */	mr r3, r30
lbl_801D8858:
/* 801D8858 001D5658  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801D885C 001D565C  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 801D8860 001D5660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D8864 001D5664  7C 08 03 A6 */	mtlr r0
/* 801D8868 001D5668  38 21 00 20 */	addi r1, r1, 0x20
/* 801D886C 001D566C  4E 80 00 20 */	blr 

.global TextureDiffBumpRGBA8__FP9RwTextureP9RwTexture
TextureDiffBumpRGBA8__FP9RwTextureP9RwTexture:
/* 801D8870 001D5670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D8874 001D5674  7C 08 02 A6 */	mflr r0
/* 801D8878 001D5678  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D887C 001D567C  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 801D8880 001D5680  7C 9F 23 78 */	mr r31, r4
/* 801D8884 001D5684  7C 7E 1B 78 */	mr r30, r3
/* 801D8888 001D5688  80 83 00 00 */	lwz r4, 0(r3)
/* 801D888C 001D568C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 801D8890 001D5690  2C 00 00 08 */	cmpwi r0, 8
/* 801D8894 001D5694  40 80 00 0C */	bge lbl_801D88A0
/* 801D8898 001D5698  38 60 00 00 */	li r3, 0
/* 801D889C 001D569C  48 00 00 E0 */	b lbl_801D897C
lbl_801D88A0:
/* 801D88A0 001D56A0  80 64 00 0C */	lwz r3, 0xc(r4)
/* 801D88A4 001D56A4  38 A0 00 20 */	li r5, 0x20
/* 801D88A8 001D56A8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801D88AC 001D56AC  48 0B CD 81 */	bl RwImageCreate
/* 801D88B0 001D56B0  7C 7D 1B 78 */	mr r29, r3
/* 801D88B4 001D56B4  48 0B CE 89 */	bl RwImageAllocatePixels
/* 801D88B8 001D56B8  80 9E 00 00 */	lwz r4, 0(r30)
/* 801D88BC 001D56BC  7F A3 EB 78 */	mr r3, r29
/* 801D88C0 001D56C0  48 0B E9 1D */	bl RwImageSetFromRaster
/* 801D88C4 001D56C4  38 C0 00 00 */	li r6, 0
/* 801D88C8 001D56C8  38 60 00 00 */	li r3, 0
/* 801D88CC 001D56CC  48 00 00 1C */	b lbl_801D88E8
lbl_801D88D0:
/* 801D88D0 001D56D0  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 801D88D4 001D56D4  38 C6 00 01 */	addi r6, r6, 1
/* 801D88D8 001D56D8  7C 80 1A 14 */	add r4, r0, r3
/* 801D88DC 001D56DC  38 63 00 04 */	addi r3, r3, 4
/* 801D88E0 001D56E0  88 04 00 00 */	lbz r0, 0(r4)
/* 801D88E4 001D56E4  98 04 00 03 */	stb r0, 3(r4)
lbl_801D88E8:
/* 801D88E8 001D56E8  80 BE 00 00 */	lwz r5, 0(r30)
/* 801D88EC 001D56EC  80 85 00 0C */	lwz r4, 0xc(r5)
/* 801D88F0 001D56F0  80 05 00 10 */	lwz r0, 0x10(r5)
/* 801D88F4 001D56F4  7C 04 01 D6 */	mullw r0, r4, r0
/* 801D88F8 001D56F8  7C 06 00 00 */	cmpw r6, r0
/* 801D88FC 001D56FC  41 80 FF D4 */	blt lbl_801D88D0
/* 801D8900 001D5700  C0 22 D2 14 */	lfs f1, $$2683_0-_SDA2_BASE_(r2)
/* 801D8904 001D5704  7F A3 EB 78 */	mr r3, r29
/* 801D8908 001D5708  4B FF FD 01 */	bl ImageForwardDiff__FP7RwImagef
/* 801D890C 001D570C  7C 60 1B 78 */	mr r0, r3
/* 801D8910 001D5710  7F A3 EB 78 */	mr r3, r29
/* 801D8914 001D5714  7C 1C 03 78 */	mr r28, r0
/* 801D8918 001D5718  48 0B CD BD */	bl RwImageDestroy
/* 801D891C 001D571C  28 1C 00 00 */	cmplwi r28, 0
/* 801D8920 001D5720  40 82 00 0C */	bne lbl_801D892C
/* 801D8924 001D5724  38 60 00 00 */	li r3, 0
/* 801D8928 001D5728  48 00 00 54 */	b lbl_801D897C
lbl_801D892C:
/* 801D892C 001D572C  80 7F 00 00 */	lwz r3, 0(r31)
/* 801D8930 001D5730  48 0B EB 9D */	bl RwRasterDestroy
/* 801D8934 001D5734  3C A0 00 01 */	lis r5, 0x00009504@ha
/* 801D8938 001D5738  80 7C 00 04 */	lwz r3, 4(r28)
/* 801D893C 001D573C  80 9C 00 08 */	lwz r4, 8(r28)
/* 801D8940 001D5740  38 C5 95 04 */	addi r6, r5, 0x00009504@l
/* 801D8944 001D5744  38 A0 00 20 */	li r5, 0x20
/* 801D8948 001D5748  48 0B EE 75 */	bl RwRasterCreate
/* 801D894C 001D574C  7C 7D 1B 79 */	or. r29, r3, r3
/* 801D8950 001D5750  40 82 00 14 */	bne lbl_801D8964
/* 801D8954 001D5754  7F 83 E3 78 */	mr r3, r28
/* 801D8958 001D5758  48 0B CD 7D */	bl RwImageDestroy
/* 801D895C 001D575C  38 60 00 00 */	li r3, 0
/* 801D8960 001D5760  48 00 00 1C */	b lbl_801D897C
lbl_801D8964:
/* 801D8964 001D5764  7F 84 E3 78 */	mr r4, r28
/* 801D8968 001D5768  48 0B E8 E9 */	bl RwRasterSetFromImage
/* 801D896C 001D576C  7F 83 E3 78 */	mr r3, r28
/* 801D8970 001D5770  48 0B CD 65 */	bl RwImageDestroy
/* 801D8974 001D5774  93 BF 00 00 */	stw r29, 0(r31)
/* 801D8978 001D5778  7F C3 F3 78 */	mr r3, r30
lbl_801D897C:
/* 801D897C 001D577C  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 801D8980 001D5780  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D8984 001D5784  7C 08 03 A6 */	mtlr r0
/* 801D8988 001D5788  38 21 00 20 */	addi r1, r1, 0x20
/* 801D898C 001D578C  4E 80 00 20 */	blr 
