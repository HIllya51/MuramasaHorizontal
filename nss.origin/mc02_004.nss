//<continuation number="220">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_004.nss_MAIN
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
	#bg029_����Υ�����̄���_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_005.nss";

}

scene mc02_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_003.nss"

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 25000, "BLACK");

	OnBG(100, "bg029_����Υ�����̄���_01.jpg");
	StR(1000, @0, @0, "cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	StL(1000, @20, @0, "cg/st/st����֦_ͨ��_�Ʒ�c.png");
	StCL(1000, @-100, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeBG(0, true);
	SoundPlay("@mbgm36",0,1000,true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1000,true);


//������Υ�β���
//���ƥ����Ⱥ����

	FadeStR(300, true);

	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040010b03">
�����������𣿡�


{	FadeStL(300, false);
	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0040020a03">
���ǵġ���


{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040030b03">
����������
�������ܵ��ˡ����𡣡�


{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0040040a03">
��δ�ܻ�Ӧ�����ڴ����ҳϸ�Ǹ�⡣
���ҽ����ܴ��֡���


{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040050b03">
��������


{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0040060a03">
������������

{	FadeStCL(300, false);
	FwH("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0040070a04">
����������Ҫ�𱸴�С�㣬����
�����ξ���������¡�
��һ�ж����Ӧ������������϶���
δ��ְ�𡭡���


{	FwH("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0040080a03">
���š��ɲ������


{	FwH("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0040090a04">
���ղŵĻ�������Ц��
���������£��¹�ֻ�������˾�������¡�
�����������֮���ڡ���


{	FwH("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0040100a03">
���㻹�����ҵ�������!?��


{	FwH("cg/fw/fw����_ŭ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0040110a04">
���⻰�ֲ�����˵�ɣ������͸�����ӡ���


{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040120b03">
���������˰ɡ�
��Ҳû��Ҫ�ǵ�Ĩɱ�������ɡ���


{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040130b03">
��������ʹ���˳�һ�ߣ��������ӡ�
����ʱ���ڣ���Ҳ�����ٶ�����£�
����ʵһЩ�ɡ���


{	FwH("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040140b03">
�����������ڼ����¶�����
�����е�һ�С���


{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0040150a03">
������������


{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040160b03">
���������ˡ�
��������Ϣ�ɡ���


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040170b03">
�����󽫴���Թ�ٵ���һ�����𡣡�


{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0040180a03">
���������ס�
����ǡ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������֦����

	DeleteStCL(300, false);
	DeleteStL(300, true);

	CreateSE("SE01","se�ճ�_����_���]���01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1000);


	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040190b03">
�������ߡ�����


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040200b03">
�������Լ�����Ҳ�ã����˷���Ҳ�գ�
��ʧ�ļһ������ֵһ���ˡ�
����ȥ�ļһ�Ҳһ������


{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040210b03">
�����ǡ���
����²���𡣡�


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0040220b03">
���ն�������
�������š�������������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);
}

..//������ָ��
//�Υե����롡"mc02_005.nss"