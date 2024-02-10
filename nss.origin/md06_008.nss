//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_008.nss_MAIN
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
	#bg009_鎌倉住宅街a_03=true;
	#bg012_鎌倉駅前周辺_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_009.nss";

}

scene md06_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_007.nss"


//◆夜の町

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 50, "BLACK");

	OnBG(100, "bg014_鎌倉繁華街_03.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm32", 0, 1000, true);

	DrawDelete("上背景", 300, 100, "slide_01_02_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　废物。

　我这个废物。

　糟糕、恶劣至极的人。

　我已经对这样的自己忍无可忍。

　我为身为自己而感到痛苦。

　其他的任何生物。

　狗也好猫也罢。
　青蛙也好蚂蚁也罢。

　变成什么都行。

　什么都要比凑斗景明强。

　但愿是，石头就好。

　是啊。

　真想变成石头。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆駅前
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateColorSP("絵色黒", 10, "#000000");
	OnBG(100, "bg012_鎌倉駅前周辺_03.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　罪要受到处罚。

　违反法律的人，要接受法律制裁。

　法律……到底在干什么？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw手相を見る人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080010e108">
「不好意思。
　我正在学习看手相。」

//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080020e108">
「可以看一下您的手吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("@OnBG*", 1000, 600, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我就在这里。

　犯下了杀人的罪行，理应受到制裁的人就在这里。

　法律怎么了。

　为什么没有制裁。

　为什么，没有将这颗头颅砍下。

　有人说，对犯人处以死刑是错误的，
让他活着赎罪才对。
　……我也知道这个道理。

　但这是建立在罪人有偿还方法的前提下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw手相を見る人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080030e108">
「哇，真是惊人的手相！
　第一次见到您这样的人。」

//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080040e108">
「嗯，只是……
　近来会有一些波澜，您似乎
正处在人生的分叉路口呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("@OnBG*", 1000, 300, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我，要怎样才能赎罪？

　事到如今，要如何补偿死于这双手之下的人们。
　我不会说我没有责任这种梦话，对于那些
因世界各地的战乱而死去的人们要如何补偿。

　不，这还算不上偿还的问题吧。
　我只能坐视着可以说由我而起的战火。
阻止大和、大陆、欧洲的——腥风血雨。哪怕制止
伤亡人数的增加这样的事，也做不到。

　我现在也等同于在杀人，持续杀戮。
　成百上千的人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw手相を見る人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080050e108">
「您在烦恼什么吗？　这样啊，
原来如此。
　其实，现在我的老师正在附近
开讲演会。」

//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080060e108">
「去参加的话说不定可以解决
您的烦恼。嗯，一定可以解决。
　入会费只要５００日元……
那么，走吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("@OnBG*", 1000, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　那么……又怎么样。
　不判我的罪？

　为什么而活……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆転換

}

..//ジャンプ指定
//次ファイル　"md06_009.nss"