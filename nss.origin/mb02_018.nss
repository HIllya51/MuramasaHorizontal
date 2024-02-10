//<continuation number="1750">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_018.nss_MAIN
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
	#bg067_普陀楽城内能楽堂_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_019.nss";

}

scene mb02_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_017.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg067_普陀楽城内能楽堂_01b.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　舞台上开始表演狂言。
　演出的是『无布施经』。施完法事固然好，
但因为从施主那要不到按理该得的布施而困惑不已的住
持滑稽至极。

　方才余音未散，这出轻松的表演恰如餐后的一杯清茶，
渗透心间，平复了涌动的胸潮。
　能乐真是极富内涵，令我不禁叹服。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ざわっ
	CreateSE("SE01","se背景_ガヤ_ざわめき02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180010a00">
「……嗯？」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0180020a02">
「咦？
　……那位演员。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180030a00">
「那不是“赖政”吗……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　目光转向突然而起的骚动之处。
　那位承上一流演出的能乐师出现在了客席之间。

　而且，没有换下戏服。
　……所为何事。

　除他本人外，在场所有人都感到不可思议。
　卫兵赶至男子身边一探究竟。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180040a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　但他们迅速退下了。
  并未责难“赖政”的无礼，而是一副着慌模样。

　能乐演员保持着沉浸曲中之态，飘然优美地前行。
　顺着那方向的尽头——是冈部家的末代千金。

　也许是京极家的将士吧，严守四周的男子们瞬间气势
汹汹地站起。
　而后他们忽露惶恐之色，收回按住刀柄的手。

　在无人敢阻拦的状态下，“赖政”站到樱子面前。
　褪去戏服，摘下头巾，手揭能面——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_外套纏う01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180050b28">
「——啊！」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180060a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆童心
	StL(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　——游佐童心!?

　怎么可能。
　那么，宛如主办人般就座的男子究竟是……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆柳生常闇斎
	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵演背景", 2100, -1024, -463, "cg/bg/resize/bg067_普陀楽城内能楽堂_01bl.jpg");

	StR(3000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
	FadeStR(0,true);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……是谁？
　那位异相男子。

　周围虽惊讶却也不见责难，看来并非什么可疑之人。
　但我没有见过他。那就意味着他不是广为人知的幕府
高官。

　不管怎样，那位男子戴着头巾化装成游佐童心高僧，
这是不争的事实。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵黒幕", 5000, "BLACK");
	Fade("絵黒幕", 300, 1000, null, true);
	Delete("絵演*");

	StL(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	StR(1000, @0, @0,"cg/st/st桜子_通常_私服b.png");
	FadeStA(0,true);

	FadeDelete("絵黒幕", 300, true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180070a09">
「哎呀哎呀……
　吓到你了吧。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180080a09">
「真是抱歉，樱子小姐。
　虽然贫僧深知不该如此，但我原本就喜欢这
些。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180090a09">
「贫僧这秉性到了这把年纪已经改不了喽。
　请小姐就当做是老年人的自娱自乐，付诸流
水吧！」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180100b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　小姐满脸愕然，无言以对。
　包括邦氏，列席者均是此番模样。

　……谁能料到。
　身为古河公方，竟然悄然混入能乐师中，还扮起了主
角……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180110a00">
「……虽说武家之人也喜爱能乐。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0180120a02">
「开的哪门子玩笑啊，那个和尚。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一条的抱怨声音有些大，但现在就算有人听到肯定也
不会去责备她。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180130b28">
「……童心高僧……
　高僧就是……那位“赖政”……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180140a09">
「确是。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180150b28">
「匪夷所思……
　为什么？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180160a09">
「不知贫僧拙劣的技艺可玷污了赖纲公的
声誉？」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180170b28">
「绝、绝无此事。
　……高僧所演令人称奇。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180180a09">
「噢，噢！
　居然能得到樱子小姐赞赏，真乃幸事一件！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　公方大人表情舒展，拍手称快。
　而他面前的小姐，却愈加困惑。

　……没错。的确，他的技艺精彩绝伦。
　所以才会觉得难以理解。

　技艺高超，因为他是众人皆知的婆娑罗公方。并不值
得惊讶。
　但那情感——

　为何能那般生动地吟唱出行将消逝之人的悲哀。
　这位六波罗的大领袖，视敌人如蝼蚁，草菅无数人命，
都不曾有过顾虑……究竟为何。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180190a09">
「我说……
　樱子小姐。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180200b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180210a09">
「听闻阁老们屡次向小姐询问都无果而终。
　特别是问及前次战事一段，小姐可是守口如
瓶……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180220b28">
「那是因为……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180230a09">
「不过，小姐的心情贫僧甚是了解。
　败者自然闭口不言。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180240a09">
「一旦开口便会说出自身之理。
　但战败之后与人论理又有何用。只会被人嘲
笑为丧家之犬，不知廉耻，岂不是反倒一味玷
污世道正理……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180250a09">
「如此一来将无颜面对九泉之下的同胞兄弟。
　……小姐，我说的可对？」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180260b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　甚是。
　冈部樱子如此答道……

　望着屏息凝视自己的小姐，游佐童心转过脸。
　扫视客席。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180270a09">
「可听到了，诸位！
　樱子小姐甘为俘虏，缄口不言、沉默一生，
并非因为战败而羞耻，亦非因为对世间抱有愤
恨。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180280a09">
「那是因为沉默此生才是守护战败亡灵的名誉
之道！
　还不明白吗？　纵然被世间嘲笑为苟全一命
的女人——」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180290a09">
「反过来说，这也正是对光荣战亡的勇士们的
赞赏！
　每每看到这位佯装忘记耻辱的女子，世人便
会忆起冈部家的勇猛武士！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180300a09">
「小姐是为传承冈部之名且不辱其耀，而甘愿
牺牲自己！」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180310b28">
「——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　……竟然。
　这一点——这一点未及考虑。

　樱子小姐真是那个想法吗。
　…………听上去，没有无法想通之处。

　确实，那位小姐也许正是抱着这样的决心活着的吧。
　默默地埋于内心深处。甚至那日，面对一条的刨根问
底，也终究没有吐露心声。

　那么，游佐童心这和尚真是可怕。
　他竟然能窥测他人心底的秘密。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180320a09">
「有其父必有其女！
　不愧是扬名天下的赖纲公。对子女影响如此
之深。真是虎父无犬子……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180330a09">
「我们也不能落于人后。
　明白吗!?　诸位!!」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180340a09">
「向冈部学习，好好教育一族！
　武家盛衰不过时运宿命。我等六波罗也终会
迎来荣华衰败的结局。到那时切不可做出辱没
名声之举……」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180350a09">
「死时应如凋零之花般潇洒壮烈！
　即便那是朽木幻花……凋零之后，也定会有
结出果实之时！」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180360b28">
「……童心大人……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　——是。
　——遵命。

　在统帅公方的呐喊声中，无人提出异议。
　众人齐声叩拜。我也不例外。

　顺便一掌按下一条的脑袋。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆赤面
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0180370a02">
（…………）


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180380a00">
（太显眼啦）


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0180390a02">
（抱歉）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　心情可以理解，因为除开幕府一干人等，我们并没有
义务叩拜听命。
　我也只是装个样子而已。

　……但是。
　有些许出于真心的行礼混杂其中了吧。

　现场只有一人，没有垂下脑袋。
　那就是足利四郎邦氏。

　游佐童心转身面向他。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180400a09">
「贫僧口出狂言，说了些不吉利的话。
　还请殿下宽恕。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0180410b49">
「不，无需道歉……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　少年的表情却阴阳两极。
　不胜铭感之下，天庭涨红。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0180420b49">
「说得好啊，童心和尚！
　四郎我顿觉柳暗花明。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180430a09">
「殿下过奖。
　实乃在下殊荣。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　古河公方深深地向主君回礼。
　然后再次转身面向小姐。

　……柳暗花明。
　这是那位年轻君主的真心流露吗。

　他所期望的与冈部小姐共同迈进的明天。
　即便那是一条明知布满荆棘的道路，若有游佐童心这
样的理解者身边相伴——或许，这条路走得下去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180440a09">
「樱子小姐……
　小姐坚定决心实在难得。我等六波罗，绝不
会妨碍小姐。」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180450b28">
「…………」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180460a09">
「沉默着，继续活下去……
　守护令尊大人的荣耀吧！」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180470b28">
「……是。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180480a09">
「但是，
　我等要传扬冈部……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180490a09">
「告知世人，曾有如此杰出一族……
　虽然最终与我等分道扬镳，兵戎相见，但他
们绝无一丝邪念一厘私欲。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180500a09">
「只是为贯彻吾之正道。
　面对必输之战却并未退却，壮烈战亡……我
等要传扬，曾有这样的英雄。」


//嶋：修正（見せたも）【090930】
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180510a09">
「子子孙孙，万世传扬……
　今日，贫僧斗胆承上如此雕虫小技也正是因
此之故。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180520b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180530a09">
「樱子小姐是否知道，
　贫僧曾与赖纲公并肩作战一事……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180540b28">
「什么？
　……不、不晓得。初次耳闻。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180550a09">
「那已经是……三五年前的事了。
　与俄罗斯帝国苦战之时。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180560a09">
「我等那时归属乃木将军阵营。
　对了，并肩作战的还有已故的大人。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180570a09">
「我们三人当时都只是新任陆军士官……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180580b28">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180590a09">
「至今仍会梦到。
　难以攻陷的旅顺要塞。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180600a09">
「严寒之中，以军号为信，兵士们突击向前，
每当此时……
　炙热血肉便洒满苍茫冻土。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180610a09">
「越积越多的永远是友军的骸骨……
　战果片瓦不得，阴森不祥的城墙毫发无损。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180620a09">
「龙骑兵的轰炸袭击毫无效果……
　反被敌方击落，竟落得个弹药散向同胞的下
场。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180630a09">
「……恍若地狱一般。
　三人一起，远望这地狱之景。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180640a09">
「贫僧哭了呢。
　身为武士不该有此举动……但生命虚无、
战事无情渗透内心，令人不禁潸然泪下……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180650a09">
「十太郎——哦，也就是大人。那时是
这样称呼大人的。
　他把哭泣中的贫僧揍了一顿。还说，如果会
为兵士的战亡落泪，那就去当和尚吧。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180660a09">
「赖纲公什么也没说。
　只是默默地望着。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180670a09">
「望着那二〇三高地。
　士兵反复突击，然而只有骸骨不断堆积，他
久久地凝视着那山丘。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180680a09">
「他咬紧了嘴唇……
　鲜血渗了出来。大概已经咬破了吧……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180690b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180700a09">
「但是，那之后。
　回到司令部，赖纲公提出了请求。
樱子小姐……知道是什么内容吗？」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180710b28">
「不知……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180720a09">
「二〇三高地是观测与炮击的绝佳场所。
　只要占据此处，就可找到机会凌驾于前来威
胁我方制空权的笼城军之上。这样一来，主动
权就落到我军手中。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180730a09">
「故此，炮击那座山丘现在时机正佳——赖纲
公如是说。
　……可是那里不仅有敌人，还聚集着众多友
军啊。」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180740b28">
「什么!?　怎么会这样。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180750a09">
「乃木将军当然当下就拒绝了……他说，我等
怎么可以炮击天皇子民。
　但是，赖纲公没有因此放弃……想来，他那
固执的性格从那时就开始了。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180760a09">
「他说，阁下至今为止都是令天皇子民死无所
值。
　但是从今以后的阁下，将会给予天皇子民荣
耀之死……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180770a09">
「他真是对着将军口出狂言呐。
　虽出生名门，但终究不过是一介军官啊。其
胆魄令人折服。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180780a09">
「但那片真情令乃木阁下为之动容，决定进行
炮击，我军终于攻下那二〇三高地。
　一夜之间扭转了胜负趋势。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180790a09">
「……赖纲公他，真是……
　他是位君子，知晓用人的真谛……！」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180800b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180810a09">
「赖纲公没有将这些事将给小姐听吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180820b28">
「……是的。
　家父很少讲关于战争的事。小时候，我还曾
为此央求过。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180830a09">
「想来也是，想来也是。
　攻陷要塞的功劳无疑属于赖纲公，而他本人
却从未把这当成自己的骄傲。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180840a09">
「甚至将这当做自己一生的耻辱。
　虽然对于向将军进言近乎血刃同胞之事，」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180850a09">
「他并未后悔……
　但一直以此为耻。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180860a09">
「他就是这样的君子啊。
　就是小姐的令尊……」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180870b28">
「……父亲……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180880a09">
「贫僧有个想法，樱子小姐。
　绝不可将赖纲公的这些事迹埋没。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180890a09">
「要传承于后代，那个男子汉一生之伟绩……
　既然与他经历过同样的时代，贫僧就有这份
责任。」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180900b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180910a09">
「可以吗，樱子小姐？
　我等可以向世人传扬赖纲公吗……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180920b28">
「……是……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180930b28">
「可以……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　那位小姐的心中，曾经坚固冰冷的峻岭——
　如今已开始摇晃了吧。

　……就算抛弃矜持也无法由自己来诉说的父辈之战。
　此刻正由六波罗传扬。

　不——古河公方已诉说过了。
　一场能舞，胜过千言万语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180940b28">
「请按您的意思来行事……
　童心高僧。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180950a09">
「嗯，是吗。这样啊……
　多谢小姐。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180960b28">
「哪里……
　……只是……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180970a09">
「什么？」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180980b28">
「听着……心中痛苦。
　就像方才……听高僧讲述着我所不知道的父
亲……」


{
	SoundPlay("@mbgm27",2000,1000,true);
//◆涙交じり
	FwC("cg/fw/fw桜子_涙.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180990b28">
「好想……！
　再见一次……父亲……！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181000a09">
「哦，哦……！
　这也难怪。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181010a09">
「抱歉，害小姐伤心了……
　义清！」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb02/0181020b21">
「在。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　看着小姐流泪着慌的模样，游佐童心叫来了不知何时
起站在身后的侍童。
　即便从远处看也十分俊美的侍童，迅速将壶碗递给主
人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181030a09">
「这种时候酒是最好的选择。
　樱子小姐，饮上一杯如何。」


{	FwC("cg/fw/fw桜子_涙.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181040b28">
「……见笑了……
　实在抱歉。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181050a09">
「思念父亲的女儿，落泪又有什么奇怪。又有
什么罪过呢。
　不用感到羞愧。来吧，小姐。」


{	FwC("cg/fw/fw桜子_涙.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181060b28">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　童心举壶凑近樱子手捧的碗。
　往大碗中注满了酒。

　小姐一饮而尽。
　……能乐堂内所有的人都注视着这番光景。

　运筹幕府政事的百官。
　他们的家人。
　统领他们的足利四郎邦氏。

　所有人都注视着。
　将这一幕——作为象征性的画面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181070a00">
（……究竟怎么了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　我苦恼不已。
　<RUBY text="·····">究竟怎么了</RUBY>。

　前线士兵根据自我判断改变作战方针，原则上是不被
允许的。
　但现在，似乎有这个必要。

　当初的计划——或者说将之放弃。果真符合亲王的利
益吗……
　
　不知如何决断，我看向一条。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181080a00">
（……？　怎么了）


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0181090a02">
（什么？）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181100a00">
（你好像不舒服啊）


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0181110a02">
（啊……是的。
　总觉得，感觉胃里<RUBY text="···">不舒服</RUBY>）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181120a00">
（……你没吃什么奇怪的东西吧？）


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0181130a02">
（没有啊。
　怎么会不舒服呢……）


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0181140a02">
（……偏偏是这种时候……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　虽然已经小心行事，但总是这样交头接耳，还是会引
起周围其他人的怀疑。
　此刻应该注视公方与小姐那一幕才对。

　我转过身体。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0181150b37">
「——」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181160a00">
「唔!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　……是我的…………错觉吗？
　那位诡异的替身，刚才，好像在看这里……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181170a09">
「川流不息。
　逝水难收。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181180a09">
「过去的再怎么不舍也不会回来……世间宿命
就是如此孤寂。
　但至少我们可以怀念逝者的面容。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181190a09">
「圣洁之物，定会成为引路标。指引川江之水
流向正确的方向。」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181200b28">
「……是。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181210a09">
「樱子小姐。
　请收下这个。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　说完，童心便将酒壶还给侍童，拿起另一件东西。
　能面。是方才他自己所戴之物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181220b28">
「这是……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181230a09">
「这个赖政能面，
　是贫僧追思故去的赖纲公而刻的。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181240b28">
「童心大人您亲自刻的!?」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181250a09">
「嗯。
　虽然技术拙劣……但贫僧自认其中刻入了与
赖纲公的种种回忆。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181260b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181270a09">
「如果觉得为难，贫僧也不强求。
　小姐愿意收下吗？」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181280b28">
「是、是……
　非常乐意。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181290b28">
「非常乐意……承蒙恩赐……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　小姐出神地盯着递来的能面。
　心不在焉地答道。

　她怜爱般地抚摸着赖政能面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181300b28">
「啊……
　真的……酷似父亲的容颜……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181310a09">
「小姐是这样想的吗……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181320b28">
「是……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181330a09">
「这很自然……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181340b28">
「…………」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181350a09">
「因为这能面——<BR>{	WaitKey(2000);}
　是用从赖纲尸骸上剥取的骨头做成的啊。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181360b28">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(1000);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181370a00">
「——」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0181380b49">
「————」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0181390a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

	SetFwC("cg/fw/fw桜子_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181400b28">
「什……
　……什么……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181410b28">
「大人说什么……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　樱子小姐，如此询问道……
　声音<RUBY text="····">干涩僵硬</RUBY>，宛如冬日
中洗过之后久晒未收的衣物。

　意识约有九成变得一片空编，仅剩的一成，让我意识到
此情此景何等丑陋。
　小姐强撑着即将土崩瓦解的笑颜，那容貌——看上去那
么肮脏、那么丑陋。

　人居然会露出这种丑陋的表情吗。
　
　与之相对，对面的僧侣却何其华美。

　无限喜悦。
　对这人世间深不见底的爱。
　将这一切溢于言表——恰似天界微笑。

　恍若释迦佛祖降临人间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181420a09">
「是骨头。」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181430b28">
「骨头……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181440a09">
「做成了令尊的脸，就像这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　古河公方——游佐童心高僧比划着诙谐的手势
给她看。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181450a09">
「用锯子
　嘎吱嘎吱地……」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181460b28">
「——」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181470a09">
「从上到下切开。
　把肉削掉……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181480a09">
「接着，敲打凿子。
　咚咚咚地，一下接着一下。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181490a09">
「为了刻出眉间的皱纹，真是费了不少劲呢。
　虽然这部分在出场的时候会盖在头巾之下，但
恰恰是这部分，如果偷工减料，那一切就都白费
了啊……」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181500b28">
「啊——啊。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181510a09">
「之后，添上肉感，用胡粉和动物胶反复涂抹，
着上色彩……这才算完成。
　哎呀，骨头可真难弄啊。」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181520a09">
「相比之下，这碗可就好做多了。」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181530b28">
「……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181540b28">
「——!?」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181550a09">
「这个是切割下头盖骨的<RUBY text="··">头顶</RUBY>部分，只需在
上面涂上漆便可。
　虽然考虑到这个也得也削出齐整的样子，不
过由于原本的形状就很完美，省了不少事。」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181560b28">
「啊——这……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181570b28">
「这个也是……父亲的……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181580a09">
「不是哦。
　这个啊，是你的同胞兄弟。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181590a09">
「冈部十兵卫的骨头。」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181600b28">
「——」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181610a09">
「……呐，樱子小姐。
　方才小姐就着这碗口喝了酒吧。」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181620a09">
「感觉如何……？
　血脉相承的哥哥的骨髓，味道如何？」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181630b28">
「　　、　　　、　　　　、　」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//◆ボイスのみ。テキスト出さない
	CreateVOICE("桜子","mb02/0181640b28");
	MusicStart("桜子",0,1000,0,1000,null,false);

/*
	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181640b28">
「呀——!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//◆能舞台
//◆立ち絵童心。垂れ目の穏やかな表情
//◆かっと目を見開いてぐわっと笑う異相にチェンジ

	WaitKey(500);

	SetFwC("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181650a09">
「啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈
哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆間取り演出
//◆能舞台·舞台アップ
	WaitKey(2000);

	CreateTextureEX("絵演背景", 2100, -467, -418, "cg/bg/resize/bg067_普陀楽城内能楽堂_01bl.jpg");
	Move("絵演背景", 600, @30, @0, DxlAuto, false);
	Fade("絵演背景", 1000, 1000, null, true);

	SoundPlay("@mbgm36",3000,1000,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181660a09">
「那么……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　笑了好一会儿——
　他一个人在这能乐堂中，放肆地大笑不已。

　那恶魔般的畅笑没有受到任何干扰，接着，
　他拉起浑身无力的小姐的手，向舞台走去。

　不知何时，狂言师们已经全部退下。
　苍白空间之中，仅站着小姐与佛僧二人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181670a09">
「四番目的杂能表演……
　其精髓在狂女物！」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181680a09">
「来吧！
　漂亮地舞起来吧，樱子小姐!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ばさっ
//◆童心→〝頼政_
	CreateSE("SE01","se人体_動作_外套纏う01");
	CreateVOICE("桜子","mb02/0181690b28");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("桜子",0,1000,0,1000,null,false);

/*
//◆ボイスのみ
{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181690b28">
「呀……！」
*/



	SetFwC("cg/fw/fw童心_頼政.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181700a09">
「哈哈哈，怎么了？
　来啊，父亲来了哦。你的父亲来了哦。」

{	CreateVOICE("桜子","mb02/0181710b28");
	MusicStart("桜子",0,1000,0,1000,null,false);}

/*
//◆ボイスのみ
{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181710b28">
「不……父亲！　父亲！」
*/

//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181720a09">
「叫得更动听些吧！
　看啊，这可是你的哥哥哦。再次印上你的吻
如何！」

{	CreateVOICE("桜子","mb02/0181730b28");
	MusicStart("桜子",0,1000,0,1000,null,false);}

/*
//◆ボイスのみ
{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181730b28">
「啊啊……啊啊啊啊啊——!!」
*/

//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181740a09">
「对了！
　就是这种声音！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181750a09">
「哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――



	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

}

..//ジャンプ指定
//次ファイル　"mb02_019.nss"