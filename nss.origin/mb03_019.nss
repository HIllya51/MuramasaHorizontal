//<continuation number="830">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_019.nss_MAIN
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
	#bg076_�����¾���_02=true;
	#bg032_��ᦌm�������b_01=true;
	#bg002_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_020.nss";

}

scene mb03_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_018.nss"

//��Ϧ��
//���ӣťե��`�ɥ����|�������Q
//��������
//���|������ꪡ����Q��
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}�ݱ���", 4000, Center, 0, "cg/bg/resize/bg002_��a_02.jpg");
	OnBG(100,"bg076_�����¾���_02.jpg");
	CreateSE("SEL01","se����_����_������L��04");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	WaitKey(2000);
	Move("�}�ݱ���", 3000, @0, @-568, AxlDxl, false);
	FadeDelete("�}�ݱ���", 3000, true);

	WaitKey(1000);


//���H��������
//�����L
	SetVolume("SE*", 3000, 500, null);
	OnBG(100,"bg032_��ᦌm�������b_01.jpg");
	FadeBG(3000,true);

	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetVolume("SE*", 3000, 0, null);

	SetFwC("cg/fw/fw���L_�䅗.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0190010a11">
�����������¡�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190020a10">
������Ŷ��
���������ˣ��ճء���


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0190030a11">
��������������һ����
�����������Ժ󡣡�


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190040a10">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������Ф������L����
	CreateSE("SE01b","se����_�n��_ܞ��03");
	Move("@StR*", 300, @-10, @30, Dxl1, false);
	DeleteStR(300,true);
	MusicStart("SE01b",0,1000,0,1000,null,false);


//����������
//������������
	WaitKey(2000);

	CreateSE("SE02","se����_����_�i��08");
	MusicStart("SE02",2000,1000,0,750,null,false);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190050a10">
������������


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190060a10">
��û�뵽��������ð���
��ܥԽ����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190070a07">
����ϣ�����׵���
�����ӵ��¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��
	SetVolume("SE*", 100, 0, null);
	StL(1000, @30, @0,"cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);
	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190080a07">
����û���ң��������ź���
�������Ҿ��ò���������˭����û�������ɣ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190090a10">
�������ǰ���
�����������ǵ���ʧ�ܵ����Σ��������ѡ���


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190100a07">
���š�
��ƫƫ���׵����֣������Ʋ����Ǽһ��ˣ�
�����޲���Ŷ����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190110a10">
��������


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190120a07">
����̫�ļ��ˣ������ˡ�
����������ڴˡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190130a10">
�������Զ԰�������˵�ɡ�
���´λ����ø��á���


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190140a07">
���´ΰ�������


{	FwC("cg/fw/fw�H��_Ц��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190150a10">
����Ц������Ц��
��������ô����������ҡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190160a10">
���ճػ��ڵ����ء�
���ܿ���������һ������𡣡�


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190170a07">
���������Ĺ�������������
����λ���岻��Ӧ�����������ȥ����Լ���
��Ըô����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190180a10">
����������
�������ۺܻ�������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190190a07">
�����𣿡�


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190200a10">
���ص���Ϊ�����㲻���𡣡�


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190210a07">
�����ǡ�������Ŷ��
�������ϣ���Ļ������Գ�ȫ�㡣��


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190220a10">
������������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190230a07">
���ף�������ô������ȸԾ������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190240a10">
�������������������˵��
����ô�����������ʲô����


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190250a07">
��û��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190260a10">
��������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190270a07">
���ҿ�����Ѱ����͵���ȫ�ĵط�Ŷ��
��������԰ɣ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190280a10">
���ǣȣѡ�������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190290a07">
���ǡ�
���������ڿ���������ü�ֵ�ˡ���


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190300a07">
������ı��֣��ḡ��������׷�����������¡�
�����ù���վ���Լ���ߣ��������ٷ��㲻������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190310a10">
������ǰ���ǵ��������ҵ��м��˰���
���������ڣǣȣѼ���û����������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190320a07">
����������;�ĸ���
���Ҳ����ܰ������������ǰһ�Ӿ����µġ�
�Ҳ������˵��ۺ�����Ǻ��ܵ��ġ���


//���ǣģǤϡ������`�ͥɥ�ء������륷��եȡ����i��
{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190330a07">
���һ�Ϊ������м��˵ġ�
�����������ᣬ��Ȼ��Ա����Щ�Źֿ��ɵ��ˡ�
�ڣǣȣ�Ҫ����ǰ�ܳԵÿ�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190340a10">
������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190350a07">
����������Ҫ����ı����ˡ������ܼ򵥰ɣ�
���Ǳߵĺô�һĿ��Ȼ����


//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190360a07">
��ֻҪ������ͣ�����֧�ֽ�פ����������
�˵ķ�ս��Ҳ�ᱣ�ּ�Ĭ��
��Ӣ�����Ǿ��������˼ɵ�������������ս��
�ˣ�������ô���������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190370a07">
���϶������һ�ӭ�ġ�
���������Ͳ���������Ǻ󹬳�ȺŶ����ү����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190380a10">
������Ȼ���ء�
�������ô������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190390a07">
������Ȼ�Ǻ�ʨ�Ӻ�һ���ս�භ�ˡ�
�������ޱȷǳ������Ա������������


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190400a07">
��������ǣȣ�̯��<RUBY text="����">����</RUBY>����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190410a07">
�����������վ�����ġ�
�������������������ľ��ӾͲ����ܳ��á�����


{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190420a07">
�������޻�������Ҳ������
��Ȼ���͹�����һƬ����ˡ���ϲ�ɺء�
��ϲ�ɺء���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190430a10">
���������ǹ�����ġ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190440a07">
���ǰɣ�
���Ǿ���ô���ˣ����𣿡�


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190450a10">
��Ҫ�һش���
���ǰ�������������Ļ�����


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190460a10">
���ܾ���
���һ�����������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣
//���衩�襢�å�
	SetVolume("@mbgm*", 100, 1, null);
	CreateSE("SE01","se���L_�Ɖ�_����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @0, @60, Dxl2, false);
	DeleteStL(300,true);

	StCL(1000, @0, 0,"cg/st/resize/st�衩��_ͨ��_�Ʒ�a_l.png");//���ߩ`ע��
	Move("@StML*", 300, @0, @-384, Dxl3, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190470a07">
��Ҳ������������㻹����ô���ף��Ҹղ�ˤ��
һ�ӡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190480a10">
������Ҫ���ͣ���


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190490a07">
��������Ϊ���Ǹ����ӣ����������û��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Move("@StML*", 300, @-30, @0, null, false);
	DeleteStCL(300,true);

	StL(1000, @-30, @0,"cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,false);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw�衩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190500a07">
����˵������Ϊʲô����
���ѵ����Ǵ��ŵ������Ҳ��ŵĺ����𣿡�


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190510a10">
��������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190520a07">
����Ը��Ϊ��Ӣ����ĸ���������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190530a10">
����Ը�Ⱑ��
���������������ڴ����˵�����ϲߵĻ���
��Ҳû�а취����


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190540a07">
���ǻ���ʲô��������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190550a10">
����Ϊ�����ɽ��װ�����


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190560a07">
�������ţ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190570a10">
����ʲôҲ�ò�����������
���ǰ�������������פ����ŻỶӭ�Ұɡ�
�����޻ᱻ���Ͼ�·�ɡ���Ϊ�����������ɡ���


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190580a10">
����ֻ��һζʧȥ����
��ʲôҲ�ò�������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190590a07">
���š��ҿ��������������������衣
������֮��˵�����ᱻӡ��ֽ��������ʷ����


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190600a07">
����ô������ʲô�����𣿡�


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190610a10">
���ܲ��װ���̫�����ˡ�
��ֻ֪���ײ���ر��ļһﰡ��Ҫô��������
ʥ�ˡ�������Ȼ������


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190620a10">
�����������Ķ�ħ��<RUBY text="��������������">�������һ��</RUBY>����


{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190630a07">
��������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190640a10">
����������衣
������������������ɡ���


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190650a10">
������������������ǵ�˵�޷���
���������<RUBY text="��������">�治��ɫ</RUBY>���Ҿ������㡣��


{	SetVolume("@mbgm*", 3000, 0, null);
	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190660a07">
������������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190670a10">
�������������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��
//���o�����Ц�

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190680a07">
������������������������
�����������������������ɡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190690a10">
������!?��


{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190700a07">
�����������ˣ������ˡ�
��ԭ������Ϊ����������õķ��������ˣ��һ�
�ǿ�����������·�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����㤭��
//��һ�W������;�Ф�
	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	WaitKey(500);
	CreateSE("SE01b","se���L_����_�����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateMovie("�}�ӻ�һ�W", 4000, Center, Middle, true, false, "dx/mv���_�󤫤���.ngs");
	Wait(300);
	Request("�}�ӻ�һ�W", Pause);


//���|������z�ߡ��Ф���`��
//��Ѫ
	SetVolume("SE01*", 100, 0, null);
	CreateSE("SE02","se���L_�|��_ȭ�|�k�h01");
	CreateSE("SE02b","se����_Ѫ_�����01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#000000");
	CreateTextureSP("�}��", 4100, Center, Middle, "cg/ef/ef004_����Ѫ�~.jpg");
	Delete("�}�ӻ�*");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	Wait(100);
	FadeDelete("�}ɫ��", 200, true);

	WaitKey(1000);
	DeleteStA(0,true);

	FadeDelete("�}��", 1000, true);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190710a10">
������������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190720a07">
������������


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0190730a11">
������������


{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190740a07">
������ι���ȵȡ�
���ǱߵĴ��塣��


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0190750a11">
�������治����˼������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190760a10">
���ճء�����


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0190770a11">
����Ȼ�������ˡ���������
��Ҳ������Ϊ�˵�λ�ò��ԡ�����ôҲ�ϲ���
��������


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0190780a11">
��Ҳ������˼�����Լ������š���
��ֻ��ĬĬ����������


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0190790a11">
�����ǡ����ò����׵��Թ��Ӳд���
������Ҫ<RUBY text="��������">�Ͱ��ħ</RUBY>���ǡ���


{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190800a07">
�������������Ϸ��������м��𡭡�
���������޼ƿ�ʩ���ء�����

//��Ц��
{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0190810a07">
������̫�����ˡ�
����ô���ǣ������Ľ�֡�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Фä���
	CreateSE("SE01","se����_�n��_ܞ��03");
	Move("@StL*", 300, @0, @60, null, Axl1);
	DeleteStL(300,true);
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw���L_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0190820a11">
��������


{//�������㡣�|���������
	CreateSE("SE01","se���L_����_ȭ�|�����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0190830a10">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���}�������������������ɤ��ɤ���
	CreateSE("SE01","se����_����_̤���z��01_L");
	MusicStart("SE01",2000,1000,0,1000,null,true);

	WaitKey(2000);

//��Ϧ��
	SetVolume("SE*", 3000, 0, null);
	PrintGO("�ϱ���", 30000);
	OnBG(100,"bg002_��a_02.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 3000, true);

	WaitKey(1000);

//���|���B�A
//���ե��`�ɥ�����
	CreateSE("SE01","se���L_�|��_ȭ�|�|�đ�01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	WaitKey(1000);
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_020.nss"