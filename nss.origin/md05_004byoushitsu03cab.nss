
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu03cab.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg086_����_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ͬ���� == "����"){call_scene @->md05_004byoushitsu03cab_ho.nss;}
	else if($ͬ���� == "�y"){call_scene @->md05_004byoushitsu03cab_su.nss;}
	else if($ͬ���� == "����"){call_scene @->md05_004byoushitsu03cab_mu.nss;}
	else{}

		$PreGameName = $GameName;
		$GameName = "md05_004gameover.nss";

}

scene md05_004byoushitsu03cab.nss
{

..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu03ca.nss"

//�񜐶����
//���ե饰���

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������
//��$����ͬ��_Flag
scene md05_004byoushitsu03cab_ho.nss
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

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����ҡ�
<voice name="����" class="����" src="voice/md05/004by0080b52">
�������⣿��û���⣡
���Ϸ򲻻����κ��˶�����һ��������

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md05/004by0090b52">
����������Ҳ����һ��֮������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/004by0100a00">
�������ǡ���

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
//��$�yͬ��_Flag
scene md05_004byoushitsu03cab_su.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 5010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, -180, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 5100, -30, InBottom, "cg/st/st�����AȾ_���L_�Ʒ�.png");

	Delete("�ϱ���");

	SetFwC("cg/fw/fw�y_ͨ��a.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���y��
<voice name="�y" class="�y" src="voice/md05/004by0110b46">
��û���⡣
����������Ѫ�����׵�Ů�����һỤ�������ġ���

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/md05/004by0120b46">
����Ҳ���æ�İɣ�����������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/004by0130a00">
�������ǣ�ͳ���ˡ���

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
//��$����ͬ��_Flag
scene md05_004byoushitsu03cab_mu.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 5010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, -180, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 5100, -30, InBottom, "cg/st/st�����AȾ_���L_�Ʒ�.png");


	Delete("�ϱ���");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md05/004by0140a01">
���ף�
��������������������

//��������
<voice name="����" class="��������" src="voice/md05/004by0150a01">
���ܾ��������ﲻ�ԡ�����

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


