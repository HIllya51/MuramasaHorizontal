//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_034.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc04_034.nss","TurboBlurEX",true);
	
//コックピット用Ｓｅｔ
	CP_AllSet("バロウズ");

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

	$GameName = "mc04_035.nss";

	Cockpit_AllFade0();

}

scene mc04_034.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();




..//ジャンプ指定
//前ファイル　"mc04_033vs.nss"


//◆視点チェンジ
//◆バロウズサイド。村正ロックオン

	PrintBG("上背景", 30000);

	CreateTextureEXadd("絵背景効果線", 27500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlurEX");
	SetAlias("プロセス１","プロセス１");


	CreateSE("SEトンデマス", "se戦闘_動作_空走行02_L");
	MusicStart("SEトンデマス",2000,1000,0,1500,Dxl3,true);

	CreateColorSP("黒幕１", 28000, "BLACK");
	CreateTextureSP("絵背景10こっくぴっとよりうえ", 21000, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	CreateTextureSP("むらまさうえ", 21000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Move("むらまさうえ", 0, @100, @0, null, true);
	Zoom("むらまさうえ", 0, 2500, 2500, Axl3, true);
	SetBlur("むらまさうえ", true, 1, 500, 50, false);
	SetBlur("絵背景10こっくぴっとよりうえ", true, 1, 500, 50, false);

	Request("むらまさうえ", Smoothing);
	Request("絵背景10こっくぴっとよりうえ", Smoothing);
	Delete("上背景");


	Shake("絵背景10", 500000, 1, 1, 0, 0, 1000, Axl2, false);
	Shake("むらまさうえ", 500000, 1, 1, 0, 0, 800, Axl2, false);
	Zoom("絵背景10こっくぴっとよりうえ", 0, 4000, 4000, Axl3, false);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);

//	WaitKey(100);
	Move("むらまさうえ", 1000, @-100, @0, null, true);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	MyLife_Count(1,780);
	MyTr_Count(0,300);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	CP_AziChange(0,31,AxlDxl,false);

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(400,"off",false);
	CP_EnemyFade(300,10,420,300);


	OnSE("se戦闘_動作_空突進08",1000);

	Request("プロセス１", Start);

	Zoom("むらまさうえ", 1000, 5, 5, Axl3, false);
	Zoom("絵背景10こっくぴっとよりうえ", 1000, 1000, 1000, Axl2, false);

	Wait(800);

	CreateTextureSP("むらまさ", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Zoom("むらまさ", 0, 5, 5, Dxl3, false);
	FadeDelete("むらまさうえ", 500, false);
	FadeDelete("絵背景10こっくぴっとよりうえ", 500, true);
	Request("プロセス１", Stop);
	Delete("プロセス１");
	Delete("絵背景効果線");

	WaitKey(1000);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0340010a03">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
“<RUBY text="柏洛兹">赝作弓圣</RUBY>”完全地捕捉住了敌人的身姿。
　完全——完美地。


　不会射失。
　绝对不可能射失。

　将村正——
　将凑斗景明，杀死。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆照準がぶれる
	FadeF4("@CP_LockOff", 0, 1000, 3000, 0, 0, null, true);
	FadeF4("@CP_LockOff", 0, 1000, 10000, 0, 0, null, false);
	WaitKey(1000);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0340020a03">
「……呃！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

	//CP_AllDelete();
	Cockpit_AllFade0();
}

..//ジャンプ指定
//次ファイル　"mc04_035.nss"

function TurboBlurEX()
{

	while(1){
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 100, 2000, 2000, Axl2, false);
	Fade("$効果ナット名", 0, 500, null, true);
	Fade("$効果ナット名", 100, 0, null, true);
	Rotate("$効果ナット名", 0, @0, @0, @180, null,true);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 100, 2000, 2000, Axl2, false);
	Fade("$効果ナット名", 0, 400, null, true);
	Fade("$効果ナット名", 100, 0, null, true);


	}

}