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

scene md04_039.nss_MAIN
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
	#bg033_���ӘS�����h_01=true;
	#ev128_�����ι�_g01=true;
	#ev128_�����ι�_gb01=true;
	#ev128_�����ι�_gb02=true;
	#bg057_���ӘS������_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_040.nss";

}

scene md04_039.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md04_038.nss"


//����β���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(1500);

//���ţ֣������ι⡤ҙ�ѡ�˯��
	CreateTextureEX("��ҙ��", 15100, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");
	Fade("��ҙ��", 1500, 1000, null, true);

	CreateTextureSP("��˯��", 15000, @0, @0, "cg/ev/ev128_�����ι�_gb01.jpg");

	Wait(1500);

	FadeDelete("��ҙ��", 1000, true);

	Wait(1500);

//����
	FadeDelete("��˯��",2000,true);



	OnSE("se����_����_�𤭤�02", 1000);

	Wait(2000);
	StR(1000, @0, @50, "cg/st/st��_ͨ��_˽��.png");
	OnSE("se����_��_���}���Z����01", 1000);

	Wait(1500);

	Move("@StR*", 1000, @0, @-50, Dxl1, false);
	FadeStR(1000, false);


	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md04/0390010a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���⡱վ��������
��������ˣ�ȫ��Ĺ����Ϳ�֨���졣

�����ڴ���֨֨�¸µ�������
���ƺ��м���С��ͷ�۶��ˡ�

���⡱�Ѿ�ϰ���������¡�

���⸱�������ڲ����𻵡�
����������ʵ���Ѿ������ˡ�

���������Ҳû��ֹͣ������

����Ϊ���⡱������δʵ�ֵ����롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_��˼�h.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/md04/0390020a14">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���߳�İ���ķ��䣬̧����ص�˫�����򴰿ڡ�
���⡱ͻȻע�⵽���Ǹ���

����ͷ�ԡ����м�С����һ���Ķ�����
��������Ų���

���ҿ����˿���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���⡿
<voice name="��" class="��" src="voice/md04/0390030a14">
������ʳ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���׷���ζ������������̲ˡ�

��ʮ�����صĲ�ɫ��
����ŷ�������ã��Ѿ����ˡ�

�������������Ǻܺóԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_��˼�h.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���⡿
<voice name="��" class="��" src="voice/md04/0390040a14">
�����Գ��𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���⡱��ԥ�ˡ�
���������˱��˵ķ��ԣ��Ǹо���̫����ˡ�

���Ҳ�˵�о������ֱ��ӵ���ΪҲ�ǲ��Եġ�

����������
���⡱˯���������Ҳ�������һ����˵���ⷹ��
Ӧ����׼����ס�ڷ��е��˳Եġ�


��������������
���ٷ�֮��ʮ�壬��û��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���⡿
<voice name="��" class="��" src="voice/md04/0390050a14">
���š�
�������������<RUBY text="����">�ٷ�֮��</RUBY>�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�᤺����01", 1000);
	Move("@StR*", 300, @0, @50, null, false);
	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���⡱�ó��˽��ۡ�
�������ڷ���ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ѥ��֤�Ϥ碌��

	OnSE("se����_����_�ӥ�01", 1000);


	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���⡿
<voice name="��" class="��" src="voice/md04/0390060a14">
���ҿ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������պ��պζ�������ѷ�������С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnSE("se�ճ�_ʳ��_����ʂ�_L", 1000);
	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���⤰�⤰
//���⡿
<voice name="��" class="��" src="voice/md04/0390070a14">
������������

{	FwC("cg/fw/fw��_��˼�h.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0390080a14">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��������ζ����

���⡱����Ϥ��
����ζ�������������ķ羰��

�����ĸд�����������ĳ�˵�����Цò��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���⡿
<voice name="��" class="��" src="voice/md04/0390090a14">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ˡ�
����������ĸ��������


�����˵�ζ����ȫ�����ķ��ƽƽ������������ɫ��
ȴ�Ǿ���������ɵġ�
������ʮ��ϲ������ʱ����Ҫ��������Լ��ԡ�


��������ζ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_�Ȑ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���⡿
<voice name="��" class="��" src="voice/md04/0390100a14">
���������������ҳԵ��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������ء�
����׼�˽�������ʱ�򣬡��⡱��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���⡿
<voice name="��" class="��" src="voice/md04/0390110a14">
������������

//�����Ĥ��Ĥ��Ĥ���
{	OnSE("se�ճ�_ʳ��_����ʂ�_L", 1000);}
//���⡿
<voice name="��" class="��" src="voice/md04/0390120a14">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@OnSE*", 1000, 0, null);
	OnSE("se����_����_��򤹤���", 1000);

	SetFwC("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//�������`
//���⡿
<voice name="��" class="��" src="voice/md04/0390130a14">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�ճ�_��_������ä�", 1000);

	SetFwC("cg/fw/fw��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//�������������ä�
//���⡿
<voice name="��" class="��" src="voice/md04/0390140a14">
���ҳԱ��ˣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡢����
	OnSE("se����_����_�᤺����01", 1000);
	StR(1000, @0, @50, "cg/st/st��_ͨ��_˽��.png");
	Move("@StR*", 100, @0, @-50, null, false);

	FadeStR(100, true);

	WaitKey(300);

	OnSE("se���L_����_ͻ�M02", 1000);
	DeleteStR(100, false);

//���Хө`������


	CreateColorSP("�\Ļ", 25000, "BLACK");
	DrawTransition("�\Ļ", 300, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	DeleteStR(0,true);

	SetVolume("@OnSE*", 1000, 0, null);
	OnSE("se�ճ�_����_���饤���_��02", 1000);
	OnBG(100, "bg057_���ӘS������_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ", 300, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("�\Ļ");
	OnSE("se����_����_һ�i", 1000);
	SetFwC("cg/fw/fw��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���⡿
<voice name="��" class="��" src="voice/md04/0390150a14">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ρ

	OnSE("se����_����_�z�i��04", 1000);
	StR(900, @0, @200, "cg/st/3d����Ů��ρ_ɿ��.png");
	Zoom("@StR*", 0, 0, 3000, null, false);
	Zoom("@StR*", 100, 1000, 1000, null, false);
	FadeStR(300, true);

	Wait(500);

	SetFwC("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//������������
<voice name="��������" class="��������" src="voice/md04/0390160a15">
�������������ر����ء���

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0390170a14">
���ţ�
�������ȫ������<RUBY text="����">��</RUBY>����

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0390180a14">
��������������ǿ�ģ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����պ�����������Ҳ�����¡�
�����⡱ͻȻ�����ˣ�����ս������ζ��

���Ѿ���ʼ�ˡ�
������������������������������

������һ�����ߵļ��䣬Ҫ��������<RUBY text="����">սʿ</RUBY>��ѡ��
Ψһ��<RUBY text="��">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���⡿
<voice name="��" class="��" src="voice/md04/0390190a14">
�����ܳ��ˣ�
�����²��䣬�����ҹ��<RUBY text="����">����</RUBY>����

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0390200a14">
���߰ɣ���������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md04/0390210a15">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��װ�ץ��������

	OnSE("se����_�z_װ��03",1000);
	CreateColorEXadd("�}�ե�", 6500, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);
	DeleteStR(0,true);
	StC(1000, @0, @0,"cg/st/st��_װ��_˽��a.png");
	FadeStC(0,true);
	Fade("�}�ե�", 1000, 0, null, true);

	SetFwR("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���⡿
<voice name="��" class="��" src="voice/md04/0390220a14">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 2000);
	StC(1000, @0, @0,"cg/st/st��_װ��_˽��b.png");
	FadeStC(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwR("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���⡿
<voice name="��" class="��" src="voice/md04/0390230a14">
������֮�������ڴ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ�

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);

	CreateEffect("�}������", 4000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Request("�}������", AddRender);
	Move("�}������", 0, 200, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @0, @0, -23, null,true);
	Fade("�}������", 0, 100, null, true);

//���w��

	DeleteStC(0,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	Zoom("�}����100", 0, 2500, 2500, null, true);
	Rotate("�}����100", 0, @0, @0, 70, null,true);
	Move("�}����100", 0, -2500, -2680, null, true);

	CreateTextureSPadd("�y��GO", 100, -328, 0, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02tll.jpg");
	Request("�y��GO", Smoothing);
//	SetBlur("�y��GO", true, 3, 500, 50, false);
	Zoom("�y��GO", 0, 2000, 2000, null, true);
	DrawDelete("�}�\", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("�y��GO", 600, @0, -1980, DxlAuto, false);
	Zoom("�y��GO", 600, 1000, 1000, null, false);
	Shake("�y��GO", 1000000, 2, 0, 0, 0, 1000, null, false);

	Wait(600);
	CreateSE("SE04","se���L_����_���ϕN01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("�y��GO", 8000, @0, -780, Dxl2, false);
	Move("�}����100", 8000, -1500, 2680, Dxl2, false);


	DrawDelete("�}�ե�", 300, 100, "slide_06_00_0", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����������������

�����죬һ�����������Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearFadeAll(1000,true);

}

..//������ָ��
//�Υե����롡"md04_040.nss"
