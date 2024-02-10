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

scene ma01_015.nss_MAIN
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
	#bg006_雄飛の部屋_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_016.nss";

}

scene ma01_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_014.nss"

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg006_雄飛の部屋_03a.jpg");

	SoundPlay("@mbgm31",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


//◆雄飛の部屋

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150010b33">
「……明天开始怎么办？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
　小夏终于这样来问我的时候，已经是夜半就寝时分。

　那之后我们再无交谈，默默走在回家路上，和忠保分
别，到家，吃饭洗澡。
　期间说过话的，也只有伯父伯母。

　虽然我和小夏都一副无精打采的样子，或许会让他们
感到奇怪，但所幸没有受到追问，双方都不用背负多余
的心理负担。

　如果被打伤的话，情况就不同了吧。
　这样一想，就有点担心忠保。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150020b56">
「没什么好想的。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150030b33">
「就算你这么说……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150040b56">
「和之前没什么不同。继续找律。
　和以前一样。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150050b33">
「但是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
　——不会再和那个人一起行动了吧？
　
　即便没说下去，我还是能很容易地明白小夏想说的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150060b56">
「我明明早就知道。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150070b33">
「……」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150080b56">
「警察都是靠不住的。
　明明早就知道……可恶。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
　好后悔。
　即使只有一天，也好后悔相信了那个男人。

　是擅自相信他期待他的自己的错。我这样想。
　即使这样想，怒气也无法消失。但这种想法却让心态
积极了起来。忘掉那个男人。忘掉他，然后和原来一样
只相信自己和同伴的力量，从头再来。

　这样就好了。
　从一开始，就只有这一个办法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150090b56">
「我也稍微试着想过，去和那个叫一条的人
商量看看。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　我瞥探了一眼伫立在门边的小夏的表情。
　她大概，也想过相同的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150100b56">
「可是，已经够了吧……擅自抱有期待，
再擅自失望这种事。
　我们自己来吧。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150110b33">
「……」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150120b56">
「这样就好了吧？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150130b33">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
　她轻轻点头。
　……也就是说，想过相同的事，也得出了相同的结论吗。

　我并不认为这一天就白白浪费了。
　有成果。既找到了显示有武者参与的物证，
又发现了恐怕是相当重要的
武者如何侵入、逃脱的疑问点。

　但已经，没必要再重蹈覆辙了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150140b56">
「去睡吧。今天很累了吧……从各个方面来说。」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150150b33">
「你也是吧。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150160b56">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
　回答着，我打了个哈欠。
　确实好累。身与心，虽然不知道哪方更疲惫，但都好累。

　等门口的气息离开，我就会躺倒在棉被上，一动不动
地一觉睡到天亮吧。
　真想早点这么干。

　然而，门口的气息却迟迟不肯离去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150170b56">
「……怎么了？」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150180b33">
「嗯。那个。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
　她一副欲言又止的样子。
　左看右看，上看下看。

　这只是单纯的行为怪异吗，不然只能是在找什么
躲藏起来的人，总之，行为很怪异。
　这样的小夏，我不太熟悉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150190b56">
「你在干什么啊。」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150200b33">
「我说啊。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150210b56">
「嗯。」

{	FwC("cg/fw/fw小夏_ツンデレ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150220b33">
「你今天……什么忙都没帮上吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//◆ばたん。
	OnSE("se人体_衝撃_転倒01",1000);
	SetVolume("@mbgm*", 0, 1, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
　我躺倒在棉被上。
　别说到天亮，我觉得自己一辈子都动不了了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_沈むb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆表情：るーるーるー。
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150230b56">
「…………」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150240b33">
「啊，那个。我不是那个意思。
　不是那个意思啦。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150250b56">
「……那是什么啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
　如果目的不是想打击我的话，赶紧把话说圆了啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_ツンデレ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150260b33">
「的确今天在我遇险的时候你没派上
半点用处风头全被一条抢了身为男子
汉的股值一降再降已经达到了触底价。」

{	SetComic(@0,@0,8);
	FwC("cg/fw/fw雄飛_沈むb.png");}
//◆表情：るーるーるー。
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150270b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
　你想用言语杀人吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150280b33">
「但是……我明白的。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150290b56">
「……明白什么？」

{	FwC("cg/fw/fw小夏_ツンデレ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150300b33">
「你简直像稻草人一样无用但稻草人
好歹还能用来赶赶麻雀从这个角度不
如说稻草人都比你好点，但是，那个。」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150310b56">
「你很烦人哎!?」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150320b33">
「但、但是啊，<RUBY text="······">你是来救我的</RUBY>，
我明白的。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150330b56">
「……」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150340b33">
「谢谢……
　我想说的只是这个……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150350b56">
「……哦……哦哦。 」

{	FwC("cg/fw/fw小夏_ツンデレ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150360b33">
「那、那么，晚安！
　赶紧睡吧！」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150370b56">
「哦……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱたん。たったったっ。

	OnSE("se日常_建物_スライド閉める01",1000);
	CreateSE("SE11","se人体_足音_走る02");
	MusicStart("SE11",0,1000,0,1000,null,false);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0371]
　我望着关上的房间门。
　就这样发了一会儿呆。


{	SetVolume("SE11", 5000, 0, null);}
　之后左看右看，上看下看，唰唰地搔了搔鼻头。
　并不是要找什么躲藏起来的人，
只是单纯的行为怪异而已。

　然后躺倒在棉被上睡去。
　不知为何，压在身心上的重担都稍微减轻了，
那真是不可思议。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 3000);


}

..//ジャンプ指定
//次ファイル　"ma01_016.nss"



