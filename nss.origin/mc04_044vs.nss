//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_044vs.nss_MAIN
{

	
//���å��ԥå��ãӣ��
//������󡸣ãУ������Υ��`��ãг����Ƥʤ��ݤ������Τ��˱ܡ�
	//CP_AllSet("�Х���");

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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;


	Cockpit_AllFade0();
	//CP_AllDelete();

	$GameName = "mc04_045vs.nss";

}

scene mc04_044vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_043vsb.nss"


//������֦������
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�}ɫ100", 20000, "BLACK");
	CreateTextureSP("�}����50", 100, Center, -400, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Request("�}����50", Smoothing);

	BGMoveAuto("@�}����50",1);
	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

	CreateTextureSP("�}��", 1590, center, middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Rotate("�}��", 0, @0, @0, @30, null,true);
	Zoom("�}��", 0, 30, 30, null, true);
	Move("�}��", 0, @0, @300, null, true);
	SetBlur("�}��", true, 1, 200, 50, false);

	$�����ʥå����� = @�}��;
	CreateProcess("�ץ�����", 150, 0, 0, "RotateLoop");
	SetAlias("�ץ�����","�ץ�����");

	CreateTextureEXadd("�}���ѩ`��", 17500, Center, Middle, "cg/ef/ef044_��c.png");
	Zoom("�}���ѩ`��", 0, 100, 100, null, true);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SE10","se���L_����_��ͻ�M05");


	CloudZoomSet(1000);
	CloudZoomVertex(500,@0,@0,null,false);

	Delete("�ϱ���");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);
	SetFrequency("SE10", 2000, 1200, null);

	Shake_Loop("@�}��","shake02");
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	CloudZoomStart(1000,800,800,1000,1000);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_����AȾ.jpg", false);
	Zoom("�}����50", 1000, 1400, 1400, Dxl2, false);
	Move("�}��", 1000, @0, @-300, Dxl2, false);
	DrawDelete("�}ɫ100", 300, 100, "zoom_01_00_1", true);
	SetVolume("SE10", 3000, 300, null);


	Wait(500);
	CreateColorEXadd("�tɏ", 1600, "BLUE");

//	FadeF4("�}��", 500, 600, 200000, 0, 0, null, false);
//	FadeF4("�}�ꣲ", 500, 300, 100000, 0, 0, null, false);

	Fade("�}�ݷ���*", 500, 0, null, false);
	Fade("����", 500, 0, null, true);
	Delete("�}�ݷ���*");
	Delete("����");


	CreateSE("SE21","se����_늓�_���02");
	CreateSE("SE10","se����_��x_��`�륬��_�ʂ�");

	MusicStart("SE21",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,500,0,1000,null,true);
	Fade("�}���ѩ`��", 50, 1000, null, false);
	Rotate("�}���ѩ`��", 1000, @0, @0, 6000, null,false);
	Zoom("�}���ѩ`��", 1000, 500, 500, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef045_���ѩ`��.jpg", true);
	FadeDelete("�}���ѩ`��", 500, false);

	Move("�}����100", 100000, @0, @50, Dxl2, false);
	Zoom("�}����100", 100000, 3000, 3000, Dxl2, false);
	Fade("�tɏ", 500, 500, null, false);
	Fade("�}����100", 1000, 500, null, true);


	Wait(500);
	SoundPlay("@mbgm12",0,1000,true);

	SetFwR("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/044vs0010a03">
������������?!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������֦�����˽⡣

�����˽�<RUBY text="��������">�������</RUBY>��

�����׵ģ�ֻ��һ���¡�
��
�����ǡ�����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 30000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	CloudZoomDelete(0,true);

	ClearFadeAll(0, true);
	//CP_AllDelete();


}

..//������ָ��
//�Υե����롡"mc04_045vs.nss"
