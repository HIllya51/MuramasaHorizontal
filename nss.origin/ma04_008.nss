//<continuation number="2110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_008.nss_MAIN
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

//	$Kanae_Dead = true;
//	$Ichizyou_Dead = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($Ichizyou_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($Kanae_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else{
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}

	$PreGameName = $GameName;

	$GameName = "ma04_009.nss";

}

scene ma04_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_007.nss"

//◆江ノ島南部沿岸
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我们踏上江之岛的时候，已然深更半夜了。
原因在于筹备小船时费了不少功夫，
而且我们又不习惯划船。
　距黎明还剩不到几刻钟的时间。

　看来今天只能暂且熟悉一下环境，
就匆匆结束。
　别说绕着小岛巡探一圈了，就连观察幕府
研究所的时间都压根挤不出来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}


..//分岐
//◆分岐。一条、香奈枝共に生存なら０７Ａ、香奈枝死亡なら０７Ｂ、一条死亡なら０７Ｃ
scene ma04_008.nss_all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_007.nss"

//◆江ノ島南部沿岸
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――
.//●０７Ａ

	StL(1000, @-60, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080010a03">
「我们分头行动，如何？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080020a00">
「我劝您放弃吧。
　就效率来说，的确分头行动是上策，
但黎明之前我们必须撤退，顶多还剩下一、
两个小时了。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080030a00">
「所以横竖都是没什么成果可期待的。
再者，遭遇巡逻的武者或真实存在与否
仍未得到确定的“怪物”等危险时，
能够与其对峙的只有我一人。这也是个问题。」

{	StCL(1000, @60, @0,"cg/st/stさよ_通常_私服.png");
	FadeStCL(300,false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080040a04">
「这倒也是呀……」

{	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080050a02">
「……对不起。
　如果我有能力战斗的话，这种情况下
就不会拖后腿了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080060a00">
「你别误会。
　我本来就是负责战斗的人。
我只期待你和大尉阁下能协助我进行搜查，
别的没有。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080070a00">
「而你已经充分回应了我的期待，
　所以没必要内疚。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080080a02">
「……嗯。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080090a02">
「…………但是，我…………
　我希望能帮上你更多的忙…………」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080100a02">
「更多的……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080110a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我对这句低声细语充耳不闻。
　因为我觉得这样做比较妥当。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080120a03">
「呵呵呵我听到了哟一条小姐！」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080130a04">
「您给我看看气氛再开口啦！」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080140a03">
「你是这意思对吧！
　你想要更拼命地侍奉景明大人！
哎呀这孩子可真大胆！」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080150a02">
「我才没说这么色情的话呢！」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080160a03">
「哎呀？　哎呀哎呀？
哎呀瞧你这话说的。
　到底哪里色情啦？你是如何理解我的话啦？
麻烦告诉我吧！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080170a00">
「开始行动。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080180a02">
「好的。」

{	Move("@StR*", 200, @30, @0, DxlAuto, false);
	DeleteStR(200,false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080190a04">
「我们走吧。」

{	Move("@StML*", 200, @-30, @0, DxlAuto, false);
	DeleteStCL(300,false);
	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080200a03">
「……最近我似乎严重地
受人怠慢……」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080210a04">
「闭嘴，大小姐。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆島·森林
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　说实话，我根本没期待这次调查能取得
什么进展。
　熟悉一下环境，能使从今往后的调查进行得更顺利吧。
我只有这点儿打算。

　但是。
　没过几分钟，岛上异常氛围的冰山一角
就展现在我们眼前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080220a00">
「……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080230a03">
「……」

{	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080240a02">
「……请问。
　凑斗先生。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080250a00">
「什么事？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080260a02">
「好像……有些怪怪的？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080270a00">
「什么意思？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080280a02">
「……我不知道该怎么形容。」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080290a02">
「…………」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080300a02">
「就像行走在温室里一样……吧？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080310a00">
「是个贴切的比喻。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080320a04">
「诚然。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080330a02">
「……什么意思？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080340a03">
「这里没有动物。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080350a02">
「……啊！」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080360a02">
「这样啊……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080370a00">
「野生动物本来也就不常出现在人类
这种迟钝的生物面前。
　不过，如今它们无影无踪，这还是
十分异常的。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080380a04">
「“温室”这种形容真是很贴切啊。
简直就像所有动物都被
驱逐出境了一般……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080390a03">
「在我们登陆那一带，还没出现
这种情况呢。
　反之，那里富有各种野兽昆虫。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080400a00">
「正如情报所示，海里也能看见众多鱼类。
　而另一方面，这里却宛若死后世界。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080410a02">
「明明植物都很正常，为什么……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080420a03">
「不对。
　树木的情况也与登陆地点
有异。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080430a04">
「您说什么，大小姐？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080440a03">
「只借着月光，很难看清吧……它们
枯萎了啊。越往前进，枯萎得越严重。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080450a00">
「……海湾附近又是何种情况？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080460a03">
「那里生长得很茂盛啊。
　如此繁茂，就时节来看，也是很古怪的……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080470a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　生物的成长受到了异常催生的地区，
　以及，与其相反生命尽数枯竭的地区。

　——怎么回事？
　到底为何会如此<RUBY text="ｂａｌａｎｃｅ">均衡</RUBY>失调？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆島·荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　大鸟大尉的观点没有错误。

　如今展现于眼前的光景。
　这正可谓是万物枯竭至极的景象。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080480a00">
「……怎么会这样？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080490a02">
「…………」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080500a03">
「江之岛明明正是以丰富的自然资源
为卖点来着。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080510a04">
「可这……
　连自然资源的影子都看不见啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


...//以下のテキストは各ルート共通
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　枯竭。
　一切都枯竭了。

　在沥青路上都会见缝插针生根发芽的杂草，
此处却变成了枯黄色，十分凄凉。
　至于昆虫，更是无影无踪。别的动物也就不用提了。

　土壤也枯燥不堪。
　我用指尖捏起一撮，碎土就立刻崩溃瓦解，
变成散沙，回归地面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080520a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080530a03">
「幕府到底在这里做了什么？」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080540a02">
「肯定没做什么好事。
　虽然他们从来就没干过任何正经事，
但这次这件事看来是糟糕
透顶了。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080550a04">
「很遗憾，我举双手赞同。
　他们在这里进行的事情……
看来是件无聊至极的麻烦事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我背对着她们，边倾听着身后传来的自言自语，边思考着
稍稍有违于她们话题的事情。
　幕府——如果这只是幕府一手策划实施的事，
倒还算好。不，其实也不好……

　问题是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080560a00">
（你怎么想？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我问村正。
　它现在应该正躲在暗处，窥探四周情形。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0080570a01">
《嗯……
　虽然还无法断言详情。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080580a00">
（嗯）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0080590a01">
《如果说这些现象的起因是<RUBY text="····">重力异常</RUBY>
……也没什么奇怪的吧。
　因为我也无法完全衡量出银星号的能力……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080600a00">
（有银星号的气息么？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0080610a01">
《至少现在还……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080620a00">
（没有？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0080630a01">
《嗯。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　当然，我们还并未巡察岛上的所有地方。
　只看过一小部分而已。

　正如村正所言，当下什么都不能断言。
　即使不吉的脚步声——已经响亮得震痛耳膜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080640a00">
「大尉阁下……」

{	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080650a03">
「什么事？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080660a00">
「您在我们当中，眼神应该最好。
　那里……您知道那里有什么吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080670a03">
「您指……那处空地吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080680a00">
「是的。
　地面上……有没有什么东西？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080690a03">
「…………」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080700a02">
「我过去看看吧？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080710a00">
「稍等。那里的视野太开阔了。
　我不太想靠近。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080720a04">
「如果正好巡逻者路过这里，
我们就被一击毙命了。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080730a04">
「请交给大小姐吧。
　她也就这种情况才有出场机会了。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080740a03">
「…………」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080750a04">
「……您不吐槽，我反而
有些寂寞了啦……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080760a02">
「你们实际上不是主从，而是
扮作主从的相声搭档吧？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080770a00">
「大尉。
　怎么样？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080780a03">
「……的确。
　的确有东西……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080790a03">
「类似车辙的东西。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080800a00">
「车辙？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080810a03">
「有个深邃的阴沟。
　拉着一辆巨型大板车，大概就能留下
那样的痕迹……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080820a00">
「巨型……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080830a03">
「嗯，特别巨大。
　如果它不是为了某种目的而挖掘出来的坑，
而真的是某种东西移动时留下的痕迹，
那么，这东西肯定是个可怕的怪物。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　说完，大尉噤声了。
　无疑是因为她因自己的话而
回想起了某件事。

　怪物——<k>
『看见了银色的怪物。』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080840a04">
「……这该怎么说呢？
　我感觉自己就像是闯进了
库珀导演的电影中一样。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080850a03">
「没错。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080860a02">
「……到底是什么啊？
　这岛上到底有什么啊……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080870a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　一切都仍未明了。
　没有任何人的踪影。

　银星号在这里吗？
　亦或者这里有寄生体——

　六波罗在这里干了什么？
　真的有所谓的兵器存在吗？

　——我什么都不知道。
　然而。

　很明显，一定有<RUBY text="····">什么东西</RUBY>在这里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//ここまで


..//ジャンプ指定
//次ファイル　"ma04_009.nss"

}



//――――――――――――――――――――――――――――――
.//●０７Ｂ
scene ma04_008.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_007.nss"

//◆江ノ島南部沿岸
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080880a00">
「本次不要勉强行事。
　自现在起一小时之内进行情报收集，之后就撤退。
接着为下次机会做准备。」

{	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080890a02">
「今天不解决问题吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080900a00">
「现在还不知道该解决的问题到底是<RUBY text="··">什么</RUBY>。
　我们不可能在黎明之前把握状况，
然后决定并完成其必要行动。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080910a00">
「如果太阳升起后还待在岛上继续调查，
就不可避免与幕府侧势力发生冲突。
我方缺少地利，所以不可以
幻想能够避免接触。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080920a00">
「若必须要与幕府交战，也无可奈何；
但状况还没弄清楚，我们不能
轻举妄动地踏入赌局。
　明白了么？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080930a02">
「……嗯。
　我明白了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080940a00">
「那么就开始行动。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080950a02">
「是……啊，我们不分头行动吗？
时间有限，我认为分头行动
更有效率。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080960a00">
「话是没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我稍作沉思。
　但最后还是摇了摇头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080970a00">
「遭遇巡逻的武者或真实存在与否
仍未得到确定的“怪物”等危险时，
没有我不行。
　至少在弄清楚情况之前，不允许分头行动。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080980a02">
「……对不起。
　如果我有能力战斗的话，这种情况下
就不会拖后腿了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080990a00">
「你别误会。
　我本来就是负责战斗的人。
我只期待你能协助我进行搜查，
别的没有。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081000a00">
「而你已经充分回应了我的期待，
　所以没必要内疚。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081010a02">
「……嗯。」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081020a02">
「…………但是，我…………
　我希望能帮上你更多的忙…………」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081030a02">
「更多的……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081040a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　我对这句低声细语充耳不闻。
　因为我觉得这样做比较妥当。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081050a00">
「走吧。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081060a02">
「好的……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆島·森林
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　说实话，我根本没期待这次调查能取得
什么进展。
　熟悉一下气氛，能使今后的调查进行得更顺利吧。
只有这点儿打算。

　但是。
　没过几分钟，岛上异常氛围的冰山一角
就展现在我们眼前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081070a00">
「……」

{	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081080a02">
「……请问。
　凑斗先生。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081090a00">
「什么事？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081100a02">
「好像……有些怪怪的？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081110a00">
「什么意思？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081120a02">
「……我不知道该怎么形容。」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081130a02">
「…………」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081140a02">
「就像行走在温室里一样……
吧？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081150a00">
「是个贴切的比喻。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081160a02">
「……什么意思？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081170a00">
「这里没有动物。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081180a02">
「……啊！」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081190a02">
「这样啊……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081200a00">
「野生动物本来也就不常出现在人类
这种迟钝的生物面前。
　不过，如今它们无影无踪，还是
十分异常的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　登陆地附近，则正相反。
　我听到了不少被人烟惊吓而连忙四处逃窜时发出的微小声响。
同时在海里看见了众多鱼类，
这也印证了芳养少年的情报。

　我们所走过的路还不到几里。
　可是变化却如此之大。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081210a02">
「明明植物的状态都很平常，为什么……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081220a00">
「我不知道。
　也许植物的情况也有异常，只是现在一片黑暗，
看不清罢了。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081230a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　生物的成长受到异常催生的地区，
　以及，与其相反生命尽数枯竭的地区。

　——怎么回事？
　到底为何会如此<RUBY text="ｂａｌａｎｃｅ">均衡</RUBY>失调？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆島·荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　……我们停下脚步。

　如今展现于眼前的光景。
　这正可谓是万物枯竭至极的景象。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);
	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081240a00">
「……怎么会这样？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081250a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);


...//以下のテキストは各ルート共通
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　枯竭。
　一切都枯竭了。

　在沥青路上都会见缝插针生根发芽的杂草，
此处却变成了枯黄色，十分凄凉。
　至于昆虫，更是无影无踪。别的动物也就不用提了。

　土壤也枯燥不堪。
　我用指尖捏起一撮，碎土就立刻崩溃瓦解，
变成散沙，回归地面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081260a00">
「……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081270a02">
「凑斗先生。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081280a00">
「嗯……」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081290a02">
「虽然我不知道六波罗有什么阴谋，
但其中一定有鬼。
　肯定没错。」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081300a02">
「他们肯定在做些<RUBY text="·····">不正经的事</RUBY>。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081310a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　我背对着她，边倾听着身后传来的自言自语，边思考着
稍稍有违于她话题的事情。
　幕府――如果这只是幕府一手策划实施的事，倒还算好。
不，其实也不好……

　问题是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081320a00">
（你怎么想？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　我问村正。
　她现在应该正躲在暗处，窥探四周情形。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081330a01">
《嗯……
　虽然还无法断言
详情。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081340a00">
（嗯）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081350a01">
《如果说这些现象的起因是<RUBY text="····">重力异常</RUBY>
……也没什么不可思议吧。
　因为我也无法完全衡量出银星号的
能力……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081360a00">
（有银星号的气息么？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081370a01">
《至少现在还……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081380a00">
（没有？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081390a01">
《嗯。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　当然，我们还并未巡察岛上的所有地方。
　只看过一小部分而已。

　正如村正所言，当下什么都不能断言。
　即使不吉的脚步声――已经响亮得震痛耳膜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081400a00">
「一条。」

{	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,false);
	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081410a02">
「嗯。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081420a00">
「你能看清那里有什么吗？
　你看，就是那片空地。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081430a02">
「……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081440a00">
「地面上……有没有什么东西？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081450a02">
「……那是什么啊？
　我过去看看。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081460a00">
「且慢。那里没有任何遮蔽物。
　万一有卫兵路过，可就糟了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081470a00">
「从这里望去，看不清吗？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081480a02">
「……勉强能看到。
　好像地面
<RUBY text="····">向下塌陷</RUBY>了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081490a00">
「我也只能看明白这些。
　不过这……令人在意。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081500a02">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081510a00">
「据我所见……
　它看起来像是沉重巨大的东西落下来
所造成的痕迹。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081520a02">
「……“怪物”……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081530a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410a]
　——怪物。<k>
『看见了银色的怪物。』

　这一切的起因，就像是传奇小说的开端一般。
　我本以为那只是陈腐的流言，但逐渐逼近的
现状却孕育出恐怖事实的气息。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410b]
　一切都仍未明了。
　没有任何人的踪影。

　银星号在这里吗？
　亦或者这里有寄生体——

　六波罗在这里干了什么？
　真的有所谓的兵器存在吗？

　——我什么都不知道。
　然而。

　很明显，一定有<RUBY text="····">什么东西</RUBY>在这里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//ここまで


..//ジャンプ指定
//次ファイル　"ma04_009.nss"


}


//――――――――――――――――――――――――――――――
.//●０７Ｃ
scene ma04_008.nss_ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_007.nss"

//◆江ノ島南部沿岸
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//嶋：voice/ma04/0080010a03
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081540a03">
「我们分头行动，如何？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081550a00">
「我劝您放弃吧。
　就效率来说，的确分头行动是上策，
但黎明之前我们必须撤退，顶多还剩下一、
两个小时了。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081560a00">
「所以横竖都是没什么成果可期待的。
再来，遭遇巡逻的武者或真实存在与否
仍未得到确定的“怪物”等危险时，
能够与其对峙的只有我一人。这也是个问题。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//嶋：チェック45
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081570a03">
「这倒也是呀……
　啊啊，我是多么怨恨自己
这不被景明大人守护着，就寸步难行的
蒲柳之身呀！」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081580a04">
「噗。」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//嶋：チェック45
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081590a03">
「…………婆～婆～？
　你这是怎么啦？　你也犯咳嗽了？」

{	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081600a04">
「哎，看来真是如此呀。
　在下纱代也差不多上年龄
啦……」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//嶋：チェック45
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081610a03">
「嗯呵呵，是么？
　那就多保重身体呀，婆婆？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081620a04">
「是，多谢您的关心。
　话说回来，凑斗大人。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081630a00">
「嗯。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081640a04">
「蒲柳之身这辞藻形容的是
梦幻而脆弱的事物。
　它决不是比喻死皮赖脸、厚颜无耻、
恬不知耻的词汇。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081650a00">
「在下知道。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081660a04">
「即使觉得文脉不通，
也请点头附和吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081670a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ガチャ。コッキングレバー引き込み
	CreateSE("SE01","se戦闘_銃器_構える01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//嶋：チェック45
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081680a03">
「爸爸是一名勇敢的战士～
　他是个誓死不逃的男人～
　但是致命伤出现在背后～
　为何，为什么，爸爸你怎么啦～_」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆島·森林
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　说实话，我根本没期待这次调查能取得
什么进展。
　熟悉一下气氛，能使今后的调查进行得更顺利吧。
我只有这点儿打算。

　但是。
　没过几分钟，岛上异常氛围的冰山一角
就展现在我们眼前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081690a00">
「……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081700a03">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081710a04">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　每个人都变得寡言了，这当然是因为我们知道
是隐秘行动。可是。
　即便现在正在进行野餐，我们之间也不一定
能找到话题。

　虽然没明说，但无疑每个人都已经
注意到了。
　这份<RUBY text="··">虚无</RUBY>的感觉。这种寒意让人
无法无视。

　没有生命的迹象。
　<RUBY text="····">没有动物</RUBY>。

　本来，知觉敏锐的野生动物就
不常在人类面前现身。
　但连远远奔跑时发出的声响、微弱的呼吸和
警戒着侵入者的眼神——一切都不见了。这到底……

　江之岛的自然环境本应该受到精心的保护，
可现在却是这幅德行。
　这到底是怎么回事？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081720a03">
「……在我们登陆的地方，还没出现
这种情况呢。
　反而是富有各种野兽昆虫。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081730a00">
「正如情报所示，海里也能看见众多鱼类。
　而另一方面，这里却宛若死后世界。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081740a04">
「植物看起来倒是都挺正常的……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081750a03">
「不对。
　树木的情况也与登陆地
有异。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081760a04">
「您说什么，大小姐？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081770a03">
「只借着月光，很难看清吧。
　……它们枯萎了啊。越往前进，枯萎得越严重。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081780a00">
「……海湾附近又是何种情况？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081790a03">
「那里生长得很茂盛啊。
　如此繁茂，就时节来看，也是很古怪的……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081800a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　生物的成长受到异常催生的地区，
　以及，与其相反生命尽数枯竭的地区。

　——怎么回事？
　到底为何会如此<RUBY text="ｂａｌａｎｃｅ">均衡</RUBY>失调？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆島·荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　大鸟大尉的观点没有错误。

　如今展现于眼前的光景。
　这正可谓是万物枯竭至极的景象。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081810a00">
「……怎么会这样？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081820a03">
「……江之岛明明是以丰富的自然资源
为卖点来着。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081830a04">
「可这……
　连自然资源的影子都看不见啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


...//以下のテキストは各ルート共通
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　枯竭。
　一切都枯竭了。

　在沥青路上都会见缝插针生根发芽的杂草，
此处却变成了枯黄色，十分凄凉。
　至于昆虫，更是无影无踪。别的动物也就不用提了。

　土壤也枯燥不堪。
　我用指尖捏起一撮，碎土就立刻崩溃瓦解，
变成散沙，回归地面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081840a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081850a03">
「幕府到底在这里做了什么？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081860a04">
「这个啊……
　我能想象得到，那肯定是一件无聊至极的
麻烦事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　我背对着她，边倾听着身后传来的自言自语，边思考着
稍稍有违于她话题的事情。
　幕府——如果这只是幕府一手策划实施的事，倒还算好
的。不，其实也不好……

　问题是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081870a00">
（你怎么想？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　我问村正。
　她现在应该正躲在暗处，窥探四周情形。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081880a01">
《嗯……
　虽然还无法断言
详情。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081890a00">
（嗯）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081900a01">
《如果说这些现象的起因是<RUBY text="····">重力异常</RUBY>
……也没什么不可思议吧。
　因为我也无法完全衡量出银星号的
能力……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081910a00">
（有银星号的气息么？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081920a01">
《至少现在还……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081930a00">
（没有？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081940a01">
《嗯。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　当然，我们还并未巡察岛上的所有地方。
　只看过一小部分而已。

　正如村正所言，当下什么都不能断言。
　即使不吉的脚步声——已经响亮得震痛耳膜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081950a00">
「大尉阁下……」

{	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081960a03">
「什么事？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081970a00">
「您在我们当中，眼神应该最好。
　那里……您知道那里有什么吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081980a03">
「你指……那处空地吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081990a00">
「是的。
　地面上……有没有什么东西？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082000a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0082010a04">
「我比较希望能靠近过去确认……
　但那里视野太开阔了啊。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0082020a00">
「是。这里不可能没有巡逻卫兵，
所以我们不能大摇大摆地走出去。
　……怎么样？　大尉。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082030a03">
「……的确。
　的确有东西……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082040a03">
「类似车辙的东西。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0082050a00">
「车辙？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082060a03">
「有个深邃的阴沟。
　拉着一辆巨型大板车，大概就能留下
那样的痕迹……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0082070a00">
「巨大……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082080a03">
「嗯，特别巨大。
　如果它不是为了某种目的而挖掘出来的坑，
而真的是某种东西移动时留下的痕迹，
那么，这东西肯定是个可怕的怪物。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　说完，大尉噤声了。
　无疑是因为她因自己的话而
回想起了某件事。

　怪物――<k>
『看见了银色的怪物。』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0082090a04">
「……这该怎么说呢？
　我感觉自己就像是闯进了
库珀监督的电影中一样。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082100a03">
「真的呢。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0082110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　一切都仍未明了。
　没有任何人的踪影。

　银星号在这里吗？
　亦或者这里有寄生体——

　六波罗在这里干了什么？
　真的有所谓的兵器存在吗？

　——我什么都不知道。
　然而。

　很明显，一定有<RUBY text="····">什么东西</RUBY>在这里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//ここまで

}

..//ジャンプ指定
//次ファイル　"ma04_009.nss"