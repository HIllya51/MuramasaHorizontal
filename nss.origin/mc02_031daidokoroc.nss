
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoroc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$�޷�ľ_Flag = true;

	$PreGameName = $GameName;

	$GameName = "mc02_031daidokoroz.nss";

}

scene mc02_031daidokoroc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_031daidokoro.nss"

//���޷�ľ
	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("�ϱ���");




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���Ұ���ĥ����������������ǳ�֮Ϊ��ɫ������
������������������ζ��ʲô�Ĺ��߰ɣ���ô��
����᲻����ʲô�ô��أ�

�����������š�
��Ҫ�ǰ��µĻ����˾��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���޷�ľ����
//���ե饰�{��
//��$�޷�ľ_Flag = true;

//�������Ƅ�

..//������ָ��
//�Υե����롡"mc02_031daidokoroz.nss"

}

