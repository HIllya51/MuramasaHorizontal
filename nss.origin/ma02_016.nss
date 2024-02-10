//<continuation number="2440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_016.nss_MAIN
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
	#bg024_墓地_01=true;
	#bg004_鄙びた村a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_017.nss";

}

scene ma02_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_015.nss"

//◆墓地
	PrintBG("上背景", 30000);
	OnBG(100,"bg024_墓地_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm33",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　——诚心祈求四金之司。

  送灵于此待灵归来，拾此于云游之道，
赐下百幸千福。五方化德皆在此。

　大幸金神、大惠金神，祈愿留于北斗八廊，
将恩德泽惠，施降予天地间。

　奇一金心、全一金光、护方金轮、杀方金掌……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆弥源太
	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0005]
　虾夷老者持续念诵着会令听者疑惑不解的经文。
　不断重复着短小的文言文。

{	CreateSE("SE01","se自然_草木_探る01");
	MusicStart("SE01",0,1000,0,750,null,false);}
　甚至在其背后突然闪现出人影时，念诵声也没有停止。
　以非人之物为念诵对象的话语不断堆砌。其背后所站
之人也并不打算阻止他。

　重复了数十次，不，大概有一百次吧。
　终于，老人的咏唱停止了，站在老者背后的男人缓缓
地开了口。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160010b45">
「……是金神祭词吗？
　这分明不是应该在净土宗的寺庙里咏唱的东
西吧。和尚没什么怨言吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160020b55">
「和尚说，他们对救人的神佛一视同仁……
　而且，我也不懂得别的祷告词。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　和昨夜拔刀相向的男人相遇，老人的脸上毫无
惊讶之色。
　今天在这里相见，与昨夜相遇的意义是不同的。
在此刻不需要任何惊讶与恐惧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160030b55">
「自从一媛回到了这里，我一直都是这么做的。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160040b45">
「……呵。
　细想想，这也挺适合她的啊。
怎么说都是金神的新娘嘛。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　蕴含着苦涩的笑容。
　老人也露出苦笑。

　男人的话是开启旧日回忆之门的钥匙。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景5", 5000, Center, Middle, "cg/bg/bg004_鄙びた村a_01.jpg");
	SetTone("絵背景5", Sepia);

	Fade("絵背景5", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　——遥远的过去。
　当时他们还是年轻的男人，和年轻的虾夷人。

　在旁人眼中他们二人确实很奇怪吧。
　他们从相遇之初便宛如相互间有弑亲之仇般地强烈敌
视对方，以各种理由为契机相互争斗，甚至多次互斗至
负上危及生命的重伤。

　然而，他们彼此却从未疏远过对方。
　与锋芒过于锐利的年轻男人来往的村人除了年轻虾夷
之外仅有一人，和年轻虾夷关系交好的人除了年轻男人
之外亦仅有一人。

　那个人便是一媛。
　那是个和二人年纪相仿的美丽姑娘。

　年轻男人和虾夷人到了青春期，发现了姑娘那美丽的
真正意义，不久，他们开始希望姑娘的美丽只为自己一
人绽放。

　同时，不久便知道了有如此想法的并不只自己一个，
另一个人也是这么想的。
　二十岁过后的某一天，为了了结二人长年的争斗，他
们相互约定了最后的决战。

　但是，第二天早晨。
　出现在决斗场的却是三个人。
　面对瞠目结舌的两个年轻人，那姑娘，也就是一媛说
道。

『啊哈哈！　原来如此，我将成为强大的那方的新娘啊。
　但是不管你们多么强大，也赢不了山上的金神大人吧？
那么就没办法了。
　我决定去神明大人那里做他的新娘了哦。』

　年轻虾夷为自己感到羞耻，回到了山里。
　年轻男人没有放弃，仍旧要求和虾夷人决斗，希望与
姑娘结婚，但是哪一方都没有回应他。
　终于，当姑娘离开村子的时候，男人也不见了踪影。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景5", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049]
　……故事到此结束。
　在三十年前的这个村子里，曾发生过这样的故事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160050b45">
「那家伙，结婚了吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160060b55">
「好像没有。
　听说她离开村子之后就住在骏府的兄嫂家了。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160070b45">
「嗯？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160080b55">
「不过听说大概七年前，由于那家破产垮掉了，
便收养了在镰仓的侄夫妇的遗子移居去了那里。
　这全部，都是听和尚说的。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160090b45">
「之后呢？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160100b55">
「她是三年前回到村子的。
　已经化为白骨了。听说她留下遗言说要埋在
这里。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160110b45">
「……那家伙。
　难道说，她坚持贯彻了那句戏言吗？
没有结婚便死去，让自己埋在能眺望山的
此处……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160120b55">
「谁知道呢。
　不明白。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160130b45">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160140b55">
「但是，右京。
　原本你也没有把那话当做是戏言吧。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160150b45">
「你什么意思？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160160b55">
「为什么要挖山？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160170b45">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160180b55">
「想要钱吗？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160190b45">
「钱不嫌多嘛。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160200b55">
「除此之外应该有其他发展产业赚钱的方法吧。
  用不着光凭一个诡异的传说就去当矿工。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160210b45">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160220b55">
「一媛再也不在了啊。」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160230b45">
「她在的。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160240b55">
「右京……」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160250b45">
「她说她要成为这山之祟神的新娘。
　那么，理论上杀了神的话我就能得到一媛了。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160260b55">
「…………」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160270b45">
「若是神的矿脉存在的话就将其一并夺来。
　若什么都没有的话就吐口水嘲笑它。
　无论怎样都好。只要杀了神，就是我的胜利。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160280b55">
「……你果然一直对她念念不忘啊。
　和以前一点都没变呢。你真是个愚蠢的男人。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160290b45">
「我变了啊。因为从前我未能承认自己的愚蠢。
强装宽容而失去了她。
　现在不一样了。」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160300b45">
「无论是怎样的状态。
　我要得到她。只要得到就行了。就算是骸骨
也好，甚至连骸骨都没有了也行。」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160310b45">
「无论如何……
　无论是神，还是你，都不允许妨碍我。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160320b55">
「……愚蠢啊。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160330b45">
「是愚蠢啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se自然_風_野原02");
	MusicStart("SE01",0,1000,0,500,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　风轻轻吹着。
　和缓的风。柔和地消散在两人之间，但是，
它却仿佛一条大河将两岸隔开。

　言语已经传不到对岸，仅剩视线能够交流。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160340b45">
「那么……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160350b55">
「你要走了吗？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160360b45">
「托你的福，如今以我的身份可无法悠闲地
享受散步了啊。
　算了，反正这一两天就解决了。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160370b55">
「之前，深红的武者是去杀你的吧？」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160380b45">
「被倒打一耙啊。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160390b55">
「……右京。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160400b45">
「怎么了。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160410b55">
「<RUBY text="··">祟神</RUBY>，<RUBY text="·······">或许已经降临了</RUBY>。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160420b45">
「…………什么？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160430b55">
「如果，真是这样的话……
　你的所作所为就全是徒劳了。」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160440b55">
「不要躲起来，右京。快点到我这来。
让我做你的对手……
　如果不能避免灾难的话，我希望能减少一点
将来的悔恨。」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160450b45">
「……真啰嗦。
　还以为你会说什么。」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160460b45">
「你那是打算挑衅吗，弥源太。
　原来如此，你们打算在那个可恶的姑娘
还在的期间了结事情吗。我正相反。我要在
赶走那家伙之后，再来处置你。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160470b55">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160480b45">
「给我等着吧。
　我定要取走你那项上人头——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざっ。
//◆一条
	DeleteStA(300,true);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se自然_草木_探る01");
	MusicStart("SE01",0,1000,0,1250,null,false);

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_通常a.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160490a02">
「…………嗯？」


{	FwC("cg/fw/fw弥源太_驚き.png");}
//◆凝然
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160500b55">
「————」


{	FwC("cg/fw/fw長坂_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160510b45">
「……什…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　在看到那个出现的人影时。
　两个老人愕然地愣住了。

　那是个少女。
　她身着学生制服，稍有些不合时宜。
　但却奇异地与她相称。

　少女用诧异的目光环视着二人。
　很明显她从未见过他们。

　但是，那二人却不同。
　他们的唇同时，并且无声地，做出了相同的口型。

　……一媛。

　对见到自己之后一直伫立着的老人，少女却似乎很
焦躁。她撇着嘴，发出质疑的声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm17",0,1000,true);
	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160520a02">
「……你们是谁啊？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160530b55">
「啊、不……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160540b45">
「唔……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160550a02">
「……？　我不知道到底怎么回事。
　那里是我家人的坟墓。你们站那里很碍事，
赶快走开。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　一说完，少女就无情地将二人推开，占据了
墓前的位置。
　她的视线突然，停在了某处。

　新鲜的白菊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160560a02">
「这个，是你们放的吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160570b55">
「……是啊……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160580a02">
「什么啊……原来你们是来祭拜的吗？
　如果是这样的话就直说嘛。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160590a02">
「谢谢。
　我一直很在意每年到底是谁带花来的呢。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160600b45">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160610b55">
「……失礼了，请问，
　小姑娘你是一媛的……？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160620a02">
「一媛？
　……啊啊，是婆婆的名字啊。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160630a02">
「这还真是个挺棒的名字呢。
　明明是个遇事冲动的冷酷婆婆。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160640b45">
「……」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160650a02">
「我是一条。在被弄错之前我就先说清楚，这
不是姓而是名字。
　给我命名的就是在墓下长眠的家伙。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160660b55">
「那么……绫弥一条……阁下吗。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160670a02">
「我是这个婆婆的……该怎么说呢？
　我不是她孙女，也不是从堂姐妹……啊啊，
反正，在婆婆看来我是侄子的孩子。从我的角
度看的话她是我祖姑母。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160680b45">
「不就是……侄孙女吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160690b55">
「也叫重侄女……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160700a02">
「那就是吧。
　我是一媛婆婆的甥孙，一条。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160710b45">
「……」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160720b55">
「……是吗。
　这样啊…………」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160730a02">
「你们呢？
　婆婆她一次都没有跟我说过她出生地的事，
所以我完全不了解这个村子。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160740a02">
「虽然有想过去问这里的和尚，但总觉得
和尚……
　虽然身为借宿者，但不知为何我一看见光头
就会后背发痒呢。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160750b55">
「……哈哈。
　说起来从前……一媛也说过相似的话。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160760a02">
「是吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160770b55">
「一看见那光头，就心痒痒地想上前拍拍摸摸
什么的。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160780a02">
「……我们家族遗传到了奇怪的血液呢。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160790b55">
「呵呵……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160800a02">
「爷爷你们……这么叫可以吧？　还有那位
虾夷人。如果是婆婆的熟人的话也不年轻了。
　你们是婆婆的朋友吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160810b55">
「啊……嗯。
　是啊。我们从小玩到大的。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160820a02">
「真亏你们能和那种家伙好好相处呢。
　虽然没有听说过，但是婆婆肯定从前
就是令人毫无招架之力的性格吧。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160830b55">
「……是吗。
　我们也没什么资格评价他人呢。
是吧，右京。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160840b45">
「啊、啊啊……是啊。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160850a02">
「哈。那么，你们是怪人三人组吗？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160860b55">
「没错哦。
　我们三个人，一起做了很多事……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160870b55">
「自报家门晚了点啊。抱歉。
　我是弥源太。那家伙是……右京。
不管哪一个现在都只是臭老头而已。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160880a02">
「……唔嗯？
　但是，那位……右京爷爷……」


{	FwC("cg/fw/fw一条_警戒.png");}
//◆警戒
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160890a02">
「那副打扮……
　是六波罗的军装吧？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160900b45">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160910b55">
「不是，那是……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160920b55">
（右京，适当蒙混一下啊。
　我会附和你的说辞的）

{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160930b45">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がっ。顎をつかむ
	OnSE("se人体_動作_抱く01",1000);
	DeleteStR(300,true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0138]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160940a02">
「呃!?　什……」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160950b55">
「右京！」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160960b45">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　男人的手捉住了少女的下颚。
　就那样，粗暴地将其拉到面前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160970a02">
「你……干什么！　你这混蛋!!」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160980b45">
「……很像。
　不，不是那样……啊。
　确实一模一样……」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160990b45">
「啊，你回到我面前了吗，一媛！」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161000a02">
「啊啊!?」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161010b55">
「右京！　快放手！」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161020b45">
「小姑娘……不，一条。
　你是叫一条吧。」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161030b45">
「一条。
　和我一起来吧。」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161040a02">
「……你这混蛋痴呆了吗？
　脑子都坏到生出蛆了就赶快滚去
养老院!!」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161050b45">
「呵呵。
　连内在也完全一样啊。无法简单地让你
听话。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161060a02">
「谁会听你这种野狗的……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161070b45">
「但是即使是我，也和以前一文不名的我不同。
　一条，来我身边的话，我会让你享受舒适的
生活哦。那在如今时势下可是只有一小部分人
才享受得到的生活。」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161080a02">
「才不要！　放开我！」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161090b45">
「我并不是嘴上说说。
　我是六波罗大尉长坂右京。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161100b45">
「正如你所想，是幕府军队的将校。
　如果你成为我的人，就没有必要像那边的
蝼蚁们那般要看上面的脸色偷偷摸摸地过活
了……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161110a02">
「……」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161120b45">
「你想要什么我都会给你。想跟男人玩的话
也随你。
　只是，你要成为我的人——」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161130a02">
「去死吧！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


//◆掌打＋蹴り。重い音。
//◆避ける長坂

	CreateTextureSP("絵ＥＦ100", 5000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSP("絵ＥＦ90", 4990, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");

	Zoom("絵ＥＦ90", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＦ90", true, 3, 700, 100, false);

	OnSE("se戦闘_攻撃_振る02",1000);
	SetBlur("絵ＥＦ100", true, 2, 700, 150, false);
	Zoom("絵ＥＦ100", 300, 3000, 3000, Dxl2, false);
	Wait(100);
	Move("絵ＥＦ100", 400, -1024, 576, Axl2, false);
	Wait(450);
	OnSE("se戦闘_攻撃_野太刀振る02",1000);
	FadeDelete("絵ＥＦ100", 200, false);
	Zoom("絵ＥＦ90", 200, 1000, 1000, Dxl3, true);

	OnSE("se人体_動作_跳躍01",1000);
	CreateColorSP("絵フラ", 5000, "#FFFFFF");
	Delete("絵ＥＦ*");

	DrawDelete("絵フラ", 200, 1000, "slide_05_00_1", true);

	StR(1000, @-30, @0,"cg/st/st長坂_通常_制服.png");
	Move("@StR*", 300, @30, @0, Dxl2, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161140b45">
「……呜！
　假装瞄准对手下巴出掌，真实目的却是以
膝盖顶向股间吗！」


{	FwC("cg/fw/fw長坂_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161150b45">
「我绝不原谅你。
　刚才那一击不止是睾丸差点碎掉，甚至会
导致耻骨粉碎而死呢！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161160a02">
「我本来就想杀了你哦。
　你没听到吗，你这老年痴呆！」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161170b45">
「那真是可惜啊。
　刚才那招……是从一媛那里学来的吗？
我记得年轻的时候就尝过一次了。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161180a02">
「……切。
　你怎么就失败了呢，婆婆。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161190b45">
「一条。
　你不打算成为我的人吗？」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161200a02">
「当然不啊白痴！
　我现在在这个世界上最讨厌的就是六波罗
了啊！　你刚才还说什么？　成为你的<RUBY text="·">人</RUBY>？
光听见就让我想死了啊!!」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161210b45">
「是吗。
　……那就没有办法了。」


{	FwC("cg/fw/fw弥源太_驚き.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161220b55">
「……！」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161230b45">
「<RUBY text="···············">无论是什么样子我都一定要得到你</RUBY>。
　就在方才，我如此发了誓！」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161240a02">
「啊？」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161250b45">
「就是这样！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


//◆長坂、瞬息抜刀
//◆斬撃

	Wait(1);
	PrintGO("上背景", 5000);
	CreateColorSP("絵暗", 100, "#000000");
	Wait(1);
	Delete("上背景");

	OnSE("se戦闘_攻撃_振る01",1000);
	SL_leftup(@200, @200,2000);
	SL_leftupfade2(10);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161260a02">
「——!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どん。横から突き飛ばす弥源太
//◆ざしゅ。

	PrintGO("上背景", 5000);

	CreateTextureSP("絵ＥＦ100", 2000, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");

	OnBG(100,"bg024_墓地_01.jpg");
	FadeBG(0,true);

	StR(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStA(0,true);

	OnSE("se人体_血_たれる01",1000);
	DrawDelete("上背景", 1000, 1000, "slide_02_00_1", true);

	WaitPlay("OnSE*", null);
	Wait(500);

	FadeDelete("絵ＥＦ*", 1000, true);
	Wait(300);

	OnSE("se人体_動作_後ずさり01",1000);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161270b55">
「呜……！」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161280a02">
「爷爷！」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161290b55">
「右京……你发疯了吗！」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161300b45">
「……呵，呵呵。
　我知道的，弥源太。」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161310b45">
「这里是一媛的墓前……
　我没打算用血玷污她。刚才是个玩笑。」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161320b55">
「……」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161330b45">
「但是，我说过的话可不是玩笑哦。
　一条，我要得到你。」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161340b45">
「为此我不惜杀掉你。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161350a02">
「混蛋……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161360b45">
「当年我无法做出如此决断。
　对自己的斤两还抱有幻想。」


//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161370b45">
「现在不同了。
　只有愚行才适合笨蛋。比起活得高明却空留
懊悔，我更愿意愚蠢到底从而微笑到最后。」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161380b55">
「右京！」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161390b45">
「在我杀了山神之后，
　我会再来见你的，一条。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　不知何人的声音回响着。
　那是从正殿的方位传来的。是和尚在对这骚动的声响
发出责问吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161400b45">
「……呵呵。
　看来我是无论如何都必须用这双手
把祟神给挖出来了。」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161410b55">
「……」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161420b45">
「弑神……夺取新娘。
　不允许妨碍。无论是谁，都不许妨碍我。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だっ。走り出す音。長坂去る
	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1250,null,true);
	DeleteStR(300,true);
	SetVolume("SE*", 1500, 0, null);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161430a02">
「…………切。
　什么嘛，那个混蛋……」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161440b55">
「…………右京…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg024_墓地_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
　弥源太左肘的伤并不重。
　把和尚准备的烧酒倒在伤口上，缠上
绷带——这样就完成治疗了。

　经过数日的悉心调养就会痊愈的吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(0,true);

	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161450a02">
「这样就好了。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161460b55">
「抱歉啊。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161470a02">
「你没有理由道歉。
　反倒是我被你救了啊。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161480b55">
「那家伙会做出什么样的行动，
只要预测就能料想到。
　但是我若不那么迟钝的话，也就不会让小
姑娘你遭到危险了……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161490a02">
「接受挑衅的人是我。
　和你没有关系……你强插进来导致受伤，
这就是多管闲事了。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161500a02">
「不过你这样还挺帅呢。
比起某个懦夫来说的话。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161510b55">
「懦夫？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161520a02">
「好了好了，别在意了。只是说我认识一个
在危急关头完全派不上用场的没种混蛋男人
而已。我都不愿想起他来。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161530b55">
「…………
　那家伙……我是说右京他……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161540a02">
「…………」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161550b55">
「变成这样我也不好继续保密……
　该从哪里开始说呢……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161560a02">
「仔细观察就知道了。
　那个混蛋，很迷恋婆婆啊。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161570b55">
「……果然，你知道啊。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161580a02">
「虽然总觉得有点小题大做，不过你想
说的就是这件事吧。
　但是，真不明白啊……那种婆婆到底
哪里好了。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161590b55">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161600a02">
「你也是吗？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161610b55">
「……唔嗯。
　不过……那个，呃……」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161620a02">
「都是一把年纪的老爷爷了害羞什么啊。
　……切。一媛婆婆真的是那么好的女人
吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161630b55">
「……对于我们来说是啊。
　那个时候眼中只容得下她。觉得只要有一媛，
别的什么都不重要了……」


{	FwC("cg/fw/fw一条_笑顔b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161640a02">
「……嘿～连我都听得害羞了。
　那，然后怎么样了？　是三角关系的修
罗场吧。婆婆、你，还有那个混蛋。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161650b55">
「我们两个都被她疏远了。
　然后一媛离开了村子……再之后的事
小姑娘应该比较清楚吧。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161660a02">
「你们呢？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161670b55">
「右京也离开了村子。
　而我隐居在山里……几年过后，娶了
藤仓的虾夷村的姑娘当老婆。之后很快生
了儿子，生了孙女。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161680b55">
「……不知不觉已经过了三十年。
　虽然长子夫妇像虾夷人一样早早
死去，但两个孙女却很精神哦。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161690a02">
「唔……
　你已经放下婆婆了吗？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161700b55">
「放下……不好说呢。
　我没有一刻忘记一媛。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161710a02">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161720b55">
「虽然没有忘记……
　但不知从何时开始，关于一媛就不再是苦涩
的回忆了。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161730a02">
「被甩得很惨吧？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw弥源太_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161740b55">
「呵呵！　确实。简直就像面对面被她骂“你
真是笨蛋中的笨蛋，给我重新来”一样呢……
  要说惨的话确实没有比这更惨烈的失恋了。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161750a02">
「嘿。果然婆婆从以前就是这样的啊。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161760b55">
「但是……如今我对她只有感激。
　托一媛的福，她把即将做出傻事的我拉了回
来。她教会了我<RUBY text="·······">注意身边的幸福</RUBY>。」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161770b55">
「眼中只看到一件事的人无法让任何人幸福。
　我能拥有一个普通的家庭，是托一媛的福
啊……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161780a02">
「我倒觉得这不是什么大不了的事。
　那个婆婆就是那样。她只是单纯因为生
气而教训你，其实什么也没考虑过吧？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161790b55">
「哈哈哈……
　或许是这样呢……」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161800a02">
「……切。
　难得和婆婆的旧相识相遇了。还以为能一起
说说她的坏话，真是让人生气。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161810b55">
「小姑娘，你讨厌一媛吗？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161820a02">
「肯定讨厌的吧！
　那个婆婆啊，明明自己整天游手好闲，却总
是说我这个说我那个，烦死了。而且……」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161830a02">
「我做什么她都会逐一抱怨，抱怨的内容
还每日都不同！　比如今天要我用湿布擦拭
走廊，我擦完第二天她却抱怨太滑，骂我
白痴，说要干擦才对。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161840b55">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161850a02">
「她叫我用木刀砍院子里的树木以锻炼攻击力，
我照做，当天傍晚她却嫌我笨说我尽做些让邻
居困扰的事，给了我一个肘击！」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161860b55">
「……呵呵……」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161870a02">
「我不是在说笑话啊——!!
　我已经不能忍受下去了！」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161880b55">
「不，抱歉抱歉。
　我只是觉得这真的挺有一媛风格的。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161890a02">
「这哪是用个性问题就能解释的啊。
　如果她是故意折磨我的话我也能
反击，可是婆婆她只是单纯一时兴
起而那样说话的。」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161900a02">
「所以即使我回嘴，她也不会记住的！　到底该
怎么办嘛！　结果也只能互殴了吧，虽然我一次
也没有赢过。那头熊，到底是怎么搞的嘛！」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161910a02">
「然后，因为婆婆是突然去世的，结果我最终
也没能找她报仇。真是的，可恶……我明明打
算好好欺负卧床不起的婆婆啊……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161920b55">
「……这样啊，这样啊。
　看来一媛过了一个快乐的
晚年啊……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161930a02">
「<RUBY text="·····">她是很快乐</RUBY>。
　但对我来说太烦心了。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161940b55">
「呵呵。
　没想到……小姑娘好像很听一媛的话啊。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161950a02">
「才没有……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161960b55">
「是吗？
　不过听起来就是呢……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161970a02">
「…………
　我为什么要和婆婆一起生活，
你知道吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161980b55">
「……嗯。
　绫弥的本家……我听说小姑娘你家里，好像
遭受了灾难啊。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161990a02">
「简而言之，就是由于我父亲，绫弥家倒
了。
　……父亲的葬礼很凄凉。没有一个亲戚
为他哭泣。大家都在抱怨。」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162000a02">
「无论哪一个家伙，都好像是为了朝父亲的
遗体吐口水才来参加葬礼的一样。
　但是，我却什么都不能说。因为我和父亲
约定好了。不能解释。」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162010b55">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162020a02">
「就在那个时候……婆婆来了。
　婆婆将那啰啰嗦嗦胡扯的一群人全都赶出
门外，然后对我说。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162030a02">
「她说，你的父亲没有错。
　虽然是个死心眼的笨蛋，但他并没有
过错。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162040b55">
「……是吗。
　一媛是这么说的啊。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162050a02">
「嗯。
　然后葬礼结束之后……不知从什么时候起，
我就和婆婆一起生活了。
　只是这样。只是这样而已。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162060a02">
「但是婆婆她却糊里糊涂地，说的话变来变去
没个准的……
　不过，我觉得……大概她<RUBY text="·······">说的话都是对的</RUBY>……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162070b55">
「嗯……
　嗯…………」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162080a02">
「……切。本应该说婆婆坏话的，怎么
会说到这里来了。
　爷爷，你真是个奇怪的听众。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162090b55">
「哈哈哈。
　因为是曾恋慕过的女子的事嘛……
多少会有些偏袒，你就原谅我吧。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162100a02">
「显摆什么呀。
　…………我说。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162110b55">
「嗯？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162120a02">
「我跟婆婆年轻的时候很像吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162130b55">
「……是啊。
　相像到或许站在一起都难以分辨呢。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162140a02">
「所以，那个六波罗的混蛋说想要我，
他说的是梦话吧。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162150b55">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162160a02">
「和你不同，那条野狗还很拘泥于被婆婆
甩掉的事吧？
　即使过了三十年。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162170b55">
「……说不定就是这样。
　那家伙早些时候，作为地方官回到了
这个村子。我都没有立刻发现他竟然
是为了昔日的决战而回来的。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162180a02">
「这家伙真是执迷不悟。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162190b55">
「是<RUBY text="一心一意">纯粹</RUBY>啊。
　从以前就……好也罢，坏也罢……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162200a02">
「那家伙想要做什么呢？　事到如今……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162210b55">
「……做无聊的事。
　但是，那家伙的企图受挫了。他因ＧＨＱ来
的奇怪巡查官而落马了。如今他四处逃窜，很
快就会被逮捕的。」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162220b55">
「所以，小姑娘。
　在他被抓捕归案前还是尽量不要在外行走
比较好。不，还是现在立刻回到镰仓比较安
全啊……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162230a02">
「啧。
　为了那种混球，为什么我非得改变我的
预定计划不可啊。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162240b55">
「……我就知道你会这么说呢。
　小姑娘的预定计划是？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162250a02">
「我要来这里过三天两夜，婆婆的忌日
是我来的第二天。每年都是这样的。
　昨天来，今天是祭日，明天回去。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162260b55">
「是吗……明天你会回去啊。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162270a02">
「是啊。
　不过那条野狗，依他那德行，就算我回到镰
仓他也不会放弃的吧。说不定他会追过来。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162280b55">
「……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162290a02">
「嘿，那样的话我才不会任他得手。我就陪他
玩玩当做打发时间吧。
　不过等着他来也太麻烦了。索性，我去找他
吧——」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162300b55">
「……不必，小姑娘。
　和那家伙决斗的是我。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162310a02">
「爷爷？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162320b55">
「我和那家伙……长坂右京有恩怨。
　我必须亲手跟他做个了断啊。即使是小姑娘，
我也不能让步。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162330a02">
「……老人家还是不要逞强的好。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162340b55">
「什么啊，那家伙也是老头儿啊。
　完全不用担心哦。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162350a02">
「……切。
　你这种表情让我什么都说不出来。
　和婆婆一样……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162360b55">
「…………
　小姑娘。我们的事，请不要在意。」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162370b55">
「我们只有过去了。我们是紧抱着过去不放，
如今还将已无可奈何的事情拿来说的闲人们啊。
我是，右京也是。小姑娘你还年轻。别管
老一辈的事了，走向未来吧。」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162380b55">
「但是……
　和小姑娘相遇太好了。真是太好了。
　这也是一媛的指引吧。这样看来，我感谢她
的理由又多了一个啊。」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162390b55">
「呵呵呵。
　这样即使在那个世界相遇，我也会更加
在她面前抬不起头……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162400a02">
「弥源太爷爷……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162410b55">
「……再继续占用年轻人的时间也不好。我差
不多要走了。
　或许没有再会的机会了……要保重啊，小姑娘。
和记着一媛一样，我也不会忘记小姑娘的。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162420a02">
「……啊……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆弥源太、去る
	CreateSE("SE01","se人体_足音_歩く01_L");
	MusicStart("SE01",0,1000,0,700,null,true);

	DeleteStL(300,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162430a02">
「…………」

{	SetVolume("SE*", 2000, 0, null);
	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162440a02">
「……切。自说自话……
　就是因为这样我才不擅长应付
老头老太太啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma02_017.nss"