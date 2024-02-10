//<continuation number="1390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_011.nss_MAIN
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
	#bg006_小光の家_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_孤児の光=true;

	$PreGameName = $GameName;

	$GameName = "md06_012.nss";

}

scene md06_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_010.nss"

//◆小さな家の中。bg006a
//◆ボロ屋ではないが貧乏そう
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	OnBG(100, "bg006_小光の家_01.jpg");
	FadeBG(0, true);
	CreatePlainSP("絵板写", 1000);
	SetShade("絵板写", HEAVY);
	Delete("上背景");
	FadeDelete("黒",2000,true);
	FadeDelete("絵板写", 2000, true);

	SoundPlay("@mbgm23", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……醒来的瞬间，有两件事占据着脑海。
　陌生的地方，还有，脑袋的沉重感。

　哪一件都不明所以然。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110010a00">
（发生了……什么事？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　睡在陌生的屋子里，被盖上了一条被褥。
脑袋嗡嗡作响，已没有思索事情的余力。
口干舌燥又昏昏欲睡。
　……为什么会变成这样。

　完全无法回忆起之前发生的事。
　似乎某一段记忆被深深埋藏一般。
虽然应该立刻回想起来的……
但是连这个都觉得提不起劲。

　我屈服于头痛的折磨，瘫软无力。
　舒展了一下四肢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小光

	OnSE("se日常_建物_スライド開く04", 1000);


	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	WaitKey(500);

	SetFwC("cg/fw/fw小光_悩む.png");

	#voice_on_孤児の光=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110020b34">
「起来了？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110030a00">
「……是。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110040b34">
「还好吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110050a00">
「……算是吧。
　有杯水就好了。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110060b34">
「水？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110070b34">
「明白了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆去る
	OnSE("se人体_足音_走る05", 1000);

	DeleteStR(300,true);

	WaitKey(500);

	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110080a00">
（……………………她是谁？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　天花板并未回复我的提问。
　脑细胞目前比熏黑的屋顶更没用，
就算问也毫无意义。

　应该是——素昧平生的孩子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆小光

	OnSE("se人体_足音_走る05", 1000);


	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110090b34">
「给。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110100a00">
「谢谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我起身，接过盛着水的铁杯。
　大概是季节的缘故吧，杯身感觉极为冰凉。

　一口饮尽，是夹杂着金属臭味，完全称不上
好喝的自来水。但即便如此，至少胃底感觉
受到了滋润。
　我大口喘着气。

　与此同时，肚子却叫了起来。
　……好像胃部比脑子先一步活化了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110110b34">
「要吃饭吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110120a00">
「啊……不。
　这样就太恬不知耻了……」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110130b34">
「……？」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110140b34">
「肚子，不是饿了吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110150a00">
「…………
　啊，那个，是有点饿。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我意识到在孩子面前装腔作势实在愚蠢，
便不争气地承认了。
　就饥饿度看来，我似乎从昨晚甚至更早之前，
就一直未进食。

　呼吸时肚子总伴随丢脸的声音响起。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110160b34">
「等一下。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆去る
	OnSE("se人体_足音_走る05", 1000);

	DeleteStR(300,true);

	WaitKey(500);

	SetVolume("@OnSE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　孩子消失在屋子的更深处，不过很快便折返而来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻る

	OnSE("se人体_足音_走る05", 1000);

	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110170b34">
「给你。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110180a00">
「……啊，谢谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　递过来的是红薯。
　一个小小的红薯。

　手很冰冷，一下子感觉到一股暖流。
　……称作食物实在是有些简朴，但现在自然不是
发牢骚的时候，况且这样的话也就没必要客气了。

　我心存感激地接受了她的好意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110190a00">
「我开动了。」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110200b34">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　狼吞虎咽。
　冷却后的红薯能充分品尝其甘甜，很美味。

　不到一分钟就将其消灭殆尽。
　孩子始终目不转睛地看着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110210a00">
「……多谢款待。」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110220b34">
「招待不周请见谅。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110230a00">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110240a00">
「那个，对了——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　猛然间，不详的预感爬上背脊。
　是因为从窗外照进的太阳光吧。现在是大清早
——吃早饭的话虽稍显尚早。

　可是，只有我吃过食物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110250a00">
「你，不吃吗？」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110260b34">
「嗯。」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110270b34">
「已经给你了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110280a00">
「……」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110290b34">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110300a00">
「…………」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110310b34">
「…………？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110320a00">
「…………………………………………」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110330b34">
「怎么了？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110340a00">
「真的，非常抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　在脑海中痛殴自己一万五千次后，
我用手扶住垂下的额头。
　嗯？　孩子好奇地歪着脑袋。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110350a00">
「我很快会补偿你的。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110360b34">
「补偿？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110370a00">
「因为我抢走了你的食物……」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110380b34">
「？　……？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110390b34">
「叔叔，更饿。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110400b34">
「和我相比。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110410b34">
「所以，给你吃。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110420a00">
「……是这样吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　这下我更抬不起头了，进退两难。
　就如同吃了释迦牟尼佛陀的老虎之后的心情吧。

　亏得这一刺激，脑子也总算清醒了些。
　对当前状况也有了稍许了解。

　……狭小的屋舍。
　似乎没住什么人的样子，但这孩子不可能是
一个人住吧。从配套的家具来看，父母应该也在。

　但是，毫无生气。
　看不见身影自不必说，虽然屋子很小，但一家人
生活在一起本应能感受到的<RUBY text="··">温度</RUBY>也没有。

　仔细观察的话，会发现到处落满尘埃。
　
　……咦？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110430b34">
「？　怎么了？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110440a00">
「不。抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　中止思考。
　常言道比起对别人的家务刨根问底，
不如先顾一下自己。

　昨夜……对了。
　饮酒过量，继而对村正毛手毛脚，
随后跑至大街漫无目的地徘徊。

　现在想来——定是在酒后运动的缘故而酩酊大醉。
　在驿站前听闻奇异的传教，弄得自己一身狼藉。
然后，在那之后……

　对了，遇到了一群为某事争吵不休的人们。
　我介入其中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110450a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　介入——<k>
　到底发生了什么。

　在那之后的记忆荡然无存。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110460a00">
「那个……
　为什么我会在这里，
能告诉我吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　愚蠢至极的问题。
　但是，除此之外别无他法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110470b34">
「嗯。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110480b34">
「昨天，大叔。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110490a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　虽然想纠正说“我自己也才二十多岁”，作罢，
只得随声附和。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110500b34">
「阻止了争吵。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110510b34">
「之后睡着了。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110520b34">
「然后我就把叔叔带了过来。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110530a00">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110540a00">
「原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　整整五秒过后，我才理解她话中的含义。
　换言之，这孩子在附近目睹了昨晚的一切，
然后亲切地把喝得烂醉的我带回了家。

　不对……这样的话就有些说不通了。
　仅凭这孩子的力量不足以将我搬动。
把我带回家的应该是她的家人，兴许是双亲吧。

　那样的话，还要向她的父母道一声谢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110550a00">
「你的父母在哪里？」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110560b34">
「爸爸和妈妈？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110570a00">
「是的。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110580b34">
「不在……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110590a00">
「是工作吗？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110600b34">
「不是的。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110610b34">
「已经不在了。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110620a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　又是五秒的思考。
　摆着一家人份的家具。但是温度很低。遍布尘埃。

　……是吗。
　这孩子的双亲现在已经不在了吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110630b34">
「爸爸，在<RUBY text="····">军队之中</RUBY>。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110640b34">
「说了会很快回来。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110650b34">
「但是，有信送来。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110660b34">
「那时妈妈不在。
　说爸爸已经不会再回来了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110670a00">
「…………」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110680b34">
「然后……
　妈妈也离开了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110690a00">
「……去了哪里呢？」

{	FwC("cg/fw/fw小光_照れ.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110700b34">
「不知道……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110710a00">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　想饮稍浓的茶。
　然则，有心无力，只得咽下
由舌根处翻涌而上的唾沫代替。

　……好苦。
　不过多亏这一做法，让低落的心情
稍微平复些许。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110720a00">
「你是怎么生活的——
　不，怎么解决食物的问题？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110730b34">
「蔬菜店。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110740b34">
「去帮忙的话，会给午饭。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110750b34">
「然后，还有配给。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……配给吗。
　说起来，粮食配给制度已经有一部分得到了恢复。
形势有所改善的话，粮食配给制度早晚会再一次全面
复原。

　对于多数人来说，这虽是一个不幸的变化，但对于
这个孤儿而言却是一个小小的恩惠——不过，变化的
原因与其战死沙场的父亲这一事结合起来思考，
却又让人哭笑不得。

　恐怕之前的红薯也是配给品吧。
　即使还给她，我吃的也算不得什么好东西。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110760a00">
「自我介绍的有点晚，我叫做
凑斗景明。
　这段时间给你添麻烦了。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110770b34">
「名字？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110780a00">
「是的。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110790b34">
「景明？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110800a00">
「是的。
　可以的话，也告诉我你的名字吧。」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110810b34">
「嗯。」

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110820b34">
「光。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110830a00">
「————」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110840a00">
「哎？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110850b34">
「光……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400a]
　孩子重复着名字。
　随即在我的手背上，一笔一划地写下一个字。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev256_銀星号の最期_b.jpg");
	EfRecoIn2(300);

	WaitKey(100);

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400b]
　光。<k>
　
　……这个字。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14", 0, 1000, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110860a00">
「…………」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110870b34">
「……很怪吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110880a00">
「不……不是！」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110890a00">
「真是不错的名字。
　如果我有孩子，也会取
这样的名字。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110900a00">
「一定……」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110910b34">
「是吗？」

{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110920b34">
「太好了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　是在微笑吗。
　始终呈一字的嘴角，第一次有了些微变化。

　呼吸困难。
　刚才那突如其来的笑颜，使得我的心脏猛烈跳动着，
要拼命压制才能得以平复。

　……这就是因缘巧合吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110930b34">
「感冒？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110940a00">
「不……没什么……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110950a00">
「那个。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　我试图寻找话题。
　还需一段时间来理清头绪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110960a00">
「啊……对了。
　那场争吵怎么样了？」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110970b34">
「昨天的？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110980a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　说出来便有所意识，这的确也是我
很在意的事。
　虽然记忆模糊……但应该弥漫着
剑拔弩张的气焰吧？

　处于现世中。谁都充满杀气。
　如果照此发展而转为殴斗——<k>不单单只是
一两个人受伤就能了结的——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110990b34">
「不要紧的。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111000a00">
「……不要紧？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111010b34">
「嗯。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111020b34">
「没事了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111030a00">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111040a00">
「那个，也就是说
　没人受伤吗？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111050b34">
「嗯。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111060a00">
「是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　那就好。
　再好不过了。

　详情虽然不太清楚，不过……不管怎样，
暴力没有演变成互相争斗就能得以解决的话，
真是再好不过了。
　只是，身边多了个这样的小孩。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111070a00">
「可是……为什么？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111080b34">
「叔叔。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111090a00">
「嗯？」

{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111100b34">
「是叔叔，制止的。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111110a00">
「…………我吗？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111120b34">
「嗯。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111130a00">
「……………………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111140a00">
「那是……怎么回事？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111150b34">
「嗯。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111160b34">
「…………」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111170b34">
「叉子……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111180a00">
「叉子？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111190b34">
「嗯。
　桥和叉子。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111200a00">
「？　……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　意味不明。

　不过……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111210a00">
（是吗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　不管怎么说，我似乎阻止了争吵。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111220a00">
（……是吗……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　我——
　<RUBY text="····">平定争端</RUBY>。

　我这样的人，也可以有这等作为。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111230a00">
「…………」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111240b34">
「景明。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111250a00">
「什么？」

{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111260b34">
「看上去很高兴。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111270a00">
「……是、是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　手抚上脸颊。
　还有些似是血色涌起的热度。

　在我自己意识到之前就被她看透了，有点难为情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111280a00">
「抱歉，没什么。
　顺便问一下，之后发生了什么事？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111290a00">
「你是怎么只凭自己的力量，
就把我运送来这里的？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　以此为借口，抛出了一直留存心底的疑问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111300a00">
「仅凭你的力量，应该很困难吧？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111310b34">
「嗯。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111320b34">
「费了很大力气，还是搬不动。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111330b34">
「正苦恼呢……
　姐姐就过来了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111340a00">
「姐姐？
　除父母外，其他的家人？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111350b34">
「不是的。
　是不认识的人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　……在这孩子艰难地想将我运送来此之际，
是得益于恰巧路过的女性的相助吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111360a00">
「那个人现在在哪里？」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111370b34">
「嗯。」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111380b34">
「那里。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111390a00">
「那里？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　我顺着她所指的方向回头望去。
　立于斗室那狭窄的正门口——

　村正正双手环胸，凝视着我。
  究竟从何时起，她就在那里的呢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md06_012.nss"