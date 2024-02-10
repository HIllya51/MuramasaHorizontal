//<continuation number="280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_020vs.nss_MAIN
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
	#bg002_空a_02=true;
	#bg001_空a_02=true;
	#bg002_空a_01=true;
	#bg001_空a_01=true;
	#bg047_景明故郷町a_01=true;
	#ev226_景明ＶＳ黒瀬_b=true;
	#bg053_堀越御所の庭_01=true;
	#ev249_村正VS銀星号２_a=true;
	#ev249_村正VS銀星号２_b=true;
	#ev249_村正VS銀星号２_b2=true;
	#ev249_村正VS銀星号２_c=true;
	#ev249_村正VS銀星号２_d=true;
	#ev249_村正VS銀星号２_e=true;
	#ev128_病床の光_a03=true;
	#ev249_村正VS銀星号２_f=true;
	#ev249_村正VS銀星号２_g=true;
	#ev250_銀星号リバースエノシマインパクト=true;
	#bg202_旋回演出背景山a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_021.nss";

}

scene md05_020vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_019vs.nss"

//◆決戦·第一局
//◆暁空（夕空）
	PrintBG("上背景", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg002_空a_02.jpg");
	SoundPlay("@mbgm11",0,1000,true);
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……一击定胜负。
　
　没错，看穿对方。

　显而易见，银星号可能一击攻破<RUBY text="我">村正</RUBY>。
　然而反之亦然。银星号已不是拥有巨大身躯的“神”，
不过是会被剑一击斩断的<RUBY text="ｓｉｚｅ">规模</RUBY>罢了。

　仅一击。击中者得胜。

　虽不是地上战，但也极为相似。
　彼此重力控制悬浮着的这个姿势，
是为了把能直接对话的距离，作为起点。

　现在若是转为飞行，等于背对敌人逃跑。
　会露出致命破绽。

　万万不能动。
　行动之时，便是攻击之时。

　是放出必杀一击的时刻。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号·構
	PrintGO("背景０", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	FadeStL(0,true);
	FadeDelete("背景０", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　银星号伸出左手，收回右手，摆好架势。
　
　吉野御流合战礼法，徒手之势的一种——槐。
　略有自成一派的攻势。

　左手在防御的同时进行佯攻，使敌人的攻击无效，
以右手制敌。那才是槐之势的真意。
　但是，银星号一定不止如此。

　恐怕……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·八幡宮での銀星号戦
//◆一瞬で消えてぞがーん。吹っ飛ぶ村正
//◆戻り
	CreateColorEX("色１", 9000, "#FFFFFF");

	CreatePlainSP("背景０", 10001);
	Wait(1);
	CreateTextureSP("背景２", 100, 0, 0, "cg/bg/bg002_空a_01.jpg");
	CreateEffect("エフェクト１", 10000, 0, 0, 1024, 576, "Sepia");
	SetAlias("エフェクト１", "エフェクト１");
	Fade("背景０", 1000, 0, null, false);

	Wait(2000);

	SetBlur("@StL*", true, 3, 500, 200, false);
	Move("@StL*", 100, @100, @0, Axl1, false);
	DeleteStA(100,true);

	Fade("色１", 0, 1000, null, true);
	CreateTextureSP("背景２", 100, 0, 0, "cg/bg/bg001_空a_01.jpg");
	CreateTextureSP("自機１", 100, 0, -300, "cg/st/3d村正標準_騎航_通常.png");
	CreateTextureSP("自機２", 100, -20, -300, "cg/st/3d村正標準_騎航_通常.png");
	Rotate("自機１", 0, @0, @0, @180, null, true);
	Rotate("自機２", 0, @0, @0, @180, null, true);
	Fade("自機２", 0, 500, null, true);

	Move("自機*", 500, @50, @0, Dxl1, false);
	Fade("色１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　和在八幡宮上空战斗时一样。
　不耍小伎俩，只凭速度攻击。

　本来，这根本不是能称为战术的盲目冒进。
　但若是能达到<RUBY text="·····">无法辨识的</RUBY>战斗速度
——其恐怖程度要强于任何精密战术。

　如此一来，用拳打——或是脚踢呢。
　哪种都行吧。那份力量和能力如今再添愤怒和杀意，
不管哪种都能将我连同装甲一起四分五裂吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("背景０", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	FadeStL(0,true);
	FadeDelete("背景０", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
　……光的姿态，一如会溶入风中般自然。
　其中，只有双眸射出红莲的光芒，
窥视着进攻机会……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正·構
	PrintBG("背景０", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	StR(1000, @0, @0,"cg/st/3d村正最終_立ち_戦闘a.png");
	FadeStR(0,true);
	FadeDelete("背景０", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　与此相对。
　我将野太刀挑上右肩。

　武者正调，举刀过顶。
　看似简单，却拥有千变万化的灵活性，但其最终
还是回归单纯——斩击踏入距离内的敌人。

　仅此而已。

　虽可耍点小花招，但一考虑对手，还是不做为好。
　只以白费力气结束，还算是侥幸。浪费重逾千金的时
间，或可成为败北的决定性因素。

　在即将造访的交错之间，<RUBY text="····">唯有斩杀</RUBY>，
并无其他空闲。

　捕捉银星号踏入最佳距离的瞬间，斩击。
　
　……在我能采取的行动中，只有这种是正确的。

　我方占有距离优势。
　面对徒手的敌方，使用野太刀的我，
在攻击范围上更甚一筹。

　可以等待敌人动作，再先发制人。

　——但是。
　
　若能精确捕捉那一瞬。
　不被银星号的速度甩开。

　此即为决定胜败的关键。
　我能抓住那时机吗？　过去从未成功的大难题，
今日会实现吗……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆対峙。ev249
	PrintBG("背景０", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	FadeStL(0,true);
	FadeDelete("背景０", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　无论在何处，银星号的呼吸都镇定自若。

　犹如入眠之人一般——
　不，就是入眠之人本身。

　那是梦。

　梦的话，便能心情静谧，抵达神仙之境界。
　
　——真正的梦想剑。

　如何才能把握这先机呢。

　成功与胜利的条件有三。

　其一。
　不忘记对手是<RUBY text="···">银星号</RUBY>。

　其二。
　忘记敌人是<RUBY text="···">凑斗光</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想フラッシュ·過去の光
	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreateTextureEX("背景２", 2100, 0, 0, "cg/bg/bg047_景明故郷町a_01.jpg");
	StR(3000, @0, @0,"cg/st/st光三年前_通常_制服.png");
	SetTone("背景２", Sepia);
	SetTone("@StR*", Sepia);

	Fade("色１", 0, 1000, null, true);
	FadeStR(0,true);
	Fade("背景２", 0, 1000, null, true);
	Fade("色１", 300, 0, null, true);
	Wait(500);
	Fade("色１", 100, 1000, null, true);
	DeleteStR(0,true);
	Delete("背景２");
	Fade("色１", 500, 0, null, true);

	SetFwC("cg/fw/fw村正武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0010a00">
（————）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　其三。
　达到无我境界。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·建朝寺前の戦闘
//	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreateTextureEX("背景２", 2100, 0, 0, "cg/ev/ev226_景明ＶＳ黒瀬_b.jpg");
	SetTone("背景２", Sepia);

//	Fade("色１", 0, 1000, null, true);
	Fade("背景２", 500, 1000, null, true);
//	Fade("色１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　被精神污染的那一刻……
　我挥出了平时绝对挥不出的一剑。

　不依靠剑胄之力，强行劈开了铁甲。

　那时的剑就是由心而生。
  精神污染使得内心变得固执。与无我境界完全相反，
但在排除所有杂念这点上，是与无我对等的心境——

　由此而生的一剑。
　
　……对。比那次更早，在很久以前——使出<RUBY text="····">同样一剑</RUBY>
之时，一定也是这种心境。

　若是心境接近无我，却并非无我，就能使出那样的
技术。
　也能击杀银星号。

　能达到那心境的话……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	DeleteStA(0,true);

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_02.jpg");
	StR(1000, @0, @0,"cg/st/3d村正最終_立ち_戦闘a.png");

//	Fade("色１", 100, 1000, null, true);
//	Delete("背景２");
	FadeStR(0,true);
//	Fade("色１", 300, 0, null, true);
	FadeDelete("背景２", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　向着那心境。

　回忆起来吧。
　那狭隘固执的病态心理。

　想起来吧。
　无我之理。

　杀了，我。

　或者说灭杀，杂念。

　……无我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·堀越の童心坊
//	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreatePlainSP("背景０", 19999);
	Wait(1);

	CreateTextureSP("背景２", 2100, 0, 0, "cg/bg/bg053_堀越御所の庭_01.jpg");
	SetTone("背景２", Sepia);


	Fade("背景０", 500, 0, null, true);

	SetFwC("cg/fw/fw童心変装_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【童心】
<voice name="童心" class="童心" src="voice/md05/020vs0020a09">
「正是。
　如果无念是指将宇宙变无之理念，
无我即是将自我变无之理念。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md05/020vs0030a09">
「此亦通用于全部法则。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md05/020vs0040a09">
「达到无我境界，既无私事也无私欲。」

{      FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md05/020vs0050a09">
「只有世间大义。
　讨伐那敌人也即世间之意志。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md05/020vs0060a09">
「消去汝之欲念……
　在世界之意志下行动，讨伐敌人吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("色１", 1000, 1000, Axl2, true);
	DeleteStA(0,true);
	Delete("背景*");
	Wait(1000);

	StL(1000, @0, @0,"cg/st/st光_装甲_私服a.png");
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a1.png");
	FadeStL(0,false);
	FadeStR(0,false);

	Fade("色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　无我。

　杀了，我。

　将一切杂念，
　作为凑斗光兄长的回忆，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
　抹杀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-100, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	StR(1000, @150, @0,"cg/st/3d村正最終_立ち_戦闘a.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw村正武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0070a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　杀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//◆キュピーン。世界が変わる感じ
	SetVolume("@mbgm*", 4000, 0, NULL);
	Wait(4000);

	PrintBG("背景０", 30000);
	OnSE("se特殊_雰囲気_発光03",1000);
	CreateTextureSP("イベント１", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_a.jpg");
	FadeDelete("背景０", 2000, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　敌人攻击过来之时，
　捕捉到时机，斩下。

　……第一刀也可能被躲开。

　届时，
　也要捕捉那时机。

　看穿敌人闪避的刹那，
　看穿敌人闪避的方向，

　一刀回击。

　——燕返。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	Wait(3000);


	SetFwC("cg/fw/fw光_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md05/020vs0080a14">
「景明啊。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0090a00">
「……」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/020vs0100a14">
「我有一问。」

//【光】
<voice name="光" class="光" src="voice/md05/020vs0110a14">
「死者的灵魂，会前去何方……？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0120a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0130a00">
「死者没有去处。」

//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0140a00">
「……但是……
　如果，有的话。」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/020vs0150a14">
「如果有的话？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0160a00">
「会坠入地下，长眠吧。」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/020vs0170a14">
「这样啊。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/020vs0180a14">
「我还以为会闪耀着升天。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//◆ノーワイプでev249a
//◆時間停止
//◆※ここの演出コンセプトは「緩·急·止」
//◆ウェイトが緩、突進と迎撃が急、そして寸止め

	Wait(5000);
	CreateTextureSP("イベント２", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_b.jpg");

	SoundPlay("@mbgm09",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　看穿了————

　白银的轨迹，
　已经捕捉到那神速的突进。

　不是凭感觉，而是依靠直觉，早已醒悟。

　斩击，
　已经没有思考的时间，

　我的肉体回应着。

　挥下野太刀，
　为将敌骑两断，送回灼热的地面。

　斩下……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号翔躍
//◆斬り下ろし、空振り
//◆停止

	CreateTextureEX("イベント１", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_b2.jpg");
	Fade("イベント１", 300, 1000, null, true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　天空裂开。

　竭尽全力挥出一剑，
　却并未血溅。

　要说为何——

　白银，值得畏惧。
　竭尽全力也无法企及。

  面对理应必杀的一剑，<k>
　
　
　　　　　　　　　————她躲开了！

　但是。

　我很清楚。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆襲い来る銀星号
	CreateTextureEX("イベント２", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_c.jpg");
	Fade("イベント２", 300, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　敌人会躲开这件事，
　知道会<RUBY text="··">向上</RUBY>逃走这件事。

　在敌人攻击未到的期间，我察觉到了。

　也就是说。

　我没有逃。

　而是捕捉。

　白银，在我的感官范围内。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("イベント１", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_d.jpg");
	Fade("イベント１", 300, 1000, null, true);
	Wait(1000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
　回击。

　反转轨道，向上。

　对着在那里的影子，

　斩击，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆野太刀。さあ斬るぞって出端に
//◆銀星号、目前へ
	CreateTextureEX("イベント２", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_e.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　这个先机，<k>{Wait(1000);Fade("イベント２", 300, 1000, null, true);}捕捉到了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【光】
<voice name="光" class="光" src="voice/md05/020vs0190a14">
「——」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0200a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　在足以接吻的近距离，视线相合。

　针刺穿一张薄纸——如此短暂的时间。
　视线相交。

　胜负已定。

　战机极为确定。
　最快之剑，亦是最短之剑。

　已追不上。

　这速度。
　已然无法超越。

　要是还有一瞬的千分之一，这点时间也好。
　只要有这时间，便能赶在敌人攻到前斩下。

　但是白银，没给我这喘息之机。

　已冲向我怀。

　已是野太刀要斩也无法斩下的距离。

　是敌人的拳绝不会打偏的必杀距离。

　败势已经无法挽回。

　胜负已定。

　——已经定了。

　那么，<k>
　<RUBY text="·">我</RUBY>，<RUBY text="·····">在做什么呢</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正右手周辺アップ
	CreateTextureEX("イベント１", 100, -628, -183, "cg/ev/ev249_村正VS銀星号２_e.jpg");
	Request("イベント１", Smoothing);
	Zoom("イベント１", 0, 3000, 3000, Dxl2, true);

	Move("イベント１", 3000, @-100, @0, Dxl1, false);
	Fade("イベント１", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　右手在动。

　奇怪。
　这只手，本应握着野太刀的柄。

　为何松开手。

　要做什么。

　右手朝着我的腰。

　想去抓在那里的某物。

　在那里的，<k>
　短刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0210a00">
（是，吗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　这是。

　在锻炼之下，已深深铭刻于身体的一个技术。

　吉野御流合战礼法
　
　————比翼。

　在太刀斩下的刹那，
　右手松开太刀，拔出短刀向上斩。

　以此战术对付看穿太刀动向，并冲入怀里的敌人。

　我正在使用它。
　无意识下。

　为何？

　为何，能做到？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0220a00">
（胜利的条件）

//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0230a00">
（<RUBY text="············">不忘记敌人是银星号这件事</RUBY>）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　对。
　我记得。

　敌人是银星号。

　是无论胜算如何累积，依然能反其道而行之的敌人。

　最重要的是，身体记得。
　几度受到虐待的肉体、骨头。

　所以。
　这次定要。

　预测最糟最糟最糟的情况，特意为此备好相应反击。

　吉野御流，比翼。

　……我，

　比银星号，

　————————————更迅速。

　拔出短刀……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆脇差抜刀。ちゃきん。
	OnSE("se戦闘_動作_刀構え01",1000);
	Wait(200);
	Fade("イベント*", 0, 0, null, true);
	Delete("イベント*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
  斩。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一瞬、ノイズのようにＣＧ。過去の光
//◆斬。しゅぱーん。斬り上げアニメ
//◆ウェイト

	SL_leftup2(10001,@0,@0,1000);
	CreateColorSP("色２", 10000, "#000000");
	Fade("色２", 0, 700, null, true);

	CreateTextureSP("イベント１", 100, 0, 0, "cg/ev/ev128_病床の光_a03.jpg");
	CreateTextureSPsub("エフェクト１", 2000, 0, 0, "cg/data/noize_01_00_0.png");
	CreateTextureSPsub("エフェクト２", 2000, 0, 0, "cg/data/noize_01_00_0.png");
	Rotate("エフェクト２", 0, @180, @180, @0, null, true);

	$SYSTEM_effect_lens_curvature = 1000;
	$SYSTEM_effect_lens_distance = 10;
	CreateEffect("レンズ１", 1000, -100, -300, 1200, 1200, "Lens");
	SetAlias("レンズ１", "レンズ１");
	Fade("レンズ１", 0, 500, null, true);

	CreateAFA1("@エフェクト１","@エフェクト２",0,1000,50,2);
	MoveSSP1("@イベント１",100000,0,3,0,3,1000,null);
	MoveFFP1("@イベント１",5000);

	Zoom("イベント１", 0, 1000, 1000, null, true);
	Wait(80);
	Zoom("イベント１", 0, 2000, 2000, null, true);
	Wait(160);
	Zoom("イベント１", 0, 1500, 1000, null, true);
	Wait(320);
	Zoom("イベント１", 0, 1000, 1500, null, true);
	Wait(160);
	Zoom("イベント１", 0, 1000, 1000, null, true);

	Wait(500);

	Fade("色２", 0, 1000, null, true);
	MoveSSP1stop();
	MoveFFP1stop();
	AFA1stop();
	Delete("@イベント*");
	Delete("@レンズ*");
	Delete("@エフェクト*");

	OnSE("se戦闘_攻撃_刀振る02",1000);
	SetVolume("@mbgm*", 1000, 0, NULL);
	SL_leftupfade2(1);

	Wait(4000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　努力理解。

　——这瞬间——

　我的肉体完成了必胜之术，
　领先于敌人的攻击，
　斩下。

　然而，<k>
　这，<k>毫无回响的右臂。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev249e
	CreateTextureSP("イベント１", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_f.jpg");
	Fade("色２", 1000, 0, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　斩到了虚空。

　只有虚空。

　努力去理解。

　……发生了，什么？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/020vs0240a01">
《————》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　村正在喊叫。

　向脑内输送信号。
　并不是言语那样迂阔的情报传达。

　她正在说着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　
　　　　　　　　　　　　空间
　　　　　　　　　　　　扭曲

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md05/020vs0250a00">
（————）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　空间扭曲。

　对。
　那个“神”向我展露过的能力。

　利用重力扭曲空间。

　银星号的技能已经融入“神”之力。

　已经继承了“神”之力的银星号，没有理由
做不到……

　所以使用。

　在极短的时间里，
  产生极小规模的扭曲。

　躲开了必中的一剑。

　然后。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小ウェイト
	Wait(1000);

	SetFwC("cg/fw/fw光_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
<voice name="光" class="光" src="voice/md05/020vs0260a14">
「向天空。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/020vs0270a14">
「升起吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蹴り体勢。ev249f
		CreateTextureEX("イベント２", 100, 0, 0, "cg/ev/ev249_村正VS銀星号２_g.jpg");
		CreateTextureEX("イベント３", 100, 0, -390, "cg/ev/ev250_銀星号リバースエノシマインパクト.jpg");
		CreateColorEXadd("色１", 10000, "#FFFFFF");
	
		CreateTextureEX("イベント４", 100, -512, -288, "cg/ev/ev250_銀星号リバースエノシマインパクト.jpg");
		Zoom("イベント４", 0, 2000, 2000, Dxl2, true);
	
		CreateTextureEXadd("エフェクト１", 100, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
		Zoom("エフェクト１", 0, 1300, 1300, Dxl2, true);
	
		CreateTextureEX("背景１", 100, Center, -5536, "cg/bg/bg202_旋回演出背景山a_02.jpg");
		CreateTextureEXadd("エフェクト２", 100, 0, 0, "cg/ef/ef036_無我の境地.jpg");
		Zoom("エフェクト２", 0, 500, 500, Dxl2, true);

	Fade("イベント１", 0, 0, null, true);
	Fade("イベント２", 300, 1000, null, true);
	Wait(700);
	Fade("色１", 0, 1000, null, true);

	OnSE("se戦闘_動作_鎧_踏み込み02",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	Fade("イベント３", 0, 1000, null, true);
	Fade("色１", 500, 0, null, false);
	Shake("イベント３", 500, 0, 50, 0, 0, 1000, Dxl1, false);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【光】
<voice name="光" class="光" src="voice/md05/020vs0280a14">
「逆转·江之岛大蹴击!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	Move("イベント３", 600, @0, 0, Axl1, false);
	Wait(200);
	Fade("イベント４", 300, 1000, null, false);
	Move("イベント４", 400, @0, @576, Axl1, false);
	Fade("色１", 400, 1000, null, true);

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);
	OnSE("se戦闘_動作_空突進08",1000);

	Fade("色１", 0, 0, null, true);
	Fade("エフェクト１", 0, 1000, null, true);
	Shake("エフェクト１", 300, 0, 50, 0, 0, 1000, null, false);
	Fade("色１", 300, 1000, null, true);

	SetVolume("@mbgm*", 3000, 0, NULL);
	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進07",1000);

	Fade("背景１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, false);
	Move("背景１", 2000, @0, @500, Dxl2, true);

	Fade("エフェクト２", 300, 1000, null, true);
	Fade("エフェクト２", 300, 0, null, true);
	Wait(1000);

	ClearFadeAll(3000, true);


//◆逆式·江ノ島キック
//◆板垣の描く後ろ回し蹴りみたいな感じか？
//◆とんでもねー勢いで吹っ飛ぶ村正。空の彼方へ。

}

..//ジャンプ指定
//次ファイル　"md05_021.nss"