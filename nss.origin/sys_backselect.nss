$Revision: 9 $

//=============================================================================//
//���Хå����쥯�ȡ�
//=============================================================================//
chapter main
{
	Wait(16);

	//�ﳬ�٤���Ή��w��
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//���å��Έ���
	if(!ExistSave(9999)||$SYSTEM_backselect_lock||$Title_Config||$Title_Load){
		return;
	}

	//��ǰ�����
	$SYSTEM_backselect_enable = true;

	//�����x���ӥǥ��O�á�
	if(!$SYSTEM_menu_config_enable && !$SYSTEM_menu_save_enable && !$SYSTEM_menu_load_enable && !$SYSTEM_menu_enable && !$SYSTEM_backlog_enable&&!$LOCAL_hmode_enable){
		if(!$InDialog){
			CreateTexture("video", 1010000, center, middle, "VIDEO");
		}
	}

	//��ͤʤ�
	if(#no_ask){
		#PreSaveFlag=false;
		Save(0);
		CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
		Fade("BLACK",0,0,null,true);
		Fade("BLACK",300,1000,null,true);
		Draw();
		Load(9999,true);
	}

	//�����x����å��`��������ɥ����ɡ�
	CreateName("MSGWND");

	//�������`��
	LoadImage("MSGWND/IMG_yes_on","cg/sys/dialog/003-���J.png");
	LoadImage("MSGWND/IMG_yes_over","cg/sys/dialog/002-���J.png");
	LoadImage("MSGWND/IMG_yes_off","cg/sys/dialog/001-���J.png");

	LoadImage("MSGWND/IMG_no_on","cg/sys/dialog/003-���J.png");
	LoadImage("MSGWND/IMG_no_over","cg/sys/dialog/002-���J.png");
	LoadImage("MSGWND/IMG_no_off","cg/sys/dialog/001-���J.png");

	//�����x��������
	if(!$InDialog){
		CreateColor("MSGWND/MSG_bak", 1010000, Center, Middle, 1024, 576, BLACK);
	}

	//�����x���x�k֫��
	//box
	CreateTexture("MSGWND/MSG_msg",1010000,Center,Middle,"cg/sys/dialog/�x�k֫�ޤǑ���ޤ���.png");
	Request("MSGWND/MSG_msg", Smoothing);
	//YES
	CreateChoice("MSGWND/MSG_yes");
	CreateTexture("MSGWND/MSG_yes/MouseUsual/img",1012000,515,397,"MSGWND/IMG_yes_off");
	CreateTexture("MSGWND/MSG_yes/MouseOver/img",1011000,515,397,"MSGWND/IMG_yes_over");
	CreateTexture("MSGWND/MSG_yes/MouseClick/img",1011000,515,397,"MSGWND/IMG_yes_on");
	//NO
	CreateChoice("MSGWND/MSG_no");
	CreateTexture("MSGWND/MSG_no/MouseUsual/img",1012000,471,397,"MSGWND/IMG_no_off");
	CreateTexture("MSGWND/MSG_no/MouseOver/img",1011000,471,397,"MSGWND/IMG_no_over");
	CreateTexture("MSGWND/MSG_no/MouseClick/img",1011000,471,397,"MSGWND/IMG_no_on");

	SetVertex("MSGWND/MSG_yes/*/*", 0, Middle);
	SetVertex("MSGWND/MSG_no/*/*", 28, Middle);

	//�����åȥե��`����
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",LEFT);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",RIGHT);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",DOWN);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",UP);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",LEFT);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",RIGHT);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",DOWN);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",UP);

	//����K�ʂ�
	Fade("MSGWND/MSG_*",0,0,null,false);
	Fade("MSGWND/MSG_*/*/*",0,0,null,false);
	Zoom("MSGWND/MSG_msg", 0, 0, 1000, null, false);
	Zoom("MSGWND/MSG_*/*/*", 0, 0, 1000, null, false);

	//���軭�_ʼ
	Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
	Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
	Fade("MSGWND/MSG_msg",150,1000,null,false);
	Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
	Fade("MSGWND/MSG_bak",150,800,null,false);
	WaitAction("MSGWND/MSG_*",null);

	//���x�k֫�_ʼ
	if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
	select{
		if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
		if($SYSTEM_keydown_r||$SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){break;}

		case MSGWND/MSG_yes{
			//�����΄���
			if(ExistSave(9999)){
				CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
				Fade("BLACK",0,0,null,true);
				Fade("BLACK",300,1000,null,true);
				//#InitCV=false;
				#PreSaveFlag=false;
				Save(0);
				Load(9999,true);
			}
		}case MSGWND/MSG_no{
		}

		//�省�`������ϵ
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
			Zoom("MSGWND/MSG_msg", 150, 0, 1000, null, false);
			Zoom("MSGWND/MSG_*/*/*", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg",150,0,null,false);
			Fade("MSGWND/MSG_*/*/*",150,0,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
			
			$InDialog=true;
			call_chapter nss/sys_close.nss;
			$InDialog=false;

			Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
			Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg",150,1000,null,false);
			Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
		}
	}
	$SYSTEM_r_button_down=false;
	$SYSTEM_backselect_enable=false;

	Zoom("MSGWND/MSG_msg",150,0,1000, Dxl1, false);
	Zoom("MSGWND/MSG_*/*/*",150,0,1000, Dxl1, false);
	Fade("MSGWND/MSG_*",150,0,null,false);
	Fade("MSGWND/MSG_*/*/*",150,0,null,false);
	WaitAction("MSGWND/MSG_*",null);

	Delete("MSGWND");

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
}



//���ޥ������Y���å����ȥ�ˑ���_�J����������
function TitleDialogTrial()
{
//�����Y�挟��
	#ResetMessage="ǰ���x�k֫�ޤǑ���ޤ�����";

	if(Message("���ޥ����x�k֫�ˑ���_�J",#ResetMessage,OKCANCEL)==1){
		CreateColor("BLACK", 1112000, center, middle, 800, 600, BLACK);
		Fade("BLACK", 0, 0, null, true);
		Fade("BLACK", 500, 1000, null, true);

		Load(9999,false);
	}

}

