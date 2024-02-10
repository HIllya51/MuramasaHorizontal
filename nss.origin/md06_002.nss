//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_002.nss_MAIN
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
	#ev257_大和北方地図_c=true;
	#bg040_孤島全景_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_003.nss";

}

scene md06_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_001.nss"

//◆マップで松前大島の位置を示し
//◆bg040a

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	CreateTextureSP("前地図EX", 2900, Center, Middle, "cg/ev/ev257_大和北方地図_b.jpg");
	DrawTransition("前地図EX", 1000, 0, 1000, 100, null, "cg/data/blind_02_01a_1.png", true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	WaitKey(1000);

	CreateTextureEX("地図", 3010, -562, -518, "cg/ev/resize/ev257_大和北方地図_cl.jpg");
	CreateTextureEX("地図ex2", 3000, -562, -518, "cg/ev/resize/ev257_大和北方地図_bl.jpg");
	Move("地図*", 5000, -218, -49, DxlAuto, false);
	Fade("地図ex2", 1000, 1000, null, true);

	Delete("前地図EX");

	WaitAction("地図", null);

	Fade("地図", 0, 1000, null, true);
	DrawTransition("地図", 1000, 0, 1000, 100, null, "cg/data/blind_02_01a_1.png", true);

	WaitKey(1000);


	PrintBG("上背景", 30000);

	OnBG(100, "bg040_孤島全景_01.jpg");
	FadeBG(0, true);

	FadeDelete("上背景", 1000, true);
	SoundPlay("@mbgm34", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　佣兵帝国。圣堂骑士团。军队派遣会社……
　通称“武帝”。

　这个集团位于北曾西南，从渡岛半岛向西跨海
５０公里处，以松前大岛为根据地。
　虽然因地理环境而海产丰富，但他们并没有
显现出对渔业的关心。

　他们的职业是战争。

　不是吞并近邻以扩大领土。
　而是受想要侵略，或者是要抵御
侵略的人的雇佣而战斗。

　他们不问是非。不论国家、民族、
宗教、原则、主张，一概不论。
　只看是否满足契约条件，来决定
允诺雇佣与否。

　条件会有些特殊。
　但以付出的金钱来衡量，他们向雇佣者提供的
战斗力完全是物超所值。

“武帝”的核心战斗力，由持有
真打剑胄的武者担当。

　诸如高速彻甲弹、振动炮等，随着针对龙骑兵的
狙击兵器的发展来看，数打剑胄和真打剑胄的力量对比
产生了戏剧性的扭转。
　最新式的兵器，无法用真打的古老操作系统操纵。

　对于专职肉搏战的真打武者来说，荣誉已经
成为过去。
　数打剑胄被嗤作杂器、贱物，伪造品的时代
已然化作历史。

　尽管如此，他们中的多数人仍是骑士阶级，也就是说，
除了在前线战斗之外，也承担指挥统帅的任务，
因此并不会完全失去在军队中的地位。
　只是不被当做最强的实战力而已。

　然而，因为作为最强战力的自负才是给予他们军中
指挥权，进一步讲是阶级意识以正当性的根据，
所以无法忍耐数打武者的抬头如溃逃
一般离开军队的人并不在少数。

　那些脱离军队的武者，投奔于“武帝”……
　并且重拾自我认知。

　就算正面战斗的优势被数打夺走，真打武者仍然是
强悍的存在。
　他们中的多数人都兼具作战的高性能，熟练的技术，
加之丰富的经验。

　单枪匹马的突破重型坦克队列拿下对手，
粉碎炮兵阵地并不在话下。
　就连最新的龙骑兵，选择状况和战术后带入格斗战，
也能与对手势均力敌——甚至可以说是压倒性的。

　只要运用的方式不出错，就能获得巨大的战果。

　总之，“武帝”就这样，回应着追求荣誉
的武者和追求力量的委托者，两者间的期望。

　突然出现的孤岛佣兵团在短期内声名远播，
也正因如此。

　在名声逐渐打响后，“武帝”接收到的委托
数量也日益增长——无视其凄惨的契约条件。
　在大和、大陆，或者更远的地方。他们参与了许多
被委托的战斗，重复着胜利与死亡。

　大和与露帝也曾派兵，意图将这些危险的
不法占领者赶出松前大岛，但是……
　这样的尝试，每次都被如同异样的暴风雨<RUBY text="··">一般</RUBY>
<RUBY text="·········">猖狂肆虐的重力业者</RUBY>阻止，挫败而归。

　虽然不见他们有妨碍海上交通的意图，但最近
两国都消极的承认了“武帝”的存在。
　非正式是指——偶尔也能够积极地利用一下。

　佣兵帝国就如此伫立在远东。
　在混乱窘迫的形势漩涡中纵情遨游、战斗、屠杀
——以此来提升自我的威信，增强存在感，
而成名的压力也同时增长。

　倚赖他们的人也在随之增加。
　而讨厌的人，也在以相同的速率递增。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_003.nss"