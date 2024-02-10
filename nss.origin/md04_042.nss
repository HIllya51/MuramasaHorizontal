//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_042.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_043.nss";

}

scene md04_042.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_041.nss"


//◆評議の間？
//◆どたどた。

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm37", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


	CreateSE("走る", "se人体_足音_走る02");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	WaitKey(1500);
	SetVolume("走る", 1000, 0, null);

	StR(1000, @0, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStR(300, false);


	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420010a08">
「童心大人！」

{	StL(1000, @0, @0, "cg/st/st童心_通常_私服a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420020a09">
「雷蝶大人……」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420030a08">
「究竟发生了什么事!?
　这场混乱——到底是……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420040a09">
「那银星号在城内现了身。
　不仅四处杀戮，似乎还以不知名的力量
令军队发狂了……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420050a08">
「怎、怎么会——它从哪来的!?」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420060a09">
「虽然武者们正与其相对抗……似乎无甚效果。
　城内的指挥系统已然毁坏，可说是溃不成军
了。」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0420070a09">
「如同与银星号现身相呼应一般，零零式也失
去了控制。
　空军眼看也要溃败了。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420080a08">
「……狮、狮子吼怎样了?!」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420090a09">
「…………」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0420100a09">
「已经毫无音讯。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420110a08">
「————————」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420120a08">
「怎么会这样……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420130a09">
「雷蝶大人。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420140a08">
「是、是的。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420150a09">
「邦氏殿下就拜托你了。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420160a08">
「……哎？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420170a08">
「您、您的意思是？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420180a09">
「意思？
　贫僧要到上空去走一趟。」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420190a09">
「去与那罕见的怪物，与那银星号一战……」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420200a08">
「————」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420210a08">
「不、不行！ 
　太危险了！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420220a09">
「虽危险，也不能任其逍遥。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420230a09">
「这里是普陀乐城……我六波罗的都城。
　没有弃其而逃的的选择。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420240a08">
「——既然如此，就让吾出战！
　这么说有些失礼，但挑战银星号这等怪物，
恐怕比起童心大人还是吾较为适合。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420250a09">
「雷蝶大人的武勇当是贫僧这老和尚无法企及的
吧。
　这点贫僧很清楚……但是。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420260a09">
「正因如此，才希望雷蝶大人守在邦氏殿下
身侧。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420270a08">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420280a09">
「再加上贫僧想要一战。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420290a08">
「哎？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420300a09">
「天上天下遗世独立、所向无敌，
　对付我等六波罗如同碾死虫豸一般轻松的
——银星号！」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420310a09">
「可惜，可惜。
　放任此物横行霸道，你说，
这算什么天下霸者。」

{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420320a09">
「呵。呵、呵呵呵……！
　若总是畏惧而逃避此物的话——
贫僧之婆娑罗也未免太小气了!!」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420330a08">
「童心大人……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420340a09">
「不必多言。
　无妨，贫僧流一场汗便归来。」

{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420350a09">
「雷蝶大人，方便的话请为贫僧备酒。
　以白银魔王的<RUBY text="证据">首级</RUBY>下酒，
咱们来喝一杯！」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420360a09">
「哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆出ていく

	OnSE("se人体_足音_歩く09", 1000);

//	Move("@StL*", 300, @-50, @0, DxlAuto, false);
	DeleteStL(500,true);

	Wait(1000);

	SetFwC("cg/fw/fw雷蝶_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420370a08">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1500, true);
	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"md04_043.nss"
