//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc04_014vs.nss","RandomMeimetsu_mc04_014vs",true);
	Conquest("nss/mc04_014vs.nss","RandomMeimetsuSet_mc04_014vs",true);
	

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
	#bg090_���Bۡͨ·b_01=true;
	#bg090_���Bۡͨ·d_01=true;

	#ev954_�{�Ӻ�װ��_a=true;
	#ev954_�{�Ӻ�װ��_b=true;
	#ev186_�����֣�㑷�_a=true;
	#ev186_�����֣�㑷�_b=true;
	#ev186_�����֣�㑷�_c=true;
	#ev186_�����֣�㑷�_d=true;
	#ev187_㑷�������_a=true;
	#ev187_㑷�������_b=true;
	#ev187_㑷�������_c=true;
	#ev187_㑷�������_d=true;
	#ev187_㑷�������_e=true;
	#ev187_㑷�������_f=true;
	#ev187_㑷�������_i=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_㑷�=true;

	$PreGameName = $GameName;
	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_014vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_013vs.nss"


//������������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

	CreateCamera("��", 0, 0, 1000);
	SetAlias("��","��");
	CreateTextureSP("��/�}����", 100, Center, Middle, "cg/bg/bg088_���Bۡ�۩`��_01a.jpg");

	Request("��/*", Smoothing);
	SoundPlay("@mbgm13", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);

	CreateSE("�ߤ�", "se����_����_�z�i��04");
	MusicStart("�ߤ�", 0, 1000, 0, 1000, null,false);

	StR(1100, @0, @0, "cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc04/014vs0010a01">
�����������⸽����
���������桪������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0020a00">
�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����ͣ�������
�����ǣ��ű�ֻ�еذ塣

��������û�����ɳ���ͨ�����µ���ڡ�
����ΧҲ�Ҳ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0030a00">
����������ء���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/014vs0040a01">
�����ڻ����쳣����֮ǰһ����û�б�ı���
��ʽ��
������<RUBY text="ĸ��">���Ǻ�</RUBY>��������ʲô�ء���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0050a00">
��ǿ��ͻ�ƻ��ǻ��Σ�հɡ�
�������Ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������򲻴��ֻ��������Ż���
������ϣ���˷ѵ�·���ܹ����١�

��Ҫ�����˴����ξլۡ����ϸ����ͺ��ˡ�
���������Ѿ����ˡ�
����ô��������ϸѰ��֮�⣬����ʲô�취��
������и���Ч�ķ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿ
	CreateTextureEX("��/�}���}��ʿ", 300, Center, Middle, "cg/st/resize/st�����_��ʿ_ͨ��_�Ʒ�m.png");
	Request("��/�}���}��ʿ", Smoothing);
	Zoom("��/�}���}��ʿ", 0, 500, 500, null, true);

	Move("��/�}���}��ʿ", 0, @-250, @0, null, true);

	Move("��/�}���}��ʿ", 300, @60, @0, Dxl2, false);
	Fade("��/�}���}��ʿ", 300, 1000, null, true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯���B��ʿ�ӡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/014vs0060e189">
����Ŷ!?��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0070a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_���S02", 1000);
	Move("��/�}����", 200, @0, @-60, Dxl2, false);
	MoveCamera("��", 200, @-100, @0, @500, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��һ��ʿ�����Աߵ������г��������������
֮�󾪻ŵ�վס�ˡ�
��һɲ�ǣ���û�п��Ǿ����ж��ˡ�

����������ʿ����������ס��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������Ʋ��ޤ�
	OnSE("se����_�n��_ܞ��03", 1000);

	CreatePlainEX("�}��д", 10000);
	FadeFR2("�}��д",0,500,300,@0,@0,40,Dxl2, true);
	Delete("�}��д");

	FadeDelete("��/�}���}��ʿ", 300, true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯���B��ʿ�ӡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/014vs0080e189">
�������ޡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0090a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������������������ᡣ
����Ŀ���ҡ����ʾ���˿־壬��ʱ�Ҳ�<RUBY text="����">�뵽</RUBY>
�Լ����ж����Թ���������Ŀ�ġ�

���������Լ��򵥵��뷨���Ҹе������ģ���
�һ��ǲ����ѵؼ�����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0100a00">
���Ҵ���ɱ���㡣��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ӡ�

<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/014vs0110e189">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0120a00">
�����ǣ���Ҳ�����ͷ��㡣
������������ҵ�Ҫ���һᰴ�պ���ʵ�С���



{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ӡ�

<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/014vs0130e189">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0140a00">
����լۡ�е������𣿡�


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ӡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/014vs0150e189">
���С����еġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0160a00">
����ôȥ�����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ӡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/014vs0170e189">
�������չ��ǱߵĹսǡ���
���ߵ�ͷ������·����ת���и�¥�ݡ�����



{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0180a00">
����л����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	OnSE("se����_����_�����01", 1000);
	Wait(1500);

//����������
	PrintGO("�ϱ���", 5000);
	Wait(10);

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg088_���Bۡ�۩`��_01a.jpg");

	Delete("��");
	FadeDelete("�ϱ���", 500, true);

	CreateSE("SE01","se����_����_�z�i��04");
	StR(1000, @0, @0, "cg/st/3d�����˜�_����_ͨ��.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStR(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ѹ�������ľ�����ʮ�룬����ʧȥ��ʶ֮����վ��
��
��������·�м���ܱ��ȵ��������Ұ����ŵ���ǽ�ߡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/mc04/014vs0190a01">
����ͽ���ݵò�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0200a00">
������ҡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/014vs0210a01">
���Ǳ߹չ�ȥ֮��ֱ�ߣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0220a00">
��Ȼ����ա�
���߰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á��ߤ����
//��ͻ��������ˣ���·����������
	OnSE("se���L_����_��ͻ�M01", 1000);
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	DeleteStR(0,true);

	OnBG(100, "bg090_���Bۡͨ·d_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����Ǻܿ�ȷ�ϵ�������ʿ��˵�Ĳ�ȫ�ǻѻ���
��
���չ��ս�֮������ȷʵ����ǰ���и�����·�ڡ�

��������
������֮ǰ����һ�����⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	CreatePlainSP("�}��д", 10000);

	StL(1100, @-60, @0,"cg/st/3d����ʽָ�]��_����_ͨ��.png");
	StC(1000, @-80,@0,"cg/st/st����_ͨ��_˽��.png");
	StCR(900, @-120, @0,"cg/st/3d����ʽ�o�T��_����_ͨ��b.png");
	StR(1200, @160, @0,"cg/st/3d�ũ�ʽָ�]��_����_ͨ��.png");
	FadeStA(0,true);

	FadeDelete("�}��д", 300, true);

	Wait(1400);

	CreatePlainSP("�}��д", 10000);
	DeleteStA(0,true);
	FadeDelete("�}��д", 300, true);

//���{�Ӻ�
	StL(1100, @0, @0, "cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0230a06">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0240a00">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0250a00">
����Ȼ�Ҳ��������������㡭����


{//�]�����ơ��Ȥ���Τ� inc�Ѿ�
	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0260a06">
��������Ҫ˵�Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������Ц�������������
���Ǹ����ˡ�������ʨ�Ӻ�

��������������������ʽ�ٻ��ˡ�
��
�������������������ң�����һ�۾��ܿ����ǹ���
�����ꡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mc04/014vs0270e055">
���н����£����ｻ�����ǡ���


{	NwC("cg/fw/nw������.png");}
//������㣯�����¡�
<voice name="����㣯������" class="����������" src="voice/mc04/014vs0280e056">
�������������¡�����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0290a06">
������Ц�ˡ����෴��
�����ǽ�����ô���뿪������ߡ���


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0300a06">
���߰ɡ�
���뿪�����׼��Ӧ���Ѿ������ˡ���


{	NwC("cg/fw/nw������.png");}
//������㣯��������
<voice name="����㣯������" class="����������" src="voice/mc04/014vs0310e055">
�����ǡ�����


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0320a06">
�����������ظ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�z_�}���l��ȥ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������һ���������������ߵ����ﻤ������һ����
��
������������ѹ��֮�£����ǻ�æ��������ܹ���


�����ʱ�䣬��û�ж���
����Ȼ���Ҳ�û��Ҫȥ��ֹ���ǵı�Ҫ�����ң���ʹ��
�У���Ҳ�޷���������������ɱ��������


{	SetVolume("SE01", 3000, 0, null);}
�����˵ĽŲ�����ʧ��������Զ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0330a00">
�����������¡�����
����ô�������������ɰ��ϡ���


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0340a06">
��������������Ǹ�֪������
����������������������Ǹ��׳�<RUBY text="�ԣ��������">��ͽ</RUBY>������



{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0350a00">
����������
����û�����Ա�����Ϊ���ﵽ�������š���



{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0360a06">
������˵����ֻ������֦��Ӷ��Ӷ����
��������Ρ�����Ϊ�һ�Ź����𡣡�


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������Ľ�˧��֮�Աǡ�
�������������ǵĶԻ������н�չ��

��������˵����<RUBY text="��">Ϯ����</RUBY>˵�����޼�ֵ��
��
����ʹ�Ҷ���˵���Ҷ����ɰ��ϲ�����Ȥ��
��Ҳ���������Ұɡ�
����ֻ��һ��ʤ�����𣿡����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0370a06">
����ϧ����ûʱ���²�㡣
���ҾͿ�������׼��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��㑷����F������`�äȡ�
	OnSE("se����_�z_㑷����F01", 1000);

	CreateStencil("�}����",1000,center,middle,128,"cg/st/3d㑷��߹�_����.png",false);
	SetAlias("�}����","�}����");
	Move("�}����", 0, -361, -553, null, true);

	CreatePlainEX("�}����/�}��д", 990);
	SetShade("�}����/�}��д", HEAVY);
	Fade("�}����/�}��д", 1600, 1000, null, true);

	Wait(300);

	CreatePlainSP("�}��д", 5000);
	Delete("�}����");
	CreateTextureSP("�}�߹�", 1000, Center, Middle, "cg/st/3d㑷��߹�_����.png");
	Move("�}�߹�", 0, -361, -553, null, true);

	FadeDelete("�}��д", 1000, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/mc04/014vs0380a01">
������!?
�����С���ʲôʱ�򣡡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0390a00">
�������S����������ʨ�Ӻ��н���
����������Ҵ������ȥ���Ҳ���������ս����



{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0400a06">
������Ϊ����˵���������𣿡��޴���
����������ֵļһ�������˵ػ�ȥ���һ���
ʲô��������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0410a06">
����ǰ��δ�����������ԷŹ��㡣
��û�еڶ����ˡ��������Ŀ���ǵ��»��ǻ�
֦���ˣ��Ҷ���������óѡ���Ҫ������ǰ��
�����ͳ�Ϊʬ��ǰ����Ȫ·�ϰɣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0420a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/014vs0430a01">
������������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0440a00">
��û�취��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����������Ի�Ҳֻ���˷�ʱ�䡣
���ҵ�������̬��׼����Ϊ��������ս����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����㤭�`�󡣒i��
//���i�������Ȫ{�Ӻ𡣌���
	CreatePlainSP("�}��д", 6000);
	CreateWindow("�}��", 5000, 631, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	CreateTextureSP("�}��/�}�ݱ���", 5020, Center, Middle, "cg/bg/bg090_���Bۡͨ·a_01.jpg");
	Move("�}��/�}�ݱ���", 0, @300, @0, null, true);

	CreateTextureSP("�}��/�}�����}װ��", 5100, Center, InBottom, "cg/st/3d�����˜�_����_�i��.png");
	Move("�}��/�}�����}װ��", 0, @600, @0, null, true);
	Fade("�}��/*", 0, 0, null, true);
	Delete("�}��д");

	Move("�}��/�}�ݱ���", 6000, @-100, @0, null, false);
	Move("�}��/�}�����}װ��", 6000, 201, @0, DxlAuto, false);

	OnSE("se�M��_냇��_�i��01", 1000);
	Fade("�}��/*", 0, 1000, null, true);
	DrawTransition("�}��/*", 300, 0, 1000, 10, Dxl2, "cg/data/slide_02_01_1.png", true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0450a00">
������Ϊ�S���н�����Ȼ���Լ���Ϊһ������
����̫��������
����ֻ�ý����Ϊƥ��֮�¡���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0460a00">
���Ҵն����������Լ���ԭ��Ƿ��������
����ֻ������ս����
���ҵĽ�����������ξ����������

{	SetVolume("@mbgm*", 1000, 0, null);}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0470a00">
����Ľ���֮���ǺΣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ�����ˡ�װ�ץݩ`����
	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");

	Fade("�}�ե�", 300, 1000, null, true);

	DeleteStA(0,true);
	Delete("�ʤ֤�");
	Delete("�}��");

	CreateTextureSP("װ��", 5000, @0, @0, "cg/ev/ev954_�{�Ӻ�װ��_a.jpg");
	Fade("�}�ե�", 1000, 0, null, true);

	SoundPlay("@mbgm08", 0, 1000, true);

	SetFwR("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0480a06">
����������Ҫ��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���¡�CG��Ԕ�������ʤ������ɤǤ��ʤ�����һ������ inc�Ѿ�

//�������`�����ߡ�㑷�
	#av_㑷�=true;

//�����L�£ǣ͡��I�T����
	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);
	DeleteStA(0,true);

	CreateTextureSP("װ��", 4000, @0, @0, "cg/ev/ev954_�{�Ӻ�װ��_b.jpg");
	FadeDelete("�}�ե�", 1000,false);

	WaitKey(2000);

	CreateCamera("��", 0, 0, 1000);
	SetAlias("��","��");

	CreateTextureSP("��/�}�ݱ���", 1, Center, Middle, "cg/bg/bg090_���Bۡͨ·d_01.jpg");
	CreateTextureSP("��/�}����", 250, Center, Middle, "cg/st/3d㑷�_����_�i��.png");
	Zoom("��/�}����", 0, 750, 750, null, true);
	Zoom("��/�}�ݱ���", 0, 1500, 1500, null, true);
	SetShade("��/�}�ݱ���", HEAVY);

	Request("��/*", Smoothing);

	MoveCamera("��", 4000, @-200, @0, @0, AxlDxl, false);

	FadeDelete("װ��", 1500, true);

	Wait(2000);

	CreateTextureEX("�}����02", 4000, -778, -60, "cg/ev/resize/ev186_�����֣�㑷�_al.jpg");
	Fade("�}����02", 1000, 1000, null, false);
	Move("�}����02", 3000, @0, -460, DxlAuto, true);

	CreateSE("SE02","se���L_����_������01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(1000);

	CreateTextureEX("�}����00", 4100, -286, -400, "cg/ev/resize/ev186_�����֣�㑷�_al.jpg");
	Fade("�}����00", 1000, 1000, null, false);
	Move("�}����00", 3000, @0, -130, DxlAuto, true);

	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);

	CreateTextureSP("�}����01", 3000, Center, Middle, "cg/ev/ev186_�����֣�㑷�_a.jpg");
	Delete("�}����02");
	FadeDelete("�}����00", 1000, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������ͬʱ�ٵ�������
������ͬʱ���з�����ն���ķ�Χ�ڡ�

������ʨ�Ӻ�ٵ��ϸߡ�
������ٵ��ϵ͵��ң����������Ի�Ƚϲ�����ͬʱն
���ĵ���ʱ��Ҳ�����̡�

�����ʹ�����־ٵ����ƣ�����Ϊ�����������͵�ն��
������
��
����������û�С�

��һƬ�ž���
������ʨ�Ӻ�ֹ�����������ƽԭ�й¶������Ŀ�
ľһ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0490a00">
���һ���Ϊ����ֻ�м�������������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����б�Ҫ����������ֵ����ۡ�
����������ս�����ֳ��������������ɵ��˵�<RUBY text="�֣��������">�ͽ�</RUBY>����
�����������������߱�<RUBY text="�ӣ����䡡�ͣ������">����</RUBY>���ļ���


���Ȳ������ǲ�����������<RUBY text="�ӣ������">����</RUBY>��
���ұ����������ʺϴ˴���ս����
�������ڵ��ϣ�����������խ�����ڡ�

���������Ƿ�������յ�����װ���޷����ӣ��������
Ҳ���Գ�ַ��ӡ����־����£������������ٶȵ�����
�������ر�����
������������£�����ļ����Ż�������

������ڵ����װ��֮�µȴ��ҵ������ּ��������Ҿ�
���ܴ����ж���
����������׵�ն�������⵽������һ������Ѫ������


�������ҽ�Ҫ������ʱ����������𡪡����ǵ��ҽ���
��ܿ�������ʧȥƽ��ʱն�����ء�
��������Σ���һ�غ϶������ʤ����

����Ҳ����Ӧ�ý�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0500a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}����02", 3100, @0, @0, "cg/ev/ev186_�����֣�㑷�_b.jpg");
	Fade("�}����02", 1000, 1000, null, true);
	Delete("�}����01");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������˾��ġ�
��������ǰ�ơ�

���ҽ�ϥ������ֿ����˼����ס�
��
����ǿ�˹��ơ�����־ע�뵶�С�

��ն����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0510a00">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	Wait(800);

	SetFwC("cg/fw/fw㑷�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0520a06">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/014vs0530a00">
��û��Ӧ�𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���з�������
���ҷų��Ĺ���֮����縧����ȥ��

������˵��<RUBY text="����������">��û���ϵ�</RUBY>��
������ղŵ��ｫ��¶�ǵĹ��Ƶ���ʤ������Ҫ���л�
���Ҷ����ҽ��������һ���ȫ����<RUBY text="�ã��������">������</RUBY>
һ��������˵�ս������

�����ߣ�������������ҿ�ʼ����֮�󷴻�����ô�Ҳ�
û��ǰȥ����������Ӧ�û�����������ҡ��



�����ǵ�����ȫû�з�Ӧ��
���������ƺ��ޱ仯��ά�����ȶ��Ľ�����

��<RUBY text="�ƣ����">�յ�֮��</RUBY>��ȫ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0540a00">
�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
������Ĳ��������ǽ�����ʧ�ܣ�����ٿ��ǵ������
�˵�Ӱ�죬�Ҳ��ɵ����������ࡣ
���ղŵ���Ӧ���ǿ����ˡ�����������Ҳ��Ҫʹ�ü���
����ʵ��

�������ø������أ�����Ҳ���������ɡ�
���ѵб�ø������ԶԸ���

�����Ƿ񲻸�ȥ������̽����ֻ�Ǿ����ȴ��Է���ý�
���ء�����
��
����ʹ�����룬�µ����Ҳû�������ˡ�

�����ڲ����ܴ��ʱ��
������Ӧ�û������ж���
�����ǲ���<RUBY text="�ţ�����">����</RUBY>һ���Ứ��ʱ�䡣

������������˲��ԣ�һɲ�Ǿͻ�Ϯ��������
������������ã������£��޷�Ӧ�ԡ�΢С��ʧ��Ӧ��
����������

�����˻�����������
��Ӧ�û�����

���ڸղ������Ĺ���֮�У�������ʤ������ƽ���Լ���
����б����Ӧ�ò�������������ᡣ
����û������ȵ���ƽ�ٴλָ�ƽ�⡪��Ҳ�����ҵ���
�����ٴο�ʼı���Ʋߵ�ʱ��

�����˻�����
�����ǣ�����ʲô��ʽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�}��д", 10000);

//���{�Ӻ�΄��⤬�Ӥ������`�ꡣ
	CreateCamera("��", 0, 0, 1000);
	SetAlias("��","��");

	CreateTextureSP("��/�}����03b", 2, -2000, -760, "cg/ev/resize/ev186_�����֣�㑷�_clm.jpg");
	CreateTextureSP("��/�}����03a", 3, -2000, -760, "cg/ev/resize/ev186_�����֣�㑷�_alm.jpg");

	Fade("��/�}����03a", 6000, 0, null, false);
	MoveCamera("��", 4000, @-200, @0, @0, DxlAuto, false);
	FadeDelete("�}��д", 1000, true);

	Wait(6000);

	CreateTextureSP("�}����03c", 1, @0, @0, "cg/ev/ev186_�����֣�㑷�_c.jpg");
	CreateTextureSP("�}����03d", 1, @0, @0, "cg/ev/ev186_�����֣�㑷�_b.jpg");

	Fade("��/�}����03b", 1000, 0, null, true);

	MoveFFP1stop();
	MoveFFP2stop();

	FadeDelete("�}����03d", 1000, true);
	Delete("��");

	CreateTextureSP("�}����03", 3000, @0, @0, "cg/ev/ev186_�����֣�㑷�_c.jpg");
	Delete("�}����03c");

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0550a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��ʨ�Ӻ�Ľ�΢΢ҡ����
���ҷ����ؽ���ӭ������<k>���ȥ����<k>�ҵ�����
���������ֳ嶯������ǿ��ֹ���Լ���

����������������о�����ɱ�⡣
�������յС����Ҹղ�����һ����

����������չ�ȥ���ͻ��ܵ�ն����
�����ơ������ơ�һ�δε����ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);

	CreateTextureSP("�}��/�}����03b", 10000, -1900, -680, "cg/ev/resize/ev186_�����֣�㑷�_clm.jpg");
	MoveFFP1("@�}��/�}����03b",30000);
	Zoom("�}��/�}����03b", 0, 1500, 1500, null, true);
	Request("�}��/�}����03b", Smoothing);

	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0353]
���Ҽ��ѵط�ֹ���Լ����Ƶı�����
���Ҽ��������ŵ��������Ķ���

��������ֵ��ǣ����ҿ����������յмƲ�֮������
����û��ͣ������
�����ĵ��л�����ǰ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0560a00">
���⡭����<RUBY text="����">����</RUBY>���յУ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}��", 300, 1000, 0, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��������ת����
��<RUBY text="����">ƽ��</RUBY>�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MoveFFP1stop();
	Delete("�}��");

//���{�Ӻ�ѣ�󄇡����Θ��˽���
	CreatePlainSP("�}��д", 10000);

	CreateCamera("��", 0, 0, 1000);
	SetAlias("��","��");

	CreateTextureSP("��/�}����04a", 3, -1530, -300, "cg/ev/resize/ev186_�����֣�㑷�_clm.jpg");
	CreateTextureSP("��/�}����04b", 2, -1530, -300, "cg/ev/resize/ev186_�����֣�㑷�_dlm.jpg");
	MoveFFP1("@��/�}����04b",25000);
	MoveFFP2("@��/�}����04a",20000);

	MoveCamera("��", 6000, @0, @200, @0, DxlAuto, false);

	Delete("�}����*");
	FadeDelete("�}��д", 1000, true);

	FadeDelete("��/�}����04a", 6000, true);

	CreateTextureSP("�}����04", 1, @0, @0, "cg/ev/ev186_�����֣�㑷�_d.jpg");
	FadeDelete("��/�}����04b", 1000, true);
	Delete("�}����03");
	Delete("��");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0570a00">
���ء����أ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MoveFFP1stop();
	MoveFFP2stop();

	CreatePlainEX("�}��д", 4990);
	SetShade("�}��д", HEAVY);

	CreateWindow("�}��", 5000, 342, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);

	CreateTextureSP("�}��/�}��", 5100, Center, Middle, "cg/ev/ev187_㑷�������_a.jpg");
	Zoom("�}��/�}��", 0, 1100, 1100, null, true);
	Request("�}��/�}��", Smoothing);

	Fade("�}��д", 2000, 1000, Dxl3, false);
	Zoom("�}��", 2000, 1000, 1000, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
��һ˲�䣬�Ҷ�Ա���Լ�ȫ������־���ű�����ҡ��
������

��ʨ�Ӻ��������£��ǽ������̫����ǰ���¡�������
���ѡ�
����������ָ��Է���Ҳ����ָ�����ҡ�

������̫���ĵ��������⣬�����ҵ��۾����γ���
<RUBY text="��������">һ��ֱ��</RUBY>��
��
����������ʵ�����Ҵ�����ʲô�ء�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}��", 2000, 3400, 3400, Dxl2, true);

//���쥤���ؤͣ�ef017
//���ţֲ�֣��ܤ䤱
	CreatePlainSP("�}��д", 20000);

	Wait(10);

	Delete("�}��");
	Delete("�}����*");

	CreateTextureSP("�}����04", 3300, Center, Middle, "cg/ev/ev187_㑷�������_a.jpg");
	Zoom("�}����04", 0, 1100, 1100, null, true);

	CreateTextureSP("�}����05", 3400, Center, Middle, "cg/ev/ev187_㑷�������_b.jpg");
	Zoom("�}����05", 0, 1100, 1100, null, true);

	CreateTextureEX("�}����05EX", 10010, @-750, @-500, "cg/ef/ef017_��������܉��.jpg");
	Fade("�}����05EX", 0, 300, null, false);

	CreateTextureEX("�}����06", 3500, Center, Middle, "cg/ev/ev187_㑷�������_c.jpg");
	Zoom("�}����06", 0, 1100, 1100, null, true);

	Request("�}����0*", Smoothing);

	MoveFFP1("@�}����04",25000);
	MoveFFP2("@�}����05",25000);
	MoveFRP1("@�}����06",25000,30,30);

	FadeDelete("�}��д", 1000, false);

	Wait(1000);

//���쥤���ؤͣ�ef017
//���ţֲ�֣�Ӱ
	Fade("�}����06", 1000, 1000, null, true);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0580a00">
���ء�������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	RandomMeimetsu_mc04_014vs();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
���Ҹе�Ŀѣ��
����������ֶ�������ü���������

���Ҹе�����ȫ���綼��ʧ�ˣ�ֻʣ������ָ���ҵĵ�
��һ�㡣

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0590a00">
���ɶ�

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
������ʨ�Ӻ𡪡�ʹ��������!?

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����_���
//��Ӱ���
//��������ݳ����ޥ���ǥ�`�פ����Ƥ�Τǥ��åȡ��������Ȥ������}����
	FadeDelete("�}����05EX", 1200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
����������Ѱ졣
������<RUBY text="����">���</RUBY>��ʧȥ�侲���Ƕ���ı��ܡ�

�������������ֵ�����ʱ�򡪡���Ϊ����ȫ����񾭶�
������У�����ѹ�ȸ��޷����ӡ�
��
���Ҹе�������ͷͻȻ��ø���촽��ͣ�ز�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ䤱���
//��������ݳ����ޥ���ǥ�`�פ����Ƥ�Τǥ��åȡ��������Ȥ������}����
	Wait(1400);

	SetFwL("cg/fw/fw㑷�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0600a06">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
���з������˫�ۣ��������ҵĶ�����
�������ڵȴ������ȴ��ҵ����һ���

��������������������ȥ���°�����������
������˵�����Ա������ؽ����ء�
��
�������ķ����Ҷ�û��ʤ����

��������ҵľ�����������������״̬��ά��ƽ���ģ�
��Ӧ��û�����⣬���ǡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����_���
//���ܤ䤱���
//��露��
//��������ݳ����ޥ���ǥ�`�פ����Ƥ�Τǥ��åȡ��������Ȥ������}����

	Wait(1600);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/mc04/014vs0610a00">
�������ء�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
���Ҳ��ɱ����ע�������
���ҵĸо�������һ�㡣

������һ�ж���ʧ�ˡ�
���ҿ��������˵���Ӱ��

���������У�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ䤱���
	CreateTextureEX("�}�݉�", 9100, Center, Middle, "cg/ev/ev187_㑷�������_b.jpg");
	Zoom("�}�݉�", 0, 1100, 1100, null, true);
	MoveFRP2("@�}�݉�",25000,30,30);
	Request("�}�݉�", Smoothing);

	Fade("�}�݉�", 1800, 1000, null, true);

	CreateTextureSP("�}����04", 3300, Center, Middle, "cg/ev/ev187_㑷�������_d.jpg");
	Zoom("�}����04", 0, 1100, 1100, null, true);

	CreateTextureSP("�}����05", 3400, Center, Middle, "cg/ev/ev187_㑷�������_e.jpg");
	Zoom("�}����05", 0, 1100, 1100, null, true);

	CreateTextureEX("�}����06", 3500, Center, Middle, "cg/ev/ev187_㑷�������_f.jpg");
	Zoom("�}����06", 0, 1100, 1100, null, true);

	Request("�}����0*", Smoothing);

	MoveFFP1("@�}����04",25000);
	MoveFFP2("@�}����05",25000);
	MoveFRP1("@�}����06",25000,30,30);

	SetFwL("cg/fw/fw㑷�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/014vs0620a06">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ䤱��֣⣺�{�Ӻ�����֤�̫�������x���
//���ӣţ����㥭���|������ڤ��Ф���
//�������Σ��ݳ��ϡ��Υƥ����������ĤĤˤ���������
	Fade("�}�݉�", 2000, 0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
�����޷�ά���Լ����ĵ��侲��
����֪���Լ�����б�ڱ�����

���һ��ܹ���ֶ���ء�
��ʮ�롭�����Ǽ����ء�
�����Լ������Ӷ��ܵ�����ն��֮ǰ��

{	CreateSE("SE01","se���L_����_������03");
	MusicStart("SE01",0,500,0,1000,null,false);}
����������������������

��Ҫһֱ�ȵ������
��Ҫƴ��ǰȥ������
������Ѱ�ҳ��˵ĵ�·�ء�

���Ƿ񡪡�<k>�������������ء�������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��露�֣⣺���Ȥ��Ȥ�
	CreateTextureEX("�}����08EX", 9120, @0, @0, "cg/ev/ev187_㑷�������_i.jpg");
	Zoom("�}����08EX", 0, 1100, 1100, null, true);
	Request("�}����08EX", Smoothing);
	Fade("�}����08EX", 2000, 1000, null, true);

	MoveFFP1stop();
	MoveFFP2stop();
	MoveFRP1stop();
	MoveFRP2stop();
	MoveFRP3stop();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
������!?

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x�k����ģ����ģ��Ӥ��

}

..//������ָ��
//����ġ�"mc04_014vsa.nss"
//�����ġ�"mc04_014vsb.nss"
//���Ӥ�롡"mc04_014vsc.nss"

//���x�k֫���`��
scene mc04_014vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("�}����09EX", 4101, @0, @0, "cg/ev/ev187_㑷�������_i.jpg");
	Request("�}����09EX", Smoothing);
	Zoom("�}����09EX", 0, 1100, 1100, null, true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice03("����","�ȴ�","����");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA03();
//����ġ�"mc04_014vsa.nss"
				$GameName = "mc04_014vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//�����ġ�"mc04_014vsb.nss"
				$GameName = "mc04_014vsb.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//���Ӥ�롡"mc04_014vsc.nss"
				$GameName = "mc04_014vsc.nss";
		}
	}
}

.//�ץ�����======================================================

..����������
function RandomMeimetsu_mc04_014vs()
{
	CreateProcess("�Х���������", 5000, 0, 0, "RandomMeimetsuSet_mc04_014vs");
	SetAlias("�Х���������","�Х���������");
	Request("�Х���������", Start);
}

function RandomMeimetsuSet_mc04_014vs()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@�}����06", $RFTS, 0, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 1000);
	Fade("@�}����05", $RFTS2, 0, null, true);

	$RWaitSet2 = Random(10) + 10;
	$RWS2 = ($RWaitSet2 * 10) +600;

	Wait($RWS2);


	$RFadeTimeSet3 = Random(3) + 1;
	$RFTS3 = ($RFadeTimeSet3 * 1000);
	Fade("@�}����05", $RFTS3, 1000, null, true);

	$RWaitSet3 = Random(10) + 10;
	$RWS3 = ($RWaitSet3 * 10) +600;

	Wait($RWS3);

	$RFadeTimeSet4 = Random(3) + 2;
	$RFTS4 = ($RFadeTimeSet4 * 1000);
	Fade("@�}����06", $RFTS4, 1000, null, true);

	$RWaitSet4 = Random(10) + 10;
	$RWS4 = ($RWaitSet4 * 10) +1000;

	Wait($RWS4);

	}

}