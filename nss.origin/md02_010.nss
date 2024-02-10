//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_010.nss_MAIN
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

	$GameName = "md02_011.nss";

}

scene md02_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_009.nss"

//◆庭。bg053b
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg053_堀越御所の庭_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　早饭后，来到庭院。

　稍微活动下身体。
　四肢感觉迟钝沉重也是预料之内的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0100010a00">
「变迟钝了。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0100020a01">
「才刚恢复。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　坐在庭院石头上的村正，安抚般地说着。
　是让我不要焦急吧。

　银星号就在此地——想到不知何时就必须战斗，
内心就躁动起来。
　即使任其焦虑勉强运动，也只会落得毫无意义
受伤的<RUBY text="··">下场</RUBY>。

　我抑制住自己的情绪，大幅度缓缓地做着体操。
　村正的视线也变得安心下来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0100030a00">
（银星号）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　想尽量保持冷静——
　同时我又无法从脑海中赶跑一直
在考虑的，唯一的最大敌对者。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆イメージ。ef019
	CreateTextureEX("銀星GO", 1000, @0, @0, "cg/ef/ef019_銀星号突貫04.jpg");
	Fade("銀星GO", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　真正的引辰制御。

　那个状况，别说事前反应，就连事后也难以理解
的战斗速度……
　还有，那吞尽一切的黑暗漩涡。

　凭我和村正的力量，有可能与之对抗吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0100040a00">
（不能）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　不可能的。
　从客观的角度来判定——只能判定。

　那已经超越了武者的界限。
　无法同样超越这界限的话，就没有对抗之理。

　我如此认为。

　并非看破一切，只是承认无法动摇的事实。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("銀星GO",1000,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0100050a00">
「毫无<RUBY text="··">对抗</RUBY>的办法。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0100060a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　不自觉说出口的话，旁边的村正并无反问，沉默着。
　像是理解到我心中所想般。

　银星号的攻击，是不可能对抗的。<k>
 
　————那么，先发制人就好了。

　<RUBY text="·">先</RUBY>发制人</RUBY>。

　当然，并非指不顾后果猛扑上去，冒冒失失地
一味攻击……
　如此无谋的武者，被冷静的猎师瞄准全力一击反而
容易被击毙。

　选择正确的<RUBY text="··">时机</RUBY>先发制人。

　鸟儿止于庭院的树梢上。
　像是白头翁。只有一只，静静地修整着羽毛。

　我面朝那方向，摆好架势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0100070a00">
（无明）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　将吉野御流之理融入心中。

　一般，武士道的语言大多表现为『抢占先机』。
　关于胜机胜法的说法中，后之先的说法颇为著名，
这就是与此应对之法。

　后之先是先让敌手进攻，然后就此防御并获胜的理念。
　所谓先，就是在敌人意图先攻的瞬间制服并获胜。

　着手攻击的瞬间，是毫无防备的。
　不论是谁，在攻击时必须首先产生攻击的<RUBY text="··">意识</RUBY>，
防御之意便因此消散。

　准确把握先之机，也就等于能确保胜利。

　可是，那当然并非易事。

　先之胜机造访，并非能用肉眼辨别。
　终究还是和敌方内心与自己心中的变动有关。

　而且，时间上极其短暂。
　在决定攻击到实际斩杀，很少人需要超过三秒。
强者只需一秒。若是精练的武者，
控制瞬间之内是理所当然。

　视觉无法认识的变化，要在极少时间里察觉，
还要比敌方更早行动。
　都是些恍惚难懂的苦修之道。

　吉野御流对修炼者要求的此道，称为无明。
　
　——即开拓暗夜之道。

　之后在究极此道的基础上，又上升至更高级的理。
　
　——无念。

　这是已经超越了无论是瞄准先之机，
或是取得后之先此等领域的世界。
　正如无想的字面语义，首先不作思考。

　产生想法再行动，本来便是迂回的过程。

　敌方朝我方攻击过来的事实发生。<k>
　那事实由自我意识所捕捉，而决定先发制人。<k>
　遵循想法，肉体挥下太刀。<k>
　…………迟了。

　若敌方攻击的事实已经发生，肉体立即作出反应便好。
　期间无必要夹杂意识。

　也即省下无用的意识时间差。

　无念之理。

　……不能够称之为理，而是<RUBY text="··">无理</RUBY>的存在。
　人是依靠意识和理智而生的生物，
不可能舍弃这些而行动。

　与植物不同。

　但吉野御流——多数大和的武艺诸流派，
都以勤奋锻炼来达到此种境地为理想。
　其要点，在吉野御流合战礼法教学的时候，
大致分为两点。

　其一，将所谓技之技，所谓术之术，
所谓理之理一一灌输入肉体之内。
　修炼到血、肉、骨均能记忆的程度。

　锻造出面对一切战斗状况，无需一一考虑，
肉体便作出最适合的反应，如此根基。

　……虽十分困难，但取决于努力也能成功。

　真正的至难是另一点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0100080a00">
（舍弃……吗？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　想起养父的教诲。
　以及那严厉的声线。

　世间有无数的事物。
　心所触碰之物，心所挂念之物，心所牵绊之人。

　一切都舍弃。
　毫无价值。

　世间本有价值的事物皆无，便没有让心摇动的要因。
　一切思考便能作为杂念，全部舍去。

　放弃世界，通向无念。

　这样便能得到超越感觉之感觉。
　将意识收至脑髓至近的距离，密切结合，
并非凭眼睛、耳、鼻——<k>单纯靠武将那已至
极限的肉体上覆盖的皮肤来感觉理解战况。

　如此，勿需多余的思考，肉体立即反应敌之意向。

　说着容易。
　做起来难。

　过去，有几个武者能到此境界，获剑圣之名？
　抱有这样的想法的我，是否太狂妄自大？

　不。
　要尝试。

　否则无法战胜银星号。
　对抗不可能的方法唯有先发制人将其打倒，
要压制银星号就必须做到无念。

　银星号发动攻击的瞬间，我的肉体便要反应，
那样的话才能达到平分秋色的状态。
　多余的意识夹杂其中，绝对会落后。

　无念。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0100090a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　试试看吧。

　那白头翁……
　从树梢飞起的，那个瞬间。

　摒弃意识……

　以肌肤感受，
　捕获。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 2000, 1000, null, true);
//◆ウェイト
	WaitKey(3000);
//◆ばさささ。鳥が飛び立つ
	OnSE("se背景_動物_鳥が飛び立つ", 1000);
//◆フェードイン
	Wait(300);
	FadeDelete("黒幕１",500,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0100100a00">
「…………」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0100110a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md02_011.nss"