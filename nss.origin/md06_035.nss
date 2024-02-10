//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_035.nss_MAIN
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
	#bg004_鄙びた村a_02=true;
	#bg002_空a_02=true;
	#ev266_景明、悪鬼の笑い=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_036.nss";

}

scene md06_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_034b.nss"

//◆空き地·夕
//◆村正

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");
	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒", 1500, true);

	Wait(1000);

	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");

	MusicStart("SE01b",0,1000,0,700,null,false);
	Fade("絵フラ", 600, 1000, null, true);

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(0,true);

	WaitKey(500);

	FadeDelete("絵フラ", 1000, true);
	SetVolume("SE*", 1000, 0, null);

	SoundPlay("@mbgm05", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　村正变为虾夷的形态，立于我身前。
　用隐藏着困惑的双眼，仰望着我。

　应该全部都听到了吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350010a01">
「……主君。
　那个男人本打算让你杀了他，然后
再杀了我。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350020a01">
「利用善恶相抵的誓约。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350030a00">
「似乎是。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350040a01">
「……尽管我并不介意如此……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350050a01">
「因为，我觉得要是我不在，
你就可以忘却战斗活下去的话。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350060a00">
「…………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350070a01">
「真的……要战斗吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350080a01">
「还要继续战斗吗？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350090a01">
「你真的认为那样也可以吗？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350100a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　点头。
　已经，没有半点犹豫。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350110a00">
「我……
　要统治这世间的一切武力。」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0350120a00">
「立于顶峰。
　而一旦被渴求，不论是谁都会赐予他力量。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350130a00">
「想要胜利的人，会渴求我的力量。
　只是，要付出相应的代价。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350140a00">
「包括那个人自己，
　和他珍惜之人。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350150a00">
「将他应该守护的东西。
　善也好，正义也罢。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350160a00">
「统统夺走，作为替他杀敌的代价。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350170a01">
「…………」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350180a00">
「善恶相抵。
　我要在世间推行这一戒律。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350190a00">
「谁都不能例外，这样人们才能认清
战争的真相……
　直到变得厌恨战争。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350200a00">
「直到世间再无战争。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350210a01">
「……主君……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350220a00">
「村正。
　你有什么打算？」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0350230a00">
「愿意陪我一起走下去吗？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350240a01">
「————————————————」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350250a01">
「我……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。黒画面で台詞のみ
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 600, 1000, null, true);

	CreateColorSP("黒", 15000, "BLACK");

	Fade("絵色白", 300, 0, null, true);

	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md06/0350260b43">
「雄飞死去的意义。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md06/0350270b43">
「我不会问是什么意义。
　现在……我不想听。」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md06/0350280b43">
「用雄飞的生命来换取的是什么，我不想
知道。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md06/0350290b43">
「但是，请姐姐……珍视这意义，并保护好。
　<RUBY text="··">拜托</RUBY>。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md06/0350300b43">
「因为你是为此牺牲雄飞的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵色白", 300, 1000, null, true);

	Delete("黒");

	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350310a01">
「我是将善恶相抵的誓约刻于心铁之上的村正。
　听凭你的操控胜于一切的剑胄。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350320a01">
「只要你渴求我的力量，必定赴汤蹈火。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350330a00">
「……村正……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　她将手伸出。
　我握了上去。

　从她手中传来坚定的力道。

　相互交握，彼此立誓。

　——最终的誓言。
　
　有朝一日，目的达成之刻……

　我们会献出代价。

　奉上我们最为珍视的——
　彼此。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆適当背景。bg004_夕？
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕", 25000, "#000000");
	OnBG(100, "bg004_鄙びた村a_02.jpg");
	FadeBG(0, true);
	Delete("上背景");
	DrawDelete("黒幕", 1000, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm14",0,1000,true);

	StCR(1000, @-60, @0,"cg/st/st香奈枝_通常_私服a.png");
	StR(1010, @90, @4,"cg/st/stさよ_通常_私服.png");
	Request("@StR*", Smoothing);
	Rotate("@StR*", 0, @0, @180, @0, null,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服b.png");

	CreateWindow("絵窓中", 19000, 0, 192, 1024, 192, false);
	SetAlias("絵窓中","絵窓中");
	CreateTextureEX("絵窓中/絵背景", 5000, Center, Middle, "cg/bg/bg005_山中_02.jpg");
	Move("絵窓中/絵背景", 0, @0, @10, null, true);
	Zoom("絵窓中/絵背景", 0, 2000, 2000, null, true);
	SetShade("絵窓中/絵背景", HEAVY);
	CreateTextureEX("絵窓中/絵立", 5100, Center, -340, "cg/st/resize/st雪車町_通常_私服_l.png");

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350340a12">
「哎呀……来了啊。」

{	FadeStCR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md06/0350350a03">
「嗯。」

{	FadeStL(300,false);
	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md06/0350360a02">
「…………」

{	FadeStR(300,false);
	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md06/0350370a04">
「嚯嚯嚯。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350380a12">
「……哎呀，整个过程如你所见。
　你以后有什么打算？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md06/0350390a03">
「这个嘛……
　暂且观望吧。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md06/0350400a03">
「看他能做到什么程度。
　复仇的话，随时都可以。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md06/0350410a04">
「正是如此。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350420a12">
「绫弥姑娘呢？」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md06/0350430a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓下", 19000, 0, 384, 1024, 192, false);
	SetAlias("絵窓下","絵窓下");
	CreateTextureEX("絵窓下/絵背景", 5000, Center, Middle, "cg/bg/bg004_鄙びた村a_02.jpg");
	Move("絵窓下/絵背景", 0, @10, @0, null, true);
	Zoom("絵窓下/絵背景", 0, 2000, 2000, null, true);
	SetShade("絵窓下/絵背景", HEAVY);

//◆ざっ。
	OnSE("se人体_動作_後ずさり01", 1000);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350440a12">
「……嘿，嘿。
　果然，还是想去吗……？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md06/0350450a03">
「比起问别人，你又有何打算？」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350460a12">
「我啊，打道回府哦。
　那家伙已经……变成彻底的恶鬼了。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350470a12">
「我可没那闲工夫管他的事……
　我要回到组织继续我的工作。自幕府
崩溃之后，我们可谓争分夺秒呐。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md06/0350480a03">
「这样啊。
　那您就全力以赴吧。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350490a12">
「嘿，嘿，嘿……！
　再会……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵窓下/絵立", 5100, 260, -230, "cg/st/resize/st香奈枝_通常_私服bl.png");
	CreateWindow("絵窓上", 19000, 0, 0, 1024, 192, false);
	SetAlias("絵窓上","絵窓上");
	CreateTextureEX("絵窓上/絵立", 5100, -240, -420, "cg/ev/resize/ev268_ヤクザと対峙する一条l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
　三人分道扬镳。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	Move("絵窓中/絵背景", 1000, @0, @-20, DxlAuto, false);
	Move("絵窓中/絵立", 6000, @0, -420, DxlAuto, false);
	Fade("絵窓中/*", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
　雪车町一藏离开，<k>
{	Move("絵窓下/絵背景", 1000, @-20, @0, DxlAuto, false);
	Move("絵窓下/絵立", 6000, 340, @0, DxlAuto, false);
	Fade("絵窓下/*", 1000, 1000, null, true);}
　大鸟香奈枝等待，<k>
{	Move("絵窓上/絵立", 6000, -320, @0, DxlAuto, false);
	Fade("絵窓上/*", 1000, 1000, null, true);}
　绫弥一条，出发。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵回想100", 20000, Center, InBottom, "cg/bg/resize/bg002_空a_02.jpg");
	Move("絵回想100", 10000, @0, 0, null, false);
	Fade("絵回想100", 1500, 1000, null, true);

	Wait(1500);

	ClearFadeAll(3000, true);
	Wait(2000);

//◆空き地·夕
//◆※一条と正宗の絵は出さない

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

	OnSE("se人体_動作_一歩", 1000);

	Waitkey(1000);

	CreateSE("SE01","se擬音_コミカル_風ぴゅー");
	MusicStart("SE01",0,1000,0,800,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	//CreateSE("SE01","se自然_風_野原01");
	//MusicStart("SE01",3000,800,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　一阵风掠过。

　混杂着一丝锐气，灼伤了皮肤。
　我回头望去。

　熟悉的少女站在前方。
　佩戴深蓝的剑胄，于苍茫暮色之下。

　此刻，看向我的面容中满是——

　愤怒。<k>
　哀叹。<k>
　还有决意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350500a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　毋需开口，便感受到即将到来的战斗在所难免。
　我的嘴角泛起一抹苦涩——<k>猛然意识到。

　不对。
　不是这样。

　这可不是面临战斗的恶鬼该有的表情。

　从现在起，我就要投身于我所追求的战斗中。
　没有理由为此感到不快。

　表情该是这样。
　这样——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：景明悪鬼笑。横顔下半分
//◆さっと仰ぎ見る感じの演出かしら。
//◆一番簡単なのは斜め下からめくるような素早いワイ
//◆プで表示→２秒ウェイト→夕空へ

//◆夕空

//もともとのもの inc櫻井
//	CreateTextureSP("悪鬼笑い", 5000, @0, @0, "cg/ev/ev266_景明、悪鬼の笑い.jpg");
//	DrawTransition("悪鬼笑い", 100, 0, 1000, 100, AxlAuto, "cg/data/beam_03_00_0.png", true);
//	Wait(2000);
//	FadeDelete("悪鬼笑い",1500,true);
	CreateColorEX("白", 15000, "WHITE");
	Fade("白", 500, 1000, null, true);

	FadeDelete("白", 500, false);
	OnSE("se自然_風_野原02", 1000);

//あきゅん「演出：本当はここらへんで妖甲村正流したかったが、村正始～ＥＤ～タイトル(妖甲)の流れを作りたかったのでやめた」

	CreateTextureSP("悪鬼笑い", 5000, @0, @0, "cg/ev/ev266_景明、悪鬼の笑い.jpg");
	CreateTextureSP("悪鬼笑い下", 4500, @0, @0, "cg/ev/ev266_景明、悪鬼の笑い.jpg");

	Request("悪鬼笑い", Smoothing);
	Move("悪鬼笑い", 0, @100, @0, null, false);

	Zoom("悪鬼笑い", 0, 2000, 2000, null, false);
	Move("悪鬼笑い", 1500, @0, @100, null, false);
	FadeDelete("悪鬼笑い",1500,true);

	Wait(2000);

	OnBG(100, "bg002_空a_02.jpg");
	FadeBG(0, true);

	FadeDelete("悪鬼笑い下",1500,true);

	CreateColorEXadd("白", 15000, "WHITE");
	Fade("白", 0, 1000, null, true);

	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1250,null,false);

	FadeDelete("白", 500, true);
	WaitKey(1000);
	CreateSE("SE03","se戦闘_動作_鎧_踏み込み01");
	MusicStart("SE03",0,1000,0,1250,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　现身的敌人完成装甲。
　我也追随其后。

　口中念着誓约。
　呼唤那个名字。

　吾身化铁————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
//◆装甲音。ガキーン。
	CreateColorEX("白", 15000, "WHITE");
	Fade("白", 1000, 1000, null, true);

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	WaitKey(4000);

	SetVolume("@mbgm*", 3000, 0, null);

	WaitPlay("@m*", null);
	WaitKey(3000);

}

..//ジャンプ指定
//次ファイル　"md06_036.nss"