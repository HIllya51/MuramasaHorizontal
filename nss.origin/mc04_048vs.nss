//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_048vs.nss_MAIN
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

	//CP_AllDelete();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_02";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	$GameName = "mc04_049vs.nss";

}

scene mc04_048vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);


..//ジャンプ指定
//前ファイル　"mc04_047vs.nss"


//◆香奈枝サイド

	CreateTextureSP("絵背景50", 100, Center, 0, "cg/bg/bg001_空a_01.jpg");
	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3dバロウズ_騎航_通常.png");
	Request("絵狸", Smoothing);
//	Rotate("絵狸", 0, @0, @0, @-50, null,true);
	Zoom("絵狸", 0, 1000, 1000, null, true);
	Move("絵狸", 0, @0, @-1300, null, true);
	SetBlur("絵狸", true, 1, 200, 100, false);
	Fade("絵狸", 0, 1000, null, true);

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, @90, null,true);
	Fade("絵効果雨", 0, 300, null, true);

	Shake_Loop("@絵狸","shake02");

	CreateSE("SE01","se戦闘_動作_鎧_速度失速01");
	CreateSE("SE10","se戦闘_動作_空突進05");

	FadeDelete("上背景", 1000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
//	Move("絵背景50", 30000, @0, @-1500, Dxl2, false);
	Move("絵狸", 2000, @0, @1300, Dxl2, true);
	FadeF4("絵狸", 0, 1000, 60000, 0, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　为迎击深红敌骑，继续飞行——
　她意识到。

　已经没有余力。
　光是飞行就已耗尽全力。

　已经没有，能分给攻击的力量。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/048vs0010a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　这样就结束了吗。
　自己要输了吗。

　是吧。
　这样也好。

　没办法。
　因为已经竭尽所能了……

　大鸟香奈枝败退，凑斗景明存活下来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/048vs0020a03">
（这样也好）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　是的。

　那么，做决定吧。
　应该怎么做。

　大鸟香奈枝在临死之前，应该做什么呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE02","se特殊_コックピット_起動音04");
	CreateSE("SE03","se戦闘_動作_空突進08");

	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("絵狸", 500, @-5, @20, Dxl2, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 300, 100, "cg/ef/ef003_汎用移動.jpg", false);
//	Zoom("絵狸", 1000, 500, 500, Axl3, false);
	Fade("絵効果雨", 1000, 0, null, false);
	Move("絵狸", 1000, @1000, @-100, Axl3, true);
	Delete("絵効果雨");

}

//◆選択：殺す／殺す／殺す／殺す／殺す
//◆どれでも同じ
//★選択肢シーン
scene mc04_048vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateTextureSP("絵背景50", 100, Center, 0, "cg/bg/bg001_空a_01.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice05("杀","杀","杀","杀","杀");
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
			ChoiceA05();
		}
		case @選択肢２
		{
			ChoiceB05();
		}
		case @選択肢３
		{
			ChoiceC05();
		}
		case @選択肢４
		{
			ChoiceD05();
		}
		case @選択肢５
		{
			ChoiceE05();
		}
	}
}

scene mc04_048vs.nss_02
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintGO("背景０", 30000);

	SoundPlay("@mbgm13",0,1000,true);


//◆バロウズ射撃体勢
	CreateTextureEX("kana", 18100, 0, Middle, "cg/ev/resize/ev205_矢を撃ち放つバロウズ_al.jpg");
	SetBlur("kana", true, 1, 300, 100, false);
	Move("kana", 0, @-200, @-200, null, true);
	CreateTextureEX("絵EV100", 18000, 0, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 1, 300, 100, false);

	FadeDelete("背景０", 0, true);
	Fade("kana", 200, 1000, null, false);
	Move("kana", 200, @-200, @+100, Dxl1, true);
	Fade("絵EV100", 0, 1000, null, true);

	Wait(100);

	OnSE("se特殊_鎧_装着06",1000);
	Move("kana", 300, @-300, @250, Dxl2, true);

	Wait(1000);

	Move("絵EV100", 0, -390, 140, null, true);

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	FadeDelete("kana", 250, false);
	Move("絵EV100", 200, 0, 0, Axl3, false);
	Zoom("絵EV100", 200, 1000, 1000, Axl3, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　此时此地就算有百万个大鸟香奈枝，
　也不会做出不同的决断。

　停止气筒热量供给。
　放弃控制翼甲。

　保证剩余热量。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆ボイス「The paradox of "Tell and apple"」
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/048vs0030a03">
「——弓圣之矢无法到达苹果。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆エネルギー充填
	CreateSE("SEボウガン","se特殊_バロウズ_パワー充電_L");

	MusicStart("SEボウガン",1000,1000,0,1000,null,true);
	EffectZoomDXadd(18500, 1000, 100, "#FFFFFF", "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg", true);
	Wait(100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　
　　　　　　　　　杀。
　　　　　　　　　<RUBY text="··">当然</RUBY>要杀。

　大鸟香奈枝是复仇者。
　背负死者无法愈合的怨念而奋起之人。

　若是只剩最后一簇热量，
　则其用途绝非自保，

　只会为杀戮而使用。
　只为杀戮!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);

}

..//ジャンプ指定
//次ファイル　"mc04_049vs.nss"
