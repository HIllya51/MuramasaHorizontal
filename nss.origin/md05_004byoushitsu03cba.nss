
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu03cba.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg086_����_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ͬ���� == "����"){call_scene @->md05_004byoushitsu03cba_ho.nss;}
	else if($ͬ���� == "�y"){call_scene @->md05_004byoushitsu03cba_su.nss;}
	else if($ͬ���� == "����"){call_scene @->md05_004byoushitsu03cba_mu.nss;}
	else{}

	if($ͬ����=="����"){
		$PreGameName = $GameName;
		$GameName = "md05_004end.nss";
	}else{
		$PreGameName = $GameName;
		$GameName = "md05_004gameover.nss";
	}

}

scene md05_004byoushitsu03cba.nss
{

..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu03cb.nss"

//�񜐶�������
//���ե饰���



}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������
//��$����ͬ��_Flag
scene md05_004byoushitsu03cba_ho.nss
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

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����ҡ�
<voice name="����" class="����" src="voice/md05/004by0160b52">
���������������Ǵ������𣿡�

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
scene md05_004byoushitsu03cba_su.nss
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

	SetFwC("cg/fw/fw�y_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���y��
<voice name="�y" class="�y" src="voice/md05/004by0170b46">
���ȡ��ȵȣ�������
��Ҫ���з��վ;��ܶ���˵������������û
�о�ͻȻ�������ɾ簡����

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
scene md05_004byoushitsu03cba_mu.nss
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


//�����ġ������塣Ѫ

	OnSE("se���L_����_���̤���03", 1000);

	CreateTextureEX("�}����10", 6100, @0, @0, "cg/ef/ef008_��������܉��.jpg");
	Fade("�}����10", 300, 1000, null, true);
	CreateTextureEX("�}����20", 6200, @0, @0, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Fade("�}����20", 500, 1000, null, true);
	Delete("�}����10");
	Delete("�}��");
	SetVolume("@mbgm*", 1000, 0, null);

	WaitKey(1000);

	FadeDelete("�}����*",1000,true);

//��ϴ×�����������

	OnSE("se����_�n��_ܞ��01", 1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md05/004by0180a01">
�������ס�������

//��������
<voice name="����" class="��������" src="voice/md05/004by0190a01">
��Ϊʲô��
�����֡������ԡ�������

{	FwC("cg/fw/fw�����AȾ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md05/004by0200a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/004by0210a00">
��û�С������ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������û��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md05/004by0220a00">
�����������ˡ���
�����ǡ�����ȷ�ġ�����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/004by0230a01">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��û��
��
��������ȷ�ķ�����

��Ҫɱ�ն���Ļ����ն������ͻ��Ϊ�����谭��
  ��Ϊ�ն�����ע��Ҫ�����ն��⡣

����ô�ʹ�һ��ʼ���������谭ɱ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//������ָ��
//�Υե����롡"md05_004end.nss"

}


