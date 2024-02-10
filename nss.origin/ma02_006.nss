//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_006.nss_MAIN
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
	#bg005_山中_01=true;
	#bg022_山林a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_005.nss"

//◆山中·有道
	PrintBG("上背景", 30000);

	OnBG(100,"bg005_山中_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm26",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　离村之时已逼近日暮。
　是在辞别村长宅邸后，又花了少许时间之故吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060010a01">
《身体状况如何？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060020a00">
「不能说很好，但也没问题。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　与那官员的一战，几乎最大限度消耗了体内的
<RUBY text="卡路里">热量</RUBY>。通常要弥补这种消耗，
除了进食与休息别无他法。必须摄取易于消化的食物，
保证六小时以上的睡眠时间。

　不过现状是，迅速行动更优先于确保身体情况。
不能给那官员时间，给他反扑的机会。他受了伤，
而且恐怕尚未十分把握状况，眼下若不乘胜追击，
就会失去天时。

　在村子尽头一角发现的杂货屋里，吃了两三种
保鲜食品，轻微活动身体以促进消化，排泄之后
稍作休息。
　正好两小时。

　虽然这种程度的补给只是比什么都不做稍微好
一点，但因为舍不得花功夫去正经进食，所以也
没有别的办法。
　这种程度应该也能耐住短时间的战斗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060030a00">
「暂时不装甲，直到确认敌影。
　考虑到突袭的可能性，这样做很危险，但目前
要尽量把热量消耗降到最低。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060040a01">
《是呢……
　祈祷对手没有伏击的余力吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　走在一条未经充分铺修过的路上。
　不见村民的身影。是因为这里没有农田的缘故，
还是因非常事件而警戒着闭门不出呢，或者说，
只是因为已近黄昏？抬眼一看，已是夕阳西下。

　要在夜幕降临之前收拾干净。
　但事实会怎样呢。或许没那么容易。

　季节已是深秋。
　日落之快简直可以与打水吊桶坠入井底的速度
相比拟。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060050a00">
「向谁。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060060a01">
《咦？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060070a00">
「我，能向谁祈祷？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060080a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060090a00">
「不应向神佛祈求恩宠。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060100a01">
《……那么，许愿恶魔的庇护如何？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060110a00">
「向自己祈祷有何意义？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060120a01">
《我的意思是，向我祈祷吧。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060130a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060140a01">
《……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060150a00">
「别自恋了。
　武器。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060160a01">
《……没有自恋。
　手下。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　夕阳西下，黑夜的阴影从天边渐渐迫近。
　我加快了脚步。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆山中·無道
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　偏离了通往问题之『山』的路，进入森林。
　对于那位官员的落脚点已经非常清楚。考虑到坠落
招致的伤情，可以排除他能进行远距离移动的可能性。
要找到他并不难。

　……在树林间的穿梭前行，必须要注意不能迷失了
方向。
　因地形和时间的缘故，已经几乎不能依靠太阳来
辨别方向。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060170a00">
（应该找一个熟悉森林的指路人么）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　突然，如此想到。
　真是愚蠢的想法。

　自身安全都无法得到保证的状况下，根本没有余裕
再找个人陪同。
　或许情况的艰难诱发了内心的怯懦。

　左手的指甲嵌入右手的掌心。
　疼痛之感微微向意识发出了喝斥。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060180a00">
「有气息吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060190a01">
《对。是<RUBY text="母亲">银星号</RUBY>的……只有
这个味道，绝对不会有错。
　确实就在附近。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060200a00">
「确切的位置……还是不知道啊。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060210a01">
《我对那股气息的捕捉能力不及剑胄本身的
<RUBY text="耳朵">探査机能</RUBY>来得可靠。
　更加精确的位置就无法掌握了。不过，若在视野
范围内，就能确定了。》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060220a00">
「那边没有反应吗？
　透过<RUBY text="雷达">探査机能</RUBY>来看。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060230a01">
《……在地表，而且是这种地形的话很困难。》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060240a00">
「……确实。
　愚蠢的问题。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　在遮蔽物如此之多的场所，探查机能不可能正常运作。
　若拥有最新<RUBY text="ｗａｌｋｅｒ　ｄｒａｇｏｎ">陆战特殊型龙骑兵</RUBY>那样强大的热源探测，
也许就是另一回事了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060250a00">
「老老实实进行搜索吧。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060260a01">
《是呢。
　方向的确认交给我。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060270a00">
「也就是说可以代替<RUBY text="Ｃｏｍｐａｓｓ">方位磁针</RUBY>。
　这很有帮助。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060280a01">
《是啊。我也很感动于自己的多才多艺。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　心情欠佳的剑胄传音直接传入耳孔深处，我边听
边在林海之中穿梭前行。
　应该还未进入森林深处，却已无法辨识来自何方
又去向何方。除了树，还是树。

　若是在朝阳之下，或许还能心情愉快地散步。
　但在天色渐暗的时刻，在旁人看来，肯定只会
理解为磨练胆量或是企图自杀一类的行为。

　若非要做个选择，那就是后者吧。
　无论哪棵树的枝条看上去都很适合悬挂东西。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060290a01">
《……似乎都能听到哪里传来的悲鸣和怨念。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　村正轻声说道。
　似乎与我思考着同样的问题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060300a00">
「听说一旦说出口就会召唤来的。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060310a01">
《如果谈论这些，就会成真？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060320a00">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獣の声。うおーん。狼。
	CreateSE("SE01","se背景_動物_狼咆哮01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0179]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060330a01">
《比如这种情况？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060340a00">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　脚边撞上了什么东西。
　是树根。可能是雨水冲刷后露出的。

　确认鞋子没坏，再次迈开脚步。
　这方面还是注意些比较好。虽然不至于受伤，
但鞋子坏了的话就无法继续赶路了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060350a01">
《没事吧？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060360a00">
「没问题。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se背景_動物_狼唸り01");
	MusicStart("SE01",0,500,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060370a01">
《我说。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060380a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　停下脚步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060390a01">
《刚刚，你真的没听到？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060400a00">
「我也是这么想的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　环视周围。
　没有一样东西能引人注目。一成不变的光景。

{	CreateSE("SEL01","se自然_風_野原01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);}
　竖起耳朵。
　……寂静。什么也听不到。除却虫鸣和树叶沙沙的
自然响声，没有任何值得留意的声音。

　不过，这份寂静却反而让残留于记忆的回音更加
具有现实感。
　如此环境，无法认为会产生那样的错觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060410a00">
「并非人声。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060420a01">
《我也这么想。野狗？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060430a00">
「感觉是更大一些的野兽。
　知道方位了吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060440a01">
《知道是知道……要去吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060450a00">
「野兽不会没有理由地嚎叫。
　而且那是攻击性的声音。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060460a01">
《……你的意思是，可能有人被袭击了？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060470a00">
「如果是野兽间的争执，应该也会听到
另一只的声音，不是吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060480a01">
《确实。
　明白了，我们走吧。我带路，你跟上。
应该离这不远了。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	SetVolume("SE*", 1500, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitPlay("SE*", null);
	WaitKey(1000);

	SoundPlay("@mbgm13",0,1000,true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0256]
　……不好的预感应验了。
　世间之事往往如此。

　有人。
　此人背向我，中等尺码的学生服——是村里的
青少年吗？　他双手抱着自己的腿，在
<RUBY text="····">什么东西</RUBY>前蜷缩成一团。

　是什么。
　如果是寻常动物，从这个方向看去应该会被人影
挡住很难看清。而<RUBY text="·">它</RUBY>却一目了然。
也就是说，它非比寻常。

{	OnSE("se背景_動物_狼唸り01",1000);}
　狗。应该是山犬。和村里常见的狗有着天壤之别，
眼露凶光，毛发糙乱。
　最近，这种狗常被称为“御公仪”，以此来嘲讽
六波罗政府，它无疑是山野间危险的巡视者。

　不过，那身躯却很怪异。
　几乎相当于小型的熊。假如以后腿直立，应该能
达到人的高度。保守估计也绝非普通的狗。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060490a01">
《真是怪事。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　传来村正的低吟。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060500a01">
《村民一直以来都是和那样的野兽共存吗？　
那副躯体，应该不可能仅靠这个森林的饵料
就能满足吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　对她的疑问表示赞同。确实奇怪。
　是刚从别处流窜过来的吗？　不过眼下，似乎
必须先把这个谜搁置一边。

　二者之间的气氛非常紧张。
　面对低声沉吟的野兽，学生装扮的人纹丝不动。
究竟他是否在看那条狗呢。单看他的背影，似乎
只是在摘地面的花草。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060510a01">
《主君。要装甲么——》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060520a00">
「不必。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　那种程度的野兽，不装甲也能驱逐。
　话虽如此，回答却并非基于这层意思。

　减缓奔跑速度。扼杀脚步声，慢慢靠近。
　嘈杂的乱入会使人影惊吓，反而可能给了
野兽一个好机会。

　如果被迫接受<RUBY text="·····">本不需要的</RUBY>
帮助却陷入那般田地的话，那就太令人遗憾了。
　接近到一定程度的距离后停下脚步，将自己隐藏
在身旁的树影中。

　不过，山犬或许已察觉到陌生人的造访。
　是它发觉状况有变而下了判断吗，如最后
通牒般地扯高嗓子狂吠起来——<k><?>
{	OnSE("se背景_動物_狼猛り01",1000);}
在吠声尚且回荡之际，它朝着那个仍然漠不关心一动不动的人，张牙舞爪地就要咬上去。

　好敏捷。
　与猫科的动物不同，是犬类特有的直线加锐角的
猛冲。如果相隔距离甚远的话暂且不提，眼下近在
咫尺，这是不可能顺利躲避的。

　人影渐渐站了起来。

　那缓缓扬起脑袋的动作，比起突袭而来的山犬猛
兽，这人反而更像只熊。
　格外迟钝且缓慢。

　山犬发起狂奔。
　人影站了起来。
　
　——接触。

　那一刹那。
　得偿所愿的，并非那只以脖子为目标疾驰而来的
犬怪。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm13", 500, 0, null);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	OnSE("se人体_動作_跳躍01",1000);
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	SetBlur("絵背景100", true, 3, 500, 50, false);

	DrawTransition("絵背景100", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);
	Zoom("絵背景100", 200, 2000, 2000, null, true);

	OnSE("se戦闘_攻撃_殴る01",1000);
	OnSE("se人体_動作_床殴る01",1000);
	CreateTextureSP("絵背景110", 5010, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵背景110", 0, 1500, 1500, null, true);
	SetBlur("絵背景110", true, 3, 600, 100, false);
	Shake("絵背景110", 300, -30, 10, 0, 0, 600, null, false);
	WaitKey(200);

	CreateColorEX("絵フラ", 5100, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	Wait(800);

	PrintGO("上背景", 10000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 800, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　在时间轴上，两者最早重叠的部位，是人影的
右拳与山犬的咽喉。
　拳头的顶端，刺穿了脆弱的骨骼——被刺穿，是
<RUBY text="······">山犬自身之力</RUBY>导致了这个结局。

　宛如往针山里扔进蜜桔。
　人影只是<RUBY text="·······">把拳头放在那里</RUBY>而已。

　咔嚓……似乎听到短暂而滑稽的声音。
　或是错觉吗。

{	OnSE("se背景_動物_狼悲鳴01",1000);}
　伴随着紧接而来的一声惨叫，巨大山犬的身体如同
受过杂技训练般飞舞到半空，划出一条弧线翻落到原
本的位置。那一瞬之间的身姿给人留下了难以磨灭的
印象，几乎令人忘我。

{	CreateSE("SE01","se人体_衝撃_転倒04");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　跌落的山犬翻滚着——激烈，却短促。
　学生服的人完全站起身来，走到山犬一侧。这时，
它四肢的痉挛已经变弱，只是嘴角漏出无力的喘息，
命不久矣。

　那一击不仅是喉咙，连颈骨都击裂了吧。
　山犬不寻常的力量导致了这结果。好在无需痛苦很久
——如此一想，真是既讽刺又凄凉。

　要为它结束痛苦么，那个人犹豫了吧。不断靠近的
双脚，停下了步伐。
　在那期间，一切都结束了。最后的呼吸停止，森林回归
寂静。从人影的后背，渗透出难掩的悔意。

　看着那背影，我——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}


//◆選択：率直だ、と思う／未熟だ、と思う


..//ジャンプ指定

//◆率直だ、と思う　"ma02_006a.nss"
//◆未熟だ、と思う　"ma02_006b.nss"

//★選択肢シーン
scene ma02_006.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("让人觉得个性坦率","让人觉得不够成熟");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//率直だ、と思う　"ma02_006a.nss"
				$GameName = "ma02_006a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//未熟だ、と思う　"ma02_006b.nss"
				$GameName = "ma02_006b.nss";
		}
	}
}

