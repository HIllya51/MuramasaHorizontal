$Revision: $

//=============================================================================//
//������`�ȥ��åȡ�
//=============================================================================//
.//�����x
function QuickSet()
{
	LoadImage("QuickImage_Save001", "cg/sys/quick/�ݤ�001.png");
	LoadImage("QuickImage_Save002", "cg/sys/quick/�ݤ�002.png");
	LoadImage("QuickImage_Save003", "cg/sys/quick/�ݤ�003.png");
	LoadImage("QuickImage_Load001", "cg/sys/quick/�ݤ��_��001.png");
	LoadImage("QuickImage_Load002", "cg/sys/quick/�ݤ��_��002.png");
	LoadImage("QuickImage_Load003", "cg/sys/quick/�ݤ��_��003.png");
	LoadImage("QuickImage_Skip001", "cg/sys/quick/�����åפ���001.png");
	LoadImage("QuickImage_Skip002", "cg/sys/quick/�����åפ���002.png");
	LoadImage("QuickImage_Skip003", "cg/sys/quick/�����åפ���003.png");
	LoadImage("QuickImage_Mess001", "cg/sys/quick/��å��`��������001.png");
	LoadImage("QuickImage_Mess002", "cg/sys/quick/��å��`��������002.png");
	LoadImage("QuickImage_Mess003", "cg/sys/quick/��å��`��������003.png");

	Request("QuickImage_Save001", Lock);
	Request("QuickImage_Save002", Lock);
	Request("QuickImage_Save003", Lock);
	Request("QuickImage_Load001", Lock);
	Request("QuickImage_Load002", Lock);
	Request("QuickImage_Load003", Lock);
	Request("QuickImage_Skip001", Lock);
	Request("QuickImage_Skip002", Lock);
	Request("QuickImage_Skip003", Lock);
	Request("QuickImage_Mess001", Lock);
	Request("QuickImage_Mess002", Lock);
	Request("QuickImage_Mess003", Lock);

	//�٩`��
	$QuickBaseLayer=999999;
	$QuickBaseLayer2=1000000;
	CreateTexture("QuickBase",$QuickBaseLayer2,992,26,"cg/sys/quick/�����å���˥�`̨��.png");
	SetAlias("QuickBase", "QuickBase");
	Request("QuickBase", Lock);

	//�����å����`��
	$QuickSaveX=998;
	$QuickSaveY=47;
	CreateChoice("QuickSave");
	SetAlias("QuickSave", "QuickSave");
	CreateTexture("QuickSave/MouseUsual/hit",$QuickBaseLayer,$QuickSaveX,$QuickSaveY,"QuickImage_Save001");
	CreateTexture("QuickSave/MouseOver/img",$QuickBaseLayer,$QuickSaveX,$QuickSaveY,"QuickImage_Save002");
	CreateTexture("QuickSave/MouseClick/img",$QuickBaseLayer,$QuickSaveX,$QuickSaveY,"QuickImage_Save003");
	CreateTexture("QuickNoSave",$QuickBaseLayer2,$QuickSaveX,$QuickSaveY,"QuickImage_Save001");
	SetAlias("QuickNoSave", "QuickNoSave");

	Request("QuickSave", Lock);
	Request("QuickSave/MouseUsual/hit", Lock);
	Request("QuickSave/MouseOver/img", Lock);
	Request("QuickSave/MouseClick/img", Lock);
	Request("QuickNoSave", Lock);

	//�����å���`��
	$QuickLoadX=998;
	$QuickLoadY=180;
	CreateChoice("QuickLoad");
	SetAlias("QuickLoad", "QuickLoad");
	CreateTexture("QuickLoad/MouseUsual/hit",$QuickBaseLayer,$QuickLoadX,$QuickLoadY,"QuickImage_Load001");
	CreateTexture("QuickLoad/MouseOver/img",$QuickBaseLayer,$QuickLoadX,$QuickLoadY,"QuickImage_Load002");
	CreateTexture("QuickLoad/MouseClick/img",$QuickBaseLayer,$QuickLoadX,$QuickLoadY,"QuickImage_Load003");
	CreateTexture("QuickNoLoad",$QuickBaseLayer2,$QuickLoadX,$QuickLoadY,"QuickImage_Load001");
	SetAlias("QuickNoLoad", "QuickNoLoad");

	Request("QuickLoad", Lock);
	Request("QuickLoad/MouseUsual/hit", Lock);
	Request("QuickLoad/MouseOver/img", Lock);
	Request("QuickLoad/MouseClick/img", Lock);
	Request("QuickNoLoad", Lock);

	//�����å������å�
	$QuickSkipX=998;
	$QuickSkipY=290;
	CreateChoice("QuickSkip");
	SetAlias("QuickSkip", "QuickSkip");
	CreateTexture("QuickSkip/MouseUsual/hit",$QuickBaseLayer,$QuickSkipX,$QuickSkipY,"QuickImage_Skip001");
	CreateTexture("QuickSkip/MouseOver/img",$QuickBaseLayer,$QuickSkipX,$QuickSkipY,"QuickImage_Skip002");
	CreateTexture("QuickSkip/MouseClick/img",$QuickBaseLayer,$QuickSkipX,$QuickSkipY,"QuickImage_Skip003");
	CreateTexture("QuickNoSkip",$QuickBaseLayer2,$QuickSkipX,$QuickSkipY,"QuickImage_Skip001");
	SetAlias("QuickNoSkip", "QuickNoSkip");

	Request("QuickSkip", Lock);
	Request("QuickSkip/MouseUsual/hit", Lock);
	Request("QuickSkip/MouseOver/img", Lock);
	Request("QuickSkip/MouseClick/img", Lock);
	Request("QuickNoSkip", Lock);

	//�����å���å��`��������
	$QuickMessX=998;
	$QuickMessY=390;
	CreateChoice("QuickMess");
	SetAlias("QuickMess", "QuickMess");
	CreateTexture("QuickMess/MouseUsual/hit",$QuickBaseLayer,$QuickMessX,$QuickMessY,"QuickImage_Mess001");
	CreateTexture("QuickMess/MouseOver/img",$QuickBaseLayer,$QuickMessX,$QuickMessY,"QuickImage_Mess002");
	CreateTexture("QuickMess/MouseClick/img",$QuickBaseLayer,$QuickMessX,$QuickMessY,"QuickImage_Mess003");
	CreateTexture("QuickNoMess",$QuickBaseLayer2,$QuickMessX,$QuickMessY,"QuickImage_Mess001");
	SetAlias("QuickNoMess", "QuickNoMess");

	Request("QuickMess", Lock);
	Request("QuickMess/MouseUsual/hit", Lock);
	Request("QuickMess/MouseOver/img", Lock);
	Request("QuickMess/MouseClick/img", Lock);
	Request("QuickNoMess", Lock);

	//�ץ�������
	CreateProcess("quickProcess", 100, 0, 0, "QuickWhile");
	SetAlias("quickProcess", "quickProcess");
	Request("quickProcess", Lock);

	//������
	CreateSound("QuickSound", SE, "sound/se/SE_sys_������");
	SetAlias("QuickSound", "QuickSound");
	Request("QuickSound", Lock);


	//�ʂ�
	Fade("Quick*", 0, 0, null, false);
	Fade("Quick*/*/*", 0, 0, null, false);
	Move("Quick*", 0, 1024, @0, null, false);
	Move("Quick*/*/*", 0, 1030, @0, null, false);
	Fade("Quick*/*/hit", 0, 1000, null, true);
	Fade("Quick*", 0, 1000, null, true);

	//Request("*/MouseUsual/hit", Erase);
	Request("QuickNo*", Erase);

	Request("quickProcess", Start);
}


.//���軭
function QuickWhile()
{
	Request("�Х��ե�����", UnLock);
	CreateColor("�Х��ե�����", 1, -1000, 0, 1, 1, BLACK);
	SetAlias("�Х��ե�����", "�Х��ե�����");
	Request("�Х��ե�����", Lock);

	$QuickIn=false;

	while(1){
		select{
			CursorPosition($PosX,$PosY);
			Position("@QuickBase",$BasX,$BasY);

			if(!$SYSTEM_text_erase&&$QuickMoveLock){
				$SYSTEM_text_waitkey=true;
				$QuickMoveLock=false;
			}

			if(!$QuickMoveLock){
				if($SYSTEM_text_erase){
					$QuickMoveLock=true;
					$QuickMoveOut=true;
					break;
				}

				if($PosX>968&&!$QuickIn){
					$SYSTEM_text_waitkey=false;
					$QuickMoveIn=true;
					break;
				}else if($PosX<=968&&$QuickIn){
					$SYSTEM_text_waitkey=true;
					$QuickMoveOut=true;
					break;
				}
			}



			if(!$SYSTEM_save_lock){
				case @QuickSave{
					Fade("@Quick*/MouseClick/img", 100, 0, null, true);
					if(!$SYSTEM_save_lock){
						//��`�ɤ����H�������Q��ʤ��褦�ˤ��Ƥ��룱
						#QuickSound=true;

						//���������Ĩ�����륳�ޥ��
						$SYSTEM_text_icon_disable=false;
						$SYSTEM_mousewheel_up=false;
						$SYSTEM_mousewheel_down=false;

						$PLAY_TIME+=(Time()-#START_TIME);
						#START_TIME=Time();
						Save(9998);

						//��`�ɤ����H�������Q��ʤ��褦�ˤ��Ƥ��룲
						if(#QuickSound){
							Request("@QuickSound", Stop);
							SetVolume("@QuickSound", 0, 1000, NULL);
							Request("@QuickSound", Play);
						}
						#QuickSound=false;
					}
				}
			}
			if(ExistSave(9998)&&!$SYSTEM_load_lock){
				case @QuickLoad{
					if(!$SYSTEM_load_lock){
						//���������Ĩ�����륳�ޥ��
						$SYSTEM_text_icon_disable=true;

						CreateColor("BLACK",1112000,1024,0,1024,576,BLACK);
						Fade("BLACK", 0, 0, null, true);
						Move("BLACK", 0, 0, 0, null, true);
						Fade("BLACK", 300, 1000, null, true);

						$SYSTEM_menu_enable=false;
						$SYSTEM_menu_load_enable=false;
						DeleteSaveFile(9999);
				
						#InitCV=false;
						#PreSaveFlag=false;
						#START_TIME=Time();
						Save(0);
						Load(9998);
					}
				}
			}
			if(!$SYSTEM_skip_lock){
				case @QuickSkip{
					if(!$SYSTEM_skip_lock){
						$SYSTEM_skip=true;
					}
				}
			}
			if(!$SYSTEM_text_erase_lock){
				case @QuickMess{
					if(!$SYSTEM_text_erase_lock){
						$SYSTEM_text_erase=!$SYSTEM_text_erase;
					}
				}
			}
		}

		if($SYSTEM_save_lock){
			Request("@QuickSave",UnClickable);
			//Request("@QuickNoSave", Enter);
		}else{
			Request("@QuickSave",Clickable);
			//Request("@QuickNoSave", Erase);
		}

		if(!ExistSave(9998)||$SYSTEM_load_lock){
			Request("@QuickLoad",UnClickable);
			//Request("@QuickNoLoad", Enter);
		}else{
			Request("@QuickLoad",Clickable);
			//Request("@QuickNoLoad", Erase);
		}

		if($SYSTEM_skip_lock){
			Request("@QuickSkip",UnClickable);
			//Request("@QuickNoSkip", Enter);
		}else{
			Request("@QuickSkip",Clickable);
			//Request("@QuickNoSkip", Erase);
		}

		if($SYSTEM_text_erase_lock){
			Request("@QuickMess",UnClickable);
			//Request("@QuickNoMess", Enter);
		}else{
			Request("@QuickMess",Clickable);
			//Request("@QuickNoMess", Erase);
		}

		if($QuickMoveIn){
			$QuickIn=true;
			//Fade("@Quick*/*/*", 100, 0, null, false);
			//Fade("@Quick*/*/hit", 100, 1000, null, false);
			Move("@QuickNo*", 200, 998, @0, Dxl2, false);
			Move("@QuickBase", 200, 992, @0, Dxl2, false);
			Move("@Quick*/*/*", 200, 998, @0, Dxl2, true);
		}else if($QuickMoveOut){
			$QuickIn=false;
			Move("@QuickNo*", 200, 1030, @0, Dxl2, false);
			Move("@QuickBase", 200, 1024, @0, Dxl2, false);
			Move("@Quick*/*/*", 200, 1030, @0, Dxl2, true);
			Fade("@Quick*/*/*", 0, 0, null, false);
			Fade("@Quick*/*/hit", 0, 1000, null, true);
		}

		$QuickMoveIn=false;
		$QuickMoveOut=false;
	}
}


function QuickStop()
{
	Request("@quickProcess", Stop);
	WaitAction("@quickProcess", null);

	Fade("@QuickSkip/*/*", 300, 0, null, false);
	Fade("@QuickSave/*/*", 300, 0, null, false);
	Fade("@QuickLoad/*/*", 300, 0, null, false);
	Fade("@QuickMess/*/*", 300, 0, null, false);
	Fade("@Quick*", 300, 0, null, true);
}

function QuickStart()
{
	$QuickIn=false;

	Fade("@Quick*/*/*", 0, 0, null, false);
	Move("@Quick*", 0, 1024, @0, null, false);
	Move("@Quick*/*/*", 0, 1030, @0, null, false);
	Fade("@Quick*/*/hit", 0, 1000, null, true);
	Fade("@Quick*", 0, 1000, null, true);

	Request("@quickProcess", Start);
}

/*
			if(($PosX<=968&&$QuickMoveLock)||!$SYSTEM_text_erase){
				$QuickMoveLock=false;
			}

			if(!$QuickMoveLock){
				if($SYSTEM_text_erase&&$QuickIn){
					$QuickMoveLock=true;
					$QuickMoveOut=true;
					break;
				}
				if($PosX>968&&!$QuickIn){
					$SYSTEM_text_waitkey=false;
					$QuickMoveIn=true;
					break;
				}else if($PosX<=968&&$QuickIn){
					$SYSTEM_text_waitkey=true;
					$QuickMoveOut=true;
					break;
				}
			}

*/