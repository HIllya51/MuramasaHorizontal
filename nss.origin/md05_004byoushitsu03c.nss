
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu03c.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg086_病室_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_004byoushitsu03c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_004byoushitsu01.nss"


//●目的を果たす
//◆立ち絵：六波羅軍装の景明（洗脳中）抜刀

	SoundPlay("@mbgm30", 0, 1000, true);

	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　你必须杀掉凑斗光。
　但是，凑斗景明无法杀死凑斗光。

　所以借助同行者的力量吧。
　
　你希望同行者做什么呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：守ってもらう／殺してもらう

}

..//ジャンプ指定
//◆守ってもらう　"md05_004byoushitsu03ca.nss"
//◆殺してもらう　"md05_004byoushitsu03cb.nss"



//★選択肢シーン
scene md05_004byoushitsu03c.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 5010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, -180, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -30, InBottom, "cg/st/st景明汚染_戦闘_制服.png");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("为我守护她","为我杀掉她");
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
//◆守ってもらう　"md05_004byoushitsu03ca.nss"
				$GameName = "md05_004byoushitsu03ca.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆殺してもらう　"md05_004byoushitsu03cb.nss"
				$GameName = "md05_004byoushitsu03cb.nss";
		}
	}
}

