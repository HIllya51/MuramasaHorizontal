//<continuation number="550">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_029vs.nss_MAIN
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
	#bg056_建長寺三門前_03=true;
	#bg001_空a_03=true;
	#ev005_斬り割られた兜=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_001.nss";

}

scene md03_029vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_028vs.nss"


//◆茶々丸と村正


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	OnBG(100, "bg056_建長寺三門前_03.jpg");
	StL(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服b.png");
	FadeStL(0, false);
	FadeStR(0, false);
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１", 500, true);


	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0010a07">
「————————」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0020a07">
「啊……啊啊？」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/029vs0030a01">
「……刚才的……难道是……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md03/029vs0040a01">
「在江之岛……那时候的？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆膝丸

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	DeleteStA(0, true);
	CreateTextureSP("そら", 1000, @0, @0, "cg/bg/bg001_空a_03.jpg");
	CreateTextureEX("絵ＳＴＣ200", 1500, -360, -290, "cg/st/3d膝丸_騎航_抜刀.png");
	Fade("絵ＳＴＣ200", 0, 1000, null, true);
	Shake("絵ＳＴＣ200", 2160000, 0, 1, 0, 0, 1000, null, false);

$ループムーブナット名 = "@絵ＳＴＣ200";
$ループムーブタイム = 30000;

	CreateProcess("プロセス", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス","プロセス");

	Request("プロセス", Start);

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1000,@0,null,false);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);

	SetFwC("cg/fw/fw雷蝶_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/029vs0050a08">
「……那是什么怪物啊……」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/029vs0060a08">
「茶茶丸，你带来的是个什么东西……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明


	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("プロセス");
	CloudZoomDelete(0,true);
	Delete("そら");
	Delete("絵ＳＴＣ200");
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　确认周围的状况。
　……基本上胜负已定。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0070a00">
「茶茶丸，别顾着发呆啊。
　想对付村正就认真点。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0080a07">
「啊……嗯……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0090a00">
「那是什么眼神？」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0100a00">
「事到如今还怕什么？
　有什么好惊讶的……」

//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0110a00">
「我可是<RUBY text="······">凑斗光的师父</RUBY>啊。」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0120a07">
「是——是……啊。
　啊哈，哈哈哈哈……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　茶茶丸用小动物般的可怜眼神仰望着我。我不再
理会她，径自走近黑濑。
　武者复原得很快。

　在他恢复之前必须给予最后一击……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//◆署長

	CreateSE("SE01","se人体_動作_一歩");
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(500);
	StC(1000, @0, @0, "cg/st/st署長_戦闘_制服.png");
	FadeStC(500, true);

	Wait(500);

	SetFwL("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0130a00">
「……署长。」

{	FwL("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0140a11">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　他拦在我面前。
　手持太刀——那是黑濑武装上剑胄时丢掉的。

　从步伐上可以一眼看出，他的力量丝毫不逊于剑的
本来持有者。
　不，用不着看。若说凑斗光的师父是凑斗景明，那
凑斗景明的师父便是他。

　菊池明尧。
　——人生中只有某段时期曾自称凑斗明尧。

　我的养父。
　凑斗统之夫。

　而且还是，
　凑斗光<RUBY text="······">不够格的父亲</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0150a11">
「第二次了。」

{	FwL("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0160a00">
「……？」

{	FwL("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0170a11">
「你那——剑法。」

{	FwL("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0180a00">
「哦……是吗。
　你看过一次了啊。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0190a00">
「那个时候。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想フラッシュ。割れた兜

	EfRecoIn1(18000,300);
	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/ev/ev005_斬り割られた兜.jpg");
	EfRecoIn2(100);
	WaitKey(1500);

	EfRecoOut1(100);
	Delete("絵回想100");
	EfRecoOut2(300,true);

	SetFwL("cg/fw/fw署長_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0200a11">
「…………」

{	FwL("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0210a11">
「那时，毁了你的是我。
　那过错,事到如今已无法挽回了……」

{	FwL("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0220a11">
「不过这次……我不想看着你继续自毁。」

{	FwL("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0230a00">
「……」

{	FwL("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0240a11">
「接受村正的精神干涉吧，景明。
　回到原来那样。」

{	FwL("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0250a00">
「原来……？」

{	FwL("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0260a11">
「……」

{	FwL("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0270a00">
「你是明知这意味着什么而说出这句话的吗？
　署长……」

{	FwL("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0280a00">
「菊池明尧！」

{	FwL("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0290a11">
「……景明……」

{	FwL("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0300a00">
「还有谁去爱光!?」

//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0310a00">
「如果我抛弃她！
　统大人已经不在了……」

{	FwL("cg/fw/fw景明汚染_哄笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0320a00">
「而你！
　早就抛弃了光！」

{	FwL("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0330a11">
「————」

{	FwL("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0340a00">
「啊啊，我不会说那不好。
　期望你爱光简直是痴人说梦。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0350a00">
「我不会责怪你。
　我不管你，你爱去哪便去哪。」

{	FwL("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0360a00">
「但是……不要妨碍我!!」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0);//―――――――――――――――――――――――――――――

//◆切り結ぶ。ここＣＧ用意？
//	OnSE("se人体_動作_後ずさり01",1000);
//	CreateTextureEX("まえ", 2000, @0, @0, "cg/ef/ef003_汎用移動.jpg");
//	Fade("まえ", 200, 1000, null, false);
//	Zoom("まえ", 200, 1500, 1500, null, false);


	OnSE("se戦闘_攻撃_刀振る01",1000);

	CreateColorSP("黒幕２", 2001, "BLACK");
	CreateColorEXadd("白幕", 2500, "WHITE");
//	Fade("黒幕２", 0, 1000, null, false);


	Fade("白幕", 100, 1000, null, true);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);
	CreateTextureSPadd("絵演1", 2002, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
//	DrawTransition("絵演1", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", false);
	CreateTextureSPadd("絵演2", 2003, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
//	DrawTransition("絵演2", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", true);
	OnSE("se戦闘_攻撃_刀衝突02",1000);
	CreateTextureSPadd("ひばな", 10000, @0, @0, "cg/ef/ef044_火花a.jpg");
	DeleteStA(0, true);
	Fade("黒幕１", 0, 1000, null, true);
	FadeDelete("白幕", 500, false);
	Fade("ひばな", 1000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　全力砍下的太刀被同等的力度所阻拦。
　钢刃与钢刃互抵，空中散下微量的铁粉。

　二柄刀成十字相交，我和他僵持不下。
　
　这是吉野御流合战礼法——爬虫之形。

　如果敌人拼蛮力，就闪开让敌人身型不稳，趁机
斩击。
　如果敌人向后退，就一口气追击、压倒、斩击。
配合绊脚很有效。

　此乃瞬间看穿对手的进退，随机应之而胜的剑法。
　我——当然他也是，对这一招十分精通。

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0);//―――――――――――――――――――――――――――――

//	Delete("まえ");
	SetFwL("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0370a00">
「我不会抛弃光。」

{	FwL("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0380a11">
「……」

{	FwL("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0390a00">
「只有我爱光！
　绝不原谅阻碍者！」

//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0400a00">
「无论是谁!!」

{	FwL("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0410a11">
「……景明。」

{	FwL("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0420a11">
「那……不是爱……」

{	FwL("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0430a00">
「————」

{	FwL("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0440a11">
「是诅咒。
　你在诅咒自己。」

{	FwL("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0450a00">
「闭嘴!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆ぎりぎり。鍔迫り合い
//◆緊迫。そこへ。
//◆ぐおーんずしゃー。竜騎兵が一騎、着陸。


//	Request("絵演1", Smoothing);
//	Request("絵演2", Smoothing);

//	SetBlur("絵演1", true, 2, 500, 50, false);
//	SetBlur("絵演2", true, 2, 500, 50, false);



	SetShade("絵演1", SEMIHEAVY);
	SetShade("絵演2", SEMIHEAVY);

	Shake("絵演1", 1000, 1, 2, 0, 0, 400, Axl1, false);
	Shake("絵演2", 1000, 2, 1, 0, 0, 600, Dxl3, false);
	Zoom("絵演2", 0, 1020, 1020, null, false);
	Zoom("絵演1", 0, 1050, 1050, null, false);

	Rotate("絵演2", 1000, @1, @-2, @5, null, false);
	Rotate("絵演1", 1000, @-1, @3, @-15, null, false);
	CreateTextureSPadd("ひばな", 10000, @0, @0, "cg/ef/ef044_火花a.jpg");

	OnSE("se戦闘_攻撃_剣戟弾く03",1000);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 20, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);

	SetVolume("@mbgm*", 1000, 0, null);

	Fade("ひばな", 500, 0, null, false);
	Fade("絵演*", 500, 0, null, false);
	Fade("黒幕２", 500, 0, null, false);
//	WaitKey(500);
	OnSE("se戦闘_動作_空突進04",1000);

	WaitKey(1500);

	OnSE("se戦闘_動作_鎧_着地01",1000);

//	WaitKey(1150);
	Wait(500);



	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0460a00">
「!!」

{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0470a11">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("ひばな");
	Delete("絵演*");
	Delete("黒幕２");

	CreateColorEXadd("絵色100", 1500, "WHITE");

	CreateSE("SE01","se人体_動作_一歩");
	OnSE("se戦闘_攻撃_刀衝突01",1000);

	Fade("絵色100", 0, 1000, null, true);

	Fade("絵色100", 1000, 0, null, true);


/*
	Fade("黒幕２", 0, 1000, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("絵演*", 0, 1000, null, true);
	SetBlur("絵演1", true, 2, 500, 50, false);
	SetBlur("絵演2", true, 2, 500, 50, false);
	Move("絵演1", 100, @-300, @-300, null, false);
	Move("絵演2", 100, @300, @300, null, false);
	Rotate("絵演1", 100, @0, @20, @-60, Axl3, false);
	Rotate("絵演2", 100, @0, @-20, @60, Axl3, false);
	MusicStart("SE01",0,1000,0,700,null,false);
	Fade("ひばな", 1000, 0, null, false);
	FadeDelete("黒幕*", 1000, false);
	FadeDelete("絵演*", 500, false);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　突如其来的巨响，让我和署长一起飞身后退。
　
　怎么——有异变？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆六波羅竜騎兵
	SoundPlay("@mbgm34",0,1000,true);

	StR(1000, @100, @0, "cg/st/3d九四式竜騎兵_立ち_通常.png");
	OnSE("se特殊_鎧_駆動音01", 1000);
	Move("@StR*", 300, @-100, @0, Dxl2, false);
	FadeStR(300, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……是龙骑兵。
　六波罗正规军。

　刚才的似乎是着陆的声音。
　大概是急忙飞过来的，飞行推进器用力喷着烟。

　但是，为什么？
　增援？　现在这局面不需要啊……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetNwC("cg/fw/nw竜騎兵.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／伝令竜兵】
<voice name="ｅｔｃ／伝令竜兵" class="その他男声" src="voice/md03/029vs0480e225">
「阁下！
　小弓中将阁下!!　堀越中将阁下!!」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0490a07">
「哎呀，不用那么大声，我又不会跑。
　冷静一下，做个深呼吸吧。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/029vs0500a08">
「发生什么事了？」

{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／伝令竜兵】
<voice name="ｅｔｃ／伝令竜兵" class="その他男声" src="voice/md03/029vs0510e225">
「紧急情况，请立即回到普陀乐！」

{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／伝令竜兵】
<voice name="ｅｔｃ／伝令竜兵" class="その他男声" src="voice/md03/029vs0520e225">
「进驻军——
　横须河舰队突破了相模湾的警戒线攻过来
了!!」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/029vs0530a08">
「————哈？」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0540a07">
「什……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0550a07">
「什么————————!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆Ｃパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,3);

	ClearWaitAll(3000, 2000);

/*
	ClearWaitAll(2000, 2000);

	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/sys/Telop/lg_村正.jpg");
	CreateColorSP("絵色黒地", 100, "#000000");

	Wait(100);

	FadeDelete("絵色白", 1000, true);

	WaitKey(2000);

	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"md04_001.nss"