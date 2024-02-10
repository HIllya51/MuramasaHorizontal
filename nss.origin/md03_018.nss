//<continuation number="800">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_018.nss_MAIN
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
	#bg028_横浜ＧＨＱ基地_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_019.nss";

}

scene md03_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_017.nss"


//◆横浜進駐軍基地·夜

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg028_横浜ＧＨＱ基地_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",2000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　——横浜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @50, @0, "cg/st/stウォルフ_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);
	FadeStR(300, false);



	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180010a00">
「ＧＨＱ的学术顾问？」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180020a13">
「是啊。
　你没听说吗？」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180030a13">
「茶茶丸，你一点也不机灵。
　所以说不脱内裤的少女就是……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180040a07">
「跟内裤没关系。
　就算你是学术顾问也怎么都得
干点正事吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　说是要去见沃尔夫教授，于是就被茶茶丸带进这
进驻军基地。
　理由——似乎就是上述的内容。

　即是如果说绿龙会在六波罗的代表是茶茶丸的话，
那么在ＧＨＱ的代表就是沃尔夫教授吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180050a13">
「话说……
　宣旨典礼的日子定下来了。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180060a13">
「银星号是在前一天觉醒吧？
　没错吧。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180070a07">
「确实如此。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180080a00">
「你怎么知道？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180090a07">
「我有特殊能力。
　能<RUBY text="··">感知</RUBY>人和物体的内部构造与状态。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180100a07">
「如果花多点时间诊察的话，精度能达到几乎
１〇〇％。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180110a00">
「……为什么有这种能力？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180120a07">
「少女的秘密☆～」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180130a13">
「真不知道害臊啊……你……」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180140a07">
「哇，被你一说就感觉真的很害臊！
　你不该说的！」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180150a13">
「但是麻烦了啊。
　相差一天。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180160a07">
「别奢望了。这种事怎么可能正好赶上呢。
　京都的同志已经想方设法尽可能接近满足咱
们的要求了。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180170a07">
「宣旨典礼和<RUBY text="公主">银星号</RUBY>的觉醒只差一天
已经是很好的结果了。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180180a13">
「是啊。
　只是一天的话，应该能想办法提前的吧？」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180190a13">
「卡农中佐似乎想在典礼当日或是翌日开展作
战的……我会想办法说动他的。
　找个适当的理由。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180200a07">
「加油吧。」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180210a13">
「你说得还真干脆。
　你以为凭一张嘴去诱骗那个卡农中佐
要费多大劲啊！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180220a07">
「我不管～」

{	FwC("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180230a13">
「火大。我生气了。
　脱掉内裤！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180240a07">
「才不脱呢～」

{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180250a13">
「凑斗君！」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180260a00">
「脱掉，茶茶丸。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180270a07">
「哎……哎———!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆少女（鍛造雷弾）

	StCR(1000, @-50, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStCR(300, true);


//◆ウェイト
	WaitKey(800);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180280a00">
「……？」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180290a13">
「哎呀，“<RUBY text="Ｌｉｔｔｌｅ　Ｇｉｒｌ">少女</RUBY>”……
　你又在这种地方徘徊。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180300a13">
「以后再慢慢地脱掉你的内裤。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180310a07">
「脱吧脱吧。
　只要不是我，爱怎么脱就怎么脱。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180320a07">
「……给我等等。
　给我认真管理炸弹啊！　怎么能让她
随便溜达啊！」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180330a13">
「她独自一人的话是完全无害的。
　不用担心。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180340a00">
「炸弹？」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180350a13">
「这个。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆ボックス消して小ウェイト

	SetVolume("@mbgm*", 1000, 0, null);


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -300, "cg/bg/bg028_横浜ＧＨＱ基地_03.jpg");
	SetShade("絵演窓上/絵演背景", HEAVY);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);


	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -130, "cg/st/resize/st鍛造雷弾_通常_私服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);



	WaitKey(800);

	SoundPlay("@mbgm02", 0, 1000, true);


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180360a00">
「————」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180370a00">
「这是什么？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180380a07">
「我来说明。
　今天带你过来就是为了这个。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180390a07">
「这家伙是进驻军的最高机密。
　——锻造雷弹。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180400a07">
「拥有能将普陀乐城<RUBY text="····">夷为平地</RUBY>之破坏力的
新型炸弹。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180410a00">
「……………………」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180420a13">
「说对了一半。
　她相当于导火索。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180430a13">
「作为火药的金属另有其他……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180440a00">
「…………」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180450a07">
「不相信吗，哥哥？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180460a00">
「不要太高估我的理解能力。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180470a07">
「但是，一看就知道这不是人吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックス消して小ウェイト
	WaitKey(800);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180480a00">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　不得不点头承认。
“少女”的眼睛简直就像玻璃珠一样。

　这——确实不同。

　不是纯粹意义上的人……
　不是生物。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180490a07">
「一半是人……是白虾夷。
　剩下的一半是一种器械。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180500a13">
「她会引导冥府矿的崩坏。
　然后……破坏一切。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180510a13">
「锻造雷弹。
　是人类史上最大最强的破坏者。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180520a00">
「…………
　这个要怎么用？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180530a07">
「在宣旨典礼的前一天。
　由ＧＨＱ的卡农中佐率领的奇袭部队将会
空袭普陀乐。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180540a07">
「投下锻造雷弹。
　为了将为典礼而集结的六波罗兵力一击抹杀，
为了掌握大和的支配权。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180550a07">
「但是，真正的目的——
　绿龙会的目的并非如此。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180560a00">
「……」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180570a13">
「我们是为了让锻造雷弹邂逅银星号。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180580a13">
「连结破坏与破坏。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180590a00">
「……什么!?」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180600a00">
「这样做的话——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　用炸弹将普陀乐城和六波罗全军炸成碎片都无妨。
让整个镰仓市都化为焦土我也不觉得有问题。
　但是……这样一来，就连光都————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180610a07">
「哥哥。
　老实说……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180620a07">
「这是一场赌博。
　有可能，会像哥哥所担心的那样，公主殿下
被炸飞。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180630a07">
「……不如说……这种可能性很大。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180640a00">
「茶茶丸——」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180650a07">
「但如果什么都不做，凑斗光必然会死。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180660a00">
「…………」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180670a07">
「这是唯一的希望。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180680a07">
「锻造雷弹和银星号。
　使极限冲击极限，跨越一一五公里的障碍。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180690a07">
「打开通往神的道路。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180700a00">
「…………能做到吗？」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0180710a00">
「这真的，能做到吗？」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180720a13">
「有可能。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180730a13">
「凑斗光有可能成为神。
　我们有可能见到神。」

{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180740a13">
「有可能!!」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180750a00">
「…………」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180760a13">
「我要挑战。
　茶茶丸也是。」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180770a13">
「你呢？
　停手吗？」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180780a13">
「放弃凑斗光的生命吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180790a00">
「————」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180800a00">
「放弃……怎么可能。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　不存在什么选择。

　无论这希望多么模糊，甚至比蛛丝还不如。
　如果这是能救光的唯一途径的话。

　我就会赌上一切，牺牲一切，抓住那缕希望。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_019.nss"