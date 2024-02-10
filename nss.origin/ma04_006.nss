//<continuation number="1870">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_006.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		call_scene $MainGameName;
		GameMainSet();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg042_沿岸_01 = true;
	#bg041_片瀬海岸_01 = true;
	#bg040_江ノ島全景_01 = true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_芳養=true;

	$PreGameName = $GameName;

	$GameName = "ma04_007.nss";

}

scene ma04_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_005.nss"
//前ファイル　"ma04_005z.nss"

//●０６
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg040_江ノ島全景_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　花了一个多小时进行调查，却没有什么像样的
收获。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　关于江之岛周边的异常现象，我们打听的人一般会
有两种反应。一种大概是当地居民。
　他们一概口风很紧。明显这个话题让他们很是为
难。理由也不难想象——幕府的存在。

　另一种是通过道听途说，为了享受难得的深秋海
水浴而前来的人们。他们的口风不严。
　然而，他们却毫不知情。有人说出自己的推测，但
却没有事实证据。

　有人说从海底涌出了温泉，有人说是焚风现象的一
种，还有人说是六波罗的火力发电计划……等等。
　得到的全都是称不上情报的传言，调查活动遇到了
瓶颈。

　说到知晓内情，就只有当地居民了吧。
　恐怕幕府还没有对他们发布缄口令。如果已经发
布，那被我问起的第一反应该是害怕才对——然而
事实上却有些不同。

　他们的反应像是在忌讳着什么。
　也就是说，他们是不想被六波罗这个名字
所代表的暴力牵扯进来吧。
　于是想要回避将其恶名昭示天下的江之岛。

　这个时代，在眼下的大和，也是人之常情。
　幕府也正是因为知道这一点，才没有特意花费力气来
封住他们的口吧。

　不但毫无意义，说不定还会造成一石激起千层浪的反
效果。按照人类心理，越是禁忌就越是具有吸引力。
　六波罗真是把市民了解得足够通透。
就压制这一点而言。

　当地居民的嘴巴像上了锁一样，想要撬开他们的嘴就得
能言善辩，而我连做梦都不敢想象自己能拥有这种才能。
　……不知有没有能言善道的本地居民。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵上面", 5100);
	Wait(1);
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,false);
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(0,true);
	FadeDelete("絵上面", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0060010a01">
《总之……
　这附近好像没有银星号的迹象。主君。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060020a00">
「那岛上呢？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0060030a01">
《我也不清楚。
　如果要查探全岛的<RUBY text="··">气味</RUBY>，就得踏上海岛。
……否则至少也要绕岛一周才行。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060040a00">
「也对。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　江之岛曾经正如其名，是个孤岛，只在退潮时才出现
通往本州的道路。然而大约二十年前发生了一场大地
震，地形也随之改变，成为了陆系岛。
只要有心，想要上岛并非难事。

　虽然，如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0060050a01">
《飞起来试试看？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060060a00">
「这种做法<RUBY text="ｒｉｓｋ">危险</RUBY>太大。
　眼下还是尽量避免。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 5100, Center, Middle, "cg/bg/bg040_江ノ島全景_01.jpg");
	Fade("絵背景100", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　隔海遥望着前方小山一般的海岛。
　那里看不到煞风景的瞭望台以及对空对海的炮塔之
类的俗物。

　然而，如果那里就是需要将外人隔绝在外的六波罗要
所，针对武者的防御措施必然不可能没加强。
步行前往自不必说，乘船或是飞行接近也会被其捕捉，
发生战斗。

　如果事情与银星号有关，虽然还可以选择强行突破，
但是——调查才刚开始，在还未确定是否与银星号有关
之前就贸然行事，实在太过鲁莽。
　现在下决断还为时过早。

　必须先找出潜入方法。
　为此，无论如何都需要一位深谙地理及当前局势的人
给予协助……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0060070a01">
《主君。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060080a00">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(0,true);

	CreateTextureSP("絵背景1000", 1000, Center, Middle, "cg/bg/bg042_沿岸_01.jpg");


	FadeDelete("絵背景100", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　受到剑胄传音的提醒回过神来，周围已没有
人迹。
　散步的时候陷入了沉思，好像已经走出了沙滩。
周围是怪石嶙峋的山坡。

　待在这种地方也不是办法。
　我正要转身返回——却停下了脚步。

　本以为毫无人迹，事实却并非如此。
岩石的阴影里传来不止一人的动静。
　不像是刻意要躲藏起来，好像只是特别小声地
在交谈而已。

　由于在意而探头看了一下，是小孩子。
　五、六人。年纪虽各不相同，但全都在十岁以下。
看他们容貌相似，可能是兄弟姐妹。
男孩四人，女孩两人。

　从服装看来像是本地人，他们的表情却都无精打采。
最小的两个还在抽泣。
　看上去最年长的少年正表情严峻地拼命摆弄着什么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060090a00">
（……模型吗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　给孩子玩的，小小的船型玩具。
　从船型看来，那是活跃在日俄战争的分水岭，大和
海战中的战舰——虽说有些稚拙，但特征都很好地
捕捉到了。售价约一百日元的模型。

　……不。可能会更贵一些。
　看出少年正在做什么，我稍稍修正了之前的认识。

　他拆开了船腹部分，正在检查内部的机械。
　不错，机械。不单是模型而已。是通过螺旋桨的转
动而实现航行的船吧。

　这种玩具是自不久前，一个叫做矢缘健吉的人成功
发明了小型<RUBY text="ｍｏｔｏｒ">电动机</RUBY>之后随之出现的。
　虽然当时价格非常高昂，不过现在廉价模型也有出
售，即使一般家庭的孩子也能够得到。

　眼前这些孩子所持的，就是比较便宜的那种。
　即便如此，对于他们来说，也是一件贵重物品吧。

　那紧盯模型走投无路的小脸就证明了这个推测。
　目光集中在埋头作业的年长少年手上，简直像
要把那里盯出一个洞来。

　完全对我视而不见。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw男の子Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／七兄弟四男】
<voice name="ｅｔｃ／七兄弟四男" class="その他男声" src="voice/ma04/0060100e096">
「是不是电池没电了……」

{	NwC("cg/fw/nw女の子Ａ.png");}
//【ｅｔｃ／七兄弟長女】
<voice name="ｅｔｃ／七兄弟長女" class="その他女" src="voice/ma04/0060110e099">
「昨天武哥哥才买的啊。」

{	NwC("cg/fw/nw男の子Ｂ.png");}
//【ｅｔｃ／七兄弟三男】
<voice name="ｅｔｃ／七兄弟三男" class="その他男声" src="voice/ma04/0060120e095">
「是不是发动机的问题啊……」

{	NwC("cg/fw/nw男の子Ｃ.png");}
//【ｅｔｃ／七兄弟四男】
<voice name="ｅｔｃ／七兄弟四男" class="その他男声" src="voice/ma04/0060130e096">
「如果发动机坏了，还能修好吗？」

{	NwC("cg/fw/nw男の子Ｂ.png");}
//【ｅｔｃ／七兄弟三男】
<voice name="ｅｔｃ／七兄弟三男" class="その他男声" src="voice/ma04/0060140e095">
「……」

{	NwC("cg/fw/nw女の子Ｂ.png");}
//【ｅｔｃ／七兄弟次女】
<voice name="ｅｔｃ／七兄弟次女" class="その他女" src="voice/ma04/0060150e097">
「和哥哥……怎么样？」

{	NwC("cg/fw/nw男の子Ａ.png");}
//【ｅｔｃ／七兄弟次男】
<voice name="ｅｔｃ／七兄弟次男" class="その他男声" src="voice/ma04/0060160e098">
「…………好了。
　这下就没问题了。」

{	NwC("cg/fw/nw男の子Ａ.png");}
//【ｅｔｃ／七兄弟次男】
<voice name="ｅｔｃ／七兄弟次男" class="その他男声" src="voice/ma04/0060170e098">
「……大概……」

{	NwC("cg/fw/nw女の子Ｂ.png");}
//【ｅｔｃ／七兄弟次女】
<voice name="ｅｔｃ／七兄弟次女" class="その他女" src="voice/ma04/0060180e097">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　被神色担忧的弟弟妹妹们包围着，少年把船轻放
在水洼表面。
　然后，按下开关。

//あきゅん「SE：要望：モーター音」
{	CreateSE("SE01","se日常_機械_玩具モーター音01_L");
	MusicStart("SE01",300,700,0,500,null,true);}
　重低音嗡地响了起来，水面激起波纹。
　船向前滑行而去。

{	SetFrequency("SE01", 5000, 0, DxlAuto);}
　然而，那动作却非常微弱和缓慢，明显没有达到设计
者及购买者的预期效果。
　船速变得更加迟缓……

{	SetFrequency("SE01", 1000, 0, DxlAuto);
	SetVolume("SE*", 300, 0, null);}
　并停了下来。
　——在我脚边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060190a00">
「…………」

{	NwC("cg/fw/nw男の子Ａ.png");}
//【ｅｔｃ／七兄弟次男】
<voice name="ｅｔｃ／七兄弟次男" class="その他男声" src="voice/ma04/0060200e098">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　感觉到他们屏住呼吸，定定的视线戳刺着我的
肌肤。
　我也差不多习惯了这种感觉——初次见面的孩
子基本都是这种反应。

　我一边努力不去在意，一边捡起了船。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw男の子Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／七兄弟五男】
<voice name="ｅｔｃ／七兄弟五男" class="その他男声" src="voice/ma04/0060210e094">
「啊。」

{	NwC("cg/fw/nw女の子Ａ.png");}
//【ｅｔｃ／七兄弟長女】
<voice name="ｅｔｃ／七兄弟長女" class="その他女" src="voice/ma04/0060220e099">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　最小的男孩猛地想要跳出来，一个像是他姐姐的女
孩抱住他，把他拦了下来。
　实在不忍心看到这些孩子满心恐惧的表情。
看来我还是快一点为好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060230a00">
（至少还能前进……
　所以驱动部分应该没有破损）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　打开电池盒，确认内部的情况。
　正如其中一个孩子所说，是新品。那就不是
电力不足的原因。

　防水方面好像也没有问题。
　螺旋桨也毫无残缺，运转正常。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060240a00">
（……是电动机吗……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　猜出了大概，我在内心肯定了自己的想法。

　矢缘电动机虽然耐用性极好，也并非毫无缺陷。
若长期使用，叶轮、碳刷以及磁铁等零件会损耗。

　这种情况应该更换，不过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060250a00">
（好像不是叶轮或者碳刷。
　大概是磁铁的<RUBY text="····">受热去磁</RUBY>）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　电动机在运作中产生高温，一定以上的温度会
损伤磁铁的性能。
　这种情况反复出现，可能会导致磁铁性能劣化，
直至磁力完全消失。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060260a00">
（那么……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　我像之前那个少年所做的一样，打开船舱。
　比起齿轮和机轴，最引人注意的是相对模型大小
来说相当巨大的电动机。

　透过圆筒形外壳上被打开的排气口，向内看去。
　但这么做也没能弄清什么——

　我用右手食指按住洞口的边缘。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060270a00">
（村正）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0060280a01">
《什么？》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060290a00">
（启动导源。
　行使能力）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0060300a01">
《…………？
　了解。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ちょっとエフェクト。発電。
//あきゅん「SE：要望：ビシィィィくらいの感電系の音、音域高め」
	CreateSE("SE01","se特殊_陰義_発動04");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　联动剑胄，运用体内极少部分的阴义。
吸引磁铁的力量——磁力聚集。
　把<RUBY text="ｅｎｅｒｇｙ">热流</RUBY>注入电动机内。

　一吐一吸的时间。
　就足以让坏掉的磁铁重新运作。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060310a00">
「……」

{	NwC("cg/fw/nw男の子Ａ.png");}
//【ｅｔｃ／七兄弟次男】
<voice name="ｅｔｃ／七兄弟次男" class="その他男声" src="voice/ma04/0060320e098">
「那、那、那个……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　把取下的零件装回去，重新放入干电池。
　我把恢复原状的模型再次放于水面。

　打开甲板上的开关。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ずばー。水を切って進む音
	CreateSE("SE01","se日常_機械_玩具モーター音01_L");
	MusicStart("SE01",1000,1000,0,0,null,true);
	SetFrequency("SE01", 3000, 1000, DxlAuto);

	SetNwC("cg/fw/nw男の子Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ｅｔｃ／七兄弟五男】
<voice name="ｅｔｃ／七兄弟五男" class="その他男声" src="voice/ma04/0060330e094">
「……哇——！」

{	NwC("cg/fw/nw男の子Ｂ.png");}
//【ｅｔｃ／七兄弟三男】
<voice name="ｅｔｃ／七兄弟三男" class="その他男声" src="voice/ma04/0060340e095">
「噢————!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　欢呼声响起。
　一／三五〇比例电动模型·战舰三笠这才终于发挥
出原本的性能。

{	SetVolume("SE*", 2000, 0, null);}
　破水前行。
　此刻的它一扫先前软弱的模样，俨然就是一艘
战舰。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw女の子Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ｅｔｃ／七兄弟次女】
<voice name="ｅｔｃ／七兄弟次女" class="その他女" src="voice/ma04/0060350e097">
「好厉害——！」

{	NwC("cg/fw/nw男の子Ｃ.png");}
//【ｅｔｃ／七兄弟四男】
<voice name="ｅｔｃ／七兄弟四男" class="その他男声" src="voice/ma04/0060360e096">
「修好了！」

{	NwC("cg/fw/nw女の子Ａ.png");}
//【ｅｔｃ／七兄弟長女】
<voice name="ｅｔｃ／七兄弟長女" class="その他女" src="voice/ma04/0060370e099">
「好快好快！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　追逐着在礁石间的水洼里勇敢航行的舰船，友爱
的兄弟姐妹们跑远了。
　现在他们的意识中已经没有了我的存在。正如先
前一样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060380a00">
（但愿别摔倒受伤才好）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　稍稍目送了一下六个小小背影，我离开了那个
地方。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw芳養_通常.png");

	#voice_on_芳養=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060390b48">
「我说，你等一下。」

{	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060400a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　没走几步，就突然被人叫住。
　转过身去。

　一个孩子——看起来比那些孩子中最年长的还要大
上几岁的少年，向我小跑过来。
　他的样貌也跟之前的六个孩子有共同点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm23",0,1000,true);
	StL(1000, @0, @0,"cg/st/st芳養_通常_私服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw芳養_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060410b48">
「是你修好了那艘船吧。
　谢谢你。我完全不懂那些，很为难呢。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060420a00">
「你是……
　他们的哥哥吗？」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060430b48">
「嗯。我比他们都大。
　刚才，我在附近都看到了……
真是的，他们简直笨死了。
连谢也没谢一声就跑走了。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060440a00">
「是看到模型被修好一时太高兴了吧。
　那我也算是没有白管闲事，这点着实令
人欣慰。我已经心满意足。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060450b48">
「这可不行。
　要是成了受人恩惠却不知道感谢的笨蛋，
进了社会可是要丢尽脸面的。」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060460b48">
「我回头得好好说说他们。
　总之……很抱歉。因为我是他们的监护人，
他们不懂礼貌，我有责任。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060470a00">
「……我明白了。
　但是还请不要太介怀。
说起来方才是我贸然行事，责任在我。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060480a00">
「我认为他们没有跟我说话，是再自然不过
的事情。
　虽然我无意插手你们家庭内部的问题，但
这件事还请再体谅一下。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060490b48">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060500a00">
「……」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060510b48">
「你说话可真特别。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060520a00">
「……是吗。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060530b48">
「我可是小孩子啊？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060540a00">
「看起来的确很年轻。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060550b48">
「你跟我说话干吗要这么客气。
被人听见了可是会小瞧你的哦？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060560a00">
「我并不认为对他人表达敬意就等于贬低自己。
　倒不如说，不懂得尊敬别人的人才是在
贬低自己……<RUBY text="妈妈">养母</RUBY>曾经这么说过。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060570a00">
「而且。
　作为孩子们的兄长，你已经向我表示了足
够的尊敬，值得他人把你当做大人来尊重。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060580b48">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060590a00">
「我只是在回应你的敬意而已。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060600b48">
「…………」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060610b48">
「我说。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060620a00">
「是。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060630b48">
「如果方便的话。
　我想……知道你的名字。」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060640b48">
「我叫芳养武史。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060650a00">
「我是凑斗景明。
　得以跟你结识，实在荣幸至极。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060660b48">
「……你吃不吃牡蛎？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060670a00">
「……柿子吗？」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060680b48">
「牡蛎。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　说着，叫做芳养的少年把背在肩上的东西
拿到面前。
　是约有一臂长的网袋。

　里面挤挤挨挨都是不规则椭圆形的贝类。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060690b48">
「这个。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060700a00">
「是牡蛎啊……
　我还不知道原来这附近也能捕到。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060710b48">
「在那边的礁石那里潜水一小时就能采到
这么多哦。而且也不费事，是不错的副业。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060720a00">
「如果是用来出售的，恕我不能收下。」

{	FwC("cg/fw/fw芳養_笑い.png");}
//嶋：修正（でかい）【090930】
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060730b48">
「不是用来卖的。这么小的根本卖不出去。
想拿到市场出售的话，必须是像濑户内海
或者三陆海捉到的那种。
　像那种在这边很难找到。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060740b48">
「不过呢，这种也能吃啊。
　多收集一些可以省下一部分伙食费。
所以是副业。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　说着，少年取出牡蛎，把小刀抵在中间的缺口上。
熟练灵巧地旋转着插入其中。
　“噗”地一声悦耳的轻响。轻而易举地剥离了牡
蛎原本坚硬的外壳，露出了乳白色的内部。

　独特的咸腥味涌入鼻腔。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060750b48">
「请用。
　这里的牡蛎可以生吃，不用担心。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060760a00">
「……那我就不客气了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　我简短地道谢一声，接过牡蛎吸食里面的蛎肉。
　先是海水的味道——然后是弹力。柔软可口的刺激感
盈满口腔。

　最后是甜味。
　令人欲罢不能的芳醇残留在唇舌间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060770a00">
「这个……
　真的不错呢。」

{	FwC("cg/fw/fw芳養_笑い.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060780b48">
「虽然很小，但是现在正值时节。
　只有这个时令才能吃出这味道。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　同样吃下一个牡蛎的少年微笑了。
　是与他老成的言行截然不同，符合他年纪的表情。

　不禁让人想到，他大概很少露出这种表情。
　想起他自称是玩模型的那些孩子的监护人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060790a00">
「你说是副业……」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060800b48">
「嗯？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060810a00">
「你还有什么本职吗？」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060820b48">
「你是问我在哪里工作？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060830a00">
「是。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060840b48">
「要是真有人愿意雇佣我，那倒好了。
很难呢……就算说自己做得来，请求
他们雇佣，也很少有人会搭理我。
而且还有法律……」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060850b48">
「如果连我这种孩子都照样雇佣，要么
是工钱很少，要么就是什么不好的勾当。
　世道艰难啊。就算这样还是得让小鬼
们填饱肚子。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060860a00">
「你也很不容易吧。
　一家之长责任重大，我完全可以理解。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　不经意间，苍白无力的安慰之辞就
脱口而出。

　像他这样的孩子需要的应该是默默的帮助而不是
冠冕堂皇的话语。
　然而，叫做芳养的少年还是笑了。笑容羞涩——却
显得很开心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060870b48">
「所以靠捕鱼为生。
　这就算我的本职吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060880a00">
「有渔船愿意接受你吗？」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060890b48">
「没有。不过，父亲用过的船还在。
虽然很破旧，好在海水蒸发的时候没有拿去
卖掉，所以现在才不至于挨饿。」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060900b48">
「乘着它在附近转悠，尽量地捕鱼，然后
运到市场去卖钱。
　虽然会被压价……倒也没有多么狠辣，
算是能混饱肚子。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060910a00">
「……是吗。
　不过既要驾船又要捕鱼的话，需要人手。
你都是一个人在做么？」

{	FwC("cg/fw/fw芳養_笑い.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060920b48">
「怎么可能。
　刚才的那些家伙也在帮忙。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060930a00">
「他们？」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060940b48">
「虽然没法干体力活，
但是他们身体很小，而且机灵。
　对我们这种小船来说这一点很关键。」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060950b48">
「比如在我驾船的时候帮我观察大海，
捕鱼的时候帮我摆好渔具。
　别看这样，他们可是能帮得上忙哦？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060960a00">
「我能想象。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　这并非假话。
　我很轻易就能在脑中描绘出他们以少年为中心，
在小船上机敏劳作的模样。

　不需要言语和规则，只用朴素却坚固的信赖关系
结合在一起的人们的样子。
　所谓的家人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060970a00">
「不过……芳养先生。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0060980b48">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0060990a00">
「……？」

{	FwC("cg/fw/fw芳養_赤面.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061000b48">
「啊，对不起。
　听你这么叫我，被吓了一跳。
大人基本上都是叫我小鬼啊，
小子啊，小毛头……之类的……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061010a00">
「如果让你感到不快，那我换个叫法。」

{	FwC("cg/fw/fw芳養_赤面.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061020b48">
「没、没有的事。
　这样就可以了……凑斗先生。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　少年极其轻微地咳了一声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061030b48">
「于是……你有什么事？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061040a00">
「据我推测，最近近海捕鱼量一直不理想。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　并非听谁明确地说过。
　然而，一路走来，多次看到肤色古铜的男人们，
面上带着跟在海里游玩的人截然不同的凝重表情——

　还有这异常的酷热天气。
　这是从以上种种所推出的必然结论。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061050a00">
「家里的日子想必也不太好过吧。」

{	FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061060b48">
「啊，嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　芳养露出暧昧的表情。

　我特意这么说，是因为不论怎么看，
<RUBY text="······">也不像是那样</RUBY>。
　如果当真这么想，也就不会说出口来吧。除了满足
自己伪善的同情心之外，再无其它任何意义。

　少年虽然不胖，但也并非不健康的面黄肌瘦。
刚才见到他的弟弟妹妹也是如此。
　看上去很健康。

　坦白说，这一点让人惊奇。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061070a00">
「如若有所不便，我也不会继续深究。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061080b48">
「……嗯。
　唉，算了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　不知为何，少年芳养环顾周围，确认四下无人之后，
才轻声说道。
　他向我露出犹豫不决的笑容。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_真顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061090b48">
「我说的话你要帮我保密。
　没问题吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061100a00">
「了解。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　只要不是有悖人伦或是犯罪行为的内容——
我咽下这差点脱口而出的话，点了点头。
　不想把讲道理跟单纯的无礼混为一谈。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061110b48">
「最近确实很不景气。
　从江之岛过来的不合时宜的暖流，
好像把鱼群都给冲散了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061120a00">
「暖流。」

{	FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061130b48">
「可能我这种说法有些太保守了。
　不知道岛上在做什么，往海里排了什么东西……
周围的海域有时还会<RUBY text="··">沸腾</RUBY>。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061140a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　虽说只有附近这一带，看来热度已经影响到了气象。
　这果然是什么原因所导致的现象吗。

　——银色的怪物。
　我猛地想起悬在心中的这句话。

　会不会是<RUBY text="·">它</RUBY>在作怪呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_真顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061150b48">
「没有鱼，渔民的手头自然就很紧。
即便出海也是亏本，最近很多人已经不再
出海，每天无所事事地过活。
　还有人干脆卖了船离开了这里。」

{FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061160b48">
「近来这附近有人会突然失踪，你知道吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061170a00">
「有所耳闻。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　——附近沿岸失踪案件频发。
　
　我一边回想着在八幡宮所闻的其中一段，一边点头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061180b48">
「虽然传言绘声绘色，我觉得应该只是连夜逃走
了而已。
　填不饱肚子，这也是没有办法的事。所以只好
到能糊口的地方去。说到底……」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061190b48">
「但其中也有看准游客来体验<RUBY text="··">夏季</RUBY>这个商机，
开起了海之家的人。
　尤其是小长井大叔，办得有声有色。
大家都说他开店比捕鱼赚得还要多。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061200a00">
「这也是智慧。很有生意头脑。
　那么，你也是如此？」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061210b48">
「不是。
　接下来的话你要帮我保密。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061220a00">
「是。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061230b48">
「现在捕鱼困难。
　鱼价自然上涨。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061240b48">
「所以……
　如果只有一个人能捕得到鱼，就能趁机
赚上一笔。你说是不是？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061250a00">
「……此言有理。
　不过，能捕得到吗？」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061260b48">
「大概在一个月前。
　我追着一小群鱼直到日落，
周围已经昏暗难辨。」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061270b48">
「等到回过神来，我已经来到江之岛后面的
一个海湾当中。就在长矶附近。
　一般来说，还没等到接近那里就已经
被武者发现并且驱逐出来了。」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061280b48">
「不过看来当时的警卫也是在浑水摸鱼。
再不然就是闲到睡着了吧。
　平时后面连狗都不会进来一只，
所以也情有可原。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061290a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　——长矶。
　我把这个地名暗记在心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061300b48">
「多亏他偷懒才让我赚了一笔，
所以我也没什么好抱怨的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061310a00">
「……此话怎讲？」

{	FwC("cg/fw/fw芳養_笑い.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061320b48">
「那里有鱼呢。
　而且还都是平日难得一见的大家伙。」

{	FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061330b48">
「我高兴得跳了起来。
　不过当时弟弟妹妹们都害怕了。
事后我自己也觉得有些后怕。」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061340b48">
「乌压压地聚在一起，看上去很不正常。
　……就像爬满了狗尸体的蝇群。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　他有些毛骨悚然地说道。
　虽然我从未在海上生活过不太能理解。但也从他的话
中感觉到了令人胆寒的氛围。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061350a00">
「……为何会到如此地步。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061360b48">
「不知道。大概从那岛上流出的，不止是热气吧。
　那里不是有幕府的渔业研究所吗？
可能就是那个研究的成果……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　芳养边说，边像否定自己一般摇着头。
　我的心情也是同样。

　渔业研究所，渔业研究的成果——如此一来，一切都
在情在理。然而。
　既是如此，又为何要藏头露尾。

　另外，这种异常的热气又是从何而来。
　还有很多地方令人无法释然。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061370b48">
「……总之就是因为这样。
　我找到了一块秘密宝地。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061380a00">
「原来如此。
　这个情报，其他的渔民们——」

{	FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061390b48">
「哎呀，凑斗先生，你可别误会。
　我可不是那么小气的人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　少年慌忙有些激动地解释起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_不安.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061400b48">
「我说了。告诉了看起来能保守秘密的一些人。
　可他们都不愿意去。好像是因为害怕幕府。
跟他们说了不会有事，可他们就是不信。」

{	FwC("cg/fw/fw芳養_赤面.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061410b48">
「所以最后还是只有我们一家去那边捕鱼。
就是这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　大概是不愿意被人想得那么龌龊。
少年住了口，脸上微微泛起红潮。
　然而我所挂心的，却不是这一点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061420a00">
「……实不相瞒。
　我觉得他们不愿前往的决定是正确的。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061430a00">
「六波罗不可小视。
　至今为止都是你的运气。
不过，好运不会一直下去。
总有用尽的时候。而且毫无预兆。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061440b48">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061450a00">
「说不定就在下一次。
　真到那时，已经是后悔莫及。」

{	FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061460b48">
「……你果然也这么认为？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061470a00">
「不错。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061480b48">
「也是啊……
　其实我也在想自己是不是太得意忘形了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　少年搔着脑袋。
　看起来似乎有些如释重负。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061490b48">
「如果只有我一个的话，倒是还能算得上刺激。
　小鬼们也跟我一起的话……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061500a00">
「正是。
　我就知道你一定已经想到了这一点。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061510b48">
「我不想让他们遭受到危险。
　可是伙食钱总得去挣，
所以我也有意识地不去想它。
是时候收手了吧……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061520a00">
「为了糊口而丧命，这只能说是愚行。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061530b48">
「是啊。
　……你说得对。我也差不多该收手了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061540a00">
「差不多，吗。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061550b48">
「再多一点，我就能存到能让我们
舒舒服服过完正月的钱。
　然后我就会暂时停手。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061560a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　我应该劝服他立刻停手。人的幸运有限，
然而六波罗对人民的冷酷却是没有底线的。
　少年一家的偷猎毫无疑问是在生死边缘徘徊。

　然而——
　如果关乎生存，这就超出旁人可以
不负责任指手画脚的范围了。

　不管我给出多少宝贵的忠告，
于他一家的生活却起不到一星半点的助益。
　虽然可谓是鲁莽犯险，却能拯救他们一家。

　所以——最后。
　我能做的就只有这些。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061570a00">
「芳养先生。
　不介意的话，请收下这个。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　我从钱包中抽出一张纸币递给他。
　不多不少，不算失礼的金额。

　然而少年却没有如我想象一般马上收下。
　皱起眉头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_不安.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061580b48">
「……这是什么意思？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061590a00">
「其实我是警察局的人，
正在调查江之岛的异常情况。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　这话属实。
　然而，他是否相信就另当别论。现在的市民
全都把警察看做是幕府的下属机关——而且还是
无关紧要的那种。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061600a00">
「你的话对我很有帮助。
　这是给你的谢礼和封口费，
也代表我隐瞒真实身份的歉意。
请你当做三者皆有。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061610b48">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　少年怔了片刻。
　眨着双眼，目不转睛地望着我。

　很明显他在怀疑着<RUBY text="··">什么</RUBY>。
　正气、知性、抑或是人格之类的东西。

　……然而，终于。
　他的表情定格为苦笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061620b48">
「你真是个怪人。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061630a00">
「偶尔……不。
　最近好像常有人这么说。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061640b48">
「谢谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　他细长却有力的手指抽走了纸币。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061650b48">
「我收下了。
　似乎能让他们好好吃一顿。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061660a00">
「那就请那么做吧。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061670b48">
「你要走了吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061680a00">
「是。
　同行的人还在等我。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061690b48">
「我们还会见面吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061700a00">
「……如果有机会的话。」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061710b48">
「是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_荷物あさる03",1000);

	DeleteStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　少年捡起脚边的网袋，重新担回肩上。
　然后——再次看向我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061720b48">
「凑斗先生。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061730a00">
「是。」

{	FwC("cg/fw/fw芳養_真顔.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061740b48">
「你要去岛上？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061750a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　我用沉默作为回答。
　然而，此事却不容我含混带过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_不安.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061760b48">
「最好还是别去。
　……这次轮到我来给你忠告了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061770a00">
「……」

{	FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061780b48">
「其实……我本来也打算不再去那边了。
　因为那里……好像有什么东西。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061790a00">
「什么？」

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061800b48">
「银色的东西。
　像隆隆涛声般吼叫着，有什么东西。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061810a00">
「————」

{	SoundPlay("@mbgm35",0,1000,true);
	FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061820b48">
「之前有一晚，我看见了它的影子。
　六波罗根本没在做什么渔业研究。一定
都是因为<RUBY text="··">那个</RUBY>。
热气流也好，鱼群也好。」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061830b48">
「<RUBY text="··">怪物</RUBY>正在那个岛上进行着什么活动。
　全都是因为它……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061840a00">
「……怪物。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　银色的————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_不安.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061850b48">
「别去，凑斗先生。
　算我求你。」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0061860b48">
「别去那个岛上。
　真的……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0061870a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma04_007.nss"