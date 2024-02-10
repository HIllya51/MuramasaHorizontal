//<continuation number="130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004saidenn01.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg054_湊斗家祭殿a_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	if($md05_３週目 == true){
			$SelectGameName="@->"+$GameName+"_SELECT02";
			call_scene $SelectGameName;
	}else{
			$SelectGameName="@->"+$GameName+"_SELECT01";
			call_scene $SelectGameName;
	}


}

scene md05_004saidenn01.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004hazure01d.nss"
//前ファイル　"md05_004byoushitsu01d.nss"

//●祭殿
//◆フラグ分岐

//◆祭殿＋村正（蜘蛛）

	SoundPlay("@mbgm30", 0, 1000, true);

	if($md05_到着演出==ture){

	PrintBG("上背景", 30000);

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);

	Delete("上背景");

	}else{

	$md05_到着演出=ture;

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);

	DrawDelete("上背景", 1000, 1000, "blind_01_00_1", true);
	Wait(1000);
	DrawDelete("絵色黒", 1000, 1000, "blind_01_00_1", true);

	}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　进入祭殿。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――
.//◆フラグ未成立
//◆選択：見る／話す／訊く／移動する

..//ジャンプ指定
//◆見る　"md05_004saidenn01a.nss"
//◆話す　"md05_004saidenn01b.nss"
//◆訊く　"md05_004saidenn01c.nss"
//◆移動する　"md05_004saidenn01d.nss"


//――――――――――――――――――――――――――――――
.//◆第三段階
//◆選択：見る／話す／頼む／移動する
//◆※同行者がいる場合は「頼む」を「別れる」に変更

..//ジャンプ指定
//◆見る　"md05_004saidenn01a.nss"
//◆話す　"md05_004saidenn01b.nss"
//◆頼むor別れる　"md05_004saidenn03c.nss"
//◆移動する　"md05_004saidenn01d.nss"


}



//★選択肢シーン
//フラグ未成立時
scene md05_004saidenn01.nss_SELECT01
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);
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
//◆見る　"md05_004saidenn01a.nss"
				$GameName = "md05_004saidenn01a.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆話す　"md05_004saidenn01b.nss"
				$GameName = "md05_004saidenn01b.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆訊く　"md05_004saidenn01c.nss"
				$GameName = "md05_004saidenn01c.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆移動する　"md05_004saidenn01d.nss"
				$GameName = "md05_004saidenn01d.nss";
		}
	}
}


//◆見る　"md05_004saidenn01a.nss"
//◆話す　"md05_004saidenn01b.nss"
//◆頼むor別れる　"md05_004saidenn03c.nss"
//◆移動する　"md05_004saidenn01d.nss"
scene md05_004saidenn01.nss_SELECT02
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);
	FadeDelete("背景０", 0, true);

	if($同行者==""){$md05_saide = "请求";}
	else if(!$同行者){$md05_saide = "请求";}
	else{$md05_saide = "分别";}

//■選択肢
	SetChoice04("观察","说话",$md05_saide,"移动");
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
//◆見る　"md05_004saidenn01a.nss"
				$GameName = "md05_004saidenn01a.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆話す　"md05_004saidenn01b.nss"
				$GameName = "md05_004saidenn01b.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆頼むor別れる　"md05_004saidenn03c.nss"
				$GameName = "md05_004saidenn03c.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆移動する　"md05_004saidenn01d.nss"
				$GameName = "md05_004saidenn01d.nss";
		}
	}
}

