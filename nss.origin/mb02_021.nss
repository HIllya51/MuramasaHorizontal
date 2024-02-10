//<continuation number="360">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_021.nss_MAIN
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
	#bg026_普陀楽山塞a_03=true;
	#bg064_普陀楽城内道_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_022.nss";

}

scene mb02_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_020.nss"

//◆夜
//◆普陀楽城
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg026_普陀楽山塞a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　凌晨四点。
　看准众人沉沉入眠之际，开始行动。

　避开巡逻队的路线也已事前调查完毕。
　穿梭于瞭望楼视线的狭窄死角之间，在夜幕中
潜行。

　……说实话，有所担忧。
　也许是杞人忧天了——但是。

　那场能乐表演。那次<RUBY text="····">以儆效尤</RUBY>有何
深意。
　还有，那位诡异男子的视线……

　每每思虑，都让人更添疑惑。
　但尽管如此，延期行动是不可能的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210010a02">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　想要阻止一条，难于登天。
　如果我把时间花在调查上，那她一定会在那期间展开
单独行动。

　这等于见死不救。
　放任这位只知向前冲的少女随性而为的话，绝对无法
成事。

　堆砌起一座残骸之山后，她会卧于山顶吧。
　毫无意义。

　不能让这事发生。
　为了阻止死无所值的残骸堆积的结局，我与她同行。

　虽已放弃延期行动，但一条期待的作战变更——刺杀游
佐童心——她终于在我的劝说下死心了。
　因为我很明白，没有成功的可能性。

　……或许与可能性云云毫无干系，此时必须克制住。
　但若有一线成功的希望，我能发自内心地阻止一条吗？
连我自己也不甚明了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg064_普陀楽城内道_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw岩田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210020b20">
「等待已久。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210030a00">
「迟到了吗？」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210040b20">
「很准时。
　对了，武器呢？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210050a00">
「在这里。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正蜘蛛＆正宗天牛虫
	StR(1000, @100, @200,"cg/st/3d村正蜘蛛_俯瞰.png");
	StL(1000, @-100, @350,"cg/st/3d正宗天牛虫_正面.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);

	CreateSE("SE01a","se人体_足音_鎧歩く03");
	CreateSE("SE01b","se戦闘_動作_鎧_踏み込み02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeStR(300,true);
	MusicStart("SE01b",0,1000,0,800,null,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw岩田_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210060b20">
「呃！」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210070b20">
「……失礼。
　没注意就在近旁。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210080a00">
「因为一直让她潜伏着。
　是我失礼……不该唐突让她现身。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　擅长隐身的村正毋庸置疑，正宗也似乎拥有潜伏性能，
只需稍有黑暗与阴影便能消踪匿迹。
　无法被常人察觉也是自然。

　事虽小，但的确是巨大的失误。
　如果害得岩田女史大声叫嚷的话，在行事之前就落得个
逃跑的下场。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210090a00">
（……不妙）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　总觉得<RUBY text="··">形势</RUBY>不妙。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210100b20">
「这个剑胄……是真打吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210110a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　在见面之时，就已经告知她，我们持有剑胄。但她似
乎完全没有料到会是如此稀罕古老的东西。
　她凝视着两副剑胄，满脸难以置信的表情。

　此事没有一开始便知会，而是隐瞒到最后关头，是为
了营造出<RUBY text="····">戏剧効果</RUBY>。
　让亲王阵营所持有的武力程度留下深刻印象——想必
这也会影响到今后与今川雷蝶的关系吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210120b20">
「……那么，我们走吧。
　我先行，绫弥小姐紧随我，麻烦凑斗大人垫
后。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210130a00">
「明白了。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210140a02">
「你想怎样。
　听上去像是你在引导我们一样。」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210150b20">
「从内宫女佣所用后门行至主堡。
　原本夜间会闭门上锁，但我已事前打点，此
门今夜敞开不锁。」


//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210160b20">
「一旦进入主堡之后就没有困难了。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210170a02">
「是吗。
　……凑斗先生，什么时候装甲？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210180a00">
「<RUBY text="··">潜入</RUBY>行动结束，临近<RUBY text="··">袭击</RUBY>行动之前。
　现在还早……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210190a00">
「装甲的瞬间，至少主堡内负责警卫的武者会
注意到我们的存在，想必他们会全队杀来。
　必须瞄准千钧一发的机会。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210200a02">
「明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　在地面、尤其是屋内，武者的雷达探测虽是摆设，但
红外热探测还是有效果的。
　虽然它的探测范围有一定局限，但同一建筑物之内出
现的可疑骑体还是可以探测到的吧。

　此刻活动中的龙骑兵定会即时出现——有时甚至会来
自更广范围。
　听说最新的陆战用龙骑兵配备有以往不可比拟的强力
红外热探测……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210210b20">
「此次作战关键在于迅速。
　一旦判断已充分达到目的，就请迅速撤退。」


//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210220b20">
「一旦周边上空被封锁，就是死路一条。
　请无论如何在那之前逃出城外。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210230a00">
「明白。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210240a02">
「那你怎么办？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210250b20">
「邦氏大人遭遇袭击的同时，政所新人消失无
踪的话，一切就都暴露了。
　而介绍这位新人的我也难逃其咎——」


//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210260b20">
「我为你们引路后会马上撤出。
　无需担心。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0210270a02">
「我才没有担心呢。
　……我只是不想还要照顾你，六波罗。」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0210280b20">
「……哎呀，是吗。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0210290a00">
（村正。周围情况如何？）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0210300a01">
《没有异常。
　当然，也不是说万事大吉。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0210310a01">
《警卫系统一如既往的森严。
　不过，既然有熟悉内部的人为我们引路，潜
入应该不难吧……》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0210320a01">
《只要那边的天牛不拖后腿。》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/0210330b40">
《信口开河，区区一蜘蛛尔。
　与汝等无道之辈不同，吾不擅隐于暗处，但
吾不以为耻。》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0210340a01">
《……<?>
{Wait(500);}
哎哟，是吗。
　性能有缺陷却还不自知羞耻，这也算剑胄？
天下第一名剑胄的器量就是不一样呢。》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/0210350b40">
《……》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0210360a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……总觉得有些郁闷。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"mb02_022.nss"