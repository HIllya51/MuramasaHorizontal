//<continuation number="970">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_019.nss_MAIN
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
	#bg047_景明故郷町c_02=true;
	#bg003_荒れ野_02=true;
	#ev269_義清と姉_a=true;
	#bg063_普陀楽城内廊下_01=true;
	#ev269_義清と姉_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_020.nss";

}

scene mb04_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_018.nss"

//◆燃える町。bg049流用？
//◆銃声＆悲鳴
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町c_02.jpg");
	CreateSE("SEL01","se背景_ガヤ_合戦01");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetNwC("cg/fw/nw六波羅兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／六波羅兵】
<voice name="ｅｔｃ／六波羅兵" class="その他男声" src="voice/mb04/0190010e308">
「花堂大尉！」


{	NwC("cg/fw/nw六波羅大尉.png");}
//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190020e027">
「浦安的进驻军部队行进到什么地方了？」


{	NwC("cg/fw/nw六波羅兵士.png");}
//【ｅｔｃ／六波羅兵】
<voice name="ｅｔｃ／六波羅兵" class="その他男声" src="voice/mb04/0190030e308">
「已经经过津田沼！」


{	NwC("cg/fw/nw六波羅大尉.png");}
//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190040e027">
「是吗……时机要到了。
　好，现在马上结束征发物资。」


//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190050e027">
「之后专心进行放火行动。
　这个城镇最终还是会被进驻军所侵占。没有必要
为他们留下任何东西。」


{	NwC("cg/fw/nw六波羅兵士.png");}
//【ｅｔｃ／六波羅兵】
<voice name="ｅｔｃ／六波羅兵" class="その他男声" src="voice/mb04/0190060e308">
「但大多数市民都会来不及逃生……」


{	NwC("cg/fw/nw六波羅大尉.png");}
//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190070e027">
「无妨！
　市民也是资源。
留下活口也只会为敌人所利用。」


//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190080e027">
「为了最终要到来的攘夷圣战，必须要最大限度
将灾祸扼杀于摇篮中！
　全部烧毁！」


//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190090e027">
「这是大义!!」


{	NwC("cg/fw/nw六波羅兵士.png");}
//【ｅｔｃ／六波羅兵】
<voice name="ｅｔｃ／六波羅兵" class="その他男声" src="voice/mb04/0190100e308">
「是！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆もーえろよもえろーよー。
	ClearWaitAll(2000, 2000);

//◆丘の上。bg003流用？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg003_荒れ野_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　——一条在隆起的山丘上俯视着这番情景。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190110a02">
「他们……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190120b40">
《那些混蛋。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　六波罗。
　那身军装、那枚徽章。无论怎么看都是六波罗。
光从其<RUBY text="····">卑鄙手段</RUBY>来看，便能知晓那是六波罗。

　掠夺物资，
　四处纵火，
　杀戮平民！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190130b40">
《竟敢在吾正宗面前撒野。
　吾之心铁都因愤怒而沸腾了！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190140b40">
《你不会告诉吾，你打算就这样让他们
依旧能看到明天的日出吧!?
　主君!!》


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190150a02">
「不用再问了!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆装甲フォーム
	StR(1000, @0, @0,"cg/st/st一条_装甲_制服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190160a02">
「鬼若现世，灭尽恶鬼。
　恶若现世，断绝邪恶。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵演装甲", 3000);
	StR(1000, @0, @0,"cg/st/st一条_装甲_制服b.png");
	FadeStR(0,true);
	FadeDelete("絵演装甲", 300, true);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190170a02">
「剑胄之理——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆銃声一発
//◆視界が回って、ばったり。
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se戦闘_銃器_拳銃発砲01");
	CreateSE("SE01b","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色血", 5000, "#CC0000");
	DeleteStA(0,true);
	FadeDelete("絵色血", 1000, true);

	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("絵演震", 600, 0, 6, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……咦？

　这是怎么了？
　我……倒下了？

　为什么？
　
　……腹部好热。

{	CreateSE("SE01","se人体_血_たれる01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　伸手触摸，感受到了粘热的触感。
　指间沾染着粘稠的液体。

　最近频繁看到的，液体。

　如今正在喷薄而出。
　流血的地方是正在摸索的指间所陷入的，
那个细微的凹陷。

　一个小小的，血肉绽开的洞。

　——被击中了？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆顔グラなし
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190180b21">
「希望你不要碍事呢。
　大鸟中将已经下达命令了……关东中央地区
暂且丢给ＧＨＱ和银星号。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190190b21">
「全军在尽可能保全物资的情况下，撤回会津。
　为夺回神州的大战做准备。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190200b21">
「不过，实际上那些事情根本就无关紧要。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190210b40">
《你是什么人！
　竟敢如此冒犯——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演震");

//◆義清
//◆姉を背負い、手に赤子大の白い包み（どす黒い血の滲みあり）と拳銃

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev269_義清と姉_a.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	Wait(1000);
	CreateVOICE("一条","mb04/0190220a02");
	CreateVOICE("正宗","mb04/0190230b40");

	SetBacklog("「…………!?」", "voice/mb04/0190220a02", 一条);
	SetBacklog("《————!?》", "voice/mb04/0190230b40", 正宗);

	Delete("@text0080*");

	MusicStart("一条",0,1000,0,1000,null,false);
	MusicStart("正宗",0,1000,0,1000,null,false);

	SetFwR("cg/fw/fw一条_剣呑.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆（一条）（正宗）
「…………!?」
《————!?》

</PRE>
	SetTextEXR();
	Request("@text0090", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――


/*
//◆声用一時退避
//◆同時発声

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190220a02">
「……!?」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190230b40">
《——!?》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　勉强抬起头，出现在视线中的是——一个说话口气
尤为老成，但身形样貌却与其语气完全不符的少年。
　不止他一人。

　他背着一个身材娇小的女子。
　虽不若少年这般年少，但也是个很年轻的女子。

　他的手中，持握手枪。

　……这一搭配格外奇特。
　看起来像搞笑艺人一般。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190240b21">
「哟～」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　他愉快地笑着，挥了挥手。
　随着他的动作，他背上那个虚弱女人下垂的手臂也
轻轻地晃动着。

　大概是身体极为虚弱的缘故，女人的头也软软地垂
着，没有要抬起的样子。
　但她的眼睛却带着一股诡异的力量，从头发的缝隙
间注视着我。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190250a02">
「……你……」


{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190260b21">
「你不认识我吗？
　不认识的吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　他轻声地笑着。
　他的微笑中透出一丝少女特有的风情。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190270b21">
「但我知道你哦。
　我只见过你一次。但你的眼神给我留下了很
深刻的印象。而且当时跟你在一起的那个男人
气质又那么阴暗。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190280b21">
「但即便如此，若不是高僧曾提到过你，我肯
定早就把你忘了。
　没错哦。　那位大人察觉到了。虽然事到如
今这些已不值一提。」


{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190290b21">
「他一开始就知道你们是敌人。
　是啊……但是，那位大人是个凡事都喜欢享
受一番的人。要是当时迅速收拾掉你就好了。
但他却格外执着于方式技巧。」


{	FwR("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190300b21">
「最后反被敌人所杀。
　那天。那天晚上……他说再出去玩一下，就
出门去了。自那之后高僧再也没有回来。为什
么当时我没有阻止他呢？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190310b21">
「不……在那之前。
　为什么我没有在第一眼看到你的时候，就将
你斩杀呢？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190320b21">
「你。没错，<RUBY text="···">就是你</RUBY>。是你吧？
　不是那个男人。」


{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190330b21">
「虽然高僧什么也没有说。但我很清楚。高僧
所中意的，勾起他<RUBY text="····">玩弄之心</RUBY>的，就是你……
呵呵！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190340b21">
「所以，是你。在那个无月之夜，高僧的对手
毫无疑问地就是你。
　高僧一定是在与你玩乐时，玩得太投入而坠
入冥土了。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190350b21">
「我说的没错吧……？
　对。没错。果然是这样。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190360b21">
「就是你。是你杀了高僧。
　我知道……」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190370b40">
《……这个家伙是怎么回事？
　他疯了吗？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　正宗不快地小声说道。
　正宗会这样想并不奇怪。少年的话虽然很流畅，但内容
却支离破碎。

　但我却听懂了。
　听懂了他所说的话。

　也想起了他究竟是谁。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。普陀楽城の義清
//回想シーンまとめ
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想背景", 6000, Center, Middle, "cg/bg/bg063_普陀楽城内廊下_01.jpg");
	StR(7000, @0, @0,"cg/st/st義清_通常_私服.png");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	FadeStA(0,true);
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 200, null, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);
//	StR(1000, @0, @0,"cg/st/st義清姉付_通常_私服a.png");
//	FadeStA(0,true);
	FadeStA(0,true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190380a02">
「你……
　是那个胖和尚的什么人？」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190390b40">
《嗯？》


{	FwR("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190400a02">
「是游佐童心的……侍童吗？」


{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190410b21">
「没错！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　虽然想起来了，但却不知他名字。少年微微地笑了。
　很开心地笑了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw義清_狂笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190420b21">
「太好了。这么快就想起了我是谁。
　难得我特地跑来见你，要是你一直想不起我
是谁，那我可是会很伤心很伤心的。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190430b21">
「没错，我就是童心大人身旁的那个侍童哦。
 改一媛小姐。……虽然这应该不是真名。」


{	FwR("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190440a02">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　虽然想自报姓名，但一开口又止不住地咳个不停。
　一股恶心感不断从腹部的灼热处冒出，涌上喉咙。

　眼下比起应付他的话，还有应该更优先去做的事。
　……在对方已经说得如此明白的情况下，眼下的状
况也很容易明了，让人想要误会都不可能。

　游佐童心的侍童突然出现，并用枪打伤了我。
　那么，他的目的是？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190450b40">
《你是来复仇的吗？》


{	FwR("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190460b21">
「复仇？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　受到正宗嘲弄的质问，少年鹦鹉学舌般反问道。
　复仇。再一次将两个字重复了一遍后，少年露
出小鸟般无辜的表情莞尔。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190470b21">
「我还没想得那么远。」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190480b40">
《什么……？》


{	FwR("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190490b21">
「我只是想，再见你一面而已。
　无论如何都想再见你一面。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190500b21">
「除此之外并无其他心思。
　因为……难道不该这样吗？」


{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190510b21">
「因为你可是把我们逼迫到如此境地的人啊！
　当然无论如何都想见了！　想见你！
想接近你——」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190520b21">
「想跟你说话，
这样想难道不是理所当然的吗!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆発砲
//◆正宗、ガード。かちーん。
	CreateSE("SE01","se戦闘_銃器_跳弾02");
	CreateColorSP("絵色白", 5000, "#FFFFFF");

	Delete("絵背景100");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(1);
	FadeDelete("絵色白", 300, false);

	Wait(1000);

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190530a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　瞄准我眉心而来的子弹，中途被剑胄截住。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190540b21">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190550b40">
《这就是你所谓的<RUBY text="··">说话</RUBY>吗？》


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190560b21">
「没错哦。
　你可不可以不要妨碍我呢？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190570b40">
《……荒谬至极。蠢东西。
　反被恶人所恨吗。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190580b40">
《在摆出忠心耿耿的忠臣嘴脸之前，先回首看
看你主人所犯下的恶行吧。》


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190590b21">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190600b40">
《哼。你应该是比谁都清楚吧？在他身旁侍奉
时应该看得很清楚吧？
　我们所没有看到的，他所犯下的恶行，你也
都亲眼看到过吧！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190610b40">
《那是他应得的报应！
　天网恢恢，疏而不漏!!》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190620b40">
《那个和尚最后沦落到了死无全尸的境地，
但那也是他死有余辜！　哈哈哈哈哈哈！
　明辨是非吧，小子。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190630b40">
《恶人根本没资格提复仇！
　简直是厚颜无耻之徒!!》


{	FwC("cg/fw/fw義清_不安.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190640b21">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　……少年低下了头。
　似乎被正宗的语气震慑住了。

　……他的肩膀轻轻地颤抖着。
　仿佛在哭泣一般。

　——不对。
　不是这样的。

　正宗注意到了吗？
　不。他并没有看到……只有倒在地上的我才看得到。

　少年在笑。
　看上去并没有受到伤害，也没有哭。

　他正开心地笑着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190650b40">
《——吾正宗将替天行道。
　化身降伏之使者，以正当、迅速、准确为原则，
对恶人施以最高等的天诛！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190660b40">
《予罪以天罚！　予恶以天罚！
　天道正理正在于此！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190670b40">
《吾之刀刃无一丝污秽。
　小子，你竟敢向正义复仇！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190680b40">
《你胡乱宣泄自己毫无道理的怨愤，伤害吾主君
的行为，不可原谅。
　现在就为自己的罪名承受报应吧！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190690b40">
《你将受到同等的伤害！
　吾正宗可不会理会青少年保护法之类的东西。
未成年又如何。但凡是为国家所养育之人，都
应正其身，肃然地活着——》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆牙を剥く正宗
//◆包みを投げつける義清
//◆ばしゃっ。
//◆画面黒
	CreateSE("SE01","se戦闘_正宗_隠剣六本骨爪02");
	CreateSE("SE01b","se人体_動作_外套纏う01");
	CreateSE("SE01c","se擬音_粘着質_ゲル潰れる04");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);

	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("絵色黒", 5000, "#000000");
	MusicStart("SE01c",0,1000,0,1200,null,false);

	Wait(500);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190700b40">
《嗯!?》


{	FwC("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190710a02">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　什么？
　……他扔出了某样东西。

　他一手持枪，另一只手抱着一个包裹。
　他似乎将包裹中的东西抛了出来。

　某种——液体状的——
　不，里面还混杂着固体的东西。

　硬物中夹杂着柔软的东西。
　有一个硬物，掉落在了我的脸上。

　伸手拿过。
　白色、纤细的。

{	CreateSE("SE02","se擬音_粘着質_ゲル潰れる04");
	MusicStart("SE02",0,1000,0,1000,null,false);}
　稍一用力，便能轻易捏碎。
　很脆弱。

　上面还粘着液体，和一些柔软的东西。
　液体是<RUBY text="··">粘稠</RUBY>的，软物是<RUBY text="··">绵黏</RUBY>的。

　这是什么？

　……稍微思考就一定能知道答案。
　但不知为什么，我一点都不愿去想。

　不愿去明白。
　不愿知道，这究竟是何物。

　因为。
　无论怎样看，这都是<K>　　　的<K>　　。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血と肉と骨。死産した赤子のイメージ。
//あきゅん「演出：追加素材？　イメージ不明」
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	CreateColorSP("絵色血", 6000, "#CC0000");
	CreateTextureSP("絵背景100", 5100, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");


	FadeDelete("絵色血", $残時間, false);

	SetFwC("cg/fw/fw義清_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190720b21">
「呵呵呵。」

//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190730b21">
「呵呵，哈哈哈！」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190740b21">
「这个呢……」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190750b21">
「是我的侄子。」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190760b21">
「是高僧的儿子。」

//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190770b21">
「是<RUBY text="·">我</RUBY>姐姐的孩子。」

//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190780b21">
「可惜……
　他一生下来，就已经是这副模样了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆義清と姉
//◆姉の顔を出す。半腐乱中。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg003_荒れ野_02.jpg");
//	StR(1000, @0, @0,"cg/st/st義清姉付_通常_私服b.png");
//	FadeStR(0,true);
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev269_義清と姉_b.jpg");
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);
	SoundPlay("@mbgm28",0,1000,true);

	SetFwR("cg/fw/fw義清_狂笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190790b21">
「哈哈哈哈哈哈哈哈！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190800b21">
「笑吧。
　笑啊！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190810b21">
「这就是你所谓的，恶人凄惨的下场。
　罪有应得的下场。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190820b21">
「高僧被砍得不成人形。
　身为侧室的姐姐，
也在看到那般光景后疯掉了。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190830b21">
「她怎么可能忍受得了。
　身为她恩人的高僧——那个孩子气的高僧！
那个总给我们带来无尽困扰，但却让我们发自
内心尊敬的高僧……竟变成那副惨状!!」

//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190840b21">
「马上就要临盆的姐姐，在疯掉之后从楼梯上
滚落了下来。
　就这样、就这样……变成这副样子！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190860b21">
「看看你做了什么!!」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190870b40">
《——》


{	FwR("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190880a02">
「——」


{	FwR("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190890b21">
「杀害高僧，连带害死了我的侄子和姐姐。
　为什么？　对了，这是报应。你刚才是这么
说的呢……因为高僧做了坏事而导致的报应。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190900b21">
「但这未免太奇怪了。我不明白。
　我的姐姐究竟又做错了什么？」

//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190910b21">
「我尚未出生的侄子又做错了什么？
　他们为什么要<RUBY text="···">受到你</RUBY>的制裁？」

//おがみ：シナリオ修正
//「生まれる以前に罰せられなくてはならない
//理由というのは何だろう……。
//　わからない。わからないな」
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190920b21">
「究竟是何种理由，使得一个孩子在尚未出生
之时就必须遭受制裁……
　我无法理解。真的难以理解。」

{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190930b21">
「但已经没用了。这一切都已经发生了。
　高僧、姐姐、侄子。我的一切都被你夺走了。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190940b21">
「都是你的东西。
　一切都属于你。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190950b21">
「没有办法。
　只有接受这已成定局的事实。」

{	FwR("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190960b21">
「那么就将我的所有都赠于你！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景100", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　少年这么说着。
　他在我的身旁蹲了下来。

{	CreateSE("SE01","se擬音_粘着質_ゲル潰れる01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　将一块<RUBY text="··">肉片</RUBY>，塞进我的口中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSPmul("絵色100", 1500, "RED");
	FadeDelete("絵色100", 500, true);

	SetNwC("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190970a02">
「……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　美得几近透明的，少年的笑容。
　腐烂的女人，那漆黑空洞的眼神。
　泥污般的肉块。

　我在已死去的母亲的注视下，
　轻轻地亲吻着还来不及降生于世的婴儿。

　污秽。
　无暇。
　曾以为是极端对立的两者如今混杂在了一起。

　——啊啊。
　
　我记得这个味道。

　这是罪恶的味道。

　<RUBY text="····">违背正义</RUBY>的，罪恶之味。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_020.nss"