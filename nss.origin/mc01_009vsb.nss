

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_009vsb.nss_MAIN
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
	$First_Battle_Defense = true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$GameName = "mc01_010vs.nss";

}

scene mc01_009vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_009vs.nss"

//��ҤȤޤ�����
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}��", 18000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Move("�}��*", 0, -615, @0, Dxl2, false);
	FadeDelete("�ϱ���", 0, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
��������Ŀ�ľ������ĵ��ˡ�
����ȻҪ���أ���Ҳ����������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ݴ���", 17100, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	CreateTextureSP("�}����", 17000, InRight, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	Request("�}����", Smoothing);
	Request("�}�ݴ���", Smoothing);
	Move("�}�ݴ���", 0, @-160, @120, null, true);
	Zoom("�}�ݴ���", 0, 1300, 1300, null, true);

	CreateSE("SE01","se���L_����_������02");

	Shake("�}�ݴ���", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("�}����", 0, 1500, 1500, null, true);
	Move("�}����", 60000, 0, @0, null, false);

	Move("�}��", 300, @60, @0, DxlAuto, false);
	Move("�}�ݴ���", 300, @60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��", 300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
�����ܼ��ھ���ʤ����������ʱ����������ѹ����ȥ��
���Ҿٵ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����", 2000, 1000, 1000, null, false);
	Zoom("�}�ݴ���", 2000, 260, 260, DxlAuto, false);
	BezierMove("�}�ݴ���", 2000, (@0,@0){@-600,@-90}{@+330,@-210}(@400,@-300), DxlAuto, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010c]
��Ȼ�����ǰ����������ײ����һ˲�䣬�Һݺݵ�
������ȥ��
���������Ĺ�����Χ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�����ر܄���
	CreateSE("SE01a","se���L_����_��ͻ�M02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetBlur("�}�ݴ���", true, 2, 500, 40, true);
	Move("�}�ݴ���", 300, @-1024, @576, Dxl2, true);

	WaitKey(300);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreateTextureSP("�}�ݺ���", 17100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	CreateTextureSP("�}����", 17000, InLeft, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	Request("�}����", Smoothing);
	Request("�}�ݺ���", Smoothing);

	Shake("�}�ݺ���", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("�}����", 0, 1500, 1500, null, true);

	Move("�}�ݺ���", 300, @0, @-30, DxlAuto, false);
	Zoom("�}����", 150000, 1100, 1100, null, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_01_03_1", true);

	SetFwR("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/009vs0520b33">
����Ҫ����Ĺɼ䣬����ļ�׵�ݺݵس����!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������һ��
	CreateColorSP("�}ɫ�\", 20000, "#000000");
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

	CreateSE("SEL01","se���L_����_������02_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������û��������
������ֻ�Ǽ򵥵ػ����˸�ͷ���ѡ�

����һ��Ҳֻ�ǳ�����������û���κλ����ļ��ɡ�
����Ȼû�к�ڡ������Ҵ�Ŷ�����������ĵ��˾�
�����Щ���֡�

��������˼����˲�䡣

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 100, 1, null);

//������á����Ĥ���⟤򤫤��롣
//������äȓe��ơ�����
	CreateColorSP("�}��ܞ", 20000, "#FFFFFF");
	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainSP("�}��д", 18010);
	FadeDelete("�}��ܞ", 300, false);
	FadeFR2("�}��д",0,1000,300,0,0,30,Dxl3, true);
	Delete("�}��д");

	SetVolume("SEL*", 3000, 1000, null);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0530a00">
������!?
��ʲô����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/009vs0540a00">
���ܵ��������𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0550a01">
�������á������ǡ�
����Ȼû���κ����ˡ���

//��������
<voice name="����" class="��������" src="voice/mc01/009vs0560a01">
�������ǡ���!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ǵ�ȷ�ǵ��˵Ĺ�����
��<RUBY text="����������">�������µ�</RUBY>���������������������ڹ�����

���������ֶ�ȴ������
��ս����һ��Ӧ������ȫ����˵ġ���

��������ʲô��
�����������𣬻���ĳ��������

�������޴���Σ���ȡ��Ϊ���ص�Ӧ�Է��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 300, 0, null);
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	WaitPlay("SE*", null);

..//������ָ��
//�Υե����롡"mc01_010vs.nss"


}