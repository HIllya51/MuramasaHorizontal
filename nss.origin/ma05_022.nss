//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_022.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$時田光男殺害 = true;

	$PreGameName = $GameName;
	$GameName = "ma05_023.nss";

}

scene ma05_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_021vs.nss"


//◆アナザー選択
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 200, "#000000");
	OnBG(100,"bg086_病室_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");

//◆一閃
//◆血がぶしゅー
	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,5000);
	SL_leftdownfade2(10);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdamN(@0, @0,1000);
	SL_leftdamfadeN2(10);

	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　他名为时田光男。

　是一名年轻的自由记者。
　他对坊间风传的“赤色武者”兴趣浓厚，将七零八散
的风闻拼凑起来，终于拼出真相的冰山一角——即，找
到了我这里。

　反复出入关东拘留所的一个奇妙的罪人的事情。
　以及“赤色武者”的目击情报。
　前者被释放的时间与后者之中哪几个可信度较高……
他抓住了两者的一致性。

　他的动机有二：一是符合记者作风的好奇心，二是不
符合记者作风的偏执热情——对压制者的愤怒。
　他告诉我：你就是希望。

　有一个人独自挑战庞大的掌权者。
　这一事实定会在人们心中点亮一盏勇气明灯。
　藉此终将孕育出能够摧毁压制的力量。

　笔强于剑，他如此主张。
　这就是他的信念。

　他向我恳求：希望能够报道你。
　他还说：想用我自己的做法，与你并肩作战。

　当他知道无法得到我的同意后，不知是不是为了表现
自己的觉悟，他彻查了袭击我的杀人鬼——青江——甚
至最终查明其藏身之处。

　代价是身负失去一只手臂的重伤。
　当我将青江消灭后，去病房探望他时，他微笑着说：
笔能折剑，我的信念胜利了。

　他是对的。我能击败杀人鬼，都是他的功劳。
　听了我的话，他像是羞赧似的垂下眼帘。

　我砍断了他的脖子。


　笔折了。

　我玷污了他的信念。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(3000, 0);

..//ジャンプ指定
//次ファイル　"ma05_023.nss"

}




//◆２３４５６７８９０１２３４５６７８９０１２３４







