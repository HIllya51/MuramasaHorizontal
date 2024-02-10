//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene md04_047vs.nss_MAIN
{

//あきゅん「演出：シーンの繋ぎのため前ファイルで定義します」
	//CP_AllSet("村正");
	

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
	#ev231_茶々丸変身_e=true;
	#bg105_城門付近内側_02=true;
	#ev502_村正抜刀片手=true;
	#ev232_村正ＶＳ茶々丸１=true;
	#ev233_村正ＶＳ茶々丸２_a=true;
	#ev233_村正ＶＳ茶々丸２_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "md04_048vs.nss";

}

scene md04_047vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_046.nss"


	if($GameDebugSelect==1){CP_AllSet("アベンジ");}


//◆ＢＧＭ？
//◆bg105＋虎徹茶々丸
	PrintBG("上背景", 30000);
	CreateTextureSP("魔王星", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_e.jpg");
	OnBG(100, "bg105_城門付近内側_02.jpg");

	SoundPlay("@mbgm10", 0, 1000, true);
	FadeBG(500, true);
	Delete("上背景");
	FadeDelete("魔王星",500,true);

	Wait(500);

	OnSE("se人体_足音_鎧歩く03",1000);

	StC(1000, @0, @30, "cg/st/3d虎徹_立ち_通常.png");

	Move("@StC*", 500, @0, @-30, Dxl1, false);
	FadeStC(500, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　既非人。也非剑胄。
　<RUBY text="·····">活着的铠甲</RUBY>。

　竟会有这种东西存在？

　为何茶茶丸会变成这种东西!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸虎徹_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0010a07">
「我的父亲是堀越公方足利守政。
　母亲是虾夷的剑胄锻造师……继承长曾弥入
道虎彻之名的第二十八代，名讳兴永。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0020a07">
「本来我出生时应当是人类或是虾夷，不然就是
半虾夷。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　由于六波罗的公安警察——镰仓大番役的严密监视，
这件事只在暗地里流传。
　但，这是个十分有名的传闻。

　堀越公方足利茶茶丸流着一半虾夷的血。
　也即是说，那位大将是——<RUBY text="Ｈａｌｆ　Ｄｗａｒｆ">半虾夷</RUBY>——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0030a00">
「……但是。
　并非如此……？」

{	FwR("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0040a07">
「很遗憾。」

{	FwR("cg/fw/fw茶々丸虎徹_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0050a07">
「……很遗憾……」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0060a00">
「为什么——」

{	FwR("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0070a07">
「这样好吗？
　哥哥。」

{	FwR("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0080a07">
「有空问我的私事吗？
　不是有急事要办吗？」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0090a00">
「……」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0100a01">
「主君。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0110a00">
「嗯……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　的确，现在不是时候。
　虽然现在被茶茶丸忠告也很奇怪。

　必须马上阻止空投锻造雷弹！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0120a00">
「茶茶丸。
　你是——不会让我们通过的吧。」

{	FwR("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0130a07">
「嗯……」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0140a00">
「…………」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0150a00">
「村正。」

{	FwR("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0160a01">
「在。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Move("@StC*", 300, @-50, @0, Axl2, false);
	Move("@OnBG*", 300, @-100, @0, Axl2, false);
	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Move("@OnBG*", 0, @200, @0, null, true);
	DeleteStL(0,true);

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a1.png");
	FadeStR(0,true);
	FadeStC(0,true);

	Move("@OnBG*", 300, @-100, @0, Dxl2, false);
	Move("@StR*", 300, @-150, @0, Dxl2, false);
	Move("@StC*", 300, @-150, @0, Dxl2, false);
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);
	WaitKey(1500);


//◆村正分解
//◆装甲アクション

	CreateColorEXadd("フラ", 10000, "#FFFFFF");
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("フラ", 300, 1000, null, true);
	DeleteStR(0,true);
	DeleteStC(0,true);

	CreateColorSPadd("フラ", 10000, "#FFFFFF");

	DeleteStL(0,true);

	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);
	Delete("上背景");
	FadeDelete("フラ*", 1600, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　装甲之势——
　操控者与剑胄变为武者，所必须的过程。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0170a00">
（上次已是八幡宫事件了吗）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　不知为何十分怀念。
　明明从那以来还未经过数月。

　这行为很少伴随着快乐的回忆。
　斗争、痛苦、以及杀害——就只伴随着这三种回忆。

　即便如此。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0180a00">
（我并不讨厌）

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0190a01">
《……是啊，我也是。》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　伸出四肢，轻轻绷紧全身的肌肉。
　为了把四周跳跃的装甲接受成为自身一部分。

　为了让不完全的二者化为一。
　咏唱誓约之词。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorSPadd("絵演窓上/フラ", 25000, "#FFFFFF");
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, 0, -344, "cg/bg/bg105_城門付近内側_02.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

//	DrawEffect("絵演窓上/絵演背景", 50, "LowWave ", 0, 100, null);


	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -220, "cg/st/resize/st景明_装甲_私服aex.png");
	SetBlur("絵演窓上/絵立絵", true, 3, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	FadeDelete("絵演窓上/フラ", 1000, false);

	Move("絵演窓上/絵演背景", 600, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 600, @-200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0200a00">
「遇鬼斩鬼。
　逢佛弑佛。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵演窓上/絵立絵2", 16200, -140, -220, "cg/st/resize/st景明_装甲_私服bex.png");
	SetBlur("絵演窓上/絵立絵2", true, 3, 500, 70, false);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	EffectZoomadd(17000, 600, 100, "cg/ef/ef003_汎用移動.jpg", false);
	FadeF4("絵演窓上/絵立絵2", 200, 1000, 400, 0, 0, Dxl2, true);

//	Wait(300);

	CreatePlainSP("絵板写", 20000);
	Delete("絵演窓*");
	Delete("絵色*");
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);
	Zoom("絵板写", 300, 2000, 2000, Axl3, false);
	FadeDelete("絵板写", 300, true);
	SetFwL("cg/fw/fw景明_怒りb.png");

//pre分けしました　inc久保田
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0210a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆装甲
//◆村正ＶＳ虎徹（茶々丸）



	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");

	Fade("絵フラ", 600, 1000, null, true);
	DeleteStA(0,true);

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/st/resize/3d村正標準_立ち_通常l.png");
	Move("絵背景100", 0, -563, -669, null, true);

	Move("絵背景100", 3000, -563, -539, null, false);
	Fade("絵フラ", 1000, 0, null, true);

	WaitKey(1000);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵背景100");

	DeleteStC(0,false);
	StC(1000, @0, @0,"cg/st/3d村正脇差_立ち_通常.png");
	FadeStC(300,false);
	FadeDelete("絵フラ", 1000, true);

	Wait(500);

	SetFwL("cg/fw/fw茶々丸虎徹_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0220a07">
「……呵呵。
　我与公主殿下不同，没有那种用殴打表现
爱意的毛病。」

{	FwL("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0230a07">
「再怎么说我也是个习武之人，看到武者装扮
的哥哥还是会想比试一下。
　况且不说内部，外表可是超级不顺眼呢。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0240a01">
《……正如我所愿。
　我要让你付出绝大的代价。》

{	FwL("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0250a07">
「哈。你这夜郎自大的废铁！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 300, 0, null);

	CreateTextureEX("絵背景22", 1000, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");

	Request("絵背景22", Smoothing);
	Move("絵背景22", 0, @100, @0, null, false);
	Zoom("絵背景22", 0, 1200, 1200, null, false);
	DeleteStCR(1500,false);
	StCL(1000, @0, @0,"cg/st/3d虎徹_立ち_通常.png");
	FadeStCL(1500,false);
	Fade("絵背景22", 1500, 1000, null, true);
	FadeDelete("@OnBG*", 1500, true);
	SoundPlay("@mbgm09", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　以武者来说，这副姿态十分特别。

　首先，身上未带太刀。
　也没有代替它的刀枪棍棒之类。

　只有长爪。
　两手伸出的三支利爪，映着夕阳之光，
染上了橙色。

　犹如虎的前爪。

　在极近距离当是比刀剑更实用的武器。
　……强化为格斗战适用的类型吗。

　对付它的定式，则是拉开与敌骑的距离——
　也就是以太刀的长度决胜负。

　依靠距离优势，一味攻击而获胜。
　那是最上策。

　虽是最上策…………
　
　我以左手探向自骑的腰间。

　本应在此处的太刀，却不在。
　只有短刀而已。

　这我已经有心理准备，并未沮丧。
　但是，我不禁开始思考严峻的现实。

　短刀刀身过短，若是用它就非得拉近距离不可。
　只能选择敌骑擅长的战场。

　村正的主武器，巨大的野太刀，与代替它的长逾三尺
的太刀，若是有其中之一在身边的话，也不至于落到这
种境地。
　现在想要它们则是强人所难了。

　它们都被银星号夺走了。
　前者被粉碎，变成“卵”的素材，后者消失在重力的
漩涡之中。

　现在武器仅余这把短刀。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景20", 1000, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");

	Request("絵背景20", Smoothing);
	Move("絵背景20", 0, @-100, @0, null, false);
	Zoom("絵背景20", 0, 1200, 1200, null, false);
	DeleteStCL(1500,false);
	StCR(1000, @0, @0,"cg/st/3d村正脇差_立ち_通常.png");
	FadeStCR(1500,false);
	Fade("絵背景20", 1500, 1000, null, true);
	FadeDelete("絵背景22", 1500, true);

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0260a00">
（形势……不利啊）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我边注意着茶茶丸的三根利爪边想。
　并不是数量的问题。

　对方无论从性能还是从技术上都适合近战。
　相反，我方使短刀并不如太刀顺手，骑体也不适合
运用小型武器。

　村正作为剑胄是正统派，原本设定性能之时，就是
以在空中以及地上使用沉重的刀剑为前提。
　极近距离战并不能发挥她原本的性能。

　还有其他不利因素。

　茶茶丸并不是没见到村正的武装。即便如此，她也
未动，而是在观察情况。
　明显并不是因为警戒心。

　目前状况，茶茶丸没有主动攻击的必要。
　茶茶丸只要拖住我，就能达到目的。

　反过来说，这也是我的胜利条件。
　我虽然没有一定要打倒茶茶丸的必要，却必须尽快突
破，前去天守阁。

　若是任由时间就此流逝，茶茶丸就能兵不血刃地得胜，
而我则会失败。
　
　在锻造雷弹投下之时。

　所以我不仅战术不利，战略上也不能选择持久战。
　即使自知接近战不是自己擅长的领域，也非得主动攻
击不可。

　还未战便输了一半，这么说并不过分。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0270a00">
（但是……）

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	StCR(1000,@0,@0,"cg/st/3d村正脇差_立ち_戦闘.png");
	Wait(200);
	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStCR(500,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　形式不利，就有不利的<RUBY text="··">战法</RUBY>，这才是武术。

　我以右手拔出短刀，举在腰间指向对手。
　同时，左手与左脚轻轻向前，摆出了斜着身的架势。

　吉野御流合战礼法小太刀术，逆胁之势。

　在吉野御流小太刀本是把主武器摆在前方，主要用于
防御的招式，但这姿势与本来的姿势相反。

　舍弃未拿武器的左手用来防御，引敌人来斩，自己则
趁机用右手的小太刀刺击。
　一击定胜负，是舍肉而斩骨的姿势。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0280a07">
「原来如此……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景21", 1000, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");

	Request("絵背景21", Smoothing);
	Move("絵背景21", 0, @100, @0, null, false);
	Zoom("絵背景21", 0, 1200, 1200, null, false);
	DeleteStCR(1500,false);

	StCL(1000, @0, @0,"cg/st/3d虎徹_立ち_通常.png");

	FadeStCL(1500,false);
	Fade("絵背景21", 1500, 1000, null, true);
	FadeDelete("絵背景20", 0, true);


	StC(1000,@-250,@0,"cg/st/3d虎徹_立ち_戦闘.png");
	Rotate("@StC*", 0, @0, 180, @0, null,true);

	OnSE("se戦闘_動作_刀構え03",1000);
	DeleteStCL(300,false);
	FadeStC(300,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　茶茶丸依着我的变化，也摆出差不多的姿势。
　右脚退后，左侧斜向前方。

　对付刺击，身体正面对敌较为危险，侧身则能减少
目标面积。茶茶丸的判断是正确的。
　……但既然是正确的，那就在我的预料之内。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景30", 1000, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");

	Request("絵背景30", Smoothing);
	Move("絵背景30", 0, @-100, @0, null, false);
	Zoom("絵背景30", 0, 1200, 1200, null, false);
	Fade("絵背景30", 500, 1000, null, true);
	DeleteStCL(0,false);

	CreateTextureEX("絵ＳＴＣ200", 1100, Center, InBottom, "cg/st/3d村正脇差_立ち_戦闘.png");

	CreateTextureEX("絵村正２", 2100, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureEX("絵村正３", 2000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	SetBlur("絵村正２", true, 3, 500, 50, false);
	WaitKey(500);

	OnSE("se戦闘_動作_刀構え02",1000);

	Fade("絵ＳＴＣ200", 300, 1000, null,false);

	Wait(300);

	OnSE("se戦闘_動作_空突進03",1000);


	Move("絵村正２", 500, @0, @0, Axl1, false);
	Wait(350);
	Shake("絵村正２", 100000, 0, 1, 0, 0, 500, null, false);
	Fade("絵村正３", 500, 1000, null, false);
	Fade("絵村正２", 500, 1000, null, false);

	FadeDelete("@OnBG*", 0, false);
	FadeDelete("絵背景20", 0, false);
	FadeDelete("絵ＳＴＣ*", 0, false);



	SetFwL("cg/fw/fw景明_警戒.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0290a00">
「呼——」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　短短地呼出一口气，踏向前方。
　同时大幅伸出左手。

　打开轻握着的拳头，张开手掌试图盖住对方的脸，
与此同时。
　
　————木叶隐。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0300a07">
「!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　被挡住视线的茶茶丸思考了约十分之一个瞬间——
从肌肤传达的呼吸就能明白。
　我的小太刀是从右侧还是从下面，或者是从正面攻来，
在那一刹那间无法判断。

　虽然等待一瞬就能看清，但若是等了那一瞬，就再也
无法避过。
　
　——于是茶茶丸，做出了得当的判断。

　用左手的利爪挡在前方为盾，同时退向后方。
　这样一来，虽说失去了反击的机会，但不论我的小太
刀从何处袭来，她都能防住。即使被轻微刺到也不至于
造成致命伤。

　……但是。
　这是我直接刺出去的情况。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_突進01",1000);
	CreateTextureEX("ido", 15000, @0, @0, "cg/ef/ef002_汎用移動.jpg");
	Zoom("ido", 0, 1500, 1500, null, true);
	Fade("ido", 400, 1000, null, true);
	Zoom("ido", 150, 1000, 1000, DxlAuto, false);
	FadeDelete("絵村正*", 0, true);

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0310a00">
（还差半步！）

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



	CreateTextureEX("もん", 1001, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	CreateTextureEX("絵ＳＴＣ100", 6000, @500, InBottom, "cg/st/3d虎徹_立ち_戦闘.png");
	CreateTextureEX("絵ＳＴＣ200", 7000, Center, InBottom, "cg/st/3d村正標準_騎航_通常3a.png");
	CreateColorEX("ぼかしろ", 6500, "BLACK");
	CreateTextureEX("まえ", 10000, @0, @0, "cg/ef/ef003_汎用移動.jpg");

	SetShade("絵ＳＴＣ100", EXTRALIGHT);
	SetShade("もん", LIGHT);

	Zoom("絵ＳＴＣ200", 0, 2000, 2000, null, true);
	Move("絵ＳＴＣ200", 0, @-900, @900, Axl1, true);
	SetBlur("絵ＳＴＣ200", true, 5, 200, 100, false);

	Fade("絵ＳＴＣ100", 0, 1000, null, false);
	Fade("もん", 0, 1000, null, false);
	Fade("ぼかしろ", 0, 100, null, true);
	FadeDelete("ido", 300, true);


	Move("絵ＳＴＣ200", 200, @600, @-300, Dxl1, false);
	Fade("絵ＳＴＣ200", 200, 1000, Dxl1, false);


	Request("もん", Smoothing);
	Request("絵ＳＴＣ100", Smoothing);
	Fade("まえ", 400, 1000, null, false);
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("もん", 400, 2000, 2000, Dxl1, false);
	Move("もん", 400, @100, @0, Axl1, false);
	Zoom("絵ＳＴＣ100", 400, 1500, 1500, Dxl2, false);
	Move("絵ＳＴＣ100", 100, @-100, @0, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　随着对方的后退——由于已在意料之中所以
毫无犹豫——更上前一步。
　抓住茶茶丸无法逃掉的时机。

　小太刀，
　改变了刺击的轨道。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆刺突ＣＧ→斜め斬りＣＧ
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	Delete("上背景");

	OnSE("se戦闘_攻撃_刀振る05",1000);
	CreateTextureEXadd("絵演上", 18010, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");

	Move("絵演上", 500, @0, @-576, Dxl2, false);
	Zoom("絵演上", 500, 200, 2000, Dxl2, false);
	Fade("絵演上", 100, 1000, null, false);
	Wait(300);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateTextureSPadd("絵演", 18011, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	DrawTransition("絵演", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", true);

	Delete("絵演上");

//	DrawDelete("絵演", 150, 100, "beam_02_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　变成从斜上方挥下的斩击。
　目标是脖颈。

　先用木叶隐骗过对手，由刺击转换成斩击则是计中计。
　若不是高手，极难料到。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEXadd("とん", 10000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	OnSE("se戦闘_攻撃_剣戟弾く03",1000);
	Fade("とん", 300, 1000, null, false);


	SetFwL("cg/fw/fw茶々丸虎徹_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0320a07">
「————」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("もん", 1001, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	Fade("もん", 1000, 1000, null, false);

	CreateTextureEX("絵ＳＴＣ100", 1500, 100, InBottom, "cg/st/3d虎徹_立ち_戦闘.png");
	Move("絵ＳＴＣ100", 1200, @50, @0, Dxl2, false);
	SetBlur("絵ＳＴＣ100", true, 2, 200, 100, false);

	OnSE("se人体_動作_跳躍01",1000);
	Fade("絵ＳＴＣ100", 1000, 1000, null, false);
	FadeDelete("黒", 1000, false);
	FadeDelete("とん", 1000, false);
	DrawTransition("絵演", 300, 1000, 0, 100, null, "cg/data/beam_02_00_1.png", false);
	FadeDelete("絵演*", 1000, true);
	Move("絵ＳＴＣ100", 200, @-200, @0, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　但可怕的是……
　足利茶茶丸，正是个中高手。

　在这个年纪，要积累多少实战经验才能到达这种程度。
　对我的攻击甚至毫无动摇。恐怕只是就此平静地接招。

　防御刺击的只是一只手。
　另一只手的铁爪，防御着成为目标的脖颈。

　……完美。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0330a00">
（完美地……）

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵黒幕１", 2000, "Black");
	Fade("絵黒幕１", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　如<RUBY text="·">我</RUBY>所料。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斜め斬りアニメ

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	WaitKey(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　计中计之中，还有一计。
　盯着为防御而高举的爪子，我用力斩下小太刀。

　我并没有让茶茶丸负多余之伤的打算。
　虽然有许多不愿那么做的理由，但最重要的是，
<RUBY text="·······">和她走得太近了</RUBY>这件事……虽然那是精神污染
期间的事，但记忆无法清除。

　只要让她失去战力就够了。
　所以，瞄准了作为武器的利爪。

　我若是盯住脖子，被爪子防住的话，只会被弹开而已。
　所以，最初的攻击目标就是在那里出现的爪子。
若是能瞄准——就用蛮力砍断！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆激突音。がちーん。
//◆小ウェイト

	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se戦闘_攻撃_剣戟弾く02", 1000);
	CreateTextureEXadd("とん", 10000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	Fade("とん", 100, 1000, null, true);
	Fade("とん", 300, 0, null, false);
	WaitKey(1000);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0340a00">
「…………」

{	FwC("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0350a07">
「……啊。
　<RUBY text="··">果然</RUBY>。」

{	FwC("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0360a07">
「我就知道。
　因为哥哥，很温柔。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0370a00">
「——!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm08", 0, 1000, true);
	Zoom("もん", 0, 1300, 1300, null, true);

	CreateColorSP("絵色黒大幕", 19000, "#000000");

//あきゅん「演出：ここのシーンのＥＶです。位置は仮ですので演出に合わせて調整して下さい」
//鉄爪アップから全体表示のイメージで組んでみました。部材到着後位置あわせが必須です。inc久保田
	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev232_村正ＶＳ茶々丸１.jpg");
	CreateTextureSP("絵ＥＶ大", 4000, @150, Middle, "cg/ev/resize/ev232_村正ＶＳ茶々丸１l.jpg");

	Request("絵Ｅ*", Smoothing);

	Zoom("絵ＥＶ大", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＶ大", true, 2, 200, 100, false);

	Delete("絵黒幕１");


	FadeDelete("絵色黒大幕", 500, true);
	Wait(300);

	Move("絵ＥＶ大", 700, -512, @0, Dxl2, false);
	Zoom("絵ＥＶ大", 700, 500, 500, Dxl2, true);
	Fade("絵ＥＶ", 0, 1000, null, true);
	FadeDelete("絵ＥＶ大", 700, false);


/*
	MyLife_Count(500,720);
	MyTr_Count(500,300);
	CP_HighChange2(500,3,null,false);
	CP_SpeedChange2(500,0,null,false);
	Cockpit_AllFade2();
*/



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　没有<k>……断？

　我的小太刀，被茶茶丸的铁爪——
　
　在爪与爪之间卡住了。

　就像是黏住了一般，一动不动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0380a00">
（十手术……?!）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　被看破了。
　我的计策。

　用上计中计之中的计谋，对方却还有计！ 

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0390a07">
「<RUBY text="Tiger">雷虎</RUBY>流<RUBY text="Sword Breaker">刀剑破坏</RUBY>。
　刚刚领悟，现在命名!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆びき
//	Fade("絵ＳＴＣ100", 300, 0, null, true);
	OnSE("se特殊_鎧_ひび割れ01", 1000);
	CreateColorSPadd("絵フラ", 20000, "#FFFFFF");
	Fade("絵フラ", 100, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　茶茶丸以体重压制捕获的小太刀。
　刀身发出不正常的悲鸣。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0400a01">
《等——》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0410a00">
（不好）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　别说砍断对方了，我方的武器反倒会被砍断！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶコックより上", 18900, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	Fade("絵ＥＶコックより上", 300, 1000, null, false);

//◆小太刀、飛ぶ
	OnSE("se戦闘_攻撃_小太刀投擲", 1000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　瞬间的判断下，我的手放开刀柄。
　失去其中一方的负荷，小太刀飞向远方。

{	OnSE("se戦闘_動作_脇差落ちる", 1000);}
　虽然武器仍是被夺走，但只要还有取回的机会，就
比被折断好得多。
　
　但……这也在茶茶丸的意料之内吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	CreateTextureSP("絵ＥＶコックより上", 20000, Center, Middle, "cg/ev/ev232_村正ＶＳ茶々丸１.jpg");

	Move("絵ＳＴＣ100", 0, 355, -75, null, true);

	MyLife_Count(0,720);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,1000,null,false);

	CP_SpeedChange2(0,0,null,false);
	MyTr_Count(0,300);

	CP_HighChange2(0,3,null,false);
	CP_AziChange(0,45,null,false);
	CP_AltChange(0,0,null,false);

	Delete("絵ＥＶ大");
	Delete("絵ＥＶ");

	Cockpit_AllFade2();
	FadeDelete("絵ＥＶ*", 300, false);

	Fade("絵ＳＴＣ100", 300, 1000, null, true);
	OnSE("se人体_動作_後ずさり01",1000);

	Request("もん", Smoothing);
	Request("絵ＳＴＣ100", Smoothing);

	Move("もん", 300, @0, @-50, null, false);
	Move("絵ＳＴＣ100", 300, 56, 5, Dxl2, false);

	Zoom("もん", 300, 1600, 1600, null, false);
	Zoom("絵ＳＴＣ100", 300, 1500, 1500, Dxl2, true);

//pre分けしました。inc久保田

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
　既未失去平衡，也未喘息，茶茶丸立即矮身踏上一步。
　右手以掌击的姿势——瞄准我的心窝。

　拍下去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆打撃音。鈍い
//あきゅん「ＣＰ：ＤＭＧ演出入れました。」

	OnSE("se戦闘_攻撃_鎧_打撃02", 1000);

	CreateTextureEXadd("がひっ", 2001, @0, @0, "cg/ef/ef040_汎用衝突.jpg");
	CreatePlainEX("絵ブラー１", 2000);

	Request("がひっ", Smoothing);
	Request("絵ブラー１", Smoothing);

	SetBlur("絵ブラー１", 8, true, 400, 200);

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("もん", 100, 1250, 1250, null, false);
	Zoom("絵ブラー１", 100, 1300, 1300, Dxl1, false);
	Fade("絵ブラー１", 100, 1000, null, true);
	Fade("絵ブラー１", 100, 0, null, false);
	Fade("絵ＳＴＣ100", 100, 0, null, false);

	Shake("@CP_Frame", 500, 0, 20, 0, 0, 1000, Dxl2, false);
	MyLife_Count(300,660);

	Fade("がひっ", 0, 1000, null, true);
	Fade("がひっ", 1000, 0, null, false);

	Delete("絵ブラー１");
	Delete("絵ＳＴＣ100");

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0420a00">
「喀……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＳＴＣ100", 1500, 0, InBottom, "cg/st/3d虎徹_立ち_戦闘.png");
	Request("絵ＳＴＣ100", Smoothing);

	OnSE("se特殊_鎧_駆動音02", 1000);
	Zoom("絵ＳＴＣ100", 0, 1200, 1200, Dxl2, false);
	Move("絵ＳＴＣ100", 300, @-100, @0, Dxl2, false);
	Fade("絵ＳＴＣ100", 300, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　奏效了。
　冲击贯通铠甲，但没能贯穿到背后，留在体内，
搅得五脏六腑一阵翻腾。

　地狱一般的痛苦。
　并且腹部被打击的特征，与头部被打击不同，
不会夺去意识……意识反倒变得鲜明，更加强烈地
感受到痛苦。

　我忍耐不住，弯下身。
　
　茶茶丸的攻击还在继续。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Zoom("絵ＳＴＣ100", 300, 1500, 1500, Dxl1, false);
	Fade("絵ＳＴＣ100", 300, 1000, Dxl1, false);
	Wait(100);
	OnSE("se人体_足音_鎧歩く03",1000);
	OnSE("se特殊_鎧_駆動音01", 1000);
	SetBlur("絵ＳＴＣ100", true, 5, 200, 100, false);
	Move("絵ＳＴＣ100", 200, @-300, @200, Dxl1, false);
	Zoom("絵ＳＴＣ100", 200, 2500, 2500, Dxl1, false);
	Fade("絵ＳＴＣ100", 200, 0, null, false);
	WaitKey(1000);
	Shake("もん", 100, 0, 15, 0, 0, 500, null, false);

//preわけしました。
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
　以击出的手掌为支点运动。
　转向动弹不得的我的背后，从腋下伸进两手，在脖子
背后固定……

　肩与脖子失去一切自由。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Shake("もん", 5000, 1, 1, 0, 0, 500, null, false);
	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0430a00">
（高明）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶこっくよりうえ", 20000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_a.jpg");

	Zoom("絵ＥＶこっくよりうえ", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＶこっくよりうえ", true, 2, 300, 100, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);


	Zoom("絵ＥＶこっくよりうえ", 500, 1000, 1000, Dxl2, false);
	Fade("絵ＥＶこっくよりうえ", 500, 1000, null, true);

	Cockpit_AllFade0();
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_a.jpg");
	Delete("絵ＥＶこっくよりうえ");
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　比流水还顺畅的连续技。
　虽然知道茶茶丸熟习体术，但未曾想她竟有如此实力。

　连自己当事人的立场都忘记的我，在心中感叹。
　
　半个瞬间后就陷入呼吸困难的境地，连感叹的余力也
消失了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸フルネルソン。両足は腰に巻く
//あきゅん「演出：ここのシーンのＥＶです。位置は仮ですので演出に合わせて調整して下さい」
	CreateTextureEX("絵ＥＶ揺らし", 4000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_a.jpg");
	Fade("絵ＥＶ揺らし", 500, 1000, null, true);

	OnSE("se人体_体_骨軋む01", 1000);
	OnSE("se戦闘_攻撃_鎧_絞める01", 1000);
	OnSE("se戦闘_攻撃_鎧_絞める01", 1000);
	Shake("絵ＥＶ揺らし", 300, 0, 30, 0, 0, 500, Dxl3, true);

	Shake("絵ＥＶ揺らし", 10000000, 0, 1, 0, 0, 1000, null, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0440a00">
「喀哈……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　————<RUBY text="Nelson Hold">十字架颈锁</RUBY>?!

　若说单纯的话，就是单纯的颈关节技。
　可是，若论凶恶的话便没有在这之上的了。

　手完全动不了，别说反击，连挣脱都派不上用场。
　脖子……被压弯得，下巴几乎要埋进喉咙。

　茶茶丸的力气犹如猛兽。不愧是为近身战强化的
机体性能。
　不等窒息而死，颈骨就要被折断了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0450a07">
「给我老实点。
　不是只有哥哥一个人不想杀生。」

{	FwC("cg/fw/fw茶々丸虎徹_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0460a07">
「……不许反抗。
　真的会断哦？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0470a01">
《屈……屈辱……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　村正发出咬牙切齿的剑胄传音。
　不仅是心理感受到痛苦。装甲应该也承受了相当的负
担。

　茶茶丸若是没有下杀手的意思，以这种状态继续下去，
的确我与剑胄不会以死作结……
　但会以失败作结。

　如果不能动的话，就无法阻止锻造雷弹。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸虎徹_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0480a07">
「虽然与预定计划稍有不同。
　你就在这等着吧，哥哥。」

{	FwC("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0490a07">
「一边被关节技制服一边迎来神的降临和世界
的终结，也别有一番风味吧？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0500a01">
《将这种情况看成风味或潇洒的文化
在大和六十六州可不存在，绝对!!》

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0510a07">
「没问你。
　哥哥不是高高兴兴地闭嘴点头了吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0520a01">
《只是不能呼吸而已吧!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　我虽然很感激村正替我表达意见，但这并不能成为
事情的转机。
　虽然调侃似乎分散了注意力，茶茶丸的力气却丝毫
不见减轻。

　凭力气和技巧都无法挣脱。
　摆脱这种形式，需要在此之上的<RUBY text="·">术</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0530a00">
「————」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0540a01">
《————》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　我与村正的思考完全一致了。
　不必交谈，就能彼此理解。

　调整呼吸。
　在这种状态下虽然并不轻松……控制心肺，终于将热量
集中到一点。

　村正抓住了那份热量。
　转换。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);


	SetFwC("cg/fw/fw茶々丸虎徹_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0550a07">
「哦？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0560a00">
「……<RUBY text="Enchant">磁力镀装</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　似乎察觉到什么，茶茶丸转动身体。
　但已经迟了——摩擦声作为咏唱，令咒术完成，
发动。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆帯電
//あきゅん「演出：ここのシーンのＥＶです。位置は仮ですので演出に合わせて調整して下さい」

	CreateColorSPadd("絵フラ", 15000, "BLUE");
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE02","se特殊_電撃_放電02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(1000);

	Fade("絵フラ", 0, 1000, null, true);
	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_b.jpg");
	CreateTextureEX("絵ＥＶぶらーよう", 4000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_b.jpg");
	SetBlur("絵演上2", true, 2, 500, 60, true);

	CreateColorSPadd("絵フラ", 15000, "BLUE");
	Fade("絵ＥＶ", 100, 1000, null, false);
	Fade("絵ＥＶぶらーよう", 100, 1000, null, false);
	Zoom("絵ＥＶぶらーよう", 600, 1200, 1200, null, false);

	Wait(150);
	FadeDelete("絵フラ", 600, false);
	FadeDelete("絵ＥＶぶらーよう", 600, false);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,1000,0,1000,null,false);


	CreateTextureEXadd("ばちばち", 5000, @0, @0, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	CreateColorEXadd("絵フラ", 15000, "#00ffff");
	Shake("ばちばち", 50000, 3, 3, 0, 0, 1000, null, false);
	Fade("ばちばち", 500, 100, null, false);
	Fade("絵フラ", 10000, 500, null, false);
	WaitKey(10);
//	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　用上了本是用于防御的阴义。
　在自骑与敌骑上附加磁力——令其相斥。

　相斥力瞬发之时，十分激烈。
　即使单凭蛮力无法挣脱，但若是借助这料想不到
的助力……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_落胆.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0570a07">
「别干傻事别干傻事。
　错一步就是自爆了吧，这玩意。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆別のエネルギー発生
//◆相殺。元に戻る。

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se特殊_電撃_放電02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("うちけし", 15000, "#ff00ff");
	EffectZoomadd(16000, 1000, 100, "cg/ev/ev233_村正ＶＳ茶々丸２_a.jpg", false);


	Fade("うちけし", 0, 500, null, true);
	Wait(500);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, true);
	CreateTextureEX("もどる", 4000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_a.jpg");
	Fade("もどる", 0, 1000, null, true);
	FadeDelete("絵ＥＶ", 600, false);
	FadeDelete("絵フラ", 600, false);
	FadeDelete("うちけし", 600, false);
	FadeDelete("ばちばち", 600, false);

	Wait(500);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0580a00">
「什么……?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0590a01">
《——为什么?!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　磁力……被消除了？

　不，是被抵消了?!
　以相斥为目的的磁力，被以吸引为目的的磁力抵消
——变得无效了……？

　不，这不可能！
　为什么茶茶丸能做到这种事！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0600a01">
《……不可能。
　因为，这个能力是……》

{	FwC("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0610a07">
「啊，没错。
　是你的能力，村正。」

{	FwC("cg/fw/fw茶々丸虎徹_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0620a07">
「因为太掉价了，本来不太想用呢——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0630a01">
《为什么你会!?》

{	FwC("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0640a07">
「嘻嘻嘻。
　我与风魔这个狼人和杀人狂青江之类的
可是有所不同呢。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0650a01">
《…………哎？》

{	FwC("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0660a07">
「好了哥哥，办法已经用尽了吧。
　傻事就到此为止了哟——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　茶茶丸稍微施加了力道。
　气管被压得更窄，呼吸越发困难。

　这样一来，根本就无法使用阴义。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0670a00">
（……怎么办……?!）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　抛开无用的疑问，只思考应当思考之事。
　但，无法作答。

　毫无脱身之术。

　也听说过<RUBY text="Nelson Hold">十字架颈锁</RUBY>存在破解法。
　但我既不知详细为何，也不能现在去请教精通此道
之人。

　无法挣脱。

　没有办法——难道只能放弃了？

　我能放弃吗？

　若是不能挣脱，锻造雷弹终究会空投下来。
　然后虽然不知道神之类的东西是否会降临，
却一定会造成绝大的牺牲。

　最坏的状况，甚至过去死于银星号事件的被害者
也只是<RUBY text="··">零头</RUBY>——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0680a00">
（那么）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　为了什么。

　为了什么，我脱离了精神污染？
　为了什么，村正把我从精神污染中救出？

　无所作为。

　牺牲过无数人的我，
　却没能在守护这牺牲的意义的路上贯彻到底——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0690a00">
（……村正！）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0700a01">
《有什么办法吗？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0710a00">
（啊啊。
　卸掉左臂的装甲）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0720a01">
《……咦？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0730a00">
（部分除装。
　能办到吧？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0740a01">
《办是能办到……
　但是，那样一来的话……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0750a00">
（<RUBY text="····">就能挣脱</RUBY>。
　要点，仅此而已）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0760a01">
《…………》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0770a00">
（你只要照办就好）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0780a01">
《……明白了。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　剑胄没有继续提出异议。
　当然——村正并非不通<RUBY text="··">情理</RUBY>的家伙。

　我等待着那一瞬。
　放松力气，用力绷紧神经。

　要是变得失去意识，可不是开玩笑的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorEX("黒幕１", 19000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	Delete("上背景");

	CreateTextureEX("もんもん", 1001, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");

	Request("もんもん", Smoothing);

	Zoom("もんもん", 400, 1800, 1800, Dxl1, false);
	Fade("もんもん", 1000, 1000, null, false);

	SetFwC("cg/fw/fw茶々丸虎徹_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0790a07">
「……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0800a01">
《主君！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0810a00">
「<RUBY text="嗯">是</RUBY>——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆部分除装
//◆ごき。関節外れ
//◆イメージとして血ＣＧ？
	SetVolume("@mbgm*", 1000, 0, null);

	FadeDelete("絵ＥＶ",0,false);
	FadeDelete("黒幕１",500,true);

	WaitKey(1000);

	OnSE("se特殊_鎧_装着01", 1000);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, false);
	Fade("絵フラ", 100, 0, null, false);
	WaitKey(400);
	CreateTextureEX("かたがはずれる", 1500, @0, @0, "cg/ef/ef006_汎用血しぶき.jpg");
	OnSE("se人体_体_骨軋む03", 1000);
	Shake("もんもん", 100, 25, 25, 0, 0, 1000, null, false);
	Move("もんもん", 1000, -50, 0, Dxl3, false);
//	Rotate("もんもん", 100, @0, @0, @-30, Axl3, true);
	Fade("絵フラ", 100, 1000, null, false);
	Fade("かたがはずれる", 100, 1000, Dxl1, true);
	Fade("絵フラ", 100, 0, null, false);

	Delete("もんもん");
//	Fade("かたがはずれる", 100, 0, null, false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　村正解除了左臂的装甲。
　下一个瞬间，我的左肩发出钝响，<RUBY text="···">脱了臼</RUBY>。

　……没什么不可思议的。
　那被敌骑的铁腕压制的关节，突然失去装甲的支撑，
变为脆弱而活生生的肉体本身——
当然会立刻折断。

　痛觉的电流传开。
　几乎失去一切思考。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0820a07">
「哎?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　即便是茶茶丸也吃了一惊。
　后颈拂过哑然的呼吸。

　好机会。
　由于左臂折断，十字架颈锁放松了。要脱身就趁现在。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_攻撃_殴る01",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("絵背景100", 400, 1100, 1100, Dxl2, false);
	Fade("絵背景100", 200, 1000, null, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0691]
　用咬碎岩石的力道咬紧牙关，瞬间忘却苦痛——
　我拼尽全力甩开茶茶丸，跳离此地。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md04_048vs.nss"
