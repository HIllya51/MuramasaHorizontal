//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_029.nss_MAIN
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
	#bg026_���ӘSɽ��a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_030.nss";

}

scene mc02_029.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_028vs.nss"

//�����
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm01",0,1000,true);

	CreateColorSP("�\Ļ��", 15000, "BLACK");
	Delete("�ϱ���");
	Fade("�\Ļ��",0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��׷��

��
������������������������������

����׷��

��
������������������������������

����׷��ưԡ�

��
������������������������������

����׷���䡣

��
������������������������������

����׷��Ǽ���

��
������������������������������

���ҡ���
�������²��䣬�۰����¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��
//�����ʤ�
//���⡿
<voice name="��" class="��" src="voice/mc02/0290010a14">
��������������������Ȼ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����˰Ե���
������������
�����������
�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��
//�����ʤ�
//���⡿
<voice name="��" class="��" src="voice/mc02/0290020a14">
��������������������������Σ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ҡ�
���ң�
���ҡ���
���ҡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��
//�����ʤ�
//���⡿
<voice name="��" class="��" src="voice/mc02/0290030a14">
��������������������ƾһ�䣬��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��
//�����ʤ�
//���⡿
<voice name="��" class="��" src="voice/mc02/0290040a14">
��������������ݺ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��
//�����ʤ�
//���⡿
<voice name="��" class="��" src="voice/mc02/0290050a14">
�����������������������ҽ����ϣ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��
//�����ʤ�
//���⡿
<voice name="��" class="��" src="voice/mc02/0290060a14">
��������������������������֮��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ɩ`��
//�����ӘS��
//���y�Ǻų��F
	CreateTextureEX("Gin", 1000, Center, @-300, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");

	OnSE("se���L_�Ɖ�_���k09", 1000);

	SetVolume("@mbgm*", 300, 0, null);
	CreateColorSP("��Ļ��", 1900, "WHITE");
	SoundPlay("@mbgm12",0,1000,true);

	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg026_���ӘSɽ��a_01.jpg");
	CreatePlainEX("�}��д", 1000);
	Fade("�}��д", 0, 800, null, true);
	Shake("�}��д", 500, 1,1, 0, 0, 1000, DxlAuto, false);
	DrawDelete("�\Ļ��", 200, 1000, "zoom_01_00_1", false);
	FadeDelete("��Ļ��",300,true);



	WaitKey(1000);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�}��д");
	Delete("�}����*");

	OnBG(100, "bg001_��b_01.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	Zoom("Gin", 0, 0, 0, Dxl2, false);

	SetBlur("Gin", true, 3, 300, 30, false);

	Fade("Gin", 0, 1000, null, false);
	WaitKey(1000);
	OnSE("se���L_����_��ͻ�M01", 1000);

	Request("Gin", Smoothing);
	Zoom("Gin", 500, 2000, 2000, Dxl2, false);
	Move("Gin", 250, @0, @300, Dxl2, true);
	FadeDelete("Gin", 500, true);
	WaitKey(1000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

}

..//������ָ��
//�Υե����롡"mc02_030.nss"