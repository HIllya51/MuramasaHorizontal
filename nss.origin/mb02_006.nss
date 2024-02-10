//<continuation number="320">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_006.nss_MAIN
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
	#bg033_普陀楽城宿舎_03b=true;
	#bg001_空c_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_007.nss";

}

scene mb02_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_005.nss"


//◆夜
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_普陀楽城宿舎_03b.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　深夜。
　感觉到逐渐接近的气息，离开床来到窗边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060010a00">
「……村正吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060020a01">
《是。》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060030a00">
「看来没被捉到啊。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060040a01">
《不过警备森严。
　……我还期待着夜间警备会
稍有松懈呢。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060050a00">
「没什么区别。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060060a01">
《倒不如说更严密了。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　所以我才尽量减少外出。
　夜间调查行动与白天不同，仅是遭到盘问便会引人起疑、
酿成无可挽回的后果。毫无益处。

　钻过连擅于隐形的村正都觉棘手的监视网，并且还要
搜集情报，对于我一介冒牌警官来说真是难以胜任。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060070a00">
「那么……结果如何？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060080a01">
《目前还没反应。
　不过，我还没把所有的地方
都看一遍。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060090a01">
《实在无法接近主堡周围。
　那感觉怎么说呢……不单表面布有警备阵。
暗里似乎还设有什么结界。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060100a00">
「是吗……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我来到普陀乐的目的有二。

　一是亲王的命令。
　二是青江的遗言。

　
　　　　　　　　　《白银之星》


　
　　　　　　　　　《她在》


　
　　　　　　　　　《六波罗的》


　六波罗的——之后到底想说什么。
　无从知晓。死人不会开口说话。

　但如果银星号和六波罗有关连，首先应调查
的就是这座普陀乐山寨。
　既是幕府首脑，又是其心脏。

　从这个意义来说，亲王的委托也算是渡河恰逢顺水船。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060110a01">
《主君这边呢？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060120a00">
「没什么特别之处。
　又没法和你一样，追寻到她的气息。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060130a01">
《是吗？
　因为忙于照顾那位姑娘而顾不上这头，
才是事实的真相吧？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　虽然并没有明确指出，不过根本无需考虑便能明白
她口中的那位姑娘是谁。
　……隐约觉得村正无声的言语中带着刺。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060140a00">
「回想今天一天的所作所为，我很难否定。
　但此行的目的我并未忘记。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060150a01">
《……那就好。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060160a00">
「不满吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060170a01">
《什么？
　那姑娘？　还是你现在做的事情？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060180a00">
「两方面。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060190a01">
《倒也没有……
　随你的便吧。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060200a01">
《不管是帮助那个姑娘、还是成为争权夺利
的道具。既然你决心已定，我也无话可说。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060210a00">
「那你还有什么不满意的？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060220a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　没有回答。

　气息渐远。
　虽然明白那只是物理性质的拉开距离而已。但还是
不得不认为，村正故意向我展现她的隔阂之意。

　自从那天我决定依从一条之时起一直都是这样。
　村正疏远了我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060230a01">
《主君。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060240a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060250a01">
《要小心正宗。
　他并未原谅你。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060260a00">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我知道。
　现在——此时此刻。仍能感觉到那钢铁凝视着
我的冰冷视线。

　对我……
　对邪恶的杀意，仍未消失。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060270a01">
《那姑娘也是。》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060280a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　剑冑的气息全然消失。
　大概是再次开始搜索了吧。

　将目光转回屋内。
　一条在离我的床约一匹马距离之处，规规矩矩地
裹在被子里睡着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060290a00">
「一条。」


{	NwC("cg/fw/nw一条.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0060300a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　没有回应我的呼唤声。

　但我知道她醒着。
　<RUBY text="·········">呼吸声表示她没睡着</RUBY>。她听到了我的声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060310a00">
「为何没杀了我？」


{	NwC("cg/fw/nw一条.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0060320a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se自然_森_山の雰囲気01_L");
	MusicStart("SE01",1000,1000,0,750,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　没有回音。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(1500,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
　月悬高空含笑，风吹草木轻摇。
　一个冰冷彻骨的夜晚。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("@OnBG*", null);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	Wait(2000);
//	WaitKey(2000);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_007.nss"