//<continuation number="600">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_026vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb02_026vs.nss","FlyMoving",true);
	Conquest("nss/mb02_026vs.nss","FlyMoving2",true);
	
//コックピット用Ｓｅｔ
	CP_AllSet("正宗");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg002_空a_03=true;
	#ev945_正宗ＶＳ同田貫=true;
	#bg201_旋回演出背景市街地_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mb02_027.nss";

}

scene mb02_026vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mb02_025vs.nss"

//◆一条正宗ＶＳ童心正国
//◆両騎交差
//◆童心の突き。一直線
//◆弾く。ガキーン。
//◆行き違いに離れる
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm08",0,1000,true);

	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE05","se戦闘_動作_空突進02");
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateSE("SE10","se戦闘_動作_空突進05");
	CreateSE("SE11","se戦闘_動作_空突進05");


	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	CreateTextureEX("絵演村正", 1010, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	CreateTextureEX("絵演バロウズ", 1020, Center, Middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵演村正*", Smoothing);
	Request("絵演バロウズ", Smoothing);
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Rotate("絵演村正*", 0, @0, @0, @20, null,true);
	Zoom("絵演村正*", 0, 5, 5, null, true);
	Zoom("絵演バロウズ", 0, 5, 5, null, true);

	SetBlur("絵演村正", true, 1, 300, 70, false);
	SetBlur("絵演バロウズ", true, 1, 300, 70, false);

//	Move("絵演村正", 0, -500, -200, null, true);
	Move("絵演バロウズ", 0, 77,-413, null, true);
	Move("絵演村正", 0, 177,-213, null, true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(500,@400,@0,null,false);



	CreateColorEXadd("絵色200", 18500, "WHITE");
	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("プロセス１", Start);

	Move("絵背景100", 3000, @0, @-200, Axl1, false);
	FadeDelete("上背景", 1000, true);

	SetVolume("SE10", 800, 1000, null);
	Shake("絵演バロウズ", 2000, 0, 1, 0, 0, 1000, Axl2, false);
	Rotate("絵演バロウズ", 1100, @0, @0, @-90, Axl2,false);
	Zoom("絵演バロウズ", 1100, 6500, 6500, Axl3, false);
	BezierMove("絵演バロウズ", 1100, (77,-413){80,-150}{60,-110}(-10313,-1848), Axl1, false);
	Fade("絵演バロウズ", 300, 1000, null, false);


	Wait(800);

	SetVolume("SE10", 1000, 1, null);
	SetFrequency("SE10", 1000, 800, null);
	MusicStart("SE05",0,1000,0,1200,null,false);
	Shake("絵演村正", 2000, 1, 0, 0, 0, 1000, Axl2, false);
	Rotate("絵演村正", 1100, @0, @0, @-30, Axl3,false);
	Zoom("絵演村正", 1100, 5000, 5000, Axl3, false);
	BezierMove("絵演村正", 1100, (177,-213){80,10}{60,10}(-10013,-348), Axl1, false);
	Fade("絵演村正", 300, 1000, null, false);

	SetVolume("SE11", 800, 1000, null);
	Shake("絵背景100", 400, 50, 10, 0, 0, 1000, AxlDxl, false);
	Wait(200);

	Fade("絵演バロウズ", 100, 0, null, false);

	Wait(600);

	SetVolume("SE11", 600, 0, null);
	SetVolume("SE10", 600, 200, null);
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

	SetVolume("SE*", 4000, 0, null);

//おがみ：コックピット動作定義========================
	Cockpit_AllFade2(0,780,0);
	MyTr_Count(0,720);

	CP_SpeedChange(0,0,null,true);
	CP_HighChange(0,0,null,true);

	Cockpit_AllFade0();

//おがみ：コックピット動作定義========================

	PrintGO("上背景", 30000);
//	CreateColorSP("絵暗転", 18000, "#000000");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_03.jpg");

//おがみ：カットイン
	CreateColorEX("絵色200", 100, "BLACK");
	Fade("絵色200", 0, 500, null, true);

	CreateWindow("絵ＷＬ", 150, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 500, Center, -400, "cg/st/3d正宗_騎航_戦闘a.png");
	Request("絵ＷＬ*", Smoothing);

	Move("絵ＷＬ/絵背景Ｌ100", 0, @312, @0, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @-120, @230, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);

	CreateWindow("絵ＷＲ", 150, Center, 576, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureEX("絵ＷＲ/絵背景Ｒ100", 100, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureEX("絵ＷＲ/絵ＳＴＲ", 500, Center, -400, "cg/st/3d同田貫_騎航_戦闘.png");
	Request("絵ＷＲ*", Smoothing);

	Move("絵ＷＲ/絵背景Ｒ100", 0, @-212, @144, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @120, @230, null, true);
	Move("絵ＷＲ", 0, @0, @-288, null, true);

	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);

	SetBlur("絵ＷＬ/絵ＳＴＬ", true, 2, 300, 80, false);
	SetBlur("絵ＷＲ/絵ＳＴＲ", true, 2, 300, 80, false);

	CreateTextureEX("絵背景200", 4500, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	CreateTextureEX("絵背景300", 4500, Center, Middle, "cg/ev/resize/ev945_正宗ＶＳ同田貫l.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	Move("絵背景300", 0, @-412, @88, null, true);

	SetBlur("絵背景300", true, 3, 200, 80, false);

	CreateColorEXadd("絵色100", 5000, "WHITE");
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");


	Move("絵ＷＬ/絵背景Ｌ100", 500, @-380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 500, @-190, @-200, Dxl2, false);


	OnSE("se戦闘_動作_空突進03",1000);
	DrawDelete("上背景", 150, 100, "slide_01_03_0", true);


//	DrawDelete("絵暗転", 150, 100, "slide_01_03_0", true);

	Fade("絵ＷＲ*", 300, 1000, null, false);
	Move("絵ＷＲ/絵背景Ｒ100", 500, @380, @0, Dxl1, false);
	Move("絵ＷＲ/絵ＳＴＲ", 500, @190, @0, Dxl2, true);

//	Wait(300);

//おがみ：激突

	OnSE("se戦闘_動作_空突進08",1000);
	Zoom("絵ＷＬ/絵ＳＴＬ", 500, 2000, 2000, Axl2, false);
	Move("絵ＷＬ/絵ＳＴＬ", 500, @600, @0, Axl2, false);
	Zoom("絵ＷＲ/絵ＳＴＲ", 500, 2000, 2000, Axl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 500, @-600, @0, Axl2, false);

	Wait(300);

	Fade("絵背景200", 200, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 500, 500, "cg/ef/ef040_汎用衝突.jpg", true);

	Fade("絵色100", 100, 1000, null, true);
	Fade("絵背景300", 0, 1000, null, true);


	Delete("絵色200");
	Delete("絵Ｗ*");
	Delete("絵背景200");

	Zoom("絵背景300", 1000, 1000, 1000, Dxl2, false);
	FadeDelete("絵色100", 500, true);

	Wait(500);

	SetFwR("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0010a09">
「哦哟——」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

	Move("絵背景300", 200, -50, -150, AxlDxl, true);
	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0020a02">
「切——」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――


//◆正宗、旋回。上を取る
//◆突進。相撃
//◆童心直線突き
//◆また弾く
//◆正国

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵背景100");
	Delete("絵背景300");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureEX("絵背景400", 100, Center, -200, "cg/st/3d同田貫_騎突_戦闘.png");
	CreateTextureEX("絵背景150", 100, -512, -288, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureEX("絵背景500", 18000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Zoom("絵背景50", 0, 1300, 1300, null, true);
	Zoom("絵背景150", 0, 600, 600, null, true);
	Zoom("絵背景400", 0, 50, 50, null, true);
	SetBlur("絵背景400", true, 3, 300, 80, false);
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE02","se戦闘_動作_空突進01");
	CreateSE("SE10","se戦闘_動作_空突進05");

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@0,@0,null,true);

	FrameShake();
	MyLife_Count(1,780);
	MyTr_Count(0,300);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	Cockpit_AllFade2();

	CP_AltChangeA();
	CP_AziChange(0,-171,AxlDxl,false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE10",1000,700,0,1200,null,true);

	DrawDelete("黒幕１", 200, 100, "slide_02_01_1", false);

	CP_PowerChange(1500,700,null,false);
	CP_HighChange(500,1212,Dxl2,false);
	CP_SpeedChange(500,285,Dxl2,false);


	CP_RollBarMove("@絵背景50", 1000, -365, Dxl2, false);
	Move("絵背景50", 800, @-50, @100, Dxl2, true);

	CP_HighChange(1000,1012,null,false);
	CP_SpeedChange(1000,385,null,false);
	Move("@絵背景50", 1500, @-100, @-400, Axl2, false);
	Zoom("絵背景400", 600, 2000, 2000, Axl3, false);
	Move("絵背景400", 600, @150, @200, Axl3, false);
	Fade("絵背景400", 200, 1000, null, false);
	Wait(200);
	CP_RollBarMove("@絵背景50", 1000, @20, AxlDxl, false);

//おがみ：突進攻撃==================================


	FadeDelete("絵背景300", 200, false);
	Fade("絵背景150", 350, 1000, null, false);
	Zoom("絵背景150", 350, 1000, 1000, Axl2, false);

	Wait(200);

	FadeDelete("絵背景400", 200, false);
	FadeDelete("絵背景150", 500, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景500", 500, 2000, 2000, Dxl2, false);
	Fade("絵背景500", 50, 1000, null, true);

//おがみ：コックピット位置初期化==================================
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵背景400", 0, @0, @100, null, true);
	Move("@絵背景50", 0, -512, -288, null, true);
	CP_RollBarMove("@絵背景50", 0, 15, null, true);
	BGMoveAuto("@絵背景50",1);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 1000, null, false);
	FadeDelete("絵背景500", 500, false);
	CP_RollBarMove("@絵背景50", 500, 0, Dxl2, true);

	Wait(300);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0030a09">
《嚯、嚯、嚯。
　身手不错嘛。》

//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0040a09">
《抵挡长枪袭击之术掌握得不错！》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆正宗

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0050a02">
「可恶……
　长枪真是麻烦。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0060b40">
《嗯。
　蒙古也曾用过……》

//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0070b40">
《袭击距离比长刀更远。
　甚至会投掷过来。
　……与长枪对阵，若想夺取时机，困难至极。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　有种说法认为大和的长枪起源于元日战争之时从大陆
流入，而后代替长刀夺取了长柄刀类的首席地位，繁盛
于战国时代。
　说明了一个事实，此物于战有利。

　而这样面对面应战，才充分知晓其中缘由。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();
	OnSE("se戦闘_動作_空突進03",1000);


	SetFrequency("SE10", 1000, 1100, null);
	Move("@絵背景50", 300, @500, @0, Axl2, false);



//◆反転
//◆敵騎ロックオンして突進
	CP_PowerChange(500,650,null,false);
	CP_AziChange(500,-100,Axl2,false);
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Axl2, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景50", Smoothing);
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 100, 100, null, true);
	SetBlur("絵狸", true, 3, 300, 80, false);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@絵背景50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@0,@-200,null,true);


	Move("絵背景50", 2000, @0, @100, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,1100,Dxl2,false);
//	CP_PowerChange(2000,450,null,false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	OnSE("se特殊_コックピット_起動音02",1000);
	CP_LockOnMove("@絵狸",800,@0,@100,Dxl2,false);

	Fade("@絵狸", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,800,425);

	SetFrequency("SE10", 1000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　敌方骑体动作迟缓。
　即便是还未习惯正宗飞行的我，也能勉强按照双轮战的
规则夺取高度优势。与凑斗先生的村正相比简直是只迟钝
的龟。

　现阶段，我可以确保在这场竞争中的优势。
　高度产生速度，速度诞生威力。

　但如果这一切……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆槍直線突き
//◆受け
	CreateColorEXadd("絵色100", 1500, "WHITE");
	SL_centerin(@0, @0,1000);
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");

	CP_PowerChange(1000,620,null,false);
	CP_SpeedChange(1000,452,AxlDxl,false);

	OnSE("se戦闘_動作_空突進01",1000);
	SetFrequency("SE10", 1000, 1200, null);
	Zoom("絵背景50", 800, 1100, 1100, Axl2, false);
	CP_LockOnMove("@絵狸",600,@0,@150,Axl3,false);
	Zoom("@絵狸", 500, 2000, 2000, Axl3, false);
	Wait(300);
	Fade("@絵狸", 200, 0, null, true);
	SL_centerinfade2(10);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 0, 1000, null, true);
	Delete("@絵狸");
	CP_LockOnDelete();
	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("絵背景50", 1000, 1500, 1500, Dxl2, false);
	FadeDelete("絵色100", 500, true);


	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0080a02">
「——嗬啊！」


{	FwR("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0090a09">
「呵呵呵！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　如果这一切在太刀进入攻击范围内之前就<RUBY text="···">被挡退</RUBY>的话，
那就毫无意义了！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆離れる
	OnSE("se戦闘_動作_空突進01",1000);

	SetFrequency("SE10", 1000, 1100, null);
	Move("@絵背景50", 300, @-400, @0, Axl2, false);

	CP_AziChange(1500,-280,AxlDxl,false);
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Axl2, "cg/data/slide_01_01_1.png", true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景50", Smoothing);

//おがみ：コックピット
	CP_AziChange(0,-20,null,true);
	CP_RollBarMove("@絵背景50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);

	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,1100,Dxl2,false);

	BGMoveAuto("@絵背景50",1);

	SetFrequency("SE10", 1000, 1000, null);
//	CP_PowerChange(1000,400,Dxl2,false);
	CP_SpeedChange(1000,398,AxlDxl,false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0100a02">
「畜生。接他这招就会丧失平衡……
　无暇近身攻击！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0110b40">
《这正是长枪卑劣之处。
　躲在安全之处攻击我方，自己则窃取胜利。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　虽然深有同感，但说出来也无济于事。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
//◆相対

	BGMoveDelete();

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 1000, null, true);

	CreateTextureEX("絵狸", 100, Center, Middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 100, 100, null, true);
	SetBlur("絵狸", true, 3, 300, 80, false);


	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(1500,-168,AxlDxl,false);

//おがみ：動作
	CloudZoomVertex(1500,1000,@0,AxlDxl,false);

	CP_PowerChange(2000,600,null,false);
	CP_SpeedChange(1000,452,AxlDxl,false);
	CP_RollBarMove("@絵背景50", 500, -5, AxlDxl, false);
	Move("@絵背景150", 1500, @-5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @-200, @0, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -312, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@200,@-100,null,true);

	Wait(600);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("絵背景150", 300, false);
	Move("@絵背景50", 600, -512, -288, Dxl2, false);

//おがみ：ロックオン
	CloudZoomVertex(2000,0,@0,AxlDxl,false);
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵狸",800,@-200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

//	CP_PowerChange(1500,400,Dxl2,false);
	CP_SpeedChange(1000,398,AxlDxl,false);
	Wait(500);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0120b40">
《如何应战，主君。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　如何应战？
　…………………………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0130a02">
「……哼。
　想那么多干嘛。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　<RUBY text="·····">只管向前冲</RUBY>。
　仅此而已。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0140b40">
《明白。<RUBY text="··">直接</RUBY>上。
　哈啊——!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景300", 18000, Center, Middle, "cg/ev/ev945_正宗ＶＳ同田貫.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
//	Move("絵背景300", 0, @-412, @88, null, true);
	SetBlur("絵背景300", true, 3, 200, 80, false);
//◆突進、突き、打ち払いのパターン

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟01");
	SL_centerin(@0, @0,1000);


	CP_PowerChange(1000,570,Dxl2,false);
	CP_SpeedChange(1000,452,AxlDxl,false);
	OnSE("se戦闘_動作_空突進01",1000);
	EffectZoomadd(10000, 1000, 300, "cg/ef/ef003_汎用移動.jpg", false);

	Zoom("@絵背景50", 1600, 1100, 1100, AxlDxl, false);
	Zoom("@絵狸", 400, 2000, 2000, Axl3, false);
	Wait(200);
	CP_LockOnDelete();
	FadeDelete("@絵狸", 200, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerinfade2(10);

	Shake("@CP_Frame", 500, 5, 10, 0, 0, 800, null, false);
	OnSE("se戦闘_攻撃_鎧_剣戟03",1000);
	SL_leftup(@0, @0,1000);
	SL_leftupfade2(10);


	Fade("絵背景300", 300, 1000, Axl3, false);
	Zoom("絵背景300", 500, 1000, 1000, Dxl2, true);

	Wait(500);

	SetFwC("cg/fw/fw童心_哄笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0150a09">
《怎么了，怎么了！
　一筹莫展了吗？武士姑娘！》

//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0160a09">
《已经无计可施了？
　就算你虚张声势，也像那么回事！》


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0170a02">
《少啰嗦。我自有办法。
　<RUBY text="····">三招之内</RUBY>。》


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0180a09">
《哦？
　那就让我见识一下那三招吧！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆反転
//◆突進、突き、打ち払い一式

	CreateColorEXadd("絵色100", 1500, "WHITE");
	SL_centerin(@0, @0,1000);
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");
	CreateSE("SE02","se戦闘_動作_空突進01");


//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 1000, null, true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	SetBlur("絵狸", true, 3, 300, 80, false);


	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(1500,-47,AxlDxl,false);

//おがみ：動作
	CloudZoomVertex(0,-1000,@0,AxlDxl,false);

	CP_SpeedChange(1000,528,AxlDxl,false);
	Zoom("絵背景300", 300, 2000, 2000, Axl3, false);
	FadeDelete("絵背景300", 300, false);

	CP_RollBarMove("@絵背景50", 500, 5, Axl2, false);
	Move("@絵背景150", 1500, @5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @200, @0, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Zoom("@絵背景50", 0, 1000, 1000, null, true);
	Move("@絵背景50", 0, -712, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@-200,@0,null,true);

	Wait(600);
	CloudZoomVertex(1000,0,@0,AxlDxl,false);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("絵背景150", 300, false);
	Move("@絵背景50", 600, -512, -288, Dxl2, false);

	CP_LockOnMove("@絵狸",1600,@200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("@絵狸", 600, 1500, 1500, Axl3, false);
	Zoom("@絵背景50", 800, 1200, 1200, Axl2, false);
	Wait(400);
	Fade("@絵狸", 200, 0, null, true);
	SL_centerinfade2(10);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 0, 1000, null, true);
	Delete("@絵狸");
	CP_LockOnDelete();

	SL_rightdown(@0, @0,1000);
	SL_rightdownfade2(10);

	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("絵背景50", 600, 1200, 1200, Dxl2, false);


	CP_SpeedChange(1000,398,AxlDxl,false);
	FadeDelete("絵色100", 500, true);

	Wait(300);

	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0190a02">
「咳……」


{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0200a09">
「嗯？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆反転
//◆突進、突き、打ち払い一式
	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	CreateColorEXadd("絵色100", 1500, "WHITE");
	SL_centerin(@0, @0,1000);
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");
	CreateSE("SE02","se戦闘_動作_空突進01");


//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 1000, null, true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	SetBlur("絵狸", true, 3, 300, 80, false);

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(1500,-174,AxlDxl,false);

//おがみ：動作
	CloudZoomVertex(1500,1000,@0,AxlDxl,false);

	CP_SpeedChange(1000,468,AxlDxl,false);
	CP_RollBarMove("@絵背景50", 500, -5, AxlDxl, false);
	Move("@絵背景150", 1500, @-5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @-200, @0, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -312, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@200,@0,null,true);

	Wait(600);
	CloudZoomVertex(1000,0,@0,AxlDxl,false);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("絵背景150", 300, false);
	Move("@絵背景50", 600, -512, -288, Dxl2, false);

	CP_LockOnMove("@絵狸",1600,@-200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("@絵狸", 600, 1500, 1500, Axl3, false);
	Zoom("@絵背景50", 800, 1200, 1200, Axl2, false);
	Wait(400);
	Fade("@絵狸", 200, 0, null, true);
	SL_centerinfade2(10);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 0, 1000, null, true);
	Delete("@絵狸");
	CP_LockOnDelete();

	SL_rightdown(@0, @0,1000);
	SL_rightdownfade2(10);

	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("絵背景50", 600, 1200, 1200, Dxl2, false);


	CP_SpeedChange(1000,398,AxlDxl,false);
	FadeDelete("絵色100", 500, true);

	Wait(300);

	SetFwR("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0210a02">
「唔……咳。」


{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0220a09">
《这是两着。还剩下一着。
　呵呵，是不是有些费事呢？》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0230a02">
《……》


{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0240a09">
《这长枪的蝼蛄枪头可是制作得特别强韧……
　<RUBY text="···">折断的</RUBY>只怕是你的骨头吧。》


{	FwR("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0250a09">
《况且贫僧也不一定会继续只守不攻哦。嗯？
　啊哈哈哈！》


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0260a02">
《是吗。
　那么，就此<RUBY text="··">打住</RUBY>。》


{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0270a02">
《更何况，原本就不需要三招。》


{	FwR("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0280a09">
《哦……？》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆相対。突進
//◆直線突き
//◆見切って避ける

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);

	SL_centerin(@0, @0,1000);
	CreateSE("SE02","se戦闘_動作_空突進01");
	CreateSE("SE03","se戦闘_攻撃_鎧_剣戟01");
	CreateSE("SE04","se戦闘_動作_突進01");


//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 1000, null, true);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	SetBlur("絵狸", true, 3, 300, 50, false);


	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(1500,-37,AxlDxl,false);

//おがみ：動作
	CloudZoomVertex(1500,-1000,@0,AxlDxl,false);

	CP_SpeedChange(1000,478,AxlDxl,false);
	CP_RollBarMove("@絵背景50", 500, 5, Axl2, false);
	Move("@絵背景150", 1500, @5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @200, @0, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Zoom("@絵背景50", 0, 1000, 1000, null, true);
	Move("@絵背景50", 0, -712, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@-200,@0,null,true);

	Wait(600);
	CloudZoomVertex(2000,0,@0,AxlDxl,false);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("絵背景150", 300, false);
	Move("@絵背景50", 600, -512, -288, Dxl2, false);

//おがみ：ロックオン
	CP_LockOnMove("@絵狸",1600,@200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("@絵狸", 700, 1500, 1500, Axl3, false);
	Zoom("@絵背景50", 800, 1200, 1200, Axl2, false);
	Wait(400);
	MusicStart("SE03",0,1000,0,1000,null,false);
	SL_centerinfade2(10);

	MusicStart("SE04",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵狸",400,@300,@-50,Dxl2,false);
	Zoom("@絵背景50", 400, 1200, 1200, Dxl2, false);
	Move("@絵背景50", 400, @150, @0, Dxl2, true);





	Wait(100);


	SetFwR("cg/fw/fw童心_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0290a09">
《嗯!?》


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0300a02">
「看招——吧！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟02");
	CreateSE("SE02","se戦闘_破壊_鎧03");
	CreateSE("SE03","se戦闘_攻撃_鎧_剣戟03");
	CreateSE("SE04","se戦闘_破壊_鎧04");
	SL_leftdown2(20000,@0, @0,1000);

	CreateColorSP("黒幕１", 16000, "BLACK");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdownfade2(10);

	Wait(300);


//◆一撃
//◆ずがーん
//◆離れ
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	EffectZoomDXadd(18600, 500, 1000, "#FFFFFF", "cg/ef/ef042_汎用打撃.jpg", true);

	Delete("@絵狸");


//	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CP_LockOnDelete();
	Cockpit_AllFade0();

	Delete("絵村正");
	Delete("絵背景200");
	Delete("絵背景300");
	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d正宗_騎航_戦闘a.png");
	CreateTextureSP("絵演バロウズ", 1010, Center, Middle, "cg/st/3d同田貫_騎航_戦闘.png");
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Zoom("絵演村正", 0, 800, 800, null, true);
	Zoom("絵演バロウズ", 0, 50, 50, null, true);

	SetBlur("絵演村正", true, 3, 300, 100, false);
	SetBlur("絵演バロウズ", true, 3, 300, 100, false);

	CreateColorSPadd("絵色100", 1600, "WHITE");

	CloudZoomVertex(0,1000,@0,AxlDxl,false);

	Move("絵演村正", 0, @0, @60, null, true);
	Move("絵演バロウズ", 0, @-350, @-60, null, true);


	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

$ループムーブナット名 = "@絵演バロウズ";
$ループムーブタイム = 30000;

$ループムーブナット名２ = "@絵演村正";
$ループムーブタイム２ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");


	Request("プロセス１", Start);

	Move("絵背景100", 30000, @0, @-200, null, false);

	FadeDelete("絵色100", 500, false);
	DrawDelete("黒幕１", 150, 100, "slide_01_01_0", false);
	Zoom("絵演村正*", 1000, 1000, 1000, Dxl2, false);
	Move("絵演村正*", 1000, @160, @0, Dxl2, true);
//	Move("絵演バロウズ*", 1000, @-60, @0, Dxl2, true);


	Request("プロセス２", Start);

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0310a02">
「如何!?」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0320b40">
《敌骑左肩装甲被击中！
　但损伤不大。》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0330b40">
《连续躲避长枪攻击导致腕力下降也是不利因
素。
　且敌骑装甲亦甚为精良。》


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0340a02">
「也就是说仅仅伤到了龟吗。
　不可小视啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆反転
	OnSE("se戦闘_動作_空突進03",1000);

	Delete("プロセス１");
	Delete("プロセス２");

	CP_AziChange(500,-17,AxlDxl,false);
	Move("絵演村正*", 300, @560, @0, Axl2, false);
	Move("絵演バロウズ*", 300, @-260, @0, Axl2, false);
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Axl2, "cg/data/slide_01_01_0.png", true);

	Delete("絵演*");
	Delete("絵背景100");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景50", Smoothing);
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 150, 150, null, true);

	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@絵背景50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@0,@-200,null,true);

	EnLife_Count(0,722);
	EnTr_Count(0,357);
	Cockpit_AllFade2();


	CloudZoomVertex(0,0,@0,null,false);
	Move("絵背景50", 2000, @0, @100, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,1100,Dxl2,false);
	CP_SpeedChange(2000,398,AxlDxl,false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	OnSE("se特殊_コックピット_起動音02",1000);
	CP_LockOnMove("@絵狸",800,@0,@100,Dxl2,false);

	Fade("@絵狸", 500, 1000, null, true);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetFrequency("SE10", 1000, 1000, null);


	SetFwR("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0350a02">
《不过，看来已经让那得意忘形的混蛋清醒一
些了，还算不错吧。》


{	FwR("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0360a09">
《……确实。真是领教了。
　姑娘干得不错嘛。》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0370a02">
《这算什么。
　若要赢长枪只需近身搏击，常识罢了。》

//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0380a02">
《正因为有这项缺点，所以长枪才没有在武者
之间盛行吧？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　就像当武者在空中高速回旋时常以斩击为基本，而不
把重点放在刺突上。道理是一样的。
　点状攻击命中率低，长线进攻更容易击中。

　虽然长枪可以从远处直取进攻，但击中敌方的难度与
剑的刺突相同——不，武器长一寸便难一分。

　一旦挫败长枪的进攻，就能轻松近身反击。在极近距离
之内，长枪一无所长。
　接下来便是自己一味被袭了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0390a02">
《六次……算上刚才的进攻就是七次？　你
也算是了不起了，所有目标竟都没有落空。
　但是，看过六次之多，我早已了如指掌。》


{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0400a09">
《……》


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0410a02">
《只要躲开你的攻击，我的攻势就不会崩毁。
　就能斩了你这秃驴！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆突進
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetVolume("SE10", 1000, 700, null);
	SetFrequency("SE10", 1000, 1100, null);
	CP_SpeedChange(1500,485,Dxl2,false);
	CP_PowerChange(1500,530,Dxl2,false);

	EffectZoomadd(10000, 1000, 0, "cg/ef/ef003_汎用移動.jpg", false);

	Zoom("@絵背景50", 500, 1100, 1100, Dxl2, false);
	Shake("@絵狸", 1000000, 1, 1, 0, 0, 1000, null, false);
	Zoom("@絵狸", 500, 300, 300, Dxl2, true);

	SetVolume("SE10", 3000, 300, null);


	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0420a02">
《你做事<RUBY text="····">太糊涂了</RUBY>，和尚！
　谁让你给我时间习惯你的进攻，愚不可耐。》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0430b40">
《骄傲恶徒终将自取灭亡！
　喀哈哈哈——!!》


{	FwR("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0440a09">
《……哎呀，一点儿没错。
　无言回击。》

//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0450a09">
《但是，贫僧可不是装模作样才手下留情哦。
　只是，做些<RUBY text="····">热身活动</RUBY>罢了……》

{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0460a09">
《贫僧的确因为你的一击而清醒过来。
　差不多——轮到我上了吧。》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0470a02">
《什么……!?》


{	FwR("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0480a09">
《尾张贯流破门弟子、遊佐童心是也。
　剑胄乃同田贯正国。》

//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0490a09">
《我等长枪——看招!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆接近
	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	EffectZoomadd(10000, 1000, 0, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵背景50", 500, 1200, 1200, AxlDxl, false);
	Zoom("@絵狸", 500, 400, 400, AxlDxl, true);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0500b40">
《……？
　主君。》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0510b40">
《似有<RUBY text="··">何物</RUBY>贯通长枪。》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0520a02">
「什么？」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0530b40">
《像是筒。》


{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0540a02">
「……筒？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　这引起了我脑中的思考。

　筒。
　枪。
　
　……总觉得<RUBY text="·······">其中有某些联系</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/026vs0550b40">
《主君！　时机！》


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0560a02">
「呃！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆近距離
	CreateSE("SE01","se戦闘_動作_空突進08");
	MusicStart("SE01",0,1000,0,1000,null,false);

	EffectZoomadd(10000, 1000, 0, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵背景50", 500, 1200, 1200, AxlDxl, false);
	Zoom("@絵狸", 500, 600, 600, AxlDxl, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　烦恼先抛在脑后。
　现在必须集中注意力。

　不管再怎么习惯，但要看穿那长枪的枪头，需要精神
相当集中才行。
　心思分散是无法取胜的。

　而且对方绝对是高手中的高手。
　一旦被看穿，定会改变作战方法。

　即便如此……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0570a09">
《冲。》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0580a02">
《放马过来——》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);

//◆槍撃。まず直進
	CloudZoomDelete(200,false);

	CreateColorSP("絵色100", 17500, "BLACK");
	SL_centerin2(17500,@0, @0,1000);
	CreateSE("SE01","se戦闘_動作_空突進01");

	//CP_AllDelete();
	Cockpit_AllFade0();

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerinfade2(10);
	Wait(400);
	SetFwC("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　
//【童心】
<voice name="童心" class="童心" src="voice/mb02/026vs0590a09">
　　　　　　　《以一贯之。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景100", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	Request("絵背景100", Smoothing);
	Request("絵背景200", Smoothing);
	Zoom("絵背景100", 0, 3000, 3000, null, true);
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 3, 300, 200, false);

//おがみ：動作
	CreateSE("SE02","se戦闘_攻撃_刀振る03");
	CreateSE("SE03","se戦闘_動作_空突進03");
	CreateSE("SE04","se戦闘_攻撃_刀振る06");


	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Rotate("絵背景100", 1500, @0, @0, 3600, Dxl2,false);
	Fade("絵背景100", 0, 1000, null, true);

	DrawTransition("絵色100", 100, 1000, 0, 100, null, "cg/data/spiral_01_00_0.png", true);

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
//	Fade("絵背景200", 0, 1000, null, true);
	Zoom("絵背景300", 500, 1000, 1000, Dxl2, true);

	SetVolume("SE04", 1000, 0, null);
	Fade("絵背景200", 0, 1000, null, true);


//◆貫流刺突
//◆しなって螺旋を描きながら突き込む
	CreateTextureEXadd("絵st120", 22000, -655, -691, "cg/ef/ef044_火花c.png");
	Rotate("絵st120", 0, @0, @0, 35, null,true);
	CreateTextureEXadd("絵st130", 22000, -332, -323, "cg/ef/ef044_火花c.png");
	Rotate("絵st130", 0, @0, @0, 15, null,true);
	CreateTextureEXadd("絵st140", 22000, -666, -330, "cg/ef/ef044_火花c.png");
	Rotate("絵st140", 0, @0, @0, 90, null,true);

	SetFwR("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/026vs0600a02">
《——什么？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　那家伙的确<RUBY text="··">改变</RUBY>了作战方法。
　不折不扣的变化。回旋绞杀而来。

　而且，此番回旋非同小可。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆炸裂
//◆ずがーん
	CreateTextureEX("絵背景400", 17000, Center, Middle, "cg/ef/ef027_貫流刺突.jpg");
	Request("絵背景400", AddRender);

	CreateTextureEXadd("絵st150", 22000, 131, -668, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵st160", 22000, 250, -435, "cg/ef/ef044_火花c.png");
	Rotate("絵st160", 0, @0, @0, 120, null,true);
	CreateTextureEXadd("絵st170", 22000, -186, -576, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵st180", 22000, -2, -324, "cg/ef/ef044_火花c.png");
	Rotate("絵st180", 0, @0, @0, 160, null,true);
	Zoom("絵st*", 0, 500, 500, null, true);
	SetBlur("絵st*", true, 2, 400, 150, false);
	SetTone("絵st*", Sepia);

	CreateSE("SE01","se戦闘_破壊_爆発07");
	CreateColorEXadd("絵色100", 17500, "WHITE");

	CreateSE("SE01L","se戦闘_攻撃_殴打連撃02_L");
	MusicStart("SE01L",0,1000,0,1000,null,true);

	Fade("絵背景400", 500, 1000, null, false);
	Shake("絵背景400", 50000, 2, 3, 0, 0, 1000, null, false);
	Zoom("絵背景400", 1500, 4000, 4000, Axl3, false);

	Rotate("絵st110", 500, @0, @0, @+1800, Dxl1,false);
	Zoom("絵st110", 200, 1300, 1300, Dxl1, false);
	Fade("絵st110", 50, 1000, Dxl1, true);
	Zoom("絵st170", 25, 500, 500, null, false);
	Fade("絵st110", 200, 0, null, false);

	Rotate("絵st120", 500, @0, @0, @+4200, DxlAuto,false);
	Zoom("絵st120", 200, 1100, 1100, Dxl1, false);
	Fade("絵st120", 50, 1000, Dxl1, true);
	Zoom("絵st110", 25, 500, 500, null, false);
	Fade("絵st120", 200, 0, null, false);

	Rotate("絵st130", 500, @0, @0, @+3600, DxlAuto,false);
	Zoom("絵st130", 200, 1600, 1600, Dxl1, false);
	Fade("絵st130", 50, 1000, Dxl1, true);
	Zoom("絵st120", 25, 500, 500, null, false);
	Fade("絵st130", 200, 0, null, false);

	Rotate("絵st140", 500, @0, @0, @+7500, null,false);
	Zoom("絵st140", 200, 1100, 1100, Dxl1, false);
	Fade("絵st140", 50, 1000, Dxl1, true);
	Zoom("絵st130", 25, 500, 500, null, false);
	Fade("絵st140", 200, 0, null, false);

	Rotate("絵st150", 500, @0, @0, @+2500, DxlAuto,false);
	Zoom("絵st150", 200, 1400, 1400, Dxl1, false);
	Fade("絵st150", 50, 1000, Dxl1, true);
	Zoom("絵st140", 25, 500, 500, null, false);
	Fade("絵st150", 200, 0, null, false);

	Rotate("絵st160", 500, @0, @0, @+3500, Dxl2,false);
	Zoom("絵st160", 200, 1100, 1100, Dxl1, false);
	Fade("絵st160", 50, 1000, Dxl1, true);
	Zoom("絵st150", 25, 500, 500, null, false);
	Fade("絵st160", 200, 0, null, false);

	Rotate("絵st170", 500, @0, @0, @+3600, Dxl3,false);
	Zoom("絵st170", 200, 1300, 1300, Dxl1, false);
	Fade("絵st170", 50, 1000, Dxl1, true);
	Zoom("絵st160", 25, 500, 500, null, false);
	Fade("絵st170", 200, 0, null, false);

	Rotate("絵st130", 500, @0, @0, @+3000, Dxl1,false);
	Zoom("絵st130", 200, 1400, 1400, Dxl1, false);
	Fade("絵st130", 50, 1000, Dxl1, true);
	Zoom("絵st170", 25, 500, 500, null, false);
	Fade("絵st130", 200, 0, null, false);

	Rotate("絵st140", 500, @0, @0, @+7900, DxlAuto,false);
	Zoom("絵st140", 200, 1700, 1700, Dxl1, false);
	Fade("絵st140", 50, 1000, Dxl1, true);
	Zoom("絵st130", 25, 500, 500, null, false);
	Fade("絵st140", 200, 0, null, false);

	Rotate("絵st150", 500, @0, @0, @+1800, DxlAuto,false);
	Zoom("絵st150", 200, 1600, 1600, Dxl1, false);
	Fade("絵st150", 50, 750, Dxl1, true);
	Zoom("絵st140", 25, 500, 500, null, false);
	Fade("絵st150", 200, 0, null, false);



	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 500, 1000, null, true);


	Wait(2000);

	SetVolume("SE*", 3000, 0, null);
	ClearFadeAll(3000, true);

	//CP_AllDelete();
	Cockpit_AllFade0();

	CP_LockOnDelete();

	Wait(2000);



}

..//ジャンプ指定
//次ファイル　"mb02_027.nss"




function FlyMoving()
{

$t = $ループムーブタイム;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名", $t, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}

function FlyMoving2()
{

$t2 = $ループムーブタイム２;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名２", $t2, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}
