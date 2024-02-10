//<continuation number="420">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_011.nss_MAIN
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
	#bg002_空a_01=true;
	#ev172_ヴィッカースメイフライMk4C型_a=true;
	#bg084_飛行船艦橋_01=true;
	#bg204_横旋回背景_01=true;
	#ev950_膝丸斬撃汎用=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_012.nss";

}

scene md04_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_010.nss"


//◆空
//◆雷蝶（膝丸）と幕軍竜騎兵

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);
	Delete("上背景");

//	CreatePlainEX("絵板写", 100);
	CreateTextureSP("絵板写", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
//	Fade("絵板写", 0, 1000, null, true);
	Zoom("絵板写", 0, 2000, 2500, null, true);
	Move("絵板写", 50000, @-200, @200, null, false);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 2000, 1000, 0, 1000, null,true);

	CreateTextureSP("膝丸", 1000, -350, -300, "cg/st/3d膝丸_騎航_抜刀.png");
	CreateTextureSP("お供", 950, @100, @-400, "cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	CreateTextureSP("お供02", 900, @150, @-200, "cg/st/3d九四式竜騎兵_騎航_戦闘a.png");

//	Shake("@膝丸", 50000, 1, 1, 0, 0, 1000, null, false);
	Shake("@お供02", 1000000, 0, 1, 0, 0, 1000, null, false);

	Rotate("お供", 0, @0, @0, @-20, null, true);
	Rotate("お供02", 0, @0, @0, @-20, null, true);
	Rotate("膝丸", 0, @0, @0, @0, null, true);
	Request("膝丸", Smoothing);
	Request("お供*", Smoothing);

	Zoom("お供", 0, 500, 500, null, true);
	Zoom("お供02", 0, 200, 200, null, true);

//	SetBlur("膝丸", true, 1, 300, 150, false);
//	SetBlur("お供", true, 1, 300, 300, false);



$ループムーブナット名 = "@膝丸";
$ループムーブタイム = 20000;

$ループムーブナット名２ = "@お供";
$ループムーブタイム２ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");

	Request("プロセス１", Start);
	Request("プロセス２", Start);

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@1200,@-600,null,true);

	FadeDelete("黒幕１",1500,true);

	Wait(500);
	SoundPlay("@mbgm13", 0, 1000, true);


	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0110010a08">
《形势稍微变化了？》

{	NwC("cg/fw/nw小弓軍竜騎兵Ａ.png");}
//【ｅｔｃ／小弓竜兵Ａ】
<voice name="ｅｔｃ／小弓竜兵Ａ" class="その他男声" src="voice/md04/0110020e127">
《堀越军的龙骑兵队似乎降落到地面上了。
　他们放弃空战了吗？》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0110030a08">
《……原来如此。
　这判断倒是不错。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0110040a08">
《但是吾有吾的做法！
　你们明白吧？》

{	NwC("cg/fw/nw小弓軍竜騎兵Ａ.png");}
//【ｅｔｃ／小弓竜兵Ａ】
<voice name="ｅｔｃ／小弓竜兵Ａ" class="その他男声" src="voice/md04/0110050e127">
《是的!!
　比任何人都更强更美的雷蝶大人!!》

{	NwC("cg/fw/nw小弓軍竜騎兵Ｂ.png");}
//【ｅｔｃ／小弓竜兵Ｂ】
<voice name="ｅｔｃ／小弓竜兵Ｂ" class="その他男声" src="voice/md04/0110060e128">
《我们愿意追随您!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突撃
	Request("プロセス１", Stop);
	Request("プロセス２", Stop);
	Delete("プロセス１");
	Delete("プロセス２");

/*
	Move("膝丸", 300, @-50, @100, null, true);


	OnSE("se戦闘_動作_空突進01", 1000);
	Move("膝丸", 300, @400, @-1000, null, true);

	Move("お供", 300, @-50, @100, null, false);
	Move("お供02", 400, @-50, @100, null, true);

	Move("お供", 300, @400, @-1000, null, false);
	Move("お供02", 400, @400, @-1000, null, true);

*/

	OnSE("se戦闘_動作_空突進01", 1000);
	OnSE("se戦闘_動作_空突進02", 1000);
	SetVolume("停滞", 1000, 0, null);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	CloudZoomDelete(0,true);

	Wait(1000);

//◆中型飛行艦。ev172
	PrintBG("上背景", 30000);
	OnBG(103, "bg084_飛行船艦橋_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("xxx", 5000, @0, @0, "cg/ev/ev172_ヴィッカースメイフライMk4C型_a.jpg");

	CreateColorSP("黒幕１", 6000, "BLACK");
	Delete("上背景");

	DrawDelete("黒幕１", 500, 100, "slide_04_01_1", true);

	Wait(1500);

//◆艦橋
	FadeDelete("xxx",1000,true);


//◆横書き

	SetNwH("cg/fw/ny艦長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110070e231">
「唔唔……
　我军的优势是压倒性的！」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110080e231">
「这种一边倒的战争是无法立功的。
　我可不想让自己的爱舰到最后都在当那强大
又可恨的<RUBY text="Ｇａｌｌｅｙｋｅｅｐ">浮游要塞</RUBY>的衬托啊……」

{	NwH("cg/fw/ny副長.png");}
//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110090e232">
「舰长，再提升些高度比较好。
　离龙骑兵的交战圈太近了。」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110100e231">
「近又怎么样。
　六波罗的龙骑兵不可能突破我军的布阵
攻到这里来。」

//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110110e231">
「就这种形势。」

{	NwH("cg/fw/ny副長.png");}
//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110120e232">
「不……
　也有一部分敌骑集团在激烈地反抗。」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110130e231">
「……哦？
　那真是有趣。」

//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110140e231">
「看看是些什么人吧。
　前进！」

{	NwH("cg/fw/ny副長.png");}
//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110150e232">
「舰长！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆飛行艦前進降下
//◆接近する雷蝶と直衛隊

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);



	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@1200,@-600,null,true);


	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);

	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);
	Zoom("絵板写", 0, 2000, 2000, null, true);
	Move("絵板写", 2000, @-200, @200, null, false);

	CreateTextureSP("膝丸", 1000, @-1000, @0, "cg/st/3d膝丸_騎航_抜刀.png");
	Rotate("膝丸", 0, @0, @0, @0, null, true);
	Zoom("膝丸", 0, 500, 500, null, true);

	CreateTextureSP("お供", 900, @-1000, @-300, "cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	Rotate("お供", 0, @0, @0, @-10, null, true);
	Zoom("お供", 0, 400, 400, null, true);

	CreateTextureSP("お供02", 850, @-1000, @0, "cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	Rotate("お供02", 0, @0, @0, @-10, null, true);
	Zoom("お供02", 0, 300, 300, null, true);

	CreateTextureSP("お供03", 800, @-1100, @-200, "cg/st/3d九四式竜騎兵_騎航_戦闘a.png");
	Rotate("お供03", 0, @0, @0, @-10, null, true);
	Zoom("お供03", 0, 300, 300, null, true);

	Request("膝丸", Smoothing);
	Request("お供*", Smoothing);
	SetBlur("お供*", true, 1, 500, 70, false);
	SetBlur("膝丸", true, 1, 500, 70, false);



	CreateTextureEX("戦艦", 1500, @0, @0, "cg/bg/bg084_飛行船艦橋_01.jpg");

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	OnSE("se戦闘_動作_空突進03", 1000);
	Wait(100);
	Move("膝丸", 250, @1800, @-500, null, false);
	Wait(200);
	Move("お供", 300, @1700, @-500, null, false);

	Wait(100);
	OnSE("se戦闘_動作_空突進03", 1000);
	Move("お供02", 350, @1700, @-500, null, false);
	Wait(200);
	Move("お供03", 400, @1700, @-500, null, false);

	Wait(500);


	Fade("戦艦", 500, 1000, null, true);
	CloudZoomDelete(0,true);

	Delete("黒幕１");



	SetNwH("cg/fw/ny副長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110160e232">
「哦——真的来了！」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110170e231">
「打头阵的骑士……
　那是真打剑胄吗？」

//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110180e231">
「喂，分析人员去识别一下。」

{	NwH("cg/fw/ny副長.png");}
//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110190e232">
「舰长，比起这个，还是后退——」

{	NwH("cg/fw/ny情報担当.png");}
//【ｅｔｃ／飛行艦情報】
<voice name="ｅｔｃ／飛行艦情報" class="その他女声" src="voice/md04/0110200e230">
「结果出来了。
　……哎哎!?」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110210e231">
「怎么了？」

{	NwH("cg/fw/ny情報担当.png");}
//【ｅｔｃ／飛行艦情報】
<voice name="ｅｔｃ／飛行艦情報" class="その他女声" src="voice/md04/0110220e230">
「是、是今川雷蝶中将！
　不会错的。」

//【ｅｔｃ／飛行艦情報】
<voice name="ｅｔｃ／飛行艦情報" class="その他女声" src="voice/md04/0110230e230">
「是六波罗四将军之一!!」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110240e231">
「————」

//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110250e231">
「哦哦哦……？」

{	NwH("cg/fw/ny副長.png");}
//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110260e232">
「舰长，后退——」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110270e231">
「将军身赴最前线？
　虽想称赞你勇敢……不过到底是愚将！」

//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110280e231">
「哎呀，必须感谢他啊！
　求之不得的战功自己送上门了！」

{	NwH("cg/fw/ny副長.png");}
//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110290e232">
「太危险了！
　今川雷蝶是六波罗最强的武人!!」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110300e231">
「管他最强还是无敌，一骑的力量终归有限。
　护卫……哼，就这几个吗！」

//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110310e231">
「副舰长，在害怕之前先算算数怎么样？
　敌人有几骑，我们舰内又搭载着多少龙骑兵，
打起来哪一方会赢？」

{	NwH("cg/fw/ny副長.png");}
//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110320e232">
「但是……」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110330e231">
「传令舰载龙骑兵！
　全部出击！」

//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110340e231">
「别放过这么大的战功!!」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


//◆飛行艦から竜騎兵隊出撃
//◆十騎以上
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("ウィンドウ*");
	Delete("やられ役*");
	Delete("黒い");

	Delete("戦艦");
	DeleteStC(0,true);


	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	CloudZoomSet(1000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1200,@600,null,true);





	CreateTextureSP("やられ役01", 1100, @600, @-800, "cg/st/3dユーウォーキー_騎航_通常.png");
	CreateTextureSP("やられ役02", 1200, @700, @-800, "cg/st/3dユーウォーキー_騎航_通常.png");
	CreateTextureSP("やられ役03", 1000, @700, @-800, "cg/st/3dユーウォーキー_騎航_通常.png");
	Zoom("やられ役01", 0, 800, 800, null, true);
	Zoom("やられ役02", 0, 600, 600, null, true);
	Zoom("やられ役03", 0, 450, 450, null, true);
	Rotate("やられ役*", 0, @0, @0, @-50, null,true);
//	SetBlur("やられ役0*", true, 1, 500, 50, false);

	Move("絵背景100", 5000, @200, @-100, null, false);

	OnSE("se戦闘_動作_空突進03", 1000);
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

	Move("やられ役01", 250, @-2500, @1700, null, true);
	Move("やられ役01", 0, 1200, -1600, null, true);
	Zoom("やられ役01", 0, 700, 700, null, true);

	Move("やられ役02", 250, @-2500, @1700, null, true);
	Move("やられ役02", 0, 1200, -1200, null, true);
	Zoom("やられ役02", 0, 800, 800, null, true);

	Move("やられ役03", 250, @-2500, @1700, null, true);
	Move("やられ役03", 0, 1200, -1400, null, true);
	Zoom("やられ役03", 0, 1200, 1200, null, true);

	Move("やられ役01", 250, @-2500, @1700, null, true);
	Move("やられ役01", 0, 1200, -1300, null, true);
	Zoom("やられ役01", 0, 900, 900, null, true);

	Move("やられ役02", 250, @-2500, @1700, null, true);
	Move("やられ役02", 0, 1200, -1100, null, true);
	Zoom("やられ役02", 0, 1500, 1500, null, true);

	Move("やられ役03", 250, @-2500, @1700, null, true);
	Move("やられ役03", 0, 1200, -1000, null, true);
	Zoom("やられ役03", 0, 700, 700, null, true);

	Move("やられ役01", 250, @-2500, @1700, null, true);
	Move("やられ役01", 0, 1200, -900, null, true);
	Zoom("やられ役01", 0, 1000, 1000, null, true);

	Move("やられ役02", 250, @-2500, @1700, null, true);
	Move("やられ役02", 0, 1200, -1000, null, true);
	Zoom("やられ役02", 0, 800, 800, null, true);

	Move("やられ役03", 250, @-2500, @1700, null, true);
	Move("やられ役03", 0, 1200, -1100, null, true);
	Zoom("やられ役03", 0, 900, 900, null, true);

	Move("やられ役01", 250, @-2500, @1700, null, true);
	Move("やられ役01", 0, 1200, -1000, null, true);
	Zoom("やられ役01", 0, 1200, 1200, null, true);

	Move("やられ役02", 250, @-2500, @1700, null, true);
	Move("やられ役02", 0, 1200, -800, null, true);
	Zoom("やられ役02", 0, 800, 800, null, true);

	Move("やられ役03", 250, @-2500, @1700, null, true);
	Move("やられ役03", 0, 1200, -900, null, true);
	Zoom("やられ役03", 0, 1000, 1000, null, true);






	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_04_00_1.png", true);


	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);


	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);
	Zoom("絵板写", 0, 2000, 2000, null, true);
	Move("絵板写", 100000, @-200, @200, null, false);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 0, 1000, 0, 1000, null,true);



	CreateTextureSP("膝丸", 1000, @-542, @132, "cg/st/resize/3d膝丸_騎航_抜刀l.png");
	Zoom("膝丸", 0, 2000, 2000, null, true);

	Rotate("膝丸", 0, @0, @0, @0, null, true);
	Request("膝丸", Smoothing);
	SetBlur("膝丸", true, 1, 500, 100, false);
	Delete("絵板写");
	Delete("やられ*");
//	Shake("膝丸", 50000, 2, 1, 0, 0, 500, null, false);
	CloudZoomVertex(0,@2400,@-800,null,true);

	Shake_Loop("@膝丸","supershake01");
	Move("膝丸", 700, -142, -132, Dxl2, false);
	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_04_01_0.png", true);
	FadeDelete("黒幕１", 0,true);



//◆雷蝶



	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0110350a08">
《——清风不戏，花终有时，
　怎奈春之山风如此心急。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雷蝶、奮迅
//◆すげー勢いで刈り倒される進駐軍側



	OnSE("se戦闘_動作_空突進01", 1000);

	Move("膝丸", 500, @2400, @-1000, Axl2, false);

	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	CreateColorEXadd("絵白スラッシュ", 6000, "#FFFFFF");
	DrawDelete("絵フラ", 800, 1000, "slide_07_00_0", true);
	SetVolume("停滞", 1000, 0, null);

	CreateColorSP("黒幕１", 5000, "#FFFFFF");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_04_00_0.png", true);

	CreateTextureSP("長空", 110, @-300, @-800, "cg/bg/bg204_横旋回背景_01.jpg");
	Zoom("長空", 0, 2000, 2000, null, true);
	Rotate("長空", 0, @0, @0, @-20, null, true);
	Delete("膝丸");

	CreateCamera("カメラ１", Center, Middle, 1000);
	SetAlias("カメラ１","カメラ１");

	CreateTextureSP("カメラ１/やられ役01", 200, @800, @-800, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureSP("カメラ１/やられ役02", 300, @800, @-800, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureSP("カメラ１/やられ役03", 250, @800, @-800, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureSP("カメラ１/やられ役04", 200, @800, @-800, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureSP("カメラ１/やられ役05", 100, @800, @-800, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureSP("カメラ１/やられ役06", 150, @800, @-800, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureSP("カメラ１/やられ役07", 250, @800, @-800, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureSP("カメラ１/やられ役08", 300, @800, @-800, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureSP("カメラ１/やられ役09", 100, @800, @-800, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	CreateTextureSP("カメラ１/やられ役10", 150, @800, @-800, "cg/st/3dユーウォーキー_騎航_戦闘.png");

	CreateTextureSP("カメラ１/膝丸", 250, @-600, @0, "cg/st/resize/3d膝丸_騎航_戦闘l.png");
	SetBlur("カメラ１/膝丸", true, 1, 500, 70, false);

	CreateTextureEXadd("カメラ１/エフェクト", 250, center, middle, "cg/ef/ef044_火花c.png");
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);

	Rotate("カメラ１/膝丸", 0, @0, @0, @0, null, true);
	Request("カメラ１/膝丸", Smoothing);

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, @50, null,true);
	Fade("絵効果雨", 0, 100, null, true);
	Request("絵効果雨", AddRender);

	CreateSE("SE01","se戦闘_攻撃_刀連撃02");

	Shake_Loop("@カメラ１/膝丸","supershake01");

	MoveCamera("@カメラ１", 1500, 100, 50, @20, AxlDxl, false);
	DrawTransition("黒幕１", 150, 1000, 0, 100, null, "cg/data/slide_04_01_1.png", false);
	Move("長空", 5000, @-1000, @100, null, false);
	Zoom("カメラ１/膝丸", 600, 1500, 1500, AxlDxl, false);
	Move("カメラ１/膝丸", 500, @500, @-600, AxlDxl, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);


	OnSE("se戦闘_攻撃_鎧攻撃命中", 1000);

	Zoom("カメラ１/膝丸", 700, 1000, 1000, AxlDxl, false);
	Move("カメラ１/膝丸", 200, @0, @-100, AxlDxl, false);
	Move("カメラ１/やられ役01", 300, @-1500, @1500, null, true);
	Delete("カメラ１/やられ役01");
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中02", 1000);

	Zoom("カメラ１/膝丸", 700, 1200, 1200, AxlDxl, false);
	Move("カメラ１/膝丸", 200, @200, @100, AxlDxl, false);
	Move("カメラ１/やられ役02", 300, @-1500, @1500, null, true);
	Delete("カメラ１/やられ役02");
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中03", 1000);

	MoveCamera("@カメラ１", 1000, -100, 20, @-40, AxlDxl, false);
	Zoom("カメラ１/膝丸", 700, 500, 500, AxlDxl, false);
	Move("カメラ１/膝丸", 200, @-100, @-100, AxlDxl, false);
	Move("カメラ１/やられ役03", 300, @-1500, @1500, null, true);
	Delete("カメラ１/やられ役03");
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中02", 1000);

	Zoom("カメラ１/膝丸", 700, 700, 700, AxlDxl, false);
	Move("カメラ１/膝丸", 200, @-100, @100, AxlDxl, false);
	Move("カメラ１/やられ役04", 300, @-1500, @1500, null, true);
	Delete("カメラ１/やられ役04");
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中", 1000);

	MoveCamera("@カメラ１", 1000, 30, -60, 900, AxlDxl, false);
	Zoom("カメラ１/膝丸", 700, 1500, 1500, AxlDxl, false);
	Move("カメラ１/膝丸", 200, @200, @-100, AxlDxl, false);
	Move("カメラ１/やられ役05", 300, @-1500, @1500, null, true);
	Delete("カメラ１/やられ役05");
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中03", 1000);

	Zoom("カメラ１/膝丸", 700, 1100, 1100, AxlDxl, false);
	Move("カメラ１/膝丸", 200, @-300, @100, AxlDxl, false);
	Move("カメラ１/やられ役06", 300, @-1500, @1500, null, true);
	Delete("カメラ１/やられ役06");
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中", 1000);

	MoveCamera("@カメラ１", 1000, -60, 30, 700, AxlDxl, false);
	Zoom("カメラ１/膝丸", 700, 900, 900, AxlDxl, false);
	Move("カメラ１/膝丸", 200, @200, @-100, AxlDxl, false);
	Move("カメラ１/やられ役07", 300, @-1500, @1500, null, true);
	Delete("カメラ１/やられ役07");
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中02", 1000);

	Zoom("カメラ１/膝丸", 700, 600, 600, AxlDxl, false);
	Move("カメラ１/膝丸", 200, @-250, @100, AxlDxl, false);
	Move("カメラ１/やられ役08", 300, @-1500, @1500, null, true);
	Delete("カメラ１/やられ役08");
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中", 1000);

	MoveCamera("@カメラ１", 1500, 150, -100, 800, AxlDxl, false);
	Zoom("カメラ１/膝丸", 700, 1300, 1300, AxlDxl, false);
	Move("カメラ１/膝丸", 200, @300, @-100, AxlDxl, false);
	Move("カメラ１/やられ役09", 300, @-1500, @1500, null, true);
	Delete("カメラ１/やられ役09");
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中03", 1000);

	Zoom("カメラ１/膝丸", 700, 1000, 1000, AxlDxl, false);
	Move("カメラ１/膝丸", 200, @1000, @-300, AxlDxl, false);
	Move("カメラ１/やられ役10", 300, @-1500, @1500, null, true);
	Delete("カメラ１/やられ役10");
	Rotate("カメラ１/エフェクト", 0, @0, @0, @309, null,true);
	Zoom("カメラ１/エフェクト", 0, 3000, 300, null, true);
	Zoom("カメラ１/エフェクト", 0, 4000, 500, null, true);
	Fade("カメラ１/エフェクト", 0, 1000, null, true);
	Fade("絵白スラッシュ", 0, 800, null, true);
	Fade("絵白スラッシュ", 200, 0, null, false);
	Fade("カメラ１/エフェクト", 300, 0, Axl2, false);

	Move("カメラ１/膝丸", 1500, @-1000, @400, AxlDxl, true);


	Delete("黒幕１");


	SetFwC("cg/fw/fw雷蝶_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0110360a08">
《落得……花散一地……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_攻撃_刀振る04", 1000);

	WaitKey(500);

//◆ぼーん。敵の群れ、散華
	OnSE("se戦闘_動作_空突進01", 1000);
	Move("カメラ１/膝丸", 300, @1500, @-400, AxlAuto, true);
	Delete("カメラ１/膝丸");

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("ばく１", 17000, "#990000");
	CreateColorSPadd("ばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばく０", 15000, "#FFFFFF");
	DrawTransition("ばく１", 0, 1000, 200, 800, null, "cg/data/circle_11_01_0.png", false);
	DrawTransition("ばく２", 0, 1000, 400, 500, null, "cg/data/circle_11_01_0.png", false);
	DrawTransition("ばく０", 0, 1000, 600, 100, null, "cg/data/circle_11_01_0.png", true);
	FadeDelete("ばく*", 1500, true);


//◆飛行艦

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_04_00_1.png", true);

	OnBG(100, "bg084_飛行船艦橋_01.jpg");
	FadeBG(0, true);
	Delete("長空");
	Delete("絵色スラッシュ");
	Delete("カメラ*");
	Delete("絵効果雨");
	SetVolume("@OnSE*", 1000, 0, null);
	CloudZoomDelete(0,true);

	DrawTransition("黒幕１", 400, 1000, 0, 100, null, "cg/data/slide_04_01_0.png", true);
	FadeDelete("黒幕１", 0,true);

	SetNwH("cg/fw/ny艦長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110370e231">
「——什……」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110380e231">
「怎、怎么……回事？」

{	NwH("cg/fw/ny副長.png");}
//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110390e232">
「来、来了……
　舰长，他来了！」

{	NwH("cg/fw/ny艦長.png");}
//【ｅｔｃ／飛行艦長】
<voice name="ｅｔｃ／飛行艦長" class="その他男声" src="voice/md04/0110400e231">
「…………」

{	NwH("cg/fw/ny副長.png");}
//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110410e232">
「喂！
　该死，快想想办法啊！」

//【ｅｔｃ／飛行艦副長】
<voice name="ｅｔｃ／飛行艦副長" class="その他男声" src="voice/md04/0110420e232">
「就因为你太蠢才会搞成——」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


//◆雷蝶、飛行艦に一撃。ガトーっぽく
	CreateTextureEX("絵背景100", 100, Center, -576, "cg/ev/ev950_膝丸斬撃汎用.jpg");
	CreateTextureEXadd("絵背景200", 200, Center, 0, "cg/ev/ev950_膝丸斬撃汎用.jpg");
//	SL_down(@0, @0,1200);
//	SL_downfade(10);

	OnSE("se戦闘_攻撃_野太刀振る01", 1000);


	Fade("絵背景100", 300, 1000, null, false);
	Move("絵背景100", 600, @0, 0, Axl3, true);


	CreatePlainEX("絵板写", 100);

	OnSE("se戦闘_衝撃_鎧転倒02", 1000);
	OnSE("se戦闘_攻撃_鎧_剣戟04", 1000);
	Zoom("絵背景200", 1300, 1300, 1300, Dxl1, false);
	Fade("絵背景200", 0, 1000, null, false);
	Fade("絵板写", 0, 1000, null, true);

	Shake("絵板写", 500, 3, 30, 0, 0, 1000, Dxl2, false);

	Wait(1000);

	DrawTransition("黒幕１", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	FadeDelete("黒幕１", 1500,true);


//◆ぼーん。爆発

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);

	Delete("絵板写");
	Delete("絵背景*");

	OnSE("se戦闘_破壊_大爆発01", 1000);
	CreateTextureEX("爆発", 5000, @0, @0, "cg/ef/ef022_汎用武者散華.jpg");
	Fade("爆発", 1000, 1000, null, true);

	CreatePlainEX("絵板写", 15000);
	Fade("絵板写", 0, 1000, null, true);

	Shake("絵板写", 1000000, 2, 3, 0, 0, 1000, DxlAuto, false);

	Zoom("絵板写", 4000, 1500, 1500, Dxl2, false);

	DrawTransition("黒幕１", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	FadeDelete("黒幕１", 1500,true);


//	Delete("絵板写");
	
	SetVolume("SE*", 3000, 0, null);
	SetVolume("OnSE*", 3000, 0, null);
	ClearWaitAll(2000, 2000);



}

..//ジャンプ指定
//次ファイル　"md04_012.nss"