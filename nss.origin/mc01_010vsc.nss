
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_010vsc.nss_MAIN
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

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_010vsc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_010vs.nss"

//��ӭ���Ĥ�
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}��", 18000, Center, -40, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	CreateTextureSP("�}�ݺ���", 17100, Center, -480, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 500, 500, null, true);
	CreateTextureSP("�}�ݱ���", 17000, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	Delete("�ϱ���");
	Move("�}�ݺ���", 450, @0, -510, DxlAuto, false);
	FadeDelete("�}��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������������а㽫��ͷ�߾ٹ�����
����֮��Եأ��ҡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���϶Σ��¶�


}

..//������ָ��
//���϶Ρ�"mc01_010vsca.nss"
//���¶Ρ�"mc01_010vscb.nss"

//���x�k֫���`��
scene mc01_010vsc.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("�}�ݺ���", 17100, Center, -510, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 500, 500, null, true);
	CreateTextureSP("�}�ݱ���", 17000, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�϶�","�¶�");
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
//���϶Ρ�"mc01_010vsca.nss"
				$GameName = "mc01_010vsca.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���¶Ρ�"mc01_010vscb.nss"
				$GameName = "mc01_010vscb.nss";
		}
	}
}


