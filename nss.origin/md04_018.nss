//<continuation number="280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_018.nss_MAIN
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
	#bg102_��ź��龰_01=true;
	#bg002_��a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_019.nss";

}

scene md04_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_017.nss"


//���ź�
//���ƥ�åס��źӡ�
//�������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

	SoundPlay("@mbgm36", 0, 1000, true);

	OnBG(100, "bg102_��ź��龰_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");

/*
	CreateTextureEX("�ƥ�å�", 17000, @450, @500, "cg/sys/Telop/tp_�ź�.png");
	Fade("�ƥ�å�", 1000, 1000, null, true);
	FadeDelete("�ƥ�å�", 2000, true);
*/
	FadeDelete("�\Ļ��", 1500, true);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_�ź�.png",null);
	Wait(2500);




	SetNwH("cg/fw/ny�ǣȣ��н�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���潫܊��
<voice name="����㣯���潫܊" class="����������" src="voice/md04/0180010e252">
�����Ѻ�ͷ�²��
�����ʵ�ȷ��Ҳ�Ͻ�����

//������㣯���潫܊��
<voice name="����㣯���潫܊" class="����������" src="voice/md04/0180020e252">
������Ϊ�S������Ϯ���ñ�ս��������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


//���Ͽ�
//���ǣȣѸo�T��һ�
	OnBG(100, "bg001_��a_01.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");



	CreateTextureEX("����飱/������01", 600, @600, @-200, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	CreateTextureEX("����飱/������02", 350, @700, @-0, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	CreateTextureEX("����飱/������03", 200, @700, @-300, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	CreateTextureEX("����飱/������04", 100, @800, @-200, "cg/st/3d��`�����`���`_�T��_ͨ��.png");

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


	SetNwH("cg/fw/ny��߉ꠣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯��߉ꠣ���
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180030e063">
��������˶��Ż����ŵġ���

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣ¡�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180040e064">
����������̫�����ˡ�
���������Ǵ��㲻�߲��ݵ�׼�������ˡ���

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣá�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180050e065">
����Ϊ���¿��ܲ��ˡ���

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣ���
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180060e063">
���S����ָ�ӹ�Ҫ����������������Ӧ����
׼���ٰ���ɡ�
����ô���ܻ��о�����������

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣ¡�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180070e064">
�����ǰ�������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥ�
	OnSE("se�ճ�_�Cе_�o��ͨ��03", 1000);
	Wait(500);

	SetNwH("cg/fw/ny��߉ꠣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯��߉ꠣá�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180080e065">
���ţ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�������L", 100, -4000, 0, "cg/bg/bg204_�����ر���_01.jpg");

	CreateTextureEX("����飱/�S��01", 5, -3450, @0, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/�S��02", 3, -3400, @0, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/�S��03", 2, -3500, @0, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	Request("����飱/�S��*", Smoothing);
	Rotate("����飱/�S��01", 0, @0, @0, @-50, null,true);

	Zoom("����飱/�S��*", 0, 20, 20, null, true);

	Fade("����飱/�S��*", 500, 1000, null, false);
	SetBlur("����飱/������0*", false, 1, 500, 200, false);

	OnSE("se���L_����_��ͻ�M08",1000);


	Move("����飱/�S��01", 15000, @10, @-150, Dxl1, false);
	Move("����飱/�S��02", 14500, @0, @-170, Dxl1, false);
	Move("����飱/�S��03", 14800, @20, @-160, Dxl1, false);

	Fade("�}�������L", 1800, 1000, Axl3, false);
	Move("�}�������L", 2600, -100, @-100, Dxl1, false);
	CloudZoomVertex(2500,@724,@200,AxlDxl,false);
	MoveCamera("@����飱", 2500, -3000, 100, @0, AxlDxl, true);


	SetNwH("cg/fw/ny��߉ꠣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0031]
//������㣯��߉ꠣ¡�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180090e064">
�����ֲ����ﺽ��
�������ǵ����

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣ���
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180100e063">
��ιι�����ǵ�Ԥ����ô�������ˡ�
���S����ָ�ӹ��Ƿ����𣿡�

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣá�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180110e065">
���������������ɡ�
������Ҳ���١�����

//������㣯��߉ꠣá�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180120e065">
����������ȷ�Ϲźӵ�����ġ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("����飱/�S��*", 500, false);
	FadeDelete("�}�������L", 500, true);
	CloudZoomVertex(500,-1024,0,Dxl2,false);
	MoveCamera("@����飱", 500, 0, 0, @0, Dxl2, true);

	SetNwH("cg/fw/ny��߉ꠣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0032]
//������㣯��߉ꠣ¡�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180130e064">
��ԭ����ˡ���Ⱥ�һ��治���ġ�
�������ӳ�����ô�죿��

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣ���
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180140e063">
�������ǻ�ȥ�ɡ�
�����ǵĴ������������������ʵ����

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣá�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180150e065">
��û����

{	NwH("cg/fw/ny��߉��L.png");}
//������㣯��߉��L��
<voice name="����㣯��߉��L" class="����������" src="voice/md04/0180160e066">
���š���
�����ǣ����Ǹ���֪��ͨ�Ľ�������͵��
Ҳ�����ܡ���

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣ¡�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180170e064">
���ǾͶ��ְɡ�
�����ǵ�λ�ø������ơ���

{	NwH("cg/fw/ny��߉��L.png");}
//������㣯��߉��L��
<voice name="����㣯��߉��L" class="����������" src="voice/md04/0180180e066">
���ǰ������á�
��ֻ����һ���

//������㣯��߉��L��
<voice name="����㣯��߉��L" class="����������" src="voice/md04/0180190e066">
�������Ķ��ɵ�����

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣ���
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180200e063">
���˽⡣��

{	NwH("cg/fw/ny��߉ꠣ�.png");}
//������㣯��߉ꠣ¡�
<voice name="����㣯��߉ꠣ�" class="����������" src="voice/md04/0180210e064">
�������������Կ�ʼ����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���M��

	SetVolume("ͣ��", 1000, 0, null);
	CreateColorEXadd("�}ɫ100", 150, "WHITE");


	CreateSE("�M��", "se���L_����_��ͻ�M02");
	CreateSE("�M��02", "se���L_����_��ͻ�M02");
	CreateSE("�M��03", "se���L_����_��ͻ�M02");
	CreateSE("�M��04", "se���L_����_��ͻ�M02");


	OnSE("se���L_����_�z_�ϵ�������01",1000);
	MoveCamera("@����飱", 500, -100, 50, @0, Dxl1, true);

	Fade("�}ɫ100", 500, 1000, null, false);
	MoveCamera("@����飱", 500, 2000, -250, @0, Axl1, false);
	MusicStart("�M��", 0, 1000, 0, 1000, null,false);
	Wait(150);
	MusicStart("�M��02", 0, 1000, 0, 1000, null,false);
	Wait(100);
	MusicStart("�M��03", 0, 1000, 0, 1000, null,false);
	Wait(50);
	MusicStart("�M��04", 0, 1000, 0, 1000, null,false);


//���\
//�������ǤΥͩ`��ãǤϡ�����
//���k����

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	Wait(1000);
	Delete("@OnBG*");

	CloudZoomDelete(0,false);
	Delete("�}ɫ100");
	Delete("�����*");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯����ʽ����
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0180220e301">
������С�Ӻ���Ħ���ԡ�
�����ֽ�פ�������������ָʾ����

//������㣯����ʽ����
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0180230e301">
������������

//������㣯����ʽ����
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0180240e301">
���˽⡣��

//������㣯����ʽ����
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0180250e301">
��һ�ﶼ����Ź�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Wait(500);
	OnSE("se���L_�Х���_�ܩ`�������02",1000);
	Wait(200);
	OnSE("se���L_�Х���_�ܩ`�������02",1000);
	Wait(50);
	OnSE("se���L_�Х���_�ܩ`�������02",1000);

//������

	OnBG(100, "bg102_��ź��龰_01.jpg");
	FadeBG(0, true);

//�r�g�U�^����魯����˥������� inc�Ѿ�
	Wait(3000);
	SetVolume("OnSE*", 1000, 0, null);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	Wait(500);
	SetNwH("cg/fw/ny�ǣȣ��н�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯���潫܊��
<voice name="����㣯���潫܊" class="����������" src="voice/md04/0180260e252">
��ʲô��
��һ��Ѳ�ߵ������С������ȫ�ޣ�
ȫ�ӣ���

//������㣯���潫܊��
<voice name="����㣯���潫܊" class="����������" src="voice/md04/0180270e252">
������Ӧ�ò������������ʱ�䶼û��
�ͱ����˴��ȫ���˰ɡ�
����������������Ѳ�߶Ӳ����ܲ����������

//������㣯���潫܊��
<voice name="����㣯���潫܊" class="����������" src="voice/md04/0180280e252">
���ߣ��Ǿ��ǵ�����͵����
����ȡ��һ��ʤ���͵������Σ�����˵
���������޿ɾ�ҩ��������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_019.nss"