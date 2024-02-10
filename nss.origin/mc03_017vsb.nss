
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_017vsb.nss_MAIN
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

scene mc03_017vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_017vs.nss"

//●防ぐ１
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　如何防守？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：受け止める／避ける

//◆ここで選択肢でどちらかのフラグを取得
//◆フラグ調整
//◆$１Ｒ受け_Flag = true;
//◆$１Ｒ避け_Flag = true;


//◆行動フラグに記録して→●その次

}

..//ジャンプ指定
//次ファイル　"mc03_018vs.nss"

//★選択肢シーン
scene mc03_017vsb.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm10",0,1000,true);

	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ev/ev504_村正突進.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("接住","避开");
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
//◆$１Ｒ受け_Flag = true;
				$mc03_017vs_Flag = "受け";
				$GameName = "mc03_018vs.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆$１Ｒ避け_Flag = true;
				$mc03_017vs_Flag = "避け";
				$GameName = "mc03_018vs.nss";
		}
	}
}


