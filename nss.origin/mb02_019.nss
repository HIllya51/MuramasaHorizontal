//<continuation number="80">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_019.nss_MAIN
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
	#bg067_���ӘS�����ܘS��_01b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_�˰�ʽ�o�T��=true;

	$PreGameName = $GameName;

	$GameName = "mb02_020.nss";

}

scene mb02_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_018.nss"

//������������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg067_���ӘS�����ܘS��_01b.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fwһ��_����b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0190010a02">
���������С�����


{
//���Ѥ��á��������ֹ�᤿
	CreateSE("SE01","se����_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0190020a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0190030a02">
���ն���������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0190040a00">
�������𶯣�


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0190050a02">
��Ϊʲô����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0190060a00">
������ϸ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����̨���x
//���o�T�����H�lꠡ���\��
//���������
	#av_�˰�ʽ�o�T��=true;

	CreatePlainSP("�}��д", 5000);
	Wait(1);
	CreateTextureSP("�}�ݱ���", 2100, -437, -418, "cg/bg/resize/bg067_���ӘS�����ܘS��_01bl.jpg");

	StL(3000, @-60, @0,"cg/st/3d�˰�ʽ�o�T��_����_ͨ��.png");
	StCL(3050, @60, @0,"cg/st/3d�ũ�ʽָ�]��_����_ͨ��.png");
	StC(3100, @180,@0,"cg/st/st��霔�_ͨ��_˽��.png");
	StCR(3000, @30, @0,"cg/st/3d�ũ�ʽ�o�T��_����_ͨ��.png");
	StR(3050, @120, @0,"cg/st/3d�˰�ʽ�o�T��_����_ͨ��.png");
	FadeStA(0,true);

	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb02/0190070a00">
��<RUBY text="��������">ֻҪһ��</RUBY>��<RUBY text="��������������">��˭Ҳ�޷��þ�</RUBY>��


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0190080a02">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ġ�����Ź�ä���
	CreateSE("SE01","se����_����_��Ź��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);


}

..//������ָ��
//�Υե����롡"mb02_020.nss"