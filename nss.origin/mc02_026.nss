//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_026.nss_MAIN
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

	$GameName = "mc02_027.nss";

}

scene mc02_026.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_025.nss"


//�������β���
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����11", 12, Center, Middle, "cg/bg/bg030_�ǣȣѱO������_01.jpg");
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������Ѿ�����ӡ�
��
������ʱ�䵽�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc02/0260010a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc02/0260020a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������������Υ����Ľ��д�����
�������ξ���������ǵ���ǰЭ���ж�
����������ô���¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc02/0260030a00">
�����������ж���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc02/0260040a01">
�����ԡ���Ϊ���Ѿ�û�б��������ˡ�
��Ȼ���أ���ֱ���ղ�Ϊֹ�����ҹ��ڿɶ������
���Ǹ�Ů�ˣ�û�б�Ҫҧ�������������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0260050a00">
����Ӵ�ξ����˵����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc02/0260060a01">
��ֻ��˵����Щ��
�����������£���˵��������������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0260070a00">
���á�
�������������𣿣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ͨ�����д����ĸо���
�о����Һʹ����ľ������������ס�
��Ҫ����ʿ��������˵��ЩԶ��
�������ó����μ��ĳ�֩�롪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060a]
//��������
<voice name="����" class="��������" src="voice/mc02/0260080a01">
����Ȼ��
�����⼸����Ϊ����������˾��Ĵ���
���ۻ����������ƸУ�������ڲ���й��
��Ҫ�ȵ�ʲôʱ�򣡡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���h�����Ɖ������ɤ��`��
//�h���ʤΤǚݳ֤�С���������inc�Ѿ�
	OnSE("se���L_�Ɖ�_���k02", 500);
	CreatePlainEX("�}��д", 15);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 0, 10, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060b]
//��������
<voice name="����" class="����" src="voice/mc02/0260090a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������ˡ�
���µ��������ν�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ɖ�����������

	OnSE("se���L_�Ɖ�_���k02", 600);
	CreatePlainEX("�}��д", 15);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");
	WaitKey(1000);
	OnSE("se���L_�Ɖ�_���k02", 700);
	CreatePlainEX("�}��д", 15);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");
	WaitKey(1000);
	OnSE("se���L_�Ɖ�_���k02", 800);
	CreatePlainEX("�}��д", 15);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 0, 40, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���ܥ�����he��hell's agent!?��
//������㣯�ǣȣ�Ҋ���꡿
<voice name="����㣯�ǣȣ�Ҋ����" class="����������" src="voice/mc02/0260100e000">
���ء���������ʹ�ߡ�������!?��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc02/0260110a01">
�������װ����ھӣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//���ɤ��`��
	OnSE("se���L_�Ɖ�_����02", 1000);

	Wait(300);

//���e���
	CreatePlainEX("�}��д", 15);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 0, 80, 20, 0, 1000, DxlAuto, true);
	Delete("�}��д");
	Wait(1500);

//�������ǈ�

	SoundPlay("@mbgm10", 0, 1000, true);

	OnSE("se����_�z_�l����02", 1000);

	StL(1000, @-80, @200, "cg/st/3d����֩��_���.png");
	Rotate("@StL*", 0, 0, 180, 0, null, true);
	Move("@StL*", 300, @80, @0, null, false);
	FadeStL(300, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/mc02/0260120a01">
������
��ʹ����ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0260130a00">
������������̫���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��û�й��������ˡ�
�����Ѿ�������ʮ�˵ĽŲ���
��������ɱ����

��Ϊ�˲����Լ���Ϊ����ʧ�ܶ����������ˣ�
��ֻ�̲ܿ��ݻ��ز�ȡ�ж���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//��װ�ץ��������
	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	DeleteStL(0,true);
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��a.png");
	FadeStC(0,true);
	Fade("�}�ե�", 1000, 0, null, true);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc02/0260140a00">
������ն��
�����߱�𡣡�


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 2000);
	StC(1000, @0, @0,"cg/st/st����_װ��_˽��b.png");
	FadeStC(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc02/0260150a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);

	StC(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStC(0,true);
	FadeDelete("�}�ե�", 1000, true);


	WaitKey(2500);
	SetVolume("SE*", 1000, 0, null);


	OnSE("se����_�z_�l����02", 1000);
	StC(1000, @0, @0,"cg/st/3d�����˜�_����_��x.png");
	FadeStC(300,true);


//���ڤ�ͻ���Ƥä��ѳ�


	OnSE("se���L_����_⟱ڴ����w�Ф�", 1000);
	Zoom("@StC*", 300, 1500, 1500, null, false);
	CreatePlainEX("�}��д", 15);
	Fade("�}��д", 0, 1000, null, false);
	Shake("�}��д", 500, 0, 80, 20, 0, 1000, DxlAuto, false);
	Zoom("�}��д", 300, 1500, 1500, null, false);
	Move("�}��д", 300, @-100, @0, null, false);

	DeleteStC(300,true);

	WaitKey(150);

	OnSE("se���L_����_��ͻ�M01", 1000);
	DrawDelete("@StC*", 150, 100, "circle_02_01_0", false);
	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);
	SoundPlay("@mbgm34", 0, 1000, true);
	Delete("�}��д");

	DeleteStA(0,true);
	Delete("�}����*");

	CreateColorSP("�}ɫ�\", 100, "#000000");
	Delete("�}��д");

	ClearWaitAll(300, 0);

}

..//������ָ��
//�Υե����롡"mc02_027.nss"