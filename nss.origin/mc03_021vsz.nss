
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

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
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
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_019vsb.nss"
//前ファイル　"mc03_019vsc.nss"
//前ファイル　"mc03_020vsab.nss"
//前ファイル　"mc03_020vsad.nss"
//前ファイル　"mc03_020vsba.nss"
//前ファイル　"mc03_020vsbbb.nss"
//前ファイル　"mc03_021vs.nss"
//前ファイル　"mc03_023vsb.nss"　合ってるか要確認

//●ゲームオーバー
//◆ゲームオーバーＣＧ
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 10, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　从战斗的开端重新挑战吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：再挑戦する／タイトルに戻る
//◆再挑戦→関係フラグ初期化して●戦闘開始

//◆$１Ｒ加減_Flag = false;
//◆$１Ｒ受け_Flag = false;
//◆$１Ｒ総力_Flag = false;
//◆$１Ｒ避け_Flag = false;
//◆$２Ｒ加減_Flag = false;
//◆$２Ｒ受け_Flag = false;
//◆$２Ｒ総力_Flag = false;
//◆$２Ｒ避け_Flag = false;
//◆$離西_Flag = false;
//◆$離東_Flag = false;
//◆$離南_Flag = false;
//◆$離北_Flag = false;

}

..//ジャンプ指定
//次ファイル　"mc03_017vs.nss"

//★選択肢シーン
scene mc03_021vsz.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	CreateColorSP("絵色黒", 10, "#000000");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("再次挑战","放弃");
	select
	{
		//カーソル用
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
	
		case @選択肢１
		{
			ChoiceA02();
//◆再挑戦する　"mc03_017vs.nss"
			$mc03_017vs_Flag="";
			$mc03_018vs_BSFlag="";
			$mc03_018vs_R2Flag="";
			$GameName = "mc03_017vs.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆タイトルに戻る
			$GameName = "mz00_000.nss";
		}
	}
}