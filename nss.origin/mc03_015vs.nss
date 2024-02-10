//<continuation number="600">

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

scene mc03_015vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc03_015vs.nss","DenziBladeCharge",true);
	Conquest("nss/mc03_015vs.nss","DenziBladeChargeSet",true);
	

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
	#ev902_村正電磁抜刀レールガン_e=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_ヘッド=true;
	#av_ボーディ=true;
	#av_レフター=true;
	#av_ライター=true;

	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc03_016.nss";

}

scene mc03_015vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_014.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}


//◆空
//◆ガッタイダー
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");

	CreateCamera("Ｃ", 0, 0, 1000);
	MoveCamera("Ｃ", 0, @0, @-400, @0, null, true);

	CreateColorSP("絵色赤", 0, "#CC0000");

	CreateTextureSP("Ｃ/絵演背景", 750, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	SetBlur("Ｃ/絵演背景", true, 2, 500, 60, false);

	CreateTextureSP("Ｃ/絵演立絵合体", 800, Center, Middle, "cg/st/3dガッタイダー_立ち_通常a.png");
	Move("Ｃ/絵演立絵合体", 0, @0, @-400, null, true);
	Request("Ｃ/絵演立絵合体", Smoothing);
	Zoom("Ｃ/絵演立絵合体", 0, 200, 200, null, true);

	CreateTextureSP("Ｃ/絵演立絵村正", 800, Center, Middle, "cg/st/3d村正標準_騎航_戦闘b.png");
	Move("Ｃ/絵演立絵村正", 0, @80, @286, null, true);
	Request("Ｃ/絵演立絵村正", Smoothing);
	Zoom("Ｃ/絵演立絵村正", 0, 200, 200, null, true);

	Rotate("Ｃ/絵演立絵村正", 0, @0, @0, @75, null,true);
	SetBlur("Ｃ/絵演立絵村正", true, 3, 500, 100, true);

	Delete("上背景");
	FadeDelete("絵暗転", 0, true);

	SetFwL("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/015vs0010b33">
《……他说接下来～？》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/015vs0020b33">
《…………》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/015vs0030b33">
《意料之外的出院吗？》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆下からやにわに村正猛襲
//◆太刀一閃。ずがーん。
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,700,null,false);

	SoundPlay("@mbgm10",0,1000,true);

	Move("Ｃ/絵演立絵村正", 500, @-10, @-600, null, false);
	MoveCamera("Ｃ", 500, @0, @80, 300, Dxl2, false);

	Wait(500);

	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");

	Wait(32);

	SL_rightup2(20010,@0, @0,1500);
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_rightupfade2(10);

//◆村正視点
//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,504);
	CP_IHPChange(0,7,null,false);
	CP_PowerChange(0,700,null,false);

	CP_SpeedChange(0,571,null,false);
	MyTr_Count(0,463);

	CP_HighChange(0,1248,null,false);
	CP_AziChange(0,267,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	Delete("Ｃ*");
	Delete("絵色赤");

	CreateCamera("Ｃ", 0, 0, 1000);
	CreateTextureSP("Ｃ/絵演航空背景", 0, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");

	FadeDelete("絵色黒", 300, false);

	CreateSE("SE02a","se戦闘_衝撃_衝突01");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("絵色白", 30000, "#FFFFFF");

	CreatePlainSP("絵背景覆", 5000);
	Zoom("絵背景覆", 0, 1250, 1250, null, true);
	SetBlur("絵背景覆", true, 3, 500, 80, false);
	FadeDelete("絵色白", 150, false);

	FadeDelete("絵背景覆", 1000, false);
	Shake("絵背景覆", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵背景覆", 200, 1000, 1000, AxlDxl, true);



	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0040a00">
「你这个——————————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆直進突進
//◆力任せの一撃。斧と噛み合う。ガキーン。
	CreateTextureEX("Ｃ/絵演立絵合体", 100, Center, Middle, "cg/st/3dガッタイダー_立ち_通常a.png");
	Request("Ｃ/絵演立絵合体", Smoothing);
	Move("Ｃ/絵演立絵合体", 0, @0, @25, null, true);
	Zoom("Ｃ/絵演立絵合体", 0, 0, 0, null, true);

	MoveCamera("Ｃ", 800, @0, @0, 1500, null, false);

	Zoom("Ｃ/絵演立絵合体", 300, 250, 250, null, false);
	Fade("Ｃ/絵演立絵合体", 300, 1000, null, false);

	Wait(800);

	CreateSE("SE02","se特殊_コックピット_探索01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@0);
	CP_LockOnFade(150,"off",false);

	MoveCamera("Ｃ", 800, @0, @0, 7500, null, false);

	Wait(400);

	CreateSE("SE02a","se特殊_コックピット_ロックオン");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CP_LockOnChange(0,true);

	Wait(100);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 300, 1000, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	CreateSE("SE03","se戦闘_攻撃_野太刀振る01");
	SL_leftdown2(20010,@0, @0,1500);
	MusicStart("SE03",0,1000,0,1500,null,false);
	SL_leftdownfade2(10);

	CreateSE("SE04a","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE04b","se戦闘_攻撃_刀衝突01");
	MusicStart("SE04a",0,1000,0,850,null,false);
	MusicStart("SE04b",0,1000,0,850,null,false);
	CreateTextureSPadd("絵演上", 20110, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSP("絵演", 20100, Center, Middle, "cg/ef/ef044_火花c.png");
	SetBlur("絵演", true, 3, 500, 60, false);
	Rotate("絵演", 500, @0, @0, @3600, null,false);
	SetBlur("絵演", true, 3, 500, 50, false);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演", 150, 3000, 3000, null, false);
	Zoom("絵演上", 100, 1000, 1000, Dxl2, false);
	Shake("絵演", 150, 30, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 100, true);

	CreateColorSP("絵色白", 21000, "#FFFFFF");
	Wait(32);

//◆反転して再突進。
//◆滅茶苦茶な騎体運動。各所が軋んだり。
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Move("絵演立絵", 0, @316, @0, null, true);
	Shake("絵演立絵", 600000, 2, 0, 0, 0, 1000, null, false);

	Move("絵演立絵", 6000, @-60, @0, DxlAuto, false);
	Move("絵演背景", 600000, -100, @0, null, false);

	Delete("Ｃ*");

	Rotate("絵演立絵", 0, @0, @0, @10, null,true);
	Request("絵演立絵", Smoothing);

	DrawDelete("上背景", 150, 1000, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 1000, "slide_01_03_1", true);

	Wait(600);

	SetVolume("SEL*", 500, 0, null);

//◆一撃。ずがーん。
	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵演立絵", 200, @-2000, @0, Axl2, true);

	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	Wait(10);
	SL_leftdown2(20010,@0, @0,2000);
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdownfade2(10);

	Delete("絵演背景*");
	Delete("絵演立絵*");

	CreateTextureSP("絵演航空背景", 0, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");
	MoveFFP1("@絵演航空背景",1000);

	FadeDelete("絵色黒", 300, false);

	CreateSE("SE02a","se戦闘_衝撃_衝突01");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("絵色白", 30000, "#FFFFFF");

	CreatePlainSP("絵背景覆", 5000);
	Zoom("絵背景覆", 0, 1250, 1250, null, true);
	SetBlur("絵背景覆", true, 3, 500, 80, false);
	FadeDelete("絵色白", 150, false);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1500,null,true);
	MusicStart("SEL01b",2000,750,0,1750,null,true);

	FadeDelete("絵背景覆", 1000, false);
	Shake("絵背景覆", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵背景覆", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0050a01">
《主……主君！
　冷静！　冷静下来啊！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0060a01">
《翼型装甲要碎了……！
　求求你了——喂！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0070a01">
《……主君————!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆無茶機動
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	MoveFFP1stop();
	Delete("絵演航空*");

//◆無茶突進
	CreateTextureSPadd("絵演上", 3100, -630, -180, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -630, -180, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, false);

	DrawDelete("絵色黒", 150, 100, "zoom_01_00_1", false);

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/015vs0080b33">
《以为是毒药，结果是动物用的兴奋剂～？》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0090a00">
《闭嘴不许说话!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　吵死了。
　不舒服。
　烦人。

　那家伙的声音，每听一秒都让人憎恨。
　那家伙的身影，每看一秒都让人憎恨。

　<RUBY text="······">让那家伙存在</RUBY>的每一秒都让人憎恨。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆近接
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,700,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演*");

	CreateCamera("Ｃ", 0, 0, 2000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景", 0, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	CreateTextureSP("Ｃ/絵演立絵村正", 250, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Request("Ｃ/絵演立絵村正", Smoothing);
	Zoom("Ｃ/絵演立絵村正", 0, 500, 500, null, true);
	Move("Ｃ/絵演立絵村正", 0, @732, @-10, null, true);

	CreateTextureSP("Ｃ/絵演立絵合体", 250, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	Request("Ｃ/絵演立絵合体", Smoothing);
	Zoom("Ｃ/絵演立絵合体", 0, 750, 750, null, true);
	Move("Ｃ/絵演立絵合体", 0, @-732, @10, null, true);

	Move("Ｃ/絵演立絵村正", 650, @-480, @0, null, false);
	Move("Ｃ/絵演立絵合体", 650, @480, @0, null, false);
	MoveCamera("Ｃ", 650, @0, @0, 550, AxlDxl, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	Wait(500);

	Move("Ｃ/絵演立絵村正", 5000, @-32, @0, null, false);
	Move("Ｃ/絵演立絵合体", 5000, @32, @0, null, false);

	Wait(500);

//◆敵騎斧撃
	CreateSE("SE01a","se戦闘_攻撃_斧振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	Zoom("絵演上", 0, 10000, 10000, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆打ち払う。ガキーン。
	CreateSE("SE01b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01b",0,1000,0,1250,null,false);
	CreateTextureEXadd("絵演二上", 3100, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureSP("絵演二", 3000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	Zoom("絵演二上", 0, 10000, 10000, null, false);
	Fade("絵演二上", 0, 450, null, true);
	Zoom("絵演二上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演二上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演二上", 200, true);

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE02","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, Axl2, true);

	Delete("Ｃ*");
	Delete("絵演*");

	CreateTextureSP("絵演背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");
	MoveFFP1("@絵演背景",1000);

	CreateSE("SE01L","se戦闘_動作_空突進05");
	MusicStart("SE01L",2000,1000,0,1250,null,true);

	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　竟然。
　你竟然。

　你干了什么。

　你。

　可恶。
　可恶。
　可恶。
　可恶。

　只有这件事，是绝对不能做的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 1000, 500, null);

//◆列車が沈んだ河
	CreateTextureEX("絵ＥＶ上", 4100, Center, Middle, "cg/ev/ev178_雪車町とガッタイダー列車襲撃_d.jpg");
	Fade("絵ＥＶ上", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
　啊啊。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ", 4090, -500, -180, "cg/ev/resize/ev178_雪車町とガッタイダー列車襲撃_dl.jpg");
	Move("絵ＥＶ", 4000, @0, -500, DxlAuto, false);
	FadeDelete("絵ＥＶ上", 1000, true);
	WaitKey(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070b]
　啊啊啊啊啊啊啊啊啊啊啊啊。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	SetVolume("SE01L*", 1000, 1000, null);
	FadeDelete("絵ＥＶ", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　你————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆無茶機動
//◆ガッタイダーと相対
	SetVolume("SE01L*", 1000, 0, null);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,700,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演*");

	CreateCamera("Ｃ", 0, 0, 2000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景", 0, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	CreateTextureSP("Ｃ/絵演立絵村正", 250, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Request("Ｃ/絵演立絵村正", Smoothing);
	Zoom("Ｃ/絵演立絵村正", 0, 250, 250, null, true);
	Move("Ｃ/絵演立絵村正", 0, @932, @-10, null, true);

	CreateTextureSP("Ｃ/絵演立絵合体", 250, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	Request("Ｃ/絵演立絵合体", Smoothing);
	Zoom("Ｃ/絵演立絵合体", 0, 400, 400, null, true);
	Move("Ｃ/絵演立絵合体", 0, @-932, @10, null, true);

	Move("Ｃ/絵演立絵村正", 650, @-480, @0, null, false);
	Move("Ｃ/絵演立絵合体", 650, @480, @0, null, false);
	MoveCamera("Ｃ", 650, @0, @0, 550, AxlDxl, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	Wait(500);

	Move("Ｃ/絵演立絵村正", 10000, @-32, @0, null, false);
	Move("Ｃ/絵演立絵合体", 10000, @32, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　坠落吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0100a01">
《不行——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　消失吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0110a01">
《主君，听我说！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　碎散消失吧!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1200,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0120a01">
《啊————呜！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆無茶突進
	CreateColorEX("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 100, 1000, null, true);

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,504);
	CP_IHPChange(0,7,null,false);
	CP_PowerChange(0,700,null,false);

	CP_SpeedChange(0,704,null,false);
	MyTr_Count(0,542);

	CP_HighChange(0,1311,null,false);
	CP_AziChange(0,93,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateTextureSP("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演立絵合体", Smoothing);
	Zoom("絵演立絵合体", 0, 200, 200, null, true);

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"on",true);

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);

	MoveFFP1("@絵演航空背景",1000);

	Delete("Ｃ");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1250,null,true);
	MusicStart("SEL01b",2000,750,0,1750,null,true);

	Zoom("絵演航空背景", 60000, 1100, 1100, null, false);
	Zoom("絵演立絵合体", 60000, 750, 750, null, false);

	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　敌骑举起了玩具一样的武器。

　那算什么。

　愚蠢。

　那种与机能之美正相反的东西。举起那种东西，以为
自己就能成为一介武者了吗。

　愚蠢愚蠢愚蠢愚蠢。

　丑陋。
　肮脏。

　举着愚蠢武器的双臂也同样愚劣。
　其中完全没有武道的技术。

　那仅仅是用力挥起用力挥下的姿势。

　那是孩子的玩闹。

　如果说是樵夫，会对樵夫失礼。

　只不过是学会挥棒的猴子。

　无能。

　你没有飞舞在空中的资格。

　沉入地底让虫子吃掉才好。

　你为什么不那样做。

　我来让你那样。

　我来把你变成地虫的食物。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

	SetVolume("SEL*", 100, 0, null);

//◆斧撃
//◆ちょっと違う太刀打
//◆ガキー。斧が吹っ飛ぶ。
//◆手ぶらガッタイダー
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	CreateSE("SE01a","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 20000, "#FFFFFF");

	Cockpit_AllFade0();
	CP_LockOnDelete();
	Delete("絵演*");
	CloudZoomDelete(0,false);

	CreateColorSP("絵色", 0, "#CC0000");

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	MoveCamera("Ｃ", 0, @2048, @144, @0, null, true);

	CreateTextureSP("Ｃ/絵演背景", 0, Center, Middle, "cg/bg/bg204_横旋回背景_01.jpg");

	CreateTextureSP("Ｃ/絵演立絵合体", 250, Center, Middle, "cg/st/3dガッタイダー_立ち_通常c.png");
	Request("Ｃ/絵演立絵合体", Smoothing);
	Zoom("Ｃ/絵演立絵合体", 0, 500, 500, null, true);
	Move("Ｃ/絵演立絵合体", 0, @2048, @144, null, true);

	Move("Ｃ/絵演立絵合体", 1000, @30, @0, null, false);
	Shake("Ｃ/絵演立絵合体", 2160000, 8, 6, 0, 0, 500, null, false);

	Fade("絵色白", 300, 1000, null, false);
	DrawDelete("絵色白", 300, 1000, "slide_05_00_0", true);

	Wait(1000);

	CreateTextureSP("Ｃ/絵演立絵村正", 250, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	Request("Ｃ/絵演立絵村正", Smoothing);
	Zoom("Ｃ/絵演立絵村正", 0, 750, 750, null, true);
	Move("Ｃ/絵演立絵村正", 0, @-2150, @144, null, true);

	MoveCamera("Ｃ", 600, @-4096, @0, 1250, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　看吧。
　蠢货。

　从门外汉手中夺取武器如此容易。

　抵挡攻击的方法也有很多。
　引开威力的方法，吸收威力的方法，阻止威力发挥
的方法。

　还有将威力击回的方法。
　给与攻击者其双手无法支撑的冲击。剑术中存在这种
抵挡攻击的方法。

　你是不知道的吧。
　这种初步的技法。

　你是把战场和竞技场混同的蠢货。

　你到<RUBY text="····">这种地方</RUBY>来，只是来玩而已。

　而且当做是游戏，
　
　————杀了人!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("絵色黒", 19000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("Ｃ*");
	MoveFFP1stop();

//◆無茶機動
//◆村正
//◆電磁パワー充填

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0130a00">
《哦啊啊啊啊啊啊啊啊啊啊啊!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se特殊_その他_噴き上がる光の柱");
	MusicStart("SE02",0,1000,0,1500,null,false);
	CreateColorEXadd("絵色白", 19100, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl1, true);

	Delete("絵色黒");

	Wait(300);

	CreateTextureSP("絵演", 4100, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	CreateTextureSP("絵演二", 4000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	CreateTextureEX("プロ絵", 4110, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_e.jpg");
	CreateTextureEX("プロ絵上", 4111, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_e.jpg");

	SetVertex("プロ絵*", 800, 312);


	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　我聚集了体内的热量。
　聚集。凝缩。加速。增长。

　热量产生了电，电带上了磁。

　右卫门尉村正，终焉的一刀。
　对于雷电的白刃，金刚石只有等同纸屑的价值。


　那个已经扔掉武器，只是看着这边的小木偶，有万分
之一的可能防住这一击吗。

　没有。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆電磁抜刀準備
//◆ばちばち。異常発生っぽい火花。
	CreateSE("SEL01","se特殊_電撃_帯電02");
	MusicStart("SEL01",0,1000,0,1500,null,true);
	Delete("絵演");
	DenziBladeCharge();

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0140a00">
「别妨碍我，村正！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0150a01">
《等一下！
　你是认真的!?》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0160a00">
「看起来像开玩笑吗！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0170a01">
《你想杀了她!?》


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0180a00">
「<RUBY text="···">想杀她</RUBY>，有什么不可以!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……装甲传来的<RUBY text="声音">剑胄传音</RUBY>，突然改变了声调。
　变得平板。变得冷澈。

　变得就像是金属的<RUBY text="声音">声响</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0190a01">
《是吗。
　如果这是你的决定，我不会阻止。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0200a01">
《但是，你明白吧？
　我们是<RUBY text="··">村正</RUBY>。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0210a01">
《不允许只杀敌人。》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0220a00">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SetVolume("SEL*", 200, 1, null);

//◆養母殺害
	CreateSE("SE01","se擬音_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 21000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	CreateTextureSPmul("絵回想演効果", 20010, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateTextureSP("絵回想演", 20000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");
	SetTone("絵回想演", Sepia);

	Fade("絵色白", 200, 0, null, true);

	Wait(300);

	Fade("絵色白", 200, 1000, null, true);

	Delete("絵回想*");

//◆ブラックアウト
	CreateColorSP("絵色黒", 19900, "#000000");
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　
　　　　　　　　　　　善恶
　　　　　　　　　　　相抵

　
　　　　　　　如果杀掉一个敌人
　　　　　　　也应杀掉一个<RUBY text="同伴">朋友</RUBY>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	SetVolume("SEL*", 4000, 1000, null);
	FadeDelete("絵色黒", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0230a01">
《…………》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0240a00">
「…………呜……」


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0250a00">
「呜哦……！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0260a01">
《……冷静下来……》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0270a01">
《现在还不知道那两个人死了没有。
　她们也许侥幸活下来了。
　无论怎么想，她们也不像是会轻易死掉的家
伙。……对吧？》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0280a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0290a01">
《所以……别自暴自弃。
　如果你不想仅仅因为<RUBY text="··">感情</RUBY>就杀人。
　如果至少想因为<RUBY text="··">决断</RUBY>而做。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0300a01">
《现在，应该只是做必要的事。》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0310a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆エネルギー放棄
	CreateSE("SE01","se特殊_雰囲気_発光03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19100, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl1, true);

	Delete("絵演*");
	Delete("プロ*");
	Delete("Ｐ*");

	Wait(300);

	CreateTextureSP("絵演", 4100, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_a.jpg");

	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0320a01">
《主君。》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0330a00">
「……避开致命的部位。
　将敌骑无力化，随后救援大鸟大尉她们。」



{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0340a01">
《明白。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突進
//◆ガッタイダー捕捉
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	DrawDelete("上背景", 300, 100, "slide_01_03_1", true);

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,504);
	CP_IHPChange(0,7,null,false);
	CP_PowerChange(0,700,null,true);
	CP_PowerChange(400,470,null,false);

	CP_SpeedChange(0,611,null,false);
	MyTr_Count(0,475);

	CP_HighChange(0,1111,null,false);
	CP_AziChange(0,10,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");

	CreateTextureEX("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_立ち_通常c.png");
	Request("絵演立絵合体", Smoothing);
	Zoom("絵演立絵合体", 0, 200, 200, null, true);

	DrawDelete("絵暗転", 300, 100, "circle_01_00_1", true);

	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("絵演立絵合体", 300, @0, @-30, DxlAuto, false);
	Fade("絵演立絵合体", 300, 1000, null, true);

	CreateSE("SE03","se特殊_コックピット_ロックオン");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@-30);
	CP_LockOnFade(300,"off",true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　我正面瞄准了可憎的敌骑。
　我将涌起的愤怒埋入腹底。

　现在不能想。

　在心中拨打算盘。
　仅仅进行冰冷的计算。

　没有击坠的必要。
　无力化就可以。

　不该浪费力量。
　即使为了之后要做的事。

　为了要救出她们，不知道需要使用多少力气……
　
　
　或者是，为了确认她的死亡，

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0350a00">
「……呜……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　别去想。
　别去想。

　现在只要斩击就可以了。

　对于眼前这个没有武器也无法逃走的东西，以最低限
度的威力斩击，给与最低限度的损伤。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵演立絵合体", 600, 600, 600, null, false);
	Zoom("絵演航空背景", 600, 1100, 1100, null, false);
	CP_LockOnChange(300,false);

	Wait(500);

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0360a00">
「哈——!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆抜き打ち？
//◆バキーン。物が砕ける音
	CreateSE("SE02","se特殊_陰義_発動03");
	CreateSE("SE02a","se特殊_鎧_装着04");
	MusicStart("SE02",0,1000,0,750,null,false);
	MusicStart("SE02a",0,1000,0,1250,null,false);

//◆シュパーと一閃
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");

	Wait(10);

	SL_leftdown2(20010,@0, @0,2000);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdownfade2(10);

	Delete("絵演立絵*");
	CP_LockOnDelete();

	FadeDelete("絵色黒", 1000, true);

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0370a01">
《————哎？》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0380a00">
「什么……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　敌骑碎裂了——
　之后，剑光一闪。

　我重新考虑着自己的认知。
　……我没有搞错<RUBY text="··">顺序</RUBY>。

　敌骑——<k>在我斩击之前碎裂了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0390a00">
「怎么可能……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　如果是错觉，就能以自我否定作为结束。

　但是世界没有任何变化。
　敌骑碎裂，消失了。

　已经哪里都找不到了。
　
　哪里，都——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0400a01">
《什么……主君！
　敌骑来袭!!》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0410a00">
「在哪里！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0420a01">
《什……什么哪里……
　从<RUBY text="····">四面八方</RUBY>!!》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0430a00">
「——啊？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　村正还留有浓厚的人心，所以偶尔会表现出不像是
剑胄的动摇。
　但是，即使如此，这也是可靠的。

　……四面八方是什么意思。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0440a00">
「这句话我还给你。冷静些，村正。
　我是问你敌人从哪个方向来。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0450a01">
《就，就是说！
　上面，下面，后面，还有……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0460a00">
「喂。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　敌人只有一骑，为什么，

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0470a01">
《敌军，<RUBY text="··">四骑</RUBY>!!
　来了!!》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0480a00">
「什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆分裂したガッタイダー
//◆ヘッド、ボーディ、ライター、レフター
	#av_ヘッド=true;
	#av_ボーディ=true;
	#av_レフター=true;
	#av_ライター=true;

	CreateTextureSP("絵演立絵合体頭", 1000, Center, OutBottom, "cg/st/3dガッタイダーＨ_騎航_通常.png");
	CreateTextureSP("絵演立絵合体体", 950, Center, OutTop, "cg/st/3dガッタイダーＢ_騎航_通常a.png");
	CreateTextureSP("絵演立絵合体左", 1000, OutLeft, Middle, "cg/st/3dガッタイダーＲ_騎航_通常.png");
	CreateTextureSP("絵演立絵合体右", 1000, OutRight, Middle, "cg/st/3dガッタイダーＬ_騎航_通常.png");
	Request("絵演立絵合体*", Smoothing);

	$拡大率=0.5;
	$拡大率代入値=$拡大率*1000;

	SetVertex("絵演立絵合体頭", center, top);
	SetVertex("絵演立絵合体体", center, bottom);
	SetVertex("絵演立絵合体右", left, middle);
	SetVertex("絵演立絵合体左", right, middle);
	Rotate("絵演立絵合体体", 0, @0, @0, @90, null,true);

	Move("絵演立絵合体頭", 0, @140, @0, null, true);
	Move("絵演立絵合体体", 0, @-340, @-260, null, true);


	Zoom("絵演立絵合体*", 0, $拡大率代入値, $拡大率代入値, null, true);

	$頭サイズ=ImageVertical("絵演立絵合体頭");
	$頭絶対座標値=$頭サイズ*$拡大率;
	$頭絶対座標代入値=$頭絶対座標値*(-1);

	$体サイズ=ImageVertical("絵演立絵合体体");
	$体絶対座標値=$体サイズ*$拡大率+576;

	$左サイズ=ImageHorizon("絵演立絵合体左");
	$左絶対座標値=$左サイズ*$拡大率+1024;

	$右サイズ=ImageHorizon("絵演立絵合体右");
	$右絶対座標値=$右サイズ*$拡大率;
	$右絶対座標代入値=$右絶対座標値*(-1);

	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1200,null,false);
	Move("絵演立絵合体頭", 300, @30, $頭絶対座標代入値, null, false);

	Wait(150);

	CreateSE("SE01b","se戦闘_動作_空突進01");
	MusicStart("SE01b",0,1000,0,800,null,false);
	Move("絵演立絵合体体", 300, @-60, $体絶対座標値, null, false);

	Wait(150);

	CreateSE("SE01c","se戦闘_動作_空突進01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Move("絵演立絵合体左", 300, $左絶対座標値, @80, null, false);

	Wait(150);

	CreateSE("SE01d","se戦闘_動作_空突進01");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	Move("絵演立絵合体右", 300, $右絶対座標代入値, @-120, null, true);

	Delete("絵演立絵合体*");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0490a00">
「——————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　脑髓麻痹，思考停止。
　但是，还有别的地方在运转，我的意识中出现了一些
景象。

　出现的景象像是要展现<RUBY text="··">答案</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 18000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Cockpit_AllFade0();

//◆ヘッド（手足のないデザイン）
//◆ガッタイダー（合体）の頭部周辺アップ
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	CreateSE("SE01a","se擬音_回想_フラッシュバック01");
	CreateSE("SE01b","se擬音_回想_フラッシュバック01");
	CreateSE("SE01c","se擬音_回想_フラッシュバック01");

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵演立絵合体", 18100, -990, -1180, "cg/st/resize/3dガッタイダー_立ち_通常am.png");
	SetTone("絵演立絵合体", Sepia);

	Fade("絵色白", 300, 0, null, true);

	CreateTextureEX("絵演立絵合体頭", 18110, -280, -370, "cg/st/resize/3dガッタイダーＨ_騎航_通常m.png");
	Move("絵演立絵合体頭", 3000, @0, @-90, null, false);
	Fade("絵演立絵合体頭", 300, 1000, null, true);
	Wait(1000);

//◆ボーディ
//◆ガッタイダーの胴体周辺アップ
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);

	Delete("絵演立絵合体頭");

	Move("絵演立絵合体", 1, -1340, -1440, null, true);
	Fade("絵色白", 300, 0, null, true);

	CreateTextureEX("絵演立絵合体体", 18110, -400, -555, "cg/st/resize/3dガッタイダーＢ_騎航_通常am.png");
	Move("絵演立絵合体体", 3000, @90, @0, null, false);
	Fade("絵演立絵合体体", 300, 1000, null, true);

	Wait(1000);
	Fade("絵色白", 100, 1000, null, true);

//◆レフター
//◆ガッタイダーの左足アップ
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);

	Delete("絵演立絵合体体");

	Move("絵演立絵合体", 1, -1587, -1924, null, true);
	Fade("絵色白", 300, 0, null, true);

	CreateTextureEX("絵演立絵合体左", 18110, -80, -219, "cg/st/3dガッタイダーＬ_騎航_通常.png");
	Move("絵演立絵合体左", 3000, @-90, @0, null, false);
	Fade("絵演立絵合体左", 300, 1000, null, true);

	Wait(1000);
	Fade("絵色白", 100, 1000, null, true);

//◆ライター
//◆ガッタイダーの右足アップ
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);

	Delete("絵演立絵合体左");

	Move("絵演立絵合体", 1, -978, -1933, null, true);
	Fade("絵色白", 300, 0, null, true);

	CreateTextureEX("絵演立絵合体右", 18110, 170, -270, "cg/st/3dガッタイダーＲ_騎航_通常.png");
	Move("絵演立絵合体右", 3000, @90, @0, null, false);
	Fade("絵演立絵合体右", 300, 1000, null, true);

	Wait(1000);

//◆回想
	EfRecoIn1(20000,600);

	CreateTextureSP("絵回想背景", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Delete("絵色黒*");
	Delete("絵色白");
	Delete("絵演立絵合体*");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0500a01">
《真是奇怪啊。无论怎么想。
　如果我没有看错——那个武者，
　是<RUBY text="·······">全速地冲了过来</RUBY>，
　<RUBY text="···········">然后又全力地向这边攻击</RUBY>。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0510a01">
《如果说热量是十，那么飞行推进器的运转和
力量增强<RUBY text="··">没有</RUBY>分别分配五。
　两个都是十……
那种事是绝对不可能做到的啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　热量分配的异常。

　出处不明的攻击。

　受到攻击前就坏掉——<k>
　
　　　　　　　　　　　——————<RUBY text="··">分离</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0520a00">
「啊————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ライターレフター、順々に襲来
//◆食らう。がきんがきーん。
	CreateTextureSP("絵演立絵合体左", 1110, Center, Middle, "cg/st/3dガッタイダーＬ_騎航_通常.png");
	Zoom("絵演立絵合体左", 0, 150, 150, null, true);
	Move("絵演立絵合体左", 0, @200, @-400, null, true);

	CreateTextureSP("絵演立絵合体右", 1100, Center, Middle, "cg/st/3dガッタイダーＲ_騎航_通常.png");
	Move("絵演立絵合体右", 0, @-256, @576, null, true);
	Zoom("絵演立絵合体右", 0, 150, 150, null, true);

	Request("絵演立絵合体", Smoothing);

//あきゅん「演出：左のターン」
	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演立絵合体左", 400, @-800, @400, null, true);

	Wait(200);

	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体左", 0, @0, @180, @0, null,true);
	Zoom("絵演立絵合体左", 200, 3000, 3000, Dxl2, false);
	Move("絵演立絵合体左", 200, @800, @-100, null, false);

	Wait(280);

	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("絵色白", 19900, "#FFFFFF");

	CreatePlainEX("絵板写", 1000);
	Fade("絵板写", 0, 300, null, true);
	Shake("絵板写", 700, 20, 20, 0, 0, 500, Dxl1, false);

	Delete("絵演立絵合体左");
	Wait(10);
	FadeDelete("絵色白", 200, true);

//あきゅん「演出：右のターン」
	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演立絵合体右", 400, @100, @-1000, null, true);

	Wait(200);

	Move("絵演立絵合体右", 0, @700, @0, null, true);


	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体右", 0, @0, @180, @0, null,true);
	Zoom("絵演立絵合体右", 200, 3000, 3000, Dxl2, false);
	Move("絵演立絵合体右", 200, @-800, @700, null, false);

	Wait(280);

	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("絵色白", 19900, "#FFFFFF");

	CreatePlainEX("絵板写", 1000);
	Fade("絵板写", 0, 300, null, true);
	Shake("絵板写", 700, 20, 20, 0, 0, 500, Dxl1, false);

	Delete("絵演立絵合体右");
	Wait(10);
	FadeDelete("絵色白", 200, true);

//あきゅん「ＣＰ：表示はしないけどパラはこんな感じになってる」
/*
	MyLife_Count(0,432);
	CP_IHPChange(0,6,null,false);
	CP_PowerChange(0,450,null,false);
*/

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/015vs0530a00">
「呜……啊啊!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 1000);
	CreateColorSPover("絵色緑", 500, "#339999");
	CreateColorEXadd("絵色黒", 510, "#FFFFFF");
	Fade("絵色黒", 0, 600, null, true);
	DrawTransition("絵色黒", 0, 0, 300, 300, null, "cg/data/slide_06_00_1.png", true);

	CreateTextureSP("Circuit01", 200, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	CreateTextureSP("Circuit02", 200, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");

	SetVertex("Circuit01", 0, 0);
	SetVertex("Circuit02", 0, 0);
	Rotate("Circuit01", 0, @0, @0, 90, null,true);
	Rotate("Circuit02", 0, @0, @0, 90, null,true);

	Move("Circuit01", 0, @+5400, @0, null, true);
	Move("Circuit02", 0, @+5400, @0, null, true);
	Zoom("Circuit01", 0, 2000, 2000, null, true);
	Zoom("Circuit02", 0, 2000, 2000, null, true);

	CreateSCR1("@Circuit01","@Circuit02",600,@0, -4000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　那是，
　这样啊。那是，

　那家伙的身份是——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵板写", 1000, true);

	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵演立絵頭", 1100, Center, OutBottom, "cg/st/3dガッタイダーＨ_騎航_通常.png");
	Move("絵演立絵頭", 0, @-150, @0, null, true);
	Zoom("絵演立絵頭", 0, 600, 600, null, true);
	Request("絵演立絵頭", Smoothing);

	$縦軸安全位置=ImageHorizon("絵演立絵頭")*(-1);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演立絵頭", 330, @0, -134, null, false);

	Wait(300);

	Move("絵演立絵頭", 10000, @0, -138, null, false);

	SetFwC("cg/fw/fwガッタイダーＨ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/015vs0540b33">
《Ｈｅａｄ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵演立絵頭", 330, @0, $縦軸安全位置, null, false);

	CreateTextureSP("絵演立絵体", 1100, Center, OutBottom, "cg/st/3dガッタイダーＢ_騎航_通常a.png");
	Rotate("絵演立絵体", 0, @180, @0, @-90, null,true);
	Move("絵演立絵体", 0, @300, @0, null, true);
	Zoom("絵演立絵体", 0, 450, 450, null, true);
	Request("絵演立絵体", Smoothing);

	$縦軸安全位置２=ImageHorizon("絵演立絵体")*(-1);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演立絵体", 330, @0, -329, null, false);

	Wait(300);

	Move("絵演立絵体", 10000, @0, -333, null, false);

	SetFwC("cg/fw/fwガッタイダーＢ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0451]
//【ボーディ２】
<voice name="ボーディ２" class="ボーディ２" src="voice/mc03/015vs0550b08">
《Ｂｏｄｙ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵演立絵体", 330, @0, $縦軸安全位置２, null, false);

	CreateTextureSP("絵演立絵右", 1100, Center, OutBottom, "cg/st/3dガッタイダーＲ_騎航_通常.png");
	Move("絵演立絵右", 0, @-300, @0, null, true);
	Zoom("絵演立絵右", 0, 500, 500, null, true);
	Rotate("絵演立絵右", 0, @0, @0, @-90, null,true);
	Request("絵演立絵右", Smoothing);

	$縦軸安全位置３=ImageHorizon("絵演立絵右")*(-1);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演立絵右", 330, @0, -346, null, false);

	Wait(300);

	Move("絵演立絵右", 10000, @0, -350, null, false);

	SetFwC("cg/fw/fwガッタイダーＲ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0452]
//【ライター２】
<voice name="ライター２" class="ライター２" src="voice/mc03/015vs0560b10">
《Ｒｉｇｈｔ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵演立絵右", 330, @0, $縦軸安全位置３, null, false);

	CreateTextureSP("絵演立絵左", 1100, Center, OutBottom, "cg/st/3dガッタイダーＬ_騎航_通常.png");
	Move("絵演立絵左", 0, @100, @0, null, true);
	Zoom("絵演立絵左", 0, 500, 500, null, true);
	Rotate("絵演立絵左", 0, @0, @0, @90, null,true);
	Request("絵演立絵左", Smoothing);

	$縦軸安全位置４=ImageHorizon("絵演立絵左")*(-1);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演立絵左", 330, @0, -236, null, false);

	Wait(300);

	Move("絵演立絵左", 10000, @0, -240, null, false);

	SetFwC("cg/fw/fwガッタイダーＬ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0453]
//【レフター２】
<voice name="レフター２" class="レフター２" src="voice/mc03/015vs0570b13">
《Ｌｅｆｔ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵演立絵左", 330, @0, $縦軸安全位置４, null, true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	Delete("絵演立絵合体*");
	Delete("@ProSCR*");
	Delete("Circuit*");
	Delete("絵色緑");
	Delete("絵色黒");

	Wait(200);

	Delete("絵演*");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/bg001_空b_01.jpg");

	CreateTextureSP("絵演立絵合体頭", 1120, Center, Middle, "cg/st/3dガッタイダーＨ_騎航_通常.png");
	CreateTextureSP("絵演立絵合体体", 1100, Center, Middle, "cg/st/resize/3dガッタイダーＢ_騎航_通常am.png");
	CreateTextureSP("絵演立絵合体左", 1105, Center, Middle, "cg/st/3dガッタイダーＬ_騎航_通常.png");
	CreateTextureSP("絵演立絵合体右", 1110, Center, Middle, "cg/st/3dガッタイダーＲ_騎航_通常.png");
	Request("絵演立絵合体*", Smoothing);
	Zoom("絵演立絵合体頭", 0, 500, 500, null, true);
	Zoom("絵演立絵合体体", 0, 800, 800, null, true);
	Zoom("絵演立絵合体左", 0, 380, 380, null, true);
	Zoom("絵演立絵合体右", 0, 380, 380, null, true);

	Move("絵演立絵合体頭", 0, 310, -242, null, true);
	Move("絵演立絵合体体", 0, -470, -540, null, true);
	Move("絵演立絵合体左", 0, -50, -86, null, true);
	Move("絵演立絵合体右", 0, -366, -169, null, true);

	Rotate("絵演立絵合体頭", 0, @0, @0, @30, null,true);
	Rotate("絵演立絵合体左", 0, @0, @180, @0, null,true);

	Move("絵演立絵合体頭", 10000, @50, @0, null, false);
	Move("絵演立絵合体体", 10000, @40, @0, null, false);
	Move("絵演立絵合体左", 10000, @48, @0, null, false);
	Move("絵演立絵合体右", 10000, @34, @0, null, false);

	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fwガッタイダーＨ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0454]
//◆ここ発音注意
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/015vs0580b33">
《<RUBY text="四骑一体——————">合体————————</RUBY>!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色白", 10000, "#FFFFFF");
	Fade("絵色白", 1000, 1000, null, false);

	Move("絵演立絵合体頭", 200, @1500, @0, Axl2, false);
	Wait(100);
	Move("絵演立絵合体体", 200, @1500, @0, Axl1, false);
	Wait(100);
	Move("絵演立絵合体左", 200, @1500, @0, Axl3, false);
	Wait(80);
	Move("絵演立絵合体右", 200, @1500, @0, Axl3, false);

	WaitAction("絵色白", null);
	Delete("絵演立絵合体*");

//◆四騎集結→合体
//◆３Ｄに暇と情熱が有り余っていたらこれムービーで。
//◆復活ガッタイダー。武器はチェーンソー
	SetVolume("SE*", 300, 0, null);

	MovieSESet(20000,"mv合体","se特殊_mv用_ガッタイダー合体");
	MovieSEStart(2000);

	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3dガッタイダー_立ち_通常b.png");
	Request("絵演立絵", Smoothing);
	Zoom("絵演立絵", 0, 550, 550, null, true);

	CreateSE("SE01","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　四骑集合。
　成为一骑。

　对。
　<RUBY text="····">四骑一体</RUBY>。

　那就是——这个恶魔的真实身份！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/015vs0590a01">
《那是什么啊——————!!》


{	FwL("cg/fw/fwガッタイダー_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/015vs0600b33">
《也许是骸骨岛找到的新品种～》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　复原的怪物骑向这边冲来，她的妄言无法作为回答。
　其手中——那到底是藏在哪里的呢。那里有着新的凶
器。


{	CreateSE("SE01","se戦闘_攻撃_チェーンソー02_L");
	MusicStart("SE01",1000,1000,0,600,null,true);
	SetFrequency("SE01", 3000, 1000, Axl2);}
　<RUBY text="Ｃｈａｉｎ">连锁刃</RUBY>高速地旋转，轰响着让人汗毛竖起…………


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_016.nss"

.//マクロ＜電磁抜刀放電＞
function DenziBladeCharge()
{
	CreateProcess("Ｐ電磁抜刀放電ループ", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("Ｐ電磁抜刀放電ループ","Ｐ電磁抜刀放電ループ");
	Request("Ｐ電磁抜刀放電ループ", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	}

}