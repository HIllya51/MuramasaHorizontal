//<continuation number="600">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_026vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb02_026vs.nss","FlyMoving",true);
	Conquest("nss/mb02_026vs.nss","FlyMoving2",true);
	
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
	#bg002_��a_03=true;
	#ev945_���ڣ֣�ͬ��؞=true;
	#bg201_�����ݳ������нֵ�_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mb02_027.nss";

}

scene mb02_026vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mb02_025vs.nss"

//��һ�����ڣ֣�ͯ������
//��I�T����
//��ͯ�Ĥ�ͻ����һֱ��
//�􏎤��������`��
//���Ф��`�����x���
	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm08",0,1000,true);

	CreateSE("SE01","se���L_����_��ͻ�M04");
	CreateSE("SE05","se���L_����_��ͻ�M02");
	CreateSE("SE06","se���L_����_��ͻ�M02");
	CreateSE("SE10","se���L_����_��ͻ�M05");
	CreateSE("SE11","se���L_����_��ͻ�M05");


	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	CreateTextureEX("�}�ݴ���", 1010, Center, Middle, "cg/st/3d����_�Tͻ_���L.png");
	CreateTextureEX("�}�ݥХ���", 1020, Center, Middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}�ݴ���*", Smoothing);
	Request("�}�ݥХ���", Smoothing);
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Rotate("�}�ݴ���*", 0, @0, @0, @20, null,true);
	Zoom("�}�ݴ���*", 0, 5, 5, null, true);
	Zoom("�}�ݥХ���", 0, 5, 5, null, true);

	SetBlur("�}�ݴ���", true, 1, 300, 70, false);
	SetBlur("�}�ݥХ���", true, 1, 300, 70, false);

//	Move("�}�ݴ���", 0, -500, -200, null, true);
	Move("�}�ݥХ���", 0, 77,-413, null, true);
	Move("�}�ݴ���", 0, 177,-213, null, true);

	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(500,@400,@0,null,false);



	CreateColorEXadd("�}ɫ200", 18500, "WHITE");
	CreateTextureEXadd("�}�����ݤ�", 18000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("�ץ�����", Start);

	Move("�}����100", 3000, @0, @-200, Axl1, false);
	FadeDelete("�ϱ���", 1000, true);

	SetVolume("SE10", 800, 1000, null);
	Shake("�}�ݥХ���", 2000, 0, 1, 0, 0, 1000, Axl2, false);
	Rotate("�}�ݥХ���", 1100, @0, @0, @-90, Axl2,false);
	Zoom("�}�ݥХ���", 1100, 6500, 6500, Axl3, false);
	BezierMove("�}�ݥХ���", 1100, (77,-413){80,-150}{60,-110}(-10313,-1848), Axl1, false);
	Fade("�}�ݥХ���", 300, 1000, null, false);


	Wait(800);

	SetVolume("SE10", 1000, 1, null);
	SetFrequency("SE10", 1000, 800, null);
	MusicStart("SE05",0,1000,0,1200,null,false);
	Shake("�}�ݴ���", 2000, 1, 0, 0, 0, 1000, Axl2, false);
	Rotate("�}�ݴ���", 1100, @0, @0, @-30, Axl3,false);
	Zoom("�}�ݴ���", 1100, 5000, 5000, Axl3, false);
	BezierMove("�}�ݴ���", 1100, (177,-213){80,10}{60,10}(-10013,-348), Axl1, false);
	Fade("�}�ݴ���", 300, 1000, null, false);

	SetVolume("SE11", 800, 1000, null);
	Shake("�}����100", 400, 50, 10, 0, 0, 1000, AxlDxl, false);
	Wait(200);

	Fade("�}�ݥХ���", 100, 0, null, false);

	Wait(600);

	SetVolume("SE11", 600, 0, null);
	SetVolume("SE10", 600, 200, null);
	SetFrequency("SE11", 1000, 800, null);
	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("�}����100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(200);

	Fade("�}�ݴ���", 100, 0, null, false);
	Fade("�}ɫ200", 200, 1000, null, true);
	SetFrequency("SE10", 0, 1200, null);
	Delete("�ץ�����");
	Delete("�}����*");
	CloudZoomDelete(0,true);
	Delete("�}����������");
	Delete("�}��*");

	SetVolume("SE*", 4000, 0, null);

//�����ߣ����å��ԥåȄ������x========================
	Cockpit_AllFade2(0,780,0);
	MyTr_Count(0,720);

	CP_SpeedChange(0,0,null,true);
	CP_HighChange(0,0,null,true);

	Cockpit_AllFade0();

//�����ߣ����å��ԥåȄ������x========================

	PrintGO("�ϱ���", 30000);
//	CreateColorSP("�}��ܞ", 18000, "#000000");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg002_��a_03.jpg");

//�����ߣ����åȥ���
	CreateColorEX("�}ɫ200", 100, "BLACK");
	Fade("�}ɫ200", 0, 500, null, true);

	CreateWindow("�}�ף�", 150, Center, -288, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 100, Center, middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureSP("�}�ף�/�}�ӣԣ�", 500, Center, -400, "cg/st/3d����_�T��_���La.png");
	Request("�}�ף�*", Smoothing);

	Move("�}�ף�/�}������100", 0, @312, @0, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @-120, @230, null, true);
	Move("�}�ף�", 0, @0, @288, null, true);

	CreateWindow("�}�ף�", 150, Center, 576, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureEX("�}�ף�/�}������100", 100, Center, InBottom, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureEX("�}�ף�/�}�ӣԣ�", 500, Center, -400, "cg/st/3dͬ��؞_�T��_���L.png");
	Request("�}�ף�*", Smoothing);

	Move("�}�ף�/�}������100", 0, @-212, @144, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, @120, @230, null, true);
	Move("�}�ף�", 0, @0, @-288, null, true);

	Rotate("�}�ף�/�}������100", 0, @0, @-180, @0, null,true);

	SetBlur("�}�ף�/�}�ӣԣ�", true, 2, 300, 80, false);
	SetBlur("�}�ף�/�}�ӣԣ�", true, 2, 300, 80, false);

	CreateTextureEX("�}����200", 4500, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	CreateTextureEX("�}����300", 4500, Center, Middle, "cg/ev/resize/ev945_���ڣ֣�ͬ��؞l.jpg");
	Zoom("�}����300", 0, 2000, 2000, null, true);
	Move("�}����300", 0, @-412, @88, null, true);

	SetBlur("�}����300", true, 3, 200, 80, false);

	CreateColorEXadd("�}ɫ100", 5000, "WHITE");
	CreateSE("SE01","se���L_����_�z_���04");


	Move("�}�ף�/�}������100", 500, @-380, @0, Dxl1, false);
	Move("�}�ף�/�}�ӣԣ�", 500, @-190, @-200, Dxl2, false);


	OnSE("se���L_����_��ͻ�M03",1000);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_0", true);


//	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_0", true);

	Fade("�}�ף�*", 300, 1000, null, false);
	Move("�}�ף�/�}������100", 500, @380, @0, Dxl1, false);
	Move("�}�ף�/�}�ӣԣ�", 500, @190, @0, Dxl2, true);

//	Wait(300);

//�����ߣ���ͻ

	OnSE("se���L_����_��ͻ�M08",1000);
	Zoom("�}�ף�/�}�ӣԣ�", 500, 2000, 2000, Axl2, false);
	Move("�}�ף�/�}�ӣԣ�", 500, @600, @0, Axl2, false);
	Zoom("�}�ף�/�}�ӣԣ�", 500, 2000, 2000, Axl2, false);
	Move("�}�ף�/�}�ӣԣ�", 500, @-600, @0, Axl2, false);

	Wait(300);

	Fade("�}����200", 200, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 500, "cg/ef/ef040_�����nͻ.jpg", true);

	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("�}����300", 0, 1000, null, true);


	Delete("�}ɫ200");
	Delete("�}��*");
	Delete("�}����200");

	Zoom("�}����300", 1000, 1000, 1000, Dxl2, false);
	FadeDelete("�}ɫ100", 500, true);

	Wait(500);

	SetFwR("cg/fw/fwͯ��_嶤�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0010a09">
��ŶӴ������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}����300", 200, -50, -150, AxlDxl, true);
	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0015]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0020a02">
���С�����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ڡ����ء��Ϥ�ȡ��
//��ͻ�M������
//��ͯ��ֱ��ͻ��
//���ޤ�����
//������

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}����100");
	Delete("�}����300");

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureEX("�}����400", 100, Center, -200, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	CreateTextureEX("�}����150", 100, -512, -288, "cg/bg/resize/bg002_��a_03l.jpg");
	CreateTextureEX("�}����500", 18000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	Zoom("�}����50", 0, 1300, 1300, null, true);
	Zoom("�}����150", 0, 600, 600, null, true);
	Zoom("�}����400", 0, 50, 50, null, true);
	SetBlur("�}����400", true, 3, 300, 80, false);
	CreateSE("SE01","se���L_����_��ꪏ���02");
	CreateSE("SE02","se���L_����_��ͻ�M01");
	CreateSE("SE10","se���L_����_��ͻ�M05");

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@0,@0,null,true);

	FrameShake();
	MyLife_Count(1,780);
	MyTr_Count(0,300);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	Cockpit_AllFade2();

	CP_AltChangeA();
	CP_AziChange(0,-171,AxlDxl,false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE10",1000,700,0,1200,null,true);

	DrawDelete("�\Ļ��", 200, 100, "slide_02_01_1", false);

	CP_PowerChange(1500,700,null,false);
	CP_HighChange(500,1212,Dxl2,false);
	CP_SpeedChange(500,285,Dxl2,false);


	CP_RollBarMove("@�}����50", 1000, -365, Dxl2, false);
	Move("�}����50", 800, @-50, @100, Dxl2, true);

	CP_HighChange(1000,1012,null,false);
	CP_SpeedChange(1000,385,null,false);
	Move("@�}����50", 1500, @-100, @-400, Axl2, false);
	Zoom("�}����400", 600, 2000, 2000, Axl3, false);
	Move("�}����400", 600, @150, @200, Axl3, false);
	Fade("�}����400", 200, 1000, null, false);
	Wait(200);
	CP_RollBarMove("@�}����50", 1000, @20, AxlDxl, false);

//�����ߣ�ͻ�M����==================================


	FadeDelete("�}����300", 200, false);
	Fade("�}����150", 350, 1000, null, false);
	Zoom("�}����150", 350, 1000, 1000, Axl2, false);

	Wait(200);

	FadeDelete("�}����400", 200, false);
	FadeDelete("�}����150", 500, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����500", 500, 2000, 2000, Dxl2, false);
	Fade("�}����500", 50, 1000, null, true);

//�����ߣ����å��ԥå�λ�ó��ڻ�==================================
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	Move("�}����400", 0, @0, @100, null, true);
	Move("@�}����50", 0, -512, -288, null, true);
	CP_RollBarMove("@�}����50", 0, 15, null, true);
	BGMoveAuto("@�}����50",1);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 1000, null, false);
	FadeDelete("�}����500", 500, false);
	CP_RollBarMove("@�}����50", 500, 0, Dxl2, true);

	Wait(300);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0030a09">
���롢�롢�롣
�����ֲ������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0040a09">
���ֵ���ǹϮ��֮�����յò�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0050a02">
���ɶ񡭡�
����ǹ�����鷳����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0060b40">
���š�
���ɹ�Ҳ���ù�������

//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0070b40">
��Ϯ������ȳ�����Զ��
��������Ͷ��������
�������볤ǹ���������ȡʱ����������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������˵����Ϊ��͵ĳ�ǹ��Դ��Ԫ��ս��֮ʱ�Ӵ�½
���룬������泤����ȡ�˳����������ϯ��λ����ʢ
��ս��ʱ����
��˵����һ����ʵ��������ս������

�������������Ӧս���ų��֪������Ե�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	BGMoveDelete();
	OnSE("se���L_����_��ͻ�M03",1000);


	SetFrequency("SE10", 1000, 1100, null);
	Move("@�}����50", 300, @500, @0, Axl2, false);



//����ܞ
//�����T��å����󤷤�ͻ�M
	CP_PowerChange(500,650,null,false);
	CP_AziChange(500,-100,Axl2,false);
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, Axl2, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����50", Smoothing);
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 100, 100, null, true);
	SetBlur("�}��", true, 3, 300, 80, false);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@�}����50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@0,@-200,null,true);


	Move("�}����50", 2000, @0, @100, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,1100,Dxl2,false);
//	CP_PowerChange(2000,450,null,false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	OnSE("se����_���å��ԥå�_������02",1000);
	CP_LockOnMove("@�}��",800,@0,@100,Dxl2,false);

	Fade("@�}��", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,800,425);

	SetFrequency("SE10", 1000, 1000, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���з����嶯���ٻ���
�������ǻ�δϰ�����ڷ��е��ң�Ҳ����ǿ����˫��ս��
�����ȡ�߶����ơ���ն������Ĵ�����ȼ�ֱ��ֻ�ٶ�
�Ĺꡣ

���ֽ׶Σ��ҿ���ȷ�����ⳡ�����е����ơ�
���߶Ȳ����ٶȣ��ٶȵ���������

���������һ�С���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����ֱ��ͻ��
//���ܤ�
	CreateColorEXadd("�}ɫ100", 1500, "WHITE");
	SL_centerin(@0, @0,1000);
	CreateSE("SE01","se���L_����_�z_���04");

	CP_PowerChange(1000,620,null,false);
	CP_SpeedChange(1000,452,AxlDxl,false);

	OnSE("se���L_����_��ͻ�M01",1000);
	SetFrequency("SE10", 1000, 1200, null);
	Zoom("�}����50", 800, 1100, 1100, Axl2, false);
	CP_LockOnMove("@�}��",600,@0,@150,Axl3,false);
	Zoom("@�}��", 500, 2000, 2000, Axl3, false);
	Wait(300);
	Fade("@�}��", 200, 0, null, true);
	SL_centerinfade2(10);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 0, 1000, null, true);
	Delete("@�}��");
	CP_LockOnDelete();
	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("�}����50", 1000, 1500, 1500, Dxl2, false);
	FadeDelete("�}ɫ100", 500, true);


	SetFwR("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0080a02">
��������������


{	FwR("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0090a09">
���ǺǺǣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������һ����̫�����빥����Χ��֮ǰ��<RUBY text="������">������</RUBY>�Ļ���
�Ǿͺ��������ˣ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x���
	OnSE("se���L_����_��ͻ�M01",1000);

	SetFrequency("SE10", 1000, 1100, null);
	Move("@�}����50", 300, @-400, @0, Axl2, false);

	CP_AziChange(1500,-280,AxlDxl,false);
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, Axl2, "cg/data/slide_01_01_1.png", true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����50", Smoothing);

//�����ߣ����å��ԥå�
	CP_AziChange(0,-20,null,true);
	CP_RollBarMove("@�}����50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);

	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,1100,Dxl2,false);

	BGMoveAuto("@�}����50",1);

	SetFrequency("SE10", 1000, 1000, null);
//	CP_PowerChange(1000,400,Dxl2,false);
	CP_SpeedChange(1000,398,AxlDxl,false);
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0100a02">
���������������оͻ�ɥʧƽ�⡭��
����Ͼ����������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0110b40">
�������ǳ�ǹ����֮����
�����ڰ�ȫ֮�������ҷ����Լ�����ȡʤ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����Ȼ����ͬ�У���˵����Ҳ�޼����¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ
//������

	BGMoveDelete();

	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//�����ߣ����x
	CreateTextureEX("�}����150", 100, 0, 0, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 6000, 1000, null, true);

	CreateTextureEX("�}��", 100, Center, Middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 100, 100, null, true);
	SetBlur("�}��", true, 3, 300, 80, false);


	CreateSE("SE��å�����","se����_���å��ԥå�_������02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(1500,-168,AxlDxl,false);

//�����ߣ�����
	CloudZoomVertex(1500,1000,@0,AxlDxl,false);

	CP_PowerChange(2000,600,null,false);
	CP_SpeedChange(1000,452,AxlDxl,false);
	CP_RollBarMove("@�}����50", 500, -5, AxlDxl, false);
	Move("@�}����150", 1500, @-5048, @0, AxlDxl, false);
	Move("@�}����50", 200, @-200, @0, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Move("@�}����50", 0, -312, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@200,@-100,null,true);

	Wait(600);
	CP_RollBarMove("@�}����50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("�}����150", 300, false);
	Move("@�}����50", 600, -512, -288, Dxl2, false);

//�����ߣ���å�����
	CloudZoomVertex(2000,0,@0,AxlDxl,false);
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	CP_LockOnMove("@�}��",800,@-200,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//	CP_PowerChange(1500,400,Dxl2,false);
	CP_SpeedChange(1000,398,AxlDxl,false);
	Wait(500);

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0120b40">
�����Ӧս����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����Ӧս��
����������������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0130a02">
�������ߡ�
������ô������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��<RUBY text="����������">ֻ����ǰ��</RUBY>��
�����˶��ѡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0140b40">
�����ס�<RUBY text="����">ֱ��</RUBY>�ϡ�
����������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����300", 18000, Center, Middle, "cg/ev/ev945_���ڣ֣�ͬ��؞.jpg");
	Zoom("�}����300", 0, 2000, 2000, null, true);
//	Move("�}����300", 0, @-412, @88, null, true);
	SetBlur("�}����300", true, 3, 200, 80, false);
//��ͻ�M��ͻ��������B���Υѥ��`��

	CreateSE("SE01","se���L_����_�z_���01");
	SL_centerin(@0, @0,1000);


	CP_PowerChange(1000,570,Dxl2,false);
	CP_SpeedChange(1000,452,AxlDxl,false);
	OnSE("se���L_����_��ͻ�M01",1000);
	EffectZoomadd(10000, 1000, 300, "cg/ef/ef003_�����Ƅ�.jpg", false);

	Zoom("@�}����50", 1600, 1100, 1100, AxlDxl, false);
	Zoom("@�}��", 400, 2000, 2000, Axl3, false);
	Wait(200);
	CP_LockOnDelete();
	FadeDelete("@�}��", 200, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerinfade2(10);

	Shake("@CP_Frame", 500, 5, 10, 0, 0, 800, null, false);
	OnSE("se���L_����_�z_���03",1000);
	SL_leftup(@0, @0,1000);
	SL_leftupfade2(10);


	Fade("�}����300", 300, 1000, Axl3, false);
	Zoom("�}����300", 500, 1000, 1000, Dxl2, true);

	Wait(500);

	SetFwC("cg/fw/fwͯ��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0150a09">
����ô�ˣ���ô�ˣ�
��һ��Īչ������ʿ�����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0160a09">
���Ѿ��޼ƿ�ʩ�ˣ�
���������������ƣ�Ҳ����ô���£���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0170a02">
���ن��¡������а취��
��<RUBY text="��������">����֮��</RUBY>����


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0180a09">
��Ŷ��
���Ǿ����Ҽ�ʶһ�������аɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����ܞ
//��ͻ�M��ͻ��������B��һʽ

	CreateColorEXadd("�}ɫ100", 1500, "WHITE");
	SL_centerin(@0, @0,1000);
	CreateSE("SE01","se���L_����_�z_���04");
	CreateSE("SE02","se���L_����_��ͻ�M01");


//�����ߣ����x
	CreateTextureEX("�}����150", 100, 0, 0, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 6000, 1000, null, true);

	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);
	SetBlur("�}��", true, 3, 300, 80, false);


	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(1500,-47,AxlDxl,false);

//�����ߣ�����
	CloudZoomVertex(0,-1000,@0,AxlDxl,false);

	CP_SpeedChange(1000,528,AxlDxl,false);
	Zoom("�}����300", 300, 2000, 2000, Axl3, false);
	FadeDelete("�}����300", 300, false);

	CP_RollBarMove("@�}����50", 500, 5, Axl2, false);
	Move("@�}����150", 1500, @5048, @0, AxlDxl, false);
	Move("@�}����50", 200, @200, @0, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Zoom("@�}����50", 0, 1000, 1000, null, true);
	Move("@�}����50", 0, -712, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@-200,@0,null,true);

	Wait(600);
	CloudZoomVertex(1000,0,@0,AxlDxl,false);
	CP_RollBarMove("@�}����50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("�}����150", 300, false);
	Move("@�}����50", 600, -512, -288, Dxl2, false);

	CP_LockOnMove("@�}��",1600,@200,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("@�}��", 600, 1500, 1500, Axl3, false);
	Zoom("@�}����50", 800, 1200, 1200, Axl2, false);
	Wait(400);
	Fade("@�}��", 200, 0, null, true);
	SL_centerinfade2(10);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 0, 1000, null, true);
	Delete("@�}��");
	CP_LockOnDelete();

	SL_rightdown(@0, @0,1000);
	SL_rightdownfade2(10);

	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("�}����50", 600, 1200, 1200, Dxl2, false);


	CP_SpeedChange(1000,398,AxlDxl,false);
	FadeDelete("�}ɫ100", 500, true);

	Wait(300);

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0190a02">
���ȡ�����


{	FwR("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0200a09">
���ţ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����ܞ
//��ͻ�M��ͻ��������B��һʽ
	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	CreateColorEXadd("�}ɫ100", 1500, "WHITE");
	SL_centerin(@0, @0,1000);
	CreateSE("SE01","se���L_����_�z_���04");
	CreateSE("SE02","se���L_����_��ͻ�M01");


//�����ߣ����x
	CreateTextureEX("�}����150", 100, 0, 0, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 6000, 1000, null, true);

	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);
	SetBlur("�}��", true, 3, 300, 80, false);

	CreateSE("SE��å�����","se����_���å��ԥå�_������02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(1500,-174,AxlDxl,false);

//�����ߣ�����
	CloudZoomVertex(1500,1000,@0,AxlDxl,false);

	CP_SpeedChange(1000,468,AxlDxl,false);
	CP_RollBarMove("@�}����50", 500, -5, AxlDxl, false);
	Move("@�}����150", 1500, @-5048, @0, AxlDxl, false);
	Move("@�}����50", 200, @-200, @0, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Move("@�}����50", 0, -312, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@200,@0,null,true);

	Wait(600);
	CloudZoomVertex(1000,0,@0,AxlDxl,false);
	CP_RollBarMove("@�}����50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("�}����150", 300, false);
	Move("@�}����50", 600, -512, -288, Dxl2, false);

	CP_LockOnMove("@�}��",1600,@-200,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("@�}��", 600, 1500, 1500, Axl3, false);
	Zoom("@�}����50", 800, 1200, 1200, Axl2, false);
	Wait(400);
	Fade("@�}��", 200, 0, null, true);
	SL_centerinfade2(10);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 0, 1000, null, true);
	Delete("@�}��");
	CP_LockOnDelete();

	SL_rightdown(@0, @0,1000);
	SL_rightdownfade2(10);

	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("�}����50", 600, 1200, 1200, Dxl2, false);


	CP_SpeedChange(1000,398,AxlDxl,false);
	FadeDelete("�}ɫ100", 500, true);

	Wait(300);

	SetFwR("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0210a02">
�������ȡ���


{	FwR("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0220a09">
���������š���ʣ��һ�š�
���Ǻǣ��ǲ�����Щ�����أ���


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0230a02">
��������


{	FwR("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0240a09">
���ⳤǹ������ǹͷ�����������ر�ǿ�͡���
��<RUBY text="������">�۶ϵ�</RUBY>ֻ������Ĺ�ͷ�ɡ���


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0250a09">
������ƶɮҲ��һ�������ֻ�ز���Ŷ���ţ�
��������������


{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0260a02">
������
����ô���ʹ�<RUBY text="����">��ס</RUBY>����


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0270a02">
�����ο���ԭ���Ͳ���Ҫ���С���


{	FwR("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0280a09">
��Ŷ��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������ͻ�M
//��ֱ��ͻ��
//��Ҋ�ФäƱܤ���

	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	SL_centerin(@0, @0,1000);
	CreateSE("SE02","se���L_����_��ͻ�M01");
	CreateSE("SE03","se���L_����_�z_���01");
	CreateSE("SE04","se���L_����_ͻ�M01");


//�����ߣ����x
	CreateTextureEX("�}����150", 100, 0, 0, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 6000, 1000, null, true);

	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);
	SetBlur("�}��", true, 3, 300, 50, false);


	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(1500,-37,AxlDxl,false);

//�����ߣ�����
	CloudZoomVertex(1500,-1000,@0,AxlDxl,false);

	CP_SpeedChange(1000,478,AxlDxl,false);
	CP_RollBarMove("@�}����50", 500, 5, Axl2, false);
	Move("@�}����150", 1500, @5048, @0, AxlDxl, false);
	Move("@�}����50", 200, @200, @0, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Zoom("@�}����50", 0, 1000, 1000, null, true);
	Move("@�}����50", 0, -712, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@-200,@0,null,true);

	Wait(600);
	CloudZoomVertex(2000,0,@0,AxlDxl,false);
	CP_RollBarMove("@�}����50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("�}����150", 300, false);
	Move("@�}����50", 600, -512, -288, Dxl2, false);

//�����ߣ���å�����
	CP_LockOnMove("@�}��",1600,@200,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("@�}��", 700, 1500, 1500, Axl3, false);
	Zoom("@�}����50", 800, 1200, 1200, Axl2, false);
	Wait(400);
	MusicStart("SE03",0,1000,0,1000,null,false);
	SL_centerinfade2(10);

	MusicStart("SE04",0,1000,0,1000,null,false);
	CP_LockOnMove("@�}��",400,@300,@-50,Dxl2,false);
	Zoom("@�}����50", 400, 1200, 1200, Dxl2, false);
	Move("@�}����50", 400, @150, @0, Dxl2, true);





	Wait(100);


	SetFwR("cg/fw/fwͯ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0290a09">
����!?��


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0300a02">
�����С����ɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_�z_���02");
	CreateSE("SE02","se���L_�Ɖ�_�z03");
	CreateSE("SE03","se���L_����_�z_���03");
	CreateSE("SE04","se���L_�Ɖ�_�z04");
	SL_leftdown2(20000,@0, @0,1000);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdownfade2(10);

	Wait(300);


//��һ��
//�������`��
//���x��
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	EffectZoomDXadd(18600, 500, 1000, "#FFFFFF", "cg/ef/ef042_���ô��.jpg", true);

	Delete("@�}��");


//	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CP_LockOnDelete();
	Cockpit_AllFade0();

	Delete("�}����");
	Delete("�}����200");
	Delete("�}����300");
	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_03.jpg");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d����_�T��_���La.png");
	CreateTextureSP("�}�ݥХ���", 1010, Center, Middle, "cg/st/3dͬ��؞_�T��_���L.png");
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Zoom("�}�ݴ���", 0, 800, 800, null, true);
	Zoom("�}�ݥХ���", 0, 50, 50, null, true);

	SetBlur("�}�ݴ���", true, 3, 300, 100, false);
	SetBlur("�}�ݥХ���", true, 3, 300, 100, false);

	CreateColorSPadd("�}ɫ100", 1600, "WHITE");

	CloudZoomVertex(0,1000,@0,AxlDxl,false);

	Move("�}�ݴ���", 0, @0, @60, null, true);
	Move("�}�ݥХ���", 0, @-350, @-60, null, true);


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


	Request("�ץ�����", Start);

	Move("�}����100", 30000, @0, @-200, null, false);

	FadeDelete("�}ɫ100", 500, false);
	DrawDelete("�\Ļ��", 150, 100, "slide_01_01_0", false);
	Zoom("�}�ݴ���*", 1000, 1000, 1000, Dxl2, false);
	Move("�}�ݴ���*", 1000, @160, @0, Dxl2, true);
//	Move("�}�ݥХ���*", 1000, @-60, @0, Dxl2, true);


	Request("�ץ�����", Start);

	SetFwC("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0310a02">
�����!?��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0320b40">
���������װ�ױ����У�
�������˲��󡣡�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0330b40">
��������ܳ�ǹ�������������½�Ҳ�ǲ�����
�ء�
���ҵ���װ������Ϊ��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0340a02">
��Ҳ����˵�����˵��˹���
������С�Ӱ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����ܞ
	OnSE("se���L_����_��ͻ�M03",1000);

	Delete("�ץ�����");
	Delete("�ץ�����");

	CP_AziChange(500,-17,AxlDxl,false);
	Move("�}�ݴ���*", 300, @560, @0, Axl2, false);
	Move("�}�ݥХ���*", 300, @-260, @0, Axl2, false);
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, Axl2, "cg/data/slide_01_01_0.png", true);

	Delete("�}��*");
	Delete("�}����100");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����50", Smoothing);
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 150, 150, null, true);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@�}����50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@0,@-200,null,true);

	EnLife_Count(0,722);
	EnTr_Count(0,357);
	Cockpit_AllFade2();


	CloudZoomVertex(0,0,@0,null,false);
	Move("�}����50", 2000, @0, @100, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,1100,Dxl2,false);
	CP_SpeedChange(2000,398,AxlDxl,false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	OnSE("se����_���å��ԥå�_������02",1000);
	CP_LockOnMove("@�}��",800,@0,@100,Dxl2,false);

	Fade("@�}��", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetFrequency("SE10", 1000, 1000, null);


	SetFwR("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0350a02">
�������������Ѿ����ǵ������εĻ쵰����һ
Щ�ˣ����㲻��ɡ���


{	FwR("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0360a09">
������ȷʵ����������ˡ�
������ɵò������


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0370a02">
������ʲô��
����ҪӮ��ǹֻ�����������ʶ���ˡ���

//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0380a02">
������Ϊ������ȱ�㣬���Գ�ǹ��û��������
֮��ʢ�аɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����������ڿ��и��ٻ���ʱ����ն��Ϊ����������
���ص���ڴ�ͻ�ϡ�������һ���ġ�
����״���������ʵͣ����߽��������׻��С�

����Ȼ��ǹ���Դ�Զ��ֱȡ�����������ез����Ѷ���
���Ĵ�ͻ��ͬ��������������һ�����һ�֡�

��һ����ܳ�ǹ�Ľ������������ɽ��������ڼ�������
֮�ڣ���ǹһ��������
�������������Լ�һζ��Ϯ�ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0390a02">
�����Ρ������ϸղŵĽ��������ߴΣ�����
Ҳ�����˲����ˣ�����Ŀ�꾹��û����ա�
�����ǣ���������֮�࣬����������ָ�ơ���


{	FwR("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0400a09">
��������


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0410a02">
��ֻҪ�㿪��Ĺ������ҵĹ��ƾͲ�����١�
������ն������ͺ¿����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ͻ�M
	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetVolume("SE10", 1000, 700, null);
	SetFrequency("SE10", 1000, 1100, null);
	CP_SpeedChange(1500,485,Dxl2,false);
	CP_PowerChange(1500,530,Dxl2,false);

	EffectZoomadd(10000, 1000, 0, "cg/ef/ef003_�����Ƅ�.jpg", false);

	Zoom("@�}����50", 500, 1100, 1100, Dxl2, false);
	Shake("@�}��", 1000000, 1, 1, 0, 0, 1000, null, false);
	Zoom("@�}��", 500, 300, 300, Dxl2, true);

	SetVolume("SE10", 3000, 300, null);


	SetFwR("cg/fw/fwһ��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0420a02">
��������<RUBY text="��������">̫��Ϳ��</RUBY>�����У�
��˭�������ʱ��ϰ����Ľ������޲����͡���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0430b40">
��������ͽ�ս���ȡ������
��������������!!��


{	FwR("cg/fw/fwͯ��_嶤�.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0440a09">
��������ѽ��һ���û��
�����Իػ�����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0450a09">
�����ǣ�ƶɮ�ɲ���װģ��������������Ŷ��
��ֻ�ǣ���Щ<RUBY text="��������">����</RUBY>���ˡ�����

{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0460a09">
��ƶɮ��ȷ��Ϊ���һ�������ѹ�����
����ࡪ���ֵ������˰ɡ���


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0470a02">
��ʲô����!?��


{	FwR("cg/fw/fwͯ��_�Х���.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0480a09">
��β�Ź������ŵ��ӡ��[��ͯ����Ҳ��
��������ͬ�����������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0490a09">
���ҵȳ�ǹ��������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ӽ�
	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	EffectZoomadd(10000, 1000, 0, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("@�}����50", 500, 1200, 1200, AxlDxl, false);
	Zoom("@�}��", 500, 400, 400, AxlDxl, true);

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0500b40">
��������
����������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0510b40">
������<RUBY text="����">����</RUBY>��ͨ��ǹ����


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0520a02">
��ʲô����


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0530b40">
������Ͳ����


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0540a02">
������Ͳ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���������������е�˼����

��Ͳ��
��ǹ��
��
�������ܾ���<RUBY text="��������������">������ĳЩ��ϵ</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/026vs0550b40">
����������ʱ������


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0560a02">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������x
	CreateSE("SE01","se���L_����_��ͻ�M08");
	MusicStart("SE01",0,1000,0,1000,null,false);

	EffectZoomadd(10000, 1000, 0, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("@�}����50", 500, 1200, 1200, AxlDxl, false);
	Zoom("@�}��", 500, 600, 600, AxlDxl, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�������������Ժ�
�����ڱ��뼯��ע������

����������ôϰ�ߣ���Ҫ�����ǳ�ǹ��ǹͷ����Ҫ����
�൱���в��С�
����˼��ɢ���޷�ȡʤ�ġ�

�����ҶԷ������Ǹ����еĸ��֡�
��һ��������������ı���ս������

��������ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwͯ��_�Х���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0570a09">
���塣��


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0580a02">
���������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);

//�����ġ��ޤ�ֱ�M
	CloudZoomDelete(200,false);

	CreateColorSP("�}ɫ100", 17500, "BLACK");
	SL_centerin2(17500,@0, @0,1000);
	CreateSE("SE01","se���L_����_��ͻ�M01");

	//CP_AllDelete();
	Cockpit_AllFade0();

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerinfade2(10);
	Wait(400);
	SetFwC("cg/fw/fwͯ��_�Х���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/026vs0590a09">
������������������һ��֮����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����100", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	CreateTextureEX("�}����200", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	Request("�}����100", Smoothing);
	Request("�}����200", Smoothing);
	Zoom("�}����100", 0, 3000, 3000, null, true);
	Zoom("�}����300", 0, 2000, 2000, null, true);
	SetBlur("�}����300", true, 3, 300, 200, false);

//�����ߣ�����
	CreateSE("SE02","se���L_����_�����03");
	CreateSE("SE03","se���L_����_��ͻ�M03");
	CreateSE("SE04","se���L_����_�����06");


	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Rotate("�}����100", 1500, @0, @0, 3600, Dxl2,false);
	Fade("�}����100", 0, 1000, null, true);

	DrawTransition("�}ɫ100", 100, 1000, 0, 100, null, "cg/data/spiral_01_00_0.png", true);

	Move("�}����100", 0, 0, 0, null, true);
	Wait(150);
	Move("�}����100", 0, -312, -100, null, true);
	Wait(150);
	Move("�}����100", 0, -350, -150, null, true);
	Wait(150);
	Move("�}����100", 0, -510, -120, null, true);

	Wait(150);
	MusicStart("SE04",200,1000,0,1000,null,false);
	SetVolume("SE02", 1000, 0, null);


	Fade("�}����300", 200, 1000, null, false);
//	Fade("�}����200", 0, 1000, null, true);
	Zoom("�}����300", 500, 1000, 1000, Dxl2, true);

	SetVolume("SE04", 1000, 0, null);
	Fade("�}����200", 0, 1000, null, true);


//��؞����ͻ
//�����ʤä��������褭�ʤ���ͻ���z��
	CreateTextureEXadd("�}st120", 22000, -655, -691, "cg/ef/ef044_��c.png");
	Rotate("�}st120", 0, @0, @0, 35, null,true);
	CreateTextureEXadd("�}st130", 22000, -332, -323, "cg/ef/ef044_��c.png");
	Rotate("�}st130", 0, @0, @0, 15, null,true);
	CreateTextureEXadd("�}st140", 22000, -666, -330, "cg/ef/ef044_��c.png");
	Rotate("�}st140", 0, @0, @0, 90, null,true);

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/026vs0600a02">
������ʲô����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���Ǽһ��ȷ<RUBY text="����">�ı�</RUBY>����ս������
�����۲��۵ı仯��������ɱ������

�����ң��˷�������ͬС�ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ը��
//�������`��
	CreateTextureEX("�}����400", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	Request("�}����400", AddRender);

	CreateTextureEXadd("�}st150", 22000, 131, -668, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}st160", 22000, 250, -435, "cg/ef/ef044_��c.png");
	Rotate("�}st160", 0, @0, @0, 120, null,true);
	CreateTextureEXadd("�}st170", 22000, -186, -576, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}st180", 22000, -2, -324, "cg/ef/ef044_��c.png");
	Rotate("�}st180", 0, @0, @0, 160, null,true);
	Zoom("�}st*", 0, 500, 500, null, true);
	SetBlur("�}st*", true, 2, 400, 150, false);
	SetTone("�}st*", Sepia);

	CreateSE("SE01","se���L_�Ɖ�_���k07");
	CreateColorEXadd("�}ɫ100", 17500, "WHITE");

	CreateSE("SE01L","se���L_����_Ź���B��02_L");
	MusicStart("SE01L",0,1000,0,1000,null,true);

	Fade("�}����400", 500, 1000, null, false);
	Shake("�}����400", 50000, 2, 3, 0, 0, 1000, null, false);
	Zoom("�}����400", 1500, 4000, 4000, Axl3, false);

	Rotate("�}st110", 500, @0, @0, @+1800, Dxl1,false);
	Zoom("�}st110", 200, 1300, 1300, Dxl1, false);
	Fade("�}st110", 50, 1000, Dxl1, true);
	Zoom("�}st170", 25, 500, 500, null, false);
	Fade("�}st110", 200, 0, null, false);

	Rotate("�}st120", 500, @0, @0, @+4200, DxlAuto,false);
	Zoom("�}st120", 200, 1100, 1100, Dxl1, false);
	Fade("�}st120", 50, 1000, Dxl1, true);
	Zoom("�}st110", 25, 500, 500, null, false);
	Fade("�}st120", 200, 0, null, false);

	Rotate("�}st130", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("�}st130", 200, 1600, 1600, Dxl1, false);
	Fade("�}st130", 50, 1000, Dxl1, true);
	Zoom("�}st120", 25, 500, 500, null, false);
	Fade("�}st130", 200, 0, null, false);

	Rotate("�}st140", 500, @0, @0, @+7500, null,false);
	Zoom("�}st140", 200, 1100, 1100, Dxl1, false);
	Fade("�}st140", 50, 1000, Dxl1, true);
	Zoom("�}st130", 25, 500, 500, null, false);
	Fade("�}st140", 200, 0, null, false);

	Rotate("�}st150", 500, @0, @0, @+2500, DxlAuto,false);
	Zoom("�}st150", 200, 1400, 1400, Dxl1, false);
	Fade("�}st150", 50, 1000, Dxl1, true);
	Zoom("�}st140", 25, 500, 500, null, false);
	Fade("�}st150", 200, 0, null, false);

	Rotate("�}st160", 500, @0, @0, @+3500, Dxl2,false);
	Zoom("�}st160", 200, 1100, 1100, Dxl1, false);
	Fade("�}st160", 50, 1000, Dxl1, true);
	Zoom("�}st150", 25, 500, 500, null, false);
	Fade("�}st160", 200, 0, null, false);

	Rotate("�}st170", 500, @0, @0, @+3600, Dxl3,false);
	Zoom("�}st170", 200, 1300, 1300, Dxl1, false);
	Fade("�}st170", 50, 1000, Dxl1, true);
	Zoom("�}st160", 25, 500, 500, null, false);
	Fade("�}st170", 200, 0, null, false);

	Rotate("�}st130", 500, @0, @0, @+3000, Dxl1,false);
	Zoom("�}st130", 200, 1400, 1400, Dxl1, false);
	Fade("�}st130", 50, 1000, Dxl1, true);
	Zoom("�}st170", 25, 500, 500, null, false);
	Fade("�}st130", 200, 0, null, false);

	Rotate("�}st140", 500, @0, @0, @+7900, DxlAuto,false);
	Zoom("�}st140", 200, 1700, 1700, Dxl1, false);
	Fade("�}st140", 50, 1000, Dxl1, true);
	Zoom("�}st130", 25, 500, 500, null, false);
	Fade("�}st140", 200, 0, null, false);

	Rotate("�}st150", 500, @0, @0, @+1800, DxlAuto,false);
	Zoom("�}st150", 200, 1600, 1600, Dxl1, false);
	Fade("�}st150", 50, 750, Dxl1, true);
	Zoom("�}st140", 25, 500, 500, null, false);
	Fade("�}st150", 200, 0, null, false);



	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 500, 1000, null, true);


	Wait(2000);

	SetVolume("SE*", 3000, 0, null);
	ClearFadeAll(3000, true);

	//CP_AllDelete();
	Cockpit_AllFade0();

	CP_LockOnDelete();

	Wait(2000);



}

..//������ָ��
//�Υե����롡"mb02_027.nss"




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
