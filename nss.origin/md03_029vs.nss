//<continuation number="550">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_029vs.nss_MAIN
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
	#bg056_���L�����Tǰ_03=true;
	#bg001_��a_03=true;
	#ev005_�ؤ���줿��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_001.nss";

}

scene md03_029vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md03_028vs.nss"


//���衩��ȴ���


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	OnBG(100, "bg056_���L�����Tǰ_03.jpg");
	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	StR(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�b.png");
	FadeStL(0, false);
	FadeStR(0, false);
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 500, true);


	SetFwC("cg/fw/fw�衩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/029vs0010a07">
��������������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/029vs0020a07">
����������������

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/029vs0030a01">
�������ղŵġ����ѵ��ǡ�����

//��������
<voice name="����" class="��������" src="voice/md03/029vs0040a01">
���ڽ�֮��������ʱ��ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ϥ��

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	DeleteStA(0, true);
	CreateTextureSP("����", 1000, @0, @0, "cg/bg/bg001_��a_03.jpg");
	CreateTextureEX("�}�ӣԣ�200", 1500, -360, -290, "cg/st/3dϥ��_�T��_�i��.png");
	Fade("�}�ӣԣ�200", 0, 1000, null, true);
	Shake("�}�ӣԣ�200", 2160000, 0, 1, 0, 0, 1000, null, false);

$��`�ץ�`�֥ʥå��� = "@�}�ӣԣ�200";
$��`�ץ�`�֥����� = 30000;

	CreateProcess("�ץ���", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ���","�ץ���");

	Request("�ץ���", Start);

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1000,@0,null,false);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);

	SetFwC("cg/fw/fw�׵�_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/029vs0050a08">
����������ʲô���ﰡ������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/029vs0060a08">
������裬��������Ǹ�ʲô������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������


	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�ץ���");
	CloudZoomDelete(0,true);
	Delete("����");
	Delete("�}�ӣԣ�200");
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��ȷ����Χ��״����
������������ʤ���Ѷ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md03/029vs0070a00">
������裬����ŷ�������
����Ը�����������㡣��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/029vs0080a07">
���������š�����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0090a00">
������ʲô���񣿡�

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0100a00">
���µ������ʲô��
����ʲô�þ��ȵġ�����

//��������
<voice name="����" class="����" src="voice/md03/029vs0110a00">
���ҿ���<RUBY text="������������">�ն����ʦ��</RUBY>������

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/029vs0120a07">
���ǡ����ǡ�������
����������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������С�����Ŀ��������������ҡ��Ҳ���
������������߽�������
�����߸�ԭ�úܿ졣

�������ָ�֮ǰ����������һ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);


//�����L

	CreateSE("SE01","se����_����_һ�i");
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(500);
	StC(1000, @0, @0, "cg/st/st���L_���L_�Ʒ�.png");
	FadeStC(500, true);

	Wait(500);

	SetFwL("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md03/029vs0130a00">
�������𳤡���

{	FwL("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0140a11">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm14", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������������ǰ��
���ֳ�̫���������Ǻ�����װ�Ͻ���ʱ�����ġ�

���Ӳ����Ͽ���һ�ۿ�������������˿����ѷ�ڽ���
���������ߡ�
�������ò��ſ�����˵�ն����ʦ���Ǵն���������
�ն�������ʦ����������

���ճ���Ң��
������������ֻ��ĳ��ʱ�����Գƴն���Ң��

���ҵ�������
���ն�ͳ֮��

�����һ��ǣ�
���ն���<RUBY text="������������">������ĸ���</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0150a11">
���ڶ����ˡ���

{	FwL("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0160a00">
����������

{	FwL("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0170a11">
�����ǡ�����������

{	FwL("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0180a00">
��Ŷ��������
���㿴��һ���˰�����

//��������
<voice name="����" class="����" src="voice/md03/029vs0190a00">
���Ǹ�ʱ�򡣡�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ե�å��塣��줿��

	EfRecoIn1(18000,300);
	CreateTextureSP("�}����100", 1500, @0, @0, "cg/ev/ev005_�ؤ���줿��.jpg");
	EfRecoIn2(100);
	WaitKey(1500);

	EfRecoOut1(100);
	Delete("�}����100");
	EfRecoOut2(300,true);

	SetFwL("cg/fw/fw���L_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0200a11">
������������

{	FwL("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0210a11">
����ʱ������������ҡ�
���ǹ���,�µ�������޷�����ˡ�����

{	FwL("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0220a11">
��������Ρ����Ҳ��뿴��������Ի١���

{	FwL("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0230a00">
��������

{	FwL("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0240a11">
�����ܴ����ľ������ɣ�������
���ص�ԭ����������

{	FwL("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0250a00">
��ԭ����������

{	FwL("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0260a11">
��������

{	FwL("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0270a00">
��������֪����ζ��ʲô��˵����仰����
���𳤡�����

{	FwL("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0280a00">
���ճ���Ң����

{	FwL("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0290a11">
����������������

{	FwL("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0300a00">
������˭ȥ����!?��

//��������
<voice name="����" class="����" src="voice/md03/029vs0310a00">
���������������
��ͳ�����Ѿ������ˡ�����

{	FwL("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0320a00">
�����㣡
����������˹⣡��

{	FwL("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0330a11">
������������

{	FwL("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0340a00">
���������Ҳ���˵�ǲ��á�
�������㰮���ֱ�ǳ���˵�Ρ���

//��������
<voice name="����" class="����" src="voice/md03/029vs0350a00">
���Ҳ�������㡣
���Ҳ����㣬�㰮ȥ�ı�ȥ�ġ���

{	FwL("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0360a00">
�����ǡ�����Ҫ������!!��

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�Y�֡������ã����⣿
//	OnSE("se����_����_�᤺����01",1000);
//	CreateTextureEX("�ޤ�", 2000, @0, @0, "cg/ef/ef003_�����Ƅ�.jpg");
//	Fade("�ޤ�", 200, 1000, null, false);
//	Zoom("�ޤ�", 200, 1500, 1500, null, false);


	OnSE("se���L_����_�����01",1000);

	CreateColorSP("�\Ļ��", 2001, "BLACK");
	CreateColorEXadd("��Ļ", 2500, "WHITE");
//	Fade("�\Ļ��", 0, 1000, null, false);


	Fade("��Ļ", 100, 1000, null, true);
	OnSE("se���L_����_��ꪏ���01",1000);
	CreateTextureSPadd("�}��1", 2002, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
//	DrawTransition("�}��1", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", false);
	CreateTextureSPadd("�}��2", 2003, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
//	DrawTransition("�}��2", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", true);
	OnSE("se���L_����_���nͻ02",1000);
	CreateTextureSPadd("�ҤФ�", 10000, @0, @0, "cg/ef/ef044_��a.jpg");
	DeleteStA(0, true);
	Fade("�\Ļ��", 0, 1000, null, true);
	FadeDelete("��Ļ", 500, false);
	Fade("�ҤФ�", 1000, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��ȫ�����µ�̫����ͬ�ȵ�������������
����������л��֣�����ɢ��΢�������ۡ�

����������ʮ���ཻ���Һ������ֲ��¡�
��
�����Ǽ�Ұ������ս�񷨡�������֮�Ρ�

���������ƴ�������������õ������Ͳ��ȣ��û�
ն����
�������������ˣ���һ����׷����ѹ����ն����
��ϰ�ź���Ч��

������˲�俴�����ֵĽ��ˣ����Ӧ֮��ʤ�Ľ�����
���ҡ�����Ȼ��Ҳ�ǣ�����һ��ʮ�־�ͨ��

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	Delete("�ޤ�");
	SetFwL("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md03/029vs0370a00">
���Ҳ��������⡣��

{	FwL("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0380a11">
��������

{	FwL("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0390a00">
��ֻ���Ұ��⣡
������ԭ���谭�ߣ���

//��������
<voice name="����" class="����" src="voice/md03/029vs0400a00">
��������˭!!��

{	FwL("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0410a11">
��������������

{	FwL("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0420a11">
���ǡ������ǰ�������

{	FwL("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0430a00">
������������

{	FwL("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0440a11">
�������䡣
�����������Լ�����

{	FwL("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/029vs0450a00">
������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����꤮�ꡣ��Ȥ�Ϥ�
//���o�ȡ������ء�
//�������`�󤺤���`���o�T����һ�T����ꑡ�


//	Request("�}��1", Smoothing);
//	Request("�}��2", Smoothing);

//	SetBlur("�}��1", true, 2, 500, 50, false);
//	SetBlur("�}��2", true, 2, 500, 50, false);



	SetShade("�}��1", SEMIHEAVY);
	SetShade("�}��2", SEMIHEAVY);

	Shake("�}��1", 1000, 1, 2, 0, 0, 400, Axl1, false);
	Shake("�}��2", 1000, 2, 1, 0, 0, 600, Dxl3, false);
	Zoom("�}��2", 0, 1020, 1020, null, false);
	Zoom("�}��1", 0, 1050, 1050, null, false);

	Rotate("�}��2", 1000, @1, @-2, @5, null, false);
	Rotate("�}��1", 1000, @-1, @3, @-15, null, false);
	CreateTextureSPadd("�ҤФ�", 10000, @0, @0, "cg/ef/ef044_��a.jpg");

	OnSE("se���L_����_��ꪏ���03",1000);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 20, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);

	SetVolume("@mbgm*", 1000, 0, null);

	Fade("�ҤФ�", 500, 0, null, false);
	Fade("�}��*", 500, 0, null, false);
	Fade("�\Ļ��", 500, 0, null, false);
//	WaitKey(500);
	OnSE("se���L_����_��ͻ�M04",1000);

	WaitKey(1500);

	OnSE("se���L_����_�z_�ŵ�01",1000);

//	WaitKey(1150);
	Wait(500);



	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md03/029vs0460a00">
��!!��

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/029vs0470a11">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�ҤФ�");
	Delete("�}��*");
	Delete("�\Ļ��");

	CreateColorEXadd("�}ɫ100", 1500, "WHITE");

	CreateSE("SE01","se����_����_һ�i");
	OnSE("se���L_����_���nͻ01",1000);

	Fade("�}ɫ100", 0, 1000, null, true);

	Fade("�}ɫ100", 1000, 0, null, true);


/*
	Fade("�\Ļ��", 0, 1000, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�}��*", 0, 1000, null, true);
	SetBlur("�}��1", true, 2, 500, 50, false);
	SetBlur("�}��2", true, 2, 500, 50, false);
	Move("�}��1", 100, @-300, @-300, null, false);
	Move("�}��2", 100, @300, @300, null, false);
	Rotate("�}��1", 100, @0, @20, @-60, Axl3, false);
	Rotate("�}��2", 100, @0, @-20, @60, Axl3, false);
	MusicStart("SE01",0,1000,0,700,null,false);
	Fade("�ҤФ�", 1000, 0, null, false);
	FadeDelete("�\Ļ*", 1000, false);
	FadeDelete("�}��*", 500, false);
*/

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ͻ�������ľ��죬���Һ���һ�������ˡ�
��
����ô��������䣿

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������_�o�T��
	SoundPlay("@mbgm34",0,1000,true);

	StR(1000, @100, @0, "cg/st/3d����ʽ�o�T��_����_ͨ��.png");
	OnSE("se����_�z_�l����01", 1000);
	Move("@StR*", 300, @-100, @0, Dxl2, false);
	FadeStR(300, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���������������
���������������

���ղŵ��ƺ�����½��������
������Ǽ�æ�ɹ����ģ������ƽ������������̡�

�����ǣ�Ϊʲô��
����Ԯ������������治��Ҫ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetNwC("cg/fw/nw�o�T��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������㣯����o����
<voice name="����㣯����o��" class="����������" src="voice/md03/029vs0480e225">
�����£�
��С���н�����!!��ܥԽ�н�����!!��

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/029vs0490a07">
����ѽ��������ô���������ֲ����ܡ�
���侲һ�£�����������ɡ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/029vs0500a08">
������ʲô���ˣ���

{	NwC("cg/fw/nw�o�T��.png");}
//������㣯����o����
<voice name="����㣯����o��" class="����������" src="voice/md03/029vs0510e225">
������������������ص������֣���

{	NwC("cg/fw/nw�o�T��.png");}
//������㣯����o����
<voice name="����㣯����o��" class="����������" src="voice/md03/029vs0520e225">
����פ������
������ӽ���ͻ������ģ��ľ����߹�����
��!!��

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/029vs0530a08">
����������������

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/029vs0540a07">
��ʲ������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/029vs0550a07">
��ʲô����������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���åѩ`����
//�����åȥ���ݤ���
	ClearWaitAll(3000, 1000);

	PrintBG("�ϱ���", 10000);
	cut_in_logo(10010,3);

	ClearWaitAll(3000, 2000);

/*
	ClearWaitAll(2000, 2000);

	CreateSE("SE01","se���L_����_���nͻ01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}����", 1000, Center, Middle, "cg/sys/Telop/lg_����.jpg");
	CreateColorSP("�}ɫ�\��", 100, "#000000");

	Wait(100);

	FadeDelete("�}ɫ��", 1000, true);

	WaitKey(2000);

	ClearWaitAll(3000, 3000);
*/

//������������������������������������������������

}

..//������ָ��
//�Υե����롡"md04_001.nss"