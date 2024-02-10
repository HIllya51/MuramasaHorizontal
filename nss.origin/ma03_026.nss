//<continuation number="2000">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_026.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_027vs.nss";

}

scene ma03_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_025.nss"

//◆サーキット場·昼
//◆サーキット場·夕
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(1000);

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_02.jpg");
	FadeBG(2000,true);

	WaitKey(1000);

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260010a08">
《——嗯嗯。吾此刻心怀极大的满足感宣布。
　吾看到了美丽的战斗！》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260020a08">
《虽然发生了不幸的事故……不过这也是战斗的
增色。有些东西正因为危险而耀眼。
　玫瑰的刺可是很尖锐的哦。》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260030a08">
《能从如此美丽而残酷的斗争中胜出的人才值
得得到最高的赞美。
　Ｔ·Ｆ·Ｆ！》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260040a08">
《你们是胜利者哦！
　大和ＧＰ的桂冠是你们的了！》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260050a08">
《你们是——
　有史以来第一位一统大和装甲竞技的王者!!》

{	CreateSE("SE01","se背景_ガヤ_歓声02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260060a08">
《恭喜！
　接下来，请举起胜利的奖杯！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(2000);

//◆パドック廊下
//◆村正レーシングモデル
	ClearWaitAll(2000, 1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	StR(1000, @0, @0,"cg/st/3d村正競技_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……身体沉重。
　但，不想解除装甲。

　一旦解除了的话，我一定会像一滩烂泥一样睡着。
　压迫身心的疲劳会将我强制性地拉入安稳的梦乡。

　现在的我，绝对没有忍耐住的力量。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

	StL(1010, @-60, @0,"cg/st/stさよ_通常_私服.png");
	StCL(1000, @60, @0,"cg/st/st香奈枝_通常_私服a.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(300,false);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0260070a03">
「景明大人。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260080a00">
「有什么事。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0260090a03">
「绝大多数的队伍好像都已经回去了。
　观众也……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260100a00">
「田村呢。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0260110a04">
「皇路父女好像不久前才从记者那里解放
出来。
　就在刚刚，回机库去了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260120a00">
「非常感谢。
　——村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0260130a01">
《嗯。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260140a00">
「“卵”的反应呢。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0260150a01">
《还在，这个附近。
　一直都还是濒临觉醒的状态……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260160a00">
「明白了。
　……用排除法，结论可以说已经出来了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0260170a01">
《……大概吧。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0260180a01">
《但是，为什么……
　停留在<RUBY text="··">濒临</RUBY>阶段呢……？》

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0260190a02">
「凑斗先生……
　后面，那个。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260200a00">
「之后就是我的职责了。
　你回去吧。在指示下达之前待命。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0260210a02">
「……那个。
　我也要……！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260220a00">
「回去。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0260230a02">
「…………好的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260240a00">
「大尉阁下也是。
　后面的事情请交给我。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0260250a03">
「……我明白了。
　稍后再见吧。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0260260a04">
「……那么。
　先告辞了，凑斗大人。」

//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0260270a04">
「祝您好运。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆三人、去る
	CreateSE("SE01","se人体_足音_歩く01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	DeleteStA(300,true);
	SetVolume("SE*", 5000, 0, null);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260280a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆ガチャ。ギー。戸が開く音。
//◆タムラのガレージ
	CreateSE("SE01","se日常_学校_教室ドア開ける01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StL(1000, @0, @0,"cg/st/st皇路_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260290b24">
「……！
　您是……凑斗先生，吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　对着突然以剑胄姿态出现的我，皇路卓露出惊讶的
表情。
　在他身后的是皇路操。和我一样身上也包裹着剑
胄。大概是比赛过后到现在，没有时间解除吧。

　只有头盔摘下来了，放在一旁。
　难道是刚好在脱吗。

　没有看到其他工作人员的身影。
　只有皇路父女，两个人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260300b24">
「怎么了，那种打扮。
　您还没有回去吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260310a00">
「是的。
　有件事，不得不做。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260320b24">
「……？
　难道，您是专程前来祝贺的吗？」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260330b24">
「那还真是对不住了。让您久等了吧。
　我们遭到了媒体接连不断的袭击。哈哈，
有点——」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260340a00">
「非常遗憾，不是的。」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260350b24">
「……啊？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260360a00">
「——真的很遗憾。
　并不是为了这件事。皇路先生。」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260370b24">
「…………那么，到底是。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260380a00">
「我是来履行作为一个警察的义务的。
　揭发犯罪的义务。」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260390b24">
「……！」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260400b42">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260410a00">
「田村甲业职员，皇路卓。以及皇路操。
　你们二位涉嫌杀人予以逮捕。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260420a00">
「请随我到警署走一趟。」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260430b24">
「…………这、这是怎么回事。
　我完全不明白。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260440b24">
「是因为理想号的事故吗？
　那种事情在装甲竞技中并不少见啊……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260450a00">
「是的。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260460a00">
「——理想号冲入了观众席，并且爆炸，起火。
　导致包括骑手在内有六人死亡，其余十五人
受伤。」

{	FwC("cg/fw/fw操_沈痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260470b42">
「……呜……！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260480a00">
「不过……
　这确实是在装甲竞技中会发生的。不是什么
值得大惊小怪的事情。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260490a00">
「如果这的确是<RUBY text="··">事故</RUBY>的话。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260500b24">
「没、没错啊。
　而且最关键的是，那个事故和我们没有一点
关系！　只是理想号的骑手急躁之下自己犯的
错误。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260510a00">
「不对。」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260520b24">
「唔……!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260530a00">
「理想号没有急躁的理由。
　那种情况下，会急躁的除了你们别无他人。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260540a00">
「我说错了吗。」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260550b24">
「……那、那没错……我们的确也很焦虑。但
是翔京应该也一样。
　就算是优势的一方，也有优势一方的压力啊，
凑斗先生。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260560a00">
「我不否认这一点。
　但我自己对翔京的骑手稍微知道一点。他并
不是一个会因这点程度的紧张感就忘记了自己
所拥有的技术的人。」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260570b24">
「……那、那又怎么样！
　所以你就是想说，我们肯定是做了些什么吗！」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260580b24">
「真是诡辩！
　凑斗先生，你说的话一点都不合理！　
  这是诽谤！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260590b24">
「本来我是应该提起诉讼的，但你对我们有恩。
这一次我就忘了吧。
　请回！　立刻！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260600a00">
「…………」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260610b24">
「……呜。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260620a00">
「——那个时候。
　能够确认到<RUBY text="···">那件事</RUBY>的人，有从后方观察理想
号和逆袭骑两骑情况的我。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260630a00">
「还有观众席上极度仔细，而且位置和视角都
非常合适的人。这大概没多少人吧。
　但至少有一人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　就是大鸟大尉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_銃器_構える01");
	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260640b24">
「你……你在说什么啊。
　我完全……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260650a00">
「在理想号为了超过逆袭骑，将注意力集中到
逆袭骑身上的那个瞬间。
　逆袭骑装甲的一部分<RUBY text="···">镜面化</RUBY>，反射了
阳光。」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260660b24">
「!!」

{	SoundPlay("@mbgm32",0,1000,true);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260670a00">
「理想号利用逆袭号减少风阻，想要超过去的
一瞬间。
　理想号的骑手丧失视觉，失去了控制——
冲出了赛场。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260680a00">
「由此引发了惨剧。
　包含自己在内，产生了二十一名牺牲者。」

{	FwC("cg/fw/fw操_沈痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260690b42">
「……」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260700b24">
「……证……证据……
　证据呢……！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260710a00">
「就在那里。
　——皇路操。立刻解除武装。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260720a00">
「那个竞技用剑胄将作为证物进行扣押。」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260730b24">
「呜……呜啊……！」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260740b42">
「……」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260750b24">
「呜……啊啊啊啊！」

//◆チャキ。
//◆銃を構える皇路
{	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw操_沈痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260760b42">
「……父亲！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260770a00">
「……这是没有意义的行为。
　请把枪放下。这样，只会增加您的罪行。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260780b24">
「哈哈……没有意义？
　不对……不对啊。」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260790b24">
「我对竞技用剑胄一清二楚……这种距离下，
这种口径的子弹是档不下来的。
　凑斗先生。你消失就好了。只要你……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260800a00">
「没有意义的。」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260810b24">
「如果……
　如果你要抢走我的胜利……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260820a00">
「请把枪放下。」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260830b24">
「——死吧！
　你去死吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばきゅーん。
//◆かちーん。
	OnSE("se戦闘_銃器_跳弾01",1000);
	CreateColorEX("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 10, 800, null, true);
	FadeDelete("絵フラ", 300, true);

	SetFwC("cg/fw/fw皇路_崩壊.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260840b24">
「……呜!?」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260850a00">
「……」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260860b24">
「不……不可能。
　这是不可能的！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばきゅーんばきゅーん。
//◆かんかん。
	CreateSE("SE01a","se戦闘_銃器_跳弾01");
	CreateSE("SE01b","se戦闘_銃器_跳弾01");
	MusicStart("SE01a",0,1000,0,1300,null,false);
	CreateColorEX("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 10, 800, null, true);
	MusicStart("SE01b",0,1000,0,700,null,false);
	FadeDelete("絵フラ", 300, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260870a00">
「……投降吧。皇路卓。
　您的抵抗是无用的。」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260880b24">
「为……为什么……！
　竞技用剑胄那薄薄的装甲，明明是不可能防
得住的啊……!?」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260890b24">
「……难、
　难道说……那个是……」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260900b24">
「那个是……!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260910a00">
「村正。现在解除。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0260920a01">
《总算可以了？
　太好了。终于可以喘口气了……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260930a00">
「遇鬼斩鬼。
　逢佛弑佛。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260940a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バキーン。
//◆村正ノーマルモード

	OnSE("se特殊_鎧_装着03",1000);
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵フラ", 15000, "#FFFFFF");
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	StR(1000, @-24, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("上背景", 2000, true);
	WaitKey(1000);
	FadeDelete("絵フラ", 2000, true);

	SetFwC("cg/fw/fw皇路_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260950b24">
「……真打剑胄……！
　怎么可能，为什么，警察会……!?」

{	DeleteStR(300,false);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260960a00">
「皇路卓。把枪放下。
　皇路操。解除剑胄。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260970a00">
「我命令二位投降。
　一切的抵抗都是无用的。」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260980b24">
「啊……啊……」

{	FwC("cg/fw/fw操_悲痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260990b42">
「……」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261000b24">
「为什么……
　为什么会变成这样……」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261010b24">
「好不容易……才取得了胜利。
　好不容易，才可以向世界挑战的。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261020b24">
「凑、凑斗先生……你曾经为我呐喊过的！
　你知道我的遗憾吧！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261030b24">
「我……我，好不容易才从那次挫折中走到这
一步啊！
　我受了多少的苦啊！　是你的话，应该会理
解我的啊！」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261040a00">
「……」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261050b24">
「请放过我吧……！
　求你了……求你……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261060a00">
「我明白您所受的苦。
　虽然很愚蠢，但我甚至感到同情。」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261070b24">
「凑……凑斗先生……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261080a00">
「但是。
　您杀人了。」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261090b24">
「……呜！」

{	FwC("cg/fw/fw操_沈痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261100b42">
「……凑斗先生……
　杀人的……是我……」

//【操】
<voice name="操" class="操" src="voice/ma03/0261110b42">
「……不是……父亲……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261120b24">
「操……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261130a00">
「…………」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261140b24">
「我、我杀了翔京的那个家伙……那又如何。
　你也看到了吧！　是他们先伤害了我们——
想要杀掉我们啊！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261150b24">
「我只不过和那些家伙做了一样的事情！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261160a00">
「如果您做了和他们一样的事情。
　也应该和他们承担，一样的罪责。」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261170b24">
「呜呜……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261180a00">
「——退一步说。
　即使在这一点上放过你们。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261190a00">
「对于被卷入事故的观众来说，一切的解释都
是行不通的。
　他们没有对您做过任何事。但却被杀害，或
者身受重伤。」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261200b24">
「呜……呜呜呜……
　可恶，可恶，可恶!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばきゅんばきゅん
	CreateSE("SE01a","se戦闘_銃器_跳弾02");//ダミー注意
	CreateSE("SE01b","se戦闘_銃器_跳弾02");//ダミー注意
	MusicStart("SE01a",0,1000,0,1300,null,false);
	CreateColorEX("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 10, 800, null, true);
	MusicStart("SE01b",0,1000,0,700,null,false);
	FadeDelete("絵フラ", 300, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261210a00">
「……」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261220b24">
「观众又怎么了！
　那些家伙在我活跃的时候给我拍手送来喝彩，
享受着胜利的余荫。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261230b24">
「一旦我失败了，就马上把我忘得干干净净，
朝下一个英雄微笑！
　他们只是把我当做一种消费！　像食物一
样！　像玩具一样！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261240b24">
「那种家伙会受到多大波及，和我有什么关系！
　和我有什么关系啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばきゅんばきゅん
	CreateSE("SE01a","se戦闘_銃器_跳弾02");//ダミー注意
	CreateSE("SE01b","se戦闘_銃器_跳弾02");//ダミー注意
	MusicStart("SE01a",0,1000,0,1300,null,false);
	CreateColorEX("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 10, 800, null, true);
	MusicStart("SE01b",0,1000,0,700,null,false);
	FadeDelete("絵フラ", 2000, true);

//◆かちかち。弾が尽きた。
	OnSE("se戦闘_銃器_複数構える01",1000);//ダミー注意

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261250a00">
「……投降吧。」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261260b24">
「呜……啊啊啊，啊啊啊啊啊。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261270a00">
「如果您能投降并束手就擒，就不会有事。
　我保证您能得到合法的待遇。」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261280b24">
「如果被捕的话，我会怎么样……
　操会怎么样。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261290b24">
「今天的胜利呢……
　对世界的挑战呢！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261300a00">
「……」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261310b24">
「你要夺走吗!?
　全部，一切，都要从我这里夺走吗!?」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261320b24">
「让我放弃吗——
　又要再一次对我说，让我放弃吗！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261330b24">
「我不要！　不要不要不要！
　那种事情我一次都不想经历！　难道
还要我经历第二次吗！」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261340b24">
「不会让给你的！
　今天的胜利是属于我的！　通往世界的道路
是属于我的！　我不会让给任何人的!!」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261350a00">
「皇路卓。
　那已经不属于您了。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261360a00">
「在您……
　搞错了战斗方式的时候。就已经失去了。」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261370b24">
「不承认……
　我不会承认的……」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261380b24">
「操……
　穿上装甲！」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261390b42">
「……父亲……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261400a00">
「皇路卓！
　快投降！」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261410b24">
「操！」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261420b42">
「……明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ジャキ。兜装着
//◆アベンジ
	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(300);

	StL(1000, @0, @0,"cg/st/3dアベンジ_立ち_通常.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261430a00">
「皇路操。你遵从你父亲的指示也没有意义！
　无论你要如何操纵竞技用剑胄都是不可能反
抗的！」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261440a00">
「解除武装！」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261450b42">
「……对不起。凑斗先生。
　正确的一方，肯定是您……」

//【操】
<voice name="操" class="操" src="voice/ma03/0261460b42">
「但是……就算错了……
　我还是听父亲的。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261470a00">
「……呜……」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261480b24">
「没错……操。
　我们不是分开的。我们是一体的。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261490b24">
「我就是你。
　你就是我。」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261500b42">
「是。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261510b24">
「你的胜利就是我的胜利。
　所以你必须胜利。」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261520b42">
「是。」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261530b24">
「我必须让你获得胜利……
　无论要做什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キラッ。
//陰義発動まとめ
	CreateSE("SE01","se特殊_陰義_発動04");
	CreateSE("SE02","se日常_建物_窓ガラス破壊01");
	CreateSE("SE03","se日常_物_木箱壊れる01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);

	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261540a00">
「——!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261550a01">
《主君！
　……那是——!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　皇路卓从怀中取出了一样东西。
　拳头大小的，发光的球体——

　是银星号的“卵”!!

　……难道没有植入吗!?
　银星号就那样亲手交给他了吗!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261560a00">
「所以才没有发现吗……！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261570a01">
《所以才没有孵化吗!?》

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261580b42">
「父亲……
　那是……」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261590b24">
「是<RUBY text="··">力量</RUBY>。
　肯定是，非常非常恐怖的力量。」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261600b24">
「是从银色的恶魔那里，拿到的哦。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261610a00">
「马上把那个给我，皇路卓！
　那不会给你带来任何东西！」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261620a00">
「只会夺走！
　把一切都夺走！」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261630b24">
「……嗯。恶魔也这么说过。
　用了这个的话就会失去一切。」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261640b24">
「然后，作为交换……
　就可以得到我想要的力量。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261650b24">
「可以实现统领竞速世界的梦想！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261660a00">
「这是欺骗!!
　也许的确可以获得力量。但是那种力量，只
会把您，还有您的女儿，通通啃食干净！」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261670b24">
「那又怎么样？
　我能忍受自己的毁灭。我也能忍受失去自己
的一部分，操。
　无法忍受的只有……」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261680b24">
「无法忍受的只有失去我和操的胜利!!」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261690a00">
「皇路卓!!」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261700b24">
「操！
　我们要赢！　我们一定要赢!!」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261710b42">
「……是。父亲。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261720a01">
《主君！
　不行，阻止他——！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261730a00">
「啊——啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬撃
	SetVolume("@mbgm*", 10, 0, null);
	PrintBG("上背景", 30000);
	CreateColorSP("絵地", 10, "#000000");
	Delete("上背景");

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	WaitKey(500);

//◆ずばしゅ。
	OnSE("se人体_血_血しぶき01",1000);
	SL_centerdam(@0, @0,1000);
	SL_centerdamfade2(10);

	CreateColorEX("絵血", 5000, "#CC0000");
	Fade("絵血", 600, 1000, null, true);

	PrintGO("上背景", 25000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fwアベンジ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【操】
<voice name="操" class="操" src="voice/ma03/0261740b42">
「————父亲!?」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261750b24">
「呜……」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261760b24">
「哦啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュ。ピキーン。
//陰義発動まとめ
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261770a01">
《“卵”——!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261780a00">
「呜……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ
//◆フラッシュ。なんか力が宿ったっぽく。ちょっと変形？
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fwアベンジ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【操】
<voice name="操" class="操" src="voice/ma03/0261790b42">
「父亲！
　……父亲!!」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261800b24">
「去……去吧。
　去吧……操!!」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261810b24">
「要赢！
　要战胜世界！」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261820b42">
「血……啊啊……！」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261830b24">
「操！
　我就在那里！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261840b24">
「那个逆袭骑就是我！
　你的血肉就是我！
　你忘了吗！」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261850b42">
「……呜……」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261860b24">
「去超越世界吧，操！
　用我的骑体！
　用我的技术！」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261870b24">
「带我……去世界的顶点！
　操——————————————!!」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261880b42">
「啊……啊啊，啊。」

//【操】
<voice name="操" class="操" src="voice/ma03/0261890b42">
「啊啊啊啊啊啊啊———
—————————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ消失
//◆ばりーん。窓破る。
//陰義発動まとめ
	CreateSE("SE01a","se戦闘_動作_空突進01");
	CreateSE("SE01b","se戦闘_動作_空突進02");
	CreateSE("SE02","se日常_建物_窓ガラス破壊01");
	CreateSE("SE03","se日常_物_木箱壊れる01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	WaitKey(100);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵フラ", 600, 0, null, false);
	DrawDelete("絵フラ", 300, 500, "slide_05_00_1", true);

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261900b24">
「……没错……操。
　更快……更快地疾驰……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261910b24">
「直到，世界的……尽头…………」

//◆がく。死んだ。
{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261920a00">
「……啊啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　皇路卓死了。
　我杀了他。

　而且，没能阻止他……！
　只是——杀了他而已……吗。

　多么……
　卑劣的，罪恶。

　我……又一次……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261930a01">
《主君！》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261940a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261950a01">
《主君！　追上去！　追啊！
　那个“卵”濒临觉醒了啊！　那个，肯定
是在其他剑胄中被<RUBY text="··">培养</RUBY>过之后，
再取出来的啊……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261960a01">
《所以至今为止才没有孵化。
　但现在不一样了！　“卵”在那个剑胄
中开始孵化了！　没时间了！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261970a01">
《再这样耽搁下去——你知道
这里是哪里的吧，主君!?
　<RUBY text="·······">镰仓会被毁灭的</RUBY>!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261980a00">
「……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　对了。
　现在——不是沉浸在自以为是的悔恨中的时候。

　就算要以自我伤害来进行悲惨的自我安慰，也应该要
等所有事情结束之后。
　现在有必须要做的……事情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261990a00">
「——走吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0262000a01">
《嗯！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛び立つ。ばひゅーん。
	OnSE("se戦闘_動作_空上昇01",1000);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	WaitKey(1000);

	ClearWaitAll(2000, 2000);

//◆空を駆けるアベンジ
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
		CreateTextureSP("絵Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg204_横旋回背景_03.jpg");
		CreateTextureSP("絵Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg204_横旋回背景_03.jpg");
		CreateSCR1("@絵Circuit01","@絵Circuit02",35000,0, @0);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Fade("絵背景100", 0, 1000, null, true);
	BGMoveAuto("@絵背景100",1);

	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　——说起来。
　记忆中全都是<RUBY text="父亲">哥哥</RUBY>的存在。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);
	BGMoveDelete();
	SCR1stop();

}

..//ジャンプ指定
//次ファイル　"ma03_027vs.nss"