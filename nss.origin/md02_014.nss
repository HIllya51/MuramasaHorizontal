//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_014.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_015.nss";

}

scene md02_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_013.nss"

//◆食卓
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm27", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　与早上不同，堀越公方现身于午餐的饭席。
　与年龄相当的惊人饭量，且毫不挑食。

　光不在。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140010a00">
「刚才似乎因何事而骚动了。」

{	FadeStL(300,false);
	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140020a07">
「啊——那个啊？
　不是什么大事。只是个毛贼而已。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140030a07">
「似乎被他溜走了。
　算了，怎样都行。」

{	FadeStR(300,false);
	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140040a01">
「……那毛贼。
　不会是个魁梧的和尚吧？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140050a07">
「？　……不是。
　什么啊，你们见过他了？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140060a01">
「给我等一下。
　那是你朋友？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140070a07">
「你这么说是想吵架吧。
真想这样回你一句。
　就是那样的关系。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140080a01">
「看起来就气味相投。
　性格一样坏。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140090a07">
「你真的想吵架!?」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140100a01">
「吃饭时候吵吵闹闹的请到一边去。
　太烦人了。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140110a07">
「你这下等盔甲，可知道自己在谁家吃饭啊……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140120a07">
「那家伙说了些什么？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140130a01">
「没什么。
　尽是神经质地大笑。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　村正说着皱起眉头，我却偷偷放下心来。
　其实，一直无法抹去那僧侣是否为引起骚动原因的忧虑，
但似乎是杞人忧天。

　我并非堀越公方府的人，就算他是抱有敌意的
入侵者，我也没有抓捕的义务。
　作为食客的处境，受其指点并且获益，综上考虑，
心中的感觉难免复杂。

　那句指点。


　————无我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140140a00">
「…………」

{	FadeStL(300,false);
	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140150a07">
「哥哥，你讨厌燕鱼吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140160a00">
「——哈。
　不，没有。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140170a07">
「是吗？
　筷子夹着不动，我还以为你很讨厌呢。」

{	FadeStR(300,false);
	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140180a01">
「不错的寒季燕鱼。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140190a07">
「今早才送来的。
　好好品尝吧。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140200a01">
「当然。
　呼，继续午饭……」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140210a01">
「能再来一碗吗？」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140220a07">
「啊，嗯。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よそりよそり


	OnSE("se日常_食器_お茶準備_L", 500);
	DeleteStL(300,true);

	Wait(500);

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	FadeStL(300,false);

	OnSE("se日常_物_茶碗を置く", 1000);


	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140230a07">
「请。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140240a01">
「谢谢。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140250a07">
「不对——————————!!
　为什么我得
给你盛饭啊啊啊啊啊啊啊啊啊啊!!」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140260a01">
「真烦啊。
　好吧好吧，不拜托你了。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140270a01">
「主君，还需要吗？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140280a00">
「嗯……好的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よそりよそり

	OnSE("se日常_食器_お茶準備_L", 500);
	DeleteStR(300,true);

	Wait(500);

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);

	OnSE("se日常_物_茶碗を置く", 1000);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140290a01">
「给。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140300a00">
「麻烦你了。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140310a01">
「呼呼……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140320a00">
「怎么了？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140330a01">
「没什么。
　我在想，这样也不错。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140340a00">
「是吗……」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140350a07">
「气死我了啊啊啊啊啊!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140360a01">
「你怎么了。
　拜托你要生气，不拜托你也生气。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140370a01">
「不觉得这样太任性了吗？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140380a07">
「不是！　我要生气是有道理的！
　喂，给我搞明白！　拜托你给我搞明白啊！」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140390a01">
「不明白。」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140400a07">
「呜呜。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140410a01">
「这孩子好像哪里不对了。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140420a07">
「不得不说，你这家伙真不愧是剑胄。
冷血得连我茶茶丸也招架不住了。
　话说回来……我这才发现之前都被你
这种超级自然的态度骗了……」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140430a01">
「什么？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140440a07">
「你是剑胄吧!!
　为什么吃饭啊!?」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140450a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……完全没发现。
　时已至今。我也。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140460a01">
「吃一下有什么不好嘛。
　难得肉体化了。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140470a07">
「我觉得那样很没意义。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140480a01">
「不是这样的哦？
　像这样摄取的营养，能转换为热量
储备一些到我的心铁上。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140490a00">
「是这样的啊？」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140500a01">
「当然，比不上真正肉体的变换效率。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140510a07">
「具体来说是怎样？」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140520a01">
「一袋米的分量，大概能得到普通人吃一小碟
所得到的热量。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140530a07">
「给我道歉！　给我向百姓们道歉！
　以后都不要再吃!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140540a01">
「什么啊。剩下的话也就只有浪费而已。
　不觉得可惜吗？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140550a07">
「扔到后院作西瓜虫的饵食都比这个好，
就像宇宙船地球号那般有意义!!」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140560a01">
「真讨厌啊。这么强词夺理，
毫无意义地伤害人。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140570a07">
「我没错———！
　绝对没错——————!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140580a07">
「话说回来，从刚才开始我都吼了多少次了，
可恶——————!!」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140590a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　内心也并非不赞同堀越公方。
　一旦出口似乎会有后患，还是沉默吧。

　而且作为实际问题，若能多积蓄点热量的话，
也能缩短和银星号之间的力量差距。
　即便仅为一张薄纸的分量，也不能怠于努力。

　特别是现在。
　我的努力，连一张薄纸分量的成果能否实现
都难说的状况下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140600a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　无我。
　
　无我的境界吗……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw村正_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140610a01">
「主君？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140620a00">
「……啊啊。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140630a07">
「为什么又停下来了。
　从之前开始，你究竟怎么了？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140640a00">
「在想点事。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140650a01">
「……那骗子和尚对你说的？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140660a00">
「事实上也有戏弄的成分……
　但我还是认为是忠告亦是指点。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140670a01">
「…………」

{	FadeStL(300,false);
	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140680a07">
「我被晾在一边了……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140690a01">
「抱歉。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140700a01">
「也是，主君这么想的话……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140710a07">
「怎么只有道歉啊！
　给我说明一下吧！」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0140720a01">
「那与你无关。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140730a07">
「我以家主的权利，命令你不准排斥同伴。
　这么欺负人，真逊啊。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0140740a07">
「于是，哥哥，你说到底怎么了？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0140750a00">
「……是。」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　虽说不明真意，但堀越公方是银星号的支援者。
　跟她讨论和银星号战斗的方法实在荒谬至极吧。

　可是，目前不管多低的可能性也不想放过，这样的心情。
　而且跟别人说明的话，或许能整理一下思路。

　……最终，还是向她说了上午发生的事。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(1500, 3000);

}

..//ジャンプ指定
//次ファイル　"md02_015.nss"