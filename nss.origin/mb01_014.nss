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

scene mb01_014.nss_MAIN
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
	#bg058_�ҿ�a_01=true;
	#bg002_��a_02=true;
	#bg002_��a_03=true;
	#bg007_��m��·a_03=true;
	#bg056_���L�����Tǰ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_001.nss";

}

scene mb01_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mb01_013vs.nss"

//�����
//��Ϧ���磩
//��ҹ
	PrintBG("�ϱ���", 30000);

	CreateSE("SEL01","se��Ȼ_ˮ_����02_L");
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg058_�ҿ�a_01.jpg");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	CreateEffect("�}�����������L", 150, 256, 0, 512, 288, "Rain");
	SetAlias("�}�����������L","�}�����������L");
	Rotate("�}�����������L", 0, @-60, @0, @0, null,true);
	Zoom("�}�����������L", 0, 3000, 3500, null, true);
	Fade("�}�����������L", 0, 300, null, true);

	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	WaitKey(2000);
	SetVolume("SE*", 5000, 0, null);
	Fade("�}�����������L", 2000, 0, null, true);

	OnBG(200,"bg002_��a_02.jpg");
	FadeBG(3000,true);
	Delete("�}�����������L");

	WaitKey(1000);

	OnBG(100,"bg002_��a_03.jpg");
	FadeBG(3000,true);

	WaitKey(2000);

//���`�}�н�
	OnBG(100,"bg007_��m��·a_03.jpg");
	FadeBG(3000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������һ�������ң�ϣ��������һ��֮����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ǰ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg056_���L�����Tǰ_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm32",0,1000,true);

	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020a]
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0140010a11">
�����������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020b]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140020a02">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0140030a00">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0140040a00">
���𳤡�����ô���£���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140050a02">
���������͡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0140060a00">
��һ��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140070a02">
�����죬�������С�
��˵�ڶ�ش�ͺ�ƽ��ս���У�
ϣ�������ҵ���������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140080a02">
���ҽ����ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0140090a00">
������������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140100a02">
���ն�������
�������㡣��


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140110a02">
��������һ��֮������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����Ů����
��ֱֱ���������ң�����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140120a02">
����֪���Լ��ܲ����졣
�����ԣ�ϣ���ն����ֲ��ҵĲ��㡣��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0140130a00">
�����ǣ��ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ڵ�һ��Ӧ���Ѿ�֪���ˡ�
��������𳤸������ġ�

������ս����ɱ��һ�����ˡ���
���ͱ�����ɱһ��ͬ�顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140140a02">
���ն�����������ɱ���ˡ�
��<RUBY text="����">��Щ</RUBY>������������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140150a02">
��������������ɱ��
�����Ǻ�Ҳ������ɱ����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140160a02">
���ն�����ֻ������һ��֮����á���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0140170a00">
������������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0140180b40">
�����������Ǻ��⡣
�����ˡ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140190a02">
�����졣��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb01/0140200b40">
��������


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140210a02">
���ҽ��᳹���塣
����ˣ�����Ҫ�ն���������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0140220a00">
������һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ֻ�������ɡ�
������ɱ¾��

����������Ϊֹ��
���ҵ�˫�ֲ�����Ⱦ���޹�ͬ�����Ѫ��

�����á�
������ȥɱ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140230a02">
���ն���������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb01/0140240a02">
������ҡ���һ��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0140250a00">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0140260a00">
���������ˡ����һ������
��������ġ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0140270a11">
��������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb01/0140280a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ѩ`����
//�����åȥ���ݤ����Ǥ����뤫��

/*
	CreateSE("SE01","se���L_����_���nͻ01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}����", 1000, Center, Middle, "cg/sys/Telop/lg_����.jpg");
	CreateColorSP("�}ɫ�\��", 100, "#000000");

	Wait(100);

	FadeDelete("�}ɫ��", 1000, true);

	WaitKey(2000);
*/

	ClearWaitAll(3000, 1000);

	PrintBG("�ϱ���", 10000);
	cut_in_logo(10010,1);

	ClearWaitAll(3000, 2000);


//������������������������������������������������

}

..//������ָ��
//�Υե����롡"mb02_001.nss"