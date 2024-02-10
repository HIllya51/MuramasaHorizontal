//<continuation number="880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_007.nss_MAIN
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

	$GameName = "mc02_008.nss";

}

scene mc02_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_002.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100,"bg030_ＧＨＱ監禁部屋_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm35",0,1000,true);
	StR(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");

	FadeStL(0, false);
	FadeStR(0, false);
	Delete("上背景");
	FadeDelete("黒幕１",1000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070010a03">
「呼～吸～呼～吸～」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070020a00">
「看来我给你平添不少无益的操劳……
　万分抱歉。」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070030a03">
「没关系……
　不过那的确是相当惊心的一幕。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070040a04">
「大小姐被漂亮地击败了。
　在人类冲击力之战的较量中。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070050a03">
「是啊。感觉就像是因罚球犯规而得到ＰＫ，
刚为拿到一分而得意着，不料三垒投手一击掩球，
跑垒失败，比赛结束。
因比分结果二比一而被判败北。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070060a04">
「下次大小姐至少也得根据量子论，
来个穿墙登场之技什么的吧。」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070070a03">
「如今世上真难过活啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300, false);
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　进驻军大尉大鸟香奈枝。她的侍从永仓纱代。
　这两位便是没等多长时间就现身了的来访者。

　既然这里是ＧＨＱ的建筑，那两人出现在这里
也不足为奇。
　但——她们是<RUBY text="····">为何而来</RUBY>？就现状而言，
这完全是个谜团。

　总之，我只能从头开始依次询问情况。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070080a00">
「大尉阁下。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070090a03">
「什么事？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070100a00">
「我可以率先发问吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070110a03">
「请便。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　她欣然许可，我略作思考。
　应该放在最首位的事情是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070120a00">
「舞殿宫殿下现在怎样了？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070130a03">
「大概平安逃出建朝寺了。
　因为我们没找到他的遗体……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070140a03">
「现在应该潜伏在某处
窥探情况吧。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070150a00">
「……这样啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我轻叹一口气。
　无论如何，这都是个喜讯。

　亲王之身依然远远称不上是安全的……
　但那位殿下擅长在政治中摸爬滚打。
为了突破危机生存下去，他一定会找到
延命之法吧。

　至于这件事，我的担心根本就无济于事。
　那么，接下来就是有关我自己的事情了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070160a00">
「我为何会在这里……
　不。首先，我想问这里是哪里？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070170a03">
「是横滨。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　她回答得很直接，稍显委婉却开门见山。

　横滨。
　
　——进驻军总司令部。

　看来我身处ＧＨＱ本部的建筑物内。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070180a00">
「那么……
　为何我会在横滨？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070190a00">
「我想自己……应该是倒在建朝寺里了。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070200a03">
「没错。
　而纱代捡到了你，并用车
把你带到这里了。对吧？」


{	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070210a04">
「是。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070220a00">
「这——」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070230a00">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070240a00">
「给您添麻烦了。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070250a04">
「哪里哪里。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　到底该不该道谢呢。
　我略微迷茫了一会儿，姑且还是道声谢吧。

　老妇人大概看透了我的内心，她的回答让人听着
不禁想要耸肩。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070260a00">
（……这样啊……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我暂时停止提问，开始整理信息。

　与亲王敌对，袭击了建朝寺的是ＧＨＱ……
　而处于内部的香奈枝小姐得知这一消息，并告诉我……？

　受到袭击的时候，她们也在附近……
　发现了昏迷的我。把我回收并运到横滨基地
……就是这么一回事吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070270a00">
「村正……
　在下的剑胄呢？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070280a04">
「当然也一起带过来了。
　现在在别的房间休息。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070290a03">
「很可惜，我不能让你见她。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070300a00">
「……这。
　又是为何呢？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070310a00">
「为何不让我见她？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　对答如流的回答就此中断，突然出现了一段沉默。

　香奈枝小姐的表情并非因失言遭到反诘而不知该
如何作答。
　她的表情看起来是在享受、体味这段沉默。

　其实，并不需要回答。
　她已经表明了，我和她的立场关系。

　为何不允许我和剑胄有所接触？
　
　——因为不能让我进行武装。

　她为何畏惧我的武装？
　
　——因为她与我敌对。

　简言之。

　因为某件事情，亲王与ＧＨＱ之间发生
对立。
　而这时，她依照ＧＨＱ的立场采取了行动。

　回想她至今为止的言行，以及她在江之岛险些与我一同被抹杀的事实，其中缘由似乎无法归结为单纯的所属问题吧……　一切都是无可避免的。

　她必然与承蒙亲王恩惠的我对立。
　这与她预先提醒我建朝寺袭击一事
看似矛盾实则不然。因为她这么做或许
只是为了一举把所有人都肃清而已。

　一切都明朗化了。
　剩下还未明了的是……亲王与ＧＨＱ对立的理由。

　还有。
　<RUBY text="·········">为什么我现在还活着</RUBY>。

　是放我一条生路呢。
　还是暂且不杀我，而将我拘禁在横滨呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070320a00">
「大鸟大尉阁下。」

{	StR(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStR(300, false);
	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070330a03">
「嗯。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070340a00">
「请问，如今我为何得以生存？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070350a03">
「难道不是因为你的心脏在跳动吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　ＧＨＱ大尉微笑着。
　很明显，这微笑应该归类于
嘲笑——她完全无意隐瞒。

　这也并不值得惊讶，所以我毫不在意地继续说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070360a00">
「你本应能轻易地让它停跳才对。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070370a03">
「是吗？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070380a00">
「你只需将枪口抵在我的太阳穴上，向扣住
扳机的手指施加一百克左右的力量就够了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　少说一小时之前我还昏迷着。
　无论用怎样随便的方法杀死我，我也无法
抵抗。

　类似小鼓声的咕咕响声显出她心情的愉悦。
　香奈枝小姐在喉咙深处笑出了声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070390a03">
「这个嘛……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070400a00">
「…………」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070410a03">
「但是我这边也有很多原因的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070420a00">
「方便的话请告诉我。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070430a03">
「可以啊？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　微笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070440a03">
「首先，我被人拜托将
景明大人活着带过来。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070450a00">
「……？
　被人拜托？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070460a00">
「是ＧＨＱ里的人吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070470a03">
「是啊。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070480a00">
「……是哪位呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我完全无从想象。
　别说会派人救我一命的朋友了，我在进驻军中
连认识的人都没有。大鸟主从除外。

　顺带一提，我也不记得自己在路旁搭救过旧病
复发的陌生英国人。
　我根本想象不到自己安全与否为何会被人惦记。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070490a03">
「是一位被称作沃尔夫教授的人。
　在天然资源局担任顾问一职……
你知道他吗？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070500a00">
「不……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　这名字我完全没有印象。
　沃尔夫——狼？　德语……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070510a03">
「你不认识他？
　……那位先生为何会为景明大人
担心呢？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070520a04">
「学者这类人往往有些地方会超出
常人的理解。
　唔，也许是有关凑斗先生的报告中，
某些地方激起了教授的兴趣吧？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070530a03">
「是这样吗？
　希望不是性趣就好。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070540a00">
「那会使我也为难得要死的。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070550a03">
「你应该早晚会得到与教授会面的机会的。
所以，到时就请你亲自确认一下真相吧。
　……暂且撇开这些不谈……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070560a03">
「理由还有一个。
　这是我私人的缘由。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070570a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　微笑。
　
　
　我看着它。

　看着它所构筑出的东西。

　唯一的意志。
　唯一的感情。
　唯一的——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070580a00">
（啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　我在心底深深地、深深地点了点头。

　以前只算是一种疑惑，现在却升至
确信的范围内了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, null);
	DeleteStL(300, false);


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070590a00">
（我被这个人所憎恨着）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　
　　　　　　　　　　　恶意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070600a03">
「景明大人。
　我不想让你轻易死去。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　
　　　　　宛若山间背阴面涌出的泉水。
　　　　　冰冷丰盈而晶莹剔透的恶意。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆柱時計。ごーんごーんと四回。終了待つ。


	CreateSE("時計", "se日常_機械_柱時計鳴る_4回");
	MusicStart("時計", 0, 1000, 0, 1000, null,false);

	WaitKey(10000);

	SetVolume("時計", 1000, 0, null, false);

	SoundPlay("@mbgm18",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　我听见宣告四时的钟声，终于注意到
室内有钟表。
　那是与看起来只是间西式监牢的小屋很不相称的，
颇为美观的挂钟。

　我忖思着在这种地方摆放这种东西之人的意图。
　是考虑到在这没有窗户，无法区分昼夜的房间里
至少应该放置一个时钟这样便利的物品呢。还是
想借此突出室内整体的寒酸样以压迫被收监者呢。

　是确切告知距离处刑所剩的时间，令其做好觉悟，
是这种渗出恶意的善心吗。
　还是仅仅把多余的东西随便摆这里呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070610a03">
「……你很苦恼现在是清晨还是傍晚吗？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070620a00">
「算是有些在意吧。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070630a03">
「是清晨。
　我听闻景明大人清醒了，就立刻赶了过来
……仔细想想这真是不合乎常理啊。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070640a04">
「都是纱代大意了。
　凑斗大人，恳请您原谅我的无礼。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070650a00">
「您无须谢罪。
　两位能立刻前来，我感激不尽。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　毕竟我不会被一头雾水地扔着不管了。

　不过，清晨四点……
　我还以为自从在建朝寺院内倒下后，
已经经过一整天了，可事实上还不到半天啊。

　不，也许已经过一天半了。
　……根据身体的沉重感来看，
这种情况的可能性比较大。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070660a00">
「大尉阁下。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070670a03">
「什么事，景明大人？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070680a00">
「我们是在那个村庄中初次见面……
　那个如今已不复存在的小村庄的……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070690a03">
「是啊……
　在那座山上。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070700a00">
「自那以后，并未经过太长时间。
　感觉恍如昨日。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070710a03">
「但，这期间发生了很多事。
　与贪官交手，介入围绕装甲竞技
展开的阴谋中，潜入江之岛与
巨型怪物战斗……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070720a00">
「是的。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070730a04">
「每个事件都差不多能写满
三百张四百字格子的稿纸呀。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　发生了很多事。真是多灾多难。
　正如她所言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070740a00">
「然而，大尉……
　我不明白。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070750a00">
「<RUBY text="······">当我察觉到时</RUBY>，您已经对我心怀
憎意。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070760a03">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070770a00">
「我在这短暂的交集中是在何时，
以何种理由使您产生憎意呢？
　我如何思考，也解不开这个谜团。」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070780a00">
「不……
　归根结底，究竟有没有理由呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　一个人厌恶别人，并不需要像样的理由。
　合不来。性情不相投。<RUBY text="·····">说不出缘由</RUBY>。
已经足以让一个人对别人心怀憎意。

　“自己很容易讨人喜欢”这种话，连酒席上的玩笑话
都算不上。
　即便对我的憎意是毫无缘由的，
也不足为奇。<k>然而——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070790a03">
「我有理由哦……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070800a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070810a03">
「非常简单易懂。
　非常单纯的，理由。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070820a00">
「而我不知道这理由，果然是
有异常失态的地方吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　如果我犯下了什么……无意间做出骇人的举动，
那就不得不道歉了吧。
　暂且不谈道歉能不能解决问题。

　但是香奈枝小姐的心情看起来并没有受到影响，
她优雅地摇了摇头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070830a03">
「不，请别放在心上。
　景明大人不理解，是很正常的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070840a00">
「能请你告诉我吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070850a03">
「当然了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　长发的大小姐笑意更深了。
　其中含有的成分——憎意也一并加深。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070860a03">
「我正是为此而救下你的。
　请务必仔细听……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070870a03">
「有些说来话长。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070880a00">
「无妨。
　正好现在我是个大闲人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　我一脸认真地说道。
　……大鸟香奈枝大尉噗嗤轻笑一声，
然后开始讲述。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"mc02_008.nss"