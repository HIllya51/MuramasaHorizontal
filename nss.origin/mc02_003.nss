//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_003.nss_MAIN
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
	#bg030_�ǣȣѱO������_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_004.nss";

}

scene mc02_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_002a.nss"
//ǰ�ե����롡"mc02_002b.nss"

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm34",0,1000,true);

	CreateTextureSP("�}����20", 0, Center, Middle, "cg/bg/bg078_���`������ʷ�͢_01.jpg");
	StR(1800, @0, @0, "cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStR(0,true);

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����w��
{Delete("�ϱ���");}
<voice name="���w" class="���w" src="voice/mc02/0030010b56">
�����С�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ŭ��.png");
	SetComic(@0,@0,1);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030020a07">
��̫����������Ҫ��ð�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030030b56">
�����м�ʡ�Ե�����ʣһ������


{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030040b56">
������ɱ�����Լ���ĸ�ס�
�����ϡ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030050a07">
���ã������ˡ���


{	DeleteStR(300,false);
	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030060a07">
����ô���绤�ˣ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030070a11">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StL(1800, @0, @20, "cg/st/st���L_ͨ��_�Ʒ�.png");
	OnSE("se�ճ�_��_�����Q��02",1000);
	Move("@StL*", 300, @0, @-20, Dxl1, false);
	FadeStL(300, true);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030080a07">
�������������绤�������Կ��ɡ���


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030090a11">
����Щ������ǵ��ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�@��.png");
	SetComic(@0, @0, 7);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030100a07">
��ɶ��
����ǵ��Ѱ�����������!?��


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

	SetFwC("cg/fw/fw���L_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030110a11">
���ǵġ�������ǵ��ѡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030120a07">
���Ǿ�û�취����
����ͬ�����鴦����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030130a07">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_ߵ��02",1000);
	StR(1800, @0, @70, "cg/st/st���w_ͨ��_�Ʒ�.png");
	Move("@StR*", 300, @0, @-70, Axl3, false);
	OnSE("se�ճ�_��_�����Q��02",1000);
	FadeStR(300, false);

	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030140b56">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�䵨.png");
	SetComic(@30, @0, 5);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030150a07">
��������


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();


	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030160b56">
�����ʱ绤�ˣ�
������ν����ǵ��ѣ�
�������ﲻ���ѣ���


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030170a11">
�������˶�ʱʧȥ˫�ף��м�ʡ�ԣ�����


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030180a11">
��������ı�����ֻ����Ҫ������
ȴ��С��ɱ���Է����м�ʡ�ԣ�����


{	FwC("cg/fw/fw���L_Ц�.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030190a11">
����ʬ�����������������ͼʹ�Է�
�������鸴����һ���������
���м�ʡ�ԣ�����


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030200a11">
�����������������ɣ����Զ϶�������
�Ա����߲���ɱ�⡣��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ŭ��b.png");
	SetComic(@0, @0, 15);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]

//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030210b56">
�������ڡ�������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030220a07">
���š�����绤�������桭��
���²۵�̫���ˣ��ҷ�����֪��
�ôӺ��²��ˡ���


{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030230a07">
���޷���ս�Ե�һ����
�����ܾ���������ʵ��²ۣ����ᱻ����һ�ҡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030240a11">
�����ŷ����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text00130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030250a07">
������ŷ��ˡ�
���Ǿ���ͥ�ɡ���


{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030260b56">
�����ɱ���ƭ�ˣ����٣���


{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030270a07">
��������


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030280a11">
�����кβ�������


{	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030290b56">
��̫���ˣ���


{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030300a07">
���������ղŵĻ���Ҳ�����˰ɡ�
��������ǵ�����������û��ɱ��ѽ��
��������˵һ�䱧Ǹ����
�����´��˰ɡ�����


{	FwC("cg/fw/fw���w_ŭ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030310b56">
��������
����������ǵ��ѻ���ȫ��ɱ�⣬���
������ɱ������λ��ô���ܻ�ʹ˰�����!!��


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030320a07">
�����ɲ���Ϊ�����˶����ڵ�ѽ��
����Ϊ�˻��˶�������Ŷ����


{	FwC("cg/fw/fw���L_Ц�.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030330a11">
���治���Ƿ��١������п���������


{	FwC("cg/fw/fw���w_�Ӥ�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030340b56">
��������Щ�쵰�����ô�����һ�¡���
�Լ�����֮�Զ���Ὣ���������
Ӱ��ɡ������������ˡ�����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030350a07">
����������ô˵����Ҳû�취������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030360a11">
����Ϊ���ǹ���������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ŭ��b.png");
	SetComic(@0, @0, 1);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text00140]
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030370b56">
�����ۡ�������!!
  �������Ƕ���˵��ְҵ��ʶ���ȷ����
��������û������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	
	DeleteComic();

	SetFwC("cg/fw/fw�衩��_�䵨.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text00150]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030380a07">
���ء�������Ǹ����Եļ��١���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030390a07">
��û�취�����Ҹ�����һ����Э�������ˡ���


{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030400b56">
�������ģ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030410a07">
������С�ܵ�û�д����Բ����������̡�
����Ϊ�����������ɱ���Ǳߵı绤�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text00160]
���������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030420a11">
����˵�ң���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030430a07">
���š���


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030440a11">
����ֻҪ�����ȱ����ˣ��ҵĹ���
��������ˣ�����������ν����


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030450a07">
���������أ���


{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030460b56">
���š���
�����������𱻸��ˣ������ҿ��绤��
����˳�ۡ���


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030470a07">
�����ѧ�����һЩŶ����


{	FwC("cg/fw/fw���w_Ц�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0030480b56">
���⵹Ҳ�ǡ�
���Ǿ���ô��ɡ���


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

// ��inc�ñ��� �������餷�Ф餯��Ӱ���ȥܥå�����ͬ�r�軭��ͬ�r��ȥ

	DeleteStL(150,false);
	DeleteStR(150,false);

	StC(1800, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStC(200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����š�
���ȵȵȡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStC(150,false);

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030490a07">
���ţ�
����������ô������Ϊɶ���һ��һ�ϵģ���


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030500a07">
���ѵ���ʲô��˵�Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StC(1800, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStC(150, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����Ȼ���ˣ�

��Ϊ�Ρ�����û�����Լ���������ܷ���
ȴʹ��������Ѫ��֮��!!
���ͷ��Ҿ����˰�������

�����Լ���˭��������ҵ�������޴�
Ѱ���дǵģ�
��������Դ�ֻ�ʺ������������������������ϣ�

�����ԣ����ҡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStC(150,false);


	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030510a07">
����ʲô��û�����ء���


{	FwC("cg/fw/fw���L_Ц�.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc02/0030520a11">
����������û��ʲô�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1800,@0,@ 0,"cg/st/st����_ͨ��_˽��.png");
	FadeStC(150,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��������������!?

���ҵ���͡����������ã�
�����Ƕ�������ʹ�á���������ˡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStC(150,false);

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030530a07">
���Ǿ�ʩ�̰ɡ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030540a07">
���ţ������������򣬣ã��塡����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`���Х����ǈ�
//���ܩ`���󘋤�

	StL(1800, @-50, @0, "cg/st/3d�Х���_����_���L.png");
	Move("@StL*", 300, @50, @0, null, false);
	OnSE("se����_�z_�l����01",1000);
	FadeStL(300, true);
	OnSE("se���L_�|��_������01",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����һ�£�
���ȡ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0030550a07">
�����ְɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//���ãǣ��Х����������䚢

	CreateColorSP("�\", 1100, "BLACK");
	DeleteStA(0,true);

	SL_centerout(@0,@-100,300);

	OnSE("se����_��x_�Х���_�ѥ�ɥå���01",1000);

	SL_centeroutfade2(10);



	CreateColorSP("����`", 15000, "RED");

//inc�ñ�������_�J�Τ�����ߩ`�ãǤ����Ƥ���ޤ���


	CreateTextureSP("�}��2", 3000, Center, Middle, "cg/ev/ev170_�Х������L���䚢_b.jpg");

	Zoom("�}��3", 0, 1500, 1500, null, true);
	SetBlur("�}EF100", true, 5, 500, 50, false);
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	OnSE("se���L_����_ͻ�M01",1000);
	Zoom("�}EF100", 500, 1000, 1000, Dxl1, false);
	Fade("�}EF100", 200, 1000, null, true);
	WaitKey(400);
	Delete("�}EF100");

	Fade("����`", 1000, 0, null, true);


	OnSE("se���L_�Ɖ�_���k01",1000);
	FadeDelete("�}��", 0, true);
	FadeDelete("�}ɫ100", 1500, false);
	FadeDelete("�}��3", 1500, false);
	Move("�}��3", 1500, @-400, @0, DxlAuto, false);


	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mc02/0030560a00">
����������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	SL_centerdam(@0,@0,1600);
	OnSE("se����_Ѫ_�����01",1000);
	CreateColorEX("�}��ܞ", 25000, "RED");
	Fade("�}��ܞ", 1000, 1000, null,false);
	SL_centerdamfade2(100);
	DeleteStR(300,true);
	FadeDelete("�}��2", 0, true);
	FadeDelete("�}��ܞ", 1500, true);
	SoundPlay("@mbgm31",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
��Ϊʲô��������������!!

��Ϊʲô�������ܹ�����ȥ����
������Ӧ���ŵ���ȴ��ȥ��!?

����������ѵ�û��������

�����������ܹ��ˡ�
����β���ӭ���ս᣿����������<RUBY text="��������">�ʹ˸���</RUBY>��

���ѵ���ֻ�������˶���

���ѵ���ֻ���ʸ����ӱ����ʵİ���������
���ͷ��أ���ʹ���أ��������أ�

���ͷ�!!

���������������ң�Ϊ��û�б��������֮
������
��Ϊ�β��Գ�����������������ұ�Ӧ��

���⡭�����������������!?

���ǣ��������ϣ�����ԣ�
������֮ʿ���ڷ������������������Ķ��ȴ
û���ܵ��ͷ��������ʹ����֮ʿ���������
��ʽ���Ĳ�ֵ!!

�������Ͽ������£�

�������м�ֵ�������м�ֵ��
�����Ҳб��ؽ����ǵļ�ֵ�Ӷ��ȥ�ˡ�

�����ԣ������ˡ�
�������ˡ�����˭�����ԡ�

������
�����������ҡ���������㡪������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ŀҙ��
//����亻����ڡ�������ܛ������
//���x���Ҋ�ؤ��ݳ����⤷�����g

	CreateColorEX("�\", 25000, "BLACK");
	Fade("�\", 0, 1000, null, true);

	CreateTextureSP("�}����11", 10, Center, Middle, "cg/bg/bg030_�ǣȣѱO������_01.jpg");
	CreateTextureSP("�}����10", 11, Center, Middle, "cg/bg/bg030_�ǣȣѱO������_01.jpg");
	SetShade("�}����10", NOMORE);
	FadeDelete("�\", 500, false);
	WaitKey(1500);	
	FadeDelete("�}����10", 1500, true);
	WaitKey(1500);


	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/mc02/0030570a00">
��������������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0030580a00">
�����������ǡ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);
}

..//������ָ��
//�Υե����롡"mc02_004.nss"