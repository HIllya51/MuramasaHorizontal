//<continuation number="880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_003.nss_MAIN
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
	#bg051_�����Ҿ��g_03a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_004.nss";

}

scene ma05_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_002.nss"

//��ʳ׿�L��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg051_�����Ҿ��g_03a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateEffect("���ե����ȣ�", 200, 0, 0, 1025, 576, "Sepia");

	FadeDelete("�}��ܞ", 2000, true);

	FadeDelete("���ե����ȣ�", 500, true);

	SetFwC("cg/fw/fw������ǰ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/ma05/0030010a14">
������������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030020a00">
������������

{	SoundPlay("@mbgm22",0,1000,true);
	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030030b46">
�����������ҵĺ����ǰ���
������Ϊ�����ſ�����˿������
���ŶԷ��أ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030040a00">
��û������

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030050a14">
��ûʲô�¡�ĸ�״��ˡ�
���벻�����⡣��

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030060b46">
����Ǹ���ҷǳ����⡣
����������Ҷ��Բ��·��ˡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030070a00">
���������鷳�ˡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030080b46">
��������ô�ˣ���������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030090a00">
���ǡ���
���Ǹ���������ߡ����Ӹղš�����

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030100a14">
������������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030110b46">
���������ǲ��Ź�һ����һͶ��������ء�
���ҵ�����Ů����Ȼ����ȥ��Ұ��û�����𡣡�

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030120b46">
��ι���Ǳ�������������Ů��
���������Ķ���������Ϊʲô����

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030130a14">
���Ҷ�˵ʲô��û���ˡ�
��������ˣ��������һ����ڳ�����
��ȥ��ţһ����˯�ɣ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030140b46">
������Խ��Խ���˳Բ���ȥ�ˡ�
{	FwC("cg/fw/fw�y_ͨ��a.png");}
���ţ����������ѵ�˵�����������𣿡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030150a00">
��ͳ���ˣ���

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030160b46">
������˵Ŷ��
�����죬�⺢�Ӿ�Υ�ذ�æ�����ˣ�
���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W��
	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��", 5500, "#FFFFFF");
	Wait(10);
	DrawTransition("�}��", 100, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", false);
	FadeDelete("�}��", 100, false);

	SetFwC("cg/fw/fw������ǰ_�䤿��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/ma05/0030170a14">
������ĸ�״��ˡ�
���ò�ʱ����첻���������ĵģ���Ϊ��
��ʳ����

//���⡿
<voice name="��" class="��" src="voice/ma05/0030180a14">
���ϻ�������˵�ȽϺá���

{	FwC("cg/fw/fw�y_�Ӥ�.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030190b46">
���桢�桭����
�����������������ҡ��ҵ��Դ���
�������ڡ����������������𣿡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030200a00">
���ǵġ�û�µġ�
��������ͳ���ˡ������ܶ㿪���ŵ�
һ�������յĸ�����Ů�������������ء���

{	FwC("cg/fw/fw�y_ŭ��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030210b46">
��������ô����ɣ����ӣ�
���ٿ�����һ�㡣����һ�������ݻ�һ����
�ֵ��ٷɹ����Ļ��Ϳ��Ա�����������������
��������ÿ�ζ��ܱܿ��ģ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030220a00">
�������ǳ���Ǹ������������
���ղ�һ�����Ҿ���ָ�ⶼû���塣��

{	FwC("cg/fw/fw�y_�Ӥ�.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030230b46">
���桭��
���⺢�Ӿ���Ϊ�λ�����ô�ֲ���
���ﰡ������

//���y��
<voice name="�y" class="�y" src="voice/ma05/0030240b46">
�������Ҫ�Լ�ͥ���������ˡ�
�����־�����ν�ģģְɣ���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030250a14">
��������
����˵��ֻ�������˵ķ�������Ҳ
���ù��־��������԰ɡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030260a00">
�������ˣ���

{	FwC("cg/fw/fw�y_�@��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030270b46">
���ס����ұ������������𡭡���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030280a14">
�����������ˡ�
�������������ζ��������Ǹ�<RUBY text="����������">����������</RUBY>��
�����ߵĻ��͸����ҡ��������������غ㶨�ɣ�
��Ҳ�Ὣ�������������ȫĨ���ġ���

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030290b46">
���Բ����һᾲ�����Է��ġ�
�����ǲ����ڵġ������貢����
�������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030300a00">
��������

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030310a14">
���԰ɣ���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030320a00">
��������

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030330a14">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030340a00">
������������

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030350a14">
���������¿���ԥ�����Ǻܲ���ò�ġ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030360a00">
����Ҳ���ǹ���ġ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030370b46">
��������ÿ�ξ���Ҫ��ʲô�����㶼��
ʮ��ǹһ�������������˼����ϡ�����

{	FwC("cg/fw/fw������ǰ_�䤿��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030380a14">
����ʲô���˵Ĳ�Ӭ���� �������ɡ���

{	FwC("cg/fw/fw�y_�Ӥ�.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030390b46">
�������Ƕ�ĸ��˵�Ļ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030400a00">
��������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030410b46">
������������
����������ȥֻ���÷��������
��֮���ȳ�������ɡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030420a00">
�����㣿��

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030430b46">
���Ǹ�����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030440a00">
��������������������
�������ι�״������ԭò�Ķ�����ȫ
��������ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W��
	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��", 5500, "#FFFFFF");
	Wait(10);
	DrawTransition("�}��", 100, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", false);
	FadeDelete("�}��", 100, false);

	SetFwC("cg/fw/fw�y_�Ӥ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030450b46">
�����ۣ�
���ղ�ìͷ�ǲ���ָ�����˰�Ů������

{	FwC("cg/fw/fw������ǰ_�䤿��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030460a14">
�����죬ĸ�״��ˡ���

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030470b46">
�����ۡ��� �Ҳ�Ҫ����ɱ�����ڵ�ĸŮ
��ϵѽ���� ��Ҫ���ϼҡ�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030480a00">
�����������

{	FwC("cg/fw/fw�y_�Ӥ�.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030490b46">
����·�����ˣ���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030500a14">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030510a00">
�����š�
�����ҿ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������SE��Ҫ����ʳ�����������Ȥ���ʳ���ä�����
	CreateSE("SE01","se�ճ�_ʳ��_����ʂ�_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1000);
	SetVolume("SE01", 200, 0, null);
	OnSE("se�ճ�_ʳ��_���å��ä�",1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���׽��׽���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma05/0030520a00">
�������ţ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030530a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030540a00">
����ѽ������
����Ȼ���಻��ô������������㡭����

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030550a14">
��������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030560a00">
���ܺóԡ�
����Ȼ�������ĵ�ζ��ͬ������ѽ��
�����ǲ�����

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030570a14">
�����𣡡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030580b46">
������ ���������
������ǿ�Լ�Ŷ�����ò��Ծ��Ļ������³�
��Ŷ���Ҿ�����Ҳ���ܻᷢ����������ģ�
�����㿴������ϸ�ĵ�׼����ľͰ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��",110);

//���W��
//�������`�󡣥ҥåȡ�
//���ӣţ��Ҥ�`�������ɤä��w��Ǥ������K�˴������ʤ�
	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��", 5500, "#FFFFFF");
	Wait(10);
	DrawTransition("�}��", 100, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", false);
	FadeDelete("�}��", 100, false);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma05/0030590a00">
��������
��ͳ����ȥ�����ˣ���

//���ӣţ��ɤܩ`�󡣽K�˴������ʤ�
{	SetVolume("SE*", 100, 0, null);
	Shake("�}��", 600, 0, 6, 0, 0, 1000, Dxl2, false);
	CreateSE("SE01","se����_����_ˮ���w���z��02");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030600a14">
��ȥϴ�ּ��˰ɡ�
���㲻�����⡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030610a00">
���ղţ�������һ�µ���������
����ֱ���������˱����͵þ���
���������ˮ����ȥ�ˡ�����

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030620a14">
��������֮��İɡ�
�����ɣ��������Ǹ����Է�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030630a00">
��������

{//�������SE��Ҫ����ʳ�����������Ȥ���ʳ���ä�����
	CreateSE("SE01","se�ճ�_ʳ��_����ʂ�_L");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030640a00">
������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030650a00">
���š���Ȼ�ܺóԡ�
����Ȼ�е���֣������������Ķ���֮������

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030660a14">
���������𡭡���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030670a00">
��лл�㣬�⡣��

{	FwC("cg/fw/fw������ǰ_�sȻ.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030680a14">
��������

//���⡿
<voice name="��" class="��" src="voice/ma05/0030690a14">
��������ô�ˣ�
����ôͻȻ����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030700a00">
���������İɣ���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030710a14">
��������֪������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030720a00">
���š�
����Ϊû��ͳ���˵�<RUBY text="����">��Ϣ</RUBY>��
ֻ������û�С���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030730a14">
������������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030740a00">
��������ζ������ȷ�Ų����ˡ���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030750a14">
�����ǡ���û�Ե�ʱ���֪�����𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030760a00">
���š�
����֪Ϊ�ξ����ܱ���ͳ���˵���Ϣ����

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030770a14">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030780a00">
�����ˡ����ѷ����ꡣ
����������ȥ���Ҫ����ˡ���

//��������
<voice name="����" class="����" src="voice/ma05/0030790a00">
���⣬��Ҳ�ǡ���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030800a14">
��Ŷ������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030810a00">
����ô�ˡ���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030820a14">
������ʲô�¶�û�У�
���԰ɣ���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030830a14">
���ޡ������ء������ζ����
������ϲ������ζ���𣿡�

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030840a00">
���ǵġ���˵�ø������Ļ����Ҹ�ϲ��
���Դ̼��ĵ�ζ����

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030850a14">
���̼��ĵ�ζ������Ļ��÷ѽ⡣
��˵������ϸ�㡣��

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0030860a00">
��������˵������

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0030870a14">
�����š�����

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0030880b46">
�����������ǰ���
����Ҫ�������ǵĺ����Ҹ���Բ��
���ǽ�����ĸ��ΰ�������֮�ϵ�
ѽ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);
}

..//������ָ��
//�Υե����롡"ma05_004.nss"