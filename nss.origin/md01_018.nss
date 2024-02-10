//<continuation number="1040">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_018.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//★ＯＰ
	$express_log=#SYSTEM_skip_express;
	$skip_log=$SYSTEM_skip;
	$auto_log=$SYSTEM_text_auto;

	$SYSTEM_skip=false;
	$SYSTEM_text_auto=false;

	if(#SYSTEM_break_play_movie){MoviePlay("dx/mvOP02.ngs", true);}
	else{MoviePlay("dx/mvOP02.ngs", false);}

	if(#keep_auto_and_skip){
		if($express_log){
			#SYSTEM_skip_express=$express_log;
		}

		if($skip_log){
			$SYSTEM_skip=true;
		}else if($auto_log){
			$SYSTEM_text_auto=true;
		}
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg095_高徳院の境内_02=true;
	#ev213_景明と村正の結縁_a=true;
	#ev213_景明と村正の結縁_b=true;

	//▼ルートフラグ、選択肢、次のGameName
 	#mvOP02=true;

	$PreGameName = $GameName;

	$GameName = "md01_019.nss";

}

scene md01_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_017.nss"

//◆ＥＶ：ずたぼろ村正と景明
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	OnBG(100,"bg095_高徳院の境内_02.jpg");

	FadeBG(0,true);
	FadeStA(0,false);

	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　银星号远去了，我将视线转回地面。
　……濒死的剑胄蹲在那儿。

　村正变成了一副惨状。
　歪斜、狰狞、扭曲——简直像从山峰上滚落后
又经落石洗刷过一般。

　深红色的装甲，如今在眼里是沾满鲜血的皮肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180010a00">
「村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180020a01">
《……别过来……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180030a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180040a01">
《回去……
　…………求你了……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180050a00">
「让我扔下你不管吗。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180060a01">
《是的……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180070a00">
「不行。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180080a01">
《……我已经……不是你的剑胄了。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180090a00">
「我需要你。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180100a01">
《想要阻止二世村正的话……去找别的
剑胄吧……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180110a00">
「不是你的话是赢不了的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180120a01">
《为什么啊……
　因为无法抵抗精神干涉的“波”吗？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180130a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180140a01">
《……呵……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180150a01">
《那个……完全没关系。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180160a01">
《还是其他的剑胄更好！
　比我好得多!!》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180170a01">
《看到现在这个姿态你该明白了吧?!
　我是多么残酷的存在！》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180180a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180190a01">
《能力不足！
　又不听操纵者的话！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180200a01">
《无法做出正确的判断！
　冲昏头地挑战无法战胜的对手，
被弄得如此不堪在地上爬行！》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180210a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180220a01">
《而且——还有善恶相抵这种多余
的诅咒束缚着！
　我一点用处也没有！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180230a01">
《……根本就不需要我吧……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180240a00">
「村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180250a01">
《……去找别的剑胄吧……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180260a01">
《把我……扔了吧……
　……就这么扔在这里，
会自行腐烂吧………》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　受伤的装甲细微地颤抖着。
　铃铃、铃铃地响着。如金铃子般的声音重叠着。

　……是在哭泣吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180270a00">
（别的剑胄）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　那种事情，想过不止一次。

　然而每一次又都断念了。
　别的剑胄会被“卵”所吞噬，所以没有
办法。要和银星号战斗的话，除了继续使用
这个被诅咒的剑胄外别无他法。

　所以断念，使用了村正。

　<RUBY text="···">无奈的</RUBY>。

　绝不是我所希望。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180280a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180290a01">
《……走啊……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　村正。

　作为剑胄来说过于感性，总是容易激动，摇摆不定。
　对我，时而违背指示，时而发发<RUBY text="··">牢骚</RUBY>。

　之前，甚至还想攻击我。

　还有善恶相抵的戒律。
　这副剑胄，一定会让战斗成为<RUBY text="··">无用</RUBY>的存在。

　……这就是村正。

　两年里，与我一路走来的，
　我的剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180300a00">
「啊啊。
　…………果然。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180310a01">
《……》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180320a00">
「不是你的话就不行。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180330a01">
《……什么啊……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180340a00">
「从和你相遇后，经历了无数次的战斗。
　我能够活下来，正是因为有你的帮助。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180350a00">
「也正因为有你的帮助，所以才能
阻止“卵”的孵化。
　只靠我的力量是无论如何也办不到的……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180360a00">
「虽然直到现在……我才承认。
　但希望今后你也能将力量借给我。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180370a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180380a01">
《我所做的……根本就不是帮助。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180390a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180400a01">
《你没有忘记对吧。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180410a01">
《我使你杀死了没有任何罪孽的人！
　一开始是你的母亲——那之后也。》

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180420a00">
「……嗯。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180430a01">
《杀了很多人！
　已经厌烦了吧?!》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180440a01">
《无法忍耐了吧！
　所以，把我扔掉就好了！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180450a01">
《只要没有我的话，就不用再
做那种事了！
　能够战胜银星号的剑胄，一定
在某处存在着……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180460a01">
《你只要去找到就可以了……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180470a00">
「没有那种东西。
　……即使真的有。」

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180480a00">
「我所期待的是你，村正。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev213_景明と村正の結縁_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180490a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180500a01">
《为什么？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180510a00">
「善恶相抵吗。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180520a00">
「只要和你在一起，从今往后我也会
每击倒一个敌人的同时斩杀一
个自己人对吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180530a01">
《是这样……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180540a00">
「杀掉一些不该死的人。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180550a01">
《没错。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180560a00">
「但是。
　……这即是说成为我<RUBY text="··">敌人</RUBY>的人
就是该死之人了吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180570a01">
《……》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180580a00">
「我杀了养母。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180590a00">
「杀了新田雄飞。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180600a00">
「杀了虾夷的姐妹，蕗和鲋。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180610a00">
「……无论哪个都是不能被饶恕的罪孽。
　但是。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180620a00">
「杀了铃川令法的事呢？ 
　杀了长坂右京的事呢？
　杀了风魔小太郎的事呢？」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180630a00">
「皇路卓呢？
　还有乔治·卡杰特呢？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180640a00">
「这些就可以被允许了吗……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180650a01">
《……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180660a00">
「不可以。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180670a00">
「从我们的角度来看他们或许是坏人。
　但是，他们也有他们所坚持的善。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180680a00">
「<RUBY text="····">善恶相抵</RUBY>。
　……原来如此，杀人即是将善与恶都
一同斩断。我终于明白了……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180690a00">
「村正。
　你是正确的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180700a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCI();//――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180710a00">
「杀人是恶鬼的行为。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180720a00">
「无一例外。
　任何杀人行为都并非正义。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180730a00">
「战斗是没有正义的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180740a01">
《……主君……》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180750a00">
「村正。你告诉了我这件事。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180760a00">
「若不是跟你，而是和其他的剑胄结
缘的话，经历了这两年的战斗……
　我如今可能会觉得自己是个大英雄。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180770a00">
「是个为了解救世人而与恶势力斗争的
正义武者。
　这样，在打倒银星号之时，也会想着将
六波罗也打倒吧……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180780a00">
「光想象一下就令人发抖。
　沉醉在被自我独善粉饰下的正义中，
并引起争乱……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180790a01">
《…………》

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180800a00">
「村正。
　对我来说正义是没有意义的。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180810a00">
「你绝对不要忘了这个事实。
　因此你是必要的。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180820a00">
「如果抛弃了你而选择别的剑胄……
　我就会走上<RUBY text="··········">不杀掉好人只杀掉坏人</RUBY>
的独善之道。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180830a00">
「会变得认为世上有该死之人和不该死之人，
并相信自己有区分这两类人的权利……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180840a01">
《……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180850a00">
「我不想成为厚颜无耻的英雄。
　世人看着那样的我，因此相信所谓的
正义战争，并决定跟随其后——若变成那样
荒唐的情况，就更加罪过。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180860a00">
「那才是真正的灾难。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180870a01">
《主君。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180880a00">
「我选择你。」

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180890a00">
「选择善恶相抵的戒律。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180900a00">
「你也选择我吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180910a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180920a01">
《真的……可以吗……？》

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180930a00">
「我是非你不可的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180940a01">
《主君……
　……可是……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180950a01">
《是我救活了二世村正。
　也是我将银星号招到了这个时代……所以。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180960a00">
「一定要自己一个人战斗吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180970a01">
《……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180980a00">
「我也曾有同样的想法。
　不，如今也是这么想着的吧。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180990a00">
「接受现实吧，村正。
　你我一个人都是弱小的。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0181000a00">
「我们需要彼此。
　我俩若不成为一体的话，是
无法战斗的。」

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0181010a00">
「一起……战斗吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0181020a01">
《……主君……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ＣＧ差分
	CreateSE("SE01","se人体_血_たれる01");

	CreatePlainEX("絵板写", 4990);
	SetShade("絵板写", HEAVY);

	CreateWindow("絵窓右", 5000, 579, Middle, 378, 580, false);
	SetAlias("絵窓右","絵窓右");
	CreateTextureEX("絵窓右/絵演", 5110, -900, -90, "cg/ev/resize/ev213_景明と村正の結縁_bl.jpg");
	Move("絵窓右/絵演", 6000, -460, @0, DxlAuto, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵板写", 1000, 1000, null, false);
	Fade("絵窓右/絵演", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我用牙抵住右手拇指，微微咬破指腹。
　血开始不断流下来，我走向剑胄。

　——这根手指，是使用太刀时必不可少的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0181030a01">
《……啊……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵窓右/絵演", null);

//◆ＣＧ差分
	CreateSE("SE01b","se特殊_鎧_駆動音02");

	CreateWindow("絵窓左", 5000, 67, Middle, 378, 580, false);
	SetAlias("絵窓左","絵窓左");
	CreateTextureEX("絵窓左/絵演", 5110, -30, -570, "cg/ev/resize/ev213_景明と村正の結縁_bl.jpg");
	Move("絵窓左/絵演", 6000, -396, @0, DxlAuto, false);

	MusicStart("SE01b",0,500,0,600,null,false);
	Fade("絵窓左/絵演", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　缓缓地，剑胄舒展开四肢，回应着。
　触摸。

　装甲被血所浸染。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵窓左/絵演", null);

	CreateTextureEX("絵演", 6000, Center, Middle, "cg/ev/resize/ev213_景明と村正の結縁_bl.jpg");
	Fade("絵演", 1000, 1000, null, true);

	WaitKey(1000);

//◆キーン。ホワイトアウトホワイトイン
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	CreateTextureSP("絵演", 4010, Center, Middle, "cg/ev/ev213_景明と村正の結縁_b.jpg");

	Wait(500);

	Delete("絵ＥＶ*");
	Delete("絵板写");
	Delete("絵窓*");
	FadeDelete("絵フラ", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　如同击打水晶钟一般的音乐，
　在我和村正之间传递。

　这就是————

　最质朴、最古老的正统武者佩刀仪式。

　在此结缘……
　我和村正第一次成为一骑的武者。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小ウェイト
	WaitKey(1000);
	CreateVOICE("ｅｔｃ","md01/0181040e060");
	MusicStart("ｅｔｃ",0,1000,0,1000,null,false);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆ボイスのみ、テキスト表示なし
//【ｅｔｃ／警官】
<voice name="ｅｔｃ／警官" class="その他男声" src="voice/md01/0181040e060">
「在那里！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

//◆多数の人間の足音が近付く
//◆フェードアウト

	WaitKey(500);

	CreateSE("SEL01","se人体_足音_踏み込み01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	WaitKey(1500);

	ClearWaitAll(3000, 2000);


//◆ＯＰムービー·村正編
//◆完全新作とは言わんので、いくらかのアレンジを。

}

..//ジャンプ指定
//次ファイル　"md01_019.nss"