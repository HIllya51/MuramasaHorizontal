$Revision: 35 $

//=============================================================================//
.//������ե�����
//=============================================================================//
chapter main
{
	//��ǰ�����
	$SYSTEM_menu_config_enable=true;

	//�ﳬ�٤���Ή��w��
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	#SYSTEM_interrupt_play_speed=3;
	//$SYSTEM_backlog_lock=true;

	//��ǰ�����
	if($Title_Config){
		//������ȥ�Υ��`�ॹ�ԩ`�ɱ���
		#play_speed_plus2 = #SYSTEM_play_speed;
		//�����ȥ�ˤ����ƤΥ���ե����Υ��`�ॹ�ԩ`��
		#SYSTEM_play_speed=3;
	}else{
		#play_speed_plus=#SYSTEM_play_speed;
	}

	//�ܥ����O���ک`�����ڻ�
	$ConfigVoiceOn=false;

	//����Ϥɤ��Υک`����
	$cfgtab=1;
	//һ���i���z������i���z�ޤʤ��褦��
	$cfgmaketab1=false;
	//�ƥ��������ó��ڻ�����
	$cfgvoicetest=1;
	//���ڻ���ک`���Ƅ���
	$ConfigBreakFlag=false;
	//�����å��ܥå�����FADE����
	$ConfigFadeTime=100;
	//�x�k���`�Щ`��
	$ConfigSound_over="sound/se/se�\��_܇_�ɥ��_�]01";
	//�x�k����å���
	$ConfigSound_click="sound/se/se����_�n��_�ߵ[�֤Ĥ���01";
	//������`�륹�ԩ`��
	$ConfigScrollSpeed=3;
	//�ե��`�ޥå��v�B
	$go=false;

	SetFont("����",21,#00000,#FFFFFF,500,NONE);

	//���ʂ䡸������`��//�������ȥ�Ȥ���˥�`���飿����Ȥ⣿
	if(!$PLACE_title&&!$SYSTEM_menu_enable&&!$SYSTEM_menu_lock){
		LoadImage("IMG_video",VIDEO);
	}else{
		LoadImage("IMG_video",SCREEN);
	}
	CreateTexture("video_config01",10000,center,middle,"IMG_video");

	//�����x����ͨ�زġ�
	ConfigReady();

	//���_ʼ������ե������桹
	$SYSTEM_menu_config_enable=true;
	$SYSTEM_keydown_esc=false;
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
	while($SYSTEM_menu_config_enable)
	{
		//����ڻ���ک`���Ƅ���
		$ConfigBreakFlag=false;

		//�����x
		ConfigSet();

		//���軭
		ConfigFade();

		//���x�k֫
		ConfigSelect();

		if($ConfigBreakFlag){$SYSTEM_menu_config_enable=true;}
	}

	if($TypeBeginNow){
		//Fade("<@box360>", 0, #LOCAL_window_fade, null, true);
	}

	ConfigCharacterVoice();
	//SavingStart();

	//��K�˄������軭��
	CreateTexture("�����ƥ౳��C",11100,0,0,SCREEN);

	Delete("Config/*/*/*/*");
	Delete("Config/*/*/*");
	Delete("Config/*/*");
	Delete("Config/*");
	Delete("Config*");
	Delete("Config*");

	if($Title_Config){
		Fade("video_config01", 0, 0, null, true);
	}
	Fade("�����ƥ౳��C",300,0,null,true);

	//���軭���ܥ����h����
	//DialogButtonOFF("Button_CONFIG");
	//Move("finfin", 300, @0, @-720, null, true);
	//$SYSTEM_backlog_lock=false;
	$SYSTEM_menu_config_enable=false;
	if($PLACE_select){
		//$SYSTEM_backlog_lock=true;
	}

	if($Title_Config){
		#SYSTEM_play_speed=#play_speed_plus2;
	}else{
		#SYSTEM_play_speed=#play_speed_plus;
	}

	$SYSTEM_r_button_down=false;
	$SYSTEM_XBOX360_button_b_down=false;
	#SYSTEM_interrupt_play_speed=3;
	$SYSTEM_menu_config_enable=false;

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
}

chapter main2
{
	ConfigVoiceArray();
}



.//�����x����ͨ�زġ�
function ConfigReady()
{
	//������å�
	//XBOX360_LockVideo(true);

..	//����`�ɡ���ͨ����ϵ��
	LoadImage("ConfigImageLine","cg/sys/config/�Щ`�Y�ȥ������ж�.png");

	LoadImage("ConfigImagePen00","cg/sys/config/�{���Щ`�Ĥޤ��Y�ȥ������ж�.png");
	LoadImage("ConfigImagePen01","cg/sys/config/001-ʸӡ.png");
	LoadImage("ConfigImagePen02","cg/sys/config/002-ʸӡ�Ƅӕr.png");

	LoadImage("ConfigImageCheck01","cg/sys/config/001-��.png");//�����å��ǥե�������ӵ������ж�
	LoadImage("ConfigImageCheck02a","cg/sys/config/002-��.png");//�����å����`�Щ`
	LoadImage("ConfigImageCheck02b","cg/sys/config/002-��.png");//�����å����`�Щ`
	LoadImage("ConfigImageCheck03a","cg/sys/config/003-��.png");//�����å�
	LoadImage("ConfigImageCheck03b","cg/sys/config/003-��.png");//�����å�

	//LoadImage("ConfigImageBottan01","cg/sys/config/PUSH-001.png");//�����å��ǥե�������ӵ������ж�
	//LoadImage("ConfigImageBottan02","cg/sys/config/PUSH-002.png");//�����å����`�Щ`
	//LoadImage("ConfigImageBottan03","cg/sys/config/PUSH-003.png");//�����å�

	//LoadImage("ConfigImageBar","cg/sys/config/����ե��������x�k�Щ`.png");//�饤�󥪩`�Щ`

..	//�����x������
	CreateSound("ConfigSound_over", SE, $ConfigSound_over);
	CreateSound("ConfigSound_click", SE, $ConfigSound_click);

..	//�����x��������
	CreateTexture("Config9f_ConfigGround", 10000, Center, Middle, "cg/sys/config/����ե���.png");

..	//�����x���Щ`��
	//$ConfigBarX=160;
	//$ConfigBarY=235;
	//CreateTexture("Config9f_bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
	//Request("Config9f_bar", MulRender);

	Request("Config*/MouseUsual/hit", Erase);
	Fade("*",0,0,null,false);
	Fade("*/*/*",0,0,null,true);
	Fade("video_config01", 0, 1000, null, true);

	//����異���å�
	//XBOX360_LockVideo(false);

	WaitAction("video_config01", null);
}


.//�����x������ե������x��
function ConfigSet()
{
	//������å�
	XBOX360_LockVideo(true);

	$ConfigBarX=160;

	//���軭��������`��
	CreateWindow("����ե���������ɥ�", 20000, 0, 0, 1024, 576, false);
	CreateTexture("����ե���������ɥ�/����", 20000, 0, 0, SCREEN);

	//�����x���ܥ����h����
	//DialogButtonON("Button_CONFIG");

	//��ԣãҌ���
	//LoadingStart();

	if($cfgtab==1&&!$cfgmaketab1){
		//���Щ`����λ��
		//Move("Config9f_bar", 0, 160, 235, null, true);

		//���Щ`���ډ���
		$ConfigMathY=67;
		$ConfigMathY2=207;
		$ConfigMathY3=183;
		$ConfigMathY4=213;
		$ConfigCursor=67;
		$ConfigCursor2=206;
		$CVer=7;

		//�����x��ȫ�她����`�롹
		//CreateScrollbar("�ʥå���", �軭���ȶ�, ��С��������, ��С��������, ��󂎣�����, ��󂎣�����, ���ڂ�, ������`�륿����, "���`����Щ`����`��")
		//CreateScrollbar("Config9f_Scrollbar", 10001, 1130, 214, 1130, 556, 0, VERTICAL, "cg/sys/config/������`��ܥ���.png");
		//SetScrollbar("Config9f_Scrollbar", "Config9f_Scrollbar");
		//CreateTexture("Config9f_Scrollbar", 10001, 1130, 214, "cg/sys/config/������`��ܥ���.png");

		//�����x��һöĿ��
		//CreateTexture("Config1f_ConfigGround", 10000, Center, 60, "cg/sys/config/����ե���.png");

..		//�����x�����ڡ�
		$ConfigExitX=26;
		$ConfigExitY=108;
		CreateChoice("Config1a_EXIT");
		//CreateTexture("Config1f_EXIT", 10010, $ConfigExitX, $ConfigExitY, "cg/sys/config/001-�ˈ�.png");
		CreateTexture("Config1a_EXIT/MouseUsual/hit", 10010, $ConfigExitX, $ConfigExitY, "cg/sys/config/001-�ˈ�.png");
		CreateTexture("Config1a_EXIT/MouseOver/icon", 10010, $ConfigExitX, $ConfigExitY, "cg/sys/config/002-�ˈ�.png");
		CreateTexture("Config1a_EXIT/MouseClick/icon", 10010, $ConfigExitX, $ConfigExitY, "cg/sys/config/003-�ˈ�.png");
		//CreateSound("Config1a_EXIT/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("Config1a_EXIT/MouseClick/sound", SE, $ConfigSound_click);
		$ConfigExitH=ImageHorizon("Config1a_EXIT/MouseUsual/hit");
		$ConfigExitV=ImageVertical("Config1a_EXIT/MouseUsual/hit");

..		//�����x���Щ`��������
		#SYSTEM_version="1.00";
		#SCRIPT_VERSION="1.30";
		SetFont("����", 11, #bb7420, #bb7420, 500, NONE);
		$str="<SPAN value=11>���ǣ��ͣ�ϵͳ�汾��Ϣ��</SPAN><PRE>"+#SYSTEM_version+"</PRE>";
		$str2="<SPAN value=11>���ǣ��ͣŽű��汾��Ϣ��</SPAN><PRE>"+#SCRIPT_VERSION+"</PRE>";
		//$str="<FONT size=10 incolor=#bb7420><PRE>"+#SYSTEM_version+"</PRE></FONT>";
		//$str2="<FONT size=10 incolor=#bb7420><PRE>"+#SCRIPT_VERSION+"</PRE></FONT>";
		CreateText("Config1f_TEXT_SYSTEM", 10010,453,548,auto,auto,$str);
		CreateText("Config1f_TEXT_SCRIPT", 10010,678,548,auto,auto,$str2);
		Request("Config1f_TEXT_*",NoLog);
		Request("Config1f_TEXT_*",PushText);

/*
..		//�����x�����ȥ�`�������
		$ConfigStorageX=1030;
		$ConfigStorageY=1122;
		//$ConfigStorageBar=$ConfigStorageY-7;
		CreateChoice("Config1a_Storage");
		//CreateTexture("Config1f_Storage", 10010, $ConfigStorageX, $ConfigStorageY, "ConfigImageBottan01");
		CreateTexture("Config1a_Storage/MouseUsual/hit", 10010, $ConfigStorageX, $ConfigStorageY, "ConfigImageBottan01");
		CreateTexture("Config1a_Storage/MouseOver/icon", 10010, $ConfigStorageX, $ConfigStorageY, "ConfigImageBottan02");
		CreateTexture("Config1a_Storage/MouseClick/icon", 10010, $ConfigStorageX, $ConfigStorageY, "ConfigImageBottan03");
		//CreateTexture("Config1a_Storage/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//CreateSound("Config1a_Storage/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("Config1a_Storage/MouseClick/sound", SE, $ConfigSound_click);
		//Request("Config1a_Storage/MouseOver/bar", MulRender);
		Request("Config1a_Storage/MouseUsual/hit", Erase);
		$ConfigStorageH=ImageHorizon("Config1a_Storage/MouseUsual/hit");
		$ConfigStorageV=ImageVertical("Config1a_Storage/MouseUsual/hit");
*/

..		//�����x�����ڻ���
		$ConfigDefaultX=899;
		$ConfigDefaultY=197;
		//$ConfigDefaultBar=$ConfigDefaultY-7;
		CreateChoice("Config1a_Default");
		//CreateTexture("Config1f_Default", 10010, $ConfigDefaultX, $ConfigDefaultY, "cg/sys/config/001-���J.png");
		CreateTexture("Config1a_Default/MouseUsual/hit", 10010, $ConfigDefaultX, $ConfigDefaultY, "cg/sys/config/001-���J.png");
		CreateTexture("Config1a_Default/MouseOver/icon", 10010, $ConfigDefaultX, $ConfigDefaultY, "cg/sys/config/002-���J.png");
		CreateTexture("Config1a_Default/MouseClick/icon", 10010, $ConfigDefaultX, $ConfigDefaultY, "cg/sys/config/003-���J.png");
		//CreateTexture("Config1a_Default/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//CreateSound("Config1a_Default/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("Config1a_Default/MouseClick/sound", SE, $ConfigSound_click);
		//Request("Config1a_Default/MouseOver/bar", MulRender);
		Request("Config1a_Default/MouseUsual/hit", Erase);
		$ConfigDefaultH=ImageHorizon("Config1a_Default/MouseUsual/hit");
		$ConfigDefaultV=ImageVertical("Config1a_Default/MouseUsual/hit");

..		//�����x��CR���`�ɡ�
		$ConfigQRcX=101;
		$ConfigQRcY=478;
		//$ConfigQRcBar=$ConfigQRcY-7;
		CreateChoice("Config1a_QRc");
		//CreateTexture("Config1f_QRc", 10010, $ConfigQRcX, $ConfigQRcY, "cg/sys/config/QR�ж�.png");
		CreateTexture("Config1a_QRc/MouseUsual/hit", 10010, $ConfigQRcX, $ConfigQRcY, "cg/sys/config/QR�ж�.png");
		//CreateTexture("Config1a_QRc/MouseOver/icon", 10010, $ConfigQRcX, $ConfigQRcY, "cg/sys/config/QR�ж�.png");
		//CreateTexture("Config1a_QRc/MouseClick/icon", 10010, $ConfigQRcX, $ConfigQRcY, "cg/sys/config/QR�ж�.png");
		//CreateTexture("Config1a_QRc/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//CreateSound("Config1a_QRc/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("Config1a_QRc/MouseClick/sound", SE, $ConfigSound_click);
		//Request("Config1a_QRc/MouseOver/bar", MulRender);
		Request("Config1a_QRc/MouseUsual/hit", Erase);
		$ConfigQRcH=ImageHorizon("Config1a_QRc/MouseUsual/hit");
		$ConfigQRcV=ImageVertical("Config1a_QRc/MouseUsual/hit");

..		//�����x��HP��
		$ConfigComX=112;
		$ConfigComY=551;
		//$ConfigComBar=$ConfigComY-7;
		CreateChoice("Config1a_Com");
		//CreateTexture("Config1f_Com", 10010, $ConfigComX, $ConfigComY, "cg/sys/config/HP�ж�.png");
		CreateTexture("Config1a_Com/MouseUsual/hit", 10010, $ConfigComX, $ConfigComY, "cg/sys/config/HP�ж�.png");
		//CreateTexture("Config1a_Com/MouseOver/icon", 10010, $ConfigComX, $ConfigComY, "cg/sys/config/HP�ж�.png");
		//CreateTexture("Config1a_Com/MouseClick/icon", 10010, $ConfigComX, $ConfigComY, "cg/sys/config/HP�ж�.png");
		//CreateTexture("Config1a_Com/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//CreateSound("Config1a_Com/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("Config1a_Com/MouseClick/sound", SE, $ConfigSound_click);
		//Request("Config1a_Com/MouseOver/bar", MulRender);
		Request("Config1a_Com/MouseUsual/hit", Erase);
		$ConfigComH=ImageHorizon("Config1a_Com/MouseUsual/hit");
		$ConfigComV=ImageVertical("Config1a_Com/MouseUsual/hit");

..		//�����x����`���`���h��
		$ConfigYouX=300;
		$ConfigYouY=551;
		//$ConfigYouBar=$ConfigYouY-7;
		CreateChoice("Config1a_You");
		//CreateTexture("Config1f_You", 10010, $ConfigYouX, $ConfigYouY, "cg/sys/config/001-��`���`���h�ܥ���.png");
		CreateTexture("Config1a_You/MouseUsual/hit", 10010, $ConfigYouX, $ConfigYouY, "cg/sys/config/001-��`���`���h�ܥ���.png");
		CreateTexture("Config1a_You/MouseOver/icon", 10010, $ConfigYouX, $ConfigYouY, "cg/sys/config/002-��`���`���h�ܥ���.png");
		CreateTexture("Config1a_You/MouseClick/icon", 10010, $ConfigYouX, $ConfigYouY, "cg/sys/config/002-��`���`���h�ܥ���.png");
		//CreateTexture("Config1a_You/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//CreateSound("Config1a_You/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("Config1a_You/MouseClick/sound", SE, $ConfigSound_click);
		//Request("Config1a_You/MouseOver/bar", MulRender);
		Request("Config1a_You/MouseUsual/hit", Erase);
		$ConfigYouH=ImageHorizon("Config1a_You/MouseUsual/hit");
		$ConfigYouV=ImageVertical("Config1a_You/MouseUsual/hit");

..		//�����x�������e����
		$ConfigActionX=323;
		$ConfigActionY=151;
		//$ConfigActionBar=$ConfigActionY-7;
		CreateChoice("Config1a_Action");
		//CreateTexture("Config1f_Action", 10010, $ConfigActionX, $ConfigActionY, "cg/sys/config/001-���J.png");
		CreateTexture("Config1a_Action/MouseUsual/hit", 10010, $ConfigActionX, $ConfigActionY, "cg/sys/config/001-�e�����_��.png");
		CreateTexture("Config1a_Action/MouseOver/icon", 10010, $ConfigActionX, $ConfigActionY, "cg/sys/config/002-�e�����_��.png");
		CreateTexture("Config1a_Action/MouseClick/icon", 10010, $ConfigActionX, $ConfigActionY, "cg/sys/config/003-�e�����_��.png");
		//CreateTexture("Config1a_Action/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//CreateSound("Config1a_Action/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("Config1a_Action/MouseClick/sound", SE, $ConfigSound_click);
		//Request("Config1a_Action/MouseOver/bar", MulRender);
		Request("Config1a_Action/MouseUsual/hit", Erase);
		$ConfigActionH=ImageHorizon("Config1a_Action/MouseUsual/hit");
		$ConfigActionV=ImageVertical("Config1a_Action/MouseUsual/hit");

..		//�����x�������ƥ��ȡ�
		$ConfigTestX=287;
		$ConfigTestY=197;
		//$ConfigTestBar=$ConfigTestY-7;
		CreateChoice("Config1a_Test");
		//CreateTexture("Config1f_Test", 10010, $ConfigTestX, $ConfigTestY, "cg/sys/config/001-���J.png");
		CreateTexture("Config1a_Test/MouseUsual/hit", 10010, $ConfigTestX, $ConfigTestY, "cg/sys/config/001-�g�Y.png");
		CreateTexture("Config1a_Test/MouseOver/icon", 10010, $ConfigTestX, $ConfigTestY, "cg/sys/config/002-�g�Y.png");
		CreateTexture("Config1a_Test/MouseClick/icon", 10010, $ConfigTestX, $ConfigTestY, "cg/sys/config/003-�g�Y.png");
		//CreateTexture("Config1a_Test/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//CreateSound("Config1a_Test/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("Config1a_Test/MouseClick/sound", SE, $ConfigSound_click);
		//Request("Config1a_Test/MouseOver/bar", MulRender);
		Request("Config1a_Test/MouseUsual/hit", Erase);
		$ConfigTestH=ImageHorizon("Config1a_Test/MouseUsual/hit");
		$ConfigTestV=ImageVertical("Config1a_Test/MouseUsual/hit");

		CreateSound("Config1a_TEST01", VOICE, "voice/ma01/0250430b56");

..		//�����x�����`�ॹ�ԩ`�ɡ�
		$ConfigPSpeedX=862;
		$ConfigPSpeedY=$ConfigMathY;//�̶�
		$ConfigPSpeedX2=862;
		$ConfigPSpeedY2=$ConfigMathY2;//�̶�
		$ConfigPSpeedBaseY=$ConfigMathY;//�̶�
		$ConfigPSpeedBaseY2=$ConfigMathY2;//�̶�
		//$ConfigPSpeedBar=$ConfigPSpeedY-6;
		$pos=1000*(1-(#play_speed_plus/12));

		CreateScrollbar("Config1a_PSpeed",10050,$ConfigPSpeedX,$ConfigPSpeedY,$ConfigPSpeedX2,$ConfigPSpeedY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config1a_PSpeed", Erase);
		SetScrollSpeed("Config1a_PSpeed", $ConfigScrollSpeed);
			//���������󥢥˥�`�����ε������ж�
			CreateChoice("Config1a_PSpeed_Pro01");
			SetAlias("Config1a_PSpeed_Pro01", "Config1a_PSpeed_Pro01");
			CreateTexture("@Config1a_PSpeed_Pro01/MouseUsual/hit",0,$ConfigPSpeedX,$ConfigPSpeedY,"ConfigImageLine");
			CreateProcess("@Config1a_PSpeed_Pro01/MouseOver/button", 10010, 0, 0, "ConfigPSpeedProcessOPEN");
			CreateProcess("@Config1a_PSpeed_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigPSpeedProcessSTOP");
			//CreateTexture("@Config1a_PSpeed_Pro01/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
			//CreateSound("@Config1a_PSpeed_Pro01/MouseOver/sound", SE, $ConfigSound_over);
			//CreateSound("@Config1a_PSpeed_Pro01_sound", SE, $ConfigSound_click);
			//Request("@Config1a_PSpeed_Pro01/MouseOver/bar", MulRender);
			Request("@Config1a_PSpeed_Pro01/MouseUsual/hit", Erase);
			//�����`���붨�x
			$ConfigPSpeedX3=$ConfigPSpeedX;
			$ConfigPSpeedY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigPSpeedY=$ConfigPSpeedY3;
			CreateTexture("Config1f_PSpeed01", 10010, $ConfigPSpeedX3, $ConfigPSpeedY3, "ConfigImagePen01");
			SetAlias("Config1f_PSpeed01", "Config1f_PSpeed01");
			CreateTexture("Config1a_PSpeed02", 10010, $ConfigPSpeedX3, $ConfigPSpeedY3, "ConfigImagePen02");
			SetAlias("Config1a_PSpeed02", "Config1a_PSpeed02");
		//����
		$ConfigPSpeedH=ImageHorizon("Config1a_PSpeed");
		$ConfigPSpeedV=ImageVertical("Config1a_PSpeed");

..		//�����x����å��`�����ԩ`�ɡ�
		$ConfigMSpeedX=754;
		$ConfigMSpeedY=$ConfigMathY;//�̶�
		$ConfigMSpeedX2=754;
		$ConfigMSpeedY2=$ConfigMathY2;//�̶�
		$ConfigMSpeedBaseY=$ConfigMathY;//�̶�
		$ConfigMSpeedBaseY2=$ConfigMathY2;//�̶�
		//$ConfigMSpeedBar=$ConfigMSpeedY-6;
		$pos=1000*(#SYSTEM_text_speed/1000)+$CVer;

		CreateScrollbar("Config1a_MSpeed",10050,$ConfigMSpeedX,$ConfigMSpeedY,$ConfigMSpeedX2,$ConfigMSpeedY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config1a_MSpeed", Erase);
		SetScrollSpeed("Config1a_MSpeed", $ConfigScrollSpeed);
			//���������󥢥˥�`�����ε������ж�
			CreateChoice("Config1a_MSpeed_Pro01");
			SetAlias("Config1a_MSpeed_Pro01", "Config1a_MSpeed_Pro01");
			CreateTexture("@Config1a_MSpeed_Pro01/MouseUsual/hit",0,$ConfigMSpeedX,$ConfigMSpeedY,"ConfigImageLine");
			CreateProcess("@Config1a_MSpeed_Pro01/MouseOver/button", 10010, 0, 0, "ConfigMSpeedProcessOPEN");
			CreateProcess("@Config1a_MSpeed_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigMSpeedProcessSTOP");
			//CreateTexture("@Config1a_MSpeed_Pro01/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
			//CreateSound("@Config1a_MSpeed_Pro01/MouseOver/sound", SE, $ConfigSound_over);
			//CreateSound("@Config1a_MSpeed_Pro01_sound", SE, $ConfigSound_click);
			//Request("@Config1a_MSpeed_Pro01/MouseOver/bar", MulRender);
			Request("@Config1a_MSpeed_Pro01/MouseUsual/hit", Erase);
			//�����`���붨�x
			$ConfigMSpeedX3=$ConfigMSpeedX;
			$ConfigMSpeedY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigMSpeedY=$ConfigMSpeedY3;
			CreateTexture("Config1f_MSpeed01", 10010, $ConfigMSpeedX3, $ConfigMSpeedY3, "ConfigImagePen01");
			SetAlias("Config1f_MSpeed01", "Config1f_MSpeed01");
			CreateTexture("Config1a_MSpeed02", 10010, $ConfigMSpeedX3, $ConfigMSpeedY3, "ConfigImagePen02");
			SetAlias("Config1a_MSpeed02", "Config1a_MSpeed02");
		//����
		$ConfigMSpeedH=ImageHorizon("Config1a_MSpeed");
		$ConfigMSpeedV=ImageVertical("Config1a_MSpeed");

/*
..		//�����x��������ɥ�͸�^�ȡ�
		$ConfigMTransX=862;
		$ConfigMTransY=$ConfigMathY;//�̶�
		$ConfigMTransX2=862;
		$ConfigMTransY2=$ConfigMathY2;//�̶�
		$ConfigMTransBaseY=$ConfigMathY;//�̶�
		$ConfigMTransBaseY2=$ConfigMathY2;//�̶�
		//$ConfigMTransBar=$ConfigMTransY-6;
		$pos=1000*(#LOCAL_window_fade/1000)+$CVer;

		CreateScrollbar("Config1a_MTrans",10050,$ConfigMTransX,$ConfigMTransY,$ConfigMTransX2,$ConfigMTransY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config1a_MTrans", Erase);
		SetScrollSpeed("Config1a_MTrans", $ConfigScrollSpeed);
			//���������󥢥˥�`�����ε������ж�
			CreateChoice("Config1a_MTrans_Pro01");
			SetAlias("Config1a_MTrans_Pro01", "Config1a_MTrans_Pro01");
			CreateTexture("@Config1a_MTrans_Pro01/MouseUsual/hit",0,$ConfigMTransX,$ConfigMTransY,"ConfigImageLine");
			CreateProcess("@Config1a_MTrans_Pro01/MouseOver/button", 10010, 0, 0, "ConfigMTransProcessOPEN");
			CreateProcess("@Config1a_MTrans_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigMTransProcessSTOP");
			//CreateTexture("@Config1a_MTrans_Pro01/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
			//CreateSound("@Config1a_MTrans_Pro01/MouseOver/sound", SE, $ConfigSound_over);
			//CreateSound("@Config1a_MTrans_Pro01_sound", SE, $ConfigSound_click);
			//Request("@Config1a_MTrans_Pro01/MouseOver/bar", MulRender);
			Request("@Config1a_MTrans_Pro01/MouseUsual/hit", Erase);
			//�����`���붨�x
			$ConfigMTransX3=873;
			$ConfigMTransY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigMTransY=$ConfigMTransY3;
			CreateTexture("Config1f_MTrans01", 10010, $ConfigMTransX3, $ConfigMTransY3, "ConfigImagePen01");
			SetAlias("Config1f_MTrans01", "Config1f_MTrans01");
			CreateTexture("Config1a_MTrans02", 10010, $ConfigMTransX3, $ConfigMTransY3, "ConfigImagePen02");
			SetAlias("Config1a_MTrans02", "Config1a_MTrans02");
		//����
		$ConfigMTransH=ImageHorizon("Config1a_MTrans");
		$ConfigMTransV=ImageVertical("Config1a_MTrans");
*/

..		//�����x���Ԅ������ͤꥹ�ԩ`�ɡ�
		$ConfigASpeedX=610;
		$ConfigASpeedY=$ConfigMathY;//�̶�
		$ConfigASpeedX2=610;
		$ConfigASpeedY2=$ConfigMathY2;//�̶�
		$ConfigASpeedBaseY=$ConfigMathY;//�̶�
		$ConfigASpeedBaseY2=$ConfigMathY2;//�̶�
		//$ConfigASpeedBar=$ConfigASpeedY-6;
		$pos=1000*(#SYSTEM_auto_wait_per_character/200)+$CVer;

		CreateScrollbar("Config1a_ASpeed",10050,$ConfigASpeedX,$ConfigASpeedY,$ConfigASpeedX2,$ConfigASpeedY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config1a_ASpeed", Erase);
		SetScrollSpeed("Config1a_ASpeed", $ConfigScrollSpeed);
			//���������󥢥˥�`�����ε������ж�
			CreateChoice("Config1a_ASpeed_Pro01");
			SetAlias("Config1a_ASpeed_Pro01", "Config1a_ASpeed_Pro01");
			CreateTexture("@Config1a_ASpeed_Pro01/MouseUsual/hit",0,$ConfigASpeedX,$ConfigASpeedY,"ConfigImageLine");
			CreateProcess("@Config1a_ASpeed_Pro01/MouseOver/button", 10010, 0, 0, "ConfigASpeedProcessOPEN");
			CreateProcess("@Config1a_ASpeed_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigASpeedProcessSTOP");
			//CreateTexture("@Config1a_ASpeed_Pro01/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
			//CreateSound("@Config1a_ASpeed_Pro01/MouseOver/sound", SE, $ConfigSound_over);
			//CreateSound("@Config1a_ASpeed_Pro01_sound", SE, $ConfigSound_click);
			//Request("@Config1a_ASpeed_Pro01/MouseOver/bar", MulRender);
			Request("@Config1a_ASpeed_Pro01/MouseUsual/hit", Erase);
			//�����`���붨�x
			$ConfigASpeedX3=$ConfigASpeedX;
			$ConfigASpeedY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigASpeedY=$ConfigASpeedY3;
			CreateTexture("Config1f_ASpeed01", 10010, $ConfigASpeedX3, $ConfigASpeedY3, "ConfigImagePen01");
			SetAlias("Config1f_ASpeed01", "Config1f_ASpeed01");
			CreateTexture("Config1a_ASpeed02", 10010, $ConfigASpeedX3, $ConfigASpeedY3, "ConfigImagePen02");
			SetAlias("Config1a_ASpeed02", "Config1a_ASpeed02");
		//����
		$ConfigASpeedH=ImageHorizon("Config1a_ASpeed");
		$ConfigASpeedV=ImageVertical("Config1a_ASpeed");

..		//�����x���£ǣͥܥ��`�ࡹ
		$ConfigBVolumeX=502;
		$ConfigBVolumeY=$ConfigMathY;//�̶�
		$ConfigBVolumeX2=502;
		$ConfigBVolumeY2=$ConfigMathY2;//�̶�
		$ConfigBVolumeBaseY=$ConfigMathY;//�̶�
		$ConfigBVolumeBaseY2=$ConfigMathY2;//�̶�
		//$ConfigBVolumeBar=$ConfigBVolumeY-6;
		$pos=1000*(1-(#SYSTEM_sound_volume_bgm/1000))+$CVer;

		CreateScrollbar("Config1a_BVolume",10050,$ConfigBVolumeX,$ConfigBVolumeY,$ConfigBVolumeX2,$ConfigBVolumeY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config1a_BVolume", Erase);
		SetScrollSpeed("Config1a_BVolume", $ConfigScrollSpeed);
			//���������󥢥˥�`�����ε������ж�
			CreateChoice("Config1a_BVolume_Pro01");
			SetAlias("Config1a_BVolume_Pro01", "Config1a_BVolume_Pro01");
			CreateTexture("@Config1a_BVolume_Pro01/MouseUsual/hit",0,$ConfigBVolumeX,$ConfigBVolumeY,"ConfigImageLine");
			CreateProcess("@Config1a_BVolume_Pro01/MouseOver/button", 10010, 0, 0, "ConfigBVolumeProcessOPEN");
			CreateProcess("@Config1a_BVolume_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigBVolumeProcessSTOP");
			//CreateTexture("@Config1a_BVolume_Pro01/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
			//CreateSound("@Config1a_BVolume_Pro01/MouseOver/sound", SE, $ConfigSound_over);
			//CreateSound("@Config1a_BVolume_Pro01_sound", SE, $ConfigSound_click);
			//Request("@Config1a_BVolume_Pro01/MouseOver/bar", MulRender);
			Request("@Config1a_BVolume_Pro01/MouseUsual/hit", Erase);
			//�����`���붨�x
			$ConfigBVolumeX3=$ConfigBVolumeX;
			$ConfigBVolumeY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigBVolumeY=$ConfigBVolumeY3;
			CreateTexture("Config1f_BVolume01", 10010, $ConfigBVolumeX3, $ConfigBVolumeY3, "ConfigImagePen01");
			SetAlias("Config1f_BVolume01", "Config1f_BVolume01");
			CreateTexture("Config1a_BVolume02", 10010, $ConfigBVolumeX3, $ConfigBVolumeY3, "ConfigImagePen02");
			SetAlias("Config1a_BVolume02", "Config1a_BVolume02");
		//����
		$ConfigBVolumeH=ImageHorizon("Config1a_BVolume");
		$ConfigBVolumeV=ImageVertical("Config1a_BVolume");

..		//�����x���ӣťܥ��`�ࡹ
		$ConfigSVolumeX=430;
		$ConfigSVolumeY=$ConfigMathY;//�̶�
		$ConfigSVolumeX2=430;
		$ConfigSVolumeY2=$ConfigMathY2;//�̶�
		$ConfigSVolumeBaseY=$ConfigMathY;//�̶�
		$ConfigSVolumeBaseY2=$ConfigMathY2;//�̶�
		//$ConfigSVolumeBar=$ConfigSVolumeY-6;
		$pos=1000*(1-(#SYSTEM_sound_volume_se/1000))+$CVer;

		CreateScrollbar("Config1a_SVolume",10050,$ConfigSVolumeX,$ConfigSVolumeY,$ConfigSVolumeX2,$ConfigSVolumeY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config1a_SVolume", Erase);
		SetScrollSpeed("Config1a_SVolume", $ConfigScrollSpeed);
			//���������󥢥˥�`�����ε������ж�
			CreateChoice("Config1a_SVolume_Pro01");
			SetAlias("Config1a_SVolume_Pro01", "Config1a_SVolume_Pro01");
			CreateTexture("@Config1a_SVolume_Pro01/MouseUsual/hit",0,$ConfigSVolumeX,$ConfigSVolumeY,"ConfigImageLine");
			CreateProcess("@Config1a_SVolume_Pro01/MouseOver/button", 10010, 0, 0, "ConfigSVolumeProcessOPEN");
			CreateProcess("@Config1a_SVolume_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigSVolumeProcessSTOP");
			//CreateTexture("@Config1a_SVolume_Pro01/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
			//CreateSound("@Config1a_SVolume_Pro01/MouseOver/sound", SE, $ConfigSound_over);
			//CreateSound("@Config1a_SVolume_Pro01_sound", SE, $ConfigSound_click);
			//Request("@Config1a_SVolume_Pro01/MouseOver/bar", MulRender);
			Request("@Config1a_SVolume_Pro01/MouseUsual/hit", Erase);
			//�����`���붨�x
			$ConfigSVolumeX3=$ConfigSVolumeX;
			$ConfigSVolumeY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigSVolumeY=$ConfigSVolumeY3;
			CreateTexture("Config1f_SVolume01", 10010, $ConfigSVolumeX3, $ConfigSVolumeY3, "ConfigImagePen01");
			SetAlias("Config1f_SVolume01", "Config1f_SVolume01");
			CreateTexture("Config1a_SVolume02", 10010, $ConfigSVolumeX3, $ConfigSVolumeY3, "ConfigImagePen02");
			SetAlias("Config1a_SVolume02", "Config1a_SVolume02");
		//����
		$ConfigSVolumeH=ImageHorizon("Config1a_SVolume");
		$ConfigSVolumeV=ImageVertical("Config1a_SVolume");

..		//�����x�������ܥ��`�ࡹ
		$ConfigVVolumeX=358;
		$ConfigVVolumeY=$ConfigMathY;//�̶�
		$ConfigVVolumeX2=358;
		$ConfigVVolumeY2=$ConfigMathY2;//�̶�
		$ConfigVVolumeBaseY=$ConfigMathY;//�̶�
		$ConfigVVolumeBaseY2=$ConfigMathY2;//�̶�
		//$ConfigVVolumeBar=$ConfigVVolumeY-6;
		$pos=1000*(1-(#SYSTEM_sound_volume_voice/1000))+$CVer;

		CreateScrollbar("Config1a_VVolume",10050,$ConfigVVolumeX,$ConfigVVolumeY,$ConfigVVolumeX2,$ConfigVVolumeY2,$pos,VERTICAL,"ConfigImagePen00");
		Request("Config1a_VVolume", Erase);
		SetScrollSpeed("Config1a_VVolume", $ConfigScrollSpeed);
			//���������󥢥˥�`�����ε������ж�
			CreateChoice("Config1a_VVolume_Pro01");
			SetAlias("Config1a_VVolume_Pro01", "Config1a_VVolume_Pro01");
			CreateTexture("@Config1a_VVolume_Pro01/MouseUsual/hit",0,$ConfigVVolumeX,$ConfigVVolumeY,"ConfigImageLine");
			CreateProcess("@Config1a_VVolume_Pro01/MouseOver/button", 10010, 0, 0, "ConfigVVolumeProcessOPEN");
			CreateProcess("@Config1a_VVolume_Pro01/MouseLeave/button", 10010, 0, 0, "ConfigVVolumeProcessSTOP");
			//CreateTexture("@Config1a_VVolume_Pro01/MouseOver/bar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
			//CreateSound("@Config1a_VVolume_Pro01/MouseOver/sound", SE, $ConfigSound_over);
			//CreateSound("@Config1a_VVolume_Pro01_sound", SE, $ConfigSound_click);
			//Request("@Config1a_VVolume_Pro01/MouseOver/bar", MulRender);
			Request("@Config1a_VVolume_Pro01/MouseUsual/hit", Erase);
			//�����`���붨�x
			$ConfigVVolumeX3=$ConfigVVolumeX;
			$ConfigVVolumeY3=($pos/1000)*($ConfigCursor2-$ConfigCursor)+($ConfigCursor);
			$PreConfigVVolumeY=$ConfigVVolumeY3;
			CreateTexture("Config1f_VVolume01", 10010, $ConfigVVolumeX3, $ConfigVVolumeY3, "ConfigImagePen01");
			SetAlias("Config1f_VVolume01", "Config1f_VVolume01");
			CreateTexture("Config1a_VVolume02", 10010, $ConfigVVolumeX3, $ConfigVVolumeY3, "ConfigImagePen02");
			SetAlias("Config1a_VVolume02", "Config1a_VVolume02");
		//����
		$ConfigVVolumeH=ImageHorizon("Config1a_VVolume");
		$ConfigVVolumeV=ImageVertical("Config1a_VVolume");



..		//�����x���_�J��å��`����
		$ConfigCConfirmX=827;
		$ConfigCConfirmY=$ConfigMathY3;//�̶�
		$ConfigCConfirmX2=827;
		$ConfigCConfirmY2=$ConfigMathY4;//�̶�
		//$ConfigCConfirmOnBar=$ConfigCConfirmY-2;
		//$ConfigCConfirmOffBar=$ConfigCConfirmY-2;
		CreateChoice("Config1a_CConfirmON");
		SetAlias("Config1a_CConfirmON", "Config1a_CConfirmON");
//		CreateTexture("Config1f_CConfirmON01", 10010, $ConfigCConfirmX, $ConfigCConfirmY, "ConfigImageCheck01");
		CreateTexture("Config1a_CConfirmON02", 10100, $ConfigCConfirmX, $ConfigCConfirmY, "ConfigImageCheck03a");
		CreateTexture("@Config1a_CConfirmON/MouseUsual/hit", 10010, $ConfigCConfirmX, $ConfigCConfirmY, "ConfigImageCheck01");
		CreateTexture("@Config1a_CConfirmON/MouseOver/icon", 10010, $ConfigCConfirmX, $ConfigCConfirmY, "ConfigImageCheck02a");
		CreateTexture("@Config1a_CConfirmON/MouseClick/icon", 10010, $ConfigCConfirmX, $ConfigCConfirmY, "ConfigImageCheck02a");
		//CreateProcess("@Config1a_CConfirmON/MouseOver/button", 10010, 0, 0, "ConfigCConfirmONProcessOPEN");
		//CreateProcess("@Config1a_CConfirmON/MouseLeave/button", 10010, 0, 0, "ConfigCConfirmONProcessSTOP");
		//CreateSound("@Config1a_CConfirmON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_CConfirmON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_CConfirmON/MouseUsual/hit", Erase);
			$ConfigCConfirmOnH=ImageHorizon("Config1a_CConfirmON/MouseUsual/hit");
			$ConfigCConfirmOnV=ImageVertical("Config1a_CConfirmON/MouseUsual/hit");
		CreateChoice("Config1a_CConfirmOFF");
		SetAlias("Config1a_CConfirmOFF", "Config1a_CConfirmOFF");
//		CreateTexture("Config1f_CConfirmOFF01", 10010, $ConfigCConfirmX2, $ConfigCConfirmY2, "ConfigImageCheck01");
		CreateTexture("Config1a_CConfirmOFF02", 10100, $ConfigCConfirmX2, $ConfigCConfirmY2, "ConfigImageCheck03b");
		CreateTexture("@Config1a_CConfirmOFF/MouseUsual/hit", 10010, $ConfigCConfirmX2, $ConfigCConfirmY2, "ConfigImageCheck01");
		CreateTexture("@Config1a_CConfirmOFF/MouseOver/icon", 10010, $ConfigCConfirmX2, $ConfigCConfirmY2, "ConfigImageCheck02b");
		CreateTexture("@Config1a_CConfirmOFF/MouseClick/icon", 10010, $ConfigCConfirmX2, $ConfigCConfirmY2, "ConfigImageCheck02b");
		//CreateProcess("@Config1a_CConfirmOFF/MouseOver/button", 10010, 0, 0, "ConfigCConfirmOFFProcessOPEN");
		//CreateProcess("@Config1a_CConfirmOFF/MouseLeave/button", 10010, 0, 0, "ConfigCConfirmOFFProcessSTOP");
		//CreateSound("@Config1a_CConfirmOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_CConfirmOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_CConfirmOFF/MouseUsual/hit", Erase);
			$ConfigCConfirmOffH=ImageHorizon("Config1a_CConfirmOFF/MouseUsual/hit");
			$ConfigCConfirmOffV=ImageVertical("Config1a_CConfirmOFF/MouseUsual/hit");
		//CreateTexture("Config1a_CConfirmBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_CConfirmBar", "Config1a_CConfirmBar");
			//Request("Config1a_CConfirmBar", MulRender);

..		//�����x���ӻ����жϤȥ����åפοɷ�
		$ConfigMStopX=791;
		$ConfigMStopY=$ConfigMathY3;//�̶�
		$ConfigMStopX2=791;
		$ConfigMStopY2=$ConfigMathY4;//�̶�
		//$ConfigMStopOnBar=$ConfigMStopY-2;
		//$ConfigMStopOffBar=$ConfigMStopY-2;
		CreateChoice("Config1a_MStopON");
		SetAlias("Config1a_MStopON", "Config1a_MStopON");
//		CreateTexture("Config1f_MStopON01", 10010, $ConfigMStopX, $ConfigMStopY, "ConfigImageCheck01");
		CreateTexture("Config1a_MStopON02", 10100, $ConfigMStopX, $ConfigMStopY, "ConfigImageCheck03a");
		CreateTexture("@Config1a_MStopON/MouseUsual/hit", 10010, $ConfigMStopX, $ConfigMStopY, "ConfigImageCheck01");
		CreateTexture("@Config1a_MStopON/MouseOver/icon", 10010, $ConfigMStopX, $ConfigMStopY, "ConfigImageCheck02a");
		CreateTexture("@Config1a_MStopON/MouseClick/icon", 10010, $ConfigMStopX, $ConfigMStopY, "ConfigImageCheck02a");
		//CreateProcess("@Config1a_MStopON/MouseOver/button", 10010, 0, 0, "ConfigMStopONProcessOPEN");
		//CreateProcess("@Config1a_MStopON/MouseLeave/button", 10010, 0, 0, "ConfigMStopONProcessSTOP");
		//CreateSound("@Config1a_MStopON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_MStopON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_MStopON/MouseUsual/hit", Erase);
			$ConfigMStopOnH=ImageHorizon("Config1a_MStopON/MouseUsual/hit");
			$ConfigMStopOnV=ImageVertical("Config1a_MStopON/MouseUsual/hit");
		CreateChoice("Config1a_MStopOFF");
		SetAlias("Config1a_MStopOFF", "Config1a_MStopOFF");
//		CreateTexture("Config1f_MStopOFF01", 10010, $ConfigMStopX2, $ConfigMStopY2, "ConfigImageCheck01");
		CreateTexture("Config1a_MStopOFF02", 10100, $ConfigMStopX2, $ConfigMStopY2, "ConfigImageCheck03b");
		CreateTexture("@Config1a_MStopOFF/MouseUsual/hit", 10010, $ConfigMStopX2, $ConfigMStopY2, "ConfigImageCheck01");
		CreateTexture("@Config1a_MStopOFF/MouseOver/icon", 10010, $ConfigMStopX2, $ConfigMStopY2, "ConfigImageCheck02b");
		CreateTexture("@Config1a_MStopOFF/MouseClick/icon", 10010, $ConfigMStopX2, $ConfigMStopY2, "ConfigImageCheck02b");
		//CreateProcess("@Config1a_MStopOFF/MouseOver/button", 10010, 0, 0, "ConfigMStopOFFProcessOPEN");
		//CreateProcess("@Config1a_MStopOFF/MouseLeave/button", 10010, 0, 0, "ConfigMStopOFFProcessSTOP");
		//CreateSound("@Config1a_MStopOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_MStopOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_MStopOFF/MouseUsual/hit", Erase);
			$ConfigMStopOffH=ImageHorizon("Config1a_MStopOFF/MouseUsual/hit");
			$ConfigMStopOffV=ImageVertical("Config1a_MStopOFF/MouseUsual/hit");
		//CreateTexture("Config1a_MStopBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_MStopBar", "Config1a_MStopBar");
			//Request("Config1a_MStopBar", MulRender);

..		//�����x���x�k֫����Ԅ������ͤ꣦�����åפ�����
		$ConfigCSkipX=719;
		$ConfigCSkipY=$ConfigMathY3;//�̶�
		$ConfigCSkipX2=719;
		$ConfigCSkipY2=$ConfigMathY4;//�̶�
		//$ConfigCSkipOnBar=$ConfigCSkipY-2;
		//$ConfigCSkipOffBar=$ConfigCSkipY-2;
		CreateChoice("Config1a_CSkipON");
		SetAlias("Config1a_CSkipON", "Config1a_CSkipON");
//		CreateTexture("Config1f_CSkipON01", 10010, $ConfigCSkipX, $ConfigCSkipY, "ConfigImageCheck01");
		CreateTexture("Config1a_CSkipON02", 10100, $ConfigCSkipX, $ConfigCSkipY, "ConfigImageCheck03a");
		CreateTexture("@Config1a_CSkipON/MouseUsual/hit", 10010, $ConfigCSkipX, $ConfigCSkipY, "ConfigImageCheck01");
		CreateTexture("@Config1a_CSkipON/MouseOver/icon", 10010, $ConfigCSkipX, $ConfigCSkipY, "ConfigImageCheck02a");
		CreateTexture("@Config1a_CSkipON/MouseClick/icon", 10010, $ConfigCSkipX, $ConfigCSkipY, "ConfigImageCheck02a");
		//CreateProcess("@Config1a_CSkipON/MouseOver/button", 10010, 0, 0, "ConfigCSkipONProcessOPEN");
		//CreateProcess("@Config1a_CSkipON/MouseLeave/button", 10010, 0, 0, "ConfigCSkipONProcessSTOP");
		//CreateSound("@Config1a_CSkipON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_CSkipON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_CSkipON/MouseUsual/hit", Erase);
			$ConfigCSkipOnH=ImageHorizon("Config1a_CSkipON/MouseUsual/hit");
			$ConfigCSkipOnV=ImageVertical("Config1a_CSkipON/MouseUsual/hit");
		CreateChoice("Config1a_CSkipOFF");
		SetAlias("Config1a_CSkipOFF", "Config1a_CSkipOFF");
//		CreateTexture("Config1f_CSkipOFF01", 10010, $ConfigCSkipX2, $ConfigCSkipY2, "ConfigImageCheck01");
		CreateTexture("Config1a_CSkipOFF02", 10100, $ConfigCSkipX2, $ConfigCSkipY2, "ConfigImageCheck03b");
		CreateTexture("@Config1a_CSkipOFF/MouseUsual/hit", 10010, $ConfigCSkipX2, $ConfigCSkipY2, "ConfigImageCheck01");
		CreateTexture("@Config1a_CSkipOFF/MouseOver/icon", 10010, $ConfigCSkipX2, $ConfigCSkipY2, "ConfigImageCheck02b");
		CreateTexture("@Config1a_CSkipOFF/MouseClick/icon", 10010, $ConfigCSkipX2, $ConfigCSkipY2, "ConfigImageCheck02b");
		//CreateProcess("@Config1a_CSkipOFF/MouseOver/button", 10010, 0, 0, "ConfigCSkipOFFProcessOPEN");
		//CreateProcess("@Config1a_CSkipOFF/MouseLeave/button", 10010, 0, 0, "ConfigCSkipOFFProcessSTOP");
		//CreateSound("@Config1a_CSkipOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_CSkipOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_CSkipOFF/MouseUsual/hit", Erase);
			$ConfigCSkipOffH=ImageHorizon("Config1a_CSkipOFF/MouseUsual/hit");
			$ConfigCSkipOffV=ImageVertical("Config1a_CSkipOFF/MouseUsual/hit");
		//CreateTexture("Config1a_CSkipBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_CSkipBar", "Config1a_CSkipBar");
			//Request("Config1a_CSkipBar", MulRender);

..		//�����x��δ�i�r�Ǥ⥹���åפ��룿��
		$ConfigASkipX=683;
		$ConfigASkipY=$ConfigMathY3;//�̶�
		$ConfigASkipX2=683;
		$ConfigASkipY2=$ConfigMathY4;//�̶�
		//$ConfigASkipOnBar=$ConfigASkipY-2;
		//$ConfigASkipOffBar=$ConfigASkipY-2;
		CreateChoice("Config1a_ASkipON");
		SetAlias("Config1a_ASkipON", "Config1a_ASkipON");
//		CreateTexture("Config1f_ASkipON01", 10010, $ConfigASkipX, $ConfigASkipY, "ConfigImageCheck01");
		CreateTexture("Config1a_ASkipON02", 10100, $ConfigASkipX, $ConfigASkipY, "ConfigImageCheck03a");
		CreateTexture("@Config1a_ASkipON/MouseUsual/hit", 10010, $ConfigASkipX, $ConfigASkipY, "ConfigImageCheck01");
		CreateTexture("@Config1a_ASkipON/MouseOver/icon", 10010, $ConfigASkipX, $ConfigASkipY, "ConfigImageCheck02a");
		CreateTexture("@Config1a_ASkipON/MouseClick/icon", 10010, $ConfigASkipX, $ConfigASkipY, "ConfigImageCheck02a");
		CreateProcess("@Config1a_ASkipON/MouseOver/button", 10010, 0, 0, "ConfigASkipONProcessOPEN");
		CreateProcess("@Config1a_ASkipON/MouseLeave/button", 10010, 0, 0, "ConfigASkipONProcessSTOP");
		//CreateSound("@Config1a_ASkipON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_ASkipON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_ASkipON/MouseUsual/hit", Erase);
			$ConfigASkipOnH=ImageHorizon("Config1a_ASkipON/MouseUsual/hit");
			$ConfigASkipOnV=ImageVertical("Config1a_ASkipON/MouseUsual/hit");
		CreateChoice("Config1a_ASkipOFF");
		SetAlias("Config1a_ASkipOFF", "Config1a_ASkipOFF");
//		CreateTexture("Config1f_ASkipOFF01", 10010, $ConfigASkipX2, $ConfigASkipY2, "ConfigImageCheck01");
		CreateTexture("Config1a_ASkipOFF02", 10100, $ConfigASkipX2, $ConfigASkipY2, "ConfigImageCheck03b");
		CreateTexture("@Config1a_ASkipOFF/MouseUsual/hit", 10010, $ConfigASkipX2, $ConfigASkipY2, "ConfigImageCheck01");
		CreateTexture("@Config1a_ASkipOFF/MouseOver/icon", 10010, $ConfigASkipX2, $ConfigASkipY2, "ConfigImageCheck02b");
		CreateTexture("@Config1a_ASkipOFF/MouseClick/icon", 10010, $ConfigASkipX2, $ConfigASkipY2, "ConfigImageCheck02b");
		//CreateProcess("@Config1a_ASkipOFF/MouseOver/button", 10010, 0, 0, "ConfigASkipOFFProcessOPEN");
		//CreateProcess("@Config1a_ASkipOFF/MouseLeave/button", 10010, 0, 0, "ConfigASkipOFFProcessSTOP");
		//CreateSound("@Config1a_ASkipOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_ASkipOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_ASkipOFF/MouseUsual/hit", Erase);
			$ConfigASkipOffH=ImageHorizon("Config1a_ASkipOFF/MouseUsual/hit");
			$ConfigASkipOffV=ImageVertical("Config1a_ASkipOFF/MouseUsual/hit");
		//CreateTexture("Config1a_ASkipBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_ASkipBar", "Config1a_ASkipBar");
			//Request("Config1a_ASkipBar", MulRender);

..		//�����x�������ͤ�r�������O����
		$ConfigKVoiceX=647;
		$ConfigKVoiceY=63;
		$ConfigKVoiceX2=647;
		$ConfigKVoiceY2=133;
		//$ConfigKVoiceOnBar=$ConfigKVoiceY-2;
		//$ConfigKVoiceOffBar=$ConfigKVoiceY-2;
		CreateChoice("Config1a_KVoiceON");
		SetAlias("Config1a_KVoiceON", "Config1a_KVoiceON");
//		CreateTexture("Config1f_KVoiceON01", 10010, $ConfigKVoiceX, $ConfigKVoiceY, "cg/sys/config/001-ȫ�Ƥ�����.png");
		CreateTexture("Config1a_KVoiceON02", 10100, $ConfigKVoiceX, $ConfigKVoiceY, "cg/sys/config/003-ȫ�Ƥ�����.png");
		CreateTexture("@Config1a_KVoiceON/MouseUsual/hit", 10010, $ConfigKVoiceX, $ConfigKVoiceY, "cg/sys/config/001-ȫ�Ƥ�����.png");
		CreateTexture("@Config1a_KVoiceON/MouseOver/icon", 10010, $ConfigKVoiceX, $ConfigKVoiceY, "cg/sys/config/002-ȫ�Ƥ�����.png");
		CreateTexture("@Config1a_KVoiceON/MouseClick/icon", 10010, $ConfigKVoiceX, $ConfigKVoiceY, "cg/sys/config/002-ȫ�Ƥ�����.png");
		//CreateProcess("@Config1a_KVoiceON/MouseOver/button", 10010, 0, 0, "ConfigKVoiceONProcessOPEN");
		//CreateProcess("@Config1a_KVoiceON/MouseLeave/button", 10010, 0, 0, "ConfigKVoiceONProcessSTOP");
		//CreateSound("@Config1a_KVoiceON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_KVoiceON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_KVoiceON/MouseUsual/hit", Erase);
			$ConfigKVoiceOnH=ImageHorizon("Config1a_KVoiceON/MouseUsual/hit");
			$ConfigKVoiceOnV=ImageVertical("Config1a_KVoiceON/MouseUsual/hit");
		CreateChoice("Config1a_KVoiceOFF");
		SetAlias("Config1a_KVoiceOFF", "Config1a_KVoiceOFF");
//		CreateTexture("Config1f_KVoiceOFF01", 10010, $ConfigKVoiceX2, $ConfigKVoiceY2, "cg/sys/config/001-����å���ֹͣ.png");
		CreateTexture("Config1a_KVoiceOFF02", 10100, $ConfigKVoiceX2, $ConfigKVoiceY2, "cg/sys/config/003-����å���ֹͣ.png");
		CreateTexture("@Config1a_KVoiceOFF/MouseUsual/hit", 10010, $ConfigKVoiceX2, $ConfigKVoiceY2, "cg/sys/config/001-����å���ֹͣ.png");
		CreateTexture("@Config1a_KVoiceOFF/MouseOver/icon", 10010, $ConfigKVoiceX2, $ConfigKVoiceY2, "cg/sys/config/002-����å���ֹͣ.png");
		CreateTexture("@Config1a_KVoiceOFF/MouseClick/icon", 10010, $ConfigKVoiceX2, $ConfigKVoiceY2, "cg/sys/config/002-����å���ֹͣ.png");
		//CreateProcess("@Config1a_KVoiceOFF/MouseOver/button", 10010, 0, 0, "ConfigKVoiceOFFProcessOPEN");
		//CreateProcess("@Config1a_KVoiceOFF/MouseLeave/button", 10010, 0, 0, "ConfigKVoiceOFFProcessSTOP");
		//CreateSound("@Config1a_KVoiceOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_KVoiceOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_KVoiceOFF/MouseUsual/hit", Erase);
			$ConfigKVoiceOffH=ImageHorizon("Config1a_KVoiceOFF/MouseUsual/hit");
			$ConfigKVoiceOffV=ImageVertical("Config1a_KVoiceOFF/MouseUsual/hit");
		//CreateTexture("Config1a_KVoiceBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_KVoiceBar", "Config1a_KVoiceBar");
			//Request("Config1a_KVoiceBar", MulRender);

..		//�����x���Ԅ������ͤ�r�������O����
		$ConfigSVoiceX=575;
		$ConfigSVoiceY=49;
		$ConfigSVoiceX2=575;
		$ConfigSVoiceY2=137;
		//$ConfigSVoiceOnBar=$ConfigSVoiceY-2;
		//$ConfigSVoiceOffBar=$ConfigSVoiceY-2;
		CreateChoice("Config1a_SVoiceON");
		SetAlias("Config1a_SVoiceON", "Config1a_SVoiceON");
//		CreateTexture("Config1f_SVoiceON01", 10010, $ConfigSVoiceX, $ConfigSVoiceY, "cg/sys/config/001-�K�ˤޤǴ���.png");
		CreateTexture("Config1a_SVoiceON02", 10100, $ConfigSVoiceX, $ConfigSVoiceY, "cg/sys/config/003-�K�ˤޤǴ���.png");
		CreateTexture("@Config1a_SVoiceON/MouseUsual/hit", 10010, $ConfigSVoiceX, $ConfigSVoiceY, "cg/sys/config/001-�K�ˤޤǴ���.png");
		CreateTexture("@Config1a_SVoiceON/MouseOver/icon", 10010, $ConfigSVoiceX, $ConfigSVoiceY, "cg/sys/config/002-�K�ˤޤǴ���.png");
		CreateTexture("@Config1a_SVoiceON/MouseClick/icon", 10010, $ConfigSVoiceX, $ConfigSVoiceY, "cg/sys/config/002-�K�ˤޤǴ���.png");
		//CreateProcess("@Config1a_SVoiceON/MouseOver/button", 10010, 0, 0, "ConfigSVoiceONProcessOPEN");
		//CreateProcess("@Config1a_SVoiceON/MouseLeave/button", 10010, 0, 0, "ConfigSVoiceONProcessSTOP");
		//CreateSound("@Config1a_SVoiceON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_SVoiceON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_SVoiceON/MouseUsual/hit", Erase);
			$ConfigSVoiceOnH=ImageHorizon("Config1a_SVoiceON/MouseUsual/hit");
			$ConfigSVoiceOnV=ImageVertical("Config1a_SVoiceON/MouseUsual/hit");
		CreateChoice("Config1a_SVoiceOFF");
		SetAlias("Config1a_SVoiceOFF", "Config1a_SVoiceOFF");
//		CreateTexture("Config1f_SVoiceOFF01", 10010, $ConfigSVoiceX2, $ConfigSVoiceY2, "cg/sys/config/001-�������жϤ���.png");
		CreateTexture("Config1a_SVoiceOFF02", 10100, $ConfigSVoiceX2, $ConfigSVoiceY2, "cg/sys/config/003-�������жϤ���.png");
		CreateTexture("@Config1a_SVoiceOFF/MouseUsual/hit", 10010, $ConfigSVoiceX2, $ConfigSVoiceY2, "cg/sys/config/001-�������жϤ���.png");
		CreateTexture("@Config1a_SVoiceOFF/MouseOver/icon", 10010, $ConfigSVoiceX2, $ConfigSVoiceY2, "cg/sys/config/002-�������жϤ���.png");
		CreateTexture("@Config1a_SVoiceOFF/MouseClick/icon", 10010, $ConfigSVoiceX2, $ConfigSVoiceY2, "cg/sys/config/002-�������жϤ���.png");
		//CreateProcess("@Config1a_SVoiceOFF/MouseOver/button", 10010, 0, 0, "ConfigSVoiceOFFProcessOPEN");
		//CreateProcess("@Config1a_SVoiceOFF/MouseLeave/button", 10010, 0, 0, "ConfigSVoiceOFFProcessSTOP");
		//CreateSound("@Config1a_SVoiceOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_SVoiceOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_SVoiceOFF/MouseUsual/hit", Erase);
			$ConfigSVoiceOffH=ImageHorizon("Config1a_SVoiceOFF/MouseUsual/hit");
			$ConfigSVoiceOffV=ImageVertical("Config1a_SVoiceOFF/MouseUsual/hit");
		//CreateTexture("Config1a_SVoiceBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_SVoiceBar", "Config1a_SVoiceBar");
			//Request("Config1a_SVoiceBar", MulRender);

..		//�����x���£ǣͤ��������롹
		$ConfigBPlayX=539;
		$ConfigBPlayY=$ConfigMathY3;//�̶�
		$ConfigBPlayX2=539;
		$ConfigBPlayY2=$ConfigMathY4;//�̶�
		//$ConfigBPlayOnBar=$ConfigBPlayY-2;
		//$ConfigBPlayOffBar=$ConfigBPlayY-2;
		CreateChoice("Config1a_BPlayON");
		SetAlias("Config1a_BPlayON", "Config1a_BPlayON");
//		CreateTexture("Config1f_BPlayON01", 10010, $ConfigBPlayX, $ConfigBPlayY, "ConfigImageCheck01");
		CreateTexture("Config1a_BPlayON02", 10100, $ConfigBPlayX, $ConfigBPlayY, "ConfigImageCheck03a");
		CreateTexture("@Config1a_BPlayON/MouseUsual/hit", 10010, $ConfigBPlayX, $ConfigBPlayY, "ConfigImageCheck01");
		CreateTexture("@Config1a_BPlayON/MouseOver/icon", 10010, $ConfigBPlayX, $ConfigBPlayY, "ConfigImageCheck02a");
		CreateTexture("@Config1a_BPlayON/MouseClick/icon", 10010, $ConfigBPlayX, $ConfigBPlayY, "ConfigImageCheck02a");
		//CreateProcess("@Config1a_BPlayON/MouseOver/button", 10010, 0, 0, "ConfigBPlayONProcessOPEN");
		//CreateProcess("@Config1a_BPlayON/MouseLeave/button", 10010, 0, 0, "ConfigBPlayONProcessSTOP");
		//CreateSound("@Config1a_BPlayON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_BPlayON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_BPlayON/MouseUsual/hit", Erase);
			$ConfigBPlayOnH=ImageHorizon("Config1a_BPlayON/MouseUsual/hit");
			$ConfigBPlayOnV=ImageVertical("Config1a_BPlayON/MouseUsual/hit");
		CreateChoice("Config1a_BPlayOFF");
		SetAlias("Config1a_BPlayOFF", "Config1a_BPlayOFF");
//		CreateTexture("Config1f_BPlayOFF01", 10010, $ConfigBPlayX2, $ConfigBPlayY2, "ConfigImageCheck01");
		CreateTexture("Config1a_BPlayOFF02", 10100, $ConfigBPlayX2, $ConfigBPlayY2, "ConfigImageCheck03b");
		CreateTexture("@Config1a_BPlayOFF/MouseUsual/hit", 10010, $ConfigBPlayX2, $ConfigBPlayY2, "ConfigImageCheck01");
		CreateTexture("@Config1a_BPlayOFF/MouseOver/icon", 10010, $ConfigBPlayX2, $ConfigBPlayY2, "ConfigImageCheck02b");
		CreateTexture("@Config1a_BPlayOFF/MouseClick/icon", 10010, $ConfigBPlayX2, $ConfigBPlayY2, "ConfigImageCheck02b");
		//CreateProcess("@Config1a_BPlayOFF/MouseOver/button", 10010, 0, 0, "ConfigBPlayOFFProcessOPEN");
		//CreateProcess("@Config1a_BPlayOFF/MouseLeave/button", 10010, 0, 0, "ConfigBPlayOFFProcessSTOP");
		//CreateSound("@Config1a_BPlayOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_BPlayOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_BPlayOFF/MouseUsual/hit", Erase);
			$ConfigBPlayOffH=ImageHorizon("Config1a_BPlayOFF/MouseUsual/hit");
			$ConfigBPlayOffV=ImageVertical("Config1a_BPlayOFF/MouseUsual/hit");
		//CreateTexture("Config1a_BPlayBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_BPlayBar", "Config1a_BPlayBar");
			//Request("Config1a_BPlayBar", MulRender);

..		//�����x���ӣŤ��������롹
		$ConfigSPlayX=467;
		$ConfigSPlayY=$ConfigMathY3;//�̶�
		$ConfigSPlayX2=467;
		$ConfigSPlayY2=$ConfigMathY4;//�̶�
		//$ConfigSPlayOnBar=$ConfigSPlayY-2;
		//$ConfigSPlayOffBar=$ConfigSPlayY-2;
		CreateChoice("Config1a_SPlayON");
		SetAlias("Config1a_SPlayON", "Config1a_SPlayON");
//		CreateTexture("Config1f_SPlayON01", 10010, $ConfigSPlayX, $ConfigSPlayY, "ConfigImageCheck01");
		CreateTexture("Config1a_SPlayON02", 10100, $ConfigSPlayX, $ConfigSPlayY, "ConfigImageCheck03a");
		CreateTexture("@Config1a_SPlayON/MouseUsual/hit", 10010, $ConfigSPlayX, $ConfigSPlayY, "ConfigImageCheck01");
		CreateTexture("@Config1a_SPlayON/MouseOver/icon", 10010, $ConfigSPlayX, $ConfigSPlayY, "ConfigImageCheck02a");
		CreateTexture("@Config1a_SPlayON/MouseClick/icon", 10010, $ConfigSPlayX, $ConfigSPlayY, "ConfigImageCheck02a");
		//CreateProcess("@Config1a_SPlayON/MouseOver/button", 10010, 0, 0, "ConfigSPlayONProcessOPEN");
		//CreateProcess("@Config1a_SPlayON/MouseLeave/button", 10010, 0, 0, "ConfigSPlayONProcessSTOP");
		//CreateSound("@Config1a_SPlayON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_SPlayON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_SPlayON/MouseUsual/hit", Erase);
			$ConfigSPlayOnH=ImageHorizon("Config1a_SPlayON/MouseUsual/hit");
			$ConfigSPlayOnV=ImageVertical("Config1a_SPlayON/MouseUsual/hit");
		CreateChoice("Config1a_SPlayOFF");
		SetAlias("Config1a_SPlayOFF", "Config1a_SPlayOFF");
//		CreateTexture("Config1f_SPlayOFF01", 10010, $ConfigSPlayX2, $ConfigSPlayY2, "ConfigImageCheck01");
		CreateTexture("Config1a_SPlayOFF02", 10100, $ConfigSPlayX2, $ConfigSPlayY2, "ConfigImageCheck03b");
		CreateTexture("@Config1a_SPlayOFF/MouseUsual/hit", 10010, $ConfigSPlayX2, $ConfigSPlayY2, "ConfigImageCheck01");
		CreateTexture("@Config1a_SPlayOFF/MouseOver/icon", 10010, $ConfigSPlayX2, $ConfigSPlayY2, "ConfigImageCheck02b");
		CreateTexture("@Config1a_SPlayOFF/MouseClick/icon", 10010, $ConfigSPlayX2, $ConfigSPlayY2, "ConfigImageCheck02b");
		//CreateProcess("@Config1a_SPlayOFF/MouseOver/button", 10010, 0, 0, "ConfigSPlayOFFProcessOPEN");
		//CreateProcess("@Config1a_SPlayOFF/MouseLeave/button", 10010, 0, 0, "ConfigSPlayOFFProcessSTOP");
		//CreateSound("@Config1a_SPlayOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_SPlayOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_SPlayOFF/MouseUsual/hit", Erase);
			$ConfigSPlayOffH=ImageHorizon("Config1a_SPlayOFF/MouseUsual/hit");
			$ConfigSPlayOffV=ImageVertical("Config1a_SPlayOFF/MouseUsual/hit");
		//CreateTexture("Config1a_SPlayBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_SPlayBar", "Config1a_SPlayBar");
			//Request("Config1a_SPlayBar", MulRender);

..		//�����x���������������롹
		$ConfigVPlayX=395;
		$ConfigVPlayY=$ConfigMathY3;//�̶�
		$ConfigVPlayX2=395;
		$ConfigVPlayY2=$ConfigMathY4;//�̶�
		//$ConfigVPlayOnBar=$ConfigVPlayY-2;
		//$ConfigVPlayOffBar=$ConfigVPlayY-2;
		CreateChoice("Config1a_VPlayON");
		SetAlias("Config1a_VPlayON", "Config1a_VPlayON");
//		CreateTexture("Config1f_VPlayON01", 10010, $ConfigVPlayX, $ConfigVPlayY, "ConfigImageCheck01");
		CreateTexture("Config1a_VPlayON02", 10100, $ConfigVPlayX, $ConfigVPlayY, "ConfigImageCheck03a");
		CreateTexture("@Config1a_VPlayON/MouseUsual/hit", 10010, $ConfigVPlayX, $ConfigVPlayY, "ConfigImageCheck01");
		CreateTexture("@Config1a_VPlayON/MouseOver/icon", 10010, $ConfigVPlayX, $ConfigVPlayY, "ConfigImageCheck02a");
		CreateTexture("@Config1a_VPlayON/MouseClick/icon", 10010, $ConfigVPlayX, $ConfigVPlayY, "ConfigImageCheck02a");
		//CreateProcess("@Config1a_VPlayON/MouseOver/button", 10010, 0, 0, "ConfigVPlayONProcessOPEN");
		//CreateProcess("@Config1a_VPlayON/MouseLeave/button", 10010, 0, 0, "ConfigVPlayONProcessSTOP");
		//CreateSound("@Config1a_VPlayON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_VPlayON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_VPlayON/MouseUsual/hit", Erase);
			$ConfigVPlayOnH=ImageHorizon("Config1a_VPlayON/MouseUsual/hit");
			$ConfigVPlayOnV=ImageVertical("Config1a_VPlayON/MouseUsual/hit");
		CreateChoice("Config1a_VPlayOFF");
		SetAlias("Config1a_VPlayOFF", "Config1a_VPlayOFF");
//		CreateTexture("Config1f_VPlayOFF01", 10010, $ConfigVPlayX2, $ConfigVPlayY2, "ConfigImageCheck01");
		CreateTexture("Config1a_VPlayOFF02", 10100, $ConfigVPlayX2, $ConfigVPlayY2, "ConfigImageCheck03b");
		CreateTexture("@Config1a_VPlayOFF/MouseUsual/hit", 10010, $ConfigVPlayX2, $ConfigVPlayY2, "ConfigImageCheck01");
		CreateTexture("@Config1a_VPlayOFF/MouseOver/icon", 10010, $ConfigVPlayX2, $ConfigVPlayY2, "ConfigImageCheck02b");
		CreateTexture("@Config1a_VPlayOFF/MouseClick/icon", 10010, $ConfigVPlayX2, $ConfigVPlayY2, "ConfigImageCheck02b");
		//CreateProcess("@Config1a_VPlayOFF/MouseOver/button", 10010, 0, 0, "ConfigVPlayOFFProcessOPEN");
		//CreateProcess("@Config1a_VPlayOFF/MouseLeave/button", 10010, 0, 0, "ConfigVPlayOFFProcessSTOP");
		//CreateSound("@Config1a_VPlayOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_VPlayOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_VPlayOFF/MouseUsual/hit", Erase);
			$ConfigVPlayOffH=ImageHorizon("Config1a_VPlayOFF/MouseUsual/hit");
			$ConfigVPlayOffV=ImageVertical("Config1a_VPlayOFF/MouseUsual/hit");
		//CreateTexture("Config1a_VPlayBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_VPlayBar", "Config1a_VPlayBar");
			//Request("Config1a_VPlayBar", MulRender);

..		//�����x�������ڥ��ȱȤι̶����Ԅӡ���
		$ConfigAAutoX=251;
		$ConfigAAutoY=$ConfigMathY3;//�̶�
		$ConfigAAutoX2=251;
		$ConfigAAutoY2=$ConfigMathY4;//�̶�
		//$ConfigAAutoOnBar=$ConfigAAutoY-2;
		//$ConfigAAutoOffBar=$ConfigAAutoY-2;
		CreateChoice("Config1a_AAutoON");
		SetAlias("Config1a_AAutoON", "Config1a_AAutoON");
//		CreateTexture("Config1f_AAutoON01", 10010, $ConfigAAutoX, $ConfigAAutoY, "ConfigImageCheck01");
		CreateTexture("Config1a_AAutoON02", 10100, $ConfigAAutoX, $ConfigAAutoY, "ConfigImageCheck03a");
		CreateTexture("@Config1a_AAutoON/MouseUsual/hit", 10010, $ConfigAAutoX, $ConfigAAutoY, "ConfigImageCheck01");
		CreateTexture("@Config1a_AAutoON/MouseOver/icon", 10010, $ConfigAAutoX, $ConfigAAutoY, "ConfigImageCheck02a");
		CreateTexture("@Config1a_AAutoON/MouseClick/icon", 10010, $ConfigAAutoX, $ConfigAAutoY, "ConfigImageCheck02a");
		//CreateProcess("@Config1a_AAutoON/MouseOver/button", 10010, 0, 0, "ConfigAAutoONProcessOPEN");
		//CreateProcess("@Config1a_AAutoON/MouseLeave/button", 10010, 0, 0, "ConfigAAutoONProcessSTOP");
		//CreateSound("@Config1a_AAutoON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_AAutoON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_AAutoON/MouseUsual/hit", Erase);
			$ConfigAAutoOnH=ImageHorizon("Config1a_AAutoON/MouseUsual/hit");
			$ConfigAAutoOnV=ImageVertical("Config1a_AAutoON/MouseUsual/hit");
		CreateChoice("Config1a_AAutoOFF");
		SetAlias("Config1a_AAutoOFF", "Config1a_AAutoOFF");
//		CreateTexture("Config1f_AAutoOFF01", 10010, $ConfigAAutoX2, $ConfigAAutoY2, "ConfigImageCheck01");
		CreateTexture("Config1a_AAutoOFF02", 10100, $ConfigAAutoX2, $ConfigAAutoY2, "ConfigImageCheck03b");
		CreateTexture("@Config1a_AAutoOFF/MouseUsual/hit", 10010, $ConfigAAutoX2, $ConfigAAutoY2, "ConfigImageCheck01");
		CreateTexture("@Config1a_AAutoOFF/MouseOver/icon", 10010, $ConfigAAutoX2, $ConfigAAutoY2, "ConfigImageCheck02b");
		CreateTexture("@Config1a_AAutoOFF/MouseClick/icon", 10010, $ConfigAAutoX2, $ConfigAAutoY2, "ConfigImageCheck02b");
		//CreateProcess("@Config1a_AAutoOFF/MouseOver/button", 10010, 0, 0, "ConfigAAutoOFFProcessOPEN");
		//CreateProcess("@Config1a_AAutoOFF/MouseLeave/button", 10010, 0, 0, "ConfigAAutoOFFProcessSTOP");
		//CreateSound("@Config1a_AAutoOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_AAutoOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_AAutoOFF/MouseUsual/hit", Erase);
			$ConfigAAutoOffH=ImageHorizon("Config1a_AAutoOFF/MouseUsual/hit");
			$ConfigAAutoOffV=ImageVertical("Config1a_AAutoOFF/MouseUsual/hit");
		//CreateTexture("Config1a_AAutoBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_AAutoBar", "Config1a_AAutoBar");
			//Request("Config1a_AAutoBar", MulRender);



..		//�����x�������ڥ��ȱȤι̶������桫��
		$ConfigFAspectX=215;
		$ConfigFAspectY=165;
		$ConfigFAspectX2=215;
		$ConfigFAspectY2=51;
		//$ConfigFAspectOnBar=$ConfigFAspectY-2;
		//$ConfigFAspectOffBar=$ConfigFAspectY-2;
		CreateChoice("Config1a_FAspectON");
		SetAlias("Config1a_FAspectON", "Config1a_FAspectON");
//		CreateTexture("Config1f_FAspectON01", 10010, $ConfigFAspectX, $ConfigFAspectY, "cg/sys/config/001-�̶�������.png");
		CreateTexture("Config1a_FAspectON02", 10100, $ConfigFAspectX, $ConfigFAspectY, "cg/sys/config/003-�̶�������.png");
		CreateTexture("Config1a_FAspectON03", 10100, $ConfigFAspectX, $ConfigFAspectY, "cg/sys/config/000-�̶�������.png");
		CreateTexture("@Config1a_FAspectON/MouseUsual/hit", 10010, $ConfigFAspectX, $ConfigFAspectY, "cg/sys/config/001-�̶�������.png");
		CreateTexture("@Config1a_FAspectON/MouseOver/icon", 10010, $ConfigFAspectX, $ConfigFAspectY, "cg/sys/config/002-�̶�������.png");
		CreateTexture("@Config1a_FAspectON/MouseClick/icon", 10010, $ConfigFAspectX, $ConfigFAspectY, "cg/sys/config/002-�̶�������.png");
		//CreateProcess("@Config1a_FAspectON/MouseOver/button", 10010, 0, 0, "ConfigFAspectONProcessOPEN");
		//CreateProcess("@Config1a_FAspectON/MouseLeave/button", 10010, 0, 0, "ConfigFAspectONProcessSTOP");
		//CreateSound("@Config1a_FAspectON/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_FAspectON/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_FAspectON/MouseUsual/hit", Erase);
			$ConfigFAspectOnH=ImageHorizon("Config1a_FAspectON/MouseUsual/hit");
			$ConfigFAspectOnV=ImageVertical("Config1a_FAspectON/MouseUsual/hit");
		CreateChoice("Config1a_FAspectOFF");
		SetAlias("Config1a_FAspectOFF", "Config1a_FAspectOFF");
//		CreateTexture("Config1f_FAspectOFF01", 10010, $ConfigFAspectX2, $ConfigFAspectY2, "cg/sys/config/001-�ǥ����ץ쥤����.png");
		CreateTexture("Config1a_FAspectOFF02", 10100, $ConfigFAspectX2, $ConfigFAspectY2, "cg/sys/config/003-�ǥ����ץ쥤����.png");
		CreateTexture("Config1a_FAspectOFF03", 10100, $ConfigFAspectX2, $ConfigFAspectY2, "cg/sys/config/000-�ǥ����ץ쥤����.png");
		CreateTexture("@Config1a_FAspectOFF/MouseUsual/hit", 10010, $ConfigFAspectX2, $ConfigFAspectY2, "cg/sys/config/001-�ǥ����ץ쥤����.png");
		CreateTexture("@Config1a_FAspectOFF/MouseOver/icon", 10010, $ConfigFAspectX2, $ConfigFAspectY2, "cg/sys/config/002-�ǥ����ץ쥤����.png");
		CreateTexture("@Config1a_FAspectOFF/MouseClick/icon", 10010, $ConfigFAspectX2, $ConfigFAspectY2, "cg/sys/config/002-�ǥ����ץ쥤����.png");
		//CreateProcess("@Config1a_FAspectOFF/MouseOver/button", 10010, 0, 0, "ConfigFAspectOFFProcessOPEN");
		//CreateProcess("@Config1a_FAspectOFF/MouseLeave/button", 10010, 0, 0, "ConfigFAspectOFFProcessSTOP");
		//CreateSound("@Config1a_FAspectOFF/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_FAspectOFF/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_FAspectOFF/MouseUsual/hit", Erase);
			$ConfigFAspectOffH=ImageHorizon("Config1a_FAspectOFF/MouseUsual/hit");
			$ConfigFAspectOffV=ImageVertical("Config1a_FAspectOFF/MouseUsual/hit");
		//CreateTexture("Config1a_FAspectBar", 10010, $ConfigBarX, $ConfigBarY, "ConfigImageBar");
		//SetAlias("Config1a_FAspectBar", "Config1a_FAspectBar");
			//Request("Config1a_FAspectBar", MulRender);

..		//�����x�������ڥ��ȱȤι̶�����ơ���
		$ConfigWayX=177;
		$ConfigWayY=255;
		CreateTexture("Config1a_Way01", 10010, $ConfigWayX, $ConfigWayY, "cg/sys/config/002-�����ڥ��ȷ���OFF.png");
		CreateTexture("Config1a_Way03", 10010, $ConfigWayX, $ConfigWayY, "cg/sys/config/000-�����ڥ��ȷ����x�k����.png");

..		//�����x�������ڥ��ȱȤι̶�����������
		$ConfigARatioHWX=175;
		$ConfigARatioHWY=127;
		$ConfigARatioNNX=139;
		$ConfigARatioNNY=105;
		$ConfigARatioBRX=103;
		$ConfigARatioBRY=151;
		//$ConfigARatioOnBar=$ConfigARatioY-2;
		//$ConfigARatioOffBar=$ConfigARatioY-2;
		CreateChoice("Config1a_ARatioHW");
		SetAlias("Config1a_ARatioHW", "Config1a_ARatioHW");
//		CreateTexture("Config1f_ARatioHW01", 10010, $ConfigARatioHWX, $ConfigARatioHWY, "cg/sys/config/001-�ϩ`�ɥ�����.png");
		CreateTexture("Config1a_ARatioHW02", 10100, $ConfigARatioHWX, $ConfigARatioHWY, "cg/sys/config/003-�ϩ`�ɥ�����.png");
		CreateTexture("Config1a_ARatioHW03", 10100, $ConfigARatioHWX, $ConfigARatioHWY, "cg/sys/config/000-�ϩ`�ɥ�����.png");
		CreateTexture("@Config1a_ARatioHW/MouseUsual/hit", 10010, $ConfigARatioHWX, $ConfigARatioHWY, "cg/sys/config/001-�ϩ`�ɥ�����.png");
		CreateTexture("@Config1a_ARatioHW/MouseOver/icon", 10010, $ConfigARatioHWX, $ConfigARatioHWY, "cg/sys/config/002-�ϩ`�ɥ�����.png");
		CreateTexture("@Config1a_ARatioHW/MouseClick/icon", 10010, $ConfigARatioHWX, $ConfigARatioHWY, "cg/sys/config/002-�ϩ`�ɥ�����.png");
		//CreateProcess("@Config1a_ARatioHW/MouseOver/button", 10010, 0, 0, "ConfigARatioHWProcessOPEN");
		//CreateProcess("@Config1a_ARatioHW/MouseLeave/button", 10010, 0, 0, "ConfigARatioHWProcessSTOP");
		//CreateSound("@Config1a_ARatioHW/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_ARatioHW/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_ARatioHW/MouseUsual/hit", Erase);
			$ConfigARatioOnH=ImageHorizon("Config1a_ARatioHW/MouseUsual/hit");
			$ConfigARatioOnV=ImageVertical("Config1a_ARatioHW/MouseUsual/hit");
		CreateChoice("Config1a_ARatioNN");
		SetAlias("Config1a_ARatioNN", "Config1a_ARatioNN");
//		CreateTexture("Config1f_ARatioNN01", 10010, $ConfigARatioNNX, $ConfigARatioNNY, "cg/sys/config/001-�˥��쥹��.png");
		CreateTexture("Config1a_ARatioNN02", 10100, $ConfigARatioNNX, $ConfigARatioNNY, "cg/sys/config/003-�˥��쥹��.png");
		CreateTexture("Config1a_ARatioNN03", 10100, $ConfigARatioNNX, $ConfigARatioNNY, "cg/sys/config/000-�˥��쥹��.png");
		CreateTexture("@Config1a_ARatioNN/MouseUsual/hit", 10010, $ConfigARatioNNX, $ConfigARatioNNY, "cg/sys/config/001-�˥��쥹��.png");
		CreateTexture("@Config1a_ARatioNN/MouseOver/icon", 10010, $ConfigARatioNNX, $ConfigARatioNNY, "cg/sys/config/002-�˥��쥹��.png");
		CreateTexture("@Config1a_ARatioNN/MouseClick/icon", 10010, $ConfigARatioNNX, $ConfigARatioNNY, "cg/sys/config/002-�˥��쥹��.png");
		//CreateProcess("@Config1a_ARatioNN/MouseOver/button", 10010, 0, 0, "ConfigARatioNNProcessOPEN");
		//CreateProcess("@Config1a_ARatioNN/MouseLeave/button", 10010, 0, 0, "ConfigARatioNNProcessSTOP");
		//CreateSound("@Config1a_ARatioNN/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_ARatioNN/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_ARatioNN/MouseUsual/hit", Erase);
			$ConfigARatioOnH=ImageHorizon("Config1a_ARatioNN/MouseUsual/hit");
			$ConfigARatioOnV=ImageVertical("Config1a_ARatioNN/MouseUsual/hit");
		CreateChoice("Config1a_ARatioBR");
		SetAlias("Config1a_ARatioBR", "Config1a_ARatioBR");
//		CreateTexture("Config1f_ARatioBR01", 10010, $ConfigARatioBRX, $ConfigARatioBRY, "cg/sys/config/001-�Х���˥�.png");
		CreateTexture("Config1a_ARatioBR02", 10100, $ConfigARatioBRX, $ConfigARatioBRY, "cg/sys/config/003-�Х���˥�.png");
		CreateTexture("Config1a_ARatioBR03", 10100, $ConfigARatioBRX, $ConfigARatioBRY, "cg/sys/config/000-�Х���˥�.png");
		CreateTexture("@Config1a_ARatioBR/MouseUsual/hit", 10010, $ConfigARatioBRX, $ConfigARatioBRY, "cg/sys/config/001-�Х���˥�.png");
		CreateTexture("@Config1a_ARatioBR/MouseOver/icon", 10010, $ConfigARatioBRX, $ConfigARatioBRY, "cg/sys/config/002-�Х���˥�.png");
		CreateTexture("@Config1a_ARatioBR/MouseClick/icon", 10010, $ConfigARatioBRX, $ConfigARatioBRY, "cg/sys/config/002-�Х���˥�.png");
		//CreateProcess("@Config1a_ARatioBR/MouseOver/button", 10010, 0, 0, "ConfigARatioBRProcessOPEN");
		//CreateProcess("@Config1a_ARatioBR/MouseLeave/button", 10010, 0, 0, "ConfigARatioBRProcessSTOP");
		//CreateSound("@Config1a_ARatioBR/MouseOver/sound", SE, $ConfigSound_over);
		//CreateSound("@Config1a_ARatioBR/MouseClick/sound", SE, $ConfigSound_click);
			Request("@Config1a_ARatioBR/MouseUsual/hit", Erase);
			$ConfigARatioOnH=ImageHorizon("Config1a_ARatioBR/MouseUsual/hit");
			$ConfigARatioOnV=ImageVertical("Config1a_ARatioBR/MouseUsual/hit");

		$cfgmaketab1=true;
	}

	$ConfigPage=1;
	$ConfigPhase=1;
	$ConfigNumber=1;

	if(Platform()==100){
		ConfigMoveScroll();
		ConfigMoveSet();
	}else{
		ConfigFocus();
	}
}



.//���軭������ե����軭��
function ConfigFade()
{
	//���軭��ȫ������
	Fade("Config*/*/*", 0, 0, null, false);
	Fade("Config*", 0, 0, null, true);

	//���軭����ͨ�زġ�
//	Fade("Config0f*", 0, 1000, null, false);
	Fade("Config9f*", 0, 1000, null, false);

	if($cfgtab==1){
		//��ܥ��������δ_�J
		ConfigCharacterVoice();

		//���軭��������
		Fade("Config1f*", 0, 1000, null, false);
		Fade("Config9f*", 0, 1000, null, false);

..		//���軭���_�J��å��`����
		if(#no_ask){
			Fade("Config1a_CConfirmOFF02",0,1000,null,false);
		}else{
			Fade("Config1a_CConfirmON02",0,1000,null,false);
		}
..		//���軭���ӻ����жϡ�
		if(#SYSTEM_break_play_movie){
			Fade("Config1a_MStopON02",0,1000,null,false);
		}else{
			Fade("Config1a_MStopOFF02",0,1000,null,false);
		}
..		//���軭���x�k֫����Ԅ������ͤ꣦�����åפ�����
		if(#keep_auto_and_skip){
			Fade("Config1a_CSkipOFF02",0,1000,null,false);
		}else{
			Fade("Config1a_CSkipON02",0,1000,null,false);
		}
..		//���軭��δ�i�r�Ǥ⥹���åפ��룿��
		if(#SYSTEM_skip_absolute){
			Fade("Config1a_ASkipON02",0,1000,null,false);
		}else{
			Fade("Config1a_ASkipOFF02",0,1000,null,false);
		}
..		//���軭�������ͤ�r������������
		if(#SYSTEM_click_break_voice){
			Fade("Config1a_KVoiceOFF02",0,1000,null,false);
		}else{
			Fade("Config1a_KVoiceON02",0,1000,null,false);
		}
..		//���軭���Ԅ������ͤ�r�������O����
		if(#SYSTEM_auto_text_break_voice){
			Fade("Config1a_SVoiceOFF02",0,1000,null,false);
		}else{
			Fade("Config1a_SVoiceON02",0,1000,null,false);
		}
..		//���軭���£ǣͤ��������롹
		if(#SYSTEM_sound_bgm){
			Fade("Config1a_BPlayON02",0,1000,null,false);
		}else{
			Fade("Config1a_BPlayOFF02",0,1000,null,false);
		}
..		//���軭���ӣŤ��������롹
		if(#SYSTEM_sound_se){
			Fade("Config1a_SPlayON02",0,1000,null,false);
		}else{
			Fade("Config1a_SPlayOFF02",0,1000,null,false);
		}
..		//���軭���������������롹
		if(#SYSTEM_sound_voice){
			Fade("Config1a_VPlayON02",0,1000,null,false);
		}else{
			Fade("Config1a_VPlayOFF02",0,1000,null,false);
		}
..		//���軭���ã֡�
		if(!#voice_skip_Achara){
			Fade("Config1a_CV_Achara02",0,1000,null,false);
		}
		if(!#voice_skip_Bchara){
			Fade("Config1a_CV_Bchara02",0,1000,null,false);
		}
		if(!#voice_skip_Cchara){
			Fade("Config1a_CV_Cchara02",0,1000,null,false);
		}
		if(!#voice_skip_Dchara){
			Fade("Config1a_CV_Dchara02",0,1000,null,false);
		}
		if(!#voice_skip_Echara){
			Fade("Config1a_CV_Echara02",0,1000,null,false);
		}
		if(!#voice_skip_Fchara){
			Fade("Config1a_CV_Fchara02",0,1000,null,false);
		}
		if(!#voice_skip_Gchara){
			Fade("Config1a_CV_Gchara02",0,1000,null,false);
		}
		if(!#voice_skip_Hchara){
			Fade("Config1a_CV_Hchara02",0,1000,null,false);
		}
		if(!#voice_skip_Ichara){
			Fade("Config1a_CV_Ichara02",0,1000,null,false);
		}
		if(!#voice_skip_Jchara){
			Fade("Config1a_CV_Jchara02",0,1000,null,false);
		}
		if(!#voice_skip_Kchara){
			Fade("Config1a_CV_Kchara02",0,1000,null,false);
		}
		if(!#voice_skip_Lchara){
			Fade("Config1a_CV_Lchara02",0,1000,null,false);
		}
		if(!#voice_skip_Mchara){
			Fade("Config1a_CV_Mchara02",0,1000,null,false);
		}
		if(!#voice_skip_Nchara){
			Fade("Config1a_CV_Nchara02",0,1000,null,false);
		}
		if(!#voice_skip_Ochara){
			Fade("Config1a_CV_Ochara02",0,1000,null,false);
		}
		if(!#voice_skip_Pchara){
			Fade("Config1a_CV_Pchara02",0,1000,null,false);
		}
		if(#SYSTEM_voice_enable_another){
			Fade("Config1a_CV_Other02",0,1000,null,false);
		}
..		//���軭�������ڥ��ȱȤ��Ԅ��O����
		if(#LOCAL_aspect_auto){
			Fade("Config1a_AAutoON02",$ConfigFadeTime,1000,null,false);
			Fade("Config1a_FAspectON03",$ConfigFadeTime,1000,null,false);
			Fade("Config1a_FAspectOFF03",$ConfigFadeTime,1000,null,false);
			Fade("Config1a_ARatioHW03",$ConfigFadeTime,1000,null,false);
			Fade("Config1a_ARatioNN03",$ConfigFadeTime,1000,null,false);
			Fade("Config1a_ARatioBR03",$ConfigFadeTime,1000,null,false);
			Fade("Config1a_Way03",$ConfigFadeTime,1000,null,false);
		}else{
			Fade("Config1a_AAutoOFF02",$ConfigFadeTime,1000,null,false);
		}
..		//���軭�������ڥ��ȱȤι̶���
		if(#SYSTEM_video_aspect_fixed==0){
			Fade("Config1a_FAspectOFF02",0,1000,null,false);
			Fade("Config1a_Way01",0,1000,null,false);
		}else{
			Fade("Config1a_FAspectON02",0,1000,null,false);
			Fade("Config1a_Way01",0,0,null,false);
			//���軭�������ڥ��ȱȤι̶�����������
			if(#SYSTEM_video_aspect_fixed==1){
				Fade("Config1a_ARatioHW02",0,1000,null,false);
			}else if(#SYSTEM_video_aspect_fixed==2){
				Fade("Config1a_ARatioNN02",0,1000,null,false);
			}else if(#SYSTEM_video_aspect_fixed==3){
				Fade("Config1a_ARatioBR02",0,1000,null,false);
			}
		}
	}

	//��ԣãҌ���
	//LoadingEnd();
	//����異���å�
	//XBOX360_LockVideo(false);

	if($go){
		//Fade("MSGWND/MSG_bak",0,0,null,false);
		Fade("����ե���������ɥ�/����", 0, 0, null, false);
		Zoom("MSGWND/MSG_msg",150,0,1000, Dxl1, false);
		Zoom("MSGWND/MSG_*/*/*",150,0,1000, Dxl1, false);
		Fade("MSGWND/MSG_*",150,0,null,false);
		Fade("MSGWND/MSG_*/*/*",150,0,null,false);
		WaitAction("MSGWND/MSG_*",null);
		Delete("MSGWND");
	}
	$go=false;
	$OnDialog=false;

	//���軭���ܥ����h����
	Fade("����ե���������ɥ�/����", 300, 0, null, true);
	//DialogButtonFade3("Button_CONFIG");
/*
	CreateText("�ƥ����ȣ�", 2000000, 50, 30, Auto, Auto, #SYSTEM_play_speed);
	CreateText("�ƥ����ȣ�", 2000000, 50, 60, Auto, Auto, #SYSTEM_text_speed);
	CreateText("�ƥ����ȣ�", 2000000, 50, 90, Auto, Auto, #SYSTEM_auto_wait_per_character);
	CreateText("�ƥ����ȣ�", 2000000, 50, 120, Auto, Auto, #SYSTEM_sound_volume_bgm);
	CreateText("�ƥ����ȣ�", 2000000, 50, 150, Auto, Auto, #SYSTEM_sound_volume_se);
	CreateText("�ƥ����ȣ�", 2000000, 50, 180, Auto, Auto, #SYSTEM_sound_volume_voice);
	//WaitKey();
*/
}


/*
	$PreConfigScrollbar = Integer((ImageVertical("Config1f_ConfigGround")-720) * ScrollbarValue("Config9f_Scrollbar"));

				//��ȫ�她����`��
				$ConfigScrollbar = Integer((ImageVertical("Config1f_ConfigGround")-720) * ScrollbarValue("Config9f_Scrollbar"));
				$ConfigScrollbarY = $PreConfigScrollbar - $ConfigScrollbar;
				if($PreConfigScrollbar!=$ConfigScrollbar){
					Move("Config0*/*/*", 0, @0, @$ConfigScrollbarY, null, false);
					Move("Config1*/*/*", 0, @0, @$ConfigScrollbarY, null, false);
					Move("Config0*", 0, @0, @$ConfigScrollbarY, null, false);
					Move("Config1*", 0, @0, @$ConfigScrollbarY, null, false);
				}
				$PreConfigScrollbar = $ConfigScrollbar;

				case Config9f_Scrollbar{}
*/


.//���x�k������ե����x�k��
function ConfigSelect()
{
	Position("Config1f_MSpeed01", $x, $y);
	$x=$x+2;
	$y=$y+2;
	//MoveCursor($x,$y);

	$ConfigNextFlag=0;
	$ConfigPage=1;

	$SYSTEM_keydown_c=false;
	while($SYSTEM_menu_config_enable)
	{
		if($SYSTEM_XBOX360_change_user_state){
			//DialogChangeState2();
		}
		if($cfgtab==1){
			select{
				if($SYSTEM_XBOX360_change_user_state){DialogChangeState2();}

..				//�拾��ե����ѳ�
				if($SYSTEM_keydown_c||$SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){$SYSTEM_menu_config_enable=false;break;}

..				//�省�`������ϵ
				if($SYSTEM_keydown_f){
					if(!#SYSTEM_window_full_lock){
						#SYSTEM_window_full=!#SYSTEM_window_full;
						#SYSTEM_window_full_lock=false;
						Wait(300);
						$SYSTEM_keydown_f=false;
					}
				}else if(($SYSTEM_keydown_esc||$SYSTEM_buttondown_close)&&!$Title_Config){
					ConfigCharacterVoice();
					call_chapter nss/sys_close.nss;
				}else if($SYSTEM_keydown_t){
					ConfigCharacterVoice();
					call_chapter nss/sys_reset.nss;
				}else if($SYSTEM_keydown_r){
					ConfigCharacterVoice();
					call_chapter nss/sys_backselect.nss;
				}

..				//��ȫ�她����`���E��
				CursorPosition($ConX,$ConY);
				//CreateText("�ƥ����ȣ�", 20200, 50, 50, 700, 500, $ConX);
				//CreateText("�ƥ����ȣ�", 20200, 50, 150, 700, 500, $ConY);
				if(Platform()==100){
					if($SYSTEM_XBOX360_button_up_down){
						$LOCAL_XBOX360_button_up_down=true;
						break;
					}else if($SYSTEM_XBOX360_button_down_down&&$ConfigNumber!=40){
						$LOCAL_XBOX360_button_down_down=true;
						break;
					}else if($SYSTEM_XBOX360_button_left_down&&$ConfigNumber!=40&&$ConfigNumber!=1&&$ConfigNumber!=2&&$ConfigNumber!=9&&$ConfigNumber!=14&&$ConfigNumber!=17&&$ConfigNumber!=20){
						$LOCAL_XBOX360_button_left_down=true;
						break;
					}else if($SYSTEM_XBOX360_button_right_down&&$ConfigNumber!=40&&$ConfigNumber!=1&&$ConfigNumber!=2&&$ConfigNumber!=9&&$ConfigNumber!=14&&$ConfigNumber!=17&&$ConfigNumber!=20){
						$LOCAL_XBOX360_button_right_down=true;
						break;
					}
				}else{
				}

..				//��Щ`ϵ�ж���
				#play_speed_plus=Integer((1-ScrollbarValue("Config1a_PSpeed"))*12);
				#SYSTEM_text_speed=ScrollbarValue("Config1a_MSpeed")*1000;
				#LOCAL_window_fade=ScrollbarValue("Config1a_MTrans")*1000;
				#SYSTEM_auto_wait_per_character=ScrollbarValue("Config1a_ASpeed")*200;

				#SYSTEM_sound_volume_bgm=(1-ScrollbarValue("Config1a_BVolume"))*1000;
				#SYSTEM_sound_volume_se=(1-ScrollbarValue("Config1a_SVolume"))*1000;
				#SYSTEM_sound_volume_voice=(1-ScrollbarValue("Config1a_VVolume"))*1000;

..				//�����
				case Config1a_EXIT{$SYSTEM_menu_config_enable=false;}
..				//����ڻ�
				case Config1a_Default{ConfigDefaultInit();}

..				//��_�J��å��`��
				case Config1a_CConfirmON{
					#no_ask=false;
					Fade("Config1a_CConfirmON02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_CConfirmOFF02",$ConfigFadeTime,0,null,false);
				}
				case Config1a_CConfirmOFF{
					#no_ask=true;
					Fade("Config1a_CConfirmON02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_CConfirmOFF02",$ConfigFadeTime,1000,null,false);
				}

..				//��ӻ����ж�
				case Config1a_MStopON{
					#SYSTEM_break_play_movie=true;
					Fade("Config1a_MStopON02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_MStopOFF02",$ConfigFadeTime,0,null,false);
				}
				case Config1a_MStopOFF{
					#SYSTEM_break_play_movie=false;
					Fade("Config1a_MStopON02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_MStopOFF02",$ConfigFadeTime,1000,null,false);
				}

..				//���x�k֫����Ԅ������ͤ꣦�����åפ���
				case Config1a_CSkipON{
					#keep_auto_and_skip=false;
					Fade("Config1a_CSkipON02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_CSkipOFF02",$ConfigFadeTime,0,null,false);
				}
				case Config1a_CSkipOFF{
					#keep_auto_and_skip=true;
					Fade("Config1a_CSkipON02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_CSkipOFF02",$ConfigFadeTime,1000,null,false);
				}

..				//��δ�i�r�Ǥ⥹���å�
				case Config1a_ASkipON{
					#SYSTEM_skip_absolute=true;
					Fade("Config1a_ASkipON02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_ASkipOFF02",$ConfigFadeTime,0,null,false);
				}
				case Config1a_ASkipOFF{
					#SYSTEM_skip_absolute=false;
					Fade("Config1a_ASkipON02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_ASkipOFF02",$ConfigFadeTime,1000,null,false);
				}

..				//�������ͤ�r����������
				case Config1a_KVoiceON{
					#SYSTEM_click_break_voice=false;
					Fade("Config1a_KVoiceON02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_KVoiceOFF02",$ConfigFadeTime,0,null,false);
				}
				case Config1a_KVoiceOFF{
					#SYSTEM_click_break_voice=true;
					Fade("Config1a_KVoiceON02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_KVoiceOFF02",$ConfigFadeTime,1000,null,false);
				}

..				//���Ԅ������ͤ�r�������O��
				case Config1a_SVoiceON{
					#SYSTEM_auto_text_break_voice=false;
					Fade("Config1a_SVoiceON02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_SVoiceOFF02",$ConfigFadeTime,0,null,false);
				}
				case Config1a_SVoiceOFF{
					#SYSTEM_auto_text_break_voice=true;
					Fade("Config1a_SVoiceON02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_SVoiceOFF02",$ConfigFadeTime,1000,null,false);
				}

..				//��£ǣͤ���������
				case Config1a_BPlayON{
					#SYSTEM_sound_bgm=true;
					Fade("Config1a_BPlayON02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_BPlayOFF02",$ConfigFadeTime,0,null,false);
				}
				case Config1a_BPlayOFF{
					#SYSTEM_sound_bgm=false;
					Fade("Config1a_BPlayON02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_BPlayOFF02",$ConfigFadeTime,1000,null,false);
				}

..				//��ӣŤ���������
				case Config1a_SPlayON{
					#SYSTEM_sound_se=true;
					Fade("Config1a_SPlayON02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_SPlayOFF02",$ConfigFadeTime,0,null,false);
				}
				case Config1a_SPlayOFF{
					#SYSTEM_sound_se=false;
					Fade("Config1a_SPlayON02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_SPlayOFF02",$ConfigFadeTime,1000,null,false);
				}

..				//����������������
				case Config1a_VPlayON{
					#SYSTEM_sound_voice=true;
					Fade("Config1a_VPlayON02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_VPlayOFF02",$ConfigFadeTime,0,null,false);
				}
				case Config1a_VPlayOFF{
					#SYSTEM_sound_voice=false;
					Fade("Config1a_VPlayON02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_VPlayOFF02",$ConfigFadeTime,1000,null,false);
				}

..				//��ץ쥤���ԩ`��
				case Config1a_PSpeed{
					#play_speed_plus=Integer((1-ScrollbarValue("Config1a_PSpeed"))*12);
					SetVolume("@Config1a_PSpeed_Pro01/MouseOver/sound", 0, 0, NULL);
					Request("Config1a_PSpeed_Pro01_sound", Stop);
					Request("Config1a_PSpeed_Pro01_sound", Play);
					Fade("@Config1a_PSpeed02", 0, 1000, null, false);
					Fade("@Config1f_PSpeed01", 0, 0, null, false);
				}case Config1a_PSpeed_Pro01{}
				Position("Config1a_PSpeed",$ConfigPSpeedX,$ConfigPSpeedY);
				if($PreConfigPSpeedY!=$ConfigPSpeedY){
					Move("@Config1a_PSpeed_Pro02/MouseUsual/hit", 0, $ConfigPSpeedX, $ConfigPSpeedY, null, false);
					Move("Config1f_PSpeed01", 0, $ConfigPSpeedX, $ConfigPSpeedY, null, false);
					Move("Config1a_PSpeed02", 0, $ConfigPSpeedX, $ConfigPSpeedY, null, false);
				}
				$PreConfigPSpeedY=$ConfigPSpeedY;

..				//���å��`�����ԩ`��
				case Config1a_MSpeed{
					#SYSTEM_text_speed=ScrollbarValue("Config1a_MSpeed")*1000;
					SetVolume("@Config1a_MSpeed_Pro01/MouseOver/sound", 0, 0, NULL);
					Request("Config1a_MSpeed_Pro01_sound", Stop);
					Request("Config1a_MSpeed_Pro01_sound", Play);
					Fade("@Config1a_MSpeed02", 0, 1000, null, false);
					Fade("@Config1f_MSpeed01", 0, 0, null, false);
				}case Config1a_MSpeed_Pro01{}
				Position("Config1a_MSpeed",$ConfigMSpeedX,$ConfigMSpeedY);
				if($PreConfigMSpeedY!=$ConfigMSpeedY){
					Move("@Config1a_MSpeed_Pro02/MouseUsual/hit", 0, $ConfigMSpeedX, $ConfigMSpeedY, null, false);
					Move("Config1f_MSpeed01", 0, $ConfigMSpeedX, $ConfigMSpeedY, null, false);
					Move("Config1a_MSpeed02", 0, $ConfigMSpeedX, $ConfigMSpeedY, null, false);
				}
				$PreConfigMSpeedY=$ConfigMSpeedY;

..				//�復����ɥ�͸�^��
				case Config1a_MTrans{
					#LOCAL_window_fade=ScrollbarValue("Config1a_MTrans")*1000;
					SetVolume("@Config1a_MTrans_Pro01/MouseOver/sound", 0, 0, NULL);
					Request("Config1a_MTrans_Pro01_sound", Stop);
					Request("Config1a_MTrans_Pro01_sound", Play);
					Fade("@Config1a_MTrans02", 0, 1000, null, false);
					Fade("@Config1f_MTrans01", 0, 0, null, false);
				}case Config1a_MTrans_Pro01{}
				Position("Config1a_MTrans",$ConfigMTransX,$ConfigMTransY);
				if($PreConfigMTransY!=$ConfigMTransY){
					Move("@Config1a_MTrans_Pro02/MouseUsual/hit", 0, $ConfigMTransX, $ConfigMTransY, null, false);
					Move("Config1f_MTrans01", 0, $ConfigMTransX, $ConfigMTransY, null, false);
					Move("Config1a_MTrans02", 0, $ConfigMTransX, $ConfigMTransY, null, false);
				}
				$PreConfigMTransY=$ConfigMTransY;

..				//���Ԅ������ͤꥹ�ԩ`��
				case Config1a_ASpeed{
					#SYSTEM_auto_wait_per_character=ScrollbarValue("Config1a_ASpeed")*200;
					SetVolume("@Config1a_ASpeed_Pro01/MouseOver/sound", 0, 0, NULL);
					Request("Config1a_ASpeed_Pro01_sound", Stop);
					Request("Config1a_ASpeed_Pro01_sound", Play);
					Fade("@Config1a_ASpeed02", 0, 1000, null, false);
					Fade("@Config1f_ASpeed01", 0, 0, null, false);
				}case Config1a_ASpeed_Pro01{}
				Position("Config1a_ASpeed",$ConfigASpeedX,$ConfigASpeedY);
				if($PreConfigASpeedY!=$ConfigASpeedY){
					Move("@Config1a_ASpeed_Pro02/MouseUsual/hit", 0, $ConfigASpeedX, $ConfigASpeedY, null, false);
					Move("Config1f_ASpeed01", 0, $ConfigASpeedX, $ConfigASpeedY, null, false);
					Move("Config1a_ASpeed02", 0, $ConfigASpeedX, $ConfigASpeedY, null, false);
				}
				$PreConfigASpeedY=$ConfigASpeedY;

..				//��£ǣͥܥ��`��
				case Config1a_BVolume{
					#SYSTEM_sound_volume_bgm=(1-ScrollbarValue("Config1a_BVolume"))*1000;
					SetVolume("@Config1a_BVolume_Pro01/MouseOver/sound", 0, 0, NULL);
					Request("Config1a_BVolume_Pro01_sound", Stop);
					Request("Config1a_BVolume_Pro01_sound", Play);
					Fade("@Config1a_BVolume02", 0, 1000, null, false);
					Fade("@Config1f_BVolume01", 0, 0, null, false);
				}case Config1a_BVolume_Pro01{}
				Position("Config1a_BVolume",$ConfigBVolumeX,$ConfigBVolumeY);
				if($PreConfigBVolumeY!=$ConfigBVolumeY){
					Move("@Config1a_BVolume_Pro02/MouseUsual/hit", 0, $ConfigBVolumeX, $ConfigBVolumeY, null, false);
					Move("Config1f_BVolume01", 0, $ConfigBVolumeX, $ConfigBVolumeY, null, false);
					Move("Config1a_BVolume02", 0, $ConfigBVolumeX, $ConfigBVolumeY, null, false);
				}
				$PreConfigBVolumeY=$ConfigBVolumeY;

..				//��ӣťܥ��`��
				case Config1a_SVolume{
					#SYSTEM_sound_volume_se=(1-ScrollbarValue("Config1a_SVolume"))*1000;
					SetVolume("@Config1a_SVolume_Pro01/MouseOver/sound", 0, 0, NULL);
					Request("Config1a_SVolume_Pro01_sound", Stop);
					Request("Config1a_SVolume_Pro01_sound", Play);
					Fade("@Config1a_SVolume02", 0, 1000, null, false);
					Fade("@Config1f_SVolume01", 0, 0, null, false);
				}case Config1a_SVolume_Pro01{}
				Position("Config1a_SVolume",$ConfigSVolumeX,$ConfigSVolumeY);
				if($PreConfigSVolumeY!=$ConfigSVolumeY){
					Move("@Config1a_SVolume_Pro02/MouseUsual/hit", 0, $ConfigSVolumeX, $ConfigSVolumeY, null, false);
					Move("Config1f_SVolume01", 0, $ConfigSVolumeX, $ConfigSVolumeY, null, false);
					Move("Config1a_SVolume02", 0, $ConfigSVolumeX, $ConfigSVolumeY, null, false);
				}
				$PreConfigSVolumeY=$ConfigSVolumeY;

..				//�������ܥ��`��
				case Config1a_VVolume{
					#SYSTEM_sound_volume_voice=(1-ScrollbarValue("Config1a_VVolume"))*1000;
					SetVolume("@Config1a_VVolume_Pro01/MouseOver/sound", 0, 0, NULL);
					Request("Config1a_VVolume_Pro01_sound", Stop);
					Request("Config1a_VVolume_Pro01_sound", Play);
					Fade("@Config1a_VVolume02", 0, 1000, null, false);
					Fade("@Config1f_VVolume01", 0, 0, null, false);
				}case Config1a_VVolume_Pro01{}
				Position("Config1a_VVolume",$ConfigVVolumeX,$ConfigVVolumeY);
				if($PreConfigVVolumeY!=$ConfigVVolumeY){
					Move("@Config1a_VVolume_Pro02/MouseUsual/hit", 0, $ConfigVVolumeX, $ConfigVVolumeY, null, false);
					Move("Config1f_VVolume01", 0, $ConfigVVolumeX, $ConfigVVolumeY, null, false);
					Move("Config1a_VVolume02", 0, $ConfigVVolumeX, $ConfigVVolumeY, null, false);
				}
				$PreConfigVVolumeY=$ConfigVVolumeY;

..				//�省��饯���`�ܥ���
				case Config1a_CV_Achara{
					#voice_skip_Achara=!#voice_skip_Achara;
					if(!#voice_skip_Achara){
						Fade("Config1a_CV_Achara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Achara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Bchara{
					#voice_skip_Bchara=!#voice_skip_Bchara;
					if(!#voice_skip_Bchara){
						Fade("Config1a_CV_Bchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Bchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Cchara{
					#voice_skip_Cchara=!#voice_skip_Cchara;
					if(!#voice_skip_Cchara){
						Fade("Config1a_CV_Cchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Cchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Dchara{
					#voice_skip_Dchara=!#voice_skip_Dchara;
					if(!#voice_skip_Dchara){
						Fade("Config1a_CV_Dchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Dchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Echara{
					#voice_skip_Echara=!#voice_skip_Echara;
					if(!#voice_skip_Echara){
						Fade("Config1a_CV_Echara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Echara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Fchara{
					#voice_skip_Fchara=!#voice_skip_Fchara;
					if(!#voice_skip_Fchara){
						Fade("Config1a_CV_Fchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Fchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Gchara{
					#voice_skip_Gchara=!#voice_skip_Gchara;
					if(!#voice_skip_Gchara){
						Fade("Config1a_CV_Gchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Gchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Hchara{
					#voice_skip_Hchara=!#voice_skip_Hchara;
					if(!#voice_skip_Hchara){
						Fade("Config1a_CV_Hchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Hchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Ichara{
					#voice_skip_Ichara=!#voice_skip_Ichara;
					if(!#voice_skip_Ichara){
						Fade("Config1a_CV_Ichara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Ichara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Jchara{
					#voice_skip_Jchara=!#voice_skip_Jchara;
					if(!#voice_skip_Jchara){
						Fade("Config1a_CV_Jchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Jchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Kchara{
					#voice_skip_Kchara=!#voice_skip_Kchara;
					if(!#voice_skip_Kchara){
						Fade("Config1a_CV_Kchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Kchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Lchara{
					#voice_skip_Lchara=!#voice_skip_Lchara;
					if(!#voice_skip_Lchara){
						Fade("Config1a_CV_Lchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Lchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Mchara{
					#voice_skip_Mchara=!#voice_skip_Mchara;
					if(!#voice_skip_Mchara){
						Fade("Config1a_CV_Mchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Mchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Nchara{
					#voice_skip_Nchara=!#voice_skip_Nchara;
					if(!#voice_skip_Nchara){
						Fade("Config1a_CV_Nchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Nchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Ochara{
					#voice_skip_Ochara=!#voice_skip_Ochara;
					if(!#voice_skip_Ochara){
						Fade("Config1a_CV_Ochara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Ochara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Pchara{
					#voice_skip_Pchara=!#voice_skip_Pchara;
					if(!#voice_skip_Pchara){
						Fade("Config1a_CV_Pchara02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Pchara02",$ConfigFadeTime,0,null,false);
					}
				}case Config1a_CV_Other{
					#SYSTEM_voice_enable_another=!#SYSTEM_voice_enable_another;
					if(#SYSTEM_voice_enable_another){
						Fade("Config1a_CV_Other02",$ConfigFadeTime,1000,null,false);
					}else{
						Fade("Config1a_CV_Other02",$ConfigFadeTime,0,null,false);
					}
				}

..				//�異���ڥ��ȱ��Ԅ��O��
				case Config1a_AAutoON{
					#LOCAL_aspect_in=true;
					#LOCAL_aspect_auto=true;
					if(EnableDirect3DHAL()){
						#SYSTEM_video_aspect_fixed=1;
						#old_video_aspect_fixed=1;
						Fade("Config1a_ARatioHW02",$ConfigFadeTime,1000,null,false);
						Fade("Config1a_ARatioNN02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_ARatioBR02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_FAspectON02",$ConfigFadeTime,1000,null,false);
						Fade("Config1a_FAspectOFF02",$ConfigFadeTime,0,null,false);
					}else{
						#SYSTEM_video_aspect_fixed=3;
						#old_video_aspect_fixed=3;
						Fade("Config1a_ARatioHW02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_ARatioNN02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_ARatioBR02",$ConfigFadeTime,1000,null,false);
						Fade("Config1a_FAspectON02",$ConfigFadeTime,1000,null,false);
						Fade("Config1a_FAspectOFF02",$ConfigFadeTime,0,null,false);
					}
					Fade("Config1a_AAutoON02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_AAutoOFF02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_FAspectON03",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_FAspectOFF03",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_ARatioHW03",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_ARatioNN03",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_ARatioBR03",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_Way01",$ConfigFadeTime,0,null,false);
					Fade("Config1a_Way03",$ConfigFadeTime,1000,null,false);
				}
				case Config1a_AAutoOFF{
					#LOCAL_aspect_in=true;
					#LOCAL_aspect_auto=false;
					Fade("Config1a_AAutoON02",$ConfigFadeTime,0,null,false);
					Fade("Config1a_AAutoOFF02",$ConfigFadeTime,1000,null,false);
					Fade("Config1a_FAspectON03",$ConfigFadeTime,0,null,false);
					Fade("Config1a_FAspectOFF03",$ConfigFadeTime,0,null,false);
					Fade("Config1a_ARatioHW03",$ConfigFadeTime,0,null,false);
					Fade("Config1a_ARatioNN03",$ConfigFadeTime,0,null,false);
					Fade("Config1a_ARatioBR03",$ConfigFadeTime,0,null,false);
					Fade("Config1a_Way03",$ConfigFadeTime,0,null,false);
				}


..				//�異���ڥ��ȱȹ̶�
				if(!#LOCAL_aspect_auto){
					case Config1a_FAspectON{
						Fade("Config1a_FAspectON02",$ConfigFadeTime,1000,null,false);
						Fade("Config1a_FAspectOFF02",$ConfigFadeTime,0,null,false);
						if(#old_video_aspect_fixed==1){
							#SYSTEM_video_aspect_fixed=1;
							Fade("Config1a_ARatioHW02",$ConfigFadeTime,1000,null,false);
						}else if(#old_video_aspect_fixed==2){
							#SYSTEM_video_aspect_fixed=2;
							Fade("Config1a_ARatioNN02",$ConfigFadeTime,1000,null,false);
						}else if(#old_video_aspect_fixed==3){
							#SYSTEM_video_aspect_fixed=3;
							Fade("Config1a_ARatioBR02",$ConfigFadeTime,1000,null,false);
						}else{
							if(!#old_video_aspect_fixed&&EnableDirect3DHAL()){
								#SYSTEM_video_aspect_fixed=1;
								#old_video_aspect_fixed=1;
								Fade("Config1a_ARatioHW02",$ConfigFadeTime,1000,null,false);
							}else{
								#SYSTEM_video_aspect_fixed=2;
								#old_video_aspect_fixed=2;
								Fade("Config1a_ARatioNN02",$ConfigFadeTime,1000,null,false);
							}
						}
						Fade("Config1a_Way01",$ConfigFadeTime,0,null,false);
					}
					case Config1a_FAspectOFF{
						#SYSTEM_video_aspect_fixed=0;
						if(#SYSTEM_window_full){Wait(1000);}
						Fade("Config1a_ARatioHW02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_ARatioNN02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_ARatioBR02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_FAspectON02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_FAspectOFF02",$ConfigFadeTime,1000,null,false);
						Fade("Config1a_Way01",$ConfigFadeTime,1000,null,false);
					}
					case Config1a_ARatioHW{
						if(EnableDirect3DHAL()){
							#SYSTEM_video_aspect_fixed=1;
							#old_video_aspect_fixed=1;
							Fade("Config1a_ARatioHW02",$ConfigFadeTime,1000,null,false);
							Fade("Config1a_ARatioNN02",$ConfigFadeTime,0,null,false);
							Fade("Config1a_ARatioBR02",$ConfigFadeTime,0,null,false);
							Fade("Config1a_FAspectON02",$ConfigFadeTime,1000,null,false);
							Fade("Config1a_FAspectOFF02",$ConfigFadeTime,0,null,false);
							Fade("Config1a_Way01",$ConfigFadeTime,0,null,false);
						}else{
							Message("��ע��","�F�ڤΥޥ���h���Ǥϡ����ϩ`�ɥ������a�꡹�Ϥ����äˤʤ�ޤ���",OK,EXCLAMATION);
						}
					}
					case Config1a_ARatioNN{
						#SYSTEM_video_aspect_fixed=2;
						#old_video_aspect_fixed=2;
						Fade("Config1a_ARatioHW02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_ARatioNN02",$ConfigFadeTime,1000,null,false);
						Fade("Config1a_ARatioBR02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_FAspectON02",$ConfigFadeTime,1000,null,false);
						Fade("Config1a_FAspectOFF02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_Way01",$ConfigFadeTime,0,null,false);
					}
					case Config1a_ARatioBR{
						#SYSTEM_video_aspect_fixed=3;
						#old_video_aspect_fixed=3;
						Fade("Config1a_ARatioHW02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_ARatioNN02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_ARatioBR02",$ConfigFadeTime,1000,null,false);
						Fade("Config1a_FAspectON02",$ConfigFadeTime,1000,null,false);
						Fade("Config1a_FAspectOFF02",$ConfigFadeTime,0,null,false);
						Fade("Config1a_Way01",$ConfigFadeTime,0,null,false);
					}
				}

..				//�凉�ȥ�`�����
				case Config1a_Storage{ConfigStorageInit();}
..				//�������e��
				case Config1a_Action{ConfigVoiceSet();ConfigVoiceSelect();}
..				//�������ƥ���
				case Config1a_Test{ConfigVoiceTest();}
..				//���`���`���h
				case Config1a_You{
					#SYSTEM_window_full=false;
					System("OPEN:http://www.otomedream.com/thread-615263-1-1.html", "", "");
				}
..				//��CR���`��
				case Config1a_QRc{
					#SYSTEM_window_full=false;
					System("OPEN:http://www.otomedream.com", "", "");
				}
..				//��HP
				case Config1a_Com{
					#SYSTEM_window_full=false;
					System("OPEN:http://www.otomedream.com", "", "");
				}

				if(!$SYSTEM_menu_config_enable){break;}
/*
				CreateText("�ƥ����ȣ�", 2000000, 50, 210, Auto, Auto, #SYSTEM_play_speed);
				CreateText("�ƥ����ȣ�", 2000000, 50, 240, Auto, Auto, #SYSTEM_text_speed);
				CreateText("�ƥ����ȣ�", 2000000, 50, 270, Auto, Auto, #SYSTEM_auto_wait_per_character);
				CreateText("�ƥ����ȣ���", 2000000, 50, 300, Auto, Auto, #SYSTEM_sound_volume_bgm);
				CreateText("�ƥ����ȣ���", 2000000, 50, 330, Auto, Auto, #SYSTEM_sound_volume_se);
				CreateText("�ƥ����ȣ���", 2000000, 50, 360, Auto, Auto, #SYSTEM_sound_volume_voice);

				CreateText("�ƥ����ȣ���", 2000000, 150, 360, Auto, Auto, $ConfigPSpeedY);
*/

//				Wait(16);//������`��Щ`��ؤ�����
				Draw();

			}
		}else{
			break;
		}

		if(Platform()==100){
			//���h��
			ConfigMoveStart();
			$LOCAL_XBOX360_button_left_down=false;$LOCAL_XBOX360_button_right_down=false;
			$LOCAL_XBOX360_button_up_down=false;$LOCAL_XBOX360_button_down_down=false;
			$SYSTEM_XBOX360_button_left_down=false;$SYSTEM_XBOX360_button_right_down=false;
			$SYSTEM_XBOX360_button_up_down=false;$SYSTEM_XBOX360_button_down_down=false;
		}else{
			//���ե��`�����{��
			if(#LOCAL_aspect_in){
				ConfigFocus();
			}
			#LOCAL_aspect_in=false;
		}
	}
}

//=============================================================================//
.//���ͥ����ȥե��`����������
//=============================================================================//
..//�I�������
function ConfigMoveStart()
{
	//������å�
	//XBOX360_LockVideo(true);

	//Fade("Config9f_bar", 0, 1000, null, false);

	if($ConX>=$ConfigMSpeedX_E1&&$ConX<=$ConfigMSpeedX_E2&&$ConY>=$ConfigMSpeedY_E1&&$ConY<=$ConfigMSpeedY_E2){
		//������å��`�����ԩ`�ɡ�
		if($LOCAL_XBOX360_button_up_down){
			//������o��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigMTrans();//�񡸥�����ɥ�͸�^�ȡ�
		}else if($LOCAL_XBOX360_button_left_down){
			//������o��
		}else if($LOCAL_XBOX360_button_right_down){
			//������o��
		}
	}else if($ConX>=$ConfigMTransX_E1&&$ConX<=$ConfigMTransX_E2&&$ConY>=$ConfigMTransY_E1&&$ConY<=$ConfigMTransY_E2){
		//����������ɥ�͸�^�ȡ�
		if($LOCAL_XBOX360_button_up_down){
			ConfigMSpeed();//�񡸥�å��`�����ԩ`�ɡ�
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCSkipOn();//���x�k֫����Ԅ������ͤ꣦�����åפ���on��
		}else if($LOCAL_XBOX360_button_left_down){
			//������o��
		}else if($LOCAL_XBOX360_button_right_down){
			//������o��
		}
	}else if($ConX>=$ConfigCSkipOnX_E1&&$ConX<=$ConfigCSkipOnX_E2&&$ConY>=$ConfigCSkipOnY_E1&&$ConY<=$ConfigCSkipOnY_E2){
		//�����x�k֫����Ԅ������ͤ꣦�����åפ���on��
		if($LOCAL_XBOX360_button_up_down){
			ConfigMTrans();//�񡸥�����ɥ�͸�^�ȡ�
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigASkipOn();//��δ�i�r�Ǥ⥹���åפ��룿on��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCSkipOff();//���x�k֫����Ԅ������ͤ꣦�����åפ���off��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCSkipOff();//���x�k֫����Ԅ������ͤ꣦�����åפ���off��
		}
	}else if($ConX>=$ConfigCSkipOffX_E1&&$ConX<=$ConfigCSkipOffX_E2&&$ConY>=$ConfigCSkipOffY_E1&&$ConY<=$ConfigCSkipOffY_E2){
		//�����x�k֫����Ԅ������ͤ꣦�����åפ���off��
		if($LOCAL_XBOX360_button_up_down){
			ConfigMTrans();//�񡸥�����ɥ�͸�^�ȡ�
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigASkipOff();//��δ�i�r�Ǥ⥹���åפ��룿off��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCSkipOn();//���x�k֫����Ԅ������ͤ꣦�����åפ���on��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCSkipOn();//���x�k֫����Ԅ������ͤ꣦�����åפ���on��
		}
	}else if($ConX>=$ConfigASkipOnX_E1&&$ConX<=$ConfigASkipOnX_E2&&$ConY>=$ConfigASkipOnY_E1&&$ConY<=$ConfigASkipOnY_E2){
		//����δ�i�r�Ǥ⥹���åפ��룿on��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCSkipOn();//���x�k֫����Ԅ������ͤ꣦�����åפ���on��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigKVoiceOn();//�������ͤ�r�������O��on��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigASkipOff();//��δ�i�r�Ǥ⥹���åפ��룿off��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigASkipOff();//��δ�i�r�Ǥ⥹���åפ��룿off��
		}
	}else if($ConX>=$ConfigASkipOffX_E1&&$ConX<=$ConfigASkipOffX_E2&&$ConY>=$ConfigASkipOffY_E1&&$ConY<=$ConfigASkipOffY_E2){
		//����δ�i�r�Ǥ⥹���åפ��룿off��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCSkipOff();//���x�k֫����Ԅ������ͤ꣦�����åפ���off��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigKVoiceOff();//�������ͤ�r�������O��off��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigASkipOn();//��δ�i�r�Ǥ⥹���åפ��룿on��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigASkipOn();//��δ�i�r�Ǥ⥹���åפ��룿on��
		}
	}else if($ConX>=$ConfigKVoiceOnX_E1&&$ConX<=$ConfigKVoiceOnX_E2&&$ConY>=$ConfigKVoiceOnY_E1&&$ConY<=$ConfigKVoiceOnY_E2){
		//���������ͤ�r�������O��on��
		if($LOCAL_XBOX360_button_up_down){
			ConfigASkipOn();//��δ�i�r�Ǥ⥹���åפ��룿on��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigASpeed();//���Ԅ������ͤꥹ�ԩ`�ɡ�
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigKVoiceOff();//�������ͤ�r�������O��off��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigKVoiceOff();//�������ͤ�r�������O��off��
		}
	}else if($ConX>=$ConfigKVoiceOffX_E1&&$ConX<=$ConfigKVoiceOffX_E2&&$ConY>=$ConfigKVoiceOffY_E1&&$ConY<=$ConfigKVoiceOffY_E2){
		//���������ͤ�r�������O��off��
		if($LOCAL_XBOX360_button_up_down){
			ConfigASkipOff();//��δ�i�r�Ǥ⥹���åפ��룿off��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigASpeed();//���Ԅ������ͤꥹ�ԩ`�ɡ�
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigKVoiceOn();//�������ͤ�r�������O��on��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigKVoiceOn();//�������ͤ�r�������O��on��
		}
	}else if($ConX>=$ConfigASpeedX_E1&&$ConX<=$ConfigASpeedX_E2&&$ConY>=$ConfigASpeedY_E1&&$ConY<=$ConfigASpeedY_E2){
		//�����Ԅ������ͤꥹ�ԩ`�ɡ�
		if($LOCAL_XBOX360_button_up_down){
			ConfigKVoiceOn();//�������ͤ�r�������O��on��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigSVoiceOn();//���Ԅ������ͤ�r�������O��on��
		}else if($LOCAL_XBOX360_button_left_down){
			//������o��
		}else if($LOCAL_XBOX360_button_right_down){
			//������o��
		}
	}else if($ConX>=$ConfigSVoiceOnX_E1&&$ConX<=$ConfigSVoiceOnX_E2&&$ConY>=$ConfigSVoiceOnY_E1&&$ConY<=$ConfigSVoiceOnY_E2){
		//�����Ԅ������ͤ�r�������O��on��
		if($LOCAL_XBOX360_button_up_down){
			ConfigASpeed();//���Ԅ������ͤꥹ�ԩ`�ɡ�
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigBPlayOn();//�񡸣£ǣͤ���������on��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigSVoiceOff();//���Ԅ������ͤ�r�������O��off��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigSVoiceOff();//���Ԅ������ͤ�r�������O��off��
		}
	}else if($ConX>=$ConfigSVoiceOffX_E1&&$ConX<=$ConfigSVoiceOffX_E2&&$ConY>=$ConfigSVoiceOffY_E1&&$ConY<=$ConfigSVoiceOffY_E2){
		//�����Ԅ������ͤ�r�������O��off��
		if($LOCAL_XBOX360_button_up_down){
			ConfigASpeed();//���Ԅ������ͤꥹ�ԩ`�ɡ�
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigBPlayOff();//�񡸣£ǣͤ���������off��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigSVoiceOn();//���Ԅ������ͤ�r�������O��on��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigSVoiceOn();//���Ԅ������ͤ�r�������O��on��
		}
	}else if($ConX>=$ConfigBPlayOnX_E1&&$ConX<=$ConfigBPlayOnX_E2&&$ConY>=$ConfigBPlayOnY_E1&&$ConY<=$ConfigBPlayOnY_E2){
		//�����£ǣͤ���������on��
		if($LOCAL_XBOX360_button_up_down){
			ConfigSVoiceOn();//���Ԅ������ͤ�r�������O��on��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigBVolume();//�񡸣£ǣͥܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigBPlayOff();//�񡸣£ǣͤ���������off��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigBPlayOff();//�񡸣£ǣͤ���������off��
		}
	}else if($ConX>=$ConfigBPlayOffX_E1&&$ConX<=$ConfigBPlayOffX_E2&&$ConY>=$ConfigBPlayOffY_E1&&$ConY<=$ConfigBPlayOffY_E2){
		//�����£ǣͤ���������off��
		if($LOCAL_XBOX360_button_up_down){
			ConfigSVoiceOff();//���Ԅ������ͤ�r�������O��off��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigBVolume();//�񡸣£ǣͥܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigBPlayOn();//�񡸣£ǣͤ���������on��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigBPlayOn();//�񡸣£ǣͤ���������on��
		}
	}else if($ConX>=$ConfigBVolumeX_E1&&$ConX<=$ConfigBVolumeX_E2&&$ConY>=$ConfigBVolumeY_E1&&$ConY<=$ConfigBVolumeY_E2){
		//�����£ǣͥܥ��`�ࡹ
		if($LOCAL_XBOX360_button_up_down){
			ConfigBPlayOn();//�񡸣£ǣͤ���������on��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigSPlayOn();//�񡸣ӣŤ���������on��
		}else if($LOCAL_XBOX360_button_left_down){
			//������o��
		}else if($LOCAL_XBOX360_button_right_down){
			//������o��
		}
	}else if($ConX>=$ConfigSPlayOnX_E1&&$ConX<=$ConfigSPlayOnX_E2&&$ConY>=$ConfigSPlayOnY_E1&&$ConY<=$ConfigSPlayOnY_E2){
		//�����ӣŤ���������on��
		if($LOCAL_XBOX360_button_up_down){
			ConfigBVolume();//�񡸣£ǣͥܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigSVolume();//�񡸣ӣťܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigSPlayOff();//�񡸣ӣŤ���������off��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigSPlayOff();//�񡸣ӣŤ���������off��
		}
	}else if($ConX>=$ConfigSPlayOffX_E1&&$ConX<=$ConfigSPlayOffX_E2&&$ConY>=$ConfigSPlayOffY_E1&&$ConY<=$ConfigSPlayOffY_E2){
		//�����ӣŤ���������off��
		if($LOCAL_XBOX360_button_up_down){
			ConfigBVolume();//�񡸣£ǣͥܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigSVolume();//�񡸣ӣťܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigSPlayOn();//�񡸣ӣŤ���������on��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigSPlayOn();//�񡸣ӣŤ���������on��
		}
	}else if($ConX>=$ConfigSVolumeX_E1&&$ConX<=$ConfigSVolumeX_E2&&$ConY>=$ConfigSVolumeY_E1&&$ConY<=$ConfigSVolumeY_E2){
		//�����ӣťܥ��`�ࡹ
		if($LOCAL_XBOX360_button_up_down){
			ConfigSPlayOn();//�񡸣ӣŤ���������on��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigVPlayOn();//����������������on��
		}else if($LOCAL_XBOX360_button_left_down){
			//������o��
		}else if($LOCAL_XBOX360_button_right_down){
			//������o��
		}
	}else if($ConX>=$ConfigVPlayOnX_E1&&$ConX<=$ConfigVPlayOnX_E2&&$ConY>=$ConfigVPlayOnY_E1&&$ConY<=$ConfigVPlayOnY_E2){
		//������������������on��
		if($LOCAL_XBOX360_button_up_down){
			ConfigSVolume();//�񡸣ӣťܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigVVolume();//�������ܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigVPlayOff();//����������������off��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigVPlayOff();//����������������off��
		}
	}else if($ConX>=$ConfigVPlayOffX_E1&&$ConX<=$ConfigVPlayOffX_E2&&$ConY>=$ConfigVPlayOffY_E1&&$ConY<=$ConfigVPlayOffY_E2){
		//������������������off��
		if($LOCAL_XBOX360_button_up_down){
			ConfigSVolume();//�񡸣ӣťܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigVVolume();//�������ܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigVPlayOn();//����������������on��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigVPlayOn();//����������������on��
		}
	}else if($ConX>=$ConfigVVolumeX_E1&&$ConX<=$ConfigVVolumeX_E2&&$ConY>=$ConfigVVolumeY_E1&&$ConY<=$ConfigVVolumeY_E2){
		//���������ܥ��`�ࡹ
		if($LOCAL_XBOX360_button_up_down){
			ConfigVPlayOn();//����������������on��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Achara();//�񡸣ã֣�Achara��
		}else if($LOCAL_XBOX360_button_left_down){
			//������o��
		}else if($LOCAL_XBOX360_button_right_down){
			//������o��
		}
	}else if($ConX>=$ConfigCV_AcharaX_E1&&$ConX<=$ConfigCV_AcharaX_E2&&$ConY>=$ConfigCV_AcharaY_E1&&$ConY<=$ConfigCV_AcharaY_E2){
		//�����ã֣�Achara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigVVolume();//�������ܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Hchara();//�񡸣ã֣�Hchara��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Gchara();//�񡸣ã֣�Gchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Bchara();//�񡸣ã֣�Bchara��
		}
	}else if($ConX>=$ConfigCV_BcharaX_E1&&$ConX<=$ConfigCV_BcharaX_E2&&$ConY>=$ConfigCV_BcharaY_E1&&$ConY<=$ConfigCV_BcharaY_E2){
		//�����ã֣�Bchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigVVolume();//�������ܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Ichara();//�񡸣ã֣�Ichara��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Achara();//�񡸣ã֣�Achara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Cchara();//�񡸣ã֣�Cchara��
		}
	}else if($ConX>=$ConfigCV_CcharaX_E1&&$ConX<=$ConfigCV_CcharaX_E2&&$ConY>=$ConfigCV_CcharaY_E1&&$ConY<=$ConfigCV_CcharaY_E2){
		//�����ã֣�Cchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigVVolume();//�������ܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Jchara();//�񡸣ã֣�Jchara��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Bchara();//�񡸣ã֣�Bchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Dchara();//�񡸣ã֣�Dchara��
		}
	}else if($ConX>=$ConfigCV_DcharaX_E1&&$ConX<=$ConfigCV_DcharaX_E2&&$ConY>=$ConfigCV_DcharaY_E1&&$ConY<=$ConfigCV_DcharaY_E2){
		//�����ã֣�Dchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigVVolume();//�������ܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Kchara();//�񡸣ã֣�Kchara��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Cchara();//�񡸣ã֣�Cchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Echara();//�񡸣ã֣�Echara��
		}
	}else if($ConX>=$ConfigCV_EcharaX_E1&&$ConX<=$ConfigCV_EcharaX_E2&&$ConY>=$ConfigCV_EcharaY_E1&&$ConY<=$ConfigCV_EcharaY_E2){
		//�����ã֣�Echara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigVVolume();//�������ܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Lchara();//�񡸣ã֣�Lchara��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Dchara();//�񡸣ã֣�Dchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Fchara();//�񡸣ã֣�Fchara��
		}
	}else if($ConX>=$ConfigCV_FcharaX_E1&&$ConX<=$ConfigCV_FcharaX_E2&&$ConY>=$ConfigCV_FcharaY_E1&&$ConY<=$ConfigCV_FcharaY_E2){
		//�����ã֣�Fchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigVVolume();//�������ܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Mchara();//�񡸣ã֣�Mchara��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Echara();//�񡸣ã֣�Echara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Gchara();//�񡸣ã֣�Gchara��
		}
	}else if($ConX>=$ConfigCV_GcharaX_E1&&$ConX<=$ConfigCV_GcharaX_E2&&$ConY>=$ConfigCV_GcharaY_E1&&$ConY<=$ConfigCV_GcharaY_E2){
		//�����ã֣�Gchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigVVolume();//�������ܥ��`�ࡹ
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Nchara();//�񡸣ã֣�Nchara��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Fchara();//�񡸣ã֣�Fchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Achara();//�񡸣ã֣�Achara��
		}
	}else if($ConX>=$ConfigCV_HcharaX_E1&&$ConX<=$ConfigCV_HcharaX_E2&&$ConY>=$ConfigCV_HcharaY_E1&&$ConY<=$ConfigCV_HcharaY_E2){
		//�����ã֣�Hchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Achara();//�񡸣ã֣�Achara��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Ochara();//�񡸣ã֣�Ochara��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Nchara();//�񡸣ã֣�Nchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Ichara();//�񡸣ã֣�Ichara��
		}
	}else if($ConX>=$ConfigCV_IcharaX_E1&&$ConX<=$ConfigCV_IcharaX_E2&&$ConY>=$ConfigCV_IcharaY_E1&&$ConY<=$ConfigCV_IcharaY_E2){
		//�����ã֣�Ichara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Bchara();//�񡸣ã֣�Bchara��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Pchara();//�񡸣ã֣�Pchara��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Hchara();//�񡸣ã֣�Hchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Jchara();//�񡸣ã֣�Jchara��
		}
	}else if($ConX>=$ConfigCV_JcharaX_E1&&$ConX<=$ConfigCV_JcharaX_E2&&$ConY>=$ConfigCV_JcharaY_E1&&$ConY<=$ConfigCV_JcharaY_E2){
		//�����ã֣�Jchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Cchara();//�񡸣ã֣�Cchara��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigCV_Other();//�񡸣ã֣�Other��
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Ichara();//�񡸣ã֣�Ichara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Kchara();//�񡸣ã֣�Kchara��
		}
	}else if($ConX>=$ConfigCV_KcharaX_E1&&$ConX<=$ConfigCV_KcharaX_E2&&$ConY>=$ConfigCV_KcharaY_E1&&$ConY<=$ConfigCV_KcharaY_E2){
		//�����ã֣�Kchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Dchara();//�񡸣ã֣�Dchara��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigStorage();//�񡸥��ȥ�`�������
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Jchara();//�񡸣ã֣�Jchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Lchara();//�񡸣ã֣�Lchara��
		}
	}else if($ConX>=$ConfigCV_LcharaX_E1&&$ConX<=$ConfigCV_LcharaX_E2&&$ConY>=$ConfigCV_LcharaY_E1&&$ConY<=$ConfigCV_LcharaY_E2){
		//�����ã֣�Lchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Echara();//�񡸣ã֣�Echara��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigStorage();//�񡸥��ȥ�`�������
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Kchara();//�񡸣ã֣�Kchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Mchara();//�񡸣ã֣�Mchara��
		}
	}else if($ConX>=$ConfigCV_McharaX_E1&&$ConX<=$ConfigCV_McharaX_E2&&$ConY>=$ConfigCV_McharaY_E1&&$ConY<=$ConfigCV_McharaY_E2){
		//�����ã֣�Mchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Fchara();//�񡸣ã֣�Fchara��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigStorage();//�񡸥��ȥ�`�������
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Lchara();//�񡸣ã֣�Lchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Nchara();//�񡸣ã֣�Nchara��
		}
	}else if($ConX>=$ConfigCV_NcharaX_E1&&$ConX<=$ConfigCV_NcharaX_E2&&$ConY>=$ConfigCV_NcharaY_E1&&$ConY<=$ConfigCV_NcharaY_E2){
		//�����ã֣�Nchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Gchara();//�񡸣ã֣�Gchara��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigStorage();//�񡸥��ȥ�`�������
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Mchara();//�񡸣ã֣�Mchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Hchara();//�񡸣ã֣�Hchara��
		}
	}else if($ConX>=$ConfigCV_OcharaX_E1&&$ConX<=$ConfigCV_OcharaX_E2&&$ConY>=$ConfigCV_OcharaY_E1&&$ConY<=$ConfigCV_OcharaY_E2){
		//�����ã֣�Ochara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Hchara();//�񡸣ã֣�Hchara��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigStorage();//�񡸥��ȥ�`�������
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Other();//�񡸣ã֣�Other��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Pchara();//�񡸣ã֣�Pchara��
		}
	}else if($ConX>=$ConfigCV_PcharaX_E1&&$ConX<=$ConfigCV_PcharaX_E2&&$ConY>=$ConfigCV_PcharaY_E1&&$ConY<=$ConfigCV_PcharaY_E2){
		//�����ã֣�Pchara��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Ichara();//�񡸣ã֣�Ichara��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigStorage();//�񡸥��ȥ�`�������
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Ochara();//�񡸣ã֣�Ochara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Other();//�񡸣ã֣�Other��
		}
	}else if($ConX>=$ConfigCV_OtherX_E1&&$ConX<=$ConfigCV_OtherX_E2&&$ConY>=$ConfigCV_OtherY_E1&&$ConY<=$ConfigCV_OtherY_E2){
		//�����ã֣�Other��
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Jchara();//�񡸣ã֣�Jchara��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigStorage();//�񡸥��ȥ�`�������
		}else if($LOCAL_XBOX360_button_left_down){
			ConfigCV_Pchara();//�񡸣ã֣�Pchara��
		}else if($LOCAL_XBOX360_button_right_down){
			ConfigCV_Ochara();//�񡸣ã֣�Ochara��
		}
	}else if($ConX>=$ConfigStorageX_E1&&$ConX<=$ConfigStorageX_E2&&$ConY>=$ConfigStorageY_E1&&$ConY<=$ConfigStorageY_E2){
		//�������ȥ�`�������
		if($LOCAL_XBOX360_button_up_down){
			ConfigCV_Other();//�񡸣ã֣�Other��
		}else if($LOCAL_XBOX360_button_down_down){
			ConfigDefault();//�񡸳��ڻ���
		}else if($LOCAL_XBOX360_button_left_down){
			//������o��
		}else if($LOCAL_XBOX360_button_right_down){
			//������o��
		}
	}else if($ConX>=$ConfigDefaultX_E1&&$ConX<=$ConfigDefaultX_E2&&$ConY>=$ConfigDefaultY_E1&&$ConY<=$ConfigDefaultY_E2){
		//�������ڻ���
		if($LOCAL_XBOX360_button_up_down){
			ConfigStorage();//�񡸥��ȥ�`�������
		}else if($LOCAL_XBOX360_button_down_down){
			//ConfigExit();//�񡸳��ڡ�
		}else if($LOCAL_XBOX360_button_left_down){
			//������o��
		}else if($LOCAL_XBOX360_button_right_down){
			//������o��
		}
	}else if($ConX>=$ConfigExitX_E1&&$ConX<=$ConfigExitX_E2&&$ConY>=$ConfigExitY_E1&&$ConY<=$ConfigExitY_E2){
		//�������ڡ�
		if($LOCAL_XBOX360_button_up_down){
			ConfigDefault();//�񡸳��ڻ���
		}else if($LOCAL_XBOX360_button_down_down){
			//������o��
		}else if($LOCAL_XBOX360_button_left_down){
			//������o��
		}else if($LOCAL_XBOX360_button_right_down){
			//������o��
		}
	}

	CursorPosition($ConX,$ConY);

	//����異���å�
	XBOX360_LockVideo(false);

	if($ConfigPhase==1){
		if($ConX>=$ConfigBPlayOnX_E1&&$ConX<=$ConfigBPlayOnX_E2&&$ConY>=$ConfigBPlayOnY_E1&&$ConY<=$ConfigBPlayOnY_E2){
			//�����£ǣͤ���������on��
			$ConfigMove=-360;
			Fade("Config1*/MouseOver/*", 0, 0, null, false);
			Move("Config1*/*/*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config1*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config9f_bar", 250, @0, @$ConfigMove, Dxl1, false);
			$ConfigPhase=2;
			Wait(250);
			//������å�
			XBOX360_LockVideo(true);
			ConfigMovePage();
			ConfigBPlayOn();//�񡸣£ǣͤ���������on��
			//����異���å�
			XBOX360_LockVideo(false);
		}else if($ConX>=$ConfigBPlayOffX_E1&&$ConX<=$ConfigBPlayOffX_E2&&$ConY>=$ConfigBPlayOffY_E1&&$ConY<=$ConfigBPlayOffY_E2){
			//�����£ǣͤ���������off��
			$ConfigMove=-360;
			Fade("Config1*/MouseOver/*", 0, 0, null, false);
			Move("Config1*/*/*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config1*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config9f_bar", 250, @0, @$ConfigMove, Dxl1, false);
			$ConfigPhase=2;
			Wait(250);
			//������å�
			XBOX360_LockVideo(true);
			ConfigMovePage();
			ConfigBPlayOff();//�񡸣£ǣͤ���������off��
			//����異���å�
			XBOX360_LockVideo(false);
		}
	}else if($ConfigPhase==2){
		if($ConX>=$ConfigSVoiceOnX_E1&&$ConX<=$ConfigSVoiceOnX_E2&&$ConY>=$ConfigSVoiceOnY_E1&&$ConY<=$ConfigSVoiceOnY_E2){
			//�����Ԅ������ͤ�r�������O��on��
			$ConfigMove=360;
			Fade("Config1*/MouseOver/*", 0, 0, null, false);
			Move("Config1*/*/*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config1*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config9f_bar", 250, @0, @$ConfigMove, Dxl1, false);
			$ConfigPhase=1;
			Wait(250);
			//������å�
			XBOX360_LockVideo(true);
			ConfigMovePage();
			ConfigSVoiceOn();//���Ԅ������ͤ�r�������O��on��
			//����異���å�
			XBOX360_LockVideo(false);
		}else if($ConX>=$ConfigSVoiceOffX_E1&&$ConX<=$ConfigSVoiceOffX_E2&&$ConY>=$ConfigSVoiceOffY_E1&&$ConY<=$ConfigSVoiceOffY_E2){
			//�����Ԅ������ͤ�r�������O��off��
			$ConfigMove=360;
			Fade("Config1*/MouseOver/*", 0, 0, null, false);
			Move("Config1*/*/*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config1*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config9f_bar", 250, @0, @$ConfigMove, Dxl1, false);
			$ConfigPhase=1;
			Wait(250);
			//������å�
			XBOX360_LockVideo(true);
			ConfigMovePage();
			ConfigSVoiceOff();//���Ԅ������ͤ�r�������O��off��
			//����異���å�
			XBOX360_LockVideo(false);
		}else if($ConX>=$ConfigCV_AcharaX_E1&&$ConX<=$ConfigCV_AcharaX_E2&&$ConY>=$ConfigCV_AcharaY_E1&&$ConY<=$ConfigCV_AcharaY_E2){
			//�����ã֣�Achara��
			$ConfigMove=-320;
				Fade("Config1a_VVolume02", 0, 0, null, false);
				Fade("Config1f_VVolume01", 0, 1000, null, false);
			Fade("Config1*/MouseOver/*", 0, 0, null, false);
			Move("Config1*/*/*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config1*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config9f_bar", 250, @0, @$ConfigMove, Dxl1, false);
			$ConfigPhase=3;
			Wait(250);
			//������å�
			XBOX360_LockVideo(true);
			ConfigMovePage();
			ConfigCV_Achara();//�񡸣ã֣�Achara��
			//����異���å�
			XBOX360_LockVideo(false);
		}
	}else if($ConfigPhase==3){
		if($ConX>=$ConfigVVolumeX_E1&&$ConX<=$ConfigVVolumeX_E2&&$ConY>=$ConfigVVolumeY_E1&&$ConY<=$ConfigVVolumeY_E2){
			//���������ܥ��`�ࡹ
			$ConfigMove=320;
			Fade("Config1*/MouseOver/*", 0, 0, null, false);
			Move("Config1*/*/*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config1*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config9f_bar", 250, @0, @$ConfigMove, Dxl1, false);
			$ConfigPhase=2;
			Wait(250);
			//������å�
			XBOX360_LockVideo(true);
			ConfigMovePage();
			ConfigVVolume();//�������ܥ��`�ࡹ
			//����異���å�
			XBOX360_LockVideo(false);
		}else if($ConX>=$ConfigStorageX_E1&&$ConX<=$ConfigStorageX_E2&&$ConY>=$ConfigStorageY_E1&&$ConY<=$ConfigStorageY_E2){
			//�������ȥ�`�������
			$ConfigMove=-200;
			Fade("Config1*/MouseOver/*", 0, 0, null, false);
			Move("Config1*/*/*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config1*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config9f_bar", 250, @0, @$ConfigMove, Dxl1, false);
			$ConfigPhase=4;
			Wait(250);
			//������å�
			XBOX360_LockVideo(true);
			ConfigMovePage();
			ConfigStorage();//�񡸥��ȥ�`�������
			//����異���å�
			XBOX360_LockVideo(false);
		}
	}else if($ConfigPhase==4){
		if($ConX>=$ConfigCV_OtherX_E1&&$ConX<=$ConfigCV_OtherX_E2&&$ConY>=$ConfigCV_OtherY_E1&&$ConY<=$ConfigCV_OtherY_E2){
			//�����ã֣�Other��
			$ConfigMove=200;
			Fade("Config1*/MouseOver/*", 0, 0, null, false);
			Move("Config1*/*/*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config1*", 250, @0, @$ConfigMove, Dxl1, false);
			Move("Config9f_bar", 250, @0, @$ConfigMove, Dxl1, false);
			$ConfigPhase=3;
			Wait(250);
			//������å�
			XBOX360_LockVideo(true);
			ConfigMovePage();
			ConfigCV_Other();//�񡸣ã֣�Other��
			//����異���å�
			XBOX360_LockVideo(false);
		}else if($ConX>=$ConfigExitX_E1&&$ConX<=$ConfigExitX_E2&&$ConY>=$ConfigExitY_E1&&$ConY<=$ConfigExitY_E2){
			//�������ڡ�
			Fade("Config9f_bar", 200, 0, null, false);
		}
	}
}

..//���`�Щ`�r�Β���
function ConfigPSpeed()
{
	$ConfigNumber=0;
	Position("Config1f_PSpeed01",$ConfigPSpeedX,$ConfigPSpeedY);
	$ConfigPSpeedY_M=$ConfigMSpeedY+($ConfigPSpeedV/2);

	MoveCursor($ConfigPSpeedX_M,$ConfigPSpeedY_M);
	Move("Config9f_bar", 0, @0, $ConfigPSpeedBar, null, false);
}
function ConfigMSpeed()
{
	$ConfigNumber=1;
	Position("Config1f_MSpeed01",$ConfigMSpeedX,$ConfigMSpeedY);
	$ConfigMSpeedX_M=$ConfigMSpeedX+($ConfigMSpeedH/2);

	MoveCursor($ConfigMSpeedX_M,$ConfigMSpeedY_M);
	Move("Config9f_bar", 0, @0, $ConfigMSpeedBar, null, false);
}
function ConfigMTrans()
{
	$ConfigNumber=2;
	Position("Config1f_MTrans01",$ConfigMTransX,$ConfigMTransY);
	$ConfigMTransX_M=$ConfigMTransX+($ConfigMTransH/2);

	MoveCursor($ConfigMTransX_M,$ConfigMTransY_M);
	Move("Config9f_bar", 0, @0, $ConfigMTransBar, null, false);
}
function ConfigCSkipOn()
{
	$ConfigNumber=3;
	MoveCursor($ConfigCSkipOnX_M,$ConfigCSkipOnY_M);
	Move("Config9f_bar", 0, @0, $ConfigCSkipOnBar, null, false);
}
function ConfigCSkipOff()
{
	$ConfigNumber=4;
	MoveCursor($ConfigCSkipOffX_M,$ConfigCSkipOffY_M);
	Move("Config9f_bar", 0, @0, $ConfigCSkipOffBar, null, false);
}
function ConfigASkipOn()
{
	$ConfigNumber=5;
	MoveCursor($ConfigASkipOnX_M,$ConfigASkipOnY_M);
	Move("Config9f_bar", 0, @0, $ConfigASkipOnBar, null, false);
}
function ConfigASkipOff()
{
	$ConfigNumber=6;
	MoveCursor($ConfigASkipOffX_M,$ConfigASkipOffY_M);
	Move("Config9f_bar", 0, @0, $ConfigASkipOffBar, null, false);
}
function ConfigKVoiceOn()
{
	$ConfigNumber=7;
	MoveCursor($ConfigKVoiceOnX_M,$ConfigKVoiceOnY_M);
	Move("Config9f_bar", 0, @0, $ConfigKVoiceOnBar, null, false);
}
function ConfigKVoiceOff()
{
	$ConfigNumber=8;
	MoveCursor($ConfigKVoiceOffX_M,$ConfigKVoiceOffY_M);
	Move("Config9f_bar", 0, @0, $ConfigKVoiceOffBar, null, false);
}
function ConfigASpeed()
{
	$ConfigNumber=9;
	Position("Config1f_ASpeed01",$ConfigASpeedX,$ConfigASpeedY);
	$ConfigASpeedX_M=$ConfigASpeedX+($ConfigASpeedH/2);
	MoveCursor($ConfigASpeedX_M,$ConfigASpeedY_M);
	Move("Config9f_bar", 0, @0, $ConfigASpeedBar, null, false);
}
function ConfigSVoiceOn()
{
	$ConfigNumber=10;
	MoveCursor($ConfigSVoiceOnX_M,$ConfigSVoiceOnY_M);
	Move("Config9f_bar", 0, @0, $ConfigSVoiceOnBar, null, false);
}
function ConfigSVoiceOff()
{
	$ConfigNumber=11;
	MoveCursor($ConfigSVoiceOffX_M,$ConfigSVoiceOffY_M);
	Move("Config9f_bar", 0, @0, $ConfigSVoiceOffBar, null, false);
}
function ConfigBPlayOn()
{
	$ConfigNumber=12;
	MoveCursor($ConfigBPlayOnX_M,$ConfigBPlayOnY_M);
	Move("Config9f_bar", 0, @0, $ConfigBPlayOnBar, null, false);
}
function ConfigBPlayOff()
{
	$ConfigNumber=13;
	MoveCursor($ConfigBPlayOffX_M,$ConfigBPlayOffY_M);
	Move("Config9f_bar", 0, @0, $ConfigBPlayOffBar, null, false);
}
function ConfigBVolume()
{
	$ConfigNumber=14;
	Position("Config1f_BVolume01",$ConfigBVolumeX,$ConfigBVolumeY);
	$ConfigBVolumeX_M=$ConfigBVolumeX+($ConfigBVolumeH/2);
	MoveCursor($ConfigBVolumeX_M,$ConfigBVolumeY_M);
	Move("Config9f_bar", 0, @0, $ConfigBVolumeBar, null, false);
}
function ConfigSPlayOn()
{
	$ConfigNumber=15;
	MoveCursor($ConfigSPlayOnX_M,$ConfigSPlayOnY_M);
	Move("Config9f_bar", 0, @0, $ConfigSPlayOnBar, null, false);
}
function ConfigSPlayOff()
{
	$ConfigNumber=16;
	MoveCursor($ConfigSPlayOffX_M,$ConfigSPlayOffY_M);
	Move("Config9f_bar", 0, @0, $ConfigSPlayOffBar, null, false);
}
function ConfigSVolume()
{
	$ConfigNumber=17;
	Position("Config1f_SVolume01",$ConfigSVolumeX,$ConfigSVolumeY);
	$ConfigSVolumeX_M=$ConfigSVolumeX+($ConfigSVolumeH/2);
	MoveCursor($ConfigSVolumeX_M,$ConfigSVolumeY_M);
	Move("Config9f_bar", 0, @0, $ConfigSVolumeBar, null, false);
}
function ConfigVPlayOn()
{
	$ConfigNumber=18;
	MoveCursor($ConfigVPlayOnX_M,$ConfigVPlayOnY_M);
	Move("Config9f_bar", 0, @0, $ConfigVPlayOnBar, null, false);
}
function ConfigVPlayOff()
{
	$ConfigNumber=19;
	MoveCursor($ConfigVPlayOffX_M,$ConfigVPlayOffY_M);
	Move("Config9f_bar", 0, @0, $ConfigVPlayOffBar, null, false);
}
function ConfigVVolume()
{
	$ConfigNumber=20;
	Position("Config1f_VVolume01",$ConfigVVolumeX,$ConfigVVolumeY);
	$ConfigVVolumeX_M=$ConfigVVolumeX+($ConfigVVolumeH/2);
	MoveCursor($ConfigVVolumeX_M,$ConfigVVolumeY_M);
	Move("Config9f_bar", 0, @0, $ConfigVVolumeBar, null, false);
}
function ConfigCV_Achara()
{
	$ConfigNumber=21;
	MoveCursor($ConfigCV_AcharaX_M,$ConfigCV_AcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_AcharaBar, null, false);
}
function ConfigCV_Bchara()
{
	$ConfigNumber=22;
	MoveCursor($ConfigCV_BcharaX_M,$ConfigCV_BcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_BcharaBar, null, false);
}
function ConfigCV_Cchara()
{
	$ConfigNumber=23;
	MoveCursor($ConfigCV_CcharaX_M,$ConfigCV_CcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_CcharaBar, null, false);
}
function ConfigCV_Dchara()
{
	$ConfigNumber=24;
	MoveCursor($ConfigCV_DcharaX_M,$ConfigCV_DcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_DcharaBar, null, false);
}
function ConfigCV_Echara()
{
	$ConfigNumber=25;
	MoveCursor($ConfigCV_EcharaX_M,$ConfigCV_EcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_EcharaBar, null, false);
}
function ConfigCV_Fchara()
{
	$ConfigNumber=26;
	MoveCursor($ConfigCV_FcharaX_M,$ConfigCV_FcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_FcharaBar, null, false);
}
function ConfigCV_Gchara()
{
	$ConfigNumber=27;
	MoveCursor($ConfigCV_GcharaX_M,$ConfigCV_GcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_GcharaBar, null, false);
}
function ConfigCV_Hchara()
{
	$ConfigNumber=28;
	MoveCursor($ConfigCV_HcharaX_M,$ConfigCV_HcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_HcharaBar, null, false);
}
function ConfigCV_Ichara()
{
	$ConfigNumber=29;
	MoveCursor($ConfigCV_IcharaX_M,$ConfigCV_IcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_IcharaBar, null, false);
}
function ConfigCV_Jchara()
{
	$ConfigNumber=30;
	MoveCursor($ConfigCV_JcharaX_M,$ConfigCV_JcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_JcharaBar, null, false);
}
function ConfigCV_Kchara()
{
	$ConfigNumber=31;
	MoveCursor($ConfigCV_KcharaX_M,$ConfigCV_KcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_KcharaBar, null, false);
}
function ConfigCV_Lchara()
{
	$ConfigNumber=32;
	MoveCursor($ConfigCV_LcharaX_M,$ConfigCV_LcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_LcharaBar, null, false);
}
function ConfigCV_Mchara()
{
	$ConfigNumber=33;
	MoveCursor($ConfigCV_McharaX_M,$ConfigCV_McharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_McharaBar, null, false);
}
function ConfigCV_Nchara()
{
	$ConfigNumber=34;
	MoveCursor($ConfigCV_NcharaX_M,$ConfigCV_NcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_NcharaBar, null, false);
}
function ConfigCV_Ochara()
{
	$ConfigNumber=35;
	MoveCursor($ConfigCV_OcharaX_M,$ConfigCV_OcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_OcharaBar, null, false);
}
function ConfigCV_Pchara()
{
	$ConfigNumber=36;
	MoveCursor($ConfigCV_PcharaX_M,$ConfigCV_PcharaY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_PcharaBar, null, false);
}
function ConfigCV_Other()
{
	$ConfigNumber=37;
	MoveCursor($ConfigCV_OtherX_M,$ConfigCV_OtherY_M);
	Move("Config9f_bar", 0, @0, $ConfigCV_OtherBar, null, false);
}
function ConfigStorage()
{
	$ConfigNumber=38;
	MoveCursor($ConfigStorageX_M,$ConfigStorageY_M);
	Move("Config9f_bar", 0, @0, $ConfigStorageBar, null, false);
}
function ConfigDefault()
{
	$ConfigNumber=39;
	MoveCursor($ConfigDefaultX_M,$ConfigDefaultY_M);
	Move("Config9f_bar", 0, @0, $ConfigDefaultBar, null, false);
}
function ConfigExit()
{
	$ConfigNumber=40;
	MoveCursor($ConfigExitX_M,$ConfigExitY_M);
	Move("Config9f_bar", 0, @0, $ConfigExitBar, null, false);
}



..//�ک`���Ƅ����O������ز�Ҫ��
function ConfigMovePage()
{
	//�����x����å��`�����ԩ`�ɡ�
	$ConfigMSpeedY_E1=$ConfigMSpeedY_E1+$ConfigMove;
	$ConfigMSpeedY_E2=$ConfigMSpeedY_E1+$ConfigMSpeedV;
	$ConfigMSpeedY_M=$ConfigMSpeedY_M+$ConfigMove;
	$ConfigMSpeedBar=$ConfigMSpeedBar+$ConfigMove;
	//�����x��������ɥ�͸�^�ȡ�
	$ConfigMTransY_E1=$ConfigMTransY_E1+$ConfigMove;
	$ConfigMTransY_E2=$ConfigMTransY_E1+$ConfigMTransV;
	$ConfigMTransY_M=$ConfigMTransY_M+$ConfigMove;
	$ConfigMTransBar=$ConfigMTransBar+$ConfigMove;
	//�����x���x�k֫����Ԅ������ͤ꣦�����åפ�����
	$ConfigCSkipOnY_E1=$ConfigCSkipOnY_E1+$ConfigMove;
	$ConfigCSkipOnY_E2=$ConfigCSkipOnY_E1+$ConfigCSkipOnV;
	$ConfigCSkipOnY_M=$ConfigCSkipOnY_M+$ConfigMove;
	$ConfigCSkipOnBar=$ConfigCSkipOnBar+$ConfigMove;
	$ConfigCSkipOffY_E1=$ConfigCSkipOffY_E1+$ConfigMove;
	$ConfigCSkipOffY_E2=$ConfigCSkipOffY_E1+$ConfigCSkipOffV;
	$ConfigCSkipOffY_M=$ConfigCSkipOffY_M+$ConfigMove;
	$ConfigCSkipOffBar=$ConfigCSkipOffBar+$ConfigMove;
	//�����x��δ�i�r�Ǥ⥹���åפ��룿��
	$ConfigASkipOnY_E1=$ConfigASkipOnY_E1+$ConfigMove;
	$ConfigASkipOnY_E2=$ConfigASkipOnY_E1+$ConfigASkipOnV;
	$ConfigASkipOnY_M=$ConfigASkipOnY_M+$ConfigMove;
	$ConfigASkipOnBar=$ConfigASkipOnBar+$ConfigMove;
	$ConfigASkipOffY_E1=$ConfigASkipOffY_E1+$ConfigMove;
	$ConfigASkipOffY_E2=$ConfigASkipOffY_E1+$ConfigASkipOffV;
	$ConfigASkipOffY_M=$ConfigASkipOffY_M+$ConfigMove;
	$ConfigASkipOffBar=$ConfigASkipOffBar+$ConfigMove;
	//�����x�������ͤ�r�������O����
	$ConfigKVoiceOnY_E1=$ConfigKVoiceOnY_E1+$ConfigMove;
	$ConfigKVoiceOnY_E2=$ConfigKVoiceOnY_E1+$ConfigKVoiceOnV;
	$ConfigKVoiceOnY_M=$ConfigKVoiceOnY_M+$ConfigMove;
	$ConfigKVoiceOnBar=$ConfigKVoiceOnBar+$ConfigMove;
	$ConfigKVoiceOffY_E1=$ConfigKVoiceOffY_E1+$ConfigMove;
	$ConfigKVoiceOffY_E2=$ConfigKVoiceOffY_E1+$ConfigKVoiceOffV;
	$ConfigKVoiceOffY_M=$ConfigKVoiceOffY_M+$ConfigMove;
	$ConfigKVoiceOffBar=$ConfigKVoiceOffBar+$ConfigMove;
	//�����x���Ԅ������ͤꥹ�ԩ`�ɡ�
	$ConfigASpeedY_E1=$ConfigASpeedY_E1+$ConfigMove;
	$ConfigASpeedY_E2=$ConfigASpeedY_E1+$ConfigASpeedV;
	$ConfigASpeedY_M=$ConfigASpeedY_M+$ConfigMove;
	$ConfigASpeedBar=$ConfigASpeedBar+$ConfigMove;
	//�����x���Ԅ������ͤ�r�������O����
	$ConfigSVoiceOnY_E1=$ConfigSVoiceOnY_E1+$ConfigMove;
	$ConfigSVoiceOnY_E2=$ConfigSVoiceOnY_E1+$ConfigSVoiceOnV;
	$ConfigSVoiceOnY_M=$ConfigSVoiceOnY_M+$ConfigMove;
	$ConfigSVoiceOnBar=$ConfigSVoiceOnBar+$ConfigMove;
	$ConfigSVoiceOffY_E1=$ConfigSVoiceOffY_E1+$ConfigMove;
	$ConfigSVoiceOffY_E2=$ConfigSVoiceOffY_E1+$ConfigSVoiceOffV;
	$ConfigSVoiceOffY_M=$ConfigSVoiceOffY_M+$ConfigMove;
	$ConfigSVoiceOffBar=$ConfigSVoiceOffBar+$ConfigMove;
	//�����x���£ǣͤ��������롹
	$ConfigBPlayOnY_E1=$ConfigBPlayOnY_E1+$ConfigMove;
	$ConfigBPlayOnY_E2=$ConfigBPlayOnY_E1+$ConfigBPlayOnV;
	$ConfigBPlayOnY_M=$ConfigBPlayOnY_M+$ConfigMove;
	$ConfigBPlayOnBar=$ConfigBPlayOnBar+$ConfigMove;
	$ConfigBPlayOffY_E1=$ConfigBPlayOffY_E1+$ConfigMove;
	$ConfigBPlayOffY_E2=$ConfigBPlayOffY_E1+$ConfigBPlayOffV;
	$ConfigBPlayOffY_M=$ConfigBPlayOffY_M+$ConfigMove;
	$ConfigBPlayOffBar=$ConfigBPlayOffBar+$ConfigMove;
	//�����x���ӣŤ��������롹
	$ConfigSPlayOnY_E1=$ConfigSPlayOnY_E1+$ConfigMove;
	$ConfigSPlayOnY_E2=$ConfigSPlayOnY_E1+$ConfigSPlayOnV;
	$ConfigSPlayOnY_M=$ConfigSPlayOnY_M+$ConfigMove;
	$ConfigSPlayOnBar=$ConfigSPlayOnBar+$ConfigMove;
	$ConfigSPlayOffY_E1=$ConfigSPlayOffY_E1+$ConfigMove;
	$ConfigSPlayOffY_E2=$ConfigSPlayOffY_E1+$ConfigSPlayOffV;
	$ConfigSPlayOffY_M=$ConfigSPlayOffY_M+$ConfigMove;
	$ConfigSPlayOffBar=$ConfigSPlayOffBar+$ConfigMove;
	//�����x���������������롹
	$ConfigVPlayOnY_E1=$ConfigVPlayOnY_E1+$ConfigMove;
	$ConfigVPlayOnY_E2=$ConfigVPlayOnY_E1+$ConfigVPlayOnV;
	$ConfigVPlayOnY_M=$ConfigVPlayOnY_M+$ConfigMove;
	$ConfigVPlayOnBar=$ConfigVPlayOnBar+$ConfigMove;
	$ConfigVPlayOffY_E1=$ConfigVPlayOffY_E1+$ConfigMove;
	$ConfigVPlayOffY_E2=$ConfigVPlayOffY_E1+$ConfigVPlayOffV;
	$ConfigVPlayOffY_M=$ConfigVPlayOffY_M+$ConfigMove;
	$ConfigVPlayOffBar=$ConfigVPlayOffBar+$ConfigMove;
	//�����x���£ǣͥܥ��`�ࡹ
	$ConfigBVolumeY_E1=$ConfigBVolumeY_E1+$ConfigMove;
	$ConfigBVolumeY_E2=$ConfigBVolumeY_E1+$ConfigBVolumeV;
	$ConfigBVolumeY_M=$ConfigBVolumeY_M+$ConfigMove;
	$ConfigBVolumeBar=$ConfigBVolumeBar+$ConfigMove;
	//�����x���ӣťܥ��`�ࡹ
	$ConfigSVolumeY_E1=$ConfigSVolumeY_E1+$ConfigMove;
	$ConfigSVolumeY_E2=$ConfigSVolumeY_E1+$ConfigSVolumeV;
	$ConfigSVolumeY_M=$ConfigSVolumeY_M+$ConfigMove;
	$ConfigSVolumeBar=$ConfigSVolumeBar+$ConfigMove;
	//�����x�������ܥ��`�ࡹ
	$ConfigVVolumeY_E1=$ConfigVVolumeY_E1+$ConfigMove;
	$ConfigVVolumeY_E2=$ConfigVVolumeY_E1+$ConfigVVolumeV;
	$ConfigVVolumeY_M=$ConfigVVolumeY_M+$ConfigMove;
	$ConfigVVolumeBar=$ConfigVVolumeBar+$ConfigMove;
	//�����x���ã֣�Achara��
	$ConfigCV_AcharaY_E1=$ConfigCV_AcharaY_E1+$ConfigMove;
	$ConfigCV_AcharaY_E2=$ConfigCV_AcharaY_E1+$ConfigCV_AcharaV;
	$ConfigCV_AcharaY_M=$ConfigCV_AcharaY_M+$ConfigMove;
	$ConfigCV_AcharaBar=$ConfigCV_AcharaBar+$ConfigMove;
	//�����x���ã֣�Bchara��
	$ConfigCV_BcharaY_E1=$ConfigCV_BcharaY_E1+$ConfigMove;
	$ConfigCV_BcharaY_E2=$ConfigCV_BcharaY_E1+$ConfigCV_BcharaV;
	$ConfigCV_BcharaY_M=$ConfigCV_BcharaY_M+$ConfigMove;
	$ConfigCV_BcharaBar=$ConfigCV_BcharaBar+$ConfigMove;
	//�����x���ã֣�Cchara��
	$ConfigCV_CcharaY_E1=$ConfigCV_CcharaY_E1+$ConfigMove;
	$ConfigCV_CcharaY_E2=$ConfigCV_CcharaY_E1+$ConfigCV_CcharaV;
	$ConfigCV_CcharaY_M=$ConfigCV_CcharaY_M+$ConfigMove;
	$ConfigCV_CcharaBar=$ConfigCV_CcharaBar+$ConfigMove;
	//�����x���ã֣�Dchara��
	$ConfigCV_DcharaY_E1=$ConfigCV_DcharaY_E1+$ConfigMove;
	$ConfigCV_DcharaY_E2=$ConfigCV_DcharaY_E1+$ConfigCV_DcharaV;
	$ConfigCV_DcharaY_M=$ConfigCV_DcharaY_M+$ConfigMove;
	$ConfigCV_DcharaBar=$ConfigCV_DcharaBar+$ConfigMove;
	//�����x���ã֣�Echara��
	$ConfigCV_EcharaY_E1=$ConfigCV_EcharaY_E1+$ConfigMove;
	$ConfigCV_EcharaY_E2=$ConfigCV_EcharaY_E1+$ConfigCV_EcharaV;
	$ConfigCV_EcharaY_M=$ConfigCV_EcharaY_M+$ConfigMove;
	$ConfigCV_EcharaBar=$ConfigCV_EcharaBar+$ConfigMove;
	//�����x���ã֣�Fchara��
	$ConfigCV_FcharaY_E1=$ConfigCV_FcharaY_E1+$ConfigMove;
	$ConfigCV_FcharaY_E2=$ConfigCV_FcharaY_E1+$ConfigCV_FcharaV;
	$ConfigCV_FcharaY_M=$ConfigCV_FcharaY_M+$ConfigMove;
	$ConfigCV_FcharaBar=$ConfigCV_FcharaBar+$ConfigMove;
	//�����x���ã֣�Gchara��
	$ConfigCV_GcharaY_E1=$ConfigCV_GcharaY_E1+$ConfigMove;
	$ConfigCV_GcharaY_E2=$ConfigCV_GcharaY_E1+$ConfigCV_GcharaV;
	$ConfigCV_GcharaY_M=$ConfigCV_GcharaY_M+$ConfigMove;
	$ConfigCV_GcharaBar=$ConfigCV_GcharaBar+$ConfigMove;
	//�����x���ã֣�Hchara��
	$ConfigCV_HcharaY_E1=$ConfigCV_HcharaY_E1+$ConfigMove;
	$ConfigCV_HcharaY_E2=$ConfigCV_HcharaY_E1+$ConfigCV_HcharaV;
	$ConfigCV_HcharaY_M=$ConfigCV_HcharaY_M+$ConfigMove;
	$ConfigCV_HcharaBar=$ConfigCV_HcharaBar+$ConfigMove;
	//�����x���ã֣�Ichara��
	$ConfigCV_IcharaY_E1=$ConfigCV_IcharaY_E1+$ConfigMove;
	$ConfigCV_IcharaY_E2=$ConfigCV_IcharaY_E1+$ConfigCV_IcharaV;
	$ConfigCV_IcharaY_M=$ConfigCV_IcharaY_M+$ConfigMove;
	$ConfigCV_IcharaBar=$ConfigCV_IcharaBar+$ConfigMove;
	//�����x���ã֣�Jchara��
	$ConfigCV_JcharaY_E1=$ConfigCV_JcharaY_E1+$ConfigMove;
	$ConfigCV_JcharaY_E2=$ConfigCV_JcharaY_E1+$ConfigCV_JcharaV;
	$ConfigCV_JcharaY_M=$ConfigCV_JcharaY_M+$ConfigMove;
	$ConfigCV_JcharaBar=$ConfigCV_JcharaBar+$ConfigMove;
	//�����x���ã֣�Kchara��
	$ConfigCV_KcharaY_E1=$ConfigCV_KcharaY_E1+$ConfigMove;
	$ConfigCV_KcharaY_E2=$ConfigCV_KcharaY_E1+$ConfigCV_KcharaV;
	$ConfigCV_KcharaY_M=$ConfigCV_KcharaY_M+$ConfigMove;
	$ConfigCV_KcharaBar=$ConfigCV_KcharaBar+$ConfigMove;
	//�����x���ã֣�Lchara��
	$ConfigCV_LcharaY_E1=$ConfigCV_LcharaY_E1+$ConfigMove;
	$ConfigCV_LcharaY_E2=$ConfigCV_LcharaY_E1+$ConfigCV_LcharaV;
	$ConfigCV_LcharaY_M=$ConfigCV_LcharaY_M+$ConfigMove;
	$ConfigCV_LcharaBar=$ConfigCV_LcharaBar+$ConfigMove;
	//�����x���ã֣�Mchara��
	$ConfigCV_McharaY_E1=$ConfigCV_McharaY_E1+$ConfigMove;
	$ConfigCV_McharaY_E2=$ConfigCV_McharaY_E1+$ConfigCV_McharaV;
	$ConfigCV_McharaY_M=$ConfigCV_McharaY_M+$ConfigMove;
	$ConfigCV_McharaBar=$ConfigCV_McharaBar+$ConfigMove;
	//�����x���ã֣�Nchara��
	$ConfigCV_NcharaY_E1=$ConfigCV_NcharaY_E1+$ConfigMove;
	$ConfigCV_NcharaY_E2=$ConfigCV_NcharaY_E1+$ConfigCV_NcharaV;
	$ConfigCV_NcharaY_M=$ConfigCV_NcharaY_M+$ConfigMove;
	$ConfigCV_NcharaBar=$ConfigCV_NcharaBar+$ConfigMove;
	//�����x���ã֣�Ochara��
	$ConfigCV_OcharaY_E1=$ConfigCV_OcharaY_E1+$ConfigMove;
	$ConfigCV_OcharaY_E2=$ConfigCV_OcharaY_E1+$ConfigCV_OcharaV;
	$ConfigCV_OcharaY_M=$ConfigCV_OcharaY_M+$ConfigMove;
	$ConfigCV_OcharaBar=$ConfigCV_OcharaBar+$ConfigMove;
	//�����x���ã֣�Pchara��
	$ConfigCV_PcharaY_E1=$ConfigCV_PcharaY_E1+$ConfigMove;
	$ConfigCV_PcharaY_E2=$ConfigCV_PcharaY_E1+$ConfigCV_PcharaV;
	$ConfigCV_PcharaY_M=$ConfigCV_PcharaY_M+$ConfigMove;
	$ConfigCV_PcharaBar=$ConfigCV_PcharaBar+$ConfigMove;
	//�����x���ã֣�Other��
	$ConfigCV_OtherY_E1=$ConfigCV_OtherY_E1+$ConfigMove;
	$ConfigCV_OtherY_E2=$ConfigCV_OtherY_E1+$ConfigCV_OtherV;
	$ConfigCV_OtherY_M=$ConfigCV_OtherY_M+$ConfigMove;
	$ConfigCV_OtherBar=$ConfigCV_OtherBar+$ConfigMove;
	//�����x�����ȥ�`�������
	$ConfigStorageY_E1=$ConfigStorageY_E1+$ConfigMove;
	$ConfigStorageY_E2=$ConfigStorageY_E1+$ConfigStorageV;
	$ConfigStorageY_M=$ConfigStorageY_M+$ConfigMove;
	$ConfigStorageBar=$ConfigStorageBar+$ConfigMove;
	//�����x�����ڻ���
	$ConfigDefaultY_E1=$ConfigDefaultY_E1+$ConfigMove;
	$ConfigDefaultY_E2=$ConfigDefaultY_E1+$ConfigDefaultV;
	$ConfigDefaultY_M=$ConfigDefaultY_M+$ConfigMove;
	$ConfigDefaultBar=$ConfigDefaultBar+$ConfigMove;
	//�����x�����ڡ�
	$ConfigExitY_E1=$ConfigExitY_E1+$ConfigMove;
	$ConfigExitY_E2=$ConfigExitY_E1+$ConfigExitV;
	$ConfigExitY_M=$ConfigExitY_M+$ConfigMove;
	$ConfigExitBar=$ConfigExitBar+$ConfigMove;
}



..//����������Β���
function ConfigMoveStart2()
{
	if($ConfigNextFlag!=0){
		if($ConfigNextFlag==1){
			MoveCursor(0,0);
			Move("Config1*/*/*", 250, @0, @-430, Dxl1, false);
			Move("Config1*", 250, @0, @-430, Dxl1, false);
			$ConfigPage=2;
			Wait(300);
			MoveCursor(980,183);
		}else if($ConfigNextFlag==2){
			MoveCursor(0,0);
			Move("Config1*/*/*", 250, @0, @-430, Dxl1, false);
			Move("Config1*", 250, @0, @-430, Dxl1, false);
			$ConfigPage=2;
			Wait(300);
			MoveCursor(1052,183);
		}else if($ConfigNextFlag==3){
			MoveCursor(0,0);
			Move("Config1*/*/*", 250, @0, @430, Dxl1, false);
			Move("Config1*", 250, @0, @430, Dxl1, false);
			$ConfigPage=1;
			Wait(300);
			MoveCursor(771,493);
		}else if($ConfigNextFlag==4){
			MoveCursor(0,0);
			Move("Config1*/*/*", 250, @0, @430, Dxl1, false);
			Move("Config1*", 250, @0, @430, Dxl1, false);
			$ConfigPage=1;
			Wait(300);
			MoveCursor(942,493);
		}else if($ConfigNextFlag==5){
			MoveCursor(0,0);
			Move("Config1*/*/*", 250, @0, @-280, Dxl1, false);
			Move("Config1*", 250, @0, @-280, Dxl1, false);
			$ConfigPage=3;
			Wait(300);
			MoveCursor(1077,421);
		}else if($ConfigNextFlag==6){
			MoveCursor(0,0);
			Move("Config1*/*/*", 250, @0, @280, Dxl1, false);
			Move("Config1*", 250, @0, @280, Dxl1, false);
			$ConfigPage=2;
			Wait(300);
			MoveCursor(465,583);
		}
		$ConfigNextFlag=0;
		ConfigFocus();
	}
}


//=============================================================================//
.//���ͥ����ȥե��`���������ڶ��x
//=============================================================================//
..//������`��λ��ȡ��
function ConfigMoveScroll()
{
	Position("Config1f_PSpeed01",$ConfigPSpeedX,$ConfigPSpeedY);
	Position("Config1f_MSpeed01",$ConfigMSpeedX,$ConfigMSpeedY);
	Position("Config1f_MTrans01",$ConfigMTransX,$ConfigMTransY);
	Position("Config1f_ASpeed01",$ConfigASpeedX,$ConfigASpeedY);
	Position("Config1f_BVolume01",$ConfigBVolumeX,$ConfigBVolumeY);
	Position("Config1f_SVolume01",$ConfigSVolumeX,$ConfigSVolumeY);
	Position("Config1f_VVolume01",$ConfigVVolumeX,$ConfigVVolumeY);
}

..//�Ƅ����O��
function ConfigMoveSet()
{
	//�����x�����`�ॹ�ԩ`�ɡ�
	$ConfigPSpeedX_E1=$ConfigPSpeedX;
	$ConfigPSpeedY_E1=$ConfigPSpeedBaseY;
	$ConfigPSpeedX_E2=$ConfigPSpeedX_E1+$ConfigPSpeedH;
	$ConfigPSpeedY_E2=$ConfigPSpeedBaseY2;
	$ConfigPSpeedX_M=$ConfigPSpeedX+($ConfigPSpeedH/2);
	$ConfigPSpeedY_M=$ConfigPSpeedY+($ConfigPSpeedV/2);

	//�����x����å��`�����ԩ`�ɡ�
	$ConfigMSpeedX_E1=$ConfigMSpeedX;
	$ConfigMSpeedY_E1=$ConfigMSpeedBaseY;
	$ConfigMSpeedX_E2=$ConfigMSpeedX_E1+$ConfigMSpeedH;
	$ConfigMSpeedY_E2=$ConfigMSpeedBaseY2;
	$ConfigMSpeedX_M=$ConfigMSpeedX+($ConfigMSpeedH/2);
	$ConfigMSpeedY_M=$ConfigMSpeedY+($ConfigMSpeedV/2);

	//�����x��������ɥ�͸�^�ȡ�
	$ConfigMTransX_E1=$ConfigMTransX;
	$ConfigMTransY_E1=$ConfigMTransBaseY;
	$ConfigMTransX_E2=$ConfigMTransX_E1+$ConfigMTransH;
	$ConfigMTransY_E2=$ConfigMTransBaseY2;
	$ConfigMTransX_M=$ConfigMTransX+($ConfigMTransH/2);
	$ConfigMTransY_M=$ConfigMTransY+($ConfigMTransV/2);

	//�����x���x�k֫����Ԅ������ͤ꣦�����åפ�����
	$ConfigCSkipOnX_E1=$ConfigCSkipX;
	$ConfigCSkipOnY_E1=$ConfigCSkipY;
	$ConfigCSkipOnX_E2=$ConfigCSkipOnX_E1+$ConfigCSkipOnH;
	$ConfigCSkipOnY_E2=$ConfigCSkipOnY_E1+$ConfigCSkipOnV;
	$ConfigCSkipOnX_M=$ConfigCSkipX+($ConfigCSkipOnH/2);
	$ConfigCSkipOnY_M=$ConfigCSkipY+($ConfigCSkipOnV/2);

	$ConfigCSkipOffX_E1=$ConfigCSkipX2;
	$ConfigCSkipOffY_E1=$ConfigCSkipY2;
	$ConfigCSkipOffX_E2=$ConfigCSkipOffX_E1+$ConfigCSkipOffH;
	$ConfigCSkipOffY_E2=$ConfigCSkipOffY_E1+$ConfigCSkipOffV;
	$ConfigCSkipOffX_M=$ConfigCSkipX2+($ConfigCSkipOffH/2);
	$ConfigCSkipOffY_M=$ConfigCSkipY2+($ConfigCSkipOffV/2);

	//�����x��δ�i�r�Ǥ⥹���åפ��룿��
	$ConfigASkipOnX_E1=$ConfigASkipX;
	$ConfigASkipOnY_E1=$ConfigASkipY;
	$ConfigASkipOnX_E2=$ConfigASkipOnX_E1+$ConfigASkipOnH;
	$ConfigASkipOnY_E2=$ConfigASkipOnY_E1+$ConfigASkipOnV;
	$ConfigASkipOnX_M=$ConfigASkipX+($ConfigASkipOnH/2);
	$ConfigASkipOnY_M=$ConfigASkipY+($ConfigASkipOnV/2);

	$ConfigASkipOffX_E1=$ConfigASkipX2;
	$ConfigASkipOffY_E1=$ConfigASkipY2;
	$ConfigASkipOffX_E2=$ConfigASkipOffX_E1+$ConfigASkipOffH;
	$ConfigASkipOffY_E2=$ConfigASkipOffY_E1+$ConfigASkipOffV;
	$ConfigASkipOffX_M=$ConfigASkipX2+($ConfigASkipOffH/2);
	$ConfigASkipOffY_M=$ConfigASkipY2+($ConfigASkipOffV/2);

	//�����x�������ͤ�r�������O����
	$ConfigKVoiceOnX_E1=$ConfigKVoiceX;
	$ConfigKVoiceOnY_E1=$ConfigKVoiceY;
	$ConfigKVoiceOnX_E2=$ConfigKVoiceOnX_E1+$ConfigKVoiceOnH;
	$ConfigKVoiceOnY_E2=$ConfigKVoiceOnY_E1+$ConfigKVoiceOnV;
	$ConfigKVoiceOnX_M=$ConfigKVoiceX+($ConfigKVoiceOnH/2);
	$ConfigKVoiceOnY_M=$ConfigKVoiceY+($ConfigKVoiceOnV/2);

	$ConfigKVoiceOffX_E1=$ConfigKVoiceX2;
	$ConfigKVoiceOffY_E1=$ConfigKVoiceY2;
	$ConfigKVoiceOffX_E2=$ConfigKVoiceOffX_E1+$ConfigKVoiceOffH;
	$ConfigKVoiceOffY_E2=$ConfigKVoiceOffY_E1+$ConfigKVoiceOffV;
	$ConfigKVoiceOffX_M=$ConfigKVoiceX2+($ConfigKVoiceOffH/2);
	$ConfigKVoiceOffY_M=$ConfigKVoiceY2+($ConfigKVoiceOffV/2);

	//�����x���Ԅ������ͤꥹ�ԩ`�ɡ�
	$ConfigASpeedX_E1=$ConfigASpeedX;
	$ConfigASpeedY_E1=$ConfigASpeedBaseY;
	$ConfigASpeedX_E2=$ConfigASpeedX_E1+$ConfigASpeedH;
	$ConfigASpeedY_E2=$ConfigASpeedBaseY2;
	$ConfigASpeedX_M=$ConfigASpeedX+($ConfigASpeedH/2);
	$ConfigASpeedY_M=$ConfigASpeedY+($ConfigASpeedV/2);

	//�����x���Ԅ������ͤ�r�������O����
	$ConfigSVoiceOnX_E1=$ConfigSVoiceX;
	$ConfigSVoiceOnY_E1=$ConfigSVoiceY;
	$ConfigSVoiceOnX_E2=$ConfigSVoiceOnX_E1+$ConfigSVoiceOnH;
	$ConfigSVoiceOnY_E2=$ConfigSVoiceOnY_E1+$ConfigSVoiceOnV;
	$ConfigSVoiceOnX_M=$ConfigSVoiceX+($ConfigSVoiceOnH/2);
	$ConfigSVoiceOnY_M=$ConfigSVoiceY+($ConfigSVoiceOnV/2);

	$ConfigSVoiceOffX_E1=$ConfigSVoiceX2;
	$ConfigSVoiceOffY_E1=$ConfigSVoiceY2;
	$ConfigSVoiceOffX_E2=$ConfigSVoiceOffX_E1+$ConfigSVoiceOffH;
	$ConfigSVoiceOffY_E2=$ConfigSVoiceOffY_E1+$ConfigSVoiceOffV;
	$ConfigSVoiceOffX_M=$ConfigSVoiceX2+($ConfigSVoiceOffH/2);
	$ConfigSVoiceOffY_M=$ConfigSVoiceY2+($ConfigSVoiceOffV/2);

	//�����x���£ǣͤ��������롹
	$ConfigBPlayOnX_E1=$ConfigBPlayX;
	$ConfigBPlayOnY_E1=$ConfigBPlayY;
	$ConfigBPlayOnX_E2=$ConfigBPlayOnX_E1+$ConfigBPlayOnH;
	$ConfigBPlayOnY_E2=$ConfigBPlayOnY_E1+$ConfigBPlayOnV;
	$ConfigBPlayOnX_M=$ConfigBPlayX+($ConfigBPlayOnH/2);
	$ConfigBPlayOnY_M=$ConfigBPlayY+($ConfigBPlayOnV/2);

	$ConfigBPlayOffX_E1=$ConfigBPlayX2;
	$ConfigBPlayOffY_E1=$ConfigBPlayY2;
	$ConfigBPlayOffX_E2=$ConfigBPlayOffX_E1+$ConfigBPlayOffH;
	$ConfigBPlayOffY_E2=$ConfigBPlayOffY_E1+$ConfigBPlayOffV;
	$ConfigBPlayOffX_M=$ConfigBPlayX2+($ConfigBPlayOffH/2);
	$ConfigBPlayOffY_M=$ConfigBPlayY2+($ConfigBPlayOffV/2);

	//�����x���ӣŤ��������롹
	$ConfigSPlayOnX_E1=$ConfigSPlayX;
	$ConfigSPlayOnY_E1=$ConfigSPlayY;
	$ConfigSPlayOnX_E2=$ConfigSPlayOnX_E1+$ConfigSPlayOnH;
	$ConfigSPlayOnY_E2=$ConfigSPlayOnY_E1+$ConfigSPlayOnV;
	$ConfigSPlayOnX_M=$ConfigSPlayX+($ConfigSPlayOnH/2);
	$ConfigSPlayOnY_M=$ConfigSPlayY+($ConfigSPlayOnV/2);

	$ConfigSPlayOffX_E1=$ConfigSPlayX2;
	$ConfigSPlayOffY_E1=$ConfigSPlayY2;
	$ConfigSPlayOffX_E2=$ConfigSPlayOffX_E1+$ConfigSPlayOffH;
	$ConfigSPlayOffY_E2=$ConfigSPlayOffY_E1+$ConfigSPlayOffV;
	$ConfigSPlayOffX_M=$ConfigSPlayX2+($ConfigSPlayOffH/2);
	$ConfigSPlayOffY_M=$ConfigSPlayY2+($ConfigSPlayOffV/2);

	//�����x���������������롹
	$ConfigVPlayOnX_E1=$ConfigVPlayX;
	$ConfigVPlayOnY_E1=$ConfigVPlayY;
	$ConfigVPlayOnX_E2=$ConfigVPlayOnX_E1+$ConfigVPlayOnH;
	$ConfigVPlayOnY_E2=$ConfigVPlayOnY_E1+$ConfigVPlayOnV;
	$ConfigVPlayOnX_M=$ConfigVPlayX+($ConfigVPlayOnH/2);
	$ConfigVPlayOnY_M=$ConfigVPlayY+($ConfigVPlayOnV/2);

	$ConfigVPlayOffX_E1=$ConfigVPlayX2;
	$ConfigVPlayOffY_E1=$ConfigVPlayY2;
	$ConfigVPlayOffX_E2=$ConfigVPlayOffX_E1+$ConfigVPlayOffH;
	$ConfigVPlayOffY_E2=$ConfigVPlayOffY_E1+$ConfigVPlayOffV;
	$ConfigVPlayOffX_M=$ConfigVPlayX2+($ConfigVPlayOffH/2);
	$ConfigVPlayOffY_M=$ConfigVPlayY2+($ConfigVPlayOffV/2);

	//�����x���£ǣͥܥ��`�ࡹ
	$ConfigBVolumeX_E1=$ConfigBVolumeX;
	$ConfigBVolumeY_E1=$ConfigBVolumeBaseY;
	$ConfigBVolumeX_E2=$ConfigBVolumeX_E1+$ConfigBVolumeH;
	$ConfigBVolumeY_E2=$ConfigBVolumeBaseY2;
	$ConfigBVolumeX_M=$ConfigBVolumeX+($ConfigBVolumeH/2);
	$ConfigBVolumeY_M=$ConfigBVolumeY+($ConfigBVolumeV/2);

	//�����x���ӣťܥ��`�ࡹ
	$ConfigSVolumeX_E1=$ConfigSVolumeX;
	$ConfigSVolumeY_E1=$ConfigSVolumeBaseY;
	$ConfigSVolumeX_E2=$ConfigSVolumeX_E1+$ConfigSVolumeH;
	$ConfigSVolumeY_E2=$ConfigSVolumeBaseY2;
	$ConfigSVolumeX_M=$ConfigSVolumeX+($ConfigSVolumeH/2);
	$ConfigSVolumeY_M=$ConfigSVolumeY+($ConfigSVolumeV/2);

	//�����x�������ܥ��`�ࡹ
	$ConfigVVolumeX_E1=$ConfigVVolumeX;
	$ConfigVVolumeY_E1=$ConfigVVolumeBaseY;
	$ConfigVVolumeX_E2=$ConfigVVolumeX_E1+$ConfigVVolumeH;
	$ConfigVVolumeY_E2=$ConfigVVolumeBaseY2;
	$ConfigVVolumeX_M=$ConfigVVolumeX+($ConfigVVolumeH/2);
	$ConfigVVolumeY_M=$ConfigVVolumeY+($ConfigVVolumeV/2);

	//�����x���ã֣�Achara��
	$ConfigCV_AcharaX_E1=$ConfigCV_AcharaX;
	$ConfigCV_AcharaY_E1=$ConfigCV_AcharaY;
	$ConfigCV_AcharaX_E2=$ConfigCV_AcharaX_E1+$ConfigCV_AcharaH;
	$ConfigCV_AcharaY_E2=$ConfigCV_AcharaY_E1+$ConfigCV_AcharaV;
	$ConfigCV_AcharaX_M=$ConfigCV_AcharaX+($ConfigCV_AcharaH/2);
	$ConfigCV_AcharaY_M=$ConfigCV_AcharaY+($ConfigCV_AcharaV/2);

	//�����x���ã֣�Bchara��
	$ConfigCV_BcharaX_E1=$ConfigCV_BcharaX;
	$ConfigCV_BcharaY_E1=$ConfigCV_BcharaY;
	$ConfigCV_BcharaX_E2=$ConfigCV_BcharaX_E1+$ConfigCV_BcharaH;
	$ConfigCV_BcharaY_E2=$ConfigCV_BcharaY_E1+$ConfigCV_BcharaV;
	$ConfigCV_BcharaX_M=$ConfigCV_BcharaX+($ConfigCV_BcharaH/2);
	$ConfigCV_BcharaY_M=$ConfigCV_BcharaY+($ConfigCV_BcharaV/2);

	//�����x���ã֣�Cchara��
	$ConfigCV_CcharaX_E1=$ConfigCV_CcharaX;
	$ConfigCV_CcharaY_E1=$ConfigCV_CcharaY;
	$ConfigCV_CcharaX_E2=$ConfigCV_CcharaX_E1+$ConfigCV_CcharaH;
	$ConfigCV_CcharaY_E2=$ConfigCV_CcharaY_E1+$ConfigCV_CcharaV;
	$ConfigCV_CcharaX_M=$ConfigCV_CcharaX+($ConfigCV_CcharaH/2);
	$ConfigCV_CcharaY_M=$ConfigCV_CcharaY+($ConfigCV_CcharaV/2);

	//�����x���ã֣�Dchara��
	$ConfigCV_DcharaX_E1=$ConfigCV_DcharaX;
	$ConfigCV_DcharaY_E1=$ConfigCV_DcharaY;
	$ConfigCV_DcharaX_E2=$ConfigCV_DcharaX_E1+$ConfigCV_DcharaH;
	$ConfigCV_DcharaY_E2=$ConfigCV_DcharaY_E1+$ConfigCV_DcharaV;
	$ConfigCV_DcharaX_M=$ConfigCV_DcharaX+($ConfigCV_DcharaH/2);
	$ConfigCV_DcharaY_M=$ConfigCV_DcharaY+($ConfigCV_DcharaV/2);

	//�����x���ã֣�Echara��
	$ConfigCV_EcharaX_E1=$ConfigCV_EcharaX;
	$ConfigCV_EcharaY_E1=$ConfigCV_EcharaY;
	$ConfigCV_EcharaX_E2=$ConfigCV_EcharaX_E1+$ConfigCV_EcharaH;
	$ConfigCV_EcharaY_E2=$ConfigCV_EcharaY_E1+$ConfigCV_EcharaV;
	$ConfigCV_EcharaX_M=$ConfigCV_EcharaX+($ConfigCV_EcharaH/2);
	$ConfigCV_EcharaY_M=$ConfigCV_EcharaY+($ConfigCV_EcharaV/2);

	//�����x���ã֣�Fchara��
	$ConfigCV_FcharaX_E1=$ConfigCV_FcharaX;
	$ConfigCV_FcharaY_E1=$ConfigCV_FcharaY;
	$ConfigCV_FcharaX_E2=$ConfigCV_FcharaX_E1+$ConfigCV_FcharaH;
	$ConfigCV_FcharaY_E2=$ConfigCV_FcharaY_E1+$ConfigCV_FcharaV;
	$ConfigCV_FcharaX_M=$ConfigCV_FcharaX+($ConfigCV_FcharaH/2);
	$ConfigCV_FcharaY_M=$ConfigCV_FcharaY+($ConfigCV_FcharaV/2);

	//�����x���ã֣�Gchara��
	$ConfigCV_GcharaX_E1=$ConfigCV_GcharaX;
	$ConfigCV_GcharaY_E1=$ConfigCV_GcharaY;
	$ConfigCV_GcharaX_E2=$ConfigCV_GcharaX_E1+$ConfigCV_GcharaH;
	$ConfigCV_GcharaY_E2=$ConfigCV_GcharaY_E1+$ConfigCV_GcharaV;
	$ConfigCV_GcharaX_M=$ConfigCV_GcharaX+($ConfigCV_GcharaH/2);
	$ConfigCV_GcharaY_M=$ConfigCV_GcharaY+($ConfigCV_GcharaV/2);

	//�����x���ã֣�Hchara��
	$ConfigCV_HcharaX_E1=$ConfigCV_HcharaX;
	$ConfigCV_HcharaY_E1=$ConfigCV_HcharaY;
	$ConfigCV_HcharaX_E2=$ConfigCV_HcharaX_E1+$ConfigCV_HcharaH;
	$ConfigCV_HcharaY_E2=$ConfigCV_HcharaY_E1+$ConfigCV_HcharaV;
	$ConfigCV_HcharaX_M=$ConfigCV_HcharaX+($ConfigCV_HcharaH/2);
	$ConfigCV_HcharaY_M=$ConfigCV_HcharaY+($ConfigCV_HcharaV/2);

	//�����x���ã֣�Ichara��
	$ConfigCV_IcharaX_E1=$ConfigCV_IcharaX;
	$ConfigCV_IcharaY_E1=$ConfigCV_IcharaY;
	$ConfigCV_IcharaX_E2=$ConfigCV_IcharaX_E1+$ConfigCV_IcharaH;
	$ConfigCV_IcharaY_E2=$ConfigCV_IcharaY_E1+$ConfigCV_IcharaV;
	$ConfigCV_IcharaX_M=$ConfigCV_IcharaX+($ConfigCV_IcharaH/2);
	$ConfigCV_IcharaY_M=$ConfigCV_IcharaY+($ConfigCV_IcharaV/2);

	//�����x���ã֣�Jchara��
	$ConfigCV_JcharaX_E1=$ConfigCV_JcharaX;
	$ConfigCV_JcharaY_E1=$ConfigCV_JcharaY;
	$ConfigCV_JcharaX_E2=$ConfigCV_JcharaX_E1+$ConfigCV_JcharaH;
	$ConfigCV_JcharaY_E2=$ConfigCV_JcharaY_E1+$ConfigCV_JcharaV;
	$ConfigCV_JcharaX_M=$ConfigCV_JcharaX+($ConfigCV_JcharaH/2);
	$ConfigCV_JcharaY_M=$ConfigCV_JcharaY+($ConfigCV_JcharaV/2);

	//�����x���ã֣�Kchara��
	$ConfigCV_KcharaX_E1=$ConfigCV_KcharaX;
	$ConfigCV_KcharaY_E1=$ConfigCV_KcharaY;
	$ConfigCV_KcharaX_E2=$ConfigCV_KcharaX_E1+$ConfigCV_KcharaH;
	$ConfigCV_KcharaY_E2=$ConfigCV_KcharaY_E1+$ConfigCV_KcharaV;
	$ConfigCV_KcharaX_M=$ConfigCV_KcharaX+($ConfigCV_KcharaH/2);
	$ConfigCV_KcharaY_M=$ConfigCV_KcharaY+($ConfigCV_KcharaV/2);

	//�����x���ã֣�Lchara��
	$ConfigCV_LcharaX_E1=$ConfigCV_LcharaX;
	$ConfigCV_LcharaY_E1=$ConfigCV_LcharaY;
	$ConfigCV_LcharaX_E2=$ConfigCV_LcharaX_E1+$ConfigCV_LcharaH;
	$ConfigCV_LcharaY_E2=$ConfigCV_LcharaY_E1+$ConfigCV_LcharaV;
	$ConfigCV_LcharaX_M=$ConfigCV_LcharaX+($ConfigCV_LcharaH/2);
	$ConfigCV_LcharaY_M=$ConfigCV_LcharaY+($ConfigCV_LcharaV/2);

	//�����x���ã֣�Mchara��
	$ConfigCV_McharaX_E1=$ConfigCV_McharaX;
	$ConfigCV_McharaY_E1=$ConfigCV_McharaY;
	$ConfigCV_McharaX_E2=$ConfigCV_McharaX_E1+$ConfigCV_McharaH;
	$ConfigCV_McharaY_E2=$ConfigCV_McharaY_E1+$ConfigCV_McharaV;
	$ConfigCV_McharaX_M=$ConfigCV_McharaX+($ConfigCV_McharaH/2);
	$ConfigCV_McharaY_M=$ConfigCV_McharaY+($ConfigCV_McharaV/2);

	//�����x���ã֣�Nchara��
	$ConfigCV_NcharaX_E1=$ConfigCV_NcharaX;
	$ConfigCV_NcharaY_E1=$ConfigCV_NcharaY;
	$ConfigCV_NcharaX_E2=$ConfigCV_NcharaX_E1+$ConfigCV_NcharaH;
	$ConfigCV_NcharaY_E2=$ConfigCV_NcharaY_E1+$ConfigCV_NcharaV;
	$ConfigCV_NcharaX_M=$ConfigCV_NcharaX+($ConfigCV_NcharaH/2);
	$ConfigCV_NcharaY_M=$ConfigCV_NcharaY+($ConfigCV_NcharaV/2);

	//�����x���ã֣�Ochara��
	$ConfigCV_OcharaX_E1=$ConfigCV_OcharaX;
	$ConfigCV_OcharaY_E1=$ConfigCV_OcharaY;
	$ConfigCV_OcharaX_E2=$ConfigCV_OcharaX_E1+$ConfigCV_OcharaH;
	$ConfigCV_OcharaY_E2=$ConfigCV_OcharaY_E1+$ConfigCV_OcharaV;
	$ConfigCV_OcharaX_M=$ConfigCV_OcharaX+($ConfigCV_OcharaH/2);
	$ConfigCV_OcharaY_M=$ConfigCV_OcharaY+($ConfigCV_OcharaV/2);

	//�����x���ã֣�Pchara��
	$ConfigCV_PcharaX_E1=$ConfigCV_PcharaX;
	$ConfigCV_PcharaY_E1=$ConfigCV_PcharaY;
	$ConfigCV_PcharaX_E2=$ConfigCV_PcharaX_E1+$ConfigCV_PcharaH;
	$ConfigCV_PcharaY_E2=$ConfigCV_PcharaY_E1+$ConfigCV_PcharaV;
	$ConfigCV_PcharaX_M=$ConfigCV_PcharaX+($ConfigCV_PcharaH/2);
	$ConfigCV_PcharaY_M=$ConfigCV_PcharaY+($ConfigCV_PcharaV/2);

	//�����x���ã֣�Other��
	$ConfigCV_OtherX_E1=$ConfigCV_OtherX;
	$ConfigCV_OtherY_E1=$ConfigCV_OtherY;
	$ConfigCV_OtherX_E2=$ConfigCV_OtherX_E1+$ConfigCV_OtherH;
	$ConfigCV_OtherY_E2=$ConfigCV_OtherY_E1+$ConfigCV_OtherV;
	$ConfigCV_OtherX_M=$ConfigCV_OtherX+($ConfigCV_OtherH/2);
	$ConfigCV_OtherY_M=$ConfigCV_OtherY+($ConfigCV_OtherV/2);

	//�����x�����ȥ�`�������
	$ConfigStorageX_E1=$ConfigStorageX;
	$ConfigStorageY_E1=$ConfigStorageY;
	$ConfigStorageX_E2=$ConfigStorageX_E1+$ConfigStorageH;
	$ConfigStorageY_E2=$ConfigStorageY_E1+$ConfigStorageV;
	$ConfigStorageX_M=$ConfigStorageX+($ConfigStorageH/2);
	$ConfigStorageY_M=$ConfigStorageY+($ConfigStorageV/2);

	//�����x�����ڻ���
	$ConfigDefaultX_E1=$ConfigDefaultX;
	$ConfigDefaultY_E1=$ConfigDefaultY;
	$ConfigDefaultX_E2=$ConfigDefaultX_E1+$ConfigDefaultH;
	$ConfigDefaultY_E2=$ConfigDefaultY_E1+$ConfigDefaultV;
	$ConfigDefaultX_M=$ConfigDefaultX+($ConfigDefaultH/2);
	$ConfigDefaultY_M=$ConfigDefaultY+($ConfigDefaultV/2);

	//�����x�����ڡ�
	$ConfigExitX_E1=$ConfigExitX;
	$ConfigExitY_E1=$ConfigExitY;
	$ConfigExitX_E2=$ConfigExitX_E1+$ConfigExitH;
	$ConfigExitY_E2=$ConfigExitY_E1+$ConfigExitV;
	$ConfigExitX_M=$ConfigExitX+($ConfigExitH/2);
	$ConfigExitY_M=$ConfigExitY+($ConfigExitV/2);
}



..//PC�å��åȥե��`����
function ConfigFocus()
{
	if($cfgtab==1){
		if($ConfigPage==1){
			if(!#LOCAL_aspect_auto){
				ConfigSetFocusNor2("Default", "PSpeed", LEFT);
				ConfigSetFocusBar2("PSpeed", "CConfirmON", LEFT);
				ConfigSetFocusNor1("CConfirmON", "MStopON", LEFT);
				ConfigSetFocusNor1("CConfirmOFF", "MStopOFF", LEFT);
				ConfigSetFocusNor2("MStopON", "MSpeed", LEFT);
				ConfigSetFocusNor2("MStopOFF", "MSpeed", LEFT);
				ConfigSetFocusBar2("MSpeed", "CSkipON", LEFT);
				ConfigSetFocusNor1("CSkipON", "ASkipON", LEFT);
				ConfigSetFocusNor1("CSkipOFF", "ASkipOFF", LEFT);
				ConfigSetFocusNor1("ASkipON", "KVoiceON", LEFT);
				ConfigSetFocusNor1("ASkipOFF", "KVoiceOFF", LEFT);
				ConfigSetFocusNor2("KVoiceON", "ASpeed", LEFT);
				ConfigSetFocusNor2("KVoiceOFF", "ASpeed", LEFT);
				ConfigSetFocusBar2("ASpeed", "SVoiceON", LEFT);
				ConfigSetFocusNor1("SVoiceON", "BPlayON", LEFT);
				ConfigSetFocusNor1("SVoiceOFF", "BPlayOFF", LEFT);
				ConfigSetFocusNor2("BPlayON", "BVolume", LEFT);
				ConfigSetFocusNor2("BPlayOFF", "BVolume", LEFT);
				ConfigSetFocusBar2("BVolume", "SPlayON", LEFT);
				ConfigSetFocusNor2("SPlayON", "SVolume", LEFT);
				ConfigSetFocusNor2("SPlayOFF", "SVolume", LEFT);
				ConfigSetFocusBar2("SVolume", "VPlayON", LEFT);
				ConfigSetFocusNor2("VPlayON", "VVolume", LEFT);
				ConfigSetFocusNor2("VPlayOFF", "VVolume", LEFT);
				ConfigSetFocusBar2("VVolume", "Action", LEFT);
				ConfigSetFocusNor1("Action", "Test", LEFT);
				ConfigSetFocusNor1("Test", "AAutoON", LEFT);
				ConfigSetFocusNor1("AAutoON", "FAspectOFF", LEFT);
				ConfigSetFocusNor1("AAutoOFF", "FAspectON", LEFT);
				ConfigSetFocusNor1("FAspectON", "ARatioHW", LEFT);
				ConfigSetFocusNor1("FAspectOFF", "ARatioHW", LEFT);
				ConfigSetFocusNor1("ARatioHW", "ARatioNN", LEFT);
				ConfigSetFocusNor1("ARatioNN", "ARatioBR", LEFT);
				ConfigSetFocusNor1("ARatioBR", "EXIT", LEFT);
				ConfigSetFocusNor1("EXIT", "Default", LEFT);
				ConfigSetFocusNor1("Com", "You", LEFT);
				ConfigSetFocusNor1("You", "Com", LEFT);
	
				ConfigSetFocusNor1("Default", "EXIT", RIGHT);
				ConfigSetFocusBar2("PSpeed", "Default", RIGHT);
				ConfigSetFocusNor2("CConfirmON", "PSpeed", RIGHT);
				ConfigSetFocusNor2("CConfirmOFF", "PSpeed", RIGHT);
				ConfigSetFocusNor1("MStopON", "CConfirmON", RIGHT);
				ConfigSetFocusNor1("MStopOFF", "CConfirmOFF", RIGHT);
				ConfigSetFocusBar2("MSpeed", "MStopON", RIGHT);
				ConfigSetFocusNor2("CSkipON", "MSpeed", RIGHT);
				ConfigSetFocusNor2("CSkipOFF", "MSpeed", RIGHT);
				ConfigSetFocusNor1("ASkipON", "CSkipON", RIGHT);
				ConfigSetFocusNor1("ASkipOFF", "CSkipOFF", RIGHT);
				ConfigSetFocusNor1("KVoiceON", "ASkipON", RIGHT);
				ConfigSetFocusNor1("KVoiceOFF", "ASkipOFF", RIGHT);
				ConfigSetFocusBar2("ASpeed", "KVoiceON", RIGHT);
				ConfigSetFocusNor2("SVoiceON", "ASpeed", RIGHT);
				ConfigSetFocusNor2("SVoiceOFF", "ASpeed", RIGHT);
				ConfigSetFocusNor1("BPlayON", "SVoiceON", RIGHT);
				ConfigSetFocusNor1("BPlayOFF", "SVoiceOFF", RIGHT);
				ConfigSetFocusBar2("BVolume", "BPlayON", RIGHT);
				ConfigSetFocusNor2("SPlayON", "BVolume", RIGHT);
				ConfigSetFocusNor2("SPlayOFF", "BVolume", RIGHT);
				ConfigSetFocusBar2("SVolume", "SPlayON", RIGHT);
				ConfigSetFocusNor2("VPlayON", "SVolume", RIGHT);
				ConfigSetFocusNor2("VPlayOFF", "SVolume", RIGHT);
				ConfigSetFocusBar2("VVolume", "VPlayON", RIGHT);
				ConfigSetFocusNor2("Action", "VVolume", RIGHT);
				ConfigSetFocusNor1("Test", "Action", RIGHT);
				ConfigSetFocusNor1("AAutoON", "Test", RIGHT);
				ConfigSetFocusNor1("AAutoOFF", "Test", RIGHT);
				ConfigSetFocusNor1("FAspectON", "AAutoOFF", RIGHT);
				ConfigSetFocusNor1("FAspectOFF", "AAutoON", RIGHT);
				ConfigSetFocusNor1("ARatioHW", "FAspectON", RIGHT);
				ConfigSetFocusNor1("ARatioNN", "ARatioHW", RIGHT);
				ConfigSetFocusNor1("ARatioBR", "ARatioNN", RIGHT);
				ConfigSetFocusNor1("EXIT", "ARatioBR", RIGHT);
				ConfigSetFocusNor1("Com", "You", RIGHT);
				ConfigSetFocusNor1("You", "Com", RIGHT);
	
				//ConfigSetFocusNor2("Default", "Default", UP);
				//ConfigSetFocusBar2("PSpeed", "CConfirmON", UP);
				ConfigSetFocusNor1("CConfirmON", "CConfirmOFF", UP);
				ConfigSetFocusNor1("CConfirmOFF", "CConfirmON", UP);
				ConfigSetFocusNor1("MStopON", "MStopOFF", UP);
				ConfigSetFocusNor1("MStopOFF", "MStopON", UP);
				//ConfigSetFocusBar2("MSpeed", "CSkipON", UP);
				ConfigSetFocusNor1("CSkipON", "CSkipOFF", UP);
				ConfigSetFocusNor1("CSkipOFF", "CSkipON", UP);
				ConfigSetFocusNor1("ASkipON", "ASkipOFF", UP);
				ConfigSetFocusNor1("ASkipOFF", "ASkipON", UP);
				ConfigSetFocusNor1("KVoiceON", "KVoiceOFF", UP);
				ConfigSetFocusNor1("KVoiceOFF", "KVoiceON", UP);
				//ConfigSetFocusBar2("ASpeed", "SVoiceON", UP);
				ConfigSetFocusNor1("SVoiceON", "SVoiceOFF", UP);
				ConfigSetFocusNor1("SVoiceOFF", "SVoiceON", UP);
				ConfigSetFocusNor1("BPlayON", "BPlayOFF", UP);
				ConfigSetFocusNor1("BPlayOFF", "BPlayON", UP);
				//ConfigSetFocusBar2("BVolume", "SPlayON", UP);
				ConfigSetFocusNor1("SPlayON", "SPlayOFF", UP);
				ConfigSetFocusNor1("SPlayOFF", "SPlayON", UP);
				//ConfigSetFocusBar2("SVolume", "SPlayON", UP);
				ConfigSetFocusNor1("VPlayON", "VPlayOFF", UP);
				ConfigSetFocusNor1("VPlayOFF", "VPlayON", UP);
				//ConfigSetFocusBar2("VVolume", "VPlayON", UP);
				//ConfigSetFocusNor1("Action", "Action", UP);
				//ConfigSetFocusNor1("Test", "Test", UP);
				ConfigSetFocusNor1("AAutoON", "AAutoOFF", UP);
				ConfigSetFocusNor1("AAutoOFF", "AAutoON", UP);
				ConfigSetFocusNor1("FAspectON", "FAspectOFF", UP);
				ConfigSetFocusNor1("FAspectOFF", "FAspectON", UP);
				ConfigSetFocusNor1("ARatioHW", "Com", UP);
				ConfigSetFocusNor1("ARatioNN", "Com", UP);
				ConfigSetFocusNor1("ARatioBR", "Com", UP);
				ConfigSetFocusNor1("EXIT", "Com", UP);
				ConfigSetFocusNor1("Com", "EXIT", UP);
				ConfigSetFocusNor1("You", "EXIT", UP);
	
				//ConfigSetFocusNor2("Default", "Default", DOWN);
				//ConfigSetFocusBar2("PSpeed", "CConfirmON", DOWN);
				ConfigSetFocusNor1("CConfirmON", "CConfirmOFF", DOWN);
				ConfigSetFocusNor1("CConfirmOFF", "CConfirmON", DOWN);
				ConfigSetFocusNor1("MStopON", "MStopOFF", DOWN);
				ConfigSetFocusNor1("MStopOFF", "MStopON", DOWN);
				//ConfigSetFocusBar2("MSpeed", "CSkipON", DOWN);
				ConfigSetFocusNor1("CSkipON", "CSkipOFF", DOWN);
				ConfigSetFocusNor1("CSkipOFF", "CSkipON", DOWN);
				ConfigSetFocusNor1("ASkipON", "ASkipOFF", DOWN);
				ConfigSetFocusNor1("ASkipOFF", "ASkipON", DOWN);
				ConfigSetFocusNor1("KVoiceON", "KVoiceOFF", DOWN);
				ConfigSetFocusNor1("KVoiceOFF", "KVoiceON", DOWN);
				//ConfigSetFocusBar2("ASpeed", "SVoiceON", DOWN);
				ConfigSetFocusNor1("SVoiceON", "SVoiceOFF", DOWN);
				ConfigSetFocusNor1("SVoiceOFF", "SVoiceON", DOWN);
				ConfigSetFocusNor1("BPlayON", "BPlayOFF", DOWN);
				ConfigSetFocusNor1("BPlayOFF", "BPlayON", DOWN);
				//ConfigSetFocusBar2("BVolume", "SPlayON", DOWN);
				ConfigSetFocusNor1("SPlayON", "SPlayOFF", DOWN);
				ConfigSetFocusNor1("SPlayOFF", "SPlayON", DOWN);
				//ConfigSetFocusBar2("SVolume", "SPlayON", DOWN);
				ConfigSetFocusNor1("VPlayON", "VPlayOFF", DOWN);
				ConfigSetFocusNor1("VPlayOFF", "VPlayON", DOWN);
				//ConfigSetFocusBar2("VVolume", "VPlayON", DOWN);
				//ConfigSetFocusNor1("Action", "Action", DOWN);
				//ConfigSetFocusNor1("Test", "Test", DOWN);
				ConfigSetFocusNor1("AAutoON", "AAutoOFF", DOWN);
				ConfigSetFocusNor1("AAutoOFF", "AAutoON", DOWN);
				ConfigSetFocusNor1("FAspectON", "FAspectOFF", DOWN);
				ConfigSetFocusNor1("FAspectOFF", "FAspectON", DOWN);
				ConfigSetFocusNor1("ARatioHW", "Com", DOWN);
				ConfigSetFocusNor1("ARatioNN", "Com", DOWN);
				ConfigSetFocusNor1("ARatioBR", "Com", DOWN);
				ConfigSetFocusNor1("EXIT", "Com", DOWN);
				ConfigSetFocusNor1("Com", "EXIT", DOWN);
				ConfigSetFocusNor1("You", "EXIT", DOWN);
			}else{
				ConfigSetFocusNor2("Default", "PSpeed", LEFT);
				ConfigSetFocusBar2("PSpeed", "CConfirmON", LEFT);
				ConfigSetFocusNor1("CConfirmON", "MStopON", LEFT);
				ConfigSetFocusNor1("CConfirmOFF", "MStopOFF", LEFT);
				ConfigSetFocusNor2("MStopON", "MSpeed", LEFT);
				ConfigSetFocusNor2("MStopOFF", "MSpeed", LEFT);
				ConfigSetFocusBar2("MSpeed", "CSkipON", LEFT);
				ConfigSetFocusNor1("CSkipON", "ASkipON", LEFT);
				ConfigSetFocusNor1("CSkipOFF", "ASkipOFF", LEFT);
				ConfigSetFocusNor1("ASkipON", "KVoiceON", LEFT);
				ConfigSetFocusNor1("ASkipOFF", "KVoiceOFF", LEFT);
				ConfigSetFocusNor2("KVoiceON", "ASpeed", LEFT);
				ConfigSetFocusNor2("KVoiceOFF", "ASpeed", LEFT);
				ConfigSetFocusBar2("ASpeed", "SVoiceON", LEFT);
				ConfigSetFocusNor1("SVoiceON", "BPlayON", LEFT);
				ConfigSetFocusNor1("SVoiceOFF", "BPlayOFF", LEFT);
				ConfigSetFocusNor2("BPlayON", "BVolume", LEFT);
				ConfigSetFocusNor2("BPlayOFF", "BVolume", LEFT);
				ConfigSetFocusBar2("BVolume", "SPlayON", LEFT);
				ConfigSetFocusNor2("SPlayON", "SVolume", LEFT);
				ConfigSetFocusNor2("SPlayOFF", "SVolume", LEFT);
				ConfigSetFocusBar2("SVolume", "VPlayON", LEFT);
				ConfigSetFocusNor2("VPlayON", "VVolume", LEFT);
				ConfigSetFocusNor2("VPlayOFF", "VVolume", LEFT);
				ConfigSetFocusBar2("VVolume", "Action", LEFT);
				ConfigSetFocusNor1("Action", "Test", LEFT);
				ConfigSetFocusNor1("Test", "AAutoON", LEFT);
				ConfigSetFocusNor1("AAutoON", "EXIT", LEFT);
				ConfigSetFocusNor1("AAutoOFF", "EXIT", LEFT);
				ConfigSetFocusNor1("EXIT", "Default", LEFT);
				ConfigSetFocusNor1("Com", "You", LEFT);
				ConfigSetFocusNor1("You", "Com", LEFT);
	
				ConfigSetFocusNor1("Default", "EXIT", RIGHT);
				ConfigSetFocusBar2("PSpeed", "Default", RIGHT);
				ConfigSetFocusNor2("CConfirmON", "PSpeed", RIGHT);
				ConfigSetFocusNor2("CConfirmOFF", "PSpeed", RIGHT);
				ConfigSetFocusNor1("MStopON", "CConfirmON", RIGHT);
				ConfigSetFocusNor1("MStopOFF", "CConfirmOFF", RIGHT);
				ConfigSetFocusBar2("MSpeed", "MStopON", RIGHT);
				ConfigSetFocusNor2("CSkipON", "MSpeed", RIGHT);
				ConfigSetFocusNor2("CSkipOFF", "MSpeed", RIGHT);
				ConfigSetFocusNor1("ASkipON", "CSkipON", RIGHT);
				ConfigSetFocusNor1("ASkipOFF", "CSkipOFF", RIGHT);
				ConfigSetFocusNor1("KVoiceON", "ASkipON", RIGHT);
				ConfigSetFocusNor1("KVoiceOFF", "ASkipOFF", RIGHT);
				ConfigSetFocusBar2("ASpeed", "KVoiceON", RIGHT);
				ConfigSetFocusNor2("SVoiceON", "ASpeed", RIGHT);
				ConfigSetFocusNor2("SVoiceOFF", "ASpeed", RIGHT);
				ConfigSetFocusNor1("BPlayON", "SVoiceON", RIGHT);
				ConfigSetFocusNor1("BPlayOFF", "SVoiceOFF", RIGHT);
				ConfigSetFocusBar2("BVolume", "BPlayON", RIGHT);
				ConfigSetFocusNor2("SPlayON", "BVolume", RIGHT);
				ConfigSetFocusNor2("SPlayOFF", "BVolume", RIGHT);
				ConfigSetFocusBar2("SVolume", "SPlayON", RIGHT);
				ConfigSetFocusNor2("VPlayON", "SVolume", RIGHT);
				ConfigSetFocusNor2("VPlayOFF", "SVolume", RIGHT);
				ConfigSetFocusBar2("VVolume", "VPlayON", RIGHT);
				ConfigSetFocusNor2("Action", "VVolume", RIGHT);
				ConfigSetFocusNor1("Test", "Action", RIGHT);
				ConfigSetFocusNor1("AAutoON", "Test", RIGHT);
				ConfigSetFocusNor1("AAutoOFF", "Test", RIGHT);
				ConfigSetFocusNor1("EXIT", "AAutoON", RIGHT);
				ConfigSetFocusNor1("Com", "You", RIGHT);
				ConfigSetFocusNor1("You", "Com", RIGHT);
	
				//ConfigSetFocusNor2("Default", "Default", UP);
				//ConfigSetFocusBar2("PSpeed", "CConfirmON", UP);
				ConfigSetFocusNor1("CConfirmON", "CConfirmOFF", UP);
				ConfigSetFocusNor1("CConfirmOFF", "CConfirmON", UP);
				ConfigSetFocusNor1("MStopON", "MStopOFF", UP);
				ConfigSetFocusNor1("MStopOFF", "MStopON", UP);
				//ConfigSetFocusBar2("MSpeed", "CSkipON", UP);
				ConfigSetFocusNor1("CSkipON", "CSkipOFF", UP);
				ConfigSetFocusNor1("CSkipOFF", "CSkipON", UP);
				ConfigSetFocusNor1("ASkipON", "ASkipOFF", UP);
				ConfigSetFocusNor1("ASkipOFF", "ASkipON", UP);
				ConfigSetFocusNor1("KVoiceON", "KVoiceOFF", UP);
				ConfigSetFocusNor1("KVoiceOFF", "KVoiceON", UP);
				//ConfigSetFocusBar2("ASpeed", "SVoiceON", UP);
				ConfigSetFocusNor1("SVoiceON", "SVoiceOFF", UP);
				ConfigSetFocusNor1("SVoiceOFF", "SVoiceON", UP);
				ConfigSetFocusNor1("BPlayON", "BPlayOFF", UP);
				ConfigSetFocusNor1("BPlayOFF", "BPlayON", UP);
				//ConfigSetFocusBar2("BVolume", "SPlayON", UP);
				ConfigSetFocusNor1("SPlayON", "SPlayOFF", UP);
				ConfigSetFocusNor1("SPlayOFF", "SPlayON", UP);
				//ConfigSetFocusBar2("SVolume", "SPlayON", UP);
				ConfigSetFocusNor1("VPlayON", "VPlayOFF", UP);
				ConfigSetFocusNor1("VPlayOFF", "VPlayON", UP);
				//ConfigSetFocusBar2("VVolume", "VPlayON", UP);
				//ConfigSetFocusNor1("Action", "Action", UP);
				//ConfigSetFocusNor1("Test", "Test", UP);
				ConfigSetFocusNor1("AAutoON", "AAutoOFF", UP);
				ConfigSetFocusNor1("AAutoOFF", "AAutoON", UP);
				ConfigSetFocusNor1("EXIT", "Com", UP);
				ConfigSetFocusNor1("Com", "EXIT", UP);
				ConfigSetFocusNor1("You", "EXIT", UP);
	
				//ConfigSetFocusNor2("Default", "Default", DOWN);
				//ConfigSetFocusBar2("PSpeed", "CConfirmON", DOWN);
				ConfigSetFocusNor1("CConfirmON", "CConfirmOFF", DOWN);
				ConfigSetFocusNor1("CConfirmOFF", "CConfirmON", DOWN);
				ConfigSetFocusNor1("MStopON", "MStopOFF", DOWN);
				ConfigSetFocusNor1("MStopOFF", "MStopON", DOWN);
				//ConfigSetFocusBar2("MSpeed", "CSkipON", DOWN);
				ConfigSetFocusNor1("CSkipON", "CSkipOFF", DOWN);
				ConfigSetFocusNor1("CSkipOFF", "CSkipON", DOWN);
				ConfigSetFocusNor1("ASkipON", "ASkipOFF", DOWN);
				ConfigSetFocusNor1("ASkipOFF", "ASkipON", DOWN);
				ConfigSetFocusNor1("KVoiceON", "KVoiceOFF", DOWN);
				ConfigSetFocusNor1("KVoiceOFF", "KVoiceON", DOWN);
				//ConfigSetFocusBar2("ASpeed", "SVoiceON", DOWN);
				ConfigSetFocusNor1("SVoiceON", "SVoiceOFF", DOWN);
				ConfigSetFocusNor1("SVoiceOFF", "SVoiceON", DOWN);
				ConfigSetFocusNor1("BPlayON", "BPlayOFF", DOWN);
				ConfigSetFocusNor1("BPlayOFF", "BPlayON", DOWN);
				//ConfigSetFocusBar2("BVolume", "SPlayON", DOWN);
				ConfigSetFocusNor1("SPlayON", "SPlayOFF", DOWN);
				ConfigSetFocusNor1("SPlayOFF", "SPlayON", DOWN);
				//ConfigSetFocusBar2("SVolume", "SPlayON", DOWN);
				ConfigSetFocusNor1("VPlayON", "VPlayOFF", DOWN);
				ConfigSetFocusNor1("VPlayOFF", "VPlayON", DOWN);
				//ConfigSetFocusBar2("VVolume", "VPlayON", DOWN);
				//ConfigSetFocusNor1("Action", "Action", DOWN);
				//ConfigSetFocusNor1("Test", "Test", DOWN);
				ConfigSetFocusNor1("AAutoON", "AAutoOFF", DOWN);
				ConfigSetFocusNor1("AAutoOFF", "AAutoON", DOWN);
				ConfigSetFocusNor1("EXIT", "Com", DOWN);
				ConfigSetFocusNor1("Com", "EXIT", DOWN);
				ConfigSetFocusNor1("You", "EXIT", DOWN);
			}
		}
	}
}


//���ޥ����ե��`�����åޥ���
function ConfigSetFocusNor1($a,$b,$fwd)
{
	$a="Config1a_"+$a+"/MouseUsual/hit";
	$b="Config1a_"+$b+"/MouseUsual/hit";
	SetNextFocus($a,$b,$fwd);
}

//���ޥ����ե��`�����åޥ���
function ConfigSetFocusNor2($a,$b,$fwd)
{
	$a="Config1a_"+$a+"/MouseUsual/hit";
	$b="Config1a_"+$b;
	SetNextFocus($a,$b,$fwd);
}

//���ޥ����ե��`�����åޥ���
function ConfigSetFocusBar1($a,$b,$fwd)
{
	$a="Config1a_"+$a;
	$b="Config1a_"+$b;
	SetNextFocus($a,$b,$fwd);
}

//���ޥ����ե��`�����åޥ���
function ConfigSetFocusBar2($a,$b,$fwd)
{
	$a="Config1a_"+$a;
	$b="Config1a_"+$b+"/MouseUsual/hit";
	SetNextFocus($a,$b,$fwd);
}





//=============================================================================//
.//��ޥ������ڻ���
function ConfigDefaultInit()
{
	//#no_ask=false;
	if($PLACE_title){
		$OnDialog=true;
	}

	//��ͤʤ�
	if(!#no_ask){
		$go=false;

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
		CreateColor("MSGWND/MSG_bak", 1010000, Center, Middle, 1024, 576, BLACK);
	
		//�����x���x�k֫��
		//box
		CreateTexture("MSGWND/MSG_msg",1010000,Center,Middle,"cg/sys/dialog/�O�������״�B�ˑ���.png");
		Request("MSGWND/MSG_msg", Smoothing);
		//YES
		CreateChoice("MSGWND/MSG_yes");
		CreateTexture("MSGWND/MSG_yes/MouseUsual/img",1012000,515,397,"MSGWND/IMG_yes_off");
		CreateTexture("MSGWND/MSG_yes/MouseOver/img",1011000,515,397,"MSGWND/IMG_yes_over");
		CreateTexture("MSGWND/MSG_yes/MouseClick/img",1012000,515,397,"MSGWND/IMG_yes_on");
		//NO
		CreateChoice("MSGWND/MSG_no");
		CreateTexture("MSGWND/MSG_no/MouseUsual/img",1012000,471,397,"MSGWND/IMG_no_off");
		CreateTexture("MSGWND/MSG_no/MouseOver/img",1011000,471,397,"MSGWND/IMG_no_over");
		CreateTexture("MSGWND/MSG_no/MouseClick/img",1012000,471,397,"MSGWND/IMG_no_on");
	
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
			if($SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){break;}
	
			case MSGWND/MSG_yes{
				//�����΄���
				$go=true;
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
				if($Title_Config){call_chapter nss/sys_close.nss->main2;}
				else{call_chapter nss/sys_close.nss;}
				$InDialog=false;
	
				Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
				Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
				Fade("MSGWND/MSG_msg",150,1000,null,false);
				Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
				WaitAction("MSGWND/MSG_*/*/*",null);
			}else if($SYSTEM_keydown_t&&!$SYSTEM_menu_lock){
				Zoom("MSGWND/MSG_msg", 150, 0, 1000, null, false);
				Zoom("MSGWND/MSG_*/*/*", 150, 0, 1000, null, false);
				Fade("MSGWND/MSG_msg",150,0,null,false);
				Fade("MSGWND/MSG_*/*/*",150,0,null,false);
				WaitAction("MSGWND/MSG_*/*/*",null);
				
				$InDialog=true;
				call_chapter nss/sys_reset.nss;
				$InDialog=false;
	
				Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
				Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
				Fade("MSGWND/MSG_msg",150,1000,null,false);
				Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
				WaitAction("MSGWND/MSG_*/*/*",null);
		}else if($SYSTEM_keydown_r&&ExistSave(9999)&&!$SYSTEM_backselect_lock){
				Zoom("MSGWND/MSG_msg", 150, 0, 1000, null, false);
				Zoom("MSGWND/MSG_*/*/*", 150, 0, 1000, null, false);
				Fade("MSGWND/MSG_msg",150,0,null,false);
				Fade("MSGWND/MSG_*/*/*",150,0,null,false);
				WaitAction("MSGWND/MSG_*/*/*",null);
				
				$InDialog=true;
				call_chapter nss/sys_backselect.nss;
				$InDialog=false;
	
				Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
				Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
				Fade("MSGWND/MSG_msg",150,1000,null,false);
				Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
				WaitAction("MSGWND/MSG_*/*/*",null);
			}
		}
		$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
		$SYSTEM_menu_config_enable=true;

		if(!$go){
			Zoom("MSGWND/MSG_msg",150,0,1000, Dxl1, false);
			Zoom("MSGWND/MSG_*/*/*",150,0,1000, Dxl1, false);
			Fade("MSGWND/MSG_*",150,0,null,false);
			Fade("MSGWND/MSG_*/*/*",150,0,null,false);
			WaitAction("MSGWND/MSG_*",null);
			Delete("MSGWND");

			$OnDialog=false;
			//MoveCursor($ConfigDefaultX_M,$ConfigDefaultY_M);
			return;
		}
	}

	//����ڻ�����
	ConfigFormat();

	$cfgmaketab1=false;
	$cfgmaketab2=false;
	$cfgmaketab3=false;

	$SYSTEM_menu_config_enable=false;
	$ConfigBreakFlag=true;

	//SavingStart();
	WaitAction("Config*/*/sound", null);
}



.//��ޥ������ȥ�`�������
function ConfigStorageInit()
{
	//����������������󥤥�_�J
	if(XBOX360_IsSignin()){
		DialogConfigStorage();
	}else{
		DialogCautionSignIn();
		MoveCursor($ConfigStorageX_M,$ConfigStorageY_M);
		return;
	}
	MoveCursor($ConfigStorageX_M,$ConfigStorageY_M);
}


.//��ޥ�������ե����ե��`�ޥåȡ�
function ConfigFormat()
{
	//���ģ֤Υ��`�ॹ�ԩ`��
	#SYSTEM_play_speed=3;
	#play_speed_plus=#SYSTEM_play_speed;
	if($Title_Config){
		//�����ȥ�ˤ����ƤΥ���ե����Υ��`�ॹ�ԩ`��
		#play_speed_plus2 = #SYSTEM_play_speed;
		#SYSTEM_play_speed=3;
	}
	#SYSTEM_text_speed=200;//�ƥ����ȱ�ʾ�ٶ�
	#SYSTEM_break_play_movie=false;//��`�ө`�򥭥�󥻥�Ǥ���褦�ˤ���
	#keep_auto_and_skip=false;//�x�k֫��⥹���åפȥ��`�ȥ�`�ɤ�@�A����
	#no_ask=false;//�_�J���������ϳ�����
	#SYSTEM_skip_absolute=false;//δ�i�Ǥ⥹���åפ���
	#SYSTEM_click_break_voice=false;//����å����w�Ф����������⥹�ȥåפ���
	#SYSTEM_sound_bgm=true;//�£ǣͤ���������
	#SYSTEM_sound_se=true;//�ӣŤ���������
	#SYSTEM_sound_voice=true;//��������������
	#SYSTEM_auto_wait_per_character=100;//�Ԅ������ͤꥹ�ԩ`��
	#SYSTEM_auto_text_break_voice=false;//���`�ȥ�`�ɕr�˥ƥ����Ȥ��w�Ф��줿���������w�Ф�
	#SYSTEM_auto_ignore_key_cancel=false;//���`�ȥ�`�ɕr�˥���å���Ѻ���ȥƥ����Ȥ��w�֤���
	#SYSTEM_sound_volume_bgm=#SYSTEM_sound_volume_bgm_default;//�£ǣͤΥܥ��`��
	#SYSTEM_sound_volume_se=#SYSTEM_sound_volume_se_default;//�ӣŤΥܥ��`��
	#SYSTEM_sound_volume_voice=#SYSTEM_sound_volume_voice_default;//�����Υܥ��`��
	#donot_ask_overwrite_savedata=false;//��Ϥ⤦ʹ�ä���Ƥ��ʤ��褦��
	#donot_ask_load_savedata=false;//��Ϥ⤦ʹ�ä���Ƥ��ʤ��褦��
	#LOCAL_window_fade=602;//�ܥå���͸����
	#LOCAL_aspect_auto=false;//�����ڥ��ȱ��Ԅ��O��

	#PreSaveFlag=false;

	//�B������
	VoiceResetSet();

	$ConfigCV_While=0;
	while(#VoiceSetCount>$ConfigCV_While){
		VariableValue(#,"ConfigCV_"+#VoiceName[$ConfigCV_While]+"[1]",false);
		$ConfigCV_While++;
	}
	ConfigCharacterVoice();
	#SYSTEM_voice_enable_another=true;


	#SYSTEM_video_aspect_fixed=0;
	$SYSTEM_text_waitkey=true;
}

.//��ޥ����ܥ����ƥ��ȡ�
function ConfigVoiceTest()
{
	Request("Config1a_TEST01", Stop);
	Request("Config1a_TEST01", Play);
}

.//��ޥ��������ܥ��������_�J��
//VoiceReset��ͬ��Ʒ
function ConfigCharacterVoice()
{
	#SYSTEM_voice_enable_list="";

	$ConfigCV_While=0;
	while(#VoiceSetCount>$ConfigCV_While){
		if(!VariableValue(#,"ConfigCV_"+#VoiceName[$ConfigCV_While]+"[1]")){
			#SYSTEM_voice_enable_list=#SYSTEM_voice_enable_list+VariableValue(#,"ConfigCV_"+#VoiceName[$ConfigCV_While]+"[0]");
		}
		$ConfigCV_While++;
	}

	if(!#ConfigCV_����������[1]&&!#ConfigCV_������Ů��[1]){
		#SYSTEM_voice_enable_another=true;
	}
}

.//��ޥ�������ϵ��
..//�����x���ã֡�
function ConfigVoiceSet()
{
	CreateTexture("ConfigVoiceScreen", 12000, 0, 0, SCREEN);
	if($ConfigVoiceOn){return;}
	$ConfigVoiceOn=true;

	//�B������
	ConfigVoiceArray();

	Wait(16);

	CreateColor("Config2aVoiceColor", 11000, 0, 0, 1024, 576, "BLACK");
	CreateTexture("Config2aVoiceBack", 11001, 0, 0, "cg/sys/config/data/�ܥ������쥯�ȥ�����ɥ�����.png");

	LoadImage("ConfigImageCheck", "cg/sys/config/data/�ܥ��������å�.png");
	LoadImage("ConfigImageBase", "cg/sys/config/data/hit.png");

	//�����x
	$ConfigCvX=790;
	$ConfigCvY=82;
	$ConfigCV_While=1;
	while($ConfigCV_Max>$ConfigCV_While){

		//�x�k֫
		$nutpre=String("Config2a_CV%02d_chara",$ConfigCV_While);
		CreateChoice($nutpre);
		SetAlias($nutpre, $nutpre);

		$cnut=$nutpre+"/MouseUsual/hit";
		CreateTexture($cnut, 11010, $ConfigCvX, $ConfigCvY, "ConfigImageBase");
		Request($cnut, Erase);

		if(VariableValue(#,"voice_on_"+#ConfigCV_Name[$ConfigCV_While])){
			//��
			$cnut=String("Config2f_CV%02d_chara01",$ConfigCV_While);
			if(#һ�¥��ꥢ){$cimg="cg/sys/config/data/"+#ConfigCV_Name[$ConfigCV_While]+".png";}
			else{$cimg="cg/sys/config/data/1��_"+#ConfigCV_Name[$ConfigCV_While]+".png";}
			CreateTexture($cnut, 11010, $ConfigCvX, $ConfigCvY, $cimg);

			//�����å�
			$nutpre=String("Config2a_CV%02d_chara",$ConfigCV_While);
			$cnut=$nutpre+"02";
			CreateTexture($cnut, 11100, $ConfigCvX, $ConfigCvY, "ConfigImageCheck");

			//CreateTexture("@Config2a_CV_Achara/MouseOver/icon", 10010, $ConfigCvX, $ConfigCvY, "ConfigImageCheck02");
			//CreateTexture("@Config2a_CV_Achara/MouseClick/icon", 10010, $ConfigCvX, $ConfigCvY, "ConfigImageCheck02");
			//$ConfigCV_AcharaH=ImageHorizon("Config2a_CV_Achara/MouseUsual/hit");
			//$ConfigCV_AcharaV=ImageVertical("Config2a_CV_Achara/MouseUsual/hit");
		}else{
			Request($nutpre, UnClickable);
		}

		//$ConfigCV01H=$ConfigCvX;
		//$ConfigCV01V=$ConfigCvY;
		VariableValue($,String("ConfigCvH%02",$ConfigCV_While),$ConfigCvX);
		VariableValue($,String("ConfigCvV%02",$ConfigCV_While),$ConfigCvY);

		$ConfigCV_While++;

		if($ConfigCV_While==20){
			$ConfigCvX=790;
			$ConfigCvY=229;
		}else if($ConfigCV_While==39){
			$ConfigCvX=790;
			$ConfigCvY=376;
		}else{
			$ConfigCvX-=32;
		}
	}

	Fade("Config2a*", 0, 0, null, true);
	Fade("Config2a*/*/*", 0, 0, null, true);
}

..//���x�k���ã֡�
function ConfigVoiceSelect()
{
	Fade("Config2f*", 0, 1000, null, false);
	Fade("Config2aVoiceColor", 0, 700, null, false);
	Fade("Config2aVoiceBack", 0, 1000, null, false);

	$ConfigCV_While=1;
	while($ConfigCV_Max>$ConfigCV_While){
		if(!VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While]+"[1]")){
			$nutpre=String("Config2a_CV%02d_chara",$ConfigCV_While);
			$cnut=$nutpre+"02";
			Fade($cnut, 0, 1000, null, false);
		}
		$ConfigCV_While++;
	}

	Fade("ConfigVoiceScreen", 300, 0, null, true);

	ConfigVoiceFocus();

	$ConfigVoiceWhile=true;
	while($ConfigVoiceWhile){
		select{
			if($SYSTEM_r_button_down||$SYSTEM_keydown_c){ConfigCharacterVoice();$ConfigVoiceWhile=false;break;}

			//�省�`������ϵ
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if(($SYSTEM_keydown_esc||$SYSTEM_buttondown_close)&&!$Title_Config){
				ConfigCharacterVoice();
				call_chapter nss/sys_close.nss;
			}else if($SYSTEM_keydown_t){
				ConfigCharacterVoice();
				call_chapter nss/sys_reset.nss;
			}else if($SYSTEM_keydown_r){
				ConfigCharacterVoice();
				call_chapter nss/sys_backselect.nss;
			}

			case Config2a_CV01_chara{$ConfigCV_While=1;ConfigVoiceFade();}
			case Config2a_CV02_chara{$ConfigCV_While=2;ConfigVoiceFade();}
			case Config2a_CV03_chara{$ConfigCV_While=3;ConfigVoiceFade();}
			case Config2a_CV04_chara{$ConfigCV_While=4;ConfigVoiceFade();}
			case Config2a_CV05_chara{$ConfigCV_While=5;ConfigVoiceFade();}
			case Config2a_CV06_chara{$ConfigCV_While=6;ConfigVoiceFade();}
			case Config2a_CV07_chara{$ConfigCV_While=7;ConfigVoiceFade();}
			case Config2a_CV08_chara{$ConfigCV_While=8;ConfigVoiceFade();}
			case Config2a_CV09_chara{$ConfigCV_While=9;ConfigVoiceFade();}
			case Config2a_CV10_chara{$ConfigCV_While=10;ConfigVoiceFade();}
			case Config2a_CV11_chara{$ConfigCV_While=11;ConfigVoiceFade();}
			case Config2a_CV12_chara{$ConfigCV_While=12;ConfigVoiceFade();}
			case Config2a_CV13_chara{$ConfigCV_While=13;ConfigVoiceFade();}
			case Config2a_CV14_chara{$ConfigCV_While=14;ConfigVoiceFade();}
			case Config2a_CV15_chara{$ConfigCV_While=15;ConfigVoiceFade();}
			case Config2a_CV16_chara{$ConfigCV_While=16;ConfigVoiceFade();}
			case Config2a_CV17_chara{$ConfigCV_While=17;ConfigVoiceFade();}
			case Config2a_CV18_chara{$ConfigCV_While=18;ConfigVoiceFade();}
			case Config2a_CV19_chara{$ConfigCV_While=19;ConfigVoiceFade();}
			case Config2a_CV20_chara{$ConfigCV_While=20;ConfigVoiceFade();}
			case Config2a_CV21_chara{$ConfigCV_While=21;ConfigVoiceFade();}
			case Config2a_CV22_chara{$ConfigCV_While=22;ConfigVoiceFade();}
			case Config2a_CV23_chara{$ConfigCV_While=23;ConfigVoiceFade();}
			case Config2a_CV24_chara{$ConfigCV_While=24;ConfigVoiceFade();}
			case Config2a_CV25_chara{$ConfigCV_While=25;ConfigVoiceFade();}
			case Config2a_CV26_chara{$ConfigCV_While=26;ConfigVoiceFade();}
			case Config2a_CV27_chara{$ConfigCV_While=27;ConfigVoiceFade();}
			case Config2a_CV28_chara{$ConfigCV_While=28;ConfigVoiceFade();}
			case Config2a_CV29_chara{$ConfigCV_While=29;ConfigVoiceFade();}
			case Config2a_CV30_chara{$ConfigCV_While=30;ConfigVoiceFade();}
			case Config2a_CV31_chara{$ConfigCV_While=31;ConfigVoiceFade();}
			case Config2a_CV32_chara{$ConfigCV_While=32;ConfigVoiceFade();}
			case Config2a_CV33_chara{$ConfigCV_While=33;ConfigVoiceFade();}
			case Config2a_CV34_chara{$ConfigCV_While=34;ConfigVoiceFade();}
			case Config2a_CV35_chara{$ConfigCV_While=35;ConfigVoiceFade();}
			case Config2a_CV36_chara{$ConfigCV_While=36;ConfigVoiceFade();}
			case Config2a_CV37_chara{$ConfigCV_While=37;ConfigVoiceFade();}
			case Config2a_CV38_chara{$ConfigCV_While=38;ConfigVoiceFade();}
			case Config2a_CV39_chara{$ConfigCV_While=39;ConfigVoiceFade();}
			case Config2a_CV40_chara{$ConfigCV_While=40;ConfigVoiceFade();}
			case Config2a_CV41_chara{$ConfigCV_While=41;ConfigVoiceFade();}
			case Config2a_CV42_chara{$ConfigCV_While=42;ConfigVoiceFade();}
			case Config2a_CV43_chara{$ConfigCV_While=43;ConfigVoiceFade();}
			case Config2a_CV44_chara{$ConfigCV_While=44;ConfigVoiceFade();}
			case Config2a_CV45_chara{$ConfigCV_While=45;ConfigVoiceFade();}
			case Config2a_CV46_chara{$ConfigCV_While=46;ConfigVoiceFade();}
			case Config2a_CV47_chara{$ConfigCV_While=47;ConfigVoiceFade();}
			case Config2a_CV48_chara{$ConfigCV_While=48;ConfigVoiceFade();}
			case Config2a_CV49_chara{$ConfigCV_While=49;ConfigVoiceFade();}
			case Config2a_CV50_chara{$ConfigCV_While=50;ConfigVoiceFade();}
			case Config2a_CV51_chara{$ConfigCV_While=51;ConfigVoiceFade();}
			case Config2a_CV52_chara{$ConfigCV_While=52;ConfigVoiceFade();}
			case Config2a_CV53_chara{$ConfigCV_While=53;ConfigVoiceFade();}
			case Config2a_CV54_chara{$ConfigCV_While=54;ConfigVoiceFade();}
			case Config2a_CV55_chara{$ConfigCV_While=55;ConfigVoiceFade();}
			case Config2a_CV56_chara{$ConfigCV_While=56;ConfigVoiceFade();}
			case Config2a_CV57_chara{$ConfigCV_While=57;ConfigVoiceFade();}
			case Config2a_CV58_chara{$ConfigCV_While=58;ConfigVoiceFade();}
			case Config2a_CV59_chara{$ConfigCV_While=59;ConfigVoiceFade();}
			case Config2a_CV60_chara{$ConfigCV_While=60;ConfigVoiceFade();}
		}
	}
	CreateTexture("ConfigVoiceScreen", 12000, 0, 0, SCREEN);

	Fade("Config2f*", 0, 0, null, true);
	Fade("Config2a*", 0, 0, null, true);
	Fade("Config2a*/*/*", 0, 0, null, true);

	Fade("ConfigVoiceScreen", 300, 0, null, true);

	$SYSTEM_keydown_c=false;
	$SYSTEM_r_button_down=false;
}

..//���ʾ���ã֡�
function ConfigVoiceFade()
{
	if(VariableValue(#,"voice_on_"+#ConfigCV_Name[$ConfigCV_While])){
		$nutpre=String("Config2a_CV%02d_chara",$ConfigCV_While);
		$cnut=$nutpre+"02";
	
		if(!VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While]+"[1]")){
			VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While]+"[1]",true);
			Fade($cnut, 0, 0, null, false);
		}else{
			VariableValue(#,"ConfigCV_"+#ConfigCV_Name[$ConfigCV_While]+"[1]",false);
			Fade($cnut, 0, 1000, null, false);
		}

		if(!#ConfigCV_����������[1]&&!#ConfigCV_������Ů��[1]){
			#SYSTEM_voice_enable_another=true;
		}

		ConfigCharacterVoice();
	}
}

..//���B�붨�x���ã�������ʾ�������ԡ�
function ConfigVoiceArray()
{
	//#һ�¥��ꥢ=true;
	//���B�붨�x
	if(#һ�¥��ꥢ){
		Array(#ConfigCV_Name,NO,��������,����,�������w,����ҰС��,�R���ұ�,⏴��,���B����֦,���}����,�c��һ��,ѩ܇�һ�i,���,�L���Ҿ�,С̫��,��Դ̫,�դ�,�դ�,�����o��,���B�{�Ӻ�,�[��ͯ��,���׵�,�����衩��,���L,����Υ�,���`���å�,���m,��·��,��·׿,��������,������霔�,���B,�о����L,�x��,�཭,�Զ�����,�����y,ɽ�\�����I,���I�ε�,����,�����@��,��������,������`,�\��ͯ��,���֥ǥ�,�������,���}��,���B��֦,ʼ�����,��g,�։�,�����奢���,���`�ꥬ,���ι�,�y�Ǻ�,����������,������Ů��,NO,NO);
		AssocArray(#ConfigCV_Name,NO,��������,����,�������w,����ҰС��,�R���ұ�,⏴��,���B����֦,���}����,�c��һ��,ѩ܇�һ�i,���,�L���Ҿ�,С̫��,��Դ̫,�դ�,�դ�,�����o��,���B�{�Ӻ�,�[��ͯ��,���׵�,�����衩��,���L,����Υ�,���`���å�,���m,��·��,��·׿,��������,������霔�,���B,�о����L,�x��,�཭,�Զ�����,�����y,ɽ�\�����I,���I�ε�,����,�����@��,��������,������`,�\��ͯ��,���֥ǥ�,�������,���}��,���B��֦,ʼ�����,��g,�։�,�����奢���,���`�ꥬ,���ι�,�y�Ǻ�,����������,������Ů��,NO,NO);
	}else{
		Array(#ConfigCV_Name,NO,�������w,����ҰС��,�R���ұ�,⏴��,���B����֦,���}����,�c��һ��,ѩ܇�һ�i,���,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,��������,����,�y�Ǻ�,����������,������Ů��);
		AssocArray(#ConfigCV_Name,NO,�������w,����ҰС��,�R���ұ�,⏴��,���B����֦,���}����,�c��һ��,ѩ܇�һ�i,���,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,��������,����,�y�Ǻ�,����������,������Ů��);
	}
	$ConfigCV_Max=Count(#ConfigCV_Name);

	//$DebugMode=false;
	if($DebugMode){
		$ConfigCV_While=1;
		while($ConfigCV_Max>$ConfigCV_While){
			VariableValue(#,"voice_on_"+#ConfigCV_Name[$ConfigCV_While],true);
			$ConfigCV_While++;
		}
	}

	#voice_on_NO=false;
}

..//���B�붨�x���ã��������ڶ��x��
function VoiceResetSet()
{
		Array(#VoiceName,��������,����,�������w,����ҰС��,�R���ұ�,⏴��,���B����֦,���}����,�c��һ��,ѩ܇�һ�i,���,�L���Ҿ�,С̫��,��Դ̫,�դ�,�դ�,�����o��,���B�{�Ӻ�,�[��ͯ��,���׵�,�����衩��,���L,����Υ�,���`���å�,���m,��·��,��·׿,��������,������霔�,���B,�о����L,�x��,�཭,�Զ�����,�����y,ɽ�\�����I,���I�ε�,����,�����@��,��������,������`,�\��ͯ��,���֥ǥ�,�������,���}��,���B��֦,ʼ�����,��g,�։�,�����奢���,���`�ꥬ,���ι�,�y�Ǻ�,����������,������Ů��);
		AssocArray(#VoiceName,��������,����,�������w,����ҰС��,�R���ұ�,⏴��,���B����֦,���}����,�c��һ��,ѩ܇�һ�i,���,�L���Ҿ�,С̫��,��Դ̫,�դ�,�դ�,�����o��,���B�{�Ӻ�,�[��ͯ��,���׵�,�����衩��,���L,����Υ�,���`���å�,���m,��·��,��·׿,��������,������霔�,���B,�о����L,�x��,�཭,�Զ�����,�����y,ɽ�\�����I,���I�ε�,����,�����@��,��������,������`,�\��ͯ��,���֥ǥ�,�������,���}��,���B��֦,ʼ�����,��g,�։�,�����奢���,���`�ꥬ,���ι�,�y�Ǻ�,����������,������Ů��);
	#VoiceSetCount=Count(#VoiceName);

	Array(#ConfigCV_��������,"����");
	Array(#ConfigCV_����,"��������");
	Array(#ConfigCV_�������w,"���w");
	Array(#ConfigCV_����ҰС��,"С��");
	Array(#ConfigCV_�R���ұ�,"�ұ�");
	Array(#ConfigCV_⏴��,"⏴�");
	Array(#ConfigCV_���B����֦,"����֦");
	Array(#ConfigCV_���}����,"����");
	Array(#ConfigCV_�c��һ��,"һ��");
	Array(#ConfigCV_ѩ܇�һ�i,"ѩ܇�");
	Array(#ConfigCV_���,"���");
	Array(#ConfigCV_�L���Ҿ�,"�L��");
	Array(#ConfigCV_С̫��,"С̫��");
	Array(#ConfigCV_��Դ̫,"��Դ̫");
	Array(#ConfigCV_�դ�,"�դ�");
	Array(#ConfigCV_�դ�,"�դ�");
	Array(#ConfigCV_�����o��,"�o��");
	Array(#ConfigCV_���B�{�Ӻ�,"�{�Ӻ�");
	Array(#ConfigCV_�[��ͯ��,"ͯ��");
	Array(#ConfigCV_���׵�,"�׵�");
	Array(#ConfigCV_�����衩��,"�衩��");
	Array(#ConfigCV_���L,"���L");
	Array(#ConfigCV_����Υ�,"����Υ�");
	Array(#ConfigCV_���`���å�,"���`���å�");
	Array(#ConfigCV_���m,"���m");
	Array(#ConfigCV_��·��,"��");
	Array(#ConfigCV_��·׿,"��·");
	Array(#ConfigCV_��������,"��������");
	Array(#ConfigCV_������霔�,"��霔�");
	Array(#ConfigCV_���B,"���B");
	Array(#ConfigCV_�о����L,"�о����L");
	Array(#ConfigCV_�x��,"�x��");
	Array(#ConfigCV_�཭,"�཭");
	Array(#ConfigCV_�Զ�����,"����");
	Array(#ConfigCV_�����y,"�y");
	Array(#ConfigCV_ɽ�\�����I,"���I��");
	Array(#ConfigCV_���I�ε�,"���I��");
	Array(#ConfigCV_����,"����");
	Array(#ConfigCV_�����@��,"�@��");
	Array(#ConfigCV_��������,"����");
	Array(#ConfigCV_������`,"������`");
	Array(#ConfigCV_�\��ͯ��,"�\��");
	Array(#ConfigCV_���֥ǥ�,"���֥ǥ�");
	Array(#ConfigCV_�������,"�������");
	Array(#ConfigCV_���}��,"���}��");
	Array(#ConfigCV_���B��֦,"��֦");
	Array(#ConfigCV_ʼ�����,"ʼ�����");
	Array(#ConfigCV_��g,"��g");
	Array(#ConfigCV_�։�,"�։�");
	Array(#ConfigCV_�����奢���,"�����奢���");
	Array(#ConfigCV_���`�ꥬ,"���`�ꥬ");
	Array(#ConfigCV_���ι�,"���ҥ���");
	Array(#ConfigCV_�y�Ǻ�,"��");
	Array(#ConfigCV_����������,"����������");
	Array(#ConfigCV_������Ů��,"������Ů��");
}


..//���ͥ����ȥե��`�������ã֡�
function ConfigVoiceFocus()
{
	if(#һ�¥��ꥢ){
		$FocusSelectMax=55;
	}else{
		$FocusSelectMax=57;
	}
	$FocusLine=19;

	$FocusWhile=1;
	while($FocusWhile<=$FocusSelectMax){
		$FocusRig=$FocusWhile-1;
		$FocusLef=$FocusWhile+1;
		$FocusUpn=$FocusWhile-$FocusLine;
		$FocusDow=$FocusWhile+$FocusLine;

		//��
		if(Integer($FocusWhile%$FocusLine)==1){
			$FocusRig=(Integer($FocusWhile/$FocusLine)+1)*$FocusLine;
		}
		if($FocusRig>$FocusSelectMax){
			$FocusRig=$FocusSelectMax;
		}
		if($FocusLine==1&&$FocusWhile==1){
			$FocusRig=$FocusSelectMax;
		}

		if(!#һ�¥��ꥢ&&$FocusRig==19){$FocusRig=57;}
		if(!#һ�¥��ꥢ&&$FocusRig==52){$FocusRig=9;}

		//��
		if(Integer($FocusWhile%$FocusLine)==0){
			$FocusLef=$FocusWhile-$FocusLine+1;
		}
		if(($FocusWhile==$FocusSelectMax)&&(Integer($FocusWhile%$FocusLine)!=0)){
			$FocusLef=Integer($FocusSelectMax/$FocusLine)*$FocusLine+1;
		}
		if($FocusLine==1){
			$FocusLef=$FocusWhile+1;
			if($FocusWhile==$FocusSelectMax){
				$FocusLef=1;
			}
		}

		if(!#һ�¥��ꥢ&&$FocusLef==10){$FocusLef=53;}
		if(!#һ�¥��ꥢ&&$FocusLef==39){$FocusLef=1;}


		//��
		if($FocusWhile<=$FocusLine){
			$FocusUpn=$FocusWhile+(Integer($FocusSelectMax/$FocusLine)*$FocusLine);
		}
		if($FocusUpn>$FocusSelectMax){
			$FocusUpn=$FocusUpn-$FocusLine;
		}

		if(!#һ�¥��ꥢ&&$FocusUpn>38){$FocusUpn=53;}
		if(!#һ�¥��ꥢ&&$FocusUpn<39){$FocusUpn=9;}

		//��
		if($FocusWhile>Integer($FocusSelectMax/$FocusLine)*$FocusLine){
			$FocusDow=$FocusWhile-(Integer($FocusSelectMax/$FocusLine)*$FocusLine);
		}
		if($FocusDow>$FocusSelectMax){
			$FocusDow=$FocusDow-(Integer($FocusSelectMax/$FocusLine)*$FocusLine);
		}

		if(!#һ�¥��ꥢ&&$FocusDow>19){$FocusDow=53;}
		if(!#һ�¥��ꥢ&&$FocusDow<20){$FocusDow=9;}


		$FocusFocusNow=String("Config2a_CV%02d_chara/MouseUsual/hit",$FocusWhile);
		$FocusFocusRig=String("Config2a_CV%02d_chara/MouseUsual/hit",$FocusRig);
		$FocusFocusLef=String("Config2a_CV%02d_chara/MouseUsual/hit",$FocusLef);
		$FocusFocusUpn=String("Config2a_CV%02d_chara/MouseUsual/hit",$FocusUpn);
		$FocusFocusDow=String("Config2a_CV%02d_chara/MouseUsual/hit",$FocusDow);

		SetNextFocus($FocusFocusNow, $FocusFocusUpn, UP);
		SetNextFocus($FocusFocusNow, $FocusFocusLef, LEFT);
		SetNextFocus($FocusFocusNow, $FocusFocusDow, DOWN);
		SetNextFocus($FocusFocusNow, $FocusFocusRig, RIGHT);

		$FocusWhile++;

		if(!#һ�¥��ꥢ&&$FocusWhile==10){$FocusWhile=53;}
	}
}


.//���ץ���
//���ץ����ޥ������`�ॹ�ԩ`�ɡ�
function ConfigPSpeedProcessOPEN()
{
		Fade("@Config1a_PSpeed02", 0, 1000, null, false);
		Fade("@Config1f_PSpeed01", 0, 0, null, true);
}
function ConfigPSpeedProcessSTOP()
{
	Fade("@Config1f_PSpeed01", 0, 1000, null, false);
	Fade("@Config1a_PSpeed02", 0, 0, null, false);
	SetVolume("@Config1a_PSpeed_Pro01/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ�����å��`��������ɥ���
function ConfigMTransProcessOPEN()
{
		Fade("@Config1a_MTrans02", 0, 1000, null, false);
		Fade("@Config1f_MTrans01", 0, 0, null, true);
}
function ConfigMTransProcessSTOP()
{
	Fade("@Config1f_MTrans01", 0, 1000, null, false);
	Fade("@Config1a_MTrans02", 0, 0, null, false);
	SetVolume("@Config1a_MTrans_Pro01/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ�����å��`�����ԩ`�ɡ�
function ConfigMSpeedProcessOPEN()
{
		Fade("@Config1a_MSpeed02", 0, 1000, null, false);
		Fade("@Config1f_MSpeed01", 0, 0, null, true);
}
function ConfigMSpeedProcessSTOP()
{
	Fade("@Config1f_MSpeed01", 0, 1000, null, false);
	Fade("@Config1a_MSpeed02", 0, 0, null, false);
	SetVolume("@Config1a_MSpeed_Pro01/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����Ԅ������ͤꥹ�ԩ`�ɡ�
function ConfigASpeedProcessOPEN()
{
		Fade("@Config1a_ASpeed02", 0, 1000, null, false);
		Fade("@Config1f_ASpeed01", 0, 0, null, true);
}
function ConfigASpeedProcessSTOP()
{
	Fade("@Config1f_ASpeed01", 0, 1000, null, false);
	Fade("@Config1a_ASpeed02", 0, 0, null, false);
	SetVolume("@Config1a_ASpeed_Pro01/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����£ǣͥܥ��`�ࡹ
function ConfigBVolumeProcessOPEN()
{
		Fade("@Config1a_BVolume02", 0, 1000, null, false);
		Fade("@Config1f_BVolume01", 0, 0, null, true);
}
function ConfigBVolumeProcessSTOP()
{
	Fade("@Config1f_BVolume01", 0, 1000, null, false);
	Fade("@Config1a_BVolume02", 0, 0, null, false);
	SetVolume("@Config1a_BVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ӣťܥ��`�ࡹ
function ConfigSVolumeProcessOPEN()
{
		Fade("@Config1a_SVolume02", 0, 1000, null, false);
		Fade("@Config1f_SVolume01", 0, 0, null, true);
}
function ConfigSVolumeProcessSTOP()
{
	Fade("@Config1f_SVolume01", 0, 1000, null, false);
	Fade("@Config1a_SVolume02", 0, 0, null, false);
	SetVolume("@Config1a_SVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ��������ܥ��`�ࡹ
function ConfigVVolumeProcessOPEN()
{
		Fade("@Config1a_VVolume02", 0, 1000, null, false);
		Fade("@Config1f_VVolume01", 0, 0, null, true);
}
function ConfigVVolumeProcessSTOP()
{
	Fade("@Config1f_VVolume01", 0, 1000, null, false);
	Fade("@Config1a_VVolume02", 0, 0, null, false);
	SetVolume("@Config1a_VVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
}


//���ץ����ޥ����x�k֫����Ԅ������ͤ꣦�����åפ�����
function ConfigCSkipProcessOPEN()
{
		Fade("@Config1a_CSkip02", 0, 1000, null, false);
		Fade("@Config1f_CSkip01", 0, 0, null, true);
}
function ConfigCSkipProcessSTOP()
{
	Fade("@Config1f_CSkip01", 0, 1000, null, false);
	Fade("@Config1a_CSkip02", 0, 0, null, false);
	SetVolume("@Config1a_CSkip_Pro01/MouseOver/sound", 0, 1000, NULL);
}


//���ץ����ޥ����x�k֫����Ԅ������ͤ꣦�����åפ�����
function ConfigCSkipONProcessOPEN()
{
	Request("@Config1a_CSkipOFF/MouseLeave/button", Stop);
	WaitAction("@Config1a_CSkipOFF/MouseLeave/button", null);
	Fade("@Config1a_CSkipBar", 0, 1000, null, false);
}
function ConfigCSkipONProcessSTOP()
{
	Fade("@Config1a_CSkipBar", 100, 0, null, false);
	SetVolume("@Config1a_CSkipON/MouseOver/sound", 0, 1000, NULL);
}
function ConfigCSkipOFFProcessOPEN()
{
	Request("@Config1a_CSkipON/MouseLeave/button", Stop);
	WaitAction("@Config1a_CSkipON/MouseLeave/button", null);
	Fade("@Config1a_CSkipBar", 0, 1000, null, false);
}
function ConfigCSkipOFFProcessSTOP()
{
	Fade("@Config1a_CSkipBar", 100, 0, null, false);
	SetVolume("@Config1a_CSkipOFF/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ���δ�i�r�Ǥ⥹���åפ��룿��
function ConfigASkipONProcessOPEN()
{
	Request("@Config1a_ASkipOFF/MouseLeave/button", Stop);
	WaitAction("@Config1a_ASkipOFF/MouseLeave/button", null);
	Fade("@Config1a_ASkipBar", 0, 1000, null, false);
}
function ConfigASkipONProcessSTOP()
{
	Fade("@Config1a_ASkipBar", 100, 0, null, false);
	SetVolume("@Config1a_ASkipON/MouseOver/sound", 0, 1000, NULL);
}
function ConfigASkipOFFProcessOPEN()
{
	Request("@Config1a_ASkipON/MouseLeave/button", Stop);
	WaitAction("@Config1a_ASkipON/MouseLeave/button", null);
	Fade("@Config1a_ASkipBar", 0, 1000, null, false);
}
function ConfigASkipOFFProcessSTOP()
{
	Fade("@Config1a_ASkipBar", 100, 0, null, false);
	SetVolume("@Config1a_ASkipOFF/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ��������ͤ�r�������O����
function ConfigKVoiceONProcessOPEN()
{
	Request("@Config1a_KVoiceOFF/MouseLeave/button", Stop);
	WaitAction("@Config1a_KVoiceOFF/MouseLeave/button", null);
	Fade("@Config1a_KVoiceBar", 0, 1000, null, false);
}
function ConfigKVoiceONProcessSTOP()
{
	Fade("@Config1a_KVoiceBar", 100, 0, null, false);
	SetVolume("@Config1a_KVoiceON/MouseOver/sound", 0, 1000, NULL);
}
function ConfigKVoiceOFFProcessOPEN()
{
	Request("@Config1a_KVoiceON/MouseLeave/button", Stop);
	WaitAction("@Config1a_KVoiceON/MouseLeave/button", null);
	Fade("@Config1a_KVoiceBar", 0, 1000, null, false);
}
function ConfigKVoiceOFFProcessSTOP()
{
	Fade("@Config1a_KVoiceBar", 100, 0, null, false);
	SetVolume("@Config1a_KVoiceOFF/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����Ԅ������ͤ�r�������O����
function ConfigSVoiceONProcessOPEN()
{
	Request("@Config1a_SVoiceOFF/MouseLeave/button", Stop);
	WaitAction("@Config1a_SVoiceOFF/MouseLeave/button", null);
	Fade("@Config1a_SVoiceBar", 0, 1000, null, false);
}
function ConfigSVoiceONProcessSTOP()
{
	Fade("@Config1a_SVoiceBar", 100, 0, null, false);
	SetVolume("@Config1a_SVoiceON/MouseOver/sound", 0, 1000, NULL);
}
function ConfigSVoiceOFFProcessOPEN()
{
	Request("@Config1a_SVoiceON/MouseLeave/button", Stop);
	WaitAction("@Config1a_SVoiceON/MouseLeave/button", null);
	Fade("@Config1a_SVoiceBar", 0, 1000, null, false);
}
function ConfigSVoiceOFFProcessSTOP()
{
	Fade("@Config1a_SVoiceBar", 100, 0, null, false);
	SetVolume("@Config1a_SVoiceOFF/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����£ǣͤ��������롹
function ConfigBPlayONProcessOPEN()
{
	Request("@Config1a_BPlayOFF/MouseLeave/button", Stop);
	WaitAction("@Config1a_BPlayOFF/MouseLeave/button", null);
	Fade("@Config1a_BPlayBar", 0, 1000, null, false);
}
function ConfigBPlayONProcessSTOP()
{
	Fade("@Config1a_BPlayBar", 100, 0, null, false);
	SetVolume("@Config1a_BPlayON/MouseOver/sound", 0, 1000, NULL);
}
function ConfigBPlayOFFProcessOPEN()
{
	Request("@Config1a_BPlayON/MouseLeave/button", Stop);
	WaitAction("@Config1a_BPlayON/MouseLeave/button", null);
	Fade("@Config1a_BPlayBar", 0, 1000, null, false);
}
function ConfigBPlayOFFProcessSTOP()
{
	Fade("@Config1a_BPlayBar", 100, 0, null, false);
	SetVolume("@Config1a_BPlayOFF/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ӣŤ��������롹
function ConfigSPlayONProcessOPEN()
{
	Request("@Config1a_SPlayOFF/MouseLeave/button", Stop);
	WaitAction("@Config1a_SPlayOFF/MouseLeave/button", null);
	Fade("@Config1a_SPlayBar", 0, 1000, null, false);
}
function ConfigSPlayONProcessSTOP()
{
	Fade("@Config1a_SPlayBar", 100, 0, null, false);
	SetVolume("@Config1a_SPlayON/MouseOver/sound", 0, 1000, NULL);
}
function ConfigSPlayOFFProcessOPEN()
{
	Request("@Config1a_SPlayON/MouseLeave/button", Stop);
	WaitAction("@Config1a_SPlayON/MouseLeave/button", null);
	Fade("@Config1a_SPlayBar", 0, 1000, null, false);
}
function ConfigSPlayOFFProcessSTOP()
{
	Fade("@Config1a_SPlayBar", 100, 0, null, false);
	SetVolume("@Config1a_SPlayOFF/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����������������롹
function ConfigVPlayONProcessOPEN()
{
	Request("@Config1a_VPlayOFF/MouseLeave/button", Stop);
	WaitAction("@Config1a_VPlayOFF/MouseLeave/button", null);
	Fade("@Config1a_VPlayBar", 0, 1000, null, false);
}
function ConfigVPlayONProcessSTOP()
{
	Fade("@Config1a_VPlayBar", 100, 0, null, false);
	SetVolume("@Config1a_VPlayON/MouseOver/sound", 0, 1000, NULL);
}
function ConfigVPlayOFFProcessOPEN()
{
	Request("@Config1a_VPlayON/MouseLeave/button", Stop);
	WaitAction("@Config1a_VPlayON/MouseLeave/button", null);
	Fade("@Config1a_VPlayBar", 0, 1000, null, false);
}
function ConfigVPlayOFFProcessSTOP()
{
	Fade("@Config1a_VPlayBar", 100, 0, null, false);
	SetVolume("@Config1a_VPlayOFF/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Achara��
function ConfigCV_AcharaProcessOPEN()
{
	Request("@Config1a_CV_Achara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Bchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Cchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Dchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Echara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Fchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Gchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Achara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Bchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Cchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Dchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Echara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Fchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Gchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar01", 0, 1000, null, false);
}
function ConfigCV_AcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar01", 100, 0, null, false);
	SetVolume("@Config1a_CV_Achara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Bchara��
function ConfigCV_BcharaProcessOPEN()
{
	Request("@Config1a_CV_Achara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Bchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Cchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Dchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Echara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Fchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Gchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Achara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Bchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Cchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Dchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Echara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Fchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Gchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar01", 0, 1000, null, false);
}
function ConfigCV_BcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar01", 100, 0, null, false);
	SetVolume("@Config1a_CV_Bchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Cchara��
function ConfigCV_CcharaProcessOPEN()
{
	Request("@Config1a_CV_Achara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Bchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Cchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Dchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Echara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Fchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Gchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Achara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Bchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Cchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Dchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Echara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Fchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Gchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar01", 0, 1000, null, false);
}
function ConfigCV_CcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar01", 100, 0, null, false);
	SetVolume("@Config1a_CV_Cchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Dchara��
function ConfigCV_DcharaProcessOPEN()
{
	Request("@Config1a_CV_Achara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Bchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Cchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Dchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Echara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Fchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Gchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Achara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Bchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Cchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Dchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Echara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Fchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Gchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar01", 0, 1000, null, false);
}
function ConfigCV_DcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar01", 100, 0, null, false);
	SetVolume("@Config1a_CV_Dchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Echara��
function ConfigCV_EcharaProcessOPEN()
{
	Request("@Config1a_CV_Achara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Bchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Cchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Dchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Echara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Fchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Gchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Achara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Bchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Cchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Dchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Echara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Fchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Gchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar01", 0, 1000, null, false);
}
function ConfigCV_EcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar01", 100, 0, null, false);
	SetVolume("@Config1a_CV_Echara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Fchara��
function ConfigCV_FcharaProcessOPEN()
{
	Request("@Config1a_CV_Achara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Bchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Cchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Dchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Echara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Fchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Gchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Achara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Bchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Cchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Dchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Echara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Fchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Gchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar01", 0, 1000, null, false);
}
function ConfigCV_FcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar01", 100, 0, null, false);
	SetVolume("@Config1a_CV_Fchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Gchara��
function ConfigCV_GcharaProcessOPEN()
{
	Request("@Config1a_CV_Achara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Bchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Cchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Dchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Echara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Fchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Gchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Achara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Bchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Cchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Dchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Echara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Fchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Gchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar01", 0, 1000, null, false);
}
function ConfigCV_GcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar01", 100, 0, null, false);
	SetVolume("@Config1a_CV_Gchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Hchara��
function ConfigCV_HcharaProcessOPEN()
{
	Request("@Config1a_CV_Hchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Ichara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Jchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Kchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Lchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Mchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Nchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Hchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Ichara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Jchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Kchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Lchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Mchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Nchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar02", 0, 1000, null, false);
}
function ConfigCV_HcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar02", 100, 0, null, false);
	SetVolume("@Config1a_CV_Hchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Ichara��
function ConfigCV_IcharaProcessOPEN()
{
	Request("@Config1a_CV_Hchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Ichara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Jchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Kchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Lchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Mchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Nchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Hchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Ichara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Jchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Kchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Lchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Mchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Nchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar02", 0, 1000, null, false);
}
function ConfigCV_IcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar02", 100, 0, null, false);
	SetVolume("@Config1a_CV_Ichara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Jchara��
function ConfigCV_JcharaProcessOPEN()
{
	Request("@Config1a_CV_Hchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Ichara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Jchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Kchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Lchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Mchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Nchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Hchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Ichara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Jchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Kchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Lchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Mchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Nchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar02", 0, 1000, null, false);
}
function ConfigCV_JcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar02", 100, 0, null, false);
	SetVolume("@Config1a_CV_Jchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Kchara��
function ConfigCV_KcharaProcessOPEN()
{
	Request("@Config1a_CV_Hchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Ichara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Jchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Kchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Lchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Mchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Nchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Hchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Ichara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Jchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Kchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Lchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Mchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Nchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar02", 0, 1000, null, false);
}
function ConfigCV_KcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar02", 100, 0, null, false);
	SetVolume("@Config1a_CV_Kchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Lchara��
function ConfigCV_LcharaProcessOPEN()
{
	Request("@Config1a_CV_Hchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Ichara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Jchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Kchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Lchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Mchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Nchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Hchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Ichara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Jchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Kchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Lchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Mchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Nchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar02", 0, 1000, null, false);
}
function ConfigCV_LcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar02", 100, 0, null, false);
	SetVolume("@Config1a_CV_Lchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Mchara��
function ConfigCV_McharaProcessOPEN()
{
	Request("@Config1a_CV_Hchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Ichara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Jchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Kchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Lchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Mchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Nchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Hchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Ichara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Jchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Kchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Lchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Mchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Nchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar02", 0, 1000, null, false);
}
function ConfigCV_McharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar02", 100, 0, null, false);
	SetVolume("@Config1a_CV_Mchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Nchara��
function ConfigCV_NcharaProcessOPEN()
{
	Request("@Config1a_CV_Hchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Ichara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Jchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Kchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Lchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Mchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Nchara/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Hchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Ichara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Jchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Kchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Lchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Mchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Nchara/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar02", 0, 1000, null, false);
}
function ConfigCV_NcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar02", 100, 0, null, false);
	SetVolume("@Config1a_CV_Nchara/MouseOver/sound", 0, 1000, NULL);
}


//���ץ����ޥ����ã֣�Ochara��
function ConfigCV_OcharaProcessOPEN()
{
	Request("@Config1a_CV_Ochara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Pchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Other/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Ochara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Pchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Other/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar03", 0, 1000, null, false);
}
function ConfigCV_OcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar03", 100, 0, null, false);
	SetVolume("@Config1a_CV_Ochara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Pchara��
function ConfigCV_PcharaProcessOPEN()
{
	Request("@Config1a_CV_Ochara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Pchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Other/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Ochara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Pchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Other/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar03", 0, 1000, null, false);
}
function ConfigCV_PcharaProcessSTOP()
{
	Fade("@Config1a_CV_Bar03", 100, 0, null, false);
	SetVolume("@Config1a_CV_Pchara/MouseOver/sound", 0, 1000, NULL);
}

//���ץ����ޥ����ã֣�Other��
function ConfigCV_OtherProcessOPEN()
{
	Request("@Config1a_CV_Ochara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Pchara/MouseLeave/button", Stop);
	Request("@Config1a_CV_Other/MouseLeave/button", Stop);
	WaitAction("@Config1a_CV_Ochara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Pchara/MouseLeave/button", null);
	WaitAction("@Config1a_CV_Other/MouseLeave/button", null);
	Fade("@Config1a_CV_Bar03", 0, 1000, null, false);
}
function ConfigCV_OtherProcessSTOP()
{
	Fade("@Config1a_CV_Bar03", 100, 0, null, false);
	SetVolume("@Config1a_CV_Other/MouseOver/sound", 0, 1000, NULL);
}



