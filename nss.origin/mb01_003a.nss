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

scene mb01_003a.nss_MAIN
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

scene mb01_003a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_003.nss"

//��С���
//������֦�����椷�Ƥ�������

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
<voice name="���m" class="���m" src="voice/mb01/003a0010a10">
������֦���еû�˳���𡭡�����


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/003a0020a11">
�����˵������֮��Ҳ��ȫû�к������磬
��ʵ���ɡ�
����Ҳ���Թ�����̽Ǳ��ǣȣѣ���������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/003a0030a10">
������ˣ���


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/003a0040a11">
���������ٲ������ƺ���׷�ٱ���Ϊʧ�ٵ�
�����ξȥ�ˡ�
��Ҳ����˵��ͬ�ҷ�һ�������Է�Ҳ�ڻ���
�Ƿ����ҷ��й�������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/003a0050a10">
������Ҳ�ѹ֡�
���غ���ᦹ����


//�����m��
<voice name="���m" class="���m" src="voice/mb01/003a0060a10">
�����ǣ���ô����
��������ô���£���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/003a0070a11">
������״����
��ֻ��˵��ξ�ͻ���<RUBY text="����������������">��ͬ��ᦹ�һ����ʧ��</RUBY>����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/003a0080a10">
���޷������𣿡�


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/003a0090a11">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"mb01_004.nss"