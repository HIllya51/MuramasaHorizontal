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

scene mb01_003_2.nss_MAIN
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
	#bg033_署長宅景明私室_01=true;

	//▼ルートフラグ、選択肢、次のGameName

		$PreGameName = $GameName;
		$GameName = "mb01_003_3.nss";

}

scene mb01_003_2.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_003_1.nss"


//◆署長宅、景明の部屋
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_署長宅景明私室_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　将从纸张触感都能感觉到其廉价性的三流大众报纸扔
在桌上，吐了口气。
　本想将胸中困惑全数吐出，不料堵在心口的疙瘩却完
全没有消失。

　——足利护氏薨逝。

　六波罗暴君的末路。
　尽管不知道导致其丧命的原因为何，但他的死亡已是
无可争议的事实。

　一旦镰仓大番不复存在，市井之中就算充满节日般的
喧闹气氛也不足为怪。
　实际上在家中暗地里大呼快哉的人想必并不在少数。

　但，就算未处于幕府的监视之下，这种快哉终究是否
真的能够演变成从家中扩散至街上、不合时宜的大肆庆
祝呢。
　又有谁能如此轻率呢？

　说到足利护氏，就相当于压在名为国家的箱盖上的镇
石。
　就箱中之人来说，着实沉重、苦闷。

　然而，一旦消失却又令人不安。
　担心现在会不会连一丝微风都能吹走盖子，而外界冰
冷的空气随即袭来……令人不禁略感微寒。

　该高兴却高兴不起来，想必这才是大多数市民此刻的
心情吧。
　
　我的内心却又有了些略微不同的想法。

　……最近的过往记忆，再度浮现脑海。
　很难认为那与突如其来的大变故毫无关系。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 500, 1000, null, true);
	WaitPlay("@mbgm*", null);

..//ジャンプ指定

}


