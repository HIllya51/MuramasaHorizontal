//<continuation number="1160">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_012.nss_MAIN
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
	#bg063_普陀楽城内廊下_01=true;
	#bg045_普陀楽城公方の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_013.nss";

}

scene mb02_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_011.nss"

//◆本丸廊下
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg063_普陀楽城内廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　虽然不清楚缘由，我还是前往足利四郎邦氏所等待之
处。

　姑且试着向带路的女官询问了事由。
　但她只是冷淡地抛下一句「不知」，便再无言语。

　不知她是否当真不知道，但也无法继续刨根问底，
我只好就此闭口。
　于是，我来到了深处的一间房间前。

　在她催促下，我跨入了那房间。
　女官止步于此，背后响起尖利的砰然一声后，隔扇便
被关上了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆邦氏私室
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120010b49">
「改！
　太好了，你来了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120020a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　邦氏好像已经盼望许久，露出满面的笑容。
　虽然并没有因此驱散了心中的困惑，暂且先叩拜并尽
到该尽的礼数。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120030a00">
「给殿下请安——」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120040b49">
「不必多礼，平身平身。
　我找你来不是为了这番繁文缛节。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120050a00">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　确实如此，如若重视礼数，那这位权贵之人又岂
会和我这种公职小人物对话呢。

　……所以，究竟是什么风促成了这场对话。
　即便因为上次一事，这位少年对我着实中意，也
不至于会唤我至里间来一场足球讲义。

　四郎邦氏虽口称略去寒暄，却也没有立即提到正
事。
　空气中弥漫着不知如何开口的缄默。

　鉴于彼此的立场，我不可能去催促对方。
　那么……该如何是好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120060b49">
「……不瞒你说……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120070a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　过了十秒。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120080a00">
「…………」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120090b49">
「……余想……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120100a00">
「是！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ウェイト
	WaitKey(4000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　能唱毕一曲童谣的时间过去了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120110a00">
「…………」


{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120120b49">
「……花……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120130a00">
「是。」


{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120140b49">
「女子……
　果然爱花吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　……………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120150a00">
「花……？」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120160b49">
「嗯……
　不，倒也并非局限于花……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　终于开始的对话，却令我一头雾水。
　邦氏、我、女子，这三者究竟因何又为何联系在一起，
完全捉摸不透。

　别无他法，我只得尽可能作出回答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120170a00">
「就一般情况而言，想必正是如此。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120180b49">
「一般……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120190a00">
「如若换成男子……
　正如俗话所说，男当爱看棒球，男当喜食肉
类，小人认为大概与此相似吧。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120200b49">
「嗯……
　但事实上，世间多有男子
既不爱棒球也不爱肉类。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120210a00">
「所言极是。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120220b49">
「女子也并非皆爱花，不是吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120230a00">
「人各有所爱吧。
　有言道：不爱鲜花爱团子。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120240b49">
「不爱鲜花爱团子吗……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120250a00">
「是。」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120260b49">
「团子会更讨喜吗……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120270a00">
「是。」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120280b49">
「不，改，你真的这样认为吗!?
　突然将团子送给一名女子，这真的符合男女
间的礼仪吗!?」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120290a00">
「不，那将会成为一次前卫的挑战。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　邦氏陡然回归常态，口吻也恢复原状，见状我赶忙摇
了摇头。
　应对这场不知所云的对话真是相当麻烦。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120300a00">
「但世间也有女子如愚妹一般，从男子那收到
情书与鲜花，才看一眼就怒斥一声『拙劣』，
抬脚便踢，害得对方重伤三月才痊愈——」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120310b49">
「从未听说过此等怪人怪事！
　余的情况并非如此……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120320a00">
「是。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120330b49">
「那位女子……更加地……」


{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120340b49">
「余觉得她是……
　…………这样的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120350a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　他是希望我凭借第六感去理解这番话语吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120360b49">
「但这也许只是余的任意猜想罢了……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120370a00">
「是。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120380b49">
「所以才把你叫来啊！
　你有什么看法？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120390a00">
「是。
　在这之前，殿下。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120400b49">
「嗯。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120410a00">
「小人愚笨，尚未能理解殿下话中之意。
　实在惭愧……恳请赐教。」


{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120420b49">
「…………」



//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120430b49">
「……」

{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120440b49">
「抱、抱歉。
　满心烦恼，以致……乱了方寸。」

{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120450b49">
「是关于樱子小姐的事。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120460a00">
「冈部家的？」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120470b49">
「嗯。
　足利与冈部两家之间……曾有过种种过往。」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120480b49">
「但那一切都已是往事。
　余希望能既往不咎……不，或许这只是不负
责任的说辞罢了。」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120490b49">
「但，我觉得樱子小姐不必始终觉得颜面
无光……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　胜者向败者求和并非易事。
　或难于来自败者的求和。

　足利四郎的言辞多有暧昧不明之处，大概正是因为融
入了真切的感受吧。
　我决定出手相助，故颔首。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120500a00">
「容小人冒昧，小人也这么想。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120510b49">
「真的吗！
　嗯……余就知道你一定会赞同的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　仅仅因为些许接触，这位少年竟如此信赖我。
　……思及自己的真实身份，心头不禁一阵刺痛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120520a00">
「那么——」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120530b49">
「前几日，你也见过樱子小姐了吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120540a00">
「是。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120550b49">
「那时的樱子小姐——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　少年缄口不语，似乎正在唤醒往事回忆。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(6000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　能吃完一碗拉面的时间过去了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_恋情.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//◆ドリーム
{	SetComic(@0,@0,13);}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120560b49">
「…………」


{	DeleteComic();
	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120570a00">
「……殿下。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120580b49">
「…………嗯!?」


{	SetComic(@0,@0,16);
	FwC("cg/fw/fw邦氏_通常b.png");}
//嶋：修正（話してた）【090930】
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120590b49">
「抱、抱歉。
　我们说到哪了？」


{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120600a00">
「回殿下，方才说起那时的樱子小姐。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　总觉得是自己错了，带着这番心情向他说明。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120610b49">
「啊、嗯。
　那时……」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120620b49">
「在我看来，她很痛苦……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120630a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　那时樱子小姐至少在表面上，应该是保持着平静的。
　……这位少年，果然并不迟钝。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//◆ボイスは「綺麗だったけど……」小声で。
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120640b49">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120650a00">
「怎么了？」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120660b49">
「没，没什么。
　所以，我想……」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120670b49">
「与冈部之间的战争结束还没过多久。樱子小
姐多有担忧也实属无可奈何……
　我想尽量……尽量可以缓解她的痛苦，有办
法吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120680a00">
「原来如此。
　所以才说起花。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120690b49">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　终于将这番对话理出了一条头绪。
　但尚有一条件不足。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120700a00">
「不过，殿下。
　为何将这烦恼告知于我呢？」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120710b49">
「我只能想到你。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120720a00">
「这——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　本想说「绝无此事」，但我还是闭上了嘴。
　咽下嘴边的话，我回想起当日的情景。

　那是王者孤独的游戏，包围着他的是护卫与侍从。
　……也许，真的别无他人。这位少年的身边，没有人
可以与他商量这样的话题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120730a00">
「——得您如此信赖，
　实属无上光荣。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120740b49">
「你能这样说，我也很高兴。
　那么，你觉得如何呢？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120750a00">
「这……」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120760b49">
「如果我挑选出美丽的花相赠，你觉得樱子小
姐她会欣喜接受吗？
　还是说，送别的比较好呢……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120770a00">
「那么——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　我绞尽脑汁。
　我当然不了解樱子小姐的爱好。

　和眼下的足利邦氏一样，我与她相交甚浅。既
没有交谈过，也并非互相理解。
　但——即便如此，有些事还是很清楚的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120780b49">
「改？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120790a00">
「小人认为……
　花也未尝不可。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120800b49">
「什么意思？
　那就是说别的东西也可以吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120810a00">
「是。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120820b49">
「……是指团子吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120830a00">
「想必也可。」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120840b49">
「改。
　你在认真考虑吗……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120850a00">
「当然。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　面对这位略显不安、窥视我的少年王者，我报以浅浅
的微笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120860a00">
「岂敢蔑视堂堂邦氏殿下的垂询。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120870b49">
「但是……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120880a00">
「殿下。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　我正色，开口说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120890a00">
「殿下想送给樱子小姐的，绝不是礼物本身。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120900b49">
「……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120910a00">
「殿下是想借助礼物，传达一颗怜惜樱子小
姐的心吧。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120920b49">
「嗯、嗯。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120930a00">
「既如此，小人认为东西本身并不重要。
　只要足以传达殿下的一片心意便可。」


//嶋：修正（知らぬ）【090930】
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120940a00">
「如若知晓小姐的喜好，则另当别论，而今既然
无人了解她喜欢什么，那么关键就在于传达一片
心意。
　请殿下按自己的意思选择礼物。」



{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120950b49">
「……如果收到了无聊之物，樱子小姐她会厌
烦吗……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120960a00">
「小人认为殿下不必为此挂心。
　小人这种凡夫俗子本就揣摩不透高贵之人的
气量。」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120970a00">
「但如果是那位小姐，则一定……
　在接到礼物的同时，定能体会到殿下的一片
热忱。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120980b49">
「……是吗……」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120990b49">
「嗯，一定是这样的！
　谢谢你，改。我不会再犹豫了。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121000a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　眼前的邦氏向我展开笑颜，我深深地垂下了头。
　忆起自己的身份会产生复杂的心境，我决定在这一刻
暂且忘却。

　希望能帮到这位温柔的少年。
　虽然与我肩负的职责并无关系……权当是中途耽搁了
一阵子便好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121010b49">
「好，我决定了。
　还是送花吧。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121020a00">
「较为稳妥……」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121030b49">
「那拜托你了，改。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121040a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　…………

　嗯？
　我该做的，难道不是到此为止吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121050b49">
「你要替我送给樱子小姐，不得有误。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121060a00">
「…………<?>
{	Wait(500);}
殿下。
　这种事情，还是殿下亲自送达较好。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121070b49">
「话虽如此……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121080a00">
「不可在此退缩。」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121090b49">
「不是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　邦氏显得很困扰。
　似乎并不是退缩，也并非害羞之故。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121100a00">
「殿下？」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121110b49">
「……我有无数之事想亲自做。
　但一旦我——余插手，便会兴师动众。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121120a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　的确如此。

　没办法。
　已经骑虎难下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121130a00">
「领旨。
　谨承使者一职。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121140b49">
「你愿意吗！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121150a00">
「是。那么，礼物……
　需要我暂且先退下，择日再晋见吗？」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121160b49">
「不必。
　其实，我已经选好了……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_013.nss"