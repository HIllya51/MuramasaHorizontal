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

scene mc04_026.nss_MAIN
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
	#bg094_宮中庭_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_027.nss";

}

scene mc04_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_025.nss"
//前ファイル　"mc04_022vs.nss"

//◆bg025b？
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(100,"bg025_山脈と森a_01.jpg");
	FadeBG(0,true);

	Delete("上背景");
	FadeDelete("黒幕*", 2000, true);

	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　篠川公方大鸟狮子吼遇难后一周。
　这几天并不算动荡。不如说，甚至是
与之前相比更为停滞的一段时间。

　在会津，已经无法开启战端。

　六波罗失去了所有地位与实力兼备的领袖，
已经无法成为影响时势的主角之一。
　进驻军队也失去了行动的意义，尽管拥有实力
但也不得不退居静观其变的立场。

　人们也差不多被接连不断的变故冲击得头脑麻痹，
却还在高声议论。
　
　是谁，断绝了六波罗最后的命脉——

　最初，大多数人都说肯定是ＧＨＱ的刺客。
　但紧随其后，因为大鸟本宅的幸存人士流出的
传言，另一个传闻又扩散开来——
被狮子吼杀害的大鸟先代之长女完成了复仇。

　两个说法最后被揉合到一起，以进驻军援助大鸟家小姐
讨伐了狮子吼这一形式作结。
　尽管其中包含着零散片段般的事实以及与事实
相近的东西，但是，作为结论这当然是错误的。

　没有谁比进驻军更希望大鸟狮子吼能活得
久一点，甚至恨不得派遣护卫去保护他。
　对意欲与六波罗进行决战的他们而言，统率幕军
的最后一员大将是不可或缺的人才。

　正因为狮子吼看穿了这一点，才敢于不抽调兵力
守护自己身侧。
这一切都是超出他们计算之外的事情。

　不过这个传闻，随着状况的推移，也有对进驻军
有利的可能性。
　也就是说，如果复仇讨伐的事情能成为美谈传遍街头
巷尾的话，ＧＨＱ就能成为幕后的中心角色，获得声望。

　或许就会形成有利于他们把握大和统治实权的
优渥土壤。
　对ＧＨＱ——卡农中佐而言，静观并不仅仅是袖手旁观，
其中无疑还包含有等待如此时机的含义。

　无论如何，大和必须要有统治者。
　在接连不断的混乱中，统治者绝不能是作为外部
势力的进驻军这样的想法，已经在人们的脑海中逐渐
消失。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg094_宮中庭_01.jpg");
	FadeBG(1600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　然而就在这个时候，新的因素掺合了进来。

　
　京都朝廷。

　仿佛早已预料会发生如此事态的可能性，
以漂亮的手段，皇族及其势力蠢蠢欲动。
　首先与位于近畿，作为六波罗派遣机构的室町探题
进行商议，结下了相互协助的约定，

　以此为背景，继而开始与九州的太宰府，北方的镇守府的
交涉。
　与此同时，对于因普陀乐城的崩坏而被架空的足利邦氏，
对其的大将领任命，也正式决定<RUBY text="··">延期</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 1000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	StL(1000, @0, @0,"cg/st/st邦氏_通常_私服.png");
	FadeStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　官方发表称年幼的邦氏无法担负现阶段的重任，在他
成人之前将推举一名代行者以守护他的地位。
　至于由谁来担负代行之责，尚未明确公开指出。


　……很可能是皇族中人。
　或许会由熟悉关东一带情势，并凭借其知识与智谋暗中
指导本次朝廷政治行动的<RUBY text="······">皇族中的某人</RUBY>
来担此重任。

　在中央也开始着手重建二官八省这个因实权被夺而
空壳化的、法制上的大和正式政府。
　首相即左大臣似乎将会从五摄家中选出。
另外，贵族院、众议院两个议会的封锁也有望解除。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Delete("絵色*");
	DeleteStA(0,true);
	FadeDelete("絵板写", 1400, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　像如此朝廷功能的活化，让人们回想起首都
政府的存在，也让小小的期待与信赖开始萌芽。
　失去领头人的六波罗残党也不例外。
原本，六卫府就是朝廷的直属机关。

　对恢复旧制，听从朝廷指挥这一倾向，公开
表示抵抗的人寥寥无几……
　室町探题也在积极活动，关东幕府残余势力
中的大半都准备投靠京都。

　大和恢复到六波罗之前的时代，<RUBY text="··">独自</RUBY>
取回安定与和平，如今确实萌生着这样的趋势。
　……当然这绝不是进驻军希望看到的，既然不希望看到
就会加以妨碍。

　然而，进驻军已经失去了对自己有利的“反派”角色。
　很快，他们也将面临这样的选择，是自己成为反派，
成为侵略者，还是做出一定的妥协。

　大和的国土会再次被战乱的暴风雨席卷吗。
　大和的独立最终能被守护住吗。
　
　…………这答案，凑斗景明并不知晓。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_027.nss"