
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031syokuryou.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg081_飛行船船室Ba_01b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc02_031syokuryou.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031daidokoroz.nss"


//●食料庫

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg081_飛行船船室Ba_01b.jpg");
	OnSE("se日常_建物_扉開く01", 1000);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　食品库……更准确地说，是厨房用的仓库才对。
　装满水果的木箱、排放着料酒的橱柜、用带子捆扎
在一起的餐具、被各种用具塞满的袋子等等映入我的
眼帘。

　毋庸置疑，并没有炸弹之类的东西……
　
　怎么做。要拿什么？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：洋梨を貰う／料理酒を貰う／ガスボンベを貰う／何も取らない

}

..//ジャンプ指定
//◆洋梨を貰う　"mc02_031syokuryoua.nss"
//◆料理酒を貰う　"mc02_031syokuryoub.nss"
//◆ガスボンベを貰う　"mc02_031syokuryouc.nss"
//◆何も取らない　"mc02_031syokuryouz.nss"

//★選択肢シーン
scene mc02_031syokuryou.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg081_飛行船船室Ba_01b.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice04("拿洋梨","拿料酒","拿液化气罐","什么都不拿");
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
			ChoiceA04();
//◆洋梨を貰う　"mc02_031syokuryoua.nss"
				$GameName = "mc02_031syokuryoua.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆料理酒を貰う　"mc02_031syokuryoub.nss"
				$GameName = "mc02_031syokuryoub.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆ガスボンベを貰う　"mc02_031syokuryouc.nss"
				$GameName = "mc02_031syokuryouc.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆何も取らない　"mc02_031syokuryouz.nss"
				$GameName = "mc02_031syokuryouz.nss";
		}
	}
}


