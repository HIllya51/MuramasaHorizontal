//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_025vs.nss_MAIN
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
	#bg001_��c_03=true;
	#bg001_��a_03=true;
	#ev917_���ږV���Ƅ�=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_026vs.nss";

}

scene md03_025vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md03_024vs.nss"


//��ϥ��֣�����

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("bg", 1000, Center, @200, "cg/bg/bg001_��c_03.jpg");
	Request("bg", Smoothing);
	Zoom("bg", 0, 2000, 2000, null, true);
	Fade("bg", 0, 1000, null, true);



//	Move("bg", 0, @0, @200, null, false);
//	Zoom("bg", 0, 2000, 2000, null, false);


	CreateColorSP("�\Ļ��", 20000, "BLACK");
	Delete("�ϱ���");
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);

//	CreateTextureSP("�}�ӣԣ�100", 1500, Center, @400, "cg/st/3d����_�Tͻ_���L.png");
//	Zoom("�}�ӣԣ�100", 0, 20, 20, null, false);
//	Move("�}�ӣԣ�100", 1500, @0, @-1200, Dxl3, false);

	Move("bg", 1000, @0, @-10, Axl1, false);
	Zoom("bg", 1000, 1900, 1900, Axl1, false);
	WaitKey(900);
	SoundPlay("@mbgm13", 0, 1000, true);
	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("�}�ӣԣ�100", 1500, Center, @-400, "cg/st/3d����_�Tͻ_���L.png");
	Request("�}�ӣԣ�100", Smoothing);
	Zoom("�}�ӣԣ�100", 0, 100, 100, null, false);
	SetBlur("�}�ӣԣ�100", true, 2, 500, 50, false);
	Move("bg", 500, @0, 0, Dxl1, false);
	Zoom("bg", 500, 1000, 1000, Dxl1, false);
	Zoom("�}�ӣԣ�100", 500, 3000, 3000, Dxl1, false);
	Fade("�}�ӣԣ�100", 450, 1000, null, true);
	Delete("�\Ļ��");
	FadeDelete("�}�ӣԣ�100",250,false);

	SetFwL("cg/fw/fwһ��_����b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/025vs0010a02">
�������������С�������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������͹�


	WaitKey(500);

	CreateSE("SE001","se���L_����_��ͻ�M01");
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("bg", 1000, Center, Middle, "cg/bg/bg001_��a_03.jpg");

	CreateTextureSP("�}�ݿ����}", 1000, -2713, -465, "cg/st/resize/3d����_�T��_���Lal_ex.png");
	MusicStart("SE001",0,1000,0,750,null,false);
	Request("�}�ݿ����}", Smoothing);
	Move("�}�ݱ���", 10000, @-1024, @0, null, false);
	Move("�}�ݿ����}", 300, @600, @-10, DxlAuto, false);
	Shake("�}�ݿ����}", 2160000, 0, 1, 0, 0, 1000, null, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);
	WaitKey(650);


	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SetBlur("�}�ݿ����}", true, 1, 500, 60, true);
	Move("�}�ݿ����}", 200, @5000, @5000, Axl2, false);
	Zoom("�}�ݿ����}", 200, 800, 800, Axl2, true);

	CreateTextureEX("�}EF01", 10000, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	CreateTextureEX("�}EF02", 10000, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureEX("�}EF03", 10000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	CreateTextureEX("�}EF04", 10000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureEX("�}EF05", 10000, Center, Middle, "cg/ef/ef017_��������܉��.jpg");
	CreateTextureEX("�}EF06", 10000, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
//	OnSE("se���L_����_���B��01",1000);

	Fade("�}EF01", 50, 1000, null, true);
	CreateColorSP("�\Ļ��", 9999, "BLACK");




	CreateTextureSP("bg", 1000, Center, Middle, "cg/bg/bg001_��c_03.jpg");
	Request("bg", Smoothing);
	Zoom("bg", 0, 1200, 1200, null, false);
//	Fade("bg", 0, 1000, null, true);


	CreateTextureSP("�}�ݿ����}", 1000, -120, -250, "cg/st/3d����_�T��_���La.png");
	Shake("�}�ݿ����}", 2160000, 0, 1, 0, 0, 1000, null, false);

	OnSE("se���L_����_�z_���04",1000);
	Fade("�}EF02", 100, 1000, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef040_�����nͻ.jpg", true);


	OnSE("se���L_����_��ꪏ���02",1000);
	Fade("�}EF03", 50, 1000, null, false);
	EffectZoomadd(10000, 400, 100, "cg/ef/ef044_��a.jpg", true);


	OnSE("se���L_����_�z_���03",1000);
	Fade("�}EF04", 50, 1000, null, false);
	EffectZoomadd(10000, 300, 100, "cg/ef/ef042_���ô��.jpg", true);

	OnSE("se���L_����_���nͻ01",1000);
	Fade("�}EF05", 50, 1000, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef001_�����Ƅ�.jpg", true);

	OnSE("se���L_����_��ꪏ���01",1000);
	Fade("�}EF06", 50, 1000, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef002_�����Ƅ�.jpg", true);

	OnSE("se���L_����_�z_���04",1000);
	Fade("�}EF0*", 0, 0, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef003_�����Ƅ�.jpg", true);


/*
	Fade("�}EF01", 50, 1000, null, true);
	Fade("�}EF02", 50, 1000, null, true);
	Fade("�}EF03", 50, 1000, null, true);
	Fade("�}EF04", 50, 1000, null, true);
	Fade("�}EF05", 50, 1000, null, true);
	Fade("�}EF06", 50, 1000, null, true);
	Fade("�}EF0*", 0, 0, null, true);
	Fade("�}EF01", 50, 1000, null, true);
	Fade("�}EF02", 50, 1000, null, true);
	Fade("�}EF03", 50, 1000, null, true);
	Fade("�}EF04", 50, 1000, null, true);
	Fade("�}EF05", 50, 1000, null, true);
	Fade("�}EF06", 50, 1000, null, true);
	Fade("�}EF0*", 0, 0, null, true);
	Fade("�}EF01", 50, 1000, null, true);
	Fade("�}EF02", 50, 1000, null, true);
	Fade("�}EF03", 50, 1000, null, true);
	Fade("�}EF04", 50, 1000, null, true);
	Fade("�}EF05", 50, 1000, null, true);
	Fade("�}EF06", 50, 1000, null, true);

*/

	SetVolume("@SE01*", 100, 0, null);
	CreateColorEX("�\Ļ��", 10001, "BLACK");
	Fade("�\Ļ��", 500, 1000, null, true);
	FadeDelete("�}EF0*", 0, false);
	DrawDelete("�\Ļ*", 200, 100, "slide_01_01_1", true);


	SetFwL("cg/fw/fwһ��_��Ц.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/025vs0020a02">
����������
���ų���ȴ�����ֶ���������!?��

{	FwL("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/025vs0030a08">
������������

{	FwL("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/025vs0040a02">
��������Щ�˶����Ǹ����С��ͻ��ð����Ȩ
��ָʹ���ˡ�
���Լ�ʲôҲ�����ɡ���

{	FwL("cg/fw/fwһ��_����b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/025vs0050a02">
�������ģ���ȥ���ɣ�
������!!��

{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/md03/025vs0060b40">
���߻���֮һ����
���ʡ�����ʬ��!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ҩ`�ȥ��`��
//��������`��
	CreateSE("SE01","se���L_����_�V���Ƅ�");
	CreateSE("SE02","se���L_����_���׷���");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("�}�����ݳ���", 10000, Center, Middle, "cg/ev/resize/ev917_���ږV���Ƅ�l.jpg");
	CreateTextureEXadd("�}������", 10000, Center, Middle, "cg/ef/ef028_���û��׷���.jpg");
	CreateTextureEX("�}���ڣ�", 10000, Center, Middle, "cg/ev/ev917_���ږV���Ƅ�.jpg");
	SetBlur("�}�����ݳ���", true, 1, 500, 70, false);
//	SetBlur("�}������", true, 2, 500, 200, false);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Rotate("�}������", 0, @0, @0, @-30, null,true);

	DrawEffect("�}������", 50, "LowWave ", 0, 100, null);

	Delete("�}����������");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Fade("�}������", 200, 1000, null, false);
	Fade("�}�����ݳ���", 200, 1000, null, false);
	Move("�}�����ݳ���", 500, -1024, 0, Dxl2, true);

	Delete("�}����");

	WaitKey(300);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("�}������", 1000, false);
	Zoom("�}�����ݳ���", 800, 500, 500, Axl3, false);
	Move("�}�����ݳ���", 800, -512, -288, Axl3, false);

	Wait(500);

	EffectZoomDXadd(13000, 1000, 100, "#FFFFFF", "cg/ev/ev917_���ږV���Ƅ�.jpg", false);
	Fade("�}���ڣ�", 200, 1000, null, true);
	Delete("�}����������");
	Delete("�}����");



	WaitKey(1000);

	OnSE("se���L_����_ͻ�M01",1000);
	OnSE("se���L_����_�z_���01",1000);
	CreateColorSP("�}�\Ļ", 19000, "WHITE");
	DrawTransition("�}�\Ļ", 300, 0, 1000, 500, null, "cg/data/slide_03_01_1.png", true);

	Delete("�}����*");

	OnSE("se���L_����_ͻ�M01",1000);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 18500, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
//	SetBlur("�}����", true, 3, 300, 30, false);

	Wait(200);

	Zoom("�}����", 4000, 1200, 1200, Dxl2, false);
	DrawTransition("�}�\Ļ", 300, 1000, 0, 500, null, "cg/data/circle_01_00_1.png", false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, true);
	WaitKey(2000);
	Delete("�}�\Ļ");


	SetFwL("cg/fw/fwһ��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/025vs0070a02">
�������ǡ�����

{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/md03/025vs0080b40">
���������ǺǺǡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ϥ�衣������

	CreateTextureEX("�}�ӣԣ�200", 1500, Center, -277, "cg/st/3dϥ��_�Tͻ_���L.png");
	Move("�}�ӣԣ�200", 0, @0, @50, null, true);

$��`�ץ�`�֥ʥå��� = "@�}�ӣԣ�200";
$��`�ץ�`�֥����� = 30000;

	CreateProcess("�ץ���", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ���","�ץ���");

	Request("�ץ���", Start);

	Fade("�}�ӣԣ�200", 250, 1000, null, true);
//	Shake("�}�ӣԣ�200", 2160000, 0, 1, 0, 0, 1000, null, false);

	CreateColorSP("�}ɫ100", 1500, "BLACK");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);


	FadeDelete("�}��*", 3000, false);
	DrawTransition("�}ɫ100", 3000, 1000, 0, 200, null, "cg/data/effect_01_00_0.png", true);

	SetFwL("cg/fw/fwһ��_����a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/025vs0090a02">
������ʲô!?��

{	FwL("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/md03/025vs0100b40">
����������δ�ˡ���!?��

{	FwL("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/025vs0110a08">
�������ߡ�
����Ȼ������˵�ĵز�����������ĺ�����
������

{	FwL("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/025vs0120a08">
���Ѿ����ˡ���

{	FwL("cg/fw/fwһ��_��ʹ.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/025vs0130a02">
������������

{	FwL("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/025vs0140a08">
����ȥ�ɣ���

{	FwL("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/025vs0150a08">
�����ҡ���������������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������餴�`��

	OnSE("se����_�z_�l����01",1000);
	WaitKey(800);
	OnSE("se���L_����_��ͻ�M02",1000);
//	Move("�}�ӣԣ�200", 200, @5000, @-5000, Axl2, true);

	Zoom("�}�ӣԣ�200", 300, 5000, 5000, Axl3, false);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	SetVolume("SE*", 1000, 0, null);
	Delete("�ץ���");
	CloudZoomDelete(0,true);
	Delete("�}�ӣԣ�200");
	Wait(1000);
//	ClearWaitAll(1500, 1500);


}

..//������ָ��
//�Υե����롡"md03_026vs.nss"