//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc03_024vs.nss_MAIN
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
	#ev180_落ちてゆくガッタイダー·ヘッド_a=true;
	#ev180_落ちてゆくガッタイダー·ヘッド_b=true;
	#bg016_公園a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	CP_AllDelete();

	$PreGameName = $GameName;

	$GameName = "mc03_025.nss";

}

scene mc03_024vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_023vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 19900, "#000000");

	CreateTextureSP("絵演背景軽", 112, Center, Middle, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演背景重", 111, Center, Middle, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演背景", 110, Center, Middle, "cg/bg/bg202_旋回演出背景山_02.jpg");
	Zoom("絵演背景*", 0, 700, 700, null, true);
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵演背景");
	//SetSurface("絵演背景重","絵効果サフ");
	//SetSurface("絵演背景軽","絵効果サフ");
	Fade("絵効果サフ", 0, 1000, null, true);
	Shake("絵演背景*", 2160000, 0, 4, 0, 0, 1000, null, false);
	SetShade("絵演背景軽", LIGHT);
	SetShade("絵演背景重", HEAVY);

	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SEL01",3000,200,0,500,null,true);
	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0010a01">
《……主君！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0020a01">
《主君，清醒些啊！》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0030a00">
「…………」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0040a00">
「……啊……
　嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Cockpit_AllFade2();

//あきゅん「ＣＰ：前までのパラに再現」
	MyLife_Count(0,120);
	CP_IHPChange(0,2,null,false);
	CP_PowerChange(0,100,null,false);

	CP_SpeedChange(0,100,null,false);
	MyTr_Count(0,0);

	CP_HighChange(0,500,null,false);
	$雰囲気方位計=Random(10)+40;
	CP_AziChange(0,$雰囲気方位計,null,false);
	CP_AltChange(0,-80,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

//あきゅん「ＣＰ：落下中のパラに」
	CP_SpeedChange(30000,318,null,false);
	CP_HighChange(30000,200,null,false);

	SetVolume("SEL01", 2000, 500, null);

	Zoom("絵演背景*", 20000, 1000, 1000, null, false);
	FadeDelete("絵色黒", 1800, true);

	FadeDelete("絵演背景軽", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……在下落？

　我在下落吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0050a01">
《主君！》

{	FadeDelete("絵演背景重", 500, false);
	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0060a00">
「——哦哦!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆合当理吹かし
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE01b","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_SpeedChange(300,631,Dxl2,false);
	MyTr_Count(300,531);

//◆姿勢回復
	Shake("絵演背景*", 1000, 0, 20, 0, 0, 1000, null, false);

	MusicStart("SE01b",0,1000,0,1000,null,false);

	Zoom("絵演背景*", 1000, 1000, 1000, Dxl2, false);
	Move("絵演背景", 1000, @0, -768, Dxl2, false);
	CP_AltChange(800,67,Dxl3,false);
	CP_HighChange(800,992,Dxl2,false);

	Wait(800);

	Move("絵演背景", 1000, @0, @30, Dxl2, false);
	CP_HighChange(700,1030,null,false);
	CP_SpeedChange(1000,521,DxlAuto,false);
	MyTr_Count(300,461);

	Wait(700);

	Move("絵演背景", 5000, @0, -838, Dxl2, false);
	CP_AltChange(5000,0,DxlAuto,false);
	CP_HighChange(5000,1011,Dxl2,false);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0070a01">
《好险……》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0080a00">
「我晕过去了？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0090a01">
《只有一两秒。
　被敌人的<RUBY text="·">头</RUBY>突击撞到了。》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0100a00">
「敌人呢……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0110a01">
《结束了。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

//◆敵騎確認
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

	Cockpit_AllFade0();

	CreateTextureSP("絵演背景弐", 1000, Center, -1400, "cg/bg/bg201_旋回演出背景市街地_02.jpg");

	FadeDelete("絵色黒", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……对。
　结束了。

　模仿恶魔的骑体，四散向地面坠落。
　
　……是坠落，不是降落。

　热量已经全都用完了。
　<RUBY text="Barrel">飞行推进器</RUBY>，还有<RUBY text="Wing">翼型装甲</RUBY>，这样就仅仅是铁块了。

　他们受到单纯的物理法则支配，掉落下去。
　他们无法自救。我也无法拯救他们。
　从这里无论怎样伸手也够不到他们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0120a00">
「……从这种高度……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0130a01">
《活不了。》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0140a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0150a01">
《我强调一句，那完全是自杀。
　你没必要自责。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0160a01">
《……走吧。
　我们还有别的事要做吧？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0170a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我点头之后，还是没有离开这片领空。
　
　无论如何。无论如何，心中还是纠结。

　他们——是什么人。

　我带着无法解开的谜，守望着四骑的最后。
　我看向了其中一骑。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：落ちるヘッド
	CreateSE("SE01","se戦闘_動作_空急降下01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵ＥＶ", 18010, Center, Middle, "cg/ev/resize/ev180_落ちてゆくガッタイダー·ヘッド_al.jpg");
	CreateTextureEX("絵ＥＶ下", 18000, Center, Middle, "cg/ev/resize/ev180_落ちてゆくガッタイダー·ヘッド_bl.jpg");
	Zoom("絵ＥＶ*", 0, 2000, 2000, null, true);
	Request("絵ＥＶ*", Smoothing);
	Zoom("絵ＥＶ*", 60000, 500, 500, DxlAuto, false);
	Fade("絵ＥＶ", 1000, 1000, null, true);

/*
	CreateColorEX("絵色黒", 18990, "#000000");
	CreateColorEX("絵色黒弐", 18000, "#000000");
	Fade("絵色黒弐", 500, 750, null, true);

	CreatePlainSP("絵板写", 18900);

	CreateWindow("絵窓", 18000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵演背景", 18010, Center, Middle, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 18100, Center, Middle, "cg/st/3dガッタイダーＨ_騎航_通常.png");

	Move("絵窓/絵演立絵装甲", 0, @0, @-600, null, true);
	Request("絵窓/絵演立絵装甲", Smoothing);
	Zoom("絵窓/絵演立絵装甲", 0, 5000, 5000, null, true);
	Rotate("絵窓/絵演立絵装甲", 0, @0, @0, @180, null,true);

	Zoom("絵窓/絵演背景", 100000, 2000, 2000, null, false);
	Zoom("絵窓/絵演立絵装甲", 15000, 1000, 1000, DxlAuto, false);
	Move("絵窓/絵演立絵装甲", 15000, @0, @620, DxlAuto, false);

	FadeDelete("絵板写", 1000, true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　那是合体骑的头部。
　最后向我突击过来，结果装甲各处都有裂痕。


</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガッタイダーＨ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/024vs0180b33">
《不可原谅。》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　剑胄传音进入了我的头脑中。
　这是——那一骑传来的。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガッタイダーＨ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/024vs0190b33">
《不可原谅。》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/024vs0200b33">
《绝不原谅。》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_ひび割れ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵ＥＶ*", 300, 1, 3, 0, 0, 1000, null, false);
	Fade("絵ＥＶ下", 0, 1000, null, true);
	Delete("絵ＥＶ");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　装甲碎裂了。

　<RUBY text="·····">里面的东西</RUBY>出现了。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//◆ＣＧ差分。顔が少し

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0210a00">
「——啊——」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　那是。

　那是——那个少女是，

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ＣＧ差分。顔が出る
	CreateSE("SE02","se人体_体_心臓の音02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ev/ev105_倒れた小夏_f.jpg");
	Wait(30);
	Delete("絵演");

	Fade("絵色黒", 500, 1000, null, true);

	SetFwL("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0220a00">
「啊啊……!?」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　她是，

　你是————

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

//◆フラッシュバック。小夏立ち絵
	EfRecoIn1(20000,600);
	CreateTextureSP("絵回想背景", 19110, Center, Middle, "cg/bg/bg016_公園a_01.jpg");
	StC(19210, @0,@0,"cg/st/st小夏_通常_制服.png");
	FadeStC(0,true);
	EfRecoIn2(1600);

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0230a00">
「来栖野……小夏!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_025.nss"