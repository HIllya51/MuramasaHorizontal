//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_038.nss_MAIN
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

	$GameName = "mc04_039.nss";

}

scene mc04_038.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_037.nss"


//������

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm18",0,1000,true);

	CreateTextureSP("�}����1", 10, Center, Middle, "cg/bg/bg012_�`�}�kǰ���x_01.jpg");
	CreateColorSP("�ե�å����", 15000, "WHITE");
	EfRecoIn1(18000,0);

	StR(1000, @0, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStL(0,false);
	FadeStR(0,true);
	Delete("�ϱ���");
	Delete("�ե�å����");
	EfRecoIn2(300);


	SetFwC("cg/fw/fw���w_ͨ��a.png" , "Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����w��
<voice name="���w" class="���w" src="voice/mc04/0380010b56">
���Ǹ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0380020a03">
���š���


{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/mc04/0380030b56">
���е���������������
������������˼������ס���⸽����ѧ����
���������۷ɡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0380040a03">
���š���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0380050a03">
���۷ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 1000);

}

..//������ָ��
//�Υե����롡"mc04_039.nss"