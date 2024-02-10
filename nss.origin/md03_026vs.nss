//<continuation number="220">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_026vs.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	#av_黒瀬童子=true;

	$PreGameName = $GameName;
	$GameName = "md03_027vs.nss";

}

scene md03_026vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_025vs.nss"


//◆景明サイド

	PrintBG("上背景", 30000);
	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);
	CreateColorSP("黒幕１", 20000, "BLACK");
	Delete("上背景");
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	SoundPlay("@mbgm13", 0, 1000, true);

	SetFwC("cg/fw/fw景明汚染_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0010a00">
「……我有点吃惊啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　且不说一条拥有剑胄而且用得相当熟练的事——
　我更惊讶的是小弓公方今川雷蝶的强大。

　听说过他是武者。
　但说到底还是足利家的继承人。以为他响亮的武名
一半是出于宣传目的而故意散播的，所以轻视他了。

　看来对那位公方武艺的评价是完全<RUBY text="····">名副其实</RUBY>的。
　一条的行动完全不逊于六波罗正规军，却完全接近
不了他。

　在我看来，他的强大凌驾于曾在八幡宫战斗的<RUBY text="他父亲">护氏</RUBY>之上。
　虽然性质完全不同，这家伙的力量快要追及光
了吧……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw黒瀬_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0020b26">
「你在看哪里！」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0030a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒瀬

	StL(1000, @0, @30, "cg/st/st黒瀬_戦闘_私服.png");
	FadeStL(300, true);

	Wait(200);

	SetFwC("cg/fw/fw景明汚染_冷笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0040a00">
「还想抵抗吗？
　若是老老实实就能死个痛快了。」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0050b26">
「说什么梦话……！
　懦夫才会放弃战斗！」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0060b26">
「背后就是舞殿宫殿下
……这种程度的伤算什么！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);
	Move("@StL*", 300, @, @-30, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　黑濑站了起来。

　通过刀尖可以感觉到他作了周全的准备，穿了腿甲。
　但并不能完全防御攻击。

　那一击应该伤到骨头了。
　这样还能站起来，真是了不起的意志力。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明汚染_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0070a00">
「你想打的话，我奉陪。
　但是，你的伤已经决定了胜负……」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0080b26">
「……」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0090b26">
「…………」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0100a00">
「……怎么了。为什么舍不得用？
　现在不是舍不得的时候吧。」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0110a00">
「迷茫会要了你的命的。」

{	FwC("cg/fw/fw黒瀬_驚き.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0120b26">
「你……发现了。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0130a00">
「要打就使出<RUBY text="···">真本事</RUBY>来。
　否则你就不值得我把你当对手。」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0140b26">
「认真的吗？」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0150a00">
「我觉得自己比到生死关头还这么小气的男人的
脑袋正常得多。」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0160b26">
「…………」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0170b26">
「这是亡父的遗物……
　曾发誓在重举冈部之旗，光明正大地兴倒幕
之师之前绝不使用的。」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0180b26">
「迫不得已！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばさっ。装束脱ぎ捨てる音
//◆ガキーン。装甲した
//◆武者·黒瀬童子
	#av_黒瀬童子=true;

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");
	CreateSE("SE00a","se人体_動作_抱きつき01");
	CreateSE("SE00b","se人体_動作_跳躍02");
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, 0, -344, "cg/bg/bg056_建長寺三門前_03.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);

	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

//おがみ：黒瀬戦闘立ち絵　完成次第作成
	CreateTextureEX("絵演窓上/絵立絵", 16200, -484, -108, "cg/st/resize/st黒瀬_戦闘_私服l.png");
//	Zoom("絵演窓上/絵立絵", 0, 2000, 2000, null, true);

	SetBlur("絵演窓上/絵立絵", true, 3, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);


	Wait(300);

	MusicStart("SE00a",0,1000,0,1000,null,false);

	Move("絵演窓上/絵演背景", 600, @100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 600, @200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);


	MusicStart("SE00b",0,1000,0,1000,null,false);
	Fade("絵フラ", 600, 1000, null, true);

	Delete("絵演窓*");
	Delete("絵色100");

	Wait(500);

	CreateTextureSP("絵演甲冑", 16200, -350, -50, "cg/st/resize/3d黒瀬_立ち_抜刀l.png");
	SetBlur("絵演甲冑", true, 2, 500, 100, false);

	CreateTextureSP("絵演背景", 16100, 0, 0, "cg/bg/bg056_建長寺三門前_03.jpg");
	Zoom("絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演背景", HEAVY);
	Request("絵演背景", Smoothing);

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	Wait(1000);

	Move("絵演甲冑", 3000, @-200, @0, Dxl2, false);
	Move("絵演背景", 3000, @-100, @0, Dxl2, false);

	Fade("絵フラ", 1000, 0, null, true);

	Wait(1500);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵演*");
	StC(1000, @0, @0,"cg/st/3d黒瀬_立ち_抜刀.png");
	FadeStA(0,true);

	Wait(500);
	OnSE("se人体_足音_鎧歩く03",1000);

	FadeDelete("絵フラ", 2000, true);

	Wait(500);

	SetFwR("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0190a00">
「果然是剑胄吗？」

{	FwR("cg/fw/fw黒瀬武者_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0200b26">
「你于吾有恩。
　不会杀你。」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0210b26">
「但——要你一条胳膊。」

{	FwR("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0220a00">
「……呵呵呵！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	ClearWaitAll(0, 0);

}

..//ジャンプ指定
//次ファイル　"md03_027vs.nss"