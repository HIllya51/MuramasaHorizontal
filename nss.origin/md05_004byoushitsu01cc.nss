
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01cc.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev128_�����ι�_g01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$��Ŀ��_Flag = true;

	$PreGameName = $GameName;

	$GameName = "md05_004byoushitsu01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004byoushitsu01cc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu01c.nss"

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");


//��Ŀ�Ĥ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��û�лش�
����������ȴ��ֱ�����Լ���Ŀ�������������ϵ���
Ů�к���Ĺ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$��Ŀ��_Flag = true;

..//������ָ��
//�Υե�����

}


