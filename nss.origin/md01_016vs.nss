//<continuation number="1360">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_016vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md01_016vs.nss","DenziBladeCharge",true);
	Conquest("nss/md01_016vs.nss","DenziBladeChargeSet",true);
	

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
	#bg095_高徳院の境内_02=true;
	#bg001_空a_02=true;
	#ev212_二世村正戦闘体勢=true;
	#ev502_村正抜刀片手=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_017.nss";

}

scene md01_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_015.nss"


//◆村正と二世
	PrintBG("上背景", 30000);
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	StR(1100, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStA(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0010a01">
《那、那种东西……根本没有意义！
　对剑胄的战斗力来说骑形才是最高的。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0020a01">
《要是对战的话一定是我赢！》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0030a15">
「那么开战？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0040a01">
《你这——》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SoundPlay("@mbgm13",0,1000,true);

//◆剣撃
//◆すかすか。避ける二世
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(10);
	Delete("絵色白");

	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	DeleteStA(0,true);
	Delete("絵演*");
	Delete("絵色白");

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0050a15">
「呼……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0060a01">
《————》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆剣撃
//◆すかすか。
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Delete("絵演*");
	DeleteStR(0,true);
	Delete("絵色白");

	SetFwC("cg/fw/fw二世村正_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0070a15">
「……在追苍蝇吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0080a01">
《烦死了！》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0090a15">
「还没清醒吗……
　真是个血液循环不好的女儿呢。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0100a15">
「胄很敏捷的对吧。
　汝要——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0110a01">
《啧！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	StC(1000, @0,@20,"cg/st/st二世村正_通常_私服.png");
	Move("@StC*", 300, @0, @-20, Dxl2, false);
	FadeStC(300,true);

//◆二世踏み込み。拳打
//◆ずがーん。
	PrintGO("上背景", 10000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("上背景", true, 3, 300, 50, false);

	CreateSE("SE02","se人体_動作_跳躍03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("上背景", 100, 2000, 2000, Dxl2, true);
	Delete("上背景");

	WaitKey(10);
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

	StL(1000, @30, @0,"cg/st/st二世村正_通常_私服.png");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0120a01">
《呜哇?!》

{	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,false);
	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0130a15">
「这也太<RUBY text="····">磨磨蹭蹭</RUBY>了。
　那种移动速度，别说是苍蝇了，连牛也抓
不到。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0140a01">
《……少得意！
　还早着呢！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆剣撃
//◆二世回避
	CreateSE("SE02","se人体_動作_跳躍02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	SetBlur("@StL*", true, 3, 300, 10, false);
	DeleteStL(150,false);
	Move("@StL*", 150, @60, @0, Dxl2, false);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightup(@-256, @0,1200);
	SL_rightupfade(0);

	StC(1000, @-60,@0,"cg/st/st二世村正_通常_私服.png");
	SetBlur("@StC*", true, 3, 300, 10, false);
	Move("@StC*", 150, @60, @0, Dxl2, false);
	FadeStC(150,true);

//◆剣撃
//◆二世回避
	CreateSE("SE02a","se人体_動作_跳躍01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	DeleteStC(150,false);
	Move("@StC*", 150, @60, @0, Dxl2, false);

	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_down(@0, @0,1200);
	SL_downfade(0);

	StR(1000, @-60,@0,"cg/st/st二世村正_通常_私服.png");
	SetBlur("@StR*", true, 3, 300, 10, false);
	Move("@StR*", 150, @60, @0, Dxl2, false);
	FadeStR(150,true);


	WaitAction("@Slash*", null);
	Delete("@Slash*");
	Delete("@slash*");

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0150a15">
「似乎总算要明白了？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0160a01">
《…………》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0170a15">
「自己那副……
　<RUBY text="·····">迟缓而笨拙</RUBY>的丑态。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0180a01">
《为什么……》

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0190a15">
「无他。」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0200a15">
「武者形态确实是最强的姿态。
　但那也同样需要有操控者。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0210a15">
「里面空无一物的铠甲算什么？
　即便说是纸老虎亦不为过……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0220a01">
《……》

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0230a15">
「既没有太刀的技术。
　也没有热量的供给。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0240a15">
「只是胡乱保持着膨大的骑体状态。
　笨重、迟钝，毫无优点。」

{	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0250a15">
「与汝的虚张声势相比——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆ＥＶ：二世村正戦闘形（古流拳法）
	Move("@StR*", 500, @-200, @0, Axl2, false);

	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DeleteStA(0,true);
	CreateTextureSP("絵ＥＶ", 100, -130, -30, "cg/ev/resize/ev212_二世村正戦闘体勢m.jpg");
	Move("絵ＥＶ", 450, -385, @0, AxlDxl, false);
	DrawDelete("絵黒幕", 300, 100, "slide_01_01_1", true);
	
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0260a01">
《……?!》

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0270a15">
「这边就效率得多了。
　就是这样！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆拳＆蹴り。コンビネーション
//◆村正吹っ飛び
	CreateSE("SE03","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("絵演", 0, @180, @0, @0, null,true);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 50, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE03a","se戦闘_攻撃_鎧_打撃01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 50, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE03b","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE03b",0,1000,0,1000,null,false);

	PrintGO("上背景", 10000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

	StR(1000, @60, @0,"cg/st/st二世村正_通常_私服.png");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0280a01">
《喀……》

{	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(150,false);
	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0290a15">
「这种形态的话只凭借心铁的
热量就足以战斗了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆二世、瞬速接近
	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreatePlainSP("絵板写", 5000);
	Fade("絵板写", 150, 1000, null, false);
	DrawTransition("絵板写", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", false);
	SetBlur("絵板写", true, 3, 500, 50, false);
	Move("絵板写", 150, -300, 58, null, false);
	Zoom("絵板写", 150, 2000, 2000, null, true);

	CreateSE("SE01b","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵演震用", 5100, Center, Middle, "cg/bg/resize/bg095_高徳院の境内_02lmex01.jpg");
	Shake("絵演震用", 300, 30, 0, 0, 0, 1000, Dxl3, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0300a01">
《!!》

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0310a15">
「要<RUBY text="···">掉下去</RUBY>了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆二世、捕まえて投げ
//◆ずがーん。
	CreateSE("SE01c","se人体_動作_跳躍03");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SetBlur("絵演震用", true, 3, 500, 30, false);
	Rotate("絵演震用", 150, @0, @0, @180, Axl2,false);
	Wait(150);
	CreateSE("SE01","se戦闘_破壊_建物02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	Wait(1);
	PrintGO("上背景", 10000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);

	CreatePlainSP("絵板写", 4999);
	Shake("絵板写", 600, 0, 100, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0320a01">
《……哈……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0330a01">
《可……恶……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、武者形態から蜘蛛へ
//◆ダメージでそうなったので、それっぽく演出。
	PrintBG("上背景", 30000);
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStL(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,500,null,false);
	StR(1100, @10, @60,"cg/st/3d村正標準_立ち_通常.png");
	Shake("@StR*", 600, 2, 0, 0, 0, 1000, null, false);
	Move("@StR*", 600, @-10, @-60, DxlAuto, false);
	FadeStR(600,true);

	WaitKey(2000);

	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 100, 1000, null, true);
	StR(1000, @0, @230,"cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0,true);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("絵フラ", 2000, true);

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0340a15">
「…………」

{	SoundPlay("@mbgm32",2000,1000,true);
	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0350a15">
「废物。
　是想玷污于父亲之名吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0360a01">
《……才……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0370a01">
《那种话……才不想让母亲来说！》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0380a15">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0390a01">
《我要是废物的话，母亲又算什么！》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0400a15">
「怎么，不服气吗。
　对胄这个母亲。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0410a01">
《当然会有吧?!
　为什么——怎么会。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0420a01">
《<RUBY text="··">又在</RUBY>到处散播灾难了吗!!》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0430a15">
「那种事问了胄又能如何。
　剑胄是听从操控者意志的——想知道的话，
还是到上面问正无聊得紧的主君为好。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0440a01">
《才不是那样！
　疯子的想法怎样都无所谓。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0450a01">
《还是之前那句话！
　母亲你为何会让那样的人类做操控者呢！》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0460a15">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0470a01">
《难道你忘了<RUBY text="外公">始祖</RUBY>的失败教训了吗?!
　我们村正是为了规戒武者的独善而存在的剑胄
——但是只要一个错误就会变成灾难的化身。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0480a01">
《所以……母亲你不该和任何人
结缘！
　就算真要结缘，也应该更加慎重地
选择对象。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0490a01">
《若是意志薄弱的人带着村正成为了武者的话，
会无法忍受善恶相抵的戒律，甚至有可能发狂
……你明明知道这些不是吗！
　但为什么还是选择了这样的人类！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0500a01">
《你是故意使她疯狂的吗！
　你像五百年前那样散播狂乱，煽动杀戮
又到底是为了什么?!》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0510a15">
「……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0520a15">
「是吗。
　……看来，似乎有些误解呢。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0530a01">
《误解……？》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0540a15">
「首先。
　胄的操纵者，没有疯狂。」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0550a15">
「不对……可能也算是疯的。
　总之，那个人本来就是<RUBY text="··">那样</RUBY>的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0560a01">
《……?!》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0570a15">
「胄是在了解那个人的人格基础上，和操纵者相
互承认，并最终结缘的……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0580a01">
《为、为什么！》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0590a15">
「三世……
　汝都已经从封印解放了，还没
学大和历史吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0600a01">
《……》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0610a15">
「让人吃惊……甚至难以置信……
　南北朝的战乱，在胄等村正带来的惨绝
人寰的杀戮之上所构建的和平时代，」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0620a15">
「竟连一百年都没能维持住。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0630a01">
《…………战国时代？》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0640a15">
「是被称作这个名字。
　不亚于南北朝的混沌乱世，似乎在
相隔数十年之后再次造访……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0650a15">
「汝如何作想？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0660a01">
《…………》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0670a15">
「不够。」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0680a15">
「<RUBY text="······">还远远不够啊</RUBY>!!」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0690a15">
「那样激烈的战斗！
　那样无情的杀戮！
　即便是那般的修罗地狱也仍然不够！」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0700a15">
「根本不够，没有让众人认识到战争的丑陋，
恶劣和那样的独善!!
　武之常态乃善恶相抵，战争没有所谓的正义——
村正所明示的真理转瞬之间便被遗忘了!!」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0710a15">
「人们毫不厌倦地沉浸在独善的漩涡之中，
战斗、杀戮……花费比南北朝更加漫长的时间，
持续毫无意义的战乱!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0720a01">
《母……母亲……》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0730a15">
「之前小看了人类的愚蠢。」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0740a15">
「胄等剑胄是将灵魂打入甲铁之中，
因此能维持永恒不变的理念……
　即使在肉身的脑髓中刻上了真理，
也会在刻印后马上遗忘。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0750a01">
《所以……所以呢？
　所以就说什么<RUBY text="······">那再来一次吧</RUBY>?!》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0760a15">
「没错。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0770a01">
《这根本就是本末倒置！
　这才不是外公所期望的！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0780a01">
《外公只不过想让更多的人记住善恶相抵的训诫，
将战争防范<RUBY text="···">于未然</RUBY>罢了——》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0790a15">
「这种想法真是肤浅。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0800a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0810a15">
「刚才汝说过的。<RUBY text="·····">始祖的失败</RUBY>。
　……那也是汝误解了。」

{//◆笑い
	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0820a15">
「父亲从未失败过。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0830a01">
《?!
　……什么，怎么会！》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0840a15">
「父亲从一开始就在思考着<RUBY text="·">表</RUBY>与<RUBY text="·">里</RUBY>。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0850a15">
「表。操纵者只是普通人，只要他理解
善恶相抵，并将这种理念传播就好。
　其次是里。操纵者被戒律所束缚且不顾
后果，不断地杀戮，那也可以。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0860a15">
「因为看到那状况的人会自己
领悟到武的罪恶。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0870a01">
《……!!》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0880a15">
「汝明白父亲的深意了吗。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0890a15">
「无论操纵者是什么样的人……
　剑胄村正背负着向世人揭示战斗与
武之真相的宿愿！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0900a01">
《……但、但是！
　就算如此“银星号”也太过分了吧?!》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0910a01">
《就算母亲你的操纵者本身就很强，但
也凶暴得太过分了！
　放着不阻止的话，是要把人类赶尽杀绝
吗——》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0920a15">
「胄根本不在乎。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0930a15">
「人类是无可救药的<RUBY text="东西">存在</RUBY>。
　仍是没有吸取南北朝灾难中的教训。」

{	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0940a15">
「不到濒临灭绝的程度就没有办法大彻大悟！
　不……说不定这个时候灭绝了也不错呢。」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0950a15">
「人类要是灭绝就不会有争斗了。
　父亲的愿望就能实现了呢!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0960a01">
《———————————————————
————————————————————
————————————————————
————————————————————》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0970a15">
「汝想说，胄疯了吗。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0980a01">
《……你疯了……》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0990a15">
「汝只不过是还不明白事理罢了。
　把人类的罪孽看得太天真了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1000a01">
《…………》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1010a15">
「哼。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1020a15">
「不懂道理。
　不谙世俗。
　不解人性。
　没有自知之明……」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1030a15">
「把操控者扔到一旁自己跑开，结果只是
像这样败倒在地发着自己的牢骚。
　这就是……村正三世，<RUBY text="我">胄</RUBY>的女儿吗。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1040a01">
《母亲……》

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1050a15">
「混账。
　<RUBY text="我">胄</RUBY>生出汝这样的废弃品，
还有何颜面去面对父亲。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1060a15">
「像汝这样……
　干脆把汝<RUBY text="····">回炉重造</RUBY>，<RUBY text="········">直接弄成佛像也好</RUBY>。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1070a01">
《!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆村正帯電
//◆違法変身再び
	CreateSE("SE01","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreatePlainEXadd("絵板写", 5000);
	SetVertex("絵板写", 740, 480);
	Zoom("絵板写", 600, 1200, 1200, Dxl2, false);
	Fade("絵板写", 600, 800, null, true);
	WaitKey(100);
	FadeDelete("絵板写", 600, true);

	CreateSE("SE01a","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	CreateSE("SE03","se特殊_鎧_駆動音01");
	MusicStart("SE01a",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	MusicStart("SE03",0,1000,0,750,null,false);
	StR(1100, @10, @60,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	Move("@StR*", 1200, @-10, @-60, DxlAuto, false);
	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1080a01">
《母——母亲你……！》

{	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1090a15">
「呵呵，能站起来了吗？」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1100a15">
「唔……必须站起来吧？
　被说成这样，要舍弃对手的话，
可就守不住剑胄的脸面了。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1110a15">
「等于承认了自己是废铁一般……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1120a01">
《……》

{	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1130a15">
「不过，可惜啊。
　女儿哟……」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1140a15">
「汝就是块废铁。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1150a01">
《闭嘴!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆電磁抜刀準備
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 600, @150, @0, AxlDxl, false);
	Fade("絵色白", 300, 1000, null, true);

	CreateTextureEX("絵演", 4000, -440, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_cm.jpg");
	FadeDelete("絵色白", 1000, false);
	Move("絵演", 300, @60, @0, Dxl2, false);
	Fade("絵演", 300, 1000, null, true);

	CreateSE("SEL01","se特殊_電撃_帯電02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEXadd("プロ絵上", 4020, -380, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dm.jpg");
	CreateTextureEXsub("プロ絵", 4010, -380, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dm.jpg");
	SetVertex("プロ絵", 1160, 470);

	DenziBladeCharge();

	SetFwC("cg/fw/fw二世村正_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1160a15">
「利用磁力互斥的拔刀术……
　这是汝的<RUBY text="···">操纵者</RUBY>完成的最高技艺吧。」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1170a15">
「那玩意能行吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1180a01">
《斩……！》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1190a15">
「……切。 」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二世戦闘絵
	CreateSE("SE03","se人体_動作_跳躍03");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演弐上", 5100, Center, Middle, "cg/ev/ev212_二世村正戦闘体勢.jpg");
	CreateTextureSP("絵演弐", 5000, Center, Middle, "cg/ev/ev212_二世村正戦闘体勢.jpg");
	Zoom("絵演弐上", 0, 1200, 1200, null, false);
	Zoom("絵演弐上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演弐上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	DrawDelete("絵演弐上", 200, 100, "zoom_01_00_1", true);

	SetFwR("cg/fw/fw二世村正_叱咤.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1200a15">
「来吧。」

{	FadeDelete("絵演弐", 300, false);
	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1210a01">
《唔啊啊啊啊啊啊啊啊!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆電磁抜刀
//◆ずぎゅーん。
//◆光が収まってゆくと
//◆二世戦闘絵。そのまんま。無事。
	SetVolume("SE*", 1000, 0, null);
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");
	Fade("絵色白", 1000, 1000, Axl2, true);

	MovieSESet(15000,"mv電磁抜刀_禍","se特殊_mv用_電磁抜刀_禍");
	MovieSEStart(1500);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵ＥＶ", 4000, -397, InBottom, "cg/ev/resize/ev212_二世村正戦闘体勢_bm.jpg");
	Delete("上背景");
	Delete("Ｐ*");
	Delete("プロ*");
	SetVolume("@mbgm*", 3000, 0, null);
	Move("絵ＥＶ", 5000, @0, -154, DxlAuto, false);
	FadeDelete("絵暗転", 3000, true);

	Wait(2000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1220a01">
《……?!》

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1230a15">
「汝不过是一个自万里晴空之下步入
黑暗的无知之辈!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆一撃
	//CreatePlainSP("絵板写", 5000);
	PrintGO("絵板写", 5000);
	SetBlur("絵板写", true, 3, 500, 50, false);
	SetVertex("絵板写", 410, 250);//ダミー注意
	CreateSE("SE01","se人体_動作_跳躍03");
	CreateTextureSPadd("絵演効果", 6000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Zoom("絵演効果", 0, 1000, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵板写", 300, 1500, 1500, Dxl2, false);
	Zoom("絵演効果", 300, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "circle_01_00_1", true);

//◆どぎゃーん。
	CreateSE("SE01a","se戦闘_破壊_建物02");
	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);


	CreateTextureSPadd("絵演上", 7100, Center, Middle, "cg/ef/resize/ef042_汎用打撃tl.jpg");
	CreateTextureSP("絵演", 7000, Center, Middle, "cg/ef/resize/ef042_汎用打撃tl.jpg");
	Move("絵演", 3000, @0, @200, null, false);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆村正、瀕死
	Delete("絵板写");
	Delete("絵ＥＶ");
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	FadeBG(0,true);
	FadeDelete("絵演", 1000, true);

	CreateSE("SE01c","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreatePlainSPadd("絵板写", 110);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Shake("絵板写", 300, 0, 20, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1240a01">
《……啊……唔……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ばちばち。故障っぽい帯電
	CreateSE("SE02","se日常_機械_電気ショート帯電01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 200, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1250a01">
《……呜……》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1260a15">
「热量耗尽，无法再生。
　……因为汝使用了超过身体承受限度的武技。」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1270a15">
「没有才华没有本心就玩弄太刀的蠢货！
　活该接受与之相当的凄惨结局！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1280a01">
《…………》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1290a15">
「这是胄最后的慈悲。
　让胄这个母亲来送汝一程吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆二世戦闘絵
	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev212_二世村正戦闘体勢.jpg");
	Zoom("絵ＥＶ", 0, 1500, 1500, null, true);
	SetBlur("絵ＥＶ", true, 3, 500, 60, false);
	Zoom("絵ＥＶ", 300, 1000, 1000, Dxl2, false);
	Fade("絵ＥＶ", 200, 1000, null, true);

	SetFwR("cg/fw/fw二世村正_叱咤.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1300a15">
「去死吧。」

{	FwR("cg/fw/fw光影_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/016vs1310a14">
「——等等。村正。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆高徳院境内＋二世
	PrintBG("上背景", 30000);
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeBG(0,true);
	FadeStL(0,true);
	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1320a15">
「主君？
　别阻止胄。胄想一雪家族之耻。」

{	FwC("cg/fw/fw光影_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/016vs1330a14">
「我明白你的心情，但是……
　没办法啊。」

//【光】
<voice name="光" class="光" src="voice/md01/016vs1340a14">
「余兴节目到此为止，<RUBY text="···">那边也</RUBY>发话了。」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1350a15">
「…………」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1360a15">
「汝在等待的人吗……正巧。
　这愚蠢的家伙，看起来有一些运气呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//――――――――――――――――――――――――



}

..//ジャンプ指定
//次ファイル　"md01_017.nss"

.//プロセス用======================================================

..//電磁抜刀放電ループ
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
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	}

}