//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_058.nss_MAIN
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
	#bg002_��a_02=true;
	#ev235_�Ȥ�����׏�_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_059.nss";

}

scene md04_058.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_057.nss"


//����
//���y�Ǻ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");


	OnBG(101, "bg002_��a_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm01", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(500);

	StC(1000, @0, @0, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStC(500, true);

	Wait(500);

	SetFwR("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md04/0580010a14">
������������

{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md04/0580020a15">
�������ְ���
��ͬ��������𡭡�����ʷ�Ͻ�ʣһ�������ˡ���

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0580030a14">
������������

{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md04/0580040a15">
��������
����ô�ˣ��Ӹոտ�ʼһֱ�����Ϸ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԩ`�����`����

	OnSE("se����_���å��ԥå�_����`��", 1000);



//	DeleteStC(150,true);
	StC(1000, @0, @0, "cg/st/3d�y�Ǻ�_����_ͨ��b.png");
	FadeStC(300, true);

	SetFwR("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������������
<voice name="��������" class="��������" src="voice/md04/0580050a15">
���������ж������Ҵܡ�
�����Ǹ����겻���𣿡�

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0580060a14">
������������

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0580070a14">
�������ۼ�!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ˤ�˥ե�ѥ�`


	OnSE("se���L_����_��ͻ�M01", 1000);
	DrawDelete("@StC*", 150, 100, "slide_02_01_0", false);

	WaitKey(300);

	CreateColorSP("�}�\", 1, "#CC0000");
	CreateColorSP("�}�\", 8500, "#000000");
	DrawTransition("�}�\", 200, 0, 1000, 500, null, "cg/data/beam_04_00_1.png", true);
	CreateTextureSP("�y��GO", 1000, -328, 0, "cg/ef/resize/ef019_�y�Ǻ�ͻ؞02tll.jpg");
	Request("�y��GO", Smoothing);
	SetBlur("�y��GO", true, 3, 500, 50, false);
	Zoom("�y��GO", 0, 2000, 2000, null, true);
	DrawDelete("�}�\", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("�y��GO", 600, @0, -1980, DxlAuto, false);
	Zoom("�y��GO", 600, 1000, 1000, null, false);
	Wait(600);
	CreateSE("SE04","se���L_����_���ϕN01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("�y��GO", 8000, @0, -780, DxlAuto, false);

	SetFwC("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������������
<voice name="��������" class="��������" src="voice/md04/0580080a15">
����������!?�����ڸ�ʲô����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0580090a14">
����ս��������
����Ȼ��֪��ʲô����

//���⡿
<voice name="��" class="��" src="voice/md04/0580100a14">
����Ȼ��֪��ʲô����

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0580110a14">
���������в���֮�￿����!!��

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md04/0580120a15">
��ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������׏���Ͷ��


	CreateColorSP("�}�\", 8500, "#000000");
	DrawTransition("�}�\", 200, 0, 1000, 500, null, "cg/data/circle_02_00_0.png", true);

	CreateTextureSP("tanzo", 1200, 0, 0, "cg/ev/ev235_�Ȥ�����׏�_a.jpg");
	SetBlur("tanzo", true, 3, 500, 50, false);
	Zoom("tanzo", 0, 2000, 2000, null, true);

	DrawDelete("�}�\", 200, 500, "circle_02_00_1", false);
	Wait(100);
	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Zoom("tanzo", 1000, 1000, 1000, null, false);
	Wait(1000);
	CreateSE("SE04","se���L_����_���ϕN01");
	MusicStart("SE04",0,1000,0,750,null,false);

	Wait(500);

	SetFwR("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������������
<voice name="��������" class="��������" src="voice/md04/0580130a15">
������������

//������������
<voice name="��������" class="��������" src="voice/md04/0580140a15">
��ʲ��ʲô����<RUBY text="����">�Ǹ�</RUBY>!?��

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0580150a14">
�����룡
������Ҳ�����׵ģ���

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/0580160a14">
�������������ס!!��

{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md04/0580170a15">
����������!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|�I��ա��k��

	CreateColorSP("�\Ļ", 25000, "BLACK");
	DrawTransition("�\Ļ", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�y��GO");
	Delete("tanzo");

	CreateSE("SE01","se���L_�y�Ǻ�_�|�I���ħ����_�k��");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("ħ����", 1200, 0, 0, "cg/ef/ef037_�|�I���ħ����a.jpg");

	CreatePlainEX("�}��д", 1200);
	Fade("�}��д", 0, 800, null, true);
	SetBlur("�}��д", true, 3, 500, 50, false);
	Zoom("�}��д", 0, 2000, 2000, null, true);

	DrawTransition("�\Ļ", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("�\Ļ");



	Zoom("�}��д", 600, 1000, 1000, Dxl2, true);

	Shake("�}��д", 150000, 1, 1, 0, 0, 1000, DxlAuto, false);



	SetFwC("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���⡿
<voice name="��" class="��" src="voice/md04/0580180a14">
��<RUBY text="Black Hole">�������</RUBY>����<RUBY text="Fairies">ħ����</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//����
	Rotate("�}��д", 3000, @0, @0, @360, Axl1, false);
	Zoom("�}��д", 3000, 4000, 4000, Axl1, false);

	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("SE*", 1500, 0, null);

	ClearFadeAll(1500,true);


}

..//������ָ��
//�Υե����롡"md04_059.nss"