//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_012.nss_MAIN
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
	#bg001_��a_01=true;
	#bg001_��a_02=true;
	#bg013_�`�}���a_02=true;
	#bg018_֪�̄���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_013.nss";

}

scene md04_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_011.nss"


//���ա�Ϧ��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg002_��a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("�ϱ���");
	OnBG(101, "bg002_��a_02.jpg");
	FadeBG(0, true);
	FadeDelete("�\Ļ��",2500,true);

	Wait(1000);


//���`�}
//���M�v܊˾���bg018a��
//���ƥ�åס��M�v܊ 砂}Ұ��˾���


	OnBG(102, "bg013_�`�}���a_02.jpg");
	FadeBG(1500, true);
	WaitKey(1000);


	OnBG(100, "bg018_֪�̄���_01.jpg");
	FadeBG(1500, false);
	Wait(1000);
	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_˾�.png",null);
	Wait(2000);

	StL(1000, @0, @0, "cg/st/st������`_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0, "cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);

	FadeStL(500, false);
	FadeStR(500, true);


	SetFwH("cg/fw/fw������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120010b00">
��̫����ɽ�˰���
��һ��ʵ���ǹ��������ء�����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120020b03">
����������ǿ�С�
���������ǵ�״̬Ҳ�㲻����������

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120030b03">
������ֻ����С�������˰ɣ���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120040b00">
���š���

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���

//�����餷���Τǟoҕ���������ȤΤ��ȡ�inc�Ѿ�


	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�룺�������F�r����090930��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120050b03">
��ȷ��һ����״����

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120060b03">
����һ���Ž�פ�����С���

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120070b03">
���ڶ��������������򹥻������ֳǡ�
�������������Ӵ󴬷��򹥻������ֳǡ���

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120080b03">
�����ľ���ѹ����С����������
������������ڹ����źӹ���������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120090b03">
�����ӻ�����ѹ������ģ�壬
��ǣ��Ļ���Ľ��ӱ��������ʡ���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120100b00">
���š�����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120110b03">
������ڶ�����������ֹͣ������Σ����£�
�����Ǳ�����ҹĻ����ǰ�˱���
��ҹ����Ӫ��׼������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120120b03">
�����뾡�����������ݽ����ӣ���˼ӿ��ٶ�
�ȽϺá�
������֮�󣬷����¹ʵ�Σ���Ի����ӡ���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120130b00">
����������ѡ��ҹ�����������
����������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120140b03">
���Ӹ�����������˵����Σ�ա�
��ԭ��֮һ�ǣ��Ҿ�ʿ���Ե��򲢲���Ϥ��
��ҹ��ս���ܲ�����ԭ��֮���ǣ�
��;��˺��ó���ͳ��ҹ��ս����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120150b03">
�����⻹���ܻ������������

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120160b00">
������Ҳ�ԡ���

{	FwH("cg/fw/fw������`_Ц��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120170b00">
����֪���ˣ���ũ��
��һ�������ɡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120180b03">
����Ϊ�Ÿոտ�ʼ����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120190b00">
�����ǣ����˻������ҹϮ��
���볹�׼�ǿ���䡣��

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120200b03">
���ǡ���

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����Υ�_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120210b03">
�����ǡ���ά���ٽ���
���źӷ������˵�ˡ���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120220b00">
���š�
����֪������

//��������`��
<voice name="������`" class="������`" src="voice/md04/0120230b00">
���ź��������޵������ߡ���
��������˵���������ǵľ�ʤ֮������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120240b03">
�����¹źӾ��ܹ��������֡���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120250b00">
����Ҫ��ҹ��ս����װ������������
���Ͱɣ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120260b03">
����Ȼ�ˡ�
���������ҲҪ�����ܵ������˵�����׼��������

{	FwH("cg/fw/fw������`_Ц��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120270b00">
�����ջ��ֻ����ġ�
���ڹźӸ���������������Ҫ���塣��

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120280b03">
���š���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0120290b00">
���õ��ľ���Ҳȥ֧Ԯ�źӡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0120300b03">
�������ˣ����¡���

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_013.nss"