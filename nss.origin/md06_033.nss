//<continuation number="760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_033.nss_MAIN
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
	#bg002_空a_02=true;
	#ev006_景明の狂相=true;
	#ev264_景明VS雪車町=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md06_033.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_032.nss"


//◆夕空

//冒頭はBGMは流さずSEを流します inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");

	CreateTextureSP("絵背景", 100, InRight, InBottom, "cg/bg/bg204_横旋回背景b_02.jpg");
	Move("絵背景", 400000, 0, @0, DxlAuto, false);

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我向着留言所指的地方。
　奔跑。奔跑。再奔跑。

　时光流淌——不断飞逝。
　自村正被夺走之后，过了多久呢。

　夕阳西斜，霞红晕染长空。

　没事的。应该，平安无事。
　不管雪车町有何目的，都没有必要　
扼杀村正。　　　　　　　　　　　　　　　　　　　

　所以一定会安然无恙。
　我如此坚信着。

　即使至今与村正仍然断绝联络。
　尽管呼唤多少次都毫无回应。　

　但她仍然活着。
　一定。绝对。必然。

　所以必须赶快。
　要尽早赶到村正身边，把她救出来。

　奔跑————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg003_夕
	CreateColorEX("黒幕", 25000, "#000000");
	Fade("黒幕", 1500, 1000, null, true);

	CreateTextureSP("背景", 100, @-520, @-300, "cg/bg/resize/bg003_荒れ野_02.jpg");
	Request("背景", Smoothing);
	Zoom("背景", 0, 700, 700, null, true);

	Delete("絵背景");

	Wait(1000);

	CreateSE("歩く", "se人体_足音_歩く04_L");
	MusicStart("歩く", 0, 1000, 0, 700, null,true);

	Wait(500);

	FadeDelete("黒幕", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　四周只有荒芜。
　杂草丛生，大大小小的石块散落遍地。

　雪车町一藏如枯木般置身其中。
　他从岩石上站起身，朝我的方向
走来数步。

　到此停下。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("歩く", 1000, 0, null);

	CreateTextureEX("そりまち", 1000, @-45, @-210, "cg/st/resize/st雪車町_通常_私服_l.png");
	Request("そりまち", Smoothing);

	Zoom("そりまち", 0, 485, 485, null, true);

	Fade("そりまち", 300, 1000, null, true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330010a12">
「哟嗬。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330020a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("風", "se自然_風_荒野_L");
	MusicStart("風", 2000, 800, 0, 800, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……没见村正的身影。

　本以为劫持人质，无外乎必有所求。
但这是怎么一回事？
　是怕带来后会被立刻夺走，
所以藏到其他地方去了……？

　冷静。
　必须冷静。

　先确认一下人质的平安与否。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330030a00">
「村正在哪里？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330040a12">
「这是自江之岛以来……对吧？
　像这样可笑的交锋……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330050a12">
「咯，咯……！
　不过我倒是不得不暗地里瞻仰
你那穷神也懒于附身的尊容呐。」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330060a00">
「村正在哪里！」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330070a12">
「咯，咯，咯……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　有如乌鸦捕尸般的笑声。
　
　冷静……冷静！

　王牌握在对方手上。
　千万不能焦躁。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330080a12">
「不会是有所迷恋吧。
　只不过是个剑胄……干嘛　
这么费神？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330090a00">
「没必要向你说明。
　把村正还来。」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330100a12">
「我可没义务听你讲爱情故事。
　那么，还你……还你就是了。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330110a12">
「嘿嘿，该怎么还呢？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330120a00">
「…………
　你是想向我复仇吧。」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0330130a00">
「什么要求我都答应。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330140a12">
「噗，嘿嘿……！
　那真是感激不尽。
无论什么都肯做吗。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330150a12">
「嘿，嘿……真是愚蠢。
　像你这种人能做什么？
你这种人能有什么价值？」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330160a12">
「咯咯……咯咯咯！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330170a00">
「……
　那，你的目的何在！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330180a00">
「你想要做什么!?」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330190a12">
「不管怎么做……做什么。
　嘻咿，嘿嘿。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330200a12">
「我的目的已经达到了。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330210a00">
「你到底想说什么？」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330220a12">
「你还有脑子吧？
　动动脑子行吗？」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330230a12">
「咯，咯咯……！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330240a00">
「回答我！
　村正，在哪里!!」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330250a12">
「嘻嘻……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330260a12">
「不在了。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330270a00">
「……什么？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330280a12">
「不在了。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330290a12">
「已经，不在了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　雪车町不断重复着简单的话语。
　无法理解。

　不在？
　<RUBY text="·····">已经不在了</RUBY>……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330300a00">
「你在说什么？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330310a12">
「咿嘻，嘻嘻……！
　看来你的脑子已经被腐蚀到
这步田地了。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330320a12">
「连这种事都听不懂啊。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330330a00">
「…………」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330340a12">
「你明白的吧。」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330350a12">
「杀掉了。
　我说，我已经把她杀了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("風", 100, 0, null);

	CreateColorEX("赤", 15000, "#990000");
	OnSE("se人体_体_心臓の音02", 1000);

	Fade("赤", 0, 1000, null, true);

	CreateColorSP("絵色黒", 14900, "#000000");

	FadeDelete("赤", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　
　　　　　　　　　　　杀了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　这句话，<k>不可能有所误解。

　杀了。
　这个男人。

　把村正。
　杀了。

　<RUBY text="······">把村正杀害了</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330360a00">
「……休想骗人。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330370a12">
「嘻嘻嘻，嘿嘿……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330380a00">
「骗人。你说谎。」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330390a12">
「咦嘻嘻嘻嘻嘻嘻嘻。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330400a00">
「说谎。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se日常_金属落ちる", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　雪车町从上衣里取出某物，扔了过来。
　比人手大上一圈的东西。

　红色。
　鲜血般的猩红。

　散发暗淡的光辉。
　金属的光泽。

　装甲。

　村正的装甲。

　它的————残片。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330410a00">
「村正。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330420a00">
「村正！」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330430a00">
「村正啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　我呼唤着这个名字。

　剑胄和操控者一心同体。
　呼唤声即使远隔千里也一定能够传达。

　传达到了，就会有所回应。
　有所回应——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330440a00">
「…………」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330450a12">
「嘻……嘻嘻……」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330460a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　被丢弃在我脚边的装甲。
　就那样，像废铁般滚动着。

　如废铁般。
　与附近的石头一样，仿佛没有寄宿任何生命。

　红色的装甲。

　现在，<k>只剩残骸。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。村正（蝦夷）
//◆パリーンと割れて散る

	CreateColorEX("フラッシュ白", 16000, "WHITE");

//嶋SE；フラッシュバック用ＳＥの違うバージョン
	OnSE("se擬音_フラッシュバック01",1000);

	Fade("フラッシュ白",0,1000,null,true);
	CreateColorSP("絵背景黒", 1000, "Black");
	StC(1100, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStC(0, true);
	Fade("フラッシュ白",200,0,null,true);

	Wait(1000);

	OnSE("se日常_建物_照明破損", 1000);

	DrawEffect("@StC*", 3000, "HardSplit", 30, 30, null,false);

	Fade("フラッシュ白",300,1000,null,true);
	DeleteStC(0,true);
	Delete("絵背景黒");
	FadeDelete("フラッシュ白",1000,true);

//◆ＢＧＭ

//個人的には11のほうが良いと思いますが、お互い憎悪ありなので08で
	SoundPlay("@mbgm08", 0, 1000, true);


	SetFwC("cg/fw/fw景明_狂怒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330470a00">
「哇啊啊啊啊啊啊啊啊啊啊啊啊啊!!!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	SetBlur("背景", true, 3, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("背景", 150, 1200, 1200, Dxl2, false);
	Zoom("そりまち", 150, 1200, 1200, Dxl2, false);
	Move("そりまち", 150, 50, 110, Dxl2, false);
	Move("背景", 150, @250, @-100, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　血液沸腾。

　在草地上狂奔，疾驰。
　朝着那个男人飞奔而去。

　雪车町伸手欲拿早有准备的手杖。
　但速度明显迟了。

　飞奔至咫尺之遥。
　我扬起右拳。

　挥上去。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆どご。
	OnSE("se戦闘_攻撃_殴る01", 1000);


	CreateTextureSP("絵背景500", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Request("絵背景500", Smoothing);
	Zoom("絵背景500", 0, 1100, 1100, null, true);
	Rotate("絵背景500", 0, @0, @180, @0, null,true);

	Delete("そりまち");

	CreatePlainEX("絵板写", 9000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1400, 1400, null, false);
	Zoom("絵板写", 200, 1000, 1000, Dxl2, false);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	Delete("絵板写");

	FadeDelete("絵背景500", 300, true);

	OnSE("se人体_衝撃_転倒04", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　瘠瘦的身躯被打飞。
　手杖掉落。

　我追上前。

　大跨一步。
　又是一击。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_一歩", 1000);

	SetFwC("cg/fw/fw雪車町_哄笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330480a12">
「咯啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がす。

	OnSE("se戦闘_攻撃_殴る02", 1000);

	CreateTextureSP("絵背景500", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");

	CreatePlainEX("絵板写", 9000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1400, 1400, null, false);
	Zoom("絵板写", 200, 1000, 1000, Dxl2, false);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	Delete("絵板写");

	FadeDelete("絵背景500", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　雪车町的拳头狠狠剜入我的脸颊。
  顿时眼冒金星。

　无所谓。
　我无视直达膝盖的疼痛，予以反击。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どか。
	OnSE("se戦闘_攻撃_殴る01", 1000);

	CreatePlainEX("絵板写", 9000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1400, 1400, null, false);
	Zoom("絵板写", 200, 1000, 1000, Dxl2, false);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　雪车町倒退数步，一脚踩空。
　即便如此仍屹立不倒。

　他抓住我的双肩，使出难以置信的强大力气　
将我拉近，膝盖猛踢我的腹部。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どす。
	OnSE("se戦闘_攻撃_キック02", 1000);

	CreatePlainEX("絵板写", 9000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1400, 1400, null, false);
	Zoom("絵板写", 200, 1000, 1000, Dxl2, false);
	Shake("絵板写", 500, 30, 0, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　大量苦水涌上喉咙，自口腔喷出。
　呕吐。

　雪车町又用手肘击打我的背脊。
　接连不断。激烈的冲击使我的椎骨变形。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330490a00">
「呜啊啊啊啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　咆哮。
　身体竭尽全力地保持前倾的姿势。

　强行将雪车町按倒。
　硬将他的身体压向地面。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_衝撃_転倒_複数", 1000);

	CreatePlainEX("絵板写", 9990);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 30, 0, 0, 500, null, false);

	CreateColorSP("黒幕１", 10000, "#000000");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵板写");

	CreateColorEX("絵色白", 10100, "#FFFFFF");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
　连同我也被拉倒。
　我们扭作一团，互相厮打。

{	CreateSE("乱闘", "se戦闘_攻撃_殴打連撃01_L");
	MusicStart("乱闘", 0, 1000, 0, 1000, null,false);}
　殴打。
　被殴打。

　雪车町一藏憎恶着我。
　我也同样憎恶着他。

{	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, false);}
　殴打。

　可恶。
　这个男人可恶至极。

　理由已经抛至九霄。

　可恶。
　只有深恶痛绝的憎恨。

{	CreateSE("SE01a","se戦闘_攻撃_殴る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);}
　殴打。
{	CreateSE("SE01b","se戦闘_攻撃_殴る02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);}
　殴打。
{	CreateSE("SE01c","se戦闘_攻撃_キック02");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);}
　殴打。
{	CreateSE("SE01d","se戦闘_攻撃_殴る01");
	MusicStart("SE01d",0,1000,0,800,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);}
　殴打。

　不知不觉间，仅剩我一个人在动手。

　雪车町没有动弹。
　被我殴打着，却笑了起来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("乱闘", 1000, 0, null);

//◆ev264
	CreateSE("SE01","se戦闘_攻撃_キック02");
	MusicStart("SE01",0,1000,0,800,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Delete("黒幕*");

	CreateTextureSP("絵イベＥＸ", 5010, -300, InBottom, "cg/ev/resize/ev264_景明VS雪車町l.jpg");
	CreateTextureSP("絵イベ", 5000, Center, Middle, "cg/ev/ev264_景明VS雪車町.jpg");

	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330500a12">
「嘿……嘿嘿。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330510a12">
「表情真不错。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330520a12">
「这样就好。」

{	Move("絵イベＥＸ", 8000, -1022, -300, DxlAuto, false);
	FadeDelete("絵イベＥＸ", 7800, false);
	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330530a12">
「你可真容易被看透啊……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330540a12">
「恨我，想要杀了我吧？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330550a12">
「你现在……想要杀了我，打算杀了我吧。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330560a12">
「这样就好……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330570a12">
「迄今为止，你都不曾这样。」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330580a12">
「都是勉强自己去杀人……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330590a12">
「一直都是这样吧？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330600a12">
「真丢人啊……」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330610a12">
「杀了人……
　却想说并不是自己的本意，还
猫哭耗子。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330620a12">
「那就不要去做啊……
　被你杀害的所有人，都这么说。」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330630a12">
「带着被诅咒过的村正找个地方隐居就好了……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330640a12">
「你这家伙就是爱出风头……
　为了世界，为了拯救更多的人，
<RUBY text="·····">一意孤行地</RUBY>背负起使命，其实毫无杀人之意，
却又为杀了这么多人……而落泪。」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330650a12">
「真是乱来。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330660a12">
「肆意残杀，到头来还怜悯起　
自己……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330670a12">
「让人愤怒。」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330680a12">
「令人作呕。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330690a12">
「现在多好。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330700a12">
「表情很不错。」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330710a12">
「想恨就恨，想杀就杀，毫不掩饰　
杀意的表情。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330720a12">
「如果大家都在这种表情下被杀，那该多好。」

{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330730a12">
「……包括那对虾夷小鬼！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　吵死了。
　闭嘴。

　我不想听到你的声音。

　殴打。
　殴打，为了让他闭嘴。

　没完没了。
　雪车町不停地笑着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330740a12">
「杀了我。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330750a12">
「杀了我……」

{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330760a12">
「就用这副表情，杀了我！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 6000, "BLACK");
	Fade("黒", 500, 1000, null, true);

	OnSE("se人体_体_心臓の音02", 1000);

	CreateColorSP("絵色血覆", 20000, "#990000");

	CreateColorSP("絵色血", 15300, "#990000");
	CreateTextureSPadd("汚染", 15400, @0, @0, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureEXmul("狂相", 15500, @0, @0, "cg/ev/ev006_景明の狂相.jpg");

	FadeDelete("絵色血覆", 300, true);

	Fade("狂相", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]

　杀了他。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
　我抓起石头。
　坚硬、尖锐的石头。

　这样就能杀了他。

　只要砸在额头上，一击毙命。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_体_心臓の音02", 1000);
	CreateColorSP("殺す", 20000, "#990000");

	FadeDelete("汚染",1000,false);
	Fade("殺す", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0302]

　杀了他。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0303]
　我，
　高举石头，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：殺す／……殺せない

}

..//ジャンプ指定
//◆殺す　"md06_033a.nss"
//◆……殺せない　"md06_033b.nss"



//★選択肢シーン
scene md06_033.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintBG("背景０", 30000);

	SoundPlay("@mbgm08",0,1000,true);

	CreateColorSP("絵色血", 5000, "#990000");
	CreateTextureSPmul("狂相", 5100, @0, @0, "cg/ev/ev006_景明の狂相.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("杀","……不杀");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆殺す　"md06_033a.nss"
				$GameName = "md06_033a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆……殺せない　"md06_033b.nss"
				$GameName = "md06_033b.nss";
		}
	}
}