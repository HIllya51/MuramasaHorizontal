//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_027.nss_MAIN
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
	#bg002_��a_01=true;
	#bg002_��a_02=true;
	#bg002_��a_03=true;
	#bg027_���ӘS�u�h���g_03a=true;
	#bg057_���ӘS������_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_028.nss";

}

scene md04_027.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"md04_026vs.nss"


//���ա�Ϧ�ա�ҹ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	
	SoundPlay("@mbgm35", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);
	
	WaitKey(1000);
	CreateTextureSP("�}����200", 900, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	FadeDelete("�}����100",1500,true);
	WaitKey(1000);
	CreateTextureSP("�}����300", 800, Center, Middle, "cg/bg/bg002_��a_03.jpg");
	FadeDelete("�}����200",1500,true);
	WaitKey(1000);
	CreateTextureSP("�}����400", 700, Center, Middle, "cg/bg/bg027_���ӘS�u�h���g_03a.jpg");
	FadeDelete("�}����300",1500,true);

//�����ӘS

	StL(1000, @-100, @0, "cg/st/stͯ��_ͨ��_˽��a.png");
	StR(1100, @90, @0, "cg/st/st�衩��_ͨ��_�Ʒ�b.png");
	FadeStR(300, false);
	FadeStL(300, true);

	Wait(500);

	SetFwC("cg/fw/fwͯ��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0270010a09">
���������뽩�־����˰�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270020a07">
����˵��΢��ؿ��еĿ���Ȩ��������������
�Ĳ��죬�Է���Ȼռ���ơ�
������Ҳһ������

{	StCR(1000, @-70, @0, "cg/st/st�׵�_ͨ��_�Ʒ�.png");
	FadeStCR(300, false);
	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0270030a08">
������Ҳ�ǰ���
����������ģ�
�����Ҳ����ֻ��һ�����Ӷ��ѡ���

{	StCL(1000, @70, @0, "cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStCL(300, false);
	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0270040a06">
���š�
������˵��Ӧ�ý��㴨ȫ������֧Ԯ�𣿡�

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0270050a08">
��������������˵����
����������Ҳ����������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0270060a09">
���ǡ��ǡ�
��ʨ�Ӻ������������ʱ�򡣡�

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0270070a09">
����Ӧ����������Ҳ�Ƕ����ʨ�Ӻ���ˡ�
��Ϊ�˲�����ЩŬ��������Ӱ�����Ǳ��뿼
�ǽ����¡���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0270080a06">
��Ҫ�ı����ֵ����ƣ�
������Ӧ�����ⲿ��������
������裬ܥԽ��������������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270090a07">
������������ˡ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0270100a08">
����Ȼ�ܹ������̽�������ڵ�ʿ������������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0270110a09">
���������ֻ��Ӱ�쵽�����ɡ�
���ɲ���ս���ġ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270120a07">
��������̽���أ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0270130a06">
�������������⡣
������Զ����½������䱸����˧���������С���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0270140a08">
�������������˰�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0270150a09">
���ǣȣѵ�����Ҳ���������⡣
������Ӧ��Ҳ��ϣ��ս��������ȥ����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270160a07">
��Ҫ���źӵľ��ŵ��䵽����𣿡�

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0270170a08">
����Ҳ���ǲ����ܡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0270180a06">
������ʱ���Ҫ���õ��㴨�ı�����
�����Ƕ�عźӣ���ס�ǰ��˵ĺ󷽾��С�
���Ұ��ܰ쵽�����µļһ����ڻ���ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md04/0270190a06">
����פ���ı����������ޡ�
��һ��ȷ���źӾݵ㣬һ���ɱ���Ԯ���ֿ���
�൱���ѵġ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0270200a09">
���������ǡ�����

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0270210a08">
�������Ļ����������˵Ҳ�Ǹ��û��ᡣ��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270220a07">
��û��û����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������


	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStA(0,true);
	Delete("�}����*");
	OnBG(100, "bg057_���ӘS������_03.jpg");
	FadeBG(0, true);

	Wait(500);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270230a07">
���������ǡ�
����Ȼ���ǣȣѽ������ֶ����Ƕ�֪������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��һ�����̺󣬲����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270240a07">
�����������������ư���
����������Ȼ�޷�����ȡʤ�������Դ����
��ֻ���������ơ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0270250a00">
�����ǲ���裬
�������ǡ�������һ�������ա���

//��������
<voice name="����" class="����" src="voice/md04/0270260a00">
���������վ��ѣ�Ҳ����ָ�����찡��
���ܸϵ����𣿡�

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270270a07">
���ܸ��ϡ�
���ϲ��ϵĻ�����Ҷ���<RUBY text="����">�군</RUBY>����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270280a07">
�������������³���
��������Ϊ���ң�����Ϊ�˸���㣬�ֻ���
Ϊ�˹������¡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0270290a00">
��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270300a07">
�����죬��פ������ʹ�ö����׵���
���ֶ���һ�����������õġ�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0270310a07">
����ҹ֮�ʡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_028.nss"