//<continuation number="1260">



chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_019vs.nss_MAIN
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
	#bg020_山脈坑道_01=true;
	#bg022_山林a_01=true;
	#bg020_山脈_01=true;
	#bg005_山中_01=true;

	#ev110_変てこチェイス=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_020vs.nss";

}

scene ma02_019vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_018a.nss"
//前ファイル　"ma02_018b.nss"


//◆合流
	PrintBG("背景０", 30000);
	CreateColorSP("絵暗転", 1500, "#000000");
	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);
	Delete("背景０");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0010a01">
《……主君……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0020a00">
（村正？）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　结束了意料之外的早饭。
　让那对姐妹回家，啜饮着她们留给我的茶
歇口气的时候，接到了外出侦查的村正的剑
胄传音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);
	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0030a00">
（有何异常？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0040a01">
《发现一名奇怪男子。
　正无声地向这边而来。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0050a00">
（知道了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
　我向弥源太老者以眼神示意，起身离开。
　仅仅如此老者便明白了，他无言地向我点
了点头。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 5000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
　我追踪着和村正之间那无形无影的连接。
　……走上背面窄小的山路，深入树林之中。

　我并未被指引至树林最深处。
　立刻，我便发现了潜藏于树荫中的村正，和前方的
人影。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0060a00">
（是他吗？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0070a01">
《是的。
　而且……还有一个。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0080a00">
（嗯——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　那个人影正背对着我们。
　似乎正在旁边写着什么。

　他将纸片递给旁边的树木。
　树枝上方上迅速伸出长长的手臂并拿走它的
是——钢铁之猿。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0090a00">
（月山从三位！）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0100a01">
《到底是猿，隐藏行踪的能力相当强啊。
连我都没能立刻觉察到。
　但是……那个男人并不是月山的操纵者。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0110a00">
（……是啊。
　那个人，恐怕是……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　猿很快跃起。在树与树之间跳跃，转瞬之间便消失在了
树海深处。
　男人一收好纸笔，就立刻蹲下。似乎在系因行走山路
而松开的鞋带。

　……总而言之，男人是地方官的侦查人员。
　刚刚是在整理报告并将之交给负责联络的月山吧。

　如果是那样的话——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0120a01">
《要怎么办？
　要跟在月山的后面看看吗？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0130a00">
（能在对方不发觉的情况下进行追踪吗？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0140a01">
《……无法回答你“当然可以”可真不甘心。
　不过这片森林完全是对方的地盘。就算只是
追踪也很困难吧……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0150a01">
《要秘密追踪的话，就更加——》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0160a00">
（难办、鲁莽、无谋吗？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　那就没办法了。
  虽然若能跟踪月山到地方官一伙的据点去的话就
再好不过了，不过假如跟踪行动被月山发觉，那我
们肯定会被甩掉的。

　而即使我们没被甩掉，月山也不会在有跟踪者的
情况下回到主人身边。
　也就是说是没完没了。结果只会白白浪费掉我们
无比珍贵的时间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0170a01">
《干脆，在这里解决掉月山？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0180a00">
（首要问题是如何追上他。
　而且即使顺利进行，如果让地方官他们戒备
起来从而隐藏得更深的话，那便是本末倒
置了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0190a01">
《……也对。
　抱歉。说了毫无价值的话。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　回应的声音语气僵硬。
　我装作没有发现，继续说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0200a00">
（别贪心。
　若他能把坑道的情况告诉地方官的话，
那便正合我意。静观其变便足矣，无需
出手干涉）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0210a01">
《嗯……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0220a00">
（但是）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　视线四散。
　确认周围情况。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0230a00">
（继续放任侦察员也是无益）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　测算距离。
　大约有一〇米。稍微远了点。但是，若能在不被发现
的情况下接近几步的话，那距离就正适合偷袭了。

　男人还在系着鞋带。作为武器的手杖放在一边。
　绝好的机会。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0240a00">
（我要削减敌人的战斗力。
　村正，出太刀）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0250a01">
《明白。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　村正的一对牙，消失了。
　取而代之的是右手沉甸甸的重量。

　尽量避免使护手发出声响，默默地将武器高举过肩。
　维持姿势迈步。一步。

　两步。
　三步。
　四步——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵ＥＦ50", 5000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	DrawTransition("絵ＥＦ50", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0183]
　跳跃。
　将举着的刀斜向下迅速一挥，同时反转刀刃用刀背击
打，向着男人的肩头斩下——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆袈裟一閃
//◆切り上げ一閃
	PrintGO("上背景", 15000);
	CreateColorSP("絵暗", 10, "#000000");
	CreateColorEX("絵暗２", 110, "#000000");
	Delete("上背景");

	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateSE("SE01","se戦闘_攻撃_刀振る01");

	SL_rightup(@0, @0,1500);
	Rotate("@slashLU*", 0, @0, @0, @30, null,true);
	Request("@slashLU*", Smoothing);

	CreateTextureSP("絵ＥＦ100", 100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	DrawTransition("絵ＥＦ100", 200, 0, 500, 100, null, "cg/data/slide_04_00_0.png", false);

	Wait(150);

	Fade("絵暗２", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightupfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0189]
　————————!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆跳び下がる景明
//◆すぱっと軽く斬られ
	PrintGO("上背景", 10000);
	CreateColorSP("絵ブラ", 1500, "#CC0000");

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	OnSE("se戦闘_攻撃_刀刺さる02",1000);

	Wait(200);

	OnSE("se人体_血_たれる01",1000);

	Delete("上背景");
	FadeDelete("絵ブラ", 500, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0260a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0270a01">
《主君!?》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0280a00">
「……无大碍！
　只是擦伤…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　腿被轻轻抚过般轻微的程度。
　根本称不上受伤。

　但是——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStR(500,true);

	Wait(200);

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0290a12">
「……呜哇。
　饶了我吧。你是什么时候……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　一副吃惊的模样正不停眨眼的男人。
　过去仅有两次和他擦肩而过——不，是三次吗。

　这个男人。
　刚才……<RUBY text="···········">一边往前滚避开我的一击</RUBY>，<RUBY text="····">一边拔刀</RUBY>，
<RUBY text="·····">砍了我一刀</RUBY>……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0300a01">
《他察觉到我们了……!?》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0310a00">
（——不）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　我看向男人的脚边。
　右脚的鞋带散开着，只系了一半。

　<RUBY text="·······">他并未发现我们</RUBY>。
　我们的行动确实是出乎他意料的。

　但是——这个反应！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st景明_戦闘_私服.png");
	FadeStL(300,true);


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0320a00">
「……反应如此敏捷的人我只认识一个。
　记得那是三年前的事了。我妹妹让我见识过
同样的反应能力。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0330a12">
「……嘿嘿……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0340a00">
「你是第二个。
　野木山组的雪车町一藏。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　无法完全抑制住声音中的战栗，我如此说道。
　骨瘦如柴的无赖之人脸上刻着凉薄的笑意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0350a12">
「竟然让您记住我了。
　那还真是光荣呢。警察小哥。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0360a00">
「碰巧记得而已。我并不是特意记住的。
　但是今后短时间内也忘不了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　雪车町一步步拉开距离。他手里握着
刀——原本藏于<RUBY text="····">藏刀手杖</RUBY>中。
　紧跟着前进，保持距离。我不打算放走他……但是，
急躁冒进的话会暴露出破绽。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0370a00">
「真是受了您极大的照顾。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0380a12">
「……嘿。
　哎呀，我有对小哥做过这么
了不起的事吗……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0390a00">
「你前天刚将我从空中击落。
　真不巧我没有坠落到地狱的最底端，还依然
健在啊。」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0400a12">
「嘿、嘿、嘿……
　您发觉了吗？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0410a00">
「这是当然的。
　你那把声音我想认错也挺难的。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0420a12">
「常有人这么说……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　距离的变化陷入胶着。
　但是，占优势的是我方。

　雪车町这个男人，若光论剑术的话，恐怕能与
光匹敌。
　在势均力敌的情况下争斗的话，我不清楚能否
胜利……

　但是目前的情况不是势均力敌的。
　鞋带松了的雪车町移动劣势。这样的话无论如
何，也不能使出完全的招式吧。
　归根到底，是我方有利。

　雪车町想要打破这种状况的话，就必须用剑胄
决胜负。
　……这周围并无剑胄的踪影。也没有看到铠柜。

{	CreateSE("SE01","se戦闘_乗り物_バイク_アイドリング_L");
	MusicStart("SE01",1500,600,0,800,null,true);}
　但是。
　混杂于山上传来的喧嚣声中，这个<RUBY text="ｉｄｌｉｎｇ">嗡嗡声</RUBY>是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 6000, 0, null);

	SetFwC("cg/fw/fw雪車町_警戒.png");

//おがみ：↓願いたい
//嶋：修正【090930】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0430a12">
「真头疼啊。
　我没有义务做到<RUBY text="··">这种</RUBY>程度啊，
我不想跟你赌上<RUBY text="灵魂">性命</RUBY>厮杀啊……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0440a00">
「我的情况不同。
　我不会放掉各个击破的机会。不必伤及性命，
但我打算废了你的四肢之一。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0450a12">
「那么，没办法了。
　想让你放过我，果然我还是想得太美了吗……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0460a00">
「要使用剑胄吗？」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0470a12">
「嘿嘿。
　那样的话，小哥要怎么办？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0480a00">
「我也使用剑胄，直至将你砍倒。」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0490a12">
「嘿嘿。
　村正……吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　我记得在雪车町面前并未提及的名字，却由他
口中说出。
　是从那个忍者那里听到的吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0500a12">
「但是啊……
　那家伙不行的吧……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0510a00">
「……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0520a12">
「我是地方官阁下派来进行侦查的。
主要是想确认一下。他即将知道你们只是想要
填埋坑道而已了。」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0530a12">
「如果我和小哥轰隆作响地在空中开始华丽作
战的话会怎样呢？
　是来增援我吗？　怎么可能呢……地方官阁
下不用说，肯定是去阻止你们填埋坑道哦。」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0540a12">
「那样的话，嘿嘿。谁来做地方官阁下和小太
郎爷爷的对手呢？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0550a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　这个男人，无论哪里都很精妙……
　连口舌之战也是一流吗！

　雪车町的状况分析一语中的。
　现在在这里展开飞行战斗的话，的确有很高的危险会
招致他所说的结果。

　虽然对形势看得如此透彻，这个男人却没有立即装备
装甲进行飞行以逃离这里……他肯定在思考我方执着于
各个击破从而作出在打败他之后再返回的天真选择的可
能性。

　前天的那时，我与他相互对视了仅仅一瞬间。
　不过我觉得雪车町的剑胄恐怕是军用的数打。大概凭借
<RUBY text="脚力">速度</RUBY>的话是无法保证能完全甩掉我而逃走吧。

　事实上，虽然我有将其捕捉斩落的自信……
　但我不能冒险让山里毫无防备。
　
　武者战斗这一选择项等同于被禁用了！

　……凭一句巧辩就制住我方的决战力，而且
对此成果不骄不躁继续谨慎行事。
　这个男人，他的战斗方法似乎与常人不同。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0560a00">
「……情况确实如你所说。
　不过既然这样，那便以此状态决出胜负……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0570a12">
「这个也——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);
	Move("@StR*", 200, @0, @5, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　雪车町的脚动了。
　右脚——把脱下来的鞋子——！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 500, 0, null);
	SetFwC("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0580a12">
「恕难从命！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


//おがみ：ツバの音
//◆ボイス「ぺっ」。唾吐く音
//◆瞬間ブラックアウト
	OnSE("se人体_動作_唾吐き",1000);
	CreateColorSP("絵暗転", 2000, "#000000");

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0590a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(0,true);

	FadeDelete("絵暗転", 300, true);

	SoundPlay("@mbgm25",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　唾液————
　不是下方是上方!!

　勉强侧开头，避免了视线被遮挡。
　然而在这半秒之间，雪车町拉开了距离！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0600a00">
「自作聪明！」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0610a12">
「对不起了！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 1500, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 200, 1500, 1500, Dxl2, false);
	FadeDelete("絵背景100", 200, false);

	CreateSE("SE02","se戦闘_攻撃_振る04");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(500);
	CreateSE("SE01","se戦闘_乗り物_バイク_アイドリング_L");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　追赶。
　论脚力我方占上风。就这点距离我能轻松追上。
只要再迈五步——

　但是。
　在我迈出五步之前，雪车町已到达了<RUBY text="··">那里</RUBY>。

{	MusicStart("SE01",1500,1000,0,1000,null,true);}
　藏于树木的阴影中的——<k>独轮机动车！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 2000, 500, null);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0620a01">
《……剑胄!?》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0630a00">
「是剑胄！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　没错。那是剑胄。
　那是以海军的八八式舰载骑为基础而开发的，陆军
制式的九〇式龙骑兵。
　待骑之时保持摩托车的形态。

　这项杰作由于其使用方便至今仍旧保持使用。且拥
有众多派生骑与后继骑。
　刚刚一直响着的<RUBY text="···">嗡嗡声</RUBY>果然是它吗……！

{
	SetVolume("SE01", 1500, 0, null);
	CreateSE("SE02","se戦闘_乗り物_バイク_発進");
	MusicStart("SE02",0,1000,0,1000,null,false);
}
　雪车町迅速骑上它，一踩下加速器，
　引擎早已发动的摩托车立刻便冲了出去。

　穿过树林，沿着山路——！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0640a01">
《主君！　装甲——》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0650a00">
「驳回！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　在这种蜿蜒曲折的林间细窄山路，速度快却难以转弯
的飞行武者与速度不快却灵活好控制的独轮摩托相比，
孰优孰劣一清二楚。另外，即使对手也装备上
剑胄进行飞行战，我方也很不利。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0660a01">
《那么，就只能放过他了吗……！》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0670a00">
「——不。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　雪车町的企图应该是那个吧。
　确实，看上去我方已无计可施。似乎我们只能如雪车町
所愿地咬着牙目送其背影。乍看之下确实如此。

　但是，还有转机——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0680a00">
「村正。
　<RUBY text="···">就这样</RUBY>追击！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0690a01">
《————明白！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆しゅぴーん。
//◆高速移動
//あきゅん「演出：仮入れだから超適当」
//あきゅん「演出：ここから先はFwしか触ってないです」

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
//	SetVolume("@mbgm*", 100, 0, null);

	PrintGO("上背景", 15000);
	SetBlur("上背景", true, 3, 500, 50, false);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	Rotate("絵背景50", 0, @0, @180, @0, null,true);
//	OnBG(100,"bg020_山脈_01.jpg");
//	FadeBG(0,true);

	CreateTextureSP("絵ＥＦ100", 110, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	OnSE("se人体_動作_跳躍02",1000);
	CreateSE("SE10","se戦闘_乗り物_バイク_走行_L");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Zoom("上背景", 200, 2000, 2000, null, false);
	Zoom("絵ＥＦ100", 900, 1200, 1200, Dxl2, false);
	FadeDelete("上背景", 200, true);

	Wait(500);

	DrawDelete("絵ＥＦ100", 150, 100, "circle_01_00_1", true);


	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0700a12">
「————!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　大概是感觉到了异样的气息。
　忽然回头看的雪车町，脸颊的肌肉清晰地
抽搐着。

　距离——不足二〇米。
　我们尾随着他，敌我之间的距离一点点增减着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蜘蛛ＶＳモノバイク。何これチェイスオフロード編
//あきゅん「演出：仮入れだから超適当」
	SetFrequency("SE10", 3000, 1200, null);

	CreateTextureEX("絵ＥＶ100", 110, Center, Middle, "cg/ev/resize/ev110_変てこチェイス_l.jpg");
	Move("絵ＥＶ100", 0, @400, @200, null, true);
	SetBlur("絵ＥＶ100", true, 3, 300, 100, false);

	CreateTextureEX("絵ＥＶ200", 100, Center, Middle, "cg/ev/ev110_変てこチェイス.jpg");
	Zoom("絵ＥＶ200", 0, 2000, 2000, null, true);

	OnSE("se戦闘_動作_空突進02",1000);
	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE02","se戦闘_銃器_複数構える02");
	CreateSE("SE03","se乗物_汽車_走行01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵ＥＶ100", 200, 1000, null, false);
	Move("絵ＥＶ100", 600, @10, @10, null, true);
	Move("絵ＥＶ100", 600, @-40, @-30, null, true);
	MusicStart("SE03",500,1000,0,1000,null,true);

	Fade("絵ＥＶ200", 0, 1000, null, true);
	Move("絵ＥＶ100", 500, @-370, @-180, Dxl2, false);
	Zoom("絵ＥＶ100", 500, 1000, 1000, Dxl2, false);
	Zoom("絵ＥＶ200", 500, 1000, 1000, Dxl2, true);
	FadeDelete("絵ＥＶ100", 500, true);


//	Wait(500);

	SetVolume("SE03", 2000, 0, null);
	SetVolume("SE10", 3000, 500, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0502]
　俯视着眼前在山路上疾驰的独轮摩托，
　赤色的蜘蛛越过树顶。

　猿飞之技并不是月山猿的专利。
　这种程度的技能村正蜘蛛也可以做到！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0710a01">
《提高速度！
　千万不要被甩掉！》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0720a00">
「明白！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_銃器_複数構える02");
	CreateSE("SE03","se乗物_汽車_走行01_L");

	CreateTextureEX("絵ＥＶ100", 110, Center, Middle, "cg/ev/resize/ev110_変てこチェイス_l.jpg");
	Move("絵ＥＶ100", 0, @400, @200, null, true);
	SetBlur("絵ＥＶ100", true, 3, 300, 100, false);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_汎用移動.jpg", false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	FadeF4("絵ＥＶ100", 200, 1000, 1000, 0, 0, Axl3, false);
	Wait(800);
	FadeDelete("絵ＥＶ100", 200, true);
	SetVolume("SE03", 1000, 0, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　手脚用力，把骑在村正背上的自己固定住。
　移动的方式就是策略。视野的景象变换眼花缭乱。
但是，对惯于飞行的身体来说这不算什么。

　确认目标的身影，准备好太刀以备交战。

　我看到雪车町的脸在转回前方的一刹那，
露出了踌躇的神色。
　他在犹豫。恐怕是在思考——是否应该装甲。

　但是由于我们是在他背后进行追赶的，他一定估计得
到在他进行装甲的瞬间可能会被我们打倒。
　雪车町的选择是加速器全开。就这样逃跑，他是这么
打算的——那么正好！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Zoom("絵背景100", 0, 1300, 1300, null, true);

	Zoom("絵背景100", 300, 1000, 1000, Dxl2, false);

//適当に演出
	SetFrequency("SE10", 3000, 1300, null);
	SetVolume("SE10", 3000, 1000, null);
	Fade("絵背景100", 500, 1000, null, true);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0526]
　从和缓的右弯道驶入短直道。
　这里果然是摩托车占优势。距离逐步拉开了。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	Zoom("絵背景200", 0, 1300, 1300, null, true);

	Zoom("絵背景200", 300, 1000, 1000, Dxl2, false);

//適当に演出
	SetFrequency("SE10", 2000, 1000, null);
	Fade("絵背景200", 500, 1000, null, true);
	Delete("絵背景100");

	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0527]
　——但是道路马上到了长弯道。
　摩托车的速度减缓，而简直毫不客气的蜘蛛则渐渐
地追了上去。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景300", 1000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Zoom("絵背景300", 0, 1300, 1300, null, true);

	Zoom("絵背景300", 300, 1000, 1000, Dxl2, false);

	Fade("絵背景300", 500, 1000, null, true);
	Delete("絵背景200");

	SetFrequency("SE10", 3000, 1300, null);
	SetVolume("SE10", 3000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9527]
  但在即将缩短到触手可及的距离前，道路又变成了
直线……！

　直线对方占优。
　弯道我方有利。
　如此一进一退——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景300", 500, true);

	SetVolume("SE10", 2000, 500, null);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0730a01">
《毫无进展……！》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0740a00">
「就快有了。
　村正，放出丝来。<RUBY text="···">枪和桥</RUBY>，同时进行。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0750a01">
《……！　明白！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);

//◆村正糸
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);

	Zoom("絵背景100", 300, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 150, 1000, null, true);

	Delete("絵背景300");

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0538]
　铁蜘蛛吐出铁丝。
　好几条——撕裂天空。那速度不亚于箭，
赶超了在山路上狂奔的摩托车。

　二〇米的间隙被白线连接。
　即将贯穿摩托车骑手的背部——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0760a12">
「……唔！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　但是，雪车町这样的无赖果然不寻常。
　决定性的一瞬间他仰背望天，认识到迫近的
威胁——刹那间。

　右手翻开。
  其中握着制成摩托把手藏于车体的白刃，在空中
划出几何学图样。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆剣撃。ひょんひょん。
	OnSE("se戦闘_攻撃_刀振る03",1000);
	CreateColorEXadd("絵色100", 2000, "WHITE");
	CreateTextureSP("絵背景100", 1100, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureEX("絵背景200", 1100, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Shake("絵背景100", 300, 0, 2, 0, 0, 500, null, false);

	FadeDelete("絵色100", 300, true);

	Wait(300);

	Zoom("絵背景200", 300, 1100, 1100, Dxl2, false);
	Shake("絵背景200", 300, 2, 2, 0, 0, 500, null, false);
	Fade("絵背景200", 100, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("絵背景100");

	Zoom("絵ＥＶ200", 0, 1300, 1300, null, true);
	Zoom("絵ＥＶ200", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵背景200", 300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0552]
　寸断。
　断线。

　……那已经是，犹如恶魔般的<RUBY text="ｂｌａｄｅ　ａｒｔｓ">刀剑技艺</RUBY>了。
　我看到独轮车的骑手甚至连姿势都没有变，就击退了
从背后而来的强袭。

　不可能的行为。

　但是，我把他的剑技和光相比。

　<RUBY text="···············">不可能之事的可能性是可以想象的</RUBY>！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0770a00">
「村正——卷起来！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//おがみ：SE：糸吸う音
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	Zoom("絵背景100", 0, 2500, 1500, null, true);
	Rotate("絵背景100", 0, @0, @180, @0, null,true);


	Zoom("絵背景100", 300, 1010, 1010, Dxl2, false);
	Fade("絵背景100", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　下达暗号。
　作为回应，村正<RUBY text="··">收回</RUBY>丝。

　并不是被雪车町斩断的铁丝。
　而是越过摩托车，缠在树木上的丝。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0780a12">
「……啊啊——!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　病态的男人脸色发青。假设脸色能够变得
比原来更坏的话。
　那张脸接近了。迅速地——不。接近的是
我。

　我用固定于前方的丝牵引自己，
　村正飞于空中。

　那速度和放出蛛丝的速度大致相同。
　换言之，比飞驰的摩托车更快——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進07",1000);


//◆迫撃って感じ
	CreateTextureEX("絵背景200", 1100, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	Zoom("絵背景100", 300, 2000, 2000, Axl3, false);
	Zoom("絵背景200", 300, 1100, 1100, Dxl3, false);
	Shake("絵背景200", 300, 0, 2, 0, 0, 500, null, false);
	Fade("絵背景200", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0593]
　接触的一瞬间。
　变成如此情况，雪车町一藏仍然不屈服。

　他再度拿起藏刀手杖，以侧面挥击来迎击后方的敌袭。
　这一击速度极快，准确地瞄准了我的头部，真不愧是
一流的剑术。

　但是——
　即使拥有卓越的剑技，也不可能扭转背后受袭这一绝
对的不利情况！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_刀振る03",1000);

	CreateColorEXadd("絵色100", 2000, "WHITE");
	CreateTextureSP("絵背景100", 1100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景200", 1100, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景300", 1000, Center, Middle, "cg/bg/bg020_山脈_01.jpg");

	Zoom("絵背景100", 300, 1100, 1100, Dxl2, false);
	Shake("絵背景100", 300, 0, 2, 0, 0, 500, null, false);

	Fade("絵色100", 300, 0, null, true);

	Wait(300);

	Zoom("絵背景200", 300, 1100, 1100, Dxl2, false);
	Shake("絵背景200", 300, 5, 3, 0, 0, 500, null, false);
	Fade("絵背景200", 100, 1000, null, true);
	Fade("絵背景300", 0, 1000, null, true);

	Delete("絵背景100");
	Delete("絵背景50");


	FadeDelete("絵背景200", 300, false);
	Wait(150);

	Fade("絵色100", 0, 1000, null, true);
	OnSE("se戦闘_攻撃_鎧_剣戟03",1000);
	FadeDelete("絵色100", 300, true);

//◆剣撃
//◆剣撃
//◆ガキーン。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0598]
　我挥出的一刀，迎上了雪车町的剑击。
　将整副肉体——乃至整辆车。

　推倒。
　……车轮滑动。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆スリップ
	CreateSE("SE01","se戦闘_乗り物_バイク_スリップ");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFrequency("SE10", 3000, 800, null);
	SetVolume("SE10", 3000, 500, null);

	Wait(300);
	SetFwC("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs0790a12">
「咳——嘿、哈哈哈！　混蛋!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　独轮摩托横翻了。
　就这样，倒向山的斜面————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 2000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);


	CreateColorEX("絵色100", 15000, "BLACK");
	CreateTextureEX("絵背景100", 1100, Center, Middle, "cg/bg/bg020_山脈_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateSE("SE01","se戦闘_乗り物_バイク_横転");
	CreateSE("SE02","se人体_動作_水中飛び込み01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵背景100", 1500, 2000, 2000, Axl3, false);
	Shake("絵背景100", 1500, 0, 10, 0, 0, 1000, Axl2, false);
	Fade("絵色100", 1500, 1500, null, true);

	Wait(1000);

	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(2500);

//◆ずしゃーごろごろ。
//◆どぼーん。川へ落ちました。
//◆チェイス終了。

//◆山道
//あきゅん「演出：仮入れ、超適当」
	PrintGO("上背景", 15000);

	OnBG(100,"bg020_山脈_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);


	SetFwC("cg/fw/fw景明_困惑.png");

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0800a00">
「……水声？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0810a01">
《……似乎是落到了河里。
　贼运亨通的男人啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　让村正停下来，我站到山路上俯视。
　山间流淌的小溪，还有半个身体沉入其中的男人。
没有看到<RUBY text="摩托车">剑胄</RUBY>。从周围的痕迹来看，
好像是滚落到更往下的地方去了。

　雪车町的身体没有严重的外伤。落在水中多少减缓了
冲击吧，从如此高度掉落，这简直是奇迹了。
　村正愕然地点点头。

　是失去意识了吧，他的身体一动不动。
　但是仔细看看的话，他的右手指尖像在寻找着
什么一样蠕动着。无意义地抠着河畔的土。
　……稍远的树干上，插着藏刀手杖。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0820a01">
《现在怎么办？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0830a00">
「看来无生命危险啊。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0840a01">
《是的。只要他别糊里糊涂翻身而溺死，就没
什么危险。
　而且看样子也没有骨折……要如刚刚所说的，
断他几只手脚吗？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0850a00">
「……不，算了。摔成那样子几天内是
动不了了。
　可以说我们成功使他丧失战斗力了吧。
不需要再进行攻击了。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0860a01">
《说得也是呢。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/019vs0870a00">
「回坑道吧。
　我不想离开太长时间。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/019vs0880a01">
《是。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　……太阳就快到正上方了。
　差不多要到正午之时了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆転換
//あきゅん「演出：仮入れ、超適当」
	ClearWaitAll(2000, 1000);

	Wait(1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg005_山中_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm24",0,1000,true);

	StR(1000, @0, @0,"cg/st/stふき_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660a]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0890b05">
「喂，鲋～！　等等我！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

	StL(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660b]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs0900b06">
「来这里～！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660c]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0910b05">
「什么来这里啊！
　爷爷不是说过了吗，现在山上很危险，
不要绕远路要赶快回家。」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs0920b06">
「我听到好大的声音！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0930b05">
「那可能有危险啊……真是的！　
听姐姐的话啊！」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs0940b06">
「找到了！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0950b05">
「什么找到了啊——
　……哎？　什么？」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs0960b06">
「人！
　男人！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0970b05">
「……哎？　哎？」


//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0980b05">
「…………」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs0990b05">
「呀！
　啊哇哇，好严重……怎么办怎么办？」


//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1000b05">
「请问，请问请问，你没事吧!?」


{	NwC("cg/fw/nw雪車町.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1010a12">
「…………」


{	OnSE("se人体_動作_３回叩く",1000);
	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1020b06">
「喂～喂～
　还活着吗？」

//◆ぺちぺち

{	FwC("cg/fw/fwふき_衝撃.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1030b05">
「鲋、鲋！
　快住手！」


{	NwC("cg/fw/nw雪車町.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1040a12">
「……呜……」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1050b06">
「醒了。」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1060b05">
「哎？　哎？
　请、请问，喂喂？」


{	NwC("cg/fw/nw雪車町.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1070a12">
「……哈……」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1080b05">
「怎、怎么办？
　总之先把他从河里弄出来比较
好吧……」


{	OnSE("se人体_動作_３回叩く",1000);
	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1090b06">
「叔～叔～
　你怎么了～？」

//◆ぺちぺち

{	FwC("cg/fw/fwふき_衝撃.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1100b05">
「鲋！」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1110a12">
「……嘿、嘿嘿……」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1120b06">
「叔叔？」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1130b05">
「请、请问你没事吧？
　你这是怎么了？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1140a12">
「嘿嘿……
　不，没……没什么大不了的哦。
请不要在意……」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1150b05">
「就、就算你这么说……
　好像相当严重的样子……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1160a12">
「嘿、嘿……
　我是……微不足道的流氓、坏蛋
啊。」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1170b05">
「哈？」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1180b06">
「流氓……
　坏人？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1190a12">
「……嗯。就是这样……
　我被善良的家伙给打败了啊。」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1200b06">
「唔嗯。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1210a12">
「嘿嘿……那个啊……这世上必须这样…………
　恶人就要被消灭……不然的话，不就<RUBY text="···">哪一方</RUBY>
都没有意义了吗。」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1220a12">
「嘿……嘿嘿嘿…………」


{	NwC("cg/fw/nw雪車町.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/019vs1230a12">
「…………」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1240b06">
「啊。睡着了～」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/019vs1250b05">
「唔、嗯……虽然不太明白怎么回事，
但是不能放任他不管呢……
　好的。鲋，来帮忙。」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/019vs1260b06">
「是～」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma02_020vs.nss"


