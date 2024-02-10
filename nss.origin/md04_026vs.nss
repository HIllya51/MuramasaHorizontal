//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_026vs.nss_MAIN
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
	#bg104_普陀楽城外郭大船方面_01=true;
	#ev802_戦争絵シリーズその２=true;
	#bg001_空a_01=true;
	#bg001_空b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_027.nss";

}

scene md04_026vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md04_025.nss"


//◆大船口
	PrintBG("上背景", 30000);

	OnBG(100, "bg104_普陀楽城外郭大船方面_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg104_普陀楽城外郭大船方面_01.jpg");
	CreateTextureSP("絵背景100", 150, Center, Middle, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_01l.jpg");

	Move("絵背景100", 10000, @-200, @0, null, false);

	FadeDelete("上背景", 2000, true);


	SoundPlay("@mbgm34", 0, 1000, true);

	SetFont("@黑体", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("字幕01",30411,Center,inherit,auto,auto,"一二月二日");
	Fade("字幕01", 0, 0, null, true);
	Request("字幕01",NoLog);
	Request("字幕01",PushText);
	Rotate("字幕01", 0, @0, @0, 90, null, false);
	Move("字幕01", 0, @300, @10, null, false);
	SetBacklog("一二月二日", null, null);



	Fade("字幕*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("字幕*", 300, 0, null, true);

	FadeDelete("絵背景100", 1500, true);


/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　　　　一二月二日

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
*/
	CreateSE("SE01","se背景_ガヤ_戦場の風景03");
	MusicStart("SE01",2000,500,0,1000,null,false);

	Wait(1000);

	SetNwC("cg/fw/nw六波羅兵士Ａ.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／大船兵Ａ】
<voice name="ｅｔｃ／大船兵Ａ" class="その他男声" src="voice/md04/026vs0010e164">
「战车冲过来了!!」

{	NwC("cg/fw/nw六波羅兵士Ｂ.png");}
//【ｅｔｃ／大船兵Ｂ】
<voice name="ｅｔｃ／大船兵Ｂ" class="その他男声" src="voice/md04/026vs0020e165">
「停，快停下!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃撃。ぱんぱん
//◆戦車進撃。ずがが。

	CreateSE("SE02","se戦闘_攻撃_ライフル撃つ4回");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(200);
	CreateSE("SE03","se乗物_戦車_走行音");
	MusicStart("SE03",1000,1000,0,1100,null,true);
	Shake("絵背景50", 6000, 0, 3, 0, 0, 500, AxlDxl, false);

	Wait(3000);
	SetVolume("SE03", 4000, 300, null);

	SetNwC("cg/fw/nw六波羅武者.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／大船武者】
<voice name="ｅｔｃ／大船武者" class="その他男声" src="voice/md04/026vs0030e163">
「我方阵营的，不要无谓牺牲!!
　统统闪开!!」

{	NwC("cg/fw/nw六波羅兵士Ｂ.png");}
//【ｅｔｃ／大船兵Ｂ】
<voice name="ｅｔｃ／大船兵Ｂ" class="その他男声" src="voice/md04/026vs0040e165">
「大尉!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵
//◆太刀一閃
//◆ずがーん。戦車撃破



	StL(1000, @100, @0, "cg/st/3d九〇式指揮官_立ち_戦闘c.png");
	OnSE("se特殊_鎧_駆動音01", 1000);
	Move("@StL*", 300, @-100, @0, Dxl1, false);
	FadeStL(300, true);

	WaitKey(300);
	DeleteStL(0, true);
	StL(1000, @0, @0, "cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	FadeStL(160, true);
	WaitKey(300);
	Move("@StL*", 300, @-50, @0, Dxl3, true);

	WaitKey(800);
	Move("@StL*", 300, @200, @0, Axl3, false);
	WaitKey(200);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateTextureSP("絵演1", 2002, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	WaitKey(150);
	OnSE("se戦闘_破壊_鎧04",1000);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 19000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");

	DeleteStL(0,true);

	
	FadeDelete("絵演1", 0, true);
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 1, 300, 30, false);
	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, true);
	WaitKey(250);
	StR(1000, @-250, @0, "cg/st/3d九〇式指揮官_立ち_戦闘b.png");
	FadeStR(0, true);
	Move("@StR*", 1000, @150, @0, Dxl1, false);
	FadeDelete("絵演*", 1000, true);

	SetNwC("cg/fw/nw六波羅武者.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／大船武者】
<voice name="ｅｔｃ／大船武者" class="その他男声" src="voice/md04/026vs0050e163">
「无需可怜我们的敌人！
　不堪一击就太没出息了！」

//【ｅｔｃ／大船武者】
<voice name="ｅｔｃ／大船武者" class="その他男声" src="voice/md04/026vs0060e163">
「在下小弓的朝比奈平八郎，是朝比奈弥太郎的
第三十代后裔。
　这关乎天下成败之战，对战死于此早已觉悟！」

//【ｅｔｃ／大船武者】
<voice name="ｅｔｃ／大船武者" class="その他男声" src="voice/md04/026vs0070e163">
「强敌，认输吧！
　我将打败你并成就功名!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃撃集中
	CreateTextureEXadd("絵背景100", 10000, 350, Middle, "cg/ef/ef044_火花c.png");


	CreateSE("SE03","se戦闘_銃器_機関銃乱射02_L");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MFlash(30,20);
	Shake("@StR*", 2500, 8, 1, 0, 0, 1000, Axl3, false);
	StR(1000, @-100, @0, "cg/st/3d九〇式指揮官_立ち_瀕死.png");
	FadeStR(300,false);

	Move("@StR*", 2000, @50, @0, Dxl1, false);

	Rotate("絵背景100", 10000, @0, @0, @360000, null,false);
	Fade("絵背景100", 0, 1000, null, true);
	Wait(50);
	Move("絵背景100", 0, -49, -551, null, true);
	Wait(50);
	Move("絵背景100", 0, -20, -350, null, true);
	Wait(50);
	Move("絵背景100", 0, -100, -580, null, true);
	Wait(50);
	Move("絵背景100", 0, -50, -650, null, true);
	Wait(50);
	Move("絵背景100", 0, -49, -551, null, true);
	Wait(50);
	Move("絵背景100", 0, -20, -350, null, true);
	Wait(50);
	Move("絵背景100", 0, -100, -580, null, true);
	Wait(50);
	Move("絵背景100", 0, -50, -650, null, true);
	FadeDelete("絵背景100", 200, true);



	SetNwC("cg/fw/nw六波羅武者.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／大船武者】
<voice name="ｅｔｃ／大船武者" class="その他男声" src="voice/md04/026vs0080e163">
「哦————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev802。砲撃ぼーん
//◆竜騎兵。直撃、散華
	CreateColorEX("黒幕１", 25000, "BLACK");

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateTextureEX("絵背景100", 1100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEXadd("絵背景200", 1100, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	SetVertex("絵背景*", 674, 293);

	Zoom("絵背景*", 1000, 2000, 2000, Dxl2, false);
	Fade("絵背景100", 50, 1000, null, true);
	Fade("絵背景200", 100, 1000, null, true);

	MFlash(0,0);

	Wait(500);
	OnSE("se戦闘_攻撃_火炎放射", 1000);

	CreateTextureSPover("絵演上", 19000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	DeleteStA(0, false);
	Delete("絵背景*");
	SetVertex("絵演*", 674, 293);
//	SetBlur("絵演上", true, 3, 300, 30, false);
	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, true);
	WaitKey(250);
	FadeDelete("絵演*", 1000, true);
	SetVolume("@SE0*", 2500, 0, null);
	WaitKey(500);

//◆空
	Fade("黒幕１", 2000, 1000, null, true);
	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);
	Wait(1000);
	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Request("絵背景100", Smoothing);

	Zoom("絵背景100", 0, 1200, 1200, null, true);

	Zoom("絵背景100", 10000, 1000, 1000, null, false);

	FadeDelete("黒幕１", 2000, true);

	SetFont("@黑体", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("字幕01",30411,Center,inherit,auto,auto,"一二月三日");
	Fade("字幕01", 0, 0, null, true);
	Request("字幕01",NoLog);
	Request("字幕01",PushText);
	Rotate("字幕01", 0, @0, @0, 90, null, false);
	Move("字幕01", 0, @300, @10, null, false);
	SetBacklog("一二月三日", null, null);



	Fade("字幕*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("字幕*", 300, 0, null, true);
	Delete("字幕*");
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　
　　　　　　　　　一二月三日

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
*/
//◆進駐軍騎。ワーウルフ
//◆横書き

/*
	CreateTextureEX("絵ＳＴＣ1001", 1400, @100, @-250, "cg/st/3dワーウルフ_騎航_戦闘.png");
	CreateTextureEX("絵ＳＴＣ1002", 1300, @-300, @-50, "cg/st/3dワーウルフ_騎航_戦闘.png");
	CreateTextureEX("絵ＳＴＣ1003", 1100, @-300, @-350, "cg/st/3dワーウルフ_騎航_戦闘.png");
	CreateTextureEX("絵ＳＴＣ1004", 1200, @-500, @-250, "cg/st/3dワーウルフ_騎航_戦闘.png");

	Request("絵ＳＴＣ100*", Smoothing);

	Zoom("絵ＳＴＣ1001", 0, 800, 800, null, false);
	Zoom("絵ＳＴＣ1002", 0, 500, 500, null, false);
	Zoom("絵ＳＴＣ1003", 0, 250, 250, null, false);
	Zoom("絵ＳＴＣ1004", 0, 300, 300, null, false);

	Shake("絵ＳＴＣ1001", 10000000, 1, 1, 0, 0, 600, null, false);
	Shake("絵ＳＴＣ1002", 10000000, 1, 1, 0, 0, 800, null, false);
	Shake("絵ＳＴＣ1003", 10000000, 1, 1, 0, 0, 1000, Dxl3, false);
	Shake("絵ＳＴＣ1004", 10000000, 1, 1, 0, 0, 900, Axl3, false);
	Fade("絵ＳＴＣ100*", 300, 1000, null, true);
*/


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



	CreateTextureEX("カメラ１/やられ役01", 600, @600, @-200, "cg/st/3dワーウルフ_騎航_戦闘.png");
	CreateTextureEX("カメラ１/やられ役02", 350, @700, @-0, "cg/st/3dガルム_騎航_戦闘.png");
	CreateTextureEX("カメラ１/やられ役03", 250, @700, @-300, "cg/st/3dユーウォーキー_騎航_通常.png");
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


	FadeDelete("絵背景100", 2000, false);
	MoveCamera("@カメラ１", 1500, 0, -50, @150, Dxl1, true);

//	SetBlur("カメラ１/やられ役01", true, 1, 500, 200, false);

	SetNwH("cg/fw/nyＧＨＱ竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／進駐軍騎Ｄ】
<voice name="ｅｔｃ／進駐軍騎Ｄ" class="その他男声" src="voice/md04/026vs0090e135">
《来了！
　<RUBY text="Ｚｅｒｏ　Ｄｒａｇｏｎ">新型机体</RUBY>！》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｂ.png");}
//【ｅｔｃ／進駐軍騎Ｅ】
<voice name="ｅｔｃ／進駐軍騎Ｅ" class="その他男声" src="voice/md04/026vs0100e136">
《动啊！　到处移动！
　不要让它瞄准了！》

{	NwH("cg/fw/nyＧＨＱ竜騎兵Ｂ.png");}
//【ｅｔｃ／進駐軍騎Ｅ】
<voice name="ｅｔｃ／進駐軍騎Ｅ" class="その他男声" src="voice/md04/026vs0110e136">
《那炮击似乎不善于连射。
　让它攻击落空，然后趁机接近干掉它！》

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆散開、運動
//◆それでも何騎か撃墜
	CreateColorEXadd("絵色100", 2500, "WHITE");
	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃01");
	CreateSE("SE02","se戦闘_バロウズ_ボーガン射撃01");
	CreateSE("SE03","se戦闘_衝撃_鎧散華");

	Request("プロセス１", Stop);
	Delete("プロセス１");

//	SetBlur("カメラ１/やられ役0*", false, 1, 500, 200, false);

	OnSE("se戦闘_動作_鎧_合当理吹かし01",1000);
	MoveCamera("@カメラ１", 500, -100, 50, @0, Dxl1, true);
	MoveCamera("@カメラ１", 1000, 300, 50, @-50, AxlDxl, true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 800, 600, "cg/ef/ef034_精神汚染.jpg", false);
	Move("カメラ１/やられ役04", 800, 2000, -200, AxlDxl, false);
	Move("カメラ１/やられ役02", 800, 1500, 300, AxlDxl, false);
	MoveCamera("@カメラ１", 500, -200, 0, @0, AxlDxl, true);
//	MoveCamera("@カメラ１", 500, 2000, -250, @0, AxlDxl, false);


	Move("カメラ１/やられ役01*", 500, 2000, -350, AxlDxl, false);
	MoveCamera("@カメラ１", 500, 2000, -250, @0, AxlDxl, true);

	CreateTextureEXover("絵演上", 19000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEXadd("絵演下", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 1, 300, 30, false);

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


/*
	CreateSE("SE03","se戦闘_動作_空突進03");
	MusicStart("SE03",0,500,0,1000,null,false);
	Move("絵ＳＴＣ1003", 100, @-600, @0, Axl1, true);
	WaitKey(500);

	CreateSE("SE02","se戦闘_動作_空突進03");
	MusicStart("SE02",0,500,0,1000,null,false);
	Move("絵ＳＴＣ1002", 100, @-600, @0, Axl3, true);
	WaitKey(500);


	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵ＳＴＣ1001", 200, @-700, @0, Dxl3, false);


	CreateColorSPadd("白", 20000, "#FFFFFF");
	Fade("白", 400, 0, null, false);


	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 19000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 1, 300, 30, false);
	Delete("絵ＳＴＣ100*");

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, true);
	WaitKey(150);

	FadeDelete("絵演*", 1000, true);

*/
//◆六波羅側、零零式
//◆縦書き


	CreateColorSP("黒幕１", 30000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵色100");
	Delete("絵演*");
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("カメラ１/やられ役*");


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



	CreateTextureEX("カメラ１/やられ役01a", 500, @200, @-200, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役02a", 350, @400, @-0, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役03a", 200, @400, @-300, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役04a", 100, @500, @-200, "cg/st/3d零零式竜騎兵_騎航_通常.png");
//	CreateTextureEX("カメラ１/やられ役01b", 500,  @200, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役02b", 350,  @400, @-0, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役03b", 200,  @400, @-300, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役04b", 100,  @500, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");

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

//	SetBlur("カメラ１/やられ役01a", true, 1, 500, 200, false);



	SetNwC("cg/fw/nw零零式竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／零零式Ｄ】
<voice name="ｅｔｃ／零零式Ｄ" class="その他男声" src="voice/md04/026vs0120e304">
《真蠢。
　你们的想法，我们早就看透了。》

{	NwC("cg/fw/nw零零式竜騎兵Ｂ.png");}
//【ｅｔｃ／零零式Ｅ】
<voice name="ｅｔｃ／零零式Ｅ" class="その他男声" src="voice/md04/026vs0130e305">
《那种程度的速度能逃得了吗？
　可不要小看我们的训练！》

{	NwC("cg/fw/nw零零式竜騎兵Ｃ.png");}
//【ｅｔｃ／零零式Ｆ】
<voice name="ｅｔｃ／零零式Ｆ" class="その他男声" src="voice/md04/026vs0140e306">
《一骑都不会让你们接近的……》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ピー。反応音

	CreateSE("SE01","se特殊_コックピット_アラーム");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw零零式竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／零零式Ｄ】
<voice name="ｅｔｃ／零零式Ｄ" class="その他男声" src="voice/md04/026vs0150e304">
《————!?》

//【ｅｔｃ／零零式Ｄ】
<voice name="ｅｔｃ／零零式Ｄ" class="その他男声" src="voice/md04/026vs0160e304">
《不好，是下方!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆下方からＳＴ－０９襲来
//	SetBlur("カメラ１/やられ役0*", false, 1, 500, 100, false);
	MoveCamera("@カメラ１", 300, 200, 800, @0, Axl1, false);
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

//	Delete("カメラ*");
	Request("プロセス*", Stop);
	Delete("プロセス*");

	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-200,@-800,null,true);

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, @-20, null,true);
	Fade("絵効果雨", 0, 150, null, true);

	CreateTextureEX("攻撃役01", 600, @-300, @-150, "cg/st/3dユーウォーキー_騎航_通常.png");
	CreateTextureEX("攻撃役02", 350, @50, @50, "cg/st/3dユーウォーキー_騎航_通常.png");
	Zoom("攻撃役01", 0, 800, 800, null, false);
	Zoom("攻撃役02", 0, 500, 500, null, false);
	Rotate("攻撃役01", 0, @0, @0, @40, null,true);
	Rotate("攻撃役02", 0, @0, @0, @50, null,true);


$ループムーブナット名 = "@攻撃役01";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@攻撃役02";
$ループムーブタイム２ = 20000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");
	Request("プロセス１", Start);
	Request("プロセス２", Start);
//	SetBlur("攻撃役01", true, 1, 500, 200, false);

	CreateSE("SE03","se戦闘_動作_空突進04");
	MusicStart("SE03",0,400,0,1000,null,false);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

	OnSE("se戦闘_動作_空突進02",1000);
	Shake("攻撃役01", 500, 50, 3, 0, 0, 500, Dxl3, false);
	Fade("攻撃役01", 300, 1000, null, true);

	OnSE("se戦闘_動作_空突進02",1000);
	Shake("攻撃役02", 500, 50, 3, 0, 0, 500, Dxl3, false);
	Fade("攻撃役02", 300, 1000, null, true);

	SetNwC("cg/fw/nw零零式竜騎兵Ｃ.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／零零式Ｆ】
<voice name="ｅｔｃ／零零式Ｆ" class="その他男声" src="voice/md04/026vs0170e306">
《啊……!?》

{	NwC("cg/fw/nw零零式竜騎兵Ｂ.png");}
//【ｅｔｃ／零零式Ｅ】
<voice name="ｅｔｃ／零零式Ｅ" class="その他男声" src="voice/md04/026vs0180e305">
《可恶，隐形龙骑兵吗？
　什么时候靠近的！》

{	NwC("cg/fw/nw零零式竜騎兵Ａ.png");}
//【ｅｔｃ／零零式Ｄ】
<voice name="ｅｔｃ／零零式Ｄ" class="その他男声" src="voice/md04/026vs0190e304">
《后退！
　跟那东西搏斗可占不到便宜！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆散ろうとする零零式
//◆何騎か攻撃食らう
	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進03",1000);


	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

//	Delete("カメラ*");
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("攻撃役*");
	Delete("絵効果雨");

	CreateTextureSP("攻撃役01", 600, @300, @850, "cg/st/3dユーウォーキー_騎航_通常.png");
	CreateTextureSP("攻撃役02", 350, @50, @1050, "cg/st/3dユーウォーキー_騎航_通常.png");
	Zoom("攻撃役01", 0, 1000, 1000, null, false);
	Zoom("攻撃役02", 0, 800, 800, null, false);
	Rotate("攻撃役01", 0, @0, @0, @40, null,true);
	Rotate("攻撃役02", 0, @0, @0, @50, null,true);
//	SetBlur("攻撃役*", true, 1, 500, 100, false);

/*
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
*/

	MoveCamera("@カメラ１", 0, 100, 500, @100, null, true);
	CreateSE("SE02","se戦闘_動作_空突進01");
	CreateSE("SE03","se戦闘_攻撃_鎧_剣戟01");
	CreateSE("SE04","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	CreateSE("SE05","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE05","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE06","se戦闘_衝撃_鎧散華");
	CreateSE("SE07","se戦闘_破壊_鎧03");

	CreateTextureEXadd("絵背景100", 2000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Move("絵背景100", 0, @200, @0, null, true);
	Zoom("絵背景100", 0, 2500, 2500, null, true);
	Rotate("絵背景100", 0, @0, @0, @90, null,true);
	CreateTextureEXadd("絵背景200", 2000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Move("絵背景200", 0, @-300, @100, null, true);
	Zoom("絵背景200", 0, 2500, 2500, null, true);
	Rotate("絵背景200", 0, @0, @0, @70, null,true);


	MoveCamera("@カメラ１", 1000, -100, 200, @-100, Dxl1, false);
	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("黒幕１");
//	SetBlur("カメラ１/やられ役0*", true, 1, 500, 100, false);

	Move("カメラ１/やられ役01a", 2500, @100, @200, AxlDxl, false);
	Move("カメラ１/やられ役02a", 2400, @-200, @100, AxlDxl, false);
	Move("カメラ１/やられ役03a", 2000, @1000, @-800, AxlDxl, false);
	Move("カメラ１/やられ役04a", 2000, @-850, @-150, AxlDxl, false);
	MusicStart("SE02",0,500,0,1000,null,false);
	Zoom("絵背景100", 1500, 2500, 2500, Dxl2, false);
	Fade("絵背景100", 400, 1000, Axl3, false);
	Move("攻撃役01", 400, @-1000, @-2000, null, true);
	FadeDelete("絵背景100", 1000, false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Shake("カメラ１/やられ役01a", 1500, 10, 5, 0, 0, 1000, Dxl2, false);
	Move("カメラ１/やられ役01a", 2000, @-100, @1000, Axl2, false);

	MusicStart("SE03",0,500,0,1000,null,false);
	Zoom("絵背景200", 1500, 2500, 2500, Dxl2, false);
	Fade("絵背景200", 400, 1000, Axl3, false);
	Move("攻撃役02", 400, @-1050, @-2500, null, true);
	FadeDelete("絵背景200", 1000, false);
	MusicStart("SE05",0,1000,0,1000,null,false);
	Shake("カメラ１/やられ役02a", 1500, 13, 2, 0, 0, 1000, Dxl2, false);
	Move("カメラ１/やられ役02a", 2500, @-50, @1200, Axl2, false);


	Wait(300);
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateColorSPadd("ばく１", 17000, "#990000");
	CreateColorSPadd("ばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばく０", 15000, "#FFFFFF");
	DrawTransition("ばく１", 0, 1000, 200, 800, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("ばく２", 0, 1000, 400, 500, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("ばく０", 0, 1000, 600, 100, null, "cg/data/circle_12_01_1.png", true);
	FadeDelete("ばく*", 1000, true);
	FadeDelete("カメラ１/やられ役*", 1000, false);

	MusicStart("SE07",0,1000,0,1000,null,false);
	CreateColorSPadd("ばく１", 17000, "#990000");
	CreateColorSPadd("ばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばく０", 15000, "#FFFFFF");
	DrawTransition("ばく１", 0, 1000, 200, 800, null, "cg/data/circle_13_00_0.png", false);
	DrawTransition("ばく２", 0, 1000, 400, 500, null, "cg/data/circle_13_00_0.png", false);
	DrawTransition("ばく０", 0, 1000, 600, 100, null, "cg/data/circle_13_00_0.png", true);
	FadeDelete("ばく*", 1000, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("絵演");
	Delete("絵ＳＴＣ100*");


	CreateTextureSP("絵演", 900, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Zoom("絵演", 0, 2000, 2000, null, false);

	CreateTextureEX("絵ＳＴＣ1001", 1200,  @-800, @-300, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ1002", 1100,  @-800, @-600, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ1003", 1000,  @-1000, @-200, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ1004", 1050,  @-900, @-400, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ2001", 1400, @500, @-150, "cg/st/3dワーウルフ_騎航_戦闘.png");
	CreateTextureEX("絵ＳＴＣ2002", 1300, @700, @-350, "cg/st/3dワーウルフ_騎航_戦闘.png");
	CreateTextureEX("絵ＳＴＣ2003", 1000, @700, @-250, "cg/st/3dワーウルフ_騎航_戦闘.png");
	CreateTextureEX("絵ＳＴＣ2004", 1200, @600, @-0, "cg/st/3dワーウルフ_騎航_戦闘.png");

	Request("絵ＳＴＣ200*", Smoothing);

	Zoom("絵ＳＴＣ2001", 0, 200, 200, null, false);
	Zoom("絵ＳＴＣ2002", 0, 150, 150, null, false);
	Zoom("絵ＳＴＣ2003", 0, 100, 100, null, false);
	Zoom("絵ＳＴＣ2004", 0, 150, 150, null, false);

	Request("絵ＳＴＣ100*", Smoothing);

	Zoom("絵ＳＴＣ1001", 0, 300, 300, null, false);
	Zoom("絵ＳＴＣ1002", 0, 200, 200, null, false);
	Zoom("絵ＳＴＣ1003", 0, 150, 150, null, false);
	Zoom("絵ＳＴＣ1004", 0, 200, 200, null, false);

	CreateSE("SE01","se戦闘_動作_空突進01");

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@0,@0,null,true);


	Zoom("絵演", 3000, 1000, 1000, Axl3, false);
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);


	Fade("絵ＳＴＣ*", 1000, 1000, null, true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	OnSE("se戦闘_動作_空突進02", 1000);

	FadeDelete("絵ＳＴＣ*", 1000, false);
	Move("絵ＳＴＣ1*", 1000, @600, @0, Dxl2, false);
	Move("絵ＳＴＣ2*", 1000, @-600, @0, Dxl2, false);
	Zoom("絵ＳＴＣ*", 1000, 0, 0, null, true);


	CreateTextureEXadd("絵背景100", 10000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");

	Zoom("絵背景100", 8000, 1500, 1500, null, false);
	Fade("絵背景100", 100, 1000, Dxl1, false);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("ばく１", 17000, "#990000");
	CreateColorSPadd("ばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばく０", 15000, "#FFFFFF");
	DrawTransition("ばく１", 0, 1000, 150, 300, null, "cg/data/circle_06_00_0.png", false);
	DrawTransition("ばく２", 0, 1000, 160, 200, null, "cg/data/circle_06_00_0.png", false);
	DrawTransition("ばく０", 0, 1000, 170, 100, null, "cg/data/circle_06_00_0.png", true);
	FadeDelete("ばく*", 100, false);
	Wait(50);

	EffectZoomadd(15000, 10000, 0, "cg/ef/ef034_精神汚染.jpg", false);

	CreateSE("SE02","se戦闘_衝撃_鎧散華");
	MusicStart("SE02",0,300,0,1000,null,false);
	CreateColorSPadd("ばばく１", 17000, "#990000");
	CreateColorSPadd("ばばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばばく０", 15000, "#FFFFFF");
	DrawTransition("ばばく１", 20, 1000, 130, 300, null, "cg/data/circle_07_00_0.png", false);
	DrawTransition("ばばく２", 20, 1000, 140, 200, null, "cg/data/circle_07_00_0.png", false);
	DrawTransition("ばばく０", 20, 1000, 150, 100, null, "cg/data/circle_07_00_0.png", true);
	FadeDelete("ばばく*", 100, false);

	WaitKey(500);
	CreateSE("SE01","se戦闘_衝撃_鎧散華");
	MusicStart("SE01",0,800,0,1000,null,false);
	CreateColorSPadd("ばばばく１", 17000, "#990000");
	CreateColorSPadd("ばばばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばばばく０", 15000, "#FFFFFF");
	DrawTransition("ばばばく１", 0, 1000, 140, 300, null, "cg/data/circle_05_00_0.png", false);
	DrawTransition("ばばばく２", 0, 1000, 150, 200, null, "cg/data/circle_05_00_0.png", false);
	DrawTransition("ばばばく０", 0, 1000, 160, 100, null, "cg/data/circle_05_00_0.png", true);
	FadeDelete("ばばばく*", 100, false);


	Wait(50);
	CreateSE("SE00","se戦闘_衝撃_鎧散華");
	MusicStart("SE00",0,400,0,1000,null,false);
	CreateColorSPadd("ばばばばばく１", 17000, "#990000");
	CreateColorSPadd("ばばばばばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばばばばばく０", 15000, "#FFFFFF");
	DrawTransition("ばばばばばく１", 0, 1000, 100, 300, null, "cg/data/circle_10_00_0.png", false);
	DrawTransition("ばばばばばく２", 0, 1000, 110, 200, null, "cg/data/circle_10_00_0.png", false);
	DrawTransition("ばばばばばく０", 0, 1000, 120, 100, null, "cg/data/circle_10_00_0.png", true);

	FadeDelete("ばばばばばく*", 300, false);


	Wait(500);
	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("停滞", 1500, 0, null);

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_027.nss"