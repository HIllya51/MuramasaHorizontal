
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_021vsz.nss_MAIN
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
	$mc03kacl=0;
	$mc03_kacl_Frag=false;
	$mc03dmg=0;
	$mc03_dmg_Frag=false;

	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc03_021vsz.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_019vsb.nss"
//ǰ�ե����롡"mc03_019vsc.nss"
//ǰ�ե����롡"mc03_020vsab.nss"
//ǰ�ե����롡"mc03_020vsad.nss"
//ǰ�ե����롡"mc03_020vsba.nss"
//ǰ�ե����롡"mc03_020vsbbb.nss"
//ǰ�ե����롡"mc03_021vs.nss"
//ǰ�ե����롡"mc03_023vsb.nss"���ϤäƤ뤫Ҫ�_�J

//�񥲩`�४�`�Щ`
//�����`�४�`�Щ`�ã�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 10, "#000000");
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ս���Ŀ���������ս��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�������餹�룯�����ȥ�ˑ���
//����������v�S�ե饰���ڻ����ơ���L�_ʼ

//��$���ҼӜp_Flag = false;
//��$�����ܤ�_Flag = false;
//��$���Ҿt��_Flag = false;
//��$���ұܤ�_Flag = false;
//��$���ҼӜp_Flag = false;
//��$�����ܤ�_Flag = false;
//��$���Ҿt��_Flag = false;
//��$���ұܤ�_Flag = false;
//��$�x��_Flag = false;
//��$�x�|_Flag = false;
//��$�x��_Flag = false;
//��$�x��_Flag = false;

}

..//������ָ��
//�Υե����롡"mc03_017vs.nss"

//���x�k֫���`��
scene mc03_021vsz.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	CreateColorSP("�}ɫ�\", 10, "#000000");
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�ٴ���ս","����");
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
//�������餹�롡"mc03_017vs.nss"
			$mc03_017vs_Flag="";
			$mc03_018vs_BSFlag="";
			$mc03_018vs_R2Flag="";
			$GameName = "mc03_017vs.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�������ȥ�ˑ���
			$GameName = "mz00_000.nss";
		}
	}
}