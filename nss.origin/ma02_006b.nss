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

scene ma02_006b.nss_MAIN
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
	#bg022_山林a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_007.nss";

}

scene ma02_006b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_006.nss"

//●未熟だ、と思う

	PrintGO("背景０", 30000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　——不成熟。
　我无声地低吟。

　如果后悔的话，当初不杀便好。
　既然已经杀掉了，就不该抱有悔意。

　若是觉得应该有更好的方法，那么一开始就该
那么做。
　若是除了杀生别无他法，又为何在杀掉之后陷入
迷惘呢？

　结果所谓悔恨，不过是无法承受杀生这一事实的
内心所渴求的自我安慰罢了。
　从这层意义上来说，这与说是因为遭遇袭击而不得
已为之的辩解，并无二致。

　若不想杀却杀了，是本领尚浅。
　若想杀却后悔杀了，是心智不成熟。
　
　我在心中如此断言。

　……虽这么说。
　一个什么都没做的人，没有资格评头论足。
我控制住自己，没有自顾自地把感想说出口。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆分岐終了


}

..//ジャンプ指定
//次ファイル　"ma02_007.nss"


