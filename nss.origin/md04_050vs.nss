//<continuation number="390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_050vs.nss_MAIN
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
	#bg002_空a_02=true;
	#bg001_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_051.nss";

}

scene md04_050vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_049vs.nss"


//◆同田貫現れる

/*
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 3000, "#000000");
	OnBG(100, "bg002_空a_02.jpg");
	Request("OnBG", Smoothing);
	SoundPlay("@mbgm12", 0, 1000, true);
	FadeBG(0, false);
	Delete("上背景");

	DrawTransition("黒幕１", 100, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);

	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("絵ＳＴＣ100", 1500, Center, @-300, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵ＳＴＣ100", Smoothing);

	Zoom("絵ＳＴＣ100", 0, 100, 100, null, false);
	SetBlur("絵ＳＴＣ100", true, 2, 500, 50, false);
	Zoom("@OnBG*", 500, 1000, 1000, null, false);
	Zoom("絵ＳＴＣ100", 500, 3000, 3000, null, false);
	Fade("絵ＳＴＣ100", 250, 1000, null, true);
	FadeDelete("絵ＳＴＣ100",250,false);

*/


	PrintBG("上背景", 30000);

	SoundPlay("@mbgm12",0,1000,true);
	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE05","se戦闘_動作_空突進02");
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateSE("SE10","se戦闘_動作_空突進05");
	CreateSE("SE11","se戦闘_動作_空突進05");


	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	CreateTextureEX("絵演村正", 1010, Center, Middle, "cg/st/3d同田貫_騎突_戦闘.png");
//	CreateTextureEX("絵演バロウズ", 1020, Center, Middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵演村正*", Smoothing);
//	Request("絵演バロウズ", Smoothing);
//	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Rotate("絵演村正*", 0, @0, @0, @20, null,true);
	Zoom("絵演村正*", 0, 5, 5, null, true);
//	Zoom("絵演バロウズ", 0, 5, 5, null, true);

	SetBlur("絵演村正", true, 1, 300, 70, false);
//	SetBlur("絵演バロウズ", true, 1, 300, 70, false);

//	Move("絵演村正", 0, -500, -200, null, true);
//	Move("絵演バロウズ", 0, 77,-413, null, true);
	Move("絵演村正", 0, 177,-213, null, true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(500,@400,@0,null,false);



	CreateColorEXadd("絵色200", 18500, "WHITE");
	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("プロセス１", Start);

	Move("絵背景100", 3000, @0, @-200, Axl1, false);
	FadeDelete("上背景", 1000, true);

	SetVolume("SE10", 800, 1000, null);
//	Shake("絵演バロウズ", 2000, 0, 1, 0, 0, 1000, Axl2, false);
//	Rotate("絵演バロウズ", 1100, @0, @0, @-90, Axl2,false);
//	Zoom("絵演バロウズ", 1100, 6500, 6500, Axl3, false);
//	BezierMove("絵演バロウズ", 1100, (77,-413){80,-150}{60,-110}(-10313,-1848), Axl1, false);
//	Fade("絵演バロウズ", 300, 1000, null, false);


//	Wait(800);

	SetVolume("SE10", 1000, 1, null);
	SetFrequency("SE10", 1000, 800, null);
//	MusicStart("SE05",0,1000,0,1200,null,false);
	Shake("絵演村正", 2000, 1, 0, 0, 0, 1000, Axl2, false);
	Rotate("絵演村正", 1100, @0, @0, @-30, Axl3,false);
	Zoom("絵演村正", 1100, 5000, 5000, Axl3, false);
	BezierMove("絵演村正", 1100, (177,-213){80,10}{60,10}(-10013,-348), Axl1, false);
	Fade("絵演村正", 300, 1000, null, false);

//	SetVolume("SE11", 800, 1000, null);
//	Shake("絵背景100", 400, 50, 10, 0, 0, 1000, AxlDxl, false);
	Wait(200);

//	Fade("絵演バロウズ", 100, 0, null, false);

	Wait(600);

	SetVolume("SE11", 600, 0, null);
	SetFrequency("SE11", 1000, 800, null);
	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("絵背景100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(200);

	Fade("絵演村正", 100, 0, null, false);
	Fade("絵色200", 200, 1000, null, true);
	SetFrequency("SE10", 0, 1200, null);
	Delete("プロセス１");
	Delete("絵背景*");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");
	Delete("絵演*");


	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, true);
	DrawTransition("絵色200", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Wait(500);

	OnSE("se特殊_鎧_装着04",1000);


	CreateWindow("窓右", 5500, 0, 0, 276, 576, true);
	SetAlias("窓右","窓右");
	Fade("窓右", 0, 0, null, true);
	Move("窓右", 0, @658, @0, null, true);
	CreateTextureSP("窓右/下地", 5500, @0, 0, "cg/bg/bg002_空a_02.jpg");
	Fade("窓右", 0, 1000, null, true);
	CreateTextureSP("窓右/絵右ＳＴ", 5510, @-278, @-457, "cg/st/3d同田貫_立ち_通常.png");
	Move("窓右/絵右ＳＴ", 600, @0, @-30, DxlAuto, false);

	CreateColorEX("絵黒幕", 1000, "BLACK");
	Fade("絵黒幕", 300, 500, null, false);
	DrawTransition("窓右", 300, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	SetFwC("cg/fw/fw童心_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0010a09">
「贫僧乃六波罗古河公方，
授命大和龙军中将军衔的游佐童心。
　听闻白银之流星出现，
便不顾年事已高冒昧前来问候。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("窓左", 5500, 80, 0, 276, 576, true);
	SetAlias("窓左","窓左");
	CreateTextureEX("窓左/下地", 4500, @0, @0, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEX("窓左/絵左ＳＴ", 4510, @-300, @0, "cg/st/3d銀星号_立ち_戦闘.png");
	Fade("窓左*", 0, 1000, null, false);
	Move("窓左/絵左ＳＴ", 600, @-60, @0, Dxl3, false);
	DrawTransition("窓左", 300, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", true);


	SetFwC("cg/fw/fw光_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【光】
<voice name="光" class="光" src="voice/md04/050vs0020a14">
「原来是有名的古河中将大人！
　真是失礼，我竟一时将您错认成他人。」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0030a09">
「哦，你把贫僧错认为谁？」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0040a14">
「看起来有些年纪，飞行却很敏捷。
　还以为定是那黄忠不会错——」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0050a09">
「哈哈哈哈！
　不敢当不敢当！」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0060a09">
「没想到银星号大人如此抬举贫僧！」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0070a14">
「我不喜恭维人。
　虽说为了构建圆滑的人际关系阿谀奉承有
时是必要的，不过刚才可不是哦。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0080a09">
「抱歉抱歉。
　贫僧这花和尚不习惯被人褒奖，因而羞愧到无
地自容了。」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0090a14">
「既然如此我便不再多说了。
　那么请问古河中将大人有什么事吗？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0100a09">
「唔……
　贫僧想先问一个问题。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0110a09">
「被称为人形灾难，也确实给世间带来灾祸的
银星号大人。
　敢问您所欲为何？」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0120a14">
「这个问题的答案很简单。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0130a14">
「天下布武!!」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0140a09">
「哦……
　您是希望凭借武力当上天下之主吗？」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0150a14">
「正是。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0160a14">
「让正确的武道之法在天下传扬。
　遵照此法，与众人斗武，从而达到顶峰
是我的愿望。」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0170a09">
「正确的武道之法指的是？」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0180a14">
「杀法。
　死法。
　凶法。
　祝法。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0190a14">
「寻求对手、战斗、得胜、杀死。
　寻求对手、战斗、落败、被杀。」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0200a14">
「然后互争胜负，决出最强的一人！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0210a09">
「……嗯嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0220a09">
「不错。」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0230a09">
「完全令贫僧折服。
　哪里会有人否定这才是武道、武器、武士的
——真实正统所在呢？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0240a09">
「武道乃是为了相杀而存在，<RUBY text="··">因此</RUBY>，必须相杀。
　要准确纯粹地追求武道，除了遵循其简朴而
清晰的真理之外别无他法！」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0250a14">
「确实。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0260a09">
「如若武道正确存在，则须让世间充满纷争。
　若是想让世间和平，则应将武道全部消灭。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0270a09">
「呀，非常清晰！
　不论伪善矫饰还是谬论，什么都没有！」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0280a09">
「童心和尚我心悦诚服。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0290a14">
「那么，我们该如何？
　古河中将大人。」

//【光】
<voice name="光" class="光" src="voice/md04/050vs0300a14">
「现在此处，存在有<RUBY text="··">两种</RUBY>武道……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0310a09">
「唔。
　……如今唯有遵从于正确之法了。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0320a14">
「您这消沉的语气听起来真可笑。
　原本明明就如此打算的吧。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0330a09">
「呵呵……」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/050vs0340a14">
「来吧！
　来，堂堂正正地一决胜负！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆銀星号
	CreateColorSP("黒幕２", 20000, "#000000");
	DrawTransition("黒幕２", 300, 0, 1000, 1000, null, "cg/data/slide_01_02_0.png", true);
	FadeDelete("窓*", 0, false);
	FadeDelete("絵*", 0, false);
	CreateTextureSP("絵演空立絵", 1200, Center,-380, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵演空立絵", Smoothing);
	Zoom("絵演空立絵", 0, 600, 600, null, true);

	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, false);

	OnSE("se戦闘_動作_刀構え03",1000);

	DrawTransition("黒幕２", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("黒幕２");

	Wait(500);

	SetFwR("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0350a09">
（那么）

{	FwR("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0360a09">
（看来这位公主，超出想象）

//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0370a09">
（恶德大师童心和尚我，也终于到了还账的时候
了……）

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆同田貫
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);
	CreateTextureSP("絵演空立絵", 1200, Center, @0, "cg/st/3d同田貫_騎突_戦闘.png");
	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, false);

	Move("絵演空立絵", 10000, @0, @-200, Dxl3, false);
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);


	SetFwL("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0380a09">
「但是！」

{	FwL("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/050vs0390a09">
「欠账不还，才符合贫僧婆娑罗者之名！
　必须动手了！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆銀星号ＶＳ同田貫
	CreateColorEXadd("絵色100", 18000, "WHITE");
	OnSE("se戦闘_動作_空突進01",1000);

	Zoom("絵演空立絵", 500, 2000, 2000, Axl2, false);
	Fade("絵色100", 500, 1000, null, true);
	Delete("絵演空立絵");
	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/resize/3d銀星号_騎航_通常2ex.png");
	CreateTextureSP("絵演バロウズ", 1000, Center, Middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵演村正*", Smoothing);
	Request("絵演バロウズ", Smoothing);
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Rotate("絵演村正*", 0, @0, @0, @20, null,true);
	Zoom("絵演村正*", 0, 1500, 1500, null, true);
	Zoom("絵演バロウズ", 0, 50, 50, null, true);

	SetBlur("絵演村正", true, 1, 300, 100, false);
	SetBlur("絵演バロウズ", true, 2, 300, 70, false);

	Move("絵演バロウズ", 0, @300, @-60, null, true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	$効果ナット名１ = @絵演村正;
	$効果ナット名２ = @絵演バロウズ;
	CreateProcess("プロセス２", 150, 0, 0, "RotateLoop");
	SetAlias("プロセス２","プロセス２");

	CloudZoomSet(1000);
	CloudZoomStart(1000,100,100,2000,2000);
	CloudZoomVertex(500,@300,@0,null,false);


	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",1000,1000,0,1200,null,true);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);



	CreateColorEXadd("絵色200", 18500, "WHITE");
	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("絵色100", 500, false);
	Zoom("絵演村正*", 1000, 1000, 1000, Dxl2, false);

	Request("プロセス１", Start);
	Request("プロセス２", Start);

	Move("絵背景100", 3000, @0, @-300, Axl2, false);
	Shake("絵背景100", 3000, 5, 2, 0, 0, 800, null, false);
	Move("絵演バロウズ", 3000, -100, @0, Axl3, false);
	BezierMove("絵演村正*", 3000, (-2500,-200){-2260,-300}{-2340,-400}(-2260,-320){-2350,-300}{-2400,-600}(-2200,-300){-2220,-200}{-2320,-310}(-2000,-250), null, false);
	Zoom("絵演バロウズ", 3000, 300, 300, Axl3, false);
	Zoom("絵演村正*", 3000, 600, 600, Axl2, 2700);


	Fade("絵演村正２", 200, 0, null, false);
	Fade("絵色200", 200, 1000, null, true);
	SetVolume("SE10", 0, 500, null);
	SetFrequency("SE10", 0, 200, null);
	Delete("プロセス１");
	Delete("プロセス２");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");

	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/resize/3d銀星号_騎航_通常2ex.png");
	Move("絵演村正", 0, -2000,-250, null, true);
	Zoom("絵演村正", 0, 600, 600, null, true);


	Rotate("$効果ナット名１", 0, @0, @0, 5, AxlDxl,false);
	Rotate("$効果ナット名２", 00, @0, @0, 0, AxlDxl,false);
	Fade("絵背景勢い", 300, 1000, null, false);
	Fade("絵色200", 300, 300, null, false);
	Move("絵背景100", 10000, @0, @-100, Dxl2, false);
	Rotate("$効果ナット名１", 8000, @0, @0, 10, null,false);
	Rotate("$効果ナット名２", 8000, @0, @0, -10, null,false);
	Zoom("絵背景勢い", 10000, 2000, 2000, Dxl2, false);
	Move("絵演バロウズ", 10000, @-30, @0, Dxl2, false);
	Zoom("絵演バロウズ", 10000, 350, 350, Dxl2, false);
	Move("絵演村正", 10000, @30, @0, Dxl2, false);
	Zoom("絵演村正", 10000, 550, 550, Dxl2, false);

	Wait(500);

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_051.nss"