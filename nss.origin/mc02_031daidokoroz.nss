
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoroz.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

	$Next_GameName = $GameName;
	$GameName = "mc02_031time.nss";

}

scene mc02_031daidokoroz.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_031daidokoro.nss"
//前ファイル　"mc02_031daidokoroaa.nss"

//●移動

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　走吧。
　船头的方向以及船尾的方向都有门。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：船首方向の扉へ／船尾方向の扉へ
//●船首→●食料庫
//●船尾→●飲食室

}

..//ジャンプ指定
//●船首→●食料庫　"mc02_031syokuryou.nss"
//●船尾→●飲食室　"mc02_031innsyoku.nss"

//★選択肢シーン
scene mc02_031daidokoroz.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ac_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(4);
//■選択肢
	SetChoice02("往船头方向的门","往船尾方向的门");
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
			mc02_SelectIcon_Delete();
//●船首→●食料庫　"mc02_031syokuryou.nss"
				$GameName = "mc02_031syokuryou.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●船尾→●飲食室　"mc02_031innsyoku.nss"
				$GameName = "mc02_031innsyoku.nss";
		}
	}
}


