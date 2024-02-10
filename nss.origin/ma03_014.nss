//<continuation number="670">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_014.nss_MAIN
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
	#bg035_鎌倉サーキット俯瞰a_01=true;
	#bg039_競技場客席a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_015.nss";

}

scene ma03_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_013.nss"

//◆鎌倉サーキット

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　第二天，半决赛。
　我比其他三人稍晚一些到达竞技场。因为对昨天请
署长安排的那件事做了确认。

　幸好，半决赛还没开始。
　赛道上没有骑影。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(0,true);

	FadeDelete("上背景", 1000, true);


	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140010a02">
「……加入警察队，吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140020a00">
「是啊。
　我拜托署长帮我们先安排好了。我们以后
可以作为警察队成员而行动了。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140030a00">
「这是证明证件。
　带着吧。无关人员禁入的场所，只要出示这
张证明就能光明正大地进入。不必再像昨天那
样悄悄潜入了。」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140040a02">
「是。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140050a03">
「行动变得方便多了呢。
　反过来，也许会由于是敌方队伍的人而被防
备……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140060a04">
「那时候就随机应变吧。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140070a03">
「也对。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se背景_ガヤ_サーキット02_L");
	CreateSE("SE02","se背景_ガヤ_サーキット04_L");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　正当我们说着话时，响起了通知半决赛开始的广播，
紧接着是空枪响。
　已经做好准备的队伍大约有十余支，他们将飞出整备
区的骑手送上赛道。

{
//あきゅん「SE：要望：レース中の環境音ループ対応」
	MusicStart("SE01",2000,700,0,1000,null,true);
	MusicStart("SE02",500,1000,0,1000,null,true);
}
　转眼间响起盖过开赛信号空枪的推进器轰鸣声，
人形枪弹开始在赛道上疾驰。
　而且随着那轰鸣声的消失，观众席上助威加油呼声鼎沸。

　竞速开始了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140080a02">
「……怎么样？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不熟悉装甲竞技的一条大概是被吵闹声震了耳朵，一
边用手捂着耳朵一边问道。
　对于了解竞速的人来说，刚开始后的混乱是常识。大
鸟主从一脸不以为意。

　我检查过环道了。
　翔京和田村都没见到。

　他们肯定清楚被卷入刚开始后的混乱会使骑体遭到损
伤。这是习惯此种场面的举动。
　事实上，有两三骑就在第一个弯道相撞并被弹飞，现
在正在<RUBY text="Escape Zone">避难区</RUBY>展示其凄惨模样。

　其中一骑一头栽入了沙地障碍。
　它应该已经没希望了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140090a00">
「村正。报告现状。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0140100a01">
《不见目标骑。
　……顺便说一句，那台扎进墙壁的需要立刻
救援。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140110a00">
「看来是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 2500, 1000, null);
	SetVolume("SE02", 2500, 500, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　即使在控制塔的屋顶上，以村正的视力还是能看清。
　我靠肉眼也能从撞击的状况想象出来。

　但是，环道的工作人员已经习惯了这种事态。 
　立刻有好几人飞出来，用灭火剂扑灭正在喷火的
<RUBY text="Afterburner">补助推进器</RUBY>的火焰，救出骑手。

　看那样子，应该没有生命危险。
　虽然剑胄全毁，完全碎成了铁屑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0140120a01">
《……真脆弱。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140130a00">
「就是这样。没办法。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我回答了村正吃惊又困惑的低语。
　在生活于战乱年代的锻造师看来，从高空坠落也就算
了，仅仅因在地面上相撞这种程度便损坏的剑胄，
绝对没有讨论的价值。

　与竞技用剑胄优秀的低空机动能力相反，它们的身体
强化性能、装甲强度等战斗相关能力则十分低劣。
　理由很简单，因为不需要。

　有足以在符合规定的身体冲撞还有相撞事故中保护好
骑手生命的装甲便足够了。
其他工夫全花费在提高速度和运动性上。
不这样则无法完成能获胜的骑体。

　追求极限速度的剑胄，其装甲的保护能力被压到最低限
度是常有的事。
　对一条摇摇头表示回答，继续观察将一切寄托在等同
于灵车这种存在的竞争者们。

　依然看不到二强的身影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140140a04">
「已经有一骑领先了呢。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140150a03">
「横锻的超级猎犬……
　按这阵势它无敌了吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140160a00">
「不只是骑体，骑手也是一流的。
　对带式驱动翼的控制很好。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140170a03">
「明明会有因驱动损耗少而难以控制的部分。
　公式化的弯道战术也非常漂亮。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140180a02">
「喂……
　今天比赛的规则是什么？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140190a04">
「与昨天大致相同。在规定时间内竞争
<RUBY text="Best Lap">最快单圈成绩</RUBY>。
　前二十骑则可以获得明天参加决赛的资格。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140200a02">
「那，迅速开始的队伍不是更有利吗？
　还没出现的队伍有很多吧？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140210a04">
「基本上是这样，不过俗话说欲速则不达。
　太过急躁就有可能像刚才那样遭到不幸。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140220a02">
「啊啊，这样啊……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140230a04">
「进入决赛的大体上都是确实有实力的队伍，
此时比起对手更应该担忧的是事故。
　看准时机参加，全力赛出成绩后迅速离开。
这就是<RUBY text="Theory">准则</RUBY>。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140240a02">
「啊，在提速了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140250a04">
「没错，就像那样。
  那是横锻吧。成绩是……一分二十七秒一九。
原来如此，原来如此。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140260a02">
「是不错的成绩吗？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140270a04">
「绝对能进入前五名。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140280a02">
「诶……
　嗯？　那是在干嘛？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140290a04">
「哎呀，好像在挥信号旗……
　大小姐，您知道那是什么意思吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140300a03">
「……那是宣布无效飞行的意思。对象是第二
十五号——伊修多拉蜥蜴兵团的匕首急升号。
　看来是越出拱廊。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140310a02">
「越出拱廊？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140320a03">
「赛道上不是建有很多<RUBY text="Arch">拱廊</RUBY>吗？
　参赛者规定要从拱廊下钻过。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140330a02">
「……啊，原来如此。我明白了。
　因为他们是在空中飞行的，如果没有这种规
则赛道就没意义了。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140340a03">
「没有钻过拱廊的话，在此之后的飞行就会被
判无效。
　直到犯规者回来重新钻过拱廊。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140350a04">
「不过，预赛时这并不是什么大问题。在下一
圈多加注意就行了。
　不过在决赛这可是致命性的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140360a00">
「得有心理准备接受至少五到十秒的时间浪费。
这样一来就无法获胜了。
　不过当竞速发生混乱时则另当别论。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140370a02">
「哈……
　话说回来我反而更在意了。凑斗先生难不成
喜欢<RUBY text="Armour Race">装甲竞技</RUBY>吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140380a00">
「喜欢啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　学生时代我曾从属于装甲竞技研究会。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140390a02">
「啊，果然。
　……那、那凑斗先生，你能教教我吗？　关于
竞速的各种事情。」

{	SetVolume("SE01", 500, 500, null);
	SetVolume("SE02", 500, 0, null);
	SetVolume("@mbgm22", 500, 0, null);
	SoundPlay("@mbgm25",500,1000,true);
	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140400a04">
「大小姐大危机！
　敌人用『我想配合你的兴趣』发起了进攻。
这一战术虽然简单却在抓住男人心这方面十
分、非常地有效！」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140410a03">
「你说什么——!?
　这种事不可原谅！」

{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140420a02">
「笨……不、不是的!!
　我只是……觉得事先了解的话可能会对调查
工作有帮助。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140430a04">
「漂亮的场面话。
　那么，真心话是什么呢？」

{	FwC("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140440a02">
「咦？　嗯。我想多了解凑斗先生……
{	SetComic(@0,@0,15);
	FwC("cg/fw/fw一条_怒りa.png");}
　才怪!!　你想让我说什么!?」

{	DeleteComic();
	SetComic(@0,@0,13);
	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140450a03">
「乙女。」

{	DeleteComic();
	SetComic(@0,@0,13);
	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140460a04">
「乙女。」

{	DeleteComic();
	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140470a02">
「混蛋我要在你们嘴上涂胶水哦!?
　凑、凑斗先生也说点什么吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140480a00">
「可以吗。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140490a02">
「诶？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140500a00">
「关于竞速……
　从发源开始，到欧洲的爆发性流行，接着
开始在大和出现、发展。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140510a00">
「<RUBY text="４ＷＤ">四翼驱动</RUBY>发明、<RUBY text="Afterburner">补助推进器</RUBY>登场、田村铁钢
斋的伟业、横锻的怪物骑体猎犬进攻欧洲、广
中兄弟的苦斗——」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140520a00">
「要讲的话一小时也讲不完。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140530a02">
「……呃、那个。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140540a00">
「不，需要花一整天来讲。
　要说明轴驱动、链式驱动与带式驱动各自的
优缺点，和图解说明五四〇型补助推进器的构
造。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140550a00">
「还要就滚珠轴承对驱动体系的实际影响与解
决无法避免转向不足问题的方法进行叙述，
并过渡到中心配置构造的功过，四翼独立悬架。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140560a00">
「将火箭与其前后作品进行比较评价并解说是
最容易理解的，不过这样的话就要从田村在
<RUBY text="２ＷＤ">二翼驱动</RUBY>机体上的
杰作雀蜂的评价开始——」

{	SetComic(@0,@0,17);
	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140570a02">
「那、那个……凑斗先生？」

{	DeleteComic();
	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140580a03">
「景明大人，请振作起来！
　总觉得好像性格都变了一样！」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140590a02">
「……是我不好吗？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140600a04">
「这位大人有一个不能按下的开关。与年龄、
人格完全无关。
　请多注意。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140610a00">
「——总之随着雷霆的登场，可以说田村的四
驱暂时是完成了。而另一方面，也可以说这让
翔京与横锻之间的差距被清晰刻画了出——」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140620a04">
「这件事暂时不管，这样如何呢？」

{	Move("@StL*", 200, @-300, @0, Axl1, false);
	DeleteStL(200,false);
	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140630a03">
「哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がす。
	CreateTextureSP("絵ＳＴ2000", 2000, -1024, middle, "cg/st/resize/st香奈枝_通常_私服a_l.png");
	Move("絵ＳＴ2000", 0, @0, @+210, Dxl1, true);

	Move("絵ＳＴ2000", 300, @1024, @0, Dxl1, true);

	CreatePlainSP("絵振", 5000);
	Wait(1);
	CreateColorSP("絵フラ", 5500, "#FFFFFF");
	SetVolume("@mbgm25", 300, 0, null);
	SetVolume("SE01", 300, 0, null);
	OnSE("se戦闘_攻撃_殴る02",1000);
	Wait(10);
	FadeDelete("絵フラ", 100, false);
	FadeFR2("絵振",0,1000,300,0,0,10,Dxl2, true);
	Delete("絵振");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　脖子挨了一击重拳。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵ＳＴ2000", 200, @-60, @0, null, false);
	FadeDelete("絵ＳＴ2000", 200, true);

	StL(1000, @-30, @0,"cg/st/st香奈枝_通常_私服a.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140640a00">
「…………失礼了。
　刚刚好像有点忘我。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140650a03">
「哎呀，景明大人真是的。哦呵呵。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140660a00">
「一条。等以后有空再聊吧。
　现在我们有任务在身。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140670a02">
「是、是。说得没错。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――



..//好感度分岐
//◆好感度分岐。好感度が最も高いヒロインのミニイベントに接続する。
//◆ただし、全ヒロインが一定値に達していない場合はイベント無しのルートへ

..//ジャンプ指定
//※嶋流　次のスクリプトに関して、ヒロイン別にスクリプト内で分岐します。
//次ファイル　"ma03_015.nss"

}


