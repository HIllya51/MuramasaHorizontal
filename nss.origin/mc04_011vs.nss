//<continuation number="950">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_011vs.nss_MAIN
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

	$GameName = "mc04_012.nss";

}

scene mc04_011vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_010.nss"

//◆玄関前の攻防
//◆銃撃戦ＳＥ。但しマシンガンは無し。
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");

	CreateSE("銃撃戦", "se戦闘_銃器_拳銃銃撃戦01_L");
	MusicStart("銃撃戦", 0, 1000, 0, 1000, null,true);
	OnBG(100, "bg087_大鳥邸玄関前a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm12", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒", 1500, true);

	SetNwC("cg/fw/nw大鳥軍将校Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0010e168">
「……可恶！
　那个畜生，把车当做了盾牌！」


//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0020e168">
「而且明明是个老太婆，还这么快这么烦
这么准确……很难对付啊！
　其他班还没准备好吗!?」


{	NwC("cg/fw/nw大鳥軍兵士Ｋ.png");}
//【ｅｔｃ／大鳥兵士Ｋ】
<voice name="ｅｔｃ／大鳥兵士Ｋ" class="その他男声" src="voice/mc04/011vs0030e181">
「还没好！
　没有给我们信号。」


{	NwC("cg/fw/nw大鳥軍兵士Ｌ.png");}
//【ｅｔｃ／大鳥兵士Ｌ】
<voice name="ｅｔｃ／大鳥兵士Ｌ" class="その他男声" src="voice/mc04/011vs0040e182">
「至少如果能没有那个<RUBY text="墙">车</RUBY>的话……
　队长，用手枪很难有效果。
用自动火炮来一口气……」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0050e168">
「要是老太婆身后不是宅邸，
我早就那么做了啊！
　如果流弹打破了墙，命中一个有身份的人，
我们所有人都要砍头啊。」


{	NwC("cg/fw/nw大鳥軍兵士Ｌ.png");}
//【ｅｔｃ／大鳥兵士Ｌ】
<voice name="ｅｔｃ／大鳥兵士Ｌ" class="その他男声" src="voice/mc04/011vs0060e182">
「我们就这样被挡在这里，恐怕也是同样的后
果！
　想想狮子吼大人的性格啊！」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0070e168">
「……」


{	NwC("cg/fw/nw大鳥軍兵士Ｍ.png");}
//【ｅｔｃ／大鳥兵士Ｍ】
<voice name="ｅｔｃ／大鳥兵士Ｍ" class="その他男声" src="voice/mc04/011vs0080e183">
「啧……
　就是说一发命中就可以了。一发！」


{	NwC("cg/fw/nw大鳥軍兵士Ｍ.png");}
//【ｅｔｃ／大鳥兵士Ｍ】
<voice name="ｅｔｃ／大鳥兵士Ｍ" class="その他男声" src="voice/mc04/011vs0090e183">
「打中那个不像是上了年纪的臭老太婆——」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0100e168">
「笨蛋，别轻易探头！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばきゅーん。撃たれた
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Fade("フラッシュ白",300,0,null,true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｍ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／大鳥兵士Ｍ】
<voice name="ｅｔｃ／大鳥兵士Ｍ" class="その他男声" src="voice/mc04/011vs0110e183">
「呃啊——!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ばた。
	OnSE("se人体_衝撃_転倒01", 1000);

	SetNwC("cg/fw/nw大鳥軍将校Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0120e168">
「……呜……」


{	NwC("cg/fw/nw大鳥軍兵士Ｋ.png");}
//【ｅｔｃ／大鳥兵士Ｋ】
<voice name="ｅｔｃ／大鳥兵士Ｋ" class="その他男声" src="voice/mc04/011vs0130e181">
「队长！」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0140e168">
「什么事!?」


{	NwC("cg/fw/nw大鳥軍兵士Ｋ.png");}
//【ｅｔｃ／大鳥兵士Ｋ】
<voice name="ｅｔｃ／大鳥兵士Ｋ" class="その他男声" src="voice/mc04/011vs0150e181">
「是信号。」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0160e168">
「————」


//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0170e168">
「……好。支援吧。
　把敌人的注意力吸引到这边。」


//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0180e168">
「随我一起，全员同时——」


{	NwC("cg/fw/nw大鳥軍兵士Ｌ.png");}
//【ｅｔｃ／大鳥兵士Ｌ】
<voice name="ｅｔｃ／大鳥兵士Ｌ" class="その他男声" src="voice/mc04/011vs0190e182">
「呃!?
　队，队长！　老太婆她！」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0200e168">
「这次又是什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がっちゃん。擲弾筒用意
	OnSE("se戦闘_攻撃_擲弾筒準備", 1000);

	Wait(1000);

	SetNwC("cg/fw/nw大鳥軍将校Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0210e168">
「…………」


//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0220e168">
「榴，榴弹炮……！
　还藏了一个吗!!」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0230a04">
「这是最后一发。
　那么诸君，向你们问好。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずどーん。ぼーん。吹っ飛んだ。

	SetVolume("銃撃戦", 1000, 0, null);

/*
	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);
	
	CreateTextureSP("爆発", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	CreatePlainEX("絵板写", 900);
	Fade("絵板写", 0, 1000, null, true);
	Zoom("絵板写", 0, 2000, 2000, null, true);

	Shake("絵板写", 1000000, 2, 3, 0, 0, 1000, DxlAuto, false);
	DrawTransition("黒幕１", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	Delete("黒幕１");

	Zoom("絵板写", 2000, 1000, 1000, null, true);

	Delete("絵板写");

	FadeDelete("爆発", 1500, true);

*/
	CreateSE("SE00a","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE00a",0,1000,0,800,null,false);

	WaitKey(1000);

	OnSE("se戦闘_破壊_爆発03", 1000);

	CreateTextureEX("爆発", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEXadd("爆発2", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	Request("爆発*", Smoothing);
	Zoom("爆発", 0, 1500, 1500, null, true);
	Zoom("爆発2", 0, 2000, 2000, null, true);

	Shake("爆発", 300, 20, 20, 0, 0, 200, Dxl3, false);
	Fade("爆発", 150, 1000, null, false);
	Fade("爆発2", 150, 200, null, true);
	Fade("爆発2", 150, 0, null, true);

	Shake("爆発", 950, 40, 40, 0, 0, 200, Dxl3, false);

	Fade("爆発2", 300, 1000, null, false);

	CreateColorSP("白", 15000, "WHITE");
	DrawTransition("白", 100, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);

	CreatePlainSPadd("絵板写", 110);
	Fade("絵板写", 2100, 0, DxlAuto, false);
	Shake("絵板写", 2100, 0, 20, 0, 0, 1000, Dxl1, false);

	Delete("爆発2");
	FadeDelete("爆発",1000,false);
	FadeDelete("白", 1800, true);

	WaitKey(500);

	WaitAction("絵板写", null);
	Delete("絵板写");

//◆さよ

//伏せてたのが起きる という演出 inc櫻井
	StC(1000, @0, @60, "cg/st/stさよ_通常_私服.png");
	Move("@StC*", 300, @0, @-60, DxlAuto, false);

	FadeStC(300, true);

	SetFwR("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0240a04">
「那么。
　这样就暂时是<RUBY text="Ｉｎｔｅｒｍｉｓｓｉｏｎ">休息时间</RUBY>了。」


{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0250a04">
「——哦？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆斬撃
//◆すさー。避ける婆さん。


	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_down(@0, @0,1200);
	SL_downfade(10);


	Move("@StC*", 100, @-200, @0, DxlAuto, false);


	Wait(200);


	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0260a04">
「伏兵……原来如此。
　真正的目标是这边吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士数人。白兵装備

	StR(1000, @80, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	StCR(900, @-80, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);
	Rotate("@StMR*", 0, @0, @180, @0, null, true);

	FadeStCR(300, false);
	Wait(150);
	FadeStR(300, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｎ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0270e184">
「这个老太婆快得吓人。
　为什么刚才那下能躲开？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0280a04">
「因为我每天都有练习反复横跳。」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0290e184">
「……不过，枪已经扔掉了呢。
　上衣里面也不像是藏着枪的样子。」



//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0300e184">
「就到此为止吧？」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0310a04">
「你的意思是……」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0320e184">
「我没有说什么复杂的话吧。
　双手放到脑后，趴到那边。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0330a04">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆伏せ。
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,850,null,false);
	Move("@StC*", 300, @0, @100, null, false);
	DeleteStC(300,true);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0340a04">
「这样可以吗？」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0350e184">
「……虽然是我说让你做的。
　可你这样也太听话了吧。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0360a04">
「以前大家就说我是个率直的好孩子。」



{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0370e184">
「你怎么想？」


{	NwC("cg/fw/nw大鳥軍兵士Ｏ.png");}
//【ｅｔｃ／大鳥兵士Ｏ】
<voice name="ｅｔｃ／大鳥兵士Ｏ" class="その他男声" src="voice/mc04/011vs0380e185">
「一五〇％是陷阱。」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0390e184">
「嗯。我也这么认为。
　就这样砍了吧。」


{	NwC("cg/fw/nw大鳥軍兵士Ｏ.png");}
//【ｅｔｃ／大鳥兵士Ｏ】
<voice name="ｅｔｃ／大鳥兵士Ｏ" class="その他男声" src="voice/mc04/011vs0400e185">
「赞成。」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0410a04">
「敬老精神不够啊踢！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆足を薙ぎ払う蹴り
//◆兵士転倒

	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateMovie("ムービー１", 1200, Center, Middle, false, false, "dx/mv剣戟_右から左.ngs");
	WaitAction("ムービー１", null);
	Delete("ムービー１");

	Shake("@StR*", 300, 3, 1, 0, 0, 1000, DxlAuto, false);
	Shake("@StMR*", 300, 3, 1, 0, 0, 1000, DxlAuto, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｎ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0420e184">
「呃啊!?」


{	NwC("cg/fw/nw大鳥軍兵士Ｏ.png");}
//【ｅｔｃ／大鳥兵士Ｏ】
<voice name="ｅｔｃ／大鳥兵士Ｏ" class="その他男声" src="voice/mc04/011vs0430e185">
「——<RUBY text="Ｃａｐｏｅｒｉａ">黑人踢技术</RUBY>？」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0440a04">
「不是，这只是胡乱模仿而已！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆下から突き上げる蹴り
//◆兵士倒す
//◆起きるさよ。格闘用立ち絵？
	OnSE("se戦闘_攻撃_殴る01", 1000);

	CreateTextureEX("絵背景501", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵背景501", 0, 1200, 1200, null, false);
	FadeFR2("絵背景501",0,1000,300,@0,@0,40,Dxl2, true);
	DeleteStR(0, false);
	DeleteStCR(0, true);
	OnSE("se人体_衝撃_転倒03", 1000);

	FadeDelete("絵背景501", 1000, true);

	OnSE("se人体_動作_一歩", 1000);

	StL(1000, @50, @100, "cg/st/stさよ_戦闘_私服.png");
	FadeStL(300, false);

	Move("@StL*", 300, @-50, @-100, null, true);
	SetBlur("@StL*", true, 3, 500, 30,false);

	StCR(900, @-20, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	StR(1000, @140, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);
	Rotate("@StMR*", 0, @0, @180, @0, null, true);

	Move("@StMR*", 300, @-60, @0, Dxl2, false);
	FadeStCR(300, false);
	Wait(100);
	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(300, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｐ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／大鳥兵士Ｐ】
<voice name="ｅｔｃ／大鳥兵士Ｐ" class="その他男声" src="voice/mc04/011vs0450e186">
「老太婆……！」


{	NwC("cg/fw/nw大鳥軍兵士Ｑ.png");}
//【ｅｔｃ／大鳥兵士Ｑ】
<voice name="ｅｔｃ／大鳥兵士Ｑ" class="その他男声" src="voice/mc04/011vs0460e187">
「看来你是想要至死方休啊。」



{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0470a04">
「不是那样的哦？
　到了这种岁数，<RUBY text="··">玩着</RUBY>杀人已经很辛苦了……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0480a04">
「所以请放心吧。
　我会把你们<RUBY text="····">弄个半死</RUBY>的。」


{	NwC("cg/fw/nw大鳥軍兵士Ｐ.png");}
//【ｅｔｃ／大鳥兵士Ｐ】
<voice name="ｅｔｃ／大鳥兵士Ｐ" class="その他男声" src="voice/mc04/011vs0490e186">
「总之——闭上你的嘴！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆唐竹に斬り
//◆さよ、避け
//◆拳打
//◆兵士食らって倒れ

	Move("@StL*", 100, @180, @0, AxlAuto, false);

	CreateTextureSPadd("絵背景500", 10000, -200, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateTextureSPadd("絵背景501", 10000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");

	OnSE("se戦闘_攻撃_殴る02", 1000);

	Zoom("絵背景501", 0, 1200, 1200, null, false);
	Zoom("絵背景501", 200, 1000, 1000, Dxl2, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, false);


	Move("@StR*", 300, @0, @100, null, false);
	DeleteStR(300, false);
	OnSE("se人体_衝撃_転倒03", 1000);


	FadeDelete("絵背景*", 500, true);

	SetNwL("cg/fw/nw大鳥軍兵士Ｑ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／大鳥兵士Ｑ】
<voice name="ｅｔｃ／大鳥兵士Ｑ" class="その他男声" src="voice/mc04/011vs0500e187">
「杀——!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆次の兵士
//◆横薙ぎ
//◆さよ、しゃがみ避け
//◆アッパー
//◆兵士食らう。倒れ

	CreateTextureSPadd("絵背景500", 10000, -200, 0, "cg/ef/ef014_汎用横軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	Move("@StL*", 100, @0, @60, DxlAuto, true);

	FadeDelete("絵背景500", 1000, false);



	OnSE("se戦闘_攻撃_殴る01", 1000);
	CreateColorSPadd("白", 15000, "WHITE");
	Move("@StL*", 300, @50, @-60, DxlAuto, false);
	DeleteStL(300,false);
	DrawDelete("白", 200, 80, "slide_07_00_1", true);


	Move("@StMR*", 300, @0, @100, null, false);
	DeleteStCR(300, false);
	OnSE("se人体_衝撃_転倒03", 1000);

	FadeDelete("絵背景*", 500, true);



//◆次の兵士。二人
//◆袈裟斬り
//◆さよ避け
//◆ハイキック
//◆兵士一人倒れ


	StR(1000, @60, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	StCR(900, @-60, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	StC(1000, @0, @30, "cg/st/stさよ_戦闘_私服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);
	Rotate("@StMR*", 0, @0, @180, @0, null, true);

	FadeStC(300, false);

	SetBlur("@StL*", true, 3, 500, 50,false);

	FadeStR(300, false);

	FadeStCR(300, true);



	Move("@StC*", 100, @180, @-30, null, false);
	DeleteStC(100, true);

	CreateTextureSPadd("絵背景500", 10000, -200, 0, "cg/ef/ef011_汎用斜め軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateTextureSPadd("絵背景501", 11000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");

	OnSE("se戦闘_攻撃_殴る03", 1000);

	Zoom("絵背景501", 0, 1200, 1200, null, false);
	Zoom("絵背景501", 200, 1000, 1000, Dxl2, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	Move("@StR*", 300, @0, @100, null, false);
	DeleteStR(300, false);
	OnSE("se人体_衝撃_転倒03", 1000);

	FadeDelete("絵背景*", 500, true);


//◆もう一方の兵士、中央に位置移動
//◆刺突
//◆さよ避け
//◆正面直突き。ずがん。

	DeleteStCR(150,true);

	StC(900, @0, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	FadeStC(150, true);


	OnSE("se戦闘_攻撃_刀振る02",1000);
	SL_centerin(@50, @0,1000);

	SL_centerinfade2(5);


	CreateTextureSP("絵背景501", 11000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵背景501", 0, 1100, 1100, null, true);

	OnSE("se戦闘_攻撃_殴る05", 1000);

	Zoom("絵背景501", 200, 1300, 1300, null, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, true);


	FadeDelete("絵背景*", 500, true);



//◆鳩尾を打ち抜かれたと思いねえ。

	SetNwL("cg/fw/nw大鳥軍兵士Ｒ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／大鳥兵士Ｒ】
<voice name="ｅｔｃ／大鳥兵士Ｒ" class="その他男声" src="voice/mc04/011vs0510e188">
「——呃、啊——」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ばたん。兵士倒れ
//◆↑以上の演出の詳細はリソースと相談。

	OnSE("se人体_衝撃_転倒03", 1000);
	Move("@StC*", 300, @0, @100, null, false);
	Shake("@StC*", 300, 2, 1, 0, 0, 500, null, false);
	DeleteStC(300, true);

//◆さよ

	StL(1500, @0, @0, "cg/st/stさよ_通常_私服.png");
	StR(900, @0, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);

	FadeStR(300, false);
	FadeStL(300, true);


	SetNwC("cg/fw/nw大鳥軍兵士Ｎ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0520e184">
「………………」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0530a04">
「如果想要起身鼓掌，不用客气，请吧。」



{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0540e184">
「这有可能吗？」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0550a04">
「亲眼所见就是真实。
　不过，看不到的地方也存在
许多你所不知道的真相呢。」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0560e184">
「我该怎么报告啊……
　如果说被一个老太婆给踢败了，
狮子吼大人不可能饶了我……」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0570e195">
《放心吧。中将阁下是讲道理的人。
　只要你说<RUBY text="·······">对手是永仓纱代</RUBY>，
他会接受的。》


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0580a04">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆竜騎兵着陸。次々と。

	OnSE("se戦闘_動作_鎧_着地01", 1000);

	DeleteStA(300,true);

	WaitKey(1500);
	OnSE("se特殊_鎧_駆動音02", 1000);

	StR(1000, @160, @0, "cg/st/3d九四式竜騎兵_立ち_通常.png");
	StCR(1000, @-100, @0, "cg/st/3d九〇式指揮官_立ち_通常.png");

	StL(1000, @40, @0, "cg/st/3d九四式指揮官_立ち_通常.png");

	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeStL(300, false);
	Wait(100);
	CreateSE("SE01a","se人体_足音_鎧歩く04");
	MusicStart("SE01a",0,1000,0,800,null,false);
	FadeStR(300, false);
	Wait(100);
	CreateSE("SE01b","se人体_足音_鎧歩く04");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	FadeStCR(300, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｎ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0590e184">
「龙——<RUBY text="Ｄｒａｇｏｏｎｓ">龙骑兵队</RUBY>!!」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0600a04">
「……一个接着一个真是困扰啊。
　想让我这个老太婆表演
古装话剧的主人公是吗……」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0610a04">
「我这样年迈，到现在只是想要平静地度过余
生而已，能不能别太让我勉强自己了啊。」



{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0620e195">
「你说笑了。
　永仓流骨法术的威力，
看起来完全没有减退啊。」


//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0630e195">
「让我想起十年前被你一次次摔在道场地板上
的日子了。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0640a04">
「……哎呀。
　怪不得我觉得声音有些熟悉。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0650a04">
「原来是以前我疼爱过的<RUBY text="···">小孩子</RUBY>啊。」



{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0660e195">
「……嗯。不仅仅是小官我。
　现在这里一半的人，
自尊心都曾经被你折断过。」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0670e196">
「————」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／大鳥竜騎Ｃ】
<voice name="ｅｔｃ／大鳥竜騎Ｃ" class="その他男声" src="voice/mc04/011vs0680e197">
「————」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0690a04">
「这真是令人怀念啊。
　这像是正式的同窗会呢。」



{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0700a04">
「久别重逢，大家来叙叙旧吧。
　哎呀，人老了之后，大家这样聚起来
才是最让人高兴的啊。」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0710e195">
「……即使你有这样的要求。
　我还是必须履行职责。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0720a04">
「哎呀不要这样说啊。
　我正是为了这种情况做了准备，那边的车里
也有美酒佳肴哦。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0730e195">
「…………」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0740e196">
「高远，别跟她废话。
　如果再给她时间，
不知道她还会做出些什么事来。」


//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0750e196">
「比老奸巨猾，我们敌不过她。
　必须什么也不去思考地斩杀，
我们只该贯彻这一点。」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0760e195">
「我知道。
　她是和香奈枝大人一同被流放到海外的，永
仓的鬼子母神……到底有多么<RUBY text="····">不好对付</RUBY>，
不用我现在告诉你吧。」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0770e196">
「嗯。」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0780a04">
「……不对。
　稍微等一下。刚才那句话停下。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0790a04">
「我可以明确地告诉你们，被流放到海外的只
有香奈枝大人自己，本人纱代只是以自己的意
志和香奈枝大人同行的哦？
　我们才不是被一同扔掉的呢。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0800a04">
「这部分一定不能搞错。」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0810e195">
「…………」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0820e196">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


//◆ムカ表情。笑顔に怒りマークか。

	SetFwC("cg/fw/fwさよ_笑顔.png");
	SetComic(@0, @0, 15);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0830a04">
「你们这种眼神，是百分之二百的不信啊。
　如果怀疑老师说的话，
那无论什么事都无法提高。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0840a04">
「常静子曰，不信师言者无法究其深奥——」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0850e195">
「——若师言可徒手胜金刚而信者，
亦无法究其深奥。」



{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0860a04">
「……别引用对我不利的地方。」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0870e196">
「高远。」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0880e195">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆竜騎兵抜刀


//	OnSE("se戦闘_動作_武装準備01", 1000);

	StR(900, @100, @0, "cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	StL(900, @0, @0, "cg/st/3d九四式指揮官_立ち_抜刀.png");
	StCR(1000, @-100, @0, "cg/st/3d九〇式指揮官_立ち_抜刀b.png");
	OnSE("se戦闘_動作_刀構え01", 1000);

	FadeStR(250, true);
	OnSE("se戦闘_動作_刀構え01", 1000);

	FadeStL(350, true);
	OnSE("se戦闘_動作_刀構え01", 1000);

	FadeStCR(550, true);


	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0890e195">
「用刀指向恩师，这是大逆不道……但这也是
吾主之命。
　不，作为武道来说，
我认为这才是对老师的报恩——」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0900a04">
「不那是不可能的。
　那段听起来好像很微妙很合理的部分其实果
然也只是对恩师恩将仇报吧，从常识考虑的话。」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0910e196">
「以寡敌众的数量之差，
你大概是不会在意的吧……
　但即使是领略到精妙的人，
也有无法挽回的劣势。」

//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0920e196">
「没有剑胄者，无法战胜剑胄！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵展開

	StR(1000, @100, @0, "cg/st/3d九四式竜騎兵_立ち_戦闘a.png");
	StL(1000, @0, @0, "cg/st/3d九四式指揮官_立ち_戦闘c.png");
	StCR(1000, @-100, @0, "cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	OnSE("se戦闘_動作_刀構え02", 1000);

	FadeStR(50, true);
	OnSE("se戦闘_動作_刀構え02", 1000);

	FadeStL(50, true);
	OnSE("se戦闘_動作_刀構え02", 1000);

	FadeStCR(50, true);


	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0930e195">
「觉悟吧!!」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0940a04">
「——呼。
　还是和以前一样，都是一些<RUBY text="·····">没用的孩子</RUBY>。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0950a04">
「你们到底在看什么呢。
　剑胄的话……<?>
{Wait(500);}
早就已经穿上了啊。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_012.nss"