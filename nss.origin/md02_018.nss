//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_018.nss_MAIN
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
	#bg053_ܥԽ������ͥ_01=true;
	#ev002_�y�Ǻ��¼�����`����=true;
	#bg052_�����ҵ���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_019.nss";

}

scene md02_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_017.nss"

//��ͥ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�ۥ磻�ȥ���", 5000, "WHITE");
	OnBG(100, "bg053_ܥԽ������ͥ_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�ۥ磻�ȥ���",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ŷ��֡�
������������������ա�������˱���ȴû�д������档

����˲���˼����£�������������ס�
�������ұ�ʲô֧���š�

��֧�����ҵģ��ǹ⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⥢�å�
//���ޤ��زĤʤ����زĤˤ�äƤϥ�����ɥ���Ӥ��� inc�Ѿ�
//��ԇ�� inc�Ѿ�

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 100, -144, "cg/bg/bg053_ܥԽ������ͥ_01.jpg");
	CreateTextureEX("�}�ݷ���/�}���}", 16200, 160, -468, "cg/st/resize/st��_ͨ��_˽��_l.png");
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Move("�}�ݷ���/�}�ݱ���", 30000, @-100, @0, null, false);
	Move("�}�ݷ���/�}���}", 30000, @-200, @0, null, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);
	Wait(300);
/*
	StR(1000, @0, @800, "cg/st/resize/st��_ͨ��_˽��_l.png");
	Request("@StR*", Smoothing);
	FadeStR(300, false);
*/

	SetFwR("cg/fw/fw��_�Ȑ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/md02/0180010a14">
��ֵ�ü�����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180020a00">
�������⡭����

{	SoundPlay("@mbgm30", 0, 1000, true);
	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180030a14">
������ô��������𣿡�

{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180040a14">
����˹�ֱ��ִ������̫�ɰ��ˡ�
���ڰ�ᦹ����㿴��<RUBY text="����">�Ǹ�</RUBY>Ҳֵ���ˡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180050a00">
��������

//��������
<voice name="����" class="����" src="voice/md02/0180060a00">
��������ʲô����
�����ǡ���֪�����𣿡�

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180070a14">
��������˵������ֹˮ��
�����������Ҫ���ӽӽ���ɡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180080a00">
��������

{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180090a14">
���ǡ����Ǻǡ���

//���⡿
<voice name="��" class="��" src="voice/md02/0180100a14">
����Ȼ֪����
������������Ĳ�����
��ɽ�軨�Ļ��ڻ����׶�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ100", 500, false);
	FadeDelete("�}�ݷ���*", 500, true);
	Delete("�}�ݷ���*");

//	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������ֵ�ʳָָ�򻨲ݴ��еĻ��١�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @0, @0, "cg/st/st��_ͨ��_˽��.png");
	FadeStC(300, false);

	SetFwR("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/md02/0180110a14">
����ʣ���졣��

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180120a00">
�������ҷ��������㡣��

{	FwR("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180130a14">
����Ҫ��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ջ���ϸ����ָ�������ҵ�����
���������ȥմ���ĳ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_�Ȑ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/md02/0180140a14">
������������
�������������Լ��ܵ��ġ���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180150a14">
���ҵ�����������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180160a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����������նɱ������Ҫնɱ�Ķ��ֿ��У�
˵����ο�Ļ��
����֪�ںδ����ԭ�����ʧ�������״���£�
�ҵ���������������裬�����ֻ�ǻ��ҡ� 

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md02/0180170a00">
������ʲô��

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180180a00">
��<RUBY text="��������">����ʲô</RUBY>����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ҡ�

�������и���ˮ��ģ�������ĺ��ġ�
��ֻ��������û����һ�����ۡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md02/0180190a00">
���ҡ�������Ҫ����ɱ�ˣ�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������֡�
�����򾲾��������ҵĹ⣬���ĺ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md02/0180200a00">
���Ͻ���
�����ڣ�����˲�䣩

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���⡣
��������˵�ȣ���Ҳ�޷��ٵȴ���

�����ܵȴ���

������ʱ��Ļ�����������أ�
�����������ǺŰɡ���

�������𼫴���ֻ���
����ɢ������Ĳ��ҡ�
���������������ߡ�

������Ҫɱ���㡣
�����ڣ����ϡ�

��ץס�ʺ�
��һ���ݻ١�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md02/0180210a00">
������������

{	FwR("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180220a14">
��������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180230a00">
�������ꡭ����

{	FwR("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180240a14">
������ʹ���𣿾���������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180250a00">
��������

{	FwR("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180260a14">
�����������ء�
�����ʹ��������ͬ��¶����

{	FwR("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180270a14">
�����ǡ���
����Ȼ���������������о�ʹ�࡭��
�����ĸо�Ҳ�С���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��մȾ��������Ѫ��������������ָ���������ҵ�����
������ỹ�����顪�����޷���⡣

�������ǲ�����⡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @0, @0, "cg/st/st��_ͨ��_˽��.png");
	FadeStC(300, false);

	SetFwR("cg/fw/fw��_�_�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���⡿
<voice name="��" class="��" src="voice/md02/0180280a14">
�������ðɡ�����

//���⡿
<voice name="��" class="��" src="voice/md02/0180290a14">
��������
����������ȥ���ʹ��ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);


//��Ů��ρ������˲�r�˵ǈ�
	OnSE("se����_����_һ�i", 1000);
	StR(900, -115, -110, "cg/st/3d����Ů��ρ_ɿ��.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 0, 3000, null, false);
	Zoom("@StR*", 100, 950, 950, null, false);
	FadeStR(300, true);

	Wait(500);

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md02/0180300a00">
������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������Ӱһ˲����֡�

��������Ů���ϡ�������������
�����òٿ��߳������ܽ���ָʾ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm32", 0, 1000, true);
	SetFwR("cg/fw/fw��_�_�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���⡿
<voice name="��" class="��" src="voice/md02/0180310a14">
����Ȼ˵���˽�⡭����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180320a00">
������������

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180330a14">
���Ǿ������˽�һ�°ɡ�
���������߾�ȫ�������ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������äݤ��ӣš�������

	CreateColorEXadd("���ޤ�", 15000, "WHITE");
	DrawTransition("���ޤ�", 0, 200, 200, 500, null, "cg/data/circle_01_00_0.png", true);


	OnSE("se����_������_������01", 1000);

	Fade("���ޤ�", 500, 1000, null, true);
	Fade("���ޤ�", 1000, 500, null, true);

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md02/0180340a00">
�����ǡ���!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�ϣФ�������

	EfRecoIn1(18000,600);
	CreateTextureEX("���ٽ}10", 1001, Center, Middle, "cg/ev/resize/ev101_�ץ��`��_cl.jpg");
	Request("���ٽ}10", Smoothing);
	Zoom("���ٽ}10", 0, 2000, 2000, null, false);
	Move("���ٽ}10", 0, -1500, 300, null, false);
	Fade("���ٽ}10", 1000, 1000, null, true);
	Fade("���ޤ�", 0, 0, null, true);

	EfRecoIn2(300);

	WaitKey(1500);

//������
	EfRecoOut1(300);
	Delete("���ٽ}*");
	Fade("���ޤ�", 0, 500, null, true);
	EfRecoOut2(600,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�������������ѡ�!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���⡿
<voice name="��" class="��" src="voice/md02/0180350a14">
���������Ľᾧ��
��ֻҪ�������������Ҳ�������ðɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������
����Ⱦ����Ĳ���

�����Ǻ�ɢ������Ϯ������߲�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå������ˡ�

	EfRecoIn1(18000,600);

	Fade("���ޤ�", 0, 0, null, true);
	CreateTextureEX("���ٽ}10", 1001, Center, Middle, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");
	Fade("���ٽ}10", 0, 1000, null, true);


	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�������뽫�ұ��������!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);
	Delete("���ٽ}*");
	Fade("���ޤ�", 1000, 500, null, true);
	CreateSE("SE10","se����_냇��_���Q01");
	MusicStart("SE10",2000,700,0,1000,null,true);
	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw��_�_�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���⡿
<voice name="��" class="��" src="voice/md02/0180360a14">
��������������׾��������Χ����

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180370a14">
�����ܹ�Ҫ�ƻ�����
��Ҫ���޷��ȴ��Ļ���������ı��
�޷���֪��Щ�ͺ��ˡ���

{	FwR("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180380a14">
����ͽ�����������֮���һ������
�������������ǹ⣬�Ǿ�ֻ���ǹ���°ɡ���

{	FwR("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180390a00">
��ס��!!��

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180400a14">
��������̫�ࡣֻ����ʱ�ġ�
���������ķ������������ģ�Ҳ���ǹ�ı��⡣��

{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180410a14">
����������յ�����ӭ���ս�󣬾ͻָ�ԭ״��
�������ȴ�����ĵ����ͺá���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���ӿ�����֡���
��Ѱ�ҵ���ĵ�����
��ҪԶ�롰�����Ľᾧ��Ҫ�ӡ���

��ƴ��ȫ������һ�а취��
���������������ǲ���Ը��

����ץ���Ҳ��ţ�
Ҳ��֪��������δ���
�ᾧ�����ڱƽ���

���Ӳ��ˡ�

���ҽ����ĵֿ������������

���ھ�����������Ŀ�������������ĳɹ���

����ؿ����ҡ�

������������ᡣ

����������ᣬ�Ҿ����ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���ѽӽ����ۥ磻�ȥ����ȣ�
	SetVolume("SE10", 1500, 1000, null);

	DrawTransition("���ޤ�", 1500, 200, 1000, 500, Axl2, "cg/data/circle_01_00_0.png", false);
	Fade("���ޤ�", 1500, 1000, null, true);

	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	DeleteStA(0,true);
	Delete("���ޤ�");
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE10", 1500, 0, null);

	CreateSE("SE01","se���L_����_���nͻ01");
	CreateSE("SE02","se����_늓�_���02");

//�������ظ���z��䓾�����������
	CreateTextureSP("�}����20", 4800, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	DrawDelete("�}�ե�", 100, 100, "beam_03_00_1", true);

//�������`��
	MusicStart("SE01",0,1000,0,1000,null,false);


//��늴ťХ��`��

	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 0, 1000, null, true);

	CreateTextureSPadd("�}����31", 4901, Center, Middle, "cg/ef/ef044_��c.png");
	CreateTextureSP("�}����30", 4900, Center, Middle, "cg/ef/ef035_֩��W���@.jpg");

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("�}����31", 1000, 4000, 4000, Axl1, false);
	Zoom("�}����30", 1000, 1200, 1200, Dxl1, false);
	Rotate("�}����31", 1000, @0, @0, @3000, Axl1,false);
	DrawDelete("�}�ե�", 100, 100, "zoom_01_00_0", true);

	Wait(500);

	FadeDelete("�}����*",300,true);

//��֩�����

	StL(1100, @-60, @200, "cg/st/3d����֩��_���.png");
	Rotate("@StL*", 0, 0, 180, 0, null, false);

	OnSE("se����_����_�z�i��03",1000);

	Move("@StL*", 400, @0, @50, Dxl2, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="��������" src="voice/md02/0180420a01">
����������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180430a00">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����Ϥ��������������Զȥ����ʶ��
���Ǵ��������ҵĴ�����

��û��
�������ġ��ѡ�֮��Ⱦ��Ψ��ͬΪ�������������ܷ�����

��������Ҵ���Σ�ն��������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0, "cg/st/st��_ͨ��_˽��.png");
	StC(900, 380, -110, "cg/st/3d����Ů��ρ_ɿ��.png");
	Request("@StC*", Smoothing);
	Zoom("@StC*", 0, 950, 950, null, true);
	FadeStC(300, false);
	FadeStR(300, false);

	SetFwC("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���⡿
<voice name="��" class="��" src="voice/md02/0180440a14">
��������

//���⡿
<voice name="��" class="��" src="voice/md02/0180450a14">
�������Ĵ�������
�������������𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0180460a01">
��Ҫ���в��÷��������ɣ�����������ң���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	CreateSE("SE01b","se����_������_�������g�仯01");
	MusicStart("SE01b",0,1000,0,700,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	DeleteStL(0,true);
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);
	WaitKey(500);
	FadeDelete("�}�ե�", 1000, true);
	SetVolume("SE*", 1000, 0, null);


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="��������" src="voice/md02/0180470a01">
���뿪�ҵĲٿ��ߣ���

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md02/0180480a15">
�������ǣ���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180490a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��Ů���Ͽ������廯�Ĵ������������Ľ��д�����
��Ȼ����˫�ַſ����ң�����ת���Ǳߡ�

����������Ϊֹû�����ı��飬�������Ǳߡ�
������������

����һ�Ρ�
���������ı��顣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺����Ԓ����ͻ�ֱ�ᡣ��Ƚy��
	EfRecoIn1(18000,600);

	CreateTextureEX("���ٽ}10", 1001, Center, Middle, "cg/bg/bg052_�����ҵ���_01.jpg");
	Fade("���ٽ}10", 0, 1000, null, true);
	StR(1100, @0, @0, "cg/st/st�����ǰ_ͨ��_˽��.png");
	StL(1100, @0, @0, "cg/st/st�y_ͨ��_˽��.png");
	FadeStL(0, false);
	FadeStR(0, true);

	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
����ʱ��
����Ӳ��������������ĸ�׵���ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);
	Delete("���ٽ}*");
	DeleteStR(0,false);
	DeleteStL(0,true);
	DeleteStC(0,true);

	StR(1000, @0, @0, "cg/st/st��_ͨ��_˽��.png");
	StC(900, 380, -110, "cg/st/3d����Ů��ρ_ɿ��.png");
	Request("@StC*", Smoothing);
	Zoom("@StC*", 0, 950, 950, null, true);
	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStA(0, true);

	EfRecoOut2(600,true);

	SoundPlay("@mbgm37", 0, 1000, true);

	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���⡿
<voice name="��" class="��" src="voice/md02/0180500a14">
��������Ȼ���˰����������������á���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0180510a01">
��������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180520a14">
�����Ѿ�����Ҫ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ȴ���������

//��CG�ʤ�����֥�`�Ȥ�����inc�Ѿ�
	OnSE("se����_��x_��Ӱ02", 1000);
	CreatePlainEX("�}��д", 100);
	Fade("�}��д", 0, 500, null, true);
	
	SetBlur("�}��д", 8, true, 400, 200);

	Fade("�}��д", 0, 500, Dxl1, true);
	Zoom("�}��д", 100, 1100, 1100, Dxl1, false);
	Fade("�}��д", 100, 1000, null, true);

	Zoom("�}��д", 500, 1000, 1000, Dxl1, false);
	Fade("�}��д", 500, 0, null, true);


	Delete("�}��д");

	SetFwC("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//���⡿
<voice name="��" class="��" src="voice/md02/0180530a14">
������ɣ�����ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0180540a01">
���ȡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 5000);
	StL(1000, @0, @2,"cg/st/st����_���L_˽��.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	FadeStL(0,true);
	FadeDelete("�}��д", 300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
�������ںü��ơ�

����ʹδ���ٿ���װ���ϵ�״̬�����е�ս������
ҲԶԶ����ڵ�ƾ��������ࡣ
��һ��һ�ľ����϶��ǲ�������ġ�

��������
�������ڹ⣬�����ĳ�ʶ�޷�ͨ�ã�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/md02/0180550a00">
��ͣ�£��⣡��

{	FwC("cg/fw/fw��_�@��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180560a14">
��������������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180570a00">
����������������
���Ҿ��Բ�ԭ���㣡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��δ��˼�����ѿڶ����Ļ���

������Ŀ���ࡣ

���������ԡ�

��˲�䣬ֱ����ô�����ҡ�

���ⲻ���Ҹ�˵�Ļ�����ȫ����ˡ�

����ı��������ˡ�
��������һ�㡣

������ת�أ������Ŵ�����
�����ѿ������������񡪡����Ӵ���
�����Եغ���һ������������

�����Ϊ�˳嶯���ƻ��Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/md02/0180580a00">
��������ֹ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
�����������塣

������Ȼ��һ����ָҲ�������á�
���������ŵ��ڼ䣬�Ǳ�����ʲô��
����˵��ȫ������ɱ���ή���ˣ�

�������ˡ�
�����������˵Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_�_�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//���⡿
<voice name="��" class="��" src="voice/md02/0180590a14">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0180600a01">
�������ꡭ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡢���Ĝʂ�
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	OnSE("se����_����_һ�i", 1000);

	WaitKey(500);

	SetFwC("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//������������
<voice name="��������" class="��������" src="voice/md02/0180610a15">
����������

//������������
<voice name="��������" class="��������" src="voice/md02/0180620a15">
�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���¤����
	WaitKey(500);
	Move("@StR*", 300, @30, @0, null, false);
	OnSE("se����_����_�᤺����01", 1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��������Ԯ֮�֡�
������Ԥ��֮��ķ���

������ɫ�Ĵ���������
�����з����Ů���ϣ�
�������޷����ӵĽ��д�����
��ͣ�˲ٿ��ߵ��ж���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//���⡿
<voice name="��" class="��" src="voice/md02/0180630a14">
��������

//���⡿
<voice name="��" class="��" src="voice/md02/0180640a14">
����˵��������ʲô��˼��
����������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md02/0180650a15">
��������
������������������Ļ��Ͳ����ˡ���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180660a14">
�����˵��
����Ų�������֪���������ж������𣿡�

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md02/0180670a15">
������Ϊ��֪������ֹ�ꡣ
�����������Ǹ�����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180680a14">
��ʲô��������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md02/0180690a15">
���������Ļ����⡣��

{	FwC("cg/fw/fw��_�@��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180700a14">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���������ˡ�
����������Լ���ƶ���֡�

����Ϊ����ǰ�����Ǻ�������ɲ�����������Ϊ
��Щ�Ǻ��޵����չ����ɱ¾��
��������������ɱ����Ȼ�ǹ�Ҳ�޷�������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//������������
<voice name="��������" class="��������" src="voice/md02/0180710a15">
�����������������Ļ�����
���ǻ����Ľ������ʧȥʲô�أ���

//������������
<voice name="��������" class="��������" src="voice/md02/0180720a15">
�����������Լ�Ҳ�����׵ġ���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0180730a14">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
���⿴���춥��
�����������<RUBY text="����">�ȴ�</RUBY>�ţ�����������˭��ԭ�¡�

�����ƺ�δ��Ը�����ӡ�
���������ǻںޣ���������ȭ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡢ȥ�롣����������
	CreateSE("SE01","se����_����_�i��08");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetVolume("@mbgm*", 3000, 0, null);
	DeleteStR(500,false);
	DeleteStC(500,true);

	WaitKey(1000);
	SetVolume("SE*", 2000, 0, null);

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���������ŷ�Ȼ�����������뿪�ˡ�
��ʵ�ں��С�

������ɫ�Ľ���������ʧ��
��ͬ�����ڴ˴�ʱһ����������Ϣ��

��ͥԺ��ֻʣ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm16", 0, 1000, true);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="��������" src="voice/md02/0180740a01">
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0180750a01">
��û�°ɣ�
��û�б���ô���ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180760a00">
�������š�
������㼰ʱ�������þ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
�����˵�ţ��������Ŵ�ʱ�İ�Ȼ��
���ղ�����Σ�ա�

������ܵ���Ⱦ���ĽᾧӰ�졭��
�����ڵ��һ���������������˫����ʲô�أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå������ˡ�

	EfRecoIn1(18000,600);

//������inc�Ѿ�
	CreateTextureEX("���ٽ}10", 1001, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	Fade("���ٽ}10", 0, 1000, null, true);

	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoOut1(300);

	Delete("���ٽ}*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
���������ȫ��
���ѱ���������¶Ƥ��ʱ�ĸо�Ҳ���������ɡ�

��̫���־�̫����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="����" src="voice/md02/0180770a00">
��лл����

{	FwC("cg/fw/fw����_�դ�.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0180780a01">
����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180790a00">
��̫���ˡ���Ҳû�¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0180800a01">
���š�����

//��������
<voice name="����" class="��������" src="voice/md02/0180810a01">
����������
�������״�����ø�лĸ�ס�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0180820a00">
�����������ô˵�ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
�����Ի��Ÿ��ӵ����飬���ｻ̸��
����Ȼ�չ�����䲢�ǵв����������Ű��
��Ҫ�ָ��������¶ȵĴ��ݣ����軨��ʱ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1500);
}

..//������ָ��
//�Υե����롡"md02_019.nss"