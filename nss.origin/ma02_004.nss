//<continuation number="760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_004.nss_MAIN
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
	#bg021_村長応接間_01=true;
	#bg004_鄙びた村a_01=true;



	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_005.nss";

}

scene ma02_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_003a.nss"
//前ファイル　"ma02_003b.nss"

//◆合流

	PrintBG("背景０", 30000);

	OnBG(100,"bg021_村長応接間_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);
	SoundPlay("@mbgm23",0,1000,true);


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040010a00">
「我是镰仓警察署的凑斗景明。
　之前的所为是出于自身的考虑，只要不怪罪
在下是多管闲事就已经万幸了。感谢什么的
实在不敢当。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040020a03">
「哎呀呀。请别那么谦虚。
　您救我一命却婉拒了我们的感谢，那么
我岂不是成了忘恩负义、不知廉耻的人了。
是吧，婆婆？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040030a04">
「是的。完全赞同啊。
　凑斗大人，虽说您对我们有恩，
但烦请您千万不要把大小姐贬低为
忘恩无耻之辈。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040040a00">
「在下绝非此意。
　不过真是失礼了。万分抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……原来如此。
　确实，从她的立场来看是这样吧。

　她当时真的需要帮助吗？对于这一点，脑中闪过一抹
疑惑。如今再回想那个时候她的举止，就算以龙骑兵为
对手，她一定也有自信找到办法逃脱。

　但即使如此，若是明白礼数之人，将他人的援助
论作无用这一行为会让他们感到耻辱。滴水之恩当
涌泉相报，我能理解那种心情。
　边在心中如此想着，边低下了头。

　女性与老妇人四目相交，轻声窃笑。
　这二人也许觉得我的态度很滑稽吧。

　——这位女子，从暴兵手中救起了陷入困境的村人。
　依我看来，她<RUBY text="··">完全</RUBY><RUBY text="····">没有理由</RUBY>向我道谢，
不过这是她个人的事，我不得而知。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040050a03">
「哎呀糟糕。我居然还没介绍自己。
　在下是ＧＨＱ民政局的大鸟香奈枝。竟然
让恩人先报了名讳，在下真的是，为自己的
无礼向您道歉啊。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040060a04">
「啊，敝人纱代真是太糊涂了。
因为已经向村长阁下问过好了
……请您务必原谅，凑斗大人。
　我是香奈枝的随从，小姓永仓。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040070a00">
「有礼了。
　大鸟中尉阁下。永仓侍从阁下。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　对着二人分别还礼。
　女子——大鸟中尉的级别通过襟章确认了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040080a00">
（不过……<RUBY text="··">大鸟</RUBY>？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　是个非同小可的姓氏。
　不过，如果我打草惊蛇的话就不能说是聪明之举了。
我认为，应该暂时置若罔闻。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040090a03">
「凑斗大人是警方的人呢。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040100a00">
「是。
　事出有因，我并没有正式身份。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040110a03">
「哎呀，果然如此？
　恕我寡闻，我还没听说过警察局里
有什么拥有武者的部门……关于这方面，
能容我失礼详细询问一下吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040120a00">
「您有这个疑问也实属理所当然。
　不过，还请见谅，不便多言。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040130a03">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040140a00">
「大和的武者一般都在六波罗麾下。
　这个问题就到此为止了，请务必谅解。
因为多有不便。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　或许最初不坦言自己的警察身份就没那么多麻烦。
可是，之后对村子进行搜查之时反正
也要用警察的名义。
　身份不明的外来者，无人会协助。

　这样一来，肯定也会传入这位中尉的耳中。
　为了避免不必要的怀疑，此刻必须报上来历。
即便这以外的事不便多言，这一点却只能坦白
告知。

　若扫了对方的兴，也无可奈何。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040150a04">
「大小姐……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040160a03">
「……我明白了。提了冒失的问题还请您原谅。
　方才在这个村子里发生了武者之间的战斗。
不过此事和您无关。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040170a03">
「这样合适吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040180a00">
「是的。
　劳您费心，感激不尽。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　至少在表面上，似乎并没有损害大鸟中尉的心情。
　虽然永仓侍从的眼神里含着一丝严峻之色。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040190a03">
「虽然您是从镰仓警署过来的，
但应该不是驻守在这个村的警察吧？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040200a00">
「是的。在下到访此地是为了搜查。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040210a03">
「关于这个，也是不要提问比较好吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040220a00">
「不，这方面没有不便。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　当然，如果到处去宣扬也很困扰。
　但对于这些人，应该不用担心吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040230a00">
「我的任务是关于银星号事件的搜查。」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0040240e160">
「……什么？　你说什么!?」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040250a03">
「银星……银星号。
　纱代。那确实是……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040260a04">
「没错。听闻是近年来以关东为中心
异常活跃的无差别杀人犯吧。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040270a03">
「是啊。
　哎呀，不过……那可真够呛呢……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……？

　大鸟主从的反应有些迟钝。反而是已退出话题的
村长一脸愕然地凝视着我。
　若想到街头巷尾的议论，村长的反应更加自然。

　或许只是单纯对任何事都无动于衷吧……
　抑或是，这二人是最近才来大和的吗。
既然是ＧＨＱ的人，也不奇怪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040280a04">
「原来如此，所以用剑胄……噢噢，失礼了。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040290a03">
「那么，难道那个地方官……好像是叫，长坂
大尉？　就是银星号的本体吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040300a00">
「并非如此。
　不过，他有和银星号接触，并且缔结某种
合作关系的嫌疑。
为此我才试着镇压他。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040310a00">
「虽然失误让他给逃了。
　不过我打算随后调查他的行踪。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040320a03">
「啊。是这么回事……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　大鸟香奈枝低下头，闭上了嘴。
　老随从也同样，一副在琢磨我的说明的样子。

　村长似乎也有很多问题想问，不过他也许明白了，
暂且还不是银星号马上就要降临类似这种次元级别的
情况。所以控制自己咽下了疑问。
　万幸。即使被问到，再作任何说明也很困难。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040330a03">
「我大概理解了，凑斗大人。
　请让我也在允许的范围内帮助您吧。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040340a00">
「感谢您的厚意。真是太感激了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　虽说如此。
　可能的话，希望无需她的帮助就能了结此事。

　……似乎是读懂了我的内心所想，
淡红色的唇间露出微笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040350a03">
「请您一定不要客气。
　因为，这也和我的职务相关。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040360a00">
「……抱歉，中尉阁下。
　能打听一下您的职务吗。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040370a03">
「之前，我和那位地方官员的谈话，
您没有耳闻吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040380a00">
「虽然我离你们比较近，但详细的不清楚……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040390a03">
「我是民政局派遣来这个村子的巡查官。
　职务是把握村民生活的实际情况，如果有
问题就努力改善。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040400a00">
「巡查官……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　她说的这种ＧＨＱ的制度，我倒是知道。
　原来如此，大鸟中尉对六波罗士兵所采取的处置，
与其职责相符。

　不过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040410a00">
「能否恕我直言。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040420a03">
「请讲。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040430a00">
「在下没有想到这制度确实能有效发挥其机能。
原认为不过是单纯为了保住体面而设置的罢了。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040440a03">
「哎呀，还真是直接呢。
　不过，难道不是彼此彼此么？　警察先生。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040450a00">
「诚然。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　有名无实是警察局的代名词。或者反过来也对。
　以调查银星号事件为名到处活动的自己，肯定看起来
相当不正常。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040460a03">
「什么都不管，什么都不看，什么都不听。
虽然这可能是巡查官的惯例……
　不过，我可没收到<RUBY text="······">什么都不许做</RUBY>这样的指示。
做实事却被责怪，没有这种道理。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040470a03">
「是吧，纱代。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040480a04">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……原来如此。

　我不是不知道，大和内政在实际上委任给六波罗是
ＧＨＱ的方针。
　可她看起来似乎是一个反抗心旺盛的人物……
也或者是别的什么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040490a03">
「尽管如此，我的行动若被司令部知晓，
会被立刻召回吧。
　这之后，只要那名地方官大人回来，
村子就还是老样子。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040500a00">
「说起来，地方官的部下呢？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040510a04">
「在武装解除的基础上进行了监禁。
　如果赶尽杀绝，地方官阁下也会变得
难办吧。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040520a03">
「若非现行犯，处刑会比较困难，婆婆。
　即是说，就算送到监狱也是住个两天一夜
就回去了。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040530a04">
「处理成<RUBY text="··">事故</RUBY>如何？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040540a03">
「监禁的房屋不幸遭遇火灾？
　考虑到责任问题可能会归咎于村子，
还是算了。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040550a04">
「如果从空中降落陨石的话，就没有
任何办法了。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040560a03">
「是呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　谈话似乎险恶起来。
　从她们面不改色淡定说话的氛围来看，应该
只是单纯的玩笑。不。真是玩笑吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040570a03">
「算了，这个暂且不提。
　在事情变得麻烦之前如果能击溃首领级别的人，
万事就可完满解决了，凑斗大人。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040580a03">
「不管是我还是您都想逮捕那个官员。
　目的一致，不觉得合作是很自然的吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040590a00">
「有一个问题。
　别的官员赴任，我想又会变成同样的
情况。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040600a03">
「长坂大尉为了将采矿作业变成默许的事，
向民政局撒了贿赂的钱。
　若是根据幕府下令的作业，他个人就没有
必要做那种事。总之，这是他个人行为。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040610a04">
「是想以这项工程的收益为武器借以步步高升
吧。所以，在作业步入正轨之前，他反而不希
望幕府介入。
　因为，只会被扣除好处而已。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040620a00">
「我理解了。
　村子里再没有地方官员，采矿作业能中止
的话是最佳状态。如此考虑应该没有问题吧？」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0040630e160">
「是，是的！　那真是求之不得啊。
那就拜托您，给您添麻烦了啊。
　不过……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040640a00">
「什么。」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0040650e160">
「关于地方官的部下。
　如今，还没有全部抓捕……有可能，
这些残党会和那个官员联合起来。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0040660a04">
「哎呀，这真是。
　有漏网之鱼吗？」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0040670e160">
「我想，正规编制的士兵应该全部都抓到了。
　不过之前也提到了，那些可疑的家伙
……官员的保镖。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040680a03">
「哎呀。
　不好，我大意给忘记了。」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0040690e160">
「他们几个似乎今天一早就去什么地方了。
该说是恶人运气好吗……结果就没有碰上
巡查官大人。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040700a00">
「我明白了。
　会多加留心的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　敌人并非单枪匹马。
　事态或许有些麻烦了。

　不过说起这种事，都司空见惯了。
　即使需要留意，也不是值得烦恼的大事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040710a00">
「那么，大鸟巡查官阁下。
　接下来我想再次展开任务，希望能给予我
行动的自由。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0040720a03">
「那是当然。
　我近期在此地还会多有打扰的。
有支援需求的时候，还请联系我们。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040730a00">
「诚惶诚恐。
　那我先行告退。村长阁下，给您添麻烦了。」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0040740e160">
「没有没有！
　招待不周，还请见谅……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドア開ける音
//◆村。雪車町
//◆景明
	Delete("SE*");
	Delete("OnSE*");
	SetVolume("@mbgm*", 1600, 0, null);

	CreateSE("SE01","se日常_学校_教室ドア開ける01");
	MusicStart("SE01",0,1000,0,750,null,false);

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");
	OnBG(100,"bg004_鄙びた村a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	WaitPlay("SE*", null);
	WaitPlay("OnSE*", null);

	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);


	StR(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStR(300,true);

	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0040750a00">
「…………」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/0040760a12">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆景明消去
//◆雪車町消去
//◆シーン切り替え

	DeleteStL(300,true);
	DeleteStR(300,true);

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma02_005.nss"



