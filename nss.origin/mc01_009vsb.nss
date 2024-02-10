

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_009vsb.nss_MAIN
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
	$First_Battle_Defense = true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$GameName = "mc01_010vs.nss";

}

scene mc01_009vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_009vs.nss"

//●ひとまず防御
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Move("絵演*", 0, -615, @0, Dxl2, false);
	FadeDelete("上背景", 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　来历与目的均不明的敌人。
　虽然要慎重，但也无需过于慎重。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演村正", 17100, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureSP("絵背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	Request("絵背景", Smoothing);
	Request("絵演村正", Smoothing);
	Move("絵演村正", 0, @-160, @120, null, true);
	Zoom("絵演村正", 0, 1300, 1300, null, true);

	CreateSE("SE01","se戦闘_動作_刀構え02");

	Shake("絵演村正", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景", 0, 1500, 1500, null, true);
	Move("絵背景", 60000, 0, @0, null, false);

	Move("絵演", 300, @60, @0, DxlAuto, false);
	Move("絵演村正", 300, @60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵演", 300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　尽管急于决出胜负，但我暂时将这种心情压制下去。
　我举刀过顶。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景", 2000, 1000, 1000, null, false);
	Zoom("絵演村正", 2000, 260, 260, DxlAuto, false);
	BezierMove("絵演村正", 2000, (@0,@0){@-600,@-90}{@+330,@-210}(@400,@-300), DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
　然后继续前进——在碰撞的那一瞬间，我狠狠地
向下落去。
　脱离敌骑的攻击范围。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆そーいう回避動作
	CreateSE("SE01a","se戦闘_動作_空突進02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetBlur("絵演村正", true, 2, 500, 40, true);
	Move("絵演村正", 300, @-1024, @576, Dxl2, true);

	WaitKey(300);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreateTextureSP("絵演合体", 17100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	CreateTextureSP("絵背景", 17000, InLeft, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	Request("絵背景", Smoothing);
	Request("絵演合体", Smoothing);

	Shake("絵演合体", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景", 0, 1500, 1500, null, true);

	Move("絵演合体", 300, @0, @-30, DxlAuto, false);
	Zoom("絵背景", 150000, 1100, 1100, null, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/009vs0520b33">
《我要从你的股间，将你的脊椎狠狠地抽出来!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆斧の一撃
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_斧振る01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

	CreateColorSP("絵色白", 20010, "#FFFFFF");
	Wait(10);

	Delete("絵色黒");
	Delete("絵演*");
	Delete("絵背景*");

	WaitKey(200);

	CreateSE("SE01a","se戦闘_動作_空突進01");
	CreateTextureSP("絵演背景", 18000, Center, -900, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演背景", 1500, @0, @-180, Dxl2, false);
	Fade("絵色白", 850, 0, DxlAuto, false);
	DrawDelete("絵色白", 1000, 100, "slide_06_00_0", true);

	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……碰都没有碰到。
　敌人只是简单地挥下了斧头而已。

　这一击也只是充满了蛮力，没有任何华丽的技巧。
　虽然没有后悔……但我大概对这个虚有其表的敌人警
惕得有些过分。

　就在我思索的瞬间。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 100, 1, null);

//◆ガリッ。攻撃が甲鉄をかする。
//◆ちょっと揺れて、交差
	CreateColorSP("絵白転", 20000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainSP("絵板写", 18010);
	FadeDelete("絵白転", 300, false);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

	SetVolume("SEL*", 3000, 1000, null);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0530a00">
「……!?
　什么？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0540a00">
「受到攻击了吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0550a01">
《……好、好像是。
　虽然没有任何损伤。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0560a01">
《究竟是……!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　方才那的确是敌人的攻击。
　<RUBY text="·····">从它砍下的</RUBY>方向来看，毫无疑问是在攻击。

　但攻击手段却不明。
　战斧的一击应该是完全躲过了的……

　究竟是什么。
　隐藏武器吗，还是某种武术？

　……无存如何，采取更为慎重的应对方法不会错。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 300, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateColorSP("絵色黒", 20000, "#000000");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	WaitPlay("SE*", null);

..//ジャンプ指定
//次ファイル　"mc01_010vs.nss"


}