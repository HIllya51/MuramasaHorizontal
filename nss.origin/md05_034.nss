//<continuation number="240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_034.nss_MAIN
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
	#ev254_��դˁФ��y�Ǻ�_a=true;
	#ev254_��դˁФ��y�Ǻ�_b=true;
	#bg073_��a_02=true;
	#ev128_�����ι�_b01=true;
	#ev128_�����ι�_g02=true;
	#bg051_�Զ��Ҿ��g_01=true;
	#bg052_�����ҵ���_01=true;
	#ev254_��դˁФ��y�Ǻ�_c=true;
	#ev133_����������_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_035.nss";

}

scene md05_034.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_033.nss"


//������
//���y�Ǻš��I��o��


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	CreateTextureSP("gin01", 4000, @0, @0, "cg/ev/ev254_��դˁФ��y�Ǻ�_a.jpg");
	CreateTextureSP("gin01��", 4000, -470, -573, "cg/ev/resize/ev254_��դˁФ��y�Ǻ�_al.jpg");

	//ͽ�i��ǰ�Υե����뤫��ο������v�S��BGM���
	SoundPlay("@mbgm14", 0, 1000, true);

	Move("gin01��", 10000, -989, -33, null, false);

	Delete("�ϱ���");
	DrawDelete("�\", 500, 500, "slide_02_01_1", true);

	Wait(5000);

	FadeDelete("gin01��", 2000, true);

	Wait(1000);

	SetFwC("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md05/0340010a14">
����������������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0340020a14">
��Ϊʲô������������������

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0340030a14">
��Ϊʲô�������ҡ�������

{	FwC("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0340040a14">
��Ϊʲô��
����Ҫ��һֱ�ᱻ����!!��

//���⡿
<voice name="��" class="��" src="voice/md05/0340050a14">
��Ϊʲô��������ģ��������ɹ��˫��
��ס!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("gin02", 6000, @0, @0, "cg/ev/ev254_��դˁФ��y�Ǻ�_b.jpg");

	OnSE("se����_�z_װ��04",1000);

	EffectZoomadd(10000, 1000, 100, "cg/ev/ev254_��դˁФ��y�Ǻ�_b.jpg", false);
	Fade("gin02", 100, 1000, null, true);

	Wait(1000);

	SetFwC("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
//���⡿
<voice name="��" class="��" src="voice/md05/0340060a14">
��Ϊʲô��
��Ϊʲô��
��Ϊʲô!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������

	CreateColorSP("�\Ļ��", 10000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 500, null, "cg/data/slide_02_01_1.png", true);

	Delete("gin*");

	OnBG(100, "bg073_��a_02.jpg");
	FadeBG(0, true);


	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg073_��a_02.jpg");
	Zoom("�}����50", 0, 1200, 1200, null, true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg073_��a_02.jpg");
	Zoom("�}����100", 0, 1400, 1200, null, true);
	Fade("�}����100", 0, 600, null, true);
	CreateTextureSP("�}����200", 100, Center, Middle, "cg/bg/bg073_��a_02.jpg");
	Zoom("�}����200", 0, 1200, 1200, null, true);
	DrawTransition("�}����200", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("�}����100", 50, "LowWave ", 0, 100, null);
	DrawEffect("�}����100", 500, "SuperWave", 40, 40, null);


	DrawTransition("�\Ļ��", 500, 1000, 0, 500, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ڳ�ϼ�ľ�ͷ���ź��š�

��˺���ѷΡ�

��ֻ�ǣ��ܱ�����

��������ͼ�ٻ����ڵ����硣

��������ˡ�

����Ҫ���ȵġ�

����Ҫ�ػ��ġ�

�����������硣
����������Ƭ����¶��Բ����ģ�һ����Ů��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�����ι�

	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev128_�����ι�_b01.jpg");


	EfRecoIn2(300);

	Wait(500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������Ҫ������

����ʹ����������Ϊ�С�

����������������������

������Ҫ������

���²����֡�

���Ҿ�����ɱ���⡣

�������ն��⣬�Ǵն�������ʹ����

������ʹ����

��ɱ���ն��⣬�Ǵն�������ְ��

������ְ��

������֮���ì�ܡ�

��Ϊ�˳�Խ���ì�ܣ��ұ���ɱ�˹⡣

��������ˡ�
��
��Ψһ�ܵ߸�ì�ܵ�ħ�����۱��Ƶ��˳�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
//������

	EfRecoIn1(18000,100);

	Delete("�}����*");
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg051_�Զ��Ҿ��g_01.jpg");
	CreateTextureSP("�}����200", 2100, 600, InBottom, "cg/st/st���L_ͨ��_�Ʒ�.png");


	EfRecoIn2(600);



	SetFwC("cg/fw/fw���L_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����L��
<voice name="���L" class="���L" src="voice/md05/0340070a11">
������˿��ǡ�����

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md05/0340080a11">
��Ϊ���������ʿ�����ڻ��˺����ܵ��ˡ�
��������ʿ�þ��ˡ�������ȴ����������
�Ĵ�������

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md05/0340090a11">
�����ҵķ�ŭ���Ǳ�Ȼ������

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md05/0340100a11">
�������Ļ����Ҿ�û�����������ˡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md05/0340110a11">
�������°��и���δ�������ȥ����ʵ��
���ⲻȥ����

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md05/0340120a11">
����������ֻ�ǡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	CreateTextureEX("�}����300", 2200, 150, InBottom, "cg/st/st����_ͨ��_˽��.png");
	Fade("�}����300", 500, 1000, null, true);

	Wait(300);

	SetFwC("cg/fw/fw����_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����ҡ�
<voice name="����" class="����" src="voice/md05/0340130b52">
�����뷴������

{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md05/0340140b52">
��Ѻ��ȥ��
�����������ߡ���

{	FwC("cg/fw/fw����_����.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md05/0340150b52">
�������ߡ�
�����������Ļ�Ҳ�ͺ����ô��ˡ���

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md05/0340160b52">
������ֻ����ҩ�ˡ���

{	FwC("cg/fw/fw����_����.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md05/0340170b52">
����������һ������һ�Ӧ��Ҳ�ܵþȰɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//��һ�W
//������
	EfRecoIn1(18000,100);

	CreateTextureEX("�}����EX01", 2400, Center, InBottom, "cg/bg/bg052_�����ҵ���_01.jpg");
	Fade("�}����EX01", 0, 1000, null, true);

	EfRecoIn2(600);

	Wait(1000);
	OnSE("se���L_����_�����02", 1000);

	CreateTextureEX("�}����EX02", 2450, Center, InBottom, "cg/ef/ef008_��������܉��.jpg");
	Fade("�}����EX02", 300, 1000, null, true);

	Wait(300);

	OnSE("se���L_����_��ж�", 1000);

	CreateTextureEX("�}����EX03", 2400, Center, InBottom, "cg/ev/ev005_�ؤ���줿��.jpg");
	Fade("�}����EX03", 0, 1000, null, true);
	CreateTextureEX("�}����EX04", 2500, Center, InBottom, "cg/ev/ev133_����������_c.jpg");

	Wait(200);

	OnSE("se���L_����_�z_̤���z��02", 1000);
	FadeDelete("�}����EX02",1000,true);

	Wait(500);

	Fade("�}����EX04", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��
�������ȡ����١�����������

��
������������������������
��

��������������������������������������������
����������������������������������������������
����������������������������������������������
��������������������������������������������!!��
��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������

	EfRecoOut1(100);

	Delete("�}����*");

//	OnBG(100, "bg109_������g.jpg");
//	FadeBG(0, true);

	CreateTextureSP("gin01", 2000, @0, @0, "cg/ev/ev254_��դˁФ��y�Ǻ�_a.jpg");


	EfRecoOut2(600);

	Wait(500);

	SetFwC("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���⡿
<voice name="��" class="��" src="voice/md05/0340180a14">
���㲻���������𣡡�

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0340190a14">
�����������𣡡�

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0340200a14">
��������Ρ������޷��õ��𣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	WaitKey(800);

	SetFwC("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/md05/0340210a14">
����ô����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0340220a14">
����ô�����١���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0340230a14">
��������㽻���κ��ˡ�����

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0340240a14">
���������������ۼ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����݅�������������
	OnSE("se����_������_���g����", 1000);

	CreateTextureEX("gin03", 2100, @0, @0, "cg/ev/ev254_��դˁФ��y�Ǻ�_c.jpg");
	CreateTextureEX("gin03��", 2100, -512, -288, "cg/ev/resize/ev254_��դˁФ��y�Ǻ�_cl.jpg");

$��`�ץ�`�֥ʥå��� = "@gin03��";
$��`�ץ�`�֥����� = 5000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);

	Fade("gin03��", 1000, 1000, null, true);
	Fade("gin03", 0, 1000, null, true);
	Wait(1000);

	Zoom("gin03��", 1000, 500, 500, Axl2, false);
	Fade("gin03��", 1000, 0, Axl3, false);

//����������������Q��ʤ��Τǡ��Υե������SE���� inc�Ѿ�
	Wait(1000);

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);


}

..//������ָ��
//�Υե����롡"md05_035.nss"