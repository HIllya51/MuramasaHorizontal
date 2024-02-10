//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_009.nss_MAIN
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
	#bg053_永倉家の庭_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_010.nss";

}

scene mc03_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_008.nss"


//◆夜
//◆庭？

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(100, "bg053_永倉家の庭_03.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１", 1500, true);

	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090010a04">
「书上说，复仇是空虚的。
　你怎么认为呢……这样的。」

{	StR(1000, @0, @0, "cg/st/st永倉翁_通常_私服.png");
	FadeStR(300, false);
	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090020b17">
「嚯……」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090030a04">
「她突然就这样问我了啊。」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090040b17">
「你怎么回答的？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090050a04">
「我把一口茶水喷在了她的脸上。」



{	FwC("cg/fw/fw永倉翁_苦味.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090060b17">
「……你真是过分啊……」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090070a04">
「不，不。
　我没想到，能从大小姐嘴里听到这种话。」



{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090080b17">
「做梦也想不到。
　……是呀……」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090090b17">
「香奈枝大人，有些改变了吗。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090100a04">
「看起来是呢。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090110b17">
「过了十年。如果没有任何改变，那才是奇怪
的吧，但是……
　我还以为她是<RUBY text="······">不会改变的人</RUBY>呢。」



{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090120a04">
「嗯。」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090130b17">
「是说有了某样东西，让不会改变的人改变了
吗。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090140a04">
「这个啊。
　大概是有了。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090150b17">
「那个年轻人？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090160a04">
「是个扭曲的人哦。」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw永倉翁_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090170b17">
「是呀。
　……看起来不像是能给别人带来幸福的男人
呢。」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090180b17">
「是和香奈枝大人在哪方面意气相投了吗。
　还是说，相反呢。」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090190a04">
「这个啊……」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090200b17">
「如果因为男人而改变，香奈枝大人也是一般
的女性了吧。
　这倒是很不错……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090210a04">
「不会改变的。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090220b17">
「唔。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090230a04">
「<RUBY text="·">根</RUBY>……
　本性难移。」


//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090240a04">
「改变的只有上面的部分。
　根部还是原样……从发端到结尾。无论是谁
……」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090250b17">
「是说……香奈枝大人也是从一开始，根部就
没有任何改变吗……
　那么，到底是怎样？」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090260b17">
「香奈枝大人的根部，是<RUBY text="··">哪边</RUBY>呢？」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090270a04">
「这个啊……」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090280b17">
「…………」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090290a04">
「是哪边呢……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_010.nss"