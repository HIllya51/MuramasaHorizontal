
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu03cbb.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg086_����_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ͬ���� == "����"){call_scene @->md05_004byoushitsu03cbb_ho.nss;}
	else if($ͬ���� == "�y"){call_scene @->md05_004byoushitsu03cbb_su.nss;}
	else if($ͬ���� == "����"){call_scene @->md05_004byoushitsu03cbb_mu.nss;}
	else{}

	$PreGameName = $GameName;
	$GameName = "md05_004gameover.nss";

}

scene md05_004byoushitsu03cbb.nss
{

..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu03cb.nss"

//�񜐶����
//���ե饰���



}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������
//��$����ͬ��_Flag
scene md05_004byoushitsu03cbb_ho.nss
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

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����ҡ�
<voice name="����" class="����" src="voice/md05/004by0240b52">
���������㡭����

{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md05/004by0250b52">
����Ҫ�췴��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤���
	OnSE("se���L_����_���̤���01", 1000);

	CreateColorEX("�ե�å����", 20000, "#990000");
	Fade("�ե�å����",300,1000,null,true);

	Delete("�}��");

	FadeDelete("�ե�å����",300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����˰γ��̵�������������š�

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
scene md05_004byoushitsu03cbb_su.nss
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

	SetFwC("cg/fw/fw�y_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���y��
<voice name="�y" class="�y" src="voice/md05/004by0260b46">
����������Ǹ��������
�����費̫���������Ц������

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
scene md05_004byoushitsu03cbb_mu.nss
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
[text0040]
//��������
<voice name="����" class="��������" src="voice/md05/004by0270a01">
���õġ��������ˡ�
���������Ǳ��������¡���

//��������
<voice name="����" class="��������" src="voice/md05/004by0280a01">
������š��ܿ�ͽ����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ι�
//������
//�������`���ܤ�ֹ�����
//��ϴ×����

	CreateTextureEX("�}����10", 6000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");
	Fade("�}����10", 1000, 1000, null, true);
	WaitKey(300);
	OnSE("se���L_����_��ꪏ���01", 1000);

	CreateTextureEX("�}����20", 6100, @0, @0, "cg/ef/ef008_��������܉��.jpg");
	Fade("�}����20", 300, 1000, null, true);

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 5010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, -180, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 5100, -30, InBottom, "cg/st/st�����AȾ_���L_�Ʒ�.png");

	DrawDelete("�}����*", 150, 100, "slide_04_00_0", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md05/004by0290a01">
����������!?��

//������ϴ×����
{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md05/004by0300a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���㵲ס�˴�����צ����

����������������Ȼ�ġ�
���ն������ǲ�����ɱ���ն���ġ�

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


