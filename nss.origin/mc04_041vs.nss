//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_041vs.nss_MAIN
{

	
//���å��ԥå��ãӣ��
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
	#ev205_ʸ��Ĥ��ŤĥХ���_a=true;
	#ev205_ʸ��Ĥ��ŤĥХ���_b=true;
	#ev205_ʸ��Ĥ��ŤĥХ���_c=true;
	#ev004_����֦������_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mc04_042vs.nss";

}

scene mc04_041vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_040vs.nss"


//������������
	PrintBG("�ϱ���", 30000);

	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Wait(1000);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	CreateTextureSP("�}����50", 100, Center, -400, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Request("�}����50", Smoothing);

	Delete("�ϱ���");


	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CP_AltChange(0,10,AxlDxl,false);
	CP_AziChange(0,-150,AxlDxl,false);
	CP_SpeedChange(0,600,null,false);
	CP_HighChange(0,453,null,false);

	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se���L_����_��ͻ�M01",1000);

	DrawDelete("�\Ļ��", 200, 100, "slide_02_01_1", false);
	Move("�}����50", 1000, @0, @100, Dxl2, true);

	BGMoveAuto("@�}����50",1);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������������!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	BGMoveDelete();

/*
	CreateTextureEXadd("�k��", 18500, 0, Middle, "cg/ef/ef044_��a.jpg");
	CreateTextureSP("kana", 18100, 0, Middle, "cg/ev/resize/ev205_ʸ��Ĥ��ŤĥХ���_al.jpg");
	SetBlur("kana", true, 3, 300, 100, false);
	Move("kana", 0, @-200, @-200, null, true);
	CreateTextureSP("�}EV100", 18000, 0, Middle, "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_a.jpg");
	Zoom("�}EV100", 0, 2000, 2000, null, true);
	SetBlur("�}EV100", true, 3, 300, 100, false);

	Move("kana", 200, @-200, @+100, Dxl1, true);

	Wait(100);

	OnSE("se����_�z_װ��06",1000);
	Move("kana", 300, @-500, @250, Dxl2, true);

	Wait(1000);

	Move("�}EV100", 0, -390, 140, null, true);

	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);
	FadeDelete("kana", 250, false);
	Move("�}EV100", 200, 0, 0, Axl3, false);
	Zoom("�}EV100", 200, 1000, 1000, Axl3, true);

	Wait(200);
*/

	CreateColorEXadd("�}ɫ�·�", 18000, "WHITE");


	OnSE("se����_mv��_�ѥ�ɥå���",1000);
	OnSE("se����_mv��_�ѥ�ɥå���",1000);
	Fade("�}ɫ�·�", 300, 1000, Axl3, false);
	MovieSESet(21000,"mv�ѥ�ɥå���","se����_mv��_�ѥ�ɥå���");
	MovieSEStart(0);


//���رܙC��

//�����ߣ����x
	CreateTextureEX("�}����150", 100, 0, 0, "cg/bg/resize/bg201_�����ݳ������нֵ�a_01.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 12000, 1000, null, true);
//�����ߣ����`�ե��`������
	CreateSurfaceEX("�}Suf",1000,2000,"�}����150");

	CreateSE("SE��å�����","se����_���å��ԥå�_������02");
//	CreateSE("SE�ܥ�����","se���L_�Х���_�ܩ`�������01");
	CreateSE("SEͻ�M","se���L_����_��ͻ�M03");

//�����ߣ��ܥ�����k���ݳ�
	EffectZoomDXadd(13000, 1000, 1000, "#FFFFFF", "cg/ef/ef039_�r�g�Ƅ�.jpg", false);
	Wait(100);
//	MusicStart("SE�ܥ�����",0,1000,0,1000,null,false);
	Fade("�k��", 0, 1000, null, true);
	Rotate("�k��", 300, @0, @0, @3600, null,false);
	Zoom("�k��", 300, 3000, 3000, Axl3, false);
	Zoom("�}EV100", 300, 2000, 2000, Axl3, false);
	FadeDelete("�k��", 500, false);
	FadeDelete("�}ɫ�·�", 300, false);

//�����ߣ����å��ԥå�Ӌ��
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//�����ߣ�����
	CP_AziChange(2000,-32,AxlDxl,false);
	CP_SpeedChange(2000,700,AxlDxl,false);
	CP_HighChange(2000,479,AxlDxl,false);
	Move("@�}����50", 800, @-200, @0, Axl3, false);
	Wait(500);
	Fade("�}����150", 500, 1000, null, false);
	Fade("�}Suf", 500, 1000, null, false);
	Rotate("�}Suf", 2000, @0, @0, @345, AxlDxl,false);
	CP_RollBarMove2(2000,370,AxlDxl,false);
	Move("@�}����150", 2500, @-4048, @0, AxlDxl, false);
	Fade("@�}����150", 300, 1000, null, true);

	Move("@�}����50", 0, -312, -388, null, true);

	MusicStart("SEͻ�M",0,1000,0,1000,null,false);
	Wait(1500);

//�����ߣ����`�ե��`�������K��
	Fade("�}Suf", 300, 0, null, false);
	CP_RollBarMove2(800,360,AxlDxl,false);
	Move("@�}����50", 800, -512, -288, Dxl2, false);

//	BGMoveAuto("@�}����50",1);

	SetFwC("cg/fw/fw����_���L.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/041vs0010a00">
���ܿ��ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ɹ��жϳ������˲�䡣
������ܿ������ߡ���������

����������Ӯ����<k>
��
��
�����������������������������������������˲�䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);
	CreateColorSP("�}ɫ100", 18000, "BLACK");
//�����ߣ����`�ե��`������
	Delete("�}����150");
	Delete("�}Suf");
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0035]
�������ٵķ��У������˱�ӽ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǄI��

	CreateColorEX("�}ɫ200", 18500, "WHITE");
	Fade("�}ɫ200", 200, 1000, null, true);
	CreateTextureSP("�}����100", 18010, Center, Middle, "cg/ef/ef038_�������.jpg");
	Delete("�}ɫ100");

	SoundPlay("@mbgm07",0,1000,true);

	Wait(300);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��
���������˶��ļ������޷�����ƻ����
��������The paradox of "Tell and apple"<PRE>.</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	FadeDelete("�}ɫ200", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������������ڶ���ѧ�Ҷ�Ϊ֮���յ���ۡ�
�����Ϊ��֪�İ�����˹���ڹ��������ơ�

���˶���ƻ������ۡ�
�����˶��Ĺ�����ļ��޷�����ƻ������
��Ϊ��ʸ���ȱ��뵽�﹭��ƻ�����м�����

��Ϊ�˵�����㣬�ֱ����ȵ��﹭�������м��¡�
��Ϊ�˵���µ㣬�ֱ����ȵ��﹭��µ���м��á���


  ���������ܹ��趨����������ͨ�����м�㡣
����ˣ�����ͨ����������ļ�ʸ�����޷�����Ŀ�ꡣ


  ����ʵ������㣵����ۡ�

�����ǵ�������ͨ��<RUBY text="����">�۲�</RUBY>�������ġ�
��һ������������֮������������������һ��ʵ��

���������ܹ��۲⵽<RUBY text="����">����</RUBY>���м�㣬
�����ܹ۲⵽��ʸͨ����ÿһ���<RUBY text="����">����</RUBY>��
˲����ˣ���ô������˶�����۾ͻ��Ϊ��ʵ�ɡ�
��Ȼ����������ϲ������������Ĺ۲��ߡ�

��Ӧ��û���˻���ô���Ŷԡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 1000, 0, null);

	Wait(500);

//�����ۥ��åס����ۤ�����֦ȫ����
//���z�ˤ�˲�r������椨�Ĥĥ����������Ƥ����Ф�����
//���ݳ��˺Ϥ碌�ƴΤο�Ц���ƥ����Ȥϳ����ʤ�
	CreateColorEXadd("�}ɫ200", 18500, "WHITE");
	CreateSE("SE01","se����_�Х���_�ѥ�`���_L");
	MusicStart("SE01",500,1000,0,1000,null,false);
	OnSE("se���L_����_��ͻ�M04",1000);
	Fade("�}ɫ200", 100, 1000, null, true);

	CreateTextureSP("�}����100", 18010, Center, Middle, "cg/ev/ev004_����֦������_a.jpg");
	Zoom("�}����100", 0, 1200, 1200, null, true);
	CreateTextureEX("�}����200", 18020, Center, Middle, "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_b.jpg");
	CreateTextureEX("�}����300", 18030, Center, Middle, "cg/ev/ev205_ʸ��Ĥ��ŤĥХ���_a.jpg");
	Request("�}����*", Smoothing);

	Zoom("�}����200", 0, 2000, 2000, null, true);
	Zoom("�}����300", 0, 2000, 2000, null, true);
	SetBlur("�}����200", true, 1, 300, 100, false);
	SetBlur("�}����300", true, 1, 300, 100, false);

	Zoom("�}����100", 3000, 1000, 1000, null, false);
	FadeDelete("�}ɫ200", 1000, false);


	Wait(1800);

	Zoom("�}����200", 2000, 1800, 1800, null, false);
	Fade("�}����200", 1000, 1000, null, true);
	Wait(1000);
	SetVolume("SE*", 1000, 0, null);
	OnSE("se���L_�Х���_�ܩ`���󘋤�01",1000);
	Fade("�}����300", 700, 1000, null, false);
	Zoom("�}����200", 700, 1000, 1000, Dxl2, false);
	Zoom("�}����300", 700, 1000, 1000, Dxl2, true);
	Delete("�}����200");

	Wait(500);

	SetFwC("cg/fw/fw�Х���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/041vs0020a03">
��������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���е�����
	CreateTextureEX("�}����100", 18040, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	CreateTextureEX("�}����200", 18040, -512, 288, "cg/ef/ef038_�������.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);
	Zoom("�}����200", 0, 2000, 2000, null, true);

	Fade("�}����100", 150, 1000, Axl3, false);
	Fade("�}����200", 150, 1000, Axl3, false);
	MovieSESet(21000,"mv�ѥ�ɥå���ʸ","se����_mv��_�ѥ�ɥå���ʸ");
	MovieSEStart(0);



	CreateSE("SE01","se���L_�Х���_�ܩ`�������01");

	OnSE("se���L_�Х���_�ܩ`�������02",1000);

	Shake("�}����100", 300, 5, 5, 0, 0, 500, null, false);
	Move("�}����200", 500, @1024, @-576, Dxl2, false);
	FadeDelete("�}����300", 100, false);

	Wait(400);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����100", 500, 1000, 1000, null, false);
	FadeDelete("�}����200", 100, false);
	EffectZoomDXadd(18100, 1000, 300, "#FFFFFF", "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg", true);

	Wait(300);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/041vs0030a00">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
������
��
��������������������������������ת���ˣ�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}�ե�å���", 18500, "WHITE");

	CreateTextureEX("�}����200", 18050, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���b.jpg");
	CreateTextureEX("�}����300", 18050, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���c.jpg");
	CreateTextureEX("�}����400", 18050, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���.jpg");
	CreateTextureEX("�}���k", 18150, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Zoom("�}���k", 0, 1100, 1100, null, true);

	CreateSE("SE01","se���L_�Х���_�ܩ`�������02");
	CreateSE("SE02","se���L_�Х���_�ܩ`�������02");
	CreateSE("SE03","se���L_�Х���_�ܩ`�������02");
	CreateSE("SE04","se���L_�Ɖ�_�z03");
	CreateSE("SE05","se���L_�n��_�zܞ��02");


	Fade("�}�ե�å���", 0, 1000, null, true);
	Fade("�}����200", 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
//	EffectZoomDXadd(18100, 150, 100, "#FFFFFF", "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���b.jpg", true);
	Wait(30);
	Fade("�}�ե�å���", 0, 0, null, true);

	Wait(100);

	Fade("�}�ե�å���", 0, 1000, null, true);
	Fade("�}����300", 0, 1000, null, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
//	EffectZoomDXadd(18100, 150, 100, "#FFFFFF", "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���c.jpg", true);
	Wait(30);
	Fade("�}�ե�å���", 0, 0, null, true);

	Wait(100);

	Fade("�}�ե�å���", 0, 1000, null, true);
	Fade("�}����400", 0, 1000, null, false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	FadeDelete("�}�ե�å���", 200, false);
	EffectZoomDXadd(18100, 300, 200, "#FFFFFF", "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���.jpg", true);

//�����С������`��

	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE05",0,1000,0,1000,null,false);

	EffectZoomDXadd(18500, 1000, 500, "#FFFFFF", "cg/ef/ef040_�����nͻ.jpg", false);

	Shake("�}���k", 3500, 20, 20, 0, 0, 500, Dxl2, false);
	Zoom("�}���k", 3500, 1500, 1500, Dxl2, false);
	Fade("�}���k", 50, 1000, null, true);

	Wait(2000);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	ClearFadeAll(2000, true);
	CP_AllDelete();

	Wait(1000);

}

..//������ָ��
//�Υե����롡"mc04_042vs.nss"

