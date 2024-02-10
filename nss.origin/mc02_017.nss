//<continuation number="1430">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_017.nss_MAIN
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

	$GameName = "mc02_018.nss";

}

scene mc02_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_016.nss"

//◆基地
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_01.jpg");
	FadeDelete("上背景", 0, true);
	Fade("黒幕１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我已知道总有一天事件会发生，
但却来得有些唐突。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明の部屋
//◆キャノン＋兵士

	Fade("黒幕１", 1000, 1000, null, true);
	CreateSE("SEのっく", "se人体_動作_ドアノック01");
	CreateSE("SEあける", "se日常_建物_牢獄扉開く02");
	CreateSE("SEあるく", "se人体_足音_歩く_地下_L");
	MusicStart("SEのっく",0,1000,0,1500,null,false);
	WaitKey(1000);

	OnBG(100,"bg028_横浜ＧＨＱ基地_01.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");

	MusicStart("SEあける",0,1000,0,1500,null,false);
	WaitKey(500);

	MusicStart("SEあるく",0,1000,0,1500,null,false);

	FadeDelete("黒幕１", 1000, true);

	WaitKey(500);
	SetVolume("SE*", 1000, 0, null);

	StL(1000, @60, @0,"cg/st/stＧＨＱ兵士_通常_制服.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);

	StCL(1100, @-90, @0,"cg/st/stキャノン_通常_制服.png");

	Move("@StL*", 300, @20, @0, DxlAuto, false);
	FadeStL(300,false);

	Wait(100);

	Move("@StCL*", 300, @20, @0, DxlAuto, false);
	FadeStCL(300,true);
	Wait(300);


	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170010b03">
「我是克莱布·卡农中佐。
　直属于进驻军总司令部参谋第二部。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170020a00">
「我是凑斗景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　这男人毫无预警地出现，却在礼貌地敲了我的房门
之后才现身。
　年纪比我大十岁，或许更年长吧。

　他拥有盎格鲁撒克逊人典型的容貌。
　但，与江之岛相反类型的卡杰特少佐对比的话，
他的长相更为平庸，不会给人留下任何印象。

　内心的敏锐也看不出来。
　
　他是那种不论身处何方都能融入群众的男人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se日常_物_椅子鳴る01",1000);
	DeleteStA(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　礼貌地握手之后，那位中佐自然且毫不顾忌地
在椅子上坐下。
　我也仿效他，坐在床上。

　同行的士兵将枪口对准天花板，伫立在男人背后。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);
	SetFwC("cg/fw/fwキャノン_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170030b03">
「你有没有什么觉得不自由的地方？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170040a00">
「……不自由？」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170050b03">
「是啊。应该说是要求比较正确。
　有吧？　比如说伙食方面，比起面包，更想吃
米饭。还有想要大和式绒毯榻榻米。还有想看
富士山。或是帮你叫“<RUBY text="Ｔｈｅ　Ｇｅｉｓｈａ">艺伎</RUBY>”。诸如此类——」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170060a00">
「……这个嘛。
　我的确面临一个迫切的不自由状态。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170070b03">
「别客气，尽管说。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170080a00">
「祖国被他国的军队进驻，而且
我还被敌军俘虏。
　虽然在伙食和娱乐方面没有什么不满，
但我希望能从这种不自由的现状中解脱。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170090b03">
「——」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170100b03">
「真令我吃惊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　克莱布·卡农中佐有些吃惊地微张着嘴，
随即扬起嘴角笑了笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170110b03">
「你喜欢如此直言不讳的说话方式吗？
　你给我的印象跟我看到的报告有些许出入呢。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170120a00">
「我会依情况而定。
　被俘可不是能培养委婉说出心中想法的
恰当环境呢，中佐阁下。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170130b03">
「哦……？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170140a00">
「也不能培养自制心。
　现在对我来说，能对他人开玩笑的机会
相当可贵，所以无法好好克制自己。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170150b03">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　中佐这次完全哑口无言。

　接着他勉强想挤出微笑，但最终失败，
脸部表情滑稽地扭曲变形，他自己似乎也察觉到了，
便用单手将脸遮住。
　……过了一会儿，他从指缝间露出笑意。

　发自内心地笑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170160b03">
「……对了。那个<RUBY text="玛塔·哈莉">娼妇</RUBY>说过。
　只要付出相当的努力仔细去观察，
他也是个令人愉快的男人呢……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170170a00">
「……？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170180b03">
「够了。
　不，非常足够了。就让我在力所能及的范围
内处理吧。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170190b03">
「自由吗……我就给你吧。
　目前先给你一人份的自由。但将来我会给予你
全祖国份的自由。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170200b03">
「凑斗先生？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170210a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　看来，谈话进入正题了。
　我略微挺直背。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170220b03">
「我所收到的报告称，
你跟随八幡宫亲王……？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170230a00">
「有。
　以个人名义雇用我，要我以代理者般的身份
跟随。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　这名中佐从大鸟大尉、亦或是从其他渠道
得知了多少情报。我无从得知。
　我不能对他说出真相，也不能对他撒谎，
必须做出恰当的回答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170240b03">
「看来你还挺活跃的嘛。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170250a00">
「不敢当。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　<RUBY text="··">活跃</RUBY>是指什么——ＧＨＱ知晓我如此活跃，
而对我采取了什么应对行动，这些我早已清楚，
却假装不知情。
　卡农中佐不管不顾地继续说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170260b03">
「今后你想不想活用你的能力，
为我们效命呢？
　我相信，你最具建设性的可能
会通过此举开始……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170270a00">
「……建设性。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170280b03">
「舞殿宫已不在。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170290a00">
「……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170300b03">
「我可没打算用空头支票和你交易。是
你的努力……或是因为别的原因，
让舞殿宫免于一死。
　我就认同这一点吧。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170310b03">
「但当下应该没有余力去享受策略游戏，
肯定也无法有效地活用你。
　当殿下取回政治上的行动力……
很不巧，已经没有他介入的余地了。」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170320b03">
「现在，情势正处于动荡的漩涡中。
　后世的人一定能看清吧。
身为当局者的我们，活在今世的人们都
难以捉摸真相……」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170330b03">
「你是怎么想的呢。明天是今天的复制版吗？
还是每天都过着安稳的生活？今天的
京滨日报其中一个版面刊登了河马从动物园里
逃走了。明天就会报道熊猫的诞生吗？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170340b03">
「你这一年半载要不要试着过雌伏生活，
相信舞殿宫大人会复出政坛且逐渐活跃？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170350a00">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170360a00">
「这种程度的乐观……
　很遗憾，对我来说似乎是不可能的。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170370b03">
「说的也是。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170380b03">
「那我们的话题也容易有所进展。
　如果你担心祖国的命运，凑斗君，
你就该协助ＧＨＱ。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170390b03">
「我们能向你保证让大和从六波罗的暴政中
解脱……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170400a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我犹豫了一会便做出决定。

　其中一张隐藏的王牌就由我亲手摊出。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170410a00">
「曾经企图抹杀的人，现在却想拉来
入伙？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170420b03">
「因为情况有了改变。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　这名进驻军中佐，满不在乎地说出这番话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170430b03">
「江之岛的事件吗……
　最后好像因为银星号的出现，
让事情以混乱的结果告终。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170440b03">
「我的确有派兵前往江之岛。
　我接受了部下所提出的将六波罗兵器开发和你，
一同处分的意见。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170450a00">
「……是乔治·卡杰特少佐吗？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170460b03">
「是啊。
　以当时的情况，他的意见相当妥当。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170470b03">
「因为对我来说，
你只是个来路不明的敌人而已。
　我当时认为应该立刻杀掉你，
现在我也认为这个想法没有错。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170480a00">
「……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170490b03">
「不过……你现在身处我们基地的内部。
已经不是尚未确认的敌人了。
　而且，你的态度也显示出你对我们并没有
病态般的敌意。」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170500b03">
「实际上，你能和我们进行这种
理性的对话……
　理解了这一点，我们就产生了
其他的想法。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170510b03">
「就是这么回事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　听了他语调轻松的一席话，我沉默了片刻。
　……我似乎不得不接受。

　我原本就没抱有想要推翻他意见的深沉憎恶感。
只是想看看他的反应罢了。
　只不过是明白了一个事实，他是个
<RUBY text="····">狡诈奸猾</RUBY>的男人而已。

　我转换心情，改变了进攻方式。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170520a00">
「原来如此。中佐阁下，从你的立场来说，
一切都很中肯。
　我能接受……你们对我的处置。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170530b03">
「……这么说的话。
　你有其他不能接受的地方吗？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170540a00">
「是有一些。
　那些本来就是导致你们敌视我的
原因。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170550b03">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170560a00">
「你们蓄意制造出“邪恶的大和武士”……
似乎是企图让民望集中在你们进驻军身上。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170570b03">
「……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170580a00">
「这种让我不得不说是残暴的措施，
中佐阁下有什么看法。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　他这次——
　
　一概不给予我回答。

　虽然不否认，但也没有肯定。
　空气中飘荡着模棱两可的沉默。

　……但我察觉到中佐并不是在生气，
也不是哑口无言。
　他只是在计算对话的<RUBY text="··">呼吸</RUBY>而保持沉默而已。

　而他的答案也早已确定……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170590a00">
「中佐阁下。」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170600b03">
「……既然你是这么想的。
　那你果然还是该协助我们？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170610b03">
「我正在思考比你的方法更
稳妥的手段。
　这需要你倾囊相助。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170620a00">
「…………
　我明白了。我问您。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170630a00">
「克莱布·卡农中佐。
　您对我有什么要求？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170640b03">
「我希望你和六波罗交战，
　用那赤红的剑胄——」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170650b03">
「<RUBY text="·······">和我们并肩作战</RUBY>。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170660a00">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170670a00">
「也就是说。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170680b03">
「啊，对了。
　我要你成为英雄。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170690a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SoundPlay("@mbgm36",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　他没有漏看我不自觉
僵硬的嘴角吧。
　虽想隐藏，却没能成功。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170700b03">
「……不愿意吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170710a00">
「……就像您看到的，
我过于感激以致没有握住您的双手。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170720b03">
「真可惜。我还费心地洗过了手。
　至少可以让我
把话说完吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170730a00">
「这倒无所谓，就算不问也能察觉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我有些草率地说着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170740a00">
「您是要我<RUBY text="··">代表</RUBY>大和国民，协助ＧＨＱ
吗？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170750b03">
「嗯……就是这么回事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　卡农中佐有些尴尬地苦笑着。
　总之，在这里也想改变态度。

　这不是降低大和武士的评价。
　反而是将之抬高。但——前提是，
在拉拢他进入ＧＨＱ后。

　与进驻军合作，以六波罗为对手，
如英雄一般活跃的武者。
　……如果这样的人诞生的话，
舆论的方向也就会随之被定夺。

　这比起进驻军击破六波罗给大和民众带来
的影响更大。
　说到底，进驻军是外来的入侵者。偏见很难除去。
但，在两者之间若能出现担任桥梁之责的人——

　我下意识地叹了口气。
　……盎格鲁·撒克逊这种生物不论到哪，
都是合理主义精神的党徒。他们拥有为达到目的
找出最佳答案的卓越才能。

　力求完美到让人希望他们能够适可而止。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170760a00">
「……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170770b03">
「我不会勉强你欣喜若狂。
　但，你也有志向吧？　如果你曾在舞殿宫
的手下工作过的话。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170780a00">
「志向吗。
　是针对什么的志向？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170790b03">
「世界？“大英和平”的完成在人类史上，
想必会让我们得以扑灭引发战争的病害，
使我们的社会向上提升一个层级。
我们应该为这般高洁的事业奉献己身。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170800a00">
「这梦想太远大。
　真要说的话，太过理想了。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170810b03">
「我有同感。说得我都觉得恶心。
　就让我们把目标缩小在大和一国吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170820a00">
「大和的将来。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170830b03">
「是啊。
　难道你认为我们就这样让六波罗幕府享受春天
是上上之策吗？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170840a00">
「那么您是想让我认为，让ＧＨＱ——大英联邦
享受春天才是上策吗？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170850b03">
「呵。这是比较问题吗？
　哪个选项对于大和国民来说也是温暖的呢？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170860b03">
「我认为这不是个会让你烦恼的难题。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170870a00">
「那么……
　与其降服在他国的枪口之下，
还不如死在同胞的剑下，
我可以这么想吧。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170880b03">
「比起利益，自尊心更重要吗？
　虽然这种死法比较壮美，
但很难说是明智的选择。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170890a00">
「明智。
　抛弃独立国家的骄傲，
甘愿接受女王陛下的施舍，
这种选择也算明智吗？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170900b03">
「————」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170910b03">
「你所说的……嗯，我能理解。」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170920b03">
「但，民众们的想法是与你
不同的。
　比起百般煎熬的自尊，
他们更冀望身为从属的安乐。」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170930b03">
「我认为你也必须谅解……做出如此选择
的人们……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170940a00">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170950a00">
「我懂了。就这么办吧。
　只要去观察实际处于大英联邦统治之下的
各国状况，很明显就能看出他们
为市民着想的心远超过六波罗幕府。」


//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170960a00">
「基于这一点，容我说句话。
　我也不想坐上一艘注定会沉的船。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0170970b03">
「嗯？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170980a00">
「方才，中佐阁下所提出的未来蓝图不过是
假设性的空想而已。
　以目前的情况来看，
我没办法赌上自己的性命。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　我大胆地摆出患得患失的态度。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0170990a00">
「对六波罗的战役，您是否有胜算。
　我想询问这关键的部分。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171000b03">
「……进驻军现有的战力，
早已超越在关东地区的六波罗军总战力了。
　单凭这项事实还不够吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171010a00">
「还要再加上菲律宾的增援。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171020b03">
「正是如此。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171030a00">
「两军战力相差甚远。
　但是，决定胜败的并不是
只有兵力而已。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171040a00">
「再怎么说，大和对你们来说是
异乡。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171050b03">
「我承认在地利上不如你们……
　但你认为，六波罗光凭借地利就能
弥补双方战力上的差距吗？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171060a00">
「怎么可能。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171070b03">
「那么？」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171080a00">
「我认为开战之时，应该要设定一个
绝对条件，中佐阁下。
　那就是<RUBY text="····">速战速决</RUBY>。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171090b03">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171100a00">
「经营盟军的各国……也就是出钱的人们，
都相当厌恶长期战争吧。不停延续的大战，
或是以年为单位的战争，而且还是发生在
这种远东地区，他们的支出是相当庞大的。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171110a00">
「弄不好甚至会导致数个国家<RUBY text="··">破产</RUBY>。
　连身为盟主的大英联邦都会衰落。」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171120b03">
「……你说的对。
　就算我们的战力十足，但能操作战力的
财力……不能说是相当充足。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171130b03">
「没错，所以我们的目标是速战速决。
　如此一来……就能打胜仗了吧。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//嶋：修正（六波羅軍）【090930】
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171140a00">
「如果六波罗以地利做为盾牌，
虽不会蠃，但如果坚持
<RUBY text="····">不肯投降</RUBY>呢？」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171150b03">
「依他们的个性来判断，
我认为不会做出这种决断吧？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171160a00">
「他们可是背叛祖国，忍辱屈服于你们的
六波罗。
　必要之时，他们会不择手段。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171170b03">
「……原来如此。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171180a00">
「如果我是六波罗将帅，
我就会抵挡住你们的攻势，
同时兵力绕到横须贺。
　横须贺对进驻军来说是补给的中枢……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171190a00">
「只要击溃此处，你们行动的时间限制
也将提前。……将物资调往
这里的额度也受到限制。
你们在时限内攻陷普陀乐是不可能的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171200a00">
「但若加强横须贺防守战力的话，
决战的兵力就会不足。
　想在短时间内驱逐幕府军
终究还是痴人说梦。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171210a00">
「……加之，如果菲律宾的援军
在海上就被幕府舰队击沉的话——」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171220b03">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171230a00">
「别说占领大和，你们甚至会陷入思考
该如何保命的的窘境。
　总而言之……我认为进驻军的情况
并不能让你们如此乐观。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171240a00">
「您意下如何。中佐阁下。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171250b03">
「嗯。
　好吧……我承认。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171260a00">
「……」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171270b03">
「鉴于全局，你所做出的分析还算妥当。
假设我们现在点燃战争的导火线，根据你的
说辞，事态推移的可能性也很大。
　我们在短时间内要掌握胜利是有困难的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171280a00">
「若您是因为想要提高单薄的
胜算而求助于我的话，
中佐阁下……我也只能回答您：
您情势错估得太离谱了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　光是成为<RUBY text="·····">被创造出的</RUBY>英雄，负担就已经很重了，
更何况<RUBY text="···">真正的</RUBY>英雄，我无法胜任这项任务。
　……英雄。只要孤身一人立于战场之上，
驱逐六波罗军就可以了吗。

　如果是这样的话，还是去委托银星号吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171290b03">
「我不会勉强你。
　说句极端的话，只要你愿意
和我们站在同一阵线上，就足够了。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171300b03">
「我丝毫不奢望你会成为我们的战力。
　……对你这般伟大的勇者说这种话，
在你听来是不是一种侮辱呢？
如果是的话，我向你道歉。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171310a00">
「您无须道歉。
　但如此一来，你们就得独自击破六波罗。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171320b03">
「说到做到。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　刚说过进驻军很难蠃得胜利的卡农中佐，
这次却若无其事地一口咬定。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171330b03">
「我们会蠃得胜利。在短时间内。固然会有
轻微的损失，但我们会获得莫大的战果。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171340a00">
「……毫无根据，
却要我相信你的话？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171350b03">
「根据啊。
　这个……你说的很有道理。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171360b03">
「那你得到根据之后，再做决定就行了。
　……等到我们实际毁灭六波罗后，
我再来劝服你吧。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171370b03">
「你可以在那之后再给予我们协助。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171380a00">
「…………？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171390b03">
「不过……
　要是你到时候还是无法做出
决定的话——」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171400b03">
「对我们来说，你将不再被需要。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0171410a00">
「…………」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171420b03">
「美好的未来位于努力所累积出来的山巅。
　悲惨的结局沉落怠惰所堆积的泥沼深处。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0171430b03">
「虽然未必如此。但，我们应该该如此相信……
身为人，我们应努力保命。
　你说对吧？　凑斗景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_018.nss"
