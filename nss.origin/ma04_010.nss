//<continuation number="1120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_010.nss_MAIN
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

//嶋：確認用
//$Ichizyou_Flag = 5;
//$Kanae_Flag = 5;

	RouteChicker();

	//▼ルートフラグ、選択肢、次のGameName
	if($RC_N["一条"] < $RC_N["香奈枝"]){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($RC_N["一条"] > $RC_N["香奈枝"]){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else{

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}

	$PreGameName = $GameName;

	$GameName = "ma04_011.nss";

}

scene ma04_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_009.nss"


//◆片瀬海岸
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　今天的海岸十分寒冷。
　与昨天比起来，真是天壤之别。虽然
这种温度也还说不上与日历记载的季节相符，
但已经冷到穿着短袖会感到不适了。

　怪不得本地人会对这非比寻常的温度变化
唉声叹气。据我所闻，这种现象还是频频
发生的。
　……自从江之岛<RUBY text="····">出现异常</RUBY>以来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆分岐。一条の好感度が高ければ０９Ａ。
//◆香奈枝の好感度が高いなら０９Ｂ。

}



scene ma04_010.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//――――――――――――――――――――――――――――――
.//●０９Ａ

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm17",0,1000,true);
	CreateTextureEX("絵背景100", 5100, Center, Middle, "cg/bg/bg040_江ノ島全景_01.jpg");
	Fade("絵背景100", 0, 1000, null, false);
	FadeDelete("上背景", 600, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100010a02">
「要等到夜里吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100020a00">
「就这么办吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我与一条两人并列而站，眺望小岛。
　夜里潜入。本应该趁着白天，尽可能多地搜集情报。
但今天不见海水浴客的身影，面向他们的店面也门窗紧闭。
看这状况，也不适合四处打听。

　虽然我很心疼空耗掉的时间，现在也无可奈何。
　我们只能不急不躁地等待。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(0,true);
	FadeDelete("絵背景100", 500, false);

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100030a02">
「……真清寂呀。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100040a00">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一条并非在告诉我她的心理状态。这一点
我立刻就明白过来了。
　她指的是周围的状况。

　若是太阳还未登上天顶的海岸，应该
满是勤于打渔的人，热闹非凡才对。
　可如今却没有这番光景。这里只有未出海的船只，
呆呆凝望海面的几位渔人——以及清寂的气氛。

　这就是如今片濑海岸的真实模样吧。
　昨日那般喧嚣，只不过是与这片地区毫无关联的
人们所进行的演出。

　明媚之地，江之岛被夺走了，
而其窗口也正日渐衰竭。
　此乃何故？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100050a02">
「……不可原谅……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　一条轻声自语。
　不知为何，这句话传入我耳中。

　我大概早就很在意了。
　这个少女不时透露出尖锐的敌忾心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100060a00">
「……一条你……」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100070a02">
「什么事？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100080a00">
「你憎恨六波罗么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　她看起来很困惑。
　因为问题太过唐突了吧。

　但她只迷茫了一瞬间。
　无疑是因为对她来说，这件事
根本不值得再重新扪心自问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100090a02">
「我憎恨啊。
　因为<RUBY text="······">他们是错误的</RUBY>，不是吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100100a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我无法反驳她的指责。
　
　——是的。六波罗的暴政是错误的。

　若有意找茬，任何政府都能被挑出一堆毛病；
　六波罗这种统治者毕竟也聊胜于无；
　军事专政也是现今世界形势所迫。
　……六波罗大有辩解的余地。

　然而，那种自作聪明的歪理在这锐利如针尖，
毫无迷茫的弹劾面前，又能起到什么防卫作用呢？
　无论怎样掩饰，他们都的的确确是错误
的——他们的的确确走上了歪道。

　名为残忍的歪道。

　他们无法当面谴责幕府的错误，所以产生了无力感
与屈辱感。狡猾的辩解其实并不是为了守护幕府，
而是为从这种无力感与屈辱感中保全自己才存在的。
　少女对这些一律不屑一顾。

　她既不逃避敌人的邪恶，也不忌讳自己的软弱，
只是将真实贯彻到底。
　她的强劲称得上是异常。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100110a00">
「凭你的力量，是打不倒六波罗的。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100120a02">
「……是的。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100130a00">
「即使如此，你还是憎恨么？」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100140a02">
「是的。
　因为两者之间毫无关系。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100150a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　——毫无关系。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100160a02">
「我只是对自己的软弱感到懊悔。
所以我也希望拥有战斗能力。
　不过……哪怕我从今往后一直如此软弱，
也还是会憎恨着六波罗。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100170a02">
「因为他们仍然是错误的。
　我绝对不承认六波罗。我要否定他们。
这与力量的有无没关系。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　——因为必须战斗所以战斗，
　这个决断，没有必要计算胜负。

　我回忆起这一句话。
　这是曾几何时，某人说给另一人听的，不逊之言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100180a00">
「这样啊，一条。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100190a02">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100200a00">
「你要和六波罗战斗，是吗？
　无论力量相差多么悬殊。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100210a02">
「是的。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100220a00">
「我也是。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100230a02">
「……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100240a00">
「敌方力量确实凌驾于我之上。
　我们之间有着压倒性的差距。甚至可以说
把两者相提并论，就很愚蠢。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100250a00">
「但是……我不得不战斗。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100260a02">
「……与银星号？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100270a00">
「是的。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100280a02">
「说实话……我很难置信。
　对方竟会比凑斗先生还强大……
而且竟然还无法相提并论。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100290a00">
「这是事实，并非无谓的谦逊。
　过去，我曾数次
拔出太刀与对方对峙——」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100300a00">
「可是从未能伤及对方一丝一毫。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100310a02">
「……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100320a00">
「即使如此，我也要制裁对方。
　力量不足并不能成为逃避必然之战的借口。
如果战斗乃必然之事，那么本就
无可逃避。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100330a00">
「我们只能去得到足以将敌人粉碎的力量。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100340a02">
「…………」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100350a02">
「明白了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100360a00">
「一条……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我凝望着少女的面容，
　及，潜藏于她瞳孔深处的危险细刃。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆照れ
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100370a02">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100380a00">
「你也许只有在这些地方上，
　与我很相似。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　大概正因如此，
　我不觉说出了类似预言的话语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100390a00">
「你早晚会得到力量的吧。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100400a02">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100410a00">
「那份力量……
　我祈祷着，那份力量是与你相称的
<RUBY text="····">正义之力</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_011.nss"

}


//――――――――――――――――――――――――――――――
.//●０９Ｂ
scene ma04_010.nss_ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100420a03">
「景明大人，您肚子饿不饿？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100430a00">
「还不是很饿。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100440a03">
「那再过一会儿，我们就集合，
去吃午饭吧。
　我还想吃一次江之岛
盖饭。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100450a00">
「……在下有些疑惑，海螺鸡蛋盖饭与江之岛
是如何扯上关系的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我沿着海岸线行走。
　与我同行的只有香奈枝小姐。
其他人分头行动了。

　我们不是在散步，而是打算收集情报，为入夜后做准备。
不过看来这份意图会落空了。
　我们有意四处打听，可是人太少了。这里很冷清。
大概不合时宜的海水浴客都被这凉意吓跑了。

　差不多是时候告一段落了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100460a00">
「我们回去吧。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100470a03">
「再等一会儿，看看海吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100480a00">
「我们可以边返回边看海。」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100490a03">
「啊嗯。你那一脸天然地践踏女人心的
死性子也好迷人……
　我晕我晕，我晕啦。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100500a00">
「您没事吧？　大尉阁下。」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100510a03">
「是景明大人的魅力迷惑了我。
　这就是……恋爱吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100520a00">
「是错觉。
　请您清醒一些。」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100530a03">
「我只要像这样守在景明大人的身边，
心中悸动就愈见激烈了……啊啊。
我到底是怎么啦？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100540a00">
「有可能是一种心脏疾病。
　请接受医生的诊断。」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100550a03">
「不对……！
　这是侵蚀我内心的荆棘园。
我只要听到景明大人的肺腑之言，
一定就能……！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100560a00">
（肺腑之言……）

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100570a03">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100580a00">
「您精神错乱了。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100590a03">
「我明白了。够了。
　那我们稍微休息一下。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100600a00">
「好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　我们停下脚步。
　四周空无一人。

　也许这正方便了我们。
　因为我知道，她有话想对
我说。

　我伴着沉默，静静等待。
　不久，预料之中的事情发生了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100610a03">
「景明大人。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100620a00">
「是，大尉阁下。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100630a03">
「还会发生战斗吧。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100640a00">
「……是的。
　恐怕。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　无论江之岛上发生的事与银星号
有无关联。
　查明其中的秘密——就意味着
无法避免不和平的冲突。

　若想要曝光六波罗所隐瞒的事情，
又平安无事地撤退，这未免太过乐观了。
　不过倘若真能如此，就再好不过了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100650a03">
「还会有人牺牲吧。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100660a00">
「……是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　她语调轻飘地向我扔出锐利的荆棘。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100670a03">
「景明大人……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100680a00">
「……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100690a03">
「您喜欢杀人吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　她的问题使我哑口无言。
　我连呼吸都忘了。

　大鸟大尉窥望着我。
　她谨慎小心——即使双瞳被深深拉下的眼睑所隐藏，
我也能由她的嘴角看透意图。她的嘴角弯出了
<RUBY text="·······">毫无笑意的微笑</RUBY>。

　她在窥视。
　窥视我的——内心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100700a00">
「……我不喜欢。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100710a03">
「你讨厌吗？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100720a00">
「……是的。
　我很厌恶。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100730a00">
「杀人行为是丑陋的。
　我绝对——」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100740a00">
「无法原谅。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　矛盾。
　杀人犯说这种话，很不合理。

　但大尉没有指摘出这种矛盾。
　她只是笑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100750a03">
「我……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100760a00">
「……」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100770a03">
「我喜欢杀人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　她笑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100780a03">
「掠夺他人生命的瞬间……
　我抑制不住地感到快乐。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 5100, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	Zoom("絵背景100", 0, 2500, 2500, null, true);
	Request("絵背景100", Smoothing);

	SetShade("絵背景100", HEAVY);
	Move("絵背景100", 0, 100, -75, null, true);

	CreateTextureEX("絵背景200", 5200, 213, -681, "cg/st/resize/st香奈枝_射撃_私服a_m.png");
	Move("絵背景200", 0, @-100, @0, null, true);

	Move("絵背景100", 1200, -15, -75, null, false);
	Move("絵背景200", 1000, @+100, @0, null, false);
	OnSE("se戦闘_銃器_構える02",1000);

	Fade("絵背景100", 300, 1000, null, false);
	Fade("絵背景200", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　不知何时。
　她从衣摆中取出长枪，并将其前端
对准了我。

　对准了我的心脏。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100790a03">
「真遗憾。
　我和景明大人兴趣不合呀。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100800a00">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100810a00">
「嗜好因人而异。
　不过我认为您的兴趣有些无聊。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100820a03">
「你这么认为吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100830a00">
「是的。
　我还认为。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100840a03">
「什么？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100850a00">
「您该知羞耻了。」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100860a03">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　大鸟大尉噗嗤笑出了声。
　她急忙用手遮住唇际——但还是笑个不停。

　普通人应该已经爆笑不止了。
　但她所受到的教育大概不允许
她做出这种举动吧。

　嗤嗤嗤嗤地，
　她笑着。

　很刺耳。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100870a00">
「博您一悦，在下诚感光荣。
　不过我无意开玩笑。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100880a03">
「是啊……真是的。
　刚才那句话让我高兴得不得了。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100890a03">
「为表谢意……我也给你讲一个故事。
　一个有趣的故事。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100900a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100910a03">
「很久很久以前……
　某座深山中，住着一只鬼。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100920a03">
「鬼非常非常强大，连野猪与狗熊
都不是鬼的对手。
　不知何时起，鬼被称作山的主人，
为众人所惧怕。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100930a03">
「终于，鬼也盯上了人的村庄。
　它想让人类也尝尝自己的
厉害。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100940a03">
「鬼下了山，在山麓的村庄大闹一场。
　它杀死男人，吃掉孩子，侵犯女人……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100950a03">
「它<RUBY text="····">满心愉悦</RUBY>地把村庄破坏殆尽。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100960a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100970a03">
「但是，统治村庄的领主是一位勇敢的武士。
　他为了保护村庄，毅然与鬼
对峙。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100980a03">
「鬼很强大，领主无数次败退，
遍体鳞伤。
　可是领主仍旧不言放弃地战斗着。
最后，他得到山中仙人的帮助，打倒了鬼。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100990a03">
「大家都欣喜不已。
　可不久就注意到了一件麻烦事。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101000a03">
「还不到三个月，被鬼侵犯过的女孩子们的肚子
就鼓起来了。
　没错。她们怀上了鬼的孩子。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101010a03">
「这样下去，又会生下鬼。
　无奈，领主只能<RUBY text="··">哭着</RUBY>把女孩子们集中起来，
烧死了。这是仙人的提议，
说是为了净化被鬼玷污的灵魂。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0101020a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101030a03">
「就这样，村庄恢复了和平。
　领主被崇敬为活神仙，据说
死后还被供奉在神社里，成为了真正的神。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101040a03">
「可喜可贺，可喜可贺。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　大尉闭上嘴巴。
　四周陷入沉寂。

　沉默。
　静寂。

　她的双唇开始颤抖。
　仿佛引起痉挛一般。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101050a03">
「噗。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0101060a00">
「……」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101070a03">
「咯咯……啊哈哈。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101080a03">
「啊哈哈哈哈哈哈哈哈！」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101090a03">
「啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆空？
//◆銃声ずぎゅーん。
//◆ちょっと間を取って
	SetVolume("@mbgm*", 1, 1, null);
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");//ダミー注意
	CreateTextureEX("絵背景1000", 6100, Center, -4873, "cg/bg/bg202_旋回演出背景山a_01.jpg");

	Move("絵背景1000", 1000, @0, @800, Dxl2, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵背景1000", 100, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	WaitKey(1000);
	SetVolume("@mbgm*", 4000, 1000, null);
	FadeDelete("絵背景1000", 2000, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101100a03">
「……好了。
　我们差不多该走了。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101110a03">
「景明大人。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0101120a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　我用指尖轻抚一下自己颈项上的烧伤。
　点了点头。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_011.nss"

}



