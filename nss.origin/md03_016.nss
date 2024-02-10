//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_016.nss_MAIN
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
	#bg056_建長寺三門前_02=true;
	#bg077_建朝寺得月楼前_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_017.nss";

}

scene md03_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_015.nss"


//◆bg056_夕
//◆bg077_夕


	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg056_建長寺三門前_02.jpg");
	FadeBG(0, true);


	Delete("上背景");
	FadeDelete("黒",1500,true);

	WaitKey(1000);

	OnBG(101, "bg077_建朝寺得月楼前_02.jpg");
	FadeBG(2000, true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160010a02">
「村正。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　被叫住……我顿了一下，转过身来。
　虽然装作在思考的样子，其实我什么都没在考虑。

　我只是在发呆。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm17", 0, 1000, true);

	StR(1000, @0, @0, "cg/st/st一条_通常_制服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160020a01">
「……什么事？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160030a02">
「我有话想问你。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　对方是名为一条的姑娘。
　在没有第三者的走廊上，她步伐自然地朝我走来。

　……其实我也不是没料到她会这样接触我。
　因为她的脸皮并没有厚到可以完全掩盖内心。

　明显能看出她对我的猜疑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160040a02">
「你知道雪车町一藏吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160050a01">
「……嗯。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160060a02">
「那家伙，之后署长先生也告诉我了。
　——因为村正的剑胄被诅咒了，
一旦杀掉一个敌人
就必须再杀掉一个同伴。」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160070a02">
「所以凑斗先生至今不光杀了恶人，还杀了好
多无辜的人。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160080a01">
「————」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160090a02">
「回答我。
　这是真的吗？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160100a01">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160110a01">
「嗯。」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160120a02">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160130a01">
「是真的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗·天牛虫
	StCR(990, 230, -91, "cg/st/3d正宗天牛虫_正面.png");
	Move("@StMR*", 300, 150, @0, DxlAuto, false);
	FadeStCR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　那个毫无预兆地出现了。
　不，有预兆——如果说是少女那熊熊的愤怒
唤来那铁甲的话。

　巨大的钢铁天牛虫。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160140a01">
「你……有剑胄？」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160150a02">
「…………」

//【一条】
<voice name="一条" class="一条" src="voice/md03/0160160a02">
「骗人的……
　他不可能这么做！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160170a01">
「……」

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160180a02">
「是真的吗！
　凑斗先生驾驶着你……
真的连孩子都杀吗!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160190a01">
「……是事实。
　但是，请不要误会。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160200a01">
「不是主君……凑斗景明所杀的。
　是我杀的。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160210a01">
「他只是被我利用了，所以——」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160220a01">
「————」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160230a02">
「……？
　怎么了。你想说什么？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160240a01">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　不对。

　不是这样。
　不是——这样的。

　那日的誓言。

　我们认同了彼此。
　认同了彼此的意志。

　所以，不能否定。
　不能否定他的意志。即使这样等同于也承认了他的罪行。

　村正的杀戮是他的罪孽。
　
　
　当然，也是我的罪孽。

　是<RUBY text="···">我们的</RUBY>罪孽。

　是我们自愿为之，我们自己的罪。

　不能被怜悯之情和自己的罪恶感所囚，而否定他的
罪行。
　他不希望这样。

　认同吧。

　认同他的意志与责任。
　就如认同自己的意志与责任那样。

　我们是两位一体的武者。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160250a02">
「喂！」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160260a01">
「可以更正吗？」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160270a02">
「啊啊？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160280a01">
「是我们杀的。
　是我和主君二人，出于自己的意志。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160290a02">
「…………」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160300a02">
「那是什么……想推脱责任吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160310a01">
「不。
　如果你想责问村正的罪与责任的话，
我已做好了应答的准备。」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160320a02">
「在这里开打也无所谓是吧？」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160330a01">
「你想开打是你的自由。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160340a02">
「什么？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160350a01">
「我会逃跑。」

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160360a02">
「不是要应答吗？」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160370a01">
「这就是应答。
　我不会与你为敌。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160380a01">
「但是……我现在还不能死。
　所以要逃。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160390a02">
「自说自话。
　你明明不顾对方的感受
杀了那么多人……」

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160400a02">
「不觉得太自私了吗？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160410a01">
「……觉得。
　所以你可以杀了我。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160420a01">
「失去操控者的剑胄对完全的武者，胜负
不言而喻。
　但是……我会挣扎的。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160430a01">
「就算毫无成功的希望，我也会挣扎着逃生。
　嗯，没错……就像被我们杀掉的人临死之前
所做的那样。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160440a02">
「…………」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160450a02">
「为什么现在不能死？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160460a01">
「因为还有事要做。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160470a02">
「什么事？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160480a01">
「夺回凑斗景明的意志。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160490a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　是的。

　一旦认同了他的意志——
　就无法容许现在的状态。

　现在他的意志真正地被剥夺了。

　心被扭曲了。
　不是他自身的意志所决定，而是由外界的干涉造成。

　夺回来。
　夺回他的意志的自由。

　这件事由起誓成为他的剑胄、他的半身的我来完成。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160500a02">
「——」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160510a01">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我探寻着退到后方的时机。
　如果要想逃走而不是迎战的话，蜘蛛形态或许
比较有利。

　但是变形需要一定的时间。
　现在变形的话，会产生致命的破绽——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆正宗消去
	OnSE("se人体_動作_跳躍01", 1000);

	Zoom("@StMR*", 150, 0, 3000, null, false);
	DeleteStCR(150,true);


	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160520a01">
「……？」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160530a02">
「……如果像你说的那样……」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160540a02">
「若是你和凑斗先生共同犯下的罪行，
只制裁一方也没用。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条去る

	OnSE("se人体_足音_歩く08", 1000);

	DeleteStR(300,true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160550a01">
「……绫弥一条……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160560a02">
「去找回<RUBY text="主人">操控者</RUBY>吧。」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0160570a02">
「在那之后——做个了断。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0160580a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"md03_017.nss"