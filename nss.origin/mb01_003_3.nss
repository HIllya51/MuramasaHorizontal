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

scene mb01_003_3.nss_MAIN
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
	#bg032_八幡宮奥舞殿内a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
//	$PreGameName = $GameName;

//	◆フラグ分岐：デバッグのため選択肢にしてあります
//	◆香奈枝が生存していた場合　"mb01_003a.nss"
//	◆香奈枝が死亡していた場合　"mb01_003b.nss"
//	$GameName = "mb01_003b.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	if($PreGameName == "mc01_001.nss"){
		$PreGameName = $GameName;
		$GameName = "mc01_002.nss";
	}else{
		$PreGameName = $GameName;
		$GameName = "mb01_003_4.nss";
	}

}

scene mb01_003_3.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_002.nss"
//前ファイル　"mb01_002a.nss"

.//〔英雄編〕と〔復讐編"mc01_001.nss"〕での共有エリア２：ココから
//◆シーンで分けて、対応


//◆回想
//◆八幡宮舞殿
	PrintBG("上背景", 30000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Fade("絵回想幕", 0, 400, null, true);
	Delete("上背景");
	FadeDelete("絵白転", 1000, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030020a10">
「哦，烦劳你来一趟，景明君。
　上次辛苦了。署长都告诉本王了。
又给你添了大麻烦。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030030a00">
「是。
　您太抬举我了，前次之事是我不顾宫殿下
忠告而招致的。怎敢劳您挂心。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030040a00">
「且又一次放跑了最关键的银星号，
终究未能阻止其猖獗作恶。
　颜面尽失，羞愧难当。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030050a10">
「别这么说。
　既毁了六波罗的危险兵器，又获取了
ＧＨＱ的阴谋内幕。而且，景明君你也
平安归来。」

{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030060a10">
「这样不是很好吗。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030070a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　对于来自帘内的劝慰之声，我回以一礼。
　这已是我第三次谒见八幡宫别当舞殿宫春熙亲王。此
人说话直爽，虽与其尊贵身份不相符，却打消了我的踌
躇。

　自江之岛事件以来，已经过一周有余。
　伤口与疲惫已基本痊愈——虽因青江来袭而略有倒退
——但不妨碍我对宫尽礼数。

　虽然这并非令人忧心之事，但一直用小心翼翼的目光
注视着我的署长，将目光移开，便立刻直直地看向亲王
御座。
　接着便像探风似的唤了一声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030080a11">
「……殿下。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030090a10">
「嗯……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030100a10">
「景明君。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030110a00">
「在。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030120a10">
「既然你今日来了，想就今后之事与你一谈。
　……近前来。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030130a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_立ち上がる_畳");
	MusicStart("SE01",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我跪着往前挪了少许。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030140a10">
「再略近些。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030150a00">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_立ち上がる_畳");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我依命更近前一些。
　几乎与候在帘侧的署长膝盖相碰。

　到底有何事呢。
　有关今后之事……但只要与我有关，便与至今毫无变
化。

“卵”至少还有一个——将夺取自村正的力量封印之
物——尚存。
　因其母体——银星号仍健在。

　需将其二者击破。
　如此一来，我的战斗才算结束……达成只作为一个犯罪
者被裁决的目的。

　还有二副。
　还有二副——其背后<RUBY text="····">还有二人</RUBY>。

　两恶和
　两善。
　……是我必须要杀的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030160a00">
「……唔。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆めまい
//◆がくりと揺らいで、床に手をつく
	CreatePlainEXover("絵演震", 300);
	CreateSE("SE01","se人体_衝撃_転倒04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("絵演震",0,750,300,0,0,10,DxlAuto, true);
	Delete("絵演震");

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030170a11">
「景明？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030180a00">
「……实在抱歉。
　我有些……疲累。」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030190a00">
「疲倦……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030200a10">
「那可不行。最好稍事休息。
　事情虽紧急，却也并非分秒必争。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030210a10">
「是吧，署长。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030220a11">
「是……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030230a00">
「不。
　请勿挂怀。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我咬紧牙关，瞪大双眼。
　用尽全身恶意鄙视丑态毕露的自己。

　……疲倦？
　真蠢。自己怎能沉浸在这种<RUBY text="··">悠闲</RUBY>状态之中。

　对于自己亲手推进连疲倦滋味都无法品尝的深渊之人，
拿什么去向他们谢罪。
　究竟是有多厚颜无耻，才口吐这种泄气话。

　可耻到令人难以置信。
　……但，也就是说，这意味着<RUBY text="··">极限</RUBY>的警钟已经敲响了
吗。

　虚张声势也要有个度吗……
　
　
　——回过神来，发现自己又玩弄起天真的想法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030240a00">
「万分抱歉。
不堪入目之姿污了您的眼。
　请继续。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030250a10">
「没关系吗……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　虽然亲王语调微弱且犹豫，但大概因为正如他所说，
事情确实紧急。马上便感觉到亲王仿佛定下决心般地点
了点头。
　接着，传来一阵衣服摩擦之音。

　似是亲王隔着帘子靠近了我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030260a10">
「景明君。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030270a00">
「在。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030280a10">
「本王……不想让六波罗继续在大和
为所欲为。
　绝不能让大和成为进驻军，
即大英联邦的附属国。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030290a00">
「……是。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030300a10">
「原本应更稳妥地推动<RUBY text="··">事态</RUBY>。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030310a00">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030320a10">
「但，看来已行不通了……
　谁料ＧＨＱ竟如此蛮横，不择手段……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　对六波罗的苛政熟视无睹，更驱使诸如雪车町一蔵
之流的间谍构筑「大和武者暴行」。相比之下，反而
将进驻军英雄化了。
　我承认，要说蛮横，其手段倒是蛮横至极。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030330a10">
「于是。
　我方或许需要断然采取措施
……本王有此想法。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030340a00">
「……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030350a11">
「若将围绕大和的斗争比作将棋，那就是
有可能导致翻盘的危险手段。
说实话，并非万无一失。
　然……形势迫在眉睫。想必是的。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030360a11">
「……我们所期待的时间想必是争取不到了。
然而如若坐视不管，
就等于弃大和未来于不顾……
　不，我们必须开辟。生存的道路。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030370a00">
「……署长……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　我小声呼唤着。
　是为了催促他说下去还是阻止他说下去，连自己也难以
判断。

　我还没有迟钝到未能悟透，署长拐弯抹角的话语最终的
目的所在。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030380a11">
「敌方势力甚强。
　而我方势单力薄。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030390a11">
「但……并非不可战。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030400a00">
「采取惯用手段吗？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030410a11">
「对。
　<RUBY text="····">惯用手段</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　弱小势力的惯用手段。
　署长所暗示的，是身为警察之人绝不允许的行为。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030420a00">
「……竟被追逼至此……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030430a11">
「距离<RUBY text="··">真正</RUBY>被逼得走投无路之时
已没有时间了，
就是这个意思。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　一旦被宣判死刑一切就都完了。不管离死刑执行还有
多少年，必死的命运已无法颠覆，是这个意思吗。
　……不可否认。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030440a00">
「目标是……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030450a11">
「……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030460a00">
「不可能是进驻军。
　即便成功干掉进驻军首脑，联合国总部只要
派来接任的就行了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030470a00">
「倒不如说，惊动进驻军，迫使他们采取
急进行动……效果适得其反。
　那么……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　亲王和署长一句话都没有说。
　然而，他们的沉默——恰恰回答了无可否认的事实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030480a00">
「……目标是另一方。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030490a10">
「……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030500a00">
「王将？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030510a10">
「正是。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030520a00">
「那样做真的能救大和吗。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030530a10">
「除掉王将并不意味着取得胜利。
毕竟现实与将棋不同。
　但，形势会发生巨大变化。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030540a00">
「……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030550a11">
「景明。
　你应该知道镰仓幕府以来的政治传统吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030560a00">
「……权威与权力分离？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030570a11">
「对。
　镰仓幕府在大和全境建立统治权之际，
未采取废除旧时统治者，即朝廷的手段。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030580a11">
「若在他国，此举倒也理所当然。
　但过去曾有过藤原政权与平氏政权的先例，
谁也不希望历史重演……」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030590a11">
「然相对于藤原氏与平氏的紧贴朝廷权力，
源氏则疏远朝廷。
　将朝廷安置在京都，并在东部镰仓建造
新都。政权与朝廷分离。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030600a11">
「通过迫使朝廷认可自身政权的形式，
同时继续保障朝廷权威，并以此作为
统治的大义名分……
　另一方面，却排挤朝廷介入政治。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030610a11">
「这种<RUBY text="····">合理有效</RUBY>的手法后世
便沿用下来。
　除极短的例外时代外，一直
沿用至今。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030620a11">
「六波罗也未打破这一传统。
　由于权威与权力的双重构造已在大和
根深蒂固。与其强行颠覆，倒不如善加
利用获利更大……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030630a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　教科书般的解说。
　不过，署长的目的当然不是模仿历史教师。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030640a11">
「……关键就在这里。
　换言之，大和政权想要确立统治力，
必须得到朝廷的支持。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030650a11">
「对于<RUBY text="··">已经</RUBY>确立统治的
政权来说，朝廷不过是使用完毕的神舆而已。
　为了将来不被他人利用，将其悄悄纳入
库中藏起便可。」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030660a11">
「但，还未<RUBY text="··">确立</RUBY>统治的
政权却不能让神舆在库中长眠。
　还必须抬着神舆外出游行，让所有人都臣服
于其威望之下。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030670a00">
「……
　如果，神舆有了自己的意志，
主动要求什么的话——」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030680a11">
「没错。
　作为想要依赖神舆之人，无法置若罔闻
吧？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030690a00">
「……为此，要取王将……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030700a11">
「现今六波罗的统治已稳固。
　但，若使其丧失统治之顶点……」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030710a11">
「六波罗幕府有个很大的特点，即其是统
管在足利护氏这一豪杰之下。
　就算立继承人代替他，发挥出上代威力
仍需花费时间。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030720a11">
「如此一来，漏洞自然增多。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　倘若失去大将领足利护氏，六波罗的统治体系将出
现裂缝。
　以四公方为首的派系将浮出水面，并开始呈现对立
之势。

　——利用这种对立态势趁虚而入。
　接近任一派系，<RUBY text="··">使其</RUBY>利用
舞殿宫的存在所象征的朝廷权威。

　接着反过来获得政治发言权。
　简而言之，就是这个意图吗……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030730a00">
「不过，ＧＨＱ会对幕府的失衡
不管不问吗？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030740a10">
「想必不会不管不问。
　但，本王不会使事态发展到最坏的一步。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　进驻军趁着六波罗幕府动荡的绝好时机，开始着手攻
击——
　亲王担保绝不会出现这种情况。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030750a10">
「原本进驻军就不是因为畏惧幕府
而保留实力。
　而是为了在占领后不激起国民反抗情绪，
而各方周旋以待时机，对吧？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030760a00">
「是。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030770a10">
「也就是说，如果『邪恶而强大的幕府』形象
有所动摇，ＧＨＱ的作战便将推后。
　因为即便击溃软弱的幕府，国民也不可能
怀有感激之情。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030780a00">
「……原来如此。
　是指如果ＧＨＱ会出动，那要么是幕府动荡
平息再度掀起残酷暴政的情况，或者……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030790a11">
「或是出现对立冲突，导致内战爆发的情况。
　如若事态至此，我想大和国民只能指望
依靠进驻军的力量求得和平了。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030800a00">
「ＧＨＱ当然也会展开策动，使得事态演变
至此吧。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030810a10">
「将会是进退两难之战。
　不过，仍有胜算……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030820a10">
「连同护氏一起，抛去『邪恶六波罗』的印象，
重新塑造一个统治相对稍显和缓的幕府。
　减税、缩小军队规模。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030830a10">
「若新幕府被国民所接受，
我方就胜了。
　全无进驻军出场的余地。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030840a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　我可不认为事情有想像的那么简单。
　但，想必亲王也是在明白这一点的基础上，才敢说有
胜算。

　亲王的政治力尚是未知数，但至少其思考能力非常清
晰，且还有在未犯严重过失的情况下完成镰仓皇族代表
这一重任的实绩。
　哪里是像我这种庶民可以插嘴胡说的。

　另有应持疑问态度之处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030850a00">
「……可是。
　真的有将足利护氏这一王将将死的
棋路吗？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030860a11">
「就好比金将单枪匹马
闯入守卫森严的敌阵吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030870a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　对方是大和武家之栋梁。
　是屹立于号称百万骑军队顶峰的男人。

　普陀乐城的天守阁三百六十五天都有十道二十道的重
兵把守，不可能通得过吧……
　而且此人不论去哪里，都有名为厩众和奉公众的精锐
亲卫队贴身随行。

　不够彻底的举动很难取其首级。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030880a10">
「棋路已打开。
　你知道即将于近期举行的奉刀参拜吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030890a00">
「是……
　有所耳闻，听说是源氏当权者参拜八幡宫，
为感谢今年一年的武运并祈求来年武运而举行
的太刀献供仪式。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　由于并不是在众目睽睽之下大肆举行的祭祀仪式，我
也就知道这么多了，当然也未亲眼目睹过。
　凭此也能想像出此仪式的重要性。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030900a10">
「正是。
　而且，献供之刀有两把。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030910a10">
「地下地上，各一把。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030920a00">
「……地下？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030930a10">
「八幡宫的祭殿有二座。
你不知道吧。
　隐藏在表祭殿后方的里参道，
极其深邃隐蔽之处还有一座。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030940a10">
「此乃最高机密。
　不可外泄。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……城砦构造吗。

　神社、寺庙对当地人来说是心灵的依靠。
　据说，因此，从古时起就为了在兵难时作为据点代替
城堡发挥作用，配备了防卫设施。

　日光东照宫就是一个最好的例子。
　有一种说法称，以阳明门闻名遐迩的神社，就是为德
川家穷途末路移出江户城之时而预备的最终据点。

　如同东照宫是德川一门的守护神一般，八幡宫就是源
氏的氏族神。
　就算古今中外的城砦无一例外地拥有地下构造，或许
也不是什么值得惊讶的事情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030950a10">
「于是呢。
　为地下祭殿奉刀时，必须仅由源氏长者
与陪同神官进行。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030960a00">
「……这……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　未免也太天时地利了吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0030970a10">
「这是自八幡太郎义家作为源氏长者名代执行
了最初的奉刀仪式以来的传统。
　虽说不甚合适，说变就变也是不可能的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030980a00">
「……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0030990a11">
「我知道你想说什么。
　你想说这么明显的绝好机会，对方怎么可能
不严加警戒，对吧。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031000a00">
「我倒是有这种想法……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031010a11">
「当然会有所警戒。
　迄今为止也进行过大将领惯例的只身奉刀，
绝非毫无防备。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031020a11">
「原本八幡宫内就布有周边一带直属的武者组
成的警备网，仪式举行时戒备森严，别说可疑
之人，连一只猫狗也进不去。
　且大将领本人也剑冑不离身……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031030a10">
「因仪式之前当然会彻查祭殿的角角落落，
事先派刺客潜入也行不通。
　就算能够巧妙地蒙混过关，
能够结果武者护氏的也只有武者。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031040a10">
「镰仓没有与六波罗敌对的武者，
因此结果还是不可行。
　……虽然情况不容乐观。不过依现在
本王的实力，哪种方法都可行。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031050a10">
「派刺客很简单。只要乔装成
陪同神官便可。
　再者，对付武者护氏……<RUBY text="····">同为武者</RUBY>便能
将其击败。不可能存在的，八幡宫武者。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031060a00">
「…………」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031070a11">
「事成之后，可从地下祭殿逃脱，
一口气逃至市外。
　只要趁其不备，就有可能做到。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031080a11">
「警备兵只能找到大将领遗体……
　还有，不知遭何人袭击且装束被夺、
昏迷不醒的<RUBY text="···">真正的</RUBY>陪同神官。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031090a10">
「剩下的问题只有……
　乔装的陪同神官如何将剑冑
掩人耳目地带入祭殿。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031100a00">
「……那么，之后的事情……」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031110a00">
「不管如何粉饰，若足利护氏在八幡宫遇害，
怀疑的矛头首先就会指向宫殿下您。
　恐会遭到不分青红皂白的报复。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　对大和人来说，反抗朝廷是一项重罪。
　虽无法妄下结论……但也不能断言六波罗不会做出
这种事来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031120a10">
「无需担心。
　六波罗会为本王准备不在场证明的。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031130a00">
「……？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031140a11">
「即便刺客是宫殿下派出的，六波罗
也具备加以报复的力量。
　但是，就算这样互相中伤，
幕府也落不到任何好处。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031150a11">
「最好就是做好防范于未然的措施。
　……故在奉刀参拜期间会将宫殿下挟为
人质。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031160a00">
「人质？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031170a10">
「在奉刀参拜当天，本王会被安置在普陀乐。
　以接待京都朝廷派来的奉币使的名义。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031180a00">
「……身为八幡宫别当的宫殿下和奉币使，
不参加祭礼吗？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031190a10">
「没错。
　都是派代理人出席。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031200a10">
「我必须和奉币使二人一同在普陀乐城品茶，
直到参拜结束。
　周围被军队围得水泄不通……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031210a10">
「他们的眼神都在说：
敢轻举妄动小心脑袋不保。
　哦哦，太可怕了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031220a00">
「………………
　不，那……也就是说……」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031230a00">
「若是搞暗杀活动，即刻便会将宫殿下
您本人置于险境？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　虽然的确能够起到不在场证明的效果……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031240a10">
「那倒不一定……
　这便是政治的玄妙之处。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031250a11">
「大将领护氏健在时和往生后，
宫殿下所代表的意义各有不同。
　因为失去护氏，必定意味着六波罗
权能的动摇。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031260a11">
「如果有确凿的证据能够证明暗杀与八幡宫有
关连则另当别论，但……
　如若在没有证据的情况下对宫殿下进行肃清
等行径，想必会对其动摇带来致命性的加速。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031270a11">
「连这种事情都考虑不到的人，在护氏亡故后
掌握政权的四公方中是没有的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　…………即。
　六波罗为牵制亲王做出危险举动而将其挟为人质。
然，如若亲王果真付诸行动，却又无法轻易
处置——是这么回事吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031280a00">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031290a00">
「此番话，着实高深。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031300a10">
「直言无妨。
　你觉得这种事很荒唐吧？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031310a00">
「……是……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031320a10">
「的确很荒唐。
　本王不觉得六波罗没有察觉到
这种荒唐不堪。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031330a10">
「结果还是自尊心作祟。
　他们以为像本王这种蠢货做不出什么
惊人之举，才在防范上疏忽大意……」


{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031340a10">
「呵呵。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031350a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　若果真如此。
　将这份自尊植入六波罗的——正是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031360a11">
「景明？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031370a00">
「没什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　……突然有一种窥见无底之沼的感觉。
　我擦去颈后冒出的薄汗。

　政治的世界，已超出我的理解范围。
　看来不该再继续追问下去了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031380a10">
「啰里啰嗦地说了半天。
　不过，本王想，刚才所说的
你应该都理解了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031390a00">
「……是。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031400a10">
「该是决断之时了。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031410a00">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031420a10">
「为了改变大和历史的洪流……做出决断
之时来临了。景明君。
　只有现在……现在不行动，更待何时。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031430a00">
「…………」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031440a11">
「……景明。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031450a10">
「你的决定呢……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　一直以来避免去思考的问题。
　但，已经到了必须去面对的时候了。

　<RUBY text="·····">由谁来实行</RUBY>。

　……我心如明镜。
　甚至令人觉得咬牙切齿。

　除主谋和同谋外，能够对其将计划全盘托出者，唯有
实行犯而已。
　而且这两个人，也不可能会就权谋术数来特意征询我
这种人的意见。

　现在他们问的不是我的意见。
　而是我的意向。

　——杀还是不杀足利护氏。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031460a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　我放在膝上的手，微微抖了起来。
　真狼狈。但，无论我多么想抑制，都不管用。

　只要浮起杀人的想法，我就无法停止颤抖。

　……可以理解。
　也能够认同。

　元帅大将之死，将会变成历史的转折点。
　若亲王得以成功掌权，想必会将大和导向「美好的未
来」。

　另一方面，倘若只是袖手旁观事态发展的话……
　或是ＧＨＱ得以完全占领大和，或是六波罗成功驱逐
ＧＨＱ而使自身专制统治坚如磐石。

　两者都不是令人愉快的美好蓝图。

　我明白亲王为什么会说现在是时机。
　那恐怕——是对的。

  如果以大和国的<RUBY text="····">相对幸福</RUBY>作为真理，
那亲王肯定是对的。
　我能够认同。

　但。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031470a00">
（要杀吗……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　这与银星号无半点关系。
　任意<RUBY text="·······">衡量生命的价值</RUBY>。

　擅自断言某个人的生命毫无用处。
　继而杀之。

　——而且还要再杀一人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031480a10">
「……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031490a11">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　幸好他们不急着要我作答。
　这恐怕是因为他们深知让我去执行意味着什么。

　此身为被诅咒之村正。
　斩敌之后，反刀斩友。

　若杀掉护氏，则必须再杀一人。
　杀谁……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(200, true);


}

..//〔英雄編〕と〔復讐編〕での共有エリア２：ココまで
..//ジャンプ指定
