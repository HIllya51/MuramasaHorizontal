//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_034vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md01_034vs.nss","RotetoLoop1",true);
	Conquest("nss/md01_034vs.nss","RotetoLoop2",true);
	Conquest("nss/md01_034vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md01_034vs.nss","AnkokuZoomLoop2",true);
	Conquest("nss/md01_034vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md01_034vs.nss","AnkokuZoomLoopEX",true);
	Conquest("nss/md01_034vs.nss","TurboBlur3",true);
	

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
	#ev128_�����ι�_a03 = true;
	#ev924_�y�Ǻ��|�I���ħ���� = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_035.nss";

}

scene md01_034vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"md01_033vs.nss"


//���ܥå��������ƥ�������
//�����Фäݤ��ӣŤȤ���
//�����j��ݤ����}
//���^ȥ�������ι�
//���Bĸ������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg001_��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateColorEX("�}ɫ100", 16500, "WHITE");
	CreateColorEX("�}ɫ200", 16500, "WHITE");
	CreateColorEX("�}ɫ300", 16400, "BLACK");
//	Zoom("�}ɫ100", 0, 1000, 4, null, true);
//	Zoom("�}ɫ200", 0, 2, 1000, null, true);

	CreateTextureEX("�}�����^ȥ��", 100, Center, Middle, "cg/ev/ev128_�����ι�_a03.jpg");
	CreateTextureEX("�}�����^ȥ��", 100, Center, Middle, "cg/ev/ev139_�y�򚢺�_a.jpg");
	Zoom("�}�����^ȥ*", 0, 1100, 1100, null, true);

	CreateTextureSPsub("�Υ���", 100, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�Υ���", 0, 2000, 2000, null, true);
	DrawEffect("�Υ���", 50, "SuperWave", 0, 1000, null);

	CreateSE("SE01","se�ճ�_�Cе_�Υ���03");
	MusicStart("SE01",1000,300,0,1000,null,true);

	FadeDelete("�}��ܞ", 1000, true);


	SetVolume("SE01", 0, 1000, null);
	Shake("�}�����^ȥ��", 500, 10, 0, 0, 0, 1000, Dxl1, false);
	Fade("�}�����^ȥ��", 0, 1000, null, true);

	Wait(500);

	SetVolume("SE01", 0, 200, null);
	Fade("�}�����^ȥ��", 0, 0, null, true);

	Wait(500);

	SetVolume("SE01", 0, 1000, null);
	Shake("�}�����^ȥ��", 500, 10, 0, 0, 0, 1000, Dxl1, false);
	Fade("�}�����^ȥ��", 0, 1000, null, true);

	Wait(500);

	SetVolume("SE01", 0, 0, null);
	Fade("�}�����^ȥ��", 0, 0, null, true);

	Fade("�}ɫ300", 0, 1000, null, true);
//	Fade("�}ɫ100", 0, 1000, null, true);
//	Zoom("�}ɫ100", 50, 2, 500, Dxl1, true);
//	Zoom("�}ɫ100", 100, 1000, 0, Dxl1, true);

	Delete("�}����*");
	Delete("�Υ���");

/*
	Fade("�}ɫ300", 0, 1000, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 100, 0, null, false);
	Fade("�}ɫ200", 0, 1000, null, true);
	Fade("�}ɫ200", 500, 0, null, true);
*/




//	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��
//�����o�����ܥ���������
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0010a14">
������Ϊ��������֣���ĸ��ɱ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md01/034vs0020a00">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�Ϸ�", 18000, "WHITE");

//�������������`��
//�������`����
	OnSE("se���L_����_��ͻ�M01",1000);
	Fade("�}�����y", 0, 0, null, true);

	Fade("�}�����y��", 50, 1000, null, false);
	Shake("�}�����y��", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("�Ϸ�", 200, 1000, Axl2, true);


	OnSE("se���L_�Ɖ�_�z03",1000);
	CreateSE("SEͣ��", "se���L_����_������02_L");
	Wait(100);
	Delete("�}ɫ*");
	Delete("�ץ���*");
	Delete("�}����*");

	CreateTextureEX("�}����������`�룱", 3100, 0, @0, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureEX("�}����������`�룲", 3100, 0, @0, "cg/bg/bg204_�����ر���c_01.jpg");
	CreateTextureEX("�}����������`�룳", 3100, 0, @0, "cg/bg/bg204_�����ر���_01.jpg");

	CreateTextureSP("�}��������", 3102, -150, -250, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
	CreateTextureEX("�}����������", 3103, -150, -250, "cg/st/3d�����˜�_�T��_���Lb.png");
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 800, 800, null, true);
	Rotate("�}��������", 0, @0, @0, @180, null,true);
//	SetBlur("�}��������", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@1000,@0,null,false);

	CreateSCR1("@�}����������`�룱","@�}����������`�룲",300,-4000,@0);
	Shake("�}��������*", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("�}��������*", 10000, @100, @0, Dxl1, false);


	MusicStart("SEͣ��",2000,1000,0,1300,null,true);
	FadeDelete("�Ϸ�", 1000, true);

	SoundPlay("@mbgm11",0,1000,true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��Ϊʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md01/034vs0030a00">
���⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������Ϊʲô��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M03");
	CreateSE("SE02","se���L_����_��ͻ�M08");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetVolume("SEͣ��", 1000, 0, null);

	CloudZoomDelete(500,false);
	Fade("�}����������`�룳", 500, 1000, null, false);
	Rotate("�}��������", 500, @0, @0, @180, Axl2,false);
	Move("�}��������*", 500, @100, @-50, Dxl1, false);
	Fade("�}��������", 500, 0, null, false);
	Fade("�}����������", 500, 1000, null, false);
	Move("�}����������`�룳", 1000, -4000, @0, Dxl2, true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("�}����������`�룳", 1000, 0, @0, Axl2, false);
	Move("�}����������", 1000, -4000, @0, Axl2, false);

	Wait(600);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}����*");
	SCR1stop();

	CreateTextureSP("�}�����y", 3001, -700, Middle, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Request("�}�����y", Smoothing);
	Zoom("�}�����y", 0, 150, 150, null, true);
	Move("�}�����y", 0, @100, @20, null, true);
	SetBlur("�}�����y", true, 1, 500, 100, false);
	CreateTextureSP("�}��������", 3500, 50, -250, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 800, 800, null, true);
//	SetBlur("�}��������", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(500,@-400,@0,null,false);

	CreateSE("SEͣ��", "se���L_����_������02_L");

$��`�ץ�`�֥ʥå��� = "@�}��������";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@�}�����y";
$��`�ץ�`�֥����ࣲ = 15000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	MusicStart("SEͣ��",2000,500,0,1000,null,true);

	Fade("�}�����y", 1000, 1000, null, false);
	Fade("�}��������", 1000, 1000, null, false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md01/034vs0040a00">
���� !!��

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0050a14">
���ǡ����Ǻǡ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0060a14">
��û��������
�����ҵ����֣���

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0070a14">
��������
�����
��ӽ������

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0080a14">
�����ң���

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/034vs0090a00">
����!!��

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0100a14">
��������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	CloudZoomDelete(500,false);
	OnSE("se���L_����_��ͻ�M02",1000);
	Zoom("�}��������", 500, 2000, 2000, AxlDxl, false);
	Move("�}��������", 500, @1500, @0, AxlDxl, false);
	Zoom("�}�����y", 500, 500, 500, AxlDxl, false);
	Move("�}�����y", 500, @300, @-50, AxlDxl, true);

	Wait(300);

//���y�Ǻ�
	SetFwR("cg/fw/fw��_�Ȑ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0110a14">
���������������������ˡ�
�������޷����Ƹй������ˡ���

{	FwR("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0120a14">
�������ʶ�°ɡ�����

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0130a14">
��������Ը��
�������ʶ�¹�ļ��ްɡ���

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0140a14">
�������ۼ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ����y�Ǻš����݅���
//���\���ʥ��`����������������

	CreateSE("SE01","se���L_�y�Ǻ�_�|�I���ħ����_�ʂ�");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	CreatePlainEX("�}��д", 5000);
	Request("�}��д", AddRender);

	Fade("�}��д", 100, 1000, null, true);
	Zoom("�}��д", 2000, 1200, 1200, Dxl1, true);
	FadeDelete("�}��д", 2000, false);

	CreateColorSPadd("�\Ļ��", 3000, "#FF00FF");
	DrawTransition("�\Ļ��", 4000, 0, 500, 200, Dxl1, "cg/data/circle_01_00_0.png", false);

	CreateColorSPmul("�\Ļ��", 3000, "BLACK");
	DrawTransition("�\Ļ��", 4000, 0, 500, 200, Dxl1, "cg/data/circle_01_00_0.png", false);

	Wait(3000);
	SetVolume("SE*", 1000, 0, null);


	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md01/034vs0150a01">
����������!?��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/034vs0160a01">
������!!
������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ܹ��ӵ�����

���ҡ���
���ң�Ҫ���Ǽһ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������¡����������ݳ��ǡ�
//���|�I��ա��k��
	CreateSE("SE01","se����_������_���݅���_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	FadeDelete("�}����*", 500, false);
	DrawTransition("�\Ļ��", 500, 500, 1000, 200, Axl1, "cg/data/circle_01_00_0.png", false);
	DrawTransition("�\Ļ��", 500, 500, 1000, 200, Axl1, "cg/data/circle_01_00_0.png", true);
	Delete("�}����*");

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md01/034vs0170a00">
��������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ���ե�����", 2000, "#FF00FF");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	CreateTextureSPover("�}����200", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	Request("�}����200", Smoothing);
	Zoom("�}����200", 0, 2000, 2000, null, true);
	Fade("�}����200", 0, 500, null, true);

	CreateTextureEXsub("�Υ���", 100, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	Zoom("�Υ���", 0, 2000, 2000, null, true);
	DrawEffect("�Υ���", 50, "SuperWave", 50, 60, null);
	Fade("�Υ���", 0, 100, null, true);

	$Warp�ȥ�� = @�}ɫ���ե�����;
	$Warp�ȥ���ٶ� = 3000;
	$Warp�ȥ�󥸤ʤ�餫�� = 500;

	$��`�Ʃ`�ȥʥå����� = @�}����200;
	$��`�Ʃ`���ٶȣ� = 10000;
	$��`�Ʃ`�ȽǶȣ� = @360;


	CreateProcess("�ץ�����", 150, 0, 0, "RotetoLoop1");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur3");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	SetVolume("SE01", 4000, 500, null);

	FadeDelete("�\Ļ*", 2000, true);


	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��ʲô��

����ɫ�ġ������У�

������ʲô��
��������ʲô�ڴ�������!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g����
	Fade("�Υ���", 2000, 300, null, true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��Ť����

����Χ��ʼŤ����

�����类<RUBY text="����">����</RUBY>����Χһ����

�����ǣ�Ť���Ĳ���ֻ��<RUBY text="��">���ӵ�Ų�</RUBY>���ѡ�

�����ռ�Ҳ�ǡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������M��
//������
	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");

	CreateTextureEX("����飱/������01a", 500, @200, @-200, "cg/st/3d�����˜�_�T��_���La.png");
	CreateTextureEX("����飱/������02a", 350, @400, @-0, "cg/st/3d�����˜�_�T��_���Lc.png");
	CreateTextureEX("����飱/������03a", 200, @400, @-300, "cg/st/3d�����˜�_�T��_ͨ��4a.png");
	CreateTextureEX("����飱/������04a", 100, @500, @-200, "cg/st/3d�����˜�_�Tͻ_���L.png");


	Zoom("����飱/������01*", 0, 600, 600, null, false);
	Zoom("����飱/������02*", 0, 500, 500, null, false);
	Zoom("����飱/������03*", 0, 300, 300, null, false);
	Zoom("����飱/������04*", 0, 250, 250, null, false);

	Move("����飱/������01*", 0, 41, -218, null, true);
	Move("����飱/������02*", 0, -268, -45, null, true);
	Move("����飱/������03*", 0, -429, -206, null, true);
	Move("����飱/������04*", 0, -257, -304, null, true);

	Request("����飱/������0*", Smoothing);

	OnSE("se���L_����_��ͻ�M03", 1000);
	OnSE("se���L_����_��ͻ�M06", 1000);


$��`�ץ�`�֥ʥå��� = "@����飱/������01*";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@����飱/������02*";
$��`�ץ�`�֥����ࣲ = 20000;

$��`�ץ�`�֥ʥå����� = "@����飱/������03*";
$��`�ץ�`�֥����ࣳ = 15000;

$��`�ץ�`�֥ʥå����� = "@����飱/������04*";
$��`�ץ�`�֥����ࣴ = 10000;

/*
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving3");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving4");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

*/
	MoveCamera("@����飱", 0, 500, 50, @0, null, true);


	Fade("����飱/������01a", 1000, 1000, null, false);
	Fade("����飱/������02a", 1500, 1000, null, false);
	Fade("����飱/������03a", 2000, 1000, null, false);
	Fade("����飱/������04a", 2500, 1000, null, false);
	MoveCamera("@����飱", 1500, 0, 200, @300, Dxl1, true);


	Fade("�Υ���", 1000, 500, null, true);

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md01/034vs0180a00">
�������������ǡ���!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��<RUBY text="��">����</RUBY>�������ˡ�

�������ġ���
����Ȼ������̬��ͬ��������ȴ��һ����

����һ��<RUBY text="����">ƫ��</RUBY>��

����ʱ���ƫ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MoveCamera("@����飱", 500, -100, 60, @0, AxlDxl, true);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/md01/034vs0190a01">
�����硭���ڱ�Ť����
��������š�����

{	MoveCamera("@����飱", 500, 150, 30, @0, AxlDxl, false);
	FwR("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md01/034vs0200a00">
������������ʲô��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���Ҳ��Ծ��ص���ѯ�ʣ�����ͬ����Ȼ�ػش�

�������������ԡ�
���ղţ��ƺ�˳����ˣ�

���ƺ���<RUBY text="����������������������">�����ش���֮���Ҳ��ʵ�</RUBY>����
�����һش���ƺ���<RUBY text="����">�Ա�</RUBY>�Ĵ�����

���⵽���ǣ�

���ѵ�˵ʱ��Ϳռ����ڱ�������!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	FadeDelete("@�����*", 500, true);
	SetVolume("SE*", 5000, 0, null);

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	CreateTextureEX("�}����200", 100, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	CreateTextureEX("�}����300", 100, Center, Middle, "cg/bg/bg001_��c_03.jpg");
	Fade("�}����100", 500, 300, null, true);
	Fade("�}����200", 500, 300, null, true);
	Fade("�}����300", 500, 400, null, true);
	Fade("�}����100", 500, 1000, null, true);
	Fade("�}����200", 500, 1000, null, true);
	Fade("�}����300", 500, 1000, null, true);


//���y�Ǻ�


	SetFwC("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0210a14">
������������

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0220a14">
��Ҫ�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���ڻ�������ġ�
��ӵ������������֮�������ˡ�

������������������ȵ�<RUBY text="�Ӱ���">����ʹ</RUBY>�� 

�����һ��ʫ�衣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǄI��ˤ��룿
	SetFwC("cg/fw/fw��_�Ȑ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0230a14">
����<RUBY text="����������">�������</RUBY>������
�������������� ������<RUBY text="��������">ħ����</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ħ����
//������`�ө`����Ǥ��뤫��
	CreateColorEXadd("�}ɫ100", 15000, "WHITE");

	CreateSEEX("SE01","se���L_����_���ͥ륮�`�]���Ϥ�01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	MovieSESet(20000,"mvħ����","se���L_�y�Ǻ�_�|�I���ħ����_�k��");
	Fade("�}ɫ100", 200, 1000, null, false);
	MovieSEStart(2000);

	SetVolume("SE01", 3000, 500, null);


	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md01/034vs0240a00">
��Ŷ����Ŷ������������!?��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/034vs0250a01">
������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}����*");

//	CreateEffect("��󥺣�", 10000, -100, -300, 1200, 1200, "Lens");
//	SetAlias("��󥺣�", "��󥺣�");
//	Fade("��󥺣�", 0, 1000, null, true);

	CreateTextureEX("�}��������", 3500, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	Rotate("�}��������", 0, @0, @0, @-50, null,true);
	Move("�}��������", 0, @-100, @20, null, true);

	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 1000, 1000, null, true);
//	Shake("�}��������", 1000000, 1, 1, 0, 0, 500, null, false);
//	SetBlur("�}��������", true, 1, 400, 70, false);


$��`�ץ�`�֥ʥå��� = "@�}��������";
$��`�ץ�`�֥����� = 2500;

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


	Rotate("�}��������", 3000, @0, @0, @50, Dxl1,false);
	Zoom("�}��������", 3000, 400, 400, Dxl1, false);
	Fade("�}��������", 1000, 1000, null, false);

	FadeDelete("�}ɫ100", 2000, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����������������ȥ��!!

�����
�����ɣ���������ﱻץס�����ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md01/034vs0260a00">
���������������ƽ�����
��ȫ������!!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/034vs0270a01">
���ˡ����˽⣡��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤��`��
//���o�j��
	CreateTextureEX("�}����������", 3500, -250, -150, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Rotate("�}����������", 0, @0, @180, @0, null,true);
	Request("�}����������", Smoothing);
	Zoom("�}����������", 0, 400, 400, null, true);
	Shake("�}����������", 1000000, 2, 3, 0, 0, 500, null, false);


$��`�ץ�`�֥ʥå����� = "@�}����������";
$��`�ץ�`�֥����ࣲ = 1500;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);


	EffectZoomadd(2000, 1000, 1000, "cg/ef/ef044_��a.jpg", false);
	OnSE("se���L_����_�z_�ϵ�������01",1000);
	Rotate("�}��������", 500, @0, @0, @180, Axl2,false);
	Fade("�}��������", 500, 0, Axl2, false);
	Fade("�}����������", 500, 1000, null, true);

	EffectZoomadd(2000, 2000, 1000, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("�}����������", 2000, 500, 500, Dxl2, true);

	OnSE("se����_��x_������01",1000);
	Zoom("�}����������", 1000, 400, 400, AxlDxl, true);

	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	Delete("�}��������");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�������޷�����!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/md01/034vs0280a01">
��Ϊʲô!?��

{	FwR("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md01/034vs0290a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����ֺ��޵����ǣ������

��Ҫȥ��⡣

����������ͽ�͡�
�����ֱ��ͽ�͡�

����ʲôҲû�á�

��������ʲô�취��

��<RUBY text="��������">��ͬ�ռ�</RUBY>һ����ǣ���ˡ�
�������ķ������ֿܵ�!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="��������" src="voice/md01/034vs0300a01">
��Ҫ����Ҫ�����ɡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	OnSE("se���L_�y�Ǻ�_�|�I���ħ����_�k��",1000);
	Zoom("�}����������", 2000, 350, 350, AxlDxl, false);

	CreateColorEXadd("�}ɫ���ե�����", 2500, "#FF00FF");

	$Warp�ȥ�� = @�}ɫ���ե�����;
	$Warp�ȥ���ٶ� = 1000;
	$Warp�ȥ�󥸤ʤ�餫�� = 500;
	Fade("�}ɫ���ե�����", 1000, 500, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
������������ȥ�Ĳ���ֻ���ҡ�
�������ϴ󲿷����ﶼ����

��������ɰ������ľ��
������ʲô��������������

  ������ȫ�Ծ������ɡ�
���ڵ�����������֮ǰ����ѹե�ý���ʧȥԭ�Ρ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/md01/034vs0310a01">
�����ǡ���<RUBY text="����������">����֮����</RUBY>������

{	FwR("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md01/034vs0320a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������{��
	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="��������" src="voice/md01/034vs0330a01">
����������!?��

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/034vs0340a00">
��Ҫ���ˡ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/034vs0350a01">
���������������

{	FwR("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/034vs0360a00">
��<RUBY text="����">����</RUBY>����

//��������
<voice name="����" class="����" src="voice/md01/034vs0370a00">
���޷�����Ļ�����ֻ�п��ϣ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/034vs0380a01">
�������˽⣡��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����`�륬��ʂ�

	CreateSE("SE10","se����_늓�_���02");
	MusicStart("SE10",0,1000,0,1000,null,true);

	CreateTextureEX("�}����400", 10000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");
	EffectZoomadd(15000, 1000, 1000, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg", false);
	Fade("�}����400", 500, 1000, null, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����������ǵ�����

��ֻҪ��һ����â��Ҳ���Ϊ�������Ѷ�����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/md01/034vs0390a00">
����Űε�������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Щ`��
//���餷��ɢ���
	CreateColorEXadd("�}ɫ100", 18000, "WHITE");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_e.jpg");
	Request("�}����300", AddRender);
	Zoom("�}����300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se����_늓�_���01");
	CreateSE("SE03","se���L_����_�z��������03");
	CreateSE("SE04","se���L_�Ɖ�_�z03");
	CreateSE("SE05","se���L_�Ɖ�_�z05");

	EffectZoomadd(15000, 1000, 1000, "cg/ev/ev902_����늴Œi����`�륬��_e.jpg", false);
	SetVolume("SE01", 2000, 0, null);
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("�}����300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("�}ɫ100", 1000, 1000, null, true);

	Delete("�}����300");
	Delete("�}����400");

	OnSE("se����_mv��_늴Œi��_��",1000);


	Wait(2500);



	SetVolume("SE*", 3000, 0, null);
	SetVolume("OnSE*", 3000, 0, null);

	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	Delete("�}����������");

	CreateTextureSP("�}��������", 3500, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3a.png");
	Move("�}��������", 0, @-100, @20, null, true);
	Request("�}��������", Smoothing);
	Zoom("�}��������", 0, 300, 300, null, true);

//	SetBlur("�}��������", true, 1, 400, 70, false);

$��`�ץ�`�֥ʥå��� = "@�}��������";
$��`�ץ�`�֥����� = 10000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);

	DrawDelete("�}ɫ100", 2000, 200, "spiral_01_00_0", true);

	Wait(1000);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="��������" src="voice/md01/034vs0400a01">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��<RUBY text="������">������</RUBY>��

�����Ž��ⰵ�������һ�У������������Ǻ�����
�ľ�����ų�������һ����������

������δ�ںڰ���ָ�������Ĺ켣������ʧ�ˡ�

��������������κζ�����
����ɱ֮����ͬ����һ�������ڰ����ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/md01/034vs0410a00">
������ŶŶ������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��������Ҳ��

��������Ҳ�޷�������ڰ���!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ħ���ǡ�ev924
//�����ߣ��F״�Ǥ⤫�ʤ��ؤ��褦�ʤΤ�һö��Ȥ��ޤ���
//	CreateTextureEX("�}���y��", 16010, -680, -440, "cg/ev/resize/ev924_�y�Ǻ��|�I���ħ����l.jpg");
	CreateTextureEX("�}���y", 16000, -680, -440, "cg/ev/resize/ev924_�y�Ǻ��|�I���ħ����l.jpg");
	Request("�}���y*", Smoothing);
	Rotate("�}���y*", 0, @0, @180, @0, null,true);
//	Zoom("�}���y��", 0, 1050, 1050, null, true);
	Fade("�}���y*", 300, 500, null, true);



/*

//��������ݳ�������ХĤ��ؤ��ʤä��ΤǺ��װ�ˤ��Ƥ�����
	CreateTextureEX("�}���y��", 16010, -680, -440, "cg/ev/resize/ev924_�y�Ǻ��|�I���ħ����l.jpg");
	CreateTextureEX("�}���y", 16000, -680, -440, "cg/ev/resize/ev924_�y�Ǻ��|�I���ħ����l.jpg");
	Rotate("�}���y*", 0, @0, @180, @0, null,true);
	Zoom("�}���y��", 0, 1050, 1050, null, true);
	MoveFFP1("@�}���y",20000);
	MoveFFP2("@�}���y��",25000);
	Fade("�}���y*", 300, 500, null, true);
*/

	SetFwR("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0420a14">
����������������
������������

//���⡿
<voice name="��" class="��" src="voice/md01/034vs0430a14">
������ǹ��<RUBY text="����">����</RUBY>����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
�����������޲ߡ�
���������������ģ����Ų�֪�Ӻζ�����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0440a14">
����Ҫ�����������ĸ��ߵ㡣
��ͨ�����Ӹߵĵط�����

{	FwR("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0450a14">
��Ȼ�����<RUBY text="��">��</RUBY>֮����������

{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/034vs0460a00">
�������񡭡���

{	FwR("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0470a14">
������������������
��������߹�<RUBY text="����������">��Ϊ�����</RUBY>�İ�����

{	FwR("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0480a14">
�������౳��ĸ�׶���ȡ���ף�����Υ���˷���
��������ķ�����ķ�����ˡ��
�����������Ҫ�����ˡ�֤������ǿ��������
��Խ�˶��������񡣡�

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0490a14">
����Ϊ�񣬾��ܽ��ҵ�����<RUBY text="������">������</RUBY>��
���������ƻ������ܽ�ű��˷������ĸ��ס�����

{	FwR("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0500a14">
��û���κ��������͸��׾�������棡
�����ܽ���ĸ�����ߵĸ��׶��������

{	FwR("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/034vs0510a14">
������ǹ�İ�֮��!!��

{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/034vs0520a00">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
�����ס�
���⣬<RUBY text="������������">�����ߵĸ���</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);

	Wait(1000);

//	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
//	Fade("�}ɫ��", 300, 1000, null, true);

}

..//������ָ��
//�Υե����롡"md01_035.nss"

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