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

scene md04_002.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md04_002.nss","TelopStart",true);
	Conquest("nss/md04_002.nss","TelopStartB",true);
	Conquest("nss/md04_002.nss","TelopDelete",true);
	

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
	#bg073_��a_01=true;
	#bg073_���ϴ��F����_01=true;
	#ev801_�����}����`�����Σ�_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_003.nss";

}

scene md04_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_001.nss"


//��ҹ
//����ģ�壨bg073�μӹ������⣿��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "WHITE");
	OnBG(100, "bg073_��a_01.jpg");

	CreateSE("SE01L","se��Ȼ_ˮ_��x�β�01_L");
	MusicStart("SE01L",3000,1000,0,1000,null,true);

//��������ݳ����Ϥ�ҹ�äƤ����Ƥ���Τˤʤ�����g�ˤʤäȤ�󤸤�`��
//	CreateTextureSPadd("��Դ100", 1000, Center, Middle, "cg/data/circle_04_00_1.png");
//	Fade("��Դ100", 0, 700, null, true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg073_��a_03.jpg");
	Zoom("�}����50", 0, 1200, 1200, null, true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg073_��a_03.jpg");
	Zoom("�}����100", 0, 1400, 1200, null, true);
	Fade("�}����100", 0, 600, null, true);
	CreateTextureSP("�}����200", 100, Center, Middle, "cg/bg/bg073_��a_03.jpg");
	Zoom("�}����200", 0, 1200, 1200, null, true);
	DrawTransition("�}����200", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("�}����100", 50, "LowWave ", 0, 100, null);
	DrawEffect("�}����100", 50, "SuperWave", 0, 200, null);


	FadeBG(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);

	FadeDelete("�ϱ���", 1000, true);

	Move("�}����*", 12000, @-100, @0, null, false);

	Zoom("��Դ100", 12000, 1300, 1300, null, false);
	Fade("��Դ100", 12000, 200, null, false);
	FadeDelete("�\Ļ��",2000,true);

	Wait(1000);


//�����ߣ�ӳ����Ļ�ݳ�
	LockVideo(true);

	SetFont("@����", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("��Ļ01",30411,Center,inherit,auto,auto,"����һ���ĩ���");
	Fade("��Ļ01", 0, 0, null, true);
	Request("��Ļ01",NoLog);
	Request("��Ļ01",PushText);
	Rotate("��Ļ01", 0, @0, @0, 90, null, false);
	Move("��Ļ01", 0, @300, @10, null, false);
	SetBacklog("����һ���ĩ���", null, null);


	SetFont("@����", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("��Ļ02",30411,Center,inherit,auto,auto,"���Ͷ��������꣯��¡��һ��");
	Fade("��Ļ02", 0, 0, null, true);
	Request("��Ļ02",NoLog);
	Request("��Ļ02",PushText);
	Rotate("��Ļ02", 0, @0, @0, 90, null, false);
	Move("��Ļ02", 0, @250, @10, null, false);
	SetBacklog("���Ͷ��������꣯��¡��һ��", null, null);

	LockVideo(false);

	Fade("��Ļ*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("��Ļ*", 300, 0, null, true);

	LockVideo(true);

	SetFont("@����", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("��Ļ01",30411,Center,inherit,auto,auto,"һһ��������");
	Fade("��Ļ01", 0, 0, null, true);
	Request("��Ļ01",NoLog);
	Request("��Ļ01",PushText);
	Rotate("��Ļ01", 0, @0, @0, 90, null, false);
	Move("��Ļ01", 0, @300, @10, null, false);
	SetBacklog("һһ��������", null, null);

	SetFont("@����", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("��Ļ02",30411,Center,inherit,auto,auto,"�����ʱ���߷�");
	Fade("��Ļ02", 0, 0, null, true);
	Request("��Ļ02",NoLog);
	Request("��Ļ02",PushText);
	Rotate("��Ļ02", 0, @0, @0, 90, null, false);
	Move("��Ļ02", 0, @250, @10, null, false);
	SetBacklog("�����ʱ���߷�", null, null);

	LockVideo(false);

	Fade("��Ļ*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("��Ļ*", 300, 0, null, true);

/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��
����������������һ���ĩ���
���������������Ͷ��������꣯��¡��һ��

��
������������������һһ��������

��
�����������������������ʱ���߷�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/



//��Ş�ϡ�bg073
//���ƥ�åס�Ļ܊Ѳ��Ş���N�Q��Ş�ϡ�

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("SE01L", 5000, 0, null);

	Delete("�}����*");
	Delete("��Ļ*");
	Delete("��Դ*");

	OnBG(100, "bg073_���ϴ��F����_03.jpg");
	FadeBG(0, true);

/*
	CreateTextureEX("�ƥ�å�", 16000, center, @500, "cg/sys/Telop/tp_�N�Q.png");
	Fade("�ƥ�å�", 1000, 1000, null, true);

	OnBG(100, "bg073_���ϴ��F����_03.jpg");
	FadeBG(0, true);
	WaitKey(1000);
	FadeDelete("�ƥ�å�", 2000, true);
*/
	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


	TelopStart(15000,3000,center,450,"cg/sys/Telop/tp_�N�Q.png",null);
	Wait(3000);

	StL(1000, @50, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	FadeStL(500, true);

	Wait(300);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020010e057">
����������������

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020020e057">
������������
���ɶ񡭡�Ҫ��֪������ֵ�࣬
����Ͳ���ͨ���ˡ�����

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020030e057">
��������Ϊ���ͻȻ��١����ɶ񡭡�
����������������

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020040e057">
������ʱ�򡭡�����ô˵���ţ���

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020050e057">
��������

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020060e057">
��������������ǣ�
�����֮�����ԡ�����

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020070e057">
��������

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020080e057">
��������������ʲô��������

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020090e057">
�������������벻�����ˡ���

{	NwC("cg/fw/nwŞ�d�o�T��.png");}
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020100e039">
������Ӣ�˼��ˬ��
��������ʿ��ս������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���˰�ʽ�o�T��

	OnSE("se����_�z_�l����02", 1000);
	StR(1000, @50, @0, "cg/st/3d�˰�ʽ�o�T��_����_ͨ��.png");
	Move("@StR*", 300, @-50, @0, Dxl1, false);
	FadeStR(300, true);

	Wait(200);
	Move("@StL*", 300, @-50, @0, Dxl1, false);
	Shake("@StL*", 300, 3, 0, 0, 0, 1000, Dxl2, false);


	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020110e057">
���ۣ�
���С�����ξ���ˣ���

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020120e057">
���ǳ���Ǹ����

{	NwC("cg/fw/nwŞ�d�o�T��.png");}
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020130e039">
�����õ�Ǹ��
���Ͼ��㻹<RUBY text="��">û</RUBY>˯�š���

//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020140e039">
����Ҫ�������������ɾ�˵�����ˡ���

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020150e057">
���ǡ����ǣ���

{	NwC("cg/fw/nwŞ�d�o�T��.png");}
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020160e039">
������½�����ε��𣿡�

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020170e057">
�����泤�١���
���¹�һֱ�Ǻ�������

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020180e057">
���Ǹ�����Ϊ���������½��������

{	NwC("cg/fw/nwŞ�d�o�T��.png");}
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020190e039">
������
�����Ҽ�һ���𡭡���

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020200e057">
��������ξ����Ҳ�ǣ���

{	NwC("cg/fw/nwŞ�d�o�T��.png");}
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020210e039">
���š�
���ҵܵܡ�����

//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020220e039">
���������ڴ�Ҷ����������ޡ���

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020230e057">
�������ǡ���

{	NwC("cg/fw/nwŞ�d�o�T��.png");}
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020240e039">
���������˻����ʫ�����һ������ȥ�ˡ���

//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020250e039">
����������˵�ǹ�ȥ�����������갡��
�����ս������������Ļ����Ϊ����֮��
�š������ꡣ��

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020260e057">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwŞ�d�o�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020270e039">
���㻹�Ǳ���˯�ˡ���

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020280e057">
���ǣ���

{	NwC("cg/fw/nwŞ�d�o�T��.png");}
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020290e039">
��ʱ����Ҫ���ˡ�
��ƽ�ȵ�ʱ������<RUBY text="����">�ֽ�</RUBY>��������

//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020300e039">
����ģ������Ҳ��������

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020310e057">
�����ǡ���
��Ҫ�ͽ�פ����������

{	NwC("cg/fw/nwŞ�d�o�T��.png");}
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020320e039">
������������

//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020330e039">
����ȥ��һȦ����

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020340e057">
����ʲô����֮���𣿡�

{	NwC("cg/fw/nwŞ�d�o�T��.png");}
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020350e039">
������
��ֻ�ǡ������ü�����������

//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020360e039">
������̽����ʲô��Ӧ�𣿡�

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020370e057">
������ûʲô����

{	NwC("cg/fw/nwŞ�d�o�T��.png");}
//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020380e039">
�����𡭡���

//������㣯Ş�d�T��
<voice name="����㣯Ş�d�T" class="����������" src="voice/md04/0020390e039">
����ô���Ҵ���Ǳ��Լ��Ļ�Ӱ���ˡ�����
�ɱ���
�����������ϻ�������

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020400e057">
���ǡ���

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020410e057">
����ξ���ˣ�����С�ġ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф����o�T�������줿
	Wait(500);
	SetVolume("@mbgm*", 1000, 0, null);

	CreateSE("ܞ��", "se���L_�n��_�zܞ��03");
	MusicStart("ܞ��", 0, 1000, 0, 1000, null,false);

	Shake("@StR*", 200, 5, 0, 0, 0, 1000, null, true);
	Move("@StR*", 300, @50, @100, Axl2, false);
	DeleteStR(300,true);

	WaitKey(1500);

	SetVolume("ܞ��", 1000, 0, null);


	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020420e057">
��������

{	NwC("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020430e057">
���С���ξ���ˣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ѫ

/*
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
*/
	CreateTextureEX("����Ѫ", 1000, @0, @0, "cg/ef/ef004_����Ѫ�~.jpg");
	Fade("����Ѫ", 500, 1000, null, true);

	CreateSE("Ѫ", "se����_Ѫ_�����01");
	MusicStart("Ѫ", 0, 1000, 0, 1000, null,false);

/*
	DrawTransition("�\Ļ��", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");
*/

	Wait(500);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020440e057">
������������

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020450e057">
��Ѫ����

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020460e057">
��������ô���ܣ�ΪʲôͻȻ��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á�
//���ӣԣ�������`�����`���`
	DeleteStA(0,true);
	FadeDelete("����Ѫ", 500, true);
	Wait(500);

	OnSE("se����_�z_�l����01", 1000);

	StC(1000, @50, @0, "cg/st/3d��`�����`���`_����_�i��.png");
	Move("@StC*", 1000, @-50, @0, Dxl2, false);
	FadeStC(1000, true);

	Wait(500);

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 6050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 6100, -100, -344, "cg/bg/bg073_���ϴ��F����_03.jpg");
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	CreateTextureEX("�}�ݷ���/�}���}", 6200, -750, -465, "cg/st/resize/3d��`�����`���`_����_�i��l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	OnSE("se����_����_�z�i��03",1000);

	Move("�}�ݷ���/�}�ݱ���", 2000, @-100, @0, Dxl2, false);
	Move("�}�ݷ���/�}���}", 2000, -950, @0, Dxl2, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	Wait(1500);


	SoundPlay("@mbgm21", 0, 1000, true);

	SetNwR("cg/fw/nw�ǣȣѸo�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯���u�T��
<voice name="����㣯���u�T" class="����������" src="voice/md04/0020470e043">
��������

{	NwR("cg/fw/nw������.png");}
//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020480e057">
��������������������

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020490e057">
��ռ������פ���������������

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020500e057">
��ƭ��ƭ�˵İɣ�
������̽����û���κη�Ӧ��!?��

//������㣯��̽����
<voice name="����㣯��̽��" class="����������" src="voice/md04/0020510e057">
��Ϊʲô������

//��Have a good dream
{	NwR("cg/fw/nw�ǣȣѸo�T��.png");}
//������㣯���u�T��
<voice name="����㣯���u�T" class="����������" src="voice/md04/0020520e043">
��ף���Ρ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Щ`���ؚ�



	OnSE("se���L_����_Ұ̫�����01",1000);
	CreateTextureEX("�}����500", 10000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureEX("�}����600", 10000, Center, Middle, "cg/ef/ef006_����Ѫ���֤�.jpg");

	Fade("�}����500", 0, 1000, null, true);
	EffectZoomadd(10000, 500, 100, "cg/data/beam_03_00_1.png", true);

	DeleteStL(0,true);
	FadeDelete("�}ɫ100", 0, false);
	FadeDelete("�}�ݷ���*", 0, true);
	Delete("�}�ݷ���*");

	OnSE("se���L_����_���̤���05", 1000);
	Fade("�}����600", 0, 1000, null, true);
	DrawTransition("�}����600", 200, 0, 1000, 100, null, "cg/data/slide_04_01_1.png", true);


	FadeDelete("�}����500", 300, true);

	WaitKey(1500);

	OnSE("se����_�n��_ܞ��03",1000);

	FadeDelete("�}����600", 1000, true);



	SetNwR("cg/fw/nw�ǣȣѸo�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����`���롤�ȥ��������ꥣ
//��Eagle to Aerie
//������㣯���u�T��
<voice name="����㣯���u�T" class="����������" src="voice/md04/0020530e043">
����������н���˾�����

//��Mission Complete
//������㣯���u�T��
<voice name="����㣯���u�T" class="����������" src="voice/md04/0020540e043">
�������������

//������㣯���u�T��
<voice name="����㣯���u�T" class="����������" src="voice/md04/0020550e043">
����������н���˾�����

//������㣯���u�T��
<voice name="����㣯���u�T" class="����������" src="voice/md04/0020560e043">
���������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���M�v܊��Ş���M��

	CreateColorSP("�\Ļ��", 30000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreateSE("SE01", "se�\��_��Ş_���01");
	CreateSE("SE02", "se���L_�|��_�h�T����01");

	CreateTextureEX("��", 16000, @0, @0, "cg/ev/ev801_�����}����`�����Σ�_b.jpg");
	Request("��", Smoothing);
	Zoom("��", 0, 1200, 1200, null, true);
	Fade("��", 0, 1000, null, true);

	MusicStart("SE01", 1000, 1000, 0, 1000, null,true);
	Zoom("��", 5000, 1000, 1000, null, false);
	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("�\Ļ��");

	MusicStart("SE02", 0, 1000, 0, 1000, null,false);
	Wait(1500);

//���h�ġ����������ɤ��`��

	OnSE("se���L_�Ɖ�_���k06",1000);

	CreateColorSPadd("�}ɫ100", 25000, "WHITE");
	DrawTransition("�}ɫ100", 500, 0, 1000, 100, Axl3, "cg/data/circle_01_00_0.png", true);

	Delete("@��");


//�����ߣ��زĶ��x
	CreateTextureEX("�}����400", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEX("�}����500", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateColorEXadd("�}ɫ100", 17500, "WHITE");
	Request("�}����400", Smoothing);
	Request("�}����500", Smoothing);
	Zoom("�}����400", 0, 2000, 2000, null, true);
	Zoom("�}����500", 0, 1200, 1200, null, true);
	SetBlur("�}����500", true, 3, 200, 70, false);

	CreateSE("SE05","se���L_�Ɖ�_�󱬰k01");


//�����ߣ����k����
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 150, 0, null, false);
	Fade("�}����400", 0, 1000, null, true);
	DrawTransition("�}����400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	Move("�}����400", 0, -312, -100, null, true);
	Wait(50);
	Move("�}����400", 0, -350, -150, null, true);
	Wait(50);
	Move("�}����400", 0, -510, -120, null, true);

	Fade("�}ɫ100", 50, 1000, null, true);
	Delete("�}����200");
	Delete("�}����400");
	CP_AllDelete();

	Fade("�}����500", 0, 1000, null, true);
	Zoom("�}����500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_���ñ���.jpg", false);
	FadeDelete("�}ɫ100", 2000, true);


	SetVolume("SE*", 1000, 0, null);


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md04_003.nss"


function TelopStart(�����ȶ�,$f�ƥ�å��軭�r�g,X����,Y����,$f�ƥ�å׻���,$f�ƥ�åץƥ��)
{

/*
	CreateColor("f�\Ļ�ƥ�å�", �����ȶ�, 0, 0, 1024, 576, "BLACK");
	SetAlias("f�\Ļ�ƥ�å�","f�\Ļ�ƥ�å�");
	Fade("f�\Ļ�ƥ�å�", 0, 0, null, true);
	Zoom("f�\Ļ�ƥ�å�", 0, 1000, 200, null, true);
	Move("f�\Ļ�ƥ�å�", 0, X����, Y����, null, true);
*/
	CreateTexture("f�ƥ�å׻���ʥå�", �����ȶ�, X����, Y����, $f�ƥ�å׻���);
	SetAlias("f�ƥ�å׻���ʥå�","f�ƥ�å׻���ʥå�");
	Fade("f�ƥ�å׻���ʥå�", 0, 0, null, true);

	CreateProcess("functon�ƥ�åץץ���", 150, 0, 0, "TelopStartB");
	SetAlias("functon�ƥ�åץץ���","functon�ƥ�åץץ���");
	Request("functon�ƥ�åץץ���", Start);

}

function TelopStartB()
{
	Fade("@f�\Ļ�ƥ�å�", 1000, 500, $f�ƥ�åץƥ��, false);
	Fade("@f�ƥ�å׻���ʥå�", 1000, 1000, $f�ƥ�åץƥ��, true);
	Wait($f�ƥ�å��軭�r�g);
	Fade("@f�\Ļ�ƥ�å�", 1000, 0, $f�ƥ�åץƥ��, false);
	Fade("@f�ƥ�å׻���ʥå�", 1000, 0, $f�ƥ�åץƥ��, true);
	Delete("@f�ƥ�å׻���ʥå�");
	Request("@functon�ƥ�åץץ���", Stop);

}

function TelopDelete(�軭�r�g,$f�ƥ�åץƥ��)
{

	Fade("@f�ƥ�å׻���ʥå�", �軭�r�g, 0, $f�ƥ�åץƥ��, true);
	Delete("@f�\Ļ�ƥ�å�");
	Delete("@f�ƥ�å׻���ʥå�");
	Delete("@functon�ƥ�åץץ���");

}