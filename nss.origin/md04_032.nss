//<continuation number="810">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_032.nss_MAIN
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
	#bg009_鎌倉住宅街a_01=true;
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_033.nss";

}

scene md04_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_031.nss"

//◆鎌倉
//◆司令部
//◆サシュアント
//◆横書き

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg013_鎌倉俯瞰a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	WaitKey(1500);

	OnBG(101, "bg018_知事執務室_01.jpg");
	FadeBG(2000, true);

	Wait(500);

	StR(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	FadeStR(300, true);


	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320010b25">
「ＧＨＱ内部情况如何？」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆アップ
	DeleteStR(150,true);

	CreateTextureEX("サシュアント", 1000, -40, -70, "cg/st/resize/stサシュアント_通常_私服ex.png");
	Request("サシュアント", Smoothing);
	Zoom("サシュアント", 0, 900, 900, null, true);

	SetVertex("サシュアント", 520, 288);
	Zoom("サシュアント", 150, 1000, 1000, Dxl1, false);
	Move("サシュアント", 150, @0, @13, Dxl1, false);
	Fade("サシュアント", 150, 1000, null, true);

	SetFwH("cg/fw/fwサシュアント_叫び.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320020b25">
「到底怎样了?!」

{	FwH("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320030a03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆引き

	Zoom("サシュアント", 150, 900, 900, Axl1, false);
	FadeDelete("サシュアント", 150, true);

	StR(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300, false);
	FadeStR(300, true);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320040b25">
「怎样了？」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320050a03">
「嗯，这个，是的。
　不安确实正在扩散。」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320060a04">
「因为维罗少将和卡农中佐突然失踪，
而伯爵宣布担任代理指挥。
　混乱当然不可避免。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320070a03">
「也没有人解释这件事。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320080b25">
「唔。的确是没办法的事。
　但是，<RUBY text="··">解释</RUBY>就相当于雷管。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0320090b25">
「新大陆独立派在ＧＨＱ之中到底渗透到何种
程度……在调查清楚之前，公布实情太危险了。」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320100a03">
「是的，的确如此。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320110b25">
「就现状而言，他们虽然在不安和怀疑中煎熬，
却也还不至于爆发。」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320120a04">
「正是如此。
　暂时……还不至于。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320130b25">
「与<RUBY text="将军">驻军总司令官</RUBY>联系上了吗？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320140a03">
「是的。
　回归手段也安排好了。」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320150a04">
「最迟在明天或后天就能回来。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320160b25">
「那么，我便没有必要强行插手整顿ＧＨＱ。
　就让本来的负责人尽责吧。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0320170b25">
「在此之前就由我来维持现状。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320180a03">
「我也认为按这方针办比较好。
　不过，与六波罗军的战斗打算怎么办
呢？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320190b25">
「……」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320200a03">
「无谓地继续战争，无谓地增加死者……
这实在不是令人欣喜的事。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320210b25">
「人们的死去可不是无谓的，大鸟大尉。
　我相信这一点。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320220a03">
「……」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320230b25">
「但是……没错。
　许多人的死亡并非他们所愿。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0320240b25">
「若能阻止的话，当然是阻止比较好。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320250a03">
「是的。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320260b25">
「有什么方法吗。
　战争这东西，虽然可以单方面擅自开始，
结束时却需要双方达成协议。」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320270a03">
「……最简单的方法。
　将协议必要的对象完全抹杀。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320280b25">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320290a03">
「锻造雷弹……
　您要用吗？　撒修安东伯爵。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320300b25">
「真是简单的解决方法。
　非常，非常简单。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320310a03">
「嗯。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320320b25">
「还是别这么做吧。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320330a03">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320340b25">
「我有条件地容许战争。
　但无论是什么条件，我都无法容许大屠杀。」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320350a03">
「即使战争的结果归根结底与大屠杀是相同的？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320360b25">
「是的。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0320370b25">
「战争并无好坏之分。
　但是以和平为前提的战争，与只是以下一场
战争为前提的战争，是有区别的。」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320380b25">
「假如以锻造雷弹实行前所未有的大屠杀，
从而让这场战争终结的话——大和的人们会
茫然自失，屈服……
　然后会在五十年后重新站起来吧。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0320390b25">
「而在此后千年，都会活在憎恨中吧。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320400a03">
「…………」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320410b25">
「我们是国际统一共荣联盟。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0320420b25">
「不能在全世界撒下憎恶与纷争的种子，我们
必须撒下的是和平与繁荣的种子。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320430a03">
「是的。
　……为了<RUBY text="·······">女王陛下的和平</RUBY>，
与<RUBY text="·······">女王陛下的繁荣</RUBY>。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320440b25">
「即使大和是未开化的不发达国家，即使在这
里生活的是劣等人种，这也不能例外。
　倒不如说，正因为如此……才该用我们的先
进文明引导他们走上正确的道路。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0320450b25">
「这是我们的使命。」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320460a03">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320470b25">
「难道不是吗？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320480a03">
「是的，伯爵。
　正如您所言。」

{	DeleteStA(300,false);
	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320490a03">
（……但是假如对大和国民做问卷调查的话，
我想大概九成以上会答道“谁要你多管闲事”
吧）

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320500a04">
（吐槽自重。
　我们早就知道他是这样的人了吧）

{	FwH("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320510a04">
（在联合国总部他算好的了）

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320520a03">
（我知道。
　不管推导过程如何，
结论总归是对我们有利的……）

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0);//―――――――――――――――――――――――――――――

//◆サシュアントアップ
	DeleteStR(150,true);

	CreateTextureEX("サシュアント", 1000, -40, -70, "cg/st/resize/stサシュアント_通常_私服ex.png");
	Request("サシュアント", Smoothing);
	Zoom("サシュアント", 0, 900, 900, null, true);

	SetVertex("サシュアント", 520, 288);
	Zoom("サシュアント", 150, 1000, 1000, Dxl1, false);
	Move("サシュアント", 150, @0, @13, Dxl1, false);
	Fade("サシュアント", 150, 1000, null, true);
	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320530b25">
「…………」

{	FwH("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320540a03">
「呀啊?!」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆引き
	Zoom("サシュアント", 150, 900, 900, Axl1, false);
	FadeDelete("サシュアント", 150, true);
	StR(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300, false);
	FadeStR(300, true);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320550b25">
「不能使用锻造雷弹。
　即使用它能够简单地获取胜利。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0320560b25">
「不……正因如此。
　因为在完成ＧＨＱ的内部肃清之前，即使战
争获胜也说不准最终赢家会是谁。」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320570a03">
「是、是的。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320580b25">
「有控制现状的良策吗？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320590a03">
「果然还是只能撤兵了吧。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320600b25">
「既然是我方开始攻击的，那么我方先行退兵
也合情合理。
　但是仅仅退兵的话会被六波罗军追击吧。」

{	FwH("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320610a04">
「也许会被追击到横滨。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320620b25">
「这种结果实在非我们所愿。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320630a03">
「那么，从后方逐渐退兵。
　与此同时进行停战谈判如何？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320640b25">
「能达成吗？
　若是单纯的两败俱伤就难办了……必须拿出
相应的条件，在展示进驻军优势的基础上进行
议和。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0320650b25">
「若非如此，恐怕有损女王的威名。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320660a03">
「这要看具体做法了。
　利用朝廷如何？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320670b25">
「京都朝廷……大和名义上的君主吗？
　的确是调停的最佳人选。」

{	FwH("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320680a03">
「我认为在镰仓的舞殿宫殿下，应当会
愿意帮助我们与朝廷沟通。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320690b25">
「很好。就交给你了。
　马上安排吧。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320700a03">
「明白。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320710b25">
「等你的好消息。」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320720a04">
「……撒修安东阁下。」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320730b25">
「什么事？」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320740a04">
「请您注意安全。
　不要离开护卫兵。」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320750b25">
「啊……知道了。
　这里是<RUBY text="····">敌方领地</RUBY>，我自有分寸。」

//【高官】
<voice name="高官" class="高官" src="voice/md04/0320760b25">
「其实我本想带来一支部队的。
　不过六波罗和独立派都不会允许它
踏入大和，所以放弃了。」

{	FwH("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320770a04">
「唉……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="高官" src="voice/md04/0320780b25">
「放心吧。
　我不会大意轻敌，擅自外出。」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320790a04">
「请您务必当心。」

{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0320800a04">
「大小姐，我们也尽量快点办完事回去吧。」

{	FwH("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0320810a03">
「嗯，说的是。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_033.nss"
