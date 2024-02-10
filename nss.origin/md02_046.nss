//<continuation number="330">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_046.nss_MAIN
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
	#bg022_山林a_03=true;
	#bg051_皆斗家居間_01=true;
	#ev005_斬り割られた兜=true;
	#ev139_統を殺害_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_047.nss";

}

scene md02_046.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_045.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("ホワイト", 5000, "WHITE");
	Fade("ホワイト", 0, 1000, null, true);
	SoundPlay("@mbgm31", 0, 1000, true);

	OnBG(100, "bg022_山林a_03.jpg");
	FadeBG(0, true);
	StR(1000, @-280, @0, "cg/st/st光_通常_私服.png");
	FadeStR(0, false);
	Delete("上背景");
	FadeDelete("ホワイト",1000,true);

	Wait(500);

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460010a00">
「…………」

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460020a14">
「…………」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460030a00">
「…………………………」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460040a14">
「是呢。
　我明白。」

{	FwR("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460050a14">
「我的父亲<RUBY text="···">被夺走</RUBY>了!!」

//【光】
<voice name="光" class="光" src="voice/md02/0460060a14">
「光与父亲的羁绊被斩断了!!」

//【光】
<voice name="光" class="光" src="voice/md02/0460070a14">
「光从生下自己的爱的根源被切断了!!」

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460080a14">
「所以要夺回来！
　向关着我父亲的牢狱——
这强大的世界挑战并击碎!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆二世村正降臨
	OnSE("se戦闘_動作_空突進01", 1000);
	StC(900, 120, -140, "cg/st/3d二世女王蟻_煽り.png");
	Request("@StC*", Smoothing);
	Move("@StC*", 300, @0, -120, DxlAuto, false);
	Zoom("@StC*", 0, 0, 3000, null, false);
	Zoom("@StC*", 100, 900, 900, null, false);

	FadeStC(300, true);

	Wait(200);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460090a00">
「……二世村正!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆装甲アクション

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStR(0,true);
	StC(1000, @0, @0,"cg/st/st光_装甲_私服a.png");
	FadeStC(0,true);
	Fade("絵フラ", 1000, 0, null, true);


	SetFwR("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md02/0460100a14">
「遇鬼斩鬼，逢佛弑佛。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 2000);
	StC(1000, @0, @0,"cg/st/st光_装甲_私服b.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md02/0460110a14">
「剑胄之理，正在于此！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銀星号
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	Fade("絵フラ", 0, 1000, null, true);
	DrawTransition("絵フラ", 500, 0, 1000, 300, Axl2, "cg/data/slide_06_00_1.png", true);

	CreateTextureEX("でかい", 15000, @0, @0, "cg/st/resize/3d銀星号_立ち_通常l.png");
	Fade("でかい", 0, 1000, null, true);
	Move("でかい", 0, @-600, @-1000, null, false);
	CreateColorSP("黒", 5000, "BLACK");
//	Fade("黒", 1000, 1000, null, true);



	StC(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStC(0,true);
	FadeDelete("絵フラ", 1000,false);
	Move("でかい", 3000, @-0, @600, Dxl2, true);

	WaitKey(1000);
	SetVolume("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　白银之骑影诞生了。
　魔王——银星号。

　她轻轻转动了下巴。


　为了从这里起飞，去将世界毁灭。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("でかい", 1000, false);
	FadeDelete("黒", 1000, true);

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460120a00">
「等等！
　等一等……」

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460130a14">
「……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460140a00">
「只要能得到父亲，你就会停止
破坏与杀戳吗!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　那么。
　那么——我。

　无论会有什么背约，都由我来决断，

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆過去フラッシュ。本家、明堯、統の死
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg051_皆斗家居間_01.jpg");
	CreateTextureSP("絵回想200", 2100, 600, InBottom, "cg/st/st署長_通常_制服.png");
	CreateTextureSP("絵回想300", 2200, 150, InBottom, "cg/st/st本家_通常_私服.png");
	EfRecoIn2(300);
	WaitKey(1500);
	EfRecoIn1(18000,600);
	Delete("絵回想*");
	CreateTextureSP("絵回想400", 3000, Center, Middle, "cg/ev/ev005_斬り割られた兜.jpg");
	EfRecoIn2(300);
	WaitKey(1500);
	EfRecoIn1(18000,600);
	Delete("絵回想*");
	CreateTextureSP("絵回想500", 3000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");
	EfRecoIn2(300);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　
　　　　　　　　　约定————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460150a00">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆ウェイト

	Wait(1500);

	SetFwR("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【光】
<voice name="光" class="光" src="voice/md02/0460160a14">
「景明。」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460170a14">
「光追求的——
　是父亲承认我为亲子，承认爱情的存在，
并亲口叫唤我的名字。」

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460180a14">
「作为取代世界的活祭品，
将父亲交出来也并没有意义。
　那样的话……父亲的爱不仍旧被世界
夺走了吗？」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460190a00">
「…………」

{	SoundPlay("@mbgm37", 0, 1000, true);
	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460200a14">
「因此要毁灭世界。」

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460210a14">
「斩杀所有人类，毁掉一切价值，
只在这大地上留下光和父亲!!
　这时候父爱才无可怀疑——<RUBY text="····">因为其它</RUBY>
<RUBY text="·····">什么都没有</RUBY>!!」

{	FwR("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460220a00">
「光，」

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460230a14">
「景明。
　我的家人——我的兄长。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　那一瞬间。
　光散发着惊人的斗志，目不转睛地看着我。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md02/0460240a14">
「<RUBY text="你">哥哥</RUBY>才是光最后的敌人。
　必须在霸道最后超越的人。」

{	FwR("cg/fw/fw光_拗ね.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460250a14">
「你明白的吧……？
　我希望你能做到的，是在最后时刻，
独自一人站在光的面前。」

{	FwR("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460260a00">
「…………」

{	FwR("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460270a14">
「掠夺。
　一定要掠夺！」

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460280a14">
「母亲！
　世界！
　兄长！」

//【光】
<voice name="光" class="光" src="voice/md02/0460290a14">
「破坏一切阻挡物——
　我一定会夺走!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　视线仿若尖刀一般。
　从我的胸口中央……贯穿到灵魂核心。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md02/0460300a14">
「谁都无法阻止。
　不会让人阻止。」

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0460310a14">
「这个愿望——谁都不能阻止!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆飛び立つ

/*
	OnSE("se戦闘_動作_空突進01", 1000);
	DrawDelete("@StC*", 150, 100, "slide_02_01_0", false);

	WaitKey(300);


	CreateColorSP("絵黒", 1, "#CC0000");
	CreateColorSP("絵黒", 8500, "#000000");
	DrawTransition("絵黒", 200, 0, 1000, 500, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("銀星GO", 100, -328, 0, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	Request("銀星GO", Smoothing);
	SetBlur("銀星GO", true, 3, 500, 50, false);
	Zoom("銀星GO", 0, 2000, 2000, null, true);
	DrawDelete("絵黒", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("銀星GO", 600, @0, -1980, DxlAuto, false);
	Zoom("銀星GO", 600, 1000, 1000, null, false);
	Wait(600);
	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("銀星GO", 8000, @0, -780, DxlAuto, false);

*/


	CreateSE("SE01a","se特殊_鎧_装着03");
	CreateSE("SE01b","se戦闘_破壊_爆発09");
	CreateSE("SE01c","se戦闘_動作_空突進03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

	CreateTextureSP("絵演村正", 17000, 310, -1500, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	Request("絵演村正", Smoothing);
	Zoom("絵演村正", 0, 2000, 2000, null, true);
	SetBlur("絵演村正", true, 4, 500, 70, false);

$ループムーブナット名 = "@絵演村正";
$ループムーブタイム = 200;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１", Start);

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", SubRender);
	Move("絵効果雨", 0, -356, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @-20, @0, @-5, null,true);
	Fade("絵効果雨", 0, 150, null, true);

	Shake("絵演村正", 10000000, 1, 0, 0, 0, 1000, null, false);

	Fade("絵効果雨", 2000, 0, null, false);
	FadeDelete("絵色白", 1000, false);
	Zoom("絵演村正", 700, 1700, 1700, Dxl2, true);


	Delete("プロセス１");

	Zoom("絵演村正", 1600, 1000, 1000, Dxl2, false);
	BezierMove("絵演村正", 1600, (@0,@0){-240,-800}{-340,-900}(0,-1100){-150,-700}{-200,-600}(-200,-700){-220,-800}{-240,-810}(-254,-892), null, true);

	Delete("絵効果雨");
	DeleteStA(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　白色的轨迹划过天空。
　——那确实是无法留住的东西。

　无法阻止的<RUBY text="ｓｐｅｅｄ">速度</RUBY>。
　无法阻止的<RUBY text="ｐｏｗｅｒ">威力</RUBY>。

　她不可侵犯。

　升向天空。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵演村正", 1000, 0, null, true);
	Delete("絵演村正");

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460320a00">
「……啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　她走了。

　不该发生的事将发生。
　不该开始的事会开始。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0460330a00">
「啊，啊啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我……
　跟在后面，蹒跚地跑了起来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//■次のファイルの冒頭から考えるとここはClearFadeかと思い、そうしています inc櫻井
	ClearFadeAll(1500,true);

}

..//ジャンプ指定
//次ファイル　"md02_047.nss"