//<continuation number="1580">

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

scene ma05_020.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma05_020.nss","KaisouReverse",true);
	Conquest("nss/ma05_020.nss","KaisouReverseSet",true);

	CP_AllSet("村正");

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
	#bg047_景明故郷町b_01=true;
	#bg047_景明故郷町b_02=true;
	#bg047_景明故郷町a_02=true;
	#bg054_湊斗家祭殿b_02=true;
	#ev139_統を殺害_a = true;
	#ev139_統を殺害_b = true;
	#ev139_統を殺害_c = true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "ma05_021vs.nss";

}

scene ma05_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_019.nss"

	if($GameDebugSelect==1){CP_AllSet("村正");}


//◆空。青空→夕空
//◆滅びの町。死屍累々。山賊含む。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(3000,true);
	WaitKey(1000);
	CreateSE("SEL01","se自然_火_火災倒壊");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	OnBG(100,"bg047_景明故郷町b_02.jpg");
	FadeBG(3000,true);

	SetFwC("cg/fw/fw首領弟_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200010b32">
「啊……哈哈哈哈。」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200020b32">
「啊哈哈哈哈哈哈……」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200030b32">
「啊哈哈哈哈哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一之尾一磨大笑不止。
　除了笑还是笑，只能笑。

　不明所以。
　已经搞不清楚是怎么回事了。

　所以这一定是一场玩笑。
　如此愚蠢、如此滑稽之事肯定是开玩笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領弟_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200040b32">
「嘻，嘻嘻……！
　搞什么！　你这家伙搞什么！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	SoundPlay("@mbgm37",5000,1000,true);
	CreatePlainSP("絵板写",3000);

//◆銀星号。部分？　シルエット？
	CreateColorSP("絵黒", 1000, "#000000");
	CreateTextureSP("絵演立", 1100, -483, -1475, "cg/st/resize/3d銀星号_立ち_通常l.png");
	Zoom("絵演立", 0, 750, 750, null, true);
	Request("絵演立", Smoothing);

	Move("絵演立", 6000, @0, @400, DxlAuto, false);
	Fade("絵板写", 2000, 0, null, true);

	SetFwC("cg/fw/fw首領弟_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200050b32">
「你真奇怪！　太奇怪了！
　算什么啊，那种<RUBY text="··">疾速</RUBY>!!」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200060b32">
「看都看不到！
　等到回过神来已经被打了！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵板写", 600, 1000, null, true);

//◆竜騎兵（首領弟）。ボロボロ。
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,750,null,false);
	StL(4000, @-30, @30,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	Move("@StL*", 300, @30, @-30, DxlAuto, false);
	FadeStL(400,true);

	SetFwC("cg/fw/fw首領弟_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200070b32">
「而且差点被打死！
　死啊！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200080b32">
「为什么!?
　我可是武者哦!?　我可是龙骑兵哦!?」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200090b32">
「我很强哦！
　很强哦！」

//嶋：シナリオ退避【090511】
//「同じ武者にだってそう負けないよ！
//　なのに！　なのになのになにぃ！」
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200100b32">
「就算同是武者，也不会轻易落败！
　可是！　可是可是可是！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200110b32">
「为什么……
　<RUBY text="····">一秒之内</RUBY>就输得这么惨
啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵、がく。翼がもげ落ちる？
	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	CreateSE("SE02","se戦闘_破壊_金属");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-20, @10, null, true);
	CreatePlainSP("絵板写",3000);
	Fade("@StL*", 0, 0, null, true);

//◆銀星号。部分？　シルエット？
	CreateColorSP("絵黒", 1000, "#000000");
	CreateTextureSP("絵演立", 1100, -483, -1200, "cg/st/resize/3d銀星号_立ち_通常l.png");
	Zoom("絵演立", 0, 750, 750, null, true);
	Request("絵演立", Smoothing);

	Move("絵演立", 6000, @0, @400, DxlAuto, false);
	Fade("絵板写", 2000, 0, null, true);

	SetFwC("cg/fw/fw首領弟_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200120b32">
「……你算什么啊……」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200130b32">
「搞不明白。
　那群家伙为何发了疯。」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200140b32">
「你刚一出现！
　我的部下！
　还有镇子里的人们！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200150b32">
「就突然开始疯狂地你杀我打！
　根本不分敌我！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200160b32">
「每个人的脑子都坏掉了！
　他们都兴奋得不得了！　对互杀乐在其中！　
只把我排除在外！　太狡猾了，被晾在一边的我
很害怕啊！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200170b32">
「想去阻止也没一个人搭理我！
　而是用枪弹回敬我！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200180b32">
「就这样随心所欲地你杀我、
我杀你、你杀我、我杀你……
　最后一个也不剩！　都死光了！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200190b32">
「怎么回事!?
　这到底怎么回事!!」

{	FwC("cg/fw/fw首領弟_恐怖.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200200b32">
「谁来告诉我啊！
　姐姐啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号。全身
	CreateColorEXadd("絵白", 5000, "#FFFFFF");
	Move("絵演立", 2000, @0, -641, DxlAuto, false);
	WaitKey(500);
	Fade("絵白", 300, 1000, null, true);

	Delete("絵演*");
	Delete("絵黒");
	Delete("絵演*");
	WaitKey(1000);

	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常b.png");
	FadeStR(0,true);

	Fade("@StL*", 0, 1000, null, true);
	FadeDelete("絵白", 1000, true);

	SetFwC("cg/fw/fw首領弟_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200210b32">
「这家伙——
　到底是什么!?」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0200220a14">
「……哼。
　问我吗。」

//【光】
<voice name="光" class="光" src="voice/ma05/0200230a14">
「好没水准的问题。
　不由自主就要回答说我是人类……
这种无聊透顶的答案。」

//【光】
<voice name="光" class="光" src="voice/ma05/0200240a14">
「算了。
　既然你问及我的存在意义，那我就给你说明
一下。」

//【光】
<voice name="光" class="光" src="voice/ma05/0200250a14">
「我要使这世界遍布纯真之武。
　即——」

//【光】
<voice name="光" class="光" src="voice/ma05/0200260a14">
「天下布武。」

{	FwC("cg/fw/fw首領弟_泣き.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200270b32">
「……哈哈。啊哈哈。
　那是什么。」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200280b32">
「莫名其妙……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0200290a14">
「唔，是吗？」

{	FwC("cg/fw/fw首領弟_泣き.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200300b32">
「不明白……
　什么都不明白……」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200310b32">
「姐姐……
　你去哪里了……救救我啊……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0200320a14">
「慢着慢着。
　别擅自躲进自己的世界。」

//【光】
<voice name="光" class="光" src="voice/ma05/0200330a14">
「有件事要让你来做。
　做完后随你爱怎样就怎样。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200340b32">
「……姐姐……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ずごーん。威嚇の一撃
	CreateSE("SE01","se戦闘_破壊_建物02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵震", 300, Center, Middle, "cg/bg/bg047_景明故郷町b_02.jpg");
	Fade("絵震", 0, 750, null, true);
	Shake("絵震", 600, 0, 10, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw首領弟_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200350b32">
「……噫噫噫噫噫噫!?」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0200360a14">
「总之……
　现在不想死在这里的话，就必须逃跑哦。
山贼头子。」

{	FwC("cg/fw/fw首領弟_恐怖.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200370b32">
「噫……
　噫呀呀……」

{	CreateSE("SE02","se人体_動作_後ずさり01");
	MusicStart("SE02",0,1000,0,750,null,false);
	Move("@StL*", 300, @-20, @0, DxlAuto, false);}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200380b32">
「呀、呀哈、哈……
　呀哈哈哈哈哈哈……」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200390b32">
「啊哈哈哈哈哈哈！
　啊哈哈哈哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵、逃走
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,650,null,false);
	Move("@StL*", 300, @-150, @0, Axl2, false);
	DeleteStL(300,false);
	WaitKey(200);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	WaitKey(100);
	Fade("絵フラ", 600, 0, null, false);
	DrawDelete("絵フラ", 300, 1000, "slide_08_00_1", true);

	WaitKey(1000);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/ma05/0200400a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆湊斗家
//◆祭殿
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(3000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　……不知道到底痛苦地喘息了多长时间。
　回过神来，黄昏已经降临了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200410a00">
「……在这种时候。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　终于恢复了平静的我轻声呻吟。
　毫无疑问，宝贵的时间已经浪费掉了。

　必须马上行动起来。
　剑胄——那副剑胄，不行。

　果然不能碰那种东西。
　必将招致灾祸。毋庸置疑。我敢断言。

　……装甲这种剑胄的光叫人担忧。
　为什么没能阻止她。

　我所担心的还不止于此。
　不知与山贼一战结果如何。对方在数量上占绝对优
势。想必即便是对武者状态的光来说，也绝非容易应
付的对手。

　越想越焦躁不安。
　……总之，得先去看看镇子的情况。

　当务之急是确认光是否安好。

　现在也顾不上被半毁的祭殿。
　我只把养母挪到安全的地方，接着……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どーん。竜騎兵が落ちてくる
	CreateSE("SE01","se戦闘_破壊_建物02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$震時間元=RemainTime("SE01");
	$QTime=$震時間元 / 2;
	CreateTextureEX("絵震", 1100, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_02.jpg");
	Request("絵震", Disused);
	Fade("絵震", 0, 800, null, true);
	Shake("絵震", $QTime, 0, 20, 0, 0, 1000, Dxl2, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　——突然从天而降。

　九〇式龙骑兵。
　六波罗军的主力骑兵。

　但，与符合武者礼法的华丽着陆相去甚远。
　简直就像……一颗<RUBY text="·····">被踢进来的</RUBY>足球，
着陆姿势极不雅观。

　虽然似乎不是这个原因造成的，武者却也一副惨烈的
模样。
　身上的铁甲到处破碎、裂开、扭曲。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200420a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　我用僵硬的大脑逐一梳理问题，最终得出结论。

　——龙骑兵。
　——不是光。
　——那就是，山贼。袭击镇子的匪徒。

{	SoundPlay("@mbgm34",2000,1000,true);}
　——敌人。
　——是一名武者，并非我的同伴。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200430b32">
「…………」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200440a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　不知是不是神志不清，这位凄惨的武者一动不动地
在原地蹲了一会儿，然后突然抬起脸看向我。
　四目相交。

　我只知道对方是九〇式装甲，除了已了解的情况外，
一无所知。
　但对方似乎却不一样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領弟_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200450b32">
「……是你……」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200460b32">
「没错。
　是你。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200470a00">
「……？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200480b32">
「自从你来了之后一切都古怪起来。
　变得好奇怪。」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200490b32">
「是你。
　就是你！」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200500b32">
「只要没有你，就天下太平了，对不对？
　不是吗？　没错吧！」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200510b32">
「……只要没有你……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,750,null,false);
	StL(4000, @-30, @30,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	Move("@StL*", 300, @30, @-30, DxlAuto, false);
	FadeStL(400,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　武者摇摇晃晃地站了起来。
　手里拿着卷了刃的太刀。

{	OnSE("se戦闘_動作_刀構え01",1000);}
　他用刀尖指着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200520a00">
「等等——」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200530b32">
「只要没有你，就好了！
　啊哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆ずどーん。
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");
	CreateSE("SE01","se人体_衝撃_瓦礫ぶつかる01");
	CreateSE("SE02","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureEX("絵演震", 200, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_02.jpg");
	DeleteStA(0,true);
	StC(1000, @-30,@0,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	Fade("絵演震", 0, 750, null, true);
	Shake("絵演震", 700, 8, 0, 0, 0, 1000, Dxl2, false);
	Request("絵演震", Disused);
	Move("@StC*", 400, @30, @0, DxlAuto, false);
	FadeStA(400,false);
	Fade("絵斬", 600, 0, null, false);
	DrawDelete("絵斬", 200, 1000, "slide_08_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　什么都来不及做。
　只是傻傻地张着嘴，毫无意义地伸手做出阻止对方
行动的姿势。

　超越人类能力的踏步，以及超人般的斩击。
　如此威势只是轻轻擦过我的皮肤，就足以将我整个人
打飞。

　我被打倒在地，栽落在碎石子路面。
　该说是运气好吗。

　我得以幸免于难是因为龙骑兵的攻击打偏了。
　而我甚至都没时间萌生躲避的念头。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領弟_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200540b32">
「……搞什么……
　别躲啊。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　武者用乖戾的口气发着牢骚，把攻击失败的责任推给
了我。
　他晃着铠甲……找寻我。

　会被发现的。
　再次相看——这次，我明白了一件事。

　……这个武者已经丧失理智了。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領弟_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200550b32">
「都是你的错。
　去死吧。」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200560a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_鎧歩く01_L");
	MusicStart("SE01",2000,1000,0,750,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　我咽了口唾沫，喉咙干渴得厉害。
　太过干渴以至于连口水都难以下咽。

　……这个武者想杀我。
　……看来说什么他都听不进去。

　会被杀掉。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200570a00">
「唔……！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　一股异样的紧张感自下而上贯穿全身。
　脑髓如煮沸一般泛起泡沫。

　死。
　死。
　生命终结。

　无法阻止的恐怖。
　无法违逆的威胁。

　……想逃跑。
　……不想死。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領弟_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200580b32">
「去死。
　快点给我去死！」

{	FwL("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200590a00">
「呃……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　意义不明而又任性的杀意令我毛骨悚然。
　我慢慢地往后挪。逃——边为与敌人之间的距离丝毫
不见缩短而绝望，边匍匐后退。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
//◆かちゃ。
	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1250,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　——我的手。
　突然碰到了一个冰冷的东西。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正蜘蛛
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵演中央", 500, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	DrawDelete("上背景", 250, 100, "slide_01_04_1", true);
	DrawDelete("絵暗転", 250, 100, "slide_01_04_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　剑胄。
　那副自称村正的剑胄。

　——剑胄！
　对了。如果有了这个。

　如果，有了这个……

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆キーン
//◆村正内面世界
	CreateSE("SE01","se戦闘_銃器_跳弾02");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 100, 1, null);
	CreateColorSPadd("絵白", 10000, "#FFFFFF");
	CreateTextureEXsub("絵演１", 400, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	CreateColorSP("絵色399", 399, "#CC0000");

	CreateStencil("Ｓ",1000,52, 123,128,"cg/st/3d村正蜘蛛_正面.png",false);
	SetAlias("Ｓ","Ｓ");
	CreateMask("Ｓ/Ｍ", 1000, center,InBottom, "cg/st/3d村正蜘蛛_正面.png", false);
	SetAlias("Ｓ/Ｍ","Ｓ/Ｍ");
	CreateTextureSPmul("Ｓ/Ｍ/絵演", 2100, Center, InBottom, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	Fade("絵演１", 0, 750, null, true);
	DrawEffect("Ｓ/Ｍ/絵演", 3600000, "LowWave", 30, 30, null);
	WaitKey(2000);
	FadeDelete("絵白", 1000, true);
	SoundPlay("@mbgm04",3000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　
　　　　　　　　　吾名村正

　
　　　　　　吾遇鬼斩鬼

　
　　　　　　逢佛弑佛

　
　　　　　　　　　吾非善

　
　　　　　　　　　吾无义

　
　　　　　　　　　吾弃正道

　
　　　　　　　　吾正邪俱断

　
　　　　　　　　　吾乃一柄凶刀也

　
　　　　　欲求同吾契约者
　　　　　可有与吾共化凶刀之觉悟

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ギーン。不協和音
	SetVolume("@mbgm04", 100, 0, null);
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	Wait(10);
	PrintGO("上背景", 25000);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵演中央", 500, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	Delete("Ｓ");
	Delete("上背景");
	FadeDelete("絵色白", 1000, true);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200600a00">
「咕唔……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　不——
　不！　这个不行！

　不能用这个。
　看到这个恶心的世界就明白了。
　听到这个恶心的诅咒就明白了。

　这是——某种荒谬的不祥之物。
　包含着招致灾难的命运。

　虽然还不清楚到底是什么。但，我坚信不移。
　这就是被称为妖甲的东西。

　没错——妖甲。
　回忆自己的历史知识，村正之名常与其异称相伴。

　大和史上史无前例、没完没了且毫无意义、泥沼般的
大动乱——南北朝争乱。
　不知是真是伪，据说造成此般地狱之乱的是刀匠一门
锻造的剑胄。

　妖甲，势洲右卫门尉村正。
　……若这红色蜘蛛便是那传说之物。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	FadeStR(0,true);
	DrawDelete("上背景", 250, 100, "slide_01_04_0", true);
	DrawDelete("絵暗転", 250, 100, "slide_01_04_0", true);

	SetFwC("cg/fw/fw首領弟_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200610b32">
「啊哈哈……
　杀了你，姐姐肯定会回来的。」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200620b32">
「是吧？
　对吧？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200630a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　即便——
　即便。

　会命丧于此。
　这副剑胄——只有这副剑胄——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【統】
<voice name="統" class="統" src="voice/ma05/0200640b46">
「……唔……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0200650b46">
「嗯……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200660a00">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……那是。
　偏偏正巧在那家伙脚边。

　养母似乎恢复了知觉，正试图起身。
　简直就像在故意吸引那家伙——那个疯狂的龙骑兵的
注意！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領弟_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200670b32">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0200680b46">
「啊……可恶。
　怎么回事。宿醉？」

//【統】
<voice name="統" class="統" src="voice/ma05/0200690b46">
「真奇怪。我没喝酒啊……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200700a00">
「统大人!!」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0200710b46">
「嗯？　……景明？」

{	FwC("cg/fw/fw景明過去_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200720a00">
「快逃！
　快点！　逃离那里！」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0200730b46">
「诶——」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200740b32">
「碍事。
　别妨碍我。」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200750b32">
「我必须得杀了那家伙……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　被莫名其妙地当作出气筒，养母不禁哑然。
　哑然——也只能做出这种反应了。刚睁开眼就看到面
前有个龙骑兵，还高举着太刀。

　糟了。
　就算是养母……也无招架之力。

　龙骑兵正中目标。
　养母会被杀死。

　统大人会死掉。
　会就此死去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200760a00">
「……唔……」

{	FwC("cg/fw/fw景明過去_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200770a00">
「唔……啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蜘蛛村正
//◆キーン。共鳴
//◆村正内面世界
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se戦闘_銃器_跳弾02");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 100, 1, null);
	CreateColorSPadd("絵白", 10000, "#FFFFFF");
	DeleteStA(0,true);
	CreateColorSP("絵色399", 399, "#CC0000");
	CreateTextureEXsub("絵演１", 400, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	CreateTextureSP("絵演中央", 500, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	CreateStencil("Ｓ",1000,52, 123,128,"cg/st/3d村正蜘蛛_正面.png",false);
	SetAlias("Ｓ","Ｓ");
	CreateMask("Ｓ/Ｍ", 1000, center,InBottom, "cg/st/3d村正蜘蛛_正面.png", false);
	SetAlias("Ｓ/Ｍ","Ｓ/Ｍ");
	CreateTextureSPmul("Ｓ/Ｍ/絵演", 2100, Center, InBottom, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	Fade("絵演１", 0, 750, null, true);
	DrawEffect("Ｓ/Ｍ/絵演", 3600000, "LowWave", 30, 30, null);
	WaitKey(2000);
	FadeDelete("絵白", 1000, true);
	SoundPlay("@mbgm04",3000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　
　　　　　　……欲求同吾契约者

　
　　　　　可有与吾共化凶刀之觉悟

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200780a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　没有觉悟。
　那种莫名其妙的觉悟，我才没有。

　然而——
　然而，现在——

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　
　　　　　　　　　若无速散

　
　　　　　　　　若有
　　　　　　　　须誓言汝之觉悟

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　我得救养母。
　不管怎样去救。不管用什么手段去救。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想·養母の笑顔
	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev132_笑う統.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 500, null, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);
	PrintGO("上背景", 15000);
	Delete("絵回想*");
	CreateColorSPadd("絵白転", 10000, "#FFFFFF");
	CreateTextureSP("絵演中央", 500, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	Delete("Ｓ*");
	Delete("上背景");
	FadeDelete("絵白転", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　我绝不允许发生的事情，只有一件。
　——那就是，失去统大人。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//◆蜘蛛村正
	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200790a00">
「遇鬼……
　斩鬼。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　于是，我开始低吟。
　那首可怕的诗。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200800a00">
「逢佛弑佛……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　连其意都不知晓。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200810a00">
「剑胄之理……
　正在于此……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　——誓约已立。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正爆誕。
//◆ずぎゅーんどかーん。
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d村正初期_立ち_通常.png");
	FadeStC(0,true);
	Delete("絵演*");
	WaitKey(1000);
	FadeDelete("絵フラ", 1000, true);

	SetFwL("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【統】
<voice name="統" class="統" src="voice/ma05/0200820b46">
「景明……!?」

{	FwL("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200830b32">
「哎……
　啊……啊啊啊!?」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　我整个人都变了个模样。

　体外装甲覆体。
　体内异力游走。

　完全变成了一个非人类的怪物——
　太过超越常理，以致我意识有些恍惚。

　但我没有忘记应做之事。
　只有一事——只要用这力量，达成唯一之事便好。

　只要救下统大人就好！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正モニター展開
//◆敵騎ロックオン
	PrintGO("上背景", 5000);
	CreateColorSP("絵色黒", 1000, "#000000");
	FadeDelete("上背景", 1000, true);

	Wait(12);

	Cockpit_AllFade(300,720,0);

	CreateSE("SE01","se特殊_コックピット_起動音04");
	$残時間=RemainTime("SE01")-1000;

	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色白", 5000, "#FFFFFF");

	MyTr_Count(300,321);
	Fade("絵色白", $残時間, 1000, Axl2, true);

	Wait(300);

	Delete("絵色黒");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);

	StC(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	FadeStC(0,true);

	FadeDelete("絵色白", 1600, true);

	CreateSE("SE02","se特殊_コックピット_ロックオン");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@-100);
	CP_LockOnFade(300,"off",true);

	CreateSE("SE02a","se特殊_コックピット_起動音02");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CP_LockOnChange(300,true);

	WaitKey(500);

	SetFwL("cg/fw/fw首領弟_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200840b32">
「你、你……那是……
　你是那家伙的同伙吗!?」

{	FwL("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200850b32">
「那家伙的！　那家伙的！
　噫、噫噫噫——!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　龙骑兵神经错乱地胡乱喊着什么。
　但已经传不进我的耳朵了。

　有意义的事实只有一个。
　这家伙打算杀了统大人……

　他是敌人！
　应讨伐的敌人！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200860a00">
「唔啊啊啊——!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　怒吼。
　狂奔。
　拔出太刀。

　用上所有手段，只为杀敌。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【統】
<voice name="統" class="統" src="voice/ma05/0200870b46">
「不行！　景明!!
　<RUBY text="··">那样</RUBY>做的话——」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CP_LockOnDelete();
	Cockpit_AllFade0();

//◆がきーん。太刀打ち一合
//◆弾け飛ぶ竜騎兵
	CreateColorSP("絵色黒", 5000, "#000000");

	Wait(12);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_left2(5100,@300, @0,2000);
	SL_leftfade2(0);

	PrintGO("上背景", 20000);
	CreateColorSP("絵色白", 3000, "#FFFFFF");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01b","se戦闘_攻撃_刀衝突01");
	CreateSE("SE01c","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01b",0,1000,0,750,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	Wait(12);

	Delete("上背景");
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　猛地一记横砍。
　敌方反射性地竖起太刀，抵挡住这一击。

　但——到此为止。
　这家伙别说反击了，甚至连站都站不稳。

　孰优孰劣一目了然。
　我方强。

　我村正一方，压倒性地强于那龙骑兵！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200880a00">
「啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("絵黒幕１", 10000, "#000000");
	CreatePlainSP("絵演突",1000);
	SetBlur("絵演突", true, 3, 500, 100, false);
	Zoom("絵演突", 100, 1200, 1200, Dxl2, false);
	Fade("絵黒幕１", 200, 1000, Axl2, false);
	DrawTransition("絵黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	Delete("絵演突");
	CreateTextureSP("絵演出", 2000, -613, -215, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureEXadd("絵演出弐", 2100, -613, -215, "cg/ev/resize/ev504_村正突進l.jpg");
	Shake("絵演出弐", 36000000, 6, 10, 0, 0, 1000, Dxl2, false);
	Fade("絵演出弐", 0, 200, null, true);

	DrawDelete("絵黒幕１", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　追。
　对体势已崩溃的龙骑兵穷追不舍。

　毫无技巧可言。
　已忘却所有。

　任凭全力挥刀，
　任凭用力砍下。

　将危及养母生命的敌人——
　一刀两断！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領弟_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200890b32">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆不完全レールキャノン。暴走気味
//◆ずがどーん。
	CreateSE("SE01","se戦闘_陰義_磁力展開");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色黒", 5000, "#000000");
	FadeDelete("絵演出弐", 200, false);
	SetVertex("絵演出", 936, 361);
	SetBlur("絵演出", true, 3, 500, 100, false);
	Fade("絵色黒", 720, 1000, Axl3, false);
	Zoom("絵演出", 750, 8000, 8000, Axl3, true);

	WaitKey(300);

	PrintGO("上背景", 10000);
	CreateColorSP("絵色黒", 5000, "#000000");

	Wait(12);

	Delete("上背景");
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01ba","se特殊_電撃_放電01");
	CreateSE("SE01bb","se特殊_電撃_放電01");
	CreateSE("SE01bc","se特殊_電撃_放電02");
	MusicStart("SE01ba",0,1000,0,750,null,false);

	CreateTextureEXadd("絵演出弐", 1010, Center, Middle, "cg/ef/resize/ef030_汎用電磁抜刀asex01.jpg");
	SetBlur("絵演出弐", true, 3, 500, 100, false);
	CreateTextureSP("絵演出", 1000, Center, Middle, "cg/ef/resize/ef030_汎用電磁抜刀asex01.jpg");
	FadeFR2("絵演出弐",0,600,800,0,0,30,Dxl2, false);

	DrawDelete("絵色黒", 100, 1000, "slide_04_01_1", false);

	MusicStart("SE01bb",0,650,0,00,null,false);
	Wait(100);
	MusicStart("SE01bc",0,650,0,1250,null,false);

	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 200, 1000, Axl2, true);

	WaitKey(500);

	PrintGO("上背景", 10000);
	Wait(12);
	CreateSE("SE01ca","se戦闘_衝撃_衝突01");
	CreateSE("SE01cb","se戦闘_破壊_鎧01");
	CreateTextureEXadd("絵演出", 1100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵演出", 0, 1250, 1250, null, true);
	CreateTextureSP("絵演", 1000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵演出", true, 3, 300, 100, false);
	Delete("上背景");

	FadeFR2("絵演出",0,2300,1000,0,0,60,Dxl2, false);

	MusicStart("SE01ca",0,1000,0,1000,null,false);
	MusicStart("SE01cb",0,1000,0,1000,null,false);

	Zoom("絵演出", 300, 1200, 1200, null, true);
	Zoom("絵演出", 2000, 1400, 1400, null, false);

	FadeDelete("絵演出", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　……龙骑兵甚至没能发出最后的悲鸣。
　连同剑胄一起，身体被砍成两段。

　压倒性的力量。
　骇人的暴力。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//あきゅん「演出：ここからＣＰ演出だが、合えてロックオン以外を表示させない手法にしてみる」
	CreatePlainSP("絵板写", 19900);

	//Cockpit_AllFade2();

	//CP_AziChange(0,-70,null,false);

	CreateCamera("Ｃ", 512, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景", 1, Center, Middle, "cg/bg/resize/bg054_湊斗家祭殿b_02l.jpg");
	Move("Ｃ/絵背景", 0, @0, @-100, null, true);
	Request("Ｃ/絵背景", Smoothing);

	CreateTextureEX("Ｃ/絵演立絵統", 250, Center, InBottom, "cg/st/st統_通常_私服.png");
	SetVertex("Ｃ/絵演立絵統", center, bottom);
	Zoom("Ｃ/絵演立絵統", 0, 750, 750, null, true);

	Request("Ｃ/*", Smoothing);

	Delete("絵演*");
	FadeDelete("絵板写", 1000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200900a00">
「哦……
　哦哦哦哦哦哦哦——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　异样的成功感，令我如野兽般咆哮起来。
　连第一次用这双手杀人后的恶寒——都不知影踪。

　这就是剑胄吗。
　这就是武者吗。

　好棒的力量。
　太伟大了。

　若能正确使用这份力量……
　改变世界必将成为可能。

　多么惊人的——武力!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【統】
<voice name="統" class="統" src="voice/ma05/0200910b46">
「……景明……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200920a00">
「啊……
　……啊啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Move("Ｃ/絵演立絵統*", 0, @-542, @-50, DxlAuto, false);

	Move("Ｃ/絵演立絵統*", 0, @30, @0, DxlAuto, false);
	Fade("Ｃ/絵演立絵統*", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　养母的声音，不知为何，听起来像在哭泣一般。
　听到她的声音，我这才恢复一半意识，冷静下来。

{
	//CP_AziChange(10000,80,Dxl1,false);
	MoveCamera("Ｃ", 10000, -512, @0, @0, Dxl1, false);}
　对了。
　统大人是否安然无恙。

　方才一战，有没有波及她——

　此时此刻，抱着这种念头，在养母的身影映入我眼帘
的那一刹那。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正モニター
//◆統をロックオン
	WaitAction("Ｃ", null);
	CreateSE("SE02","se特殊_コックピット_ロックオン");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@-100);
	CP_LockOnFade(300,"off",true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　……什。
　什么？

　干什么。
　我要干什么？

{	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,800,null,false);}
　举起太刀……
　<RUBY text="····">看着养母</RUBY>。

　我这是要干什么!?

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆キーン
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 19000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SoundPlay("@mbgm04",0,1000,true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0200930a01">
《……主君。
　请履行誓约。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　冰冷之声并非通过耳朵，而是自头盖内侧响起。
　这就是——所谓的剑胄传音吗!?
剑胄通信用音波……

　也就是说，这是村正的声音!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200940a00">
「……誓约……？
　你说的誓约……是指什么？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0200950a01">
《我的主君。
　你已立誓。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0200960a01">
《不分善恶，
　俱断。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0200970a01">
《——你已誓言化为凶刀。》

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200980a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　这……
　是什么意思。

　究竟是什么意思……!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0200990a01">
《我村正……
　<RUBY text="·······">乃善恶俱断之物</RUBY>。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201000a01">
《主君。
　你已斩杀自认为恶方的一人。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201010a01">
《故——亦须斩自认为善方的一人。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　…………!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201020a01">
《你已斩敌方一人。
　故，须斩己方一人。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201030a01">
《你已斩一所恨之人。
　故，须斩一所爱之人。》

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201040a00">
「下……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　下得了手吗!!
　我下得了手吗!!

　太蠢了……!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201050a01">
《……此乃村正之法。
　你已誓言之铁则。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201060a01">
《主君。
　杀善方一人。
　杀己方一人。
　杀一所爱之人。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201070a01">
《遵照誓言。
　……杀之。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆統ロックオン。
	CreateSE("SE02a","se特殊_コックピット_起動音02");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CP_LockOnChange(300,true);

	SetFwR("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201080a00">
「不……不要!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se人体_足音_鎧歩く01_L");
	MusicStart("SEL01",0,1000,0,600,null,true);

	//CP_SpeedChange2(2000,8,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　止住欲向前迈进的脚步。
　停下想挥起太刀的手臂。

　……一切都是徒然。
　现在，令我神志恍惚的巨大力量，束缚着我的全身。

　扼杀了我的意志。
　我那被钢铁包覆的身体，一步一步地朝养母逼近。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明過去_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201090a00">
「停下来！
　给我停下来……」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201100a00">
「为何！
　为何非得这样做不可!?」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201110a00">
「为何让我做这种事!?
　回答我，村正!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201120a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201130a01">
《并无为何。
　因我<RUBY text="····">就是如此</RUBY>。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201140a01">
《我是村正。
　依此理念锻造之剑胄。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201150a01">
《遇鬼斩鬼。
　逢佛弑佛。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201160a01">
《我的诞生，是为昭示此理。
　故需如此。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201170a01">
《……仅此而已。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//◆統に近付く
	//CP_SpeedChange2(2000,0,null,false);
	SetVolume("SE*", 100, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　这种蠢话怎么说得通。
　这种不讲理的话怎么说得通。

　不知其意。
　却不得不亲手弑母吗！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明過去_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201180a00">
「统大人！
　请逃开……！」

{	FwL("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201190b46">
「……」

{	FwL("cg/fw/fw景明過去_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201200a00">
「快点！
　不然，我会……」

{	FwL("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201210b46">
「…………」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201220a00">
「我会……
　用这双手……将您……!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　所以——
　所以，快。

　快逃——

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, null);

	SetFwL("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【統】
<voice name="統" class="統" src="voice/ma05/0201230b46">
「……唉。
　我不能逃的。」

{	FwL("cg/fw/fw統_優しい.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201240b46">
「这是我该承担的责任，儿子。
　不能让与他人……」

{	FwL("cg/fw/fw景明過去_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201250a00">
「统大人……!?」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぐさー。
//◆やっちまいました。
	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("SE*", 100, 0, null);
	PrintGO("上背景", 20000);
	Wait(12);
	CreateColorSP("絵色血", 1000, "#CC0000");
	CreateColorSP("絵色黒", 100, "#000000");

	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_LockOnDelete();
	CP_AllDelete();
	Delete("上背景");
	Delete("Ｃ");


	Wait(10);

	FadeDelete("絵色血", 300, true);

	WaitKey(500);

	CreateSE("SE01b","se人体_血_血しぶき01");
	SL_centerdamN(@0, @0,1500);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_centerdamfadeN2(0);

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm31",0,1000,true);

	SetFwL("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201260a00">
「啊……
　啊啊……!?」

{	FwL("cg/fw/fw統_痛笑.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201270b46">
「……呵……
　果然很有效……」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201280a00">
「统大人……
　统大人!?」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201290a00">
「我……不对……！
　这……不是真的。为什么……我会……!?」

{	FwL("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201300b46">
「别自责，景明。
　我懂……」

{	FwL("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201310b46">
「……果然，与相传的一样呢。
　若杀敌方，则必杀己方……吗。」

{	FwL("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201320b46">
「若杀恶必杀善。
　若杀所憎之人则须杀所爱之人……」

{	FwL("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201330b46">
「……嗯？　也就是说，儿子，你最爱我这个
母亲了，对吧？
　什么啊……叫人怪不好意思的，真是的。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 3010, Center, InBottom, "cg/ev/resize/ev139_統を殺害_al.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
　养母不合时宜地笑着，而她的胸膛……
{	Move("絵演", 6000, @0, -210, DxlAuto, false);
	Fade("絵演", 600, 1000, null, false);
}
　已被利刃贯穿。

　被我的利刃。
　是我——刺穿了统大人!!

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演", 1200, false);

	SetFwL("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201340a00">
「啊……怎么会……
　不……我……！」

{	FwL("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201350b46">
「别哭，景明……
　我可不喜欢洒泪作别。」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201360a00">
「统大人……！」

{	FwL("cg/fw/fw統_優しい.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201370b46">
「啊……真是的。
　这孩子，直到最后也不让人省心……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　养母伸出颤抖的指尖，轻拭我的眼角。
　她的温柔让我心都碎了。

　为何……？
　为什么……会这样——!?

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【統】
<voice name="統" class="統" src="voice/ma05/0201380b46">
「错不在你。不是你杀了我。
　是我的责任……未尽到巫女的职责，是我疏
忽大意，使得村正被解放。」

//【統】
<voice name="統" class="統" src="voice/ma05/0201390b46">
「这是我自作自受。
　你无需介意……」

//【統】
<voice name="統" class="統" src="voice/ma05/0201400b46">
「你只是想救我而已……
　话说回来，如果你不那样做……我就会被刚
才那个武者杀掉了。」

{	FwL("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201410b46">
「所以，这样倒好……」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201420a00">
「……不……
　不……统大人……！」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201430a00">
「我……得保护您……
　我得救您……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
　我生存的意义正在于此。
　理应为此而耗尽生命。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201440a00">
「可是……
　可是!!」

{	FwL("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201450b46">
「你已经帮了我太多了……
　是个孝子。」

{	FwL("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201460b46">
「所以……不用管我。
　那家伙就拜托你了……」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201470a00">
「统大人!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se人体_動作_抱きつき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("絵ＥＶ", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
　我抱起养母的身体。
　紧紧抱住她那即将逝去的肉体。

　……身体已恢复自由。
　这——意味着，支配我全身的咒缚，已达成目的——

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201480a01">
《…………》

{	FwL("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201490a00">
「不、不……不行。
　请别走。」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201500a00">
「统大人……
　我——我，对您……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想·養母の笑顔
//◆一瞬、ちらっと
	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev132_笑う統.jpg");
	Fade("絵白転", 300, 200, null, true);

	WaitKey(250);

	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwL("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201510a00">
「对您……」

{	FwL("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201520b46">
「……光就拜托你了，景明。
　别忘了……我们的<RUBY text="··">约定</RUBY>。」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201530a00">
「统大人!?」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆永眠。南無。
	CreateTextureEX("絵ＥＶ２", 2900, Center, -90, "cg/ev/resize/ev139_統を殺害_bl.jpg");
	Fade("絵ＥＶ２", 1000, 1000, null, true);
	Delete("絵ＥＶ");
	Delete("絵演");

	SetVolume("@mbgm*", 3000, 0, null);

	SetFwL("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201540a00">
「……统大人。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
　…………

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201550a00">
「……统大人……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
　没有回应。
　什么都没有。

　养母再也不会回应我了。
　是我——造成的。

　是我，亲手。
　杀了养母。

　是我杀的。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201560a00">
「啊……」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201570a00">
「——」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1011]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201580a00">
「啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊——
{
//◆場面切り替え。回想脱出
//◆養母を刺す村正→青江を刺す村正
	KaisouReverse();
}
啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ばきーん。青江の世界、崩壊
//◆全てが現実へ復帰。
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	WaitAction("Ｐ回想リバース", null);
	Delete("Ｐ回想リバース");
	WaitKey(200);
	WaitPlay("mbgm*", null);
	WaitPlay("SE*", null);

}

..//ジャンプ指定
//次ファイル　"ma05_021vs.nss"



.//プロセス用======================================================

..//回想リバース
function KaisouReverse()
{
	CreateProcess("Ｐ回想リバース", 5000, 0, 0, "KaisouReverseSet");
	SetAlias("Ｐ回想リバース","Ｐ回想リバース");
	Request("Ｐ回想リバース", Start);
}

..//回想リバースセット
function KaisouReverseSet()
{

//	CreateColor("絵色白", 5000, 1024, 0, 1024, 576, #FFFFFF);
//	Fade("絵色白", 0, 0, null, true);
//	Move("絵色白", 0, @-1024, @0, null, true);
//	Request("絵色白", AddRender);
//	SetAlias("絵色白", "絵色白");
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateTextureEX("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");
//	Fade("絵ＥＶ", 0, 0, null, true);
//	CreateTexture("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");

	begin:


	Fade("絵色白", 600, 1000, null, true);
	Fade("絵ＥＶ", 0, 1000, null, true);

	Wait(500);
	FadeDelete("絵色白", 800, true);
}