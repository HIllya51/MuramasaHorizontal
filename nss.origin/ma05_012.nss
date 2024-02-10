//<continuation number="2490">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_012.nss_MAIN
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
	#bg050_湊斗家門前_01 = true;
	#bg033_湊斗家一室_03a = true;
	#bg033_湊斗家一室_01 = true;
	#bg033_湊斗家一室_02 = true;
	#bg053_湊斗家の庭_02 = true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_013.nss";

}

scene ma05_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_011.nss"


//◆湊斗家前
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(300,true);

	SetNwC("cg/fw/nw薬屋.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／薬屋】
<voice name="ｅｔｃ／薬屋" class="その他男声" src="voice/ma05/0120010e282">
「那么，统大人……
　这是绷带。还有金创药。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120020b46">
「好，多谢。
　刚才把家里备用的全部用完了。帮大忙了。」

{	NwC("cg/fw/nw薬屋.png");}
//【ｅｔｃ／薬屋】
<voice name="ｅｔｃ／薬屋" class="その他男声" src="voice/ma05/0120030e282">
「……是。
　可是，那个……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120040b46">
「嗯～？」

{	NwC("cg/fw/nw薬屋.png");}
//【ｅｔｃ／薬屋】
<voice name="ｅｔｃ／薬屋" class="その他男声" src="voice/ma05/0120050e282">
「……没问题吗？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120060b46">
「没问题。」

{	NwC("cg/fw/nw薬屋.png");}
//【ｅｔｃ／薬屋】
<voice name="ｅｔｃ／薬屋" class="その他男声" src="voice/ma05/0120070e282">
「……是吗。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120080b46">
「啊，不过，此事不可外传。」

{	NwC("cg/fw/nw薬屋.png");}
//【ｅｔｃ／薬屋】
<voice name="ｅｔｃ／薬屋" class="その他男声" src="voice/ma05/0120090e282">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆客間。bg033a？
	PrintGO("上背景", 25000);
	CreateColorSP("絵黒", 2000, "#000000");
	OnBG(100,"bg033_湊斗家一室_03a.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵黒", 1000, true);

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆寝
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120100a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(1000);

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120110b31">
「…………」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120120b31">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120130b31">
「……如果……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120140a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト少し
	WaitKey(400);

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120150a00">
「您醒了吗？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120160b31">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120170a00">
「劝您最好别动。
　小心伤口。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120180b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120190a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120200b31">
「……给我包扎的人是……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120210a00">
「对。
　是我。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120220b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120230a00">
「……」

{	FwC("cg/fw/fw首領_照れ.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120240b31">
「……我的身体……
　…………你……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120250a00">
「…………多有冒犯。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120260a00">
「因为处理伤口实在是刻不容缓。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120270b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120280a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120290b31">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120300a00">
「……我是否应该回避一下？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120310b31">
「……你一直都在那里吗？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120320a00">
「虽说进行了应急处理，但我毕竟不懂医术。
且不知伤情何时会突变。……话虽如此，考虑
到您的情况，也不可贸然请医生上门。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120330a00">
「至少可以及时应对突发状况，
故在此守候。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120340b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120350a00">
「您需要什么吗？」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120360b31">
「……不。没有……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120370a00">
「是吗。
　那就请您继续休息吧。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120380b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120390a00">
「我稍后再前来探望。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120400b31">
「……好。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明去る
//あきゅん「SE：要望：スライド扉を開け閉め去っていく足音、ほぼここ専用」
	CreateSE("SE01","se日常_建物_扉開閉01");
	CreateSE("SE02","se人体_足音_木床ゆっくり歩く01_L");

	$待てい = RemainTime("SE01");

	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey($待てい);

	SetVolume("SE01", 500, 0, null);

	MusicStart("SE02",0,1000,0,1000,null,false);

	SetVolume("SE02", 3000, 0, null);


	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120410b31">
「…………」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120420b31">
「……输了。
　…………输了啊…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆家の中
	CreateColorEX("絵黒", 8500, "#000000");
	Fade("絵黒", 1000, 1000, null, true);
	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	WaitKey(500);
	DrawDelete("絵黒", 1000, 1000, "blind_01_00_1", true);

	StR(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【統】
<voice name="統" class="統" src="voice/ma05/0120430b46">
「哦。
　如何？　有什么情况吗？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120440a00">
「统大人。
　没有。方才她醒了。我待在
旁边怕会影响她休息。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120450b46">
「是吗。太好了。
　她没有乱来吗？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120460a00">
「她很平静。
　或许只是还未弄清现状……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120470b46">
「不过，想必她现在也无法挥刀。
　纵然她是位武者。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120480a00">
「还因她未装配剑胄。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120490b46">
「真打剑胄就算没有装甲，还是能治愈主要伤
势的。然而数打就不可能了。
　是幸还是不幸呢。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120500a00">
「若使用剑胄之力，则非我辈
所能与之匹敌。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120510b46">
「如此想来，果然还是幸运吧。
　对于我们来说。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120520b46">
「……对方身为武者，却为何特意以肉身
决一胜负？
　是个十足的怪人吧。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120530a00">
「不。
　她只是出于武人秉性罢了。」

{	FwC("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120540b46">
「嗯？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120550a00">
「<RUBY text="··">虐杀</RUBY>非善道。
　剑不过是用以<RUBY text="··">争斗</RUBY>的工具罢了。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120560b46">
「……是吗。
　看明白了什么吗？　儿子。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120570a00">
「……是。
　我想我看到应见之物了。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120580b46">
「打算如何安置那位姑娘？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120590a00">
「等她能够自由活动，便将她送回山中阵地。
  如有剑冑在身，恢复速度想必也较迅速，
故如此主动送返最为妥当。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120600b46">
「如此便可？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120610a00">
「是。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120620b46">
「嗯。
　就这么办吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

//◆夕暮れ
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120630a00">
「客人。
　……睡下了吗？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120640b31">
「……还没。
　请进……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆客間
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_02.jpg");
	FadeBG(0,true);
	CreateSE("SE01","se日常_建物_スライド開く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120650a00">
「感觉如何。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120660b31">
「……还不算坏。
　也……不怎么疼。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120670a00">
「如此甚好。
　夜间再替您换一次绷带。
汗也需要擦干才好。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120680b31">
「……」

{	FwC("cg/fw/fw首領_照れ.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120690b31">
「还是，你吗……？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120700a00">
「什么……？」

{	FwC("cg/fw/fw首領_照れ.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120710b31">
「……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120720a00">
「不……不是。
　这次由我养母来做。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120730b31">
「……是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　感觉，她的表情显得有些失望。
　……不，大概是我看错了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120740a00">
「……请问。
　您想进食吗？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120750b31">
「……现在还……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120760a00">
「我不勉强您……
　但晚餐最好多少吃一些。营养不良会
导致伤口无法痊愈。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120770b31">
「……好吧。
　可是……我的手不太好使。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120780a00">
「交给我吧。」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120790b31">
「……是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　看到她脸上似乎浮现出一丝喜悦。
　……不，大概是我幻视了吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120800b31">
「…………」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120810a00">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120820a00">
「您……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120830b31">
「什么？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120840a00">
「您什么都不问。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120850b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120860a00">
「……没关系吗？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120870b31">
「无妨。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120880a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120890b31">
「我没有疑问。
　对任何事都……」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120900b31">
「是我输了。
　……因为我已经明白了。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120910a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　谦逊的话语条件反射地就要冲出唇间。
　只是碰巧——输在了实力上——若再比试一次又会怎
样——之类的。

　这才是愚弄胜负之意义与价值，侮辱对手的话语。
　在千钧一发之际察觉此事，并缄口不言，连自己都想
夸赞这样的自己。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120920a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120930b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　为给自己争取掩饰的余地，毫无意义地遥望柱子，
　保持这种姿势的同时用眼角的余光窥视床的方向——
她，在看着我。

　凝视。
　直射而来的视线，盯着我不放。

　……被那目光所注视的右脸颊，莫名地发烫。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120940b31">
「……可是……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120950a00">
「您讲。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120960b31">
「再稍微……慌乱一些也没关系吗。
其实……
　连自己都觉得意外……」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120970b31">
「拼尽全力，而后败下阵来…………我
没想到是这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　这位武者凝视着我，说出上面一席话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120980a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120990b31">
「第一次……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121000a00">
「哦……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121010b31">
「掺杂着个人感情战斗至此也是
……如此惨败也是。
　在幕军之时从未有过。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　军人应听从军命，严禁私战。
　军人战败之时即是横尸荒野之时。
　……原来如此，两者她应该都未经历过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121020b31">
「所以……
　只有你。」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121030b31">
「……将我打败之人……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121040a00">
「……不胜荣幸。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　勉强搜刮出不失礼数的话语，小声吐出。
　连自己都感到惊讶的是，其中充满了真情实感。
  

　反复回味今晨那一战，仍难以相信凭借自己之力侥幸
获胜。
　是幸运精灵眷顾于我，还是前世积了德。对于两者都
毫无半点头绪。

　不知道是否听到了那句轻声的答复……
　她微微地将被子向上拉至嘴边，继续说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121050b31">
「……还有……那个。
　也是我……允许看我肌肤的男人……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121060a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121070a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　——必须说点什么。
　
　然而，这次却完全说不出话来。

　只能遵从本能的指示而行动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121080a00">
「我去给您准备饭菜。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121090b31">
「啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　撤退。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆戸が開いて閉じる。しゅー、ぱたん。
	OnSE("se日常_建物_スライド閉める02",1000);

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121100b31">
「……」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121110b31">
「……凑斗……
　………景明………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度フェードアウト。戻り
//◆客間。統と景明
	PrintGO("上背景", 5000);
	CreateColorSP("絵黒", 4900, "#000000");
	OnBG(100,"bg033_湊斗家一室_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	WaitKey(500);
	FadeDelete("絵黒", 1000, true);

	StR(1000, @0, @0,"cg/st/st景明_通常_社員b.png");
	FadeStR(300,true);

	StCL(1100, @-60, @0,"cg/st/st統_通常_私服.png");
	Move("@StML*", 300, @60, @0, AxlDxl, false);
	FadeStCL(300,false);

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【統】
<voice name="統" class="統" src="voice/ma05/0121120b46">
「听好，知道吗，景明。
　首先，最重要的是饭菜的温度。必须
稍稍烫些。否则就会失去将其吹凉的理
由，乃是本末倒置。」

{	WaitAction("@StML*", null);
	Move("@StML*", 300, @600, @0, AxlDxl, false);
	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121130b46">
「吹的时候要注意自然地用嘴吹气，
这样效果才好。
　动作必须自然，但一定要让对方察觉！
听好了。这点比较难。」

{	WaitAction("@StML*", null);
	Move("@StML*", 300, @-600, @0, AxlDxl, false);
	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121140b46">
「最后一步！　伸出汤勺喂她吃。
　这时不要看手！　要看着对方的眼睛。
四目相交。没问题。洒出来也不要紧，
会有其他进展模式的。」

{	Shake("@StML*", 300, 6, 0, 0, 0, 1000, Dxl2, false);
	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121150b46">
「好了，试试看，儿子!!」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121160a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆統を外へ運び出してぺいっと捨てる景明。
//◆立ち絵を使った強引な演出で。
//◆客間に戻り

	CreateSE("SE01","se人体_動作_掴む01");
	Move("@StR*", 300, @-570, @0, Dxl2, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StML*", 300, 6, 0, 0, 0, 1000, Dxl2, false);
	WaitKey(300);
	Move("@StML*", 800, @1200, @0, Dxl1, false);
	Move("@StR*", 800, @1200, @0, Dxl1, true);
	DeleteStA(0,true);

//あきゅん「SE：要望：ぽーいと人を投げた。ギャグ音」
	CreateSE("SE02","se人体_動作_起きる02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(1000);

//◆テキスト無し。ボイスのみＳＥ扱いで流す
//	FwC("cg/fw/fw統_泣き.png");
//【統】
//<voice name="統" class="統" src="voice/ma05/0121190b46">
//「呜呜……呜呜呜。
//　儿子欺负我……」

	CreateVOICE("統","ma05/0121190b46");

	StR(1000, @30, @0,"cg/st/st景明_通常_社員b.png");
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121170a00">
「家母多有得罪。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121180b31">
「哪、哪里。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MusicStart("統",0,1000,0,1000,null,false);

	Wait(500);

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121200b31">
「那个……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121210a00">
「别在意。
　她应该饿了，马上就会离开去吃饭。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121220b31">
「嗯。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121230a00">
「请用。
　放心。温度正合适。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121240b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121250a00">
「……难道，您怕烫吗？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121260b31">
「不、不是。
　那我不客气了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　女首领小心翼翼地将伸来的舀着粥的汤勺含入口中。
  虽有些慌张失措，倒也没有被粥烫伤舌头的迹象。

　见她吃得下，我便又舀起一勺。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121270a00">
「味道不合您的口味吗？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121280b31">
「不是……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121290a00">
「真是抱歉。
　至少再讲究些配色就好了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　麦米参半的粥中，只打了一颗鸡蛋。
　无论是从味觉还是从营养角度来看，都不禁令人觉得
凄凉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121300a00">
「最近这镇里粮食不是很充足。
　实在是——」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121310b31">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　听了我的话，她像是觉得尴尬似的陷入沉默之中。
  果然是对我们的穷酸感到不满吗——<k>在考虑了三
秒钟这些不得要领的事情之后，我那愚钝的大脑终于觉
察到了。

　……糟了。
　这简直是<RUBY text="··">讽刺</RUBY>。

　在对造成粮食短缺担负部分责任的人面前说那种话，
必然会变成这样。
　但，刚才那完全是意外。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121320a00">
「……幕府的粮食管理依然很严格。
　据说大城市已逐渐开始缓和，但想
必过些时日才能恩降地方。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121330a00">
「再说，现在远比刚停战时好多了。
　怨言连连可能就太过奢求了。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121340b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　虽勉强自圆其说，但看来似乎没有效果。
　对于这无半点虚假的粗劣粥饭，首领似乎更难以下咽
了。

　……没办法。
　事已至此，不如将错就错吧。

　反正已经到了不可不说的地步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121350a00">
「首领殿下。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121360b31">
「……是。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121370a00">
「我请求您。
　请务必停止对镇子的掠夺行径。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　恳求。  
　刻意避免用约定相要挟的措辞。
  ——没有那个必要。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121380b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　我考虑到，即便不采取摊出借单的举动，她也会自己
记起，主动思考。不知为何，现在我如此坚信。因此，
语气慎重些较为合乎礼节。
　事实上，首领陷入沉思。

　但她的表情中夹杂着不少痛苦的神色。
　那一定是因为——忆起了约定，并正在考虑如何才能
守约。

　这倒也是。
　山贼团也并不是想找人麻烦才采取掠夺行径的。他们
也有自己迫不得已的难处。不会老老实实地停止掠夺。

　谁管你们这帮强盗的内情，如果这样说就完了……但
为了获得可行的解决方法，必须得考虑到他们的立场。
　我考虑片刻之后，再度开口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121390a00">
「现在，贵方所居住的山……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121400b31">
「……？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121410a00">
「如贵方偃旗息鼓，我们这里有无人耕种的
荒废农田。
　入住那里如何。」

{	FwC("cg/fw/fw首領_驚き.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121420b31">
「…………」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121430b31">
「要将我们……
　纳入这个镇里……？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121440a00">
「是。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121450b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121460a00">
「当然，现阶段这只是我个人的想法。
　但……如若贵方保证停止山贼行径，并在
将来为镇子提供粮食的话。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121470a00">
「便让诸位迁入本镇，并在获得足够的收获之前
向诸位提供生活物资。
　征得镇里居民的同意也不是不可能的。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121480a00">
「我将尽自己力所能及之事。
　家母也会协助我的。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121490b31">
「令堂……？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121500a00">
「就是方才那人。
　这样说或许有些狂妄，我们家在镇里
还是相当有影响力的。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121510a00">
「我凑斗家虽为平民身份，但皆斗本家的祖先
是统治这一带的领主。
　我们家有如此背景。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121520b31">
「……哦。
　这样啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　首领信服般地颔首，似乎不是对影响力云云，而是
针对别的事情。
　她的左手则像是无意识地按住伤口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121530a00">
「虽有少数不满的声音，整体趋势还是倾向于
追求和平与实益的。
　您统帅组织得当，且至今未发生过大型冲突，
这一事实也着实有利。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121540b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121550a00">
「但最重要的还是诸位的意愿。
　……您的意思呢。是否能接受我的提案？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　将该说之话说完，我便闭口不言。
　定睛凝神细看，发现首领眼中浮现出踌躇的神色。

　首先仅功利方面来说，这提案没有问题。
　对镇子来说，令人拍手称快。掠夺之不利化为废田
变宝之有利，这种好事哪里去找。至少具有将过去种
种一笔勾销的价值——很有可能。

　对沦为山贼的浪士集团也是如此。
　想必他们也没有乐观到认为能一直保持现在这种生
活方式。待中央安定之后，幕府必将开始着手治理地
方治安。

　最后等待他们的，就是被作为恶徒悬首示众罢了。
　但，若扔下武器融入镇中，便能避免这种悲惨的结
局。

　没有任何问题。

　……所以。
　如若这样还不肯接受提案的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121560b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　其中缘由是——
　
　首领的表情变化，早已在她开口前明示了一切。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121570a00">
「……首领殿下……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121580b31">
「我们是武士。
　凑斗景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　那声音，属于倚床而躺前的她。
　强硬而又冰冷——恰如装甲一般。

　装甲。
　……用来裹住脆弱肉身的铠甲。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121590b31">
「我们是武士。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　重复着这句话，毫无辩白之意。
  她隐忍着违约之耻。

　却没有祈求我的原谅。
　而是<RUBY text="··">摆出</RUBY>一副厚颜无耻的模样。
　
　所以，我无言以对。

　我明白。
　她是武士。

　是有尊严的武士。
　同时还是一名将帅。

　手下率领众多武士。
　她肩负着保护自己以及他们的尊严的重任——她是一
名将帅。

　她会抛弃武士之尊吗。
　不会。

　她会让部下抛弃武士之尊吗。
　不会。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121600a00">
「…………」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121610b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　我收起已凉透的粥，站起身来。
　身后没有传来一丝声音——只有视线追随着我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆廊下
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg053_湊斗家の庭_02.jpg");
	FadeBG(0,true);
	CreateSE("SE01","se日常_建物_スライド閉める01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　反手拉上纸拉门，猛地叹了口气。
　冷风令人无端地感到厌烦。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121620b31">
「……」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121630b31">
「……我……
　竟如此恬不知耻……」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121640b31">
「武士……
　若这就是武士的话。」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121650b31">
「……无聊透顶……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆翌朝
	ClearWaitAll(2000, 1000);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【統】
<voice name="統" class="統" src="voice/ma05/0121660b46">
「……是吗。
　进行得不顺利呢。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121670a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　吃早饭时。
　我将昨夜的情形汇报给养母。

　不知是否因此而令我食不知味。
　吃什么都觉得莫名的苦涩。

　将与山贼团的纷争和平收场……
　我明白这并非一朝一夕所能解决之事，需要不懈的
努力。

　所以昨夜之事并未使我太受打击，那之后我很快便睡
着了。
　……其实，在精神上似乎还是有些失望的。我在向养
母报告的过程中发现了这一点。

　不由得渐渐垂头丧气起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【統】
<voice name="統" class="統" src="voice/ma05/0121680b46">
「别急，景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　双手合掌表示结束进餐的养母，微笑着说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【統】
<voice name="統" class="統" src="voice/ma05/0121690b46">
「这种事要讲究循序渐进。心急吃不了热豆腐。
　想要爬富士山，是不可能顺顺利利地
一步登顶的。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121700a00">
「我明白……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　但即便如此，还是抑制不住内心的动摇，大概是因为
还有我<RUBY text="····">尚未理解</RUBY>之处。
　那就是，想凭借翅膀飞上富士山顶峰。若非武士，只
有坠落一途。

　欲速则不达。
　我告诫自己。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【統】
<voice name="統" class="統" src="voice/ma05/0121710b46">
「于是，今天做何打算？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121720a00">
「总之……先把早餐端过去，观察一下
首领殿下的伤情。
　万一伤口有化脓的趋势，
就得准备请医生了。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121730b46">
「嗯，是吗。
　……不过，你啊。开口闭口首领殿下
的，那位姑娘的名——」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばたん。光が暴れる音
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se人体_動作_瓦礫を押しのける");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121740a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆客間
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　切腹吧。
　……思来想去，定下这个想法。

　缓缓起身。
　这好歹也是武者的身体。由他所致的伤势虽重，却应
该未伤及重要器官。休息一天也恢复得差不多了。

　至少切腹还是没问题的。
　即刻。……不可能吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121750b31">
（首先，必须悄悄溜出去……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　如果在这里切腹，就太对不住人家了。
　并不仅仅是糟蹋一张榻榻米的问题。无论何种死法，
若自己死在这里，在山里待命的一众手下必将杀向镇里。

　那样就失去切腹自裁的意义了。

　先回山中，向弟弟他们说明实情。
　然后，为略表歉意，背负着两度违约之耻，切腹了断。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121760b31">
（武士之名吗……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　只能这样做了。
　就像昨夜以武士之姿拒绝他的提案那样。

　以武士之姿。

　何谓武士。
　——就是以武力支配民众之人。

　以武力镇压、以武力保护、以武力掠夺。
　这就是武士。

　再怎么堕落——
　也不会<RUBY text="··">依靠</RUBY>民众而活下去。

　昨夜，他说过。
　提供田地，让我们在那里生活。

　以示慈悲。
　以示善意。

　所以我才无法接受。
　依赖民众厚意，并非武士之道。

　若是以掠夺为生，被民众嫌恶、憎恨、轻蔑的活法尚可
接受。
　这也是武士道一途。虽最为下等、最为低劣，但终归属
于武士的范畴。

　即便落草为寇，尚能保持武士之姿。
　但——若抓住他伸出的援手，便不再是武士。

　不能称之为武士。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121770b31">
（……既如此。
　不当武士不就行了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　我如此想道。

　这肯定是上上策。
　对谁都好——对镇子来说，对自己和族人来说。

　可是，我明白。
　武士并不仅仅意味着一种职业。

　而是<RUBY text="····">身魂之形</RUBY>。
　做为武士出生、成长之人，永远都只能是武士。

　还有——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121780b31">
「武士就是暴力的化身。
　所以……决不可对他人摇尾乞怜。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　低吟信念。
　——没错。武士没有那种资格。

　我很清楚他的提案是考虑到山贼——对他们而言
除此之外别无他意的——前途而提出的。当然不仅
如此，还综合了与镇子之间的利害关系。

　若单单考虑对镇子有利，只需要求滚出去就行了。
　正因为明白这一点，才无法接受。

　如果只要求滚出去的话——当然不会接受，但也没
有必要烦恼。

　做为一族头领，为对属下尽职尽责，而厚颜无耻地
背弃约定，拒绝要求，这样只会令人唾弃和憎恶罢了。
　结果未变，却简单明朗多了。

　或——
　若他的要求是结果我一人性命的话。

　……我会毫不犹豫地接受吧。
　因为他赢了我——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121790b31">
（……是啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　发觉到了。
　拒绝他的提案最根本的原因。

　他赢了我。
　所以，如果被他夺去什么反而心安理得。

　然而，身为胜者的他却要向做为败者的我施舍——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121800b31">
（犹如草芥一般）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　就是这个。
　首先，是自己无法容忍。

　怎能因为接受他的慈悲……
　而使得自己沦为对他来说是不足挂齿、卑微低劣
的存在。

　做为<RUBY text="·····">对等的败者</RUBY>，自己必须对他有所给予。
　必须回报他的胜利。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121810b31">
（如果把这些话告诉他……
　他大概会说，那就接受提案吧）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　那么提案获益较多的不过是自己与族人。
　其次是这个城镇。……不是他。

　这种好事打着灯笼也找不到——对我们来说！
——如若唯唯诺诺地接受这种提案，就不得不承认
渺小至极的自己连给他提鞋都配不上。

　不值得他看上一眼，更不会留在他的记忆中，只不过
是无趣的物品罢了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121820b31">
（……因为我讨厌那样）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　这世上还有如此麻烦的女人。
　不经意间发自内心的感叹令我苦笑。

　果然除了切腹外别无他法。
　自己无法容忍不去回报他，然而又无以回报，固执
己见的女人只会碍事而已。

　至少可以亲手了断——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の暴れる音
	CreateSE("SE01","se人体_動作_物音立てる01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateVOICE("景明","ma05/0121830a00");
	MusicStart("景明",0,1000,0,1000,null,false);

/*=====================================
//◆ボイスのみ
	SetFwC("cg/fw/fw景明_過去.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790a]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121830a00">
「……光!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

=============================*/

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790b]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121840b31">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の部屋
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　光经常在日落后到深夜的这段时间内发作。
　上午，尤其在早晨发作实属罕见。

　而在这时，症状往往更为严重。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121850a00">
「十分抱歉，统大人！
　请按住她的腿！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　我实在是无法压制住妹妹狂暴的病弱躯体，遂向养母
求助。
　没有回应。但养母已在我出声前行动起来了。及时伸
手抓住她以奇怪形状弯曲的膝盖。

　刚想松口气的工夫。
　像是瞄准我注意力分散的那一瞬间，光抬起头——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【統】
<voice name="統" class="統" src="voice/ma05/0121860b46">
「景明！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121870a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　这简直要人命！

　千钧一发之际成功地抱住了妹妹的脑袋。
　用双手——尽可能迅速地、轻柔地——支撑着她那当
下强韧度甚至弱于健康人小拇指的头——

　那一刹那，仿佛枯枝被踩断般的断裂声——<k>
　
　…………没听到，真是谢天谢地。

　那一瞬间是发作最激烈之时。
　慢慢地、一点点地……光的狂态趋于稳定。

　我的心跳恢复平静，或许是在这之后。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121880a00">
「…………」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121890b46">
「……嗯，怎么说呢。
　逃过一劫？」

//【統】
<voice name="統" class="統" src="voice/ma05/0121900b46">
「结果非常好。
　干得好，儿子。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121910a00">
「……快一点……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121920b46">
「景明？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121930a00">
「……得……快一点……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121940b46">
「……」

//【統】
<voice name="統" class="統" src="voice/ma05/0121950b46">
「冷静下来。
　儿子。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121960a00">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121970b46">
「急于求成有时管用，有时却不管用。
　懂吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121980a00">
「……是。
　我明白……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121990a00">
「我去恳求首领殿下。
　……再一次……不管多少次。直到她
愿意停止山贼行径……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122000a00">
「只能如此……
　想让本家请来能医治光的医生，
只能如此……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0122010b46">
「……嗯。去吧。
　我来看着光。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122020a00">
「是。
　交给您了……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆庭？
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg053_湊斗家の庭_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆客間
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　在首领进餐期间，我绞尽脑汁思考对策。
　该怎么做，才能让她回心转意。

　无数个伎俩浮现在脑海中。
　紧接着又被全数否定。

　最终。
　只有唯一的办法可行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122030a00">
「求您了。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122040b31">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　我把头埋得比躺在枕上的首领更低。
　连榻榻米的纹路都看得一清二楚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122050a00">
「弃刀持锄般的生活，非武士应选之道。
　对此我心知肚明。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122060a00">
「也领会颇深。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　想起昨夜得知此事后她那简短的答复。
　令人无以反驳。

　所以，我并不打算重新驳斥她。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122070a00">
「但是。
　我斗胆——恳求您。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122080b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122090a00">
「为了这个镇子。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　「为了诸位」，这话我没能说出口。
　因为已有结论：<RUBY text="·······">于他们毫无助益</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122100a00">
「拜托您。
　请停止山贼行径。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　毫无技巧，只是一味地恳求。
　叩头恳求。

　别无他法。
　就算想与之争论一番，结论却早已下定。

　协调镇子与他们之间的利害关系失败了。
　因为他们不会因利益而动。

　他们是武士。
　以武力示人。

　如若他们想在这镇里施展武士之威，毋庸置疑，只能占
据山头行贼人之事。
　被正规军放逐的他们，只能如此。

　结论已定。
　所以，<RUBY text="··">恳求</RUBY>。

　想要化不可能为可能。
　只能请求、恳求。唯此一途。

　恳求他们卑躬屈节。
　恳求他们舍弃武士身份。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122110a00">
「求您……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122120b31">
「……说完了吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
　首领终于开口。
　话语冰冷。

　虽是——冷言冷语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122130a00">
（……？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
　我伏首跪着，在心中思索。
　首领所说的话，若用文字来形容，就是冷彻。

　然而她的口气，却似乎欠缺着与内容相应的冷淡。
　虽隐约有些责备之意，却与冷淡不同。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122140b31">
「说完了吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122150a00">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
　对于她以相同的语调发出的质问，我迷茫着回应道。
　不明白她有何意图。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122160b31">
「……没有……
　其他该说的了吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122170a00">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122180a00">
「……不。
　没有。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
　听了我的回答，她深深地叹了口气。
　她——若我没有会错意的话。像是发自内心地失望。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122190b31">
「……呵呵……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122200a00">
「……？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122210b31">
「凑斗景明。
　你说你家只是一介平民。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122220a00">
「是的。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122230b31">
「骗人。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122240a00">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
　……这是何意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122250b31">
「你也是武士。
　<RUBY text="·······">虽仅有无用之处</RUBY>。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122260a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122270b31">
「无论如何都无法接受他人的施舍……
　从旁观者的角度来看这种人。」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122280b31">
「竟如此……不堪入目。
　我是多么无知。原来如此……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
　这位巾帼自言自语地呢喃着，微笑着。
　犹如自嘲一般。

　……不知其真意为何。
　她——到底在说什么。

　又知道些什么——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122290b31">
「武力乃武士之根本……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122300a00">
「？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122310b31">
「武力已然败于人……
　我……和我的兵将们。或许舍弃武士之身
才是正道。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122320a00">
「……首领殿下？」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122330b31">
「凑斗景明。
　我来负责说服手下兵将。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122340b31">
「相对的……
　我要你保证能接纳我们一派。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122350a00">
「——」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122360a00">
「是……是。
　我……定将负责到底。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
　基本上反射性地应答。
　但大脑还未能跟上事态的进展。

　——怎会如此。
　有种福自天来的感觉。

　不可能吧？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122370b31">
「烦劳一下。
　我所穿的衣物中，应该有文具和纸张。」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122380a00">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
　听命从叠放她随身物品的地方拿出她要求的东西，并
递了过去。
　她迅速地在纸上写了些什么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122390b31">
「给。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122400a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
　接过她递来的纸。
　上面所写的内容极为简洁。

　接受我的提案。
　不再行掠夺。
　而且还画了押。

　……正是我所求之物。
　这才是我梦寐以求之物。

　有了这个——
　光就有救了!!

　……然而，为何。<k>
　为何，突然……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122410a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122420b31">
「……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122430a00">
「……恕我糊涂。
　未曾想被您听去。」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122440b31">
「你指什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
　凛然。
　而又莫名令人感怀的语调，首领淡淡回应道。

　将宣誓书小心地放在一旁。
　指尖对齐，我再次恭恭敬敬地行了个大礼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122450a00">
「感激不尽。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122460a00">
「……感激不尽……！」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122470b31">
「无需多礼。
　我只不过是接受你的交易罢了。」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122480b31">
「……我族的归宿。
　就交付于你了。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122490a00">
「是……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_013.nss"