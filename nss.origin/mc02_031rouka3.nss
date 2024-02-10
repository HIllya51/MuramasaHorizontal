
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031rouka3.nss_MAIN
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

scene mc02_031rouka3.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_031start.nss"
//前ファイル　"mc02_031rouka2.nss"
//前ファイル　"mc02_031souko1.nss"　香奈枝合流時
//前ファイル　"mc02_031tennbou.nss"
//前ファイル　"mc02_031innsyoku.nss"
//前ファイル　"mc02_031innsyokuz.nss"


//●廊下３
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg082_飛行船廊下_01a.jpg");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	OnSE("se人体_足音_鎧歩く01_L", 500);

	Wait(100);

	SetVolume("@OnSE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　脚步声在狭长的空间里回响着……
　并不是我自己的足音。这艘船上的某处正有士兵在
四处巡逻。恐怕正在搜寻不逊的入侵者。

　这里似乎离船尾很近。
　走廊延伸至船头方向。反方向有门。
左右也有门，其中右边的门应该就是通向
我跳进来的仓库。

　那么，该怎么办。没有时间犹豫了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：船首方向へ／船尾へ／右へ／左へ
//●船首→●廊下２
//●船尾→●展望室
//●右へ→●倉庫１
//●左へ→●飲食室


..//ジャンプ指定
//●船首→●廊下２　"mc02_031rouka2.nss"
//●船尾→●展望室　"mc02_031tennbou.nss"
//●右へ→●倉庫１　"mc02_031souko1.nss"
//●左へ→●飲食室　"mc02_031innsyoku.nss"

}

//★選択肢シーン
scene mc02_031rouka3.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg082_飛行船廊下_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(8);
//■選択肢
	SetChoice04("向船头方向","向船尾","往右","往左");
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
			mc02_SelectIcon_Delete();
//●船首→●廊下２　"mc02_031rouka2.nss"
				$GameName = "mc02_031rouka2.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
			mc02_SelectIcon_Delete();
//●船尾→●展望室　"mc02_031tennbou.nss"
				$GameName = "mc02_031tennbou.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
			mc02_SelectIcon_Delete();
//●右へ→●倉庫１　"mc02_031souko1.nss"
				$GameName = "mc02_031souko1.nss";
//移動確認用フラグ
				$廊下移動 = true;
				$倉庫２移動 = false;
		}
		case @選択肢４
		{
			ChoiceD04();
			mc02_SelectIcon_Delete();
//●左へ→●飲食室　"mc02_031innsyoku.nss"
				$GameName = "mc02_031innsyoku.nss";
		}
	}
}


scene mc02_031rouka3.nss_SELECT02ex
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg082_飛行船廊下_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice04("向船头方向","向船尾","往右","往左");
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
//●船首→●廊下２　"mc02_031rouka2.nss"
				$GameName = "mc02_031rouka2.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//●船尾→●展望室　"mc02_031tennbou.nss"
				$GameName = "mc02_031tennbou.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//●右へ→●倉庫１　"mc02_031souko1.nss"
				$GameName = "mc02_031souko1.nss";
//移動確認用フラグ
				$廊下移動 = true;
				$倉庫２移動 = false;
		}
		case @選択肢４
		{
			ChoiceD04();
//●左へ→●飲食室　"mc02_031innsyoku.nss"
				$GameName = "mc02_031innsyoku.nss";
		}
	}
}


