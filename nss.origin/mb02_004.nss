//<continuation number="910">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_004.nss_MAIN
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
	#bg045_普陀楽城公方の間_01=true;
	#bg064_普陀楽城内道_01=true;
	#bg002_空a_01=true;
	#bg002_空a_02=true;
	#bg064_普陀楽城内道_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_岡部桜子=true;

	$PreGameName = $GameName;

	$GameName = "mb02_005.nss";

}

scene mb02_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_003.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	StL(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0040010a09">
「人云：要知味、莫用眼……」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb02/0040020b21">
「…………」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0040030a09">
「又草率行动了呢。
　真是的……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0040040a09">
「义清。」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb02/0040050b21">
「在。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0040060a09">
「把这个交给柳生常暗。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆城内裏手
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg064_普陀楽城内道_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040070a00">
「看来是个不好对付的人物。」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040080a02">
「不过是个臭和尚罢了。
　把人当白痴耍……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一条似乎还没消气。
　不知是不是方才的提醒起了一定作用，她并未高声
喊叫，但浑身都散发出不快之感。

　这里是从主堡通往官僚宿舍所在外城的道路之一，
不知是否因为道路崎岖，没有其他通行者。
　正是抱有这种目的才选了这条路，看来判断没错。

　即便如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040090a00">
「一条。
　情绪再收敛一些。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040100a02">
「……是。
　我知道必须这么做。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040110a00">
「事不遂愿吗？」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040120a02">
「我无论如何都……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不知道是不是觉得羞愧，一条低着头。

　潜入敌营，自然地融入其中。
　对一个正直——万分正直的少女来说，的确很难。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040130a00">
（必须速战速决）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　再次确认一开始就计划好的方针。

　花费太多时间，只有自取灭亡一途。
　也不都是一条一个人的责任。我这个人也不适合做卧
底这种细致的任务。

　破绽很快便会暴露出来。所以在那之前得迅速完成任
务，离开这里。
　这是最好的方法。对我和一条这种二人组来说。

　既然放弃了精心做准备工作，粗暴至极的作战方式便
无法避免，但……从一开始亲王就心知肚明吧。
　倒不如说，他期待着<RUBY text="·······">某种程度的粗暴</RUBY>。

　为了能给予骄傲的武力集团六波罗迎面一记狠击——
其中也包含有向同盟者今川雷蝶展示实力的意思——特
意送来两名武者卧底。
　不可能没有吧，这并非专业型工作人员。

　问题是，如何将舞殿宫的期待具体地付诸于计划之
中……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040140a02">
「凑——景秋先生。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040150a00">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　突然有人喊我的名字，将我从思绪中拉出。

　像是因自己口中唤出的称呼而心慌意乱一般，一条
双颊绯红，但这举动本身并不是她喊我的目的。
　她指向道路前方。

　有个女人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆桜子姫
	StC(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");
	FadeStC(500,true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　年轻而又美丽。
　但这并不值得惊讶。想必京城里不乏与之条件
相同的女性。

　一个女人特意选这种险峻的道路走，
要说古怪也古怪……
　不过也没什么可奇怪的。一条不就走得很轻松嘛。

　然而，事实却是，我的注意力被那个女人所吸引。

　并非她装束奇异。
　非常朴素的打扮……却又和岩田女史那种官吏穿的
功能性服装不同。

　可又不是杂役的装束。
　
　所以，就是介怀这一点吧。

　服装可以表现一个人的身份和地位。
　但从那女人的装扮上却看不出这些。

　容貌美丽且气质高雅，从这一点来看像是大家闺秀。
但服装却明显与之相悖。
　看起来既不像服务内部的女官和城内神社巫女，也
不像官吏、武官、负责扫除和做饭的杂役。

　城内构成的是一个严格规定每个人等级和职务的小
社会。而她却不处于任何一个角落。
　她浮于其上。她的身姿——以及她那百无聊赖的态
度。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040160a00">
「是不是……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　从开始思考到付诸行动仅用了几秒钟。
　但仍有疑惑。

　作为六波罗的官吏，不应对可疑的女性置之不问。但
——实际上她或许毫无可疑之处，是城内的居民都知道
的人，只是身份有些特殊。

　若果真如此，无谋的应对可能会带来致命的后果。
不一定会因为是新人而网开一面。
　
　但最后还是我先开了口。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw桜子_通常a.png");

	#voice_on_岡部桜子=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040170b28">
「……是。」


{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040180a00">
「遇到了什么麻烦？」


{	FwL("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040190b28">
「也不能算是麻烦……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　女人像是羞涩似的垂下眼帘。
　我不由得顺着她的目光看去。视线落在女人的脚上。

　不管怎么看都不适合走山路的薄底鞋子，被泥土沾
染成茶色。
　……看来她刚才说的不是真心话。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040200a00">
「我帮您叫车吧。
　能在这里等一会吗？」


{	FwL("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040210b28">
「不，真的……不用了。
　你的心意我领了。」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040220a00">
「可是，您的脚……」


{	FwL("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040230b28">
「马上就到了。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　是在说她的目的地吧。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040240b28">
「……应该……快到了。」


{	FwL("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040250a02">
「应该？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　一条没有放过女人含糊的措辞。
　女人没有回答，避开视线。

　双颊微红。

　……哦。
　原来如此。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040260a00">
「这座城太大了。」


{	FwL("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040270b28">
「……是啊。
　没错。」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040280a00">
「您要去哪里？」


{	FwL("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040290b28">
「京极宅邸……」


{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040300a00">
「京极……
　可是武士所长官京极善门大人的宅邸？」


{	FwL("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040310b28">
「是。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　京极家相关的人吗。
　可是看样子又不像是武家的家眷……

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040320a00">
「那么……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　真让人头疼。
　虽然能推测宅邸所在的大概位置，可是具体地点
我不清楚。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040330a02">
「京极宅邸……
　啊，是那个吗？」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040340a00">
「你知道？」


{	FwL("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040350a02">
「知道。
　刚才看——的时候，说是有那座宅邸。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　一条没说出口的部分大概是『雷蝶的手下准备的城内
示意图』吧。
　似乎是刚才在宿舍看图的时候，记了不少地方。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040360a00">
「那么，女士。
　我们给您领路。」


{	FwL("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040370b28">
「……实在抱歉。
　麻烦二位了。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆青空
//◆→夕空
//◆カラスの声。あほー。
	PrintBG("上背景", 30000);
	OnBG(100,"bg002_空a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1500, true);

	WaitKey(1000);

	SetVolume("@mbgm*", 2000, 0, null);
	OnBG(2000,"bg002_空a_02.jpg");
	FadeBG(4000,true);

	CreateSE("SE01","se擬音_コミカル_カラス鳴き声");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	StL(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_変装.png");
	FadeStA(0,true);

	OnBG(100,"bg064_普陀楽城内道_02.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040380a00">
「……是我疏忽了，忘记你有迷路的毛病。」


{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040390a02">
「才、才不是！
　是地球的自转……板块构造论背叛了
我的计算……！」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040400b28">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　惯于迷路的女子为别人带路时，就会引起化学反应，导
致出现三个迷路的人。
　也可以说是前往召还别人，结果自己一去不返。

　回过神来天空染上绯红。
　阵阵乌鸦鸣声刺痛耳膜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040410a00">
「着实惭愧，女士。
　反而给您添了麻烦。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040420b28">
「不，哪里。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040430a02">
「不要紧！
　这次……这次一定……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040440a00">
「在地上插根棒子，你打算干什么啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　没治了。

　被领着绕了不少弯路的女人虽然没生气，却露出一副
无法理解的模样思索着。
　大概能猜出她在想什么。

　先给出答案。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040450a00">
「其实……我们今天刚刚赴任。
　还不熟悉城内的构造。」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040460b28">
「是这样啊……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040470a00">
「抱歉自我介绍迟了。
　我是政所公职人员改景秋。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040480a00">
「这位也是，她叫一媛。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040490b28">
「我是冈部樱子。
　没向两位自报姓名，我才失敬呢。」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040500a02">
「……冈部？」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040510b28">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　要说冈部——
　是前段时间在会津猪苗代起兵反叛。被大鸟狮子吼率
领的幕军打败，终被正法的……那个冈部。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040520a00">
「您是弹正尹赖纲公的千金？」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040530b28">
「是。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040540a00">
「这……
　我不知道您的身份，多有冒犯。」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040550b28">
「……无需如此客气。
　现在我不过是贼将的私生女罢了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　冈部的女儿不带一丝感情地说道。
　我一时不知如何开口。一条也无言以对。

　倒在她脚边的棒子——偏偏滚向有悬崖的西边——
我不动声色地将其踢飞，同时将心中的碎片拼凑起来。
　……原来如此。怪不得一副<RUBY text="······">无所属的姿态</RUBY>。

　冈部赖纲这一人物。曾拥有与足利护氏相匹敌的权势，
拥有弹正尹——惯例由皇族担当——的职务。
　而他的女儿。

　虽出身名门，如今其名声却不被人认同。
身份高贵，却丧失富贵。
　可是，也无法回归庶民。

　正如她本人所说，只不过是个贼将的私生女，不可能
有其他身份。
　她的存在，在这座城中如此醒目也是理所当然的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040560b28">
「我也是一周前才被定下暂居京极家的，
刚从篠川公方府搬来没多久。
　所以不是很熟悉路……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040570a00">
「……这样啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　我含含糊糊地附和了一声，再度迈开步伐。
　推测方向是相当敷衍的做法。但如果停下脚步，凝重
的空气实在是令人忍受不了。

　我想她们心中所想跟我也差不多吧。
　她们两人也毫不犹豫地走了起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040580a00">
（一样的啊……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　突然想起来。
　我、一条和冈部小姐。两个入侵者和已逝敌将的女儿。

　不管对谁来说，这庄严的城都并非安居之所……

　是不是因为知道我们也未融入这座城，而抱有了共鸣
之感呢。
　深重孤独感缠身的小姐，此刻，脸色略微柔和了些。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040590b28">
「……怎么了？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040600a02">
「啊……没什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　突如其来的发问，令一条惊慌失措。
　不知道是不是在想什么，她刚才一直注视着樱子小姐
的侧脸，不过似乎完全没想到对方会有反应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040610a02">
「我只是觉得好美。
　怎么说呢，真不愧是千金小姐啊。」


{	FwC("cg/fw/fw桜子_羞恥.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040620b28">
「……多谢夸奖。
　不过，像夫人这样公主般的人
更为美丽。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　小姐略显娇羞地小声应答。
　没错，与那些在离这里不远的地方贪图安逸的贵妇们
相比，她的衣着明显要高雅许多。

　但。
　一条摇了摇头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040630a02">
「不单单是装束。
　而是……就像真正的千金小姐一样。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040640a00">
「……就是真正的小姐吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　太失礼了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_慌て.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040650a02">
「没、没错！
　但是，不是的……那种像是真正的小姐的感觉
很像真的。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040660a00">
「冷静点。
　我并不是不明白你想说什么，可是完全
听不懂你在说什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　总觉得，最近我的身边这种类型的人多了起来。
　不知道怎么回事。

　偶然一瞥，发现樱子小姐像是在强忍似的小声笑
着。
　虽然她优雅地用手捂着嘴，可还是没挡住漏出来的声
音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040670b28">
「抱歉……
　可是，二位真的很有趣。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040680a00">
「如果您不会仅凭方才那一幕而断定我们的人
格的话，我将不吝惜我的感激之情。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040690a02">
「好拐弯抹角的说法。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040700a00">
「这个女人很奇怪，我只是普通人罢了。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040710a02">
「真好懂……而且，好过分……」


{	FwC("cg/fw/fw桜子_笑い.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040720b28">
「呵呵。
　二位和幕府里的其他官吏
大不相同。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040730a00">
「是。
　因为我们来到普陀乐城还不到一日。
还未像诸位前辈般熟悉这里。」


{	FwC("cg/fw/fw桜子_笑い.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040740b28">
「没错。
　太……没有真正官吏的感觉了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　小姐模仿一条，用诙谐的口吻说道。
　虽然对于被取笑的我们来说并不可笑。

　闭着眼睛乱射的箭正中靶心。
　尽管明知小姐并非别有用心，但还是无法克制心中的
动摇。

　不过，在脸上浮现出惊讶的表情之前努力控制住
了自己。
　一条似乎也克制住了，只是发出了一声类似于打嗝的
轻微声响。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040750a00">
「……来这里之前，我们不过是在乡下
负责事务工作罢了。
　没想到居然得以荣升至此地，
说实话，我们自己都百思不得其解。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040760b28">
「原来是这样啊……
　想必十分劳神吧。」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040770b28">
「我也……虽然无法与二位这般辛勤工作的人
相提并论。
　但是来到不熟悉的地方，也是苦恼多多。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040780a00">
「是……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040790b28">
「特别是复杂的道路令人头疼。
　与篠川不同，没有一直在监视着自己的目光
固然很好……但每次出门都会迷路也着实让人
无奈。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　不仅局限于普陀乐，但凡城寨，拥有冗余繁杂的道路
构造也并非罕事。
　这是为了在敌军突破城门之际，尽量拖延入侵进攻时
间、并使其兵力分散。

　当然，精通地理的人也可在最低限度的时间内自如活
动于各要塞之间……
　但像樱子小姐这样在城内居住一周仍不认路的情况也
并不奇怪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040800b28">
「我打算今天也在参见八幡大人之后，去练马场
附近看看马儿。
　不想途中就迷了路。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040810a00">
「……哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　如果我没记错，这两处的直线距离应该还不到五〇米
……
　而且我记得应该有条路近乎于直道……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040820b28">
「不恼人吗？
　为什么每条路都要捉弄人似的岔开呢。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040830a00">
「这只得去询问道路交通局了。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040840b28">
「全都是一条直路的话就不会迷路了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040850a00">
「这样的确是不会迷路了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　若要兼顾交通的便利性，到底需要多少条路啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetComic(@0,@0,11);
	SetFwC("cg/fw/fw一条_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040860a02">
「就是说嘛！」


{	DeleteComic();
	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040870b28">
「你能理解我吗？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040880a02">
「非常理解。
　没错，岔路太可恶了。都是岔路的错。
多建几条直路不就行了。地面上不够用的
话就在地下挖隧道啊。」


{	FwC("cg/fw/fw桜子_笑い.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040890b28">
「没错没错。
　架好多座桥也可以啊。空中的空间再怎么
利用都不会妨碍到别人。」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040900b28">
「你不这样认为吗？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040910a00">
「恕我直言个人见解，我可不想住在那种像
攀登架一样的地方。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　患有重度方向认知障碍的二人意气相投。
　而我落单了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆黒
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_005.nss"