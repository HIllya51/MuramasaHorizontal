
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

scene mc01_010vscb.nss_MAIN
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
	$mc01_010vscb_���uҊ�Ф� = true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$GameName = "mc01_011vs.nss";

}

scene mc01_010vscb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_010vsc.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//���¶�
//�������¶Θ���
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}�ݴ���", 17100, Center, Middle, "cg/st/3d�����˜�_�T��_���Lb.png");
	CreateTextureSP("�}����", 17000, InRight, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	Request("�}����", Smoothing);
	Request("�}�ݴ���", Smoothing);
	Move("�}�ݴ���", 0, @-100, @-60, null, true);
	Zoom("�}�ݴ���", 0, 1300, 1300, null, true);

	FadeDelete("�ϱ���", 500, false);

	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("�}�ݴ���", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("�}����", 0, 1500, 1500, null, true);
	Move("�}����", 60000, 0, @0, null, false);

	Move("�}�ݴ���", 300, @-60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����תΪ�¶����ơ�
��̫��������࣬�������£�׼������ʱ�｣�Ͽ���

�������߽����ٵ������Ĵ�ͳ������ȣ����⳯�µĵ�
��������ȷ������
����Ҫ��������һ��������װ����ʮ�����ѵġ�

��Ȼ����Ҳ���ҵĿ��ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӽ�
	CreateTextureEX("�}��", 18000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	Fade("�}��", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����þٵ��������Ƶĵ���ӽ��ҵĸ���������ս����
�������õ��⳯�����Ƶ��ҷ�������뿿�����˵ı���
����̫����

����������̫������������£�ʤ�����ɿ������Ƶ��ٶ�
�뽣���������ġ�
���ܹ���һ�����չ���ʱ���������Թ�������һ��������
ȡ��ʤ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}��", null);
	Delete("�}�ݴ���*");
	Delete("�}����*");

	CreateTextureSP("�}����", 17000, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	FadeDelete("�}��", 600, false);

	SetFwC("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/010vs0170b33">
����������ά�����������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T������
	CreateSE("SE01a","se���L_����_���ϕN01");
	MusicStart("SE01a",0,1000,0,1200,null,false);
	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateColorSP("�}��/�}��ɫ", 19010, "#336600");
	CreateTextureSPmul("�}��/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 19100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}��/�}�����}װ��", Smoothing);
	Zoom("�}��/�}�����}װ��", 0, 750, 750, null, true);

	Zoom("�}��/�}�����}װ��", 300, 1250, 1250, Axl2, false);
	Move("�}��/�}�����}װ��", 300, @0, -430, Axl2, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc01/010vs0180a00">
������ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	PrintGO("�ϱ���", 30000);
	CreateTextureSPover("�}�݄���", 110, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	Request("�}�ݱ���", Smoothing);
	Zoom("�}�ݱ���", 0, 3000, 1000, null, true);

	CreateTextureSP("�}�ݺ���", 100, -660, -610, "cg/st/3d���å������`_�T��_���La.png");
	Request("�}�ݺ���", Smoothing);
	Rotate("�}�ݺ���", 0, @0, @-30, @0, null,true);

	CreateTextureSP("�}�ݴ���", 100, 170, -360, "cg/st/3d�����˜�_�T��_���Lb.png");
	Request("�}�ݴ���", Smoothing);
	Rotate("�}�ݴ���", 0, @0, @-10, @0, null,true);

	$�����sС��=300;
	$�����j�{��=$�����sС��*1.75;
	Zoom("�}�ݴ���", 0, $�����sС��, $�����sС��, null, true);
	Zoom("�}�ݺ���", 0, $�����j�{��, $�����j�{��, null, true);

	Move("�}�ݺ���", 15000, -580, -610, Dxl2, false);
	Move("�}�ݴ���", 15000, 90, -330, Dxl2, false);

	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ڹ�����ǰһ���ӽ��м�����!?

����ô���ܣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֣�̫��
//�����������`������Ϥ�
	CreateColorSP("�}ɫ�\", 20010, "#000000");
	CreateSE("SE02b","se���L_����_�����01");
	MusicStart("SE02b",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

	CreateSE("SE02c","se���L_����_Ұ̫�����02");
	MusicStart("SE02c",0,1000,0,1500,null,false);
	SL_leftup2(20010,@0, @0,1500);
	SL_leftupfade2(10);

	CreateSE("SE03","se���L_����_��ꪏ���02");
	CreateSE("SE03a","se���L_�n��_�nͻ01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 22000, "#FFFFFF");
	CreateTextureSP("�}�݄���", 21000, Center, Middle, "cg/ef/ef044_��a.jpg");
	CreateTextureEXadd("�}�݄�����", 21110, Center, Middle, "cg/ef/ef044_��a.jpg");

	CreateTextureSP("�}���ձ���", 1000, Center, InTop, "cg/bg/resize/bg201_�����ݳ������нֵ�a_01.jpg");
	Zoom("�}���ձ���", 180000, 2000, 2000, null, false);

//������󡸣ãУ����ڂ����x��
	Cockpit_AllFade2();

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	MyLife_Count(0,$�����饤���{����);
	CP_IHPChange(0,$����������{����,null,false);

	CP_SpeedChange(0,512,null,false);
	MyTr_Count(0,440);

	CP_PowerChange(0,870,null,false);

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,243,null,false);

	CP_AltChange(0,15,null,false);
	CP_RollBarMove2(0,0,null,true);

	Delete("�}�ݴ���");
	Delete("�}�ݺ���");
	Delete("�}�݄���");
	Delete("�}�ݱ���");
	Delete("�}ɫ�\");

	FadeDelete("�}ɫ��", 500, false);
	Shake("�}�݄�����", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("�}�݄�����", 500, 1500, 1500, Dxl2, false);
	Fade("�}�݄�����", 250, 1000, null, true);
	Fade("�}�݄�����", 250, 0, DxlAuto, true);
	FadeDelete("�}�݄���", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������ɥʧ�˹����Ȼ���
�����Һã��������������̫����ʱ�����˵��

��ս�����صĵ���ƫ��Ŀ�꣬�ῳ����С�
��
��֮�󡪡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��I�T����
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawDelete("�ϱ���", 150, 100, "circle_01_00_0", true);

	CreateTextureSP("�}�ݱ���", 17000, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	CreateTextureSP("�}�ݴ���", 17110, Center, Middle, "cg/st/3d�����˜�_�T��_���Lb.png");
	CreateTextureSP("�}�ݺ���", 17100, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");
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

	WaitKey(500);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


	PrintGO("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SEL01a","se���L_����_������02_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateTextureSP("�}�ݱ���", 17000, InLeft, InBottom, "cg/bg/resize/bg002_��a_01.jpg");
	CreateTextureEX("�}�ݴ������}", 17100, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	SetBlur("�}�ݴ������}", true, 2, 300, 150, false);
	Move("�}�ݴ������}", 0, @-380, @60, null, true);
	Delete("�ϱ���");
	Move("�}�ݱ���", 650, @-60, @288, Dxl2, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	Wait(200);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);
	Shake("�}�ݴ������}", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("�}�ݴ������}", 2300, @30, @-60, Dxl2, false);
	Fade("�}�ݴ������}", 300, 1000, null, true);

	Move("�}�ݱ���", 180000, -1024, 0, null, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/mc01/010vs0190a01">
������û�й�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/010vs0200a00">
��û�С���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���Ҳ�δ�ܵ����������صĹ�����
������û���ٶ��������������ʹ˱��롣

���������ǲ�����ζ�ţ������������ﱳ��ʩչ�ǹ���
��<RUBY text="����">����</RUBY>��

�����������Ժܸߡ�
������֮�⣬���벻�����������Ǹ�̰���ĵ���ʹ���
�ֵ����ɡ�

����Ȼ��δ���׵���ʵ̬������£��������ʵ��ж���
��Σ�յġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 100, 0, null);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Cockpit_AllFade0();
	Wait(1500);

//�����uҊ�Ф�ե饰�ϣ�

}

..//������ָ��
//�Υե����롡"mc01_011vs.nss"
