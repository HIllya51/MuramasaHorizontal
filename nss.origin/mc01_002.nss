//<continuation number="990">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_002.nss_MAIN
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
	#bg032_八幡宮奥舞殿内a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_003.nss";

}

scene mc01_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_003_3.nss"

//◆八幡宮
//◆※英雄編との共用シーン"mb01_003_3.nss"
//◆「やぁ、よう来てくれたな景明くん～」から
//◆「～誰かを斬らねばならない。誰か……」迄

	PrintBG("上背景", 30000);
//	SoundPlay("@mbgm20",1000,1000,true);
	CreateColorSP("絵色黒", 100, "#000000");

	Delete("上背景");

//おがみ：ファイル分岐前にbgmが音量1で流れていたのでここで完全に消します。
	SetVolume("@mbgm*", 100, 0, null);


//おがみ：前シーンとかぶっていたのでコメントアウト
//　護氏を斬れば、あと一人誰かを斬らねばならない。
//　誰か……


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　比如说，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝
	StC(500, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	FadeStC(300,true);

	WaitKey(1000);

//◆イメージ。斬殺
	CreateTextureSPadd("絵背景500", 10000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateTextureSPmul("絵演効果血", 510, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Wait(200);

	DeleteStC(100,true);
	FadeDelete("絵背景500", 500, true);

	OnSE("se人体_血_血しぶき01",1000);
	CreateColorSP("絵色血", 5000, "#CC0000");
	Wait(12);

	Delete("絵演効果血");
	FadeDelete("絵色血", 3000, false);

	CreateTextureEX("絵ＥＦ15", 150, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	CreateTextureSPmul("絵ＥＦ追加", 4000, @0, @0, "cg/data/circle_09_00_0.png");
	Fade("絵ＥＦ15", 50, 1000, null, true);

	WaitAction("絵色血", null);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020010a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……对我来说<k>……那样的事情<k>……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	Wait(1000);

	SoundPlay("@mbgm30",2000,1000,true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020020a11">
「……景明。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020030a10">
「……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020040a10">
「我说啊。
　不知道能不能令你感到宽慰一些，不过这些话
我还是要说。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020050a10">
「你没有必要有任何负罪感，景明君。
　不管你做了多么残忍的事，下达命令的是我。
所以责任也应由我来承担。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020060a10">
「景明君你不必为此感到痛苦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　这大概就是亲王表达关心的方式吧。
　但除此之外没有任何意义。因为问题的重点根本不在
于此。强加于某人的死亡——将他的存在抹杀这一事实
才是问题。

　责任的所在，这只是次要的。
　而且，我并没有接受舞殿宫的借口。

　虽然对行动负责的理应是组织中下达命令的人，但对
接受命令的人来说，若他有权选择接受与否的话，那么
他也不得不为自己的决断负责。
　佯装不知情，我办不到。

　我自身的责任，毫无疑问地在于我所做出的决断。
　选择是否夺取大将领和那个我身边的、无辜的、另一
个人的性命。

　……无论怎样讨论，结论都只有一点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020070a00">
「宫殿下——」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020080a10">
「顺便，还有一些话。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020090a00">
「——是……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　就在我想好如何回答，正要说出口的时候，却突然
被抢去了话语先机。
　这让我在心理上有种向前栽了一下的感觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020100a10">
「关于责任所在的事，并不止此一件。
　这可以说是牵涉到<RUBY text="····">迄今为止</RUBY>景明君你所有的
行动。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020110a10">
「景明君去追踪银星号这件事也是我认可的。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020120a00">
「……宫殿下……
　这……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　不。
　追讨银星号，是我原本的使命。

　与亲王无关。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020130a10">
「所以，在将护氏和银星号的事全都解决之后，
我并不打算对景明君问罪。
　你不用再回拘留所了。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020140a10">
「我会还你自由。
　也会帮你安排休憩之所。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//あきゅん「監修：スクリプトの記述位置の統一をお願いします。」
	SetVolume("@mbgm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　———————————————————————
————————————————————————
————————————————————————
————————————————————————

　什<k>
　
　
　　　　　　　　　　　　　　　　　么？

　他说什么？
　他————说了什么？　刚才？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020150a10">
「就是这样，如何？
　能再继续将你的力量借我一段时间吗？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020160a00">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020170a00">
「署长。」

{	StL(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	FadeStL(300, false);
	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020180a11">
「别对我说，快回答宫殿下的话。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020190a00">
「我想<RUBY text="···">请问你</RUBY>。
　……为什么对这么荒唐的事，能够默不作声。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020200a10">
「荒唐？」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020210a11">
「注意你的口吻，景明。
　在你面前的可是亲王。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020220a00">
「……
　难道，你早就知道这件事了吗？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020230a00">
「刚才所说的……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020240a11">
「……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020250a00">
「……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020260a11">
「是啊。
　没错。」

{
	SoundPlay("@mbgm16",1000,1000,true);
	CreateSE("SE01","se人体_動作_叩く02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @30, @0, "cg/st/st景明_通常_私服.png");
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300, false);
	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020270a00">
「这与之前的约定不同!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆景明立つ

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020280a10">
「景明君……？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020290a11">
「安静。
　……坐下。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020300a00">
「我没有忘记……！
　两年前我确实跟你约好了。」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020310a00">
「在一切都结束之后，就将我送上法庭，
处以死刑！」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020320a11">
「……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020330a00">
「难道现在要将这个约定废弃吗……？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020340a11">
「如果当时不这么约定的话，你大概无法
克制自己吧。」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020350a00">
「……那只是敷衍我吗!?」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020360a11">
「你没有任何需要受惩罚的罪名。
　正如宫殿下所言一般。」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020370a11">
「你来到这里之后所做的每一件事，都是在我和
宫殿下的认可下进行的。
　所以罪名与责任毫无疑问都在于我们。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020380a00">
「不对……！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020390a11">
「没什么不对。
　<RUBY text="··">所以</RUBY>我才允许了你的自由行动。」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020400a11">
「若觉得自己无法负起责任的话，就不会让你去
做了。
　这是理所当然的事吧？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020410a00">
「我不记得曾把责任推到了他人身上。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020420a11">
「不管你有没有推卸，但以世间的道理来衡量，
事实便是如此。
　即使依照你的意志将你送上法庭，也会是同
样的裁断。」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020430a11">
「罪名与责任不该由<RUBY text="·····">被指使之人</RUBY>来承担，
　而应由<RUBY text="····">指使之人</RUBY>来负责。」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020440a00">
「我没有被命令！
　而且……即便是那样……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020450a00">
「那么两年前的那件事的起源，又该如何追究？」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020460a11">
「……景明……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020470a00">
「当时……我杀了人。
　那件事与你们毫不相干。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020480a00">
「你还没有忘记吧。
　署长——菊地明尧……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020490a11">
「……」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020500a00">
「我杀害了<RUBY text="····">你的妻子</RUBY>!!
　就是我！　用这双手!!」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020510a11">
「……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020520a11">
「那是意外。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020530a00">
「——!!」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020540a11">
「我从不认为是你杀害了我的妻子。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020550a00">
「是我杀的。
　无论怎样否定，这都是不争的事实！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020560a11">
「我不那样认为。
　无论你怎么说。」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020570a11">
「那是意外……景明。
　不存在<RUBY text="··">犯人</RUBY>。只是她不幸地成为了牺牲者。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020580a00">
「唔……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020590a00">
「那么……你是……
　无论如何都不会将我……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020600a11">
「……」

{	DeleteStR(300, false);
	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020610a00">
「啊——啊啊啊！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ずがん。柱を殴る音
	CreatePlainEX("絵板写", 990);

	OnSE("se戦闘_攻撃_殴る01",1000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	WaitKey(1000);

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020620a11">
「……景明。
　我们并不打算强迫你去暗杀护氏。」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020630a11">
「银星号的事也是。
　如果你无法再做下去的话，我们会连同村正
一同承担起来。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020640a00">
「……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020650a11">
「你就接受宫殿下的慈悲吧。
　你做的已经足够多了……你有资格得到平静
的休息。」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020660a00">
「我不要什么慈悲！
　安息、赦免、欺瞒、逃避，这些我统统
不要……！」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020670a00">
「我想要的是断罪！
　是与我所犯下罪名相应的报应！」

//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020680a00">
「谁都可以。除我以外的任何人都可以。
　公正而无情的某个人……来列举我的罪状，
一项一项地定罪，量刑而后执刑。」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020690a00">
「最好能判我为死刑。
　那才是——正义吧!!」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020700a11">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020710a10">
「景明君……。
　你，想要死吗……？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020720a00">
「不，宫殿下。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　面对从帘后传来的问题，我摇了摇头。
　死亡——曾目睹过无数次，曾无数次强加于他人的死
亡，将降临到自己身上。这想象令我感到无比地恐惧和
厌恶。

　恐惧到全身战栗，胃液上涌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020730a00">
「我并不想死。
　我对死的恐惧胜过一切……哪怕满身泥土，
要依靠饮食粪尿为生我也想活下去。我是如此
恐惧死亡。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　怀抱着这份恐惧，我从战斗的夹缝间散布的无数陷阱
中逃离，堪堪拾回自己的一条性命。
　我已活得极其卑劣，这一点连自己都不得不承认。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020740a10">
「这样的话——」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020750a00">
「但正因为如此，我才更应该去死。
　舞殿宫殿下。」

//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020760a00">
「在想死的情况下得到的死亡，只不过是逃向
安逸而已。称不上是处罚。
　那只是简单的自杀，对赎罪的放弃而已。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020770a00">
「我将自己最为厌恶的死亡，无数次地强加给了
他人。
　对我这样的人，必须以将我处死作为惩罚。」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020780a11">
「……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020790a00">
「因此……宫殿下。
　请务必给予我正义的惩罚！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_起きる02");
	MusicStart("SE01", 0, 1000, 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我拜伏在地。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020800a00">
「请给我正义的执刑！
　被宣告死刑之后，我必定会凄惨地嚎哭，渴
求慈悲，向我亲手杀害的人们做出无意义的谢
罪。」

//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020810a00">
「在登上绞首台之前的时间里，我会一直在
无尽的痛苦中挣扎。
　宫殿下，拜托你了！」

//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020820a00">
「请以舞殿宫春熙亲王之名在此与我约定，
您会将这种结局赋予我凑斗景明。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020830a10">
「……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020840a10">
「不行……」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020850a00">
「宫殿下！」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020860a10">
「景明君如果无法舍弃自己的罪恶感，那也没
办法。不过，也许让你马上断去这些念头才更
困难。
　但是，即便如此，死了以后又能如何呢？」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020870a10">
「即便你死了，对死者也没有任何补偿……」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020880a00">
「这是生者的理论！
　原本，这世间就没有能够补偿死者的方法。
他们已经无法再开口说话，更加没有什么欲望。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020890a00">
「至少要给予我同等的惩罚，让我与他们站在<RUBY text="··">对等</RUBY>
的位置上。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020900a10">
「……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020910a10">
「我并非不明白你的话。
　……但还是不行。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020920a10">
「你不能死。
　我无法接受。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020930a00">
「……署长！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020940a11">
「如果真的为死去的人着想的话，那就代替他
们活下去，去做些什么吧。
　你的死亡没有任何意义，但你活着去做些什
么事却是有意义的。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020950a00">
「……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　不行。
　他们不明白。

　这两个人什么都不明白。

　这不是有没有意义的问题。
　更不是补偿的问题。

　只是，单纯的罪与罚的问题。
　罪名应被处以与之轻重程度相符的惩罚。

　这难道不是人世间的真理、
　人世间的秩序吗？

　养母。<k>
　新田雄飞。<k>
　蕗。<?>
{Wait(100);}
鲋……

　如果杀害这些人的我，连个相应的惩罚都无法得到的话，
　<RUBY text="···············">那他们究竟是为了什么而生存的呢</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020960a10">
「……景明君……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020970a00">
「……大将领的事请允许我拒绝。
　请原谅。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020980a00">
「……那么我就此告辞……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020990a11">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc01_003.nss"