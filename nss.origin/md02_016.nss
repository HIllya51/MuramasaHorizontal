//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_016.nss_MAIN
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
	#bg098_堀越御所内廊下_01=true;
	#ev213_景明と村正の結縁_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_017.nss";

}

scene md02_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_015.nss"


//◆bg098？

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg098_堀越御所内廊下_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	SoundPlay("@mbgm05", 0, 1000, true);
	Wait(500);

	SetFwC("cg/fw/fw村正_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0160010a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　没有缘由，一人独自叹息。
　虽然正因为肉体化才能有这样的行动，
但也并非是为了体验这种感受而做的。

　景明不在。于庭院再度训练。
　并不是被他说了什么，
只是察觉到他想一个人呆着的样子，
于是稍微拉开了距离。

　是想好好考虑午饭时的事吧。

　对我来说只是些无聊的话。
　那个讨人厌的和尚，以及那个夸大其词让人不快的家主，
我只觉得他们是在给景明灌输这样那样的东西让他困惑，
想着就来火。

　不过，因此你就不要再烦恼了这种话，也是
不能对他说的。
　因为这已越过剑胄的职责。 

　决定方向是操控者的职责。
　成为朝那方向前进的力量，是剑胄的职责。

　暂且不说剑胄只从自己的立场对操控者提出意见，
超越这个范畴的一切指示更是不该。
　那代表对操控者的不信任。

　是背叛了改变过去，如今决定不顾一切信赖着我的他。

　那种事，能办到吗？

　那么想着，没告知景明一句话，便离开了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0160020a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　二度叹息。

　独自一人的时间，对我来说还是必要的吧。
　这样独自一人，心铁深处一直在动摇的不安，
急速而清晰地成形。

　景明在身边的时候没被看出来。
　啊啊，真的太好了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0160030a01">
（但是……对了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　反正是不得不考虑的事。
　并非讽刺，真的应该感谢这次机会啊。

　关于和银星号——村正二世战斗的事。

　景明作为操控者似乎在摸索胜算，我作为剑胄也在检讨。
　不得不注目之处，果然还是敌人的“心甲一致”。

　银星号的确是武者的理想体现。
　操控者与剑胄间没有任何不协调。
那异常至极的战斗速度和威力的使用，
首先是立足于这点上的。

　只能认为，那两者已经将彼此视为一体。
　恐怕事实也与此相差无几。

　相比较——我们呢？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0160040a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：帯刀の儀

	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 1001, Center, Middle, "cg/ev/ev213_景明と村正の結縁_b.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　从那天起……
　想着景明的时间增多。

　与以前相比，装甲时的<RUBY text="···">一体感</RUBY>要强很多。
　那变化也体现在性能上。

　但是——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0160050a01">
（主君）

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0160060a01">
（他说过，我是必要的）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　突然想起那天的话。
　在那里，沉浸于一股难以抵抗的潮热。

　但是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0160070a01">
（那是……障碍吗？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　将操控者<RUBY text="·········">当作别人对待的自己</RUBY>。

　这样的意识成为完全一体化的……
　完成心甲一致的障碍了吗？

　成为剑胄已经五百年了。之后就沦入黑暗当中。
　两年前被解放——但孤独却从未改变。

　就在前些日子，才真正意义上得到操控者。
　现在的我，因为被他需要而存在于此。

　已并不孤独。

　本来，自己是祈求着永远长眠的存在，也深切理解
觉醒而后活动的现状反倒意味着并不乐见的灾难……
　但喜悦的心情无法抑制。

　握住景明伸出的手，绝对不想再放开。

　……这样的想法是障碍吗？

　无论如何也看不出银星号的操控者
和剑胄对彼此的事情都很在意。
　反倒接近于无视——是对自己也并不在意的类型。

　我们也必须变成那样吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0160080a01">
（那样的话……）

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0160090a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　第三次叹息。

　只要独自一个人，就会重复着这样的状况。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md02_017.nss"