//<continuation number="240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_030.nss_MAIN
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
	#bg001_空a_01=true;
	#bg047_景明故郷町a_01=true;
	#bg023_弥源太の家_03a=true;
	#bg020_山脈坑道_01=true;
	#bg023_弥源太の家_03b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_031.nss";

}

scene md06_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_029.nss"

//◆bg001
	SoundPlay("@msong05_short", 0, 1000, true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 1500, "#000000");

	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 650, @0, @288, Dxl2, false);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300010a00">
「村正！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300020a00">
「村正——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　………………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1000);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300030a00">
「……唔!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　混蛋。
　我是为何而发狂——因为这次被夺走的是 
剑胄，是村正！

　想救村正就不应再依靠村正的力量。
　混蛋。我在慌乱什么。真是愚蠢。

　只是……为什么没有应答？
　操控者与剑胄的联系是不会被切断的。
不管距离多远，都不可能失去联系。

　很有可能……
　可能她伤势严重到无法完成应答。

　或者，<k>
　超出了可以联系的范围，<k>
　村正……已经……

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	EfRecoIn1(18000,600);
	CreateTextureSPmul("絵回想効果", 16010, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev263_村正を刺し貫く雪車町.jpg");
	SetTone("絵回想", Monochrome);
	EfRecoIn2(300);

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300040a00">
「……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　挥去心中涌起的不祥之感。
　不可能。这种事不可能发生。

　总之先追上去。
　自己跑去是不行的。也不能用剑胄。还有什么呢。

　其他的——什么……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300050a00">
「好……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　经过一番思索后，我飞奔出火车轨道。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆街路。bg047
	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100, "bg047_景明故郷町a_01.jpg");
	FadeBG(0, true);

	CreatePlainEX("絵板写", 110);

	DrawTransition("黒幕", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　面前是一条大道。
　我站在这里，环视四周。

　在这附近应该有……
　在哪里……在哪里……？

　找到了。

　公共汽车站。
　我向着车站全力奔跑。

　汽车……正向这里驶来！
　好机会。

　路线也没错。
　乘上汽车的话，能在仅次于火车的速度到邻站。

　在我到达车站的同时，汽车也停住了。
　车门打开。

　但是——无法搭乘。
　人太多。

　要上车的乘客像一堵人墙般横在车前，根本 
无法接近汽车。
　
　可恶——我在赶路啊！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_腕を掴む01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300060a00">
「失礼了！」

{	NwC("cg/fw/nw乗客Ｂ.png");}
//【ｅｔｃ／乗客女】
<voice name="ｅｔｃ／乗客女" class="その他女声" src="voice/md06/0300070e130">
「咿呀……什么!?」

{	NwC("cg/fw/nw乗客Ａ.png");}
//【ｅｔｃ／乗客男】
<voice name="ｅｔｃ／乗客男" class="その他男声" src="voice/md06/0300080e131">
「喂，别挤!!」

{	CreateSE("SE01","se人体_衝撃_転倒05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, false);
	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300090a00">
「我有急事——」

{	NwC("cg/fw/nw乗客Ｂ.png");}
//【ｅｔｃ／乗客女】
<voice name="ｅｔｃ／乗客女" class="その他女声" src="voice/md06/0300100e130">
「好好排队啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　没办法一一说明。
　我伸手推开挡道的人，推挤着向前进。

　还差一点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw乗客Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／乗客男】
<voice name="ｅｔｃ／乗客男" class="その他男声" src="voice/md06/0300110e131">
「混蛋!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どん。突き飛ばされた。
	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("絵板写",0,500,300,@0,@0,60,Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　突然间天旋地转，双手撑在地上。
　
　……被人撞开了!?

　狼狈不堪地抬起头，人们都在幸灾乐祸地嘲笑我。
　什么呀——好丢人——快看这个笨蛋。

　这些混帐……在说什么！
　不知道我有多么拼命吗？

　重要的人正命悬一线。
　我可是在争分夺秒——不知道吗！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300120a00">
「唔……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　我勉强站起身。
　向车门奔去。

　还差一步。<k>
{	OnSE("se日常_建物_扉閉める01", 1000);}
　——门，却在我的眼前关上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300130a00">
「乘务员！」

{	NwC("cg/fw/nwバスの車掌.png");}
//【ｅｔｃ／車掌】
<voice name="ｅｔｃ／車掌" class="その他男声" src="voice/md06/0300140e105">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　听到我的声音，握着方向盘的老头仅仅　
嗤之以鼻。
　无视我的焦虑，踩下油门。

{	OnSE("se乗物_バス_発車", 1000);}
　汽车发动了。
　窗的背后还有几个人，对我指指点点地窃笑着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300150a00">
「啊……唔。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　开走了。
　只能等下一班。

　还有几分钟……几十分钟吗？
　都这个时候了！

　为什么会变成这样……？
　太没天理了。

　太无情了。

　这种事，绝不原谅。
　这种事……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 600, 0, null);
	SetVolume("OnSE*", 600, 0, null);

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵背景4000", 4000, Center, Middle, "cg/bg/bg023_弥源太の家_03a.jpg");
	StL(4100, @0, @0, "cg/st/stふき_通常_私服.png");
	StR(4100, @0, @0, "cg/st/stふな_通常_私服.png");
	FadeStA(0, false);

	EfRecoIn2(300);

	SetFwC("cg/fw/fwふき_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ふき】
<voice name="ふき" class="ふき" src="voice/md06/0300160b05">
「请你照做吧。
　我不懂那些复杂的事……
但你这样身负重伤的人
不能外出走动。」

{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/md06/0300170b06">
「嗯？
　姐姐，哥哥怎么啦？」

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/md06/0300180b05">
「哥哥想回家。」

{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/md06/0300190b06">
「咦～不要嘛！
　我想让你多待一会儿……」

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/md06/0300200b05">
「对吧。
　你看，武士大人。鲋也这么说了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);
	Delete("絵背景*");
	DeleteStA(0,true);
	CreateTextureSP("絵背景4000", 4000, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	StR(4100, @-60, @0,"cg/st/stふき_通常_私服.png");
	StCR(4110, @60, @0,"cg/st/stふな_通常_私服.png");

	FadeStR(0,true);
	FadeStCR(0,true);

	EfRecoIn2(300);

	SetFwC("cg/fw/fwふき_困惑.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ふき】
<voice name="ふき" class="ふき" src="voice/md06/0300210b05">
「唔……对不起。
　但是你们二人，从昨天开始就一直守在这里
吧？　你们大概都没有吃早饭吧。」

{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/md06/0300220b06">
「做好了！
　带来了！」

{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/md06/0300230b05">
「武士大人……那个，给您添麻烦了吗？」

{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/md06/0300240b06">
「吃吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆回想。第二話ラス。
//◆姉妹惨殺
	EfRecoIn1(18000,600);
	Delete("絵背景*");
	CreateTextureSP("絵背景4000", 4000, Center, Middle, "cg/bg/bg023_弥源太の家_03b.jpg");
	DeleteStA(0,true);

	EfRecoIn2(300);

	CreateSE("SE01a","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Wait(1000);


//血しぶきに白がかかるので回想をここで切る inc櫻井

	EfRecoOut1(300);

	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵ＥＦ100", 4200, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Zoom("絵ＥＦ100", 0, 2000, 2000, null, true);

	Wait(1000);

	EfRecoOut2(600,true);

	Wait(3000);

	SetVolume("OnSE*", 650, 0, null);
	SetVolume("SE*", 650, 0, null);

	CreateColorSP("黒幕", 20000, "#000000");
	DrawTransition("黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	WaitPlay("OnSE*", null);
	WaitPlay("SE*", null);

}

..//ジャンプ指定
//次ファイル　"md06_031.nss"