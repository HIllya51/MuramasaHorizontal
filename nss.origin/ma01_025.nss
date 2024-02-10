//<continuation number="500">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_025.nss_MAIN
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
	#bg006_雄飛の部屋_03b=true;
	#bg007_若宮大路a_03=true;

	#ev106_雄飛と見下ろす村正_a=true;
	#ev106_雄飛と見下ろす村正_b=true;
	#ev106_雄飛と見下ろす村正_c=true;
	#ev106_雄飛と見下ろす村正_d=true;

	//▼ルートフラグ，選択肢，次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_026.nss";

}

scene ma01_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_024.nss"



//◆雄飛の部屋
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg006_雄飛の部屋_03b.jpg");

	FadeDelete("上背景", 1000,true);

	SoundPlay("@mbgm30",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　躺倒下来，凝视着天花板。
　别的什么也做不到。
　甚至包括睡眠。

　敞开的窗户送入庭院中的风，虽然已经有些
冷意，但那并不妨碍我躺着。反而有些舒爽。
　然而却无法入眠。

　尽管也不是不能起来，可由于一只脚处于负伤状态，
这样做也很麻烦。虽然疼痛几乎已经消失，但这显然
是以静止不动为前提才勉强成立的。没有理由舍弃掉
这份安宁。

　总结起来，就是除了躺着以外别无他法。
　抱住发烫的身体躺着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250010b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　那之后。
　估计是凑斗先生安排的。警察很快赶到，我们被保护
起来。

　接着自然是被直送医院。

　我接受的治疗是止血和缝合，再服用镇痛剂之后就完
事了。但另外两人当然不是如此。
　虽然没法探望，但听说被送到了集中治疗室。

　估计，现在也还在里面吧。
　虽然也坚持过想留到手术结束，可在场的所有人都生
气地赶我回去睡觉。于是只得断了这个念头。

　留下不仅派不上任何用场，还有可能碍事，这连我自
己也心知肚明，所以只能如此。
　我恰好在叔叔阿姨还有忠保的家人赶到时离开，独自
被警察用车送回了家。

　于是现在就这样，在这里聆听着夜风的声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250020b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　要想的事情很多。
　叔叔阿姨，还有忠保的家人，都想听我亲口说明事情
经过吧。即使已经听警察说过——对了，警察也要找我调
查案情呢。

　在医院时没有人问我任何事情。估计是在顾虑我的感
受，但也不会一直如此。
　作为三人中最接近平安无事的人，我理应有进行说明
的义务。

　必须准确地把看到的事情和经历传达给他们。即使这
样做伴随着痛苦。
　要提前准备好才行。因为我并不擅长解释说明。

　其他必须去想的事情还有不少。总之先从明天的早饭
要怎么解决开始……一直到铃川那家伙的事。
　另外，还有同伴的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　小夏、忠保、小律。
　他们三人被袭击的现实————

　要想的事情真的很多。
　但现在不管是哪件事，我都没法在胸中描绘。


　到了明天。
　明天，在这张床上醒来的瞬间。
　我才会把今天发生的所有事情当作现实接受吧。

　然后内心估计会破碎不堪吧。
　想到小夏的身体，忠保的眼睛，还有已经不在的小律，
会悲痛地扑在枕头上吧。

　会在地上痛苦翻滚，发出毫无意义的哭叫吧。

　我知道。
　我知道会那样。
　但现在不同。只有现在，我的心能得到救赎。因为心中
还残留着能将悲痛隐没的——炽热的兴奋。

　所以只有现在，只有这一晚，我沉浸在这份炽热中。
　为了能度过从明天开始的悲痛。

















</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆フラッシュバック·村正
//	CreateColorEXmul("絵色100", 1500, #847000);
//	Fade("絵色100",0,400,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　现在的我，和到昨天为止的我不同。
　只有一点。
　那就是找到了信奉之道。

　正义。
　仅作为一种想法……一种概念存在的话，并
不能令人发自心底相信。
　那种程度并不足够。只是一句空话而已。

　所以我过去也没有相信那种东西。
　放弃了。认为根本不存在那种东西。
　然而。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　出现了。
　有形的正义出现了。
　以值得信任的姿态。

　正义有了体现者之后才第一次具备了意义。
　因为匡扶正义的战士是必要的。

　从未想过会有这样的人。
　说到战士，武人，能联想到的只有六波罗幕府。放纵
欲望，一味挥舞蛮力的饿狼团体。那就是全部。六波罗
的野心席卷了武之世界。

　拥有力量的武人结成一党，四处压迫无力之人。为无
力民众战斗的武人却一个也没有。
　曾经是这样认为的。

　然而，还是有的。
　我现在知道了。
　知道了有着不是为自我欲望，而是为守护他人而战斗的
人存在。

　即便只有一人也好。
　只要有那个人的存在，我就能够相信正义。

　那并不仅是一个命题。
　也不是毫无意义的装饰。
　也不是贪眠于国语词典和道德课文中的一个词语。

　是让人得以正确存在的道标。

　因此，我也想踏上这条道路。
　踏上这条如今已明晰可见的道路。

{	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);}
//	SetVolume("@mbgm*", 2500, 0, null);}
　然后——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ひょー。ざっ。風と共に現れるのＳＥ
	CreateSE("SE01","se自然_風_野原01");
	MusicStart("SE01",1000,1000,0,1000,null,false);

	Wait(1000);

//	CreateSE("SE02","se自然_風_野原02");
	CreateSE("SE02","se特殊_鎧_装着01");
	MusicStart("SE02",0,1000,0,600,null,false);

	PrintGO("上背景", 15000);
	CreateColorSP("暗転", 5000, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路a_03.jpg");

	SetVolume("SE*", 2500, 0, null);
	FadeDelete("上背景", 2000, true);

	WaitPlay("SE*", null);
//	WaitPlay("@mbgm*", null);

	WaitKey(1000);


//◆大通り·夜
//◆車の走行音
//◆ブレーキ。止まる

	CreateSE("SE01","se乗物_車_停止01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	FadeDelete("暗転", 1000, true);

//	SoundPlay("@mbgm21",0,1000,true);

	SetVolume("SE*", 5000, 0, null);
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250030a04">
「怎么了吗？　大小姐。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250040a03">
「……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250050a04">
「哦哦……说起来新田大人的宅邸就在这附近呢。
　您有意顺道拜访一下吗？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250060a03">
「……」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250070a04">
「大小姐？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250080a03">
「刚刚……
　好像有个红色的东西，从天空掠过。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250090a04">
「红色的……东西？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250100a03">
「纱代。你什么也没有看到？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250110a04">
「这实在是强人所难啊。连大小姐的双眼也无
法看清的东西，我这老太婆又怎么可能看清。
　莫不是流星之类的？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250120a03">
「流星……
　如果我的双眼值得赋予绝对信赖的话，那个……
似乎是武者。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250130a04">
「嗬。明明都已夜幕降临，可幕府的诸位看来
依旧是那么忙呢。
　真让人头疼呢。有一个勤劳的暴君实在是……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250140a04">
「当然，大小姐的眼睛是正确的哦。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250150a03">
「幕府……嗯。也对。
　应该是吧。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250160a03">
「没什么稀罕的……
　只是如此而已。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250170a03">
「然而……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma01/0250180a03">
「为什么……我。
　会这么的……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma01/0250190a04">
「……大小姐？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 0);


	PrintBG("上背景", 15000);
	CreateColorSP("暗転", 5000, "#000000");
	CreateTextureSP("絵ＥＶ1000", 1000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_a.jpg");

	FadeDelete("上背景", 2000, true);

	WaitPlay("@mbgm*", null);
	WaitKey(1000);

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250200b56">
「……啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　笼罩在沉静夜幕中的庭院。
　我相信的正义就在那里，散放着驱散黑暗的红光。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：えー感じの。静かなハッピーエンド
//◆ＥＶ：庭に落ちた影。村正と片膝立ちの雄飛。

	FadeDelete("暗転", 1000, true);

	WaitKey(1000);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250210b56">
「来了啊……」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250220a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
　慌忙坐起身来，跪着用膝盖挪动到套廊边上。沉默的
武者俯视着我。
　覆盖着甲铁的双眼放出冰冷的色彩。但我并不在意，
因为我了解蕴含其中的善良。



</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景5000", 5000, -380, -526, "cg/ev/resize/ev106_雄飛と見下ろす村正_a.jpg");
	Move("絵背景5000", 8000, @0, @400, DxlAuto, false);
	Fade("絵背景5000", 600, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140b]
　村正。
　深红的武者。

　一直想看到这个身影。
　尽管已经烧蚀在眼底，甚至能够轻易想起细小的部分。
可还是想看到他真正的身姿。想仔细看看，看得更久一
些，更近一些。

　愿望实现了，我的村正此刻就在眼前。
　……莫非真是为我而来？

　不，怎么可能。一定是有什么事情想来问我吧。在
这险恶世道，唯一一个正义伙伴怎么可能那么悠闲。
　如果没有要事怎么可能特意来到我的身边。

　……不过，或许是因为担心才来看我也说不定啦。
　可即便如此也不该利用他的好意。太难为情。得尽
心协助，尽快帮他把要办的事解决才行。

　尽管如此。
　如此近距离地面对那深红的雄姿，我再也无法控制
自己。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景5010", 5010, -920, -526, "cg/ev/resize/ev106_雄飛と見下ろす村正_a.jpg");
	Fade("絵背景5010", 600, 1000, null, true);

	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250230b56">
「那、那个……」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250240a00">
「……」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250250b56">
「要、要说什么才好呢。虽然想说的事情非常
非常多……可不知道要怎么说才好。」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250260a00">
「……」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250270b56">
「那个……
　我，相信你哦。」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250280a00">
「…………」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250290b56">
「我相信你。
　相信你的战斗。
　相信你的正义。
　相信你的道路。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250300b56">
「我啊……
　曾经一度对你失望过。」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250310a00">
「……」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250320b56">
「和野木山那群人纠缠的时候。
　看到跪地赔礼的你，我就想，亏这个人还说
该战斗的时候会战斗，实际却只说不做。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250330b56">
「觉得相信这种家伙的我简直像个笨蛋。
　不过……我错了呢。虽然我确实是个笨蛋。
但却是另一种意义上的。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250340b56">
「你是说，在非战斗不可的时候会战斗。
　那种小混混，并不是非战不可的对手。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250350b56">
「只是些看到我们低头，就会得意忘形的人。
　真正强大的人，并不屑于拿那种家伙当对
手……没错。确实如此。」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250360b56">
「只有在除了战斗以外别无他法的时候，你才
会战斗。
　在超人的武者对手无寸铁的常人挥刀相向时
……只有在那种时候，你才会战斗。」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250370b56">
「化为村正。
　为了没有能力保护自己的人们。」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250380a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　村正——凑斗先生什么也没有回答。
　莫非是有些不好意思。这个念头在脑中
一闪而过。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵背景5000");
	FadeDelete("絵背景5010", 600, true);

	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250390b56">
「因为明白这个……
　所以我相信你。」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250400a00">
「……」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250410b56">
「我相信这个世上存在正义。
　相信正直地生存下去是有意义的。」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250420b56">
「我相信这样做才是真正的强大。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　啊啊……可恶。为什么只能说出这种廉价的话呢。
明明想说的事情并不廉价。
　是因为我太廉价吗？

　……也是。我和村正不同，还什么也没有做。
　尽管不停说相信，但也没有为这份信念做过什么
事情。只是个信口开河的家伙。我的话简直是跳楼
大抛售的廉价商品。

　不过今后会改变的。我想成为一个不同的人。
　为此——现在我相信着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250430b56">
「我相信哦。
　这个世上存在着名为村正的正义伙伴。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　看着那个身影。
　浸染全身的红是鲜血的颜色。尽管有不祥之意，
但却无比可靠。要说为何，因为那颜色诉说着战斗
的觉悟。黄金锻造的太刀则在鲜红中格外耀眼夺目。

　神情严峻的头盔犹如恶鬼的脸孔。
　覆盖胸前的甲铁仿若坚固的城墙。

　与其为敌，则没有比他更令人畏惧的对手。
　与其为友，则没有比他更令人心安的护卫。

　村正。
　拥有诅咒之名的，善良武者。

　他俯视着我。
　……缓缓地，摇了摇头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250440a00">
「不存在。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250450b56">
「……？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250460a00">
「正义的伙伴，根本不存在。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　头盔中传出的，只有这样的言语。
　静静地、静静地，如拂过冰原的风声。

　我稍稍呆住一会，然后，
　
　……啊啊，原来如此。
　在心中轻轻颔首。







　这个人，真是的。
　多寻求一些他人的理解与赞许不也没关系吗。

　凑斗先生。
　你一定是对自己极为严厉的人吧。

　不管完成了多么伟大的事情，都会去追求更
为完美，更为妥善的结果——比如说，让我和小
夏还有忠保全部毫发无伤地顺利解决事件——所
以才会为之前的疏忽给自己减分。

　所以才会说这样的话对吧？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　可是你今天拯救了我们！
　这是确确实实的。如果你没有来，我们三个肯定已经
死了。被杀掉后，估计现在已经被放到那个箱中了吧。

　没有落得那种结果，都是因为你的救助。

　我们想感谢你。
　想尊敬你。

　然而。
　你却要贬低自己，不让我们得逞吗？
　
　……真有点寂寞呢。

　不过，没关系。
　我相信。

　你是正义的伙伴。
　大和唯一一个为了正义而战的武者。

　唯一的————英雄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250470a00">
「……哪里也没有。
　正义的伙伴，不存在于任何地方。」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0250480a00">
「根本没有——新田雄飞。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250490b56">
「有哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我伸出手。
　指向那鲜红闪耀的身影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0250500b56">
「就在这里。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　我相信。相信你。
　以你为理想。
　以你为目标。

　然后——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆ホワイトアウト。ＢＧＭ，短めフェードアウト

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	PrintGO("上背景", 10000);
	CreateColorSP("絵暗転", 50, "#000000");
	FadeDelete("上背景", 200, true);

//◆横薙ぎ剣撃アニメ？
	SL_right(@0,@0,2500);
	SL_rightfade2(10);


//◆ＳＥ：ダーン！　ピアノの鍵盤を思い切り叩いた音
//◆同時に画面を高速切り替え。村正影が剣を振り切っている。全体にレッドマスク

	PrintGO("上背景", 10000);
	CreateColorSPmul("絵血面", 50, "#CC0000");
	CreateTextureSP("絵ＥＶ30", 30, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_b.jpg");
	CreateTextureSP("絵ＥＶ20", 20, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_c.jpg");
	CreateTextureSP("絵ＥＶ10", 10, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");

	Delete("上背景");
	CreateSE("SE01","se擬音_悲劇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵血面", 300, 0, null, true);
	WaitKey(1000);

//◆ダーン！
//◆雄飛の首が胴から離れる

	CreateSE("SE02","se擬音_悲劇01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵血面", 0, 1000, null, true);
	Delete("絵ＥＶ30");
	Fade("絵血面", 300, 0, null, true);
	WaitKey(1000);


//◆ダーン！
//◆雄飛の首が転がる

	CreateSE("SE03","se擬音_悲劇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("絵血面", 0, 1000, null, true);
	Delete("絵ＥＶ20");
	FadeDelete("絵血面", 300, true);



	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　………………
　咦？

　为什么，我会倒在地上呢。
　为什么，眼睛会一片模糊呢。

　这样岂不是不能好好看清村正的身影了吗。
　我最喜欢的那个身影。

　可恶，在干什么呢我。
　累得倒下了吗？

　虽然这也没有办法。
　再努力一把啊。

　因为现在村正就在眼前。
　不想让那个人看到自己不成器的样子。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ55", 5500, -60, -80, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	SetShade("絵ＥＶ55", MEDIUM);

	Move("絵ＥＶ55", 20000, @0, -560, DxlAuto, false);
	Fade("絵ＥＶ55", 600, 1000, null, false);

	SoundPlay("@mbgm31",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　啊啊……<k>可恶，眼睛模糊了。

　仿佛有种供血不足的感觉。
　这是为什么呢。明明失血并不严重才对。
果然还是疲劳的缘故吧。

　虽然想站起来，却怎么也站不起来。
　仿佛身体不知跑到什么地方去了一样。
　连一根手指也动不了。真是丢脸啊。

　能动的只有眼睛。
　所以……至少还想再好好看一眼村正的身影。
可视线模糊到连这也无法如愿。

　为什么这么模糊呢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵ＥＶ55", 0, 1000, null, true);
	CreateTextureSP("絵ＥＶ54", 5400, -940, -1100, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	Zoom("絵ＥＶ54", 0, 2000, 2000, null, true);

	Move("絵ＥＶ54", 20000, @0, @480, DxlAuto, false);
	FadeDelete("絵ＥＶ55", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0306]
　感觉真冷啊。
　脸颊湿了。

　为什么呢。
　泪？

　我为什么在哭呢。
　有什么值得悲哀的呢。
　真奇怪……

　悲哀。
　有什么很悲哀的事情。
　很是悲哀——悲哀得眼泪都止不住。

　为什么呢。
　我是为了什么——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＳＴ", 2900, -200, Middle, "cg/st/3d村正標準_立ち_抜刀.png");

	CreateColorEX("白地", 2800, "#FFFFFF");
	Fade("絵ＳＴ", 0, 300, null, false);

	FadeDelete("白地", 500, false);
	FadeDelete("絵ＥＶ54", 3000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　啊啊……对了。
　是因为再看不到村正的身影。

　因为泪水的缘故，视野变得歪曲，连村正的形状也
无法分辨。
　我一定是在为这个感到悲哀吧。
　以致如此泪流不止。

　没关系的。
　会等到我站起来为止的。
　因为这个人很温柔。

　所以，稍微睡一下吧。既然起不来也没办法。
　稍微睡一下，消去疲倦……然后再起来，再去
看村正的身影吧，

　然后，追着那个身影。
　开始迈步。

　去追寻理想。
　为正义而战的道路，我也————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 2000, 1000, null, true);

	WaitKey(1000);

	ClearWaitAll(2000, 3000);


}

..//ジャンプ指定
//次ファイル　"ma01_026.nss"

