//<continuation number="780">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_021.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_021.nss","GunFlash",true);

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
	#bg042_江ノ島沿岸_03 = true;
	#bg040_江ノ島全景_03 = true;
	#bg046_江ノ島灯台_03 = true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma04_022.nss";

}

scene ma04_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_020vs.nss"

//◆分岐
//◆一条がいる場合は１７へ
//◆一条が死んでいる場合は１８へ

	//$Ichizyou_Dead=ture;

//――――――――――――――――――――――――――――――
.//●１７

//◆灯台の一条

if(!$Ichizyou_Dead){

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210010a02">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


..//◆小分岐
...//◆両者生存ルートの場合

....//if_Start
if(!$Kanae_Dead){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一条掌握了一下状况。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}else{
....//else_Start

...//◆一条のみ生存ルートの場合

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一条掌握了一下状况。
　既然都已经到海岸了也没办法，至少爬上灯塔掌握一
下形势，不慌不忙地俯瞰变幻莫测的战场情况。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}
....//if_End

..//◆合流

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　银色的武者——银星号——出现，使包围村正的军队
——不知是六波罗还是进驻军——疯狂了。
　那一定就是传说中的精神污染。

　那一部分士兵组成毫无秩序的队伍，向片濑的方向移动。

　一定要阻止他们。再这样下去会酿成巨大的惨剧。

　然而村正——景明并没有离开那个地方。
　只有让其他人去了。

　也就是，自己！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆だっ。
	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Move("@StR*", 300, @-120, @0, Axl2, false);
	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　对于一条来说，决断与行动的起点是在同一坐标上的。
　完全没有犹豫、踌躇这种浪费能源的行为。

{	SetVolume("SE*", 6000, 0, null);}
　如果有需要考虑的事情的话，那只是为了达到目的而
进行的思索。
　
　——该怎么做才好呢。

　不能从到片濑的最短路线穿过去。
　那样恐怕会被卷入“污染”的范围中。

　必须尽可能地通过小岛的外围穿过去。
　这样来得及吗。

　其他的方法呢？<k>
　——没有。关于这一点的思索到此就中断了。

　到达之后该怎么做呢。
　如何阻止全副武装的军队？

　<RUBY text="···">就这样</RUBY>正面冲突以外的方法呢？<k>
　——没有。关于这一点的思索到此就中断了。

　思考结束。
　之后只能随机应变了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆海岸
//◆雪車町
	SetVolume("SE*", 1000, 0, null);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StL(1000, @60, @0,"cg/st/st雪車町_通常_私服.png");
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("@StL*", 300, @-60, @0, DxlAuto, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210020a12">
「……嘿咻……」

{	StR(1000, @60, @0,"cg/st/st一条_通常_制服.png");
	CreateSE("SE01b","se人体_動作_後ずさり01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(300,false);
	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210030a02">
「混蛋。
　……为什么出现在这种地方！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　遇见的，是认识的人。
　但绝不是朋友。

　雪车町一藏。
　身为幕府雇佣野木山组与进驻军两方走狗的小混混。


　为什么在这种地方——
　
　一条在脑中将几个事实直接联系到一起。他的受伤。
落汤鸡的样子。来历。先前的一幕。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210040a02">
「袭击凑斗先生的是你这混蛋吗!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



..//◆小分岐

...//◆一条のみ生存ルートの場合

	SetFwC("cg/fw/fw雪車町_通常.png");

....//if_Start
if($Kanae_Dead == true){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210050a12">
「嘿嘿。真是的……
　看上去是这么一回事吧。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


}else{
....//else_Start

...//◆両者生存ルートの場合

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210060a12">
「这样啊，小姐你也来了啊……
　和那家伙一起……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210070a12">
「嘿、嘿。
　没想到偏偏在这种时候碰到一起，
呢……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


}
//if_End

..//◆合流

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210080a02">
「——可恶。现在就算了。
　给我滚开。我正忙着呢。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210090a12">
「哎呀？
　怎么了……？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210100a02">
「你同伙的军队发疯了，想要闯入
市区。
　所以我要去阻止他们。闪开。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210110a12">
「……嘿、嘿、嘿！
　这还真是不得了啊。哎呀，居然
变成这种事态了吗……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210120a02">
「这是最后的警告。
　滚开啊。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210130a12">
「……如果我说，不要的话。
　小姐你会怎么做？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210140a02">
「我会杀了你。
　雪车町一藏。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210150a12">
「那么……
　小姐，你杀过人吗？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210160a02">
「没有。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210170a12">
「嘿、嘿……！
　那么，你会杀人吗……？」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210180a02">
「<RUBY text="········">把头拧断就会死了</RUBY>。
　……没错吧？」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210190a12">
「…………」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210200a12">
「嘿、嘿、嘿！
　嘻呀嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻!!」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210210a12">
「没错——<RUBY text="··">这样</RUBY>！
　就是要这样才行！」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210220a12">
「你果然是正如我所预想的人……
　绫弥小姐。」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210230a02">
「——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆ざりっ。一歩進む
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,800,null,false);

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210240a12">
「哦……
　可怕、可怕……」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210250a02">
「……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210260a12">
「我不会妨碍你的……
　不过，你打算怎么做？」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210270a12">
「对手是军队……
　这可不是靠你一个人能够阻止的
吧……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210280a02">
「不试试的话，怎么知道。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210290a12">
「就算不去做也是知道的吧？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210300a02">
「我所知道的只有一件事。
　说着这种话，磨蹭着什么都不做的话，
一定救不了任何人。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210310a12">
「…………嘿嘿。」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210320a02">
「如果试试看的话，说不定能救得了。
　所以我要去做。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210330a12">
「小姐。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210340a02">
「再见。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210350a12">
「你想要<RUBY text="··">力量</RUBY>吗？」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210360a02">
「……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210370a12">
「即使对手是军队也能一举击垮的力量……
　你现在，想要吗？」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210380a02">
「你这家伙。
　到底想说什么。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210390a12">
「我也将这座灯塔作为一个营地……
正好，有个东西。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210400a12">
「在这里……
　有一件为了<RUBY text="··">作战</RUBY>而交予我的道具。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210410a02">
「……？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210420a12">
「原本……都是被嘿咻一下扛起来就可
以使用的，但对这家伙做<RUBY text="···">这种事</RUBY>
却行不通。
　它一定要自己选择主人……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210430a12">
「不过……呢。
　小姐的话…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆がさごそ。
	CreateSE("SE01","se日常_衣類_衣擦れ01");//ダミー注意
	MusicStart("SE01",0,1000,0,750,null,false);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210440a02">
「……铠柜？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210450a12">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210460a02">
「你想做什么？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210470a12">
「我这个小混混啊，小姐……
　喜欢像你这样的人……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210480a12">
「只是这样哦……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210490a02">
「我讨厌你这样的人。
　胃酸都要吐出来了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆ぺっ。
	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210500a12">
「嘿嘿……！
　正因如此……」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210510a02">
「你是变态吗？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210520a12">
「该怎么做……？
　我就暂且不论，但<RUBY text="···">这东西</RUBY>似乎
很讨小姐的欢心呢……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210530a12">
「如果有这家伙的话就能战斗……
　无论是军队……还是<RUBY text="········">杀死无罪女孩们的</RUBY>
<RUBY text="······">被诅咒的武者</RUBY>……！」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210540a02">
「……哼。
　我可不信你。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210550a02">
「原本，你的施舍这种东西——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――

//◆キラッ。
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("絵白", 15000, "#FFFFFF");
	Wait(1);
	FadeDelete("絵白", 200, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210560a02">
「哎？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆朧な輝き
	CreateSE("SEL01","se特殊_陰義_発動04");
	MusicStart("SEL01",0,1000,0,800,null,true);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210570a02">
「……什么？
　弥源太爷爷的遗物……」

//◆顔なし
{	SetVolume("SEL01", 3000, 500, null);
	NwC("cg/fw/nwその他.png");}
　
//【正宗】
<voice name="正宗" class="正宗" src="voice/ma04/0210580b40">
　　　　　　《久候多时。》

　
//◆顔なし
//【正宗】
<voice name="正宗" class="正宗" src="voice/ma04/0210590b40">
　　　　　　《吾之主君！
　　　　　　　绫弥一条殿下!!》

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210600a02">
「?!」

//◆顔なし
{	NwC("cg/fw/nwその他.png");}
　
//【正宗】
<voice name="正宗" class="正宗" src="voice/ma04/0210610b40">
　　　　《问汝贵体。
　　　　　此世间是否存有正义——》

//◆顔なし
　
//【正宗】
<voice name="正宗" class="正宗" src="voice/ma04/0210620b40">
　　　　《请回答！
　　　　　<RUBY text="·············">吾等是否能成为此世间之正义</RUBY>!!》

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210630a02">
「什——！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗·天牛虫
//◆裂光。なんか英雄爆誕。
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorEXadd("絵白", 8000, "#FFFFFF");
	Fade("絵白", 2000, 700, null, true);
	WaitKey(300);
	Fade("絵白", 3000, 1000, null, true);
	WaitKey(1000);
	DeleteStA(0,true);
	CreateColorSPadd("絵白２", 8200, "#FFFFFF");
	CreateTextureSP("絵ＳＴ", 8100, Center, Middle, "cg/st/3d正宗天牛虫_正面.png");
	Fade("絵白２", 1250, 0, null, false);
	DrawDelete("絵白２", 1000, 1000, "zoom_01_00_1", true);

	PrintGO("上背景", 25000);

	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);

	OnSE("se戦闘_破壊_爆発02",1000);
	OnSE("se戦闘_動作_空上昇01",1000);

	DrawDelete("上背景", 300, 1000, "slide_02_01_0", true);



	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210640a12">
「嘿、嘿、嘿……！」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210650a12">
「去吧，小姐……
　去维护<RUBY text="··">正义</RUBY>吧!!」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210660a12">
「嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻……
　嘿哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}


..//ジャンプ指定？
//次ファイル　"ma04_022.nss"？　or　●１８？　要奈良原確認
//嶋：●１８に合流で設定



//――――――――――――――――――――――――――――――
.//●１８

//◆片瀬
//◆※江ノ島がぶち当たったという設定なので、江ノ島
//◆画像のアップで代用可？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg040_江ノ島全景_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　片濑海岸——不，应该称之为原海岸吗——正处于混
乱中。
　由于江之岛<RUBY text="····">被炸飞了</RUBY>过来，
所以不可能还赖在温暖的被窝里安睡。

　尽管海啸与地震这种次生灾害的威力较小
（可毕竟是整座都撞了过来）……但这反而
强调了<RUBY text="······">现实的非现实</RUBY>感，不禁让
人们深陷莫名其妙的恐惧之中。


　就连收到急报而出动的警官队，也被迫扯上了关系。
　别说平息混乱了，就连维持自己的统率都是十分艰难
的状况。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210670a11">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　总算是将无头苍蝇一般的部下聚集起来，他，菊池明
尧——镰仓警察署长到达小岛与片濑的交界处时，迎接
他的，却并不是事态得到解决的线索。


　而是新灾难的预兆。
　——沉重且急切的机械声。毫无意义的喊叫声。

　有着战场经验的署长马上就明白了。
　是军队。

　而且是因为某种理由而失去了统率，完全陷入失控状
态的小规模军队。
　杀戮破坏侵犯的饿狼群。

　虽说是小规模，但其战力却足以将片濑一带化为焦土。

　作为前菜，将警官队击溃也不是什么难事吧。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210680a11">
「<RUBY text="···">那家伙</RUBY>吗……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　署长念叨出了她的代名词。
　
　——银星号。

　在景明被派任的江之岛，究竟变成怎样，是如何变成
那样的？他不知道。
　然而看来好像终于有了<RUBY text="··">头绪</RUBY>。

　银星号出现了……
　于是，这使得在小岛的军队陷入疯狂。

　——这次的事件十有八九是ＧＨＱ的陷阱。
　虽然在署长看来确是如此，但他也不能确信银星号一
定不会自己出现这种事。

　这个盲点也在考虑之中。
　然而，无论发生什么，也不过都是岛内之事——计划
是如此。

　认为灾害应该不会殃及市民。
　……想得太简单了。

　江之岛与片濑海岸会邻接起来这种事，是不可能预料
到的——
　然而这种巨变有可能会将形势从根本上推翻，这应该
也是在考虑之中的。

　都是因为听了好几次景明的报告，明明知道银星号的
不寻常，却将其抛诸脑后！
　拳头因悔恨而颤抖。然而为时已晚。

　署长看到了。
　在他身后骚动的部下们也看到了。

　黑压压一片，人与车与肉与铁的旋涡。
　参差不齐地吼叫，四分五裂地奔驰，然而却成为一个
整体闯了进来。

　宛如祝福的战车。
　仿佛踩死人们送往极乐的神辇一般，他们为杀戮而雀
跃狂舞着，向片濑迈进。

　署长命令部下摆出迎击队型。
　虽然明白其效果。

　无论怎么隔靴挠痒，都无法阻止他们。
　恐怕，将死亡人数从一千减少到九百就已经是极限了。

　杯水车薪。
　然而他们仿佛充满液氮一般松懈。

　稳住动摇的部下，镰仓署长忍下羞耻，做好觉悟。

　因自己的无能而杀死一千人的觉悟。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210690a11">
「枪队，准备——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se戦闘_銃器_複数構える01");
	CreateSE("SE01b","se戦闘_銃器_複数構える01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE01b",0,1000,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　然后开始了。
　为了予以那一小部分居民能从今夜活着逃脱的幸福，
不被任何人认可也不为任何人感谢，渺小的战争开始了。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


..//◆一条死亡の場合

...//if_Start

if($Ichizyou_Dead){
	SetFwC("cg/fw/fw署長_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210700a11">
「——射击!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばんばーん。
//◆ぎゃおー。暴走軍隊突撃
//◆ブラックアウト

	CreateSE("SE01a","se戦闘_銃器_機関銃乱射01");
	CreateSE("SE01b","se戦闘_銃器_機関銃乱射01");
	MusicStart("SE01a",0,1000,0,1000,null,true);
	Wait(100);
	MusicStart("SE01b",0,1000,0,800,null,true);

//プロセスの定義
	CreateColorSP("絵フラ", 7950, "#FFFFFF");
	CreateProcess("プロフラ", 7900, 0, 0, "GunFlash");
	SetAlias("プロフラ","プロフラ");

//プロセススタート
	Request("プロフラ", Start);

	WaitKey(1000);
	SetVolume("SE*", 3500, 0, null);
	CreateColorEX("絵暗転", 8000, "#000000");
	Fade("絵暗転", 3000, 1000, null, true);
	WaitPlay("SE01a", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……今夜，片濑的死亡人数为九百二十六名。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Delete("プロ*");
	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_022.nss"

}else{
...//else_Start

..//◆一条生存の場合

	SetFwC("cg/fw/fw署長_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210710a11">
「攻击——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆斬撃斬撃斬撃
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01a","se戦闘_攻撃_刀振る02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 6000, "#FFFFFF");
	CreateColorSP("絵黒", 5900, "#000000");
	CreateTextureSP("絵ＥＦ３", 5900, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureSP("絵ＥＦ２", 5900, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureSP("絵ＥＦ１", 5900, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	Shake("絵ＥＦ１", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("絵白", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵白", 0, 1000, null, true);
	Delete("絵ＥＦ１");
	Shake("絵ＥＦ２", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("絵白", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01c","se戦闘_攻撃_刀振る03");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("絵白", 0, 1000, null, true);
	Delete("絵ＥＦ２");
	Shake("絵ＥＦ３", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("絵白", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01d","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01d",0,1000,0,1250,null,false);
	Fade("絵白", 0, 1000, null, true);
	Delete("絵ＥＦ３");
	Delete("絵黒");
	FadeDelete("絵白", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　数条深蓝色的光束——
　划破了夜幕。

{	OnSE("se戦闘_破壊_建物01",1000);}
　这时，前方突进的几辆车，<RUBY text="··">沉没</RUBY>。
　履带和车轮被斩断。

　堵上化为无用之物的兵器的去路，
后续士兵愤怒的吼叫声响起。
　在那里，也有蓝色的闪光掠过。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆斬撃斬撃
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1100,null,false);
	CreateColorSP("絵白", 6000, "#FFFFFF");
	CreateColorSP("絵黒", 5900, "#000000");
	CreateTextureSP("絵ＥＦ２", 5900, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureSP("絵ＥＦ１", 5900, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Shake("絵ＥＦ１", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("絵白", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01c","se戦闘_攻撃_刀振る03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("絵白", 0, 1000, null, true);
	Delete("絵ＥＦ１");
	Shake("絵ＥＦ２", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("絵白", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01d","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01d",0,1000,0,850,null,false);
	Fade("絵白", 0, 1000, null, true);
	Delete("絵ＥＦ*");
	Delete("絵黒");
	FadeDelete("絵白", 600, false);
	OnSE("se戦闘_破壊_金属",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　士兵所持的枪支被一个个地破坏。
　弹匣、弹带被精确地打穿，失去了穿透人肉的力量。


{	CreateSE("SEL01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL01",2000,800,0,1000,null,true);}
　士兵吼叫着。宣泄着愤怒。
　野兽被拔掉穿透猎物的獠牙的愤怒。

　从战车上跳下来的士兵也跟着他们叫喊。
　然而。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210720a02">
「闭嘴。
　接下来杀了你们。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 8000, Center, InBottom, "cg/bg/resize/bg001_空a_03.jpg");
	Move("絵背景100", 30000, @0, InTop, DxlAuto, false);
	Fade("絵背景100", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　声音从空中落下的瞬间。
　兽群一同静默了。

　丧失了身为人类的理性，一味地沉浸在破坏欲望中的
他们……
　听从了无法理解的命令。

　这是，为什么呢。
　
　——畏惧。

　仿佛吃人的老虎会在圣人面前伏下头一般。
　仿佛独角兽在纯洁少女的膝盖上安眠一般。
　
　神威使毫无智慧的野兽屈服。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210730a11">
「……那——」

{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210740a11">
「……那个、是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm11",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　那种颜色。
　那个形状。

　署长有印象。
　他在八幡宫秘藏的文件中看到过。

　古代的卷轴——
　在其中所描绘的姿态。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210750a11">
「那个是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　——天下第一等。
　哪怕唐国的干将莫邪、
亦或吹毛可断之泰阿也无法与之比拟。

　无疑乃不可动摇之神兵也——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗登場演出開始
	PrintGO("上背景", 25000);
	CreateColorSP("絵白", 5000, "#FFFFFF");
	CreateColorSP("絵黒", 50, "#000000");
	FadeDelete("上背景", 0, true);
	Fade("絵白", 600, 0, null, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210760a02">
　　　　「鬼若现世，灭尽恶鬼。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆テロップ「相州五郎」でかっと。
//あきゅん「SE：要望：文字を出すときの音詳細は自分に」
	CreateSE("SE01","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵相州", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場01-相州.png");
	SetBlur("絵相州", true, 3, 500, 100, false);
	Zoom("絵相州", 0, 10000, 10000, null, true);
	Zoom("絵相州", 300, 1000, 1000, null, false);
	Move("絵相州", 300, @280, @0, nulll, true);

	Wait(300);

	CreateSE("SE01b","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵五郎", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場01-五郎.png");
	SetBlur("絵五郎", true, 3, 500, 100, false);
	Zoom("絵五郎", 0, 10000, 10000, null, true);
	Zoom("絵五郎", 300, 1000, 1000, null, false);
	Move("絵五郎", 300, @-280, @0, null, true);

	WaitKey(1000);

	CreatePlainSP("絵字相州五郎", 200);
	Wait(1);
	Delete("絵相州");
	Delete("絵五郎");
	FadeDelete("絵字相州五郎", 1000, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210770a02">
　　　　「恶若现世，断绝邪恶。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆「装甲大義」「FullMetalProvidence」
	CreateSE("SE02","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵字装", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場02-装.png");
	SetBlur("絵字装", true, 3, 500, 100, false);
	Zoom("絵字装", 0, 2300, 2300, null, true);
	Zoom("絵字装", 200, 1000, 1000, null, false);
	Move("絵字装", 200, @327, -1, null, true);

	Wait(50);

	CreateSE("SE02b","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateTextureSP("絵字甲", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場02-甲.png");
	SetBlur("絵字甲", true, 3, 500, 100, false);
	Zoom("絵字甲", 0, 2300, 2300, null, true);
	Zoom("絵字甲", 200, 1000, 1000, null, false);
	Move("絵字甲", 200, @324, @150, null, true);

	Wait(50);

	CreateSE("SE02c","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSP("絵字大", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場02-大.png");
	SetBlur("絵字大", true, 3, 500, 100, false);
	Zoom("絵字大", 0, 2300, 2300, null, true);
	Zoom("絵字大", 200, 1000, 1000, null, false);
	Move("絵字大", 200, @-286, -2, null, true);

	Wait(50);

	CreateSE("SE02d","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE02d",0,1000,0,1000,null,false);
	CreateTextureSP("絵字義", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場02-義.png");
	SetBlur("絵字義", true, 3, 500, 100, false);
	Zoom("絵字義", 0, 2300, 2300, null, true);
	Zoom("絵字義", 200, 1000, 1000, null, false);
	Move("絵字義", 200, @-285, @140, null, true);

	WaitKey(300);

	CreatePlainSP("絵装甲大義", 110);
	Delete("絵字*");

	CreateWindow("絵窓右", 120, 512, 0, 512, 576, false);
	SetAlias("絵窓右","絵窓右");
	CreateTextureEX("絵窓右/絵字ＦＰ", 120, Center, Middle, "cg/sys/Telop/tp_正宗登場02-ALL.png");

	CreateWindow("絵窓左", 120, 0, 0, 512, 576, false);
	SetAlias("絵窓左","絵窓左");
	CreateTextureEX("絵窓左/絵字ＦＰ", 120, Center, Middle, "cg/sys/Telop/tp_正宗登場02-ALL.png");

	Wait(1);

	Fade("絵窓右/絵字ＦＰ", 0, 1000, null, true);
	DrawTransition("絵窓右/絵字ＦＰ", 2000, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	Wait(200);

	Fade("絵窓左/絵字ＦＰ", 0, 1000, null, true);
	DrawTransition("絵窓左/絵字ＦＰ", 2000, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	WaitKey(1000);

	CreatePlainSP("絵板写", 10000);
	Delete("絵窓*");
	Delete("絵装甲大義");
	FadeDelete("絵板写", 1000, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210780a02">
　　　　「剑胄之理，正在于此。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆「正宗」
//◆ここで全身像と。バビーン。
//あきゅん「演出：未完成」
	CreateSE("SE03","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSP("絵字正宗", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場03-正宗.png");
	SetBlur("絵字正宗", true, 3, 500, 100, false);
	Zoom("絵字正宗", 0, 5000, 5000, null, true);
	Rotate("絵字正宗", 200, @0, @0, @1440, null,false);
	Zoom("絵字正宗", 200, 1000, 1000, null, true);
	Wait(100);

	StC(100, @0,@0,"cg/st/3d正宗_立ち_抜刀.png");
	FadeStC(300,false);
	CreateTextureSP("絵字正宗下", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場03-正宗.png");
	Zoom("絵字正宗", 300, 1200, 1200, DxlAuto, false);
	FadeDelete("絵字正宗", 400, true);
	Move("絵字正宗下", 500, @+200, @0, null, true);
	$残時間=RemainTime("SE03");
	WaitKey($残時間);

//◆剣撃一閃。ずがどーん。
	PrintGO("上背景", 25000);
	CreateColorSPadd("絵白", 5000, "#FFFFFF");
	CreateColorSP("絵黒", 100, "#000000");
	Delete("上背景");
	FadeDelete("絵白", 200, true);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SL_down(@0, @0,8000);
	SL_downfade2(10);

	Wait(200);

	CreateSE("SE02","se戦闘_衝撃_衝突01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(300);

	OnBG(100,"bg040_江ノ島全景_03.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵震", 200, Center, Middle, "cg/bg/bg040_江ノ島全景_03.jpg");
	Shake("絵震", 6000, 0, 10, 0, 0, 1000, DxlAuto, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　……那如同深水炸弹般一闪。
　将江之岛与片濑再度斩离。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}
...//if_end

}

..//ジャンプ指定
//次ファイル　"ma04_022.nss"



.//プロセス用======================================================

..//ガンフラッシュ
function GunFlash()
{
	while(1)
	{
	Fade("@絵フラ", 0, 750, null, true);
	Wait(60);
	Fade("@絵フラ", 0, 0, null, true);
	Wait(10);
	Fade("@絵フラ", 0, 750, null, true);
	Wait(60);
	Fade("@絵フラ", 0, 0, null, true);
	Wait(10);
	Fade("@絵フラ", 0, 750, null, true);
	Wait(60);
	Fade("@絵フラ", 0, 0, null, true);
	Wait(10);
	Fade("@絵フラ", 0, 750, null, true);
	Wait(60);
	Fade("@絵フラ", 0, 0, null, true);

	$GunTime = Random(5) + 1;
	$GunTime2 = $GunTime * 20;
	Wait(200);
	Wait($GunTime2);

	}
}