//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_016vs.nss_MAIN
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

	$GameName = "mc01_017vs.nss";

}

scene mc01_016vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_015vs.nss"

//���Ƅ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg076_�����¾���_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 150, 100, "slide_01_02_1", true);

	SoundPlay("@mbgm13",0,1000,true);

	SetNwC("cg/fw/nw�v������L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�v������L��
<voice name="����㣯�v������L" class="����������" src="voice/mc01/016vs0010e210">
���Ǹ�Ů�ˣ�
�������߾������!?��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/016vs0020a03">
�����ǣ���˵����λ�������Ѿ����Ǳ�ȥ�ˡ�
��������������ֻ�Ǹ���ö��ѡ���


{	NwC("cg/fw/nw�v��꠱�ʿ��.png");}
//������㣯�v��ꠣġ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/016vs0030e205">
���顢�鳤���¡����쿴��Ů�˵ı���
�������ֶ��Ѿ�ȫ����û!!��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/016vs0040a03">
����ѽ�����Ķ��������ء�
������˯����𣿡�


{	NwC("cg/fw/nw�v������L.png");}
//������㣯�v������L��
<voice name="����㣯�v������L" class="����������" src="voice/mc01/016vs0050e210">
��ɱ����!!��


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/016vs0060a03">
���ܲ���������������˵�껰�أ���


{	NwC("cg/fw/nw�v������L.png");}
//������㣯�v������L��
<voice name="����㣯�v������L" class="����������" src="voice/mc01/016vs0070e210">
�����������ڵ�֮��ɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ѥ�Ѥ�Ѥ�
//������֦������`��ɡ�ɫ��ܞ�ե�`��
//��Ԫ�������
	CreateSE("SE01a","se���L_����_�饤�ե�Ĥ�4��");
	CreateSE("SE01b","se���L_����_�饤�ե�Ĥ�4��");
	MFlash(50, 100);
	MusicStart("SE01a",0,1000,0,850,null,false);
	Wait(10);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(10);

	SetVolume("SE*", 100, 0, null);

	Delete("@MF*");

	CreateSE("SE01","se����_������_���������k");
	CreateEffect("�}����", 10000, 0, 0, 1024, 576, "NegaPosi");
	SetAlias("�}����","�}����");
	Fade("�}����", 0, 0, null, true);

	MusicStart("SE01",0,1000,0,2000,null,false);
	Fade("�}����", 200, 1000, Dxl2, false);
	DrawTransition("�}����", 200, 0, 1000, 100, Dxl2, "cg/data/circle_03_00_0.png", true);

	Wait(500);

	FadeDelete("�}����", 600, true);

	SetNwC("cg/fw/nw�v������L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�v������L��
<voice name="����㣯�v������L" class="����������" src="voice/mc01/016vs0080e210">
������!?��


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/016vs0090a03">
����������
�������Ȥζ��Ͷ�أ��鳤���¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ѥ�Ѥ�Ѥ󡣱�ʿȫ�硣
	CreateSE("SE01","se���L_����_�饤�ե�Ĥ�4��");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	Wait(20);
	FadeDelete("�}ɫ��", 600, true);

//������֦
	StR(1000, @60, @0,"cg/st/st����֦_���_˽��a.png");
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,true);

	SetNwC("cg/fw/nw�v������L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�v������L��
<voice name="����㣯�v������L" class="����������" src="voice/mc01/016vs0100e210">
��ʲ����ô!?��


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/016vs0110a03">
����Ҳ��ϲ��˵�ö��������ڵ��ˡ�
�����á���������������


{	NwC("cg/fw/nw�v������L.png");}
//������㣯�v������L��
<voice name="����㣯�v������L" class="����������" src="voice/mc01/016vs0120e210">
���㡢����쵰����
���ܿ��ˡ����ڵ�����!?��


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/016vs0130a03">
���ǺǺǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Щ`��
	CreateSE("SE01","se���L_����_�饤�ե�Ĥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	FadeStA(0,true);
	Wait(20);
	FadeDelete("�}ɫ��", 300, true);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/016vs0140a03">
���á����ˡ�
���ƺ�ֻ����һ�˱�����²�������
�����ᡪ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/016vs0150a03">
�����������þ�ȫ��������Ц��
����Χ����ȫ�������ʬ�壬���������Ӧ�ҡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/016vs0160a03">
��������̫�����ˡ�
����ֱ����ȫ����������һ�㡣��


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/016vs0170a03">
���ǺǺǡ�����������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//������ָ��
//�Υե����롡"mc01_017vs.nss"

}