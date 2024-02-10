//<continuation number="1640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_017.nss_MAIN
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
	#bg025_山脈と森a_01=true;
	#bg004_鄙びた村a_01=true;
	#bg021_村長応接間_01=true;
	#bg002_空a_01=true;

	#ev943_村正ＶＳ月山=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_018.nss";

}

scene ma02_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_016.nss"

//◆お山と森（山は外すか）
	PrintBG("上背景", 30000);
	OnBG(100,"bg025_山脈と森a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　从位于半山腰的虾夷家的房子往外望，是一片树海。

　特别是在肉眼看来，没有能吸引注意的东西。满眼草
木之绿，确实如海洋一般。
　
　但是，

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0170010a01">
《或许……不太妙。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170020a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0170030a01">
《有种“卵”的危险度在提高的……不好的
感觉。
　或许临近孵化了……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　村正的声音比平时稍显僵硬。
　是因为今早称它为道具这件事的影响吗。

　那样的话，那样就好了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170040a00">
「在今天之内吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0170050a01">
《……也没有那么紧迫。
　不过说不定……会在明天……》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170060a00">
「……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不由得呻吟出声。
  虽然本就不认为事态会有所转机，但或许
状况会比预料中要严峻得多。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0170070a01">
《我去稍微看下情况。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170080a00">
「好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　无声地，村正朝森林而去。
　我一边目送着它融入阴影的身姿，一边盘算。

　单纯的搜索是没有价值的。
　已经和昨日的情况不同了。敌人不可能一直停留在
相同的地方。

　这片森林过于宽广，漫无目标的搜索毫无效率。

　还是必须想点策略。
　将在这片树海某处潜伏着的敌人，赶出来的方
法……

　并不容易。
　不管怎么说敌人现在的目的是拖延时间。这一点应
该是确定的。除了动用雪车町一藏在ＧＨＱ活动，除
掉香奈枝，已无其他生路可走了。

　大鸟巡查官在村中的期间地方官们不能出手。加
害于她的话就会失去ＧＨＱ这条生命线。
　但是只要她不在了，之后就可以为所欲为。

　对于村子的人来说，巡查官到来期间若不能除掉地
方官就无未来可言。一旦她离开，地方官恢复其势力，
反抗也就变得困难。即使一时反抗成功，那也会变成
村子反抗幕府的武装起义。

　也就是灭亡。
　但是如今的话，大鸟巡查官将承担除去地方官的全
部责任。对于村子来说只有现在才是胜机。
　虽然对我来说事情又有不同，但结论是一样的。

　对于我方来说如今才是胜机。
　对于地方官来说如今是雌伏之时。
　
　……这个<RUBY text="ｒｕｌｅ">道理</RUBY>，敌人完全理解了吧。

　那该怎样引出他们呢……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170090b55">
「……御堂。」


{	SoundPlay("@mbgm26",0,1000,true);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170100a00">
「这不是弥源太老先生吗。
　辛苦了。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170110b55">
「御堂也辛苦了。
　您在观察情况吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170120a00">
「是。
　我担心会有炊烟升起。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170130b55">
「呵呵，不会那么顺利的。
　而且即使看到了炊烟，妻女山也已经人去
楼空……他们啊，也是聪明的。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170140a00">
「的确。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170150b55">
「剑胄在家中吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170160a00">
「不。
　和您老错过了，去森林里观察状况了。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170170b55">
「……是吗。
　我想问点与此无关的事情，御堂。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170180a00">
「好的。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170190b55">
「您与那剑胄结缘很久了吧。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170200a00">
「并没那么久。
　是距今两年前的事。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170210b55">
「……哦哦。仅仅两年？
　那么战斗的经验也相应地……？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170220a00">
「这不好说。
　因为那两年并非平安无事度过的。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170230b55">
「装甲战斗回数是多少呢？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170240a00">
「一十九回。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170250b55">
「…………您是老手了啊。
　想必那一定是动荡不安的两年吧。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170260a00">
「是啊……
　光阴如箭啊。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170270b55">
「但是，虽然装甲次数繁多
……御堂，您似乎不怎么信赖
剑胄啊？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170280a00">
「……？　怎么说？
　我不明白您这番话的主题。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170290b55">
「根据昨天的话，您被拥护那地方官的忍者，
与另外一骑伏兵偷袭而落败……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170300a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　昨天夜里，我说明了坠落的大致始末。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170310b55">
「仅听了只言片语却对您指手画脚实在是冒昧。
　不过，御堂失败的原因，应该是与剑胄之间
有分歧吧？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170320a00">
「……分歧？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170330b55">
「昨天我观察您与那赤色的剑胄，
总觉得……嗯。
　感觉你们有哪里没有配合好。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170340a00">
「……是吗。
　或许是这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　今天早上，想法的分歧才刚刚明晰。
　弥源太老人可真是慧眼啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170350a00">
「但是您不必担心。
　这我确实心中有数，已经在解决了。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170360b55">
「您是说？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170370a00">
「我跟它说明白了，让它不要抱持多余的想法，
以免使刀刃钝化。
　叫它要有身为道具的自觉。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170380b55">
「…………
　这样是不行的吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170390a00">
「不行吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170400b55">
「剑胄是道具……这是事实。
　但也不能忘记它是拥有<RUBY text="心">灵魂</RUBY>的
道具啊？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170410a00">
「这没有关系。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170420b55">
「……御堂。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170430a00">
「不管有没有心，道具就是道具。
　操纵者操纵道具，为操纵的后果负责。考虑、
决定如何操纵并实施，还有接受所得到的结果。
这些全是操纵者的职责。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170440a00">
「道具，只需被使用。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170450b55">
「…………
　无论如何，您都……执意如此吗。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170460a00">
「是的。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170470b55">
「……
　我明白了。我不会再说了。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170480a00">
「感谢您给我忠告。
　请您原谅我失礼的回答。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170490b55">
「不，我老头子才是僭越了。
　请别把啰啰嗦嗦的老头子的牢骚放在心上。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170500a00">
「哪里哪里。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170510b55">
「我们接着说点更有意义的话吧。
　御堂，您想到什么对付地方官一伙的
好办法了吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170520a00">
「基本没有。
　能称为好主意的想法一个都没想出来。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170530b55">
「是吗……
　那么，您要听一下我的一个想法吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170540a00">
「好的。请说。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170550b55">
「唔。那我就简要地说。
　依我所想，有一个诱饵可钓他们
上钩————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 1000, 1000, null, true);

	WaitPlay("@mbgm*", null);
	WaitKey(500);

//◆村
//◆村長宅

	CreateTextureSP("絵背景100", 110, Center, Middle, "cg/bg/bg004_鄙びた村a_01.jpg");

	FadeDelete("絵暗転", 1000, true);

	WaitKey(500);

	OnBG(100,"bg021_村長応接間_01.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se日常_建物_スライド開く01");
	MusicStart("SE01",0,1000,0,750,null,false);
	DrawDelete("絵背景100", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0129]
　在村长的指引下拜访香奈枝的房间时，好像对方
正好很是繁忙，嘈杂的声音敲打着耳朵。
　看来真是选错了拜访的时机。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm23",0,1000,true);

	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170560a04">
「这不是凑斗大人嘛。
　欢迎欢迎。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170570a00">
「你们好像很忙的样子。
　我还是下次再来比较好吧？」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170580a04">
「没有那回事。
　来来，快请进。我马上泡茶来。
可以的话村长大人也请一起。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170590a00">
「请不用客气。
　那么，失礼了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　于对方所示坐席坐下。
　接着环视四周，马上就明白了混乱的原因。

　香奈枝正手持某种器具，面对着如大箱子一般的
物体。如同撕报纸般的持续性声响便是从该物体上
发出来的。
　是无线电机。

　然后，仔细听听那嘈杂声的话——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170600a04">
「凑斗大人，您精通英语吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170610a00">
「和普通人相比稍微好点的程度吧。
　因为我的出生地是<RUBY text="尼德兰">鸣泷市国</RUBY>，稍微懂一些。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170620a04">
「……哎呀！
　那可真是……意外啊。我一直以为您
一定是纯粹的大和人。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170630a00">
「我只有四分之一的<RUBY text="Ｎｅｏ·Ｂｒｉｔｔｅｎ">新大陆</RUBY>血统……
而且在出生地仅生活过几年。
　被当成纯粹的大和人也是理所当然的。」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170640a00">
「这对话我大体上也没怎么听懂呢。
太过流利……充其量只能听出只言
片语。」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170650a04">
「原来如此。
　那么恕纱代冒昧，我来为您翻译。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170660a00">
「哈……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆以降、ボイスは全てさよ
//◆英会話らしくテキストボックスを横書きに？

	SoundPlay("@mbgm34",0,1000,true);

	SetFwH("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170670a04">
「……正确地报告情况，大鸟中尉。
　阁下的行动有如无地王约翰的事迹那般
意味不明。我无论如何也难以理解。我要
你给我一个合理的解释。」

{	FwH("cg/fw/fwさよ_回顧.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170680a04">
「哎呀，到底怎么回事呢。我明明打算采取
像狮心王的战斗一样简单明了的行动呢。
　解释的话一句话就行了哦？」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170690a04">
「说来听听。」


{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170700a04">
「因为有邪恶的地方官所以我将其惩办了。」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170710a04">
「我听不懂<RUBY text="Ｊａｐａｎｅｓｅ　ｊｏｋｅ">大和式的笑话</RUBY>。」


{	FwH("cg/fw/fwさよ_通常a.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170720a04">
「哎呀。那样可不行，科布登中佐！
　既然是民政局的重要人物，连当地
的风俗都不知其详——我虽不才，
不过还是让我来教教您吧。」


//あきゅん「演出：Ｓｉｒ　Ｃｏｏｌ！の全角スペースはあるとバグっちゃう」
{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170730a04">
「邻家围了圈<RUBY text="Ｓｉｒ　Ｃｏｏｌ">栅栏</RUBY>呢。
　<RUBY text="Ｈｅｙ，">嘿，</RUBY><RUBY text="Ｓｉｒ　Ｃｏｏｌ！">真　棒！</RUBY>
　……好了，首先请理解这句话的趣味所在。」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170740a04">
「…………感谢您的好意，看来我终其一生
也无法理解。我放弃。
　然后呢？　我要这样没完没了地，继续将
有限的工作时间浪费在阁下一个人身上吗？」


{	FwH("cg/fw/fwさよ_照れ.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170750a04">
「哎呀，我浪费了您的时间啊。
　很抱歉在百忙之中占用中佐您的时间。
就此结束吧。那么就这样，再见——」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170760a04">
「先给我报告完！」


{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170770a04">
「邪恶的地方官……」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170780a04">
「别再说这个了！
　重新开始，简明易懂地说明！」


{	FwH("cg/fw/fwさよ_通常a.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170790a04">
「很久很久以前在某个地方，有一位老爷爷
和老奶奶。
　老爷爷去山里割草，老奶奶去河边洗衣
服……」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170800a04">
「这是什么！」


{	FwH("cg/fw/fwさよ_通常a.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170810a04">
「为了让听者不会腻烦，我打算将这次的事件
重新加工改编为故事形式讲给您听啊。
　接着，将有桃子里蹦出武者的意想不到的剧
情展开哦。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//――――――――――――――――――――――――

	SetFwH("cg/fw/fwさよ_老兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0166a]
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170820a04">
「……<RUBY text="ＯＫ，ＯＫ．Ｎｏ　ｔｈａｎｋ　ｙｏｕ．">知道了，知道了。行了。</RUBY>
　既然阁下并无作出恰当报告的能力的话，
那就没办法了。我只能单靠手中所掌握的情报作
出判断。」


{	FwH("cg/fw/fwさよ_通常a.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170830a04">
「一开始就这么做不就好了嘛。
　<RUBY text="ｇｅｎｔｒｙ">英国骑士</RUBY>真的是很棒的人。为我
耗费了那么多<RUBY text="·····">没用的功夫</RUBY>。」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170840a04">
「啊啊……我不会厌恶有身体或智能缺陷的人。
不如说我会保护他们。
　这是<RUBY text="ｎｏｂｌｅｓｓｅ　ｏｂｌｉｇｅ">贵族义务</RUBY>的一部分。阁下应该感谢我。」


{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170850a04">
「我发自内心地感谢您！
　我要感谢在身体或智力上比我优秀的人。话
说回来中佐，您那把因承受不住您的体重而坏
掉的椅子，已经修好了吗？」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170860a04">
「……因制作粗糙而坏掉的椅子的话，修好了。
我现在正舒服地坐着它。阁下不必担心。
　比起这个我们来谈谈阁下的事吧。」


{	FwH("cg/fw/fwさよ_照れ.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170870a04">
「哎呀，您的话真是响彻心田。
　您有为我在半岛订一个房间吗？」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170880a04">
「真不凑巧没有照顾周到啊。
　不如在禁闭室将就一下？」


{	FwH("cg/fw/fwさよ_照れ.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170890a04">
「如果是中佐亲自邀请的话就行。
　但是我很困扰。所谓禁闭室可是在军务上
没有犯错的人无法进入的桃源乡。」


{	FwH("cg/fw/fwさよ_通常b.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170900a04">
「只是完成了巡查官任务的我
有那个资格吗？」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170910a04">
「难道你并不是没有理解ＧＨＱ的方针吗？
　不干涉六波罗幕府的政治。阁下的行动
明确违背了这一方针。」


{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170920a04">
「要说方针，我当然是好好理解了的。
　<RUBY text="··········">为确保大和国民的安全</RUBY>，<RUBY text="····">信赖幕府</RUBY>
<RUBY text="·······">并将一切交予它</RUBY>。
　就是这样的方针吧？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0167a]
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170930a04">
「…………」


{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//嶋：修正（いるの）【090930】
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170940a04">
「我自然对该方针毫无异议。
　幕府也是人类组织。虽然也会<RUBY text="··">偶尔</RUBY>
犯错误，但我们正是为此而进行监督的！」


{	FwH("cg/fw/fwさよ_涙.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170950a04">
「巡查官这一制度便是如此。
　实际巡视幕府统治情况，若有错误便将其
纠正。这不是很棒吗！
　我以这项任务而骄傲。」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170960a04">
「……呃……」


{	FwH("cg/fw/fwさよ_通常a.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170970a04">
「中佐？　您怎么了？
　我说的话有哪里不对的吗？」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170980a04">
「……看来再进行沟通也是白费力气。
　大鸟中尉。我命令你中止巡查任务。」


{	FwH("cg/fw/fwさよ_回顧.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170990a04">
「哎呀呀？
　这到底，是因为什么呢？」

{	FwH("cg/fw/fwさよ_老兵.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171000a04">
「我没有义务向你说明。
　这是命令，大鸟中尉。比起这个你立刻到
司令部――」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0168a]
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171010a04">
「哎呀？　喂喂？　喂～喂～
　怎么了呢，通信状况突然变得
这么糟糕。我完全听不到中佐的
话了。」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171020a04">
「中尉！」


{	FwH("cg/fw/fwさよ_回顧.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171030a04">
「哎呀哎呀不得了了怎么办？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,0);//―――――――――――――――――――――――――――――

//◆ズキューン。銃声
	OnSE("se戦闘_銃器_跳弾01",1000);
	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("絵色白", 10000, "#FFFFFF");
	Wait(200);
	FadeDelete("絵色白", 200, true);

	Wait(1000);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0178]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171040a00">
「…………」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171050e160">
「…………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171060a03">
「纱代，不得了了。好像无线电坏掉了。
　这样就接不到司令部的指示了。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171070a04">
「真是糟糕的突发事故啊。
　但是没有办法。作为现在非常状况下的措施，
请大小姐根据自己的判断来决定行动。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171080a03">
「除此之外别无他法了吗？
　啊啊，真头疼。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　打开窗户，任硝烟从枪口缭绕而出，
大鸟中尉用悲痛的声音感叹道。
　在她身后，被打出了一个大窟窿的无线电机
冒着火花。

　……………………
　乱七八糟啊。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStR(300,true);

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171090a03">
「哎呀，景明大人。
　欢迎。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171100a00">
「……打扰了。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171110a03">
「既然您都听到了，那就好办了。
　情况就是这样，今后我就要在自己的判断下
行动了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171120a00">
「具体是？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171130a03">
「巡查官原则上必须确保与司令部联络的手段。
　首先是尝试修复无线电，如果修不了的话就
不得不回基地了。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171140a03">
「今天就花费一天时间来修理无线电吧。
　然后明天，花费一天时间——女人不管做什
么事都需要时间做准备，而且在路上也有可能
会迷路——返回本部。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171150a03">
「接到我的报告，下一任的巡查官将在第二天
早晨出发。中午过后就会到达村子并宣布取消
我所采取的措施。
　……如果中佐是个慢性子，那么就是这样。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171160a03">
「如果中佐迅速采取行动的话……在民政局内
将我免职，任命代理官员并将其派出……这样
要一天。
　我的后任有可能在明天晚上到达。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171170a00">
「……也就是说。
　剩余的时间最多只到后天白天。最少
只到明天夜里，是这样吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171180a00">
「必须在那之前打倒地方官。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171190a03">
「就是这样。」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171200e160">
「那……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171210a04">
「嗯嗯。
　事情变得复杂起来了呢。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171220a03">
「是啊……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171230a00">
「……我明白了。
　那样的话，我也长话短说了。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171240a04">
「您要说什么？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171250a00">
「刚才，弥源太老人为我出了个好主意。
　中尉阁下、村长大人，我因为想请求二位的
帮助，所以前来拜访。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171260a03">
「哎呀，是这样啊。
　不用说，我定全力相助。我该做些什么呢？」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171270e160">
「我也不用说……
　只要您能救这个村子……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171280a00">
「是的。
　那么我来说明……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆空
	CreateTextureEX("絵背景100", 5000, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	DeleteStA(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0199]
　———————————————————————
————————————————————————
————————————————————————
————————————————————————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitPlay("@mbgm*", null);

//◆村長宅
	FadeDelete("絵背景100", 1000, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171290a03">
「回填坑道……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171300a00">
「是的。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171310a04">
「但是，即使填埋坑道……」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171320e160">
「如果那地方官取回实权的话，不是还能再
挖开吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　有此疑问很正常。
　我自己也说了。

　我是在转达弥源太老人的主意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171330a00">
「那地方官为何不委托专业工人进行
作业呢？」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171340e160">
「哈？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171350a00">
「专业工人的挖掘应该会更快更正确才对……
尽管如此，他却选择了作为地方官来村子赴任，
并征用村人为他挖掘这一麻烦的办法。」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171360e160">
「那是……
　因为找专业工人的话费用会更多吧？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171370a03">
「……啊。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171380a00">
「恐怕，就是那样。
　总之也就是说，事实就是如此——那
地方官的资金并没有那么充裕。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171390a00">
「从那官员在村子里的行动来看，没有
巨大财力支援的痕迹。
　他的资金多半是反复强迫借款而筹措到
的吧？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171400a04">
「……原来如此！
　我明白了。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171410a00">
「挖掘作业的进展状况已接近预定工程
的尾声。在这时候填埋坑道的话会怎样
呢？
　作业只能重新开始。」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171420a00">
「当然，所花费用也会是预算的几倍。即使
劳动力成本几乎为零，那也会是相当大的数额。
　再加之与ＧＨＱ之间的关系也必须定期投入
资金去打点。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171430a03">
「……这么多资金，那地方官他们一定
筹措不来……
　是这样吧？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171440a00">
「是的。
　这样的话——如果我们开始填埋坑道的
作业。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171450a04">
「地方官大人就不得不为了阻止作业而现身。
　……真是妙计啊，凑斗大人！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171460a00">
「这都是弥源太老人想出来的。
　我只是替他传达而已。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171470a04">
「不，可是……
　大小姐是如何考虑的呢？　纱代认为这
总归是个良策。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171480a03">
「我也赞成。
　一定要向弥源太大人道谢才行。」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171490e160">
「确实……
　那么，我们能帮上什么忙吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171500a00">
「自然是请村长大人向村子里的人们下达行动
指示。请选择健壮的男性去进行填埋作业。
　没有时间了。请立即安排。」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171510e160">
「是、是！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171520a00">
「地方官他们出现的话，不要犹豫赶快逃。
　请向作业人员彻底传达。」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171530a00">
「面对敌袭一定要随机应变，切记千万
不要对抗停留。」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171540e160">
「我知道了。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171550a03">
「那我干什么呢？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171560a00">
「您携带有火炮、炸弹之类的吧？
　没有的话用枪也没关系。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171570a03">
「要怎样使用呢？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171580a00">
「光是在地道里人手作业填埋坑道，是不能
让那地方官焦急的。潜伏中的地方官也可能
会注意不到。
　所以要使用火器。」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171590a00">
「通过爆炸声吸引地方官的注意力，通知他们
我们将要对坑道实施爆破作业。
　即使实际实施有困难，至少也要让那地方官
有所忌惮，尽可能弄出夸张的动静。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171600a03">
「原来如此。原来如此。
　我理解了。交给我吧。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171610a00">
「拜托您了。」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171620e160">
「……这样一来……
　这样终于……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171630a04">
「是的，村长大人。
　这样就——」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171640a00">
（这样一来……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　……剩下的问题，<RUBY text="······">就只有一个了</RUBY>。
　
　恐怕在场的人中，只有我一人在心中小声嘀咕
另外的事。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
//◆風魔小太郎＋月山

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 2000, 1000, null, true);

	CreateTextureEX("絵演", 15100, Center, Middle, "cg/ev/ev943_村正ＶＳ月山.jpg");
	Fade("絵演", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　最后的问题。
　——怎样才能打败它？


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma02_018.nss"