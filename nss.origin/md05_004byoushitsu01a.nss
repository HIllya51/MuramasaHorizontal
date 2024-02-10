
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01a.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev128_病床の光_g01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_004byoushitsu01a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004byoushitsu01.nss"


	PrintBG("上背景", 30000);

//	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
//	FadeBG(0,true);

	CreateTextureEX("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("絵hikaru", 0, 1000, null, true);
	
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");

//●見る


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　看什么？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：部屋の中／少女

..//ジャンプ指定
//◆部屋の中　"md05_004byoushitsu01aa.nss"
//◆少女　"md05_004byoushitsu01ab.nss"

}



//★選択肢シーン
scene md05_004byoushitsu01a.nss_SELECT
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
	SetChoice02("房间中","少女");
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
//◆部屋の中　"md05_004byoushitsu01aa.nss"
				$GameName = "md05_004byoushitsu01aa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆少女　"md05_004byoushitsu01ab.nss"
				$GameName = "md05_004byoushitsu01ab.nss";
		}
	}
}

