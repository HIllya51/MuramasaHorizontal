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

scene ma03_016.nss_MAIN
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
	#bg039_競技場客席a_01=true;
	#bg038_サーキット直線_01=true;
	#bg037_競技場ガレージa_01=true;
	#ev906_アベンジ走行_a=true;
	#ev906_ウルティマ走行_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_アベンジ=true;
	#av_ウルティマ·シュール=true;

	$PreGameName = $GameName;
	$GameName = "ma03_017.nss";

}

scene ma03_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_015.nss"

//◆合流

	PrintBG("上背景", 30000);
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　广播员通过扩音器宣布有新的队伍参战。
　接着，出现在赛道上的骑体。

　
　——翔京兵商队“三城七骑众”。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm36",0,1000,true);

//◆ウルティマ。部分的表示。演出適当
	#av_ウルティマ·シュール=true;

//嶋：EV指定：ev907_ウルティマ走行.jpg
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg038_サーキット直線_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, Center, Middle, "cg/st/resize/3dウルティマ_立ち_通常_l.png");
	Move("絵ウルティマ*", 0, @+200, @-200, null, true);

	Request("絵ウルティマ1", Smoothing);
	Request("絵背景100", Smoothing);


	Move("絵背景100", 10000, @0, @+100, null, false);
	Move("絵ウルティマ*", 10000, @0, @+200, null, false);

	Fade("フラッシュ白",500,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　新骑体与名骑急升号很相似。
　与其改良骑体匕首急升号也很相似。
　与其派生骑体游击队也很相似。

　但是，与它们皆不同的是。
　……黄金之翼。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("フラッシュ白",500,1000,null,true);
//◆ウルティマ。部分的表示。演出適当
	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg038_サーキット直線_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, 0, Middle, "cg/st/resize/3dウルティマ_立ち_通常_l.png");

	CreateTextureEXadd("絵ウルティマ2", 11100, 0, Middle, "cg/st/resize/3dウルティマ_立ち_通常_l.png");

	Move("絵ウルティマ*", 0, @0, @+200, null, true);

	Move("絵背景100", 5000, @-512, @0, null, false);
	Move("絵ウルティマ*", 7000, @-2000, @0, null, false);

	Fade("フラッシュ白",300,0,null,true);

	Fade("絵ウルティマ2", 0, 700, null, false);
	DrawTransition("絵ウルティマ2", 1500, 0, 1000, 100, Dxl1, "cg/data/beam_01_00_0.png", true);

	Fade("絵ウルティマ2", 1000, 0, null, false);
	DrawTransition("絵ウルティマ2", 1000, 1000, 0, 100, Axl1, "cg/data/beam_01_00_1.png", true);

	Fade("フラッシュ白",500,1000,null,true);

	Delete("絵ウルティマ*");
	Delete("絵背景100");

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg038_サーキット直線_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, Center, Middle, "cg/st/resize/3dウルティマ_立ち_通常_l.png");
	Move("絵ウルティマ*", 0, -402, -279, null, true);

	Move("絵背景100", 0, @-25, @0, null, false);
	Move("絵ウルティマ*", 0, @-50, @0, null, true);

	Move("絵背景100", 500, @+25, @0, null, false);
	Move("絵ウルティマ*", 500, @+50, @0, null, false);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　
　——骑手来马豪。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160010a00">
「果然用了链传动这一招吗……
　但是……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160020a04">
「那装甲——
　那并不是日本铁。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160030a03">
「是的，没错。
　……那是伍兹钢。全身都是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマ。ここで全身像。
//◆モチーフはターボオプティマあたりか。
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg038_サーキット直線_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	SetShade("絵背景100", MEDIUM);

	CreateTextureSP("絵ウルティマ1", 11000, Center, Middle, "cg/st/resize/3dウルティマ_立ち_通常_l.png");
	Move("絵ウルティマ*", 0, -942, -619, null, true);
	Request("絵ウルティマ1", Smoothing);
	Zoom("絵ウルティマ1", 0, 400, 400, null, true);

	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　
　——骑体名为“理想号”。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160040a02">
「伍兹钢……听是听说过。
　是印度铁吧？　我记得它超级贵。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160050a03">
「没错。因为产量极少。
　不过重量比强度相当高的伍兹钢——作为竞
技用剑胄的材料确实很理想。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160060a04">
「至今为止有部分高端机体仅将其用于机翼等
重要部位。
　……没想到居然有人，将那最高级的钢材如
此毫不吝惜地投入到剑胄的制造中……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160070a02">
「会怎样呢？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160080a00">
「很快你就知道了。
　看赛道。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160090a02">
「咦——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　赛道上是一番异常的景象。
　黄金翅膀的骑士在直线跑道上飞驰着。

　其速度与附近跑着的好几骑基本一样。
　或者说稍微慢于他们。
　不过，就是以这几乎不变的速度——

　飞翔着。
　这骑体<RUBY text="·······">刚开始跑第一圈</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160100a02">
「……这是怎么回事？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160110a00">
「那是只怪物，就这么回事。
　当然，它大概经过了充分的试运行了吧……
即便如此。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160120a04">
「那是只能称之为异常的加速性能。
　是靠完全由伍兹钢所制这一特征所带来的不可
思议的轻量而实现这种加速的吧……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160130a03">
「它的加速性应该在决赛中发挥它的真正价值。
用它的威力杀出刚开始后的混战，之后就一心
一意地飞行就好了吧……对吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我和另外三人带着惊呆了的表情小声地发表各自的感
想。
　不，不只是我们。观众们也忘记了狂热，只是呆若木
鸡地瞪着疾驰着的那抹金色。

　就像被迷呆了一样。
　在一片通常不可能发生在比赛场地的寂静中，翔京的
“理想”——理想号以王者之姿高傲地不断飞驰着。

　两圈、三圈……
　随着圈数增加，它的异样本性愈加暴露了。

　第五圈成绩一分二十六秒八九。
　第六圈成绩一分二十六秒四四。
　第七圈成绩——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160140a00">
「……一分二十六秒二七。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160150a02">
「虽然它还在跑……
　即是说它的成绩还会再刷新吗……？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160160a03">
「……纱代。
　刚才超级猎犬的成绩是多少……？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160170a04">
「……一分二十七秒一九。
　事实上，相差了近一秒啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　每圈时间相差了一秒。
　装甲竞技这种竞技项目上，在这镰仓环道的舞台上，
把这说是压倒性差距也不为过。

　而比较对象是——
　虽然是通过外国参赛者之手但毕竟是称霸了世界的横
森锻造的超级猎犬。

　再一看，已经退场了的横锻队再次开出骑体出现在赛
道上。
　……没用的，而且没有意义。在预赛不管是赢了理想
号还是输给理想号，都无法靠此决定最终胜负。

　只要确保明天的领先，之后就只要观察敌人就足够了。
　不过，想是这么想——我觉得我似乎能理解横锻的心
情。

　很混乱。
　恐怕，已经混乱到无法做出正常判断了。

　虽说同为博彩化推进派的同伴，恐怕没有人告知横
锻关于这骑体的事吧。
　说不定本来想顺手夺得胜利，以便在博彩化后握有主
动权。

　而现在它还不肯承认这个梦想已破碎——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160180a02">
「……真是粗暴的飞行。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160190a00">
「是啊。该早点让它退下比较好。
　这样只会引发事故。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160200a03">
「翔京降落了……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160210a04">
「好像跑了十三圈就结束了。
　成绩是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　此时观众席首次恢复喧嚣。
　每个人都将目光投向显示屏。

　——一分二十五秒九七。
　如果我没记错的话，这个成绩的数值已经逼近了在镰
仓赛道竣工典礼上，所邀请来的欧洲顶级参赛者们的记
录了。

　截至目前为止，横锻队排名第二。
　……与第二名以后的队伍以一秒以上的差距位居于前。

　不知谁的低语传入耳中。<k>
　
　——那明天的决赛，不就没有再比的意义了嘛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160220a03">
「没错呢……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160230a04">
「哈。这也是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　大概她们也听到了同一句话吧。大鸟主从面面相觑。
　一条似乎有些不甘心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160240a02">
「切。什么嘛。
　这不就变成靠钱赢的嘛……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160250a00">
「没错。
　不过竞速就是这样的。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160260a00">
「财力，技术，还有运气……
　靠以上的综合能力来决胜负。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160270a00">
「要是有某方面非常优秀的话，即使其他方面
比不上他人也能获胜。
　资金上的优势特别有效的情况很多。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160280a02">
「……抱歉，凑斗先生。
　我可能还是不太喜欢这种竞技。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　对她满含歉意的声音，我未加以回答。
　我想这是理所当然的。

　理想号这台骑体的强大，在让见到的人变得狂热的同
时——也会使人知晓刚刚一条所直视到的竞速实情，让
人在内心某处感到失望。

　我自己也有这样的感觉。
　虽然觉得那是厉害家伙，却难以坦白地赞赏它。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160290a03">
「不过骑手的力量也相当了不得呢……
　骑体拥有如此强大的加速力，也就是说骑手
已经把烈马驯服了。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160300a04">
「是叫来马豪吗？
　哎，没怎么听说过呢……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160310a00">
「他成名于非专业竞速。
　他只身击溃选手培养团体『蛙之穴』，此外
还非正式地远渡海外与欧洲的选手对战过。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160320a03">
「……又是可疑的经历。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160330a00">
「他的实力确实是一流的。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160340a02">
「那就别用那台金闪闪的骑体，用实力决胜负
不就好了……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　得到优秀的骑体肯定也属于一种实力。
　不过，这我也没说出口。

　一条心中的失望，我仿佛也有共鸣。
　发觉这件事以后，我对田村获胜的期待似乎更为强烈
了。对翔京的压倒性优势我忍不住感到烦闷。

　我想起了专心打磨部件的少女的身影。
　我想起了她对我说那是父亲的心血的话。

　……翔京自己肯定也有自己的正当性。没理由因为他
们与六波罗联手，就将他们也当成邪恶的化身。
　这点道理我还明白。

　不过我还是——
　心里面老实说还是希望田村能赢。

　…………<k>

　这么说的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160350a00">
「田村怎么了？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160360a04">
「好像差不多快出来了。
　修理站的工作人员说的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　老侍从这么一说，确实背上印着熟悉的田村ｌｏｇｏ的
工作人员正在起点附近匆匆忙忙地来回跑。
　貌似皇路先生的身影也在其中。虽然帽子压得很低。

　广播响起。
　知道是最后的大人物登场，观众们喧闹起来——不知
为何散发出应付般的感觉。

　这也没办法。每个人都觉得胜负已定。
　对于长年与翔京竞争的宿敌的登场，也不怎么情绪高
涨。观众间形成了一种无聊的气氛。


　——田村甲业队“<RUBY text="田村狂战所">　Ｔ·Ｆ·Ｆ　</RUBY>”。

　在空虚的，仿佛是在剧场专门活跃气氛的人的徒劳努
力般诡异的欢呼声中，田村队准备出击了。
　那井然有序的工作模样更添悲壮感。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160370a03">
「登场有点慢呢。
　是装配花时间了吗？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160380a04">
「不知道呢。
　也许是知道在预赛上与翔京对抗不明智，故
意避开的吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　看到工作人员平静的模样，我觉得永仓侍从的说法有
说服力。
　这样来看这个判断是正确的。与那种魔物一起飞行什
么好处都没有的吧。

　虽然常说跟比自己快的参赛者一起跑的话成绩会变好。
　不过这是有限度的。若是龟兔赛跑的话，一般的乌龟
绝对会在途中就觉得自己很愚蠢而影响发挥。


　——骑手皇路操。

　瞬间，爆发了与刚刚不同的真正的欢呼声。
　皇路操是具备了超凡魅力的参赛者。平常文静的言
谈，与之相反的狂野飞行，这两者相混合形成了她独
特的魅力。

　也有很多人从她身上看到了过去的英雄的影子。
　不论世代的不同，第二代皇路以盛大的人气为豪。

　……不过本应为她的魅力而献上的声援在今天也没有
等到其本人登场就减弱了。
　瞬间的沸腾止于瞬间，观众们想起了自己的女主角
与胜利相距甚远。

　在逐渐稀疏的呼声与掌声中，她就像从云缝中射出
的微弱阳光般出现在大家面前。
　身着父亲所制作的剑胄。


　——骑体名……

　就在这一刹那。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＢＧＭ停止
	SetVolume("@mbgm*", 300, 0, null);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160390a00">
「————」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160400a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　赛场内。
　一切光亮都凝固了，所有风都停止了流动。

　所有人的思考都指向了同一方向。
  在静止的世界里，每个人都无声地问着一句话。

　——那是什么。
　——那是什么。
　——那是什么。

　<RUBY text="··">那是</RUBY>，<RUBY text="··">什么</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ。モチーフは無論タ○ヤ·アバンテ。
//◆この登場シーンの演出は凝り凝りで。
	#av_アベンジ=true;

//嶋：素材到着要調整
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);

	MovieSESet(20000,"mvアベンジ登場","se特殊_mv用_アベンジ登場");
	MovieSEStart(2000);

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg038_サーキット直線_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", MEDIUM);

	CreateTextureSP("絵アベンジ1", 11000, -333, -667, "cg/st/resize/3dアベンジ_立ち_通常_l.png");

	Move("絵背景100", 5000, @0, @+200, null, false);
	Move("絵アベンジ1", 5000, @0, @+300, null, false);
	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
  它的外形是过去无论什么企业、什么队伍都从未制作
过的。
  完全没有前例的竞技用剑胄。

　剑胄？
　这是剑胄吗？

　异形。
　扭曲的外形。
  扭曲到也许一凝视就会丧失平衡感。

  很疯狂。
  这个造型很疯狂。

  精神失常的人才会将此形状制造出来。
  绝对没错，制作者的脑神经肯定松脱了一颗螺丝钉。

  甚至唤起人想要拼命挠脸的狂躁感。
  然后，是仿佛用一根线险险取得均衡般的感慨——

　好美。
  动人心魄的美丽。

  仿佛硬将圆周率解明并描绘出来般的流线型形态。
  在那之上若是着上金属蓝色的话，那便是无尽的大海
与无垠的天空。

  异界之美。
  不允许存在之物。
  禁忌之技艺。

　如今——
  这种美丽正矗立于环道上。

  ——骑体名“<RUBY text="复仇">逆袭</RUBY>”。　

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

//◆ＢＧＭ
	SoundPlay("@mbgm03",0,1000,true);

	SetFwC("cg/fw/fw一条_驚く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160410a02">
「那……
　那是什么啊！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160420a00">
「不——不清楚。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160430a03">
「那……那真的是田村的骑体吗？
  我只能认为它跟火箭的系统从基础构想开始
就完全不一样。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160440a04">
「几乎无视了从火箭到超级火箭、飞轮，然后
是雷霆和累积至今的技术财产呢。
  ……它真的能飞起来吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。皇路父との会話


	OnSE("se擬音_フラッシュバック01",1000);
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想", 200, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");
	StL(1000, @0, @0,"cg/st/st皇路_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st操_通常_私服.png");
	FadeStA(0,true);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw皇路_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0160450b24">
「究竟会如何呢？
  或许会成为田村自始以来最大的劣作也说不
定。存在这个可能性。社内已经有人这样大声
宣扬了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	DeleteStA(0,true);
	Delete("絵回想*");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　纱代侍从的疑问与昨天我被问到的问题重叠了。
　……现在，正主都在面前了，那就只能是当然的了。

　这种构想，常人是不可能理解的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160460a00">
「…………
　构想。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160470a03">
「景明大人？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160480a00">
「那台骑体确实异样。我找不到其它合适的形
容。
  不过，我能感觉到它强烈的思想性。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160490a00">
「如果是菜鸟胡乱组装起来的话，是不会给
人这种感觉的。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160500a04">
「……我有同感。
  该怎么说好呢。虽然那台骑体在设计上是如
此无视常识，不过很和谐……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160510a00">
「嗯。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160520a03">
「是啊……
  我也能看出那模样表现出了明确的攻击性——
激烈的主张。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
  若不是这样，就不可能会这么美丽。
  那种美与被风雨雕琢的山岩经过数千年而成的无心之
美是完全不同的。
　与那种美正相反。

  过于盲目相信自己的力量的雕刻家将平凡无奇的石块
不断地刻着、刻着，让它改变到失去原貌，最终实现妄
想将之改造成光辉璀璨的宝石——就像这样的极度粗暴
的艺术。

  那就是这样的东西。
  它具有的确实的思想——即<RUBY text="··">妄想</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160530a02">
「那主张是……
　到底怎么……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160540a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　虽然她这样问我，但我不能回答。
　我必须去看它的飞行。

  这即将在下面的战场上开始——




</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆走行開始
//嶋：EV指定：ev906_アベンジ走行_a.jpg

	CreateTextureEX("絵EV100", 10000, Center, Middle, "cg/ev/ev906_アベンジ走行_a.jpg");
	CreateTextureEX("絵EV200", 10000, Center, Middle, "cg/ev/ev906_アベンジ走行_a.jpg");
	SetBlur("絵EV200", true, 3, 500, 100, false);

	OnSE("se特殊_鎧_レース_加速02",1000);

	Fade("絵EV200", 300, 500, null, false);
	Zoom("絵EV200", 500, 1200, 1200, null, false);
	Move("絵EV200", 500, @+100, @0, null, false);
	Fade("絵EV100", 300, 1000, null, true);
	Fade("絵EV200", 300, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
  ……开始是缓缓地进场。
  蓝色的骑体安静平稳地滑过直线赛道。

  平凡的加速。
  以平凡的速度到达弯道。

  第一弯道弧度不大。
  就算不怎么控制速度也能安稳地转过弯。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160550a00">
「……？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160560a03">
「…………？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160570a04">
「……哎呀……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160580a02">
「嗯？
  它刚才是不是有点慌乱？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160590a03">
「是、是的……
  也许骑手还不熟悉骑体吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　通过短短的直道，沿着和缓的弯道前进。
　速度并没有加快，不过这在第一圈来说并不奇怪。刚
刚的翔京是异常的。

　长长的斜坡。
　缓缓转弯。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160600a03">
「没有加速呢。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160610a04">
「这还是第一圈嘛。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　与外表相反毫无引人注目之处的飞行。
　观众席中失望的情绪与期待它会在后面几圈认真跑的
情绪混杂在一起逐渐扩散开来。

　大概是被这气氛所感染了吧。
  我想起了原本的目的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160620a00">
「村正。
　那是——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0160630a01">
《不是。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160640a00">
「…………
　确定吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0160650a01">
《没有任何可疑之处。
  虽然一如既往地能够感觉到银星号的气息，
不过似乎与这无关。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160660a00">
「……是吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　实情让我觉得很意外。
　因为在直觉上，我已认定了就是它。

　从那设计深处所窥见的翻滚的热情。
　我真的觉得仿佛看到了银星号……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160670a00">
「那理想号怎么样？
  就是那台有黄金机翼的骑体。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0160680a01">
《同样是什么也没有哦。
  今天至今所见到的骑体全部正常。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0160690a01">
《接下来还有骑体出场吗？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160700a00">
「不。
  这应该是最后一场了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　……怎么回事？
　不是田村也不是翔京。也不是它们以外的骑体？

　视线转回赛道。
　参加预选赛的骑体全都在这里，或者说都出现过了。
应该确实如此。最后登场的骑体，应该就是这台聚焦众
目的蓝色骑体——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160710a02">
「跳过去了!?」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160720a00">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　下意识地瞪大了眼。
　将目光再次投向逆袭骑，就在这瞬间。

　正要通过Ｕ形弯的田村骑<RUBY text="····">跳了过去</RUBY>。
　以一种抵抗由速度与回旋所带来的空气阻力失败的姿
态——

　骑体后部往上跃起。
　……喜剧般的横流。完全没有沿着弯道的曲线走。巨
大的失误。

　完全看不到皇路卓所自傲的技术的一丁点影子。
　狼狈的过弯。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160730a04">
「是转向不足还是……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160740a03">
「是倒档过头了吧。
  ……我还想说真亏它没有直接横着倒下。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160750a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　作为昨天与皇路父女对过话的人，我得克制着不说出来。
　然而心中却忍不住呻吟。

　真是糟糕的骑体。

　周围也不断有失望的声音。
　在田村的新型骑上看到可能与翔京理想号那旁若无人
的飞行对抗的唯一希望的人，一定为数不少吧。

　今天已经没什么好看的了——带着如此表情从座位上
站起身的身影依稀可见。
　特别在贵宾席里更多。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 150, "#000000");
	FadeDelete("上背景", 1000, true);

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"ma03_017.nss"