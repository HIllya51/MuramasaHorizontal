//<continuation number="480">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_049vs.nss_MAIN
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
	#bg001_��a_02=true;
	#bg204_�����ر���_02=true;
	#ev301_�y�Ǻť���å���=true;
	#ev806_�����}����`�����Σ�_a=true;
	#ev806_�����}����`�����Σ�_b=true;
	#ev806_�����}����`�����Σ�_c=true;
	#ev901_�y�Ǻ�����ʧ��С����_a=true;
	#ev901_�y�Ǻ�����ʧ��С����_b=true;
	#ev901_�y�Ǻ�����ʧ��С����_c=true;
	#ev901_�y�Ǻ�����ʧ��С����_d=true;
	#ev228_���y��܊��_a=true;
	#ev228_���y��܊��_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_�˄���=true;

	$PreGameName = $GameName;
	$GameName = "md04_050vs.nss";

}

scene md04_049vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_048vs.nss"


//���Ͽ�

	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm08", 0, 1000, true);
	CreateTextureSP("�}�ݿ����}", 1200, @-800,@0, "cg/st/3d�y�Ǻ�_����_���Lb.png");
	SetBlur("�}�ݿ����}", true, 2, 500, 50, false);
	CreateColorEXadd("�ե�å����", 2500, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Delete("�ϱ���");

	CloudZoomSet(1300);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,null,true);

	OnSE("se���L_����_��ͻ�M07",1000);

	Fade("�ե�å����",200,0,Axl3,false);
	Move("�}�ݿ����}", 1000, @450, @-300, Dxl1, true);


	SetFwC("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0010a14">
����Ұ������ս�񷨡�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ�

	CreateTextureEX("�Ҥ���", 1400, @0, @0, "cg/ef/ef002_�����Ƅ�.jpg");
	Zoom("�Ҥ���", 0, 2500, 2500, null, true);
	Fade("�Ҥ���", 100, 1000, null, false);
	Zoom("�Ҥ���", 150, 1000, 1000, DxlAuto, false);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ݿ����}", 100, @-1450, @-200, Dxl1, false);
	FadeDelete("�}�ݿ����}", 300, false);


	SetFwC("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0020a14">
���޾񣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�T�ĉ�
	OnSE("se���L_����_Ź��05",1000);
	CreateColorEX("�\", 1500, "BLACK");
	Fade("�\",100,1000,null,false);


	CreateTextureSPadd("�}��", 10011, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	DrawTransition("�}��", 100, 0, 1000, 100, null, "cg/data/beam_04_00_0.png", true);
	FadeDelete("�Ҥ���", 0, true);

	CreateTextureSP("�}�ݿ����}��", 1200, @-100,@-400, "cg/st/3d�˰�ʽ�o�T��_�T��_���Lb.png");
	CreateTextureSP("�}�ݿ����}�y", 1200, @-400,@-200, "cg/st/3d�y�Ǻ�_����_���Lb.png");
	SetBlur("�}�ݿ����}�y", true, 2, 500, 50, false);

	Request("�}�ݿ����}��", Smoothing);
	Zoom("�}�ݿ����}��", 0, 800, 800, null, true);


	Shake("�}�ݿ����}��", 1000, 10, 20, 0, 0, 1000, Dxl1, false);
	Fade("�\",100,0,null,false);
//	DrawTransition("�}��", 200, 1000, 0, 100, null, "cg/data/beam_04_00_1.png", false);
	Move("�}�ݿ����}�y", 200, @-100, @-100, Dxl1, true);
	WaitKey(100);
	FadeDelete("�}�ݿ����}�y", 300, false);
	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Move("�}�ݿ����}�y", 100, @-1550, @1500, Dxl1, true);


	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 19000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	FadeDelete("�}�ݿ����}��", 0, true);
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 30, false);

	Zoom("�}����", 200, 1100, 1100, Dxl1, false);
	Shake("�}��", 200, 0, 10, 0, 0, 1000, Dxl3, true);

	FadeDelete("�}��*", 300, true);

	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_04_00_1.png", true);


	CreateTextureSP("�}�ݿ����}��", 1200, @-100,@-400, "cg/st/3d�˰�ʽ�o�T��_�T��_���Lb.png");

	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, true);
	DrawTransition("�}�\Ļ", 150, 1000, 0, 100, null, "cg/data/slide_04_00_0.png", true);

	CreateSE("SE02","se���L_����_��ͻ�M02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("�}�ݿ����}�y", 1200, @400,@-200, "cg/st/3d�y�Ǻ�_����_���Lb.png");
	Move("�}�ݿ����}�y", 300, @-600, @0, Dxl1, false);

	FadeDelete("�}�ݿ����}�y", 300, true);

	OnSE("se���L_����_��ꪏ���02",1000);

	CreateTextureSPadd("����", 10011, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	DrawTransition("���뤭��", 100, 0, 1000, 100, null, "cg/data/slide_01_04_1.png", false);


	CreateTextureEX("�}�ݿ����}�y", 1200, @-400,@0, "cg/st/3d�y�Ǻ�_����_���L.png");
	SetBlur("�}�ݿ����}�y", true, 2, 500, 50, false);


	Fade("�}�ݿ����}�y",100,1000,null,true);
//	FadeDelete("�}�ݿ����}�y", 100, false);
	OnSE("se���L_����_��ͻ�M01", 1000);
//	Wait(180);
	CreateTextureEX("�ߤ�", 1400, @0, @0, "cg/ef/ef001_�����Ƅ�.jpg");
	Zoom("�ߤ�", 0, 2500, 2500, null, true);
	Fade("�ߤ�", 100, 1000, null, false);
	Zoom("�ߤ�", 250, 1000, 1000, DxlAuto, false);
	Move("�}�ݿ����}�y", 100, @1450, @-200, Dxl1, false);
	CreateTextureSPadd("���뤭��", 10011, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	DrawTransition("���뤭��", 100, 0, 1000, 100, null, "cg/data/beam_03_00_0.png", false);
	FadeDelete("�}�ݿ����}�y", 200, false);


	SetFwC("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0030a14">
�����ᣡ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�T�ĉ�
	Shake("�}�ݿ����}��", 1000, 10, 20, 0, 0, 1000, Dxl1, false);
	FadeDelete("�ߤ�", 300, true);

	OnSE("se���L_����_Ź��06",1000);

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);


	CreateTextureSPover("�}����", 19000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	FadeDelete("����*", 0, true);
	FadeDelete("�}�ݿ����}��", 0, true);
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 30, false);

	Zoom("�}����", 300, 1100, 1100, Dxl1, false);
	Shake("�}��", 300, 0, 10, 0, 0, 1000, Dxl3, true);

	FadeDelete("�}��*", 300, true);

	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_04_00_0.png", true);

	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, true);

	CreateTextureEX("�}�ӣԣ�101", 1300, @200, @-300, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
	CreateTextureEX("�}�ӣԣ�102", 1400, @-500, @-300, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���L2.png");
	Request("�}�ӣԣ�10*", Smoothing);
	Rotate("�}�ӣԣ�101", 0, @0, @0, @50, null,true);


	Zoom("�}�ӣԣ�101", 0, 1000, 1000, null, false);
	Zoom("�}�ӣԣ�102", 0, 2000, 2000, null, false);
	Zoom("@OnBG*", 0, 2000, 2000, null, false);

	DrawTransition("�}�\Ļ", 150, 1000, 0, 100, null, "cg/data/slide_04_00_1.png", true);

	SetFwC("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0040a14">
���Ὤ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T�ĉ�


	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("�}�ӣԣ�100", 1500, Center, @0, "cg/st/3d�y�Ǻ�_�Tͻ_���.png");
	Request("�}�ӣԣ�100", Smoothing);
	Zoom("�}�ӣԣ�100", 0, 100, 100, null, true);
	SetBlur("�}�ӣԣ�100", true, 2, 500, 50, false);

	Zoom("@OnBG*", 300, 1000, 1000, Axl2, false);
	Zoom("�}�ӣԣ�100", 250, 3000, 3000, Axl2, false);
	Zoom("�}�ӣԣ�101", 250, 300, 300, Axl2, false);
	Zoom("�}�ӣԣ�102", 250, 1000, 1000, Axl2, false);

	Fade("�}�ӣԣ�101", 150, 1000, null, false);
	Fade("�}�ӣԣ�102", 150, 1000, null, false);
	Fade("�}�ӣԣ�100", 150, 1000, null, true);
	FadeDelete("�}�ӣԣ�100",150,false);

	Shake("�}�ӣԣ�101", 1000, 10, 20, 0, 0, 1000, Dxl1, false);
	Shake("�}�ӣԣ�102", 1000, 10, 20, 0, 0, 1000, Dxl1, false);
	WaitKey(100);

	FadeDelete("�ߤ�", 300, true);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 19000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");

	FadeDelete("�}�ӣԣ�10*",0,false);

	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 30, false);

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, true);

	FadeDelete("�}��*", 500, true);

	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_04_00_0.png", true);
	CreateTextureSP("�}��", 1200, @-7500, Middle, "cg/bg/bg204_�����ر���_02.jpg");
	Zoom("�}��", 0, 4000, 800, Dxl1, false);
	CreateTextureSP("�}�ݿ����}", 1350, OutRight, Middle, "cg/st/3d�y�Ǻ�_�T��_ͨ��3.png");
	SetBlur("�}�ݿ����}", true, 2, 500, 50, false);
	DrawTransition("�}�\Ļ", 150, 1000, 0, 100, null, "cg/data/slide_04_00_1.png", true);

	CreateTextureEX("�}�ӣԣ�101", 1300, @-1000, @-300, "cg/st/3d�˰�ʽ�o�T��_�T��_���Lb.png");
	CreateTextureEX("�}�ӣԣ�102", 1400, @-2000, @-300, "cg/st/3d�˰�ʽ�o�T��_�T��_���La.png");
	CreateTextureEX("�}�ӣԣ�103", 1300, @-3200, @-300, "cg/st/3d�˰�ʽ�o�T��_�T��_���Lb.png");
	CreateTextureEX("�}�ӣԣ�104", 1400, @-5000, @-300, "cg/st/3d�˰�ʽ�o�T��_�T��_���La.png");

	Zoom("�}�ӣԣ�101", 0, 300, 300, null, false);
	Zoom("�}�ӣԣ�102", 0, 1000, 1000, null, false);
	Zoom("�}�ӣԣ�103", 0, 600, 600, null, false);
	Zoom("�}�ӣԣ�104", 0, 1000, 1000, null, true);

	Fade("�}�ӣԣ�10*", 0, 1000, null, true);

	CreateSE("SE01b","se���L_����_��ͻ�M02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("�}�ݿ����}", 200, 100, @0, Dxl2, true);

	Move("�}�ݿ����}", 10000, 180, @0, null, false);

	SetFwC("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0050a14">
�����ƣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//	CreateColorSP("�}�\Ļ", 16000, "#FFFFFF");
//	DrawTransition("�}�\Ļ", 150, 500, 100, 1000, null, "cg/data/slide_05_00_1.png", true);
	CreateSE("SE01","se���L_����_��ͻ�M04");
	MusicStart("SE01",0,1000,0,1000,null,false);
//	WaitKey(100);
	CreateTextureSPadd("�褳", 1350, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	DrawTransition("�褳", 3000, 0, 1000, 1000, null, "cg/data/slide_01_04_1.png", false);
	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, false);
	Move("�}�ӣԣ�10*", 1500, @8500, @0, null, false);

	Move("�}�ݿ����}", 600, @-2300, @0, Axl1, false);
	Move("�}��", 1200, @8000, @0, Dxl1, true);

	CreateColorSPadd("�}��Ļ", 16000, "#FFFFFF");
	DrawTransition("�}��Ļ", 150, 0, 1000, 1000, null, "cg/data/slide_05_00_1.png", true);

//	DrawTransition("�}��Ļ", 150, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);

//�����T�ĉ�

	CreateTextureEX("�}EV100", 2001, Center, Middle, "cg/ev/ev301_�y�Ǻť���å���.jpg");
	CreateTextureEX("�}EV200", 2000, Center, Middle, "cg/ev/ev301_�y�Ǻť���å���.jpg");

	SetBlur("�}EV100", true, 3, 500, 100, false);
	Fade("�}EV100", 0, 1000, null, false);
	Fade("�}EV200", 0, 1000, null, true);

	FadeDelete("�}��Ļ", 250, false);

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Shake("�}EV100", 1000, 5, 6, 0, 0, 500, Dxl1, false);
	Zoom("�}EV100", 1000, 1600, 1600, null, false);
	FadeDelete("�}EV100", 1000, true);

	CreateTextureEX("�}�ţ�", 15000, Center, Middle, "cg/ev/ev228_���y��܊��_a.jpg");
	Fade("�}�ţ�", 1500, 1000, null, true);

	//CreateTextureSP("�}�ݿ����}", 1200, @350,@0, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
	Wait(150);

	Delete("�}�ӣԣ�10*");
	Delete("�褳");
	Delete("�}��");
	FadeDelete("�}EV200", 500, true);

	Wait(500);

	SetFwR("cg/fw/fw��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0060a14">
�������ܺã�����Ϊ����ʢ�����������ڡ�
��ÿһλ���ǳ�ɫ�����ߣ���

{	FwR("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0070a14">
�����������ź�����
���ҽ���˲ɱ���в�ͨ�ġ���
������η�ӣ����������
����������������ʿ��վ���ҵ���ǰ��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ļ���o�T���

/*
	CreateTextureEX("�}�ӣԣ�1001", 1200,  @-300, @-300, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�1002", 1100,  @-400, @-600, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�1003", 1000,  @100, @-600, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�1004", 1050,  @200, @-300, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	Zoom("�}�ӣԣ�1001", 0, 800, 800, null, false);
	Zoom("�}�ӣԣ�1002", 0, 500, 500, null, false);
	Zoom("�}�ӣԣ�1003", 0, 250, 250, null, false);
	Zoom("�}�ӣԣ�1004", 0, 300, 300, null, false);
	Request("�}�ӣԣ�100*", Smoothing);


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 100, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	Delete("�}�ݿ����}");
	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, false);

	Fade("�}�ӣԣ�100*", 0, 1000, null, true);
	DrawTransition("�\Ļ��", 100, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
*/

	CreateColorSP("�\Ļ��", 30000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}ɫ100");
	Delete("�}��*");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("����飱/������*");
	Delete("�}�ţ�");

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");

	CreateTextureEX("����飱/������01a", 500, @200, @-200, "cg/st/3d�˰�ʽ�o�T��_�T��_���La.png");
	CreateTextureEX("����飱/������02a", 350, @400, @-0, "cg/st/3d�˰�ʽ�o�T��_�T��_���Lb.png");
	CreateTextureEX("����飱/������03a", 200, @400, @-300, "cg/st/3d�˰�ʽ�o�T��_�T��_���La.png");
	CreateTextureEX("����飱/������04a", 100, @500, @-200, "cg/st/3d�˰�ʽ�o�T��_�T��_���Lb.png");

	Fade("����飱/������01a", 0, 1000, null, false);
	Fade("����飱/������02a", 0, 1000, null, false);
	Fade("����飱/������03a", 0, 1000, null, false);
	Fade("����飱/������04a", 0, 1000, null, false);

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
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 0, 700, 0, 1000, null,true);


$��`�ץ�`�֥ʥå��� = "@����飱/������01*";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@����飱/������02*";
$��`�ץ�`�֥����ࣲ = 20000;

$��`�ץ�`�֥ʥå����� = "@����飱/������03*";
$��`�ץ�`�֥����ࣳ = 15000;

$��`�ץ�`�֥ʥå����� = "@����飱/������04*";
$��`�ץ�`�֥����ࣴ = 10000;

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

	MoveCamera("@����飱", 0, 500, 50, @0, null, true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	MoveCamera("@����飱", 1500, 100, 200, @300, Dxl1, true);
	Delete("�\Ļ��");

//	SetBlur("����飱/������0*", true, 1, 500, 100, false);


	SetNwC("cg/fw/nw�����_�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯Ļ���T�¡�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0080e262">
���⡢��������
��ûûûû������!!��

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�á�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0090e263">
��������ô���˹���һ�ˣ����޷���
���ֺ�������

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�ġ�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0100e264">
���������Ǻš���!!��

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0110e265">
�����ǡ�
��������Χ��������
��ס��Ų���������ƻ�����������

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�á�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0120e263">
��������

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0130e265">
��ĸ���أ���

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�ġ�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0140e264">
��׼����ϣ���

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0150e265">
���ã�ɢ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɢ�_
/*
	Move("�}�ӣԣ�1001", 300, @-900, @400, null, false);
	Move("�}�ӣԣ�1002", 300, @-900, @200, null, false);
	Move("�}�ӣԣ�1003", 300, @-900, @-400, null, false);
	Move("�}�ӣԣ�1004", 300, @-11000, @-400, null, false);
*/
	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M02",1000);
	OnSE("se���L_����_��ͻ�M03",1000);


	Move("����飱/������01a", 500, @1000, @1000, Axl1, false);
	Move("����飱/������02a", 500, @900, @-1100, Axl1, false);
	Move("����飱/������03a", 500, @-1000, @1000, Axl1, false);
	Move("����飱/������04a", 500, @-1500, @-1000, Axl1, true);

	Delete("�����*");


	SetFwC("cg/fw/fw��_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0160a14">
�������ţ���

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0170e265">
���µ����ɣ��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ħ����
//�����h�k��
//��������`��ܤ��`��
	CreateSE("SE01","se���L_�n��_�zɢ�A");
	CreateSE("SE02a","se���L_�Х���_�ܩ`�������01");
	CreateSE("SE02b","se���L_��҆��_����03");
	CreateSE("SE03","se���L_�|��_�h�T����01");
	CreateSE("SE04","se����_�z_���ͥ륮�`���01");

	CreateColorEXadd("�}ɫ100", 15000, "WHITE");
	Fade("�}ɫ100", 500, 1000, null, true);

	CreateTextureSP("�}EV100", 2001, Center, Middle, "cg/ev/ev806_�����}����`�����Σ�_a.jpg");
	CreateTextureSP("�}EV200", 2000, Center, Middle, "cg/ev/ev806_�����}����`�����Σ�_b.jpg");
	CreateTextureEXadd("�k�񥨥ե�����", 2100, Center, Middle, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�k��ө`�२�ե�����", 2200, Center, Middle, "cg/ef/ef038_�������.jpg");
	Move("�k��ө`�२�ե�����", 0, @0, @100, null, true);
	Rotate("�k��ө`�२�ե�����", 0, @0, @180, @-10, null,true);
	Zoom("�k��ө`�२�ե�����", 0, 2000, 2000, null, true);
	Move("�k�񥨥ե�����", 0, @0, @70, null, true);

	Request("�}EV*", Smoothing);
	Zoom("�}EV*", 0, 1300, 1300, null, true);

	SetBlur("�}EV100", true, 2, 500, 100, false);

	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	FadeDelete("�}ɫ100", 1000, false);
	Zoom("�}EV*", 1500, 1000, 1000, Dxl1, true);

	Wait(300);
	Rotate("�k�񥨥ե�����", 1500, @0, @0, @10000, Axl2,false);
	Zoom("�k�񥨥ե�����", 1500, 2000, 2000, Axl1, false);
	Fade("�k�񥨥ե�����", 200, 1000, null, false);

	Fade("�}EV100", 1000, 0, null, false);
	Wait(800);

	Shake("�}EV100", 600, 5, 6, 0, 0, 500, Axl1, false);
	Move("�}EV*", 600, @-750, @-550, Dxl2, false);
	Zoom("�}EV*", 600, 3000, 3000, Dxl2, false);

	MusicStart("SE02*",0,1000,0,1000,null,false);
	Wait(300);
	SetVolume("SE04", 1000, 0, null);
	Fade("�k��ө`�२�ե�����", 50, 1000, null, false);
	Zoom("�k��ө`�२�ե�����", 500, 3000, 3000, Axl1, true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 19000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");

	FadeDelete("�}EV100", 0, true);
	FadeDelete("�}EV200", 0, true);
	Delete("�k��*");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 30, false);

	Zoom("�}����", 1000, 1500, 1500, Dxl1, false);
	Shake("�}��", 300, 0, 10, 0, 0, 1000, Dxl3, true);
	Wait(500);

	SetVolume("SE02*", 3000, 0, null);
	FadeDelete("�}��*", 1500, true);

	Wait(1000);

	SetNwC("cg/fw/nw�����_�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������㣯Ļ���T�ġ�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0180e264">
����������!!��

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�¡�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0190e262">
��ɱ�������𣡡�

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0200e265">
��������û���κζ�����Ħ��������
�Ĺ����»��ܱ������Ρ�
����ʹ���ǰ���֮ħ���������Ǻ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С��������
	WaitKey(500);

	SetFwC("cg/fw/fw��_��˼.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0210a14">
��Ŷ��
��������Ϊ��û����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0220a14">
��������Ǳ���һ����֪�Ļ���
��˵�����类ը�顣
������������ȷ�ܴ󡣡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�ǺŽ��ڡ�Ƭ�֤�ͻ�������Ƥ��룿

	CreateTextureEX("�}�ݿ����}", 1200, center,-310, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	SetBlur("�}�ݿ����}", true, 3, 200, 100, false);

	Move("�}�ݿ����}", 600, -560, @0, Dxl1, false);
	Fade("�}�ݿ����}", 600, 1000, null, true);

	SetNwC("cg/fw/nw�����_�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0230e265">
������������

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�á�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0240e263">
����Ȼ
�����־͡�����ס�ˣ���

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0250a14">
�����ڽ�֮��������ͬ����������
�����ǿ�������˹����ģ�������ʲô��ʽ��
�ܻ���������Щ�Ҷ�һ�����������

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0260a14">
���ܹ������ҵ�������һ���ġ�
����������һ�㣬���������ðɡ���

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0270e265">
��������ô�졭����

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0280e265">
�����ް�ᦴ�����!!
��<RUBY text="��������">���ֶ���</RUBY>��������Ǻ�!?��

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0290a14">
���ȣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ��w�衣��픤�
	SetVolume("ͣ��", 1000, 0, null);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}�ݿ����}", 100, 0, 5000, Dxl2, false);
	FadeDelete("�}�ݿ����}", 100, true);

	CreateTextureEX("�}EF100", 2000, Center, 0, "cg/ef/ef019_�y�Ǻ�ͻ؞03.jpg");
	Rotate("�}EF100", 0, @180, @0, @0, null,true);
	Zoom("�}EF100", 0, 2000, 2000, null, true);
	Move("�}EF100", 0, -512, -288, Dxl1, false);
	Request("�}EF100", Smoothing);
	SetBlur("�}EF100", true, 3, 500, 50, false);

	OnSE("se���L_����_���ϕN01",1000);
	Move("�}EF100", 300, 0, 0, Dxl1, false);
	Zoom("�}EF100", 300, 1100, 1100, Dxl1, false);
	CloudZoomDelete(600,false);
	Fade("�}EF100", 600, 1000, null, true);


	SetFwC("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0300a14">
������׹�䡤С����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�������󡤥쥤�ǥ��Х�
//��Ħ���ԡ��Z��

//����������ma00_000 ��ͬ����ΤǤ������ԩ`�ɤ��{�����Ƥ��ޤ���inc�ñ���

	CreateTextureEX("�}ev50", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	CreateTextureSP("�}ev40", 9000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	CreateTextureEX("�}ev60", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	SetBlur("�}ev60", true, 3, 500, 100, false);

	CreateTextureEX("�}ev100", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_a.jpg");
	CreateTextureEX("�}ev200", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_b.jpg");
	CreateTextureEX("�}ev300", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_c.jpg");
	CreateTextureEX("�}ev400", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");

	CreateTextureEX("�}ev410", 10000, Center, Middle, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_d.jpg");
	SetBlur("�}ev410", true, 3, 500, 100, false);

	CreateColorEX("�}ɫ1000", 15000, "White");
	CreateColorEX("�}ɫ100", 17000, "Black");

	OnSE("se����_����_���S03",1000);
	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	CreateColorEXadd("��", 10000, "WHITE");

	Fade("�}ɫ1000", 0, 1000, null, true);
	SetVertex("�}ev50", 0, 0);
	Zoom("�}ev50", 0, 2000, 2000, Dxl1, true);
	Fade("�}ev50", 0, 1000, null, true);
	SetBlur("�}ev50", true, 3, 500, 100, false);
//	Move("�}ev50", 1500, -1024, -576, Dxl2, false);
	Move("�}ev50", 0, -1024, -576, Dxl2, false);
	Request("�}ev50", Smoothing);
	Fade("�}ɫ1000", 500, 500, null, true);
	Fade("�}ɫ1000", 500, 0, null, false);
//	OnSE("se���L_����_��ͻ�M03",1000);
	OnSE("se����_��x_�k��01",1000);
	Move("�}ev50", 600, @+1024, @+576, Dxl2, false);

	Wait(400);

	Fade("��",100,1000,null,true);

	MovieSESet(16000,"mvС����_a","se����_mv��_С����_a");
	MovieSEStart2(300,1000);

	Fade("�ե�å����",0,1000,null,true);
	Delete("��");
//�������ޤ�ma00_000 ��ͬ����ΤǤ�����inc�ñ���

	CreateTextureEX("EV100", 2001, Center, Middle, "cg/ev/ev806_�����}����`�����Σ�_a.jpg");
	CreateTextureEX("EV200", 2000, Center, Middle, "cg/ev/ev806_�����}����`�����Σ�_a.jpg");

	SetBlur("EV100", true, 3, 500, 100, false);
	Fade("EV100", 0, 1000, null, false);
	Fade("EV200", 0, 1000, null, true);
	Delete("�}ev*");
	Delete("�}EF*");
	FadeDelete("�ե�å����", 300, false);

	SetVolume("@mbgm*", 1000, 0, null);
	Shake("EV100", 500, 5, 6, 0, 0, 500, null, false);
	Zoom("EV100", 500, 2000, 2000, Axl1, true);

	CreateSE("SE03","se���L_�Ɖ�_���k09");
	CreateSE("SE04","se���L_�Ɖ�_���k04");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 19000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	FadeDelete("EV*", 0, true);
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 2, 300, 30, false);

	CloudZoomSet(2100);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,500,-200,null,true);
	Request("�}Cloud1*", SubRender);

	CreateTextureSP("EV300", 2000, Center, Middle, "cg/ev/ev806_�����}����`�����Σ�_c.jpg");
	Request("EV300", Smoothing);
	Zoom("EV300", 0, 1300, 1300, null, true);

	Zoom("�}����", 500, 1500, 1500, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, true);

	Zoom("EV300", 20000, 1000, 1000, null, false);

	FadeDelete("�}��*", 5000, true);


	SetNwC("cg/fw/nw�����_�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������㣯Ļ���T�¡�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0310e262">
��Ħ���԰���������!?��

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�á�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0320e263">
��������������ĸ����������

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�ġ�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0330e264">
�������޵�ϣ��������û�ˡ���������

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0340e265">
�������ⲻ����ġ����ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣��y�Ǻţ���Ƭ�˄���
	#av_�˄���=true;

	SoundPlay("@mbgm37",0,1000,true);
	SetVolume("SE*", 1500, 0, null);

	CreateTextureEX("�}EV100", 2201, Center, Middle, "cg/ev/ev228_���y��܊��_b.jpg");
	CreateTextureEX("�}��", 2200, 0, 0, "cg/ev/resize/ev228_���y��܊��_bl.jpg");
	Zoom("�}EV100", 0, 1500, 1500, null, true);
	SetBlur("�}EV100", true, 3, 300, 30, false);


	Move("�}��", 6000, -1024, @0, AxlDxl, false);
	Fade("�}��", 2000, 1000, null, true);

	CloudZoomDelete(0,false);

	Wait(3000);

	Zoom("�}EV100", 2000, 1000, 1000, Dxl1, false);
	Fade("�}EV100", 1000, 1000, null, true);


	Delete("EV300");
	Wait(2000);
	Delete("�}��");
	SetFwC("cg/fw/fw���򌧤����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���˄�������
<voice name="�˄�����" class="������Ů��" src="voice/md04/049vs0350c00">
��ĸ�״��ˣ���

{	FwC("cg/fw/fw�פι�_ͨ��.png");}
//���˄����¡�
<voice name="�˄�����" class="������Ů��" src="voice/md04/049vs0360c01">
��ĸ�״��ˣ���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0370a14">
��������˻��������̲�ס����
���ҵĺ����ǡ��������µİ��ﰡ����

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0380a14">
������ս����
�������μ������������İ�Ȩ�����𣿡�

{	FwC("cg/fw/fw�Ǥν�_ͨ��.png");}
//���˄����á�
<voice name="�˄�����" class="������Ů��" src="voice/md04/049vs0390c02">
��ĸ�״��ˣ���

{	FwC("cg/fw/fwè��צ_ͨ��.png");}
//���˄����ġ�
<voice name="�˄�����" class="������Ů��" src="voice/md04/049vs0400c03">
��ĸ�״��ˣ���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0410a14">
���Ǿ��ϰ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���˄�������
//���o�T���
//���ĉ�����Ƥ椯
	CreateTextureEX("��", 1050, @-800, @-300, "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureEX("��", 1000, @-800, @-200, "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureEX("��", 1100, @-800, @-100, "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureEX("��", 1190, @-800, @-250, "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureEX("��", 1000, @-500, @0, "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureEX("��", 1050, @-800, @-100, "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureEX("��", 1150, @-700, @-850, "cg/st/3d�˄���_�T��_ͨ��.png");
	CreateTextureEX("��", 1300, @-800, @-300, "cg/st/3d�˄���_�T��_ͨ��.png");

	Zoom("��", 0, 500, 500, null, false);
	Zoom("��", 0, 250, 250, null, false);
	Zoom("��", 0, 750, 750, null, false);
	Zoom("��", 0, 1000, 1000, null, false);
	Zoom("��", 0, 250, 250, null, false);
	Zoom("��", 0, 750, 750, null, false);
	Zoom("��", 0, 1050, 1050, null, false);
	Zoom("��", 0, 1500, 1500, null, false);

	SetBlur("��", true, 3, 300, 30, false);
	SetBlur("��", true, 3, 300, 30, false);
	SetBlur("��", true, 3, 300, 30, false);
	SetBlur("��", true, 3, 300, 30, false);
	SetBlur("��", true, 3, 300, 30, false);
	SetBlur("��", true, 3, 300, 30, false);
	SetBlur("��", true, 3, 300, 30, false);
	SetBlur("��", true, 3, 300, 30, false);


	CreateTextureEX("�}�ӣԣ�1001", 1200,  @-300, @-300, "cg/st/3d�˰�ʽ�o�T��_�T��_���Lb.png");
	CreateTextureEX("�}�ӣԣ�1002", 1100,  @-400, @-600, "cg/st/3d�˰�ʽ�o�T��_�T��_���Lb.png");
	CreateTextureEX("�}�ӣԣ�1003", 1000,  @100, @-600, "cg/st/3d�˰�ʽ�o�T��_�T��_���La.png");
	CreateTextureEX("�}�ӣԣ�1004", 1050,  @200, @-300, "cg/st/3d�˰�ʽ�o�T��_�T��_���Lb.png");

	Zoom("�}�ӣԣ�1001", 0, 800, 800, null, false);
	Zoom("�}�ӣԣ�1002", 0, 500, 500, null, false);
	Zoom("�}�ӣԣ�1003", 0, 250, 250, null, false);
	Zoom("�}�ӣԣ�1004", 0, 300, 300, null, false);


$��`�ץ�`�֥ʥå��� = "@�}�ӣԣ�1001";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@�}�ӣԣ�1002";
$��`�ץ�`�֥����ࣲ = 20000;

$��`�ץ�`�֥ʥå����� = "@�}�ӣԣ�1003";
$��`�ץ�`�֥����ࣳ = 15000;

$��`�ץ�`�֥ʥå����� = "@�}�ӣԣ�1004";
$��`�ץ�`�֥����ࣴ = 10000;

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


	Zoom("�}EV100", 100, 1200, 1200, null, false);

	CreateColorSPadd("siroĻ��", 3000, "#FFFFFF");
	DrawTransition("siroĻ��", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);
	OnBG(100, "bg001_��a_02.jpg");
	FadeBG(0, false);


	FadeDelete("�}EV100", 0, true);

	Fade("�}�ӣԣ�100*", 0, 1000, null, true);
	FadeDelete("siroĻ��", 100, true);
	FadeDelete("�}EV100", 0, true);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,800,0,1000,null,false);
//	Move("��", 300, @1900, @1900, Axl3, false);
	Fade("��", 0, 1000, Dxl3, true);
	CreateTextureSPadd("�Ͻ}��", 1049, Center, @-50, "cg/ef/ef015_���ú�܉��.jpg");
	DrawTransition("�Ͻ}��", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("��", 100, @1600, @0, null, false);

	CreateSE("SE02","se���L_����_��ͻ�M02");
	MusicStart("SE02",0,700,0,1000,null,false);
//	Move("��", 500, @1900, @1900, Axl1, false);
	Fade("��", 0, 1000, Dxl1, true);
	CreateTextureSPadd("���}��", 999, Center, @50, "cg/ef/ef015_���ú�܉��.jpg");
	DrawTransition("���}��", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("��", 200, @1900, @0, null, true);
	FadeDelete("��", 0, true);
	FadeDelete("���}��", 1000, false);

	FadeDelete("��", 0, false);
	FadeDelete("�Ͻ}��", 1000, false);



	CreateSE("SE03","se���L_����_��ͻ�M03");
	MusicStart("SE03",0,1000,0,1000,null,false);
//	Move("��", 700, @1900, @1900, Axl1, false);
	Fade("��", 0, 1000, null, true);
	CreateTextureSPadd("���}��", 1099, Center, @150, "cg/ef/ef015_���ú�܉��.jpg");
	DrawTransition("���}��", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("��", 300, @1900, @0, null, false);

	CreateSE("SE04","se���L_����_��ͻ�M08");
	MusicStart("SE04",0,1000,0,1000,null,false);
//	Move("��", 300, @1900, @1900, Axl3, false);
	Fade("��", 0, 1000, Dxl3, true);
	CreateTextureSPadd("��}��", 1089, Center, @0, "cg/ef/ef015_���ú�܉��.jpg");
	DrawTransition("��}��", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("��", 200, @1900, @0, null, false);


	CreateSE("SE05","se���L_����_��ͻ�M01");
	MusicStart("SE05",0,700,0,1000,null,false);
//	Move("��", 500, @1900, @1900, Axl1, false);
	Fade("��", 0, 1000, Dxl1, true);
	CreateTextureSPadd("���}��", 1001, Center, @0, "cg/ef/ef013_����б��܉��.jpg");
	DrawTransition("���}��", 100, 0, 1000, 100, null, "cg/data/beam_04_00_0.png", false);
	Move("��", 100, @1900, @-1300, null, true);
	FadeDelete("��", 0, true);
	FadeDelete("���}��", 1000, false);

	FadeDelete("��", 0, true);
	FadeDelete("���}��", 1000, false);

	FadeDelete("��", 0, true);
	FadeDelete("��}��", 1000, false);




	CreateSE("SE06","se���L_����_��ͻ�M02");
	MusicStart("SE06",0,1000,0,1000,null,false);
//	Move("��", 500, @1900, @1900, Axl1, false);
	Fade("��", 0, 1000, Dxl1, true);
	CreateTextureSPadd("���}��", 1049, Center, @-150, "cg/ef/ef015_���ú�܉��.jpg");
	DrawTransition("���}��", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("��", 300, @1900, @0, null, true);


	CreateSE("SE07","se���L_����_��ͻ�M03");
	MusicStart("SE07",0,1000,0,1000,null,false);
//	Move("��", 700, @1900, @1900, Axl1, false);
	Fade("��", 0, 1000, null, true);
	CreateTextureSPadd("�˽}��", 1299, @0, @0, "cg/ef/ef011_����б��܉��.jpg");
	DrawTransition("�˽}��", 100, 0, 1000, 100, null, "cg/data/beam_03_00_0.png", false);
	Move("��", 100, @1900, @1900, null, false);


	CreateSE("SE08","se���L_����_��ͻ�M08");
	MusicStart("SE08",0,1000,0,1000,null,false);
//	Move("��", 300, @1900, @1900, Axl3, false);
	Fade("��", 0, 1000, Dxl3, true);
	CreateTextureSPadd("��}��", 1299, Center, @25, "cg/ef/ef015_���ú�܉��.jpg");
	Zoom("��}��", 0, 2500, 2500, null, false);
	DrawTransition("��}��", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("��", 300, @1900, @0, null, true);
	FadeDelete("��", 0, true);
	FadeDelete("��}��", 1000, false);


	FadeDelete("��", 0, true);
	FadeDelete("���}��", 1000, false);


	FadeDelete("��", 0, true);
	FadeDelete("�˽}��", 1000, false);

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 19000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Request("�}��*", Smoothing);

	Zoom("�}��*", 0, 1100, 1100, null, true);

	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 30, false);

	Zoom("�}����", 2000, 1210, 1210, Dxl1, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, true);

	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("�����*");

	Wait(1000);

	SetNwC("cg/fw/nw�����_�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0420e265">
��������ᦴ���������
������ǡ��������޵������𡭡���

{	NwC("cg/fw/nw�����_�o�T����.png");}
//������㣯Ļ���T�š�
<voice name="����㣯Ļ���T��" class="����������" src="voice/md04/049vs0430e265">
���������ư������ʱ�������ǡ���
���ڸ�Ϊǿ�������ǰ���������ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ĉ�
//��ȫ��

	FadeDelete("�}�ӣԣ�100*", 0, false);
	FadeDelete("�}��*", 2000, true);

//���y�Ǻ�


	CreateTextureEX("�}�ݿ����}", 1200, @300,@0, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
	Move("�}�ݿ����}", 300, @50, @0, Dxl1, false);
	Fade("�}�ݿ����}", 300, 1000, null, true);

	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0440a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥԡ�֪̽

	CreateSE("SE01","se����_���å��ԥå�_����`��");
	MusicStart("SE01",0,500,0,1000,null,false);

	SetFwC("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������������
<voice name="��������" class="��������" src="voice/md04/049vs0450a15">
����������

{	FwC("cg/fw/fw��_�@��.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0460a14">
��ʲô�£���

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md04/049vs0470a15">
���д�������ڽӽ���
�����൱����Ľ��С��ٿ��߿��²�����ͨ�ˡ���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md04/049vs0480a14">
������Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 100, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	ClearWaitAll(0, 0);
}

..//������ָ��
//�Υե����롡"md04_050vs.nss"