//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg086_病室_01a=true;
	#bg097_堀越御所内光の部屋_03a=true;
	#ev128_病床の光_g01=true;


//	$統目的２_Flag = true;
//	$統光_Flag = true;
//	$村正目的２_Flag = true;
//	$村正光_Flag = true;
//	$首領目的２_Flag = true;
//	$首領光_Flag = true;
//	$本家目的２_Flag = true;
//	$本家光_Flag = true;
//	$md05_３週目 = true;
//	$同行者 = "統";
//	$同行者 = "本家";
//	$同行者 = "村正";
	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	if($md05_３週目 == true){
	//嶋：同行者がいない
		if($同行者 == ""){
			$SelectGameName="@->"+$GameName+"_SELECT03";
			call_scene $SelectGameName;
		}else if(!$同行者){
	//嶋：同行者がいない
			$SelectGameName="@->"+$GameName+"_SELECT03";
			call_scene $SelectGameName;
		}else{
	//嶋：同行者がいる
			$SelectGameName="@->"+$GameName+"_SELECT04";
			call_scene $SelectGameName;
		}
	}else if($統目的２_Flag == true && $統光_Flag == true && $村正目的２_Flag == true && $村正光_Flag == true && $首領目的２_Flag == true && $首領光_Flag == true && $本家目的２_Flag == true && $本家光_Flag == true){
		$SelectGameName="@->"+$GameName+"_SELECT02";
		call_scene $SelectGameName;
	}else{
		$SelectGameName="@->"+$GameName+"_SELECT01";
		call_scene $SelectGameName;
	}



}

scene md05_004byoushitsu01.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_004hazure01d.nss"
//前ファイル　"md05_004saidenn01d.nss"
//前ファイル　"md05_004yashiki01d.nss"　同行者いる時のみ

//●病室
//◆フラグ分岐
//◆病床の光
	SoundPlay("@mbgm30", 0, 1000, true);

	if($md05_到着演出==ture){

	PrintBG("上背景", 30000);

	CreateTextureSP("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	Delete("上背景");

	}else{

	$md05_到着演出=ture;

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 1000, "blind_01_00_1", true);
	Wait(1000);
	DrawDelete("絵色黒", 1000, 1000, "blind_01_00_1", true);

	}

	PrintBG("上背景", 30000);

	if($byoushitsu01first){

		CreateTextureSP("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");

		FadeDelete("上背景",300,true);

	}else{

		WaitKey(1000);
	
		CreateTextureSP("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");

		FadeDelete("上背景", 1000, true);

	}

	$byoushitsu01first = true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　踏入安静的房间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――
.//◆フラグ未成立
//◆選択：見る／話す／訊く／移動する


..//ジャンプ指定
//◆見る　"md05_004byoushitsu01a.nss"
//◆話す　"md05_004byoushitsu01b.nss"
//◆訊く　"md05_004byoushitsu01c.nss"
//◆移動する　"md05_004byoushitsu01d.nss"



//――――――――――――――――――――――――――――――
.//◆フラグ成立時
//◆選択：見る／話す／目的を果たす／移動する
//◆※「目的～」は全員から「目的の事」「光の事」を
//◆訊き終えるまで出現しない

//◆以下必要フラグ
//◆$統目的２_Flag、$統光_Flag、$村正目的２_Flag、$村正光_Flag
//◆$首領目的２_Flag、$首領光_Flag、$本家目的２_Flag、$本家光_Flag


..//ジャンプ指定
//◆見る　"md05_004byoushitsu01a.nss"
//◆話す　"md05_004byoushitsu01b.nss"
//◆目的を果たす　"md05_004byoushitsu02c.nss"
//◆移動する　"md05_004byoushitsu01d.nss"



//――――――――――――――――――――――――――――――
.//◆第三段階
//◆選択：見る／話す／目的を果たす／移動する

//◆※同行者がいない場合「目的～」は出現せず
//◆※同行者がいる場合「移動する」は出現せず

//◆$本家同行_Flag、$統同行_Flag、$村正同行_Flag


//◆見る　"md05_004byoushitsu01a.nss"
//◆話す　"md05_004byoushitsu01b.nss"
//◆目的を果たす　"md05_004byoushitsu03c.nss"
//◆移動する　"md05_004byoushitsu01d.nss"



}



//★選択肢シーン
//◆フラグ未成立時
scene md05_004byoushitsu01.nss_SELECT01
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureSP("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice04("观察","说话","询问","移动");
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
//◆見る　"md05_004byoushitsu01a.nss"
				$GameName = "md05_004byoushitsu01a.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆話す　"md05_004byoushitsu01b.nss"
				$GameName = "md05_004byoushitsu01b.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆訊く　"md05_004byoushitsu01c.nss"
				$GameName = "md05_004byoushitsu01c.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆移動する　"md05_004byoushitsu01d.nss"
				$GameName = "md05_004byoushitsu01d.nss";
		}
	}
}

.//◆フラグ成立時
//◆$統目的２_Flag、$統光_Flag、$村正目的２_Flag、$村正光_Flag
//◆$首領目的２_Flag、$首領光_Flag、$本家目的２_Flag、$本家光_Flag
scene md05_004byoushitsu01.nss_SELECT02
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureSP("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice04("观察","说话","达成目的","移动");
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
//◆見る　"md05_004byoushitsu01a.nss"
				$GameName = "md05_004byoushitsu01a.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆話す　"md05_004byoushitsu01b.nss"
				$GameName = "md05_004byoushitsu01b.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆目的を果たす　"md05_004byoushitsu02c.nss"
				$GameName = "md05_004byoushitsu02c.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆移動する　"md05_004byoushitsu01d.nss"
				$GameName = "md05_004byoushitsu01d.nss";
		}
	}
}

.//◆第三段階
//◆※同行者がいない場合「目的～」は出現せず
scene md05_004byoushitsu01.nss_SELECT03
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureSP("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice03("观察","说话","移动");
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
//◆見る　"md05_004byoushitsu01a.nss"
				$GameName = "md05_004byoushitsu01a.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆話す　"md05_004byoushitsu01b.nss"
				$GameName = "md05_004byoushitsu01b.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆移動する　"md05_004byoushitsu01d.nss"
				$GameName = "md05_004byoushitsu01d.nss";
		}
	}
}


.//◆第三段階
//◆※同行者がいない場合「目的～」は出現せず
scene md05_004byoushitsu01.nss_SELECT04
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureSP("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice03("观察","说话","达成目的");
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
//◆見る　"md05_004byoushitsu01a.nss"
				$GameName = "md05_004byoushitsu01a.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆話す　"md05_004byoushitsu01b.nss"
				$GameName = "md05_004byoushitsu01b.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆目的を果たす　"md05_004byoushitsu03c.nss"
				$GameName = "md05_004byoushitsu03c.nss";
		}
	}
}

