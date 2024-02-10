//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_022vs.nss_MAIN
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
	//◆"mc01_021vs.nss"で陰義を使用した場合　"mc01_022vsa.nss"
	//次ファイル　"mc01_022vsb.nss"
	//$GameName = "mc00_001.nss";
	//$SelectGameName="@->"+$GameName+"_SELECT";
	//call_scene $SelectGameName;

	if($mc01_021vsb_陰義使用 == true){
		$GameName = "mc01_022vsa.nss";
	}else{
		$GameName = "mc01_022vsb.nss";
	}

}

scene mc01_022vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vsaba.nss"
//前ファイル　"mc01_021vsba.nss"
//前ファイル　"mc01_021vsbb.nss"

	//$mc01_021vsb_陰義使用 = true;

//●生存
//◆離脱
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵空背景上", 110, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	CreateTextureSP("絵空背景", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵暗転", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　现在开始重新摆好架势。
　状况没有任何好转，但……挺过一击之后，
至少掌握了能转变战斗趋势的突破口。

　抓住这个突破口，接下来——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆大きくバランス崩す
//◆まずそーな感じ
	CreateSE("SE01","se人体_血_吐血01");
	CreateSE("SE01a","se人体_体_心臓の音02");
	CreateColorEXmul("絵色毒", 17010, "#CC0000");
	CreateTextureEXover("絵演効果", 17000, Center, Middle, "cg/data/worm_01_00_0.png");
	DrawTransition("絵演効果", 0, 0, 500, 500, null, "cg/data/zoom_01_00_0.png", true);

	MusicStart("SE01",0,1000,0,500,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵色毒", 0, 750, null, true);
	Fade("絵演効果", 0, 750, null, true);

	Zoom("絵空背景上", 0, 1250, 1250, null, true);
	Fade("絵空背景上", 0, 1000, null, true);
	Shake("絵空背景上", 900, 0, 30, 0, 0, 1000, Dxl2, false);

	Wait(10);

	Zoom("絵空背景上", 900, 1000, 1000, null, false);
	FadeDelete("絵空背景上", 900, false);
	FadeDelete("絵色毒", 600, false);
	DrawDelete("絵演効果", 600, 100, "worm_01_00_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/022vs0010a01">
《啊……主君!?》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/022vs0020a00">
「……呃……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

}

..//ジャンプ指定
//◆小分岐
//◆"mc01_021vs.nss"で陰義を使用した場合　"mc01_022vsa.nss"
//次ファイル　"mc01_022vsb.nss"

//★選択肢シーン
scene mc01_022vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("陰義を使用した","陰義を使用していない");
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
//◆"mc01_021vs.nss"で陰義を使用した場合　"mc01_022vsa.nss"
				$GameName = "mc01_022vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//次ファイル　"mc01_022vsb.nss"
				$GameName = "mc01_022vsb.nss";
		}
	}
}