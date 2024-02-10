
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031rouka2.nss_MAIN
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

scene mc02_031rouka2.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_031rouka3.nss"
//前ファイル　"mc02_031rouka1.nss"
//前ファイル　"mc02_031souko2.nss"
//前ファイル　"mc02_031souko2aa.nss"
//前ファイル　"mc02_031souko2ab.nss"
//前ファイル　"mc02_031souko2b.nss"

//●廊下２

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 10000, "Black");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg082_飛行船廊下_01a.jpg");
	OnSE("se人体_足音_鎧歩く01_L", 500);
	DrawDelete("絵色100", 1000, 100, "blind_01_00_1", true);

	Wait(100);

	SetVolume("@OnSE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　在细长的走廊中央附近。
　周围虽然看不到ＧＨＱ的军装，但能感觉到有人在附近，
而且数量很多。随时都有可能遭到袭击。

　得赶紧行动。
　是向船头方向前进，还是向船尾方向，抑或是
打开右边的门。

　怎么办？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：往船头方向／往船尾方向／往右
//●船首→●廊下１
//●船尾→●廊下３
//●右へ→●倉庫２

}

..//ジャンプ指定
//●船首→●廊下１　"mc02_031rouka1.nss"
//●船尾→●廊下３　"mc02_031rouka3.nss"
//●右へ→●倉庫２　"mc02_031souko2.nss"

//★選択肢シーン
scene mc02_031rouka2.nss_SELECT
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

	mc02_SelectIcon(5);

//■選択肢
	SetChoice03("往船头方向","往船尾方向","往右");
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
			ChoiceA03();
			mc02_SelectIcon_Delete();
//●船首→●廊下１　"mc02_031rouka1.nss"
				$GameName = "mc02_031rouka1.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
			mc02_SelectIcon_Delete();
//●船尾→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
			mc02_SelectIcon_Delete();
//●右へ→●倉庫２　"mc02_031souko2.nss"
				$GameName = "mc02_031souko2.nss";
		}
	}
}