//<continuation number="540">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_004.nss_MAIN
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
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_005.nss";

}

scene mb01_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_003a.nss"
//前ファイル　"mb01_003b.nss"


//◆合流

	PrintBG("上背景", 30000);
	OnBG(100,"bg032_八幡宮奥舞殿内b_01.jpg");
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeBG(0,true);
	FadeStR(0,true);
	Delete("上背景");
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040010a10">
「你说八幡宫消失了是何意？」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040020a11">
「仍然围着施工用的帷幕，
从外面看不到里面的情况。
　警备依然十分森严。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040030a11">
「但昨晚我派部下成功潜入。
　……似乎是不见了。」


{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040040a10">
「不见了……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040050a11">
「是。
　全都不见了……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040060a10">
「整个八幡宫？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040070a11">
「是。
　包括周边的土地。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040080a10">
「……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040090a11">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040100a10">
「到底怎么回事……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040110a11">
「不明。
　事态有些太过离奇……」


{	FwC("cg/fw/fw親王_凹む.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040120a10">
「也该有个度啊。
　太古怪了。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040130a11">
「……宫殿下，现在。
　更重要的是，今后的打算。」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040140a11">
「不管怎样，大将领已踪影全无。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040150a10">
「嗯……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040160a11">
「事态谜团重重，当然不可不查……但若单单
为这种事费心，就会耽误时机。
　现在，必须按照原定计划采取行动。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040170a10">
「……是啊。
　事态发展如我方所愿。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040180a10">
「不能不采取行动了。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040190a11">
「是。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040200a10">
「幕府中枢的动荡不稳超出想像。
　头领刚从一个增加到四个，不管做什么都会
引发争执。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040210a10">
「我的建朝寺之行之所以会拖到这么晚，也是
这个缘故。
　那些家伙明明全都明白，一直将我安置在城
内也不是办法。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040220a11">
「原来如此……
　邦氏殿下呢？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040230a10">
「太年轻了。虽说这位殿下近期将作为
继任者被推上大将领之位。
　但想让<RUBY text="····">那四个人</RUBY>全都对他唯命是从，
不管怎么说，责任都太重了。」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040240a11">
「……
　令人同情。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040250a10">
「没错……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040260a11">
「四公方之中，有谁最为出类拔萃吗？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040270a10">
「不，这个嘛。
　很好地保持了势力均衡。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040280a10">
「先是政战两方面均成果超群的古河公方、年
纪最长的游佐童心。
　再者，护氏之子、同时又是邦氏叔父、出身
于足利本家的今川雷蝶。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040290a10">
「堀越公方足利茶茶丸着重控制经济方面。
　而篠川公方大鸟狮子吼着重控制军事方面，
拥有四人之中最大的实力……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040300a10">
「如何？
　十分完美吧。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040310a11">
「……的确。
　这些都是护氏的遗产。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040320a10">
「没错。简直配合得太好了。
　托福，现在可苦了那些家伙了。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040330a10">
「对护氏来说较为有利……四公方势均力敌之
形势。
　而今，却有利于我方。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040340a11">
「……您已有计划？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040350a10">
「嗯。
　实际上，已有端倪。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040360a11">
「……如此迅速。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040370a10">
「只是……
　扩大策略范围，果然还是想拥有实力。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040380a10">
「并不是说要派个军队来。
　关键时刻只要有一骑出色的武者，情况就会大
为改观……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040390a11">
「…………」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040400a10">
「不过，不知道景明君会不会协助我方。」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040410a11">
「……万分抱歉。
　宫殿下，请不要再为难他了。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040420a10">
「光是对付银星号就应接不暇吗。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040430a11">
「是……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040440a10">
「……也是。
　景明君就把精力集中在那边吧。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040450a10">
「还有没有……
　其他人可用。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040460a10">
「死乞白赖地强人所难有失体统……
　有没有什么办法呢？　署长。」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040470a11">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040480a10">
「没有吗。」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040490a11">
「……有一人。
　也不能说完全没有。」


{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040500a10">
「是吗？
　……当真？」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040510a11">
「是。
　因不认为其能用于暗杀护氏之事，故当时斗胆并
未呈报……」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040520a11">
「若是有关今后之事，或许可商讨斟酌一番。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040530a10">
「是、是谁、谁？
　别卖关子了，快说！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040540a11">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_005.nss"