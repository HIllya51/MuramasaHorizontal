
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vsca.nss_MAIN
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

	$GameName = "mz00_000.nss";

}

scene mc04_014vsca.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_014vsc.nss"

//����
	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("�}����09EX", 4101, @0, @0, "cg/ev/ev187_㑷�������_i.jpg");
	Request("�}����09EX", Smoothing);
	Zoom("�}����09EX", 0, 1100, 1100, null, true);

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ϣ�
���ӵ��˵ĵ�ǰ��������Ȼ����Ͽ�Ϯ����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����S
	OnSE("se����_����_���S01", 1000);

	CreateColorSP("�}ɫ�\", 10000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("�w��", 5000, Center, InBottom, "cg/ef/resize/ef001_�����Ƅ�tl.jpg");
	Zoom("�w��", 0, 900, 900, null, true);
	SetBlur("�w��", true, 3, 500, 30, false);
	Request("�w��", Smoothing);
	Move("�w��", 650, @0, -150, Dxl2, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	Wait(300);

//���ө`��һ�W�������|��Ͷ�����������
	CreateTextureEX("�|��", 5500, @0, @0, "cg/ef/resize/ef038_�������ex01.jpg");

	OnSE("se���L_����_�|��Ͷ��01", 1000);
	Fade("�|��", 0, 1000, null, true);
	DrawTransition("�|��", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Wait(200);

//�������`��
	SetVolume("@mbgm*", 300, 0, null);

	Delete("�|��");

	OnSE("se���L_����_���̤���05", 1000);

	CreateTextureSPmul("�}������", 5010, Center, Middle, "cg/anime/Left/blood_C_6.png");

	CreatePlainEX("�}��д", 9990);
	Wait(10);
	FadeFR2("�}��д",0,500,500,@0,@0,40,Dxl2, true);
	Delete("�}��д");

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0670a00">
������ʲô������

{	FwL("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0680a00">
��������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������
//��Ѫ
	CreateTextureSP("�}�ݱ���", 6000, Center, Middle, "cg/bg/bg090_���Bۡͨ·d_01.jpg");
	Wait(10);

	CreatePlainSP("�}��д", 6100);
	OnSE("se���L_�n��_�zܞ��01", 1000);
	Shake("�}��д", 300, 0, 10, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");

	Wait(500);

	CreateTextureEX("Ѫ", 6500, @0, @0, "cg/ef/ef004_����Ѫ�~.jpg");
	Fade("Ѫ", 1500, 1000, null, true);
	Delete("�}�ݱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ʹ���ʱ�䲢���㳤��
��������<RUBY text="��">��</RUBY>�ᴩ���ҵĺ�������
�����ҵ�������֮ǰ�����½��м���ɡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 1500);

//�����`�४�`�Щ`

}

..//������ָ��
//�Υե�����