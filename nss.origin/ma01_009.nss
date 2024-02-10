//<continuation number="350">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_009.nss_MAIN
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
	#bg014_鎌倉繁華街_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_010.nss";

}

scene ma01_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_008.nss"

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg014_鎌倉繁華街_01.jpg");


	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(0,true);
	FadeStR(0,true);

//◆飲み屋通り
	SoundPlay("@mbgm30",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


	SetNwC("cg/fw/nwおっちゃん.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090010e009">
「呀，那速度可是相当快啊。
　像这样……咻地一下！」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090020b43">
「往竹林深处？」

{	NwC("cg/fw/nwおっちゃん.png");}
//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090030e009">
「啊啊。像是要穿过竹林似的。
　像是黄鼠狼啊一类的东西似的灵敏，
可是……」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090040b33">
「可是？」

{	NwC("cg/fw/nwおっちゃん.png");}
//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090050e009">
「那个……真的不是人类吗？
　从那外形来看……但是，不可能是人类的
动作吧，那个。」


//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090060e009">
「不过也可能是猿猴，多半那是……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090070b56">
「…………」

{	NwC("cg/fw/nwおっちゃん.png");}
//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090080e009">
「啊……不。没事。
　唔嗯。是从山上下来的猿猴之类的吧。
经常有的，那种傻瓜。是不是来挖
竹笋的啊？　哈哈。」

//【ｅｔｃ／おっさん】
<voice name="ｅｔｃ／おっさん" class="その他男声" src="voice/ma01/0090090e009">
「……这些情报够了吧？
　叔叔我啊，那啥，也很忙的。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090100b56">
「好的……谢谢。
　非常感谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　目送着这附近酒馆的常客大叔脚步匆匆地离去。
　我们沉默着，互相对视。

　竹林附近的小酒馆街。
　在打听三天前夜里的事情时，听说有人看到了
什么奇怪的东西，追寻下去找到的就是刚才那个人。

　那个大叔最后欲言又止地中断了对话，
含糊其辞。不难想象。
　
　——异样敏捷奔跑的人影。

　总而言之，似人而非人的东西。

　武者。

　而提到武者，唯有六波罗。
　这是因为不属于六波罗的普通人持有剑胄是被禁止
的行为。根据终战后ＧＨＱ立刻实施的剑胄搜查政策，
六波罗以外的剑胄几乎全部被没收。

　就算有将剑胄隐匿起来免遭没收的人，最后也会被揭发
——又或者发起反抗终被消灭，结果性命和剑胄一起丢掉。
　曾一时间各地频发此类事件，大概也已经销声匿迹了吧。
最近几乎没再听说。

　现在，至少在镰仓周边，六波罗对武者和
剑胄的垄断管理完美无缺。
　
　例外……只有竞技用剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090110b43">
「……可以认为结果就是
装甲骑手偶尔在这里练习吗？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090120b56">
「的确好像可以锻炼转弯能力。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090130b33">
「田中雷帝也越来越大度了呢。还把竹林提供给
事故频发的装甲竞技作练习场使用。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　那是不可能的。
　说到底，装甲骑手在获得认可的竞技场以外的
场所进行装甲活动就是不被许可的。

　……事态大致清楚。
　那个大叔如果没有看错，三天前的夜晚，
竹林里有六波罗的武者。

　正是律消失的那个时候！

　奴隶贸易。
　腐臭的言语袭上后脑勺。

　直到昨夜的阶段，那还只不过是可能性的一种。
　所以不用直视那可能性所能带来的令人恐惧的无措。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090140b56">
（真的……被六波罗抓走了吗。律）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一下现实感高涨的推测，明明应在每个人
的脑中都浮现出来，却无人开口。
　理由和之前的大叔相同。

　无法抵抗六波罗。
　明明无法抵抗……却还要阻挡吗。

　六波罗。
　原本便不是令人舒畅的存在。但感受到
如此程度的沉重感还前所未有。

　食材限制、劳役、临时税。即使压迫
无休无止，对我们来说还在能够忍耐的
范围。
　至此为止。

　如今。这压倒性的暴力，正在夺走友人
——不妨说已然夺去。
　
　必须想办法。

　却毫无办法。

　无法反抗六波罗。
　六波罗作为大和最强者，
能与之匹敌的力量无处可寻。

　正义的力量无处可寻。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090150b33">
「……怎么办才好呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　大概是已疲倦于装出表面的轻松吧。小夏
终于吐出沉郁的声音。
　我找不到回应的语言。

　怎么办才好呢？
　是祈祷虚无的正义神明降临？
　还是现实一点，祈祷灾难之神对六波罗
降下惩罚？

　怎样都好。
　没多大区别。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090160b43">
「……去调查竹林吧。
　首先确认事实。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090170b56">
「确认了又能怎样啊。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090180b43">
「雄飞……」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090190b56">
「不是什么都做不了吗……如果敌人是六波罗
的话！　调查了竹林，找到武者绑架律的证据，
然后又能怎样啊？
　去找六波罗算账吗！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　见鬼……啊啊可恶，真是差劲。
　我到底在发什么火。
　蠢货一样。可恶。

　确认事实是必要的。
　忠保很正确。一如既往。

　事情还没有定局。
　必须去确认律究竟怎样了。

　但是好害怕。
　害怕找到毋庸置疑的证据，却明白无可奈何，
清楚地感到自己的无力。

　如果现阶段放弃，就可以去依赖幻想
……律只是闲逛去了什么地方，正快活着呢。
　这么想着的自己存在着。

　懦弱。
　啊啊。
　几乎要流出眼泪，这丢脸的懦弱。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090200b43">
「雄飞。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090210b56">
「……抱歉。你说得对。
　总之确认事实是必须首先解决的。乱嚷乱喊
之后再说。」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090220b56">
「去竹林吧。
　想点法子，避开爷爷的眼睛。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090230b43">
「不，不是。雄飞，看那个。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090240b56">
「嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　砰砰砰，在肩膀上急切的手指敲打催促下，
我抬起了低沉的脸。
　忠保和小夏齐刷刷地看着同一方向。

　追随他们的视线。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090250b56">
「……那是。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090260b43">
「不会……是那个吧。」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090270b33">
「就是，那个吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	DeleteStL(300,true);

//<voice name="雄飛" class="雄飛" src="voice/ma01/0090280b56">
//<voice name="忠保" class="忠保" src="voice/ma01/0090290b43">
//<voice name="小夏" class="小夏" src="voice/ma01/0090300b33">

	CreateVOICE("雄飛","ma01/0090280b56");
	CreateVOICE("忠保","ma01/0090290b43");
	CreateVOICE("小夏","ma01/0090300b33");

	SetBacklog("「暗黑星人……」", "voice/ma01/0090280b56", 雄飛);
	SetBacklog("「暗黑星人……」", "voice/ma01/0090290b43", 忠保);
	SetBacklog("「暗黑星人……」", "voice/ma01/0090300b33", 小夏);

	MusicStart("雄飛",0,1000,0,1000,null,false);
	MusicStart("忠保",0,1000,0,1000,null,false);
	MusicStart("小夏",0,1000,0,1000,null,false);


	SetFont("@黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	CreateText("text01", 20001, 50, 20, 700, 500, "「暗黑星人……」");
	Fade("text01", 0, 0, null, true);
	Request("text01", PushText);
	Request("text01", NoLog);
	SetVertex("text01", 0, 0);
	SetAlias("text01","text01");
	Rotate("text01", 0, @0, @0, 90, null,true);
	Move("text01", 0, 317, 134, null, true);

	CreateText("text02", 20001, 50, 40, 700, 500, "「暗黑星人……」");
	Fade("text02", 0, 0, null, true);
	Request("text02", PushText);
	Request("text02", NoLog);
	SetVertex("text02", 0, 0);
	SetAlias("text02","text02");
	Rotate("text02", 0, @0, @0, 90, null,true);
	Move("text02", 0, 828, 134, null, true);

	SetFwR("cg/fw/fw小夏_驚くa.png");
	SetFwC("cg/fw/fw雄飛_驚くa.png");
	SetFwL("cg/fw/fw忠保_驚き.png");

	FadeFwR(200,false);
	FadeFwL(200,false);

//（雄飛）（忠保）（小夏）
//「「「暗黑星人……」」」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	Fade("text01",0,1000,null,false);
	Fade("text02",0,1000,null,false);}
//（雄飛）（忠保）（小夏）
「暗黑星人……」

/*
//◆声用一時退避
//◆同時発声
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090280b56">
「暗黑星人……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090290b43">
「暗黑星人……」

//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090300b33">
「暗黑星人……」
*/
</PRE>
	SetTextEXC();
	Request("@text0140", PushText);
	Request("@text0140", NoIcon);
	Request("@text0140", NoLog);
	TypeBeginEXIO();//―――――――――――――――――――――――――――――

	CreateColorEX("暗転", 10000, "#000000");
	Fade("暗転", 800, 1000, null, true);

	DeleteStR(0,false);
	DeleteStL(0,false);

//◆湊斗景明
	StC(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStC(0,true);

	FadeDelete("暗転", 800, true);

	Wait(1000);

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　那是一个阴暗的男人。

　仔细看的话还算年轻，再进一步端详也长了张
不算太坏的脸。但这些都被抛到了地平线彼方。
第一印象只是单纯的，黑暗。

　仿佛只要被他轻轻一碰，正值青春的年轻人就会突然
改换容貌变成被生活所累的中年大叔。这种程度的萧条感。
　简直如同恶魔般的存在。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("暗転", 10000, "#000000");
	Fade("暗転", 800, 1000, null, true);

	DeleteStC(0,false);

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(0,true);
	FadeStR(0,true);

	FadeDelete("暗転", 800, true);

	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090310b43">
「……怎——么——办呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　忠保用奇怪的语调说道。
　这男人难得的有些腿软。

　但也不是不能理解。让人难以接近的<RUBY text="暗黑气场">暗黑瘴气</RUBY>，
在这个距离已然能深深体会。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090320b33">
「要试着……打打招呼看么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我是绝对不去的拜托你们了。小夏的话里
含着这样的微妙语意。
　我也不想去。

　没办法，只能提出妥协方案。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0090330b56">
「总之……先看看情况？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0090340b43">
「没有异议。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0090350b33">
「赞成。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	DeleteStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　全员一致决定，把麻烦的问题向后拖延。
　我们保持着距离，尾随起那名一边散发着足以
让路人后仰的暗黑波动，一边行走的男人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 30000, "#000000");
	DrawTransition("暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);


}

..//ジャンプ指定
//次ファイル　"ma01_010.nss"

