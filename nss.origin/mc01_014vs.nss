//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_014vs.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_015vs.nss";

}

scene mc01_014vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_013.nss"

//◆門前
//◆六波羅兵×２
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");
	OnBG(100,"bg056_建長寺三門前_01.jpg");
	FadeBG(0,true);
	StL(1100, @-95, @0,"cg/st/st六波羅兵士_通常_制服.png");
	StCL(1000, @95, @0,"cg/st/st六波羅兵士_通常_制服.png");
	FadeStA(0,true);
	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetNwC("cg/fw/nw駐屯隊兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【ｅｔｃ／駐屯隊Ａ】
<voice name="ｅｔｃ／駐屯隊Ａ" class="その他男声" src="voice/mc01/014vs0010e202">
「那个女人，给我站住！」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服b.png");
	FadeStR(300,true);

	SetNwC("cg/fw/nw駐屯隊兵士Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0020e203">
「目前，建朝寺在幕府的管理之下。
　一般客人不可参拜。」

//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0030e203">
「赶紧离开！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0040a03">
「我可不是来参拜的客人。
　请让我进去吧。」


{	NwC("cg/fw/nw駐屯隊兵士Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0050e203">
「什么……？
　是寺院的相关人员吗？」


{	NwC("cg/fw/nw駐屯隊兵士Ａ.png");}
//【ｅｔｃ／駐屯隊Ａ】
<voice name="ｅｔｃ／駐屯隊Ａ" class="その他男声" src="voice/mc01/014vs0060e202">
「让我看看证明证。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0070a03">
「证明证？」


{	NwC("cg/fw/nw駐屯隊兵士Ａ.png");}
//【ｅｔｃ／駐屯隊Ａ】
<voice name="ｅｔｃ／駐屯隊Ａ" class="その他男声" src="voice/mc01/014vs0080e202">
「是驻屯队长发行的。
　若果真是相关人员，必定随身携带。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0090a03">
「啊……是、是。
　这个可以吗？」


{	NwC("cg/fw/nw駐屯隊兵士Ａ.png");}
//【ｅｔｃ／駐屯隊Ａ】
<voice name="ｅｔｃ／駐屯隊Ａ" class="その他男声" src="voice/mc01/014vs0100e202">
「嗯……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆香奈枝→ライフル構え→発砲二発
//◆抜き打ちの素早さを演出で表現
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");
	CreateSE("SE01a","se戦闘_攻撃_ライフル撃つ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(80);
	MusicStart("SE01a",0,1000,0,1000,null,false);

	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_私服a.png");
	FadeStR(0,true);

	FadeDelete("絵色白", 1000, true);

	SetNwC("cg/fw/nw駐屯隊兵士Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0110e203">
「什——」


{	NwC("cg/fw/nw駐屯隊兵士Ａ.png");}
//【ｅｔｃ／駐屯隊Ａ】
<voice name="ｅｔｃ／駐屯隊Ａ" class="その他男声" src="voice/mc01/014vs0120e202">
「啊呃……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0130a03">
「万国通用的通行许可证。
　我可是已经交给你了哟？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたばた。
	CreateSE("SE01","se人体_衝撃_転倒05");
	CreateSE("SE01a","se人体_衝撃_転倒03");
	Shake("@StL*", 300, 2, 1, 0, 0, 1000, null, false);
	Shake("@StML*", 300, 2, 1, 0, 0, 1000, null, false);

	Move("@StL*", 300, @-30, @60, Dxl1, false);
	Move("@StML*", 300, @10, @60, Axl2, false);
	DeleteStL(300,false);
	DeleteStCL(300,true);
	MusicStart("SE01*",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw駐屯隊兵士Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0140e203">
「你……你这混蛋。」


{	DeleteStR(300,false);
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0150a03">
「请多担待。」


{	NwC("cg/fw/nw駐屯隊兵士Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0160e203">
「……混蛋——」

//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0170e203">
「不要小看……六波罗武士！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆呼子。ふぃーっ。
	CreateSE("SE01","se戦闘_楽器_呼子鳴る");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0180a03">
「哎呀……」


{	NwC("cg/fw/nw駐屯隊兵士Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0190e203">
「同伴们会立刻赶来……龙骑兵也是……
　你就为自己愚蠢的行为……后悔吧……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0200a03">
「真有骨气。
　胸口被射穿还能吹哨子。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0210a03">
「非常出色。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ずどん。頭に一発。
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"mc01_015vs.nss"

}
