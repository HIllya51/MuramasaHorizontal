//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_034.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc04_034.nss","TurboBlurEX",true);
	
//���å��ԥå��ãӣ��
	CP_AllSet("�Х���");

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

	$GameName = "mc04_035.nss";

	Cockpit_AllFade0();

}

scene mc04_034.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();




..//������ָ��
//ǰ�ե����롡"mc04_033vs.nss"


//��ҕ�������
//���Х��������ɡ�������å�����

	PrintBG("�ϱ���", 30000);

	CreateTextureEXadd("�}����������", 27500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlurEX");
	SetAlias("�ץ�����","�ץ�����");


	CreateSE("SE�ȥ�ǥޥ�", "se���L_����_������02_L");
	MusicStart("SE�ȥ�ǥޥ�",2000,1000,0,1500,Dxl3,true);

	CreateColorSP("�\Ļ��", 28000, "BLACK");
	CreateTextureSP("�}����10���ä��ԤäȤ�ꤦ��", 21000, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	CreateTextureSP("���ޤ�����", 21000, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	Move("���ޤ�����", 0, @100, @0, null, true);
	Zoom("���ޤ�����", 0, 2500, 2500, Axl3, true);
	SetBlur("���ޤ�����", true, 1, 500, 50, false);
	SetBlur("�}����10���ä��ԤäȤ�ꤦ��", true, 1, 500, 50, false);

	Request("���ޤ�����", Smoothing);
	Request("�}����10���ä��ԤäȤ�ꤦ��", Smoothing);
	Delete("�ϱ���");


	Shake("�}����10", 500000, 1, 1, 0, 0, 1000, Axl2, false);
	Shake("���ޤ�����", 500000, 1, 1, 0, 0, 800, Axl2, false);
	Zoom("�}����10���ä��ԤäȤ�ꤦ��", 0, 4000, 4000, Axl3, false);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);

//	WaitKey(100);
	Move("���ޤ�����", 1000, @-100, @0, null, true);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	MyLife_Count(1,780);
	MyTr_Count(0,300);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	CP_AziChange(0,31,AxlDxl,false);

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(400,"off",false);
	CP_EnemyFade(300,10,420,300);


	OnSE("se���L_����_��ͻ�M08",1000);

	Request("�ץ�����", Start);

	Zoom("���ޤ�����", 1000, 5, 5, Axl3, false);
	Zoom("�}����10���ä��ԤäȤ�ꤦ��", 1000, 1000, 1000, Axl2, false);

	Wait(800);

	CreateTextureSP("���ޤ�", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	Zoom("���ޤ�", 0, 5, 5, Dxl3, false);
	FadeDelete("���ޤ�����", 500, false);
	FadeDelete("�}����10���ä��ԤäȤ�ꤦ��", 500, true);
	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	Delete("�}����������");

	WaitKey(1000);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0340010a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
��<RUBY text="������">������ʥ</RUBY>����ȫ�ز�׽ס�˵��˵����ˡ�
����ȫ���������ء�


��������ʧ��
�����Բ�������ʧ��

������������
�����ն�������ɱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���՜ʤ��֤��
	FadeF4("@CP_LockOff", 0, 1000, 3000, 0, 0, null, true);
	FadeF4("@CP_LockOff", 0, 1000, 10000, 0, 0, null, false);
	WaitKey(1000);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0340020a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

	//CP_AllDelete();
	Cockpit_AllFade0();
}

..//������ָ��
//�Υե����롡"mc04_035.nss"

function TurboBlurEX()
{

	while(1){
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 100, 2000, 2000, Axl2, false);
	Fade("$�����ʥå���", 0, 500, null, true);
	Fade("$�����ʥå���", 100, 0, null, true);
	Rotate("$�����ʥå���", 0, @0, @0, @180, null,true);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 100, 2000, 2000, Axl2, false);
	Fade("$�����ʥå���", 0, 400, null, true);
	Fade("$�����ʥå���", 100, 0, null, true);


	}

}