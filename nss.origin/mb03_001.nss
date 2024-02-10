//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_001.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb03_001.nss","KirakiraLoop",true);
	Conquest("nss/mb03_001.nss","ZoomRoseLoop",true);
	Conquest("nss/mb03_001.nss","TransitionLoop",true);
	

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
	#ev147_全裸ポージングする雷蝶_a=true;
	#ev147_全裸ポージングする雷蝶_b=true;
	#ev147_全裸ポージングする雷蝶_c=true;

	#ev147_全裸ポージングする雷蝶_aex=true;
	#ev147_全裸ポージングする雷蝶_bex=true;
	#ev147_全裸ポージングする雷蝶_cex=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_002.nss";

}

scene mb03_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mb02_036.nss"

//◆ＣＧ：鏡の前で全裸ポージングしている雷蝶
//◆ウェイト
//◆どたばたばたん。走ってくる部下
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm22",2000,1000,true);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ大", 5000, -720, -352, "cg/ev/resize/ev147_全裸ポージングする雷蝶_al.jpg");
	CreateTextureEXadd("絵キラキラ１", 6000, Center, Middle, "cg/ev/ev147_全裸ポージングする雷蝶キラキラa.png");
	CreateTextureEXadd("絵キラキラ２", 6000, Center, Middle, "cg/ev/ev147_全裸ポージングする雷蝶キラキラb.png");
	CreateTextureSP("絵ローズ", 5500, Center, Middle, "cg/ev/ev147_全裸ポージングする雷蝶薔薇.png");
	Request("絵ローズ", Smoothing);
	Move("絵ローズ", 0, @0, @-50, null, true);

	CreateTextureEX("絵ＥＶ", 5200, Center, Middle, "cg/ev/ev147_全裸ポージングする雷蝶_a.jpg");

	CreateColorSPadd("絵色100", 5100, "WHITE");
	Fade("絵色100", 0, 300, null, true);

	Delete("上背景");

	$キラキラナット名１ = @絵キラキラ１;
	$キラキラナット名２ = @絵キラキラ２;
	$キラキラタイム = 1000;
	
	$ズームローズナット名 = @絵ローズ;
	$ズームローズタイム = 2000;
	$ズームローズ率１ = 1050;
	$ズームローズ率２ = 1000;

	$Warpトランジ = @絵色100;
	$Warpトランジ速度 = 4000;
	$Warpトランジなめらかさ = 500;

	CreateProcess("プロセス１", 150, 0, 0, "KirakiraLoop");
	CreateProcess("プロセス２", 150, 0, 0, "ZoomRoseLoop");
	CreateProcess("プロセス３", 150, 0, 0, "TransitionLoop");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	Move("絵ＥＶ大", 10000, -520, -150, null, false);

	FadeDelete("絵暗転", 2000, true);

	Wait(4000);

	Fade("絵ＥＶ", 1500, 1000, null, true);


	CreateSE("SE01","se人体_足音_走る07");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	CreateSE("SE01","se日常_建物_扉開く06");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵ＥＶ２", 5195, Center, Middle, "cg/ev/ev147_全裸ポージングする雷蝶_b.jpg");
	FadeDelete("絵ＥＶ", 300, true);

	Wait(300);

	SetNwL("cg/fw/nw小弓軍将校.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／雷蝶部下Ｂ】
<voice name="ｅｔｃ／雷蝶部下Ｂ" class="その他男声" src="voice/mb03/0010010e285">
「雷蝶大人!!」


{	FwL("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0010020a08">
「何事？
　不是告诉过你们，打扰吾的清晨·美容·时、
间不容打扰吗。」


{	NwL("cg/fw/nw小弓軍将校.png");}
//【ｅｔｃ／雷蝶部下Ｂ】
<voice name="ｅｔｃ／雷蝶部下Ｂ" class="その他男声" src="voice/mb03/0010030e285">
「出大事了！
　昨夜，倒幕派的恐怖分子居然侵入了普陀
乐城——」


{	FwL("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0010040a08">
「……哎呀。是吗。
　那可真是大事不妙呢……」


{	FwL("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0010050a08">
（呵呵呵……太棒了！
　这样一来幕府就是吾的了）


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0010060a08">
（就算对方是童心大人，不懂礼节的狮子吼也
会毫不留情、横加指责……他就是这么失态的
人。
　茶茶丸也不会特意为他辩解）


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0010070a08">
（如此一来，童心大人除了依靠吾别无他法。
　扶持吾成为四公方统帅，给予我关东统领之
位——！）


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0010080a08">
（嘻嘻。
　嘻嘻嘻嘻嘻嘻嘻嘻……）


{	NwL("cg/fw/nw小弓軍将校.png");}
//【ｅｔｃ／雷蝶部下Ｂ】
<voice name="ｅｔｃ／雷蝶部下Ｂ" class="その他男声" src="voice/mb03/0010090e285">
「——含武者在内的敌方精锐势力袭击了主堡
以及其他几处据点，造成巨大损失……
　古河公方游佐童心大人，
也悲壮地战死——!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆ポージング雷蝶、がびーん。画面骨格崩壊
	Request("プロセス１", Stop);
	Request("プロセス２", Stop);
	Request("プロセス３", Stop);
	SetVolume("@mbgm*", 1000, 0, null);
	Wait(2000);


	OnSE("se日常_建物_窓ガラス破壊01",1000);
	OnSE("se擬音_コミカル_ガーン02",1000);
	FadeDelete("絵キラキラ*", 1000, false);
	DrawEffect("絵ローズ", 1800, "HardSplit", 0, 1000, null);
	CreateTextureSP("絵ＥＶ３", 5190, Center, Middle, "cg/ev/ev147_全裸ポージングする雷蝶_c.jpg");
	EffectZoomadd(10000, 1000, 1000, "cg/ev/ev147_全裸ポージングする雷蝶_c.jpg", false);
	FadeDelete("絵ＥＶ２", 300, true);


	SetFwL("cg/fw/fw雷蝶_仰天.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0010100a08">
「你说什么——!?」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_002.nss"


function KirakiraLoop()
{
	while(1){
	Fade($キラキラナット名１, $キラキラタイム, 1000, null, true);
	Wait(300);
	Fade($キラキラナット名１, $キラキラタイム, 0, null, false);
	Fade($キラキラナット名２, $キラキラタイム, 1000, null, true);
	Wait(300);
	Fade($キラキラナット名２, $キラキラタイム, 0, null, false);
	}
}

function ZoomRoseLoop()
{
	while(1){
	Zoom($ズームローズナット名, $ズームローズタイム, $ズームローズ率１, $ズームローズ率１, AxlDxl, true);
	Zoom($ズームローズナット名, $ズームローズタイム, $ズームローズ率２, $ズームローズ率２, AxlDxl, true);
	}
}

function TransitionLoop()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, null, "cg/data/slide_03_00_0.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, null, "cg/data/slide_03_00_1.png", true);

	}

}