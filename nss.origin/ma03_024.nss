//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_024.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma03_024.nss","ma03_SB2",true);
	Conquest("nss/ma03_024.nss","ma03_SB3",true);
	Conquest("nss/ma03_024.nss","ma03_SB",true);
	Conquest("nss/ma03_024.nss","ma_03_SBProcess",true);
	Conquest("nss/ma03_024.nss","ma_03_SBDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_runs",true);
	Conquest("nss/ma03_024.nss","ma03_024_runsProcess",true);
	Conquest("nss/ma03_024.nss","ma03_024_runsDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_shakeloop",true);
	Conquest("nss/ma03_024.nss","ma03_024_shakeloopProcess",true);
	Conquest("nss/ma03_024.nss","ma03_024_shakeloopDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_GC",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCP1",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCPC",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCP2",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCPDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCF",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCFP",true);

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

//�룺��
	#ev117_��`�����龰_a=true;
	#ev904_�����ޥ��ͥåȥ��`�ƥ���_c=true;
	#ev904_�����ޥ��ͥåȥ��`�ƥ���_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_���`�ѩ`�ϥ����=true;
	#av_RG10=true;
	#av_�������`=true;
	#av_������������=true;
	#av_������ȥ���å���=true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;
	$GameName = "ma03_025.nss";

}

scene ma03_024.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_023.nss"

//�������`�ȥ��ס������
//���ԥá��ԥá��ԥá��ݩ`��
//�����T�k�M
//�룺evָ����ev117_��`�����龰_a


	PrintBG("�ϱ���", 30000);

	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ef/ef048_�����ʥ�a.jpg");
	CreateTextureEX("�}����200", 1100, Center, Middle, "cg/ef/ef048_�����ʥ�b.jpg");
	CreateTextureEX("�}����300", 1200, Center, Middle, "cg/ef/ef048_�����ʥ�c.jpg");
	CreateTextureEX("�}����400", 1300, Center, Middle, "cg/ef/ef048_�����ʥ�d.jpg");

	CreateSE("SE10","se����_�z_��`��_�����ɥ��");
	CreateSE("SE11","se���L_�n��_���Ľ��e02");
	CreateSE("SE12","se����_�z_��`��_����01");
	CreateSE("SE00","se����_����_���`���å�03_L");
	CreateSE("SE01","se����_�z_��`��_����01");
	CreateSE("SE02","se����_�z_��`��_����02");
	CreateSE("SE03","se���L_����_��ͻ�M08");
	CreateSE("SE04","se����_�z_��`��_����01");
	CreateSE("SE05","se���L_����_��ͻ�M08");
	CreateSE("SE06","se����_�z_��`��_����02");
	CreateSE("SE07","se����_�z_��`��_����01");


	MusicStart("SE10",500,500,0,1000,null,true);

	Fade("�}����100", 0, 1000, null, true);

	FadeDelete("�ϱ���", 500, true);

Wait(750);

	OnSE("se����_������_�����`�ȥ���02",1000);
	Fade("�}����200", 300, 1000, null, true);

Wait(750);

	OnSE("se����_������_�����`�ȥ���02",1000);
	Fade("�}����300", 300, 1000, null, true);

Wait(750);

	MusicStart("SE10",500,1000,0,1000,null,true);
	OnSE("se����_������_�����`�ȥ���03",1000);
	Fade("�}����400", 300, 1000, null, true);

Wait(100);

	MusicStart("SE11",0,1000,0,1000,null,false);
	MusicStart("SE12",0,1000,0,1000,null,false);

	PrintGO("�ϱ���", 5000);

	CreateTextureSP("�}st001", 1400, 1024, Middle, "cg/st/3d����ƥ���_�T��_ͨ��.png");
	CreateTextureSP("�}st002", 1500, 1024, Middle, "cg/st/3d���٥�_�T��_ͨ��_b.png");
	CreateTextureSP("�}st003", 1200, 1024, Middle, "cg/st/3d�ңǣ�����_�T��_ͨ��.png");
	CreateTextureSP("�}st004", 1300, 1024, Middle, "cg/st/3d�ӥϥ����_�T��_ͨ��.png");
	CreateTextureSP("�}st005", 1400, 1024, Middle, "cg/st/3d�ǥ��å���_�T��_ͨ��.png");
	CreateTextureSP("�}st006", 1300, 1024, Middle, "cg/st/3d��������_�T��_ͨ��.png");
	CreateTextureSP("�}st007", 1400, 1024, Middle, "cg/st/3d�������`_�T��_ͨ��.png");
	CreateTextureSP("�}st008", 1500, 1024, Middle, "cg/st/3d��������_�T��_ͨ��.png");

	#av_���`�ѩ`�ϥ����=true;
	#av_RG10=true;
	#av_�������`=true;
	#av_������������=true;
	#av_������ȥ���å���=true;

//���٥�
	Move("�}st002", 0, @0, @200, null, true);
//�ңǣ�����
	Move("�}st003", 0, @0, @-100, null, true);
//�ϥ����
	Move("�}st004", 0, @0, @-250, null, true);
//���å���
	Move("�}st005", 0, @0, @-40, null, true);
//��������
	Move("�}st006", 0, @0, @+120, null, true);
//�������`
	Move("�}st007", 0, @0, @-130, null, true);
//�ۥåȥɥå�
	Move("�}st008", 0, @0, @-50, null, true);

	Zoom("�}st002", 0, 1200, 1200, null, true);
	Zoom("�}st003", 0, 500, 500, null, true);
	Zoom("�}st004", 0, 750, 750, null, true);
	Zoom("�}st005", 0, 400, 400, null, true);
	Zoom("�}st006", 0, 300, 300, null, true);
	Zoom("�}st007", 0, 1000, 1000, null, true);

	ma03_SB2(1000,3,1000,0);
	ma03_SB3(2000,300);

	SetVolume("SE10", 1000, 0, null);

	MusicStart("SE00",500,800,0,1000,null,true);
	FadeDelete("�ϱ���", 300, true);

	$Race_Time = 1000;

	Wait(200);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}st001", $Race_Time, @-7000, @0, Dxl2, false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("�}st002", $Race_Time, @-6500, @0, DxlAuto, false);
	Wait(100);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("�}st003", $Race_Time, @-6000, @0, Dxl1, false);
	Wait(100);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("�}st004", $Race_Time, @-5000, @0, Dxl2, false);
	Wait(100);
	MusicStart("SE05",0,1000,0,1000,null,false);
	Move("�}st005", $Race_Time, @-4800, @0, DxlAuto, false);
	Wait(100);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Move("�}st006", $Race_Time, @-4900, @0, Dxl1, false);
	Wait(100);
	MusicStart("SE07",0,1000,0,1000,null,false);
	Move("�}st007", $Race_Time, @-4500, @0, Dxl1, false);
	Wait(500);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}st008", $Race_Time, @-4000, @0, Dxl1, true);

	SetVolume("SE00", 500, 0, null);
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev117_��`�����龰_a.jpg");
	CreateTextureSP("�}����100", 200, Center, Middle, "cg/ev/ev117_��`�����龰_a.jpg");

	Delete("�}st*");
	ma_03_SBDelete();

	CreateTextureEX("�}����200", 200, Center, Middle, "cg/ev/ev117_��`�����龰_a.jpg");
	SetBlur("�}����200", true, 3, 500, 100, false);
	Zoom("�}����200", 500, 2000, 2000, Dxl1, false);
	Fade("�}����200", 300, 1000, null, false);

	CreateSE("SE10","se����_����_���`���å�01_L");
	CreateSE("SE01","se����_�z_��`��_����01");
	MusicStart("SE10",500,1000,0,1000,null,true);
	Move("�}����200", 1000, @0, @-100, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("�\Ļ��", 250, 100, "slide_01_01_1", true);
	FadeDelete("�}����200", 500, false);

	SoundPlay("@mbgm13",0,1000,true);

	Wait(500);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240010a07">
������ͬʱ���ˡ�����������!!
�����Ǿ��˵����潻��������

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240020a07">
��ѡ���ǳ�Ⱥ��ӵ�ʻ����һֱ������Σ�գ�
���¹ʵķ����������˲��
�ﵽ�˶��塪����������!!��

{	FwC("cg/fw/fw�衩���װ_�@��.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240030a07">
������������!?
����ʮ��λ���������ˡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`��
//���k�ޤȤ�
	SetVolume("SE10", 500, 0, null);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}st004", 1300, -268, -50, "cg/st/3d���٥�_�T��_ͨ��_b.png");
	CreateTextureSP("�}st005", 1400, -388, -148, "cg/st/3d�ӥϥ����_�T��_ͨ��.png");
	Zoom("�}st004", 0, 500, 500, null, true);
	Zoom("�}st005", 0, 750, 750, null, true);

	CreateTextureSP("�}st106", 1300, 1024, Middle, "cg/st/3d��������_�T��_ͨ��.png");
	CreateTextureSPadd("�}st116", 1400, 1024, Middle, "cg/st/3d��������_�T��_ͨ��.png");
	Zoom("�}st106", 0, 800, 800, null, true);
	Zoom("�}st116", 0, 800, 800, null, true);
	SetTone("�}st116", Sepia);

	Move("�}st004", 0, @+1024, @0, null, false);
	Move("�}st005", 0, @+1024, @0, null, false);

	CreateTextureEX("�}����100", 3000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureEXadd("�}����200", 3200, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");

	SetBlur("�}����200", true, 3, 300, 50, false);

	Shake("�}st004", 50000, 2, 1, 0, 0, 1000, null, false);
	Shake("�}st005", 50000, 1, 2, 0, 0, 1000, null, false);

//	BezierMove("�}st004", 1000, (@0,@0){@-950,@+10}{@-970,@-30}(@-850,@-10){@-860,@+50}{@-870,@+70}(@-800,@-600), DxlAxl, false);

	ma03_SB2(1000,3,1000,0);
	ma03_SB3(2000,300);

	Request("�}st004", Smoothing);
	Request("�}st005", Smoothing);
	Request("�}st1*", Smoothing);

	CreateSE("SE01","se���L_����_������02_L");
	CreateSE("SE02","se����_�z_��`��_����02");
	CreateSE("SE03","se����_�z_��`��_����01");
	CreateSE("SE04","se����_�z_��`��_�p��01");
	CreateSE("SE05","se���L_�Ɖ�_���k05");

	MusicStart("SE01",300,500,0,1300,null,true);

	Move("�}st004", 500, @-1024, @0, null, false);
	Move("�}st005", 500, @-1024, @0, null, false);
	DrawDelete("�\Ļ��", 250, 100, "slide_01_01_1", true);

	MusicStart("SE04",0,1000,0,1300,null,false);
	Rotate("�}st1*", 1000, @0, @0, @30, Axl1,false);
	BezierMove("�}st1*", 1000, (@0,@0){@-950,@+10}{@-970,@-30}(@-850,@-10){@-860,@+50}{@-870,@+70}(@-800,@-600), DxlAxl, false);

	Wait(500);

	MusicStart("SE02",0,1000,0,1300,null,false);
	Move("�}st004", 500, @-890, @+10, Dxl1, false);
	Wait(100);
	MusicStart("SE01",0,1000,0,1300,null,false);
	Move("�}st005", 500, @-1000, @-100, Dxl1, true);

	SetVolume("SE04", 500, 0, null);

	Wait(100);

	CreateColorEXadd("�}ɫ100", 1500, "White");

	MusicStart("SE05",0,1000,0,1300,null,false);
	SetVolume("SE01", 1000, 0, null);
	Fade("�}ɫ100", 0, 1000, null, false);
	DrawTransition("�}ɫ100", 300, 0, 1000, 100, null, "cg/data/circle_10_00_0.png", true);


	Zoom("�}����200", 500, 3000, 3000, null, false);
	Zoom("�}����100", 250, 1200, 1200, null, false);

	Fade("�}����100", 250, 1000, null, false);
	Shake("�}����100", 100000, 5, 3, 0, 0, 1000, null, false);

	BezierMove("�}����100", 1500, (@0,@0){@0,@-35}{@0,@-70}(@0,@-95){@0,@-70}{@0,@-35}(@0,@0){@0,@+10}{@0,@+20}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), AxlDxl, false);
	BezierMove("�}����200", 1500, (@0,@0){@0,@-35}{@0,@-70}(@0,@-95){@0,@-70}{@0,@-35}(@0,@0){@0,@+10}{@0,@+20}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), AxlDxl, false);

	Fade("�}����200", 250, 1000, null, true);
	Fade("�}����200", 500, 0, null, false);

	Wait(1000);

	SetVolume("SE05", 500, 0, null);

	CreateColorEX("�\Ļ", 15000, "Black");
	Fade("�\Ļ",500,1000,null,true);
	ma_03_SBDelete();
	Delete("�}ɫ100");
	Delete("�}����100");
	Delete("�}����200");
	Delete("�}sy004");
	Delete("�}sy005");
	Delete("�}sy1*");

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);

	Fade("�\Ļ",1000,0,null,true);
	Delete("�\Ļ");

/*
	OnSE("se���L_�Ɖ�_���k01",1000);

	CreatePlainSP("�}��", 100);
	Wait(1);
	CreatePlainEX("�}��", 110);
	SetBlur("�}��", true, 3, 600, 50, false);

	CreateColorEXadd("�}�ե�", 2000, "#FFFFFF");

	Fade("�}��", 0, 700, null, false);
	Zoom("�}��", 200, 1200, 1200, null, false);

	OnSE("se���L_�Ɖ�_���k04",1000);
	Fade("�}�ե�", 200, 1000, null, true);
	Delete("�}��");

	FadeDelete("�}�ե�", 300, false);

	FadeFR4("�}��",0,1000,1000,0,0,30,Dxl2,false);
	Delete("�}��*");
*/

	SetFwC("cg/fw/fw�衩���װ_�n�y.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240040a07">
��ײ���ˣ�
��Ϊ�˱���������ǿ��ת���
��ʮ��λ������ӣ����������ˣ�
����ײ�����������ȣ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240050a07">
������ʵ�о�Ԯ����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0240060a08">
�����ѿ�����
���������ʹ�ó����񣬵�Ȼ�������������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240070a07">
����ײ���Ĺ��ŵ��޸�Ҳ�ܿ�����
���С���ߵĹ�����Ա���ǳ�������
û�а�����ù���
����һ�ߵı���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);

	ma03_SB2(700,1,1000,0);
	ma03_SB3(2000,300);

//1:�辩������ƥ��ޡ�����`��
	CreateTextureSP("�}st001", 1400, 1300, Middle, "cg/st/3d����ƥ���_�T��_ͨ��.png");
	Zoom("�}st001", 0, 1100, 1100, null, true);
	Request("�}st001", Smoothing);

//2:�襳���󣺥��`�ѩ`�ϥ����
	CreateTextureSP("�}st002", 1300, 1024, Middle, "cg/st/3d�ӥϥ����_�T��_ͨ��.png");
	Request("�}st002", Smoothing);
//3:�ԣƣƣ����٥�
	CreateTextureSP("�}st003", 1500, 1024, Middle, "cg/st/3d���٥�_�T��_ͨ��_b.png");
	Zoom("�}st003", 0, 800, 800, null, true);
	Request("�}st003", Smoothing);
//4:�ޥĥ���������������
	CreateTextureSP("�}st004", 1100, 1024, 0, "cg/st/3d��������_�T��_ͨ��.png");
	Zoom("�}st004", 0, 750, 750, null, true);
	Request("�}st004", Smoothing);
//5:�����������֥룺�ңǣ�����
	CreateTextureSP("�}st005", 1100, 1024, -200, "cg/st/3d�ңǣ�����_�T��_ͨ��.png");
	Zoom("�}st005", 0, 500, 500, null, true);
	Request("�}st005", Smoothing);

	CreateSE("SE01","se����_�z_��`��_����01");
	CreateSE("SE02","se����_�z_��`��_����02");
	CreateSE("SE03","se����_�z_��`��_����02");
	CreateSE("SE04","se����_�z_��`��_����02");
	CreateSE("SE05","se���L_����_��ͻ�M03");

	$��`�������ࣱ = 1000;
	$��`�������ࣲ = 1200;

	FadeDelete("�ϱ���", 300, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}st001", $��`�������ࣱ, -5000, @0, Dxl1, false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	BezierMove("�}st002", $��`�������ࣱ, (1424,-364){0,300}{-512,-100}(-1524,-300), Dxl1, false);
	Wait(200);
	MusicStart("SE03",0,1000,0,1000,null,false);
	BezierMove("�}st004", $��`�������ࣲ, (1524,-164){400,400}{0,-200}(-1624,@0), Dxl1, false);
	Wait(50);
	Move("�}st005", $��`�������ࣱ, -2000, @0, Dxl1, false);
	Wait(50);
	MusicStart("SE04",0,1000,0,1000,null,false);
	BezierMove("�}st003", $��`�������ࣲ, (2024,-264){100,-600}{-300,100}(-1524,-264), Dxl1, true);


	Wait(200);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("�}st0*");

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/ev/ev907_����ƥ�������.jpg");
	CreateTextureEX("�}����200", 200, Center, Middle, "cg/ev/ev907_����ƥ�������.jpg");

	SetBlur("�}����200", true, 3, 500, 100, false);

	Zoom("�}����200", 600, 2000, 2000, Dxl1, false);
	Move("�}����200", 600, @-200, @0, Dxl1, false);
	Fade("�}����200", 300, 1000, null, false);
	Fade("�}����100", 300, 1000, null, true);
	FadeDelete("�}����200", 300, false);

	MusicStart("SE05",0,1000,0,1000,null,false);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0029]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240080a07">
�������һ������ˣ�
����λ��Ȼ�������辩����ţ���

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240090a07">
��������ŵ��Ǻ�͡���塢�ɾ��������ᣬ
֮�������ӣ�
��������Ǿ���ӣ���

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240100a07">
�����ڣ�����������˳��
��ͨ���������������α仯��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������ҕ��
//����˥��`չ�_�����`���å��T���С�
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 20000, "#000000");

	FadeDelete("�ϱ���", 600, true);
	Wait(1000);
	Cockpit_AllFade2();
	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_024_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,182,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateSE("SE01","se���L_����_������02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	FadeDelete("�}��ܞ", 600, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������Ҫ˵����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma03/0240110a00">
����������Ҳ��̫���˰ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240120a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������Ҫ��������С�
������������˵�Ǹ���ʶ��Ҳ���뻳�������ʵ��

�����ǣ����������е���������ֻ�аˣ�
����Щȫ���������ٶȺ��˶��Ե������ϵľ����ý���
�����ͽ�һ��������������䵽ս�����ͻ����Ե����
���б����������������ٶ��ϵľ����ǲ�������ġ�

�������������ֻ�����������ϵġ�
��ʵ���ϣ������Ĳ�������֮��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/ma03/0240130a01">
�����������ھ����л�ʤҲ����Ŀ��
�ɡ�����ͦ�õ����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240140a00">
��������ô˵��
�����̫���Ļ��Ͳ��ð��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����������ں󷽵Ļ����ڷ�����ʼ��ʱ���ٸϹ�ȥ
�ͻ���һ����
�����ܶ��������ӳ٣��᲻����ɱ����˵���������
һλ����

  �ڡ��ѡ����ѵ�˲�����õ��ֶ����Ǻš�
����ɱ�����ˣ�����һ�е�����֮���ơ�

��������Ҳ��Ҫ���ں����ļ����С���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�ʩ`���

//�����ҕ�㣨����ϯ��

	SetVolume("SE01", 600, 0, null);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);

	Cockpit_AllFade0();

	DrawDelete("�ϱ���", 125, 100, "slide_01_03_1", true);
	WaitKey(50);
	DrawDelete("�}��ܞ", 125, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw�衩���װ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240150a07">
�������ͨ���������
����ô˵�ء��������Ƚ����ܷ�����

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0240160a08">
��������˵ʲô����
�������ǽ��е����ܻ������ֵ���������ƽӹ��
ûʲô���㰡����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ҕ��
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 20000, "#000000");

	FadeDelete("�ϱ���", 600, true);
	Wait(1000);
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,182,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_024_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CreateSE("SE01","se���L_����_������02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/ma03/0240170a01">
������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240180a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����ҵĴ����
��͸���Ӵ�Ƥ�������ף��о���ʲô����Ķ���������
�ҵ����ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 600, 0, null);

//�����ҕ��
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 20000, "#000000");

	DrawDelete("�ϱ���", 125, 100, "slide_02_01_1", true);

	Cockpit_AllFade0();

	ma03_024_runsDelete();

	CreateSE("SE01","se����_�z_��`��_����02");
	CreateSE("SE02","se���L_����_��ͻ�M08");
	CreateSE("SE03","se����_����_���`���å�01_L");

	CreateTextureSP("�}st100", 1000, 0, 0, "cg/st/3d����ƥ���_�T��_ͨ��3.png");
	Rotate("�}st100", 0, @0, @0, @-35, null,true);
	Move("�}st100", 0, 1024, 200, null, true);
	Request("�}st100", Smoothing);
	SetBlur("�}st100", true, 3, 300, 30, false);

	CreateTextureEXadd("�}����100", 1300, -543, -552, "cg/ef/ef044_��c.png");
	Zoom("�}����100", 0, 100, 100, null, true);
	CreateTextureSP("Rollbg001", 300, -727, -400, "cg/bg/bg038_���`���åȥ��`��_01.jpg");
	CreateTextureSP("Rollbg002", 400, -727, -400, "cg/bg/bg038_���`���åȥ��`��_01 ���`��01.png");
	CreateTextureEX("Rollbg003", 2000, -727, -400, "cg/bg/bg038_���`���åȥ��`��_01 ���`��01.png");
	Zoom("Rollbg00*", 0, 750, 750, null, true);
//	Zoom("", 0, 750, 750, null, true);

	Move("Rollbg00*",0, @-2000, @-400, null, true);

	MusicStart("SE03",1000,1000,0,1000,null,true);

	Move("Rollbg00*",2000, -727, -400, Dxl1, false);
	DrawDelete("�}��ܞ", 125, 100, "slide_02_01_1", true);

	WaitAction("Rollbg00*",null);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Rotate("�}st100", 400, @0, @0, -45, DxlAuto,false);
	Zoom("�}st100", 400, 800, 800, DxlAuto, false);
	Move("�}st100", 400, -500, -100, DxlAuto, false);

	Wait(350);

	Fade("Rollbg003", 0, 1000, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}����100", 25, 800, Dxl1, false);
	Move("�}st100",300, @-30, @0, DxlAuto, false);
	Zoom("�}����100", 250, 2000, 2000, Dxl1, false);
	Rotate("�}st100", 250, @0, @0, 45, Dxl1,false);
	Wait(100);
	Fade("�}����100", 500, 0, Dxl1, false);
	Zoom("�}st100", 400, 350, 350, Dxl1, false);
	Move("�}st100", 500, 1024, -350, Dxl1, true);
	Fade("�}����100", 200, 0, Dxl1, false);

	SetVolume("SE03", 1000, 0, null);

	Wait(1000);

	PrintGO("�ϱ���", 25000);

	Delete("Rollbg*");

	CreateColorSP("�}��ܞ", 20000, "#000000");

	DrawDelete("�ϱ���", 125, 100, "slide_02_01_1", true);

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");

	FadeBG(0,true);

	DrawDelete("�}��ܞ", 125, 100, "slide_02_01_1", true);


	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240190a07">
�������ͨ���ˣ����䣡
������ɱ����Χ�ˣ���

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240200a07">
���������ļ����ǳ�����Ȯ���ң�-һ����
��Ϯ����ǿ���������ܼ��ң�
���ɾ��Ѿ���˦������!?��

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0240210a08">
����������˳��չ�����ء�
����ô������������ô��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Q��ϯ
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	FadeStA(0,true);

	FadeDelete("�ϱ���", 600, true);
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0240220a02">
������
���ն����������͡�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0240230a03">
��������Ȼ������˵����
���þ��õĽ���ȥ��ս�����ý��е��ٶȡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0240240a04">
�����в��в��еİ���
��Ҫ�����Ļ�������˵�����������ܰɡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0240250a02">
������û�취��Ȱɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0240260a04">
��������ô����˼��
�����ߵ������ǲ�ͬ��Ŷ�����С�㡣��

{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0240270a02">
���ɶ񡪡�����
����ô����ô�������治���İ�������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0240280a03">
�����ˣ���Ҫ���ˡ�
���������ˡ����������ǵ�Ŀ���ǲ�ͬ��Ŷ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0240290a04">
���ǵġ�
���μӱ���ֻ���ֶζ��ѡ���

{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0240300a02">
��������Щ�������׵İ���
������һ��ʼ�����͸о��������������˰�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0240310a04">
���������������顣
��ϣ���ն������Լ������������ּ����аɡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0240320a03">
����Ӧ����û����ġ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0240330a02">
��������Ȼ��Ҳ���ã���΢��Ҫ��һ�¡�
�����������Ĵն���������

{	FwC("cg/fw/fw����_Ц�.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0240340a04">
���Ǻǡ�
��ȷʵ���ء���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0240350a03">
���������ˡ��뽻���Ұɡ�
�������ڿ�ʼ�������ͳ�������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0240360a02">
��ι��
���������ͻȻ˵������ֵĻ��ء���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0240370a04">
������˵��֣�����˵����ȫ�����ˡ�
���벻Ҫ���������������ס�ڰ�ɫ����ǽ��
��Χ�������е��˰ɡ���

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0240380a03">
������ʱ���ܸ��������������˴�����־��
��Ů�˵İ��飡
������ȼ�յİ�������������˴����ҷ���
�ĵ�·����ȥ�ɣ��ҵİ�����

{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0240390a02">
��Ҫ�Ա��׻��𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0240400a04">
���������������
����ѽ�����ǻ�������������ʱ��
���ֶ������ǱȽ��ټ��ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//������ҕ��
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0,true);

	CreateTextureSP("�}st001", 1300, 1024, Middle, "cg/st/3d��������_�T��_ͨ��.png");

	ma03_SB2(1000,1,1000,0);
	ma03_SB3(1100,300);

	OnSE("se����_�z_��`��_����01",1000);


	Move("�}st001", 800, -150, @+50, Dxl1, false);

	DrawDelete("�\Ļ��", 250, 100, "slide_01_01_1", true);



	CreateSE("SEL01","se����_�z_��`��_Ѳ����");
	MusicStart("SEL01",1000,500,0,1000,null,true);


	BGMoveAuto("@�}st001",1);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ת���ˣ��������
��������˵����ûʲôΣ�յķ��С�

����Ȼ��ʵ�ڲ���ʲô����Ļ���
�����������������ϣ��Ҳ�û���㹻�ľ����𺽼���ͬ
ʱ��֤�ٶȺͰ�ȫ�����Ｋ�ޣ�����ֻ���������ٶȻ�
���˰�ȫ���ѡ�

���ڹ��ڿ���Ҳûʲô��Ȥ�ġ�
������Ҳûʲô�취��ֻ����������һ���ˡ�

���Һ���ͷ���ӿ�Ҫ������Ȧ�ľ����ˡ�
���ڲ����������û��Ҫ���̵ļ���
�ƽ�������ֺ������״̬���񶼺ܺá�
����ô���ء�

����������»��ǲ�Ҫǿ׷�����ǹ�������һȦ������
�ɡ���ֻ֮Ҫ�ӽ�ѡ���ǾͿ����ˡ�
��������Ȼ����˵�ǴӸ����Ͻ�������⡣

��������ʱ�ӽ��ˣ��ֱ������Ļ�����һ����
����Ȼ�ҵ��ٶȴ���ȵ��ڶԷ�����ʵ���������Ǳ���
��������Ը����������ζ��޷�ʵ�ֵġ�

����Ҫ���Ըı��뷨��
������������������������������

��Ҳ��һ�ְ취��
�����������������Ϊ�������������������Ļ���
�ᱻ��������������������Ӵ����޴�����š�

��û��ʲô�õĶԲ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240410a07">
��Ŷ������׼�����ˣ�
���ڽ������ߡ������������а�����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240420a07">
����͵ĳ�����Ȯ����һ�
�����η���ס�����ߣ�ʹ���޴�
���֣����ڶ��͵���λû�б䶯����

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0240430a08">
��Ư���Ĺ���ս��
�����������Ǳ����������һ������ʲô
�������ǳ������š���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0240440a08">
������һ����׾���أ��Ǹ����С���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240450a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������һ�Բ����Ĵ�������ʵ���е㵣�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SEL*", 1000, 0, null);

//�����ҕ��
	SetBlur("�}st001", true, 3, 500, 50, false);

	BGMoveDelete();
	OnSE("se����_�z_��`��_����02",1000);
	Move("�}st001", 800, -2500, @-50, Dxl1, true);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);

	Delete("�}st001");

	ma_03_SBDelete();

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240460a07">
����һ����ʻ��������ߡ�
������������Ȧ�ˣ����������Ȧ����

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240470a07">
������ʮ��Ȧ����Ҫ����������м�
�׶��ˡ�
��״����ʼ��Щ�������𣿡�

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0240480a08">
��������û��
�����辩Ϊ�ף���͡����ᡢ��塢
�ɾ�������һ���ŵ���λ�Ѿ��Ƚ��ȶ��ˡ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240490a07">
����һ�ߣ��󷽵����ƻ��ܻ��ҡ�
������ײ�ϣ����˻���������
�������ݼ��ҵ���������

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240500a07">
�����ǣ�ֻ�����һ���ľ���ӻ���Щ������
����Ȼ��Ԥ�������������ǲ���ʵ����!?
��������¹�̫�������𣡡�

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240510a07">
��������˾���ӻ����ڱ��ܣ�����������λ��
�Ⲣ�������ø�λ��Ѫ��Ǯ�������ǲ�����
�˷Ѹ�λ��˰��ǰ�����������õ�����н��
����н�дճ����õģ���

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240520a07">
�����Ǵ�΢������н��ʡ����Ҫ��һ���֣���ÿ��
��ʳ�Ѵ���ʮԪ������ʮԪ��ƾ����˳Ｏ����Ǯ
���ܣ���ΰ�󰡾���ͬ־�������Ͱ�����ͬ־��
������ʧȥ��нˮ�ɰɣ��ȹ�����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240530a07">
����ɡ����ȹ���
����Ҫ�䰡�ȹ���
������Ŭ�����ȹ�������������!!��

{	FwC("cg/fw/fw�衩���װ_����.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240540a07">
�����ء���������
���������Һ���׳�һ����������

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0240550a08">
����ȥ���������˰�!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������ҕ��
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 20000, "#000000");

	FadeDelete("�ϱ���", 300, true);
	Wait(1000);
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,182,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_024_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("�}��ܞ", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����ֹͣ���ա�
��������Ȼ������û�г�������ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma03/0240560a00">
���������뿪�����ɡ�
���������û�а취�ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240570a01">
����������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240580a00">
�����Ͽ�������ѡ�ּ��š�������
��������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240590a01">
����������
�������������Ϳ����˰ɡ�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240600a00">
��ι����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240610a01">
������ɿ�һ��Ļ��Ϳ����˰ɡ�
�������ɡ�����һ��Ļ�!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240620a00">
���ش��ң�������
�����˽�״���𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240630a01">
�������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����û�˽⡣
������Ӧ��˵�����Ѿ���������״��֮���˰ɡ�

��������ע����������ңԶ��ǰ����
��������Զ�����Ǽ�ʻ�ľ����ý����ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma03/0240640a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240650a01">
����С����<RUBY text="������">С����</RUBY>!!
��������ֽ����һ������!!��

//��������
<voice name="����" class="��������" src="voice/ma03/0240660a01">
�������Ǹ���һ�¡���
���������е�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��ι��
������֮ǰ��
���ܸ����ң��㵽�����ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="��������" src="voice/ma03/0240670a01">
����װ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ޥ��ͥåȥ��`�ƥ���
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#003399");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������������װ��
�����γɷ������ϵĸ����෴�����������õ�
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma03/0240680a00">
���侲һ�������
������취��Ҳ���ǹ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240690a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240700a00">
�������޷��ֲ���ࡣ
��ֻ��װ����ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����װ�������ǽ�װ��ȫ��������зָ�ֲ���д�
�������ò��������ͷ����������������ϵͳ��ø���
��Ч�ʡ�
�������ڴ������Ե���ߡ�

�����ǣ������Ȼ������������Ч��Ҳ���������ĵĳ�
�ȳɱ�����
�����Ҫ�ﵽ������Ч������ƥ�о����ý��е��ٶ�֮
�ࡪ������Ҳ��ܴ�

�������ܳ־õġ����ң��ܷ����������±���Ҳ������
�ʡ�
���ҵó��Ľ��ۣ���������״��������취��Ч��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="��������" src="voice/ma03/0240710a01">
������������������ִ�С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240720a00">
���Ҿ��öԻ�û�г�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240730a01">
���һ�������<RUBY text="����">����</RUBY>ȥ��
���Ҳ���˵�ѵġ�������
��������Ҫ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
��������Ȼ�Ҿ�������������
������ͷ���ڽ��м��㡣

��һ������ǣ��Ҽ����ʹ����˷�״̬�Ĵ������ۡ�
����һ�������������ϲ����
�����������Σ�ա���������Ǹ�<RUBY text="����������">������ʧ��</RUBY>��

��û�ö೤ʱ�䣬�Ҿ͵ó��˽��ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma03/0240740a00">
�������������١���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE02", 300, 0, null);

//��������������
//�룺evָ����ev904_�����ޥ��ͥåȥ��`�ƥ���_c
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	ma_03_SBDelete();
	ma03_024_runsDelete();

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_c.jpg");
	CreateTextureSP("�}����200", 200, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_c.jpg");

	ma03_024_shakeloop("@�}����200",2,1);

	DrawDelete("�\Ļ��", 250, 100, "slide_01_01_1", true);

	CreateSE("SE01","se����_��x_�k��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#003399");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);



	CreateSE("SE02","se����_��x_��������03_L");
	MusicStart("SE02",500,700,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�����ʵ�С�

�����Ӳ�������ˡ�
�����ٶȼ��������ġ�

����֮ǰ��ȫ��ͬ�Ŀ��١�
����������ʹ��ˣ���Ҳ�Ÿոյ�����һ�߾����ý���
����󷽡�

����֮����ǰ���Ĳ�಻�������ˡ�
���ȴ��������ַ����ɴ���������Ҳ���п�
�ܵ��ˡ���Ȼ��
�������Լ��������ǰ��֮�¡�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma03/0240750a00">
�����������������˰ɣ���

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240760a01">
����Ÿտ�ʼŶ����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240770a00">
��ʲô����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�������ϵĽ��е���˵����
���Ҳ��ɵò����˲����Ԥ�С�

������װ�״�����������<RUBY text="��������">ĳ�ֶ���</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="��������" src="voice/ma03/0240780a01">
���������Դ�����֮����
�������ó�Ϊ��������������Ϊ����������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������\����
	CreateSE("SE01","se����_��x_�k��03");
	MusicStart("SE01",0,1000,0,500,null,false);
	CreateTextureEX("�}�ţ�", 300, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_c.jpg");
	SetTone("�}�ţ�", NegaPosi);
	Fade("�}�ţ�", 200, 1000, null, false);
	DrawTransition("�}�ţ�", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	ma03_024_GC();

	CreateColorEXover("�}ɫ", 5000, "#7900BE");
	Fade("�}ɫ", 200, 1000, null, false);
	WaitKey(100);

	FadeDelete("�}ɫ", 300, false);
	DrawDelete("�}�ţ�", 300, 100, "circle_02_00_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����������!?
�����ǡ����ѵ���

���ѵ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/ma03/0240790a00">
��������ʲô!?��

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240800a01">
�������ۼ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������ӥƥ����`�ƥ���
	CreateSE("SE01","se����_���å��ԥå�_������04");
	MusicStart("SE01",0,1000,0,750,null,false);

	ma03_024_GCPC(500,1000,5000);

	CreateTextureEXsub("�}�ţ�", 100, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_c.jpg");
	SetBlur("�}�ţ�", true, 3, 600, 50, false);
	Fade("�}�ţ�", 200, 500, null, false);

	WaitKey(200);

	FadeDelete("�}�ţ�", 2000, false);
	Zoom("�}�ţ�", 600, 1200, 1200, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��װ����Χ������������
���ⲻ����Ϊ�����������ʵĴ���������

��������ȫ��ͬ��������
����ȴ�Ǻ����Ƶ���������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/ma03/0240810a00">
�����ǡ�����������������

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240820a01">
��������˵�����������������ɡ���

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240830a00">
��Ϊʲô�������������£�
�����ǡ�����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240840a00">
�����ǡ���
��<RUBY text="������">���Ǻ�</RUBY>�������ɣ���

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240850a01">
���ƻ��ˡ��ѡ�����Ұ̫����Ƭ��ʱ��
<RUBY text="����">����</RUBY>��Ŷ��
����Ȼֻ��һ����ѡ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
���������ѡ������Ǻ������Ľᾧ��
����һ�εġ��ѡ��Ǽ����˴�������������Ұ̫����
��Ƭ�����ɵġ�

���ѵ���Ұ̫������Ƭ�ص��������ϵ�ʱ�򣬰ѻ���
��������Ǻŵġ�������Ҳһ����������𡭡���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/ma03/0240860a00">
���ܲٿ��𣿡�

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240870a01">
�����ָ߶ȵĻ����ԡ�Ҳ����������ر�Խ
��Խ�òٿء���Ӧ�ðɡ�
����Ȼ������ĸ���������������ٿ������Ƚ�
������Щ����

//��������
<voice name="����" class="��������" src="voice/ma03/0240880a01">
�����Ի�����Щ<RUBY text="����">��Ʒ</RUBY>�ˣ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􏎤��륨�ͥ륮�`���Х��Х��ȡ�
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se����_��x_�k��03");
	CreateSE("SE02","se����_늓�_���01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	MusicStart("SE02",0,1000,0,800,Axl2,true);

	ma03_024_GCPC(500,1000,4000);
	CreateColorEXadd("�}�ե�", 5000, "#000033");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="��������" src="voice/ma03/0240890a01">
����������

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240900a00">
�������������١���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������١��Фө`��
//�룺evָ����ev904_�����ޥ��ͥåȥ��`�ƥ���_d

	CreateSE("SE03","se���L_��x_����չ�_");
	MusicStart("SE03",0,1000,0,1000,null,false);

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE04a","se����_늓�_���01");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	ma03_024_GCPDelete();

	CreateSE("SE04","se���L_����_��ͻ�M03");
	MusicStart("SE04",0,1000,0,1500,Dxl2,false);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",500,1000,null,true);

	PrintGO("�ϱ���", 25000);
//�����ҕ��
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm25",0,1000,true);

	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240910a07">
��������������������������
��������������������������!?��

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0240920a08">
������ʲô������������
������������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Q��ϯ
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	FadeStA(0,true);

	CreateSE("SE01","se����_����_�Z��02");
	MusicStart("SE01",600,1000,0,1000,null,true);

	FadeDelete("�ϱ���", 200, true);
	FadeDelete("�}��ܞ", 200, true);

	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0240930a03">
������������!?��

{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0240940a02">
��ƭ�ˡ���������������
��������������������!?��

{	FwC("cg/fw/fw����_ŭ��.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0240950a04">
���ۡ���������
��
��������˱��׻���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 3000, 0, null);

//������ҕ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	Cockpit_AllFade2();

	CP_SpeedChange(0,256,null,true);
	MyTr_Count(0,381);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_024_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	$ma03_024_runs01 = 100;
	$ma03_024_runs02 = 200;
	CreateSE("SE01","se����_��x_�������`�ƥ���01");

	CreateColorEXmul("�}24co", 2500, "#330033");
	Fade("�}24co", 0, 500, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateSE("SE02","se����_�z_��`��_Ѳ����");
	MusicStart("SE02",500,700,0,1000,null,true);
	FadeDelete("�ϱ���", 200, true);
	FadeDelete("�}��ܞ", 200, true);

	Fade("�}24co", 100, 0, null, true);
	Fade("�}24co", 100, 500, null, true);
	Fade("�}24co", 100, 0, null, true);
	Fade("�}24co", 100, 500, null, true);
	Fade("�}24co", 100, 0, null, true);
	Fade("�}24co", 100, 500, null, true);
	Fade("�}24co", 100, 0, null, true);
	Delete("�}24co");


	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0240960a07">
���������������������ȹ���
����ȫ����������ô�����ġ�������Ȼ��һ����
׷����ȥ��������������������!!��

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0240970a08">
����ô���°�����Ϊʲô���������������ô
ͻȻ�Ͳ�����ô����ٶȰ���
�������ܵİ���ȥ�������Ա����ȷ��һ����
û����ʲô��ֵ���е����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0240980a00">
����������̫���ˣ�
��������˭��������֣���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0240990a01">
�������Ŀ��ơ����е����ѡ���
����׷���˲��Ϳ�������!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0241000a00">
����˵�����������Ҳ�����ô����ע�⣡
����������ͷ�۵ģ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0241010a01">
����ô���ȵ�������ȥͷ�۰ɣ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0241020a00">
����һ�㶼����͡���֮�����ǳ��֡�����ƽӹ
�¸�������һ��װ���¸���װ�׾�����־���氡����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0241030a01">
�����Ǻܺ���ʵ������ͯ������룡��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0241040a00">
�������ٶȡ�����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXmul("�}24co", 2500, "#330033");
	CreateSE("SE01","se����_��x_����ӥƥ������������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}24co", 100, 500, null, true);
	Fade("�}24co", 100, 0, null, true);
	Fade("�}24co", 100, 500, null, true);
	Fade("�}24co", 100, 0, null, true);
	Fade("�}24co", 100, 500, null, true);
	Fade("�}24co", 100, 0, null, true);
	Fade("�}24co", 100, 500, null, true);
	Fade("�}24co", 100, 0, null, true);
	Delete("�}24co");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
�������ƺ��ڱ�����������<RUBY text="������">������</RUBY>��������������
����Ȼ��֪���ҵ������ܷ񴫵��������

�����Ѿ��о��������ˡ�
�������Ѿ���ʧ�ˡ����������˵�����

�������¡�
�������
�������ⲻ�ǿ���Ц��

������װ�׾�����������<RUBY text="����������">û�е�����</RUBY>��
����ô�ܵ������־����ء�

���ҽ������ָ������װ�ױ���������������
����Ȼ�����޷����Կ��ƣ���ôֻ������ͬʱ���п��ơ�

�����ս������Ƿ����ٲ�����������С�
����ʶ���Ȼ�����������Ҫը�������Ժ����Էָ�����
�Լ��ֳ������롣

����ӡס����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ͥ륮�`����
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#330033");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
������һ�㡪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//���p��

	CP_SpeedChange(1000,204,null,false);
	MyTr_Count(1000,213);
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,750,null,false);
	SetVolume("SE02", 1000, 400, null);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	OnSE("se����_�z_��`��_�p��01",1000);

	$ma03_024_runs01 = 200;
	$ma03_024_runs02 = 300;
	FadeDelete("�}�ե�", 600, false);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0241050a07">
������!?���ȹ���ֹͣ�����ˣ�
����Ȼ���������Ҳû���׵�������ô���£�
��������ȥ���񵽼����ˡ���

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0241060a07">
���ƺ��ظ������ȵ���ʻ���ˡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0241070a08">
�����������ڡ�����֮ǰΪֹ����ʻ��ȣ�
���Ƿǳ��Ŀ��ء�
�������������������𡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
���ҽ�����������С���ɿ��Ƶķ�Χ�ڡ�
������ָ����ȶ���״̬��

����������ƽ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/ma03/0241080a00">
��ά������ٶȰɣ�������
����Ҫ�ټ����ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0241090a01">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE02", 500, 0, null);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);

	ma03_024_runsDelete();
	Cockpit_AllFade0();

	DrawDelete("�ϱ���", 125, 100, "slide_01_03_1", true);
	WaitKey(50);
	DrawDelete("�}��ܞ", 125, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw�衩���װ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0471]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0241100a07">
����ѽ�����������ء�
��˵�����㡪������˵�����Ƿǳ�ƽӹ��׾����
�ݺ�����һ�ٰɣ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0241110a08">
�������ء�
��֪�����������ջأ�������˺ðɡ���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0241120a08">
���Ǹ����岢��һ�㰡��
����Ȼ���и㲻���ĵط�������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0241130a08">
���Ǽ���ʮ�ֳ�����������Ҳ��������
�������ǿ�����һĻ��Ҳ����˵���㹻�μ���
�εľ����˰ɡ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0241140a07">
�������������˵�Ļ���
��̫�����ء�������ͬ־����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0241150a01">
����������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0241160a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 1000);

..//������ָ��
//�Υե����롡"ma03_025.nss"


}

..//��1.ma03_SB2
function ma03_SB2($���`���å����_BG,$ma03_BGNum,$ma03_BGTime,$ma03_BGpoint){

	if($ma03_BGNum==1){
	//���g
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_01.jpg");

	}else if($ma03_BGNum==2){
	//ҹ
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");

	}else if($ma03_BGNum==3){
//��`�������`��ֱ��
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_04.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_04.jpg");

	}else{
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

}

..//��2.ma03_SB3
function ma03_SB3($���`���å����_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $���`���å����_BG01, -100, Middle, "cg/bg/bg038_���`���å����b_01.png");
	SetBlur("Circuit_Bar", true, 3, 300, 8, false);

	CreateProcess("���ץ���", 15000, 0, 0, "ma_03_SBProcess");
	Request("���ץ���", Start);
	SetAlias("���ץ���","���ץ���");

}

..//��3.ma03_SB
function ma03_SB($���`���å����_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $���`���å����_BG01, -100, Middle, "cg/bg/bg038_���`���å����b_03.png");
	SetBlur("Circuit_Bar", true, 3, 300, 8, false);

	CreateProcess("���ץ���", 15000, 0, 0, "ma_03_SBProcess");
	Request("���ץ���", Start);
	SetAlias("���ץ���","���ץ���");

}

..//?4.ma_03_SBProcess
function ma_03_SBProcess(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1074, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
	}

}

..//��5.ma_03_SBDelete
function ma_03_SBDelete(){

	Fade("@Circuit_Bar", 0, 0, null, true);
	Delete("@���ץ���");
	Delete("@Circuit_Bar");
	SCR1stop();
	Delete("@Circuit*");

}

..//��6.ma03_024_runs
function ma03_024_runs($md03_024_�ȴ�ե�����,���ȶ�,$md03_024_�ե�������){

	CreateTextureEX("�}runs01", ���ȶ�, Center, Middle, $md03_024_�ե�������);
	CreateTextureEX("�}runs02", ���ȶ�, Center, Middle, $md03_024_�ե�������);
	SetBlur("�}runs01", true, 3, 400, 20, false);
	SetBlur("�}runs02", true, 3, 400, 20, false);

	SetVertex("�}runs01", 518, 389);
	SetVertex("�}runs02", 518, 389);
	SetVertex($md03_024_�ȴ�ե�����, 518, 389);

	CreateProcess("����", 1500, 0, 0, "ma03_024_runsProcess");
	SetAlias("����","����");
	Request("����", Start);

	$ma03_024_runs01 = 125;
	$ma03_024_runs02 = 250;

}

..//��7.ma03_024_runsProcess
function ma03_024_runsProcess(){

	begin:

		Zoom($md03_024_�ȴ�ե�����, 50000, 2000, 2000, AxlAuto, false);
		Shake($md03_024_�ȴ�ե�����, 50000, 1, 1, 0, 0, 500, null, false);
		Fade($md03_024_�ȴ�ե�����, 500, 0, null, false);

		Fade("@�}runs01", $ma03_024_runs01, 500, null, false);
		Zoom("@�}runs01", $ma03_024_runs02, 3000, 3000, AxlAuto, false);

		Wait($ma03_024_runs01);

	while(1){

		Shake($md03_024_�ȴ�ե�����, 50000, 1, 1, 0, 0, 500, null, false);

		Zoom("@�}runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs01", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@�}runs02", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs02", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);
		Zoom("@�}runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs02", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@�}runs01", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs01", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);
		Zoom("@�}runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs01", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@�}runs02", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs02", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);
		Zoom("@�}runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs02", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@�}runs01", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs01", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);

	}


}

..//��8.ma03_024_runsDelete
function ma03_024_runsDelete(){

	Request("@����", Stop);
	Delete("@����");
	Delete("@�}runs*");

}

..//��9.ma03_024_shakeloop
function ma03_024_shakeloop($024SLP,$024�e���x,$024�e���y){

	CreateProcess("�e��e��", 15000, 0, 0, "ma03_024_shakeloopProcess");
	SetAlias("�e��e��","�e��e��");
	Request("�e��e��", Start);

}

..//��10.ma03_024_shakeloopProcess
function ma03_024_shakeloopProcess(){

	begin:

	while(1){Shake($024SLP, 500000, $024�e���x,$024�e���y, 0, 0, 1000, null, true);}

}

..//��11.ma03_024_shakeloopDelete
function ma03_024_shakeloopDelete(){

	Request($024SLP, Stop);
	Shake($024SLP, 0, 0, 0, 0, 0, 1000, null, true);
	Delete($024SLP);
	Delete("@�e��e��");

}

..//��12.ma03_024_GC
function ma03_024_GC(){

	$GCPC_time = 300;
	$GCPC_time2 = 1000;
	$GCPC_time3 = 5000;

	CreateTextureEXmul("�}GC001", 2000, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_d.jpg");
	CreateTextureEXover("�}GC002", 1999, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_d.jpg");

	CreateProcess("����1", 15000, 0, 0, "ma03_024_GCP1");
	SetAlias("����1","����1");

	CreateProcess("����2", 15000, 0, 0, "ma03_024_GCP2");
	SetAlias("����2","����2");


	Request("����1", Start);
	Request("����2", Start);

}

..//��13.ma03_024_GCP1
function ma03_024_GCP1(){

	begin:

	while(1){
		Zoom("@�}GC001", $GCPC_time3, 1300, 1300, AxlDxl, false);
		Fade("@�}GC001",$GCPC_time2, $GCPC_time, null, true);
		Fade("@�}GC001",$GCPC_time2, 0, null, true);
		Zoom("@�}GC001", 0, 1000, 1000, AxlDxl, true);
	}

}

..//��14.ma03_024_GCPC
function ma03_024_GCPC($GCPC_time,$GCPC_time2,$GCPC_time3){}

..//��15.ma03_024_GCP2
function ma03_024_GCP2(){

	begin:

	while(1){
		Fade("@�}GC002",5000, 300, null, true);
		Fade("@�}GC002",5000, 0, null, true);
	}

}

..//��16.ma03_024_GCPDelete
function ma03_024_GCPDelete(){

	Request("@����1",Stop);
	Request("@����2",Stop);

	Delete("@����*");

	SetBlur("@�}GC001", true, 3, 400, 100, false);
	Fade("@�}GC002",500, 0, null, false);
	Zoom("@�}GC001", 1000, 2000, 2000, AxlDxl, false);
	Fade("@�}GC001",500, 700, null, true);
	FadeDelete("@�}GC001",500, true);

	Delete("@�}GC*");

}


..//��17.ma03_024_GCF
function ma03_024_GCF(){

	CreateColorEXmul("�}24co", 2500, "#330033");

	CreateTextureEXover("�}24ef", 2000, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	Zoom("�}24ef", 0, 4000, 4000, null, true);
	Request("�}24ef", Smoothing);

	CreateProcess("����ɫ", 15000, 0, 0, "ma03_024_GCFP");
	SetAlias("����ɫ","����ɫ");

	Request("����ɫ", Start);

}

..//��17.ma03_024_GCFP
function ma03_024_GCFP(){

	begin:

	Fade("@�}24ef",0, 800, null, false);
	DrawTransition("@�}24ef", 0, 0, 200, 200, DxlAxl, "cg/data/circle_02_00_1.png", true);
	Shake("@�}24ef", 500000, 20, 10, 0, 0, 1000, null, false);
//	Rotate("@�}24ef", 500000, @0, @0, 18000, null,false);
	Fade("@�}24co",0, 300, null, false);

while(1){

	Shake("@�}24ef", 500000, 20, 10, 0, 0, 1000, null, true);

}

/*
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@�}24co", 2000, 100, null, false);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@�}24co", 2000, 300, null, false);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@�}24co", 2000, 100, null, false);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@�}24co", 2000, 300, null, false);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@�}24co", 2000, 100, null, false);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
*/

}
