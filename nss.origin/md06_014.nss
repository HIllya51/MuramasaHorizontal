//<continuation number="540">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_014.nss_MAIN
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
	#bg016_公園c_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_015.nss";

}

scene md06_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_013.nss"


//◆難民居住地

	SoundPlay("@mbgm30", 0, 1000, true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 1500, "#000000");

	OnBG(100, "bg016_公園c_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	DrawDelete("絵色黒", 1000, 100, "blind_01_00_1", true);

//村正はひと言しか喋らないので立ち絵を立たせていません inc櫻井

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　难民——即受战争迫害而流离至镰仓以寻求
庇护的人们，他们大都在被当做放火用地空地 
或公园里搭建住所。
　那里的环境自然十分恶劣。

　临时棚屋已经算好的了。多半住在
甚至连帐篷都称不上的所谓帐篷里。
　所以传言说他们在传播疾病，也是无可奈何。

　……那么，到底怎么回事呢？

　我尾随那两个男子至下游的桥——路程的确
遥远又不便——渡河，来到难民居住地。
　本想适当抓个人来问话，却并非能问话的氛围。

　明明有人，却不现踪影。
　像是屏息窥视我的样子。

　真是戒备森严啊。
　难民和原住民关系不好，经常发生冲突，所以
严加提防也是可以理解……话虽如此，但一直这么
下去也解决不了问题。

　要自己上前打招呼吗？
　但以当下这种气氛，很可能结果会让他们
警戒心更重，不过——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140010e228">
「咦……你？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140020a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一个年轻男子从屋子的阴影探出脸来。
　看到我后，仿佛搜寻记忆般歪着头思索，
继而又将视线投向我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140030e228">
「这不是昨晚的醉鬼嘛。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140040a00">
「…………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0140050a01">
「……你昨夜似乎做了相当
有趣的事呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　与之前完全相同的声音，
从背后传来令人刺痛的视线与言辞，
但我仍置若罔闻。
　不管怎样，这毕竟是个机会。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140060a00">
「那时吵扰到您了。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140070e228">
「不……没事啦。
　也多亏你把事情摆平了。」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140080e228">
「那你来这儿做什么？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140090a00">
「有些事想要打听一下——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　刚一开口却又有些犹豫。
　要问话就必须先表明自己的立场，不过……
对他们来说警官这个称号管用么？

　恐怕对方不会轻易接受我的好意。　
　但是，不以警察自居的话，我的身份　
不过是昨天的醉汉。
应该套不出什么有用的话来。

　……迫不得已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140100a00">
「失礼了，其实我是一名警察。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140110e228">
「……警察!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　果然不出所料。
　年轻男子的脸上明显抽搐了一下，周围原本
压抑的气氛也变得<RUBY text="····">一触即发</RUBY>。

　法制上，对于算不上正式镰仓市民的他们而言，
警察并不是他们的保护者。
　不如说正好相反——因此，为了消除
他们的畏惧，我赶紧继续说了下去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140120a00">
「请放心。
　我并不是来劝说你们离开的。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140130e228">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140140a00">
「我来此地只是为了调查一下
你们的情况。
　如果方便的话，能否打听一下。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140150e228">
「……听后你想怎么做？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140160a00">
「只是想知道详情。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140170e228">
「最终还不是会把我们赶出去？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140180a00">
「难以否认。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　就算用花言巧语也只是自欺欺人而已。
　对此我必须实话实说。

　实际上，军队或警察很可能只是采取些武断的措施
企图解决难民的问题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140190e228">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140200a00">
「……但是，我认为还是不要变成那样比较好。
　尽管知道自己能力有限……
但或许我仍能做些力所能及之事。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140210a00">
「愿意配合我吗？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140220e228">
「…………
　嗯，如果只是作点交谈。」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140230e228">
「反正我们的生活也没法变得更糟了……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140240a00">
「非常感谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　虽说只是消极的同意，还是鞠躬致谢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140250a00">
「你们来自何方？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140260e228">
「那可多了。
　我是从骏河来，
不过也有来自远江、尾张之类的地方。」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140270e228">
「但大都是东海地区。
　虽然也有人从更远的地方来，但为数不多。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140280a00">
「……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　也就是说这里的难民集中营，是被在近畿东海开展
抗争的今川雷蝶和足利幸行驱逐的人们的聚集之所吗。
　为争夺六波罗主权而展开激斗，导致他们失去栖身之地，
甚至逃来镰仓。

　对他们来说，已无安身立命之处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140290a00">
「目前，是希望能在镰仓生活吧？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140300e228">
「也别无他法了……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140310a00">
「有什么不如意的事吗？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140320e228">
「不如意？
　房屋、食物、就业机会都匮乏，
大致上就这些吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　男子耸着肩答道。
　其实这根本就是显而易见的事。

　总之，对他们来说更为严重的问题在于
和正规市民间不断扩大的矛盾吧。
　……解决这样的问题并不在我的能力范围内。
只能期待日后行政机关来处理。

　我能做的只是一些更细微的小事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140330a00">
「我听说你们和原住民之间也有点纠葛。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140340e228">
「啊……因为我们是群不被欢迎的人啊。
　总会产生各种各样的争执。」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140350e228">
「说实话，我很明白<RUBY text="他们">住民方</RUBY>的心情。
　自己的城镇突然涌入大批衣衫褴褛的
家伙，任谁都会感觉厌恶吧。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140360a00">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140370e228">
「但我们都是因为走投无路才来到这里。
　就算让我们滚出去，我们也办不到。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140380a00">
「嗯。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140390e228">
「我们也……希望能被他们接受。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140400a00">
「有什么导致你们关系恶化的
决定性事件吗？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140410e228">
「是指桥的事？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140420a00">
「是的。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140430e228">
「他们说是我们毁坏的。
　但是，我们并没有做……」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140440e228">
「这里的人哪有那个闲心啊。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140450a00">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140460e228">
「何况把桥毁坏，我们也得不到任何好处吧。
　真是无聊至极。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140470a00">
「那么，你们觉得是谁做的？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140480e228">
「谁知道。
　没准是某个家伙的恶作剧吧？」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140490e228">
「否则的话……虽然我不愿这么想……
　但也有可能是住民方为了制造把我们赶出去
的借口，自己把桥弄坏，然后——」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140500a00">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140510e228">
「……哎。
　我不过是随口说说。」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140520e228">
「但是，这并非不可能。
　我也知道住民方在怀疑我们……总之
彼此的心情都差不多吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0140530a00">
「……也许如此吧。」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0140540e228">
「哎，真是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　他移开视线，面露苦笑。
　真是疲惫不堪的笑容。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_015.nss"