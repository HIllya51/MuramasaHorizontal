//<continuation number="710">


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

scene mb02_028vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb02_028vs.nss","Lastfire",true);
	Conquest("nss/mb02_028vs.nss","EffextDamage",true);
	
//���å��ԥå��ãӣ��
	//CP_AllSet("����");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#ev916_�����w����ڡ������a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mb02_029vs.nss";

}

scene mb02_028vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mb02_027.nss"

	if($GameDebugSelect==1){CP_AllSet("����");}

//�����ڥ�˥��`
//��һ�ȳय���硣����`����F

	PrintBG("�ϱ���", 30000);
//	CreateColorSP("�}��ܞ", 18000, "#000000");

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
//	CreateTextureSP("�}����150", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");

//�����ߣ����å��ԥåȄ������x========================
	Cockpit_AllFade2(300,780,0);
	MyLife_Count(0,600);
	MyTr_Count(0,720);

	CP_SpeedChange(0,700,null,true);
	CP_HighChange(0,550,null,true);
	CP_PowerChange(0,500,null,false);
	CP_AziChange(0,-220,null,true);

	CP_EHPChange(0,9,null,true);
	EnLife_Count(0,722);
	EnTr_Count(0,335);
	CP_EnemyFade(300,10,722,335);

//�����ߣ����å��ԥåȶ��x========================

	CreateColorEXmul("�}ɫ100", 18000, "RED");

	CreateSE("SE01","se���L_�Ɖ�_���k07");
	CreateSE("SE10","se���L_����_��ͻ�M05");


//�����ߣ����å��ԥåȄ���========================
//	FadeF4("�}����150", 0, 300, 10000, 0, 0, Dxl3, false);
	Fade("�}ɫ100", 0, 1000, null, true);


	CreateTextureEX("�}����400", 31000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	Request("�}����400", AddRender);

	CreateTextureEXadd("�}st150", 32000, -531, -668, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}st160", 32000, 250, -435, "cg/ef/ef044_��c.png");
	Rotate("�}st160", 0, @0, @0, 120, null,true);
	CreateTextureEXadd("�}st170", 32000, -186, -576, "cg/ef/ef044_��c.png");
	CreateTextureEXadd("�}st180", 32000, -2, -324, "cg/ef/ef044_��c.png");
	Rotate("�}st180", 0, @0, @0, 160, null,true);
	Zoom("�}st*", 0, 500, 500, null, true);
	SetBlur("�}st*", true, 2, 400, 150, false);
	SetTone("�}st*", Sepia);

	CreateColorEXadd("�}ɫ500", 37500, "WHITE");

	CreateSE("SE01L","se���L_����_Ź���B��02_L");
	MusicStart("SE01L",0,1000,0,1000,null,true);

	Fade("�}����400", 0, 1000, null, false);
	Shake("�}����400", 50000, 2, 3, 0, 0, 1000, null, false);
	Zoom("�}����400", 500, 4000, 4000, Dxl3, false);
	FadeDelete("�}����400", 500, false);


	Rotate("�}st150", 500, @0, @0, @+2500, DxlAuto,false);
	Zoom("�}st150", 200, 1400, 1400, Dxl1, false);
	Fade("�}st150", 50, 1000, Dxl1, true);
	Zoom("�}st140", 25, 500, 500, null, false);
	Fade("�}st150", 200, 0, null, false);

	Rotate("�}st160", 500, @0, @0, @+3500, Dxl2,false);
	Zoom("�}st160", 200, 1100, 1100, Dxl1, false);
	Fade("�}st160", 50, 1000, Dxl1, true);
	Zoom("�}st150", 25, 500, 500, null, false);
	Fade("�}st160", 200, 0, null, false);

	Rotate("�}st170", 500, @0, @0, @+3600, Dxl3,false);
	Zoom("�}st170", 200, 1300, 1300, Dxl1, false);
	Fade("�}st170", 50, 1000, Dxl1, true);
	Zoom("�}st160", 25, 500, 500, null, false);
	Fade("�}st170", 200, 0, null, false);

	Rotate("�}st130", 500, @0, @0, @+3000, Dxl1,false);
	Zoom("�}st130", 200, 1400, 1400, Dxl1, false);
	Fade("�}st130", 50, 1000, Dxl1, true);
	Zoom("�}st170", 25, 500, 500, null, false);
	Fade("�}st130", 200, 0, null, false);

	Rotate("�}st140", 500, @0, @0, @+7900, DxlAuto,false);
	Zoom("�}st140", 200, 1700, 1700, Dxl1, false);
	Fade("�}st140", 50, 1000, Dxl1, true);
	Zoom("�}st130", 25, 500, 500, null, false);
	Fade("�}st140", 200, 0, null, false);

	Rotate("�}st150", 500, @0, @0, @+1800, DxlAuto,false);
	Zoom("�}st150", 200, 1600, 1600, Dxl1, false);
	Fade("�}st150", 50, 750, Dxl1, true);
	Zoom("�}st140", 25, 500, 500, null, false);
	Fade("�}st150", 200, 0, null, false);

	SetVolume("SE01L", 1000, 0, null);

	Fade("�}ɫ500", 150, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);



	CP_IHPChange(500,4,null,false);
	MyLife_Count(1500,380);


	CP_RollBarMove("@�}����50", 0, 0, null, true);


	CP_AziChange(2000,-200,Dxl2,false);
	CP_PowerChange(2000,400,null,false);
	CP_SpeedChange(2000,332,Dxl2,false);
	CP_HighChange(2000,422,Dxl2,false);
	CP_RollBarMove("@�}����50", 500, 10, Dxl2, false);

	CloudZoomSet(1000);
	CloudZoomStart(1000,500,500,600,600);
	CloudZoomVertex(500,@0,@0,null,false);

	Shake("@�}����50", 1000, 2, 1, 0, 0, 1000, Dxl1, false);
	Move("@�}����50", 2000, @200, @-150, Dxl1, false);
	Shake("@CP_Frame", 500, 15, 20, 0, 0, 800, null, false);


	FadeDelete("�}ɫ500", 500, false);
	FadeDelete("�ϱ���", 500, true);

	Fade("�}ɫ100", 300, 0, null, true);
	CP_RollBarMove("@�}����50", 1000, 0, AxlDxl, false);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 300, false);

	FrameShake();

	SoundPlay("@mbgm12",0,1000,true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 600, null);

	SetFwC("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0010a02">
����������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0020b40">
��������Ϯ��
�����ᴩ�ˡ����ɶ�!!��


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0030b40">
����ʼ�޸���
��������������˾�ɥ����


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0040a02">
��������Ȼ������Ȼ�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������<RUBY text="��������">�ѿ�����</RUBY>��ֻ������ʹ�ࡣ
������ʱ�����������ʱ�亰�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFrequency("SE10", 2000, 1000, null);
	SetVolume("SE10", 1000, 700, null);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, Axl2, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����50", Smoothing);

	Delete("�}����150");
	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@�}����50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);

	Move("�}����50", 5000, @0, @200, Dxl2, false);
	CP_AltChange(5000,10,Dxl2,false);
	CP_HighChange(5000,720,Dxl2,false);
	CP_SpeedChange(5000,435,AxlDxl,false);
	CP_PowerChange(2500,380,null,false);

	DrawDelete("�\Ļ��", 300, 100, "slide_02_01_1", true);
	SetVolume("SE10", 1000, 300, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0021]
��ȷ����Ұ������������ٵķ���̬�ơ�
�����˵Ļָ����ĵ��������������·��гٶ�
��������Ȼ���������������и߶ȡ�

�����׹�䣬��Ҳ�޻���˵��
����������һ����ʤ��Ҳ���ɶ��֡�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwͯ��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0050a09">
��������
���������ͻ���о�����أ���


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0060a09">
���ǲ�����ζ�����أ���


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0070a02">
����˵�˵�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��á�
������֮�⣬������Ӧ��֮����

���������ܡ�ǹ����
���µ�������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0080a02">
���ǹ�ǹ��
��������������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0090b40">
�����������ǡ�������


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0100a02">
��һ��������ʹǹ�߶�������Ϊ<RUBY text="����">ͨ·</RUBY>��������
���й����ɡ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0110b40">
���š���


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0120a02">
������������֮�����Ϲܣ��Ż�ͨ·<RUBY text="������">�󻬶�</RUBY>��
���ǹ�ǹ��
������ͨ��ǹ��ͻ���죬��������ʹ�������
��������Ťת��������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0130b40">
��ԭ����ˡ���
������������һ���Ƿ�<RUBY text="��������">��������</RUBY>����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 17500, "WHITE");
	CreateTextureEX("�}����100", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");

	Fade("�}ɫ100", 500, 300, null, false);
	Fade("�}����100", 500, 1000, null, true);


	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0051]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0140a02">
������β�Ź����Ĺ�ǹ����һ�
������ͷ�쳣<RUBY text="����">����</RUBY>����


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0150a02">
�����Ƴ���֮�ࡣ
���������ͣ����е�Ťת���ﵽǹͷʱ�ͻ���
�ɾ޴�Ļ�������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0160b40">
���š�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������ǹβ�Ź�����
���ǵ�һ����������˵����
��һ��֯�Ŷ���һ��˵�𡭡�Ϊʲô֯��֯�Ż����ת
����ǹ��ȥ���أ���ʱ��ȫ�����ס�

�������֪����ǹ������������������档
���Ը���ǹֻҪ������һ���������<RUBY text="����">�λ�</RUBY>
˲��ͱ�����������ɢ��

����ȷ��һ�ж���������˵��
����ܼ��ɣ���ӹ���ɡ���������β��ܶ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ܞ
//����
	FadeDelete("�}����100", 500, false);
	FadeDelete("�}ɫ100", 500, true);

	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 150, 150, null, true);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@�}����50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@0,@-200,null,true);

	CP_AltChange(2000,10,Dxl2,false);
//	CP_HighChange(2000,1100,Dxl2,false);
//	BGMoveAuto("@�}����50",1);


	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	OnSE("se����_���å��ԥå�_������02",1000);
	CP_LockOnMove("@�}��",800,@0,@100,Dxl2,false);

	Fade("@�}��", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 1000, 300, null);

	SetFwR("cg/fw/fwͯ��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0170a09">
����ô�����ŵ������ܱ����Ҹ桭��
����ξ�����һ����ȡ�����ɣ���


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0180a02">
�����ۿ��˵ͣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ӽ�
//��؞����ͻ
	CreateTextureEX("�}����100", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	CreateTextureEX("�}����200", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	Request("�}����100", Smoothing);
	Request("�}����200", Smoothing);
	Zoom("�}����100", 0, 4000, 4000, null, true);
	Zoom("�}����300", 0, 2000, 2000, null, true);
	SetBlur("�}����300", true, 3, 300, 200, false);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SE02","se���L_����_Ź���B��02_L");
	CreateSE("SE03","se���L_����_��ͻ�M03");
	CreateSE("SE04","se���L_����_Ź���B��02_L");

//�����ߣ�����
	CP_SpeedChange(1000,452,Dxl2,false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����50", 500, 1100, 1100, Axl2, false);
	Zoom("@�}��", 500, 600, 600, Axl2, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Rotate("�}����100", 1500, @0, @0, 3600, Dxl2,false);
	Fade("�}����100", 0, 1000, null, true);

	DrawTransition("�}ɫ100", 100, 1000, 0, 100, null, "cg/data/spiral_01_00_0.png", true);

	Move("�}����100", 0, 0, 0, null, true);
	Wait(150);
	Move("�}����100", 0, -312, -100, null, true);
	Wait(150);
	Move("�}����100", 0, -350, -150, null, true);
	Wait(150);
	Move("�}����100", 0, -510, -120, null, true);

	Wait(150);
	MusicStart("SE04",200,1000,0,1000,null,false);
	SetVolume("SE02", 1000, 0, null);


	Fade("�}����300", 200, 1000, null, false);
	Zoom("�}����300", 500, 1000, 1000, Dxl2, true);

	SetVolume("SE04", 1000, 0, null);
	Fade("�}����200", 0, 1000, null, true);
	Delete("�}����100");
	Delete("�}����300");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
������������Ĺ켣�����״��ǹͷ�ɳ۶�����
�����������޷��������ۼ���

���������ܵ���<RUBY text="����">����</RUBY>��Դ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̫��һ�ġ������`��
//�􏎤���ޤ�����
//�����ڱ���

	CreateColorSP("�ϱ���", 17500, "BLACK");
	SL_centerin2(17500,@0, @0,1000);
	CreateSE("SE01","se���L_����_��ͻ�M01");

	CP_LockOnDelete();
	Delete("�}��");
	Delete("�}����200");

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerinfade2(10);
	Wait(500);


	CreateColorEXmul("�}ɫ100", 18000, "RED");


	CreateSE("SE01","se���L_�Ɖ�_���k07");
	CreateSE("SE05","se���L_����_�z_���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE05",2000,1000,0,1000,null,false);


	FadeF4("�}����50", 0, 1000, 10000, 0, 0, Dxl3, false);
	Fade("�}ɫ100", 0, 1000, null, true);

	Shake("@CP_Frame", 1000, 15, 20, 0, 0, 800, null, false);
	CP_SpeedChange(800,380,AxlDxl,false);
	CP_RollBarMove("@�}����50", 150, @10, AxlDxl, false);

	OnSE("se���L_�Ɖ�_�z03",1000);

	Shake("@�}����50", 1000, 2, 1, 0, 0, 1000, Dxl1, false);
	Move("@�}����50", 2000, @-200, @-150, Dxl1, false);
	CP_RollBarMove("@�}����50", 300, @-10, Dxl2, false);

	CP_AziChange(2000,-220,Dxl2,false);
	CP_HighChange(2000,612,Dxl2,false);
	CP_SpeedChange(2000,332,Dxl2,false);

	DrawDelete("�ϱ���", 200, 100, "zoom_01_00_1", true);

	Fade("�}ɫ100", 300, 0, null, true);
	CP_RollBarMove("@�}����50", 1000, 0, AxlDxl, false);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ100", 0, 1000, null, true);
	FadeDelete("�}ɫ100", 300, true);

	FrameShake();

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 600, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����������޼ƿ�ʩ��!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeF4("�}����50", 0, 1000, 10000, 0, 0, null, false);
	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0190b40">
���Ҽ类Ϯ��������


{	FwR("cg/fw/fwһ��_��ʹ.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0200a02">
��������������!?��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0210b40">
�����赣�ģ�
�������ⱻ��ɣ��ؽ����Ѷ��ѡ��޴󰭣���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���á�
������<RUBY text="��������">ҡҡ�λ�</RUBY>���������޷��������ұۡ�

������ѣ�εľ�ʹҲ�������ķ������ӱ�á�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0220a02">
������������{WaitKey(2300);}<BR>������û�����⡣��


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0230b40">
���š�
����ʱû�����⣬�ٳ�һ�����׹�䡣��


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0240a02">
��û�жԿ��ֶΰ�������


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0250b40">
������ɥ��֮�ԡ�
����������������֮�ٿ��ߡ���


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0260a02">
��������ʾ���пࡣ
�������ڿ��ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 3000, 1, null);

	CreateColorEX("�}ɫ100", 17500, "BLACK");
	Fade("�}ɫ100", 500, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
������һ�����ţ���ʱ����ô˵�ģ�
��β�ŵ´����������ɡ�����Ϊ��ǹ֮���ľ�������
��ж������ز���һ��֮�ڵĹ���ǹͷ����Ҫ��̫����
��Ļ�����

���Ҽǵá���

�����жԲߣ�
�������뿴����

�����Ƕ㲻���ġ�
������ȥ����Ҳֻ�ᱻ��������

�������ܡ�
������û�жԲߡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0270a02">
����Ȼû���𣡣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��ģ���ż������Լ���������������к������εķ���
����һ�䡣
�������в������ε����ţ������Ʋ����˰�������ʼ�
˵����

��ʹ��̫�������޼ƿ�ʩ����
�������ʵ����ȡʤ�Ļ�������ǹ��Σ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ100", 1500, "WHITE");

//��ܞ��
//�����ߣ����x
	CreateTextureEX("�}����150", 100, 0, 0, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����150", Smoothing);
	Zoom("�}����150", 0, 6000, 1000, null, true);

	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 200, 200, null, true);

	CreateSE("SE��å�����","se����_���å��ԥå�_������02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(2000,-370,AxlDxl,false);
	CP_SpeedChange(2000,432,Dxl2,false);

	CloudZoomVertex(0,1000,@0,null,false);

//�����ߣ�����
	OnSE("se���L_����_��ͻ�M03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);
	FadeDelete("�}ɫ100", 500, false);

	CP_RollBarMove("@�}����50", 500, -5, AxlDxl, false);
	Move("@�}����150", 1500, @-5048, @0, AxlDxl, false);
	Move("@�}����50", 200, @-200, @0, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Move("@�}����50", 0, -312, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@200,@0,null,true);

	Wait(600);
	CP_RollBarMove("@�}����50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("�}����150", 300, false);
	CloudZoomVertex(1000,0,@0,AxlDxl,false);
	Move("@�}����50", 600, -512, -288, Dxl2, false);

//�����ߣ���å�����
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	CP_LockOnMove("@�}��",1600,@-200,@0,Dxl2,false);
	Fade("@�}��", 500, 1000, null, true);
	CP_LockOnFade(100,"off",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);



	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0280a02">
����������
��ֻ����һ���취�𣡡�


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0290b40">
��Ŷ��
��Ҫ������������


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0300a02">
���ϰɡ�
���ܱ����Ǹ������м�����������Ҫ�ã���

{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0310b40">
�����ס���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���M��

	SetFwR("cg/fw/fwͯ��_嶤�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0320a09">
������׹����
�����ǹ�ִ����̫��ִ�ˡ���


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0330a09">
�����������Ƿݹ�ִӮ��ʤ���ɣ���


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0340a02">
��������


{	FwR("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0350a09">
���Ǻǡ��Ǻǡ���
��������û�����ǰɣ���������������������
����ɽկ�Ͽա�ֻҪ����ʱ�䣬�������߾ͻ�
��ٴ���ɡ�����


{	FwR("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0360a09">
��������


{	FwR("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0370a09">
����ѽ�����˵�������治���װ���
��Ϊ������δ����һ���ء�������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�������������Ͽյķ������ੲ��ݵ�˵��ʲô����Ȩ
��û������������˵ʲô�أ����Һθɡ�
���Ӻ����������������ͨͨҧ����

������һ������
���¶����ġ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0380a02">
�����ڡ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0390b40">
���ǡ���


{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0400a02">
�����̡���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0410b40">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֤��֤��֡�����ζ�ʲ�ʳ��
	CreateSE("SE01","se���L_����_⟳h�ʂ�02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_PowerChange(2000,250,null,false);

	Wait(1000);
	SetFwR("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0191]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0420a02">
����ߴ������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������ĳ�����ʵ�Ƥ���⡢�����Ƥ�������ڱ����룬
��������žž���������������졣
�������ھ��������ںϡ��̶������Ρ�

����Ϊ���衣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwͯ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0430a09">
�������ţ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ͯ�Ĥ��å�����
	CreateSE("SE��å�����","se����_���å��ԥå�_������02");
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CP_SpeedChange(2000,482,Dxl2,false);
	CP_HighChange(2000,650,AxlDxl,false);

//�����ߣ�����
/*
	CP_RollBarMove("@�}����50", 500, 0, AxlDxl, false);
	Move("@�}����150", 1500, @-5048, @0, AxlDxl, false);
	Move("@�}����50", 200, @-200, @0, Axl3, false);
	Fade("@�}����150", 200, 1000, null, true);

	Move("@�}����50", 0, -312, -288, null, true);

*/
	MusicStart("SE��å�����",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@0);
//	CP_LockOnMove("@�}��",0,@200,@0,null,true);
	CP_LockOnFade(100,"on",false);

	Wait(200);

	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 300, 100, "cg/ef/ef034_����AȾ.jpg", false);
	Zoom("@�}����50", 400, 1200, 1200, Dxl2, false);
	Zoom("@�}��", 250, 500, 500, Dxl2, true);


	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0440a02">
�����������߻�����Ϊһ�塣
���ɶ����ڡ�����������


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0450a02">
�����С�����


//���i�ߡ������������`����
{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0460b40">
���ģ����ɡ��������ңңңңңң�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����
//�������_��
	CreateTextureEX("�}����150", 17000, Center, Middle, "cg/ev/ev916_�����w����ڡ������a.jpg");
	CreateTextureEX("�}����200", 17000, Center, Middle, "cg/ev/ev916_�����w����ڡ������a.jpg");
	Zoom("�}����200", 0, 1500, 1500, null, true);
	SetBlur("�}����200", true, 3, 300, 100, false);
	CreateSE("SE01","se���L_����_⟳h�k��01");
	CreateSE("SE02","se���L_�Ɖ�_���k03");


	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	EffectZoomadd(18000, 1000, 100, "cg/ev/ev916_�����w����ڡ������a.jpg", false);
	Fade("�}����200", 100, 1000, null, false);
	Zoom("�}����200", 700, 1000, 1000, Dxl3, true);

	Fade("�}����150", 0, 1000, null, true);
	Zoom("�}����200", 300, 2000, 2000, Axl3, false);
	FadeDelete("�}����200", 300, true);
	Delete("�}����200");
	Delete("�}��");
	CP_LockOnDelete();

	SetFwR("cg/fw/fwͯ��_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0470a09">
��������������!?
�����ǡ�����


{	FwR("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0480a09">
������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
//����򘌤���׽
//�����k�������`��

//�����ߣ��زĶ��x
	CreateTextureEX("�}����100", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	CreateTextureEX("�}����200", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	CreateTextureEX("�}����300", 17000, Center, Middle, "cg/ef/ef027_؞����ͻ.jpg");
	CreateTextureEX("�}����400", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEX("�}����500", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateColorEXadd("�}ɫ100", 17500, "WHITE");
	Request("�}����100", Smoothing);
	Request("�}����200", Smoothing);
	Request("�}����400", Smoothing);
	Request("�}����500", Smoothing);
	Zoom("�}����100", 0, 4000, 4000, null, true);
	Zoom("�}����300", 0, 2000, 2000, null, true);
	Zoom("�}����400", 0, 2000, 2000, null, true);
	Zoom("�}����500", 0, 1100, 1100, null, true);
	SetBlur("�}����300", true, 3, 300, 200, false);
	SetBlur("�}����500", true, 3, 500, 150, false);

	CreateSE("SE02","se���L_����_Ź���B��02_L");
	CreateSE("SE03","se���L_����_��ͻ�M03");
	CreateSE("SE04","se���L_����_Ź���B��02_L");
	CreateSE("SE05","se���L_�Ɖ�_�󱬰k01");

//�����ߣ�������
	Zoom("�}����50", 500, 1100, 1100, Axl2, false);
	Zoom("@�}��", 500, 600, 600, Axl2, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Rotate("�}����100", 1500, @0, @0, 3600, Dxl2,false);

	Fade("�}����100", 0, 1000, null, true);
	DrawTransition("�}����100", 100, 0, 1000, 100, null, "cg/data/spiral_01_00_0.png", true);

	Move("�}����100", 0, 0, 0, null, true);
	Wait(150);
	Move("�}����100", 0, -312, -100, null, true);
	Wait(150);
	Move("�}����100", 0, -350, -150, null, true);
	Wait(150);
	Move("�}����100", 0, -510, -120, null, true);

	Wait(150);
	MusicStart("SE04",200,1000,0,1000,null,false);
	SetVolume("SE02", 1000, 0, null);


	Fade("�}����300", 200, 1000, null, false);
	Zoom("�}����300", 500, 1000, 1000, Dxl2, true);

	SetVolume("SE04", 1000, 0, null);
	Fade("�}����200", 0, 1000, null, true);
	Delete("�}����100");
	Delete("�}����150");
	Delete("�}����300");

//�����ߣ����k����
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("�}����400", 0, 1000, null, true);
	DrawTransition("�}����400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("�}ɫ100", 50, 1000, null, true);
	Move("�}����400", 0, 0, 0, null, true);
	Fade("�}ɫ100", 150, 0, null, false);
	Wait(50);
	Move("�}����400", 0, -312, -100, null, true);
	Wait(50);
	Move("�}����400", 0, -350, -150, null, true);
	Wait(50);
	Move("�}����400", 0, -510, -120, null, true);

	Fade("�}ɫ100", 50, 1000, null, true);
	Delete("�}����200");
	Delete("�}����400");
	Shake("�}����500", 500000, 0, 1, 0, 0, 1000, null, false);
	Fade("�}����500", 0, 1000, null, true);
	Zoom("�}����500", 5000, 1200, 1200, Dxl2, false);
	FadeDelete("�}ɫ100", 500, true);

	Wait(200);
	EnLife_Count(1000,685);
	EnTr_Count(1000,412);

	SetFwR("cg/fw/fwͯ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0490a09">
����!?��


{	FwR("cg/fw/fwһ��_��ʹ.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0500a02">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CP_IHPChange(1,3,null,false);
	MyLife_Count(500,210);


	OnSE("se���L_����_��ͻ�M01",1000);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	Zoom("�}����50", 0, 2000, 2000, null, true);
	Zoom("�}����50", 1000, 1000, 1000, Dxl2, false);

	FadeDelete("�}����500", 500, true);

//���x��

	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0510b40">
���ɶ�ˣС�����ļһ
����Ȼ��ǹ���䵯�裬�����ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�������ź��ص͹�����

�����ڡ��������������Ǳ��㿪�򱻻��䣬���ᱬ��
�Ľ����ɳ��������롣�޷����׷�����
����Χ��ɢ�ļ�ͷ�����޷��ᴩ�з���ʵ������װ
�ף�Ҳ�ܴ���ؽڲ�λ����ԭ��Ӧ����ˡ�

�����ǣ��Ӵ�����ǹǹͷ��Զ���ͱ��ѵĻ���������
���ٸ���ͷ���Թ����������ء�
��Ū����ֻ�����嵽�Է����ѣ�������������κ���
����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0520a02">
��������<RUBY text="��������">�Ա�����</RUBY>��
�������ҷ��𺦸��󡣡�


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0530b40">
������һ�����


{	FwR("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0540a02">
�����ס���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��������ȴǶ������װ�׷�϶֮�䡢�����Ƥ�ļ�����
�롣
���в������⡣��ʹ��ʲô��ֻҪ��ȥ������ܵ�����
���ڡ�

��Ҳ��ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ��

//�����ߣ�ܞ�؄���
	OnSE("se���L_����_��ͻ�M03",1000);

	CreateTextureEX("�}����100", 500, 0, 0, "cg/bg/resize/bg002_��a_03l.jpg");
	Zoom("�}����100", 0, 1000, 28000, null, true);
	Move("�}����100", 0, @0, @-7000, null, true);
//	CreateTextureEX("�}����200", 500, 0, 0, "cg/bg/resize/bg002_��a_03l.jpg");
//	Zoom("�}����200", 0, 1000, 28000, null, true);
//	Move("�}����200", 0, @0, @-7000, null, true);
	CreateSurfaceEX("�}Suf",1000,2000,"�}����100");

//	CP_HighChange(1000,150,null,false);
	CP_HighChange(2500,657,null,false);
	CP_SpeedChange(1000,540,null,false);

	Fade("�}Suf", 500, 1000, null, false);
	Fade("�}����100", 500, 1000, null, false);
	Move("�}����100", 2500, @0, 0, AxlDxl, false);
	Move("@�}����50", 500, @0, @200, Axl2, false);


	Wait(1000);
	CP_AziChange(0,-189,null,true);
	CP_RollBarMove2(0,180,null,true);
	CP_SpeedChange(2000,350,null,false);

//	CP_AziChange(1200,189,AxlDxl,false);
	Rotate("�}Suf", 1000, @0, @0, @180, AxlDxl,false);
	CP_RollBarMove("@�}����50",1000,0,AxlDxl,false);

	Wait(1000);

	Move("@�}����50", 0, -512, -588, null, true);
	Fade("�}Suf", 500, 0, null, false);
	Fade("�}����100", 500, 0, null, false);
	Move("@�}����50", 500, -512, -258, Dxl2, true);
	Move("@�}����50", 500, -512, -288, AxlDxl, true);
	Delete("�}����100");

	FadeF4("�}����50", 0, 1000, 10000, 0, 0, null, false);

	Wait(500);
	Delete("�}Suf");
	SetFwR("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0550b40">
������һ��<RUBY text="��������">��������</RUBY>��Σ���������


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0560a02">
����������
�����ǵĹ���Ҳ����õ�ʲô��չ����


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0570a02">
���ݻ������ұۣ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0580b40">
���������棿��


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0590a02">
�������Ѿ��޷��������������ã���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0600b40">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���M��
	OnSE("se���L_����_��ͻ�M01",1000);

	SetFrequency("SE10", 1000, 1100, null);
	Move("@�}����50", 300, @-400, @0, Axl2, false);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, Axl2, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_03l.jpg");
	Request("�}����50", Smoothing);
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3dͬ��؞_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 300, 300, null, true);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@�}����50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@�}��",0,@0,@200,null,true);


	Move("@�}����50", 2000, @0, @-100, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,812,Dxl2,false);
	CP_SpeedChange(2000,432,Dxl2,false);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);


	OnSE("se����_���å��ԥå�_������02",1000);
	CP_LockOnMove("@�}��",800,@0,@-150,Dxl2,false);

	Fade("@�}��", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);

	SetFwR("cg/fw/fwͯ��_嶤�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0610a09">
���롣
��û�뵽��Ҳ��Щ�������


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0620a09">
���ղ�����<RUBY text="������">�ŵ���</RUBY>���ء�
����ѽ������ս���в����Ǿ�ս����Ȥ���ڰ�����


{	FwR("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0630a09">
�����ǣ���ƾ����<RUBY text="��������">��������</RUBY>�ĵ��衪����


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0640a02">
���ֺ�ȥ�ɡ���


{	FwR("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0650a09">
���ţ���


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0660a02">
��<RUBY text="����">��Ȥ</RUBY>��
������һ���̡���


{	FwR("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0670a02">
������ȫ�����£�����ʣ!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֤��֤��֡�ʳ�����

	CreateColorEX("�}ɫ100", 17500, "RED");
	CreateSE("SE01","se���L_����_⟳h�ʂ�02");

	CP_PowerChange(800,200,Dxl2,false);
	Fade("�}ɫ100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�}ɫ100", 500, 0, null, true);

	SetFwR("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0301]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0680a02">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�������⻯����ʯ��
�������⻯�ɽ�̿��
����Ѫ�������ǵ���档��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֤���
//�����ڤ�����������
	CreateSE("SE02","se���L_����_⟳h�ʂ�01");
	Fade("�}ɫ100", 0, 1000, null, true);
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("�}ɫ100", 500, 0, null, true);

	SetFwR("cg/fw/fwһ��_����b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/028vs0690a02">
�����������ް�������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��װ��װ��֮�롢
������װ��֮Ĥ��

�����ڡ���������
�������ҵģ���ŭ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������B�A
//����ڡ����k
	CreateTextureEX("�}����150", 17000, Center, Middle, "cg/ev/ev916_�����w����ڡ������a.jpg");
	CreateTextureEX("�}����200", 17000, Center, Middle, "cg/ev/ev916_�����w����ڡ������a.jpg");
	SetBlur("�}����200", true, 2, 300, 70, false);
	CreateSE("SE01","se���L_����_⟳h�k��01");
	CreateSE("SE02","se���L_����_⟳h�k��01");
	CreateSE("SE03","se���L_����_⟳h�k��01");
	CreateSE("SE04","se���L_����_⟳h�k��01");
	CreateSE("SE05","se���L_�Ɖ�_���k07");


	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}����200", 100, 1000, null, false);
	Zoom("�}����200", 2000, 1300, 1300, Dxl2, false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	EffectZoomadd(18000, 300, 100, "cg/ev/ev916_�����w����ڡ������a.jpg", true);

	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(18000, 100, 100, "cg/ev/ev916_�����w����ڡ������a.jpg", true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	EffectZoomadd(18000, 50, 50, "cg/ev/ev916_�����w����ڡ������a.jpg", true);
	MusicStart("SE05",0,1000,0,1000,null,false);
	EffectZoomadd(18000, 1000, 100, "cg/ev/ev916_�����w����ڡ������a.jpg", true);

	Fade("�}����150", 0, 1000, null, true);
	FadeDelete("�}����200", 500, true);

/*
	Zoom("�}����200", 0, 1500, 1500, null, true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}����200", 100, 1000, null, false);
	Zoom("�}����200", 200, 1000, 1000, Dxl2, true);

	Zoom("�}����200", 0, 1500, 1500, null, true);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("�}����200", 100, 1000, null, false);
	Zoom("�}����200", 700, 1000, 1000, Dxl2, true);

	Fade("�}����150", 0, 1000, null, true);
	Delete("�}����200");
	Delete("�}��");
	CP_LockOnDelete();

*/

	SetFwR("cg/fw/fwͯ��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/028vs0700a09">
�����ۡ���!?��


//���i�ߡ�����������`�`����
{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/028vs0710b40">
���ģ����ɡ����ң����������������ȣȣ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//���ܤ��`��ܤ��`��
//�����ߣ��زĶ��x
	CreateTextureEX("�}����400", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateTextureEX("�}����500", 17000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	CreateColorEXadd("�}ɫ100", 17500, "WHITE");
	Request("�}����400", Smoothing);
	Request("�}����500", Smoothing);
	Zoom("�}����400", 0, 2000, 2000, null, true);
	Zoom("�}����500", 0, 1200, 1200, null, true);
	SetBlur("�}����500", true, 3, 200, 70, false);

	CreateSE("SE05","se���L_�Ɖ�_�󱬰k01");


//�����ߣ����k����
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 150, 0, null, false);
	Fade("�}����400", 0, 1000, null, true);
	DrawTransition("�}����400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	Move("�}����400", 0, -312, -100, null, true);
	Wait(50);
	Move("�}����400", 0, -350, -150, null, true);
	Wait(50);
	Move("�}����400", 0, -510, -120, null, true);

	Fade("�}ɫ100", 50, 1000, null, true);
	Delete("�}����200");
	Delete("�}����400");

	//CP_AllDelete();

	Cockpit_AllFade0();


	Fade("�}����500", 0, 1000, null, true);
	Zoom("�}����500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_���ñ���.jpg", false);
	FadeDelete("�}ɫ100", 2000, true);

	Wait(500);
	SetVolume("SE*", 2000, 0, null);
	Zoom("�}����500", 2000, 10000, 10000, Axl3, false);
	ClearFadeAll(2000, true);

	//CP_AllDelete();
	Cockpit_AllFade0();
	CP_LockOnDelete();

	Wait(2000);


}

..//������ָ��
//�Υե����롡"mb02_029vs.nss"



function Lastfire()
{

	CreateColor("�٤����", 15000, 0, 0, 1024, 576, "#c46c3e");
	SetAlias("�٤����","�٤����");
	Fade("�٤����", 0, 0, null, false);
	DrawTransition("�٤����", 0, 100, 200, 990, null, "cg/data/out_slash_1.png", true);


	begin:

	while(1)
	{
	Fade("�٤����",150,200,null,true);
	Fade("�٤����",200,150,null,true);
	Fade("�٤����",180,230,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,190,null,true);
	Fade("�٤����",200,150,null,true);

	Fade("�٤����",150,230,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,170,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,200,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,170,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",100,280,null,true);
	Fade("�٤����",350,150,null,true);
	Fade("�٤����",100,240,null,true);
	Fade("�٤����",150,120,null,true);
	Fade("�٤����",200,220,null,true);
	Fade("�٤����",170,100,null,true);

	Fade("�٤����",150,120,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,150,null,true);
	Fade("�٤����",100,240,null,true);
	Fade("�٤����",140,140,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,130,null,true);
	Fade("�٤����",400,100,null,true);
	Fade("�٤����",180,130,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,120,null,true);
	Fade("�٤����",200,90,null,true);

	Fade("�٤����",150,120,null,true);
	Fade("�٤����",400,90,null,true);
	Fade("�٤����",180,110,null,true);
	Fade("�٤����",300,100,null,true);
	Fade("�٤����",140,130,null,true);
	Fade("�٤����",200,90,null,true);

	}


}

function EffextDamage()
{

	CreateColor("function����`��", 15000, 0, 0, 1024, 576, "RED");
	SetAlias("function����`��","function����`��");
	Request("function����`��", MulRender);
	Fade("function����`��", 200, 1000, null, true);




}