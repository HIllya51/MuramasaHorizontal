//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_040.nss_MAIN
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
	#bg039_競技場客席b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_041.nss";

}

scene md02_040.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_039.nss"

	PrintBG("上背景", 30000);
	CreateColorEX("黒幕１", 90, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg039_競技場客席ｃ_01.jpg");
	FadeBG(0, true);

	Delete("黒幕１");
	DrawDelete("上背景", 150, 100, "slide_01_01_1", true);

//◆がすがす。流星団、倒れる

	CreateColorEX("白フラ", 5000, "WHITE");
	Fade("白フラ", 0, 1000, null, true);
	OnSE("se戦闘_攻撃_殴る01", 1000);
	Fade("白フラ", 100, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	OnSE("se戦闘_攻撃_殴る01", 1000);
	Fade("白フラ", 100, 0, null, true);
	Delete("白フラ");

	WaitKey(1000);

	OnSE("se人体_衝撃_転倒03", 1000);

	Wait(1000);

//◆茶々丸
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一瞬间，两名男子像被铁针一类击中脊椎一般，
身体发硬然后瘫倒下去。

　站在他们身后的，是心情糟糕的堀越公方。

　应该说，她平安无事是肯定的。
　毫无缘由，
我从一开始就确信她不可能就这样被炸死——
但到底是用怎样的方法逃离却难以想象。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19", 0, 1000, true);
	SetFwC("cg/fw/fw茶々丸変装_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400010a07">
「这些家伙是流星团的。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400020a00">
「流星……团？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400030a07">
「没听说过吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400040a00">
「恕我寡闻。」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400050a07">
「不过，这么大胆的行动还是最近才开始。
　新闻也没有很大关注，不知道很正常。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400060a00">
「是新兴的暴力式倒幕派集团？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400070a07">
「有一半对了。
　就是说，对了一半。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400080a00">
「剩下一半呢？」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400090a07">
「这些家伙属于一种宗教团体啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……宗教？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400100a00">
「用一些宗教的观点内容
来反对幕府政治之类吗？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400110a07">
「倒不如说，是为反幕而进行宗教活动……
又或是……<RUBY text="····">变成那样</RUBY>的吧。
　刚开始就进行些普通的倒幕活动，
后来开始醉心于某英雄。」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400120a07">
「然后将那英雄神化。
　凡英雄所为，均给予肯定，
同时自己也开始模仿……
目前顺利爬上了激进派黑名单的前列啊。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400130a00">
「…………」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400140a07">
「自称流星团。
　他们一味敬崇的本尊，
当然——是当今最大的杀戮者。」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400150a07">
「人中魔王，银星号。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　没敢说出口的问题，却被足利茶茶丸亲切地告知。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400160a00">
「……荒谬。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400170a07">
「是吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400180a00">
「倒幕主义和银星号有何联系——」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400190a07">
「那个嘛，
是唯一单凭武力击溃我们六波罗军的人。
　所以倒幕派就不由得盲目崇拜起来了？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400200a00">
「银星号可并非与幕府敌对。
　仅是无差别的杀戮而已……！」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400210a07">
「关于这点，那帮人似乎认为
『小小的牺牲不足挂齿，
讨伐巨恶奸诈之人是英雄的战役。』」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400220a00">
「……哧……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　那样的<RUBY text="··">行动</RUBY>结果——就是这样。
　连市民被牵扯也毫不吝惜的恐怖袭击。

　愚蠢。
　最糟糕的玩笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400230a00">
（将这些家伙……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　正在不断分娩蔓延么？
　银星号之名及存在。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400240a07">
「哥哥。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400250a00">
「……」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400260a07">
「要打倒公主？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400270a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400280a00">
「是。
　必须打倒。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　砍断灾祸的根源。
　刻不容缓——

　为了阻止这种愚蠢的行为再次发生！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400290a07">
「……这样啊。
　那就试试吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400300a00">
「你说试？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400310a07">
「给哥哥你一个机会。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400320a07">
「杀公主的机会。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400330a00">
「————」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0400340a01">
《……你说什么？》

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400350a07">
「能办到吗？
　哥哥……」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400360a07">
「贯彻“英雄”主义——砍杀血肉至亲。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400370a00">
「…………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md02_041.nss"