//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_007vs.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_008.nss";

}

scene mc04_007vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_006.nss"

//������֦������
//�����������������|��
//��������ʿ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

	OnBG(100, "bg090_���Bۡͨ·a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm06", 0, 1000, true);


	CreateSE("�i��", "se����_����_ľ����ä���i��01_L");
	MusicStart("�i��", 0, 1000, 0, 1000, null,true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);


	StL(1000, @0, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	FadeStL(300, true);


	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���B��ʿ����
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0010e171">
����ѽ����������������!!
������֦���ˣ�������������������!!��


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/007vs0020a03">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`�󡣚���

	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	CreateTextureEX("Ѫ", 15000, @0, @0, "cg/anime/blood02a_3.png");
	Fade("Ѫ", 0, 1000, null, false);
	Shake("@StL*", 100, 13, 1, 0, 0, 1000, Axl1, true);
	Fade("�ե�å����",0,1000,null,true);
	FadeDelete("Ѫ",1000,false);
	Fade("�ե�å����",300,0,null,true);

	OnSE("se����_�n��_ܞ��01", 1000);



	Move("@StL*", 200, @-10, @150, DxlAuto, false);
	DeleteStL(300,true);

	StR(1000, @0, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);

	FadeStR(300, true);


	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�룺�����������ϣ���090930��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���B��ʿ�¡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0030e172">
���������ǵİ�������֦���ˣ�
������ֻ�����ʨ�Ӻ���˵������������
���˾���û��˿������֮�ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`�󡣚���
	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	CreateTextureEX("Ѫ", 15000, @0, @0, "cg/anime/blood02b_3.png");
	Fade("Ѫ", 0, 1000, null, false);
	Shake("@StR*", 100, 13, 1, 0, 0, 1000, Axl1, true);

	Fade("�ե�å����",0,1000,null,true);
	FadeDelete("Ѫ",1000,false);
	Fade("�ե�å����",300,0,null,true);

	OnSE("se����_�n��_ܞ��05", 1000);

	Move("@StR*", 200, @10, @150, DxlAuto, false);
	DeleteStR(300,true);


	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/007vs0040a03">
��������


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/007vs0050a03">
���Ǻǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤ����
//������Ƅ�

	SetVolume("�i��", 1000, 0, null);

	OnSE("se���L_����_��ͻ�M02", 1000);

	Zoom("@OnBG*", 600, 1500, 1500, DxlAuto, false);


	Wait(200);

//��������
//�������`�ä�����֦�ǈ�
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnBG(100, "bg089_���Bۡ�F�ˤ��g_01.jpg");
	FadeBG(0, true);

	StL(1100, @-30, @0,"cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	StR(1000, @30, @0,"cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	Request("@StR*", Smoothing);
	Rotate("@StR*", 0, @0, @180, @0, null,true);
	FadeStA(0,true);

	OnSE("se����_����_���饤�ǥ���", 1000);
	DrawTransition("�\Ļ��", 150, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("�\Ļ��");

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0060e173">
��ʲô������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ơ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0070e176">
���ء�����


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/007vs0080b18">
������������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/007vs0090a03">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ѥ�`�ɡ��Ф����ɤ����
//����¾
	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("Ѫ1", 14000, @0, @0, "cg/anime/blood01a_12.png");
	Fade("�ե�å����",300,0,null,true);

	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("Ѫ2", 14100, @0, @0, "cg/anime/blood02b_7.png");

	Fade("�ե�å����",300,0,null,true);

	OnSE("se����_�n��_ܞ��01", 1000);

	Move("@St*", 600, @0, @50, null, false);
	Shake("@St*", 600, 2, 0, 0, 0, 1000, null, false);
	DeleteStA(600,true);

	FadeDelete("Ѫ*",1500,true);

	StL(1000, @-120, @0,"cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	Move("@StL*", 150, @120, @0, Dxl2, false);
	FadeStL(150,true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0100e173">
�������ȡ���һ�£�
������֦���ˣ�����Ϊֹ����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/007vs0110a03">
��������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0120e173">
���������������˰ɣ�����λ���������ã���
֦���ˣ�
�����������°���Ҳ�������!?��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/007vs0130a03">
��������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0140e173">
����ǹ������ǹ���£���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/007vs0150a03">
��Ϊʲô����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0160e173">
������������


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/007vs0170a03">
�����б�Ҫ����ǹ����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0180e173">
��ʲ��ʲôΪʲô����
��������������������İ�����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/007vs0190a03">
��������


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/007vs0200b18">
��ɵ�ϡ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0210e173">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������`��

	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Fade("�ե�å����",300,0,null,true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0220e173">
��������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�á�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/007vs0230e173">
��������ô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ф���
	OnSE("se����_�n��_ܞ��01", 1000);

	Move("@StL*", 500, @0, @50, null, false);
	DeleteStL(500,true);

	Wait(300);
	OnSE("se���L_�|��_ȭ�|����01", 1000);

	WaitKey(1000);

}

..//������ָ��
//�Υե����롡"mc04_008.nss"