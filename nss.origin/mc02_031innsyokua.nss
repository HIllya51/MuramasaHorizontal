
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031innsyokua.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$�޷�ľ_Flag = false;

	$PreGameName = $GameName;
	$GameName = "mc02_031innsyokuz.nss";

}

scene mc02_031innsyokua.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc02_031innsyoku.nss"


//���޷�ľ
//���Ѥ��`��Ź��줿��
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ab_01a.jpg");
	Delete("�ϱ���");


	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	OnSE("se�M��_���ߥ���_Ź��02",1000);
	WaitKey(300);
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("�}����120", 120, Center, Middle, "cg/bg/bg080_�w�д�����Ab_01a.jpg");
	Shake("�}����120", 300, 15, 15, 0, 0, 1000, Dxl3, false);
	Fade("�ե�å����",300,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ƺ����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���޷�ľʧ��
//���ե饰�{��
//��$�޷�ľ_Flag = false;

//������Τ�ɤ��ʤ�

..//������ָ��
//�Υե����롡"mc02_031innsyokuz.nss"

}



