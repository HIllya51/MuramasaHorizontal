//<continuation number="930">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_020.nss_MAIN
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
	#bg098_ܥԽ����������_02=true;
	#bg098_ܥԽ����������_03=true;
	#bg097_ܥԽ�����ھ����β���_03a=true;
	#bg064_���ӘS���ڵ�_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_021.nss";

}

scene md02_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_019.nss"


//�����ҹ
//��ͨ·

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	CreateTextureSP("�}����10", 4000, @0, @0, "cg/bg/bg098_ܥԽ����������_02.jpg");

	SoundPlay("@mbgm26", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);
	CreateTextureSP("BG", 3000, @0, @0, "cg/bg/bg098_ܥԽ����������_03.jpg");
	WaitKey(1500);

	FadeDelete("�}����*",1500,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ҹ��
��ʱ�仹�磬�һص����Ұ��ŵķ��䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(3100, @0, @0,"cg/st/st����_ͨ��_˽��.png");

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md02/0200010a00">
�������е����ˡ���

{	FadeStL(300,false);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200020a01">
�������������������°�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����˵�ŵĴ���Ҳ�޾���ɣ��Ǵ����

�������ڱ��������������ڵз���ص����ģ�
�������Ƿ����ȽϽӽ���ʵ�ɡ�
�����һ�룬���̶ֳȵ���������������
�������ű�������۾���

�����ƺ���û��ô�������ܿ˷�������װ������ƣ�͡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md02/0200030a01">
������Ϣ�ȽϺðɣ�
���ڻ�û��ʲô�Źֵ��������֮ǰ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200040a00">
���ðɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ȫû������ȥ׷���ǹŹֵ�����ָ�ض���˭��
����û��ָ���ķ�ָ��
�����˷��䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
//������
	Delete("BG");
	DeleteStL(0,true);
	OnBG(100, "bg097_ܥԽ�����ھ����β���_03a.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��Ȼ��һ��Υ�͸�����ͣס�˽Ų���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md02/0200050a01">
����ô���𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200060a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��û���κο��ɵĵط���

���ҾߵĲ��ú�����һ������ɨ�����ĺۼ���
����ͬ��Ҳ��ֻ���Ǹ���
����˭�÷���û�˵�ʱ��ɵİɡ�

��û�п��ɵ㡣

�����Ӻͼ�����û̫����
��ֻ���Һʹ������������졣
����ԼƮɢ�Ż����㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md02/0200070a00">
�������㡣��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200080a01">
��������
�����Ǳ߲��ڻ�ƿ��Ļ��𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200090a00">
���Ǹ�ζ��Ҳ�С���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200100a01">
��Ҳ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200110a00">
������һ�֡�
�������ھ��ӵ�ʱ���Ź��ġ���

//��������
<voice name="����" class="����" src="voice/md02/0200120a00">
��ͬһ�����������ĸ߼�ʿ��
����ʹ�õġ������Ƶ�ҩ��
����ֲ���Ƴɵ�ֹѪ��ҩ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200130a00">
����������ζ������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200140a01">
��������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200150a00">
��������
��̽����Դ����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200160a01">
�������˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);
	WaitKey(1500);

//���ԩ`��

	OnSE("se�ճ�_�Cе_PC�ꥻ�å���", 1000);
	WaitKey(300);
	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md02/0200170a01">
��!!
���Ǳߵļ��Ӻ��棡��

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200180b26">
����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w�ӳ����\��
//�������Ȍ���
	OnSE("se�ճ�_����_���饤���_��02", 1000);

	StL(1000, @-120, @120, "cg/st/st�\��_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	Rotate("�}����100", 0, @0, @180, @0, null,true);

	Wait(300);

	OnSE("se����_����_���S02", 1000);
	Fade("�}����100", 50, 1000, null, true);

	FadeDelete("�}����100", 300, false);
	FadeStL(150, false);
	FadeStR(300, false);

	Move("@StL*", 200, @120, @-120, Axl3, true);
	Move("@StL*", 70, @0, @10, null, true);
	OnSE("se����_����_һ�i", 1000);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����������β����������խ�Ŀռ����أ�
�������ʹ����к��Լ���Ծ��ͬʱ��
������ɳ�һ�����ĺ�Ӱ��

��ȫ����ɫ�������ˡ�
����Ҳ������ȫ�����ϣ�
���Ӿ�ֹ�Ͽ��Կ�����
�Ǹ��������ܹ����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm35",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md02/0200190a00">
�������㲻��<RUBY text="����">������</RUBY>���˰ɣ���

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200200b26">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200210a01">
�����������ȷ��Ҳ֪���š� 
����������¡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200220a00">
�����𣿡�

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200230a01">
���ף���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200240a00">
��Ҳ�п����Ǵ�ɨ������ϸ�Ĺ����С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200250a01">
��û��������
���⸱װ�����๤��
��չ�������ĳ������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200260a00">
���������ԡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200270a01">
��û���ܣ���

{	FwC("cg/fw/fw�\��_ŭ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200280b26">
��ϷŪ���𣬿ɶ�ļһ������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200290a01">
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200300a00">
��Ϊʲô�أ�
�����������๤�Ļ���Ҳû��Ҫ��������ɡ���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200310a01">
�����������������
����˵������������
���ѵ������Ϊ����๤�𣿡�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200320a00">
����Ҫ��˵�ˡ���ô����ֻ����Ϊ�ǿ������
������������ЦҪѡ��ʱ���ͳ��ϡ���

//�����ߥ���ŭ��
{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200330a01">
��������

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200340b26">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����֪Ϊ�Σ��о��Լ��������ˡ�
�����ȸ��ܵ����������������ͬ������ŭ���ڱƽ���

����֮������ʶ���е����档
��һ���ܹ��жϵģ��ǶԷ�������װ��
������Ҳ������Ǳ��ǹе��֮�࣬
�����������������ס�

����Ȼ��ô˵��Σ���Բ��޶�����١�
���������������Ļ��������ص�С��װ������������
������˵����в��

����������ʵ����ɱ��Ļ���
�ڻ�û�������ж���˲��ͻᱻ�����Դ���
����Ҫ�ж϶Է��������治��ĸ��ݣ���ʱ��û�С�

��������ô��������ʿ��
��������Ϊ�����߳�����<RUBY text="����">������</RUBY>�Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�\��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200350b26">
���µ����Ҳ���ڴ��ܹ�ȫһ����
��������Ը��������֮�����Űɡ���

{	FwC("cg/fw/fw�\��_ŭ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200360b26">
����������Ȫ��������Ǻܹ�ģ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200370a00">
��������档��

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200380b26">
������ô��
������������������޵���·��
���������ϵ�����Ż�������ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200390a00">
��һ�������档
����ĵ������������ޣ�
������ս����ȫû�����塣��

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200400b26">
������ʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200410a00">
����Ҫ�Ҷ���
���ѵý�����˿ڻ��ѿ��ġ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200420a00">
������������൱���ص��ˡ�
������ɫ���ƺ�ҲʧѪ���࡭��
����ټ���ʧѪ�Ļ����϶���Σ������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200430a00">
������ɧ�������������˶���̫���ʰɡ�
��������ж�����

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200440b26">
������������

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200450b26">
�����Ǻ��ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200460a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�\��_�Ŀ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200470b26">
�����ش��𡭡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200480a00">
������
����Ǹ��ʵ�ڲ�֪����ô�ش𡣡�

{
	FwC("cg/fw/fw����_ͨ��b.png");
}
//��������
<voice name="����" class="����" src="voice/md02/0200490a00">
�����ֵĻ��дն�������
����ΪĳЩԭ������ܥԽ������ߡ���
���������ڼ��ްɡ���

{	FwC("cg/fw/fw�\��_�@��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200500b26">
���������ޣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200510a00">
������˵��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200520a01">
������ȷʵ��ˡ�����

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200530b26">
�������̷��������޻���ܥԽ�����𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200540a00">
������ʳ֮����
���������ӹ�ϵ����

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200550b26">
��������

{	FwC("cg/fw/fw�\��_ŭ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200560b26">
���뽫����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200570a00">
�����ǽ�����������������ɧ��
����׷�����˰ɡ���

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200580b26">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200590a00">
����װ���ӳ�ȴǱ�����ڲ����ǵȴ���ҹ��������

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200600b26">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200610a00">
��ԭ����ˡ�
���������ѳ�լۡҲ����ܥԽ�ľ����������
äĿ���߻��������ȽϺá���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����ʵ�ϣ����������������ӿ�������Ҫץ�����˼��
��ʹ�ر���������Ǵ����������Ѱɡ�
��û��Ҫ�����Ҳ�˵��Щ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md02/0200620a00">
������Ǳ����������
�����ǵ���Ϊ�˵�ȡ����ɡ�
������������ʲôĿ�ģ���

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200630b26">
��������

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200640b26">
�����ԡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200650a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��һ��ʼ�Ͳ���Ϊ�Է���˵ʵ����

��ʮ�а˾��ǵ�Ļ�ɵ���ʿ��
����������ô�죿

���жԵĻ���ȫ���档�����Լ��ղ���˵�ġ�
����Ҳû����ȥԮ���Է���

��������ѡ�񡪡������������Ҳû�С�
����ʵ�ϣ��������ڷ���������飬
�ϳ�ȥ�Ļ�����жԡ�

��������ʳ�������Ͽ��������������Է��Ѻ���ͼ��
�����߻��Ǿ��ò�����˼��
������״�ǣ�����Ҳ����Ԯ�ֵĻ�������������ѡ�
���տ϶�Ҳ����һ����

������Ļ�����е��⣬��ܥԽ�ı����������������
���Է�ս����Ա��û�����ֵ����ɡ�
�������ļ���Ҳ��ȫû�С�

���޷������������ء�
������������Ľ���������õ�����������
�����Թ��������ƻ��ж�����һ�������Ļ���

�������������ֺ�������˵û���ҵ����Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�\��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200660b26">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200670a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������˵���룬������˵������ͷ˼����
�����˴��Ų�ͬĿ�⣬�ȴ��ҵĻ���

�����������н��ۡ�

��������֮��Ϊ��<RUBY text="��������������">�������������</RUBY>��
������˫����ɹ�ʶ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st�\��_ͨ��_˽��.png");
	FadeStL(300, false);

	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md02/0200680a00">
���ܶ��𣿡�

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200690b26">
���������ԡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200700a00">
��������
�����·����

{	FadeStR(300, false);
	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200710a01">
�����ס�
�������ߣ�ȷ����ȫ���ý��д����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ȥ��
	DeleteStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���������ĵ�˵����
���������ͼ�󣬴����ܿ��뿪���䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�\��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200720b26">
������������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200730a00">
�����Ժ�һ�¡���

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200740b26">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ݷ���⡣bg064��

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStA(0,true);
//������
	Delete("@OnBG*");
	OnBG(100, "bg064_���ӘS���ڵ�_03.jpg");
	FadeBG(0, true);
	WaitKey(1500);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�����������׵ġ�
������ʱ�򣬽��е�̽�����ȷʵ���á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(900, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	StL(1000, @0, @0, "cg/st/st�\��_ͨ��_˽��.png");
	FadeStL(300, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md02/0200750a00">
����˵�ѵ�ҹ������ҹ���˾���ʱ�ֻ��硣
���ߵ�ʱ����С�ġ���

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200760b26">
�������š�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200770a00">
����ô������

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200780b26">
�������������Եȡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200790a00">
���ǡ���

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200800b26">
����ʧ�����񻹲�֪��γƺ�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200810a00">
���ն�������
����λ�Ǵ�������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200820a01">
��������

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200830b26">
�����ǡ�����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200840a00">
������������

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200850b26">
��ĳЩԵ�ʣ����ܵ���ʵ����
������ԭ�¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200860a00">
������⡣��

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200870b26">
����л��æ��
���˶���������

//���\����
<voice name="�\��" class="�\��" src="voice/md02/0200880b26">
����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���\����ȥ��
//�� inc�h�� ����ʤ����ȵؤ��Ĥˤ���ΤǄ��������⤷�ޤ�����
	SetVolume("@mbgm*", 2000, 0, null);
	DeleteStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
������һ����������ȥ��
��������ɫ����ɫ��Ӱ������ҹɫ֮�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/md02/0200890a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200900a01">
�������������������հ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200910a00">
�����ǰ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0200920a01">
�������Ҿ�˵�����Ϣ������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0200930a00">
��û�Ǹ�ʱ�䰡������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEX("�}ɫ100", 15000, "BLACK");
	Fade("�}ɫ100", 1500, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���������Ի���ͬʱ���ص��˷��䡣
���Һܿ�����¡�

������ʶ����֮ǰ�����㼸���ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"md02_021.nss"