//<continuation number="600">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc03_015vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc03_015vs.nss","DenziBladeCharge",true);
	Conquest("nss/mc03_015vs.nss","DenziBladeChargeSet",true);
	

	CP_AllSet("����");

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
	#ev902_����늴Œi����`�륬��_e=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_�إå�=true;
	#av_�ܩ`�ǥ�=true;
	#av_��ե��`=true;
	#av_�饤���`=true;

	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc03_016.nss";

}

scene mc03_015vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_014.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}


//����
//�����å������`
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	CreateCamera("��", 0, 0, 1000);
	MoveCamera("��", 0, @0, @-400, @0, null, true);

	CreateColorSP("�}ɫ��", 0, "#CC0000");

	CreateTextureSP("��/�}�ݱ���", 750, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	SetBlur("��/�}�ݱ���", true, 2, 500, 60, false);

	CreateTextureSP("��/�}�����}����", 800, Center, Middle, "cg/st/3d���å������`_����_ͨ��a.png");
	Move("��/�}�����}����", 0, @0, @-400, null, true);
	Request("��/�}�����}����", Smoothing);
	Zoom("��/�}�����}����", 0, 200, 200, null, true);

	CreateTextureSP("��/�}�����}����", 800, Center, Middle, "cg/st/3d�����˜�_�T��_���Lb.png");
	Move("��/�}�����}����", 0, @80, @286, null, true);
	Request("��/�}�����}����", Smoothing);
	Zoom("��/�}�����}����", 0, 200, 200, null, true);

	Rotate("��/�}�����}����", 0, @0, @0, @75, null,true);
	SetBlur("��/�}�����}����", true, 3, 500, 100, true);

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 0, true);

	SetFwL("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/015vs0010b33">
��������˵������������

//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/015vs0020b33">
������������

//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/015vs0030b33">
������֮��ĳ�Ժ�𣿡�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���¤����ˤ�˴������u
//��̫��һ�W�������`��
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,700,null,false);

	SoundPlay("@mbgm10",0,1000,true);

	Move("��/�}�����}����", 500, @-10, @-600, null, false);
	MoveCamera("��", 500, @0, @80, 300, Dxl2, false);

	Wait(500);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateSE("SE02","se���L_����_Ұ̫�����02");

	Wait(32);

	SL_rightup2(20010,@0, @0,1500);
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_rightupfade2(10);

//������ҕ��
//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	MyLife_Count(0,504);
	CP_IHPChange(0,7,null,false);
	CP_PowerChange(0,700,null,false);

	CP_SpeedChange(0,571,null,false);
	MyTr_Count(0,463);

	CP_HighChange(0,1248,null,false);
	CP_AziChange(0,267,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	Delete("��*");
	Delete("�}ɫ��");

	CreateCamera("��", 0, 0, 1000);
	CreateTextureSP("��/�}�ݺ��ձ���", 0, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");

	FadeDelete("�}ɫ�\", 300, false);

	CreateSE("SE02a","se���L_�n��_�nͻ01");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("�}ɫ��", 30000, "#FFFFFF");

	CreatePlainSP("�}������", 5000);
	Zoom("�}������", 0, 1250, 1250, null, true);
	SetBlur("�}������", true, 3, 500, 80, false);
	FadeDelete("�}ɫ��", 150, false);

	FadeDelete("�}������", 1000, false);
	Shake("�}������", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}������", 200, 1000, 1000, AxlDxl, true);



	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc03/015vs0040a00">
���������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ֱ�Mͻ�M
//�����Τ���һ�ġ����ȇy�ߺϤ��������`��
	CreateTextureEX("��/�}�����}����", 100, Center, Middle, "cg/st/3d���å������`_����_ͨ��a.png");
	Request("��/�}�����}����", Smoothing);
	Move("��/�}�����}����", 0, @0, @25, null, true);
	Zoom("��/�}�����}����", 0, 0, 0, null, true);

	MoveCamera("��", 800, @0, @0, 1500, null, false);

	Zoom("��/�}�����}����", 300, 250, 250, null, false);
	Fade("��/�}�����}����", 300, 1000, null, false);

	Wait(800);

	CreateSE("SE02","se����_���å��ԥå�_̽��01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@0);
	CP_LockOnFade(150,"off",false);

	MoveCamera("��", 800, @0, @0, 7500, null, false);

	Wait(400);

	CreateSE("SE02a","se����_���å��ԥå�_��å�����");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CP_LockOnChange(0,true);

	Wait(100);

	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 300, 1000, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	CreateSE("SE03","se���L_����_Ұ̫�����01");
	SL_leftdown2(20010,@0, @0,1500);
	MusicStart("SE03",0,1000,0,1500,null,false);
	SL_leftdownfade2(10);

	CreateSE("SE04a","se���L_����_��ꪏ���02");
	CreateSE("SE04b","se���L_����_���nͻ01");
	MusicStart("SE04a",0,1000,0,850,null,false);
	MusicStart("SE04b",0,1000,0,850,null,false);
	CreateTextureSPadd("�}����", 20110, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSP("�}��", 20100, Center, Middle, "cg/ef/ef044_��c.png");
	SetBlur("�}��", true, 3, 500, 60, false);
	Rotate("�}��", 500, @0, @0, @3600, null,false);
	SetBlur("�}��", true, 3, 500, 50, false);
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}��", 150, 3000, 3000, null, false);
	Zoom("�}����", 100, 1000, 1000, Dxl2, false);
	Shake("�}��", 150, 30, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 100, true);

	CreateColorSP("�}ɫ��", 21000, "#FFFFFF");
	Wait(32);

//����ܞ������ͻ�M��
//���������T���\�ӡ�������܈����ꡣ
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	Move("�}�����}", 0, @316, @0, null, true);
	Shake("�}�����}", 600000, 2, 0, 0, 0, 1000, null, false);

	Move("�}�����}", 6000, @-60, @0, DxlAuto, false);
	Move("�}�ݱ���", 600000, -100, @0, null, false);

	Delete("��*");

	Rotate("�}�����}", 0, @0, @0, @10, null,true);
	Request("�}�����}", Smoothing);

	DrawDelete("�ϱ���", 150, 1000, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 1000, "slide_01_03_1", true);

	Wait(600);

	SetVolume("SEL*", 500, 0, null);

//��һ�ġ������`��
	CreateSE("SE02","se���L_����_��ͻ�M02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("�}�����}", 200, @-2000, @0, Axl2, true);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	Wait(10);
	SL_leftdown2(20010,@0, @0,2000);
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdownfade2(10);

	Delete("�}�ݱ���*");
	Delete("�}�����}*");

	CreateTextureSP("�}�ݺ��ձ���", 0, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	MoveFFP1("@�}�ݺ��ձ���",1000);

	FadeDelete("�}ɫ�\", 300, false);

	CreateSE("SE02a","se���L_�n��_�nͻ01");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("�}ɫ��", 30000, "#FFFFFF");

	CreatePlainSP("�}������", 5000);
	Zoom("�}������", 0, 1250, 1250, null, true);
	SetBlur("�}������", true, 3, 500, 80, false);
	FadeDelete("�}ɫ��", 150, false);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1500,null,true);
	MusicStart("SEL01b",2000,750,0,1750,null,true);

	FadeDelete("�}������", 1000, false);
	Shake("�}������", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}������", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0050a01">
��������������
���侲�����侲����������

//��������
<voice name="����" class="��������" src="voice/mc03/015vs0060a01">
������װ��Ҫ���ˡ�����
���������ˡ���ι����

//��������
<voice name="����" class="��������" src="voice/mc03/015vs0070a01">
������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//���o��C��
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	MoveFFP1stop();
	Delete("�}�ݺ���*");

//���o��ͻ�M
	CreateTextureSPadd("�}����", 3100, -630, -180, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -630, -180, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, false);

	DrawDelete("�}ɫ�\", 150, 100, "zoom_01_00_1", false);

	SetFwC("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/015vs0080b33">
����Ϊ�Ƕ�ҩ������Ƕ����õ��˷ܼ�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0090a00">
�����첻��˵��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ˡ�
���������
�����ˡ�

���Ǽһ��������ÿ��һ�붼�������ޡ�
���Ǽһ����Ӱ��ÿ��һ�붼�������ޡ�

��<RUBY text="������������">���Ǽһ����</RUBY>��ÿһ�붼�������ޡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,700,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}��*");

	CreateCamera("��", 0, 0, 2000);
	SetAlias("��","��");

	CreateTextureSP("��/�}����", 0, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	CreateTextureSP("��/�}�����}����", 250, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	Request("��/�}�����}����", Smoothing);
	Zoom("��/�}�����}����", 0, 500, 500, null, true);
	Move("��/�}�����}����", 0, @732, @-10, null, true);

	CreateTextureSP("��/�}�����}����", 250, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");
	Request("��/�}�����}����", Smoothing);
	Zoom("��/�}�����}����", 0, 750, 750, null, true);
	Move("��/�}�����}����", 0, @-732, @10, null, true);

	Move("��/�}�����}����", 650, @-480, @0, null, false);
	Move("��/�}�����}����", 650, @480, @0, null, false);
	MoveCamera("��", 650, @0, @0, 550, AxlDxl, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

	Wait(500);

	Move("��/�}�����}����", 5000, @-32, @0, null, false);
	Move("��/�}�����}����", 5000, @32, @0, null, false);

	Wait(500);

//�����T����
	CreateSE("SE01a","se���L_����_�����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureEXadd("�}����", 3100, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ef/ef008_��������܉��.jpg");
	Zoom("�}����", 0, 10000, 10000, null, false);
	Fade("�}����", 0, 450, null, true);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//������B���������`��
	CreateSE("SE01b","se���L_����_Ұ̫�����01");
	MusicStart("SE01b",0,1000,0,1250,null,false);
	CreateTextureEXadd("�}�ݶ���", 3100, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	CreateTextureSP("�}�ݶ�", 3000, Center, Middle, "cg/ef/ef015_���ú�܉��.jpg");
	Zoom("�}�ݶ���", 0, 10000, 10000, null, false);
	Fade("�}�ݶ���", 0, 450, null, true);
	Zoom("�}�ݶ���", 200, 1000, 1000, Dxl2, false);
	Shake("�}�ݶ���", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}�ݶ���", 200, true);

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE02","se���L_����_��ꪏ���02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, Axl2, true);

	Delete("��*");
	Delete("�}��*");

	CreateTextureSP("�}�ݱ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	MoveFFP1("@�}�ݱ���",1000);

	CreateSE("SE01L","se���L_����_��ͻ�M05");
	MusicStart("SE01L",2000,1000,0,1250,null,true);

	FadeDelete("�}ɫ��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Ȼ��
���㾹Ȼ��

�������ʲô��

���㡣

���ɶ�
���ɶ�
���ɶ�
���ɶ�

��ֻ������£��Ǿ��Բ������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01L*", 1000, 500, null);

//����܇��������
	CreateTextureEX("�}�ţ���", 4100, Center, Middle, "cg/ev/ev178_ѩ܇ȥ��å������`��܇�u��_d.jpg");
	Fade("�}�ţ���", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070a]
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ�", 4090, -500, -180, "cg/ev/resize/ev178_ѩ܇ȥ��å������`��܇�u��_dl.jpg");
	Move("�}�ţ�", 4000, @0, -500, DxlAuto, false);
	FadeDelete("�}�ţ���", 1000, true);
	WaitKey(3000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070b]
����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("SE01L*", 1000, 1000, null);
	FadeDelete("�}�ţ�", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���㡪������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o��C��
//�����å������`������
	SetVolume("SE01L*", 1000, 0, null);
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,700,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}��*");

	CreateCamera("��", 0, 0, 2000);
	SetAlias("��","��");

	CreateTextureSP("��/�}����", 0, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	CreateTextureSP("��/�}�����}����", 250, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	Request("��/�}�����}����", Smoothing);
	Zoom("��/�}�����}����", 0, 250, 250, null, true);
	Move("��/�}�����}����", 0, @932, @-10, null, true);

	CreateTextureSP("��/�}�����}����", 250, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");
	Request("��/�}�����}����", Smoothing);
	Zoom("��/�}�����}����", 0, 400, 400, null, true);
	Move("��/�}�����}����", 0, @-932, @10, null, true);

	Move("��/�}�����}����", 650, @-480, @0, null, false);
	Move("��/�}�����}����", 650, @480, @0, null, false);
	MoveCamera("��", 650, @0, @0, 550, AxlDxl, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

	Wait(500);

	Move("��/�}�����}����", 10000, @-32, @0, null, false);
	Move("��/�}�����}����", 10000, @32, @0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��׹��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0100a01">
�����С�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ʧ�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0110a01">
������������˵����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����ɢ��ʧ��!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,1200,null,false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0120a01">
�������������أ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o��ͻ�M
	CreateColorEX("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 100, 1000, null, true);

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	MyLife_Count(0,504);
	CP_IHPChange(0,7,null,false);
	CP_PowerChange(0,700,null,false);

	CP_SpeedChange(0,704,null,false);
	MyTr_Count(0,542);

	CP_HighChange(0,1311,null,false);
	CP_AziChange(0,93,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateTextureSP("�}�����}����", 1000, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�����}����", Smoothing);
	Zoom("�}�����}����", 0, 200, 200, null, true);

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"on",true);

	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);

	MoveFFP1("@�}�ݺ��ձ���",1000);

	Delete("��");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1250,null,true);
	MusicStart("SEL01b",2000,750,0,1750,null,true);

	Zoom("�}�ݺ��ձ���", 60000, 1100, 1100, null, false);
	Zoom("�}�����}����", 60000, 750, 750, null, false);

	FadeDelete("�}ɫ��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��������������һ����������

������ʲô��

���޴���

�����������֮�����෴�Ķ������������ֶ�������Ϊ
�Լ����ܳ�Ϊһ����������

���޴��޴��޴��޴���

����ª��
�����ࡣ

�������޴�������˫��Ҳͬ�����ӡ�
��������ȫû������ļ�����

���ǽ��������������������µ����ơ�

�����Ǻ��ӵ����֡�

�����˵���Է򣬻���Է�ʧ��

��ֻ������ѧ��Ӱ��ĺ��ӡ�

�����ܡ�

����û�з����ڿ��е��ʸ�

������ص��ó��ӳԵ��źá�

����Ϊʲô����������

����������������

�����������ɵس��ʳ�

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 100, 0, null);

//������
//������ä��`��̫����
//�������`�����������w�֡�
//���֤֤饬�å������`
	CreateSE("SE01","se���L_����_���nͻ01");
	CreateSE("SE01a","se���L_����_�z��������03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ��", 20000, "#FFFFFF");

	Cockpit_AllFade0();
	CP_LockOnDelete();
	Delete("�}��*");
	CloudZoomDelete(0,false);

	CreateColorSP("�}ɫ", 0, "#CC0000");

	CreateCamera("��", 0, 0, 1000);
	SetAlias("��","��");
	MoveCamera("��", 0, @2048, @144, @0, null, true);

	CreateTextureSP("��/�}�ݱ���", 0, Center, Middle, "cg/bg/bg204_�����ر���_01.jpg");

	CreateTextureSP("��/�}�����}����", 250, Center, Middle, "cg/st/3d���å������`_����_ͨ��c.png");
	Request("��/�}�����}����", Smoothing);
	Zoom("��/�}�����}����", 0, 500, 500, null, true);
	Move("��/�}�����}����", 0, @2048, @144, null, true);

	Move("��/�}�����}����", 1000, @30, @0, null, false);
	Shake("��/�}�����}����", 2160000, 8, 6, 0, 0, 500, null, false);

	Fade("�}ɫ��", 300, 1000, null, false);
	DrawDelete("�}ɫ��", 300, 1000, "slide_05_00_0", true);

	Wait(1000);

	CreateTextureSP("��/�}�����}����", 250, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	Request("��/�}�����}����", Smoothing);
	Zoom("��/�}�����}����", 0, 750, 750, null, true);
	Move("��/�}�����}����", 0, @-2150, @144, null, true);

	MoveCamera("��", 600, @-4096, @0, 1250, DxlAuto, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ɡ�
��������

�������⺺���ж�ȡ����������ס�

���ֵ������ķ���Ҳ�кܶࡣ
�����������ķ��������������ķ�������ֹ��������
�ķ�����

�����н��������صķ�����
�����빥������˫���޷�֧�ŵĳ���������д�������
�ֵ������ķ�����

�����ǲ�֪���İɡ�
�����ֳ����ļ�����

�����ǰ�ս���;�������ͬ�Ĵ�����

���㵽<RUBY text="��������">���ֵط�</RUBY>����ֻ��������ѡ�

�����ҵ�������Ϸ��
��
����������ɱ����!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("�}ɫ�\", 19000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("��*");
	MoveFFP1stop();

//���o��C��
//������
//��늴ťѥ�`����

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc03/015vs0130a00">
��Ŷ����������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se����_������_�����Ϥ�������");
	MusicStart("SE02",0,1000,0,1500,null,false);
	CreateColorEXadd("�}ɫ��", 19100, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, Axl1, true);

	Delete("�}ɫ�\");

	Wait(300);

	CreateTextureSP("�}��", 4100, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_b.jpg");
	CreateTextureSP("�}�ݶ�", 4000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");
	CreateTextureEX("�ץ�}", 4110, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_e.jpg");
	CreateTextureEX("�ץ�}��", 4111, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_e.jpg");

	SetVertex("�ץ�}*", 800, 312);


	FadeDelete("�}ɫ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���Ҿۼ������ڵ�������
���ۼ������������١�������

�����������˵磬������˴š�

��������ξ���������ɵ�һ����
�������׵�İ��У����ʯֻ�е�ֽͬм�ļ�ֵ��


���Ǹ��Ѿ��ӵ�������ֻ�ǿ�����ߵ�Сľż�������
֮һ�Ŀ��ܷ�ס��һ����

��û�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��늴Œi���ʂ�
//���Ф��Ф��������k���äݤ��𻨡�
	CreateSE("SEL01","se����_늓�_���02");
	MusicStart("SEL01",0,1000,0,1500,null,true);
	Delete("�}��");
	DenziBladeCharge();

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mc03/015vs0140a00">
��������ң���������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0150a01">
����һ�£�
�����������!?��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0160a00">
������������Ц�𣡡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0170a01">
������ɱ����!?��


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0180a00">
��<RUBY text="������">��ɱ��</RUBY>����ʲô������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������װ�״�����<RUBY text="����">���д���</RUBY>��ͻȻ�ı���������
�����ƽ�塣����䳺��

����þ����ǽ�����<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0190a01">
������
�����������ľ������Ҳ�����ֹ����

//��������
<voice name="����" class="��������" src="voice/mc03/015vs0200a01">
�����ǣ������װɣ�
��������<RUBY text="����">����</RUBY>����

//��������
<voice name="����" class="��������" src="voice/mc03/015vs0210a01">
��������ֻɱ���ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0220a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 200, 1, null);

//���Bĸ����
	CreateSE("SE01","se�M��_�ե�å���Хå�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 21000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, true);

	CreateTextureSPmul("�}�����݄���", 20010, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateTextureSP("�}������", 20000, Center, Middle, "cg/ev/ev139_�y�򚢺�_a.jpg");
	SetTone("�}������", Sepia);

	Fade("�}ɫ��", 200, 0, null, true);

	Wait(300);

	Fade("�}ɫ��", 200, 1000, null, true);

	Delete("�}����*");

//���֥�å�������
	CreateColorSP("�}ɫ�\", 19900, "#000000");
	FadeDelete("�}ɫ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��
�����������������������ƶ�
�������������������������

��
�����������������ɱ��һ������
��������������ҲӦɱ��һ��<RUBY text="ͬ��">����</RUBY>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("SEL*", 4000, 1000, null);
	FadeDelete("�}ɫ�\", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0230a01">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0240a00">
�����������ء�����


{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0250a00">
����Ŷ��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0260a01">
�������侲����������

//��������
<voice name="����" class="��������" src="voice/mc03/015vs0270a01">
�����ڻ���֪��������������û�С�
������Ҳ����һ������ˡ�
��������ô�룬����Ҳ�����ǻ����������ļ�
������԰ɣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0280a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0290a01">
�����ԡ������Ա�������
������㲻�������Ϊ<RUBY text="����">����</RUBY>��ɱ�ˡ�
�������������Ϊ<RUBY text="����">����</RUBY>��������

//��������
<voice name="����" class="��������" src="voice/mc03/015vs0300a01">
�����ڣ�Ӧ��ֻ������Ҫ���¡���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0310a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);

//�����ͥ륮�`�ŗ�
	CreateSE("SE01","se����_냇��_�k��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 19100, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, Axl1, true);

	Delete("�}��*");
	Delete("�ץ�*");
	Delete("��*");

	Wait(300);

	CreateTextureSP("�}��", 4100, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_a.jpg");

	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0320a01">
����������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0330a00">
�������ܿ������Ĳ�λ��
��������������������Ԯ�����ξ���ǡ���



{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0340a01">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�M
//�����å������`��׽
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	DrawDelete("�ϱ���", 300, 100, "slide_01_03_1", true);

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	MyLife_Count(0,504);
	CP_IHPChange(0,7,null,false);
	CP_PowerChange(0,700,null,true);
	CP_PowerChange(400,470,null,false);

	CP_SpeedChange(0,611,null,false);
	MyTr_Count(0,475);

	CP_HighChange(0,1111,null,false);
	CP_AziChange(0,10,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");

	CreateTextureEX("�}�����}����", 1000, Center, Middle, "cg/st/3d���å������`_����_ͨ��c.png");
	Request("�}�����}����", Smoothing);
	Zoom("�}�����}����", 0, 200, 200, null, true);

	DrawDelete("�}��ܞ", 300, 100, "circle_01_00_1", true);

	CreateSE("SE02","se���L_����_��ͻ�M02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("�}�����}����", 300, @0, @-30, DxlAuto, false);
	Fade("�}�����}����", 300, 1000, null, true);

	CreateSE("SE03","se����_���å��ԥå�_��å�����");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@-30);
	CP_LockOnFade(300,"off",true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����������׼�˿����ĵ��
���ҽ�ӿ��ķ�ŭ���븹�ס�

�����ڲ����롣

�������в������̡�
���������б���ļ��㡣

��û�л�׹�ı�Ҫ��
���������Ϳ��ԡ�

�������˷�������
����ʹΪ��֮��Ҫ�����¡�

��Ϊ��Ҫ�ȳ����ǣ���֪����Ҫʹ�ö�����������
��
��
�������ǣ�Ϊ��ȷ������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mc03/015vs0350a00">
�������ء�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����ȥ�롣
����ȥ�롣

������ֻҪն���Ϳ����ˡ�

��������ǰ���û������Ҳ�޷����ߵĶ������������
�ȵ�����ն������������޶ȵ����ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}�����}����", 600, 600, 600, null, false);
	Zoom("�}�ݺ��ձ���", 600, 1100, 1100, null, false);
	CP_LockOnChange(300,false);

	Wait(500);

	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/mc03/015vs0360a00">
��������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���i�������
//���Х��`���郎�Z������
	CreateSE("SE02","se����_��x_�k��03");
	CreateSE("SE02a","se����_�z_װ��04");
	MusicStart("SE02",0,1000,0,750,null,false);
	MusicStart("SE02a",0,1000,0,1250,null,false);

//������ѩ`��һ�W
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");

	Wait(10);

	SL_leftdown2(20010,@0, @0,2000);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdownfade2(10);

	Delete("�}�����}*");
	CP_LockOnDelete();

	FadeDelete("�}ɫ�\", 1000, true);

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0370a01">
����������������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0380a00">
��ʲô����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����������ˡ���
��֮�󣬽���һ����

�������¿������Լ�����֪��
��������û�и��<RUBY text="����">˳��</RUBY>��

�������<k>����ն��֮ǰ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/mc03/015vs0390a00">
����ô���ܡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
������Ǵ�������������ҷ���Ϊ������

����������û���κα仯��
���������ѣ���ʧ�ˡ�

���Ѿ����ﶼ�Ҳ����ˡ�
��
�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0400a01">
��ʲô����������
��������Ϯ!!��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0410a00">
���������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0420a01">
��ʲ����ʲô�����
����<RUBY text="��������">����˷�</RUBY>!!��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0430a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
������������Ũ������ģ�����ż������ֳ�������
���еĶ�ҡ��
�����ǣ���ʹ��ˣ���Ҳ�ǿɿ��ġ�

����������˷���ʲô��˼��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/mc03/015vs0440a00">
����仰�һ����㡣�侲Щ��������
������������˴��ĸ�����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0450a01">
���ͣ�����˵��
�����棬���棬���棬���С�����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0460a00">
��ι����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
������ֻ��һ�Ϊʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0470a01">
���о���<RUBY text="����">����</RUBY>!!
������!!��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/015vs0480a00">
��ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ѥ������å������`
//���إåɡ��ܩ`�ǥ����饤���`����ե��`
	#av_�إå�=true;
	#av_�ܩ`�ǥ�=true;
	#av_��ե��`=true;
	#av_�饤���`=true;

	CreateTextureSP("�}�����}�����^", 1000, Center, OutBottom, "cg/st/3d���å������`��_�T��_ͨ��.png");
	CreateTextureSP("�}�����}������", 950, Center, OutTop, "cg/st/3d���å������`��_�T��_ͨ��a.png");
	CreateTextureSP("�}�����}������", 1000, OutLeft, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");
	CreateTextureSP("�}�����}������", 1000, OutRight, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Request("�}�����}����*", Smoothing);

	$������=0.5;
	$�����ʴ��낎=$������*1000;

	SetVertex("�}�����}�����^", center, top);
	SetVertex("�}�����}������", center, bottom);
	SetVertex("�}�����}������", left, middle);
	SetVertex("�}�����}������", right, middle);
	Rotate("�}�����}������", 0, @0, @0, @90, null,true);

	Move("�}�����}�����^", 0, @140, @0, null, true);
	Move("�}�����}������", 0, @-340, @-260, null, true);


	Zoom("�}�����}����*", 0, $�����ʴ��낎, $�����ʴ��낎, null, true);

	$�^������=ImageVertical("�}�����}�����^");
	$�^�~�����˂�=$�^������*$������;
	$�^�~�����˴��낎=$�^�~�����˂�*(-1);

	$�奵����=ImageVertical("�}�����}������");
	$��~�����˂�=$�奵����*$������+576;

	$�󥵥���=ImageHorizon("�}�����}������");
	$��~�����˂�=$�󥵥���*$������+1024;

	$�ҥ�����=ImageHorizon("�}�����}������");
	$�ҽ~�����˂�=$�ҥ�����*$������;
	$�ҽ~�����˴��낎=$�ҽ~�����˂�*(-1);

	CreateSE("SE01a","se���L_����_��ͻ�M01");
	MusicStart("SE01a",0,1000,0,1200,null,false);
	Move("�}�����}�����^", 300, @30, $�^�~�����˴��낎, null, false);

	Wait(150);

	CreateSE("SE01b","se���L_����_��ͻ�M01");
	MusicStart("SE01b",0,1000,0,800,null,false);
	Move("�}�����}������", 300, @-60, $��~�����˂�, null, false);

	Wait(150);

	CreateSE("SE01c","se���L_����_��ͻ�M01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Move("�}�����}������", 300, $��~�����˂�, @80, null, false);

	Wait(150);

	CreateSE("SE01d","se���L_����_��ͻ�M01");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	Move("�}�����}������", 300, $�ҽ~�����˴��낎, @-120, null, true);

	Delete("�}�����}����*");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/mc03/015vs0490a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
��������ԣ�˼��ֹͣ��
�����ǣ����б�ĵط�����ת���ҵ���ʶ�г�����һЩ
����

�����ֵľ�������Ҫչ��<RUBY text="����">��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 18000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

	Cockpit_AllFade0();

//���إåɣ�����Τʤ��ǥ�����
//�����å������`�����壩���^�����x���å�
	CreateSE("SE01","se�M��_����_�ե�å���Хå�01");
	CreateSE("SE01a","se�M��_����_�ե�å���Хå�01");
	CreateSE("SE01b","se�M��_����_�ե�å���Хå�01");
	CreateSE("SE01c","se�M��_����_�ե�å���Хå�01");

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("�}�����}����", 18100, -990, -1180, "cg/st/resize/3d���å������`_����_ͨ��am.png");
	SetTone("�}�����}����", Sepia);

	Fade("�}ɫ��", 300, 0, null, true);

	CreateTextureEX("�}�����}�����^", 18110, -280, -370, "cg/st/resize/3d���å������`��_�T��_ͨ��m.png");
	Move("�}�����}�����^", 3000, @0, @-90, null, false);
	Fade("�}�����}�����^", 300, 1000, null, true);
	Wait(1000);

//���ܩ`�ǥ�
//�����å������`���������x���å�
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);

	Delete("�}�����}�����^");

	Move("�}�����}����", 1, -1340, -1440, null, true);
	Fade("�}ɫ��", 300, 0, null, true);

	CreateTextureEX("�}�����}������", 18110, -400, -555, "cg/st/resize/3d���å������`��_�T��_ͨ��am.png");
	Move("�}�����}������", 3000, @90, @0, null, false);
	Fade("�}�����}������", 300, 1000, null, true);

	Wait(1000);
	Fade("�}ɫ��", 100, 1000, null, true);

//����ե��`
//�����å������`�����㥢�å�
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);

	Delete("�}�����}������");

	Move("�}�����}����", 1, -1587, -1924, null, true);
	Fade("�}ɫ��", 300, 0, null, true);

	CreateTextureEX("�}�����}������", 18110, -80, -219, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Move("�}�����}������", 3000, @-90, @0, null, false);
	Fade("�}�����}������", 300, 1000, null, true);

	Wait(1000);
	Fade("�}ɫ��", 100, 1000, null, true);

//���饤���`
//�����å������`�����㥢�å�
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);

	Delete("�}�����}������");

	Move("�}�����}����", 1, -978, -1933, null, true);
	Fade("�}ɫ��", 300, 0, null, true);

	CreateTextureEX("�}�����}������", 18110, 170, -270, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Move("�}�����}������", 3000, @90, @0, null, false);
	Fade("�}�����}������", 300, 1000, null, true);

	Wait(1000);

//������
	EfRecoIn1(20000,600);

	CreateTextureSP("�}���뱳��", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	Delete("�}ɫ�\*");
	Delete("�}ɫ��");
	Delete("�}�����}����*");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw����֩��_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0500a01">
��������ְ���������ô�롣
�������û�п������Ǹ����ߣ�
����<RUBY text="��������������">ȫ�ٵس��˹���</RUBY>��
��<RUBY text="����������������������">Ȼ����ȫ��������߹���</RUBY>����

//��������
<voice name="����" class="��������" src="voice/mc03/015vs0510a01">
�����˵������ʮ����ô�����ƽ�������ת��
������ǿ<RUBY text="����">û��</RUBY>�ֱ�����塣
����������ʮ����
�������Ǿ��Բ����������İ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);

	Delete("�}����*");

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
������������쳣��

�����������Ĺ�����

���ܵ�����ǰ�ͻ�������<k>
��
����������������������������������<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/mc03/015vs0520a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���饤���`��ե��`��혡����u��
//��ʳ�餦�������󤬤��`��
	CreateTextureSP("�}�����}������", 1110, Center, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Zoom("�}�����}������", 0, 150, 150, null, true);
	Move("�}�����}������", 0, @200, @-400, null, true);

	CreateTextureSP("�}�����}������", 1100, Center, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Move("�}�����}������", 0, @-256, @576, null, true);
	Zoom("�}�����}������", 0, 150, 150, null, true);

	Request("�}�����}����", Smoothing);

//��������ݳ�����Υ��`��
	CreateSE("SE01a","se���L_����_��ͻ�M01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("�}�����}������", 400, @-800, @400, null, true);

	Wait(200);

	CreateSE("SE01b","se���L_����_��ͻ�M02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Rotate("�}�����}������", 0, @0, @180, @0, null,true);
	Zoom("�}�����}������", 200, 3000, 3000, Dxl2, false);
	Move("�}�����}������", 200, @800, @-100, null, false);

	Wait(280);

	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("�}ɫ��", 19900, "#FFFFFF");

	CreatePlainEX("�}��д", 1000);
	Fade("�}��д", 0, 300, null, true);
	Shake("�}��д", 700, 20, 20, 0, 0, 500, Dxl1, false);

	Delete("�}�����}������");
	Wait(10);
	FadeDelete("�}ɫ��", 200, true);

//��������ݳ����ҤΥ��`��
	CreateSE("SE01a","se���L_����_��ͻ�M01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("�}�����}������", 400, @100, @-1000, null, true);

	Wait(200);

	Move("�}�����}������", 0, @700, @0, null, true);


	CreateSE("SE01b","se���L_����_��ͻ�M02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Rotate("�}�����}������", 0, @0, @180, @0, null,true);
	Zoom("�}�����}������", 200, 3000, 3000, Dxl2, false);
	Move("�}�����}������", 200, @-800, @700, null, false);

	Wait(280);

	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("�}ɫ��", 19900, "#FFFFFF");

	CreatePlainEX("�}��д", 1000);
	Fade("�}��д", 0, 300, null, true);
	Shake("�}��д", 700, 20, 20, 0, 0, 500, Dxl1, false);

	Delete("�}�����}������");
	Wait(10);
	FadeDelete("�}ɫ��", 200, true);

//������󡸣ãУ���ʾ�Ϥ��ʤ����ɥѥ�Ϥ���ʸФ��ˤʤäƤ롹
/*
	MyLife_Count(0,432);
	CP_IHPChange(0,6,null,false);
	CP_PowerChange(0,450,null,false);
*/

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/mc03/015vs0530a00">
���ء�������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 1000);
	CreateColorSPover("�}ɫ�v", 500, "#339999");
	CreateColorEXadd("�}ɫ�\", 510, "#FFFFFF");
	Fade("�}ɫ�\", 0, 600, null, true);
	DrawTransition("�}ɫ�\", 0, 0, 300, 300, null, "cg/data/slide_06_00_1.png", true);

	CreateTextureSP("Circuit01", 200, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
	CreateTextureSP("Circuit02", 200, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");

	SetVertex("Circuit01", 0, 0);
	SetVertex("Circuit02", 0, 0);
	Rotate("Circuit01", 0, @0, @0, 90, null,true);
	Rotate("Circuit02", 0, @0, @0, 90, null,true);

	Move("Circuit01", 0, @+5400, @0, null, true);
	Move("Circuit02", 0, @+5400, @0, null, true);
	Zoom("Circuit01", 0, 2000, 2000, null, true);
	Zoom("Circuit02", 0, 2000, 2000, null, true);

	CreateSCR1("@Circuit01","@Circuit02",600,@0, -4000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
�����ǣ�
�������������ǣ�

���Ǽһ������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��д", 1000, true);

	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("�}�����}�^", 1100, Center, OutBottom, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Move("�}�����}�^", 0, @-150, @0, null, true);
	Zoom("�}�����}�^", 0, 600, 600, null, true);
	Request("�}�����}�^", Smoothing);

	$�k�S��ȫλ��=ImageHorizon("�}�����}�^")*(-1);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�����}�^", 330, @0, -134, null, false);

	Wait(300);

	Move("�}�����}�^", 10000, @0, -138, null, false);

	SetFwC("cg/fw/fw���å������`��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/015vs0540b33">
���ȣ���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�����}�^", 330, @0, $�k�S��ȫλ��, null, false);

	CreateTextureSP("�}�����}��", 1100, Center, OutBottom, "cg/st/3d���å������`��_�T��_ͨ��a.png");
	Rotate("�}�����}��", 0, @180, @0, @-90, null,true);
	Move("�}�����}��", 0, @300, @0, null, true);
	Zoom("�}�����}��", 0, 450, 450, null, true);
	Request("�}�����}��", Smoothing);

	$�k�S��ȫλ�ã�=ImageHorizon("�}�����}��")*(-1);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�����}��", 330, @0, -329, null, false);

	Wait(300);

	Move("�}�����}��", 10000, @0, -333, null, false);

	SetFwC("cg/fw/fw���å������`��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0451]
//���ܩ`�ǥ�����
<voice name="�ܩ`�ǥ���" class="�ܩ`�ǥ���" src="voice/mc03/015vs0550b08">
���£���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�����}��", 330, @0, $�k�S��ȫλ�ã�, null, false);

	CreateTextureSP("�}�����}��", 1100, Center, OutBottom, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Move("�}�����}��", 0, @-300, @0, null, true);
	Zoom("�}�����}��", 0, 500, 500, null, true);
	Rotate("�}�����}��", 0, @0, @0, @-90, null,true);
	Request("�}�����}��", Smoothing);

	$�k�S��ȫλ�ã�=ImageHorizon("�}�����}��")*(-1);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�����}��", 330, @0, -346, null, false);

	Wait(300);

	Move("�}�����}��", 10000, @0, -350, null, false);

	SetFwC("cg/fw/fw���å������`��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0452]
//���饤���`����
<voice name="�饤���`��" class="�饤���`��" src="voice/mc03/015vs0560b10">
���ң����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�����}��", 330, @0, $�k�S��ȫλ�ã�, null, false);

	CreateTextureSP("�}�����}��", 1100, Center, OutBottom, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Move("�}�����}��", 0, @100, @0, null, true);
	Zoom("�}�����}��", 0, 500, 500, null, true);
	Rotate("�}�����}��", 0, @0, @0, @90, null,true);
	Request("�}�����}��", Smoothing);

	$�k�S��ȫλ�ã�=ImageHorizon("�}�����}��")*(-1);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�����}��", 330, @0, -236, null, false);

	Wait(300);

	Move("�}�����}��", 10000, @0, -240, null, false);

	SetFwC("cg/fw/fw���å������`��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0453]
//����ե��`����
<voice name="��ե��`��" class="��ե��`��" src="voice/mc03/015vs0570b13">
���̣���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}�����}��", 330, @0, $�k�S��ȫλ�ã�, null, true);

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 200, 1000, null, true);

	Delete("�}�����}����*");
	Delete("@ProSCR*");
	Delete("Circuit*");
	Delete("�}ɫ�v");
	Delete("�}ɫ�\");

	Wait(200);

	Delete("�}��*");
	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/bg001_��b_01.jpg");

	CreateTextureSP("�}�����}�����^", 1120, Center, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");
	CreateTextureSP("�}�����}������", 1100, Center, Middle, "cg/st/resize/3d���å������`��_�T��_ͨ��am.png");
	CreateTextureSP("�}�����}������", 1105, Center, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");
	CreateTextureSP("�}�����}������", 1110, Center, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Request("�}�����}����*", Smoothing);
	Zoom("�}�����}�����^", 0, 500, 500, null, true);
	Zoom("�}�����}������", 0, 800, 800, null, true);
	Zoom("�}�����}������", 0, 380, 380, null, true);
	Zoom("�}�����}������", 0, 380, 380, null, true);

	Move("�}�����}�����^", 0, 310, -242, null, true);
	Move("�}�����}������", 0, -470, -540, null, true);
	Move("�}�����}������", 0, -50, -86, null, true);
	Move("�}�����}������", 0, -366, -169, null, true);

	Rotate("�}�����}�����^", 0, @0, @0, @30, null,true);
	Rotate("�}�����}������", 0, @0, @180, @0, null,true);

	Move("�}�����}�����^", 10000, @50, @0, null, false);
	Move("�}�����}������", 10000, @40, @0, null, false);
	Move("�}�����}������", 10000, @48, @0, null, false);
	Move("�}�����}������", 10000, @34, @0, null, false);

	FadeDelete("�}ɫ��", 1000, true);

	SetFwC("cg/fw/fw���å������`��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0454]
//�������k��ע��
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/015vs0580b33">
��<RUBY text="����һ�塪����������">���塪��������������</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ��", 10000, "#FFFFFF");
	Fade("�}ɫ��", 1000, 1000, null, false);

	Move("�}�����}�����^", 200, @1500, @0, Axl2, false);
	Wait(100);
	Move("�}�����}������", 200, @1500, @0, Axl1, false);
	Wait(100);
	Move("�}�����}������", 200, @1500, @0, Axl3, false);
	Wait(80);
	Move("�}�����}������", 200, @1500, @0, Axl3, false);

	WaitAction("�}ɫ��", null);
	Delete("�}�����}����*");

//�����T���Y������
//�����Ĥ�Ͼ����᤬�Ф���äƤ����餳���`�ө`�ǡ�
//��ͻ�å������`�������ϥ����`�󥽩`
	SetVolume("SE*", 300, 0, null);

	MovieSESet(20000,"mv����","se����_mv��_���å������`����");
	MovieSEStart(2000);

	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d���å������`_����_ͨ��b.png");
	Request("�}�����}", Smoothing);
	Zoom("�}�����}", 0, 550, 550, null, true);

	CreateSE("SE01","se����_냇��_�z�ǈ���02");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeDelete("�}ɫ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
�����Ｏ�ϡ�
����Ϊһ�

���ԡ�
��<RUBY text="��������">����һ��</RUBY>��

���Ǿ��ǡ��������ħ����ʵ��ݣ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="��������" src="voice/mc03/015vs0590a01">
������ʲô��������������!!��


{	FwL("cg/fw/fw���å������`_ͨ��.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc03/015vs0600b33">
��Ҳ���Ǻ��ǵ��ҵ�����Ʒ�֡���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
����ԭ�Ĺ���������߳��������������޷���Ϊ�ش�
�������С����ǵ����ǲ���������ء����������µ���
����


{	CreateSE("SE01","se���L_����_�����`�󥽩`02_L");
	MusicStart("SE01",1000,1000,0,600,null,true);
	SetFrequency("SE01", 3000, 1000, Axl2);}
��<RUBY text="�ã����">������</RUBY>���ٵ���ת�����������˺�ë���𡭡�����


</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc03_016.nss"

.//�ޥ���늴Œi����늣�
function DenziBladeCharge()
{
	CreateProcess("��늴Œi����능�`��", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("��늴Œi����능�`��","��늴Œi����능�`��");
	Request("��늴Œi����능�`��", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�ץ�}", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 300, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 250, 0, null, true);
	Wait(50);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�ץ�}", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 200, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�ץ�}", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 150, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	}

}