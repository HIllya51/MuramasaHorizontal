//<continuation number="560">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_041.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_042.nss";

}

scene md04_041.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_040.nss"


//����
//��㑷�

/*
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg002_��a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm37", 0, 1000, true);

	Delete("�ϱ���");
//	FadeDelete("�\Ļ��",1500,true);
	DrawDelete("�\Ļ��", 300, 100, "slide_02_01_0", true);


//���������ϱ�ʾ���ʤ��ǟo���ǻ�Ԓ����inc�Ѿ�
	OnSE("se���L_����_��ͻ�M03", 1000);

	StL(1500, @-700, @500, "cg/st/3d㑷�_�T��_�i��.png");
	FadeStL(300, false);
	Shake("@StL*", 1000000, 1, 1, 0, 0, 1000, null, false);

	CreateTextureEX("������02", 900, @-850, @-300, "cg/st/3d����ʽ�o�T��_�T��_���Lb.png");
	CreateTextureEX("������03", 800, @-850, @-600, "cg/st/3d����ʽ�o�T��_�T��_���La.png");

	Fade("������02", 0, 1000, null, false);
	Fade("������03", 0, 1000, null, false);

	Zoom("������02", 0, 500, 500, null, false);
	Zoom("������03", 0, 250, 250, null, false);

	Shake("������*", 10000000, 1, 1, 0, 0, 1000, AxlDxl, false);

	Move("������02", 300, @1000, @0, null, true);
	Move("������02", 300, @-50, @0, null, false);

	Move("������03", 300, @1000, @0, null, true);
	Move("������03", 300, @-50, @0, null, false);


	CreateSE("�w��", "se���L_����_������01_L");
	MusicStart("�w��", 0, 1000, 0, 1000, null,true);

	Move("@StL*", 300, @850, @-100, null, true);
	Move("@StL*", 500, @-150, @100, DxlAuto, true);

*/

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 30000, "#000000");
	OnBG(100, "bg001_��a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm37", 0, 1000, true);

	Delete("�ϱ���");

//	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}ɫ100");
	Delete("�}��*");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("����飱/������*");


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");



//	CreateTextureEX("����飱/������01a", 500, @200, @-200, "cg/st/3d㑷�_�T��_�i��.png");
	CreateTextureEX("������01a", 2000, -114, -385, "cg/st/3d㑷�_�T��_�i��.png");
	CreateTextureEX("����飱/������02a", 350, @400, @-0, "cg/st/3d����ʽ�o�T��_�T��_���Lb.png");
	CreateTextureEX("����飱/������03a", 200, @400, @-300, "cg/st/3d����ʽ�o�T��_�T��_���La.png");
	CreateTextureEX("����飱/������04a", 100, @500, @-200, "cg/st/3d����ʽ�o�T��_�T��_���Lb.png");
//	CreateTextureEX("����飱/������01b", 500,  @200, @-200, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������02b", 350,  @400, @-0, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������03b", 200,  @400, @-300, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������04b", 100,  @500, @-200, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");

//	Fade("����飱/������01a", 0, 1000, null, false);
	Fade("������01a", 0, 1000, null, false);
	Fade("����飱/������02a", 0, 1000, null, false);
	Fade("����飱/������03a", 0, 1000, null, false);
	Fade("����飱/������04a", 0, 1000, null, false);

	SetVertex("������01a", @-2000, @1550);

	Zoom("������01a", 0, 800, 800, null, true);
	Zoom("����飱/������02*", 0, 500, 500, null, false);
	Zoom("����飱/������03*", 0, 300, 300, null, false);
	Zoom("����飱/������04*", 0, 250, 250, null, false);

//	Move("����飱/������01*", 0, -41, -218, null, true);
	Move("����飱/������02*", 0, -268, -45, null, true);
	Move("����飱/������03*", 0, -429, -206, null, true);
	Move("����飱/������04*", 0, -257, -304, null, true);

	Request("����飱/������0*", Smoothing);

	OnSE("se���L_����_��ͻ�M03", 1000);
	OnSE("se���L_����_��ͻ�M06", 1000);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 0, 700, 0, 1000, null,true);


$��`�ץ�`�֥ʥå��� = "@������01*";
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


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	Zoom("������01a", 1500, 1000, 1000, Dxl1, false);
	MoveCamera("@����飱", 1500, 100, 200, @300, Dxl1, true);
	Delete("�\Ļ��");
	SetBlur("����飱/������0*", true, 1, 500, 100, false);
	SetBlur("������01a", true, 1, 500, 100, false);

	Wait(500);

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410010a06">
������������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410020a06">
�����𡭡���

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410030a06">
�����ǡ����������𣬲���裩

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410040e195">
���󡢴��ˡ���
������ʽ����ȫ���������ɫ�ˣ���

//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410050e195">
���Ѿ�ʧȥ���ƣ���

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410060e196">
��������ȥ�������ƾ͡���
�����ˣ����ڸ���ô��?!��

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410070a06">
��������

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410080e195">
����ô���¡���
��Ϊʲô������������

//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410090e195">
����Ϊ�������� 
���ãУ��ǲ�����ʲô����ȱ�ݡ�����

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410100a06">
������
������ֻ�Ǳ������˶��ѡ���

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410110e195">
��ɶ����

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410120a06">
��ֻ�Ǳ��Ѷ��ѡ�
���������������������ģ�

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410130a06">
�����<RUBY text="������">�ֵ���</RUBY>�ˡ�
�����˶��ѣ�

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410140a06">
����һֱ�ظ��ű��Ѻ�ıɱ�Ĺ���������
���˱��ѣ�Ȼ������������
�����ˡ����Ҿ�֪������������

{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410150a06">
����ʹ�ҵ��������������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410160a06">
����Ȼ�Ҽ���Լ������壬�ɵ��˵�·���ˡ�
����ô���ҵ��˱��˵����壬���˵�Ȼ�����
���ɰ��µļһ�ɵ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410170a06">
���������������ǿ��������

{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410180a06">
����һ·��ʤ�ߵ���һ������������Ϊ������
�����У�ֻ��������Ϊ�ұȶԷ�ǿ���ѡ�����

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410190a06">
��һ���Է����Լ�ǿ����
���Ҿͻᱻ���ѣ����ɵ���ʧ�ܸ��գ�

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410200a06">
���ߡ��Է���Ȼ�ǲ���衣
���Ǿ�ʹ����������ɣ�

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410210a06">
�����ն���˵��������

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410220a06">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410230a06">
�������Ѿ���

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410240e196">
�����ˣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410250a06">
��������

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410260e196">
���Ѿ��Ų�ס�ˣ� 
�����������˰ɣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410270a06">
�����ˣ���

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410280a06">
���˵������

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410290e196">
����Ƭ�����Σ�գ� 
�����������뿪������

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410300a06">
�����������ǵ��������ɰ��ϵ����ڡ�
�����ǵ�������������Ҳ�ڡ���

{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410310a06">
���ѵ�Ҫ�������ǣ���

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410320e196">
�������������ǡ�����

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410330e195">
�����ˣ����ǲ��˵Ļ���Ҫ��ȫ�ߡ�����

{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410340a06">
����Ҫ����ʧ��!!
��������ų����!!��

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410350a06">
���ѵ�ֻ�ܴ��ʤ֮ս��?! 
��������ս�ֱ�þ������ѣ���ô����Ϊ
���С���ŵ�ƨ������!!��

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410360a06">
���ո������ʿ֮�������е��߳���!!��

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410370e195">
������������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410380a06">
������Ӧ�ö������
����һս�Ǿ�����ʹ����Ĺؼ�֮ս����

{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410390a06">
��������ǰ��ͬ��������û����һ�λ��ᣡ 
������Ź���һ�أ����Ƿ�ʤ���ɣ���

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410400a06">
�����۷����κ��£���

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410410e196">
�����ˡ�����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410420a06">
������һ�¡�
���Բ��������ǿɺ޵�����������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410430a06">
�����ڱ����ǰ�Χ������ά��֮ʱ��������
Ͷ�������������������¼ҳ�������
�����޴��Ͻ��й����ֿɰ�֮������

{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410440a06">
����������������ʧ�����棬δ���ڵ������
֮ʱ���϶���������Ц�ɡ�
�����������ǵĽ��������������������𣿡�

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410450e195">
��������

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410460e196">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410470a06">
���������󡣡�

{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410480a06">
���ȸɵ�ʧȥ���Ƶ�����ʽ��
��Ȼ���ǽ�פ������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410490a06">
�������ϣ���

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410500e195">
�������ǣ���

{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/md04/0410510e196">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����¡��Ӥ�

	OnSE("se���L_����_��ͻ�M02", 1000);
	OnSE("se���L_����_��ͻ�M03", 1000);
	OnSE("se���L_����_��ͻ�M04", 1000);

	SetBlur("����飱/������0*", false, 1, 500, 100, false);
	MoveCamera("@����飱", 300, -1000, -300, @500, Axl1, false);

	Wait(100);

	Move("������01*", 2400, -380, @0, DxlAuto, false);

	Wait(2400);

/*
	Move("������02", 300, @-50, @-100, null, true);
	Move("������02", 300, @500, @10000, null, false);

	Move("������03", 300, @-50, @-100, null, true);
	Move("������03", 300, @500, @10000, null, false);

	Delete("������*");

	Move("@StL*", 800, @250, @0, null, true);

*/

	SetFwR("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410520a06">
�������ߡ�����

{	FwR("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410530a06">
������������
��������������Ρ���

{	FwR("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410540a06">
����Ҫս����󡭡���

{	FwR("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410550a06">
������������������ڡ�
������ų��֮�µ���������Ҳ���ü�����

{	FwR("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0410560a06">
�����ŵ�ʱ��ֻҪս��ս��ս��ʤ������
�������͹���!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��㑷����M��
	CreateColorEXadd("�}ɫ100", 1900, "WHITE");

	OnSE("se���L_����_�z_�ϵ�������01", 1000);
	Shake("������01a", 1000, 2, 3, 0, 0, 1000, Axl2, false);

	Fade("�}ɫ100", 1000, 1000, null, false);
	DrawTransition("�}ɫ100", 1000, 0, 1000, 300, Axl1, "cg/data/circle_05_00_0.png", false);

	Wait(500);

	OnSE("se���L_����_��ͻ�M02", 1000);

/*
	Move("@StL*", 300, @-50, @-100, null, true);
	Move("@StL*", 300, @500, @10000, null, false);
*/

	CreateColorSP("�\Ļ��", 30000, "#000000");
	DrawTransition("�\Ļ��", 150, 0, 1000, 200, null, "cg/data/slide_03_01_1.png", true);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);

	Wait(2000);

	ClearFadeAll(0,true);

}

..//������ָ��
//�Υե����롡"md04_042.nss"
