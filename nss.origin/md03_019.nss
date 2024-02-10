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

scene md03_019.nss_MAIN
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
	#bg056_建長寺三門前_01=true;
	#bg077_建朝寺得月楼前_01=true;
	#bg032_八幡宮奥舞殿内b_01=true;
	#ev128_病床の光_g01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_020.nss";

}

scene md03_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_018.nss"


//◆bg056_昼

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg056_建長寺三門前_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒",2000,true);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　决心已定。

　但是，搭救之恩尚未还。
　不能擅自离开。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg077_昼
//◆bg032a_昼

	OnBG(101, "bg077_建朝寺得月楼前_01.jpg");
	FadeBG(2000, true);

	Wait(1000);

	OnBG(102, "bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(2000, true);

	Wait(500);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190010a10">
「你要……去普陀乐城？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190020a01">
「是的。」

{	StL(1000, @0, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190030b26">
「太鲁莽了！
　我们也曾数次派间谍进去，能顺利潜进去的
人数还不到两成。」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190040b26">
「而且如今正在准备宣旨大典，警备比平时还
要森严。
　就算是善于隐形之技的剑胄，过了护城河
肯定会马上被抓住。」

{	StR(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	FadeStR(300, false);
	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190050a11">
「如果幕府内部有人帮忙带路就另说了……
　但是尚无这项准备。」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190060a11">
「现在不行，村正。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190070a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我料想到了，没人赞同。
　没有反对的只有沉默不语的绫弥一条和原本
就不在场的人物。

　大鸟香奈枝和她的侍从不在寺里。
　似乎为了什么地下工作，正飞往夷国。虽然
有说明过他们要去联合国总部做什么事，但我
不是很明白。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190080a10">
「本王知道你想救景明君。
　本王也想……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190090a10">
「但是，不能贸然行事。
　这时候更要冷静。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190100a01">
「我明白。
　但是……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190110a01">
「没时间了。
　如果只是等着机会来临，事情就无法挽回了。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190120a01">
「……我是这样想的。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190130a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一半是直觉。
　但是也有根据。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：病床の光
	EfRecoIn1(18000,600);

	CreateTextureSP("思い出", 5000, Center, Middle, "cg/ev/ev128_病床の光_g01.jpg");

	EfRecoIn2(300);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　凑斗光的寿命所剩无几，足利茶茶丸说过的。
　那不是在说谎——就算用剑胄之眼诊察，得出的结论
也一样。

　那么……
　那么对想要维持凑斗光生命的景明和想利用银星号实
现某种企图的茶茶丸来说，时间都所剩无几。

　他们不会制定冗长的计划。
　既然有了目标，肯定会想在短时间内达成目的。

　然后，一旦他们达成目的。
　那就——再也<RUBY text="·····">无法挽回了</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("思い出");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190140a01">
「所以，必须行动。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190150a10">
「…………」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190160b26">
「…………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190170a01">
「我受你们照顾，却还这么任性，非常抱歉。
　但是……我是剑冑。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190180a01">
「所以要去<RUBY text="主人">操控者</RUBY>身边。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　说着，我站起身来。
　边往外走边考虑——却想不到任何潜入的方法。

　在搜索银星号时去过那座城几次，所以那里的警备有
多森严自己非常清楚。
　正面攻击肯定是行不通的。得想办法……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190190a11">
「村正，等等！」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190200a01">
「……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190210a11">
「宫殿下……可以吗？」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190220a10">
「是啊。
　这样一来就下定决心了。」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190230b26">
「确实。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190240a01">
「……？」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190250a11">
「村正，你要去的话就与我们合作吧。
　这才有希望。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190260a01">
「——哎？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190270a01">
「不，但是，那个……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190280a11">
「不要误会。
　我们也有我们的苦衷。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190290a10">
「说实话……我们也不能慢慢地等着了。
　情势已经严峻到我们不得不背水一战的地
步了。」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190300b26">
「妨害工作毫无效果，足利邦氏就任大将领的
旨意已经确定了。
　就连典礼的时日都定好了。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190310a11">
「宣旨典礼的开办等同于六波罗体制的复活，
这意味着与进驻军展开决战。
　我们想避免的最糟情况眼看就要发生了。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190320a10">
「香奈枝正在联合国方面做努力，但是不知道
来不来得及。
　我们也必须行动起来。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190330a11">
「就算来硬的，也要迫使典礼中止或是使其延期。
　……就是这样，村正。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190340a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190350b26">
「另外，本人还有私人原因。
　我义姐正被囚禁在普陀乐城。」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190360b26">
「虽然计划了几次救出行动，却都没能成功。
　这次一定要成功救出她来。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190370a10">
「樱子吗。
　是啊……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190380a11">
「具体的计划——」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0190390a02">
「别谈什么计划了。
　无论怎么制定作战计划，鲁莽就是鲁莽。」

{	StCR(1000, @80, @0, "cg/st/st一条_通常_制服.png");
	FadeStCR(300, false);
	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0190400a02">
「能潜入就潜入，被发现了之后就大闹一场。
　闹他们个天翻地覆，让他们想办典礼也
办不成就行了。」

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0190410a02">
「这就赢了！」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190420a10">
「……」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190430a11">
「……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190440a11">
「说的没错。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190450a10">
「是吗!?」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190460a11">
「目前的人力物力不足以让我们制定一个周详
的作战计划。
　既然如此，再考虑就只是浪费时间了。」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190470b26">
「是啊是啊。
　本人也赞成一条大人的话。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190480a10">
「……你们可真是典型的热血青年呢。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190490a11">
「那么，来大致总结一下吧。
　潜入普陀乐的是绫弥、黒濑大人、村正。」

//【署長】
<voice name="署長" class="署長" src="voice/md03/0190500a11">
「潜入后，绫弥负责破坏城内。
　黒濑大人救出樱子公主。
　村正去找景明。
　我会准备退路。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190510a11">
「可以吗？」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0190520a02">
「行。」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190530b26">
「嗯。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190540a01">
「……好。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_020.nss"