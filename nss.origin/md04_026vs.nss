//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_026vs.nss_MAIN
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
	#bg104_���ӘS������󴬷���_01=true;
	#ev802_�����}����`�����Σ�=true;
	#bg001_��a_01=true;
	#bg001_��b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_027.nss";

}

scene md04_026vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"md04_025.nss"


//���󴬿�
	PrintBG("�ϱ���", 30000);

	OnBG(100, "bg104_���ӘS������󴬷���_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg104_���ӘS������󴬷���_01.jpg");
	CreateTextureSP("�}����100", 150, Center, Middle, "cg/bg/resize/bg103_���ӘS������ٛg����_01l.jpg");

	Move("�}����100", 10000, @-200, @0, null, false);

	FadeDelete("�ϱ���", 2000, true);


	SoundPlay("@mbgm34", 0, 1000, true);

	SetFont("@����", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("��Ļ01",30411,Center,inherit,auto,auto,"һ���¶���");
	Fade("��Ļ01", 0, 0, null, true);
	Request("��Ļ01",NoLog);
	Request("��Ļ01",PushText);
	Rotate("��Ļ01", 0, @0, @0, 90, null, false);
	Move("��Ļ01", 0, @300, @10, null, false);
	SetBacklog("һ���¶���", null, null);



	Fade("��Ļ*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("��Ļ*", 300, 0, null, true);

	FadeDelete("�}����100", 1500, true);


/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��
������������������һ���¶���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/
	CreateSE("SE01","se����_����_������L��03");
	MusicStart("SE01",2000,500,0,1000,null,false);

	Wait(1000);

	SetNwC("cg/fw/nw�����_��ʿ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�󴬱�����
<voice name="����㣯�󴬱���" class="����������" src="voice/md04/026vs0010e164">
��ս���������!!��

{	NwC("cg/fw/nw�����_��ʿ��.png");}
//������㣯�󴬱��¡�
<voice name="����㣯�󴬱���" class="����������" src="voice/md04/026vs0020e165">
��ͣ����ͣ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|�ġ��Ѥ�Ѥ�
//����܇�M�ġ���������

	CreateSE("SE02","se���L_����_�饤�ե�Ĥ�4��");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(200);
	CreateSE("SE03","se�\��_��܇_������");
	MusicStart("SE03",1000,1000,0,1100,null,true);
	Shake("�}����50", 6000, 0, 3, 0, 0, 500, AxlDxl, false);

	Wait(3000);
	SetVolume("SE03", 4000, 300, null);

	SetNwC("cg/fw/nw�����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�����ߡ�
<voice name="����㣯������" class="����������" src="voice/md04/026vs0030e163">
���ҷ���Ӫ�ģ���Ҫ��ν����!!
��ͳͳ����!!��

{	NwC("cg/fw/nw�����_��ʿ��.png");}
//������㣯�󴬱��¡�
<voice name="����㣯�󴬱���" class="����������" src="voice/md04/026vs0040e165">
����ξ!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���o�T��
//��̫��һ�W
//�������`�󡣑�܇����



	StL(1000, @100, @0, "cg/st/3d�ũ�ʽָ�]��_����_���Lc.png");
	OnSE("se����_�z_�l����01", 1000);
	Move("@StL*", 300, @-100, @0, Dxl1, false);
	FadeStL(300, true);

	WaitKey(300);
	DeleteStL(0, true);
	StL(1000, @0, @0, "cg/st/3d�ũ�ʽָ�]��_����_���La.png");
	FadeStL(160, true);
	WaitKey(300);
	Move("@StL*", 300, @-50, @0, Dxl3, true);

	WaitKey(800);
	Move("@StL*", 300, @200, @0, Axl3, false);
	WaitKey(200);
	OnSE("se���L_����_�����01",1000);
	OnSE("se���L_����_�����01",1000);
	CreateTextureSP("�}��1", 2002, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	WaitKey(150);
	OnSE("se���L_�Ɖ�_�z04",1000);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 19000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");

	DeleteStL(0,true);

	
	FadeDelete("�}��1", 0, true);
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 1, 300, 30, false);
	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, true);
	WaitKey(250);
	StR(1000, @-250, @0, "cg/st/3d�ũ�ʽָ�]��_����_���Lb.png");
	FadeStR(0, true);
	Move("@StR*", 1000, @150, @0, Dxl1, false);
	FadeDelete("�}��*", 1000, true);

	SetNwC("cg/fw/nw�����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�����ߡ�
<voice name="����㣯������" class="����������" src="voice/md04/026vs0050e163">
������������ǵĵ��ˣ�
������һ����̫û��Ϣ�ˣ���

//������㣯�����ߡ�
<voice name="����㣯������" class="����������" src="voice/md04/026vs0060e163">
������С���ĳ�����ƽ���ɣ��ǳ�������̫�ɵ�
����ʮ�����ᡣ
����غ����³ɰ�֮ս����ս���ڴ����Ѿ��򣡡�

//������㣯�����ߡ�
<voice name="����㣯������" class="����������" src="voice/md04/026vs0070e163">
��ǿ�У�����ɣ�
���ҽ�����㲢�ɾ͹���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|�ļ���
	CreateTextureEXadd("�}����100", 10000, 350, Middle, "cg/ef/ef044_��c.png");


	CreateSE("SE03","se���L_�|��_�C�v�|����02_L");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MFlash(30,20);
	Shake("@StR*", 2500, 8, 1, 0, 0, 1000, Axl3, false);
	StR(1000, @-100, @0, "cg/st/3d�ũ�ʽָ�]��_����_�l��.png");
	FadeStR(300,false);

	Move("@StR*", 2000, @50, @0, Dxl1, false);

	Rotate("�}����100", 10000, @0, @0, @360000, null,false);
	Fade("�}����100", 0, 1000, null, true);
	Wait(50);
	Move("�}����100", 0, -49, -551, null, true);
	Wait(50);
	Move("�}����100", 0, -20, -350, null, true);
	Wait(50);
	Move("�}����100", 0, -100, -580, null, true);
	Wait(50);
	Move("�}����100", 0, -50, -650, null, true);
	Wait(50);
	Move("�}����100", 0, -49, -551, null, true);
	Wait(50);
	Move("�}����100", 0, -20, -350, null, true);
	Wait(50);
	Move("�}����100", 0, -100, -580, null, true);
	Wait(50);
	Move("�}����100", 0, -50, -650, null, true);
	FadeDelete("�}����100", 200, true);



	SetNwC("cg/fw/nw�����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯�����ߡ�
<voice name="����㣯������" class="����������" src="voice/md04/026vs0080e163">
��Ŷ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev802���h�Ĥܩ`��
//���o�T����ֱ�ġ�ɢ�A
	CreateColorEX("�\Ļ��", 25000, "BLACK");

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateTextureEX("�}����100", 1100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureEXadd("�}����200", 1100, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	SetVertex("�}����*", 674, 293);

	Zoom("�}����*", 1000, 2000, 2000, Dxl2, false);
	Fade("�}����100", 50, 1000, null, true);
	Fade("�}����200", 100, 1000, null, true);

	MFlash(0,0);

	Wait(500);
	OnSE("se���L_����_���׷���", 1000);

	CreateTextureSPover("�}����", 19000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	DeleteStA(0, false);
	Delete("�}����*");
	SetVertex("�}��*", 674, 293);
//	SetBlur("�}����", true, 3, 300, 30, false);
	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, true);
	WaitKey(250);
	FadeDelete("�}��*", 1000, true);
	SetVolume("@SE0*", 2500, 0, null);
	WaitKey(500);

//����
	Fade("�\Ļ��", 2000, 1000, null, true);
	OnBG(100, "bg001_��a_01.jpg");
	FadeBG(0, true);
	Wait(1000);
	CreateTextureSP("�}����100", 10000, Center, Middle, "cg/bg/bg001_��b_01.jpg");
	Request("�}����100", Smoothing);

	Zoom("�}����100", 0, 1200, 1200, null, true);

	Zoom("�}����100", 10000, 1000, 1000, null, false);

	FadeDelete("�\Ļ��", 2000, true);

	SetFont("@����", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("��Ļ01",30411,Center,inherit,auto,auto,"һ��������");
	Fade("��Ļ01", 0, 0, null, true);
	Request("��Ļ01",NoLog);
	Request("��Ļ01",PushText);
	Rotate("��Ļ01", 0, @0, @0, 90, null, false);
	Move("��Ļ01", 0, @300, @10, null, false);
	SetBacklog("һ��������", null, null);



	Fade("��Ļ*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("��Ļ*", 300, 0, null, true);
	Delete("��Ļ*");
/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��
������������������һ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/
//���M�v܊�T����`�����
//�������

/*
	CreateTextureEX("�}�ӣԣ�1001", 1400, @100, @-250, "cg/st/3d��`�����_�T��_���L.png");
	CreateTextureEX("�}�ӣԣ�1002", 1300, @-300, @-50, "cg/st/3d��`�����_�T��_���L.png");
	CreateTextureEX("�}�ӣԣ�1003", 1100, @-300, @-350, "cg/st/3d��`�����_�T��_���L.png");
	CreateTextureEX("�}�ӣԣ�1004", 1200, @-500, @-250, "cg/st/3d��`�����_�T��_���L.png");

	Request("�}�ӣԣ�100*", Smoothing);

	Zoom("�}�ӣԣ�1001", 0, 800, 800, null, false);
	Zoom("�}�ӣԣ�1002", 0, 500, 500, null, false);
	Zoom("�}�ӣԣ�1003", 0, 250, 250, null, false);
	Zoom("�}�ӣԣ�1004", 0, 300, 300, null, false);

	Shake("�}�ӣԣ�1001", 10000000, 1, 1, 0, 0, 600, null, false);
	Shake("�}�ӣԣ�1002", 10000000, 1, 1, 0, 0, 800, null, false);
	Shake("�}�ӣԣ�1003", 10000000, 1, 1, 0, 0, 1000, Dxl3, false);
	Shake("�}�ӣԣ�1004", 10000000, 1, 1, 0, 0, 900, Axl3, false);
	Fade("�}�ӣԣ�100*", 300, 1000, null, true);
*/


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");



	CreateTextureEX("����飱/������01", 600, @600, @-200, "cg/st/3d��`�����_�T��_���L.png");
	CreateTextureEX("����飱/������02", 350, @700, @-0, "cg/st/3d�����_�T��_���L.png");
	CreateTextureEX("����飱/������03", 250, @700, @-300, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	CreateTextureEX("����飱/������04", 100, @800, @-200, "cg/st/3d��`�����_�T��_ͨ��.png");

	Fade("����飱/������01", 0, 1000, null, false);
	Fade("����飱/������02", 0, 1000, null, false);
	Fade("����飱/������03", 0, 1000, null, false);
	Fade("����飱/������04", 0, 1000, null, false);

	Zoom("����飱/������01", 0, 800, 800, null, false);
	Zoom("����飱/������02", 0, 500, 500, null, false);
	Zoom("����飱/������03", 0, 300, 300, null, false);
	Zoom("����飱/������04", 0, 250, 250, null, false);

	Move("����飱/������01", 0, 41, -218, null, true);
	Move("����飱/������02", 0, -268, -45, null, true);
	Move("����飱/������03", 0, -429, -206, null, true);
	Move("����飱/������04", 0, -257, -304, null, true);

	Request("����飱/������0*", Smoothing);

	OnSE("se���L_����_��ͻ�M03", 1000);
	CreateSE("ͣ��", "se���L_����_������02_L");
	MusicStart("ͣ��", 0, 700, 0, 1000, null,true);


$��`�ץ�`�֥ʥå��� = "@����飱/������01";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@����飱/������02";
$��`�ץ�`�֥����ࣲ = 20000;

$��`�ץ�`�֥ʥå����� = "@����飱/������03";
$��`�ץ�`�֥����ࣳ = 15000;

$��`�ץ�`�֥ʥå����� = "@����飱/������04";
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


	FadeDelete("�}����100", 2000, false);
	MoveCamera("@����飱", 1500, 0, -50, @150, Dxl1, true);

//	SetBlur("����飱/������01", true, 1, 500, 200, false);

	SetNwH("cg/fw/ny�ǣȣѸo�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯�M�v܊�T�ġ�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/026vs0090e135">
�����ˣ�
��<RUBY text="�ڣ���ģ�����">���ͻ���</RUBY>����

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�š�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/026vs0100e136">
���������������ƶ���
����Ҫ������׼�ˣ���

{	NwH("cg/fw/ny�ǣȣѸo�T����.png");}
//������㣯�M�v܊�T�š�
<voice name="����㣯�M�v܊�T��" class="����������" src="voice/md04/026vs0110e136">
�����ڻ��ƺ����������䡣
������������գ�Ȼ��û��ӽ��ɵ�������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɢ�_���\��
//������Ǥ���T���ĉ�
	CreateColorEXadd("�}ɫ100", 2500, "WHITE");
	CreateSE("SE01","se���L_�Х���_�ܩ`�������01");
	CreateSE("SE02","se���L_�Х���_�ܩ`�������01");
	CreateSE("SE03","se���L_�n��_�zɢ�A");

	Request("�ץ�����", Stop);
	Delete("�ץ�����");

//	SetBlur("����飱/������0*", false, 1, 500, 200, false);

	OnSE("se���L_����_�z_�ϵ�������01",1000);
	MoveCamera("@����飱", 500, -100, 50, @0, Dxl1, true);
	MoveCamera("@����飱", 1000, 300, 50, @-50, AxlDxl, true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 800, 600, "cg/ef/ef034_����AȾ.jpg", false);
	Move("����飱/������04", 800, 2000, -200, AxlDxl, false);
	Move("����飱/������02", 800, 1500, 300, AxlDxl, false);
	MoveCamera("@����飱", 500, -200, 0, @0, AxlDxl, true);
//	MoveCamera("@����飱", 500, 2000, -250, @0, AxlDxl, false);


	Move("����飱/������01*", 500, 2000, -350, AxlDxl, false);
	MoveCamera("@����飱", 500, 2000, -250, @0, AxlDxl, true);

	CreateTextureEXover("�}����", 19000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEXadd("�}����", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 1, 300, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);



	Shake("����飱/������01*", 1000, 5, 20, 0, 0, 500, Dxl2, false);
	Fade("�}ɫ100", 500, 1000, Axl1, false);
	DrawTransition("�}ɫ100", 500, 0, 500, 200, Axl1, "cg/data/circle_08_00_0.png", false);
	Fade("����飱/������01add", 500, 1000, null, false);
	Move("����飱/������01*", 1100, 1900, -150, Axl1, false);
	EffectZoomadd(10000, 800, 600, "cg/ef/ef034_����AȾ.jpg", true);


	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("����飱/������01*", 200, 0, null, false);
	Fade("�}��*", 150, 1000, null, false);
	Zoom("�}��*", 2000, 1500, 1500, Dxl1, false);
	Shake("�}��*", 1500, 20, 10, 0, 0, 1000, Dxl2, true);
	Wait(150);

	Delete("�}ɫ100");
	Delete("����飱/������01*");

	FadeDelete("�}��*", 1000, false);

	MoveCamera("@����飱", 1600, -200, 50, 1000, Dxl1, false);


/*
	CreateSE("SE03","se���L_����_��ͻ�M03");
	MusicStart("SE03",0,500,0,1000,null,false);
	Move("�}�ӣԣ�1003", 100, @-600, @0, Axl1, true);
	WaitKey(500);

	CreateSE("SE02","se���L_����_��ͻ�M03");
	MusicStart("SE02",0,500,0,1000,null,false);
	Move("�}�ӣԣ�1002", 100, @-600, @0, Axl3, true);
	WaitKey(500);


	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ӣԣ�1001", 200, @-700, @0, Dxl3, false);


	CreateColorSPadd("��", 20000, "#FFFFFF");
	Fade("��", 400, 0, null, false);


	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 19000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 1, 300, 30, false);
	Delete("�}�ӣԣ�100*");

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, true);
	WaitKey(150);

	FadeDelete("�}��*", 1000, true);

*/
//�������_�ȡ�����ʽ
//���k����


	CreateColorSP("�\Ļ��", 30000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}ɫ100");
	Delete("�}��*");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("����飱/������*");


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("����飱", Center, Middle, 500);
	SetAlias("����飱","����飱");



	CreateTextureEX("����飱/������01a", 500, @200, @-200, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������02a", 350, @400, @-0, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������03a", 200, @400, @-300, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("����飱/������04a", 100, @500, @-200, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
//	CreateTextureEX("����飱/������01b", 500,  @200, @-200, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������02b", 350,  @400, @-0, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������03b", 200,  @400, @-300, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");
//	CreateTextureEX("����飱/������04b", 100,  @500, @-200, "cg/st/3d����ʽ�o�T��_�T��_�k��.png");

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

//	SetBlur("����飱/������01a", true, 1, 500, 200, false);



	SetNwC("cg/fw/nw����ʽ�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������㣯����ʽ�ġ�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/026vs0120e304">
�������
�����ǵ��뷨��������Ϳ�͸�ˡ���

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ�š�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/026vs0130e305">
�����̶ֳȵ��ٶ����ӵ�����
���ɲ�ҪС�����ǵ�ѵ������

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ�ơ�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/026vs0140e306">
��һ�ﶼ���������ǽӽ��ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԩ`��������

	CreateSE("SE01","se����_���å��ԥå�_����`��");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw����ʽ�o�T����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������㣯����ʽ�ġ�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/026vs0150e304">
����������!?��

//������㣯����ʽ�ġ�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/026vs0160e304">
�����ã����·�!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���·�����ӣԣ������u��
//	SetBlur("����飱/������0*", false, 1, 500, 100, false);
	MoveCamera("@����飱", 300, 200, 800, @0, Axl1, false);
	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

//	Delete("�����*");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");

	OnBG(100, "bg001_��a_01.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-200,@-800,null,true);

	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 200, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @0, @0, @-20, null,true);
	Fade("�}������", 0, 150, null, true);

	CreateTextureEX("������01", 600, @-300, @-150, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	CreateTextureEX("������02", 350, @50, @50, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	Zoom("������01", 0, 800, 800, null, false);
	Zoom("������02", 0, 500, 500, null, false);
	Rotate("������01", 0, @0, @0, @40, null,true);
	Rotate("������02", 0, @0, @0, @50, null,true);


$��`�ץ�`�֥ʥå��� = "@������01";
$��`�ץ�`�֥����� = 25000;

$��`�ץ�`�֥ʥå����� = "@������02";
$��`�ץ�`�֥����ࣲ = 20000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving2");
	SetAlias("�ץ�����","�ץ�����");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
//	SetBlur("������01", true, 1, 500, 200, false);

	CreateSE("SE03","se���L_����_��ͻ�M04");
	MusicStart("SE03",0,400,0,1000,null,false);

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");

	OnSE("se���L_����_��ͻ�M02",1000);
	Shake("������01", 500, 50, 3, 0, 0, 500, Dxl3, false);
	Fade("������01", 300, 1000, null, true);

	OnSE("se���L_����_��ͻ�M02",1000);
	Shake("������02", 500, 50, 3, 0, 0, 500, Dxl3, false);
	Fade("������02", 300, 1000, null, true);

	SetNwC("cg/fw/nw����ʽ�o�T����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯����ʽ�ơ�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/026vs0170e306">
��������!?��

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ�š�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/026vs0180e305">
���ɶ������������
��ʲôʱ�򿿽��ģ���

{	NwC("cg/fw/nw����ʽ�o�T����.png");}
//������㣯����ʽ�ġ�
<voice name="����㣯����ʽ��" class="����������" src="voice/md04/026vs0190e304">
�����ˣ�
�����Ƕ���������ռ�������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɢ���Ȥ�������ʽ
//�����T������ʳ�餦
	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_��ͻ�M03",1000);


	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

//	Delete("�����*");
	Request("�ץ���*", Stop);
	Delete("�ץ���*");
	Delete("������*");
	Delete("�}������");

	CreateTextureSP("������01", 600, @300, @850, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	CreateTextureSP("������02", 350, @50, @1050, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	Zoom("������01", 0, 1000, 1000, null, false);
	Zoom("������02", 0, 800, 800, null, false);
	Rotate("������01", 0, @0, @0, @40, null,true);
	Rotate("������02", 0, @0, @0, @50, null,true);
//	SetBlur("������*", true, 1, 500, 100, false);

/*
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
*/

	MoveCamera("@����飱", 0, 100, 500, @100, null, true);
	CreateSE("SE02","se���L_����_��ͻ�M01");
	CreateSE("SE03","se���L_����_�z_���01");
	CreateSE("SE04","se���L_����_�z_�����w��02");
	CreateSE("SE05","se���L_����_�z��������03");
	CreateSE("SE05","se���L_����_�z��������03");
	CreateSE("SE06","se���L_�n��_�zɢ�A");
	CreateSE("SE07","se���L_�Ɖ�_�z03");

	CreateTextureEXadd("�}����100", 2000, Center, Middle, "cg/ef/ef038_�������.jpg");
	Move("�}����100", 0, @200, @0, null, true);
	Zoom("�}����100", 0, 2500, 2500, null, true);
	Rotate("�}����100", 0, @0, @0, @90, null,true);
	CreateTextureEXadd("�}����200", 2000, Center, Middle, "cg/ef/ef038_�������.jpg");
	Move("�}����200", 0, @-300, @100, null, true);
	Zoom("�}����200", 0, 2500, 2500, null, true);
	Rotate("�}����200", 0, @0, @0, @70, null,true);


	MoveCamera("@����飱", 1000, -100, 200, @-100, Dxl1, false);
	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("�\Ļ��");
//	SetBlur("����飱/������0*", true, 1, 500, 100, false);

	Move("����飱/������01a", 2500, @100, @200, AxlDxl, false);
	Move("����飱/������02a", 2400, @-200, @100, AxlDxl, false);
	Move("����飱/������03a", 2000, @1000, @-800, AxlDxl, false);
	Move("����飱/������04a", 2000, @-850, @-150, AxlDxl, false);
	MusicStart("SE02",0,500,0,1000,null,false);
	Zoom("�}����100", 1500, 2500, 2500, Dxl2, false);
	Fade("�}����100", 400, 1000, Axl3, false);
	Move("������01", 400, @-1000, @-2000, null, true);
	FadeDelete("�}����100", 1000, false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Shake("����飱/������01a", 1500, 10, 5, 0, 0, 1000, Dxl2, false);
	Move("����飱/������01a", 2000, @-100, @1000, Axl2, false);

	MusicStart("SE03",0,500,0,1000,null,false);
	Zoom("�}����200", 1500, 2500, 2500, Dxl2, false);
	Fade("�}����200", 400, 1000, Axl3, false);
	Move("������02", 400, @-1050, @-2500, null, true);
	FadeDelete("�}����200", 1000, false);
	MusicStart("SE05",0,1000,0,1000,null,false);
	Shake("����飱/������02a", 1500, 13, 2, 0, 0, 1000, Dxl2, false);
	Move("����飱/������02a", 2500, @-50, @1200, Axl2, false);


	Wait(300);
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateColorSPadd("�Ф���", 17000, "#990000");
	CreateColorSPadd("�Ф���", 16000, "#ffffcc");
	CreateColorSPadd("�Ф���", 15000, "#FFFFFF");
	DrawTransition("�Ф���", 0, 1000, 200, 800, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("�Ф���", 0, 1000, 400, 500, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("�Ф���", 0, 1000, 600, 100, null, "cg/data/circle_12_01_1.png", true);
	FadeDelete("�Ф�*", 1000, true);
	FadeDelete("����飱/������*", 1000, false);

	MusicStart("SE07",0,1000,0,1000,null,false);
	CreateColorSPadd("�Ф���", 17000, "#990000");
	CreateColorSPadd("�Ф���", 16000, "#ffffcc");
	CreateColorSPadd("�Ф���", 15000, "#FFFFFF");
	DrawTransition("�Ф���", 0, 1000, 200, 800, null, "cg/data/circle_13_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 400, 500, null, "cg/data/circle_13_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 600, 100, null, "cg/data/circle_13_00_0.png", true);
	FadeDelete("�Ф�*", 1000, true);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�}��");
	Delete("�}�ӣԣ�100*");


	CreateTextureSP("�}��", 900, Center, Middle, "cg/bg/bg001_��b_01.jpg");
	Zoom("�}��", 0, 2000, 2000, null, false);

	CreateTextureEX("�}�ӣԣ�1001", 1200,  @-800, @-300, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�1002", 1100,  @-800, @-600, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�1003", 1000,  @-1000, @-200, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�1004", 1050,  @-900, @-400, "cg/st/3d����ʽ�o�T��_�T��_ͨ��.png");
	CreateTextureEX("�}�ӣԣ�2001", 1400, @500, @-150, "cg/st/3d��`�����_�T��_���L.png");
	CreateTextureEX("�}�ӣԣ�2002", 1300, @700, @-350, "cg/st/3d��`�����_�T��_���L.png");
	CreateTextureEX("�}�ӣԣ�2003", 1000, @700, @-250, "cg/st/3d��`�����_�T��_���L.png");
	CreateTextureEX("�}�ӣԣ�2004", 1200, @600, @-0, "cg/st/3d��`�����_�T��_���L.png");

	Request("�}�ӣԣ�200*", Smoothing);

	Zoom("�}�ӣԣ�2001", 0, 200, 200, null, false);
	Zoom("�}�ӣԣ�2002", 0, 150, 150, null, false);
	Zoom("�}�ӣԣ�2003", 0, 100, 100, null, false);
	Zoom("�}�ӣԣ�2004", 0, 150, 150, null, false);

	Request("�}�ӣԣ�100*", Smoothing);

	Zoom("�}�ӣԣ�1001", 0, 300, 300, null, false);
	Zoom("�}�ӣԣ�1002", 0, 200, 200, null, false);
	Zoom("�}�ӣԣ�1003", 0, 150, 150, null, false);
	Zoom("�}�ӣԣ�1004", 0, 200, 200, null, false);

	CreateSE("SE01","se���L_����_��ͻ�M01");

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@0,@0,null,true);


	Zoom("�}��", 3000, 1000, 1000, Axl3, false);
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);


	Fade("�}�ӣԣ�*", 1000, 1000, null, true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	OnSE("se���L_����_��ͻ�M02", 1000);

	FadeDelete("�}�ӣԣ�*", 1000, false);
	Move("�}�ӣԣ�1*", 1000, @600, @0, Dxl2, false);
	Move("�}�ӣԣ�2*", 1000, @-600, @0, Dxl2, false);
	Zoom("�}�ӣԣ�*", 1000, 0, 0, null, true);


	CreateTextureEXadd("�}����100", 10000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");

	Zoom("�}����100", 8000, 1500, 1500, null, false);
	Fade("�}����100", 100, 1000, Dxl1, false);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("�Ф���", 17000, "#990000");
	CreateColorSPadd("�Ф���", 16000, "#ffffcc");
	CreateColorSPadd("�Ф���", 15000, "#FFFFFF");
	DrawTransition("�Ф���", 0, 1000, 150, 300, null, "cg/data/circle_06_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 160, 200, null, "cg/data/circle_06_00_0.png", false);
	DrawTransition("�Ф���", 0, 1000, 170, 100, null, "cg/data/circle_06_00_0.png", true);
	FadeDelete("�Ф�*", 100, false);
	Wait(50);

	EffectZoomadd(15000, 10000, 0, "cg/ef/ef034_����AȾ.jpg", false);

	CreateSE("SE02","se���L_�n��_�zɢ�A");
	MusicStart("SE02",0,300,0,1000,null,false);
	CreateColorSPadd("�ФФ���", 17000, "#990000");
	CreateColorSPadd("�ФФ���", 16000, "#ffffcc");
	CreateColorSPadd("�ФФ���", 15000, "#FFFFFF");
	DrawTransition("�ФФ���", 20, 1000, 130, 300, null, "cg/data/circle_07_00_0.png", false);
	DrawTransition("�ФФ���", 20, 1000, 140, 200, null, "cg/data/circle_07_00_0.png", false);
	DrawTransition("�ФФ���", 20, 1000, 150, 100, null, "cg/data/circle_07_00_0.png", true);
	FadeDelete("�ФФ�*", 100, false);

	WaitKey(500);
	CreateSE("SE01","se���L_�n��_�zɢ�A");
	MusicStart("SE01",0,800,0,1000,null,false);
	CreateColorSPadd("�ФФФ���", 17000, "#990000");
	CreateColorSPadd("�ФФФ���", 16000, "#ffffcc");
	CreateColorSPadd("�ФФФ���", 15000, "#FFFFFF");
	DrawTransition("�ФФФ���", 0, 1000, 140, 300, null, "cg/data/circle_05_00_0.png", false);
	DrawTransition("�ФФФ���", 0, 1000, 150, 200, null, "cg/data/circle_05_00_0.png", false);
	DrawTransition("�ФФФ���", 0, 1000, 160, 100, null, "cg/data/circle_05_00_0.png", true);
	FadeDelete("�ФФФ�*", 100, false);


	Wait(50);
	CreateSE("SE00","se���L_�n��_�zɢ�A");
	MusicStart("SE00",0,400,0,1000,null,false);
	CreateColorSPadd("�ФФФФФ���", 17000, "#990000");
	CreateColorSPadd("�ФФФФФ���", 16000, "#ffffcc");
	CreateColorSPadd("�ФФФФФ���", 15000, "#FFFFFF");
	DrawTransition("�ФФФФФ���", 0, 1000, 100, 300, null, "cg/data/circle_10_00_0.png", false);
	DrawTransition("�ФФФФФ���", 0, 1000, 110, 200, null, "cg/data/circle_10_00_0.png", false);
	DrawTransition("�ФФФФФ���", 0, 1000, 120, 100, null, "cg/data/circle_10_00_0.png", true);

	FadeDelete("�ФФФФФ�*", 300, false);


	Wait(500);
	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("ͣ��", 1500, 0, null);

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_027.nss"