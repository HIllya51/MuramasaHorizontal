//<continuation number="1270">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_013.nss_MAIN
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
	#bg053_堀越御所の庭_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_014.nss";

}

scene md02_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_012.nss"


//◆庭
//◆騒音、遠く

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg053_堀越御所の庭_01.jpg");
	FadeBG(0, true);
	CreateSE("ざわ···", "se背景_ガヤ_ざわめき02");
	MusicStart("ざわ···", 500, 1000, 0, 1000, null);

	SoundPlay("@mbgm30", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130010a00">
「……好像变得有点嘈杂。」

{	FadeStR(300,false);
	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130020a01">
「是啊……
　发生什么事了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　宅邸里似乎很多人来来回回地追赶着什么。
　脚步声，还有说话声。

　虽未到要战斗的状态，但十分不稳定的样子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130030a00">
「不是……银星号吧？」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130040a01">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　村正的回答毫不含糊。
　如果是她，事态绝对一目了然，
周围一带必定陷入混沌的漩涡中。

　目前，没有必要介入其中。
　我决定继续锻炼。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);
	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130050a00">
（无念）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　原本，就不认为这是一朝一夕便能习得之事。

　有才的武者耗费一生修行，
最终是否能达到如此境界还需待天命。
　凑斗景明，
这个年龄若能掌握哪怕一点也该喜出望外吧。

　但是，别说什么一点，
现在的立场是必须全部掌握。
　因为必须，所以不得不掌握。

　这样想着……
　就这样试了两小时，
还是没有效果的感觉，
让人不得不沮丧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130060a00">
（切忌焦虑……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　焦虑并无益处。
　当然，放弃也是。

　再试一次。
　这次——<k>尝试以那棵树的树叶为目标。

　在风中摇曳着，眼看要落下。
　不用耳目，感知树叶落下的瞬间，
在到达地面之前伸手一抓。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト

	CreateColorEX("黒幕１", 6001, "#000000");
	Fade("黒幕１", 3000, 1000, null, true);

	DeleteStR(0,true);
//◆ウェイト
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　——就是现在!?

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆しゅん。手を飛ばす
	CreateTextureEXadd("絵背景501", 10000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	OnSE("se人体_動作_素振り打ち下ろし01", 1000);
	Fade("絵背景501", 100, 1000, null, true);
	FadeDelete("絵背景*", 500, true);

//◆ばっ。布を掴む音
	OnSE("se人体_動作_腕を掴む01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　成功了!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆フェードイン

//◆ぱっと眼を開く
//◆真ん前に童心（編笠）アップ。
	CreateWindow("絵窓左", 5000, 300, 0, 424, 576, false);
	SetAlias("絵窓左","絵窓左");

	CreateTextureSP("絵窓左/絵演背景", 5020, InLeft, Middle, "cg/bg/bg053_堀越御所の庭_01.jpg");
	Zoom("絵窓左/絵演背景", 0, 2000, 2000, null, true);
	CreateTextureSP("絵窓左/絵演立", 5100, Center, InBottom, "cg/fw/fw童心変装_通常bex.png");
//	Move("絵窓左/絵演立", 0, @-50, @0, null, true);
//	Move("絵窓左/絵演背景", 0, @-30, @0, null, true);

	CreateColorEX("絵窓下色100", 1500, "BLACK");
	Fade("絵窓下色100", 0, 300, null, true);


//	Move("絵窓左/絵演立", 100, @50, @0, Dxl1, false);
//	Move("絵窓左/絵演背景", 100, @30, @0, Dxl1, false);

	OnSE("se擬音_コミカル_殴り04",1000);
	Zoom("絵窓左/絵演立", 100, 1100, 1100, Dxl1, false);

	FadeDelete("黒幕１", 100,true);

	Zoom("絵窓左/絵演立", 300, 1000, 1000, Axl1, false);

	Wait(1000);

	Fade("絵窓左/絵演背景", 2000, 0, null, false);
	Fade("絵窓左/絵演立", 2000, 0, null, false);
	Fade("絵窓下色100", 2000, 0, null, false);

//	FadeDelete("絵窓*", 2000, false);


	SetFwC("cg/fw/fw童心変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130070a09">
「…………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130080a01">
「抱歉……
　不知是否该插话……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130090a00">
「…………」

//◆平板な声で
{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130100a00">
「唔哇！」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130110a09">
「你不善于表现感情？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130120a00">
「真是失礼了。
　修炼中，完全没察觉到。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130130a09">
「不用、不用。无需道歉。
　忽然想恶作剧就悄悄靠近你了。
肯定是贫僧的不对。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Delete("絵窓*");

	SoundPlay("@mbgm23", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　身材魁梧的僧侣，放声笑着。
　……到底是谁呢？　怎么看也不像是堀越御所的人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130140a09">
「不过，在修炼什么？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130150a00">
「说修炼有点夸大其词。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130160a09">
「到底是什么，不问一下还是无法判断。
　年轻人，在修炼什么呢？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130170a00">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　并非能对他人说的事。
　没有习得任何成果的情况下，更让人难以出口。

　然而，不知为何像揪紧了前胸般感到内疚……

　我无法回避，只能应了僧人兴趣十足的视线。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130180a00">
「只是在尝试，是否能达到所谓无念的理念。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130190a09">
「呵……
　无念。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130200a00">
「就是尝试不通过眼睛去领悟树叶落下的瞬间。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　树上的叶子还在风中摇动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130210a09">
「那可不是半吊子的修行能习得的啊。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130220a00">
「诚然……」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130230a09">
「以高远目标锻炼自己是好事。
　你希望作为武者习得大成吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130240a00">
「…………不。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　稍微停顿了下，不是因为苦恼答案，
而是这样的答案连自己都觉得不可思议。
　没错。我现在刨地前行想要成为剑圣，
但对于剑圣的境界却并非十分关注。

　想想看都会觉得奇怪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130250a00">
「只是因为有必要。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130260a09">
「唔？
　必须要习得无念吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130270a00">
「……是。
　因为我有一个必须打倒的敌人。」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0130280a00">
「一个拥有远胜过我力量的敌人……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130290a09">
「呵……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130300a00">
「……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130310a09">
「为了和那个人战斗，以习得无念为目标……？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130320a00">
「是。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130330a09">
「……原来如此。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130340a00">
「法师。
　方便的话，能否指点一下。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130350a09">
「指点吗……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130360a00">
「凡才如我，内心确是五里雾中。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130370a09">
「呼呼。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130380a00">
「……」

{	FwC("cg/fw/fw童心変装_大笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130390a09">
「呼哇哈哈哈哈哈哈哈哈
哈哈哈哈哈哈哈哈哈哈!!」

{	FadeStR(300,false);
	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130400a01">
「喂，你！」

{	FwC("cg/fw/fw童心変装_大笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130410a09">
「哈哈哈哈哈哈哈——」

{	FwC("cg/fw/fw村正_怒りa.png");}
//嶋：修正（悩みを）【090930】
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130420a01">
「你这……
　明明是个和尚，怎么能听别人的烦恼而笑！」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130430a01">
「看情况起码也该揍你一顿！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130440a00">
「村正。不必动怒。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130450a01">
「可是他！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130460a00">
「在一边看着这样的事无疑十分滑稽。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　连自己也觉得怪异。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130470a01">
「没有那回事。
　本来，人家认认真真锻炼
却跑来挖苦就很奇怪吧！」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130480a09">
「唉，真是的真是的……
　如虾夷小姐说的那样。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130490a09">
「这是贫僧不对。
　敬请原谅。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130500a01">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130510a00">
「请抬起头来。
　是我擅自请求您指教的，并非法师的错。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130520a09">
「不不不。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130530a01">
「要道歉的话，起码也该摘下斗笠。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130540a00">
「村正。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130550a09">
「你说的都对。
　可贫僧也有不能脱下的理由。」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0130560a09">
「因此，请务必原谅。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130570a01">
「呼……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130580a09">
「作为补偿贫僧就说点什么。
　年轻人，就让贫僧给你提点一下吧。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130590a00">
「……是。
　洗耳恭听。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130600a09">
「方才贫僧笑的，并非是觉得你修行奇怪。
　而是你的误解让人觉得奇怪。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130610a00">
「误解……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130620a09">
「嗯。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130630a01">
「那是什么。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130640a09">
「究竟……
　无念是什么呢？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130650a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130660a00">
「舍去一切执着，无欲无求……
　将心化空，与世界同化之类的。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130670a09">
「空皆通一切。
　想要得到一切，就必须舍弃一切。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130680a00">
「是。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130690a09">
「色即是空，空即是色。
　世间万物皆有，便无执着之物……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130700a00">
「……」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130710a09">
「不懂吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130720a00">
「……啊？」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130730a09">
「你为了跟某人战斗而追求无念？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130740a00">
「是。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130750a09">
「这不是在执着吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130760a00">
「————」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130770a09">
「因为执着于胜利……
　而追求舍弃执着才能达到的境界。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130780a09">
「这不合常理。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130790a00">
「……………………」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130800a09">
「拘泥于胜负，就绝对不能达到无念。
　达到无念之时，胜负已不重要。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130810a09">
「啊呀，真遗憾啊——
　为战胜敌人而追求的无念修行，
是完全没有意义的啊！」

{	FwC("cg/fw/fw童心変装_大笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130820a09">
「呼哇哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　再次大笑的僧侣。
　他的态度，似乎忘了刚才的道歉。但我还是无法生气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130830a00">
（哎，算了——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　被取笑也是没办法的。

　说什么刚入门还有其他。
　确实是犯下了无聊又愚蠢的过错。

　连自己都想指着自己笑的心情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130840a01">
「……但让人火大。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130850a00">
「没办法。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130860a01">
「揍他一顿。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130870a00">
「不要这样。
　要是他没给我忠告，这种偏离轨道的修行
还不知会持续到何时。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　相反该道谢。
　察觉到后，我朝着还在大笑的僧人行了一礼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130880a00">
「非常感谢法师的赐教。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130890a09">
「不不……
　……唔……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130900a09">
「那么贫僧……
　你这么坦率，
贫僧也不想一笑了之就这么回去……」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130910a01">
「行了，你快走吧。
　要是再笑的话，真的会揍你的。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130920a09">
「危险危险。
　那长话短说。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130930a09">
「年轻人，你所追求的并非无念。
　是无我。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130940a00">
「无我。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130950a09">
「唔。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130960a00">
「……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130970a09">
「理解其中意思吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130980a00">
「字面上看的话……
　将自己的一切化作虚无吗？」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130990a09">
「正是。
　如果无念是指将宇宙变无之理念，
无我即是将自我变无之理念。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131000a09">
「此亦通用于全部法则。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131010a00">
「法师，但是……」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131020a09">
「唔。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131030a00">
「这不是同样，对自己来说毫无意义吗……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　打倒<RUBY text="敌人">银星号</RUBY>的夙愿，毫不模糊是来源于自己的意识。
　若摒弃自我，那愿望也随之消逝。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131040a09">
「那么，会怎样呢？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131050a00">
「……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131060a09">
「想要赢过敌人吧。
　那完全是因为私欲吧？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131070a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　是私事、私欲。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131080a09">
「真的只是私欲吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131090a00">
「是……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0131100a01">
「……这个不能详细说，都是些麻烦的角色。
　打倒了才是有益于世界啊。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131110a00">
「村正——」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0131120a01">
「当然，
我也没有打算说我们很正义这么愚蠢的话。」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131130a09">
「不不。
　这里提到的愚蠢，尤为重要。」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131140a09">
「年轻人。你和那敌人战斗，首先是私人缘故，
因此，以世界之名觉得可耻吧……
　这又是误解。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131150a00">
「……怎么说？」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131160a09">
「达到无我境界，既无私事也无私欲。」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0131170a09">
「只有世间大义。
　讨伐那敌人也即世间之意志。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131180a00">
「————」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131190a09">
「你的战斗即便仅有一丝大义也好。
　不需迷惘。去追求无我境地吧。」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0131200a09">
「消去你的欲念……
　在世界之意志下行动，讨伐敌人吧。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0131210a01">
「…………」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131220a09">
「…………」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131230a09">
「呼，呼呼。
　啊呀，说了和自己不相称的话。」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0131240a09">
「当你成为那样大义武者之时，
最先被砍伏的是贫僧这破戒和尚啊。
　这真是自掘坟墓。」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0131250a09">
「年轻人，可不要成为那样的人！
　贫僧可会困扰啊！」

{	FwC("cg/fw/fw童心変装_大笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131260a09">
「哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆童心、去る
	CreateSE("SE01","se人体_足音_歩く08");
	MusicStart("SE01",0,1000,0,800,null,false);
	SetVolume("SE*", 3000, 0, null);

	WaitKey(1000);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131270a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　无我。

　……无我、吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md02_014.nss"