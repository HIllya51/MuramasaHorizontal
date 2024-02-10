//<continuation number="630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_015.nss_MAIN
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
	#ev211_大仏の上に立つ銀星号_a=true;
	#bg095_高徳院の境内_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_016vs.nss";

}

scene md01_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_014.nss"

//◆高徳院·夕
//◆ＥＶ：特に意味もなく大仏の上に立っている銀星号
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵ＥＶ", 4000, Center, InBottom, "cg/ev/ev211_大仏の上に立つ銀星号_a.jpg");
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(1000);

	Fade("絵ＥＶ", 1000, 1000, null, true);
	Move("絵ＥＶ", 3000, @0, 0, DxlAuto, true);

	SetFwL("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md01/0150010a14">
「…………」

//【光】
<voice name="光" class="光" src="voice/md01/0150020a14">
「……噢噢。
　真快啊！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ずごーん。騎航音
	CreateSE("SE01","se戦闘_動作_鎧_着地01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 100, 1000, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, true);

	SetFwL("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150030a01">
《————》

{	FwL("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150040a14">
「突然想要叫住你真不好意思，景明。
　不对，事实上也是叫出声了。」

//【光】
<voice name="光" class="光" src="voice/md01/0150050a14">
「不知怎的，今天从一起来开始就
特别想要看到你，整个人变得焦躁
不安。
　简直就如同少女之心一般无法自抑。」

//【光】
<voice name="光" class="光" src="voice/md01/0150060a14">
「你也是个冷淡无情的家伙啊。
　但是，如果能这样尽早适应打招呼的话
我可是感激不尽——」


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Wait(300);

	SetFwL("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//◆表情変化
//【光】
<voice name="光" class="光" src="voice/md01/0150070a14">
「————」

{	FwL("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150080a15">
《……………………》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34",0,1000,true);

	StR(1100, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);

	CreateWindow("絵窓", 500, Center, 36, 1030, 288, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵演", 610, -630, -360, "cg/ev/resize/ev211_大仏の上に立つ銀星号_alex.jpg");
	Request("絵窓/絵演", Smoothing);
	Zoom("絵窓/絵演", 0, 700, 700, null, true);

	FadeDelete("絵ＥＶ", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【光】
<voice name="光" class="光" src="voice/md01/0150090a14">
「你是谁？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150100a01">
《……咦。
　竟没被我骗过去？》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150110a14">
「不要小瞧我。
　就算外表一样，我也绝对不会把景明
和别的家伙搞错的！」

//【光】
<voice name="光" class="光" src="voice/md01/0150120a14">
「声音不一样！」

//【光】
<voice name="光" class="光" src="voice/md01/0150130a14">
「气味不一样！」

//【光】
<voice name="光" class="光" src="voice/md01/0150140a14">
「反正感觉不一样！」

//【光】
<voice name="光" class="光" src="voice/md01/0150150a14">
「而且，也没有肚脐下面唰地冒出来的东西！」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150160a15">
《唰地？》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150170a14">
「蜘蛛，你这来历不明的家伙?!
　把景明怎么了?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150180a01">
《我觉得我没有回答你的义务。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150190a14">
「……难不成。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150200a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md01/0150210a14">
「景明感冒了?!
　所以你是代理?!」

//【光】
<voice name="光" class="光" src="voice/md01/0150220a14">
「那就去看望他吧!!」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150230a15">
《这就去?!
　……不，等等，请冷静下来主君。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150240a15">
《那个似乎是，空的。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150250a14">
「嗯？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150260a01">
《————》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150270a14">
「……什么，那个是……
　里面<RUBY text="·····">什么也没有</RUBY>吗。」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150280a15">
《只是弄成了看上去武装了装甲的样子。
　那么……到底有何打算呢？》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150290a14">
「只是来传话的话，用蜘蛛的外形不就
好了。哼……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150300a01">
《……闲谈到此为止吧。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150310a14">
「那我就直接问了。
　你到底是来干什么的？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150320a01">
《当然是来战斗的啊……！》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150330a14">
「……景明呢？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150340a01">
《就算主君不在也没关系。
　就用我的力量来和你——<RUBY text="母亲">二世</RUBY>对决吧！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――

//◆ちゃきん。抜刀
	CreateSE("SE01","se戦闘_動作_刀構え03");
	StR(1100, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md01/0150350a14">
「…………」

//【光】
<voice name="光" class="光" src="voice/md01/0150360a14">
「……村正……」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150370a15">
《虽然很遗憾，但那似乎是认真的。》

{//◆嘆息
	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150380a14">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150390a01">
《怎么了……》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150400a14">
「没什么。
　就是不知道除了发呆外还能干什么。」

//【光】
<voice name="光" class="光" src="voice/md01/0150410a14">
「你以为就凭那种丑样能当得了我的对手？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150420a01">
《少在那儿大放厥词了。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150430a14">
「你也不去照照镜子。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150440a01">
《……》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150450a14">
「村正啊。
　你的女儿有够笨拙呢。」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150460a15">
《可惜啊，对汝此言胄无可辩驳。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150470a01">
《你说什么……?!》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150480a14">
「那是怎样？」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150490a15">
《这种垃圾的对手就不用麻烦主君了。
　不如交给<RUBY text="我">胄</RUBY>去处理吧。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0150500a14">
「准了。
　去吧。」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150510a15">
《是。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ばりーん。解甲
//◆高徳院＋女王蟻村正
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	Delete("絵窓");
	StL(1000, @0, -212,"cg/st/3d二世女王蟻_煽り.png");
	Request("@StL*", Smoothing);
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	FadeStL(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150520a01">
《太天真了！》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150530a15">
《这话母亲已经说过了。
　……汝如此弱小，无论怎么想都是
胄会赢啊。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150540a01">
《不试试的话是不会知道的。》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150550a15">
《毫无疑问。
　汝那个拟装只要看一眼就能明白有
多么的不堪了……》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150560a15">
《汝到底变成了人形，
不做到<RUBY text="····">这个地步</RUBY>就没什么意义了。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150570a01">
《……咦？》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150580a15">
《辰气聚集。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆女王蟻エネルギー帯び
//◆変形
//◆二世村正（生前）
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE02","se特殊_その他_村正人間変化01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStA(0,true);

	WaitKey(1000);

	FadeDelete("絵フラ", 2000, true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150590a01">
《……什——》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150600a01">
《这……<RUBY text="····">肉体生成</RUBY>?!
　怎么会，到底如何做到的！》

{	FwR("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150610a15">
「从<RUBY text="··">那里</RUBY>再前进一步就能成功了。
　但连那一步都无法迈出，
虽然是胄的女儿也让人沮丧。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0150620a15">
「在这里击溃汝是因为所谓的同情吗？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0150630a01">
《你……！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md01_016vs.nss"