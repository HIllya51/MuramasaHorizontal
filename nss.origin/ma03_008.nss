//<continuation number="590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_008.nss_MAIN
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
	#bg033_署長宅景明私室_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_009.nss";

}

scene ma03_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_007.nss"

//◆黒
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 10, "#000000");
	Delete("上背景");

	SetFwC("cg/fw/fwふな_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma03/0080010b06">
「……哥哥……」

{	FwC("cg/fw/fwふき_笑い.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma03/0080020b05">
「……武士大人……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆第二編の姉妹

	StL(1000, @0, @0,"cg/st/stふき_通常_私服.png");
	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStA(300,true);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080030a00">
「……你们……」

{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma03/0080040b06">
「那个，我说啊……」

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma03/0080050b05">
「我……对武士大人……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズバッと血飛沫ＣＧ

	DeleteStA(0,true);

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_right(@0, @0,2000);
	SL_rightfade2(10);

	WaitKey(300);

	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵ＥＦ50", 50, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");

	SetFwC("cg/fw/fwふな_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma03/0080060b06">
「喜欢！」

{	FwC("cg/fw/fwふき_笑い.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma03/0080070b05">
「好喜欢。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080080a00">
「……?!」

{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma03/0080090b05">
「因为啊，武者大人这么漂亮地杀死
我们了呢！」

{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma03/0080100b06">
「呵呵呵～」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080110a00">
「啊……啊啊啊…………」

{	NwC("cg/fw/nwその他.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma03/0080120b56">
「是啊。
　我也很尊敬你！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080130a00">
「?!」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma03/0080140b56">
「这么漂亮地杀死了我啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆新田雄飛
//◆ズバッと血

	FadeDelete("絵ＥＦ50", 1000, true);

	StC(1000, @0,@0,"cg/st/st雄飛_通常_制服.png");
	FadeStC(500,true);

	WaitKey(1000);
	CreateColorSP("絵暗転２", 100, "#000000");
	SL_leftdown(@0, @0,2000);

	DeleteStA(0,true);

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_leftdownfade2(10);

	CreateTextureEX("絵ＥＦ51", 51, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Fade("絵ＥＦ51", 0, 600, null, true);

	CreateSE("SE02","se人体_血_血しぶき01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Delete("絵暗転２");


	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma03/0080150b56">
「凑斗先生真厉害！」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080160a00">
「啊……啊啊啊啊啊啊啊啊啊啊啊啊啊啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　原谅我。
　原谅我。
　请原谅我。

　——无法道出这样的言语。
　十分想说，却说不出口的一句话。

　因为我知道。
　自己是无法得到原谅的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma03/0080170b06">
「哥哥～」

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma03/0080180b05">
「武士大人～」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma03/0080190b56">
「村正真棒～
　是正义的伙伴。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　住口。
　给我住口。
　我不想听。

　不想听什么溢美之词。
　诅咒我也好。埋怨我也好。

　哪怕是刺穿我身躯的断罪呐喊也好。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆ボッ。炎が現れるエフェクト
//◆銀星号。朧
	SetVolume("SE*", 100, 0, null);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 50, 1000, null, true);
	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 10, "#000000");
	FadeDelete("上背景", 600, true);

	CreateSE("SE01b","se人体_体_心臓の音02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵演波紋", 2000, "#4AC6FF");
	CreateColorSP("絵演波紋弐", 2100, "#000000");
	DrawTransition("絵演波紋", 600, 0, 1000, 100, Dxl3, "cg/data/circle_02_00_0.png", false);
	WaitKey(30);
	DrawTransition("絵演波紋弐", 600, 0, 1000, 100, Dxl2, "cg/data/circle_02_00_0.png", true);
	Delete("絵演波紋");

	CreateTextureEXadd("絵立100", 1000, Center, InBottom, "cg/st/3d銀星号_立ち_通常.png");
	DrawEffect("絵立100", 3600000, "LowWave", 30, 30, null);
	Fade("絵立100", 0, 600, null, true);

	WaitPlay("SE01b", null);

	FadeDelete("絵演波紋弐", 600, true);

	SetFwL("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/ma03/0080200a14">
「你好痛苦呢。
　景明……」

//【光】
<voice name="光" class="光" src="voice/ma03/0080210a14">
「这就是<RUBY text="··">诞生</RUBY>的痛苦。」

//【光】
<voice name="光" class="光" src="voice/ma03/0080220a14">
「我也很痛苦……
　你的痛苦不断刺伤我的心。」

//【光】
<voice name="光" class="光" src="voice/ma03/0080230a14">
「这就是<RUBY text="··">孕育</RUBY>的痛苦。」

//【光】
<voice name="光" class="光" src="voice/ma03/0080240a14">
「一起忍耐吧，让人怜爱的景明。
　这就是诞生的痛苦啊。」

//【光】
<voice name="光" class="光" src="voice/ma03/0080250a14">
「这就是母子共同体会的痛苦。
　这就是生命为了创造生命而无法逃避的
初始仪式。」

//【光】
<voice name="光" class="光" src="voice/ma03/0080260a14">
「我会用尽全部心血将你分娩。
生下你，成为你的母亲。
　所以——景明。」

//【光】
<voice name="光" class="光" src="voice/ma03/0080270a14">
「既然你出生了……
　就请不要顾虑地爱上我吧。」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//――――――――――――――――――――――――

//◆署長宅内·景明の部屋
	PrintBG("上背景", 25000);
	OnBG(100,"bg033_署長宅景明私室_03a.jpg");
	FadeBG(0,true);

//あきゅん「SE：要望：がばっと起き上がる感じの布団の音」
	OnSE("se人体_動作_掴む01",1000);
	Delete("上背景");

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080280a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　睁开眼睛，发现自己正躺在被窝中。
　包围周身的感觉，以及映入眼帘的光景都并不陌生。
虽然并不能说是十分熟悉。

　这里是署长家的一间房。
　分配给我的房间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080290a03">
「……醒来了吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝

	SoundPlay("@mbgm30",0,1000,true);
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080300a00">
「……中尉……
　不，失礼了。应该是大尉阁下。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080310a03">
「刚才的事，还记得吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080320a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　没错。
　我因预料之外的话语所动摇，失去理智——

　…………真是，成何体统。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080330a00">
「如此丑态让您看到了。
　实在是万分羞愧。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080340a03">
「没有的事。
　我们才应该道歉，不了解景明
大人的苦恼，净说些不知轻重的话。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080350a03">
「你对村里的那件事，十分在意呢……
　当然我也能理解……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080360a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　我并未对她的误解感到焦躁，而是沉默地任它而去，
逐渐恢复冷静。
　虽然休息时间不长，却也很有效果。

　估计过去了两个小时左右。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080370a00">
「有没有因为我倒下了，而导致您在这家
出入不便？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080380a03">
「没有。我打了下招呼，那位家政妇就
马上出来了。
　连事情的原委都不用说明，就能够
理解我。真是雇了不错的人呢。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080390a00">
「牧村夫人吗……等会要和她道谢。
当然，也要向大尉阁下道谢。
　劳烦您照料，实在是万分抱歉。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080400a03">
「真是的，明明是我给您带来麻烦了。
您真是固执啊。
　身体有什么不适吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080410a00">
「不，没有任何不适。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我坐起身。
　也许是倒下的时候撞到了，肩膀有些疼痛。不过仅此
而已，不妨碍活动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080420a00">
「绫弥小姐怎么了？
　回去了吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080430a03">
「没有。她在起居室等着您。
　好像很在意自己的来访会不会
对景明大人造成负担。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080440a00">
「这样吗。
　那么我有必要去解除误会。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我站了起来，身上也没有别的地方在痛。
　安心了——说不定什么时候就会要战斗。我希望自己
的身体状态一直是万全无碍。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080450a00">
「我们走吧。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080460a03">
「……景明大人。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080470a00">
「是。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080480a03">
「我真的………说了多余的话吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　我很清楚她指的是什么。
　我摇了摇头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080490a00">
「没有。
　冷静下来重新思考，让下定决心的她
回心转意是很困难的吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080500a00">
「就算再怎么拒绝，她也不会放弃。
　如果她暗中跟踪搜查的话，事态就严重了。
因为她很有可能在我们不知道的地方
遭遇危险。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080510a03">
「是的……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080520a00">
「考虑到这一点，答应她的要求带她去
也不失为次善之策。
　她拥有着超越她年龄的能力，
所以应该不会妨碍任务。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080530a00">
「甚至可以说在这方面她对我们很有帮助。
　虽然考虑到任务的危险性，根本不应该
带着学生参与其中，但如今也无可奈何了。
对署长说明，以期得到他的谅解吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　也就是说，和大尉您一样。
　……这句话我没说出口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080540a03">
「我也认为那样不错。
　把她作为进驻军征用的实地助手如何？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080550a00">
「我不想把责任推卸给您。
　把她当做警察属员，也就是和我一样
来对待好了。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080560a03">
「可以吗？
　提出要接受一条小姐的人是我——」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080570a00">
「但她拜访的人是我。
　那么由我自己来负责也是
在情在理吧？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080580a03">
「……好吧。
　这样的话，那位学生也一定
会更高兴的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080590a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

}

..//ジャンプ指定
//次ファイル　"ma03_009.nss"