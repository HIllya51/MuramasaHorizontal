//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_021.nss_MAIN
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
	#bg099_������Τ褦��Ұԭ��ɽ_01=true;
	#bg001_��c_03=true;
	#bg007_��m��·a_01=true;
	#bg010_���������Q_01=true;
	#bg057_���ӘS������_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_022.nss";

}

scene md02_021.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_020.nss"


//�����`������ʱ���
//���£ǣͣ����״�����
//�������¥��`�󡢥ҥ����ȫ�T�ãֱ����Ϥǣ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg099_������Τ褦��Ұԭ��ɽ_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������

������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md02/0210010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ʲô�ط���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm29", 0, 1000, true);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�����ξ���
<voice name="����㣯�����ξ�" class="����������" src="voice/md02/0210020e159">
������������Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ϥ������ﴨ�����ԥ�ԥ�ǈ�

	CreateTextureEX("�}st100", 1000, Center, InBottom, "cg/rec/stRec_�ߥ�����.png");
	SetVertex("�}st100", center, bottom);
	Move("�}st100", 0, @+200, @0, null, true);
	Zoom("�}st100", 0, 900, 900, null, true);
	Request("�}st100", Smoothing);
	Fade("�}st100", 300, 1000, null, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md02/0210030a00">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0210040a00">
�����Ǻη���ʥ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}st200", 1000, Center, InBottom, "cg/rec/stRec_�ߥ�����.png");
	SetVertex("�}st200", center, bottom);
	Zoom("�}st200", 0, 1200, 1200, null, true);
	Move("�}st200", 0, @+200, @+200, null, true);
	Request("�}st200", Smoothing);

	FadeDelete("�}st100",200,true);

	Move("�}st200", 3000, @0, @-30, AxlDxl, false);
	Fade("�}st200", 200, 1000, null, true);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0051]
//������㣯�����ξ���
<voice name="����㣯�����ξ�" class="����������" src="voice/md02/0210050e159">
��������Ľ��С���
����������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,50);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("voice01",30411,Center,inherit,auto,auto,"�����!!��");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @10, @10, null, false);

	SetBacklog("�����!!��", "voice/md02/0210060a00", ����);
	CreateTextureEX("�01", 30400, 451, 4, "cg/fw/fw����_ŭ��b.png");

	CreateTextureSP("�}����100", 200, Center, Middle, "cg/bg/bg099_������Τ褦��Ұԭ��ɽ_01.jpg");

	Move("�}st200", 0, @0, @0, AxlDxl, false);

	Shake("�}st200", 500, 10, 5, 0, 0, 750, Dxl1, false);
	Shake("�}����100", 500, 10, 5, 0, 0, 750, Dxl1, false);

	Fade("�01", 0, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("�01", 150, false);
	Fade("@boxCT", 150, 0, null, true);

*/

//������󡸥Х��������e�η����ǻرܤ��Ƥ��������ɡ����}���ä��錝�I���

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���޴�ե����
//��������
<voice name="����" class="����" src="voice/md02/0210060a00">
<FONT size="40">��ƭ��!!��</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE01","se�M��_���ߥ���_���k01");
	CreateColorEXadd("�}ɫ��", 4900, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 300, 1000, Axl2, true);

	Wait(500);

	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);
	Delete("�}ɫ��");

	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	Delete("�}����100");
	Delete("�}st200");
	Delete("@OnBG*");
	OnBG(100, "bg001_��c_03.jpg");
	FadeBG(0, true);
	FadeDelete("�\Ļ��",1500,true);

//���ݸ����ϡ�������ҹ�դ���������
//����ȶ�������
	SoundPlay("@mbgm30", 0, 1000, true);



	SetFwC("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���⡿
<voice name="��" class="��" src="voice/md02/0210070a14">
���ޡ��ƺ�Ū���˺ܶ��¡���

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210080a07">
���������£����ڸ�ʲô��
�������ݶ��ϡ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210090a14">
������谡��
��ûʲô����ֻ������ϸ�ز�һ�¾�����
Ů�Ե�ϲ�û���������֮�ࡣ��

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210100a14">
�����ò����ǱߵĴ������ֵ�΢��������
�����Σ������ҳ�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210110a07">
���������ƺ�ʲô���ܰ쵽����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210120a14">
����̫���ײ������ء�
������������Ҫ���������������͵�������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210130a14">
���Է�����������ڵĻ��ͼ򵥶��ˡ�
������ô���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��ȶ���

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210140a07">
����Ҳ�����ˡ���

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md02/0210150a15">
��ϰ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ȳ衩��

	SetFwC("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���⡿
<voice name="��" class="��" src="voice/md02/0210160a14">
���š����ˡ�
�����á���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210170a14">
������裬������æ����

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210180a07">
�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���`�}�н�

	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	Delete("@OnBG*");
	OnBG(100, "bg007_��m��·a_01.jpg");
	FadeBG(0, true);

	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);

	SetFwH("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md02/0210190a00">
������������

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����������

����������������ѧ��·��

����ѧ��·��

���������ˡ�
��������ѧ��;�С�

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ݸ�

	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	Delete("@OnBG*");
	OnBG(100, "bg001_��c_03.jpg");
	FadeBG(0, true);

	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���⡿
<voice name="��" class="��" src="voice/md02/0210200a14">
���ã���αȽ�˳������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210210a07">
��˵��������ѧ���Ŷε��ΰ���
���Ǵ����￪ʼ���������𣿡�

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210220a14">
����Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���н�
	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	Delete("@OnBG*");
	OnBG(100, "bg007_��m��·a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm29", 0, 1000, true);
	FadeDelete("�\Ļ��",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����㡣
������˯��ͷ�ˣ�ʱ���е����

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä��ä���

//�����} inc�Ѿ�
//	StL(1000, @0, @0, "cg/st/stһ��_ͨ��_�Ʒ�.png");
//	StR(900, @0, @0, "cg/st/st����_ͨ��_˽��.png");
//	FadeStL(300, false);
//	FadeStR(300, false);

	SetNwH("cg/fw/ny������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��ã�ʹ�鷺�ͩ`��ãǡ��ߤ�Ůѧ����
//������㣯�ҥ������
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0210230e011">
�����ˣ����ˣ�
��Ҫ�ٵ��ˡ�������

{	FwH("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0210240a00">
��������

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��ǰ����
��ת�Ǵ���
���Ų�����
�����뼫����������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	DeleteStA(0,true);
//	DeleteStA(0,false);
//���w�ӳ����ҥ��󥭥�顣�ν�������ȫ��⥶����
//���ܤ��뾰��
//�����������o�j�����ä��������ݳ���
//�������`������


//������ inc�Ѿ�

	CreateWindow("mad", 150, 0, 138, 1024, 300, true);
	SetAlias("mad","mad");

	CreateTextureEX("mad/pic", 1000, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");
	Zoom("mad/pic", 0, 1500, 1500, null, true);
	SetShade("mad/pic", HEAVY);
	CreateTextureEX("mad/st100", 1000, Center, Middle, "cg/rec/bu�Ʒ����å�.png");
	Rotate("mad/st100", 0, @0, @180, @0, null,true);
	Move("mad/st100", 0, @-1000, @-250, null, true);


	Move("mad/pic", 300, @+100, @0, Dxl1, false);
	Fade("mad/pic", 300, 1000, null, true);

	CreateSE("SE02","se����_����_�ߤ�03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("mad/st100", 800, @+2500, @0, Dxl1, false);
	Fade("mad/st100", 300, 1000, null, true);

	Wait(500);

	CreateWindow("Window", 150, 0, 0, 1024, 576, false);
	SetAlias("Window","Window");
	CreateTextureEX("Window/pic", 3000, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");
	Zoom("Window/pic", 0, 2000, 2000, null, true);
	Move("Window/pic", 0, @-200, @+100, null, true);
	SetShade("Window/pic", MEDIUM);

	Fade("Window/pic", 300, 1000, null, true);

	CreateColor("�\Ļ��", 10000, 0, 0, 1024, 150, "Black");
	CreateColor("�\Ļ��", 10000, 0, 300, 1024, 400, "Black");
	Fade("�\Ļ��", 0, 0, null, true);
	Fade("�\Ļ��", 0, 0, null, true);


	CreateTextureEX("Window/�}k01", 3200, Center, Middle, "cg/rec/fw����_ͨ��a_ex.png");
	Request("Window/�}k01", Smoothing);
	CreateTextureEX("Window/�}k02", 3300, Center, Middle, "cg/rec/fw����_ŭ��a_ex.png");
	Request("Window/�}k02", Smoothing);

	Move("Window/�}k02", 0, @+200, @0, null, true);

	Move("Window/�}k01", 300, @+200, @0, Dxl1, false);
	Fade("Window/�}k01", 300, 1000, null, true);

	Wait(50);

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 1, null);


	OnSE("se����_������_������Y",1000);
	Fade("�\Ļ��", 100, 800, null, false);
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", false);
	Fade("�\Ļ��", 100, 800, null, false);
	DrawTransition("�\Ļ��", 500, 300, 1000, 100, null, "cg/data/slide_02_00_1.png", false);

	Fade("Window/�}k02", 100, 1000, null, true);
	Delete("Window/�}k01");

	Wait(300);

	CreateColorEX("�}ɫ100", 30000, "Black");

	Fade("�}ɫ100", 300, 1000, null, true);

	Delete("�\Ļ*");
	Delete("Window/*");
	Delete("Window");

	Delete("mad/*");
	Delete("mad");

	CreateColorSP("�}ɫ200", 500, "Black");

	Delete("�}ɫ100");

	CreateWindow("su", 1500, 0, 150, 1024, 200, false);
	SetAlias("su","su");

	CreateTextureEX("su/�}����100", 1000, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");

	CreateTextureEX("su/st200", 1000, Center, Middle, "cg/st/resize/st����_ͨ��_˽��m.png");

	CreateTextureEX("su/st100", 1000, Center, -300, "cg/rec/bu�Ʒ����å�.png");
	Zoom("su/st100", 0, 500, 500, null, true);
	Rotate("su/st100", 0, @0, @180, @0, null,true);
	Request("su/st100", Smoothing);

	Move("su/st100", 0, @-500, @0, null, true);
	Move("su/st200", 0, @+500, @0, null, true);

	Move("su/st100", 300, @+200, @0, Dxl1, false);
	Move("su/st200", 300, @-200, @0, Dxl1, false);

	CreateSE("SE01","se����_����_�ߤ�03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("su/*", 0, 1000, null, false);
	DrawTransition("su/*", 300, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	Move("su/st100", 300, @+200, @0, AxlDxl, false);
	Move("su/st200", 300, @-200, @0, AxlDxl, false);

	SetVolume("@SE01", 0, 1, null);

	OnSE("se����_����_���S01",1000);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Wait(250);
	Fade("�ե�å����",0,1000,null,true);

	SetBlur("su/st200", true, 3, 500, 100, false);

	Zoom("su/st200", 0, 900, 900, null, true);
	Move("su/st100", 1, @+100, @0, null, false);
	Move("su/st200", 1, @-100, @+10, null, true);

	Zoom("su/st200", 500, 1000, 1000, null, false);
	Move("su/st200", 1000, @-150, @-10, Dxl1, false);
	Move("su/st100", 500, @+1000, @0, null, false);

	SetVolume("@SE01", 200, 1000, null);

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	CreateColorEX("�}ɫ100", 15000, "Black");
	Fade("�}ɫ100", 300, 1000, null, true);
	Delete("su/*");
	Delete("su");
	Delete("�}ɫ200");

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");

	SetVolume("@mbgm*", 300, 1000, null);
	FadeDelete("�}ɫ100", 300, true);


	SetFwH("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md02/0210250a00">
������������

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����ô��ȥѧУ�ɡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ݸ�

//	PrintBG("�ϱ���", 30000);

	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	DeleteStA(0,true);
	Delete("@OnBG*");
	Delete("�}����100");
	OnBG(100, "bg001_��c_03.jpg");
	FadeBG(0, true);

//	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210260a07">
��������ʲô�������������������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210270a14">
���������ǵ�Ȼ��
���Ծ����ı��죬���̶ֳȵĳ�ײ��
�����۾�Ҳ�ض���֪������

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210280a07">
���������������𣿡�

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210290a14">
������ּ��̫һ���ˡ�ʲô����Ҳû���ɡ�
����һ���ɣ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210300a07">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѧУ
//�����`�󤳩`�󤫩`�󤳩`��

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	DeleteStA(0,true);
	Delete("@OnBG*");
	OnSE("se�ճ�_ѧУ_���㥤��01", 1000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg010_���������Qb_01.jpg");

	SoundPlay("@mbgm29", 0, 1000, true);

	FadeDelete("�\Ļ��",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����á�
����Ȼʱ�����е�Σ�գ��������û�ٵ���

����ΧҲ�м���ͬ������������ѧ����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ҥ��󥭥�顣�ϥ��ξv���ä��ã��˥⥶����

	SetNwH("cg/fw/ny�̎�.png");

	CreateTextureEX("�}st10", 150, Center, InBottom, "cg/rec/stRec_���ﴨ_Ц��.png");
	Move("�}st10", 0, @+230, @0, null, true);

	Move("�}st10", 300, @-100, @0, Dxl1, false);
	Fade("�}st10", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//������㣯���̎���
<voice name="����㣯���̎�" class="����������" src="voice/md02/0210310e275">
��ι����ٵ��ˣ�
��������ߣ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}st100", 200, Center, InBottom, "cg/rec/stRec_�Ʒ����02.png");
	CreateTextureEX("�}st200", 300, Center, InBottom, "cg/rec/stRec_�Ʒ����01.png");
//	Move("�}st100", 0, @-200, @0, null, true);
//	Move("�}st200", 0, @-200, @0, null, true);
	Shake("�}st100", 300, 0, 5, 0, 0, 500, null, false);
	Fade("�}st100", 300, 1000, null, true);

	SetNwH("cg/fw/ny�W�̤�Ůѧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0201]
//��ã�ʹ�鷺�ͩ`��ãǡ��W�̤�Ůѧ����
//������㣯�ҥ���¡�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0210320e012">
��������ô�ᣡ
����ʦ���Ź��Ұɡ�������

{	NwH("cg/fw/ny�̎�.png");}
//������㣯���̎���
<voice name="����㣯���̎�" class="����������" src="voice/md02/0210330e275">
�����С���
�������������ź��ɣ�����������Ϊֹ��
û�гٵ��İ�����

{	NwH("cg/fw/ny�̎�.png");}
//������㣯���̎���
<voice name="����㣯���̎�" class="����������" src="voice/md02/0210340e275">
���ɼ����õ�������Ψһ��ȡ֮��Ҳû�ˣ�
��ְ����ѧ�Ͳ���̸�ˣ�
��������������������!!��

{	Fade("�}st200", 250, 1000, Dxl1, false);
	Fade("�}st100", 250, 0, Axl1, false);
	NwH("cg/fw/ny�W�̤�Ůѧ��.png");}
//������㣯�ҥ���¡�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0210350e012">
����������
����Ҫ������������

{	NwH("cg/fw/nyѧ����.png");}
//������㣯�����ӣ���
<voice name="����㣯�����ӣ�" class="����������" src="voice/md02/0210360e276">
�����������������������

{	NwH("cg/fw/nyѧ����.png");}
//������㣯�����ӣ¡�
<voice name="����㣯�����ӣ�" class="����������" src="voice/md02/0210370e277">
���ųٵ���������ɣ�
���������ԷŹ��ġ���

{	NwH("cg/fw/nyѧ����.png");}
//������㣯�����ӣ���
<voice name="����㣯�����ӣ�" class="����������" src="voice/md02/0210380e276">
����Ҫ����ô�룬��ȥ����������

{	NwH("cg/fw/nyѧ����.png");}
//������㣯�����ӣ¡�
<voice name="����㣯�����ӣ�" class="����������" src="voice/md02/0210390e277">
���Ų�Ҫ��
���������յ���ʦ���Ͼ����ˡ�����

{	FwH("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0210400a00">
������������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ҥ�����ȥ
	FadeDelete("�}st10", 300, false);
	FadeDelete("�}st200", 300, true);
	Delete("�}st100");

	CreateSE("SE01","se����_����_����������_L");
	MusicStart("SE01",500,1000,0,1000,null,false);

	Wait(1000);

	SetVolume("SE01", 3000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��������ô��
�����ǿ��ȥ���Ұɡ�

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ݸ�
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	OnBG(100, "bg001_��c_03.jpg");
	FadeBG(0, true);

	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw�衩��_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210410a07">
��ʲô���¶�û�����ء���

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210420a14">
��ԭ����ˡ���
��������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210430a07">
���������£���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210440a14">
���ٵ����ǳٵ�����Ȼ���ǳٵ����˲��ԡ�
�����ӱ��濴�������������ʦ�Ĳ��ԡ�
���Ǵ�ġ���

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210450a14">
�����������ѳٵ����ܵĳͷ������Ի��
��Ů������������������Ӱ��ɡ�
���������ǵ����ⷽ�桭����

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210460a14">
������Ȼ��ӹ�׵��˲�һ����
�������������֮��Ľ���ʮ����ȷ�����ˡ���

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210470a07">
��ŶŶŶŶŶ��
���Ǿ���˵������ȥ�Ƕ���Ůѧ���������ˣ�
��ʵ���ϸ�������ľ����������������������

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210480a14">
��û����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210490a07">
���Ǻ��°�������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210500a14">
��ȷʵ�Ǻ��¡���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0210510a07">
���ǣ����Ǳ�����Ŀ��ȥ�Ķ��ˣ���

{	FwC("cg/fw/fw��_�֤�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0210520a14">
��ȥ�Ķ��˰���
��û�취���ٴӱ�ĽǶ����Կ��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//�����ޥ��Λ_��

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	DeleteStA(0,true);
	Delete("@OnBG*");

//�����}��inc�Ѿ�
	OnBG(100, "bg057_���ӘS������_01.jpg");
	FadeBG(0, true);

//	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);

	StC(1000, @0,@0,"cg/rec/stRec_ͨ��.png");
	FadeStC(300,true);

	SetNwH("cg/fw/nyѧ�����L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��ã�ʹ�鷺�ͩ`��ãǡ�ѧ�����L��
//������㣯�ҥ���á�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0210530e013">
����ѽ��
���ն������簡����

{	FwH("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0210540a00">
��ѧ����᳤��
�����硣��

{	StC(1000, @0,@0,"cg/rec/stRec_ŭ��a.png");
	FadeStC(300,false);
	NwH("cg/fw/nyѧ�����L.png");}
//������㣯�ҥ���á�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0210550e013">
�����ʱ�����Ű����ߣ�����˵
������ǿ�����ˣ�
��������ɢ���˰�����

{	FwH("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0210560a00">
��ȷʵû��ʲô�ýƱ�ġ���

{	NwH("cg/fw/nyѧ�����L.png");}
//������㣯�ҥ���á�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0210570e013">
�������ٵ����ɼ��½��ø��졣
��һ��ֻ��һ�ε�ѧ������
����������־���ضȹ���
�����ÿɳ��𣿡�

{	FwH("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0210580a00">
����Ҳ��ô�롣��

{	StC(1000, @0,@0,"cg/rec/stRec_ŭ��b.png");
	FadeStC(300,false);
	NwH("cg/fw/nyѧ�����L.png");}
//������㣯�ҥ���á�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0210590e013">
���Ҿ�����������ĥĥ���������ˡ���

{	FwH("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0210600a00">
����Ӧ���ᡣ��

{	StC(1000, @0,@0,"cg/rec/stRec_ͨ��.png");
	FadeStC(300,false);
	NwH("cg/fw/nyѧ�����L.png");}
//������㣯�ҥ���á�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0210610e013">
���������ð�����������ú�����ɡ���

{	FwH("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0210620a00">
���ǣ���

{	StC(1000, @0,@0,"cg/rec/stRec_ŭ��b.png");
	FadeStC(300,false);
	NwH("cg/fw/nyѧ�����L.png");}
//������㣯�ҥ���á�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0210630e013">
��ʲô��
����ʲôԹ���𣿡�

{	FwH("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0210640a00">
����ȫû�С���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500,1500);

..//������ָ��
//�Υե����롡"md02_022.nss"



}


