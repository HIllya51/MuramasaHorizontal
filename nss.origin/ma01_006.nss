//<continuation number="1730">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_006.nss_MAIN
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
	#ev103_香奈枝演奏_a=true;

	#bg013_鎌倉俯瞰a_01=true;
	#bg014_鎌倉繁華街_01=true;
	#bg012_鎌倉駅前周辺_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_大鳥香奈枝=true;
	#voice_on_永倉さよ=true;

	$PreGameName = $GameName;

	$GameName = "ma01_007.nss";

}

scene ma01_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_005.nss"

	PrintBG("上背景", 30000);

//◆昼の鎌倉
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……律没有回来。
　无论是家里，还是学校，或者我们面前。

　骚动终于也开始了。
　虽然失踪事件对如今的关东来说并不罕见，
但即使如此，当这种事发生在身边的时候，
还是让人无法泰然处之。

　铃川除了今早以外再没在教室露过面。
　似乎是在律的家里、职员室以及警察署间周旋。

　几次看到他一脸严肃地在走廊和校庭快步穿梭。

　应该已经向警察提出搜索申请了吧。
但是，不管是铃川还是律的家人，
都未必对这样就能解决问题抱有期待。
　他们的心情想必只是向神社投注香钱的程度。

　如果进行徒有形式的搜查还算好。
　说不定就只是敷衍了事地在某种账面上做点记录，
仅此而已。

　在这数年间，警察实施其作为市民保护者机能
的话题，不论大小，都完全不曾听过。倒是在揭发
倒幕势力之际，似乎有过六波罗把任务
外包给警察署，随意差遣用人之事。

　总结，不能抱有一丝希望。

　因此，只有靠自己。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景200", 90, Center, Middle, "cg/bg/bg014_鎌倉繁華街_01.jpg");
	FadeDelete("絵背景100", 1000, true);

	StR(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060010b43">
「似乎不是这边呢。
　都到常盘了却不去看看宫野的店，
怎么都觉得有点难以想象啊。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060020b56">
「这一带也没有其他什么东西了吧？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060030b43">
「至少对律来说，没有有趣的东西了呢。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060040b56">
「那就是，车站那边吗，还是北镰……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我在脑海中展开镰仓地图，自言自语着。
　忠保一言未发，应该是默认吧。

　我们从前天夜里和忠保分手后的律的足迹开始追踪。
　律的行动范围虽广，但这里是她的根据地，
而那家伙又醒目。

　只要不惜劳力，
即使是两个外行侦探也不是什么都办不到。
　目前的状况已经有了某种程度的进步和成果。

　不在场的小夏为了得到律的交友情报，
目前单独行动中。
　目标大多是女性，因此男人跟着反而是障碍。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆駅周辺
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);

	Delete("絵背景*");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　总算到了车站。

　虽然铁路可说是关东交通的大动脉，但诚然，
它并不是普通市民能随意使用的设施。
　……虽然从前并非如此。

　如今的铁路等同于幕府的御用列车。运输的
全是军人或军用物资。
　民间人士虽也可以乘坐，但必须支付额外的车费。

　想去江户或骏府的话，乘船更为便利。
　和铁路相比虽然慢一些，但价格便宜，票源也稳定。

　介于此种原因，不必考虑律从镰仓车站
乘火车去往别处的可能性。
　本来也不是基于这种推测才来这里的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060050b56">
「那么……从哪里开始比较好呢？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060060b43">
「选择太多，真困扰呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我和忠保二人有些不知如何是好。

　作为站前场所的标准模式——和纯粹的军用车站
不同——镰仓站前也是一条繁华街。
　小吃店、服饰店、商场、游戏场……这里有很多律
喜欢的地方。

　把所有地方都巡回调查一遍是不可能的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060070b56">
「可以排除要花钱的地方吧。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060080b43">
「那些像是蠢货聚集地的场所也没必要去吧。」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060090b56">
「因为她讨厌蠢货呐。
因为是蠢货（片假名）。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060100b43">
「因为是蠢货（片假名）啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　顺便一提，我们说『蠢货（片假名）』时所要表达的，
是指其字面和语感所表现出的方向性奇怪感觉，
而用汉字书写的『蠢货（马鹿）』，则如同其字面含义，
表示的是非人类、无智慧的生物。

虽然两者常常被混淆，但完全不是一回事。
要注意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060110b56">
「总之掐头去尾，只需要
找普通的地方就好。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060120b43">
「哈哈哈，是最多的一类呢。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060130b56">
「……就算这样也多少好点吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
只是困难程度从『不可能』下降为『很难』而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060140b43">
「要不要多想几个目标？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060150b56">
「可以的话肯定要。
　但怎么做？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060160b43">
「不管她去过哪里，肯定都要通过这一带。
在这附近打听打听吧。顺利的话，
说不定至少能问出她去了哪个方向。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060170b56">
「这附近啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　环顾周围。
　忠保所言不虚。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060180b56">
「要一个个拦下路人问吗？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060190b43">
「那样做没用呢……不能问从这里路过的人，
得问长期在这里的人。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060200b56">
「车站乘务员？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060210b43">
「乘务员只会看车站内部的情况吧。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060220b56">
「警察。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060230b43">
「看起来睡得正香呢。
　要不要赌赌他只有前天夜里认真工作过的
可能性？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060240b56">
「还是赌点胜算更大的事吧。
　小吃摊。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060250b43">
「到日落就关门了，一般。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060260b56">
「……结果究竟要怎样做？」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060270b43">
「问问那边的人怎样？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	SetVolume("@mbgm*", 1000, 0, null);

//◆香奈枝、コントラバス独奏
//◆ＥＶ絵にするなら傍らにさよも

	CreateWindow("ウィンドウ上", 1500, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 1500, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateTextureSP("ウィンドウ上/絵背景50", 1500, Center, Middle, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");
	CreateTextureSP("ウィンドウ下/絵背景50", 1500, Center, Middle, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");

	CreateTextureSP("kana", 1000, 0, Middle, "cg/ev/resize/ev103_香奈枝演奏_a.jpg");
	CreateTextureSP("絵EV100", 900, 0, Middle, "cg/ev/ev103_香奈枝演奏_a.jpg");
	Move("kana", 0, @-200, @-200, null, true);

	Move("kana", 2000, @-200, @+100, Dxl1, false);
	Move("ウィンドウ上", 1500, @0, @-150, null, false);
	Move("ウィンドウ下", 1500, @0, @+150, null, true);

	SoundPlay("@mbgm06",0,1000,true);
	Wait(500);

	Move("ウィンドウ上", 1000, @0, @-150, null, false);
	Move("ウィンドウ下", 1000, @0, @+150, null, true);
	Delete("ウィンドウ上/*");
	Delete("ウィンドウ上");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ下");

	FadeDelete("kana", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　被这么一说，我才察觉。
　并非察觉到那个人。

　而是察觉到自己从方才起就一直听着她的演奏。

　巨大的弦乐器。
　仿佛是对待恋人般——抑或是孩子般——
女子将它抱在怀中，拉动着琴弓。

　音色沉重、深厚，却静谧。
　忆起深邃森林中，照不进阳光的幽深处，摇荡的微风。

　轻风，触及不至任何人的肌肤。
　回响，传递不及任何人的耳畔。

　没有一个人驻足乐师跟前。
　来往不断的人流，只是匆匆路过。

　他们大概连听过这支曲子的记忆都不会留下吧。
　然而不经意间，当从未听闻的旋律萦绕在脑海，
他们或许会歪头沉思。

　凝神倾听，
　她的演奏，很美。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060280b56">
「你……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060290b43">
「嗯？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060300b56">
「真亏你能发现呢。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060310b43">
「……是啊。也是凑巧吧。
　真不可思议啊。仔细一看，明明是那么
美丽的人，为什么稍微把视线移开
就马上变得悄无声息了呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　忠保的分析正中事实。

　拥有极富特征的细长双目，明显是一般水准以上的美人。
熠熠生辉的长发仿佛服饰一般披在肩头。
　明明无论从哪个角度看来都是高人一等的容貌，
却在远观时，奇妙地融入了风景当中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060320b43">
「可能是因为我在刻意找那种人，
才察觉到的吧。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060330b56">
「那种人？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060340b43">
「在街边卖艺的人。
我想他们应该很晚才会回去。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060350b43">
「不过……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060360b56">
「嗯？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060370b43">
「还不清楚那个人到底是不是卖艺人呢。
拉大提琴赚不到钱啊。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060380b56">
「确实如此呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　如果没人察觉，一切都是白搭。
　但若侧耳倾听，
那演奏的出色程度绝对值得以大钞打赏。

　总之，先问问看吧。就问问。
　我和忠保相视点点头，走近那女子。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆立ち絵もしくはＥＶを消去、駅前背景
	FadeDelete("絵EV100",500,true);

	StR(1000, @-50, @0,"cg/st/st雄飛_通常_制服.png");
	StC(800, @+300, @0,"cg/st/st忠保_通常_制服.png");
	FadeStC(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060390b56">
「请问……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　突然。
　眼前出现一只手，阻止了我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆さよ立ち絵
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060400b56">
（……咦？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　很快就结束了。沉稳的视线传达给我这样的信息。
　虽然等等也好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060410b56">
（这个人，是从哪里冒出来的？）

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060420b43">
（呀……从哪里呢。
　连我也没发现啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

/*
	DeleteStL(200,false);
	DeleteStR(200,false);
	DeleteStC(200,true);

	StC(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStC(200,true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　一目了然素养良好的老妇人。和千金小姐风的女性
站在一起，就像是服侍她的婆婆一般的风景。
　一身极为质朴的打扮。和一旁容姿端丽的女子相比，
无论如何都难给人留下印象……正因如此，吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(1000);

	SetVolume("@mbgm06", 2000, 0, null);

	DeleteStL(300,false);
	DeleteStR(300,false);
	DeleteStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
　我们仍在诧异之时，演奏结束了。
优美地行过礼，老人向旁退下。
　长发女子抬起脸。视线相合。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm26",500,1000,true);

	StL(1100, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0242]
　那一瞬间。
　我对自己已经到丢人程度的自恋有了实感。

　那实在是太过愚蠢的理解。
　
　——这个人，会无条件地爱上我。

　甚至不必冷静思考。妄想而已。
　这种愚蠢至极的想法究竟是从哪里冒出来的。
今天初次见面的女性，还是这样的美人，
凭什么要喜欢我呢。

　一时间想逼问自己的脑细胞。

　可是，那双纤细的眼眸相当不妙。
　注视我的眼神太过温柔。
　
　无论如何，都让人想那样误解。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @-50, @0,"cg/st/st雄飛_通常_制服.png");
	StC(800, @+300, @0,"cg/st/st忠保_通常_制服.png");
	FadeStC(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_驚くa.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060430b56">
「请……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　无论如何为了甩开妄念，我决定开口。
　说些什么。说些什么就能恢复神智了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060440b56">
「请问……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　说不出话。
　不知道该说什么好。

　我在做什么呢？
　为什么会到这里来着？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060450b56">
「请问……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060460b43">
「雄飞，你怎么了。勃起了哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm21", 200, 300, null);

//◆ギガントパンチ。どがしゃー。
	CreateTextureEX("絵EF100", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	SetBlur("絵EF100", true, 3, 500, 50, false);
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Move("絵EF100", 0, @-100, @+100, null, true);
	Zoom("絵EF100", 0, 2500, 2500, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	Move("絵EF100", 200, @+100, @-100, null, false);
	Zoom("絵EF100", 200, 1200, 1200, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);

	Wait(100);

	OnSE("se戦闘_攻撃_殴る05",1000);
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵EF100");
	DeleteStC(0,false);
	DeleteStCL(0,false);
	DeleteStL(0,false);
	DeleteStR(0,true);

//shake用下背景定義
	CreateTextureSP("絵背景1", 10, Center, Middle, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");
	Fade("絵背景1", 0, 1000, null, true);
	Shake("背景50", 800, 5, 5, 0, 0, 500, null, false);

	Fade("フラッシュ白",200,0,null,true);

	Delete("フラッシュ白");

	StR(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetComic(@0,@0,15);
	SetFwC("cg/fw/fw雄飛_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060470b56">
「最、最多说是脸红啊啊!!」

{	#voice_on_大鳥香奈枝=true;
	DeleteComic();
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060480a03">
「勃起了吗？」

{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060490b56">
「呜哇完了已经被听到了!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 5000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　本想抱头落荒而逃，婆婆却不知何时又走上前来。
　一边说着好了好了，一边牢牢捉住我的肩膀半转过来，
我被迫回到了原位。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
　女子的目光并没有改变。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm21", 1000, 1000, null);


	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060500b43">
「呜嗯……雄飞……友情重如山啊。」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060510b56">
「刚才那是没有任何杂念的杀意混蛋！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　不过托他的福总算是恢复理智了，凭借惊吓疗法。
　但绝对不会道谢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060520b56">
「请问。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060530a03">
「是。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060540b56">
「有些事情想请教……
　啊，抱歉。我是住在这附近的学生，
名叫新田雄飞。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060550a03">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　女子点头。
　随即，

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060560a03">
「雄飞。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　像对待珍视的宝物般，呼出了我的名字。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060570b56">
（唔）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　冷静，快给我冷静。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060580b56">
「这、这、这位是稻城忠保。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060590b43">
「我是稻城。顺带一提从刚才开始雄飞那种
奇怪的表现并不是什么行为怪癖，只是在
美女姐姐面前有些飘飘然而已，于是我
就是那个为好友圆场的友情霸王。」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060600b56">
「你可以滚回去了!!」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060610a03">
「你好，友情霸王。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060620b43">
「哇，她记住我的称号了雄飞！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　值得高兴吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060630b56">
「说起来。
　姐姐是一直在这里演奏的人吧？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060640b43">
「雄飞，你那种说法好像姐姐是个
没有其他习性的动物一样哦。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060650b56">
「唔。那个，就是说。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060660a03">
「是想问，我是否是在这里每日演奏
以此谋生的人？」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060670b56">
「啊，对。就是这个意思。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060680b43">
「真是如实暴露<RUBY text="ＣＰＵ">演算机</RUBY>性能差距的对话呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　无话反驳。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060690a03">
「很遗憾……我刚来镰仓不久。
　在这里弹奏它，今日还是第一次。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060700b56">
「啊，是这样吗……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060710b43">
「真遗憾呢，雄飞。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060720b56">
「喂。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　别说遗憾，多不礼貌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060730a03">
「非常抱歉。
　似乎没有帮上忙。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060740b56">
「哪里哪里，是我们擅扰。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　不出所料，女子垂下了肩。
　我们才该说抱歉。我慌忙挥手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060750b56">
「也不是什么大不了的事……」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060760b43">
「哈哈哈这说法还真是过分<?>
{	OnSE("se戦闘_攻撃_殴る04",700);
	DeleteFwC(0,false);}
呀。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　以一根大拇指击刺<RUBY text="拦　截">攻势阻止</RUBY>成功。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060770a03">
「是吗……？
　那么至少，请让我为你们指明方向。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060780b56">
「方向？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060790a03">
「啊，自我介绍有些迟了。
　其实我是——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ドゥーン。コントラバスひと弾き
	OnSE("se特殊_楽器_コントラバス01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　仿佛问候般拨动了一声琴弦。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060800a03">
「如您所见。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060810b56">
「是。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060820a03">
「我是一名民间占卜师。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060830b56">
「诶诶!?」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0060840a04">
「我是助手。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060850b56">
「…………那乐器是？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060860a03">
「我擅长用大螺旋交差演奏法进行占卜。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060870b43">
「像鬼怪一样可疑呢。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060880a03">
「请允许我说明一下。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060890b56">
「不用不用没事的。总有种听了之后
会不太好办的感觉。」

{	#voice_on_永倉さよ=true;
	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0060900a04">
「大小姐，那可是公司机密。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060910a03">
「的确如此。公司机密必须保守。
　如果占卜界派出刺客就麻烦了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0060920a04">
「用于强袭突击战的占卜师也可能会袭击过来。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060930b43">
「把根本层面上的
各种奇怪地方指出来好不好，雄飞？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　你上吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ドゥーン
	OnSE("se特殊_楽器_コントラバス01",1000);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060940a03">
「那么，就让我来占卜你的未来吧。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060950b56">
「那个，不好意思。与其说我不太喜欢
被用奇怪的方法占卜，不如说我觉得
这种行为其实就是诅咒的好朋友吧。
不过，你那里是什么情况？」

//◆ドゥンドゥーン
{	OnSE("se特殊_楽器_コントラバス02",1000);
	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0060960a03">
「看见了！」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060970b56">
「虽然似乎理解了我说的话但却无视了呢。
再说使用乐器的话不应该是看见而
应该是听见了才对吧？　啊啊啊，
算了算了怎样都好随便了。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0060980b43">
「你那张充满觉悟的侧脸好帅哦，雄飞。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0060990b56">
「闭嘴。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061000a03">
「……雄飞。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm21", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　占卜师（？）唤着我的名字。
　她的表情真挚到让人感到意外的程度。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061010a03">
「你的命运在等候着你。
　无法避免的宿命……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061020b56">
「哈。命运啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　算了，如果当这种东西不存在的话，
占卜者就无法成立了吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061030a04">
「那么大小姐，等候着他的命运是？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドゥーン
	OnSE("se特殊_楽器_コントラバス01",1000);
	Wait(1000);
	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0591]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061040a03">
「反复进行猥亵行为最终被捕，之后
供述『我可是超受欢迎。不管什么样的女人都
能轻松搞定。大家都称呼我王子殿下。』
这样的命运在等候着你！」

//◆ガーン
{	SetComic(@0,@0,8);
	FwC("cg/fw/fw雄飛_驚くb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061050b56">
「不要啊，那种命运!!」

{	DeleteComic();
	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061060b43">
「雄飞，虽然毕业之后我们还是朋友，
但你别来见我啊！」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061070b56">
「你别照单全收外加抛弃我啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　真的是诅咒。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061080a03">
「请放心。逃脱的方法仅有一个。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061090b56">
「不会说让我买个壶之类的吧。」

//◆ドゥーン
{	OnSE("se特殊_楽器_コントラバス01",1000);
	SetVolume("@mbgm26", 1000, 0, null);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061100a03">
「只要身在镰仓，你就无法逃离宿命。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061110b56">
「诶？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061120a03">
「离开镰仓，新田雄飞。
　越早越好。现在，马上就可以离开。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061130a03">
「请和家人商谈一下，
　他们一定会理解你的。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061140b56">
「不，说什么离开……这么突然。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061150a03">
「纱代。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061160a04">
「在。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm18",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　听到女子催促，婆婆走上前来。
　随后毕恭毕敬地递给我了什么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061170b56">
「……这是？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061180b43">
「是车票呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　大和全线通用头等定期车票。

　……本以为是错觉，但丝毫没错。
　只要持有这张票，一定时间内，大和国内所有铁路
都可以无限次乘坐，并且作为最头等乘客。
是最高价格的车票。有效期还有半年。

　……即使以白菜价卖掉也值五万块的东西。
　相当于新上任公务员三个月的工资。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061190b56">
「开玩笑的吧？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061200a03">
「请随意使用，如果你有这个意愿的话。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　女子在微笑。
　从最初见面开始，一直。

　从最初开始。
　从演奏着那风一般的旋律之时开始。

　如果这是玩笑的话，那是不是从最初开始，
一切都只是玩笑。
　
　——那演奏也包含在内。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061210b56">
「…………」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061220b43">
「雄飞。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　我阻止了想拉走我的忠保。
　我明白的。这家伙是想帮我做点什么。

　交往那么久，这点不可能不知道。
　但现在并不需要。没问题的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061230b56">
「占卜师姐姐。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061240a03">
「是。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061250b56">
「你为什么要做这种事情，
说实话我完全无法理解。
　但是……我明白你是真的在为我担心。」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061260b56">
「非常感谢你。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　我低下了头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061270a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061280a04">
「……」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061290b56">
「不过，这个还给你。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061300a03">
「为何？」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061310b56">
「没有接受的理由……并不是这个原因。
　你在真心地为我担心，这已经是充分的理由。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061320b56">
「可是，至少现在不行。
　我还有必须要在这里做的事情。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061330a03">
「那是很重要的事情吗？」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061340b56">
「是的。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061350a03">
「为了那件事，你真的——
　即使被严酷的命运吞噬，也不会舍弃？」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061360b56">
「是的。
　我现在必须要去做的，就是
帮助我的同伴。」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061370b56">
「出于这样的原因，不管我发生什么……
　到那个时候，我的同伴也会帮助我。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061380b43">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　女子闭起了双唇。
　她垂下眼帘……最终又一次，拨动琴弦。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ドゥーン
	OnSE("se特殊_楽器_コントラバス01",1000);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061390a03">
「大回旋爆裂炎上法所指示的命运……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061400b43">
「咦？　总觉得好像有点奇怪。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　不止是有点吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061410a03">
「我所能看到的，仅到雄飞被卷入事件为止。
那之后会怎样并不清楚。
　能否战胜命运，取决于你自己。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061420b56">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061430a03">
「用着亲切的神情，却尽说些不吉利的话。
请原谅我。
　今天的事情，就请忘记吧。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061440b56">
「怎么会。那个……我不知道该怎么说才好。
　但是，你真的没有给我造成困扰。」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061450b56">
「姐姐的事情我不会忘记的。
　……我不想忘记。」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061460a03">
「……谢谢你。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　她柔和地垂下眼梢。
　白皙的脸颊染上了些许朱红。

　呜哇。她真是个美人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061470b43">
「哎呀，虽然我好像有点被排除在外，但还是
很开心哦。演奏也非常棒。
　这个，小小礼物不成敬意。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061480a03">
「哎呀哎呀，谢谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　忠保递出了不知什么时候买的包装果汁。
　你还真是自我到让人羡慕的程度呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061490a03">
「纱代。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061500a04">
「在。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061510a03">
「那么二位，我们就此告辞了。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061520a04">
「失礼了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm33", 500, 0, null);

	DeleteStC(300,false);
	DeleteStR(300,false);
	DeleteStCL(300,false);
	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　自称占卜师的女子轻轻颔首，自称助手的
老妇人深深鞠了一躬，便一同向熙熙攘攘的人群中
离去。

　目送着她们远去的背影。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061530b43">
「真是让人印象深刻的两个人呢。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061540b56">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　一定无法忘记吧。
　那不可思议的，亲切的女子。

　——再见。
　我呢喃着忘记向她说出的道别话语。

　在车站前的繁杂光景中，最后看到的背影，
　仿佛就会呜咽出来一般，掩住了嘴——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");
	SetVolume("@mbgm18", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061550b56">
「……忠保。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061560b43">
「怎么？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061570b56">
「你给她的那个，是什么？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061580b43">
「那个？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　若无其事般。
　这男人开口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0061590b43">
「其实我给她的是似乎悄然成为大流行的，
这家小卖部也有出售的，
百分百纯天然·番薯汽水。」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0061600b56">
「混蛋蛋蛋蛋蛋蛋蛋蛋!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//◆ブラックアウト
//◆駅前
	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 2000, 1000, null, true);

	StR(1000, @0,@0,"cg/st/st香奈枝_通常_私服b.png");
	StL(1000, @0,@0,"cg/st/stさよ_通常_私服.png");
	FadeStR(0,true);
	FadeStL(0,true);

	WaitKey(3000);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);


	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061610a04">
「大小姐……这样真的就可以了吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061620a03">
「嗯。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061630a04">
「狮子吼殿下的指尖，恐怕已经
逼至眼前了。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061640a03">
「即使如此。
　他的命运也由他自己选择。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061650a04">
「……确实如此。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061660a03">
「我所能做的，只是向他指示命运。
　直到终有一天……当他与命运决战之时。
给予他哪怕微毫的帮助。」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061670a04">
「如您所言……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061680a03">
「抓紧吧，纱代。
　我们也差不多该做回本行了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061690a04">
「是。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061700a03">
「另外。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061710a04">
「是。」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0061720a03">
「这瓶勇敢挑战开拓新味觉，华丽四散的
英雄饮料，要不要喝喝看？」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0061730a04">
「请允许我坚决拒绝。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);


..//ジャンプ指定
//次ファイル　"ma01_007.nss"

}



