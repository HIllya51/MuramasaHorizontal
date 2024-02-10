//<continuation number="700">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_022.nss_MAIN
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
	#ev238_地球と太陽と月と金神_a=true;
	#bg109_宇宙空間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_023.nss";

}

scene md05_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_021.nss"


//◆はい地球。月軌道の辺りから。ev238a



	PrintBG("上背景", 30000);
	CreateColorSP("下黒", 90, "BLACK");

	CreateTextureSP("地球", 1000, @0, @0, "cg/ev/ev238_地球と太陽と月と金神_b.jpg");


	FadeDelete("上背景",0,true);

	Wait(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220010a01">
《看来是在我们的世界附近。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……………………………………………………………
………………………………………………………………
………………………………………………………………
………………………………………………………………

　飞得过远。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220020a00">
（……宇宙吗……）

{	FwC("cg/fw/fw村正蜘蛛_冷汗.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220030a01">
《这不是若无其事地踏出了人类史上的伟大
一步吗。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　对于自己踏出的这一步，感慨也随之涌出。
　对于被踢飞这件事，却无法阐述任何感想。

  然而湛蓝。
　然而遥远。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnBG(100, "bg109_宇宙空間.jpg");
	FadeBG(0, true);

	FadeDelete("地球", 1000, true);


	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220040a00">
（无法向那处<RUBY text="··">落下</RUBY>……也就是说，
我脱离到地球引力圈外了？
　究竟被打飞的速度有多快啊）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220050a01">
《似乎也并不是完全脱离。
　还能感到一丝地球的重力。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　那是在卫星轨道附近？
　
　即便这样，没有相当的速度理应到达不了——<k>
  原来如此，难怪浑身烧伤。

　达到速度的代价，是和大气摩擦的结果，
这样便能理解了。
　……不，不如说，
也许更应该对居然没被烧尽这件事抱有疑问。

　即使考虑到磁力屏障和铁甲硬度，能经受住踢击和大
气的摩擦热度，也不得不说是侥幸。
　或是因为“虎彻”性能强化的作用呢……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220060a00">
（但宇宙理应并非真空，只是接近真空。
　为什么我没窒息？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220070a01">
《利用飞行推进器的热量变换，制造出氧气
以供呼吸。
　……因为不知道天空尽头没有空气，
有些慌张就是了。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220080a00">
（原来如此）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　即使发不出声音，也不用担心没有氧气吗。
　在没有水的地方就不用溺死，不管怎样都谢天谢地。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220090a01">
《只是，不能坚持很久。
　这点你要知道。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220100a00">
（要在力量用尽前，
想出回到大气圈内的方法吧？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220110a01">
《是的。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピピ。

	OnSE("se特殊_コックピット_アラーム", 1000);
	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220120a01">
《——不。
　在那之前还有个问题。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220130a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm01", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　这样啊。
　回到地上，必须决一死战。

　————不。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220140a00">
（这样的话，连回去的方法都没必要考虑了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220150a01">
《……是呢。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　飞来白银彗星。
　打倒它——这就是全部！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号飛来。ズギョー。

	CreateColorSP("絵黒", 20000, "#000000");
	DrawTransition("絵黒", 200, 0, 1000, 500, null, "cg/data/slide_01_02_0.png", true);

	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE05","se戦闘_動作_空突進02");
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateSE("SE10","se戦闘_動作_空突進05");
	CreateSE("SE11","se戦闘_動作_空突進05");


	CreateTextureSP("絵背景100", 100, Center, -700, "cg/bg/bg109_宇宙空間.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	CreateTextureEX("絵演村正", 1010, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Request("絵演村正*", Smoothing);
	Rotate("絵演村正*", 0, @0, @0, @20, null,true);
	Zoom("絵演村正*", 0, 5, 5, null, true);

	SetBlur("絵演村正", true, 1, 300, 70, false);
	Move("絵演村正", 0, 177,-213, null, true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CreateColorEXadd("絵色200", 18500, "WHITE");
	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("プロセス１", Start);

	Move("絵背景100", 3000, @0, @-200, Axl1, false);
	DrawTransition("絵黒", 200, 1000, 0, 500, null, "cg/data/slide_01_02_1.png", true);
	Delete("絵黒");

	SetVolume("SE10", 800, 1000, null);

	SetVolume("SE10", 1000, 1, null);
	SetFrequency("SE10", 1000, 800, null);
	Shake("絵演村正", 2000, 1, 0, 0, 0, 1000, Axl2, false);
	Rotate("絵演村正", 1100, @0, @0, @-30, Axl3,false);
	Zoom("絵演村正", 1100, 5000, 5000, Axl3, false);
	BezierMove("絵演村正", 1100, (-277,-213){-280,-250}{-260,-250}(7000,-148), Axl1, false);
	Fade("絵演村正", 300, 1000, null, false);

	Wait(800);

	SetVolume("SE11", 600, 0, null);
	SetFrequency("SE11", 1000, 800, null);
	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("絵背景100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(200);

	Fade("絵演村正", 100, 0, null, false);
	Fade("絵色200", 200, 1000, null, true);
	SetFrequency("SE10", 0, 1200, null);

	Delete("プロセス１");
	Delete("絵背景*");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");
	Delete("絵演*");

	CreateTextureSP("gin", 1200, 400, 200, "cg/ev/resize/ev901_銀星号天座失墜小彗星_am.jpg");
	SetBlur("gin", true, 3, 500, 50, false);
	Zoom("gin", 0, 2000, 2000, null, true);

	DrawDelete("絵色200", 200, 500, "slide_01_02_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Zoom("gin", 600, 1000, 1000, Dxl2, false);
	Move("gin", 600, @-800, @-400, Dxl2, true);

	Wait(600);

	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md05/0220160a14">
《呵呵呵……
　看起来还很有精神呢，景明！》

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0220170a14">
《变成围着地球转的沉默红色卫星，
还真是遗憾啊！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220180a00">
《……真是遗憾呢。》

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0220190a14">
《如此，便享受这难得的体验吧。
　在天界的心情如何？》

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0220200a14">
《你在此处思虑何事？
　是想着回到蔚蓝的故乡吗——或是看到
远处的群星而想前往更远，直至尽头去旅行呢！》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220210a00">
《……两者都不是。
　在这里的我想着的，只有一件事。》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0220220a14">
《说！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220230a00">
《银星号。
　不会让你回到地上。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　回到人类长居的世界。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md05/0220240a14">
《——说得好。
　那么景明，就试着靠力量把光留在此地吧!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//ここで遠くに銀星号置いておく？ inc櫻井

	CreateTextureSP("迫る銀星号", 1000, @0, @-100, "cg/st/3d銀星号_騎突_通常.png");
	Zoom("迫る銀星号", 0, 100, 100, null, true);
	Rotate("迫る銀星号", 0, @0, @0, @-5, null, true);

	FadeDelete("gin", 1000, true);
	Zoom("迫る銀星号", 150000, 500, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　燃起勇猛之势，散发星之光辉的骑体在迫近。
　骇人无比的<RUBY text="ｓｐｅｅｄ">速度</RUBY>。
异常可怕的<RUBY text="ｐｏｗｅｒ">威势</RUBY>。

　若那样袭击我，一击便会将我击碎吧。

　——这次当真要被杀死。

　没有迎击方法，也没有防御方法。
　在所有意义上，毫无对抗之法。

　先前有五分的胜算，如今也已溃败。
　现在已经不是五分。我和村正严重受伤，战斗能力减
弱，而银星号毫发无损。

　这下该如何对抗呢。

　怎么做才能赢呢。

　有魔法或者奇迹般的方法吗？

　没有。<k>
　
　——————————————————不。

　有。

　既不是魔法也不是奇迹。
　胜利的方法是有的。

　只有一个。

　——对。
　凑斗景明要杀死凑斗光，方法只有一个。

　在面临这场战斗前，就已知晓。
　明明知道，最后却无从决断。

　若是现在，还赶得上。
　还赶得上。

　我还能战斗。

　所以，现在不得不做。

　————做吧。

　实施这唯一的方法吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220250a00">
（村正）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220260a01">
《等等。
　在等待进入交战圈的时间里，尝试进行恢复。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220270a01">
《顺利的话，多少能改善现在的状况——》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220280a00">
（算了。
　那么做也不会获胜）

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220290a00">
（要获得胜利，只有一个方法……）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220300a01">
《……？　什么？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　感到涌来的狰狞战斗之气，不禁寒毛竖立。
　敌人已经逼近。没时间了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220310a00">
（村正。
　现在，立刻）

{	SetVolume("@mbgm*", 1000, 1, null);
	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220320a00">
（对我进行精神污染）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(800);
	SetVolume("@mbgm*", 1000, 1000, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220330a01">
《————————————哎？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220340a00">
（就是精神支配。
　用<RUBY text="你">剑胄</RUBY>的精神来破坏<RUBY text="我">操控者</RUBY>的精神，
然后同化）

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220350a00">
（……就像以前在拘留所做的那样）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220360a01">
《为——为、为什么?!》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220370a00">
（想起让野太刀再生时的事吧。
　那就是答案）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　在不可思议的心象世界中得到的解答。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト

	CreateColorEX("黒", 4000, "BLACK");
	Fade("黒", 1000, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　——凑斗景明杀不了凑斗光。

　——所以。
　先杀了凑斗景明。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードイン
	FadeDelete("黒", 1000, true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220380a00">
（只要我在，就赢不了银星号……
　赢不了光）

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220390a00">
（无论如何）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220400a01">
《这种事……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220410a00">
（不，这是事实。
　刚才也是如此）

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220420a00">
（确实，要斩到的瞬间，我的意识里闪过了
光的模样……
　如果不是那样，也许就能早于空间扭曲的发
动，斩下对方）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220430a01">
《…………》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220440a00">
（我自身就是最大的败因）

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220450a00">
（所以杀了我）

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220460a00">
（毁掉我的思想）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");

	CreateTextureSP("宇宙", 4900, -200, @0, "cg/bg/bg204_横旋回背景_04.jpg");
	CreateTextureSP("宇宙2", 4900, -200, @0, "cg/bg/bg204_横旋回背景_04.jpg");
	CreateTextureSP("絵背景100", 5000, 110, -240, "cg/st/3d村正最終_騎航_通常b.png");

	CreateSCR1("@宇宙","@宇宙2",20000,-50,@0);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0245]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220470a01">
《……不、不可能。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220480a01">
《失去了操控者的心，就无法战斗。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220490a00">
（普通的武士确实如此。
　但是村正，你是背负使命而诞生的剑胄）

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220500a00">
（那使命与我现在的使命相同。
　即使消灭我的心，若你的使命还存在，
便无差别）

//【景明】
<voice name="景明" class="景明" src="voice/md05/0220510a00">
（战斗吧）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220520a01">
《……但……但是。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220530a01">
《但是，我。》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220540a00">
（村正！）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220550a01">
《我……想要守护你的意志。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号肉迫

	CreateColorSP("上黒", 15000, "BLACK");
	DrawTransition("上黒", 200, 0, 1000, 100, Dxl3, "cg/data/circle_01_00_0.png", true);

	Delete("宇宙*");
	Delete("絵背景100");

	CreateColorSP("黒", 3000, "BLACK");
	CreateTextureSP("絵背景100", 3100, Center, Middle, "cg/bg/bg109_宇宙空間.jpg");

	CreateTextureEX("gin", 3500, @-400, @-500, "cg/st/resize/3d銀星号_騎突_通常l.png");
	Zoom("gin", 0, 500, 500, null, true);
	Request("gin", Smoothing);
	SetBlur("gin", true, 3, 500, 50, false);
	Fade("gin", 0, 1000, null, true);

	OnSE("se戦闘_動作_空突進03", 1000);

	FadeDelete("上黒", 200, false);


	Zoom("gin", 300, 1000, 1000, Dxl3, true);




	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220560a00">
（快点！）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220570a01">
《做不到的！
　因为，我——！》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220580a00">
（别忘了村正。
　我们，是脚踏尸体一路而来的）

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220590a00">
（为了抵达此处，踩踏了多少生命）

//【景明】
<voice name="景明" class="景明" src="voice/md05/0220600a00">
（……这是将我从污染中救出之时。
　你自己，对我说过的话）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220610a01">
《————》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220620a00">
（是否让他人<RUBY text="···">付出的</RUBY>牺牲都毫无意义，
当下是紧要关头。
　无需迷惑……也不允许迷惑）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220630a01">
《主君……》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220640a00">
（做吧）

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220650a00">
（这是我的责任）

{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220660a00">
（这是你的责任）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220670a01">
《……》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220680a00">
（村正）

{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220690a00">
（夺取我的意识!!）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220700a01">
《……唔……啊啊啊啊!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆精神汚染ずばー。
	SetVolume("@mbgm*", 500, 0, null);

	CreateColorEXadd("汚染", 15000, "#990000");
	CreateColorEX("下敷き", 3200, "BLACK");

	OnSE("se特殊_雰囲気_共鳴01", 1000);
	Fade("汚染", 500, 700, null, true);
	CreateTextureEX("汚染波", 14000, @0, @0, "cg/ef/ef034_精神汚染.jpg");
	Fade("汚染波", 1000, 1000, null, false);

	EffectZoomadd(15000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", true);

	DeleteStA(500,true);
	Fade("下敷き", 1000, 1000, null, false);
	Fade("汚染", 1000, 0, null, true);
	Delete("gin");
	CreateSE("SE01", "se戦闘_銀星号_精神汚染波_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　由血、肉和某物制作出来的心，
　终结。锻造。

　变为漆黑的钢铁。

　坚固。
　坚硬。

　强大。
　坚韧。

　变为无法动摇的铁块。

　……这样就好。

　这才是真正达到了无我的境界。

　所有的愚念尽丧，只剩唯一之大义。

　本来比任何人都与此无缘的凑斗景明，
　通过自我抹杀这一仪式，<k>
　
　创造出与英雄相称的曲子。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆汚染完了


	OnSE("se特殊_雰囲気_崩壊音", 1000);

	CreateColorEX("汚染完了", 15000, "#990000");

	OnSE("se特殊_その他_卵生成01", 1000);

	Zoom("汚染波", 1500, 2000, 2000, null, false);

	Fade("汚染完了", 500, 1000, null, false);
	DrawTransition("汚染完了", 1500, 0, 1000, 200, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("迫る銀星号", 1000, false);

	Delete("@OnBG*");
	Delete("汚染波");

//念のための黒 inc櫻井

	FadeDelete("汚染完了",1500,true);
	SetVolume("SE*", 1000, 0, null);

	WaitKey(1500);

//◆※以後、テキストボックス変更。汚染時用に
//◆フェードアウト

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md05_023.nss"