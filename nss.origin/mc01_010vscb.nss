
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

scene mc01_010vscb.nss_MAIN
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
	$mc01_010vscb_奇襲見切り = true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$GameName = "mc01_011vs.nss";

}

scene mc01_010vscb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_010vsc.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●下段
//◆村正下段構え
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演村正", 17100, Center, Middle, "cg/st/3d村正標準_騎航_戦闘b.png");
	CreateTextureSP("絵背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	Request("絵背景", Smoothing);
	Request("絵演村正", Smoothing);
	Move("絵演村正", 0, @-100, @-60, null, true);
	Zoom("絵演村正", 0, 1300, 1300, null, true);

	FadeDelete("上背景", 500, false);

	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("絵演村正", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景", 0, 1500, 1500, null, true);
	Move("絵背景", 60000, 0, @0, null, false);

	Move("絵演村正", 300, @-60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我转为下段姿势。
　太刀置于身侧，刀尖向下，准备攻击时扬剑上砍。

　与武者剑术举刀过顶的传统姿势相比，刀尖朝下的刀
法威力的确不够。
　想要以这样的一刀割开敌骑的装甲是十分困难的。

　然而我也有我的考虑。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆接近
	CreateTextureEX("絵演", 18000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Fade("絵演", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　采用举刀过顶姿势的敌骑，接近我的腹部，挥下战斧。
　而采用刀尖朝下姿势的我方，则必须靠近敌人的背后，
挥起太刀。

　在这种以太刀较量的情况下，胜负是由看穿形势的速度
与剑速来决定的。
　能够先一步把握攻击时机，先予以攻击的那一方，便能
取得胜利——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("絵演", null);
	Delete("絵演村正*");
	Delete("絵背景*");

	CreateTextureSP("絵背景", 17000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	FadeDelete("絵演", 600, false);

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/010vs0170b33">
《你是拉脱维亚来的移民吗？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵騎急加速
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	MusicStart("SE01a",0,1000,0,1200,null,false);
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#336600");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 19100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵窓/絵演立絵装甲", Smoothing);
	Zoom("絵窓/絵演立絵装甲", 0, 750, 750, null, true);

	Zoom("絵窓/絵演立絵装甲", 300, 1250, 1250, Axl2, false);
	Move("絵窓/絵演立絵装甲", 300, @0, -430, Axl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/010vs0180a00">
「——什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	PrintGO("上背景", 30000);
	CreateTextureSPover("絵演効果", 110, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	Request("絵演背景", Smoothing);
	Zoom("絵演背景", 0, 3000, 1000, null, true);

	CreateTextureSP("絵演合体", 100, -660, -610, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	Request("絵演合体", Smoothing);
	Rotate("絵演合体", 0, @0, @-30, @0, null,true);

	CreateTextureSP("絵演村正", 100, 170, -360, "cg/st/3d村正標準_騎航_戦闘b.png");
	Request("絵演村正", Smoothing);
	Rotate("絵演村正", 0, @0, @-10, @0, null,true);

	$村正縮小率=300;
	$合体駄調整=$村正縮小率*1.75;
	Zoom("絵演村正", 0, $村正縮小率, $村正縮小率, null, true);
	Zoom("絵演合体", 0, $合体駄調整, $合体駄調整, null, true);

	Move("絵演合体", 15000, -580, -610, Dxl2, false);
	Move("絵演村正", 15000, 90, -330, Dxl2, false);

	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　在攻击的前一秒钟进行急加速!?

　怎么可能！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆斧ＶＳ太刀
//◆がきがきー。打ち合う
	CreateColorSP("絵色黒", 20010, "#000000");
	CreateSE("SE02b","se戦闘_攻撃_斧振る01");
	MusicStart("SE02b",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

	CreateSE("SE02c","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02c",0,1000,0,1500,null,false);
	SL_leftup2(20010,@0, @0,1500);
	SL_leftupfade2(10);

	CreateSE("SE03","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE03a","se戦闘_衝撃_衝突01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 22000, "#FFFFFF");
	CreateTextureSP("絵演効果", 21000, Center, Middle, "cg/ef/ef044_火花a.jpg");
	CreateTextureEXadd("絵演効果上", 21110, Center, Middle, "cg/ef/ef044_火花a.jpg");

	CreateTextureSP("絵航空背景", 1000, Center, InTop, "cg/bg/resize/bg201_旋回演出背景市街地a_01.jpg");
	Zoom("絵航空背景", 180000, 2000, 2000, null, false);

//あきゅん「ＣＰ：初期値定義」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);
	CP_IHPChange(0,$合体戦生命調整値,null,false);

	CP_SpeedChange(0,512,null,false);
	MyTr_Count(0,440);

	CP_PowerChange(0,870,null,false);

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,243,null,false);

	CP_AltChange(0,15,null,false);
	CP_RollBarMove2(0,0,null,true);

	Delete("絵演村正");
	Delete("絵演合体");
	Delete("絵演効果");
	Delete("絵演背景");
	Delete("絵色黒");

	FadeDelete("絵色白", 500, false);
	Shake("絵演効果上", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("絵演効果上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演効果上", 250, 1000, null, true);
	Fade("絵演効果上", 250, 0, DxlAuto, true);
	FadeDelete("絵演効果", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……彻底丧失了攻击先机。
　但幸好，本欲攻击敌骑的太刀及时弹开了敌骑。

　战斧厚重的刀锋偏离目标，横砍向空中。
　
　之后——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両騎交差
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawDelete("上背景", 150, 100, "circle_01_00_0", true);

	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureSP("絵演村正", 17110, Center, Middle, "cg/st/3d村正標準_騎航_戦闘b.png");
	CreateTextureSP("絵演合体", 17100, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	CreateSE("SE02","se戦闘_動作_空突進02");
	CreateSE("SE02a","se戦闘_動作_空突進01");
	SetBlur("絵演村正", true, 2, 500, 30, true);
	SetBlur("絵演合体", true, 2, 500, 30, true);
	Move("絵演村正", 0, @200, @60, null, true);
	Move("絵演合体", 0, @-200, @-60, null, true);

	Move("絵演村正", 400, @-2500, @-30,Axl2, false);
	Zoom("絵演村正", 400, 850, 850, null, false);

	Move("絵演合体", 400, @2500, @30, Axl2, false);
	Zoom("絵演合体", 400, 1250, 1250, null, false);

	Zoom("絵演背景", 1000, 550, 550, Dxl2, false);

	MusicStart("SE02",0,1000,0,750,null,false);
	MusicStart("SE02a",0,1000,0,1150,null,false);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	WaitKey(500);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


	PrintGO("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SEL01a","se戦闘_動作_空走行02_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演背景", 17000, InLeft, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureEX("絵演村正立絵", 17100, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	SetBlur("絵演村正立絵", true, 2, 300, 150, false);
	Move("絵演村正立絵", 0, @-380, @60, null, true);
	Delete("上背景");
	Move("絵演背景", 650, @-60, @288, Dxl2, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	Wait(200);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);
	Shake("絵演村正立絵", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("絵演村正立絵", 2300, @30, @-60, Dxl2, false);
	Fade("絵演村正立絵", 300, 1000, null, true);

	Move("絵演背景", 180000, -1024, 0, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/010vs0190a01">
《……没有攻击？》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/010vs0200a00">
「没有……啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我并未受到敌人那神秘的攻击。
　敌骑没有再对我做出攻击，就此背离。

　……这是不是意味着，它很难向自骑背后施展那诡异
的<RUBY text="··">攻击</RUBY>？

　看来可能性很高。
　除此之外，我想不出其他能让那个贪婪的敌骑就此收
手的理由。

　虽然在未明白敌骑实态的情况下，这样轻率的判断是
很危险的……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 100, 0, null);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Cockpit_AllFade0();
	Wait(1500);

//◆奇襲見切りフラグＯＮ

}

..//ジャンプ指定
//次ファイル　"mc01_011vs.nss"
