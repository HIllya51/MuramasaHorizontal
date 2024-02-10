//<continuation number="1700">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_004.nss_MAIN
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
	#bg031_八幡宮境内_02=true;
	#bg032_八幡宮奥舞殿内a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_舞殿宮=true;

	$PreGameName = $GameName;

	$GameName = "ma03_005.nss";

}

scene ma03_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_003.nss"

//◆八幡宮·夕
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg031_八幡宮境内_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　八幡宫可称之为镰仓的中心。
　地理也好，历史也好，政治也好。

　国历一七二三（西历一〇六三）年，清和系河内源氏
二代首领之栋梁源赖义，于氏神八幡神领地鹤冈祭祀——
约百年后，其后裔赖朝以八幡宫
为中心开创武士之都·镰仓。

　尔来八百年，镰仓的八幡宫作为源氏的守护神……不，
是武士的守护神而存在。
　于现代，称作源氏之栋梁的六波罗一族当中，
对其也凝聚了非同一般的崇敬。

　不单每年数次惯例参拜，每逢喜事丧事也举行祭祀仪式。
　此类行事愈发盛大，并不得不带上宣传政治的色彩。

　频繁地修建，改整豪奢的装饰也是因为相同的理由。
美观上的装饰等于政治上的装饰。
　被从遥遥京都招来深殿的某人。
——要说的话，也是其装饰之一。

　八幡宫内深处寂静的小殿……
　据说现在于中央附近的舞殿，过去也在那里。
故其又名奥舞殿。

　小殿之主称号的由来也因这传承。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆親王御前
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　舞殿宫春熙亲王。
　先帝的末子，皇位继承名次继基熙皇太子之后排行第二。

　他担任八幡宫祭祀长宫一职之事，
也正显示了六波罗的信仰与勤皇精神。
　……不过这也只是表面而已。

　实际上。
　这只是六波罗连皇室成员也能自由操纵的权威证明，
然后——作为人质而已。
　京都打发给六波罗的牺牲品。

　帘子对面摇曳着的影子，正是那样的存在。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040010a11">
「宫殿下。
　我将凑斗景明带来了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040020a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　于署长身后无言跪拜。
　即便是作为客人的立场，但在面对皇族之时，
也不能先说话。

　等待对方发话。
　不，还没到等待的程度。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm19", 300, 1, null);

	SetFwC("cg/fw/fw親王_通常.png");

	#voice_on_舞殿宮=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040030a10">
「这位就是景明君吗？
　菊池署长经常谈起你呢。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――

//◆ごち。
	CreateSE("SE01","se人体_動作_床殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetVolume("@mbgm19", 1000, 1000, null);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040040a10">
「……怎么了？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040050a11">
「请别在意，宫殿下。
　只是叩礼而已。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040060a10">
「啊啊，是吗。
　懂礼貌的孩子啊。但是，
你可不必如此拘谨喔。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040070a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　你就不能再拘谨一点吗？皇弟殿下。
　并非想以这般回答，不懂知恩图报地给署长带来困扰。
作为圆场——虽然这点也存在疑问——仅仅表示感谢，
再度低下了脑袋。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040080a00">
「初得御旨。
　杀人嫌疑十八件而被拘留中的
嫌疑犯·凑斗景明，应召前来觐见。」

{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040090a10">
「噗哈哈哈哈哈！
　真有趣啊……这个孩子！」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040100a11">
「……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040110a00">
「……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040120a10">
「……？」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040130a10">
「…………」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040140a10">
「糟糕！　现在不是笑的时候！」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040150a11">
「确实。宫殿下。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040160a10">
「抱歉啊，景明君。
　因为如此奇怪的问候，我擅自以为
是什么闹剧就笑了。
行动先于思考。之后会注意，请别生气。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040170a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　——不知为何非常眷恋起拘留所了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040180a00">
「虽然我自知不该这么说。
　但如果事关人命的话，
这会不会有点不太谨慎呢？」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040190a11">
「景明。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040200a10">
「真是的。所以说笨蛋让人伤脑筋呢。
　本王，从以前就一直这样啊。让哥哥讨厌，
从京城被赶走，
来到这里又一直被幕府那些家伙瞧不起。」

{	FwC("cg/fw/fw親王_凹む.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040210a10">
「给署长添了不少麻烦。
　对你也很抱歉。虽然事到如今才说。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040220a11">
「麻烦什么的绝对没有。
　宫殿下。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　署长朝帘子轻行一礼。
　以那动作为掩饰的一瞬间，朝这边投来视线。

　明白。
　……原来如此。也就是说，这位大人他其实是个
<RUBY text="····">大智若愚</RUBY>的人。

　幕府对京都朝廷频繁地阴险制约，
为什么只有舞殿宫能屡屡很好地规避呢？
为什么署长选择此亲王作为奉戴的对象？
现在似乎得到了答案。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040230a00">
「失礼了。
　枉顾舞殿宫殿下各方援助，
任性地说些无理之言，
我由衷地道歉。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040240a10">
「不要这么说。
　总受帮助的是我才对啊……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040250a00">
「杀人的罪行下应于牢狱中的我，
多次被允许保释，
得以追逐银星号也是多亏宫殿下和署长的同意。
　这般大恩，绝不恩将仇报。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040260a10">
「哎呀哎呀。
　对应银星号事件，一直以来辛苦你了。
总委托你些费力的事，实在抱歉。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040270a00">
「您言重了。
　本来自己的事固然应当是自己承担。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040280a00">
「本人愚笨，至今仍未解决，应受到相应的斥责。
　而不值得犒劳。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040290a10">
「……菊池。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040300a11">
「是。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040310a10">
「好严肃的孩子啊……」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040320a11">
「真是丢脸。
　失礼的地方，恳请原谅。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040330a10">
「不，这并非责难。
　虽然并非责难……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040340a10">
「景明君。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040350a00">
「是。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040360a10">
「……为什么会是你呢？
　为什么不是其他人，而是你呢？
　神也太作弄人啊……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040370a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040380a00">
「殿下，您这番话。
　还是该向那些无罪却死于我手上的人说。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040390a00">
「不对我。
　而该是他们。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040400a10">
「……或许是那样啊。
　或许是啊…………」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040410a10">
「呐，景明君。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040420a00">
「是。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040430a10">
「今天要你来，是想直接从你口中听说那些事。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040440a10">
「署长已经报告过了。  
但间接听来的总觉得不真切。没有实感啊。 
明明不是旁人之事，却总有种旁观者的感觉。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040450a10">
「这让人惶恐。
　本王应该知道的。好好告诉我，我所让你做的
是怎样的事。
　怎样，景明君……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040460a10">
「本王知道自己提出了烦人的请求。
　虽然知道。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040470a10">
「本王想履行自己的责任……
　虽然这<RUBY text="··">并不</RUBY>仅限银星号这事件。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040480a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　诚然，这是我所希望回避的。
　即便拒绝，也不会勉强的吧。

　银星号的问题，对我来说完全就是私事。
　其他人怎么想也不会动摇这点。
所以我倒希望有亲王所说的那种
<RUBY text="··">旁观</RUBY>的距离感。对我没有缩短的必要性。

　但。
　如刚才所说，正因亲王殿下超越法规的命令我才得以
离开监狱追踪银星号。

　换句话说，我的立场与靠资助者援助
才得以行动的装甲骑手无异。
　对于那资助者的要求，自然不容分辩。

　我依照顺序开始叙述。
　言语中尽量不掺入感情。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度ブラックアウト
	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 1000, 1000, null, true);

	Wait(1000);

	FadeDelete("絵暗転", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　语毕，舞殿宫叫人上了茶。
　帘子相隔的茶席。虽然觉得礼法上太不规范，
但亲王和署长都没有格外在意，或许平时也就这样。

　听从劝说，我稍微换了个随便的姿势，把茶碗捧到手里。 
　盛茶点的盘子也放在手边的位置。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040490a10">
「……不痛不痒的感想就算了吧。
　只会让我显得愚蠢而已。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040500a10">
「就说有关的吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040510a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　这可比什么都要值得庆幸。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040520a10">
「第一，银星号会在哪里？
　还有雪车町这人物怎样？ 
似乎有强烈的不安分因子啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　奇怪，竟与昨天我跟署长谈过的疑问相同。
　不——也不算奇怪。情报共享的情况下，
得到相同结论也是理所当然的。

　可太迅速了。
　果然，这么看来，这宫殿下有着清晰的头脑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040530a10">
「只不过是流氓，却到处招摇游荡，
又从进驻军那里得到剑胄……
　实在让人在意啊。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040540a11">
「银星号的事倒不清楚。
　但对那个男人我是有点揣测。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　……昨天说过的吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040550a10">
「噢。什么，很耳熟的说法不是么。
　好了。说吧，连队幕僚长。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040560a00">
「……幕僚？」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040570a10">
「是啊……景明君不知道吗？ 别看本王这样，
以前也上过战场的啊。也算是帝室的义务。
　那时候，照顾我的就是这菊池署长。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040580a10">
「铅弹横飞的地狱里，耐心跟我这个
什么都不懂的打交道……
　如果没有优秀能干的幕僚长在，啊啊，
真可怕。是一辈子的恩人啊。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040590a11">
「没那回事。
　我才是，没有殿下的照顾，
退役后可无法得到警察一职。
上头可讨厌我了啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　说着琐碎事的二人。
　……从前就有联系的吗？ 

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040600a10">
「大家不相伯仲啊。
　啊哟，话题跑开了。你那推测是什么？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040610a11">
「是。
　我想，要揣度雪车町这男人的本意……
首先必须把ＧＨＱ的存在放到视野里。」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040620a11">
「索性，主体——」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040630a10">
「等、等……
　等一下好吗，署长。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040640a11">
「是？」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040650a10">
「……想稍后再说，说到这事的话，
就必须先解决这个。
　来人！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　亲王拍手，唤来近侍。
　小声地吩咐着什么。

　……迅速远离的脚步声再度返回之时，
脚步声的数目增至三倍。门板静静地沿着门槛打开。
　从走廊打开门的是近侍吧，但并没有看见其身影。
只有另外新加入的两位出现于大厅。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝とさよ


	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0040660a03">
「收到紧急召唤，前来觐见。
　舞殿宫殿下————」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0040670a03">
「哎呀？」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0040680a04">
「唉。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040690a00">
「……这是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　没有相隔到足以能遗忘的日子。也并非容易被遗忘的人。
　确实是联盟军所属的大鸟香奈枝中尉及其侍从，
永仓纱代女士。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040700a10">
「果然是相识啊。
　刚才景明君说到的ＧＨＱ的
大鸟巡查官便是她吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040710a00">
「是的。没错。
　但为何，她会在这里？」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040720a10">
「哎呀，就刚才、今天早上的事啊……
　啊，香奈枝以及纱代。那边请坐吧。
现在让下人上茶。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0040730a03">
「请不必客气。
　……呼呼。真是一转眼又见面了。景明大人。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040740a00">
「是……」

{	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0040750a04">
「这是红线所引导的吧。」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0040760a03">
「呀。婆婆真讨厌。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040770a00">
「……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040780a10">
「哎呀，感情相当不错嘛。
　景明君还真有两下子。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040790a11">
「宫殿下？」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040800a10">
「啊啊，嗯。
　上午，两人前来本王这里。一问其来意，
原来是作为配属八幡宫的军官来上任的。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040810a11">
「……是。
　原来如此。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040820a10">
「之前提过ＧＨＱ要派这样的官员赴任一事吧？
　人选终于决定由此二人前来。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040830a10">
「本王完全忘记了。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0040840a03">
「我方的不当给宫殿下带来不便。
　非常抱歉。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040850a10">
「不用不用，无需介意。
　就算本王是进驻军的元帅，但也无需太在意我。
谁也不想去保护个没用的笨蛋啊。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040860a10">
「香奈枝也辛苦，
　抽到下下签了。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0040870a03">
「……没有这回事。
　进驻军司令部对担起这国家政局
重责的舞殿宫殿下表示关心。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0040880a03">
「我的职务是代表司令部于宫殿下身边工作，
为了能方便处理诸事。
　定当尽忠职守。请殿下无须顾虑，
不管什么尽管吩咐。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040890a10">
「……这样啊。
　真值得高兴啊。对吧，署长？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040900a11">
「是。
　的确，来了个好人啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　和睦笑着交谈的三人。
　……喉咙像堵塞了般充斥着苦闷。

　以三人的官衔来看，这氛围也是没办法的……
　原来如此，怪不得刚才署长谈到ＧＨＱ的事，
亲王就打住了。
隔墙有耳。不能随便说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040910a10">
「虽然不够彻底，但似乎大家都认识，
姑且介绍一下吧。
　凑斗景明君。这样可以吧。
这位是镰仓警察署的菊池署长。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0040920a03">
「是。
　之前有在仪式上见过一次。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040930a11">
「哦呀，这样啊……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040940a10">
「菊池是本王多年的朋友啊。
　景明君属其部下，
银星号事件的搜查有在帮忙打听。
各种状况，所以立场有点复杂。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0040950a03">
「非正式的警察，是这么说的吧？
　前些日子见的时候这么说的。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0040960a10">
「那就行。那，署长。这位是从ＧＨＱ调赴来的
附属八幡宫的军官，大鸟香奈枝大尉。
　身后的是永仓纱代。一直在香奈枝身边侍奉，
现在是文职人员。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0040970a11">
「是。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040980a00">
「大尉？
　晋升了吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　视线转向香奈枝小姐的阶级章进行确认。
　替换了一个全新的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0040990a00">
「恭喜。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041000a03">
「谢谢。
　虽然薪水没怎么提高。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0041010a10">
「那可不行啊。
　补贴什么的呢？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041020a03">
「很遗憾。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0041030a10">
「好吧。那这样好了。
　你这是帮本王做事，
要不那份补贴就由本王来出吧。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041040a03">
「哎呀，真是慷慨的大人。
　我要被笼络了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0041050a04">
「这样不错啊，大小姐。
　移送到横须贺的日子
也不远了。」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041060a03">
「宫殿下，言辞该谨慎！
　刚才的话依照法规算是收受贿赂！」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0041070a10">
「这、这样啊，那真抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　……横须贺会有什么？ 

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041080a11">
「大鸟大尉。
　想请教你一下……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041090a03">
「是，什么呢？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041100a11">
「刚才你说的话，于宫殿下身边工作，
为方便处理诸事是你的职务。
　具体来说是什么？」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041110a11">
「换句话，说成你的职权范围也行。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　对于署长来说这会很在意的吧。
　如果说亲王与外部人接触时必定同席什么的，怎能忍受。

　那样实际上就等同被ＧＨＱ所软禁。
　绝对是想要先确认一下，然后斟酌对策的方案。

　但大尉的回答却显得满不在乎。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041120a03">
「没有什么特别规定。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041130a11">
「……是？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041140a03">
「是啊。职务权限可以说是完全没有吧。
　毕竟是还没跟宫殿下磋商就立下的职务。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041150a03">
「一下子过来，怎么能随便要求职权呢。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041160a11">
「……这，也是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　道理上来说也许是这么回事。
　但这种程度的道理，对拥有强大军事力以及
国际正义背景下的ＧＨＱ，
是能强制引入的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041170a03">
「请从表面上的意思理解吧。
　我仅遵从殿下的要求以及生活上的支援而已。
我不会详细地发出烦人的指示。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041180a11">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　署长一幅暧昧的表情沉默着。
　嘴角的皱纹像在说事情变得难办了。

　署长的想法大致能够理解。
　如果职权能明确界定的话——即便有多么严峻，
还是有可能反过来利用。

　有职权范围的话，也就是说只能在职权范围内办事。
　但，没有职权范围，仅仅说图个诸事便利这样的解析
（包含曲解）的职务……

　反倒会难以应付。
　虽说没被强制什么，但考虑到彼此立场关系的话，
就不得不时常思前想后才去处理。

　……大鸟大尉自己的立场是站哪里？又或是偏向哪里？
　对联盟军是奉献绝对忠诚的吧？ 
也有可能不一定是那样……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0041190a10">
「这样啊，在本王生活上提供帮助啊？
这话好啊。
　跟这样的美人从早到晚，从澡房到被窝，
一直在一起……咕呼。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041200a03">
「嗯，宫殿下。虽然只是粗人一个礼数不周，
还请多多关照。
　不管什么，请尽管吩咐……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041210a03">
「对这婆婆。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0041220a04">
「我知道了。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0041230a10">
「你吗!?」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0041240a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　禁不住失笑。
　……从刚才开始，亲王就略施小计耍弄大鸟大尉
以此试探，被如此巧妙地摆脱掉，也就毫无成果。

　狐狸和狸猫的相互欺诈。
　不，还有猫头鹰。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041250a11">
「……可以认为是顾问官之类的吧？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041260a03">
「是这样。
　我想你那么理解也没有什么问题。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041270a11">
「我明白了。
　但是，如果是派遣顾问官的话，其意图
也就根据派遣当局抱有何种意图而决定。 」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041280a11">
「我想请问一下大尉。
　ＧＨＱ对大和抱有怎样的意图？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　署长投出直球。
　知道小手段对她没用。

　那投球马上又被打回来。
　——完全扔回来了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041290a03">
「侵略者。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0041300a10">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041310a11">
「…………」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041320a03">
「过去以及未来的。
　……嗯。<RUBY text="··">未来</RUBY>。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041330a03">
「现在，ＧＨＱ对这国家的内政
大致上不作任何干涉。
　进驻军仅仅是进驻。
街谈巷议也盛传即将撤退什么的……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041340a03">
「当然，没那回事。
　正如<RUBY text="··">大家</RUBY>都知道的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0041350a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041360a03">
「六年前————
　国际联盟军接受了六波罗以统治大和为前提
的投降，大战得以结束。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041370a03">
「但那跟联盟军——说白了就是大英联邦
所期望的结果有很大差异。对于自认为世界盟主
的他们来说，完全占领远东大和是必须的。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041380a03">
「为了阻止最后的敌人，俄国继续扩大下去。
将大和置之不理的话，就有可能成为俄国盼望
延伸至南洋的脱出口。
　以征服，抑或同盟的形式……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041390a03">
「那样的话，大英联邦那世界规模性对俄国
逐渐成功的封锁也会化为泡影。
　这样的危险他们是不会忽视的。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041400a03">
「……尽管如此，答应结束战争是因为，
由于六波罗的和平提案，联盟各国一下子
高涨的厌战情绪变得无可抑制。前线
与后方也疲惫了吧。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041410a03">
「再加上。
　现在的状况下，以武力强行占领大和的话，
预测会有一段长期的持续抵抗。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0041420a00">
「……于想要占领对俄桥头堡的大英联邦来说，
那样不妥。不如说，若效果等同于
在俄罗斯面前投下诱人饵料的话，
反效果也不错……吗？ 」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041430a03">
「是，确实。
　正因如此，六年前的议和成立。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041440a03">
「但当然，大英联邦——ＧＨＱ并不是放弃。
　现在，为再一次向大和动军，<RUBY text="··">完全</RUBY>
占领大和而部署中。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041450a03">
「默认六波罗的暴政也是部署之一。
　ＧＨＱ在等待。大和国民对幕府的
憎恶沸腾的瞬间。
国际舆论呼吁<RUBY text="··">解放</RUBY>大和的瞬间。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041460a03">
「谁也不会被在背后指责，
揭开『正义战争』的战幕……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0041470a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　——那是。
　不足以称呼为惊讶的真相。

　对稍微了解些世界形势的人来说，倒不如说是常识。
　这话虽然没有多少人说出口。

　但。
　并非其他人，而是从现进驻军内部人员口中清楚听来，
不可能不感受到冲击性。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041480a11">
「……非常坦白的回答啊。
　但是大尉，刚才的发言，我可以理解成是你对
ＧＨＱ的批判认识而产生的吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041490a03">
「这，很难说。
　如果放任六波罗肆意妄为，又或者成为
俄国的附属国，全国民众陷入农奴境遇……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041500a03">
「与那样的可能性相比，
我想隶属于大英联邦的话还好点。
　如果有<RUBY text="····">第四条路</RUBY>的话，
事情又会不一样了哦？　宫殿下。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0041510a10">
「…………」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041520a03">
「这样能作为答案吗？
　镰仓署长。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041530a11">
「……是。非常感谢，大尉。
　你<RUBY text="··">那个</RUBY>意思，我明白了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　署长的目光下移。
　……想引出的东西都引出了吧？

　亲王的表情隔着帘子，无法窥视。
　但似乎隐约看到他极不愉快的嘴角。

　看似委婉却很直白，看似直白却很委婉。
　大鸟大尉的手段，也让亲王茫然了吧。

　当然她是故意这样做的吧……
　不，又或者只不过是自然的行动而已。

　又或者是在知道结果会变成怎样的情况下
不作思考的行动。没办法的办法吗？
　……果然，我也被迷惑了。

　亲王打算怎样……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041540a11">
「要是那样的话，大尉。
　有个事无论如何都想要拜托你。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041550a03">
「是？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　有点惊讶。
　署长的语气很绝然。

　没有一丝迷惑。
　轻松地判断事态的方向般。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041560a11">
「景明他似乎已经得到你的知遇，那正好。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0041570a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　为什么提到我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041580a11">
「大鸟大尉。
　我想请你协助解决凑斗景明
负责的银星号事件。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0041590a00">
「哈？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041600a03">
「……哈。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　我跟大尉同时禁不住发出了声。
　所谓突如其来就是这种情况吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041610a11">
「正如大家所知，银星号事件是可怕的灾难。
大和土地上居住的所有人，无差别地成为诱饵，
实乃不幸变故。
　宫殿下格外心疼……」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041620a11">
「冒着被六波罗盯上的危险，
提拔景明，让其处理。
　但他才能还是有限，只身难以解决。」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041630a11">
「早就想要个心思周密的人辅助他。
　……从刚才的样子看来，
像大尉这样深思熟虑的人是最适当了。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041640a11">
「我也知道这样的请求十分厚脸皮。
　但你认为如何？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041650a03">
「……这样啊。
　得到你的称赞我很荣幸，
你的心情我也能理解。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041660a03">
「终究，我是派遣到宫殿下身边的人。
　没有殿下的命令的话。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0041670a11">
「宫殿下？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　署长投去视线。
　帘子另一端的亲王，
也难以察觉视线下微妙的意图吧——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma03/0041680a10">
「……嗯，行。
　就这样。拜托了，香奈枝。
请解决银星号事件，让大家安心下来。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　模糊的投影点了点头。
　——瞬间便下了决定。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0041690a00">
「…………」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0041700a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_005.nss"