
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc01_019vsb.nss_MAIN
{

	CP_AllSet("村正");

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

	Cockpit_AllFade0();

	$GameName = "mc01_020vs.nss";

}

scene mc01_019vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_019vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●下段
//◆村正下段
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateTextureSP("絵背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	Move("絵背景", 80000, 0, @0, null, false);

	CreateTextureSP("絵演村正", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘b.png");
	Shake("絵演村正", 2160000, 2, 1, 0, 0, 1000, null, false);
	Zoom("絵演村正", 0, 5000, 5000, null, true);
	Move("絵演村正", 0, @500, @1152, null, true);
	SetBlur("絵演村正", true, 2, 400, 60, true);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果線", 19990, Center, Middle, 288, 512, "Rain");
	SetAlias("絵効果線","絵効果線");
	Rotate("絵効果線", 0, @0, @0, @-90, null,true);
	Zoom("絵効果線", 0, 2000, 2000, null, true);
	Move("絵効果線", 0, @400, @0, null, true);

/*
	CreateTextureSP("絵演村正", 1000, OutRight, Middle, "cg/st/3d村正標準_騎航_戦闘b.png");
//	Move("絵演村正", 0, @588, @-85, null, true);
	Move("絵演村正", 0, @0, @-85, null, true);
	Shake("絵演村正", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("絵演村正", 7500, @-800, @0, DxlAuto, false);
*/


	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);

	//Move("絵演村正", 600, @-500, @-1152, null, false);
	BezierMove("絵演村正", 600, (@0,@0){@-1800,@-400}{@-1200,@-800}(@-200,@-1300), null, false);
	Zoom("絵演村正", 600, 1000, 1000, null, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　在即将发起进攻之前，我迅速往飞行推进器里注入过
量的热量。
　速度顿时提高了一个等级。短短数秒间，提前到达了
太刀较量的距离。

{	Move("絵演村正", 2000, @-30, @0, null, false);}
　结果，在敌骑的战斧还未挥动之前，村正的太刀就捕
捉到了目标。
　虽然是不让敌人使出拿手特技的小招数，只要我们在
热量分配上小心谨慎，这种程度的技术完全可以做到！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE00","se戦闘_動作_空上昇01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 150, 1000, null, false);
	Move("絵演村正", 300, @-1500, @0, Dxl2, true);

	Fade("絵色白", 600, 0, null, false);
	DrawDelete("絵色白", 1200, 1000, "slide_05_00_1", false);

	Wait(600);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵効果線");
	Delete("絵演村正");
	Delete("絵色白");
	Delete("絵背景");

//◆斬り上げ
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftup2(20010,@0, @0,1500);
	SL_leftupfade2(10);

//◆ガキーン。
	CreateSE("SE02a","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("絵色白", 30000, "#FFFFFF");
	Delete("絵色黒");

	CreateTextureSP("絵空背景", 100, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_01.jpg");
	CreateTextureSPadd("絵空背景覆", 110, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_01.jpg");


//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);

//あきゅん「ＣＰ：ダメージフラグで生命値調整」
	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,439);
	CP_SpeedChange(0,517,null,false);

	CP_PowerChange(0,710,null,false);

	CP_HighChange(0,1728,null,false);
	CP_AziChange(0,94,null,false);
	CP_AltChange(0,1,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);

	FadeDelete("絵空背景覆", 1500, false);
	Shake("絵空背景*", 1000, 0, 30, 0, 0, 1000, Dxl3, false);
	Shake("@CP_Frame*", 1500, 0, 60, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/019vs0030a00">
「……啧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　但手感仍然坚硬。
　无法由下而上扬剑击溃敌人吗!?

　不，冲击理应已经波及了里面的人。
　只要反复地不停攻击一定会见效吧。而且对
不能杀死敌人的村正来说，反复给予敌人微弱
损伤的战法反而是个安全的策略。

　加之——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/019vs0040a01">
《不来上方……》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/019vs0050a00">
「似乎可以这么认为。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 19000, "#000000");
	Fade("絵色黒", 300, 1000, Dxl2, true);
	Cockpit_AllFade0();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　至少能断定敌骑的“看不见的手”只伺机攻击从<RUBY text="··">下侧</RUBY>
潜入的对手——大概如此。
　倘若果真如此，就意味着由下而上挥刀杀出敌阵的
进攻是可行的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル　"mc01_020vs.nss"

}


