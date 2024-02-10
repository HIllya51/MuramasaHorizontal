//<continuation number="1660">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_037.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_038.nss";

}

scene md02_037.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_036.nss"


//◆会場内
	PrintBG("上背景", 30000);
	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg039_競技場客席a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm25", 0, 1000, true);
	Delete("上背景");
	DrawDelete("黒幕１", 1000, 100, "blind_01_00_0", true);


	CreateTextureEX("むらまさ", 1000, @650, InBottom, "cg/st/st村正_通常_私服.png");
	Request("むらまさ", Smoothing);
	Fade("むらまさ", 300, 1000, null, false);

	StL(1000, -236, -913, "cg/st/resize/st茶々丸_通常_変装_b_l.png");
	SetVertex("@StL*", center, bottom);
	Zoom("@StL*", 0, 500, 500, null, true);
	Request("@StL*", Smoothing);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370010a01">
「说回来，怎么这么突然？
　今天一下子就这样。」

{	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370020a07">
「我也有自己的情况啊。
　……本来还想悠闲地在伊豆多过些日子。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370030a07">
「但似乎不行了啊。
　于是决定趁还能玩的时候赶紧玩。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370040a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　幕府首脑，堀越公方。
　大概是跟政治有关的事吧——试着想想，
如此人物在自己地方惬意地生活确实奇妙。

　虽然她由于八幡宫事件的责任而谨慎行动中，
这种事也不能盲目轻信。
　恐怕一切都是在伺机。若机会出现，
就有必要返回<RUBY text="镰仓">中央</RUBY>吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370050a07">
「喔。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370060a00">
「阁下？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370070a07">
「那边那边。
　骑体出来了哟。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370080a07">
「那是翔京队？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370090a00">
「是啊。
　看上去是急升号系列。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370100a00">
「……但我觉得已经过时了。」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370110a07">
「没看出下了什么工夫呢。
　不会明年的国内战就用这个吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370120a00">
「虽说急升号是名作……
　但已跟不上时代了。」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370130a07">
「是舍不得拿出来吗？
　根本不懂得如何服务爱好者们……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370140a01">
「急升号在镰仓时也有？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370150a00">
「对。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370160a01">
「跟那个好像有点不一样。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370170a07">
「哪里？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370180a01">
「和飞行推进器附着在一起，有点奇怪。」

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370190a07">
「补助推进器？
　……啊，真的。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370200a00">
「变成<RUBY text="ｍｉｄｓｈｉｐ">中心配置</RUBY>了。
　这样……骑体的平衡会有所变化吧。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370210a07">
「做了一些朴实而有趣的东西呢。
　撤回前言吧。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370220a00">
「驱动方式或许是带式。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370230a07">
「有可能啊。
　那种改造，之前也有过。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370240a00">
「果然，ｍｉｄｓｈｉｐ和带式驱动会成为
今后的主流吗？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370250a07">
「我还是比较喜欢链式驱动啊——
　拉长了塞进去就行。带式的话，拉长了
就只能那样吧？」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370260a01">
「……？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370270a00">
「听说实现张力调整结构的骑体很快会出现。
　但较于带式，我也比较偏好于链式。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370280a07">
「哥哥也挺懂情调的。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370290a00">
「是。」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370300a07">
「通常认为，金属胜于橡胶啊。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370310a00">
「当然。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370320a07">
「链式同盟结成。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370330a00">
「不。
　要说最喜欢的还是轴驱动。」

{	FwC("cg/fw/fw茶々丸変装_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370340a07">
「是田村的!!」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370350a00">
「非常抱歉。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370360a01">
「？　……？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370370a07">
「刚说田村，田村就出来了。
　那是什么？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370380a00">
「……似乎是新作。
　印象中没有见过。」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370390a07">
「嗯……
　但那个，不觉得很像某个东西吗？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370400a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370410a07">
「主机轮廓……
　有点像逆袭骑啊。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370420a00">
「……你这么说的话。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370430a07">
「沿用那奇特的骑体构想吗？
　田村也真不可轻视啊。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370440a00">
「支持驱动轮的装置变成圆的了。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370450a01">
「呐……」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370460a07">
「看上去，足部柔性十足。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370470a00">
「耐冲击性能似乎不错……
　那样的话在转弯的时候会不会出问题呢？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370480a07">
「或许打算今天测试这个吧。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370490a00">
「原来如此。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370500a01">
「……呐，主君……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370510a00">
「唔!?
　阁下，请看那边！」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370520a07">
「嗯？　啊，富井啊。
　挺热闹的新队伍，该没什么特别—— 」

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370530a07">
「什么————!?
　双层Ｕ２钢板机甲轮廓、
中央差速器、带式驱动————!?」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370540a00">
「而且那是扭力信号装置——!!」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370550a07">
「完美装备啊！
　那家公司怎么有这样的开发能力!?
我还以为它只能做些连粘合剂都不用的
模型而已!!」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370560a00">
「这完全出乎意料啊。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370570a01">
「…………喂喂…………」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370580a00">
「骑体名字是——“侵略者”？
　或许会是这次的瞩目点。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370590a07">
「参加者的水准能发挥到什么程度还不清楚啊。
　变得越来越有趣了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370600a00">
「嗯，确实。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆茶々丸ズームアップ。
//◆合わせて村正はズームアウト。

	Move("@StL*", 300, -235, -670, null, false);
	Zoom("@StL*", 300, 750, 750, null, false);

	Move("むらまさ", 300, @50, @100, null, false);
	Zoom("むらまさ", 300, 800, 800, null, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370610a07">
「喔。<RUBY text="ＡＹＭ">青烧金属</RUBY>的出现了。
　感觉好久没见过了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370620a00">
「那也是新作吧？
　乍一看，和翔京队的急升号十分相似……」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370630a07">
「不是听说他们在海外测试吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆茶々丸ズームアップ＆村正ズームアウト
	Move("@StL*", 300, -234, -390, null, false);
	Zoom("@StL*", 300, 1000, 1000, null, false);
	Move("むらまさ", 300, @50, @0, null, false);
	Zoom("むらまさ", 300, 700, 700, null, false);

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370640a07">
「啊呀？
　话说横锻去哪儿了？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370650a00">
「没有看到。
　可能没有参加。」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370660a07">
「不，我听说会来的哟。
　是超级猎犬的最新型投入还是其他什么。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370670a00">
「最新型？
　难道说那是之前通告过的真逆————」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370680a07">
「对对，就是那个————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆茶々丸ズームアップ＆村正ズームアウト
//◆村正、超ミクロ化。そこだけライトアップ？
//◆ここ、へたれ絵とか使っても面白いかも。誰か描く？
	SetVolume("@mbgm*", 1000, 0, null);
	Move("@StL*", 300, -232, -80, null, false);
	Zoom("@StL*", 300, 1250, 1250, null, false);

	Move("むらまさ", 300, @50, @100, null, false);
	Zoom("むらまさ", 300, 500, 500, null, true);

//■ライトアップ　微妙 inc櫻井
	OnSE("se擬音_ギャグ_すっとび", 1000);
	CreateTextureEXmul("ライトアップ", 1000, @0, @0, "cg/data/beam_04_00_1.png");
	Fade("ライトアップ", 1500, 1000, null, true);
	WaitKey(2000);

//◆フェードアウト
	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1500, 1000, null, true);
	Delete("@OnBG*");
	Delete("でかちゃちゃ");
	Delete("むらまさ");
	Delete("ライトアップ");
	DeleteStA(0,true);
	OnBG(100, "bg039_競技場客席a_01.jpg");
	FadeBG(0, true);

	CreateSE("SE01L","se背景_ガヤ_サーキット02_L");
	MusicStart("SE01L",600,1000,0,1000,null,true);

	Wait(1000);

	FadeDelete("黒幕１",1500,true);

	Wait(1000);

	SoundPlay("@mbgm30", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　安慰了在竞技场里闹别扭开始张蜘蛛网的村正，
总算让她情绪好了点。一起回到客席，
赛事刚要开始。 
　一声爆响，装甲骑手们奔跑起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 3000, 400, null);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370690a00">
「怎样？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370700a07">
「翔京队有个好的开始。
　其他再看看。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　十分平静的回答。

　足利茶茶丸，眯着眼注视着赛道之上。
　但也说不上是凝视——这种类似入迷程度的样子。

　但和感到无聊的状态又有不同……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370710a00">
「有什么事吗？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370720a07">
「嗯？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370730a00">
「心不在焉的样子。」

{	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370740a07">
「不，没有那样啦。
　胜负也很值得期待。」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370750a07">
「只是今天，比起观战我更想感受气氛。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370760a00">
「气氛？」

{	FadeStR(300, false);
	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370770a01">
「……这样的？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　村正露出不解的表情也是很正常。

　装甲竞技的气氛是独特的。
　无数观众的欢呼声、热情、从赛道上传来的
<RUBY text="ｂａｒｒｅｌ">翼筒</RUBY>的声音——

　一言概之便是喧嚣。
　若是热衷于比赛的话，对这些噪音也不会感到不快，
反倒会像媚药般让人更加亢奋。
但不管赛事单单感受这般气氛不会觉得急躁吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370780a07">
「安静就好。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370790a00">
「…………」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370800a07">
「你的表情很微妙。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370810a00">
「说实话，有点难以理解。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370820a01">
「你的玩笑一点也不有趣哟。将军大人。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370830a07">
「我没有开玩笑。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370840a01">
「那是为何？」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370850a07">
「诡辩。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370860a01">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370870a00">
「……诡辩？」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370880a07">
「究竟什么才算是安静？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370890a00">
「……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370900a01">
「就是没有声音吧？」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370910a07">
「算是吧。
　但是，<RUBY text="·········">真的什么声音也没有</RUBY>这样的事可能吗？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370920a01">
「这个嘛——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　——不可能，吗？
　差别只在于人类可以听见的音域以及不可听见的音域，
不过声音是一直都产生的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370930a07">
「那么，安静究竟是何物呢？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370940a07">
「听不到多余的声音……
　不去听不想听的，这不就是安静吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0370950a00">
「……」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370960a07">
「所以说，现在特别安静。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370970a07">
「只听到比赛和哥哥的声音。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0370980a01">
「……我呢？」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0370990a07">
「对于存在物体本身不感兴趣。」

//◆コミカル怒
{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371000a01">
「那还真要谢你。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371010a00">
「原来如此。
　是那种意思的安静……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371020a01">
「主君，这种事不去理解也没关系。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371030a07">
「没错没错。
　这只是诡辩。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　说着，足利茶茶丸笑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371040a07">
「诡辩啊。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371050a00">
「……？」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371060a07">
「……就只有诡辩……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//◆ウェイト
//◆レースＳＥがフェードアウト
	OnSE("se背景_ガヤ_歓声02", 1000);
	SetVolume("SE01L*", 1000, 0, null);

	WaitKey(1000);

	SetVolume("@OnSE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　预赛结束。
　鲜艳着色的竞技用剑胄纷纷开始返回修理站。

　离下次赛事开始还有点时间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371070a07">
「关于昨天的事。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371080a00">
「昨天的？」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371090a07">
「英雄与魔王的事。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371100a00">
「……是。」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371110a07">
「怎样？
　要试试做英雄吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　足利茶茶丸一边问，一边侧目窥探这边。
　我回想起二十四小时前的一幕，郁闷地叹了口气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371120a00">
「已经试过了。」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371130a07">
「？　试过了？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371140a00">
「是的。昨天听阁下的话后。
　遇上光，以“无我”挑战过她。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　那个时候，我确实触碰到无我这一境界。
　能感受到自己感知的扩大——即便是只有一瞬间。

　但，结果。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371150a00">
「结果反而看丢了光的动态。
　本来明白她就站在离我很近的距离，却连
这个事实都开始怀疑的程度……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371160a00">
「我这还真是丢脸啊。」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371170a07">
「……呼？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371180a00">
「若无我真是英雄之道，那还是不适合我。
　总觉得有种被无我世界拒绝的感觉。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371190a00">
「还是说，我只是单纯地将无我的
理念理解成了完全不同的东西？
　不管怎样，似乎只能放弃。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　得出结论后，不可否认心中的石头落了下来。
　本以为，堀越公方应该会愕然吧
——但实际却有不同反应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371200a07">
「这样啊？
　或许，正好相反。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371210a00">
「……相反，指的是？」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371220a07">
「哥哥你并不是看丢了公主的动态……
　或许是<RUBY text="·······">终于触碰到真实</RUBY>。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371230a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　真实？
　那不管有或无都无法捕捉的模糊<RUBY text="ｉｍａｇｅ">认识</RUBY>？

　……意义不明。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371240a01">
「意义不明啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　一直沉默的村正代我说出心中所想。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371250a07">
「是吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371260a01">
「……虽然我说了多余的话有些抱歉。
　但请不要对主君灌输这些
含糊的东西来让他困扰。」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371270a07">
「最近流行，拜托别人的时候，
头伏下的动作哟。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371280a01">
「啊呀是吗。那真感谢你告诉我。
　那么也顺便告诉我……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371290a01">
「听到令人生厌的小姑娘说话的时候该怎么办？」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371300a07">
「哎呀。有那样的人在吗？
　如果是惹人爱的花儿般的小姐，倒也
有些线索。」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371310a01">
「我可没说要马上在这里用吧？
　虽然会用。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371320a00">
「村正。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371330a01">
「……主君也……
　倾听别人说话是不错，但是也要选对人。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371340a01">
「请不要忘记这中将大人可是银星号的同伴。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371350a00">
「……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371360a01">
「——抱歉。
　刚才的话，不算。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371370a01">
「真是说了多余的话。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371380a00">
「没什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　我理解村正的着急。
　堀越公方应该不是站在我这边的。
明明这样我还对她所说的话一一烦恼，
看着这样的我自然会变得不安。

　也不是没有察觉到自己的奇怪之处。
　只是……不知为何足利茶茶丸的话总是无法忽视，
无论怎样都会留到耳边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371390a07">
「嗯。没什么多余不多余的。
　又没有歪曲加工，算是妥当的忠告。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371400a01">
「……」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371410a07">
「不过，你弄错了一件事。
　我说过，我没有站到公主那边。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371420a01">
「……包括这一点，我觉得完全无法信任。」

{	FwC("cg/fw/fw茶々丸変装_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371430a07">
「跟我胸围是九十五公分一样，是的的确确的
事实啊……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371440a01">
「那绝对是骗人的吧!!」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371450a00">
「……先不说是敌是友。
　阁下，刚才您的意见，
不单是村正，我也无法理解。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371460a00">
「若光只是海市蜃楼的话，意思上倒还
说得通。但是……」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371470a07">
「海市蜃楼。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　堀越公方像是在品味般，复述了那个词语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371480a07">
「海市蜃楼啊……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371490a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　少女没有看我。
　她看往为准备下场赛事的工作人员到处走动的方向，
竞技赛场的方向。

　即便如此我也知道。

　足利茶茶丸在笑。
　既不是讥笑，也不是嘲笑。

　只是，在听到<RUBY text="·····">不错的玩笑</RUBY>时，那种可笑的感觉。
　……在喉咙深处咕嘟咕嘟地，隐隐笑着。

　我有必要问一下。
　问她知道些什么。

　现在问的话，或许她会说出真相。

　为何，我会这么想呢。

　应该问她。<k>
　
　……为何，我问不出口。

　为什么？
　不，根本不存在疑问。

　明知道能问出真相，却没有问出口。
这一定<RUBY text="·········">是因为不想知道真相</RUBY>。

　我直觉这么认为。
　问了这个，知道之后，就是最后的结局了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371500a07">
「哥哥你果然厉害。
　果然……有做英雄的资质。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371510a07">
「无我的修行该继续哟。
　哥哥你一定能成为英雄的。」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371520a07">
「战胜<RUBY text="公主">魔王</RUBY>。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371530a00">
「……你到底……」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371540a07">
「呼……呼呼呼……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371550a00">
「……」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371560a07">
「这么好的气氛。
　碍事的却来了啊。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371570a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　碍事的？

　看向竞技场。
　……并无什么戏剧性的变化。
似乎离赛事再度开始还有点时间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸変装_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371580a07">
「另一种意义的英雄们也来了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371590a00">
「阁下？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371600a07">
「哥哥你感觉不到吗？
　虽然离得有点远……」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371610a07">
「既然这样……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　冷不防，少女伸出手。
　放到我胸前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371620a01">
「？　在干什么？」

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0371630a07">
「你闭嘴。
　到一边抓苍蝇吃吧你。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371640a01">
「你这混蛋——」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0371650a00">
「村正，且慢。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0371660a01">
「主君？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　……这是，什么？

　一点点地在接近，这——<k>
　
　声音？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//■暫定ホワイトアウト　inc櫻井
	CreateColorEX("ホワイトアウト１", 5000, "WHITE");
	Fade("ホワイトアウト１",3000, 3000, null, true);


}

..//ジャンプ指定
//次ファイル　"md02_038.nss"