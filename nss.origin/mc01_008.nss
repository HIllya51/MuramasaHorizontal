//<continuation number="690">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_008.nss_MAIN
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
	#bg056_建長寺三門前_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_009vs.nss";

}

scene mc01_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc01_007.nss"

//◆建朝寺前
//◆車の走行音＆停止音

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(100, "bg056_建長寺三門前_01.jpg");
	FadeBG(0, true);

	CreateSE("SEL01","se乗物_車_停止01");
	MusicStart("SEL01",2000,1000,0,800,null,false);

	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);


	WaitKey(6000);
	SetVolume("SEL01", 1000, 0, null);


	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080010a04">
「到了。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080020a03">
「辛苦你了。
　……虽然是第一次来这里，不过真是座气派的
禅寺呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm18",1000,1000,true);
	OnSE("se乗物_車_ドア開閉01", 1000);

	CreatePlainSP("絵板写", 10000);
	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服a.png");
	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080030a04">
「正是如此。
　这可是仅在大和才能享受到的妙趣呢。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080040a03">
「与汉交趾的东西有着不同的风味呢。
　……弄坏它会不会有点可惜呢？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080050a04">
「寺中似乎还收藏着国宝……
　尽量小心不波及到禅寺就好了吧。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080060a03">
「的确呢。
　尽量小心。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080070a04">
「现在就出发吗？
　还是，再稍等片刻？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080080a03">
「……稍等片刻吧。
　我想将所有的一切都一并收拾掉。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080090a04">
「这样啊。
　那么，我来为您沏杯茶吧。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080100a03">
「拜托你了。」


//◆かちゃかちゃ。
{	OnSE("se日常_食器_お茶準備_L",1000);
	DeleteStL(300, false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080110a04">
「……不知道那个人会不会来呢。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080120a03">
「他应该无法漠视。
　无论如何，他可是景明大人。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080130a04">
「您了解他吗？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080140a03">
「当然了。
　我从很早以前，就一直想着那位大人的事了。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080150a03">
「今天接下来即将发生的事，我也早已想像过
无数次了。
　当说明一切原委拔刀相向之时，那位大人会
做出怎样的反应……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080160a04">
「那位大人，究竟会做出怎样的反应呢……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080170a03">
「一定会感到无比悔恨吧……
　因为这一切都并非那位大人的本意呢。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080180a03">
「他并不想犯下罪名。
　但却仍旧要承受报应。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080190a03">
「……真是没有天理呢。」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080200a04">
「真是可怜的人。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080210a03">
「但是没办法。
　<RUBY text="·">我</RUBY>无法原谅他。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080220a04">
「是。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080230a03">
「不管有什么理由都不能原谅。
　无法原谅他杀了<RUBY text="·">他</RUBY>。」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080240a03">
「哪怕千百万人的性命都因此获救，我也不能
原谅。
　如果被拯救的千百万人都与景明大人为伴，
那么我就将他们一同击败。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080250a03">
「究竟是谁规定的呢……？
　百万人的性命比他一人的性命更沉重。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080260a04">
「究竟是谁呢……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080270a03">
「若是他自己规定的也就罢了。
　但并非如此。他并不是以自己的意志去死。
而是<RUBY text="····">被人杀害</RUBY>的。」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080280a03">
「被他人决定了他性命的价值，然后被杀害了。
　所以我不能原谅。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080290a03">
「不原谅凑斗景明。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080300a04">
「遵从您的意志……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080310a03">
「如果我站在与那位大人同样的立场，也许我
也会做出相同的事情，但即便如此。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080320a04">
「即便会做出同样的事情。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080330a03">
「嗯。
　而景明大人也一定会那样做……
无言地，用尽他所有的力量取走性命。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080340a04">
「不会解释这是不得已的牺牲吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080350a03">
「你不觉得这只是杀人者的自以为是吗？
　这与拜托对方“我现在要杀你，但我杀你是
有理由的，所以请你理解”有什么区别。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080360a03">
「被杀的人，在被杀之后就无法再去憎恨某人
了。
　而<RUBY text="······">杀他的那个人</RUBY>，<RUBY text="······">在杀了人之后</RUBY>也不会被任
何人憎恨。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080370a03">
「……你觉得这样合理吗？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080380a04">
「原来如此……」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080390a03">
「所以我啊，真的很感谢景明大人。
　因为，他让我<RUBY text="···">能够恨</RUBY>了呢。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080400a03">
「因为他执意杀死了他，才激起了我的复仇之
心。
　激起了我无尽的杀意。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080410a03">
「若他是以自己的意愿而牺牲了的话，那我一
定不知该如何是好了。
　找不到可以释放自己情绪的地方……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080420a03">
「事情没有发展成那样，都要多亏景明大人呢。
　对吧？　婆婆。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080430a04">
「……」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080440a03">
「所以……我会温柔地杀死他。
　没有痛楚地。一击击穿他的心脏。让他宛如
睡着一般静静地离世。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080450a03">
「对他的悔恨，视若无睹。
　无情地。只将我的憎恨全部丢给他。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080460a03">
「竭尽全力夺取他的性命。
　一边唤起他所有的留恋，一边将其践踏。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080470a03">
「然后——我就会被人憎恨。
　某一天我的心脏，也会像我对景明大人所做
的那样，被复仇的刀刃贯穿。」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080480a04">
「这样好吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080490a03">
「就是这样<RUBY text="·">才</RUBY>好。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080500a04">
「……」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080510a03">
「复仇就是这样。
　无止境地延续着，杀意与憎恶的循环……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080520a03">
「换一种说法的话，知道这叫什么吗？　纱代。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080530a04">
「法与正义。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080540a03">
「没错。
　吃了亏总有机会要回来。占的便宜也终究会
还回去。人类普遍的一大律法。」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080550a04">
「虽然依照今年的伦理和道德标准，未必会承
认这是正义。
　不过，伦理道德都是灵魂的装饰。终究也只
是表面上的东西。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080560a03">
「嗯。
　内心的真相永远都不会改变。」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080570a04">
「不会改变。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080580a03">
「真正显贵之人，其活着必须体现普遍的正义。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080590a04">
「是。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080600a03">
「茶呢？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080610a04">
「马上就好。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, true);

//◆こぽこぽ。
	OnSE("se日常_水_注ぐ01",1000);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080620a03">
「好香啊。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080630a04">
「大小姐。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080640a03">
「什么？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080650a04">
「您开心吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080660a03">
「嗯，非常开心。　」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080670a04">
「这份愉快与失去了贵重之物时的悲伤
是表里一体的。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0080680a03">
「的确呢。
　……这叫什么呢？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0080690a04">
「这被称为业。
　真是人面兽心的大小姐。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc01_009vs.nss"