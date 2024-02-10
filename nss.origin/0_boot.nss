#include "nss/function.nss"
#include "nss/sys_config.nss"

//=============================================================================//
//◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
.//★遊戯円環★バージョン1.00
//◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
//=============================================================================//
chapter main
{
	//★タイトルの状態
	$SYSTEM_menu_lock = true;

	//■初期設定
	#GameNumber=0;
	#SYSTEM_product_code="MURAMASA";
	#SCRIPT_VERSION="1.30";
//	#SYSTEM_loading_image="cg/sys/save/nowloading.jpg";
//	#SYSTEM_loading_image_x=0;
//	#SYSTEM_loading_image_y=0;
	#SYSTEM_skip_express_image="cg/sys/skip/skip-%03d.jpg#5";
//	#SYSTEM_skip_express_image="cg/sys/skip/超速%04d.png#22";
	#SYSTEM_interrupt_play_speed=3;
	#SYSTEM_express_skip_animation_fps=100;

	//メニュー
	SetShortcut("M", "nss/sys_menu.nss");
	//セーブメニュー
	SetShortcut("S", "nss/sys_save.nss");
	//ロードメニュー
	SetShortcut("L", "nss/sys_load.nss");
	//リセット確認
	SetShortcut("T", "nss/sys_reset.nss");
	//バックセレクト
	SetShortcut("R", "nss/sys_backselect.nss");
	//コンフィグ
	SetShortcut("C", "nss/sys_config.nss");
	//バックログ
	SetShortcut("B", "nss/sys_backlog.nss");
	//自動文字送り
	SetShortcut("A", "nss/sys_auto.nss");
	//全画面表示
	SetShortcut("F", "nss/sys_screen.nss");
	//超速
	SetShortcut("N", "nss/sys_skip.nss");
	//クイックセーブ
	SetShortcut("Q", "nss/sys_quicksave.nss");
	//クイックロード
	SetShortcut("P", "nss/sys_quickload.nss");
	//デバッグ
	//SetShortcut("D", "nss/sys_edit.nss");
	//好感度画面
	SetShortcut("H", "nss/sys_hmode.nss");

	//■：最初のお約束
	if(!#N2Start){
		//●設定リセット
		ConfigFormat();
		//●総プレイ時間：計測開始
		#BEGIN_TIME = Time();
		#N2Start=true;
	}

	//●円環開始●●●●●●●●●●●●●●●●●●●
	while(1)
	{
		//■シーンの頭に必ず記述
		$スクリプトバージョン = "  Version $Revision: 60 $";
		$構成名 = ModuleFileName();
		SystemInit();

		//★ロック設置
		LockVideo(false);

		//★：ゲームがスタートしたことを明示する変数
		$GameStart = 1;

		//★：ゲームスピード
		#play_speed_plus = #SYSTEM_play_speed;

		//▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼
		//▼デバッグ用
		//#SYSTEM_skip_absolute = true;
		//#SYSTEM_skip_express = true;
		//$Logo=true;
		//$FullMetalDeamon=true;
		//#FullMetalDeamonG=false;

		//DebugSound();
		//DebugGallery();
		//▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲

		//□フラグ回収までタイトル非表示
		if(!#START_FLAG&&!$GameClose){
			//$GameContiune=1;
			//TitleLogo2();
			//Delete("*");
			//call_chapter nss/0_boot_開始スクリプト.nss;
		}

		//■ドラック＆ドロップ
		if($GameContiune == 1){
			//★：結果
			$GameContiune = 0;
			Delete("*");
			call_chapter nss/0_boot_開始スクリプト.nss;

			//☆タイトルクリア変数制御
			TitleClear();

			//■シーンの頭に必ず記述
			$構成名 = ModuleFileName();
			SystemInit();

			//★ロック設置
			LockVideo(false);

			//★：ゲームがスタートしたことを明示する変数
			$GameStart = 1;

			//★：ゲームスピード
			#play_speed_plus = #SYSTEM_play_speed;
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
		$SYSTEM_text_waitkey=true;

		$TitleBGM="@mbgm04";
		$TitleOverSE="sound/se/se戦闘_動作_刀構え02";
		$TitleClickSE="se戦闘_動作_刀構え01";
		$TitleClickSE2="se特殊_鎧_装着03";
		$TitleClickSE3="se特殊_鎧_装着04";
		$TitleClickSE4="se戦闘_攻撃_剣戟弾く01";
		//$TitleClickSE4="se戦闘_動作_武装準備01";

		Save(0);
		DeleteSaveFile(9999);

		//■カラー定義
		TitleColor();
		//■エキストラ読み出し
		if(!$CgArray){
			call_chapter nss/extra_gallery.nss->main2;
			$CgArray=true;
		}
		//■フルスクプロセス
		TitleScreen();
		//■：コングラ判定
		TitleCongratulations();
		//■：ロゴとエキストラBGM判定
		TitleLogo();
		//■：タイトル定義
		TitleSet();
		//■：タイトル動作
		TitleFade();
		//■：タイトルセレクト
		TitleSelect();

		//★：結果
		if($TitleSelect == 1)
		{
			Request("タイトルイメージ１", UnLock);
			Request("タイトルイメージ２", UnLock);
			Request("タイトルイメージ３", UnLock);
			Delete("*");
			Request("決定サウンド", Disused);
			Request("決定サウンド", UnLock);
			Wait(2000);

			call_chapter nss/0_boot_開始スクリプト.nss;

			//☆タイトルクリア変数制御
			TitleClear();

		}else if($TitleSelect == 2){
			//繋ぎ用背景
			CreateTexture("スクリーン", 2000, 0, 0, SCREEN);
			SetAlias("スクリーン", "スクリーン");

			//戻り用ウィンドウ
			CreateWindow("システムタイトル", 10000, 0, 0, 1024, 576, false);
			SetAlias("システムタイトル", "システムタイトル");
			Request("システムタイトル", Lock);

			//SE
			CreateSE("決定サウンズ",$TitleClickSE4);
			Request("決定サウンズ", Lock);

			Delete("タイトル*");
			call_chapter nss/extra_menu.nss;

			Request("決定サウンズ", UnLock);
			Request("決定サウンズ", Disused);
		}
	}
	//->end while
}
//->end chapter main
//=============================================================================//


//============================================================================//
..//■クリア後処理■
//============================================================================//
function TitleClear()
{
	//☆エンド判定
	if(#復讐編終了||#英雄編終了||#悪鬼編終了){
		#ClearG=true;
	}
	//☆タイトル変更準備
	if($FullMetalDeamon){
		#FullMetalDeamonL=true;
	}

	ClearScore(LOCAL);
	ClearBacklog();
	DeleteSaveFile(9999);

	//☆タイトル変更
	if(#FullMetalDeamonL){
		$FullMetalDeamon=true;
	}
	#FullMetalDeamonL=false;

	//★「ClearScore」で消されたスクリプト的なもの再定義
	$BOX_Init = true;
	$BGM_Init = true;
	$Logo = true;
	$GameStart = 1;
}
//============================================================================//




//============================================================================//
..//■タイトルカラー判定■
//============================================================================//
function TitleColor()
{
	CreateColor("タイトルカラー", 150, 0, 0, 1024, 576, "BLACK");
	SetAlias("タイトルカラー", "タイトルカラー");
	Fade("タイトルカラー", 0, 0, null, true);
	CreateColor("タイトルカラー２", 150, 0, 0, 1024, 576, "WHITE");
	SetAlias("タイトルカラー", "タイトルカラー");
	Fade("タイトルカラー２", 0, 0, null, true);
	//Request("タイトルカラー２", AddRender);
}
//============================================================================//




//============================================================================//
..//■タイトルフルスクプロセス■
//============================================================================//
function TitleScreen()
{
	CreateProcess("タイトルフルスクプロセス", 150, 0, 0, "TitleFull");
	SetAlias("タイトルフルスクプロセス", "タイトルフルスクプロセス");
	Request("タイトルフルスクプロセス", Start);
}
function TitleFull(){
	select{
		//★キーダウン系
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}
	}
}
//============================================================================//




//============================================================================//
..//■コングラチュレーション！判定■
//============================================================================//
function TitleCongratulations()
{
	if(#悪鬼編終了&&!#ClearAll&&$CompleteCount){
		SoundPlay("@mbgm12",0,1000,true);

		CreateColor("おめでとう色", 150, 0, 0, 1024, 576, "White");
		Fade("おめでとう色", 0, 0, null, true);
		Request("おめでとう色", AddRender);

		CreateTexture("おめでとう", 100, 0, 0, "cg/ev/ev999_おめでとう.jpg");
		Fade("おめでとう", 0, 0, null, true);

		Fade("おめでとう色", 500, 1000, null, true);
		Fade("おめでとう",0,1000,null,true);
		Fade("おめでとう色", 1000, 0, null, true);

		WaitKey();

		#ev999_おめでとう=true;

		//$ClearL = false;
		#ClearAll = true;

		SetVolume("@mbgm*", 4000, 0, NULL);

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
		CreateColor("タイトルカラー３", 100, 0, 0, 1024, 576, "WHITE");
		CreateTexture("タイトルメディア１", 100, 0, 0, "cg/sys/title/media_a.jpg");
		CreateTexture("タイトルメディア２", 100, 0, 0, "cg/sys/title/media_b.jpg");
		CreateTexture("タイトルニトロプラス", 100, 0, 0, "cg/sys/title/Nitroplus-logo.jpg");
		CreateTexture("タイトル注意", 100, 0, 0, "cg/sys/title/注意事項.jpg");
		//CreateTexture("タイトル体験", 100, 0, 0, "cg/sys/title/諸注意.jpg");
		//CreateTexture("タイトル説明", 100, 0, 0, "cg/sys/title/クィックメニュー操作説明.jpg");

		Fade("タイトル*", 0, 0, null, true);

		Fade("タイトルカラー３",300,1000,null,true);
		Fade("タイトルメディア１", 500, 1000, null, true);
		WaitKey(3000);
		Fade("タイトルメディア２", 500, 1000, null, true);
		Fade("タイトルメディア１", 0, 0, null, true);
		WaitKey(3000);
		Fade("タイトルメディア２",500,0,null,true);

		Wait(1000);

		Fade("タイトルニトロプラス", 1000, 1000, null, true);
		Delete("タイトルカラー３");
		WaitKey(3000);
		Fade("タイトルニトロプラス", 500, 0, null, true);

		Wait(500);

		Fade("タイトル注意", 1000, 1000, null, false);
		WaitKey(1100);
		Fade("タイトル注意", 0, 1000, null, true);
		WaitKey(8000);
		Fade("タイトル注意", 500, 0, null, false);
		WaitKey(600);
		Fade("タイトル注意", 0, 0, null, true);

/*
		Fade("タイトル体験", 1000, 1000, null, false);
		WaitKey(1100);
		Fade("タイトル体験", 0, 1000, null, true);
		WaitKey(8000);
		Fade("タイトル体験", 500, 0, null, false);
		WaitKey(600);
		Fade("タイトル体験", 0, 0, null, true);

		Fade("タイトル説明", 1000, 1000, null, false);
		WaitKey(1100);
		Fade("タイトル説明", 0, 1000, null, true);
		WaitKey();
		Fade("タイトル説明", 500, 0, null, false);
		WaitKey(600);
		Fade("タイトル説明", 0, 0, null, true);
*/
		Wait(100);
	}
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
		//Request("タイトルカラー２", AddRender);

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


function zangai(){
	if(#悪鬼編終了){
		$TitleMuramasa="cg/ev/ev267_真生悪鬼ＥＤ_a.jpg";
	}else if(#魔王編終了){
		$TitleMuramasa="cg/ev/ev501_村正鎮座.jpg";
	}else if(#復讐編終了&&(!#英雄編未了||!#英雄編終了)){
		$TitleMuramasa="cg/ev/ev004_香奈枝の凶眼_a.jpg";
		if(!#英雄編終了){
			#英雄編未了=true;
		}
	}else if(#英雄編終了){
		$TitleMuramasa="cg/ev/ev165_最終正宗_a.jpg";
	}else{
		$TitleMuramasa="cg/ev/ev501_村正鎮座.jpg";
	}
}

//=============================================================================//
..//■タイトル定義■
//=============================================================================//
function TitleSet()
{
...	//■デモプロセス
	//CreateProcess("タイトルプロセス", 150, 0, 0, "TitleProcess");
	//SetAlias("タイトルプロセス", "タイトルプロセス");
	CreateTPO1("@タイトル炎上","@タイトル回転",600,300,1100,2);

...	//■ロード
	LoadImage("タイトルイメージ０", "cg/sys/title/hit.png");
	SetAlias("タイトルイメージ０", "タイトルイメージ０");
	if(!$エキストラタイトル){
		LoadImage("タイトルイメージ１", "cg/sys/title/偽富士背景画像.png");
		SetAlias("タイトルイメージ１", "タイトルイメージ１");
		Request("タイトルイメージ１", Lock);
		LoadImage("タイトルイメージ２", "cg/sys/title/ロゴ画像.png");
		SetAlias("タイトルイメージ２", "タイトルイメージ２");
		Request("タイトルイメージ２", Lock);
		LoadImage("タイトルイメージ３", "cg/ef/ef046_炎a.jpg");
		SetAlias("タイトルイメージ３", "タイトルイメージ３");
		Request("タイトルイメージ３", Lock);
	}

...	//■フラグ解放
	if(#英雄編終了&&#復讐編終了){
		#魔王編解放=true;
	}
//	#英雄編終了=true;
//	#復讐編終了=true;
//	#魔王編終了=false;
//	#悪鬼編終了=false;

	if(!$Logo){
		if(#悪鬼編終了&&!#悪鬼編通過){
			$TitleMuramasa="cg/ev/ev267_真生悪鬼ＥＤ_a.jpg";
			#悪鬼編通過=true;
		}else if(#魔王編終了&&!#悪鬼編終了){
			$TitleMuramasa="cg/ev/ev501_村正鎮座.jpg";
			#魔王編通過=true;
		}else if(#英雄編終了&&!#英雄編通過){
			$TitleMuramasa="cg/ev/ev165_最終正宗_a.jpg";
			#英雄編通過=true;
		}else if(#復讐編終了&&!#復讐編通過){
			$TitleMuramasa="cg/ev/ev004_香奈枝の凶眼_a.jpg";
			#復讐編通過=true;
		}else{
			#通常編終了=true;
			Array($TitleImageName,"英雄編終了","復讐編終了","悪鬼編終了","通常編終了");
			AssocArray($TitleImageName,"英雄編終了","復讐編終了","悪鬼編終了","通常編終了");

			$TitleImageWhile2=0;
			$TitleImageWhile=0;
			while(Count($TitleImageName)>$TitleImageWhile){
				if(VariableValue(#,$TitleImageName[$TitleImageWhile])){
					VariableValue($,"TitleImageRun"+$TitleImageWhile2,$TitleImageName[$TitleImageWhile]);
					$TitleImageWhile2++;
				}
				$TitleImageWhile++;
			}

			$ReTitleImage=Random($TitleImageWhile2);
			$OkTitleImage=VariableValue($,"TitleImageRun"+$ReTitleImage);

			if($OkTitleImage=="悪鬼編終了"){
				$TitleMuramasa="cg/ev/ev267_真生悪鬼ＥＤ_a.jpg";
			}else if($OkTitleImage=="英雄編終了"){
				$TitleMuramasa="cg/ev/ev165_最終正宗_a.jpg";
			}else if($OkTitleImage=="復讐編終了"){
				$TitleMuramasa="cg/ev/ev004_香奈枝の凶眼_a.jpg";
			}else{
				$TitleMuramasa="cg/ev/ev501_村正鎮座.jpg";
			}
		}
		LoadImage("タイトルイメージ村正", $TitleMuramasa);
		SetAlias("タイトルイメージ村正", "タイトルイメージ村正");
	}


...	//■背景
	CreateTexture("タイトル背景", 100, 0, 0, "タイトルイメージ１");
	SetAlias("タイトル背景", "タイトル背景");
	CreateTexture("タイトル版権", 100, 50, 540, "cg/sys/title/コピーライト.png");
	SetAlias("タイトル版権", "タイトル版権");
	CreateTexture("タイトル回転", 100, 50, 540, "cg/sys/title/コピーライト.png");
	SetAlias("タイトル回転", "タイトル回転");
	Request("タイトル回転", Erase);

	CreateTexture("タイトル炎上", 100, 0, 0, "タイトルイメージ３");
	SetAlias("タイトル炎上", "タイトル炎上");
	Zoom("タイトル炎上", 0, 2000, 2000, Dxl2, true);
	Request("タイトル炎上", OverlayRender);

	if(!$Logo){
		CreateTexture("タイトル村正", 100, Center, Middle, "タイトルイメージ村正");
		SetAlias("タイトル村正", "タイトル村正");
		Request("タイトル村正", AddRender);
		CreateTexture("タイトル村正０", 100, Center, Middle, "タイトルイメージ村正");
		SetAlias("タイトル村正０", "タイトル村正０");
		Request("タイトル村正０", AddRender);
		SetShade("タイトル村正０", MEDIUM);
		CreateTexture("タイトル村正２", 100, Center, Middle, "タイトルイメージ村正");
		SetAlias("タイトル村正２", "タイトル村正２");
		Request("タイトル村正２", AddRender);
		Zoom("タイトル村正２", 0, 1100, 1100, null, true);
	}

	CreateTexture("タイトル背景２", 100, 0, 0, "タイトルイメージ１");
	SetAlias("タイトル背景２", "タイトル背景２");
	Request("タイトル背景２", AddRender);

	if(!$Logo){
		CreateTexture("タイトル効果１Ｃ", 100, 0, 0, "cg/ef/ef004_汎用血雫.jpg");
		Request("タイトル効果１Ｃ", AddRender);
		CreateTexture("タイトル効果１Ｄ", 100, 0, 0, "cg/ef/ef005_汎用血雫.jpg");
		Request("タイトル効果１Ｄ", AddRender);
	}

	CreateTexture("タイトルロゴ", 100, 346, 40, "タイトルイメージ２");
	SetAlias("タイトルロゴ", "タイトルロゴ");
	CreateTexture("タイトルロゴ２", 100, 346, 40, "タイトルイメージ２");
	SetAlias("タイトルロゴ２", "タイトルロゴ２");

	if(!$Logo){
		CreateTexture("タイトル効果１Ａ", 100, 0, 0, "cg/ef/resize/ef006_汎用血しぶき_ex.png");
		SetVertex("タイトル効果１Ａ", 1024, 0);
		//SetVertex("タイトル効果１Ａ", 0, 512);
		//Zoom("タイトル効果１Ａ", 0, 0, 0, Dxl2, true);
		Request("タイトル効果１Ａ", MulRender);
		Rotate("タイトル効果１Ａ", 100, @0, @0, -90, Dxl1, false);
	
		CreateTexture("タイトル効果１Ｂ", 100, 0, 0, "cg/ef/resize/ef007_汎用血しぶき_ex.png");
		SetVertex("タイトル効果１Ｂ", 0, 0);
		//SetVertex("タイトル効果１Ｂ", 1024, 512);
		//Zoom("タイトル効果１Ｂ", 0, 0, 0, Dxl2, true);
		Request("タイトル効果１Ｂ", MulRender);
		Rotate("タイトル効果１Ｂ", 100, @0, @0, 90, Dxl1, false);
	
		CreateColor("タイトル血色", 150, 0, 0, 1024, 576, "RED");
		Request("タイトル血色", AddRender);
	
		CreateTexture("タイトル題字", 100, 492, 157, "cg/sys/telop/tp_魔王編挿入01.png");
		SetVertex("背景１", Cnter, 110);
	}

...	//■ウィンドウ定義
	CreateWindow("タイトル窓枠", 300, 0, 0, 1024, 576, false);
	SetAlias("タイトル窓枠", "タイトル窓枠");

...	//■各種定義
	Array($TitleNutName,"途中","開始","読込","設定","特別","出口","書記");
	AssocArray($TitleNutName,"途中","開始","読込","設定","特別","出口","書記");

	Array($TitleNutName[開始],762,150,true,最初から,Start);
	Array($TitleNutName[読込],702,150,true,電光記録,Load);
	Array($TitleNutName[設定],282,150,true,設定画面,Config);
	Array($TitleNutName[途中],822,150,true,しおりから,Quick);
	Array($TitleNutName[特別],222,150,true,特別付加,Extra);
	Array($TitleNutName[出口],162,150,true,終了する,Exit);
	Array($TitleNutName[書記],60,524,false,ライナー画像,LinerNotes);

	if(#悪鬼編終了){
		$TitleNutName[書記][2]=true;
	}

	$WhileCount=0;
	while(Count($TitleNutName)>$WhileCount){
		if($TitleNutName[$WhileCount][2]){
			$TitleX=$TitleNutName[$WhileCount][0];
			$TitleY=$TitleNutName[$WhileCount][1];
	
			$TitleNutBase="タイトル"+$TitleNutName[$WhileCount];
			CreateChoice($TitleNutBase);
			SetAlias($TitleNutBase, $TitleNutBase);
	
			if($TitleNutName[$WhileCount]=="書記"){
				$TitleNutImage0="cg/sys/title/ライナー画像-000.png";
			}else{
				$TitleNutImage0="タイトルイメージ０";
			}
			$TitleNutImage1=$TitleNutBase+"イメージ１";
			$TitleNutFail="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"-001.png";
			LoadImage($TitleNutImage1, $TitleNutFail);
			$TitleNutImage2=$TitleNutBase+"イメージ２";
			$TitleNutFail="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"-002.png";
			LoadImage($TitleNutImage2, $TitleNutFail);
			$TitleNutImage3=$TitleNutBase+"イメージ３";
			$TitleNutFail="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"-003.png";
			LoadImage($TitleNutImage3, $TitleNutFail);
		
			$TitleNutTemp1="タイトル窓枠/"+$TitleNutBase+"１";
			$TitleNutTemp1Alias="窓枠"+$TitleNutBase+"１";
			CreateTexture($TitleNutTemp1, 100, $TitleX, $TitleY, $TitleNutImage1);
			SetAlias($TitleNutTemp1, $TitleNutTemp1Alias);
			//$TitleNutTemp2="タイトル窓枠/"+$TitleNutBase+"２";
			//$TitleNutTemp2Alias="窓枠タイトル"+$TitleNutBase+"２";
			//CreateTexture($TitleNutTemp2, 100, $TitleX, $TitleY, $TitleNutImage2);
			//SetAlias($TitleNutTemp2, $TitleNutTemp2Alias);
			//$TitleNutTemp3="タイトル窓枠/"+$TitleNutBase+"３";
			//$TitleNutTemp3Alias="窓枠タイトル"+$TitleNutBase+"３";
			//CreateTexture($TitleNutTemp3, 100, $TitleX, $TitleY, $TitleNutImage3);
			//SetAlias($TitleNutTemp3, $TitleNutTemp3Alias);
	
			$TitleNutHitAlias=$TitleNutBase+"０";
			$TitleNutHit=$TitleNutBase+"/MouseUsual/hit";
			CreateTexture($TitleNutHit, 100, $TitleX, $TitleY, $TitleNutImage0);
			SetAlias($TitleNutHit, $TitleNutHitAlias);
			Request($TitleNutHit, "Erase");
			//$TitleNutUsualAlias=$TitleNutBase+"１":
			//$TitleNutUsual=$TitleNutBase+"/MouseUsual/nut";
			//CreateTexture($TitleNutUsual, 100, $TitleX, $TitleY, $TitleNutImage1);
			//SetAlias($TitleNutUsual, $TitleNutUsualAlias);
			$TitleNutOverAlias=$TitleNutBase+"２";
			$TitleNutOver=$TitleNutBase+"/MouseOver/nut";
			CreateTexture($TitleNutOver, 100, $TitleX, $TitleY, $TitleNutImage2);
			SetAlias($TitleNutOver, $TitleNutOverAlias);
			$TitleNutClickAlias=$TitleNutBase+"３";
			$TitleNutClick=$TitleNutBase+"/MouseClick/nut";
			CreateTexture($TitleNutClick, 100, $TitleX, $TitleY, $TitleNutImage3);
			SetAlias($TitleNutClick, $TitleNutClickAlias);
	
			$TitleSoundOver=$TitleNutBase+"/MouseOver/se";
			CreateSound($TitleSoundOver, SE, $TitleOverSE);

			//$TitleProOverAlias=$TitleNutBase+"プロセス１";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Over";
			//$TitleProOver=$TitleNutBase+"/MouseOver/Pro";
			//CreateProcess($TitleProOver, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProOver, $TitleProOverAlias);
			//$TitleProLeaveAlias=$TitleNutBase+"プロセス２";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Leave";
			//$TitleProLeave=$TitleNutBase+"/MouseLeave/Pro";
			//CreateProcess($TitleProLeave, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProLeave, $TitleProLeaveAlias);
			//$TitleProClickAlias=$TitleNutBase+"プロセス３";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Click";
			//$TitleProClick=$TitleNutBase+"/MouseClick/Pro";
			//CreateProcess($TitleProClick, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProClick, $TitleProClickAlias);

			if($TitleNutName[$WhileCount]=="途中"&&!ExistSave(9998)){
				Request($TitleNutBase,UnClickable);
				$nut=$TitleNutBase+"/*/*";
				Request($nut, Erase);
				Delete($TitleSoundOver);
			}
		}
		$WhileCount++;
	}

	if(!ExistSave(9998)){
		$TitleNutName[途中][2]=false;
	}


	Fade("タイトル*",0,0,null,false);
	Fade("タイトル*/*",0,0,null,false);
	Fade("タイトル*/*/*",0,0,null,true);
}
//============================================================================//



//=============================================================================//
..//■タイトル動作■
//=============================================================================//
function TitleFade()
{
	$TitleFadeIcon=0;

...	//▽起動時
	if(!$Logo){
		//準備
		Zoom("タイトル背景", 0, 2000, 2000, Dxl2, true);
		Zoom("タイトル背景２", 0, 2000, 2000, null, true);
		Zoom("タイトルロゴ", 0, 800, 800, Dxl2, true);
		Zoom("タイトルロゴ２", 0, 800, 800, Dxl2, true);

		Request("タイトルカラー２", AddRender);
		CreateSE("SE01","se特殊_雰囲気_鎧登場演02");

		//★ＢＧＭプレイ
		SoundPlay($TitleBGM,0,1000,true);
		Wait(2000);

		//▼完全ランダム
		MoveFRP1("@タイトル村正２",10000,15,15);
		MoveFRP2("@タイトル背景２",10000,15,15);
	
		Move("タイトル題字", 4000, @-100, @0, null, false);
		Zoom("タイトル題字", 4000, 1000, 1000, null, false);
		Fade("タイトル題字", 1000, 1000, null, false);
		Wait(2000);

		$TitleFadeTime=7000;
		Fade("タイトル題字", 2000, 0, null, false);
		Zoom("タイトル背景", $TitleFadeTime, 1000, 1000, Axl1, false);
		Zoom("タイトル背景２", $TitleFadeTime, 1500, 1500, Axl1, false);
		Zoom("タイトル村正０", $TitleFadeTime, 1500, 1500, Axl1, false);
		Zoom("タイトル村正", $TitleFadeTime, 1500, 1500, Axl1, false);
		Zoom("タイトル村正２", $TitleFadeTime, 1600, 1600, Axl1, false);
		Fade("タイトル村正０", 3000, 800, null, false);
		Wait(1000);
	
		Fade("タイトル村正０", 3000, 0, null, false);
		Fade("タイトル村正", 3000, 800, null, false);
		Wait(2000);
	
		DrawEffect("タイトル炎上", 1000, "MiddleWave", 0, 1000, null);
		Fade("タイトル炎上", 3000, 700, null, false);
	
		Fade("タイトル村正２", 200, 500, null, false);
		Rotate("タイトル効果１Ａ", 500, @0, @0, 0, Dxl3, false);
		Zoom("タイトル効果１Ａ", 2000, 2000, 2000, Dxl3, false);
		Fade("タイトル効果１Ａ", 100, 500, null, false);
		Fade("タイトル効果１Ｃ", 300, 500, null, false);
		Fade("タイトル背景", 500, 300, null, false);
		Fade("タイトル背景２", 500, 500, null, false);
		Fade("タイトル血色", 1000, 200, null, false);
		Wait(500);
		Fade("タイトル効果１Ａ", 1000, 0, null, false);
		Wait(500);
		Fade("タイトル血色", 1500, 0, null, false);
		Fade("タイトル村正２", 500, 0, null, false);
		Fade("タイトル背景２", 500, 0, null, false);
		Fade("タイトル効果１Ｃ", 700, 0, null, false);
		Fade("タイトル背景", 500, 100, null, false);
		Wait(500);
	
		Fade("タイトル村正２", 200, 500, null, false);
		Rotate("タイトル効果１Ｂ", 500, @0, @0, 0, Dxl3, false);
		Zoom("タイトル効果１Ｂ", 2000, 2000, 2000, Dxl3, false);
		Fade("タイトル効果１Ｂ", 100, 500, null, false);
		Fade("タイトル効果１Ｄ", 300, 500, null, false);
		Fade("タイトル背景", 500, 600, null, false);
		Fade("タイトル背景２", 500, 800, null, false);
		Fade("タイトル血色", 1000, 200, null, false);
		Wait(500);
		Fade("タイトル効果１Ｂ", 1000, 0, null, false);
		Wait(500);
		Fade("タイトル血色", 1500, 0, null, false);
		Fade("タイトル村正２", 500, 0, null, false);
		Fade("タイトル背景２", 500, 0, null, false);
		Fade("タイトル効果１Ｄ", 700, 0, null, false);
		Wait(500);
	
		Fade("タイトルカラー２", 200, 1000, Axl1, true);
			SoundPlay("SE01",0,1000,false);
			//▼完全ランダム：停止
			MoveFRP1stop();
			MoveFRP2stop();
			//▼繰り返し
			TitleProcessStart();

			Fade("タイトル版権",0,1000,null,false);
			Fade("タイトル村正", 0, 0, null, false);
			Fade("タイトル村正２", 0, 0, null, false);
			Fade("タイトル効果*", 0, 0, null, false);
			Zoom("タイトル背景", 0, 1000, 1000, null, false);
			Fade("タイトル背景", 0, 1000, null, false);
			Zoom("タイトルロゴ", 0, 1000, 1000, null, false);
			Fade("タイトルロゴ", 0, 1000, null, false);
			Zoom("タイトルロゴ２", 0, 1000, 1000, null, false);
			Fade("タイトルロゴ２", 0, 1000, null, false);
			SetBlur("タイトルロゴ２", true, 2, 500, 50, false);
			Zoom("タイトル背景２", 0, 1000, 1000, null, false);
			Fade("タイトル背景２", 0, 1000, null, false);
			SetBlur("タイトル背景２", true, 2, 500, 50, false);
			Fade("タイトル炎上", 0, 300, null, false);
	
		Fade("@窓枠タイトル開始１",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@窓枠タイトル読込１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル途中１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル設定１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル特別１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル出口１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル書記１",$TitleFadeIcon,1000,null,false);
		if(!ExistSave(9998)){
			Fade("@窓枠タイトル途中１",$TitleFadeIcon,500,null,false);
		}
		WaitAction("@窓枠タイトル開始１", null);

		Zoom("タイトルロゴ２", 1000, 1200, 1200, null, false);
		Fade("タイトルロゴ２", 1000, 0, null, false);
		Zoom("タイトル背景２", 1000, 1200, 1200, null, false);
		Fade("タイトル背景２", 1000, 0, null, false);

		Fade("タイトルカラー２",1000,0,null,true);

		$Logo=1;

	}else if($FullMetalDeamon){
...	//▽「悪鬼ＥＤ終了後処理」
		CreateTextureEX("タイトル悪鬼１", 16000, Center, Middle, "cg/ev/ev267_真生悪鬼ＥＤ_a.jpg");
		CreateTextureEX("タイトル悪鬼２", 16010, -750, -770, "cg/ev/resize/ev267_真生悪鬼ＥＤ_a.jpg");
		CreateTextureEX("タイトル悪鬼３", 16100, @0, @0, "cg/ev/ev267_真生悪鬼ＥＤ_b.jpg");
		CreateColorEXadd("絵色白", 30000, "#FFFFFF");

		//SoundPlay($TitleBGM, 0, 700, false);
		Wait(160);

		CreateSE("SE01","se擬音_雰囲気_抜刀01");
		MusicStart("SE01",0,1000,0,1000,null,false);
		WaitPlay("SE01", null);

		CreateSE("SE02","se戦闘_動作_鎧_踏み込み01");
		MusicStart("SE02",0,1000,0,1000,null,false);

		Fade("タイトル悪鬼１", 0, 1000, null, false);
		Fade("タイトル悪鬼２", 0, 1000, null, false);
		Shake("タイトル悪鬼２", 300, 0, 20, 0, 0, 1000, null, true);
	
		Wait(500);
	
		Move("タイトル悪鬼２", 8000, @0, -60, DxlAuto, false);
		Wait(6000);
		FadeDelete("タイトル悪鬼２", 1000, true);
	
		Wait(1500);
	
		Fade("タイトル悪鬼３", 2000, 1000, null, true);
		Delete("タイトル悪鬼１");
	
		Wait(2000);
	
		CreateSE("SE03","se特殊_雰囲気_鎧登場演02");
		MusicStart("SE03",0,1000,0,1000,null,false);

		Fade("絵色白", 0, 1000, null, true);
			Delete("タイトル悪鬼*");
			CreateTextureSP("タイトル悪鬼０", 16200, @0, @0, "cg/ev/ev267_真生悪鬼ＥＤ_c.jpg");
			CreatePlainEX("絵板写", 16210);
			SetBlur("絵板写", true, 2, 500, 80, false);
			Fade("絵板写", 0, 500, null, true);
		FadeDelete("絵板写", 1450, false);
		Zoom("絵板写", 1500, 1300, 1300, null, false);
		FadeDelete("絵色白", 1000, true);
	
		//SoundPlay($TitleBGM, 2000, 650, false);
		//Wait(5000);

		//SetVolume($TitleBGM, 5000, 1000, NULL);
	
		//CreateTextureEX("タイトル悪鬼１", 16200, Center, Middle, "cg/ev/ev267_真生悪鬼ＥＤ_a.jpg");
		//Fade("タイトル悪鬼１", 2000, 1000, null, true);
		//Delete("タイトル悪鬼０");

		//Wait(2000);

		//Fade("タイトル悪鬼１", 3000, 0, null, true);
		//Delete("タイトル悪鬼１");

			Wait(6000);
			Fade("タイトル悪鬼０", 5000, 0, null, true);
			Delete("タイトル悪鬼０");

		CreateColor("タイトル悪鬼色", 16200, 0, 0, 1024, 576, BLACK);
		Wait(1000);

			SoundPlay($TitleBGM, 2000, 1000, true);
			Wait(2000);

		//▼ここからほぼ同一
		Fade("タイトル炎上", 0, 1, null, true);
		DrawEffect("タイトル炎上", 1000, "MiddleWave", 0, 1000, null);

		Fade("タイトルロゴ２", 0, 1000, null, false);
		Fade("タイトル背景２", 0, 1000, null, false);
		Fade("タイトル背景",0,1000,null,true);
		Fade("タイトルロゴ",0,1000,null,true);
		Fade("タイトル版権",0,1000,null,false);

		Fade("@窓枠タイトル開始１",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@窓枠タイトル読込１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル途中１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル設定１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル特別１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル出口１",$TitleFadeIcon,1000,null,false);
		if(#FullMetalDeamonG){
			Fade("@窓枠タイトル書記１",$TitleFadeIcon,1000,null,false);
		}

		if(!ExistSave(9998)){
			Fade("@窓枠タイトル途中１",$TitleFadeIcon,500,null,false);
		}
		WaitAction("@窓枠タイトル開始１", null);

		SetBlur("タイトルロゴ２", true, 2, 500, 50, false);
		SetBlur("タイトル背景２", true, 2, 500, 50, false);

		Zoom("タイトルロゴ２", 2000, 1200, 1200, null, false);
		Fade("タイトルロゴ２", 2000, 0, null, false);
		Zoom("タイトル背景２", 2000, 1200, 1200, null, false);
		Fade("タイトル背景２", 2000, 0, null, false);

		Fade("タイトル悪鬼色", 2000, 0, null, true);
		Delete("タイトル悪鬼色");

		if(!#FullMetalDeamonG){
			Move("@窓枠タイトル書記１", 0, @0, @-15, null, true);
			Move("@窓枠タイトル書記１", 1000, @0, @15, Dxl1, false);
			Fade("@窓枠タイトル書記１",1000,1000,null,true);
			#FullMetalDeamonG=true;
		}

		//▼繰り返し
		TitleProcessStart();
		$FullMetalDeamon=false;

	}else{
...	//▽２回目以降
		if($エキストラタイトル){
			if(#エキストラＢＧＭ != $TitleBGM){
				//★ＢＧＭプレイ
				SetVolume("@mbgm*", 1000, 0, NULL);
				SetVolume("@msong*", 1000, 0, NULL);
				SoundPlay($TitleBGM,0,1000,true);
			}

			Request("タイトルカラー２", AddRender);
			CreateSE("SE01","se戦闘_攻撃_刀衝突01");

			SoundPlay("SE01",0,1000,false);
			Fade("タイトルカラー２", 0, 1000, Axl1, true);

			Fade("システムタイトル/タイトル背景", 0, 0, null, true);
			Request("システムタイトル", UnLock);
			Delete("システムタイトル");

			$エキストラタイトル=false;
		}else{
			//★ＢＧＭプレイ
			SoundPlay($TitleBGM,0,1000,true);

			//準備
			Move("タイトル背景", 0, @0, @-576, null, true);
			Zoom("タイトルロゴ", 0, 800, 800, Dxl2, true);
	
			Request("タイトルカラー２", AddRender);
			CreateSE("SE01","se特殊_雰囲気_鎧登場演02");
	
			Zoom("タイトルロゴ", 2000, 1000, 1000, null, false);
			Fade("タイトルロゴ", 2000, 1000, null, 1600);

			Move("タイトル背景", 400, @0, @576, null, false);
			Fade("タイトル背景", 400, 1000, null, 200);

			SoundPlay("SE01",0,1000,false);
			Fade("タイトルカラー２", 200, 1000, Axl1, true);
		}

		Fade("タイトル炎上", 0, 1, null, true);
		DrawEffect("タイトル炎上", 1000, "MiddleWave", 0, 1000, null);

		Fade("タイトルロゴ２", 0, 1000, null, false);
		Fade("タイトル背景２", 0, 1000, null, false);
		Fade("タイトル背景",0,1000,null,true);
		Fade("タイトルロゴ",0,1000,null,true);
		Fade("タイトル版権",0,1000,null,false);

		Fade("@窓枠タイトル開始１",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@窓枠タイトル読込１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル途中１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル設定１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル特別１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル出口１",$TitleFadeIcon,1000,null,false);
		Fade("@窓枠タイトル書記１",$TitleFadeIcon,1000,null,false);
		if(!ExistSave(9998)){
			Fade("@窓枠タイトル途中１",$TitleFadeIcon,500,null,false);
		}
		WaitAction("@窓枠タイトル開始１", null);

		SetBlur("タイトルロゴ２", true, 2, 500, 50, false);
		SetBlur("タイトル背景２", true, 2, 500, 50, false);

		Zoom("タイトルロゴ２", 1000, 1200, 1200, null, false);
		Fade("タイトルロゴ２", 1000, 0, null, false);
		Zoom("タイトル背景２", 1000, 1200, 1200, null, false);
		Fade("タイトル背景２", 1000, 0, null, false);

		Fade("タイトルカラー２",1000,0,null,true);

		//▼繰り返し
		TitleProcessStart();
	}

	//■プロセススタート
	//Request("タイトルプロセス", Start);

	//▲セットフォーカス
	TitleFocus();

	Request("タイトルフルスクプロセス", Stop);
	WaitAction("タイトルフルスクプロセス", null);
}
//============================================================================//



//=============================================================================//
..//■セットネクストフォーカス■
//=============================================================================//
function TitleFocus(){
	$TitleCount=Count($TitleNutName);

	$TitleWhile=0;
	while($TitleCount>$TitleWhile){
		if($TitleNutName[$TitleWhile][2]){
			TitleDocusGo();
		}
		$TitleWhile++;
	}
}

function TitleDocusGo()
{
	$TitleFocusBreak=true;
	$TitleStart=$TitleWhile+1;
	$TitleWhile2=0;
	while($TitleCount>$TitleWhile2&&$TitleFocusBreak){
		if($TitleStart>=$TitleCount){
			$TitleStart=0;
		}

		if($TitleNutName[$TitleStart][2]){
			$menunut="タイトル"+$TitleNutName[$TitleWhile]+"/MouseUsual/hit";
			$menunut2="タイトル"+$TitleNutName[$TitleStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,DOWN);
				SetNextFocus($menunut,$menunut2,LEFT);
			$TitleFocusBreak=false;
		}

		$TitleStart++;
		$TitleWhile2++;
	}


	$TitleFocusBreak=true;
	$TitleStart=$TitleWhile-1;
	$TitleWhile2=0;
	while($TitleCount>$TitleWhile2&&$TitleFocusBreak){
		if($TitleStart<0){
			$TitleStart=$TitleCount-1;
		}

		if($TitleNutName[$TitleStart][2]){
			$menunut="タイトル"+$TitleNutName[$TitleWhile]+"/MouseUsual/hit";
			$menunut2="タイトル"+$TitleNutName[$TitleStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,UP);
				SetNextFocus($menunut,$menunut2,RIGHT);
			$TitleFocusBreak=false;
		}

		$TitleStart--;
		$TitleWhile2++;
	}


}
//============================================================================//




//=============================================================================//
..//■ファンクションプロセス各種■
//=============================================================================//
//▲タイトル演出ファンクション
function CreateTPO1($NutTPO1a,$NutTPO1b,$TimeTPO1,$FadeTPO1,$WaitTPO1,$ParTPO1){
	CreateProcess("タイトルTPO1", 100, 0, 0, "ProcessTPO1");
	SetAlias("タイトルTPO1", "タイトルTPO1");
}
function ProcessTPO1(){
	begin:

	while(1){
		if($ParTPO1==1){
			LockVideo(true);//★ロック設置
			Fade($NutTPO1b, $TimeTPO1, 0, null, false);
			Fade($NutTPO1a, $TimeTPO1, $FadeTPO1, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitTPO1);
	
			LockVideo(true);//★ロック設置
			Fade($NutTPO1b, $TimeTPO1, $FadeTPO1, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitTPO1);
		}else if($ParTPO1==2){
			LockVideo(true);//★ロック設置
			Fade($NutTPO1a, $TimeTPO1, $FadeTPO1, null, false);
			Fade($NutTPO1b, $TimeTPO1, 0, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitTPO1);
	
			LockVideo(true);//★ロック設置
			Fade($NutTPO1b, $TimeTPO1, $FadeTPO1, null, false);
			Fade($NutTPO1a, $TimeTPO1, 0, null, false);
			LockVideo(false);//★ロック設置
			Wait($WaitTPO1);
		}
	}
}
function TitleProcessStart(){
	Request("タイトルTPO1", Start);
}
function TitleProcessStop(){
	Request("タイトルTPO1", Stop);
	WaitAction("タイトルTPO1", null);
	Fade("タイトル炎上", 100, 0, null, false);
	//★ロック設置
	LockVideo(false);
}

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
	Request("@タイトル開始/MouseLeave/タイトル開始プロセス２", Stop);
	WaitAction("@タイトル開始/MouseLeave/タイトル開始プロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

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
	Request("@タイトル開始１", Enter);

	$TitleStartPro=0;
	Request("@タイトル開始/MouseOver/タイトル開始プロセス１", Stop);
	WaitAction("@タイトル開始/MouseOver/タイトル開始プロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleStartClick()
{
	Request("@タイトル開始１", Erase);
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
			case タイトル出口{
				TitleProcessStop();

				//CreateSE("決定サウンド",$TitleClickSE2);
				//SoundPlay("決定サウンド",0,1000,false);

				$Title_Exit = true;
				call_chapter nss/sys_close.nss;
				$Title_Exit = false;

				TitleProcessStart();
			}

			if(ExistSave(9998)){
				case タイトル途中{
					TitleProcessStop();

					CreateSE("決定サウンド",$TitleClickSE2);
					SoundPlay("決定サウンド",0,1000,false);
		
					SetVolume("@mbgm*", 3000, 0, NULL);
					Fade("タイトルカラー", 1000, 1000, null, true);
					WaitPlay("決定サウンド", null);
		
					$Title_Quick = true;
					call_chapter nss/sys_quickload.nss;
					$Title_Quick = false;
		
					TitleProcessStart();
				}
			}

			case タイトル開始{
				TitleProcessStop();

				CreateSE("決定サウンド",$TitleClickSE2);
				Request("決定サウンド", Lock);
				SoundPlay("決定サウンド",0,1000,false);

				SetVolume("@mbgm*", 3000, 0, NULL);
				Fade("タイトルカラー", 1000, 1000, null, true);

				$TitleSelect = 1;
			}

			case タイトル特別{
				TitleProcessStop();

				CreateSE("決定サウンド",$TitleClickSE3);
				SoundPlay("決定サウンド",0,1000,false);

				$TitleSelect = 2;
			}

			case タイトル読込{
				TitleProcessStop();

				CreateSE("決定サウンド",$TitleClickSE);
				SoundPlay("決定サウンド",0,1000,false);

				$Title_Load = true;
				call_chapter nss/sys_load.nss;
				$Title_Load = false;

				TitleProcessStart();
			}

			case タイトル設定{
				TitleProcessStop();

				CreateSE("決定サウンド",$TitleClickSE);
				SoundPlay("決定サウンド",0,1000,false);

				$Title_Config = true;
				call_chapter nss/sys_config.nss;
				$Title_Config = false;

				TitleProcessStart();
			}

			case タイトル書記{
				CreateSE("決定サウンド",$TitleClickSE);
				SoundPlay("決定サウンド",0,1000,false);

				Wait(100);

				#SYSTEM_window_full = false;
				System("OPEN:http://www.otomedream.com/temp/game/muramasamune/secret/");
			}

			//★キーダウン系
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}
		}
	}

}//============================================================================//


