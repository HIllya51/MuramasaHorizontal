
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_010vsc.nss_MAIN
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

scene mc01_010vsc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_010vs.nss"

//●迎え撃つ
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演", 18000, Center, -40, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	CreateTextureSP("絵演合体", 17100, Center, -480, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 500, 500, null, true);
	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	Delete("上背景");
	Move("絵演合体", 450, @0, -510, DxlAuto, false);
	FadeDelete("絵演", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　敌人犹如外行般将斧头高举过顶。
　与之相对地，我——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆選択：上段／下段


}

..//ジャンプ指定
//◆上段　"mc01_010vsca.nss"
//◆下段　"mc01_010vscb.nss"

//★選択肢シーン
scene mc01_010vsc.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("絵演合体", 17100, Center, -510, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 500, 500, null, true);
	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("上段","下段");
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
//◆上段　"mc01_010vsca.nss"
				$GameName = "mc01_010vsca.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆下段　"mc01_010vscb.nss"
				$GameName = "mc01_010vscb.nss";
		}
	}
}


