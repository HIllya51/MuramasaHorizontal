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

scene mc03_016.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_017vs.nss";

}

scene mc03_016.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_015vs.nss"

//������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	SoundPlay("@mbgm35", 0, 1000, true);
	OnBG(100, "bg022_ɽ��a_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��".0.true);

//��ѩ܇�

	StL(1000, @0, @0, "cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160010a12">
���١����٣������ٺٺٺ١�����


{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160020a12">
������������
����������������


//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160030a12">
��������������


{	NwC("cg/fw/nw������.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160040a04">
�����Ҫ����������ˣ���Ҫ���ƺ���Щ̫��
�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇α���ˤ���
	CreatePlainSP("�}��д", 5000);

	CreateTextureSP("�}�ӣ�100", 900, Center, InBottom, "cg/st/st����_���L_˽��.png");

	CreateStencil("�ޥ�����",910,Center,InBottom,128,"cg/st/st����_���L_˽��.png",false);
	SetAlias("�ޥ�����","�ޥ�����");
	CreateColorSP("�ޥ�����/ɫ��", 920, "#000000");

	Move("�}�ӣ�100", 0, @-400, @0, null, true);
	Move("�ޥ�����", 0, @-400, @0, null, true);

	DrawTransition("�ޥ�����/ɫ��", 0, 0, 700, 100, null, "cg/data/slide_02_00_0.png", true);

	FadeDelete("�}��д", 300, false);

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160050a12">
��!!��


{	FadeDelete("�ޥ�����/ɫ��", 1000, false);
	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160060a04">
���𶯡�
����׵����ġ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160070a12">
��������������š���
����û�°�����


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160080a04">
������ô���ˣ��ڱ�ˮ����Ӿ�����ࡣ
���Ӹղſ�ʼ�Ͷ��¸���ͣ����

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160090a04">
���ַ��ϴ��Ҳ�᲻׼�ء���
��������һ����Ҫ����Σ�յľٶ�����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160100a12">
���������١�����


{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160110a12">
���١���!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������ܤ��ʤ���Ź��äƸФ��ǡ�����äȻ줶�äƤ��ޤ���б��܉���⤢��������� inc�Ѿ�


//���i��һ�W
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	DeleteStCL(0,true);
	CreateTextureSPadd("�}����500", 10000, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	Rotate("�}����500", 0, @0, @0, @30, null, false);
	Delete("�}�ӣ�100")
	OnSE("se���L_����_�����02",1000);


//��ȭ�򡣤��Щ`��
	CreateTextureSPadd("�}����501", 10000, Center, Middle, "cg/ef/ef042_���ô��.jpg");

	OnSE("se���L_����_Ź��03", 1000);

	Zoom("�}����501", 0, 1200, 1200, null, false);
	Zoom("�}����501", 200, 1000, 1000, Dxl2, false);
	Shake("�}����501", 500, 50, 0, 0, 0, 1000, Dxl3, false);


	FadeDelete("�}����*", 500, true);
	Delete("�\Ļ��");

//��ѩ܇Ȥ��衣�x��ƌ��š�
	OnSE("se����_����_һ�i", 1000);

	StR(1000, @-80, @0, "cg/st/st����_���L_˽��.png");
	FadeStR(300, false);
	Move("@StR*", 150, @80, @0, Dxl1, true);

	SetFwC("cg/fw/fwѩ܇�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160120a12">
������������


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160130a04">
���ӽ�����״̬����������ε�������
�������һ���Ϊ�Լ��ܹ��㿪����


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160140a04">
�����ǲ�Ը������������
����������Ƥ�ء���


{	FwC("cg/fw/fwѩ܇�_ŭ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160150a12">
�������ذ�������


</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ѩ܇����

	OnSE("se����_�n��_ܞ��04", 1000);
	DeleteStL(300, false);
	
	SetFwC("cg/fw/fwѩ܇�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160160a12">
���ء����ء�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160170a04">
���������޼�ֵ�������ɡ�
����Ҳ��û�жԿ�ũ����ƴ��Ч�ҡ���



{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160180a04">
�������Ǹ���Ȥ�ľ������Ҳ�ǡ�
���ҳ������Ǹ���Ȥ�����壬����ϧ�������
�ǡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160190a04">
������󲿷ֶ�ֻ�����⺺�ɣ�
��ֻ����ҩ����߷�Ӧ�ٶȺ��˶��������ٳ�
���ߡ��������𡣡�


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160200a12">
������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160210a04">
�������޷�ƥ�д������ˡ���


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160220a12">
�������٣��١�
���ԡ�����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160230a12">
���ǰɡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0160240a04">
����������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160250a12">
���Ǹ��쵰ʤ�������ӡ���
�����������뿴һ�۰�������


{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160260a12">
���ٺ١����ٺ١���
���١��ٺٺٺٺٺٺٺ١�����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc03/0160270a12">
���١�����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(1000);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����衿
<voice name="����" class="����" src="voice/mc03/0160280a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"mc03_017vs.nss"