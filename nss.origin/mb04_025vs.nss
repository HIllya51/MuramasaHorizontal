//<continuation number="560">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_025vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
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
	#bg003_荒れ野_03=true;
	#bg047_景明故郷町b_03=true;
	#bg014_鎌倉繁華街_03=true;
	#bg002_空a_03=true;
	#ev504_村正突進=true;
	#ev948_正宗突進汎用=true;
	#bg201_旋回演出背景市街地_03=true;
	#ev917_正宗朧焦屍剣=true;
	#ev916_正宗飛蛾鉄炮·弧炎錫=true;
	#ev947_村正斬撃汎用=true;
	#ev915_鍔競り合う村正と正宗=true;
	#ev902_村正電磁抜刀レールガン_c=true;
	#ev902_村正電磁抜刀レールガン_e=true;
	#ev902_村正電磁抜刀レールガン_d=true;
	#ev162_村正ＶＳ正宗決着=true;
	#ev138_首領の最期_d=true;
	#ev139_統を殺害_b=true;
	#ev128_病床の光_a=true;
	#ev163_真っ二つの正宗_a=true;
	#ev163_真っ二つの正宗_b=true;
	#ev159_一導の生首_b=true;
	#ev163_真っ二つの正宗_c=true;
	#ev165_最終正宗_a=true;
	#ev165_最終正宗_b=true;
	#ev165_最終正宗_c=true;
	#ev993_一条カットイン=true;
	#ev996_景明カットイン=true;



	//▼ルートフラグ、選択肢、次のGameName
	#msong02=true;
	#msong04=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_026.nss";

	//★ＥＤロール超速対応
	PreSetRoll(0);
	TheEND(0);
}

scene mb04_025vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_024.nss"









//◆戦闘開始
	PrintBG("上背景", 30000);

//	SoundPlay("@msong04_full",0,1000,true);
//	CreateBGMEX("歌ループ用","msong04_arrange",118617,185272);
	SoundPlay("@msong04_arrange",0,1000,true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg003_荒れ野_03.jpg");
	CreateTextureSP("絵背景70", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	CreateColorEXadd("絵色100", 1500, "#770000");
	CreateColorEXadd("絵色200", 1500, "#000077");

	DrawTransition("絵色100", 0, 500, 500, 500, null, "cg/data/beam_01_00_0.png", true);

	DrawTransition("絵色200", 0, 500, 500, 500, null, "cg/data/beam_02_00_0.png", true);


	CreateSE("SE01","se戦闘_攻撃_乱戦02");
	MusicStart("SE01",3000,500,0,1000,null,true);


	Move("絵背景100", 20000, @200, @0, null, false);
	Move("絵背景70", 20000, @200, @0, null, false);
	FadeDelete("上背景", 2000, true);


//	CreateMovieEX("村正宗", 300, 0, 0, false, false, "dx/mv正宗ＶＳ村正.ngs");
//	SetAlias("村正宗","村正宗");
	CreateSE("SE11","se特殊_mv用_正宗ＶＳ村正");
	MusicStart("SE11",0,500,0,1000,null,false);

//	Fade("村正宗", 1000, 800, null, false);


	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 500, 0, null, true);

	Fade("絵色200", 0, 1000, null, true);
	Fade("絵色200", 500, 0, null, true);

	Wait(300);

	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 500, 0, null, true);

	Wait(100);

	Fade("絵色200", 0, 1000, null, true);
	Fade("絵色200", 500, 0, null, true);


	Fade("村正宗", 2000, 0, null, false);
	Fade("絵色200", 0, 1000, null, true);
	Fade("絵色200", 500, 0, null, true);

	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 500, 0, null, true);

	FadeDelete("絵背景100", 3000, false);
	Wait(800);

	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 500, 0, null, true);

	Fade("絵色200", 0, 1000, null, true);
	Fade("絵色200", 500, 0, null, true);

	Wait(300);

	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 500, 0, null, true);

	Wait(600);

	Fade("絵色200", 0, 1000, null, true);
	Fade("絵色200", 500, 0, null, true);

	SetVolume("SE*", 3000, 0, null);


	Fade("絵色100", 0, 1000, null, true);
	FadeDelete("絵色100", 500, true);

	Wait(300);

	Fade("絵色200", 0, 1000, null, true);
	FadeDelete("絵色200", 500, true);

	FadeDelete("絵背景70", 1000, true);
	Delete("村正宗");


//◆空。夕→夜
//◆ぶつかり合う赤と青の軌跡

//◆地上
//◆義清
	SetFwC("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/025vs0010b21">
「……深红与……深蓝……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆別のどこか
//◆桜子と黒瀬童子
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg047_景明故郷町b_03.jpg");

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Wait(300);

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/025vs0020b26">
「姐姐，那是……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/025vs0030b28">
「……为什么……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆別所
//◆雪車町
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg014_鎌倉繁華街_03.jpg");

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mb04/025vs0040a12">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆戦闘用挿入歌
//◆↑あれば。無い場合はシナリオ·演出から再考か。
//◆また、再生開始タイミングは三択。ここか、両騎
//◆装甲シーンの頭or末尾。





//おがみ：素材定義
	CreateColorEXadd("上背景", 15000, "WHITE");
	Fade("上背景", 100, 1000, null, true);

//おがみ：素材定義_背景
	CreateTextureSP("絵背景100", 100, Center, -1864, "cg/bg/bg201_旋回演出背景市街地_03.jpg");

//おがみ：サーフェース定義
	CreateTextureEX("絵背景150", 10000, 0, 0, "cg/bg/bg002_空a_03.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 12000, 2000, null, true);
//おがみ：サーフェース作成
	CreateSurfaceEX("絵Suf",1000,2000,"絵背景150");
	Rotate("絵Suf", 0, @0, @0, @20, null,true);

//おがみ：素材定義_キャラクター
	CreateTextureEX("絵演村正", 1010, Center, Middle, "cg/st/3d村正最終_騎突_戦闘.png");
	Request("絵演村正*", Smoothing);
	Rotate("絵演村正*", 0, @0, @0, @0, null,true);
	Zoom("絵演村正*", 0, 5, 5, null, true);
	Move("絵演村正", 0, 177,-213, null, true);
//	SetBlur("絵演村正", true, 1, 300, 70, false);

	CreateTextureEX("絵演バロウズ", 1020, Center, Middle, "cg/st/3d村正最終_騎航_通常3.png");
	Request("絵演バロウズ", Smoothing);
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Zoom("絵演バロウズ", 0, 5000, 5000, null, true);
	Move("絵演バロウズ", 0, 77,-413, null, true);
//	SetBlur("絵演バロウズ", true, 1, 300, 50, false);


//おがみ：素材定義_エフェクト
	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@400,@0,null,false);

	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

//おがみ：素材定義_SE
	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE05","se戦闘_動作_空突進04");
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateSE("SE11","se戦闘_動作_空突進05");
	CreateSE("SE20","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE21","se戦闘_動作_鎧_合当理吹かし01");

//おがみ：動作開始
	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("プロセス１", Start);

	Shake("絵演村正", 2500, 1, 0, 0, 0, 1000, Axl2, false);
	Zoom("絵演村正", 1300, 50, 50, Axl1, false);
	Fade("絵演村正", 300, 1000, null, false);
	Move("絵背景100", 3000, @0, -1500, Axl1, false);

	FadeDelete("上背景", 500, true);

	SetVolume("SE11", 2300, 1000, null);
	Wait(500);

	Rotate("絵演村正", 600, @0, @0, @-65, Axl2,false);
	BezierMove("絵演村正", 600, (177,-213){180,10}{160,10}(-1013,-348), Axl3, false);
	Fade("絵演村正", 300, 1000, null, false);

	Wait(150);
	Zoom("絵演村正", 400, 10000, 10000, Axl3, false);
	Wait(250);

	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("絵背景100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(100);

//おがみ：サーフェース動作
	Fade("絵背景150", 0, 1000, null, false);
	Fade("絵Suf", 100, 1000, null, false);
	Move("@絵背景150", 500, @4048, @0, AxlDxl, false);

	Fade("絵演村正", 100, 0, null, true);
	SetFrequency("SE10", 0, 1200, null);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//	Fade("絵色100", 500, 1000, null, true);

	SetVolume("SE*", 1000, 0, null);



	Delete("プロセス１");
	Delete("プロセス２");
	Delete("絵背景*");
	Delete("合当理火花*");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");
	Delete("絵演*");
	Delete("絵Suf");


	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	CreateTextureSP("絵村正", 100, Center, Middle, "cg/ev/ev504_村正突進.jpg");


	OnSE("se戦闘_動作_空突進03",1000);

//	SetBlur("絵村正", true, 1, 500, 200, false);
	Zoom("絵村正", 10000, 1200, 1200, Dxl1, false);
	EffectZoomDXadd(10000, 300, 100, "#FFFFFF", "cg/ev/ev504_村正突進.jpg", false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

//◆村正突進



	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0050a00">
「哦啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//おがみ：素材定義
	CreateColorEXadd("上背景", 15000, "WHITE");
	Fade("上背景", 100, 1000, null, true);
	Delete("絵村正");

//おがみ：素材定義_背景
	CreateTextureSP("絵背景100", 100, Center, -1864, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);

//おがみ：サーフェース定義
	CreateTextureEX("絵背景150", 10000, 0, 0, "cg/bg/bg002_空a_03.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 12000, 2000, null, true);
//おがみ：サーフェース作成
	CreateSurfaceEX("絵Suf",1000,2000,"絵背景150");
	Rotate("絵Suf", 0, @0, @0, @-20, null,true);

//おがみ：素材定義_キャラクター
	CreateTextureEX("絵演村正", 1010, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵演村正*", Smoothing);
	Rotate("絵演村正*", 0, @0, @0, @0, null,true);
	Zoom("絵演村正*", 0, 5, 5, null, true);
	Move("絵演村正", 0, -677,-213, null, true);
//	SetBlur("絵演村正", true, 1, 300, 70, false);


	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

//	CloudZoomSet(1000);
//	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-800,@0,null,false);

	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

//おがみ：素材定義_SE
	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE05","se戦闘_動作_空突進04");
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateSE("SE11","se戦闘_動作_空突進05");
	CreateSE("SE20","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE21","se戦闘_動作_鎧_合当理吹かし01");

//おがみ：動作開始
	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("プロセス１", Start);

	Shake("絵演村正", 2500, 1, 0, 0, 0, 1000, Axl2, false);
	Zoom("絵演村正", 1300, 50, 50, null, false);
	Fade("絵演村正", 300, 1000, null, false);
	Move("絵背景100", 3000, @0, -1500, Axl1, false);

	FadeDelete("上背景", 500, true);

	SetVolume("SE11", 2300, 1000, null);
	Wait(500);

	Rotate("絵演村正", 600, @0, @0, @65, Axl2,false);
	BezierMove("絵演村正", 600, (-677,-213){-480,10}{-460,10}(2013,-348), Axl3, false);
	Fade("絵演村正", 300, 1000, null, false);

	Wait(150);
	Zoom("絵演村正", 400, 10000, 10000, Axl3, false);
	Wait(250);

	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("絵背景100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(100);

//おがみ：サーフェース動作
	Fade("絵背景150", 0, 1000, null, false);
	Fade("絵Suf", 100, 1000, null, false);
	Move("@絵背景150", 500, @-4048, @0, AxlDxl, false);

	Fade("絵演村正", 100, 0, null, true);
	SetFrequency("SE10", 0, 1200, null);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//	Fade("絵色100", 500, 1000, null, true);

	SetVolume("SE*", 1000, 0, null);



	Delete("プロセス１");
	Delete("プロセス２");
	Delete("絵背景*");
	Delete("合当理火花*");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");
	Delete("絵演*");
	Delete("絵Suf");


//◆正宗突進
	OnSE("se戦闘_動作_空突進03",1000);
	CreateTextureEX("絵正宗", 100, Center, Middle, "cg/ev/ev948_正宗突進汎用.jpg");
	SetBlur("絵正宗", true, 1, 500, 200, false);
	Zoom("絵正宗", 10000, 1200, 1200, Dxl1, false);
	Fade("絵正宗", 0, 1000, null, false);
	EffectZoomDXadd(10000, 300, 100, "#FFFFFF", "cg/ev/ev948_正宗突進汎用.jpg", false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_0", true);


	SetFwL("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0060a02">
「啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆相撃。ガキーン。
	CreateTextureEX("絵背景500", 15000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Request("絵背景500", Smoothing);
//	SetBlur("絵背景500", true, 1, 500, 100, false);

	CreateColorEXadd("絵色100", 35000, "WHITE");


	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("絵正宗", 200, false);
	Zoom("絵背景500", 3000, 1500, 1500, Dxl2, false);
	Fade("絵背景500", 100, 1000, null, false);
	EffectZoomDXadd(18000, 1000, 100, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", true);

	Fade("絵色100", 500, 1000, null, true);

	Delete("絵背景500");

	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateTextureSP("絵演バロウズ", 1000, Center, Middle, "cg/st/3d正宗_騎航_戦闘a2.png");
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Zoom("絵演村正", 0, 800, 800, null, true);
	Zoom("絵演バロウズ", 0, 50, 50, null, true);

//	SetBlur("絵演村正", true, 1, 300, 100, false);
	SetBlur("絵演バロウズ", true, 1, 300, 100, false);


	Move("絵演村正", 0, @50, @0, null, true);
	Move("絵演バロウズ", 0, @-300, @-60, null, true);


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

	CloudZoomSet(1000);
	CloudZoomStartB(1000,500,500,500,300);
	CloudZoomVertex(500,@-300,@0,null,false);


	Move("絵背景100", 30000, @0, @-200, null, false);

	FadeDelete("絵色100", 500, false);
	DrawDelete("黒幕１", 150, 100, "slide_01_01_0", false);
	Zoom("絵演村正*", 1000, 1000, 1000, Dxl2, false);
	Move("絵演バロウズ*", 900, @-60, @0, Dxl2, false);
	Move("絵演村正*", 1000, @160, @0, Dxl2, true);


	Request("プロセス１", Start);
	Request("プロセス２", Start);




	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　——一切都豁然开朗了。

　已经全部都明白了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色ガッタリ", 1005, "WHITE");
	DrawTransition("絵色ガッタリ", 0, 500, 500, 500, null, "cg/data/circle_03_00_0.png", false);


	Request("プロセス１", Stop);
	Request("プロセス２", Stop);
	Delete("プロセス１");
	Delete("プロセス２");

	OnSE("se戦闘_動作_鎧_合当理吹かし01",800);

	OnSE("se戦闘_動作_空突進08",1000);
	Fade("絵色ガッタリ", 300, 1000, null, false);

	Wait(150);

	Zoom("絵演村正*", 300, 2000, 2000, Axl2, false);
	Move("絵演村正*", 300, @560, @0, Axl2, false);
	Move("絵演バロウズ*", 300, @-260, @0, Axl2, false);
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Axl2, "cg/data/slide_01_01_0.png", true);

	Delete("絵演*");
	Delete("絵背景100");
	Delete("絵色ガッタリ");
	CloudZoomDelete(0,true);

//◆村正側
	CreateTextureSP("絵村正", 100, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	Request("絵村正", Smoothing);
	Zoom("絵村正", 0, 1100, 1100, null, true);
	SetBlur("絵村正", true, 1, 500, 100, false);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

$ループムーブナット名 = "@絵村正";
$ループムーブタイム = 3000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス２","プロセス２");


	Request("プロセス１", Start);
	Request("プロセス２", Start);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　敌人一味地追求着所谓的“人类的正义”。
　仿佛是未成年的孩子般，纯粹而坚定。

　非常率直。
　这样的追求究竟错在哪里了呢。

　没有错。
　没有任何的错。

　我如此思忖。
　
　没错，自己是明白的。

　一直都明白的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0070a00">
「磁力加速！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆村正磁気加速

	CreateColorEXadd("絵色100", 15000, "WHITE");

	OnSE("se特殊_陰義_磁力加速01",1000);
	Zoom("絵村正", 700, 5000, 5000, Axl3, false);
	EffectZoomDXadd(10000, 300, 100, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);

	Wait(200);

	Fade("絵色100", 300, 1000, Axl2, true);


	CreateTextureSP("絵正宗", 100, Center, Middle, "cg/ev/ev948_正宗突進汎用.jpg");
	Request("絵正宗", Smoothing);
	Zoom("絵正宗", 0, 1100, 1100, null, true);
	SetBlur("絵正宗", true, 1, 500, 100, false);

	Delete("絵村正");
	Delete("プロセス２");

$ループムーブナット名２ = "@絵正宗";
$ループムーブタイム２ = 3000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");

	Request("プロセス２", Start);

	FadeDelete("絵色100", 500, true);



//◆正宗側


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　敌人锲而不舍地想要制止自己。
　制止有可能成为下一个银星号的自己。

　这份畏惧是毫无缘由的吗？
　不。并非如此。

　自己的确正企图假借正义之名来引发战乱。
　从此种意义上来说，自己甚至已有资格成为播撒无数
战乱火种的魔王继承人。

　我如此思忖。
　
　没错，自己是明白的。

　一直都明白的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0080a02">
「胧——焦尸剑！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_正宗_朧焦屍剣");
	CreateSE("SE02","se戦闘_攻撃_火炎放射");
	MusicStart("SE01",0,1000,0,1000,null,false);
//◆正宗ヒートソード
	CreateTextureEX("絵正宗演出用", 100, Center, Middle, "cg/ev/resize/ev917_正宗朧焦屍剣l.jpg");
	CreateTextureEXadd("絵正宗炎", 100, Center, Middle, "cg/ef/ef028_汎用火炎放射.jpg");
	CreateTextureEX("絵正宗２", 100, Center, Middle, "cg/ev/ev917_正宗朧焦屍剣.jpg");
	SetBlur("絵正宗演出用", true, 1, 500, 70, false);
//	SetBlur("絵正宗炎", true, 2, 500, 200, false);
	Zoom("絵正宗炎", 0, 2000, 2000, null, true);
	Rotate("絵正宗炎", 0, @0, @0, @-30, null,true);

	DrawEffect("絵正宗炎", 50, "LowWave ", 0, 100, null);

	Delete("絵背景効果線");
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Fade("絵正宗炎", 200, 1000, null, false);
	Fade("絵正宗演出用", 200, 1000, null, false);
	Move("絵正宗演出用", 500, -1024, 0, Dxl2, true);

	Delete("絵正宗");

	WaitKey(300);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("絵正宗炎", 1000, false);
	Zoom("絵正宗演出用", 800, 500, 500, Axl3, false);
	Move("絵正宗演出用", 800, -512, -288, Axl3, false);

	Wait(500);

	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ev/ev917_正宗朧焦屍剣.jpg", false);
	Fade("絵正宗２", 200, 1000, null, true);
	Delete("絵背景効果線");
	Delete("絵正宗");

	Wait(800);

	SetVolume("SE*", 2000, 0, null);


//◆村正リニア突進
	CreateTextureEX("絵村正", 100, Center, Middle, "cg/ev/ev504_村正突進.jpg");

	CreateSE("SE05","se特殊_雰囲気_共鳴01");
	MusicStart("SE05",0,1000,0,1000,null,true);

	Fade("絵村正", 200, 1000, null, false);
	EffectZoomDXadd(10000, 300, 100, "#FFFFFF", "cg/ev/ev504_村正突進.jpg", true);
	Delete("絵正宗２");
	Delete("絵正宗炎");
	Delete("絵正宗演出用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　与绫弥一条的悲愿共鸣。
　不为其他，仅是出于对那份崇高的尊重。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗ヒートソード突進
	CreateTextureEX("絵正宗", 100, Center, Middle, "cg/ev/ev917_正宗朧焦屍剣.jpg");
	Fade("絵正宗", 200, 1000, null, false);
	EffectZoomDXadd(10000, 300, 100, "#FFFFFF", "cg/ev/ev917_正宗朧焦屍剣.jpg", true);
	Delete("絵村正");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　与凑斗景明的谏止共鸣。
　不为其他，仅是出于对那份沉重的尊重。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆二騎接近
	CreateColorEX("絵色100", 15000, "WHITE");
	Fade("絵色100", 200, 1000, null, true);


	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("絵正宗");


	CreateWindow("絵ＷＬ", 150, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 500, Center, -400, "cg/st/3d正宗_騎航_戦闘b.png");
	Request("絵ＷＬ*", Smoothing);
//	SetBlur("絵ＷＬ/絵ＳＴＬ", true, 1, 300, 120, false);
	SetAlias("絵ＷＬ","絵ＷＬ");

	Move("絵ＷＬ/絵背景Ｌ100", 0, @312, @0, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @-120, @230, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);

	CreateWindow("絵ＷＲ", 150, Center, 576, 1024, 288, true);
	SetAlias("絵ＷＲ","絵ＷＲ");
	CreateTextureEX("絵ＷＲ/絵背景Ｒ100", 100, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureEX("絵ＷＲ/絵ＳＴＲ", 500, Center, -600, "cg/st/3d村正標準_騎航_戦闘b.png");
	Request("絵ＷＲ*", Smoothing);
//	SetBlur("絵ＷＲ/絵ＳＴＲ", true, 1, 300, 120, false);
	SetAlias("絵ＷＲ","絵ＷＲ");

	Move("絵ＷＲ/絵背景Ｒ100", 0, @-212, @144, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @120, @230, null, true);
	Move("絵ＷＲ", 0, @0, @-288, null, true);

	Rotate("絵ＷＲ/絵背景Ｒ100", 0, @0, @-180, @0, null,true);

	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Move("絵ＷＬ/絵ＳＴＬ", 0, @-190, @-200, Dxl2, true);
	Fade("絵ＷＲ*", 300, 1000, null, false);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @190, @0, null, true);

$ループムーブナット名 = "@絵ＷＬ/絵ＳＴＬ";
$ループムーブタイム = 30000;

$ループムーブナット名２ = "@絵ＷＲ/絵ＳＴＲ";
$ループムーブタイム２ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");


	Move("絵ＷＬ/絵背景Ｌ100", 60000, @-380, @0, Dxl1, false);
	Move("絵ＷＲ/絵背景Ｒ100", 60000, @380, @0, null, false);
	FadeDelete("絵色100", 300, false);
	Move("絵ＷＬ/絵ＳＴＬ", 300, @20, @0, Dxl2, false);
	Move("絵ＷＲ/絵ＳＴＲ", 300, @-20, @0, Dxl2, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @0, @0, null, true);
	Move("絵ＷＲ/絵ＳＴＲ", 0, @0, @0, null, true);


	Request("プロセス１", Start);
	Request("プロセス２", Start);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0090a00">
「——唔！」


{	FwC("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0100a02">
「喝——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆相撃
//◆離れる
//おがみ：激突
	CreateTextureEX("絵背景200", 4500, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	CreateColorEXadd("絵色100", 5000, "WHITE");
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");

	Request("プロセス*", Stop);
	Delete("プロセス*");

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

	Delete("絵Ｗ*");
	Delete("絵背景200");

	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	CreateTextureSP("絵演バロウズ", 1000, Center, Middle, "cg/st/3d村正標準_騎航_通常3a.png");
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Zoom("絵演村正", 0, 900, 900, null, true);
	Zoom("絵演バロウズ", 0, 50, 50, null, true);
	Move("絵演村正", 0, @-100, @60, null, true);
	Move("絵演バロウズ", 0, @230, @-60, null, true);
//	SetBlur("絵演村正", true, 1, 300, 100, false);
	SetBlur("絵演バロウズ", true, 1, 300, 100, false);


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

	CloudZoomSet(1000);
	CloudZoomStartB(1000,500,500,500,300);
	CloudZoomVertex(500,@300,@0,null,false);

	FadeDelete("絵色100", 500, false);

	Move("絵背景100", 30000, @0, @-200, null, false);

	FadeDelete("絵色100", 500, false);
	DrawDelete("黒幕１", 150, 100, "slide_01_01_0", false);
	Zoom("絵演村正*", 1000, 1000, 1000, Dxl2, false);
	Move("絵演バロウズ*", 1000, @60, @0, Dxl2, false);
	Move("絵演村正*", 1000, @-160, @0, Dxl2, true);
	Move("絵演バロウズ*", 0, @0, @0, null, true);
	Move("絵演村正*", 0, @0, @0, null, true);


	Request("プロセス１", Start);
	Request("プロセス２", Start);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　——我们都知道。
　我们的目标、所追求的东西都是相同的。

　那还为什么要战斗呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Request("プロセス*", Stop);
	Delete("プロセス*");

	OnSE("se戦闘_動作_空突進08",1000);


	Zoom("絵演村正*", 300, 2000, 2000, Axl2, false);
	Move("絵演村正*", 300, @-560, @0, Axl2, false);
	Move("絵演バロウズ*", 300, @560, @0, Axl2, false);

//◆村正
//◆一瞬グレイアウト
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("絵演バロウズ");
	Delete("絵演村正");
	CloudZoomDelete(0,true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSP("絵ＷＲ", 500, Center, -600, "cg/st/resize/3d村正標準_騎航_戦闘am.png");
	Request("絵ＷＲ", Smoothing);
	SetBlur("絵ＷＲ", true, 1, 300, 100, false);
	Move("絵ＷＲ", 0, @-750, @0, null, true);


$ループムーブナット名２ = "@絵ＷＲ";
$ループムーブタイム２ = 10000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", SubRender);
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, @90, null,true);
	Fade("絵効果雨", 0, 100, null, true);


	Shake("絵背景50", 200000, 0, 1, 0, 0, 1000, null, false);

	CreateEffect("エフェクト１", 15000, 0, 0, 1024, 576, "Monochrome");
	Fade("エフェクト１", 0, 0, null, true);
	OnSE("se特殊_鎧_駆動音01",1000);



	DrawDelete("黒幕１", 200, 100, "slide_01_01_0", false);

	Move("絵背景50", 1000, @100, @0, Dxl2, false);
	Move("絵ＷＲ", 1000, @1000, @0, Dxl2, true);

	Request("プロセス２", Start);
	SetBlur("絵ＷＲ", false, 0, 300, 100, false);

	OnSE("se特殊_コックピット_アラーム",1000);
	Fade("エフェクト１", 0, 1000, null, true);
	Fade("エフェクト１", 1500, 0, null, false);

	Wait(500);

//	FadeF4("絵ＷＲ", 0, 1000, 100000, 0, 0, null, false);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0110a01">
《体温下降……已降至危险值！
　主君，再继续消耗能量的话——》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　持续的激斗使这具身体形同残骸。
　早已失去了感知的能力，宛如拖拉着厚重石头般的
无尽疲惫感堵塞了我的神经。

　痛苦。
　艰辛。
　难以忍受。一秒都无法再忍受。

　好想就这样沉睡过去。
　因为已经尽力战斗了。

　为什么一定要战斗呢？
　彼此间明明是互相认可互相尊重的

　必须要战斗下去的理由究竟是什么呢？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0120a00">
「——再坚持一下。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0130a01">
《……》


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0140a00">
「再陪我坚持一下。
　村正。我的剑胄。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0150a01">
《……嗯。
　我明白……》

//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0160a01">
《让我们并肩作战吧。
　只要您的意志还能继续战斗。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆辰気加速
	CreateColorEXadd("絵色100", 15000, "#5500AA");
	OnSE("se戦闘_動作_空突進07",1000);

	Delete("プロセス２");
	Fade("絵色100", 300, 1000, null, true);
	Move("絵ＷＲ", 200, @-1000, @0, Axl1, false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵ＷＲ");
	Delete("絵色100");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSP("絵ＷＬ", 500, Center, -800, "cg/st/resize/3d正宗_騎航_戦闘al_ex.png");
	Request("絵ＷＬ", Smoothing);
	Zoom("絵ＷＬ", 0, 500, 500, null, true);
	Move("絵ＷＬ", 0, @620, @200, null, true);

//	SetBlur("絵ＷＬ", true, 1, 300, 100, false);

$ループムーブナット名２ = "@絵ＷＬ";
$ループムーブタイム２ = 10000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");

	CreateColorEXmul("エフェクト１", 1500, "RED");

	Shake("絵背景50", 200000, 0, 1, 0, 0, 1000, null, false);


	OnSE("se特殊_鎧_駆動音02",1000);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", false);

	Move("絵背景50", 500, @-100, @0, Dxl2, false);
	Move("絵ＷＬ", 500, @-1000, @0, Dxl2, true);

	Request("プロセス２", Start);

	OnSE("se特殊_コックピット_アラーム",1000);
	Fade("エフェクト１", 0, 1000, null, true);
	Fade("エフェクト１", 1500, 0, null, false);

	Wait(500);


//◆正宗
//◆一瞬レッドアウト

	SetFwL("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0170a02">
「唔……」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/025vs0180b40">
《方才的枪伤裂开了……
　主君，先撤退吧！不止住伤口出血的话会危及
性命！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　仅做了应急处理的枪伤，伤口早已裂开——不，应该
说裂开得比原来更为严重了。
　血液每秒钟都在流失，自己能感觉到的生命力也在随
之不断地衰退。

　剧痛。
　呕吐感。
　死亡正伴随着令人厌恶的真实感向自己逼近。

　好想现在就逃离战场。
　因为已经尽力战斗了。

　为什么一定要战斗呢？
　彼此间明明是互相认可互相尊重的。

　必须要战斗下去的理由究竟是什么呢？

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0190a02">
「别说那么不争气的话……
　正宗！」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/025vs0200b40">
《主君……》


{	FwL("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0210a02">
「流那么点血是死不了人的，这种时候应该说
再不济也能拿小便代替血才对吧!?
　那样才称得上是我的剑胄啊……」


{	FwL("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0220a02">
「这种小伤忍一忍就过去了！
　正宗，快把你的战斗力展现出来！」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/025vs0230b40">
《——是!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進02",1000);

//◆鉄炮発射
	CreateColorEXadd("絵色100", 18000, "WHITE");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev916_正宗飛蛾鉄炮·弧炎錫.jpg");

	Delete("プロセス*");
	Delete("絵効果雨");

	Move("絵ＷＬ", 300, @1000, @0, Axl2, false);
	Fade("絵色100", 300, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Delete("絵ＷＬ");

	OnSE("se戦闘_正宗_鉄砲発射01",1000);

	Fade("絵色100", 300, 0, null, true);

	OnSE("se戦闘_正宗_鉄砲発射01",1000);

	EffectZoomDXadd(10000, 1000, 500, "#FFFFFF", "cg/ev/ev916_正宗飛蛾鉄炮·弧炎錫.jpg", true);

//◆爆裂
	CreateColorSPadd("上背景", 18100, "WHITE");

	CreateTextureSP("絵背景150", 17010, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景200", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景250", 17000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ev/ev948_正宗突進汎用.jpg");
	Request("絵背景150", Smoothing);
	Request("絵背景200", Smoothing);
	Request("絵背景250", Smoothing);
	Request("絵背景300", Smoothing);

	CreateSE("SE01","se戦闘_破壊_爆発07");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Zoom("絵背景150", 5000, 1500, 1500, Dxl1, false);
	FadeF4("絵背景150", 500, 800, 5000, 0, 0, Dxl3, false);

	Delete("絵背景100");
	Delete("絵ＷＬ");

	Fade("絵背景200", 0, 1000, null, true);
	EffectZoomadd(18000, 5000, 4000, "cg/ef/ef026_汎用爆撃.jpg", false);

	FadeDelete("上背景", 500, true);

	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 500, 0, null, true);


	Fade("絵背景150", 500, 0, null, false);
	Move("絵背景250", 500, @-150, @0, Axl2, false);
	Zoom("絵背景250", 500, 2000, 2000, Axl2, false);
	Fade("絵背景250", 300, 1000, null, true);

	Move("絵背景300", 500, @150, @0, Axl2, false);
	Zoom("絵背景300", 500, 2000, 2000, Axl2, false);
	Fade("絵背景300", 300, 1000, null, true);

	Fade("絵色100", 200, 1000, null, true);

	Delete("絵背景150");
	Delete("絵背景200");
	Delete("絵背景250");
	Delete("絵背景300");

	Wait(500);

//◆村正、爆炎を突き抜けて突進
//◆正宗突進
//◆両騎



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　追寻着相同的目标……
　所选择的道路却截然相反。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆正宗
	CreateTextureSP("絵背景200", 3100, Center, Middle, "cg/st/resize/3d正宗_騎突_戦闘ex.png");
//	SetBlur("絵背景200", true, 1, 500, 100, false);

	Zoom("絵背景200", 0, 900, 900, null, true);

	Move("絵背景200", 0, -1022, -855, null, true);
	CreateTextureSP("絵演左", 3000, -385, -300, "cg/bg/resize/bg002_空a_03l.jpg");

	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("絵背景200", 3000, 1000, 1000, Dxl2, false);
	Move("絵背景200", 3000, -1022, -795, Dxl2, false);
	Move("絵演左", 3000, @0, @-60, Dxl2, false);

	FadeDelete("絵色100", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　——挑衅是邪恶的。
　因为战乱的源泉，便是挑衅。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");
	CreateTextureEX("絵演窓右/絵空", 4100, -313, -405, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureEX("絵演窓右/絵村正", 4200, -632, -749, "cg/st/resize/3d村正標準_騎突_戦闘ex.png");
	Zoom("絵演窓右/絵村正", 0, 900, 900, null, true);
//	SetBlur("絵演窓右/絵村正", true, 1, 500, 100, false);

	OnSE("se戦闘_動作_空突進02",1000);
	Fade("絵演窓右/絵空", 500, 1000, null, false);
	Fade("絵演窓右/絵村正", 500, 1000, null, false);
	Zoom("絵演窓右/絵村正", 3000, 1000, 1000, Dxl2, false);
	Move("絵演窓右/絵村正", 3000, -632, -810, Dxl2, false);
	Move("絵演窓右/絵空", 3000, -313, -439, Dxl2, false);


	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　——挑衅是正义的。
　因为战争的源泉，就是挑衅。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両騎肉迫
//◆交錯へ――
	CreateColorEXadd("絵色100", 18000, "WHITE");
	CreateTextureEX("絵背景3200", 3200, -1024, Middle, "cg/ev/ev993_一条カットイン.jpg");
	CreateTextureEX("絵演窓右/絵背景4400", 4400, 1024, Middle, "cg/ev/ev996_景明カットイン.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	OnSE("se戦闘_動作_空突進03",1000);

	Fade("絵背景3200", 300, 1000, null, false);
	Fade("絵演窓右/絵背景4400", 300, 1000, null, false);
	Move("絵背景3200", 300, -430, @0, Dxl2, false);
	Move("絵演窓右/絵背景4400", 300, 319, @0, Dxl2, false);
	Zoom("絵背景200", 300, 2000, 2000, Axl2, false);
	Zoom("絵演窓右/絵村正", 300, 2000, 2000, Axl2, true);



	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0240a02">
「邪恶·当斩!!」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0250a00">
「正义·当斩!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵背景3200", 300, 0, @0, Axl2, false);
	Move("絵演窓右/絵背景4400", 300, 0, @0, Axl2, false);
	Fade("絵色100", 300, 1000, null, true);

	Delete("絵背景3200");
	Delete("絵背景200*");
	Delete("絵演*");




/*
	MusicStart("SE突進",0,1000,0,1000,null,false);
	Wait(200);

	Rotate("絵背景100", 0, @0, @180, @0, null,true);
	Move("絵背景100", 0, @0, -1500, null, true);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@400,@0,null,false);


	MusicStart("SE01",0,1000,0,900,null,false);
	Move("絵背景100", 3000, @0, -600, Dxl3, false);
	SetVolume("SE11", 1000, 1000, null);

//おがみ：サーフェース動作終了
	Fade("絵背景150", 100, 0, null, false);
	Fade("絵Suf", 100, 0, null, false);

	MusicStart("SE05",0,1000,0,1000,null,false);
	SetFrequency("SE11", 2000, 800, null);
	Shake("絵演バロウズ", 1500, 0, 1, 0, 0, 1000, Dxl2, false);
	Rotate("絵演バロウズ", 1500, @0, @0, @90, Dxl2,false);
	Zoom("絵演バロウズ", 1000, 20, 20, Dxl3, false);
	BezierMove("絵演バロウズ", 2500, (113,-1848){-1080,-450}{-1060,-410}(77,-313), Dxl3, false);
	BezierMove("合当理火花*", 2500, (13,-2048){-980,-650}{-860,-610}(-123,-513), Dxl3, false);
	Fade("絵演バロウズ", 100, 1000, null, true);
	Shake("絵背景100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	SetVolume("SE11", 2500, 0, null);

	Wait(300);

	MusicStart("SE20",0,500,0,1200,null,false);
	Rotate("合当理火花a", 500, @0, @0, @10000, null,false);
	Fade("合当理火花a", 0, 500, null, true);
	Fade("合当理火花a", 500, 0, null, false);

	Wait(500);

	MusicStart("SE21",0,300,0,1100,null,false);
	Rotate("合当理火花b", 500, @0, @0, @10000, null,false);
	Fade("合当理火花b", 0, 500, null, true);
	Fade("合当理火花b", 500, 0, Axl2, false);

	Wait(500);




*/
















//◆相撃。真っ向から打ち合う一撃と一撃。
//◆力が拮抗する一瞬。スローモーション風演出？


	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	CreateTextureSP("絵演バロウズ", 1000, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵演村正*", Smoothing);
	Request("絵演バロウズ", Smoothing);
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Rotate("絵演村正*", 0, @0, @0, @20, null,true);
	Zoom("絵演村正*", 0, 1500, 1500, null, true);
	Zoom("絵演バロウズ", 0, 50, 50, null, true);

	SetBlur("絵演村正", true, 1, 300, 100, false);
//	SetBlur("絵演バロウズ", true, 2, 300, 70, false);

	Move("絵演バロウズ", 0, @300, @-60, null, true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	$効果ナット名１ = @絵演村正;
	$効果ナット名２ = @絵演バロウズ;
	CreateProcess("プロセス２", 150, 0, 0, "RotateLoop");
	SetAlias("プロセス２","プロセス２");

	CloudZoomSet(1000);
	CloudZoomStart(1000,100,100,2000,2000);
	CloudZoomVertex(500,@300,@0,null,false);


	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",1000,1000,0,1200,null,true);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);



	CreateColorEXadd("絵色200", 18500, "WHITE");
	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("絵色100", 500, false);
	Zoom("絵演村正*", 1000, 1000, 1000, Dxl2, false);

	Request("プロセス１", Start);
	Request("プロセス２", Start);

	Move("絵背景100", 3000, @0, @-300, Axl2, false);
	Shake("絵背景100", 3000, 5, 2, 0, 0, 800, null, false);
	Move("絵演バロウズ", 3000, -100, @0, Axl3, false);
	BezierMove("絵演村正*", 3000, (-2500,-200){-2260,-300}{-2340,-400}(-2260,-320){-2350,-300}{-2400,-600}(-2200,-300){-2220,-200}{-2320,-310}(-2000,-250), null, false);
	Zoom("絵演バロウズ", 3000, 300, 300, Axl3, false);
	Zoom("絵演村正*", 3000, 600, 600, Axl2, 2700);


	Fade("絵演村正２", 200, 0, null, false);
	Fade("絵色200", 200, 1000, null, true);
	SetVolume("SE10", 0, 500, null);
	SetFrequency("SE10", 0, 200, null);
	Delete("プロセス１");
	Delete("プロセス２");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");

	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎航_通常3a.png");
	Move("絵演村正", 0, -2000,-250, null, true);
	Zoom("絵演村正", 0, 600, 600, null, true);


	Rotate("$効果ナット名１", 0, @0, @0, 5, AxlDxl,false);
	Rotate("$効果ナット名２", 00, @0, @0, 0, AxlDxl,false);
	Fade("絵背景勢い", 300, 1000, null, false);
	Fade("絵色200", 300, 300, null, false);
	Move("絵背景100", 10000, @0, @-100, Dxl2, false);
	Rotate("$効果ナット名１", 8000, @0, @0, 10, null,false);
	Rotate("$効果ナット名２", 8000, @0, @0, -10, null,false);
	Zoom("絵背景勢い", 10000, 2000, 2000, Dxl2, false);
	Move("絵演バロウズ", 10000, @-30, @0, Dxl2, false);
	Zoom("絵演バロウズ", 10000, 350, 350, Dxl2, false);
	Move("絵演村正", 10000, @30, @0, Dxl2, false);
	Zoom("絵演村正", 10000, 550, 550, Dxl2, false);



	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　
　——最终。
　如果，这世间的悲剧能稍微减少的话。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵剣", 19000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵剣2", 18800, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");


	OnSE("se戦闘_攻撃_鎧_剣戟03",1000);
	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Fade("絵剣", 0, 1000, null, true);
	Fade("絵剣2", 0, 1000, null, true);
	Zoom("絵剣", 1000, 1200, 1200, Dxl2, false);
	Zoom("絵剣2", 1000, 1100, 1100, Dxl2, false);

	Delete("絵演*");
	Delete("絵背景勢い");

//◆行き違い。離れる
//	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	CreateTextureSP("絵演バロウズ", 1000, Center, Middle, "cg/st/3d村正標準_騎航_通常3a.png");
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Zoom("絵演村正", 0, 600, 600, null, true);
	Zoom("絵演バロウズ", 0, 100, 100, null, true);
	Move("絵演村正", 0, -373, -295, null, true);
	Move("絵演バロウズ", 0, @230, @-60, null, true);

//	SetBlur("絵演村正", true, 1, 300, 70, false);
	SetBlur("絵演バロウズ", true, 1, 300, 70, false);


	CreateSE("SE01","se戦闘_動作_空上昇01");
	CloudZoomSet(1000);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス３","プロセス３");

$ループムーブナット名 = "@絵演バロウズ";
$ループムーブタイム = 30000;

$ループムーブナット名２ = "@絵演村正";
$ループムーブタイム２ = 15000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");

	MusicStart("SE01",0,1000,0,1000,null,false);
	CloudZoomStartB(1000,1000,1000,500,800);
	CloudZoomVertex(500,@300,@0,null,false);

	EffectZoomDXadd(19100, 500, 100, "#FFFFFF", "cg/ef/ef039_時間移動.jpg", false);

	Move("絵背景100", 30000, @0, @-200, null, false);

	Request("プロセス３", Start);
	SetVolume("SE10", 500, 500, null);
	SetFrequency("SE10", 0, 1200, null);

	FadeDelete("絵剣*", 500, false);
	FadeDelete("絵色200", 500, false);
	Zoom("絵演村正*", 1500, 1000, 1000, Dxl2, false);
	Zoom("絵演バロウズ*", 1500, 50, 50, Dxl2, false);
	Move("絵演バロウズ*", 1500, @60, @0, Dxl2, false);
	Move("絵演村正*", 1500, @-160, @0, Dxl2, true);
	Move("絵演バロウズ*", 0, @0, @0, null, true);
	Move("絵演村正*", 0, @0, @0, null, true);


	Request("プロセス１", Start);
	Request("プロセス２", Start);





//◆再び交差

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　继续战斗。
　互相视为宿敌。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 2000, 300, null);

//◆交差
	CreateColorEX("絵色剣戟", 18000, "BLACK");
	CreateTextureEX("絵剣", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵剣2", 18000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵剣", 0, 2000, 2000, null, true);
	Zoom("絵剣2", 0, 2000, 2000, null, true);
	Rotate("絵剣", 0, @0, @0, @10, null,true);
	Rotate("絵剣2", 0, @0, @0, @-110, null,true);



	Request("プロセス*", Stop);
	Delete("プロセス*");

	OnSE("se戦闘_動作_空突進08",1000);
	Zoom("絵演村正*", 300, 2000, 2000, Axl2, false);
	Move("絵演村正*", 300, @-560, @0, Axl2, false);
	Move("絵演バロウズ*", 300, @560, @0, Axl2, false);

	Fade("絵色剣戟", 300, 1000, Axl3, true);

//	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	Move("絵背景100", 0, @0, -700, null, true);

	Delete("絵演*");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateTextureSP("絵演バロウズ", 1000, Center, Middle, "cg/st/3d正宗_騎航_戦闘a2.png");
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Zoom("絵演村正", 0, 800, 800, null, true);
	Zoom("絵演バロウズ", 0, 50, 50, null, true);

//	SetBlur("絵演村正", true, 1, 300, 70, false);
	SetBlur("絵演バロウズ", true, 1, 300, 70, false);

	Move("絵演村正", 0, @50, @0, null, true);
	Move("絵演バロウズ", 0, @-300, @-60, null, true);


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

	CloudZoomVertex(500,@-600,@0,null,false);


	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_時間移動.jpg", false);

	Fade("絵剣", 0, 1000, null, true);
	Fade("絵剣2", 0, 1000, null, true);
	Zoom("絵剣", 500, 2200, 2200, Dxl2, false);
	Zoom("絵剣2", 500, 2100, 2100, Dxl2, false);


	Wait(300);


	Move("絵背景100", 30000, @0, @-200, null, false);

	FadeDelete("絵剣*", 200, false);
	FadeDelete("絵色剣戟", 200, false);
	Zoom("絵演村正*", 1000, 1000, 1000, Dxl2, false);
	Move("絵演バロウズ*", 900, @-60, @0, Dxl2, false);
	Move("絵演村正*", 1000, @160, @0, Dxl2, true);
	Move("絵演バロウズ*", 0, @0, @0, null, true);
	Move("絵演村正*", 0, @0, @0, null, true);


	Request("プロセス１", Start);
	Request("プロセス２", Start);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　继续战斗。
　互相视为同伴。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆交差
	CreateTextureEX("絵剣", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵剣2", 18000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateColorEX("絵色剣戟", 18000, "BLACK");
	Zoom("絵剣", 0, 2000, 2000, null, true);
	Zoom("絵剣2", 0, 2000, 2000, null, true);
	Rotate("絵剣", 0, @0, @0, 100, null,true);
	Rotate("絵剣2", 0, @0, @0, 110, null,true);


	CreateColorEXadd("絵色ガッタリ", 1005, "WHITE");
	DrawTransition("絵色ガッタリ", 0, 500, 500, 500, null, "cg/data/circle_03_00_0.png", false);


	Delete("プロセス１");
	Delete("プロセス２");

	OnSE("se戦闘_動作_鎧_合当理吹かし01",800);

	OnSE("se戦闘_動作_空突進08",1000);
	Fade("絵色ガッタリ", 300, 1000, null, false);

	Wait(150);

	Zoom("絵演村正*", 300, 2000, 2000, Axl2, false);
	Move("絵演村正*", 300, @560, @0, Axl2, false);
	Move("絵演バロウズ*", 300, @-260, @0, Axl2, false);
	Fade("絵色剣戟", 300, 1000, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_時間移動.jpg", false);

	SetVolume("SE10", 2000, 0, null);

	Fade("絵剣", 0, 1000, null, true);
	Fade("絵剣2", 0, 1000, null, true);

	CloudZoomDelete(0,true);

	Delete("プロセス３");
	Delete("絵背景効果線");
	Delete("絵色ガッタリ");
	Delete("絵演*");
	Delete("絵背景100");
	Delete("絵色剣戟");
	Delete("絵色剣戟");

	CreateTextureSP("絵EV", 17000, Center, Middle, "cg/ev/ev917_正宗朧焦屍剣.jpg");
	SetBlur("絵EV", true, 1, 500, 100, false);
	Zoom("絵EV", 0, 1500, 1500, null, true);

	Zoom("絵剣", 500, 2200, 2200, Dxl2, false);
	Zoom("絵剣2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	Zoom("絵EV", 500, 1000, 1000, Dxl2, false);
	FadeDelete("絵剣*", 500, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　继续战斗。
　在截然相反的两条道路上奔驰。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆交差
	CreateTextureEX("絵剣", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵剣2", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Zoom("絵剣", 0, 2000, 2000, null, true);
	Zoom("絵剣2", 0, 2000, 2000, null, true);
	Rotate("絵剣", 0, @0, @0, -90, null,true);
	Rotate("絵剣2", 0, @0, @0, 30, null,true);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_時間移動.jpg", false);

	Fade("絵剣", 0, 1000, null, true);
	Fade("絵剣2", 0, 1000, null, true);
	CreateTextureSP("絵EV", 17000, Center, Middle, "cg/ev/ev947_村正斬撃汎用.jpg");
	SetBlur("絵EV", true, 1, 500, 100, false);
	Zoom("絵EV", 0, 1500, 1500, null, true);
	Zoom("絵剣", 500, 2200, 2200, Dxl2, false);
	Zoom("絵剣2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	Zoom("絵EV", 500, 1000, 1000, Dxl2, false);
	FadeDelete("絵剣*", 500, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　继续战斗。
　以同一终点为目标。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆交差
	CreateTextureEX("絵剣", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵剣2", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Zoom("絵剣", 0, 1800, 1800, null, true);
	Zoom("絵剣2", 0, 1800, 1800, null, true);
	Rotate("絵剣", 0, @0, @0, @-90, null,true);
	Rotate("絵剣2", 0, @0, @0, @-90, null,true);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_時間移動.jpg", false);

	Fade("絵剣", 0, 1000, null, true);
	Fade("絵剣2", 0, 1000, null, true);
	CreateTextureSP("絵EV", 17000, Center, Middle, "cg/ev/ev915_鍔競り合う村正と正宗.jpg");
	SetBlur("絵EV", true, 2, 500, 100, false);
	Zoom("絵EV", 0, 1500, 1500, null, true);
	Zoom("絵剣", 500, 2200, 2200, Dxl2, false);
	Zoom("絵剣2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	Zoom("絵EV", 800, 1000, 1000, Dxl2, false);
	FadeDelete("絵剣*", 800, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　继续战斗——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆交差
	CreateColorEXadd("絵色100", 20000, "WHITE");
	CreateTextureEX("絵剣", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵剣2", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Zoom("絵剣", 0, 2000, 2000, null, true);
	Zoom("絵剣2", 0, 2000, 2000, null, true);
	Rotate("絵剣", 0, @0, @0, @90, null,true);
	Rotate("絵剣2", 0, @0, @0, @0, null,true);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	OnSE("se戦闘_破壊_鎧04",1000);
	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	EffectZoomDXadd(18100, 1000, 100, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", false);

	Fade("絵剣", 0, 1000, null, true);
	Fade("絵剣2", 0, 1000, null, true);
	Zoom("絵剣", 500, 2200, 2200, Dxl2, false);
	Zoom("絵剣2", 500, 2100, 2100, Dxl2, false);

	Wait(300);
	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	Fade("絵色100", 1000, 1000, null, true);
	FadeDelete("絵剣*", 0, false);


	Wait(1000);

	PrintBG("上背景", 30000);
	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",1000,700,0,1200,null,true);
	CreateColorSP("黒幕１", 18000, "BLACK");

	FadeDelete("上背景", 1000, true);

	Wait(500);

	OnSE("se戦闘_動作_空突進03",1000);

	SetFrequency("SE10", 1000, 1100, null);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	Request("絵背景50", Smoothing);
	Zoom("@絵背景50", 0, 600, 600, null, true);
	CreateTextureEX("絵狸", 2000, Center, middle, "cg/st/3d正宗_騎突_戦闘.png");
//	SetBlur("絵狸", true, 1, 500, 150, false);
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 100, 100, null, true);

//おがみ：コックピット動作定義=======================
	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"on",false);
	CP_EnemyFade(0,10,188,300);
	CP_EHPChange(0,3,null,true);

	MyLife_Count(0,176);
	MyTr_Count(0,217);
	CP_PowerChange(0,189,null,false);
	CP_IHPChange(0,3,null,false);


	CP_AziChange(0,78,null,false);
	CP_AltChange(0,10,Dxl2,false);
	CP_HighChange(0,1100,null,false);
	CP_SpeedChange(0,540,null,false);

	BGMoveAuto("@絵背景50",1);
//===================================================

	CloudZoomSet(1000);
	CloudZoomStart(1000,100,100,2000,2000);
	CloudZoomVertex(500,@0,@0,null,false);

$ループムーブナット名 = "@絵狸";
$ループムーブタイム = 20000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	CP_RollBarMove("@絵背景50", 0, 0, null, true);
	Fade("@絵狸", 0, 1000, null, true);


	FadeDelete("黒幕１", 500, false);

	CP_LockOnMove("@絵狸",600,@0,@-20,Dxl2,true);
	CP_LockOnMove("@絵狸",0,@0,@0,null,true);
	Request("プロセス１", Start);


	SetFrequency("SE10", 1000, 1000, null);
	SetVolume("SE10", 2000, 300, null);


//◆村正モニター
	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0260a01">
《主君……！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　剑胄想说的话，不用听完也知道。
　我已经感受到了。

　……逐渐被压制了。
　敌我力量的平衡开始改变，我方渐渐转为劣势。

　村正的力量并没有衰退。
　削肉挫骨，将一年的生命化为一秒的生命力，维持在最
高点的战斗力。

　但正宗却不同。
　他没有停留在某个最高点。最强的一击之后是更加强劲
的最强击。之后则是比方才更为强劲的攻击。

　每一击都会比上一击更强劲，更强硬，更有力。
　
　也许，这便是绫弥一条最终显现出的，英雄的力量。

　英雄是无法被击败的，<RUBY text="··········">一定会取得最终的胜利</RUBY>。
　为了最终击败敌人，英雄会像攀登阶梯般，刻苦地、
一步步地积累力量，最终取得胜利。

　这样下去会被打败。
　
　作为一个普通的人类，我在深深感叹的同时，也不
得不承认。

　这样下去会被打败。
　
　然而现在的我是一个战斗者，作为打破现状的一个开
端，我必须首先承认这一点。

　要逆转现在的形势。
　————————当然还有办法。

　若敌人一直勤勤恳恳地攀登阶梯，那只要站在他永远
无法企及的遥远高度即可。
　无需一直静坐在那个宛若针尖的地方。只需耗尽全身
力量的一瞬间。只需那攻击的一刹那。

　使出自己的必杀技便足矣。
　
　灌注全身所有力量，电磁拔刀术。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 1000, 1, null);

	EfRecoIn1(18000,600);

	CreateTextureSPadd("絵回想上", 17101, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_e02.png");
	Fade("絵回想上", 0, 600, null, true);
	CreateTextureSP("絵回想", 17100, Center, Middle, "cg/ev/resize/ev948_正宗突進汎用ex.jpg");
	Rotate("絵回想上", 0, @0, @180, @0, null,true);

	EfRecoIn2(300);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0270a00">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　……不行。
　仅靠这一招，是无法取胜的。

　正宗拥有能够封杀秘技的秘技，
　他拥有吸收对方阴义的能量，在改变方向之后再次释
放能量的异能。

　阴义·天罚觌面。

　在敌人向自己使出必杀技时，当即进行裁决，随后决
定与敌人相符的必杀技，并予以执行。
　无法反抗，无法逃避，唯有甘愿承受的天罚。

　我已经亲身体会过一次了。
　那一招之所以没有致死，也只是因为当时我的攻击威
力不够强大。

　自己所使出的必杀技必将会作为同等的必杀技反弹到
自己身上。真是严格又公正的判决。
　没有丝毫的误谬。

　在使出电磁拔刀的同时，我的死亡也将被注定。
　……但如果不使用的话，一味战斗下去也不会有结果。

　该怎么办？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);


	Delete("絵回想*");
	SetVolume("SE10", 2000, 300, null);

	EfRecoOut2(600,true);

//◆正宗近付く
	Zoom("@絵背景50", 4000, 700, 700, Dxl3, false);
	Zoom("@絵狸", 4000, 200, 200, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　还有什么办法。
　能够击败那个英雄？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆正宗近付く

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　以灌注自身极限力量的一刀也无法击败的对手。
　该如何应对？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆正宗近付く
	Zoom("@絵背景50", 4000, 800, 800, Dxl3, false);
	Zoom("@絵狸", 4000, 300, 300, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　不能指望此时会发生奇迹。
　奇迹不可能成为我的力量。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆正宗近付く

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　所以不停地思考着。
　一秒钟的百分之一，百分之一的千分之一，比沙漏中的
沙粒还微小的灰尘般的时间，大脑正以这样的时间为单位
迅速地运转着。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆正宗近付く
	Zoom("@絵背景50", 4000, 900, 900, Dxl3, false);
	Zoom("@絵狸", 4000, 400, 400, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　对记忆的碎片进行捕捉。
　曾与自己对战过的每一个敌人。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆正宗近付く

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　铃川令法——井上真改。
　长坂右京——八八式龙骑兵。
　风魔小太郎——月山从三位。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆正宗近付く
	Zoom("@絵背景50", 4000, 1000, 1000, Dxl3, false);
	Zoom("@絵狸", 4000, 500, 500, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　山贼的头领……
　一尾瑞阳。

　镰仓的山贼……
　雪车町一藏。

　……以及我的妹妹，
　凑斗光。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆正宗近付く

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　与他们的一战。
　自己砍向他们的一刀。
　他们所进行的攻击。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆正宗近付く
	Zoom("@絵背景50", 4000, 1100, 1100, Dxl3, false);
	Zoom("@絵狸", 4000, 600, 600, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　<RUBY text="Ｒｅｃｏｒｄ　Ｏｆ　Ｍｙ　Ｂａｔｔｌｅ">村正的战斗记录</RUBY>。
　我认真地检视每一页的战斗记录。周而复始。反复
检查。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆正宗近付く

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　从这令人作呕的血腥的战斗经验中，我想到了上百条、
甚至上千条的对策。
　每一个都是足以致人于死地的方法。都是掠夺人性命
的手段。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆正宗近付く
	OnSE("se戦闘_動作_空突進02",1000);

	EffectZoomadd(100, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("@絵背景50", 8000, 1200, 1200, Dxl3, false);
	Zoom("@絵狸", 8000, 700, 700, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　但正确的答案却只有一个。
　此时此地，面对眼前的敌人，面对这场战斗，真正可
以使用的剑只有一柄，其他的都是无用的赝品。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆正宗近付く

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　必须从中选出一个。
　选出正确的那把剑。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 2000, 0, null);


//◆正宗近付く
	CreateColorEXadd("絵色100", 18500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　那，
　
　
　果然，只能是这把剑！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 1500, "BLACK");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	Fade("絵背景50", 0, 500, null, true);

	CloudZoomDelete(0,true);

	Cockpit_AllFade0();

	OnSE("se戦闘_動作_刀構え02",1000);


	FadeDelete("上背景", 500, true);


//◆正宗近付く。引き付けて
	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0280a00">
「<RUBY text="Ｅｎｃｈａｎｔ">磁波镀装</RUBY>——<RUBY text="Ｅｎｄｉｎｇ">终焉</RUBY>!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆電磁抜刀準備。帯電
	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Cockpit_AllFade0();
	CP_LockOnDelete();
	Delete("@絵狸*");
	Delete("絵色100");

	CreateTextureSP("絵EV100", 18099, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	CreateTextureSP("絵EV200", 18100, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");

	Shake_Loop("@絵EV200","shake01");

	RailgunFlash();

	CreateSE("SE11","se特殊_電撃_帯電01");
	MusicStart("SE11",300,500,0,1000,null,true);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Wait(1000);

//◆正宗

	SetFwL("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0290a02">
「要来了——」


{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/025vs0300b40">
《接招吧!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	FadeDelete("絵E*", 500, true);

	Shake_LoopDelete();

	SetVolume("SE11", 2000, 0, null);

//◆陰義発動
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	CP_LockOnMove("@絵狸",0,@0,@-10,null,true);

	SetBlur("絵狸", true, 3, 800, 200, false);
	CreateTextureEX("絵狸２", 1600, center, middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵狸２", Smoothing);
	Zoom("絵狸２", 0, 200, 200, null, true);
	Move("絵狸２", 0, @0, @-10, null, true);
	SetBlur("絵狸２", true, 3, 800, 200, false);
	CreateTextureEXadd("絵背景100", 1500, Center, Middle, "cg/ef/ef039_時間移動.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	Move("絵背景100", 0, @0, @50, null, true);

	CreateColorEXadd("紅蓮", 1600, "#FFFFFF");

	FadeF4("絵狸", 500, 600, 200000, 0, 0, null, false);
	FadeF4("絵狸２", 500, 300, 100000, 0, 0, null, false);

	Fade("絵演窓上*", 500, 0, null, false);
	Fade("明度", 500, 0, null, true);
	Delete("絵演窓上*");
	Delete("明度");

	Wait(1000);

	CreateSE("SE21","se特殊_陰義_発動04");
	CreateSE("SE10","se特殊_陰義_正宗準備_L");
	MusicStart("SE21",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,500,0,1000,null,true);

	Move("絵背景100", 100000, @0, @50, Dxl2, false);
	Zoom("絵背景100", 100000, 3000, 3000, Dxl2, false);
	Fade("紅蓮", 500, 500, null, false);
	Fade("絵背景100", 1000, 500, null, true);

	CreateColorEXmul("紅蓮オーラ", 2500, "#000000");
	DrawTransition("紅蓮オーラ", 0, 200, 200, 500, null, "cg/data/circle_01_00_1.png", true);


//	CreateProcess("プロセス１", 12000, 0, 0, "Lastfire");
//	Request("プロセス１",Start);


	Fade("紅蓮オーラ", 1000, 500, null, true);
//◆村正
	SetFwR("cg/fw/fw村正蜘蛛_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0310a01">
《主君——这样好吗!?》


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0320a00">
「没什么好不好的……
　除此之外别无他法，要达到比敌人更高的
高度，只有这个办法！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　最为下等的策略。
　最为愚蠢的策略。
　
　在最后的时刻，我选择了这个方法。

　任何招式都无法战胜。
　任何策略都无法奏效。

　一条的正义，不会向这样的东西屈服。

　那是燃烧的太阳。
　任何自作聪明的手段，在碰触到她之前就会被燃烧殆
尽，只会自取灭亡。

　能够毁灭太阳的方法只有一个。
　那就是以比其更为沉重的重量直接撞击。

　一条有不屈的正义，
　正宗有不破的阴义。
　
　那么最佳的办法就是同时将他们一同击碎。

　这是唯一的办法！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0330a01">
《……明白!!
　终焉开辟。终焉执行。虚无发现————》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);


//◆最終放電
	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵狸*");
	Delete("紅蓮*");

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ縦/*");

	Delete("ウィンドウ上");
	Delete("ウィンドウ下");
	Delete("ウィンドウ縦");

	Delete("絵背景*");
	Delete("絵色100");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureSPadd("絵背景効果線", 17500, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_e.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur2");
	SetAlias("プロセス１","プロセス１");


	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	CreateTextureSP("絵EV200", 2000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");

	RailgunFlash();
	Shake_Loop("@絵EV200","supershake01");
	Request("プロセス１", Start);


	CreateSE("SE01","se特殊_電撃_帯電01");
	CreateSE("SE02","se特殊_電撃_放電02");
	MusicStart("SE01",300,700,0,1000,null,true);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Fade("絵背景200", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　只要斩下这一刀——
　敌骑的任何异能都将变得毫无意义。

　一切归零，一切化无。
　
　然后，村正那极致精粹的太刀，将完成比任何人都完
美的、诅咒的一技!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0340a00">
「吉野御流合战礼法“迅雷”之崩裂。」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


//◆鞘に手を。溜め
	SetFwR("cg/fw/fw景明_戦闘.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0350a00">
「电磁拔刀——“祸”。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆電磁抜刀·縦割り
//◆ずばーん。
	CreateColorEXadd("絵色100", 18000, "WHITE");
	CreateColorEXadd("絵色上敷き", 20000, "WHITE");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_e.jpg");
	Request("絵背景300", AddRender);
	Zoom("絵背景300", 0, 1050, 1050, null, true);

	CreateSE("SE03","se特殊_電撃_放電01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	FadeF4("絵背景300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("絵色上敷き", 1000, 1000, null, true);

	Request("プロセス１", Stop);

	Delete("絵EV*");
	Delete("プロセス１");
	Delete("絵背景効果線");
	Delete("絵背景200");
	Delete("絵背景300");
	Shake_LoopDelete();

	MovieSESet(19000,"mv電磁抜刀_禍","se特殊_mv用_電磁抜刀_禍");

	Fade("絵色上敷き", 1000, 0, null, false);
	Fade("絵色100", 500, 1000, Axl3, false);
	MovieSEStart(100);
	Delete("絵色上敷き");
//	CreateTextureSP("絵EF100", 200, Center, Middle, "cg/ef/ef030_汎用電磁抜刀a.jpg");
//	Request("絵EF100", Smoothing);
//	Zoom("絵EF100", 0, 2000, 2000, null, true);
//	Rotate("絵EF100", 0, @0, @0, @-90, null,true);
//	Move("絵EF100", 0, @0, @-500, null, true);
//	Move("絵EF100", 400, @0, @1000, Axl2, false);

	SetVolume("SE*", 200, 0, null);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev162_村正ＶＳ正宗決着.jpg");
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/ev/ev162_村正ＶＳ正宗決着.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);

	CreateSEEX("SE10","se戦闘_攻撃_鎧_剣戟05_L");
	MusicStart("SE10",0,1000,0,1000,null,true);
	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Shake_Loop("@絵背景200","shake02");
	Fade("絵背景200", 0, 300, null, true);
	Zoom("絵背景200", 2000, 1020, 1020, Dxl2, false);
	FadeDelete("絵色100", 2000, true);

	Wait(1000);

//◆正宗、太刀を翳して受け止める
//◆すげー力のせめぎ合い。
	SetFwR("cg/fw/fw一条_苦痛.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0360a02">
「唔啊啊啊啊啊啊啊啊——」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/025vs0370b40">
《唔啊啊啊啊啊啊啊啊啊!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　这一刀——
　
　正宗扛了下来!!

　在迫近的闪光距离头顶只有一寸的时候，
　他以装备了盾牌的太刀挡下了这一击。

　……其英勇的身姿完全超越了这个世界的常理。
　他究竟是如何挡下那如光速般迅速的一闪，又是如何
支撑住自己的身体呢？

　正义竟是如此强大吗？
　
　
　然而。即便如此，

　我也要将正义斩杀！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆押し込む
	OnSE("se特殊_電撃_放電02",1000);
	EffectZoomDXadd(10000, 1000, 500, "#FFFFFF", "cg/ev/ev915_鍔競り合う村正と正宗.jpg", true);
//	Zoom("絵背景100", 500, 1500, 1500, Dxl2, false);
//	Zoom("絵背景200", 500, 1500, 1500, Dxl2, true);


	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0380a02">
「——嗯!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　太刀所承载的，是我拥有的一切。
　以及，我所背负的一切。

　交流、
　争斗、
　以及死在我手中的人们。

　罪名。
　记忆。
　思念。

　一切——
　一切！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック
//◆山賊首領の死
//◆蝦夷姉妹
//◆養母の死
//◆光
	CreateColorEXadd("絵色100", 18000, "WHITE");
	Fade("絵色100", 1000, 1000, null, true);

	Shake_LoopDelete();
	RG_FlashDelete();

//おがみ：念のため色々消しておきます。
	SetVolume("@msong04_full", 2500, 0, null);
	SetVolume("@msong04_arrange", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);
	SetVolume("SE*", 2500, 0, null);

	Delete("絵背景100");
	Delete("絵背景200");


	CreateTextureEX("絵背景400", 17500, Center, Middle, "cg/ev/ev138_首領の最期_d.jpg");
	CreateTextureEX("絵背景500", 17500, Center, Middle, "cg/bg/bg023_弥源太の家_03a.jpg");
	StL(17500, @0, @0,"cg/st/stふき_通常_私服.png");
	StR(17500, @0, @0,"cg/st/stふな_通常_私服.png");

	CreateTextureEX("絵背景600", 17500, Center, Middle, "cg/ev/ev139_統を殺害_b.jpg");
	CreateTextureEX("絵背景700", 17500, Center, Middle, "cg/ev/ev128_病床の光_a03.jpg");

	Fade("絵背景400", 0, 1000, null, true);
	Fade("絵色100", 50, 200, null, true);

	Wait(150);
	Fade("絵色100", 200, 1000, null, true);
	Fade("絵背景500", 0, 1000, null, true);
	FadeStL(0,true);
	FadeStR(0,true);
	Fade("絵色100", 50, 200, null, true);

	Wait(150);
	Fade("絵色100", 200, 1000, null, true);
	DeleteStA(0,true);

	Fade("絵背景600", 0, 1000, null, true);
	Fade("絵色100", 50, 200, null, true);

	Wait(150);
	Fade("絵色100", 200, 1000, null, true);
	Fade("絵背景700", 0, 1000, null, true);
	Fade("絵色100", 50, 200, null, true);

	Wait(150);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景400");
	Delete("絵背景500");
	Delete("絵背景600");
	Delete("絵背景700");

	Wait(500);

	SetFwR("cg/fw/fw景明_怒りb.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0390a00">
「哦啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」


//◆ボイスの代わりに回線が焼き切れるようなＳＥ
{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0400a01">
《——!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆押し込む押し込む
//◆すぱーん。縦、一閃。
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev947_村正斬撃汎用.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 1100, 1100, null, true);
	Shake("絵背景100", 1000, 0, 20, 0, 0, 500, null, false);

	OnSE("se特殊_電撃_放電01",1000);


	EffectZoom(10000, 1000, 500, "cg/ev/ev947_村正斬撃汎用.jpg", false);
	Fade("絵背景100", 100, 1000, null, true);
	Wait(400);
	FadeDelete("絵背景100", 500, true);


	SetFwC("cg/fw/fw一条_憎悪b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0410a02">
「啊——」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/025vs0420b40">
《啊——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬った。
//◆爆砕。ずがーん。
//◆ＢＧＭフェードアウト
//◆ウェイト
	SetVolume("SE*", 2000, 0, null);
	CreateTextureSP("絵EF100", 200, Center, Middle, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	Request("絵EF100", Smoothing);
	Zoom("絵EF100", 0, 20000, 2000, null, true);
	Rotate("絵EF100", 0, @0, @0, @-90, null,true);

	Move("絵EF100", 0, @0, @-2500, null, true);

	OnSE("se特殊_電撃_放電02",1000);

	Move("絵EF100", 400, @0, @1000, Axl2, false);
	Fade("絵色100", 100, 0, null, true);
	Wait(200);

	Fade("絵色100", 100, 1000, null, true);

	CreateSE("SE01","se戦闘_破壊_鎧05");
	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色100", 18000, "WHITE");

//◆落ちてゆく一条（真っ二つ）
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev163_真っ二つの正宗_a.jpg");
	Request("絵背景100", Smoothing);
	Move("絵背景100", 0, -120, -45, null, true);
	Zoom("絵背景100", 0, 1500, 1500, null, true);
//	SetBlur("絵背景100", true, 1, 500, 500, false);

	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/ev/ev163_真っ二つの正宗_b.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev159_一導の生首_b.jpg");
	CreateTextureEX("絵背景400", 100, Center, Middle, "cg/ev/ev163_真っ二つの正宗_c.jpg");

	Delete("上背景");

	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Rotate("煙動画", 0, @0, @0, @20, null,true);
	Zoom("煙動画", 0, 6000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-100, null, true);

	Wait(500);
	Move("絵背景100", 5000, 0, 0, null, false);
	Zoom("絵背景100", 5000, 1000, 1000, null, false);
	Fade("絵色100", 2500, 0, null, true);
	Wait(1500);

	Fade("絵色100", 100, 1000, null, true);
	Fade("煙動画", 0, 0, null, true);
	Fade("絵背景200", 0, 1000, null, true);
	Fade("絵色100", 100, 0, null, true);
	Wait(1500);

	Fade("絵色100", 100, 1000, null, true);
	Fade("絵背景300", 0, 1000, null, true);
	Fade("絵色100", 100, 0, null, true);
	Wait(1500);

	Fade("絵色100", 100, 1000, null, true);
	Fade("絵背景400", 0, 1000, null, true);
	Fade("絵色100", 100, 0, null, true);
	Wait(1500);

	Fade("絵色100", 100, 1000, null, true);
	Fade("煙動画", 0, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景300");
	Delete("絵背景400");
	Zoom("絵背景100", 0, 1100, 1100, null, true);
	Zoom("絵背景100", 20000, 1000, 1000, null, false);
	Fade("絵色100", 2000, 0, null, true);

	Wait(2000);

//◆一条の顔アップ（左半分）
//◆眼アップ
//◆フラッシュバック。生首（一導）
//◆眼アップ

//◆見下ろす村正
//◆ウェイト
	SetFwR("cg/fw/fw景明_困惑.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0430a00">
「……结束了……吗……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　村正的战斗……
　全都——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	SetVolume("SE*", 4000, 0, null);
	SetVolume("@mbgm*", 4000, 0, null);
	Wait(2000);
	ClearFadeAll(2000, true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 1500, "BLACK");
	Delete("上背景");

	Wait(1000);

/*
	SetFont("@黑体", 18, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",30411,Center,Middle,auto,auto,"否");
	Rotate("voice01", 0, @0, @0, @90, null,true);
	Rotate("voice01", 0, @0, @0, @0, null,true);
	Request("voice01",NoLog);
	Move("voice01", 0, @-12, @0, null, false);

	WaitKey(3000);

	Delete("voice01");
*/
	CreateTextureEX("絵背景文字", 1600, Center, 230, "cg/sys/Telop/tp_英雄編挿入03.png");
	Fade("絵背景文字", 300, 1000, null, true);
	WaitKey(2000);
	FadeDelete("絵背景文字", 300, true);

	FadeDelete("絵色100", 300, true);

//おがみ：後でテロップ演出
//◆フェードアウト
//◆テロップ：否
//◆↑中央に、小さいフォントで。通常テキストレベル？
//◆フェードイン

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0440a00">
「……!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
//◆テロップ：正義ハ潰エテハナラヌ也
//◆テロップ：不朽不倒ノ大樹タル可シ
//◆↑これも小フォント
//◆フェードイン
	CreateColorEX("絵色100", 1500, "BLACK");

	Fade("絵色100", 500, 1000, null, true);

/*
	SetFont("@黑体", 18, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",30411,Center,Middle,auto,auto,"正義ハ潰エテハナラヌ也");
	Rotate("voice01", 0, @0, @0, @90, null,true);
	Request("voice01",NoLog);
	Move("voice01", 0, @2, @0, null, false);

	WaitKey(3000);

	SetFont("@黑体", 18, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice02",30411,Center,Middle,auto,auto,"不朽不倒ノ大樹タル可シ");
	Rotate("voice02", 0, @0, @0, @90, null,true);
	Request("voice02",NoLog);
	Move("voice02", 0, @-25, @0, null, false);


	WaitKey(3000);
	Delete("voice0*");
*/

	CreateColorSP("絵色文字隠", 1700, "BLACK");
	Move("絵色文字隠", 0, -512, @0, null, true);

	CreateTextureEX("絵背景文字", 1600, Center, 40, "cg/sys/Telop/tp_英雄編挿入04.png");
	Fade("絵背景文字", 300, 1000, null, true);
	WaitKey(4000);
	FadeDelete("絵色文字隠", 300, true);
	WaitKey(4000);
	FadeDelete("絵背景文字", 300, true);

	CreateSE("SE11","se特殊_電撃_帯電01");
	MusicStart("SE11",3000,1000,0,1000,null,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/resize/ev165_最終正宗_al.jpg");

	Move("絵背景100", 5000, @0, @-200, null, false);

	FadeDelete("絵色100", 1500, true);

	Wait(1000);

//◆黒い不定形の波が幾筋も
//◆無軌道に駆け巡る

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0450a01">
《什……什么……？
　这是——!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　这是——
　
　……正宗!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆テロップ：正宗七機巧　最奥ノ一器
//◆↑小フォント。中央に二行で表示か。


//◆黒い奔流がどばーっと天へ昇る




//◆テロップ：神形正宗
//◆↑大フォント。二字ずつ二行。表示は一字ずつ

//◆テロップ：最終正義顕現
//◆↑大フォント。二字ずつ三行。表示は一字ずつ

//◆ごばーん。ガッキリ演出入れつつ
//◆ＥＶ：最終正宗。バケモン。

	SetVolume("SE*", 5000, 0, null);

	CreateColorEX("絵色100", 1400, "BLACK");
	Fade("絵色100", 500, 1000, null, true);

/*
	SetFont("@黑体", 18, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",30411,Center,Middle,auto,auto,"正宗七機巧");
	Rotate("voice01", 0, @0, @0, @90, null,true);
	Request("voice01",NoLog);
	Move("voice01", 0, @2, @0, null, false);

	WaitKey(3000);

	SetFont("@黑体", 18, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice02",30411,Center,Middle,auto,auto,"最奥ノ一器");
	Rotate("voice02", 0, @0, @0, @90, null,true);
	Request("voice02",NoLog);
	Move("voice02", 0, @-25, @0, null, false);


	WaitKey(3000);
	Delete("voice0*");
*/

	CreateColorSP("絵色文字隠", 1700, "BLACK");
	Move("絵色文字隠", 0, -512, @0, null, true);

	CreateTextureEX("絵背景文字", 1600, Center, 143, "cg/sys/Telop/tp_英雄編挿入05.png");
	Fade("絵背景文字", 300, 1000, null, true);
	WaitKey(2500);
	FadeDelete("絵色文字隠", 300, true);
	WaitKey(2500);
	FadeDelete("絵背景文字", 300, true);

	SoundPlay("@mbgm10",0,1000,true);
	WaitKey(2000);


	CreateSE("SE02","se戦闘_攻撃_鎧かする01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵字装", 1500, Center, Middle, "cg/sys/Telop/tp_正宗最終01-a.png");
	SetBlur("絵字装", true, 1, 500, 100, false);
	Shake("絵字装", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("絵字装", 50, 1100, 1100, null, true);
	Zoom("絵字装", 200, 1000, 1000, null, false);

	WaitKey(200);

	CreateSE("SE02b","se戦闘_攻撃_鎧かする01");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateTextureSP("絵字甲", 1500, Center, Middle, "cg/sys/Telop/tp_正宗最終01-b.png");
	SetBlur("絵字甲", true, 1, 500, 100, false);
	Shake("絵字甲", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("絵字甲", 50, 1100, 1100, null, true);
	Zoom("絵字甲", 200, 1000, 1000, null, false);

	WaitKey(100);

	CreateSE("SE02c","se戦闘_攻撃_鎧かする01");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSP("絵字大", 1500, Center, Middle, "cg/sys/Telop/tp_正宗最終01-c.png");
	SetBlur("絵字大", true, 1, 500, 100, false);
	Shake("絵字大", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("絵字大", 50, 1100, 1100, null, true);
	Zoom("絵字大", 200, 1000, 1000, null, false);

	WaitKey(150);

	CreateSE("SE02d","se戦闘_攻撃_鎧かする01");
	MusicStart("SE02d",0,1000,0,1000,null,false);
	CreateTextureSP("絵字義", 1500, Center, Middle, "cg/sys/Telop/tp_正宗最終01-d.png");
	SetBlur("絵字義", true, 1, 500, 100, false);
	Shake("絵字義", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("絵字義", 50, 1100, 1100, null, true);
	Zoom("絵字義", 200, 1000, 1000, null, false);

	WaitKey(1000);

	CreateColorEX("絵色隠し", 1500, "BLACK");
	Fade("絵色隠し", 0, 1000, null, true);

	CreateSE("SE02","se戦闘_攻撃_鎧かする01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵字装", 1500, Center, Middle, "cg/sys/Telop/tp_正宗最終02-a.png");
	SetBlur("絵字装", true, 1, 500, 100, false);
	Shake("絵字装", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("絵字装", 50, 1100, 1100, null, true);
	Zoom("絵字装", 200, 1000, 1000, null, false);

	WaitKey(200);

	CreateSE("SE02b","se戦闘_攻撃_鎧かする01");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateTextureSP("絵字甲", 1500, Center, Middle, "cg/sys/Telop/tp_正宗最終02-b.png");
	SetBlur("絵字甲", true, 1, 500, 100, false);
	Shake("絵字甲", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("絵字甲", 50, 1100, 1100, null, true);
	Zoom("絵字甲", 200, 1000, 1000, null, false);

	WaitKey(100);

	CreateSE("SE02c","se戦闘_攻撃_鎧かする01");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSP("絵字大", 1500, Center, Middle, "cg/sys/Telop/tp_正宗最終02-c.png");
	SetBlur("絵字大", true, 1, 500, 100, false);
	Shake("絵字大", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("絵字大", 50, 1100, 1100, null, true);
	Zoom("絵字大", 200, 1000, 1000, null, false);

	WaitKey(150);

	CreateSE("SE02d","se戦闘_攻撃_鎧かする01");
	MusicStart("SE02d",0,1000,0,1000,null,false);
	CreateTextureSP("絵字義", 1500, Center, Middle, "cg/sys/Telop/tp_正宗最終02-d.png");
	SetBlur("絵字義", true, 1, 500, 100, false);
	Shake("絵字義", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("絵字義", 50, 1100, 1100, null, true);
	Zoom("絵字義", 200, 1000, 1000, null, false);

	WaitKey(100);

	CreateSE("SE02c","se戦闘_攻撃_鎧かする01");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSP("絵字大", 1500, Center, Middle, "cg/sys/Telop/tp_正宗最終02-e.png");
	SetBlur("絵字大", true, 1, 500, 100, false);
	Shake("絵字大", 300, 5, 3, 0, 0, 1000, Dxl1, false);
	Zoom("絵字大", 50, 1100, 1100, null, true);
	Zoom("絵字大", 200, 1000, 1000, null, false);

	WaitKey(150);

	CreateColorEXadd("絵色ガーン", 1500, "WHITE");

	CreateSE("SE02d","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE02d",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵最後字義", 1500, Center, Middle, "cg/sys/Telop/tp_正宗最終02-f.png");
	SetBlur("絵最後字義", true, 1, 500, 100, false);
	Shake("絵最後字義", 500, 5, 3, 0, 0, 1000, Dxl1, false);
	Fade("絵色ガーン", 50, 500, null, false);
	Zoom("絵最後字義", 50, 1080, 1080, null, true);
	Zoom("絵最後字義", 1000, 1000, 1000, null, false);
	FadeDelete("絵色ガーン", 1000, true);

	Wait(300);


	Delete("絵字*");
	Delete("絵色隠し");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev165_最終正宗_a.jpg");

	FadeDelete("絵色100", 2000, true);
	Wait(1000);

	FadeDelete("絵最後字義", 3000, false);

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　——那。
　
　已经，
　已经，

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0460a00">
「……一条……」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0470a01">
《……那已经……不是人类了。
　不是剑胄。亦非武者……》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0480a01">
《那只是……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　……你……
　竟如此地，

　<RUBY text="·········">竟如此地渴望胜利吗</RUBY>？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆ちと演出
//◆以下、一条台詞には変なエフェクトを

	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0490a02">
「……还没有结束……」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0500a02">
「怎么可能结束！」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0510a02">
「正义将……取胜……」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0520a02">
「只要正义无法取胜……{WaitKey(3000);}<BR>　世间的邪恶便无法铲除!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆黒ビーム一閃
//◆村正の胸を貫通。ずがーん。


	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");

	OnSE("se戦闘_正宗_黒ビーム01",1000);
	CreateColorSP("黒幕１", 1500, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);



//	CreateTextureEX("絵EF", 100, Center, Middle, "cg/ef/ef041_青い波動a.jpg");
//	Zoom("絵EF", 0, 1000, 1050, null, false);

//	Shake("絵EF", 500, 0, 5, 0, 0, 500, null, false);
//	Zoom("絵EF", 500, 2000, 1200, Dxl2, false);
//	Fade("絵EF", 200, 1000, null, true);
	CreateTextureSP("絵背景50", 50, Center, -200, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	Delete("絵背景100");

	MusicStart("SE01",0,1000,0,1000,null,false);

//	Wait(300);
//	FadeDelete("絵EF", 500, true);

	Wait(500);

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0530a00">
「……!!」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/025vs0540a01">
《啊——》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_破壊_鎧03",1000);
	Move("絵背景50", 60000, @0, @-600, null, false);
	DrawDelete("黒幕１", 500, 100, "circle_01_00_1", true);

	Wait(1000);

//◆仰向けに倒れ、落ちる……
//◆間を取り。


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　——原来是这样。

　我明白了，一条。

　你我之间的战争……
　早已不仅仅是力量的对决。

　而是生命的。
　存在本身的。
　巨细无遗地。

　对彼此存在的彻底销毁。

　在灵魂与灵魂的厮杀之后，
　最终，哪一方依旧能够留下<RUBY text="····">一丝残片</RUBY>呢——

　唯有以这样的争斗，
　以这种相互纠缠的方式才能明白。

　原来是这样。
　原来是这样啊，一条。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆黒ビーム数条、ずばずばと来る
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	OnSE("se戦闘_正宗_黒ビーム01",1000);
	CreateColorSP("黒幕１", 1500, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(300);

//	FadeDelete("絵EF", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　——那么。
　我也将坚持回应你到最后。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆閃光。黒ビームを全て切り払う
//◆再起する村正
//◆ＥＶ差分：最終正宗に対峙する村正
	CreateColorSPadd("絵色100", 15000, "WHITE");
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/ev/ev165_最終正宗_b.jpg");
	Request("絵背景200", Smoothing);
	Delete("黒幕１");

	OnSE("se戦闘_攻撃_鎧_剣戟03",1000);
	Wait(1000);
	OnSE("se戦闘_衝撃_衝突01",1000);


	FadeDelete("絵色100", 1500, true);



	SetNwR("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/025vs0550a02">
「——村正!!」


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/025vs0560a00">
「……正宗……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　正如你的灵魂还未燃尽，
　我的灵魂也还尚存。

　微弱的脉搏与残缺的内脏，这具肉体已经开始了倒计时。
　但仍努力地将灵魂绑在现世。

　我将赌上我余下的一切来回应你的意志。
　我要将自己的意志贯彻到底。

　我们相互质问。

　正义。
　邪恶。
　质问这两者的含义、意义与真相。

　——继续质问吧。

　直到最后。
　凑斗景明与绫弥一条的生命都燃烧殆尽为止。

　这一命题，
　过去也一定有很多人——王侯、僧侣、骑士、寡妇、
学者、诗人、商人、农夫、乞丐——曾不惜拼上自己的
性命，

　希望能追寻其答案吧。
　笔直地，前行在自己所选择的这条道路上。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 5000, 0, null);

	CreateColorEX("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景300", 300, Center, Middle, "cg/ev/ev165_最終正宗_c.jpg");
	CreateSE("SE01","se特殊_鎧_エネルギー充電01");
	CreateSE("SE02","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE03","se戦闘_攻撃_エネルギー鬩ぎ合い01_L");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景200", 2000, 1050, 1050, Axl1, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 3000, 100, "cg/ev/ev165_最終正宗_c.jpg", false);
	Fade("絵背景300", 100, 1000, null, true);

	Wait(2000);
	Fade("絵色100", 3000, 1000, null, true);

	Wait(2000);

	SoundPlay("@msong02_full",0,1000,true);
	ClearWaitAll(5000, 4000);



//◆ＥＤテーマ開始
//◆差分：村正、出撃
//◆迎え撃つ黒ビーム
//◆切り払う
//◆村正モニター。正面に最終正宗
//◆突撃
//◆フェードアウト
//◆ＥＤロール

}

..//ジャンプ指定
//次ファイル　"mb04_026.nss"

