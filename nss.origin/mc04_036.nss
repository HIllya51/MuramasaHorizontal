//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_036.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_037.nss";

}

scene mc04_036.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_035.nss"


//������
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm32",0,1000,true);

	CreateColorSP("�}ɫ�\", 10000, "#000000");

	CreateEffect("Memory_cover", 5400, 0, 0, 1024, 576, "Sepia");

	OnBG(100,"bg068_���ӘS���ڲ���_01.jpg");
	FadeBG(0,true);

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\",1500,true);


	SetFwC("cg/fw/fw����_�a��.png" ,"Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc04/0360010a00">
����Ҫ��������������û�м�ֵ�ĵط���
�����������غ������ء���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0360020a03">
������û�м�ֵ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0360030a00">
���ǵġ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0360040a03">
�������ҵ���Ϊ����
��û�м�ֵ�𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0360050a00">
��û�С���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0360060a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 1000);

}

..//������ָ��
//�Υե����롡"mc04_037.nss"