//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_008.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼雨降らしフラグの解除
	$AmeHure = false;
	Request("@絵効果雨落下風", UnLock);

	//▼イベントＣＧ
	#bg058_曇空c_01=true;
	#bg060_円応寺境内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_009.nss";

}

scene mb01_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_007a.nss"
//前ファイル　"mb01_007b.nss"

//◆戻り

	PrintBG("上背景", 30000);

/*
	if($AmeHure == true){
	Delete("@絵新背景");
	Delete("@Fw*");
	}else{
	PrintBG("上背景", 30000);
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	$AmeHure = true;
	CreateEffect("絵効果雨落下風", 5500, 256, 0, 512, 288, "Rain");
	SetAlias("絵効果雨落下風", "絵効果雨落下風");
	Request("絵効果雨落下風", Lock);
	Rotate("絵効果雨落下風", 0, @-60, @0, @0, null,true);
	Zoom("絵効果雨落下風", 0, 3000, 3500, null, true);
	Fade("絵効果雨落下風", 0, 500, null, true);

	}

*/
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("絵効果雨", 2000, 256, 144, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 500, null, true);

	CreateTextureSP("絵背景", 5000, Center, Middle, "cg/bg/bg058_曇空c_01.jpg");
	OnBG(100,"bg060_円応寺境内_01.jpg");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	SoundPlay("@mbgm32",0,1000,true);

	Request("@絵効果雨落下風", UnLock);
	Fade("@絵効果雨落下風", 1000, 0, null, false);
	FadeDelete("絵背景", 1000, true);
	Delete("@絵効果雨落下風");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　对于我的话，一条能接受吗。
　与少女诚挚的愿望，完全相反。

　因为一切都不过是罗列事实罢了。
　平淡而朴素。没有能够怀疑的余地。

　这就是真相。
　少女未曾期望的真相。

　这是发出最后一问的绫弥一条，不得不接受的答案。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080010a02">
「……为什么……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080020a00">
「理由吗。
　没有理由。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　没有。
　没有足以免去杀戮之罪的理由。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080030a00">
「硬要说的话，因为我就是那种<RUBY text="·">人</RUBY>
罢了。
　仅此而已。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080040a02">
「……………………」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080050a02">
「不可原谅。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080060a00">
「……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080070a02">
「从没想过……会被背叛。
　对了。你一开始就说过的。」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080080a02">
「你说自己不是正义的伙伴。
　只是个杀人犯而已。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080090a00">
「是啊。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080100a02">
「是我擅自会错意。
　擅自自以为是……擅自深信不疑。」


{	FwC("cg/fw/fw一条_笑顔b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080110a02">
「擅自崇拜你！
　啊哈哈哈哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　<RUBY text="·······">疯狂地大笑不止</RUBY>。
　我现在第一次知道，人类也能这样表达感情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080120a02">
「但是，我无法原谅。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080130a00">
「……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080140a02">
「凑斗景明。
　我无法原谅你。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080150a02">
「我要杀了你。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080160a00">
「怎样杀？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我如她所愿般地吐出这句反问。
　但在一条听来，一定意味着挑衅吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080170a02">
「这样杀！
　正宗——!!」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080180a00">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//おがみ：立ち絵来たら調整
//◆正宗·天牛虫登場
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateSE("SE01b","se戦闘_動作_空突進03");
	CreateSE("SE02","se戦闘_動作_鎧_踏み込み01");
	CreateSE("SE03","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	MusicStart("SE01",0,1000,0,800,null,false);
	MusicStart("SE01b",0,1000,0,1400,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	StL(1000, @50, @370,"cg/st/3d正宗天牛虫_正面.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	FadeStL(0,true);

	Wait(1500);

	MusicStart("SE02",0,1000,0,800,null,false);
	MusicStart("SE03",0,1000,0,800,null,false);

	Shake("@StL*", 700, 0, 5, 0, 0, 1000, Dxl2, false);

	DrawDelete("絵色白", 2000, 100, "effect_01_00_0", false);
	Fade("絵色白", 1000, 0, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　一团蓝色飞来。

　浑身散发出硬质的深色光芒。
　生着三对脚和长长的触角。

　天牛。

　那是剑冑。
　他的庞大身躯和钢筋铁骨昭示一切。

　雨天之下，暗色甲铁却完全没有隐没于天色之中。
　独绽傲然异彩。

　夺人眼球的无上光泽，明确地指出一个事实。
　——至高杰作。

　与势洲千子村正一样。
　<RUBY text="·····">或凌驾其上</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14",1000,1000,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080190a00">
「正宗……？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080200a00">
「天下一等……
　相州五郎入道正宗吗!?」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080210b40">
《恶鬼呼唤之名，于吾尚无。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　冷酷至极，
　对我没有一丝情感的剑胄传音刺穿脑髓。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080220b40">
《吾自报名。名为正宗。
　吾来斩之。凭吾之铭。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080230b40">
《邪恶闻之 速速散去。
　其余绝不饶恕……》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080240a02">
「绝不饶恕。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080250b40">
《不留痕迹于世。》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080260a02">
「全部抹去。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080270b40">
《斩尽杀绝。》


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080280a02">
「世间邪恶。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080290b40">
《一个不留。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　不管这是多么的不可能，事已至此，只能承认面前的
事实。

　深蓝色的剑冑就是正宗。
　而他的操控者是绫弥一条。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080300a00">
「为何。
　你是何时……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080310a02">
「那种事根本无所谓。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　现在少女声音的冰冷程度，绝不逊于剑冑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りc.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080320a02">
「我能杀了你。
　恶鬼，村正。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080330a00">
「……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080340a02">
「明天。」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080350a02">
「明天清晨，到这后面的树林来。
　带上你的剑冑。」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080360a02">
「我要杀了你。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080370a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_歩く07_L");
	CreateSE("SE02","se人体_足音_鎧歩く03_L");
	MusicStart("SE01",0,1000,0,1100,null,true);
	MusicStart("SE02",0,500,0,1200,null,true);


	CreatePlainSP("絵板写", 3000);
	DeleteStA(0,true);
//	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeDelete("絵板写", 600, false);
	SetVolume("@mbgm*", 3000, 0, null);

	Wait(500);

	SetVolume("SE*", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　如此宣告完毕，一条转过身去。
　朝大门走去。

　她那不算高大的背影，随剑冑一起渐行渐远。
　突然，她停下脚步。

　回过头来。

　望着我。

　由于雨霰遮挡，我看不清少女的眼睛。
　对方——又是怎样呢。

　一条抬起右臂。
　有力地伸出食指。

　她的指尖，正正地指向我的胸口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080380a02">
「杀了你——!!」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080390a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateSE("SEL01","se自然_水_雨音01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	WaitKey(4000);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_009.nss"