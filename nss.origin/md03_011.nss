//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_011.nss_MAIN
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
	#bg056_建長寺三門前_03=true;
	#bg032_八幡宮奥舞殿内b_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_012.nss";

}

scene md03_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_010.nss"


//◆建朝寺。bg056_夜
//◆親王座所

//冒頭以降、演出として立ち絵立たせていません。 inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);


	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",2500,true);

	WaitKey(2000);


	OnBG(101, "bg032_八幡宮奥舞殿内b_03a.jpg");
	FadeBG(1500, true);

	Wait(500);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0110010a01">
「…………就是这样了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　那是奉刀参拜当日，在八幡宫发生的事。
　之后被带到了伊豆堀越。
　与景明分开，被囚禁，之后被救出，来到<RUBY text="这儿">建朝寺</RUBY>——

　将觉得该说的话全说了。
　倾诉对象是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆署長

	StR(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	FadeStR(300, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　被景明称作『署长』的男人，菊池明尧。
　由于以前在凑斗家呆过，对“村正”也知之甚多，对
离开景明的我来说，是这个时代最熟悉的人物之一。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//◆舞殿宮

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　舞殿宫春熙亲王殿下。
　是当今皇上的弟弟。虽然今天是初次见面，他和署长
两人似乎在暗地帮助景明与我追踪银星号。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大鳥香奈枝＋さよ

	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FadeStR(300, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　以及有过一面之缘的大鸟香奈枝及其侍从。
　她们虽是大和人，却隶属外国军队，还身处大和境内，
真是搞不懂。是叫什么ＧＨＱ还是进驻军来着……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(200,true);
//◆一条
	StR(1000, @0, @0, "cg/st/st一条_通常_制服b.png");
	FadeStR(200, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　这位也曾缠着景明，所以认识，是叫
一条绫弥……说反了，是绫弥一条。
　不知出于什么理由，她一直用奇妙而复杂的眼神
望着我……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(200,true);

//◆黒瀬童子

	StL(1000, @0, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStL(200, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　最后是名为黑濑童子的武人。
　他似乎是与六波罗幕府敌对的某一势力的头目。潜入到
茶茶丸的住宅，在走投无路时被景明和我所救，这次他再
次潜入救下了我。

　似乎只有他对银星号一无所知，在听我说话的时候经常
露出困惑的神情。
　蒙面后的他沉默不语，似是在咀嚼情报。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110020a10">
「……真是惊人……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110030a10">
「惊讶过度，本王都不知道到底该对什么表示
惊讶了。
　是吧，署长。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110040a11">
「……是的。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110050a10">
「这位大姐居然是村正的剑胄，不过署长已经
事先说过了本王就先不计较了。
　……虽然其实不能不计较。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110060a10">
「你说景明君被银星号洗脑，倒戈到
幕府侧了？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0110070a01">
「…………」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110080a04">
「但是就听到的情报而言，不能将茶茶丸大人
和六波罗一视同仁。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md03/0110090a03">
「是啊。
并非幕府而是堀越公方与银星号有密切关系，
如今连景明大人都被收入囊中……是该这样
考虑吧。」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0110100a02">
「那家伙究竟想做什么？」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110110a04">
「这个嘛……
　看来像是要和银星号联手做什么大事。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md03/0110120a03">
「似乎不只是单纯地利用她进行幕府内的
权利争夺或是让她在与进驻军战斗时帮忙
这一类的。
　是更加……不同性质的。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110130a11">
「没错。
　四公方其他三人——游佐童心、今川雷蝶、
大鸟狮子吼定各怀野心。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110140a11">
「但他们首先是靠着六波罗这座靠山，才能
团结一致排除外敌。
　但是，足利茶茶丸——」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110150a10">
「总觉得她给人以不同的感觉。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110160a11">
「是的。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md03/0110170a03">
「…………」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110180a04">
「…………」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0110190b26">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　大家不约而同地沉默了。
　因为谁都答不上来吧。

　就连自己说足利茶茶丸与银星号有关系的我也完全
摸不清茶茶丸的目的，所以也没办法。
　她——究竟想做什么呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110200a10">
「啊，对不起，村正大姐。
　我们自顾自讨论得起劲了。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0110210a01">
「没什么……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110220a04">
「要说起来，应该是大家都冷场了。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110230a10">
「光是听你说，我们还什么都没告诉你呢。
　呃，这边也有很多事——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　宫大人和署长一起简要说明了从奉刀参拜日至今的事。
　由于银星号使八幡宫<RUBY text="···">消失了</RUBY>，
宫大人便移居到这座建朝寺了……

　建朝寺与在幕府执牛耳的足利一门渊源很深，然而暗
地里心向朝廷的僧人其实也很多，以宫大人为中心的一
派人的活动比以前更自由了……

　其中的一项成果便是与因反抗幕府而被灭族的冈部一
族残党的接触，而率领他们的就是这位黑濑童子……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110240a10">
「之后听童子说他在堀越御所被一个奇怪的男
人救了……就问名字是不是凑斗景明。
　真是乱套了呀。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110250a10">
「到处找都找不到的景明君居然在那种地方。
　就急忙拜托童子再去做一次详细调查。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0110260a01">
「……是这样啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　结果他便发现了被幽禁的我，就是这么回事。

　……说实话，我并不怎么关心事情的经过。

　我只关心——今后的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110270a11">
「好了。
　情报整理完了，来商量今后的行动吧。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110280a10">
「是啊。
　必须救出景明君。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110290a11">
「不，宫殿下。
　那种事可以稍后再做。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　身为景明养父的男人如此断言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110300a10">
「菊池，什么叫稍后？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md03/0110310a03">
「……这个嘛……被利用了就是说眼下还没有
性命之忧。」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110320a04">
「也要看被怎么利用以及被利用做什么。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110330a11">
「堀越公方的企图很让人在意，但也不能忘了
幕府全体的动向。
　如今这件事更为急迫。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110340a11">
「幕府鼓动朝廷宣旨封足利邦氏为大将领……
　如果成功了，届时大和的形势会迎来决定性
的转折点。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md03/0110350a03">
「……嗯。
　毫无疑问ＧＨＱ会看准时机策划军事行动。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110360a04">
「他们似乎准备了会对战争起决定性作用的新
兵器。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110370a11">
「六波罗与进驻军。
　我们不想让任何一方胜利。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110380a11">
「当然，也不想看到两者相持不下，无端让
国土穷乏、民生凋敝。」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0110390b26">
「……如今不应让两者相争。
　所以，必须要妨碍足利四郎就任大将领
的宣旨。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110400a11">
「没错。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110410a10">
「本王和京都取得联络，让他们尽量拖延，
但是……
　不知道能拖延到什么时候。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110420a11">
「肯定撑不了多久吧。
　趁现在准备幕阁内的工作——」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0110430a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　话题开始转到政治方面。
　我知道……对他们来说这才是最重要的。

　可以理解，也不觉得他们愚蠢或薄情。

　但是。

　但是，我——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0110440a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_012.nss"