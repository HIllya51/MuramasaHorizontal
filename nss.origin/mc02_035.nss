//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_035.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg084_�w�д�Ş��_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_036.nss";

}

scene mc02_035.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_034.nss"

//���w��ŞŞ��
//���������e��
	PrintBG("�ϱ���", 30000);
	OnSE("se���L_�n��_�nͻ01", 1000);

	Wait(300);

	CreateColorSPadd("��Ļ��", 1900, "WHITE");

	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg084_�w�д�Ş��_01.jpg");
	CreateTextureSPsub("�}����20", 1100, Center, Middle, "cg/bg/bg084_�w�д�Ş��_02.jpg");
	Zoom("�}����20", 0, 1200, 1200, null, true);

	Fade("�}����20", 3000, 0, null, false);
	Shake("�}����20", 3000, 50, 30, 0, 0, 1000, Dxl3, false);

	Delete("�ϱ���");
	FadeDelete("��Ļ��", 1500, true);

	SetNwH("cg/fw/ny����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�����١�
<voice name="����㣯������" class="����������" src="voice/mc02/0350010e142">
����Ŷ��������

//������㣯�����١�
<voice name="����㣯������" class="����������" src="voice/mc02/0350020e142">
���ɶ񣬳�������������⸽����
����Щ�ɶ�ļ�����Ա��������Ȼ͵��
����!!��


{	FwH("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0350030a13">
������������


{	NwH("cg/fw/ny����.png");}
//������㣯�����١�
<voice name="����㣯������" class="����������" src="voice/mc02/0350040e142">
���ֶ�����ڣ���Σ�գ�
����ץ����ߵĶ���!!��


{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0350050a13">
��������ô�ᡭ����

//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0350060a13">
����ը�ˡ���<?>
{Wait(1000);}
���𡭡���


{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0350070a13">
������������������������


//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0350080a13">
���񰡡���
���񰡡���������


//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0350090a13">
����ʵ�ڡ���̫ңԶ�ˡ���������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 1000);
}

..//������ָ��
//�Υե����롡"mc02_036.nss"