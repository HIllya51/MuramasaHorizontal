//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_004.nss_MAIN
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
	#bg093_ɽ�g�δ�b_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_005.nss";

}

scene md01_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_003.nss"

//���塢����
//������鱯�Q���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 5000, "#000000");
	OnBG(100,"bg093_ɽ�g�δ�b_03.jpg");
	//OnBG(100,"bg093_ɽ�g�δ�b_03.jpg");
	CreateSE("SEL01","se����_����_��������_L");
	CreateSE("SEL01b","se����_����_���Q01");
	CreateProcess("�ץ�����", 150, 0, 0, "fire01");
	CreateProcess("�ץ�����", 150, 0, 0, "fire02");
	CreateProcess("�ץ�����", 150, 0, 0, "fire03");
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	MusicStart("SEL01b",2000,1000,0,1000,null,true);

/*
//��������ݳ����ƥ��Ȥǽ��餻�Ƥ��ޤ���
	//$SYSTEM_effect_drop_image = "cg/ef/��ä���_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/��ηۣ�.png";
	$SYSTEM_effect_drop_dencity = 30;
	$SYSTEM_effect_drop_speed = 3;
	$SYSTEM_effect_drop_swing = 30;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("�}������ۉ�", 2000, Center, Middle, 1030, 580, "Drop");
	SetAlias("�}������ۉ�","�}������ۉ�");
	Fade("�}������ۉ�", 0, 1000, null, true);

	//$SYSTEM_effect_drop_image = "cg/ef/��ä���_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/��η�2.png";
	$SYSTEM_effect_drop_dencity = 20;
	$SYSTEM_effect_drop_speed = 5;
	$SYSTEM_effect_drop_swing = 90;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("�}������ۏr", 2000, Center, Middle, 1030, 580, "Drop");
	SetAlias("�}������ۏr","�}������ۏr");
	Fade("�}������ۏr", 0, 1000, null, true);

	//$SYSTEM_effect_drop_image = "cg/ef/��ä���_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/��η�3.png";
	$SYSTEM_effect_drop_dencity = 10;
	$SYSTEM_effect_drop_speed = 10;
	$SYSTEM_effect_drop_swing = 180;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("�}������۲�", 2000, Center, Middle, 1030, 580, "Drop");
	SetAlias("�}������۲�","�}������۲�");
	Fade("�}������۲�", 0, 1000, null, true);

	//Zoom("�}�������*", 0, 2000, 2000, null, true);
	Request("�}�������*", AddRender);
	Rotate("�}�������*", 0, @0, @0, @-125, null,true);
*/

	WaitKey(2000);

	SetFwC("cg/fw/fw��������_߳��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������������
<voice name="��������" class="��������" src="voice/md01/0040010a15">
�����ף��Ѿ������ˣ�
�����˵���������һ���١���

//������������
<voice name="��������" class="��������" src="voice/md01/0040020a15">
��������ȥ��Ҷ��ᱻɱ�ģ���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040030b30">
�������ᡭ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL01b", 1000, 0, null);
	FadeDelete("�}��ܞ", 2000, true);

	StR(1000, @-30, @0,"cg/st/st��������_ͨ��_˽��.png");
	StL(1000, @0, @0,"cg/st/stʼ�����_ͨ��_˽��.png");

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0013]
//��������
<voice name="����" class="��������" src="voice/md01/0040040a01">
��ĸ�ף��ˡ�������

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0040050a15">
�����ġ�
��ֻ�Ǳ������˵��ˡ���

//������������
<voice name="��������" class="��������" src="voice/md01/0040060a15">
���������Ҫע�����Լ���
����ȼ���ŵ����ķ���ѹ������Ļ���
�ҾȲ����㡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0040070a01">
���ţ��š�����

{	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,false);
	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0040080a15">
�����ף���֮�����ȳ��˰ɡ�
���ӵ�����Ļ������Ǳ��޷�׷�ϡ���

{	FadeStL(300,false);
	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040090b30">
��������

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0040100a15">
�����ף���

{	FwC("cg/fw/fwʼ�����_ŭ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040110b30">
������Ϊʲô��
�������ľ����ܽ��������
�ⲻ���ܣ���

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040120b30">
����������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//���։�
	StL(1000, @30, @0,"cg/st/st�։�_ͨ��_˽��a.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�։�_�^����].png");

//�룺�����������ʤ�����090930��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0040130b16">
����Խ�������������Ͳ��ܵ�������𣿡�

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040140b30">
�����δ��ˡ�����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0040150b16">
����ô����������ʧ�ء���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040160b30">
�������ܣ�
�����ڣ��ػ������Ĳ��Ǳ��ˣ��Ǳ�����ˡ���

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040170b30">
�������Ļ���������һ������
Ҳ�ֿܵ����ա�����

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0040180b16">
�������ս��ȷʵ��ˡ�
�����粻��ս�����ֻ���������

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040190b30">
��ʲ��ʲô?!��

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0040200b16">
�����Ǳ�������ñ������ӳ���ֱ�롭����

{	FwC("cg/fw/fwʼ�����_ŭ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040210b30">
������Ц��!!��

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0040220b16">
��������

{	FwC("cg/fw/fwʼ�����_ŭ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040230b30">
����ȷ�ڵ�����˵�����˾���ǽͷ�ݡ�
��ʱ���򱱳���ʱ�����ϳ�������ʹ�档��

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040240b30">
�����Ǳ�����˲��ᣡ
����������

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040250b30">
������ֻ����������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0040260b16">
���������ˡ�����

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0040270a15">
���������ס�
������ûʱ�俼�ǡ���

//������������
<voice name="��������" class="��������" src="voice/md01/0040280a15">
�����ڱ������ܡ�
�������𡣸������ȵ۵Ĵ�گ��
��������͵�һ�Ľ��С���

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0040290a15">
������������ɥ������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0040300a01">
���⹫����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0040310b30">
�������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_005.nss"