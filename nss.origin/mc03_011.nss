//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_011.nss_MAIN
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
	#bg085_汽車客車_01=true;



	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_012.nss";

}

scene mc03_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_010.nss"

//◆鉄道
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 2000, "BLACK");
	OnBG(100, "bg085_汽車客車_01.jpg");
	FadeBG(0, true);

//◆がたんごとん。注·電車ではなく汽車

	CreateSE("がたんごとん", "se乗物_汽車_走行01_L");
	MusicStart("がたんごとん", 2000, 1000, 0, 1000, null,true);

	Wait(3000);

	Delete("上背景");
	FadeDelete("黒幕１", 2000, false);

	SoundPlay("@mbgm30", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　以前，我乘坐铁路的机会很少。

　我生长的地方完全是乡下，没有车站和线路，虽然在
征兵参军时坐过蒸汽机车，但那也只是几次的程度。
　复员之后回到乡里，就职后也只有两三次。


　六波罗掌握政权后，如果没有对平民使用铁路进行限
制，次数大概还能增加一些吧。
　……公司没有把我评价为适合出差的人，我也没有利
用私人时间旅行的兴趣，铁路我不可能乘坐太多次。

　所以，通过铁路旅行的次数，我用一只手就足够去数
了。
　这速度，内部装修，窗外流动的风景，我都感到很不
习惯，这给我留下了新鲜的印象。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("がたんごとん", 10000, 0, null);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110010a04">
「你好像平静不下来呢。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110020a00">
「不好意思，确实有些。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110030a04">
「再忍耐一下吧。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110040a00">
「我没有感觉到不适。不用担心我。
　……侍从阁下倒是很泰然呢。」



{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110050a04">
「我坐过的次数和皱纹的数量一样多。
　特别是和大小姐生活在欧洲的时候，日常中
总是会乘坐的。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110060a00">
「那边电动列车也普及了吗。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110070a04">
「是的。市中心的短距离路线中，这已经是主
流了。
　都市间的铁路上，蒸汽机车还占多数……」



{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110080a04">
「其中有一部分似乎是使用了电气机车。」



{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110090a00">
「？　那和电动列车有什么不同吗。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110100a04">
「凑斗大人所说的，是单独的车辆都具有动力
的方式。
　电动机车与其不同，是采用牵引其他列车的
方式。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110110a00">
「啊啊……原来如此。
　简要来说，只是把以前的蒸汽机车改为电动
而已。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110120a04">
「虽然确实是这样，但是凑斗大人，这种事情
最好不要轻易说出口。
　如果被一部分<RUBY text="Ｍａｎｉａ">铁路爱好者</RUBY>听到。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110130a04">
「会用大概四十二小时的时间向你彻底讲述两
种方式的起源，详细的构造，细微的差异，现
在实际的应用，以及对于未来的展望。」



{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110140a00">
「？　哈啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　这是在说什么呢。

　车窗中映出的动画，从悠闲的田园逐渐变为了深邃山
野的情景。
　列车偶尔还会从桥上越过河流。

　河面反射着日光，映出了璀璨的光辉。如果是小孩子
看到了，一定会变得很兴奋吧。
　我坐在缺乏人气的客车中，想到了这种事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110150a00">
「……不过。
　我们很轻易就上了车呢。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110160a04">
「如果是开往会津之外的列车，想在开战前逃
离这里的富裕阶层已经挤满了。
　现在反而要去会津中心部的平民，应该是特
别少见的好事者。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110170a04">
「座位可以随便选择。
　和欧洲相比，价格高得离谱。不过只要能够
支付费用，那就没有别的问题了。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110180a00">
「是。除此以外，我还有些在意其他的问题。
　既然现在的会津等同于下了戒严令，」



{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110190a00">
「列车应该是立刻会被军队征用……即使给平
民留有一定的使用余地，对于乘坐列车也应该
会进行严格的审查吧。」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　在那种情况下，能够允许我们坐车吗。
　对于我，只要一查就能找出无限的问题。

　对于大鸟主从来说，也是一样的吧。
　不……她们要比我更加危险吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110200a04">
「我在这里下了赌注。
　确实，狮子吼阁下即使下令采取这种措施也
不足为奇。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110210a04">
「但是那个男人的企图，十有八九是急战。
　过度保障列车的安全，以及极度戒备敌人间
谍的入侵，都没有太大意义。」


//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110220a04">
「并且狮子吼阁下不喜欢浪费精力……
　虽然说是赌博，但胜机也算不小。」



{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110230a00">
「……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　如果还有人手去做这些事，除此以外应该存
在更有效的使用方法吧。
　大概就是如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110240a00">
「如果能够成功上车，这就是最高速最有效率
的交通方式……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110250a04">
「只要坐在这里等着就能到达目的地。
　该担心的，是在车内发生问题时难以逃生的
部分。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110260a00">
「有这种危险吗？」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110270a04">
「也不能说完全没有。
　在另外的车辆中，有篠川军一个中队陪伴着
我们。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110280a00">
「……这样啊。
　如果遇到他们，有可能惹出麻烦。」



{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110290a04">
「并非不可能。
　……不过，那些都是预备役的召集兵。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110300a04">
「他们的任务应该是后勤支援，士气和装备也
都只是那种程度。
　虽然我们不能大意，但也不用过于担心。」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　年老的侍从呵呵地笑着，我也回以点头。
　随后，我们不再说话。

　沉默的氛围突然扩散开来。
　<RUBY text="Wheel">铁轮</RUBY>在<RUBY text="Rail">铁轨</RUBY>上滚动前行，
　有规律的沉重响声传入耳中。

　我的视线不由得看向了上车后一次都没有开口说过话
的女性。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110310a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　大鸟大尉在眺望风景。
　不——正确来说并不是。

　那是心不在焉的状态。
　虽然目光是在看向景色，但那角度却固定不动。即使
地形改变，她也几乎没有反应。


　并不是在看外表，而是在看内侧吗。
　这样的话，现在她眯起的双眸中，到底映出了什么东
西呢。

　名为大鸟香奈枝的女性，是怎样的心情——
　
　我毫无来由地想要问她这种事情。大概是她沉思的样
子让我着迷了吧。

　和平时的大尉不同。不知为什么，她现在看来就像是
通俗意义上的女性。
　柔弱，不安。纤柔，淡雅。

　和我之前见到她演奏弦乐器的样子很像。
　虽然很像——但还是不同。那时她有着确切的意志，
由意志引导着音色，奏出乐曲。但是现在，她的脸上似
乎欠缺了那种意志。

　就像是走丢的孩子不知道该如何回家那样。
　
　在无处栖身的异境，独自伫立。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110320a03">
「……景明大人。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110330a00">
「…………是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　她叫了我的名字，我的回答稍慢了一些。
　一部分原因是出乎了我的意料。但除此以外，也因为
她的声音与其说是在叫我，更像是她自己的独白。

　她的<RUBY text="世界">表情</RUBY>现在也还是与外界隔绝着。
　……距离下一句话的间隔，作为对话的间隔来说有些
太长了。随后她继续轻声说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110340a03">
「……就这样。
　去往别的地方吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　就像是迷路的孩子，放弃了之后，漫无目的地走开那
样——
　
　大鸟大尉说出了这样一句话。

　别的地方。
　那一定是意味着，<RUBY text="········">并不是笔直向前的</RUBY>某处吧……


　冲入篠川公方府，暗杀大鸟狮子吼之类的事，那种愚
蠢的——对吧，客观看来无论如何也很愚蠢——企图扔
掉吧。
　去往别的地方。

　没有目的。如果非要找个目的，那就是逃离战火。
　混入现在大街小巷的人群之中。

　没有任何特殊的身份，只是作为一个人。
　做自己份内的事，遵从自己扮演的角色……

　那将不再是大鸟香奈枝，也不再是凑斗景明。
　没有贵族的矜持，也没有封杀银星号的义务。
　
　自愿成为无名之辈，埋没于尘世间。

　——就是说，想这样。
　大鸟大尉，说的大概是这个意思吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110350a00">
「大尉，」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110360a03">
「这是开玩笑。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110370a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　不知何时。
　她歪着头，看向了我。

　彷徨在内心的某处，已经回到了凡间。
　作为大鸟香奈枝。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110380a03">
「是开玩笑……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　她这样重复说着。不知为什么，我犹豫着无法立刻点
头回答她。
　
　胸腔的中心，有着奇妙的疼痛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110390a00">
「……没有目的地的旅行，大概会意外地有趣
吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　绝不能去考虑疼痛的意义。
　我只是作为文字游戏来回答了她。

　我不得不去这样做，这种想法像是强迫观念一样存在
于我心中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110400a00">
「随风所向，随心所欲，向东或向西。
　那样大概每一天都不会无趣吧。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110410a04">
「那真是很好啊。
　特别是之后的季节，顺路进行温泉旅行是
最棒的了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　纱代侍从也一同说着，像是对在那之前要做
的事情完全不知情一样。
　大鸟大尉露出了微笑，轻轻地点了头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110420a03">
「……是呀。
　那……我们就去吧。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110430a03">
「以后。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110440a00">
「是。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110450a04">
「嗯，到时候……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　我们全员一同作出了约定。<k>
　我们全员都知道，那个<RUBY text="··">以后</RUBY>是不会到来的。

　这完全是仅存在于此刻的口头约定。<k>
　世间各处都存在无数次这种口头约定，随后便会被人
遗忘，再也没有人能回忆起来。

　就是这种轻松的对话。<k>
　
　
　这种轻松的对话，现在让我感到特别难过。

　我难以注视大鸟大尉纯洁无暇的微笑。
　我像是逃离一般，将视线转向了车窗。

　即使不停流动，也毫无改变的风景充满了我的视野。
　并且——在那之前。<RUBY text="Ｇｌａｓｓ">玻璃</RUBY>上映出了一个影子。

　男人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110460a00">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　我立刻站起身，看向了身后。
　在车辆的连接口处，我一瞬间看到了那个人，但现在
他已经不在那里了。

　可是。
　刚才——确实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110470a04">
「凑斗大人？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　她用惊讶的目光仰视我。
　这位年老侍从的注意力应该比我要高，既然她没有注
意到什么，那我刚才看到的人很可能只是我的错觉。


　但是——
　
　那个男人，我记得<RUBY text="··">见过</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110480a00">
「……我很快回来。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110490a04">
「要去哪里？
　现在走动会有危险。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110500a00">
「这我知道！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　刚才她说过的话，现在还围绕在我耳边。
　但即使如此，我也必须要去确认。


　我挣开了她的制止，冲了出去。
　<RUBY text="··">车顶</RUBY>的村正，在我的命令下向我赶来。
　——也许会有必要。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//次のファイルに繋がっていることとBGMを停止させないためClearFade使用 inc櫻井
	ClearFadeAll(500);

}

..//ジャンプ指定
//次ファイル　"mc03_012.nss"