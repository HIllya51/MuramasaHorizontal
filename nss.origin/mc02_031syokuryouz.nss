
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031syokuryouz.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_031daidokoro.nss";

//�룺��������{��
//	$Next_GameName = $GameName;
//	$GameName = "mc02_031time.nss";

}

scene mc02_031syokuryouz.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc02_031syokuryou.nss"
//ǰ�ե����롡"mc02_031syokuryoua.nss"



//��ȡ��ʤ�
//�����Τ�ȡ�ä���⤳��


	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg081_�w�д�����Ba_01b.jpg");
	Delete("�ϱ���");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������ֻ��һ�����ڡ�
���ҷ��س�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������̨��
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

..//������ָ��
//�Υե����롡"mc02_031daidokoro.nss"

}

