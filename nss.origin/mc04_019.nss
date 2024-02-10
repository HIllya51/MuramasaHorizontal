//<continuation number="410">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_019.nss_MAIN
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
	#bg089_���Bۡ�F�ˤ��g_02=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_020.nss";

}

scene mc04_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_018.nss"

//���¤��g
//���Ť�������
	PrintBG("�ϱ���", 30000);
	CreateSE("SE�����", "se����_����_�Ż�");
	MusicStart("SE�����", 0, 1000, 0, 1000, null,true);

	SoundPlay("@mbgm08",0,1000,true);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����20", 100, Center, Middle, "cg/bg/bg089_���Bۡ�F�ˤ��g_02.jpg");

	CreatePlainEX("�}��д", 110);
	Fade("�}��д", 0, 500, null, true);
	MoveFRP1("@�}��д",1000,1,10);
	DrawEffect("�}��д", 0, "HighWave", 20, 20, null);

	CreateColorEX("�}���\��", 900, "#000000");
	Fade("�}���\��", 0, 800, null, true);
	DrawTransition("�}���\��", 0, 0, 200, 1000, null, "cg/data/circle_13_00_1.png", true);

	CreateTextureSPmul("�}�����τ���", 1000, Center, Middle, "cg/data/effect_01_00_0.png");
	CreateProcess("�ץ�����", 150, 0, 0, "fire01");
	CreateProcess("�ץ�����", 150, 0, 0, "fire02");
	CreateProcess("�ץ�����", 150, 0, 0, "fire03");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	CreateTextureEXadd("����`", 1050, -190, 0, "cg/ef/ef046_��a.jpg");
	Zoom("����`", 0, 1100, 1100, null, true);
	Fade("����`", 0, 800, null, false);

	CreateTextureEXadd("��ǰ���`", 5000, -480, 50, "cg/ef/resize/ef028_���û��׷���l.jpg");
	Zoom("��ǰ���`", 0, 1100, 1100, null, true);
	Fade("��ǰ���`", 0, 300, null, false);
	DrawTransition("��ǰ���`", 0, 0, 180, 1000, null, "cg/data/circle_13_00_0.png", true);
	DrawEffect("��ǰ���`", 0, "HighWave", 20, 20, null);


	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 150, 100, "slide_01_01_1", true);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯���B��ʿ�ԡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190010e190">
�������!!
���ӡ��ӵ��¡�����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ա�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190020e191">
��������֦����������!?��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�֡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190030e192">
��������Ҫ���������յ��ɡ�����


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У�ġ�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/0190040e170">
�������ˣ��޷����
������!!��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ס�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190050e193">
���н�����������!?��


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У�á�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/0190060e169">
����Χ������Ӿ�������ô�ˣ�
��Ϊʲô������Ԯ����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ء�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190070e194">
������������췣�𡭡���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�֡�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190080e192">
���ҡ��Ҳ�Ҫ����
���ҿɲ�����������Ҫ����!!��


{	NwC("cg/fw/nw���B܊��У��.png");}
//������㣯���B��У�á�
<voice name="����㣯���B��У��" class="����������" src="voice/mc04/0190090e169">
��ι���ȵȣ���������ְ�أ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ԡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190100e190">
���𡢻��չ����ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿ�Ȼ�֦
	SetVolume("SE�����", 2000, 500, null);

	StL(1100,@0,@20,"cg/st/st��֦_ͨ��_˽��.png");
	FadeStL(300,true);


	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯���B��ʿ�ǡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190110e177">
���ס������졭��
������ô�졭����


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ȡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190120e178">
���ɡ����Գ����𣿡�


{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0190130b18">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��󡣥ɥ��_��
//���{�Ӻ�ؓ��
	OnSE("se�ճ�_����_���_��02", 1000);
	StR(1100,@0,@30,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStR(300,false);

	SetNwC("cg/fw/nw���B܊��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯���B��ʿ�ȡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190140e178">
����������!!��


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ǡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190150e177">
���ǡ�������!?��


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190160a06">
�����ùܡ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ǡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190170e177">
���ɡ������ǡ�
��������Ͽ����ƣ���


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190180a06">
�����ùܡ���


{	FwC("cg/fw/fw��֦_ƣ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0190190b18">
������������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190200a06">
����֦���ˡ�����


{	FwC("cg/fw/fw��֦_΢Ц.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0190210b18">
������ĩ�ա�
��ʨ�Ӻ𡣡�


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190220a06">
����������������


{	FwC("cg/fw/fw��֦_ʧ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0190230b18">
����ƴ��֧�ŵĴ�����壬���쵽��ĩ�ա�
��<RUBY text="����">һ��</RUBY>�������ˡ���


{	FwC("cg/fw/fw��֦_Ұ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0190240b18">
�������ҿ��Ը������ˡ�
����������ʨ�Ӻ�������塢���ġ�
���ס�ƴ����<?>
{Wait(1000);}
ȫ��û���á���

//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0190250b18">
����ֻ����Ϊһ�������ߣ�һ��ѹ���ߣ�һ��
Űɱ�߶�����ʷ�ᡣ��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190260a06">
��������������������


{	FwC("cg/fw/fw��֦_�R��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0190270b18">
�����������ϣ������������������
�Ҿ�������ɱ���㡣��
������˵����Ҫɱ���ң���


{	FwC("cg/fw/fw��֦_Ұ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0190280b18">
����������������������Ը�ɡ���


{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190290a06">
��������Ȼ������
������һ������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190300a06">
����֦���˵Ĵȱ�������������˵�Ǽ������
������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��֦_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0190310b18">
��������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190320a06">
����û�н�����
��<RUBY text="������">��û��</RUBY>������


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190330a06">
�����ϵ����������𣿡�


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ȡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190340e178">
���������ǣ�
�����ϵ���֮ǰȷʵ�뿪�ˡ������������ͨ
֪���ˡ���


{	NwC("cg/fw/nw���B܊��ʿ��.png");}
//������㣯���B��ʿ�ȡ�
<voice name="����㣯���B��ʿ��" class="����������" src="voice/mc04/0190350e178">
����������ѵ�׼��Ҳ�����ˡ�
�����ͻ����Ѿ����ݺ�׼�����ˡ���


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190360a06">
����������
���Ǿͺá���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190370a06">
����֦���ˣ����������š�
����Ȼ���������ѹ����������Ʋ�ͬȥ����



{	FwC("cg/fw/fw��֦_ͨ��.png");}
//����֦��
<voice name="��֦" class="��֦" src="voice/mc04/0190380b18">
������ʨ�Ӻ𡣡�


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190390a06">
���ⲻ�ǽ�����
�����񡪡���͵�δ������������ᡣ��



{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/0190400a06">
��ֻҪ����ʨ�Ӻ���!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`��ܞ�Q����������
	SetVolume("SE*", 2000, 1, null);
	SetVolume("@mbgm*", 2000, 0, null);
	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 1500, 1000, null, true);

	WaitPlay("@mbgm*", null);

	Wait(1500);

//���Ф��`�󡣥ɥ��_���ӣ�
//���¤��g
//������֦�������`�ä�
	DeleteStA(0, false);

	SetVolume("SE*", 2000, 500, null);
	CreateSE("SE03","se�ճ�_����_���_��02");
	MusicStart("SE03",0,1000,0,1000,null,false);

	DrawDelete("�}ɫ�\", 300, 100, "slide_06_00_0", true);

	CreateTextureEX("�}�ݿ����}����", 1200, @700,InBottom, "cg/st/st����֦_���_˽��b.png");
	CreateSE("SE02","se����_����_���饤�ǥ���");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("�}�ݿ����}����", 300, @-100, @0, Dxl2, false);
	Fade("�}�ݿ����}����",300,1000,null,true);

	OnSE("se���L_�|��_������01", 1000);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0190410a03">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc04_020.nss"