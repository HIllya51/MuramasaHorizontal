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

scene md01_035.nss_MAIN
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
	#bg051_�Զ��Ҿ��g_03a=true;
	#bg002_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_036.nss";

}

scene md01_035.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_034vs.nss"

//�����롤�Զ�����
	PrintBG("�ϱ���", 20000);

	EfRecoIn1(18000,0);

	OnBG(100,"bg051_�Զ��Ҿ��g_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStA(0,true);

	Delete("�ϱ���");
	SoundPlay("@mbgm14",2000,1000,true);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw����_����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����ҡ�
<voice name="����" class="����" src="voice/md01/0350010b52">
����Ң����
��ʵ���ϣ�
���Ǹ�Ϊ������ʧ���ų��ֵ����˰ɡ���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0350020a11">
������������

{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md01/0350030b52">
����˵�����塣
��ȻΪ�����ֲ�֪��ϸ������Ů�˶����Լ�����
������һ��Ѿ����Һ����Լ���������
ְ�������𣿡�

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0350040a11">
������������

{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md01/0350050b52">
����֮�����������飬
����Ϊ���ֲ���Ĳ�С�ġ�
��ȫ�����Ǿ�����ȡ����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0350060a11">
���������������ԡ���

{	FwC("cg/fw/fw���L_ŭ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0350070a11">
�����ǣ����Ҵ��ˣ���

{	FwC("cg/fw/fw����_�@��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md01/0350080b52">
�����죡����Ҫ����Ϊ�ǵط����ң�
���µ�����㻹������Ļ����κμ�ֵ�𣿡�

{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md01/0350090b52">
��û�õļһ�!!��

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0350100a11">
������������

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md01/0350110b52">
��������������ߣ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0350120a00">
������������

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md01/0350130b52">
���Ҷ��㲢���κ�Թ�ޡ���������㣬
��Ҳ���Ĳ�����
�����µ����
Ψ�и�̾�ⱻ����ѡ�е������ˡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0350140a00">
������������

{	FwC("cg/fw/fw����_ͨ��.png","Sepia");}
//�����ҡ�
<voice name="����" class="����" src="voice/md01/0350150b52">
�����������˶ϰɡ���

{	FwC("cg/fw/fw����_����.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/md01/0350160b52">
���������õġ�����Ң�ʹն��ҵ���Ե��
���������ȥ�жϰɡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0350170a00">
������������

//��������
<voice name="����" class="����" src="voice/md01/0350180a00">
��������������Ң���ˡ�����

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0350190a11">
������������

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0350200a11">
������ԭ���ҡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

//��������ݳ����������֤���ʤ��Τ���ؤ���
	SetVolume("@mbgm*", 1000, 0, null);
	EfRecoOut1(300);
	Delete("�}����*");
//�����ߣ�ǰ�Α��L���`��˺Ϥ碌���{��
/*
	OnBG(100,"bg002_��a_01.jpg");
	FadeBG(0,true);
*/
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");

	DeleteStA(0,true);


	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md01/0350210a00">
��������Ң���ˡ�����

//��������
<voice name="����" class="����" src="voice/md01/0350220a00">
������ͳ���ˡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0350230a00">
�������⡭���㡭��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��霤˅פޤ��
	CreateSE("SE01","se����_������_��ν~��");
	MusicStart("SE01",0,1000,0,800,null,false);
	SetFrequency("SE01", 10000, 250, Dxl2);

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 10000, 0, 1000, 1000, null, "cg/data/zoom_01_00_0.png", false);

	CreateColorSP("�}ɫ�\��", 50, "#000000");
	CreatePlainSP("�}��д", 4999);
	Delete("@OnBG*");
	Zoom("�}��д", 3000, 1000, 10000, AxlDxl, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������������
���ҵ���ʶ���ںڰ��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}��д", null);

	CreatePlainSP("�}��д��", 10000);
	Wait(1);
	CreateColorSP("�}ɫ�\", 9999, "#000000");
	Zoom("�}��д��", 3000, 0, 1000, AxlDxl, true);
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_036.nss"