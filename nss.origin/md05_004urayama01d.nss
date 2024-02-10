
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004urayama01d.nss_MAIN
{


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg055_山賊アジト_01=true;

	$md05_到着演出=false;

	//▼ルートフラグ、選択肢、次のGameName

	if($md05_２週目 == true || $md05_３週目 == true){
		call_scene @->md05_004urayama01d_01.nss;
		if($同行者==""){
			if($裏山終了_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT";}
			else{$SelectGameName="@->"+$GameName+"_SELECT";}
		}else if(!$同行者){
			if($裏山終了_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT";}
			else{$SelectGameName="@->"+$GameName+"_SELECT";}
		}else{$SelectGameName="@->"+$GameName+"_SELECT";}
		call_scene $SelectGameName;
	}else if($統自分_Flag && $統目的_Flag && $本家自分_Flag && $本家目的_Flag && $首領自分_Flag && $首領目的_Flag && $村正自分_Flag && $村正目的_Flag && $光自分_Flag && $光目的_Flag){
		$PreGameName = $GameName;
		$GameName = "md05_004start02.nss";
	}else{
		call_scene @->md05_004urayama01d_01.nss;
		if($裏山終了_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT";}
		else{$SelectGameName="@->"+$GameName+"_SELECT";}
		call_scene $SelectGameName;
	}


}

scene md05_004urayama01d.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004urayama01.nss"


//●移動する
//◆フラグ分岐

	PrintBG("上背景", 30000);

	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	StL(1000, @0, @0, "cg/st/st首領_通常_制服.png");
	FadeStL(0, true);

	Delete("上背景");


//――――――――――――――――――――――――――――――
.//◆第一段階終了フラグが全てそっている
//◆$統自分_Flag、$統目的_Flag、$本家自分_Flag、$本家目的_Flag
//◆$首領自分_Flag、$首領目的_Flag、//◆$村正自分_Flag、$村正目的_Flag

..//ジャンプ指定
//次ファイル　"md05_004start02.nss"


//――――――――――――――――――――――――――――――
.//◆フラグ未成立時

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　去哪里？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}


//◆選択：大きな屋敷／町外れ

..//ジャンプ指定
//◆大きな屋敷　"md05_004yashiki01.nss"
//◆町外れ　"md05_004hazure01.nss"



//★選択肢シーン
//フラグ未成立時
scene md05_004urayama01d.nss_SELECT
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
	SetChoice02("大宅子","郊外");
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
//◆大きな屋敷　"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆町外れ　"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}



