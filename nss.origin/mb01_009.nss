//<continuation number="30">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_009.nss_MAIN
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
	#bg013_鎌倉俯瞰a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_010.nss";

}

scene mb01_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_008.nss"


//◆鎌倉市
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg013_鎌倉俯瞰a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0090010a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　——武者与剑冑是为一体。

　就算相隔甚远。
　也可眼见同样事物，耳闻同种声音。

　故此，她也听到了。
　那宣告之声。

　憎恶。
　还有杀意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0090020a01">
《…………》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0090030a01">
《……主君……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正と正宗
	PrintGO("上背景", 30000);
	CreateColorSP("絵上暗転", 5000, "#000000");
	CreateColorSP("絵暗転", 100, "#000000");
	StL(1000, @0, @150,"cg/st/3d正宗天牛虫_俯瞰.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	StR(1000, @150, @0,"cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStA(0,true);
	FadeDelete("上背景", 1500, true);
	WaitKey(1000);
	FadeDelete("絵上暗転", 1500, true);

	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　世间有此传闻……

　冠名大和的两位剑冑锻造师村正和正宗，出自同一师
门。
　他们都展示出卓越的才华，都被赋予打造绝代名剑冑
的期望，但两者性质却完全不同。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵黒幕", 1500, "#000000");
	CreateTextureEX("絵演村正", 2000, Center, Middle, "cg/st/resize/3d村正蜘蛛_俯瞰m.png");

	Fade("絵黒幕", 500, 750, null, true);

	Move("絵演村正", 0, @254, @60, null, true);
	Move("絵演村正", 5000, @0, @-120, null, false);
	Fade("絵演村正", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041a]
　村正人品卑劣，对自己的本领极为自负，连对待师父
的态度都很傲慢。
　而且村正只把剑冑当作杀人道具来看待，贪恋于追求
更坚硬、更强大。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	WaitFade("絵演村正", null);
	FadeDelete("絵演村正", 500, true);

	CreateTextureEX("絵演正宗", 2000, Center, Middle, "cg/st/resize/3d正宗天牛虫_俯瞰ex.png");
	Request("絵演正宗", Smoothing);
	Zoom("絵演正宗", 0, 600, 600, null, true);
	Rotate("絵演正宗", 0, @0, @180, @0, null,true);

	Fade("絵黒幕", 500, 750, null, true);

	Move("絵演正宗", 0, @-254, @-360, null, true);
	Move("絵演正宗", 5000, @0, @120, null, false);
	Fade("絵演正宗", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041b]
　而正宗生来品行高尚，性格稳健，无论对谁都彬彬有
礼。
　而且正宗认为剑冑是武之正道的象征，不仅要强大，
还必须具备美丽的特点。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	WaitFade("絵演正宗", null);
	FadeDelete("絵演正宗", 500, true);

	FadeDelete("絵黒幕", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041c]
　一天，师父让两个弟子打刀。
　并命他们把刀打好后，插于河中。

　村正首先把刀插在河中。
　等了一会儿，有落叶顺流而下，碰到了刀尖。

　令人惊讶的是。
　当落叶碰到只是插在河中的刀上，便瞬间裂为两片，
无声无息，漂往下流。

　围观的弟子们惊叹连连，村正以其刀惊人的锋利度而
自居，得意洋洋。
　师父一言未发，接着让正宗试试看。

　等了一会儿之后，和刚才一样，河面上有落叶漂了过
来。
　众人都屏息凝视，想看一看正宗的刀是否能够展现出
与村正匹敌的锋利。

　然而，落叶一接近刀，便有如逃跑般改变流向，毫发
无损地顺流而下。
　不管反复多少次都一样。正宗的刀始终没有斩一片落
叶。

　师父说。

　——所谓刀，自斩应斩之物而不斩不应斩之物，方为
刀中极品。
　尔等要明白，斩断落叶之村正远远不及落叶一片未斩
之正宗——

　正如师父所说。
　正宗作为天下第一名甲倍受尊崇，而村正则作为被诅
咒的妖甲受世人厌恶，后世评价褒贬分明。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　
　…………此乃世俗之说。

　村正和正宗并非出自同一师门。
　两者的登场年代相距甚远。

　这不过是后世风流人士杜撰的故事罢了。
　
　但——恐怕不得不说，这反映了村正和正宗的部分真
谛。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_010.nss"