
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004saidenn02ca.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg054_�����Ҽ���a_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$������_Flag = true;


	$PreGameName = $GameName;

	$GameName = "md05_004saidenn01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004saidenn02ca.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d����֩��_���.png");
	FadeStR(0, true);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"md05_004saidenn01c.nss"


//������

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md05/004sa0110a01">
�������⣿��

//��������
<voice name="����" class="��������" src="voice/md05/004sa0120a01">
�����ǡ��������ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$������_Flag = true;

..//������ָ��
//�Υե�����

}

