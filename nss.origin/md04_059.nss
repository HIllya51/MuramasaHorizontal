//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_059.nss_MAIN
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
	#bg063_���ӘS��������_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_060.nss";

}

scene md04_059.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_058.nss"


//�����ڡ�����

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");


	OnBG(101, "bg063_���ӘS��������_02.jpg");
	FadeBG(1000, true);

	SoundPlay("@mbgm01", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1000,true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md04/0590010a00">
�������Ǹ������ǣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/0590020a01">
���ڰ�ᦹ������ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ҫ������Ϯ�������Ǻţ�
  ��������Ǹ���ɫ�����С�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���\�u������׏����Ӵ�

	CreateColorSP("�\Ļ", 25000, "BLACK");
	DrawTransition("�\Ļ", 200, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);


	CreateTextureSP("ħ����", 1200, 0, 0, "cg/ef/ef037_�|�I���ħ����c.jpg");
	CreateTextureSPadd("ħ���Ǆ���", 1200, 0, 0, "cg/ef/ef037_�|�I���ħ����c.jpg");

	SetBlur("ħ����", true, 3, 500, 100, false);
	Zoom("ħ����*", 0, 2000, 2000, null, true);

	OnSE("se���L_�n��_�nͻ01", 1000);

	EffectZoomadd(17000, 500, 100, "cg/ef/ef037_�|�I���ħ����c.jpg", false);
	FadeF4("ħ���Ǆ���", 200, 1000, 5000, 0, 0, Dxl2, false);

	Zoom("ħ����*", 3000, 1100, 1100, Dxl1, false);

	DrawTransition("�\Ļ", 200, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);
	Delete("�\Ļ");

	Wait(2000);

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_060.nss"