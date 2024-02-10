//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011a.nss_MAIN
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
	#bg037_競技場ガレージa_01=true;


	//▼ルートフラグ、選択肢、次のGameName

	$茶々丸遭遇 = true;
	if($ma03_011_routeFlag == true){$ma03_011_routeFlag=false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_012.nss";

}

scene ma03_011a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_011.nss"

//●この場に留まる

	SoundPlay("@mbgm16",0,1000,true);

	PrintBG("上背景", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	StR(1000, @+50, @0,"cg/st/st景明_通常_私服.png");

	Delete("上背景");
	Move("@StR*", 300, @+30, @0, null, false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　为了避免干扰退到墙边，看着田村的人们继续工作。
　一举一动都能从中感受到热情。没有一个人是带着
倦意动手操作的。

　若能将这次的大和ＧＰ——战后初次国内统一选手权
的胜利收入囊中，那么胜者无疑会在大和装甲竞技的
历史中刻下不朽之名。
　这是绝不会风化的金字塔。

　带着这个想法，会充满干劲也是理所当然。
　
　不过——不知是不是错觉。

　笼罩着田村队的热气中包含些许<RUBY text="·">负</RUBY>的气息。
　不仅注视着前方闪光的荣耀。同时，似乎还畏惧
着从后方追赶而来的食肉兽的影子——

　不知为何会有这样的感觉。
　莫非有在本次大赛落败就解散队伍的说法？
　倒也没听说过……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0010a07">
「嗯嗯。
　被逼得恰到好处呢。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0020a00">
「……？」

{	NwC("cg/fw/nwその他.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0030a07">
「你也这样认为吧？
　不对吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　从旁传来一个唐突的声音。
　转头看去，最初映入眼帘的，是散发
着稀有光泽的发丝。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸·変装。野球帽？

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStR(0,true);

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_変装.png");
	FadeStL(0,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　身旁是一个小巧的身影。可以与皇路操相匹敌了吧。
　难以判断其身份。看上去不像赛手。感觉也不像后
勤人员。仅仅是观众的话也有难以理解的部分。

　当然，与我素未谋面。
　想着如何开口时，少年的嘴又动了起来。

　并未化妆，薄红色的唇。
　——瞬间，被奇妙地魅惑住了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0040a07">
「知道原因吗？」

{	FadeStR(300,false);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0050a00">
「什么。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0060a07">
「这么紧张的原因啊。
　不仅是因为想得到桂冠而已呢，
田村的这些人。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0070a00">
「……」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/011a0080e010">
「那、那个……
　要把队长叫来吗？　他刚离开了一会。」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0090a07">
「啊，不用啦。不用在意我。
　只是稍微来偷看一下而已。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　把战战兢兢前来询问的工作人员无情地打发掉。
　见到工作人员的态度，顺着他的视线看去，我才终于
发现。

　是来宾章。
　也就是说，这个少年拥有被举办者邀请就座贵宾席
的身份。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0100a00">
「……本人是警察联队相关人员凑斗景明。
　恕我唐突，您是？」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0110a07">
「这～个啊～
　就叫我地球皇帝吧。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0120a00">
「了解。
　地球皇帝陛下。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸·手前アップ
	Move("@StL*", 150, @-300, @0, Dxl1, false);
	DeleteStL(150,true);

	CreateTextureEX("絵st100", 1500, -500, 0, "cg/st/resize/st茶々丸_通常_変装_ex.png");
	Move("絵st100", 200, -169, @0, Dxl1, false);
	Fade("絵st100", 150, 1000, null, true);

	SetFwR("cg/fw/fw茶々丸変装_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0130a07">
「你不会吐槽这点我早料到了，
所以没啥可泄气的。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Move("絵st100", 200, -300, @0, Dxl1, false);
	FadeDelete("絵st100", 150, true);

//◆戻る
	StL(1000, @-100, @0,"cg/st/st茶々丸_通常_変装.png");
	Move("@StL*", 300, @+100, @0, Dxl1, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw茶々丸変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0140a07">
「抱歉，刚才的不算。
　我的身份其实是这个。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　少年从口袋中取出名片递过来。
　恭恭敬敬地接过名片，阅读记载其上的文字行列。

　　　　　　掠过灰色荒野之风
　
　　　　　　　　弹丸雷虎·参上!!　

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0150a00">
「……非常抱歉。
　请问从哪到哪是您的名字。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0160a07">
「弹丸雷虎。
　请叫我雷虎吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0170a00">
「那么掠过灰色荒野之风是。」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0180a07">
「职业。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0190a00">
「原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……这是干什么的职业呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0200a07">
「怎么样呢。大哥哥。
　觉得这些人如何？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0210a00">
「确实感觉有种奇妙的空气存在。
　不过不明白的是。现在的田村身上，会有什
么否定性的要素吗。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0220a07">
「这当然有。
　除了想胜出这个原因以外，还有绝不能失败的
原因。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0230a00">
「能容我问问是什么原因吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　无用的追问即是无礼。
　但想到自己来这里的目的，也不得不顺势而为。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0240a07">
「不然也不会找你搭话啦。
　就是说啊。这些人想在纯净的比赛中战斗。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0250a00">
「……？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0260a07">
「就是不想把<RUBY text="·">钱</RUBY>的问题带到赛道上啦。
制造在赛道上飞行的骑体需要花钱也
没办法。可是，想从骑体登上起跑线
到奔向终点的过程中忘掉这个。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0270a07">
「也想让观众们忘掉这个。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0280a00">
「…………
　有<RUBY text="····">那种动向</RUBY>吗？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0290a07">
「这个真的有。
　那些对钱饥渴的人见到如此美味的食材
肯定不会放过吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0300a00">
「确实。
　装甲竞技是当今大和最具人气的运动之一……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0310a00">
「如果，<RUBY text="···">博彩化</RUBY>成功的话，
就意味着巨大的利益吧。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0320a07">
「就是这个意思。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0330a00">
「这么说田村是反对派吧。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0340a07">
「还有日动、勇健，制造者空间也一样。
私人队伍大多站在田村这边。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0350a00">
「推进派呢。」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0360a07">
「除了那些以外清一色全是。
　中心应该是翔京。好像连运营委员会的
名册都做好了哦？　当然半数都是自己公
司的人。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0370a00">
「横锻也站在他们那边吗。」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0380a07">
「虽然高层一开始有些固执，但结果还是屈服了。
　唉，也是没办法的事吧？　就算敢跟翔京作对，
肯定也得罪不起他们的后台。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0390a00">
「……后台。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0400a07">
「翔京社长姐姐的丈夫是大和ＧＰ主办者
大人的侍大将。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0410a00">
「主办者……
　小弓公方、金川雷蝶中将吗。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0420a07">
「以一介企业之身进行抵抗，不觉得这负担
有点太重了吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0430a00">
「没有异议。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
“公方”即六波罗的军司令官，或指其麾下的司令部。
　虽然正确地说，前者应该称为管领，而后者则应称为
公方府。

　公方被设置在下总古河、下总小弓，伊豆堀越、会津
篠川这关东四点。各自作为枢要，掌握着周边地区的军
政两权。
　在他们之上的只有作为幕府之长的六卫大将领。

　虽然还有形式上相当于同级存在的京都室町探题、
九州大宰府、陆奥镇守府，但不管哪个都不具备
公方府一般的实际权力。
　可以说，关东四公方是一种特殊的存在。

　六波罗幕府的首脑。用陈旧的方式表达的话，
可以说他们是如同四天王一般的最高干部。
　既然翔京和他们有关系，自然会趾高气扬起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0440a00">
「倒不如说，田村居然能够抵抗到这个地步。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0450a07">
「想必是深爱这比赛。
　不想它变得跟赛马一样吧？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0460a00">
「原来如此。
　已经有先例了吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　在大和已经完全赌博化的赛马。
　想将其当作纯粹的运动来欣赏实在有些
<RUBY text="···">铜臭味</RUBY>太重。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0470a00">
「想到这点，本人也不禁偏向田村一方。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0480a07">
「我也有同感。虽然我也喜欢赛马。
　可让装甲竞技也变成那样实在太庸俗，
绝对的。」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0490a07">
「……所以说那个死蟹柳。
　成天一副耽美派的样子扭捏作态，对身边的
垃圾却一点也不在乎。」

{	FwC("cg/fw/fw茶々丸変装_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0500a07">
「切，所以才给人添那么多麻烦啊～」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0510a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　是在说谁呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0520a07">
「唉，就算这样也不能放弃。
　而且还不知道结果会如何。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0530a00">
「就算有六波罗做后台？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0540a07">
「推进赌博化的人的目的是大赚一笔对吧？
　那么，光有后台的威风还不够。
　还需要另一件东西。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0550a00">
「……所言极是。
　就算想出售赌马卷，可要是没人买的话就
无任何意义。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0560a07">
「就是。需要观众层的支持。
　要是观众也向赌博化倾斜就完蛋啦。」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0570a07">
「就算有六波罗撑腰也没关系。
　而且也不可能强迫人们买赌马卷………
不，虽然做是可以这样做，但还不如普通的
直接征税来得快。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0580a00">
「在这点上，推进派又有什么计划呢。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0590a07">
「获取绝对的人气。
　凭借这份人气来拉拢观众。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　<RUBY text="Ｙｏｕ　ｓｅｅ">明白了</RUBY>？少年露出这样的表情看着我。
　我点点头，直截了当地回答道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0600a00">
「初代国内统一王者。
　第一回大和ＧＰ优胜的荣冠。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0610a07">
「嗯，那确实是最大的魅力呢。
　因此翔京不惜通过借贷汇集资金，
以突击工事的方式完成
理想号的最终构想。投入到了如此地步。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0620a00">
「绝对不能失败的胜负吗。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0630a07">
「田村一方也是。
　对反对派来说，获得观众的支持就是胜利。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　谜团顿时消散。
　正是这个原因，让田村工业的机库中笼罩着一股异常
紧张的乌云。

　这场战斗输掉的话，作为一种运动的装甲竞技就会消
失。
　想必每个人都有这样的觉悟。

　我看向仍在打磨零件的皇路操。
　不管看多少次，身体依然是那么瘦小。

　她要在自己小小的背上承载起父亲的梦想，和热爱装
甲竞技的人们的愿望去飞翔。
　这不能不说是一挑重担。

　但从她清秀的相貌中，却找不到任何畏怯，迷惑乃至
疲劳。
　只能看到某种一往无前的东西。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0640a00">
（真是了不起的少女）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　这股感慨极为自然地占据了我的心胸。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆アナザー好感度＋
//$Another_Flag = $Another_Flag++;
	$ma03_011_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();


	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0650a07">
「好的。我差不多要走啦。
　还有无聊的事情要办。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0660a00">
「工作吗。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0670a07">
「说工作也算是工作吧。
　虽然只是到无聊透顶的宴会上露个面而已啦。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0680a00">
「辛苦了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　看来果然是有一定身份的人。
　估计是赞助企业的公子之流吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0690a07">
「那么，大哥哥。再～见。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0700a00">
「好的。
　能听到如此有趣的事情，本人深表感谢。」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0710a07">
「那个。
　……啊、大哥哥。稍微，过来一下。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0720a00">
「？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　小声说着，少年招了招手。
　我听从指示，弯下背脊将脸靠近过去。

　霎时间。
　冲入鼻腔的肌肤香味，让我直觉地意识到自己之前的
<RUBY text="··">误解</RUBY>——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
//◆ＳＥ：口付け
//◆復帰
	CreateColorEX("絵暗転", 5000, "#000000");
	Fade("絵暗転", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("絵背景100", 1500, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureEX("絵st100", 1500, -169, 0, "cg/st/resize/st茶々丸_通常_変装_ex.png");
	Fade("絵st100", 0, 1000, null, true);

	CreateVOICE("茶々丸","ma03/011a0735a07");
	MusicStart("茶々丸",0,1000,0,1000,null,false);

	MusicStart("茶々丸",0,1000,0,1000,null,false);

	$残時間=RemainTime("茶々丸");
	WaitKey($残時間);

	SetVolume("茶々丸", 500, 0, null);

	DrawDelete("絵暗転", 300, 100, "circle_02_00_1", true);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0730a00">
「————！」

{	FwR("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0740a07">
「凑斗景明。
　引导黄金黎明之人。」

{	FwR("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0750a07">
「对你的存在表示爱与感谢。
　……居然是声音这么温柔的男人，好高兴。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	CreateTextureSP("絵背景100", 1500, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");

	FadeDelete("上背景", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　低声这样说着。
　移开身子，<RUBY text="··">少女</RUBY>像在
说再见一般，挥挥手离开了。

　和出现时一样，唐突地消失。
　只剩下我仍然弯着腰，停在原地发愣。

　……转念想想的话。
　她为什么要跟我说那样的事情呢。

　为什么会表现得如此亲昵？
　感觉过去与她素未谋面……

　让人不得其解的地方很多，但留在这里苦苦寻思
也不是个办法。
　我向皇路父女道别之后，离开机库。

　时间是有限的。
　还必须去其他地方看看。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//フラグ発生
//$この場に留まる = true;

	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_012.nss"