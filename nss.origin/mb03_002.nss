//<continuation number="270">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_002.nss_MAIN
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
	#bg028_��亣ǣȣѻ���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_������`=true;

	$PreGameName = $GameName;

	$GameName = "mb03_003.nss";

}

scene mb03_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_001.nss"

//�����
//���ǣȣ�
//���ƥ����ȥܥå����Ϻ������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg028_��亣ǣȣѻ���_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm21",0,1000,true);

	StR(1000, @0, @0,"cg/st/st������`_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwH("cg/fw/fw������`_ͨ��.png");

	#voice_on_������`=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020010b00">
����ũ������
������Ϊ������ô���£���


{	StL(1000, @0, @0,"cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020020b03">
����������š�
����֪�δ�������ӿ���ʷʱ�����ת�ɡ���


{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020030b00">
����������ʷѧ�ҽ����¼�����ʱһ����е�
����ɡ�
���������£����Ǳ����ȵ����Լ�����


{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020040b03">
���ǵġ�ά���ٽ���
����Ϊ���ǲ������Ϊ��ʷ�Ŀ��͡���


{	FwH("cg/fw/fw������`_Ц��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020050b00">
�����Ǳ���Ͷ���ⳡ�ݳ���Ϊ�˰���ʷת���
Ϊ���������ĵ�ģ����
����ʹ����ʷֻ�������ǡ��Լ����ǵ����ȡ�
���������������ǵ����������


{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020060b03">
��û����ȫ������˵��
���ٽ����¡���


{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020070b00">
�����������кη�Ӧ����


{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020080b03">
����ָ<RUBY text="����">�ĸ�</RUBY>��������


{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020090b00">
��ΰ��Ů�����������Ĺ��ҡ�
��������ͷ������⣬��ʺ������


{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020100b03">
���ƺ��󲿷ֶ��Ǿ�˫�ֱ�ʾ��ϲ�ء�˵����
���Ӷ�������ˡ�
����ս��֮��Ҳ���˱�ʾ�����Ļ��û��ͳ��
��������ֻ�ܲ�ȡǿӲ�ֶ�ռ�졣��


{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020110b00">
����������һȺû�������ˡ���


{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020120b03">
����ȷ��
�����Ǹ���û����⣬Ϊ���ҵ�Ҫ���Ѵ���ʱ
���������޳䵱���������������ǿ��������


{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020130b00">
������������ˡ�
���ҵȵ����ļƻ���ֻ��˵�����߽⡣��


{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020140b03">
�������ź���
��������Ļ���������������Ƕ��֡���

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020150b00">
������ƽʵ��װ�á�Ҳû�����𣿡�


{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020160b03">
��̫��ϧ�ˡ�
���Ÿ�������֮�ء���


{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020170b00">
�����кο��ǣ�����ũ������
��

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020180b03">
������Ϊ������������֮ʱ����


{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020190b00">
��������


{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020200b03">
����Ȼ����˵�ֽ׶��ж���Ϊ���ʡ������ǡ�
������ʹ��Թۣ��ȴ������Ľ�����٣���
����ȡ���õĳɹ�����


{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020210b00">
���š�����


{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020220b03">
�������ƶ��¼ƻ���Ҳ������ȫ�����С���
����������Ҫ����ʱ�䡣��


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020230b03">
���ҵȴ�ͽ�פ�����˾��������������
Ӣ����ʿ��ӵ��<RUBY text="��������">Զ��׿ʶ</RUBY>
�Ļ��ۡ��൱�鷳��
��������Ϊ�����ݼ���̬���ల���¡���


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020240b03">
��������ˣ���֪��ʱ��ע�⵽���ǵİ��в�
����
��ʱ���ϵ�Խ�ã����ǵļƻ�����Ӣ�����
���ֵ�Σ�վ�Խ�󡣡�


{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020250b00">
��ԭ����ˡ�
������Ҳ����˵�������Ѿ����ˡ���


{	FwH("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mb03/0020260b03">
��Ϊ������ΰ��Ĺ��磬���¡���


{	FwH("cg/fw/fw������`_Ц��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/mb03/0020270b00">
���ǰ���
��Ϊ������ΰ��Ĺ��磬����������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_003.nss"