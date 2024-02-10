//<continuation number="1950">



chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_003.nss_MAIN
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
	#bg008_教室_01=true;

	#ev102_大阪虐殺_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_稲城忠保=true;
	#voice_on_鈴川令法=true;

	$PreGameName = $GameName;

	$GameName = "ma01_004.nss";

}

scene ma01_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_002.nss"

//◆ＳＥ：ガラッ
//◆教室、忠保
	PrintBG("上背景",30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg008_教室_01.jpg");

	StL(1000, @0,@0,"cg/st/st忠保_通常_制服.png");
	FadeStL(0,true);


	OnSE("se日常_学校_教室ドア開ける01",1000);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm29",0,1000,true);

	SetFwC("cg/fw/fw忠保_通常.png");

	#voice_on_稲城忠保=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030010b43">
「我觉得，田村队的雷霆之所以战败，与其说
因为过于信任旋回性能，不如说是他们轻视了
能够直线取胜的加速能力，调整了机翼的缘故。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030020b43">
「不管在黑丸上使用辅助推进器，让机翼
成为重扩的意图在哪里，单从结果来看，
只能说是聪明一世糊涂一时，实在遗憾。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：ピシャン
//◆黒塗り
//◆ガラッと教室

	SetVolume("@mbgm29", 0, 0, null);

	CreateSE("SE01","se日常_学校_教室ドア閉める01");
	MusicStart("SE01",0,1000,0,1700,null,false);

	CreateColorSP("黒幕１", 3000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("@text0010");

	WaitPlay("SE01", null);
	Wait(2000);

	StL(1000, @0,@0,"cg/st/st忠保_通常_制服.png");
	FadeStL(0,true);

	OnSE("se日常_学校_教室ドア開ける01",1000);

	DrawDelete("黒幕*", 1000, 100, "blind_01_00_1", true);


	SoundPlay("@mbgm29",0,1000,true);

	SetFwC("cg/fw/fw忠保_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030030b43">
「早啊雄飞。呀，小夏，你今天也特别迷人呢。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030040b56">
「……早上好。」

{	StR(1000,@0,@0,"cg/st/st小夏_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw小夏_通常b.png");}
//◆棒読みで
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0030050b33">
「谢谢你稻城君。我很开心。你也很帅哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……刚打开教室门就看到的这个男人，
名字叫作稻城忠保。

　他跟我和小夏的关系，该说是青梅竹马呢
还是冤家呢，反正就是这一类的存在。

　和外表一样看起来是个轻松的人，
似乎还有点轻浮，事实上也的确如此。

　相处方式很简单。
　不用一板一眼对待，点到为止。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030060b43">
「真冷淡啊小夏……每次你这么对我，
我的心就像小鸟一样颤抖个不停。
但是对这样的我，
你肯定也有想要温柔地拥抱的温暖心胸吧。」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0030070b33">
「雄飞，带打火机了吗？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030080b56">
「没有。不对你打算用来干嘛，
　虽然我不想阻止你。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030090b43">
「能被爱的火焰灼烧是我的夙愿啊，小夏！
　Ｃｏｍｅ　ｏｎ！」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0030100b33">
「律呢？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030110b43">
「还没来呢。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030120b56">
「真少见啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我、小夏、忠保再加上另一个人——饰马律。
这四个人，组成了一个所谓团队的东西。
　倒不是为了出席什么比赛。

　本是同年又是四人中生活最散漫的律，
却总是很想当大姐头的样子。
不知是不是为了增加自己的权威性，
她每天必定从容不迫地到校。

　然后训斥迟来的伙伴。
　明明是自己擅自来早了，
却又因为一个人呆久了空虚寂寞而开始发火。

　那就和其他同年级生玩玩就好了，
但偏偏和她同样早到校的都是些
优秀的模范生，和堂堂正正
成为反面教材的律完全没有共同话题。

　因此她的苦闷需要发泄。
　我是主要对象。为什么。唉，我真的不知道。

　不过和小夏不同，她不会使用具体的暴力形式。
　律稍微文明一些，至少是使用语言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwリツ_笑顔.png");
	SetComic(@0,@0,11);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【リツ】
<voice name="リツ" class="その他女声" src="voice/ma01/0030130b11">
『哦呵呵呵呵呵呵，早上好啊雄飞同学。
哎呀哎呀，今天也这么晚。
　到底为什么早上总这么迟呢？』

//【リツ】
<voice name="リツ" class="その他女声" src="voice/ma01/0030140b11">
『肯定是全身的血液都集中到下半身某处，
结果脑袋里循环的血液也被夺走了，肯定是
这样没错！　不行啊雄飞同学！
晚上的右手运动可要好好做啊！』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　内容极度不文明。

　老实说，一大早就被那样腐蚀性强劲的
音波注入脑髓，实在让人难以忍受，
所以律今天到现在还没来真是庆幸。

　不过，有些可疑。
　她是极少会掐着时间到校的家伙。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030150b56">
「不过，她晚上夜游到那么晚却一次都没
迟到过，更让人觉得不可思议啊……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030160b43">
「说不定也没那回事了呢。
夜间外出的管理似乎变严格了。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0030170b33">
「是吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　学生夜间禁止外出理所当然。
　忠保说的，是针对成人而言的禁令，
当然也包括伪装成成人外出的学生。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030180b43">
「镰仓大番的夜巡次数貌似增加了呢。
如果被抓住，运气好拘留一晚，
运气不好的话，直接送往军事基地。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030190b56">
「唔。真受不了。
　……不过，要是因为这种事退缩
可就不是律了吧。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030200b43">
「她很可能会说着“钻警备网络空子的
刺激感诱惑真是受不了啊”，
然后比之前更频繁地夜游吧。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0030210b33">
「可不是么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　很有可能。

{//立ち絵消し
	DeleteStR(300,false);
	DeleteStL(300,false);}
　我一边和同学随便打着招呼，一边坐到自己的位子上。
　忠保一阵风似地从后面追来。也是，他的座位就在旁边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0,@0,"cg/st/st忠保_通常_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030220b43">
「那么，继续说。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030230b56">
「说什么？」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030240b43">
「装甲竞技。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030250b56">
「哦哦，是是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　忠保爱好广泛，而其中最感兴趣的，
是使用竞技用剑胄的装甲竞技。
　不过当然，不是指他自己能飞。

　寻找并购买专门杂志，只要有比赛就听收音机转播，
在附近的话就到现场观看比赛。目前仅此而已。
可是，有朝一日作为选手在环形跑道上奔驰，
似乎是他的梦想。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_快活.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030260b56">
「那个叫啥来着。田村又输了？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030270b43">
「虽然我不希望你加个“又”字，但确实如此。
又没有设置上的失误……为什么会有那种
外行一样的失败啊……」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030280b56">
「唉，田村队嘛。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030290b43">
「虽然不希望你就这么一句话了事，但的确
如你所说。真遗憾。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030300b56">
「那获胜的是？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030310b43">
「横锻的超级猎犬。
　翔京的急升号也在后面紧追不舍呢。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030320b56">
「又是他们。真强啊。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030330b43">
「是传送带旋转的威力吧。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030340b56">
「表面构造太过暴力实在是没意思，
所以我怎么都没办法喜欢他们队……」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030350b43">
「同感啊。这一点上田村真棒呐。
　那设计真的感觉就像梦一样。」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030360b56">
「就是竞赛赢不了。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030370b43">
「是好是坏反正都是兴趣嘛。
　比起胜利，想要参加的心情更优先
……我就是喜欢这种地方。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030380b56">
「田村队的选手是谁来着。
　是你偏爱的那个皇路操吗？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030390b43">
「怎么可能，她可不会犯那种失误。
　怎么说呢？　是个没听过的新人。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030400b56">
「本事如何？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030410b43">
「没有什么可圈可点的。果然，如今的田村队
就是皇路操一个人的队伍啊。」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030420b56">
「由你来继任不是挺好的吗？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030430b43">
「当然，我就是这么打算的哦？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　像平常一样小声回答的忠保。
　总之很认真。

　是的，不开玩笑地说，这个男人很厉害。
　想要成为职业选手必须突破重重难关。尽管如此，
忠保仍认真地以此为目标在努力。

　平常不懈地学习和收集情报自不必说，
为了增强体力还每天早上跑步，
对操纵剑胄而言必修的游泳训练也从不欠缺。

　虽然学习实际技术必须要入手剑胄，
但那笔资金他似乎打算在从学校毕业后几年内，
通过帮助父亲的工作获得。
　因此，他也在做这方面的功课。

　当然，剑胄是高价的。
和本职为武者所用的战斗铠甲剑胄无法相比——
本来市场上也没有销售——竞技用剑胄是十分稀少的商品。

　就连外型残缺的二手品也绝对不下百万。
　和买车梦想的价格不同。

　在数年内有望存储如此金额的忠保——
他的父亲到底是贸易公司职员，在当今世道
可谓是杰出人才——确实算富裕之人，
但一般来说也会放弃。

　不管从哪个角度，不管怎么看都很轻薄的男人，
他的人格里怎么会有如此毅力，
这可真算得上神秘。
　人的内心深不可测。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030440b56">
「说实话我真的挺羡慕的。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030450b43">
「啥？」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030460b56">
「有明确梦想，而且能为之努力的你。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030470b43">
「…………」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030480b56">
「在被问是否努力之前，我连想做的事都没有呢
……自己也觉得不可思议。
　我怎么这么老气横秋呢。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030490b56">
「一般来说，像我这样的年轻人不是应该胡乱地
抱有一个梦想才对吗？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030500b43">
「胡乱么。」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030510b56">
「我将来可以夺取天下——
毫无怀疑地这么相信着之类的？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030520b43">
「你相信过？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030530b56">
「曾经。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030540b43">
「现在呢？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030550b56">
「……总之在死之前
能有间狗窝大小的房子就够了。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030560b43">
「确实老气横秋呢。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030570b56">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　总感觉大概会这样就结束了。我的人生。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030580b43">
「不过我啊，总觉得雄飞早晚会朝着某个
目标奔去的。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030590b56">
「狗屋？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030600b43">
「唔嗯，大概是其他什么。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030610b56">
「是吗。」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030620b43">
「一定是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　是什么呢。
　至少现在，完全看不到。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガラッとＳＥ
//◆鈴川の立ち絵


	StR(1000, @+50, @0,"cg/st/st鈴川_通常_制服.png");

	OnSE("se日常_学校_教室ドア開ける01",1000);
	FadeStR(300,true);

	SetFwC("cg/fw/fw忠保_驚き.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030630b43">
「噢呀噢呀。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	DeleteStL(300,true);

	StC(1000, @0,@0,"cg/st/st鈴川_通常_制服.png");
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　班主任铃川登场。
　忠保慌忙回到座位。

　铃川和往常一样，唰唰地强势登上讲台。
然后笔直地站着。
　……比我更年轻数倍呢，说实话。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw鈴川_笑顔.png");

	#voice_on_鈴川令法 = true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030640b57">
「大家早上好。今天一天呢
　……嗯？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　身为游泳部顾问，那证实着肺活量的
有力声音，一下中断了。
　满是疑惑的表情，铃川环顾教室。

　这个班级的人数不过二十人左右。
　谁在谁不在，一目了然。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030650b56">
「……还是迟到了啊，律。」

{	FwR("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030660b43">
「这么稀有的事情也发生了呢……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　边与忠保窃窃私语，我们边一齐摇着头，
百思不得其解。
　稀有。真的很稀有。

　……那个时候，我们还只当是这种程度而已。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm29", 1000, 0, null);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	Wait(1000);
	DeleteStC(0,true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(300,true);

	SoundPlay("@mbgm30",0,1000,true);


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030670b57">
「——就这样，宰领府被解体，内府家的
大和支配迎来终结是在天永六年……
国纪二五一七年，外历是一八五七年。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030680b57">
「从二二六〇年开府起，大约二百五十年的
时间里，所谓的藩制时代一直持续。
在大和史上，单一统治体制
能持续存在如此长时间，别无他例。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030690b57">
「不，在世界史上也很少见。
　大抵到那种程度，历史重复之前
就腐败了……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030700b57">
「前桥！」

{	NwC("cg/fw/nw前橋.png");}
//【ｅｔｃ／前橋】
<voice name="ｅｔｃ／前橋" class="その他男声" src="voice/ma01/0030710e143">
「呼啊!?」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030720b57">
「你在认真听吗？
　为什么德川宰领府能在
这么长的时间里支配大和？」

{	NwC("cg/fw/nw前橋.png");}
//【ｅｔｃ／前橋】
<voice name="ｅｔｃ／前橋" class="その他男声" src="voice/ma01/0030730e143">
「……不清楚。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030740b57">
「你可以猜猜看。」

{	NwC("cg/fw/nw前橋.png");}
//【ｅｔｃ／前橋】
<voice name="ｅｔｃ／前橋" class="その他男声" src="voice/ma01/0030750e143">
「…………因为每代内府公都很厉害？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030760b57">
「嗯。
　要是提及德川家十五代里的某几个人，
也可以这么说。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030770b57">
「不过我们举个例子，第五代内府公，
实施生物怜爱令的纲吉将军，很厉害吗？」

{	NwC("cg/fw/nw前橋.png");}
//【ｅｔｃ／前橋】
<voice name="ｅｔｃ／前橋" class="その他男声" src="voice/ma01/0030780e143">
「不……」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030790b57">
「作为一名道德学家来说，
或许他很伟大。
　但就统治者而言可不是值得赞美的事。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030800b57">
「不过，他的治国方法也让宰领府的统治
大体正经地运行下去了……
　稻城，你觉得原因何在？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	OnSE("se日常_物_椅子鳴る01",1000);
	FadeStL(300,true);

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0289]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030810b43">
「要说德川宰相府，一句话，
不就是他们那小气的体制么。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030820b57">
「……再详细说说。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030830b43">
「德川的初代家康，在秀吉死后的
丰臣体制内掌握实权，开辟了江户
宰相府，真正实现了全国统一……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030840b43">
「确保了当时以关东为中心，号称约有三百万石
的领土，在此范围之外的土地分派给各诸侯，
没有对具体各种事项进行闲言碎语的干涉。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030850b43">
「其理由便是，宰相府的设立目的
本就不是征服全国，而不过是
用来庇佑和繁荣德川一族。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030860b43">
「因此，他们只求为维持德川家所必要的
领土，其他土地以藩为单位进行分割，
对藩内内政也并不关心。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030870b43">
「另一方面，他们频繁指示各诸侯进行城池
修复、治水工程等，让藩的财力无法积累，
理由也相同。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030880b43">
「德川这么做，在结果上就是把地方的事情
交给地方，毫不知情的中央不做多余
指示，成就了一种非常实际的统治体制。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030890b43">
「如果德川家康贪得无厌，想要通过自己的
本领直接统治全国每一个角落，那历史或许
就会改变了。」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030900b57">
「你可以坐下了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガタッ。忠保消去
	OnSE("se日常_物_椅子鳴る01",700);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030910b57">
「大致就像刚才稻城所说的那样。德川家族
选择地方分权，而没有选择中央集权。
　这种选择适应了时代。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030920b57">
「会在这里出考题哦？」

{	FwC("cg/fw/fw雄飛_驚くb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030930b56">
（喂）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　糟糕。
　完全当耳边风了。

　算了，晚点问问忠保。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030940b57">
「然后时代变迁，随着西方列强的帝国主义
开始激进化，这种体制最终结束。
　稻城所说的『小气的体制』，
到底无法抵抗住列强。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030950b57">
「应当复活藩制时代初期施行的锁国政策，
当时也有人这么想……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030960b57">
「所谓锁国政策，是通过切断与外国的全部交往，
黎明期的宰相府在稳固其国内基业期间，
为排除他国干涉而施行的紧急措施。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030970b57">
「又到享保年间，时任关白的丰臣秀兴
发出德川讨伐令，大阪之战以此发端之时，
因传言称关白从大英联邦购入大量武器，
也实施了短期锁国政策。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030980b57">
「若是作为应付西方列强挤入亚洲的对策，
末期宰相府选择了再次施行锁国政策……
估计就会招致大规模武力冲突的结果。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030990b57">
「不过结局是，大和复兴了君主制度，
选择了作为中央集权国家重生的道路。
　详细的具体情况……」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031000b57">
「如果讲起来就长了，今天到此为止吧。
课也只剩下五分钟。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　很好。
　不愧是铃川。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031010b57">
「为了便于理解，我再讲些题外话。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　很好。
　不能这么干啊铃川。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031020b57">
「国纪二六〇〇年，外历一九四〇年的现在。
　实际支配着大和国的六波罗幕府其实是……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031030b57">
「要说的话，就是曾经贪婪的德川。」

{	SetVolume("@mbgm30", 600, 0, null);
	SoundPlay("@mbgm35",0,1000,true);
	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031040b56">
「…………」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031050b57">
「只追求自己的利益，基于那种狡猾思想
支配全国的体制。
　贵族院和众议院都被废除，内阁也失去
机能，京都朝廷本来就是个装饰。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031060b57">
「另一方面，在镰仓修筑普陀乐山寨，
周围设置四公方，让关东一带军事基地化，
睥睨着大和全土。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031070b57">
「其统治方针确实简单易懂。
『不许忤逆，只能服从』。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031080b57">
「若反抗的话会怎样呢……
　大阪被熊熊野火烧为荒原，如今
仍未重建的理由，应该没有人不知道吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大阪虐殺ＣＧ。六波羅の暴虐イメージ補強
//◆数秒見せて消去

//嶋：後で演出
	CreateTextureEX("絵EV100", 10000, Center, Middle, "cg/ev/ev102_大阪虐殺_a.jpg");
	Fade("絵EV100", 1000, 1000, null, true);

	Wait(3000);
	FadeDelete("絵EV100",1000,true);

	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031090b57">
「引用一个住在近畿的友人的话，
那座街市，如今一语双关地被称为幽灵城市。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031100b57">
「……现在，我们正遭受着这样的统治。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　…………

　铃川…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031110b57">
「稻城。之前你说，家康如果贪得无厌，
历史或许会改写。」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031120b43">
「…………」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031130b57">
「会如何改写呢。接下来，那些家伙就会
告诉我们了……很快。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031140b33">
「…………」

{	FwC("cg/fw/fw鈴川_怒り.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031150b57">
「很快……很快就会终结。
　这种无意义的时代…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm35", 1000, 0, null);

//◆キーンコーンカーンコーン。ブラックアウト
	CreateColorEX("絵色100", 15000, "Black");
	Fade("絵色100", 1000, 1000, null, true);

	DeleteStA(0,true);

	Wait(500);

	OnSE("se日常_学校_チャイム01",1000);

	Wait(500);

	Fade("絵色100", 1000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　中午。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");
	SoundPlay("@mbgm28",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031160b43">
「雄飞，今天午饭吃什么？
　我是糙米馒头和白薯哦。」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031170b56">
「糙米馒头和白薯。」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031180b33">
「我是糙米馒头和白薯呢。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031190b43">
「真是巧啊，大家都一样呀。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031200b56">
「因为是统一提供的嘛。」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031210b33">
「不一样的话才叫奇遇呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　闷头吃饭。
　谈不上难吃也谈不上好吃。习以为常的味道。

　自从粮食增产计划开始以来，糙米和薯类
就成为餐桌上的两大巨头竞争着霸权。
　作为追求成本的结果，最优秀的食物
被认定为这两种。似乎如此。

　身为人类对食物抱有意见实在可耻，
所以不太想发表评论。
　不过偶尔，也想吃肉吃到饱。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031220b33">
「律没来呢……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031230b56">
「怎么回事呢。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031240b43">
「如果是别人也就算了，偏偏是律啊。
　发生了什么吗……稍微想想吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　果然也开始担心了吧。忠保一副男子汉的认真表情，
停下了吃饭的手。
　手指抚上唇边，陷入沉默的思考。

　律休息的理由吗……

　御姐气质满满喜欢到处疯玩，
虽然随性却不可思议地有着恪守规矩的一面。
那份恪守通过全勤的到校体现出来。
　……直到昨天为止。

　身体极其健康。就算被大象踩过去也不怎么会坏。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031250b56">
（果然还是夜游过度了吗……说不定是被大番
捉住，现在正在滞留所里郁闷呢）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　那时的我只能想到这种程度。
　
　然而，忠保却似乎不同。

　看到终于抬起脸来的，忠保的锐利眼神，
我不禁倒吸了一口气。
　连小夏也被他给感染，僵直了身子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031260b56">
（……发生了什么……不好的事吗……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　与标准出身的一般人，比如我和小夏不同，
生活在可谓中流以上家庭的忠保——为何会在如此
普通的学校上学还真是个疑问——入手的信息非常多。

　说不定是从那些信息里想到了什么。
　虽然没人吩咐我和小夏这么做，
但我们俩都闭紧了嘴巴，等待结论。

　忠保神情凝重地开口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031270b43">
「雄飞。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031280b56">
「……怎么？」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031290b43">
「你就承认吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃軌道。ぼか。
//◆忠保の立ち絵消去

	SL_down(@0,@0,1500);
	OnSE("se戦闘_攻撃_殴る03",1000);
	SL_downfade2(10);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");

	ShakeOne(1000, 300, 0, 5, 0, 0, 500, null, false, "cg/bg/bg008_教室_01.jpg");

	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031300b56">
「你到底是用什么思考回路
才得出这种结论的!?」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031310b33">
「雄飞，不快点吃午休就要结束了哦。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031320b56">
「……啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　大概已经连揍人的力气都懒得花，
小夏干脆无视继而重新吃起饭。被她催促着，
于是我也坐回原位。像是与我们
错身而过般，忠保歪歪斜斜站了起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031330b43">
「呼……这就是传说中的炎之友情啊。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031340b56">
「虽然总觉得中间省略了很多东西，不过算了
怎样都好了。我说你啊，首先考虑考虑生病啊
帮家里忙啊这类的可能性吧。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031350b43">
「考虑过了，不过那些都不像律的
作风吧。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031360b33">
「也不是绝对不可能的事情吧。」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031370b56">
「就是有点无法想象。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　总是手握领导权，带着我们到处闲逛到太阳落山的，
我所熟悉的律的身影，和那些琐事都太不相衬。

　不过，想不出其他可能性也是事实。
　或许的确发生了什么，但是当事人不在的场合下，
再怎么争论也得不出结论。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031380b56">
「放学后，去看看情况吗？」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031390b33">
「是呢。我没问题，也没什么事。
　忠保你呢？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031400b43">
「当然要去。我也很关心啊。
　而且我去的话……一旦有什么情况
也可以随机应变介绍妇产科的人。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031410b56">
「你再这么揪着这个话题不放，不知道什么
原因来栖野小夏式破坏现象就会突然爆发让
你掌骨一根根减少就算这样你也不在乎吗？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031420b43">
「真奇怪啊。用我完美逻辑思考的结论
说明一下……<?>
{	FwC("cg/fw/fw忠保_笑顔b.png");}
哈哈哈雄飞，不管你怎么努力都
不可能让我小指弯曲九十度以上，
而且感觉好痛哦？」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031430b33">
「……话说回来，比起其他我总感觉忠保的
发言里似乎有什么绝对不能饶恕的要素……
　是我的错觉吗？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031440b56">
「不，小夏。忘掉这件事。忘掉吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　总之在这样那样的吵闹中，下午的计划决定了。
　匆忙往嘴里扒进剩下的供给食物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031450b33">
「雄飞，好好嚼碎再吃。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031460b56">
「刚才还让我吃快点。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031470b33">
「可以并存的哦。靠你的下巴高速运转。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031480b56">
「别强求我玻璃般脆弱的下巴。
　……啊，老师？」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031490b33">
「诶!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se日常_物_椅子鳴る02",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　听到我的声音，小夏连同椅子一块儿旋转起来。
　瞬间一八〇度。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031500b43">
「厉害。刚刚那个简直就是直立回旋。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031510b56">
「这家伙的关节上装了滚球轴承吧。」

{	SetComic(@0,@0,7);
	FwC("cg/fw/fw小夏_驚くb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031520b33">
「铃铃、铃川老师！　有、有何贵干!?」

{	DeleteComic();
	FwC("cg/fw/fw鈴川_驚き.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031530b57">
「啊，嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0,@0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　或许是对小夏这种非人类的机动性感到了不知所措，
走过来的铃川单手举起的姿势凝固了。
　似乎本来正要打招呼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
 
	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031540b57">
「……吃饭时候打扰你们，不好意思。」

{	SetComic(@0,@0,13);
	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031550b33">
「没——有没有没有！　我已经厌倦和这些
蠢男人一起面对面吃饭了！
　来来，请随便坐。」

{	DeleteComic();
	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031560b56">
「不，没位子吧。」

{	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031570b33">
「那就请你去坐桌子吧。忠保坐椅子。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031580b56">
「这到底是怎样的教育现场啊……」

{	FwC("cg/fw/fw鈴川_驚き.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031590b57">
「啊，不用。我已经吃过了。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031600b43">
「哈哈哈，两手空空的嘛，
一看就明白是吃过了。」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031610b56">
「只有这个脑髓瞬间纳豆菌化的女人才不明白。」

{	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031620b33">
「啊，啊，那、那个，有什么事呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　我和忠保的声音已经传不进小夏的耳朵里了。
　啊，好远。就这样渐渐远去吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031630b57">
「是关于饰马的……」

{	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031640b33">
「是，那只椰子蟹怎么了！」

{	FwC("cg/fw/fw鈴川_驚き.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031650b57">
「椰子？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031660b56">
「请当做耳边风。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　伸出援手的我真是个好人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031670b57">
「她今天缺席的原因，你们知道些吗？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031680b43">
「不，完全不知道。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031690b56">
「就在刚才我们还在讨论这个。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031700b57">
「是吗……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　果然，铃川似乎也察觉到了。
　理所当然吧。
律她明明爱玩却从无迟到从无旷课从无早退，
这种怪异的现象引人注目。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031710b57">
「最后见到她是什么时候？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031720b56">
「昨天傍晚，六点吧。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031730b33">
「的确，昨天在八幡神社看了木偶戏，
就在那儿解散的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　小夏抬头望着天花板边回忆边说。
　似乎多少恢复了点正常的精神。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031740b56">
「我和小夏一起回了家……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031750b43">
「我和律一起走了一会儿，但在源氏山一带
就分开了。她还说要再去玩一会儿呢。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031760b33">
「大概几点？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031770b43">
「我想应该是七点前。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031780b57">
「那之后就不清楚了吗……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031790b43">
「律她，没有回家吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　忠保干脆地问了出来。

　……是啊。
　既然铃川会问这种问题，也就是说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031800b57">
「问了住在饰马家附近的大松，据他说，
至少早上的时候她还没有回家。
　现在如何并不清楚……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031810b43">
「打电话问问看怎么样？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031820b57">
「不行，饰马家没有电话。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031830b56">
「不如说那种东西只有你家有吧。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031840b43">
「是吗。怪不得我觉得毫无用处。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031850b33">
「……笨蛋对话到此为止。
　老师，虽然我不想用太大声音来说，
但夜不归宿本来就不是那么稀有的事。
对那孩子来说。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031860b57">
「这我知道。
　所以她的家人似乎也不是很担心，
老师现在也没有打算太过声张。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　铃川也真是个不在意这种事的好家伙呢。
　如果是二班的上原那种耿直的人的话，
现在估计就不得了了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031870b57">
「算了……饰马的话，应该没问题吧。
如果是新田发生这种事，老师可会很慌的。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031880b56">
「为什么这种时候会
把我引出来举例子啊，老师……」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031890b33">
「因为你是连这都不明白的小孩子嘛。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031900b43">
「如果能意识到自己的孩子气，也就不是
小孩子了。啊，雄飞，我发现了哲理呢！」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031910b56">
「吵死了。」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031920b57">
「开个玩笑。
　很抱歉在吃饭时间打搅你们。
多吃点，也去好好运动下。
下午的课可别睡觉哦？」

{	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031930b33">
「是——！」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031940b56">
「明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　目送铃川那朝气十足离去的步伐。

　飒爽的背影。我感觉小夏已经沉迷其中。

　说起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031950b56">
（……律那家伙）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　到底去哪里了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);



}

..//ジャンプ指定
//次ファイル　"ma01_004.nss"
