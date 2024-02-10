//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_017.nss_MAIN
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
	#bg074_喫茶店の店内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_018.nss";

}

scene mb03_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_016vs.nss"

//◆フェードイン
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg074_喫茶店の店内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0170010a00">
「没事吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　卸下装甲靠近不幸的一家人。
　三人都是呆若木鸡。

　不过幸运的是，除了孩子的擦伤之外再无伤亡。
　解开绳子，取出口中的填塞物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw店主.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／人質男】
<voice name="ｅｔｃ／人質男" class="その他男声" src="voice/mb03/0170020e139">
「你们是……
　不，这到底是怎么回事——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　口齿重获自由的男子言辞激昂，紧接着又欲言又止。
　一定是不知该从何处问起吧。

　虽然明白了他的意思，但我不知如何回答。
　到底该作何说明才好。

　虽然奢望能够默默转身离去。
　但面对被迫卷入纷争的人们，无法做出这般不合情理之
事。就算不能得到他人的理解，也必须表达自己的诚意。

　但不知为何——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170030a02">
「对不起。这是战争。」


{	NwC("cg/fw/nw店主.png");}
//【ｅｔｃ／人質男】
<voice name="ｅｔｃ／人質男" class="その他男声" src="voice/mb03/0170040e139">
「什么？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170050a02">
「和六波罗的战争。我们的战争。
　在互相消灭。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一条作出的是，极端直截了当的说明。

　意思明快。
　完全没有误解的空间。
　也毫无能令人明白的要素。

　从男子表情可以看出，他更混乱了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw店主.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／人質男】
<voice name="ｅｔｃ／人質男" class="その他男声" src="voice/mb03/0170060e139">
「战争。怎么可能……
　不过确实军队调度频繁。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170070a02">
「马上就要开始了。
　不，已经开始了。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170080a02">
「在关东……大和全境。战争将马上爆发。
　所以，最好作出决定。我指的是你们。不，任
何人，我们所有人。」


{	NwC("cg/fw/nw店主.png");}
//【ｅｔｃ／人質男】
<voice name="ｅｔｃ／人質男" class="その他男声" src="voice/mb03/0170090e139">
「决定？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170100a02">
「与谁为友，与谁为敌。
　或是避开战争，逃走。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170110a02">
「否则，就会发生<RUBY text="·····">今天这种事</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一条说出这番话。绑住全家的绳子，孩子的伤口，毙命
的龙骑兵们，昭示着一切。

　正确。

　一条说的全是要点。
　直接得令人无法接受——但所说的一切都是现实，无
法忘却并且不容误解，如此简单明了。

　不必马上理解这些。
　世态的紧张早晚会让他们理解『战争』这一事实。然
后，他们也许会想起一条的话语。明白其中的忠告，现
在，该怎么做。

　——是战斗。还是逃跑。
　这确实是任何人都必须考虑的问题。为了不会毫无决
断，一味地被卷入纷争而丢了性命。

　我把这家人的应对工作交给了一条，自己移开视线。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0170120a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　咖啡馆冰冷的地板成了他们最终的安息之所。
　效力于今川雷蝶的九个人。

　并没有所谓的同情。
　因为他们玩弄了他人的生命。就算他们有相应的理由，
这也依然是无法原谅的行为。最后反丢了自己的性命也
是理所当然。

　我是这样想的。
　出于同样的理由，我也不怜悯他们。

　也不想责备一条。
　如果他们犯下了该死的罪状，那么一条只是承担了执
行的任务。

　而且也没有其他的解决方法。
　武者拥有强韧耐力，即使断手断足也能继续行动，并
且还拥有再生手脚的恢复能力。不毙其命而只夺去战斗
力是很困难的事。

　如果一条作出了这样的尝试，那一旦失败，人质就会
被当即杀害了吧。
　瞄准敌人要害一击毙命，一条的判断没有错。我可以
这样断定。

　也就是说，没有什么好后悔的。
　也没有什么好羞耻的。
　更没有什么值得反省，值得苦恼的。

　可以这样断言。
　可以的。
　
　一条的一家人的对话仍在继续。

　……但她交谈的并不是父母，而变成了那个小男孩。
　一家之中顺应能力最强的就是这孩子，也许是这样吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw子供.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170130e138">
「战争？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170140a02">
「嗯。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170150e138">
「为什么？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170160a02">
「因为无法原谅坏人们。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170170e138">
「六波罗？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170180a02">
「是的。你懂的真多啊。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170190e138">
「大阪……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170200a02">
「……大阪虐杀？」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170210e138">
「大家都死了。
　烧得很厉害。」


//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170220e138">
「所以来到了这里。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170230a02">
「…………{	WaitKey(1200);}原来是这样。」

{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170240e138">
「要和他们，战斗吗？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170250a02">
「嗯。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170260e138">
「为什么？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170270a02">
「因为我相信那就是正义。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170280e138">
「……正义。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170290a02">
「正直、正义地活下去。
　绝不饶恕坏人。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170300e138">
「不害怕吗？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170310a02">
「这个嘛。
　有一点点。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170320e138">
「但还是要战斗？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170330a02">
「嗯。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170340e138">
「为什么？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170350a02">
「这就是勇气。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一条微笑着，戳了戳小孩的胸口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170360a02">
「存在于这里的东西。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb03/0170370e138">
「……只要有那个，就可以正义地，和坏人战斗
了吗？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170380a02">
「对。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0170390a02">
「把这个坏人任意妄为的世界……
　改邪归正。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……………………………………

　一条诉说着正义。
　孩子认真地聆听。
　地板上躺着尸体。

　没有后悔之事，
　没有可耻之行，
　根本无需苦恼。

　
　　　　　　　……真的是这样吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_018.nss"