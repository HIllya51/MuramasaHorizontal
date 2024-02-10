//<continuation number="1990">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_005.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;
	#bg063_普陀楽城内廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_006.nss";

}

scene mb01_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_004.nss"


//◆普陀楽城
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg027_普陀楽評議の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050010a07">
「超级气旋如何？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050020a08">
「才不要呢。
　终极之美不就挺好的嘛。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050030a07">
「那是什么啊，太没品味了。
　那就……肌肉无敌之类的。」


{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050040a08">
「总觉得缺点什么。
　……金刚大华轮。」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050050a07">
「哇，真不敢想像。
　至少也得是钻石之炎吧？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050060a08">
「嗯……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050070a06">
「……童心大人。
　这是在讨论什么？」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050080a09">
「这个，该怎么说呢……
　贫僧也不是很清楚。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050090a07">
「嗯？
　这个啊，是新名字哦。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050100a06">
「名字？」


{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050110a07">
「嗯。
　这次，虽不明就里，但我们六波罗失去了
大将领。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050120a07">
「不过呢，先不管这些。
　我们想趁着这个大好机会，试着开辟新的方
向。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050130a06">
「……于是？」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050140a07">
「首先从形式也就是名字开始改变。
　……啊，黄金雷鸣幕府如何啊。」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050150a08">
「不错嘛！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050160a06">
「你们的智商糟糕透了!!」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050170a09">
「冷静点冷静点。
　话说，二位……先不要讨论那个了，先解决
眼前的要事如何。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050180a07">
「有什么要事吗？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050190a06">
「……有太多了。
　你这家伙到底知不知道现在的情况啊？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050200a07">
「大概知道。
　老爷子死了，幕府陷入垮台危机。」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050210a07">
「咦？
　是不是很严重啊？」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050220a09">
「嗯。相当严重。
　唔哇哈哈哈哈哈哈哈。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050230a06">
「现在才发觉啊！
　童心大人也是，别笑得像是事不关己一样
啊。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050240a07">
「开玩笑啦。别当真啊。
　然后呢？　雷蝶。那件事如何了。调查八幡
宫事件一事。」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050250a08">
「……完全没进展。
　一切都无从知晓。到底发生了什么啊。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050260a06">
「哼……算了。
　想必大人亡故已是无容置疑的事实了。事态
的详细情况跟这一事实比起来不过是些鸡毛蒜
皮的小事。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050270a09">
「是啊。
　我们现在必须得考虑如何应对这一事实。」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050280a08">
「是啊……
　首先办一场隆重的国葬吧。因为是征服天下
的父亲的葬礼嘛。还得跟朝廷交涉，请皇族出
席……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050290a06">
「开玩笑。
　那种事怎样都无所谓。」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050300a08">
「怎么可能无所谓！
　那可是父亲的葬礼哦!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050310a06">
「所以呢？
　不就是把尸体火化、下葬吗。
不……连那点事都不用费。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050320a07">
「因为没有尸体嘛。」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050330a08">
「你、你、你这无礼之徒！
　还口口声声宣誓效忠父亲，这种话你都说得
出来……！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050340a06">
「我宣誓效忠的是活着的大将领大人。
　不是死去的大人。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050350a06">
「谁管那毫无用处的东西。
　现今情况危急。」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050360a08">
「毫、毫无用处的东西……？
　你……居然……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050370a09">
「算啦，算啦。
　雷蝶大人……」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050380a08">
「童心大人！　刚才的话你可都听到了!?
　不知礼节的家臣口吐如此犯上的蠢话，怎能
充耳不闻呢！」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050390a08">
「竟然把父亲的死当成一件好事，暴露出他那
卑鄙无耻的本性……！
　虽然一开始就知道他秉性恶劣，但亲眼目睹
后果然还是不可原谅。」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050400a06">
「哼。随你怎么说。
　管你这种家伙怎么看待我的性情呢，我一点
儿兴趣都没。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050410a06">
「我只是做自己应做之事。
　碍事者都给我滚。雷蝶，如果你想做除了瞎
嚷嚷之外的事情，第一个该处理的就数你那花
里胡哨的脑袋。」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050420a08">
「……唔……」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050430a06">
「原本……我就没担心过那种事。
　我说，<RUBY text="·····">不知为什么</RUBY>没当上大人
后继者的次男少爷。你若是有那么一丁点胆量
的话，就不会满足于现状了，没错吧？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ジャキ。立ち上がって太刀に手を掛ける雷蝶
//◆応じて立つ獅子吼

	StR(1000, @120, @30,"cg/st/st雷蝶_通常_制服.png");
	CreateSE("SE01","se人体_衝撃_転倒05");
	CreateSE("SE01b","se戦闘_動作_刀構え02");
	StL(1000, @-120, @30,"cg/st/st獅子吼_通常_制服.png");
	CreateSE("SE02","se人体_動作_立ち上がる_畳");

	MusicStart("SE01",0,1000,0,1250,null,false);
	Move("@StR*", 300, @-30, @-30, DxlAxl, false);
	FadeStR(300,false);
	Wait(200);
	MusicStart("SE01b",0,1000,0,1000,null,false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @-30, DxlAxl, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw童心_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050440a09">
「雷蝶大人。」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050450a08">
「……」


{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050460a09">
「这里可是将军府。
　倘若拔刀三寸，将即刻被当作谋反。」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050470a08">
「唔……」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050480a09">
「当然，狮子吼大人……
　故意以言语挑拨，逼人做出如此愚行的您也
免不了被盘诘。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050490a06">
「……啧。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050500a09">
「两位都请坐下。
　……现在再思索一番各自的立场如何。」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050510a08">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050520a06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆座る
	CreateSE("SE01","se人体_動作_立ち上がる_畳");
	CreateSE("SE01b","se人体_動作_立ち上がる_畳");
	MusicStart("SE01",0,1000,0,800,null,false);
	Move("@StR*", 300, @0, @30, null, false);
	DeleteStR(300,false);
	Wait(150);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StL*", 300, @0, @30, null, false);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050530a09">
「很好。
　那么讨论继续进行。」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050540a07">
「哎呀，老爷子的艰辛真令人缅怀。
　亏他能团结这帮家伙。只有失去后才能发现
这个人真正的价值。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050550a07">
「被翻涌而上的追悼之情溢满胸怀的足利茶茶
丸，决定满怀激情地以狂吃蛋糕来代替泪水。」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050560a08">
「别代替啊……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050570a09">
「……于是呢。
　大人的葬礼当然是大事一件。事关六波罗一
族的体面问题。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050580a06">
「这我倒是不否认——」


{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050590a08">
「哼！　闭嘴吧，暴发户。
　不愧是童心高僧，我就知道你和这种低级的
家伙不一样，是个明事理的人物。」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050600a09">
「好啦好啦。雷蝶大人。
　希望您能听贫僧把话说完。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050610a09">
「……葬礼的确很重要。
　但，重要程度也有轻重之分。也可以说是顺
序。」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050620a08">
「顺序？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050630a09">
「请想一想。
　如果在现在这种情况下举行须耗费大量人力
财力的国葬，试想，后果会怎样呢。」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050640a09">
「很遗憾，现在幕府的根基在动摇。
……毋庸置疑，幕府大敌ＧＨＱ以及潜伏在各
地的倒幕主义者都在虎视眈眈地盯着幕府的动
摇。」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050650a08">
「但是，即便如此……！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050660a09">
「当然、当然。贫僧自然明白雷蝶大人的良苦
用心。身为人子却不得不将父亲的葬礼延后，
这想法，简直令人颜面尽失！
　但，若想让大人亡魂安息。」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050670a09">
「贫僧认为，现今首当其冲应将幕府松动的箍
重新拧紧，唯有重新构建以邦氏公为中心的体
制，才能使九泉之下的大人安心……
　如何。」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050680a08">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050690a09">
「现在当务之急是否是应先动员朝廷，下诏宣
布邦氏公就任大将领……？
　然后以新大将领之名义举行国葬，方较为妥
当。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050700a07">
「好。我没意见。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050710a06">
「这才是理所当然的步骤。
　只要不傻，任谁都能想到。」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050720a08">
「唔……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050730a09">
「雷蝶大人。」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050740a08">
「……吾……吾没有异议。
　的确……这样较为妥善。」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050750a08">
「吾似乎有些心急了。
　……实在抱歉，童心大人。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050760a09">
「哪里哪里，想要尽早为父亲吊丧，对于一个
有孝心的儿子来说是理所当然的。
　以提倡策略而妨碍葬礼的贫僧，才是羞愧得
无容身之处。」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050770a08">
「哪里……」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050780a07">
「真遗憾呢，秀吉君。
　算啦，先别管大德寺了。不会让信长公和秀
胜溜掉的啦。」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050790a08">
「!!
　吾、吾可不知道你在说些什么。」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050800a06">
「……哼。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆たしなめ
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050810a09">
「茶茶丸大人。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050820a07">
「嘿嘿。」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050830a08">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050840a09">
「据室町探题的汇报，朝廷周旋工作已有
眉目。想必武家传奏不过拘泥个形式罢了。
　只要喂点钱，马上就能动员起来。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050850a06">
「邦氏公大将领袭位一事，乃是展示幕府健在
的象征……至少表面上是这样。
　现如今，此事最为要紧。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050860a07">
「就是说，只要先将门面弥补，不久其内在也
会随之恢复吗。的确没错。
　不过，只要没有八幡宫亲王从中作梗，应该
会很顺利吧？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050870a06">
「现在是建朝寺亲王。
　哼……那只高贵的孔雀能做什么？　就算脑
子里酝酿着阴谋诡计，若无将其付诸行动的手
腕，就构不成任何威胁。」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050880a08">
「……是啊。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050890a09">
「倘若他从旁胡乱插嘴，把钱换成针，对着他
的屁股狠狠地戳几下就行了。
　无需令人洗心革面的经文。只要有黄金和钢
铁，一切就都解决了。」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050900a07">
「这可不是一个和尚该说的话。」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050910a06">
「事到如今说这话何用。
　于是……当前的方针就定为这个了。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050920a06">
「我们该何处安身。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050930a09">
「唔……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050940a06">
「也不能一直聚在普陀乐城。
　一旦底基崩塌便将一无所有。须返回各自的
公方府，平定管区内的混乱。」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050950a07">
「似乎到处都是行迹匆匆、充满火药味的家伙
呢。
　差不多哪里该着火了吧？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0050960a09">
「得在事态发展至此之前采取措施。
　可是，又不能把邦氏公一个人
留在这座城里……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0050970a06">
「嗯。
　倘若这样做的话，不出三日，邦氏公的首级
就会成为那帮倒幕派宴席上的盘中餐吧。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0050980a07">
「要不把大宰府幸行叫来？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0050990a08">
「说什么蠢话。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051000a09">
「狗狗狗狗，给你吃的，快过来，
喂……会摇头摆尾地乖乖过来吗。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051010a06">
「率领军队。
　以关东为舞台，我们与那家伙决战……」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051020a07">
「不是很有趣吗？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051030a08">
「你就知道有趣啊。
　干嘛叫那种恩将仇报的小人过来，
只要吾辈之中选一人留下不就行了。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051040a09">
「嗯，所言极是。
　可是，应由谁来担起这个重任呢？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051050a08">
「……要说吾不在意军管区的状况，那是假的。
　但是呢，吾乃邦氏叔父。」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051060a08">
「是他最亲近的亲人。
　吾认为，吾留下能比其他人更令邦氏安心。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051070a09">
「……原来如此、原来如此。
　的确如此呢。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051080a07">
「是吧？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051090a06">
「…………」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051100a08">
「……」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051110a08">
「得到童心大人的赞同我就放心了。
　那么，这件事请就这么定了——」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051120a06">
「立场呢？」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051130a08">
「啊？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051140a06">
「立场如何兼顾。
　倘若你一个人保护邦氏公留在这座城里，就
是名副其实的监护人。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051150a06">
「你要以小弓公方的身份负这个责吗？
　还是以其他的地位？」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051160a08">
「那、那种事根本无所谓吧。
　现在也用不着做个决定……」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051170a07">
「就是啊，狮子吼。
　等我们都不在了之后再决定的话，不管什
么地位都能随心所欲了哦。别妨碍人家啊。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051180a06">
「是吗。
　这我倒没想到。」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051190a06">
「抱歉，雷蝶。」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051200a08">
「唔……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051210a09">
「……那么，雷蝶大人。
　已想好什么方案了吗？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051220a08">
「……是，是啊。
　的确，毕竟是要辅佐邦氏处理政务。
先取得与之相应的官职或许会比较好。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051230a09">
「所言极是。所言极是。
　然后呢？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051240a08">
「……最好能得到关东管领的地位。
　我想这样就能充分地扶持邦氏了。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051250a09">
「哦。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051260a07">
「啊？
　这么说来，我父亲之类的男人曾经担任过这
种职务呢。有一段时间。」


{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051270a06">
「没错。
　在犯下关西经略失策的过失之前，堀越守政
凭借其地位主导幕阁……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051280a06">
「总之就是执政官。
　……数年来空缺的宝座，偏偏要被你夺走？」


{	FwC("cg/fw/fw雷蝶_逆上.png");}
//嶋：修正（よってって）【090930】
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051290a08">
「偏偏是什么意思！
　吾出身于足利本家，既是上代大将领的亲儿
子又是下代大将领的叔父!?　你倒说说看，
还有比吾更能胜任关东管领之位的人吗!!」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051300a06">
「我不知道谁能胜任。
　但，你肯定不能胜任。」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051310a08">
「你、你、你这混蛋……！」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051320a09">
「好啦好啦好啦。
　贫僧对雷蝶大人就任关东管领之事，绝对是
很愿意表示赞同的。」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051330a08">
「童心大人！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051340a06">
「兴奋什么啊，蠢才。
　没人<RUBY text="··">慷慨</RUBY>地说让你去做。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051350a07">
「真是语言的魔术啊。
　不愧是天下的婆娑罗公方。
真让人为之陶醉、为之憧憬。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051360a08">
「你们这些人!!」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051370a09">
「唔嗯。
　狮子吼大人反对是吗？　正如大人所说，雷
蝶大人就任管领乃是合乎政道之理……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051380a06">
「所以呢？
　原来如此，这个天保钱，单看面额岂止能就
任管领，甚至连继任大将领都无可非议。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051390a06">
「可以认同这种价值，
你内心真是这样想的吗？
　童心大人。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051400a09">
「…………」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051410a08">
「童、童心大人？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051420a09">
「……那么。
　茶茶丸大人意下如何。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051430a07">
「如果有附加条件的话，我倒是可以认同。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051440a09">
「条件？」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051450a07">
「关东管领尚不足够。
　雷蝶，如果你想成为幕府的二当家，就得就
任更华丽的官职！」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051460a08">
「更华丽!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051470a06">
（……我基本猜出结果了……）


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051480a09">
（……贫僧基本猜出结果了……）


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051490a07">
「没错，雷蝶。
　区区一个关东管领，与你的才华太不相称了。
不对吗？　不，没错。我相信你的实力。」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051500a08">
「茶、茶茶丸……你这个女人啊。
　那、那么，什么样的地位才合适？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051510a07">
「关东管领代理助理代理如何？」


{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051520a08">
「岂不是反倒降级了吗!!」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051530a06">
「……赞成。」


{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051540a08">
「赞成个屁!!」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051550a09">
「嗯。
　还有这种折衷方案啊……」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051560a08">
「童、童心大人，怎么连你也……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051570a09">
「哎呀，开玩笑啦。雷蝶大人。
　好啦，别上火了。」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051580a09">
「贫僧没有异议，但……看来二位似乎都觉得
时机尚早。
　听了二位所言，倒也在理。也是为了我们关
东四公方统一步调应对国难。」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051590a09">
「如何。
　本次先暂缓……」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051600a08">
「但、但是，但是啊，童心大人！
　为了担当辅佐邦氏的重任，拥有与之相应的
地位，才能顺利推动政务啊。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051610a06">
「总而言之。
　如果不戴上地位的高帽子就无法尽职尽责的
话，说明你本来就不适合这个职务。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051620a06">
「也就是说，因为你实力不足。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051630a07">
「最终答案出来啦。」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051640a08">
「给——我——闭——嘴!!
　童心大人，千万别听这些出身低贱之人的胡
话，选吾——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051650a09">
「不管是胡话也好，不是也罢。
　事实是占四公方半数席位的两位都不赞同，
雷蝶大人……难道不该虚心接受吗？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051660a08">
「唔……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051670a09">
「请务必节制。
　……话说回来，狮子吼大人。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051680a06">
「何事。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051690a09">
「大人也反对雷蝶大人留在城中吗。
　那保护邦氏公的重任，应由何人来担当呢？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051700a06">
「和尚就很好。
　我无法继续对篠川放置不管，再说……茶茶
丸不在讨论范围内。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051710a07">
「不在讨论范围内啊。他可不行哦。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051720a06">
「通过排除法得出结论，唯童心大人可。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051730a09">
「唔嗯……
　茶茶丸大人意下如何。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051740a07">
「很好嘛。
　古河貌似没那么动荡不安。你暂时不回去也
不碍事。」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051750a08">
「…………」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051760a09">
「这……真难办啊。
　……雷蝶大人？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051770a08">
「怎、怎么？」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051780a09">
「承蒙其余二位推举，不敢怠慢……但
如此一来就好像是贫僧夺了雷蝶大人的位子。
　贫僧实在是如坐针毡。」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051790a09">
「无论如何都想请教雷蝶大人的意见。
　若惹您不快——那自不必说
——就由我向其余谢罪，拒绝此事如何……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_不興.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051800a08">
「……哪、哪里。不敢当。
　若是童心大人，吾也能放心将邦氏托付于你。
童心大人乃长年为父亲效力，最得父亲信赖的
人物……哈，哈哈哈。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051810a09">
「那，雷蝶大人与其余两位大人持相同观点？」


{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051820a08">
「…………是。
　童心大人，就交付于你了。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051830a09">
「那我就恭敬不如从命了。贫僧深知此乃何等
重任。
　我童心和尚，拼上性命也要保护邦氏大人。」


//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051840a09">
「诸位请回各自管区，将一切事务处理完毕后，
复归登城。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051850a06">
「明白。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051860a07">
「好～」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051870a08">
「…………」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051880a08">
「那么，讨论到此结束。
　可以吗。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051890a09">
「是啊。
　辛苦了，雷蝶大人。」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051900a08">
「哪里……
　告辞。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


//◆雷蝶、去る。足音荒く
	CreateSE("SE01","se人体_足音_歩く09");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(2000);

	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb01/0051910a06">
「……哼。
　还保留着打声招呼再走的自制心啊。对那个
男人来说，算很了不起了。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb01/0051920a07">
「你说得真过分呐。
　不过，那家伙不当公方，而只是一介武士大
将反倒更幸福吧？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb01/0051930a09">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);

//◆廊下
//◆雷蝶

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg063_普陀楽城内廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StL(1000, @30, @0,"cg/st/st雷蝶_通常_制服.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051940a08">
（哼，什么啊……！
　别都踩到我的头上！）


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051950a08">
（若在邦氏就任大将领前，经吾之手操办父亲
的葬礼……就能为吾掌握实权开辟道路！
　却被……那些家伙给毁了！）

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051960a08">
（居然连关东管领都不行！
　就血统来说完全合情合理啊……！）


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051970a08">
（照此下去，幕府就会成为童心大人的囊中之
物。
　这怎么行……）


{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051980a08">
（…………）


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb01/0051990a08">
（果然……
　看来只能和那帮家伙联手了……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_006.nss"