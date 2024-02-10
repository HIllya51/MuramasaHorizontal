//<continuation number="350">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_009.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_009.nss","SetKenkiEX",true);
	Conquest("nss/md05_009.nss","SetKenki",true);
	Conquest("nss/md05_009.nss","FadeKenki",true);
	Conquest("nss/md05_009.nss","GoKenki",true);
	

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
	#bg202_�����ݳ�����ɽa_02=true;
	#bg002_��a_02=true;
	#bg202_�����ݳ�����ɽ_02=true;
	#ev001_�y�Ǻ��¼�����`����=true;
	#ev228_���y��܊��_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_010vs.nss";

}

scene md05_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_008vs.nss"


//�����ڤȥХ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 15000, "BLACK");

	SoundPlay("@msong04_inst",0,1000,true);

	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, true);

//	Move("@OnBG*", 0, @0, @-2600, null, true);

	FadeDelete("�ϱ���", 1000, true);


//	StC(1000, @0, @300, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
//	FadeStC(0, true);



//	StCL(1100, @0, @0, "cg/st/3d�Х���_����_�i��.png");
//	FadeStCL(0, false);
//	StR(1000, @0, @0, "cg/st/3d����_����_�i��.png");
//	FadeStR(0, true);


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,null,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");



	CreateTextureEX("����飱/������01a", 500, @200, @-200, "cg/st/3d����_�T��_ͨ��.png");
	CreateTextureEX("����飱/������02a", 350, @400, @-0, "cg/st/3d�Х���_�T��_ͨ��.png");

	Fade("����飱/������01a", 0, 1000, null, false);
	Fade("����飱/������02a", 0, 1000, null, false);

	Zoom("����飱/������01*", 0, 600, 600, null, false);
	Zoom("����飱/������02*", 0, 500, 500, null, false);

	Move("����飱/������01*", 0, 41, -158, null, true);
	Move("����飱/������02*", 0, -268, 0, null, true);

	Request("����飱/������0*", Smoothing);

	OnSE("se���L_����_��ͻ�M03", 1000);
	OnSE("se���L_����_��ͻ�M06", 1000);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 0, 700, 0, 1000, null,true);


$��`�ץ�`�֥ʥå��� = "@����飱/������01*";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@����飱/������02*";
$��`�ץ�`�֥����ࣲ = 20000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	MoveCamera("@����飱", 0, 500, 50, @0, null, true);


	DrawTransition("�\", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	MoveCamera("@����飱", 1500, 100, 200, @300, Dxl1, true);
	Delete("�\");

	SetBlur("����飱/������01a", true, 1, 500, 100, false);


//	Zoom("@StC*", 1000, 100, 100, AxlAuto, false);
//	Move("@StC*", 1000, @200, @-200, null, false);

//	DeleteStC(1000,true);




	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/0090010a03">
�������鷳���˰�����

{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/0090020a02">
���ն�����������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/0090030a03">
������ѡ������ɵĻ�ͺ��ˡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/0090040a02">
���������ܰɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����TȺ
	SetBlur("����飱/������0*", false, 1, 500, 100, false);

	MoveCamera("@����飱", 300, 1500, 50, @0, null, false);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	CloudZoomVertex(0,@-2048,@-100,null,true);


	DeleteStA(0,true);

//	Delete("�����*");
//	Request("�ץ���*", Stop);
//	Delete("�ץ���*");

//	OnBG(100, "bg002_��a_02.jpg");
//	FadeBG(0, true);



	CreateTextureSP("�˄�01", 3000, @1200, @-200, "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureSP("�˄�02", 2500, @1100, @-300, "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureSP("�˄�03", 2000, @1050, @-450, "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureSP("�˄�04", 1500, @1150, @-150, "cg/st/3d�˄���_�T��_ͨ��.png");
	Rotate("�˄�*", 0, @0, @180, @0, null,true);

	Zoom("�˄�02", 0, 500, 500, null, true);
	Zoom("�˄�03", 0, 300, 300, null, true);
	Zoom("�˄�04", 0, 250, 250, null, true);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("�\Ļ��");

	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�01", 300, @-900, @0, Dxl2, true);




	SetFwC("cg/fw/fwè��צ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���˄����ġ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090050c03">
���ܵ��ˣ��ܵ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�02", 300, @-1250, @0, Dxl2, true);

	SetFwC("cg/fw/fwβ��y����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0021]
//���˄����š�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090060c04">
�����������ӣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�03", 150, @-1000, @0, Dxl2, true);


	SetFwC("cg/fw/fw���������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0022]
//���˄����ơ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090070c05">
��ȥ׷����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�04", 150, @-1400, @0, Dxl2, true);

	SetFwC("cg/fw/fw����h�����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0023]
//���˄����ǡ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090080c06">
��ץס������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("�˄�*");

	StR(1000, @-1100, @300, "cg/st/3d����_�T��_���La.png");
	FadeStR(0, true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	OnSE("se���L_����_��ͻ�M01", 1000);


	Move("@StR*", 300, @1900, @0, null, false);

*/

	Move("�˄�01", 300, @1600, @0, Axl2, false);
	Move("�˄�02", 300, @1300, @0, Axl2, false);
	Move("�˄�03", 300, @1100, @0, Axl2, false);
	Move("�˄�04", 300, @1000, @0, Axl2, false);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CloudZoomVertex(0,@2048,@0,null,true);

	MoveCamera("@����飱", 300, 100, 200, @0, Dxl1, true);
	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");
	Delete("�˄�*");

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0024]
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/0090090a02">
�������ˡ�
����Ķ��֣����ҡ���

{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/0090100a02">
��һ�ﶼ����ͨ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CloudZoomDelete(200,false);

	OnSE("se���L_����_��ͻ�M03",1000);

	MoveCamera("@����飱", 300, -1000, 200, @0, Axl1, true);

	OnSE("se���L_����_��ͻ�M02",1000);

	SetVolume("ͣ��", 2000, 0, null);
	Request("�ץ���*", Stop);
	Delete("@����飱*");
	Delete("�ץ���*");

	SetFwC("cg/fw/fw���򌧤����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0025]
//���˄�������
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090110c00">
��������·����


{	FwC("cg/fw/fw�פι�_ͨ��.png");}
//���˄����¡�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090120c01">
����·����


{	FwC("cg/fw/fw�Ǥν�_ͨ��.png");}
//���˄����á�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090130c02">
����ô�죿��


{	FwC("cg/fw/fwè��צ_ͨ��.png");}
//���˄����ġ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090140c03">
����ô������


{	FwC("cg/fw/fwβ��y����_ͨ��.png");}
//���˄����š�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090150c04">
������������


{	FwC("cg/fw/fw���������_ͨ��.png");}
//���˄����ơ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090160c05">
���š���


{	FwC("cg/fw/fw����h�����_ͨ��.png");}
//���˄����ǡ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090170c06">
������ô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇊���


	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
	DeleteStC(0,true);
	CloudZoomDelete(0,false);

	OnBG(100, "bg002_��a_02.jpg");

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,null,true);


	FadeBG(0, true);
	CreateTextureSP("��", 110, @0, @0, "cg/bg/resize/bg001_��a_02.jpg");


	LoadImage("���إ���`��", "cg/bg/bg204_�����ر���_02.jpg");
	SetAlias("���إ���`��", "���إ���`��");
	LoadImage("��������`����", "cg/bg/resize/bg002_��a_02.jpg");
	SetAlias("��������`����", "��������`����");
	LoadImage("��������`����", "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	SetAlias("��������`����", "��������`����");

	LoadImage("����`����", "cg/st/3d�˄���_�T��_ͨ��.png");
	SetAlias("����`����", "����`����");
	LoadImage("����`����", "cg/st/3d�˄���_�T��_ͨ��2.png");
	SetAlias("����`����", "����`����");
	LoadImage("����`����", "cg/st/3d�˄���_�T��_ͨ��3.png");
	SetAlias("����`����", "����`����");



	CreateTextureEX("������", 1000, 0, Middle, "���إ���`��");
	CreateTextureEX("������", 1000, 0, Middle, "���إ���`��");
	//SetVertex("������", Center, 200);
	//SetVertex("������", Center, 200);
	Zoom("������", 0, 3000, 3000, Dxl2, true);
	Zoom("������", 0, 3000, 3000, Dxl2, true);
	SetKenkiEX();
	SetKenki("��");
	SetKenki("��");
	MoveFTP1stop();
	MoveFTP2stop();
	MoveFTP3stop();

/*
	CreateTextureSP("�˄�", 2000, @-900, @-250, "cg/st/3d�˄���_�T��_ͨ��.png");
	Request("�˄�", Smoothing);
	Zoom("�˄�", 0, 1500, 1500, null, false);

	Shake("�˄�", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);
*/
	Rotate("���C*", 0, @0, @180, @0, null,true);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("�\Ļ��");

//	Move("�˄�", 1000, @900, @50, Dxl2, false);
	OnSE("se���L_����_��ͻ�M08",1000);
	FadeKenki("��");


	SetFwR("cg/fw/fw���򌧤����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0033]
//���˄�������
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090180c00">
���ս����ǣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
	CreateColorSPadd("�\Ļ��", 25000, "WHITE");
	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�", 100, @1900, @0, null, false);


	DrawDelete("�\Ļ��", 300, 100, "slide_05_00_1", true);


//�􄇊���

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", true);

	Delete("�˄�");


	CreateTextureSP("�˄�", 2000, @500, @-450, "cg/st/3d�˄���_�T��_ͨ��.png");
	Request("�˄�", Smoothing);

	Rotate("�˄�", 0, @-30, @, @180, null, true);
	Zoom("�˄�", 0, 1500, 1500, null, false);

	Shake("�˄�", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/beam_02_00_1.png", true);
	Delete("�\Ļ��");

	Move("�˄�", 1000, @-250, @450, Dxl2, false);

*/

	SetKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	GoKenki("��");
	FadeKenki("��");


	SetFwL("cg/fw/fw�פι�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���˄����¡�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090190c01">
���ᴩ���ǣ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
/*
	CreateColorSPadd("�\Ļ��", 25000, "WHITE");
	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�", 100, @1900, @500, null, false);


	DrawDelete("�\Ļ��", 300, 100, "slide_07_00_1", true);

//�􄇊���

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/beam_04_00_0.png", true);

	Delete("�˄�");


	CreateTextureSP("�˄�", 2000, @900, @250, "cg/st/3d�˄���_�T��_ͨ��.png");
	Request("�˄�", Smoothing);

	Rotate("�˄�", 0, @0, @0, @270, null, true);
	Zoom("�˄�", 0, 1500, 1500, null, false);

	Shake("�˄�", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/beam_04_00_1.png", true);
	Delete("�\Ļ��");

	Move("�˄�", 1000, @-700, @-350, Dxl2, false);
*/

//�􄇊���
	SetKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	GoKenki("��");
	FadeKenki("��");

	SetFwL("cg/fw/fw�Ǥν�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���˄����á�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090200c02">
��˺�����ǣ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
	CreateColorSPadd("�\Ļ��", 25000, "WHITE");
	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�", 100, @1900, @0, null, false);


	DrawDelete("�\Ļ��", 300, 100, "slide_08_00_1", true);

//�􄇊���

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/crow_02_00_0.png", true);

	Delete("�˄�");


	CreateTextureSP("�˄�", 2000, @-900, @-450, "cg/st/3d�˄���_�T��_ͨ��.png");
	Request("�˄�", Smoothing);

	Rotate("�˄�", 0, @0, @0, @50, null, true);
	Zoom("�˄�", 0, 1500, 1500, null, false);

	Shake("�˄�", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/crow_02_00_1.png", true);
	Delete("�\Ļ��");

	Move("�˄�", 1000, @500, @150, Dxl2, false);

*/

//�􄇊���
	SetKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	GoKenki("��");
	FadeKenki("��");

	SetFwR("cg/fw/fwè��צ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���˄����ġ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090210c03">
���������ǣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
	CreateColorSPadd("�\Ļ��", 25000, "WHITE");
	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�", 100, @1900, @0, null, false);


	DrawDelete("�\Ļ��", 300, 100, "slide_08_00_1", true);

//�􄇊���

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�˄�");


	CreateTextureSP("�˄�", 2000, @0, @-800, "cg/st/3d�˄���_�T��_ͨ��.png");
	Request("�˄�", Smoothing);

	Zoom("�˄�", 0, 1500, 1500, null, false);
	Rotate("�˄�", 0, @0, @0, @90, null, true);

	Shake("�˄�", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	Move("�˄�", 1000, @0, @450, Dxl2, false);


*/

//�􄇊���
	SetKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	GoKenki("��");
	FadeKenki("��");

	SetFwC("cg/fw/fwβ��y����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���˄����š�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090220c04">
��������ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
	CreateColorSPadd("�\Ļ��", 25000, "WHITE");
	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�", 100, @0, @5000, null, false);


	DrawDelete("�\Ļ��", 300, 100, "slide_06_00_1", true);

//�􄇊���

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�˄�");


	CreateTextureSP("�˄�", 2000, @0, @700, "cg/st/3d�˄���_�T��_ͨ��.png");
	Request("�˄�", Smoothing);

	Zoom("�˄�", 0, 1500, 1500, null, false);
	Rotate("�˄�", 0, @0, @0, @-90, null, true);


	Shake("�˄�", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	Move("�˄�", 1000, @0, @-800, Dxl2, false);

*/

//�􄇊���
	SetKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	GoKenki("��");
	FadeKenki("��");

	SetFwC("cg/fw/fw���������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���˄����ơ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090230c05">
���������ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
	CreateColorSPadd("�\Ļ��", 25000, "WHITE");
	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�", 100, @0, @-5000, null, false);


	DrawDelete("�\Ļ��", 300, 100, "slide_06_00_1", true);

//�􄇊���

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�˄�");


	CreateTextureSP("�˄�", 2000, @-900, @300, "cg/st/3d�˄���_�T��_ͨ��.png");
	Request("�˄�", Smoothing);


	Zoom("�˄�", 0, 1500, 1500, null, false);
	Rotate("�˄�", 0, @0, @0, @-60, null, true);


	Shake("�˄�", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	Move("�˄�", 1000, @700, @-450, Dxl2, false);


*/

//�􄇊���
	GoKenki("��");
	OnSE("se���L_����_��ͻ�M02",1000);
	FadeKenki("��");

	SetFwR("cg/fw/fw����h�����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���˄����ǡ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090240c06">
���������ǣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
	CreateColorSPadd("�\Ļ��", 25000, "WHITE");
	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("�˄�", 100, @5000, @-5000, null, false);


	DrawDelete("�\Ļ��", 300, 100, "slide_07_00_1", true);


	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("�˄�");





	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");


*/

/*
//�􄇊���
	OnSE("se����_��x_�k��04", 1000);

	CreateTextureSPover("���������", 1200, @0, @0, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	DrawTransition("���������", 3000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);

	CreateTextureEX("�˄�EX", 1300, Center, InBottom, "cg/st/resize/3d���羀_����_ͨ��_ex.png");
	Move("�˄�EX", 0, @0, @1200, null, true);
	Move("�˄�EX", 5000, @0, @-500, DxlAuto, false);
	Fade("�˄�EX", 5000, 1000, null, false);

*/

	CreateTextureEX("�ϱ���", 1000, 0, 0, "cg/bg/bg001_��a_02.jpg");

	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M03",1000);

	Move("���C��", 800, @-2000, @0, Axl1, false);
	Move("���C��", 700, @-2000, @0, Axl1, false);
	Move("���C��", 600, @-2000, @0, Axl1, false);
	Move("���C��", 500, @-2000, @0, Axl1, false);
	Move("���C��", 400, @-2000, @0, Axl1, false);
	Move("���C��", 300, @-2000, @0, Axl1, false);
	Move("���C��", 200, @-2000, @0, Axl1, false);

	Fade("�ϱ���", 1000, 1000, null, true);
	SCR1stop();

	MoveFRP1stop();
	MoveFRP2stop();
	MoveFRP3stop();
	MoveFRP4stop();
	MoveFRP5stop();
	MoveFRP6stop();
	MoveFRP7stop();

//�􄇊���
	CreateTextureSP("������", 2000, Center, 0, "��������`����");

	CreateTextureSP("���C��", 2000, -100, 700, "cg/st/resize/3d���羀_����_ͨ��_ex.png");
	Zoom("���C��", 0, 300, 300, Dxl2, true);
	CreateTextureSP("���C��", 2000, 0, -100, "����`����");
	Zoom("���C��", 0, 100, 100, Dxl2, true);
	CreateTextureSP("���C��", 2000, -100, -100, "����`����");
	Zoom("���C��", 0, 300, 300, Dxl2, true);
	CreateTextureSP("���C��", 2000, 50, -100, "����`����");
	Zoom("���C��", 0, 600, 600, Dxl2, true);
	CreateTextureSP("���C��", 2000, -150, -100, "����`����");
	Zoom("���C��", 0, 1000, 1000, Dxl2, true);

	CreateSE("������ɣ�","se���L_����_��ͻ�M01");
	CreateSE("������ɣ�","se���L_����_��ͻ�M01");
	CreateSE("������ɣ�","se���L_����_��ͻ�M01");
	CreateSE("������ɣ�","se���L_����_��ͻ�M01");

	Delete("�ϱ���");
//	WaitKey();

	CloudZoomDelete(500,false);
	SetVolume("������ɣ�", 0, 800, NULL);
	Move("������", 700, @0, @-1000, Dxl1, false);

	Zoom("���C��", 700, 2000, 2000, Axl1, false);
	Zoom("���C��", 700, 2000, 2000, Axl1, false);
	Zoom("���C��", 700, 2000, 2000, Axl1, false);
	Zoom("���C��", 700, 2000, 2000, Axl1, false);

	MusicStart("������ɣ�",0,1000,0,1000,null,false);
	Move("���C��", 150, @-2000, @-300, Axl1, false);
	Wait(150);
	MusicStart("������ɣ�",0,1000,0,1000,null,false);
	Move("���C��", 150, @2000, @-400, Axl1, false);
	Wait(150);
	Zoom("���C��", 500, 300, 300, Dxl2, false);
	MusicStart("������ɣ�",0,1000,0,1000,null,false);
	Move("���C��", 500, -221, -444, Dxl2, false);
	Move("���C��", 150, @-1600, @-500, Axl1, false);
	Wait(150);
	MusicStart("������ɣ�",0,1000,0,1000,null,false);
	Move("���C��", 150, @1600, @-600, Axl1, false);
//	WaitKey();
	Wait(350);

	CreateSE("������ɣ�","se���L_����_��ͻ�M01");
	SetVolume("������ɣ�", 1000, 0, NULL);
	MusicStart("������ɣ�",0,1000,0,1000,null,false);

	Move("������", 300, @0, -100, Dxl2, false);
	Move("���C��", 300, -221, -144, Dxl2, false);
	Zoom("������", 300, 1500, 1500, Dxl2, false);
	Zoom("���C��", 300, 1000, 1000, Dxl2, true);


	SetFwR("cg/fw/fw���羀_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���˄����ȡ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090250c07">
�����Ҳþ������Ҷ��ᡣ
��վ���������ķֽ�㡣��

//���˄����ȡ�
<voice name="�˄�����" class="������Ů��" src="voice/md05/0090260c07">
���˼�Ϊ�ս�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T���Y
/*
	CreateColorSP("��Ļ��", 25000, "WHITE");
	DrawTransition("��Ļ��", 100, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);
	Delete("���������");
	Delete("��OnBG*");
	Delete("��������");
	DeleteStC(0,true);

	CreateTextureSP("�˄���", 15000, @0, @0, "cg/ev/ev228_���y��܊��_c.jpg");


	DrawTransition("��Ļ��", 300, 1000, 0, 100, null, "cg/data/circle_02_00_1.png", true);
	Delete("��Ļ��");
*/

	CreateTextureEX("���٥�ȣ�", 2000, 0, 0, "cg/ev/resize/evex001_�˄���ͻ��.jpg");
	SetVertex("���٥�ȣ�", 512, 50);
	Zoom("���٥�ȣ�", 0, 3000, 3000, Dxl2, true);
	SetBlur("���٥�ȣ�", true, 2, 500, 100, false);

	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);


	Fade("���٥�ȣ�", 500, 1000, null, false);
	Zoom("���٥�ȣ�", 1000, 1000, 1000, Dxl2, true);

	Delete("���C��");
	Delete("���C��");
	Delete("���C��");
	Delete("���C��");
	Delete("���C��");
	Delete("������");

/*
//�ʂ�
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, false);
	Move("���C��", 0, @-3000, @0, Axl1, true);

	Move("������", 0, 0, @0, Axl1, true);
	Move("������", 0, 0, @0, Axl1, true);

	CreateColorEX("ɫ��", 10000, "#FFFFFF");
	Request("ɫ��", AddRender);

	CreateTextureEX("������", 1000, 0, 0, "cg/bg/bg002_��a_02.jpg");
	SetVertex("������", 1000, 200);
	CreateTextureEX("�ԙC��", 1000, 0, 0, "cg/st/3d������K_�Tͻ_ͨ��.png");
	Zoom("�ԙC��", 0, 100, 100, Dxl2, true);
	SetBlur("�ԙC��", true, 1, 500, 50, false);

	LoadImage("���C����`����", "cg/st/resize/3d�˄���_�T��_ͨ��3_l.png");
	SetAlias("���C����`����", "���C����`����");

	CreateTextureEX("���C��", 2000, -575, 500, "���C����`����");
	CreateTextureEX("���C��", 2000, -775, 600, "���C����`����");
	CreateTextureEX("���C��", 2000, -275, 700, "���C����`����");
	Rotate("���C��", 0, @0, @180, @0, null, true);

	SetBlur("���C��", true, 1, 500, 50, false);


*/


	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/0090270a03">
����������˵�⻰�����е�̫�١�
��Ī������ʵ���ǳ�ǿ�ģ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/0090280a02">
���ر�������Ǹ���
���ܾ����Ǽһ���ڽ�֮�����������Ǻ�һ��
��������Ҫ��ǿ���������ָо�����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/0090290a03">
������ô���ء���

{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/0090300a02">
��������ô�ࡣ
���������⡣��

{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/0090310a02">
���������ڽ�����<RUBY text="����">����</RUBY>������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/0090320a03">
��̫���ˡ�
���������ĸо������־�Ĳ�
��Ȼ�����˱����ô�ɿ�ô����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/0090330a02">
������������
���µĻ��ͻ�ȥ����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md05/0090340a03">
������ġ�
���Ұ������㺦�µ�ʧ��
Ҳ������ζ������ս������

{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/0090350a02">
����������в��ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1500, 0, null);
	SetVolume("ͣ��", 1500, 0, null);

	SetVolume("@m*", 3000, 0, null);

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md05_010vs.nss"


function SetKenkiEX()
{
	CreateTextureSP("���C��", 1000, -34, -122, "����`����");
	Move("���C��", 0, @-500, @1000, Dxl1, true);
	MoveFRP1("@���C��",20000,3,3);
	CreateTextureSP("���C��", 1000, -196, -440, "����`����");
	Move("���C��", 0, @-500, @1000, Dxl1, false);
	MoveFRP2("@���C��",20000,4,4);
	CreateTextureSP("���C��", 1000, -213, -267, "����`����");
	Move("���C��", 0, @-1500, @0, Dxl1, false);
	MoveFRP3("@���C��",20000,6,6);
	CreateTextureSP("���C��", 1000, -182, -37, "����`����");
	Move("���C��", 0, @-1000, @-500, Dxl1, false);
	MoveFRP4("@���C��",20000,8,8);
	CreateTextureSP("���C��", 1000, -152, -384, "����`����");
	Move("���C��", 0, @-1100, @500, Dxl1, false);
	MoveFRP5("@���C��",20000,10,10);
	CreateTextureSP("���C��", 1000, -229, -61, "����`����");
	Move("���C��", 0, @-1000, @-1000, Dxl1, false);
	MoveFRP6("@���C��",20000,12,12);
	CreateTextureSP("���C��", 1000, -455, -245, "����`����");
	Move("���C��", 0, @-1000, @600, Dxl1, false);
	MoveFRP7("@���C��",20000,15,15);
	$KenkiOff=true;
}

function SetKenki($���C)
{
	if(!$KenkiOff){
		if($���C=="��"){
			CreateTextureSP("���C��", 1000, -34, -122, "����`����");
			Move("���C��", 0, @-500, @1000, Dxl1, true);
			MoveFRP1("@���C��",20000,3,3);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, -196, -440, "����`����");
			Move("���C��", 0, @-500, @1000, Dxl1, false);
			MoveFRP2("@���C��",20000,4,4);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, 213, -267, "����`����");
			Move("���C��", 0, @-1500, @0, Dxl1, false);
			MoveFRP3("@���C��",20000,6,6);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, 182, -37, "����`����");
			Move("���C��", 0, @-1000, @-500, Dxl1, false);
			MoveFRP4("@���C��",20000,8,8);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, 152, -384, "����`����");
			Move("���C��", 0, @-1100, @500, Dxl1, false);
			MoveFRP5("@���C��",20000,10,10);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, -229, -61, "����`����");
			Move("���C��", 0, @-1000, @-1000, Dxl1, false);
			MoveFRP6("@���C��",20000,12,12);
		}else if($���C=="��"){
			CreateTextureSP("���C��", 1000, -455, -245, "����`����");
			Move("���C��", 0, @-1000, @600, Dxl1, false);
			MoveFRP7("@���C��",20000,15,15);
		}
	}
}

function FadeKenki($���C)
{
	$Kenki�Ƅ��ٶ�=800;
	$Kenki�����ٶ�=600;

	if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -104, -207, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -84, -237, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 2000, 2000, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 2000, 2000, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -50, -237, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 1800, 1800, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 1800, 1800, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -26, -207, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 400, 400, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 1600, 1600, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 1600, 1600, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -74, -217, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 300, 300, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 400, 400, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 1400, 1400, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 1400, 1400, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -104, -227, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 200, 200, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 300, 300, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 400, 400, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 1200, 1200, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 1200, 1200, Dxl2, false);
	}else if($���C=="��"){
		Move("���C��", $Kenki�Ƅ��ٶ�, -455, -245, Dxl2, false);
		Zoom("���C��", $Kenki�����ٶ�, 100, 100, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 200, 200, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 300, 300, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 400, 400, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Zoom("������", $Kenki�����ٶ�, 1000, 1000, Dxl2, false);
		Zoom("������", $Kenki�����ٶ�, 1000, 1000, Dxl2, false);
	}
}

function GoKenki($���C)
{
	if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 100, 100, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, -50, -30, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 200, 200, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, -196, -440, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 300, 300, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, 213, -267, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 400, 400, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, 182, -37, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 500, 500, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, 152, -384, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 800, 800, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, -229, -61, Dxl1, false);
	}else if($���C=="��"){
		//Zoom("���C��", $Kenki�����ٶ�, 1000, 1000, Dxl1, false);
		Move("���C��", $Kenki�����ٶ�, -455, -245, Dxl1, false);
	}
}

