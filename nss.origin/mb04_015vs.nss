//<continuation number="770">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_015vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb04_015vs.nss","FlyMoving",true);
	Conquest("nss/mb04_015vs.nss","FlyMoving2",true);
	
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
	#bg002_��a_02=true;
	#ev947_�����ؓĚ���=true;
	#ev948_����ͻ�M����=true;
	#ev902_����늴Œi����`�륬��_b=true;
	#ev902_����늴Œi����`�륬��_c=true;
	#ev902_����늴Œi����`�륬��_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_016vs.nss";

}

scene mb04_015vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_014.nss"

//���ãǣ���
//���ӣţ������������������`��
	PrintBG("�ϱ���", 30000);
//	SoundPlay("@mbgm17",0,1000,true);
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}����100", 100, Center, -100, "cg/bg/bg002_��a_02.jpg");
	FadeDelete("�ϱ���", 200, true);
	WaitKey(300);
	Move("�}����100",500, @0, @100, Dxl2, false);
	DrawDelete("�}ɫ��", 500, 100, "slide_02_01_1", true);

	CreateSE("SE01b","se���L_����_�z_���03");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ѡ��񶨡�
�������������Ǵն����������һ���Ļ�Ӧ��

����ô�һ��������µ��������������˻ش�ԭ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ�һ�H�󤭤������`��
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE02","se���L_����_�z_���04");
	CreateSE("SE02b","se���L_�n��_�nͻ01");
	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	MusicStart("SE10",1000,700,0,1200,null,true);



	CreateColorEXadd("�}�ե�", 18000, "#FFFFFF");

	Zoom("�}����100", 200, 2000, 2000, Axl2, false);
	Fade("�}�ե�", 200, 1000, null, true);
	WaitKey(100);

	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	CreateTextureSP("�}�ݥХ���", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Zoom("�}�ݴ���", 0, 900, 900, null, true);
	Zoom("�}�ݥХ���", 0, 50, 50, null, true);
	Move("�}�ݴ���", 0, @-100, @60, null, true);
	Move("�}�ݥХ���", 0, @230, @-60, null, true);
	SetBlur("�}�ݴ���", true, 2, 300, 70, false);
	SetBlur("�}�ݥХ���", true, 2, 300, 70, false);


	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

$��`�ץ�`�֥ʥå��� = "@�}�ݥХ���";
$��`�ץ�`�֥����� = 30000;

$��`�ץ�`�֥ʥå����� = "@�}�ݴ���";
$��`�ץ�`�֥����ࣲ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,500,500,500,300);
	CloudZoomVertex(500,@300,@0,null,false);

	Fade("�}�ե�", 500, 0, null, false);

	Move("�}����100", 30000, @0, @-200, null, false);

	FadeDelete("�}ɫ100", 500, false);
	DrawDelete("�\Ļ��", 150, 100, "slide_01_01_0", false);
	Zoom("�}�ݴ���*", 1000, 1000, 1000, Dxl2, false);
	Move("�}�ݥХ���*", 1000, @60, @0, Dxl2, false);
	Move("�}�ݴ���*", 1000, @-160, @0, Dxl2, true);
	Move("�}�ݥХ���*", 0, @0, @0, null, true);
	Move("�}�ݴ���*", 0, @0, @0, null, true);


	Request("�ץ�����", Start);
	Request("�ץ�����", Start);


	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	OnSE("se���L_����_��ͻ�M08",1000);


	Move("�}����100", 300, @0, @-500, Axl2, false);
	Zoom("�}�ݴ���*", 300, 2000, 2000, Axl2, false);
	Move("�}�ݴ���*", 300, @-560, @0, Axl2, false);
	Move("�}�ݥХ���*", 300, @560, @0, Axl2, false);

	Fade("�}�ե�", 300, 1000, null, true);

	Delete("�}��*");
	Delete("�}����100");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");


	CloudZoomSet(1000);
	CloudZoomStart(1000,500,500,500,530);
	CloudZoomVertex(500,@0,@0,null,false);

//�����ߣ����å��ԥåȄ������x=======================
	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();
	MyLife_Count(500,320);
	MyTr_Count(500,358);
	CP_IHPChange(500,4,null,false);
	CP_PowerChange(300,300,null,false);

	CP_AziChange(500,10,null,false);
	CP_HighChange(0,1000,null,false);
	CP_SpeedChange(0,527,null,false);
	BGMoveAuto("@�}����50",1);
//===================================================

	Zoom("�}����50", 0, 2000, 2000, null, true);
	Zoom("�}����50", 1500, 1000, 1000, Dxl2, false);
	CP_RollBarMove("@�}����50", 1500, -360, Dxl2, false);
	FadeDelete("�}�ե�", 1000, true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	Wait(1000);

//�������֣�����
//��������ݳ����£ǣͤȤ��m���Ǥ���
	SoundPlay("@mbgm10",0,1000,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mb04/015vs0010a01">
����������С�ġ�
����ֲ��˶���ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0020a00">
����֪������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������˵����������
�����������Ǻŵ�ս������ʣ�����Ѿ��ٵ�
�����������������ƽ����ˡ�

��������ս�پ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ڤ��å����󤷤�ͻ�M
//�������϶�
//�������϶�
//��̫���򥬥���`�󡣻����ˏ������
	BGMoveDelete();
	OnSE("se���L_����_��ͻ�M03",1000);


	SetFrequency("SE10", 1000, 1100, null);
	Move("@�}����50", 300, @500, @0, Axl2, false);

	CP_AziChange(300,50,Axl2,false);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, Axl2, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	Request("�}����50", Smoothing);
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d����_�Tͻ_���L.png");
	SetBlur("�}��", true, 1, 300, 100, false);
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 300, 300, null, true);


	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@�}����50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@-200,@0,null,true);


	Move("�}����50", 2000, @100, @50, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,1100,Dxl2,false);
	CP_AziChange(2000,-190,Dxl2,false);

	CreateColorEXadd("�}ɫ100", 1500, "WHITE");
	SL_down(@0, @0,1000);
	CreateSE("SE01","se���L_����_�z_���04");

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


//�����ߣ���å�����
	OnSE("se����_���å��ԥå�_������02",1000);

	Fade("@�}��", 300, 1000, null, false);
	CP_LockOnMove("@�}��",1000,@200,@0,Dxl1,false);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);

	SetFrequency("SE10", 1000, 1000, null);


//�����ߣ�ͻ�M����

	OnSE("se���L_����_��ͻ�M01",1000);
	SetFrequency("SE10", 1000, 1200, null);
	Zoom("�}����50", 400, 1200, 1200, Axl2, false);
	CP_LockOnMove("@�}��",300,@0,@150,Axl3,false);
	Zoom("@�}��", 300, 1500, 1500, Axl3, false);
	Wait(200);
	Fade("@�}��", 100, 0, null, true);
	SL_downfade2(10);

//	Wait(100);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 0, 1000, null, true);
	Delete("@�}��");
	CP_LockOnDelete();
	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("�}����50", 600, 800, 800, Dxl2, false);
	FadeDelete("�}ɫ100", 500, true);
	Wait(100);
	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0030a00">
�������ͣ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/015vs0040a01">
����������������Ծ��Ļ���
��������Ǹ������ƣ���������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0050a00">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������������ս�����ƣ��ҷ�����ܡ�
����������ǿ�ܹ��Է��Ŀ�����

��ԭ���������ϣ����������������ڡ�
���������ڵ�״��̫�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//����ܞ�����٤�����
	BGMoveDelete();

	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//�����ߣ����x
	CreateTextureEX("�}����150", 100, 0, 0, "cg/bg/resize/bg002_��a_02.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 6000, 1000, null, true);

	CreateTextureEX("�}��", 4100, Center, middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);
	SetBlur("�}��", true, 1, 300, 100, false);

$��`�ץ�`�֥ʥå����� = "@�}��";
$��`�ץ�`�֥����ࣲ = 15000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");

	CreateSE("SE��å�����","se����_���å��ԥå�_������02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_PowerChange(300,300,null,false);
	CP_AziChange(1500,-379,AxlDxl,false);

//�����ߣ�����
	CloudZoomVertex(700,@500,@0,Axl2,false);
	CP_RollBarMove("@�}����50", 500, -8, AxlDxl, false);
	Move("@�}����150", 1500, @-5048, @0, AxlDxl, false);
	Move("@�}����50", 200, @-200, @0, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Move("@�}����50", 0, -312, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@200,@0,null,true);

	Wait(600);
	CloudZoomVertex(700,@-500,@0,Dxl2,false);
	CP_RollBarMove("@�}����50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("�}����150", 300, false);

//�����ߣ���å�����
	Move("@�}����50", 600, -512, -288, Dxl2, true);
	BGMoveAuto("@�}����50",1);

	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	Fade("@�}��", 500, 1000, null, false);
	CP_LockOnMove("@�}��",600,@-200,@0,Dxl2,true);
	Request("�ץ�����", Start);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);


//	Wait(500);

	SetFwR("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0060a02">
���ն�����������������


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0070a00">
��������


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0080a02">
���㡪��
����������Ϊʲô����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0090a02">
���ұ���Ϊ��������ҡ���ͬ�ҵģ���


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0100a00">
���ҵ�ȷ��ͬ���ˡ����һ����
��Ҫ��˵���ζ��С���


//��������
<voice name="����" class="����" src="voice/mb04/015vs0110a00">
������а��Ҫ���������������ȷ�ġ�
�������κδ��󡣡�


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0120a02">
����Ϊʲô����


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0130a00">
������������ˣ�ս����������ġ�
�������䱻��������֮������


{	FwR("cg/fw/fwһ��_��ʹ.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0140a02">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE��å�����","se����_���å��ԥå�_������02");
	CreateSE("SE02","se���L_����_��ͻ�M01");
	CreateSE("SE03","se���L_����_�z_���01");
	CreateSE("SE04","se���L_����_ͻ�M01");

//������
//�������϶�
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
//	CP_LockOnMove("@�}��",1600,@200,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	BGMoveDelete();
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("@�}��", 700, 1500, 1500, Axl3, false);
	Zoom("@�}����50", 800, 1200, 1200, Axl2, false);
	Wait(400);
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
//	CP_LockOnMove("@�}��",400,@-50,@0,Dxl2,false);
	Zoom("@�}����50", 400, 1200, 1200, Dxl2, false);
	Move("@�}����50", 400, @-150, @0, Dxl2, true);

	SetFwL("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0150a02">
�����ַ�а�񶼲��ɳ�Ϊ����Ļ�����
����ô������޴���ѭ����


{	FwL("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0160a02">
����������ʲô;��!?
���ѵ�Ҫ����ȥ�μӷǱ����ֿ��˶��𡭡���

{	FwL("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0170a02">
������Ϊ���ַ�ʽ�ܹ������������!?��


{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0180a00">
��������


{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0190a02">
���췽ҹ̷��
����ս���Ļ�����ʲô���޷��ı䣡��

{	FwL("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0200a02">
���Ը�ʹ�ñ������˾ͱ�����ͬ�ȵı�������
��ܣ��������Ǹ��������÷�ʡ����


{	FwL("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0210a00">
��û������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����ȫ��ȷ��
��һ����˵��ȫ������ʵ��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���ƥ����ȥܥå������������ͬ�r��ʾ��
	CreateWindow("�}�ݷ���", 18000, 512, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureEX("�}�ݷ���/�}����", 18100, 256, -120, "cg/ev/ev504_����ͻ�M.jpg");
	CreateTextureEX("�}����", 17500, -256, 120, "cg/ev/ev948_����ͻ�M����.jpg");

	Move("�}�ݷ���/�}����", 500, @0, @120, Dxl2, false);
	Move("�}����", 500, @0, @-120, Dxl2, false);
	Fade("�}����", 300, 1000, null, false);
	Fade("�}�ݷ���/�}����", 300, 1000, null, true);

	Delete("�ץ�����");
	Delete("@�}��");






	CreateVOICE("һ��","mb04/015vs0220a02");
	CreateVOICE("����","mb04/015vs0230a00");

	SetBacklog("�����ԡ���", "voice/mb04/015vs0220a02", һ��);
	SetBacklog("�����ǡ���", "voice/mb04/015vs0230a00", ����);



	SetFont("@����", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	CreateText("text02", 20001, 50, 40, 700, 500, "�����ǡ���");
	Fade("text02", 0, 0, null, true);
	Request("text02", PushText);
	Request("text02", NoLog);
	SetVertex("text02", 0, 0);
	SetAlias("text02","text02");
	Rotate("text02", 0, @0, @0, 90, null,true);
	Move("text02", 0, 828, 134, null, true);

	MusicStart("һ��",0,1000,0,1000,null,false);
	MusicStart("����",0,1000,0,1000,null,false);







	SetFwL("cg/fw/fwһ��_ŭ��a.png");
	SetFwR("cg/fw/fw����_���L.png");
	FadeFwR(200,false);
	Fade("@boxRT",150,1000,null,false);
//	FadeFwL(200,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
{	Fade("text02",0,1000,null,false);}
�����ԡ���

</PRE>
	SetTextEXL();
	Request("@text0090", PushText);
	Request("@text0090", NoIcon);
	Request("@text0090", NoLog);
	TypeBeginTimeLI(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0220a02">
�����ԡ���

//��������
<voice name="����" class="����" src="voice/mb04/015vs0230a00">
�����ǡ���
*/


	CreateVOICE("һ��","mb04/015vs0240a02");
	CreateVOICE("����","mb04/015vs0250a00");

	SetBacklog("����������壡��", "voice/mb04/015vs0240a02", һ��);
	SetBacklog("���ⲻ�����壡��", "voice/mb04/015vs0250a00", ����);



	SetFont("@����", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	CreateText("text02", 20001, 50, 40, 700, 500, "���ⲻ�����壡��");
	Fade("text02", 0, 0, null, true);
	Request("text02", PushText);
	Request("text02", NoLog);
	SetVertex("text02", 0, 0);
	SetAlias("text02","text02");
	Rotate("text02", 0, @0, @0, 90, null,true);
	Move("text02", 0, 828, 134, null, true);

	MusicStart("һ��",0,1000,0,1000,null,false);
	MusicStart("����",0,1000,0,1000,null,false);





	SetFwL("cg/fw/fwһ��_���L.png");
	SetFwR("cg/fw/fw����_ŭ��b.png");
	FadeFwR(0,false);
	Fade("@boxRT",150,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0095]
{	Fade("text02",0,1000,null,false);}
����������壡��

</PRE>
	SetTextEXL();
	Request("@text0095", PushText);
	Request("@text0095", NoIcon);
	Request("@text0095", NoLog);
	TypeBeginTimeLIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	Fade("@boxRT",0,0,null,false);
	Fade("@FwR*",0,0,null,false);
	Delete("text02");
/*
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0240a02">
����������壡��

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0250a00">
���ⲻ�����壡��
*/

//��̫������֡�
//������
	CreateSE("SE01","se���L_����_�z_���02");
	CreateSE("SE02","se���L_�Ɖ�_�z03");
	CreateSE("SE03","se���L_����_�z_���03");
	CreateSE("SE04","se���L_�Ɖ�_�z04");
	CreateColorEXadd("�}ɫ100", 19000, "WHITE");
//	CreateColorEX("�}ɫ200", 1500, "BLACK");

	CreateTextureEX("�}������ͻ", 18200, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");


	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomDXadd(18300, 500, 100, "#FFFFFF", "cg/ef/ef040_�����nͻ.jpg", false);
	Fade("�}������ͻ", 100, 1000, null, true);
	Delete("�}��*");

	Wait(200);

//��һ��
//�������`��
//���x��
	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("�}ɫ100", 0, 1000, null, true);
	Wait(200);

	Delete("�}������ͻ");
	Delete("@�}��");
	CP_LockOnDelete();

	Zoom("@�}����50", 0, 1200, 1200, null, true);

	BGMoveAuto("@�}����50",1);
	Zoom("@�}����50", 1000, 1000, 1000, Dxl2, false);
	FadeDelete("�}ɫ100", 500, false);

	MusicStart("SE04",0,1000,0,1000,null,false);
	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ef/ef042_���ô��.jpg", false);

	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(1000);
	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0260a00">
��������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0270a02">
������������塪������ʲô����


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0280a02">
�������������ʲô����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0290a00">
��������


//��������
<voice name="����" class="����" src="voice/mb04/015vs0300a00">
���Ƕ�
���ַ�а�����Ҳͬ����а�񡣡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0310a02">
��������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0320a00">
��������
��Ӧ��˵<RUBY text="��������">ֻ��Ϊ��</RUBY>����


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0330a02">
�����Ѿ����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����ܞ������
	BGMoveDelete();

	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//�����ߣ����x
	CreateTextureEX("�}����150", 100, -5048, 0, "cg/bg/resize/bg002_��a_02.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 6000, 1000, null, true);

	CreateTextureEX("�}��", 4100, Center, middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);
	SetBlur("�}��", true, 3, 300, 70, false);

	CreateSE("SE��å�����","se����_���å��ԥå�_������02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(1600,213,AxlDxl,false);

//�����ߣ�����
	CloudZoomVertex(700,@-500,@0,Axl2,false);
	CP_RollBarMove("@�}����50", 500, 8, AxlDxl, false);
	Move("@�}����150", 1500, @5048, @0, AxlDxl, false);
	Move("@�}����50", 200, @200, @0, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Move("@�}����50", 0, -712, -298, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@-200,@0,null,true);

	Wait(600);
	CloudZoomVertex(700,@500,@0,Dxl2,false);
	CP_RollBarMove("@�}����50", 600, 0, Dxl2, false);
	Wait(200);
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);
	FadeDelete("�}����150", 300, false);

//�����ߣ���å�����
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	CP_LockOnMove("@�}��",800,@200,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, false);
	Move("@�}����50", 600, -512, -288, Dxl2, true);
	BGMoveAuto("@�}����50",1);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);


	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0340a00">
���ҵ�ȷ���ˡ�
������Ҳ��ս�����ַ��Ķ����Ĳ����


//��������
<voice name="����" class="����" src="voice/mb04/015vs0350a00">
�����������˻��Ƕ��ˣ���ָ�Ķ�ֻ���˵�һ�档
��û�е���ֻ��һ����ˡ���


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0360a00">
��˭��������һ����
������������ȴֻ���Լ���֪�ĵ��˵Ķ��棬
�ͽ��䶨Ϊ���ˣ�����ս����ɱ¾����


//��������
<voice name="����" class="����" src="voice/mb04/015vs0370a00">
����Ϊ������ˣ��໥ɱ¾��һ����ì�ܵ������
���ᱻ����
�����������������������ս�������ࡪ����


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0380a00">
����ֻ�ܱ�÷��
�����������Լ��Ǹ������ƶ�����ң�һ��
��ɱ���۵Ķ����


{	FwR("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0390a00">
����ֻ����<RUBY text="��">����</RUBY>����!!��


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0400a02">
�����������ˡ�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������϶�
	OnSE("se���L_����_��ͻ�M01",1000);

	Zoom("@�}��", 500, 1000, 1000, Dxl2, false);
	Zoom("@�}����50", 500, 1200, 1200, Dxl2, true);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0410a00">
��û��
��������˵Ļ�����һ����������Ϊʲô����


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0420a00">
������ɱ������ͯ��֮�󡪡�
����ʼ�����Լ���������Ϊ!?��


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0430a02">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��̫����
//������
	SL_leftdown2(20000,@0, @0,1000);
	CreateColorSP("�}ɫ100", 18000, "BLACK");

	OnSE("se���L_����_�z_���01",1000);
	SL_leftdownfade2(10);

	Delete("@�}��");
	CP_LockOnDelete();

	OnSE("se���L_����_��ꪏ���02",1000);
	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("�}����50", 600, 800, 800, Dxl2, false);


	OnSE("se���L_����_��ͻ�M01",1000);
	FadeDelete("�}ɫ100", 500, true);


	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0440a00">
����ʱ������Լ�ɱ��������һ��ʵ����־��
��������


//��������
<voice name="����" class="����" src="voice/mb04/015vs0450a00">
������Ϊʲô�أ�
���ѵ�������Ϊ��ͻȻ���������ŷ�����壬
���㷸�µ�ҵ��֮�䣬�������޷����ϵ�ì
����!?��


{	FwC("cg/fw/fwһ��_��ʹ.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0460a02">
������������
�����ǡ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0470a02">
��ֻ����Ϊ��һ��ɱ���ˡ���
����Щ�޷����ܶ��ѡ�����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0480a00">
��Ϊ�λ��޷����ܣ�
�����������ɮֻ��һ���ŷ�а�񣬽�ɱ¾��
Ϊ����������ˣ���Ϊ�λ����ܵ����֮���
�������


//��������
<voice name="����" class="����" src="voice/mb04/015vs0490a00">
�����ڷ��ø�ðҩɱ��������ʱ��Ҳ��е�
ʹ����
���������֮���������кβ�𣿡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0500a02">
��������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0510a00">
��������Ӧ������������ĳ����
�������������������ӱܵ��ˣ����ῴ����
��������ࡣ��


//��������
<voice name="����" class="����" src="voice/mb04/015vs0520a00">
��<RUBY text="������������������������������">���˶�Ϊа�񲢽���նɱ��һì��</RUBY>��
���㡪����ʹ˼���ϻ�û�з�����������ȴ
���������ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0530a00">
������������ˣ���


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0540a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ������
//�����ڸ���ͻ�M
	BGMoveDelete();

	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//�����ߣ����x
	CreateTextureEX("�}����150", 100, 0, 0, "cg/bg/resize/bg002_��a_02.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 6000, 1000, null, true);

	CreateTextureEX("�}��", 4100, Center, middle, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);

	CreateSE("SE��å�����","se����_���å��ԥå�_������02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(2000,-369,AxlDxl,false);

//�����ߣ�����
	CP_RollBarMove("@�}����50", 500, -8, AxlDxl, false);
	Move("@�}����150", 1500, @-5048, @0, AxlDxl, false);
	Move("@�}����50", 200, @-200, @0, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Move("@�}����50", 0, -312, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@200,@0,null,true);

	Wait(600);
	CP_RollBarMove("@�}����50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("�}����150", 300, false);

//�����ߣ���å�����
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	CP_LockOnMove("@�}��",800,@-200,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, false);
	Move("@�}����50", 600, -512, -288, Dxl2, true);
	BGMoveAuto("@�}����50",1);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);



	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0550a00">
��һ��!!��


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/015vs0560a02">
������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��̫����
//����������
	CreateSE("SE01","se���L_����_�z_���02");
	CreateSE("SE02","se���L_�Ɖ�_�z03");
	CreateSE("SE03","se���L_����_�z_���03");
	CreateSE("SE04","se���L_�Ɖ�_�z04");
	CreateSE("SE05","se���L_����_��ͻ�M01");
	SL_rightdown2(4550,@0, @0,1000);
	CreateColorEXadd("�}ɫ100", 4600, "WHITE");
	CreateColorEX("�}ɫ200", 4500, "BLACK");



	BGMoveDelete();

	MusicStart("SE05",0,1000,0,1000,null,false);
	Zoom("@�}��", 500, 1500, 1500, Axl3, false);
	Zoom("@�}����50", 500, 1500, 1500, Axl2, false);
	Wait(400);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ200", 0, 1000, null, true);
	SL_rightdownfade2(20);

	Wait(400);

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);

	Fade("�}ɫ100", 0, 1000, null, true);
	Wait(200);
	Delete("�}ɫ200");
	Delete("@�}��");
	CP_LockOnDelete();
	MyLife_Count(1000,220);
	CP_IHPChange(1000,3,null,false);
	CP_PowerChange(1000,150,null,false);

	Zoom("@�}����50", 2000, 1000, 1000, Dxl2, false);

	MusicStart("SE04",0,1000,0,1000,null,false);
	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ef/ef040_�����nͻ.jpg", false);
	FadeDelete("�}ɫ100", 500, false);

	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(1000);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0570a00">
����!!��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/015vs0580a01">
��������
���ټ�����ȥ�Ļ�������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0590a00">
�����������𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/015vs0600a01">
��װ����������Ҫ�������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��������ô��
��ʣ�µľ�ֻ��һ���취�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ������
//������󡸣ãУ��ϕN��`�룿���Ȥ����¤ˤ��Ƥ����ޤ���
	OnSE("se���L_����_��ͻ�M03",1000);

	CreateTextureEX("�}����100", 500, 0, 0, "cg/bg/resize/bg002_��a_02.jpg");
	Zoom("�}����100", 0, 1000, 28000, null, true);
	Move("�}����100", 0, @0, @-7000, null, true);

	CP_HighChange(1000,870,null,false);
	CP_SpeedChange(1000,540,null,false);

	Fade("�}����100", 500, 1000, null, false);
	CloudZoomVertex(700,@0,@-500,Axl2,false);
	Move("�}����100", 3000, @0, 0, AxlDxl, false);
	Move("@�}����50", 500, @0, @200, Axl2, false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,1157,null,false);
	CP_AltChange(1250,90,Dxl2,false);

	Wait(1500);

	CP_RollBarMove2(0,180,null,true);
	CP_RollBarMove("@�}����50",1500,0,AxlDxl,false);
	CP_AziChange(1500,189,Dxl2,false);
	CP_AltChange(1000,0,Dxl2,false);

	Wait(1000);

	CloudZoomVertex(700,@0,@500,Dxl2,false);
	Move("@�}����50", 0, -512, -588, null, true);
	Fade("�}����100", 500, 0, null, false);
	Move("@�}����50", 500, -512, -258, Dxl2, true);
	Move("@�}����50", 500, -512, -288, AxlDxl, true);
	Delete("�}����100");

	BGMoveAuto("@�}����50",1);

	Wait(500);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0610a00">
��һ����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/015vs0620a01">
��������
��������ģ�Ҫ�����𣿡�


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0630a00">
���ǰ���
����Ҫ�ڴ˽����һ��նɱ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��նɱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0640a00">
�����˲б�֮�С�
������㣵�֮�С�
���˺��޵���֮�С���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0650a00">
��<RUBY text="������������">�������ս��</RUBY>��
��<RUBY text="��������������������������">ս��һֱ�������������ѭ��</RUBY>��
���������Ƿ�������������ߡ���


//��������
<voice name="����" class="����" src="voice/mb04/015vs0660a00">
��նɱ����ͯ�ģ�նɱ���Ǻš�
��նɱ���һ������


//��������
<voice name="����" class="����" src="voice/mb04/015vs0670a00">
������һ���ģ����ǲ�������ġ�
����ֻ����ǰ�ߣ�����������ߵĻ���
�����ֻ��һ�ְ������ѡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0680a00">
�������ְ���Ϊ�������ϡ�Ϊ���������ϵĻ���
�������Ǳ�Ქ������ս���Ļ��֡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����Ϊ����ζ���Ͽ���Ϊ�᳹�Լ����ƣ����ų����˵�
����һ��Ϊ��
���Ͽ��˽�����Ϊ�����նɱ��һ��Ϊ����ȷ�ġ�

  �Ͽ����롰��ս���ǿɾ��ġ�
��
���������˶���ʼ�������ŵ�ʱ��ս������ú��޽��ɡ�

�������Ǵ���ġ�
��ս����Ӧ���ܻ�����ѡ�

�������������ֻ�֮�ˡ�
��������Ӧ��֮���ˡ�
��
���������<RUBY text="����">��Ҫ</RUBY>ս����

��Ȼ��ս��ȴ����<RUBY text="����">����</RUBY>�ġ�
����ʹ��һ���˵�����ȫ�������֮���ս������Ϊ��һ
�����ƶ��Ա�������һ��Ĩɱ�˵Ļ�����ô�ⳡս���;�
���ܱ���������֮����

��������ɱ¾��
�������İ�����
�������Ķ�ҵ��

��ս���Ǽ��˵İ����������õĶ�ҵ��
����Ӧ�����Ӧ������Ӧ���ܻ䡣

��������ˣ������ս������ֹ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);


//���������{����늴Œi���ʂ�
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	Cockpit_AllFade0();
	CP_AllDelete();


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



	Delete("�\Ļ��");


	CreateTextureSP("�}EV100", 14000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_b.jpg");
	CreateTextureEX("�}EV200", 14000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_a.jpg");
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

	SoundPlay("@mbgm11",0,1000,true);

	CreateProcess("�ץ�����", 12000, 0, 0, "Lastfire");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����",Start);


	Fade("�}EV200", 0, 1000, null, false);
	Fade("�}ɫ100", 0, 1000, null, false);
	Move("�}EV200", 60000, 0, 0, null, false);
	Zoom("�}EV200", 60000, 1000, 1000, null, false);
	DrawTransition("�}ɫ100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("�}EV100");
	FadeDelete("�}ɫ100",1000,true);



	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0690a00">
��<RUBY text="���">����</RUBY>��װ�׶��
����¶ս����ʵ��Ŀ֮�ˡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/015vs0700a01">
�������š���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0710a00">
��ע��ҪΪ������������ޡ�η��֮�ˡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/015vs0720a01">
�������š���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0730a00">
����ˡ���
����նɱ<RUBY text="��">���Ǻ�</RUBY>����Ҫ��<RUBY text="��">һ��</RUBY>Ҳնɱ����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb04/015vs0740a00">
����Ҫ������Ϊ�����ս�����Ϊ������ɱ¾����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb04/015vs0750a01">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��һ����������ҵĻش�
�����������Ѱ��ģ��ն�����������˵Ĵ𰸡�

������Ƕ���׷�����������Ļش�
��
�����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0760a00">
���ҽ�����һ���޷������ɱ¾��
����������նɱ���һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����Ҫ����նɱ��

����������ء�
����������ս������
��
����ȡ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mb04/015vs0770a00">
���������ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��һ���������
�������������ܹ���Խ������¶�ĳ������Ļ���

���Ǿ��������Ұɡ�
�����һ��壬Ȼ�����ǰ����

�������������������������Ļ�����
�����һ�����õ�!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���
//��ͻ�M
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
	CreateTextureSP("�}EV200", 2000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");

	Shake_Loop("@�}EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se����_늓�_���01");
	CreateSE("SE02","se����_늓�_���02");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	Fade("�}����200", 500, 1000, null, true);


	Wait(2000);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�ե�å��奢����", 1000, 1000, null, true);
	SetVolume("SE*", 1500, 0, null);
	ClearFadeAll(1500, true);
	CP_AllDelete();


	Wait(1000);

}

..//������ָ��
//�Υե����롡"mb04_016vs.nss"



function FlyMoving()
{

$t = $��`�ץ�`�֥�����;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$��`�ץ�`�֥ʥå���", $t, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}

function FlyMoving2()
{

$t2 = $��`�ץ�`�֥����ࣲ;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$��`�ץ�`�֥ʥå�����", $t2, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}
