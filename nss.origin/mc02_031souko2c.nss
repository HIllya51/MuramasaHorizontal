
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2c.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();


	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_031rouka2.nss";

//�룺��������{��
//	$Next_GameName = $GameName;
//	$GameName = "mc02_031time.nss";

}

scene mc02_031souko2c.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_031souko2.nss"


//�񤵤�
//���ɥ��_�����w���z��
//��}�죲����ʿ
//�����L

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg081_�w�д�����Bb_01b.jpg");
	CreateSE("SE01","se�ճ�_����_���_��07");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

	OnSE("se���L_����_ͻ�M01", 1000);

	WaitKey(500);

	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	OnSE("se���L_����_�z_���01", 1000);

	WaitKey(1500);

	SetNwC("cg/fw/nw�������.png");
	//SetNwC("cg/fw/nw��ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�}���ʿ��
<voice name="����㣯�}���ʿ" class="����������" src="voice/mc02/031so0300e145">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������á���ʿ����

	StL(1100, @0, @,"cg/st/st����_���L_˽��.png");
	FadeStL(0,false);

	Fade("�}ɫ��",1500,0,null,true);

	OnSE("se����_�n��_ܞ��02", 1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��ʿ������������û�з�����

���Ǿ�����������������
�����ҿ����������Ǹ��������Ķ������ѣ�
��ʿ��ȴ̱��һ�ţ��·�����ɥʧ֧������
ʧȥ����ʶ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0310a04">
������ץ�����ܿ�ͻ���������

{	FwC("cg/fw/fw����_����.png");}
//��������

<voice name="����" class="����" src="voice/mc02/031so0320a00">
���������ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������ס���е�ս���У����ξ���Ƿֹ����ֿ�
�ڲ���
��
����û��ʲô��ֵĶ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ", 15000, "BLACK");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//���������£�

}

..//������ָ��
//�Υե����롡"mc02_031rouka2.nss"
