//<continuation number="650">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_019.nss_MAIN
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

	$GameName = "mc02_020.nss";

}

scene mc02_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_018.nss"

//◆キャノンの部屋
//◆縦書き
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg029_キャノン中佐執務室_01.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	CreateSE("SE01","se日常_建物_扉開く01");
	StR(1800,@0,@ 0,"cg/st/st雪車町_通常_私服.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	Delete("上背景");
	DrawDelete("絵色黒", $残時間, 100, "blind_01_00_1", true);

	FadeStR(300,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190010a12">
「打扰了……」


{	OnSE("se日常_物_椅子鳴る02",400);
	StL(1800,@0,@ 0,"cg/st/stキャノン_通常_制服.png");
	FadeStL(300,false);
	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190020b03">
「嗨。
　你还是老样子，气色很差呢。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190030a12">
「这是天生的……
　请您别在意。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190040b03">
「抱歉。
　让你多跑一趟。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190050a12">
「嘿、嘿、嘿……！
　中佐大人公务繁忙。这也没办法。」


{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190060a12">
「今天也请容许我只说要事。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190070b03">
「是吗？
　我还在想叫你陪我
小酌一杯呢。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190080a12">
「您的好意我心领了……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190090b03">
「真可惜。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190100a12">
「要是勉强讨厌喝酒的你陪我，
嘿嘿，我可就对不起你呢……」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190110b03">
「……」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190120b03">
「我跟你说过那种事情吗？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190130a12">
「嘿、嘿……无可奉告。
　中佐这般伟大的人，
怎么会去碰酒这种无谓之物呢……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190140a12">
「因为您有其他更令您醉心的
事情……对吧？　比方说，工作……还有
理想，对吧？
　只要您还拥有这些，就不需要美酒。」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//修正（本当に）【090930】
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190150a12">
「等到您放弃人生之后，
才能真正地体会到酒的美好……」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190160b03">
「真是意味深长。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190170a12">
「哪里的话……」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190180b03">
「你呢？」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190190a12">
「您说酒吗？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190200b03">
「是啊。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190210a12">
「酒可是我的最爱哦……」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190220b03">
「真可悲。
　我也得小心可别沉迷于美酒。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190230a12">
「请您小心……」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190240b03">
「来听你的报告吧。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	OnSE("se日常_物_椅子鳴る01",1000);
	DeleteStA(150, true);

	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190250a12">
「……是。
　从结果来说……失败了。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190260b03">
「是复仇失败吗？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190270a12">
「不……
　是因热能到了极限而坠落。」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190280a12">
「骑体大部分都遭到破坏，但零件几乎
都已回收，且可以修复。
　至于<RUBY text="··">里面</RUBY>……几乎已经废掉。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190290a12">
「部分尚可使用。
　也还可以替换……」


//◆読み「ガッツァイダー」
{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190300b03">
「……呼。
　受到之前你在江之岛捡来的资料刺激，
开发部出于兴趣制造出了那个“破灭冰海鸭”。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190310b03">
「虽然我不期待，如何。
　有没有拿出一些成果啊？」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190320a12">
「……这个嘛……
　嗯，我想已经努力过了……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190330a12">
「考虑到敌方的情况。
　或许复合龙骑兵这一构想……
会有出乎意料的可行性哦。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190340b03">
「喔？」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190350a12">
「还得再次拿那家伙来实验，
根据结果……嗯。
　如果实验顺利，不小心将其击落的话……」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190360b03">
「这就是闲人的消遣，
突然成为正规研究吧。
　很有趣。我很有兴趣。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190370b03">
「继续执行作战计划，雪车町。
　细节就交给你了。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190380a12">
「……遵命。
　这不要紧吗……？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190390b03">
「不要紧吧？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190400a12">
「……」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190410a12">
「可是，中佐大人。
　我有个困扰，目标隐藏起
自己的行踪……」



{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190420b03">
「你说村正——凑斗景明吗？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190430a12">
「是的。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190440b03">
「对我抱怨也没用。
　找人不是你的看家本领吗？」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190450b03">
「就算凑斗潜藏在关东某处，凭借你的能力，
你应该立刻就能找到他吧？」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190460a12">
「果真如此吗……」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190470b03">
「他不在关东吗？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190480a12">
「有可能……
　不然……他就是躲在我
追查不到的地方……」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190490a12">
「像是普陀乐……或是公方府……
　……还有横滨基地之类的地方。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190500b03">
「哼……？
　真愚蠢，虽然我很想一笑置之。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190510b03">
「不过，毕竟这话出自你之口。
　你要搜查下基地吗？」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190520a12">
「……」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190530b03">
「我会发给你许可证。
　这不费事。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190540a12">
「……不、不……
　我只是说说而已……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190550a12">
「他不会在那种地方的……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190560b03">
「这可是你说的。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190570a12">
「…………」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190580b03">
「还有其他事情吗？」


{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190590a12">
「没什么了……」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190600b03">
「那你就继续进行任务吧。
　杀了凑斗景明。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190610b03">
「他的存在对ＧＨＱ不利。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190620a12">
「……是的。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190630b03">
「需要支援的话就跟我说。我会跟你商讨的。
　只是，我暂时还会非常忙碌……
或许无法及时给予你支援。」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0190640b03">
「你要做好心理准备，雪车町。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc02/0190650a12">
「……我明白了……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_020.nss"