
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu03caa.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg086_����_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ͬ���� == "����"){call_scene @->md05_004byoushitsu03caa_ho.nss;}
	else if($ͬ���� == "�y"){call_scene @->md05_004byoushitsu03caa_su.nss;}
	else if($ͬ���� == "����"){call_scene @->md05_004byoushitsu03caa_mu.nss;}
	else{}

	$PreGameName = $GameName;

	$GameName = "md05_004gameover.nss";

}

scene md05_004byoushitsu03caa.nss
{

..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu03ca.nss"
//�񜐶�������
//���ե饰���


}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������
//��$����ͬ��_Flag$=ͬ����="����"
scene md05_004byoushitsu03caa_ho.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 5010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, -180, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 5100, -30, InBottom, "cg/st/st�����AȾ_���L_�Ʒ�.png");

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");

	SetFwC("cg/fw/fw����_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����ҡ�
<voice name="����" class="����" src="voice/md05/004by0040b52">
���Ϸ�Ϊ�η��������²��ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����y��
//������ʧ��

	CreateColorEXadd("�ե�å����", 20000, "WHITE");
	Fade("�ե�å����",1000,1000,null,true);
	SetVolume("@mbgm*", 1000, 0, null);


..//������ָ��
//�Υե����롡"md05_004gameover.nss"

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�����y
//��$�yͬ��_Flag=$ͬ����="�y"
scene md05_004byoushitsu03caa_su.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 5010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, -180, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 5100, -30, InBottom, "cg/st/st�����AȾ_���L_�Ʒ�.png");

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");
	SetFwC("cg/fw/fw�y_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���y��
<voice name="�y" class="�y" src="voice/md05/004by0050b46">
������������ʲô�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����y��
//������ʧ��

	CreateColorEXadd("�ե�å����", 20000, "WHITE");
	Fade("�ե�å����",1000,1000,null,true);

	SetVolume("@mbgm*", 1000, 0, null);


..//������ָ��
//�Υե����롡"md05_004gameover.nss"

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������
//��$����ͬ��_Flag$=ͬ����="����"
scene md05_004byoushitsu03caa_mu.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 5010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, -180, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 5100, -30, InBottom, "cg/st/st�����AȾ_���L_�Ʒ�.png");

	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("�ϱ���");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md05/004by0060a01">
�������Ұɣ�
�����б��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��װ��

	OnSE("se����_�z_װ��03",1000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	DeleteStA(0,true);

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 5010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, -180, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 5100, -410, InBottom, "cg/st/3d��������_����_ͨ��.png");

	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md05/004by0070a01">
�������������ʲô���������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����y��
//������ʧ��

	CreateColorEXadd("�ե�å����", 20000, "WHITE");
	Fade("�ե�å����",1000,1000,null,true);

	SetVolume("@mbgm*", 1000, 0, null);


..//������ָ��
//�Υե����롡"md05_004gameover.nss"

}


