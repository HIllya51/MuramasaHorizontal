$Revision: 35 $

#include "nss/function.nss"
#include "nss/function_move.nss"
#include "nss/function_select.nss"
#include "nss/function_cockpit.nss"
#include "nss/function_quick.nss"

//"nss/function_stand.nss"【function.nss内でinclude】
//"nss/function_process.nss"【function.nss内でinclude】

//嶋：好感度画面用
#include "nss/sys_hmode.nss"

//============================================================================//
..//■ゲームモード判別■
//============================================================================//
chapter main
{
	if($GameStart != 1)
	{
		$GameName = 0;
		$GameContiune = 1;
		Reset();
	}

	if(!#TitleConquest){
		//◆超速対応だお
		SystemConquest();
		Save(0);
		#TitleConquest=true;
	}

	SelectStoryMode();
}
//=============================================================================//


//============================================================================//
..//■ゲーム開始■
//============================================================================//
function SelectStoryMode()
{
	if($TitleSelect==3){
		ClearScore(LOCAL);
		ClearBacklog();
		DeleteSaveFile(9999);

		#一章クリア = true;
		#voice_on_銀星号=true;
		#voice_on_その他男声=true;
		#voice_on_その他女声=true;
		#voice_on_新田雄飛=true;
		#voice_on_来栖野小夏=true;
		#voice_on_稲城忠保=true;
		#voice_on_鈴川令法=true;
		#voice_on_大鳥香奈枝=true;
		#voice_on_永倉さよ=true;
		#voice_on_湊斗景明=true;
		#voice_on_綾弥一条=true;
		#voice_on_雪車町一蔵=true;
		#voice_on_真改=true;
		#voice_on_村正=true;

		$TITLE_NOW="　";
		$GameName = "ma02_001.nss";
	}else if($GameName == 0){
		ClearScore(LOCAL);
		ClearBacklog();
		DeleteSaveFile(9999);

		$TITLE_NOW=" ————　序章　———— ";
		$GameName = "ma00_000.nss";
	}



	//★「ClearScore」で消されたスクリプト的なもの再定義
	$BOX_Init = true;
	$BGM_Init = true;
	$Logo = true;
	$GameStart = 1;

	//★：ゲームスピード
	#SYSTEM_play_speed = #play_speed_plus;

	//★：システム変数系の初期化
	$PLACE_title = false;

	//●時間管理「プレイ時間」
	#START_TIME = Time();
	$PLAY_TIME = 0;

	$SYSTEM_menu_lock=false;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_erase_lock=false;
	$SYSTEM_backlog_lock=false;

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_text_auto_lock=true;

	$SYSTEM_text_erase=false;
	$SYSTEM_text_waitkey=true;

	//ConfigCharacterVoice();

	//◆ショートカットメニュー
	QuickSet();

	$GameCircle=true;
	while($GameCircle){
		$ConGameName = "nss/" + $GameName;
		$AllRead = Conquest($ConGameName,$GameName,null);

		$GameName2 = $GameName + "_MAIN";
		$hoge="nss/" + $GameName + "->" + $GameName2;
//		Conquest($ConGameName,$GameName2,true);
		call_scene $hoge;
	}

	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//★ギャラリー確認用
	$CgArray=false;

	//◆ショートカットメニュー停止
	QuickStop();
}
















function SelectEndMode()
{
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_text_auto_lock=true;

	#SYSTEM_window_full_lock=false;
	$SYSTEM_backselect_lock=true;
	$SYSTEM_text_auto_lock=true;
	$SYSTEM_load_lock=true;
	$SYSTEM_save_lock=true;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_erase_lock=false;
	$SYSTEM_backlog_lock=true;
	$SYSTEM_menu_lock=false;

	$SYSTEM_text_erase=false;
	$SYSTEM_text_waitkey=true;

	//タイトルに戻る（手動）
	//右クリック（手動）
	//設定（手動）

	//※主人公音声全開放フラグ
	if(#d1_true_end){
		$VoiceOnAll=true;
	}
	//ConfigCharacterVoice();
	//VoiceReset();

	$GameCircle=1;
	while($GameCircle==1)
	{
		$ConGameName = "nss/" + $GameName;
		$AllRead = Conquest($ConGameName,$GameName,null);

		$GameName2 = $GameName + "_MAIN";
		$hoge="nss/" + $GameName + "->" + $GameName2;
		Conquest($ConGameName,$GameName2,true);
		call_scene $hoge;
	}
}



