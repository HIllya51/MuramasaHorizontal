//<continuation number="420">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_011.nss_MAIN
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
	#bg002_��a_01=true;
	#ev172_�����å��`���ᥤ�ե饤Mk4C��_a=true;
	#bg084_�w�д�Ş��_01=true;
	#bg204_�����ر���_01=true;
	#ev950_ϥ��ؓĚ���=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_012.nss";

}

scene md04_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_010.nss"


//����
//���׵���ϥ�裩��Ļ܊�o�T��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg002_��a_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");

//	CreatePlainEX("�}��д", 100);
	CreateTextureSP("�}��д", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");
//	Fade("�}��д", 0, 1000, null, true);
	Zoom("�}��д", 0, 2000, 2500, null, true);
	Move("�}��д", 50000, @-200, @200, null, false);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 2000, 1000, 0, 1000, null,true);

	CreateTextureSP("ϥ��", 1000, -350, -300, "cg/st/3dϥ��_�T��_�i��.png");
	CreateTextureSP("����", 950, @100, @-400, "cg/st/3d����ʽ�o�T��_�T��_���La.png");
	CreateTextureSP("����02", 900, @150, @-200, "cg/st/3d����ʽ�o�T��_�T��_���La.png");

//	Shake("@ϥ��", 50000, 1, 1, 0, 0, 1000, null, false);
	Shake("@����02", 1000000, 0, 1, 0, 0, 1000, null, false);

	Rotate("����", 0, @0, @0, @-20, null, true);
	Rotate("����02", 0, @0, @0, @-20, null, true);
	Rotate("ϥ��", 0, @0, @0, @0, null, true);
	Request("ϥ��", Smoothing);
	Request("����*", Smoothing);

	Zoom("����", 0, 500, 500, null, true);
	Zoom("����02", 0, 200, 200, null, true);

//	SetBlur("ϥ��", true, 1, 300, 150, false);
//	SetBlur("����", true, 1, 300, 300, false);



$��`�ץ�`�֥ʥå��� = "@ϥ��";
$��`�ץ�`�֥����� = 20000;

$��`�ץ�`�֥ʥå����� = "@����";
$��`�ץ�`�֥����ࣲ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@1200,@-600,null,true);

	FadeDelete("�\Ļ��",1500,true);

	Wait(500);
	SoundPlay("@mbgm13", 0, 1000, true);


	SetFwC("cg/fw/fw�׵�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0110010a08">
��������΢�仯�ˣ���

{	NwC("cg/fw/nwС��܊�o�T����.png");}
//������㣯С���o������
<voice name="����㣯С���o����" class="����������" src="voice/md04/0110020e127">
��ܥԽ������������ƺ����䵽�������ˡ�
�����Ƿ�����ս���𣿡�

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0110030a08">
������ԭ����ˡ�
�����жϵ��ǲ�����

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0110040a08">
�������������������
���������װɣ���

{	NwC("cg/fw/nwС��܊�o�T����.png");}
//������㣯С���o������
<voice name="����㣯С���o����" class="����������" src="voice/md04/0110050e127">
���ǵ�!!
�����κ��˶���ǿ�������׵�����!!��

{	NwC("cg/fw/nwС��܊�o�T����.png");}
//������㣯С���o���¡�
<voice name="����㣯С���o����" class="����������" src="voice/md04/0110060e128">
������Ը��׷����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ��
	Request("�ץ�����", Stop);
	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	Delete("�ץ�����");

/*
	Move("ϥ��", 300, @-50, @100, null, true);


	OnSE("se���L_����_��ͻ�M01", 1000);
	Move("ϥ��", 300, @400, @-1000, null, true);

	Move("����", 300, @-50, @100, null, false);
	Move("����02", 400, @-50, @100, null, true);

	Move("����", 300, @400, @-1000, null, false);
	Move("����02", 400, @400, @-1000, null, true);

*/

	OnSE("se���L_����_��ͻ�M01", 1000);
	OnSE("se���L_����_��ͻ�M02", 1000);
	SetVolume("ͣ��", 1000, 0, null);

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	CloudZoomDelete(0,true);

	Wait(1000);

//�������w��Ş��ev172
	PrintBG("�ϱ���", 30000);
	OnBG(103, "bg084_�w�д�Ş��_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("xxx", 5000, @0, @0, "cg/ev/ev172_�����å��`���ᥤ�ե饤Mk4C��_a.jpg");

	CreateColorSP("�\Ļ��", 6000, "BLACK");
	Delete("�ϱ���");

	DrawDelete("�\Ļ��", 500, 100, "slide_04_01_1", true);

	Wait(1500);

//��Ş��
	FadeDelete("xxx",1000,true);


//�������

	SetNwH("cg/fw/nyŞ�L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110070e231">
��������
���Ҿ���������ѹ���Եģ���

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110080e231">
������һ�ߵ���ս�����޷������ġ�
���ҿɲ������Լ��İ���������ڵ���ǿ��
�ֿɺ޵�<RUBY text="�ǣ����������">����Ҫ��</RUBY>�ĳ��а�������

{	NwH("cg/fw/ny���L.png");}
//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110090e232">
��������������Щ�߶ȱȽϺá�
����������Ľ�սȦ̫���ˡ���

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110100e231">
��������ô����
�������޵������������ͻ���Ҿ��Ĳ���
��������������

//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110110e231">
�����������ơ���

{	NwH("cg/fw/ny���L.png");}
//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110120e232">
��������
��Ҳ��һ���ֵ��Ｏ���ڼ��ҵط�������

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110130e231">
������Ŷ��
����������Ȥ����

//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110140e231">
��������Щʲô�˰ɡ�
��ǰ������

{	NwH("cg/fw/ny���L.png");}
//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110150e232">
����������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��Şǰ�M����
//���ӽ������׵���ֱ�l�

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);



	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@1200,@-600,null,true);


	OnBG(100, "bg002_��a_01.jpg");
	FadeBG(0, true);

	CreatePlainEX("�}��д", 100);
	Fade("�}��д", 0, 1000, null, true);
	Zoom("�}��д", 0, 2000, 2000, null, true);
	Move("�}��д", 2000, @-200, @200, null, false);

	CreateTextureSP("ϥ��", 1000, @-1000, @0, "cg/st/3dϥ��_�T��_�i��.png");
	Rotate("ϥ��", 0, @0, @0, @0, null, true);
	Zoom("ϥ��", 0, 500, 500, null, true);

	CreateTextureSP("����", 900, @-1000, @-300, "cg/st/3d����ʽ�o�T��_�T��_���La.png");
	Rotate("����", 0, @0, @0, @-10, null, true);
	Zoom("����", 0, 400, 400, null, true);

	CreateTextureSP("����02", 850, @-1000, @0, "cg/st/3d����ʽ�o�T��_�T��_���La.png");
	Rotate("����02", 0, @0, @0, @-10, null, true);
	Zoom("����02", 0, 300, 300, null, true);

	CreateTextureSP("����03", 800, @-1100, @-200, "cg/st/3d����ʽ�o�T��_�T��_���La.png");
	Rotate("����03", 0, @0, @0, @-10, null, true);
	Zoom("����03", 0, 300, 300, null, true);

	Request("ϥ��", Smoothing);
	Request("����*", Smoothing);
	SetBlur("����*", true, 1, 500, 70, false);
	SetBlur("ϥ��", true, 1, 500, 70, false);



	CreateTextureEX("��Ş", 1500, @0, @0, "cg/bg/bg084_�w�д�Ş��_01.jpg");

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	OnSE("se���L_����_��ͻ�M03", 1000);
	Wait(100);
	Move("ϥ��", 250, @1800, @-500, null, false);
	Wait(200);
	Move("����", 300, @1700, @-500, null, false);

	Wait(100);
	OnSE("se���L_����_��ͻ�M03", 1000);
	Move("����02", 350, @1700, @-500, null, false);
	Wait(200);
	Move("����03", 400, @1700, @-500, null, false);

	Wait(500);


	Fade("��Ş", 500, 1000, null, true);
	CloudZoomDelete(0,true);

	Delete("�\Ļ��");



	SetNwH("cg/fw/ny���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110160e232">
��Ŷ����������ˣ���

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110170e231">
����ͷ�����ʿ����
������������𣿡�

//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110180e231">
��ι��������Աȥʶ��һ�¡���

{	NwH("cg/fw/ny���L.png");}
//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110190e232">
��������������������Ǻ��ˡ�����

{	NwH("cg/fw/ny��󵣵�.png");}
//������㣯�w��Ş���
<voice name="����㣯�w��Ş���" class="������Ů��" src="voice/md04/0110200e230">
����������ˡ�
����������!?��

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110210e231">
����ô�ˣ���

{	NwH("cg/fw/ny��󵣵�.png");}
//������㣯�w��Ş���
<voice name="����㣯�w��Ş���" class="������Ů��" src="voice/md04/0110220e230">
���ǡ��ǽ��׵��н���
�������ġ���

//������㣯�w��Ş���
<voice name="����㣯�w��Ş���" class="������Ů��" src="voice/md04/0110230e230">
�����������Ľ���֮һ!!��

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110240e231">
������������

//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110250e231">
��ŶŶŶ��������

{	NwH("cg/fw/ny���L.png");}
//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110260e232">
�����������ˡ�����

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110270e231">
����������ǰ�ߣ�
������������¸ҡ��������������޽�����

//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110280e231">
����ѽ�������л������
����֮���õ�ս���Լ��������ˣ���

{	NwH("cg/fw/ny���L.png");}
//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110290e232">
��̫Σ���ˣ�
�����׵�����������ǿ������!!��

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110300e231">
��������ǿ�����޵У�һ��������չ����ޡ�
�����������ߣ����⼸���𣡡�

//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110310e231">
�����������ں���֮ǰ����������ô����
�������м�����ǽ����ִ����Ŷ����������
��������һ����Ӯ����

{	NwH("cg/fw/ny���L.png");}
//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110320e232">
�����ǡ�����

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110330e231">
��������������
��ȫ����������

//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110340e231">
����Ź���ô���ս��!!��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���w��Ş����o�T��꠳���
//��ʮ�T����
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("������ɥ�*");
	Delete("������*");
	Delete("�\��");

	Delete("��Ş");
	DeleteStC(0,true);


	OnBG(100, "bg002_��a_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1200,@600,null,true);





	CreateTextureSP("������01", 1100, @600, @-800, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	CreateTextureSP("������02", 1200, @700, @-800, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	CreateTextureSP("������03", 1000, @700, @-800, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	Zoom("������01", 0, 800, 800, null, true);
	Zoom("������02", 0, 600, 600, null, true);
	Zoom("������03", 0, 450, 450, null, true);
	Rotate("������*", 0, @0, @0, @-50, null,true);
//	SetBlur("������0*", true, 1, 500, 50, false);

	Move("�}����100", 5000, @200, @-100, null, false);

	OnSE("se���L_����_��ͻ�M03", 1000);
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");

	Move("������01", 250, @-2500, @1700, null, true);
	Move("������01", 0, 1200, -1600, null, true);
	Zoom("������01", 0, 700, 700, null, true);

	Move("������02", 250, @-2500, @1700, null, true);
	Move("������02", 0, 1200, -1200, null, true);
	Zoom("������02", 0, 800, 800, null, true);

	Move("������03", 250, @-2500, @1700, null, true);
	Move("������03", 0, 1200, -1400, null, true);
	Zoom("������03", 0, 1200, 1200, null, true);

	Move("������01", 250, @-2500, @1700, null, true);
	Move("������01", 0, 1200, -1300, null, true);
	Zoom("������01", 0, 900, 900, null, true);

	Move("������02", 250, @-2500, @1700, null, true);
	Move("������02", 0, 1200, -1100, null, true);
	Zoom("������02", 0, 1500, 1500, null, true);

	Move("������03", 250, @-2500, @1700, null, true);
	Move("������03", 0, 1200, -1000, null, true);
	Zoom("������03", 0, 700, 700, null, true);

	Move("������01", 250, @-2500, @1700, null, true);
	Move("������01", 0, 1200, -900, null, true);
	Zoom("������01", 0, 1000, 1000, null, true);

	Move("������02", 250, @-2500, @1700, null, true);
	Move("������02", 0, 1200, -1000, null, true);
	Zoom("������02", 0, 800, 800, null, true);

	Move("������03", 250, @-2500, @1700, null, true);
	Move("������03", 0, 1200, -1100, null, true);
	Zoom("������03", 0, 900, 900, null, true);

	Move("������01", 250, @-2500, @1700, null, true);
	Move("������01", 0, 1200, -1000, null, true);
	Zoom("������01", 0, 1200, 1200, null, true);

	Move("������02", 250, @-2500, @1700, null, true);
	Move("������02", 0, 1200, -800, null, true);
	Zoom("������02", 0, 800, 800, null, true);

	Move("������03", 250, @-2500, @1700, null, true);
	Move("������03", 0, 1200, -900, null, true);
	Zoom("������03", 0, 1000, 1000, null, true);






	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_04_00_1.png", true);


	OnBG(100, "bg002_��a_01.jpg");
	FadeBG(0, true);


	CreatePlainEX("�}��д", 100);
	Fade("�}��д", 0, 1000, null, true);
	Zoom("�}��д", 0, 2000, 2000, null, true);
	Move("�}��д", 100000, @-200, @200, null, false);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 0, 1000, 0, 1000, null,true);



	CreateTextureSP("ϥ��", 1000, @-542, @132, "cg/st/resize/3dϥ��_�T��_�i��l.png");
	Zoom("ϥ��", 0, 2000, 2000, null, true);

	Rotate("ϥ��", 0, @0, @0, @0, null, true);
	Request("ϥ��", Smoothing);
	SetBlur("ϥ��", true, 1, 500, 100, false);
	Delete("�}��д");
	Delete("����*");
//	Shake("ϥ��", 50000, 2, 1, 0, 0, 500, null, false);
	CloudZoomVertex(0,@2400,@-800,null,true);

	Shake_Loop("@ϥ��","supershake01");
	Move("ϥ��", 700, -142, -132, Dxl2, false);
	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_04_01_0.png", true);
	FadeDelete("�\Ļ��", 0,true);



//���׵�



	SetFwC("cg/fw/fw�׵�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0110350a08">
��������粻Ϸ��������ʱ��
�����δ�֮ɽ������ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���׵����^Ѹ
//�������`�ݤ����פ굹������M�v܊��



	OnSE("se���L_����_��ͻ�M01", 1000);

	Move("ϥ��", 500, @2400, @-1000, Axl2, false);

	CreateColorSPadd("�}�ե�", 6000, "#FFFFFF");
	CreateColorEXadd("�}�ץ���å���", 6000, "#FFFFFF");
	DrawDelete("�}�ե�", 800, 1000, "slide_07_00_0", true);
	SetVolume("ͣ��", 1000, 0, null);

	CreateColorSP("�\Ļ��", 5000, "#FFFFFF");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_04_00_0.png", true);

	CreateTextureSP("�L��", 110, @-300, @-800, "cg/bg/bg204_�����ر���_01.jpg");
	Zoom("�L��", 0, 2000, 2000, null, true);
	Rotate("�L��", 0, @0, @0, @-20, null, true);
	Delete("ϥ��");

	CreateCamera("����飱", Center, Middle, 1000);
	SetAlias("����飱","����飱");

	CreateTextureSP("����飱/������01", 200, @800, @-800, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureSP("����飱/������02", 300, @800, @-800, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureSP("����飱/������03", 250, @800, @-800, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureSP("����飱/������04", 200, @800, @-800, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureSP("����飱/������05", 100, @800, @-800, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureSP("����飱/������06", 150, @800, @-800, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureSP("����飱/������07", 250, @800, @-800, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureSP("����飱/������08", 300, @800, @-800, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureSP("����飱/������09", 100, @800, @-800, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureSP("����飱/������10", 150, @800, @-800, "cg/st/3d��`�����`���`_�T��_���L.png");

	CreateTextureSP("����飱/ϥ��", 250, @-600, @0, "cg/st/resize/3dϥ��_�T��_���Ll.png");
	SetBlur("����飱/ϥ��", true, 1, 500, 70, false);

	CreateTextureEXadd("����飱/���ե�����", 250, center, middle, "cg/ef/ef044_��c.png");
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);

	Rotate("����飱/ϥ��", 0, @0, @0, @0, null, true);
	Request("����飱/ϥ��", Smoothing);

	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 200, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @0, @0, @50, null,true);
	Fade("�}������", 0, 100, null, true);
	Request("�}������", AddRender);

	CreateSE("SE01","se���L_����_���B��02");

	Shake_Loop("@����飱/ϥ��","supershake01");

	MoveCamera("@����飱", 1500, 100, 50, @20, AxlDxl, false);
	DrawTransition("�\Ļ��", 150, 1000, 0, 100, null, "cg/data/slide_04_01_1.png", false);
	Move("�L��", 5000, @-1000, @100, null, false);
	Zoom("����飱/ϥ��", 600, 1500, 1500, AxlDxl, false);
	Move("����飱/ϥ��", 500, @500, @-600, AxlDxl, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);


	OnSE("se���L_����_�z��������", 1000);

	Zoom("����飱/ϥ��", 700, 1000, 1000, AxlDxl, false);
	Move("����飱/ϥ��", 200, @0, @-100, AxlDxl, false);
	Move("����飱/������01", 300, @-1500, @1500, null, true);
	Delete("����飱/������01");
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);

	OnSE("se���L_����_�z��������02", 1000);

	Zoom("����飱/ϥ��", 700, 1200, 1200, AxlDxl, false);
	Move("����飱/ϥ��", 200, @200, @100, AxlDxl, false);
	Move("����飱/������02", 300, @-1500, @1500, null, true);
	Delete("����飱/������02");
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);

	OnSE("se���L_����_�z��������03", 1000);

	MoveCamera("@����飱", 1000, -100, 20, @-40, AxlDxl, false);
	Zoom("����飱/ϥ��", 700, 500, 500, AxlDxl, false);
	Move("����飱/ϥ��", 200, @-100, @-100, AxlDxl, false);
	Move("����飱/������03", 300, @-1500, @1500, null, true);
	Delete("����飱/������03");
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);

	OnSE("se���L_����_�z��������02", 1000);

	Zoom("����飱/ϥ��", 700, 700, 700, AxlDxl, false);
	Move("����飱/ϥ��", 200, @-100, @100, AxlDxl, false);
	Move("����飱/������04", 300, @-1500, @1500, null, true);
	Delete("����飱/������04");
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);

	OnSE("se���L_����_�z��������", 1000);

	MoveCamera("@����飱", 1000, 30, -60, 900, AxlDxl, false);
	Zoom("����飱/ϥ��", 700, 1500, 1500, AxlDxl, false);
	Move("����飱/ϥ��", 200, @200, @-100, AxlDxl, false);
	Move("����飱/������05", 300, @-1500, @1500, null, true);
	Delete("����飱/������05");
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);

	OnSE("se���L_����_�z��������03", 1000);

	Zoom("����飱/ϥ��", 700, 1100, 1100, AxlDxl, false);
	Move("����飱/ϥ��", 200, @-300, @100, AxlDxl, false);
	Move("����飱/������06", 300, @-1500, @1500, null, true);
	Delete("����飱/������06");
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);

	OnSE("se���L_����_�z��������", 1000);

	MoveCamera("@����飱", 1000, -60, 30, 700, AxlDxl, false);
	Zoom("����飱/ϥ��", 700, 900, 900, AxlDxl, false);
	Move("����飱/ϥ��", 200, @200, @-100, AxlDxl, false);
	Move("����飱/������07", 300, @-1500, @1500, null, true);
	Delete("����飱/������07");
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);

	OnSE("se���L_����_�z��������02", 1000);

	Zoom("����飱/ϥ��", 700, 600, 600, AxlDxl, false);
	Move("����飱/ϥ��", 200, @-250, @100, AxlDxl, false);
	Move("����飱/������08", 300, @-1500, @1500, null, true);
	Delete("����飱/������08");
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);

	OnSE("se���L_����_�z��������", 1000);

	MoveCamera("@����飱", 1500, 150, -100, 800, AxlDxl, false);
	Zoom("����飱/ϥ��", 700, 1300, 1300, AxlDxl, false);
	Move("����飱/ϥ��", 200, @300, @-100, AxlDxl, false);
	Move("����飱/������09", 300, @-1500, @1500, null, true);
	Delete("����飱/������09");
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);

	OnSE("se���L_����_�z��������03", 1000);

	Zoom("����飱/ϥ��", 700, 1000, 1000, AxlDxl, false);
	Move("����飱/ϥ��", 200, @1000, @-300, AxlDxl, false);
	Move("����飱/������10", 300, @-1500, @1500, null, true);
	Delete("����飱/������10");
	Rotate("����飱/���ե�����", 0, @0, @0, @309, null,true);
	Zoom("����飱/���ե�����", 0, 3000, 300, null, true);
	Zoom("����飱/���ե�����", 0, 4000, 500, null, true);
	Fade("����飱/���ե�����", 0, 1000, null, true);
	Fade("�}�ץ���å���", 0, 800, null, true);
	Fade("�}�ץ���å���", 200, 0, null, false);
	Fade("����飱/���ե�����", 300, 0, Axl2, false);

	Move("����飱/ϥ��", 1500, @-1000, @400, AxlDxl, true);


	Delete("�\Ļ��");


	SetFwC("cg/fw/fw�׵�_ͨ��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0110360a08">
����á�����ɢһ�ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se���L_����_�����04", 1000);

	WaitKey(500);

//���ܩ`�󡣔���Ⱥ�졢ɢ�A
	OnSE("se���L_����_��ͻ�M01", 1000);
	Move("����飱/ϥ��", 300, @1500, @-400, AxlAuto, true);
	Delete("����飱/ϥ��");

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("�Ф���", 17000, "#990000");
	CreateColorSPadd("�Ф���", 16000, "#ffffcc");
	CreateColorSPadd("�Ф���", 15000, "#FFFFFF");
	DrawTransition("�Ф���", 0, 1000, 200, 800, null, "cg/data/circle_11_01_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 400, 500, null, "cg/data/circle_11_01_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 600, 100, null, "cg/data/circle_11_01_0.png", true);
	FadeDelete("�Ф�*", 1500, true);


//���w��Ş

	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_04_00_1.png", true);

	OnBG(100, "bg084_�w�д�Ş��_01.jpg");
	FadeBG(0, true);
	Delete("�L��");
	Delete("�}ɫ����å���");
	Delete("�����*");
	Delete("�}������");
	SetVolume("@OnSE*", 1000, 0, null);
	CloudZoomDelete(0,true);

	DrawTransition("�\Ļ��", 400, 1000, 0, 100, null, "cg/data/slide_04_01_0.png", true);
	FadeDelete("�\Ļ��", 0,true);

	SetNwH("cg/fw/nyŞ�L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110370e231">
������ʲ������

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110380e231">
��������ô�������£���

{	NwH("cg/fw/ny���L.png");}
//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110390e232">
���������ˡ���
�������������ˣ���

{	NwH("cg/fw/nyŞ�L.png");}
//������㣯�w��Ş�L��
<voice name="����㣯�w��Ş�L" class="����������" src="voice/md04/0110400e231">
������������

{	NwH("cg/fw/ny���L.png");}
//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110410e232">
��ι��
��������������취������

//������㣯�w��Ş���L��
<voice name="����㣯�w��Ş���L" class="����������" src="voice/md04/0110420e232">
������Ϊ��̫���Ż��ɡ�����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���׵����w��Ş��һ�ġ����ȩ`�äݤ�
	CreateTextureEX("�}����100", 100, Center, -576, "cg/ev/ev950_ϥ��ؓĚ���.jpg");
	CreateTextureEXadd("�}����200", 200, Center, 0, "cg/ev/ev950_ϥ��ؓĚ���.jpg");
//	SL_down(@0, @0,1200);
//	SL_downfade(10);

	OnSE("se���L_����_Ұ̫�����01", 1000);


	Fade("�}����100", 300, 1000, null, false);
	Move("�}����100", 600, @0, 0, Axl3, true);


	CreatePlainEX("�}��д", 100);

	OnSE("se���L_�n��_�zܞ��02", 1000);
	OnSE("se���L_����_�z_���04", 1000);
	Zoom("�}����200", 1300, 1300, 1300, Dxl1, false);
	Fade("�}����200", 0, 1000, null, false);
	Fade("�}��д", 0, 1000, null, true);

	Shake("�}��д", 500, 3, 30, 0, 0, 1000, Dxl2, false);

	Wait(1000);

	DrawTransition("�\Ļ��", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	FadeDelete("�\Ļ��", 1500,true);


//���ܩ`�󡣱��k

	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);

	Delete("�}��д");
	Delete("�}����*");

	OnSE("se���L_�Ɖ�_�󱬰k01", 1000);
	CreateTextureEX("���k", 5000, @0, @0, "cg/ef/ef022_��������ɢ�A.jpg");
	Fade("���k", 1000, 1000, null, true);

	CreatePlainEX("�}��д", 15000);
	Fade("�}��д", 0, 1000, null, true);

	Shake("�}��д", 1000000, 2, 3, 0, 0, 1000, DxlAuto, false);

	Zoom("�}��д", 4000, 1500, 1500, Dxl2, false);

	DrawTransition("�\Ļ��", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	FadeDelete("�\Ļ��", 1500,true);


//	Delete("�}��д");
	
	SetVolume("SE*", 3000, 0, null);
	SetVolume("OnSE*", 3000, 0, null);
	ClearWaitAll(2000, 2000);



}

..//������ָ��
//�Υե����롡"md04_012.nss"