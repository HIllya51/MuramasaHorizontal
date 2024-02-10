//<continuation number="790">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_015.nss_MAIN
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
	#ev914_九〇式竜騎兵魔剣インメルマンターン=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_016.nss";

}

scene md02_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_014.nss"


//◆フェードイン

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm26", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150010a07">
「就是要成为英雄啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　听完，足利茶茶丸若无其事地说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150020a00">
「……英雄。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150030a07">
「嗯。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150040a07">
「秃子也难得说些不错的话。
　那确实是对哥哥很必要的指点。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　十分认同的样子，不停点着头。
　……与她形成对比，我反倒深感怀疑。

　无我。
　那僧侣说，抹去自我，消除一切杂念，获得超越
感知的感官——从而遵循世间意志和大义而战斗。

　人类的内心深处皆有良知，它可以直观地判断什么
是正确，什么是错误。因此，不需迷惘，遵从良知就好。
不受个人利害得失的杂念影响而烦恼——这也就能领会
阳明学的理念。

　原来如此，英雄。
　舍弃自我而战的人，那无疑是英雄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150050a07">
「无法认同的表情呢。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150060a00">
「不，相反。
　如你所明察，无我就是英雄之道……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150070a00">
「与无念一致，是离我十分遥远的存在。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　这么个疯狂的杀人犯成为英雄——说是玩笑
也太恶趣味了。
　和银星号对战的方法，须作其他考虑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150080a07">
「才没有。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150090a00">
「……怎么说？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150100a07">
「哥哥至今为止不都大显身手了么。
<RUBY text="··">英雄</RUBY>。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150110a07">
「知道民间的街谈巷议吗？
“赤色武者”——相当有名哟。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150120a00">
「……那倒有听说过。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　堀越公方似乎对我这两年的行踪十分了解
——如今对于这事倒不觉得很意外。
　银星号在她身边，熟知情况也是当然的。

　瞬间，占据大脑意识的，是一名记者。时田光男。
　带着目的接近我的男人。
从他口中也说出了赤色武者的名字，
之后死在我手下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150130a00">
「我所引发的事件的表像部分，
不过是一个人到处滋生的谣传。
　简直就是毫无事实根据的称呼。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150140a07">
「无风不起浪啊。
　被称作英雄就有被称作英雄的理由哟。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150150a00">
「很遗憾。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150160a07">
「觉得不快？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150170a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　直接地回答了。
　将我称之为英雄的话，是对被我杀害之人的嘲弄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150180a07">
「但哥哥是不会因为不快就不接受别人的话吧？
　因此我可以趁机与你继续聊。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150190a00">
「……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0150200a01">
「总算让我见识到了，正直规矩的人敌不过
那些滑头鬼的原因……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150210a00">
「阁下。不用说，我是真诚地在听你说的。
　但能否接受就另当别论了。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150220a07">
「意思是，不符合道理的就不接受吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150230a00">
「总而言之……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150240a07">
「道理简单明快。
　用三段论来说怎样？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150250a07">
「并非因私欲而是为世界而战，便是英雄。
　不想战斗的哥哥去战斗是为了世界。
　这样的哥哥就是英雄。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150260a07">
「以上。」

//◆ＳＥ：ビキ。なんかショック
{	OnSE("se人体_体_骨軋む01", 1000);
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150270a00">
「————」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150280a07">
「有什么不对吗？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150290a00">
「……不对。
　自己的战斗，到底还是因为自己的理由。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150300a07">
「哥哥你想要战斗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　终于察觉到了。
　为就餐增添气氛的杂谈，那种气氛似乎早已完全消失。

　堀越公方足利茶茶丸的双眼里散发着异常的热情，
将我束缚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150310a07">
「<RUBY text="··········">因为想这样而这样做的</RUBY>？
　将那些毫无罪孽的人杀掉，
和自己妹妹战斗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150320a00">
「那……也不是这个问题。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我理解为，她在开玩笑。
　对方故意换个说法而已。

　我的战斗、杀人都是由于自己的理由。
那是无需置疑的，世间也没有转嫁责任的余地
——对方将理由随意换个说法，是想要我动摇而已。

　所以……没必要洗耳恭听。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150330a07">
「哥哥你……
　真的是自己想要那样做的？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150340a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：第四話の雪車町
	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 1001, Center, Middle, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw雪車町_嘲笑.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md02/0150350a12">
《将那两个小鬼……
　将那对姐妹，不情愿地杀掉了!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150360a07">
「虽不想这样做，但还是做了。
　那是为了世界。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150370a07">
「不那样做的话便会有更多的人死掉。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150380a00">
「……不。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　那是事实。
　虽是事实，但还是不同。

　<RUBY text="···">所以说</RUBY>，<RUBY text="·······">将我称之为英雄</RUBY>
<RUBY text="··">的话</RUBY>，<RUBY text="····">是不行的</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0150390a01">
「主君……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150400a07">
「呐，哥哥。
　这从头到尾都是简单明了的内容啊。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150410a07">
「哥哥你想的太复杂了。
　那样的话，不论过多久都无法战胜<RUBY text="公主">银星号</RUBY>哟。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150420a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　茶茶丸的声音很柔和。
　既无压抑头脑的魄力，也无刨挖脏腑的锐利。

　只有怜恤般的温柔。

　
　　————我感受到恶魔的低吟。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150430a07">
「哥哥你一直都忍耐着不情愿的想法而战斗。
拯救了很多人。
　已经足够被称为英雄。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150440a07">
「但还是没法战胜公主。
　为什么呢……？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150450a07">
「<RUBY text="······">英雄战胜魔王</RUBY>这是一定的。
　如世界这么期望，就必然会这样。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150460a07">
「然而哥哥你却无法取胜。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150470a07">
「……那是因为哥哥你没彻底成为英雄。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150480a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　彻底成为英雄？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150490a07">
「哥哥本不想战斗。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150500a07">
「其实不想和公主战斗。
　不想把她杀掉。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150510a07">
「我打从心底这么想。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150520a00">
「——————————————————」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150530a07">
「所以无法战胜。
　这是理所当然的。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150540a07">
「抱着不想杀掉的想法怎么能战胜。
什么本领、什么性能已经是过去的问题。
　哥哥要是不首先舍弃迷惘的话……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150550a00">
「……无我……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150560a07">
「没错。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150570a07">
「舍去自我……
　舍去个人感情。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150580a07">
「只想着公主是世界的敌人。
　承认魔王，不杀掉不行。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150590a07">
「成为英雄。
　必须成为英雄。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150600a07">
「那是哥哥你的职责。
　对吧……？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150610a00">
「…………」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150620a00">
「为何。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150630a07">
「……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150640a00">
「你不是站在银星号那边吗？
　为什么……说那样的话？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150650a07">
「虽然我很喜欢公主。
　但也不算站在她那边。」

{	SoundPlay("@mbgm19", 0, 1000, true);}

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150660a07">
「公主她根本不需要伙伴。
　有伙伴的话也就意味着有敌人。因为，
村正的戒律是不管敌我皆杀。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150670a07">
「我要是公主的伙伴，现在都还活着就奇怪了。
　公主她是毫无敌意地将人杀害……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150680a07">
「这样，你明白了吧？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150690a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150700a07">
「如果说我站在谁那边，倒不如说是哥哥吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150710a00">
「我？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150720a07">
「嗯。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0150730a01">
「……善恶相抵的戒律，我们也是一样的。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150740a07">
「没关系。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150750a07">
「如果哥哥你希望的话。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150760a07">
「成为英雄，与魔王战斗的话。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150770a07">
「就没关系。
　我们一起吧……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　足利茶茶丸将嘴唇凑近我耳边。
　低声说道。

　与变冷的饭食形成对比。
　是那样的炽热————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150780a07">
「我跟哥哥你一起……
　杀掉公主。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150790a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆↑ここに選択肢設けて、茶々丸の呪いフラグを設定するか？　一考。

//■↓変更あるかもしれませんが一応やっておきます　inc櫻井
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md02_016.nss"