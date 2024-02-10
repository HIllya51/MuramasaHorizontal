//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_025.nss_MAIN
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

	$GameName = "mc03_026.nss";

}

scene mc03_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_024vs.nss"


//◆小夏の回想
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 50, "BLACK");
	SoundPlay("@mbgm15", 0, 1000, true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　记忆是暧昧的。

　我自己也不太明白。
　来栖野小夏——这应该是我的名字，但我不知道这有
什么含义。

　<RUBY text="··">自己</RUBY>是什么呢。

　是指这个有些欠缺，破败玩偶般的身体吧。
　
　还是说，沉重浑浊，受伤腐烂而馊掉的<RUBY text="心">精神</RUBY>呢。


　大概，二者都是自己吧。

　那么，自己就是在病房诞生的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·病室

//下に黒を敷いたまま背景描画 inc櫻井
	CreateColorSP("絵暗転", 1000, "#000000");
	OnBG(100,"bg086_病室_01a.jpg");
	FadeBG(1000,true);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　虽然又白又干净，但却是很干冷的房间。
　自己是从那里开始的。

　身心都不会动。

　什么也做不到，也不知道该做什么。
　
　什么也没有想，也不知道该想什么。
　

　什么都不明白。
　但是，只有自己的一切都<RUBY text="···">结束了</RUBY>这件事是明白的。


　所以不会动，并且也只能一动不动。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw小夏の父.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆ボイス無し
<voice name="ｅｔｃ／小夏父" class="その他男声" src="voice/mc03/0250010e125">
「————」


//◆ボイス無し
{	NwC("cg/fw/nw小夏の母.png");}
//【ｅｔｃ／小夏母】
<voice name="ｅｔｃ／小夏母" class="その他女声" src="voice/mc03/0250020e126">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　在我身边，有两个人。
　是叫做双亲的人们。

　那两个人用力做出笑容，重复对我说着听不懂的话。
　
　打起精神，之类。
　仅仅是活下来已经很好了，之类。

　……打起精神，是什么意思呢。<k>
　……活下来，是什么意思呢。<k>
　
　我不明白，我只是看着他们。

　不过，之后他们又说了不同的话。

　——雄飞君也没事，太好了。
　
　这样。

　雄飞。<k>
　雄飞。

　这句话，还是暧昧而浑浊。
　但是，不知为什么，想到这个名字，我心中萌生了新
的东西。

　那是能让这无法行动的自己行动起来的，充满了力量
的话语。

　
　　　　“我们什么也没有失去。”

　
　　　“别把其他人卷入你的绝望之中！
　　　　我们没有那么软弱!!”

　<RUBY text="·">我</RUBY>第一次开了口。<k>
　
　——能见到，雄飞吗？

　这句问话，我自己也不知道为什么会说出口。
　两个人听到了这句话，变得惊讶，很快露出了特别高
兴的表情，一次次回答我说能见到。

　能见到雄飞。

　这想法，暧昧地成为了我的目的。
　见雄飞。见到他之后，一定会有改变。

　……结束的东西，能够再次开始。

　我还是不会动。
　但是不动这件事，加上了目的，就成为了一种<RUBY text="··">行为</RUBY>。


　称为等待的行为。<k>
　
　并且，行为让自我产生了<RUBY text="··">意义</RUBY>。

　等待见到雄飞的时候。<k>
　
　想到在等待，就不会难过——这样想着，我终于意识
到自己至今为止多么的<RUBY text="··">难过</RUBY>。

　虽然以前很难过，但今后不会了。
　我在安心之中等待。

　等待着。
　
　
　……………………………………………………但是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　他，<k>没有来。

　有一次，双亲被一个慌张的声音叫出了病房。


　……最开始是静寂。<k>
　接着是苦闷的声音。<k>
　最后是断断续续的喊声隔着墙壁传了过来。

　　“为什么”<k>
　　　　　　　　　　　　　　“连雄飞君也”<k>
　“这，这不可能”<k>
　　　　　　　　　　　“为什么！”

　……………………

　在那之后，双亲没有再靠近我的身边。

　偶尔他们出现，会放下一些探望的东西，但绝不会久
留。
　他们迅速地说了些什么，然后迅速离开了。

　是在害怕我。
　是怕我开口问些什么。


　我也害怕。
　我是怕会问双亲些<RUBY text="··">什么</RUBY>。

　所以我没有挽留他们。

　我从等待着什么，
　变为了害怕着什么。

　结果这段时间立刻变得辛苦。

　不能动，我只是感到难过。
　一直一直感到难过。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//■病室背景に立ち絵立たせると微妙なのでここで暗転 inc櫻井

	FadeDelete("@OnBG*",1000,true);


//◆雪車町


	StR(2100, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStR(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……是从什么时候开始的呢。
　那个人，开始出现在我的病房中。

　最开始，我想既然不是双亲，那应该是一个医生吧。
　
　不过，那个人和医生完全不同。

　好像是在哪里见过。

　那个人，开始的时候仅仅是看着我。
　
　看着我。等我注意到的时候，他已经消失了。

　之后——那是第几次的来访呢。
　那个人像往常一样看着我。突然说了一句话。


“你知道吗。
　雄飞死掉了。”

　这样。

　……<RUBY text="···">死掉了</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　这句话，我不太明白。
　所以我什么也没有回答。那个人回去了。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆雪車町
	StL(2100, @0, @0, "cg/st/st雪車町_通常_私服.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 1100, 1100, null, true);
	FadeStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　但是，之后他又来了。
　并且说道。

“雄飞已经死了。”

　这样。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我不知道他说的是什么。不知道不知道。
　我没有回答。那个人回去了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆雪車町
	StR(2100, @0, @0, "cg/st/st雪車町_通常_私服.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 1200, 1200, null, true);
	FadeStR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　很快他又来了。

“雄飞已经不在了。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　不明白不明白不明白不明白。
　那个人回去了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆雪車町
	StL(2100, @-50, @500, "cg/st/resize/st雪車町_通常_私服_m.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 800, 800, null, true);
	FadeStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　来了。

“雄飞不会来的。”

“无论等多久，也不会来的。”

　骗人!!

　我这样回答。
　我否定着，不会有这种事。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　那个人离开了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆雪車町

	StR(2100, @0, @450, "cg/st/resize/st雪車町_通常_私服_m.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 1000, 1000, null, true);
	FadeStR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
“雄飞被杀死了。”

　那是谎话。
　不知道不知道。

　我这样说道，那个人递来一张纸。

　
　　　　　　　　　『死亡证明书』

　上面排列着看不懂的符号。

　
　　　　　　　　　　『新田雄飞』

　上面排列着看不懂的符号。

“死了哦……”

　不知道。
　不知道。

　那是谎话。
　因为爸爸妈妈说了。

　说了我能见到雄飞。
　雄飞平安无事！

　雄飞没有被铃川老师杀掉！

“对。是这样的。
　不是铃川杀的……”

　杀人犯是铃川老师。
　既然没有被铃川老师杀掉，那也不会被别人杀掉！


“发生了很多事。
　比起铃川，有个要更加恶劣的家伙。”

　没有那种事。
　那种事我不知道。

　和雄飞没有关系。

“看看这个……”

　那个人，给我看了另一张纸。
　又是符号。看不懂的符号。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　
　『关东拘留所』『未决犯〇四八号』『罪状一览』

　
　　　『新田雄飞』『杀害嫌疑』『犯罪自供』


　不要给我看。
　这种事我不明白。不知道。


　　『未决犯〇四八号』　　　『凑斗景明』

　
　　　　　　　　『杀害新田雄飞』


　我不明白！
　我说了不明白！



　　　　『未决犯〇四八号』『凑斗景明』
　　　　『罪状』『新田雄飞』『杀害』


　不要。
　那种事我不知道，是谎话！

“雄飞，”

“被凑斗景明杀了。”

　骗人！
　骗人!!
　骗人——!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStR(300,true);
	WaitKey(300);

//◆雪車町
	StL(2100, @-50, @550, "cg/st/resize/st雪車町_通常_私服_m.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 1200, 1200, null, true);
	FadeStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　
　　　　『未决犯〇四八号』『凑斗景明』
　　　　『罪状』『新田雄飞』『杀害』

　讨厌。
　别再来了。

　别给我看这张纸。

　我都说了不明白！
　虽然不明白但还是明白！　明白所以讨厌！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStL(300,true);
	WaitKey(300);

//◆雪車町

	StR(2100, @0, @600, "cg/st/resize/st雪車町_通常_私服_m.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 1400, 1400, null, true);
	FadeStR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　
　　　　『未决犯〇四八号』『凑斗景明』
　　　　『罪状』『新田雄飞』『杀害』

　讨厌！
　别给我看啊！

　那种——无法质疑的冰冷符号讨厌！

　那张纸和那个一样。爸爸有时会带到家里的，那种和
工作有关的文件。
　不是漫画，不是小说，不是玩笑。

　上面只写着事实的，冰冷的纸。
　被称为法律文件之类的东西……
　
　我不想看到那种东西！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStR(300,true);
	WaitKey(300);

//◆雪車町
	StL(2100, @-50, @750, "cg/st/resize/st雪車町_通常_私服_m.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 1600, 1600, null, true);
	FadeStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　
　　　　『未决犯〇四八号』『凑斗景明』
　　　　『罪状』『新田雄飞』『杀害』

　骗人！
　明明是骗人，为什么真的写了啊！

　明明是骗人，为什么是真的!?

　那种东西别给我看啊!!

“好……
　嗯，这种东西确实无关紧要。”

“这种纸片多一张少一张无所谓，对吧？
　事实，就是事实……对吧。”

　骗人。

“你应该明白……”

“我这种人，只说实话的机会，
可真的不多啊……
　嘿，嘿，嘿。”

“至于为什么……<RUBY text="·····">你应该懂的</RUBY>。”

　骗人。

“听好。”

“新田雄飞被杀死了。”

“被凑斗景明杀死了……”

　骗人！

　骗人…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStL(300,true);
	WaitKey(300);

//◆雪車町
	StR(2100, @0, @800, "cg/st/resize/st雪車町_通常_私服_m.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 1800, 1800, null, true);
	FadeStR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
“新田雄飞被杀死了。”

“被凑斗景明杀死了。”

　…………

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStR(300,true);
	WaitKey(300);

//◆雪車町

//一旦引いて inc櫻井

	StC(2100, @0, @900, "cg/st/resize/st雪車町_通常_私服_l.png");
	Request("@StC*", Smoothing);
	FadeStC(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
“被凑斗景明杀死了。”

　……………………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStC(300,true);
	WaitKey(300);

//◆雪車町

//嫌悪感出るくらいど真ん中に inc櫻井

	StC(2100, @0, -50, "cg/st/resize/st雪車町_通常_私服_lm.png");
	Request("@StC*", Smoothing);
	FadeStC(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
“新田雄飞被凑斗景明杀死了……”

“那……”

“你该怎么办呢……？”

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆雪車町消す
	DeleteStC(300,true);

//◆ウェイト
	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　没有来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·雄飛

	EfRecoIn1(18000,600);


	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg006_雄飛の部屋_01.jpg");
	CreateTextureSP("絵回想200", 2100, 400, InBottom, "cg/st/st雄飛_通常_制服.png");

	EfRecoIn2(300);

	WaitKey(1000);

//◆戻り
	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　雄飞没有来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·雄飛

	EfRecoIn1(18000,600);
	
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	CreateTextureSP("絵回想200", 2100, 400, InBottom, "cg/st/st雄飛_通常_制服.png");

	EfRecoIn2(300);

	WaitKey(1000);

//◆戻り
	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　雄飞不来。

　为什么。

　明明一直都在一起的。
　一直，一直都陪我一起的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·ヤクザと雄飛


	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg014_鎌倉繁華街_02.jpg");

	CreateTextureSP("絵回想200", 2100, 100, InBottom, "cg/st/st野木山組_通常_私服.png");
	CreateTextureSP("絵回想300", 2101, 618, InBottom, "cg/st/st雄飛_通常_制服.png");

	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoIn1(18000,600);


	Delete("絵回想*");


//◆回想·真改と雄飛

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	CreateTextureSP("絵回想200", 2100, -100, InBottom, "cg/st/3d真改_立ち_抜刀.png");
	CreateTextureSP("絵回想300", 2101, 618, InBottom, "cg/st/st雄飛_通常_制服.png");

	Fade("フラッシュ白",300,0,null,true);

	EfRecoIn2(300);


	WaitKey(1000);

//◆戻り

	
	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　我难过的时候，他一定会陪在我身边。
　最后一定会来帮我。

　为什么，现在不来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·雄飛
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg008_教室_01.jpg");
	CreateTextureSP("絵回想200", 2100, 400, InBottom, "cg/st/st雄飛_通常_制服.png");


	EfRecoIn2(300);

	WaitKey(1000);
	EfRecoOut1(300);

	Delete("絵回想*");



//◆戻り
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我们在一起吧。
　我想见你。

　我想和雄飞永远在一起。

　我真的从很久以前，就是这样想的。

　所以……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·雄飛
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg006_雄飛の部屋_01.jpg");
	CreateTextureSP("絵回想200", 2100, 400, InBottom, "cg/st/st雄飛_通常_制服.png");


	EfRecoIn2(300);
	WaitKey(1000);

//◆戻り

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　为什么。

　为什么不来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_体_心臓の音02", 1000);

	CreateColorEXadd("小夏覚醒", 15000, "RED");
	Fade("小夏覚醒", 0, 1000, null, true);
	Fade("小夏覚醒", 1000, 0, null, true);


//◆雪車町


	StR(2100, @200, @1250, "cg/st/resize/st雪車町_通常_私服_l.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 2000, 2000, null, true);
	FadeStR(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
“被杀掉了。”

“新田雄飞被杀掉了。”

“新田雄飞被凑斗景明杀掉了。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト

	DeleteStR(1000,true);

	OnSE("se人体_体_心臓の音02", 1000);
	Fade("小夏覚醒", 0, 1000, null, true);
	Fade("小夏覚醒", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　……凑斗景明？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明シルエット
	CreateColorSP("絵色黒", 2000, "#000000");
	CreateStencil("マスク１",1200,center,InBottom,128,"cg/st/st景明_通常_私服.png",false);
	SetAlias("マスク１","マスク１");
	CreateColorSP("マスク１/色１", 1200, "White");
	Fade("マスク１/色１", 0, 500, null, false);
	SetShade("マスク１", HEAVY);
	Fade("絵色黒", 100, 0, null, true);

	WaitKey(1500);

//◆消す
	Fade("絵色黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　……凑斗景明……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆景明シルエット
	CreateTextureEX("kage", 1050, Center, InBottom, "cg/st/st景明_通常_私服.png");
	CreateStencil("マスク１",1200,center,InBottom,128,"cg/st/st景明_通常_私服.png",false);
	SetAlias("マスク１","マスク１");
	CreateColorSP("マスク１/色１", 1200, "White");
	Fade("マスク１/色１", 0, 500, null, true);
	SetShade("マスク１", HEAVY);
	Fade("絵色黒", 100, 0, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　凑斗景明，

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆景明シルエット→景明通常立ち絵
	PrintGO("上背景", 20000);
	CreateColorSP("絵色黒地", 100, "#000000");
	CreateTextureSP("kage", 1050, Center, InBottom, "cg/st/st景明_通常_私服.png");
	Delete("マスク*");
	FadeDelete("上背景", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　凑斗景明!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//あきゅん「監修：記述ミスがありました。」
//	FadeDelete("kage"1000,true);
	FadeDelete("kage", 1000, true);

//二重再生で鼓動でかく。　inc櫻井
	CreateSE("鼓動1", "se人体_体_心臓の音02");
	CreateSE("鼓動2", "se人体_体_心臓の音02");
	MusicStart("鼓動1", 0, 1000, 0, 1000, null,false);
	MusicStart("鼓動2", 0, 1000, 0, 1000, null,false);
	WaitKey(1000);

	Fade("小夏覚醒", 0, 1000, null, true);
	Fade("小夏覚醒", 1000, 0, null, false);

	SetVolume("鼓動", 1000, 0, null);

//◆病室
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 1002, "#000000");
	OnBG(1001,"bg086_病室_01a.jpg");
	FadeBG(1000,false);
	Delete("上背景");
	FadeDelete("絵暗転",1500,true);




//■ないほうが良い感じがするので表示していません。 inc櫻井
//◆雪車町

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
“嘿，嘿，嘿……”

“那……走吧。”

“<RUBY text="···">同伴们</RUBY>在等着……”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ホワイトアウト

	CreateColorEX("ホワイトアウト１", 5000, "WHITE");
	Fade("ホワイトアウト１",3000, 3000, null, true);





}

..//ジャンプ指定
//次ファイル　"mc03_026.nss"