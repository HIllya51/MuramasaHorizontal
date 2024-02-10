//<continuation number="1370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_046.nss_MAIN
{

	CP_AllSet("村正");

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
	#bg105_城門付近内側_02=true;
	#ev231_茶々丸変身_a=true;
	#ev231_茶々丸変身_b=true;
	#ev231_茶々丸変身_c=true;
	#ev231_茶々丸変身_d=true;
	#ev231_茶々丸変身_e=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_047vs.nss";

}

scene md04_046.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_045b.nss"

//◆フェードイン。城内bg105_夕

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg105_城門付近内側_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm16", 0, 1000, true);

	Wait(500);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……再度确认周围的状况。

　这里是普陀乐城。
　现在——正在银星号的力量所引起的混乱风暴的中心。

　杀，
　杀，
　杀，
　杀。

　绝望的杀戮空间。

　——必须，阻止它。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(300,false);


	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460010a01">
「…………对了。
　有人托我告诉你。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460020a00">
「？　什么？」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460030a01">
「大鸟香奈枝托我向你传话。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460040a00">
「……大尉阁下她？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　好久不曾听到这名字了。
　大鸟大尉……绫弥一条…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460050a01">
「虽然不知有几分是事实。
　……那我就照原话说了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460060a00">
「好。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460070a01">
「进驻军将要使用决战武器锻造雷弹。
　用那件武器将这座城全毁……之类的。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460080a00">
「————」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460090a01">
「主君知道这是什么意思？
　我是一句也听不明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　但是我没有时间回答疑惑的村正。
　
　是啊……锻造雷弹！

　威力能将这座普陀乐城荡平的最终兵器。
　为了进驻军的胜利——不。为了绿龙会的目的，
它马上就会被空投下来……

　我也曾怀疑过这种无法无天的兵器是否真的存在。
　但，从完全不同的途径——那位大鸟大尉处得到相同
情报的话……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460100a00">
「真的存在。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460110a01">
「……主君？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460120a00">
「那兵器真的存在，村正。
　而且，马上就会落到这里……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460130a01">
「…………」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460140a00">
「不能让他们得逞。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　现在，最为优先的就是这件事。
　距离最近，规模最大的破坏就是它。

　但是，要如何阻止？

　空投炸弹，应该会由飞行军舰或是龙骑兵执行。
　截击它——？

　…………办不到。

　若是炸弹有相当的威力，执行空投的飞行器当然会
选择高空。
　要迎击的话，就得到达那片空域才行。

　但现在，低空域被银星号复制体的军团所占据。
　要强行突破并不是那么容易的。

　若是绕开或是瞄准空隙穿过，接下来也必须与空投部
队的护卫兵交战，击退他们。
　总不能没有护卫吧。

　不行。
　这场赌注胜算太低了。

　必须想其他办法。

　但是有什么办法呢？
　不能以武力阻止的话，谈判呢？

　冲进进驻军司令部直接找指挥官谈判？
　
　……作为解决现状的策略，太理想化了。

　还有，还有什么办法——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460150a01">
「主君，刚才的传话还没讲完。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460160a01">
「其实接下来的话，我也不太明白……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460170a00">
「说吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　像是找到了救命稻草似的，我催促她说下去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460180a01">
「为了阻止这场作战……
　必须消灭六波罗幕府。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460190a00">
「……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460200a00">
「那是什么意思？」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460210a01">
「都说了我不懂了。
　然后……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460220a01">
「她说，足利四郎邦氏是关键。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460230a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　足利四郎邦氏——护氏的嫡孙。六波罗的总大将。
　那个少年是消灭六波罗的关键……？

　大鸟大尉究竟是有着什么样的考虑？ 
　的确，进驻军的目的并非毁掉这座城，而是消灭六波
罗。所以六波罗不存在的话，也就没有空投炸弹的必要
了。

　就算暗处的绿龙会的目的与六波罗毫无关系，既然他
们并不是掌握着进驻军兵权，只是巧妙地操纵着他们的
行动，那么他们就不可能无视进驻军的目的。——一旦
幕府被消灭，计划就会受挫。

　但，幕府本身是不可能被人简单创造或是消灭的。
　
　大尉的话太片面，无法判明她的真意。

　恐怕是，向不熟悉现代形势的村正详细说明过于麻烦，
所以只托她传达要点。
　这份心思在现在看来真可恨。

　————不，等一下。<k>
　
　<RUBY text="·········">足利四郎邦氏是关键</RUBY>？

　是指要暗杀身为总将的他？
　不……不对。并非如此。

　以他的年纪掌权六波罗还嫌太早，现在并无
实权。
　即使他死了，六波罗也不会毁灭。

　所以，并不是杀了他。
　是让他，<RUBY text="···">活下去</RUBY>。

　他在六波罗的实际运作上起不了重要作用，
即使消失了也不会对幕府造成致命伤。
　但，他能够消灭幕府。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460240a00">
「村正，我们走。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460250a01">
「去哪？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460260a00">
「天守阁。
　去足利邦氏殿下那里。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460270a00">
「说服他，让他宣言大政奉还。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　<RUBY text="····">还政于帝</RUBY>。
　让他宣告六波罗作为国家统治机构的终结。

　足利邦氏只不过是名义上的幕府元首。
　但既然是名义上的首领，以他的名义发表公开宣言，
必定有着重大的意义吧……至少，在被掌握实权之人
否定之前。

　进驻军认定六波罗是非法政府，以消灭它为名义调动
军队。
　所以——就照他们说的办。以六波罗自身的行动，抢
先一步。

　这样一来，进驻军将会失去继续战争的理由。

　当然，也有可能对其不予反应。
　但如此一来，他们就失去了正义之名，将会在大和国
民心中留下负面印象，遭到国际社会的批判等等，得不
偿失。

　手握进驻军之人——无论是大英联邦还是新大陆独立
派都难以接受这些。
　也许会失去全部的战争得益。

　这个方法，一定能阻止空投锻造雷弹！
　借足利邦氏之口宣告六波罗体制的终结！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460280a01">
「…………
　能、能办到吗？那种事。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460290a00">
「不试试看就不知道。
　按我的想法，这个方法成功的希望最大。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　实施宣言……只要用部队的广域通信网就能办到。
　能够使宣言传达到的范围尽量广，导致无法掩盖。

　难点，还是如何说服他。

　虽然在这普陀乐城住过一阵，但我的身份只不过是一
介龙军中佐，与身为殿上之人的足利邦氏并没有见面机
会。
　当然，更不曾交谈过。

　……也就是说。
　我必须冲到未曾谋面的贵族面前，逼他做出毫无道理
的事情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460300a00">
「非做不可。
　……虽然问我有没有自信，我是很难回答。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460310a01">
「……我也会努力的。
　虽然不知道能派上多少用场。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460320a00">
「拜托了。」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460330a07">
「用不着拜托吧？
　那个废物，能在那种场面派上用场？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸

	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服b.png");
	FadeStR(500, true);

	SoundPlay("@mbgm19", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我转向旁边传来的声音。
　她终于挣脱丝线，站了起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460340a01">
「茶茶丸！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460350a07">
「你真行。
　你可真够能干的啊！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460360a07">
「……村正……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460370a01">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　足利茶茶丸的声音，就像是把名为怨念的心情纯粹
信号化之后的东西。
　直面它的村正僵直了身体。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460380a07">
「在堀越……就应该收拾掉你……！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460390a07">
「不，在八幡宫就该毁了你！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460400a07">
「被你抓到痛脚了啊。
　拜你所赐我落到这份田地。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460410a01">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460420a07">
「哈哈……可笑。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460430a07">
「真是无话可说。
　稍微给你点空子钻，就被抢走了呀。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460440a07">
「……呵……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460450a07">
「太有趣了吧你!!」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460460a01">
「……不是你先抢走的吗！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460470a07">
「没错啊。
　是我先从你那里抢走的。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460480a07">
「……那时候全部抢走就好了。
　你的性命这种渣滓一样的东西我没有半分兴
趣，所以就放着没管……结果……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460490a07">
「可恶，我才没兴趣后悔！
　现在也能收拾掉你——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Move("@StR*", 200, @-20, @0, Dxl2, false);
	OnSE("se人体_動作_一歩",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　放出连饥饿的乌鸦也能吓跑的杀气，茶茶丸伸出手。
　我反射性地，挡在村正面前。
　但在我面前，茶茶丸突然踉跄了一记。

{
	DeleteStR(150, true);
}
　抱着头蹲了下去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460500a07">
「啧…………！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460510a00">
「……？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460520a07">
「可恶……头痛又来了……
　……最近明明好转了……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460530a07">
「突然又恶化了……见鬼……
　……吵死了……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　头痛……？
　
　大概十分痛苦吧。按在头上的手指看起来
几乎要将肌肉撕裂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460540a00">
「……茶茶丸……？」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460550a07">
「…………」

{	FwC("cg/fw/fw茶々丸_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460560a07">
「……啊……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460570a07">
「……又叫我名字了……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460580a07">
「哥哥。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @50, "cg/st/st茶々丸_通常_制服a.png");
	Move("@StR*", 600, @0, @-50, DxlAuto, false);

	FadeStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　摇摇晃晃地。
　微笑着，茶茶丸再度站起身。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460590a07">
「太好了。
　不是叫我中将阁下。」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460600a00">
「…………
　茶茶丸，快停手吧。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460610a00">
「我不知道你想要什么。
　但是我知道为了这个目的，要牺牲的太多了。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460620a07">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460630a00">
「我不会跟你讲道理……拜托了。
　停手吧。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460640a07">
「……哥哥这种莫名的诚实之处，
我真的不讨厌……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460650a07">
「但是，不行。
　就算哥哥求我，我也不会停手的。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460660a00">
「茶茶丸！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460670a07">
「所以我也不能放你去邦氏那里。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460680a07">
「哥哥的想法抓住了关键哦。
　的确利用邦氏的话，现在也能阻止空投
锻造雷弹……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460690a07">
「说服他，恐怕也并非那么难吧。
　因为现在邦氏的情绪有点不安定呢。要是拜托
他毁掉幕府的话，大概会轻易听从吧。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460700a07">
「……没想到童心和尚竟然有那种怪癖呢……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460710a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0460720a00">
「为什么，要特意告诉我？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　如同给我希望一般。
　因为我没有自信，所以放着我不管，让我自己烦恼
岂不是更好么。

　既然茶茶丸和我对立，那就是理所当然的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460730a07">
「理由有三个。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460740a07">
「第一，我留了后手预防这件事。
　第二，哥哥要由我来阻止。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460750a07">
「第三……我到底，对哥哥还是太天真了。
　大概是先喜欢上就输了吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460760a00">
「……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460770a07">
「美男子先生。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460780a00">
「茶茶丸。
　再一次——」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460790a07">
「不行。
　……别让我徒增烦恼了。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460800a07">
「虽然哥哥好像有<RUBY text="··">选择</RUBY>的余地。
　但我没有。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460810a00">
「……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460820a01">
「主君，走吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460830a00">
「村正。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460840a01">
「不必勉强战斗。
　武装上装甲，飞走就可以了。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460850a01">
「虽然上面的<RUBY text="那东西">复制体</RUBY>有点危险……
　但我想短距离的话总能应付。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　十分妥当的提案。
　不必直飞到天守阁。只要能甩掉茶茶丸就够了。

　若是之后没有碍事的人，就跑到目的地。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460860a07">
「无能的家伙。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460870a01">
「……什么？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460880a07">
「要是听了你的话，哥哥马上就会被我轻松击
坠。
　让操控者去找死的剑胄难道不无能？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460890a01">
「……哼。
　我也算到了你<RUBY text="··">会飞</RUBY>的可能性。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460900a00">
「……？」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460910a01">
「但是总归无法与武者的骑航性能相比。
　虽然需要小心，但没有大问题。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460920a07">
「那是你的算法。
　给你打个分吧……大概十分？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460930a07">
「顺带一提满分是一亿分。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460940a01">
「你这……！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0460950a00">
「别发火，村正。
　你的意见，就我的判断来说也没有问题。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460960a07">
「哥哥不知道所以没办法。
　但是<RUBY text="那家伙">剑胄</RUBY>到现在还没察觉，
又算什么呢？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460970a01">
「你想说什么？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0460980a07">
「叫你快点明白过来啊。
　快看清我到底是<RUBY text="··">什么</RUBY>。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0460990a01">
「我知道。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461000a07">
「哦？　说来听听。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461010a01">
「你是剑胄吧？
　茶茶丸。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461020a07">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0461030a00">
「……什么？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461040a01">
「她是剑胄哦，主君。
　这个足利茶茶丸！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461050a01">
「还记得你被精神污染的时候……我被茶茶丸的
能力压制着吗？
　那时候我就想，难不成是这样。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461060a01">
「而一旦注意到，详细探查之后，果然有异。
<RUBY text="·······">肉体不像是肉体</RUBY>。
　像我一样。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0461070a00">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461080a01">
「对，和我一样。
　茶茶丸是拥有人类形态的剑胄。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　堀越公方足利茶茶丸是，剑胄？
　不可能。怎么会有这种事。

　…………但是。
　
　茶茶丸显露过几次的，奇怪能力————

　那是常人绝不可能拥有的。
　也就是说——<k>剑胄的……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461090a07">
「啊哈哈——」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461100a01">
「……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461110a07">
「到底是块不长眼睛的废铁!!
　这么有自信却猜错了。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461120a07">
「我不是剑胄。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461130a01">
「……说谎。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461140a07">
「不巧是真话。
　……要是剑胄倒好了。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461150a01">
「想自称是人类？
　明显不是吧。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461160a01">
「别想骗过我的眼睛。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461170a07">
「没有骗。
　只是你搞错罢了。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461180a01">
「不可能有<RUBY text="·······">拥有心铁的人类</RUBY>！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461190a07">
「傻子。
　你脑子里就只有剑胄和人类吗!!」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461200a01">
「————咦？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆ＥＶ：茶々丸甲化

	CreateColorSP("黒幕", 25000, "WHITE");
	DrawTransition("黒幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("装甲", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_a.jpg");
	OnSE("se特殊_その他_部分除装", 1000);

	WaitKey(1500);


	FadeDelete("黒幕",1500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　突然，奇怪的声音响起。
　就好像强行用力量使铁骨弯曲一般——

　随着声音，茶茶丸的皮肤开始变化。
　从洁白的皮肉变成别的什么。

　变成发出冷冷光泽的硬质物体。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：第一段階
	CreateColorEXadd("黒幕", 25000, "WHITE");

	Fade("黒幕", 50, 1000, null, true);
	CreateTextureSP("装甲２", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_b.jpg");
	CreateTextureEX("装甲", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_b.jpg");

	OnSE("se特殊_その他_部分除装", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Fade("黒幕", 500, 0, null, false);
	FadeF4("装甲", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("装甲", 300, false);


	SoundPlay("@mbgm10", 0, 1000, true);


	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0461210a00">
「装甲……?!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　毫无呼唤剑胄的样子。
　而且眼前的变化，若是武者装甲时的姿态，未免太奇
异了。

　并不是皮肤被铁甲<RUBY text="··">覆盖</RUBY>。
　而是皮肤<RUBY text="···">变化成</RUBY>铁甲。

　就像倒过来再现村正从蜘蛛变成虾夷时的变形。
　
　……茶茶丸，难道真的是剑胄?!

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461220a07">
「……呜……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：出血と苦悶

	Fade("黒幕", 50, 1000, null, true);

	CreateTextureSP("装甲２", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_c.jpg");
	CreateTextureSP("装甲", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_c.jpg");
	OnSE("se特殊_その他_部分除装", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Fade("黒幕", 500, 0, null, false);
	FadeF4("装甲", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("装甲", 300, false);

	SetFwR("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461230a07">
「啊……嘎啊……」

{	FwR("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461240a01">
「……!?」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　错了。
　村正犯了一个致命的错误。

　村正的人形——变化成肉体，是剑胄的一种功能。
　虽然开发这门术法十分辛苦，但完成后就可以自由
操控，毫无阻碍。

　但茶茶丸十分痛苦。
　即便在一旁也能明显看出，
现在她正经受着活地狱一般的煎熬。

　……甚至流出血来。
　从手脚、腹部、脖子流下来。

　村正的——剑胄的变化，不会发生这种事。

　怎么回事。
　这副光景是!?

　活生生的女孩子变成铁打的人偶。
　忍受着痛苦，流着血，哭泣着。

　这是怎么回事。

　这不简直就像被疯狂的科学家<RUBY text="··">改造</RUBY>过一样吗!? 


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：甲化進行。表情は凄絶な笑み
	Fade("黒幕", 50, 1000, null, true);

	CreateTextureSP("装甲２", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_d.jpg");
	CreateTextureSP("装甲", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_d.jpg");
	OnSE("se特殊_その他_部分除装", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Fade("黒幕", 500, 0, null, false);
	FadeF4("装甲", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("装甲", 300, false);

	SetFwR("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461250a07">
「呵……呵呵……」

{	FwR("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461260a01">
「…………茶茶丸……」

{	FwR("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461270a01">
「你是，什么？」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461280a07">
「我是像人一般生活的剑胄。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461290a07">
「作为剑胄而生的人。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461300a07">
「两者皆是，两者皆非。」

{	FwR("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461310a07">
「结合得不完整的产物。」

{	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0461320a01">
「……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0461330a00">
「……茶茶丸，你是——」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461340a07">
「予蛆虫以腐肉。予苍蝇以粪便。
　予乌鸦以贯穿的青蛙。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461350a07">
「今夜之虎彻——正是嗜血之时。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分：甲化完了
	#aw_虎徹=true;

	Fade("黒幕", 50, 1000, null, true);

	CreateTextureSP("装甲２", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_e.jpg");
	CreateTextureSP("装甲", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_e.jpg");

	OnSE("se特殊_鎧_装着03", 1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	FadeDelete("黒幕", 2000, false);
	FadeF4("装甲", 200, 500, 1500, 0, 0, Dxl2, true);
	FadeDelete("装甲", 300, false);


	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0461360a00">
「……!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　武者形态————?!

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0461370a07">
「哥哥……我是……
{Wait(500);}
　——————————<RUBY text="Ｌｉｖｉｎｇ　Ａｒｍｏｕｒ">活体甲胄</RUBY>啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆シーン切り

//恐らくすぐ戦闘なので、BGM止めずにいます inc櫻井


}

..//ジャンプ指定
//次ファイル　"md04_047vs.nss"
