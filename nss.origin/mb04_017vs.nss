//<continuation number="570">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_017vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb04_017vs.nss","MASAMUNESHINOGI",true);
	
//���å��ԥå��ãӣ��
	CP_AllSet("����");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg072_��Ĥǵ����������L���B_03=true;
	#ev902_����늴Œi����`�륬��_c=true;
	#ev902_����늴Œi����`�륬��_d=true;
	#ev112_һ���򤪊������ä��������=true;
	#ev115_һ�����˴���뾰��_a=true;
	#ev119_һ��������֦��ˮԡ_b=true;
	#ev144_Ů���_�Α���Ҋ�ݤ���һ��_d=true;
	#bg201_�����ݳ������нֵ�_02=true;
	#ev919_�����L��������צ_a=true;
	#ev920_���ڸͶ�S�c��=true;
	#ev902_����늴Œi����`�륬��_b=true;
	#ev902_����늴Œi����`�륬��_a=true;
	#ev948_����ͻ�M����_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#aw_����=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_018.nss";

}

scene mb04_017vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();




	PrintBG("�ϱ���", 30000);
	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",1000,700,0,1200,null,true);
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	SoundPlay("@mbgm11",0,1000,true);

	Delete("�ϱ���");

	Wait(1000);

	OnSE("se���L_����_��ͻ�M03",1000);

	SetFrequency("SE10", 1000, 1100, null);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	Request("�}����50", Smoothing);
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Move("�}��", 0, @0, @0, null, true);
	Zoom("�}��", 0, 100, 100, null, true);
	SetBlur("�}��", true, 2, 300, 50, false);



//�����ߣ����å��ԥåȄ������x=======================
	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"on",false);
	CP_EnemyFade(0,10,420,300);

	CP_AltChange(0,10,Dxl2,false);
	CP_HighChange(00,1150,null,false);
	CP_SpeedChange(0,355,null,false);
	CP_AziChange(1000,189,Axl1,false);

	MyLife_Count(0,220);
	CP_IHPChange(0,3,null,false);
	CP_PowerChange(0,150,null,false);

	BGMoveAuto("@�}����50",1);
//===================================================

	CP_LockOnMove("@�}��",0,@0,@50,null,true);
	CP_RollBarMove("@�}����50", 0, 0, null, true);
	Fade("@�}��", 0, 1000, null, true);

	CP_LockOnMove("@�}��",500,@0,@-60,Dxl2,false);
	FadeDelete("�\Ļ��", 500, true);


	SetFrequency("SE10", 1000, 1000, null);
	SetVolume("SE10", 2000, 300, null);




..//������ָ��
//ǰ�ե����롡"mb04_016vs.nss"


//������ҕ�����

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0010a01">
����������

//��������
<voice name="����" class="��������" src="voice/mb04/017vs0020a01">
����������


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0030a00">
���š�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE*", 1000, 0, null);


//�����ڡ��ʤ󤫥ѥ�`�ϕN
	CreateTextureEX("�}�ꣲ", 1600, center, middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}�ꣲ", Smoothing);
	Zoom("�}�ꣲ", 0, 100, 100, null, true);
	Move("�}�ꣲ", 0, @0, @-10, null, true);
	SetBlur("�}�ꣲ", true, 2, 800, 200, false);
	CreateTextureEXadd("�}����100", 1500, Center, Middle, "cg/ef/ef039_�r�g�Ƅ�.jpg");
	Zoom("�}����100", 0, 1200, 1200, null, true);
	Move("�}����100", 0, @0, @50, null, true);

	CreateColorEXadd("�tɏ", 1600, "#FFFFFF");

//	FadeF4("�}��", 500, 600, 200000, 0, 0, null, false);
//	FadeF4("�}�ꣲ", 500, 300, 100000, 0, 0, null, false);

	Fade("�}�ݷ���*", 500, 0, null, false);
	Fade("����", 500, 0, null, true);
	Delete("�}�ݷ���*");
	Delete("����");

	Wait(1000);

	CreateSE("SE01","se����_��x_�k��04");
	CreateSE("SE10","se����_��x_���ڜʂ�_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,400,0,1000,null,true);

	Move("�}����100", 100000, @0, @50, Dxl2, false);
	Zoom("�}����100", 100000, 5000, 5000, Dxl2, false);
	Fade("�tɏ", 500, 200, null, false);
	Fade("�}����100", 1000, 500, null, true);

	CreateColorEXmul("�tɏ���`��", 2500, "#000000");
	DrawTransition("�tɏ���`��", 0, 200, 200, 500, null, "cg/data/circle_01_00_1.png", true);

	CreateProcess("�ץ�����", 12000, 0, 0, "MASAMUNESHINOGI");

$��`�ץ�`�֥ʥå��� = "@�}��";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@�}�ꣲ";
$��`�ץ�`�֥����ࣲ = 20000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Fade("�}�ꣲ", 1000, 500, null, false);

	Request("�ץ�����",Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	Fade("�tɏ���`��", 1000, 500, null, true);
	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb04/017vs0040a00">
������Ӧ�Լ��𣿡�


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0050a01">
�����尡����


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0060a00">
����֮ǰ���Ǹ�������
������Ϊ̫���������ȸ��µ���ʽ����


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0070a01">
�������������������������塣
����ֻ�������ɼƶ��ѡ���


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0080a00">
��ʲô��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ȷ����Ϊ���������������壬��Щ��ʽ��������
���ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0090a01">
�����ǻ�û�м������ڵ����塣��


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0100a00">
������
��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 1000, 1, null);


//�����롤������������ӘS����
	EfRecoIn1(18010,600);
	CreateTextureSP("�}����", 18000, Center, Middle, "cg/ef/ef028_���û��׷���b.jpg");
	EfRecoIn2(300);
	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mb04/017vs0110a00">
���������Ҫʹ��<RUBY text="������">��һ��</RUBY>�ɡ�
��������׼�ҷ�������ʱ����Ȼ���ȷ����ˡ���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0120a01">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����ò�˵������һ�������ǵ��жϡ�
���ȷ����˵Ĺ�����Զ������Ч�ķ����ֶΡ�

�����ο���������������һ����Ͳ�����������������
�������˵Ĵ���һ���������Ӷ�Ϊ��ս<RUBY text="��������">���¾��</RUBY>��
������˵��ֱ���練�ơ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

	SetVolume("SE10", 1000, 500, null);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0130a01">
����ô����������


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0140a00">
����Ȼ��
�������һ�����<RUBY text="��������">һ��Ϳ��</RUBY>����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE10", 1000, 0, null);

	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Cockpit_AllFade0();
	CP_LockOnDelete();
	Delete("@�}��*");

	CreateTextureSP("�}EV100", 1999, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	CreateTextureSP("�}EV200", 2000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");

	Shake_Loop("@�}EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	Fade("�}����200", 500, 1000, null, true);

	Wait(500);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0071]
//��������
<voice name="����" class="����" src="voice/mb04/017vs0150a00">
���Ų�װ�ƣ���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0160a01">
����װ����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Śݼ���
//��һ�ݤ��Ȥ�
	OnSE("se����_늓�_���02",1000);

	EffectZoomDXadd(10000, 500, 500, "BLUE", "cg/ev/ev902_����늴Œi����`�륬��_d.jpg", true);

	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();
	Delete("�}EV*");

	CreateTextureSP("�}��", 1590, center, middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);
	Move("�}��", 0, @0, @0, null, true);
//	SetBlur("�}��", true, 3, 800, 200, false);
	Shake("�}��", 1000000, 1, 0, 0, 0, 1000, null, false);

	OnSE("se����_늓�_���01",1000);
	FrameShake();

	Zoom("@�}����50", 400, 1500, 1500, Axl3, false);
	Zoom("@�}��", 400, 1000, 1000, Axl3, false);

	DrawDelete("�\Ļ��", 200, 100, "zoom_01_00_0", true);

	Wait(200);

	SetFwR("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/017vs0170a02">
��ʲ������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/017vs0180b40">
���š���!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ڥѥ�`��߳���
	CreateSE("SE10","se����_��x_���ڜʂ�_L");
	OnSE("se���L_����_��ͻ�M01",1000);

	MusicStart("SE10",0,1000,0,1000,null,true);
	Fade("�tɏ", 500, 700, null, true);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef039_�r�g�Ƅ�.jpg", true);

	SetVolume("SE10", 3000, 300, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������ͷŵ�������Ȼ����
���Ҳ���������Լ��������ͷŵ��˼��ޡ�

�����ǡ���Ϊʱ����
�����Ѿ��ڰε��ˣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb04/017vs0190a00">
���Ų���װ�������ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��늽~픡��ʂ�����
	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);



	Request("�ץ���*",Stop);
	Cockpit_AllFade0();
	Delete("@�}��*");
	Delete("�ץ���*");
	SetVolume("SE10", 1000, 700, null);

	CreateTextureSP("�}EV100", 1999, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	CreateTextureSP("�}EV200", 2000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");

	Shake_Loop("@�}EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	Fade("�}����200", 500, 1000, null, true);

	Wait(500);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb04/017vs0200a00">
����Ұ������ս�񷨡�Ѹ�ס�֮���ѡ�����


//��������
<voice name="����" class="����" src="voice/mb04/017vs0210a00">
����Űε���������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���⤬�Ť�
//��һ���Ȥ��ա��Υ��åȒ���
	CreateColorEXadd("�}ɫ100", 18000, "WHITE");
	CreateColorEXadd("�}ɫ�Ϸ�", 20000, "WHITE");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	Request("�}����300", AddRender);
	Zoom("�}����300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se����_늓�_���01");
	CreateSE("SE02","se����_늓�_���01");

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("�}����300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("�}ɫ100", 1000, 1000, null, true);
	Delete("�}����200");
	Delete("�}����300");

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureEX("�}����400", 17500, Center, Middle, "cg/ev/ev112_һ���򤪊������ä��������.jpg");
	CreateTextureEX("�}����500", 17500, Center, Middle, "cg/ev/ev115_һ�����˴���뾰��_a.jpg");
	CreateTextureEX("�}����600", 17500, Center, Middle, "cg/ev/ev119_һ��������֦��ˮԡ_b.jpg");
	CreateTextureEX("�}����700", 17500, Center, Middle, "cg/ev/ev144_Ů���_�Α���Ҋ�ݤ���һ��_d.jpg");

	Wait(150);

	Fade("�}����400", 0, 1000, null, true);
	Fade("�}ɫ100", 50, 200, null, true);

	Wait(100);
	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("�}����500", 0, 1000, null, true);
	Fade("�}ɫ100", 50, 200, null, true);

	Wait(100);
	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("�}����600", 0, 1000, null, true);
	Fade("�}ɫ100", 50, 200, null, true);

	Wait(100);
	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("�}����700", 0, 1000, null, true);
	Fade("�}ɫ100", 50, 200, null, true);

	Wait(500);

	Fade("�}ɫ100", 1000, 1000, null, true);
	Delete("�}����400");
	Delete("�}����500");
	Delete("�}����600");
	Delete("�}����700");

	Wait(500);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mb04/017vs0220a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����Ҫ����

��նɱ!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ�Ϸ�", 0, 1000, null, true);
	Fade("�}ɫ�Ϸ�", 500, 0, Axl3, false);

	MovieSESet(19000,"mv늴Œi��_��","se����_mv��_늴Œi��_��");
	MovieSEStart(0);

//�������`��
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�}ɫ100", 1500, "WHITE");

	CreateSE("SE01","se���L_�n��_�zܞ��02");
	CreateSE("SE02","se����_늓�_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	FadeDelete("�ϱ���", 0, false);

	Wait(1000);

	SetFwR("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/017vs0230a02">
������������������������!?��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/017vs0240b40">
��������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���᤭�᤭���ʤ��Ɖ�����Ƥ���
//���W�����

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb04/017vs0250a00">
�������ͣ���

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����50", 100, Center, -800, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Request("�}����50", Smoothing);
	Shake("�}����50", 10000000, 0, 1, 0, 0, 1000, null, false);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@0,@100,null,true);

	CreateSE("SE01","se���L_����_�z_�����w��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("�}����50", 3000, 20, 10, 0, 0, 1000, Dxl2, false);
//	Zoom("�}����50", 3000, 600, 600, Dxl2, false);
	Move("�}����50", 50000, @0, -1300, null, false);
	FadeDelete("�}ɫ100", 3000, false);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����⡪�����ʲ����ˣ�
��<RUBY text="��������">�޷���͸</RUBY>��

��������ͨ�Ľ��У���һ�������Խ���һ�����ϡ���
����ӵ�����µ�һ֮����װ��ȴ���쳣�ι̣�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mb04/017vs0260a00">
����ʤ���Ѷ�������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������ָС���
����׼�������ȫ�ж��ˣ�

������һ�����޷��ٽ��з��С�
��ֻ��׹����档

����Ȼ�����Թ�������һ������ʤ��ȴ�ѡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0270a01">
����������������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0280a00">
��!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEXadd("�}����400", 19500, Center, Middle, "cg/ef/ef043_צ����.jpg");
	Rotate("�}����400", 0, @0, @0, @180, null,true);

//���ʤ�צ�Τ�`�ʤΤ�
//���ܤ�
	OnSE("se����_�z_װ��04",1000);
	OnSE("se���L_����_��ͻ�M02",1000);

	Fade("�}����400", 50, 1000, null, true);
	Zoom("�}����400", 600, 1100, 1100, Dxl2, false);
	FadeDelete("�}����400", 1500, false);
	EffectZoomDX(10000, 1500, 500, "#FFFFFF", "cg/ef/ef043_צ����.jpg", true);

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/mb04/017vs0290a00">
������ʲ������


//��������
<voice name="����" class="����" src="voice/mb04/017vs0300a00">
������ʲô!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ڡ��L��������צ
	CreateColorEX("�}ɫ100", 18500, "WHITE");
	Fade("�}ɫ100", 150, 1000, null, true);


	CreateTextureEX("�}����100", 17500, Center, Middle, "cg/ev/ev919_�����L��������צ_a.jpg");
	CreateTextureEX("�}����200", 17500, Center, Middle, "cg/ev/ev919_�����L��������צ_a.jpg");
	SetBlur("�}����200", true, 3, 500, 200, false);
	Request("�}����200", Smoothing);

	SoundPlay("@mbgm12",0,1000,true);
	OnSE("se���L_����_�L��������צ01",1000);

	Fade("�}����100", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 300, false);
	Zoom("�}����200", 500, 1500, 1500, Axl2, false);
	Fade("�}����200", 200, 1000, null, true);
	FadeDelete("�}����200", 500, true);

	Wait(1000);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���������ڵ��ؿڱ����ˡ�
���򿪺������ʲô�������ǡ���

����ͷ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0310a01">
���ߡ����߹�!?��


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0320a00">
���������߹ǽ���<RUBY text="����">����</RUBY>�𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}����50", 0, @0, -1300, null, true);

	Move("�}����50", 30000, @0, -1600, null, false);
	FadeDelete("�}����100", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���߹������š�Ӳ��֮�������ݡ�
��
�������Ҵ�δ������������Ĺ���������

������������ȥ�롣

�������ǽ��Լ����뱬�ѵ����ڣ�������ͬ�Լ����ֱ�
һ���ջٵ�����֮���������ڵ��Ժ������ֻ�н�����
������һ���¶��ѡ�
�����ǿ��µĽ��С�

���������һ��Ҳδ���С�
�����ڻᡪ��׹����档

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������ڡ�����ä��g��ȡ�ä�
//����������I���_����褦������
	Wait(500);
	OnSE("se���L_����_������01",1000);
	OnSE("se���L_����_������03",1000);
	Wait(500);

	SetFwR("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/017vs0330a02">
�����������ӿ�������


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0340a00">
������!?��


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/017vs0350a02">
������Ϊ��ֻ�Ǽ򵥵��߹�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����`����Ġ���w�֡��c�Ȥ���
//�����`�Ȼ�ľ�����l�T���ϣ֣�ħ��ܞ���Ρ�

//�����ߣ��زĶ��x
	CreateColorEX("�}ɫ100", 18500, "WHITE");

	CreateTextureEX("�}����100", 17500, Center, Middle, "cg/ev/ev920_���ڸͶ�S�c��.jpg");
	CreateTextureEX("�}����200", 17500, Center, Middle, "cg/ev/ev920_���ڸͶ�S�c��.jpg");
	SetBlur("�}����200", true, 3, 500, 200, false);
	Request("�}����200", Smoothing);

	CreateTextureEX("�}����400", 17000, Center, Middle, "cg/ev/ev920_���ڸͶ�S�c��.jpg");
	CreateTextureEX("�}����500", 17000, Center, Middle, "cg/ev/ev920_���ڸͶ�S�c��.jpg");
	CreateColorEXadd("�}ɫ100", 17500, "WHITE");
	Request("�}����400", Smoothing);
	Request("�}����500", Smoothing);
	Zoom("�}����400", 0, 2000, 2000, null, true);
	Zoom("�}����500", 0, 1200, 1200, null, true);
	SetBlur("�}����500", true, 3, 200, 70, false);

	CreateSE("SE05","se����_����_���S03");
	CreateSE("SE06","se���L_����_�z������01");
	CreateSE("SE07","se���L_����_�z������01");
	CreateSE("SE08","se���L_����_�z_�g���01");


//�����ߣ����k����
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 150, 0, null, false);
	Fade("�}����400", 0, 1000, null, true);
	DrawTransition("�}����400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Move("�}����400", 0, -312, -100, null, true);
	Wait(50);
	Move("�}����400", 0, -350, -150, null, true);
	Wait(50);
	MusicStart("SE07",0,1000,0,1000,null,false);
	Move("�}����400", 0, -510, -120, null, true);

	Fade("�}ɫ100", 50, 1000, null, true);
	Delete("�}����200");
	Delete("�}����400");
	CP_AllDelete();

	MusicStart("SE08",0,1000,0,1000,null,false);
	OnSE("se���L_����_�L��������צ01",1000);
	Fade("�}����500", 0, 1000, null, true);
	Zoom("�}����500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ev/ev920_���ڸͶ�S�c��.jpg", false);
	FadeDelete("�}ɫ100", 2000, false);





	Fade("�}����100", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 300, false);
	Fade("�}����200", 200, 1000, null, false);
	Zoom("�}����200", 500, 1500, 1500, Dxl2, true);
	Zoom("�}����200", 500, 1000, 1000, Axl2, false);
	FadeDelete("�}����200", 500, true);

	Wait(1000);

	Delete("�}����100");
	CloudZoomDelete(0,true);


	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0360a01">
���ȡ�����


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/017vs0370b40">
���������ڵ����ɼ�֮һ��
�������Ͷ������!!��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����Ġ�˲��ޤ����

	SetFwR("cg/fw/fwһ��_����b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/017vs0380a02">
��ѽ����������������!!��


{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0390a00">
��ʲ����ʲô����!?��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
��Ͷ������!?

��������Ȼ�ء�����Ȼ��Ҳ��֪�������Ժ�Ϊ����
��Ϊ����������Ȼ�����Ⲣ���Ǽ򵥵����ࡣ
���Ǳ�װ�׻��˵����ࡣ

���������������Ը���ǿ��������������ң�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0400a01">
���������������ѣ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0410a00">
����֪����
�����ǡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
����û����ô�򵥡�

�������Ƚ��ֱ����ѡ�
��ֻҪһֻ�ֱۻ�����ɵĻ����ܹ�ʹ��̫����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0420a01">
���죡��


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0430a00">
������ҡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�����µ�������ͨ����������������������������ʩ
��ն��������Ȼ����������������״̬�»���ʹ��ǿ��
��һ�������ԣ���Ӧ�ǰ첻���ġ�
���Ǿ�û�б�Ҫ����ʧ�롣

����Ҫע����ǵ��˵����壬����������Ҳ�ڷ�����ǰ
һ�̱��ҵĵ�Űε��������ˡ�
��Ҫ������ʹ����һ��ʽ����Ҫʱ�䡣

��������ʮ��𼱡�
������Ҫ���侲������������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0440a01">
�����ԣ�
�����˵�����<RUBY text="����������">�Ѿ�������</RUBY>!!��


{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/017vs0450a00">
������ʲô!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��������ô���¡�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0460a01">
���죡
��������ȥ�Ļ�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ڡ����奢�åף�



	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}����500");

	CreateColorEXadd("�}ɫ100", 18500, "WHITE");
	CreateWindow("�}�ݷ���", 16200, Center, 0, 1024, 288, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16200, 0, -144, "cg/bg/resize/bg002_��a_02.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16300, -135, -50, "cg/st/3d����_����_��x.png");
	Move("�}�ݷ���", 0, @0, @-288, null, true);
	Zoom("�}�ݷ���/�}���}", 0, 2000, 2000, null, true);

	CreateColorSP("����", 150, "BLACK");
	Fade("����", 0, 500, null, true);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	Wait(200);


	Move("�}�ݷ���", 500, @0, @432, Dxl2, false);
	Fade("�}�ݷ���/�}�ݱ���", 300, 1000, null, true);

	OnSE("se����_�z_װ��06",1000);
	Fade("�}ɫ100", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 1000, false);
	OnSE("se���L_����_��ͻ�M02",1000);
	Zoom("�}�ݷ���/�}���}", 1000, 1000, 1000, Dxl2, false);
	Move("�}�ݷ���/�}���}", 1000, @0, @-200, Dxl2, false);
	Fade("�}�ݷ���/�}���}", 300, 1000, null, true);

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/017vs0470b40">
����������


{	FwR("cg/fw/fwһ��_����b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/017vs0480a02">
��������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/017vs0490b40">
��������ʹҲ����ʹ�࣡
�������վ�Ҳֻ��һ���������٣����˽�ʳ��
ʱ����Ҫ��������ʱ��û����Ҳ�޷�����


{	FwR("cg/fw/fwһ��_����b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/017vs0500a02">
��������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/017vs0510b40">
��Ҫ��ʼ�ˣ���


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/017vs0520a02">
��������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SetVolume("@mbgm*", 2000, 0, null);

//�����㤭�󡣼{��
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("�}�ݷ���*");

	Cockpit_AllFade0();
	CP_AllDelete();

	CreateWindow("������ɥ���", 15000, 0, 0,1024, 288, false);
	CreateWindow("������ɥ���", 15000, 0, 288, 1024, 576, false);
	SetAlias("������ɥ���","������ɥ���");
	SetAlias("������ɥ���","������ɥ���");

	CreateWindow("������ɥ��k", 15000, 112, 0,400, 576, false);
	SetAlias("������ɥ��k","������ɥ��k");
	CreateTextureEX("������ɥ��k/�}EV100", 16000, Center, Middle, "cg/ev/resize/ev948_����ͻ�M����ex.jpg");
	Request("������ɥ��k/�}EV100", Smoothing);
	Zoom("������ɥ��k/�}EV100", 0, 2000, 2000, null, true);
	Move("������ɥ��k/�}EV100", 0, @-150, @0, null, false);
	CreateTextureEX("������ɥ��k/�}EV200", 16000, Center, Middle, "cg/ev/resize/ev948_����ͻ�M����ex.jpg");
	Request("������ɥ��k/�}EV200", Smoothing);
	Zoom("������ɥ��k/�}EV200", 0, 2000, 2000, null, true);
	Move("������ɥ��k/�}EV200", 0, @-150, @0, null, false);



	Delete("�\Ļ��");


	CreateTextureSP("�}EV100", 14000, Center, Middle, "cg/ev/resize/ev948_����ͻ�M����ex.jpg");
	CreateTextureEX("�}EV200", 14000, Center, Middle, "cg/ev/resize/ev948_����ͻ�M����ex.jpg");
	Request("�}EV100", Smoothing);
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	Move("�}EV100", 0, @+400, @+288, null, false);
	Request("�}EV200", Smoothing);
	Zoom("�}EV200", 0, 2000, 2000, null, true);
	Move("�}EV200", 0, @0, @+288, null, false);

	Move("�}EV100", 500, @-400, @0, Dxl1, false);
	Move("������ɥ���", 300, @0, @-200, null, false);
	Move("������ɥ���", 300, @0, @+200, null, true);

	WaitAction("�}EV100", null);
	CreateColorEXadd("�}ɫ100", 14001, "White");

	OnSE("se����_�z_װ��01",1000);

//	SoundPlay("@mbgm12",0,1000,true);

	CreateProcess("�ץ�����", 12000, 0, 0, "MASAMUNESHINOGI");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����",Start);


	Fade("�}EV200", 0, 1000, null, false);
	Fade("�}ɫ100", 0, 1000, null, false);
	Move("�}EV200", 30000, 0, 0, null, false);
	Zoom("�}EV200", 30000, 1000, 1000, null, false);
	DrawTransition("�}ɫ100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("�}EV100");
	FadeDelete("�}ɫ100",1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��������ڡ���
����̫�������˵��ʣ�

��Ϊʲô����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ф��Ф������
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





//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
������������������������������������������!?

�����ǡ�
����������ǣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/017vs0530b40">
���������ƹ���
�������ж����
���������ߣ��ؽ�������
������֮�ˣ��������䣡��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
��
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/017vs0540b40">
�������������������Ӧ!!
���������������췣����!!��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��늴Œi��������Х�

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="��������" src="voice/mb04/017vs0550a01">
������!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��<RUBY text="��">����</RUBY>����������!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/017vs0560a02">
����Ұ������ս�񷨡�Ѹ�ס�֮���ѡ���


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��`����̨�~�Υ��å��������ޤ�����
//��һ����
//<voice name="һ��" class="һ��" src="voice/mb04/017vs0570a02">
//��<RUBY text="��`�륬��">늴Œi��</RUBY>�D�D�D�D��<RUBY text="�ޥ���">��</RUBY>_��!!��
<voice name="һ��" class="һ��" src="voice/mb04/017vs0570a02">
����Űε�����������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ڡ�늴Œi��
	#aw_����=true;

//�������`��
	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("������ɥ���/*");
	Delete("������ɥ���/*");
	Delete("������ɥ��k/*");

	Delete("������ɥ���");
	Delete("������ɥ���");
	Delete("������ɥ��k");

	Delete("�}ɫ100");
	Delete("�}EV100");
	Delete("�}EV200");

	CreateTextureSP("�}EV100", 1999, Center, Middle, "cg/ev/resize/ev948_����ͻ�M����ex.jpg");
	CreateTextureSP("�}EV200", 2000, Center, Middle, "cg/ev/resize/ev948_����ͻ�M����ex.jpg");
	CreateTextureSPadd("�}����������", 2001, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_e02.png");
	Rotate("�}����������", 0, @0, @180, @0, null,true);

	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur2");
	SetAlias("�ץ�����","�ץ�����");

	CreateSE("SE01","se����_늓�_���01");
	CreateSE("SE02","se����_늓�_���02");

	Shake("�}����������", 100000, 3, 5, 0, 0, 1000, null, false);
	Request("�ץ�����", Start);

	Shake_Loop("@�}EV200","shake01");
	RailgunFlash();

	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	Fade("�}����200", 500, 1000, null, true);

	CreateColorEX("�}ɫ100", 20000, "WHITE");
	CreateColorEX("�}ɫ200", 18000, "WHITE");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ev/resize/ev948_����ͻ�M����ex.jpg");
	Request("�}����300", AddRender);
	Zoom("�}����300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se����_늓�_���01");
	CreateSE("SE02","se����_늓�_���01");

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("�}����300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("�}ɫ100", 1000, 1000, null, true);
	Delete("�}����200");
	Delete("�}����300");
	Delete("�}����������");

	Fade("�}ɫ100", 500, 0, Axl3, false);
	Fade("�}ɫ200", 500, 1000, Axl3, false);
	MovieSESet(19000,"mvM��","se����_mv��_늴Œi��_��");
	MovieSEStart(0);

	CreateSE("SE01","se���L_�n��_�zܞ��02");
	CreateSE("SE02","se����_늓�_���02");
	CreateSE("SE03","se���L_����_�z_�����w��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);


	Wait(1000);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(2000);

	SetVolume("@mbgm*", 3000, 0, null);
	SetVolume("SE*", 3000, 0, null);

	ClearWaitAll(4000, 3000);


//���\



}

..//������ָ��
//�Υե����롡"mb04_018.nss"



function MASAMUNESHINOGI()
{

	CreateColor("�٤����", 17900, 0, 0, 1024, 576, "BLUE");
	SetAlias("�٤����","�٤����");
	Request("�٤����", AddRender);
	Fade("�٤����", 0, 0, null, false);
//	DrawTransition("�٤����", 0, 200, 200, 990, null, "cg/data/circle_01_00_0.png", true);


	begin:

	while(1)
	{
	Fade("�٤����",150,200,null,true);
	Fade("�٤����",200,150,null,true);
	Fade("�٤����",180,230,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,190,null,true);
	Fade("�٤����",200,150,null,true);

	Fade("�٤����",150,230,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,170,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,200,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,170,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",100,280,null,true);
	Fade("�٤����",350,150,null,true);
	Fade("�٤����",100,240,null,true);
	Fade("�٤����",150,120,null,true);
	Fade("�٤����",200,220,null,true);
	Fade("�٤����",170,100,null,true);

	Fade("�٤����",150,120,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",100,240,null,true);
	Fade("�٤����",140,140,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,130,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,130,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,120,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,120,null,true);
	Fade("�٤����",400,90,null,true);
	Fade("�٤����",180,110,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,130,null,true);
	Fade("�٤����",200,90,null,true);

	}


}