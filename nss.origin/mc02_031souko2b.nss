
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2b.nss_MAIN
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

scene mc02_031souko2b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc02_031souko2.nss"


//������֦

//���ɥ��_�����w���z��
//��}�죲����ʿ
//���|�����åѩ`

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg081_�w�д�����Bb_01b.jpg");
	CreateSE("SE01","se�ճ�_����_���_��07");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

	OnSE("se���L_����_ͻ�M02", 1000);

	WaitKey(1000);

	CreateColorSP("�ե�å����", 5000, "#FFFFFF");
	OnSE("se���L_����_Ź��01", 1000);

	WaitKey(100);

	SetNwC("cg/fw/nw�������.png");
	//SetNwC("cg/fw/nw��ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�}���ʿ��
<voice name="����㣯�}���ʿ" class="����������" src="voice/mc02/031so0290e145">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�����ʿ�����

	StL(1100, @0, @,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(0,false);

	OnSE("se����_�n��_ܞ��02", 1000);

	Fade("�ե�å����",1500,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������Ư����
�������ξֻ��ǹ��һ�����������ػ���ʿ������򦣬
������ʶ����Ʈ����ƶˡ�

{	DeleteStL(300, false);}
����ʮ���ڲ������ѡ�
�����Ƿ�ͷ�������ڣ�����̵�ʱ��
ȷ��û�п�����Ʒ֮�󣬳�����������䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ", 15000, "BLACK");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//���������£�

..//������ָ��
//�Υե����롡"mc02_031rouka2.nss"

}


