//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_044vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
//あきゅん「ＣＰ：ここのシーンＣＰ出してない気がしたので退避」
	//CP_AllSet("バロウズ");

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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;


	Cockpit_AllFade0();
	//CP_AllDelete();

	$GameName = "mc04_045vs.nss";

}

scene mc04_044vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_043vsb.nss"


//◆香奈枝サイド
	PrintBG("上背景", 30000);

	CreateColorSP("絵色100", 20000, "BLACK");
	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);

	BGMoveAuto("@絵背景50",1);
	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CreateTextureSP("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Rotate("絵狸", 0, @0, @0, @30, null,true);
	Zoom("絵狸", 0, 30, 30, null, true);
	Move("絵狸", 0, @0, @300, null, true);
	SetBlur("絵狸", true, 1, 200, 50, false);

	$効果ナット名２ = @絵狸;
	CreateProcess("プロセス２", 150, 0, 0, "RotateLoop");
	SetAlias("プロセス２","プロセス２");

	CreateTextureEXadd("絵スパーク", 17500, Center, Middle, "cg/ef/ef044_火花c.png");
	Zoom("絵スパーク", 0, 100, 100, null, true);

	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE10","se戦闘_動作_空突進05");


	CloudZoomSet(1000);
	CloudZoomVertex(500,@0,@0,null,false);

	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);
	SetFrequency("SE10", 2000, 1200, null);

	Shake_Loop("@絵狸","shake02");
	Request("プロセス１", Start);
	Request("プロセス２", Start);
	CloudZoomStart(1000,800,800,1000,1000);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);
	Zoom("絵背景50", 1000, 1400, 1400, Dxl2, false);
	Move("絵狸", 1000, @0, @-300, Dxl2, false);
	DrawDelete("絵色100", 300, 100, "zoom_01_00_1", true);
	SetVolume("SE10", 3000, 300, null);


	Wait(500);
	CreateColorEXadd("紅蓮", 1600, "BLUE");

//	FadeF4("絵狸", 500, 600, 200000, 0, 0, null, false);
//	FadeF4("絵狸２", 500, 300, 100000, 0, 0, null, false);

	Fade("絵演窓上*", 500, 0, null, false);
	Fade("明度", 500, 0, null, true);
	Delete("絵演窓上*");
	Delete("明度");


	CreateSE("SE21","se特殊_電撃_放電02");
	CreateSE("SE10","se特殊_陰義_レールガン穿_準備");

	MusicStart("SE21",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,500,0,1000,null,true);
	Fade("絵スパーク", 50, 1000, null, false);
	Rotate("絵スパーク", 1000, @0, @0, 6000, null,false);
	Zoom("絵スパーク", 1000, 500, 500, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef045_スパーク.jpg", true);
	FadeDelete("絵スパーク", 500, false);

	Move("絵背景100", 100000, @0, @50, Dxl2, false);
	Zoom("絵背景100", 100000, 3000, 3000, Dxl2, false);
	Fade("紅蓮", 500, 500, null, false);
	Fade("絵背景100", 1000, 500, null, true);


	Wait(500);
	SoundPlay("@mbgm12",0,1000,true);

	SetFwR("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/044vs0010a03">
「————呃?!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　大鸟香奈枝并不了解。

　不了解<RUBY text="····">这股力量</RUBY>。

　明白的，只有一件事。
　
　这是——致死现象。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 30000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Request("プロセス１", Stop);
	Delete("プロセス１");
	Request("プロセス２", Stop);
	Delete("プロセス２");
	CloudZoomDelete(0,true);

	ClearFadeAll(0, true);
	//CP_AllDelete();


}

..//ジャンプ指定
//次ファイル　"mc04_045vs.nss"
