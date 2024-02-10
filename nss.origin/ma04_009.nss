//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_009.nss_MAIN
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
	#voice_on_研究所長=true;

	$PreGameName = $GameName;

	$GameName = "ma04_010.nss";

}

scene ma04_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_008.nss"

//●０８
//◆江ノ島研究所内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg044_研究施設内_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm34",0,1000,true);

	StL(1000, @0, @0,"cg/st/st所長_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw所長_通常.png");

	#voice_on_研究所長=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090010b22">
「……所以？
　你说发生了什么？」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090020e068">
「是。
　来自废物处理负责人的报告……」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090030b22">
「是恋尸癖还是食人癖突然觉醒了？
　我知道了。许可。」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090040e068">
「……不。并不是这样。」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090050b22">
「缺乏资源再利用精神的家伙。
　多少向我学学吧。然后呢？」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090060e068">
「是发现并逮捕了侵入者。」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090070b22">
「什么啊，原来是活人啊。
　他是谁？　是哪里的间谍？
啊……」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090080b22">
「哎呀烦死了。
　给我关到燃料库里去。」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090090e068">
「不用审讯吗？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090100b22">
「不管怎么样结果还不是一样？
　管他是间谍还是傻子。」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090110e068">
「话虽如此……」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090120b22">
「那就不用白费力气了。
　我看报告也已经看得够烦了。
说起来，我看字超过三行就会抓狂得想一把
火把它烧掉啊。」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090130e068">
「……了解。
　那么我就按照您的吩咐去做。」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090140b22">
「嗯，有劳了。
　才怪啊！　你给我等一下。」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090150e068">
「什么？」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090160b22">
「为什么是废物处理的人发现了侵入者啊。
　警卫队是干嘛的？」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090170e068">
「……这是因为。
　废物处理区的警卫一直就很松懈……」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090180b22">
「为什么？」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090190e068">
「警卫人员都不愿意在那附近巡逻。
　说是会有亡灵。」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090200b22">
「……这是，那什么，超有内涵的笑话？」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090210b22">
「实在太有内涵了根本找不到笑点啊……」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090220e068">
「很遗憾，这是真的……
或者说只是他们在疑神疑鬼吧。
　因为那里到底废弃了些<RUBY text="··">什么</RUBY>他们也是知道的。」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090230b22">
「你是白痴吗。去死。
　去告诉警卫队。再有第二次，
他们也得进燃料库。」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090240e068">
「……我会转达。」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090250b22">
「今天的事就算了。
　那个队长。」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090260b22">
「只处理他就好了。」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090270e068">
「…………是。」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090280b22">
「啊，好累。呜噢。真气人。
　宰了你。奸了你。啰嗦。去死——」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090290b22">
「好像又有干劲了。
　干活吧。得看看甜心怎么样了，
把电池拿出来。今天拿一个就好了。」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090300e068">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma04_010.nss"