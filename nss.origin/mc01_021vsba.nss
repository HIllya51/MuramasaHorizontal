
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

scene mc01_021vsba.nss_MAIN
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
	#ev904_�����ޥ��ͥåȥ��`�ƥ���_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$First_Battle_Damage=$First_Battle_Damage+1;
	$PreGameName = $GameName;

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//�Υե����롡"mc01_022vs.nss"
	//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"
	//$GameName = "mc00_001.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	Cockpit_AllFade0();

	if($First_Battle_Damage >= 2){
		$GameName = "mc01_010vsz.nss";
	}else{
		$GameName = "mc01_022vs.nss";
	}

}

scene mc01_021vsba.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}
	//$First_Battle_Damage = 1;

//�����O
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("�}��", 5000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	CreateWindow("�}��", 19000, 0, 108, 1024, 360, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 19000, "#CC0000");
	CreateTextureSP("�}��/�}�����}װ�׏r", 19100, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	CreateTextureSPadd("�}��/�}�����}װ�ײ�", 19120, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	Move("�}��/�}�����}װ��*", 0, @290, @160, null, true);
	Zoom("�}��/�}�����}װ��*", 0, 800, 800, null, true);
	Request("�}��/�}�����}װ��*", Smoothing);
	DrawTransition("�}��/�}�����}װ�ײ�", 0, 0, 400, 100, null, "cg/data/slide_03_01_1.png", true);
	Wait(32);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0360a01">
����װ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ޥ��ͥåȥ��`�ƥ���
	CreateSE("SE01","se���L_��x_����չ�_");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("�}ɫ��", 19500, "WHITE");
	Fade("�}ɫ��",10,1000,null,true);

	CreateTextureEX("�}�ݴ����ϱ�", 19400, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_a.jpg");
	SetVertex("�}�ݴ����ϱ�", 750, 280);
	Zoom("�}�ݴ����ϱ�", 0, 2000, 2000, null, true);
	SetBlur("�}�ݴ����ϱ�", true, 3, 500, 60, false);
	Fade("�}�ݴ����ϱ�", 0, 1000, null, true);

	Delete("�}��*");
	Delete("�}��");

	Fade("�}�ݴ����ϱ�", 250, 1000, Dxl1, false);
	Zoom("�}�ݴ����ϱ�", 250, 1000, 1000, Dxl1, false);
	FadeDelete("�}ɫ��", 400, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��ȫ����˶����������Ч�����������ƻ���
��ά����������ڼ䣬���ӳ������߳�ʶ��ս��
���������ǲ����ܡ�

����������ɱ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ι���
	CreateSE("SE00","se���L_����_���ϕN01");

	CreateWindow("�}��", 19600, 342, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);
	CreateColorSP("�}��/�}��ɫ", 19610, "#CC0000");
	CreateTextureSPmul("�}��/�}�ݱ���", 19620, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 19700, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}��/�}�����}װ��", Smoothing);
	Move("�}��/�}�����}װ��", 0, @0, @300, null, true);//���ߩ`ע�⣺��λ��
	Zoom("�}��/�}�����}װ��", 0, 500, 500, null, true);

	MusicStart("SE00",0,1000,0,1000,null,false);
	Zoom("�}��/�}�����}װ��", 600, 1000, 1000, Dxl2, false);
	Move("�}��/�}�����}װ��", 600, @0, @-100, Dxl2, false);

	Zoom("�}��", 300, 1000, 1000, Dxl2, true);
	Zoom("�}��/�}�����}װ��", 500, 3000, 3000, Dxl2, false);
	Move("�}��/�}�����}װ��", 500, @0, @-200, Dxl2, false);

	Wait(300);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateSE("SE02","se���L_����_�����01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-100,2000);
	SL_downfade2(10);

	Delete("�}��*");

//���ܤ���
	CreateSE("SE02a","se����_��x_��������01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	SetVolume("SE02a", 5000, 0, null);
	SetFrequency("SE02a", 3000, 500, Dxl3);
	CreateColorSP("�}ɫ��", 30000, "#FFFFFF");

	Wait(10);

//�������`������ä�ʳ�ä���
	CreateSE("SE03a","se���L_�n��_�nͻ01");
	CreateSE("SE03b","se���L_����_�z��������03");

	Delete("�}ɫ�\*");
	Delete("�}�ݴ����ϱ�");

	CreateTextureSP("�}�ձ���", 100, Center, InBottom, "cg/bg/bg202_�����ݳ�����ɽa_01.jpg");
	CreateTextureSPadd("�}�ձ�����", 110, Center, InBottom, "cg/bg/bg202_�����ݳ�����ɽa_01.jpg");
	Move("�}�ձ���*", 0, @0, @288, null, true);

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

	MyTr_Count(0,520);
	CP_SpeedChange(0,512,null,false);

	CP_PowerChange(0,577,null,false);

	CP_HighChange(0,1281,null,false);
	CP_AziChange(0,18,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);
	CP_RollBarMoveA();

	MusicStart("SE03a",0,1000,0,1500,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);

	Shake("�}�ձ���*", 1500, 60, 0, 0, 0, 1000, Dxl3, false);
	Shake("@CP_Frame*", 2000, 60, 0, 0, 0, 1000, Dxl2, false);

	FadeDelete("�}�ձ�����", 1000, false);
	DrawDelete("�}ɫ��", 150, 100, "circle_01_00_1", false);

	Wait(700);

	$�����饤�՜p�ق� = $�����饤���{���� - 218;
	MyLife_Count(300,$�����饤�՜p�ق�);

	$����������p�ق� = $����������{���� - 3;
	CP_IHPChange(300,$����������p�ق�,null,false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0370a01">
����ǰװ�ױ����У���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0380a00">
��û�ܱܿ���!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 19000, "#000000");
	Fade("�}ɫ�\", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������������������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitPlay("SE*", null);

//������`������
//����������

}

..//������ָ��
//�Υե����롡"mc01_022vs.nss"
//������`���ե饰�������_�������ϡ�"mc01_010vsz.nss"

//���x�k֫���`��
scene mc01_021vsba.nss_SELECT
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