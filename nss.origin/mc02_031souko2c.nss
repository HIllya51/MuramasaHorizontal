
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2c.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();


	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_031rouka2.nss";

//嶋：カウント調整
//	$Next_GameName = $GameName;
//	$GameName = "mc02_031time.nss";

}

scene mc02_031souko2c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031souko2.nss"


//●さよ
//◆ドア開けて飛び込む
//◆倉庫２＋兵士
//◆疾風

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bb_01b.jpg");
	CreateSE("SE01","se日常_建物_扉開く07");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	OnSE("se戦闘_動作_突進01", 1000);

	WaitKey(500);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	OnSE("se戦闘_攻撃_鎧_打撃01", 1000);

	WaitKey(1500);

	SetNwC("cg/fw/nw警備兵Ａ.png");
	//SetNwC("cg/fw/nw兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／倉庫兵士】
<voice name="ｅｔｃ／倉庫兵士" class="その他男声" src="voice/mc02/031so0300e145">
「——————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かくっ。兵士倒れ

	StL(1100, @0, @,"cg/st/stさよ_戦闘_私服.png");
	FadeStL(0,false);

	Fade("絵色白",1500,0,null,true);

	OnSE("se人体_衝撃_転倒02", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　士兵连哀鸣声都没有发出。

　那究竟是怎样的体术？
　在我看来，不过是抚摸脖颈的动作而已，
但士兵却瘫作一团，仿佛腰间丧失支撑力般
失去了意识。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0310a04">
「务请抓紧。很快就会醒来。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】

<voice name="景明" class="景明" src="voice/mc02/031so0320a00">
「……明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我抑制住心中的战栗感，与大尉她们分工检查仓库
内部。
　
　并没有什么奇怪的东西。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕", 15000, "BLACK");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆→●廊下２

}

..//ジャンプ指定
//次ファイル　"mc02_031rouka2.nss"
