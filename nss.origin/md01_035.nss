//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_035.nss_MAIN
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
	#bg051_皆斗家居間_03a=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_036.nss";

}

scene md01_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_034vs.nss"

//◆回想·皆斗本家
	PrintBG("上背景", 20000);

	EfRecoIn1(18000,0);

	OnBG(100,"bg051_皆斗家居間_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStA(0,true);

	Delete("上背景");
	SoundPlay("@mbgm14",2000,1000,true);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw本家_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350010b52">
『明尧……
　实际上，
你是个为了让我失望才出现的男人吧。』

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350020a11">
『…………』

{	FwC("cg/fw/fw本家_怒り.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350030b52">
『就说那牧村。
竟然为了那种不知底细的无聊女人赌上自己……
　你这家伙已经将我和你自己的立场、
职责都忘了吗？』

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350040a11">
『…………』

{	FwC("cg/fw/fw本家_怒り.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350050b52">
『我之所以这样无情，
都是为了弥补你的不小心。
　全部都是咎由自取！』

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350060a11">
『……都如你所言。』

{	FwC("cg/fw/fw署長_怒り.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350070a11">
『但是，本家大人！』

{	FwC("cg/fw/fw本家_驚き.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350080b52">
『闭嘴！　不要自以为是地反驳我！
　事到如今你还觉得你的话有任何价值吗？』

{	FwC("cg/fw/fw本家_怒り.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350090b52">
『没用的家伙!!』

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350100a11">
『————』

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350110b52">
『景明！　来这边！』

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0350120a00">
『…………』

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350130b52">
『我对你并无任何怨恨。如此命令你，
我也于心不安。
　但事到如今，
唯有感叹这被笨蛋选中的命运了。』

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0350140a00">
『…………』

{	FwC("cg/fw/fw本家_通常.png","Sepia");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350150b52">
『你来做个了断吧。』

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350160b52">
『将这无用的——明尧和凑斗家的因缘，
　由你的手去切断吧。』

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0350170a00">
『…………』

//【景明】
<voice name="景明" class="景明" src="voice/md01/0350180a00">
『……明……明尧大人……』

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350190a11">
『…………』

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350200a11">
『……原谅我。景明。』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

//あきゅん「演出：背景が分からないので後回し」
	SetVolume("@mbgm*", 1000, 0, null);
	EfRecoOut1(300);
	Delete("絵回想*");
//おがみ：前の戦闘シーンに合わせて調整
/*
	OnBG(100,"bg002_空a_01.jpg");
	FadeBG(0,true);
*/
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");

	DeleteStA(0,true);


	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0350210a00">
（……明尧大人……）

//【景明】
<voice name="景明" class="景明" src="voice/md01/0350220a00">
（……统大人……）

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0350230a00">
（……光……你…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズゴー。闇に呑まれる
	CreateSE("SE01","se特殊_その他_神の絶叫");
	MusicStart("SE01",0,1000,0,800,null,false);
	SetFrequency("SE01", 10000, 250, Dxl2);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 10000, 0, 1000, 1000, null, "cg/data/zoom_01_00_0.png", false);

	CreateColorSP("絵色黒下", 50, "#000000");
	CreatePlainSP("絵板写", 4999);
	Delete("@OnBG*");
	Zoom("絵板写", 3000, 1000, 10000, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——就那样。
　我的意识溶于黑暗中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵板写", null);

	CreatePlainSP("絵板写２", 10000);
	Wait(1);
	CreateColorSP("絵色黒", 9999, "#000000");
	Zoom("絵板写２", 3000, 0, 1000, AxlDxl, true);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_036.nss"