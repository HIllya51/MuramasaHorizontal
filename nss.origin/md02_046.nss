//<continuation number="330">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_046.nss_MAIN
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
	#bg022_ɽ��a_03=true;
	#bg051_�Զ��Ҿ��g_01=true;
	#ev005_�ؤ���줿��=true;
	#ev139_�y�򚢺�_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_047.nss";

}

scene md02_046.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_045.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�ۥ磻��", 5000, "WHITE");
	Fade("�ۥ磻��", 0, 1000, null, true);
	SoundPlay("@mbgm31", 0, 1000, true);

	OnBG(100, "bg022_ɽ��a_03.jpg");
	FadeBG(0, true);
	StR(1000, @-280, @0, "cg/st/st��_ͨ��_˽��.png");
	FadeStR(0, false);
	Delete("�ϱ���");
	FadeDelete("�ۥ磻��",1000,true);

	Wait(500);

	SetFwR("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md02/0460010a00">
������������

{	FwR("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460020a14">
������������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0460030a00">
������������������������

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460040a14">
�����ء�
�������ס���

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460050a14">
���ҵĸ���<RUBY text="������">������</RUBY>��!!��

//���⡿
<voice name="��" class="��" src="voice/md02/0460060a14">
�����븸�׵��ն����!!��

//���⡿
<voice name="��" class="��" src="voice/md02/0460070a14">
����������Լ��İ��ĸ�Դ���ж���!!��

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460080a14">
������Ҫ�������
��������Ҹ��׵���������
��ǿ���������ս������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������R
	OnSE("se���L_����_��ͻ�M01", 1000);
	StC(900, 120, -140, "cg/st/3d����Ů��ρ_ɿ��.png");
	Request("@StC*", Smoothing);
	Move("@StC*", 300, @0, -120, DxlAuto, false);
	Zoom("@StC*", 0, 0, 3000, null, false);
	Zoom("@StC*", 100, 900, 900, null, false);

	FadeStC(300, true);

	Wait(200);

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md02/0460090a00">
��������������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ��������

	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	DeleteStR(0,true);
	StC(1000, @0, @0,"cg/st/st��_װ��_˽��a.png");
	FadeStC(0,true);
	Fade("�}�ե�", 1000, 0, null, true);


	SetFwR("cg/fw/fw��_�_�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/md02/0460100a14">
������ն�����߱�𡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 2000);
	StC(1000, @0, @0,"cg/st/st��_װ��_˽��b.png");
	FadeStC(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwR("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/md02/0460110a14">
������֮�������ڴˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ�
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 25000, "#FFFFFF");

	Fade("�}�ե�", 0, 1000, null, true);
	DrawTransition("�}�ե�", 500, 0, 1000, 300, Axl2, "cg/data/slide_06_00_1.png", true);

	CreateTextureEX("�Ǥ���", 15000, @0, @0, "cg/st/resize/3d�y�Ǻ�_����_ͨ��l.png");
	Fade("�Ǥ���", 0, 1000, null, true);
	Move("�Ǥ���", 0, @-600, @-1000, null, false);
	CreateColorSP("�\", 5000, "BLACK");
//	Fade("�\", 1000, 1000, null, true);



	StC(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStC(0,true);
	FadeDelete("�}�ե�", 1000,false);
	Move("�Ǥ���", 3000, @-0, @600, Dxl2, true);

	WaitKey(1000);
	SetVolume("SE*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������֮��Ӱ�����ˡ�
��ħ���������Ǻš�

��������ת�����°͡�


��Ϊ�˴�������ɣ�ȥ���������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�Ǥ���", 1000, false);
	FadeDelete("�\", 1000, true);

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md02/0460120a00">
���ȵȣ�
����һ�ȡ�����

{	FwR("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460130a14">
��������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0460140a00">
��ֻҪ�ܵõ����ף���ͻ�ֹͣ
�ƻ���ɱ����!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ô��
����ô�����ҡ�

�����ۻ���ʲô��Լ�������������ϣ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���^ȥ�ե�å��塣���ҡ����򡢽y����
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg051_�Զ��Ҿ��g_01.jpg");
	CreateTextureSP("�}����200", 2100, 600, InBottom, "cg/st/st���L_ͨ��_�Ʒ�.png");
	CreateTextureSP("�}����300", 2200, 150, InBottom, "cg/st/st����_ͨ��_˽��.png");
	EfRecoIn2(300);
	WaitKey(1500);
	EfRecoIn1(18000,600);
	Delete("�}����*");
	CreateTextureSP("�}����400", 3000, Center, Middle, "cg/ev/ev005_�ؤ���줿��.jpg");
	EfRecoIn2(300);
	WaitKey(1500);
	EfRecoIn1(18000,600);
	Delete("�}����*");
	CreateTextureSP("�}����500", 3000, Center, Middle, "cg/ev/ev139_�y�򚢺�_a.jpg");
	EfRecoIn2(300);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��
������������������Լ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md02/0460150a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//����������

	Wait(1500);

	SetFwR("cg/fw/fw��_�_�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���⡿
<voice name="��" class="��" src="voice/md02/0460160a14">
����������

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460170a14">
����׷��ġ���
���Ǹ��׳�����Ϊ���ӣ����ϰ���Ĵ��ڣ�
���׿ڽл��ҵ����֡���

{	FwR("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460180a14">
����Ϊȡ������Ļ��Ʒ��
�����׽�����Ҳ��û�����塣
�������Ļ��������׵İ����Ծɱ�����
�������𣿡�

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0460190a00">
������������

{	SoundPlay("@mbgm37", 0, 1000, true);
	FwR("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460200a14">
�����Ҫ�������硣��

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460210a14">
��նɱ�������࣬�ٵ�һ�м�ֵ��
ֻ�����������¹�͸���!!
����ʱ�򸸰����޿ɻ��ɡ���<RUBY text="��������">��Ϊ����</RUBY>
<RUBY text="����������">ʲô��û��</RUBY>!!��

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md02/0460220a00">
���⣬��

{	FwR("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460230a14">
��������
���ҵļ��ˡ����ҵ��ֳ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����һ˲�䡣
����ɢ���ž��˵Ķ�־��Ŀ��ת���ؿ����ҡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_�_�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���⡿
<voice name="��" class="��" src="voice/md02/0460240a14">
��<RUBY text="��">���</RUBY>���ǹ����ĵ��ˡ�
�������ڰԵ����Խ���ˡ���

{	FwR("cg/fw/fw��_�֤�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460250a14">
�������׵İɡ�����
����ϣ�����������ģ��������ʱ�̣�
����һ��վ�ڹ����ǰ����

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md02/0460260a00">
������������

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460270a14">
���Ӷᡣ
��һ��Ҫ�Ӷᣡ��

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460280a14">
��ĸ�ף�
�����磡
���ֳ�����

//���⡿
<voice name="��" class="��" src="voice/md02/0460290a14">
���ƻ�һ���赲���
����һ�������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����߷����⵶һ�㡣
�����ҵ��ؿ����롭���ᴩ�������ġ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/md02/0460300a14">
��˭���޷���ֹ��
������������ֹ����

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0460310a14">
�����Ը������˭��������ֹ!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w������

/*
	OnSE("se���L_����_��ͻ�M01", 1000);
	DrawDelete("@StC*", 150, 100, "slide_02_01_0", false);

	WaitKey(300);


	CreateColorSP("�}�\", 1, "#CC0000");
	CreateColorSP("�}�\", 8500, "#000000");
	DrawTransition("�}�\", 200, 0, 1000, 500, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("�y��GO", 100, -328, 0, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02tll.jpg");
	Request("�y��GO", Smoothing);
	SetBlur("�y��GO", true, 3, 500, 50, false);
	Zoom("�y��GO", 0, 2000, 2000, null, true);
	DrawDelete("�}�\", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("�y��GO", 600, @0, -1980, DxlAuto, false);
	Zoom("�y��GO", 600, 1000, 1000, null, false);
	Wait(600);
	CreateSE("SE04","se���L_����_���ϕN01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("�y��GO", 8000, @0, -780, DxlAuto, false);

*/


	CreateSE("SE01a","se����_�z_װ��03");
	CreateSE("SE01b","se���L_�Ɖ�_���k09");
	CreateSE("SE01c","se���L_����_��ͻ�M03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");

	CreateTextureSP("�}�ݴ���", 17000, 310, -1500, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02tll.jpg");
	Request("�}�ݴ���", Smoothing);
	Zoom("�}�ݴ���", 0, 2000, 2000, null, true);
	SetBlur("�}�ݴ���", true, 4, 500, 70, false);

$��`�ץ�`�֥ʥå��� = "@�}�ݴ���";
$��`�ץ�`�֥����� = 200;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����", Start);

	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Request("�}������", SubRender);
	Move("�}������", 0, -356, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @-20, @0, @-5, null,true);
	Fade("�}������", 0, 150, null, true);

	Shake("�}�ݴ���", 10000000, 1, 0, 0, 0, 1000, null, false);

	Fade("�}������", 2000, 0, null, false);
	FadeDelete("�}ɫ��", 1000, false);
	Zoom("�}�ݴ���", 700, 1700, 1700, Dxl2, true);


	Delete("�ץ�����");

	Zoom("�}�ݴ���", 1600, 1000, 1000, Dxl2, false);
	BezierMove("�}�ݴ���", 1600, (@0,@0){-240,-800}{-340,-900}(0,-1100){-150,-700}{-200,-600}(-200,-700){-220,-800}{-240,-810}(-254,-892), null, true);

	Delete("�}������");
	DeleteStA(0,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����ɫ�Ĺ켣������ա�
��������ȷʵ���޷���ס�Ķ�����

���޷���ֹ��<RUBY text="������">�ٶ�</RUBY>��
���޷���ֹ��<RUBY text="�������">����</RUBY>��

���������ַ���

��������ա�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}�ݴ���", 1000, 0, null, true);
	Delete("�}�ݴ���");

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md02/0460320a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�������ˡ�

�����÷������½�������
�����ÿ�ʼ���»Ὺʼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md02/0460330a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���ҡ���
�����ں��棬���ǵ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ΤΥե������ð�^���鿼����Ȥ�����ClearFade����˼�����������Ƥ��ޤ� inc�Ѿ�
	ClearFadeAll(1500,true);

}

..//������ָ��
//�Υե����롡"md02_047.nss"