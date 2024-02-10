//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_016vs.nss_MAIN
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

	$GameName = "mc01_017vs.nss";

}

scene mc01_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_015vs.nss"

//◆移動
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg076_建朝寺境内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_01_02_1", true);

	SoundPlay("@mbgm13",0,1000,true);

	SetNwC("cg/fw/nw駐屯隊伍長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0010e210">
「那个女人！
　入侵者就是你吧!?」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0020a03">
「不是，你说的那位入侵者已经往那边去了。
　如你所见，我只是个尼姑而已。」


{	NwC("cg/fw/nw駐屯隊兵士Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｄ】
<voice name="ｅｔｃ／駐屯隊Ｄ" class="その他男声" src="voice/mc01/016vs0030e205">
「伍、伍长阁下……快看那女人的背后！
　第三分队已经全军覆没!!」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0040a03">
「哎呀大家真的都倒下了呢。
　是在睡午觉吗？」


{	NwC("cg/fw/nw駐屯隊伍長.png");}
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0050e210">
「杀了你!!」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0060a03">
「能不能请你至少听我说完话呢？」


{	NwC("cg/fw/nw駐屯隊伍長.png");}
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0070e210">
「等你匍匐在地之后吧！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ぱんぱんぱん
//◆香奈枝ザ·ワールド。色反転フリーズ
//◆元の世界へ
	CreateSE("SE01a","se戦闘_攻撃_ライフル撃つ4回");
	CreateSE("SE01b","se戦闘_攻撃_ライフル撃つ4回");
	MFlash(50, 100);
	MusicStart("SE01a",0,1000,0,850,null,false);
	Wait(10);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(10);

	SetVolume("SE*", 100, 0, null);

	Delete("@MF*");

	CreateSE("SE01","se特殊_その他_辰気流蒸発");
	CreateEffect("絵効果", 10000, 0, 0, 1024, 576, "NegaPosi");
	SetAlias("絵効果","絵効果");
	Fade("絵効果", 0, 0, null, true);

	MusicStart("SE01",0,1000,0,2000,null,false);
	Fade("絵効果", 200, 1000, Dxl2, false);
	DrawTransition("絵効果", 200, 0, 1000, 100, Dxl2, "cg/data/circle_03_00_0.png", true);

	Wait(500);

	FadeDelete("絵効果", 600, true);

	SetNwC("cg/fw/nw駐屯隊伍長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0080e210">
「——!?」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0090a03">
「……是吗。
　你和我趣味相投呢，伍长阁下。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱんぱんぱん。兵士全滅。
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ4回");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(20);
	FadeDelete("絵色白", 600, true);

//◆香奈枝
	StR(1000, @60, @0,"cg/st/st香奈枝_射撃_私服a.png");
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,true);

	SetNwC("cg/fw/nw駐屯隊伍長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0100e210">
「什……么!?」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0110a03">
「我也最喜欢说让对手匍匐在地了。
　正好……就像这样。」


{	NwC("cg/fw/nw駐屯隊伍長.png");}
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0120e210">
「你、你这混蛋……
　避开了……炮弹……!?」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0130a03">
「呵呵呵。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばーん。
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	FadeStA(0,true);
	Wait(20);
	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0140a03">
「好——了。
　似乎只有我一人变得兴致勃勃了呢
真讨厌——」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0150a03">
「无论怎样用尽全力放声大笑。
　周围的人全都变成了尸体，根本不会回应我。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0160a03">
「……我太悲惨了。
　简直就像被全世界抛弃了一般。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0170a03">
「呵呵呵——啊哈哈哈哈。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル　"mc01_017vs.nss"

}