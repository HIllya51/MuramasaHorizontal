
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

scene mc01_021vsaba.nss_MAIN
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
	$First_Battle_Damage=$First_Battle_Damage+1;

	$PreGameName = $GameName;

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//�Υե����롡"mc01_022vs.nss"
	//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"
	//$GameName = "mc00_001.nss";
	//$SelectGameName="@->"+$GameName+"_SELECT";
	//call_scene $SelectGameName;

	Cockpit_AllFade0();

	if($First_Battle_Damage >= 2){
		$GameName = "mc01_010vsz.nss";
	}else{
		$GameName = "mc01_022vs.nss";
	}


}

scene mc01_021vsaba.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vsab.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}
	//$First_Battle_Damage = 1;//�ǥХå���

//���ݘS
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���Ld.png");
	Move("�}�����}", 0, @226, @-50, null, true);
	Delete("�ϱ���");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("�}������", 19990, Center, Middle, 288, 512, "Rain");
	Fade("�}������", 0, 0, null, true);
	SetAlias("�}������","�}������");
	Rotate("�}������", 0, @0, @0, @-90, null,true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	Move("�}������", 0, @400, @0, null, true);

	DrawTransition("�}������", 0, 0, 600, 100, null, "cg/data/slide_01_03_1.png", true);
	Fade("�}������", 3000, 1000, null, false);

	Shake("�}�����}", 600000, 2, 0, 0, 0, 1000, null, false);

	Move("�}�����}", 6000, @-60, @0, DxlAuto, false);
	Move("�}�ݱ���", 200000, -100, @0, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������̫�������ľ��롣
���ҼȲ�����Ҳ���������ܣ����Ǽ�����ֱǰ����

��Ȼ������������ƽ�л����̫����ͷ�����Ե����
���ΪĿ���ʹ̹�ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/021vs0320b33">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���Ҳ�û��ȥ��������һ���ܹ���Ϊ˳����׽��Ŀ���
��ʤһ����
���������öԵ㹥�����и��ټ��۵����߾��Ѿ��൱��
�ѣ�����Ŀ���޶�����ü�����������ĸ���Ҳ��������

�������Ѿ�����ν�ˡ�
����Ұ������ս�񷨡����֡�����ͼֻ��������������
����Ч����

�����۶�ô�����ˣ����������ޣ��۾�ͻȻ�ܵ�����
һ��������η�ӡ�
�������κ��˶�ӵ�еı����Բ��������ơ��������Ǵ���
����Ŀ�ġ�

������ֻ��ɲ��Ҳ�ã������õ����������ӣ������ҳ�һ
����·��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateColorEXadd("�}ɫ��", 19000, "#FFFFFF");

	Move("�}�����}", 6000, @-60, @0, null, false);
	Move("�}�ݱ���", 5000, -100, @0, AxlDxl, false);

	Wait(500);

	Fade("�}ɫ��", 0, 1000, null, true);
	SetBlur("�}�����}", true, 2, 500, 60, false);

	Wait(16);

	SetVolume("SE*", 100, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�}ɫ��", 300, 0, Dxl1, false);
	DrawDelete("�}ɫ��", 600, 100, "slide_05_00_1", false);

	Move("�}�����}", 300, @-2000, @0, Dxl2, false);
	Move("�}�ݱ���", 4000, -100, @0, Dxl3, false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

//����ͻ�֣Ӹ���
	SL_down2(20100,@0, @-10,2000);

	CreateSE("SE02","se���L_����_Ұ̫�����01");
	MusicStart("SE02",0,1000,0,2000,null,false);
	CreateTextureSPadd("�}����", 20010, Center, Middle, "cg/ef/ef017_��������܉��.jpg");
	CreateTextureSP("�}��", 20000, Center, Middle, "cg/ef/ef017_��������܉��.jpg");
	SetVertex("�}����", center, bottom);

	Zoom("�}����", 0, 1200, 10000, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);

	Delete("�}������*");
	FadeDelete("�}����", 200, false);

	CreateSE("SE02a","se���L_����_�����01");
	MusicStart("SE02a",0,1000,0,1500,null,false);
	SL_downfade2(10);

//�����������`���
	CreateSE("SE03","se���L_����_��ꪏ���02");
	CreateSE("SE03a","se���L_�n��_�nͻ01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 22000, "#FFFFFF");

	Delete("�}��*");
	CreateTextureSP("�}�ݿ��ݳ���", 100, Center, -945, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	MyLife_Count(0,$�����饤���{����);

//������󡸣ãУ�����`���ե饰���������{����
	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	CP_IHPChange(0,$����������{����,null,false);

	MyTr_Count(0,523);
	CP_SpeedChange2(0,515,null,false);

	CP_PowerChange(0,620,null,false);

	CP_HighChange2(0,1285,null,false);

	CP_AziChange(0,21,null,false);

	CP_AltChange(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	Shake("@CP_Frame*", 2000, 50, 50, 0, 0, 1000, Dxl2, false);
	Shake("�}�ݿ��ݳ���", 2000, 0, 50, 0, 0, 1000, Dxl2, false);

	CP_PowerChange(2000,550,null,false);

	MyTr_Count(600,377);
	CP_SpeedChange2(2000,371,null,false);


	Delete("�}ɫ�\");
	FadeDelete("�}ɫ��", 2000, false);

	Wait(1700);

	$�����饤�՜p�ق� = $�����饤���{���� - 218;
	MyLife_Count(300,$�����饤�՜p�ق�);

	$����������p�ق� = $����������{���� - 3;
	CP_IHPChange(300,$����������p�ق�,null,false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc01/021vs0330a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0340a01">
�����װ�ױ�ֱ�ӹ�����
����������δ��������

//��������
<voice name="����" class="��������" src="voice/mc01/021vs0350a01">
��һ˲���ɢ��ע�������Ǽһ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 19000, "#000000");
	Fade("�}ɫ�\", 500, 1000, null, true);

	Cockpit_AllFade0();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������á�
��������ʱͦ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������`������

//������ǣ����_���Ƥʤ����
//����������

}

..//������ָ��
//�Υե����롡"mc01_022vs.nss"
//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"

//���x�k֫���`��
scene mc01_021vsaba.nss_SELECT
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
	SetChoice02("ͨ��","����`���ե饰��");
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
//�Υե����롡"mc01_022vs.nss"
				$GameName = "mc01_022vs.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"
				$GameName = "mc01_010vsz.nss";
		}
	}
}


