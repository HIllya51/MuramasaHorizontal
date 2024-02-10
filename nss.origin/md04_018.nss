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

scene md04_018.nss_MAIN
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
	#bg102_昼古河情景_01=true;
	#bg002_空a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_019.nss";

}

scene md04_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_017.nss"


//◆古河
//◆テロップ「古河」
//◆横書き

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	SoundPlay("@mbgm36", 0, 1000, true);

	OnBG(100, "bg102_昼古河情景_01.jpg");
	FadeBG(0, true);

	Delete("上背景");

/*
	CreateTextureEX("テロップ", 17000, @450, @500, "cg/sys/Telop/tp_古河.png");
	Fade("テロップ", 1000, 1000, null, true);
	FadeDelete("テロップ", 2000, true);
*/
	FadeDelete("黒幕１", 1500, true);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_古河.png",null);
	Wait(2500);




	SetNwH("cg/fw/nyＧＨＱ中将.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／方面将軍】
<voice name="ｅｔｃ／方面将軍" class="その他男声" src="voice/md04/0180010e252">
「快点押送俘虏！
　物资的确认也赶紧！」

//【ｅｔｃ／方面将軍】
<voice name="ｅｔｃ／方面将軍" class="その他男声" src="voice/md04/0180020e252">
「必须为篠川军来袭做好备战工作！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


//◆上空
//◆ＧＨＱ竜騎兵一隊
	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



	CreateTextureEX("カメラ１/やられ役01", 600, @600, @-200, "cg/st/3dユーウォーキー_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役02", 350, @700, @-0, "cg/st/3dユーウォーキー_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役03", 200, @700, @-300, "cg/st/3dユーウォーキー_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役04", 100, @800, @-200, "cg/st/3dユーウォーキー_騎航_通常.png");

	Fade("カメラ１/やられ役01", 0, 1000, null, false);
	Fade("カメラ１/やられ役02", 0, 1000, null, false);
	Fade("カメラ１/やられ役03", 0, 1000, null, false);
	Fade("カメラ１/やられ役04", 0, 1000, null, false);

	Zoom("カメラ１/やられ役01", 0, 800, 800, null, false);
	Zoom("カメラ１/やられ役02", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04", 0, 250, 250, null, false);

	Move("カメラ１/やられ役01", 0, 41, -218, null, true);
	Move("カメラ１/やられ役02", 0, -268, -45, null, true);
	Move("カメラ１/やられ役03", 0, -429, -206, null, true);
	Move("カメラ１/やられ役04", 0, -257, -304, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進03", 1000);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 0, 700, 0, 1000, null,true);


$ループムーブナット名 = "@カメラ１/やられ役01";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@カメラ１/やられ役02";
$ループムーブタイム２ = 20000;

$ループムーブナット名３ = "@カメラ１/やられ役03";
$ループムーブタイム３ = 15000;

$ループムーブナット名４ = "@カメラ１/やられ役04";
$ループムーブタイム４ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	CreateProcess("プロセス３", 150, 0, 0, "FlyMoving3");
	CreateProcess("プロセス４", 150, 0, 0, "FlyMoving4");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);

	MoveCamera("@カメラ１", 0, 500, 50, @0, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	MoveCamera("@カメラ１", 1500, 0, -50, @150, Dxl1, true);
	Delete("黒幕１");

	SetBlur("カメラ１/やられ役0*", true, 1, 500, 100, false);


	SetNwH("cg/fw/ny警邏隊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／警邏隊Ａ】
<voice name="ｅｔｃ／警邏隊Ａ" class="その他男声" src="voice/md04/0180030e063">
《地面的人都慌慌张张的。》

{	NwH("cg/fw/ny警邏隊Ｂ.png");}
//【ｅｔｃ／警邏隊Ｂ】
<voice name="ｅｔｃ／警邏隊Ｂ" class="その他男声" src="voice/md04/0180040e064">
《将军大人太认真了。
　看样子是打算不眠不休地准备防御了。》

{	NwH("cg/fw/ny警邏隊Ｃ.png");}
//【ｅｔｃ／警邏隊Ｃ】
<voice name="ｅｔｃ／警邏隊Ｃ" class="その他男声" src="voice/md04/0180050e065">
《作为部下可受不了。》

{	NwH("cg/fw/ny警邏隊Ａ.png");}
//【ｅｔｃ／警邏隊Ａ】
<voice name="ｅｔｃ／警邏隊Ａ" class="その他男声" src="voice/md04/0180060e063">
《篠川的指挥官要是脑子正常，现在应该在
准备举白旗吧。
　怎么可能还有精力进攻。》

{	NwH("cg/fw/ny警邏隊Ｂ.png");}
//【ｅｔｃ／警邏隊Ｂ】
<voice name="ｅｔｃ／警邏隊Ｂ" class="その他男声" src="voice/md04/0180070e064">
《就是啊……》

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ピッ
	OnSE("se日常_機械_無線通信03", 1000);
	Wait(500);

	SetNwH("cg/fw/ny警邏隊Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／警邏隊Ｃ】
<voice name="ｅｔｃ／警邏隊Ｃ" class="その他男声" src="voice/md04/0180080e065">
《嗯？》

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景横長", 100, -4000, 0, "cg/bg/bg204_横旋回背景_01.jpg");

	CreateTextureEX("カメラ１/篠川01", 5, -3450, @0, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/篠川02", 3, -3400, @0, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/篠川03", 2, -3500, @0, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	Request("カメラ１/篠川*", Smoothing);
	Rotate("カメラ１/篠川01", 0, @0, @0, @-50, null,true);

	Zoom("カメラ１/篠川*", 0, 20, 20, null, true);

	Fade("カメラ１/篠川*", 500, 1000, null, false);
	SetBlur("カメラ１/やられ役0*", false, 1, 500, 200, false);

	OnSE("se戦闘_動作_空突進08",1000);


	Move("カメラ１/篠川01", 15000, @10, @-150, Dxl1, false);
	Move("カメラ１/篠川02", 14500, @0, @-170, Dxl1, false);
	Move("カメラ１/篠川03", 14800, @20, @-160, Dxl1, false);

	Fade("絵背景横長", 1800, 1000, Axl3, false);
	Move("絵背景横長", 2600, -100, @-100, Dxl1, false);
	CloudZoomVertex(2500,@724,@200,AxlDxl,false);
	MoveCamera("@カメラ１", 2500, -3000, 100, @0, AxlDxl, true);


	SetNwH("cg/fw/ny警邏隊Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ｅｔｃ／警邏隊Ｂ】
<voice name="ｅｔｃ／警邏隊Ｂ" class="その他男声" src="voice/md04/0180090e064">
《发现不明骑航。
　……是敌骑！》

{	NwH("cg/fw/ny警邏隊Ａ.png");}
//【ｅｔｃ／警邏隊Ａ】
<voice name="ｅｔｃ／警邏隊Ａ" class="その他男声" src="voice/md04/0180100e063">
《喂喂。我们的预料这么快就落空了。
　篠川的指挥官是疯子吗？》

{	NwH("cg/fw/ny警邏隊Ｃ.png");}
//【ｅｔｃ／警邏隊Ｃ】
<voice name="ｅｔｃ／警邏隊Ｃ" class="その他男声" src="voice/md04/0180110e065">
《不，那是侦查骑吧。
　数量也很少……》

//【ｅｔｃ／警邏隊Ｃ】
<voice name="ｅｔｃ／警邏隊Ｃ" class="その他男声" src="voice/md04/0180120e065">
《他们是来确认古河的情况的。》

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	FadeDelete("カメラ１/篠川*", 500, false);
	FadeDelete("絵背景横長", 500, true);
	CloudZoomVertex(500,-1024,0,Dxl2,false);
	MoveCamera("@カメラ１", 500, 0, 0, @0, Dxl2, true);

	SetNwH("cg/fw/ny警邏隊Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ｅｔｃ／警邏隊Ｂ】
<voice name="ｅｔｃ／警邏隊Ｂ" class="その他男声" src="voice/md04/0180130e064">
《原来如此。这群家伙真不死心。
　……队长，怎么办？》

{	NwH("cg/fw/ny警邏隊Ａ.png");}
//【ｅｔｃ／警邏隊Ａ】
<voice name="ｅｔｃ／警邏隊Ａ" class="その他男声" src="voice/md04/0180140e063">
《放他们回去吧。
　我们的大礼就是让他们认清现实。》

{	NwH("cg/fw/ny警邏隊Ｃ.png");}
//【ｅｔｃ／警邏隊Ｃ】
<voice name="ｅｔｃ／警邏隊Ｃ" class="その他男声" src="voice/md04/0180150e065">
《没错。》

{	NwH("cg/fw/ny警邏隊長.png");}
//【ｅｔｃ／警邏隊長】
<voice name="ｅｔｃ／警邏隊長" class="その他男声" src="voice/md04/0180160e066">
《嗯……
　但是，被那个不知变通的将军责骂偷懒
也不好受。》

{	NwH("cg/fw/ny警邏隊Ｂ.png");}
//【ｅｔｃ／警邏隊Ｂ】
<voice name="ｅｔｃ／警邏隊Ｂ" class="その他男声" src="voice/md04/0180170e064">
《那就动手吧。
　我们的位置更有优势。》

{	NwH("cg/fw/ny警邏隊長.png");}
//【ｅｔｃ／警邏隊長】
<voice name="ｅｔｃ／警邏隊長" class="その他男声" src="voice/md04/0180180e066">
《是啊……好。
　只留下一骑。》

//【ｅｔｃ／警邏隊長】
<voice name="ｅｔｃ／警邏隊長" class="その他男声" src="voice/md04/0180190e066">
《其它的都干掉。》

{	NwH("cg/fw/ny警邏隊Ａ.png");}
//【ｅｔｃ／警邏隊Ａ】
<voice name="ｅｔｃ／警邏隊Ａ" class="その他男声" src="voice/md04/0180200e063">
《了解。》

{	NwH("cg/fw/ny警邏隊Ｂ.png");}
//【ｅｔｃ／警邏隊Ｂ】
<voice name="ｅｔｃ／警邏隊Ｂ" class="その他男声" src="voice/md04/0180210e064">
《哈哈……狩猎开始！》

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆進撃

	SetVolume("停滞", 1000, 0, null);
	CreateColorEXadd("絵色100", 150, "WHITE");


	CreateSE("進撃", "se戦闘_動作_空突進02");
	CreateSE("進撃02", "se戦闘_動作_空突進02");
	CreateSE("進撃03", "se戦闘_動作_空突進02");
	CreateSE("進撃04", "se戦闘_動作_空突進02");


	OnSE("se戦闘_動作_鎧_合当理吹かし01",1000);
	MoveCamera("@カメラ１", 500, -100, 50, @0, Dxl1, true);

	Fade("絵色100", 500, 1000, null, false);
	MoveCamera("@カメラ１", 500, 2000, -250, @0, Axl1, false);
	MusicStart("進撃", 0, 1000, 0, 1000, null,false);
	Wait(150);
	MusicStart("進撃02", 0, 1000, 0, 1000, null,false);
	Wait(100);
	MusicStart("進撃03", 0, 1000, 0, 1000, null,false);
	Wait(50);
	MusicStart("進撃04", 0, 1000, 0, 1000, null,false);


//◆黒
//◆ここでのネームＣＧは「？」
//◆縦書き

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	Wait(1000);
	Delete("@OnBG*");

	CloudZoomDelete(0,false);
	Delete("絵色100");
	Delete("カメラ*");
	Request("プロセス*", Stop);
	Delete("プロセス*");

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／零零式Ａ】
<voice name="ｅｔｃ／零零式Ａ" class="その他男声" src="voice/md04/0180220e301">
《先行小队呼叫摩天蛟。
　发现进驻军龙骑兵。请求指示。》

//【ｅｔｃ／零零式Ａ】
<voice name="ｅｔｃ／零零式Ａ" class="その他男声" src="voice/md04/0180230e301">
《————》

//【ｅｔｃ／零零式Ａ】
<voice name="ｅｔｃ／零零式Ａ" class="その他男声" src="voice/md04/0180240e301">
《了解。》

//【ｅｔｃ／零零式Ａ】
<voice name="ｅｔｃ／零零式Ａ" class="その他男声" src="voice/md04/0180250e301">
《一骑都不会放过。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Wait(500);
	OnSE("se戦闘_バロウズ_ボーガン射撃02",1000);
	Wait(200);
	OnSE("se戦闘_バロウズ_ボーガン射撃02",1000);
	Wait(50);
	OnSE("se戦闘_バロウズ_ボーガン射撃02",1000);

//◆地上

	OnBG(100, "bg102_昼古河情景_01.jpg");
	FadeBG(0, true);

//時間経過を匂わすためにウェイト inc櫻井
	Wait(3000);
	SetVolume("OnSE*", 1000, 0, null);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	Wait(500);
	SetNwH("cg/fw/nyＧＨＱ中将.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／方面将軍】
<voice name="ｅｔｃ／方面将軍" class="その他男声" src="voice/md04/0180260e252">
「什么？
　一个巡逻的龙骑兵小队音信全无？
全队？」

//【ｅｔｃ／方面将軍】
<voice name="ｅｔｃ／方面将軍" class="その他男声" src="voice/md04/0180270e252">
「……应该不至于连联络的时间都没有
就被敌人大军全灭了吧。
　如果是这样，别的巡逻队不可能察觉不到。」

//【ｅｔｃ／方面将軍】
<voice name="ｅｔｃ／方面将軍" class="その他男声" src="voice/md04/0180280e252">
「哼，那就是单纯的偷懒吗！
　刚取得一点胜利就得意忘形，所以说
笨蛋就是无可救药……！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_019.nss"