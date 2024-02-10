//<continuation number="1510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_009.nss_MAIN
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
	#bg034_署長宅茶の間a_03a=true;
	#bg001_空c_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_010.nss";

}

scene ma03_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"ma03_008.nss"

//◆署長宅·居間

	SoundPlay("@mbgm30",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg034_署長宅茶の間a_03a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090010a02">
「……凑斗先生！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090020a04">
「哎呀，您醒来了吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//嶋：修正（しました）【090930】
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090030a00">
「让各位受惊了。
　如此失态，我感到万分抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我就座后垂下了头。
　一想到之前的丑态，我就自觉无法面对她们。
低头道歉这一姿势的存在因此而倍显珍贵。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_慌て.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090040a02">
「没、没有、的事……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090050a04">
「我才是没有考虑到您的心情，让您受
惊吓了。我纱代真是多多冒犯，实在是
万分抱歉。
　今日之过，以后一定弥补……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090060a00">
「请不要过于挂心了。
　……尤其是绫弥小姐。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090070a02">
「哎、我？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090080a00">
「方才理智尽失，结果说了些
不堪入耳的粗话。
　实在是太无礼了，我无颜面对你。」

{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090090a02">
「没、没有。
　凑斗先生并没有错。都是因为我
净说些不知轻重的话……」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090100a02">
「实在是对不起！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090110a00">
「十分感谢你的关心。
　接下来我要说的，虽然并不期待能弥补
我对你的歉意。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090120a02">
「是……？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090130a00">
「你之前提出的要求，我会考虑的。
  虽说待遇方面实在是欠佳。」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090140a02">
「哎……
　真、真的吗?!」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090150a00">
「只是在这之前，我要重申一遍。
　与我扯上关系是十分危险的。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090160a00">
「<RUBY text="······">真的非常危险</RUBY>。
　攸关性命。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090170a00">
「这点我也要对大尉阁下声明。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090180a03">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090190a00">
「我自己是建议您二位对这一切
充耳不闻就此回府。
　毫无疑问这才是上策。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090200a00">
「即便如此二位还是要留下的话，那么这话
虽然失礼，但二位的确做了十分愚蠢的选择。
　因二位自愿冒这原可避免的危险，对此我
只能这般形容。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090210a00">
「斗胆说一句。
　我并不需要勉强任何人来
协助自己。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090220a03">
「…………」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090230a02">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090240a00">
「听了以上的话请再考虑一下。
　要不要就此回去呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……………………………………………………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090250a03">
「我就不用回答了吧？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090260a00">
「大尉阁下……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090270a03">
「协助景明大人是身为ＧＨＱ士官的
任命。即使被景明大人所厌烦，我也
不会反悔。
　而且……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090280a03">
「我也是有自尊心的。
　您一句不需要我就退缩的话，有损
大鸟之名。我一定会让您撤回这句话，
敬请期待。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090290a04">
「这才是大小姐。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090300a00">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090310a02">
「……我也是。
　对不起，凑斗先生。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090320a02">
「我知道我给您添麻烦了。
我对付那些痞子的办法是无法用来与
凑斗先生的敌人对抗的……这一点，
我心里明白。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090330a02">
「但是，我想要战斗！
　就算现在不行……但我绝
不想逃避。因为他们不可饶恕。
　无论六波罗也好，银星号也罢。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090340a02">
「我不想选择会令抚养我长大之人蒙羞的
生存方式。我想知道该如何战斗。
　所以……拜托您！　请让我待在
凑斗先生身边！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090350a00">
「…………」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090360a03">
「……是我的错觉么。
　总觉得比起我的台词，她的话
好感度上升率更高呢……」

{	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090370a04">
「犹如爱的告白。
　这样您就落后很多了哦，
大小姐。」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090380a02">
「不要乱插嘴!!
　什、什、什么告白，我、我只是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　操纵傀儡易，阻止义士难。
　——无可奈何。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090390a03">
「？　景明大人，您在说什么？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090400a00">
「没什么。
　您二位的意思，我明白了。
我已经无话可说了。」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090410a02">
「那么……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090420a00">
「为了解决银星号事件，
　请二位协助我。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090430a00">
「大鸟香奈枝ＧＨＱ大尉阁下。
　绫弥一条小姐。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090440a03">
「请交给我们吧！」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090450a02">
「谢……谢谢！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090460a00">
「不用道谢。
　我都不好意思了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　将她们卷入危险，还接受道谢，我无法忍受。
　羞愧得无地自容。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090470a00">
「……那么，我告诉二位吧。
　我们所要追寻的对手。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090480a00">
「关于银星号。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090490a02">
「…………」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090500a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度夜空とかカット挟む
//◆居間

	SetVolume("@mbgm*", 2500, 0, null);

	PrintGO("上背景", 25000);

	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	WaitPlay("@mbgm*", null);

	WaitKey(3000);

	OnBG(100,"bg034_署長宅茶の間a_03a.jpg");
	FadeBG(2000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　佣人牧村夫人准备的茶一如既往，味蕴苦而可口。

　含一口茶润了润嗓子，便马上道出难以说出口的话语。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090510a00">
「大尉方才问过了。
　我追寻银星号的理由。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090520a03">
「嗯……」

{	SoundPlay("@mbgm18",0,1000,true);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090530a00">
「她是我妹妹。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090540a03">
「……啊？」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090550a02">
「哎？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090560a04">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090570a00">
「是两年前的事情了。
　<RUBY text="·">她</RUBY>将我家世代相传的剑胄之一
取出，并装备起来。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090580a00">
「<RUBY text="·····">然后发狂了</RUBY>。
　从人变成怪物。她变成了人形的灾厄，
杀戮的天象——银星号。
　在那个瞬间。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090590a00">
「……从那之后，我便与存于我家的
另一副剑胄一同不断地追逐她。
　也成功捕捉过好几次。然而我还不能
压制住她。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我闭上了嘴。
　没有人发出声音。

　表情都大同小异。
　虽然有想法，但不知如何表达的表情。


　这种反应足以满足我卑鄙的算计。
　最低限度地将事实罗列出来，而不用说多余的话。


　——多余？
　
　不。原本无论处于何种状态都必须要说的吧。她<RUBY text="··">为何</RUBY>
而发狂。

　然而我不可能说出口。
　如果她们知道这<RUBY text="··">诅咒</RUBY>亦将我缠绕，她们一定会厌恶
我，离开我——若仅此而已倒也正如我所愿——但她们
一定会用各种手段将我的罪孽公诸于世吧。

　这暂时于我不便。
直到将『银星号』从这世界上抹消，
根据需要我都必须处于
能够自由活动的状态。

　尚未到我接受制裁的那一刻。
　……虽然由我来决定这一点，本身就无比傲慢。


　关于这一点，我完全闭口不谈，继续说明下去。
恐怕是因为顾及我的感受，四周一片静默。我正是
利用了这一点。
　多么地卑劣啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090600a00">
「……银星号为何是如此令人畏惧的存在。
仅仅一骑武者的所作所为为何会蔓延成为
难以想像的杀戮。
　这是有原因的。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090610a00">
「首先是纯粹的战斗能力。
　无论是剑胄还是剑胄的操控者，在我所了解
的范围内，都可以称得上是最强。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090620a04">
「凑斗大人已经很了不得了。
　她比您更加……？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090630a00">
「是的。
　保守估计，我与她之间亦是天壤之别。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090640a02">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090650a00">
「还有一点……于我们很麻烦。
　那副剑胄，拥有精神污染的能力。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090660a03">
「……精神污染？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090670a04">
「听上去真是可怕。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090680a00">
「的确，是可怕至极。
　银星号能在以自己为圆心的大范围内，
放射影响脑活动的奇异重力波——
污染波。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090690a00">
「受到污染波影响的人，会与银星号的
精神同调。
　……即，杀人狂的精神。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090700a02">
「……啊。
　难道说那个银星号事件的——<RUBY text="·····">受害者遗体</RUBY>
<RUBY text="···················">看上去只能让人认为是经历过一场互相残杀</RUBY>，
就是因为这个。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090710a00">
「正如你所言。事件的被害者多数是
自相残杀而死。
　因为心智被银星号夺走了。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090720a04">
「这真是……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090730a03">
「恶劣的事件。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090740a00">
「的确。
　而比这更为恶劣的是，武者与银星号
接触之时——」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090750a02">
「武者也会被污染吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090760a00">
「不。污染波毕竟还是无法穿透装甲
让武者也受其影响。
　至少在我所知道的范围内，并没有发生过
这种事。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090770a00">
「然而……
　对于武者，银星号能将“卵”移植
到他们身上。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090780a03">
「卵？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090790a00">
「为了方便起见这么称呼它，而这似乎
也是污染波的一种。
　我所知道的“卵”是光球状的，与剑胄
接触便会被吸收，在其内部成长——」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090800a00">
「经过不特定的时间，迎来<RUBY text="··">孵化</RUBY>。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090810a03">
「……然后，会怎么样？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090820a00">
「我尚未目睹过。
　因为银星号散播的所有“卵”在孵化前
就被我破坏了。可以说这两年间我的
精力都消耗在这件事上。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090830a00">
「因为比起压制银星号，破坏“卵”
更是当务之急。
　如果传言属实的话……被“卵”所寄生的
武者，迎来孵化的那一刹那——」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090840a00">
「<RUBY text="···········">会成为与银星号相同之物</RUBY>。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090850a03">
「…………」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090860a02">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090870a04">
「……原来如此。
　的的确确是“卵”呢。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090880a00">
「这些事情我并未公开。知道的人
只有我与署长，作为后援的舞殿宫殿下。
　还有你们。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090890a02">
「不可外泄……啊，那是当然。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090900a00">
「正是如此。
　一旦污染波与“卵”等事情
传到了市内——」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090910a03">
「就会引起大恐慌……
　银星号并不是一般的怪物，只要
靠近便会发狂，这种怪物说不定还
会增加——这些事情传出去的话。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090920a04">
「喝口茶的功夫就晕倒了。」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　绫弥只是一脸惊讶的表情。
　香奈枝小姐和纱代侍从在惊讶之后已经只剩下了一脸
呆愣。

　她们自身没有陷入混乱，这对我来说算是一种侥幸吧。
不过——
　正是因为我相信她们并不是如此柔情脆弱的人，才会对
她们公开。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090930a00">
「……银星号就是如此出乎寻常的对手。
　二位觉得如何？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090940a03">
「……是啊……」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090950a02">
「……唔。
　虽然知道它是怪物……不过没想到是
那么不得了的家伙。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　两个人果然很难马上回答的样子。
　这也是理所当然。

　如果能得到她们这般反应的话，那么也不枉我冒着
泄露机密的危险依然告诉她们。
　我继续说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090960a00">
「我个人还是建议二位不要插手。
　只要能承诺不将我刚才所说的
内容泄露出去便可——」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090970a03">
「哎呀？
　您所询问的是这个意思吗？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090980a00">
「……啊？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090990a03">
「我还一心以为您问的是我们该
如何对付银星号呢。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091000a02">
「我也是。
　关于那一点我是不会改变想法的，
凑斗先生。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091010a02">
「不如说，如今更难抽身。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091020a03">
「是啊。
　虽然原本就不是随口说说的悠闲心态，不过
听到状况如此严重，我也没有犹豫的闲暇了。
根本不可能抽身而退。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091030a00">
「…………」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0091040a04">
「凑斗大人，要再倒杯茶喝吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091050a00">
「劳烦了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　轻易被粉碎掉的最后一丝期待，与绿茶一同
流入喉咙深处。
　极其苦涩的味道。

　……只能下定决心了吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091060a00">
「绫弥小姐。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091070a02">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091080a00">
「一条。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091090a02">
「是……是！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091100a00">
「今后你就是我的部下了。
　身份是镰仓警察署属员……非正式的警官。
与我的立场相同，但要完全遵从指示。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091110a00">
「有异议吗？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091120a02">
「没有！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091130a00">
「大尉阁下。」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091140a03">
「…………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091150a00">
「请不要咬着手帕用充满怨恨的
眼神看着我。」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091160a03">
「可是，我总觉得好羡慕哦。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0091170a04">
「叫她直呼名字，叫大小姐却是『大尉阁下』
……距离感的差距也太过赤裸裸了啊。」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091180a02">
「呵呵。」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091190a03">
「羡慕！　羡慕嫉妒恨！
　景明大人，也请您直呼我的名字吧！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091200a00">
「做不到。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　别开玩笑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091210a03">
「那么叫我『Ｈｏｎｅｙ』！
　加上前缀『Ｓｗｅｅｔ』就完美了！」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091220a02">
「喂你这家伙趁乱胡说些什么呢！」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091230a03">
「怎么了？　Ｄａｒｌｉｎｇ的跟班。」

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091240a02">
「别叫Ｄａｒｌｉｎｇ！　妄想肥硕女！」

{//◆パリーン
	OnSE("se擬音_シリアス_ショック02",1000);
	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091250a03">
「……肥硕……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0091260a04">
「啊。大小姐心中的安全锁
发出声音了。」

{	SoundPlay("@mbgm34",0,1000,true);
	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091270a03">
「呵。呵呵呵。是啊。没错。
　为了构建圆满的团队关系，
首先必须要划清上下关系呢。」

{	StR(1000, @30, @10,"cg/st/st一条_通常_制服.png");
	Move("@StR*", 300, @-30, @-10, Dxl1, false);
	FadeStR(300,false);
	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091280a02">
「啊？　要来么ＧＨＱ。
　除了午睡之外还有什么技能的话
就给我们看看啊……」

{	StL(1000, @-30, @10,"cg/st/st香奈枝_通常_私服c.png");
	Move("@StL*", 300, @30, @-10, Dxl1, false);
	FadeStL(300,false);
	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091290a03">
「ＯＫ。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091300a00">
「……失礼。两位。
　我还没说完。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091310a02">
「对不起请稍等。
　待我把这无用之材劈成柴火来烧
洗澡水吧。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091320a03">
「嗯。很快就能结束的，所以请稍等。
　一会就能解决。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0091330a04">
「一根手指？」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091340a03">
「不是一回合。
　是一分钟！」

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091350a02">
「正合我意!!」

{	DeleteStL(300,false);
	DeleteStR(300,false);
	Move("@StL*", 300, @-120, @0, Dxl1, false);
	Move("@StR*", 300, @120, @0, Dxl1, false);
	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091360a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　我的话她们似乎听不进去。
　无可奈何地喝了口茶。

{	SetVolume("@mbgm*", 1000, 0, null);}
　我把视线从这险恶度无谓直升的起居室移开，
抬头望向天花板，便看到那熟悉的身影。
　赤色蜘蛛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm23",0,1000,true);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091370a01">
《……话说完了？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091380a00">
（一直在听吗）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091390a01">
《大致都听到了。
　说实话，我只觉得事情变麻烦了。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091400a00">
（不得已的选择。
　……我是这么想的）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091410a01">
《你知道那很危险的吧？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091420a00">
（嗯。
　我会小心尽量不要与她们做
不必要的接触）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　……归根结底都是伪善。
　<RUBY text="······">总会有人牺牲</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091430a01">
《这样的话就好。
　……不说这个了，有事报告。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091440a00">
（怎么了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091450a01">
《追踪到银星号的气味了。》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091460a00">
（在哪里？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091470a01">
《镰仓的郊外。
　稍稍偏西……巨大的设施中。
那是什么？　莫名的喧闹。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091480a00">
（西边……？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　记忆牵动。
　那里的确有个著名的——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091490a00">
（……那个吗）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091500a01">
《你知道？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091510a00">
（嗯。
　在那里的是……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　——环形赛道。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_010.nss"