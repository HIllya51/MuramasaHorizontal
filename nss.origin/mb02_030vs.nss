//<continuation number="1200">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mb02_030vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb02_030vs.nss","Lastfire",true);
	Conquest("nss/mb02_030vs.nss","EffextDamage",true);
	

//コックピット用Ｓｅｔ
	//CP_AllSet("正宗");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#ev158_一導の最期=true;
	#ev921_同田貫防御形態=true;
	#bg201_旋回演出背景市街地_03=true;
	#ev919_正宗隠剣六本骨爪_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb02_031vs.nss";

}

scene mb02_030vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb02_029vs.nss"

	if($GameDebugSelect==1){CP_AllSet("正宗");}

//◆正宗ＶＳ童心正国
//◆ぼっかんぼっかんぼっかん。爆発連鎖
//◆が、収まってゆく
	PrintBG("上背景", 30000);
//	CreateColorSP("絵暗転", 18000, "#000000");

	CreateTextureSP("絵背景50", 100, -512, -288, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSP("絵背景150", 17010, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");

//おがみ：コックピット動作定義========================
	Cockpit_AllFade2(300,780,0);
	MyTr_Count(0,220);
	MyLife_Count(500,100);
	CP_IHPChange(500,2,null,false);
	CP_LockOnDelete();

	CP_EnemyFade0();

	CP_SpeedChange(500,500,null,false);
	CP_HighChange(500,734,null,true);
	CP_AltChange(500,40,null,false);
	CP_AziChange(0,35,null,false);

	CP_AltChangeA();
	CP_RollBarMoveA();
	CP_PowerChange(0,100,null,false);

	BGMoveAuto("@絵背景50",1);

//おがみ：コックピット定義========================

	CreateColorEXadd("絵色100", 18000, "WHITE");

	CreateSE("SE01","se戦闘_破壊_爆発07");
	CreateSE("SE10","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CloudZoomSet(1600);
	CloudZoomStart(1000,500,500,600,600);
	CloudZoomVertex(500,@0,@0,null,false);


//おがみ：コックピット動作========================
	Zoom("絵背景150", 5000, 1100, 1100, Dxl1, false);
	FadeF4("絵背景150", 500, 800, 5000, 0, 0, Dxl3, false);
	Fade("絵色100", 0, 1000, null, true);

	Shake("@CP_Frame", 500, 15, 20, 0, 0, 800, null, false);
	CP_SpeedChange(800,380,AxlDxl,false);

	Fade("絵背景200", 0, 1000, null, true);
	EffectZoomadd(18000, 5000, 4000, "cg/ef/ef026_汎用爆撃.jpg", false);


	FadeDelete("上背景", 500, true);

	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	FadeDelete("絵色100", 1000, true);


	FrameShake();


	SetVolume("SE10", 2000, 1000, null);
	SetFrequency("SE10", 2000, 600, null);

	SetFwL("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0010a02">
「如何——!?」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0020b40">
《喀哈哈哈哈哈哈哈哈哈啊!!
　那一击是正义之怒！　是弱者之叹，
汝可清楚！》


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0030b40">
《淌着你那比粪池底腐朽的粪尿还肮脏的臭血
去死吧!!》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
“铁炮”的连锁爆炸光是看都觉得骇人。
　活该。

　注视着回旋之中逐渐散去的火炎。
　就算那家伙<RUBY text="··">原状</RUBY>残存于火炎之中，
也不可能安然无恙！

　这就是，恶有恶报……！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DrawDelete("絵背景200", 2000, 400, "effect_01_00_0", false);
	FadeDelete("絵背景150", 2000, false);
	FadeDelete("絵背景200", 2000, false);

	Wait(500);
	SoundPlay("@mbgm09",0,1000,true);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0040b40">
《咕哈哈哈哈哈，对了主君。
　说件无关紧要的事，刚才爆炸气浪的余波好
像炸飞了右脚。》


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0050a02">
「是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　难怪觉得右腿膝盖以下<RUBY text="···">变轻了</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0060b40">
《速度迟钝仍无法避免。
　考虑到残存热量的问题，可飞行距离可能不
长。》


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0070a02">
「也就是说如果不快点逃脱则不利吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　再拖延下去，可能会导致在普陀乐城正中央着陆。
　……但是，在那之前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0080a02">
「必须确认凑斗先生的安全。
　怎么样？　他们也已经逃出了吗？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0090b40">
《不知道。》


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0100a02">
「快探测。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0110b40">
《管他呢，有何干系。》


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0120a02">
「……不行。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0130b40">
《为什么？》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0140a02">
「他是我们的同伴。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0150b40">
《是敌人吧。只是碰巧联手而已。
　若他们在地面上被逼入绝境，再好不过。
倒省得善后。》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0160b40">
《……唔。不对，反而令人扼腕。
　主君说过想手刃他们，对吧？》


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0170a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0180b40">
《——莫非，怎么。
　已经饶恕了他的罪过吗？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　据说锻造师在将自身化为剑胄之时，不仅仅是肉体，
连灵魂也会转变为钢铁。
　因此真打剑胄虽说尚有灵魂，但也是极为冷淡，没有
情感波动……应该是这样。一般来说。

　正宗完全不同。他拥有着与人一样，或者说更胜于人
的感性。
　然而，这一刻——他发出的是如剑胄的冰冷生硬的金
属之声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0190a02">
「……并没有饶恕。
　只是……希望他能够赎自身罪孽而已。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0200b40">
《赎罪之法，无从谈起。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一条父切腹カット。一瞬
//◆に合わせてＳＥ。心臓の鼓動。
	SetVolume("SE10", 300, 1, null);
	SetVolume("@mbgm09", 300, 1, null);

//おがみ：回想
	EfRecoIn1(18000,200);
	CreateTextureSP("絵回想100", 17000, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	OnSE("se人体_体_心臓の音02",1000);
	EfRecoIn2(300);

	Wait(500);
//おがみ：回想終了
	EfRecoOut1(200);
	Delete("絵回想100");	
	EfRecoOut2(600,true);

	SetVolume("SE10", 3000, 1000, null);
	SetVolume("@mbgm09", 3000, 1000, null);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0210a02">
「那……那个，我明白。
　但我需要那个人。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0220a02">
「要想与幕府战斗，光凭我一人之力，尚不足
够。……或许你不同意我的想法。
　我自己的不足之处我自己最清楚。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0230a02">
「如果和我在一起，他就不会再杀害正义之人
……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0240b40">
《主君，
　听好。》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0250b40">
《<RUBY text="····">恶终是恶</RUBY>。
　<RUBY text="······">恶鬼终是恶鬼</RUBY>。》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0260b40">
《他们与我等终不相容。
　那个男人早晚会背叛主君。》


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0270a02">
「……那种事，不会发生。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　他理解并且认可了我所坚信的正义。没错，不止一次
……用他那笨拙的措辞。
　他会一直在我身边的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0280b40">
《若遭背叛，如何是好？》


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0290a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0300b40">
《若他背叛主君深切信赖，如何是好？》


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0310a02">
「到时我不会饶恕他。
　<RUBY text="······">定会取他性命</RUBY>。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0320b40">
《……》


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0330a02">
「…………」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0340b40">
《…………》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0350a02">
「……你还有什么不满吗？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0360b40">
《主君。
　所谓恶，总是顽固而纠缠不休。》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0370b40">
《是不会容易灭绝的。》


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0380a02">
「无论多么顽固——」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 200, 0, null);
	SetVolume("SE*", 200, 0, null);
	Wait(500);
	FwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0390b40">
《来了!!》


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0400a02">
「什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();

//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/st/3d同田貫亀_正面.png");
//	Rotate("絵背景100", 0, @0, @180, @0, null,true);
//	Zoom("絵背景100", 0, 200, 200, null, true);

	CreateColorEX("絵色100", 17500, "WHITE");
	CreateColorEX("絵色200", 17000, "BLACK");

	CreateSE("SE01","se戦闘_動作_空突進03");
	CreateSE("SE10","se戦闘_動作_空走行02_L");
	CreateSE("SE11","se戦闘_動作_空突進05");

	Fade("絵色200", 100, 1000, null, true);

	MovieSESet(17300,"mv同田貫_a","se特殊_mv用_同田貫_a");
	OnSE("se戦闘_動作_空突進08",1000);
	MusicStart("SE11",2000,400,0,1000,null,true);
	MovieSEStart(0);
	SetVolume("SE11", 1000, 0, null);


//◆なんか飛んでくる。ずひゅーん。
	MusicStart("SE10",2000,1000,0,1000,null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	EffectZoomadd(10000, 1000, 100, "cg/ef/ef034_精神汚染.jpg", false);
	FadeDelete("絵色200", 300, false);
//	Fade("絵背景100", 100, 1000, null, false);
//	Move("絵背景100", 300, @1000, @0, Axl3, false);
//	Zoom("絵背景100", 300, 2000, 2000, Axl3, false);
	Wait(250);

	CP_SpeedChange(1000,553,null,false);
	CP_HighChange(1000,684,Dxl2,false);
	Fade("絵色100", 0, 1000, null, true);
	CP_RollBarMove("@絵背景50", 0, -20, null, true);

	OnSE("se戦闘_動作_空突進01",1000);
	CP_AziChange(1000,65,Dxl2,false);
	Shake("絵背景50", 500, 10, 5, 0, 0, 1000, Dxl2, false);
	Move("絵背景50", 1000, @350, @-150, Dxl3, false);
	CP_RollBarMove("@絵背景50", 1000, 0, Dxl2, false);
//	Delete("絵背景100");
	FadeDelete("絵色100", 300, true);

	SetVolume("SE10", 2000, 1000, null);
	SetFrequency("SE10", 1000, 1000, null);


	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0410a02">
「什——
　混蛋!!」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0420a09">
《喀哈哈哈哈哈哈哈哈!!
　哎呀，哎呀，吓死贫僧了！》

//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0430a09">
《差点就要启程前往极乐净土了！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆同田貫正国·防御形態
//◆要は首と手足を引っ込めた。
	SoundPlay("@mbgm12",0,1000,true);


	CreateTextureEX("絵背景150", 17000, Center, Middle, "cg/ev/ev921_同田貫防御形態.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ev/ev921_同田貫防御形態.jpg");
	Zoom("絵背景200", 0, 1500, 1500, null, true);
	SetBlur("絵背景200", true, 3, 300, 200, false);
	CreateSE("SE01","se戦闘_動作_空突進06");


	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵背景200", 100, 1000, null, false);
	Zoom("絵背景200", 700, 1000, 1000, Dxl2, true);

	Fade("絵背景150", 0, 1000, null, true);
	Delete("絵背景200");

	Wait(1000);
	SetFwR("cg/fw/fw一条_驚く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0440a02">
「龟……龟!?」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0450b40">
《是龟……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　怎么可能!?
　喂，这是什么构造啊!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0460b40">
《……精于装置设计的锻造师看来
不止吾一人啊。
　如此构思连吾都不曾想到。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆すぽーんすぽーんと手足が生えてくる
	CreateColorEX("絵色200", 18000, "BLACK");
	MovieSESet(18100,"mv同田貫_b","se特殊_mv用_同田貫_b");

	CreateSE("SE01","se戦闘_動作_空突進05");
//	CreateSE("SE02","se特殊_鎧_装着02");
//	CreateSE("SE03","se特殊_鎧_装着02");

	Fade("絵色200", 100, 1000, null, true);
	OnSE("se特殊_鎧_装着02",1000);
	OnSE("se特殊_鎧_装着05",1000);
	MusicStart("SE01",1000,300,0,600,null,true);
//	MusicStart("SE03",1000,1000,0,350,null,false);
	SetFrequency("SE01", 7000, 1000, Axl1);
	MovieSEStart(500);

	Delete("絵背景150");
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 500, 500, null, true);
	Move("絵狸", 0, @0, @100, null, true);

	SetVolume("SE01", 1500, 0, null);


	OnSE("se特殊_鎧_装着04",1000);
	FadeDelete("絵色200", 300, false);
	Shake("絵狸", 500, 5, 0, 0, 0, 1000, Dxl2, false);
	Fade("絵狸", 300, 1000, null, false);
	Move("絵狸", 500, @0, @-100, Dxl3, true);


	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0470a09">
「唔哈!!」


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0480a02">
「……竟然安然无恙？
　明明吃了那一着！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0490b40">
《如果对方是躲在甲壳之中的龟，
　铁炮箭头也无法贯穿。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0500b40">
《唔。
　怒也怒过，惊也惊过，感慨也
感慨过了，》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0510b40">
《现在只想碾碎他!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　由衷地赞同。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆相対。モニターでロックオン。
	CreateSE("SEロックオン","se特殊_コックピット_起動音02");


//おがみ：ロックオン
	CockPit_LockSet(@0,@0);
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
//	CP_LockOnMove("@絵狸",1600,@-200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,9,615,495);


	SetFwR("cg/fw/fw一条_怒りc.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0520a02">
「你这混蛋——」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0530a09">
《哦哟。没时间让你变戏法玩了。
　玩可丧命，贫僧算是彻底明白了……》


{	FwR("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0540a09">
《就让我击落你吧！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正国突進
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef034_精神汚染.jpg", false);
	Fade("絵背景100", 100, 1000, null, false);
	Zoom("絵背景100", 500, 2000, 2000, Axl3, true);

	OnSE("se戦闘_動作_空突進02",1000);
	Shake("絵狸", 500, 5, 0, 0, 0, 1000, Dxl2, false);
	Fade("絵狸", 300, 1000, null, false);
	Zoom("@絵狸", 500, 600, 600, Dxl2, false);
	CP_LockOnMove("@絵狸",500,@0,@-50,Dxl2,false);


	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0550a02">
「正宗！
　还得放出铁炮吗!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　只要看准他攻击的时机，在交锋之中打进壳内——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0560b40">
《不，不行。
　若继续消耗装甲，便无法飞行。》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0570a02">
「可恶……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　只有用太刀对抗了。
　单凭一只左手——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0580a09">
《破——!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆貫流刺突
//◆正宗剣撃
//◆がきーん。吹っ飛ばされる正宗
	CreateTextureEX("絵背景100", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateColorEX("絵色100", 17500, "WHITE");
	Request("絵背景100", Smoothing);
	Request("絵背景200", Smoothing);
	Zoom("絵背景100", 0, 4000, 4000, null, true);
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 3, 300, 200, false);

	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE02","se戦闘_攻撃_殴打連撃02_L");
	CreateSE("SE03","se戦闘_動作_空突進03");
	CreateSE("SE04","se戦闘_攻撃_殴打連撃02_L");

//おがみ：動作
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景50", 300, 1100, 1100, Axl3, false);
	Zoom("@絵狸", 300, 1500, 1500, Axl3, true);

	SetFrequency("SE10", 2000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Rotate("絵背景100", 1500, @0, @0, 3600, Dxl2,false);
	Fade("絵背景100", 0, 1000, null, true);

	Fade("絵色100", 0, 1000, null, true);
	DrawTransition("絵色100", 100, 1000, 0, 100, null, "cg/data/spiral_01_00_0.png", true);
	Delete("絵色100");

	Move("絵背景100", 0, 0, 0, null, true);
	Wait(150);
	Move("絵背景100", 0, -312, -100, null, true);
	Wait(150);
	Move("絵背景100", 0, -350, -150, null, true);
	Wait(150);
	Move("絵背景100", 0, -510, -120, null, true);

	Wait(150);
	MusicStart("SE04",200,1000,0,1000,null,false);
	SetVolume("SE02", 1000, 0, null);


	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 500, 1000, 1000, Dxl2, true);

	SetVolume("SE04", 1000, 0, null);
	Fade("絵背景200", 0, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景300");

	CreateColorEX("絵色100", 17500, "WHITE");
	Fade("絵色100", 100, 1000, null, true);

	Move("絵背景50", 0, -512, 188, null, true);
	CP_RollBarMove("@絵背景50", 0, -20, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵狸");
	CP_LockOnDelete();

	MyLife_Count(1000,50);
	CP_IHPChange(1000,1,null,false);
	MyTr_Count(1500,80);

	CP_AziChange(1000,72,Dxl2,false);
	OnSE("se戦闘_破壊_鎧03",1000);
	Shake("@CP_Frame", 1000, 15, 20, 0, 0, 800, null, false);
	Shake("絵背景50", 500, 10, 5, 0, 0, 1000, Dxl2, false);
	Zoom("絵背景50", 1000, 1500, 1500, Dxl2, false);
	Move("絵背景50", 1000, @-100, @-200, Dxl3, false);
	CP_RollBarMove("@絵背景50", 1000, 0, Dxl2, false);

	FadeDelete("絵色100", 300, true);
	Wait(500);
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 2000, 700, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　根本——
　难以抗衡！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0590a02">
「畜生!!」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0600b40">
《糟了！　主君！》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0610a02">
「正宗!?」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0620b40">
《翼型装甲遭击毁!!
　……即将坠落！》


{	FwR("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0630a02">
「!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆バランス崩れる
//◆落ちていく。まっさかさま、ではないが。
	SetFrequency("SE10", 2000, 500, null);
	SetVolume("SE10", 1000, 700, null);

	CreateSE("SE01","se戦闘_動作_空突進04");

	CreateTextureEX("絵背景100", 1500, Middle, -300, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");


	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_SpeedChange(2500,236,AxlDxl,false);
	CP_HighChange(20000,524,AxlDxl,false);

	Move("絵背景100", 20000, @0, @-2400, Dxl1, false);
//	CP_RollBarMove("@絵背景50", 15000, 160, AxlDxl, false);

	CloudZoomVertex(1000,@0,500,AxlDxl,false);
	Shake("絵背景100", 1000000, 1, 0, 0, 0, 1000, null, false);
	Fade("絵背景100", 1000, 1000, null, false);
	Fade("絵Suf", 1000, 1000, null, true);

	CloudZoomVertex(2000,@0,-500,AxlDxl,false);
	CP_RollBarMove("@絵背景50", 10500, -160, AxlDxl, false);
	Rotate("絵Suf", 10500, @0, @0, @160, AxlDxl,false);
	Wait(2000);
	CloudZoomVertex(18000,@0,0,AxlDxl,false);

//	FadeF4("絵背景50", 0, 1000, 15000, 0, 0, AxlDxl, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　翼甲——被打飞了一半。
　糟糕！

　在这种状态下，已经无法继续飞行了。
　投入热量再造……<k>……来不及。

　残余翼甲勉强维持着平衡。虽不至于坠落而死，但。
　却只能被完好的敌骑折磨致死。

　能飞行的武者与不能飞行的武者，两者战斗力是一对
三、乃至一对五。甚至可以说是一对十。
　终究无法抗衡。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0640a02">
「即便如此……可恶！
　已无路可退！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0650b40">
《<RUBY text="··">悠然</RUBY>的思虑，还是留到保住性命后再考虑吧。
　主君！》


{	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0660a02">
「什么——」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0670b40">
《敌骑在上方三百二十度</RUBY>！
　呈下落攻势！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正国突進

//おがみ：定義
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵Suf");
	Delete("絵背景100");
	CreateTextureSP("絵背景50", 100, -512, -288, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景50", Smoothing);
	Zoom("絵背景50", 0, 2000, 2000, null, true);

	CloudZoomSet(1600);
	CloudZoomStartB(1000,500,500,600,600);
	CloudZoomVertex(0,@0,@0,null,false);

	CP_SpeedChange(0,250,null,true);
	CP_HighChange(0,520,null,true);
	CP_RollBarMove("@絵背景50", 0, 180, null, true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Rotate("絵狸", 0, @0, @0, 180, null,true);
	Zoom("絵狸", 0, 300, 300, null, true);
	Move("絵狸", 0, @0, @-100, null, true);

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");
	CreateSE("SE探索","se特殊_コックピット_探索02");
	CockPit_LockSet(@0,@0);

//おがみ：動作
	MusicStart("SE探索",0,1000,0,1000,null,false);
	CP_SpeedChange(40000,436,Dxl1,false);
	CP_HighChange(40000,155,Dxl1,false);
	Zoom("絵背景50", 40000, 600, 600, Dxl1, false);
	DrawDelete("黒幕１", 200, 100, "slide_02_01_1", true);

	OnSE("se戦闘_動作_空突進02",1000);

	Shake("絵狸", 1000000, 1, 0, 0, 0, 1000, null, false);
	Zoom("絵狸", 100000, 400, 400, null, false);
	Fade("絵狸", 300, 1000, null, false);
	Move("絵狸", 400, @0, @100, Dxl3, true);

//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
//	CP_LockOnMove("@絵狸",1600,@-200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 200, null);

	SetFwR("cg/fw/fw一条_苦痛.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0680a02">
《——哈
　想在着陆前置我于死地吗！》


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0690a09">
《不会给你时间了……
　我早就说过！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　真是心中冒火，他的决断是如此正确。
　的确，坠落过程中的我方是毫无防备的！

　面对以最大速度最强气势从头顶上方攻来的敌骑，我
方无能为力。
　
　不——真的无能为力吗!?　果真如此吗！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0700a02">
「正宗！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0710b40">
《是！》


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0720a02">
「我们到此为止了吗？」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0730b40">
《当然不是！》


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0740a02">
「我能打倒他吗!?」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0750b40">
《正宗在行使正义上是无敌的!!》


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0760a02">
「那该怎么做!?」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0770b40">
《命令吾！》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0780a02">
「<RUBY text="··">上吧</RUBY>!!」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0790b40">
《领命!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正国至近。攻撃準備
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("絵背景50", 500, 1100, 1100, Dxl2, false);
	Zoom("絵狸", 500, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0800a09">
《纳命来！》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0810a02">
《是你的命！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02",1000);
	Rotate("絵狸", 700, @0, @0, 0, AxlDxl,false);
	CP_RollBarMove("@絵背景50", 700, 0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　来了。
　刹那间，我横转飞行。

　宛如仰泳般迎接敌人。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0820a09">
「嗯!?」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0830a02">
「正宗七机巧融为一体。」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆フェード
	CreateColorEX("絵色100", 17600, "BLACK");
	Fade("絵色100", 500, 1000, null, true);

	CP_LockOnDelete();


	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　
//◆読み「おんけん·ろっぽんこっそう」
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0840b40">
　　　　　《隐剑·六本骨爪。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――


//◆隠剣·六本骨爪
//◆肋骨がズガーッと飛び出して敵をガッツリ掴む
	CreateTextureEX("絵背景100", 17500, Center, Middle, "cg/ev/ev919_正宗隠剣六本骨爪_b.jpg");
	CreateTextureEX("絵背景200", 17500, Center, Middle, "cg/ev/ev919_正宗隠剣六本骨爪_b.jpg");
	CreateTextureEX("絵背景300", 19500, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	CreateTextureEXadd("絵背景400", 19500, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	Rotate("絵背景400", 0, @0, @0, @180, null,true);

	SetBlur("絵背景200", true, 2, 500, 200, false);
	SetBlur("絵背景300", true, 2, 300, 70, false);
	Request("絵背景200", Smoothing);


	OnSE("se特殊_鎧_装着04",1000);

	EffectZoomadd(10000, 1000, 100, "cg/ef/ef043_爪攻撃.jpg", false);
	Fade("絵背景300", 50, 1000, null, true);
	Zoom("絵背景300", 600, 1100, 1100, Dxl2, false);

	OnSE("se戦闘_正宗_隠剣六本骨爪01",1000);
	Wait(200);
	Fade("絵背景400", 50, 1000, null, true);
	Zoom("絵背景400", 600, 1100, 1100, Dxl2, false);

	Wait(200);
	Fade("絵背景100", 0, 1000, null, true);

	Zoom("絵背景300", 300, 2000, 2000, Axl3, false);
	Zoom("絵背景400", 300, 2000, 2000, Axl3, false);
	FadeDelete("絵背景300", 300, false);
	FadeDelete("絵背景400", 300, false);
	FadeDelete("絵色100", 300, false);
	Zoom("絵背景200", 500, 1500, 1500, Axl2, false);
	Fade("絵背景200", 200, 1000, null, true);
	FadeDelete("絵背景200", 500, true);

	Wait(1000);

	SoundPlay("@mbgm08",0,1000,true);


	SetFwL("cg/fw/fw一条_憎悪b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0850a02">
「咕哈——嘎、喀、嘶。」


{	FwL("cg/fw/fw童心_怒気.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0860a09">
「什……
　那是什么!?」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　……骨头。
　三对弯曲而长的骨头，穿破我的胸膛，
宛如爪子般延伸，<RUBY text="····">死死咬住</RUBY>敌骑。

　这骨头，不仅仅是骨头而已。
　外有装甲覆盖……

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	CreateTextureSP("上敷き", 17500, Center, Middle, "cg/ev/ev919_正宗隠剣六本骨爪_b.jpg");
	SetFwL("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0870b40">
《怎么可能会有吾正宗攻不下的死角！
　早已料到会有陷入手足无措困境之时——》


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0880b40">
《因此设计为可伸出肋骨!!
　咔哈——哈哈哈哈哈哈哈哈!!》


{
	OnSE("se戦闘_正宗_隠剣六本骨爪02",1000);
	Shake("上敷き", 1000, 3, 5, 0, 0, 500, null, false);
	FwL("cg/fw/fw童心_怒気.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0890a09">
「咕……哦哦!?」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0900b40">
《没用的没用的没用的！
　这六本骨爪的<RUBY text="··">握力</RUBY>能胜过北曾马熊。》


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0910b40">
《怎么可能轻易脱逃！
　主君，就是现在！》


{	FwL("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0920a02">
「嘎、噗……！」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0930b40">
《吐血也无妨，快进攻！
　敌骑形同稻草人！》


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs0940b40">
《只要保持紧咬就无需担心坠落。
　击碎他!!》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	Delete("上敷き");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　啊——没错。
　现在正是…………<k>绝佳机会！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0950a02">
「呃……」


{	FwL("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0960a02">
「看招……吧!!」


{	FwL("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs0970a09">
「唔——」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆斬撃
//◆正国、亀形態
//◆がちーん。
	CreateTextureEX("絵狸", 17000, Center, middle, "cg/ev/resize/ev921_同田貫防御形態l.jpg");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 1000, 1000, null, true);
//	Move("絵狸", 0, @0, @100, null, true);

	OnSE("se特殊_鎧_装着05",1000);
	Wait(150);
	OnSE("se特殊_鎧_装着05",1000);
	Wait(150);
	OnSE("se特殊_鎧_装着06",1000);
	FadeDelete("絵背景100", 500, false);

	Shake("絵狸", 500, 5, 0, 0, 0, 1000, Dxl2, false);
	Fade("絵狸", 300, 1000, null, false);

	Wait(500);
	Shake("絵狸", 100000, 0, 1, 0, 0, 1000, Dxl2, false);

	SetFwL("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0980a02">
「啧，这……！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　片刻间敌骑又恢复到龟的形态。
　硬是将手足和头部缩回，企图摆脱被握住的劣势。

　单手打出的一击落空了。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs0990a02">
「还敢垂死挣扎！」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1000b40">
《怎么。
　主君，<RUBY text="··">烧焦</RUBY>他！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　对。
　遵从剑胄引导，将热量注入太刀。

　——正宗七机巧融为一体。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1010a02">
「胧。」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1020b40">
「《焦尸剑》。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆朧·焦屍剣。正宗ヒートソード
//◆鉄板に油を引くようなＳＥ？

	CreateColorEXadd("絵色300上", 18200, "WHITE");

	Fade("絵色300上", 200, 1000, null, true);
	CreateColorSPadd("絵色300", 18000, "WHITE");


	OnSE("se戦闘_正宗_朧焦屍剣",1000);

	CreateMovie("ムービー１", 18100, 0, 0, false, false, "dx/mv焦屍剣.ngs");
	Request("ムービー１", Smoothing);
	SetAlias("ムービー１", "ムービー１");
	Zoom("ムービー１", 0, 2000, 2000, null, true);
	Move("ムービー１", 0, @0, @287, null, true);
	Request("ムービー１", Stop);

	Fade("絵色300上", 200, 0, Axl2, false);
	Request("ムービー１", Play);
	WaitAction("ムービー１", null);
	Fade("絵色300上", 100, 1000, null, true);

	Delete("ムービー１");

//	MovieSESet(18100,"mv焦屍剣","se戦闘_正宗_朧焦屍剣");
//	MovieSEStart(0);

	Wait(200);

//	CreateSE("SE01","se戦闘_正宗_朧焦屍剣");
//	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色100", 17100, "RED");
	CreateColorEXadd("絵色200", 17500, "#FFAA00");
	Fade("絵色100", 0, 500, null, true);
	FadeDelete("絵色300*", 1000, false);
	Fade("絵色200", 1000, 700, null, false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　超高温融于刀身。
　炙热灼烤着握刀的手。烧焦肌肤熔化血肉炙烤骨骼。

　必须在这手腕炭化并动弹不得前了结一切。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1030a02">
「正宗。
　甲胄的弱点除喉咙外还有……」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1040b40">
《还有一处。》


{	FwL("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1050a02">
「那个啊。」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1060b40">
《没错。》


{	FwL("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1070a02">
「那么，就是那里！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　反转左手手腕，
　刺出。

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE05","se戦闘_攻撃_焼き鏝_弱");
	CreateSE("SE06","se戦闘_破壊_鎧04");
	CreateColorSP("絵色300", 17500, "BLACK");
	CreateColorSPadd("絵色200", 17400, "#FFAA00");
	Fade("絵色200", 0, 700, null, true);
	CreateTextureEXadd("絵背景100", 17300, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵背景100", 0, 1100, 1100, null, true);


	SL_centerout2(20000,@0, @0,1000);
	MusicStart("SE06",0,1000,0,1000,null,false);
	SL_centeroutfade2(10);

	FadeDelete("絵色300", 1000, false);

//◆肉を焼く音
	MusicStart("SE05",0,1000,0,1000,null,false);

	Zoom("絵背景100", 15000, 1200, 1200, Dxl2, false);
	FadeF4("絵背景100", 1000, 500, 15000, 0, 0, AxlDxl, false);

	CP_EHPChange(0,3,null,true);


	Wait(500);

	SetFwL("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1080a09">
「噫——」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　烧熔一切的刀刃轻松刺入
丸龟武者的<RUBY text="··">胯间</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1090a02">
《我说过吧!?
　在你活着的时候，剜出你的眼珠和睾丸……》


{	FwL("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1100a02">
《首先从你那淫秽之物开始！
　按照约定！　拿来吧!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆肉を焼く音·強
	CreateSE("SE01","se戦闘_攻撃_焼き鏝_強");
	CreateColorSPadd("絵色100", 7500, "WHITE");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 1000, 0, null, true);

	SetFwL("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1110a09">
「呃嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎!?」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1120b40">
《咯哈哈哈哈哈哈哈哈哈哈哈哈!!
　酷似猪被绞杀时的尖叫啊!!》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　进一步捻入太刀。
　猪叫声不绝于耳。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	Shake("絵狸", 500, 5, 0, 0, 0, 1000, Dxl2, false);

	SetFwL("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1130a09">
「嘎嘎嘎。」


{	Shake("絵狸", 500, 8, 0, 0, 0, 1000, Dxl2, false);}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1140a09">
「嘎。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEXadd("絵背景燃", 10000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateColorEXadd("絵色500", 400, "#FFAA00");


	CreateTextureEX("絵狸２", 100, Center, middle, "cg/st/3d同田貫_立ち_通常.png");
	Request("絵狸２", Smoothing);
	Zoom("絵狸２", 0, 2000, 2000, null, true);
	Move("絵狸２", 0, @0, @130, null, true);

	OnSE("se特殊_鎧_装着05",1000);
	Wait(150);
	OnSE("se特殊_鎧_装着05",1000);
	Wait(150);
	OnSE("se特殊_鎧_装着06",1000);
//	FadeDelete("絵背景100", 500, false);

	Fade("絵色500", 0, 700, null, true);
	Fade("絵背景燃", 0, 200, null, true);
	Zoom("絵背景燃", 15000, 1200, 1200, Dxl1, false);

	FadeDelete("絵色200", 200, false);
	FadeDelete("絵背景100", 200, false);
	FadeDelete("絵狸", 200, true);

	Shake("絵狸２", 500, 5, 10, 0, 0, 1000, Dxl2, false);
	Fade("絵狸２", 300, 1000, null, false);
	Move("絵狸２", 300, @0, @-130, Dxl2, true);


	SetFwL("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0541]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1150a09">
「呃！」


{	FwL("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1160a02">
「让我好等!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　也许是疼痛难耐，敌人的脑袋终于从甲壳中弹出。
　我一把拔出刺在敌人股间的太刀。

　锁定目标。
　这次定要一剑封喉！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1170a02">
「受死吧——」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);

	CreateTextureEX("絵狸３", 100, Center, middle, "cg/st/3d同田貫_立ち_陰義.png");
	Request("絵狸３", Smoothing);
	Zoom("絵狸３", 0, 2000, 2000, null, true);
	Move("絵狸３", 0, @0, @0, null, true);

	Fade("絵狸３", 300, 1000, null, true);
	FadeDelete("絵狸２", 200, false);

	OnSE("se特殊_陰義_発動04",1000);
	EffectZoomDXadd(10000, 1500, 200, "RED", "cg/ef/ef034_精神汚染.jpg", true);

	CreateColorEX("絵色100", 17500, "BLACK");
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵狸３");
	Delete("絵背景燃");


	SetFwC("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0561]
//◆読み「カーラスートラ」
//【童心】
<voice name="童心" class="童心" src="voice/mb02/030vs1180a09">
《ＫＡＬＡＳＵＴＲＡ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆正国火炎放射
	CreateTextureEX("絵背景100", 17500, Center, Middle, "cg/ef/ef028_汎用火炎放射.jpg");
	CreateTextureEXadd("絵背景200", 17500, Center, Middle, "cg/ef/ef028_汎用火炎放射.jpg");
	CreateTextureEXover("絵背景300", 17500, Center, Middle, "cg/ef/ef028_汎用火炎放射.jpg");
	Request("絵背景100", Smoothing);
	Request("絵背景200", Smoothing);
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	Zoom("絵背景300", 0, 1200, 1200, null, true);
	Move("絵背景100", 0, @100, @0, null, true);
	SetBlur("絵背景100", true, 1, 300, 200, false);
	SetBlur("絵背景200", true, 1, 300, 200, false);

	CreateSE("SE01","se戦闘_攻撃_火炎放射");
	CreateSE("SE04","se戦闘_攻撃_焼き鏝_強");


	DrawEffect("絵背景300", 50, "LowWave ", 100, 150, null);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("絵背景300", 1000, 1000, null, false);
	Fade("絵背景100", 1000, 1000, null, false);
	FadeF4("絵背景200", 1000, 1000, 3000, 0, 0, AxlDxl, false);
	Wait(2000);
	FadeDelete("絵背景200", 1000, false);
	Move("絵背景100", 700, @-100, @0, Dxl2, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl2, true);

	Fade("絵背景100", 0, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　……!?

　喷出了——火焰!?

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_憎悪b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/030vs1190a02">
「啊啊……」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/030vs1200b40">
《不好！
　让他逃了——》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_正宗_朧焦屍剣");
	CreateSE("SE03","se戦闘_動作_空落下02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色100", 20000, "WHITE");

	Zoom("絵背景100", 1000, 2000, 2000, Axl2, false);
	Move("絵背景100", 1000, @-512, @-188, Axl2, false);
	Fade("絵色100", 1000, 1000, null, true);

	Wait(2500);
	CP_AllDelete();

	SetVolume("SE*", 2000, 0, null);
	ClearFadeAll(3000, true);

	Wait(2000);

//◆正国、脱出
//◆正宗、落ちる
//◆出城の上に落下。ずどーん。




}

..//ジャンプ指定
//次ファイル　"mb02_031vs.nss"



function Lastfire()
{

	CreateColor("焚き火光", 15000, 0, 0, 1024, 576, "#c46c3e");
	SetAlias("焚き火光","焚き火光");
	Fade("焚き火光", 0, 0, null, false);
	DrawTransition("焚き火光", 0, 100, 200, 990, null, "cg/data/out_slash_1.png", true);


	begin:

	while(1)
	{
	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",200,150,null,true);
	Fade("焚き火光",180,230,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,190,null,true);
	Fade("焚き火光",200,150,null,true);

	Fade("焚き火光",150,230,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",100,280,null,true);
	Fade("焚き火光",350,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",200,220,null,true);
	Fade("焚き火光",170,100,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",140,140,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,130,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,130,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,120,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,90,null,true);
	Fade("焚き火光",180,110,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,130,null,true);
	Fade("焚き火光",200,90,null,true);

	}


}

function EffextDamage()
{

	CreateColor("functionダメージ", 15000, 0, 0, 1024, 576, "RED");
	SetAlias("functionダメージ","functionダメージ");
	Request("functionダメージ", MulRender);
	Fade("functionダメージ", 200, 1000, null, true);




}
