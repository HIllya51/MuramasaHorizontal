//<continuation number="1090">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_010.nss_MAIN
{

	CP_AllSet("村正");

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
	#bg035_鎌倉サーキット俯瞰a_01=true;
	#bg039_競技場客席a_01=true;

	#ev113_サーキット貴賓席_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_ホットボルト=true;

	CP_AllDelete();

	$PreGameName = $GameName;
	$GameName = "ma03_011.nss";

}

scene ma03_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_009.nss"


//◆鎌倉サーキット
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　装甲竞技的发源可追溯到距今约三十年前。
　发祥地位于大英联邦。就像赛马和其他一些机动竞速
运动一样，这类竞技同样是作为女王国度中的贵族游戏
开始的。

　过去不管在哪个国家，剑胄都被看作具有神圣性的
事物。除了定夺国家兴亡的战场以外，不会在其他场合
使用。
　然而，新式（量产型）剑胄的诞生改变了这个观念。

　作为世上最快速存在的武者间的竞速，这一构思
被人们热烈欢迎。绅士们在因为何没早点想到如此
美妙的竞技而侧首困惑的同时，满怀热情地制订出竞
赛形式。

　装甲竞技就这样诞生了。
　以英国本土为原点，直到跨越多弗尔海峡只花了一
年，普及欧洲全土并结成统合团体则是约三年之后。

　其在大和的历史则约二十年前就拉开序幕，转瞬之间
就受到了狂热的支持，并且表现出走向兴隆昌盛的征兆，
但当时世界正处于战云的笼罩之中。伴随着进入大战，对
军事没有贡献的产业大多都面临被强制缩小规模的隐忧。

　装甲竞技也未能幸免，在战时被毫不容情地限制，陷入
事实上的崩溃状态。战争结束后，随着时间的推移，
希望竞技复兴的呼声也逐渐高涨。而且权力层中
也有同样意向之人，竞技团体得以再度兴起……

　于去年初，这个镰仓环状跑道正式落成。
　到了今年——兴隆四一年，
国内统一规格的大和ＧＰ终于决定开办。

　而第一回，就于现在……<k>
　
　开始了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆予備予選。適当に演出入れるか。
//◆観客席

	OnBG(100,"bg039_競技場客席a_01.jpg");

	CreateSE("SEL01","se背景_ガヤ_サーキット02_L");
	MusicStart("SEL01",500,1000,0,1000,null,true);
	CreateSE("SEL02","se背景_ガヤ_サーキット01_L");
	MusicStart("SEL02",500,800,0,1000,null,true);

	FadeBG(1000,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100010a02">
「……银星号会在这种地方吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100020a00">
「应该不会。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　对伸长脖子在观众席上四处张望的一条的提问做出
回答的同时，轻轻松了松衣领。
　会场的热气非同一般。簇拥成群的人们，还有他们内
心的兴奋，都将秋风拂走，唤回了夏天。

　此刻在跑道上疾驰的骑影中不见一流选手的身影。
他们的登场要在明天之后。
　但这里仍有如此盛况。

　人们对装甲竞技的复兴有多么盼望，对直到昨日之前
举行的赛事少到让跑道都能长出青草来的这种状况又
有多么不满。
　现在就能切实窥知。

　这种竞技爱好者们抱有的热情几乎接近于信仰。在
对此不抱关心的人们看来简直到了异常的程度。
　然而，向选手们报以喝彩的人们的表情中没有任何不健
康的东西。有的只是纯粹的欢喜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100030a00">
「虽然人们都处于兴奋中，但很正常。没有
受到精神污染的迹象。
　而且银星号的剑胄是真打。要在赛场中潜伏
非常困难。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100040a02">
「为什么呢？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100050a03">
「哎呀。
　一条是第一次来赛场？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100060a02">
「嗯？　算是。
　之前也不是太感兴趣。
虽然现在看来确实蛮有趣的样子。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100070a03">
「装甲竞技中使用的都是新式，肯定是数打的
剑胄。
　不可能看到真打在赛道上跑的哦。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100080a03">
「因为赢不了。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100090a02">
「为什么。
　剑胄不是真打比数打要强吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100100a03">
「从战斗能力上说是这样。
　不过，这是比赛速度的装甲竞技。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100110a03">
「虽然新式中有成为竞技用剑胄的专用规格……
　但你觉得旧式里面会有这种东西吗？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100120a02">
「……原来是这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　确实是这样。
　在装甲竞技中，数打要比真打优越。

　虽说如此，但也没有禁止真打出场，
实际上，使用真打参加比赛的好事武者偶尔也有……
　但从未有过获得优秀成绩的前例。

　在赛场上真打是绝对的少数派，要是参加的话必定
非常抢眼。更不用说白银色的银星号。
　完全无法想象能混到装甲骑手中。

　……不过。
　就性能上的问题而言，恐怕银星号拥有足够的
参赛资格。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100130a02">
「既然如此，凑斗先生。来这里是……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100140a00">
「必然，是为了被种植了“卵”的寄生体。
　根据村正的感觉判断，<RUBY text="········">气味似乎正在波动</RUBY>。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100150a00">
「这对“卵”而言，意味着离孵化已不远。
估计已没多少时间。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100160a02">
「村正？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100170a00">
「是我的剑胄。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100180a03">
「说起来这还是第一次听到。
　是个相当不吉利的名字呢？」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100190a04">
「估计锻冶师一定是个反派爱好者吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　其实只因为这就是原版。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100200a03">
「这种感觉准确吗？
　这里有银星号力量的气息。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100210a00">
「从过去的经验看来是值得信任的。
　这个环形赛场，或者说周边的某个位置，
肯定存在着寄生体。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　虽然范围太大，以至于不能进行地毯式搜索这点也很
让人头疼。
　但向来如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100220a04">
「不能再确切一些吗？
　比如说这附近的气息比较强，之类的。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100230a00">
「貌似并非<RUBY text="····">那种东西</RUBY>。
　除了极为概略地推定位置以外，
无法再进一步。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100240a02">
「……这不就是说没有办法找到吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100250a00">
「不。要是寄生体被村正直接目击的话
就可以识破。
　所以现在村正已经去能俯瞰赛道的场所。
这样就能检查所有的参赛骑。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100260a00">
「但这也并非万全之策。也有可能是不在比赛
中使用的练习骑。
　那些就只有靠肉眼来调查。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100270a02">
「原来如此……
　我知道了。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100280a03">
「那首先应该怎么做？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100290a00">
「暂且观察一下状况。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　既然方针已定，虽想马上潜入整备库房，调
查一下没有进入赛道的骑体，但那是不可能的。
　禁止无关人员进入是必然。

　警察的名号在此也无法通用。
　就算警卫看到旭日纹章，也可能连招呼都不会打。

　大和ＧＰ战后首届国内统一锦标赛的主办者是<RUBY text="···">六波罗</RUBY>。
　他们支配的地方不可能强行进入。

　必须想点什么办法——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100300a02">
「话说，现在这是在做什么？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100310a03">
「预选拔赛。
　正在对没有多少实绩，也就是所谓的二流选
手进行<RUBY text="··">筛选</RUBY>。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100320a04">
「在今天的预选拔赛中获得前列成绩的选手，就
能在明天和种子选手们一同在半决赛中竞争。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100330a02">
「那要怎么决定成绩呢。
　看上去感觉只是在随便飞飞停停的样子。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100340a03">
「预选比的是单圈时间。
　各就各位然后喊预备，跑……才同时起跑的只
有决胜赛。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100350a02">
「诶……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　虽然声音听起来不感兴趣，但一条的视线却被牢
牢吸引在赛道上。
　以她的性格，这种竞技估计不会有让她感到讨厌的地
方。给人的印象就是如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100360a04">
「不过虽说是预选拔，但也有飞得很好的选
手呢。
　比如刚才通过发夹弯的选手，很是不错。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100370a00">
「那是……横森锻造的猎犬。
　横锻工业应该已经被登录到名录中。
所以，应该是私人和团体都参加的骑体吧。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100380a03">
「可貌似施加了相当大胆的改造呢。而且悬挂
也是从其他地方移植的。
　或许是哪位大财主的私人队伍也说不定呢？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100390a02">
「……啊，被超过了。
　好厉害，刚才那下。表现出要向右移动的样
子，却从左边一口气压了过去。
　连火花都冒出来了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100400a04">
「哦哦，那不是警察联队吗。看来终于拿出干
劲了。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100410a00">
「是田村的火箭吗……
　居然在使用旧式骑。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100420a03">
「只要骑手和机械师足够优秀，就算现在也
是能战斗在第一线的骑体吧？
　虽说过大的重量比较不利……」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100430a02">
「这不是挺强的嘛。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100440a04">
「确实如此呢。虽然在加速性上要打个问号，
但在骑体相互碰撞的乱战中很强却是事实。
　比赛越是激烈就越有利。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",500,1000,null,true);

	#av_ホットボルト=true;
	CreateColorSP("黒幕", 1000, "Black");
	CreateTextureSP("絵背景100", 1500, 0, -364, "cg/st/resize/3dホットボルト_立ち_通常l.png");
	Request("絵背景100", Smoothing);

	Move("絵背景100", 5000, -261, -364, AxlDxl, false);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　在装甲竞技中，对其他骑体进行攻击当然是犯规行为，
但存在着允许范围内的身体碰撞。
　这也是重装甲（虽然是相对上的）的田村·火箭虽然
作为旧式，却仍然能够留存下来的原因。

　话虽如此，毕竟是过去的骑体。
　不仅直线加速有所欠缺，旋回性能也大大落后于最新
骑。因此，虽能凭借以骑手为首的工作人员的奋斗冲入
前列，却终究无法获得胜利。

　……刚这样想着，就被在直线赛道一度超越了的猎犬
在弯道上轻易反超。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",500,1000,null,true);

	Delete("黒幕");
	Delete("絵背景100");

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100450a03">
「还是老样子，像是跟人怄气一样，
不会转弯的骑体呢。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100460a00">
「转向不足是其症结所在。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　警察联队估计也希望购买替换骑体吧。
　当然，现在的警察署也不可能拨下这笔预算。
联队光是能维持至今就已经是奇迹了。

　眼下的预选拔中，有显眼活跃表现的貌似
也只有这两支队伍。
　意识转向其他方向。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100470a00">
（村正。怎么样？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0100480a01">
《没有异常。
　参加今天竞技的全部机体都看过了，都不是。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0100490a01">
《全是普通的<RUBY text="··">仿冒</RUBY>剑胄。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100500a00">
（是吗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　村正对数打剑胄，尤其是竞技用剑胄向来那样称呼。
　作为古来的剑胄锻冶师，或许也有自己的想法吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100510a00">
（观众席确认了吗）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0100520a01">
《还没……有必要吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100530a00">
（算是以防万一。
　把视觉情报传送过来）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0100540a01">
《了解。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆モニター展開
//◆サーキット俯瞰。右見て左見て

	SetVolume("SEL01", 600, 300, null);
	SetVolume("SEL02", 600, 200, null);

	CreateColorEX("黒幕", 10000, "Black");
	Fade("黒幕",0,1000,null,true);
	DrawTransition("黒幕", 500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateTextureSP("絵背景100", 6000, 0, 0, "cg/bg/resize/bg035_鎌倉サーキット俯瞰a_01_l.jpg");
	CreateColorSPmul("絵色100", 7000, "RED");
	Fade("絵色100", 0, 400, null, true);



	Cockpit_AllFadeMura(100,720,0);

	DrawTransition("黒幕", 500, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Delete("黒幕");

	BezierMove("絵背景100", 5000, (@0,@0){@-100,@-100}{@-200,@-300}(@-300,@-400){@-300,@-350}{@-350,@-325}(@-300,@-300), null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　…………？

　那是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆少し視界移動。停止
	Move("絵背景100", 500, @+100, @+100, Dxl1, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　有一块席位和周围微妙地拉开距离。
　那是……贵宾席吗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：貴賓席。茶々丸と貴婦人。
//◆貴婦人の顔は目深にかぶった帽子、あるいは立てかけられた日傘で見えない

	SetVolume("SEL01", 500, 0, null);
	SetVolume("SEL02", 500, 0, null);

	PrintGO("上背景", 30000);

	CP_AllDelete();

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	CreateTextureEX("絵ＥＶ50", 5000, Center, Middle, "cg/ev/ev113_サーキット貴賓席_a.jpg");
	Fade("絵ＥＶ50", 0, 1000, null, true);

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　虽然和一般观众席同样有着各式男女老少，但每个人
都穿着品质不凡的装束。
　想必都是赞助者和嘉宾，以及与其有关系的人。

　还能看到武者的身影。
　但他们的剑胄却和此刻在赛道上奔驰的那些截然不同。
更为厚重，更为粗鲁。

　军队制式的龙骑兵。
　贵宾席的护卫。被安排来防备恐怖分子以及在竞
速比赛在所难免的事故。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100550a00">
（村正？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0100560a01">
《没有异常。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100570a00">
（明白）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……如果那里面有目标的话，某种意义上说，
事情就很简单了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100580a03">
「…………？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100590a02">
「怎么啦？」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100600a03">
「啊，没事……
　或许是太阳晒得太久了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆客席に戻り
	FadeDelete("絵ＥＶ50", 1000, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100610a00">
「没事吧。
　如果有什么的话，就到阴凉处。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100620a03">
「不不，无须担心。
　只是稍微有些迷糊而已。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100630a00">
「不过，若是中暑的话就悔之晚矣。
　还是不要掉以轻心为好。」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100640a03">
「啊嗯，景明大人真是的。
　居然用那么温柔的话语，想把人家带
到隐匿的地方去。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100650a03">
「究竟，是打算做什么呢？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100660a00">
「只是想让您冷却一下头脑而已。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　不仅是字面上的意思。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100670a02">
「理解能力真差呢。
　凑斗先生是想说上了年纪的人
就不要太勉强啦！」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100680a03">
「哎呀，真是什么事情都忍不住要顶嘴，正
值反抗期的大小姐。
　但我不会气馁的。因为这也是成为真正一家
人所需要的试练啊。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100690a03">
「呐，老公？
　人家一点也不在意小绫弥是你的继女这种事
情哦！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0100700a00">
「哈啊。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0100710a02">
「别给我随便捏造设定!!
　还有，别在别人的姓前面加个小字!!」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100720a04">
「真是个让人感觉闷热的集团呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　实在是。

　逃避着周围投来的视线，同时眼睛看向计时台。
　预选拔的结束时间已经临近。

　应该怎么做。
　作为一介观众，再怎么调查也是有限的。而且还是
极低的限度。要进行完善的调查，必须首先确保能
在竞技场中自由行动。

　能在这里自由行动的人，一类是大会的工作人员……
然后就是赞助者，参赛队伍这样的顺序吧。
　要是能混进其中之一就好。

　那么。
　既然如此，有什么方法————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	ClearWaitAll(1000, 1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm21",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310a]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100730a03">
「……纱代。」

{
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100740a04">
「是。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100750a03">
「看一下那边。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100760a04">
「是指贵宾席吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100770a03">
「那里……的右端。
　是堀越的公主大人。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100780a04">
「什么。竟是茶茶丸大人吗!?
　哎呀呀，真是怀念……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100790a03">
「从刚才开幕式没有被介绍到这点来看，估计
是微服私访吧。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100800a04">
「和传闻一样，似乎是个打破常规的人呢。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100810a03">
「在她身边的……又是哪位呢。
　不是有一位女子吗。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100820a04">
「估计是名为长庚局的女性吧。
据说是最受茶茶丸大人宠爱的女官。
　可也有人说她的女官身份只是伪装，
其实是出身卑贱的茶茶丸大人的生母。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100830a03">
「……母亲。
　该不会说、她是虾夷的——啊，
这个是禁句呢。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100840a04">
「嗯，虽说这也是公开的秘密了。
　堀越公方阁下是半虾夷人的事情。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100850a03">
「可若是这样，倒有些不太方便呢。
　应该小心点，避免和她碰面比较好吧？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100860a04">
「这点倒是不用太在意。
大小姐和那位公主大人，应该只是在她还年幼
的时候稍微见过几面而已。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100870a04">
「估计她不会记得。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100880a03">
「是呢。
　那么就不用担心突然见面时那种尴尬气氛
了……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100890a04">
「要如何应付那位大人，确实让人头疼呢。
　若是狮子吼阁下的话事情倒是简单。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100900a03">
「<RUBY text="····">其他几位</RUBY>的态度也不明朗。
　但估计至少不会友好吧。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0100910a04">
「当下我们也没有必要专程去找他们的麻烦。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0100920a03">
「是呢……
　这件事还是先别在意了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);

//◆貴賓席

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateTextureEX("絵ＥＶ50", 100, Center, Middle, "cg/ev/ev113_サーキット貴賓席_a.jpg");
	Fade("絵ＥＶ50", 0, 1000, null, true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100930a07">
「…………？」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100940a07">
（咦？　这个声音……）

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100950a07">
（在哪里…………）

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100960a07">
「喂。把那个给我。
　那个望远镜。」

{	NwC("cg/fw/nw従者.png");}
//【ｅｔｃ／従者】
<voice name="ｅｔｃ／従者" class="その他男声" src="voice/ma03/0100970e116">
「是。」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100980a07">
「…………」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0100990a07">
（哈～嗯？）

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101000a07">
（大鸟姐妹里的姐姐在这里？
　没搞错吧）

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101010a07">
（啊……
　让狮子吼心情不好的是那个吗？）

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101020a07">
（这也有可能呢……）

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101030a07">
（……嗯？）

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101040a07">
（在旁边的是……）

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101050a07">
（…………哎哟喂）

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101060a07">
「嘿嘿。」

{	FwC("cg/fw/fw長庚局_通常.png");}
//【長庚局】
<voice name="長庚局" class="長庚局" src="voice/ma03/0101070b44">
「……？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0101080a07">
「公主殿下，公主殿下。
　有种会变得有趣起来的感觉。」

{	FwC("cg/fw/fw長庚局_通常.png");}
//【長庚局】
<voice name="長庚局" class="長庚局" src="voice/ma03/0101090b44">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_011.nss"