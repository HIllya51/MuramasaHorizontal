//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_017.nss_MAIN
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
	#bg053_堀越御所の庭_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_018.nss";

}

scene md02_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_016.nss"


//◆庭

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg053_堀越御所の庭_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm09", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　刀的重量适当。

　不是适用于武者或骑兵的太刀。
　是徒士专用的打刀。与太刀比刀身弯度较浅，
长度也短，应用风格也稍有不同，但基本的简单
使用似乎没问题。

　比起空手，还是手握武器锻炼比较好吧。想到
这些，我拜托堀越公方借来了此刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　将剑举过右肩上方，武者上段的姿势。
　然后假想敌人的身影。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号。透明度５０％で表示とか？

//おがみ：中央に調整
//	CreateTextureEX("Gin", 1000, @-200, @-30, "cg/st/3d銀星号_立ち_通常.png");
//	Fade("Gin", 1000, 300, null, true);

	CreateTextureEX("Gin", 1000, Center, -270, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("Gin", Smoothing);
	Zoom("Gin", 0, 800, 800, null, true);

	Fade("Gin", 1000, 500, null, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　银星号。

　……不。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆光
//	CreateTextureEX("Hikaru", 1050, Right, InBottom, "cg/st/st光_通常_私服.png");
//	FadeDelete("Gin",1000,false);
//	Fade("Hikaru", 1000, 300, null, true);

	CreateTextureEX("Hikaru", 1050, Center, InBottom, "cg/st/st光_通常_私服.png");
	FadeDelete("Gin",1000,false);
	Fade("Hikaru", 1000, 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　<RUBY text="·">光</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170020a00">
（必须这么想……）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　把银星号想成一个通称，也是无意识的
逃避吧。
　若足利茶茶丸所指是正确的话。

　若在我心底其实并不想杀光的话。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170030a00">
（斩）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　架好剑，假想光的姿态，决意。

　向她挥刀。

　不挥不行。所以，斩。

　不带任何想法。
　那一切杂念。

　妹妹什么的……
　统大人的女儿什么的……

　必定由我亲手来保护什么的……

　均是杂念。

　舍弃。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170040a00">
（斩）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　斩——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆光。普通に表示
	CreateTextureEX("Hikaru2", 1050, Center, InBottom, "cg/st/st光_通常_私服.png");
	Fade("Hikaru2", 2000, 1000, null, false);
	SetVolume("@mbgm*", 1000, 0, null);

	Wait(1500);

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md02/0170050a14">
「…………」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170060a00">
「…………」

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0170070a14">
「对手是我吗？」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170080a00">
「你知道的吗……」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0170090a14">
「只能让我这么想。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　浅浅的微笑，她赤足降落于庭院。
　……是<RUBY text="··">本尊</RUBY>。

　在这么近的地方，什么时候来的？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md02/0170100a14">
「与假象的对手做练习，也没多少兴致吧？」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170110a00">
「……」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0170120a14">
「来吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　光略张双腿，摆出架势。
　单手举起朝我挥手。

　要说是否有破绽，那样的姿势简直满是破绽。
　任何时候，任何方向都能攻击。

　精通武艺之人所特有的恐怖，就是因为看似
稀疏平常但内在其实蕴藏着千变万化的惊人力量
——这样的东西，也完全没有。
　看上去仅仅只是站着而已。

　即便如此，不踏出那步的话——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170130a00">
（我心底的懦弱）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　吗？

　是因为不想挥刀所以才无法进攻吗？

　此刻，手上握的是真正的钢铁。真正的刀刃。
　活生生的肉体，像青菜般砍断。

　杀掉。

　我要杀了光。

　如果有障碍的话。
　那就只有自己懦弱的内心。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170140a00">
（将那……抹去）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　抛去那脆弱的精神。

　无我。

　只留杀意。

　不期望光的生存，遵循世人的意愿。

　消去一切杂念，然后把握，
　最好的时机。

　把握敌人的呼吸，把握敌人的意图，把握敌人的死。
　将敌人的命运握在手里。

　这无异于将风抓在手中。
　不过，应该能办到。

　若达到无我的秘境……
　没法看见的事物也能确实看到。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆適当なＳＥ？
//◆全体にシャドー
	CreateColorSP("ばひゅ", 1300, "BLACK");
	DrawTransition("ばひゅ", 150, 0, 1000, 100, null, "cg/data/circle_02_01_1.png", true);
	OnSE("se特殊_陰義_発動04", 1000);
	Delete("Hikaru2");
	Delete("Hikaru");
	CreateColorEX("白世界", 1205, "BLACK");
	Fade("白世界", 0, 400, null, true);
	DrawTransition("ばひゅ", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);

 	CreatePlainSP("絵板写", 2000);
	CreateTextureEX("Hikaru3", 1050, Center, InBottom, "cg/st/st光_通常_私服.png");


	CreateStencil("絵マスク2",800,Center,InBottom,128,"cg/bg/bg053_堀越御所の庭_01.jpg",false);
	SetAlias("絵マスク2","絵マスク2");
	CreateColor("絵マスク2/色１", 700, 0, 0, 1024, 576, "BLACK");
	Fade("絵マスク2/色１", 0, 600, null, true);
//	DrawTransition("絵マスク2/色１", 150, 0, 1000, 50, null, "cg/data/circle_02_01_0.png", true);
	DrawTransition("絵マスク2/色１", 0, 0, 500, 100, null, "cg/data/slide_02_00_0.png", true);


	CreateStencil("S1",1000,Center,InBottom,128,"cg/st/st光_通常_私服.png",false);
	SetAlias("S1","S1");
	CreateStencil("S1/S2",1000,Center,InBottom,128,"cg/st/st光_通常_私服.png",false);
	CreateColorSPadd("S1/S2/C1", 1200, "WHITE");

	Fade("Hikaru3", 0, 1000, null, true);
	Fade("S1/S2/C1", 0, 700, null, false);
	FadeDelete("絵板写", 300, true);

	FadeDelete("ばひゅ",1000,true);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　——就像这样。

　感觉会徐徐变化……
　这已经，接近了所谓的感官吗？

　单凭眼和耳认知的界限，沦为暧昧模糊的东西。
　然而，理解力却很清晰。

　庭院的构造尽管未尽了解也能详细把握。
　也准确知晓自己的位置。

　敌人的位置也一样。
　感官的世界里，光的真像慢慢浮现……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆光のみシャドー解除

	Fade("S1/S2/C1", 1000, 0, null, true);

	WaitKey(500);
	Fade("S1/S2/C1", 1000, 800, null, true);
	
//◆が、すぐぼやけて曖昧に
	FadeDelete("Hikaru3", 1000, false);
	FadeDelete("S1/S2/C1",1000,true);

//◆消去


	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170150a00">
「————呃!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　消失了。

　光从感官的世界消失了。

　哪里也没有。
　……不。只是识别不到。

　真愚蠢。

　因为我的感官还不成熟、不稳定的缘故吗？
　不对——暂且先不谈成熟与否，那不是原因。

　现在能感知到离我五〇米距离的地方，有个花匠
正攀上松树勤劳地作业着。
　虽然正确与否要稍后确认之后才知道。
但明明那么远的动作也能掌握……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆光。曖昧に

	CreateTextureEX("Hikaru4", 1050, Center, InBottom, "cg/st/st光_通常_私服.png");
	Fade("Hikaru4", 300, 1000, null, false);
	Fade("S1/S2/C1", 1000, 800, null, true);
//	CreateColor("S1/S2/C1", 1200, 0, 0, 1024, 576, "White");
	CreateColorEXadd("S1/S2/C1", 1200, "White");

	Fade("S1/S2/C1", 500, 800, null, true);

	WaitKey(1000);

//◆消す

	FadeDelete("Hikaru4", 1000, false);

//◆が、すぐぼやけて曖昧に
	FadeDelete("S1/S2/C1",1000,true);


	WaitKey(500);	



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　她在……艰难地捕捉到了。
　但还是很模糊。

　呼吸浅薄。
　意志浅薄。

　存在也过于浅薄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170160a00">
（怎么回事）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　最终只能捕捉到凤毛麟角的感官世界，
因萌生的疑问而逐渐幻灭崩坏。
　防御的方法也没有。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170170a00">
（<RUBY text="······">你在这里的吧</RUBY>）

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170180a00">
（光……
　你是真的在那边吧？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　这样的提问，无处可答。

　因为明明白白，光就在那里。
　谁也不会搭理明知故问的愚蠢之人。

　问了，也只落得嘲笑。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆崩壊。ホワイトアウト
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 1500, 1000, null, true);
	Delete("絵マスク2/色１");
	SetVolume("@mbgm*", 1000, 0, null);

//■すぐ続くからClearWait等なし。　inc櫻井

}

..//ジャンプ指定
//次ファイル　"md02_018.nss"