//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_025end.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_025end.nss","RotetoLoop1",true);
	Conquest("nss/md05_025end.nss","RotetoLoop2",true);
	Conquest("nss/md05_025end.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md05_025end.nss","AnkokuZoomLoop2",true);
	Conquest("nss/md05_025end.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md05_025end.nss","AnkokuZoomLoopEX",true);
	Conquest("nss/md05_025end.nss","TurboBlur3",true);
	

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
	#����ꇽK�� = true;

	$PreGameName = $GameName;

	$GameName = "md05_026vs.nss";

}

scene md05_025end.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_025.nss"

//������
//��������������줿����
//���������������k

	PrintBG("�ϱ���", 30000);
//	CreateColorSP("�·�", 16000, "BLACK");
	CreateSE("SE", "se����_������_���݅���_L");
	MusicStart("SE", 1000, 1000, 0, 1000, null,true);

//BGM������ޤ������Ȥ�
	SoundPlay("@mbgm10", 0, 1000, true);

//	CreateTextureSP("ħ����", 1000, @0, @0, "cg/ef/ef037_�|�I���ħ����b.jpg");
//	CreateTextureSP("����", 1100, @-200, @-200, "cg/st/3d������K_�T��_ͨ��.png");
//	Zoom("����", 0, 100, 100, null, true);


	CreateTextureEX("�}��������", 3500, Center, Middle, "cg/st/3d������K_�T��_ͨ��5.png");
	Rotate("�}��������", 0, @0, @0, @50, null,true);
	Move("�}��������", 0, @0, @0, null, true);
	CreateTextureEXadd("�}������������", 5500, Center, Middle, "cg/st/3d������K_�T��_ͨ��5.png");
	Rotate("�}������������", 0, @0, @0, @90, null,true);
	Zoom("�}������������", 0, 400, 400, null, false);

	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 1000, 1000, null, true);
//	Shake("�}��������", 1000000, 1, 1, 0, 0, 500, null, false);
//	SetBlur("�}��������", true, 1, 400, 70, false);


$��`�ץ�`�֥ʥå��� = "@�}��������";
$��`�ץ�`�֥����� = 25000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");


	CreateTextureEXsub("�}����������", 3000, Center, Middle, "cg/ef/ef039_�r�g�Ƅ�.jpg");
//	SetVertex("�}����������", 512, 270);
	$�����ʥå��� = @�}����������;

	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");



	CreateTextureSPover("�}����100", 200, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	CreateTextureSPover("�}����200", 200, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	Request("�}����200", Smoothing);
	Zoom("�}����200", 0, 4000, 4000, null, true);
	Fade("�}����200", 0, 700, null, true);
	Request("�}����100", Smoothing);
	Zoom("�}����100", 0, 4000, 4000, null, true);
	Fade("�}����100", 0, 700, null, true);


	CreateTextureEX("�Υ���", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	Request("�Υ���", Smoothing);
	Zoom("�Υ���", 0, 1500, 1500, null, true);
	DrawEffect("�Υ���", 50, "SuperWave", 20, 30, null);
	Fade("�Υ���", 0, 1000, null, true);


	$��`�Ʃ`�ȥʥå����� = @�}����100;
	$��`�Ʃ`���ٶȣ� = 100000;
	$��`�Ʃ`�ȽǶȣ� = @3600;

	$��`�Ʃ`�ȥʥå����� = @�}����200;
	$��`�Ʃ`���ٶȣ� = 100000;
	$��`�Ʃ`�ȽǶȣ� = @3600;

	$���`��ʥå����� = @�}����100;
	$���`��ʥå����� = @�}����200;


	CreateProcess("�ץ�����", 150, 0, 0, "AnkokuZoomLoopEX");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "RotetoLoop1");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur3");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "RotetoLoop2");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);


	Rotate("�}��������", 3000, @0, @0, @40, Dxl1,false);
	Zoom("�}��������", 3000, 400, 400, Dxl1, false);
	Fade("�}��������", 1000, 1000, null, false);

	FadeDelete("�ϱ���", 2000, true);

	WaitKey(1500);

	OnSE("se����_��x_�k��02", 1000);
	Zoom("�}������������", 2000, 500, 500, Axl2, false);
	Fade("�}������������", 1000, 1000, null, false);

//�����ޤäƤ�г�������� inc�Ѿ�
//	CreateProcess("�ץ�����", 12000, 0, 0, "power");
//	Request("�ץ�����",Start);

	Wait(2000);
	CreateColorSPadd("��", 25000, "WHITE");
	DrawTransition("��", 200, 0, 1000, 500, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}������*");

	Wait(16);
	CreatePlainSP("�}��д", 5500);
	Wait(16);


	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("�Υ���");
	Delete("�}����*");
	SetVolume("SE", 2000, 0, null);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg205_�����ݳ���������_01.jpg");

	Wait(1000);

	OnSE("se����_������_���������k", 1000);
	DrawDelete("�}��д", 2000, 500, "effect_01_00_0", false);

	FadeDelete("��", 2000, true);




	SetFwR("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md05/025en0010a14">
������ʲô?!��

{	FwR("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/025en0020a14">
������ħ���ǡ���������?!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������ѳ�

	OnSE("se���L_����_��ͻ�M08", 1000);

	StC(1000, @0, @100, "cg/st/3d������K_����_���Lb.png");
	Zoom("@StC*", 0, 900, 900, null, true);

	FadeStC(300, false);
	Zoom("@StC*", 1000, 1000, 1000, Dxl2, true);

	Wait(500);

	SetFwL("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������������
<voice name="��������" class="��������" src="voice/md05/025en0030a15">
���⿪�Ǹ������ˡ���?!��

//������������
<voice name="��������" class="��������" src="voice/md05/025en0040a15">
�������˵��ǻۡ���������

//������������
<voice name="��������" class="��������" src="voice/md05/025en0050a15">
�����������˲ٿ��ߵ�˼�����𡣡�

//������������
<voice name="��������" class="��������" src="voice/md05/025en0060a15">
���ܵ���˵ز����Ͳٿ��ߴ��һ����
�𡭡�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

//�������ݤ��Ǵ�������äƤ��롣 inc�Ѿ�

	CreateColorSP("�}�\", 8500, "#000000");
	DrawTransition("�}�\", 200, 0, 1000, 500, null, "cg/data/slide_01_02_0.png", true);

	CreateTextureSP("mura", 1200, 400, 200, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	SetBlur("mura", true, 2, 500, 70, false);
	Zoom("mura", 0, 2000, 2000, null, true);

	DrawDelete("�}�\", 200, 500, "slide_01_02_1", false);
	Wait(100);
	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Zoom("mura", 500, 1000, 1000, Dxl2, false);
	Move("mura", 500, @-1000, @-400, Dxl1, true);


	Wait(600);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����һ�׶Σ�����״̬����������ˡ�
���ڶ��׶Σ��ӳ���Ȧ����ʱ���롪�����ˡ�

�������׶Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/md05/025en0070a14">
���쵰�������ܷ�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearFadeAll(300,true);

}

..//������ָ��
//�Υե����롡"md05_026vs.nss"


function RotetoLoop1()
{
	while(1){
	Rotate($��`�Ʃ`�ȥʥå�����, $��`�Ʃ`���ٶȣ�, @0, @0, $��`�Ʃ`�ȽǶȣ�, null,true);
	}
}

function RotetoLoop2()
{
	while(1){
	Rotate($��`�Ʃ`�ȥʥå�����, $��`�Ʃ`���ٶȣ�, @0, @0, $��`�Ʃ`�ȽǶȣ�, null,true);
	}
}


function AnkokuZoomLoop1()
{
	while(1){

	Zoom($���`��ʥå�����, 2000, 2000, 2000, null, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);
	Wait(1000);
	Fade($���`��ʥå�����, 500, 0, null, true);
	Zoom($���`��ʥå�����, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop2()
{
	while(1){

	Zoom($���`��ʥå�����, 2000, 2000, 2000, null, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);
	Wait(1000);
	Fade($���`��ʥå�����, 500, 0, null, true);
	Zoom($���`��ʥå�����, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop1()
{
	while(1){

	Zoom($���`��ʥå�����, 2000, 2000, 2000, null, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);
	Wait(1000);
	Fade($���`��ʥå�����, 500, 0, null, true);
	Zoom($���`��ʥå�����, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoopEX()
{

	Zoom($���`��ʥå�����, 3100, 2000, 2000, Dxl2, false);
	Fade($���`��ʥå�����, 500, 1000, null, true);

	while(1){

	Wait(1000);
	Zoom($���`��ʥå�����, 3100, 2000, 2000, Dxl2, false);
	Fade($���`��ʥå�����, 1000, 1000, null, false);
	Fade($���`��ʥå�����, 1000, 0, null, true);
	Zoom($���`��ʥå�����, 0, 6000, 6000, null, true);

	Wait(1000);
	Zoom($���`��ʥå�����, 3100, 2000, 2000, Dxl2, false);
	Fade($���`��ʥå�����, 1000, 1000, null, false);
	Fade($���`��ʥå�����, 1000, 0, null, true);
	Zoom($���`��ʥå�����, 0, 6000, 6000, null, true);

	}
}


function TurboBlur3()
{

	while(1){

	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 0, 1000, $Warp�ȥ�󥸤ʤ�餫��, Axl2, "cg/data/circle_01_00_1.png", true);
	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 1000, 0, $Warp�ȥ�󥸤ʤ�餫��, Dxl2, "cg/data/circle_01_00_0.png", true);

	}

}
