

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//�룺�ǥХå���
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc01_009vsa.nss_MAIN
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
	$First_Battle_Damage = $First_Battle_Damage+1;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$GameName = "mc01_010vs.nss";

}

scene mc01_009vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_009vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��ؤ�Ϥ�
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}��", 18000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}�ݴ���", 17100, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	Move("�}�ݴ���", 0, @-160, @120, null, true);
	CreateTextureSP("�}����", 17000, InRight, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	CreateSE("SE01","se���L_����_������02");
	Move("�}��", 0, -615, @0, Dxl2, false);
	Delete("�ϱ���");

	Move("�}��", 300, @60, @0, DxlAuto, false);
	Move("�}�ݴ���", 300, @60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��", 300, true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateTextureSP("�}����", 17000, InLeft, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	CreateTextureSP("�}�ݺ���", 17100, Center, -480, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 500, 500, null, true);

	DrawDelete("�ϱ���", 150, 100, "slide_01_02_1", true);

	Move("�}�ݺ���", 450, @0, -510, DxlAuto, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���Ҿٵ�������
������Ҳ���ɵؽ�ս��̧����ͷ��

����ô˭���������<RUBY text="����">�·�</RUBY>���ӣ�˭�����ڹ�����ѹ��
ס���֡�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/009vs0460b33">
����Ҫ��ե֭��������Դ�����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���鸫
	CreateColorEX("�}ɫ�\", 19990, "#000000");
	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}�ݺ���", 700, 1500, 1500, Axl2, false);
	Move("�}�ݺ���", 700, @-3, @0, Axl2, false);
	Fade("�}ɫ�\", 600, 1000, Axl2, true);

	CreateSE("SE01a","se���L_����_�����01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_rightdown2(20010,@120, @120,2000);
	SL_rightdownfade2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ŷ��ĸߺ���������Ѹ�ٵع��˹�����������
��ɢ�����������Ƽ�ֱ�������쳣�ĵز�������֮���
�ģ��Է������Ķ���ȴ������ʡ������Ʋ�����ʲô��
������������û���κ���ȡ��С������

����һ�߽ӽ�����ĸ��£�һ�߻���̫����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}�ݺ���");

//�������Ф�
	CreateSE("SE02","se���L_����_Ұ̫�����02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @-75,1500);
	SL_leftdownfade2(10);

//�������`��
	CreateSE("SE02a","se���L_����_��ꪏ���02");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("�}ɫ��", 30000, "#FFFFFF");
	Delete("�}ɫ�\");

	CreateTextureSPadd("�}������", 17010, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	CreateTextureSP("�}����", 17000, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	Zoom("�}������", 0, 1250, 1250, null, true);
	SetBlur("�}������", true, 3, 500, 80, false);
	FadeDelete("�}ɫ��", 150, false);

	FadeDelete("�}������", 1000, false);
	Shake("�}������", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("�}������", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0470a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0480a01">
����Ӳ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����Ӳ���ָ����Ҳ����ݺݵ�ҧ�����أ����������ߵ�
������װ�ס�
���������˺��ص����β���ֻ��ͽ������򵥵Ľ���
���������������á�

����������Σ���һ�غ�ѹ��ס�˵��ˡ�
�����������ҷ�����ս�������ƣ�������Ѷ���������
�ܡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��ʳ�餦�������`��
	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("�}ɫ��", 30000, "#FFFFFF");
	Wait(10);
	Delete("�}ɫ��");

	CreateSE("SE01a","se���L_�n��_�nͻ01");
	CreateSE("SE01aa","se���L_����_�z��������03");
	CreateTextureEX("�}������", 17010, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	SetBlur("�}������", true, 3, 500, 80, false);

	MusicStart("SE01a",0,1000,0,1500,null,false);
	MusicStart("SE01aa",0,1000,0,1000,null,false);
	Fade("�}������", 0, 1000, null, true);
	FadeDelete("�}������", 1000, false);
	Shake("�}������", 500, 0, 20, 0, 0, 1000, Dxl2, true);

//��I�T������
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawDelete("�ϱ���", 150, 100, "circle_01_00_0", true);

	CreateTextureSP("�}�ݱ���", 17000, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	CreateTextureSP("�}�ݴ���", 17110, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	CreateTextureSP("�}�ݺ���", 17100, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");

	$�����sС��=250;
	$�����j�{��=$�����sС��*2.25;

	Zoom("�}�ݴ���", 0, $�����sС��, $�����sС��, null, true);
	Zoom("�}�ݺ���", 0, $�����j�{��, $�����j�{��, null, true);

	CreateSE("SE02","se���L_����_��ͻ�M02");
	CreateSE("SE02a","se���L_����_��ͻ�M01");
	SetBlur("�}�ݴ���", true, 2, 500, 30, true);
	SetBlur("�}�ݺ���", true, 2, 500, 30, true);
	Move("�}�ݴ���", 0, @200, @60, null, true);
	Move("�}�ݺ���", 0, @-200, @-60, null, true);

	Move("�}�ݴ���", 400, @-2500, @-30,Axl2, false);
	Zoom("�}�ݴ���", 400, 850, 850, null, false);

	Move("�}�ݺ���", 400, @2500, @30, Axl2, false);
	Zoom("�}�ݺ���", 400, 1250, 1250, null, false);

	Zoom("�}�ݱ���", 1000, 550, 550, Dxl2, false);

	MusicStart("SE02",0,1000,0,750,null,false);
	MusicStart("SE02a",0,1000,0,1150,null,false);
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

	Wait(800);

	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 30000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}��*");

//������󡸣ãУ�һ�ȣãФ��ʾ���ƥ���`�������¤����
	Cockpit_AllFade2();

	MyLife_Count(0,612);
	CP_IHPChange(0,10,null,false);

	CP_SpeedChange(0,420,null,false);
	MyTr_Count(0,287);

	CP_PowerChange(0,298,null,false);

	CP_HighChange(0,1617,null,false);
	CP_AziChange(0,178,null,false);

	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CreateTextureSP("�}�ݿձ���", 100, Center, -1060, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

//������󡸣ãУ��ϕN���ʤ����Ф��椨��
	CP_SpeedChange(2000,413,Dxl2,false);
	CP_PowerChange(2000,920,null,false);
	CP_HighChange(2000,1712,Dxl2,false);
	CP_AltChange(2000,13,Dxl2,false);
	Move("�}�ݿձ���", 1500, @0, @60, Dxl2, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

//������󡸣ãУ����ģͣǣ�-218��
	MyLife_Count(300,394);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0490a00">
��ʲ����ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����������ܵ��˹�����
��
�����Ǻܳ��صĹ��������˴��Ҳ����̫���ء�

�����ǣ�Ϊʲô!?
��������������ս���Ĺ��������

�����ǡ�����һ�������������������������һ˲
�䱻���У�����������������<RUBY text="����">�Ϸ�</RUBY>�ĵ��
���������ʣ����ǵ��˵�����������

�����ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Cockpit_AllFade0();
	Delete("�}�ݿձ���*");

	CreateSE("SEL01","se���L_����_������02_L");
	CreateTextureSP("�}����", 500, InRight, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	CreateTextureSP("�}�ݴ�����", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	Move("�}�ݴ�����", 0, @-120, @20, null, true);
	Fade("�}�ݴ�����", 0, 1000, null, true);

	Shake("�}�ݴ�����", 2160000, 1, 1, 0, 0, 1000, null, false);
	Shake("�}����", 2160000, 1, 0, 0, 0, 1000, null, false);
	Move("�}����", 300000, @1024, @0, null, false);

	MusicStart("SEL01",1000,1000,0,1000,null,true);
	DrawDelete("�}ɫ�\", 150, 100, "slide_03_01_1", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mc01/009vs0500a00">
�����������ղ�����ʲô!?��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/009vs0510a01">
����������֪����
�������ܿ������ĸ�ͷ����Ӧ���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����Ÿ���֮�ĵĴ���Ҳ������ҡ�ˡ�
����Ϊ�����ǹ��쵽����Ĺ�����

���Ǿ�����ʲô��
�����������𣬻���ĳ�����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 300, 0, null);
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	WaitPlay("SE*", null);

//������`������

}

..//������ָ��
//�Υե����롡"mc01_010vs.nss"
