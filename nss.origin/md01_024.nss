//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_024.nss_MAIN
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
	#bg032_八幡宮奥舞殿内a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_025.nss";

}

scene md01_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_023.nss"

//◆八幡宮、舞殿？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240010a11">
「护氏离开了普陀乐。
　很快就会到这里。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240020a00">
「明白。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240030a11">
「准备好了吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240040a00">
「替换真正神官的准备已经做好了。
　实行起来两分钟都不用。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240050a11">
「是吗。
　……果然还是以下宫为目标吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240060a00">
「是。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240070a11">
「大将领的人已经潜入进去之类的事，绝对没
有可能发生吗……只是这一点还有悬念啊。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240080a00">
「这一点已经再三确认过了。
　现在，村正在进行最后的确认——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正蜘蛛
//◆蝦夷体へ変身
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @0, @180,"cg/st/3d村正蜘蛛_正面.png");
	Move("@StL*", 300, @0, @-30, DxlAuto, false);
	FadeStL(300,true);

	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	MusicStart("SE01b",0,1000,0,700,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	WaitKey(500);

	DeleteStL(0,true);
	FadeDelete("絵フラ", 1000, true);
	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240090a01">
「不要紧的，主君。
　下宫没有人。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240100a01">
「那里怎么看都是不适宜隐藏的地方，所以应
该没问题。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240110a11">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240120a00">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240130a11">
「景明。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240140a00">
「是。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240150a11">
「怎么回事。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240160a00">
「怎么回事呢。」

{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240170a11">
「别说得像是事不关己……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240180a00">
「我自己也特别困惑。
　请原谅。」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240190a11">
「……是吗。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240200a01">
「什么啊？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240210a00">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240220a11">
「…………」

{	SetComic(@-30,@0,5);
	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240230a01">
「……？」

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ちょっと演出入れて村正全身？
	SetVolume("@mbgm*", 1000, 1, null);
	CreateColorEX("絵色黒弐", 6000, "#000000");
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　————为什么，会这样。

{	SoundPlay("@mbgm22",0,1000,true);
	CreateTextureEX("絵左立絵", 5100, -1170, -460, "cg/st/resize/3d村正標準_立ち_抜刀.png");
	Zoom("絵左立絵", 0, 750, 750, null, true);
	Request("絵左立絵", Smoothing);
	Move("絵左立絵", 2000, @0, @-400, DxlAuto, false);
	Fade("絵左立絵", 200, 1000, null, false);}
　本应该是剑胄。

{	FadeDelete("絵左立絵", 1000, false);
	CreateTextureEX("絵右立絵", 5100, -180, -1000, "cg/st/resize/3d村正蜘蛛_俯瞰l.png");
	Zoom("絵右立絵", 0, 750, 750, null, true);
	Request("絵右立絵", Smoothing);
	Move("絵右立絵", 2000, @0, @400, DxlAuto, false);
	Fade("絵右立絵", 200, 1000, null, false);}
　本应该是蜘蛛。

{	Fade("絵色黒弐", 1000, 1000, null, false);}
　没道理某一天突然变成妙龄女性。

　又不是仙鹤报恩。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正演出
	WaitAction("絵色黒弐", null);
	Delete("絵右立絵");
	Delete("絵左立絵");
	Wait(1);
	Delete("絵色黒弐");

	CreateTextureEX("絵立絵", 5100, Center, -1100, "cg/st/resize/st村正_通常_私服llll.png");
	Move("絵立絵", 0, @0, @-200, null, true);
	Move("絵立絵", 9000, @0, -200, DxlAuto, false);
	Fade("絵立絵", 300, 1000, null, true);

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240240a00">
（让我怎么办）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我到底该怎么办。
　她这个样子，我虽然已经见过几次了，但事到如今
还是不明白。

　我太不明白了。

　我甚至不清楚自己到底在烦恼什么。
　总之以我的头脑无法消化这种现状。

　至少如果村正还保持着钢铁的样子，
我还有办法接受……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	WaitAction("絵立絵", null);

	WaitKey(1000);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240250a00">
「……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240260a01">
「怎么了？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぷにぷに
	CreateSE("SE01","se擬音_コミカル_ぷに");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 3, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240270a01">
「呀！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240280a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆ぷにぷにぷにぷに
	CreateSE("SE01","se擬音_コミカル_ぷにぷに");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw村正_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240290a01">
「啊嗯，住手，不行呀！
　好痒啊。恶作剧可不行。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240300a00">
「……好软……」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240310a01">
「不要说这种羞人的话。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆がく。
	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240320a01">
「为什么你要四肢着地啊。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240330a11">
「别动摇，景明。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240340a00">
「我做不到。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我想要挖洞。
　然后钻到里面，抱着自己的膝盖坐着。

　就是这样的心情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm22", 2000, 0, null);
	SetVolume("@mbgm30", 3000, 1000, null);
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240350a11">
「行列该进入若宫大路了。
　再不准备就赶不上了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240360a00">
「是……
　署长呢？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240370a11">
「我在远些的地方看着。
　必须以防万一。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240380a00">
「是说？」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240390a11">
「……景明。
　要不要斩杀，这判断交给你。不过——」

{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240400a11">
「只有半途而废的事千万不要做。
　你明白我的意思吧？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240410a00">
「明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　对于亲王和署长来说，最不希望看到的情况，并不是
我决定不杀护氏。
　而是我一旦决定要杀，前去袭击，但半途中又迷茫，
最后让他逃掉。

　这才是最恶劣的状况。
　如果成功暗杀大将领，能让幕府产生很大的动摇。这
样即使认为亲王是幕后黑手，他也还是能够生存下去。

　如果暗杀之后护氏平安无事，那么亲王的灵魂必然前
往幽世。
　……在那最恶劣的情况来临之时，署长想要立刻通知
亲王，让他逃亡吧。

　虽然成功的可能性很小，但比起不做还是要好很多。

　当然，我也不能因为这种准备而放心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240420a00">
「……如果决定要斩杀……
　那就一定。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240430a11">
「拜托了。
　那么，我去了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240440a00">
「警卫体制已经完成。
　小心些。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240450a11">
「你也是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆署長去る
	DeleteStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240460a00">
「这边也开始吧。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240470a01">
「嗯。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240480a00">
「……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240490a01">
「主君……不要紧。
　你就按照你的意思去做吧。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240500a01">
「我一定会成为你探寻的剑。
　成为盾……守护你。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145a]
//【景明】
　
<voice name="景明" class="景明" src="voice/md01/0240510a00">
　　　　　　　　　　　　ｏｒｚ

</PRE>
	SetTextEXH();
	Move("$SYSTEM_present_text", 0, 259, 134, null, true);
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145b]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240520a01">
「我说啊，你为什么会这样受挫啊！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240530a00">
「不……没什么……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_025.nss"