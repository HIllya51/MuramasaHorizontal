$Revision: 10 $

//=============================================================================//
//���Хå�����
//=============================================================================//

chapter main
{
	Wait(16);
//	CursorPosition($LogPosX,$LogPosY);

	//�ﳬ�٤���Ή��w��
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//�ﶨ�x�����ȥ�`������ȡ�á�
	//FlagCheck();

	//���ե饰�v�S
	//�Хå����v�S�����ƥ�����
	//��һ�Ф�������������ϥ����ƥ�ζ����ϡ�System.ini���Ρ��Хå����������������O�����Ƥ���������
	$SYSTEM_backlog_row_max=16;			//�Хå�����ʾ���������
	$SYSTEM_backlog_voice_icon_x=102;	//�Хå�����ʾ��������ԩ`�ȥ������������
	$SYSTEM_backlog_position_x=140;		//�Хå�����ʾ�������_ʼλ�ã�����
	$SYSTEM_backlog_position_y=49;		//�Хå�����ʾ�������_ʼλ�ã�����
	$SYSTEM_backlog_row_interval=30	;	//�Хå�����ʾ�����g������
	$SYSTEM_backlog_character_width=20;	//�Хå�����ʾ�θ����ַ�

	if($SYSTEM_backlog_lock){
		//$backlog_lock_plus=true;
	}
	//$SYSTEM_backlog_lock=false;

	//���ʂ䡸������`��//���ҥ���å��������Ƥ��ʤ����
	if(!$SYSTEM_menu_enable){
		if(Platform()==100){
			CreateTexture("video",10000,center,middle,SCREEN);
			CreateTexture("bkf������",10100,center,middle,SCREEN);
		}else{
			CreateTexture("video",10000,center,middle,VIDEO);
			CreateTexture("bkf������",10100,center,middle,VIDEO);
		}
	}else if($SYSTEM_menu_enable){
		CreateTexture("video",10000,center,middle,SCREEN);
		CreateTexture("bkf������",10100,center,middle,SCREEN);
	}
/*
	//���ʂ䡸�ե���ȡ�
	LoadFont("LogFont01", "����", 20, #000000, #000000, 500, null, "�����������������������������������ĤƤȤʤˤ̤ͤΤϤҤդؤۤޤߤ�������������󤬤��������������������¤ŤǤɤФӤ֤٤ܤѤԤפڤݤ����������ä��祢���������������������������������ĥƥȥʥ˥̥ͥΥϥҥեإۥޥߥ�������������󥬥��������������������¥ťǥɥХӥ֥٥ܥѥԥץڥݥ����������å��硢���`�������D����������������������������");
	LoadFont("LogFont02", "����", 20, #000000, #000000, 500, null, "һ���Ք�ζ��˼���Еr��Ҋ���˽K�ü�");
	LoadFont("LogFont03", "����", 20, #000000, #000000, 500, null, "���˾ũ���ʽ�o�T����̫������򄫃������������w����������y�������y�Ǻžc��һ�����B����֦�����衩�����L�o�����}����ͯ�Ī{�Ӻ�ѩ܇���Ļ�������_�Ҵ�͹��ռ��늴ų�����\ɫ�ǣȣ�");
*/
	SetFont("����",20,#000000,#000000,500,null);

	//�����x��������
	CreateTexture("bkf����",10010,0,0,"cg/sys/backlog/�Хå�������.png");
	SetAlias("bkf����", "bkf����");

	//�����x���ϥک`���ͤ꡹
//	CreateChoice("bk�ϥک`��");
//	CreateTexture("bk�ϥک`��/MouseUsual/button",10050,509,31,"cg/sys/backlog/��ɤ륹���å�OFF.png");
//	CreateTexture("bk�ϥک`��/MouseOver/button",10050,509,31,"cg/sys/backlog/��ɤ륹���å�OVER.png");
//	CreateTexture("bk�ϥک`��/MouseClick/button",10050,509,31,"cg/sys/backlog/��ɤ륹���å�ON.png");

	//�����x���ϥ饤���ͤ꡹
	CreateTexture("bkf�ϥ饤��",10050,898,168,"cg/sys/backlog/001-��.png");
	CreateChoice("bk�ϥ饤��");
	CreateTexture("bk�ϥ饤��/MouseUsual/hit",10050,898,168,"cg/sys/backlog/�������ж��`��.png");
	CreateTexture("bk�ϥ饤��/MouseUsual/button",10050,898,168,"cg/sys/backlog/001-��.png");
	CreateTexture("bk�ϥ饤��/MouseOver/button",10050,898,168,"cg/sys/backlog/002-��.png");
	CreateTexture("bk�ϥ饤��/MouseClick/button",10050,898,168,"cg/sys/backlog/003-��.png");

	//�����x���¥ک`���ͤ꡹
//	CreateChoice("bk�¥ک`��");
//	CreateTexture("bk�¥ک`��/MouseUsual/button",10050,509,523,"cg/sys/backlog/�����ॹ���å�OFF.png");
//	CreateTexture("bk�¥ک`��/MouseOver/button",10050,509,523,"cg/sys/backlog/�����ॹ���å�OVER.png");
//	CreateTexture("bk�¥ک`��/MouseClick/button",10050,509,523,"cg/sys/backlog/�����ॹ���å�ON.png");

	//�����x���¥饤���ͤ꡹
	CreateTexture("bkf�¥饤��",10050,898,303,"cg/sys/backlog/001-�M.png");
	CreateChoice("bk�¥饤��");
	CreateTexture("bk�¥饤��/MouseUsual/hit",10050,898,303,"cg/sys/backlog/�������ж��`�M.png");
	CreateTexture("bk�¥饤��/MouseUsual/button",10050,898,303,"cg/sys/backlog/001-�M.png");
	CreateTexture("bk�¥饤��/MouseOver/button",10050,898,303,"cg/sys/backlog/002-�M.png");
	CreateTexture("bk�¥饤��/MouseClick/button",10050,898,303,"cg/sys/backlog/003-�M.png");

	//�����x�����ڡ�
	CreateTexture("bkf���ڻ���",10050,927,438,"cg/sys/backlog/001-�˳�.png");
	CreateChoice("bk����");
	SetAlias("bk����", "bk����");
	CreateTexture("@bk����/MouseUsual/hit",0,927,438,"cg/sys/backlog/001-�˳�.png");
//	CreateTexture("@bk����/MouseUsual/button",10050,927,438,"cg/sys/backlog/001-�˳�.png");
	CreateTexture("@bk����/MouseOver/button",10050,927,438,"cg/sys/backlog/002-�˳�.png");
	CreateTexture("@bk����/MouseClick/button",10050,927,438,"cg/sys/backlog/003-�˳�.png");

	//�����x���Хå�����
	CreateScrollbar("bk������`��Щ`",0,860,461,860,50,0,VERTICAL,"cg/sys/backlog/001-������`��.png");
	SetAlias("bk������`��Щ`", "bk������`��Щ`");
	CreateBacklog("bk�Хå���",10010);
	SetScrollbar("bk������`��Щ`","bk�Хå���");

	//�����x��ʸӡ��
	CreateChoice("bkʸӡ");
	SetAlias("bkʸӡ", "bkʸӡ");
	CreateTexture("@bkʸӡ/MouseUsual/hit",10050,860,461,"cg/sys/backlog/001-������`��.png");
	CreateProcess("@bkʸӡ/MouseOver/button", 10050, 0, 0, "BackLogProcessOpen");
	CreateProcess("@bkʸӡ/MouseLeave/button", 10050, 0, 0, "BackLogProcessStop");

	CreateTexture("bk���`����01",10050,860,461,"cg/sys/backlog/001-������`��.png");
	SetAlias("bk���`����01", "bk���`����01");
	CreateTexture("bk���`����02",10050,860,461,"cg/sys/backlog/002-������`��.png");
	SetAlias("bk���`����02", "bk���`����02");

	//�����x���ܥ����h����
	//DialogButtonON("Button_LOG");


	SetNextFocus("@bk����/MouseUsual/hit","@bk����/MouseUsual/hit",LEFT);
	SetNextFocus("@bk����/MouseUsual/hit","@bk����/MouseUsual/hit",RIGHT);


	//��ʂ�
	Request("*/*/hit", Erase);
	Fade("bk*", 0, 0, null, false);
	Fade("bk*/*", 0, 0, null, false);
	Fade("bk*/*/*", 0, 0, null, false);
	Fade("bkf*", 0, 1000, null, false);
	Fade("bk���`����01", 0, 1000, null, false);

	//���軭
	//���軭���ܥ����h����
	//DialogButtonFade3("Button_LOG");
	Fade("bkf������", 300, 0, null, true);

	//���x�k֫
	$SYSTEM_backlog_enable=true;
	//$SYSTEM_menu_close_enable=false;
	$PreBackLogPositionY=465;

	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
	while(EnableBacklog()&&$SYSTEM_backlog_enable)
	{
		if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
		select
		{
			if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}

			if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}
			if($SYSTEM_keydown_b||$SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){$SYSTEM_backlog_enable=false;break;}

			case bk����{$SYSTEM_backlog_enable=false;break;}
			case bk�ϥ饤��{Request("bk������`��Щ`",Decrement);}
			case bk�ϥک`��{Request("bk������`��Щ`",Prev);}
			case bk�¥饤��{Request("bk������`��Щ`",Increment);}
			case bk�¥ک`��{Request("bk������`��Щ`",Next);}

			//�參�`���륢������
			case bk������`��Щ`{}
			case bkʸӡ{}
			Position("bk������`��Щ`",$BackLogPositionX,$BackLogPositionY);
			if($BackLogPositionY!=$PreBackLogPositionY){
				Move("@bkʸӡ/MouseUsual/hit", 0, @0, $BackLogPositionY, null, true);
				Move("bk���`����01", 0, @0, $BackLogPositionY, null, true);
				Move("bk���`����02", 0, @0, $BackLogPositionY, null, true);
			}
			$PreBackLogPositionY=$BackLogPositionY;

			if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}

			//�省�`������ϵ
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
				call_chapter nss/sys_close.nss;
			}else if($SYSTEM_keydown_t){
				call_chapter nss/sys_reset.nss;
			}else if($SYSTEM_keydown_r){
				call_chapter nss/sys_backselect.nss;
			}
		}

		if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}
		Wait(16);
	}
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;

	Wait(100);

	//���軭���ܥ����h����
	//DialogButtonOFF3("Button_LOG");

	//��K�˄������軭��
	if(!$SYSTEM_menu_enable){
		Fade("bkf������", 300, 1000, null, true);
		Delete("bk*/*/*");
		Delete("bk*");
	}else if($SYSTEM_menu_enable){
		Fade("bkf������", 300, 1000, null, true);
		Delete("bk*/*/*");
		Delete("bk*");
	}

	//MoveCursor($LogPosX,$LogPosY);
	$SYSTEM_backlog_enable=false;

	if($backlog_lock_plus){
		//$SYSTEM_backlog_lock=true;
	}
	//$backlog_lock_plus=false;

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
}


//���ץ����ޥ���
function BackLogProcessOpen()
{
	Fade("@bk���`����02", 0, 1000, null, false);
	Fade("@bk���`����01", 0, 0, null, true);
}
function BackLogProcessStop()
{
	Fade("@bk���`����01", 0, 1000, null, false);
	Fade("@bk���`����02", 0, 0, null, false);
//	SetVolume("@Config1a_BVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
}
