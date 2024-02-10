//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031gameover.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	mc02_FlagDef();

	$PreGameName = $GameName;
	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

	if($ヒント確認 == true){
		call_scene　@->mc02_031gameoverhint01.nss
		$PreGameName = $GameName;
		$SelectGameName="@->"+$GameName+"_SELECT2";
		call_scene $SelectGameName;
		$ヒント確認 = false;
		$GameName = "mc02_031start.nss";
	}else{
		$GameName = "mz00_000.nss";
	}

	if($ヒント見ます == true){
		call_scene　@->mc02_031gameoverhint02.nss
		$ヒント見ます = false;
//		$GameName = "mc02_031start.nss";
	}else{
//		$GameName = "mz00_000.nss";

	}

}

scene mc02_031gameover.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_032time.nss"


//●ゲームオーバー
//◆ゲームオーバーＣＧ
	PrintBG("上背景", 30000);

//嶋：現状ダミーなし
//	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev009_ゲームオーバー.jpg");
//	Fade("絵背景100", 0, 1000, null, true);
	CreateColorSP("絵色100", 50, "BLACK");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateSE("SE01","se特殊_その他_滅茶苦茶な戦闘_L");
	MusicStart("SE01",500,1000,0,1000,null,true);


	FadeDelete("上背景", 500, true);
	SetVolume("@mbgm*", 2000, 0, null);

	Wait(1000);

	SetVolume("@SE*", 4000, 0, null);

	FadeDelete("絵背景100", 4000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　入侵飞行舰行动再开始吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：再開する／タイトル画面に戻る
//●再開→フラグ初期化して●探索開始
//●タイトル→タイトルへ

}


scene mc02_031gameoverhint01.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_032time.nss"


//●ゲームオーバー
//◆ゲームオーバーＣＧ
	PrintBG("上背景", 30000);

//嶋：現状ダミーなし
//	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev009_ゲームオーバー.jpg");
//	Fade("絵背景100", 0, 1000, null, true);
//	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");
//	Fade("絵背景100", 0, 1000, null, true);
	CreateColorSP("絵色100", 50, "BLACK");

	FadeDelete("上背景", 100, true);

//090409奈：ヒント追加
//●再開する選択でここへ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　能看到攻破的提示吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：ヒントを見る／ヒントを見ない
//●ヒントを見ない→フラグ初期化して●探索開始

}

scene mc02_031gameoverhint02.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_032time.nss"


//●ゲームオーバー
//◆ゲームオーバーＣＧ
	PrintBG("上背景", 30000);

//嶋：現状ダミーなし
//	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev009_ゲームオーバー.jpg");
//	Fade("絵背景100", 0, 1000, null, true);
//	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");
//	Fade("絵背景100", 0, 1000, null, true);
	CreateColorSP("絵色100", 50, "BLACK");

	FadeDelete("上背景", 100, true);

//●ヒントを見る
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
☆提示１
　回到起点极其危险，所以不能回去。
　好的话就只是浪费点时间，不好的话便是ＤＥＡＤ　ＥＮＤ。

☆提示２
　大鸟主从的常识不通用。
　会合或许需要不合常理的愚蠢行为。

☆提示３
　被巧妙藏起的东西，在偶然的情况下才能发现。
偶尔近旁引发的乱斗使房间剧烈摇动，而使其显露
出来……之类的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//フラグ初期化して→●探索開始
//090409奈：ヒント追加ここまで

	ClearFadeAll(1000, true);



}

..//ジャンプ指定
//次ファイル

//★選択肢シーン
scene mc02_031gameover.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("絵色100", 50, "BLACK");

	FadeDelete("背景０", 0, true);


//タイトル画面に戻る
//■選択肢
	SetChoice02("重新开始","放弃");
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
//◆再開する
				$ヒント確認 = true;
//				$GameName = "mc02_031start.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆タイトル画面に戻る
//				$GameCircle=0;
		}
	}
}

//★選択肢シーン
scene mc02_031gameover.nss_SELECT2
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("絵色100", 50, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("看提示","不看提示");
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
				$ヒント見ます = true;
		}
		case @選択肢２
		{
			ChoiceB02();
		}
	}
}




