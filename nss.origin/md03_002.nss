//<continuation number="1280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_002.nss_MAIN
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
	#bg002_空a_01=true;
	#bg026_普陀楽山塞a_01=true;
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_003.nss";

}

scene md03_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_001.nss"


//◆車の音
//◆市街？

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);


	Delete("上背景");

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020010a07">
「……哥哥,
　差不多到了吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se乗物_ジープ_走行音");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("黒",2000,true);
	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　听到这话，我将视线自掌中的文件移开。

　眺望着车窗外的景色。
　并肩而行的两辆护卫车、飞逝而去的街道——以及
远方矗立的雄伟建筑。

　确实已经很接近了。
　……仔细想想，这是初次在如此近的距离看到它。

　六波罗幕府的核心————普陀乐城堡。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆普陀楽城

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg026_普陀楽山塞a_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SetVolume("@SE*", 1000, 0, null);
	Wait(2500);
	
//◆すぱーん。勢い良く襖を開けた音
//◆評議の間


	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);

	StR(1000, @220, @0, "cg/st/st茶々丸_通常_制服a.png");

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/bg027_普陀楽評議の間_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, 460, -482, "cg/st/resize/st茶々丸_通常_制服a_l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("背景１", HEAVY);


	Wait(500);

	OnSE("se日常_建物_スライド開く02", 1000);
	FadeStR(100, false);
	Move("@StR*", 300, @-150, @0, Dxl2, false);
	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/blind_05_00_0.png", true);
	Delete("黒幕１");



	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆ハイテンション
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020020a07">
「呼唤!!」

//◆ハイテンション
{
	Move("絵演窓上/絵演背景", 200, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 200, @-200, @0, Dxl2, false);

	Fade("絵色100", 150, 300, null, false);
	Fade("絵演窓上/絵演背景", 150, 1000, null, false);
	Fade("絵演窓上/絵立絵", 150, 1000, null, false);

	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020030a07">
「飞翔!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆急落
	Wait(300);
	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

	StL(1100, @-50, @0,"cg/st/st獅子吼_通常_制服.png");
	StCL(1000, @100, @0,"cg/st/st雷蝶_通常_制服.png");
	StCR(900, @-100, @0,"cg/st/st童心_通常_私服b.png");


	SoundPlay("@mbgm20", 0, 1000, true);

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020040a07">
「我来了却没一个人出来迎接。
　你们太冷淡啦！」

{	FadeStL(300,false);
	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020050a06">
「没人找你。」

{	FadeStCL(300,false);
	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020060a08">
「一样。」

{	FadeStCR(300,false);
	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020070a09">
「哎呀哎呀哎呀。
　您的造访过于突然……若事先知会一声
我们就不至于如此失礼了。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020080a09">
「不管怎样，欢迎您回来。
　童心和尚我简直如获百人之援助啊！」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020090a08">
「是百人之碍事才对吧？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020100a06">
「要是百人份能完事就好了。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020110a07">
「你们还是做好两百人份的觉悟吧。」

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020120a08">
「是啊，哦呵呵呵呵呵呵！」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020130a08">
「才不是吧!?
　你这人最开始就没打算帮忙吗!!」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020140a07">
「我明明配合你说话了，你却突然生起气来……
　真是一如既往地难伺候呢。」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020150a09">
「好啦好啦，好啦。
　四公方难得齐聚一堂。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020160a09">
「今天且来庆祝此般再会吧。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020170a06">
「好吧。
　这也是政治。」

//◆冷笑
{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020180a06">
「可喜可贺。」

//◆無感情
{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020190a08">
「是啊。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020200a07">
「这些家伙其实完全不具有
领导者的器量吧？」

//◆やれやれは小声
{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020210a09">
「算啦算啦。
　…………哎呀哎呀。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020220a09">
「话说，茶茶丸大人。
　贫僧有话要问您。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020230a07">
「嗯？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020240a06">
「哦。我也想问。
　……那家伙是谁啊？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	Wait(300);
//◆ざっ。
//◆景明·六波羅軍装
	OnSE("se人体_足音_走る06", 1000);

	StCR(990, @0, @0, "cg/st/st景明汚染_通常_制服.png");
	FadeStCR(500, true);

	Wait(300);

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020250a00">
「…………」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020260a07">
「对了对了，得介绍一下呢。
　这位是我的新任副官，凑斗景明中佐。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020270a00">
「——我是凑斗。
　请多多关照。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020280a09">
「……哦……」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020290a08">
「……中佐？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020300a07">
「请多关照哦。」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020310a06">
「不，等等。
　凑斗……？　有这名军官吗？」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020320a06">
「我的印象中没有。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020330a07">
「当然了。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020340a06">
「原来所属部队是？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020350a07">
「没有。
　直到昨天为止都还是个平民百姓。」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020360a06">
「…………
　那为何今天就任中佐一职了!?」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020370a07">
「这是因为那个。那个嘛……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020380a06">
「哪个啊？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020390a07">
「捏造。各种东西，比如军中履历啦。」

{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020400a06">
「这种事还说得这么光明正大！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020410a07">
「没办法啊，要是从预科开始干起，直到能放于
身边使唤，不知道还要多少年呢。
　这种时候哪还能慢慢等着呢。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020420a08">
「也不能因此就这么随便乱来啊！
　你真是，无论什么时候都——」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020430a08">
「顺势就这样说出口了，但仔细想想你不会就
这样乱来吧？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020440a07">
「那大概是因为没遇到即使硬来也要放在身边
的人吧。
　遇到就另说了。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020450a06">
「哼……真敢说啊？
　这男人值得吗？」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020460a06">
「如何，叫什么凑斗的。
　你的饲主好像……？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020470a00">
「……………………」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020480a06">
「……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020490a06">
「无视我吗。
　胆量不小啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立つ獅子吼
	OnSE("se人体_動作_立ち上がる_畳", 1000);

	StL(1000, @0, @50, "cg/st/st獅子吼_通常_制服.png");
	Move("@StL*", 300, @0, @-50, null, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020500a06">
「你明知这种傲慢的态度会招致何种后果。
　真有种啊……光是论及胆量的话。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020510a00">
「受您赞扬，倍感荣幸，阁下。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020520a06">
「————」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020530a00">
「但是下官不过就此省下了要回答无法回答之问
题所耗费的心力而已。」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020540a06">
「……你想说什么？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020550a00">
「我凑斗是否有能力是通过行动来展现的。
　口头上无法证明。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0020560a00">
「即使做出成绩，四公方的诸位也未必认可。
　因此不予作答。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020570a06">
「……哼。
　你其实是想对我这么说吧。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020580a06">
「你想叫我别问这么愚蠢的问题，是吧？」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020590a00">
「我对您的明察秋毫深感佩服。
　大鸟中将阁下。」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020600a09">
「…………」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020610a08">
「…………」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020620a06">
「————————————」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020630a06">
「不错。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020640a00">
「……」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020650a06">
「这男人……挺不错的嘛。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020660a07">
「是吧？」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020670a06">
「是啊。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020680a06">
「不错。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆抜き打ち。横薙ぎ
//◆受けた。がきーん。

	CreateTextureEX("抜き打ち", 5000, @0, @0, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureEX("衝突", 4500, @0, @0, "cg/ef/ef040_汎用衝突.jpg");

	SetVolume("@mbgm20", 500, 1, null);

	Wait(500);
	DeleteStA(50,true);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);

	Fade("抜き打ち", 0, 1000, null, true);

	EffectZoomDXadd(10000, 200, 100, "#FFFFFF", "cg/ef/ef015_汎用横軌道.jpg", true);

	OnSE("se戦闘_攻撃_刀衝突01", 1000);

	Fade("衝突", 0, 1000, null, true);

	EffectZoomDXadd(10000, 500, 100, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", false);

	DrawDelete("抜き打ち", 100, 100, "circle_02_00_1", true);
	FadeDelete("衝突",700,true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st獅子吼_戦闘_制服.png");
	StR(1000, @0, @0,"cg/st/st景明汚染_戦闘_制服.png");

	FadeStL(300,false);
	FadeStR(300,true);

	SetVolume("@mbgm20", 2000, 1000, null);

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020690a00">
「…………」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020700a06">
「毫不犹豫地拔刀了呢……
　脸色丝毫未变。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020710a06">
「不知道将军府的规矩吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020720a00">
「下官知道。」

//◆喉で笑う感じ。文字通りに読む必要は無し。
{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020730a06">
「明知<RUBY text="····">却还故犯</RUBY>吗？
　……呵……呵呵呵呵呵！」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020740a09">
「狮子吼大人……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020750a06">
「你们当没看见吧。
　他不过是正当防卫。」

//◆ざれた
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020760a06">
「我只是<RUBY text="····">开个玩笑</RUBY>而已。
　与某人装疯卖傻的胡闹无异。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020770a09">
「……嗯。
　您这样一说，贫僧也无话可说。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼、座る

	Move("@StL*", 300, @0, @50, null, false);
	DeleteStL(300,true);

	StR(1000, @0, @0,"cg/st/st景明汚染_通常_制服.png");
	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw獅子吼_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020780a06">
「不错。
　是叫……凑斗，景明吧？　中佐。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020790a00">
「是。
　感谢您记住我的名字，阁下。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020800a06">
「哼。不知天高地厚。还不错。
　处处惹人生气的……可恶的男人。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020810a06">
「哈哈哈哈……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020820a08">
「……真可怕。
　你的兴趣也真奇怪。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020830a06">
「你可没资格这么说啊。
　但是茶茶丸啊，你是从哪座山上
捡到这种男人的？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020840a07">
「从倒幕派的山头。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020850a08">
「喂喂！」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020860a06">
「哦。
　这男人原来是叛徒吗？」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020870a06">
「看上去不像是那般轻易倒戈之人啊。
　你是怎么说服他的？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020880a07">
「这是哪里话啊。
　他本来就既不是倒幕派，也不是佐幕派。
只是从结果上来说跟幕府敌对的时候比较多
而已。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020890a07">
「我理清了他和<RUBY text="咱们">幕府</RUBY>的利害冲突，
拉他入伙了。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020900a06">
「利害吗？
　是他有自己的企图吗？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020910a07">
「有倒是有。
　但是保密。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020920a06">
「能信任他吗？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020930a07">
「就跟信任我一样般信任他吧？」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020940a06">
「这样啊。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020950a08">
「什么叫这样啊！
　和这家伙一样的话根本无法信任吧！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020960a06">
「的确如此啊。
　但是……无妨。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020970a06">
「说到不能信任，无论是谁都一样吧。
　……喔？　这样一来,刚才的问题岂
不是也很愚蠢？」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020980a06">
「怎么样，凑斗中佐。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020990a00">
「下官以为您很有自知之明，阁下。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0021000a06">
「呵呵呵……！」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0021010a06">
「茶茶丸，把这男的给我吧。
　我用一支大队来换。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0021020a07">
「不行。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021030a08">
「等、等一下狮子吼！
　你认可他了!?」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021040a08">
「偏偏要起用这种逆贼出身的男人，
别开玩笑了……！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0021050a06">
「是啊！」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021060a08">
「童心大人！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021070a09">
「嗯。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021080a09">
「这个嘛……有何不可呢？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021090a08">
「怎么这样！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021100a09">
「不不，雷蝶大人的顾虑自有道理。
　但这是堀越军的内务，茶茶丸大人明知如此
仍然做此安排，我等没有理由说三道四。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021110a08">
「话……虽如此……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021120a09">
「附带一提。
　贫僧也对这位俊杰略有所闻。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021130a09">
「他相当地有趣。
　虽然在印象中当时的他与现在不同……
贫僧对他兴趣颇深。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0021140a00">
「……？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021150a09">
「这样如何，雷蝶大人。
　贫僧低头恳请您。」

//【童心】
<voice name="童心" class="童心" src="voice/md03/0021160a09">
「无论如何，今天都是茶茶丸大人归来的
大好日子。请多包涵。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021170a08">
「…………
　既然童心大人这么说……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021180a08">
「但是，你听好了！　叫凑斗的！
　吾并非信任你这样的男人！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0021190a00">
「是。
　多谢您的宽宏大量。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0021200a00">
「华丽而优美的小弓中将阁下。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021210a08">
「————————
　哎呀……」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021220a08">
「看来你有一双能理解美的眼睛。
　呵呵……不过，就算你说了这种理所当然
的话，吾也完全不会觉得开心的。」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021230a08">
「心胸狭窄也不合美的本质吧。
　那么，吾姑且就认可你吧。
　凑斗中佐！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0021240a00">
「下官深感荣幸。」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0021250a06">
「……真单纯。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0021260a07">
「从某种意义上说真羡慕他。」

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021270a08">
「呵～呵呵呵呵呵!!」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021280a09">
「……嗯，嗯。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_003.nss"