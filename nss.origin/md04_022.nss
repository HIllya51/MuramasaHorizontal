//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_022.nss_MAIN
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
	#bg009_�`�}סլ��a_02=true;
	#bg018_֪�̄���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_023vs.nss";

}

scene md04_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_021.nss"


//���`�}��Ϧ

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg009_�`�}סլ��a_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm12", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	WaitKey(1500);
	
//��˾�
//�������

	CreateColorSP("�\Ļ��", 5000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg018_֪�̄���_01.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	StL(1000, @0, @0, "cg/st/st������`_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0, "cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	FadeStL(300, false);
	FadeStR(300, true);



	SetFwH("cg/fw/fw������`_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������`��
<voice name="������`" class="������`" src="voice/md04/0220010b00">
��������ô���ܣ�
����˵�S����Ԯ������!?��

//��������`��
<voice name="������`" class="������`" src="voice/md04/0220020b00">
����ô��ģ�
�������Ѿ���ѹ�˹źӡ�����

//��������`��
<voice name="������`" class="������`" src="voice/md04/0220030b00">
������˵����̫���˰ɣ�
���뿪ս��û��һ�����!!��

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0220040b03">
��ά���ٽ������侲��
�����ǺS��ȫ�������ˡ���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0220050b00">
��ʲô����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0220060b03">
������ֻ��һ�ҷ��н���
����Ȼ��������ƥ���Ҿ���Ҫ�����ɽ�����
��һ�Ҿ���һ�ҡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0220070b03">
�������ر���Ҳ����ൽ��ȥ����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0220080b00">
���š�����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0220090b03">
��Ӧ���Ǵ���ʨ�Ӻ�Ԥ�ϵ��źӻ����䣬��ѡ��
������������ǰ��֧Ԯ�˰ɡ�
����ռ���Ĺźӷ���Ҳ����и����Ҫͻ����Ȼ
���ѣ���Ҳ���ǲ����ܡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0220100b03">
���з���������������ء���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0220110b00">
���������ǡ�
��˵����ֻ��һ�ң��ǰɣ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0220120b03">
���ǵġ�
�������Ʋ�����̫��Ӱ�졣��

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0220130b03">
�������������Ͽյ�һ���ֺ���ս��ȥӭ���ɡ�
�������޵�����������ͣһ�������������
���ѡ���

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0220140b00">
�����˶���Ҳ�ܿɺް���
��û�뵽�ۿ���Ҫ�ɹ���ʱ��ɱ����ҧ�𡭡���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0220150b03">
�����¡���

{	FwH("cg/fw/fw������`_Ц��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0220160b00">
�������ף���������
���������ˡ�����Ԯ�����������ֳǵ�ʿ��
�����ȵװɡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0220170b03">
���˽⡣��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 25000, "BLACK");
	Fade("�}ɫ100", 1500, 1000, null, true);


//	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_023vs.nss"