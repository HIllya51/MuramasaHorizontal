//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_003.nss_MAIN
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
	#bg066_普陀楽城内のどか_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//	#光探索終了 = true;

	if(#光探索終了){
			$SelectGameName="@->"+$GameName+"_SELECT";
			call_scene $SelectGameName;
	}else{
		$GameName = "md05_004start01.nss";
	}


}

scene md05_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_002.nss"


//◆ＢＧＭ
//◆村正
//◆銀色発光
//◆→蜘蛛村正


	PrintBG("上背景", 30000);

	OnBG(100, "bg066_普陀楽城内のどか_02.jpg");
	FadeBG(0, true);

	Delete("上背景");


	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,true);


	OnSE("se特殊_鎧_駆動音02", 1000);

	Move("@StR*", 600, @0, @30, Dxl1, true);
	WaitKey(200);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	OnSE("se特殊_鎧_装着03",1000);

	StR(1000, @0, @250, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);


	Fade("フラッシュ白",1000,0,null,true);


	SoundPlay("@mbgm04", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　很明显是发生了异常。
　听到苦闷的声音正担心地回过头时，村正屈起身体，
恢复为蜘蛛形态——

　被逼至走投无路，仿佛<RUBY text="····">紧急回避</RUBY>的状态。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030010a00">
「发生什么事了！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030020a01">
《这——这个……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030030a01">
《……呜……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀色発光
	OnSE("se特殊_雰囲気_発光03", 1000);

	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureEXadd("絵背景100", 100, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("絵背景100", 0, @0, @180, @180, null,true);
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	Move("絵背景100", 1000, @150, @0, Dxl1, false);
	Rotate("絵背景100", 1000, @0, @0, @30, Dxl1,false);
	Zoom("絵背景100", 1000, 2000, 2000, Dxl2, false);

	FadeDelete("絵背景100", 1000, false);
	Fade("フラッシュ白",1000,0,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　村正从内侧发出喷涌般的光芒。
　这道——白银的光辉，怎么看都不是以本人的
意志发出的。

　白银的……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030040a01">
《这、这是……
　<RUBY text="母亲">银星号</RUBY>的力量。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030050a01">
《……太过强大了……！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030060a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　每次打倒寄生体取回野太刀的碎片，村正也一点点地
获得附带于碎片上的银星号的能力。
　将碎片全部收集全后——却会导致某种异变？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030070a01">
《……这，种事……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀色発光
	OnSE("se特殊_雰囲気_卵発光01", 1000);

	Fade("フラッシュ白",0,1000,null,true);
	DeleteStR(0,true);

	Fade("フラッシュ白",1000,0,null,true);

	CreateProcess("プロセス１", 12000, 0, 0, "Lastfire");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１",Start);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　村正的红色装甲……
　变色了。

　一点一点，变为白银。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030080a00">
「难道说——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]变成与植入“卵”相同的状态了吗!?

　村正……变成了银星号的复制体……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030090a01">
《我太天真了……！
　竟没想到有这种陷阱……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030100a01">
《我并没有被“卵”侵蚀……
　但是<RUBY text="·····">在体内完成</RUBY>的东西……我无能为力……！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030110a00">
「村正……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　对了——村正所获取的银星号的力量，同时也是“卵”
的碎片！
　而这些碎片如今已完成，正要孵化……

　虽不知道是故意设下的陷阱还是偶然所为。
　……世上没有免费的午餐，本应该有所警戒的！

　这不是村正一人的疏忽。
　我自己也完全没有考虑过这种可能性。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030120a00">
「无法排除吗!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030130a01">
《咕……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀色発光
	OnSE("se特殊_雰囲気_卵発光01", 1000);

	Fade("フラッシュ白",0,1000,null,true);

	Fade("フラッシュ白",1000,0,null,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030140a01">
《正在努力……不过……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　无法像预计的一样顺利吧。
　<RUBY text="···">靠自己</RUBY>将内脏疾患的病灶切除，与至难之事无异。

　不借助他人的力量是办不到的。
　可是，在这里唯一的别人，即我自己并不懂得能帮上
忙的专门技术。

　尽管如此——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030150a01">
《不行！
　别接近我，主君！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030160a01">
《会连你也被污染的！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030170a00">
「……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　只会成为妨碍吗！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀色発光
	OnSE("se特殊_雰囲気_卵発光01", 1000);

	Fade("フラッシュ白",0,1000,null,true);

	Fade("フラッシュ白",1000,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　村正竭尽全身力量，抵抗着试图侵蚀自己的东西。
　在旁观者看来，这场比试对她很不利。

　然而，我什么都做不了。
　只能袖手旁观这场剑胄之间的苦斗。

　如今的我没用到连个稻草人都能代替。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030180a01">
《……咕，啊啊……！》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030190a00">
「村正！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030200a01">
《呜……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　连回答的余力也逐渐消失了吗。
　虽然村正挥着手让我别担心，但她的喉咙却只溢出痛
苦的呻吟。

　这样下去——可不妙。
　得做些我力所能及的事才行！

　但是，该做什么？
　我能做什么？
　
　该怎样做，才能帮助村正？

　我是操控者，而村正是剑胄。
　操控者受伤时能靠剑胄的能力而治愈，而剑胄的损
伤却无法用操控者的技能来修理。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030210a00">
（毫无道理）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我的胸膛中怒吼着一直以来想都没想过的事情。
　我无法原谅这份无能。这份不变成穿上剑胄的武者就
什么也做不到的，操纵者的无能……！

　————————————不。
　
　
　对了，有件我能做的事。

　若是操纵者。
　身为操纵者。

　现在确实有我能做到的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030220a00">
「村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030230a01">
《呃……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030240a00">
「准备装甲。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030250a01">
《……!?
　不、不行！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030260a01">
《如果现在这么做的话——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我也会暴露在被污染的危险中。
　这种事，我很清楚。

　但是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030270a00">
「我被精神污染时，你在做什么。
　作为剑胄，来救我了不是吗？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030280a00">
「我只是做相同的事而已。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030290a01">
《但——但是……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030300a00">
「这次轮到我借给你力量！
　村正……别忘了。」

//【景明】
<voice name="景明" class="景明" src="voice/md05/0030310a00">
「我跟你是武者。
　两人一骑的武者！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030320a01">
《……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　我们总是两人一起面对战斗。
　仅限于各自战斗时，操控者与剑胄都弱小而不完整——
二者合一，才能成为连强敌都能一战的武者。

　以污染的“卵”为敌手而战是有意义的。
　我能提供作为活力源的热量，而且能以不只是一人而
是两人的意志力来对抗“卵”的侵蚀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030330a01">
《净想些蠢事……！》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030340a00">
「你有资格说我吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030350a01">
《会变成怎样我可不管！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030360a00">
「了解！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガリーン。パーツ分離
//◆装甲。村正
//◆銀色発光
//◆画面真っ白。ＳＥ：暴風

	OnSE("se特殊_鎧_装着03",1000);
	Fade("フラッシュ白",0,1000,null,true);

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	DeleteStA(0,true);
	StC(1000, @0, @0,"cg/st/3d村正脇差_立ち_通常.png");
	FadeStC(0,true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

	WaitKey(1500);

	OnSE("se特殊_雰囲気_発光04", 1000);


	CreateColorSP("フラッシュ白", 3000, "WHITE");
	DrawTransition("フラッシュ白", 300, 0, 1000, 100, AxlAuto, "cg/data/circle_03_00_0.png", true);

	CreateSE("SE03","se自然_風_暴風");
	MusicStart("SE03",0,800,0,1000,null,true);



	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030370a00">
「——呜——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　好强。

　这力量，好强。

  村正一直在独自忍耐的，就是这种东西吗。
  仅仅多了我一个增援，我们赢得过这种东西吗……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030380a00">
（不）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　不可以胆怯。
  因为必须赢，所以只能赢。

  不能让村正——当然我自己也不能，成为银星号的
复制体。
  在这精神战场上绝对不能后退。不能输。

　但是……
　
　被冲击着。

　自己的意志被吹散。

　仿佛立于暴风雨中的蜡烛。

　熄灭。

　被扑灭。

　…………然而。

　的的确确——能感觉到。

　这暴风，这强大的威压，是有源头的。

　那就是“卵”吗。

　将之排除，就能保护住我与村正的精神。

　向那里，探出手——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆強まる風

	SetVolume("SE03", 1000, 1000, null);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030390a01">
《……啊……!!》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030400a00">
「呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　重压袭来，要将渺小的两个意志压碎。

　不能输。
　但是，好强。

　好强。
　可是，不能输！

　伸出手。

　……在哪儿。

　握住源头，将它捏碎，就结束了。

　源头！
　这暴戾的核！

　只要我在被撕碎前，
　找出它并破坏掉————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	OnSE("se特殊_雰囲気_発光01",1000);

	Wait(2000);

//◆フェードアウト

	SetVolume("SE*", 1000, 0, null);
	SetVolume("OnSE*", 1000, 0, null);

	ClearWaitAll(4000, 3000);

}

..//ジャンプ指定
//次ファイル　"md05_004start01.nss"

//スキップ用
scene md05_003.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("黒", 100, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("跳过故乡探索","不跳过故乡探索");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//五階層方陣をスキップする
			$GameName = "md05_004end.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//五階層方陣をスキップしない
			$GameName = "md05_004start01.nss";
		}
	}
}

