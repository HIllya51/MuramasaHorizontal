//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_024.nss_MAIN
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

	$GameName = "mc02_025.nss";

}

scene mc02_024.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_023.nss"

//����亻���
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����12", 8, Center, Middle, "cg/bg/bg028_��亣ǣȣѻ���_01.jpg");
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	StL(1000, @0, @0, "cg/st/st������`_ͨ��_�Ʒ�.png");
	FadeStL(300, true);

	SetFwH("cg/fw/fw������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������`��
<voice name="������`" class="������`" src="voice/mc02/0240010b00">
����������
������ף�����˲�¡����


{	StR(1000, @0, @0, "cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	FadeStR(300, false);
	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0240020b03">
������ף�����˲�¡����������Ů������
���˵�ͷ��
�������ƺ��Ƚ���Ч����

//�� inc�h�� ���ĤޤǤ�ᥦ����ɥ��Ф�Τ�رܤ��뤿��Pre�֤����ޤ���

{	FwH("cg/fw/fw������`_Ц��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mc02/0240030b00">
���һ�ġ�
�롰ΰ����硱������ͬ��һͬ������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	ClearFadeAll(0, true);
}

..//������ָ��
//�Υե����롡"mc02_025.nss"