
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2ab.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$振動_Flag = true;
	$兵士気絶_Flag = true;

	$PreGameName = $GameName;


	$GameName = "mc02_031rouka2.nss";

	$Next_GameName = $GameName;
	$GameName = "mc02_031time.nss";

}

scene mc02_031souko2ab.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031souko2a.nss"


//●素手
//◆ドア開けて飛び込む
//◆倉庫２＋兵士
//◆正拳一閃
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bb_01b.jpg");
	CreateSE("SE01","se日常_建物_扉開く07");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	CreateColorSP("フラッシュ白", 15000, "WHITE");
	DrawTransition("フラッシュ白", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnSE("se戦闘_動作_突進01", 1000);

	WaitKey(500);

	OnSE("se戦闘_攻撃_鎧攻撃命中", 1000);

	WaitKey(300);

	CreatePlainEX("絵板写", 5000);
	FadeFR2("絵板写",0,500,600,@0,@0,50,Dxl2, false);

	FadeDelete("フラッシュ白", 300, true);

	SetNwC("cg/fw/nw警備兵Ａ.png");
	//SetNwC("cg/fw/nw兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／倉庫兵士】
<voice name="ｅｔｃ／倉庫兵士" class="その他男声" src="voice/mc02/031so0250e145">
「咕哦哦哦哦哦哦哦哦哦!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆吹き飛ぶ。どがーん。
	CreateSE("SE02","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Shake("絵板写", 300, 0, 80, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0260a00">
「……糟糕。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　用错了力道。
　倒不如说——作为武者的我搞错了实施
行动的时机。

　如果有能准确控制分寸的武器，想必结果会不一样吧。
用『既不任其生，亦不杀之』的不确定力道出拳的结果
就是兵士被打出老远，直接撞在墙壁上。

　我慌忙去确认他的伤势。
　
　……幸好，并未受重伤。

　估计暂时不会恢复意识，就这样放置不管
应该也不会死去。
　我松了一口气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031so0270a03">
「毫不留情……
　不过，就是这一点令人崇拜呢。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0280a04">
「不愧是凑斗大人。
　雄狮狩兔仍不遗余力，真长见识！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　老少二位女性用像是发自内心的褒奖口气，给了我
一顿十足的臭骂。
　算了，这种时候，比起笨拙的安慰，还是这样对我
来说轻松一些。

　我们麻利地巡视了室内，确定没有可疑物之后
迅速撤离了房间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕", 15000, "BLACK");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆士官室振動フラグ
//◆兵士ＫＯフラグ？
//◆フラグ調整
//◆$振動_Flag = true;
//◆$兵士気絶_Flag = true;

//◆→●廊下２

}

..//ジャンプ指定
//次ファイル　"mc02_031rouka2.nss"