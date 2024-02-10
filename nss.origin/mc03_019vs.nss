//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_019vs.nss_MAIN
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

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆$１Ｒ総力_Flagがある場合　"mc03_019vsa.nss"
	//◆$１Ｒ加減_Flagがある場合　"mc03_019vsb.nss"
	//◆$１Ｒ受け_Flagがある場合　"mc03_019vsc.nss"
	//◆$１Ｒ避け_Fがある場合ル　"mc03_019vsd.nss"
	//$GameName = "mc00_001.nss";
	//$SelectGameName="@->"+$GameName+"_SELECT";
	//call_scene $SelectGameName;

//嶋：総力→続行、加減→終了、受け→終了、避け→続行

	if($mc03_017vs_Flag=="総力"){$GameName = "mc03_019vsa.nss";}
	else if($mc03_017vs_Flag=="加減"){$GameName = "mc03_019vsb.nss";}
	else if($mc03_017vs_Flag=="受け"){$GameName = "mc03_019vsc.nss";}
	else if($mc03_017vs_Flag=="避け"){$GameName = "mc03_019vsd.nss";}
}

scene mc03_019vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_018vsaa.nss"
//前ファイル　"mc03_018vsab.nss"
//前ファイル　"mc03_018vsb.nss"

//あきゅん「デバッグ：演出確認用フラグ」
//	$mc03_017vs_Flag="総力";
//	$mc03_017vs_Flag="加減";
//	$mc03_017vs_Flag="受け";
//	$mc03_017vs_Flag="避け";

//●開始
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ev/resize/ev502_村正抜刀片手lm.jpg");
	Rotate("絵演", 0, @0, @180, @0, null,true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……决定了。
　已经没有退路了。

　只能按照决定的道路向前突进！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵騎至近
	CreateCamera("Ｃ", 0, 0, 10000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景", 0, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	CreateTextureSP("Ｃ/絵演立絵村正", 250, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Request("Ｃ/絵演立絵村正", Smoothing);
	Zoom("Ｃ/絵演立絵村正", 0, 250, 250, null, true);
	Move("Ｃ/絵演立絵村正", 0, @932, @-10, null, true);

	CreateTextureSP("Ｃ/絵演立絵合体", 250, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘b.png");
	Request("Ｃ/絵演立絵合体", Smoothing);
	Zoom("Ｃ/絵演立絵合体", 0, 350, 350, null, true);
	Move("Ｃ/絵演立絵合体", 0, @-932, @10, null, true);

	FadeDelete("絵演", 1000, false);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("Ｃ/絵演立絵村正", 650, @-480, @0, null, false);
	Move("Ｃ/絵演立絵合体", 650, @480, @0, null, false);
	MoveCamera("Ｃ", 650, @0, @0, 550, AxlDxl, false);

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/019vs0010b33">
《用胶水粘起来吧————!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　敌骑还是单调地用力猛挥，但破坏力和速度同样是过
于巨大。这一击向我袭来。
　对于这一击，我……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("Ｃ", null);

//◆フラグ分岐
//◆１Ｒの行動から各ファイルに分岐

}

..//ジャンプ指定
//◆$１Ｒ総力_Flagがある場合
//次ファイル　"mc03_019vsa.nss"

//◆$１Ｒ加減_Flagがある場合
//次ファイル　"mc03_019vsb.nss"

//◆$１Ｒ受け_Flagがある場合
//次ファイル　"mc03_019vsc.nss"

//◆$１Ｒ避け_Flagがある場合
//次ファイル　"mc03_019vsd.nss"

//★選択肢シーン
scene mc03_019vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm10",0,1000,true);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice04("１Ｒ総力","１Ｒ加減","１Ｒ受け","１Ｒ避け");
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
//◆$１Ｒ総力_Flagがある場合　"mc03_019vsa.nss"
				$GameName = "mc03_019vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆$１Ｒ加減_Flagがある場合　"mc03_019vsb.nss"
				$GameName = "mc03_019vsb.nss";
		}
		case @選択肢２
		{
			ChoiceC04();
//◆$１Ｒ受け_Flagがある場合　"mc03_019vsc.nss"
				$GameName = "mc03_019vsc.nss";
		}
		case @選択肢２
		{
			ChoiceD04();
//◆$１Ｒ避け_Flagがある場合ル　"mc03_019vsd.nss"
				$GameName = "mc03_019vsd.nss";
		}
	}
}