
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01ca.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev128_�����ι�_g01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_004byoushitsu01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004byoushitsu01ca.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu01c.nss"

	PrintBG("�ϱ���", 30000);

//	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
//	FadeBG(0,true);

	CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");


//����Ů����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��û�лش�
������������ȴ�������ˡ�

��������Ů�Ǵն��⡣
�����������ϵ����á�����Ҫ�ļ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//������ָ��
//�Υե�����

}


