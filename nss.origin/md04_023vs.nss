//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_023vs.nss_MAIN
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
	#bg001_��a_02=true;
	#ev806_�����}����`�����Σ�_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_����ʽ�o�T��=true;
	#av_GR08�ȥ�`��=true;

	$PreGameName = $GameName;

	$GameName = "md04_024.nss";

}

scene md04_023vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_022.nss"

//���Ͽա�Ϧ��
//���M�v܊�θo�T��ꠡ�չ�_


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 3000, "#000000");
	OnSE("se���L_����_��ͻ�M06", 1000);
	OnBG(100, "bg001_��a_02.jpg");
	SoundPlay("@mbgm12", 0, 1000, true);
	FadeBG(0, true);
	Delete("�ϱ���");

	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");



	CreateTextureEX("����飱/������01", 600, @600, @-200, "cg/st/3d�ȥ�`��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������02", 350, @700, @-0, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureEX("����飱/������03", 200, @700, @-300, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	CreateTextureEX("����飱/������04", 100, @800, @-200, "cg/st/3d��`�����_�T��_ͨ��.png");

	Fade("����飱/������01", 0, 1000, null, false);
	Fade("����飱/������02", 0, 1000, null, false);
	Fade("����飱/������03", 0, 1000, null, false);
	Fade("����飱/������04", 0, 1000, null, false);

	Zoom("����飱/������01", 0, 800, 800, null, false);
	Zoom("����飱/������02", 0, 500, 500, null, false);
	Zoom("����飱/������03", 0, 300, 300, null, false);
	Zoom("����飱/������04", 0, 250, 250, null, false);

	Move("����飱/������01", 0, 41, -218, null, true);
	Move("����飱/������02", 0, -268, -45, null, true);
	Move("����飱/������03", 0, -429, -206, null, true);
	Move("����飱/������04", 0, -257, -304, null, true);

	Request("����飱/������0*", Smoothing);

	OnSE("se���L_����_��ͻ�M03", 1000);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 0, 700, 0, 1000, null,true);


$��`�ץ�`�֥ʥå��� = "@����飱/������01";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@����飱/������02";
$��`�ץ�`�֥����ࣲ = 20000;

$��`�ץ�`�֥ʥå����� = "@����飱/������03";
$��`�ץ�`�֥����ࣳ = 15000;

$��`�ץ�`�֥ʥå����� = "@����飱/������04";
$��`�ץ�`�֥����ࣴ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving3");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving4");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	MoveCamera("@����飱", 0, 500, 50, @0, null, true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	MoveCamera("@����飱", 1500, 0, -50, @150, Dxl1, true);
	Delete("�\Ļ��");

	SetBlur("����飱/������0*", true, 1, 500, 100, false);


/*
	CreateTextureEX("�}�ӣԣ�1001", 1300, @100, @-400, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
	CreateTextureEX("�}�ӣԣ�1002", 1200, @-300, @-200, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
	CreateTextureEX("�}�ӣԣ�1003", 1000, @-300, @-500, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");
	CreateTextureEX("�}�ӣԣ�1004", 1100, @-500, @-400, "cg/st/3d�ũ�ʽ�o�T��_�T��_���La.png");

	Request("�}�ӣԣ�100*", Smoothing);

	Zoom("�}�ӣԣ�1001", 0, 800, 800, null, false);
	Zoom("�}�ӣԣ�1002", 0, 500, 500, null, false);
	Zoom("�}�ӣԣ�1003", 0, 250, 250, null, false);
	Zoom("�}�ӣԣ�1004", 0, 300, 300, null, false);

	Shake("�}�ӣԣ�1001", 10000000, 1, 1, 0, 0, 600, null, false);
	Shake("�}�ӣԣ�1002", 10000000, 1, 1, 0, 0, 800, null, false);
	Shake("�}�ӣԣ�1003", 10000000, 1, 1, 0, 0, 1000, Dxl3, false);
	Shake("�}�ӣԣ�1004", 10000000, 1, 1, 0, 0, 900, Axl3, false);

	Fade("�}�ӣԣ�100*", 250, 1000, null, true);

	Delete("�ϱ���");

*/

	Wait(1000);


//��Ħ����
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CloudZoomSet(11000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1200,@600,null,true);
	Request("�}Cloud1*", AddRender);
	CreateTextureEX("�}��", 1000, Center, Middle, "cg/ev/ev806_�����}����`�����Σ�_a.jpg");
	Zoom("�}��", 0, 1100, 1100, null, true);
	SetBlur("�}��", true, 1, 500, 200, false);

	BGMoveAuto("@�}��",3);

	Fade("�}��", 0, 1000, null, true);
	Delete("�����*");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("�\Ļ��");



	Delete("�}�ӣԣ�100*");
	SetNwC("cg/fw/nw����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�S�����١�
<voice name="����㣯�S������" class="����������" src="voice/md04/023vs0010e100">
����ܵ�����ǰ���ſ���ʽ��
���������Ƚ�����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/023vs0020a06">
�������Ƕ���ò�ļһﰡ��
������ǰ��ӭ���𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/023vs0030a06">
���Ǻá���Ϊ����
����һ��ǿϮ��������ӡ�����

{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/023vs0040a06">
��ȫԱװ��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߣ��ޤƤ󤳤���`�ө`���룿
//��Ħ���Ԥ�������ʽ������
	#av_����ʽ�o�T��=true;

	SetVolume("ͣ��", 1000, 0, null);

	CreateColorEX("�\Ļ��", 20000, "#000000");
	Fade("�\Ļ��", 300, 1000, null, true);

	MovieSESet(21000,"mvĦ����","se����_mv��_Ħ����");
	MovieSEStart(0);


	CreateColorSP("�\Ļ��", 25000, "#000000");
	FadeDelete("�\Ļ��", 0, true);

	Delete("�}��");
	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");



	CreateTextureEX("����飱/������01", 500, @200, @-200, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������02", 350, @400, @-0, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������03", 200, @400, @-300, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������04", 100, @500, @-200, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");

	Fade("����飱/������01", 0, 1000, null, false);
	Fade("����飱/������02", 0, 1000, null, false);
	Fade("����飱/������03", 0, 1000, null, false);
	Fade("����飱/������04", 0, 1000, null, false);

	Zoom("����飱/������01", 0, 600, 600, null, false);
	Zoom("����飱/������02", 0, 500, 500, null, false);
	Zoom("����飱/������03", 0, 300, 300, null, false);
	Zoom("����飱/������04", 0, 250, 250, null, false);

	Move("����飱/������01", 0, 41, -218, null, true);
	Move("����飱/������02", 0, -268, -45, null, true);
	Move("����飱/������03", 0, -429, -206, null, true);
	Move("����飱/������04", 0, -257, -304, null, true);

	Request("����飱/������0*", Smoothing);

	OnSE("se���L_����_��ͻ�M02", 1000);
	OnSE("se���L_����_��ͻ�M08", 1000);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 0, 700, 0, 1000, null,true);


$��`�ץ�`�֥ʥå��� = "@����飱/������01";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@����飱/������02";
$��`�ץ�`�֥����ࣲ = 20000;

$��`�ץ�`�֥ʥå����� = "@����飱/������03";
$��`�ץ�`�֥����ࣳ = 15000;

$��`�ץ�`�֥ʥå����� = "@����飱/������04";
$��`�ץ�`�֥����ࣴ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving3");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving4");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	MoveCamera("@����飱", 0, 500, 50, @0, null, true);


//	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	FadeDelete("�\Ļ��", 300, false);
	MoveCamera("@����飱", 1500, 100, 200, @300, Dxl1, true);
	Delete("�\Ļ��");

//	SetBlur("����飱/������01", true, 1, 500, 100, false);

	Wait(1000);

//���M�v܊�ȡ���`��������T
//�������
//�룺��������ǥȥ�`���ʹ�ä����¤�������09/15��
	#av_GR08�ȥ�`��=true;

	SetBlur("����飱/������0*", false, 1, 500, 100, false);
	MoveCamera("@����飱", 300, 1500, 0, @0, Axl1, false);
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("�����*");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");



	CreateTextureEX("����飱/������01normal", 600, @600, @-200, "cg/st/3d�ȥ�`��_�T��_ͨ��.png");
	CreateTextureEXadd("����飱/������01add", 600, @600, @-200, "cg/st/3d�ȥ�`��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������02", 350, @700, @-0, "cg/st/3d��`�����`���`_�T��_���L.png");
	CreateTextureEX("����飱/������03", 200, @700, @-300, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	CreateTextureEX("����飱/������04", 100, @800, @-200, "cg/st/3d��`�����_�T��_ͨ��.png");

	Fade("����飱/������01normal", 0, 1000, null, false);
	Fade("����飱/������02", 0, 1000, null, false);
	Fade("����飱/������03", 0, 1000, null, false);
	Fade("����飱/������04", 0, 1000, null, false);

	Zoom("����飱/������01*", 0, 800, 800, null, false);
	Zoom("����飱/������02", 0, 500, 500, null, false);
	Zoom("����飱/������03", 0, 300, 300, null, false);
	Zoom("����飱/������04", 0, 250, 250, null, false);

	Move("����飱/������01*", 0, 41, -218, null, true);
	Move("����飱/������02", 0, -268, -45, null, true);
	Move("����飱/������03", 0, -429, -206, null, true);
	Move("����飱/������04", 0, -257, -304, null, true);

	Request("����飱/������0*", Smoothing);

	OnSE("se���L_����_��ͻ�M04", 1000);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 0, 700, 0, 1000, null,true);


$��`�ץ�`�֥ʥå��� = "@����飱/������01*";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@����飱/������02";
$��`�ץ�`�֥����ࣲ = 20000;

$��`�ץ�`�֥ʥå����� = "@����飱/������03";
$��`�ץ�`�֥����ࣳ = 15000;

$��`�ץ�`�֥ʥå����� = "@����飱/������04";
$��`�ץ�`�֥����ࣴ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving3");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving4");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	MoveCamera("@����飱", 0, -500, 50, @0, null, true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", false);
	MoveCamera("@����飱", 1200, 0, -50, @150, Dxl1, true);
	Delete("�\Ļ��");

	SetBlur("����飱/������01", true, 1, 500, 100, false);

	SetNwH("cg/fw/ny�ǣȣѸo�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�M�v܊�T����
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0050e132">
���о����ͷ��н��������ս�
�������ǡ���һ��Ӫ�Ĺ�ģ��������Ҫ���࣡��

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�¡�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0060e133">
����û���������塣
�������͵ģ���

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T����
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0070e132">
���б�־����������������

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�á�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0080e134">
���������㡣
����͵�������Ὣ��������뵽���ֵ��С���

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T����
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0090e132">
���Դ���Թŵļ�Ԫ��˵�������ǣ���������
����ԭ����ˣ��������͵����ơ�
����һ�����˼����

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�á�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0100e134">
���Ǻǣ����ˡ�
�������ҿ�����
�߾�С���������������ǿ��ʲô�̶ȡ���

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�¡�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0110e133">
���á���
��������Ϊǿ����������������������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ100", 2500, "WHITE");

	Request("�ץ�����", Stop);
	Delete("�ץ�����");

//���M��
//��ͻȻ��һ�T�����k
//	SetBlur("����飱/������0*", false, 1, 500, 200, false);

	OnSE("se���L_����_�z_�ϵ�������01",1000);
	MoveCamera("@����飱", 500, -100, 50, @0, Dxl1, true);

	Move("����飱/������01*", 500, 2000, -350, AxlDxl, false);
	MoveCamera("@����飱", 500, 2000, -250, @0, AxlDxl, true);

	CreateTextureEXover("�}����", 19000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEXadd("�}����", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 1, 300, 30, false);

	CreateSE("SE01","se���L_�Х���_�ܩ`�������01");
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE01",0,1000,0,1000,null,false);



	Shake("����飱/������01*", 1000, 5, 20, 0, 0, 500, Dxl2, false);
	Fade("�}ɫ100", 500, 1000, Axl1, false);
	DrawTransition("�}ɫ100", 500, 0, 500, 200, Axl1, "cg/data/circle_08_00_0.png", false);
	Fade("����飱/������01add", 500, 1000, null, false);
	Move("����飱/������01*", 1100, 1900, -150, Axl1, false);
	EffectZoomadd(10000, 800, 600, "cg/ef/ef034_����AȾ.jpg", true);


	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("����飱/������01*", 200, 0, null, false);
	Fade("�}��*", 150, 1000, null, false);
	Zoom("�}��*", 2000, 1500, 1500, Dxl1, false);
	Shake("�}��*", 1500, 20, 10, 0, 0, 1000, Dxl2, true);
	Wait(150);

	Delete("�}ɫ100");
	Delete("����飱/������01*");

	FadeDelete("�}��*", 1000, false);

	MoveCamera("@����飱", 1600, -200, 50, 1000, Dxl1, false);



	SetNwH("cg/fw/ny�ǣȣѸo�T����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�M�v܊�T����
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0120e132">
����������ŵ����

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T����
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0130e132">
������ŵ��ξ!?��

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�¡�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0140e133">
����³�̣���ô�ˣ�
������ŵ��ô��!?��

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T����
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0150e132">
�������������
��ͻȻȼ������������������Ͳ���ϡ���

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T����
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0160e132">
�����ԣ���ʹ�������ղŵ�Ҳ������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 1500, "WHITE");
	CreateSE("SE01","se���L_�Х���_�ܩ`�������01");
	CreateTextureEXadd("�}����", 19000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEXadd("�}����", 18000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");


//�������`�󡣤ޤ�һ�T
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("����飱/������02", 1000, 5, 10, 0, 0, 1000, Axl2, false);
	Fade("�}ɫ100", 500, 1000, Axl1, false);
	DrawTransition("�}ɫ100", 500, 0, 500, 200, Axl1, "cg/data/circle_08_00_0.png", false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_����AȾ.jpg", true);

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Shake("�}��*", 2500, 20, 15, 0, 0, 1000, Dxl1, false);
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 1, 300, 30, false);

	Fade("�}��*", 200, 1000, null, false);
	Zoom("�}��*", 2000, 2000, 2000, Dxl2, false);
	Shake("�}����", 1500, 0, 10, 0, 0, 1000, Dxl2, true);
	Wait(150);

	Delete("�}ɫ100");
	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	Delete("����飱/������02");

	FadeDelete("�}��*", 1000, false);

	MoveCamera("@����飱", 1000, -200, -50, 1500, AxlDxl, true);



	SetNwH("cg/fw/ny�ǣȣѸo�T����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�M�v܊�T�¡�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0170e133">
����³��!?��

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�¡�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0180e133">
����������ô��!?��

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�á�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0190e134">
�����������ǹ���!!��

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�¡�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0200e133">
������!?��

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�á�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0210e134">
���ط����������������߷�����ֵ��ڵ���
��������Ǹ�����

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�á�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0220e134">
����ɢ����
��������ȥ��ֻ�а���ķ�!!��

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�¡�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0230e133">
���⡢���п�����
�����н�һ�¹���
�ͽ����������ľѻ�����������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������󡣾A���ƶ��T

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	CreateSE("SE05","se���L_�Ɖ�_���k07");

	OnSE("se���L_�Х���_�ܩ`�������01",1000);
	CreateColorSPadd("��", 20000, "#FFFFFF");
	Fade("��", 400, 0, null, true);
	Shake("����飱/������03", 1000, 5, 10, 0, 0, 1000, Axl2, false);

	OnSE("se���L_�Х���_�ܩ`�������01",1000);
	Fade("��", 100, 1000, null, true);
	Fade("��", 400, 0, null, false);
	Shake("����飱/������04", 1000, 5, 10, 0, 0, 1000, Axl2, false);

/*
	CreateTextureEX("kemu", 1800, @-200, @0, "cg/ef/efRec_�a01.png");
	Fade("kemu", 400, 300, null, true);
	Fade("kemu", 300, 600, null, false);
//	Fade("kemu", 1000, 1000, null, true);
	Shake("�}�ӣԣ�1002", 1000, 10, 10, 0, 0, 600, Axl3, false);
	Shake("�}�ӣԣ�1004", 1000, 10, 10, 0, 0, 600, Axl3, false);
	Move("�}�ӣԣ�1002", 1000, @400, @400, Axl3, false);
	Move("�}�ӣԣ�1004", 800, @100, @100, Axl3, true);
	Move("�}�ӣԣ�1004", 200, @600, @600, Axl3, false);

	FadeDelete("�}�ӣԣ�1001*", 1000, false);
	DrawTransition("kemu*", 1000, 1000, 0, 1000, null, "cg/data/slide_01_02_1.png", true);
	Delete("kemu");

*/

	MoveCamera("@����飱", 2000, -300, -250, 1500, Axl3, false);

	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 2000, 1000, "cg/ef/ef034_����AȾ.jpg", false);
	CreateColorSPadd("�Ф���", 17000, "#990000");
	CreateColorSPadd("�Ф���", 16000, "#ffffcc");
	CreateColorSPadd("�Ф���", 15000, "#FFFFFF");
	DrawTransition("�Ф���", 0, 1000, 200, 800, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("�Ф���", 0, 1000, 400, 500, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("�Ф���", 0, 1000, 600, 100, null, "cg/data/circle_12_01_1.png", true);
	FadeDelete("�Ф�*", 1000, true);
	FadeDelete("����飱/������*", 1000, false);

	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateColorSPadd("�Ф���", 17000, "#990000");
	CreateColorSPadd("�Ф���", 16000, "#ffffcc");
	CreateColorSPadd("�Ф���", 15000, "#FFFFFF");
	DrawTransition("�Ф���", 0, 1000, 200, 800, null, "cg/data/circle_13_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 400, 500, null, "cg/data/circle_13_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 600, 100, null, "cg/data/circle_13_00_0.png", true);
	FadeDelete("�Ф�*", 1000, true);

	Wait(500);

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	Delete("�}ɫ100");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("����飱/������*");


	CreateTextureEX("�}�ӣԣ�2001", 1400, @100, @-150, "cg/st/3d�����_�T��_���L.png");
	CreateTextureEX("�}�ӣԣ�2002", 1300, @-300, @-350, "cg/st/3d��`�����_�T��_���L.png");
	CreateTextureEX("�}�ӣԣ�2003", 1000, @-300, @-150, "cg/st/3d�ȥ�`��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�2004", 1200, @-500, @-150, "cg/st/3d��`�����`���`_�T��_ͨ��.png");

	Request("�}�ӣԣ�200*", Smoothing);

	Zoom("�}�ӣԣ�2001", 0, 800, 800, null, false);
	Zoom("�}�ӣԣ�2002", 0, 500, 500, null, false);
	Zoom("�}�ӣԣ�2003", 0, 250, 250, null, false);
	Zoom("�}�ӣԣ�2004", 0, 300, 300, null, false);

	Shake("�}�ӣԣ�2001", 10000000, 1, 0, 0, 0, 920, null, false);
	Shake("�}�ӣԣ�2002", 10000000, 1, 0, 0, 0, 950, null, false);
	Shake("�}�ӣԣ�2003", 10000000, 1, 0, 0, 0, 1000, Dxl3, false);
	Shake("�}�ӣԣ�2004", 10000000, 1, 0, 0, 0, 900, Axl3, false);

	Delete("�}�ӣԣ�100*");
	Fade("�}�ӣԣ�200*", 0, 1000, null, true);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);


	SetNwH("cg/fw/ny�ǣȣѸo�T����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯�M�v܊�T�á�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/023vs0240e134">
��ɢ������������������!!��

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����͂�
//������ʽ���
//�������ǤΥͩ`��ãǤϡ����͸o�T�������á�
//���k����

	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M08",1000);

	Move("�}�ӣԣ�2001", 500, @1100, @600, Axl3, false);
	Move("�}�ӣԣ�2002", 600, @1000, @200, Axl3, false);
	Move("�}�ӣԣ�2003", 550, @1000, @-400, Axl1, false);
	Move("�}�ӣԣ�2004", 650, @11000, @-400, Axl3, true);

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

/*

	Delete("�}�ӣԣ�200*");
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);



	CreateTextureEX("�}�ӣԣ�1001", 1400,  @-800, @-700, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�1002", 1300,  @-700, @-900, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�1003", 1100,  @-400, @-600, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�1004", 1200,  @-300, @-700, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");

	Request("�}�ӣԣ�200*", Smoothing);

	Zoom("�}�ӣԣ�1001", 0, 800, 800, null, false);
	Zoom("�}�ӣԣ�1002", 0, 500, 500, null, false);
	Zoom("�}�ӣԣ�1003", 0, 250, 250, null, false);
	Zoom("�}�ӣԣ�1004", 0, 300, 300, null, false);

	Shake("�}�ӣԣ�1001", 10000000, 1, 1, 0, 0, 600, null, false);
	Shake("�}�ӣԣ�1002", 10000000, 1, 1, 0, 0, 800, null, false);
	Shake("�}�ӣԣ�1003", 10000000, 1, 1, 0, 0, 1000, Dxl3, false);
	Shake("�}�ӣԣ�1004", 10000000, 1, 1, 0, 0, 900, Axl3, false);

	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ӣԣ�1001", 350, @500, @400, Dxl3, false);
	Fade("�}�ӣԣ�1001", 150, 1000, null, false);

	CreateSE("SE04","se���L_����_��ͻ�M03");
	MusicStart("SE04",0,250,0,1000,null,false);
	Move("�}�ӣԣ�1004", 300, @500, @200, Axl3, false);
	Fade("�}�ӣԣ�1004", 250, 1000, null, true);

	CreateSE("SE02","se���L_����_��ͻ�M03");
	MusicStart("SE02",0,500,0,1000,null,false);
	Move("�}�ӣԣ�1002", 200, @500, @300, Dxl1, false);
	Fade("�}�ӣԣ�1002", 150, 1000, null, true);

	CreateSE("SE03","se���L_����_��ͻ�M03");
	MusicStart("SE03",0,400,0,1000,null,false);
	Move("�}�ӣԣ�1003", 200, @500, @400, Dxl1, false);
	Fade("�}�ӣԣ�1003", 150, 1000, null, true);

*/


	Delete("�}��");
	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");



	CreateTextureEX("����飱/������01a", 500, @200, @-200, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������02a", 350, @400, @-0, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������03a", 200, @400, @-300, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������04a", 100, @500, @-200, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������01b", 500,  @200, @-200, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
	CreateTextureEX("����飱/������02b", 350,  @400, @-0, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
	CreateTextureEX("����飱/������03b", 200,  @400, @-300, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
	CreateTextureEX("����飱/������04b", 100,  @500, @-200, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");

	Fade("����飱/������01a", 0, 1000, null, false);
	Fade("����飱/������02a", 0, 1000, null, false);
	Fade("����飱/������03a", 0, 1000, null, false);
	Fade("����飱/������04a", 0, 1000, null, false);

	Zoom("����飱/������01*", 0, 600, 600, null, false);
	Zoom("����飱/������02*", 0, 500, 500, null, false);
	Zoom("����飱/������03*", 0, 300, 300, null, false);
	Zoom("����飱/������04*", 0, 250, 250, null, false);

	Move("����飱/������01*", 0, 41, -218, null, true);
	Move("����飱/������02*", 0, -268, -45, null, true);
	Move("����飱/������03*", 0, -429, -206, null, true);
	Move("����飱/������04*", 0, -257, -304, null, true);

	Request("����飱/������0*", Smoothing);

	OnSE("se���L_����_��ͻ�M03", 1000);
	OnSE("se���L_����_��ͻ�M06", 1000);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 0, 700, 0, 1000, null,true);


$��`�ץ�`�֥ʥå��� = "@����飱/������01*";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@����飱/������02*";
$��`�ץ�`�֥����ࣲ = 20000;

$��`�ץ�`�֥ʥå����� = "@����飱/������03*";
$��`�ץ�`�֥����ࣳ = 15000;

$��`�ץ�`�֥ʥå����� = "@����飱/������04*";
$��`�ץ�`�֥����ࣴ = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving3");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving4");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	MoveCamera("@����飱", 0, 500, 50, @0, null, true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	MoveCamera("@����飱", 1500, 100, 200, @300, Dxl1, true);
	Delete("�\Ļ��");

//	SetBlur("����飱/������01", true, 1, 500, 100, false);


	SetNwC("cg/fw/nw����ʽ�o�T����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯����ʽ����
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/023vs0250e301">
�����ˡ���������Щ��������

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ�¡�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/023vs0260e302">
����Щ�ˣ��ƺ��൱Ϊ����Ϊ���� 
���������ֳǸ���ưܲ���������

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ�á�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/023vs0270e303">
�������Ź����ǡ���

//������㣯����ʽ����
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/023vs0280e301">
���ǵ�Ȼ����

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ�¡�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/023vs0290e302">
���氭�ۣ�
���ڱ��˵�������
�������Ų��ߵ�ʲôʱ��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���k��h���ʂ�
//���k��
//���ܤ��ܤ��ĉ�����Ƥ��M�v܊�T

/*
	CreateTextureEX("�}�ӣԣ�1001", 1200,  @-800, @-700, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
	CreateTextureEX("�}�ӣԣ�1002", 1100,  @-700, @-900, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
	CreateTextureEX("�}�ӣԣ�1003", 1000,  @-400, @-600, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
	CreateTextureEX("�}�ӣԣ�1004", 1050,  @-300, @-700, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");

	Request("�}�ӣԣ�100*", Smoothing);
*/
	CreateTextureEXadd("���ޤ�", 2000, @0, @0, "cg/ef/ef002_�����Ƅ�.jpg");


	Request("���ޤ�", Smoothing);

	CreateSE("SE01","se����_�z_���ͥ륮�`���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	OnSE("se���L_�|��_�}��������01", 1000);
	Fade("���ޤ�", 200, 1000, null, false);
	Zoom("���ޤ�", 200, 1500, 1500, null, true);

	Fade("����飱/������0*", 250, 1000, null, true);
	Fade("���ޤ�", 200, 0, null, false);
	WaitKey(1500);



	CreateTextureEX("�}EF01", 10000, Center, Middle, "cg/ef/ef038_�������.jpg");
	Rotate("�}EF01", 0, @180, @0, @0, Axl3, false);
	OnSE("se���L_�Х���_�ܩ`�������01", 1000);

	Delete("�}ɫ100");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("����飱/������*");

	Wait(500);
	Delete("�}�ӣԣ�100*");
	Fade("�}EF01",100 0, 0, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 3000, 1000, "cg/ef/ef026_���ñ���.jpg", false);

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("�Ф���", 17000, "#990000");
	CreateColorSPadd("�Ф���", 16000, "#ffffcc");
	CreateColorSPadd("�Ф���", 15000, "#FFFFFF");
	DrawTransition("�Ф���", 0, 1000, 200, 300, null, "cg/data/circle_09_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 210, 200, null, "cg/data/circle_09_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 220, 100, null, "cg/data/circle_09_00_0.png", true);
	FadeDelete("�Ф�*", 300, false);
	Wait(50);

	CreateSE("SE02","se���L_�n��_�zɢ�A");
	MusicStart("SE02",0,900,0,1000,null,false);
	CreateColorSPadd("�ФФ���", 17000, "#990000");
	CreateColorSPadd("�ФФ���", 16000, "#ffffcc");
	CreateColorSPadd("�ФФ���", 15000, "#FFFFFF");
	DrawTransition("�ФФ���", 20, 1000, 170, 300, null, "cg/data/circle_05_00_0.png", false);
	DrawTransition("�ФФ���", 20, 1000, 180, 200, null, "cg/data/circle_05_00_0.png", false);
	DrawTransition("�ФФ���", 20, 1000, 190, 100, null, "cg/data/circle_05_00_0.png", true);
	FadeDelete("�ФФ�*", 300, false);

	Wait(50);
	CreateSE("SE01","se���L_�n��_�zɢ�A");
	MusicStart("SE01",0,800,0,1000,null,false);
	CreateColorSPadd("�ФФФ���", 17000, "#990000");
	CreateColorSPadd("�ФФФ���", 16000, "#ffffcc");
	CreateColorSPadd("�ФФФ���", 15000, "#FFFFFF");
	DrawTransition("�ФФФ���", 0, 1000, 140, 300, null, "cg/data/circle_06_00_0.png", false);
	DrawTransition("�ФФФ���", 0, 1000, 150, 200, null, "cg/data/circle_06_00_0.png", false);
	DrawTransition("�ФФФ���", 0, 1000, 160, 100, null, "cg/data/circle_06_00_0.png", true);
	FadeDelete("�ФФФ�*", 300, false);


	Wait(50);
	CreateSE("SE00","se���L_�n��_�zɢ�A");
	MusicStart("SE00",0,700,0,1000,null,false);
	CreateColorSPadd("�ФФФФФ���", 17000, "#990000");
	CreateColorSPadd("�ФФФФФ���", 16000, "#ffffcc");
	CreateColorSPadd("�ФФФФФ���", 15000, "#FFFFFF");
	DrawTransition("�ФФФФФ���", 0, 1000, 100, 300, null, "cg/data/circle_08_00_0.png", false);
	DrawTransition("�ФФФФФ���", 0, 1000, 110, 200, null, "cg/data/circle_08_00_0.png", false);
	DrawTransition("�ФФФФФ���", 0, 1000, 120, 100, null, "cg/data/circle_08_00_0.png", true);

	FadeDelete("�ФФФФФ�*", 300, false);

	Wait(50);
	CreateSE("SE00","se���L_�n��_�zɢ�A");
	MusicStart("SE00",0,700,0,1000,null,false);
	CreateColorSPadd("�ФФФФ���", 17000, "#990000");
	CreateColorSPadd("�ФФФФ���", 16000, "#ffffcc");
	CreateColorSPadd("�ФФФФ���", 15000, "#FFFFFF");
	DrawTransition("�ФФФФ���", 0, 1000, 100, 300, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("�ФФФФ���", 0, 1000, 110, 200, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("�ФФФФ���", 0, 1000, 120, 100, null, "cg/data/circle_12_01_1.png", true);

//	FadeDelete("�Ф�*", 100, false);

	FadeDelete("�ФФФФ�*", 1000, true);


//	CreateSE("SE03","se���L_�n��_�zɢ�A");
//	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(1000);


	SetVolume("@mbgm*", 2000, 0, null);
	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	SetVolume("ͣ��", 2000, 0, null);
	ClearWaitAll(2000, 1500);

}

..//������ָ��
//�Υե����롡"md04_024.nss"