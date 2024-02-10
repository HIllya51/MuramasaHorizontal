//<continuation number="690">




chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene ma01_004.nss_MAIN
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
	#bg009_鎌倉住宅街a_01=true;
	#bg002_空a_02=true;
	#bg002_空a_03=true;
	#bg006_雄飛の部屋_03b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_005.nss";

}

scene ma01_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();




..//ジャンプ指定
//前ファイル　"ma01_003.nss"

//◆住宅街
	PrintBG("上背景", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg009_鎌倉住宅街a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm27",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　律的家在钱洗牟天附近的住宅街。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　所谓钱洗牟天，是位于洞窟中的奇怪神社。
传说用其中涌出的水来洗钱则会加倍，
以各种难以置信的颠覆常理的利益传说为人所知。

　另一方面，附近的住家大都修造得比较朴实，
更坦率地说，贫穷。
　尽是些似乎用一根火柴就能引起大轰动的枯木建筑。

　律的家在其中经营着一家小杂货铺。
　以生活用品为中心，食品、文具等日常生活必须的
各种物品均有经营。并不是些贵重的东西。

　让女儿到处玩耍也是在小店生意好的时候……
虽然这么说，律如果真的开始疯玩，
杂货屋只需三天就会被抵押给哪里来的高利贷了吧。

　那种行为肯定只有在沿海拥有大厦的
社长家公子之流才能被允许。

　杂货屋的生意兴隆也有我们一份功劳。
　本来就便宜的定价，再加上友情折扣，
完全没有理由特意跑到大街上的超市去。

　更别提经常将剩下的商品慷慨相赠。
　尽管如此。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st雄飛_通常_制服.png");
	StL(1000, @0, @0, "cg/st/st忠保_通常_制服.png");

	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040010b56">
「剩下的商品就是有剩下的理由。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040020b43">
「嗯。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040030b56">
「这个叫番薯汽水的东西真有点那个啥，
怎么说呢，好像又没理由抱怨。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040040b43">
「是呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　勇敢地挑战开拓新的味觉，为了尽可能不品尝到
这些华丽四散的或许是液体的东西而拼命下咽，
我们并排走在暮色将近的小路上。小夏跟在身后。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040050b33">
「还是没回家呢……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040060b56">
「就连叔叔也坐立不安了。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040070b43">
「阿姨倒是笑了笑。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　一边感受着刺骨寒风，一边回忆与律的双亲的对话。
　二人似乎对此事都没有线索。

　自从昨天早晨上学之后，律就再没回过家。

　因此今天一整天，律的行踪都无人知晓。
这样的情况还是第一次。
　尽管她是个爱玩又会夜不归宿的人，
但每天至少会和家人朋友见上一面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040080b56">
「……你怎么想？　叔叔不是说，
前天晚上曾注意到她不太高兴么。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040090b33">
「所以就离家出走？　不会吧。
　那只是日常对话吧。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040100b43">
「如果律生气了的话，
应该会当场跑掉吧。
　还要睡一晚再走我觉得有点蹊跷。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　只要好好睡上一觉，烦恼就会完全忘记。
这既是律的优点也是她的缺点。
　虽然容易吵架，却也容易恢复关系。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040110b56">
「……是啊。
　那果然还是像阿姨说的那样，
只是玩得太入迷忘记了时间……吧。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040120b33">
「已经一整天了哦？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040130b43">
「也许发现了相当好玩的东西呢。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040140b56">
「喂喂，你认真的吗？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040150b43">
「一半一半吧。不过律绝对
是那种容易对事情着迷的类型呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0199]
　但我觉得她还是有限度的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_沈む.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040160b33">
「结果，还是不知道她在哪儿……」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040170b43">
「是啊。不过担心的事情少了一件。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040180b33">
「什么？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040190b43">
「如果家里没有收到任何地方的联络，
被镰仓大番管制牵连的可能性就为零。
只要律没有特意隐瞒……不，
即使隐瞒应该也能马上查清她的来历。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040200b56">
「啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
　确实如此。
　镰仓大番，即六波罗的治安部队——正如所有
六波罗一样——以残暴著称，却不是闲杂人等的聚集地。

　不会将市民逮捕起来在牢狱里吃白饭。
　无论如何处置，都应当会联络家人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040210b43">
「完全相同的理由，在警察那里的可能性
也可以排除了呢。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040220b56">
「……警察本来就什么都不做吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　镰仓也有警察署。
　虽然有，但仅限于有。
　就像除了幕府以外的其他一切政府机关一样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040230b33">
「也就是说至少没被关进监狱吧。
　到底该不该安心呢？」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040240b56">
「嗯？　肯定是应该安心吧。
　最坏的可能性也就这样了。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040250b33">
「你就没想过她可能被卷进犯罪事件吗!?」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040260b56">
「…………」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040270b43">
「…………」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040280b33">
「……抱歉。想不到也理所当然吧，一般。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040290b56">
「不……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　害怕把那样的可能性说出口。
　明知道这样是不理性的。
但一旦说出口仿佛就会变为现实，
我无法舍弃这份恐惧感。

　然而，现在也许不是逃避的场合……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040300b43">
「……小夏。」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040310b33">
「……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040320b43">
「我觉得暂时可以排除这种推测哦。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040330b33">
「……为什么？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040340b43">
「确实现在，大和的治安让人不敢恭维。
　镰仓仅仅作为六波罗根据地，
虽说多少安全一些，
但到底只是相对而已。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040350b43">
「战争的伤痕尚未治愈，政治与其
说是轻视市民，不如说早已进化为无视，
其结果终为——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
　忠保将纤细的食指指向天空。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040360b43">
「<RUBY text="······">魔王从天而降</RUBY>。
　银色之星落下，无论是谁，格杀勿论。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040370b56">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　听到这些话的瞬间，后背露骨地颤抖起来。
　甚至根本想不到羞愧二字。

　忠保口中所说的，是对于现在的这个国家而言，
某种意义上凌驾于六波罗恐怖程度之上的
忌讳存在——银色之星。

　无论是谁，心中都时常恐惧着。
　恐惧着<RUBY text="·">它</RUBY>到访的瞬间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040380b43">
「在这种情势下要说犯罪并不常见
才反而不可思议。
　不过，稍微想想啊。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040390b43">
「如果律被卷入犯罪事件，
可能会是哪种情况呢？
　……伤害、谋杀、绑架诱拐，
不就是这些么？」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040400b33">
「……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040410b43">
「如果是伤害事件，
二十四小时都没有联络很奇怪吧。
　即使是重伤到无法自己回家，
医院方面应该也会联络家人。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040420b43">
「重伤到医院都无法运走的情况……
这就是下一种假设了。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040430b56">
「……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040440b43">
「谋杀。不过，这又会怎样呢？
　杀人很简单，但是善后却很难。
一般情况下尸体很快就会被发觉。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040450b43">
「人的尸体出奇醒目。
　如果在镰仓这样的城市里发生死亡事件，
想要一日之内不被任何人发现，
概率还是相当低的吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0421]
　他淡淡说着。表情没有丝毫变化。

　这样的忠保，让我多少感到了些恐惧。

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0422]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040460b43">
「最后是绑架。听好了哦？
　以绑架本身为目的的情况暂且不提……如果是
以利益为目的，不索取赎金就没有意义了。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040470b33">
「……是呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　背后传来了点头的感觉。
　似乎松了一口气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040480b33">
「那，律她……
　没有遇到很糟糕的事吧？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040490b43">
「虽然还不能断定，
　但我想暂时还不用太担心。」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040500b43">
「我们在这儿东一句西一句乱猜的时候，
她说不定突然就回家了。
　这种概率似乎最大呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0472]
　至少从现在来看——最后这样低语着的忠保闭上了嘴。
　一时间，只有风声穿过。

　忠保的说明很有道理。
　这个男人绝不是平常就让人感到闪闪发光的类型，
但从理论上对事物进行整理，然后加入自己的思考，
在这一点上比任何人都强。

　因此很有说服力，我也能理解接受。

　可是，尽管如此，
　我心中的那份骚动——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040510b56">
（不）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0481]
　忘掉吧。
　自己那没来由的第六感和忠保的研究，
哪个可信度更高根本没必要烦恼。

　拿考试成绩一比便一目了然。
　靠猜拳定胜负的我的分数，大约可以匹敌忠保的一半。

　……所以，忠保是正确的。
　我们讨论着的这段时间里，律肯定回家了。

　如此相信着，我把手里的纸包装送到嘴边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040520b43">
「说起来，雄飞。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040530b56">
「嗯。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040540b43">
「番薯汽水究竟是谁想出来的呢。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040550b56">
「谁知道。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	DeleteStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0491]
　相视叹息。

　白色的粘液状碳酸饮料，还剩下大半。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm27", 2000, 0, null);

	CreateColorEX("黒幕１", 15000, "#000000");
	Fade("黒幕１", 1000, 1000, null, true);
	Delete("背景１");

	CreateTextureSP("背景１", 1010, 0, 0, "cg/bg/bg002_空a_02.jpg");
	CreateTextureSP("背景２", 1000, 0, 0, "cg/bg/bg002_空a_03.jpg");

	Wait(1000);

	Fade("黒幕１", 1000, 0, null, true);

	Wait(300);
	FadeDelete("背景１", 2000, true);

	Wait(500);
	Fade("黒幕１", 500, 1000, null, true);
	Delete("背景*");

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg006_雄飛の部屋_03b.jpg");
	FadeDelete("黒幕１", 500, true);

	SoundPlay("@mbgm26",0,1000,true);

//◆夕暮れの鎌倉
//◆夜の鎌倉
//◆暗い自室


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　……无论如何，明天再说。

　到了明天，律就回来了。
　肯定……恐怕，还是一副若无其事的样子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetComic(@0,@0,11);
	SetFwC("cg/fw/fwリツ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【リツ】
<voice name="リツ" class="その他女声" src="voice/ma01/0040560b11">
『嚯嚯嚯嚯嚯嚯嚯！　怎么了雄飞同学，
那副被青蛙尿到身上的表情！　莫非你以为我被
恶党抓去轮奸了吗!?』

//【リツ】
<voice name="リツ" class="その他女声" src="voice/ma01/0040570b11">
『肯定是以为我会被全裸地塞在垃圾箱里，
拉下裤链准备完全地等着熨有
“内有人肉便器”字样的包裹
送货上门吧！　真是，多么的下流啊！』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0511]
　就是这种感觉。
　……呜哇。总觉得真的会变成这样，
想想就超没兴致。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040580b56">
（可是，如果……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0521]
　明天，到了学校。
　如果，律不在的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0522]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040590b56">
（不在的话……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0523]
　到那时候——再去找她。

　只能我们去找她。
　警察之类，根本靠不住。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040600b56">
「不管怎样，看明天了。」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040610b33">
「明天啊。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040620b56">
「嗯。然后？」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040630b33">
「然后，什么？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040640b56">
「为什么你在我的房间里企图钻进我的被窝
我对此抱有疑问所以问你『然后？』
希望你现在此时立刻就能理解。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040650b33">
「我觉得好害怕……一起睡，好吗？」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040660b56">
「我真想对你那只凭声音便能演出到如此可爱的
才能脱帽敬礼，说实话简直到憎恶的程度，
但你不觉得我们俩扭曲交叉成复杂形状的
双脚在更强烈地诉说着什么吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0531]
（图解）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆　　　　＼　　＜
//◆　　　　○□卍□○　YEAR！
//◆　　　　／　　　＼

SetBacklog("　　　　＼　　＜", null, null);
SetBacklog("　　　　○□卍□○　ＹＥＡＨ！", null, null);
SetBacklog("　　　　／　　　＼", null, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　　　　／　　∧
　　　　○□卍□○　ＹＥＡＨ！
　　　　＼　　　／

</PRE>
	SetTextEXC();
	Request("@text0540", NoLog);
	Request("@text0540", PushText);
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040670b33">
「我，意识到了……和你这样在一起的时候，
我才最安心。」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040680b33">
「为什么，会这样呢……？」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040690b56">
「你有病!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
　饶了我吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト

	ClearWaitAll(2000, 2000);


..//ジャンプ指定
//次ファイル　"ma01_005.nss"








}








