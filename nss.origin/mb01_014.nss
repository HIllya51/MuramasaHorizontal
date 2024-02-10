//<continuation number="280">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_014.nss_MAIN
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
	#bg058_曇空a_01=true;
	#bg002_空a_02=true;
	#bg002_空a_03=true;
	#bg007_若宮大路a_03=true;
	#bg056_建長寺三門前_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_001.nss";

}

scene mb01_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_013vs.nss"

//◆雨空
//◆夕（晴）
//◆夜
	PrintBG("上背景", 30000);

	CreateSE("SEL01","se自然_水_雨音02_L");
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg058_曇空a_01.jpg");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	CreateEffect("絵効果雨落下風", 150, 256, 0, 512, 288, "Rain");
	SetAlias("絵効果雨落下風","絵効果雨落下風");
	Rotate("絵効果雨落下風", 0, @-60, @0, @0, null,true);
	Zoom("絵効果雨落下風", 0, 3000, 3500, null, true);
	Fade("絵効果雨落下風", 0, 300, null, true);

	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);

	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(2000);
	SetVolume("SE*", 5000, 0, null);
	Fade("絵効果雨落下風", 2000, 0, null, true);

	OnBG(200,"bg002_空a_02.jpg");
	FadeBG(3000,true);
	Delete("絵効果雨落下風");

	WaitKey(1000);

	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(3000,true);

	WaitKey(2000);

//◆鎌倉市街
	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(3000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　——一条告诉我，希望我助她一臂之力。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆建朝寺前
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg056_建長寺三門前_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm32",0,1000,true);

	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0140010a11">
「……来了吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140020a02">
「是。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0140030a00">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0140040a00">
「署长……怎么回事？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140050a02">
「我来解释。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0140060a00">
「一条……」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140070a02">
「昨天，受人所托。
　说在夺回大和和平的战斗中，
希望借助我的力量。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140080a02">
「我接受了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0140090a00">
「…………」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140100a02">
「凑斗先生。
　拜托你。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140110a02">
「请助我一臂之力。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　少女——
　直直地凝视着我，这样说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140120a02">
「我知道自己很不成熟。
　所以，希望凑斗来弥补我的不足。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0140130a00">
「可是，我……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　现在的一条应该已经知道了。
　大概是署长告诉她的。

　若在战斗中杀了一个敌人……
　就必须再杀一个同伴。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140140a02">
「凑斗先生不用再杀人了。
　<RUBY text="··">这些</RUBY>由我来做。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140150a02">
「六波罗由我来杀。
　银星号也由我来杀。」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140160a02">
「凑斗先生只需助我一臂之力便好。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0140170a00">
「…………」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0140180b40">
《主君。这是何意。
　此人……》


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140190a02">
「闭嘴。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0140200b40">
《……》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140210a02">
「我将贯彻正义。
　因此，我需要凑斗先生的力量。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0140220a00">
「……一条。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　只需出力便可。
　无需杀戮。

　——到此为止。
　我的双手不会再染上无辜同伴的鲜血。

　不用。
　亲手去杀了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140230a02">
「凑斗先生。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0140240a02">
「请跟我……一起来。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0140250a00">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0140260a00">
「我明白了。绫弥一条……
　我听你的。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0140270a11">
「……景明。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0140280a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆Ａパート完
//◆カットインぽくロゴでも入れるか。

/*
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/sys/Telop/lg_村正.jpg");
	CreateColorSP("絵色黒地", 100, "#000000");

	Wait(100);

	FadeDelete("絵色白", 1000, true);

	WaitKey(2000);
*/

	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,1);

	ClearWaitAll(3000, 2000);


//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"mb02_001.nss"