
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031innsyokuz.nss_MAIN
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

scene mc02_031innsyokuz.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031innsyoku.nss"
//前ファイル　"mc02_031innsyokua.nss"
//前ファイル　"mc02_031innsyokub.nss"
//前ファイル　"mc02_031innsyokuc.nss"
//前ファイル　"mc02_031innsyokud.nss"


//●何も渡さない

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　浪费时间。
　赶紧行动。

  那么，要尝试打开船头方向的门吗？
　还是从右边的门回到走廊去……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：往船头方向／回到走廊
//●船首→●台所
//●廊下→●廊下３
..//ジャンプ指定
//●船首→●台所　"mc02_031daidokoro.nss"
//●廊下→●廊下３　"mc02_031rouka3.nss"


}



//★選択肢シーン
scene mc02_031innsyokuz.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);
//■選択肢
	SetChoice02("往船头方向","回到走廊");
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
//●船首→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●廊下→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}