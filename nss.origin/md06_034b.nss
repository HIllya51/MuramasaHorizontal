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

scene md06_034b.nss_MAIN
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
	#bg003_荒れ野_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_035.nss";

}

scene md06_034b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_034.nss"

//●選んだ道を進む
	PrintBG("上背景", 30000);

	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);

	CreateSE("SE風", "se自然_風_荒野_L");
	MusicStart("SE風", 2000, 800, 0, 800, null,true);

	Delete("上背景");

//BGMなしはわざとです inc櫻井

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　全身异常沉重。
　手脚如同灌了铅，头顶也似被石头压着一般。

　而现在，强烈的冲动胜过身体的沉重。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0010a00">
「想起一件事。」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0020a12">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0030a00">
「你说过吧。
　带着村正躲到哪里去就好了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0040a00">
「是啊，我也曾有这种打算。
　只是还没履行。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0050a00">
「因为杀人的同时也想要救人。」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0060a12">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　杀人，在遍野尸横上构筑和平。
　这是我所选的道路。

　而我，还走在半途。

　因两年前的事件所引发的灾难还残留于世。
　无数人死于无数的对立与纷争之中。

　<RUBY text="·">还</RUBY>，<RUBY text="····">尚未结束</RUBY>。

　我的使命——<k>不对。<k>
　我的<RUBY text="··">目的</RUBY>，还尚未达成。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0070a12">
「然后呢……？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0080a00">
「继续。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0090a00">
「平息这个世界的所有纷争。」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0100a12">
「……你脑子清醒吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0110a00">
「也许不是吧。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0120a12">
「那你要怎么做？
　四处送花，并游说他们不要打仗吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0130a00">
「正好相反。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我这种人做那些事毫无意义。
　无法洗净一身血腥的杀人犯早已失信于人。

　那种事——
　一定还有别处的人会去做。

　会有人，能献出无瑕的祈祷。

　我自有我的打算。
　更为卑劣的方法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0140a12">
「那么是？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0150a00">
「我只知道。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0160a00">
「<RUBY text="··············">要以最低限度的杀戮来扑灭战火</RUBY>。」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0170a12">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0180a00">
「可笑么？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0190a12">
「……不。
　没什么可笑的。」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0200a12">
「话虽如此。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0210a00">
「……」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0220a12">
「难不成你又要……
　<RUBY text="····">勉为其难</RUBY>又<RUBY text="·····">哭哭啼啼地</RUBY>做这种事？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　雪车町扭头向我投来视线。
　凝视我的目光冷漠淡然。

　……勉为其难？
　
　是说我勉强去做不愿做的事？

　他到底想说什么啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0230a00">
「雪车町。
　你误会了。」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0240a12">
「……啊？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0250a00">
「我<RUBY text="···">从最初</RUBY>就甘之若饴。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0260a00">
「不愿意的话，就不会去做。
　只做想做的事。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0270a00">
「……这不是当然的吗？
　谁会去做真心不想做的事？」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0280a12">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　的确。
　那是当然的。

　只是——
　即便意识到那种理所当然并且接受了它，仍然
花费了很长时间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0290a00">
「今后也是。
　因为我想要做，所以才去做。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0300a00">
「想杀则杀。」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0310a12">
「……既然如此。
　你那个时候为什么要哭？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0320a00">
「我没有哭。
　只是，或许看上去像在哭……」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0330a12">
「……」

{
//あきゅん「演出：あえて悲哀を使用」
	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0340a00">
「那一定是在笑哦。
　笑得连眼泪都流出来了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　雪车町似乎沉默了片刻。

　不久后——慢慢地，
　阴沉地。

　咦嘻，嘻嘻嘻嘻……
　发出如同蟾鸣般的笑声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0350a12">
「……嘿……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0360a00">
「…………」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0370a12">
「你所做的是恶鬼的行径啊。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0380a00">
「我知道。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0390a12">
「准备把它贯彻始终吗？
　你小子还真不懂人情世故。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0400a00">
「没错。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0410a00">
「因为我……相信自己的邪恶。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我为达目的，已经夺去无数生命。
　就因这不可辩驳的事实而坚信。

　邪恶。
　积压在灵魂深处的——黑暗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0420a12">
「哼……这样啊。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0430a12">
「那，随你吧。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0440a00">
「……」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0450a12">
「和这家伙一起。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0460a00">
「这家伙？」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0470a12">
「还你。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　雪车町慵懒地站起身，向最初坐着的那块岩石走近。
　自背阴处取出什么东西。

　是个箱子。
　
　这是……通信隔离装置？

{	CreateSE("SE01","se人体_動作_箱を開ける01");
	MusicStart("SE01",0,1000,0,800,null,false);}
　取下锁扣，打开箱子。
　里面是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0480a00">
「……村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/034b0490a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　赤红的伙伴躺于其中。
　看一眼便知她还健在。

　……原来如此。
　封闭在通信隔离装置里的话，就算呼唤
也得不到应答。

　于是，那个流氓利用这个装置伪装成杀死
村正的意图，恐怕是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0500a00">
「雪车町。」

{	FadeStR(300,false);
	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0510a12">
「怎么？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0520a00">
「要走了吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我冲着步履蹒跚的雪车町远去的背影喊道。　
　雪车町一藏回头，吐出一口唾沫。

　露出神憎鬼厌般的笑容，说道——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0530a12">
「今天，就放过你吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 5100, Center, InBottom, "cg/bg/resize/bg002_空a_02.jpg");
	Move("絵背景", 10000, @0, 0, DxlAuto, false);
	Fade("絵背景", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　黄昏。
　他身后的倒影渐渐被拉长。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆シーン切り

	ClearWaitAll(1500, 2000);

}

..//ジャンプ指定
//次ファイル　"md06_035.nss"