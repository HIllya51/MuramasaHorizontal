
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_010vsb.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_010vsb.nss","TimeAction",true);
	Conquest("nss/md05_010vsb.nss","TimeSet1",true);
	

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
	#bg204_横旋回背景_02=true;
	#bg202_旋回演出背景山_02=true;
	#ev104_鈴川と真改_d=true;
	#ev112_一条をお姫様だっこする村正=true;
	#ev123_大剣を持つガーゲット少佐=true;
	#ev165_最終正宗_c=true;
	#ev207_最後の術技を放つ村正_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_011.nss";

}

scene md05_010vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_010vs.nss"

//●離脱
	SoundPlay("@mbgm08",0,1000,true);
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景", 100, Center, -700, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　就算那个“神”的力量已经强大至极，空间扭曲
的效果范围也该是有限的才对。
　倘若这推测有误，最初的一击就应该无法逃开。

　因此，最切实的对策果然还是逃离。
　只要再快一点——再逃远一点！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆逃げ
//◆神を見下ろす。かなり離れた。
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("絵板写", 1000);
	Zoom("絵板写", 300, 2000, 2000, Dxl2, false);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, Axl2, "cg/data/zoom_01_00_0.png", true);

	Delete("絵背景");
	Delete("絵板写");

	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,500,0,500,null,false);

	CreateTextureSP("絵演", 4000, Center, -260, "cg/ev/resize/ev242_金神激しく発光_al.jpg");
	SetVertex("絵演", center, 440);
	Zoom("絵演", 0, 500, 500, null, true);
	Request("絵演", Smoothing);

	DrawDelete("絵色黒", 150, 100, "zoom_01_00_1", true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1010a00">
「没有追来……吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1020a01">
《……唔……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1030a01">
《似乎距离远了就无法使用。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1040a00">
「可能吧。
　但是……不好对付啊。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1050a00">
「不能贸然靠近。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1060a01">
《看不到效果范围的话很麻烦啊。
　虽然启动探査功能的话，
或许可以掌握对方的情报，
但是现在并没有那种余裕。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1070a01">
《然后……还有一件事。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1080a00">
「是什么？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1090a01">
《它的机能，或许也能用于自身的防御。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1100a00">
「…………
　偏转敌人的攻击——或者用空间歪曲
将自身瞬移？」

//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1110a00">
「……对它来说未必不可能。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　如果它采取那种超出天地法则的防御措施，
电磁拔刀几乎没有胜算。
　而且，也没有足够用于<RUBY text="··">试击</RUBY>的热量。

　野太刀的电磁拔刀恐怕只能用一次。
　要得到第二次的机会就很难了吧。此外，
也并未想到能给予那个“神”致命一击的攻击方法。

　即是说……
　应在设想以空间扭曲进行防御并考虑到
其失效的基础上，行使决战力。

　就结论而言理应如此。

　如此，然而……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆画面ズームイン
//◆ノーワイプで拡大
	SetVolume("SEL*", 0, 525, null);
	Zoom("絵演", 0, 525, 525, null, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1120a00">
「……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1130a01">
《什么？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1140a00">
「…………？
　哎呀。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　刚才……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ノーワイプで拡大
	SetVolume("SEL*", 0, 650, null);
	Zoom("絵演", 0, 650, 650, null, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1150a01">
《呃？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1160a00">
「啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ノーワイプで拡大
//◆ノーワイプで拡大
//◆ノーワイプで拡大
	SetVolume("SEL*", 0, 750, null);
	Zoom("絵演", 0, 750, 750, null, true);
	Wait(200);
	SetVolume("SEL*", 0, 850, null);
	Zoom("絵演", 0, 850, 850, null, true);
	Wait(200);
	SetVolume("SEL*", 0, 950, null);
	Zoom("絵演", 0, 950, 950, null, true);
	Wait(200);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1170a00">
「……什么?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　明明已经拉开了距离——
　为什么，<RUBY text="···">轻易地</RUBY>就靠近了?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1180a01">
《是空间扭曲！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1190a01">
《那边与这边之间的空间，
从彼端开始被压缩了！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1200a00">
「……太不讲道理了吧!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我不禁吼出了不会有人理睬的抗议。

　总之，先逃离——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ノーワイプで拡大
	SetVolume("SEL*", 0, 1000, null);
	Zoom("絵演", 0, 1200, 1200, null, true);

	Wait(32);

//◆神、重力波準備
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureSPadd("絵演上", 4110, Center, -260, "cg/ev/resize/ev242_金神激しく発光_bl.jpg");
	CreateTextureSP("絵演", 4100, Center, -260, "cg/ev/resize/ev242_金神激しく発光_bl.jpg");
	SetVertex("絵演", center, 440);
	Request("絵演", Smoothing);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 2000, false);
	Wait(200);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1210a01">
《主君!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1220a00">
「这情况一看就明白!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　躲避，躲避躲避躲避————

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 100, 0, null);

//◆避け
//◆かなりギリギリな感じでズバーっと。
	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 4110, Center, Middle, "cg/ev/resize/ev243_回避機動をとる村正_bm.jpg");
	CreateTextureSP("絵演", 4100, Center, Middle, "cg/ev/resize/ev243_回避機動をとる村正_bm.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1230a01">
《呵，毫厘之差……！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1240a00">
「……呼。
　那个金神，根本没什么智力可言，
只是技能高超而已！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　它只不过是受到想要接近猎物的本能驱动。
恐怕就是如此。
　然而达到目的的手段完全不合常理。

　倘若它身上有手脚存在，大概首选
的就是那些……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1250a01">
《总之现在只好先四处游走躲避。
　重力波也好空间扭曲也罢，都是以将我们认作
目标为前提来使用，这一点已经毋庸置疑，首先
要保证所在位置不被掌握。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1260a00">
「我同意。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　问题在于，这只能拖延一时，完全不是
解决之道。
　现在无论如何都无计可施。

　研究攻略方法需要时间。
　总之先动起来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆騎航
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正最終_騎航_通常b.png");
	Move("絵演立絵", 0, @316, @0, null, true);
	Shake("絵演立絵", 600000, 2, 0, 0, 0, 1000, null, false);

	CreatePlainEX("絵板写", 999);

	Move("絵演立絵", 6000, @-60, @0, DxlAuto, false);
	Move("絵演背景", 600000, -100, @0, null, false);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

//◆空間のぶれ
	CreateSE("SE02","se特殊_雰囲気_発光04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	DrawEffect("絵板写", 200, "LowWave", 0, 200, Axl2);
	Fade("絵板写", 200, 500, Axl2, false);
	Fade("絵色白", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("絵板写", 3000, false);
	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1270a01">
《啊，居然还有！》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1280a00">
「对方的力量似乎无穷无尽啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　走为上计！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	CreateSE("SE01","se特殊_鎧_駆動音02");
	CreateSE("SE01b","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵演立絵", 2000, @-60, @0, null, false);

	Wait(1000);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);

	Fade("絵色白", 150, 0, Axl1, false);
	DrawTransition("絵色白", 150, 1000, 0, 100, null, "cg/data/slide_05_00_1.png", false);
	Move("絵演立絵", 150, @-2000, @0, Axl2, true);

//◆騎航
//◆ぶれ、変わらず
	CreateSE("SE02","se特殊_雰囲気_発光04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 19000, "#FFFFFF");

	Delete("絵演立絵*");
	Delete("絵演背景*");
	Delete("絵板写*");

	CreateTextureEX("絵震用背景", 110, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	Fade("絵震用背景", 200, 500, null, false);
	DrawEffect("絵震用背景", 200, "LowWave", 0, 200, Axl2);
	Fade("絵震用背景", 200, 500, null, false);
	Fade("絵色白", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1290a00">
「……唔嗯?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　逃不掉?!

　竟然，是蔓延至更广范围的空间扭曲？
　它连这种事也做得到吗。

　这样的话，就只能——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1300a01">
《……不对！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1310a00">
「什么？
　那么，这次又是什么！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1320a01">
《这是……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1330a01">
《一定——是时间！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1340a00">
「时……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　时间?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆多重空間
	CreateSE("SE02","se特殊_雰囲気_発光04");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 19000, "#FFFFFF");

	Delete("絵演立絵*");
	Delete("絵演背景*");
	Delete("絵板写*");
	Delete("絵震用背景");

	CreateMask("面一", 3000, Center, Middle, "cg/data/zoom_01_00_0.png", false);
	SetAlias("面一","面一");
	CreateTextureEXadd("面一/絵演一", 3010, Center, Middle, "cg/ev/ev104_鈴川と真改_d.jpg");

	CreateMask("面二", 3000, Center, Middle, "cg/data/zoom_01_00_1.png", false);
	SetAlias("面二","面二");
	CreateTextureEXadd("面二/絵演二", 3010, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");

	CreateMask("面三", 3000, Center, Middle, "cg/data/effect_01_00_0.png", false);
	SetAlias("面三","面三");
	CreateTextureEXadd("面三/絵演三", 3010, Center, Middle, "cg/ev/ev123_大剣を持つガーゲット少佐.jpg");

	CreateMask("面四", 3000, Center, Middle, "cg/data/circle_06_00_0.png", false);
	SetAlias("面四","面四");
	CreateTextureEXadd("面四/絵演四", 3010, Center, Middle, "cg/ev/ev133_兜割に挑む光_c.jpg");

	CreateMask("面五", 3000, Center, Middle, "cg/data/circle_07_00_0.png", false);
	SetAlias("面五","面五");
	CreateTextureEXadd("面五/絵演五", 3010, Center, Middle, "cg/ev/ev165_最終正宗_c.jpg");

	CreateMask("面六", 3000, Center, Middle, "cg/data/circle_12_00_0.png", false);
	SetAlias("面六","面六");
	CreateTextureEXadd("面六/絵演六", 3010, Center, Middle, "cg/ev/ev207_最後の術技を放つ村正_a.jpg");

	TimeAction();

	Wait(300);

	FadeDelete("絵色白", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　空间在重叠。

　自己的视野中浮现出自己的身影。
　过去——未来——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1350a01">
《时间扭曲……》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1360a00">
「会怎样?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1370a01">
《抱歉我不知道！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1380a01">
《虽然不知道，这多半——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆時間歪曲
//◆なんかすっ飛ばされる。ばひゅーん。
	CreateSE("SE01","se特殊_雰囲気_発光04");
	MusicStart("SE01",0,1000,0,500,null,false);

	CreateColorEX("絵色白", 20000, "#FFFFFF");

	SetFrequency("SE01", 2000, 2000, AxlAuto);
	Fade("絵色白", 2000, 850, null, true);

	Wait(2000);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md05_011.nss"

.//プロセス用======================================================

..//多重空間
function TimeAction()
{
	CreateProcess("プロセス多重空間一", 5000, 0, 0, "TimeSet1");
	Request("プロセス多重空間一", Start);
	Request("プロセス多重空間*", Disused);
}

function TimeSet1()
{
	begin:
	while(1)
	{
	Zoom("@面一/絵演一", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面一/絵演一", 3000, 1100, 1100, null, false);
	DrawTransition("@面一/絵演一", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面一/絵演一", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面一/絵演一", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面一/絵演一", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面一/絵演一", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@面二/絵演二", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面二/絵演二", 3000, 1100, 1100, null, false);
	DrawTransition("@面二/絵演二", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面二/絵演二", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面二/絵演二", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面二/絵演二", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面二/絵演二", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@面三/絵演三", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面三/絵演三", 3000, 1100, 1100, null, false);
	DrawTransition("@面三/絵演三", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面三/絵演三", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面三/絵演三", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面三/絵演三", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面三/絵演三", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@面四/絵演四", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面四/絵演四", 3000, 1100, 1100, null, false);
	DrawTransition("@面四/絵演四", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面四/絵演四", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面四/絵演四", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面四/絵演四", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面四/絵演四", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@面五/絵演五", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面五/絵演五", 3000, 1100, 1100, null, false);
	DrawTransition("@面五/絵演五", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面五/絵演五", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面五/絵演五", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面五/絵演五", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面五/絵演五", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@面六/絵演六", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面六/絵演六", 3000, 1100, 1100, null, false);
	DrawTransition("@面六/絵演六", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面六/絵演六", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面六/絵演六", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面六/絵演六", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面六/絵演六", 3000, 10, Axl1, false);

	Wait(1400);

	}
}