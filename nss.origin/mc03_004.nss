//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_004.nss_MAIN
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

	$GameName = "mc03_005.nss";

}

scene mc03_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_003.nss"

//������
//��ɽ����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 10000, "#000000");	

//���������w��Ǥ롡�Ѿ�
	CreateTextureSP("�}�ձ���", 100, InRight, InTop, "cg/bg/bg204_�����ر���_01.jpg");
	Move("�}�ձ���", 10000, 0, -278, Axl2, false);

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\",1500,true);

	StR(1000,@500,@0,"cg/st/3d�����˜�_�T��_ͨ��.png");
	FadeStR(0,true);

	CreateSE("SEL01","se���L_����_������02_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Shake("@StR*", 10000, 1, 0, 0, 0, 1000, Dxl3, false);
	Move("@StR*", 1500, @-500, @200, Dxl1, true);

	WaitKey(2000);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(200);
	SetVolume("SEL*", 1000, 0, null);
	Move("@StR*", 400, @-1500, @600, Dxl3, true);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	SetVolume("@OnSE*", 1000, 0, null);
	OnBG(100, "bg005_ɽ��_01.jpg");
	FadeBG(0, true);
	DeleteStA(0,false);

	Delete("�}����*");
	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");

//�����������w�����ŵ�
//�����
	CreateSE("�ŵ�", "se���L_����_�z_�ŵ�01");
	MusicStart("�ŵ�", 0, 1000, 0, 1000, null,false);

	WaitKey(2000);

	SetVolume("�ŵ�", 1000, 0, null);

	OnSE("se����_�z_�l����02", 1000);

	StR(1000,@20,@50,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(300,true);
	Move("@StR*", 500, @-20, @-50, DxlAuto, true);

	
	Wait(200);

	CreateColorEXadd("�ե�", 10000, "#FFFFFF");
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	Fade("�ե�", 300, 1000, null, true);

	Delete("�}����400");
	CreateColorSPadd("�ե�", 10000, "#FFFFFF");
	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, true);
	Delete("�ϱ���");

	FadeDelete("�ե�", 1600, true);

	SetVolume("SE*", 1000, 0, null);


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc03/0040010a00">
����ξ���̴Ӹ��¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	StL(1000, @70, @0, "cg/st/st����֦_ͨ��_˽��c.png");
	StCL(1010, @-90, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, false);
	FadeStCL(300, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����衿
<voice name="����" class="����" src="voice/mc03/0040020a04">
��״����Σ���


{	SoundPlay("@mbgm16", 0, 1000, true);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0040030a00">
��û����©��
���Ѿ��ƻ��������е��ƶ��ֶΡ���Ա�ĵ���
Ӧ�û��������ӳ١���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0040040a03">
����ô�������ڴ�����ǰ���׺Ӱɡ���



{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0040050a00">
���⸽���İ�ȫ�أ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc03/0040060a04">
����ϧ�޷�ȷ���ˡ�
�����ǸϿ��ƶ��ȽϺðɡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0040070a00">
�����ס���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0040080a03">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0040090a00">
����ξ���£���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0040100a03">
��ſ�£���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ͻ���w�Ф�����֦
	OnSE("se����_�n��_��ˤ֤Ĥ���01", 1000);
	StC(1000, @100, @0, "cg/st/st����֦_ͨ��_˽��c.png");
	DeleteStL(200,false);
	DeleteStCL(200,false);
	Move("@StC*", 150, @150, @0, null, false);
	FadeStC(200, false);
	Move("@StR*", 500, @150, @0, null, false);
	DeleteStR(300,true);

//���|�����Ĥ��줿
	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Fade("�ե�å����",300,0,null,true);

	Shake("@StC*", 500, 10, 0, 0, 0, 1000, DxlAuto, false);

//	WaitKey(1000);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0040110a03">
���ء���!!��


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0040120a00">
��ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦�|����
	StC(1000, @250, @0,"cg/st/st����֦_���_˽��b.png");
	FadeStC(150,true);
	OnSE("se���L_�|��_ȭ�|����01", 1000);

	Wait(300);

//���Ĥ�
	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Fade("�ե�å����",300,0,null,true);

	WaitKey(1000);

	SetNwC("cg/fw/nw�ѓ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
<voice name="����㣯�ѓ���" class="����������" src="voice/mc03/0040130e144">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��á���ʿ���������
	OnSE("se����_�n��_ܞ��04", 1000);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0040140a03">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦��ϥ��ͻ��
//�������
	OnSE("se����_�n��_ܞ��04", 1000);
	Move("@StC*", 300, @-10, @100, DxlAuto, false);
	DeleteStC(300,true);

	SetFwC("cg/fw/fw����_�ϱ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����衿
<voice name="����" class="����" src="voice/mc03/0040150a04">
����С��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@OnSE*", 2000, 0, null);

//������K�ˡ�����
	CreateColorEX("��", 10000, "WHITE");
	Fade("��", 1500, 1000, null, true);

	WaitPlay("@mbgm*", null);

}

..//������ָ��
//�Υե����롡"mc03_005.nss"