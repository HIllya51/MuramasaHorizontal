
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004yashiki02ca.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg051_�����Ҿ��g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$���ҹ�_Flag = true;

	$PreGameName = $GameName;

	$GameName = "md05_004yashiki01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004yashiki02ca.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg051_�����Ҿ��g_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);

	Delete("�ϱ���");



..//������ָ��
//ǰ�ե����롡"md05_004yashiki01c.nss"


//������

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����ҡ�
<voice name="����" class="����" src="voice/md05/004ya0080b52">
���̳дն�Ѫͳ��Ψһ�ĺ��ӡ���
�����������������Բ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$���ҹ�_Flag = true;

}

..//������ָ��
//�Υե�����