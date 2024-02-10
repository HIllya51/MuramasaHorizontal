//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_036.nss_MAIN
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
	#bg020_山脈坑道a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_037.nss";

}

scene md01_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_035.nss"

//◆源氏山？　bg020a？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg020_山脈_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	StR(1000, @0, @0,"cg/st/stウォルフ_通常_私服.png");
	FadeStR(300,true);

	StL(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");

	SetFwC("cg/fw/fwウォルフ_絶叫.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360010a13">
「绝妙！
　绝……妙……啊啊啊啊啊啊!!」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360020a13">
「打个比方来说，在某晴朗的午后，
通往市集的道路上，边走边拾起散落内裤的我，
与毫不吝惜裸露着无垢下半身的
美丽少女邂逅然后相恋。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360030a13">
「拒绝了父亲想要我将来成为大企业社长的劝诱，
出港参加了三天两晚的温泉杀人之旅，谁料那里
却是穿内裤者和不穿内裤者
殊死搏斗的决战场—— 」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360040a13">
「就绝妙到此种程度啊!!」

{	FadeStL(300,false);
	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360050b37">
「这是什么比喻啊。」

{	SoundPlay("@mbgm21",0,1000,true);
	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360060a13">
「无法言喻的感觉，你按照这样理解就够了。
　常暗斋——」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360070a13">
「哦喂，该称呼你巴尔特罗米欧吗。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360080b37">
「称呼哪个都请随意。
　……但是，被称呼洗礼名的机会对我来说
是很宝贵的。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360090a13">
「那就巴尔特罗米欧。
　你在这里蹦蹦跳跳脱下裤子，
也是不错的风景哦。」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360100b37">
「总之，似乎是那样。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360110a13">
「奥本海默君所预见的“<RUBY text="Ｃｏｌｌａｐｓｅ">星之崩坏</RUBY>”。
……虽然，那究竟只是模拟的事物。
　但无疑是我们所渴望的现象。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360120a13">
「终于能够亲眼看见了啊。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360130b37">
「不过沃尔夫教授……
　那个看上去似乎会很满意呢。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360140a13">
「的确。
　今天好像就很满足。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360150b37">
「如此，也不会发生什么。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360160a13">
「嗯，是的。
　<RUBY text="····">这种程度</RUBY>根本一点也不够。」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360170a13">
「所以直到那个完成之前，由我们来引导。」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360180b37">
「<RUBY text="·">超</RUBY>重力的漩涡。」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360190a13">
「没错！
　就在这个地球上，创造暗黑的漩涡！」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360200a13">
「为此而存在的六波罗。
　为此而存在的ＧＨＱ。
　为此而存在的银星号。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360210a13">
「为此而存在的<RUBY text="我们">绿龙会</RUBY>。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360220b37">
「没错。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360230a13">
「暗黑漩涡的出现之时，道路打开……」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360240a13">
「我们会与神相会。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360250b37">
「……Ａｍｅｎ。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_037.nss"