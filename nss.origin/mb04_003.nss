//<continuation number="200">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_003.nss_MAIN
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
	#bg049_景明故郷住宅地b_02=true;
	#bg025_山脈と森a_01=true;
	#bg023_弥源太の家_01=true;
	#bg052_湊斗家道場_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_004.nss";

}

scene mb04_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_002.nss"

//◆死に絶えた町。過去編から流用
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, Center, 200, "cg/bg/bg049_景明故郷住宅地b_02.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 2000, 2000, null, true);


	Delete("上背景");

	SoundPlay("@mbgm26",0,1000,true);

	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	MusicStart("SEL01",2000,800,0,700,null,true);

	Move("絵背景100", 5000, @-300, @0, null, false);

	FadeDelete("絵暗転", 2000, true);

	Wait(1500);

	SetVolume("SE*", 10000, 0, null);

	FadeDelete("絵背景100", 1500, true);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0030010a02">
「畜生……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　这是第几个了呢。
　环顾人们曾在此安居——如今却已沦为一片废墟的
城镇，一条狠狠地跺了跺脚。

　每次看到这般光景，一条都会重复同样的动作，同
一句话。完全没有心情以其他的方式来发泄情绪。
　这一点我与她如出一辙。但我只是沉默地看着被破
坏后的痕迹。

　关东正在走向灭亡。
　银星号的宣言从不会有虚假。

　所有的城镇都会消亡。
　人类将迎来灭顶之灾。

　只过了一昼夜。
　银星号离开之后，我立马与一条汇合了。幸而两人
都没受什么大伤，便开始了追踪。从追踪开始到现在
还不到一天。

　但这么点时间，却已经足够令关东地区东南部的死
亡人数超越存活人数了。
　——这就是银星号真正的、毫不留情的、灾难性的
破坏力。

　还有多久，大和国土将被它所吞噬。
　还有多久，世间万物将为它而殆尽。

　完全没有心情去计算这种事，所以我无从所知。
　但如果没有人能制止它的话，那天有朝一日终会来临。

　毋庸置疑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0030020a02">
「六波罗在干什么？
　进驻军……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0030030a00">
「大概还在看情况吧。
　而且即使他们了解了情况……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0030040a00">
「双方都不愿站出来当靶子。
　六波罗与进驻军都把对方视为眼中钉。他们首
先会担心的，就是对方会瞄准与银星号战斗的间
隙从背后偷袭。」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0030050a02">
「这种情况下……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0030060a00">
「说不定双方都在盘算，利用现在混乱的状
况，将对方铲除。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0030070a02">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　一条仿佛要掐死谁一般
紧握着双手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0030080a02">
「真是一群没用的家伙。
　不过本来就没指望他们能干什么。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0030090a02">
「果然还是得靠我们自己啊。
　凑斗先生。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0030100a00">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0030110b40">
《哼，那是当然。
　那种与世为敌的妖魔，吾正宗不斩，
更待何人。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0030120b40">
《昨天是因为遭到了预料外的突袭才失败了……
　但下次绝不会再出丑了。对吧，主君？》


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0030130a02">
「那还用说！
　下次绝对要杀了它……！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0030140a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一条的气势没有丝毫衰减的趋势。
　憎恨邪恶的心情与想要贯彻正义的灵魂亦然。

　协助这个少女，与她并肩作战，一同讨伐银星号————
　
　如此一来，也就无需触发村正的诅咒了。

　只需杀死曾是自己妹妹的银星号一人即可。
　
　……不用自己动手，而是弄脏一条的手。

　不用去杀自己的同伴。
　不用夺走善良的生命。

　这样做，
　
　
　真的是

　……正确的吗————————？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

//◆山林遠景。bg025流用？
//◆山寺。弥源太の家流用？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg025_山脈と森a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(1000);
	SoundPlay("@mbgm32",0,1000,true);

	OnBG(100,"bg023_弥源太の家_01.jpg");
	FadeBG(3000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　仅靠村正的感觉来进行的追踪并不太容易。
　而且追踪目标在机动力上比我方更优越。

　虽然不断重复着飞行到将热量消耗殆尽，短暂休息后
又继续追踪这一过程，但仍未捕捉到目标。
　即便如此，我们仍然感觉到离目标越来越近了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0030150a01">
《……我觉得差不多了。》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0030160a00">
「是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　向屋顶传来的剑胄传音回以了解之意。低沉的声音
回荡着。
　一条在一旁安然入睡。没有看到正宗的身影，大概
就在附近吧。

　这里是一座荒无人烟的山寺。方才偶然间发现了此处，
因为正殿后面的那座小屋刚好适合休息，便暂借一下。
　似乎很久没有人住过。下雨的话，大概还会漏雨。
但比起露宿野外要好得多了。

　不——如果要寻找更适合休息的地方，这附近倒是有
好几个废弃的村子。
　但谁都没想要去那里休息。一边闻着浓烈得呛人的血
腥味一边休息，从心理上实在让人难以忍受。

　仍健在的村庄亦是如此，其混乱的状况从上空俯视便
能一目了然，连着陆都不可能。
　如若没有这个山寺的话，大概连看着天花板好好休息
的机会都没有。

　得之不易的机会，我本该像一条那般小憩一下。
况且，这对我们来说也是最后的休息了。
　
　但我还有其他的事要做。

　我必须做出决定。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　——你一边把杀人看作是一种罪孽，
　却又将这份罪孽以正义为借口推到那个女孩身上。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードイン
	FadeDelete("絵色黒", 500, true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0030170a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　已经无法宽恕自己了。

　我原本便不想弑杀游佐童心。若问及关于那件事有什么
让我后悔的话，就是我错误地利用了一条。
　可以说，就是小弓十杰的讨伐——这件该由我或一条的
其中一人来做的事，由一条去做了。

　但是在让一条去讨伐银星号这件事上，我自无从辩驳。
　这件毋庸置疑该由凑斗景明扛上身的责任，我却由于不
想做而试图借助他人之手。

　我知道虽然没有意识到，但自己却的确是有这种心理的。
自己是无法对自己说谎的。
　这是应该从灵魂深处感到羞愧的行为。唯有在这一点上，
银星号的责骂是完全正确的。

　这是必须由自己之手来做的事。
　杀死银星号之罪。

　不该交由别人去承担。
　
　……但是，这意味着我又要杀一个人。

　背负着村正诅咒的我，每杀死一个敌人，就会出现一具
同伴的尸骸。
　就会有一个无辜的人死去。

　这样的事我已经做过多次。
　但之前的所作所为都是因为除此之外别无他法。但现在
不同。现在还有一条和正宗。

　若将杀人之事交由一条去做的话，
被杀死的便只有一个人。

　如果借由他人之手杀人的这种毫无道理的卑劣之事可以
为人所接受的话。

　……我思考着。

　也就是说，我应该忍受下那份耻辱吗。
　我这样思忖。

　但又觉得不该如此。
　因为既然认为那是卑劣的、错误的，那便理应将其更正。

　而要纠正这个错误，
　
　便要善恶相抵。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0030180a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 300, 1000, null, true);

	CreateColorEXmul("絵回想幕", 8100, "#847000");
	StL(8050, @0, @0,"cg/st/st統_通常_私服.png");
	CreateTextureSP("絵回想背景", 8000, Center, Middle, "cg/bg/bg052_湊斗家道場_01.jpg");
	FadeStL(0,true);
	Fade("絵回想幕", 0, 400, null, true);
	Fade("絵白転", 300, 250, null, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);
	DeleteStA(0,true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我突然间回想起养母的教诲。
　——不可杀戮。

　对。就是这句话。
　我的思索会陷入泥潭也是理所当然的了。

　在将敌人杀死这个绝对性的错误的前提下，无论走向哪
条路，不管怎么走，都是无法通往正确出口的。
　不杀为善。遵从养母之言。

　……如果能做到的话早就那样做了。
　面对那现在宛若魔王附体一般的银星号，用不足以致命
的手段将其压制——要完成这件事，究竟要以何种程度的
战斗力为条件才能成功呢。

　或者——试着怀着不屈不挠的热情，去说服一下银星号
吗。
　
　追在以秒为单位进行集体杀戮的银星号后面。

　不管哪个想法。
　都很荒谬。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0030190a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　没过多久，思考便开始向一方倾斜。
　善恶相抵——向回避这个诅咒的方向。

　于我而言，那比任何事都要沉重。
　只要能摆脱这一点的话……我这般思忖。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　——不是诅咒。
　而是善恶相抵，这个单纯的事实而已。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードイン
	FadeDelete("絵色黒", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　我想起了银星号的话。
　我不明白其中的深意。

　虽然很在意。
　却不明白其含义……

　不知不觉，我低下头出神地看着自己的手指。
　完全是一个阴郁地烦恼着的人该有的模样。

　我摇了摇头，将滚落在大殿角落的收音机接收器
拿了过来。
　这是从途中经过的废弃村庄中捡来的。

{	CreateSE("SE01","se日常_機械_スピーカースイッチON");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　虽然是为了多少了解一些目前的状况，但与此相比，
更重要的是转换一下心情。
　按下开关，随便调了一个频率。

　……在这种偏僻的地方收听，杂音自然很多。
　但即便如此，也可以收听到几个频道。

　ＧＨＱ广播台。
　——正发出将针对目前的紧急事态，出动军队恢复
关东一带的社会治安的布告。

　六波罗军方广播。
　——发布通告称ＧＨＱ的布告为侵犯了主权，军方
将采取包括驱逐ＧＨＱ军在内的一系列措施以应对现状。

　民间广播。
　——建朝寺遭到幕府军队的袭击，目前正出于火事
之中。舞殿宫情况不明。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0030200a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　完全没有起到任何消解忧郁的作用。
　迷茫的种子就像被种入田中，又浇上水的谷物一般，
只是一味地生长着。

　关东是一口混沌的坩埚。
　<RUBY text="Ｓｉｌｖｅｒ">杀戮之天象</RUBY>仍在一味地扩大。

　面对眼前即将到来又无法逃避的对决，我只是不知所
措地苦恼着。
　最终只能无为地度过了最后的闲暇。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//◆フェードアウト
	WaitKey(1000);

	ClearWaitAll(2000, 0);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

	Wait(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　……不知不觉中，仿若坠入梦乡。
　
　在半梦半醒的朦胧意识中觉察到这一点。

　或许睡了没多久……却不知究竟睡了多久。
　一不小心熟睡过去，醒来时已过去半日。这种事应该
不会发生吧。

　一阵不安向我袭来，我撑开眼皮。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(0, 0);

}

..//ジャンプ指定
//次ファイル　"mb04_004.nss"