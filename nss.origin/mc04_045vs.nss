//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_045vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc04_045vs.nss","TurboBlur2",true);
	
//���å��ԥå��ãӣ��
//������󡸣ãУ�"mc04_043vs"�������@����
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
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc04_046vs.nss";

}

scene mc04_045vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mc04_044vs.nss"


//������������
	PrintBG("�ϱ���", 30000);

	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",2000,1000,0,1000,null,true);


	CreateColorSP("�\Ļ��", 18000, "BLACK");
	CreateTextureSP("�}����50", 100, Center, -400, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Request("�}����50", Smoothing);

	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d�Х���_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 50, 50, null, true);
	SetBlur("�}��", true, 1, 300, 100, false);
	Move("@�}��", 0, @0, @-50, null, true);

	Delete("�ϱ���");


	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();
	FrameShake();

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,272,null,false);
	CP_IHPChange(0,3,null,false);

	CP_EHPChange(0,6,null,true);
	CP_EnemyFade(0,10,220,300);

	CP_LockOnFade(0,"off",false);

	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se���L_����_��ͻ�M01",1000);

	Move("@�}��", 1000, @0, @30, Dxl1, false);
	Fade("@�}��", 300, 1000, null, false);

	DrawDelete("�\Ļ��", 200, 100, "slide_02_01_1", false);
	Move("�}����50", 1000, @0, @100, Dxl2, true);

	SoundPlay("@mbgm12",0,1000,true);

//	BGMoveAuto("@�}����50",1);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc04/045vs0010a00">
����Ұ������ս�񷨡�����Ѹ�ס�֮���ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Cockpit_AllFade0();
	Delete("@�}��*");
	SetVolume("SE10", 2000, 0, null);

	CloudZoomSet(15000);
	CloudZoomVertex(0,@600,@250,null,false);
	Request("�}Cloud*", AddRender);


	CreateTextureSP("�}EV100", 1999, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	CreateTextureSP("�}EV200", 2000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");
	CreateTextureSPadd("�}����������", 17500, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_e.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur2");
	SetAlias("�ץ�����","�ץ�����");


	CloudZoomStartB(1000,800,800,1000,1000);
	Request("�ץ�����", Start);
	Shake_Loop("@�}EV200","shake01");
	RailgunFlash();

	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	Fade("�}����200", 500, 1000, null, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��ӽ������֮ʫ��
�������Կ�ס���������Ӷ���Ϊ֮��ӡ��Կ�ס�

��ɱ��

�������ˣ�ɱ����

��������֮��������������
���Ѿ�������Ҫ���Ѿ���Ϊ�谭��
�ǲ����Ѿ��Ƕ���Ķ�����

�������Ľ������Ҳ����˼ɡ�
����Ȼնɱ�Ǹ���ʿ֮�󣬹��ƾͻ�ת���Դ����ξ������
�򣬵�Ҳ����ν��

�����ض��ᷴ��������ɱ����

�������Ҷ������ž�����ҡ��������
����������֦�ĸ�����ɱ���������Ҹ������Ե����Ρ�

�����������ľ�����
���Ƿ���ִ���ߡ�����������ˡ�������

������������
�������š���������������ɱ��!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����K�ʂ�
	CreateSE("SE01","se����_늓�_���02");
	CreateTextureEXadd("�}EV300", 2100, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");
	CreateColorEXadd("�}ɫ100", 18000, "WHITE");

	MusicStart("SE01",300,500,0,1000,null,true);
	Fade("�}EV300", 0, 1000, null, true);
	Fade("�}ɫ100", 200, 1000, null, false);
	Fade("�}EV300", 200, 0, null, true);
	Fade("�}EV300", 50, 1000, null, true);
	FadeDelete("�}ɫ100", 1000, false);
	Wait(700);
	Fade("�}EV300", 700, 0, null, true);
	Delete("�}EV300");

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc04/045vs0020a00">
����Űε�������


//��������
<voice name="����" class="����" src="voice/mc04/045vs0030a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����䣬
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����`�륬��
//�����Ф���`��
	CreateColorEXadd("�}ɫ100", 18000, "WHITE");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	Request("�}����300", AddRender);
	Zoom("�}����300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se����_늓�_���01");
	CreateSE("SE03","se���L_����_�z��������03");
	CreateSE("SE04","se���L_�Ɖ�_�z03");
	CreateSE("SE05","se���L_�Ɖ�_�z05");

	SetVolume("SE01", 2000, 0, null);
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("�}����300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("�}ɫ100", 1000, 1000, null, true);

	Delete("�}EV*");
	Delete("�}����200");
	Delete("�}����300");
	Delete("�}����������");
	RG_FlashDelete();
	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	CloudZoomDelete(0,true);

	CreateColorSPadd("�}ɫ���·�", 17500, "WHITE");
	Fade("�}ɫ100", 1000, 0, null, false);
	MovieSESet(17550,"mv늴Œi��_��","se����_mv��_늴Œi��_��");
	MovieSEStart(1500);
	Delete("�}ɫ100");
	SetVolume("@mbgm*", 1000, 0, null);

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE05",0,1000,0,1000,null,false);

	Cockpit_AllFade2();
	CP_EnemyFade0();
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);
	CP_PowerChange(0,202,null,true);


	Wait(3000);
	SetVolume("SE*", 2000, 0, null);

	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",2000,300,0,1000,null,true);


	FadeDelete("�}ɫ���·�", 2000, false);
	Move("@�}����50", 3000, @0, @-150, Dxl2, true);
	BGMoveAuto("@�}����50",1);


//������

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc04/045vs0040a00">
����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/045vs0050a01">
��������������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/045vs0060a00">
�������ء������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԩ`�����`����
	CreateSE("SE01","se����_���å��ԥå�_̽��01");
	CreateSE("SE02","se����_���å��ԥå�_̽��02");

	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);

	CP_EnemyFade(300,3,200,250);
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/mc04/045vs0070a01">
��������û��
��û��׹�䣬���ڷ��С�����

//��������
<voice name="����" class="��������" src="voice/mc04/045vs0080a01">
�����д��Ž�ս���������ӣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/045vs0090a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���εȿ�η��˫�ۡ�

������Űε��Ĺ�ѸҲ����������
����ˣ��ŷ���ס�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/mc04/045vs0100a01">
�����������ء�
���Ǹ����ӣ�������Ų��ܡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/045vs0110a00">
��Ҳ��׹����
��������ô���ܡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/045vs0120a00">
�����Ų������ֶ��֡���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/045vs0130a01">
��������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/045vs0140a00">
���Ǹ�������ɱ����֮ǰ��<RUBY text="����������">����������</RUBY>
�����׹�䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������
����Ҳ���ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mc04/045vs0150a00">
����ʹ׹���Ѿ����ɱ��⡭��
����������һ˲��֮ǰ��ҲҪ���Ҿ�ɱ����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/045vs0160a01">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/045vs0170a00">
�����ԡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ڣ�Ӧ�����ġ�
������ֻ��׷����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��׷�ġ�������
//��������Ȳ��g�ʒ���
	BGMoveDelete();

	CreateSE("SE01","se���L_�n��_�zܞ��01");
	OnSE("se���L_����_��ͻ�M03",1000);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);


	CreateSurfaceEX("�}Suf",1000,2000,"@�}����50");
	Fade("�}Suf", 0, 1000, null, false);

	SetVolume("SE10", 1000, 500, null);
	SetFrequency("SE10", 3000, 900, null);

	Rotate("�}Suf", 1500, @0, @0, 20, AxlDxl,false);
	Move("�}����50", 1500, @0, @200, AxlDxl, false);
	CP_RollBarMove2(1500,-20,AxlDxl,false);
	Zoom("@�}����50", 1400, 1100, 1100, null, true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}����*", 1500, 20, 0, 0, 0, 1000, Dxl3, false);
	Shake("@CP_Frame*", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	CP_RollBarMove2(500,@30,AxlDxl,false);
	Rotate("�}Suf", 500, @0, @0, @-30, AxlDxl,false);
	Move("@�}����50", 500, @-5, @-158, Dxl2, true);
	CP_RollBarMove2(2000,@-30,AxlDxl,false);
	Rotate("�}Suf", 2000, @0, @0, @30, AxlDxl,false);
	Move("@�}����50", 6000, -152, -688, AxlDxl, false);


	Wait(1000);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/mc04/045vs0180a01">
����������


{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc04/045vs0190a00">
�����������ޣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���˄ݻ؏͡�
	CreateSE("SE01","se���L_�n��_�zܞ��01");
	SetVolume("SE10", 1000, 500, null);
	SetFrequency("SE10", 1000, 1000, null);
	CP_RollBarMove2(1500,0,AxlDxl,false);
	Rotate("�}Suf", 1500, @0, @0, 0, AxlDxl,false);
	Move("@�}����50", 1500, @0, -388, AxlDxl, true);


//���ޤ����졣
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}����*", 1500, 20, 0, 0, 0, 1000, Dxl3, false);
	Shake("@CP_Frame*", 2000, 20, 0, 0, 0, 1000, Dxl2, false);
	SetVolume("SE10", 1000, 800, null);
	SetFrequency("SE10", 3000, 700, null);
	CP_RollBarMove2(3000,-50,AxlDxl,false);
	Rotate("�}Suf", 3000, @0, @0, @50, AxlDxl,false);
	Move("@�}����50", 3000, @0, @-1088, AxlDxl, false);

	Wait(2000);
	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);

	Cockpit_AllFade0();

	//CP_AllDelete();

}

..//������ָ��
//�Υե����롡"mc04_046vs.nss"

function TurboBlur2()
{

	while(1){
	Shake("$�����ʥå���", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 500, 1050, 1050, Dxl2, false);
	Fade("$�����ʥå���", 50, 1000, null, true);
	Fade("$�����ʥå���", 450, 0, null, true);

	Wait(500);
	Shake("$�����ʥå���", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 200, 1020, 1020, Dxl2, false);
	Fade("$�����ʥå���", 50, 1000, null, true);
	Fade("$�����ʥå���", 150, 0, null, true);
	Shake("$�����ʥå���", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 800, 1050, 1050, Dxl2, false);
	Fade("$�����ʥå���", 50, 500, null, true);
	Fade("$�����ʥå���", 750, 0, null, true);

	Wait(600);
	Shake("$�����ʥå���", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 500, 1050, 1050, Dxl2, false);
	Fade("$�����ʥå���", 50, 800, null, true);
	Fade("$�����ʥå���", 450, 0, null, true);

	Wait(400);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 150, 1020, 1020, Dxl2, false);
	Fade("$�����ʥå���", 0, 1000, null, true);
	Fade("$�����ʥå���", 150, 0, null, true);
	Shake("$�����ʥå���", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 150, 1020, 1020, Dxl2, false);
	Fade("$�����ʥå���", 0, 500, null, true);
	Fade("$�����ʥå���", 150, 0, null, true);
	Shake("$�����ʥå���", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 150, 1020, 1020, Dxl2, false);
	Fade("$�����ʥå���", 0, 800, null, true);
	Fade("$�����ʥå���", 150, 0, null, true);

	Wait(400);

	}

}