//<continuation number="160">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_009.nss_MAIN
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
	#bg001_空c_03=true;
	#bg033_署長宅景明私室_03b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_010.nss";

}

scene mb03_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_008.nss"

//◆夜空
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一条说，是自己夺取了父亲的生命。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆部屋。暗
	SoundPlay("@mbgm33",0,1000,true);
	OnBG(100,"bg033_署長宅景明私室_03b.jpg");
	FadeBG(1000,true);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090010a02">
「父亲是……
　我最尊敬的人。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090020a02">
「同时也是我第一个……亲手送上黄泉路的人。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0090030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　在枕边，一条把这件事告诉了我。
　我不知该如何回应她。

　绫弥父女到底发生了什么事。
　既觉得好像可以想像到某种程度——又觉得仿佛很遥远。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0090040a00">
「那是……为何……」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090050a02">
「……究竟是为何呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　话音听上去并不像是在岔开话题。
　一条是真的不知道答案。也没有去寻求答案。她的表
情说明了一切。

　恐怕，一条还不能直视那段过去吧。
　如果回顾往事，疑问的答案就在那里。她知道
这一点。<RUBY text="··">所以</RUBY>，她无法回头。

　如果回头，就会在无法愈合的伤口上又撒把盐。
　
　她之所以会让我窥视到部分伤痕，……是因为方才的<RUBY text="··">那事</RUBY>
略微的助推吧，也许是这样。

　在好奇心的驱使下追问是无益的。
　而且，仅是刚才的话也让我明白了一些东西。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090060a02">
「听说……凑斗先生也有同样的经历。
　因为诅咒……而将令堂……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0090070a00">
「是署长说的吗……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　是的。
　这位少女，和我一样。

　杀了至亲至爱的亲人，
　因此——无法回头。

　因为杀害至亲之罪，自己的人生受到诅咒。

　……现在我能明白。
　这位少女精神上的畸形。对于“正义”的执着，究竟
来自何方。

　既然这条路是血刃父亲之后开辟出来的，肯定既早已
无法否定，也无法回头。
　因为那会将将无法承受的沉重而伟大的牺牲，化做毫
无价值的存在。

　和我一样。

　命运这个词带着逃避的色彩，所以不喜欢。
　但是我与一条的相遇，却恰恰是命运弄人。

　弑父之女与杀母之子的邂逅。

　……如果这就是真实，这就是命运。
　那它最后又会流转轮回至何处呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090080a02">
「凑斗先生……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0090090a00">
「嗯。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090100a02">
「我……要战斗。
　继续战斗。今后也要这样。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090110a02">
「不会再为……自己所做之事感到胆怯了。
　不会再哭。也不会害怕。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090120a02">
「……只要凑斗先生能够陪在我身边。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0090130a00">
「…………」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090140a02">
「将邪恶……
　把那些草菅人命的混蛋……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090150a02">
「憎恨他们。
　和他们战斗。
　……最后，杀了他们。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090160a02">
「这样……可以吧……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　一条的声音越来越轻，逐渐沙哑。
　最后消失在熟睡的呼吸之中。

　——<RUBY text="··">这样</RUBY>可以吗。

　反复咀嚼着已消失的问题。
　在脑海中反复咀嚼，细细玩味。

　这样可以吗。
　
　……可以吗？

　憎恨邪恶。
　秉承正义惩治邪恶。

　那是——不可能有错的。
　应该是——正确的。

　正义。
　不是别人，而是这位少女所说，所以可以信任。

　她对于善恶的判断是完全无私的。
　会作出极其严正的裁决。莫名地充满威慑。

　即使是杀害游佐童心这事。
　如果说有什么不适之处，那只是政略上的问题，若问是
非，显然一条是正确的。

　我是这样认为的。
　
　但是。

　这样。
　<RUBY text="·····">真的可以吗</RUBY>？

　……想不出答案。
　不管怎么思考，我都想不出答案。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_010.nss"