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

scene mc04_016vs.nss_MAIN
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
	#ev188_Ѫԡ���F�D��_a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_017vs.nss";

}

scene mc04_016vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_015vs.nss"


//�����襵����
//���o�T����u��
//������
//��I�֥��åס��פ��ִ���

//�o�T��ҕ��Ȥ����ݳ��� inc�Ѿ�

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\", 15000, "BLACK");

	OnBG(100, "bg087_���Bۡ���vǰa_01.jpg");
	FadeBG(0, true);

	CreateSE("�ߤ�", "se����_����_�z_�}���l��ȥ��01");
	MusicStart("�ߤ�", 0, 1000, 0, 1000, null,false);

	CreateTextureSP("����", 1000, Center, InBottom, "cg/st/st����_���L_˽��.png");

//	StC(1000, @0, @0, "cg/st/st����_���L_˽��.png");
//	FadeStC(0, true);
	Request("����", Smoothing);

	Delete("�ϱ���");
	FadeDelete("�\", 1500, true);

	SoundPlay("@mbgm12", 0, 1000, true);


	OnSE("se���L_����_���04", 1000);


	SetBlur("����", true, 3, 500, 50,false);
	SetBlur("@OnBG*", true, 3, 500, 50,false);
	Zoom("����", 300, 1800, 1800, Dxl3, false);
	Zoom("@OnBG*", 300, 1800, 1800, Dxl3, false);


	CreateTextureEX("�Щ`�ȥꥣ", 3000, @0, @0, "cg/ev/ev121_�I�֤�ͻ����������_a.jpg");

	Fade("�Щ`�ȥꥣ", 500, 1000, null, true);
	Delete("����");

	SetFwC("cg/fw/fw����_�ϱ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//����
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0010a04">
��<RUBY text="�ԣȣ�">��������ż</RUBY> ����


//����������
{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0020a04">
��<RUBY text="�ɣңϣ�">������</RUBY>����



//���ᥤ�ǥ�
{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0030a04">
��<RUBY text="�ͣ��ɣģţ�">��ױΪ��ɫ</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ѫװ�ץЩ`�ȥꥣ�k��
//���ɫ�Υ��Х餬��������Ӥ�Ȥ���
//��������o�T����
//	CreateColorSP("��", 5000, "WHITE");
//	DrawTransition("��", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnSE("se����_�z_�Щ`�ȥꥣ�k��", 1000);

	CreateTextureSP("�Щ`�ȥꥣ01EX", 3100, @0, @0, "cg/ef/ef032_�Щ`�ȥꥣa.jpg");
	DrawTransition("�Щ`�ȥꥣ01EX", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("�Щ`�ȥꥣ�·�", 3000, @0, @0, "cg/ef/ef032_�Щ`�ȥꥣb.jpg");

	SetBlur("�Щ`�ȥꥣ01EX", true, 3, 500, 50,false);


//	FadeDelete("��", 300, true);


	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/016vs0040e195">
��Ŷ����!?��


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/016vs0050e196">
��ʲô!?��


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0060a04">
�������ܾúܾ���ǰ����
��<RUBY text="�ԣ�������������">ɭ�ֱ˷�֮��</RUBY>��һλ�����Ĺ��ˡ���



{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0070a04">
�������ر��������˥�϶�ȥ�Լ�����ò��
����һ��������ȥ�ĶŶ������ʦ������


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0080a04">
�����ŶԹ��˵�ȫ���羴����̾��������
˼������һ�����С�
�����������⸱���С���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ����}�ӡ�
//����åɥޥ�����

	OnSE("se����_��_��Ġ����02", 1000);
	CreateColorSPadd("��", 15000, "#990000");
	Zoom("�Щ`�ȥꥣ01EX", 1000, 1500, 1500, AxlAuto, false);
	FadeDelete("�Щ`�ȥꥣ01EX", 1000, false);
	FadeDelete("��", 1000, true);


	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/016vs0090e195">
������������


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/016vs0100e196">
����ѽ������������!?��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0110a04">
������ǡ�<RUBY text="��ѪŮ����">��Ѫװ��</RUBY>������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��I�֡����ִ�
//���ɥ����}��
//���ִ����यȾ�ޤ�

	FadeDelete("�Щ`�ȥꥣ�·�", 1000, true);

	OnSE("se����_��_��Ġ����02", 1000);
	CreateColorSP("��", 15000, "#990000");

	CreatePlainEX("�}��д", 5000);
	Request("�}��д", Smoothing);
	SetBlur("�}��д", true, 2, 500, 200, false);

	Fade("�}��д", 0, 500, null, true);
	Zoom("�}��д", 1300, 1500, 1500, Dxl2, false);
	FadeDelete("��", 1000, false);

	Wait(1000);

	Fade("�}��д", 300, 0, null, true);
	Delete("�}��д");

	CreateSE("SE01","se���L_����_Ͷ�S�c��");
	CreateTextureSP("�Щ`�ȥꥣ02", 2900, @0, @0, "cg/ev/ev121_�I�֤�ͻ����������_b.jpg");

	MusicStart("SE01",0,1000,0,300,null,false);
	SetFrequency("SE01", 400, 1200, Axl3);
	DrawDelete("�Щ`�ȥꥣ", 1000, 100, "effect_01_00_0", false);

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯���B�o�T����
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/016vs0120e195">
���ذ����������ء�����


{	NwC("cg/fw/nw�o�T����.png");}
//������㣯���B�o�T�¡�
<voice name="����㣯���B�o�T��" class="����������" src="voice/mc04/016vs0130e196">
���������ޡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����åɥ����ȣ�
	CreateSE("SE01","se����_냇��_�k��03");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorEX("��åɥ�����", 15000, RED);
	Fade("��åɥ�����", 200, 1000, null, true);
	Delete("�Щ`�ȥꥣ02");

	OnBG(100, "bg087_���Bۡ���vǰa_01.jpg");
	FadeBG(0, true);

	Wait(1000);
	FadeDelete("��åɥ�����", 1000, true);

//�������`�󤺤��`�󡣸o�T�����Ρ�����
	CreatePlainEX("�}��д", 110);
	Fade("�}��д", 0, 500, null, true);

	OnSE("se���L_�n��_�zܞ��02", 1000);
	Shake("�}��д", 500, 0, 30, 0, 0, 1000, DxlAuto, true);


	CreateSE("SE02a","se���L_�n��_�zܞ��01");
	MusicStart("SE02a",0,1000,0,1200,null,false);
	Shake("�}��д", 500, 0, 30, 0, 0, 1000, DxlAuto, true);


	CreateSE("SE02b","se���L_�n��_�zܞ��01");
	MusicStart("SE02b",0,1000,0,800,null,false);
	Shake("�}��д", 1000, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("�}��д");

	StL(1000, @0, @0, "cg/st/st�����_��ʿ_�i��_�Ʒ�.png");
	FadeStL(300, true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/016vs0140e184">
����������������


//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/016vs0150e184">
��ƭ����ƭ�˵İɣ�
��������ӡ���ȫ�𣿡�


//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/016vs0160e184">
����һ���ˡ�����


//�����������ݼ���������ʤ�
{	NwC("cg/fw/nw������.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0170a04">
����ѽ��
��˵���������㻹�����ذ���ʿ����������


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/016vs0180e184">
����!?��


//�����ʤ�
{	NwC("cg/fw/nw������.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0190a04">
�����������õ��ġ�
���������Ѿ�<RUBY text="����">�Ա�</RUBY>�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ�������Ѫ�ᡣ�����ˡ�
//���o�j���ݳ����Ʊ�ʾ
	CreateTextureEX("�}��", 4100, InLeft, InBottom, "cg/ev/resize/ev188_Ѫԡ���F�D��_am.jpg");

	CreateMask("�}��", 6000, 0, 0, "cg/data/slide_08_00_0.png", false);
	SetAlias("�}��","�}��");

	CreateTextureEX("�}��/�}��", 4110, -416, InBottom, "cg/ev/resize/ev188_Ѫԡ���F�D��_al.jpg");

	Move("�}��", 3000, @0, 0, DxlAuto, false);
	Fade("�}��", 1000, 1000, null, false);

	Move("�}��/�}��", 3000, @0, -90, DxlAuto, false);
	Fade("�}��/�}��", 1000, 1000, null, true);

	WaitAction("�}��", null);

	PrintGO("�ϱ���", 19000);

	CreateTextureSP("�}��", 4100, Center, Middle, "cg/ev/ev188_Ѫԡ���F�D��_a.jpg");
	OnBG(100,"bg087_���Bۡ���vǰa_01.jpg");
	FadeBG(0,true);
	StC(1000, @0, @0,"cg/st/st������Ѫ_ͨ��_˽��.png");
	FadeStC(0,true);

	SetNwR("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/016vs0200e184">
����������������������������������������
����������������������������������������
����������������������������������������
������������������������������������������


{	FadeDelete("�ϱ���", 1000, false);
	FwR("cg/fw/fw������Ѫ_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0210a04">
�����<RUBY text="��ѪŮ����">����</RUBY>��Ϊ����׼���Ľ��С�
�����Բ������ɺ��ش�Ұ��<RUBY text="�ƣ���졡�У�����">ȫ��װ��</RUBY>��
�����Ǿ�������������ˡ���


//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0220a04">
����Ȼ��������û�н��е�������
���޷����У�Ҳ����ǿ������Ļ��ܡ�
��������Ҳ����û�С���


{	FwR("cg/fw/fw������Ѫ_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0230a04">
������ֻ��һ�㣬<RUBY text="�ϣ������̣��">����</RUBY>������׿Խ��Ⱥ��
�����۶Է��ǲ������ߣ�����װ�׵��ػ�����
��ͻ�ƣ�����<RUBY text="����">��Ѫ</RUBY>������


{	FwR("cg/fw/fw������Ѫ_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0240a04">
���������Է�����������ռΪ<RUBY text="�գ���">������</RUBY>���С�
��������ţ��ͻ�����������



//��һ�˳ơ��錄������
{	FwR("cg/fw/fw������Ѫ_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0250a04">
�����������ǵģ�����������ͻ����������
������̫��Ϊ���ˡ�����


{	NwR("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/016vs0260e184">
������������


//������㣯���B��ʿ�Ρ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/016vs0270e184">
�����������������ۡ�����

{//��������ʧ��
	OnSE("se����_�n��_ܞ��01", 1000);
	SetVolume("@mbgm*", 2000, 0, null);
	FwR("cg/fw/fw������Ѫ_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0280a04">
����������
��������������˵���̼�һ��̫ǿ���˰ɡ�
�����������˻��¡���


{	FadeDelete("�}��", 1000, false);
	FwR("cg/fw/fw������Ѫ_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0290a04">
������������Ȳ��ܡ�
������<RUBY text="���">����ǰ</RUBY>�ƺ��Ѿ�����ˡ���


{	FwR("cg/fw/fw������Ѫ_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/016vs0300a04">
������������С�㡪��
���뾡���ƻ��ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc04_017vs.nss"