
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_043vsb.nss_MAIN
{

	
//���å��ԥå��ãӣ��
	//CP_AllSet("����");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#ev170_�Х������L���䚢_a=true;
	#ev170_�Х������L���䚢_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//������󡸣ãУ��ΤΥե�����ǣã�ʹ�ä��Ƥʤ��ä��Τ��˱ܡ�
	Cockpit_AllFade0();
	//CP_AllDelete();

	$GameName = "mc04_044vs.nss";

}

scene mc04_043vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ100", 18000, "BLACK");
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mc04_043vs.nss"

//�񚢤�����


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ɱ��

��Ҫɱ���Ǹ���ʿ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå������L����
	EfRecoIn1(18500,600);

	CreateTextureEX("�}����", 18000, @0, @0, "cg/ev/ev170_�Х������L���䚢_c.jpg");
	Fade("�}����", 0, 1000, null, true);
	CreateTextureEX("�}����2", 18000, @0, @0, "cg/ev/ev170_�Х������L���䚢_a.jpg");

	EfRecoIn2(300);

	Wait(500);

	Fade("�}����2", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ޡ�
�����ޣ����ޣ������������ޡ�

���Ǹ��ǳ�С�
�������ĳ��ˡ�

���޷���ˡ��
��������ˡ��

�����ޣ���������ȥɱ��
��ִ��������ʵ��ɱ����

��ɱ��

��Ψһ����ͷ��
��������һ�ж�û�б�Ҫ��

���ն�����ֻҪ������ͺá�

����ɱ��᳹���ס�������
��
��ֻ֪��ɱ��֮���Ĵն����������ȴ�������֦
�Ļ������������������!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����L�͎�
	EfRecoOut1(300);

	Delete("�}����*");
	EfRecoOut2(600,true);

	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CreateTextureSP("�}����50", 100, Center, -1600, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Request("�}����50", Smoothing);

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();


	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se���L_����_��ͻ�M02",1000);


	DrawDelete("�}ɫ100", 200, 100, "slide_02_01_1", false);
	Move("�}����50", 1000, @0, @800, Dxl2, true);

//�����T�ӽ�
	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("@�}��", 200, 1000, null, false);
	Zoom("@�}��", 900, 500, 500, Axl3, true);
	Move("@�}��", 500, @0, @-50, Dxl2, true);
	Move("@�}��", 400, @0, @50, Dxl3, false);
	Fade("�}ɫ100", 400, 1000, Dxl3, false);


//��������늡���`�륬��ʂ�
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	Cockpit_AllFade0();
//	CP_AllDelete();


	Delete("�}M");
	Delete("�}����50");
	Delete("�}EV100");
	Delete("�}EV200");
	Delete("�}shin");
	Delete("�}ɫ400");
	Delete("���ե����ȣ�");

	CreateWindow("������ɥ���", 15000, 0, 0,1024, 288, false);
	CreateWindow("������ɥ���", 15000, 0, 288, 1024, 576, false);
	SetAlias("������ɥ���","������ɥ���");
	SetAlias("������ɥ���","������ɥ���");

	CreateWindow("������ɥ��k", 15000, 512, 0,400, 576, false);
	SetAlias("������ɥ��k","������ɥ��k");
	CreateTextureEX("������ɥ��k/�}EV100", 16000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_b.jpg");
	Request("������ɥ��k/�}EV100", Smoothing);
	Zoom("������ɥ��k/�}EV100", 0, 2000, 2000, null, true);
	Move("������ɥ��k/�}EV100", 0, @-300, @0, null, false);
	CreateTextureEX("������ɥ��k/�}EV200", 16000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	Request("������ɥ��k/�}EV200", Smoothing);
	Zoom("������ɥ��k/�}EV200", 0, 2000, 2000, null, true);
	Move("������ɥ��k/�}EV200", 0, @-300, @0, null, false);




	CreateTextureSP("�}EV100", 14000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_a.jpg");
	CreateTextureEX("�}EV200", 14000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_b.jpg");
	Request("�}EV100", Smoothing);
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	Move("�}EV100", 0, @+400, @+288, null, false);
	Request("�}EV200", Smoothing);
	Zoom("�}EV200", 0, 2000, 2000, null, true);
	Move("�}EV200", 0, @0, @+288, null, false);

	Move("�}EV100", 500, @-400, @0, Dxl1, false);
	Move("������ɥ���", 300, @0, @-200, null, false);
	Move("������ɥ���", 300, @0, @+200, null, false);
	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_1", true);
	Delete("�\Ļ��");

	WaitAction("�}EV100", null);
	CreateColorEXadd("�}ɫ100", 14001, "White");

	OnSE("se����_�z_װ��01",1000);

//	SoundPlay("@mbgm11",0,1000,true);

	CreateProcess("�ץ�����", 12000, 0, 0, "Lastfire");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����",Start);

	OnSE("se���L_����_�z_���01",1000);
	OnSE("se���L_����_��ͻ�M06",1000);

	Fade("�}EV200", 0, 1000, null, false);
	Fade("�}ɫ100", 0, 1000, null, false);
	DrawTransition("�}ɫ100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("�}EV100");
	FadeDelete("�}ɫ100",1000,false);
	Move("�}EV200", 1000, 0, 0, Axl3, false);
	Zoom("�}EV200", 1000, 1000, 1000, Axl3, true);

	EffectZoomadd(15000, 700, 100, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg", false);

	Wait(200);

//�����ߣʀ��

	CreateColorSP("������ɥ���/�}ɫ100", 15000, "Black");
	CreateColorSP("������ɥ���/�}ɫ100", 15000, "Black");

	CreateColorEX("�}ɫ100", 14005, "Black");
	CreateColorEXadd("�ե�å��奢����", 18005, "WHITE");
	Fade("�}ɫ100", 0, 700, null, false);
	DrawTransition("�}ɫ100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("������ɥ��k/�}EV100", 0, 1000, null, false);
	DrawTransition("������ɥ��k/�}EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);

	Wait(300);

	Fade("������ɥ��k/�}EV200", 0, 1000, null, false);
	Shake("������ɥ��k/�}EV200", 500000, 2, 1, 0, 0, 1000, null, false);

	OnSE("se����_늓�_���01",700);

	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("������ɥ��k/�}200", 20000, #99CCFF);
	Fade("������ɥ��k/�}200", 10, 600, null, true);
	Fade("������ɥ��k/�}200", 100, 0, null, true);
	Fade("������ɥ��k/�}200", 10, 500, null, true);
	Fade("������ɥ��k/�}200", 100, 0, null, true);
	Fade("������ɥ��k/�}200", 10, 700, null, true);
	Fade("������ɥ��k/�}200", 100, 0, null, true);
	Fade("������ɥ��k/�}200", 10, 500, null, true);
	Fade("������ɥ��k/�}200", 100, 0, null, true);
	Fade("������ɥ��k/�}200", 10, 800, null, true);
	Fade("������ɥ��k/�}200", 100, 0, null, true);

	SetVolume("SE01", 100, 0, null);



	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("������ɥ���/*");
	Delete("������ɥ���/*");
	Delete("������ɥ��k/*");

	Delete("������ɥ���");
	Delete("������ɥ���");
	Delete("������ɥ��k");

	Delete("�}ɫ100");
	Delete("�}EV100");
	Delete("�}EV200");

	CreateTextureSP("�}EV100", 1999, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	CreateTextureSP("�}EV200", 2000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");

	Shake_Loop("@�}EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se����_늓�_���01");
	CreateSE("SE02","se����_늓�_���02");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Fade("�}����200", 500, 1000, null, true);


	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(1000);

	SetVolume("*", 3000, 0, null);

	Fade("�ե�å��奢����", 1000, 1000, null, true);

	ClearFadeAll(2000, true);

	//CP_AllDelete();


	Wait(1000);

}

..//������ָ��
//�Υե����롡"mc04_044vs.nss"