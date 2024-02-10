
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

scene mc03_019vsd.nss_MAIN
{

	//CP_AllSet("村正");

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

	$GameName = "mc03_020vs.nss";

}

scene mc03_019vsd.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_019vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●避け防御１
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 19999);
	CreateColorSP("絵色黒", 10, "#000000");

	Fade("@box*", 0, 0, null, true);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 50000, "#000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵色黒");
	Delete("上背景");

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我没有用剑迎击。
　现在不是该攻击的时机。

　在敌人挥击命中我之前——<RUBY text="···">冲过去</RUBY>！
　我抬起头，瞬间加速。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆チェーンソー一閃
	CreateSE("SE01a","se戦闘_攻撃_チェーンソー02_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);

	CreateColorSP("絵色黒地", 20000, "#000000");

	CreateTextureSPadd("絵演上上", 20120, -504, -730, "cg/ef/ef044_火花c.png");
	Zoom("絵演上上", 0, 3000, 3000, null, true);

	CreateTextureSP("絵演", 20100, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	DrawTransition("絵演", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", false);
	Zoom("絵演", 0, 1200, 1200, null, true);
	Request("絵演", Smoothing);

	Fade("絵演上上", 200, 0, null, false);
	Move("絵演上上", 200, 44, -150, null, false);
	Zoom("絵演上上", 200, 1000, 1000, null, false);
	Rotate("絵演上上", 200, @0, @0, @36000, null,false);
	Shake("絵演上上", 200, 40, 10, 0, 0, 500, Dxl2, false);

	Shake("絵演", 200, 100, 0, 0, 0, 1000, null, true);

//◆回避成功
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色黒", 25000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	CreatePlainSP("絵板写", 30000);

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	$装甲基礎=360;
	$装甲計算値=$装甲基礎-($mc03dmg*162);
	MyLife_Count(0,$装甲計算値);

	$体力基礎=5;
	$体力計算値=$体力基礎-($mc03dmg*2);
	CP_IHPChange(0,$体力計算値,null,false);

	$熱量基礎=300;
	$熱量計算値=$熱量基礎-($mc03kacl*250);
	CP_PowerChange(0,$熱量計算値,null,false);

	CP_SpeedChange(0,558,null,false);
	MyTr_Count(0,451);

	CP_HighChange(0,1178,null,false);
	CP_AziChange(0,243,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	Zoom("絵背景", 0, 750, 750, null, true);
	SetBlur("絵背景", true, 3, 500, 30, false);

	SetVolume("SE*", 1600, 0, null);

	Delete("絵演*");
	Delete("絵色*");

	Wait(200);

	Zoom("絵背景", 650, 1000, 1000, Dxl1, false);
	DrawDelete("絵板写", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/019vs0090a00">
「——好。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/019vs0100a01">
《很漂亮地避开了……
　不过，刚才似乎很险。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　虽然敌骑缺乏技术，但其怪力和凶恶的武器足以填补
技术上不足的部分。
　只要我方的技术有了破绽，那就全都结束了吧……


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

//◆→●第２Ｒ

..//ジャンプ指定
//次ファイル　"mc03_020vs.nss"

}


