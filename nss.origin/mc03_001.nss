//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_001.nss_MAIN
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
	#bg053_永倉家の庭_01=true;
	#bg063_永倉邸廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_永倉翁=true;

	$PreGameName = $GameName;

	$GameName = "mc03_002.nss";

}

scene mc03_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_036.nss"

//◆永倉邸
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100, "bg053_永倉家の庭_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１", 3000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　今年，会津的冬天姗姗来迟。

　冬至已过。
　如照往年，立冬不久后就会开始降雪。
然而今年却直到腊月也未见一次银装素裹的景象。
真是少见呐，家主道。

　这或许不是吉兆。难抑此念。
　因为北国景色的神韵就在于白雪映衬。


　府邸内的庭院有着足以匹配名门大鸟家旁系的恢弘气势，
但总觉得少了一笔画龙点睛的神韵。


　雪云覆盖了会津的国境。
　是因天之风向而来？是为海之潮汐而来？

　还是为匍匐倒地的人们所散发的血腥热气而来？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆庭に面した廊下
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("@OnBG*");
	OnBG(100,"bg063_永倉邸廊下_01.jpg");
	FadeBG(0,true);
	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　没有降雪的冬天，气温下降得非常缓慢。
　对于生在南方、长在南方的体质而言，
最近这一段时间还不至于冷得钻进被炉
就不想动弹。

　这期间，
　
　
　——做些什么吧。

　这并非随我一人意愿便能决定的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw永倉翁_通常b.png");

	#voice_on_永倉翁=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010010b17">
「大人。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆永倉翁

//■相談：景明は表示させないほうがいいでしょうか inc櫻井
//あきゅん「相談回答：そうですね、ここは景明視点で進みましょう」
//■07/08 翁の立ち位置等を変更いたしました。 inc櫻井
	StR(1000, @0, @0, "cg/st/st永倉翁_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw永倉翁_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010020b17">
「您是否已用完午膳？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010030a00">
「是永仓长老啊。
　午饭的话，刚才已经吃过了。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010040a00">
「那个凉拌柿子真是一绝。
　请一定要帮我向厨师道声谢。」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010050b17">
「呵呵，一定为您传达。
　今年的身不知柿子长得非常好。
厨师的技术也有了用武之地。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　老人心情愉悦地说道，微笑间露出洁白的牙齿。
　真是位好性情的老人。

　毅然藏匿被军队追杀的人们的那份气魄，
从他外表上难以看出分毫。
　万一与他为敌，那肯定是个不能轻易打发的
麻烦人物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010060a00">
「那柿子是名贵的贡品。
　此番能品尝到敬奉天子的御品，不胜荣幸。」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010070b17">
「您既然如此中意，晚膳就将此物
用别法烹制呈上吧。
　话说回来，大人。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010080b17">
「您欲往何处？
　莫非是去香奈枝大人的房间吗？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010090a00">
「是，我正有此意。
　如果方便的话，请允许我去探望她。」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010100b17">
「……是么。虽说并无不便之处，
　不过，能否请您稍候片刻呢？」



{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010110b17">
「我想这会儿香奈枝大人应该
尚未用完午膳。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010120a00">
「是吗……您说的是。
　那我就依您所言，稍后再去。」


{	FwC("cg/fw/fw永倉翁_苦味.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010130b17">
「难为您数次前来，却仍要劳您久候。
真是过意不去。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010140a00">
「哪里的话。
　前来探望若是还给人添麻烦就太不像话了。
我倒是要谢谢您，
时时给我忠告。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010150b17">
「哎呀，您言重了，
　您这么客气我可不敢当啊……」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010160a00">
「我就在庭院散散步吧。
　刚才吃得有些过急，胃稍有不适，
走走也帮助消化。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw永倉翁_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010170b17">
「呵……
　听您一提，还真的挺快呢。」


//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010180b17">
「您家习惯如此吗？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010190a00">
「……不，并非如此。
　平时不会吃得那么急……刚才也并非
故意想要吃那么快的。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010200b17">
「那就是无意识的。
　展现在战场上习得的心得吗？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010210a00">
「……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010220a00">
「也许吧。」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010230b17">
「不知何时会遭受敌人的袭击，
因此悠闲进食与自杀行为无异呢。
　下筷速度自然就会加快。」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010240b17">
「但是，请您无须担心。
　进驻军的宵小之辈暂时……
还不会包围本家。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010250a00">
「长老，何出此言？」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010260b17">
「探子刚才回报，
　通往国境的要道由狮子吼的手下重重严防，
连一只蚂蚁都难以通过。」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010270b17">
「若非千军万马杀到，否则难以突破。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010280a00">
「……」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010290b17">
「当然，在不久的将来，
事态定会发展到这一步。
　不过当下，您还无需过多顾虑。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010300a00">
「是。」


</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　永仓老人不容分辩地将至今为止的情势
都向我交代了一遍。
　没错——总有一天，进驻军就会如同雪崩一般
涌入会津。

　情势必定如此发展。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"mc03_002.nss"