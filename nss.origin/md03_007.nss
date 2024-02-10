//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_007.nss_MAIN
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
	#bg057_普陀楽城廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_008.nss";

}

scene md03_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md03_006.nss"


//◆廊下·昼

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);


	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　讨论在耗费了两个多小时后终于结束了。

　沿着长长的走廊走向下一处执勤地点。
　茶茶丸的背后仅我一人跟随。其他的幕僚各自接
到指示，已经离开了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070010a00">
「……会议上虽然是那么说了，
　其实我可不知道自己能不能代行公方职务。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070020a07">
「没事的，哥哥看起来适应性很好。
　我也会尽早回来的。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070030a00">
「你去篠川做什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　她表面说是去参观什么东西。
　不过我知道不能按字面去理解。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070040a07">
「我想对目前在狮子吼手下进行编制的六波罗
的决战兵力……
　稍微动点<RUBY text="··">手脚</RUBY>。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070050a00">
「哦。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070060a07">
「就是说——」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070070a00">
「等等。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070080a07">
「啊？」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070090a00">
「有人来了。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070100a07">
「嗯？
　…………哦。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070110a07">
「不用在意那家伙。
　是<RUBY text="··">我们</RUBY>的人。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070120a00">
「……什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆常闇斎

	StL(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStL(500, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　那个相貌奇异的男人以完美的礼节现身了。
　屈膝跪地并深深地低下头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070130b37">
「堀越中将大人。
　属下喜迎您的归来。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070140a07">
「嗯。
　又要麻烦你了。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070150b37">
「哈哈。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070160a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070170a07">
「啊，得介绍一下。
　这家伙是柳生常暗斋。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070180a07">
「听说过吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -144, "cg/bg/bg057_普陀楽城廊下_01.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, -200, -450, "cg/st/resize/st常闇斎_通常_私服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);


	Move("絵演窓上/絵演背景", 2000, @0, @100, AxlDxl, false);
	Move("絵演窓上/絵立絵", 2000, @0, @300, AxlDxl, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　怎么可能没听说过。
  这名字是大和从武之人无人不晓的。

　他的大名在执剑之人中更是耳熟能详。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070190a00">
「六波罗新阴流宗主。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070200a07">
「没错没错。
　而且是厩众的真正<RUBY text="ＢＯＳＳ">首领</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　厩众，笼统说来便是足利家的近卫队。
　六波罗幕府虽然全体都有这一倾向，但一般认为
厩众的私人军队性质更浓一些。

　据说他们从事着各种见不得人的工作。
　既是厩众的指挥官——就算在制度上的地位不高，
潜在的影响力也理应相当强大。

　既然暂时决定留在普陀乐，就不能无视他。

　想到这里正要开口，却被对方抢先一步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070210b37">
「鄙人是柳生常暗斋。
　凑斗景明大人。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070220b37">
「我真切地盼望能见您一面。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070230a00">
「……见在下？」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070240b37">
「是。
　我对您略有耳闻。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070250a07">
「因为哥哥在地方上可是名人呢～」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070260a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　哪些地方？
　总觉得——言谈之下暗流攒动，非常可疑。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070270a07">
「还得介绍别的人呢。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070280b37">
「既然如此，阁下。
　如今正好作介绍。」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070290b37">
「请将凑斗大人也带到今日的集会来。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070300a07">
「今日？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070310b37">
「是。
　属下是为传达此事而来的。」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070320b37">
「今晚，在红沙的回廊——」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070330a07">
「这么匆忙啊～
　不过的确是个好机会。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070340a07">
「哥哥，就是这样，今晩能稍微占用一点
你的时间吗？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070350a00">
「去哪儿？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070360a07">
「附近。
　一群兴趣无聊的人要集会。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070370a00">
「不去。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070380a07">
「跟公主殿下有关。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070390a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070400a07">
「有些人想让你见见。
　对方也想见你。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070410a00">
「见面是必须的吗？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070420a07">
「嗯。大概是。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070430a00">
「那就没办法了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　倘若是关系到光的必要之事，那就没有选择的余地了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070440a07">
「太好了。
　那你先去告诉他们吧，常暗。就说
我会带哥哥过去。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070450b37">
「知道了。
　那么，我就此告辞……」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0070460b37">
「看来还有人在等您。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070470a07">
「哦？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆常闇去る
//◆六波羅将校

	DeleteStL(500,true);

	WaitKey(500);

	OnSE("se人体_足音_走る02", 1000);

	StL(1000, @0, @0, "cg/st/st六波羅将校_通常_制服.png");
	FadeStL(500, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　与静静离去的柳生常暗斋错身而过，这次是一位将校
来到茶茶丸面前。
　我对此人毫无印象。

　但他的军章表明他隶属堀越公方府。
　似乎是茶茶丸的属下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 1000, 0, null);


	SetNwC("cg/fw/nw堀越軍将校.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／急使】
<voice name="ｅｔｃ／急使" class="その他男声" src="voice/md03/0070480e047">
「阁下！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070490a07">
「怎么了？
　在这么光滑的走廊跑会摔倒的。」

{	NwC("cg/fw/nw堀越軍将校.png");}
//【ｅｔｃ／急使】
<voice name="ｅｔｃ／急使" class="その他男声" src="voice/md03/0070500e047">
「有急报！
　来自堀越馆。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070510a07">
「急报？
　……内容是？」

{	NwC("cg/fw/nw堀越軍将校.png");}
//【ｅｔｃ／急使】
<voice name="ｅｔｃ／急使" class="その他男声" src="voice/md03/0070520e047">
「在这里。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　将校朝上司递出类似通信文的信件，
　茶茶丸接过打开，快速地浏览着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070530a07">
「…………」

//◆険しい表情
{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070540a07">
「……………………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070550a00">
「……？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070560a07">
「我知道了。
　你可以退下了。」

{	NwC("cg/fw/nw堀越軍将校.png");}
//【ｅｔｃ／急使】
<voice name="ｅｔｃ／急使" class="その他男声" src="voice/md03/0070570e047">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆将校去る

	DeleteStL(300,false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070580a00">
「……发生什么事了？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070590a07">
「…………」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070600a07">
「村正……逃走了……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0070610a00">
「…………」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0070620a07">
「混蛋！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆くしゃり。紙を丸める

	OnSE("se日常_物_紙を潰す01", 1000);
	WaitKey(1000);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md03_008.nss"