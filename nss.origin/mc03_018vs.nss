
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_018vs.nss_MAIN
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

scene mc03_018vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_017vsa.nss"
//前ファイル　"mc03_017vsb.nss"

//●その次
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateTextureSP("絵演上", 5010, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateColorSP("絵色黒", 5005, "#000000");
	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ev/resize/ev502_村正抜刀片手lm.jpg");
	Rotate("絵演", 0, @0, @180, @0, null,true);
	Delete("上背景");

	FadeDelete("絵演上", 1000, true);
	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　那么，接下来。
　基本方针是……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：交戦続行／ひとまず離脱

}

..//ジャンプ指定
//◆交戦続行　"mc03_018vsa.nss"
//◆ひとまず離脱　"mc03_018vsb.nss"

//★選択肢シーン
scene mc03_018vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm10",0,1000,true);

	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ev/resize/ev502_村正抜刀片手lm.jpg");
	Rotate("絵演", 0, @0, @180, @0, null,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("继续交战","暂行逃脱");
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
//◆交戦続行　"mc03_018vsa.nss"
				$mc03_018vs_BSFlag = "交戦";
				$GameName = "mc03_018vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆ひとまず離脱　"mc03_018vsb.nss"
				$mc03_018vs_BSFlag = "離脱";
				$GameName = "mc03_018vsb.nss";
		}
	}
}



