//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_009.nss_MAIN
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
	#bg053_���}�Ҥ�ͥ_03=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_010.nss";

}

scene mc03_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_008.nss"


//��ҹ
//��ͥ��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	OnBG(100, "bg053_���}�Ҥ�ͥ_03.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 1500, true);

	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����衿
<voice name="����" class="����" src="voice/mc03/0090010a04">
������˵�������ǿ���ġ�
������ô��Ϊ�ء��������ġ���

{	StR(1000, @0, @0, "cg/st/st���}��_ͨ��_˽��.png");
	FadeStR(300, false);
	FwC("cg/fw/fw���}��_ͨ��b.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090020b17">
���롭����


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090030a04">
����ͻȻ�����������˰�����


{	FwC("cg/fw/fw���}��_ͨ��b.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090040b17">
������ô�ش�ģ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090050a04">
���Ұ�һ�ڲ�ˮ�������������ϡ���



{	FwC("cg/fw/fw���}��_��ζ.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090060b17">
�����������ǹ��ְ�������


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090070a04">
����������
����û�뵽���ܴӴ�С�������������ֻ�����



{	FwC("cg/fw/fw���}��_ͨ��b.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090080b17">
������Ҳ�벻����
��������ѽ������


{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090090b17">
������֦���ˣ���Щ�ı����𡣡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090100a04">
�����������ء���


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090110b17">
������ʮ�ꡣ���û���κθı䣬�ǲ������
�İɣ����ǡ���
���һ���Ϊ����<RUBY text="������������">����ı����</RUBY>�ء���



{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090120a04">
���š���


{	FwC("cg/fw/fw���}��_ͨ��b.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090130b17">
����˵����ĳ���������ò���ı���˸ı���
�𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090140a04">
���������
����������ˡ���


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090150b17">
���Ǹ������ˣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090160a04">
���Ǹ�Ť������Ŷ����


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���}��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090170b17">
����ѽ��
�������������������ܸ����˴����Ҹ�������
�ء���


{	FwC("cg/fw/fw���}��_ͨ��b.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090180b17">
���Ǻ�����֦�������ķ���������Ͷ����
������˵���෴�ء���


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090190a04">
�������������


{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090200b17">
�������Ϊ���˶��ı䣬����֦����Ҳ��һ��
��Ů���˰ɡ�
���⵹�Ǻܲ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090210a04">
������ı�ġ���


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090220b17">
������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090230a04">
��<RUBY text="��">��</RUBY>����
���������ơ���


//�����衿
<voice name="����" class="����" src="voice/mc03/0090240a04">
���ı��ֻ������Ĳ��֡�
����������ԭ�������ӷ��˵���β��������˭
������


{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090250b17">
����˵��������֦����Ҳ�Ǵ�һ��ʼ��������
û���κθı��𡭡�
����ô����������������


{	FwC("cg/fw/fw���}��_ͨ��b.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090260b17">
������֦���˵ĸ�������<RUBY text="����">�ı�</RUBY>�أ���


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090270a04">
�������������


{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0090280b17">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0090290a04">
�����ı��ء�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc03_010.nss"