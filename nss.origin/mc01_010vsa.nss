
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_010vsa.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc01_011vs.nss";

}

scene mc01_010vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_010vs.nss"

//������ɹ�
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}��", 18000, Center, -40, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
������ȹ۲������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ݴ���", 17100, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	CreateTextureSP("�}����", 17000, InRight, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	Request("�}����", Smoothing);
	Request("�}�ݴ���", Smoothing);
	Move("�}�ݴ���", 0, @-160, @120, null, true);
	Zoom("�}�ݴ���", 0, 1300, 1300, null, true);

	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("�}�ݴ���", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("�}����", 0, 1500, 1500, null, true);
	Move("�}����", 60000, 0, @0, null, false);

	Move("�}�ݴ���", 300, @60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��", 500, true);

	CreateSE("SE01a","se���L_����_���ϕN01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Zoom("�}����", 2000, 1000, 1000, null, false);
	Zoom("�}�ݴ���", 2000, 260, 260, DxlAuto, false);
	BezierMove("�}�ݴ���", 2000, (@0,@0){@-600,@-90}{@+330,@-210}(@400,@-300), DxlAuto, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
���Ҿٵ�������ӭ�������
��
����ֻ��Ϊ���öԷ�����������ڽ��ֵ���һ˲���ұ�
����ȵظı�·�ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01a","se���L_����_��ͻ�M02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetBlur("�}�ݴ���", true, 2, 500, 40, true);
	Move("�}�ݴ���", 300, @-1024, @576, Dxl2, true);

	WaitKey(300);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

	CreateColorSP("�}ɫ��", 20010, "#FFFFFF");
	Wait(10);

	Delete("�}ɫ�\");
	Delete("�}��*");
	Delete("�}����*");

	WaitKey(200);

	CreateSE("SE01a","se���L_����_��ͻ�M01");
	CreateTextureSP("�}�ݱ���", 18000, Center, -900, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("�}�ݱ���", 1500, @0, @-180, Dxl2, false);
	Fade("�}ɫ��", 850, 0, DxlAuto, false);
	DrawDelete("�}ɫ��", 1000, 100, "slide_06_00_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������������һ����
��Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ�󡣺Τ����������^������
	CreateSE("SE01","se���L_����_���04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_01_0", true);

	CreateSE("SEL01","se���L_����_������02_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc01/010vs0010a00">
��������������!?��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/010vs0020a01">
�����У�
��������ȷ��һ�㡣�ǲ���<RUBY text="����">���</RUBY>����

//��������
<voice name="����" class="��������" src="voice/mc01/010vs0030a01">
���������ʵأ���ĳ��<RUBY text="����">���</RUBY>����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/010vs0040a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��Ҳδ������������Ȳ������߻�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 100, 0, null);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitAction("�}�ݱ���", null);

	CreatePlainSP("�}��д", 18100);
	SetBlur("�}��д", true, 2, 500, 60, false);
	Zoom("�}��д", 800, 2000, 2000, Dxl2, false);
	Rotate("�}��д", 800, @0, @0, @180, AxlDxl,false);

	WaitKey(300);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitPlay("SE*", null);

..//������ָ��
//�Υե����롡"mc01_011vs.nss"


}




