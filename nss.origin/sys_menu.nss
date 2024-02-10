$Revision: 19 $

//=============================================================================//
//■メニュー■
//=============================================================================//
chapter main
{
	if($GameClose){return;}

	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

//	$LOCAL_extra_lock=false;

	CreateTexture("video1",0,center,middle,"VIDEO");
	CreateTexture("video2", 1000, center, middle, "VIDEO");
	Fade("video2", 0, 0, null, true);

	//■背景
	CreateTexture("me背景", 10, 0, 0, "cg/sys/menu/メニュー黒バック.png");

	//■選択肢
	$MenuCancelX=636;
	$MenuCancelY=89;

	$MenuX=636;

	$MenuExtraY=109;
	$MenuEraseY=129;
	$MenuSendY=149;
	$MenuSkipY=169;
	$MenuSuperY=189;
	$MenuBackY=209;
	$MenuLogY=229;
	$MenuSaveY=249;
	$MenuLoadY=269;
	$MenuQuickY=289;
	$MenuPieceY=309;
	$MenuFullY=329;
	$MenuConfigY=349;
	$MenuTitleY=369;
	$MenuExitY=389;

	CreateChoice("meキャンセル");
	SetAlias("meキャンセル", "meキャンセル");
	CreateTexture("meキャンセルimg",20,$MenuCancelX,$MenuCancelY,"cg/sys/menu/001-キャンセル.png");
	CreateTexture("meキャンセル/MouseUsual/hit",20,$MenuCancelX,$MenuCancelY,"cg/sys/menu/001-キャンセル.png");
	CreateTexture("meキャンセル/MouseOver/img",20,$MenuCancelX,$MenuCancelY,"cg/sys/menu/002-キャンセル.png");
	CreateTexture("meキャンセル/MouseClick/img",20,$MenuCancelX,$MenuCancelY,"cg/sys/menu/003-キャンセル.png");
	//CreateProcess("meキャンセル/MouseOver/meキャンセルプロセス１", 150, 0, 0, "MenuCancelProcessOpen");
	//CreateProcess("meキャンセル/MouseLeave/meキャンセルプロセス２", 150, 0, 0, "MenuCancelProcessPause");

	CreateChoice("meエキストラ");
	SetAlias("meエキストラ", "meエキストラ");
	if(!$LOCAL_extra_lock){
		CreateTexture("meエキストラimg",20,$MenuX,$MenuExtraY,"cg/sys/menu/001-好感度記録.png");
		CreateTexture("meエキストラ/MouseUsual/hit",20,$MenuX,$MenuExtraY,"cg/sys/menu/001-好感度記録.png");
		CreateTexture("meエキストラ/MouseOver/img",20,$MenuX,$MenuExtraY,"cg/sys/menu/002-好感度記録.png");
		CreateTexture("meエキストラ/MouseClick/img",20,$MenuX,$MenuExtraY,"cg/sys/menu/003-好感度記録.png");
		//CreateProcess("meエキストラ/MouseOver/meエキストラプロセス１", 150, 0, 0, "MenuExtraProcessOpen");
		//CreateProcess("meエキストラ/MouseLeave/meエキストラプロセス２", 150, 0, 0, "MenuExtraProcessPause");
	}else{
		CreateTexture("meエキストラimg",20,$MenuX,$MenuExtraY,"cg/sys/menu/000-好感度記録.png");
		CreateTexture("meエキストラ/MouseUsual/hit",20,$MenuX,$MenuExtraY,"cg/sys/menu/001-好感度記録.png");
		Request("meエキストラ",UnClickable);
	}

	CreateChoice("meセーブ");
	SetAlias("meセーブ", "meセーブ");
	if(!$SYSTEM_save_lock){
		CreateTexture("meセーブimg",20,$MenuX,$MenuSaveY,"cg/sys/menu/001-セーブ.png");
		CreateTexture("meセーブ/MouseUsual/hit",20,$MenuX,$MenuSaveY,"cg/sys/menu/001-セーブ.png");
		CreateTexture("meセーブ/MouseOver/img",20,$MenuX,$MenuSaveY,"cg/sys/menu/002-セーブ.png");
		CreateTexture("meセーブ/MouseClick/img",20,$MenuX,$MenuSaveY,"cg/sys/menu/003-セーブ.png");
		//CreateProcess("meセーブ/MouseOver/meセーブプロセス１", 150, 0, 0, "MenuSaveProcessOpen");
		//CreateProcess("meセーブ/MouseLeave/meセーブプロセス２", 150, 0, 0, "MenuSaveProcessPause");
	}else{
		CreateTexture("meセーブimg",20,$MenuX,$MenuSaveY,"cg/sys/menu/000-セーブ.png");
		CreateTexture("meセーブ/MouseUsual/hit",20,$MenuX,$MenuSaveY,"cg/sys/menu/001-セーブ.png");
		Request("meセーブ",UnClickable);
	}

	CreateChoice("meロード");
	SetAlias("meロード", "meロード");
	if(!$SYSTEM_load_lock){
		CreateTexture("meロードimg",20,$MenuX,$MenuLoadY,"cg/sys/menu/001-ロード.png");
		CreateTexture("meロード/MouseUsual/hit",20,$MenuX,$MenuLoadY,"cg/sys/menu/001-ロード.png");
		CreateTexture("meロード/MouseOver/img",20,$MenuX,$MenuLoadY,"cg/sys/menu/002-ロード.png");
		CreateTexture("meロード/MouseClick/img",20,$MenuX,$MenuLoadY,"cg/sys/menu/003-ロード.png");
		//CreateProcess("meロード/MouseOver/meロードプロセス１", 150, 0, 0, "MenuLoadProcessOpen");
		//CreateProcess("meロード/MouseLeave/meロードプロセス２", 150, 0, 0, "MenuLoadProcessPause");
	}else{
		CreateTexture("meロードimg",20,$MenuX,$MenuLoadY,"cg/sys/menu/000-ロード.png");
		CreateTexture("meロード/MouseUsual/hit",20,$MenuX,$MenuLoadY,"cg/sys/menu/001-ロード.png");
		Request("meロード",UnClickable);
	}

	CreateChoice("meクイック");
	SetAlias("meクイック", "meクイック");
	if(!$SYSTEM_save_lock){
		CreateTexture("meクイックimg",20,$MenuX,$MenuQuickY,"cg/sys/menu/001-栞を差す.png");
		CreateTexture("meクイック/MouseUsual/hit",20,$MenuX,$MenuQuickY,"cg/sys/menu/001-栞を差す.png");
		CreateTexture("meクイック/MouseOver/img",20,$MenuX,$MenuQuickY,"cg/sys/menu/002-栞を差す.png");
		CreateTexture("meクイック/MouseClick/img",20,$MenuX,$MenuQuickY,"cg/sys/menu/003-栞を差す.png");
		//CreateProcess("meクイック/MouseOver/meクイックプロセス１", 150, 0, 0, "MenuQuickProcessOpen");
		//CreateProcess("meクイック/MouseLeave/meクイックプロセス２", 150, 0, 0, "MenuQuickProcessPause");
	}else{
		CreateTexture("meクイックimg",20,$MenuX,$MenuQuickY,"cg/sys/menu/000-栞を差す.png");
		CreateTexture("meクイック/MouseUsual/hit",20,$MenuX,$MenuQuickY,"cg/sys/menu/001-栞を差す.png");
		Request("meクイック",UnClickable);
	}

	CreateChoice("meピース");
	SetAlias("meピース", "meピース");
	if(ExistSave(9998)&&!$SYSTEM_load_lock){
		CreateTexture("meピースimg",20,$MenuX,$MenuPieceY,"cg/sys/menu/001-栞を開く.png");
		CreateTexture("meピース/MouseUsual/hit",20,$MenuX,$MenuPieceY,"cg/sys/menu/001-栞を開く.png");
		CreateTexture("meピース/MouseOver/img",20,$MenuX,$MenuPieceY,"cg/sys/menu/002-栞を開く.png");
		CreateTexture("meピース/MouseClick/img",20,$MenuX,$MenuPieceY,"cg/sys/menu/003-栞を開く.png");
		//CreateProcess("meピース/MouseOver/meピースプロセス１", 150, 0, 0, "MenuPieceProcessOpen");
		//CreateProcess("meピース/MouseLeave/meピースプロセス２", 150, 0, 0, "MenuPieceProcessPause");
	}else{
		CreateTexture("meピースimg",20,$MenuX,$MenuPieceY,"cg/sys/menu/000-栞を開く.png");
		CreateTexture("meピース/MouseUsual/hit",20,$MenuX,$MenuPieceY,"cg/sys/menu/001-栞を開く.png");
		Request("meピース",UnClickable);
	}

	CreateChoice("meスキップ");
	SetAlias("meスキップ", "meスキップ");
	if(!$SYSTEM_skip_lock){
		CreateTexture("meスキップimg",20,$MenuX,$MenuSkipY,"cg/sys/menu/001-スキップ.png");
		CreateTexture("meスキップ/MouseUsual/hit",20,$MenuX,$MenuSkipY,"cg/sys/menu/001-スキップ.png");
		CreateTexture("meスキップ/MouseOver/img",20,$MenuX,$MenuSkipY,"cg/sys/menu/002-スキップ.png");
		CreateTexture("meスキップ/MouseClick/img",20,$MenuX,$MenuSkipY,"cg/sys/menu/003-スキップ.png");
		//CreateProcess("meスキップ/MouseOver/meスキッププロセス１", 150, 0, 0, "MenuSkipProcessOpen");
		//CreateProcess("meスキップ/MouseLeave/meスキッププロセス２", 150, 0, 0, "MenuSkipProcessPause");
	}else{
		CreateTexture("meスキップimg",20,$MenuX,$MenuSkipY,"cg/sys/menu/000-スキップ.png");
		CreateTexture("meスキップ/MouseUsual/hit",20,$MenuX,$MenuSkipY,"cg/sys/menu/001-スキップ.png");
		Request("meスキップ",UnClickable);
	}

	CreateChoice("me超速");
	SetAlias("me超速", "me超速");
	if(!$SYSTEM_skip_lock){
		CreateTexture("me超速img",20,$MenuX,$MenuSuperY,"cg/sys/menu/001-超速スキップ.png");
		CreateTexture("me超速/MouseUsual/hit",20,$MenuX,$MenuSuperY,"cg/sys/menu/001-超速スキップ.png");
		CreateTexture("me超速/MouseOver/img",20,$MenuX,$MenuSuperY,"cg/sys/menu/002-超速スキップ.png");
		CreateTexture("me超速/MouseClick/img",20,$MenuX,$MenuSuperY,"cg/sys/menu/003-超速スキップ.png");
		//CreateProcess("me超速/MouseOver/me超速プロセス１", 150, 0, 0, "MenuSuperProcessOpen");
		//CreateProcess("me超速/MouseLeave/me超速プロセス２", 150, 0, 0, "MenuSuperProcessPause");
	}else{
		CreateTexture("me超速img",20,$MenuX,$MenuSuperY,"cg/sys/menu/000-超速スキップ.png");
		CreateTexture("me超速/MouseUsual/hit",20,$MenuX,$MenuSuperY,"cg/sys/menu/001-超速スキップ.png");
		Request("me超速",UnClickable);
	}

	CreateChoice("me自動メッセージ");
	SetAlias("me自動メッセージ", "me自動メッセージ");
	if(!$SYSTEM_text_auto_lock){
		CreateTexture("me自動メッセージimg",20,$MenuX,$MenuSendY,"cg/sys/menu/001-自動メッセージ.png");
		CreateTexture("me自動メッセージ/MouseUsual/hit",20,$MenuX,$MenuSendY,"cg/sys/menu/001-自動メッセージ.png");
		CreateTexture("me自動メッセージ/MouseOver/img",20,$MenuX,$MenuSendY,"cg/sys/menu/002-自動メッセージ.png");
		CreateTexture("me自動メッセージ/MouseClick/img",20,$MenuX,$MenuSendY,"cg/sys/menu/003-自動メッセージ.png");
		//CreateProcess("me自動メッセージ/MouseOver/me自動メッセージプロセス１", 150, 0, 0, "MenuSendProcessOpen");
		//CreateProcess("me自動メッセージ/MouseLeave/me自動メッセージプロセス２", 150, 0, 0, "MenuSendProcessPause");
	}else{
		CreateTexture("me自動メッセージimg",20,$MenuX,$MenuSendY,"cg/sys/menu/000-自動メッセージ.png");
		CreateTexture("me自動メッセージ/MouseUsual/hit",20,$MenuX,$MenuSendY,"cg/sys/menu/001-自動メッセージ.png");
		Request("me自動メッセージ",UnClickable);
	}

	CreateChoice("meフルスクリーン");
	SetAlias("meフルスクリーン", "meフルスクリーン");
	if(!#SYSTEM_window_full_lock){
		CreateTexture("meフルスクリーンimg",20,$MenuX,$MenuFullY,"cg/sys/menu/001-フルスクリーン.png");
		CreateTexture("meフルスクリーン/MouseUsual/hit",20,$MenuX,$MenuFullY,"cg/sys/menu/001-フルスクリーン.png");
		CreateTexture("meフルスクリーン/MouseOver/img",20,$MenuX,$MenuFullY,"cg/sys/menu/002-フルスクリーン.png");
		CreateTexture("meフルスクリーン/MouseClick/img",20,$MenuX,$MenuFullY,"cg/sys/menu/003-フルスクリーン.png");
		//CreateProcess("meフルスクリーン/MouseOver/meフルスクリーンプロセス１", 150, 0, 0, "MenuFullProcessOpen");
		//CreateProcess("meフルスクリーン/MouseLeave/meフルスクリーンプロセス２", 150, 0, 0, "MenuFullProcessPause");
	}else{
		CreateTexture("meフルスクリーンimg",20,$MenuX,$MenuFullY,"cg/sys/menu/000-フルスクリーン.png");
		CreateTexture("meフルスクリーン/MouseUsual/hit",20,$MenuX,$MenuFullY,"cg/sys/menu/001-フルスクリーン.png");
		Request("meフルスクリーン",UnClickable);
	}

	CreateChoice("meメッセージ");
	SetAlias("meメッセージ", "meメッセージ");
	if(!$SYSTEM_text_erase_lock){
		CreateTexture("meメッセージimg",20,$MenuX,$MenuEraseY,"cg/sys/menu/001-メッセージ消す.png");
		CreateTexture("meメッセージ/MouseUsual/hit",20,$MenuX,$MenuEraseY,"cg/sys/menu/001-メッセージ消す.png");
		CreateTexture("meメッセージ/MouseOver/img",20,$MenuX,$MenuEraseY,"cg/sys/menu/002-メッセージ消す.png");
		CreateTexture("meメッセージ/MouseClick/img",20,$MenuX,$MenuEraseY,"cg/sys/menu/003-メッセージ消す.png");
		//CreateProcess("meメッセージ/MouseOver/meメッセージプロセス１", 150, 0, 0, "MenuEraseProcessOpen");
		//CreateProcess("meメッセージ/MouseLeave/meメッセージプロセス２", 150, 0, 0, "MenuEraseProcessPause");
	}else{
		CreateTexture("meメッセージimg",20,$MenuX,$MenuEraseY,"cg/sys/menu/000-メッセージ消す.png");
		CreateTexture("meメッセージ/MouseUsual/hit",20,$MenuX,$MenuEraseY,"cg/sys/menu/001-メッセージ消す.png");
		Request("meメッセージ",UnClickable);
	}

	CreateChoice("meバックログ");
	SetAlias("meバックログ", "meバックログ");
	if(!$SYSTEM_backlog_lock_a){
		CreateTexture("meバックログimg",20,$MenuX,$MenuLogY,"cg/sys/menu/001-ログ表示.png");
		CreateTexture("meバックログ/MouseUsual/hit",20,$MenuX,$MenuLogY,"cg/sys/menu/001-ログ表示.png");
		CreateTexture("meバックログ/MouseOver/img",20,$MenuX,$MenuLogY,"cg/sys/menu/002-ログ表示.png");
		CreateTexture("meバックログ/MouseClick/img",20,$MenuX,$MenuLogY,"cg/sys/menu/003-ログ表示.png");
		//CreateProcess("meバックログ/MouseOver/meバックログプロセス１", 150, 0, 0, "MenuLogProcessOpen");
		//CreateProcess("meバックログ/MouseLeave/meバックログプロセス２", 150, 0, 0, "MenuLogProcessPause");
	}else{
		CreateTexture("meバックログimg",20,$MenuX,$MenuLogY,"cg/sys/menu/000-ログ表示.png");
		CreateTexture("meバックログ/MouseUsual/hit",20,$MenuX,$MenuLogY,"cg/sys/menu/001-ログ表示.png");
		Request("meバックログ",UnClickable);
	}

	CreateChoice("me前選択");
	SetAlias("me前選択", "me前選択");
	if((!$PLACE_select&&ExistSave(9999))&&!$SYSTEM_backselect_lock){
		CreateTexture("me前選択img",20,$MenuX,$MenuBackY,"cg/sys/menu/001-選択肢に戻る.png");
		CreateTexture("me前選択/MouseUsual/hit",20,$MenuX,$MenuBackY,"cg/sys/menu/001-選択肢に戻る.png");
		CreateTexture("me前選択/MouseOver/img",20,$MenuX,$MenuBackY,"cg/sys/menu/002-選択肢に戻る.png");
		CreateTexture("me前選択/MouseClick/img",20,$MenuX,$MenuBackY,"cg/sys/menu/003-選択肢に戻る.png");
		//CreateProcess("me前選択/MouseOver/me前選択プロセス１", 150, 0, 0, "MenuBackProcessOpen");
		//CreateProcess("me前選択/MouseLeave/me前選択プロセス２", 150, 0, 0, "MenuBackProcessPause");
	}else{
		CreateTexture("me前選択img",20,$MenuX,$MenuBackY,"cg/sys/menu/000-選択肢に戻る.png");
		CreateTexture("me前選択/MouseUsual/hit",20,$MenuX,$MenuBackY,"cg/sys/menu/001-選択肢に戻る.png");
		Request("me前選択",UnClickable);
	}

	CreateChoice("meコンフィグ");
	SetAlias("meコンフィグ", "meコンフィグ");
	CreateTexture("meコンフィグimg",20,$MenuX,$MenuConfigY,"cg/sys/menu/001-設定画面.png");
	CreateTexture("meコンフィグ/MouseUsual/hit",20,$MenuX,$MenuConfigY,"cg/sys/menu/001-設定画面.png");
	CreateTexture("meコンフィグ/MouseOver/img",20,$MenuX,$MenuConfigY,"cg/sys/menu/002-設定画面.png");
	CreateTexture("meコンフィグ/MouseClick/img",20,$MenuX,$MenuConfigY,"cg/sys/menu/003-設定画面.png");
	//CreateProcess("meコンフィグ/MouseOver/meコンフィグプロセス１", 150, 0, 0, "MenuConfigProcessOpen");
	//CreateProcess("meコンフィグ/MouseLeave/meコンフィグプロセス２", 150, 0, 0, "MenuConfigProcessPause");

	CreateChoice("meタイトル");
	SetAlias("meタイトル", "meタイトル");
	CreateTexture("meタイトルimg",20,$MenuX,$MenuTitleY,"cg/sys/menu/001-タイトルに戻る.png");
	CreateTexture("meタイトル/MouseUsual/hit",20,$MenuX,$MenuTitleY,"cg/sys/menu/001-タイトルに戻る.png");
	CreateTexture("meタイトル/MouseOver/img",20,$MenuX,$MenuTitleY,"cg/sys/menu/002-タイトルに戻る.png");
	CreateTexture("meタイトル/MouseClick/img",20,$MenuX,$MenuTitleY,"cg/sys/menu/003-タイトルに戻る.png");
	//CreateProcess("meタイトル/MouseOver/meタイトルプロセス１", 150, 0, 0, "MenuTitleProcessOpen");
	//CreateProcess("meタイトル/MouseLeave/meタイトルプロセス２", 150, 0, 0, "MenuTitleProcessPause");

	CreateChoice("meゲーム終了");
	SetAlias("meゲーム終了", "meゲーム終了");
	CreateTexture("meゲーム終了img",20,$MenuX,$MenuExitY,"cg/sys/menu/001-ゲーム終了.png");
	CreateTexture("meゲーム終了/MouseUsual/hit",20,$MenuX,$MenuExitY,"cg/sys/menu/001-ゲーム終了.png");
	CreateTexture("meゲーム終了/MouseOver/img",20,$MenuX,$MenuExitY,"cg/sys/menu/002-ゲーム終了.png");
	CreateTexture("meゲーム終了/MouseClick/img",20,$MenuX,$MenuExitY,"cg/sys/menu/003-ゲーム終了.png");
	//CreateProcess("meゲーム終了/MouseOver/meゲーム終了プロセス１", 150, 0, 0, "MenuExitProcessOpen");
	//CreateProcess("meゲーム終了/MouseLeave/meゲーム終了プロセス２", 150, 0, 0, "MenuExitProcessPause");

	//CreateTexture("meオート", 100, 683, 149, "cg/sys/menu/看板/ico_auto.png");
	//SetAlias("meオート", "meオート");

	//■アイコンフォーカス用
	//CreateChoice("meフォーカス");
	//SetAlias("meフォーカス", "meフォーカス");
	//CreateColor("meフォーカス/MouseUsual/hit", 0, 0, 0, 800, 600, "BLACK");
	//	SetNextFocus("meフォーカス/MouseUsual/hit","meキャンセル/MouseUsual/img",DOWN);
	//	SetNextFocus("meフォーカス/MouseUsual/hit","meキャンセル/MouseUsual/img",RIGHT);
	//	SetNextFocus("meフォーカス/MouseUsual/hit","meゲーム終了/MouseUsual/img",UP);
	//	SetNextFocus("meフォーカス/MouseUsual/hit","meゲーム終了/MouseUsual/img",LEFT);
	//Request("meフォーカス/MouseUsual/hit", Erase);
	//Request("meフォーカス",UnClickable);

	//▼フォーカス
	MenuFocus();

	//●準備
	Request("me*/MouseUsual/hit", Erase);
	Fade("me*",0,0,null,false);
	Fade("me*/*/*",0,0,null,false);

	//●動作
	$menufade=0;
	$menuwait=10;
	Fade("me背景", 100, 1000, null, true);
	Wait($menuwait);
	Fade("meキャンセルimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meエキストラimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meメッセージimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me自動メッセージimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meスキップimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me超速img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me前選択img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meバックログimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meセーブimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meロードimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meクイックimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meピースimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meフルスクリーンimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meコンフィグimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meタイトルimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meゲーム終了img", $menufade, 1000, null, true);

	$SYSTEM_menu_enable=true;
	$SYSTEM_keydown_esc=false;
	while($SYSTEM_menu_enable){
		select{
			case meキャンセル{
				$SYSTEM_menu_enable=false;
			}
			if(!$LOCAL_extra_lock){
				case meエキストラ{

					call_chapter nss/sys_hmode.nss;
					$SYSTEM_menu_enable=true;
				}
			}
			if(!$SYSTEM_save_lock){
				case meセーブ{
					call_chapter nss/sys_save.nss;
					$SYSTEM_menu_enable=true;
				}
			}
			if(!$SYSTEM_load_lock){
				case meロード{
					call_chapter nss/sys_load.nss;
					$SYSTEM_menu_enable=true;
				}
			}
			if(!$SYSTEM_save_lock){
				case meクイック{
					//アイコンを抹消するコマンド
					$SYSTEM_text_icon_disable=false;
					$SYSTEM_mousewheel_up=false;
					$SYSTEM_mousewheel_down=false;
					
					$PLAY_TIME+=(Time()-#START_TIME);
					#START_TIME=Time();
					Save(9998);

					//音作成
					CreateSound("QuickSound2", SE, "sound/se/SE_sys_しおり");
					SetVolume("QuickSound2", 0, 1000, NULL);
					Request("QuickSound2", Play);
					Request("QuickSound2", Disused);

					$SYSTEM_menu_enable=true;
				}
			}
			if(ExistSave(9998)&&!$SYSTEM_load_lock){
				case meピース{
					CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
					Fade("BLACK", 0, 0, null, true);
					Fade("BLACK", 300, 1000, null, true);

					$SYSTEM_menu_enable=false;
					$SYSTEM_menu_load_enable=false;
					DeleteSaveFile(9999);
			
					#InitCV=false;
					#PreSaveFlag=false;
					#START_TIME=Time();
					Save(0);

					Load(9998);
					$SYSTEM_menu_enable=true;
				}
			}
			if(!$SYSTEM_skip_lock){
				case meスキップ{
					$SYSTEM_skip=true;
					$SYSTEM_menu_enable=false;
				}
			}
			if(!$SYSTEM_skip_lock){
				case me超速{
					#SYSTEM_skip_express=true;
					$SYSTEM_skip=true;
					$SYSTEM_menu_enable=false;
				}
			}
			if(!$SYSTEM_text_auto_lock){
				case me自動メッセージ{
					$SYSTEM_text_auto=!$SYSTEM_text_auto;
					$SYSTEM_menu_enable=false;
				}
			}
			if(!#SYSTEM_window_full_lock){
				case meフルスクリーン{
					#SYSTEM_window_full=!#SYSTEM_window_full;
				}
			}
			if(!$SYSTEM_text_erase_lock){
				case meメッセージ{
					$SYSTEM_text_erase=!$SYSTEM_text_erase;
					$SYSTEM_menu_enable=false;
				}
			}case meバックログ{
				call_chapter nss/sys_backlog.nss;
				$SYSTEM_menu_enable=true;
			}
			if((!$PLACE_select&&ExistSave(9999))&&!$SYSTEM_backselect_lock){
				case me前選択{
					call_chapter nss/sys_backselect.nss;
					$SYSTEM_menu_enable=true;
				}
			}case meコンフィグ{
				call_chapter nss/sys_config.nss;
				$SYSTEM_menu_enable=true;
			}case meタイトル{
				call_chapter nss/sys_reset.nss;
				$SYSTEM_menu_enable=true;
			}case meゲーム終了{
				call_chapter nss/sys_close.nss;
				$SYSTEM_menu_enable=true;
			}

			//●ショートカットキー対応
			if($SYSTEM_keydown_h){
				if(!$LOCAL_extra_lock){
					call_chapter nss/sys_hmode.nss;
					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_space){
				if(!$SYSTEM_text_erase_lock){
					$SYSTEM_text_erase=!$SYSTEM_text_erase;
					$SYSTEM_menu_enable=false;
				}
			}else if($SYSTEM_keydown_a){
				if(!$SYSTEM_text_auto_lock){
					$SYSTEM_text_auto=!$SYSTEM_text_auto;
					$SYSTEM_menu_enable=false;
				}
			}else if($SYSTEM_keydown_ctrl){
				if(!$SYSTEM_skip_lock){
					$SYSTEM_skip=true;
					$SYSTEM_menu_enable=false;
				}
			}else if($SYSTEM_keydown_n){
				if(!$SYSTEM_skip_lock){
					#SYSTEM_skip_express=true;
					$SYSTEM_skip=true;
					$SYSTEM_menu_enable=false;
				}
			}else if($SYSTEM_keydown_r){
				if((!$PLACE_select&&ExistSave(9999))&&!$SYSTEM_backselect_lock){
					call_chapter nss/sys_backselect.nss;
					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_b){
				call_chapter nss/sys_backlog.nss;
				$SYSTEM_menu_enable=true;
			}else if($SYSTEM_keydown_s){
				if(!$SYSTEM_save_lock){
					call_chapter nss/sys_save.nss;
					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_l){
				if(!$SYSTEM_load_lock){
					call_chapter nss/sys_load.nss;
					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_q){
				if(!$SYSTEM_save_lock){
					//アイコンを抹消するコマンド
					$SYSTEM_text_icon_disable=false;
					$SYSTEM_mousewheel_up=false;
					$SYSTEM_mousewheel_down=false;

					$SYSTEM_keydown_q=false;
					$PLAY_TIME+=(Time()-#START_TIME);
					#START_TIME=Time();
					Save(9998);

					//音作成
					CreateSound("QuickSound2", SE, "sound/se/SE_sys_しおり");
					SetVolume("QuickSound2", 0, 1000, NULL);
					Request("QuickSound2", Play);
					Request("QuickSound2", Disused);

					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_p){
				if(ExistSave(9998)&&!$SYSTEM_load_lock){
					CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
					Fade("BLACK", 0, 0, null, true);
					Fade("BLACK", 300, 1000, null, true);

					$SYSTEM_menu_enable=false;
					$SYSTEM_menu_load_enable=false;
					DeleteSaveFile(9999);
			
					#InitCV=false;
					#PreSaveFlag=false;
					#START_TIME=Time();
					Save(0);

					Load(9998);
					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
				}
				$SYSTEM_menu_enable=true;
				$SYSTEM_keydown_f=false;
			}else if($SYSTEM_keydown_c){
				call_chapter nss/sys_config.nss;
				$SYSTEM_menu_enable=true;
			}else if($SYSTEM_keydown_t){
				call_chapter nss/sys_reset.nss;
				$SYSTEM_menu_enable=true;
			}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
				call_chapter nss/sys_close.nss;
				$SYSTEM_menu_enable=true;
			}

			if(!$SYSTEM_menu_enable){break;}
			if($SYSTEM_keydown_m){$SYSTEM_menu_enable=false;break;}
		}
	}

	Fade("me*/*/*",100,0,null,true);

	$menufade=0;
	$menuwait=10;
	Fade("me背景", 100, 0, null, false);

	Fade("meゲーム終了img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meタイトルimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meコンフィグimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meフルスクリーンimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meピースimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meクイックimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meロードimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meセーブimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meバックログimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me前選択img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me超速img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meスキップimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me自動メッセージimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meメッセージimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meエキストラimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meキャンセルimg", $menufade, 0, null, true);

	WaitAction("me背景", null);

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;

	$SYSTEM_menu_enable=false;
}

function MenuFocus(){
	Array($Menu,"キャンセル","エキストラ","メッセージ","自動メッセージ","スキップ","超速","前選択","バックログ","セーブ","ロード","クイック","ピース","フルスクリーン","コンフィグ","タイトル","ゲーム終了");
	AssocArray($Menu,"キャンセル","エキストラ","メッセージ","自動メッセージ","スキップ","超速","前選択","バックログ","セーブ","ロード","クイック","ピース","フルスクリーン","コンフィグ","タイトル","ゲーム終了");
	$MenuCount=Count($Menu);

	$MenuWhile=0;
	while($MenuCount>$MenuWhile){
		$Menu[$MenuWhile][0]=true;
		$MenuWhile++;
	}

	if($LOCAL_extra_lock){
		$Menu["エキストラ"][0]=false;
	}
	if(($PLACE_select||!ExistSave(9999))||$SYSTEM_backselect_lock){
		$Menu["前選択"][0]=false;
	}
	if($SYSTEM_save_lock){
		$Menu["セーブ"][0]=false;
		$Menu["クイック"][0]=false;
	}
	if($SYSTEM_load_lock){
		$Menu["ロード"][0]=false;
		$Menu["ピース"][0]=false;
	}
	if(!ExistSave(9998)){
		$Menu["ピース"][0]=false;
	}
	if($SYSTEM_skip_lock){
		$Menu["スキップ"][0]=false;
		$Menu["超速"][0]=false;
	}
	if($SYSTEM_text_auto_lock){
		$Menu["自動メッセージ"][0]=false;
	}
	if($SYSTEM_text_erase_lock){
		$Menu["メッセージ"][0]=false;
	}


	$MenuWhile=0;
	while($MenuCount>$MenuWhile){
		if($Menu[$MenuWhile][0]){
			MenuDocusGo();
		}
		$MenuWhile++;
	}
}

function MenuDocusGo()
{
	$MenuFocusBreak=true;
	$MenuStart=$MenuWhile+1;
	$MenuWhile2=0;
	while($MenuCount>$MenuWhile2&&$MenuFocusBreak){
		if($MenuStart>=$MenuCount){
			$MenuStart=0;
		}

		if($Menu[$MenuStart][0]){
			$menunut="me"+$Menu[$MenuWhile]+"/MouseUsual/hit";
			$menunut2="me"+$Menu[$MenuStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,DOWN);
				SetNextFocus($menunut,$menunut2,RIGHT);
			$MenuFocusBreak=false;
		}

		$MenuStart++;
		$MenuWhile2++;
	}



	$MenuFocusBreak=true;
	$MenuStart=$MenuWhile-1;
	$MenuWhile2=0;
	while($MenuCount>$MenuWhile2&&$MenuFocusBreak){
		if($MenuStart<0){
			$MenuStart=$MenuCount-1;
		}

		if($Menu[$MenuStart][0]){
			$menunut="me"+$Menu[$MenuWhile]+"/MouseUsual/hit";
			$menunut2="me"+$Menu[$MenuStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,UP);
				SetNextFocus($menunut,$menunut2,LEFT);
			$MenuFocusBreak=false;
		}

		$MenuStart--;
		$MenuWhile2++;
	}


}
