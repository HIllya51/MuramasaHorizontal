//<continuation number="930">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_020.nss_MAIN
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
	#bg098_堀越御所内廊下_02=true;
	#bg098_堀越御所内廊下_03=true;
	#bg097_堀越御所内景明の部屋_03a=true;
	#bg064_普陀楽城内道_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_021.nss";

}

scene md02_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_019.nss"


//◆昼→夜
//◆通路

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSP("絵背景10", 4000, @0, @0, "cg/bg/bg098_堀越御所内廊下_02.jpg");

	SoundPlay("@mbgm26", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);
	CreateTextureSP("BG", 3000, @0, @0, "cg/bg/bg098_堀越御所内廊下_03.jpg");
	WaitKey(1500);

	FadeDelete("絵背景*",1500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　夜晚。
　时间还早，我回到给我安排的房间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(3100, @0, @0,"cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200010a00">
「今天有点累了。」

{	FadeStL(300,false);
	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200020a01">
「发生了这样那样的事啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　如此说着的村正也无精打采，是错觉吗。

　并非在别墅疗养，而是在敌方阵地的中心，
这样考虑反倒比较接近事实吧。
　如此一想，这种程度的劳神或许算是轻的
——想着便闭上了眼睛。

　我似乎还没这么聪明，能克服理论武装带来的疲劳。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200030a01">
「先休息比较好吧？
　在还没有什么古怪的人来打搅之前。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200040a00">
「好吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　完全没有心情去追究那古怪的人是指特定的谁，
或是没有指定的泛指。
　进了房间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
//◆部屋
	Delete("BG");
	DeleteStL(0,true);
	OnBG(100, "bg097_堀越御所内景明の部屋_03a.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　然后，一股违和感让我停住了脚步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200050a01">
「怎么了吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200060a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　没有任何可疑的地方。

　家具的布置和早上一样。有扫除过的痕迹，
但不同的也就只是那个。
　有谁趁房间没人的时候干的吧。

　没有可疑点。

　样子和记忆中没太大差别。
　只有我和村正发出的声响。
　隐约飘散着花草香。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200070a00">
「花草香。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200080a01">
「……？
　是那边插在花瓶里的花吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200090a00">
「那个味道也有。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200100a01">
「也？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200110a00">
「还有一种。
　那是在军队的时候闻过的。」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0200120a00">
「同一队伍里，会津出身的高级士兵
经常使用的……自制的药。
　用植物制成的止血膏药。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200130a00">
「就是那种味道。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200140a01">
「……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200150a00">
「村正。
　探查热源。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200160a01">
「……了解。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);
	WaitKey(1500);

//◆ぴー。

	OnSE("se日常_機械_PCリセット音", 1000);
	WaitKey(300);
	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200170a01">
「!!
　那边的架子后面！」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200180b26">
「哧!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛び出す黒瀬
//◆景明と対峙
	OnSE("se日常_建物_スライド開く02", 1000);

	StL(1000, @-120, @120, "cg/st/st黒瀬_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);

	Wait(300);

	OnSE("se人体_動作_跳躍02", 1000);
	Fade("絵背景100", 50, 1000, null, true);

	FadeDelete("絵背景100", 300, false);
	FadeStL(150, false);
	FadeStR(300, false);

	Move("@StL*", 200, @120, @-120, Axl3, true);
	Move("@StL*", 70, @0, @10, null, true);
	OnSE("se人体_動作_一歩", 1000);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　到底是如何藏身于如此狭窄的空间里呢？
　几乎和村正叫喊以及我跃起同时，
从那里飞出一个大大的黑影。

　全身被黑色包裹的人。
　脸也几乎完全遮掩上，
但从举止上可以窥见，
是个年轻且受过锻炼的男人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200190a00">
「……你不是<RUBY text="这里">公方府</RUBY>的人吧？」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200200b26">
「……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200210a01">
「这个不特意确认也知道呐。 
　这种情况下。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200220a00">
「是吗？」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200230a01">
「咦？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200240a00">
「也有可能是打扫的人在细心工作中。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200250a01">
「没可能啦。
　这副装扮的清洁工，
会展开怎样的冲击？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200260a00">
「尘埃策略。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200270a01">
「没可能！」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200280b26">
「戏弄我吗，可恶的家伙……！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200290a01">
「在生气啊。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200300a00">
「为什么呢？
　被误会是清洁工的话，也没必要如此生气吧。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200310a01">
「不是这个问题啦。
　话说回来，主君，
你难道真的认为是清洁工吗？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200320a00">
「不要胡说了。怎么看都只会认为是可疑人物。
　村正，开玩笑要选好时机和场合。」

//◆コミカル怒り
{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200330a01">
「……」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200340b26">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　不知为何，感觉自己被孤立了。
　被迫感受到，对面跟背后有相同质量的怒气在逼近。

　总之，将意识集中到对面。
　一眼能够判断的，是对方并无重装。
黑衣下也不可能潜藏枪械大剑之类，
从身体线条便能明白。

　虽然这么说，危险性并无丁点减少。
　考虑在室内这点的话，能隐藏的小型装备反而有利，
对我来说是威胁。

　男人若有实力及杀意的话，
在还没看清其行动的瞬间就会被割下脑袋。
　而要判断对方这两方面不足的根据，现时还没有。

　男人怎么看都是武士。
　若是作为入侵者出现在<RUBY text="这里">公方府</RUBY>的话——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200350b26">
「事到如今也不期待能苟全一命。
　如你所愿，让死亡之花绽放吧。」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200360b26">
「不过，黄泉的礼物可是很贵的！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200370a00">
「如此无益。」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200380b26">
「无益么。
　多带几个你们六波罗的上路，
活在这世上的人民才会过得轻松！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200390a00">
「一样是无益。
　你的敌人若是六波罗，
在这里战斗完全没有意义。」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200400b26">
「……什么？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200410a00">
「不要乱动。
　难得结痂的伤口会裂开的。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200420a00">
「看情况还是相当严重的伤。
　看脸色，似乎也失血甚多……
如果再继续失血的话，肯定会危及到生命。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200430a00">
「引起骚动，引来其他人都不太合适吧。
　请谨慎行动。」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200440b26">
「…………」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200450b26">
「你是何人？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200460a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_瞑目.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200470b26">
「不回答吗……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200480a00">
「不。
　抱歉，实在不知该怎么回答。」

{
	FwC("cg/fw/fw景明_通常b.png");
}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200490a00">
「名字的话叫凑斗景明。
　因为某些原因留在堀越公方身边……
……类似于寄宿吧。」

{	FwC("cg/fw/fw黒瀬_驚き.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200500b26">
「……寄宿？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200510a00">
「难以说明的立场啊。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200520a01">
「……确实如此……」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200530b26">
「并不侍奉于六波罗或者堀越公方吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200540a00">
「有寝食之恩。
　但无主从关系。」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200550b26">
「……」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200560b26">
「想将我怎样？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200570a00">
「你是今天早上在这里引起骚动
而被追捕的人吧。」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200580b26">
「……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200590a00">
「假装已逃出却潜藏于内部，是等待深夜……？」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200600b26">
「……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200610a00">
「原来如此。
　即便逃脱出宅邸也还是堀越的军管区。相比
盲目逃走还是这样比较好。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　事实上，从足利茶茶丸的样子看，并无要抓获的意思，
不使特别的招数，是打算让其逃脱吧。
　没必要故意找茬说这些。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200620a00">
「悄悄潜进公方府，
并不是单单为了盗取财物吧。
　你来这里有什么目的？」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200630b26">
「……」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200640b26">
「盗窃。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200650a00">
「这样啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　一开始就不认为对方会说实话。

　十有八九是倒幕派的人士。
　……该怎么办？

　敌对的话完全无益。就如自己刚才所说的。
　但也没道理去援助对方。

　中立的选择——在这种情况下也没有。
　事实上，将其留在房间里就算伙伴，
赶出去的话就算敌对。

　单从寝食的情面上看，帮助带着明显非友好意图的
侵入者还是觉得不好意思。
　但现状是，如果我不伸出援手的话，他便进退两难。
最终肯定也难逃一死。

　他对幕府带有敌意，与堀越的兵将或许会兵戎相见，
但对非战斗人员就没有下手的理由。
　那样的迹象也完全没有。

　无法将其置于死地。
　但，匿藏他的结果——他得到机会逃亡，
换来对公方府的破坏行动。万一是这样的话。

　那所产生的灾害，不能说没有我的责任。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200660b26">
「……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200670a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　与其说想想，倒不如说是在埋头思考。
　两人带着不同目光，等待我的话。

　不过，已有结论。

　——总之，为了<RUBY text="·······">不让那情况发生</RUBY>，
除了让双方达成共识外别无他法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStL(300, false);

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200680a00">
「能动吗？」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200690b26">
「……可以。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200700a00">
「村正。
　你带路。」

{	FadeStR(300, false);
	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200710a01">
「明白。
　我先走，确保安全后用剑胄传音吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆村正、去る
	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　无需向拍档说明。
　理解我意图后，村正很快离开房间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200720b26">
「……你想怎样。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200730a00">
「请稍候一下。」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200740b26">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆屋敷の外。bg064？

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStA(0,true);
//◆部屋
	Delete("@OnBG*");
	OnBG(100, "bg064_普陀楽城内道_03.jpg");
	FadeBG(0, true);
	WaitKey(1500);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　出逃是容易的。
　这种时候，剑胄的探查机能确实有用。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(900, @0, @0,"cg/st/st村正_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStL(300, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200750a00">
「虽说已到夜晚，但离夜深人静的时分还早。
　走的时候请小心。」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200760b26">
「……嗯……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200770a00">
「那么……」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200780b26">
「…………请稍等。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200790a00">
「是。」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200800b26">
「真失礼，至今还不知如何称呼。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200810a00">
「凑斗景明。
　那位是村正。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200820a01">
「……」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200830b26">
「我是……黑濑。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200840a00">
「黑濑……」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200850b26">
「某些缘故，不能道出实名。
　有请原谅。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200860a00">
「我理解。」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200870b26">
「感谢帮忙。
　此恩难忘。」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200880b26">
「告辞。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒瀬、去る
//★ inc遠藤 音もなく、と地の文にあるので効果音は外しました。
	SetVolume("@mbgm*", 2000, 0, null);
	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　留下一礼后，他倾身而去。
　无声无色，黑色的影子融入夜色之中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200890a00">
「……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200900a01">
「……今天真是受累日啊。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200910a00">
「就是啊。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200920a01">
「所以我就说快点休息啦。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200930a00">
「没那个时间啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEX("絵色100", 15000, "BLACK");
	Fade("絵色100", 1500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　跟村正对话的同时，回到了房间。
　我很快便躺下。

　到意识沉沦之前，不足几分钟。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md02_021.nss"