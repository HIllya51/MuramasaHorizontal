//<continuation number="940">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_010.nss_MAIN
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
	#bg007_若宮大路a_01=true;
	#bg015_鎌倉路地裏_01=true;
	#bg001_空a_01=true;
	#bg001_空a_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_011.nss";

}

scene ma01_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_009.nss"

	SoundPlay("@mbgm16",0,1000,true);

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 20, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");
	CreateColorSP("暗転", 15, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

//◆住宅街
//◆大通り
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitKey(400);
	DrawDelete("絵背景20", 1000, 100, "blind_01_00_1", true);
	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　从小酒馆街到律家附近，再到学校。
　男人沿着这个路线行进。

　好可疑，可疑也该有个限度。
　无论如何，也不觉得是偶然。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100010b56">
「有嫌疑呢。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100020b43">
「单从他的行动来看，至少应该不是
毫无关系。
　再加上……」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100030b33">
「什么？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100040b43">
「刚才，那个人在学校前抓住了
上原老师问话吧？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100050b56">
「嗯。一开始上原明明不太愿意，
中途就突然变得老实了。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100060b33">
「是啊是啊。我也留意到这个了。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100070b43">
「是说那个时候。
　如果我没看错的话……那时，他把
枪拿出来给老师看了。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100080b56">
「————」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100090b33">
「枪、枪吗？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100100b43">
「是手枪吧。从怀里抽出来，像这样，
就一瞬间。
　倒是没看清楚型号。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100110b56">
「难怪上原也会害怕……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　和普通人无缘这点上，枪与剑胄同理。
　持有人是军方、警察相关者，否则只有罪犯。

　归根结底。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100120b56">
「能确定是犯人了吧！」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100130b43">
「就间接证据来说或许已经够充分了呢。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100140b33">
「那个行动范围，还加上枪。
　不是再没有其它怀疑余地了吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　正是如此。
　只是住在这一带的手枪迷在散步而已吧，这种解释
试着说说都太过愚蠢。

　绑架犯人。
　至少是，和犯人关系密切的相关者。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100150b56">
「把那家伙……！」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100160b43">
「要怎么做？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100170b33">
「要怎么做呢？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100180b56">
「……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100190b43">
「……」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100200b33">
「……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100210b56">
「抓起来。」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100220b33">
「诶？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100230b43">
「认真的吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　不可否认，有一半是破罐破摔。
　然而无法选择在这里视而不见。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100240b56">
「即使他是六波罗的武者……
　现在也没有武装。咱们想点办法。」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100250b33">
「说什么没有武装。我说你啊，他可有枪哦？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100260b43">
「虽然那跟剑胄比起来不过是竹枪一类的东西啊。
可对我们来说没什么大的不同，都是
杀人兵器哦？」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100270b56">
「不被击中就没事！」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100280b33">
「要是被击中了呢？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100290b56">
「靠毅力忍耐继续前进。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100300b43">
「……好像有某个古人说过类似的话，
结果让骑马军团全灭了吧。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100310b33">
「至少有点作战计划吧？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100320b56">
「我站到他前面吸引他注意力。
　利用这空隙忠保，你就从后方揍他。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100330b43">
「真是神机妙算。」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100340b56">
「谢谢。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100350b33">
「他听不懂这是讽刺……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100360b43">
「似乎进入跃跃欲试的状态了呢。
　这是对律的担心加上发现敌人的兴奋
再加上对六波罗恐惧过头的反作用
混杂在一起的结果吧，我试着分析了一下。」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100370b33">
「到底要怎么办啊？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100380b43">
「趁着这个势头不也很好吗？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100390b33">
「认真的？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100400b43">
「看啊。那个人正准备进粮店背后的小路。
　那里迂回出入很简单……我觉得
雄飞的作战策略行得通。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100410b33">
「但是……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100420b43">
「如果能抓住他，得到的东西可就多了。
　必须得好好询问他一番才行。」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100430b43">
「好了，我们总会有办法的吧？
　他也有可能知道律目前所在。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100440b33">
「……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100450b56">
「忠保。准备好了吗？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100460b43">
「Ｏ——Ｋ——
　我去废铁工厂捡点铁棒之类的再绕过去。
雄飞在水沟拐弯的地方守着他。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100470b56">
「明白。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100480b33">
「……雄飞！
　不许受伤啊!?」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100490b56">
「喔！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	DeleteStL(300,true);

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("暗転", 10000, "#000000");
	Fade("暗転", 1000, 1000, null, true);

	Delete("絵背景*");

//◆路地裏
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg015_鎌倉路地裏_01.jpg");
	FadeDelete("暗転", 1000, true);

	SoundPlay("@mbgm35",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我很明白，自己在严重逞强，
正要去做鲁莽的尝试。
　紧张得手心里满是汗。

　我的作战计划乱七八糟。
　就算出人意料的袭击，或许能使手枪无法发挥作用
……但仍有一个重要问题没有考虑。

　武者自身的战斗力。
　即便没有装甲剑胄，武者也是精于武艺之人。
根本不是民间人能去挑战的对手。

　向前走着的男子保守地说也拥有常人以上的
健壮体魄。他应该已经积累了相当程度的修炼吧，
举手投足间都显得悠然自得。
　即使不是军队中的武者，也绝非凡人。

　这是鲁莽的挑战。
　但仍能成为一场胜负之争。

　既然敌方只有一人，且没有剑胄，就能一战。

　——不必因无能为力而哭泣。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100500b56">
（啊，可恶）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　卑微的想法穿过大脑。

　现在，只有现在，可以来个有胜算的了断。
　想可怜地挣扎着抓住这个机会。
　因为，如果成功……

　——就算最终战胜不了六波罗。
　也能获得仅此一次的，小小胜利。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100510b56">
（这样就心满意足了吗……蠢货啊！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　无聊的想法在脑中奔走。
　忠保指示的场所接近了。

　什么都别想。
　总之先捉住那男人。
　之后的事情……之后再想。

　——水沟的拐弯处。
　我抛下一切犹豫，冲了出去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw雄飛_怒りa.png");

	SetVolume("@mbgm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100520b56">
「喂！　那边的——黑暗恶人！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0100530a00">
「在。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　男子停下脚步。
　回头看向我。

　从正面，形成了面对面的情势。
　
　男人看着我。
　我看着男人。

　静静地，目光相视。

　脚步不由自主地停下了。
　步履踌躇，原地踏步。

　忠保以惊人的速度冲向了男人背后。
　听到脚步声，男子再次转向忠保的方向。

　不搭话不行。
　这么想着，声音却发不出来。

　男子直直地看着忠保。
　可是忠保却没有丝毫犹豫。

　铁棒指向空中。
　男子看着那情景。

{	OnSE("se戦闘_攻撃_振る02",1000);}
　劈开强风，铁棒疾走。
　男子看着那情景。

　铁棒碰到额头。
　男子看着那情景——

　他一直看到最后。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆青空
//◆どご。鈍い打撃音

	PrintBG("上背景", 30000);
	CreateColorSPadd("白転", 10000, "#FFFFFF");
	CreateTextureSP("絵背景10", 1500, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	OnSE("se戦闘_攻撃_殴る01",1000);
	Delete("上背景");

	Wait(2000);

	FadeDelete("白転", 2000, true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(0,true);
	FadeStR(0,true);

	CreateTextureSP("絵背景20", 20, Center, Middle, "cg/bg/bg015_鎌倉路地裏_01.jpg");

	SoundPlay("@mbgm22",1000,1000,true);
	FadeDelete("絵背景10", 1000, true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100540b56">
「……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100550b43">
「……」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100560b33">
「……这个情况
　可以说恭喜吗……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100570b56">
「不……该怎么说呢……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100580b43">
「我真没想到一击就能放倒啊。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100590b33">
「作为六波罗的人……有点，那啥。
　也太、太那个了不是吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　被一介学生一击放倒的暴虐统治者。
　……不行啊。不行。我的世界观摇摇欲坠。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100600b56">
「哎、哎呀。就算六波罗也是参差不齐的吧。
多半不是什么武者就是个普通
士兵。这种情况也有。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100610b43">
「没错没错。这人说不定碰巧是六波罗百万骑的
第一百万名呢，对吧。」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100620b56">
「哦哦，这个概率很高啊忠保！」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100630b43">
「嗯。我都有点想去买彩票了。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100640b33">
「明白了。ＯＫ。我就来说个清楚吧。
　我说，这个人——」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100650b56">
「差不多快到傍晚了啊——」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100660b43">
「买点烤番薯回家吧。」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100670b33">
「——是不是只是个普通路人啊？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ＳＥ：ガーン。
	OnSE("se擬音_コミカル_ガーン01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0189]
　………………
　居然还是给说出来了。这个女人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怯えb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100680b56">
「哎呀、哎呀、但是！　我叫他恶人的时候
他回答在了哦，这个男人！」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100690b33">
「那只是单纯对你的出声招呼表示回应吧……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100700b43">
「你如果这么想的话就该早点阻止我呀。
一旦下手，我们三个就是毫无意义的
伤害罪了。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100710b56">
「实施犯是你。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100720b33">
「只有一个人会服刑呢。就此分别了呢。
再见了——保重哦——
我一定，不会忘记你的。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100730b43">
「啊哈。没关系。我们会永远在一起的！
　因为，教唆犯和实施犯是同罪的嘛。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100740b56">
「……」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100750b33">
「……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100760b43">
「……」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100770b56">
「对、对了，手枪！
　忠保，那家伙有手枪吧!?　那么
应该不是什么正经人！」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100780b43">
「嗯，确实如此。
　我们确认一下吧。应该是在外套下面……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ガチャッ
	OnSE("se戦闘_銃器_構える01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100790b43">
「…………」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100800b56">
「忠保？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100810b33">
「有……枪么？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100820b43">
「……嗯。
　有枪。」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100830b56">
「很好！
　虽然不知道好什么总之很好！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　这样一来我们就不用成为罪犯了。
　大概。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100840b43">
「…………」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100850b33">
「忠保？」

{	FwC("cg/fw/fw忠保_困惑.png");
	SetVolume("@mbgm*", 1000, 0, null);
}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100860b43">
「那个……确实……有枪。
　不过……枪柄的地方，有旭日纹饰。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100870b56">
「哈？」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100880b33">
「旭日？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　那就是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100890b43">
「警察局的纹饰呢。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100900b33">
「……………………」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100910b56">
「…………………………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

//◆夕空
	CreateTextureEX("絵背景110", 10010, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	Fade("絵背景110", 8000, 1000, null, false);

//	SoundPlay("@mbgm31",0,1000,true);

	SetComic(@0,@0,16);
	SetFwC("cg/fw/fw雄飛_驚くb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100920b56">
「呀啊啊啊啊啊啊啊啊啊啊啊啊!!
　快快快快快给他治疗治疗治疗治疗啊啊啊！」

{	SetComic(@0,@0,5);
	FwC("cg/fw/fw小夏_驚くb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100930b33">
「啊哇哇哇哇哇……
　我什么都不知道！　真的不——知道！」

{	SetComic(@0,@0,11);
	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100940b43">
「呀，这结局究竟怎——么回事呢。
　哈、哈、哈、哈、哈、哈、哈。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　那真是大混乱。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	ClearWaitAll(2000,4000);


}

..//ジャンプ指定
//次ファイル　"ma01_011.nss"


