//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_010.nss_MAIN
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
	#bg050_���ӘS�����hǰ_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_011.nss";

}

scene mc03_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_009.nss"

//�������գ�
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�}ɫ�\", 10000, "#000000");
	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg001_��b_01.jpg");

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\",1500,true);

	SoundPlay("@mbgm32", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������糿��
��
��������Ԥ�У������������;�ˡ�

��������;�У���ɴ����ξ�ļƻ���ͬʱ��Ҳ������
�Ǻ��Ǽ��¡�֮�󣬸����������ֻʣ��һ���ˡ�
������������ĵ�<RUBY text="����">����</RUBY>�����˶��ѡ�


���ն������Ŀ־塣
���ն��������ڴ���
��
���ն�������ȷ�Ľ�֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc03/0100010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ҵļ��е��������ƣ�ͣ��ؿ���������İ��ġ�
��̫���ˡ��������š�����һ�ж�Ҫ�����ˡ�ֻ��һ��
�ˡ����ڡ�

��<RUBY text="�Լ�">����</RUBY>���õ���Ӧ������ӭ����ȷ�Ľ�֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100020a03">
�������������ˣ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0100030a00">
��û�¡�
����ֻ��ͻȻ�����˸п�����


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0100040a00">
���ܹ������㣬����̫���ˡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100050a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����}ۡǰ��bg050����
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	
	Delete("�}����*");
	OnBG(100, "bg050_���ӘS�����hǰ_01.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	StR(1000, @0, @0, "cg/st/st���}��_ͨ��_˽��.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw���}��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100060b17">
��û������ʲô�����ɡ���

{	StL(1000, @80, @0, "cg/st/st����֦_ͨ��_˽��b.png");
	StCL(1000, @-60, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, false);
	FadeStCL(300, false);}


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100070a03">
���š�
����ô�������ˡ���


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100080b17">
��·����С�ġ�
��ɴ��������֦���˾Ͱ������ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0100090a04">
�������Ұɣ���硣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���}��_��ζ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//����ե����
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100100b17">
<FONT size="50">������������</FONT>

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc03/0100110a00">
�����ϣ��������鷳�ˡ���


{	FwC("cg/fw/fw���}��_ͨ��b.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100120b17">
����û����̫����¡�
������Ҳ�ǣ�·�ϱ��ء���


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100130b17">
�����������������Ӿͺ��ˡ���



{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0100140a00">
�������ǡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100150a03">
������үү����


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100160b17">
���ţ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100170a03">
�������ȥ��һ���ǻ�������ҵİɡ���



{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100180b17">
����������ȥ����ɡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100190a03">
��������


{	FwC("cg/fw/fw���}��_��ζ.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100200b17">
�����ϵĴ��񡭡����������ļҷ��Ѿ��Ͼ��ˡ���



{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100210b17">
���Ҵ�˵һ�䣬����ǰ��������������֦��
�˵ĸ�����ɵġ���



{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100220a03">
���š�����


{	FwC("cg/fw/fw���}��_��ζ.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100230b17">
������־����Σ��ֶ�ȴѡ���ˡ�
�������������������ң������ʨ�Ӻ���
���˵ķ�չ������Լ�����ɱ��������

//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100240b17">
�����ڵĴ���ұ�ʨ�Ӻ�����֮���Ѿ�ʧȥ
�˹�ȥ�����ӡ���
����Ϊ��������Ȩ�����߹�֮Ⱥ������ֻ�Ǹ�
���������ˡ���

//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100250b17">
������׹�ڵ��棬��Ϊ�˶���
�����ڶ��������аٺ�����һ������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100260a03">
��������


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100270b17">
��ȥ�������ɡ�
��������ڼ���ļ̳к��ػ������������
��ô�������֮�����ս�Ҳ����������񡣡�


//�룺������091006��
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100280b17">
������֦���ˡ����ǳ����˺����ٻ�֮��û��
�κβ��ܵ��ˡ�
���㽵���ڵ�����Ӧ������������ġ���



{	FwC("cg/fw/fw���}��_��˼.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100290b17">
����һ���������Լ�����Ըȥ�ж��ɡ�
������Ĵ�����֮�󣬻�֦����Ӧ�ûὨ��
���µĴ��񡣡�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100300a03">
������������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100310a03">
���ǡ���


{	FwC("cg/fw/fw���}��_ͨ��a.png");}
//�����}�̡�
<voice name="���}��" class="���}��" src="voice/mc03/0100320b17">
��ף����˳������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100330a03">
��үүҲ���ء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0100340a04">
����ô��С�㣬�����߰ɡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0100350a03">
���š���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0100360a00">
������Ҫ����ȥ�S����
�����ǵ���״��ˣ�ȥ�S��Ӧ�û�����ѡ���



{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0100370a04">
����Ҳ���ǹ����ַ�������
�����ǰ����ǰ�����֮�󣬽���ֻص����
ʼ����㡣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0100380a04">
����󣬾���ʹ����û�м��������ķ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0100390a00">
��Ҳ����˵������


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0100400a04">
������·����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc03_011.nss"