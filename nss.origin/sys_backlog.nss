$Revision: 10 $

//=============================================================================//
//■バックログ■
//=============================================================================//

chapter main
{
	Wait(16);
//	CursorPosition($LogPosX,$LogPosY);

	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//★定義「ストレージ番号取得」
	//FlagCheck();

	//■フラグ関係
	//バックログ関係システム変数
	//※一行あたりの文字数はシステムの都合上「System.ini」の「バックログ」セクションで設定してください。
	$SYSTEM_backlog_row_max=16;			//バックログ表示の最大行数
	$SYSTEM_backlog_voice_icon_x=102;	//バックログ表示の音声リピートアイコンＸ座標
	$SYSTEM_backlog_position_x=140;		//バックログ表示の文章開始位置Ｘ座標
	$SYSTEM_backlog_position_y=49;		//バックログ表示の文章開始位置Ｙ座標
	$SYSTEM_backlog_row_interval=30	;	//バックログ表示の行間サイズ
	$SYSTEM_backlog_character_width=20;	//バックログ表示の各文字幅

	if($SYSTEM_backlog_lock){
		//$backlog_lock_plus=true;
	}
	//$SYSTEM_backlog_lock=false;

	//■準備「スクリーン」//※右クリックから来ていなければ
	if(!$SYSTEM_menu_enable){
		if(Platform()==100){
			CreateTexture("video",10000,center,middle,SCREEN);
			CreateTexture("bkf背景２",10100,center,middle,SCREEN);
		}else{
			CreateTexture("video",10000,center,middle,VIDEO);
			CreateTexture("bkf背景２",10100,center,middle,VIDEO);
		}
	}else if($SYSTEM_menu_enable){
		CreateTexture("video",10000,center,middle,SCREEN);
		CreateTexture("bkf背景２",10100,center,middle,SCREEN);
	}
/*
	//■準備「フォント」
	LoadFont("LogFont01", "黑体", 20, #000000, #000000, 500, null, "あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをんがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽぁぃぅぇぉっゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンガギグゲゴザジズゼゾダヂヅデドバビブベボパピプペポァィゥェォッャュョ、。ー…！？―「」『』１２３４５６７８９０");
	LoadFont("LogFont02", "黑体", 20, #000000, #000000, 500, null, "一今日敵味方思分行時言聞見何人終好急");
	LoadFont("LogFont03", "黑体", 20, #000000, #000000, 500, null, "化八九〇零式竜騎兵航太刀数真打劔冑御堂武者雄飛湊斗景明光統世村正銀星号綾祢一条大鳥香奈枝足利茶々丸署長護氏永倉岡部童心獅子吼川雪車町金神様幕府六波羅家大和国空甲鉄電磁赤青白黒色ＧＨＱ");
*/
	SetFont("黑体",20,#000000,#000000,500,null);

	//▼定義「背景」
	CreateTexture("bkf背景",10010,0,0,"cg/sys/backlog/バックログ背景.png");
	SetAlias("bkf背景", "bkf背景");

	//▼定義「上ページ送り」
//	CreateChoice("bk上ページ");
//	CreateTexture("bk上ページ/MouseUsual/button",10050,509,31,"cg/sys/backlog/もどるスキップOFF.png");
//	CreateTexture("bk上ページ/MouseOver/button",10050,509,31,"cg/sys/backlog/もどるスキップOVER.png");
//	CreateTexture("bk上ページ/MouseClick/button",10050,509,31,"cg/sys/backlog/もどるスキップON.png");

	//▼定義「上ライン送り」
	CreateTexture("bkf上ライン",10050,898,168,"cg/sys/backlog/001-逆.png");
	CreateChoice("bk上ライン");
	CreateTexture("bk上ライン/MouseUsual/hit",10050,898,168,"cg/sys/backlog/アタリ判定ー逆.png");
	CreateTexture("bk上ライン/MouseUsual/button",10050,898,168,"cg/sys/backlog/001-逆.png");
	CreateTexture("bk上ライン/MouseOver/button",10050,898,168,"cg/sys/backlog/002-逆.png");
	CreateTexture("bk上ライン/MouseClick/button",10050,898,168,"cg/sys/backlog/003-逆.png");

	//▼定義「下ページ送り」
//	CreateChoice("bk下ページ");
//	CreateTexture("bk下ページ/MouseUsual/button",10050,509,523,"cg/sys/backlog/すすむスキップOFF.png");
//	CreateTexture("bk下ページ/MouseOver/button",10050,509,523,"cg/sys/backlog/すすむスキップOVER.png");
//	CreateTexture("bk下ページ/MouseClick/button",10050,509,523,"cg/sys/backlog/すすむスキップON.png");

	//▼定義「下ライン送り」
	CreateTexture("bkf下ライン",10050,898,303,"cg/sys/backlog/001-進.png");
	CreateChoice("bk下ライン");
	CreateTexture("bk下ライン/MouseUsual/hit",10050,898,303,"cg/sys/backlog/アタリ判定ー進.png");
	CreateTexture("bk下ライン/MouseUsual/button",10050,898,303,"cg/sys/backlog/001-進.png");
	CreateTexture("bk下ライン/MouseOver/button",10050,898,303,"cg/sys/backlog/002-進.png");
	CreateTexture("bk下ライン/MouseClick/button",10050,898,303,"cg/sys/backlog/003-進.png");

	//▼定義「出口」
	CreateTexture("bkf出口基本",10050,927,438,"cg/sys/backlog/001-退出.png");
	CreateChoice("bk出口");
	SetAlias("bk出口", "bk出口");
	CreateTexture("@bk出口/MouseUsual/hit",0,927,438,"cg/sys/backlog/001-退出.png");
//	CreateTexture("@bk出口/MouseUsual/button",10050,927,438,"cg/sys/backlog/001-退出.png");
	CreateTexture("@bk出口/MouseOver/button",10050,927,438,"cg/sys/backlog/002-退出.png");
	CreateTexture("@bk出口/MouseClick/button",10050,927,438,"cg/sys/backlog/003-退出.png");

	//▼定義「バックログ」
	CreateScrollbar("bkスクロールバー",0,860,461,860,50,0,VERTICAL,"cg/sys/backlog/001-スクロール.png");
	SetAlias("bkスクロールバー", "bkスクロールバー");
	CreateBacklog("bkバックログ",10010);
	SetScrollbar("bkスクロールバー","bkバックログ");

	//▼定義「矢印」
	CreateChoice("bk矢印");
	SetAlias("bk矢印", "bk矢印");
	CreateTexture("@bk矢印/MouseUsual/hit",10050,860,461,"cg/sys/backlog/001-スクロール.png");
	CreateProcess("@bk矢印/MouseOver/button", 10050, 0, 0, "BackLogProcessOpen");
	CreateProcess("@bk矢印/MouseLeave/button", 10050, 0, 0, "BackLogProcessStop");

	CreateTexture("bkカーソル01",10050,860,461,"cg/sys/backlog/001-スクロール.png");
	SetAlias("bkカーソル01", "bkカーソル01");
	CreateTexture("bkカーソル02",10050,860,461,"cg/sys/backlog/002-スクロール.png");
	SetAlias("bkカーソル02", "bkカーソル02");

	//■定義「ボタン説明」
	//DialogButtonON("Button_LOG");


	SetNextFocus("@bk出口/MouseUsual/hit","@bk出口/MouseUsual/hit",LEFT);
	SetNextFocus("@bk出口/MouseUsual/hit","@bk出口/MouseUsual/hit",RIGHT);


	//●準備
	Request("*/*/hit", Erase);
	Fade("bk*", 0, 0, null, false);
	Fade("bk*/*", 0, 0, null, false);
	Fade("bk*/*/*", 0, 0, null, false);
	Fade("bkf*", 0, 1000, null, false);
	Fade("bkカーソル01", 0, 1000, null, false);

	//●描画
	//▲描画「ボタン説明」
	//DialogButtonFade3("Button_LOG");
	Fade("bkf背景２", 300, 0, null, true);

	//★選択肢
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

			case bk出口{$SYSTEM_backlog_enable=false;break;}
			case bk上ライン{Request("bkスクロールバー",Decrement);}
			case bk上ページ{Request("bkスクロールバー",Prev);}
			case bk下ライン{Request("bkスクロールバー",Increment);}
			case bk下ページ{Request("bkスクロールバー",Next);}

			//★カーソルアイコン
			case bkスクロールバー{}
			case bk矢印{}
			Position("bkスクロールバー",$BackLogPositionX,$BackLogPositionY);
			if($BackLogPositionY!=$PreBackLogPositionY){
				Move("@bk矢印/MouseUsual/hit", 0, @0, $BackLogPositionY, null, true);
				Move("bkカーソル01", 0, @0, $BackLogPositionY, null, true);
				Move("bkカーソル02", 0, @0, $BackLogPositionY, null, true);
			}
			$PreBackLogPositionY=$BackLogPositionY;

			if(!EnableBacklog()||!$SYSTEM_backlog_enable)){break;}

			//★キーダウン系
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

	//▲描画「ボタン説明」
	//DialogButtonOFF3("Button_LOG");

	//●終了動作「描画」
	if(!$SYSTEM_menu_enable){
		Fade("bkf背景２", 300, 1000, null, true);
		Delete("bk*/*/*");
		Delete("bk*");
	}else if($SYSTEM_menu_enable){
		Fade("bkf背景２", 300, 1000, null, true);
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


//■プロセスマクロ
function BackLogProcessOpen()
{
	Fade("@bkカーソル02", 0, 1000, null, false);
	Fade("@bkカーソル01", 0, 0, null, true);
}
function BackLogProcessStop()
{
	Fade("@bkカーソル01", 0, 1000, null, false);
	Fade("@bkカーソル02", 0, 0, null, false);
//	SetVolume("@Config1a_BVolume_Pro01/MouseOver/sound", 0, 1000, NULL);
}
