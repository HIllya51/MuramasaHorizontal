
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004urayama01c.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg055_山賊アジト_01=true;

//	$md05_２週目 = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($md05_２週目 == true){
		$SelectGameName="@->"+$GameName+"_SELECT02";
		call_scene $SelectGameName;
	}else{
		$SelectGameName="@->"+$GameName+"_SELECT01";
		call_scene $SelectGameName;
	}


	$PreGameName = $GameName;
	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_004urayama01c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004urayama01.nss"

	PrintBG("上背景", 30000);

	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0, "cg/st/st首領_通常_制服.png");
	FadeStL(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("上背景");


//●訊く
//◆フラグ分岐

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　问什么？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――
.//◆第一段階
//◆選択：軍装の女の事／自分の事／目的の事


..//ジャンプ指定
//◆軍装の女の事　"md05_004urayama01ca.nss"
//◆自分の事　"md05_004urayama01cb.nss"
//◆目的の事　"md05_004urayama01cc.nss"


//――――――――――――――――――――――――――――――
.//◆第二段階
//◆選択：目的の事／光の事


..//ジャンプ指定
//◆目的の事　"md05_004urayama01cc.nss"
//◆光の事　"md05_004urayama02ca.nss"

}



//★選択肢シーン
//第一段階時
scene md05_004urayama01c.nss_SELECT01
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0, "cg/st/st首領_通常_制服.png");
	FadeStL(0, true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice03("关于军人装扮的女性的事","关于自己的事","关于目的的事");
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
//◆軍装の女の事　"md05_004urayama01ca.nss"
				$GameName = "md05_004urayama01ca.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆自分の事　"md05_004urayama01cb.nss"
				$GameName = "md05_004urayama01cb.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆目的の事　"md05_004urayama01cc.nss"
				$GameName = "md05_004urayama01cc.nss";
		}
	}
}


//★選択肢シーン
//第一段階時
scene md05_004urayama01c.nss_SELECT02
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0, "cg/st/st首領_通常_制服.png");
	FadeStL(0, true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("关于目的的事","关于光的事");
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
//◆目的の事　"md05_004urayama01cc.nss"
				$GameName = "md05_004urayama01cc.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆光の事　"md05_004urayama02ca.nss"
				$GameName = "md05_004urayama02ca.nss";
		}
	}
}





