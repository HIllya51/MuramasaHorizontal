//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_021vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc03_021vs.nss","RandomMeimetsu",true);
	Conquest("nss/mc03_021vs.nss","RandomMeimetsuSet",true);
	

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
	#ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc03_021vsz.nss";

}

scene mc03_021vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vsaa.nss"
//ǰ�ե����롡"mc03_020vsac.nss"

//������å��ᥤ��
//������
//���T��������
//�����Tҕ�J
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	CreateTextureSP("�}����", 100, InLeft, -850, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

	CreateCamera("��", 0, 0, 2500);
	SetAlias("��","��");

	CreateTextureSP("��/�}����", 0, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	CreateTextureSP("��/�}�����}����", 260, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	CreateTextureSP("��/�}�����}����", 250, Center, Middle, "cg/st/3d���å������`_�T��_���Lb.png");
	Move("��/�}�����}����", 0, @-20, @10, null, true);
	Move("��/�}�����}����", 0, @20, @-10, null, true);

	$�����sС��=250;
	$�����j�{��=$�����sС��*2.25;

	Zoom("��/�}�����}����", 0, $�����sС��, $�����sС��, null, true);
	Zoom("��/�}�����}����", 0, $�����j�{��, $�����j�{��, null, true);

	Request("��/*", Smoothing);

	SetBlur("��/�}�����}����", true, 3, 500, 60, true);
	SetBlur("��/�}�����}����", true, 3, 500, 60, true);

	CreateTextureSP("�}�݄�����", 5000, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureSP("�}�݄����r", 5010, Center, Middle, "cg/ef/ef011_����б��܉��.jpg");
	Zoom("�}�݄���*", 0, 1150, 1150, null, true);

	CreateTextureEXadd("�}�݄�����", 5500, Center, Middle, "cg/ef/ef044_��c.png");
	CreateSE("SE01","se���L_����_��ꪏ���02");
	CreateSE("SE01a","se���L_����_�����`�󥽩`02_L");

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);

	FadeFR2("�}�݄�����",0,1000,300,0,0,30,Dxl2,false);
	FadeFR3("�}�݄����r",0,600,300,0,0,40,Dxl2, false);

	Rotate("�}�݄�����", 1000, @0, @0, @7200,null,false);
	Zoom("�}�݄�����", 300, 3000, 3000, Axl2, false);
	Fade("�}�݄�����", 30, 1000, null, true);

	Fade("�}�݄�����", 150, 0, null, true);
	Delete("�}�݄�����");

	SetVolume("SE01a", 1600, 0, null);

	CreatePlainSP("�}��д", 10000);
	Delete("�}�݄���*");

	Wait(12);

	CreateSE("SE02a","se���L_����_��ͻ�M02");
	MusicStart("SE02a",0,1000,0,850,null,false);

	Wait(50);

	CreateSE("SE02","se���L_����_��ͻ�M01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MoveCamera("��", 300, @0, @0, 550, AxlDxl, false);
	Move("��/�}�����}����", 300, @-1000, @0, Dxl1, false);
	Move("��/�}�����}����", 300, @1000, @0, Dxl1, false);

	DrawDelete("�}��д", 150, 100, "circle_01_00_1", true);

	Wait(150);

	Delete("��/�}�����}*");

	CreateSE("SE01","se���L_����_���ϕN01");
	CreateTextureEX("�}�����ر���", 18000, InLeft, Middle, "cg/bg/bg204_�����ر���_01.jpg");

	SetVertex("�}�����ر���", left, bottom);

	$�������ǉ��� = 2.50;
	$�������ǽM�z���� = $�������ǉ��� * 1000;

	$���Ƅ�Ӌ����ʂ� = ImageHorizon("�}�����ر���") * $�������ǉ���;
	$���Ƅ�Ӌ���{���� =  $���Ƅ�Ӌ����ʂ� -1200;
	$���Ƅ�Ӌ���a���� =  $���Ƅ�Ӌ���{���� * (-1);

	Zoom("�}�����ر���", 0, $�������ǽM�z����, 1000, null, true);

	Wait(1);

	SetBlur("�}�����ر���", true, 2, 500, 80, false);
	SetBlur("�}�ݿ�", true, 2, 500, 30, false);
	SetBlur("�}�ݿ��ݳ���", true, 2, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}�����ر���", 300, 1000, AxlAuto, false);

	Move("�}�ݿ�", 300, @-512, @0, null, false);
	Move("�}�����ر���", 1800, @$���Ƅ�Ӌ���a����, @0, AxlDxl, false);

	Wait(1400);

	Delete("��");

	Move("�}����", 800, @-256, @0, Dxl1, false);
	Fade("�}�����ر���", 300, 0, null, true);

	Wait(500);

	CreateTextureEX("�}�����}����", 1000, Center, Middle, "cg/st/3d���å������`_�Tͻ_���Lb.png");
	Move("�}�����}����", 0, @100, @-60, null, true);
	Request("�}�����}����", Smoothing);

	Zoom("�}�����}����", 0, 60, 60, null, true);
	Rotate("�}�����}����", 0, @0, @0, @-15, null,true);

	CreateSE("SE03","se���L_����_��ͻ�M02");

	Wait(12);

	MusicStart("SE03",0,500,0,900,null,false);
	Rotate("�}�����}����", 300, @0, @0, 0, DxlAuto,false);
	Zoom("�}�����}����", 300, 100, 100, null, false);
	Move("�}�����}����", 300, @-100, @0, DxlAuto, false);
	Fade("�}�����}����", 300, 1000, null, true);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc03/021vs0010a00">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ǡ�
���Ҳ��ò�����Լ��ļƻ���

�����ǡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܩ`�ǥ��`�۩`��
	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);

	CreateTextureSP("�}��/�}��", 19010, Center, 144, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_b.jpg");
	Move("�}��/�}��", 5000, @0, @-190, null, false);

	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	CreateTextureSP("�}�����}����", 1000, Center, Middle, "cg/st/3d���å������`_����_ͨ��b.png");
	Move("�}�����}����", 0, @0, @-60, null, true);
	Request("�}�����}����", Smoothing);
	Zoom("�}�����}����", 0, 60, 60, null, true);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc03/021vs0020a00">
�����С�
��������Σ�գ���

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/021vs0030a01">
����ô��!?��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ˡ�
�����ڳ������ϲߣ�������Ψһ��ѡ��

��ת����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}��", 300, 1000, 0, Dxl2, true);
	Delete("�}��");

//���򤭤�䤨���Ӥ��褦�Ȥ��뤬��
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXsub("�}��д", 5000);

	SetVertex("�}��д", 512, 223);
	Zoom("�}��д", 0, 1250, 1250, null, true);
	//SetBlur("�}��д", true, 3, 500, 60, false);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl1, false);

	Wait(270);

	RandomMeimetsu();
	Request("�}��д", NormalRender);
	SetTone("�}��д", Monochrome);
	SetBlur("�}��д", true, 0, 500, 60, false);
	MoveFRP1("@�}�����}����",30000,10,10);
	MoveFRP2("@�}��д",30000,20,20);
	MoveFRP3("@�}����",30000,8,8);

	SoundPlay("@mbgm13",0,1000,true);

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc03/021vs0040a00">
������ʲô������

{	FwL("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc03/021vs0050a00">
��������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��<RUBY text="����">����</RUBY>�޷���ߡ�
��<RUBY text="����">��ת</RUBY>û��Ч����

��֮ǰ��һ�غϡ�������״�����ѵ�����ƴ��������ǿ
��������ˣ�
��������Ҫ��ʱ�򡭡�������������!!

�����ѵ��ǵ��˵ļƲ���
��Ϊ��������������������Ϊֹ��û��ʹ������!?


���ҵ�ʧ��!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܩ`�ǥ��`�۩`��k��
	CreateSE("SE02","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 19010, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_b.jpg");
	CreateTextureSP("�}��", 19000, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_b.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Wait(300);

//�����Ф����`�󡣤ܩ`��
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 19910, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 19900, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 100, false);

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, true);

	WaitKey(1000);

	ClearWaitAll(3000, 2000);

//�����񥲩`�४�`�Щ`

..//������ָ��
//�Υե����롡"mc03_021vsz.nss"

}

.//����������
function RandomMeimetsu()
{
	CreateProcess("�Х���������", 5000, 0, 0, "RandomMeimetsuSet");
	SetAlias("�Х���������","�Х���������");
	Request("�Х���������", Start);
}

function RandomMeimetsuSet()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(20) + 10;
	$RFTS = ($RFadeTimeSet * 100) +1000;
	Fade("@�}��д", $RFTS, 150, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +200;

	Wait($RWS);

	$RFadeTimeSet2 = Random(30);
	$RFTS2 = ($RFadeTimeSet2 * 100) +1000;
	Fade("@�}��д", $RFTS2, 750, null, true);

	}

}