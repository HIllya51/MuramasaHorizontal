//<continuation number="600">

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

scene md05_016vs.nss_MAIN
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
	#bg106_富士山遠望b_00=true;
	#ev242_金神激しく発光_a=true;
	#bg202_旋回演出背景山_02=true;
	#ev242_金神激しく発光_d=true;
	#ev243_回避機動をとる村正_a=true;
	#ev243_回避機動をとる村正_c=true;
	#ev243_回避機動をとる村正_d=true;
	#ev243_回避機動をとる村正_e=true;
	#ev241_森で発光する金神_a=true;
	#bg023_弥源太の家_03a=true;
	#bg020_山脈坑道_01=true;
	#ev245_長坂仁王立ち_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "md05_017vs.nss";

}

scene md05_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_015.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆富士山上空
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵白転", 20000, "#FFFFFF");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg106_富士山遠望b_00.jpg");

	Delete("上背景");
	FadeDelete("絵白転", 1000, true);

//◆金神。重力波準備
	CreateTextureEX("絵演", 3000, Center, -30, "cg/ev/ev242_金神激しく発光_b.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　富士山上空——
　原来的世界。原来的时间！

{	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	Fade("絵演", 1000, 1000, null, false);}
　俯视而下，是金神。
　聚集的重力波动，正欲向我方击出。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0010a00">
「……是吗。
　回到原来的时空，就意味着将再度和那个
“神”进行战斗了吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0020a01">
《所以千万小心——》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SetVolume("SEL*", 100, 0, null);

//◆重力波ずぎょーん
//◆避けー。
	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/resize/ev243_回避機動をとる村正_bm.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/resize/ev243_回避機動をとる村正_bm.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　没有空闲沉浸在感慨中。
　转身攻击翼型装甲，在空中翻滚着从重力波迸发的
毁灭领域中逃脱。

　一丝松懈也不能有，只能尽力避免直接攻击。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0030a01">
《……我明明提醒过。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0040a00">
「是啊。但是……
　重力波造成了空间扭曲，和极度的时间扭曲。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0050a00">
「快弹尽粮绝了吧？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0060a01">
《不管什么粮不粮的，看他弹丸数的话，好像
还没用完！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間歪曲
//◆避け
//◆空間歪曲
//◆避け

//◆重力波
//◆避け
	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateTextureSPadd("絵演上", 10010, Center, Middle, "cg/ev/ev243_回避機動をとる村正_c.jpg");
	CreateTextureSP("絵演", 10000, Center, Middle, "cg/ev/ev243_回避機動をとる村正_c.jpg");
	Zoom("絵演", 0, 1100, 1100, Dxl2, false);
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Request("絵演*", Smoothing);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 30, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……确实。
“神”正以我们无法想象的力量，扭曲时空，释放破坏
一切的波动。

　完全没有耗尽的趋势。
　
　但——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,620);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,800,null,false);

	CP_SpeedChange(0,501,null,false);
	MyTr_Count(0,509);

	CP_HighChange(0,2731,null,false);
	CP_AziChange(0,0,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CloudZoomSet(1000);
	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");

	CloudZoomStart(400,800,800,300,400);
	MoveFFP1("@絵演航空背景",10000);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	FadeDelete("上背景", 500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0070a00">
「知道有多少了。
　似乎不能同时两发。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0080a00">
「而且，也无法连续行动。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0090a01">
《没错。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　使用能力必定是每次一种，若是再度使用，距离下次
发动便会有时间间隔。
　若只是限定范围的空间扭曲，短时间内也可能连击，
但重力波似乎就不行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0100a01">
《即使力量总和接近无限，
也不能无限制使用吧。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0110a00">
「真是意外的幸运。
　至少说，没有这种程度的条件，便无胜算。」
 
</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　而只需一个有利条件，制定作战方案便无困难。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間歪曲
//◆避け
	CreateSE("SE01","se特殊_その他_空間歪曲");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXadd("絵板写覆", 1010);
	CreatePlainEX("絵板写", 1000);
	Fade("絵板写*", 300, 500, null, false);
	Zoom("絵板写*", 300, 1500, 1500, Dxl2, false);
	Wait(200);
	DrawEffect("絵板写", 1000, "HighWave", 300, 300, Dxl2);
	FadeDelete("絵板写覆", 600, true);

	CreateSE("SE01a","se戦闘_動作_空突進02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);
	Delete("絵板写");
	CreateTextureSP("絵演回避空", 18000, Center, -340, "cg/ev/ev241_森で発光する金神_c.jpg");
	Request("絵演回避空", Smoothing);
	SetBlur("絵演回避空", true, 2, 500, 30, false);
	Shake("絵演回避空", 450, 0, 30, 0, 0, 1000, Dxl2, false);
	Move("絵演回避空", 450, 250, -620, Dxl2, false);
	Zoom("絵演回避空", 450, 1500, 1500, Dxl2, false);
	DrawDelete("絵色黒", 150, 1000, "slide_04_01_1", true);

	Wait(500);

//◆重力波
//◆避け
	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateTextureSPadd("絵演上", 20010, Center, Middle, "cg/ev/ev243_回避機動をとる村正_d.jpg");
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ev/ev243_回避機動をとる村正_d.jpg");
	Zoom("絵演", 0, 1100, 1100, Dxl2, false);
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Request("絵演*", Smoothing);

	Cockpit_AllFade0();
	MoveFFP1stop();
	CloudZoomDelete(0,false);

	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 30, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆突進、一撃
//◆神の声（低）
	CreateSE("SE03","se戦闘_動作_空突進01");
	MusicStart("SE03",0,1000,0,850,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	Delete("絵演*");

	CreateSE("SE03a","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE03b","se戦闘_衝撃_衝突01");
	CreateTextureSPadd("絵演上", 18010, -55, -190, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);

	MusicStart("SE03a",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1500,null,false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);
	Move("絵演*", 150, -615, @0, Dxl2, false);
	DrawDelete("絵色黒", 150, 1000, "zoom_01_00_1", true);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE03c","se特殊_その他_神の声02");
	MusicStart("SE03c",0,1000,0,1000,null,false);

//◆退避
	CreateSE("SE04","se戦闘_動作_空突進02");
	MusicStart("SE04",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 30000, "#FFFFFF");
	Delete("絵演*");

	CloudZoomSet(2000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@-1500,@0,null,false);

	CreateTextureSP("絵演立武者", 1000, -800, -150, "cg/st/3d村正最終_騎航_通常b2.png");
	Request("絵演立武者", Smoothing);
	Zoom("絵演立武者", 0, 750, 750, null, true);

	Move("絵演立武者", 800, -700, -245, Dxl2, false);
	Shake("絵演立武者", 2160000, -2, 4, 0, 0, 1000, null, false);

	CreateTextureSP("絵演背景", 100, InLeft, InBottom, "cg/bg/bg204_横旋回背景c_02.jpg");
	$横幅算出=ImageHorizon("絵演背景")-1100;
	$横幅組込値=$横幅算出*(-1);
	Move("絵演背景", 80000, $横幅組込値, @0, DxlAuto, false);

	CreateSE("SEL04a","se戦闘_動作_空走行01_L");
	CreateSE("SEL04b","se戦闘_動作_空走行02_L");
	MusicStart("SEL04a",2000,750,0,1000,null,true);
	MusicStart("SEL04b",2000,750,0,1500,null,true);

	FadeDelete("絵色白", 500, false);
	DrawTransition("絵色白", 1000, 1000, 0, 100, null, "cg/data/slide_07_00_1.png", false);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0120a01">
《在使用辰气激流之后，马上攻击目标？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0130a00">
「对。
　瞄准空隙一击过去，然后逃离。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL04*", 1000, 0, null);

	CreateSE("SE01L","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SE01L",1000,750,0,500,null,false);
	CreateTextureEX("絵演金神", 15000, Center, Middle, "cg/ev/ev242_金神激しく発光_a.jpg");
	Move("絵演金神", 6000, @0, -30, DxlAuto, false);
	Fade("絵演金神", 1000, 1000, null, true);

	Delete("絵演背景");
	Delete("絵演立武者");
	CloudZoomFade(0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　若我方动作稍有犹豫，就会被重力波的全方位放射
吹飞。
　虽是一言以蔽之的事，却绝非易事。

　但是，只要不松懈……

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆重力波
//◆避け
	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateTextureSPadd("絵演上", 20010, Center, -115, "cg/ev/resize/ev243_回避機動をとる村正_bl.jpg");
	CreateTextureSP("絵演", 20000, Center, -115, "cg/ev/resize/ev243_回避機動をとる村正_bl.jpg");
	SetBlur("絵演", true, 2, 500, 30, false);
	Zoom("絵演", 0, 1100, 1100, Dxl2, false);
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Request("絵演*", Smoothing);
	Delete("絵演金神");

	Rotate("絵演*", 200, @0, @0, @-20, Dxl2,false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 30, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(300);

//◆突進、重力増幅斬
	CreateSE("SE02","se戦闘_動作_空突進01");
	MusicStart("SE02",0,1000,0,850,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	Delete("絵演*");

	CreateSE("SE02a","se戦闘_村正_重力増幅斬撃");
	CreateTextureSPadd("絵演上", 18010, -770, -490, "cg/ev/resize/ev929_村正重力増幅斬l.jpg");
	CreateTextureSP("絵演", 18000, -770, -490, "cg/ev/resize/ev929_村正重力増幅斬l.jpg");
	SetVertex("絵演*", 1700, 760);
	Zoom("絵演上", 0, 1000, 5000, null, false);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Zoom("絵演上", 400, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 40, 0, 0, 1000, Dxl3, false);
	DrawDelete("絵色黒", 150, 1000, "zoom_01_00_1", true);
	FadeDelete("絵演上", 200, true);

	Wait(200);

//◆神の声（低）
//◆退避
	CreateSE("SE03","se戦闘_破壊_爆発05");
	MusicStart("SE03",0,1000,0,1500,null,false);
	CreateSE("SE03a","se特殊_その他_神の絶叫");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演金神覆", 18010, Center, InTop, "cg/ev/ev241_森で発光する金神_e.jpg");
	CreateTextureSP("絵演金神", 18000, Center, InTop, "cg/ev/ev241_森で発光する金神_e.jpg");
	SetVertex("絵演金神覆", 800, 170);
	Zoom("絵演金神覆", 1000, 1200, 1200, null, false);
	FadeDelete("絵演金神覆", 1000, true);
	Delete("絵演");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0140a01">
《……它着急了。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0150a00">
「不仅自己的攻击没奏效，
<RUBY text="····">连续不断</RUBY>来回刺也很厌烦吧。
　很好。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0160a00">
「当“神”愤怒不已，发动更为大规模的攻击之
时，就是我方制胜之机。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0170a01">
《攻击越猛，越容易产生大的空隙……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　没错。
　发动野太刀“虎彻”电磁拔刀的机会来了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0180a01">
《但这是打草惊蛇吧。》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0190a00">
「没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　即使最终可能被蛇咬而亡，我们也是愚者的范本。
希望是能流传后世以作警戒的程度。
　而且，走向末路的可能性绝对不低。

　是否能跨越现在这条岌岌可危的线呢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 19900);
	CreateColorSP("絵色黒", 15000, "#000000");
	DrawDelete("上背景", 150, 1000, "slide_01_03_1", false);

	Delete("絵演金*");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("絵演背景", 100, InRight, -900, "cg/bg/bg204_横旋回背景b_02.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正最終_騎航_戦闘.png");
	Zoom("絵演立絵", 0, 500, 500, null, true);
	Request("絵演立絵", Smoothing);

	Move("絵演立絵", 0, @316, @0, null, true);
	Shake("絵演立絵", 600000, 2, 0, 0, 0, 1000, null, false);

	Zoom("絵演立絵", 450, 750, 750, DxlAuto, false);
	Move("絵演立絵", 6000, @-60, @0, DxlAuto, false);
	Move("絵演背景", 600000, -100, @0, null, false);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("絵色黒", 150, 1000, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0200a00">
「那至少，为了不因自己的愚蠢而后悔，努力
吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0210a01">
《了解。
　后悔只是幸存者的奢望！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間歪曲
	CreateSE("SE01","se特殊_その他_空間歪曲");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXadd("絵板写覆", 2110);
	CreatePlainEX("絵板写", 2100);
	Fade("絵板写*", 0, 500, null, false);
	DrawTransition("絵板写*", 300, 0, 1000, 100, DxlAuto, "cg/data/spiral_01_00_0.png", false);
	Zoom("絵板写*", 300, 1500, 1500, Dxl2, false);
	Wait(200);
	DrawEffect("絵板写", 1000, "HighWave", 300, 300, Dxl2);
	FadeDelete("絵板写覆", 600, true);

//◆避け
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演立絵", 2000, @-100, @0, null, false);
	Wait(1200);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色白", 500, 0, null, false);
	DrawDelete("絵色白", 500, 1000, "slide_05_00_1", false);
	Move("絵演立絵", 300, @-2000, @0, Dxl3, true);
	Wait(200);

//◆重力波（小）
//◆避け
	CreateSE("SE02","se戦闘_神_グラビティブラスト小_発射");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 10010, Center, Middle, "cg/ev/ev243_回避機動をとる村正_e.jpg");
	CreateTextureSP("絵演", 10000, Center, Middle, "cg/ev/ev243_回避機動をとる村正_e.jpg");
	Zoom("絵演", 0, 1100, 1100, Dxl2, false);
	Request("絵演*", Smoothing);
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 500, true);

	Delete("絵演立絵");
	Delete("絵演背景");
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　从令人毛骨悚然的重力波涛中逃脱，
　直逼而去！

　就这样，用力地重复着一击又一击——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0220a01">
《……咦？　……刚才。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突進
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, -590, -140, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -590, -140, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);
	Wait(200);

//◆増幅斬、準備
	CreateSE("SE02","se特殊_鎧_エネルギー充電01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, -312, -240, "cg/ev/resize/ev905_村正電磁撃刀_cm.jpg");
	CreateTextureSP("絵演", 3000, -312, -240, "cg/ev/resize/ev905_村正電磁撃刀_cm.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);
	Wait(200);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0230a01">
《主君，等等！
　不可！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0240a01">
《有什么奇怪的感觉，或许是陷阱——》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0250a00">
「嗯?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　陷阱？
　这个，连像样的思考装置都不具备的“神”——？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆重力波（小）準備
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,1000,0,1500,null,true);
	CreateTextureSPadd("絵演上", 10010, Center, -30, "cg/ev/ev242_金神激しく発光_b.jpg");
	CreateTextureSP("絵演", 10000, Center, -30, "cg/ev/ev242_金神激しく発光_b.jpg");
	SetVertex("絵演*", center, 220);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 2000, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 2000, false);
	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　重力波……连发?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0260a01">
《避开，主君！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0270a00">
「唔——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　为何，这么突然！

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 300, 0, null);

	CreateSE("SE01L","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SE01L",0,750,0,500,null,true);

//◆発射
	CreateSE("SE01","se戦闘_神_グラビティブラスト小_発射");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 10010, Center, -30, "cg/ev/ev242_金神激しく発光_d.jpg");
	CreateTextureSP("絵演", 10000, Center, -30, "cg/ev/ev242_金神激しく発光_d.jpg");
	SetBlur("絵演", true, 2, 500, 60, false);
	Request("絵演", Smoothing);
	Zoom("絵演", 0, 1100, 1100, Dxl2, false);

	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 500, true);

	Wait(200);

//◆避けー。
	CreateSE("SE02","se戦闘_動作_空突進01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 10010, -580, Middle, "cg/ev/resize/ev243_回避機動をとる村正_al.jpg");
	CreateTextureSP("絵演", 10000, -580, Middle, "cg/ev/resize/ev243_回避機動をとる村正_al.jpg");

	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Move("絵演*", 800, -420, @0, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 500, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0280a00">
「……至今为止是手下留情了，
你是想这么说吗！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0290a01">
《不对！
　它是抑制一发的威力，
为了能进行连射!!》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0300a00">
「抑制威力——？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……这样啊。转念一想便点头认可。
　之前的两发比以前的重力波规模要小。

　但是，这样的小阴谋是从哪里……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0310a01">
《还在继续！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆重力波（小）
	CreateSE("SE01","se戦闘_神_グラビティブラスト小_発射");
	MusicStart("SE01",0,1000,0,1200,null,false);

//◆避け
	CreateSE("SE01a","se戦闘_動作_空突進02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 10010, -180, Middle, "cg/ev/resize/ev243_回避機動をとる村正_cm.jpg");
	CreateTextureSP("絵演", 10000, -180, Middle, "cg/ev/resize/ev243_回避機動をとる村正_cm.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	SetBlur("絵演", true, 2, 500, 30, false);
	Move("絵演*", 300, -256, @0, Dxl2, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 300, true);

//◆重力波（小）
	CreateSE("SE02","se戦闘_神_グラビティブラスト小_発射");
	MusicStart("SE02",0,1000,0,800,null,false);

//◆避け
	CreateSE("SE02a","se戦闘_動作_空突進02");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演二上", 10110, -10, Middle, "cg/ev/resize/ev243_回避機動をとる村正_dm.jpg");
	CreateTextureSP("絵演二", 10100, -10, Middle, "cg/ev/resize/ev243_回避機動をとる村正_dm.jpg");
	Zoom("絵演二上", 0, 1200, 1200, null, false);
	SetBlur("絵演二", true, 2, 500, 30, false);
	Move("絵演二*", 300, -256, @0, Dxl2, false);
	Zoom("絵演二上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演二上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演二上", 300, true);

//◆重力波（小）
	CreateSE("SE03","se戦闘_神_グラビティブラスト小_発射");
	MusicStart("SE03",0,1000,0,1000,null,false);

//◆避け
	CreateSE("SE03a","se戦闘_動作_空突進02");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演三上", 10210, -490, Middle, "cg/ev/resize/ev243_回避機動をとる村正_em.jpg");
	CreateTextureSP("絵演三", 10200, -490, Middle, "cg/ev/resize/ev243_回避機動をとる村正_em.jpg");
	Zoom("絵演三上", 0, 1200, 1200, null, false);
	SetBlur("絵演三", true, 2, 500, 30, false);
	Move("絵演三*", 300, -256, @0, Dxl2, false);
	Zoom("絵演三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演三上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演三上", 300, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0320a00">
「——先撤退！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　那么无论如何，也无法踏入近距离攻击的范围。
　防御的一方，只能等待机动力极限的到来，
被击落致死。

　一旦退下，需要再次摆好战斗姿态。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0330a01">
《了解——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆後退
	PrintGO("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵暗転", 20000, "#000000");
	DrawDelete("上背景", 150, 100, "zoom_01_00_1", true);

	Cockpit_AllFade2();

	MyLife_Count(0,620);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,720,null,false);

	CP_SpeedChange(0,612,null,false);
	MyTr_Count(0,504);

	CP_HighChange(0,2749,null,false);
	CP_AziChange(0,92,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateTextureSP("絵演航空背景", 510, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateSurfaceEX("絵効果サフ", 500,1000,"@絵演航空背景");
	Fade("絵効果サフ", 0, 1000, null, true);

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);

	MoveFFP1("@絵演航空背景",10000);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	DrawDelete("絵暗転", 150, 100, "zoom_01_00_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0340a01">
《——痛——》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0350a01">
《不行！
　后方————》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0360a00">
「……唔?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間ぶれ
	CreateSE("SE01","se特殊_その他_空間歪曲");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXsub("絵板写覆", 2110);
	CreatePlainEXsub("絵板写", 2100);
	Fade("絵板写*", 0, 700, null, false);
	DrawTransition("絵板写", 300, 0, 600, 100, DxlAuto, "cg/data/circle_02_00_0.png", false);
	DrawTransition("絵板写覆", 300, 0, 600, 100, DxlAuto, "cg/data/circle_02_00_0.png", false);
	Zoom("絵板写*", 300, 1500, 1500, Dxl2, false);
	Wait(200);
	DrawEffect("絵板写", 1000, "SuperWave", 300, 300, Dxl2);
	FadeDelete("絵板写覆", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　空间扭曲！
　
　——我们的，<RUBY text="····">退避之处</RUBY>！

　偶然吗?!
　还是说，并非如此？

　布好陷阱，诱导进入其中吗?!
　那个“神”……

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆離脱
	MoveFFP1stop();

	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 3000, 500, null, false);

	SetVolume("SEL*", 1000, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_AltChange(5000,45,null,false);
	Move("絵演航空背景", 5000, @-200, @0, null, false);

	CP_SpeedChange(300,633,null,false);
	MyTr_Count(300,542);
	Zoom("絵効果サフ", 300, 2000, 2000, Dxl2, false);

	CP_AziChange(6000,0,null,false);
	CP_RollBarMove2(1500,60,null,false);
	Rotate("絵効果サフ", 1500, @0, @0, @-45, null,true);

//◆歪曲炸裂
	CreateSE("SE02","se戦闘_破壊_建物02");
	CreateSE("SE02a","se戦闘_衝撃_攻撃交錯02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,500,null,false);
	CreateColorSPadd("絵色白", 19900, "#FFFFFF");
	Delete("絵板*");
	Delete("絵効果*");
	Delete("絵演航空背景*");

	Cockpit_AllFade0();
	CloudZoomDelete(0,false);
	MoveFFP1stop();

	CreateTextureSP("絵演背景", 100, Center, -30, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Shake("絵演背景", 4000, 0, 30, 0, 0, 1000, null, false);

	Wait(100);

	FadeDelete("絵色白", 3000, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0370a00">
「切……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　危险。
　幸好只是右脚装甲轻微受伤的程度。<k>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01L","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SE01L",1000,750,0,500,null,false);
	CreateTextureEX("絵演金神", 10000, Center, -120, "cg/ev/ev242_金神激しく発光_a.jpg");
	Move("絵演金神", 6000, @0, -30, DxlAuto, false);
	Fade("絵演金神", 1000, 1000, null, true);

	Wait(2000);

//◆重力波（小）準備
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,1000,0,1500,null,true);
	CreateTextureSPadd("絵演上", 10010, Center, -30, "cg/ev/ev242_金神激しく発光_b.jpg");
	CreateTextureSP("絵演", 10000, Center, -30, "cg/ev/ev242_金神激しく発光_b.jpg");
	SetVertex("絵演*", center, 220);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 2000, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 2000, false);
	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　————还有一波!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0380a01">
《主君！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0390a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Zoom("絵演", 50000, 2000, 2000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　机动力极限。
　无法回避。

　被逼至无限天空的一角。

　将一切完结的，
　终结的力量在迫近。

　来了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 600, 0, null);

//◆村正、エネルギー急上昇
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("絵演");
	Delete("絵演金神");

	CreateColorEXadd("絵色電磁覇気", 2000, "#333399");
	CreateColorEXadd("絵色電磁覇気二", 2010, "#FFFFFF");

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	CreateTextureEXadd("絵演武者覆", 1010, Center, Middle, "cg/st/3d村正最終_騎航_通常b.png");
	CreateTextureSP("絵演武者", 1000, Center, Middle, "cg/st/3d村正最終_騎航_通常b.png");
	Rotate("絵演武*", 0, @0, @0, @10, null,true);
	Zoom("絵演背景", 0, 2000, 2000, null, true);
	SetBlur("絵演背景", true, 2, 500, 60, false);
	SetBlur("絵演武*", true, 2, 500, 60, false);

	Request("絵演背景", Smoothing);
	Request("絵演武*", Smoothing);

	CreateSE("SE01","se戦闘_動作_空急降下01");
	MusicStart("SE01",0,1000,0,500,null,false);
	DrawDelete("絵色黒", 150, 1000, "slide_01_03_0", true);

	Wait(300);

	Fade("絵演武者覆", 2000, 500, null, false);
	Zoom("絵演背景", 30000, 1000, 1000, Dxl2, false);
	Zoom("絵演武*", 30000, 500, 500, Dxl2, false);

	Wait(2000);

	CreateSE("SE01a","se特殊_電撃_放電02");
	MusicStart("SE01a",0,1000,0,750,null,false);
	CreateSE("SE01b","se特殊_その他_噴き上がる光の柱");
	MusicStart("SE01b",0,1000,0,1500,null,false);
	CreateSEEX("SE01L","se戦闘_攻撃_エネルギー鬩ぎ合い01_L");
	MusicStart("SE01L",0,1000,0,500,null,true);

	Fade("絵色電磁覇気", 0, 1000, null, true);
	Fade("絵色電磁覇気二", 0, 300, null, true);
	DrawTransition("絵色電磁覇気二", 300, 0, 200, 600, null, "cg/data/circle_02_00_0.png", false);
	DrawTransition("絵色電磁覇気", 300, 0, 400, 600, Dxl2, "cg/data/circle_01_00_0.png", false);
	Zoom("絵演背景", 300, 1000, 1000, Dxl2, false);
	Zoom("絵演武*", 300, 100, 100, Dxl2, true);

	CreatePlainEX("絵板写", 18000);
	Zoom("絵板写", 0, 1100, 1100, null, true);
	Fade("絵板写", 0, 500, null, true);
	MoveFFP1("@絵板写",1000);

	SetFwL("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0400a00">
「唔啊!!」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//――――――――――――――――――――――――

//◆神、重力波（小）発射
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1700,null,false);
	CreateTextureSPadd("絵演上", 20010, Center, -30, "cg/ev/ev242_金神激しく発光_c.jpg");
	CreateTextureSP("絵演", 20000, Center, -30, "cg/ev/ev242_金神激しく発光_c.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Delete("絵色*");
	Delete("絵演背景*");
	Delete("絵演武*");
	Delete("絵板*");

//◆重力増幅斬
	CreateSE("SE02","se戦闘_村正_重力増幅斬撃");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateSE("SE02a","se戦闘_村正_重力増幅斬撃");
	MusicStart("SE02a",0,1000,0,500,null,false);
	CreateTextureSPadd("絵演村上", 21010, Center, Middle, "cg/ev/ev929_村正重力増幅斬.jpg");
	CreateTextureEX("絵演村", 21000, Center, Middle, "cg/ev/ev929_村正重力増幅斬.jpg");
	Fade("絵演村", 0, 500, null, true);
	Zoom("絵演村上", 0, 1200, 1200, null, false);
	Zoom("絵演村上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演村", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演村上", 200, true);

	Wait(300);

//◆相殺
	CreateSE("SE03","se特殊_陰義_グラビティアクセル準備");
	MusicStart("SE03",0,1000,0,800,null,false);
	SetVolume("SE03", 3000, 0, null);

	CreateSE("SE03a","se戦闘_破壊_鎧02");
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreatePlainSP("絵板写", 30000);

	CreateColorSPadd("絵色白", 22000, "#FFFFFF");
	CreateTextureSP("絵演相殺", 20000, Center, Middle, "cg/ef/ef039_時間移動.jpg");
	CreateTextureSPadd("絵演相殺二", 20010, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSPadd("絵演相殺三", 20020, Center, Middle, "cg/ef/ef045_スパーク.jpg");

	CreatePlainSPadd("絵板相殺効果覆", 21110);
	CreatePlainSP("絵板相殺効果", 21100);

	Delete("絵演相殺");
	Delete("絵演相殺二");
	Delete("絵演相殺三");

	Delete("絵演");
	Delete("絵演村");
	Delete("絵演村上");
	Delete("絵板写");

	Cockpit_AllFade2();

	MyLife_Count(0,481);
	CP_IHPChange(0,8,null,false);
	CP_PowerChange(0,660,null,false);

	CP_SpeedChange(0,468,null,false);
	MyTr_Count(0,408);

	CP_HighChange(0,2717,null,false);
	CP_AziChange(0,350,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵演航空背景");
	Fade("絵効果サフ", 0, 1000, null, true);

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",5000,750,0,1000,null,true);
	MusicStart("SEL01b",5000,750,0,1500,null,true);

	MoveFFP1("@絵演航空背景",10000);

	FadeDelete("絵色白", 300, false);
	Zoom("絵板相殺効果覆", 2000, 2000, 2000, Dxl2, false);
	FadeDelete("絵板相殺効果覆", 1000, false);
	Wait(500);
	FadeDelete("絵板相殺効果", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……灵光一现，或许是被大量的幸运眷顾，我获得
了成功。
　施展了重力增幅的野太刀刀光一闪，挥开涌上前来的
重力波动——

　因寸毫之差便会悲惨扑空，但这差距并未出现。
  明明都没时间精确瞄准，不得不说是奇迹。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0410a01">
《……就像要创立新宗教一样的心情。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0420a00">
「之后再说。你要创建几个都支持你。
　但在那之前……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0430a00">
「——怎么回事？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0440a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　没有预料中的迅速回答。
　村正不是万能的。我也同样。直面不合理的事态，
哑口无言也是理所当然。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL01*", 1000, 0, null);

//◆金神
	CreateSE("SE01","se特殊_その他_神のオーラ");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateSE("SE01L","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SE01L",2000,750,0,500,null,true);
	CreateTextureEX("絵演", 19000, Center, Middle, "cg/ev/ev237_空に昇った金神_a.jpg");
	Fade("絵演", 1000, 1000, null, true);

	CloudZoomDelete(0,false);
	Cockpit_AllFade0();
	MoveFFP1stop();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　……外观似乎没有变化。

　那个“神”的行动，和当初所谓的智慧相距甚远。
  玩弄玩具的孩子，当初如此评价也无妨。

　但是。
　现在，“神”所采取的行动——

　将破坏力大到无意义的重力波聚集，从单发变成需要
一定威力的连射。<K>
　若我撤退，退避处便会发生空间扭曲。<K>
　并且，会遭受必杀的一发重力波。

　说是偶然，也太过不可思议。

　那是战术性的行动。
　无论如何回味考察过去数秒间发生之事，
也无法说明不是像<RUBY text="··">人类</RUBY>一样的思考。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0450a00">
「为何，突然变化了……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0460a01">
《这个疑问，我只想到一个合适的回答，你要
听吗？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0470a00">
「虽然有微妙的不好预感，说吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0480a01">
《因为是神。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0490a00">
「虽能理解但不是解决办法！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0500a01">
《是啊……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 1500, 1000, null, true);

	CreateSE("SE01","se特殊_その他_神の声01");
	MusicStart("SE01",0,1000,0,500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
“——哼。
　可没有如此深奥的谜团啊。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	CreateTextureSP("絵演", 10000, Center, -30, "cg/ev/ev242_金神激しく発光_a.jpg");
	FadeDelete("絵色黒", 1500, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0510a01">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0520a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0530a01">
《刚才，听到了什么？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0540a00">
「比起听到了什么。
　是感觉到了……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　无声之声。
　刚才的……是思想？

　由金神传达而来的——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 1500, 1000, null, true);

	CreateSE("SE01","se特殊_その他_神の声01");
	MusicStart("SE01",0,1000,0,500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
“此神虽低能，但不可思议，它似乎领悟了</RUBY>
<RUBY text="······">无法顺利进展</RUBY>的理由就是因为自己的低能。
　寻求着替补……它觉得，曾经混乱的
<RUBY text="我">漂浮物</RUBY>，具有那样的素质。”

“向其吹入气息，使之活性化。
　……使其身回归黄泉，占据其头脑！”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("絵色黒", 1500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0550a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　我记得。
　记住无色无形的思维当真奇怪，
但事实上，这意识的波浪在刺激着我的记忆。

　……我知道。
　我知道思想的主人。曾经相遇过。

　在何处——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01L", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

//◆回想·第二話の村
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/bg/bg023_弥源太の家_03a.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

//◆フェードアウト
	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 1500, 1000, null, true);

	CreateSE("SE01","se特殊_その他_神の声01");
	MusicStart("SE01",0,1000,0,500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
“切……
　这讨厌形态发出的声音也是懒散至极。”

“变换姿势咯。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆金神、発光
//◆変形音
	CreateSE("SE01","se特殊_その他_神のオーラ");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 19990, "#FFFFFF");
	Fade("絵色白", 1000, 1000, Axl2, true);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Delete("絵色黒");
	Delete("絵演");

	Wait(500);

	CreateSE("SE01a","se特殊_その他_神再生");
	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,500,null,false);

	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　若地震与落雷一齐迸发，那自然会响起轰鸣，
“神”的身体发生变化。
　如同水晶之森般的外形，向着完全不同的构造演变。

　有头。
　有手。
　有脚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/016vs0560a01">
《人类？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0570a00">
「……不对。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　有装甲。
　有翼型装甲。
　有佩刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0580a00">
「龙骑兵。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　那是位武者。

　确实是印象中的姿态。

　是<RUBY text="····">那个男人</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·長坂右京
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想立絵", 16100, Center, InBottom, "cg/ev/ev958_長坂馬乗り.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

//◆戻り

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/md05/016vs0590a00">
「长坂右京!!」

{	NwC("cg/fw/nwその他.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/016vs0600b45">
《哈！　总算发觉了吗……
　染血的臭小子!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どがーん。
//◆巨大な八八式竜騎兵（長坂仕様）
//◆顔は長坂の素顔にする？　２Ｄ加工で。
	CreateTextureEX("絵ＥＶ", 19900, Center, InBottom, "cg/ev/ev245_長坂仁王立ち_a.jpg");
	Fade("絵ＥＶ", 1500, 1000, null, false);
	Move("絵ＥＶ", 3750, @0, -310, DxlAuto, true);

	Wait(1000);

	CreateSE("SE01","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreatePlainEXadd("絵板写", 19990);
	SetVertex("絵板写", center, bottom);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 1000, 1100, 1100, Dxl3, false);

	Wait(800);

	FadeDelete("絵板写", 300, true);
	WaitPlay("SE01", null);

//◆ここで一回シーン切ってＢＧＭ変えるか。

	ClearWaitAll(1000, 3000);

}

..//ジャンプ指定
//次ファイル　"md05_017vs.nss"