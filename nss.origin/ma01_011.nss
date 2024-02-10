//<continuation number="1570">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_011.nss_MAIN
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
	#ev001_銀星号事件イメージ１=true;

	#bg016_公園a_02=true;
	#bg013_鎌倉俯瞰a_02=true;
	#bg013_鎌倉俯瞰a_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_湊斗景明=true;

	$PreGameName = $GameName;

	$GameName = "ma01_012.nss";

}

scene ma01_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_010.nss"

//◆公園

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 1500, "Black");
	Delete("上背景");


	SetFwC("cg/fw/fw雄飛_怯えb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110010b56">
「真——的非常抱歉！」

{	#voice_on_湊斗景明=true;
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110020a00">
「是。我已经理解你们的谢罪了。
　请抬起头来。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg016_公園a_02.jpg");

	SoundPlay("@mbgm27",0,1000,true);
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
　暗黑的男人，意外的是个大好人。

　明明就是我们蠢蛋三人组不由分说地突然把他打倒，
又反过来一个劲地慌忙解释前因后果并道歉，他却极有
耐心地附和着，并且一句责备也没有就原谅了我们。

　这么好的人我还是第一次见到。
　怎么说呢，简直是无敌好人的性格吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110030b43">
「与其这么说，到这个程度真有点
像怪人了呢。」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110040b56">
「你超啰嗦赶快闭嘴。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ぼく。
	OnSE("se戦闘_攻撃_殴る02",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
　用拳头封住那张废话超多的嘴。
　其实，倒也不是不同意。

　和名为公园长椅的这种场所极不相称，男人
完美地挺直背脊坐着。
　但那并没有给人过于拘束的印象，一定是
因为他对这姿势习惯已久。

　个子这么高是这个原因么。
　……那么说来，我个子矮就是因为有些驼背吧。
唔，可能是。

　男子的额头上有着华丽的淤青。
　唉，这种伤虽然冷敷一下立刻就好……
　但换做是我，一句抱怨也没有就原谅对方
是不可能的。

　这么一想，果然是无比宽广的胸怀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110050b33">
「对不起。真的十分对不起。
　这两个家伙真是，完全无可救药的笨蛋，
就算我去阻止也一点都不听。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110060b56">
「对不起。顺带一提我好像有在动手之前
那边那个女人曾为我们加油打气的印象
不过那些都放到一边真的很对不起。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110070b43">
「顺带一提我虽然是实施犯但我想主犯大概
是那边的他，表述一下我的个人见解以及
给您添麻烦了真的非常抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
　以及形成鲜明对比的丑陋的我们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110080a00">
「并无大碍。因为头部最坚硬的骨骼
就是额头。
　脑浆健在，记忆也确认没有丧失。
请千万不要在意。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
　是这种问题吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110090a00">
「总之，诸位是一心想帮助朋友才会
对我进行袭击行为。
　这个理解没有错吧。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110100b56">
「嗯，差不多……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
　袭击……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110110a00">
「鉴于此种状况，可以说自己遭到怀疑也不是
没有道理。
　并不能认为是你们单方面有错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
　……不，我倒觉得就是我们单方面的错。

　这个人为什么能稳重到如此地步？
　语气也很耐心。我们明明就是一群小鬼还是加害者。

　而且武器还是铁棒。
　不小心的话可能会死。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110120a00">
「虽然你们行动武断亦为事实，但考虑
年龄因素，也没有办法。
　只是，今后请注意。我自己尚且不提，
请不要让别人再受到伤害。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110130b56">
「好、好的。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110140b33">
「铭记在心……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110150b43">
「您真是让我受教了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
　喂。这话怎么感觉那么奇怪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110160b43">
「话说回来，警察叔叔。
　这种问法可能有点那个，不过我还是想问
你为什么要采取如此怪异的行动？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110170b56">
「你啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
　确实，我也很在意这一点，
　但警察叔叔没有丝毫介意的样子。
　坦率回答了失礼至极的质问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110180a00">
「我在调查……你们的朋友，饰马律同学的
失踪情况。」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110190b33">
「诶!?」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110200b56">
「啊!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
　突然发出叫声的小夏和我。
　……啊，不。被他这么一说，其实是
相当自然的回答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110210b43">
「哎呀。老实说，唯独这点我觉得不可能。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110220a00">
「是说？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110230b56">
「别别忠保！
{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110240b33">
「停下停下——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
　真不能让他再说下去了。
　我和小夏一起堵住他的嘴。

　不过，警察叔叔似乎自己察觉了他想说的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110250a00">
「……原来如此。
　你疑问的中心思想，是警察很少会进行
正经的工作吧。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110260b56">
「那个，差不多……」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110270b33">
「如果直言不讳说出来……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110280a00">
「正是如此。
　实际上，警察机构大部分形同虚设。
实际上我自己也并不是收到对饰马律
的搜索指示才开始行动的。」


//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110290a00">
「今后也不会成立搜索组吧。
既无预算也无人手，而且不可能
得到许可。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110300b56">
「许可？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110310a00">
「六波罗的许可。
　幕府以非常时期体制为理由，
将警察设在其监督之下。
没有许可便不能行动。」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110320a00">
「并且对幕府无益的行动不会得到允许。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
　……原来是这样啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110330a00">
「可以说，警察的大部分工作与六波罗杂工
无异。
　因此，只下发必要的预算和人员，也是实情。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110340b43">
「哎呀。那样的情况我倒也听说过。
　不过如此一来，警察叔叔为什么要搜查律呢？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110350a00">
「抱歉未及时说明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_銃器_拳銃構え01");
	MusicStart("SE01",0,750,0,750,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
　警察叔叔微微打开上衣前襟，露出了
收于其中的手枪。
　之前见过的旭日纹饰。警察的证明。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110360a00">
「我是内务省警察局镰仓市警察署属员……
　凑斗景明。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110370b33">
「属员？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110380a00">
「兼职警察……
　不妨理解为古代的冈引、下引一类的存在。
 （注：江户时代的私人侦探一类）」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110390b43">
「还有这种制度啊？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110400a00">
「没有。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110410b43">
「哈？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110420a00">
「表面上没有。
　所以，也不受六波罗的监控。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110430b56">
「原……原来如此！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
　总觉得暴强悍。
　冈引……这怀旧的声响让人无法自抑。
　有点燃了啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110440b33">
「不过，刚才还说没预算啥的……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110450a00">
「是的。当然，因为我从制度上来说并不
存在于警察组织，所以活动经费也不会从
警察预算里下发。」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110460a00">
「我是镰仓警察署长私费供给的人员。
　为执行署长指示的任务，署长个人提供
必要的经费和装备。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110470b43">
「这么回事啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　也就是说，署长也在眼下的状况里尽可能地努力着么。
　虽然不知道长相和名字……但直到今日之前，
我说不定都太把他当蠢货了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110480b43">
「那么，凑斗先生的任务是？
　依照之前的谈话，应该不是对律的
搜索吧。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110490b56">
「唔。我为这个冒失的提问道歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0491]
　但我也想知道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110500a00">
「不必在意。
　我之所以调查饰马同学的失踪，是因为
发现此事件与武者有关联……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110510b56">
「诶？」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110520a00">
「我的任务，是解决银星号事件。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110530b43">
「————」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110540b56">
「————」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110550b33">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
　哈……

　哈啊————————!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵背景10", 2000, 0, null, true);

	Wait(1000);

//◆殺戮イメージ画像
	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	SoundPlay("@mbgm34",0,1000,true);
	Fade("絵背景100", 1000, 1000, null, true);
	Fade("絵背景10", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0553]
　……银星号事件。
　其拉开帷幕之时，大约是两年前。

　村庄、学校、还有军事基地等，将这些众多人聚集的
场所，一时间毫无征兆地毁灭。
　极度惨烈。极度无法理解。

　人命<RUBY text="··">全灭</RUBY>。
　以死终结。

　有人被切去头颅。
　有人被全身殴打。
　有人被出神入化的招式纵向两断。
　有人被当做肉块胡乱剁开。

　有些人被可怕的杀人者一刀葬送。
　有些人在精神错乱的尽头与同胞相残相杀。

　人命以死终结。
　只有灾难的痕迹残存。
　未有灾难的真相遗留。

　他们为何而死。
　他们被谁所杀。
　
　回答提问的只有沉默的回音。

　无人能答。
　因为无人存活、人命全灭！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0555]
　唯有，几句零星尚存的含糊证言在诉说。

　——有人看见，惨剧发生的村子中有什么飞上天空。
　——有人发现，烧塌的校舍外有人影背离而去。
　——那时，银色的什么飞驰在空中。
　——甚至连武者都惨遭杀害！　那么，犯人……

　自此大和人人皆知。那个存在。
　杀戮者。银色的。斩杀武者的存在。

　白银的武者！
　杀戮的天象！
　灾难的流星！

　
　　　　　　　　　“银星号”!!

　那是斩尽诸人的暴力。
　那是打倒武者的破坏。
　那是如神一样的噩梦。

　巨大抑或矮小不明。
　国人抑或洋人不明。
　正常抑或癫狂不明。

　……唯有，白银。

　全然不明的银色武者，毁灭了村庄、城市和军营。
　——银星号事件。

　以两年前为开端，在关东各地区得到确认的七起
事件，尽管由六波罗、ＧＨＱ分别组织进行了
专属搜查活动，至今却仍没有任何解决的眉目。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆公園
	FadeDelete("絵背景100", 1000, true);

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110560b56">
「要、要、要逮捕那个银星号!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110570a00">
「如果能这样和平解决，就太令人高兴了。
　但恐怕，有必要研究包含杀伤在内
的各种手段吧。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110580b56">
「不，不是什么恐怕吧！
　不是根本就没有胜算吗!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0581]
　那简直是一定的。

　六波罗是统帅大和境内全部武者的最强集团。
　谁也无法刀刃相向。
　
　然而唯一，若说有例外存在——

　那便是被称为银星号，未经确认的武者。
　白银的杀戮者。甚至将六波罗也作为食料的魔物。

　如果相信漏过幕府情报管制，街头巷尾的
传闻，银星号曾经将六波罗武者的一个中队
尽数全灭。
　仅凭一骑。

　真伪不知。
　但只要提及银星号，六波罗一贯的傲慢从容便
荡然无存。一个毫无目标的情报足以引得搜查班
在命令下东奔西蹿。

　强大的六波罗，仿佛也在胆怯。

　见此，潜伏在大和各地的一部分倒幕派，
也有将银星号视为英雄的倾向。
　……即使一般市民亦为事件牺牲者。

　死亡之雨银星号！
　实际状况尚不明了。但事实上，若仅凭武者一骑便
不费吹灰之力将六波罗打倒，那么毫无疑问，那必是这世上
<RUBY text="ＴＯＰ　ＯＮＥ">最强之人</RUBY>。

　无人能胜。
　毫无胜算。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110590b56">
「……还是说银星号的传说其实大多都是
夸张的？　是这么回事吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110600a00">
「不。
　反而由于情报管制的缘故，不妨说，
市民间的传言比实际情况
更加<RUBY text="··">轻微</RUBY>一些。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0593]
　喂喂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0594]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110610b56">
「……那、那样的话，你要怎么办。
　准备用那把手枪去战斗吗!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110620a00">
「那当然不可能。
　这把枪不过是作为非正式的身份证
借给我的。并未填装子弹。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110630b56">
「那不是更不值一提了吗！
  没有战斗力的话，怎么也……！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110640a00">
「有战斗力。」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110650b56">
「有也没用啊！
　所谓银星号不就是恶魔一般的存在吗？
不可能赢的啊！　对方是就算你去战斗也
没有用的家伙，为什么还要去战斗！」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110660b43">
「……」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110670b33">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0671]
　忠保和小夏没有插嘴。
　但从侧脸就能知道，他们心中的感受与我相同。

　与银星号战斗。真是胡来。
　如果换做别人说这种话，我肯定会以为是戏言吧。
　我也只会一笑了之。

　但这个人，是认真的。
　看他的表情，他的眼睛，听他的声音，就能明白。

　明明只有死路一条！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110680b56">
「为什么，要战斗呢……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110690a00">
「因为，需要战斗。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。心臓の鼓動
//◆レッドアウト、レッドイン

	CreateColorSP("鼓動", 10000, "#CC0000");

	OnSE("se人体_体_心臓の音02",1000);
	Fade("鼓動", 1400, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0691]
　……诶？
　为什么，回答如此简单。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110700b56">
「不，所以说……
　就算去战斗也不会赢的。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110710a00">
「当不得不战之时来临。
　是否取得胜利——这样的思考还重要吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。心臓の鼓動
//◆レッドアウト、レッドイン

	Fade("鼓動", 0, 1000, null, true);
	OnSE("se人体_体_心臓の音02",1000);
	Fade("鼓動", 1400, 0, null, false);

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110720b56">
「那、那肯定是重要的啊。
　输了的话，不就没有意义了吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110730a00">
「是的。我也并不认为，即使输掉，战斗本身
也充满意义。
　那样只是自我满足而已。」


//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110740a00">
「若是运动项目还好。
　但我的战斗不同。
　即使颠倒黑白，我也必须取得胜利。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110750a00">
「不过那也是，下了战斗决断之后的话。
　因为必须战斗所以战斗……这个决断，
没有必要计算胜负。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。心臓の鼓動
//◆レッドアウト、レッドイン

	Fade("鼓動", 0, 1000, null, true);
	OnSE("se人体_体_心臓の音02",1000);
	FadeDelete("鼓動", 1400, false);


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110760b56">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110770a00">
「我有责任阻止银星号。
　所以我战斗。仅此而已。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0771]
　直到最后。
　没有丝毫勇猛的气势，凑斗先生只是淡淡地，如此说完。

　……这个人。
　在说什么呢？

　想理解。
　想理解这个人的一字一句。

『因为必须战斗所以战斗』
　正是那句话，那个决断，让我——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110780a00">
「……说了以年长者自居的自以为是的话。
虽然母亲曾教导我，世间最滑稽的就是抓住
比自己年少之人谈论浅薄人生观的年轻人。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110790a00">
「实在是太羞耻了。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110800b56">
「不，没有……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110810b43">
「那个。总之，凑斗先生作为银星号事件的
专属搜查员，由于律的失踪可能也与之有关
所以在进行调查，是这样吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811]
　忠保简单总结。
　这家伙周围弥漫着不受他人影响，步调自我的感觉，
时常很让我羡慕。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110820a00">
「基本如此。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110830b43">
「那么……也就是说，律遭到银星号的
迫害了吗？
　不过，怎么说呢，我倒觉得不太像是
银星号事件。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110840b33">
「是呢……
　如果是住宅区被整体毁灭的话倒还可能。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0841]
　我也这么认为。
　根据传闻，银星号是像台风一般的大范围灾害。
　只瞄准一个人这种事，实在不太相符。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110850a00">
「……虽然提到银星号事件，大家就有
大规模屠杀的印象。但这可能并不正确。」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110860a00">
「银星号在以集团为目标的场合，由于其
事件特有的异常性而引人注目，但当
以个人为目标时，和单纯的杀人魔
之间的区别难以被识破。也可以这样考虑。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0861]
　……原来如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110870a00">
「只是，对各位的所言我表示同感。
我也不认为，饰马同学的失踪和银星号
有直接关系。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110880b43">
「也就是说？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110890a00">
「非常抱歉。
　除此之外无可奉告。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110900b43">
「啊，是吗。
　没事没事，那也没办法。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0901]
　对恪守礼仪低下头的凑斗先生，忠保连忙挥手。

　我本以为他是会将许多深入情报都悉数
告知的人，但果然，能说的和不能说的事
之间，他还是有尺度的。
　这也理所当然吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110910a00">
「话至如此，诚然失礼。
　但能让我再听听各位的信息吗？
各位以本地人立场搜集来的情报，
对我来说难能可贵。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110920b43">
「我们不介意吧？」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110930b56">
「当然。」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0110940b33">
「能有人调查律的事情，那是求之不得。
　只要是我们知道的，不管多少都告诉你。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110950a00">
「万分感谢。
　有劳了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0951]
　不由得以目致敬的凑斗先生，
　真是恪守礼仪之人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ブラックアウト
	CreateColorEX("暗転", 15000, "#000000");

	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("SE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	Fade("暗転", 2000, 1000, null, true);



	WaitPlay("@mbgm*", null);

//◆ウェイト
	Wait(3000);

//◆ブラックイン
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg016_公園a_02.jpg");
	FadeDelete("暗転", 2000, true);
	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110960a00">
「……嗯。
　六波罗的奴隶贸易……以及竹林中疑似
武者的影子，吗。」

{	SoundPlay("@mbgm16",0,1000,true);
	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0110970b56">
「帮上了什么忙吗……？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0110980a00">
「是的。这是当然。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0981]
　凑斗先生微微颔首。
　是出自真心还是社交辞令呢，暂时还不得而知。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0110990b43">
「实际情况如何呢。
　真的有这种事？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111000a00">
「奴隶贸易吗？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0111010b43">
「是。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111020a00">
「……所谓奴隶市场在海外的存在确为事实。
　幕府着眼于此，并加以利用……
这种可能性，无法断言没有。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1021]
　慎重的回答。
　用先入为主的成见妄下断言是很危险的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111030b33">
「请问……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111040a00">
「是。」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111050b33">
「律……律她，会不会有事？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111060b56">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111070a00">
「不清楚。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111080b33">
「……
　不清楚吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111090a00">
「是。
　我想，饰马同学被卷入了什么事件这一点，
基本没有疑问，但详细情况现阶段还不明了。」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111100a00">
「关于饰马同学的安危，我目前还无法给出
明确的答复。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1101]
　即使面对眼神催促的小夏，凑斗先生也
没有任何不知所措。
　只是冷静地进行着条理清楚的说明。

　真是个好人。

　敷衍胆小的大人，这时只会口头上说着，
没事没事一类的话语吧。
　不会考虑深信不疑又惨遭背叛的人会怎样。

　……这个人的话语可以信赖。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111110b56">
「小夏。别问难为人的事。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111120b33">
「……嗯，我明白。
　对不起，凑斗先生。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111130a00">
「没事。我也为自己的能力不足感到羞耻。
　无法让关心朋友生命的你们安心。作为一名
警官，虽然是临时的，我也不禁感到十分惭愧。」

//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111140a00">
「现在正是想找个洞钻进去的心情。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0111150b43">
「要挖洞吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111160a00">
「可以拜托你吗？」

{	SetComic(@0,@0,8);
	FwC("cg/fw/fw雄飛_驚くb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111170b56">
「不不不，等等。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1171]
　本来趋于良好的谈话向奇怪的方向发展了。
　可恶的忠保。多么恐怖的男人啊。

　……虽然淡定地回应他的凑斗先生也很奇怪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111180b56">
「那么……请问。
　凑斗先生接下来要怎么办呢？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111190a00">
「虽然你们可能觉得太迂回，
但据我判断，现阶段搜查的
方向还不能确定。
　继续收集情报吧。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0111200b43">
「……」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111210b33">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1211]
　确实很让人急躁。

　但我们的六波罗阴谋说，冷静思考一下，
实际上一个证据也没有。
　武者的目击证言也难说确实可靠。

　这种状态下，没有警官会将六波罗指认为犯人。
或者不如说，我不希望会有。
　如果有的话，虽然对如今的我们来说很可靠，但客观
来看，不过是个麻烦的家伙。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1220]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111220a00">
「镰仓此地近年来，失踪事件并不少见。
即使仅就你们学校周边来说也是如此。
　当前情况下，我打算尝试把这些调查清楚，
看看有没有类似的事件。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111230b56">
「那么，请问。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111240a00">
「是。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111250b56">
「你的调查，需要我们的协助吗？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111260b33">
「雄飞？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111270b56">
「我们对当地很熟悉。景明先生应该
不是本地人吧？
　那样的话，我们应该能帮上忙。」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111280b56">
「也可以作为向导带路……你想找谁问话
的话，有当地人在一起不是更方便吗？
不会受到当地人的警戒。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1281]
　我指手画脚，越说越激动。
　忠保和小夏都没有阻止。看来并不反对。

　不过，我发现了。
　直直回看向拼命的我的凑斗先生，果然没有
丝毫迷惑与踌躇的表情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1290]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111290b56">
「所以说……拜托了！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111300a00">
「你们的心意我由衷感谢。
　但是，我不能接受。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111310b56">
「……！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111320a00">
「正如我刚才所说，这个事件有与银星号事件
相关的嫌疑。危险性自不必言。
　普通市民不应牵扯其中。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111330b56">
「要说危险凑斗先生也是一样的吧！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111340a00">
「我有解决这个事情的责任。
　但对你们来说并没有这回事。」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111350b56">
「律是我们的伙伴！　救助伙伴也是责任啊。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111360a00">
「不。
　你们还处在，除了自己之外不能对其他
任何事情负责的年龄。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111370b56">
「呃……！」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0111380b43">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111390a00">
「你们身上的责任，就是考虑自己的安危，
不要让家人担心。
　你们担心友人的心情我很理解。可是同样，
也有人在担心着你们。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111400a00">
「请考虑一下他们的心情。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111410b33">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1411]
　老生常谈的大道理。
　然而我们也没有话语反驳。

　如果这是其他大人说出的台词，尚且
能够回击。
　但这个人的态度，似乎不会允许那种
小鬼般的反应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1420]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111420a00">
「…………
　我又以长辈自居了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1421]
　凑斗先生唰地站了起来。
　漂亮的动作。

　如今近距离一看，这个人有着匀称的高大身材。
可以说是个大丈夫。
　却不给人压迫感。

　因为他的眼神，无处不散发着安静与沉稳。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1430]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111430a00">
「感谢你们的帮助。
　从你们那里听来的信息都非常有意义。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0111440b43">
「哈啊。
　嗯，要是帮到了忙就太好了。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111450a00">
「不过。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1451]
　对忠保那略带讽刺意味的回答处之泰然。
　凑斗先生依旧用安静的眼神，说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1460]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0111460a00">
「与我接近非常危险。
　今后请务必，避免对此事的参与。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(1000,true);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	Wait(1000);

//◆夕暮れの鎌倉
//◆夜の鎌倉

	CreateTextureEX("絵背景110", 10010, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_02.jpg");
	Fade("絵背景110", 2000, 1000, null, true);

	DeleteStR(0,true);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_03.jpg");
	Wait(1000);
	FadeDelete("絵背景110", 2000, true);

	SoundPlay("@mbgm26",0,1000,true);


	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1470]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111470b33">
「……那么，怎么办呢？　接下来。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111480b56">
「这还用问吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1481]
　回家路上。
　我们在漆黑的街道上快速走着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1490]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111490b56">
「凑斗先生的话很正确。
　但不凑巧，我们是一群无法接受正确观点
的小屁孩。」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111500b56">
「蠢才就是蠢才，没办法！」

{	FwC("cg/fw/fw小夏_驚くb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111510b33">
「呜哇，破罐破摔了。好恶心。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111520b56">
「继续寻找律吧。
　如果可以的话把凑斗先生找出来，就算
强行也要帮他的忙。比起我们胡乱转悠，
那样更有效率。」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111530b33">
「就像是小鲨鱼一样的行动方针呢。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111540b56">
「……那样可帮不上忙啊。
  目标是蚂蚁和蚜虫一样的共生关系。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111550b33">
「那两种可都是害虫……」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0111560b56">
「明天开始就是耐力和体力的较量了。
　要好好休息哦？」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0111570b33">
「是是。
　……不管怎样，都不能半途而废。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1571]
　继续着夜路。
　离家已经不远了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000,3000);

}

..//ジャンプ指定
//次ファイル　"ma01_012.nss"
