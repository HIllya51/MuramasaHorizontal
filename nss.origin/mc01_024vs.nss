//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_024vs.nss_MAIN
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
	#ev956_�Х���������_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc01_025.nss";

}

scene mc01_024vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_023vs.nss"

/*
//��������ݳ��������Υ��`��ǵǈ������o�T�������¡�
	CreateTextureEX("�}���z�i����", 700, Center, InBottom, "cg/st/3d�˰�ʽ�o�T��_����_�i��.png");
	//CreateTextureEX("�}���z�i����", 600, Center, InBottom, "cg/st/3d����ʽָ�]��_����_�i��.png");
	//CreateTextureEX("�}���z�i����", 800, Center, InBottom, "cg/st/3d�ũ�ʽָ�]��_����_�i��b.png");
	//CreateTextureEX("�}���z�i����", 600, Center, InBottom, "cg/st/3d�ũ�ʽ�o�T��_����_�i��.png");
*/


//������֦������
//�����ФҤ��Ҥ��
	PrintGO("�ϱ���", 20000);
	CreateSE("SE01a","se���L_����_Ұ̫�����01");
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	Zoom("�}����", 0, 10000, 10000, null, false);
	Fade("�}����", 0, 450, null, true);
	Delete("�ϱ���");

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, false);

	Wait(80);

	CreateSE("SE01b","se���L_����_Ұ̫�����01");
	MusicStart("SE01b",0,1000,0,1250,null,false);
	CreateTextureEXadd("�}���ϣ�", 3100, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	CreateTextureEX("�}�ݣ�", 3000, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	Fade("�}�ݣ�", 0, 750, null, true);
	Zoom("�}���ϣ�", 0, 10000, 10000, null, false);
	Fade("�}���ϣ�", 0, 450, null, true);

	Zoom("�}���ϣ�", 200, 1000, 1000, Dxl2, false);
	Shake("�}���ϣ�", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}���ϣ�", 200, false);

	Wait(80);

	CreateSE("SE01c","se���L_����_Ұ̫�����01");
	MusicStart("SE01c",0,1000,0,1250,null,false);
	CreateTextureEXadd("�}���ϣ�", 3100, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	CreateTextureEX("�}�ݣ�", 3000, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	Fade("�}�ݣ�", 0, 750, null, true);
	Zoom("�}���ϣ�", 0, 10000, 10000, null, false);
	Fade("�}���ϣ�", 0, 450, null, true);

	Zoom("�}���ϣ�", 200, 1000, 1000, Dxl2, false);
	Shake("�}���ϣ�", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}���ϣ�", 200, false);

	Wait(80);

	CreateSE("SE01d","se���L_����_Ұ̫�����01");
	MusicStart("SE01d",0,1000,0,1250,null,false);
	CreateTextureEXadd("�}���ϣ�", 3100, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	CreateTextureEX("�}�ݣ�", 3000, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	Fade("�}�ݣ�", 0, 750, null, true);
	Zoom("�}���ϣ�", 0, 10000, 10000, null, false);
	Fade("�}���ϣ�", 0, 450, null, true);

	Zoom("�}���ϣ�", 200, 1000, 1000, Dxl2, false);
	Shake("�}���ϣ�", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}���ϣ�", 200, true);

//���L��һͻ
	CreatePlainSP("�}��д", 10000);
	CreateSE("SE02","se���L_����_�ռ�����01");
	Delete("�}��*");
	CreateColorEX("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}��������", 100, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateTextureEX("�}��ٞ���}", 1010, Center, Middle, "cg/st/3d�Х���_�Tͻ_���L.png");

	SoundPlay("@mbgm10",0,1000,true);
	MusicStart("SE02",0,1000,0,500,null,false);
	Zoom("�}��ٞ���}", 0, 200, 200, null, true);
	Fade("�}��ٞ���}", 200, 1000, Axl2, false);
	Zoom("�}��ٞ���}", 30000, 1000, 1000, null, false);
	DrawDelete("�}��д", 150, 100, "circle_01_00_1", true);

	Wait(500);

	SetFrequency("SE02", 200, 2000, Axl3);
	Zoom("�}��ٞ���}", 150, 10000, 10000, Axl2, false);

	Wait(100);

	SetVolume("SE02", 1000, 0, null);
	CreateSE("SE03a","se���L_����_�z_���02");
	CreateSE("SE03b","se���L_����_�z��������03");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);

	Wait(12);

//�������`��
	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");

	OnBG(100,"bg076_�����¾���_01.jpg");
	FadeBG(0,true);

	CreateTextureSP("�}��ٞ���}", 1010, Center, InBottom, "cg/st/3d�Х���_����_�i��.png");
	CreateTextureSP("�}�ݸo����", 1110, Center, InBottom, "cg/st/3d�ũ�ʽ�o�T��_����_�i��.png");
	Move("�}�ݸo����", 0, @140, @0, null, true);
	Move("�}��ٞ���}", 0, @350, @0, null, true);

	Shake("�}�ݸo����", 216000, 2, 0, 0, 0, 1000, null, false);
	Delete("�ϱ���");
	FadeDelete("�}ɫ��", 1000, true);

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�v��ꠣơ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/024vs0010e207">
���ذ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_�n��_�zܞ��01");
	FadeDelete("�}�ݸo����", 300, false);
	Move("�}�ݸo����", 600, @-30, @60, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

//���o�T��
	CreateStencil("�}�ݸo������",911,Center,InBottom,128,"cg/st/3d����ʽָ�]��_����_���Lc.png",false);
	SetAlias("�}�ݸo������","�}�ݸo������");
	CreateColorEX("�}�ݸo������/ɫ", 911, "#000000");

	CreateTextureEX("�}�ݸo����", 910, Center, InBottom, "cg/st/3d����ʽָ�]��_����_���Lc.png");
	SetVertex("�}�ݸo����*", center, bottom);
	Request("�}�ݸo����*", Smoothing);
	Zoom("�}�ݸo����*", 0, 950, 950, null, true);

	Move("�}�ݸo����*", 0, @-150, @0, null, true);

	Move("�}�ݸo����*", 600, @-120, @0, Dxl1, false);
	Fade("�}�ݸo������/ɫ", 200, 750, null, false);
	Fade("�}�ݸo����", 200, 1000, null, true);

	FadeDelete("�}�ݸo������/ɫ", 400, true);

//��̫��һ�W
	OnSE("se���L_����_�����01",1000);
	CreateColorSP("�}��", 5500, "#FFFFFF");

	Delete("�}��ٞ���}*");

	CreateTextureSP("�}�ݸo����", 1110, Center, InBottom, "cg/st/3d����ʽָ�]��_����_���Lc.png");
	SetVertex("�}�ݸo����", center, bottom);
	Request("�}�ݸo����", Smoothing);
	Zoom("�}�ݸo����", 0, 1050, 1050, null, true);
	Move("�}�ݸo����", 0, @250, @0, null, true);

	CreatePlainSP("�}��д", 5000);
	Shake("�}��д", 200, 4, 0, 0, 0, 500, null, false);

	Fade("�}��", 600, 0, null, false);
	DrawDelete("�}��", 200, 1000, "slide_05_00_1", true);
	Delete("�}��д");

//���Х����ܤ���
	CreateTextureEX("�}��ٞ���}", 1010, Center, InBottom, "cg/st/3d�Х���_����_�i��.png");

	Move("�}��ٞ���}", 300, @-300, @0, Dxl1, false);
	Fade("�}��ٞ���}", 300, 1000, null, true);

//���L��һ�W
	CreateSE("SE06a","se���L_����_Ұ̫�����01");
	MusicStart("SE06a",0,1000,0,1250,null,false);
	CreatePlainSP("�}��д", 2900);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	Zoom("�}����", 0, 10000, 10000, null, false);
	Fade("�}����", 0, 450, null, true);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);

	Shake("�}��д", 400, 0, 6, 0, 0, 500, null, false);

	Shake("�}�ݸo����", 216000, 2, 2, 0, 0, 1000, null, false);
	Fade("�}��", 400, 0, null, false);
	FadeDelete("�}����", 200, false);
	DrawDelete("�}��", 400, 100, "slide_05_00_1", true);
	Delete("�}��д");

//�����Щ`��
	CreateSE("SE03a","se���L_����_�z_���02");
	CreateSE("SE03b","se���L_����_�z��������03");
	MusicStart("SE03a",0,1000,0,800,null,false);
	MusicStart("SE03b",0,1000,0,800,null,false);

	FadeDelete("�}�ݸo����", 300, false);
	Move("�}�ݸo����", 600, @10, @60, null, true);
	CreateSE("SE01","se���L_�n��_�zܞ��01");
	MusicStart("SE01",0,1000,0,700,null,false);

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�v��ꠣǡ�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/024vs0020e208">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T��
	CreateSE("SE02","se����_����_�z�i��04");
	CreateTextureEX("�}�ݸo����", 1210, Center, Middle, "cg/st/3d�ũ�ʽָ�]��_����_���Lb.png");
	Move("�}�ݸo����", 0, @350, @0, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("�}�ݸo����", 300, @-60, @0, DxlAuto, false);
	Fade("�}�ݸo����", 300, 1000, null, true);

	SetNwC("cg/fw/nw�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�v��ꠣš�
<voice name="����㣯�v��ꠣ�" class="����������" src="voice/mc01/024vs0030e206">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х������ܩ`���󘋤�
	CreateSE("SE09","se���L_�Х���_�ܩ`���󘋤�01");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	Move("�}�ݸo����", 300, @-512, @0, Dxl2, false);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}�ݸo����");

	CreateTextureSP("�}��", 3000, -630, -70, "cg/ev/resize/ev956_�Х���������_al.jpg");
	Move("�}��", 1150, -480, @0, DxlAuto, false);

	MusicStart("SE09",0,1000,0,1000,null,false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

	WaitAction("�}��", null);

	CreateTextureSP("�}�ݣ�", 2900, Center, Middle, "cg/ev/ev956_�Х���������_a.jpg");
	FadeDelete("�}��", 1000, true);

	Wait(1000);

//���k��
//���o�T�������w��
	CreateSE("SE10","se���L_�Х���_�ܩ`�������01");
	MusicStart("SE10",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 10000, "#FFFFFF");
	DrawTransition("�}ɫ��", 200, 0, 1000, 100, Axl2, "cg/data/circle_01_00_0.png", true);

	SetFrequency("SE10", 300, 500, Dxl3);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#FFFFFF");
	OnBG(100,"bg076_�����¾���_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/3d�Х���_����_���L.png");
	FadeStA(0,true);

	CreateSE("SE11a","se���L_����_�z_�����w��01");
	CreateSE("SE11b","se���L_����_�z_���02");
	CreateSE("SE11c","se���L_����_�z��������03");
	MusicStart("SE11a",0,1000,0,1000,null,false);
	MusicStart("SE11b",0,1000,0,800,null,false);
	MusicStart("SE11c",0,1000,0,800,null,false);

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw�Х���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/024vs0040a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_�l����02");
	CreatePlainSP("�}��д", 5000);
	StL(1000, @0, @0,"cg/st/3d�Х���_����_ͨ��.png");
	FadeStA(0,true);
	MusicStart("SE01",0,1000,0,850,null,false);
	FadeDelete("�}��д", 300, true);

	Wait(1000);

//���Х������w��
	CreateSE("SE02","se���L_����_���ϕN01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	Wait(1000);


//��ܞ�Q
	ClearWaitAll(2000, 2000);


..//������ָ��
//�Υե����롡"mc01_025.nss"

}