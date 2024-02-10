//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_025gameover.nss_MAIN
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

scene md05_025gameover.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_025.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 100, "BLACK");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");

	CreateSE("SEL01","se特殊_雰囲気_おどろおどろ_L");
	MusicStart("SEL01",500,500,0,1000,null,true);

	FadeDelete("上背景",500,true);

//●誤答

	SetFwC("cg/fw/fw二世村正_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/025ga0010a15">
《不对……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/025ga0020a01">
《————————》

{	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/025ga0030a15">
《你的末路理应在此，女人！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆重力に潰される。ずがーん。
//◆ゲームオーバー

	SetVolume("SEL01", 3000, 1000, null);

	CreateColorEX("絵色100", 15000, "Black");

	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 3, 500, 100, false);

	Zoom("絵背景100", 4000, 2000, 2000, null, false);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 3000, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	SetVolume("SEL01", 3000, 0, null);

	WaitKey(1000);

	SetVolume("SEL01", 500, 0, null);

	CreateSE("SE01","se戦闘_破壊_銀星号破壊");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(3000);
	SetVolume("SE01", 1000, 0, null);

	ClearFadeAll(1000, true);
	CreateColorSP("絵色100", 1500, "Black");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　再次挑战吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：する／しない
//◆しない→タイトルへ

}

..//ジャンプ指定
//する　"md05_025gameovera.nss"
//しない



//★選択肢シーン
scene md05_025gameover.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("黒", 100, "BLACK");


	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("挑战","不挑战");
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
//する　"md05_025gameovera.nss"
				if($立方陣簡易フラグ==true){$GameName = "md05_025.nss";}
				else{$GameName = "md05_025gameovera.nss";}
		}
		case @選択肢２
		{
			ChoiceB02();
//しない
			$GameName = "mz00_000.nss";
		}
	}
}



