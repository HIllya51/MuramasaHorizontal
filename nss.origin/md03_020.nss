//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_020.nss_MAIN
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
	#bg077_�����µ���¥ǰ_01=true;
	#bg026_���ӘSɽ��a_02=true;
	#bg027_���ӘS�u�h���g_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_021.nss";

}

scene md03_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md03_019.nss"


//��bg077
//�����\

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg077_�����µ���¥ǰ_01.jpg");
	FadeBG(0, true);
	StR(1000, @0, @0, "cg/st/3d���\_����_ͨ��.png");
	FadeStR(0, false);


	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

	SetNwC("cg/fw/nw���\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���\����
<voice name="����㣯���\��" class="����������" src="voice/md03/0200010e023">
����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ夤���ȥ��


	OnSE("se����_����_���S01", 1000);

	Zoom("@StR*", 150, 0, 3000, null, false);
	DeleteStR(150,true);

//�����ӘS��Ϧ
//���u�h���g

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("@OnBG*");

	CreateTextureSP("a", 200, @0, @0, "cg/bg/bg026_���ӘSɽ��a_02.jpg");

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	WaitKey(1000);

	CreateTextureEX("b", 200, @0, @0, "cg/bg/bg027_���ӘS�u�h���g_02.jpg");
	Fade("b", 1000, 1000, null, true);

	SoundPlay("@mbgm20", 0, 1000, true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0200020a09">
�������᳡�������ռƻ�����ˣ��ն�
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0200030a00">
���ǡ�
������ĳЩ�鷳����Ԥ�㳬����Щ������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0200040a06">
���ⲻҪ����
���ɵúã���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0200050a00">
����л�佱�����¡���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0200060a07">
���ǺǺǡ���Ҳ����Ϊ��Ŷ����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0200070a08">
��������ʲô��û�ɡ�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0200080a09">
���������ˣ�����ͦ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á����ӑ����_��

	OnSE("se�ճ�_����_���饤���_��01", 1000);


	StR(900, @50, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	Move("@StR*", 300, @-50, @0, null, false);
	FadeStR(300, true);


	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0200090b37">
��ܥԽ�н����ˡ���

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0200100a07">
���ţ�
����ô�ˣ���������

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0200110b37">
���븽������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

}

..//������ָ��
//�Υե����롡"md03_021.nss"