//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_005.nss_MAIN
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
	#bg098_堀越御所内廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_006.nss";

}

scene md02_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_004.nss"

//◆フェードイン
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg098_堀越御所内廊下_01.jpg");
	FadeBG(0, true);
	StR(1000, @0, @0, "cg/st/st光_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStR(0, false);
	FadeStL(0, true);

	SoundPlay("@mbgm27", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SetFwC("cg/fw/fw光_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md02/0050010a14">
「景明？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050020a00">
「没什么……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　挥去那突然侵袭大脑的轻微眩晕。
　使劲咽下那呕吐感。

　……不要再迷惘。
　多余的事情。多余的。

　我端正坐姿，朝向正等待着我的光，
姑且试着打听最为在意的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050030a00">
「你……一直呆在这里……
　在堀越公方这里吗？」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050040a14">
「是的。
　离开故乡之后就到了这里，
大多是在这里落脚。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050050a00">
「为什么？」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050060a14">
「为什么吗？
　……呼呣。被这样问的话，
也没有特别的理由。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050070a14">
「离开故乡之后，<RUBY text="··">笔直</RUBY>前进就到这里来了。
　就算到别的地方去也没关系——」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050080a07">
「公主殿下——！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だき。
	DeleteStL(200,true);
	OnSE("se人体_動作_抱く01", 1000);
	Shake("@StR*", 200, 15, 0, 0, 0, 300, null, true);


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050090a00">
「……」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050100a14">
「——虽然也无所谓，但人家又不愿意。
　要说理由这个也算是吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050110a00">
「就因为被挽留了……？
　就只是这样吗？」

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050120a14">
「我乐意接受人家的好意。
就这样随随便便拒绝又不好意思。
　如果要妨碍光的话就另当别论，
若不是的话顺着她的意思也没关系。」

//【光】
<voice name="光" class="光" src="voice/md02/0050130a14">
「而且伊豆这里的水土、食物、空气都很不错。
　住这里心情蛮不错的。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050140a07">
「公主，能这么说真感谢你啊——」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050150a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　光的话里感受不到一丝虚假。
　本来就不是爱说谎的人。

　光没有特别的理由而留在堀越公方这里吗？

　但是……公方这边呢？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050160a00">
「阁下。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050170a07">
「嗯？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050180a00">
「您是因为什么而希望光留在这里？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　按常识思考，这岂止是麻烦事。
　谁也不会欢迎按心情好坏就将
和平的城镇变成战场的客人吧？

　要么战斗要么逃跑，再不然则藏起来待其离开。
任一个选择都是正确的应对方式。
　就如同遭遇天灾时得到残存的幸运，却不顾这种
幸运恳求其留下——完全说不通。

　……所以，才在认为光可能是被谁匿藏的同时，
又对此种推测毫无现实感……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");;
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050190a07">
「因为是恩人。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050200a00">
「恩人……？」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050210a14">
「是吗。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050220a00">
「……」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050230a07">
「……被遗忘了……
　在一不留神差点被杀掉的我的面前，公主
英姿飒爽出现的勇姿，其全貌都已经深深
留在我记忆里了……!!」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050240a14">
「这么说来确实是濒死的时候。」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050250a14">
「嗯，想起来了！
　怎么看也不是要战斗的样子，又没受到
污染波的影响，觉得是很奇怪的生物所以
就没下手杀掉了。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050260a07">
「竟是那种理由！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050270a07">
「算了，我一开始就知道公主殿下没有
要救我的意思。
　结果上变成那样而已。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050280a07">
「但是多亏公主殿下来了我才能得救，
这也是事实，所以答谢恩惠是当然的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……足利茶茶丸的话里也看不出虚假。
　与光不同，谎言诡辩乃政治权力者惯用手段，
不能单从外表印象而盲信其话……

　或许，受到恩惠是事实。
　但我不认为仅仅因为这样。

　应该有别的原因要将光留下。
　这么想才觉妥当。

　瞬间能想到的两个理由。

　一个是，了解如何支配和控制光，
以自己的意志驱使她。
　……但这不用深究就能知道肯定不对。

　光并非把自己的事情委身他人的人。
“银星号”更是如此。不管实力还是口才。
他人要操纵她是完全不可能的。

　原本，眼前这两人的关系看上去就并非如此。
　足利茶茶丸不会对光有过度干涉，要是干涉了，
光住在这里也不会觉得轻松。

　那么？

　……是另一个理由吗？

　<RUBY text="·········">甚至不必去支配控制</RUBY>，
光的存在本身就符合堀越公方的利益。

　————这样吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050290a00">
「……斗胆询问。
　阁下将光留在身边，是有什么目的吗？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050300a07">
「嗯……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050310a00">
「……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050320a07">
「有吧。」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050330a14">
「我听说是有的。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050340a00">
「……那目的是什么？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050350a07">
「秘密。」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050360a14">
「我也听说是秘密。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050370a00">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050380a00">
「这样你没有异议吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我问光。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md02/0050390a14">
「没关系。
　光也是怀抱野心而活着，其他人
有什么愿望也是当然的。」

//【光】
<voice name="光" class="光" src="voice/md02/0050400a14">
「为了愿望而想利用光也行。
　在和我无关的地方了结，怎么也没关系。
如果妨碍到我，那肯定就是用战斗分出胜负。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　只能目瞪口呆，这么简单的结论。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050410a07">
「跟公主聊天，发觉对那些小事一一烦恼的
自己实在是愚蠢。
　我老是这样。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050420a00">
「……哈。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　迫不得已，我点头。

　可……还是很在意。
　堀越公方的目的究竟是什么？
　无法控制的杀戮者对其究竟
有怎样的利益价值？

　无法想象……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050430a07">
「公主殿下，早饭打算怎样？」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050440a14">
「要吃。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050450a07">
「跟厨房说一下就会给你的。」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050460a14">
「今天值班的是谁？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050470a07">
「三千场大叔。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050480a14">
「那个人啊。那就值得期待一下。
　我先过去。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆光、去る
	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　悠然自得，光步入走廊。
　目送着那样的背影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050490a07">
「那么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　进入视线的是足利茶茶丸。
　少女的瞳孔里蕴含着些许捉弄的神色。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050500a07">
「哥哥你之后打算怎样？
　要回镰仓吗……？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050510a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md02_006.nss"