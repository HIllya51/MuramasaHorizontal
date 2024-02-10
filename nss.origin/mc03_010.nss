//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_010.nss_MAIN
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
	#bg050_普陀楽城宿舎前_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_011.nss";

}

scene mc03_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_009.nss"

//◆朝。空？
	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 10000, "#000000");
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg001_空b_01.jpg");

	Delete("上背景");
	FadeDelete("絵色黒",1500,true);

	SoundPlay("@mbgm32", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　出发的早晨。
　
　我有种预感，这会是最后的旅途了。

　在这旅途中，完成大鸟大尉的计划，同时我也结束银
星号那件事。之后，该做的事情就只剩下一件了。
　完成她所宣誓的<RUBY text="正义">复仇</RUBY>，仅此而已。


　凑斗景明的恐惧。
　凑斗景明的期待。
　
　凑斗景明正确的结局。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我的肩膀感到了无穷的疲劳，胸口有着深深的安心。
　太久了——我想着。不过一切都要结束了。只差一点
了。终于。

　<RUBY text="自己">罪人</RUBY>将得到报应，终能迎来正确的结局。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100020a03">
「……景明大人？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100030a00">
「没事。
　我只是突然又有了感慨。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100040a00">
「能够遇到你，真是太好了。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100050a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆永倉邸前。bg050流用
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	
	Delete("絵背景*");
	OnBG(100, "bg050_普陀楽城宿舎前_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	StR(1000, @0, @0, "cg/st/st永倉翁_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw永倉翁_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100060b17">
「没有忘带什么东西吧。」

{	StL(1000, @80, @0, "cg/st/st香奈枝_通常_私服b.png");
	StCL(1000, @-60, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FadeStCL(300, false);}


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100070a03">
「嗯。
　那么我们走了。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100080b17">
「路上请小心。
　纱代，香奈枝大人就拜托你了。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0100090a04">
「交给我吧，哥哥。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw永倉翁_苦味.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆大フォント
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100100b17">
<FONT size="50">「别这样。」</FONT>

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100110a00">
「长老，给你添麻烦了。」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100120b17">
「我没有做太多的事。
　大人也是，路上保重。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100130b17">
「明年能再来吃柿子就好了。」



{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100140a00">
「……是。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100150a03">
「永仓爷爷。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100160b17">
「嗯？」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100170a03">
「我这次去，一定是会毁灭大鸟家的吧。」



{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100180b17">
「你就随意地去毁灭吧。」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100190a03">
「……」


{	FwC("cg/fw/fw永倉翁_苦味.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100200b17">
「古老的大鸟……充满美丽的家风已经断绝了。」



{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100210b17">
「我大胆说一句，这是前代当主……香奈枝大
人的父亲造成的。」



{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100220a03">
「嗯……」


{	FwC("cg/fw/fw永倉翁_苦味.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100230b17">
「无论志向如何，手段却选错了。
　结果大鸟的羽翼变得凌乱，造成了狮子吼这
种人的发展，最后自己遭其杀害——」

//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100240b17">
「现在的大鸟家被狮子吼掌握之后，已经失去
了过去的样子……
　成为了隶属于权力的走狗之群，单纯只是个
军阀而已了。」

//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100250b17">
「大鸟坠于地面，成为了饿畜。
　现在对于世间有百害而无一利。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100260a03">
「……」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100270b17">
「去毁灭它吧。
　如果对于家族的继承和守护是子孙的义务，
那么家族堕落之后将其终结也是子孙的义务。」


//嶋：修正【091006】
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100280b17">
「香奈枝大人。你是除了伤害、毁坏之外没有
任何才能的人。
　你降生在当代，应该是有其意义的。」



{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100290b17">
「请一定按照你自己的意愿去行动吧。
　腐朽的大鸟倒下之后，花枝大人应该会建立
起新的大鸟。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100300a03">
「…………」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100310a03">
「是。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0100320b17">
「祝你们顺利。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100330a03">
「爷爷也保重。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0100340a04">
「那么大小姐，我们走吧。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0100350a03">
「嗯。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100360a00">
「我们要怎样去篠川？
　考虑到现状如此，去篠川应该会很困难。」



{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0100370a04">
「我也考虑过各种方法啊。
　考虑啊考虑啊考虑之后，结果又回到了最开
始的起点。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0100380a04">
「最后，决定使用最没有技术含量的方法。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0100390a00">
「也就是说……」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0100400a04">
「是铁路。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_011.nss"