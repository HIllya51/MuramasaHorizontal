//<continuation number="490">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_021.nss_MAIN
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
	#bg032_八幡宮奥舞殿内a_01=true;
	#ev131_景明が湊斗家に来た日=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_022.nss";

}

scene md01_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_020.nss"

//◆回想·八幡宮
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　奉刀参拜，死源氏长者到八幡宫参拜，
祈求武运昌隆的每年惯例行事。
　袭击这项活动，

　对正三位六卫大将领、
　元帅龙军大将、
　大和霸主、
　足利护氏进行讨伐。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210010a00">
「……还有。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210020a00">
「给深深动摇了的幕府增强朝廷权威——
另一方面，也增加了朝廷的发言力度。
　用这种根据公武合体而制定的新体制来
缓和官民对立，实现政治的安定。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0210030a00">
「让ＧＨＱ没有插手的空隙……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210040a10">
「归结而言，就是如此。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210050a11">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　应该称为雄韬伟略。
　因为几乎是赤手空拳挑衅强大的军事政权，
让其体制改变。

　不知有多少成功的希望。
　但是，若这样放任不管的话，进驻军一到
就会将六波罗排除在外——这之后就能完全
占领大和了吧。

　或者说六波罗取得胜利并成为大和唯一的
支配者呢。
　在残酷的交战后……这个国家会迎来何种
结局。

　不，还有一种可能。
　两者之间相互牵制，战火继续延绵不断——
发展成这种最糟的状况。

　想要拒绝令人不愉快的命运，得到<RUBY text="···">相对的</RUBY>美好
未来的话，果然还是需要行动。
　亲王和署长两人的设想，虽然有些强横，
但毫无疑问是最适当的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210060a10">
「如何。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　能实行暗杀的人，只有我。
　足利护氏是战斗经验丰富的武者。不是一把枪就能轻易
放倒的男人。只有同为武者才可能拿下他的首级。

　春熙亲王并没有夸张地鞠躬。
　也没有反复劝说，这是为了大和的国民。

　已经说得很明白了。
　接下来就靠你自己的判断——是这样吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210070a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　亲王的想法才能拯救大和。
　应该深信着，无需担心。

　应该不是简单的计划。应该也会有差错及遗漏。
困难也一定很多——但是，如果是那个人的话就
没有问题，亲王就是那样的人。
　还有署长在一旁辅佐。

　再怎么说也不能因为我的头脑无法想出亲王那
样缜密的计划，就去否定其价值。

　无论从哪个角度来说，亲王都没有错误。

　……那我能做到吗。
　攻击足利护氏，取他性命吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210080a00">
（为了大和）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　为了拯救多数的善良的人们，
　而去杀死一个恶人。

　…………这是。


　我已经一次又一次重复着的行为。

　阻止银星号的扩散，
斩杀许多被“卵”寄生的武者。

　斩断一恶，留下多善。

　完全一样。
　没有什么不同。

　无论哪一个，

　————都不过是独善罢了。

　为了国家。为了人民……
　剥下一层光鲜的表皮，
看看真实的一面吧。

　亲王的动机事实上是出于私人目的什么的，
这种挑拨之事我并不想说。
　但是，若是选择了用暴力解决对立者这条
路，不管出于什么样的动机都不过是独善。

　为了我所谓的善，
　将他的善视为恶，亲手埋葬。

　一剑一杀是善恶相抵。

　我的回答已定。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210090a00">
「让我去吧。
　奉刀参拜那天，到足利护氏面前。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210100a10">
「……你要做吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　亲王的声音甚至有些意外。
　一旁的署长虽然脸色未变，但心中
也同样有些惊异。

　我摇了摇头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210110a00">
「现在我还不能与您约定。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210120a11">
「……什么？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210130a00">
「见到本人之后再决定。
　杀还是不杀。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210140a00">
「足利护氏是不是非杀不可的人。
　我要亲眼见过以后……才能做决定。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210150a10">
「…………」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210160a11">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210170a00">
「说不定反而会给您添麻烦，所以请不
要抱过高期待。
　我会把在这里听到的事情全都忘掉，
立马离开。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0210180a00">
「如何——」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210190a10">
「好吧。」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210200a11">
「宫殿下……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210210a10">
「在将计划全盘托出的时候，就已经决定
要相信景明君了。
　那肯定会相信到底的吧。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210220a10">
「本王相信景明君，就拜托你了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210230a00">
「……实不敢当。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210240a10">
「你要是认为不能杀掉也没事。
　到那时，还要麻烦景明君事后把你的想法
告知于本王。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210250a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……被抱以予过分的信赖。
　欣慰的同时，也感到肩上担子的沉重。

　而且，我还不得不用刀刃来报答这份信赖。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210260a00">
「还有一件事，不得不先和您打声
招呼。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210270a10">
「嗯？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210280a00">
「您应该知道我的剑胄……
　村正的戒律吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　如果斩杀了敌人的话也要杀自己人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210290a11">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210300a00">
「舞殿宫殿下。
　如果我到时杀了足利护氏的话。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210310a00">
「也不得不取走您的性命。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　这是村正的规矩。
　善恶相抵的法则。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210320a00">
「这样可以吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(1000);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210330a10">
「本王知道了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210340a00">
「……」

{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210350a10">
「用本王这个笨蛋来换大将领的人头。
　……不是很有赚头吗。」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210360a10">
「能代替本王的人，到处都是。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210370a00">
「宫殿下……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我无法理解这些谎言。
　……可能只是用来骗骗我的耳朵，亲王
现在心里已经决定等完事后就把我解决了也
不一定。

　哪一个才是真实的？

　无论是哪一个，舞殿宫春熙亲王这种人物，
都是值得让人打从心底里尊敬的存在。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210380a11">
「景明。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210390a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　严肃的语气让我不由将视线移向他。

　我预测他要开口。
　似乎要说些什么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210400a11">
「到时就杀我吧。」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210410a10">
「菊池。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210420a11">
「可以吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　署长看也不看御帘一眼，只是直直
地盯着我，郑重地说道。
　看来他已经下定决心了。

　——善恶相抵。

　如果要杀足利护氏，就不得不杀这个人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210430a00">
「署长……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·明堯との出会い
//◆戻り
//回想シーンまとめ
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev131_景明が湊斗家に来た日.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 100, null, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210440a00">
「明尧大人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　有多少年没叫过养父的名字了呢。
　他并未回应我。

　……我下不了手。
　我不可能杀了他。

　我怎么能亲手去杀我的大恩人呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210450a00">
（但是）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　另一方面，就能够毫不在意杀了足利护氏吗。

　同样是人类。
　无论善恶功过，都一样只是人类。

　不过单纯是从我的角度只看到了署长的善，
也只看到了护氏的恶而已。
　站在不同角度的人会有不同的见解。

　那么视一方为恶将其消灭，让另一方作为善
活下去，只不过是。

　——独善罢了。

　村正说过。
　独善才是争乱的根源，是将杀戮正当化，并无
止尽持续下去的元凶。

　是的。
　就是那样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210460a11">
「景明。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210470a00">
「我明白了。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210480a11">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210490a00">
「当我杀了大将领的时候……
　我会把你……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　杀死。

　杀死我的养父。

　不得不杀。

　……如果不杀养父的话，
　就不能杀足利护氏。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想終了
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	WaitKey(1000);

}

..//ジャンプ指定
//次ファイル　"md01_022.nss"