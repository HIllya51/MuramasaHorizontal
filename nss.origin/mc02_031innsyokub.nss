
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031innsyokub.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$����_Flag=false;

	$PreGameName = $GameName;
	$GameName = "mc02_031innsyokuz.nss";

}

scene mc02_031innsyokub.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_031innsyoku.nss"


//������

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("�ϱ���");


	OnSE("se�M��_���㥰_���äȤ�",1000);
	WaitKey(1300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc02/031in0250a00">
���Ѿ�û���˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm21", 0, 1, null);
	WaitKey(1000);
	SetVolume("@mbgm21", 500, 1000, null);


//���̥������ȡ��£ǣͤ�ֹ���

//������ʧ��
//���ե饰�{��
//��$����_Flag = false;


//������Τ�ɤ��ʤ�

..//������ָ��
//�Υե����롡"mc02_031innsyokuz.nss"

}


