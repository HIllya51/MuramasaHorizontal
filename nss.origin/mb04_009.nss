//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_009.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_009.nss","KodouAction",true);
	Conquest("nss/mb04_009.nss","KodouSET",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg051_湊斗家居間_01=true;
	#bg043_江ノ島山林_02=true;
	#bg050_湊斗家門前_01=true;
	#bg052_湊斗家道場_01=true;
	#bg002_空b_03=true;
	#bg047_景明故郷町a_01=true;
	#bg049_景明故郷住宅地a_01=true;
	#bg053_湊斗家の庭_01=true;
	#bg054_湊斗家祭殿a_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_010vs.nss";

}

scene mb04_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_008vs.nss"

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_湊斗家居間_01.jpg");//ダミー注意
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　      曾有过母亲和妹妹。有过家庭。
　<PRE>“Now you are come, all my grief is removed”</PRE>

　
　　　　　　　       有过坚信不疑的羁绊。
　<PRE>“Let me forget that so long you have rov'd”</PRE>

　
　　　　　　　　　        有过爱情。
　<PRE>“Let me believe that you love as you lov'd”</PRE>

　
　　　　　　　　　　很久很久以前。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆現実
//あきゅん「演出：ど、どこで戦ってるんだコイツら」
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");//ダミー注意
	FadeBG(0,true);
//	FadeDelete("上背景", 2000, true);
	FadeDelete("上背景", 1500, true);
	SoundPlay("@mbgm01",2000,1000,true);
//	FadeDelete("絵暗転", 2000, true);
	Wait(500);
	FadeDelete("絵暗転", 2000, true);

	CreateTextureEX("絵演", 3000, -850, -85, "cg/ev/resize/ev101_プロローグ_a.jpg");
	Move("絵演", 6000, @-60, @0, Dxl1, false);
	Fade("絵演", 2000, 750, Dxl1, false);

	Wait(1000);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/mb04/0090010a14">
《不够……
　仅仅如此可不够啊，景明。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090020a14">
《还不足以碰触到我。
　……不足以满足我。》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090030a14">
《丢开那无用的剑。
　磨练你的武技吧。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090040a14">
《不需要多余之物。
　你只要专心追随我即可。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090050a14">
《不然，便无法碰触到我……
　你的手指始终未触碰过我！》


//【光】
<voice name="光" class="光" src="voice/mb04/0090060a14">
《<RUBY text="·········">始终不认可我的存在</RUBY>！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	WaitAction("絵演*", null);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_01.jpg");//ダミー注意
	FadeBG(0,true);
//	FadeDelete("上背景", 2000, true);
//	FadeDelete("絵暗転", 2000, true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　
　　　　　　　　我仍然记得那个光景。
　　“Do you remember the path where we met?”

　
　　　　　　　　　　很久很久以前。
　　　　　<PRE>“Long long ago, long long ago”</PRE>

　
　　　         平淡无奇，但却让我无法忘怀的光景。
　<PRE>“Ah, yes, you told me you ne'er would forget”</PRE>

　
　　　　　　　　　　很久很久以前。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

　
　　　只是单纯地与家人在一起的，光景。
　“Then to all others my smile you preferr'd”

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆現実
//あきゅん「演出：ど、どこで戦ってるんだコイツら」
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	CreateTextureEX("絵演", 3000, -445, -530, "cg/ev/resize/ev101_プロローグ_cl.jpg");
	Move("絵演", 6000, @60, @0, Dxl1, false);
	Fade("絵演", 2000, 750, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……为什么呢？
　为什么，我会被打败呢？

　我不明白。

　我抓住了银星号的呼吸。
　抓住了它的意识。

　但是，却未能感知任何前兆。
　银星号的攻击突如其来地，将我打飞。

　为什么。

　是因为一切都是我的误解吗？
　想要隔着无尽的距离探查到敌骑的呼吸，果然只能
是妄想吗？

　还是……
　
　若不是那样的话。

　是因为把握银星号的意向这一行为，是<RUBY text="····">毫无意义</RUBY>的吗？
　
　那个敌人。我的妹妹。那个魔王。

　已经到那种境界了吗？
　不以意识来执剑，武人的最高心境。

　——无想剑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0090070a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我不明白……

　我所明白的唯有一点。
　
　我的这双手什么都抓不住。只有虚无。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	WaitAction("絵演*", null);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg052_湊斗家道場_01.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　
　　　　　　　　所有的东西都美好地存在着。
<PRE>“Love, when you spoke, gave a charm to each word”</PRE>

　
　　　　　　　　是爱令世界变成这样。
“Still my heart treasures the praises I heard”

　
　　　　　　　　　　很久很久以前。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


//◆現実
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空b_03.jpg");//ダミー注意
	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStR(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/mb04/0090080a14">
「……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090090a14">
《原来如此。
　<RUBY text="···">是这样</RUBY>啊。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090100a14">
《你的手脚总是……
　被那种东西所束缚呢。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090110a14">
《被那份……虚假所束缚。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　
　　　　　　　　无尽的温柔。
　　　　　“Though by your kindness
　　　　　　　my fond hopes were rais'd”

　
　　　　　　　　　　很久很久以前。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆現実
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　……意识不断在沉浮间往返。
　梦境与……现实吗。

　究竟哪边是梦境，哪边又是现实……
　它们的界限开始变得暧昧不清。

　变得模糊。
　变得不复存在。

　我知道这意味着败北与死亡的到来。

　但是……那又如何。
　我在这场战斗中付诸一切。我自以为是这样的。

　全部的力量。
　全部的誓言。
　全部的觉悟。

　即便如此，仍是枉然。
　完全地。体无完肤地。

　那么……
　我还能怎样呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0090120a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　除了深陷于这温暖的瞑梦中以外……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地a_01.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　
　　　　　　曾经拥有道不尽的幸福。
“You by more eloquent lips have been prais'd”

　
　　　　　　　　　　很久很久以前。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆現実
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/mb04/0090130a14">
《那是虚构的。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090140a14">
《虚假的。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090150a14">
《因为那里<RUBY text="··">没有</RUBY>……
　没有光想要的东西。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090160a14">
《快将那种东西丢弃了，景明。
　不……应该早已丢弃了吧？》


//【光】
<voice name="光" class="光" src="voice/mb04/0090170a14">
《用<RUBY text="··">那双</RUBY>手。
　和<RUBY text="··">这双</RUBY>手。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090180a14">
《早已被我们两个人毁掉了……》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090190a14">
《你杀了她。
　我让你杀了她。》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090200a14">
《杀了母亲!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg053_湊斗家の庭_01.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　
　　无论经过多久，我都不会失去这份幸福。
“But by long absence your truth has been tried”

　
　　　　我相信它决不会改变。
　“Still to your accents I listen with pride”

　
　我曾经幸福到——能让我这般深信不疑的地步。
　“Still to your accents I listen with pride”

　
　　　　　　　　　　很久很久以前。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆現実
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	CreatePlainSP("絵板写", 5000);
	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");
	CreateTextureSP("絵演窓右/絵演右", 4100, -835, -120, "cg/ev/resize/ev101_プロローグ_a.jpg");
	Move("絵演窓右/絵演右", 6000, @0, @60, Dxl1, false);

	CreateTextureSP("絵演左", 3000, -385, -500, "cg/ev/resize/ev101_プロローグ_cl.jpg");
	Move("絵演左", 6000, @0, @-60, Dxl1, false);

	FadeDelete("絵板写", 2000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　———————————————————————
————————————————————————
————————————————————————
——————————————————————刚才。

　在梦与现实的夹缝中，我清晰地听到了某种声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0090210a00">
《……什么……》


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0090220a00">
《你说……什么？》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090230a14">
《是我<RUBY text="·····">让你杀了她</RUBY>。
　让你，杀了母亲。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090240a14">
《两年前……
　在村正被解放出来之前，我就已经知道了。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090250a14">
《这副剑胄追求的是什么。
　如果用这把刀杀戮了之后又会怎样。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090260a14">
《以同伴的性命来抵偿敌人的性命。
　以一份善来抵偿一份恶。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090270a14">
《以爱来抵偿憎恨。
　——我早已知道你所寻求的东西。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0090280a00">
《——》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090290a14">
《所以，我才并未将山贼的头领杀死。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090300a14">
《我饶他一命，将他赶出了凑斗的房子。》


//【光】
<voice name="光" class="光" src="voice/mb04/0090310a14">
《为了让你使用村正的力量来杀了他。
　然后——》


//【光】
<voice name="光" class="光" src="voice/mb04/0090320a14">
《你便为村正的诅咒所束缚，杀害了母亲。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆鼓動ＳＥ＋レッドアウトレッドイン
	KodouAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　
　　　　　　　　　　　你……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/mb04/0090330a14">
《是我们两个人一起杀了她。
是我和你杀掉了那个<RUBY text="··">仇人</RUBY>。
　毁掉了那个空虚的世界。》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090340a14">
《它已不复存在了。那种虚构的东西早已消失得
无影无踪，化为遥远过去的幻影了。
　所以你不要再执着于那种东西了……》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090350a14">
《忘了它吧。
　你只需要注视着眼前的我便足够了。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆鼓動ＳＥ＋レッドアウトレッドイン
	WaitAction("プロセス鼓動", null);
	KodouAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　
　　　　　　　　　　　你……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/mb04/0090360a14">
《你所深爱的母亲已经不在了。不复存在了。
　……如果即使这样你仍不肯放弃的话，那便
由我来当你的母亲……》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090370a14">
《所以到<RUBY text="···">我身边</RUBY>来吧。
　唯有这里才是你的归宿。》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090380a14">
《唯有我的身边。》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090390a14">
《唯有我能接受你！
　景明!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//◆鼓動ＳＥ＋レッドアウトレッドイン
	WaitAction("プロセス鼓動", null);
	KodouAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　
　　　　　　　　　你——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	WaitAction("プロセス鼓動", null);
	ClearWaitAll(2000, 0);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");//ダミー注意
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　
　　　　　　　但，那已经是陈年旧事了。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

　
　　　　　　　　　　很久很久以前。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

　
　　　　　　已经无法触及的，遥远的过去。
　　　　　<PRE>“Long long ago, long long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	FadeDelete("上背景", 1000, true);

}

..//ジャンプ指定
//次ファイル　"mb04_010vs.nss"



.//プロセス用======================================================

..//心臓の鼓動
function KodouAction()
{
	CreateProcess("プロセス鼓動", 5000, 0, 0, "KodouSET");
	SetAlias("プロセス鼓動","プロセス鼓動");
	Request("プロセス鼓動", Start);
	Request("プロセス鼓動", Disused);
}

function KodouSET()
{
	CreateSound("SEP01", SE, "sound/se/se人体_体_心臓の音02");
	SetVolume("SEP01", 0, 0, null);
	SetAlias("SEP01", "SEP01");
	Request("SEP01", "Play");
	SetVolume("SEP01", 0, 1000, null);
	Request("SEP01", Disused);
	$Ｆ時間=RemainTime("SEP01");

	CreateColor("絵Ｐ色赤", 5000, -1024, Middle, 1024, 576, #CC0000);
	SetAlias("絵Ｐ色赤", "絵Ｐ色赤");
	Fade("絵Ｐ色赤", 0, 0, null, true);

	Move("絵Ｐ色赤", 0, @1024, @0, null, true);
	Fade("絵Ｐ色赤", 100, 1000, null, true);
	Wait(30);
	Fade("絵Ｐ色赤", $Ｆ時間, 0, null, true);
	Request("絵Ｐ色赤", Disused);
	WaitPlay("SEP*", null);

}