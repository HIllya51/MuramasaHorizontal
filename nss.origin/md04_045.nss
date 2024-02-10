//<continuation number="1630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045.nss_MAIN
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
	#bg105_城門付近内側_02=true;
	#bg094_宮中庭_01=true;
	#ev221_月明かりを浴びて立つ光_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md04_045.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_044.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg105_城門付近内側_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm04", 0, 1000, true);

	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	Delete("上背景");
	DrawDelete("黒幕１", 500, 100, "slide_01_04_1", true);


//◆村正

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0450010a07">
「你干的好事……村正!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450020a01">
「夺走主君的时候，你就是<RUBY text="··">这样</RUBY>对付我的吧？
茶茶丸。
　就当是那时的原样奉还吧！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0450030a07">
「别小看我，废物！
　这种破网，我马上就能挣脱！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0450040a07">
「我忍好久了，今天绝对要干掉你!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450050a01">
「我没觉得能一直绑住你，但至少能拖延一
段时间吧？
  那就够了。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450060a01">
「我要办的事情马上就办完。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0450070a07">
「可、可恶……
　哥哥，快逃!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　被蜘蛛丝绑住，动弹不得的茶茶丸叫道。
　声音和眼神中满是焦急。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0450080a07">
「不能靠近那家伙！
　那家伙，会把哥哥……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450090a00">
「哼。
　……杞人忧天。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　留下这句话，向前踏出一步。
　和村正——和我的剑胄对峙。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明と村正
	OnSE("se人体_動作_一歩",1000);

	StR(1000, @0, @0, "cg/st/st景明汚染_通常_制服.png");
	FadeStR(500, true);

	Wait(500);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450100a01">
「……主君……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450110a00">
「你来做什么？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450120a01">
「来带你回去。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450130a00">
「多管闲事。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450140a01">
「……」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450150a00">
「给我消失吧。
　剑胄该听操控者的指令才是。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450160a01">
「……不行。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450170a00">
「为什么？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450180a01">
「我的操控者只有一人，就是凑斗景明。
　<RUBY text="····">而不是你</RUBY>。」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450190a00">
「……哼。
　你说我不是凑斗景明？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450200a01">
「若是凑斗景明——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　村正抬手示意混乱与死亡的情景。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景200", 11000, @0, @0, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Fade("絵背景200", 500, 1000, null, false);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450210a01">
「那种情形在眼前的话，不会只是看着。
　他会为了阻止而去战斗。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450220a01">
「即使知道是徒劳无功，也会去做些什么！」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450230a00">
「……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450240a01">
「要是有那份等待什么神不神的闲暇，
他早就去战斗了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450250a00">
「没错。
　过去的凑斗景明大概会那么做。」

{	FadeDelete("絵背景200", 1000, false);
	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450260a00">
「但是，那又如何？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450270a01">
「……你的目的是什么？」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450280a00">
「不要明知故问。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450290a01">
「……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450300a00">
「为了救光。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450310a01">
「怎么救？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450320a00">
「你应该听说过了吧？
　把埋在地底里叫做神的东西拽出来。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450330a01">
「……你是清醒着说这话的？」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450340a00">
「这的确是醉鬼的胡话。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450350a00">
「我既不太相信，也没有兴趣。
　但是——假如人类认知范围之外的某物当真
存在的话，说不定它能治愈我们已束手无策的
光。」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0450360a00">
「我只关心这一点。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450370a01">
「…………
　假如，这种乱来的愿望真的实现。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450380a01">
「凑斗光变成<RUBY text="······">神一样的怪物</RUBY>。
　你要怎么办？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450390a00">
「怎么办……？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450400a01">
「凑斗光，可是那个银星号啊!?
　也许真的会毁灭世界的。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450410a00">
「啊。
　没错。」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0450420a00">
「我无所谓。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450430a01">
「……！」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450440a00">
「只要光活着就好。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450450a01">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450460a01">
「<RUBY text="····">太轻易了</RUBY>……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450470a00">
「？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450480a01">
「你没有烦恼和犹豫。
　不，甚至没有进行决断。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450490a01">
「没有……选择。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450500a00">
「你想说什么？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450510a01">
「我想说，
　你果然不是凑斗景明。」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450520a00">
「愚蠢。
　<RUBY text="···">我就是</RUBY>凑斗景明。」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0450530a00">
「毫无虚假，正是本人。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450540a01">
「…………嗯。一定。
　这也一定没错。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450550a01">
「但是……」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450560a00">
「不承认？ 
　这也随便你……」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0450570a00">
「我是不是我，不需要你承认。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450580a01">
「主君……」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450590a00">
「然后呢？
　我已经拒绝了你。」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0450600a00">
「你打算怎么办？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450610a01">
「…………」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450620a00">
「对话不能解决的话，当然要用实力定胜负。」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450630a00">
「但是，你什么都做不了。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450640a01">
「……那是……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450650a00">
「你应该是有能力的。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450660a00">
「势洲村正一门独有的秘术“精神干涉”。
　你也会这个技能。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450670a00">
「但是——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆回想。帝の前
	EfRecoIn1(18000,600);

	CreateTextureSP("思い出", 5000, Center, Middle, "cg/bg/bg094_宮中庭_01.jpg");

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　
　　　　　　　　　　皇命封印
　　　　　　　　　　绝对禁戒

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("思い出");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明汚染_激情.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450680a00">
「你用不出！」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450690a01">
「……」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450700a00">
「那时候——
　在拘留所里你也没能做到。」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450710a00">
「你试图控制我，却失败了。
　真是麻烦啊，皇命这东西！」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450720a00">
「皇帝的诏谕如此沉重吗？
　也对……多亏它救了我。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450730a01">
「……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450740a00">
「你走吧。你什么也做不了，
呆在这里也没意义。
　那边茶茶丸一旦脱身，真的会毁掉你……」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450750a00">
「趁现在逃走，去找个地方沉睡吧。
　像过去五百年来那样。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450760a01">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450770a01">
「……不是的……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450780a00">
「……？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450790a01">
「我不能控制你……
　不是因为被皇命束缚。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450800a01">
「那时我也说过吧。
　已经是，很久以前的事情了。」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450810a00">
「你说什么……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450820a01">
「……皇帝的<RUBY text="话">命令</RUBY>的确是沉重的。
　也是想让妄图侵入人心以达目的的<RUBY text="外公">始祖</RUBY>和
<RUBY text="母亲">二世</RUBY>戒骄戒躁……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450830a01">
「但是仅仅这点束缚，我能轻易摆脱。
　无法办到的理由是——我那时无法控制你的
理由是……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450840a01">
「因为不想夺去你的意愿啊!!」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450850a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我的
　
　　　　　　　　　　　……意愿？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450860a01">
「所以现在，我要对你使用能力！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//嶋：修正（救う）【090930】
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450870a01">
「如今的你没有意志。
　只有拯救凑斗光的愿望而已。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450880a01">
「那的确不是被谁灌输的，而是你自身的东西。
　但，你并非<RUBY text="····">仅仅如此</RUBY>而已！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450890a01">
「你被夺走了。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450900a00">
「——我……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450910a01">
「我要带回你。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450920a01">
「因为我——是你的<RUBY text="剑胄">守护者</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正アップ
//◆ＣＧ：精神干渉。ホワイトアウト
	SetVolume("@mbgm*", 2000, 0, null);

	CreateWindow("絵演窓上", 1500, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 1050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 1100, 100, -144, "cg/bg/bg105_城門付近内側_02.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Rotate("絵演窓上/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 1110, 100, -350, "cg/st/resize/st村正_通常_私服llll.png");
	Move("絵演窓上", 0, @0, @128, null, true);


	Move("絵演窓上/絵演背景", 500, @0, @100, AxlDxl, false);
	Move("絵演窓上/絵立絵", 500, @0, @200, AxlDxl, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(200);

	CreatePlainEX("絵板写", 1120);
	SetBlur("絵板写", true, 3, 500, 100, false);

	CreateColorEXadd("下白", 1300, "WHITE");
	CreateTextureEXadd("干渉", 1200, 0, 0, "cg/ef/ef034_精神汚染.jpg");

	OnSE("se特殊_その他_茶々丸衝撃波",1000);
	Fade("下白", 1000, 1000, null, false);

	Fade("絵板写", 100, 1000, null, true);
	Zoom("絵板写", 1000, 15000, 15000, Axl3, false);
	Zoom("干渉", 1000, 2000, 2000, null, false);
	Fade("干渉", 500, 1000, null, true);
	Wait(500);

	DeleteStA(0,true);
	Delete("干渉");
	DeleteStA(0,true);
	Delete("絵板写");
	Delete("絵色100");
	Delete("煙動画");
	Delete("絵演窓*");

	SetFwC("cg/fw/fw景明汚染_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450930a00">
（——呜——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　不行。

　<RUBY text="····">我会崩溃</RUBY>。

　我会变得不是只想守护光。

　……要抗住！

　只要保持精神不动摇，应该就能抗拒这种干涉的！ 

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＳＥ：精神干渉
	OnSE("se特殊_陰義_発動04", 1000);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450940a01">
“主君。
　我……不会强迫你。”

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450950a00">
（……!?）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm05", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　不对。

　以前这一招，是从内部将人的精神破坏并侵犯。
　但，现在是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450960a01">
“我只想取回你被夺走的东西。”

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450970a01">
“被<RUBY text="妈妈">银星号</RUBY>的力量封印住的，全部……
　解放吧！”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：精神干渉
	OnSE("se特殊_陰義_発動04", 1000);

	SetFwC("cg/fw/fw景明汚染_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450980a00">
（唔……哦……）

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450990a01">
“快想起来吧。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("思い出してる。", 1500, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("思い出してる。", 1000, 500, null, true);

	Wait(300);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451000a01">
“你十分重视凑斗光。
　不仅是现在，从很久以前就是。”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451010a01">
“即便如此，过去你也和她，
　和银星号战斗过。”

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451020a01">
“……为什么？”

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451030a00">
（…………）

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451040a01">
“因为还有其他重要的东西。
　难道不是吗……？”

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451050a00">
（不对……！）

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451060a01">
“…………”

{	FwC("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451070a00">
（光，是我最后的家人！
　没有什么其他重要的东西！）

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451080a01">
“……是啊……”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451090a01">
“你的家人已经只有凑斗光了。
　因为我已经夺走了凑斗统。”

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451100a00">
（……）

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451110a01">
“对你来说……
　这世上净是毫无因缘的外人。”

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451120a01">
“但是……”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451130a01">
“你，看到素不相识的他人……
　看到不知名的某人——”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451140a01">
“像你自己曾经那样，
　被毫无道理地夺走重要的人……”

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451150a01">
“你不是绝对不能原谅这种事的吗!?”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451160a01">
“不是正因如此才和凑斗光战斗吗!?”

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ピキーン。崩壊音
	OnSE("se特殊_陰義_発動03", 1000);

	DrawEffect("思い出してる。", 36000, "SoftSplit", 30, 30, null);
	FadeDelete("思い出してる。", 1500, true);

	SetFwC("cg/fw/fw景明汚染_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451170a00">
（呜……啊……）

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451180a01">
“快想起来吧，主君。
　快想起我的——我们的罪。”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451190a01">
“我们杀了许多、许多人。”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451200a01">
“这是决不能被饶恕的。
　毫无辩解的余地。”

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451210a01">
“但是，那是有<RUBY text="··">理由</RUBY>的……”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451220a01">
“虽然用暴力夺取过无数生命的我们，
无法告诉别人这理由用以乞求宽恕。
　但是对自己可以……”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451230a01">
“我，为了善恶相抵这一任性的规矩。
　你——为了不让银星号增殖。”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451240a01">
“为了不让更多人死去。
　你杀了他们。”

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451250a00">
（…………）

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451260a01">
“主君。
　你如今，若是肯定世界的灭亡，”

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451270a01">
“被你杀死的人们就死得毫无意义了。”

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆回想フラッシュ
//◆新田雄飛、ふきとふな、皇路操

	EfRecoIn1(18000,600);

	CreateTexture("思い出", 5000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	StC(5100, @0, @0, "cg/st/st雄飛_通常_制服.png");
	FadeStC(0, false);


	EfRecoIn2(300);
	WaitKey(1000);

	EfRecoIn1(18000,600);

	DeleteStA(0,true);
	Delete("思い出*");
	CreateTexture("思い出", 5000, Center, Middle, "cg/bg/bg023_弥源太の家_01.jpg");
	StL(5100, @0, @0, "cg/st/stふき_通常_私服.png");
	StR(5200, @0, @0, "cg/st/stふな_通常_私服.png");
	FadeStL(0, false);
	FadeStR(0, false);


	EfRecoIn2(300);
	WaitKey(1000);


	EfRecoIn1(18000,600);

	DeleteStA(0,true);
	Delete("思い出*");
	CreateTexture("思い出", 5000, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");
	StC(5100, @0, @0, "cg/st/st操_通常_私服.png");
	FadeStC(0, false);


	EfRecoIn2(300);
	WaitKey(1000);

	EfRecoOut1(300);
	DeleteStA(0,true);
	Delete("思い出*");


//もとに戻る
	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451280a01">
“他们的死，就变得毫无理由，毫无意义了！
　……那样也无所谓吗!?”

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451290a00">
（————————）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆以降、景明台詞は中央、村正台詞は右、茶々丸台詞
//◆は左にボックス出す？

	SetVolume("@mbgm*", 300, 0, null);

	SetFwL("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451300a07">
《大概不好吧？》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451310a07">
《但是哥哥有更重要的东西。
　对凑斗光的爱更有价值。》

{	FwL("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451320a07">
《对吧？》

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,150);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451330a00">
（……!?）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451340a01">
“茶茶丸!?
　为什么……你会！”

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14",0,1000,true);

	SetFwL("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451350a07">
《别小看我。
　虽然无法阻止精神干涉，但送入<RUBY text="声音">信号</RUBY>
我还是做得到的……》

{	FwL("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451360a07">
《哥哥，不要迷惘。
　若是凑斗光重要的话，一直守护着她就行。》

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451370a07">
《即便因此牺牲世界又如何。
　以为了世界当借口，就什么都能放弃吗？》

{	FwL("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451380a07">
《是要说<RUBY text="···········">世界可以牺牲掉别的东西</RUBY>，
　但是<RUBY text="···············">别的东西是绝对不可以牺牲掉世界</RUBY>
的吗!?》

{	FwL("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451390a07">
《……哈。
　梦话要等睡着了再说!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451400a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451410a07">
《这只不过是单纯的实力定胜负而已。
　世界能牺牲其他的许许多多，只是因为世界
比较强吧？》

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451420a07">
《毕竟世界是人类的共同体吧。
　但是，假如比起全人类，<RUBY text="··">我们</RUBY>更强的话，
我们的愿望就能实现，就是这个道理。》

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451430a07">
《没有什么好坏之分。
　只是看哪一边比较强，如此而已。》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451440a00">
（茶茶丸……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451450a07">
《哥哥，你不能放弃！》

{	FwL("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451460a07">
《公主殿下有着即使与世界为敌，
也要实现的愿望。我也是。
　哥哥你也是……》

{	FwL("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451470a07">
《所以，公主殿下、我和哥哥要与全世界
决一胜负。
　无论胜算有几分。》

{	FwL("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451480a07">
《要是不想放弃的话就唯有战斗不可!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451490a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	SetFwR("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451500a01">
“主君。
　……我不会强迫你做任何事。”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451510a01">
“我只希望你凭自己的意志作出选择。”

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451520a00">
（村正……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451530a01">
“我，见到了稻城忠保。
　……还记得他吗？”

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451540a01">
“那个精力充沛三人组中的一人……”

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想フラッシュ。稲城忠保（第一編）
	EfRecoIn1(18000,600);

	CreateTexture("思い出", 5000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	StC(5100, @0, @0, "cg/st/st忠保_通常_制服.png");
	FadeStC(0, false);

	EfRecoIn2(300);

	SetFwR("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451550a01">
“他十分聪明。
　明白是我杀了新田雄飞之后，他这么说过。”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451560a01">
“他说，希望他不要白白死去。”

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	DeleteStA(0,true);
	Delete("思い出*");


	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451570a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451580a01">
“……我想告诉你的，只有这么多了。”

{	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451590a01">
“接下来……请选择吧。
　主君。”

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451600a07">
《哥哥。》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451610a00">
（……………………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451620a01">
“这是最后的问题……”

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451630a01">
“你为了对凑斗光的爱， 
　能够将其他的一切都当作
毫无价值而舍弃掉吗？”

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 2000, 0, null);



//◆選択：捨てられる／捨てられない

}

..//ジャンプ指定
//◆捨てられる　"md04_045a.nss"
//◆捨てられない　"md04_045b.nss"



//★選択肢シーン
scene md04_045.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("白", 50, "WHITE");
	Delete("下白");
//	OnBG(100, "bg105_城門付近内側_02.jpg");
//	FadeBG(0, true);

//	OnBG(100,"bg006_雄飛の部屋_01.jpg");
//	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("能够舍弃","不能舍弃");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆捨てられる　"md04_045a.nss"
				$GameName = "md04_045a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆捨てられない　"md04_045b.nss"
				$GameName = "md04_045b.nss";
		}
	}
}
