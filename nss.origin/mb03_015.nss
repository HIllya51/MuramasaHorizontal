//<continuation number="980">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_015.nss_MAIN
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
	#bg074_喫茶店の店内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_016vs.nss";

}

scene mb03_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_014.nss"

//◆喫茶店
//◆ウェイトレス（稲田？）
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg074_喫茶店の店内_01.jpg");
	CreateSE("SE01","se日常_建物_扉開く05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm22",0,1000,true);

	StL(1000, @30, @0,"cg/st/st稲田_通常_制服.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw稲田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150010b15">
「欢迎光临！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　看店内装潢是面向年轻人的设计，明亮而华美。
　但纵然装潢精良，如果空无一人，也只有无限凄凉。

　店员那爽快的声音更是无比的不协调。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw稲田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150020b15">
「请问是两位吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150030a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　而店员本人，却完全不这么认为。这位年轻的女子，
较之脸庞，更富魅力的是她的表情。
　以完美的待客微笑引导我和一条入座。

　安排给我们的是窗边的座位。
　风景不错。虽然此时并不需要这个，但所幸这个座位
离厨房很远。如此一来只要小声对话，就不必担心会被
偷听。

　在精心维修过的椅子上坐下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw稲田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150040b15">
「请问要点些什么？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150050a00">
「……来份肉桂茶。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150060a02">
「我也一样。」


{	FwC("cg/fw/fw稲田_通常.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150070b15">
「两份肉桂茶。
　就这些吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150080a00">
「先这样。」


{	FwC("cg/fw/fw稲田_通常.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150090b15">
「请稍等！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	DeleteStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　店员踩着轻快的步伐退下了。
　我不由自主地目送着她的背影。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -600, -690, "cg/bg/resize/bg074_喫茶店の店内_01l.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, -292, 0, "cg/ev/ev989_尻待一蔵.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Fade("絵色100", 500, 500, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(1000);

	Move("絵演窓上/絵演背景", 2000, @0, @-50, AxlDxl, false);
	Move("絵演窓上/絵立絵", 2000, @0, @-100, AxlDxl, true);


	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150100a02">
「凑斗先生。
　难不成你……」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150110a02">
「在看她的臀部吗……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150120a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵演窓*", 200, 0, null, true);
	FadeDelete("絵色*", 200, false);

	Delete("絵演窓*");
	SetFwC("cg/fw/fw一条_驚く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150130a02">
「为什么。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150140a00">
「<RUBY text="·····">摇摆的样子</RUBY>令人在意。」


{	SetComic(@0,@0,16);
	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150150a02">
「怎么可以一本正经地说这种话！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteComic();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一条为什么如此愤慨呢。
　有什么让她觉得不满吗。

　她摆出一脸想猛咬我一口的表情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150160a02">
「喜欢那种类型的吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150170a00">
「类型？　……什么？」


{	SetComic(@0,@0,15);
	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150180a02">
「女性类型！」


{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150190a00">
「这个嘛，有那么点吧。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150200a02">
「唉唉……没节操……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　对一条抱怨的言语充耳不闻，我凝视着店员的身影直
到她消失在我视线的尽头。
　然后，再度确认店内情况。没有别的客人和店员——
不，厨房里或许还有几个人。可以感觉到。

　但近前只有我和一条。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	SetComic(@0,@0,12);}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150210a02">
「……开始作战讨论吧。」


{	DeleteComic();
	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150220a00">
「好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　转过身来。
　一条情绪不知为何有些低落，先不管她。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150230a00">
「关于接下来该怎么采取行动。
　首先，强行突围为时尚早。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150240a02">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150250a00">
「在到达公方府之前，我们就会被消灭。
　不管是走陆路还是空路都行不通。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150260a02">
「……空域也不行吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150270a00">
「到公方府需要几分钟时间。
　与防空队的正面遭遇无可避免。就算能够突
围，公方府在这期间也已经做好全面迎敌的准
备。」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150280a00">
「会遭遇高射炮的连番攻击吧。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150290a02">
「……唉。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150300a00">
「所以想潜入得更深一点。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150310a02">
「装扮成六波罗的兵士？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150320a00">
「这是一个办法。
　但是，很困难啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　袭击敌兵将其撂倒然后夺取装备潜入。
　……虽然在小说中这是经典桥段。但真实施行起来却
困难重重。如何才能展开迅速而严密的袭击，如何才能
彻底伪装成六波罗的人而不被怀疑，等等。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150330a00">
「不像上次，有内部人员的呼应。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150340a02">
「是啊……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150350a00">
「另外的方法吗。
　比如不走寻常大道。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150360a02">
「什么意思？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150370a00">
「也就是不使用道路的意思。
　潜入山野之中接近小弓。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150380a02">
「……但这听上去也挺困难的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150390a00">
「没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　若是没有熟悉地理环境的当地人协助，这个方案难于
登天。
　一个不当心就会遇难。

　而且，被幕府兵士发现时也不好解释。
　那时就只有转入强攻策略。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150400a02">
「而且还花时间。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150410a00">
「的确。这也是难点之一。
　还有什么好办法吗？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150420a02">
「……如果能潜入地下就轻松了。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150430a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　先询问一下潜伏在附近的剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150440a00">
（村正）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0150450a01">
《何事？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150460a00">
（你是地蜘蛛吗？）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0150470a01">
《不是。》


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150480a02">
「……」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150490a02">
（正宗）


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0150500b40">
《买个什么凿岩机便可。
　就是那个——吾那个时代还未出现的厉害
器械。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0150510b40">
《解析后试试看能否通过装甲改组还原。》


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150520a02">
（……我会考虑的）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　看来要将计划付诸实施有诸多难点。

　女招待从厨房回来了。
　正好也是思维枯竭的时候，我们沉默地等待着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @30, @0,"cg/st/st稲田_通常_制服.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw稲田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150530b15">
「让两位久等了！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　带着一如既往的笑容，店员把茶杯放在桌上。
　顿时芳香四溢。

　不同于活泼的印象，女店员的动作彬彬有礼，谨慎仔细。
　陶瓷器没有发出多余的杂音。

　是因为这个缘故吗，她的手看上去非常美丽。
　
　雪白——光滑的手。

{	DeleteStL(300,false);
	SetVolume("@mbgm*", 100, 0, null);}
　我伸出自己的手，握住了她的手。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -600, -444, "cg/bg/resize/bg074_喫茶店の店内_01l.jpg");

	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -60, "cg/st/resize/st稲田_通常_制服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 40000, @100, @0, null, false);
	Move("絵演窓上/絵立絵", 40000, @200, @0, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	SetFwR("cg/fw/fw稲田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150540b15">
「哎呀……」


{	SoundPlay("@mbgm22",0,1000,true);
	SetComic(@250,@0,7);
	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150550a02">
「凑、凑、凑斗先生!?
　很无耻哦！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	DeleteComic();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　女店员微微一愣，一条涨红了脸立身而起。
　我不管不顾，继续体会着掌中的感触。

　……好柔软。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150560b15">
「这位客人真是的。
　明明身边有这么一位可爱的小姐。」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150570a00">
「这一刻令我在意的是你。」


{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150580a02">
「凑——斗——先——生!?」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150590b15">
「怎么能这样说呢。
　真是的，恶作剧到此为止。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150600a00">
「我是认真的。」


{	SetComic(@250,@0,16);
	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150610a02">
「什么!?」


{	DeleteComic();
	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150620b15">
「……真是让人困扰的客人。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150630a00">
「我也很困扰。
　居然在这种地方，与你这样的人相遇。」


{	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150640a02">
「我现在也非常地困扰!?」


{	FwR("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150650b15">
「客人……
　为什么？」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150660a00">
「有三处。
　你的手、你的腿，还有你的眼睛。」


{	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150670a02">
「光是因为身体吗。
　不对，问题不在这！」


{	FwR("cg/fw/fw稲田_微笑.png");}
//嶋：修正（そんなことを）【090930】
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150680b15">
「您对任何人都说这样的话吧？」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150690a00">
「不。
　只对你说……」


{	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150700a02">
「为什么你突然就变了个人!?
　或者说你原本就是这样的人!?
我被背叛了吗!?
而且居然是这样一种背叛的方式——!?」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150710a00">
「你的手……
　白皙而美丽。」


{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150720a00">
「而且……冰凉。」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150730b15">
「难道您想说双手冰凉的人，内心很温暖吗？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150740a00">
「我对世俗之说不感兴趣。
　你的手——」


{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150750a02">
「我认为不过是刚在冷水里泡过而已！」


{	FwR("cg/fw/fw稲田_通常.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150760b15">
「是的。
　因为人手不够，所以从洗碗到准备饮料都需
要帮忙。」


{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150770a00">
「也许是这样吧。
　你不仅要待客，还要帮忙厨房的工作。」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150780a00">
「可是，这手却完全不见皲裂。
白皙、洁净、光滑。
　但是，指根处却有浅浅的<RUBY text="··">老茧</RUBY>。」


{	SetVolume("@mbgm*", 100, 1, null);
	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150790a00">
「这是常年习剑之人才有的特征。」


</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	Fade("絵色*", 150, 0, null, false);
	Fade("絵演窓*", 150, 0, null, true);
	Delete("絵演窓*");
	Delete("絵色*");

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150800a02">
「……啊？」


{	FwC("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150810b15">
「——」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150820a00">
「你的步伐，腰姿……
　我仔细观察过了，一切都过于
<RUBY text="····">沉着冷静</RUBY>了。」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150830a00">
「仿佛能够应对随时随地的袭击。
　这步法，完全没有武术心得的人是做不到的。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150840a02">
「——」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150850a00">
「另外，你的眼睛……
　面对在淡季出现，也非当地居民的客人，没
有表现出任何疑惑。」


{	FwC("cg/fw/fw稲田_無.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150860b15">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150870a00">
「这真是……令人费解。
　你引起了我极大的兴趣。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150880a02">
「凑斗先生。
　那，这家伙是……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150890a00">
「是啊。
　结论只有一个。」


{	SetVolume("@mbgm*", 100, 1000, null);
	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150900a00">
「碰巧有点武术心得，而最近才开始在这里工
作的女店员。」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150910a02">
「啊——!?」


{	FwC("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150920b15">
「是、是这样的！」


{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150930a00">
「当然不是。
　首先，这个季节不可能会新雇店员，而且，
如果是刚开始工作的话，那你对客人的态度也
太自然娴熟了。」


{	FwC("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150940b15">
「呃……！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StC(1000, @30, @0,"cg/st/st稲田_戦闘_制服.png");
	Move("@StC*", 300, @-30, @0, Dxl2, false);
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　店员甩开我的手，退向后方。
　同时，我也站起了身。

　这里已是敌区。
　不知攻击会从何而来。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150950b15">
「……是我大意了。
　只当是好色小哥……！」


{	FwR("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150960a02">
「哼，笨蛋。
　凑斗先生才不是那种男人呢！」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150970a00">
「刚才你在一旁说什么，我大体上都记得。」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


//◆へこむ
	CreateSE("SE01","se擬音_コミカル_ガーン01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetComic(@250,@0,8);
	SetFwR("cg/fw/fw一条_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150980a02">
「……明明理都没理我……」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//――――――――――――――――――――――――

	DeleteComic();

//◆がちゃーん
//◆村正＋正宗登場
	CreateColorEX("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 100, 1000, null, true);

}

..//ジャンプ指定
//次ファイル　"mb03_016vs.nss"