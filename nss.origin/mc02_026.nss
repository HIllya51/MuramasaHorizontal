//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_026.nss_MAIN
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

	$GameName = "mc02_027.nss";

}

scene mc02_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_025.nss"


//◆景明の部屋
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景11", 12, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("上背景");
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　离港已经五分钟。
　
　——时间到了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0260010a00">
（村正）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/0260020a01">
《……主君？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我聆听着暌违数天的剑胄传音。
　大鸟大尉正依照我们的事前协商行动
——就是这么回事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0260030a00">
（你能立刻行动吗）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/0260040a01">
《可以。因为我已经没有被关起来了。
　然后呢？　直到刚才为止还把我关在可恶的箱中
的那个女人，没有必要咬死她，是这样吗？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0260050a00">
（你从大尉那听说了吗）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/0260060a01">
《只听说了那些。
　接下来的事，她说让我问主君。》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0260070a00">
（好。
　你能来这里吗？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　通过剑胄传音的感觉，
感觉到我和村正的距离差不多有三百米。
　要瞒过士兵过来虽说有些远，
但若是擅长隐形技的赤蜘蛛——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/0260080a01">
《当然！
　我这几天因为遭受鲋鱼寿司般的待遇
所累积下来的郁闷感，如果现在不发泄，
那要等到什么时候！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆遠くで破壊音。どがーん。
//遠くなので気持ち小さめの音　inc櫻井
	OnSE("se戦闘_破壊_爆発02", 500);
	CreatePlainEX("絵板写", 15);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 10, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0260090a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　不，算了。
　事到如今都无所谓了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆破壊音が近付く

	OnSE("se戦闘_破壊_爆発02", 600);
	CreatePlainEX("絵板写", 15);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");
	WaitKey(1000);
	OnSE("se戦闘_破壊_爆発02", 700);
	CreatePlainEX("絵板写", 15);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");
	WaitKey(1000);
	OnSE("se戦闘_破壊_爆発02", 800);
	CreatePlainEX("絵板写", 15);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 40, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	SetNwC("cg/fw/nw番兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆ボイス「he、hell's agent!?」
//【ｅｔｃ／ＧＨＱ見張り】
<voice name="ｅｔｃ／ＧＨＱ見張り" class="その他男声" src="voice/mc02/0260100e000">
「地、地狱来的使者————!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/0260110a01">
《是你亲爱的邻居！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆どかーん
	OnSE("se戦闘_破壊_建物02", 1000);

	Wait(300);

//◆揺れる
	CreatePlainEX("絵板写", 15);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 80, 20, 0, 1000, DxlAuto, true);
	Delete("絵板写");
	Wait(1500);

//◆村正登場

	SoundPlay("@mbgm10", 0, 1000, true);

	OnSE("se特殊_鎧_駆動音02", 1000);

	StL(1000, @-80, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	Rotate("@StL*", 0, 0, 180, 0, null, true);
	Move("@StL*", 300, @80, @0, null, false);
	FadeStL(300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/0260120a01">
《呼。
　痛快多了。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0260130a00">
「……那真是太好了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　没闲工夫闲聊了。
　我已经听到数十人的脚步声
正往这里杀来。

　为了不让自己沦为脱逃失败而被俘的命运，
我只能刻不容缓地采取行动。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆装甲アクション
	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStL(0,true);
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);
	Fade("絵フラ", 1000, 0, null, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0260140a00">
「遇鬼斩鬼，
　逢佛弑佛。」


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 2000);
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0260150a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆変身
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	StC(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);
	FadeDelete("絵フラ", 1000, true);


	WaitKey(2500);
	SetVolume("SE*", 1000, 0, null);


	OnSE("se特殊_鎧_駆動音02", 1000);
	StC(1000, @0, @0,"cg/st/3d村正標準_立ち_陰義.png");
	FadeStC(300,true);


//◆壁を突き破って脱出


	OnSE("se戦闘_動作_鉄壁吹っ飛ばす", 1000);
	Zoom("@StC*", 300, 1500, 1500, null, false);
	CreatePlainEX("絵板写", 15);
	Fade("絵板写", 0, 1000, null, false);
	Shake("絵板写", 500, 0, 80, 20, 0, 1000, DxlAuto, false);
	Zoom("絵板写", 300, 1500, 1500, null, false);
	Move("絵板写", 300, @-100, @0, null, false);

	DeleteStC(300,true);

	WaitKey(150);

	OnSE("se戦闘_動作_空突進01", 1000);
	DrawDelete("@StC*", 150, 100, "circle_02_01_0", false);
	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);
	SoundPlay("@mbgm34", 0, 1000, true);
	Delete("絵板写");

	DeleteStA(0,true);
	Delete("絵背景*");

	CreateColorSP("絵色黒", 100, "#000000");
	Delete("絵板写");

	ClearWaitAll(300, 0);

}

..//ジャンプ指定
//次ファイル　"mc02_027.nss"