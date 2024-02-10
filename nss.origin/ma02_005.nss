//<continuation number="1350">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_005.nss_MAIN
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
	#bg022_山林a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_小太郎=true;

	$PreGameName = $GameName;

	$GameName = "ma02_006.nss";

}

scene ma02_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_004.nss"

//◆山中·無道
//◆長坂

	PrintBG("上背景", 30000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm35",0,1000,true);

	StR(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw長坂_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050010b45">
「…………」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050020b45">
「……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どさっ。膝を突く
//◆立ち絵消し

	OnSE("se人体_動作_後ずさり01",1000);
	DeleteStR(300,true);

	SetFwC("cg/fw/fw長坂_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050030b45">
「…………」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050040b45">
「嘁……我也……上年纪了么。
　被那种年轻人……」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050050b45">
「……畜生……」

{	#voice_on_小太郎=true;
	NwC("cg/fw/nwその他.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050060b35">
「呵，呵，呵。
　太不当心了。一点都不像你啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆小太郎
	StR(1000, @0, @0,"cg/st/st小太郎_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw長坂_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050070b45">
「小太郎！」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050080b35">
「看来没有什么大伤啊。
　也就跌打损伤的程度么。万幸啊万幸啊，
你还是走运的。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050090b45">
「…………」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050100b35">
「稍等，我给你上药。
　也有强壮剂，怎么样。要吃么？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050110b45">
「……
　看来不需要对你说明事情的原委了？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050120b35">
「因为看到了。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050130b45">
「却什么都没做吗！」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050140b35">
「哎呀。
　有什么我能做的吗？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050150b45">
「别装糊涂。
　如果当时你在的话，要打败他们也会
容易些！」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050160b35">
「我不否认。
　但那又如何？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050170b45">
「什么……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050180b35">
「是要趁势把巡查官什么的也砍了？」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050190b45">
「……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050200b35">
「那是不可能的。没错吧？
　杀掉那个女的我们就没路可走了。
你想去ＧＨＱ工作也白搭了。
那些家伙为了体面只能处死你。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050210b45">
「嗯……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050220b35">
「如此一想，你的失利反而是不幸中的万幸。
当然，如果被杀掉的话就是本利全无了。
本来还想一旦情况紧急就出手相助，不过，
你不是靠自己的力量好好生还了么？」


//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050230b35">
「即是说，老夫的帮忙是无用的。
　所以说，别太过责备哦。我也有些腿脚不便
了，因为年龄比你还大一圈呢。没办法。」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050240b45">
「……你只管装糊涂吧。
　算了，这次确实是我的失策。
对你乱发脾气也无用。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050250b45">
「不过，这之后要给我好好干。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050260b35">
「当然。我乃你的雇佣之身，有任何要求都会
应允。
　要做什么呢。吟诗，还是作画？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050270b45">
「我给你的钱，是养老金吗？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050280b35">
「开玩笑的。别吓人嘛。
　很遗憾，我家的家训并没有光吃饭不干活
这一条。请尽管鞭打这把老骨头，尽情使唤。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050290b45">
「这是当然的。别一副施恩的模样。
　对你来说，不趁眼下在此多赚点，今后就
没办法了吧。」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050300b35">
「呵。真是戳中我痛处呢。
　真真如此啊。失去了雇主与工作，就连剑胄
也一度被夺去的吾之一族。如果不起劲于些莫名
勾当的话，孙辈们无法维持生计。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050310b45">
「真能说……
　哼。不过既然你是这个想法，那就请你们和那位
赤色武者对抗吧？」


{	FwC("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050320b35">
「哦……？　要把那村正让给我吗。
　真意外。我以为像你这么有气概的男人，
所欠之物必要靠自己的双手偿还呢。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050330b45">
「你想要煽动我？
　不必你说，力所能及之事我当然会做。
不过，我的翼翅都断了，已经无计可施。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050340b35">
「不能飞了？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050350b45">
「必须找锻造师修复。
　锻造啊……嘁。那<RUBY text="··">家伙</RUBY>应该不会
听我的要求。现在应该在举杯庆祝吧？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050360b35">
「休息一阵后就能修复的吧。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050370b45">
「别和你们的真打混为一谈。数打没有
那么方便。
　如果要等自然修复，那要等到你我都
奔赴黄泉之日了。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050380b35">
「哎呀，那岂不是没办法了。
　明白了。虽然有句话叫做人老却不自量力，
不过这回，能让我形容为老当益壮么？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050390b45">
「那家伙似乎不取我首级不罢休的样子。
马上就要追来的吧。
　拜托你了……别让我这本该颐养天年的身子
和你一起在僻静的森林里长眠。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050400b35">
「我也求神拜佛呢。非要我说的话，一看您的
尊容，我也不想与您同生共死到坟墓啊。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050410b45">
「意见相合就好。
　这个先暂且不谈，你……刚才，说了些
什么让我无法忽视的事情吧？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050420b35">
「什么？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050430b45">
「村正，你刚刚提到了吧？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050440b35">
「那个赤色剑胄啊。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050450b45">
「确定吗？」


{	FwC("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050460b35">
「那么……
　剑胄的鉴别可不是我的工作。
也可能会判断错误。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050470b45">
「不过，你却只看了一眼就断定为传说中的
村正不是吗？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050480b35">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050490b45">
「说起来，那个男人问了我一件奇怪的事。
　他问我是否知道银星号的事情……」


{	FwC("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050500b35">
「哦……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050510b45">
「……你装傻的迹象太明显了吧？
　似乎知道一些我不知道的事情。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050520b35">
「哎呀呀。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050530b45">
「你对我的剑胄施展的那种奇特<RUBY text="··">手法</RUBY>
也和这个有关吗？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050540b35">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050550b45">
「…………唉，算了。
　不管怎样，事情很麻烦。无论那到底是不是
如你所言的势州村正。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050560b45">
「有胜算么。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050570b35">
「呵。但愿你的担心无用吧。
　不管是妖甲村正还是名甲正宗，在我
小太郎面前都一样。是和婴儿一样无力的
娇弱之物。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050580b45">
「吹得够猖狂。
　你居然秘藏了那般技术，连我
都不知道。」


{	FwC("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050590b35">
「又不是用来对付村子里那些血气方刚的年轻人
的招数。
　若敌人是你这种练达的勇士，也不是
不能出这招……呵呵，想看吗？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050600b45">
「……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050610b35">
「还是说……
　那边的仁兄要做我的对手？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆ガサッ
	OnSE("se自然_草木_探る01",1000);

	WaitPlay("OnSE*", null);

	StL(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050620a12">
「哎呀呀，不是的……
　还请您放过我可以吗。」


{	FwC("cg/fw/fw長坂_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050630b45">
「是你……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050640b35">
「呵。
　好久不见啊，雪车町阁下。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050650a12">
「嘿、嘿。
　久违了久违了。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050660b45">
「……刚好。
　我正有地方要用你。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050670a12">
「是，这个嘛，是这回事吧。
　大尉殿下想要说的事情，我已经非常清楚了。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050680b45">
「先让我说。憋了一肚子的话。
　你不是说，和民政局的<RUBY text="··">关系</RUBY>万无一失吗!?
　还说这下不会有任何妨碍了！」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050690a12">
「嗯，是的。小的确实这么说过。
　记得确实是引见给科布登中佐的时候……
说是当面谈话的机会也很有必要，通过我雪车町
的周旋。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050700b45">
「但实际情况怎样呢。居然来了巡查官!?
　不就是为了不派那种东西来才做的幕后
交易吗……！　这下没有任何意义了。
是科布登中佐无能，还是他忘恩负义!?」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050710a12">
「您生气得对。无可辩驳。
　不过呢，大尉殿下。科布登中佐他其实
也并非<RUBY text="····">佯装不知</RUBY>或者忘恩负义……」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050720b45">
「你是说，他遵守了约定？
　于是我就落得这般<RUBY text="样子">丑态</RUBY>？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050730a12">
「应该传达的话确实都传达到位了。这一点
确实没有问题。
　只是有一点，是没有预想到的情况……
就是巡查官制度。被它绊了脚。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050740b45">
「……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050750a12">
「那是民政局的人被随意分派前往占领地，
为了把握当地情况而展开巡查的任务……
　本是表面功夫。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050760a12">
「是作为一种姿态，表明自己并不是侵略者。
实际就类似带薪休假或犒劳旅行之类。巡查官
之间都形成了默契，即什么都不做。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050770a12">
「因此中佐也没有放在心上。即便如此，
一听说大和的中尉要到村子来巡查，就被
催着赶紧跑腿去带一个非正式的口信。
就是这样。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050780b45">
「是你？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050790a12">
「正是。
　但是没赶上。等我到的时候，已是那名巡查官
<RUBY text="···">办完事</RUBY>之后了……」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050800a12">
「之后我就飞速联络中佐，他也很震惊吧。
原本无所作为才是巡查官的本分，没想到
居然有那种拥护表面文章而胡来的人。哎呀呀。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050810b45">
「……
　说到带口信，是带给那个女的？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050820a12">
「正是，在我来这里之前。
　因为无法说出和大尉殿下之间的约定，
原本要传达的内容只是单纯地希望她不要
采取什么行动……」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050830a12">
「结果对方却佯装不知情。
说自己只是完成巡查官的职务而已。
当然她说得无可厚非。这样一来，我们也就
无可反驳了。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050840b45">
「……那女的是什么人。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050850a12">
「详细情况不清楚。好像是欧洲哪个地方的
军方调到联盟军的。
　这情况也不是特别少见……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050860b45">
「是大和人吧？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050870a12">
「正是。
　名叫大鸟香奈枝，是大和人，当然精通
大和语言，这些应该没有错。但为何
会在欧洲呢。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050880b45">
「她在司令部的势力强大吗？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050890a12">
「不，完全不。听说并不属于主流派系。
只因是大和人，尚能发挥点作用，所以在
民政局有一席之地。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050900b45">
「……哼。
　那么，这次的事情就是她的单独行动？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050910a12">
「正是如此……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050920b45">
「怎么善后呢？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050930a12">
「与科布登中佐取得联系，麻烦他
出具召回命令吧。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050940b45">
「什么时候联系？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050950a12">
「我这边的联络明天白天就能到达——
有电话就容易搞定了。但这种小村子里应该
也没有电线——接到消息后，中佐殿下立刻
就会有所行动了。」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0050960a12">
「中佐给巡查官的联络应该是通过无线的。
就算巡查官那边假装不在家收不到无线……
也无法蒙混一整天对吧。之后又是大尉殿下
的天下了。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050970b35">
「就是说，胜负也就是这几天了。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0050980b45">
「……明白了。拜托你了。
　这么一想，似乎老是麻烦你呢。又是ＧＨＱ
的斡旋，又是融资中介。还把小太郎派给我
作为幕府兵士以外的用人需要。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0050990b35">
「是啊。雪车町殿下对我来说，不仅是帮我取回
剑胄的恩人，还照顾我的赚钱生计。
非常感谢。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051000a12">
「嘿嘿。哪里哪里。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051010b45">
「等到成功之时再让我好好谢你吧。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051020a12">
「不用了，嘿嘿……
　您的心意，我领了。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051030b45">
「哦。真是淡泊名利之人。
　或者……」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051040a12">
「嘿。」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051050b45">
「无论我成功与否，<RUBY text="·····">对你们来说</RUBY>
<RUBY text="····">都无所谓</RUBY>，是这样么？
　ＧＨＱ的跑腿人……雪车町一藏。」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051060a12">
「嘿、嘿、嘿……」


{	FwC("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051070b35">
「……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051080a12">
「话说得这么直白，也太露骨了……
　不过，基本也就是这样吧。」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051090b45">
「……无耻之徒。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051100a12">
「诚惶诚恐。」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051110b35">
「呵、呵、呵。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051120b45">
「哼……
　还有一事请教。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051130a12">
「但讲无妨。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051140b45">
「看到赤色武者了吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051150a12">
「没……不过听说了。
　那似乎是一场灾难。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051160b45">
「不知是何人吗？
　如果他所言可信的话，似乎既不属于六波罗也
不属于进驻军。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051170a12">
「谁知道。
　头绪——倒也谈不上，不过……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051180b45">
「什么。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051190a12">
「方才，我去见巡查官阁下的时候。
　偶然遇到了曾经有过一面之缘的
那位警官。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051200b45">
「……警官？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051210a12">
「是个长得非常阴沉的年轻男人。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051220b45">
「是怎样的人。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051230a12">
「怎么说呢。话也不是很多。
　只是……似乎是跟我们从根本上就
无法合拍的小子。」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051240b35">
「呵。也就是说？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051250a12">
「是<RUBY text="··">善人</RUBY>。
　是在正经人家接受过良好教育的吧。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051260b45">
「……哈。
　那确实合不来吧。」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051270b35">
「呵呵。先不论我如何，是你们哦。
　会与他彼此不合心意吧。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051280a12">
「要说是喜欢还是讨厌，其实也谈不上讨厌。
　我呀，喜欢所有<RUBY text="··">认真</RUBY>活着的人。
不管好人还是恶人……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051290b35">
「这世道，每个人都很认真。不可能有人
可以游戏人生啊。
　那么，雪车町殿下。就是说，那个男的是武者
吗？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051300a12">
「……并没有证据可以断言他就是。
　只是，最初和他相遇时我就在想。那男人，
相当擅长剑术。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051310b45">
「擅长到就算是武者也不奇怪的程度？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051320a12">
「正是。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0051330b45">
「哼……
　还是第一次听说警察雇佣武者……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0051340b35">
「为慎重起见。
　雪车町殿下，能请教下那个人的容貌吗？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0051350a12">
「小事一桩……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma02_006.nss"



