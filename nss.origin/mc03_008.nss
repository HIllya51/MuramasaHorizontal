//<continuation number="1100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_008.nss_MAIN
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
	#ev177_香奈枝の野点=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_009.nss";

}

scene mc03_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_007.nss"


//◆空
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 10000, "#000000");

	OnBG(100, "bg001_空b_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("絵色黒",1500,true);

	SoundPlay("@mbgm18", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　她说了，要杀掉大鸟狮子吼。
　是在把玩枇杷之花的时候说的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆庭園

	OnBG(101, "bg053_永倉家の庭_01.jpg");
	FadeBG(2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　野外茶会的坐席上。
　寒风被院墙挡在外面，太阳在头顶发散着温暖的光
线，永仓宅邸的庭院中，有着脱离了季节的风雅环境。


　我双手接过了质朴简单的备前烧茶碗。
　茶碗里面盛着滚烫的茶水，隔着茶器底部向我手心传
来了热量。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("野点", 3000, @0, @0, "cg/ev/ev177_香奈枝の野点.jpg");
	Fade("野点", 1000, 1000, null, true);

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080010a00">
「……这是……
　你特意为我准备的吗。」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080020a03">
「若是合你的喜好就太好了。」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080030a00">
「确实喜欢。
　这种触感完全符合我的嗜好。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　茶道的作法，我是在学生时代的茶道部中学习的。当
时使用最频繁的就是这种简雅的茶碗。


</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080040a03">
「太好了。
　不过，景明大人为什么会觉得，那个茶碗是
特意考虑了景明大人的兴趣呢？」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080050a00">
「如果是大尉阁下自己，我认为应该偏爱京烧
或是绘唐津。」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080060a03">
「很可惜。
　您猜错了。」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080070a00">
「……唔。
　那么是，志野？」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080080a03">
「虽然志野我也并不讨厌。」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080090a03">
「我的喜好，是乐烧。
　其中最喜欢黑乐。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080100a00">
「……那真是很<RUBY text="Ｓｔｏｉｃ">禁欲</RUBY>啊……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　虽然这是我的偏见，但我认为这不像是女性的兴趣。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_笑顔.png");

//嶋：修正（見えれ）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080110a03">
「是吗。
　……我倒是认为，
　这可以当作世俗性的极致。」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080120a00">
「那种漆黑吗。」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080130a03">
「嗯。
　就像是溶入了世间万物。」


</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　把黑色看做排他的结果，那就是禁欲。
　但如果看做包容的结果，那就是恶俗。
　
　……原来如此。是看问题的角度不同吗。

　我看着掌中的茶碗。
　黑褐色的陶器，里面盛着适度搅拌的抹茶。


　如果非要说的话，这种情景应该是肯定了香
奈枝的见解。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080140a00">
「……大尉阁下。
　有关银星号的消息确实可靠吗。」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080150a03">
「嗯。看来是没有错。
　银星号确实出现了。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080160a03">
「在炸弹落下的同时，
　银星号出现在了普陀乐城。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080170a00">
「……之后……」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080180a03">
「不知道炸弹为什么——也许新兵器就是这样
吧——没有破坏整个要塞，最后也只是破坏一
部分的程度。
　即使如此，爆炸中心似乎也<RUBY text="···">沙漠化</RUBY>了。」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080190a03">
「银星号，正好。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080200a00">
「在那个——爆炸中心？」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080210a03">
「……这一点无法断定。
　只是，虽然普陀乐城有相当多的幸存者，
　但其中没有一个人爆炸后再次目击到银星
　号的身影或痕迹。」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080220a00">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　那么。
　银星号……
　
　那家伙，

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080230a00">
「死了……是吗。」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080240a03">
「我不知道……」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080250a00">
「……」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080260a03">
「有一个奇妙的传言。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080270a00">
「是什么？」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080280a03">
「据说，有一群可疑的人，从爆炸中心挖出了
某个<RUBY text="····">闪光之物</RUBY>。他们带着那个东西加入了前往
会津的败退武士队伍。」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080290a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我饮着茶，茶水从喉咙落入胃中。
　腹部内侧变得很热。

　……苦涩。
　……甜美。

　我用指尖抚摸着杯沿。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080300a00">
「离开普陀乐城，进入会津的幕府军，有多大
的规模。」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080310a03">
「确切的数量很难说。
　但至少也要数以万计。」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080320a03">
「加上篠川军，达到的战力规模一定能让狮子
吼决心与进驻军一战。」



{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080330a00">
「……是说大鸟中将会<RUBY text="·">向</RUBY>进驻军进攻？
　虽然我能够理解ＧＨＱ他们想要侵略会津……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　因为，他们只要不完全打倒六波罗，就无法
名正言顺地称自己为『压制下的解放者』。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080340a00">
「从篠川公方来考虑，现在这种局面应该先用
尽所有手段来寻找和平的道路吧。
　即使最终无法避免决裂，但只要能够拖延一
定的时间，对他们来说也是有好处的。」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080350a00">
「他们应该会不惜代价，求得重编军队
所需的时间。」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080360a03">
「嗯，一般来说是这样。
　但是，<RUBY text="····">那个男人</RUBY>却不一样。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080370a03">
「今天早晨，邦氏殿下和大鸟家现当主——花
枝的订婚预定已经发布了。」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080380a00">
「……」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080390a03">
「当然，这是狮子吼为了掌握六波罗全权的一
个步骤。
　只要成为了皇戚，监管幕府也不再是难以置
信的事了。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080400a03">
「用如此性急的手段来稳固自己的权利基础，
所图谋的无非是能尽快地掌权发令……
　你不这样认为吗？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080410a00">
「就是说，除了和进驻军决战以外别无他意。
　……原来如此。」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080420a03">
「即使坚守会津也不会产生任何转机。
　现在应该乾坤一掷，一战决定命运。」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080430a03">
「大概就是这种情况吧。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080440a00">
「但如果是这样，该优先处理的问题应该还有
很多吧？
　首先考虑让自己成为大树将军的外戚，这让
我难以认同。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080450a00">
「这种事情说起来，也只是形式而已。
　对于麾下拥有篠川军团的大鸟狮子吼，应该
没有必要如此重视这种事。」


{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080460a03">
「拘泥于形式，才是狮子吼的作风。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080470a00">
「……」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080480a03">
「形式，步骤，道理。
　这就是那个男人的一切。」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080490a03">
「他从骨子里就是个形式主义者。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080500a00">
「……呃，但是大尉。
　那种男人……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　那种男人能在<RUBY text="··">那个</RUBY>六波罗中得到重用吗？
　既然是崇尚实力至上的组织，形式主义者应该很快就
会遭到排挤……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080510a03">
「他的非凡之处，就是拥有和外在形式相配的
内在实力。
　形式和实质之间不会产生差距。」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080520a03">
「离正式的订婚只剩下短短三天了。
　狮子吼并不是在婚后才去谋取权力，而是在
当时<RUBY text="··">就会</RUBY>掌握全部的权限。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080530a03">
「他统率了六波罗全军之后，会立刻开始行动
吧。
　……三天后。在订婚仪式结束的瞬间。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080540a00">
「……不会吧……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　这完全违背了军事常识，也完全违背了政治常识。
　要让面临前所未闻的事态而陷入濒临瓦解的混乱状态的
幕府组织，在这三天之内从体制上复原——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080550a03">
「这就是狮子吼。」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080560a00">
「…………」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080570a03">
「所以。
　——要抢在他之前。」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080580a03">
「不能让狮子吼个人的战争决定大和的命运。
　我去暗杀那个男人。」


</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　这句话在我耳边产生了奇妙的回响。
　首先是对于大和国民的责任感。然后是对于杀害了父亲
的男人的那种复仇心。这些我都能够明白。

　但是，除此<RUBY text="··">以外</RUBY>还有<RUBY text="Ｎｏｉｓｅ">杂音</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080590a03">
「足利护氏已经亡故，古河、小弓、堀越几位
公方现在恐怕也和普陀乐一起化作了尘土。
　如果再失去狮子吼，六波罗就无法避免崩溃
了。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080600a00">
「已经再没有别人能够胜任领袖了。」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080610a03">
「嗯。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080620a00">
「但是大尉，最后得利的只是ＧＨＱ吧？」



{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080630a03">
「失去了统率的会津，进驻军还会来进攻吗？」



{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080640a00">
「是。
　————不。是这样啊。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080650a00">
「没有进攻的意义……」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080660a03">
「是会这样的吧？
　六波罗失去狮子吼之后，会自己灭亡。
　进驻军没必要插手。」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080670a03">
「即使进行了无意义的战争，也无法得到大和
国民的信赖。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080680a00">
「ＧＨＱ必须要重新考虑支配大和的战略了。
　……不过，如果是在大和失去了固有军事力
的状态下，那应该并不困难。」



{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080690a03">
「是吧。
　不过，这时期待一下<RUBY text="····">有幸未死</RUBY>的某个人
会有什么动作，
　应该也不错吧？」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080700a03">
「至少应该能把群龙无首的六波罗军重新收归
麾下。如果连这种事都做不到，一味闭门不出，
那未免太令人失望了。
　对吧？」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080710a00">
「……当事人或许也有自己的理由。」



{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080720a03">
「那去问一下吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　听她的口气，像是知道那个人现在身处何地，在做什
么。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080730a03">
「景明大人，如何呢？」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080740a00">
「……是。」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080750a03">
「你认为如何？」


</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　是问我这个计划如何吧。当然了。
　
　——杀害篠川公方大鸟狮子吼，将六波罗引
向自我毁灭，挫败ＧＨＱ的企图。

　我承认这个计划的确不错。
　只要暗杀成功，六波罗和进驻军的决战很可能终结于
未然。

　无论是幕府的复兴，或是被ＣＨＱ所支配，对于大多数
大和国民来说这两种结局都是他们所不希望看到的。如果
计划成功，这两者皆可避免。
　之后的事情先不管，至少眼前是如此。

　这计划是有效的。我不得不承认。<k>
　
　
　但是，这是<RUBY text="Ｔｅｒｒｏｒｉｓｍ">暴力主义</RUBY>。

　是对言论力量的挑战。

　这和我们之前袭击飞行艇可以说性质相同。
　但是，那毕竟是以炸弹这种无机物作为目标的行动。


　这次的目标是人。
　为了政治目的，夺去一个人的生命。

　就算行动的目的是正义的，也无法为行动自身脱罪。
　因为对于大鸟狮子吼来说，他相信这样做是正确的，
这一点是不变的。


　基于暴力的政治主张，是否该赞同呢。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080760a00">
（……如果赞同的话）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　对于暗杀足利护氏的委托，大概也不该拒绝吧。


</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080770a03">
「不用介意，可以实话实说哦？」



{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080780a00">
「不，我并不是在措辞。
　……只是，我觉得本质并无不同。」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080790a03">
「并无不同？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080800a00">
「声称为了守护多数的人，而强迫某一个人死
去。
　独自判断做出的人命<RUBY text="··">计量</RUBY>。」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080810a00">
「这是我特别熟悉的行为。
　同样的事，我已经重复过无数次了。」



{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080820a03">
「……村正的咒戒。」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080830a00">
「是。
　没有任何差异。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080840a00">
「都是相等的<RUBY text="Ｔｅｒｒｏｒｉｓｍ">暴力主义</RUBY>。」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080850a03">
「是呀。
　确实完全没有不同……」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080860a03">
「那么，景明大人决定如何呢？
　你会来协助我吗？」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080870a00">
「……嗯。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("空", 3100, @0, @0, "cg/bg/bg001_空b_01.jpg");
	Fade("空", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　我把一直抱在手中的备前烧，放到了腿前。
　有些粗糙的外壁带来了舒适的手感，这让我感到有些
不舍。

　太阳眼看要从正中位置渐渐下沉。
　冬天的野外茶会，到这里也该结束了。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("空",1000,true);

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080880a00">
「我不会制止大尉阁下。
　但是，我也无法提供协助。」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080890a03">
「我懂了。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　香奈枝小姐点了点头，没有一点惊讶的样子。
　她看起来反而像是放了心。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080900a03">
「太好了。
　如果你说要协助我，我反倒会不知该
如何婉拒呢。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080910a00">
「你果然把这件事当成了和大鸟狮子吼个人之
间的战争了吗。」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080920a03">
「嗯。
　对，这只是我和那个男人之间的<RUBY text="··">争执</RUBY>而已。
即使用为国为民这样冠冕堂皇的言辞来掩饰，
……但说到底不过如此而已。」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080930a03">
「景明大人请留在这边吧。
　我会对永仓爷爷交代一声的。」



{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080940a00">
「不。」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080950a03">
「？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080960a00">
「如果你允许，我也希望能够同行。」



{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080970a03">
「……和我一起？
　可是……」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080980a00">
「是。我不会协助你，也不会妨碍你。
　我只是为了自己的目的前往篠川公方府。」



{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080990a03">
「目的是……」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081000a00">
「银星号还下落不明。」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0081010a03">
「……」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081020a00">
「根据刚才说过的，应该有某样东西从普陀乐
的爆炸中心运送出来了。
　根据现状，无法断定那个某样东西不是银星
号，或者和银星号有关的东西。」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0081030a03">
「那么，是为了去确认一下？」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081040a00">
「是。
　我要亲眼去判断，如果是毫不相关的东西，
那最好。」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081050a00">
「或者——如果那是银星号的遗体。
　我，」


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	OnSE("se擬音_フラッシュバック01",1000);
	Fade("フラッシュ白",0,1000,null,true);

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵回想200", 5100, Center, InBottom, "cg/st/3d銀星号_立ち_通常.png");

	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/3d銀星号_立ち_通常.png",false);
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　遗体。死骸。
　银星号的遗骸。

　光的，
　
　……………………

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――
	
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵演立絵*");
	Delete("絵色黒");
	Delete("絵回想*");
	Delete("Memory_cover");
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白",2000,true);

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081060a00">
「我有进行确认的义务。」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0081070a03">
「……我明白了。
　那么就一起去吧。」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081080a00">
「麻烦你了。」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0081090a03">
「出门靠伙伴。重在互相关照。
　会津进入腊月之后，路上带着同伴也能缓解
外面的寒冷。」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0081100a03">
「一定是呢。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ひゅー。
	CreateSE("SE01","se自然_風_野原02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01")/2;
	FadeDelete("野点", $残時間, true);

	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　一阵风越过了外壁。
　庭院中的温暖空气被挤走，冷气迅速渗入了身体。

　大概不久就会开始下雪了吧。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_009.nss"