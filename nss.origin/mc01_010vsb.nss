
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

scene mc01_010vsb.nss_MAIN
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
	#bg001_��a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$First_Battle_Damage = $First_Battle_Damage+1;

	$PreGameName = $GameName;

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//�Υե����롡"mc01_011vs.nss"
	//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"
	//$GameName = "mc01_011vs.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	Cockpit_AllFade0();

	if($First_Battle_Damage >= 2){
		$GameName = "mc01_010vsz.nss";
	}else{
		$GameName = "mc01_011vs.nss";
	}

}

scene mc01_010vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_010vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//�����ʧ��
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}��", 18000, Center, -40, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
���ٹ۲�һ�Ρ�
��Ȼ������ܹ��������������������ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ݴ���", 17100, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	CreateTextureSP("�}����", 17000, InRight, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	Request("�}����", Smoothing);
	Request("�}�ݴ���", Smoothing);
	Move("�}�ݴ���", 0, @-160, @120, null, true);
	Zoom("�}�ݴ���", 0, 1300, 1300, null, true);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("�}�ݴ���", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("�}����", 0, 1500, 1500, null, true);
	Move("�}����", 60000, 0, @0, null, false);

	Move("�}�ݴ���", 300, @60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
���Һͷ���һ�����������������໥��������һ˲
��ı䷽��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se���L_����_��ͻ�M01");
	CreateTextureSP("�}���ݱ���", 100, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	CreateTextureSP("�}���ݺ���", 110, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}���ݺ���", Smoothing);
	Zoom("�}���ݺ���", 0, 1500, 1500, null, true);
	SetBlur("�}���ݺ���", true, 2, 500, 60, false);
	Move("�}���ݺ���", 150, @0, @60, Dxl2, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Delete("�}����*");
	Delete("�}��*");

	SetFwR("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/010vs0050b33">
��Ũ�������Ŷ��������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/010vs0060a00">
��������!?��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE03","se���L_����_�����01");
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	MusicStart("SE03",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @150,2000);
	SL_downfade2(10);

//�������`��
	CreateSE("SE04","se���L_����_�z_���02");
	CreateSE("SE04a","se���L_����_�z��������03");
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�}�ݿձ���", 100, Center, -1100, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	Request("�}�ݿձ���", Smoothing);
	Delete("�ϱ���");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04a",0,1000,0,1000,null,false);

//������󡸣ãУ����ڂ����x��
	Cockpit_AllFade2();

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ�����;
	}

	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	//SetFont("����", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	//CreateText("Dt1", 15000, 50, 20, 700, 500, $�����饤���{����);Wait(32);

	MyLife_Count(0,$�����饤���{����);
	CP_IHPChange(0,$����������{����,null,false);

	CP_SpeedChange(0,550,null,false);
	MyTr_Count(0,475);

	CP_PowerChange(0,880,null,false);

	CP_HighChange(0,1633,null,false);
	CP_AziChange(0,260,null,false);

	CP_AltChange(0,0,null,false);
	//CP_AltChangeA();

	CP_RollBarMove2(0,60,null,true);

//������󡸣ãУ������ݳ��_ʼ��
	$�����饤�՜p�ق� = $�����饤���{���� - 218;
	$����������p�ق� = $����������{���� - 3;

	MyLife_Count(300,$�����饤�՜p�ق�);
	CP_IHPChange(300,$����������p�ق�,null,false);

	MyTr_Count(300,140);
	CP_SpeedChange2(1500,226,Dxl2,false);

	CP_HighChange2(1500,1444,Dxl2,false);
	CP_AltChange(1500,10,Dxl2,false);
	Move("�}�ݿձ���", 1500, @0, @-60, Dxl2, false);

	Shake("@CP_Frame*", 1500, 0, 30, 0, 0, 1000, Dxl2, false);
	Shake("�}�ݿձ���", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

	CP_RollBarMove("@�}�ݿձ���*", 0, 5, null, false);

	FadeDelete("�}ɫ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������������Լ���ʧ�ߡ�
��������ʶ����ܵĶ�������׷�������׷����һ����

������Ϊ�����ĺ��������ֵ����֡�
��ͬ���Ķ����������Σ��ᱻ���˿���Ҳ��������Ȼ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SEL01","se���L_����_������01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SEL01",0,1000,0,1250,null,true);

//������󡸣ãУ��ϕN�����܉��������
	MyTr_Count(300,330);
	CP_PowerChange(2000,870,null,false);
	CP_SpeedChange(2000,387,Axl1,false);

	Move("@�}�ݿձ���*", 2000, @0, @200, DxlAuto, false);
	CP_HighChange(2000,1527,DxlAuto,false);
	CP_AltChange(2000,20,DxlAuto,false);
	FrameShake();

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mc01/010vs0070a01">
����类���С���
���𺦳̶�Ϊ�еȣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/010vs0080a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����֮���������������ơ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 100, 0, null);

//������󡸣ãУ��·���˳������åס�
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MyTr_Count(300,390);
	CP_SpeedChange(450,420,Axl1,false);

	CreatePlainSP("�}��д", 1000);
	SetBlur("�}��д", true, 2, 500, 60, false);
	Zoom("�}��д", 800, 2000, 2000, Dxl2, false);

	CP_HighChange(450,1611,DxlAuto,false);
	CP_AltChange(450,28,DxlAuto,false);
	CP_RollBarMove("@�}��д", 800, 180, AxlDxl, false);

	WaitKey(300);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitPlay("SE*", null);
	Cockpit_AllFade0();

//������`������


}

..//������ָ��
//�Υե����롡"mc01_011vs.nss"
//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"

//���x�k֫���`��
scene mc01_010vsb.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg006_���w�β���_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("ͨ��","����`���ե饰���Εr");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
//�Υե����롡"mc01_011vs.nss"
				$GameName = "mc01_011vs.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"
				$GameName = "mc01_010vsz.nss";
		}
	}
}