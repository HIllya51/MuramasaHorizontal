//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();		$GameContiune = 1;
		Reset();
	}

}

scene md04_033.nss_MAIN
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
	#bg101_С���龰_01=true;
	#bg102_��ź��龰_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_034.nss";

}

scene md04_033.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_032.nss"


//��С��
//���ƥ�åס�С����

/*
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

	SoundPlay("@mbgm35", 0, 1000, true);

	OnBG(100, "bg101_С���龰_04.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");

	CreateTextureEX("�ƥ�å�", 17000, @550, @500, "cg/sys/Telop/tp_С��.png");
	Fade("�ƥ�å�", 1000, 1000, null, true);
	WaitKey(1000);
	FadeDelete("�ƥ�å�", 2000, true);

	FadeDelete("�\Ļ��", 1500, true);

*/

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	OnBG(90, "bg001_��a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);

	CreateTextureSP("�Ϸ�", 10000, Center, Middle, "cg/bg/bg001_��a_01.jpg");
//	CreateTextureSPadd("��Դ100", 1000, Center, Middle, "cg/data/circle_04_00_1.png");
	Fade("��Դ100", 0, 700, null, true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg101_С���龰_01.jpg");
	Zoom("�}����50", 0, 1200, 1200, null, true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg101_С���龰_01.jpg");
	Zoom("�}����100", 0, 1400, 1200, null, true);
	Fade("�}����100", 0, 600, null, true);
	CreateTextureSP("�}����200", 100, Center, Middle, "cg/bg/bg101_С���龰_01.jpg");
	Zoom("�}����200", 0, 1200, 1200, null, true);
	DrawTransition("�}����200", 0, 600, 600, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("�}����100", 50, "LowWave ", 0, 100, null);
	DrawEffect("�}����100", 50, "SuperWave", 0, 200, null);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(1000);

	Move("�}����*", 20000, @-100, @0, null, false);
	FadeDelete("�Ϸ�", 2000, false);

	OnBG(90, "bg101_С���龰_01.jpg");
	FadeBG(0, true);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_С��.png",null);
	Wait(2500);

	SetNwH("cg/fw/ny�ǣȣѽ�У.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���˽�У��
<voice name="����㣯���˽�У" class="����������" src="voice/md04/0330010e219">
���������ˣ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ź�
//���ƥ�åס��źӡ�

/*
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



	CreateTextureEX("�ƥ�å�", 16000, @550, @500, "cg/sys/Telop/tp_�ź�.png");
	Fade("�ƥ�å�", 1000, 1000, null, true);
	

	OnBG(100, "bg102_��ź��龰_01.jpg");
	FadeBG(0, true);
	WaitKey(1000);
	FadeDelete("�ƥ�å�", 2000, true);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");
*/

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolume("@OnSE*", 1000, 0, null);
	Delete("�}����*");

	CreateTextureSP("�}����100", 200, Center, Middle, "cg/bg/bg102_��ź��龰_01.jpg");
	CreateTextureSP("�}����150", 200, Center, Middle, "cg/bg/bg102_��ź��龰_01.jpg");

	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 1500, 1500, null, true);

	OnBG(100, "bg102_��ź��龰_01.jpg");
	FadeBG(0, true);

	Move("�}����150", 20000, @-100, @0, null, false);

	DrawTransition("�\Ļ��", 500, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_�ź�.png",null);
	Wait(2500);

	FadeDelete("�}����150", 1000, true);


	SetNwH("cg/fw/ny�ǣȣѱ�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���˱�����
<voice name="����㣯���˱���" class="����������" src="voice/md04/0330020e220">
��׼�����ˡ�������

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯���˱��¡�
<voice name="����㣯���˱���" class="����������" src="voice/md04/0330030e221">
��û��
���ϱ������ˡ���

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯���˱�����
<voice name="����㣯���˱���" class="����������" src="voice/md04/0330040e220">
�������ֲ��ǻ�û�����𣿡�

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯���˱��¡�
<voice name="����㣯���˱���" class="����������" src="voice/md04/0330050e221">
��Ӧ�û�û�С���

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯���˱�����
<voice name="����㣯���˱���" class="����������" src="voice/md04/0330060e220">
����ΪʲôҪ���ˣ���

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯���˱��¡�
<voice name="����㣯���˱���" class="����������" src="voice/md04/0330070e221">
����֪������

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯���˱�����
<voice name="����㣯���˱���" class="����������" src="voice/md04/0330080e220">
������������

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯���˱��¡�
<voice name="����㣯���˱���" class="����������" src="voice/md04/0330090e221">
�����ˣ������˲��Ǻܺ����

{	NwH("cg/fw/ny�ǣȣѱ�ʿ��.png");}
//������㣯���˱�����
<voice name="����㣯���˱���" class="����������" src="voice/md04/0330100e220">
������Ҳ�ԡ�
�����ˣ������˾Ϳ����˰ɡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearFadeAll(1500,true);

}

..//������ָ��
//�Υե����롡"md04_034.nss"