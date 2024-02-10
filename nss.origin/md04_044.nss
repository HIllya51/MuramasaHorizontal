//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_044.nss_MAIN
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
	#bg105_城門付近内側_02=true;
	#ev002_銀星号事件イメージ２=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_045.nss";

}

scene md04_044.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_043.nss"


//◆夕空。ここから夕時刻
//◆城内＋破滅の戦場ＣＧ。ＳＥも

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg002_空a_02.jpg");
	FadeBG(0, true);

	CreateSE("SE01","se背景_ガヤ_戦場の風景02_L");
	MusicStart("SE01",3000,1000,0,1000,null,true);


	SoundPlay("@mbgm19", 0, 1000, true);

//	CreateColorSP("絵暗転", 10000, "#000000");


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(1000);

	CreateTextureEX("絵背景1000", 1000, @-100, @0, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_02l.jpg");
	CreateTextureEX("絵背景100", 100, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);
	CreateTextureEX("絵背景200", 110, @0, @0, "cg/ev/ev002_銀星号事件イメージ２.jpg");


	Move("絵背景1000", 7000, @-250, @0, null, false);
	Fade("絵背景1000", 1500, 1000, null, true);
	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	Wait(3000);
	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("絵背景1000", 1500, true);


	SetVolume("SE01", 3000, 300, null);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　是地狱？ 
　是炼狱？ 
　又或者只不过是人间的缩影？ 

　不同的人会用不同的称呼吧。
　但这情景的本质十分简单纯粹，无论贴在那上面的
<RUBY text="名字">标签</RUBY>是什么，也不会改变。

{	Fade("絵背景200", 1000, 500, null, false);}
　人们互相争斗。
　人们自相残杀。

　人们杀戮。
　人们死去。

　生命的结束。
　悲惨的结局。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440010a07">
「<RUBY text="ＯＬＤ　ＷＯＲＬＤ">旧时代啊</RUBY>！
　<RUBY text="ＧＯＬＤ　ＥＮＤ">黄金的结局啊</RUBY>！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440020a07">
「<RUBY text="ＳＡＤ">悲叹吧</RUBY>！
<RUBY text="ＲＥＤ ＢＬＯＯＤ ＡＮＤ ＤＥＡＤ ＧＲＯＵＮＤ">　鲜红的血液与死亡的沃土</RUBY>！」　　

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440030a07">
「<RUBY text="ＧＬＡＤ">欢乐吧</RUBY>！
　<RUBY text="ＤＡＤ，ＣＨＩＬＤ，ＧＯＤ">父亲，孩子，神啊</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景200",300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　在毁灭之中，庆贺毁灭。
　预感着、期望着更进一步的毁灭，茶茶丸咏唱着。

　如同未开化之地中虔诚的蛮族巫师祭祀破坏之神一般。
　如同大都市的教会中年老的主教带着绝望和憎恶向
唯一的主神献上祝词一般。

　足利茶茶丸，肯定了这悲惨的结局。
　她发出豪言，自己的灵魂期待并且能够接受这无数
的死亡。


　宛如红莲一般。
　鲜红地摇曳着燃烧开来的，<RUBY text="Ｄｕｓｋ Ｆｉｒｅ">夕阳</RUBY>。

　——若恶魔真的存在。
　它现在大概就站在我面前吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @0,@0,"cg/st/st茶々丸_通常_制服b.png");
	FadeStC(500,true);


	SetFwR("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440040a00">
「会结束吗？」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440050a07">
「会结束的。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　恶魔微笑着说道。
　淡淡地。温柔地。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440060a07">
「一切。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440070a07">
「陈旧之物，不完整之物全都会毁灭。」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440080a07">
「接下来是神的时代。」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440090a07">
「完美的世界。」

{	FwR("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440100a07">
「……寂静的世界哦。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我和茶茶丸等待着那终结。

　白银的流星群席卷天空，正在歼灭其他的星星——
幕府和进驻军的武者。
　凄惨至极的争斗剧，若是在地上看来，则是世间难
得的美丽景色，是星星于黄昏之中上演的舞会。

　而在其中鹤立鸡群、放出美丽光辉的是，最为迅猛
的一颗星。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440110a07">
「<RUBY text="Ｌｉｍｉｔ Ｏｆ Ｐｏｗｅｒ">世界最强</RUBY>……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440120a07">
「另一个<RUBY text="Power">最强</RUBY>也快来了。」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440130a00">
「然后——」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440140a07">
「打破将神与地面分隔开的障壁……
　一一五公里的地壳。」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440150a07">
「神，会降临。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440160a00">
「…………」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440170a07">
「……怎么了，哥哥？」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440180a00">
「没事。」

{	FwR("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440190a00">
「我们凭自己的喜好唤来叫做神的家伙。
　但是，那个神会抱着什么想法
来到地面上呢……」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0440200a00">
「我在想这件事。」

{	FwR("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440210a07">
「……谁知道呢。
　不清楚啊。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440220a07">
「会想那个所谓的约定吧？」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440230a07">
「说不定它会为全人类赎罪呢。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ボックス消してウェイト

	WaitKey(1500);

	SetVolume("@mbgm*", 0, 0, null);
	SetVolume("@SE*", 0, 0, null);


	SetFwR("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0440240a01">
「既然如此，
　我可不希望那家伙出现!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆糸
//◆茶々丸、吹き飛ぶ

	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");

	DeleteStA(0,true);
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

	FadeDelete("絵背景20",200,true);

	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);
	CreateSE("SE01","se人体_動作_物音立てる02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("絵板写");

	SetFwR("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440250a07">
「哎呀?!」

{	FwR("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440260a00">
「……!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　那是————钢丝。

　会用这种东西的人……
　据我所知，只有一个。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//振り返る？ inc櫻井
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", true);

}

..//ジャンプ指定
//次ファイル　"md04_045.nss"
