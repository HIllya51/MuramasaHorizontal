//<continuation number="1760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_029.nss_MAIN
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
	#bg018_֪�̄���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�����奢���=true;

	$PreGameName = $GameName;

	$GameName = "md04_030.nss";

}

scene md04_029.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_028.nss"


	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg018_֪�̄���_03.jpg");
	FadeBG(0, true);

	StL(1000, @140, @0, "cg/st/st������`_ͨ��_�Ʒ�.png");
	StCL(1000, @-80, @0, "cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0, "cg/st/st�������_ͨ��_˽��.png");
	FadeStR(0, false);
	FadeStCL(0, false);
	FadeStL(0, false);

	Delete("�ϱ���");

	DeleteStA(300,false);

	SetNwH("cg/fw/ny������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290010a03">
�������ò���Ϊ�ѿɲ���Ӵ��ά���ٽ���
������Υ���ϼ����������֯����˵���������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
//������֦������

	OnSE("se�ճ�_����_���_��09", 1000);

	Wait(1000);
	StL(1000, @100, @0, "cg/st/st����֦_ͨ��_�Ʒ�b.png");
	StC(1000, @-350, @0, "cg/st/st����_ͨ��_˽��.png");
//	Move("@StC*", 400, @50, @0, null, false);
//	Move("@StL*", 300, @50, @0, null, false);
	FadeStL(500, false);
	FadeStC(500, true);

	Wait(1000);

	SoundPlay("@mbgm18", 0, 1000, true);


	SetFwH("cg/fw/fw������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290020b00">
��������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290030b03">
������������

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290040b00">
��������ũ������
�������ǣ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290050b03">
��������
�������Ǵ�������֦��ξ�Լ�����ɴ����Ա����

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290060b00">
����ξ����Ա��
�����ң�ǰͷ�����Ӹ�<RUBY text="��">ԭ</RUBY>���𣿡�

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290070b03">
���ǡ���

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290080b00">
����������ʲô�ϼ������

{	NwH("cg/fw/ny˾�����ʿ.png");}
//������㣯˾�����
<voice name="����㣯˾���" class="����������" src="voice/md04/0290090e087">
������������

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290100a03">
����ѽ�����Ǳ��������� 
����ô�ѵõ��Ŵ�����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290110b03">
������ȷʵ���Ŵ����ˣ�ԭ��ξ��
��ԭ��������ܴ�����������

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290120b03">
�����㹼�����ҵ��ڴ���
���޹��뿪���ӡ���Ҳ�������ܡ���

{	FwH("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290130b03">
��������ֱ���˵���˵�ɡ�
�������㻹��ʲô����������

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290140a03">
��������Ҳ��Ӧ�õġ�
����������˲����鷳����

{	FwH("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0290150a04">
��Ϊ��ʾǸ�⣬���������������
����;��������Ƹ�㡣��

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290160b03">
������������

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290170b00">
������ʲô�����⵽�ס�����

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0290180a04">
��ֻ��Щ�ı������������ѡ���

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290190b00">
�������������
�����ǵ���������ʲô�ġ�����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290200b00">
���������ˣ����������ˣ�
���������Ͻ������˶��ˣ������Ǵ�����ǰ���ߡ�
�����㴦���ˡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290210b03">
������������

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw������`_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290220b00">
����ũ����

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290230b03">
���������������ɿ���������

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290240b03">
��<RUBY text="������������">�����ߵ��ز�</RUBY>�𡭡���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290250b00">
������ʲô����

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290260b03">
��������ܸɡ�
����������֦����

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290270a03">
������������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290280b03">
��ȫ�����������𡭡���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290290b03">
��û��ʹ�ö����׵�Ҳ�ǡ�����

{	FwH("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290300a03">
���ǵġ���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290310b03">
���������̲�ס��˵˵�㡣
�������ڽ�֮��ɥ�����Һܱ�ʹ��
Ҫ��������֧Ԯ�Ļ����Ҿ��ܶ�ע����Χ�ˡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290320b03">
��û��ί����ȥ�������ʧ�١�����

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290330a03">
������
�������ϵ����治֪��ʲô�������ֻ�ʲô��
�����°�����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290340b03">
�������ǰ����⵹����ġ���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290350b00">
��������
��������ô���£���

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290360b00">
��������ô����!?��

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290370b03">
������������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	DeleteStA(300,true);
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se����_����_ľ����ä���i��01_L", 1000);

	WaitKey(1500);

	SetVolume("@OnSE*", 1000, 0, null);


//�������奢���
	StC(1000, @0, @0, "cg/st/st�����奢���_ͨ��_˽��.png");
	FadeStC(500, true);

	Wait(500);

	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

	#voice_on_�����奢���=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290380b25">
���������������ʡ�
����˵��ú��������˵Ļ�������ŵ㣬����ʱ
������������������

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290390b25">
���ŵ㳬���߶ȵĻ��ͻ���ȱ�㡣��

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290400b00">
������������

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290410b00">
���㡢���ǡ�����

//��������`��
<voice name="������`" class="������`" src="voice/md04/0290420b00">
��Ϊ�Ρ���Ϊʲô������

{	SoundPlay("@mbgm34", 0, 1000, true);
	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290430b25">
�����Ա������ɡ���

{	FwH("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290440a03">
��������������
����Ҷ��������ˡ���

{	FwH("cg/fw/fw�����奢���_�Ф�.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290450b25">
������Ȼ��ˣ������Ա���������

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290460a03">
���ǡ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290470b25">
��·�ȡ����ް�������

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290480a03">
���ǡ�
����ô������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290490b25">
���ٴ��Ա���������

{	FwH("cg/fw/fw�����奢���_�Ф�.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290500b25">
��·�����ȡ��������ް�������

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290510b25">
��Ȼ���������һ�Σ���


</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å�
	DeleteStC(150,true);


	CreateTextureEX("�����奢���", 1000, -40, -70, "cg/st/resize/st�����奢���_ͨ��_˽��ex.png");
	Request("�����奢���", Smoothing);
	Zoom("�����奢���", 0, 900, 900, null, true);

	SetVertex("�����奢���", 520, 288);
	Zoom("�����奢���", 150, 1000, 1000, Dxl1, false);
	Move("�����奢���", 150, @0, @13, Dxl1, false);
	Fade("�����奢���", 150, 1000, null, true);


	SetFwH("cg/fw/fw�����奢���_�Ф�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290520b25">
��·���������ȡ���������
���ް���������!!��

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Zoom("�����奢���", 150, 900, 900, Axl1, false);
	FadeDelete("�����奢���", 150, true);

	StC(1000, @0, @0, "cg/st/st�����奢���_ͨ��_˽��.png");
	FadeStC(150, false);

	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290530b25">
������������

{	FwH("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290540a03">
������������

{	FwH("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0290550a04">
����С�㣬�����ء�
���������ֿ����ֵ������ˡ���

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290560a03">
���ȿȡ�
�����������˰ɣ���������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290570b25">
���š�
����ʼ�ɡ���

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290580a03">
����ô���ǣȣѵ���λ��
����λ�ǹ�����������ָ��ֳ���
·�ȡ����ް�������������

//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290590a03">
����Ϊ���Ϲ��ܲ���ȫȨ����
�����������ְ����

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290600b00">
������ȫȨ��������!?��

{	FwH("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290610a03">
��û��
��������������˵���˰ɣ����ٽ����¡���

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290620b00">
���𡪡�������ˣ�
��ͻȻ�ս�һ���˽������ܽ��ܣ���

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290630a03">
������ô˵Ҳ����
������޷����ܵĻ����������Ű��в�����Σ���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290640b00">
�����У���

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290650a03">
�����ް�������������Ů�����µĹ���ɣ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290660b25">
����Ȼ��
����Ҫȷ����ά���ٽ�����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290670b00">
������������

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290680b00">
���������ǣ�����������������
����ȫû��֪ͨ���ڴ˵ص����ǣ�ȴͻȻ
��һ��ȫȨ������

//��������`��
<voice name="������`" class="������`" src="voice/md04/0290690b00">
�������Ҿ��ӵ�ָ�ӣ���

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0290700a04">
��ȷʵ��ˡ���

{	FwH("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0290710a03">
��Ҳ�ԡ�����

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290720b00">
������Ŀǰ���������ں���ȴ���
�������������Ϲ��ܲ�ȷ�ϣ�Ȼ���١�����

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290730b25">
���ǿɲ��У�ά���ٽ�����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290740b00">
��Ϊ��Ϊ�Σ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290750b25">
���㲻���ף���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290760b00">
��������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290770b25">
����Ĳ����ס�������

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290780b00">
��������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å�

	DeleteStC(150,true);

	CreateTextureEX("�����奢���", 1000, -40, -70, "cg/st/resize/st�����奢���_ͨ��_˽��ex.png");
	Request("�����奢���", Smoothing);
	Zoom("�����奢���", 0, 900, 900, null, true);

	SetVertex("�����奢���", 520, 288);
	Zoom("�����奢���", 150, 1000, 1000, Dxl1, false);
	Move("�����奢���", 150, @0, @13, Dxl1, false);
	Fade("�����奢���", 150, 1000, null, true);

	SetFwH("cg/fw/fw�����奢���_�Ф�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290790b25">
���㡪���������������ס���!!��

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Zoom("�����奢���", 150, 900, 900, Axl1, false);
	FadeDelete("�����奢���", 150, true);
	StC(1000, @0, @0, "cg/st/st�����奢���_ͨ��_˽��.png");
	FadeStC(150, false);

	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290800b25">
�������𣿡�

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290810b00">
������������

{	FwH("cg/fw/fw�����奢���_���@.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290820b25">
�����������ס�
���´�½�ˡ���

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290830b25">
���Ҳ����������ǡ�
��������ԵĻ���������Ҫƽ�ȵء���ƽ�ء�
�������˽���һ�С���

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290840b25">
���������һ�°ɡ�����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290850b00">
��������������������

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290860b00">
���ҡ��Ҳ����ס�
����˵�Ļ���Ī�������

//��������`��
<voice name="������`" class="������`" src="voice/md04/0290870b00">
������ȫ����������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290880b25">
������������

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290890b00">
�����ں������
������Ҫִ��Ů�����¸����ʹ������

//��������`��
<voice name="������`" class="������`" src="voice/md04/0290900b00">
����ʣ���졭����������͹���
������������Ļ����
���˹�����Ů�����µıӻ��£���

{	FwH("cg/fw/fw�����奢���_���@.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290910b25">
�����ˡ���

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290920b25">
���Ѿ����ˣ�ά�ޡ�����

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290930b00">
������������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290940b25">
��Ϊʲô������
�������ξ�����һ����������𣿡�

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290950b00">
������Ϊʲô����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0290960b03">
������������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290970b25">
���������ҵ�ί�У�����<RUBY text="��������">�������</RUBY>����

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0290980b25">
��Ϊ�ˣ��������ڣǣȣѡ�
�����һ��ʼ����

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0290990b00">
��������������������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291000a13">
������������

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291010b25">
����Ȼ����������������

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291020b25">
���һ���ǲ���������˵������ط���
��Ȼ���ҽ������ռ�����ϸ΢�鱨����
��ЩϸС����Ƭ����������������

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291030b25">
����ƴͼһ����
��������ɵ�ƴͼ������ֻ��������˽��ۡ���

{	FwH("cg/fw/fw�����奢���_���@.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291040b25">
���������´�½�����ɡ���

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0291050b00">
������������
����������Ŷ����������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291060b25">
��ά�ޡ�
���ڹ�ȥ��Ϊ���´�½�Ӵ�Ӣ���������������
��ͬ־�������Ĵ�ս������

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291070b25">
����Ϥ��ʧ�ܡ�
���Ǹ�˵�������������Ǹ�˵������Ҳ��ͬŮ��
��֧���أ�����Ҫ������ȡ��ѵ�ͺ��ˡ���

{	FwH("cg/fw/fw�����奢���_���@.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291080b25">
�����ǵ�����������ǵͰ���
����ʧ������Ϊ�������㡭����Ϊ���в��㡭����

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291090b25">
��<RUBY text="��������������������������">��Ϊ�´�½û�н��е�������</RUBY>��
��������������ô��ġ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0291100b03">
��������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291110b25">
��������õ���͡�
����ȫ��������һָ�Ľ���������������

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291120b25">
�����Ǽ�װҪ���˹��׸�Ů��������֮��
��Ȼ�󡭡�����������<RUBY text="������">�����</RUBY>�´�½����ս������

{	FwH("cg/fw/fw�����奢���_���@.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291130b25">
�������޴���Ұ�ġ�����

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291140b25">
�����ǡ�����ͬ�����ǡ�
����Ϊ����ȷʵ�����࣬�����Ͼ�·����

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291150b25">
������Ů���ĺ񰮣����������Ĵ�½��˵����
������������

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0291160b00">
��������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291170b25">
�����ǣ�ά�ޡ���
�������ǲ�������ġ���

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0291180b00">
���¡����µ���񡭡���

//��������`��
<voice name="������`" class="������`" src="voice/md04/0291190b00">
���µ���񡭡�����

{	FwH("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0291200a04">
��������

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0291210b00">
�����ܡ�����ͬ��!!��

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣�|����

//	StR(1000, @0, @0, "cg/st/st������`_ͨ��_�Ʒ�.png");
//	FadeStR(300, false);


	OnSE("se���L_�|��_ȭ�|����01", 1000);

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 100, -144, "cg/bg/bg018_֪�̄���_03.jpg");
	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Rotate("�}�ݷ���/�}�ݱ���", 0, @0, @180, @0, null,true);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	CreateTextureEX("�}�ݷ���/�}���}", 16200, -200, -350, "cg/st/resize/st������`_ͨ��_�Ʒ�ex.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);


	Move("�}�ݷ���/�}�ݱ���", 500, @0, @100, AxlDxl, false);
	Move("�}�ݷ���/�}���}", 500, @0, @300, AxlDxl, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	Wait(500);

	SetFwH("cg/fw/fw����Υ�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0291220b03">
������!?��

{	FwH("cg/fw/fw�����奢���_���@.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291230b25">
������ά�ޡ���
������������̵Ĳ���Ů����������������
СС����ǹ�𣿡�

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291240b25">
����������ѡ���𣿡�

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0291250b00">
�����졭��Ů�����߹���
�����ǵ�ʹ������������⣡��

//��������`��
<voice name="������`" class="������`" src="voice/md04/0291260b00">
����������ǵ�ʹ��!!
���ú�����!!��

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k�h
	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);

	CreateColorSP("��", 15000, "White");

	Delete("�}ɫ100");
	Delete("�}�ݷ���*");

	FadeDelete("��", 300, false);

	DeleteStC(300,false);

//���ᤫ���ä����Х���

	StR(1000, @0, @0, "cg/st/st�����奢���_ͨ��_˽��.png");
	StC(1000, @-100, @0, "cg/st/3d�Х���_����_ͨ��.png");
	Move("@StC*", 300, @120, @0, DxlAuto, false);
	FadeStR(300, false);
	FadeStC(300, true);
	Move("@StC*", 300, @-30, @0, AxlAuto, false);



//�������`�󡣏�������|��

	OnSE("se���L_�|��_����02", 1000);

	SetFwH("cg/fw/fw������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������`��
<voice name="������`" class="������`" src="voice/md04/0291270b00">
��ʲ������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291280b25">
���汧Ǹ�������ξ����

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0291290a03">
��û�£����ް���������
����ô�������������˰ɣ���

{	FwH("cg/fw/fw�����奢���_���@.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291300b25">
��������������
�������ҵ����ѡ���

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291310b25">
��������������ô��Ϊ����

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0291320a03">
��������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х������¤���
	OnSE("se����_�z_װ��05", 1000);

	Move("@StC*", 300, @100, @0, null, false);
	DeleteStC(300,true);

	WaitKey(1000);

//�������奢��Ȥȥ�����`

	StL(1000, @0, @0, "cg/st/st������`_ͨ��_�Ʒ�.png");
	FadeStL(300, false);

	SetVolume("@mbgm*", 1000, 0, null);


//�������㡣�|�򘋤�����

	OnSE("se���L_�|��_ȭ�|����01", 1000);

	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0291330b25">
�������ˡ�
���ҵ����ѡ���

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0291340b00">
���������ް���!!��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Щ`��
	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	SetVolume("������`", 300, 0, null);
	CreateColorSPadd("�}ɫ100", 1500, "WHITE");

//��������`�������

	FadeDelete("�}ɫ100", 100, false);
	Shake("@StL*", 300, 8, 0, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 300, @0, @20, Dxl2, true);

	Wait(1000);


	OnSE("se����_�n��_ܞ��03", 1000);
	Shake("@StL*", 300, 8, 0, 0, 0, 1000, Axl2, false);
	Move("@StL*", 300, @0, @50, AxlAuto, false);
	DeleteStL(300,true);

	SetFwH("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����衿
<voice name="����" class="����" src="voice/md04/0291350a04">
��������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291360a13">
��������

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0291370b03">
������������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);

//��С��������
	SoundPlay("@mbgm33", 0, 1000, true);

	WaitKey(800);

	SetFwH("cg/fw/fw������`_��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������`��
<voice name="������`" class="������`" src="voice/md04/0291380b00">
��������ũ������

//��������`��
<voice name="������`" class="������`" src="voice/md04/0291390b00">
��������������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0291400b03">
�����¡�����

{	FwH("cg/fw/fw������`_��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0291410b00">
���ݡ��������ˡ���
�����ǵġ�����Ը����������

//��������`��
<voice name="������`" class="������`" src="voice/md04/0291420b00">
���´�½�ġ���Ϊ���ǵ�ͬ������
�������ɡ����𡭡�����ƽ��������

//��������`��
<voice name="������`" class="������`" src="voice/md04/0291430b00">
����������������

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0291440b03">
�����¡�����

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0291450b03">
��ά��!!��

{	FwH("cg/fw/fw������`_��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0291460b00">
������Ϊ��<RUBY text="�ϣ��򡡣��������">ΰ��Ĺ���</RUBY>������

//��������`��
<voice name="������`" class="������`" src="voice/md04/0291470b00">
�����������ˡ���
����顭������������������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܥå���������С��������
	WaitKey(800);

	SetFwH("cg/fw/fw����Υ�_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0291480b03">
������������

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0291490a04">
��������������ĸ��ܡ�
�����ǿ�ũ�����������־��ܰɡ���

//�����衿
<voice name="����" class="����" src="voice/md04/0291500a04">
��ʧ���ˡ��������ϵ�ǹ�͡�����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣

	Wait(500);
	OnSE("se�ճ�_���������", 1000);
	Wait(1000);

	SetFwH("cg/fw/fw����Υ�_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0291510b03">
��������

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0291520a03">
���ֶ�����ڡ�
����Ȼ��ĸе��ܱ�Ǹ����Ҳһ������

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0291530a03">
����Ϊ�����ж����ش����ɡ���

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291540a13">
���ǡ�����

{	FwH("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0291550a03">
�������ǵðɣ���

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291560a13">
�����ˡ�
����Ҳ֪��������ôһ��ġ���

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0291570a03">
��������

{	FwH("cg/fw/fw�������_ŭ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291580a13">
����ǿȨ���ڿ������������!!
�������������������ڿ���!?��

{	FwH("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0291590a03">
������!!��

{	FwH("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0291600a04">
����С�㣬�����أ�
���ý��д��Ļ������˵ģ���

{	FwH("cg/fw/fw�������_ŭ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291610a13">
��ʲô����˵����!?
���ѵ�������û���ڿ��𣡡�

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291620a13">
�����ҿ�����!!��

{	FwH("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0291630a03">
������ô��̬���뷵����̥����!!��

{	FwH("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291640a13">
���ǡ�����Ҫ������!?��

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0291650a04">
�������õ���
����֪���Լ��Ǹ���̬�𣡡�

{	FwH("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0291660a04">
�������������ˣ���С�㡣
����㽫����鷳���˴��߰ɡ���

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0291670a03">
��Ҳ�ǡ�����

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291680a13">
����ŶŶŶŶŶ��
�������Ϊ���������ˣ���

{	FwH("cg/fw/fw�������_ŭ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291690a13">
���һ�����ģ�
��Ȼ���ѹ�ȫ������ڿ�!!��

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0291700a04">
����ô������Ұ��������ʷ���й�ǰ���𣿡�

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0291710a03">
��������û�У�����Ӧ����������»ύ��
����һ���������෴�����

{	FwH("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0291720a04">
�������Ļ�������һ���ᱻ���̴�ٴΰɡ�
��������������̬��������ǿ������������
Ϊ��������һ�ٴλ���������

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291730a13">
���Ҳ�������ġ�
���������������

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291740a13">
����ֻ����ʱ�Ʒ����ѣ�
�����ң���ũ��������

{	FwH("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0291750a13">
���ɱ������!!��

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0291760b03">
������������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߣ����Υ�����ץ�ð�^���Ƅ�
/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��
������������������һ��������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/
	ClearWaitAll(2000, 1500);

}

..//������ָ��
//�Υե����롡"md04_030.nss"