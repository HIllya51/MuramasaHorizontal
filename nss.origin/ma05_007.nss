//<continuation number="390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_007.nss_MAIN
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
	#ev133_兜割に挑む光_a=true;
	#ev005_斬り割られた兜=true;
	#ev006_景明の狂相=true;

//あきゅん「演出：景明の兜割りはここでは登録を外しておきます。村正ルートの後半で登録」


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_008.nss";

}

scene ma05_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_006.nss"

//◆湊斗家·道場
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg052_湊斗家道場_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　吉野御流合战礼法是为武者而生的武术。
　以前在皆斗本家历代家主皆为武者的时代，据说这个
战技是与剑胄一同单传下去的。

　然而，几乎在脱离士籍的同时，皆斗家将这份武术也
一并丢弃了，之后变成由凑斗家的男人——巫女的夫婿
或是无法成为巫女的男性子嗣——继承的风俗。

　武者之术，这种技法自然是使用剑胄的骑航战斗——
用武者华丽的空中战来完成。

　话虽如此，也<RUBY text="····">并不仅仅</RUBY>是这样。

　在吉野御流的基础阶段有泳法、体术、还有盔甲刀法
三大派别。
　将这些全都学会之后，才能获得以这综合三种为基础
的剑胄操纵秘诀的传授。

　说起锻炼的比重，不如说剑胄操纵是最轻的。
　纵观武者战斗术的全局，这是普遍趋势，并不罕见。
不是因为吉野御流作为广为知晓的流派才如此，其技法
内在是十分正统的。

　之所以会形成这样的倾向，是因为使用剑胄的战斗训练
异常困难。在数打剑胄量产化的现在，武者的集体训练才
成为军队的常识，然而在以前，一家只有一副剑胄才是寻
常的——这就是原因所在。

　武者手把手地教导武者这种理想化的教育形态在当时
十分罕见。
　这也就意味着，有经验之人对无经验之人的直接实践
教育已经无法施行。

　若是其他的技术，或许这种问题会是致命的。教会初
学者驾驶唯一拥有的小船——而且如果这艘船小到只能
乘坐一人的话，究竟需要花费多少工夫呢？


　然而翻阅武者武艺诸派的过去记录，会发现这个问题
并未严重到那个地步。

　当然，教育并不是没有过失败。
　虽然完全学会了基础，但连装备上剑胄，像样地飞行
都无法做到，最终还得不到传授技艺……这种例子似乎
也是存在的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　不过这样的事情十分罕见。

　充分掌握基础的人，即使并未从使用剑胄的
经验者那里获得实践指导，基本也没多大困难
就能掌握在空中战斗的剑胄操纵技法。

　也就是说，基础课程的完成度是非常高的。

　在体术训练中学习基本的身体动作。
　在泳法中学习空间而非平面的运动。
　在盔甲刀法中学习装甲状态的战斗方式。

　然后综合这一切，连水中装甲战斗训练都完全掌握的
人，得到剑胄飞翔高空也不是什么无从下手的事了。
　就算有着速度上的差距，但在感觉上几乎都是相同的。

　…………这样。
　
　是的，按普通的想法就是这么一回事。

　当然我并没有穿上剑胄的经验，这份广为人知的武术
常识究竟有多接近真实，或是有多离谱，我都没有立场
去评论。
　我的一生都会这样吧。

　原本凑斗家就不是武者家族，持有剑胄、使用剑胄都
是于法不合的。
　自然也无法积累实战经验。

　吉野御流的继承是在学会基础的三项技术后，作为形
式设想剑胄的使用，然后进行秘密传授，就此结束。
　这被称之为武者的武术，或许有些傲慢了吧。……不
过，这种事情无论怎样都好。

　家传的合战礼法，作为基础修炼，也包含了不使用剑
胄的武术——<k>对于现在的我而言，有意义的就是那
种武术。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶん。袈裟掛け一閃
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	SL_leftdown(@0, @0,1000);

	MusicStart("SE01",0,1000,0,900,null,false);
	SL_leftdownfade2(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　将十公斤重的长木刀架于右肩，从右肩向左下方，一
鼓作气挥斩下去。
　双脚钉在原地，纹丝不动地，挥斩。

　收回刀，再来一次。
　像刚才一样。以斜肩砍的姿势挥刀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶん。袈裟掛け一閃
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	SL_leftdown(@0, @0,1000);

	MusicStart("SE01",0,1000,0,900,null,false);
	SL_leftdownfade2(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　最基本的挥砍姿势。
　这是假设在太刀交锋中，从正位——上段（举刀过顶）
往下砍的姿势来锻炼的。

　在使用竹刀的竞技剑道，或者说以此为基础的无甲剑
术中，说起上段的姿势，多半是指把剑高高举过头顶。

　然而，在武者的剑法中，右肩架刀才是上段的姿势。

　理由十分简单，因为举刀过顶的话，头盔会妨碍到动
作。
　边注意手臂会不会被头盔勾到边摆出的上段姿势，无
论如何都无法期望成为攻破武者装甲之剑。

　双脚不跨出去亦是依据武者特有的条件而来的。

　跨出脚……也就是移动身体重心的话，剑招的威力会
急剧增强。这并没有错。

　然而，这仅限于地上。
　在空中，移动身体重心的力量，是从推进器的动力与
翼甲的精密度，还有利用高度优势完成的高速飞行中产
生的。并没有足技的用武之地。

　武者应当在地面锻炼的，是在空中战中也能运用的力
量——就是臂力与上半身的弹力了。

　因此，空挥就变成了这种形式。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶん。袈裟掛け一閃
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	SL_leftdown(@0, @0,1000);

	MusicStart("SE01",0,1000,0,900,null,false);
	SL_leftdownfade2(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　吸气的同时举起来，呼气的同时挥下去。
　上半身的肌肉收缩同步联动。举起刀的时候，让胸部
向前方挺起一般膨胀，挥下刀的时候，让胸部向脊柱引
回一般收缩。

　这说到底也不过是设想空中的太刀较量而进行的练习。
　然而，在地面战中，这是否也毫无意义呢——未必如
此。

　无甲剑术的高手经常说对操纵太刀而言，臂力是不需
要的，并嘲笑使用蛮力的武者刀法。
　事实上，经过地面非装甲战斗特殊化的剑术，其精妙
程度是武者的太刀技巧所无法比拟的。

　在空中被赞颂为刚勇无双的武者，在地上不穿剑胄与
年老的剑术高手对决时，简直和木桩似地一下子就被制
服了……这一类的逸闻有很多。
　然而，这说到底也不过是高手领域的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぶん。袈裟掛け一閃。ちょっと強め
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	SL_leftdown(@0, @0,1500);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdownfade2(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　这次，在跨出脚步的同时，挥刀。
　腕力、胸背的肌肉力量，加之重心移动带来的力量。

　在木刀的前端与地面接触前的一瞬，绷紧手部内侧，
停止运刀。根据返回之力掌控木刀……
　凭借刚才的打击力度，即使对方手持相同重量的武器
奋力挡下了这一刀，也一定能击溃对方攻势。

　在一纸之隔时收住，巧妙地避开刚力后发制人——这
种高手的绝妙境界对于外行人而言就是水中之月镜中之
花。并不是嘴上说说就能简单做到的。
　大概这是与一般的对手较量时，不可能遇到的事情吧。

　武者之剑总体说来就是发挥力量，然而所谓力量，就
是最纯粹的<RUBY text="··">强大</RUBY>。纯粹，所以易懂，所以易用。
　无甲剑术的招式十分复杂。若能达到巅峰就是无敌的，
然而这十分困难，而且不充实身心是无法发挥出来的。

　作为一种道具来看，说它在<RUBY text="···">便利性</RUBY>上有差距亦无不可。

　无法简单地比较出优劣。

　而且，即使武者刀法没有无甲剑术这么复杂精巧，但
它也有许多招式。
　这些招式在地面战中也能够应用。

　飞天之龙，一旦失去<RUBY text="翅膀">剑胄</RUBY>便成为鼹鼠——这是厌恶武
者的人经常挂在嘴边的名句，但我并不认为这是正确的
说法。

　……也许这只不过是自己的偏袒。
　事实上，并非武者的我修行武者刀法并无多大意义，
也许修行无甲剑术会比较合适，但要自己承认这一点非
常的心有不甘。

　时光无法倒流，曾经的选择也无法改变，纵然能够改
变，继承凑斗家的家传技艺仍是我必须承担的责任，所
以我无论如何都无法丢弃。


　如果只有吉野御流才是我能被允许的武艺之道的话，
我不想让自己觉得它是毫无意义的。
　即便是为了心理上的健康也好。

　…………然而。
　即使排除我个人的感情，仍有剩下的问题。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
“蛮力之剑”，<RUBY text="····">行错一步</RUBY>的话会到达何处去——
　我是了解的。

　挥去汗水，望向道场的某个角落。
　在那里有一副占着小小席位的铠甲。

　厚重的铠甲，是破碎的。
　——<RUBY text="·······">被生生劈成两半</RUBY>。

　从一年前开始就这样了。
　在这一年中，由于太过繁忙，连拜托锻造师修复的空
闲都没有。

　……一年前。
　是的，在那个时候。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

	CreateTextureSP("絵ＥＶ", 3100, Center, Middle, "cg/ev/ev133_兜割に挑む光_a.jpg");
	WaitPlay("@mbgm*", null);

	CreateEffect("エフェクト１", 200, 0, 0, 1025, 576, "Sepia");

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	FadeDelete("エフェクト１", 500, true);

	SetFwC("cg/fw/fw光三年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/ma05/0070010a14">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　即使从背后看，她的站姿仍然美丽。
　心绪兼具勇猛与镇静，身形兼具刚强与柔软，完全看
不到一分一毫的破绽。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070020a00">
（刀刃很难劈入吧）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　在我心中，已然承认——就算现在从这里突然进攻，
也会毫不费力地将我防守住吧。
　从光开始入门吉野御流才短短数年……然而，她的实
力却已凌驾于我之上。

　不，从最初开始就是这样的吧。
　一开始，光想要修行吉野御流时，本家就以违反惯例
为由不允许她修行——然而，光却开始<RUBY text="··">擅自</RUBY>向我偷师。


　<RUBY text="···">三日后</RUBY>便说要与我较量，然后打败了我。
　我的平庸也是原因之一，然而即便如此也不得不承认
她的天赋异禀。


　然后将这一事实以先斩后奏的形式强行获得了本家的
认可，正式地开始修炼才过了两年。
　光以史无前例的速度，到达了快要得到秘诀传授的境
界。

　事实上，我几乎没有教过她什么东西。
　偷师的那三天，仅仅望着我修行的样子便超越我技艺
的光，她的成长真可谓是举一反三，速度惊人。


　也许因为这样，面对光，我没有作为师父的意识。
　一想到她那青出于蓝的美名，我的心情也十分复杂。
比起乌鸦窝里出凤凰，称之为凤凰偶尔去乌鸦窝寄食才
比较恰当吧。

　虽然为她感到自豪，但这份感情并不是因为自己是对
徒弟教导有方的师父，而是因为自己是个拥有天才妹妹
的哥哥。
　对于天才的诞生，我不认为自己出过什么力。

　不过……在最后，只有这一招，是作为师父必须教导
弟子的。
　这并不是技巧，而是属于心法。

　光的背影模糊开来。

　瞬间跨步。
　挥刀下斩——

　武器是蛤刃的战场太刀。
　目标是铁制的头盔。

　
　　　　　　　　　　　　兜割

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がきーん。弾かれてます。
	CreateSE("SE01","se戦闘_攻撃_刀衝突02");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("絵白", 8500, "#FFFFFF");
	Wait(10);
	Delete("絵ＥＶ*");
	FadeDelete("絵白", 600, true);

	SetFwC("cg/fw/fw光三年前_苦渋.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/ma05/0070030a14">
「…………唔！」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070040a00">
「漂亮。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm27",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　感想脱口而出。
　真是无可挑剔的一刀。

　然而——用不着确认，那仿佛拉锯子般的声音说明了
一切。
　
　失败了。头盔并没有被劈开。

　我走到光的身旁，换了把太刀给她。
　刀刃着力的数分处，已溃不成形。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070050a00">
「……我还以为又会被折断弹飞。
　虽是无名之刀，但却是把好刀。说不定
其实是有名的刀匠做的。」

{	FwC("cg/fw/fw光三年前_苦渋.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0070060a14">
「……是啊。刀是好的。
　不足的，是光的技巧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　光好像打从心底感到遗憾，咬紧了牙关。
　即便如此，收刀的手法仍然毫不慌乱，令人佩服，不
过入鞘声比平时尖锐了一些，也许是因为还是有些抑制
不住内心的愤懑之情吧。

　几滴汗水滑落发梢，坠入道场的土地，洇湿一片。
　方才的那一招，用尽了身体的力气吧。

　空挥千次是需要体力的，不过只要得到锻炼，谁都能
做到。
　然而，将一千次的体力在一次消耗殆尽——这便是没
有才能的人做不到的行为。

　光面色苍白，呼吸紊乱。
　我再次为她才能的深不可测而惊叹。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070070a00">
「……这便是仇恨吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我不禁低声道。
　光好像没有听到的样子。疲劳中的她似乎将自己禁锢
在自我的心绪中一般。

　视线愤恨地钉在那完好得令人憎恶的盔甲上。

　虽然对头盔的顶部造成了些微的破坏，但这种程度是
无法宽慰光的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光三年前_苦渋.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/ma05/0070080a14">
「……不够……」

//【光】
<voice name="光" class="光" src="voice/ma05/0070090a14">
「力量，不够。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070100a00">
「……」

{	FwC("cg/fw/fw光三年前_苦渋.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0070110a14">
「在最后的<RUBY text="··">试炼</RUBY>花费了那么多时间，
居然还是如此不堪入目……
　我在这两年里，到底锻炼了些什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　光饱含羞愧地低语道。
　眼神似乎诉说着想要切腹的冲动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光三年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【光】
<voice name="光" class="光" src="voice/ma05/0070120a14">
「……好像是我，太过自大了。
　抱歉，景明。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070130a00">
「你没必要道歉。
　我也和你一样……不，比你更头疼
这最后的试刀。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070140a00">
「那个时候斩断的刀一共有几把呢……
我都害怕去问养父呢。」

{	FwC("cg/fw/fw光三年前_苦渋.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0070150a14">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　我想开个玩笑，可光并没有听进去。
　她低头沉思着。……并不仅仅是因为我的玩笑太过拙
劣吧。现在的光，并没有往常的从容。

　我感到胸口发疼。
　这是我们这一门的规矩，虽说这是不得不遵循的程序
——但其实是类似于欺骗妹妹一样的东西。

　这招兜割，是给希望获得吉野御流传授之人，设置的
最后的试炼。
　给予修炼者厚厚的钢刀，要求修炼者用钢刀来将头盔
<RUBY text="····">一切为二</RUBY>。

　然而，这根本就是不可能做到的事。
　因为头盔，是<RUBY text="·······">不可能被斩断的</RUBY>。

　过去，有许多高手名人挑战兜割这一神技。
　在这之中有几个人成功了。

　然而，即使是这些人，也并不是将头盔一切为二的。
　比如说最著名且最近的例子，榊原键吉的御前兜割，
也只成功给头盔造成直径三寸多的伤痕。

　兜割原本就是如此。
　只要切到这种程度就足够了，足以给盔中之人造成致
命伤害，即使以剑圣领域的技巧也无法给予比这更深的
伤痕。

　一切为二是没有必要的，并不是人类能够达成的行为。
　——况且。榊原键吉他们兜割时通常是用一般的盔甲
来做试刀的，而与之相对的，吉野御流的秘技试炼使用
的是<RUBY text="····">死亡剑胄</RUBY>……

　是从前皆斗家族长之爱骑剑胄的残骸。
　虽然作为剑胄已经死亡了，失去了强大的能力，但其
装甲的坚硬至今依然不变。即使遭遇战车碾过都不会留
下一个凹痕。

　肉身之人是不可能用刀剑将其斩断的。
　不可能。

　<RUBY text="···">不可能</RUBY>的。
　这最后的试炼，其实是布置了一个不可能完成的任务。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070160a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　不忍看光，我将视线飘向走廊。
　凤蝶停留在金橘的枝桠上。时不时地轻挥翅膀——真
是逍遥啊，不过这么想也是人们的任性妄为而已。


　兜割的试炼，并不是说一切为二才是好的。
　最终放弃，承认自己的极限——这才是试炼的终点。


　吉野御流在修行的最后所追求的，并不是超人的力量。

　而是让人领悟自己并非超人，无论剑道精湛到何等地
步都只不过是个凡人而已。

　合格的条件并不是成功，而是放弃。

　——勿沉溺于武力。
　
　兜割试炼的真意，就是为了给予这个忠告。

　…………我不认为这是错误的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光三年前_苦渋.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【光】
<voice name="光" class="光" src="voice/ma05/0070170a14">
「……唔……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070180a00">
「光……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　看着光沉思的眼神，我差点说漏了嘴。

　当然，试炼的真相按门派的规矩是不允许说出去的。


　如果是拥有灵活思维的人，大概早就看出其本意知晓
正确答案了。
　然而，死心眼的光并不会有这种想法。这点我很清楚。


　养父曾说过，越是有才能的人越会在这个试炼中遭遇
挫折。
　这对光来说是最大的难关吧。说句玩笑话，这可以说
是十分与她相符的最后试炼。

　虽说对持剑者的力量的忠告是不可或缺的，但像这样
置身于试炼之旁，不禁让我觉得自己实在是出奇地刁难
人。
　不过——应该快要结束了。

　光已经承认自己过于骄傲，开始了解自己的极限。
　也许因为她顽固的性格还会暂时花费点时间，但终有
一日她一定会身怀开派祖师所追求的谦逊之情。

　我相信自己妹妹的器量。
　这一点也不困难。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070190a00">
「不要想太多了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　我拍着光的肩膀，带有意图地轻声向她说话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070200a00">
「当事情遇到瓶颈时，不如先放松力气，
转换一下视角看看。
　不要钻牛角尖地认定<RUBY text="·······">这件事是这样的</RUBY>。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0070210a14">
「……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　我打算委婉地提示光，但光的反应却十分迟钝。我的
意图一定没有传达给她吧。
　不过传达到的话，就违反规定了。这种进退两难的窘
境真令人焦躁不已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070220a00">
「借用养父的话来说，刀并非只有坚硬——
　只有当坚硬的刀刃下包裹着柔软的内芯，才能
锻造成刚柔并济<RUBY text="····">不会折断</RUBY>的好刀。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070230a00">
「是前阵子出差碰到的时候从他
那听来的。
　现在想起来，说不定是给你的
留言。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0070240a14">
「父亲吗……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070250a00">
「嗯。
　……光还没见过他啊。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0070260a14">
「………嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　光认同道，声音没有掺杂任何情感。

　父亲这一词汇无法令她想到任何东西吗……还是说不
知道该想什么好呢。
　无论哪种，都是令人心痛的。

　光的父亲——养母的丈夫——我的养父——现在并不
在凑斗家。
　这既包括地理上的含义，也包括法律上的含义。


　在光诞生后不久，经常与分家意见相左的养父像被驱
逐一般从凑斗家的户籍中脱离。

　现在恢复旧姓，在镰仓就任公职。

　对本家而言，只要凑斗家的巫女有了继承人，总是把
碍眼的男人放在身边的理由也就消失了。

　对那个人来说，凑斗家的男人只不过是种马。

　所以，光没有见过她的父亲。
　虽说刚出生时有见过他的脸，但也决不会残留在记忆
中吧。

　我在养父离家后也经常前去镰仓见他，不过光却没有
这样的机会。
　因为身为巫女的她如果想要离开这块土地的话，本家
是绝对不会给出好脸色的。

　而且养父也绝不会到这里来。
　繁忙是原因之一。……还有个原因大概是，对不欢迎
自己的人的顾虑让他无暇顾及欢迎自己的人。

　然而——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070270a00">
「……虽然那个人，已经不会回凑斗家了。
　但仍然没有舍弃吉野御流宗主的立场。
见面的时候也会修正我的技巧。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0070280a14">
「……？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070290a00">
「如果你得到秘技传授资格的话，就打算
让你继任宗主。他前几天这么说过。
　那个时候……因为这并不是互相写信
就能解决的事。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070300a00">
「养父，会来这个家吧。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0070310a14">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　并不是因为想要鼓励她而说出口的。如果我会想到
这一点，大概早就中断了话语。
　这种激励，可能会把光逼入更深的死胡同。

　光与养父就算只见一面也好——我只是不禁想把这种
想法诉之于口。
　然而不管怎样，这好像并没有刺激到光的内心。


　她漠不关心地移开视线。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光三年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【光】
<voice name="光" class="光" src="voice/ma05/0070320a14">
「……景明。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070330a00">
「嗯？」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0070340a14">
「光……见得到父亲吗？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070350a00">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　光那平淡的语调，让我很难揣测其真意。
　含糊地点了点头，我在内心思索着。

　……我能完成兜割的试炼，获得秘技的传授吗——也
许她问的是这种意思。
　
　过了一会后意识到这一点，我继续说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070360a00">
「一定会见到的。」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0070370a14">
「是吗……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵暗転", 18001, "#000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　她的回答淡如止水。
　光擦掉最后的汗水，放下太刀，改拿起木刀。


　开始空挥。
　令人心情舒畅的破风之声，有节奏地传入耳朵。


　这已经是，平时的光了。<k><?>
{//◆ブラックアウト
	SetVolume("@mbgm*", 2000, 0, null);
	Fade("絵暗転", 2000, 1000, null, false);}
　
　一年前，发生了这样的事。
　不知为何，我如此清晰地记着那天的事。

　而在那时应当是受到强大冲击的，之后——光再次
挑战兜割那天的事，我的记忆却变得非常模糊。
　也许，记忆往往都是这样的……


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
	Fade("絵暗転", 0, 1000, null, true);
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	SL_down2(20000,@0, @0,1000);
	MusicStart("SE01",0,1000,0,900,null,false);
	SL_downfade2(0);
//◆ずばーん。ぶった斬った音
//◆斬り割られた鎧兜
	CreateSE("SE01b","se戦闘_攻撃_刀衝突01");//ダミー注意
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 1000, "#FFFFFF");
	Delete("絵暗転");
	CreateTextureSP("絵ＥＶ", 500, Center, Middle, "cg/ev/ev005_斬り割られた兜.jpg");
	FadeDelete("絵白", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　<RUBY text="···">那一天</RUBY>。
　光将铁甲斩断了。

　然后在当晚，因矿中毒而病倒。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆復帰
	EfRecoOut1(1000);
	Delete("絵ＥＶ");
	EfRecoOut2(1000,true);

	Delete("@Face_Sepia");
	SetFwC("cg/fw/fw景明_過去.png","normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070380a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　促使光完成了那<RUBY text="··">怪异</RUBY>任务的力量
究竟来自何方呢——

　我至今仍不知晓。

　天才。
　只能用这个词来理解。

　我想，也许就是这样。
　然而。

　……那本是<RUBY text="···">不可能</RUBY>的。
　肉身的人类，不借助剑胄的力量，将锻造的盔甲一切
为二这种事情——绝对不可能。

　这是无法做到的。
　即使那副剑胄已死亡，而且曾经被破坏过一次，但
应该早已经过熟练的锻造师之手完美地修复了。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バチッ。
//◆視界が揺れる
	CreateSE("SE01","se特殊_ノイズ01");
	CreatePlainSP("絵震",500);
	Wait(10);
	CreateColorEX("絵白", 1000, "#FFFFFF");
	Fade("絵白", 0, 800, null, true);
	Wait(10);
	SetBlur("絵震", true, 3, 500, 200, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵白", 200, 0, null, false);
	FadeFR2("絵震",0,700,300,0,0,20,Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　
　　　在过去<k>
　
　　　　　　　　　　　　　　　　有一次

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0070390a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　是的。
　我——<k>知道……

　是什么……
　<RUBY text="·······">造就了这份怪异</RUBY>。

　那是——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バチッ。
//◆過去·発狂景明
//◆過去·景明の兜割
	CreateSE("SE01","se特殊_ノイズ01");
	CreateSE("SE01b","se特殊_ノイズ01");
	CreateTextureEX("絵震", 500, Center, Middle, "cg/ev/ev006_景明の狂相.jpg");
	CreateTextureEX("絵震２", 500, Center, Middle, "cg/ev/ev133_兜割に挑む光_c.jpg");
	Wait(10);

	CreateColorSP("絵白２", 400, "#FFFFFF");
	Fade("絵白", 0, 1000, null, true);
	Wait(10);
	SetBlur("絵震", true, 3, 500, 200, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵白", 200, 0, null, false);
	FadeFR2("絵震",0,1000,300,0,0,20,Dxl3, false);
	Wait(150);

	Fade("絵白", 0, 1000, null, true);
	Delete("絵震");
	Wait(10);
	SetBlur("絵震２", true, 3, 500, 200, false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵白", 200, 0, null, false);
	FadeFR2("絵震２",0,1000,300,0,0,20,Dxl3, false);
	Wait(150);

	Fade("絵白", 0, 1000, null, true);

//◆暗転
	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma05_008.nss"

}


