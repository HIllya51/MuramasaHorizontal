//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_006.nss_MAIN
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
	#bg001_��a_03=true;
	#bg101_С���龰_04=true;
	#bg102_��ź��龰_04=true;
	#bg041_Ƭ������_01=true;
	#bg025_�ӵ�ɽ�}��ɭa_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_007.nss";

}

scene md04_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_005.nss"


//��ҹ�ա��糯��С��
//���ƥ�åס�С����
//�������`�󤺤��`���尶����Ş�h���


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	OnBG(90, "bg001_��a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);

	CreateTextureSP("�Ϸ�", 10000, Center, Middle, "cg/bg/bg001_��a_01.jpg");
//	CreateTextureSPadd("��Դ100", 1000, Center, Middle, "cg/data/circle_04_00_1.png");
	Fade("��Դ100", 0, 700, null, true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg101_С���龰_04.jpg");
	Zoom("�}����50", 0, 1200, 1200, null, true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg101_С���龰_04.jpg");
	Zoom("�}����100", 0, 1400, 1200, null, true);
	Fade("�}����100", 0, 600, null, true);
	CreateTextureSP("�}����200", 100, Center, Middle, "cg/bg/bg101_С���龰_04.jpg");
	Zoom("�}����200", 0, 1200, 1200, null, true);
	DrawTransition("�}����200", 0, 600, 600, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("�}����100", 50, "LowWave ", 0, 100, null);
	DrawEffect("�}����100", 50, "SuperWave", 0, 200, null);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);


/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
��
������������������һһ��������
������������������������ʱ���߷�

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/
	WaitKey(1000);

	SetFont("@����", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("��Ļ01",30411,Center,inherit,auto,auto,"һһ��������");
	Fade("��Ļ01", 0, 0, null, true);
	Request("��Ļ01",NoLog);
	Request("��Ļ01",PushText);
	Rotate("��Ļ01", 0, @0, @0, 90, null, false);
	Move("��Ļ01", 0, @300, @10, null, false);
	SetBacklog("һһ��������", null, null);

	CreateText("��Ļ02",30411,Center,inherit,auto,auto,"������ʱ���߷�");
	Fade("��Ļ02", 0, 0, null, true);
	Request("��Ļ02",NoLog);
	Request("��Ļ02",PushText);
	Rotate("��Ļ02", 0, @0, @0, 90, null, false);
	Move("��Ļ02", 0, @250, @10, null, false);
	SetBacklog("��ǰ��r���߷�", null, null);

	Move("�}����*", 20000, @-100, @0, null, false);
	FadeDelete("�Ϸ�", 2000, false);

	OnSE("se���L_�Ɖ�_�󱬰k01", 500);

	Fade("��Ļ*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("��Ļ*", 300, 0, null, true);
	Delete("��Ļ*");
/*
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100, "bg101_С���龰_04.jpg");
	FadeBG(0, true);
	WaitKey(1000);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");
*/


//	CreateTextureEX("�ƥ�å�", 16000, @550, @500, "cg/sys/Telop/tp_С��.png");
//	Fade("�ƥ�å�", 1000, 1000, null, true);

	OnSE("se����_����_���L_Ş�h���_L", 1000);

	CreateSE("SE01", "se����_����_������L��01_L");
	MusicStart("SE01", 2000, 500, 0, 1000, null,true);

	OnBG(90, "bg101_С���龰_04.jpg");
	FadeBG(0, true);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_С��.png",null);
	Wait(2500);

//	FadeDelete("�ƥ�å�", 2000, true);

	OnSE("se���L_�Ɖ�_�󱬰k01", 500);

	SetNwC("cg/fw/nwС��������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯С���B�j��
<voice name="����㣯С���B�j" class="����������" src="voice/md04/0060010e129">
��������С����������
���������ܵ���������Ľ�פ�����ӵ�
�ڻ���������

//������㣯С���B�j��
<voice name="����㣯С���B�j" class="����������" src="voice/md04/0060020e129">
���޷���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���źӤι⾰
//���ƥ�åס��źӡ�
//���ܩ`��ܩ`���w��Ş�ˤ�뱬��


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolume("@OnSE*", 1000, 0, null);
	Delete("�}����*");
	
	CreateSE("SE02", "se���L_�|��_�h�T����01");
	MusicStart("SE02", 50, 500, 0, 1000, null,false);

	CreateTextureSP("�}����100", 200, Center, Middle, "cg/bg/bg102_��ź��龰_04.jpg");
/*
	CreateTextureSP("�}����200", 200, Center, Middle, "cg/bg/bg102_��ź��龰_04.jpg");
	DrawTransition("�}����200", 0, 800, 800, 100, null, "cg/data/circle_10_00_1.png", true);
	DrawEffect("�}����100", 50, "LowWave ", 0, 100, null);
	Fade("�}����100", 0, 1000, null, true);

*/
	Shake("�}����*", 5000, 0, 1, 0, 0, 1000, null, false);

	OnBG(100, "bg102_��ź��龰_04.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");

	OnSE("se���L_�Ɖ�_�󱬰k01", 700);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_�ź�.png",null);
	Wait(2500);

	SetNwC("cg/fw/nw�źӹ�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�ź��B�j��
<voice name="����㣯�ź��B�j" class="����������" src="voice/md04/0060030e069">
�������ǹźӹ�������
����פ��ͻ�������ǵķ����������빫�����Ͽ�
��ʼ��ը����

//������㣯�ź��B�j��
<voice name="����㣯�ź��B�j" class="����������" src="voice/md04/0060040e069">
�����ڵо��ڿ���ռ���ơ�
������ͨ����Ϯ�ƻ��������ķ������ܣ�
������½��ս�����й�������

//������㣯�ź��B�j��
<voice name="����㣯�ź��B�j" class="����������" src="voice/md04/0060050e069">
���ҷ���״���޷�����������ǲԮ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//���ƥ�åס������亡�
//���ɩ`��ɩ`�󡣿ձ����h��
//���M�v܊Ş
//��������ܥå���

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	SetVolume("@OnSE*", 1000, 0, null);
	Delete("�}����*");

	CreateTextureSP("�}�������", 200, Center, Middle, "cg/bg/bg041_Ƭ������_01.jpg");
	CreateTextureEX("�}����100", 200, Center, Middle, "cg/ev/ev801_�����}����`�����Σ�_a.jpg");

//	CreateTextureEX("�ƥ�å�", 16000, @450, @500, "cg/sys/Telop/tp_������.png");
//	Fade("�ƥ�å�", 1000, 1000, null, true);
	OnBG(100, "bg041_Ƭ������_01.jpg");
	FadeBG(0, true);
//	WaitKey(1000);
//	FadeDelete("�ƥ�å�", 2000, true);
	OnSE("se����_����_���L_Ş�h���_L", 1000);

	Shake("�}�������", 5000, 0, 10, 0, 0, 1000, Dxl2, false);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");

	OnSE("se����_����_���L_�ձ�_L", 500);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_������.png",null);
	Wait(2500);

	Fade("�}����100", 1000, 1000, null, false);

	SetNwH("cg/fw/ny����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯Ş꠸��١�
<voice name="����㣯Ş꠸���" class="����������" src="voice/md04/0060060e041">
�������㡢��̨����ȫ��ը�١�
����Ҫ��Χ�ڵ�ˮ�ߵ��ϰ���Ҳȫ�������ϣ���

{	NwH("cg/fw/nyŞ�˾��.png");}
//������㣯Ş�˾�
<voice name="����㣯Ş�˾��" class="����������" src="voice/md04/0060070e040">
���á��ɳ�<RUBY text="�̣ӣ�">ս����½��</RUBY>��
��Ͷ���������׼����ѹ�д�ݵ㡣��

{	NwH("cg/fw/ny����.png");}
//������㣯Ş꠸��١�
<voice name="����㣯Ş꠸���" class="����������" src="voice/md04/0060080e041">
���ǡ���

{	NwH("cg/fw/nyŞ�˾��.png");}
//������㣯Ş�˾�
<voice name="����㣯Ş�˾��" class="����������" src="voice/md04/0060090e040">
����ʼ��½!!��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���̣ӣ�ǰ�M�������`��

//�������΍g��bg055��bg046�����ã����ޤ���bg025
//���ƥ�åס������΍g��
//������������������


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}����*");
	CreateTextureSP("�}����������`��", 1600, -200, middle, "cg/bg/resize/bg022_ɽ��b_01.jpg");
	Rotate("�}����������`��", 0, @0, @180, @0, null,true);

//	Fade("�ƥ�å�", 1000, 1000, null, true);
	OnBG(100, "bg025_�ӵ�ɽ�}��ɭa_01.jpg");
	FadeBG(0, true);
//	WaitKey(1000);
//	FadeDelete("�ƥ�å�", 2000, true);

	CreateSE("�Ф����Ф����", "se���L_�|��_ȭ�|�|�đ�01_L");
	MusicStart("�Ф����Ф����", 500, 500, 0, 1000, null,true);

	Shake("�}����������`��", 3000, 0, 10, 0, 0, 1000, Dxl2, false);
	Move("�}����������`��", 100000, -624, @0, null, false);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_�����΍g.png",null);
	Wait(2500);

	Shake("�}����������`��", 3000, 0, 8, 0, 0, 1000, Dxl1, false);

	SetNwC("cg/fw/nw�v�T�α�ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�����΍g����
<voice name="����㣯�����΍g��" class="����������" src="voice/md04/0060100e212">
������ֵ��������΍g���ţ�
���������ܵ���פ���Ĺ�������

//������㣯�����΍g����
<voice name="����㣯�����΍g��" class="����������" src="voice/md04/0060110e212">
���������֧Ԯ����

//������㣯�����΍g����
<voice name="����㣯�����΍g��" class="����������" src="voice/md04/0060120e212">
�����󡪡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������å���������
//���ɤ��`�󡣳h��
//���ܩ`�󡣴����w�����

	OnSE("se���L_�Ɖ�_�󱬰k01", 1000);
	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);

	CreateTextureEX("�ɤ��`��", 15000, @0, @0, "cg/ef/ef026_���ñ���.jpg");
	Rotate("�ɤ��`��", 0, @0, @180, @0, null,true);
	Fade("�ɤ��`��", 0, 1000, null, true);

	Shake("�ɤ��`��", 1000000, 1, 2, 0, 0, 1000, null, false);

	EffectZoomadd(16000, 5000, 1000, "cg/ef/ef026_���ñ���.jpg", false);

	DrawTransition("�\Ļ��", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", false);
	FadeDelete("�\Ļ��", 1500,false);
	Zoom("�ɤ��`��", 1500, 1500, 1500, Dxl1, true);
	Zoom("�ɤ��`��", 1500, 50500, 50500, Axl1, false);
	SetVolume("�Ф����Ф����", 2000, 0, null);
	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);

	ClearFadeAll(1500, true);
	Wait(1000);

}

..//������ָ��
//�Υե����롡"md04_007.nss"