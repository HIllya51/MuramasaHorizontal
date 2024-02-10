//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_040.nss_MAIN
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
	#bg105_城門付近内側_01=true;
	#bg002_空a_01=true;
	#bg103_普陀楽城外郭藤沢方面_01=true;
	#bg104_普陀楽城外郭大船方面_01=true;
	#bg061_普陀楽城大手門a_01=true;
	#ev806_戦争絵シリーズその４_a=true;
	#bg066_普陀楽城内のどか_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_041.nss";

}

scene md04_040.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_039.nss"


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg105_城門付近内側_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm32", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1000,true);

//◆城内

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0400010a07">
「……来了哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　不必茶茶丸提醒，我已觉察到了。

　冲向天顶的白银之星。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0400020a00">
「……光……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);
	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(3000, true);

	Wait(500);

//◆ＢＧＭ：銀星号の唄（以下、適切箇所まで当分このまま）
	SoundPlay("@mbgm37", 0, 1000, true);


//◆空


/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
《生死抉择，应是赋予自我的课题，扪心自问。》
《故于嘲笑的欢喜漩涡中拉开喜剧之幕吧。》

《暴风骤雨之夜，野犬怒吠，勇斗愚贼。》
《温暖巢穴待母而归之雏鸟，以蛇腹而席，无比安宁。》
《阳光穿透树林洒落而下，新生之狮饱享千头鹿。》
《听闻潺潺水声之蛙卵，被孩童拾起惨遭践踏。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/


	CreateTextureEX("唄1", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄01.png");
	CreateTextureEX("唄2", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄02.png");


	Move("唄1", 0, @0, @-80, null, true);
	Move("唄2", 0, @0, @-40, null, true);


	Move("唄1", 600, @0, @-10, Dxl1, false);
	Fade("唄1", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄2", 600, @0, @-10, Dxl1, false);
	Fade("唄2", 600, 1000, null, false);

	WaitKey();


	Fade("唄1", 500, 0, null, false);
	Fade("唄2", 500, 0, null, true);
	Delete("唄*");

//《嵐の夜 に吼え立てる犬は愚かな盗賊と果敢に戦う》
//《温かい巣で親鳥を待つ雛は蛇の腹を寝床に安らぐ》
//《木漏れ日の下で生まれた獅子は幾千の鹿を飽食し》
//《せせらぎを聞く蛙の卵は子供が拾って踏みつぶす》

	CreateTextureEX("唄3", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄03.png");
	CreateTextureEX("唄4", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄04.png");
	CreateTextureEX("唄5", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄05.png");
	CreateTextureEX("唄6", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄06.png");


	Move("唄3", 0, @0, @-80, null, true);
	Move("唄4", 0, @0, @-40, null, true);
	Move("唄5", 0, @0, @0, null, true);
	Move("唄6", 0, @0, @+40, null, true);

	Move("唄3", 600, @0, @-10, Dxl1, false);
	Fade("唄3", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄4", 600, @0, @-10, Dxl1, false);
	Fade("唄4", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄5", 600, @0, @-10, Dxl1, false);
	Fade("唄5", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄6", 600, @0, @-10, Dxl1, false);
	Fade("唄6", 600, 1000, null, false);

	WaitKey();

	Fade("唄3", 500, 0, null, false);
	Fade("唄4", 500, 0, null, false);
	Fade("唄5", 500, 0, null, false);
	Fade("唄6", 500, 0, null, true);
	Delete("唄*");

//◆藤沢口
//◆ＳＥ：戦闘
//◆次第に沈静
	Wait(500);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	CreateSE("戦闘", "se背景_ガヤ_合戦01");
	MusicStart("戦闘", 0, 1000, 0, 1000, null,true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");


	Wait(2500);

	SetVolume("戦闘", 2000, 0, null);


	SetNwC("cg/fw/nw六波羅兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／六波羅兵】
<voice name="ｅｔｃ／六波羅兵" class="その他男声" src="voice/md04/0400030e308">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大船口
//◆ＳＥ：戦闘
//◆次第に沈静

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100, "bg104_普陀楽城外郭大船方面_01.jpg");
	FadeBG(0, true);

	CreateSE("戦闘", "se背景_ガヤ_合戦01");
	MusicStart("戦闘", 0, 1000, 0, 1000, null,true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");


	Wait(2500);

	SetVolume("戦闘", 2000, 0, null);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／進駐軍兵】
<voice name="ｅｔｃ／進駐軍兵" class="その他男声" src="voice/md04/0400040e137">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆普陀楽

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnBG(100, "bg061_普陀楽城大手門a_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
《虔信生命意义之人啊，听听小丑真挚的诡辩吧。》
《震颤于死亡恐怖之人啊，恶魔的假面乃是黑漆之镜。》
《倘若于生命怀抱疑问，小丑与恶魔则会握持钥匙。》
《倘若相信且醉心于生命，小丑与恶魔则会摘下帽子。》
《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧。》
《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块。》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

	CreateTextureEX("唄7", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄07.png");
	CreateTextureEX("唄8", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄08.png");
	CreateTextureEX("唄9", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄09.png");
	CreateTextureEX("唄10", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄10.png");
	CreateTextureEX("唄11", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄11.png");
	CreateTextureEX("唄12", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄12.png");

//もとは-80　そこから＋40ずつして位置を調整　inc櫻井
	Move("唄7", 0, @0, @-100, null, true);
	Move("唄8", 0, @0, @-60, null, true);
	Move("唄9", 0, @0, @-20, null, true);
	Move("唄10", 0, @0, @+20, null, true);
	Move("唄11", 0, @0, @+60, null, true);
	Move("唄12", 0, @0, @+100, null, true);


	Move("唄7", 600, @0, @-10, Dxl1, false);
	Fade("唄7", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄8", 600, @0, @-10, Dxl1, false);
	Fade("唄8", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄9", 600, @0, @-10, Dxl1, false);
	Fade("唄9", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄10", 600, @0, @-10, Dxl1, false);
	Fade("唄10", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄11", 600, @0, @-10, Dxl1, false);
	Fade("唄11", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄12", 600, @0, @-10, Dxl1, false);
	Fade("唄12", 600, 1000, null, false);

	WaitKey();

//	Fade("唄1", 500, 0, null, false);
//	Fade("唄2", 500, 0, null, false);
//	Fade("唄3", 500, 0, null, false);
	Fade("唄*", 500, 0, null, true);
	Delete("唄*");

	Wait(500);

//◆ＳＥ：狂乱合唱
//◆ＳＥ：滅茶苦茶な戦闘

	CreateSE("SE01", "se背景_ガヤ_合戦01");
	CreateSE("SE02", "se背景_ガヤ_戦場の風景02_L");

//◆ＢＧＭ音量、低下
//◆空
//◆六波羅竜隊

	SetVolume("@mbgm*", 1000, 800, null);

/*

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);
	MusicStart("SE01", 2000, 600, 0, 1000, null,true);
	MusicStart("SE02", 2000, 400, 0, 1000, null,true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	OnSE("se戦闘_動作_空突進01", 1000);


	CreateTextureEX("やられ役01", 1100, @-750, @-500, "cg/st/3d九四式指揮官_騎航_通常.png");
	CreateTextureEX("やられ役02", 900, @-850, @-300, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("やられ役03", 800, @-850, @-600, "cg/st/3d零零式竜騎兵_騎航_通常.png");

	Fade("やられ役01", 0, 1000, null, false);
	Fade("やられ役02", 0, 1000, null, false);
	Fade("やられ役03", 0, 1000, null, false);

	Zoom("やられ役01", 0, 800, 800, null, false);
	Zoom("やられ役02", 0, 500, 500, null, false);
	Zoom("やられ役03", 0, 250, 250, null, false);

	Move("やられ役01", 300, @400, @0, null, true);
	Move("やられ役01", 300, @-50, @0, null, false);

	Move("やられ役02", 300, @1000, @0, null, true);
	Move("やられ役02", 300, @-50, @0, null, false);

	Move("やられ役03", 300, @1000, @0, null, true);
	Move("やられ役03", 300, @-50, @0, null, false);

*/

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


	Delete("絵色100");
	Delete("絵演*");
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("カメラ１/やられ役*");

	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



//	CreateTextureEX("カメラ１/やられ役01a", 500, @200, @-200, "cg/st/3d銘伏_騎航_抜刀.png");
	CreateTextureEX("やられ役01a", 2000, -20, -385, "cg/st/3d九四式指揮官_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役02a", 350, @400, @-0, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役03a", 200, @400, @-300, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役04a", 100, @500, @-200, "cg/st/3d零零式竜騎兵_騎航_通常.png");
//	CreateTextureEX("カメラ１/やられ役01b", 500,  @200, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役02b", 350,  @400, @-0, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役03b", 200,  @400, @-300, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役04b", 100,  @500, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");

//	Fade("カメラ１/やられ役01a", 0, 1000, null, false);
	Fade("やられ役01a", 0, 1000, null, false);
	Fade("カメラ１/やられ役02a", 0, 1000, null, false);
	Fade("カメラ１/やられ役03a", 0, 1000, null, false);
	Fade("カメラ１/やられ役04a", 0, 1000, null, false);

	SetVertex("やられ役01a", @-2000, @1550);

	Zoom("やられ役01a", 0, 800, 800, null, true);
	Zoom("カメラ１/やられ役02*", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03*", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04*", 0, 250, 250, null, false);

//	Move("カメラ１/やられ役01*", 0, -41, -218, null, true);
	Move("カメラ１/やられ役02*", 0, -268, -45, null, true);
	Move("カメラ１/やられ役03*", 0, -429, -206, null, true);
	Move("カメラ１/やられ役04*", 0, -257, -304, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進03", 1000);
	OnSE("se戦闘_動作_空突進06", 1000);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 2000, 700, 0, 1000, null,true);


$ループムーブナット名 = "@やられ役01*";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@カメラ１/やられ役02*";
$ループムーブタイム２ = 20000;

$ループムーブナット名３ = "@カメラ１/やられ役03*";
$ループムーブタイム３ = 15000;

$ループムーブナット名４ = "@カメラ１/やられ役04*";
$ループムーブタイム４ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	CreateProcess("プロセス３", 150, 0, 0, "FlyMoving3");
	CreateProcess("プロセス４", 150, 0, 0, "FlyMoving4");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);

	MoveCamera("@カメラ１", 0, 500, 50, @0, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	Zoom("やられ役01a", 1500, 1000, 1000, Dxl1, false);
	MoveCamera("@カメラ１", 1500, 100, 200, @300, Dxl1, true);
	Delete("黒幕１");
	SetBlur("カメラ１/やられ役0*", true, 1, 500, 100, false);
	SetBlur("やられ役01a", true, 1, 500, 100, false);

	Wait(500);

	SetNwC("cg/fw/nw普陀楽竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0400050e261">
《怎么回事？
　地上的状况不对劲！》

{	NwC("cg/fw/nw普陀楽竜騎兵.png");}
//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0400060e261">
《……是因为这歌吗!?》

{	NwC("cg/fw/nw零零式竜騎兵Ａ.png");}
//【ｅｔｃ／零零式Ａ】
<voice name="ｅｔｃ／零零式Ａ" class="その他男声" src="voice/md04/0400070e301">
《————》

{	NwC("cg/fw/nw零零式竜騎兵Ｂ.png");}
//【ｅｔｃ／零零式Ｂ】
<voice name="ｅｔｃ／零零式Ｂ" class="その他男声" src="voice/md04/0400080e302">
《————》

{	NwC("cg/fw/nw普陀楽竜騎兵.png");}
//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0400090e261">
《全、全乱套了……正在敌我不分地厮杀。
　<RUBY text="敌人">进驻军</RUBY>和<RUBY text="友方">六波罗</RUBY>全混在一起……》

//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0400100e261">
《喂，先撤退吧！
　这是明显的异常事态!!》

{	NwC("cg/fw/nw普陀楽竜騎兵.png");}
//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0400110e261">
《必须等上面的指示——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆零零式、振動

	Request("プロセス１", Stop);
	SetBlur("カメラ１/やられ役0*", false, 1, 500, 100, false);
	SetBlur("やられ役01a", false, 1, 500, 100, false);
	Fade("やられ役01a", 1000, 0, Axl2, false);
	Move("やられ役01a", 1000, 1000, @0, AxlDxl, false);
	Zoom("やられ役01a", 1000, 2000, 2000, AxlDxl, false);
	MoveCamera("@カメラ１", 1000, -100, 200, @400, AxlDxl, false);

	Wait(800);
	OnSE("se特殊_その他_零零式孵化", 1000);
	Shake("カメラ１/やられ役*", 2000, 2, 5, 0, 0, 1000, Axl2, false);

//◆孵化
//◆量産型銀星号


	CreateColorSP("白", 3000, "WHITE");
	DrawTransition("白", 2000, 0, 1000, 500, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("カメラ１/やられ役02a", 350, @400, @0, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("カメラ１/やられ役03a", 200, @400, @-300, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("カメラ１/やられ役04a", 100, @500, @-200, "cg/st/3d零零式汚染_騎航_通常.png");

	Zoom("カメラ１/やられ役02*", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03*", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04*", 0, 250, 250, null, false);

	Move("カメラ１/やられ役04*", 0, -85, -420, null, true);
	Move("カメラ１/やられ役03*", 0, -429, -346, null, true);
	Move("カメラ１/やられ役02*", 0, -190, -200, null, true);

	Request("カメラ１/やられ役0*", Smoothing);
	MoveCamera("@カメラ１", 0, -100, 0, @1000, null, true);

	Wait(1000);

/*
	CreateTextureEX("やられ役02", 1090, @200, @-280, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureEX("やられ役03", 1000, @150, @-500, "cg/st/3d零零式汚染_騎航_通常.png");
	Fade("やられ役02", 0, 1000, null, false);
	Fade("やられ役03", 0, 1000, null, false);
	Zoom("やられ役02", 0, 500, 500, null, false);
	Zoom("やられ役03", 0, 250, 250, null, false);
*/
	DrawTransition("白", 2000, 1000, 0, 500, null, "cg/data/effect_01_00_0.png", false);
	FadeDelete("白",2000,false);
	MoveCamera("@カメラ１", 2000, -100, 100, @-1000, AxlDxl, true);
	SetBlur("カメラ１/やられ役0*", true, 1, 500, 100, false);

	Wait(500);

	SetNwC("cg/fw/nw普陀楽竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0400120e261">
《…………》

//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0400130e261">
《……银……银色的骑体……？》

//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0400140e261">
《你们，难不成……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆発振砲。ずがーん。直撃。
	OnSE("se戦闘_動作_空突進01", 1000);
	OnSE("se戦闘_動作_空突進02", 1000);


	SetBlur("カメラ１/やられ役0*", false, 1, 500, 100, false);
	MoveCamera("@カメラ１", 500, -1000, -300, @500, Axl1, true);

	CreateTextureEX("やられ役01a", 2000, -114, -385, "cg/st/3d九四式指揮官_騎航_通常.png");
	Move("やられ役01a", 0, @600, @300, null, true);

	CreateTextureEXadd("発振砲１", 5000, @0, @0, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("発振砲２", 5000, @0, @0, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("発振砲３", 5000, @0, @0, "cg/ef/ef038_汎用射撃.jpg");
	Zoom("発振砲*", 0, 2000, 2000, null, true);
	Rotate("発振砲１", 0, @0, @180, @0, null,true);
	Rotate("発振砲２", 0, @0, @180, @-20, null,true);
	Rotate("発振砲３", 0, @0, @180, @10, null,true);

	Fade("やられ役01a", 200, 1000, null, false);
	Move("やられ役01a", 1000, @-600, @-300, Dxl1, false);

	OnSE("se戦闘_バロウズ_ボーガン射撃01", 1000);
	Zoom("発振砲１", 1000, 2500, 2500, Dxl1, false);
	Fade("発振砲１", 200, 1000, null, true);
	Shake("やられ役01a", 1500, 5, 10, 0, 0, 1000, null, false);

	OnSE("se戦闘_バロウズ_ボーガン射撃01", 1000);
	Zoom("発振砲２", 1000, 2500, 2500, Dxl1, false);
	Fade("発振砲２", 200, 1000, null, true);

	OnSE("se戦闘_バロウズ_ボーガン射撃01", 1000);
	Zoom("発振砲３", 1000, 2500, 2500, Dxl1, false);
	Fade("発振砲３", 200, 1000, null, true);

	OnSE("se戦闘_破壊_鎧01", 1000);

	CreateColorSP("白", 16000, "WHITE");
	DrawTransition("白", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("やられ役*");
	Delete("発振砲*");
	Delete("カメラ*");
	SetNwC("cg/fw/nw普陀楽竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0400150e261">
《咕啊——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼーん。散華


	OnSE("se戦闘_衝撃_鎧散華", 1000);

	CreateTextureSP("爆発", 15000, @0, @0, "cg/ef/ef022_汎用武者散華.jpg");
	CreatePlainEX("絵板写", 15000);
	Request("絵板写", AddRender);

	Fade("絵板写", 0, 800, null, true);


	DrawTransition("白", 300, 1000, 0, 100, null, "cg/data/circle_01_00_0.png", false);

	Zoom("爆発", 2000, 1200, 1200, Dxl2, false);
	Zoom("絵板写", 2000, 2000, 2000, Dxl2, false);
	Shake("絵板写", 3000000, 1, 1, 0, 0, 1000, DxlAuto, false);
	Wait(1500);
//	Delete("絵板写");


	SetNwC("cg/fw/nw白銀の騎体Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／銀星群Ａ】
<voice name="ｅｔｃ／銀星群Ａ" class="その他男声" src="voice/md04/0400160e058">
《……喔喔喔……》

{	NwC("cg/fw/nw白銀の騎体Ｂ.png");}
//【ｅｔｃ／銀星群Ｂ】
<voice name="ｅｔｃ／銀星群Ｂ" class="その他男声" src="voice/md04/0400170e059">
《啊——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("白");
	FadeDelete("爆発",1000,true);
	FadeDelete("絵板写",1000,true);

//◆ＢＧＭ音量戻す



	SetVolume("@mbgm*", 1000, 1000, null);


//◆生と死の
	CreateTextureEX("唄01", 5000, Center, Middle, "cg/sys/telop/tp_銀星号の唄13.png");

//◆されば嘲笑
	CreateTextureEX("唄02", 5000, Center, Middle, "cg/sys/telop/tp_銀星号の唄14.png");

	Move("唄01", 0, @0, @-40, null, true);
	Move("唄02", 0, @0, @+10, null, true);

	Move("唄01", 600, @0, @-10, null, false);
	Fade("唄01", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄02", 600, @0, @-10, null, false);
	Fade("唄02", 600, 1000, null, true);

	WaitKey();

	Fade("唄01", 500, 0, null, false);
	Fade("唄02", 500, 0, null, true);
	Delete("唄*");

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
《于生死夹缝间，嘲笑自我，忘却懵懂的自身。》
《故将拂晓之叹作为钟声，拉开神曲之幕吧。》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

	CreateTextureSP("量産02", 1000, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("量産04", 1000, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("量産03", 1090, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("量産01", 1090, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");

	Move("量産02", 0, @0, @-180, null, true);
	Move("量産04", 0, @0, @-60, null, true);
	Move("量産03", 0, @0, @60, null, true);
	Move("量産01", 0, @0, @180, null, true);

	Zoom("量産01", 0, 500, 500, null, true);
	Zoom("量産03", 0, 500, 500, null, true);
	Zoom("量産02", 0, 250, 250, null, true);
	Zoom("量産04", 0, 250, 250, null, true);

	SetBlur("量産*", true, 2, 200, 50, false);

	OnSE("se戦闘_動作_空突進01", 1000);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値１=1300+$なんとなくランダム;
	Move("量産01", 300, $Ｘ移動値１, @0, Axl1, true);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値２=1300+$なんとなくランダム;
	Move("量産02", 300, $Ｘ移動値２, @0, Axl1, true);

//	Delete("量産*");

	OnSE("se戦闘_動作_空突進03", 1000);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値３=1300+$なんとなくランダム;
	Move("量産03", 300, $Ｘ移動値３, @0, Axl1, true);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値=1300+$なんとなくランダム;
	Move("量産04", 300, $Ｘ移動値, @0, Axl1, true);

//◆城内

	SetVolume("停滞", 1000, 0, null);
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	SetVolume("SE*", 1000, 0, null);
	Delete("量産*");

	CloudZoomDelete(0,true);


	OnBG(100, "bg066_普陀楽城内のどか_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0400180a00">
「……<RUBY text="新型">零零式</RUBY>……?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　上空的异变令我瞠目结舌。

　形势正在变化。
　深绿色的骑体——正渐渐放出银白的光辉。

　我曾亲眼见到过同样的现象，同样的变异。
　仅有一次。在江之岛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0400190a07">
「哥哥很熟悉吧。
　当然，那是“卵”。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0400200a00">
「茶茶丸……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0400210a07">
「那并不是公主殿下一一发放的。
　是我最近去篠川时，
在他们的装甲上做了些手脚。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0400220a07">
「我稍微改变了一下<RUBY text="···">振动数</RUBY>。
　普通的装甲会解除污染波令它无效，但零零
式的装甲会反过来将其强化，和植入“卵”的
效果是一样的。」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0400230a00">
「……为什么要做这种手脚？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0400240a07">
「我是认为空投锻造雷弹的时候，让城内混乱
一点会更利于行事。
　虽然现状已经大大偏离当时的计划——」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0400250a07">
「但这并非毫无意义。这样一来对方的防空网
就毁了。肯定能帮上沃尔夫和卡农中佐的大忙。
　这就叫不打无准备之战——」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0400260a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0400270a00">
「防空指挥，是大鸟中将吧。」

//◆無表情
{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0400280a07">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　对我的提问，茶茶丸隔了一会才点点头。
　
　然后——如同耳语般地，低声说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆微笑
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0400290a07">
「永别了，狮子吼。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	ClearFadeAll(0,true);
}

..//ジャンプ指定
//次ファイル　"md04_041.nss"
