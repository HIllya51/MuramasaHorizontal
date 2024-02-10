//<continuation number="510">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_023.nss_MAIN
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
	#ev160_玉簪=true;

	#bg047_景明故郷町b_02=true;
	#bg002_空a_02=true;
	#ev160_玉簪=true;
	#ev148_一条Ｈ１_a=true;
	#ev144_女官達の戯れを見据える一条_d=true;
	#ev141_正宗ＶＳ村正初戦_a=true;
	#ev112_一条をお姫様だっこする村正=true;
	#ev161_一条の口元アップ_a=true;
	#ev161_一条の口元アップ_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_024.nss";

}

scene mb04_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_022.nss"

//◆町。焼け跡。bg047a夕
//◆正宗
//◆六波羅兵らの死体
//◆解甲する
//◆一条
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	StL(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @0, Dxl1, false);
	FadeStL(300,true);

	WaitPlay("SE*", null);
	WaitKey(500);

//あきゅん「演出：六波羅兵の死体だと!?」

	CreateSE("SE01b","se特殊_陰義_発動03");
	CreateSE("SE01c","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStA(0,true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230010a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆天牛虫正宗
	StL(1000, @0, @370,"cg/st/3d正宗天牛虫_正面.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	FadeStL(300,true);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230020b40">
《……主君。
　这个人的同伴好像在东面与其他的军队发生了
争斗……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230030b40">
《要怎么办？》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230040a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230050b40">
《——嗯？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//◆ざっざっ。集団が駆け寄ってくる
	CreateSE("SE01","se人体_足音_兵士集合01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230060b26">
「正宗大人！
　终于见到您了。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230070a02">
「……哎？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒瀬童子、桜子
	StR(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");
	StL(1000, @0, @0,"cg/st/st黒瀬_通常_私服.png");

	SetVolume("SE*", 1000, 0, null);
	FadeStR(300,false);
	WaitKey(100);
	FadeStL(300,true);

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230080b28">
「看到城镇的火势越来越大，我就猜你们会不
会在这里……
　幸好过来确认了。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230090a02">
「小姐……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……冈部家的樱子小姐。和她的弟弟。
　身后还跟随着数个武士。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230100b28">
「你们能平安无事，真是太好了——」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230110b26">
「不，请等一下姐姐。
　现在不是庆祝重逢的时候。」


//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230120b26">
「既然已经见到正宗大人了，那么就迅速离开
这里吧……
　这附近除了六波罗之外，还有进驻军的军队。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230130b28">
「……没错。
　正宗大人，您知道现在的政局吗？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230140a02">
「……不。什么都不知道。
　因为一直在追银星号……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230150b28">
「那么我就简单地说明一下。
　我们本来正准备按计划去镰仓救舞殿宫殿
下——」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230160b28">
「却在行动之前得知建朝寺被烧毁。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230170a02">
「————」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230180b26">
「如今舞殿宫殿下生死未卜。
　而奇怪的是，袭击建朝寺的堀越公方足利茶
茶丸，也在那天之后不知去向了……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230190b28">
「总之，在这种情况下根本无法采取行动，于
是我们就潜伏下来收集情报……但没多久房总
半岛又连续发生了迄今为止从未有过的银星号
事件。」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230200b26">
「趁着这次异变，进驻军开始行动，六波罗也
没有放过这次机会，两军在各地发生冲突。
　……如今，关东一带的形势已完全陷入了混
乱之中。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230210b28">
「我们想尽力做些力所能及的事情。我们坚信
宫殿下平安无事，一边探寻他的下落，一边寻
找正宗大人。
　……能在这里遇到您真是太好了。」


{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230220b26">
「没错。迄今为止一直都是漫无目的地搜寻。
　先不说这些，现在来商讨一下今后的策略吧。」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230230b26">
「正宗大人。我们敬重您，将视您为我们的头
领。故而想遵从您的意志而行动。
　我们——集结在香取的一千名同志，接下来
要如何采取行动呢？」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230240b28">
「……现在我们正在迷茫之中。
　我们应该一边搜寻宫殿下的下落，一边准备
伺机行动吗……？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230250a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　——这样啊。
　事态已经发展到这等地步了啊。

　失去和平。
　战乱开始。

　已经有无数的人丧失了生命，而从今往后将会有更多
的人死去。
　这如果是人有意招致的结果，那可真是无法无天的恶
行。

　然而实际上，这一切正是我自己的意志引发的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230260b40">
《……但。
　您既不会后悔，也不会停下脚步。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230270b40">
《是这样的吧？　主君……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　啊。
　……没错。

　我将背负起所有的罪名，继续在这条路上前进。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230280a02">
「一切照旧。
　即使亲王大人不在了，我——我们要做的事
情也依旧不变。」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230290b26">
「……正宗大人。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230300b28">
「那么……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230310a02">
「战斗。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230320a02">
「若进驻军前来侵略，那就与进驻军战斗。
　若六波罗烧毁城镇，那就与六波罗战斗。」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230330a02">
「危害大和民族利益的人，便是我们的敌人。」


{	FwC("cg/fw/fw黒瀬_驚き.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230340b26">
「哦……」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230350a02">
「暴君和侵略者都驱逐出去。只需留下不会
伤害他人也不会进行掠夺的人们就够了。
　这样的一个国家，就是我们的目标。」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230360a02">
「就是我们的……正义。」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230370b26">
「谨遵您的意志！
　已经失去了家与名誉的吾等冈部一族……为
大义献身便是我们今后的生存价值！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　黑濑童子振奋地喊着。
　他身旁的樱子小姐也点了点头。

　他们都信任我。
　……追随我所行进的道路。

　他们今后也将会战斗吧。因为对我的信任。
　大概也会杀戮或者被杀吧。为了我的正义。

　但——这绝对不是正确的。
　即使敌人是穷凶极恶的恶棍，那么通过将其杀害这种
手段来进行报复的人也仅仅只是另外意义上的一种恶而
已。我清楚地明白这一点。

　明白这绝不是什么正义。
　明明知道——我却仍借着正义二字的名号，将他们引
向了战场。

　这决不是正确的。
　这是一个可怕的错误。不可饶恕的错误。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230380b40">
《即便如此。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　即便如此————
　
　我们也要战斗到底。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆空？
	CreateTextureEX("絵演背景", 4000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("絵演背景", 2000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
  若能一直以“正义”之名来讨伐“邪恶”的话。
　那会不会有一天，真正的正义就能因此而诞生呢？

　世间存有正义，
　存有不容许邪恶的正义，
　
　——当所有人都如此相信的时候。

　人们都会自发地摒除邪恶吧。
　不用被绫弥一条这样的人所迫害，就能够告别邪恶。

　如果是这样的话……

　那便意味着，
　不引起任何纷争便能将人引向正确道路的心之法，
完成了。

　<RUBY text="····">真正的正义</RUBY>。

　我将朝着它行进。
　以此为目标。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆画面戻り
	FadeDelete("絵演背景", 2000, true);

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230390b26">
「那么，现在就出发吧！
　同胞们还在香取等着我们。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230400a02">
「嗯。
　……抱歉，先等我一下。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230410a02">
「在出发之前我还有一件不得不做的事情。」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230420b26">
「好。
　是什么……？」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230430b28">
「……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230440b28">
「正宗大人……
　<RUBY text="····">那位大人</RUBY>怎么了？」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230450b28">
「他没跟您一起吗……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二人、消す
	CreateEffect("絵板写", 4000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵板写","絵板写");
	Request("絵板写",Passive);
	DeleteStA(0,true);
	FadeDelete("絵板写", 500, true);

	Wait(200);

	CreateSE("SE01","se人体_足音_歩く03_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(1000);
	SetVolume("SE*", 4000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　没有回答她的问题，我迈出了脚步。
　
　——我知道他就在那里。

　也许是因为正宗的提示。
　但即便没有正宗的提示，我大概也知道。

　那个人来了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＳＥ：かちゃっ
	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1300,null,false);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230460a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆髪挿
	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev160_玉簪.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　有一样东西，我必须舍弃它。
　拿在手中，摩挲着它的形状。

　涂漆的玉簪。

　凑斗景明。

  是他送的。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆回想。ＥＶＣＧを連続で何枚か。
//◆最後は第二話、一条を救う村正の絵。
//あきゅん「演出：まだまだ仮組みＥＶ見てから要検討」
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev148_一条Ｈ１_a.jpg");
	Fade("絵白転", 150, 200, null, true);
	WaitKey(300);
	Fade("絵白転", 150, 1000, null, true);

	Fade("絵白転", 150, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_d.jpg");
	Fade("絵白転", 150, 200, null, true);
	WaitKey(300);
	Fade("絵白転", 150, 1000, null, true);

	Fade("絵白転", 150, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev141_正宗ＶＳ村正初戦_a.jpg");
	Fade("絵白転", 150, 200, null, true);
	WaitKey(300);
	Fade("絵白転", 150, 1000, null, true);

//あきゅん「演出：２編でフラグを取得していた場合」
	if($Fla_ev115pass == true){
	Fade("絵白転", 150, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev115_一条の髪に触れる景明_b.jpg");
	Fade("絵白転", 150, 200, null, true);
	WaitKey(300);
	Fade("絵白転", 150, 1000, null, true);
	}else{
	}

	Fade("絵白転", 150, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	Fade("絵白転", 150, 200, null, true);
	WaitKey(1000);
	Fade("絵白転", 150, 1000, null, true);

	WaitKey(500);

	Delete("絵回想*");
	FadeDelete("絵白転", 1000, true);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230470a02">
「……嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　所有的回忆都在其中。
　无止尽的思恋都在其中。

　那绝非痛苦的回忆。
　虽然疼痛，却并不痛苦。

　现在我终于明白。
　那个人也迷失了自己。和绫弥一条一样。甚至比我更
为迷茫。

　但他却总是全力地给与我回应。
　回应我的责备。我的依赖。我的质问。

　为什么，我对他还恨得起来。

　回顾那并不漫长的，与那个人一同走过的时光，为什
么我能将这段时光沉入忘却的深渊之中。

　明明现在整颗心都是感激之情。
　
　但，我却不能怀抱着这样的心情继续走之后的路。

　这根发簪——
　这份回忆，这份思念，都必须留在这里。

　为了诀别。

　为了像他那样，能够全力地对我做出回应一般，
　我也能全力地回应他。

　告别吧。
　告别那令自己犹豫不决裹足不前的思念。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("絵ＥＶ", 1000, true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230480a02">
「——————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぎゅっと握り締め。ＳＥで表現か。
	CreateSE("SE01","se人体_動作_締める01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

//◆一条、口元周辺アップ
//◆ウェイト置いて
	CreateTextureEX("絵ＥＶＡ", 4000, Center, Middle, "cg/ev/ev161_一条の口元アップ_a.jpg");
	Fade("絵ＥＶＡ", 1000, 1000, null, true);

	WaitKey(1000);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230490a02">
「……唔！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆唇に髪挿くわえて
	CreateTextureSP("絵ＥＶＢ", 3990, Center, Middle, "cg/ev/ev161_一条の口元アップ_b.jpg");
	FadeDelete("絵ＥＶＡ", 2000, true);

	WaitKey(1000);

//◆ＳＥ、ばきーん。噛み砕いた音。
//◆要するに食った。
	CreateSE("SE01","se人体_動作_簪噛み砕く");
	CreateSE("SE02","se人体_動作_簪噛み砕く");
	CreateSE("SE03","se人体_動作_簪噛み砕く");
	CreateSE("SE04","se人体_動作_簪噛み砕く");
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateColorSP("絵色黒", 4990, "#000000");

	FadeDelete("絵色白", 2000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(250);
	MusicStart("SE02",0,800,0,1000,null,false);

	Wait(250);
	MusicStart("SE03",0,500,0,1000,null,false);

	Wait(250);
	MusicStart("SE04",0,200,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　狠狠咬碎。
　嚼成粉末，吞下肚。

　无法遗弃。无法忘却。
　但，已不能再拥有。

　——因此，只能这样做。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230500b40">
《主君……》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230510a02">
「走吧。正宗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　那个人，他已经等在那里了。

　安静地站在那里，等待着我的到来。

　等待着与我的战斗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_024.nss"