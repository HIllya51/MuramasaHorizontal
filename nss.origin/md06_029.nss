//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_029.nss_MAIN
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
	#bg001_空b_01=true;
	#bg034_署長宅茶の間a_01=true;
	#bg007_若宮大路a_01=true;
	#bg012_鎌倉駅前周辺_01=true;
	#bg113_駅のホームb_01=true;
	#ev263_村正を刺し貫く雪車町=true;
	#ev110_変てこチェイス=true;
	#ev914_九〇式竜騎兵魔剣インメルマンターン=true;
	#ev905_村正電磁撃刀_a=true;
	#bg113_駅のホームa_01=true;
	#ev106_雄飛と見下ろす村正_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_030.nss";

}

scene md06_029.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_028.nss"

//◆※以下、ラストシーン演出
//◆朝

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");
	CreateTextureSP("空", 100, @0, @0, "cg/bg/bg001_空b_01.jpg");

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　早晨。
　稍稍早起，整理行装。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 100, @0, @0, "cg/bg/bg034_署長宅茶の間a_01.jpg");
	Fade("絵背景", 1000, 1000, null, true);
	Delete("空");

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290010a00">
「衣服准备这些就差不多了吧？」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290020a01">
「是呢。
　啊，把这个也放进去。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290030a00">
「……什么？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290040a01">
「便当。
　刚刚做好的。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290050a00">
「刚刚那个声音……原来不是在翻腾
杂物吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　要带的东西并不多。
　不到两个小时就整顿完毕。

　出发。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：ＥＤテーマ歌詞無し版？
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

	SoundPlay("@msong02_full", 0, 1000, true);
	//SoundPlay("@msong02_inst", 0, 1000, true);

	Wait(2000);

//◆鎌倉市街
	OnBG(100, "bg007_若宮大路a_01.jpg");
	FadeBG(0, true);

	FadeDelete("絵色黒", 3000, true);

	WaitKey(1000);

//◆駅前
	CreateColorSP("黒幕", 5000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景", 150, @0, @0, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");
	Delete("@OnBG*");

	CreateSE("SEL01", "se背景_ガヤ_ざわめき01_L");
	MusicStart("SEL01", 2000, 1000, 0, 1000, null,true);

	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　到达镰仓站时，火车恰好进站。
　不过，要乘坐上去似乎有点困难。

　候车的人异常之多。

　是由于昨天的变故吧。
　意识到终于连镰仓也不是个安身之所，于是慌忙
逃离此地。那么这庞大的外出人群也就可以理解了。

　比起乘船飘荡在海盗横行的大海，搭乘尚在军队
保护下的陆上火车也是理所当然。
　而这种安全等级，不用说价格也是相当高昂的。

　眼下停在面前的列车，看似只能容得下排在我们
前面的人。
　只有等待下一班列车了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg113a
	CreateTextureEX("絵背景02", 160, @0, @0, "cg/bg/bg113_駅のホームb_01.jpg");
	Fade("絵背景02", 1000, 1000, null, true);

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290060a00">
「反正也不是很赶。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290070a01">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 3000, 1, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……是的。
　又没什么急事。

　我已经不必那么匆忙。

　这两年间，的确过着整日流星赶月似的日子。
　往往连喘口气的时间都没有，一直四处奔波。

　而时至今日。
　每天都无需东奔西走。

　不能说充满了平安。
　不能说洋溢着幸福。

　这是当然。
　我并不是在完成丰功伟业后可以小歇片刻的英杰。

　犯下了罪行，
　现在只是在回避那个罪行。

　我明白。
　这不过是在逃避。

　我根本没有资格享受安逸。

　往者不可谏，我理当受到责罚。

　不过。
　
　……并不用那么急着逃跑。

  对于现在的我来说。
　只要按照自己的步调，循序渐进就好。　

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290080a00">
「村正是第一次乘火车吧？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290090a01">
「是呢。第一次正式乘火车。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290100a00">
「……对哦。
　坐火车的时候，你是被当作货物处理的。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290110a00">
「抱歉。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290120a01">
「事到如今，别这样啦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　失去了很多东西。
　却什么都没有得到。

　非说有的话，那就是时间。
　从过去的罪孽中，缓慢逃离的现在。

　这就是全部。

　可是，其他又有什么是我该得的呢？
　作为我凑斗景明这两年的结果，我该得到什么呢？

　现在这样就好。
　其他的，我都承受不起。

　就按照这条路前进。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290130a00">
「透过车窗看外面的景物，很享受。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290140a01">
「是吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290150a00">
「流逝的风景……该怎么形容呢，
　映照得奇妙而梦幻。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290160a00">
「像是从外界眺望这个世界……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290170a01">
「嗯……？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290180a00">
「哎呀，坐过一次就知道了。」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290190a01">
「嗯。
　真期待……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 3000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　似乎所有的车辆都客满了。
　除我们之外，还有许多无所事事的人在车站内到处
晃悠，边叹气边抬起手看时间，确认着时刻表。　

　其间，站务员不时快速走过，大概在做
发车前的最终确认。

　下一班火车什么时候到来？
　一小时后，还是更晚。

　无需在意。

　我不用着急。
　追星逐月的旅途已经结束。

　我看向村正。
　村正也回望我。

　毫无缘由地对我微笑。

{	CreateSE("SE01","se乗物_汽車_汽笛");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　汽笛鸣声。
　发车的信号。

　这宣告着一场结束，以及一场开始。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,1000);//―――――――――――――――――――――――――――――

//◆ウェイト
//◆ホワイトアウト
//◆ＳＥ：ざしゅ。刺殺音
//◆小ウェイト
//◆ホワイトイン
//◆ＥＶ：背後から刺される村正
//◆まず刺突部分から表示→刺される村正
	Wait(1000);

	SetVolume("SE*", 2500, 0, null);
	SetVolume("@m*", 2500, 0, null);

	CreateColorEXadd("白", 15000, "WHITE");
	Fade("白", 2000, 1000, null, true);

	WaitPlay("@m*", null);
	WaitKey(2000);

	OnSE("se戦闘_攻撃_刀刺さる01", 1000);
	WaitPlay("@OnSE*", null);

	CreateTextureSP("絵イベ", 5000, Center, Middle, "cg/ev/ev263_村正を刺し貫く雪車町.jpg");
	CreateTextureSP("絵イベ２", 5010, -227, InBottom, "cg/ev/resize/ev263_村正を刺し貫く雪車町l.jpg");
	Request("絵イベ２", Smoothing);

	Delete("絵背景*");

	Wait(1000);

	FadeDelete("白",2000,true);

	WaitKey(1500);

	Move("絵イベ２", 6000, @0, -80, null, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0290200a01">
「——哎————」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290210a00">
「…………村正？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵イベ２", 6000, @0, -490, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　穿透的铁枝。

　自村正的胸口中央——

　刀尖。

　……刀？

　是谁的？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆演出入れつつＥＶ全て表示。雪車町一蔵。
	$回想音源=se擬音_回想_フラッシュバック01;

	CreateSE("SE01","$回想音源");
	CreateSE("SE01a","$回想音源");
	CreateSE("SE01b","$回想音源");
	CreateSE("SE01c","$回想音源");

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, null, true);

	Move("絵イベ２", 0, -60, -170, null, true);
	Move("絵イベ２", 6000, -720, @0, null, false);

	CreateTextureSP("そりまち02", 15900, @0, @0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
	CreateTextureEX("そりまち01", 15800, @0, @0, "cg/ev/ev110_変てこチェイス.jpg");
	CreateTextureEX("そりまち", 15700, Center, InBottom, "cg/st/st雪車町_通常_私服.png");
	CreateColorEX("絵色黒背景", 15000, "#000000");
	SetTone("そりまち*", NegaPosi);

	CreatePlainSP("そりまち02板", 15910);
	FadeFR2("そりまち02板",0,500,400,@0,@0,60,Dxl2, false);
	Fade("絵色白", 300, 0, null, true);
	FadeDelete("そりまち02*", 300, true);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, null, true);
	Fade("そりまち01", 1, 1000, null, true);
	CreatePlainEX("そりまち01板", 15810);
	Delete("そりまち02");
	FadeFR2("そりまち01板",0,500,400,@0,@0,60,Dxl2, false);
	Fade("絵色白", 300, 0, null, true);
	FadeDelete("そりまち01*", 300, true);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, null, true);
	Fade("絵色黒背景", 0, 1000, null, false);
	Fade("そりまち", 1, 1000, null, true);
	CreatePlainEX("そりまち板", 15710);
	Delete("そりまち01");
	FadeFR2("そりまち板",0,500,400,@0,@0,60,Dxl2, false);
	Fade("絵色白", 300, 0, null, true);
	Fade("絵色黒背景", 300, 0, null, false);
	FadeDelete("そりまち*", 300, true);

	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, null, true);
	Wait(1000);
	Delete("そりまち*");
	Delete("絵色黒背景");
	FadeDelete("絵色白", 2000, true);

	WaitAction("絵イベ２", null);

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290220a12">
「哟嗬。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290230a12">
「嘿、嘿……
　还是老样子，一脸阴沉呢……」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵イベ２", 1000, true);

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290240a12">
「……哎呀……好像不对哦？」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290250a12">
「不是老样子。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290260a12">
「最近你那腐朽的样子……
　较之以前更甚啊，真是看不下去！」

{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290270a12">
「凑斗先生!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒画面
	CreateColorEX("黒", 15000, "BLACK");
	Fade("黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　回首过往……
　与我凑斗景明为敌的，都有谁？

　铃川令法？
　长坂右京？
　风魔小太郎？
　皇路卓？皇路操？

　乔治·卡杰特？
　一之尾一磨？
　足利护氏？

　足利茶茶丸？
“神”？
　凑斗光？

　他们都与我凑斗景明敌对。
　赌上生命或其他赌注而斗争。

　但是，他们对于我凑斗景明的敌意是　
单一而纯粹的吗？

　有人认为我凑斗景明碍事，意图将我排斥。　
　有人将我凑斗景明玩弄于鼓掌之中。　
　有人从头到尾就没把我凑斗景明放在眼里。 
　也有人，爱着我凑斗景明。

　对于他们来说，真正想要征服的敌人其实另有他人。
　尽管与我为敌，却并非与我有仇。 

　那么？
　那么，到底是谁？

　对我凑斗景明心怀憎恶的到底是谁？
　而我凑斗景明憎恶的又是谁？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·第四話の雪車町

//ma04_016vs.nssの部分のフラッシュバックですが、現状FWがいじられておりません。
//元のファイルのFWが完了後に修正の必要ありです。

	EfRecoIn1(18000,600);
	CreateTextureSP("イベ絵10", 16000, Center, Middle, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw雪車町_警戒.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290280a12">
《无论几次我都会说给你听……
　你就是个无趣的半吊子废物。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290290a12">
《为什么，吗？
　你不是<RUBY text="···">不情愿</RUBY>地做着吗？》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290300a12">
《将那两个小鬼……
　将那对姐妹，不情愿地杀掉了!!》

{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290310a12">
《别开玩笑了——————————!!》

{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290320a12">
《<RUBY text="···">你倒是</RUBY>考虑一下，那些因为
这个勉强到连你自己都无法认可的理由而命丧于
你刀下的人啊！！
　啊——》

{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290330a12">
《实在是荒谬到了极点啊!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·村正

	EfRecoIn1(18000,600);
	Delete(イベ絵*);
	CreateTextureSP("イベ絵10", 16000, Center, Middle, "cg/ev/ev905_村正電磁撃刀_a.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw村正武者_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290340a00">
《……闭嘴……
　混蛋！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290350a00">
《说了闭嘴！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290360a00">
《我都说了闭嘴!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　曾经和金翅鸟王剑一同寻求天示。
　那时约定的未来现在已经成为现实。

　追究起来——
　
　我凑斗景明的敌人，唯雪车町一藏而已。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ここから挿入歌？
//◆ＥＶ
	SoundPlay("@msong05_short", 0, 1000, true);
	FadeDelete("黒",1500,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290370a00">
「……你————」

{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0290380a12">
「咯，咯……咯咯咯咯!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆たっ。跳躍音
	CreateSE("SE01","se人体_動作_跳躍01");

//◆ef001
	CreateTextureEXadd("飛ぶ２", 15010, @0, @0, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEX("飛ぶ", 15000, @0, @0, "cg/ef/ef003_汎用移動.jpg");
	Zoom("飛ぶ*", 0, 2000, 2000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("飛ぶ*", 350, 1000, 1000, Dxl2, false);
	Fade("飛ぶ*", 0, 1000, null, true);
	FadeDelete("飛ぶ２", 1000, false);
	DrawTransition("飛ぶ*", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateSE("SE02","se乗物_汽車_走行01_L");
	MusicStart("SE02",3000,400,0,800,null,true);

	Delete("絵イベ");

	SetFrequency("SE02", 10000, 1100, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　雪车町一藏抱起村正跃身……
　朝着已经发动的火车。

　一把抓住窗框贴身而上。 

　火车依然行驶着。
　并在轰鸣中加速。

　随后，从我面前消失。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 5000, 0, null);

//◆bg113
	OnBG(100, "bg113_駅のホームa_01.jpg");
	FadeBG(0, true);

	FadeDelete("飛ぶ",1500,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290390a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　一切都发生在一瞬间。

　列车没有停止。
　似乎没有一个列车员注意到方才那一幕。

　站内的乘客也——不，
或许有几个人注意到了。
　但他们只是呆呆地眺望着已经渐行渐远
的火车车尾。

　和我一样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290400a00">
「…………」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290410a00">
「啧!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　不行。
　不能就这样干站着！

　村正已经被刺中——被绑架了！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だっ。駆け出す
//◆ef003
	OnSE("se人体_足音_走る03", 1000);

	CreateTextureSP("駆け出す", 2000, @0, @0, "cg/ef/ef002_汎用移動.jpg");
	DrawTransition("駆け出す", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　我丢下行李冲了出去。
　目空一切横行无忌。在 
叫骂声和怒吼声中前行。

　眼前一片灰白。
  向着站台奔跑。

　从那里跃上轨道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw駅員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290420e026">
「喂!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　奔跑。
　脚绊轨枕，忽然踉跄不稳。

{	CreateSE("SE01","se人体_衝撃_転倒05");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　毫无办法地倒下。
　
　……怎么搞的，真碍事！

　站起身。
　继续跑。

　追赶。

　已经被列车远远甩开。

　载着雪车町和村正的列车，遥远的。飞速的。

　绝不能让他走。
　追赶。

　快一点，快一点——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainEX("絵板写", 1900);
	Fade("絵板写", 0, 500, null, true);

	SetNwC("cg/fw/nw駅員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290430e026">
「等等，你这家伙！」

{	CreateSE("SE01","se人体_動作_腕を掴む01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("駆け出す");
	Shake("絵板写", 300, 30, 0, 0, 0, 1000, Dxl2, false);
	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290440a00">
「唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　突然间脚变得无法前进，同时呼吸也几近停止。
　我被一股强大的力量抓住了衣领。　

　什么……?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw駅員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290450e026">
「民众禁止进入轨道内！
　老实点！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290460a00">
「放开!!」

{	NwC("cg/fw/nw駅員.png");}
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290470e026">
「什么!?」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290480a00">
「没空跟你解释——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　不是解释的时候。
　再不快点。再不快点！

　我强行蹬地，继续奔跑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_走る06", 1000);


	SetNwC("cg/fw/nw駅員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290490e026">
「别小瞧人！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どさっ。引き倒された
//◆黒
	OnSE("se人体_動作_掴む02", 1000);

	OnSE("se人体_衝撃_転倒03", 1000);
	Shake("絵板写", 300, 0, 10, 0, 0, 1000, Dxl2, false);
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 100, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵板写");
	CreateColorSP("下敷き", 10, "#000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　——却无法付诸行动。
　我被对方全力摔倒在地。

　脸埋在地上，一嘴泥。
　那味道让人想吐。

　真是蛮横无理。
　
　……为什么！都说了我现在十万火急啊！
　为什么这样任意地用暴力阻拦我!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。新田雄飛殺害

	EfRecoIn1(18000,600);
	CreateTextureSP("イベ絵10", 16000, -450, -0, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	CreateTextureSP("イベ絵11", 15500, -900, -500, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	CreateTextureSP("イベ絵12", 15000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");

	EfRecoIn2(300);

	Move("イベ絵10", 2000, @200, @0, DxlAuto, true);
	FadeDelete("イベ絵10",1500,false);
	Move("イベ絵11", 2000, @-100, @0, DxlAuto, true);
	FadeDelete("イベ絵11",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　太不讲理了。
　太不讲理了。

　太不讲理了——不能由着你胡来！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("イベ絵*");
	EfRecoOut2(600,true);

	SetNwC("cg/fw/nw駅員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290500e026">
「好，过来！
　给你好看！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0290510a00">
「吵死了，滚开!!」

{	NwC("cg/fw/nw駅員.png");}
//【ｅｔｃ／駅員】
<voice name="ｅｔｃ／駅員" class="その他男声" src="voice/md06/0290520e026">
「唔……混蛋！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ef003
	OnSE("se人体_動作_後ずさり01", 1000);
	CreateTextureSP("絵演効果", 2500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	DrawDelete("黒幕１", 100, 100, "zoom_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　终于挣脱开了。
　我爬起来，继续跑。

　站务员在身后追赶。
　
　但由于步速不及我，或者欠缺耐力，似乎渐渐　
被我甩开。

　……浪费我的时间！
　火车已经无影无踪了。

　怎么办。
　怎么办。
　怎么才能追上？

　那辆火车会在下一站停车，雪车町大概　
会在那里下车吧。
　但是就这样跑着过去，到下一站要　
花多长时间……其间村正会被如何处置？

　不行，要镇定。
　武者的能力只因这一刻而生。

　火车的一节，不过是羽翼的一击。
　不如立刻把剑胄……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


}

..//ジャンプ指定
//次ファイル　"md06_030.nss"