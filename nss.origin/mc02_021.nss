//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_021.nss_MAIN
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
	#bg079_������ս��ڤβ���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_022.nss";

}

scene mc02_021.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_020.nss"

//���r�g�U�^
//��ҹ�������դγ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	CreateTextureSP("�}����10", 8, Center, Middle, "cg/bg/bg001_��a_03.jpg");
	CreatePlainSP("�}��д", 100);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	WaitKey(1000);

	CreateTextureSP("�}����11", 9, Center, Middle, "cg/bg/bg001_��a_02.jpg");
	DrawTransition("�}����11", 0, 0, 180, 1000, null, "cg/data/slide_02_00_1.png", true);
	FadeDelete("�}��д",1000,true);

	WaitKey(1000);

	CreatePlainSP("�}��д", 100);
	CreateTextureSP("�}����12", 8, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	Delete("�}����10");
	Delete("�}����11");
	FadeDelete("�}��д",1000,true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��
����������������һ���ĩ���
���������������Ͷ��������꣯��¡��һ��

��
������������������ʮһ�¶�ʮ����

��
���������������������������ʮ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������դβ���

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("�}����*");

	CreateTextureSP("�}����50", 10, Center, Middle, "cg/bg/bg079_������ս��ڤβ���_01.jpg");
	StC(1000, @0, @0, "cg/st/st�������_ͨ��_˽��.png");
	FadeStC(0, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");


//��������ƥ����ȥܥå���

	SetFwH("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0210010a13">
����˯��
���ű�˳����
���������ڿ㡣��


//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0210020a13">
������Ҳ���ᴩ���ڿ�
�ص��ⷿ�䡣
������ϣ����ˡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������`�β���
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DeleteStA(0,true);
	Delete("�}����12");
//��������`�β��ݤȤ�������������ޤ���Τǡ�����Υ�β��ݤ� inc�Ѿ�
	CreateTextureSP("�}����50", 10, Center, Middle, "cg/bg/bg029_����Υ�����̄���_01.jpg");

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");

	SetNwH("cg/fw/ny�ǣȣ�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�ǣȣѸ��١�
<voice name="����㣯�ǣȣѸ���" class="����������" src="voice/mc02/0210030e003">
�����£�
����μ���ս�Ľ�Уȫ�弯�ϡ���


{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mc02/0210040b00">
���������ˡ�
��������ô����ũ��������

{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0210050b03">
���á���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������Υ�
	OnSE("se����_����_�i��06", 1000);

	StC(1000, @0, @0, "cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	FadeStC(300, true);

	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0210060b03">
�����ڿ�ʼ����
�������ڽ��С��ƽ����������ս�ƻ���
���ȷ�ϣ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������о���
//���o������\��

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0, true);
	CreateTextureSP("�}����50", 10, Center, Middle, "cg/bg/bg044_�о�ʩ�O��_01a.jpg");

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");


//������Ů_
	StL(1000, @0, @0, "cg/st/st����׏�_ͨ��_˽��.png");
	FadeStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������������������������


��
�����������������������ߵ㩖����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	ClearFadeAll(0, true);

}

..//������ָ��
//�Υե����롡"mc02_022.nss"