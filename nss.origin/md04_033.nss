//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();		$GameContiune = 1;
		Reset();
	}

}

scene md04_033.nss_MAIN
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
	#bg101_小弓情景_01=true;
	#bg102_昼古河情景_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_034.nss";

}

scene md04_033.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_032.nss"


//◆小弓
//◆テロップ「小弓」

/*
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	SoundPlay("@mbgm35", 0, 1000, true);

	OnBG(100, "bg101_小弓情景_04.jpg");
	FadeBG(0, true);

	Delete("上背景");

	CreateTextureEX("テロップ", 17000, @550, @500, "cg/sys/Telop/tp_小弓.png");
	Fade("テロップ", 1000, 1000, null, true);
	WaitKey(1000);
	FadeDelete("テロップ", 2000, true);

	FadeDelete("黒幕１", 1500, true);

*/

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	OnBG(90, "bg001_空a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);

	CreateTextureSP("上敷き", 10000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
//	CreateTextureSPadd("光源100", 1000, Center, Middle, "cg/data/circle_04_00_1.png");
	Fade("光源100", 0, 700, null, true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg101_小弓情景_01.jpg");
	Zoom("絵背景50", 0, 1200, 1200, null, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg101_小弓情景_01.jpg");
	Zoom("絵背景100", 0, 1400, 1200, null, true);
	Fade("絵背景100", 0, 600, null, true);
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg101_小弓情景_01.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	DrawTransition("絵背景200", 0, 600, 600, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("絵背景100", 50, "LowWave ", 0, 100, null);
	DrawEffect("絵背景100", 50, "SuperWave", 0, 200, null);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(1000);

	Move("絵背景*", 20000, @-100, @0, null, false);
	FadeDelete("上敷き", 2000, false);

	OnBG(90, "bg101_小弓情景_01.jpg");
	FadeBG(0, true);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_小弓.png",null);
	Wait(2500);

	SetNwH("cg/fw/nyＧＨＱ将校.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／撤退将校】
<voice name="ｅｔｃ／撤退将校" class="その他男声" src="voice/md04/0330010e219">
「……撤退？」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆古河
//◆テロップ「古河」

/*
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



	CreateTextureEX("テロップ", 16000, @550, @500, "cg/sys/Telop/tp_古河.png");
	Fade("テロップ", 1000, 1000, null, true);
	

	OnBG(100, "bg102_昼古河情景_01.jpg");
	FadeBG(0, true);
	WaitKey(1000);
	FadeDelete("テロップ", 2000, true);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
*/

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolume("@OnSE*", 1000, 0, null);
	Delete("絵背景*");

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg102_昼古河情景_01.jpg");
	CreateTextureSP("絵背景150", 200, Center, Middle, "cg/bg/bg102_昼古河情景_01.jpg");

	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 1500, 1500, null, true);

	OnBG(100, "bg102_昼古河情景_01.jpg");
	FadeBG(0, true);

	Move("絵背景150", 20000, @-100, @0, null, false);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_古河.png",null);
	Wait(2500);

	FadeDelete("絵背景150", 1000, true);


	SetNwH("cg/fw/nyＧＨＱ兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／撤退兵Ａ】
<voice name="ｅｔｃ／撤退兵Ａ" class="その他男声" src="voice/md04/0330020e220">
「准备撤退……？」

{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／撤退兵Ｂ】
<voice name="ｅｔｃ／撤退兵Ｂ" class="その他男声" src="voice/md04/0330030e221">
「没错。
　上边下令了。」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／撤退兵Ａ】
<voice name="ｅｔｃ／撤退兵Ａ" class="その他男声" src="voice/md04/0330040e220">
「普陀乐不是还没沦陷吗？」

{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／撤退兵Ｂ】
<voice name="ｅｔｃ／撤退兵Ｂ" class="その他男声" src="voice/md04/0330050e221">
「应该还没有。」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／撤退兵Ａ】
<voice name="ｅｔｃ／撤退兵Ａ" class="その他男声" src="voice/md04/0330060e220">
「那为什么要撤退？」

{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／撤退兵Ｂ】
<voice name="ｅｔｃ／撤退兵Ｂ" class="その他男声" src="voice/md04/0330070e221">
「不知道。」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／撤退兵Ａ】
<voice name="ｅｔｃ／撤退兵Ａ" class="その他男声" src="voice/md04/0330080e220">
「…………」

{	NwH("cg/fw/nyＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／撤退兵Ｂ】
<voice name="ｅｔｃ／撤退兵Ｂ" class="その他男声" src="voice/md04/0330090e221">
「算了，不打了不是很好嘛。」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／撤退兵Ａ】
<voice name="ｅｔｃ／撤退兵Ａ" class="その他男声" src="voice/md04/0330100e220">
「……也对。
　算了，不打了就可以了吧。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1500,true);

}

..//ジャンプ指定
//次ファイル　"md04_034.nss"