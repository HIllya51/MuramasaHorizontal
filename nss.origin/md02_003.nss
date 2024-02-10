//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_003.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_004.nss";

}

scene md02_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_002.nss"

//◆朝食。
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm27", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

//■とりあえず朝食っぽさを inc櫻井
	CreateSE("SE01","se日常_食器_お茶準備_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　伊豆国堀越御所。

　在面向庭院的一间房内，正对着摆满早饭的桌子。

　虽有听说过伊豆半岛受山陆和大海的恩惠，
但眼看这么多品种，才确认这是毫无疑问的事实。
　亲和可人的天然膳食，五颜六色确实漂亮。

　肚子很空，而且并不存在被喂毒的危险——
在暴露过自己的睡颜之后如此戒备也显得
荒谬——筷子犹豫着该落向何处。
　碟子里丰富的食物让人眼花缭乱。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030010a07">
「所以啊，我才想说。
　最近那些白人突然吵着说不要捕鲸不要捕鲸，
其实让鲸鱼数量剧减的不就是你们这帮人吗。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030020a07">
「大和捕鲸才没有破坏生态。
　没有大量捕获的船只，也没有发达的技术，
加上捕获一头可供村子有效利用半年。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030030a07">
「本来就在狭小的岛国里，需求也不多。
　那些有需求的——是在世界各大海洋里
怎么捕获也不满足的。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030040a07">
「对用做点灯的鲸油有着无限需求的，
是你们这些人吧！
　独脚船长那帮人的乱捕才
让鲸鱼数目剧减啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばんばん
	OnSE("se人体_動作_叩く01", 1000);

	Wait(150);
	OnSE("se人体_動作_叩く01", 1000);

	Wait(150);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030050a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　难以同意或反驳的话题。

　前朝大和也有因以鲸油取光用于点灯与农药而
捕获相当数量的鲸鱼。如今进入新时代，也有
参与进出南冰洋乱捕的情况。
　不过乱捕史确实没有欧洲长……

　总之，筷子先伸向鲸鱼的海味料理。
　十分美味。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030060a07">
「那什么啊。
　一旦不需要以此取光，就开始反省生态问题。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030070a07">
「因为有灭绝的危机所以保护？
　如果那时承认自己的责任并反省态度的话，
也能听得下去。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030080a07">
「那些家伙一丁点儿也没有在反省！
　将自己过去的事束之高阁，现在来指责
我们捕鲸的问题。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030090a07">
「别·看·不·起·人!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばんばんばんばん

	OnSE("se人体_動作_叩く01", 1000);
	Wait(150);
	OnSE("se人体_動作_叩く01", 1000);
	Wait(150);
	OnSE("se人体_動作_叩く01", 1000);
	Wait(150);
	OnSE("se人体_動作_叩く01", 1000);
	Wait(500);


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

//【景明】
<voice name="景明" class="景明" src="voice/md02/0030100a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　但那不过是感性的部分。
　重要的是解救即将灭绝的鲸鱼。这是非实行不可的……

　内心一边如此低语，一边朝鲸料理伸出筷子。
　很美味。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030110a07">
「最近的人，说鲸是十分聪明的动物，
所以杀鲸是野蛮的行为这样奇怪的话。
　疯子吗？那去分析鲸的智力，
跟它们交流看看啊。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030120a07">
「跟它们说我是你们的伙伴啊。
　要打赌也行，我想鲸鱼君也绝对忍不住
要吐槽的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030130a00">
「……确实是奇怪的观点。
　智力高就说不要杀。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030140a07">
「牛和猪很笨，所以可以吃，
而鲸很聪明就不能这样。
　这什么话嘛——」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030150a00">
「大概是文化上的差异造成思想上的不同吧。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030160a07">
「归根究底，思想不同是由于人种差别。
　那些<RUBY text="家伙">白人</RUBY>认为
优秀的生物比其他动物更上等。这种想法，
是他们用以支撑其侵略历史的熟悉的正义感。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030170a00">
「……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　一边伸筷去夹鲸鱼炸物，一边微微点头。
　虽然觉得不单是如此，但也是事实的一部分。
炸物很美味。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030180a07">
「哼，都是群笨蛋。
　我可不会差别对待。牛、猪、鲸鱼都吃。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030190a07">
「海豚也吃。
　想起来，一部分大和人也让人来火。
明明赞成捕鲸，
但当听到说吃海豚就惊奇地『咦——』。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030200a07">
「吃海豚有什么不对啊喂！
　话说回来，说鲸鱼可以而海豚不行的话，
那就跟捕鲸反对派一个样嘛！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030210a07">
「在我看来，那些人是反对派遣送来的特工。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030220a00">
「……从感情上说，难以接受吃海豚
还是能够理解。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030230a07">
「反对捕鲸也是感情问题。 
　说到底，就是排斥和自己不同的文化。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030240a07">
「因为不喜欢就有意见？
　先不说在自己的地方去灌输思想，
跑到别人的地方肆无忌惮是
大人该有的态度吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030250a00">
「尊重其他文化。
　这点完全同意。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030260a07">
「对吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　嗯嗯点着头的堀越公方。

　……那么。作为开场白的杂谈到此也差不多了。

　我将筷子放好。
　正了正坐姿。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆ＢＧＭ：ちょっと緊迫っぽいの

	SoundPlay("@mbgm16", 0, 1000, true);


	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030270a07">
「哎呀，够了吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030280a00">
「是的。非常满足了。
　……那进入正题吧，可以吗？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030290a07">
「？　什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我正视着在装糊涂的足利茶茶丸。
　然后吐气——吸气。

　定了心神再问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030300a00">
「银星号，现在——在这里的吧？」

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030310a07">
「现在？　不在哟。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　四秒钟时间结束了正题。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md02_004.nss"