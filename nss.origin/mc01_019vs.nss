//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_019vs.nss_MAIN
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

scene mc01_019vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_018vs.nss"
//前ファイル　"mc01_018vsa.nss"

	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	OnBG(100,"bg002_空a_01.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵演合体", 100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 125, 125, null, true);
	Move("絵演合体", 0, @-256, @-60, null, false);
	FadeDelete("上背景", 500, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：上段に構え、下へ斬り抜ける／下段に構え、上へ斬り抜ける


}

..//ジャンプ指定
//◆上段に構え、下へ斬り抜ける　"mc01_019vsa.nss"
//◆下段に構え、上へ斬り抜ける　"mc01_019vsb.nss"

//★選択肢シーン
scene mc01_019vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm10",0,1000,true);

	OnBG(100,"bg002_空a_01.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵演合体", 100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 125, 125, null, true);
	Move("絵演合体", 0, @-256, @-60, null, false);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("摆出上段姿势，朝下斩击","摆出下段姿势，朝上斩击");
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
//◆上段に構え、下へ斬り抜ける　"mc01_019vsa.nss"
				$GameName = "mc01_019vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆下段に構え、上へ斬り抜ける　"mc01_019vsb.nss"
				$GameName = "mc01_019vsb.nss";
		}
	}
}

