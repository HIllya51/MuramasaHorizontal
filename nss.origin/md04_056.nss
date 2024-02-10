//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_056.nss_MAIN
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
	#bg069_普陀楽城内広間_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_057.nss";

}

scene md04_056.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_055.nss"


//◆走る音
//◆ずばーん。戸を開ける
//◆城主の間
//◆雷蝶
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	OnBG(100, "bg069_普陀楽城内広間_01a.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm35", 0, 1000, true);
	OnSE("se人体_足音_鎧_複数駆け寄る01", 1000);



	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


	WaitKey(1500);

	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se人体_足音_鎧歩く03",1000);
	OnSE("se日常_建物_スライド開く02", 1000);

	StR(1100, @0, @0, "cg/st/3d膝丸_立ち_通常.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0560010a08">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("血01", 5000, @0, @0, "cg/ef/ef007_汎用血しぶき.jpg");
	CreateTextureEXadd("血02", 5100, @0, @0, "cg/ef/ef006_汎用血しぶき.jpg");
	Fade("血01", 1000, 1000, null, false);
	Fade("血02", 1000, 1000, null, true);

	WaitKey(1000);

	SetFwC("cg/fw/fw雷蝶_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0560020a08">
「…………四郎…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//◆また足音

	FadeDelete("血*", 1000, true);


	OnSE("se人体_足音_走る02", 1000);
	WaitKey(1500);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se日常_建物_スライド開く02", 1000);
	WaitKey(1500);
	StL(1000, @0, @0, "cg/st/st六波羅将校_通常_制服.png");
	FadeStL(300, true);


	SetNwC("cg/fw/nw高級士官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/md04/0560030e284">
「雷蝶大人！
　雷蝶大人——————!!」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0560040a08">
「……怎么了？」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/md04/0560050e284">
「镰、镰仓上空……
  进驻军的<RUBY text="Galleykeep">重飞行舰</RUBY>又出现了!!」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0560060a08">
「<RUBY text="Galleykeep">重飞行舰</RUBY>!?
　确定吗？」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/md04/0560070e284">
「是的！」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0560080a08">
「事到如今……它还打算做什么？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_057.nss"