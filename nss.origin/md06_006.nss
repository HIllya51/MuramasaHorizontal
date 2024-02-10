//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_006.nss_MAIN
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
	#bg034_署長宅茶の間b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_007.nss";

}

scene md06_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_005.nss"

//◆署長宅

//こちら村正視点と想定して立ち絵は立たせておりません　inc櫻井
	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");
	SoundPlay("@mbgm05", 0, 1000, true);

	OnBG(100, "bg034_署長宅茶の間b_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　景明今天也一早就出门了。
　肯定要到夜深才会回来吧。

　现在这个时候，一定又漫无目的的在镇上巡游，
消磨着时间和体力。
　仿佛在体会自身无意义的生命一般的做着那些事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0060010a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　倒在草席上，叹了口气。
　出乎意料地，大声地叹息。

　即便如此也没有人责备。
　就算大声地咆哮，结果也是一样吧。
景明不在的时候，家里只剩我一人。

　这个家属于景明父亲的财产，却从没见他的
身影出现在此处。
　有一个叫牧村的佣人——她也已经暂时外出了。

　那个存在感薄弱的人是从何时起看不见的。
　……想要回忆，却无从想起。
明明是件轻而易举的事。

　与银星号的战斗结束以来，心铁已经开始钝化。
　恐怕——那里铭刻的使命，自己存在的理由，
都已失去。

　过去的五百年，加之这两年。
　相遇、诀别、战斗与死亡。
　
　现在，一切都仿佛是很遥远的事。

　身为剑胄，死期将至时，
所有的机能都在逐渐衰退吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0060020a01">
（……只是）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　那是对除去心铁的一部分而言。

　有件并不遥远的事情。
　与作为剑胄不断被磨钝成反比的是，拥有
肉体之时的感受能够觉醒到什么程度，
由此这一想法近来愈渐强烈。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 11000);
	CreateColorSP("絵色黒", 10000, "#000000");
	FadeDelete("絵板写", 500, true);

	StR(10100, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
　景明。

　……我的使用者。

　他和失去了存在理由就会走向死亡的剑胄不同。
　就算失去了生存的理由，心脏仍在跳动，血液也
不断流动，一切照旧继续生存着。

　在内心受着惭愧和悔恨的灼烧之下生存着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(500,true);
	FadeDelete("絵色黒", 500, true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0060030a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　结局并不是我所期望的。
　能残存下来固然令人喜悦。
但并不希望他活得那么痛苦。

　应该为他不至于头脑一热跑去自杀而欣慰吗？
　他之所以不这么做，是因为不允许自己的自我逃避。

　没有选择抛下一切往轻松的道路上走。

　如果这样死去就太难受了。
　但是，长此下去————结果都一样。

　苦恼累积，如果找不到逃避的方法，
总有一天会从体内开始腐蚀。
　不过是肉体死亡与心死的差别而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0060040a01">
（再不做点什么……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　强烈的思索着。

　村正已经没有用处了。沉眠也好腐朽也罢。
　但是，不能任由他继续下去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1500,true);

}

..//ジャンプ指定
//次ファイル　"md06_007.nss"