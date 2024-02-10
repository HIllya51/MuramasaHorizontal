//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_015vs.nss_MAIN
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
	#ev187_銘伏の妖剣_g=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_016vs.nss";

}

scene mc04_015vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_014vscb.nss"


	PrintBG("上背景", 30000);
	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("絵背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵背景09EX", Smoothing);
	Zoom("絵背景09EX", 0, 1100, 1100, null, true);

	Delete("上背景");


//◆しゃがむ
	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se人体_足音_鎧歩く03", 1000);

	CreateColorSP("しゃがむ", 5000, "#000000");
	DrawTransition("しゃがむ", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵背景*");

	SetFwC("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/015vs0010a06">
「什么——!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　是这里。
　这里是唯一绝对安全的地方！

　以狮子吼的姿势，无法向下刺击。
　
　如果是向下斩击，那是正好——但现在他无法这样做。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆明確差分ｃ：切先迫り＆片手、右手脇差。
//◆カメラちょっと引いて全体像
	SoundPlay("@mbgm10",0,1000,true);

	CreateTextureSP("絵背景10", 4200, Center, Middle, "cg/ev/ev187_銘伏の妖剣_g.jpg");
	SetBlur("絵背景10", true, 3, 500, 50,false);
	Zoom("絵背景10", 0, 1400, 1400, null, true);
	Request("絵背景10", Smoothing);

	DrawTransition("しゃがむ", 150, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);

	Wait(100);

	Zoom("絵背景10", 300, 1000, 1000, Dxl2, true);
	Delete("しゃがむ");

	CreatePlainEX("絵板写", 9990);
	SetShade("絵板写", HEAVY);

	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/絵演", 10000, -700, -1060, "cg/ev/resize/ev187_銘伏の妖剣_glm.jpg");
	Request("絵窓/絵演", Smoothing);
	Zoom("絵窓/絵演", 0, 750, 750, null, true);

	Move("絵窓/絵演", 10000, -870, @0, Dxl2, false);
	Zoom("絵窓", 1000, 1000, 1000, Dxl2, true);

	Fade("絵板写", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　在落入眩惑的泥沼之中时，我的眼睛勉强看到了狮
子吼右手的动作。
　他的右手悄悄离开了太刀……他想要拔出腰间的小刀
……！

　无论我是跳起还是向左右闪开，恐怕狮子吼都会投掷
小刀来解决我。
　很厉害的妖剑，很厉害的<RUBY text="Ｃｈｅｃｋｍａｔｅ">杀招</RUBY>。

　但是，下方还留有唯一的退路。
　我屈身之后，他只能将小刀投向我的头盔。无论手法
如何巧妙，也无法贯穿我的喉咙。
　因为<RUBY text="··">射线</RUBY>无法到达这里。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 500, 1000, 0, Dxl2, false);
	FadeDelete("絵板写", 500, true);
	Delete("絵窓");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
　即使狮子吼要砍击，他现在也只用左手单手握刀。
　
　单手的砍击，无法击破我的装甲。

　形势的优劣————<k>现在掉转了！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵背景*");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg090_大鳥邸通路d_01.jpg");

	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/015vs0020a06">
「啧!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_脇差落ちる");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　狮子吼扔掉了小刀。
　双手重新握住太刀，从上方用力砍击——

　但是，我更快一些!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateColorSP("黒", 14000, BLACK);

//◆横薙ぎ一閃
//◆ずがーん。
	SL_left2(20000,@0, @0,1500);
	Rotate("@slashL*", 0, @0, @0, @20, null,true);
	OnSE("se戦闘_攻撃_刀振る02", 1000);
	SL_leftfade2(10);

	CreateTextureSP("衝突", 15000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	CreateTextureSP("下敷き", 14000, @0, @0, "cg/ef/ef040_汎用衝突.jpg");

	Zoom("衝突", 0, 1500, 1500, null, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中03", 1000);
	FadeFR2("衝突",0,750,300,@0,@0,40,Dxl2, false);
	Zoom("衝突", 200, 1000, 1000, Dxl2, true);

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_016vs.nss"