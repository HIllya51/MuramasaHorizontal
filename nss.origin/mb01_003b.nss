//<continuation number="70">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003b.nss_MAIN
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
	#bg032_��ᦌm�������b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_004.nss";

}

scene mb01_003b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mb01_003.nss"

//��С���
//������֦���������Ƥ�������

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg032_��ᦌm�������b_01.jpg");
	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeBG(0,true);
	FadeStR(0,true);
	Delete("�ϱ���");
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/003b0010a10">
���ѵ��Ǿ�����������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/003b0020a11">
���������Բ��ǡ�
���ѵõ�ȷ�ϡ���ΰݵ��죬
����δ�����ҵĹ�ۡ�벽����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/003b0030a10">
��������ô��
��������ô���£���


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/003b0040a11">
��������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/003b0050a11">
������״����
������������<RUBY text="��������������������">����ͬ��ᦹ�һ����ʧ</RUBY>����ʵ���⣬һ����֪����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/003b0060a10">
��ʲô���޷������𣿡�


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/003b0070a11">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

..//������ָ��
//�Υե����롡"mb01_004.nss"