//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_037.nss_MAIN
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
	#bg002_��a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_038.nss";

}

scene md04_037.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_036.nss"


//���Ͽ�
//���M�v܊�֣������_���������Ց�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg001_��a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm08", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);




	OnSE("se���L_����_Ұ̫�����01", 1000);

	CreateColorSPadd("��", 5000, "WHITE");
	DrawDelete("��", 150, 100, "slide_07_00_1", true);

	CreateTextureEX("�}����200", 2000, Center, 0, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureEX("�}����300", 2100, Center, 0, "cg/ef/ef015_���ú�܉��.jpg");

	OnSE("se���L_����_���B��01", 1000);
	EffectZoomadd(10000, 100, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("�}����200", 500, 2500, 1200, Dxl2, false);
	Fade("�}����200", 100, 1000, null, true);

	OnSE("se���L_����_�����02", 1000);
	EffectZoomadd(10000, 100, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("�}����300", 500, 1200, 2500, Dxl2, false);
	Fade("�}����300", 100, 1000, null, true);

	Fade("�}����200", 0, 0, null, false);
	Fade("�}����300", 100, 0, null, true);

	CreateColorSPadd("��", 5000, "WHITE");
	DrawDelete("��", 150, 100, "slide_07_00_1", true);


	CreateEffect("�}������", 4000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Request("�}������", AddRender);
	Move("�}������", 0, 200, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @0, @0, @90, null,true);
	Fade("�}������", 0, 100, null, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);

	CreateTextureEX("������", 1200, @-900, @-300, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("������02", 1100, @-900, @-300, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	Zoom("������02", 0, 500, 500, null, true);
	SetBlur("����*", true, 1, 500, 70, false);


	OnSE("se���L_�Ɖ�_�z01", 1000);

	CreateTextureSP("���k", 15000, @0, @0, "cg/ef/ef022_��������ɢ�A.jpg");
	CreatePlainEX("�}��д", 15000);
	Fade("�}��д", 0, 1000, null, true);
	Shake("�}��д", 3000000, 5, 3, 0, 0, 1000, DxlAuto, false);
	Zoom("�}��д", 2000, 2000, 2000, Dxl1, 1500);


	FadeDelete("�}��д", 1000, false);

	FadeDelete("���k",1500,true);
	OnSE("se���L_����_��ͻ�M03", 1000);




	Fade("������", 200, 1000, null, false);
	Shake("������", 10000000, 0, 1, 0, 0, 1000, AxlDxl, false);
	Move("������", 300, @600, @0, Dxl1, true);
	Move("������", 300, @-50, @0, AxlDxl, false);

	Fade("������02", 200, 1000, null, false);
	Shake("������02", 10000000, 1, 1, 0, 0, 1000, AxlDxl, false);
	Move("������02", 300, @1100, @0, Dxl1, true);
	Move("������02", 300, @-50, @0, AxlDxl, false);


	SetNwC("cg/fw/nw����ʽ�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯����ʽ����
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0370010e301">
������������������

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ�¡�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0370020e302">
���������ء�����ร���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����L

	OnSE("se���L_����_��ͻ�M01", 1000);

	Move("������", 300, @1700, @0, Axl3, true);
	OnSE("se���L_����_��ͻ�M01", 1000);

	Move("������02", 300, @1200, @0, Axl3, true);
	Delete("������*");


	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	StC(1000, @0, @150, "cg/st/3d��`�����`���`_�T��_���L.png");
	FadeStC(0, false);
	SetBlur("@StC*", true, 1, 500, 70, false);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	OnSE("se���L_�Х���_�ܩ`�������01", 1000);

	CreateColorSPadd("��", 1100, "WHITE");
	Shake("@StC*", 300, 10, 0, 0, 0, 1000, null, false);

	Move("@StC*", 550, @0, @100, DxlAuto, false);

	DrawDelete("��", 100, 100, "slide_08_00_1", true);
	CreateTextureEX("��", 15000, @200, @0, "cg/ef/efRec_�a01.png");
	Fade("��", 550, 800, null, false);
	Move("@StC*", 550, @0, @-100, DxlAuto, false);
	DrawDelete("��", 550, 100, "effect_01_00_0", true);

	Move("@StC*", 550, @800, @700, AxlAuto, true);


	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("�Ф���", 17000, "#990000");
	CreateColorSPadd("�Ф���", 16000, "#ffffcc");
	CreateColorSPadd("�Ф���", 15000, "#FFFFFF");
	DrawTransition("�Ф���", 0, 1000, 200, 800, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("�Ф���", 0, 1000, 400, 500, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("�Ф���", 0, 1000, 300, 100, null, "cg/data/circle_12_01_1.png", true);
	FadeDelete("�Ф�*", 1500, true);

//���ũ�ʽ�o�T��

	CreateColorSP("�\Ļ��", 21000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("������", 1200, @-1700, @-900, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureSP("������02", 1000, @-900, @-400, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureSP("Ļ���C", 1100, @-1000, @-300, "cg/st/3d����ʽָ�]��_�T��_ͨ��.png");
	Zoom("������02", 0, 400, 400, null, true);
	Zoom("Ļ���C", 0, 500, 500, null, true);

	SetBlur("����*", true, 1, 500, 70, false);
	SetBlur("Ļ���C", true, 1, 500, 70, false);


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);

	Shake("����*", 10000000, 0, 1, 0, 0, 1000, AxlDxl, false);
	Shake("Ļ���C", 10000000, 0, 1, 0, 0, 1000, AxlDxl, false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_03_1", true);
	OnSE("se���L_����_��ͻ�M02", 1000);

	Move("������", 1000, @1200, @600, Dxl2, true);
	Move("������", 600, @-50, @-50, AxlDxl, true);

	OnSE("se���L_����_��ͻ�M01", 1000);

	Move("Ļ���C", 300, @1100, @0, Dxl1, true);
	Move("Ļ���C", 300, @-50, @0, AxlDxl, true);


	SetNwC("cg/fw/nw���ӘS�o�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0370030e261">
��ι���S�����ˣ�
����ô�ˣ��㲻̫�Ծ���!?��

{	NwC("cg/fw/nw���ӘS�o�T��.png");}
//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0370040e261">
��״̬���ѵĻ��������¡�
������������Ψһ����������

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ����
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0370050e301">
����������û�¡�
��״̬����״̬���ǳ��á���

//������㣯����ʽ����
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0370060e301">
��̫���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M03", 1000);

	Move("������02", 300, @1100, @0, Dxl2, true);
	Move("������02", 300, @-50, @0, AxlDxl, true);

	SetNwC("cg/fw/nw����ʽ�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0021]
//������㣯����ʽ�¡�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/0370070e302">
���ǣ��Ǻǡ����ǰ�û��
�������������������٣����ܶԸ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Move("������", 300, @-50, @50, Dxl1, true);
	OnSE("se���L_����_��ͻ�M01", 1000);

	Move("������", 300, @500, @-1000, Axl2, true);

	Move("������02", 300, @-50, @-50, Dxl1, true);
	OnSE("se���L_����_��ͻ�M01", 1000);

	Move("������02", 300, @500, @1000, Axl2, true);

	SetNwC("cg/fw/nw���ӘS�o�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0022]
//������㣯Ļ���T��
<voice name="����㣯Ļ���T" class="����������" src="voice/md04/0370080e261">
��ι��ι������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D




//�����L
	OnSE("se���L_����_��ͻ�M04",1000);

	CreateColorSP("�\Ļ��", 5000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Rotate("�}������", 0, @0, @0, @40, null,true);

	Delete("������*");
	Delete("Ļ���C");

	CreateTextureEX("������a", 1200, @-1050, @-700, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("������b", 1200, @-1050, @-700, "cg/st/3d����ʽ�AȾ_�T��_�k��.png");
	CreateTextureEXadd("�k��", 1600, @0, @0, "cg/ef/ef038_�������.jpg");
	Rotate("�k��", 0, @0, @180, @0, null, true);
	Zoom("�k��", 0, 2000, 2000, null, true);

	OnSE("se���L_����_��ͻ�M01",1000);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	Fade("������a", 200, 1000, null, false);
	Shake("������*", 1000000, 1, 1, 0, 0, 1000, null, false);
	Move("������*", 300, @1750, @1000, null, true);

	Zoom("������*", 800, 500, 500, DxlAuto, false);
	Zoom("@OnBG*", 800, 1300, 1300, DxlAuto, false);

	Move("������*", 800, -343, -475, AxlDxl, true);

	OnSE("se����_�z_���ͥ륮�`���01", 1000);

	EffectZoomadd(17000, 1500, 1000, "cg/ef/ef044_��a.jpg", false);

	CreateTextureEXadd("����`��", 1500, @0, @0, "cg/ef/ef044_��a.jpg");
	Fade("������b", 1000, 1000, null, false);
	Fade("����`��", 1000, 800, null, true);

	SetVolume("@OnSE*", 1000, 0, null);

	Move("����`��", 200, -1043, -1075, Axl1, false);
	Move("������*", 200, -1043, -1075, Axl1, false);

	Wait(150);
	OnSE("se����_늓�_���01", 1000);

	Fade("�k��", 0, 1000, null, true);
	Zoom("�k��", 300, 3000, 3000, Dxl1, false);
	DrawTransition("�k��", 150, 0, 1000, 100, null, "cg/data/beam_01_00_0.png", true);


	CreateColorSP("��", 25000, "WHITE");
	DrawTransition("��", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);


	OnSE("se���L_�Ɖ�_�z01", 1000);

	CreateTextureSP("���k", 15000, @0, @0, "cg/ef/ef022_��������ɢ�A.jpg");
	CreatePlainEX("�}��д", 15000);
	Fade("�}��д", 0, 1000, null, true);
	Shake("�}��д", 3000000, 5, 4, 0, 0, 1000, DxlAuto, false);

	Zoom("�}��д", 2000, 2000, 2000, Dxl1, false);
	EffectZoomadd(20000, 1000, 100, "cg/ef/ef022_��������ɢ�A.jpg", false);

	DrawTransition("��", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	Delete("��");


	Wait(500);
	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_038.nss"