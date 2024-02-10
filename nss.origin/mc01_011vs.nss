//<continuation number="340">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_011vs.nss_MAIN
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

scene mc01_011vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_010vsa.nss"
//前ファイル　"mc01_010vsb.nss"
//前ファイル　"mc01_010vsca.nss"
//前ファイル　"mc01_010vscb.nss"


//◆合流
//◆直進→反転機動へ
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 650, @0, @200, Dxl2, false);
	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　焦虑感像沙土吸水一般，慢慢渗入我心中蔓延开来。
　这样下去的话……就算最后能够取胜，也会导致无可
挽回的结果。

　即便打败了身份不明的敌人，对我而言也没有任何意
义。前往建朝寺救出亲王与署长才是我的目的。
　面前的敌人只是妨碍了这一目的的障碍物而已。

　哪怕仅是一秒钟，现在必须尽快突破。
　
　话虽如此，但已经交战了两个回合，我却仍未给敌骑
造成丝毫伤害。

　我应该——干脆抛开与这来历不明武者对峙的战场，
直接前往建朝寺吗？
　这一念头划过我的脑海。但显然，它并不是那么轻松
就能被抛开的物体。

　正如我方才所担心的，这有可能导致将敌人引到亲王
面前的后果。
　但无论如何，现在的首要任务难道不是先确认亲王的
安全吗？

　……怎么办？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：戦闘続行／戦域離脱


}

..//ジャンプ指定
//◆戦闘続行　"mc01_011vsa.nss"
//◆戦域離脱　"mc01_011vsb.nss"

//★選択肢シーン
scene mc01_011vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 0, @0, @200, Dxl2, false);
	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("战斗继续","战域脱离");
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
//◆戦闘続行　"mc01_011vsa.nss"
				$GameName = "mc01_011vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆戦域離脱　"mc01_011vsb.nss"
				$GameName = "mc01_011vsb.nss";
		}
	}
}

