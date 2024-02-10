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

scene md05_014a.nss_MAIN
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
	#bg003_荒れ野_01=true;
	#ev235_迫る鍛造雷弾_e=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md05_014a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_014.nss"


//●助ける
	PrintBG("上背景", 30000);
	CreateColorSP("下敷き", 50, "BLACK");

	SoundPlay("@mbgm02", 0, 1000, true);


	OnBG(100, "bg003_荒れ野_03.jpg");
	FadeBG(0, true);
	CreateTextureEXadd("炎", 110, @0, @0, "cg/ef/ef046_炎a.jpg");
	Fade("炎", 0, 1000, null, true);
	Zoom("炎", 0, 1100, 1100, null, true);

	DrawEffect("炎", 50, "MiddleWave", 30, 30, null);

	CreateSE("SEめらめら", "se背景_ガヤ_燃える町並み_L");
	MusicStart("SEめらめら", 3000, 1000, 0, 1000,null, true);

	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	FadeDelete("上背景",1000,true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/014a0010a01">
《主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　村正的声音，已无法传达至我内心。
　毫无迷茫。我要拯救她。

　拯救那可怜的生命。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る

	OnSE("se人体_足音_鎧_複数駆け去る01", 1000);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);


	StC(1000, @0, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStC(300, true);


	OnSE("se人体_動作_抱く02", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　距离武者只有数步的距离。
　一口气跑过去，抱起她的身子。

　微弱的呼吸，触碰着我的脸颊。
　少女的双眸，凝视着我。

　我也低头看着她的脸。

　……啊啊。

　我深深地松了一口气。
　判断是正确的——无论谁要对我说什么，都是对的。

　幸好救了她。

　损失不可估量。
　但是，收获也在眼前。

　看啊。
　这名少女。

　空洞般的感觉，似乎不知过去的自己。
　确实，少女的双瞳空洞无神。表情一如往常，缺乏变化。

　但，看看那眸子深处。
　窥探丰富的内心世界。

　认为其空洞是因为它无一欠缺，每个角落都被充斥着。
　只是被零和一百的相似性所迷惑罢了。
　
　少女不是一无所有，而是拥有一切。

　带着充盈的内心，她祝福着我。
　如此便好。判断是正确的。

　如此便能喜悦————

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ev235cをレイヤー重ね
//◆フェードアウト
//◆ゲームオーバー
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SEめらめら", 2000, 0, null);

	CreateTextureEX("孔明の罠だった", 1200, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_e.jpg");

	Wait(1000);

	Fade("孔明の罠だった", 1000, 1000, null, true);
	OnSE("se特殊_雰囲気_不協和音", 1000);

	CreatePlainEX("絵板写", 1200);
	SetBlur("絵板写", true, 3, 5, 200);
	Request("絵板写", Smoothing);

	Fade("絵板写", 500, 800, null, false);
	Zoom("絵板写", 1000, 1100, 1100, Dxl1, true);

	Delete("炎");
	Delete("煙動画");

	DeleteStC(0,true);
	Delete("@OnBG*");
	FadeDelete("孔明の罠だった",1500,false);
	FadeDelete("絵板写",1500,false);

	WaitKey(1000);

	SetVolume("SE*", 3000, 0, null);
	SetVolume("OnSE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);

	ClearWaitAll(3000, 1500);

/*
	CreateColorEX("黒2", 15000, "BLACK");
	Fade("黒2", 2000, 1000, null, true);



	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev009_ゲームオーバー.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	WaitKey();


	ClearWaitAll(1500, 1500);
*/
}

..//ジャンプ指定
//次ファイル