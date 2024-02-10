//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_035.nss_MAIN
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
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_036.nss";

}

scene md04_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_034.nss"


//◆建朝寺

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	StL(1000, @0, @0, "cg/st/st署長_通常_制服.png");

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0350010a10">
「如何了，署长？」

{	FadeStL(300, false);
	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0350020a11">
「没错。
　进驻军正准备撤退。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0350030a10">
「那么，方才香奈枝所说的话……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0350040a11">
「是的。
　值得一信。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0350050a10">
「……唉……
　真是不得了啊。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0350060a10">
「真正意欲夺取大和的，并非大英联邦，
而是新大陆独立派……？」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0350070a11">
「虽然问清情况之后并非不能理解。
　……但这的确是意料之外。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0350080a10">
「这委实是……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0350090a11">
「大鸟大尉也实在是了不起。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0350100a10">
「哦？　怎么了，这话由你说来倒是稀奇。
　莫非是迷恋上她了？」

{	FwC("cg/fw/fw署長_笑顔.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0350110a11">
「您说笑了。
　对男女之情，属下已然是有心无力之身。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0350120a11">
「宫殿下您是最清楚的。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0350130a10">
「啊……说的是。
　抱歉。说话未曾留心。」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0350140a11">
「没什么。
　……总之，这样一来一切就会结束了。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0350150a11">
「能结束了。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0350160a10">
「正是。
　这场战争。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0350170a10">
「总之，是要结束了……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_036.nss"