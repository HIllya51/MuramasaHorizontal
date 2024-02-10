#include "nss/function.nss"
//=============================================================================//
//◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
.//★遊戯円環★バージョン1.00
//◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
//=============================================================================//
chapter main
{
	//★タイトルの状態
	$SYSTEM_menu_lock = 1;
	#play_speed_plus += 0;
	#SYSTEM_play_speed=#play_speed_plus;

	//■初期設定
//	#SYSTEM_product_code="SuMaGa";
//	#SCRIPT_VERSION="1.01";
//	#SYSTEM_loading_image="cg/sys/save/nowloading.jpg";
//	#SYSTEM_loading_image_x=0;
//	#SYSTEM_loading_image_y=0;
//	#SYSTEM_script_debug="nss/sys_debug.nss";
//	#SYSTEM_skip_express_image="cg/sys/adv/超速スキップ.jpg";
//	#SYSTEM_skip_express_image="cg/sys/skip/超速%04d.png#22";

	#SYSTEM_interrupt_play_speed=5;


	if(!#GAME_start_flag){
		#SYSTEM_click_break_voice=true;
		#GAME_start_flag=true;
	}



	while(1)
	{
		//★：ゲームがスタートしたことを明示する変数
		$GameStart = 1;

		//■シーンの頭に必ず記述
		$スクリプトバージョン = "  Version $Revision: 59 $";
		$構成名 = ModuleFileName();
		SystemInit();

		//▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼
		//▼デバッグ用
//		#SYSTEM_skip_absolute = true;
//		#SYSTEM_skip_express = true;
//		$Logo = 1;

/*
		#ClearG = 1;
		#START_FLAG = 1;
		#a1_not_bad_end=true;
		#a1_End=true;
		#a2_bad_end=true;
		#a2_not_bad_end=true;
		#a2_End=true;
		#a3_death_end=true;
		#a3_normal_end=true;
		#b2_normal_end=true;
		#b3_bad_end=true;
		#b3_normal_end=true;
		#c1_bad_end=true;
		#c1_true_end=true;
		#c3_bad_end=true;
		#c3_true_end=true;
		#c2_bad_end=true;
		#c2_true_end=true;
		#d1_true_end=true;
*/

//		DebugSound();
//		DebugGallery();
		//▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲

/*
		//フラグ回収までタイトル非表示
		if(!#START_FLAG&&!$GameClose){
			//※終了パート変数クリア
			EndSelectFormat();

			$GameContiune=1;
			TitleLogo2();
		}
*/

		//■ドラック＆ドロップ
		if($GameContiune == 1)
		{
			//★：ゲームスピード
			if(#play_speed_plus != 0)
			{
				/*初回起動時ではないときは、プレイ速度をバックアップ*/
				#play_speed_plus = #SYSTEM_play_speed;
			}else{
				/*初回起動時は、プレイ速度のバックアップを３に固定*/
				#play_speed_plus = 3;
			}

			$GameContiune = 0;
			Delete("*");
			call_chapter nss/0_boot_開始スクリプト.nss;
		}

		//★：ゲームスピード
		if(#play_speed_plus != 0)
		{
			/*初回起動時ではないときは、プレイ速度をバックアップ*/
			#play_speed_plus = #SYSTEM_play_speed;
		}else{
			/*初回起動時は、プレイ速度のバックアップを３に固定*/
			#play_speed_plus = 3;
		}

		//★：システム変数系のクリア
		$GameName=false;
		$TitleSelect=false;

		$PLACE_badend=false;
		$PLACE_title=true;

		#SYSTEM_play_speed=3;
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
		$SYSTEM_text_auto=false;
		$SYSTEM_menu_lock=true;
		#SYSTEM_skip_express_minimum_time=0;

//フラグ用セーブ
		Save(0);
//選択肢に戻るようのフラグを削除
		DeleteSaveFile(9999);

		//※終了パート変数クリア
		EndSelectFormat();

		//※フレーム初期化
//		Move("@フレーム",0, 0, 500, null,false);
//		Fade("@フレーム",0,0,null,false);
//		Fade("@box11",0,0,null,false);

//	CreateColor("黒幕１", 150, 0, 0, 800, 600, "Black");
	CreateTexture("背景１", 100, 0, 0, "cg/bg/村正_背景ダミー01.jpg");

		WaitKey();

		SelectlistSet();

		WaitKey();
	Rotate("@03Select*", 1000000, @0, @0, @179000, null,false);

	Rotate("@01Select*", 1000000, @0, @0, @180000, null,true);

		WaitKey();


		TitleSet();
		//■：タイトル動作
		TitleFade();
		//■：タイトルセレクト
		TitleSelect();

		//★：結果
		if($TitleSelect == 1)
		{
			Delete("*");
			Request("決定サウンド", Disused);
			Request("決定サウンド", UnLock);
			Wait(2000);

			call_chapter nss/0_boot_開始スクリプト.nss;
		}

		if($TitleSelect == 2)
		{
			//繋ぎ用背景
			CreateTexture("スクリーン", 1000, 0, 0, SCREEN);
			SetAlias("スクリーン", "スクリーン");

			//戻り用ウィンドウ
			CreateWindow("システムタイトル", 10000, 0, 0, 800, 600, false);
			SetAlias("システムタイトル", "システムタイトル");
			Request("システムタイトル", Lock);

			Delete("タイトル*");
			call_chapter nss/extra_menu.nss;
		}
	}
	//->end while
}
//->end chapter main
//=============================================================================//








//============================================================================//
..//※終了パート変数初期化マクロ※
//============================================================================//
function EndSelectFormat()
{
	$End_f1_00_01=false;
	$End_f1_00_02=false;
	$End_f1_00_03=false;
	$End_f1_00_04=false;
	$End_f1_00_05=false;
	$End_f1_00_06=false;
	$End_f1_00_07=false;
	$End_f1_00_08=false;
	$End_f1_00_09=false;
	$End_f1_00_10=false;
	$End_f1_00_11=false;
	$End_f1_00_12=false;
	$End_f1_00_13=false;
	$End_f1_00_14=false;
	$End_f1_00_15=false;
	$End_f1_00_16=false;
	$End_f1_00_17=false;
	$End_f1_01_01=false;
	$End_f1_01_02=false;
	$End_f1_01_03=false;
	$End_f1_01_04=false;
	$End_f1_01_05=false;
	$End_f1_01_06=false;
	$End_f1_01_07=false;
	$End_f1_01_08=false;
	$End_f1_01_09=false;
	$End_f1_01_10=false;
	$End_f1_01_11=false;
	$End_f1_01_12=false;
	$End_f1_01_13=false;
	$End_f1_01_14=false;
	$End_f1_01_15=false;
	$End_f1_01_16=false;
	$End_f1_01_17=false;
	$End_f1_01_18=false;
	$End_f1_01_19=false;
}
//============================================================================//









//============================================================================//
..//■タイトルカラー判定■
//============================================================================//
function TitleColor()
{
		CreateColor("タイトルカラー", 150, 0, 0, 800, 600, "BLACK");
		SetAlias("タイトルカラー", "タイトルカラー");
		Fade("タイトルカラー", 0, 0, null, true);
		CreateColor("タイトルカラー２", 100, 0, 0, 800, 600, "WHITE");
		SetAlias("タイトルカラー", "タイトルカラー");
		Fade("タイトルカラー２", 0, 0, null, true);
}
//============================================================================//


//============================================================================//
..//■コングラチュレーション！判定■
//============================================================================//
function TitleCongratulations()
{
	if(#ClearG==1&&#a1_not_bad_end==true&&#a1_End==true&&#a2_bad_end==true&&#a2_not_bad_end==true&&#a2_End==true&&#a3_death_end==true&&#a3_normal_end==true&&#b2_normal_end==true&&#b3_bad_end==true&&#b3_normal_end==true&&#c1_bad_end==true&&#c1_true_end==true&&#c3_bad_end==true&&#c3_true_end==true&&#c2_bad_end==true&&#c2_true_end==true&&#d1_true_end==true&&#ClearAll!=1)
	{
		SoundPlay("@smgm11",0,1000,true);

		CreateColor("おめでとう色", 150, 0, 0, 800, 600, "White");
		Fade("おめでとう色", 0, 0, null, true);
		Request("おめでとう色", AddRender);

		CreateTexture("おめでとう", 100, 0, 0, "cg/ev/ev_z1_99_おめでとう画像.jpg");
		Fade("おめでとう", 0, 0, null, true);

		Fade("おめでとう色", 500, 1000, null, true);
		Fade("おめでとう",0,1000,null,true);
		Fade("おめでとう色", 1000, 0, null, true);

		WaitKey();

		$ClearL = 0;
		#ClearAll = 1;

		SetVolume("@sm*", 4000, 0, NULL);

		Fade("おめでとう",4000,0,null,true);
		Delete("おめでとう*");
	}
}
//============================================================================//














//============================================================================//
..//■ロゴ判定■
//============================================================================//
function TitleLogo()
{
//★：一度観たらゲーム中は出さないようにする判定

	$Logo += 0;

	if($Logo == 0)
	{

		CreateTexture("タイトルニトロプラス", 100, 0, 0, "cg/sys/title/ニトロロゴ.jpg");

//		CreateTexture("タイトルメディア１", 100, 0, 0, "cg/sys/title/media_a.jpg");
//		CreateTexture("タイトルメディア２", 100, 0, 0, "cg/sys/title/media_b.jpg");
//		CreateTexture("タイトルニトロプラス", 100, 0, 0, "cg/sys/title/ニトロロゴ.jpg");
//		CreateTexture("タイトル注意", 100, 0, 0, "cg/sys/title/注意.jpg");
		Fade("タイトル*", 0, 0, null, true);

		Fade("タイトルカラー２",300,1000,null,true);
//		Fade("タイトルメディア１", 500, 1000, null, true);
//		WaitKey(3000);
//		Fade("タイトルメディア２", 500, 1000, null, true);
//		Fade("タイトルメディア１", 0, 0, null, true);
//		WaitKey(3000);
//		Fade("タイトルメディア２",500,0,null,true);

//		Wait(1000);

		Fade("タイトルニトロプラス", 1000, 1000, null, true);
		WaitKey(1000);
		Fade("タイトルニトロプラス", 100, 0, null, true);

//		Fade("タイトル注意", 1000, 1000, null, true);
//		WaitKey(5000);
//		Fade("タイトル注意", 500, 0, null, true);
	}


//	$Reset=0;


}
//============================================================================//



//============================================================================//
..//■ロゴ判定２■
//============================================================================//
function TitleLogo2()
{
		$Logo = 1;

		CreateColor("タイトルカラー２", 100, 0, 0, 800, 600, "WHITE");
		Fade("タイトルカラー２", 0, 0, null, true);

		CreateTexture("タイトルメディア１", 100, 0, 0, "cg/sys/title/media_a.jpg");
		CreateTexture("タイトルメディア２", 100, 0, 0, "cg/sys/title/media_b.jpg");
		CreateTexture("タイトルニトロプラス", 100, 0, 0, "cg/sys/title/ニトロロゴ.jpg");
		Fade("タイトル*", 0, 0, null, true);

		Fade("タイトルカラー２",300,1000,null,true);
		Fade("タイトルメディア１", 500, 1000, null, true);
		WaitKey(3000);
		Fade("タイトルメディア２", 500, 1000, null, true);
		Fade("タイトルメディア１", 0, 0, null, true);
		WaitKey(3000);
		Fade("タイトルメディア２",500,0,null,true);

		Wait(1000);

		Fade("タイトルニトロプラス", 1000, 1000, null, true);
		WaitKey(3000);
		Fade("タイトルカラー２", 0, 0, null, true);
		Fade("タイトルニトロプラス", 500, 0, null, true);
}
//============================================================================//






//=============================================================================//
..//■タイトル定義■
//=============================================================================//
function TitleSet()
{
	//■背景
	CreateTexture("タイトル背景", 100, 0, 0, "cg/sys/title/back02.png");
	SetAlias("タイトル背景", "タイトル背景");

	//■ＳＴＡＲＴ
	CreateChoice("Select01");
	SetAlias("Select01", "Select01");

	$startX = 0;
	$startY = 0;

	LoadColor("Select01_001", 199, 24, "Black");
	LoadColor("Select01_002", 199, 24, "Red");
	LoadColor("Select01_003", 199, 24, "Blue");


	CreateTexture("Select01/MouseUsual/Select01_000", 100, $startX, $startY, "Select01_001");
	SetAlias("Select01/MouseUsual/Select01_000", "Select01_000");

	CreateTexture("Select01/MouseUsual/Select01_001", 100, $startX, $startY, "Select01_001");
	SetAlias("Select01/MouseUsual/Select01_001", "Select01_001");
	CreateTexture("Select01/MouseOver/Select01_002", 100, $startX, $startY, "Select01_002");
	SetAlias("Select01/MouseOver/Select01_002", "Select01_002");
	CreateTexture("Select01/MouseClick/Select01_003", 100, $startX, $startY, "Select01_003");
	SetAlias("Select01/MouseClick/Select01_003", "Select01_003");

	CreateProcess("Select01/MouseOver/SelectProcess01_001", 150, 0, 0, "TitleStartOver");
	SetAlias("Select01/MouseOver/SelectProcess01_001", "SelectProcess01_001");

	CreateProcess("Select01/MouseLeave/SelectProcess01_002", 150, 0, 0, "TitleStartLeave");
	SetAlias("Select01/MouseLeave/SelectProcess01_002", "SelectProcess01_002");

	CreateProcess("Select01/MouseClick/SelectProcess01_003", 150, 0, 0, "TitleStartClick");
	SetAlias("Select01/MouseClick/SelectProcess01_003", "SelectProcess01_003");

	Request("Select01/MouseUsual/SelectProcess01_000", "Erase");

	//■ＬＯＡＤ
	CreateChoice("タイトル読込");
	SetAlias("タイトル読込", "タイトル読込");

	$loadX = 70;
	$loadY = 405;

	LoadImage("タイトル読込イメージ１", "cg/sys/title/load01.png");
	LoadImage("タイトル読込イメージ２", "cg/sys/title/load02.png");
	LoadImage("タイトル読込イメージ３", "cg/sys/title/load03.png");

	CreateTexture("タイトル読込/MouseUsual/タイトル読込０", 100, $loadX, $loadY, "cg/sys/title/topbt_load_hit.png");
	SetAlias("タイトル読込/MouseUsual/タイトル読込０", "タイトル読込０");

	CreateTexture("タイトル読込/MouseUsual/タイトル読込１", 100, $loadX, $loadY, "タイトル読込イメージ１");
	SetAlias("タイトル読込/MouseUsual/タイトル読込１", "タイトル読込１");
	CreateTexture("タイトル読込/MouseOver/タイトル読込２", 100, $loadX, $loadY, "タイトル読込イメージ２");
	SetAlias("タイトル読込/MouseOver/タイトル読込２", "タイトル読込２");
	CreateTexture("タイトル読込/MouseClick/タイトル読込３", 100, $loadX, $loadY, "タイトル読込イメージ３");
	SetAlias("タイトル読込/MouseClick/タイトル読込３", "タイトル読込３");

	CreateProcess("タイトル読込/MouseOver/タイトル読込プロセス１", 150, 0, 0, "TitleLoadOver");
	SetAlias("タイトル読込/MouseOver/タイトル読込プロセス１", "タイトル読込プロセス１");
	CreateProcess("タイトル読込/MouseLeave/タイトル読込プロセス２", 150, 0, 0, "TitleLoadLeave");
	SetAlias("タイトル読込/MouseLeave/タイトル読込プロセス２", "タイトル読込プロセス２");
	CreateProcess("タイトル読込/MouseClick/タイトル読込プロセス３", 150, 0, 0, "TitleLoadClick");
	SetAlias("タイトル読込/MouseClick/タイトル読込プロセス３", "タイトル読込プロセス３");

	CreateSound("タイトル読込/MouseOver/タイトル読込音１", SE, "sound/se/SE_システム_タイトル_選択");

	Request("タイトル読込/MouseUsual/タイトル読込０", "Erase");

	//■ＥＸＩＴ
	CreateChoice("タイトル出口");
	SetAlias("タイトル出口", "タイトル出口");

	$configX = 70;
	$configY = 438;

	LoadImage("タイトル出口イメージ１", "cg/sys/title/exit01.png");
	LoadImage("タイトル出口イメージ２", "cg/sys/title/exit02.png");
	LoadImage("タイトル出口イメージ３", "cg/sys/title/exit03.png");

	CreateTexture("タイトル出口/MouseUsual/タイトル出口０", 100, $configX, $configY, "cg/sys/title/topbt_config_hit.png");
	SetAlias("タイトル出口/MouseUsual/タイトル出口０", "タイトル出口０");

	CreateTexture("タイトル出口/MouseUsual/タイトル出口１", 100, $configX, $configY, "タイトル出口イメージ１");
	SetAlias("タイトル出口/MouseUsual/タイトル出口１", "タイトル出口１");
	CreateTexture("タイトル出口/MouseOver/タイトル出口２", 100, $configX, $configY, "タイトル出口イメージ２");
	SetAlias("タイトル出口/MouseOver/タイトル出口２", "タイトル出口２");
	CreateTexture("タイトル出口/MouseClick/タイトル出口３", 100, $configX, $configY, "タイトル出口イメージ３");
	SetAlias("タイトル出口/MouseClick/タイトル出口３", "タイトル出口３");

	CreateProcess("タイトル出口/MouseOver/タイトル出口プロセス１", 150, 0, 0, "TitleConfigOver");
	SetAlias("タイトル出口/MouseOver/タイトル出口プロセス１", "タイトル出口プロセス１");
	CreateProcess("タイトル出口/MouseLeave/タイトル出口プロセス２", 150, 0, 0, "TitleConfigLeave");
	SetAlias("タイトル出口/MouseLeave/タイトル出口プロセス２", "タイトル出口プロセス２");
	CreateProcess("タイトル出口/MouseClick/タイトル出口プロセス３", 150, 0, 0, "TitleConfigClick");
	SetAlias("タイトル出口/MouseClick/タイトル出口プロセス３", "タイトル出口プロセス３");

//音なしのため退避
//	CreateSound("タイトル出口/MouseOver/タイトル出口音１", SE, "sound/se/SE_システム_タイトル_選択");

	Request("タイトル出口/MouseUsual/タイトル出口０", "Erase");





	if($Logo == 0)
	{
//		$PreTitleMoveIcon=-20;
//		Move("@タイトル開始１", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@タイトル読込１", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@タイトル設定１", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@タイトル特別１", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@タイトル出口１", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@タイトル書記１", 0, @0, @$PreTitleMoveIcon, null, false);
	}

	Fade("@タイトル背景",0,0,null,false);
	Fade("@タイトル開始*",0,0,null,false);
	Fade("@タイトル読込*",0,0,null,false);
	Fade("@タイトル設定*",0,0,null,false);
	Fade("@タイトル特別*",0,0,null,false);
	Fade("@タイトル出口*",0,0,null,false);
	Fade("@タイトル書記*",0,0,null,false);

//	Fade("タイトル*/*",0,0,null,false);
	Fade("タイトル*/*/*",0,0,null,true);

}
//============================================================================//







//=============================================================================//
..//■タイトル動作■
//=============================================================================//
function TitleFade()
{
	//★一度でも見ていない場合は流す
	if(!#TitleMovieFirst){
		#TitleMovieFirst=1;
		$Logo=0;
	}


	if(!$Logo)
	{
		$TitleFadeIcon=0;

//		CreateSound("タイトルムービーサウンド", SE, "sound/se/SE_システム_タイトル_ムービー");
//		CreateMovie("タイトルムービー", 100, 0, 0, false, false, "dx/intro.ngs");
//		Request("タイトルムービーサウンド", Play);

//		if(!#TitleMovie){
//			WaitAction("タイトルムービー", null);
//			#TitleMovie=1;
//		}else{
//			$TitleMoveTime=RemainTime("タイトルムービー")-1000;
//			WaitKey($TitleMoveTime);
//		}

//		SetVolume("タイトルムービーサウンド", 1000, 0, NULL);

			//★ＢＧＭプレイ
//			SoundPlay($TitleBGM,0,1000,true);
//			SetStream($TitleBGM, 2000);

		Fade("タイトルカラー*",0,0,null,true);
		Fade("タイトル背景",0,1000,null,true);
		Fade("タイトルムービー", 500, 0, null, false);
		Move("@タイトル窓枠", 500, @300, @0, null, true);

		Delete("タイトルムービー");

		Fade("@Select01",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@タイトル読込１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル設定１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル特別１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル出口１",$TitleFadeIcon,1000,null,false);

		Delete("@タイトル窓枠*");
		WaitAction("@タイトル開始１", null);

		$Logo=1;

	}else{

		if($エキストラタイトル)
		{
			if(#エキストラＢＧＭ != $TitleBGM)
			{
				//★ＢＧＭプレイ
				SetVolume("@sm*", 1000, 0, NULL);
				SoundPlay($TitleBGM,0,1000,true);
				SetStream($TitleBGM, 2000);
			}

			CreateMask("タイトルマスク", 10000, 0, 0, "dx/mv_extra.ngs", false);
			CreateTexture("タイトルマスク/タイトル背景", 10000, 0, 0, "cg/sys/title/フィニッシュ画面.jpg");
			WaitAction("タイトルマスク", null);

			Fade("タイトル背景",0,1000,null,true);
			Request("システムタイトル", UnLock);
			Delete("システムタイトル");
			Delete("タイトルマスク");
		}
		else
		{
			//★ＢＧＭプレイ
			SoundPlay($TitleBGM,0,1000,true);
			SetStream($TitleBGM, 2000);

			Fade("タイトルカラー",0,1000,null,true);
			Fade("タイトル背景",0,1000,null,true);
			Fade("タイトルカラー",1000,0,null,true);
		}
		$エキストラタイトル=false;


		Move("@タイトル窓枠", 500, @300, @0, null, true);

		if(#d1_true_end)
		{
			CreateSound("タイトル書記サウンド", SE, "voice/d110/0401420gd");

			Fade("@タイトル書記１",0,1000,null,false);
			Move("@タイトル書記１", 0, @-200, @0, null, true);

			Request("タイトル書記サウンド", Play);

			Move("@タイトル書記１", 300, @200, @0, null, false);
			Rotate("@タイトル書記１", 300, @0, @0, 360, null, true);

//			Zoom("@タイトル書記１", 0, 500, 500, null, true);
//			Fade("@タイトル書記１",100,1000,null,false);
//			Zoom("@タイトル書記１", 100, 1050, 1050, Axl1, true);
//			Zoom("@タイトル書記１", 100, 1000, 1000, Dxl1, true);
		}

		Fade("@@Select01",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@タイトル読込１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル設定１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル特別１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル出口１",$TitleFadeIcon,1000,null,false);

		Delete("@タイトル窓枠*");
		WaitAction("@タイトル開始１", null);

	}

	//■プロセススタート
	Request("タイトルプロセス", Start);

/*
.//オプションアリの場合は削除必須
		SetNextFocus("Select01/MouseUsual/タイトル開始０", "タイトル出口/MouseUsual/タイトル出口０", UP);
		SetNextFocus("Select01/MouseUsual/タイトル開始０", "タイトル出口/MouseUsual/タイトル出口０", LEFT);
		SetNextFocus("Select01/MouseUsual/タイトル開始０", "タイトル読込/MouseUsual/タイトル読込０", DOWN);
		SetNextFocus("タイトル開始/MouseUsual/タイトル開始０", "タイトル読込/MouseUsual/タイトル読込０", RIGHT);

		SetNextFocus("タイトル読込/MouseUsual/タイトル読込０", "タイトル開始/MouseUsual/タイトル開始０", UP);
		SetNextFocus("タイトル読込/MouseUsual/タイトル読込０", "タイトル開始/MouseUsual/タイトル開始０", LEFT);
		SetNextFocus("タイトル読込/MouseUsual/タイトル読込０", "タイトル出口/MouseUsual/タイトル出口０", DOWN);
		SetNextFocus("タイトル読込/MouseUsual/タイトル読込０", "タイトル出口/MouseUsual/タイトル出口０", RIGHT);

		SetNextFocus("タイトル出口/MouseUsual/タイトル出口０", "タイトル読込/MouseUsual/タイトル読込０", UP);
		SetNextFocus("タイトル出口/MouseUsual/タイトル出口０", "タイトル読込/MouseUsual/タイトル読込０", LEFT);
		SetNextFocus("タイトル出口/MouseUsual/タイトル出口０", "タイトル開始/MouseUsual/タイトル開始０", DOWN);
		SetNextFocus("タイトル出口/MouseUsual/タイトル出口０", "タイトル開始/MouseUsual/タイトル開始０", RIGHT);
*/

}
//============================================================================//







//=============================================================================//
..//■ファンクションプロセス各種■
//=============================================================================//
//▲タイトルファンクション
function TitleProcess()
{
	while(1){
		Wait(35000);

		SetVolume($TitleBGM, 2000, 0, NULL);
		Fade("@タイトルカラー", 1300, 1000, null, true);

		MoviePlay("dx/mv_smg_PV.ngs", true);

		SoundPlay($TitleBGM,1000,1000,true);
		SetStream($TitleBGM, 2000);
		Fade("@タイトルカラー", 700, 0, null, true);
	}
}


//▲スタートファンクション
function TitleStartUsual()
{
}

function TitleStartOver()
{
	Request("@SelectProcess01_002", Stop);
	WaitAction("@Select01/MouseLeave/SelectProcess01_002", null);

	$TitleStartPro=1;
	while($TitleStartPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 674, 125, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleStartLeave()
{
	Request("@Select01/MouseLeave/Select01_001", Enter);

	$TitleStartPro=0;
	Request("@SelectProcess01_001", Stop);
	WaitAction("@SelectProcess01_001", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleStartClick()
{
	Request("@Select01_001", Erase);
}



//▲ロードファンクション
function TitleLoadUsual()
{
}

function TitleLoadOver()
{
	Request("@タイトル読込/MouseLeave/タイトル読込プロセス２", Stop);
	WaitAction("@タイトル読込/MouseLeave/タイトル読込プロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

	$TitleLoadPro=1;
	while($TitleLoadPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 677, 158, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleLoadLeave()
{
	Request("@タイトル読込１", Enter);

	$TitleLoadPro=0;
	Request("@タイトル読込/MouseOver/タイトル読込プロセス１", Stop);
	WaitAction("@タイトル読込/MouseOver/タイトル読込プロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleLoadClick()
{
	Request("@タイトル読込１", Erase);
}



//▲コンフィグファンクション
function TitleConfigUsual()
{
}

function TitleConfigOver()
{
	Request("@タイトル設定/MouseLeave/タイトル設定プロセス２", Stop);
	WaitAction("@タイトル設定/MouseLeave/タイトル設定プロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

	$TitleConfigPro=1;
	while($TitleConfigPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 656, 189, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleConfigLeave()
{
	Request("@タイトル設定１", Enter);

	$TitleConfigPro=0;
	Request("@タイトル設定/MouseOver/タイトル設定プロセス１", Stop);
	WaitAction("@タイトル設定/MouseOver/タイトル設定プロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleConfigClick()
{
	Request("@タイトル設定１", Erase);
}



//▲エキストラファンクション
function TitleExtraUsual()
{
}

function TitleExtraOver()
{
	Request("@タイトル特別/MouseLeave/タイトル特別プロセス２", Stop);
	WaitAction("@タイトル特別/MouseLeave/タイトル特別プロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

	$TitleExtraPro=1;
	while($TitleExtraPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 675, 222, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleExtraLeave()
{
	Request("@タイトル特別１", Enter);

	$TitleExtraPro=0;
	Request("@タイトル特別/MouseOver/タイトル特別プロセス１", Stop);
	WaitAction("@タイトル特別/MouseOver/タイトル特別プロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleExtraClick()
{
	Request("@タイトル特別１", Erase);
}



//▲イグジットファンクション
function TitleExitUsual()
{
}

function TitleExitOver()
{
	Request("@タイトル出口/MouseLeave/タイトル出口プロセス２", Stop);
	WaitAction("@タイトル出口/MouseLeave/タイトル出口プロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

	$TitleExitPro=1;
	while($TitleExitPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 691, 254, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleExitLeave()
{
	Request("@タイトル出口１", Enter);

	$TitleExitPro=0;
	Request("@タイトル出口/MouseOver/タイトル出口プロセス１", Stop);
	WaitAction("@タイトル出口/MouseOver/タイトル出口プロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleExitClick()
{
	Request("@タイトル出口１", Erase);
}



//▲ライナーノーツファンクション
function TitleLinerUsual()
{
}

function TitleLinerOver()
{
}

function TitleLinerLeave()
{
	Request("@タイトル書記１", Enter);
}

function TitleLinerClick()
{
	Request("@タイトル書記１", Erase);
}





//=============================================================================//
..//■セレクト■
//=============================================================================//
function TitleSelect()
{
	while(!$TitleSelect)
	{
		select
		{
			case Select01:
			{
				Request("@タイトルプロセス", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@タイトルカラー", 200, 0, null, true);

				Wait(100);

				SetVolume("@sm*", 3000, 0, NULL);

				CreateColor("冒頭ホワイト", 1000, 0, 0, 800, 600, "WHITE");
				SetAlias("冒頭ホワイト", "冒頭ホワイト");
				Request("冒頭ホワイト", Lock);
				Fade("冒頭ホワイト", 0, 0, null, true);
				Fade("冒頭ホワイト", 1000, 1000, null, true);

				$TitleSelect = 1;
			}

			case タイトル読込:
			{
				Request("@タイトルプロセス", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@タイトルカラー", 200, 0, null, true);

				CreateSE("決定サウンド","SE_システム_タイトル_決定");
				SoundPlay("決定サウンド",0,1000,false);

//				CreateTexture("タイトル読込４", 100, $loadX, $loadY, "cg/sys/title/topbt_load_on.png");
//				Fade("タイトル読込/*/*",0,0,null,false);
//				Fade("タイトル読込４",0,1000,null,true);
				Wait(100);

//				Fade("タイトルカラー",1000,1000,null,false);

				$Title_Load = 1;
				call_chapter nss/sys_load.nss;
				$Title_Load = 0;

				Request("@タイトル読込１", Enter);
				Fade("@タイトル読込３",200,0,null,true);
//				Fade("タイトルカラー",150,0,null,true);
				Request("@タイトルプロセス", Start);
			}

			case タイトル設定:
			{
				Request("@タイトルプロセス", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@タイトルカラー", 200, 0, null, true);

				CreateSE("決定サウンド","SE_システム_タイトル_決定");
				SoundPlay("決定サウンド",0,1000,false);

//				CreateTexture("タイトル設定４", 100, $configX, $configY, "cg/sys/title/topbt_config_on.png");
//				Fade("タイトル設定/*/*",0,0,null,false);
//				Fade("タイトル設定４",0,1000,null,true);
				Wait(100);

//				Fade("タイトルカラー",1000,1000,null,false);

				$Title_Config = 1;
				call_chapter nss/sys_config.nss;
				$Title_Config = 0;

				Request("@タイトル設定１", Enter);
				Fade("@タイトル設定３",200,0,null,true);
//				Fade("タイトルカラー",150,0,null,true);
				Request("@タイトルプロセス", Start);
			}

	
			if(#ClearG)
			{
				case タイトル特別:
				{
					Request("@タイトルプロセス", Stop);
					SoundPlay($TitleBGM,1000,1000,true);
					Fade("@タイトルカラー", 200, 0, null, true);

					CreateSE("決定サウンド","SE_システム_タイトル_決定");
					SoundPlay("決定サウンド",0,1000,false);
	
	//				CreateTexture("タイトル特別４", 100, $extraX, $extraY, "cg/sys/title/topbt_extra_on.png");
	//				Fade("タイトル特別/*/*",0,0,null,false);
	//				Fade("タイトル特別４",0,1000,null,true);
					Wait(100);
	
					$TitleSelect = 2;
				}
			}


			case タイトル出口:
			{
				Request("@タイトルプロセス", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@タイトルカラー", 200, 0, null, true);

				CreateSE("決定サウンド","SE_システム_タイトル_決定");
				SoundPlay("決定サウンド",0,1000,false);

//				CreateTexture("タイトル出口４", 100, $exitX, $exitY, "cg/sys/title/topbt_exit_on.png");
//				Fade("タイトル出口４",0,1000,null,true);
//				Fade("タイトル出口/*/*",0,0,null,false);
//				Fade("タイトル出口/MouseClick/タイトル出口３",0,0,null,false);
				Wait(100);

				$Title_Exit = 1;
				call_chapter nss/sys_close.nss->main2;
				$Title_Exit = 0;

				Request("@タイトル出口１", Enter);
				Fade("@タイトル出口３",200,0,null,true);
				Request("@タイトルプロセス", Start);
			}


			if(#d1_true_end)
			{
				case タイトル書記:
				{
					Request("@タイトルプロセス", Stop);
					SoundPlay($TitleBGM,1000,1000,true);
					Fade("@タイトルカラー", 200, 0, null, true);

					CreateSE("決定サウンド","SE_システム_タイトル_決定");
					SoundPlay("決定サウンド",0,1000,false);

//					CreateTexture("タイトル書記４", 100, $linerX, $linerY, "cg/sys/title/ライナー_on.png");
//					Fade("タイトル書記４",0,1000,null,false);
//					Fade("タイトル書記/*/*",0,0,null,false);
					Wait(100);

					#SYSTEM_window_full = false;
					System("OPEN:http://www.otomedream.com/temp/game/muramasamune/smg");

					Request("@タイトル書記１", Enter);
					Fade("@タイトル書記３",200,0,null,true);
					Request("@タイトルプロセス", Start);
				}
			}
		}
	}

}//============================================================================//

function SelectlistSet(){

	$ColorList = 1;

	$startX = 0;
	$startY = 0;

	while($ColorList<97){

		$ナット名１="Select"+$ColorList+"_1"+;
		$ナット名２="Select"+$ColorList+"_2"+;
		$ナット名３="Select"+$ColorList+"_3"+;
		$画像１="WHITE";
		$画像２="WHITE";
		$画像３="BLUE";

		LoadColor($ナット名１, 199, 24, $画像１);
		LoadColor($ナット名２, 199, 24, $画像２);
		LoadColor($ナット名３, 199, 24, $画像３);
		SetAlias($ナット名１,$ナット名１);
		SetAlias($ナット名２,$ナット名２);
		SetAlias($ナット名３,$ナット名３);

		$1ナット名１="01Select"+$ColorList;
		$1ナット名２="02Select"+$ColorList;
		$1ナット名３="03Select"+$ColorList;

	CreateTexture("$1ナット名１", 1000, $startX, $startY, "$ナット名１");
	SetAlias("$1ナット名１", "$1ナット名１");
	Fade("$1ナット名１", 0, 0, null, false);
	Fade("$1ナット名１", 1, 50, null, true);

	CreateTexture("$1ナット名２", 1000, $startX, $startY, "$ナット名２");
	SetAlias("$1ナット名２", "$1ナット名２");
	Fade("$1ナット名２", 0, 0, null, false);
	CreateTexture("$1ナット名３", 1000, $startX, $startY, "$ナット名３");
	SetAlias("$1ナット名３", "$1ナット名３");
	Fade("$1ナット名３", 0, 50, null, false);



	if($startY == 575){
	$startY = 0;
		if($startX < 800){$startX = $startX+201;}
	}else{
	$startY = $startY+25;
	}
		$ColorList++;

	}


	CursorPosition($CLX,$CLY);


}
