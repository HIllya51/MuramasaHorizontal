//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_010vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_010vs.nss","TurboBlur",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg002_空a_02=true;
	#ev901_銀星号天座失墜小彗星_a=true;
	#ev504_村正突進=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_011vs.nss";

}

scene mb04_010vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_009.nss"

//◆ＢＧＭ
//◆決戦
	SoundPlay("@mbgm11",0,1000,true);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0010a00">
《光————!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ばひゅーん。天へ疾駆
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　世界被分成了两个部分。
　分成了有意义的与无意义的两极。

　只有空中的敌人是有意义的。
　其他一切都不具有任何意义。

　抛开所有的信息，摒除一切的思考。
　凑斗景明体内的人类因子正在一丝丝地<RUBY text="····">瓦解崩溃</RUBY>。

　知性开始颠覆。
　理性开始迷茫。
　感性开始狂奔。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/mb04/010vs0020a14">
《雄呼——》

//【光】
<voice name="光" class="光" src="voice/mb04/010vs0030a14">
《来吧——景明!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号、上昇して迎撃準備
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	CreateTextureSPadd("絵演上", 3100, -1024, -190, "cg/ev/resize/ev901_銀星号天座失墜小彗星_al.jpg");
	CreateTextureSP("絵演", 3000, -1024, -190, "cg/ev/resize/ev901_銀星号天座失墜小彗星_al.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -650, -400, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_0", true);

	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
　然后——
　
　脑海里的念头朝着错乱的反方向疯长。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 18000, "#000000");
	CreateTextureSP("絵演", 17000, -600, -140, "cg/ev/resize/ev504_村正突進l.jpg");
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
　极端地单纯化。
　透彻地分析。

　
　　　　　　　　　　　——杀。

　设定目的。

　
　　　　　　　　　　——如何杀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵暗転", 600, true);
	CreateColorEX("絵色黒幕", 17500, "#000000");
	CreateTextureEX("絵演銀", 17010, -150, -1200, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	Rotate("絵演銀", 0, @0, @0, @180, null,true);
	Request("絵演銀", Smoothing);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　寻求杀敌的手段。

　……手段。
　能够将敌骑击落的最佳方法是什么？

{	Fade("絵演銀", 500, 750, null, false);}
　敌人是拥有极致速度的银星号。
　从超高空下降时宛如一道闪电。

{	FadeDelete("絵演銀", 300, false);}
　要抵抗这已近神的一击，只有靠……
　
　招式了吗？

{	CreateTextureEX("絵演陰義", 17100, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	Fade("絵演陰義", 500, 1000, null, false);}
　探查敌骑的呼吸找准时机，依据推测出的敌骑的攻击来准
备好最为有效的应对办法，精确地把握敌骑的每一丝动作，
不断地根据动作的变化修改对策，待到战机来临，便以最大
努力、最大限度地将胜利的可能性化为现实……

{	Fade("絵色黒幕", 300, 1000, null, false);
	DrawTransition("絵色黒幕", 300, 0, 1000, 100, DxlAuto, "cg/data/random_01_00_0.png", false);}
　
　　　　　　　　　　　——不。

　这样的<RUBY text="··">谬论</RUBY>根本毫无用处。
　这一点方才已经体会过了。是无用的。

{	WaitAction("絵色黒幕", null);
	Delete("絵演陰義");
	Fade("絵色黒幕", 300, 0, null, false);}
　无论是多么精湛的招式，在它面前都会失效。
　这无异于对扑过来的饥饿猛兽提出和平交涉。
一切都是无为。一切都是徒劳。一切都是白费。

　<RUBY text="··">蒙混</RUBY>的手段是没有用的。
　要战胜银星号，便只有在力量上凌驾于它。

　不需要任何花哨招式。
　需要的只有力量。

{	Fade("絵色黒幕", 300, 1000, null, false);}
　
　　　　　　　　　　　——是速度。

　最终起着决定性的因素，是速度。
　速度。

{	CreateTextureSP("絵演銀星号", 17100, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	FadeDelete("絵色黒幕", 300, false);}
　敌骑的强大根源便在于它的速度。
　就是因为有这一点优势，敌骑才可以做到以压倒性
的攻击，将敌人一击毙命，自己毫发无伤地取得胜利。

　速度。

{	FadeDelete("絵演銀星号", 300, false);}
　只要在速度上获得优势，就可以取胜。
　若我方比敌骑更快，我方便可做到以压倒性的攻击，
将敌人一击毙命，自己毫发无伤地取得胜利。

　速度！
　速度！

　要取得速度上的优势……就要——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0040a00">
「村正!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/010vs0050a01">
《——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　剑胄已没有余力回应剑胄传音。
　但我的声音传达到了。它正听着我的声音，等待我
下达命令。我清楚地感受得到。

　为了以残留的全部力量，去实现主君的意志，村正
正翘首以待。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演", 17000, -600, -140, "cg/ev/resize/ev504_村正突進l.jpg");

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0060a00">
「磁装·正极……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆磁装
	CreateSE("SE01","se戦闘_陰義_磁力展開");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演陰義", 17100, Center, Middle, "cg/ef/ef021_汎用陰義発動a.jpg");
	CreateTextureEXadd("絵演陰義上", 17110, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演陰義上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演陰義上", 250, 1000, null, true);
	Fade("絵演陰義上", 250, 0, DxlAuto, true);
	FadeDelete("絵演陰義", 300, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0070a00">
「磁力加速！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");



//◆磁気加速
//◆ずぎゅーん。
	CreateSE("SE01a","se特殊_陰義_磁力加速01");
	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01a",0,1000,0,750,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreatePlainEXadd("絵板写", 18000);
	CreateTextureEX("絵演振動用", 17010, -600, -140, "cg/ev/resize/ev504_村正突進l.jpg");
	SetBlur("絵演振動用", true, 1, 300, 50, false);

	Request("プロセス１", Start);

	Fade("絵演振動用", 100, 200, null, false);
	Shake("絵演振動用", 360000, 4, 2, 0, 0, 1000, null, false);
	Fade("絵板写", 100, 1000, Dxl2, false);
	Zoom("絵板写", 100, 1250, 1250, null, false);
	Wait(100);
	Zoom("絵板写", 500, 1300, 1300, null, false);
	FadeDelete("絵板写", 400, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　装甲完成磁化。
　极性，是在村正的驾驭下时常流动着的东西。
利用同极与反极的磁力特性来完成某个动作。

　这一点于飞行而言也是有效的。
　复杂运动过程的每个细节都被精简至最合适——
如此一来，速度也随之得到提升。

　面对垂直上升这一最不利的条件，也可将其克服，
提升速度。
　
　然而，只有这样还不够。

　这样还不足以胜过银星号。
　还有一步。

　力量——
　不将力量与速度融合，便无法战胜敌人。

　力量!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆辰気
//◆黒いエネルギーがうぃーんと出てばちばちっと。
	CreateSE("SE01","se特殊_陰義_発動03");
	CreateSE("SE02","se特殊_陰義_グラビティアクセル準備");
	MusicStart("SE01",0,1000,0,1250,null,false);
	MusicStart("SE02",0,1000,0,800,Axl2,false);
	CreateColorEXadd("絵演色", 18000, "#FFFFFF");
	Fade("絵演色", 100, 1000, null, true);

	Delete("絵演陰義*");

	CreateColorSPadd("絵フラ", 18000, "#660099");
	FadeDelete("絵演色", 200, true);
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0080a00">
「重力加速！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆エネルギーがばちばちっと。過負荷っぽく
	CreateSE("SE03","se戦闘_陰義_磁力展開");
	MusicStart("SE03",0,1000,0,750,null,false);

	CreateColorEXadd("絵フラ", 18000, "#FFFFFF");

	Shake("絵演振動用", 360000, 6, 4, 0, 0, 1000, null, false);
	SetBlur("絵演振動用", true, 2, 500, 100, false);

	Fade("絵演振動用", 500, 1000, null, false);
	Move("絵演振動用", 6000, -600, -180, DxlAuto, false);
	Zoom("絵演振動用", 1000, 800, 800, DxlAuto, true);
	Zoom("絵演振動用", 5000, 700, 700, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　力量的漩涡开始旋转。
　那是狂暴的激流。

　辰气——重力。
　银星号的能力。

　我曾经使用过这种能力。
　但比起当时，如今这股力量远远要强大得多。

  通过“卵”从银星号处夺取的力量……
　这原本并不是村正的能力，村正也无法控制它。

　就像在没有缰绳的情况下驯服一匹烈马一般。
　这份力量正在拼命地想要把我颠落在地。狂暴
地挣扎着，一味地反抗着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0090a00">
「——唔!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/010vs0100a01">
《——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　即便如此，我也要驾驭它。
　用两个人的力量。竭尽一切手段。

　抓住它的脖颈使其臣服，让其依我的指挥行进。
　最终这份狂暴挣扎的力量，将会化为我的速度。

　速度。
　我所追求的只有速度。

　所以——无论如何都要将其掌控。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆辰気加速
//◆どりゃー。
	SetVolume("SE*", 100, 0, null);
	CreateColorEX("絵色暗転", 18000, "#000000");
	CreateColorEXadd("絵色白", 17600, "#FFFFFF");
	CreateSE("SE04","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE04",0,1000,0,1500,Dxl2,false);
	CreateSE("SE04a","se特殊_陰義_グラビティアクセル加速");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	Fade("絵色白", 600, 1000, null, false);
	Move("絵演振動用", 300, -600, -10, null, false);
	Zoom("絵演振動用", 300, 1500, 1500, DxlAuto, false);
	Wait(200);
	Fade("絵色暗転", 1000, 1000, null, true);
	Delete("絵演振動用");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　仿佛跨越了一道墙壁。

　我周围的世界开始渐渐消失。
　它摆出一副厌恶的姿态，厌弃地说我已容不下你。

　只有我一个人被流放到了虚无的空间。
　
　不——还有其他人。

　还有一个人。
　在超越速度而导致与世隔离的，这个虚无的空间中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}

..//ジャンプ指定
//次ファイル　"mb04_011vs.nss"

function TurboBlur()
{

	while(1){
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 100, 2000, 2000, Axl2, false);
	Fade("$効果ナット名", 20, 1000, null, true);
	Fade("$効果ナット名", 80, 0, null, true);
	}

}
