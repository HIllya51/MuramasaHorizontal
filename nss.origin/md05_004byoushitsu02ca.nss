
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu02ca.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg086_����_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_004gameover.nss";

}

scene md05_004byoushitsu02ca.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu02c.nss"


	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");


//���ؤ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��û����������

����ʲô���������������Ů��
����Զ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����y��
//������ʧ��

	CreateColorEXadd("�ե�å����", 3000, "WHITE");
	Fade("�ե�å����",1000,1000,null,true);

..//������ָ��
//�Υե����롡"md05_004gameover.nss"

}


