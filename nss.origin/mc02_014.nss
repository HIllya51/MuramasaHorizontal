//<continuation number="800">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_014.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_015.nss";

}

scene mc02_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_013.nss"


//◆景明の部屋
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　关禁闭的生活大致上就是被单调、孤独、封闭的
三重奏所支配。
　不论何时何地，这都是不变的真理。

　虽然我不认为这种情况会一直持续下去……
　对于他们将我囚禁在ＧＨＱ的基地内一事，
除了香奈枝小姐的个人原因之外，若没有ＧＨＱ
牵扯其中便很奇怪。没有军队会无故俘虏人。

　无法让人认为她将我视为宠物、关我入笼、
喂我饵食就是其目的本身。
　她一定会对我有所行动吧。

　但——她却没有这样做。
　这样的日子不断持续着，只要是能替我打破这单调的生
活，任何原因我都欢迎。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(700);

//◆香奈枝
	StL(1000,@-30,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140010a03">
「……要不要一起散个步？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140020a00">
「我当然乐意陪同您。
　大尉阁下。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140030a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se日常_建物_牢獄扉開く02",1000);
	WaitKey(800);

//◆基地内

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnSE("se人体_足音_歩く_地下_L",1000);
	WaitKey(1500);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_01.jpg");
	DeleteStL(0,false);
	SoundPlay("@mbgm16",0,1000,true);
	SetVolume("OnSE*", 100, 0, null);
	DrawDelete("黒幕１", 1000, 1000, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　安格鲁·萨克逊族所进出的国家，都会成为
<RUBY text="··">本国</RUBY>——他们时常都会被如此评价。

　这与华侨打造的中华街有所不同。
　出于商业目的移居他国的华侨，他们所打造的街巷
是他们的据点，同时也是故乡的写照——安歇之地，
但仅此而已。

　既是据点也是故乡的中华街，在发展上有局限性。
　只要开发到能支援自己的生活后，他们便不会继续
扩张规模。

　盎格鲁·撒克逊的都市会不断扩大。
　而且永无止境。

　他们在军事占领的土地之上破坏当地文化文明，
或是在强取豪夺中按照本国文化对其进行都市化。
　对于有贸易关系的国家，他们积极地输出自己的文明，
终将他国都市本国化。

　他们是真正意义上的征服者。
　可以称为盎格鲁·撒克逊族宗主国的大英联邦，
其在政治方面压制世界过半国家，而若论及
文化版图，一定更为广阔。

　当然，对大和来说这并非毫不相关。
　德川政府为保护国内的产业与文化，限制外贸交易。
在其被推翻一百多年来，如今，街上汽车川流不息，
都市之间有铁路相连。

　对这种变化感到恐惧，亮起警戒红灯的人也不少，
就像『卖国论』的作者石马左近将监这类人。不过，
相反的，越来越多的人在接受这变化，并欢迎它，
他们给予了侵略自己国家的盎格鲁·撒克逊人些许助力。

　这种变化背后，有着相应的理由。
　盎格鲁·撒克逊族擅长以合理主义为基础的物品发明，
他们文化的便利性在许多方面是其他文化无法效仿的。
他们所造之物快速、巨大、强壮。

　所以才会被需要、因而普及。
　
　在最露骨最坦白的意义上，他们是
优越于他人的种族。

　优秀的他们拥有优越的科学文明，并坚信将这份
文明带去偏远地方的正义，因为正义所以毫不犹豫。
　盎格鲁·撒克逊帝国霸业的成就，可以说是
一种必然吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	StL(1100,@-30,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140040a00">
「真是宏伟的军事据点。
　论综合机能，这里大概比普陀乐城
还优越吧。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140050a03">
「是啊……」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140060a00">
「若以大和自古以来的军学作基础，无法建造
出如此有效率的构造。
　因为不知为何各处会有细微的冗杂。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140070a00">
「就算凭借六波罗的总兵力，是否能攻陷
这基地尚不可知。
　得先切断与横须贺的……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140080a03">
「没错……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140090a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我试着和香奈枝小姐闲话谈天，
但她的反应却是一反常态地迟钝。
　总是用含糊的答案回应我。

　虽然我认为她是对于我身为俘虏，却毫不客气地
检视批评周遭的态度感到吃惊。但似乎并非如此。
　观察她的神情，我怀疑她有没有认真听我说话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140100a00">
「大尉阁下。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140110a03">
「……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140120a00">
「您该不会是身体状况欠佳……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140130a03">
「……咦？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140140a03">
「啊，对。我也这么认为。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140150a00">
「果然如此。请您保重。
　虽然您邀请了百无聊赖的我一同散步，
但我却担待不起大尉阁下为此
勉强自己啊。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140160a03">
「咦？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140170a00">
「我们快回去吧。
　以防万一，请军医——」


{	StCL(1200,@ 80,@ 0,"cg/st/stさよ_通常_私服.png");
	FadeStCL(300,false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140180a04">
「哎呀凑斗大人。
　你不用如此慌张，无碍。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140190a00">
「可是。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140200a04">
「大小姐？
　凑斗大人对大小姐心不在焉的状态
感到担心。」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140210a04">
「所以才会询问大小姐是否不舒服
……您的身体要不要紧呢？」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140220a03">
「……啊。」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140230a03">
「不，真的非常抱歉，景明大人。
　我跟平时一样，很健康。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140240a00">
「真的吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140250a03">
「是的，真是的，我从头到脚都健康得
让人困扰呢。
　景明大人，你是想看一下吗……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
	

	SetFwC("cg/fw/fw香奈枝_含羞.png");
	SetComic(@0,@0,13);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140260a03">
「讨厌，居然在这种地方！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


	DeleteComic();
	SetFwC("cg/fw/fwさよ_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140270a04">
「你想让他看什么呢，你这色女。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140280a00">
「……是吗。那就好。
　我放心了。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140290a00">
「大尉阁下，对我来说，
您是位无可取代的人。
　请务必保重身体。」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140300a03">
「嗯……好的。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140310a03">
「…………」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140320a04">
「先不管身体状况。
　您看起来跟平时不太一样呢，
大小姐。」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140330a03">
「才、才没那回事呢。
　我就跟平时一样。」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140340a04">
「看起来并不像您说的那样……」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140350a03">
「是你的错觉！」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140360a04">
「可是，现在是三点，风向是北北西，
大气中的电波浓度是六三％哦？
　若是平日里大小姐的话，应该会立刻发出
怪鸟般的声音，跳起水舞才对……」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140370a03">
「好，我明白了，稍等。
　时间正——确，风向正——确，
电波正——确。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	DeleteStCL(200,true);

	WaitKey(500);


	Shake("@StL*", 1500, 6, 0, 2, 0, 1000, Dxl3, false);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140380a03">
「咕咯——————————咯咯!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	Move("@StL*", 200,@ 200,@ 0, Axl3, false);
	OnSE("se人体_動作_スライディング",700);
	DeleteStL(200,true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140390a04">
（……太奇怪了……）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140400a00">
（……太奇怪了……）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　虽然不知道发生了什么事，但今天的大鸟大尉感觉
在许多方面都性能低下。
　简直就像一星期未眠，刚写完原稿的
小说家一样。

　虽然令人担心，但我却觉得就算担心
也无济于事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000,@ 0,@ 0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);


	SetFwC("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140410a04">
「算了，很快就会恢复。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140420a00">
「是。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140430a04">
「先不管这个了，凑斗大人。
　您和沃尔夫教授会面了吧？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140440a00">
「是的。
　他叫我到他房内，虽然时间很短，
但我们进行了会谈。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140450a04">
「谈了些什么呢。
　当然，只要说不会影响您隐私的
内容就行了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140460a00">
「……这个嘛。
　总之……我印象最深刻的就是。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140470a00">
「内裤这个单词不时地出现在
我们的对话中。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140480a04">
「…………」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140490a04">
「似乎会让闻者一方感觉不舒服。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140500a00">
「失礼了。」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140510a04">
「不，那位教授一直这样。
　虽然我不清楚他的童年到底有多扭曲，
反正他似乎对内裤有着异样的执着。」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140520a04">
「开口闭口都是内裤——」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140530a00">
「侍从阁下。
　您似乎是误会了。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140540a04">
「什么？」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140550a00">
「——教授并不是对内裤
有所执着。
　而是执着于脱内裤这件事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我用力握拳。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140560a00">
「这两件事的意思与意义完全不同。
　不可将两者混为一谈。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140570a04">
「是。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140580a00">
「举例来说，就像是美浓部达吉老师
被称为叛徒一样。」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140590a04">
「虽然我完全不明白你想说什么，
但您的例子可不太恰当。
　……不过，虽然与大小姐的怪异方式不同，
但凑斗大人也跟平时不太一样呢。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140600a00">
「是吗。
　……也许吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	OnBG(1100,"bg001_空b_01.jpg");
	FadeBG(1000,true);

	DeleteStL(0,false);
	DeleteStR(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我抬头仰望天空。

　湛蓝。
　万里无云的晴空。

　心中想着无谓之事。
　
　但——这种无谓之事，是否也已经被我
遗忘许久了呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆クール
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0140610a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("@OnBG*");

	WaitKey(500);

	DrawDelete("黒幕１", 1000, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm36",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　这广场似乎是演习场。
　我忽然停下脚步。

　十余人的人群映入眼帘。
　不过，他们接下来似乎不是要演习。

　多数人都面无表情。
　其中一人，连表情也没有。

　两者之间似是而非。
　那一个人是缺少表情，其他人则是
有意图地掩藏表情。

　那位失去表情的人，两手都被束缚住。
　刚看到他双手的束缚被解开……紧接着那人全身都被
绑缚于桩子之上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140620a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　时至这一刻，我也察觉到目前的事态。

　被捆绑、蒙住眼睛的男人遭众人遗弃，其他人
都离开了广场。
　看似现场代表的将校低声在陈述某事。

{	OnSE("se戦闘_銃器_構える01",1000);}

　几个举起长枪的士兵列队。
　枪口当然指向那位被缚住的男人。

　将校发号施令。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃声。ばんばんばーん。

	DeleteFwC(100,false);
	Fade("@box*",150,0,null,true);

	CreateColorEXadd("絵色100", 1500, "White");

	OnSE("se戦闘_攻撃_ライフル撃つ4回",700);
	WaitKey(280);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, false);
	WaitKey(280);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, false);
	WaitKey(240);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, false);
	WaitKey(340);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, false);

	Wait(10);
	OnSE("se人体_血_たれる01",1000);
	WaitKey(1000);


//	FadeFwC(300,false);
	Fade("@boxCC",150,800,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]

　男人死亡。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("黒幕１", 1000, true);
	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140630a00">
「………………」


{
	StL(1000,@-30,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140640a03">
「他是科布登中中佐。 」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140650a00">
「大尉……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　她和我一样停下脚步，和我一样远远眺望着他们吧。
眼前处刑的情况。
　大鸟大尉注视着演习场，小声说着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140660a03">
「罪名是收贿、共谋……
　还有叛乱。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140670a00">
「叛乱？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140680a03">
「您还记得横须贺的事故吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140690a00">
「啊……记得。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　那天的电话中，香奈枝大小姐提及的事情吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140700a00">
「的确，当时说所谓事故只是对外之辞……
　也就是说。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140710a03">
「没错。那其实是叛乱。
　就是现在已经死亡的科布登中佐所发起的。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140720a03">
「……不。
　正确来说，是舞殿宫大人引起的。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140730a00">
「……您说什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　亲王引起的？
　横须贺军港的叛乱事件？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140740a00">
「——大尉阁下。
　这到底是怎么回事？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140750a03">
「您想知道吗？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140760a00">
「是的。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140770a03">
「可这件事，已经结束了哦？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0140780a00">
「即便如此，还是希望……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140790a03">
「…………」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0140800a03">
「我明白了。
　我们来聊聊吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 3000);

//◆フェードアウト

}

..//ジャンプ指定
//次ファイル　"mc02_015.nss"