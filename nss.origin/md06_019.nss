//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_019.nss_MAIN
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
	#bg006_小光の家_03b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_020.nss";

}

scene md06_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_018.nss"


//◆黒画面

//音楽流さず inc櫻井

	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg006_小光の家_03b.jpg");
	FadeBG(0, true);

	FadeDelete("上背景",1500,true);



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
//◆蜘蛛
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0190010a01">
　　　　　　《————主君。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小光の家
//◆ばさっ。起き上がる
	OnSE("se人体_動作_起きる01", 1000);

	FadeDelete("黒",1000,true);



	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0190020a00">
「村正？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　深夜。
　突如其来的剑胄传音让我从床上一跃而起。

　意识已经完全清醒。
　——只为这一刻，我一直借住在离桥梁现场
不远处的光的家中。

　身处瞭望塔的村正，不断地向我
传送信息。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0190030a01">
《似乎被您预料中了呢。
　施工场地开始<RUBY text="····">嘎吱作响</RUBY>了。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0190040a00">
「知道了。
　立刻前往。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　没有必要把时间花在整理装备上。
　原本的装束就已方便行动。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がらっ。たったったっ。
	OnSE("se日常_建物_スライド開く04", 1000);

	CreateColorSP("黒幕", 5000, "#000000");
	DrawTransition("黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnSE("se人体_足音_走る03", 1000);

	WaitKey(3000);

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0190050b34">
「……嗯……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_020.nss"