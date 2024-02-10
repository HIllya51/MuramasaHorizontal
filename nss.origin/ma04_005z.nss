//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005z.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma04_006.nss";

}

scene ma04_005z.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_005a.nss"
//前ファイル　"ma04_005b.nss"
//前ファイル　"ma04_005c.nss"

//◆合流
	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("上背景", 30000);
	CreateTextureSP("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);
	FadeDelete("上背景",0, true);

	SetFwR("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0010a02">
「总……总之！
　回到正题。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0020a00">
「嗯。」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0030a02">
「我们的目的地不是江之岛吗？
　那就快点动身吧！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……不错。
　此处并非江之岛。

　而是江之岛的对岸，片濑。
　留在这里也无济于事。一条想要早日渡海前往
岛上的心情我也能够理解。

　然而。
　即便如此还要留下，其中另有原因。

　我从中挑选了最为明显的迹象细细道来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0040a00">
「过不去。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0050a02">
「……咦？
　为什么？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0060a00">
「来之前我已经调查过。
　现在，江之岛全域已被定为封锁区域。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0070a00">
「当然，下令的正是幕府。
　理由不明。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0080a03">
「如果真如情报所说在进行兵器研究的话，
会这么做也在情理之中。
　虽然不能一概而言……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0090a04">
「事实是，更加扑朔迷离了。
　万不可粗心大意。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0100a02">
「那……该怎么办？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0110a00">
「既然不能公然渡海，就只能私下过去。
就是这么简单。
　寻找渡海方法，这就是留在这里的第
二个理由。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0120a00">
「第三是收集情报。
　原本，目的地近在眼前，我也不喜欢采用四处
打探这种迂回的方式。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0130a04">
「因为我们此行的目的地已经很明确了呢。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0140a00">
「正是。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0150a02">
「……的确，是这样。
　前往江之岛之前，至少得先把<RUBY text="····">当前局势</RUBY>
了解个大概……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0160a03">
「毫不知情地前往江之岛实在让人心中没底。
　…………而且是夏天。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0170a00">
「夏天。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0180a04">
「是夏天。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0190a02">
「是夏天呢……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　正值夏季。
　农历的十一月份。新年即将来临。

　本不该是夏天。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0200a00">
「气象异常也该有个限度。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0210a04">
「而且还只有江之岛周边…………」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0220a02">
「为什么如此明显的怪异事件却没有新闻
报道？　我不记得有在报纸上看到过……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0230a03">
「如果是处于六波罗的<RUBY text="··">某些</RUBY>原因，向
新闻机关发布缄口令也是易如反掌吧。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0240a04">
「事情更加迷雾重重了呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　的确。虽然在八幡宫所听到情报之时
——还有之后边向一条进行说明边反复推敲情报
之时，对于六波罗在进行危险研究一事，
自己一直半信半疑，甚至可以说更倾向于持怀疑态度。

　然而，现在却恰恰相反。
　恐怕——幕府正在岛上进行着什么活动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0250a00">
「那么，行动开始。
　分头收集情报。重点在于潜入岛内的方法，
以及这股异常的热气流。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0260a00">
「有没有什么疑问或建议？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0270a02">
「没有！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　说着，一条已经开始了行动。
　环视四周，她盯上的不是客人众多，熙攘喧闹
的海之家，而是旁边在小船边上围坐一团，表情阴沉的
渔民。迅速且正确的行动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0280a03">
「有件事我想一问。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0290a00">
「请讲。上尉。」

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0300a03">
「难道不该在我和一条小姐中间做个选择，
趁着一起行动的机会加深感情吗。
　哎呀，不过一条小姐已经不在了……」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0310a02">
「你冷不丁说些什么呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　回来了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm25",0,1000,true);

	SetFwC("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0320a04">
「决断的时刻到了，凑斗大人！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0330a00">
「我拒绝。
　只会影响调查行动的效率而已。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0340a03">
「在这种时候牵强附会进行诡辩好正当化
自己的行为，明明这才是男人的本事！」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0350a02">
「你是得了脑癌吧！」

{	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0360a04">
「绫弥小姐，您说得太过了！」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0370a03">
「就是。好过分。」

{	FwC("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0380a04">
「虽然小姐的脑子的确病得不轻，然而您
的这番发言实在是一语中的！」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0390a03">
「喂喂。你等一下，侍从。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0400a02">
「怎么可能……
　那到底是什么样的男人啊。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0410a04">
「不不，绫弥小姐。
　在完成自身使命的过程中又与恋人紧紧
结合在一起，这才是男人的夙愿——」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0420a03">
「景明大人，我突然得到了艺术灵感！
　主题就是泳装与来福枪。」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0430a03">
「虽然有点像大约半个世纪之后黔驴技穷的企
划人绞尽脑汁想出来的前卫戏剧，但我们现在就
从这里开始，怎么样？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0440a00">
「还请不要把我牵扯进去。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　农历十一月份。正值夏季。
　头脑中的季节感也混乱起来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆０６へ

}

..//ジャンプ指定
//次ファイル　"ma04_006.nss"