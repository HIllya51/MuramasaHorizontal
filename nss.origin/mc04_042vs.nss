//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_042vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc04_042vs.nss","FlyMoving",true);
	Conquest("nss/mc04_042vs.nss","FlyMoving2",true);
	Conquest("nss/mc04_042vs.nss","TurboBlur",true);
	Conquest("nss/mc04_042vs.nss","TurboBlur2",true);
	Conquest("nss/mc04_042vs.nss","RotateLoop",true);

	
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
	#ev206_�Х����ѥ�ɥå�������`���h_a=true;
	#ev206_�Х����ѥ�ɥå�������`���h_b=true;
	#ev206_�Х����ѥ�ɥå�������`���h_c=true;
	#ev206_�Х����ѥ�ɥå�������`���h_d=true;
	#ev206_�Х����ѥ�ɥå�������`���h_e=true;
	#ev206_�Х����ѥ�ɥå�������`���h_f=true;
	#ev206_�Х����ѥ�ɥå�������`���h_g=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#aw_�����ꥢ�ࡤ�Х���=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mc04_043vs.nss";

}

scene mc04_042vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_041vs.nss"

	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm12",0,1000,true);

	CreateSE("SE01","se���L_����_��ͻ�M04");
	CreateSE("SE05","se���L_����_��ͻ�M01");
	CreateSE("SE06","se���L_����_��ͻ�M02");
	CreateSE("SE11","se���L_����_��ͻ�M05");

	CreateColorEXadd("�}ɫ100", 15000, "WHITE");

	CreateTextureSP("�}����100", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	CreateTextureEX("�}�ݴ���", 1010, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	CreateTextureEX("�}�ݥХ���", 1020, Center, Middle, "cg/st/3d�Х���_�Tͻ_���L2.png");
	Request("�}�ݴ���", Smoothing);
	Request("�}�ݥХ���", Smoothing);
	Rotate("�}����100", 0, @0, @180, @0, null,true);
	Rotate("�}�ݥХ���", 0, @0, @0, @0, null,true);
	Rotate("�}�ݴ���", 0, @0, @0, @120, null,true);
	Zoom("�}�ݴ���", 0, 50, 50, null, true);
	Zoom("�}�ݥХ���", 0, 5000, 5000, null, true);

	SetBlur("�}�ݴ���", true, 1, 300, 70, false);
	SetBlur("�}�ݥХ���", true, 1, 300, 70, false);

//	Move("�}�ݴ���", 0, -500, -200, null, true);
	Move("�}�ݥХ���", 0, 77,-413, null, true);
	Move("�}�ݴ���", 0, -1675,-250, null, true);

	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");


//	$�����ʥå����� = @�}�ݴ���;
//	$�����ʥå����� = @�}�ݥХ���;
//	CreateProcess("�ץ�����", 150, 0, 0, "RotateLoop");
//	SetAlias("�ץ�����","�ץ�����");

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(500,@400,@0,null,false);

	CreateColorEXadd("�}ɫ200", 18500, "WHITE");
	CreateTextureEXadd("�}�����ݤ�", 18000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE11",0,1,0,1200,null,true);


	Request("�ץ�����", Start);
//	Request("�ץ�����", Start);

	Move("�}����100", 5000, @0, @-200, Axl1, false);
	Fade("�}�ݴ���", 0, 1000, null, false);
	Rotate("�}�ݴ���", 5000, @0, @0, @30, Dxl2,false);
	Zoom("�}�ݴ���", 5000, 5, 5, null, false);
	Move("�}�ݴ���", 5000, @150, @150, Dxl1, false);
	FadeDelete("�ϱ���", 1000, true);


//	BezierMove("�}�ݴ���", 1100, (177,-213){80,10}{60,10}(-10013,-348), Axl1, false);


	SetVolume("SE11", 1000, 1000, null);
	Wait(1000);

	MusicStart("SE05",0,1000,0,1000,null,false);
	MusicStart("SE06",0,1000,0,1000,null,false);
	SetFrequency("SE11", 2000, 800, null);
	Shake("�}�ݥХ���", 2000, 0, 1, 0, 0, 1000, Dxl2, false);
	Rotate("�}�ݥХ���", 1500, @0, @0, @90, Dxl2,false);
	Zoom("�}�ݥХ���", 1600, 50, 50, Dxl3, false);
	BezierMove("�}�ݥХ���", 1600, (113,-1848){-1080,-450}{-1060,-410}(77,-313), Dxl1, false);
	Fade("�}�ݥХ���", 300, 1000, null, true);
	Shake("�}����100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	SetVolume("SE11", 2500, 0, null);

	Wait(1000);
	Fade("�}ɫ100", 200, 1000, null, true);


	Delete("�ץ�����");
	Delete("�ץ�����");
	Delete("�}����*");
	CloudZoomDelete(0,true);
	Delete("�}����������");
	Delete("�}��*");

	PrintGO("�ϱ���", 30000);


	CreateColorSP("�}ɫ100", 20000, "BLACK");
	CreateTextureSP("�}����50", 100, Center, -400, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
//	SetBlur("�}����50", true, 3, 800, 200, false);
	Request("�}����50", Smoothing);

	CreateTextureEX("�}��", 1590, center, middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	Request("�}��", Smoothing);
	Rotate("�}��", 0, @0, @0, @125, null,true);
	Zoom("�}��", 0, 50, 50, null, true);
	Move("�}��", 0, @0, @300, null, true);
	SetBlur("�}��", true, 1, 200, 100, false);
	Fade("�}��", 0, 1000, null, true);
	Shake_Loop("@�}��","shake02");

	CreateSE("SE01","se���L_����_��ͻ�M04");
	CreateSE("SE10","se���L_����_��ͻ�M05");

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();
	CockPit_LockSet(@0,@0);


	MyLife_Count(0,320);
	MyTr_Count(0,360);
	CP_PowerChange(0,394,null,false);


	CP_LockOnFade(0,"off",false);
	CP_EnemyFade(0,3,180,160);
	CP_EHPChange(0,3,null,true);
	EnLife_Count(0,180);
	EnTr_Count(0,160);


	CP_HighChange(0,613,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);


	CloudZoomVertex(0,@-400,@0,null,false);
	BGMoveAuto("@�}����50",1);

	Delete("�ϱ���");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);
	SetFrequency("SE10", 2000, 1200, null);

	CP_HighChange(1000,462,Dxl2,false);
	CP_SpeedChange(1000,575,Dxl2,false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_����AȾ.jpg", false);
	Move("�}��", 1000, @0, @-300, Dxl2, false);
	Zoom("�}����50", 1000, 1400, 1400, Dxl2, false);
	DrawDelete("�}ɫ100", 300, 100, "zoom_01_00_1", true);
	SetVolume("SE10", 3000, 300, null);

	Wait(700);


//������֦������


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����׹�䡪��
����ȷ���Լ�������ɹ�֮ǰ����������ʥ���任Ϊ
׷����̬��

����֪��������ƫ��
����һ��ʼ��֪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 2000, 1, null);

//���ѥ�ɥå�����Ľ��h


	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev206_�Х����ѥ�ɥå�������`���h_a.jpg");
	Fade("�}����100", 500, 1000, null, true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����֮�������Ǵ����ڰ����������е����弼�ܡ�
�����ȷ��һ��Ŀ��ص������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣�


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������趨�õ������ϼ��ۡ�
������Ϊֹ���Ǻ��������һ������ȷ��ΪĿ��Ķ���
�����жϳ����ߴӶ��رܡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣�
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ev/ev206_�Х����ѥ�ɥå�������`���h_b.jpg");
	Fade("�}����200", 500, 1000, null, true);
	Wait(500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������ǡ�
��������֮�����İ�����ʹ���ߣ����������ߵ��м�㣬
���<RUBY text="������">�����</RUBY>�Ļ��ᡣ

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣�
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev206_�Х����ѥ�ɥå�������`���h_c.jpg");
	Fade("�}����100", 500, 1000, null, true);
	Wait(500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����������趨Ŀ��ص㣬�������ߡ�
����һΥ�����������Ϊ�������趨�������м��ͬ��
����ʵ�С�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣�
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ev/ev206_�Х����ѥ�ɥå�������`���h_d.jpg");
	Fade("�}����200", 500, 1000, null, true);
	WaitKey(500);

//����֣�
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev206_�Х����ѥ�ɥå�������`���h_e.jpg");
	Fade("�}����100", 500, 1000, null, true);
	WaitKey(500);

//����֣�
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ev/ev206_�Х����ѥ�ɥå�������`���h_f.jpg");
	Fade("�}����200", 500, 1000, null, true);
	WaitKey(500);

//����֣�
	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev206_�Х����ѥ�ɥå�������`���h_g.jpg");
	Fade("�}����100", 500, 1000, null, true);
	WaitKey(500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ӦĿ��ĵĻ����رܣ���֮�ı����ߵ�һ����
����ˣ����Ǳ��б�ɱ��ħ����
��
����������������ˣ���ȴ�ǿ�̸��

���ⲻ���ǿ�̸���ѡ�
�����Զ�����Ҫ��Ч������һ���ܣ�������<RUBY text="����">����</RUBY>��
<RUBY text="��������">������֪</RUBY>�Գ������ƶ��ļ�ʸ����
�м���ɲ�ǡ�

�������֮һ��Ҳ������ʱ���У���ȷ�ر��Ͽռ���
��һ�㣬����ͬʱ��ȷ��ĵ�λ�á���
����ԶԶ������������������롣

����ʹ��֪����ʶԶ��������Ч�ʵĽ���ͳ������
��������Ҳ��ȫ������
�������������ӵ��������壬�ǰ�������ͼģ�¹�ʥ
ȴδ����Ը�Ľ����

����ʥ�������ǡ�<RUBY text="����">��ʸ</RUBY>��׷�����ֵ����ߡ���
��δ��ģ������񼼵İ������ڿ��ܵķ�Χ��Ŭ����
�������֡���<k>���ȴ�Գ��׵����۴�������ա�

���湭ʥ������ʷʵ�����͹�ʥ��ħ��ȴ�������鹹��
��
�����ǡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	#aw_�����ꥢ�ࡤ�Х���=true;

//���쥤��`�ؤͣ�������֦����
	CreateTextureEX("�}����200", 18000, Center, Middle, "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_b.jpg");

	Fade("�}����200", 500, 500, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������
��������ӵ�г�Խ����֪�����ˡ�

��������<RUBY text="��������">ͣ��ʱ��</RUBY>�Ķ�̬������
�Լ��ܹ��ϳ���������������������������ȵ�ʹ����
����ͼ汸�����������Ļ�����
��ħ���Ļ���ͻ�ʵ�廯��

�����֮���ͻữΪ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����L����ؑ���
	SetVolume("SE10", 2000, 300, null);
	CreateColorEXadd("�}ɫ100", 18500, "WHITE");
	Fade("�}ɫ100", 200, 1000, null, true);
	Delete("�}����100");
	Delete("�}����200");

	SetFwC("cg/fw/fw����֦_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���������������饡������������!!�����餤�θФ��ǡ�
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/042vs0010a03">
���ǣţţţţţţţ̣̣���������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�M
	CreateSE("SE01","se���L_����_��ͻ�M02");

	SetFrequency("SE10", 2000, 1300, null);
	FadeDelete("�}ɫ100", 500, false);

	CP_HighChange(500,437,Dxl2,false);
	CP_SpeedChange(500,595,Dxl2,false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("�}����50", 500, 1500, 1500, Dxl2, false);
	Zoom("�}��", 500, 300, 300, Dxl2, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���������۲���С��
��ʹ�����嵼�µ��������ģ�����ʹ��֪������
�ľ�ʹ�������ĸ����ܲ��ء�

���������侪�ˡ�
�����ۿ�������ʪ˫�յ���Ѫ��������ǴӴ���
���ѿ��е���ġ�

������ƽʱ��������һ��֮������������������
���С�
��
�������������ڲ�ͬ��

����ʲô���������޷���������֫��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������å����󤷤�һ�Ĥ��`��
	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateSE("SE02","se���L_�Ɖ�_�z04");
	CreateColorEXadd("�}ɫ100", 18500, "WHITE");

	OnSE("se����_���å��ԥå�_��å�����",1000);
	CP_LockOnFade(1,"on",true);
	Wait(200);
	CP_LockOnFade(1,"off",true);
	Wait(200);
	CP_LockOnFade(1,"on",true);
	Wait(200);
	CP_LockOnFade(1,"off",true);
	Wait(200);
	CP_LockOnFade(1,"on",true);


//	FadeDelete("�}ɫ100", 500, false);

	CP_HighChange(500,437,Dxl2,false);
	CP_SpeedChange(500,595,Dxl2,false);
	SetFrequency("SE10", 1000, 1450, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("�}����50", 500, 1650, 1650, Axl2, false);
	Fade("�}ɫ100", 500, 1000, Axl3, false);
	Zoom("�}��", 500, 1000, 1000, Axl2, true);

	CP_LockOnDelete();
	Delete("�}��");
	MusicStart("SE02",0,1000,0,1000,null,false);

	FadeDelete("�}ɫ100", 1000, false);

	Shake("�}����50", 500, 10, 10, 0, 0, 500, Dxl2, false);
	Zoom("�}����50", 1000, 1300, 1300, Dxl2, false);

//�����ߣ���ܞ����
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);

	OnSE("se���L_����_��ͻ�M03",1000);

	CreateTextureEX("�}����100", 1500, 0, 0, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Zoom("�}����100", 0, 1000, 1000, null, true);
	Move("�}����100", 0, @0, 0, null, true);

	CreateSurfaceEX("�}Suf",1000,2000,"�}����100");

//	CP_HighChange(1000,459,null,false);
//	CP_SpeedChange(1000,540,null,false);

	Fade("�}����100", 0, 1000, null, true);
	Fade("�}Suf", 500, 1000, null, false);
	Rotate("�}Suf", 2500, @0, @0, @-180, AxlDxl,false);
	Move("�}����100", 2500, @0, -5000, AxlDxl, false);
	Move("@�}����50", 500, @0, @-200, Axl2, false);

	CP_AziChange(2000,19,AxlDxl,false);
	CP_SpeedChange(1500,650,AxlDxl,false);
	CP_HighChange(1500,357,AxlDxl,false);

	CP_RollBarMove2(1500,180,AxlDxl,true);
	CP_RollBarMove("@�}����50",0,0,null,true);

	CP_SpeedChange(1500,517,AxlDxl,false);
	CP_HighChange(1500,567,AxlDxl,false);
	Wait(500);

	SetFrequency("SE10", 4000, 1100, null);
	Move("@�}����50", 0, -512, -588, null, true);
	Fade("�}Suf", 500, 0, null, false);
	Move("@�}����50", 500, -512, -458, Dxl2, true);
	Move("@�}����50", 500, -512, -488, AxlDxl, true);

	BGMoveAuto("@�}����50",1);

	Delete("�}����100");
	Delete("�}Suf");

	SetVolume("SE10", 3000, 300, null);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��û���㹻������׼����ͻ��ʱ�䡣
����������һ�ӣ�������ȥ��

����֪�����Ƿ���ȷ�ؿ�����ȥ��
��������ɵ��һ���ý���ƽ��������ȥҲ˵������

���������Ҳû��ϵ��
������������û��ϵ��

��ֻҪ���˵���У������������á�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ���ٶȥ�å����󤷤ƹ���
	CreateSE("SE02","se����_���å��ԥå�_��å�����");
	CreateTextureEX("�}��", 1590, center, middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	Request("�}��", Smoothing);
	Rotate("�}��", 0, @0, @0, @180, null,true);
	Zoom("�}��", 0, 50, 50, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@0,@500,null,true);
	SetBlur("�}��", true, 1, 200, 100, false);

	CreateSE("SE01","se���L_����_��ͻ�M02");

	Delete("�ϱ���");

	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE10", 2000, 1200, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake_Loop("@�}��","shake02");
	CP_LockOnFade(100,"on",false);
	CP_LockOnMove("@�}��",1000,@0,@-500,Dxl2,false);
	Fade("�}��", 500, 1000, null, false);
	Zoom("�}����50", 1000, 1500, 1500, AxlDxl, true);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateSE("SE02","se���L_�Ɖ�_�z03");
	CreateColorEXadd("�}ɫ100", 18500, "WHITE");



	SetFrequency("SE10", 1000, 1450, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("�}����50", 500, 1650, 1650, Axl2, false);
	Fade("�}ɫ100", 500, 1000, Axl3, false);
	Zoom("�}��", 500, 1000, 1000, Axl2, true);

	CP_LockOnDelete();
	Delete("�}��");
	MusicStart("SE02",0,1000,0,1000,null,false);

	FadeDelete("�}ɫ100", 1000, false);

	Shake("�}����50", 500, 10, 10, 0, 0, 500, Dxl2, false);
	Zoom("�}����50", 1000, 1300, 1300, Dxl2, false);

//�����ߣ���ܞ����
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);

	OnSE("se���L_����_��ͻ�M03",1000);

	CreateTextureEX("�}����100", 1500, 0, 0, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Zoom("�}����100", 0, 1000, 1000, null, true);
	Move("�}����100", 0, @0, 0, null, true);

	CreateSurfaceEX("�}Suf",1000,2000,"�}����100");

//	CP_HighChange(1000,-150,null,false);
//	CP_SpeedChange(1000,540,null,false);

	Fade("�}����100", 0, 1000, null, true);
	Fade("�}Suf", 500, 1000, null, false);
	Rotate("�}Suf", 2500, @0, @0, @180, AxlDxl,false);
	Move("�}����100", 3000, @0, -4600, AxlDxl, false);
	Move("@�}����50", 500, @0, @-200, Axl2, false);

	CP_SpeedChange(1500,610,AxlDxl,false);
	CP_HighChange(2000,417,AxlDxl,false);
	CP_AziChange(2000,-173,AxlDxl,false);

	CP_RollBarMove2(1500,-180,AxlDxl,true);
	CP_RollBarMove("@�}����50",0,0,null,true);

	CP_HighChange(2000,577,AxlDxl,false);
	CP_SpeedChange(2000,510,AxlDxl,false);
	Wait(500);

	SetFrequency("SE10", 4000, 1100, null);
	Move("@�}����50", 0, -512, -388, null, true);
	Fade("�}Suf", 500, 0, null, false);
	Move("@�}����50", 500, -512, -158, Dxl2, true);
	Move("@�}����50", 500, -512, -188, AxlDxl, true);

	BGMoveAuto("@�}����50",1);

	Delete("�}����100");
	Delete("�}Suf");

	SetVolume("SE10", 3000, 300, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������Ǹ���
��
��<RUBY text="����">����</RUBY>��

��������ʲô����
����������֦�Ѿ�֪����

�����ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("SE10", 500, 1, null);
	EfRecoIn1(19000,100);

	CreateTexture("����", 18000, Center, Middle, "cg/bg/bg064_���ӘS���ڵ�_02.jpg");
	SetTone("����", Sepia);

//	StL(18100, @0, @0, "cg/st/st����֦_ͨ��_˽��d.png");
	StR(18100, @0, @0, "cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
//	FadeStL(0, false);
	FadeStR(0, false);
	CreateColorEX("�Ϸ�100", 18500, "BLACK");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw�{�Ӻ�_Ц��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/042vs0020a06">
����ĸ�������˯�б���Ϯ��ɱ����
��ʲô����֪����ʲôҲû��ʶ�������Ǹ�������
  ������һ�㣬��ø�������ĵĿɱ���������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/042vs0030a03">
����������������


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/042vs0040a06">
����Ҳ����������ʭһ����ȥ�ɣ���


{	Fade("�Ϸ�100", 100, 1000, null, false);
	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/042vs0050a03">
��ʨ�Ӻ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х�����ġ���������Ѫ�wĭ
	CreateSE("SE01","se���L_�Х���_�ܩ`�������01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	CreateTextureSP("�}�݄���", 18600, Center, Middle, "cg/ef/ef038_�������.jpg");
	Rotate("�}�݄���", 0, @0, @180, @0, null,true);

	Wait(1000);

	CreateSE("SE99","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE99a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE99",0,1000,0,1000,null,false);
	MusicStart("SE99a",0,1000,0,1000,null,false);

	FadeDelete("�}�݄���", 0, true);
	CreateTextureSP("�}��Ѫ����", 18700, Center, Middle, "cg/anime/center/bloodA_3.png");

	Wait(1000);

//������
	EfRecoOut1(200);

	CreateColorSP("�}ɫ100", 18000, "BLACK");

	SetVolume("SE*", 1000, 0, null);
	DeleteStA(0,true);

	Delete("�}��Ѫ����");
	Delete("����");
	Delete("�Ϸ�100");
//	DeleteStCL(0,true);
//	DeleteStCR(0,true);
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����Ǹ�ɲ�ǣ������ˡ�
��<RUBY text="����������">�ø��װ�Ϣ</RUBY>��˲������ˡ�

��
���������������������������ߵĶ�����

���������ơ������𲻻������κζ�����
��
��Ӧ����������
����������Σ�

�����ܷ����ʲô���������ֵ��������������
���ߵĵ���
������������Ϊ<RUBY text="��������������������">���е��ܺ����Ѿ���ȥ</RUBY>��

���������ߵ�;���������ߵĵ�����Ѱ����
�����ܡ������ܡ�

�������ߵĲ���ֻ���������ߵĵ�����ʵ�в��������ġ�
��û����������

���������һծ���;����������

����һ�������߸��
��������𣿡������ܡ�

�������ɱ��ɱ���ߡ�
��������𣿡�����!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 1590, center, middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	Request("�}��", Smoothing);
	Rotate("�}��", 0, @0, @0, @160, null,true);
	Zoom("�}��", 0, 50, 50, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@0,@500,null,true);
	SetBlur("�}��", true, 1, 200, 100, false);

	CreateSE("SE01","se���L_����_��ͻ�M02");

	Delete("�ϱ���");

$��`�ץ�`�֥ʥå����� = "@�}��";
$��`�ץ�`�֥����ࣲ = 30000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");


	Request("�ץ�����", Start);

	SetVolume("SE10", 2000, 300, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE10", 2000, 1200, null);

	Shake_Loop("@�}��","shake02");
	CP_LockOnMove("@�}��",1000,@0,@-500,Dxl2,false);
	Fade("�}��", 500, 1000, null, false);
	FadeDelete("�}ɫ100", 500, false);
	Zoom("�}����50", 1000, 1500, 1500, AxlDxl, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0135]
������������˵�·��
��<RUBY text="��������������">Ϊ������Ŀ��ƽ</RUBY>��

����Ȼ�����ܲ����ܺ��ߵ�����
���Ǿ�ֻ�ж��߼Ӻ��ߵ�����ȡ�þ��⡣

����������ߵĵ���
����������ߵ�Ը����

������Ǹ���

���������ߵĺö��޹ء�
���Դ���ĸ�����ԣ������Ķ�����ȫ������ᡣ

���������������ߵĶ�����
����������ֻ֦�����ǽ�������ߵ�һ��������ˡ�

������˸������������ֻ����ˡ�
����⸴�����������֮��Թ�ߣ����
�˷���Ϊ�������Ӵ˷���Ϊ��

����������֦�����һ��ҫʹ����ִ�����塣
������ΪֻΪ���������ľż��

����������ʵ�и���

�����������ľż�е�ϲ�ã����ˣ���컹��
������������鶼���޼�ֵ��
���ǵġ�������û�м�ֵ��

��ֻ�л᲻�ṹ���谭�Ĳ����ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������å�����
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SE02","se����_���å��ԥå�_��å�����");

	MusicStart("SE02",0,1000,0,1000,null,false);
	CP_LockOnFade(100,"on",false);
	SetFrequency("SE10", 2000, 1300, null);
	FadeDelete("�}ɫ100", 500, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("�}����50", 500, 1600, 1600, Dxl2, false);
	Zoom("�}��", 500, 400, 400, Dxl2, true);


	SetVolume("@mbgm*", 300, 0, null);
	SetVolume("SE10", 300, 1, null);

//���ե�å���Хå�������֦�Ⱦ���
	EfRecoIn1(18500,100);

	CreateTexture("����", 18000, Center, Middle, "cg/ev/ev171_����֦�˹򤯾���.jpg");


	EfRecoIn2(300);

	Wait(1500);

	EfRecoOut1(100);

	Delete("����");
	EfRecoOut2(300,true);


	SetVolume("SE10", 1500, 300, null);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/042vs0060a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�����ԡ�
������������֦�����Ĳ���ɱ���ն������Ļ���

�������ߡ�ֻ��Ҫ��������
������������֦���ĺʹն�����һ��ɱ��!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ��
	CreateColorEXadd("�}ɫ100", 18500, "WHITE");
	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateSE("SE02","se���L_�Ɖ�_�z04");

	SetFrequency("SE10", 1000, 1450, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef039_�r�g�Ƅ�.jpg", false);
	Zoom("�}����50", 500, 1650, 1650, Axl2, false);
	Fade("�}ɫ100", 500, 1000, Axl3, false);
	Zoom("�}��", 500, 1000, 1000, Axl2, true);

	CP_LockOnDelete();
	Delete("�}��");
	MusicStart("SE02",0,1000,0,1000,null,false);


//�������`��
	CreateTextureEX("�}���k", 18150, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Zoom("�}���k", 0, 1100, 1100, null, true);

	CreateSE("SE01","se���L_�Ɖ�_�z03");
	CreateSE("SE02","se���L_�n��_�zܞ��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	EffectZoomDXadd(18500, 1000, 500, "#FFFFFF", "cg/ef/ef040_�����nͻ.jpg", false);
	Wait(150);
	FadeDelete("�}ɫ100", 1000, false);

	Shake("�}���k", 3500, 20, 20, 0, 0, 500, Dxl2, false);
	Zoom("�}���k", 3500, 1500, 1500, Dxl2, false);
	Fade("�}���k", 50, 1000, null, true);

	Wait(1000);

	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	Delete("�}��");
	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���ܥ�����������������������������!!��
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/042vs0070a03">
�����ɣɣɣ٣٣٣٣٣٣٣٣٣٣٣٣�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	ClearFadeAll(2000, true);
	CP_AllDelete();

	Wait(1000);

}

..//������ָ��
//�Υե����롡"mc04_043vs.nss"

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

function TurboBlur()
{

	while(1){
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 200, 2000, 2000, Axl2, false);
	Fade("$�����ʥå���", 50, 200, null, true);
	Fade("$�����ʥå���", 150, 0, null, true);
	Rotate("$�����ʥå���", 0, @0, @0, @180, null,true);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 200, 2000, 2000, Axl2, false);
	Fade("$�����ʥå���", 50, 300, null, true);
	Fade("$�����ʥå���", 150, 0, null, true);


	}

}

function TurboBlur2()
{

	while(1){
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 500, 1050, 1050, Dxl2, false);
	Fade("$�����ʥå���", 50, 1000, null, true);
	Fade("$�����ʥå���", 450, 0, null, true);

	Wait(500);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 200, 1020, 1020, Dxl2, false);
	Fade("$�����ʥå���", 50, 1000, null, true);
	Fade("$�����ʥå���", 150, 0, null, true);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 800, 1050, 1050, Dxl2, false);
	Fade("$�����ʥå���", 50, 1000, null, true);
	Fade("$�����ʥå���", 750, 0, null, true);

	Wait(800);
	Zoom("$�����ʥå���", 0, 1000, 1000, null, true);
	Zoom("$�����ʥå���", 500, 1050, 1050, Dxl2, false);
	Fade("$�����ʥå���", 50, 1000, null, true);
	Fade("$�����ʥå���", 450, 0, null, true);

	Wait(400);


	}

}

function RotateLoop()
{
	while(1){
	Rotate("$�����ʥå�����", 500, @0, @0, 10, AxlDxl,false);
	Rotate("$�����ʥå�����", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$�����ʥå�����", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$�����ʥå�����", 500, @0, @0, 0, AxlDxl,true);
	Rotate("$�����ʥå�����", 500, @0, @0, 5, AxlDxl,false);
	Rotate("$�����ʥå�����", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$�����ʥå�����", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$�����ʥå�����", 500, @0, @0, 0, AxlDxl,true);
	Rotate("$�����ʥå�����", 500, @0, @0, 5, AxlDxl,false);
	Rotate("$�����ʥå�����", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$�����ʥå�����", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$�����ʥå�����", 500, @0, @0, 0, AxlDxl,true);
	Rotate("$�����ʥå�����", 500, @0, @0, 5, AxlDxl,false);
	Rotate("$�����ʥå�����", 500, @0, @0, 5, AxlDxl,true);
	Rotate("$�����ʥå�����", 500, @0, @0, 0, AxlDxl,false);
	Rotate("$�����ʥå�����", 500, @0, @0, 0, AxlDxl,true);
	}
}