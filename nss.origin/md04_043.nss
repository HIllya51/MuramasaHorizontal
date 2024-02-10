//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_043.nss_MAIN
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
	#bg103_普陀楽城外郭藤沢方面_01=true;
	#ev002_銀星号事件イメージ２=true;
	#bg002_空a_01=true;
	#bg001_空b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_044.nss";

}

scene md04_043.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_042.nss"


//◆城周辺
//◆阿鼻叫喚


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm37", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430010a01">
「怎么会……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我哑口无言，与此同时咬着牙发出呻吟。
　不是练习什么奇技，而是自然而然的。

　本来由于攻城军开始撤退，终于得到混入城内的机会。
　不，其实已经实际踏入城内了。

　但却立刻被逼退了出来。
　
　因为，踏入已然化为狂躁之所、交织着无尽枪林弹雨
的城中，是不可能的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士ら、無差別闘争

	CreateTextureEX("兵士", 15000, @0, @0, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Fade("兵士", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430020a01">
（为什么会这样……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我明白眼前发生的事情意味着什么。
比化为暴徒的他们本身还要理解。
　银星号的出现，造成了精神污染。除此之外
别无可能。

　但，为何此刻应该身在伊豆堀越的凑斗光——
银星号会出现在普陀乐城？
　是足利茶茶丸带来的吗？ 

　若是如此的话，茶茶丸的目的又是什么？
　在这座城中放出破坏和杀戮的化身，有何意义——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆狂乱兵士
	FadeDelete("兵士",500,true);

	OnSE("se人体_衝撃_転倒02",1000);

	StL(1000, @-60, @110, "cg/st/st六波羅兵士_通常_制服.png");
	FadeStL(300, true);
	Move("@StL*", 500, @60, @-100, AxlAuto, true);
	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	OnSE("se人体_衝撃_転倒04",1000);
	Move("@StL*", 500, @-10, @-10, AxlAuto, true);




	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430030a01">
「又没叫你！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆糸
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStL(0,true);
	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

//◆カキーン
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵背景20",300,true);

	OnSE("se人体_衝撃_転倒03",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　千钧一发地，抢先向举枪的发狂士兵放出丝。
　捆住其全身，将对方拽倒在地。

　士兵发出野兽一般的嚎叫，在地上打滚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430040a01">
（现在不是做这种事的时候）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　虽然不知道她的真实意图，但若这是茶茶丸的计划，
那么一定已到了<RUBY text="····">最后阶段</RUBY>。
　有什么即将开始，或是结束。

　会变成无法挽回的事态。

　会无法带回主君。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430050a01">
（……都来到这里了！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　焦躁涌上心头。
　即便如此，再怎么四处张望，运用侦查机能，
也无法找到突破口。

　四周一片混乱、纷乱、混沌。
　别说前进了，要是不快点后退，自己也会被卷入
其中，就此消亡吧。


　怎么办才好……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆狂乱兵士三人

	OnSE("se戦闘_銃器_複数構える01",1000);

	StL(1100, @-60, @0, "cg/st/st六波羅兵士_通常_制服.png");
	StCL(1000, @160, @0, "cg/st/st六波羅兵士_通常_制服.png");
	StR(1000, @0, @0, "cg/st/st六波羅兵士_通常_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null,true);

	FadeStL(300, false);
	FadeStCL(300, false);
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430060a01">
「啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　糟了。
　
　回过神来，已经让一群暴徒近身。

　要逃的话，他们已经太接近，太迟了。
　拿出实力作战的话，对方人数太多。

　他们的枪若是一齐开火，即便以我剑胄之身也……


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430070a01">
（赶得上吗?!）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆糸
	OnSE("se特殊_生物_蜘蛛の糸吐く01", 1000);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　向前方发出无数的丝。
　若是这些丝能阻挡片刻也好——<k>但
————<k>不行！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆糸張り
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	OnSE("se特殊_生物_蜘蛛の糸吐く01", 1000);


	CreateTextureEX("絵背景20", 4900, Center, Middle, "cg/ef/ef035_蜘蛛網捕獲.jpg");
	Request("絵背景20", Smoothing);

	Fade("絵背景20", 0, 1000, null, true);
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", false);
	Zoom("絵背景20", 1500, 1200, 1200, Dxl2, false);

	Wait(1500);

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430080a03">
《<RUBY text="柏洛兹">赝作弓圣</RUBY>
——<RUBY text="Ｄｉｓｐｅｒｓｉｏｎ Ｓｈｏｏｔ">散射</RUBY>。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆分散射撃
	OnSE("se戦闘_バロウズ_分散射撃", 1000);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	Wait(1000);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef033_分散射撃.jpg");
	CreateTextureEXadd("絵背景30", 4900, Center, Middle, "cg/ef/ef033_分散射撃.jpg");

	SetVertex("絵背景30", 0, 0);

	OnSE("se戦闘_バロウズ_ボーガン射撃01", 1000);
	FadeF4("絵背景30", 500, 800, 1000, 0, 0, Axl2, false);
	Zoom("絵背景30", 1000, 1100, 1100, Dxl1, false);
	DrawTransition("絵フラ", 100, 1000, 0, 300, null, "cg/data/slide_03_00_1.png", true);

	Wait(700);
	DrawTransition("絵フラ", 200, 0, 1000, 300, null, "cg/data/slide_03_00_0.png", true);
	Delete("絵背景*");

	Wait(300);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430090a01">
「……咦？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_殴打連撃02_L",1000);
	Wait(800);
	SetVolume("OnSE*", 200, 0, null);

	OnSE("se戦闘_動作_鉄壁吹っ飛ばす",1000);

	FadeDelete("絵フラ",1000,true);

	OnSE("se人体_衝撃_転倒05",1000);
	Wait(200);
	OnSE("se人体_衝撃_転倒04",1000);
	Wait(200);
	OnSE("se人体_衝撃_転倒03",1000);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　会被打成蜂窝——在如此想着的瞬间。
　数支箭飞来，将士兵们的武器——连手臂一齐
——刺穿了。

　箭势十分强劲。
　士兵群被冲散，一个个地倒下。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バロウズ
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateSE("se特殊_鎧_駆動音01", "se特殊_鎧_駆動音01");
	MusicStart("se特殊_鎧_駆動音01", 0, 1000, 0, 400, null, false);
	Wait(200);
	StC(1000, @-120, @0, "cg/st/3dバロウズ_立ち_通常.png");
	FadeStC(300, false);
	Move("@StC*", 300, @100, @90, Dxl1, false);
	Wait(200);
	SetVolume("@OnSE*", 0, 0, null);

	Shake("@StC*", 500, 0, 3, 0, 0, 600, Dxl2, true);
	Wait(300);
	OnSE("se特殊_鎧_駆動音01", 1000);
	Wait(200);	// 都合500のWaitを途中SEのタイミング併せて調整
	Move("@StC*", 800, @15, @-40, Dxl3, true);
	Wait(200);
	CreateSE("se特殊_鎧_駆動音01", "se特殊_鎧_駆動音01");
	MusicStart("se特殊_鎧_駆動音01", 0, 1000, 0, 600, null, false);
	Move("@StC*", 800, @-5, @-50, Axl1, true);
	Wait(200);

	SoundPlay("@mbgm18", 0, 1000, true);

	SetFwR("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430100a03">
「<RUBY text="蜘蛛">村正</RUBY>公主殿下，您没事吧？」

{	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430110a01">
「你是……大鸟香奈枝?!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　现身的武者所装备的剑胄我并没有印象。
　但是，声音唤起了记忆。

　对方是有段时间曾经一同行动过的女子。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//■時間経過？ inc櫻井
//	CreateColorEX("黒", 3000, "BLACK");
//	Fade("黒", 1000, 1000, null, true);
//	Fade("黒", 500, 0, null, true);
//	Delete("黒");

	SetFwR("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430120a01">
「……对了。那个巨大的乐器！
　我就说哪里有点奇怪。」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//嶋：修正（説明して）【090930】
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430130a03">
「没错。
　我正想对你详细说明呢。」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430140a03">
「但现在似乎不是时候呢。」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430150a01">
「……是啊，真遗憾。
　不过先让我道谢吧。」

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430160a01">
「多谢了。」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430170a03">
「没什么没什么。
　只是兴之所至而已。」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430180a03">
「……嗯。真的是兴之所至。
　想想其实没有该救你的道理……真是的，
我在干什么呢。」

{	FwR("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430190a01">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　的确，我和她的关系并不是特别亲密。
　但是能感觉到，她的自言自语并不是那种意思。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430200a01">
「算了。
　那么你在这里是做什么呢？」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430210a03">
「当然去城中有事。
　但是——」

{	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430220a01">
「和我一样？ 
　……虽然去城里有事，却在这转来转去
的理由也是……」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430230a03">
「嗯，大概。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆狂乱状態

	CreateTextureEX("兵士", 15000, @0, @0, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Fade("兵士", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　虽然她帮忙击退了身边的危险，但状况并无改变。
　四处奔跑着人形食肉动物的这个世界，不容许正常人
接近。


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("兵士",500,true);

	SetFwR("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430240a01">
「不过，你是武者吧？
　飞起来不就没事了？」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430250a03">
「……你不知道吗？ 
　不如看一看，空中现在是什么样子？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　空中？
　
　被催促着，我抬头看向天空。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆量産型銀星号ズ
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	DeleteStC(0,true);
	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);

	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/やられ役01a", 500, @200, @-200, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役02a", 350, @400, @-0, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役03a", 200, @400, @-300, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役04a", 100, @500, @-200, "cg/st/3d零零式汚染_騎航_通常.png");
//	CreateTextureEX("カメラ１/やられ役01b", 500,  @200, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役02b", 350,  @400, @-0, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役03b", 200,  @400, @-300, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役04b", 100,  @500, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");

	Fade("カメラ１/やられ役01a", 0, 1000, null, false);
	Fade("カメラ１/やられ役02a", 0, 1000, null, false);
	Fade("カメラ１/やられ役03a", 0, 1000, null, false);
	Fade("カメラ１/やられ役04a", 0, 1000, null, false);

	Zoom("カメラ１/やられ役01*", 0, 600, 600, null, false);
	Zoom("カメラ１/やられ役02*", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03*", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04*", 0, 250, 250, null, false);

	Move("カメラ１/やられ役01*", 0, 41, -218, null, true);
	Move("カメラ１/やられ役02*", 0, -268, -45, null, true);
	Move("カメラ１/やられ役03*", 0, -429, -206, null, true);
	Move("カメラ１/やられ役04*", 0, -257, -304, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進03", 1000);
	OnSE("se戦闘_動作_空突進06", 1000);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 2000, 700, 0, 1000, null,true);


$ループムーブナット名 = "@カメラ１/やられ役01*";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@カメラ１/やられ役02*";
$ループムーブタイム２ = 20000;

$ループムーブナット名３ = "@カメラ１/やられ役03*";
$ループムーブタイム３ = 15000;

$ループムーブナット名４ = "@カメラ１/やられ役04*";
$ループムーブタイム４ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	CreateProcess("プロセス３", 150, 0, 0, "FlyMoving3");
	CreateProcess("プロセス４", 150, 0, 0, "FlyMoving4");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);

	MoveCamera("@カメラ１", 0, -100, -100, @0, null, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	MoveCamera("@カメラ１", 500, 50, 200, @300, Dxl1, true);
	Delete("黒幕１");

	SetBlur("カメラ１/やられ役0*", true, 1, 500, 100, false);

	Wait(500);

	OnSE("se戦闘_動作_空突進01", 1000);
	OnSE("se戦闘_動作_空突進02", 1000);

	SetBlur("カメラ１/やられ役0*", false, 1, 500, 100, false);
	MoveCamera("@カメラ１", 300, -1000, -300, @500, Axl2, true);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("カメラ*");
	Request("プロセス*", Stop);
	Delete("プロセス*");

	CreateTextureSP("量産02", 1000, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("量産04", 1000, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("量産03", 1090, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("量産01", 1090, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");

	Move("量産02", 0, @0, @-180, null, true);
	Move("量産04", 0, @0, @-60, null, true);
	Move("量産03", 0, @0, @60, null, true);
	Move("量産01", 0, @0, @180, null, true);

	Zoom("量産01", 0, 500, 500, null, true);
	Zoom("量産03", 0, 500, 500, null, true);
	Zoom("量産02", 0, 250, 250, null, true);
	Zoom("量産04", 0, 250, 250, null, true);

	SetBlur("量産*", true, 2, 200, 50, false);

	SetVolume("停滞", 1000, 0, null);
	OnSE("se戦闘_動作_空突進02", 1000);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	OnSE("se戦闘_動作_空突進01", 1000);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値１=1300+$なんとなくランダム;
	Move("量産01", 300, $Ｘ移動値１, @0, Axl1, true);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値２=1300+$なんとなくランダム;
	Move("量産02", 300, $Ｘ移動値２, @0, Axl1, true);

	OnSE("se戦闘_動作_空突進03", 1000);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値３=1300+$なんとなくランダム;
	Move("量産03", 300, $Ｘ移動値３, @0, Axl1, true);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値=1300+$なんとなくランダム;
	Move("量産04", 300, $Ｘ移動値, @0, Axl1, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430260a01">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　无言以对。

　天空中有无数星星闪耀。
　白银的——拥有手脚和翅膀和刀刃的星星。

　高声唱着疯狂的歌谣，在天空中起舞。
　前来挑战的武者……或是意图逃走的武者，
都因为暴力一般的性能差距而被击坠。

　这不是，那个银星号。
　是别的东西。

　但是，这在某种意义上与它酷似。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("量産*");

	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	StL(1000, @0, @0, "cg/st/3dバロウズ_立ち_通常.png");
	FadeStL(0, false);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");


	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430270a01">
「复……复制?! 
　怎么会有那么多！」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430280a03">
「以前，景明大人告诉过我。
　银星号是通过“卵”增殖的……」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430290a03">
「果然，是那样么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　我哑口无言，只能点头。

　这也是……茶茶丸做的？ 

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430300a03">
「天空被那种东西占领，实在是无法飞上天。
　若是只有一两骑还可以躲，这数量委实太多。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430310a01">
「……是、是啊……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430320a03">
「虽说如此，地上也是这副样子。
　身为剑胄的你和身为武者的我，
都只能进退不得，被困死于此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　我懂了。
　虽然懂了，却并没有取得什么建设性的成果。

　只是发现了陷入同样危机的人而已。
　除了互相同情以外，什么都做不到。

　而我，恐怕她也一样，没有这种时间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430330a03">
「……但是……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430340a01">
「什么？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430350a03">
「若是将你一人送进城中，大概能办到。
　有我帮忙的话……」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430360a01">
「咦？
　……真的吗？」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430370a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　大鸟香奈枝沉吟了一会。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430380a03">
「……是啊……
　想一想，我实在很难办到……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430390a03">
「即便进了城，这种状况下也无法解除武装。
但身穿西式剑胄大概不可能靠近邦氏殿下吧。
　……办不到的。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430400a03">
「那么——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　她眯起眼睛看向我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430410a03">
「你的目的，是见到景明大人？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430420a01">
「……是的。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430430a03">
「那么，请为我带个话。
　——进驻军将会使用决战兵器锻造雷弹。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430440a03">
「当它在这普陀乐上空投下之时，城中的人会
全灭吧。
　不，说不定连镰仓市也会遭到波及。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430450a01">
「……哈?!」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430460a03">
「听好了，不要怀疑，相信我，把这些话
原封不动地告诉景明大人。
　——阻止这场悲剧的方法，是<RUBY text="··">消灭</RUBY>
<RUBY text="·····">六波罗幕府</RUBY>，仅此而已。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430470a03">
「因为没有敌人就无法空投炸弹了。
　关键是足利四郎邦氏。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430480a03">
「就这些话。
　可以吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430490a01">
「嗯，嗯。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430500a03">
「其实我本打算自己亲自去的。但是……看样
子是没可能了。
　就拜托你和景明大人了。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430510a03">
「为了以防万一，我去让镰仓的人们避难吧。
　让舞殿宫殿下和署长帮忙，尽量减少受害者。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430520a01">
「知道了。
　但是，你要如何送我进城呢？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430530a03">
「请放出刚才的丝。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430540a01">
「？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430550a03">
「把它们，绑在这支箭上。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　大鸟香奈枝指指看起来像是她的主武器的石弓。
　中间装填着粗箭。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430560a01">
「绑上去就行了？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430570a03">
「嗯。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430580a01">
「……」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430590a01">
「啊……原来如此！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　我懂了。
　——竟还有这种方法。

　虽然过于草率、粗鲁，我却毫无怨言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430600a03">
「准备好了吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430610a01">
「好了！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_バロウズ_ボーガン構え02",1000);

	StL(1000, @0, @0,"cg/st/3dバロウズ_立ち_戦闘.png");
	FadeStL(500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　她的骑体摆出了射击姿势。
　我放松身体，等待着即将到来的瞬间。

　……本来，剑胄不能单独飞行。
　若是拥有鸟或是蝴蝶一类的独立形态就另当别论。
通常，剑胄与操控者合二为一变为武者时，才能获得
飞翔的能力。

　所以现在的我不能飞。
　
　只要不用<RUBY text="····">旁门左道</RUBY>的话！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆発射

	OnSE("se戦闘_バロウズ_ボーガン射撃02", 1000);
	CreateColorSP("白幕", 25000, "WHITE");
	DrawTransition("白幕", 300, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	DeleteStL(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Request("絵背景100", Smoothing);
	Rotate("絵背景100", 0, @0, @0, @180, null,true);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 2, 300, 70, false);

	Zoom("絵背景100", 500, 1010, 1010, Dxl2, false);
	DrawTransition("白幕", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("白幕");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　绷紧的弦松开。

　箭矢破开风，在虚空中疾驰。
　带着用丝绑在上面的我。

　普通的箭办不到这种事。
　但是武者的刚弓射出的箭则——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛翔
	CreateTextureEX("絵背景250", 100, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Request("絵背景250", Smoothing);
	CreateTextureEXadd("絵背景200", 100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Request("絵背景200", Smoothing);
	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進04",1000);

	Shake("絵背景200", 700, 3, 5, 0, 0, 1000, Dxl2, false);
	Fade("絵背景200", 150, 1000, null, false);
	Shake("絵背景250", 700, 3, 5, 0, 0, 1000, Dxl2, false);
	FadeF4("絵背景250", 150, 1000, 2000, 0, 0, Dxl2, false);
	Zoom("絵背景250", 2000, 1500, 1500, Dxl1, false);
	Zoom("絵背景200", 700, 1100, 1100, null, true);

	Wait(500);

	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　我掠过精神污染所绘成的活地狱。
　虽然范围极广，但以现在的箭势应当能够轻松穿越。

　然后越过城墙。
　不折不扣地，“飞”进城中……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆量産型銀星号。上から襲う
	CreateColorSP("白", 25000, "WHITE");
	DrawTransition("白", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("絵背景*");

	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);

	CreateTextureEX("量産01", 1090, center, @-600, "cg/st/3d零零式汚染_騎航_通常.png");
	Zoom("量産01", 0, 100, 100, null, false);
	SetBlur("量産01", true, 2, 300, 70, false);

	DrawTransition("白", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("白");

	OnSE("se戦闘_動作_空突進08", 1000);
	Fade("量産01", 100, 1000, null, false);
	Zoom("量産01", 500, 500, 500, Dxl2, false);
	Move("量産01", 500, @0, -400, Dxl2, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430620a01">
「……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　突然。
　上方袭来一骑——银星号的复制体！

　这种速度也能捕捉到?! 
　……糟了。

　剑胄反射性的计算告诉我。
　我的路线与敌人的降落轨道会相交——也就是
会遭到攻击。

　躲不掉。
　无法躲避！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 500, 0, null);

	CreateColorEX("黒", 3000, "BLACK");
	Fade("黒", 0, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//◆ＣＧ処理？
　
　　　　　　　　威廉·退尔的箭射不中苹果。
　　　　<PRE>Ｔｈｅ　ｐａｒａｄｏｘ　ｏｆ　
　　　　　　“Ｔｅｌｌ　ａｎｄ　ａｐｐｌｅ”.</PRE>

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

//◆軌道変化
	SetBlur("量産01", false, 2, 300, 70, false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	OnSE("se戦闘_動作_空突進01",1000);

	Fade("黒", 0, 0, null, true);
	Zoom("量産01", 600, 2000, 2000, Axl1, false);
	Wait(300);
	Move("量産01", 300, @-2000, @0, null, false);

	Wait(200);

	Fade("絵フラ", 0, 1000, null, true);
	OnSE("se戦闘_バロウズ_ボーガン射撃01", 1000);
	Delete("黒");
	Delete("量産");


	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, true);
	OnSE("se戦闘_バロウズ_ボーガン射撃02", 1000);


	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, true);
	OnSE("se戦闘_バロウズ_ボーガン射撃02", 1000);


	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

	Wait(500);

	CreateColorEX("黒", 15000, "WHITE");
	Fade("黒", 500, 1000, null, true);

	Delete("絵背景*");

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430630a01">
「————咦……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　<RUBY text="世界之理">物理法则</RUBY>扭曲了。

　箭<RUBY text="···">拐了弯</RUBY>。
　让白银的骑体贯穿虚空，讥笑着它而脱身。

　……不知是什么原因，我避开了本应无法躲避的绝路。
　
　然后终于，在普陀乐城降落。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆元の場所
//◆香奈枝

	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	CreateTextureSPadd("絵演弓聖覆", 1011, Center, InBottom, "cg/st/3dバロウズ_立ち_陰義.png");
	CreateTextureSP("絵演弓聖", 1010, Center, InBottom, "cg/st/3dバロウズ_立ち_戦闘.png");
	Move("絵演弓聖*", 0, @-256, @0, null, true);

	FadeDelete("黒",1000,true);

	FadeDelete("絵演弓聖覆", 2000, true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430640a03">
「……说过要做的事就非得好好完成不可。
　不然会被婆婆嘲笑的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_044.nss"
