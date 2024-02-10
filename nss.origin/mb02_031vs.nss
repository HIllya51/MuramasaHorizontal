//<continuation number="70">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_031vs.nss_MAIN
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
	#bg070_普陀楽城内階段ホール_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_032.nss";

}

scene mb02_031vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_030vs.nss"

//◆景明ＶＳ常闇
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm10",0,1000,true);//ダミー注意
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	StC(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
//	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀手無.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");


	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　伸出一只手臂护住头部。
　是左臂。这边就算再被切掉一截，也无大碍。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/031vs0010b37">
「……」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/031vs0020a00">
「是我输了。
　柳生宗家。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/031vs0030a00">
「……方才一着的宝贵教诲，
　我由衷感谢。」


{	FwR("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/031vs0040b37">
「于是？」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/031vs0050a00">
「<RUBY text="··">那么</RUBY>，」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/031vs0060a00">
「就此退下。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//◆合当理吹かす
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXadd("絵板写", 5000);
	Fade("絵板写", 100, 750, Dxl2, false);
	SetVertex("絵板写", 740, 240);
	Zoom("絵板写", 500, 1250, 1250, null, false);
	Wait(100);
	FadeDelete("絵板写", 400, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　寒暄的同时。
　向飞行推进器加热。

　输出功率大约为最大限度的一半。
　用于屋内却还是显得过强——但不妨事。

　剧烈的启动。排气。
　极其强制的推进力确保，令全身装甲战栗不已。

　然后向前——
　一味向前。

　没有技艺。
　不摆太刀架势。

　<RUBY text="······">因为已经输了</RUBY>，技艺什么的根本不需要！

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");

//おがみ：戦闘立ち絵完成後、差し替え予定
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -444, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, 0, -120, "cg/st/resize/st常闇斎_通常_私服l.png");
/*
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -120, "cg/st/resize/st常闇斎_通常_私服l.png");
*/

	Zoom("絵演窓上/絵立絵", 0, 500, 500, null, true);
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

//	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
//	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);

	Zoom("絵演窓上/絵立絵", 300, 1000, 1000, Dxl2, false);
	Zoom("絵演窓上/絵演背景", 300, 1100, 1100, Dxl2, false);

	Fade("絵色100", 200, 300, null, false);
	Fade("絵演窓上/絵演背景", 200, 1000, null, false);
	Fade("絵演窓上/絵立絵", 200, 1000, null, true);



	SetFwR("cg/fw/fw常闇斎_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/031vs0070b37">
「太对了！」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//――――――――――――――――――――――――


//◆発進
//◆剣撃
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 15000, "#FFFFFF");
	CreateColorSP("絵色黒", 1000, "#000000");

	Delete("絵演窓上*");
	Delete("絵色100");

	DeleteStA(0,true);
	FadeDelete("絵色白", 600, true);

	CreateSE("SE01b","se戦闘_攻撃_刀振る02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_centerin(@0, @0,3000);
	SL_centerinfade2(5);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　凭借爆发般的推进力向前进发。
　柳生常暗斋看准我出发的瞬间，挥出一剑向我袭来。

　虽说只是把刀，但只要握在这位异相男子手中，就是
件足以刺入武者全身关节部位、致人重伤的凶器。
　然——

　想一击致命就只有一个选择，
那就是必须瞄准头部。
　心脏是不可能的。剑胄的胸膛部位装甲厚实，防刃构
造设计精良，就连武者的刺突也能避开。

　所以，是头部。
　只要保护好头部。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬られた。ずばしゅ。
	CreateSE("SE02","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 2100, @0, @0, "cg/anime/Center/bloodA_5.png");
	CreateTextureSP("絵演", 2000, @0, @0, "cg/anime/Center/bloodA_5.png");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　常暗斋的凶器精确瞄准作为盾牌的左手肘关节，侵入
缝隙间，恣意割裂皮与肉、肉与骨。
——真是超人般的手法。
　血液因恐惧而冻结，呼吸因叹服而停滞。

　纵然是柳生的拿手好戏，到此也是极限。
　刺穿村正左手的刀失去了威势，接触头部一角而后被
轻易弹开。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	Delete("絵色黒");
	Delete("絵演*");
	CreateColorSP("絵色赤床", 100, "#CC0000");
	CreateTextureEXmul("絵演背景", 150, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵演背景", 150, 1000, AxlDxl, false);
	DrawTransition("絵演背景", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
　不顾一切。
　我只是一味前进。

　仿佛要将世间一切抛在身后，我任凭推进力推动我向
前——
　肩部碰到常暗斋胸口。一瞬之间将其
推倒。

　我知道这份撞击根本不会给这位怪物般的高手带来丝
毫痛痒——接触的瞬间，他自己后仰身体倒下，使这份
冲击无效。
　但，无所谓。

　对于这位或许已经倒下的敌人，我没有看他一眼。
　直驱向前。以半飞行之势。一味向前。

　挡我前路者，不复存在。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_032.nss"