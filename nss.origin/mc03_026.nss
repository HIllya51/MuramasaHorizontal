//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_026.nss_MAIN
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
	#ev180_����Ƥ椯���å������`���إå�_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#aw_�إå�=true;

	$PreGameName = $GameName;

	$GameName = "mc03_027.nss";

}

scene mc03_026.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_025.nss"


//������ҕ��
//������륬�å������`�إå�
	#aw_�إå�=true;

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�ۥ磻�ȥ���", 5000, "White");
	Fade("�ۥ磻�ȥ���", 0, 1000, null, true);
	CreateColorSP("���\", 1200, "BLACK");

	CreateSE("�ɥɥɥɥ�", "se���L_����_������02_L");
	MusicStart("�ɥɥɥɥ�", 500, 1000, 0, 1000, null,true);

//��ǰ��BGM�ȿ����äƤ�ۤ��������褦�ʚݤ�����ΤǾ@�A inc�Ѿ�
	SoundPlay("@mbgm15", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�ۥ磻�ȥ���",1500,true);

	SetFwC("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/0260010b33">
���ն���������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�ޤ�", 5100, RED);
	Fade("�ޤ�", 200, 1000, null, true);
	StC(1300, @0, @0, "cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStC(0, true);

	Fade("�ޤ�", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ĺ�йᴩ���ҵ����衣

��Թ��ĳ�ǹ��
������ļ��⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/0260020b33">
������ԭ�£���

//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/0260030b33">
������ԭ�¡�����������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�ޤ�", 0, 1000, null, true);
	DeleteStC(1000,false);
	FadeDelete("�ޤ�", 1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������

�����

������֪���ġ�
��������ʲô���Ҷ�����Ҫ��������ʲô��
������֪���ġ�

����������ҰС����ɱ�������۷ɵ��������ҽ��еĲ�
�����С�
��������ȱ���������š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	MusicStart("�ɥɥɥɥ�", 1000, 1000, 0, 1000, null,true);

	StL(1001, @-80, @180, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	StC(1000, @256, @250, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Zoom("@StC*", 0, 50, 50, null, false);

	FadeStC(0, false);
	FadeStL(0, true);
	Move("�}����10", 10000, @-50, @-20, null, false);
	Shake("@StL*", 60000, 1, 1, 0, 0, 1000, Dxl2, false);
	Shake("@StC*", 60000, 1, 1, 0, 0, 1000, null, false);
	FadeDelete("���\",1000,false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc03/0260040a00">
���ء�����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0260050a00">
������������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ȥ����򤫤����ر����ͻ�M��

	OnSE("se���L_����_��ͻ�M01", 1000);
	Zoom("�}����10", 1800, 1500, 1500, null, false);
	Zoom("@StL*", 1800, 500, 500, null, false);
	Move("@StL*", 1800, @200, @0, null, false);
	Zoom("@StC*", 1800, 75, 75, null, false);

	WaitKey(1300);

	CreateColorSP("�\Ļ��", 5001, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");

	Delete("�\Ļ*");
	Delete("�}����10");
	Delete("@St*");

	CreateTextureSP("�}�ݱ���", 100, -490, -900, "cg/bg/bg202_�����ݳ�����ɽa_02.jpg");
	Move("�}�ݱ���", 120000, -10, -5490, DxlAuto, false);
	Shake("�}�ݱ���*", 120000, 1, 1, 0, 0, 1000, null, false);

	CloudZoomSet(1000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@512,@-288,null,false);

	StR(1000,@500,@0,"cg/st/3d�����˜�_�T��_ͨ��.png");
	FadeStR(0,true);
	OnSE("se���L_����_���ϕN01",1000);

	Shake("@StR*", 30000, 1, 0, 0, 0, 1000, null, false);
	Move("@StR*", 0, @-700, @200, Dxl1, false);

	MoveFFP1("@StR*",1000);

	Delete("�ϱ���");
	DrawDelete("�\", 300, 100, "slide_04_01_0", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���������������С�
�����в��в��в��С�

�����ԣ����Բ��У�

������������!!

�����Բ�����������!!

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CloudZoomDelete(5000,false);

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/mc03/0260060a01">
��������
���Ѿ������ˣ���

//��������
<voice name="����" class="��������" src="voice/mc03/0260070a01">
��ͣ�°ɣ�������ȥ������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�M���ٶ��ϕN�ϕN��
	MoveFFP1stop();
	Move("@StR*", 500, @-512, 1152, Dxl1, false);

	CreateSE("SEP02","se���L_����_��ͻ�M08");
	MusicStart("SEP02",0,1000,0,1200,null,false);

	CreateColorSPadd("�}�ե�", 6000, "#FFFFFF");
	Wait(10);

	Fade("�}�ե�", 900, 0, null, false);
	DrawDelete("�}�ե�", 600, 1000, "slide_07_00_0", true);

	CreateColorSPadd("�}�ե飲", 25000, "WHITE");
	DrawTransition("�}�ե飲", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Delete("@St*");
	Delete("�}�ݱ���*");
	Delete("�}�ե�");

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	CreateTextureSPadd("�Ƅ�", 15000, @0, @0, "cg/ef/ef003_�����Ƅ�.jpg");
	Zoom("�}����10", 10000, 5000, 5000, null, false);

	CreateColorSP("���\", 5, "BLACK");
	CreateTextureEX("�}��3", 9, Center, InBottom, "cg/st/stС��_ͨ��_�Ʒ�.png");

	DrawTransition("�}�ե飲", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("�}�ե飲");

	Fade("�}��3", 0, 800, null, false);

	FadeDelete("�}����10", 10000, false);
	FadeDelete("�Ƅ�",1500,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��������
��������
��������
��������

���ӽ��˵��档������Ρ�
��������ȥ��Ҳ��ײ�ϵ��档������Ρ�

�������������Ů������֡�

������������������

������ߣ�
������߿�һЩ��

��һ���Ϳ��ԡ�ֻҪһ��㡣
�������壬������߿���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�·�2", 5000, "BLACK");
	Fade("�·�2", 1500, 1000, null, true);
	Delete("�}����10");
	SetVolume("�ɥɥɥɥ�", 1000, 0, null);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	Delete("��*");
	Delete("�}��*");

	CreateTextureSP("�}�ţ�", 100, -512, -288, "cg/ev/resize/ev180_����Ƥ椯���å������`���إå�_cl.jpg");
	Request("�}�ţ�", Smoothing);
	Zoom("�}�ţ�", 0, 500, 500, null, true);
	Zoom("�}�ţ�", 16000, 2000, 2000, null, false);
	FadeDelete("�}ɫ��", 200, true);

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100a]
//��������
<voice name="����" class="����" src="voice/mc03/0260080a00">
����Ҫ��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwС��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100b]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/0260090b33">
�����ɡ�������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1600, 0, null);

	CreateColorEX("�}ɫ�\", 20000, "#000000");

	SetBlur("�}�ţ�", true, 2, 500, 60, false);
	Zoom("�}�ţ�", 1000, 500, 500, AxlDxl, false);
	Fade("�}ɫ�\", 1000, 1000, null, true);

	Delete("�}�ţ�");

	WaitPlay("@mbgm*", null);

//������������ɩ`��
	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(3000);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE02","se���L_�n��_�nͻ01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	WaitPlay("SE02", null);

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc03_027.nss"