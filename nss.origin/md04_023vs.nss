//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_023vs.nss_MAIN
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
	#bg001_空a_02=true;
	#ev806_戦争絵シリーズその４_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_零零式竜騎兵=true;
	#av_GR08トロール=true;

	$PreGameName = $GameName;

	$GameName = "md04_024.nss";

}

scene md04_023vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_022.nss"

//◆上空。夕空
//◆進駐軍の竜騎兵隊、展開


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 3000, "#000000");
	OnSE("se戦闘_動作_空突進06", 1000);
	OnBG(100, "bg001_空a_02.jpg");
	SoundPlay("@mbgm12", 0, 1000, true);
	FadeBG(0, true);
	Delete("上背景");

	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



	CreateTextureEX("カメラ１/やられ役01", 600, @600, @-200, "cg/st/3dトロール_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役02", 350, @700, @-0, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureEX("カメラ１/やられ役03", 200, @700, @-300, "cg/st/3dユーウォーキー_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役04", 100, @800, @-200, "cg/st/3dワーウルフ_騎航_通常.png");

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


/*
	CreateTextureEX("絵ＳＴＣ1001", 1300, @100, @-400, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
	CreateTextureEX("絵ＳＴＣ1002", 1200, @-300, @-200, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
	CreateTextureEX("絵ＳＴＣ1003", 1000, @-300, @-500, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
	CreateTextureEX("絵ＳＴＣ1004", 1100, @-500, @-400, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");

	Request("絵ＳＴＣ100*", Smoothing);

	Zoom("絵ＳＴＣ1001", 0, 800, 800, null, false);
	Zoom("絵ＳＴＣ1002", 0, 500, 500, null, false);
	Zoom("絵ＳＴＣ1003", 0, 250, 250, null, false);
	Zoom("絵ＳＴＣ1004", 0, 300, 300, null, false);

	Shake("絵ＳＴＣ1001", 10000000, 1, 1, 0, 0, 600, null, false);
	Shake("絵ＳＴＣ1002", 10000000, 1, 1, 0, 0, 800, null, false);
	Shake("絵ＳＴＣ1003", 10000000, 1, 1, 0, 0, 1000, Dxl3, false);
	Shake("絵ＳＴＣ1004", 10000000, 1, 1, 0, 0, 900, Axl3, false);

	Fade("絵ＳＴＣ100*", 250, 1000, null, true);

	Delete("上背景");

*/

	Wait(1000);


//◆摩天蛟
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CloudZoomSet(11000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1200,@600,null,true);
	Request("絵Cloud1*", AddRender);
	CreateTextureEX("絵演", 1000, Center, Middle, "cg/ev/ev806_戦争絵シリーズその４_a.jpg");
	Zoom("絵演", 0, 1100, 1100, null, true);
	SetBlur("絵演", true, 1, 500, 200, false);

	BGMoveAuto("@絵演",3);

	Fade("絵演", 0, 1000, null, true);
	Delete("カメラ*");
	Request("プロセス*", Stop);
	Delete("プロセス*");

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");



	Delete("絵ＳＴＣ100*");
	SetNwC("cg/fw/nw副官.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／篠川副官】
<voice name="ｅｔｃ／篠川副官" class="その他男声" src="voice/md04/023vs0010e100">
「多架敌骑在前方排开阵式！
　朝本舰迫近！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/023vs0020a06">
「还真是懂礼貌的家伙啊。
　特意前来迎接吗？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/023vs0030a06">
「那好。作为回礼，
　第一七强袭龙骑兵连队——」

{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/023vs0040a06">
「全员装甲!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//―――――――――――――――――――――――――――――

//おがみ：まてんこうムービー挿入？
//◆摩天蛟から零零式、出撃
	#av_零零式竜騎兵=true;

	SetVolume("停滞", 1000, 0, null);

	CreateColorEX("黒幕２", 20000, "#000000");
	Fade("黒幕２", 300, 1000, null, true);

	MovieSESet(21000,"mv摩天蛟","se特殊_mv用_摩天蛟");
	MovieSEStart(0);


	CreateColorSP("黒幕１", 25000, "#000000");
	FadeDelete("黒幕２", 0, true);

	Delete("絵演");
	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



	CreateTextureEX("カメラ１/やられ役01", 500, @200, @-200, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役02", 350, @400, @-0, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役03", 200, @400, @-300, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役04", 100, @500, @-200, "cg/st/3d零零式竜騎兵_騎航_通常.png");

	Fade("カメラ１/やられ役01", 0, 1000, null, false);
	Fade("カメラ１/やられ役02", 0, 1000, null, false);
	Fade("カメラ１/やられ役03", 0, 1000, null, false);
	Fade("カメラ１/やられ役04", 0, 1000, null, false);

	Zoom("カメラ１/やられ役01", 0, 600, 600, null, false);
	Zoom("カメラ１/やられ役02", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04", 0, 250, 250, null, false);

	Move("カメラ１/やられ役01", 0, 41, -218, null, true);
	Move("カメラ１/やられ役02", 0, -268, -45, null, true);
	Move("カメラ１/やられ役03", 0, -429, -206, null, true);
	Move("カメラ１/やられ役04", 0, -257, -304, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進02", 1000);
	OnSE("se戦闘_動作_空突進08", 1000);
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


//	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	FadeDelete("黒幕１", 300, false);
	MoveCamera("@カメラ１", 1500, 100, 200, @300, Dxl1, true);
	Delete("黒幕１");

//	SetBlur("カメラ１/やられ役01", true, 1, 500, 100, false);

	Wait(1000);

//◆進駐軍側。ワーウルフ数騎
//◆横書き
//嶋：ここいらでトロールを使用して下さい。【09/15】
	#av_GR08トロール=true;

	SetBlur("カメラ１/やられ役0*", false, 1, 500, 100, false);
	MoveCamera("@カメラ１", 300, 1500, 0, @0, Axl1, false);
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("カメラ*");
	Request("プロセス*", Stop);
	Delete("プロセス*");

	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



	CreateTextureEX("カメラ１/やられ役01normal", 600, @600, @-200, "cg/st/3dトロール_騎航_通常.png");
	CreateTextureEXadd("カメラ１/やられ役01add", 600, @600, @-200, "cg/st/3dトロール_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役02", 350, @700, @-0, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureEX("カメラ１/やられ役03", 200, @700, @-300, "cg/st/3dユーウォーキー_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役04", 100, @800, @-200, "cg/st/3dワーウルフ_騎航_通常.png");

	Fade("カメラ１/やられ役01normal", 0, 1000, null, false);
	Fade("カメラ１/やられ役02", 0, 1000, null, false);
	Fade("カメラ１/やられ役03", 0, 1000, null, false);
	Fade("カメラ１/やられ役04", 0, 1000, null, false);

	Zoom("カメラ１/やられ役01*", 0, 800, 800, null, false);
	Zoom("カメラ１/やられ役02", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04", 0, 250, 250, null, false);

	Move("カメラ１/やられ役01*", 0, 41, -218, null, true);
	Move("カメラ１/やられ役02", 0, -268, -45, null, true);
	Move("カメラ１/やられ役03", 0, -429, -206, null, true);
	Move("カメラ１/やられ役04", 0, -257, -304, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進04", 1000);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 0, 700, 0, 1000, null,true);


$ループムーブナット名 = "@カメラ１/やられ役01*";
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

	MoveCamera("@カメラ１", 0, -500, 50, @0, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", false);
	MoveCamera("@カメラ１", 1200, 0, -50, @150, Dxl1, true);
	Delete("黒幕１");

	SetBlur("カメラ１/やられ役01", true, 1, 500, 100, false);

	SetNwH("cg/fw/nyＧＨＱ竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／進駐軍騎Ａ】
<voice name="ｅｔｃ／進駐軍騎Ａ" class="その他男声" src="voice/md04/023vs0050e132">
《敌军大型飞行舰射出飞行战骑。
　数量是——一个营的规模，不，还要更多！》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｂ.png");}
//【ｅｔｃ／進駐軍騎Ｂ】
<voice name="ｅｔｃ／進駐軍騎Ｂ" class="その他男声" src="voice/md04/023vs0060e133">
《从没见过的骑体。
　是新型的？》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ａ.png");}
//【ｅｔｃ／進駐軍騎Ａ】
<voice name="ｅｔｃ／進駐軍騎Ａ" class="その他男声" src="voice/md04/023vs0070e132">
《有标志……“００”？》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｃ.png");}
//【ｅｔｃ／進駐軍騎Ｃ】
<voice name="ｅｔｃ／進駐軍騎Ｃ" class="その他男声" src="voice/md04/023vs0080e134">
《或许是零。
　大和的龙骑兵会将开发年加入到名字当中。》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ａ.png");}
//【ｅｔｃ／進駐軍騎Ａ】
<voice name="ｅｔｃ／進駐軍騎Ａ" class="その他男声" src="voice/md04/023vs0090e132">
《以大和自古的纪元来说，今年是２６００年
……原来如此，是最新型的名称。
　这家伙有意思。》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｃ.png");}
//【ｅｔｃ／進駐軍騎Ｃ】
<voice name="ｅｔｃ／進駐軍騎Ｃ" class="その他男声" src="voice/md04/023vs0100e134">
《呵呵，对了。
　就让我看看，
边境小国的新型骑兵到底强到什么程度。》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｂ.png");}
//【ｅｔｃ／進駐軍騎Ｂ】
<voice name="ｅｔｃ／進駐軍騎Ｂ" class="その他男声" src="voice/md04/023vs0110e133">
《好……
　先下手为强，给他们来个下马威！》

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,0);//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 2500, "WHITE");

	Request("プロセス１", Stop);
	Delete("プロセス１");

//◆進撃
//◆突然、一騎が爆発
//	SetBlur("カメラ１/やられ役0*", false, 1, 500, 200, false);

	OnSE("se戦闘_動作_鎧_合当理吹かし01",1000);
	MoveCamera("@カメラ１", 500, -100, 50, @0, Dxl1, true);

	Move("カメラ１/やられ役01*", 500, 2000, -350, AxlDxl, false);
	MoveCamera("@カメラ１", 500, 2000, -250, @0, AxlDxl, true);

	CreateTextureEXover("絵演上", 19000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEXadd("絵演下", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 1, 300, 30, false);

	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃01");
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE01",0,1000,0,1000,null,false);



	Shake("カメラ１/やられ役01*", 1000, 5, 20, 0, 0, 500, Dxl2, false);
	Fade("絵色100", 500, 1000, Axl1, false);
	DrawTransition("絵色100", 500, 0, 500, 200, Axl1, "cg/data/circle_08_00_0.png", false);
	Fade("カメラ１/やられ役01add", 500, 1000, null, false);
	Move("カメラ１/やられ役01*", 1100, 1900, -150, Axl1, false);
	EffectZoomadd(10000, 800, 600, "cg/ef/ef034_精神汚染.jpg", true);


	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("カメラ１/やられ役01*", 200, 0, null, false);
	Fade("絵演*", 150, 1000, null, false);
	Zoom("絵演*", 2000, 1500, 1500, Dxl1, false);
	Shake("絵演*", 1500, 20, 10, 0, 0, 1000, Dxl2, true);
	Wait(150);

	Delete("絵色100");
	Delete("カメラ１/やられ役01*");

	FadeDelete("絵演*", 1000, false);

	MoveCamera("@カメラ１", 1600, -200, 50, 1000, Dxl1, false);



	SetNwH("cg/fw/nyＧＨＱ竜騎兵Ａ.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／進駐軍騎Ａ】
<voice name="ｅｔｃ／進駐軍騎Ａ" class="その他男声" src="voice/md04/023vs0120e132">
《——卡米诺？》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ａ.png");}
//【ｅｔｃ／進駐軍騎Ａ】
<voice name="ｅｔｃ／進駐軍騎Ａ" class="その他男声" src="voice/md04/023vs0130e132">
《卡米诺中尉!?》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｂ.png");}
//【ｅｔｃ／進駐軍騎Ｂ】
<voice name="ｅｔｃ／進駐軍騎Ｂ" class="その他男声" src="voice/md04/023vs0140e133">
《夏鲁滋，怎么了！
　卡米诺怎么了!?》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ａ.png");}
//【ｅｔｃ／進駐軍騎Ａ】
<voice name="ｅｔｃ／進駐軍騎Ａ" class="その他男声" src="voice/md04/023vs0150e132">
《不、不清楚。
　突然燃烧起来……或许是翼筒故障。》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ａ.png");}
//【ｅｔｃ／進駐軍騎Ａ】
<voice name="ｅｔｃ／進駐軍騎Ａ" class="その他男声" src="voice/md04/023vs0160e132">
《不对，即使是那样刚才的也——》

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,0);//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 1500, "WHITE");
	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃01");
	CreateTextureEXadd("絵演上", 19000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEXadd("絵演下", 18000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");


//◆ずごーん。また一騎
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("カメラ１/やられ役02", 1000, 5, 10, 0, 0, 1000, Axl2, false);
	Fade("絵色100", 500, 1000, Axl1, false);
	DrawTransition("絵色100", 500, 0, 500, 200, Axl1, "cg/data/circle_08_00_0.png", false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", true);

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Shake("絵演*", 2500, 20, 15, 0, 0, 1000, Dxl1, false);
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 1, 300, 30, false);

	Fade("絵演*", 200, 1000, null, false);
	Zoom("絵演*", 2000, 2000, 2000, Dxl2, false);
	Shake("絵演下", 1500, 0, 10, 0, 0, 1000, Dxl2, true);
	Wait(150);

	Delete("絵色100");
	Request("プロセス１", Stop);
	Delete("プロセス１");
	Delete("カメラ１/やられ役02");

	FadeDelete("絵演*", 1000, false);

	MoveCamera("@カメラ１", 1000, -200, -50, 1500, AxlDxl, true);



	SetNwH("cg/fw/nyＧＨＱ竜騎兵Ｂ.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／進駐軍騎Ｂ】
<voice name="ｅｔｃ／進駐軍騎Ｂ" class="その他男声" src="voice/md04/023vs0170e133">
《夏鲁滋!?》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｂ.png");}
//【ｅｔｃ／進駐軍騎Ｂ】
<voice name="ｅｔｃ／進駐軍騎Ｂ" class="その他男声" src="voice/md04/023vs0180e133">
《怎……怎么了!?》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｃ.png");}
//【ｅｔｃ／進駐軍騎Ｃ】
<voice name="ｅｔｃ／進駐軍騎Ｃ" class="その他男声" src="voice/md04/023vs0190e134">
《————是攻击!!》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｂ.png");}
//【ｅｔｃ／進駐軍騎Ｂ】
<voice name="ｅｔｃ／進駐軍騎Ｂ" class="その他男声" src="voice/md04/023vs0200e133">
《攻击!?》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｃ.png");}
//【ｅｔｃ／進駐軍騎Ｃ】
<voice name="ｅｔｃ／進駐軍騎Ｃ" class="その他男声" src="voice/md04/023vs0210e134">
《地方的新型骑兵，朝这边发射奇怪的炮弹！
　多半是那个！》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｃ.png");}
//【ｅｔｃ／進駐軍騎Ｃ】
<voice name="ｅｔｃ／進駐軍騎Ｃ" class="その他男声" src="voice/md04/023vs0220e134">
《快散开！
　这样下去就只有挨打的份!!》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｂ.png");}
//【ｅｔｃ／進駐軍騎Ｂ】
<voice name="ｅｔｃ／進駐軍騎Ｂ" class="その他男声" src="voice/md04/023vs0230e133">
《这、这有可能吗？
　哪有仅一下攻击
就将龙骑兵击落的狙击兵器……》

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,0);//―――――――――――――――――――――――――――――

//◆ずがずがん。続けて二騎

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	CreateSE("SE05","se戦闘_破壊_爆発07");

	OnSE("se戦闘_バロウズ_ボーガン射撃01",1000);
	CreateColorSPadd("白", 20000, "#FFFFFF");
	Fade("白", 400, 0, null, true);
	Shake("カメラ１/やられ役03", 1000, 5, 10, 0, 0, 1000, Axl2, false);

	OnSE("se戦闘_バロウズ_ボーガン射撃01",1000);
	Fade("白", 100, 1000, null, true);
	Fade("白", 400, 0, null, false);
	Shake("カメラ１/やられ役04", 1000, 5, 10, 0, 0, 1000, Axl2, false);

/*
	CreateTextureEX("kemu", 1800, @-200, @0, "cg/ef/efRec_雲a01.png");
	Fade("kemu", 400, 300, null, true);
	Fade("kemu", 300, 600, null, false);
//	Fade("kemu", 1000, 1000, null, true);
	Shake("絵ＳＴＣ1002", 1000, 10, 10, 0, 0, 600, Axl3, false);
	Shake("絵ＳＴＣ1004", 1000, 10, 10, 0, 0, 600, Axl3, false);
	Move("絵ＳＴＣ1002", 1000, @400, @400, Axl3, false);
	Move("絵ＳＴＣ1004", 800, @100, @100, Axl3, true);
	Move("絵ＳＴＣ1004", 200, @600, @600, Axl3, false);

	FadeDelete("絵ＳＴＣ1001*", 1000, false);
	DrawTransition("kemu*", 1000, 1000, 0, 1000, null, "cg/data/slide_01_02_1.png", true);
	Delete("kemu");

*/

	MoveCamera("@カメラ１", 2000, -300, -250, 1500, Axl3, false);

	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 2000, 1000, "cg/ef/ef034_精神汚染.jpg", false);
	CreateColorSPadd("ばく１", 17000, "#990000");
	CreateColorSPadd("ばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばく０", 15000, "#FFFFFF");
	DrawTransition("ばく１", 0, 1000, 200, 800, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("ばく２", 0, 1000, 400, 500, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("ばく０", 0, 1000, 600, 100, null, "cg/data/circle_12_01_1.png", true);
	FadeDelete("ばく*", 1000, true);
	FadeDelete("カメラ１/やられ役*", 1000, false);

	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateColorSPadd("ばく１", 17000, "#990000");
	CreateColorSPadd("ばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばく０", 15000, "#FFFFFF");
	DrawTransition("ばく１", 0, 1000, 200, 800, null, "cg/data/circle_13_00_0.png", false);
	DrawTransition("ばく２", 0, 1000, 400, 500, null, "cg/data/circle_13_00_0.png", false);
	DrawTransition("ばく０", 0, 1000, 600, 100, null, "cg/data/circle_13_00_0.png", true);
	FadeDelete("ばく*", 1000, true);

	Wait(500);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	Delete("絵色100");
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("カメラ１/やられ役*");


	CreateTextureEX("絵ＳＴＣ2001", 1400, @100, @-150, "cg/st/3dガルム_騎航_戦闘.png");
	CreateTextureEX("絵ＳＴＣ2002", 1300, @-300, @-350, "cg/st/3dワーウルフ_騎航_戦闘.png");
	CreateTextureEX("絵ＳＴＣ2003", 1000, @-300, @-150, "cg/st/3dトロール_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ2004", 1200, @-500, @-150, "cg/st/3dユーウォーキー_騎航_通常.png");

	Request("絵ＳＴＣ200*", Smoothing);

	Zoom("絵ＳＴＣ2001", 0, 800, 800, null, false);
	Zoom("絵ＳＴＣ2002", 0, 500, 500, null, false);
	Zoom("絵ＳＴＣ2003", 0, 250, 250, null, false);
	Zoom("絵ＳＴＣ2004", 0, 300, 300, null, false);

	Shake("絵ＳＴＣ2001", 10000000, 1, 0, 0, 0, 920, null, false);
	Shake("絵ＳＴＣ2002", 10000000, 1, 0, 0, 0, 950, null, false);
	Shake("絵ＳＴＣ2003", 10000000, 1, 0, 0, 0, 1000, Dxl3, false);
	Shake("絵ＳＴＣ2004", 10000000, 1, 0, 0, 0, 900, Axl3, false);

	Delete("絵ＳＴＣ100*");
	Fade("絵ＳＴＣ200*", 0, 1000, null, true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);


	SetNwH("cg/fw/nyＧＨＱ竜騎兵Ｃ.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／進駐軍騎Ｃ】
<voice name="ｅｔｃ／進駐軍騎Ｃ" class="その他男声" src="voice/md04/023vs0240e134">
《散开————————!!》

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0);//―――――――――――――――――――――――――――――

//◆大和側
//◆零零式部隊
//◆ここでのネームＣＧは「新型竜騎兵Ａ～Ｃ」
//◆縦書き

	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進08",1000);

	Move("絵ＳＴＣ2001", 500, @1100, @600, Axl3, false);
	Move("絵ＳＴＣ2002", 600, @1000, @200, Axl3, false);
	Move("絵ＳＴＣ2003", 550, @1000, @-400, Axl1, false);
	Move("絵ＳＴＣ2004", 650, @11000, @-400, Axl3, true);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

/*

	Delete("絵ＳＴＣ200*");
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);



	CreateTextureEX("絵ＳＴＣ1001", 1400,  @-800, @-700, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ1002", 1300,  @-700, @-900, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ1003", 1100,  @-400, @-600, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ1004", 1200,  @-300, @-700, "cg/st/3d零零式竜騎兵_騎航_通常.png");

	Request("絵ＳＴＣ200*", Smoothing);

	Zoom("絵ＳＴＣ1001", 0, 800, 800, null, false);
	Zoom("絵ＳＴＣ1002", 0, 500, 500, null, false);
	Zoom("絵ＳＴＣ1003", 0, 250, 250, null, false);
	Zoom("絵ＳＴＣ1004", 0, 300, 300, null, false);

	Shake("絵ＳＴＣ1001", 10000000, 1, 1, 0, 0, 600, null, false);
	Shake("絵ＳＴＣ1002", 10000000, 1, 1, 0, 0, 800, null, false);
	Shake("絵ＳＴＣ1003", 10000000, 1, 1, 0, 0, 1000, Dxl3, false);
	Shake("絵ＳＴＣ1004", 10000000, 1, 1, 0, 0, 900, Axl3, false);

	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵ＳＴＣ1001", 350, @500, @400, Dxl3, false);
	Fade("絵ＳＴＣ1001", 150, 1000, null, false);

	CreateSE("SE04","se戦闘_動作_空突進03");
	MusicStart("SE04",0,250,0,1000,null,false);
	Move("絵ＳＴＣ1004", 300, @500, @200, Axl3, false);
	Fade("絵ＳＴＣ1004", 250, 1000, null, true);

	CreateSE("SE02","se戦闘_動作_空突進03");
	MusicStart("SE02",0,500,0,1000,null,false);
	Move("絵ＳＴＣ1002", 200, @500, @300, Dxl1, false);
	Fade("絵ＳＴＣ1002", 150, 1000, null, true);

	CreateSE("SE03","se戦闘_動作_空突進03");
	MusicStart("SE03",0,400,0,1000,null,false);
	Move("絵ＳＴＣ1003", 200, @500, @400, Dxl1, false);
	Fade("絵ＳＴＣ1003", 150, 1000, null, true);

*/


	Delete("絵演");
	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



	CreateTextureEX("カメラ１/やられ役01a", 500, @200, @-200, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役02a", 350, @400, @-0, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役03a", 200, @400, @-300, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役04a", 100, @500, @-200, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役01b", 500,  @200, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");
	CreateTextureEX("カメラ１/やられ役02b", 350,  @400, @-0, "cg/st/3d零零式竜騎兵_騎航_発振.png");
	CreateTextureEX("カメラ１/やられ役03b", 200,  @400, @-300, "cg/st/3d零零式竜騎兵_騎航_発振.png");
	CreateTextureEX("カメラ１/やられ役04b", 100,  @500, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");

	Fade("カメラ１/やられ役01a", 0, 1000, null, false);
	Fade("カメラ１/やられ役02a", 0, 1000, null, false);
	Fade("カメラ１/やられ役03a", 0, 1000, null, false);
	Fade("カメラ１/やられ役04a", 0, 1000, null, false);

	Zoom("カメラ１/やられ役01*", 0, 600, 600, null, false);
	Zoom("カメラ１/やられ役02*", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03*", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04*", 0, 250, 250, null, false);

	Move("カメラ１/やられ役01*", 0, 41, -218, null, true);
	Move("カメラ１/やられ役02*", 0, -268, -45, null, true);
	Move("カメラ１/やられ役03*", 0, -429, -206, null, true);
	Move("カメラ１/やられ役04*", 0, -257, -304, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進03", 1000);
	OnSE("se戦闘_動作_空突進06", 1000);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 0, 700, 0, 1000, null,true);


$ループムーブナット名 = "@カメラ１/やられ役01*";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@カメラ１/やられ役02*";
$ループムーブタイム２ = 20000;

$ループムーブナット名３ = "@カメラ１/やられ役03*";
$ループムーブタイム３ = 15000;

$ループムーブナット名４ = "@カメラ１/やられ役04*";
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


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	MoveCamera("@カメラ１", 1500, 100, 200, @300, Dxl1, true);
	Delete("黒幕１");

//	SetBlur("カメラ１/やられ役01", true, 1, 500, 100, false);


	SetNwC("cg/fw/nw零零式竜騎兵Ａ.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／零零式Ａ】
<voice name="ｅｔｃ／零零式Ａ" class="その他男声" src="voice/md04/023vs0250e301">
《迟了……你们这些蠢货。》

{	NwC("cg/fw/nw零零式竜騎兵Ｂ.png");}
//【ｅｔｃ／零零式Ｂ】
<voice name="ｅｔｃ／零零式Ｂ" class="その他男声" src="voice/md04/023vs0260e302">
《那些人，似乎相当为所欲为啊。 
　把普陀乐城搞的破败不堪……》

{	NwC("cg/fw/nw零零式竜騎兵Ｃ.png");}
//【ｅｔｃ／零零式Ｃ】
<voice name="ｅｔｃ／零零式Ｃ" class="その他男声" src="voice/md04/023vs0270e303">
《绝不放过他们。》

//【ｅｔｃ／零零式Ａ】
<voice name="ｅｔｃ／零零式Ａ" class="その他男声" src="voice/md04/023vs0280e301">
《那当然。》

{	NwC("cg/fw/nw零零式竜騎兵Ｂ.png");}
//【ｅｔｃ／零零式Ｂ】
<voice name="ｅｔｃ／零零式Ｂ" class="その他男声" src="voice/md04/023vs0290e302">
《真碍眼！
　在别人的领空里——
打算赖着不走到什么时候!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//―――――――――――――――――――――――――――――


//◆発振砲、準備
//◆発射
//◆ぼかぼか撃墜されてく進駐軍騎

/*
	CreateTextureEX("絵ＳＴＣ1001", 1200,  @-800, @-700, "cg/st/3d零零式竜騎兵_騎航_発振.png");
	CreateTextureEX("絵ＳＴＣ1002", 1100,  @-700, @-900, "cg/st/3d零零式竜騎兵_騎航_発振.png");
	CreateTextureEX("絵ＳＴＣ1003", 1000,  @-400, @-600, "cg/st/3d零零式竜騎兵_騎航_発振.png");
	CreateTextureEX("絵ＳＴＣ1004", 1050,  @-300, @-700, "cg/st/3d零零式竜騎兵_騎航_発振.png");

	Request("絵ＳＴＣ100*", Smoothing);
*/
	CreateTextureEXadd("かまえ", 2000, @0, @0, "cg/ef/ef002_汎用移動.jpg");


	Request("かまえ", Smoothing);

	CreateSE("SE01","se特殊_鎧_エネルギー充電01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	OnSE("se戦闘_銃器_複数構える01", 1000);
	Fade("かまえ", 200, 1000, null, false);
	Zoom("かまえ", 200, 1500, 1500, null, true);

	Fade("カメラ１/やられ役0*", 250, 1000, null, true);
	Fade("かまえ", 200, 0, null, false);
	WaitKey(1500);



	CreateTextureEX("絵EF01", 10000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("絵EF01", 0, @180, @0, @0, Axl3, false);
	OnSE("se戦闘_バロウズ_ボーガン射撃01", 1000);

	Delete("絵色100");
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("カメラ１/やられ役*");

	Wait(500);
	Delete("絵ＳＴＣ100*");
	Fade("絵EF01",100 0, 0, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 3000, 1000, "cg/ef/ef026_汎用爆撃.jpg", false);

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("ばく１", 17000, "#990000");
	CreateColorSPadd("ばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばく０", 15000, "#FFFFFF");
	DrawTransition("ばく１", 0, 1000, 200, 300, null, "cg/data/circle_09_00_0.png", false);
	DrawTransition("ばく２", 0, 1000, 210, 200, null, "cg/data/circle_09_00_0.png", false);
	DrawTransition("ばく０", 0, 1000, 220, 100, null, "cg/data/circle_09_00_0.png", true);
	FadeDelete("ばく*", 300, false);
	Wait(50);

	CreateSE("SE02","se戦闘_衝撃_鎧散華");
	MusicStart("SE02",0,900,0,1000,null,false);
	CreateColorSPadd("ばばく１", 17000, "#990000");
	CreateColorSPadd("ばばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばばく０", 15000, "#FFFFFF");
	DrawTransition("ばばく１", 20, 1000, 170, 300, null, "cg/data/circle_05_00_0.png", false);
	DrawTransition("ばばく２", 20, 1000, 180, 200, null, "cg/data/circle_05_00_0.png", false);
	DrawTransition("ばばく０", 20, 1000, 190, 100, null, "cg/data/circle_05_00_0.png", true);
	FadeDelete("ばばく*", 300, false);

	Wait(50);
	CreateSE("SE01","se戦闘_衝撃_鎧散華");
	MusicStart("SE01",0,800,0,1000,null,false);
	CreateColorSPadd("ばばばく１", 17000, "#990000");
	CreateColorSPadd("ばばばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばばばく０", 15000, "#FFFFFF");
	DrawTransition("ばばばく１", 0, 1000, 140, 300, null, "cg/data/circle_06_00_0.png", false);
	DrawTransition("ばばばく２", 0, 1000, 150, 200, null, "cg/data/circle_06_00_0.png", false);
	DrawTransition("ばばばく０", 0, 1000, 160, 100, null, "cg/data/circle_06_00_0.png", true);
	FadeDelete("ばばばく*", 300, false);


	Wait(50);
	CreateSE("SE00","se戦闘_衝撃_鎧散華");
	MusicStart("SE00",0,700,0,1000,null,false);
	CreateColorSPadd("ばばばばばく１", 17000, "#990000");
	CreateColorSPadd("ばばばばばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばばばばばく０", 15000, "#FFFFFF");
	DrawTransition("ばばばばばく１", 0, 1000, 100, 300, null, "cg/data/circle_08_00_0.png", false);
	DrawTransition("ばばばばばく２", 0, 1000, 110, 200, null, "cg/data/circle_08_00_0.png", false);
	DrawTransition("ばばばばばく０", 0, 1000, 120, 100, null, "cg/data/circle_08_00_0.png", true);

	FadeDelete("ばばばばばく*", 300, false);

	Wait(50);
	CreateSE("SE00","se戦闘_衝撃_鎧散華");
	MusicStart("SE00",0,700,0,1000,null,false);
	CreateColorSPadd("ばばばばく１", 17000, "#990000");
	CreateColorSPadd("ばばばばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばばばばく０", 15000, "#FFFFFF");
	DrawTransition("ばばばばく１", 0, 1000, 100, 300, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("ばばばばく２", 0, 1000, 110, 200, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("ばばばばく０", 0, 1000, 120, 100, null, "cg/data/circle_12_01_1.png", true);

//	FadeDelete("ばく*", 100, false);

	FadeDelete("ばばばばく*", 1000, true);


//	CreateSE("SE03","se戦闘_衝撃_鎧散華");
//	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(1000);


	SetVolume("@mbgm*", 2000, 0, null);
	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	SetVolume("停滞", 2000, 0, null);
	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_024.nss"