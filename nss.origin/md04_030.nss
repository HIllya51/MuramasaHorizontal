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

scene md04_030.nss_MAIN
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
	#bg057_���ӘS������_01=true;
	#bg033_���ӘS�����h_01=true;
	#ev128_�����ι�_g01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_031.nss";

}

scene md04_030.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_029.nss"


//�����ӘS

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg057_���ӘS������_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	SetFont("@����", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("��Ļ01",30411,Center,inherit,auto,auto,"һ��������");
	Fade("��Ļ01", 0, 0, null, true);
	Request("��Ļ01",NoLog);
	Request("��Ļ01",PushText);
	Rotate("��Ļ01", 0, @0, @0, 90, null, false);
	Move("��Ļ01", 0, @300, @10, null, false);
	SetBacklog("һ��������", null, null);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/resize/bg103_���ӘS������ٛg����_01l.jpg");
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 800, 800, null, true);

	Move("�}����100", 8000, @100, @50, null, false);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);

	Wait(500);

	Fade("��Ļ*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("��Ļ*", 300, 0, null, true);


//�����ߣ���ǰ������ץȤ����Ƅ�
/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��
������������������һ��������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/
	FadeDelete("�}����100", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������峿�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����β��ݡ�bg033b_��
	CreateColorSP("�\Ļ��", 5000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������飬�����˵ķ��䡣
�������������һ���ˡ�

�����ԣ��������ٵ���������
�����۽��������������ʽ�սᡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ι⡣ҙ����
	CreateTextureEX("��", 15000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");
	Fade("��", 1000, 1000, null, true);
	Wait(500);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����˯�š���
�����������š�

��������ԭ���ġ������Ĺ⡣
��ӵ���𽥸�������壬�Լ��������������ľ���
���������ļ��ˡ�

��������˯���ˡ�
����������³����䵽�εĵײ�����¶����һ���Լ���

�����Ǻš�

����ǿ�Ĵն��⡣
�����Ĵն��⡣

���ն���Ը���Ľᾧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md04/0300010a00">
��Ը����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����������ҵ�Ը���غ����������

����������ʽҲ�ã��������ֶ�Ҳ�á�
������������ȥ��

����������������������ȥ��
��������������������ϡ�

�����������κζ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md04/0300020a00">
�����𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������ص׵ġ��񡱣���������ϡ�

������Ȼ���Ű��ɡ�
������һ�ž��ɲŶԡ�

������Ȼֻ�����ϸ΢��һ˿�������ܹ��Ʒ�������
�����˵Ļ����һ������ԥ�ض���һ�С�
���������Լ���һ�С�����ȫ���硣

������˭���ܣ�˭�񶨡�
���Ҷ���߾�ȫ��ȥ����������϶��̡�

�������Ҫ�ĳ��룬ת���ٻ�������̡�

�����ǲ�����ˡ���°ɡ�
��Ϊ���Լ����������������˵����ˡ�����������
Ӧ�е���Ϊ��

������Ļ������޷��쵽�İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md04/0300030a00">
���������ࣩ

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ڵ���ֻ������һ�ѽ���

������Ψһ��ʹ����
��û�������谭�Ĳ���֮�

���������ֻ࣬�ǰѽ���
��Ҳ�����ҡ�

������֮�£����۶�ô���顭��
���Ҷ������Ի�

������̾Ϣ��
�����豯�ˡ�

��һ���Ի�̾Ϣ�Լ����˽���������
���ǡ��ѡ���������������Ⱦ��ʹ����ˡ�

�����ǽ���

����ħ����

���ԶԴն���İ�Ϊ���ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ե�å���

	EfRecoIn1(18000,600);
	Delete("��");
	CreateColorSP("�}����0", 2001, "BLACK");
	CreateTextureSPadd("�}����1", 2002, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureSPadd("�}����2", 2003, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw���L_����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����L��
<voice name="���L" class="���L" src="voice/md04/0300040a11">
���ǡ������ǰ�������

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md04/0300050a11">
���������������䡪��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);
	
	Delete("�}����*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��˦��˲�����ѣ��

�����
����������ɡ�

����Ϊ���ڵ���û�в���֮�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md04/0300060a00">
���߰ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����ʼ�ɡ�

������ֱ·ǰ���ɡ�
��������㯡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������

	CreateColorSP("�\Ļ��", 5000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg057_���ӘS������_01.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	SetNwC("cg/fw/nw�a����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md04/0300070e247">
���������ˣ�
��ԭ�������������ˡ�����

//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md04/0300080e247">
�����鼴����ʼ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0300090a00">
������
����������ȥ�ɡ���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md04/0300100e247">
����ȥ�ģ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md04/0300110a00">
��ȥ��������

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md04/0300120e247">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	
	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_031.nss"