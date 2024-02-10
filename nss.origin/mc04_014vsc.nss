
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vsc.nss_MAIN
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
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_014vsc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_014vs.nss"

//●逃れる
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("絵背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵背景09EX", Smoothing);
	Zoom("絵背景09EX", 0, 1100, 1100, null, true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　如果我被笼罩于妖剑之内，无论怎样都会中敌人的计。
　我首先要逃离他的刀尖。

　可是，要向哪逃？

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆選択：上／下／左／右


}

..//ジャンプ指定
//◆上　"mc04_014vsca.nss"
//◆下　"mc04_014vscb.nss"
//◆左or左　"mc04_014vscc.nss"

//★選択肢シーン
scene mc04_014vsc.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("絵背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵背景09EX", Smoothing);
	Zoom("絵背景09EX", 0, 1100, 1100, null, true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice04("上","下","左","右");
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
//◆上　"mc04_014vsca.nss"
				$GameName = "mc04_014vsca.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆下　"mc04_014vscb.nss"
				$GameName = "mc04_014vscb.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆左or左　"mc04_014vscc.nss"
				$Flag_mc04_014vsc = "左";
				$GameName = "mc04_014vscc.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆左or左　"mc04_014vscc.nss"
				$Flag_mc04_014vsc = "右";
				$GameName = "mc04_014vscc.nss";
		}
	}
}