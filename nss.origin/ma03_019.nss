//<continuation number="1630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_019.nss_MAIN
{

//嶋：分岐デバッグ仮

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

	$GameName = "ma03_020.nss";

}

scene ma03_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_018.nss"

//◆ガレージ
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190010a00">
「……怎么样？」

{	NwC("cg/fw/nwメカニック.png");}
//【ｅｔｃ／メカ】
<voice name="ｅｔｃ／メカ" class="その他男声" src="voice/ma03/0190020e018">
「没办法了。
　只能送到田村那里去修理了……在这里无法
处理。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　警察队的机库。
　围着破损的骑体——火箭来回忙碌的维修工的回答，
和预想中的一样。

　周围是松懈的选手和后勤人员。
　大概是从署长那里听说过我们是为了搜查而来到这里
的吧，没有看到什么怀疑的视线。

　不，就算真的有值得怀疑的人，现在的他们大概也没
心情去管了吧。
　一步步地提高记录，拼到了十一位，在向更高位发起
挑战的时候——遇上事故了。

　近在眼前的决赛就这样成为泡影，所有人都是一副垂
头丧气的模样。
　一个看上去像是领队的人喊了一句吃好饭都收拾一下，
得到的是有气无力的回答。

　但，这就有点麻烦了。
　对于警察队的不幸，我表示同情。但也仅此而已。可
还有其他问题。

　最后，还是没能在这个预选赛上确认寄生体。
　这么说，是在还没有出战过的备用骑里面吗……或者
是用什么方法蒙蔽了村正的眼睛呢。

　虽然村正说后者绝无可能。
　之前遇到的忍武者——可以隐身瞒过探查机能的怪物，
我在遇到之前也不会想到会有那种家伙存在。

　但是他用巧妙的诈术实现了那种异常。
　没有谁能保证不会再次发生同样的事情。

　……从村正的角度来考虑，自己既然要打倒银星号，
那么无法认出敌人的存在，这种事大概是绝对无法承认
的吧。
　拘泥于主观情结是没有用的。

　但首先，还是该怀疑尚未确认的剑胄吧。财力上还有
余地的队伍会准备预备的骑体和选手，以备不测。
　其中若存在带有“卵”的人，也并不奇怪。

　若要进行这方面的调查，现在如果警察队失去资格会
不方便。
　那样就没有理由再留在赛场了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190030a00">
「……就没有用练习骑参赛这个选择吗？」

{	NwC("cg/fw/nwメカニック.png");}
//【ｅｔｃ／メカ】
<voice name="ｅｔｃ／メカ" class="その他男声" src="voice/ma03/0190040e018">
「哎呀，没有带来啊。
　我们的练习骑，就是那东西。田村的甲王。
那种老古董，无论如何都不可能参加这种比赛
的吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……是战前的骑体。
　确实无法出战。如果想要博观众一笑那倒是无所谓。
这个时代的骑体如果现在要出战的话，至少也要达到翔
京的杰作天蝎座那种水平吧。

　这样的话，警察队的退赛大概已经不可避免了。虽然
可以找个理由去请求让他们留到明天，但对于比赛一般
都觉得败者马上离开的话比较干脆，如果一直不认输地
摆出选手的样子，那样会成为丑态。

　工作人员大概不会欢迎。
　估计得找点别的方法了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190050a02">
「凑斗先生，饭已经准备好了。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190060a00">
「谢谢你。」

{	FwC("cg/fw/fw一条_照れ.png");}
//◆照れ
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190070a02">
「……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0190080a03">
「哎呀，辛苦你了。
　连茶水都考虑到了。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0190090a04">
「真是心思细腻呢。
　不愧是绫弥大人。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190100a02">
「……没人说过，这里面有你们的份儿吧。
　算了就这样吧……给。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一条准备的是饭团和袋泡绿茶。
　大概是从商店买来的吧。虽然朴素但方便。
在这种情况下已经很不错了。确实，她很会照顾人。

　过后把钱付给她吧。
　我一边这么想着，一边拿起了一个饭团。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190110a02">
「说起来，我看到了奇怪的家伙呢。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0190120a04">
「奇怪？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0190130a03">
「是裸奔集团吗。」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0190140a04">
「那还真是头疼啊……」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190150a02">
「不是那种。
　有点，不安分的感觉……一群杀气腾腾的家
伙在附近转来转去的。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190160a02">
「但是，又摆出一副若无其事的样子来。
　这就更奇怪了吧。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0190170a03">
「不需要太在意吧？
　现在正是比赛的高潮。参赛者无论谁都是杀
气腾腾的吧。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190180a02">
「嗯……
　算了，大概吧。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0190190a04">
「也许是败退的队伍要对获胜的队伍做些恶作
剧吧。
　虽然这样有些懦弱无能，但也并不是不可能，
而且也并不少见。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0190200a03">
「但是，在大和基本没听说过呢……
　这就是国民品质的不同吗。
　先不说这个，景明大人。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190210a00">
「是，大尉阁下。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0190220a03">
「您接下来打算怎么做？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190230a00">
「我自己也正在考虑。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190240a02">
「我们已经算是警察队的人了呢。
　这里的人如果回去了的话，我们也没有继续
留在这里的理由了吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190250a00">
「是这样的。
　之前有设想过这种情况。不过……之前考虑
的是，只要在今天里发现目标，今天做个了结
就可以了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190260a00">
「这个目的已经无法达成了。虽然不甘心，但
在预赛结束的现在，我们还没有确定敌人。
　想要做出了结，需要等到今晚，或是到明天。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190270a00">
「所以，我们需要一个名义，能继续在这个参
赛者专用的区域多停留一段时间。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0190280a03">
「这可能会是个难题呢。
　到了决赛前，大家已经神经紧张了，这种情
况下一般的谎话恐怕是不管用的。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0190290a04">
「因为需要仔细观察工作人员，甚至要看看
备用的剑胄。　真想要个稳固的身份啊。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190300a00">
「确实如此。
　在这个意义上，警察队的成员这种身份本来
是很理想的……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190310a00">
「因为是参赛者所以行动比较自由。
　而且还不是瞄准优胜的强队，也就基本不会
引起其他队伍的警戒。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0190320a04">
「的确，是这么回事呢。
　有没有什么办法，让这些警察们参加明天的
决胜呢。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190330a02">
「……让他们凭借干劲和毅力，再加上努力和
友情会不会有办法？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190340a00">
「这不太现实。
　否决。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0190350a03">
「很困扰啊……」

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190360a07">
「没什么的，很简单很简单。
　这位哥哥来出场就可以了喵～」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸
	StR(1000, @0, @0,"cg/st/st茶々丸_通常_変装.png");
	FadeStR(300,true);

	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我突然听到了这个声音，回头看到了一位让人印象深
刻的少年——不，是少女——站在我面前。
　她微笑着，开心地盯着我的脸。

　周围的工作人员都看向了她。
　但是没人出声。

　他们从自己的立场上无法无视少女肩膀上的贵宾证。
但是因为事发突然，他们也许不知道该如何应对了吧。
　少女本人看上去毫不在意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆フラグ分岐
//◆茶々丸と既に会っている／会っていない

//$茶々丸遭遇 = true;

.//フラグ分岐
if($茶々丸遭遇 == true){

//――――――――――――――――――――――――――――――
..//●既に会っている


	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190370a00">
「——雷虎小姐。
　晚上好。能再次见到您我很荣幸。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190380a07">
「嗯，晚上好，哥哥。我是你的雷虎哦～
　我们果然是有缘又见面了吧～？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}else{

//――――――――――――――――――――――――――――――
..//●会っていない


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190390a00">
「……失敬了。
　您看起来应该是来宾吧，能允许我认识您一
下吗。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190400a00">
「我叫做凑斗景明。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190410a07">
「嗯，不必拘谨。
　我叫做弹丸雷虎，是个荒野的流浪者。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190420a07">
「叫我雷虎就可以了！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190430a00">
「我明白了。
　雷虎小姐。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}


//――――――――――――――――――――――――――――――
.//◆合流


	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190440a02">
「雷虎？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0190450a03">
「………………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0190460a04">
「………………」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190470a07">
「噢噢噢。那边的是大哥哥的跟班吗。
　那么我也对你们做个自我介绍吧。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190480a02">
「啊？　哦……
　我是——」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190490a07">
「虽然是这么想的不过还是算了吧。
　简单来说在我看来你们再加上周围那些人也
只是一包三十块钱的商品而已根本无所谓啊我
很认真的。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190500a07">
「所以说，进入正题吧。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190510a02">
「……凑斗先生。
　一下子让人感觉好生气啊。这家伙。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190520a00">
「忍忍吧。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　只能这么说了。

{	DeleteStR(300,false);}
　雷虎女士大摇大摆地走向破损的骑体。完全不管被她
的气势逼退的维修人员，将手放在了装甲上。
　她轻轻敲击之后，将耳朵附了上去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190530a07">
「啊啊，这东西不行了呢。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190540a00">
「您看得出来吗。」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190550a07">
「悬挂臂坏掉了。
　然后转轴严重扭曲了，发动机部分有一个齿
轮脱落了。分速齿轮也裂开了呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　维修工们瞠目结舌。
　………这也没办法。少女指出的问题，和他们刚刚向
队长做出的受损报告简要概括的一样。刚才的报告我也
看到了。

　只是一瞬间，就做出了和熟练的维修工同样的结论。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190560a00">
「……真是明鉴。
　我们刚才也得出了结论，除了送去厂商修理
没什么别的办法了。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190570a07">
「嗯喵。
　送过去也没用的哦。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190580a00">
「……怎么说？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190590a07">
「中枢骨骼扭曲了。
　这无论如何也修不好。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190600a07">
「……已经到寿命了。
　它作为竞技骑体已经被很珍惜地使用了特别
长的时间了吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190610a00">
「您连这种事情也看得出来吗？
　只是碰了一下……」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190620a07">
「因为我是雷虎。
　没啦，只是碰一下是不会清楚这些的呢。听
到<RUBY text="··">声音</RUBY>的话才可以大致<RUBY text="···">看出来</RUBY>呢。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190630a00">
「声音……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我好像，听到了非常不可思议的话。
　在近距离听到这段对话的人也都是一副狐疑的表情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190640a07">
「所以呢，该让这家伙休息了吧？
　再继续勉强使用的话，脊背就要断了啊。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190650a00">
「呃……」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190660a07">
「辛苦了，兄弟。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	StL(1000, @-30, @0,"cg/st/st茶々丸_通常_変装.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　少女轻轻吻了头盔，然后离开了骑体。
　她扔下了哑口无言的机械师们，回到了我这边。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190670a07">
「大哥哥。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190680a00">
「是。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190690a07">
「你明白我想说什么吗。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190700a00">
「不明白。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190710a07">
「很好。人类对于自己的智慧必须要时常保持
谦虚。
　这是因为只有这种谦虚的人，才不会陷入所谓
零契约金的营销骗局。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190720a07">
「也就是说，可以说大哥哥有足够的慎重，能
够确认每月的使用费用和解约手续费。
　这对我来说真是值得高兴的事啊。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190730a00">
「在下惶恐。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0190740a02">
「……这种对话可以沟通吗？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0190750a04">
「既然他们本人都没有在意，大概是没有问题
的吧。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190760a07">
「但是战士啊！
　不要让这种谦虚成为懦弱。因为好奇心能杀
死猫，寂寞能杀死兔子，懦弱能杀死狮子。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190770a07">
「这并不是在绿色的城市得到的一〇〇％勇气
汁能解决的问题！　那是假药！　而且如果是真
药就更不行了，从法律上讲的话大概吧。
　所以我必须要告诉你。凑斗景明！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190780a00">
「在。」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190790a07">
「命运的时刻来临了!!」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190800a00">
「哈啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　看来是命运的时刻来临了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190810a07">
「现在你该前往战斗的汹涌大海了！
　必要的<RUBY text="力量">剑胄</RUBY>我会准备的！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190820a00">
「力量？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190830a07">
「你怎么能只听那边的声音呢。
　灵魂语言经常是立体声的，你该全都听进去。
刚才那个是写作剑胄读作力量的表现手法。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190840a00">
「原来如此。
　那么，该如何解释呢。」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190850a07">
「参赛吧？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190860a00">
「哈啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　……就这样回到了最开始的发言了吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190870a07">
「我来准备剑胄。
　大哥哥就用那个剑胄参赛吧。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190880a07">
「这样警察队就不用退出了。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190890a00">
「……我有很多疑问，首先第一个。
　我没有理由撇开正规选手而自己出场。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　警察队的选手，只有今天参战发生事故的那一个人。
　但是他还健在。

　虽然他有些负伤，但和剑胄比起来基本上算是无伤。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190900a07">
「还是让伤员好好休息吧。
　而且，那也不是能够做出万全比赛的状况吧？
虽然身体无碍，但其他方面不清楚啊？　事故
之后的选手就是这样。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190910a00">
「这个……确实如此。
　但是比起并不是选手的我……」

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190920a07">
「哎？　大哥哥不是选手吗？
　我还以为你是警察队的替补选手呢。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190930a07">
「你身上的这种肌肉。
　平衡状况和游泳选手很像，各处的<RUBY text="··">粗细</RUBY>
会不太一样……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190940a07">
「看起来只可能是剑胄的操纵者啊喵～？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190950a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　少女一瞬间看穿了火箭的故障状况。
　对于操纵剑胄这种特殊道具的人，她能看穿这种确切
的特征也并不会让人感到难以置信。

　我并不是选手，这也仅仅是事实而已……
　不过如果我轻易否定，那么她再继续追问的话，我就
相当于自掘坟墓了。

　我有必要慎重作答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190960a00">
「……虽然我并不是选手。
　但我以前有过类似的经历。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0190970a07">
「嚯嚯。那你是在哪个公司做了测试用户吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190980a00">
「是。
　甲府的某个企业计划加入赛程的时候雇用了
我……最后，因为那个企业经营恶化，这个计
划失败了。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0190990a00">
「我参加过几次小规模的赛程。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　……这并不完全是谎话。虽然我也稍微加工了一下。
　去年夏天，我也和现在一样追着银星号的踪迹。为了
调查，以应征测试用户的形式潜入了某个企业——确实
有过这种经历。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191000a07">
「什么啊。
　那就没有问题了啊。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191010a00">
「不，问题非常多。
　首先是剑胄——」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191020a07">
「剑胄我会准备的。
　个人锻造的雷霆上位骑体，名为恐怖搬运者。
四翼减震全轴承，
是个健康成长的可爱的孩子。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191030a07">
「……如果不是那个叫复仇的荒唐新骑体出现，
也许这个骑体就会成为田村的主角哦？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191040a00">
「哈啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　似乎很复杂呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191050a07">
「我去把那个骑体借来。
　这样就可以了吧？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191060a00">
「但是，我没有支付押金的能力……」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191070a07">
「不用不用。不用押金。
　你可以随意使用，随意弄坏。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　……少女轻易地说出了像是用打火机点燃钞票海洋的
话。
　看来她家里有着很厉害的资产。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191080a00">
「况且我也没有作为选手登记……」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191090a07">
「我会想办法。
　今天晚上。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　……少女轻易地说出了蛮不讲理的话，与其说是推开
挡路的车，不如说是用喷气涡轮给喷飞了。
　看来她家里有着相当厉害的权力。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191100a00">
「…………」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191110a07">
「万事ＯＫ？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0191120a03">
「请等一下。
　我也可以说几句吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　我无言以对，大鸟大尉代替我与少女对话。
　大鸟大尉的表情里似乎有些微妙的成分。她与少女保
持距离的方式也有些微妙。态度像是有些戒备。

　……说起来，少女出现之后，大尉一直沉默。
　沉默得有些不自然。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191130a07">
「有什么事？
　完全没有见过的大姐姐。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0191140a03">
「……是很简单的事。雷虎小姐。
　为什么，<RUBY text="·">你</RUBY>要如此协助我们呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　她的问题也有些微妙的成分——特别是最后那句话的
音调——我这种感觉是错觉吗。

　至少，少女没有露出相应的反应。
　她完全没有回应大鸟大尉的微妙部分。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191150a07">
「那是因为不想让警察队退出啊。
　当然是这个原因吧？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0191160a03">
「……」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191170a07">
「这个大会，是翔京和田村之争，也就是装甲
竞技博彩化推进派和反对派的争斗。这一点，
现在不用我再一一说明了吧？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191180a00">
「是。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191190a07">
「并且呢，我是反对派。
　虽说我<RUBY text="··">周围</RUBY>也有赞成派的家伙吧。
　那些事我就不管了。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0191200a03">
「……」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191210a07">
「难得的比赛，不希望再染上铜臭啊。所以从
我的角度来说，如果反对派不获胜的话，我会
很困扰。
　另外我看了看进入决赛的二十队。」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191220a07">
「能称为反对派的只有第二位田村和十一位的
警察队。其他除了推进派就是中立。
　这样的话，如果警察队再退出，反对派就完
全孤立了。」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191230a07">
「警察从立场上来说，是不能赞成赌博化的。
结果只有警察才是田村唯一的伙伴啊。
　会想让人帮他们一把吧？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191240a00">
「…………」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0191250a02">
「什么啊。
　关键只要田村获胜就可以了吧？　有没有同伴，
是那么重要的事吗？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191260a07">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　少女将双手的手掌举到肩膀的高度，手心向上，然后
脖子左右运动了几下，最后用鼻子哼着笑了笑。
　少女的视线以斜向三十度左右的角度刺向一条。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆コミカル怒り

	SetComic(@0,@0,15);
	SetFwC("cg/fw/fw一条_怒りc.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0191270a02">
「凑斗先生。
　我没有自信能和这家伙活在同一片天空下。」

{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191280a00">
「忍住。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　我只能这样说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191290a00">
「……竞速虽然是个人竞技，只有首位的一骑
能够得到荣誉，但如果无视这一点，也可能演
变成为集团战斗。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191300a00">
「比如说。
　让同伴们围住会成为自己对手的骑体，封住
他的行动，而自己在这段时间里悠然地夺取第
一位——这样。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0191310a02">
「……这样不算是犯规吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191320a00">
「当然了，露骨地妨碍比赛会犯规。
　但只要不够露骨就可以了……」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191330a00">
「而且只要能够无视自己的胜败，对于犯规也
就没有了犹豫的理由。
　作为极端的情况，也有攻击破坏田村骑体后
退出比赛，让留下的翔京获胜这种手段。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　……不过既然胜利本身不是目的，而是想要以胜利来
得到客人对于赌博化的赞同，应该是不会做出这种程度
的暴行吧。
　不过稍微平缓些的妨碍则很有可能。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191340a07">
「这种情况下，田村如果有个伙伴，情况会很
不一样。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191350a07">
「而且如果那家伙很有活力，能够独自牵制住
其余的杂兵们，也许还能够消除田村的不利局
面。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191360a00">
「就是说，您在期待我这一点吗。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191370a07">
「大哥哥能做到的吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191380a00">
「这是您太高估在下了。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191390a07">
「是吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　少女笑着，她的表情看起来就像是有人对她说太阳比
月亮更靠近地球。
　……我和这个少女相遇不久，我完全不明白她为什么
会如此信赖我。

　但是，我的想法已经基本固定在某个方向上了。
　我瞥了一眼，观察了同伴们的表情。

　一条虽然不喜欢她，但似乎能够接受这个提议。
　她果然还是期许挑战翔京——挑战六波罗的田村吧。

　大鸟主从摆出了扑克脸。和平时一样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191400a00">
「坦诚地说，我并不是没有兴趣。
　我自己在年少的时候也曾经梦想成为装甲选
手。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191410a07">
「嗯嗯。
　男孩子就该这样。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191420a00">
「但是，我不知道现在自己的身体能力能否承
受竞速的负荷。
　关于这一点，我有必要活动一下身体进行确
认。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191430a00">
「这样可以吗。
　明天早上我再给您回答吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　……一条眨了眨眼，大鸟大尉轻轻点头。
　看来她们明白了我真正的意思。

　只要摆出接受少女提议的态度，警察队就不用撤退，
我们就可以自由行动。
　既然我们想要搜索寄生体，对于我们来说没有比这更
合适的了。

　我们在今晚解决寄生体的问题，到了早上再向雷虎女
士辞行。
　如果能够如此，那就太理想了。

　……我不否认，这样对于这位少女有些不诚实。
　但是赛道也算一种圣域。无论怎样考虑，也不是外行
人能随意踏入的地方。

　不过，在最糟糕的情况下，我也把这一点纳入了考虑
的范畴。
　就是说，今晚没能发现寄生体的情况。

　这种情况下，寄生体通过某种手段欺瞒了村正的感觉，
这种让人不想承认的可能性会变得更加可能。
　那么剩下的方法只有岸边防御作战了。

　目标应该是潜伏在参加决胜的骑体之中吧。追求『力量』
的意志无疑和他们更加接近。
　自己成为选手进入他们之中，在“卵”觉醒的瞬间进
行攻击，将其击倒。

　根据村正的感觉，“卵”的孵化恐怕就在明天。我们
不能在观众席里悠然地观察。
　不如在最靠近<RUBY text="··">灾害</RUBY>爆发预计地点的地方等待。

　聚集了大量观众的决胜赛场中，<RUBY text="······">银星号的出现</RUBY>恐怕是
不可以发生的事。
　不能让这种状况延长一分一秒。

　考虑了这一点，我的回答大概已经接近最佳答案了。
　但这也仅仅是对我合适而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191440a00">
「……对于您的厚意，我还提出这种自私的条
件。实在不好意思。」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191450a07">
「不，没什么～
　那就在明天之前决定吧。我先把手续办好。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191460a00">
「…………
　可以吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　她强迫让大会承认参赛权的选手如果最后还是不上场，
这种事大概会让她丧失立场吧。
　少女还是若无其事地笑着……她是个大人物吗，还
是旁若无人呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191470a07">
「没问题。
　剑胄我很快就会搬到这边来。你先穿上试试。
如果不合身，我再准备另外的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191480a00">
「不。
　对于这一点，您的厚意我心领了。」

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191490a07">
「哎？　怎么回事？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191500a00">
「我用自己的竞技用剑胄上场。
　如果参战的话。」

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191510a07">
「你有吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191520a00">
「以前我得到过一副。
　虽然是很旧的骑体……但我还是觉得，尽量
用熟悉的骑体更好。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191530a00">
「如果没有太大问题，希望您能同意。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191540a07">
「嗯，嗯～没办法啊。
　既然你这么说……」

{	FwC("cg/fw/fw茶々丸変装_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191550a07">
「可怜的搬运者。再次失去了赢得万人瞩目的
机会。
　……为什么名字上加了恐怖就会这样啊。
　“征服者”也完全不在时期内……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191560a00">
「实在抱歉。
　难得有您的美意。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0191570a07">
「不，没关系。
　那么我明早再来——」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191580a00">
「是。劳烦您了。
　祝您今晚愉快。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　少女挥手离开了，我行礼目送她离去。
　我抬起头的时候，她已经不见了。她的出现和离开都
像是阵雨一样。

　机库中也像是下了阵雨一样，满是呆然的氛围。
　看来在众人恢复理性，理解刚才说的那些事之前，还
需要等待一段时间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0191590a01">
《……可以理解为，这个提议来得正好吗。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191600a00">
（可以这样说吧。实在有些太顺利了，让人不
得不感到可疑。
　刚才你都听到了吧？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0191610a01">
《大致都听了。
　不过……我还是第一次听说，你有竞技用的
骑体啊。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0191620a00">
（我怎么可能有呢）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0191630a01">
《…………哎？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 1000);

}

..//ジャンプ指定
//次ファイル　"ma03_020.nss"