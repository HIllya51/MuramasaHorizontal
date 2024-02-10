//<continuation number="1330">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_021.nss_MAIN
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
	#bg072_火災で倒壊した和風建築_02=true;
	#ev152_見下ろす銀星号_a=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_022.nss";

}

scene mb03_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_020.nss"
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg072_火災で倒壊した和風建築_02.jpg");
	FadeBG(0,true);
	Delete("上背景");

	StL(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStL(0,true);

	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm01",0,1000,true);

	Wait(200);


	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210010a02">
「…………！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一条在我身边，呆然伫立。
　
　这也难怪。

　虽说在江之岛曾遭遇过，但如此近距离的面对面，还
是第一次。
　如此一来，这一目了然且无法掩盖的异常感定会让人
窒息。

　如果说哪里不对劲，只怕是所处<RUBY text="··">世界</RUBY>不同。
　就是如此的异质。就是如此的无法理解。

　就是如此的异次元般的存在。
　既是武者，又不得不说其超越了武者。

　我再度无言以对。

　原本心想拜访小弓之时，能寻到关于银星号所在的线
索。
　但突然正面撞上，而且还是以这样的形式……真是出
乎意料。

　面对双双僵硬如雕塑的我们，白银色的武者却悠然自
得。
　忽然扫了一眼一条——正宗，她微微歪了歪脑袋，又
再度将视线移向我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演板", 5000, Center, Middle, "cg/bg/bg072_火災で倒壊した和風建築_02.jpg");

	CreateMovie("煙動画", 4999, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 4000, null, true);
	Request("煙動画", AddRender);
	Move("煙動画", 0, @0, @-100, null, true);
	Rotate("煙動画", 0, @0, @180, @0, null,true);

	CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/ev152_見下ろす銀星号_a.jpg");

	FadeDelete("絵演板", 1000, true);

	Wait(300);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/mb03/0210020a14">
「有人告诉我，说是……小弓这里军队聚集，
士气满满。
　所以有点兴趣，就来玩一玩。」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210030a14">
「真是优秀的武士们。
　勇猛，而不知退怯，不管被打退多少次，依
旧跨过同胞的尸体冲上前来。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210040a14">
「一直战斗到打败最后一骑。
　真是一段充实的时光。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……仔细一看，周围除了今川雷蝶，还有数十——
不，更多的的尸骸。武者、龙骑兵的装甲残骸散落一地。
　他们都是被娴熟的招数断了命脉。与来到此处之前所
看到的兵士们狂乱的死亡状态不同。

　即，普通兵士是因为精神污染而自残性命。抵挡住污
染波的武者一众，勇敢地向银星号发起了挑战吧。
　然后全灭……化成百余铁块、肉块。

　损耗比、一〇〇比<RUBY text="·">〇</RUBY>。
　血腥漫天的战场上，独自君临的白银霸者，没有流下
一滴鲜血，只是心情舒畅地叹了口气。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/mb03/0210050a14">
「而且，没想到景明你也会来啊。
　今天的光真是彻底被无聊给遗忘了呢！
如果一直这样该多好。」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210060a00">
「……光……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　是魔物。
　是邪怪。是异化。是鬼妖。

　绝非人。
　凑斗景明之妹、湊斗光早已不是人的存在。

　与其相遇，唯有
　
　——毙其命。

　只有这条路。
　如果想身为人、救人命，那只有斩杀这非人的妹妹。

　……早已明白的道理。
　至少，在江之岛邂逅之时。

　是的。
　一度决意取她性命。

　但是。
　即便如此……
　
　此刻的我，却将不舍溢满唇间。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210070a00">
「你……
　已经、回不去了吗？」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210080a14">
「……嗯？」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210090a00">
「回到从前那样……
　生活在那个小镇上时一样。」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210100a14">
「…………」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210110a00">
「你已经疯狂了。自从两年前，我没能阻止
你开始。你以山贼为敌将他们杀害，被
村正的诅咒束缚，杀害镇上的居民后，
你疯了——」


{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210120a00">
「是这样吧？
　但你的疯狂……至少最初，绝不是你的罪过。
但还是回不去吗？」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210130a00">
「侵占你的那股疯狂……
　不管如何努力，也无法治愈了吗!?」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210140a14">
「……」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210150a14">
「嗯。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我的话语不知不觉中化为了吼叫。
　光握拳抵住了额头，露出困惑的模样。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/mb03/0210160a14">
「看来，在认识上有些<RUBY text="··">偏差</RUBY>啊。
　……刚刚说到江之岛了吧？　景明。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210170a14">
「我根本没有疯。
　也没有改变过。过去是，现在也是，
<RUBY text="····">我就是我</RUBY>，凑斗光。」


{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210180a00">
「这怎么可能……！
　你所做的事，怎么可能是正常人能做到的！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　奋力吐出这句责难之后，
　我凭着最后一缕希望，继续说道。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210190a00">
「……但是……我不觉得你彻底疯了。
　你身上，还是……残留着一点人性……！」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210200a14">
「……」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210210a00">
「这两年间，你毁灭了多少小镇村庄。
　但……如果你是真的疯了，彻底失控，就不
会只是这个程度。」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210220a00">
「……应该是这样。
　此刻，至少大和全境
都遭毁灭才符合道理……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　是的。
　如果银星号是个彻底的狂人，整天耽溺于破坏以及杀
戮之梦——不那样才叫人费解。

　银星号只要在大和上空盘旋就足够了。
　仅这样就可以污染人心，整片国土将变成阿鼻地狱。

　而这一切并没有变成现实，难道不足以说明银星号的
失控得到了抑制吗。
　尚且……还像人一样内心留有不舍，难道不是吗。

　不是这样吗？
　我希望是这样。即便这一切，时至今日毫无意义——
因为光的所作所为并不会因此而一笔勾销。

　然而，只要光心中还残存着些许对罪过的忏悔，只要
她还想补偿这一切的话——
　我…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210230a00">
「到底如何!?
　光!!」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210240a14">
「…………
　你可是麻烦的家伙啊，景明。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　光的回答是声叹息。

　有些温柔——
　带有包容的眼神与声音，注入我的身体。
　
　不知为何，背脊<RUBY text="····">微微一颤</RUBY>，僵直了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/mb03/0210250a14">
「俗话说，为人子不知父母忧……
　真是无法沟通啊。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210260a00">
「…………」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210270a14">
「我之所以没有在瞬息之间<RUBY text="··">毁了</RUBY>关东。
……景明。是为了你。」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210280a00">
「什……
　…………么？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　为了——我？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【光】
<voice name="光" class="光" src="voice/mb03/0210290a14">
「景明。你听好了。
　光没有疯。……怎么可能疯。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210300a14">
「杀了那帮山贼，因此束缚于村正的诅咒，结
果杀害了镇上居民，而后疯了……你是这么说
的吧。
　根本就是误解。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210310a14">
「光一次都没有，<RUBY text="·········">从来都没有杀过敌人</RUBY>。」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210320a00">
「——什么……!?」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210330a14">
「光至今和许多人战斗，胜利并杀了他们。
　但是从来都没有怀过敌意。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210340a14">
「这是因为，我只是作为一介武人遵从了武法
而已。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210350a00">
「武法？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　那是——养母的教诲——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/mb03/0210360a14">
「战斗，杀戮。
　武法如此单纯。」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210370a00">
「……!?」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210380a14">
「何需敌意。何需憎恶。
　只是遵从武命，斩尽杀绝。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210390a14">
「村正的诅咒，对光而言毫无意义。因此，也
从未被它束缚。
　明白了吗？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　也就是说，概括而言，<k>
　……根本不等被诅咒束缚，从一开始就不分敌我斩尽
杀绝吗!?

　从两年前的第一次开始——
　不论山贼还是小镇居民，毫无区别地把一切……!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/mb03/0210400a14">
「光之道非在癫狂。
　而是天下布武之大道。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210410a14">
「万民顺从武法，
　较量各自的武，
　在磨练相克中，惟愿踏上至尊的宝座。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　…………那么——难道说。
　其愿望的显现，竟是那
——遭受污染的众生狂乱吗……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210420a00">
「……为什么。
　为什么会有……这样的，愿望。」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210430a14">
「因为那就是<RUBY text="····">光的意义</RUBY>。
　贯彻武道，<RUBY text="·····">与世界战斗</RUBY>，令它屈服
就是光存在的意义。」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210440a00">
「——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　你。
　你，

　真的，如此——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/mb03/0210450a14">
「为了实现愿望，就要用光的意志涂染整个世
界……我就是这样想的，也早晚会这样做的。
　如果不循序渐进的话，困扰的<RUBY text="··">是你</RUBY>吧？」


//【光】
<voice name="光" class="光" src="voice/mb03/0210460a14">
「因为母亲大人教给你的武是错误的。你不可能
立刻接受我所诠释的武。如果强行塞进你的大
脑，你才真的会发疯呢。」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210470a00">
「……所以……
　才会<RUBY text="···">慢慢来</RUBY>吗……？」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210480a14">
「嗯。
　只要我不着急逼迫你，你就会自行领悟武的
真谛。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210490a14">
「村正，就是为实现这个目标。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0210500a01">
《…………》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210510a00">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　这是，什么意思……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/mb03/0210520a14">
「不过，我觉得差不多是时候了。
　如何？　景明……」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210530a14">
「是否做好准备战斗、生存于武的天下呢？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　包含期待的声音，银星号——曾是凑斗景明之妹——
向我投来这样的疑问。

　……<RUBY text="·····">这样的疑问</RUBY>。

　不是插科打诨。
　自然也不是无聊说笑。
　甚至不是简单的嘲弄。
　纯粹地，由心而发。

　
　我知道，她对于<RUBY text="··">那个</RUBY>已不再迷茫。

　上演了多场杀戮的闹剧，
　此刻也端坐于其中一个舞台上，
　而且，这一切不是敌对的战斗所造成的，只是为杀戮
而杀戮，她是这样诉说的。

　连一丝犹豫都没有！

　至少我想相信这是源于疯狂。
　是可怕的诅咒令我的妹妹癫狂至此。

　但是，都被否定了。
　对于那如果是疯狂的源头则绝对无法正视的事情，光
用完美的理论进行了漂亮的解说。

　可以认定，连这也是因为疯狂。
　但是，我已经察觉了——那样做不过是，我的逃避心
理而已。

　是毫无意义的逃避。
　因为那只会令刀刃钝化。

　斩杀妹妹的刀刃。

　而所需要的，正相反——
　直面事实。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210540a00">
「光。
　你没有疯。」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210550a14">
「嗯。
　你终于懂了。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　光一副满足的样子，眉眼柔和。

　……想起了多余的往事。
　曾经那安宁的岁月——<k>不。回忆无益。
这种往事，早已……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210560a00">
「光。
　……银星号。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　不知为何，想要吼叫。
　那声音堵在喉咙口。

　用尽浑身的力气，将其吞入腹中。
　不行。那种犹豫只是枉然。因为事到如今，早已没有
任何意义了。

　——为了磨砺刀刃。
　我做出了一个决定。

　那是承认。
　
　
　那是断绝。

　那是，诀别。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210570a00">
「你是邪恶。
　是我的敌人。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ＢＧＭ落とし
//◆フェードアウト
	SetVolume("@mbgm*", 100, 0, null);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 600, 1000, null, true);
	Delete("絵演*");
	Delete("煙動画");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　我抛弃了自己的妹妹。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
//◆ＢＧＭ切り替え
	Fade("絵色黒", 1500, 0, null, true);
	SoundPlay("@mbgm04",3000,1000,true);

	Wait(300);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
<voice name="光" class="光" src="voice/mb03/0210580a14">
「……看来还<RUBY text="···">差得远</RUBY>呐。
　如果你还在说着这种话的话。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　对于我抛弃一半灵魂后说出的话语，银色的恶魔报以
苦笑。
　很无奈地十指交叉——然而同时又露出喜形于色的神
情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/mb03/0210590a14">
「不过，这样也未尝不可。
　可以算是向这边迈近了一步。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210600a00">
「……这边？」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210610a14">
「自然是，我的武道了。
　景明。如果你把我作为敌人挑起战斗的话，你
当然已经下定决心了吧。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210620a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……决心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【光】
<voice name="光" class="光" src="voice/mb03/0210630a14">
「善恶相抵。是我们村正的绝对戒律。
　斩敌即斩友，仇杀亦情杀。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210640a14">
「你是否有信赖的友伴，
情谊比以光为敌的恨更深？
　或者……母亲大人那样的人……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210650a00">
「……这……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210660a14">
「光的命与某个人的命。
　对你来说是完全等价的。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210670a14">
「将这两者共同抛却的决心，
　——你有吧？　景明。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210680a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　那是。
　那是。
　
　那是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210690a02">
「根本不需要这种决心。
　因为凑斗先生，有我。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆正宗
	StL(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210700a00">
「一条……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210710a14">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　一直沉默着的少女，像是为了保护我一般站到中间。
　光眉梢紧蹙。好像谈话遭到打断让她很不满意。

　但是，不冷落他人的话语是光与生俱来的天性。
　暂且先把兴趣的矛头转向那边。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 4000, 522, Middle, "cg/ev/ev152_見下ろす銀星号_a.jpg");

	Move("絵演", 500, @-10, @0, Dxl2, false);
	Fade("絵演", 500, 1000, null, true);


	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【光】
<voice name="光" class="光" src="voice/mb03/0210720a14">
「你是何人。
　我很抱歉对你不闻不问，只顾和景明说话，
不过初次见面还未打招呼就打断他人交谈也很
失礼吧。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210730a02">
「……想让我自我介绍吗。
　根本不需要。多余。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210740a14">
「为何？
　这种礼节，是非常重要的，可以令人互生敬
意，建立圆滑的人际关系。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210750a14">
「不管感情亲疏都应该注意礼节。
　所以，我今天也是先从时令问候开始的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　…………那个鬼灯云云是时令问候吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210760a02">
「管你说什么，没什么名字可以报给你听的。
　这点理由总明白的吧。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210770a14">
「哼哼。
　真是不好伺候的年纪。」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210780a02">
「乱讲！
　说我是逆反期吗！　你又不是我妈!?」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ボイスは全部読む。
//◆じゅげむじゅげむごこうのすりきれかいざりすいぎょ
//◆のすいぎょうまつうんらいまつふうらいまつくうねる
//◆ところにすむところやぶらこうじのぶらこうじぱいぽ
//◆ぱいぽぱいぽのしゅーりんがんしゅーりんがんのぐー
//◆りんだいぐーりんだいのぽんぽこぴーのぽんぽこなー
//◆のちょうきゅうめいのちょうすけ

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【光】
<voice name="光" class="光" src="voice/mb03/0210790a14">
「难道你和寿限无（略）一样名字超长……」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210800a02">
「玩什么单口相声啊！」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210810a14">
「……给个提示。」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210820a02">
「谁跟你玩猜谜啊!?
　我的意思是，我根本没把你这样的家伙当成
人！」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210830a14">
「嗯？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210840a02">
「你不过就是邪恶吧。鬼而已吧。
　根本不认为你是凑斗先生的妹妹……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210850a02">
「我要杀了你，<RUBY text="···">消灭你</RUBY>。
　对你来说，这样足够了。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0210860b40">
《正是！》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210870a14">
「…………
　原来如此……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　深蓝的龙骑，每一秒都在增加杀意的浓度。
　宛如无色的暴雪。银星号沐浴其中却像是明了一般轻
轻一笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【光】
<voice name="光" class="光" src="voice/mb03/0210880a14">
「也就是说，疯狗吗？」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210890a02">
「什么!?」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210900a14">
「不，我不是在嘲笑你。
　那盲目的斗志，光是不会回避的。」


//【光】
<voice name="光" class="光" src="voice/mb03/0210910a14">
「剑胄也很精良。
　村正，看看是何人。虽然问一问便可知，但看她
那样子，是不会告诉我的。」


{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mb03/0210920a15">
《嗯。
　……相州物的古刀……加上如此程度的装甲。》


//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mb03/0210930a15">
《大概是，——五郎入道正宗。》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210940a14">
「如何？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0210950b40">
《……哼。》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210960a14">
「猜中了吗。
　真不错……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210970a14">
「天下第一名物正宗！
　如此非比寻常之物，竟然会和景明同时出现
在我面前——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　至此，对方心情甚是愉悦。
　不过倏然间，银星号露出沉思之态。

　宛如导出了不合定理的答案，重新审视运算公式的学
生一般。

　过了一会儿，那双眼睛转向这边——看着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【光】
<voice name="光" class="光" src="voice/mb03/0210980a14">
「……景明。
　那里的疯狗看来是要向我挑战。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210990a14">
「你是怎么打算的呢？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211000a00">
「…………」


{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211010a02">
「怎么了？
　不愿意二对一，所以想让我们一个一个来吗。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211020a14">
「虽然光偏好一对一，但也不强求。这无所谓。
　不过……我想不会是……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211030a02">
「……？
　虽然不知道你在想什么。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211040a02">
「我们就由着自己<RUBY text="··">动手</RUBY>哦。
　……凑斗先生。可以吗？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211050a00">
「……{WaitKey(1100);}可以。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211060a02">
「没问题。
　因为杀那家伙的人，是我。」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211070a14">
「…………」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211080a02">
「诅咒之类无关紧要。
　丧命的只会是那个恶魔。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211090a00">
「…………」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211100a14">
「——————————————」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211110a14">
「等等。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/st/3d銀星号_立ち_通常.png");
	Move("絵背景200", 0, @0, @100, null, true);

	Fade("絵背景100", 500, 1000, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);

	Fade("絵背景200", 500, 1000, null, false);
	Move("絵背景200", 1500, @0, @-100, Dxl2, true);

	DeleteStA(0,true);

//◆銀星号、立つ

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【光】
<voice name="光" class="光" src="voice/mb03/0211120a14">
「刚才……
　你说什么。」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211130a00">
「……」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211140a14">
「疯狗，回答我。」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211150a02">
「值得你反复问吗。
　这种理所当然的事情。」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211160a14">
「……」


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211170a02">
「如果凑斗先生杀你的话，因为诅咒的缘故必
须再杀一个人。
　但是我的正宗可没有这种麻烦的规定。」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211180a02">
「所以参与战斗的只有两人。杀手是我一人。
　那么，死的就是你们邪恶一方了。」


{	FwR("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211190a02">
「我和凑斗先生，是二人合一的正义之剑……！」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211200a14">
「…………
　景明。」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211210a14">
「你也是这么打算的吗？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　用着不相称的淡然音色，银色铁面询问道。
　咽喉哽塞，无法回答。

　当然……我是赞成的。
　一条说出口的简直是当然之理。

　如果村正杀敌就必须还得杀了同伴。
　但如果是正宗的话，死的就只是敌方一人。

　那为何，还要选择前者呢？
　这是无需烦恼的选择。
　
　然而我会言语枯竭，话不成声。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【光】
<voice name="光" class="光" src="voice/mb03/0211220a14">
「……怎么样？
　你也是这样期待的，所以带着那条疯狗——
正宗吗？」


{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mb03/0211230a15">
《……》


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211240a00">
「……」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0211250a01">
《……》


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211260a02">
「……凑斗先生？」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211270a00">
「是……
　是啊。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211280a00">
「是这样……」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211290a14">
「……………………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ウェイト
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　……无声地，吹起温暖的风。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211300a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　胸口涌动。

　若要形容的话，就像身处宁静的航海中。
　一帆风顺，波平浪静，万里晴空。没有烦恼，有的只
是此刻的安详，而且注定这份安详会是天涯海角，亘古
不变——

　然而心脏却似急槌打鼓，
　
　竭力警告着鲸鲨将从海底跃出袭击。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	StL(1000, @0,@0,"cg/st/3d正宗_立ち_通常.png");
	FadeStL(0,true);

	FadeDelete("絵背景*", 500, true);

	SetFwR("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211310a02">
「我已经说了。
　由着我们的性子动手了。」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211320a02">
「正宗。」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0211330b40">
《诺！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆舞い上がって
//◆突進
	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");

	Move("@StC*", 200, @0, @-200, Axl3, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	DrawTransition("絵色白", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	WaitPlay("SE01", null);

}

..//ジャンプ指定
//次ファイル　"mb03_022.nss"