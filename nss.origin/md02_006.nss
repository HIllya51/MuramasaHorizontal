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

scene md02_006.nss_MAIN
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
	#bg053_堀越御所の庭_01=true;
	#bg053_堀越御所の庭_02=true;
	#bg097_堀越御所内景明の部屋_01=true;
	#ev901_銀星号天座失墜小彗星_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_007.nss";

}

scene md02_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_005.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//◆昼→夜
	WaitKey(1500);

	OnBG(101, "bg001_空c_03.jpg");
	FadeBG(3000, true);

//◆部屋
	WaitKey(1500);

	OnBG(101, "bg097_堀越御所内景明の部屋_03a.jpg");
	FadeBG(2000, true);
	SoundPlay("@mbgm16", 0, 1000, true);

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060010a01">
「……不能就这样回去吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060020a00">
「对啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　日落，夜幕降临时分，村正恢复过来。

　将现状简单易懂地说明。
　简略听完后的剑胄，得出的结论与我一致。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060030a00">
「如果知道银星号在就不能离开<RUBY text="这里">堀越</RUBY>。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060040a01">
「一想到会在不知何时开始散布污染波……
　就觉得把视线移开很可怕。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060050a00">
「可以说，目前为止确实是那样——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　每天早上，微微颤抖的手指翻开报纸。
　确认是否印有银星号三个字——又害怕是否会有
某个城市的住民被无端杀尽。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060060a00">
「不管怎样，还是找到了其所在。
　没有放弃这种便利机会的道理。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060070a01">
「在她身边就好，一旦发生什么就能
更早采取对应措施。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060080a00">
「没错。
　…………问题是——」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060090a01">
「那之后吗？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060100a00">
「没错。
　能够<RUBY text="··">对应</RUBY>却无法<RUBY text="··">对付</RUBY>的话，毫无意义。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060110a01">
「……这也没错……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·本気の銀星号
	EfRecoIn1(18000,600);
//■仮絵 inc櫻井
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	CreateTextureEX("絵回想200", 2100, @0, @0, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	Fade("絵回想200", 0, 500, null, false);

	EfRecoIn2(300);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　怎样阻止<RUBY text="··">那个</RUBY>银星号？

　拥有超越人界的魔镜之力的银星号，如今更是
难以预测，仿佛几何级数。
　要说自己跟她站在同等领域，完全就是戏言，
只能当作梦话。

　着实让人惭愧。


　……但是……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060120a00">
「村正……你怎么想？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060130a01">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060140a00">
「到底只是武者，能强到那种程度吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060150a01">
「有点难以置信，但确实如此。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060160a00">
「光有天生的才能。
　体术不在话下，骑体的运用，热量的持有量
以及阴义的操控感——几乎全部都可称为完美。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060170a00">
「但，即便这样——」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060180a01">
「那个程度……
　总觉得还是很难达到啊……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060190a01">
「难道有什么原因？
　仅仅因为是天才吗……？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060200a00">
「…………」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060210a07">
「或是说爆才？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060220a01">
「不明白你的意思。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060230a07">
「那白菜怎样？」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060240a01">
「完全，一点也不好笑。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060250a00">
「我也这么想。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060260a01">
「那你就不要说啊……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060270a00">
「我什么也没说。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060280a01">
「诶？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060290a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆にょき。下から茶々丸

	StL(1000, @0, @300,"cg/st/st茶々丸_通常_私服.png");
	CreateSE("SE01","se擬音_コミカル_登場01");

	SetVolume("@mbgm*", 500, 0, null);

	Wait(300);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 200, @0, @-280, DxlAuto, false);
	FadeStL(200,true);

	Wait(200);
	Shake("@StR*", 300, 5, 0, 0, 0, 1000, null, false);

	SetComic(@0,@0,7);
	SetFwC("cg/fw/fw村正_驚きb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060300a01">
「哈哇！」

{	DeleteComic();
	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060310a07">
「呼。」

{	SoundPlay("@mbgm22",0,1000,true);
	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060320a01">
「你从哪里冒出来的！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060330a07">
「突然冒出来，失礼了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060340a00">
「没事，村正。
　虽然算不上是战友，但总之也不是敌人。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060350a07">
「表达得真恰当呢。
　晚上好啊哥哥——」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060360a00">
「晚上好，阁下。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060370a07">
「不错的夜晚呢。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060380a00">
「能够看见月光。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060390a01">
「不要那么冷静好不！
　反倒惊愕的我更显奇怪！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060400a00">
「这样啊。抱歉。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060410a07">
「迁怒别人可不好哟。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060420a01">
「你要是不以这么奇怪的方式出现还好说。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060430a07">
「这里可是我家。
　从哪里、要怎样出现都是我的自由。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　虽然我在想，即便如此也该有个限度吧。
　……为何是从<RUBY text="··">下面</RUBY>出现的？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060440a01">
「什么啊。你是这家的孩子？
　真不知道你父母怎么教育你的。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060450a07">
「没有父母。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060460a00">
「村正。这位就是家主。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060470a01">
「哈？
　这里不是将军的宅邸吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060480a00">
「是啊，所以这位是……
　堀越公方，龙君中将足利茶茶丸阁下。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060490a07">
「知道之后很吃惊吧，见到了也惊讶吧。
　知道的话就快点跪下，
头伏席子跪下吧，庶民。」

//◆笑顔
{	SetComic(@0,@0,11);
	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060500a01">
「哎呀，是那样吗？
　你就是公方。你就是中将大人。」

//◆超クール
{	DeleteComic();
	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060510a01">
「——那什么？偷袭别人？」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060520a07">
「啊。现在真的燃起杀意了。」

{	DeleteComic();
	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060530a01">
「我只是说出我想的而已。有问题吗？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060540a07">
「这要是给别的家伙说倒不觉得怎样。
　怎么说呢。被你这竹铠甲这么说就洒脱
不起来，真让人来火。」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060550a01">
「谁谁谁是竹铠甲!!」

{	DeleteComic();
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060560a07">
「我说的都是老实话。有问题吗？」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060570a01">
「你自己应该有觉悟的吧。」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060580a07">
「啊——？　我表现出来了吗？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060590a01">
「没有吗!?」

{	DeleteComic();
	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060600a00">
「冷静点。村正。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060610a01">
「不要。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　被讨厌了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060620a07">
「哇，过分——
　竟然不听操控者的话。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060630a01">
「没关系。
　这种事是不会让主君生气的。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060640a01">
「因为主君相信我。
　……对吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060650a00">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我随即回答。
　是真心话。

　虽然确实真心这么想，但另一方面，村正流转的
眼神中饱含无尽的杀气，有预感若是摇头否认肯定会遭受
不好的命运，事实上我也受着这样的影响。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060660a07">
「…………」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060670a01">
「羡慕吗？如此信赖的关系。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060680a07">
「真是血管都要气爆了。
　在哥哥的宽容下撒娇。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060690a01">
「无法区分撒娇和信任之爱，
　小孩子啊。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060700a07">
「哥哥，和这么个依存症女人组队可不行啊。
　你需要一个更加机敏的搭档哟。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060710a07">
「下个月的大件垃圾处理日就将这家伙丢掉吧。
　给你介绍个不错的剑胄。」

//◆キレた。
{	OnSE("se擬音_コミカル_殴り03",1000);
	SetComic(@0,@0,15);
	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060720a01">
「————」

{	DeleteComic();
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060730a00">
「煞费你苦心了。」

//◆顔は景明
{	FwC("cg/fw/fw景明_笑顔c.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060740a07">
「那就拜托你了，我的茶茶丸……
　我从很久前就非常想这么做了。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060750a07">
「ＯＫ，交给我吧！」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060760a01">
「不要捏造！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060770a07">
「真讨厌，代他说出真相而已哟。」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060780a01">
「变得很想砍掉你脑袋呢。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060790a07">
「哈。
　我怎么会被如此低廉的威吓所煞到啊——」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060800a07">
「真这么想杀我的话，说大话前先干掉我啊。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060810a01">
「说的不错嘛。
　没错，非常正确，我同意。」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060820a01">
「那么开场白什么的就不需要了吧。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060830a07">
「……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060840a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がっし。組み合い
	DeleteStA(200,true);
	OnSE("se擬音_コミカル_殴り02", 1000);
	OnSE("se人体_動作_腕を掴む01", 1000);
	OnSE("se人体_動作_腕を掴む01", 1000);
	OnSE("se擬音_コミカル_殴り04", 1000);

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg097_堀越御所内景明の部屋_01.jpg");
	Shake("絵背景100", 500, 10, 0, 0, 0, 1000, Dxl2, false);

//■コミカルシーンだからこれは合うか微妙だが、一応 inc櫻井
	SoundPlay("@mbgm08", 0, 1000, true);

	SetComic(@0,@0,15);

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060850a01">
「明明只是个小鬼！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060860a07">
「让我来试试看蜘蛛的味道是不是
真的像巧克力吧！」

{	DeleteComic();
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060870a00">
「两位！」

{	SetComic(@0,@0,1);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060880a07">
「什么？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060890a01">
「什么啊！」

{	DeleteComic();
	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060900a00">
「……为何才刚见面，关系就立刻这么恶劣？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　相似的情景，比某学生和某进驻军大尉更激烈。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060910a07">
「我跟这家伙注定不合。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060920a01">
「绝对不合，一目了然。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060930a07">
「没错没错。」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060940a01">
「实在是没办法的感觉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　只在这种情况下意见一致，真让人困扰。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060950a00">
「但是，阁下……
　有一事想问你。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060960a07">
「三围尺寸、喜欢的体位、喜欢的玩法，
什么都能告诉你哟，能等我先赶走这碍事的
蜘蛛精么？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060970a00">
「如果可以的话，请到此为止。
　阁下，为什么你一开始就察觉到村正的实体？」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060980a01">
「……啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16", 0, 1000, true);

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);
	FadeStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　被这么一说，村正似乎也想到了。
　没错。茶茶丸中将在没有任何说明的情况下，
就能识破只有虾夷才能辨别的村正是剑胄的事。

　虽然感觉不可能……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060990a07">
「啊，那个吗？
　因为嗅到腐朽的铁屑味道罢了。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061000a01">
「乱说！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061010a07">
「地板都被压的吱吱嘎嘎，快烂掉了啊。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061020a01">
「没那么重！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061030a07">
「还有波长很有剑胄的感觉。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061040a01">
「……波长？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061050a00">
「……？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061060a07">
「这样那样的叠加起来，脑袋就浮现出
“这是哥哥的村正啊”，这样的想法。
　就在脑袋这里。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061070a07">
「不过，你们要认为我
有什么特殊感应力的话也可以。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　足利茶茶丸笑着指向自己的额角。
　好像是被岔开了话题……但即便追问也只是徒劳。

　话题就这样中断也无所谓了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061080a07">
「对了对了。
　我也有一个想要问的事。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061090a00">
「是什么？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061100a07">
「你还没给我回复。
　哥哥你最后决定怎样？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061110a07">
「<RUBY text="···">这以后</RUBY>。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061120a00">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061130a00">
「虽然这么拜托你太不合情理……
　如果可以的话，请允许我留宿于此。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061140a07">
「就知道你会这么说。
　我当然允许啊。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061150a07">
「也有十分充分的理由。
　不需要有任何顾虑。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061160a00">
「感谢您的操心。中将阁下。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061170a01">
「主君。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061180a00">
「什么？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061190a01">
「提议。
　在这周边露宿怎样。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061200a00">
「……」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061210a07">
「你自己一个人这样也没关系啊。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061220a01">
「怎么可能将主君单独留在这么可疑的宅邸。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061230a07">
「你一个人去。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061240a01">
「才不。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061250a07">
「哥哥说了会留在这里。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061260a01">
「如果是我拜托的话，主君会考虑。
　……大概。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061270a07">
「哥哥？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061280a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061290a00">
「如果村正硬要这样的话。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　把银星号留在身边是很重要的。
　不管宅邸还是外面都一样。

　露宿的辛苦也没什么。
服兵役的时候就体验过。习惯了。
　也没有理由拒绝村正的要求。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061300a01">
「看吧。」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061310a07">
「哥哥……
　你太纵容这剑胄了。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061320a07">
「这拙作会更加劣化的哟。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061330a00">
「不。没有问题的。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061340a07">
「这样啊——」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061350a00">
「不管是纵容还是其他，
村正都不会忘记她自己的职责。
　必要的时候必定有所行动。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061360a00">
「那是毋庸置疑的。
　对我来说就足够了。」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061370a01">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061380a00">
「只要不背叛村正的信赖，
村正性能劣化的事是不会发生的。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061390a01">
「而且主君背叛我的事更是不会发生。
所以我能经常发挥全部性能。
　……怎样？　就是这么回事。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061400a01">
「这就是相互认可的操控者和剑胄。
　不说以前，如今的我们
已经完成佩刀礼结缘。
不是小孩子说句什么就能破坏的关系。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061410a01">
「懂了吗？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061420a07">
「最近天花板的污垢，不知为何多了呢——」

{	FwC("cg/fw/fw村正_驚きb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061430a01">
「好好听别人说话！
　在说重要的事！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061440a07">
「只是无聊的黄色故事吧。
　话说回来，你真的要将哥哥拉到外边去吗？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061450a07">
「铜铎的话最多就长些铜锈罢了，
要是人感冒了怎么办。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061460a01">
「这我知道。这不摆明是玩笑吗？
　还有铜铎说的是谁啊？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061470a00">
「这样可以吗？」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061480a01">
「我确实不想呆这里而且
也不想让主君留在这里。
　但也没有必要刻意去露宿。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061490a01">
「而且主君不是讨厌出尔反尔的事吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061500a00">
「……没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　恳求拜托过之后得到承诺，又拒绝别人，
这怎么看都像是把对方当笨蛋对待。
　不想做这种事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061510a00">
「要你担心了吗？」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061520a01">
「你多虑了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061530a00">
「那么，中将阁下。
　再次感谢你的关照。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061540a07">
「似乎经历了一些令人不快的曲折，但
结论还是如此。算了，怎样都好。
　哥哥把这里当自己家就行。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061550a00">
「是。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061560a01">
「要休息了，能出去吗？
　你碍事了。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061570a07">
「……礼节水准不觉得差太远了吗？
这对主仆……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061580a07">
「要说的话，该是你出去！
　这里是哥哥的房间。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061590a01">
「我们一起也没什么问题。
　对吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061600a00">
「嗯。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061610a07">
「哪有男女同衾的道理，我宅邸里可不允许。
　会给你房间的，你就去那边。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061620a01">
「是吗？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061630a07">
「来人——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//即続くからClearしない inc櫻井

}

..//ジャンプ指定
//次ファイル　"md02_007.nss"