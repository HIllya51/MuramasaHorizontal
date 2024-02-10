//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_034vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md01_034vs.nss","RotetoLoop1",true);
	Conquest("nss/md01_034vs.nss","RotetoLoop2",true);
	Conquest("nss/md01_034vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md01_034vs.nss","AnkokuZoomLoop2",true);
	Conquest("nss/md01_034vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md01_034vs.nss","AnkokuZoomLoopEX",true);
	Conquest("nss/md01_034vs.nss","TurboBlur3",true);
	

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
	#ev128_病床の光_a03 = true;
	#ev924_銀星号飢餓虚空魔王星 = true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_035.nss";

}

scene md01_034vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md01_033vs.nss"


//◆ボックス消してウェイト
//◆集中っぽいＳＥとか？
//◆↓雑念ぽく入る絵
//◆過去·病床の光
//◆養母の最期

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateColorEX("絵色100", 16500, "WHITE");
	CreateColorEX("絵色200", 16500, "WHITE");
	CreateColorEX("絵色300", 16400, "BLACK");
//	Zoom("絵色100", 0, 1000, 4, null, true);
//	Zoom("絵色200", 0, 2, 1000, null, true);

	CreateTextureEX("絵背景過去１", 100, Center, Middle, "cg/ev/ev128_病床の光_a03.jpg");
	CreateTextureEX("絵背景過去２", 100, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");
	Zoom("絵背景過去*", 0, 1100, 1100, null, true);

	CreateTextureSPsub("ノイズ", 100, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("ノイズ", 0, 2000, 2000, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 0, 1000, null);

	CreateSE("SE01","se日常_機械_ノイズ03");
	MusicStart("SE01",1000,300,0,1000,null,true);

	FadeDelete("絵暗転", 1000, true);


	SetVolume("SE01", 0, 1000, null);
	Shake("絵背景過去１", 500, 10, 0, 0, 0, 1000, Dxl1, false);
	Fade("絵背景過去１", 0, 1000, null, true);

	Wait(500);

	SetVolume("SE01", 0, 200, null);
	Fade("絵背景過去１", 0, 0, null, true);

	Wait(500);

	SetVolume("SE01", 0, 1000, null);
	Shake("絵背景過去２", 500, 10, 0, 0, 0, 1000, Dxl1, false);
	Fade("絵背景過去２", 0, 1000, null, true);

	Wait(500);

	SetVolume("SE01", 0, 0, null);
	Fade("絵背景過去２", 0, 0, null, true);

	Fade("絵色300", 0, 1000, null, true);
//	Fade("絵色100", 0, 1000, null, true);
//	Zoom("絵色100", 50, 2, 500, Dxl1, true);
//	Zoom("絵色100", 100, 1000, 0, Dxl1, true);

	Delete("絵背景*");
	Delete("ノイズ");

/*
	Fade("絵色300", 0, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 100, 0, null, false);
	Fade("絵色200", 0, 1000, null, true);
	Fade("絵色200", 500, 0, null, true);
*/




//	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
//◆顔グラ無し。ボイスは流用
//【光】
<voice name="光" class="光" src="voice/md01/034vs0010a14">
　——为了用你的手，将母亲杀死——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0020a00">
「……唔!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("上敷き", 18000, "WHITE");

//◆激しくずがーん。
//◆大ダメージ。
	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵背景銀", 0, 0, null, true);

	Fade("絵背景銀近", 50, 1000, null, false);
	Shake("絵背景銀近", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("上敷き", 200, 1000, Axl2, true);


	OnSE("se戦闘_破壊_鎧03",1000);
	CreateSE("SE停滞", "se戦闘_動作_空走行02_L");
	Wait(100);
	Delete("絵色*");
	Delete("プロセス*");
	Delete("絵背景*");

	CreateTextureEX("絵背景スクロール１", 3100, 0, @0, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureEX("絵背景スクロール２", 3100, 0, @0, "cg/bg/bg204_横旋回背景c_01.jpg");
	CreateTextureEX("絵背景スクロール３", 3100, 0, @0, "cg/bg/bg204_横旋回背景_01.jpg");

	CreateTextureSP("絵背景村正", 3102, -150, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	CreateTextureEX("絵背景村正２", 3103, -150, -250, "cg/st/3d村正標準_騎航_戦闘b.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 800, 800, null, true);
	Rotate("絵背景村正", 0, @0, @0, @180, null,true);
//	SetBlur("絵背景村正", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@1000,@0,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,-4000,@0);
	Shake("絵背景村正*", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("絵背景村正*", 10000, @100, @0, Dxl1, false);


	MusicStart("SE停滞",2000,1000,0,1300,null,true);
	FadeDelete("上敷き", 1000, true);

	SoundPlay("@mbgm11",0,1000,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　为什么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0030a00">
「光！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　究竟为什么。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進03");
	CreateSE("SE02","se戦闘_動作_空突進08");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetVolume("SE停滞", 1000, 0, null);

	CloudZoomDelete(500,false);
	Fade("絵背景スクロール３", 500, 1000, null, false);
	Rotate("絵背景村正", 500, @0, @0, @180, Axl2,false);
	Move("絵背景村正*", 500, @100, @-50, Dxl1, false);
	Fade("絵背景村正", 500, 0, null, false);
	Fade("絵背景村正２", 500, 1000, null, false);
	Move("絵背景スクロール３", 1000, -4000, @0, Dxl2, true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵背景スクロール３", 1000, 0, @0, Axl2, false);
	Move("絵背景村正２", 1000, -4000, @0, Axl2, false);

	Wait(600);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景*");
	SCR1stop();

	CreateTextureSP("絵背景銀", 3001, -700, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵背景銀", Smoothing);
	Zoom("絵背景銀", 0, 150, 150, null, true);
	Move("絵背景銀", 0, @100, @20, null, true);
	SetBlur("絵背景銀", true, 1, 500, 100, false);
	CreateTextureSP("絵背景村正", 3500, 50, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 800, 800, null, true);
//	SetBlur("絵背景村正", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(500,@-400,@0,null,false);

	CreateSE("SE停滞", "se戦闘_動作_空走行02_L");

$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@絵背景銀";
$ループムーブタイム２ = 15000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");

	Request("プロセス１", Start);
	Request("プロセス２", Start);

	MusicStart("SE停滞",2000,500,0,1000,null,true);

	Fade("絵背景銀", 1000, 1000, null, false);
	Fade("絵背景村正", 1000, 1000, null, false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0040a00">
「光 !!」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0050a14">
「呵……呵呵。」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0060a14">
「没错，景明。
　叫我的名字！」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0070a14">
「呼喊！
　低语！
　咏唱！」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0080a14">
「叫我！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0090a00">
「光!!」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0100a14">
「啊哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Request("プロセス*", Stop);
	Delete("プロセス*");

	CloudZoomDelete(500,false);
	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("絵背景村正", 500, 2000, 2000, AxlDxl, false);
	Move("絵背景村正", 500, @1500, @0, AxlDxl, false);
	Zoom("絵背景銀", 500, 500, 500, AxlDxl, false);
	Move("絵背景銀", 500, @300, @-50, AxlDxl, true);

	Wait(300);

//◆銀星号
	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md01/034vs0110a14">
「今天的你比以往更加迷人。
　让人无法控制感官欲望了。」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0120a14">
「让你见识下吧……」

{	FwR("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0130a14">
「如你所愿。
　让你见识下光的极限吧。」

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0140a14">
「辰气聚集!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＧ？　銀星号、辰気収斂
//◆黒エナジー収束。ズゴゴゴ。

	CreateSE("SE01","se戦闘_銀星号_飢餓虚空魔王星_準備");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	CreatePlainEX("絵板写", 5000);
	Request("絵板写", AddRender);

	Fade("絵板写", 100, 1000, null, true);
	Zoom("絵板写", 2000, 1200, 1200, Dxl1, true);
	FadeDelete("絵板写", 2000, false);

	CreateColorSPadd("黒幕１", 3000, "#FF00FF");
	DrawTransition("黒幕１", 4000, 0, 500, 200, Dxl1, "cg/data/circle_01_00_0.png", false);

	CreateColorSPmul("黒幕２", 3000, "BLACK");
	DrawTransition("黒幕２", 4000, 0, 500, 200, Dxl1, "cg/data/circle_01_00_0.png", false);

	Wait(3000);
	SetVolume("SE*", 1000, 0, null);


	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0150a01">
《————!?》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0160a01">
《不行!!
　主君，快逃!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　能够逃的了吗？

　我……
　我，要将那家伙……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆※以下、迫力ある演出で。
//◆飢餓虚空·発生
	CreateSE("SE01","se特殊_その他_辰気収斂_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	FadeDelete("絵背景*", 500, false);
	DrawTransition("黒幕１", 500, 500, 1000, 200, Axl1, "cg/data/circle_01_00_0.png", false);
	DrawTransition("黒幕２", 500, 500, 1000, 200, Axl1, "cg/data/circle_01_00_0.png", true);
	Delete("絵背景*");

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0170a00">
「……哧!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色エフェクト", 2000, "#FF00FF");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	CreateTextureSPover("絵背景200", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	Fade("絵背景200", 0, 500, null, true);

	CreateTextureEXsub("ノイズ", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Zoom("ノイズ", 0, 2000, 2000, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 50, 60, null);
	Fade("ノイズ", 0, 100, null, true);

	$Warpトランジ = @絵色エフェクト;
	$Warpトランジ速度 = 3000;
	$Warpトランジなめらかさ = 500;

	$ローテートナット名１ = @絵背景200;
	$ローテート速度１ = 10000;
	$ローテート角度１ = @360;


	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");

	Request("プロセス２", Start);
	Request("プロセス３", Start);

	SetVolume("SE01", 4000, 500, null);

	FadeDelete("黒幕*", 2000, true);


	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　什么？

　黑色的——漩涡？

　那是什么？
　……有什么在蠢蠢欲动!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆空間歪曲
	Fade("ノイズ", 2000, 300, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　扭曲。

　周围开始扭曲。

　犹如被<RUBY text="热浪">阳炎</RUBY>所包围一样。

　可是，扭曲的并不只是<RUBY text="光">可视电磁波</RUBY>而已。

　连空间也是。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆歪曲進行
//◆分身？
	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/やられ役01a", 500, @200, @-200, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureEX("カメラ１/やられ役02a", 350, @400, @-0, "cg/st/3d村正標準_騎航_戦闘c.png");
	CreateTextureEX("カメラ１/やられ役03a", 200, @400, @-300, "cg/st/3d村正標準_騎航_通常4a.png");
	CreateTextureEX("カメラ１/やられ役04a", 100, @500, @-200, "cg/st/3d村正標準_騎突_戦闘.png");


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


$ループムーブナット名 = "@カメラ１/やられ役01*";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@カメラ１/やられ役02*";
$ループムーブタイム２ = 20000;

$ループムーブナット名３ = "@カメラ１/やられ役03*";
$ループムーブタイム３ = 15000;

$ループムーブナット名４ = "@カメラ１/やられ役04*";
$ループムーブタイム４ = 10000;

/*
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
	MoveCamera("@カメラ１", 0, 500, 50, @0, null, true);


	Fade("カメラ１/やられ役01a", 1000, 1000, null, false);
	Fade("カメラ１/やられ役02a", 1500, 1000, null, false);
	Fade("カメラ１/やられ役03a", 2000, 1000, null, false);
	Fade("カメラ１/やられ役04a", 2500, 1000, null, false);
	MoveCamera("@カメラ１", 1500, 0, 200, @300, Dxl1, true);


	Fade("ノイズ", 1000, 500, null, true);

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0180a00">
「————这是……!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　<RUBY text="我">村正</RUBY>，看到了。

　复数的……
　虽然他们形态相同，但动作却不一样。

　有一点<RUBY text="··">偏差</RUBY>。

　是时间的偏差吗？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	MoveCamera("@カメラ１", 500, -100, 60, @0, AxlDxl, true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0190a01">
《世界……在被扭曲。
　……大概……》

{	MoveCamera("@カメラ１", 500, 150, 30, @0, AxlDxl, false);
	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0200a00">
「究竟发生了什么……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我不自觉地低声询问，村正同样呆然地回答。

　…………不对。
　刚才，似乎顺序错了？

　似乎是<RUBY text="···········">村正回答了之后我才问的</RUBY>……
　而且回答的似乎是<RUBY text="··">旁边</RUBY>的村正。

　这到底是？

　难道说时间和空间正在被分离吗!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Request("プロセス*", Stop);
	Delete("プロセス*");
	FadeDelete("@カメラ*", 500, true);
	SetVolume("SE*", 5000, 0, null);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/bg/bg001_空c_03.jpg");
	Fade("絵背景100", 500, 300, null, true);
	Fade("絵背景200", 500, 300, null, true);
	Fade("絵背景300", 500, 400, null, true);
	Fade("絵背景100", 500, 1000, null, true);
	Fade("絵背景200", 500, 1000, null, true);
	Fade("絵背景300", 500, 1000, null, true);


//◆銀星号


	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【光】
<voice name="光" class="光" src="voice/md01/034vs0210a14">
「接下来。」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0220a14">
「要开演了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　在混沌的中心。
　拥有让世界屈服之暴力的人。

　如宏亮吹起终焉喇叭的<RUBY text="加百列">炽天使</RUBY>。 

　奏出一段诗歌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＣＧ処理にする？
	SetFwC("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　
//【光】
<voice name="光" class="光" src="voice/md01/034vs0230a14">
　「<RUBY text="ｂｌａｃｋｈｏｌｅ">饥饿虚空</RUBY>——」
　　　　　　　 「——<RUBY text="ｆａｉｒｉｅｓ">魔王星</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆魔王星
//◆※ムービー用意できるか？
	CreateColorEXadd("絵色100", 15000, "WHITE");

	CreateSEEX("SE01","se戦闘_攻撃_エネルギー鬩ぎ合い01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	MovieSESet(20000,"mv魔王星","se戦闘_銀星号_飢餓虚空魔王星_発動");
	Fade("絵色100", 200, 1000, null, false);
	MovieSEStart(2000);

	SetVolume("SE01", 3000, 500, null);


	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0240a00">
「哦……哦啊啊啊啊啊啊!?」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0250a01">
《主君!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Delete("絵背景*");

//	CreateEffect("レンズ１", 10000, -100, -300, 1200, 1200, "Lens");
//	SetAlias("レンズ１", "レンズ１");
//	Fade("レンズ１", 0, 1000, null, true);

	CreateTextureEX("絵背景村正", 3500, Center, Middle, "cg/st/3d村正標準_騎航_通常3a.png");
	Rotate("絵背景村正", 0, @0, @0, @-50, null,true);
	Move("絵背景村正", 0, @-100, @20, null, true);

	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 1000, 1000, null, true);
//	Shake("絵背景村正", 1000000, 1, 1, 0, 0, 500, null, false);
//	SetBlur("絵背景村正", true, 1, 400, 70, false);


$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 2500;

	CreateProcess("プロセス５", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス５","プロセス５");


	CreateTextureEXsub("絵背景効果線", 3000, Center, Middle, "cg/ef/ef039_時間移動.jpg");
//	SetVertex("絵背景効果線", 512, 270);
	$効果ナット名 = @絵背景効果線;

	CreateProcess("プロセス６", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス６","プロセス６");



	CreateTextureSPover("絵背景100", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	CreateTextureSPover("絵背景200", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 4000, 4000, null, true);
	Fade("絵背景200", 0, 700, null, true);
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 4000, 4000, null, true);
	Fade("絵背景100", 0, 700, null, true);


	CreateTextureEX("ノイズ", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("ノイズ", Smoothing);
	Zoom("ノイズ", 0, 1500, 1500, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 20, 30, null);
	Fade("ノイズ", 0, 1000, null, true);


	$ローテートナット名１ = @絵背景100;
	$ローテート速度１ = 100000;
	$ローテート角度１ = @3600;

	$ローテートナット名２ = @絵背景200;
	$ローテート速度２ = 100000;
	$ローテート角度２ = @3600;

	$ズームナット名１ = @絵背景100;
	$ズームナット名２ = @絵背景200;


	CreateProcess("プロセス１", 150, 0, 0, "AnkokuZoomLoopEX");
	SetAlias("プロセス１","プロセス１");
	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");
	CreateProcess("プロセス４", 150, 0, 0, "RotetoLoop2");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);
	Request("プロセス５", Start);
	Request("プロセス６", Start);


	Rotate("絵背景村正", 3000, @0, @0, @50, Dxl1,false);
	Zoom("絵背景村正", 3000, 400, 400, Dxl1, false);
	Fade("絵背景村正", 1000, 1000, null, false);

	FadeDelete("絵色100", 2000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　————被拉过去了!!

　不妙。
　无疑，如果在这里被抓住就完了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0260a00">
「村正！　飞行推进器！
　全速脱离!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0270a01">
《了——了解！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ぶおーん。
//◆無駄。
	CreateTextureEX("絵背景村正２", 3500, -250, -150, "cg/st/3d村正標準_騎突_戦闘.png");
	Rotate("絵背景村正２", 0, @0, @180, @0, null,true);
	Request("絵背景村正２", Smoothing);
	Zoom("絵背景村正２", 0, 400, 400, null, true);
	Shake("絵背景村正２", 1000000, 2, 3, 0, 0, 500, null, false);


$ループムーブナット名２ = "@絵背景村正２";
$ループムーブタイム２ = 1500;

	CreateProcess("プロセス７", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス７","プロセス７");

	Request("プロセス７", Start);


	EffectZoomadd(2000, 1000, 1000, "cg/ef/ef044_火花a.jpg", false);
	OnSE("se戦闘_動作_鎧_合当理吹かし01",1000);
	Rotate("絵背景村正", 500, @0, @0, @180, Axl2,false);
	Fade("絵背景村正", 500, 0, Axl2, false);
	Fade("絵背景村正２", 500, 1000, null, true);

	EffectZoomadd(2000, 2000, 1000, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵背景村正２", 2000, 500, 500, Dxl2, true);

	OnSE("se特殊_陰義_重力波01",1000);
	Zoom("絵背景村正２", 1000, 400, 400, AxlDxl, true);

	Request("プロセス５", Stop);
	Delete("プロセス５");
	Delete("絵背景村正");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　……无法逃离!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0280a01">
《为什么!?》

{	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0290a00">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　这种毫无道理的牵引力。

　要去理解。

　……就是徒劳。
　这简直是徒劳。

　做什么也没用。

　究竟有什么办法。

　<RUBY text="····">连同空间</RUBY>一并被牵引了。
　怎样的方法才能抵抗!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0300a01">
《要——要被吞噬……》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆吸収

	OnSE("se戦闘_銀星号_飢餓虚空魔王星_発動",1000);
	Zoom("絵背景村正２", 2000, 350, 350, AxlDxl, false);

	CreateColorEXadd("絵色エフェクト", 2500, "#FF00FF");

	$Warpトランジ = @絵色エフェクト;
	$Warpトランジ速度 = 1000;
	$Warpトランジなめらかさ = 500;
	Fade("絵色エフェクト", 1000, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　被漩涡吸进去的并不只有我。
　地面上大部分事物都——

　建筑。砂土。树木。
　那是什么？……是死骸吗？

  正被完全淘尽，吞噬。
　在到达漩涡中央之前，被压榨得渐渐失去原形。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0310a01">
《这是……<RUBY text="·····">辰气之地狱</RUBY>……》

{	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0320a00">
「——呃！」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆村正納刀
	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0330a01">
《……主君!?》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0340a00">
「要砍了。」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0350a01">
《砍——砍哪里？》

{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0360a00">
「<RUBY text="··">这里</RUBY>！」

//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0370a00">
「无法逃离的话，就只有砍断！」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0380a01">
《……了解！》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

//◆レールガン準備

	CreateSE("SE10","se特殊_電撃_帯電02");
	MusicStart("SE10",0,1000,0,1000,null,true);

	CreateTextureEX("絵背景400", 10000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");
	EffectZoomadd(15000, 1000, 1000, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg", false);
	Fade("絵背景400", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　即便这里是地狱。

　只要有一柱光芒，也会成为让人挣脱而出的藤蔓！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0390a00">
「电磁拔刀——祸!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ずばー。
//◆虚しく散る光
	CreateColorEXadd("絵色100", 18000, "WHITE");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_e.jpg");
	Request("絵背景300", AddRender);
	Zoom("絵背景300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se特殊_電撃_放電01");
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE04","se戦闘_破壊_鎧03");
	CreateSE("SE05","se戦闘_破壊_鎧05");

	EffectZoomadd(15000, 1000, 1000, "cg/ev/ev902_村正電磁抜刀レールガン_e.jpg", false);
	SetVolume("SE01", 2000, 0, null);
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("絵背景300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("絵色100", 1000, 1000, null, true);

	Delete("絵背景300");
	Delete("絵背景400");

	OnSE("se特殊_mv用_電磁抜刀_威",1000);


	Wait(2500);



	SetVolume("SE*", 3000, 0, null);
	SetVolume("OnSE*", 3000, 0, null);

	Request("プロセス７", Stop);
	Delete("プロセス７");
	Delete("絵背景村正２");

	CreateTextureSP("絵背景村正", 3500, Center, Middle, "cg/st/3d村正標準_騎航_通常3a.png");
	Move("絵背景村正", 0, @-100, @20, null, true);
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 300, 300, null, true);

//	SetBlur("絵背景村正", true, 1, 400, 70, false);

$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 10000;

	CreateProcess("プロセス５", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス５","プロセス５");

	Request("プロセス５", Start);

	DrawDelete("絵色100", 2000, 200, "spiral_01_00_0", true);

	Wait(1000);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/034vs0400a01">
《——诶——》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　<RUBY text="···">消灭了</RUBY>。

　抱着将这暗黑世界的一切，将中枢神经银星号两断
的觉悟而放出的闪光一刀————

　它并未在黑暗中指出逃生的轨迹，就消失了。

　我右手里，已无任何东西。
　必杀之技连同武器一并，被黑暗吞噬。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0410a00">
「……哦哦……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　连光柱也。

　连光柱也无法逃离这黑暗吗!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆魔王星。ev924
//おがみ：現状でもかなり重いようなので一枚落としました
//	CreateTextureEX("絵演銀覆", 16010, -680, -440, "cg/ev/resize/ev924_銀星号飢餓虚空魔王星l.jpg");
	CreateTextureEX("絵演銀", 16000, -680, -440, "cg/ev/resize/ev924_銀星号飢餓虚空魔王星l.jpg");
	Request("絵演銀*", Smoothing);
	Rotate("絵演銀*", 0, @0, @180, @0, null,true);
//	Zoom("絵演銀覆", 0, 1050, 1050, null, true);
	Fade("絵演銀*", 300, 500, null, true);



/*

//あきゅん「演出：グンバツに重くなったので簡易版にしておく」
	CreateTextureEX("絵演銀覆", 16010, -680, -440, "cg/ev/resize/ev924_銀星号飢餓虚空魔王星l.jpg");
	CreateTextureEX("絵演銀", 16000, -680, -440, "cg/ev/resize/ev924_銀星号飢餓虚空魔王星l.jpg");
	Rotate("絵演銀*", 0, @0, @180, @0, null,true);
	Zoom("絵演銀覆", 0, 1050, 1050, null, true);
	MoveFFP1("@絵演銀",20000);
	MoveFFP2("@絵演銀覆",25000);
	Fade("絵演銀*", 300, 500, null, true);
*/

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【光】
<voice name="光" class="光" src="voice/md01/034vs0420a14">
「景明，怎样……
　这力量。」

//【光】
<voice name="光" class="光" src="voice/md01/034vs0430a14">
「这就是光的<RUBY text="力量">武力</RUBY>！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　我已束手无策。
　被拉往地狱中心，听着不知从何而来的声音。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【光】
<voice name="光" class="光" src="voice/md01/034vs0440a14">
「我要究极这武力的更高点。
　通往更加高的地方。」

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0450a14">
「然后登上<RUBY text="神">天</RUBY>之宝座……」

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0460a00">
「……神……」

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0470a14">
「景明……你忘了吗？
　是你告诉光<RUBY text="·····">成为神的事</RUBY>的啊。」

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0480a14">
「若人类背叛母亲而夺取父亲，就是违背人法。
但神有神的法，神的法会饶恕。
　——因此我要打倒众人。证明我至强的力量。
超越人而被称作神。」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0490a14">
「成为神，就能将我的欲望<RUBY text="···">正当化</RUBY>，
　将人世破坏，就能解放被人法囚困的父亲……」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0500a14">
「没有任何阻隔，光和父亲就能面对面！
　就能将被母亲抢走的父亲夺回来！」

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md01/034vs0510a14">
「这就是光的霸之道!!」

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/034vs0520a00">
「——啊——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　父亲。
　光，<RUBY text="······">被夺走的父亲</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);

	Wait(1000);

//	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
//	Fade("絵色白", 300, 1000, null, true);

}

..//ジャンプ指定
//次ファイル　"md01_035.nss"

function RotetoLoop1()
{
	while(1){
	Rotate($ローテートナット名１, $ローテート速度１, @0, @0, $ローテート角度１, null,true);
	}
}

function RotetoLoop2()
{
	while(1){
	Rotate($ローテートナット名２, $ローテート速度２, @0, @0, $ローテート角度２, null,true);
	}
}


function AnkokuZoomLoop1()
{
	while(1){

	Zoom($ズームナット名１, 2000, 2000, 2000, null, false);
	Fade($ズームナット名１, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名１, 500, 0, null, true);
	Zoom($ズームナット名１, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop2()
{
	while(1){

	Zoom($ズームナット名２, 2000, 2000, 2000, null, false);
	Fade($ズームナット名２, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名２, 500, 0, null, true);
	Zoom($ズームナット名２, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop1()
{
	while(1){

	Zoom($ズームナット名１, 2000, 2000, 2000, null, false);
	Fade($ズームナット名１, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名１, 500, 0, null, true);
	Zoom($ズームナット名１, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoopEX()
{

	Zoom($ズームナット名１, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名１, 500, 1000, null, true);

	while(1){

	Wait(1000);
	Zoom($ズームナット名２, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名２, 1000, 1000, null, false);
	Fade($ズームナット名１, 1000, 0, null, true);
	Zoom($ズームナット名１, 0, 6000, 6000, null, true);

	Wait(1000);
	Zoom($ズームナット名１, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名１, 1000, 1000, null, false);
	Fade($ズームナット名２, 1000, 0, null, true);
	Zoom($ズームナット名２, 0, 6000, 6000, null, true);

	}
}


function TurboBlur3()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, Axl2, "cg/data/circle_01_00_1.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, Dxl2, "cg/data/circle_01_00_0.png", true);

	}

}