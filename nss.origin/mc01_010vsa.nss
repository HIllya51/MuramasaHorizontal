
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_010vsa.nss_MAIN
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

	$GameName = "mc01_011vs.nss";

}

scene mc01_010vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_010vs.nss"

//●防御成功
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演", 18000, Center, -40, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　这次先观察情况。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演村正", 17100, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureSP("絵背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	Request("絵背景", Smoothing);
	Request("絵演村正", Smoothing);
	Move("絵演村正", 0, @-160, @120, null, true);
	Zoom("絵演村正", 0, 1300, 1300, null, true);

	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("絵演村正", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景", 0, 1500, 1500, null, true);
	Move("絵背景", 60000, 0, @0, null, false);

	Move("絵演村正", 300, @60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵演", 500, true);

	CreateSE("SE01a","se戦闘_動作_空上昇01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Zoom("絵背景", 2000, 1000, 1000, null, false);
	Zoom("絵演村正", 2000, 260, 260, DxlAuto, false);
	BezierMove("絵演村正", 2000, (@0,@0){@-600,@-90}{@+330,@-210}(@400,@-300), DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　我举刀过顶，迎击敌骑——
　
　这只是为了让对方产生错觉，在交手的那一瞬间我便
大幅度地改变路线。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斧撃
	CreateSE("SE01a","se戦闘_動作_空突進02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetBlur("絵演村正", true, 2, 500, 40, true);
	Move("絵演村正", 300, @-1024, @576, Dxl2, true);

	WaitKey(300);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

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

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　躲过正面而来的一击，
　然后，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ひゅん。何かがかすめ過ぎた。
	CreateSE("SE01","se戦闘_攻撃_振る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	DrawDelete("絵色黒", 150, 100, "slide_01_01_0", true);

	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/010vs0010a00">
「……看到了吗!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/010vs0020a01">
《不行！
　但是明确了一点。那不是<RUBY text="··">射击</RUBY>。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/010vs0030a01">
《毫无疑问地，是某种<RUBY text="··">打击</RUBY>。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/010vs0040a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　也未必是灵活利用腿部进行踢击……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 100, 0, null);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitAction("絵演背景", null);

	CreatePlainSP("絵板写", 18100);
	SetBlur("絵板写", true, 2, 500, 60, false);
	Zoom("絵板写", 800, 2000, 2000, Dxl2, false);
	Rotate("絵板写", 800, @0, @0, @180, AxlDxl,false);

	WaitKey(300);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitPlay("SE*", null);

..//ジャンプ指定
//次ファイル　"mc01_011vs.nss"


}




