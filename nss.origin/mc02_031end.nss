//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031end.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg084_�w�д�Ş��_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#�w�д�̽���K�� = true;

	$PreGameName = $GameName;

	$GameName = "mc02_032.nss";

	mc02_FlagDef();

}

scene mc02_031end.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_031tennbou.nss"


//��̽���K��
//�������

//��Ş��
	PrintBG("�ϱ���", 30000);
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg084_�w�д�Ş��_01.jpg");

	FadeDelete("�ϱ���",500,true);


	SetFwH("cg/fw/fw�������_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/031en0010a13">
��ʱ�����ˡ���

{	FwH("cg/fw/fw�������_ŭ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/031en0020a13">
�����ˡ������ǵ���!!��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 1000);


..//������ָ��
//�Υե����롡"mc02_032.nss"

}

