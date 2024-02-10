//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_031.nss_MAIN
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
	#ev113_サーキット貴賓席_a=true;
	#bg031_八幡宮境内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_032.nss";

}

scene md01_031.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_030.nss"

//◆フラッシュ。過去光
	SoundPlay("@mbgm01",0,1000,true);
	PrintBG("上背景", 15000);
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev128_病床の光_a03.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	StL(1000, @-60, @0,"cg/st/3d銀星号_立ち_通常.png");
	StR(1100, @60, @0,"cg/st/3d村正標準_立ち_通常.png");
	Delete("上背景");
	FadeBG(0,true);
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	FadeStA(0,true);
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　太过遥远。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310010a00">
「你究竟……在期盼着什么？」

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310020a14">
「……唔。
　这次轮到你质问光的霸业吗？」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310030a14">
「那好吧！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310040a00">
「……」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310050a14">
「普天之下，广布武之法则。
　……天下布武！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310060a00">
「武之……法则？」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310070a14">
「即所谓的争夺。
　所谓的杀戮。」

//【光】
<voice name="光" class="光" src="voice/md01/0310080a14">
「仅仅是那样的法则。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310090a00">
「那是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　不对。
　跟统大人——养母所说的道不同。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md01/0310100a14">
「事到如今，可不要说这些没睡醒的话好吗，
景明？
　多少，你也应该<RUBY text="····">理解村正</RUBY>的吧。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310110a00">
「……！」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310120a14">
「……你明白的吧？
　很好，这样更好。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310130a14">
「如此，说话也容易了。
　光要以这般武艺普照人世。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310140a14">
「人类应该就此斩断团结一致，互相依偎的时代。
　谁都该遵循欲望而生存、战斗、杀戮——
我要引领这样的时代！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310150a00">
「——时代？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310160a00">
「那样的时代不会来临。
　只会引来灭亡而已。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　人类的。世界的。
　毫无意义的终结。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md01/0310170a14">
「对了！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310180a00">
「呃……!?」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310190a14">
「人类灭亡……
　最后胜利留下的便能得到成为<RUBY text="神">天</RUBY>的资格了！」

//【光】
<voice name="光" class="光" src="voice/md01/0310200a14">
「这是光的称霸之道。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310210a00">
「不可能！」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310220a14">
「唔。哪里奇怪了？
　……不，不应该会奇怪。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310230a14">
「按逻辑思考，能被称神的方法就只有这个！
　<RUBY text="···········">在与全人类的战斗中获胜</RUBY>!!」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310240a00">
「————」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310250a14">
「为此，首先必须升上全人类战斗的舞台……
　值得庆幸的是，在村正污染波的影响下，
光的心灵被不停转移给别人。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310260a14">
「追赶那些见到刀刃只会逃跑困惑的脆弱人类，
将其从背后斩杀，多么懦弱卑劣。
　遵循欲望战斗，成为猛兽那般，如此对等竞争，
胜利才有意义。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310270a14">
「我要在<RUBY text="··">公正</RUBY>的斗争中留下，
立于顶点。
　达到神的境界——光的<RUBY text="梦想">目的</RUBY>也就能实现了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310280a00">
「……目的？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　到那时，还会有什么发生吗……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md01/0310290a14">
「关于此点，刚才说过吧？
　这样的话可不用经常挂在嘴边。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310300a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0310310a00">
「……爱吗？」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310320a14">
「心中只要有斗志……
　锻炼肉体、便可称为钢铁战斗之躯。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310330a00">
「让他们相互厮杀……就是你所谓的
对人类这种生物的爱吗??」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310340a14">
「怎么会。
　……唉，若当真如此就好了。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310350a14">
「可惜的是，光的心没有宏大到去爱全人类。
　这样的感情，仅仅只对<RUBY text="···">一个人</RUBY>而已。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310360a14">
「…………
　景明，别让少女说出这样的话。即便
你是家人，被这样窥探内心的话，
也会……有种心痒难耐的感觉。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310370a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　——不行。
　无法理解。

　完全无法联系起来。
　和我意识中光的人物形象完全无法联系。

　就像在和幻影对话般。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310380a00">
「你疯了……」

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310390a14">
「才没那回事。」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310400a00">
「你疯了！
　崩坏了！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310410a00">
「两年前……你……
　将山贼团和村人都杀尽的时候就已经疯了！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　——被村正的戒律所束缚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310420a00">
「我的妹妹……
　光，那个时候已经死了。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正抜刀
	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	StR(1100, @60, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, false);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310430a00">
「你不过是一只妖魔而已。
　……砍杀……」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310440a14">
「…………」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310450a14">
「我没有疯。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310460a00">
「我不听。」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310470a14">
「不，你要听。
　光从<RUBY text="····">最初之时</RUBY>就已知道一切。」

//【光】
<voice name="光" class="光" src="voice/md01/0310480a14">
「知道村正是怎样的剑胄。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310490a00">
「……呃!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0310500a01">
《…………》

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310510a14">
「在知道的基础上，成为我的所有物。」

//【光】
<voice name="光" class="光" src="voice/md01/0310520a14">
「然后也给予了你……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310530a14">
「为了用你的手，将母亲杀死！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310540a00">
「———————————————————
————————————————————
————————————————————
————————————————————」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310550a14">
「呼。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310560a00">
「……什么……」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310570a00">
「你在说什么啊，光!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"md01_032.nss"