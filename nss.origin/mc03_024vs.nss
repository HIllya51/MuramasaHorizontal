//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc03_024vs.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev180_����Ƥ椯���å������`���إå�_a=true;
	#ev180_����Ƥ椯���å������`���إå�_b=true;
	#bg016_���@a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	CP_AllDelete();

	$PreGameName = $GameName;

	$GameName = "mc03_025.nss";

}

scene mc03_024vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_023vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 19900, "#000000");

	CreateTextureSP("�}�ݱ����X", 112, Center, Middle, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateTextureSP("�}�ݱ�����", 111, Center, Middle, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateTextureSP("�}�ݱ���", 110, Center, Middle, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	Zoom("�}�ݱ���*", 0, 700, 700, null, true);
	CreateSurfaceEX("�}��������", 100,1000,"@�}�ݱ���");
	//SetSurface("�}�ݱ�����","�}��������");
	//SetSurface("�}�ݱ����X","�}��������");
	Fade("�}��������", 0, 1000, null, true);
	Shake("�}�ݱ���*", 2160000, 0, 4, 0, 0, 1000, null, false);
	SetShade("�}�ݱ����X", LIGHT);
	SetShade("�}�ݱ�����", HEAVY);

	CreateSE("SEL01","se���L_����_������02_L");
	MusicStart("SEL01",3000,200,0,500,null,true);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc03/024vs0010a01">
��������������

//��������
<voice name="����" class="��������" src="voice/mc03/024vs0020a01">
������������Щ������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/024vs0030a00">
������������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/024vs0040a00">
������������
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Cockpit_AllFade2();

//������󡸣ãУ�ǰ�ޤǤΥѥ���٬F��
	MyLife_Count(0,120);
	CP_IHPChange(0,2,null,false);
	CP_PowerChange(0,100,null,false);

	CP_SpeedChange(0,100,null,false);
	MyTr_Count(0,0);

	CP_HighChange(0,500,null,false);
	$냇�ݷ�λӋ=Random(10)+40;
	CP_AziChange(0,$냇�ݷ�λӋ,null,false);
	CP_AltChange(0,-80,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

//������󡸣ãУ������ФΥѥ�ˡ�
	CP_SpeedChange(30000,318,null,false);
	CP_HighChange(30000,200,null,false);

	SetVolume("SEL01", 2000, 500, null);

	Zoom("�}�ݱ���*", 20000, 1000, 1000, null, false);
	FadeDelete("�}ɫ�\", 1800, true);

	FadeDelete("�}�ݱ����X", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������䣿

������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc03/024vs0050a01">
����������

{	FadeDelete("�}�ݱ�����", 500, false);
	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc03/024vs0060a00">
������ŶŶ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϵ�������
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	CreateSE("SE01b","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_SpeedChange(300,631,Dxl2,false);
	MyTr_Count(300,531);

//���˄ݻ؏�
	Shake("�}�ݱ���*", 1000, 0, 20, 0, 0, 1000, null, false);

	MusicStart("SE01b",0,1000,0,1000,null,false);

	Zoom("�}�ݱ���*", 1000, 1000, 1000, Dxl2, false);
	Move("�}�ݱ���", 1000, @0, -768, Dxl2, false);
	CP_AltChange(800,67,Dxl3,false);
	CP_HighChange(800,992,Dxl2,false);

	Wait(800);

	Move("�}�ݱ���", 1000, @0, @30, Dxl2, false);
	CP_HighChange(700,1030,null,false);
	CP_SpeedChange(1000,521,DxlAuto,false);
	MyTr_Count(300,461);

	Wait(700);

	Move("�}�ݱ���", 5000, @0, -838, Dxl2, false);
	CP_AltChange(5000,0,DxlAuto,false);
	CP_HighChange(5000,1011,Dxl2,false);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mc03/024vs0070a01">
�����ա�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/024vs0080a00">
�����ι�ȥ�ˣ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/024vs0090a01">
��ֻ��һ���롣
�������˵�<RUBY text="��">ͷ</RUBY>ͻ��ײ���ˡ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/024vs0100a00">
�������ء�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/024vs0110a01">
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);

//�����T�_�J
	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 500, 1000, null, true);

	Cockpit_AllFade0();

	CreateTextureSP("�}�ݱ����r", 1000, Center, -1400, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");

	FadeDelete("�}ɫ�\", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ԡ�
�������ˡ�

��ģ�¶�ħ�����壬��ɢ�����׹�䡣
��
��������׹�䣬���ǽ��䡣

�������Ѿ�ȫ�������ˡ�
��<RUBY text="Barrel">�����ƽ���</RUBY>������<RUBY text="Wing">����װ��</RUBY>�������ͽ����������ˡ�

�������ܵ�������������֧�䣬������ȥ��
�������޷��Ծȡ���Ҳ�޷��������ǡ�
��������������������Ҳ���������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc03/024vs0120a00">
�����������ָ߶ȡ�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/024vs0130a01">
����ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/024vs0140a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/024vs0150a01">
����ǿ��һ�䣬����ȫ����ɱ��
����û��Ҫ���𡣡�

//��������
<voice name="����" class="��������" src="voice/mc03/024vs0160a01">
�������߰ɡ�
�����ǻ��б����Ҫ���ɣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/024vs0170a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ҵ�ͷ֮�󣬻���û���뿪��Ƭ��ա�
��
��������Ρ�������Σ����л��Ǿ��ᡣ

�����ǡ�����ʲô�ˡ�

���Ҵ����޷��⿪���գ���������������
���ҿ���������һ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣������إå�
	CreateSE("SE01","se���L_����_�ռ�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ţ�", 18010, Center, Middle, "cg/ev/resize/ev180_����Ƥ椯���å������`���إå�_al.jpg");
	CreateTextureEX("�}�ţ���", 18000, Center, Middle, "cg/ev/resize/ev180_����Ƥ椯���å������`���إå�_bl.jpg");
	Zoom("�}�ţ�*", 0, 2000, 2000, null, true);
	Request("�}�ţ�*", Smoothing);
	Zoom("�}�ţ�*", 60000, 500, 500, DxlAuto, false);
	Fade("�}�ţ�", 1000, 1000, null, true);

/*
	CreateColorEX("�}ɫ�\", 18990, "#000000");
	CreateColorEX("�}ɫ�\�r", 18000, "#000000");
	Fade("�}ɫ�\�r", 500, 750, null, true);

	CreatePlainSP("�}��д", 18900);

	CreateWindow("�}��", 18000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	CreateTextureSP("�}��/�}�ݱ���", 18010, Center, Middle, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 18100, Center, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");

	Move("�}��/�}�����}װ��", 0, @0, @-600, null, true);
	Request("�}��/�}�����}װ��", Smoothing);
	Zoom("�}��/�}�����}װ��", 0, 5000, 5000, null, true);
	Rotate("�}��/�}�����}װ��", 0, @0, @0, @180, null,true);

	Zoom("�}��/�}�ݱ���", 100000, 2000, 2000, null, false);
	Zoom("�}��/�}�����}װ��", 15000, 1000, 1000, DxlAuto, false);
	Move("�}��/�}�����}װ��", 15000, @0, @620, DxlAuto, false);

	FadeDelete("�}��д", 1000, true);
*/

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����Ǻ������ͷ����
���������ͻ�����������װ�׸��������Ѻۡ�


</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���å������`��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/024vs0180b33">
������ԭ�¡���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����д����������ҵ�ͷ���С�
�����ǡ�����һ�ﴫ���ġ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���å������`��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/024vs0190b33">
������ԭ�¡���

//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/024vs0200b33">
������ԭ�¡���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_�ҤӸ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}�ţ�*", 300, 1, 3, 0, 0, 1000, null, false);
	Fade("�}�ţ���", 0, 1000, null, true);
	Delete("�}�ţ�");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��װ�������ˡ�

��<RUBY text="����������">����Ķ���</RUBY>�����ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǲ�֡���٤�

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc03/024vs0210a00">
��������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����ǡ�

�����ǡ����Ǹ���Ů�ǣ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǲ�֡������
	CreateSE("SE02","se����_��_��Ġ����02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("�}��", 20000, Center, Middle, "cg/ev/ev105_���줿С��_f.jpg");
	Wait(30);
	Delete("�}��");

	Fade("�}ɫ�\", 500, 1000, null, true);

	SetFwL("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc03/024vs0220a00">
����������!?��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ǣ�

�����ǡ�������

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå���С�������}
	EfRecoIn1(20000,600);
	CreateTextureSP("�}���뱳��", 19110, Center, Middle, "cg/bg/bg016_���@a_01.jpg");
	StC(19210, @0,@0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStC(0,true);
	EfRecoIn2(1600);

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc03/024vs0230a00">
������Ұ����С��!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc03_025.nss"