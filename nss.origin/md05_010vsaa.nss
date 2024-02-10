
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_010vsaa.nss_MAIN
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

scene md05_010vsaa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_010vsa.nss"


//◆選択：状況把握する／眠る
//◆眠る→ゲームオーバー処理

//◆状況把握するとテキスト表示後、選択へ戻る
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 100, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――
.//●状況１
//◆$景明石化_Flag == 1;

	if($景明石化_Flag == 1){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　什么都看不见。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	}else if($景明石化_Flag == 2){

//――――――――――――――――――――――――――――――
.//●状況２
//◆$景明石化_Flag == 2;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　身体完全动不了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	}else if($景明石化_Flag == 3){

//――――――――――――――――――――――――――――――
.//●状況３
//◆$景明石化_Flag == 3;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……………………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	}else if($景明石化_Flag == 4){

//――――――――――――――――――――――――――――――
.//●状況４
//◆$景明石化_Flag == 4;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　恐怕……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	}else if($景明石化_Flag == 5){

//――――――――――――――――――――――――――――――
.//●状況５
//◆$景明石化_Flag == 5;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
“神”的空间扭曲……
　把作为遮蔽物的岩石和我<RUBY text="····">合为一体</RUBY>了……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	}else if($景明石化_Flag == 6){

//――――――――――――――――――――――――――――――
.//●状況６
//◆$景明石化_Flag == 6;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……这种结果……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	}else if($景明石化_Flag == 7){

//――――――――――――――――――――――――――――――
.//●状況７
//◆$景明石化_Flag == 7;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……我，现在……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	}else if($景明石化_Flag >= 8){

//――――――――――――――――――――――――――――――
.//●状況８
//◆$景明石化_Flag >= 8;

//◆以降、テキスト変わらず

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　…………在石头里…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	}

}

..//ジャンプ指定
//次ファイル



//★選択肢シーン
scene md05_010vsaa.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("絵色黒", 10, "#000000");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("把握状况","睡觉");
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
//◆状況把握する
//◆フラグ調整
				$景明石化_Flag++;
				$GameName = "md05_010vsaa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆眠る
				$GameName = "mz00_000.nss";
		}
	}
}