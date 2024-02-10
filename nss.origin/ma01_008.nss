//<continuation number="840">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_008.nss_MAIN
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
	#bg008_教室_01=true;
	#bg001_空a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_009.nss";

}

scene ma01_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_007.nss"

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg008_教室_01.jpg");

//◆教室
	SoundPlay("@mbgm26",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　无论是焦虑还是无忧无虑，时间依旧一如既往地流逝，
学校一如既往地要去，课程也一如既往地在继续。

　说实话，我根本没有认真听课的心情，但
这种状况下如果再翘课，只会助长骚动吧。
　即使说明是去找律也肯定不会得到理解。

　想尽量避免给学校，
更尤其是照料我的来栖野家带来麻烦。
　作为一个不过是远亲的孤儿，不能让照顾我的
叔叔阿姨担心。

　……如果是被亲生父母养育大的，这种时候
恐怕反而想去依靠吧？
　虽然一瞬想过这类问题，却弄不明白。连因事故而死
（听说是）的双亲的脸都不记得。

　不管怎样，对我来说最好的方法只有等待放学后再行动。
　至于上课……虽然对本该有着相同心境却
尽职尽责上着课的铃川有些抱歉，
请让我当作耳边风吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStC(300,true);

	SetFwR("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080010b57">
「……把历史分为古代、中世、近世、近代、
现代的区分方法，就叫做时代划分。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080020b57">
「上回学习到的是近代。
　今天开始进入现代……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080030b57">
「关于近代和现代的划分有诸多学说。
　其中之一是以新型剑胄的诞生
作为开端。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080040b57">
「从上古时代至今，剑胄一直是最强兵器。
使装备的人类身体能力飞跃性上升，在空中自由
驰骋……能胜过它的武器，尚且没有。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080050b57">
「陆上的战车，空中的飞行舰作为有力兵器
也很受注目……但无论哪方从单纯战斗力来看
威力远不及剑胄确是实情。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080060b57">
「从<RUBY text="ＨＶＡＰ">高速彻甲弹</RUBY>开始，
以击落剑胄为目的的兵器研究也在开展。
我国在战时，也曾一时上演过电磁加速炮之流的
计划。但能达到实用的例子几乎没有。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080070b57">
「没有能打倒剑胄的兵器，也没有剑胄无法
打败的兵器。
　只要有意，使用剑胄一人就能
驱逐全副武装的百人步兵。」

{	FwR("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080080b57">
「……不。岂止如此。
　这之中，甚至还曾有人仅凭一人之力
便将整个城市毁灭。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080090b57">
「虽然不管在哪个国家都有这类传说……
　但如此事实，并不是作为天方夜谭，而不得不
作为现实威胁接受的我们大和国民……
很遗憾，非常不走运。」

{	FwR("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0080100b56">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景50", 1050, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Fade("絵背景50", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　坐在窗边的几人，突然抬头望向天空。
　像是在惧怕骤雨降临般。抑或是，惧怕着那以外的什么。

　……所幸，什么都没有。
　没有<RUBY text="···">白银色</RUBY>的东西，什么都没有。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStL(0,true);
	DeleteStC(0,true);

	FadeDelete("絵背景50", 400, true);

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080110b57">
「剑胄正拥有如此威力。
　使用此等剑胄之人，称为武者。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080120b57">
「近代以前，武者仅限于小部分
上层士族……高野，这是为什么？」

{	NwC("cg/fw/nw高野.png");}
//【ｅｔｃ／高野】
<voice name="ｅｔｃ／高野" class="その他男声" src="voice/ma01/0080130e074">
「因为剑胄是贵重品。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080140b57">
「为什么是贵重品？」

{	NwC("cg/fw/nw高野.png");}
//【ｅｔｃ／高野】
<voice name="ｅｔｃ／高野" class="その他男声" src="voice/ma01/0080150e074">
「因为一名锻造师只能制造出一台。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080160b57">
「是的。锻造剑胄是锻造师一生中的唯一一打。
　究其原因，为了完成剑胄，锻造师必须将自己
的身体和魂魄打造融入铠甲之中
……这就是所谓的『心铁相通』。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080170b57">
「如此一来，在最初，要使剑胄获得可谓最强
武器的力量……锻造师也需要具备相当的
头脑，配合使用者的意思定制。如果不能
达到心铁相通，就只不过是上乘铠甲而已。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080180b57">
「即是说，为了打造一台剑胄，锻造师必须
献上一条生命。
　说它是贵重品也理所当然。」

{	NwC("cg/fw/nw吉田.png");}
//【ｅｔｃ／吉田】
<voice name="ｅｔｃ／吉田" class="その他男声" src="voice/ma01/0080190e046">
「老师。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080200b57">
「怎么了，吉田。」

{	NwC("cg/fw/nw吉田.png");}
//【ｅｔｃ／吉田】
<voice name="ｅｔｃ／吉田" class="その他男声" src="voice/ma01/0080210e046">
「打造剑胄的锻造师都死了吗？」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080220b57">
「……这是个很难回答的问题。
　锻造师的心魂作为剑胄的<RUBY text="ＯＳ">统御机能</RUBY>
存留了下来，也可以视为还活着。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080230b57">
「但不管怎样，那终究只是作为剑胄部件的
精神……或者说，<RUBY text="··">类似</RUBY>精神的东西。
　基本没有人类特征。只能回应使用者的命令，
不会自发行动。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080240b57">
「虽然也有人说曾有并非如此的剑胄存在过，
但那只是传说中的远古神话。
　现代应该不存在了吧。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080250b57">
「于是。
　基于上述原因，直到近代，武者的数量
都非常之少。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080260b57">
「这种世界共通的情况发生戏剧性变化是在
国纪二五四九年……<RUBY text="哈布斯堡">二重帝国</RUBY>的兵器制造商，
泽格勒公司全世界首次没有耗费锻造师的
生命便完成了剑胄的制造。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080270b57">
「那么在这之前的二五四四年。
　有人知道发生了什么吗？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0080280b43">
「我知道。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080290b57">
「稻城。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0080300b43">
「<RUBY text="不列颠">大英联邦</RUBY>的佛理德教授根据<RUBY text="镜像">多重复写</RUBY>法
研究出的<RUBY text="克隆">生物体复制</RUBY>技术开发遭遇停滞，
研究成果出售给了泽格勒公司。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080310b57">
「成果的具体内容是？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0080320b43">
「人体复制的完成。
　但是因为无法克服免疫问题，备受期待的
医学有效利用被断定为不可能。」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080330b57">
「是的。
　然而泽格勒公司的阿鲁布里希德博士随即想到
这个技术可以运用于剑胄的制造工程。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080340b57">
「为了让剑胄成为能力的源泉，同时具备驾驭
这种能力所需要的智慧，锻造师自身的
身体和心灵是必须的。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080350b57">
「博士成功用复制人体实现前者，机械式
<RUBY text="ＣＰＵ">演算装置</RUBY>和<RUBY text="Ｐｒｏｇｒａｍ">命令系统</RUBY>代替后者。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080360b57">
「可以量产的全新剑胄由此诞生。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080370b57">
「但是这种新型剑胄就性能方面来说，比以往的
剑胄远远不如——」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080380b57">
「比如说，在旧型剑胄里也属于上等品的剑胄，
可以在使用者没有装甲的状态下，也拥有
接受指示单独行动的能力。
　这种时候的形状多为利于移动的马的姿态。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080390b57">
「新型剑胄就无法做到这些。
　即使如此，新型剑胄也发挥了充分的能力。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080400b57">
「不必消耗比什么都贵重的技术者
——锻造师便能完成的事实，震惊了
各国军事关联者。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080410b57">
「如此一来，世界各国都争相采用这种
新型兵器……引进技术，量产，再反复改良。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080420b57">
「如今，就算是性能也在逼近旧型机种的时代
正在来临。这样认为的人也很多。
　诸如竞技用剑胄的派生机种也相继登场。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080430b57">
「另一方面，和新型剑胄的普及成反比，
旧型剑胄的制造急速下降……
　不过，也是当然的吧。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080440b57">
「技术开始遗失，时至现在，据说就算虾夷种族
的锻造师中也只有少数人在传承着
锻造法。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080450b57">
「如今，战场的主角是新型剑胄。
　使用旧型剑胄的，除了出身家族颇有渊源的
将校之外再无他人。」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080460b57">
「这里我们稍微整理一下用语。
　好好听着哦？　想得零分的话倒无所谓。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　呜哇好危险。
　又差点睡着了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080470b57">
「拥有超能力的铠甲称为剑胄，使用剑胄的人
称为武者。这里明白吧。
　剑胄有两种，新型和旧型……大和
一般称前者为数打，称后者为真打。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080480b57">
「西洋的称呼方法为新式剑胄和
旧式剑胄。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080490b57">
「而武者，军事专门用语中称为龙骑兵。
但从狭义上讲，前者表达的是真打使用者，后者
表达的是数打使用者，使用时也包含这重含义。
希望大家注意。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　新型=数打→龙骑兵
　旧型=真打→武者
　
　…………吧。知道啦。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0080500b56">
（龙骑兵……武者，吗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
　直到不久之前，那还是英雄或勇士的代名词。
　拥有比谁都强悍的力量，比谁都严格地服从着命令。
永远作为市民的盾牌，矗立在外敌之前，国家的
守护者……

　每个男人都曾憧憬过。
　所谓武者，便是这样的存在。
　
　……直到不久之前。

　如今。<k>
　提到武者，就是<RUBY text="·····">那个六波罗</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080510b57">
「话题回到近代和现代的划分。
　总之，有学说以龙骑兵的登场作为
现代的开端。但其中的理由大家明白吗？
　大川。」

{	NwC("cg/fw/nw大川.png");}
//【ｅｔｃ／大川】
<voice name="ｅｔｃ／大川" class="その他女声" src="voice/ma01/0080520e162">
「不知道！」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080530b57">
「很有精神很好。你先站着。
　那么我们问问剑胄博士稻城。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0080540b43">
「因为过去只属于权力者占有物的最强兵器，
开始过渡到市民阶级的手中。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080550b57">
「不错。
　由于新技术的诞生，剑胄数量
爆发式增长——」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080560b57">
「话虽如此，单单要造出十台，就必须
要国家预算级别的资金筹划，剑胄
依旧是稀少品这一点并没有改变。
　不过只是和以前的情况相比而言。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080570b57">
「剑胄的数量一旦增加，使用者就不能只靠
士族阶层维持了。
　多出来的部分怎么办？　对，平民。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080580b57">
「将剑胄分给在此之前只能在军队里充当配角的
平民出身者，构成龙骑兵部队。
　如此一来随着拥有了力量，
自然，发言权也倍增。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080590b57">
「隶属于大和国军队的龙骑兵部队诞生于兴隆
二年，而财产限制被从选举法中撤销是在
兴隆十年……国纪二五六九年。这期间
仅仅相隔八年时间既非偶然也非其他原因。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080600b57">
「如果说枪支催生了民主主义，
那么将其养育壮大的就是新型剑胄。
　以龙骑兵的登场作为现代开端，便是
源于这样的考虑。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　总感觉是杀戮气十足的历史观呢。
　兵器的进步居然能改变整个历史……不过，
确实也有这样的看法。

　按照这种观点，下次又会是什么兵器登场
书写新的历史吧。
　肯定不是什么轻松的东西。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080610b57">
「那么，接下来是现代史……我们下次讲吧。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080620b57">
「今天只是大概说明一下就结束。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　很好。
　今天的课程终于到了最后。之后只要做完扫除
就可以去找律了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080630b57">
「民主主义或者说民族主义的成长催生了
被统治区域对大国殖民统治的反抗，
而在各地抵抗运动中繁荣兴盛。」



//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080640b57">
「遭遇此种状况，大和向国际社会控诉
要求撤销种族歧视。本企图确立自身在
亚洲的盟主地位，却遭到了以大英联邦为首的
白人诸国反对。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080650b57">
「日俄战争终究没能阻止俄国南下，
大和以对抗之势推进了向大陆的进展。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080660b57">
「此事使大英联邦更为警惕，联合促使
大战爆发……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080670b57">
「国内由于龙骑兵的诞生，统管武者的组织
六卫府势力扩大。
　率先突入大战的陆军、海军共同形成国军组织，
号称龙军统治起首都圈。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080680b57">
「……这就是六波罗幕府的诞生。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080690b57">
「之后是大战。欧州、亚洲、以及其他
诸多地域都被战火幕布覆盖。
　大和军向大陆和南洋进发，序盘阶段
连战连胜，使人相信亚洲统一在即。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080700b57">
「然，大英联邦将新大陆驻留军遣向
太平洋方向，迎击大和军。
　进一步动用国际联盟——」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080710b57">
「国际统和共荣联盟是以和平解决国家间问题
为目的创建的组织，但实际上，众所周知，
只不过是大英联邦及其
卫星国家的赞助协会而已。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080720b57">
「大英联邦获得联盟决议，编成<RUBY text="ＵＮＦ">联盟军</RUBY>。
　说到底，战力中心仍是之前的新大陆军。
战力方面并没有得到多少增强，但这支军队的
到来，消除了补给方面的不安，意义非常重大。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080730b57">
「另一方面，资源短缺、没有他国支持的
大和一侧，在速战速决的意图被挫败之后
难以维续。
　战况胶着……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080740b57">
「最终，大和军被迫回撤，失去占领地，
终于迎来本土决战。
　败势进一步延续，九州、中国区域被侵略
……但是，六波罗仍健在。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080750b57">
「每个人都相信，只要六波罗出击，
局势就能反转……
　而六波罗呢。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080760b57">
「下达了大和史上史无前例的，历史决断。」

{	FwC("cg/fw/fw雄飛_通常b.png");
	FadeFwC(300, true);}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0080770b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　绝妙的讽刺。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080780b57">
「<RUBY text="······">六波罗背叛了</RUBY>。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080790b57">
「舍弃祖国，降伏联盟军。
　他们成为一线尖兵，镇压大和。烧毁城市、
屠杀市民，胆敢忤逆者全部消灭。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080800b57">
「如此大战终结，大和被保障了一时的主权，
但却被置于联盟的<RUBY text="ＧＨＱ">进驻军司令部</RUBY>管理之下……
作为叛变的奖励，六波罗获得了
在其之下对大和的统治权。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080810b57">
「时值兴隆三五年，国纪二五九四年，外历
一九三四年。
　……距今六年之前。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080820b57">
「是的。
　从那之后至今，<RUBY text="····">只有六年</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0080830b57">
「……以上。下次我们按照这个时间顺序
讲下去。
　那么值日生。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0080840b33">
「起立！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト

	ClearWaitAll(2000,3000);

}

..//ジャンプ指定
//次ファイル　"ma01_009.nss"
