
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

scene mc01_011vsaba.nss_MAIN
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

	$PreGameName = $GameName;

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//�Υե����롡"mc01_012vs.nss"
	//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"
	//$GameName = "mc01_012vs.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	Cockpit_AllFade0();

	if($First_Battle_Damage >= 2){
		$GameName = "mc01_010vsz.nss";
	}else{
		$GameName = "mc01_012vs.nss";
	}


}

scene mc01_011vsaba.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_011vsab.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}
	//$mc01_011vsab = left;//�ǥХå���

//����or��
//ǰ�ե�������x�k֫����ä��ݳ������Ƥ�������
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}����", 100, Center, -576, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	Delete("�ϱ���");

	CreateSE("SE01","se���L_����_��ͻ�M01");

//��ܞ�ة`��
	if($mc01_011vsab == left){
		MusicStart("@SE01",0,1000,0,1000,null,false);
		CreateColorSP("�}ɫ�\", 30000, "#000000");
		DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
		Delete("�}����*");
		CreateTextureSP("�}�ݱ���", 17000, InRight, Middle, "cg/bg/resize/bg002_��a_01.jpg");
		SetBlur("�}�ݱ���", true, 3, 500, 30, false);
		Move("�}�ݱ���", 650, @576, @0, Dxl2, false);
		DrawDelete("�}ɫ�\", 150, 100, "slide_01_01_1", true);
	}else if($mc01_011vsab == right){
		MusicStart("@SE01",0,1000,0,1000,null,false);
		CreateColorSP("�}ɫ�\", 30000, "#000000");
		DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
		Delete("�}����*");
		CreateTextureSP("�}�ݱ���", 17000, InLeft, Middle, "cg/bg/resize/bg002_��a_01.jpg");
		SetBlur("�}�ݱ���", true, 3, 500, 30, false);
		Move("�}�ݱ���", 650, @-576, @0, Dxl2, false);
		DrawDelete("�}ɫ�\", 150, 100, "slide_01_01_0", true);
	}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ҵĳ��ظ�ͻȻϮ��ȫ��
�����˿�����Ͼ�����Щ��

���ܶ㿪�𡪡���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܩ`�ǥ��`�۩`��k��
	CreateSE("SE02","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 18100, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a.jpg");

	CreateTextureSPadd("�}�݄���", 18900, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Zoom("�}�݄���", 300, 2000, 2000, AxlDxl, false);
	Fade("�}�݄���", 300, 0, null, false);
	DrawDelete("�}�݄���", 300, 100, "circle_01_00_1", false);

	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	WaitKey(600);

//�������`��ʳ�餦
//����åɥե�å���
	CreateSE("SE03","se���L_����_�z��������03");
	CreateSE("SE03a","se���L_�Ɖ�_�z03");

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�}�ݿձ���", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

	Delete("�ϱ���");

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

	MyTr_Count(0,359);
	CP_SpeedChange2(0,418,null,false);

	CP_PowerChange(0,870,null,false);

	CP_HighChange2(0,842,null,false);

//������󡸣ãУ��ܤ������Ǥˤ�귽λ���仯���ޤ���
	if($mc01_011vsab == left){
	CP_AziChange(0,26,null,false);
	}else if($mc01_011vsab == right){
	CP_AziChange(0,186,null,false);
	}

	CP_AltChange(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	Shake("@CP_Frame*", 2000, 50, 50, 0, 0, 1000, Dxl2, false);
	Shake("�}�ݿձ���", 2000, 0, 50, 0, 0, 1000, Dxl2, false);

	CP_PowerChange(2000,790,null,false);

	MyTr_Count(2000,286);
	CP_SpeedChange2(2000,318,null,false);

	FadeDelete("�}ɫ��", 2000, false);

	Wait(1700);

	$�����饤�՜p�ق� = $�����饤���{���� - 218;
	MyLife_Count(300,$�����饤�՜p�ق�);

	$����������p�ق� = $����������{���� - 3;
	CP_IHPChange(300,$����������p�ق�,null,false);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc01/011vs0150a00">
������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����", 18000, Center, Middle, "cg/bg/bg002_��a_01.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����š�����<RUBY text="������">�����</RUBY>��
�������ⶼ����������ȥ�ˡ�

{	Fade("�}����", 1000, 1000, null, false);}
��һ�����˲���ս����ȱʧ��Ϯ����
����ȴ��ǧ��һ��֮�ʱܿ���ֱ�ӵĹ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}����", null);
	Cockpit_AllFade0();

//������`������

}

..//������ָ��
//�Υե����롡"mc01_012vs.nss"
//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"

//���x�k֫���`��
scene mc01_011vsaba.nss_SELECT
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
//�Υե����롡"mc01_012vs.nss"
				$GameName = "mc01_012vs.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"
				$GameName = "mc01_010vsz.nss";
		}
	}
}



