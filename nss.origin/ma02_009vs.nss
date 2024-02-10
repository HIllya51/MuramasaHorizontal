+//<continuation number="1380">

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

scene ma02_009vs.nss_MAIN
{

	CP_AllSet("村正");

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
	#bg201_旋回演出背景市街地_02=true;
	#bg001_空a_02=true;
	#bg002_空a_02=true;

	#ev504_村正突進=true;
	#ev943_村正ＶＳ月山=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_九〇式竜騎兵=true;

	$PreGameName = $GameName;

	$GameName = "ma02_010.nss";

	CP_AllDelete();

}

scene ma02_009vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_008vs.nss"

//	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆フライトモニター展開
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 500, Center, -500, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	CreateColorSP("絵色100", 1500, "Black");

	FadeDelete("上背景", 500, true);

	Cockpit_AllFade(300,641,200);


	DrawTransition("絵色100", 300, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(300);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_04_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureEX("絵村正1", 1200, Center, Middle, "cg/st/resize/3d村正標準_騎航_通常3a_ex.png");
	CreateTextureEX("絵村正2", 1200, Center, Middle, "cg/st/resize/3d村正標準_騎航_通常3b_ex.png");
	Move("絵村正1", 0, @-100, @+50, null, true);

	DrawDelete("黒幕１", 200, 100, "slide_04_01_0", true);

	Move("絵村正1", 300, @+100, @-50, Dxl1, false);
	Fade("絵村正1", 300, 1000, null, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_動作_空突進03",1000);

	Fade("フラッシュ白",0,1000,null,true);
	Fade("絵村正1", 0, 0, null, true);
	Fade("絵村正2", 0, 1000, null, true);
	Shake("絵村正2", 10000, 1, 2, 0, 0, 500, null, false);
	FadeDelete("フラッシュ白",1500,false);

	Wait(1500);

//	Move("絵村正2", 400, @+700, @-200, Dxl1, false);

	CreateColorSP("黒幕１", 17000, "Black");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵村正*");


	CP_SpeedChange(0,300,null,true);
	CP_HighChange(0,200,Dxl1,true);
	CP_PowerChange(0,500,null,true);

	Cockpit_AllFade2();
	MyLife_Count(0,720);
	MyTr_Count(0,513);
	CP_AziChange(0,10,null,false);
	CP_SpeedChange(2000,412,null,false);
	CP_HighChange(10000,1013,Dxl1,false);
	CP_AltChange2(1000,30,null,false);
	FrameShake();

	CreateColorSP("白幕", 11000, "White");
	Zoom("絵背景100", 0, 1500, 1500, Dxl1, true);


	OnSE("se戦闘_動作_空上昇01",1000);

	Move("絵背景100", 10000, @0, @+350, Dxl1, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl1, false);
	FadeDelete("白幕", 500,false);
	DrawDelete("黒幕１", 300, 100, "circle_01_00_1", true);

//嶋：デバッグ用
//	CP_StateDebug();

	SoundPlay("@mbgm08",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　撕裂天空，直升天际般的体感，我从不认为
这种感觉很舒服。反而会使肌肤颤栗而冒鸡皮疙瘩。
　不见底的深渊，无尽的终结，虚无的领域——未知。
一想到自己正冲向那里，冰冷的恐惧就刺痛骨髓。

　飞行推进器的推力较平常稍弱，我并未升至
理想中的高度。与平时相比，<RUBY text="·····">天空很钝重</RUBY>。
　果然是热量不足。可是，
应该还不至于落后给半吊子的对手啊……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CP_AltChange2(3000,0,null,false);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0010a01">
《……果然没错。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0020a00">
「怎么了？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0030a01">
《那是寄生体啊，主君。
　和<RUBY text="母亲">银星号</RUBY>相同的气息！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0040a00">
「……你确定？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0050a01">
《之前也说过。我只能隐约搜寻到
它的气味……可一旦亲眼见到，就能确定。
　那个剑胄无疑被植入了“卵”。
与地方官一样。这里有两骑啊，主君！》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0060a00">
「排场真大……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　并非值得高兴的事。
　但，还是应该高兴吧。毕竟能早一刻直面
这不可避免的难题了。

　然而，中断的绳线就此连接。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵月山", 2000, Center, Middle, "cg/st/3d月山_騎突_戦闘.png");
	Zoom("絵月山", 0, 20, 20, null, true);
	Move("絵月山", 0, @-100, @-250, null, true);

	CockPit_LockSet(@-100,@-250);

	Move("絵背景100", 1000, @0, @50, Dxl2, false);
	CP_LockOnMove("@絵月山",1000,@0,@100,Dxl2,false);
	Fade("絵月山", 200, 1000, null, false);
	CP_LockOnFade(300,"off",true);

//嶋：月山 life412/Tr524
	CP_EnemyFade(300,10,412,524);


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0070a00">
《——西湘的恶狼！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -144, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, -185, -250, "cg/st/3d月山_騎突_戦闘.png");
	Move("絵演窓上", 0, @0, @-288, null, true);
	SetBlur("絵演窓上/絵立絵", true, 1, 300, 100, false);


	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵演窓上", 300, @0, @432, Dxl2, false);

//	BGMoveAuto("@絵演窓上/絵演背景",1);
	Move("絵演窓上/絵演背景", 200000, @-800, @0, null, false);
	BGMoveAuto("@絵演窓上/絵立絵",1);

	Fade("絵演窓上/絵演背景", 300, 1000, null, true);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	Wait(300);


	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0080b35">
《呵呵！　真是美丽的天空！
　你不这么认为吗，凑斗景明！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0090a00">
《回答我……你认识银星号吧!?》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0100b35">
《让老夫想想哈——》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0110a00">
《不许隐瞒！
　所以你才会知道村正！》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0120b35">
《哈啊哈！　这是当然！
　老夫从那位美丽的公主口中听说过你！》

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0130b35">
《她还恳切地拜托老夫，
要老夫好好疼爱你！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0140a00">
《在哪里！
　银星号在哪里！》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0150b35">
《老夫可不知道——
　毕竟她会乘风而逝、随云而去，
凡人真的很难触及到她！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0160a00">
《……！》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0170b35">
《我建议你去月亮的影子中找找？
　天女的宫殿一定就在那附近吧——
呵呵呵！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0180a00">
《怎能被你戏弄!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆速度メーターの上昇が徐々に微速化、やがて低下

	OnSE("se戦闘_動作_空突進02",1000);

	Zoom("@絵演窓上*", 200, 2000, 2000, null, false);
	FadeDelete("@絵演窓上*", 200, true);

	BGMoveDelete();


	CreateSE("SE01","se戦闘_動作_鎧_速度失速01");


	CP_LockOnMove("@絵月山",1000,@+100,@+100,AxlDxl,false);
	Move("絵背景100", 1000, @+100, @+100, AxlDxl, false);
	Zoom("絵背景100", 1000, 1100, 1100, AxlDxl, true);
	Zoom("@絵月山", 1000, 100, 100, AxlDxl, false);
	CP_SpeedChange(1000,512,null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("@絵月山", 2000, 10, 10, AxlDxl, false);
	Move("絵背景100", 2000, @-100, @-100, AxlDxl, false);
	Zoom("絵背景100", 3000, 1000, 1000, AxlDxl, false);
	CP_SpeedChange(10000,285,DxlAxl,false);

	Wait(500);

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0190a00">
「……咕！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　速度——降下来了。
　爆发力中断了……！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0200a01">
《主君，够了！》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0210a00">
「了解。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我扭动背部，转过身。
　开始准备激战——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ピッチアップして展開
//◆なだらかに下降、速度回復


	BGMoveDelete();

	OnSE("se戦闘_動作_空急降下01",1000);

	Zoom("絵背景100", 1000, 900, 900, AxlDxl, false);
	Shake("絵背景100", 6000, 1, 3, 0, 0, 1000, null, false);
	CP_LockOnMove("@絵月山",3000,@0,-2100,Axl2,false);
	CP_AltChange(3000,-70,Dxl1,false);
	Move("絵背景100", 3000, @0, -2100, AxlDxl, true);

	CP_HighChange(2000,200,null,false);
	CP_SpeedChange(2000,600,null,false);
	Zoom("絵背景100", 1200, 1300, 1300, Dxl1, false);
	Move("絵背景100", 1200, @0, -1800, Dxl1, false);

	Wait(600);
	Shake("絵背景50", 30000, 3, 4, 0, 0, 1000, null, false);

	Wait(603);

	OnSE("se戦闘_動作_空上昇01",1000);
	CP_SpeedChange(2000,497,null,false);
	CP_HighChange(2000,700,null,false);
	Zoom("絵背景100", 2000, 2000, 2000, Axl1, false);
	Move("絵背景100", 2000, @0, 1200, Axl1, false);

	Wait(1700);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("絵背景50");
	Delete("絵月山");
	CP_LockOnDelete();

	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵St100", 1000, 0, -500, "cg/st/resize/3d村正標準_騎航_戦闘bm.png");
	Fade("絵St100", 0, 1000, null, true);

	Shake("絵背景100", 50000, 1, 1, 0, 0, 500, null, false);
	BGMoveAuto("@絵St100",1);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);

	DrawDelete("黒幕１", 300, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0220b35">
《呵。怎么啦怎么啦怎么啦！
　没想到你这么没用。你这样是根本
无法抵达月亮的！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0230a00">
《诚惶诚恐感谢你多此一举的关心！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上昇へ
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵St100");
	Cloud_MoveDelete();
	Shake_LoopDelete();
	CloudZoomDelete(0,true);

	Cockpit_AllFade0();

	CreateColorSP("絵色100", 1500, "Black");

	CreateWindow("帯", 15000, 0, 100, 1024, 376, true);
	SetAlias("帯","帯");

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	CreateTextureEX("帯/絵背景", 2000, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	Fade("帯/絵背景", 0, 1000, null, false);
	DrawTransition("帯/絵背景", 300, 0, 2100, 100, Dxl1, "cg/data/slide_02_00_1.png", true);

//嶋：月山後ろ姿希望
	CreateTextureSP("帯/絵月山", 2200, -1024, 576, "cg/st/3d月山_騎航_戦闘d.png");
	SetBlur("帯/絵月山", true, 2, 300, 50, false);
	Request("帯/絵月山", Smoothing);
	Zoom("帯/絵月山", 0, 2500, 2500, null, true);

	CreateTextureSP("帯/絵月山2", 2200, 400, -500, "cg/st/3d月山_騎航_戦闘a.png");
	Rotate("帯/絵月山2", 0, @0, @180, @0, null,true);
	SetBlur("帯/絵月山2", true, 3, 500, 50, false);
	Zoom("帯/絵月山2", 0, 0, 0, null, true);

	CreateSE("SE01","se戦闘_動作_空突進08");
	CreateSE("SE02","se戦闘_動作_空突進04");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Move("帯/絵月山", 500, -565, -449, AxlDxl, true);

	Move("帯/絵月山", 1500, @+800, @-50, AxlDxl, false);
	Zoom("帯/絵月山", 1500, 10, 10, AxlDxl, true);

	Move("帯/絵月山", 500, @+100, @0, AxlDxl, false);
	Zoom("帯/絵月山", 500, 1, 1, AxlDxl, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("帯/絵月山2", 1000, 2500, 2500,AxlDxl, false);
	BezierMove("帯/絵月山2", 1000, (@0,@0){@+500,@0}{@+500,@0}(@-2500,@-200), AxlDxl, true);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Delete("絵色100");

	CreateTextureSP("絵背景100", 1000, Center, InBottom, "cg/bg/resize/bg001_空a_02.jpg");

	Delete("帯/*");
	Delete("帯");

	CP_AltChange(0,0,null,true);
	Cockpit_AllFade2();

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0240a01">
《敌骑反转，过渡为下降体势。
　迎击！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上昇へ

	CreateTextureEX("絵月山", 2200, Center, Middle, "cg/st/3d月山_騎航_戦闘a.png");
	Move("絵月山", 0, @0, @-100, AxlDxl, true);
	SetBlur("絵月山", true, 3, 500, 50, false);
	Zoom("絵月山", 0, 10, 10, null, true);
	CockPit_LockSet(@0,@-100);

	CP_SpeedChange(2000,400,null,false);
	CP_HighChange(2000,1500,null,false);
	CP_AltChange(2000,40,null,false);
	Move("絵背景100", 2000, @0, 0, AxlDxl, true);

	Fade("絵月山", 200,1000,null,false);
	CP_LockOnFade(200,"off",true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
　收到村正谍报，我仰起头来。
　敌骑的身影映入眼帘。

　敌骑在高度上占有优势！
　以压倒性的不利战势进行太刀迎战——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



//◆接近
//◆敵影ロックオン
//◆ＣＩ：村正騎航上段
//◆ＣＩ：月山騎航下段

	OnSE("se特殊_コックピット_ロックオン",1000);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	CreateWindow("ウィンドウ上", 15001, 0, -288, 1024, 576, true);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, true);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateTextureEX("ウィンドウ上/絵背景01", 3600, -300, -100, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("ウィンドウ上/絵ga01", 3600, Center, -100, "cg/st/3d月山_騎航_戦闘a.png");

	Move("ウィンドウ上/絵背景01", 0, @-200, @0, null, true);

	CreateTextureEX("ウィンドウ下/絵背景01", 3600, -512, 0, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("ウィンドウ下/絵mura01", 3600, 100, -450, "cg/st/3d村正標準_騎航_戦闘a.png");

	Move("ウィンドウ下/絵背景01", 0, @+200, @0, null, true);
	Move("ウィンドウ下/絵mura01", 0, @-300, @0, null, true);

	Fade("ウィンドウ上/絵背景01", 0, 1000, null, false);
	Fade("ウィンドウ下/絵背景01", 0, 1000, null, true);

	Fade("ウィンドウ下/絵mura01", 0, 1000, Dxl1, false);
	Fade("ウィンドウ上/絵ga01", 0, 1000, Dxl1, true);

	Move("ウィンドウ上/絵背景01", 1500, @+200, @0, null, false);
	Move("ウィンドウ下/絵背景01", 1500, @-200, @0, null, false);

	Move("ウィンドウ上/絵ga01", 1500, @-300, @0, Dxl1, false);
	Move("ウィンドウ下/絵mura01", 1500, @+300, @0, Dxl1, false);

	DrawDelete("黒幕１", 300, 100, "slide_04_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
　……刀尖向下！
　那么他应该会冲着我扬剑上砍。

　而我举刀过顶，挥刀向他下方砍去。
我们的意图一致了。
　如此便只靠剑速一决胜负……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：月山騎航下段→八相
	CreateTextureEX("ウィンドウ上/絵ga02", 3600, Center, -100, "cg/st/3d月山_騎航_戦闘b.png");
	SetBlur("ウィンドウ上/絵ga02", true, 3, 300, 50, false);
	Move("ウィンドウ上/絵ga02", 0, @-300, @0, Dxl1, true);

	Move("ウィンドウ下", 500, @0, @+288, Dxl1, false);
	Move("ウィンドウ上", 500, @0, @+288, Dxl1, false);
	Move("ウィンドウ上/*", 500, @+250, @+88, Dxl1, true);

	OnSE("se戦闘_動作_刀構え02",1000);

	Fade("ウィンドウ上/絵ga02",300,1000,Dxl1,false);
	Fade("ウィンドウ上/絵ga01",300,0,Axl1,true);

	OnSE("se戦闘_動作_空突進01",1000);
	Move("ウィンドウ上/絵ga02", 500, @+2000, @+800, Dxl1, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0250a00">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：袈裟懸け
//◆ＣＩ：刺突
//◆じゃきゃーん。

	CreateColorEX("絵色100", 20000, "Black");

	Fade("絵色100", 300, 1000, null,true);

	SL_centerin2(21000,@0, @0,1000);

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_centerinfade2(10);

	CreateColorEXadd("フラッシュ白", 21000, "WHITE");

	OnSE("se戦闘_破壊_鎧03",1000);
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵色100");

	Delete("絵月山");

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");

	Delete("ウィンドウ上");
	Delete("ウィンドウ下");

	Cockpit_AllFade2();

	CreateColorEXmul("フラッシュ赤", 20000, "RED");
	Fade("フラッシュ赤",0,500,null,true);

	CreateTextureEX("絵背景50", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);
	Move("絵背景50", 0, @0, @-200, AxlDxl, true);

	CP_RollBarMove("@絵背景50",0,15,null,true);

	Shake("@CP_Frame", 1000, 24, 47, 0, 0, 500, Dxl1, false);

	CP_RollBarMove("@絵背景50",1000,0,null,false);

	CP_AltChange(500,0,null,false);


	FadeDelete("フラッシュ赤",1000,false);
	Fade("フラッシュ白",300,0,null,true);

	Wait(700);

	FrameShake();

	Delete("フラッシュ白");



	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0260a00">
「啧……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　在咫尺之距——他挥刀朝下了！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0270a00">
「村正！　损伤！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0280a01">
《被削到了右侧腹！
　损伤轻微，不影响继续战斗。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0290a00">
「我还以为肠子会被抽出来……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0300a01">
《虽然刚才很危险……但如果瞄准得更精确一些，
那刺突就能扎穿心脏了。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　村正似乎心有余悸地如此说道。
　我切身感受到，它的想法并非夸张。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0310a00">
《……八相啊，你所用的架势真稀奇。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	WindowXSet(18000, 100);
	WindowXSetBG(18000, @+0, @+0,"cg/bg/bg002_空a_02.jpg");
	WindowXSetSt(18000, @0, @0,"cg/st/3d月山_騎航_戦闘b.png");

	OnSE("se戦闘_動作_空突進02",1000);
	WindowFadeBG(1,500,0,null,"slide_05_00_1",true);

	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0320b35">
《呵呵！　老年人打持久战太吃力了，
老夫还指望一刀定胜负呢。
　唉，看来事情不会这么简单呀！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　从容不迫的装甲通信传入耳中。
　与内容相反，他的声音里没有丝毫不甘。

　八相意指在身体一侧举刀，使刀与身体平行。
　从那里进行突刺，这种技法在武者的战斗中不算主流。
因为想要瞄准并刺穿高速飞来的武者，
比要砍倒他更是难如登天。

　然而。
　只要克服了这种困难，只要剑尖捕捉到敌人，
武者的金刚神力就会被集中在一点，纵然是敢于
笑对炮弹的装甲，也会像薄纸一般被刺穿！

　恐怕没有任何一位武者能承受完美的突刺吧。
　因此，此招一定是在局面处于劣势之时，
为起死回生而使用的。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進03",1000);
	Window_StMove(300, @+1000, @-500, Dxl1, false);
	Window_WipeDelete(300,"slide_05_00_1",true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0330a00">
「处在优势的地位上竟使用这招……
　真是目中无人的招法。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0340a01">
《他和你似乎不太合得来。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0350a00">
「大概吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転降下

	OnSE("se戦闘_動作_空突進02",1000);

	CreateSE("SE01","se戦闘_動作_空急降下01");
	CreateSE("SE02","se戦闘_動作_空上昇01");

	CreateTextureEX("絵背景100", 500, Center, -5000, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

//	OnSE("se戦闘_動作_空急降下01",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@絵背景50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@絵背景50",1500,180,Dxl1,true);
	Delete("@絵背景50");

	MyTr_Count(500,450);
	Move("絵背景100", 3000, @0, 0, AxlDxl, false);
	CP_SpeedChange(3000,540,null,false);

	Wait(1500);

	CP_RollBarMove2(0,0,null,true);

	CP_AziChange(1000,189,Axl1,false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	MyTr_Count(500,320);
	Wait(1000);


	MusicStart("SE02",0,1000,0,1000,null,false);
//	OnSE("se戦闘_動作_空上昇01",1000);
//	Move("絵背景100", 2000, @0, 800, Dxl1, false);
//	Zoom("絵背景100", 2000, 1500, 1500, Dxl1, false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@FrameShake_Stall");
	Delete("絵背景100");
	CP_LockOnDelete();

	Cockpit_AllFade0();

	CreateTextureEX("絵背景50", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);


	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	BGMoveDelete();

	CreateTextureEX("絵村正１", 2000, 0, -188, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureEX("絵村正２", 2100, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureEX("絵村正３", 2000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	SetBlur("絵村正１", true, 3, 500, 50, false);


	Fade("絵村正１", 0, 1000, null, true);
	Move("絵村正１", 500, @-1024, @0, Axl1, false);

	OnSE("se戦闘_動作_空突進03",1000);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Wait(100);


	Shake("絵村正２", 100000, 0, 1, 0, 0, 500, null, false);
	Fade("絵村正３", 500, 1000, null, false);
	Fade("絵村正２", 500, 1000, null, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0360a00">
「……不过。
　这种事与<RUBY text="我">村正</RUBY>无关。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0370a01">
《是啊。
　<RUBY text="我">村正</RUBY>根本不在乎这件事。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0380a00">
「——那么。
　就启动村正吧。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0390a01">
《开始吧，主君。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピッチアップ。上昇
//◆敵影ロックオン。接近

//◆ＣＩ：月山騎航上段
//◆ＣＩ：村正騎航下段
//◆ＣＩ：撃剣

	SetVolume("SE*", 300, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵村正*");

	CreateTexture("絵背景100", 100, -512, -288, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTexture("絵St100", 100, -120, -352, "cg/st/3d月山_騎航_戦闘b.png");
	Rotate("絵St100", 0, @0, @0, @+30, null,true);
	Request("絵St100",Smoothing);
	Move("絵St100", 0, @-1000, @-1000, null, true);
	SetBlur("絵St100", true, 3, 500, 30, false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	OnSE("se戦闘_動作_空上昇01",1000);

	Move("絵St100", 500, @+1800, @+1800, Dxl1, true);

	CreateTextureEX("絵背景200", 2000, -180, -250, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	CreateTextureEX("絵St100", 2100, 88, -120, "cg/st/3d村正標準_騎航_戦闘b.png");
	Request("絵St100",Smoothing);
	Rotate("絵St100", 0, @0, @0, @+35, null,true);
	Move("絵St100", 0, @+800, @+300, Dxl1, true);
	SetBlur("絵St100", true, 3, 500, 30, false);

	Fade("絵背景200", 0, 1000, null, false);
	DrawTransition("絵背景200", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	OnSE("se戦闘_動作_空上昇01",1000);
	Fade("絵St100", 300, 1000, null, false);
	Move("絵St100", 300, @-1000, @-500, Dxl1, true);
	Move("絵St100", 300, @-2000, @-1000, Dxl1, true);


	CreateTextureEX("絵EF100", 15000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Rotate("絵EF100", 0, @0, @180, @0, null,true);
	CreateTextureEX("絵EF50", 14000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Rotate("絵EF50", 0, @0, @180, @0, null,true);
	CreateTextureEX("絵EF200", 16000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Rotate("絵EF200", 0, @0, @180, @0, null,true);

	CreateColorEXadd("白幕", 16000, "White");

	OnSE("se戦闘_衝撃_衝突01",1000);
	Fade("絵EF200", 0, 1000, null, true);
	Fade("絵EF100", 0, 1000, null, false);
	Fade("絵EF50", 0, 1000, null, false);
	Zoom("絵EF200", 300, 2000, 2000, null, false);
	Shake("絵EF50", 1000, 25, 50, 0, 0, 500, Dxl1, false);
	Shake("絵EF200", 500, 25, 50, 0, 0, 500, Dxl1, false);
	FadeDelete("絵EF200", 300, false);

	Wait(200);

	Fade("白幕", 200, 1000, null, true);

	Delete("絵EF*");
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵St100");

	CreateTexture("絵背景100", 100, -512, -288, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTexture("絵St100", 100, -390, -191, "cg/st/3d村正標準_騎航_戦闘b.png");
	Rotate("絵St100", 0, @0, @0, @+30, null,true);
	Request("絵St100",Smoothing);

	CreateMask("マスク１", 2000, 0, 0, "cg/mask/ciスラッシュ_01_00.png", false);
//	Rotate("マスク１", 0, @180, @0, @0, null,true);

	CreateTexture("マスク１/絵背景100", 2000, -180, -250, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	CreateTexture("マスク１/絵St100", 2100, 160, -412, "cg/st/3d月山_騎航_戦闘b.png");
	Request("マスク１/絵St100",Smoothing);
	Rotate("マスク１/絵背景100", 0, @0, @0, @+35, null,true);
	Rotate("マスク１/絵St100", 0, @0, @0, @+20, null,true);

	Move("マスク１/絵St100", 0, @-500, @-500, null, true);
	Move("絵St100", 0, @+500, @+500, null, true);

	Move("マスク１/絵St100", 500, @+500, @+500, Dxl2, false);
	Move("絵St100", 500, @-500, @-500, Dxl2, false);


	FadeDelete("白幕", 1000, true);


	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0400b35">
《呵呵！　这可真令人吃惊。
　有个老不死的要和威名远扬的村正
决斗啦！》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0410b35">
《哎呀，老夫也不是没用的废物啊。
　还是说，你们的评价与实力不符？》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0420a01">
《你们倒是与评价所述相符呢，月山。
　这优秀的装甲让人感受到出羽雄蜂的吐息……
但我有一个疑问。》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0430b35">
《什么问题，蜘蛛公主大人？》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0440a01">
《……月山锻冶的开山鼻祖
应是平安王朝末期的鬼王丸。
　然而你那剑胄非常非常的古老，
如果我没看错的话，应该比鬼王丸更早。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0450a01">
《……看起来像是平安前期制造的。
　不对吗？》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0460b35">
《呵呵！　真不愧是称霸天下的村正！
　正如你明察，老夫的月山是贞观年间打造的。
与鬼王丸之后的月山流
在家谱上稍有异同。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0470a01">
《……果然啊。
　那么你为何自称月山？》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0480b35">
《老夫是在贞观六年，出羽国月山神社的祭神
被赐予从三位之神阶时，锻造出来的。
　故名为月山从三位。》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0490b35">
《之后，在天王将门公把五重塔捐赠给
和月山并称出羽三山的羽黑山时被交到他的手上，
接着又被赏赐给了侍奉将门公的老夫家
遥远的祖先，饭母吕石念。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0500a01">
《……这样啊。
　怪不得你的制造法中
留有浓烈的奥州舞草锻冶的特色。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　舞草锻冶。这个名字出现于剑胄历史的黎明时代。
　那副剑胄属于这一系统，那么
它无疑在现存剑胄中近似是最古老的一类。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0510a01">
《舞草锻冶乃单锐装甲的先驱者，
在此意义上，它是划时代性的。
　他们初次提出在装甲上下功夫
以提升加速性这一想法，而且还成功了……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0520a01">
《刚才你展示给我的出色速度。
　……说实话，对先人的睿智，
我只能发出感慨的叹息。》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0530b35">
《呵呵呵……你这样一味抬举老夫，
真有些于心不安。
　毕竟我现在必须要打败你们，
总觉得很内疚呀。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0540a01">
《没关系，别在意。我现在正要把你
<RUBY text="··">贬低</RUBY>呢。
　……他们注意到了速度的重要性。
但，也就到此为止了。》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0550b35">
《……唔嗯？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転下降

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景50");
	Delete("絵背景100");
	Delete("絵St100");
	Delete("マスク１/*");
	Delete("マスク１");

	Cockpit_AllFade2();
	CP_SpeedChange2(0,400,null,false);
	CP_HighChange2(0,2000,null,false);
	CP_RollBarMove2(0,180,null,true);

	CreateTextureSP("絵背景50", 1000, Center, InBottom, "cg/bg/bg201_旋回演出背景市街地_02.jpg");


	OnSE("se戦闘_動作_空上昇01",1000);
	CP_SpeedChange2(1500,712,DxlAxl,false);
	CP_HighChange2(1500,1210,DxlAxl,false);
	CP_AltChange(1600,83,DxlAxl,false);
	Move("絵背景50", 1600, @0, -3000, DxlAxl, false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Wait(1200);

	CP_RollBarMove2(0,0,Dxl1,false);
	CP_AziChange(500,180,Dxl1,false);
	CP_SpeedChange(2000,530,Dxl1,false);
	CP_HighChange(2000,1820,Dxl1,false);
	CP_AltChange(2000,0,Dxl1,false);
	Move("絵背景50", 2000, @0, 470, Dxl1, false);

	Zoom("絵背景50", 500, 1500, 1500, Dxl1, true);

	Wait(1500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0560a01">
《空战技术的体系化起始于
他们之后的一个时代……
　当时的他们还没能明确了解到
旋转性能的重要。》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0570b35">
《……噢噢!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆上昇
//◆敵影ロックオン。高度差ほぼ無し

	CreateTextureEX("絵月山", 2000, Center, Middle, "cg/st/3d月山_騎突_戦闘.png");
	Zoom("絵月山", 0, 0, 0, null, true);
	Move("絵月山", 0, @0, @-50, null, true);

	CockPit_LockSet(@0,@-50);

	OnSE("se特殊_コックピット_ロックオン",1000);

	Zoom("絵月山", 300, 50, 50, null, false);
	Fade("絵月山", 300, 1000, null, false);
	CP_LockOnFade(300,"off",true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0219]
　第三次的正面交战。
　高度的优劣——已经不存在了！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0580a00">
《速度要看备前，旋转要看关……
　在剑胄上有所造诣的人，一定听过这句话吧。》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0590a01">
《村正一门是美浓、关锻冶群体的系统。
　在运用旋转力的格斗战中，
是不会步他人后尘的！》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0600b35">
《老夫大意了！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆接近
//◆ＣＩ：村正騎航上段
//◆ＣＩ：月山騎航下段
//◆ＣＩ：撃剣

	CreateTextureEX("絵背景010", 21000, -1024, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵mura", 700, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Move("絵mura", 0, @+1000, @0, null, true);
	SetBlur("絵mura", true, 3, 500, 10, false);

	CreateTextureEX("絵背景002", 1000, 0, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵gassa", 1200, Center, Middle, "cg/st/3d月山_騎航_戦闘a.png");
	Move("絵gassa", 0, @-1000, @0, null, true);
	SetBlur("絵gassa", true, 3, 500, 50, false);


	Fade("絵背景010", 300, 1000, null, true);
	CreateTextureSP("絵背景001", 600, -1024, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Cockpit_AllFade0();
	CP_LockOnDelete();
	Delete("絵背景50");
	Delete("絵月山");

	Delete("絵背景010");

	OnSE("se戦闘_動作_空突進01",1000);

	Fade("絵mura", 300, 1000, Dxl1, false);
	Move("絵mura", 350, @-2500, @0, Dxl1, true);

	Fade("絵背景002", 100, 1000, Dxl1, true);

	OnSE("se戦闘_動作_空突進02",1000);

	Fade("絵gassa", 300, 1000, Dxl1, false);
	Move("絵gassa", 400, @+2000, @0, Dxl1, false);

	Wait(300);

	CreateTextureEX("絵ef001", 6000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");


	OnSE("se戦闘_衝撃_衝突01",1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("絵ef001",200,1000,null,true);

	Fade("フラッシュ白",200,1000,null,true);

	Delete("絵gassa");
	Delete("絵mura");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	CreateColorSPadd("黒幕１", 16000, "White");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

	Delete("絵ef001");
	Delete("絵背景001");
	Delete("絵背景002");

	CreateTextureSP("絵背景100", 1000, Center, -800, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Zoom("絵背景100", 0, 950, 950, null, true);

	Cockpit_AllFade2();

	Shake("絵背景100", 600, 2, 5, 0, 0, 500, Dxl1, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl1, false);
	FadeDelete("黒幕１", 500, false);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0610a00">
「……呼！」


{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0620b35">
「……唔！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上昇
//◆反転下降
//◆敵影ロックオン。やや下方
	OnSE("se戦闘_動作_空突進03",1000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/bg/bg001_空a_02.jpg");

	DrawDelete("黒幕１", 300, 100, "slide_03_01_0", true);

	CreateTextureSP("絵mura01", 700, Center, Middle, "cg/st/3d村正標準_騎航_通常3a.png");
	CreateTextureEX("絵mura02", 800, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	Rotate("絵mura01", 0, @0, @0, @-45, null,true);
	Request("絵mura01", Smooting);
	Rotate("絵mura02", 0, @0, @0, @-45, null,true);
	Request("絵mura02", Smooting);


	Move("絵mura01", 0, @-2000, @+1000, null, true);
	Zoom("絵mura01", 0, 2000, 2000, null, true);

	Move("絵mura01", 300, @+2000, @-1000, Dxl1, false);
	Zoom("絵mura01", 300, 1000, 1000, Dxl1, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	Fade("絵mura02", 0, 1000, Dxl1, true);

	Fade("絵mura02", 0, 1000, Dxl1, false);
	Fade("絵mura01", 0, 0, Axl1, true);

	OnSE("se戦闘_動作_空突進01",1000);
	Move("絵mura02", 500, @+1500, @-1500, Dxl1, false);
	Fade("フラッシュ白",300,0,null,true);

	Fade("絵mura02", 300, 0, Dxl1, false);
	Delete("フラッシュ白");

	Wait(200);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Delete("絵mura01");
	Delete("絵mura02");

	CreateTextureEX("絵背景100", 1000, Center, -300, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Cockpit_AllFade2();

	Zoom("絵背景100", 1000, 1250, 1250, Dxl1, false);
	Move("絵背景100", 500, @0, @-300, Dxl1, false);

	CreateTextureEX("絵月山", 2000, Center, Middle, "cg/st/3d月山_騎突_戦闘.png");
	Zoom("絵月山", 0, 0, 0, null, true);
	Move("絵月山", 0, @0, @+100, null, true);

	CockPit_LockSet(@0,@+100);

	OnSE("se特殊_コックピット_ロックオン",1000);

	DrawDelete("黒幕１", 300, 100, "slide_03_01_0", true);

	Zoom("絵月山", 300, 10, 10, null, false);
	Fade("絵月山", 300, 1000, null, false);
	CP_LockOnFade(300,"off",true);

	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0630b35">
「唔呜……!?」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0640a00">
《你的游戏结束了，相州乱破。
　之后的时间就由我来吧。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：村正騎航上段
//◆ＣＩ：月山騎航上段
//◆ＣＩ：撃剣

	CreateColorEX("絵色100", 21000, "Black");
	SL_leftdown2(22000,@0, @0,1500);

	CP_LockOnChangeW(300);
	Zoom("絵月山", 500, 2000, 2000, Dxl1, false);

	Wait(300);

	Fade("絵色100", 100, 1000, null, true);

	OnSE("se戦闘_攻撃_刀振る03",1000);
	SL_leftdownfade2(12);

	Wait(100);
	CP_LockOnDelete();
	Move("絵背景100", 0, @0, -400, null, true);


	CreateColorEX("フラッシュ白", 21000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);

	Move("絵月山", 0, @0, @+300, Dxl1, true);
	Delete("絵色100");

	CP_EHPChange(500,7,null,false);
	OnSE("se戦闘_破壊_鎧03",1000);
	Move("絵背景100", 2000, @0, @100, Dxl2, false);
	Move("絵月山", 600, @0, @+2000, Dxl1, false);
	Shake("@CP_Frame", 500, 5, 10, 0, 0, 500, null, false);
	Fade("フラッシュ白",500,0,null,true);
	FadeDelete("絵月山", 300,false);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0650b35">
「咕哦!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0660a01">
《敌骑，左肩部中弹。中度伤害！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0670a00">
《而我，没有在战斗时
玩游戏的兴致。
　下一回合就击坠你。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我有足够的信心。
　再次用剑攻击同一地点的话，
一定能把装甲和他的肉体一同劈开。

　而且，我没理由不这么做！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上昇
//◆反転降下

	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	CreateTextureEX("絵mura01", 1700, -36, -647, "cg/st/resize/3d村正標準_騎航_戦闘am.png");
	Move("絵mura01", 0, @+2000, @-500, Dxl1, true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@+100,Dxl2,true);
	Fade("絵mura01", 300, 1000, null, false);
	Move("絵mura01", 300, @-2000, @+500, Dxl1, true);

	BGMoveAuto("@絵mura01",1);


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0680a00">
《我上了。》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0690b35">
《……哈、哈哈哈。
　哎呀，看来的确是玩得太过火啦。
老夫无言以对。》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0700b35">
《哎呀哎呀，无论长到几岁，
忠言都是逆耳的啊。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆敵騎ロックオン

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	BGMoveDelete();
	Cloud_MoveDelete();
	CloudZoomDelete(0,true);

	Delete("絵mura01");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg001_空a_02.jpg");

	Cockpit_AllFade2();

	CreateTextureEX("絵月山", 2000, Center, Middle, "cg/st/3d月山_騎突_戦闘.png");
	Zoom("絵月山", 0, 0, 0, null, true);
	Move("絵月山", 0, @0, @+100, null, true);

	CockPit_LockSet(@0,@+100);

	OnSE("se特殊_コックピット_ロックオン",1000);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Zoom("絵月山", 300, 10, 10, null, false);
	Fade("絵月山", 300, 1000, null, false);
	CP_LockOnFade(300,"off",true);


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0710a00">
《————》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0720b35">
《不过啊……村正。
　你的时间也到此为止了。
接下来就再次由老夫主导吧。》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0730a00">
《……怎会让你如愿。》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0740b35">
《试试看吧？》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆接近
//◆ＣＩ：村正騎航上段
	Zoom("絵月山", 300, 30, 30, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0286]
　——五合！
　以飞行剑术为基础的向右举刀过顶，试图一刀两断。

　面对我，对方的太刀无力下垂着，没有任何架势。
　他到底有什么意图——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景1000", 17000, Center, -200, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景1000", 300, 1000, null, true);

	CreateTextureEX("絵月山01", 18000, Center, InBottom, "cg/st/3d月山_立ち_通常.png");
	CreateTextureEX("絵月山02", 17700, Center, InBottom, "cg/st/3d月山_立ち_陰義.png");
	CreateTextureEX("絵月山03", 17200, Center, InBottom, "cg/st/3d月山_立ち_陰義.png");
	CreateStencil("sten",1000,center,InBottom,128,"cg/st/3d月山_立ち_陰義.png",false);
	SetAlias("sten","sten");
	CreateMask("sten/マスク１", 17500, Center, Middle, "cg/st/3d月山_立ち_陰義.png", false);
	SetAlias("sten/マスク１","sten/マスク１");
	CreateTextureEX("sten/マスク１/絵背景", 17500, Center, -500, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Move("sten/マスク１/絵背景", 0, @0, @+10, null, true);
	Zoom("sten/マスク１/絵背景", 0, 1050, 1200, null, true);

	Fade("絵月山01", 300,1000,null,true);

	Wait(500);

	OnSE("se戦闘_動作_刀構え03",1000);
	EffectZoomadd(18000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);

	Fade("絵月山02", 300,1000,Dxl1,false);
	Fade("絵月山01", 300,0,Axl1,true);

	Wait(300);

	SetFwR("cg/fw/fw月山_通常.png");

	SetBacklog("　　《惭愧·忏悔·六根清浄……惭愧·忏悔·六根清浄……》", "voice/ma02/009vs0750b35", 小太郎);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//◆読みは「ざーんきさんげろっこんしょうじょう」
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0750b35">
　
　　　《惭愧·忏悔·六根清净……
　　　　惭愧·忏悔·六根清净……》

</PRE>
	SetTextEXR();
	Request("@text0290", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆敵影がじわっと消えていく。ロックオン解除。ピッ。
	Fade("絵月山03", 0,1000,Dxl1,true);
	Fade("sten/マスク１/絵背景", 0,1000,Dxl1,true);

	Fade("絵月山02", 1500,0,Dxl1,false);
	DrawTransition("絵月山2", 2000, 1000, 0, 200, Dxl1, "cg/data/wave_01_00_0.png", true);

	Wait(1000);

	FadeDelete("絵月山0*",500,true);
	FadeDelete("sten/マスク１/*", 1000, false);
	FadeDelete("sten/*", 1000, false);
	FadeDelete("sten", 1000, true);

	CreateColorSP("黒幕１", 30000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景1000");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");


	Cockpit_AllFade2();

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	OnSE("se特殊_鎧_電子音01",1000);
	CP_LockOnFadeT(300,false);
	FadeDelete("絵月山", 500,true);
	CP_LockOnDelete();

	Wait(1000);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0760a00">
「……什么？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0770a01">
《咦!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　消失——————了？

　怎么可能!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回。周囲確認

//嶋：方位計調整必須
	Move("絵背景100", 500, @+200, @-100, Dxl1, true);
	Move("絵背景100", 500, @-300, @-100, Dxl1, true);
	Move("絵背景100", 500, @-100, @+100, Dxl1, true);
	Move("絵背景100", 500, @+500, @+200, Dxl1, true);
	Move("絵背景100", 500, @-300, @-100, Dxl1, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0780a00">
「没有……!?
　在哪里！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0790a01">
《等等！
　我现在就探查周围！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ちょっと旋回
	Wait(300);
	OnSE("se特殊_コックピット_ロックオン",1000);
	Wait(300);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0800a01">
《——找到了！
　敌骑在一百七十度下方，距离四百！》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0810a00">
「了解！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆そっち向く


	Zoom("絵背景100", 500, 1500, 1500, Dxl1, false);
	Move("絵背景100", 500, @-300, @0, Dxl1, false);
	Wait(200);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	OnSE("se戦闘_動作_空突進02",1000);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Move("絵背景100", 0, @+300, @0, null, true);


	CP_AziChange(500,351,Dxl1,false);
	Move("絵背景100", 500, @-300, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0820a00">
「……？
　在哪里!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0830a01">
《——咦!?
　怎么会……的确有反应啊！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣撃音
//◆衝撃。どかーん

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//	WaitPlay("SE01", null);

	Wait(800);

	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);

	CreateColorEXadd("フラッシュ白", 21000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	CreateColorEXmul("フラッシュ赤", 20000, "RED");
	Fade("フラッシュ赤",0,500,null,true);

//嶋：ダメージポイント加算
//	CP_IHPChange(500,10,null,false);
//	MyLife_Count(500,300);



	Shake("@CP_Frame", 1000, 10, 30, 0, 0, 500, null, false);
	Shake("絵背景100", 1000, 20, 30, 0, 0, 500, null, false);
	Fade("フラッシュ赤",800,0,null,false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0840a00">
「咕啊!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0850a01">
《攻……攻击!?
　从哪里发出的！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回。なんもいませんねハイ。

//嶋：方位計調整必須
	Move("絵背景100", 500, @+250, @-150, Dxl1, true);
	Move("絵背景100", 500, @-300, @+100, Dxl1, true);
	Move("絵背景100", 500, @+150, @-150, Dxl1, true);
	Move("絵背景100", 500, @-300, @+300, Dxl1, true);
	Move("絵背景100", 500, @+200, @-100, Dxl1, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0860a01">
《这——这是……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0870a01">
《怎么回事？
　瞒过我的耳朵了!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0880a00">
「……月山的阴义……吗？」

{	SoundPlay("@mbgm13",0,1000,true);
	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0890b35">
《哈哈哈。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回。いねー。


//嶋：【ev】素材着次第調整
	CreateTextureEX("絵EV100", 18000, Center, Middle, "cg/ev/ev943_村正ＶＳ月山.jpg");
	SetBlur("絵EV100", true, 2, 300, 100, false);

	Zoom("絵EV100", 0, 2000, 2000, null, true);


	Zoom("絵EV100", 1200, 1000, 1000, Dxl3, false);
	Fade("絵EV100", 1000, 1000, Axl3, true);
	Cockpit_AllFade0();

	Wait(500);

/*
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_04_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");

	CreateTextureSP("絵村正", 3000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘e.png");
	Move("絵村正", 0, @+800, @0, null, true);

	Move("絵村正", 350, @-800, @+100, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_04_01_0", true);

*/

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0900a00">
「刚才的发信源在哪！」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0910a01">
《七、七十五度上方……》

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//◆そっち向く。いねー。
/*
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("絵村正");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Move("絵背景100", 0, @-200, @0, null, true);

	Cockpit_AllFade2();

	CP_AziChange(500,351,Dxl1,false);
	Move("絵背景100", 500, @+200, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);
*/


	FwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0920a00">
「……！」


{	FwL("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0930b35">
《怎么样？　老夫这雾隐之术！
　还望合您口味！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//◆探す。いないけど。
//嶋：方位計調整必須
/*
	Move("絵背景100", 500, @+200, @-100, Dxl1, true);
	Move("絵背景100", 500, @-300, @-100, Dxl1, true);
	Move("絵背景100", 500, @-100, @+100, Dxl1, true);
	Move("絵背景100", 500, @+500, @+200, Dxl1, true);
	Move("絵背景100", 500, @-300, @-100, Dxl1, true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0382]
　……雾隐之术？
　难道他将自己完全隐藏起来了？

　而且连村正的<RUBY text="雷达">探查机能</RUBY>都被骗过去了！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0940a00">
「有这么强劲的阴义吗!?」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0950a01">
《我第一次听说啊！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　村正的剑胄传音像是在哀鸣。
　但这也无可厚非。

　武者的阴义是神秘的招式。惊天动地之招
并不罕见。正如字面所述，撕裂天空、
粉碎大地的力量我从前也见过。村正本身
也能使用被一般武者称为魔神而恐惧不已的能力。

　然而。
　这般<RUBY text="··">犯规</RUBY>的能力我还是闻所未闻。

　肉眼看不见敌人，探查机能也不起作用，
这样根本就无从决斗。
　真是荒谬绝伦，无理至极。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0960a00">
「我听说过
大英联邦骑士团在研究开发隐身装甲……」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0970a01">
《哪怕舞草锻冶再先进，
领先一千年也过火了吧！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　没错。
　另外隐身装甲这种技术是为了对付雷达的，
而且目标还只是『使其<RUBY text="··">难以</RUBY>被探查到』这种程度，
才有了进行实用化的眉目。

　而并非既能在视觉上起隐蔽功能，
又可以给敌方探查机能传送误报这样的超级兵器。
至少，在已知的情报里不是这样的。
　那么，那果然是阴义……

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0980a01">
《主君！　快回避！》

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0990a00">
「!?」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ロール
//◆攻撃喰らう。ずしゃーん。

	Cockpit_AllFade2();

	FadeDelete("絵EV100", 500, true);

	OnSE("se戦闘_動作_空突進03",1000);

	BGMoveDelete();
	CP_RollBarMove("@絵背景100",500,90,Dxl1,false);

	Wait(300);

	CP_AltChange2(500,45,null,false);
	Zoom("絵背景100", 1300, 1500, 1500, Axl1, false);
	Move("絵背景100", 1800, @+200, @+550, Dxl1, false);
	MyTr_Count(1000,545);
	CP_SpeedChange(1000,400,null,false);
	CP_HighChange(1000,1200,null,false);
	CP_AziChange(1300,92,Axl1,false);
	Wait(500);
	CP_SpeedChange(1500,512,null,false);
	CP_HighChange(1500,600,null,false);

	Wait(300);

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//	WaitPlay("SE01", null);
	Wait(800);
	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);

	CreateColorEXadd("フラッシュ白", 21000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵背景100");

	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Move("絵背景50", 0, @0, @-200, AxlDxl, true);

	CP_RollBarMove("@絵背景50", 0, -20, null, true);

//嶋：ダメージポイント加算
//	CP_IHPChange(500,10,null,false);
//	MyLife_Count(500,300);



	Shake("@CP_Frame", 1000, 2, 5, 0, 0, 500, null, false);
	Shake("絵背景50", 1000, 3, 4, 0, 0, 500, null, false);
	CP_RollBarMove("@絵背景50", 600, 0, Axl1, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1000a00">
「……啧。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1010a01">
《敌骑的攻击掠过盔甲侧面！
　千钧一发啊……再晩一瞬间，
如今这脑袋恐怕就在自由落体运动了。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1020a01">
《主君，没事吧？》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1030a00">
「……没事。
　话说回来，刚才是如何察觉到攻击的？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1040a01">
《我把探查机能从<RUBY text="耳朵">信号探査</RUBY>切
换成了<RUBY text="肌肤">热源探査</RUBY>。
　看来我预料的不错。
敌人在这方面的能力似乎不够。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1050a00">
「这样啊……
　对方也不是万能的啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　敌骑的隐身能力仅止步于
逃过视觉和通常探查。
　那么就有方法可循——

　这也难说。
　依然无法扭转这压倒性的劣势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1060a00">
「能依靠热源探查来进行战斗吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1070a01">
《……不行。
　有效范围太窄了。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　原来如此。
　热源探查本来不过是陆战用的辅助机能，
在空中的使用并没未包括在预想中。
它的性能只适用于战场比空中战更狭小的陆地战。

　若是以陆战为主的剑胄，
不时也会装备比普通剑胄更优秀的热源探查……这方面，
村正的构造很正统。
　主战场是天空，因此不重视热源探查。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1080a01">
《充其量只能躲避致命攻击吧……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1090a00">
「聊胜于无……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　但这不足以破解所谓的雾隐之术。
　还需要些东西，某些别的东西——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆適当に飛行



	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1100a00">
「……村正。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1110a01">
《什么？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1120a00">
「那家伙已经消失多长时间了？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1130a01">
《……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　村正没有回答，不过看来立刻就
领悟到了我没说出口的话。
　因为感受到它倒吸了一口气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1140a00">
「发动阴义的代价是大量的热量。
　越是强劲的能力，消耗越激烈。」

//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1150a00">
「不停维持着隐身这种荒唐的招数，
并且同时还要继续飞行战斗……
　这需要多大热量？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1160a01">
《……应该是个吓人的数字。
　普通的人类早就该缺乏热量而坠落，
不，不冻死就算奇怪了。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1170a00">
「我同意。
　看来不能以常识判断这个对手啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　这也不像是被植入的“卵”的效果。
　那个真改——铃川令法也使用了强大的阴义，
但他未能避免热量欠缺而坠落了。

　这到底是什么状况呢？
　我完全看不透。感觉自己根本就像身处弥天大雾之中。

　雾隐之术这名字真贴切。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1180a01">
《……怎么办？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1190a00">
「那家伙的“卵”有多大危险性？
　目测是否快要孵化了？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1200a01">
《不……这个嘛。
　确切情报我也不了解，
但我想最近这两天不会孵化。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1210a00">
「这样啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　状况在促使我做一个决定。

　状况。

　敌骑出乎意料的力量。
　我方的低靡。

　——没有胜算。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1220a00">
「这场战斗我认输。
　离开战区，再战且等日后。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1230a01">
《……了解！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　村正的回答里透出了不甘心。

　我理解它的心情。
　但这也无可奈何。

　对<RUBY text="我们">村正</RUBY>来说，只有达成目的这一件事是重要的。
　若有必要，我也会选择败退这种方法。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転

	OnSE("se戦闘_動作_空突進01",1000);

	CreateTextureEX("絵背景100", 500, Center, -5000, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

	Move("@絵背景50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@絵背景50",2000,180,Dxl1,true);
	Delete("@絵背景50");

	MyTr_Count(500,450);
	Move("絵背景100", 4500, @0, -500, Axl2, false);
	CP_SpeedChange(3000,540,null,false);

	Wait(3000);

	CP_RollBarMove2(0,0,null,true);

	CP_AziChange(1000,189,Axl1,false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	MyTr_Count(500,320);
	Wait(1000);


	OnSE("se戦闘_動作_空上昇01",1000);
	Move("絵背景100", 2000, @0, 800, Dxl1, false);
	Zoom("絵背景100", 2000, 1500, 1500, Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@FrameShake_Stall");
	Delete("絵背景100");
	CP_LockOnDelete();

	Cockpit_AllFade0();

	CreateTextureEX("絵背景50", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);


	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,true);


	CreateTextureSP("絵St100", 1000, Center, Middle, "cg/st/resize/3d村正標準_騎航_戦闘bm.png");

	Move("絵St100", 0, @+300, @0, Dxl1, true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1224,@-100,Dxl2,true);

	Move("絵St100", 400, @-200, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	BGMoveAuto("@絵St100",1);
	Shake_Loop("@絵St100","shake01");

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs1240b35">
《哎呀哎呀？
　哈哈，村正竟然开始脚底抹油啦！
这可真是奇怪！》

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs1250b35">
《难不成，传说中的村正竟然输给了
老夫这个老头子和月山!?
　哈哈哈，怎么可能！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1260a01">
《……！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1270a00">
《很遗憾，正如你所言。
　我判断如果继续交战下去，无疑将败北。
所以我们要撤退了。》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs1280b35">
《噢噢，真没用！那位大人听见了
不知道会说些什么呢！不知道她会发出
怎样的感叹！她一定会这样说吧——景明，
凭这幅德行，就想追上我吗！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1290a00">
《……咕！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　别听。
　重要的事情只有一件——达成目的！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CloudZoomDelete(0,true);
	Cloud_MoveDelete();
	BGMoveDelete();
	Shake_LoopDelete();

	Delete("フラッシュ赤");
	Delete("絵St100");

	Cockpit_AllFade2();

	FrameShake();


	CreateTextureSP("絵背景50", 1000, Center, 0, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Request("絵背景50", Smoothing);

	BGMoveAuto("@絵背景50",1);


	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1300a00">
《村正——下降！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1310a01">
《了解……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆降下

	BGMoveDelete();
	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵背景50", 1500, @0, @-1000, AxlDxl, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0602]
　头朝下，提升速度。
　……风<RUBY text="····">变坚硬了</RUBY>。

　敌骑是重视速度的单锐装甲。
　恐怕很难甩开它——但只能一试了。

　从后面追赶也很难给我致命一击。
　武者的装甲坚硬无比，
正面冲突产生的冲击力才有可能斩破。

　而且接近地表，攻击就更加危险了。
　虽然可以从敌人上方向下攻击，
但结果很可能就此直接撞上地面。

　我必须要有心理准备，会挨上一两次攻击。
　但只要不在慌乱之中失手，就不会受到过度的损害，
大概吧——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1320a01">
《……主君!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1330a00">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵影急速接近。ロックオン
	CreateTextureEX("絵90", 14000, Center, Middle, "cg/st/3d九〇式竜騎兵_騎突_戦闘b.png");
	Request("絵90",Smoothing);
	Zoom("絵90", 0, 0, 0, null, true);
	Fade("絵90", 0, 0, null, true);
	Move("絵90", 0, @0, @+100, null, true);
	SetBlur("絵90", true, 2, 300, 100, false);

	CockPit_LockSet(@0,@100);

	OnSE("se戦闘_動作_空突進01",1000);

	Fade("絵90", 100, 1000, null, false);
	CP_LockOnFade(300,"off",false);
	Zoom("絵90", 300, 200, 200, Dxl2, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0612]
　什————
　新的敌人!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆急速接近

	OnSE("se戦闘_動作_空突進02",1000);
	CP_LockOnChangeW(300);
	CP_LockOnMove("@絵90",500,@0,@-100,Dxl2,false);
	Zoom("絵90", 500, 500, 500, Dxl3, true);

	SetFwR("cg/fw/fw九〇式_通常.png");

	SetBacklog("　　　　　《……打扰啦。》", "voice/ma02/009vs1340a12", 雪車町);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/009vs1340a12">
　
　　　　　《……打扰啦。》

</PRE>
	SetTextEXR();
	Request("@text0620", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆一閃、命中。どがーん。ひでー衝撃
//◆吹っ飛ばされ。ぐるぐる。
//◆モニターが赤くなる？　致命弾命中とかのノリ
	OnSE("se戦闘_動作_空突進03",1000);
	CP_LockOnMove("@絵90",500,@0,@-40,null,false);
	Zoom("絵90", 500, 1000, 1000, Axl3, false);

	Wait(380);

	CreateColorEX("絵色100", 20000, "Black");
	Fade("絵色100", 100, 1000, null, true);

	SL_rightup2(20010,@0, @0,1500);
	CreateSE("SE01c","se戦闘_攻撃_振る04");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_rightupfade2(15);

	CreateSE("SE01a","se戦闘_攻撃_鎧_剣戟02");
	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中03");

	CreateColorEXadd("フラッシュ白", 22000, "WHITE");
	MusicStart("SE01a",0,750,0,750,null,false);
	MusicStart("SE01b",0,750,0,1000,null,false);
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵色100");

	CreateColorEXmul("redmask", 17000, "RED");
	Fade("redmask", 0, 500, null, true);

	Delete("絵90");
	CP_LockOnDelete();

	CreateTextureSP("絵背景50", 10100, Center, -576, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	SetBlur("絵背景50", true, 3, 300, 100, false);
	CreateSurfaceEX("絵効果サフ", 10000,2000,"@絵背景50");
	Fade("絵効果サフ", 0, 1000, null, true);

	CP_RollBarMove2(7500,680,DxlAxl,false);
	Rotate("絵効果サフ", 7500, @0, @0, @-680, DxlAxl,false);
	Move("絵背景50", 7500, @0, @-2304, DxlAxl, false);

	CP_PowerChange(300,200,null,false);
	CP_SpeedChange(10000,50,null,false);
	CP_AltChange(10000,-85,null,false);
	MyLife_Count(500,121);
	CP_IHPChange(500,1,null,false);
	Shake_Loop("@絵背景50","shake01");

	CreateSE("SE00","se戦闘_動作_空急降下01");
	MusicStart("SE00",2000,1000,0,350,null,false);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1350a01">
《这……我太大意了！
　因为切断了<RUBY text="耳朵">通常探査</RUBY>……所以漏掉了……！》

{	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1360a00">
「咕……噢噢!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	SetFrequency("SE00", 3000, 1000, null);
	CP_RollBarMove("@絵背景50", 1000, @+45, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　姿势——操控！
　至少……进行软着陆————

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ぐらぐらしながら降下。地面が近付く
//◆ずどーん。
	SetVolume("@mbgm*", 2000, 0, null);

	CreateSE("SE01","se戦闘_動作_空落下01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("絵色100", 20000, "Black");
	SetBlur("絵背景50", true, 3, 500, 50, false);

	Move("絵背景50", 2000, @0, @-500, null, false);
	Zoom("絵背景50", 1000, 2000, 2000, Dxl1, false);

	Fade("絵色100", 1000, 1000, Dxl1, true);

	WaitAction("SE01", null);

	Cockpit_AllFade0();

	Delete("絵効果*");
	Delete("redmask");
	Delete("絵背景50");

//◆空
//◆九〇式竜騎兵
	#av_九〇式竜騎兵=true;

	PrintGO("上背景", 30000);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	CreateTextureSP("絵st100", 1200, -420, -432, "cg/st/3d九〇式竜騎兵_騎航_通常.png");
	Request("絵st100", Smoothing);
	Rotate("絵st100", 0, @0, @0, @-15, null,true);

	BGMoveAuto("@絵st100",2);

	FadeDelete("上背景", 1000, true);

	SetFwR("cg/fw/fw九〇式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/009vs1370a12">
「……喀嘻嘻。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/009vs1380a12">
「喀嘻嘻嘻嘻嘻嘻嘻嘻……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//◆黒

	Wait(2000);
	ClearWaitAll(2000, 2000);
	BGMoveDelete();

..//ジャンプ指定
//次ファイル　"ma02_010.nss"

}


