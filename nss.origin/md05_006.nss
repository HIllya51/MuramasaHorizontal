//<continuation number="80">

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

scene md05_006.nss_MAIN
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
	#bg065_普陀楽城内郭_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_三世村正·虎徹装備=true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$GameName = "md05_007vs.nss";

}

scene md05_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_005.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆夜明け前の富士山。山頂が朧に輝いている

	PrintBG("上背景", 30000);
	CreateColorSPadd("白", 15000, "WHITE");

	OnBG(100, "bg106_富士山遠望b_00.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm12", 0, 1000, true);


	Delete("上背景");
	FadeDelete("白", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　就如同预言所说的一样。

“第二太阳”的痕迹，已经从天幕上彻底消失。
　它从黎明时开始下降，如今已经降落到地球上。

　与此同时，强烈的光线渐趋平息。
　但对于地面上的居民来说，那朦胧的光辉，
明显没有消失，并骄傲地彰显着自己的所在。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0060010a01">
「富士……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0060020a00">
「似乎正好是山顶。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　既然是生于大和之人，
便不会有谁错认了那雄姿吧。
　万世不变的八洲镇守——灵锋富岳之顶，
“神”之崭新的王座。

　既有着如同戴上了王冠般的庄严。
　又仿佛在昭示着喷发之兆的不祥。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内
//◆景明と村正

//外から中へ移動で少し時間が経過したと思わせるため、長め inc櫻井

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg065_普陀楽城内郭_02.jpg");
	FadeBG(0, true);
	
	StR(1000, @0, @0, "cg/st/st景明_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStL(0, true);
	FadeStR(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0060030a00">
「村正。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0060040a01">
「主君……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0060050a00">
「走吧。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0060060a01">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　对话到此为止。

　也没有必要再做确认。
　事到如今已无需耗费时间。

　一起经历过漫长的战斗。

　只是那共有的过去便已足够。
　如今，在此时想些什么，是为了什么呢？
彼此已全部知晓。

　
　　　　　————唯有战斗到底。

　我阻止光。
　村正阻止二世村正。
　
　我们打倒银星号。

　如果那个“神”那样的话，就毁灭“神”。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲アクション

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	DeleteStA(0,true);
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);
	Fade("絵フラ", 1000, 0, null, true);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorSPadd("絵演窓上/フラ", 25000, "#FFFFFF");
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, 0, -144, "cg/bg/bg065_普陀楽城内郭_02.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

//	DrawEffect("絵演窓上/絵演背景", 50, "LowWave ", 0, 100, null);


	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -220, "cg/st/resize/st景明_装甲_私服aex.png");
	SetBlur("絵演窓上/絵立絵", true, 3, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	FadeDelete("絵演窓上/フラ", 1000, false);

	Move("絵演窓上/絵演背景", 600, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 600, @-200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0060070a00">
「遇鬼斩鬼，
　逢佛弑佛。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

/*
	CreatePlainSP("絵板写", 2000);
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);
*/

	CreateTextureEX("絵演窓上/絵立絵2", 16200, -140, -220, "cg/st/resize/st景明_装甲_私服bex.png");
	SetBlur("絵演窓上/絵立絵2", true, 3, 500, 70, false);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	EffectZoomadd(17000, 600, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Fade("絵演窓上/絵立絵", 200, 0, null, false);
	FadeF4("絵演窓上/絵立絵2", 200, 1000, 400, 0, 0, Dxl2, true);

//	Wait(300);

	CreatePlainSP("絵板写", 20000);
	Delete("絵演窓*");
	Delete("絵色*");
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);
	Zoom("絵板写", 300, 2000, 2000, Axl3, false);
	FadeDelete("絵板写", 300, true);
	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0060080a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆装甲
//◆村正·野太刀（後期）装備バージョン
	#av_三世村正·虎徹装備=true;
/*
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	StC(1000, @0, @0,"cg/st/3d村正最終_立ち_通常.png");
	FadeStC(0,true);
	FadeDelete("絵フラ", 1000, true);

*/
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 20000, "#FFFFFF");

	Fade("絵フラ", 600, 1000, null, true);

	DeleteStA(0,true);

	Wait(1000);

	CreateColorEX("絵色黒", 21000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	CreateColorSP("絵色黒下", 5000, "#000000");
	Delete("絵フラ");
	Delete("絵色黒");

//あきゅん「演出：最後の装甲だしきちんとここも入れたい」
	Cockpit_AllFade(300,720,0);

	CreateSE("SE01a","se特殊_コックピット_起動音04");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5010, "#FFFFFF");
	DrawTransition("絵色白", 600, 0, 1000, 100, Dxl2, "cg/data/slide_05_00_1.png", true);
	Delete("絵色黒下");

	CreateTextureSP("絵演背景", 4500, Center, Middle, "cg/bg/bg062_普陀楽城大手道_02.jpg");

	FadeDelete("絵色白", 2000, true);

	WaitKey(2000);

	PrintGO("上背景", 20000);
	Delete("絵色白");
	Delete("絵色黒");
	Cockpit_AllFade0();

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg065_普陀楽城内郭_02.jpg");
	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/st/resize/3d村正標準_立ち_通常l.png");
	Move("絵背景100", 0, -563, -669, null, true);

	Move("絵背景100", 3000, -563, -539, null, false);

	FadeDelete("上背景", 1000, true);

	WaitKey(1000);

	CreateColorEXadd("絵フラ", 18000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵背景100");

	DeleteStC(0,false);
	StC(1000, @0, @0,"cg/st/3d村正最終_立ち_通常.png");
	FadeStC(300,false);
	FadeDelete("絵フラ", 1000, true);

	WaitKey(1000);

	OnSE("se擬音_雰囲気_抜刀01", 1000);

	StC(1000, @0, @0,"cg/st/3d村正最終_立ち_抜刀.png");
	FadeStC(300,true);

	WaitKey(1000);

	OnSE("se戦闘_動作_空突進01", 1000);


//	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
//	Fade("絵フラ", 900, 0, null, false);
//	DrawDelete("絵フラ", 600, 1000, "slide_08_00_0", false);

//◆離陸
//	DrawDelete("@StC*", 150, 100, "beam_04_00_1", true);

	CreateColorSP("上背景", 19000, "#FFFFFF");
	DrawTransition("上背景", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	DeleteStA(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……村正前行。

　为了让一切结束。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm12",0,1000,true);


//おがみ：素材定義
	CreateColorEXadd("絵色100", 15000, "WHITE");

//おがみ：素材定義_背景
	CreateTextureSP("絵背景100", 100, Center, -1864, "cg/bg/bg201_旋回演出背景市街地_02.jpg");

//おがみ：サーフェース定義
	CreateTextureEX("絵背景150", 10000, 0, 0, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 12000, 1000, null, true);
//おがみ：サーフェース作成
	CreateSurfaceEX("絵Suf",1000,2000,"絵背景150");
	Rotate("絵Suf", 0, @0, @0, @20, null,true);

//おがみ：素材定義_キャラクター
	CreateTextureEX("絵演村正", 1010, Center, Middle, "cg/st/3d村正最終_騎突_戦闘.png");
	Request("絵演村正*", Smoothing);
	Rotate("絵演村正*", 0, @0, @0, @0, null,true);
	Zoom("絵演村正*", 0, 5, 5, null, true);
	Move("絵演村正", 0, 177,-213, null, true);
	SetBlur("絵演村正", true, 1, 300, 70, false);

	CreateTextureEX("絵演バロウズ", 1020, Center, Middle, "cg/st/3d村正最終_騎航_通常3.png");
	Request("絵演バロウズ", Smoothing);
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Zoom("絵演バロウズ", 0, 5000, 5000, null, true);
	Move("絵演バロウズ", 0, 77,-413, null, true);
	SetBlur("絵演バロウズ", true, 1, 300, 50, false);

//おがみ：素材定義_エフェクト
	CreateTextureEXadd("合当理火花a", 17500, center, middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("合当理火花b", 17500, center, middle, "cg/ef/ef044_火花c.png");
	Zoom("合当理火花a", 0, 500, 500, null, true);
	Zoom("合当理火花b", 0, 200, 200, null, true);
	SetBlur("合当理火花*", true, 1, 300, 100, false);

//	SetVertex("合当理火花*", 500, 500);


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
	Zoom("絵演村正", 2500, 50, 50, null, false);
	Fade("絵演村正", 300, 1000, null, false);
	Move("絵背景100", 3000, @0, -1500, Axl1, false);

	FadeDelete("上背景", 1000, true);

	SetVolume("SE11", 2300, 1000, null);
	Wait(1000);

	Rotate("絵演村正", 1100, @0, @0, @-65, Axl2,false);
	BezierMove("絵演村正", 1100, (177,-213){180,10}{160,10}(-1013,-348), Axl3, false);
	Fade("絵演村正", 300, 1000, null, false);

	Wait(300);
	Zoom("絵演村正", 800, 10000, 10000, Axl3, false);
	Wait(500);

	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("絵背景100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(200);

//おがみ：サーフェース動作
	Fade("絵背景150", 0, 1000, null, false);
	Fade("絵Suf", 100, 1000, null, false);
	Move("@絵背景150", 500, @4048, @0, AxlDxl, false);

	Fade("絵演村正", 100, 0, null, true);
	SetFrequency("SE10", 0, 1200, null);


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
	Fade("絵色100", 500, 1000, null, true);

	SetVolume("SE*", 1000, 0, null);

	Wait(1000);


	Delete("プロセス１");
	Delete("プロセス２");
	Delete("絵背景*");
	Delete("合当理火花*");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");
	Delete("絵演*");

}

..//ジャンプ指定
//次ファイル　"md05_007vs.nss"