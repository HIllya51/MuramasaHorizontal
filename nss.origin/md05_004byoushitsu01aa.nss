
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01aa.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev128_�����ι�_g01=true;
	#bg086_����_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_004byoushitsu01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004byoushitsu01aa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu01a.nss"

//���ݤ���

	PrintBG("�ϱ���", 30000);


	CreateTextureEX("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");
	Fade("�}hikaru", 0, 1000, null, true);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);
	
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");
	Fade("�}hikaru", 500, 0, null, true);

//	FadeDelete("hikaru",1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��û�������ķ��䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}hikaru", 500, 1000, null, true);


..//������ָ��
//�Υե�����

}


