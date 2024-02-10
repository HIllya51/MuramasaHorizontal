//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_033vs.nss_MAIN
{

	
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
	#���٥�ȥե�������=true;
	#ev949_�Х�������=true;
	#ev203_���g���h�֣ӥХ�������_a=true;
	#ev203_���g���h�֣ӥХ�������_b=true;
	#ev205_ʸ��Ĥ��ŤĥХ���_a=true;



	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_034.nss";

	CP_AllDelete();


}

scene mc04_033vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_032.nss"


	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm10",0,1000,true);
	CreateSE("SE01","se���L_����_��ͻ�M04");
	CreateSE("SE05","se���L_����_��ͻ�M02");
	CreateSE("SE06","se���L_����_��ͻ�M02");
	CreateSE("SE10","se���L_����_��ͻ�M05");
	CreateSE("SE11","se���L_����_��ͻ�M05");


	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	CreateTextureEX("�}�ݴ���", 1010, Center, Middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	CreateTextureEX("�}�ݥХ���", 1020, Center, Middle, "cg/st/3d�Х���_�Tͻ_���L.png");
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


	CreateTextureSP("�}����50", 100, Center, -400, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	Request("�}����50", Smoothing);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();
	FrameShake();

	MyLife_Count(1,780);
	MyTr_Count(0,300);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	CP_AziChange(0,31,AxlDxl,false);

	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se���L_����_��ͻ�M07",1000);

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
//	CloudZoomVertex(500,@300,@0,null,false);

	DrawDelete("�}ɫ200", 200, 100, "slide_02_01_1", false);
	Move("�}����50", 1000, @0, @100, Dxl2, true);

	BGMoveAuto("@�}����50",1);



//��������˥��`
	SetFwC("cg/fw/fw����֩��_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0010a01">
�������߶ȱ���ѹ�ˣ���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/033vs0020a00">
���߶������ڶԷ�������
���Ǽ����߱��Ķ��ع�ʣ���Ȼ����
ͽ���������ӡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0030a01">
����ʶ�𣿡�


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/033vs0040a00">
�����ǻԲʼ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -100, -344, "cg/bg/resize/bg002_��a_01.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16200, -410, -400, "cg/st/resize/3d�Х���_�T��_ͨ��m.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Move("�}�ݷ���/�}�ݱ���", 60000, @-100, @0, null, false);
	Move("�}�ݷ���/�}���}", 60000, @-200, @0, null, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������֮����������
����Իʥ���������񱦼������Բʼ�����

��ʥ������Ϊʥ��֮���������г�ħ֮����
���񱦼�������ޱȣ���˵��ʹ��������
���ǳ�̤ѹ������״Ҳ���ᷢ���仯��

�����Բʼ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc04/033vs0050a00">
��������������һ��������
����ˣ�<RUBY text="��������">��������</RUBY>���쳣��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0060a01">
��Ҳ����˵�൱��������ÿ��ս����
<RUBY text="����">�ߴ�</RUBY>�ء�
��������ͦ�����͵ġ���

//��������
<voice name="����" class="��������" src="voice/mc04/033vs0070a01">
����������������ͬ������̴�����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/033vs0080a00">
�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ100", 500, false);
	FadeDelete("�}�ݷ�*", 500, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���Ա������ʤ֮�ĵĴ�����ʾ��ͬ��
����������������������δ��֮�⡣

����ֱ�ӽ�ͻ����ת��Ϊ����������߶��ԣ�
���ؼ����򽣻�����Ҳͬ�����ᡣ
������ĳ���������Դ��һ����ɱ��

�����ò�ӭ���Ӹߴ���Ϯ���µĶ��֣��������
δ�ؾͶ��Ҿ����Եز�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ
//����
	BGMoveDelete();

	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//�����ߣ����x
	CreateTextureEX("�}����150", 100, 0, 0, "cg/bg/resize/bg002_��a_01.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 6000, 1000, null, true);

	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d�Х���_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);
	SetBlur("�}��", true, 1, 300, 100, false);


	CreateSE("SE��å�����","se����_���å��ԥå�_������02");

//	CP_AltChange(2000,10,AxlDxl,false);
	CP_AziChange(2000,-171,AxlDxl,false);

//�����ߣ�����
	CloudZoomVertex(500,@300,@0,Axl2,false);
	CP_RollBarMove("@�}����50", 500, 8, AxlDxl, false);
	Move("@�}����150", 1500, @-5048, @0, AxlDxl, false);
	Move("@�}����50", 200, @-200, @-20, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Move("@�}����50", 0, -312, -388, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@200,@0,null,true);

	Wait(600);
	CP_RollBarMove("@�}����50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("�}����150", 300, false);

//�����ߣ���å�����
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	CloudZoomVertex(600,@-300,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, false);
	Move("@�}����50", 600, -512, -288, Dxl2, false);
	CP_LockOnMove("@�}��",800,@-200,@0,Dxl2,true);
//	CP_LockOnMove("@�}��",0,@0,@0,null,true);
	WaitAction("@�}��",null);

$��`�ץ�`�֥ʥå��� = "@�}��";
$��`�ץ�`�֥����� = 30000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");

	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);

	BGMoveAuto("@�}����50",1);
	Request("�ץ�����", Start);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������������ˡ�
���������ڵ���ͨ����ս��һ��ʤ���������

�����е���������������Ѻ��޹�ϵ��
�������ﲢ��ʹ�ó����������ǰѴ���ʯ���Ļ�������
�����κβ�����

�����߹�ӵ��ƽ��ǹ�ڻ����޷����������������̫��
ն���й�֮���޲�����
���������������̹����⻹�������������͡���˵����
��ʯ�������ƻ���������

�������ڴ�Ͳ����������װ���������ߵĸ������ϻ�
е��������ǿ�͹��ң��������ת����˵�������ز�
����Ҳ�ܴ�͸��

����������ǿ�󲻱������䣬���ŵ���Ҳ�������ã�
����С������ʹ��ʱ������
���������ȿ��Ǹ���������Ӧ�ԣ���Ӧ���ܶԷ���
�п�ս�����ա�

����������ڱ���Ŀ��У�Ǳ���ڵ����ɽ���н���
ս�����ҷ����Ը�Ϊ������

�����������<RUBY text="��������">����ԭ��</RUBY>�Ļ���
Ӧ���Ѿ��������ˡ�

�������ڵ�����ҷ����ԣ����з�ս���ܹ�������Ȼ
��ã���Ҳ��ͻȻ�ı�����ת��Ϯ�������ξ�Ŀ���
�ԡ��������龰�£���һ���������ҷ������������ϡ�


����˾ͺ�ͷ�ۡ�
��Ϊ��������ʱת�⣬��֪ս���ϻ��в�����Ҳ���ò�
���շ��б�֤���������ҷ������������������


���Ǹ���ʿ�ȶ����ң������������ͼ���ô����ξ��Ϊ
�ҵĽ���Ҳ˵������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӽ�
	OnSE("se���L_����_��ͻ�M02",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("@�}��", 800, 500, 500, Dxl2, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����ֿ����������ʯ����ʹ�á�
���γ����������Ҹ��幥����

����������ƫ֮���������õı�������Ȼ���Ǵ�����
�������Ծ�����ʹ�ðɡ�
���������ý������ҷ�����ס�ҷ��֮���𡪡�

����ô�������Ҵ����һ��ͼ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/033vs0090a00">
���ڽ���ʤ����ȡ�����ƣ�����������������
��ʯ���������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0100a01">
������������˽���֡�
�������˽⣡��

//��������
<voice name="����" class="��������" src="voice/mc04/033vs0110a01">
���������е��ߵ�����֮�����չ�ֻ��а����
�����������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M03",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("@�}��", 800, 800, 800, Dxl2, true);

//���ӽ�
//���Х���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���������ֳֳ��������ּ���ʯ������
���ǻ�������ʹ����

������ʯ��һ�������ڴ�͵���֮�����ܵ����ӵĶ�����
���Է������ʹ�ã����ڵ��ҿ������κ��·���

�����������Ķ�ս�����൱ƶ����
����Ȼ�ڽ�֮�����������Ρ�������������ս��������
��������˫�ֳ��յĴ󽣡����͵����ߵ�������̫
����졣


��ͬʱʹ�ý��ܵ�ս������δ֪����
��
��Ҳ����˵������ô�²�Ҳû�����塣

�����޷�֪̽���˵�ϸʱ��ӦˣŪ���У�
��������Ӧ�Ը�Ϊ̤ʵ��
���Է��޷Ǿ����Զܷ������Խ�ն������ô�ҷ�ƾ��һ
�������з�����һ�������ͺá�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������϶�
	BGMoveDelete();
	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	OnSE("se���L_����_������02",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	CloudZoomDelete(500,false);
	Zoom("@�}����50", 600, 1050, 1050, Dxl2, false);
	Zoom("@�}��", 500, 900, 900, Dxl2, false);
	Move("@�}��", 500, @0, @-100, Dxl2, false);
	Move("@�}����50", 500, @0, -300, Dxl2, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����̫���߾ٹ�����
��ѹ�����ǳ�����︹����Ȼ��ն�¡���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_�Х���_�ܩ`���󘋤�02",1000);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0091]
���������ȶԷ�������Ӧ��������Ƶ�ɲ�ǡ�
��
����ת��ʹ̫���������£�̧�����ǣ��������˺�ʱ
����ն��һ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�Х���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/033vs0120a03">
��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؤ��Ϥ�
//�������`�󡣶ܤ�ֹ�᤿
	CreateColorEXadd("�}ɫ100", 1500, "WHITE");
	CreateSE("SE01","se���L_����_�z_���04");
	SL_up(@0, @0,1000);

	SetFrequency("SE10", 1000, 1200, null);
	OnSE("se���L_����_��ͻ�M01",1000);
	Zoom("�}����50", 400, 1100, 1100, Axl2, false);
	CP_LockOnMove("@�}��",300,@0,@-150,Axl2,false);
	Zoom("@�}��", 300, 1000, 1000, Axl3, false);

	Wait(200);
	SL_upfade2(10);
	Wait(100);

	Rotate("@�}��", 300, @0, @0, @20, Dxl2,false);
	Fade("�}ɫ100", 0, 1000, null, true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}ɫ100", 500, true);


	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc04/033vs0130a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ֵĶ�Ӧ����������
���ҵ�̫������̵ļ���������һ�����ε�ס����

���ҷ����𹥱�������
�������������Է����Ƿ������ѽ߾�ȫ����

���������һ��³���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ
//��������`��
//������x���
	BGMoveDelete();
	CreateColorEXadd("�}ɫ100", 20500, "WHITE");
	CreateColorEX("�}ɫ200", 18000, "BLACK");

	OnSE("se���L_�Ɖ�_�z04",1000);

	CP_LockOnMove("@�}��",200,@0,@1000,Axl1,false);
	Zoom("@�}��", 200, 1500, 1500, Axl2, false);
	Fade("�}ɫ200", 200, 1000, null, true);
	SL_centerin2(20000,@0, @0,1000);
	SL_centerinfade2(10);
	Wait(200);
	Fade("�}ɫ100", 50, 1000, null, true);

	Delete("@�}ɫ200");
	Delete("@�}��");

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);

	OnSE("se���L_����_�z_�����w��01",1000);

	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("�}����50", 1000, 1000, 1000, Dxl2, false);
	CP_LockOnDelete();

	MyLife_Count(1000,620);
	MyTr_Count(1000,350);

	FadeDelete("�}ɫ100", 1000, false);
	Move("@�}����50", 1500, @0, @-300, Dxl3, true);

	BGMoveAuto("@�}����50",1);



	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�룺��������������090930��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0140a01">
���ز������������ˣ�
�����ա���һ���ͼ��������ơ���


{	FwR("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc04/033vs0150a00">
����ͻ��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���������������ڴ����³���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����h
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev949_�Х�������.jpg");
	Fade("�}����100", 500, 1000, null, true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������״��ն��������ն����ԣ���״�Ĵ�ͻ�򽫼���
�ᴩ��
��������һ���������ǿ�ȷ�ն���ɱȣ�
��ƾһ����ͻ�Ƽ���֮��Ҳ���ǲ����ܡ�

�����������һ�����������������ˡ�
��
��������һ����˵����Ϊ<RUBY text="��">��</RUBY>�����Ĵ�ͻ��ʹ
ӵ���൱�ߵ������ȣ�Ҳ�޷����ײ�׽���ٷ����е����ߡ�

����͵����ߵ��������˲����������⣬���Դ�ͻ����Ч
�����۲���Ҳ�����ԭ�򣬲�������
�����˵Ľ���ͨ�������Ͽ˷������ȱ�㡣


��Ҳ����˵�ö����������Է����������򱣳ִ���״ֱ̬��
Ŀ��ӽ���
��������ʱ�����֣�����ʹ����ͻ��


��ͬ���������ֻ��һ��̫�������߶��ԣ�����ڵȺ�
֮ʱ�ͻᱻն��������Ҳֻ�����ͬ���ھ���
���Զ��볤����������װ���ԣ�������������Ч�ʵ���
�÷���֮һ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����100", 500, true);

	Wait(200);

//����ܞ
	BGMoveDelete();

$��`�ץ�`�֥ʥå����� = "@�}��";
$��`�ץ�`�֥����ࣲ = 30000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");

//�����ߣ����x
	CreateTextureEX("�}����150", 100, -5048, 200, "cg/bg/resize/bg002_��a_01.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 6000, 2000, null, true);
	Rotate("�}����150", 0, @0, @180, @0, null,true);

	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d�Х���_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);
	SetBlur("�}��", true, 1, 300, 100, false);

	CockPit_LockSet(@0,@0);
	CreateSE("SE��å�����","se����_���å��ԥå�_������02");

	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	CP_AziChange(2000,-30,AxlDxl,false);

//�����ߣ�����
	CloudZoomVertex(600,@-300,@0,Axl2,false);
	CP_RollBarMove("@�}����50", 500, -8, AxlDxl, false);
	Move("@�}����150", 1500, @5048, @200, AxlDxl, false);
	Move("@�}����50", 200, @200, @-200, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Move("@�}����50", 0, -512, -398, null, true);
	CP_LockOnMove("@�}��",0,@-200,@-50,null,true);

	Wait(600);
	CP_RollBarMove("@�}����50", 600, 0, Dxl2, false);
	Wait(200);
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//�����ߣ���å�����
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	Fade("@�}��", 500, 1000, null, false);

	CloudZoomVertex(600,@300,@0,Dxl2,false);
	FadeDelete("�}����150", 300, false);
	Move("@�}����50", 1200, -312, -288, Dxl2, false);
	CP_LockOnMove("@�}��",1200,@200,@50,Dxl2,true);
	CP_LockOnMove("@�}��",0,@0,@0,null,true);

	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	BGMoveAuto("@�}����50",1);
	Request("�ץ�����", Start);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mc04/033vs0160a00">
��ԭ������𡭡���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0170a01">
���е������û��ϵ��
�������׸�����ҿɲ�������


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/033vs0180a00">
����Ȼ��
��˿��û�����ִ��㡣��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����һս���ǲ����ò���ս����

�������������Σ�յĴ̿ͽӽ������ξ��
�����Դն��������ԣ��������κ���Ҳ�޷�ȡ���Ĵ��ڡ�

�������ػ����ס�
����Ϊ��������ȷ��ɱ���ҵ�Ů�ԡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���M��
	OnSE("se���L_����_��ͻ�M03",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("@�}��", 800, 500, 500, Dxl2, true);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mc04/033vs0190a00">
�����𡪡�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���������磬�ڶ���������ʱ��
��һ�����ʺ������Ժ���������

��Ϊ���ػ�ʲô�˶�ս����

��������Ǳ��������ֿ��������ս����
����������������������ս������Ŀ�����

��Ϊ���ػ�ʲô��ս�ľ�������ȥҲ���й���
���������������ػ�ס�κ�һ��������

��û���ػ�����ĸ��

���ڽ�֮����Ҳû���ػ��÷�������������ֵ��ǡ�

���ն������Ľ������ػ�ʲô��������
��û�аɡ�

�������еĻ�����
����Ϊʲô����ǰ���ã����������ؿ���������ɱ���ء�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 200, 1, null);

//���ե�å���Хå������L����
	EfRecoIn1(19000,600);
	Cockpit_AllFade0();
	CreateTexture("˼����", 18000, Center, Middle, "cg/ev/ev170_�Х������L���䚢_a.jpg");
	EfRecoIn2(300);

	Wait(1500);

	EfRecoOut1(300);
	Delete("˼����");

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();

	EfRecoOut2(600,true);

	SetVolume("SE10", 2000, 300, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����������û��

���ն������Ľ���������Ϊ���ػ�˭�����ڵĽ���
����Ϊ��ɱ��˭�����ڵĽ���

�������������Ը��û���κι�ϵ��
��<RUBY text="������">��ʵ��</RUBY>��������ˡ�

����ô��������Ҳ�ǡ�
��������ñ�ʤ��Ҳֻ������������

��ɱ��

��ֻ��ɱ��

�������ǳ�ֵġ�
�����������ĳ�С�

��������������
������ǰʧȥ��Ң���ˣ��Ǹ����ΰ��˲�䣬�Ҳ���
��������

�����Լ������У������˷��ġ�
����ɱ֮��

������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0200a01">
��������������


{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/033vs0210a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӽ�
	OnSE("se���L_����_��ͻ�M03",1000);

	EffectZoomadd(10000, 800, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("@�}��", 800, 800, 800, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��̫��������ʱ���Ƚ���
�������Ȼ�����Զܷ����Խ�ͻ�̵ļ��ơ�

������ȡ�þ��������ս�Ρ�
���������׻�����

������Ȼ��ˣ�ƴ��������������ͺá�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х���
//�������϶�
	BGMoveDelete();
	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	OnSE("se���L_����_������02",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	CloudZoomDelete(500,false);

	OnSE("se���L_����_������02",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	Zoom("@�}����50", 600, 1050, 1050, Dxl2, false);
	Zoom("@�}��", 500, 900, 900, Dxl2, false);
	Move("@�}��", 500, @0, @-100, Dxl2, false);
	Move("@�}����50", 500, @0, -300, Dxl2, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��ȡ���ߵ���֮��ͳ��̫�������Ҽ�֮�ϡ�
���̶�ͻ����

���������վ����˲�䣬�ı���ơ�
������ת�����£��������ﱳ��֮ʱ�ӵ��Ͽ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�Х���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/033vs0220a03">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��ɲ�Ǽ䣬�з��ľ�����Ϣ���ǡ�
�����ǵ�Ȼ������Ϊ�ҷ�����ԭ�ⲻ�����ٴ�ʹ��
�ղ��ѱ���ȥһ�ε��ַ���

����Է�����Ի�����и֮ʱ���ɶ����⿴������
���޳����͵Ķ��ֶ��ԣ�������ǡǡ�෴�ľ��档
�����������·�����̶����͵ķ���������������
ȫ���͹��������б�þ��ܼ��Զ�Ӧ��

��������������������塣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���̥������ȡ��g���⤹

	OnSE("se���L_����_������01",1000);
	OnSE("se���L_����_��ͻ�M01",1000);
	Zoom("@�}����50", 600, 1080, 1080, Dxl2, false);
	Zoom("@�}��", 500, 980, 980, Dxl2, true);
	Wait(200);
	SetFwR("cg/fw/fw�Х���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/033vs0230a03">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���з��ľ���֮�У�����Ĳ���������
��������һɲ�ǡ�û���κ���ʽ�ĳ��Ϯ�����ϡ�

���Ҽ�����ն��һ��ֻ�����ơ�����δ���֡�
������ն�������Ǹ������ֵ��ֳ���̫����

���ճ�����

����������������Ѳ����˿��û�з�ӳ�������ϡ�
���Ժ��޳��ɵ��������ó���ʹ��һ�Ǵ�ͻ��

��Ŀ����ȷ�ÿ��¡�
���ٴδ���ǰһ�غϴ��еĲ�λ�������ڽ�γ��׹ᴩ����
<k>����������ҷ���<RUBY text="��">��</RUBY>Ҳ�ѱ��á�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//����ͻ
	CreateColorEX("�}ɫ100", 18000, "BLACK");
	CreateSE("SE01","se���L_����_�z_���01");

	Zoom("@�}����50", 200, 1100, 1110, Axl2, false);
	Zoom("@�}��", 200, 1200, 1200, Axl2, false);
	Move("@�}��", 200, @150, @300, Axl2, false);
	Move("@�}����50", 200, @20, @50, Axl2, false);

	Wait(200);
	Fade("�}ɫ100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerin2(20000,@0, @0,1000);
	SL_leftup2(20000,@0, @0,1000);

	SL_centerinfade2(10);

//���B��
	OnSE("se���L_����_��ꪏ���02",1000);
	SL_leftupfade2(10);

	Move("@�}��", 500, @100, @50, Dxl2, false);
	Move("@�}����50", 500, @50, @20, Dxl2, false);
	FadeDelete("�}ɫ100", 500, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��������̫��������
�����ţ�

���һӳ�<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");

	OnSE("se���L_����_�����02",1000);

	Fade("�}����100", 150, 1000, null, false);
	EffectZoomadd(18000, 500, 200, "cg/ef/ef001_�����Ƅ�.jpg", true);

	SetFwR("cg/fw/fw�Х���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/033vs0240a03">
��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����Ұ������ս�񷨡�
���������߶Ρ�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������뤫��

	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ev/ev203_���g���h�֣ӥХ�������_a.jpg");
	Fade("�}����200", 500, 1000, null, true);
	WaitKey(1200);

	CreateTextureEX("�}����300", 18000, Center, Middle, "cg/ev/ev203_���g���h�֣ӥХ�������_b.jpg");
	Fade("�}����300", 500, 1000, null, true);

	WaitKey(1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
������ｻ���˲�䣬���������ɹ�״�������
��������
�������˴˵��˶������������ﾱ���۶ϵ���ʽ��

��һ��ʹ�����¡�
�������ö��ֳ����������ߵ��ξ���Ԩ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å����ܥ�Щ`��
//���Х����ܤ�������ä����Ò줫�ä��褦������
//��I�T�x��
	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 2000, 1200, null);

	CreateColorEXadd("�}ɫ100", 1500, "WHITE");

	Delete("@�}����200");
	Fade("�}����300", 200, 0, null, true);

	OnSE("se���L_����_���04",1000);
	EffectZoomadd(18000, 200, 200, "cg/ef/ef001_�����Ƅ�.jpg", false);
	Zoom("�}����100", 200, 2000, 2000, Axl2, true);

	Fade("�}ɫ100", 0, 1000, null, true);

	Delete("@�}����100");
	Delete("@�}����300");
	Shake("@CP_Frame", 1000, 5, 5, 0, 0, 800, null, false);
	Zoom("�}����50", 1000, 1000, 1000, Dxl2, false);
	CP_LockOnDelete();

	OnSE("se���L_����_��ͻ�M06",1000);
	OnSE("se����_�z_װ��01",1000);
	FadeDelete("�}ɫ100", 500, false);
	Zoom("@�}��", 500, 3000, 3000, Axl2, false);
	Move("@�}��", 500, @16000, @5000, Axl2, false);
	Move("@�}����50", 1500, @0, @-300, Dxl3, true);
	Delete("@�}��");

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 900, null);

	BGMoveAuto("@�}����50",1);

	Wait(500);


	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/mc04/033vs0250a00">
�������С���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�����볹�״����һ�����ֲ�������
�������˵ķ�Ӧ����ȷʵ׿Խ��Ⱥ��

������ͷ������������˼�Ժ���֮���������ҵ�����
���ƺ������Ѿ���΢������ͷ����������ڲ໹����
��Щ���������ϡ�

����һ��֮�
���������԰벽֮��δ����Ը��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	Fade("�}����100", 500, 1000, null, true);


	SetFwC("cg/fw/fw�Х���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//�����Ц��
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/033vs0260a03">
�������ߡ����ߺߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���Ǵ����
��������ʲô�����Ŷ�Ĥ��

���ͳ���Ц�����ѿ�֮����ص���

���Ȳ������Ҳ������Ū��
�����ǣ�ϲ�á�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);

	FadeDelete("�}����100", 500, true);

//����ܞ

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/mc04/033vs0270a00">
���»ؾ��˽��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0280a01">
��������������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/033vs0290a00">
�����飡��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0300a01">
����������
��һ�ߩ����Ϸ�����������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0310a01">
����ת������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ�K��
//����
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 1500, 1100, null);

	OnSE("se���L_����_��ͻ�M03",1000);

	CreateTextureEX("�}����100", 1500, 0, 0, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Zoom("�}����100", 0, 1000, 1000, null, true);
	Move("�}����100", 0, @0, 0, null, true);

	CreateSurfaceEX("�}Suf",1000,2000,"�}����100");


	Fade("�}����100", 0, 1000, null, true);
	Fade("�}Suf", 500, 1000, null, false);
	Rotate("�}Suf", 2500, @0, @0, @180, AxlDxl,false);
	Move("�}����100", 2500, @0, -5000, AxlDxl, false);
	Move("@�}����50", 500, @0, @-200, Axl2, false);

	CP_AziChange(1000,189,Axl1,false);
	CP_SpeedChange(2000,650,null,false);
	CP_HighChange(2000,357,null,false);

	CP_RollBarMove2(1500,180,AxlDxl,true);
	CP_RollBarMove("@�}����50",0,0,null,true);

	Wait(500);

	CP_SpeedChange(2000,378,null,false);
	CP_HighChange(2000,557,null,false);
	Move("@�}����50", 0, -512, -588, null, true);
	Fade("�}Suf", 500, 0, null, false);
	Move("@�}����50", 500, -512, -458, Dxl2, true);
	Move("@�}����50", 500, -512, -488, AxlDxl, true);
	BGMoveAuto("@�}����50",1);
	Delete("�}����100");
	Delete("�}Suf");

	SetVolume("SE10", 3000, 0, null);
	SetFrequency("SE10", 2000, 1000, null);
//	SetVolume("SE*", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

	Wait(500);
	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0320a01">
��!!�����ǡ�����


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/033vs0330a00">
����������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/033vs0340a01">
�������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
������ָ�����ܿ�����Ҳ֪�����к��塣
�����ǣ���<RUBY text="����">��ͼ</RUBY>�������ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Х�����đB��
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	Fade("�}����100", 300, 1000, null, true);

	SoundPlay("@mbgm12",0,1000,true);

	Wait(300);

	CreateWindow("������ɥ���", 18500, 0, 0, 1024, 288, false);
	CreateWindow("������ɥ���", 18500, 0, 288, 1024, 576, false);
	SetAlias("������ɥ���","������ɥ���");
	SetAlias("������ɥ���","������ɥ���");

	CreateTextureSP("������ɥ���/�}����50", 18500, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	CreateTextureSP("������ɥ���/�}����50", 18500, Center, Middle, "cg/bg/bg002_��a_01.jpg");

//�����ߣ�EV��ǲ�椨
	CreateTextureSP("kana", 18100, 0, Middle, "cg/ev/resize/ev205_ʸ��Ĥ��ŤĥХ���_al.jpg");
	SetBlur("kana", true, 1, 300, 100, false);
	Move("kana", 0, @-200, @-200, null, true);
	CreateTextureSP("�}EV100", 18000, 0, Middle, "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_a.jpg");
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	SetBlur("�}EV100", true, 1, 300, 100, false);


	Move("������ɥ���", 1500, @0, @-150, null, false);
	Move("������ɥ���", 1500, @0, @+150, null, false);
	Move("kana", 1500, @-200, @+100, Dxl1, true);

	Wait(500);

	OnSE("se����_�z_װ��06",1000);
	Move("kana", 300, @-500, @250, Dxl2, true);

	Wait(800);

	Move("������ɥ���", 300, @0, @-150, Axl3, false);
	Move("������ɥ���", 300, @0, @+150, Axl3, true);
	Delete("������ɥ���/�}����50");
	Delete("������ɥ���");
	Delete("������ɥ���/�}����50");
	Delete("������ɥ���");

	Move("�}EV100", 0, -390, 140, null, true);

	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);
	FadeDelete("kana", 250, false);
	Move("�}EV100", 500, 0, 0, Axl3, false);
	Zoom("�}EV100", 500, 1000, 1000, Axl3, true);

	Wait(800);

	Delete("�}����100");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
���з�ս�����ڱ仯��

���ս����ʡ����ڳ�ʹ��ʯ��֮�ơ�
���������ߵ�׼����������׼��

���Թ������ԣ��Ƕ���̸�����κβ���˼�飬
ֻ��˵��������Ϊ��
��
��Ȼ�������Źֵ���ʱ����

��̫���ˡ�

���ҷ���δ�ܵ�ʵ�������ϵ����ˡ�
����������Ҳֻ����΢�̶ȡ�

��Ҳ����˵���ٶȲ�������
���Ծ������õĻ������ܣ�������޶ȵط��ӻر�������

����һ��ʵ�з�Ӧ��Ҳ���ס�
������Ϊ�Σ�Ҫ���������

������Ĺ�����������������Թ���
���������Թ��෴��Ϊ���ɱ�����������������ܣ�����
��ʱ���ҵ�ʯ����

�����ڽ��յĶ�ʱ���ڽ���������ս�����ԣ����ʯ����
�����������Ҳ�����ޡ�
������ֻ����һ�Ρ��������еڶ��Ρ�

����Ȼ��ˡ����浽���б�ɱ֮ʤ����ʹ����������Ȼ��
������ô�޶۵���Ҳ�����������

���з�ȴ��Υ���������
��Ϊ�Σ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}����50", 0, 1100, 1100, null, true);

	FadeDelete("�}EV100", 500, true);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/mc04/033vs0350a00">
���ѵ�˵���ż��ˣ�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
����Ϊ΢����������顣
��Ϊ������Ԥ�ж����ӡ���ҡ������˼������
����ʤ���𡪡���

�������������Ҳ�޷����ŶԷ�����˵�С֮�ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/mc04/033vs0360a00">
����ô����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
��Ϊʲô��
��
��
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���رܙC��
	BGMoveDelete();

	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//�����ߣ����x
	CreateTextureEX("�}����150", 100, 0, 0, "cg/bg/bg204_�����ر���_01.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 4000, 2000, null, true);
//�����ߣ����`�ե��`������
	CreateSurfaceEX("�}Suf",1000,2000,"�}����150");

	CreateSE("SE��å�����","se����_���å��ԥå�_������02");


	CP_AltChange(2000,10,AxlDxl,false);
	CP_AziChange(3000,-150,AxlDxl,false);
	CP_SpeedChange(3000,757,null,false);


	MusicStart("SE��å�����",0,1000,0,1000,null,false);
//�����ߣ����`�ե��`������

//�����ߣ�����
	Move("@�}����50", 800, @-50, @0, Axl3, false);
	Wait(500);
	Fade("�}����150", 500, 1000, null, false);
	Fade("�}Suf", 500, 1000, null, false);
	Rotate("�}Suf", 2000, @0, @0, @370, AxlDxl,false);
	CP_RollBarMove2(2000,370,AxlDxl,false);
	Move("@�}����150", 2500, @-4048, @0, AxlDxl, false);
	Fade("@�}����150", 300, 1000, null, true);

	Zoom("�}����50", 0, 1300, 1300, null, true);
	Move("@�}����50", 0, -312, -388, null, true);

	Wait(1500);

//�����ߣ����`�ե��`�������K��
	Fade("�}Suf", 300, 0, null, false);
	CP_RollBarMove2(800,360,AxlDxl,false);
	Move("@�}����50", 800, -512, -288, Dxl2, true);
	Delete("�}����150");
//�����ߣ����`�ե��`������
	Delete("�}Suf");

	BGMoveAuto("@�}����50",1);

	Wait(500);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���ҽ��Լ���˼���������г��롣
����ʼȷ���ٶȣ��Է��������

�����ܵз���ͼΪ�Σ�����ҷ������Ǿ��ѻ��ᡣ
���ö����˷ѵ�ɱ��ﵵĻ��ᡣ

�������ܷŹ���
��ֻҪ�رܵ���һ������ʽ�ͻ�����б��

���ڵ����ٴλ��ֳ�������������֮ʱ��������
���׼������Ϯ����
����������״�����͵�ͬ������ʤ�֡�

���ǣȣѵĴ̿;ʹ����䡣
�������ĳ�оʹ˻�����

����Ҳ�޷���������֦С�����ߡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}EV100", 18000, 0, Middle, "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_a.jpg");
	Fade("�}EV100", 500, 1000, null, true);

	Wait(300);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/mc04/033vs0370a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
��ֹסգ�ۣ��Ҷ���ע�ӵ�Ӱ��
��Ϊ�˹���Է��������ӯ��ɱ�����һ˲�䡣

�������Բʼ�������ʿ�����������ҡ�
��Ϊ��һ���̴��ҵ����࣬����ֻ������衣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	CP_AllDelete();

	Wait(1000);


}

..//������ָ��
//�Υե����롡"mc04_034.nss"

