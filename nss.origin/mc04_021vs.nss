//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_021vs.nss_MAIN
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
	#ev190_�����򤱤�Х���=true;
	#bg064_���ӘS���ڵ�_02=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_022vs.nss";

}

scene mc04_021vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_020.nss"

//���^�Y��bg064�Ǵ��ã�

//ð�^�£ǣͤʤ����ݳ��Ǥ� inc�Ѿ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 15000, "BLACK");

	OnBG(100, "bg064_���ӘS���ڵ�_02.jpg");
	FadeBG(0, true);
	OnSE("se����_����_�ߤ�01_L", 1000);

	Delete("�ϱ���");
	FadeDelete("�\", 1500, true);

	SetVolume("@OnSE*", 1000, 0, null);

	StL(1000, @0, @0, "cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0, "cg/st/st��֦_ͨ��_˽��.png");

	FadeStL(300, false);
	Wait(150);
	FadeStR(300, true);

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���B�o�T�ġ�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/021vs0010e198">
������ŶŶ��
���н����£���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�š�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/021vs0020e199">
���������졭���Һ�ƽ�����£�
������Ϊ���޷�ǰ���������Ǻ������ģ���


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/021vs0030b18">
��������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0040a06">
��������ת��ָ������
�����Ƕ���һͬ�˳���������֦С�㡣��

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0050a06">
������������շ��У��Է���Ϯ��
�����۵�����У����п�����Ӱ���̹���
��������Ⱥ��ҵ�ָʾ����


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0060a06">
���������𣿡�


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�ġ�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/021vs0070e198">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 19000);

	StL(900, @-125, @0,"cg/st/3d����ʽָ�]��_����_ͨ��.png");
	StCL(1200, @125, @0,"cg/st/3d�˰�ʽ�o�T��_����_ͨ��.png");
	StCR(1000, @-125, @0,"cg/st/3d�ũ�ʽ�o�T��_����_ͨ��.png");
	StR(1100, @125, @0,"cg/st/3d����ʽ�o�T��_����_ͨ��.png");
	FadeStA(0,true);

//���o�T�����T������`
	OnSE("se����_냇��_�z�ǈ���01", 1000);

	CreateTextureSP("�}�ݱ���", 5000, @0, @0, "cg/bg/bg064_���ӘS���ڵ�_02.jpg");
	SetShade("�}�ݱ���", HEAVY);

	CreateTextureSP("�}�ݸo��", 5200, @500, @300, "cg/st/3d����ʽָ�]��_����_ͨ��.png");
	CreateTextureSP("�}�ݸo�r", 5100, @0, @100, "cg/st/3d�ũ�ʽ�o�T��_����_ͨ��.png");
	Request("�}��*", Smoothing);

	Zoom("�}�ݱ���", 0, 2000, 2000, null, false);
	Zoom("�}�ݸo��", 0, 2000, 2000, null, false);
	Zoom("�}�ݸo�r", 0, 2000, 2000, null, false);

	Move("�}�ݱ���", 5000, @70, @0, null, false);

	Move("�}�ݸo��", 6000, @70, @0, null, false);
	Move("�}�ݸo�r", 6000, @70, @0, null, false);
	FadeDelete("�}��д", 1000, true);

	FadeDelete("�}��*", 1000,false); 

	OnSE("se����_냇��_�z�ǈ���01", 1000);

	CreateTextureEX("�}�ݱ����r", 4000, @0, @0, "cg/bg/bg064_���ӘS���ڵ�_02.jpg");
	SetShade("�}�ݱ����r", HEAVY);

	CreateTextureEX("�}�ݸo��", 4200, @500, @150, "cg/st/3d����ʽ�o�T��_����_ͨ��.png");
	CreateTextureEX("�}�ݸo��", 4100, @0, @150, "cg/st/3d�˰�ʽ�o�T��_����_ͨ��.png");
	Request("�}��*", Smoothing);

	Zoom("�}�ݱ����r", 0, 2000, 2000, null, false);
	Zoom("�}�ݸo��", 0, 2000, 2000, null, false);
	Zoom("�}�ݸo��", 0, 2000, 2000, null, false);

	Move("�}�ݱ����r", 5000, @-70, @0, null, false);
	Move("�}�ݸo��", 6000, @-70, @0, null, false);
	Move("�}�ݸo��", 6000, @-70, @0, null, false);

	Fade("�}�ݱ����r", 300, 1000, null, false);
	Fade("�}�ݸo��", 300, 1000, null, false);
	Fade("�}�ݸo��", 300, 1000, null, true);

	Wait(1500);

	FadeDelete("�}��*", 1000,true); 


	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���B�o�T�š�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/021vs0080e199">
������ȷ�ϡ�
�����̿�ʼ���󡣡�


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�ġ�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/021vs0090e198">
�����죬��ǳ�������


//���Х���װ�ץƩ`��
{	SoundPlay("@mbgm07", 0, 1000, true);
	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�ġ�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/021vs0100e198">
����������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�š�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/021vs0110e199">
������������
��Ϊ�Σ�������ʱ�򡭡���


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�ġ�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/021vs0120e198">
���Ӻδ�����������


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0130a06">
����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Щ`���Х�����ɢ��ġ��B��ǤϤʤ���
	OnSE("se���L_�Х���_��ɢ���", 1000);

	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef033_��ɢ���.jpg");
	SetVertex("�}����20", 125, 100);
	SetBlur("�}����20", true, 3, 500, 60, false);

	Fade("�}�ե�", 200, 0, null, false);
	Zoom("�}����20", 300, 12000, 11000, Axl2, false);
	DrawDelete("�}�ե�", 100, 100, "zoom_01_00_0", true);


	Wait(400);

	Zoom("�}����20", 10000, 20000, 20000, null, false);
	FadeDelete("�}����20", 1000, true);

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯���B�o�T�ġ�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/021vs0140e198">
������������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�š�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/021vs0150e199">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���Ф��󡣸o�T��ȫ��
	OnSE("se���L_�n��_�zܞ��02", 1000);
	CreatePlainEX("�}��д", 100);
	Fade("�}��д", 0, 1000, null, true);
	Shake("�}��д", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se���L_�n��_�zܞ��01", 1000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 500, 0, 30, 0, 0, 1000, DxlAuto, true);


	OnSE("se���L_�n��_�zܞ��01", 1000);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 1000, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw�{�Ӻ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0160a06">
��������������������


{	FwC("cg/fw/fw��֦_ʧ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/021vs0170b18">
��������㣿��


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0180a06">
�����������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);

//���Фä�Ҋ�Ϥ���
//���ţ֣�ȼ���Ϥ���ƥ饹���Ϥ����ĥХ���
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureEXadd("�}�݄���", 4110, Center, InBottom, "cg/ev/resize/ev190_�����򤱤�Х���l.jpg");
	CreateTextureSP("�}��", 4100, Center, InBottom, "cg/ev/resize/ev190_�����򤱤�Х���l.jpg");
	Request("�}��*", Smoothing);

	Move("�}��*", 3000, @0, -130, DxlAuto, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	WaitAction("�}��*", null);

	Wait(600);

	CreateSE("SE01","se����_냇��_�z�ǈ���02");
	MusicStart("SE01",0,1000,0,1200,null,false);
	SetBlur("�}��*", true, 3, 500, 80, false);
	Fade("�}�݄���", 1, 1000, null, true);

	FadeDelete("�}�݄���", 1300, false);
	Move("�}��*", 300, -512, -288, Dxl2, false);
	Zoom("�}��*", 300, 500, 500, Dxl2, true);

	SoundPlay("@mbgm10", 0, 1000, true);


	SetFwR("cg/fw/fw�{�Ӻ�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0190a06">
������֦!!!!!!��


{	FwR("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/021vs0200a03">
��������������������


{	FwR("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0210a06">
��Ҫɱ����
��������˾�������ֻΪ�˸��𣡡�


{	FwR("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0220a06">
���㻹��Ҫɱ���𣡡�


{	FwR("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/021vs0230a03">
������������


{	FwR("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0240a06">
���ұ����Ź��ҵ����ˡ���
�������أ���


{	FwR("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0250a06">
�����˸������⻹ʣʲô?!
��ʲôҲû�У���


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0260a06">
����Ҫ��С�����������
��������ˡ������


{	FwR("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0270a06">
��ֻΪ��һ�������ĸ��𡭡�
���ҿɲ��Ὣ��������
����������ĵĸ���Ϸ��!!��


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/021vs0280a03">
����ʹ��ˡ�����


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/021vs0290a03">
���һ���Ҫȡ�ߡ���


{	FwR("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0300a06">
����Ϊ�ε�!!��


{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/021vs0310a03">
����Ҳû��ʲô���塣
��ֻ�ǡ�����

//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/021vs0320a03">
����˵��������ġ���


{	FwR("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/021vs0330a03">
������������ˣ���


{	FwR("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0340a06">
����Ȼ���ģ�
���Ǹ�����û���κ�������彻���ļ�ֵ����


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/021vs0350a03">
����ô��
����ô������


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/021vs0360a03">
�������������<RUBY text="��������">����֮��</RUBY>�ɡ�
���������������


{	FwR("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/021vs0370a06">
����������һ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 15000, "#000000");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

}

..//������ָ��
//�Υե����롡"mc04_022vs.nss"