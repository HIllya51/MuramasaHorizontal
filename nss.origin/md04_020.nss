//<continuation number="1970">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_020.nss_MAIN
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
	#bg015_路地裏_01=true;
	#ev106_雄飛と見下ろす村正_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_021.nss";

}

scene md04_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_019.nss"


//◆移動

//忠保盲目の種類が増える可能性を考慮してfw削除していません。
//また、このファイルは村正視点で進めると想定し、村正の立ち絵は使用していません inc櫻井


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	CreateTextureEX("ue", 103, @0, @0, "cg/bg/bg015_路地裏_01.jpg");
	Fade("ue", 0, 1000, null, true);


	SoundPlay("@mbgm26", 0, 1000, true);

	Delete("上背景");

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　正要跑过后街的狭窄十字路口……
　突然停下了脚步。

　左边可以看到一个路人的背影。

　光是这些的话，自己是不会在意的。
　他的打扮很常见。是普通的市民，普通的男性——
举止却有些怪异。

　似乎是喝醉了，脚步不稳。左揺右摆，还时不时
伸手乱抓。
　……平时的话我会当他是个普通醉鬼，抛到脑后
就不管了。

　但是城里如今正被军队所支配。
　现在的民众可没法带着微醺的酒意晃悠悠地散步。

　那么……究竟是？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぶろー。ジープ？

	OnSE("se乗物_ジープ_走行音", 1000);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200010a01">
（……等等！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　正在犹豫要不要出声询问，视野内突然出现了另外
的东西。
　
　是车。

　跟当下富人所有的，用于城中或城市之间移动的交
通工具略有不同。
　那原本是不会出现在城中的车。

　是军用车。
　没有车篷，里面坐着两个外国士兵。

　……小路很窄。
　要是那大车钻进来的话，行人就必须紧贴着墙走才能
避开。

　这也不是什么难事。
　
　但那个步履蹒跚的男人似乎连这种简单的事都做不到。

　虽然注意到正面有车接近，动作却依旧迟钝。
　果然是喝醉了吗，身体不听使唤。

　那样会被车撞————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200020a01">
「啊啊，真是的！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　现在明明不是去关心一个醉汉的时候！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る
	CreateSE("走る", "se人体_足音_走る03");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ue");
	CreateTextureEX("絵背景50", 103, @0, @0, "cg/bg/bg015_路地裏_01.jpg");
	Fade("絵背景50", 0, 1000, null, true);

	WaitKey(1000);
//◆抱きかかえて車を避けた。
	SetVolume("走る", 1000, 0, null);

	OnSE("se人体_動作_抱く02", 1000);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	Wait(500);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆顔グラ無し
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200030b43">
「……啊……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200040a01">
「啊什么啊。
　既然路都不能好好走，
这种状况下就别出门啊！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200050a01">
「好好在家呆着吧。
　不过如果你喜欢被车轧就另说了。」

{	NwC("cg/fw/nwその他.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200060b43">
「车……？
　啊，我果然差点被轧吗？」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200070b43">
「谢谢你。
　姐姐……可以这么叫你吧？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200080a01">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　好像有点不对劲，我凑近去看怀中那人的脸。<k>
　
　然后，脑子一片空白。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200090a01">
「————————」

{	NwC("cg/fw/nwその他.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200100b43">
「哎……失败了吗？　好奇怪啊。
　姐姐应该是对女性的万能称呼啊。这可是称
呼稍微年长的女性也没问题，甚至效果更好的
魔法话语。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200110b43">
「难不成是超出人意料的发展吗？如此富有女
人味的嗓音其实却是个男人？
　嗯，可以的话如此残酷的真相还是继续保密
更有利心理健康。」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200120a01">
「……稻城、忠保……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆忠保（盲目）
//◆ここから顔グラ解禁
	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -344, "cg/bg/bg015_路地裏_01.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, 50, -1450, "cg/st/resize/st忠保盲目_通常_私服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);
	Request("絵演窓上/絵立絵", Smoothing);
	Zoom("絵演窓上/絵立絵", 0, 600, 600, null, true);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(500);

	Move("絵演窓上/絵演背景", 3000, @0, 37, AxlDxl, false);
	Move("絵演窓上/絵立絵", 3000, @0, -660, AxlDxl, true);

	Wait(1000);

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");


	StL(1000, @0, @0, "cg/st/st忠保盲目_通常_私服.png");
	FadeStL(700, true);

	Wait(500);
	SoundPlay("@mbgm32", 0, 1000, true);

	SetFwC("cg/fw/fw忠保盲目_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200130b43">
「啊，是我认识的人吗？
　对不起，我现在<RUBY text="···">这样子</RUBY>……」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200140b43">
「光听声音分辨不出来。
　呃，你是哪位？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　他摇晃着从我怀里爬出来，把头转向我。
　话虽如此，方向不太对。

　没办法。
　因为他看不见，这样是正常的。

　他的眼睛缠着厚厚的绷带。
　就算没有绷带，我也知道他看不到。

　稻城忠保。<k>
　
　他是过去曾经和朋友一起被卷入“卵”寄生体真改事
件中，并受了重伤的学生。

　那之后所过的时间还不至于久到能使记忆风化。
　自己绝对不会看错。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200150b43">
「姐姐？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200160a01">
「……哎，啊……
　不是，对不起。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200170a01">
「只是我稍微知道一点你的事。
　你应该不认识我。这也是我第一次和你说话。」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200180b43">
「是吗。
　抱歉，那时候给你添麻烦了。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200190a01">
「……那时候？
　添麻烦？」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200200b43">
「哎，一直都是这样的吧？
　先不说我，雄飞啦小夏啦律啦个个都我行我素
不知不觉就给别人添好多麻烦。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200210a01">
「…………一直都是这样吗？」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200220b43">
「唉，我也很头疼啊。
　比如突然有陌生人来要求赔偿窗玻璃啦要
求向对方患上恐人症的小狗道歉啦之类的是
很常有的事情，还真是惊险十足的生活啊！」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200230a01">
「哦、哦。」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200240b43">
「……是啊是啊。
　就是这样的……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200250b43">
「在不久之前，还在过着这种生活呢……
我们……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200260a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200270b43">
「姐姐是来讨窗玻璃的赔偿的吗？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200280a01">
「不……没有。
　他们没给我添任何麻烦。」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200290b43">
「哇，这真是前所未有的少见。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200300a01">
「用不着说到这个地步吧。」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200310b43">
「那就让我好好道谢吧。
　这样我觉得很开心。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200320b43">
「真的非常感谢你，姐姐。
　如果你没有救我，我现在已经死了——」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200330b43">
「应该会很困扰吧。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200340a01">
「是、是啊。
　死了果然会困扰吧。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200350a01">
「但是我并没有做什么大事。
　所以用不着道谢……」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200360b43">
「我想认真地道谢和道歉。
　因为我的朋友是那样的人。」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200370b43">
「现在……发生了许多事，已经不在了。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200380a01">
「……」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200390b43">
「虽然不在了……所以才这么做吧。
　他教给我的东西，我要好好珍惜。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200400b43">
「嗯。死了果然会困扰。
　死了的话从他那里学到的东西就没用了。」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200410b43">
「我不能死……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200420a01">
「…………」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200430b43">
「对不起。
　说了莫名其妙的话。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200440a01">
「请问，你的朋友……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200450a01">
「已经……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆回想フラッシュ。雄飛斬殺

	EfRecoIn1(18000,600);

	CreateTextureEX("絵回想900", 2001, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");
	Fade("絵回想900", 300, 1000, null, true);

	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200460a01">
「……」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200470b43">
「……嗯。是啊。
　虽然以前就觉得他容易招惹是非，之前
不知怎么的糊里糊涂就死掉了。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200480b43">
「现在果然很困扰吧。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200490a01">
「…………」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200500b43">
「但是，不知为何我觉得。
　那家伙，是<RUBY text="·······">代替我们死掉了</RUBY>。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200510b43">
「如果死的是我或小夏就好了。
　但是被死神选中的是那家伙。那一定
不是因为他做错了什么。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200520b43">
「相反……
　那家伙是我们中间最正直最强的一个，
所以代替我们死了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　这究竟是什么直觉呢。
　平凡的学生说出了无从得知的真相。

　确实如此。
　他也好，叫小夏的姑娘也无所谓。

　但是我选择杀掉的，
　是新田雄飞。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200530b43">
「所以……没在这里被车轧死真是太好了。
　死在这种地方，他肯定会很生气的。」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200540b43">
「我必须代替那家伙去做。
　去做那家伙本该做的事。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200550b43">
「我必须保护小夏。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200560b43">
「因为我……
　一定是牺牲了那家伙——牺牲了雄飞
才得以活下来的……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　不对。

　牺牲了他的不是你。
　是我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200570b43">
「无论对姐姐怎么道谢都不够。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200580a01">
「……不用了。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200590a01">
「不用了。
　真的不用道谢。」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200600b43">
「能劳烦你到我家去一趟吗？
　这种时候虽然不能盛大地款待你，但是
适当地招待一下还是可以的。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200610a01">
「不用客气了。
　我会将你好好送回家的……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200620a01">
「……不，等等。
　你为什么到处乱走？　眼睛又看不到，
还偏偏在这个时候。」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200630b43">
「哎呀，这个嘛。
　昨天早起后为了复健在附近散步，突然头顶上
就热闹起来了。似乎是开始战争了。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200640b43">
「虽想马上回家，慌忙中貌似走向了完全相反
的方向……
　在此期间发布了禁止外出的命令。」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200650b43">
「无奈之下我想让附近屋子的人收留我，
屋里却没人。
　那里是寺庙吗……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200660b43">
「大概是一整天吧？　我在那里待着，但是肚子
饿得受不了了。
　广播说可以回家了，我就努力往家赶。」

{	FwC("cg/fw/fw忠保盲目_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200670b43">
「但是在迷着路四处徘徊的时候，
差点被车轧了。
　哈哈哈，很可笑吧？」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200680a01">
「……我觉得不可笑。」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200690b43">
「啊，是吗。
　要招待你，也得先让你送我回家啊。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200700b43">
「就是这样，姐姐，如果你不着急的话就拜托
你了。
　嗯……为了表达谢意反而要劳烦你，真是本
末倒置啊……」

{	FwC("cg/fw/fw忠保盲目_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200710b43">
「哈哈哈，真可笑。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200720a01">
「…………是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　真是败给他了。
　这种想拿个馒头塞住他嘴巴的无奈感究竟是
为什么呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200730a01">
「总之，先告诉我你家在哪。
　我听不懂道路门牌号什么的，所以说说附近
有什么标志。」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200740b43">
「标志啊，
　这个嘛……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ぶろー。

	OnSE("se乗物_ジープ_走行音", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　背后又传来车的声音。
　……怎么老挑这种窄道行驶啊。

　我打断他，拉着他的胳膊躲到路边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ぶおー。スピードアップ。

	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);

	DeleteStA(0,true);

	CreateSE("SE01","se乗物_ジープ_加速");
	MusicStart("SE01",500,1000,0,1200,null,false);


	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200750a01">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆避け
//◆行き違う

//横フラ？ inc櫻井
	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	CreateTextureEX("絵背景50", 103, @0, @0, "cg/bg/bg015_路地裏_01.jpg");
	Fade("絵背景50", 0, 1000, null, true);
	Delete("絵背景100");
	DeleteStL(0,true);
	DrawDelete("絵フラ", 600, 1000, "slide_01_03_0", true);

	SetFwC("cg/fw/fw忠保盲目_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200760b43">
「哇，呀，呀！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200770a01">
「……」

{	StL(1000, @0, @0, "cg/st/st忠保盲目_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200780b43">
「吓我一跳。刚才那车是不是突然加速了？
　有急事吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200790a01">
「……谁知道。怎么回事呢……」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200800b43">
「然后，我家啊。
　是在海岸附近——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　我没在听。

　我直盯着前方。
　刚才冲过去的车在稍远的地方停住了。

　军用车。
　跟刚才看到的那辆一模一样。

　也是坐着两名士兵。
　他们的模样恐怕也……

　他们同时转向这边。

　叼着烟草的嘴勾出邪恶的笑容。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200810a01">
（是他们）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぶろー。

	OnSE("se乗物_ジープ_加速",1000);

	SoundPlay("@mbgm13", 0, 1000, true);


	SetFwC("cg/fw/fw忠保盲目_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200820b43">
「通过若宫大路——」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200830a01">
「安静一下！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆抱えて避けー。

//横フラ？
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);

	DeleteStA(0,true);
	Wait(500);

	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	Delete("絵背景100");
	DeleteStL(0,true);
	DrawDelete("絵フラ", 600, 1000, "slide_01_02_1", true);


	SetFwC("cg/fw/fw忠保盲目_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200840b43">
「……………………」

{	StL(1000, @0, @0, "cg/st/st忠保盲目_通常_私服.png");
	FadeStL(300, false);}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200850b43">
「我以为这里是小胡同，其实是大路中央吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200860a01">
「在我看来，宽度只够两头熊并肩。」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200870b43">
「话说回来车还真多。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200880a01">
「是啊。为什么呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　倒退着擦过我们身边的车又停在了很近的地方。
　那里很明显不是他们的目的地。

　……不难理解。
　那种人随处可见。

　看到弱者不施虐就浑身不舒服的人到处都是。
　以前有，现在有，<RUBY text="··">那里</RUBY>也有，仅此而已。

　如今支配镰仓的军势给人以军纪良好的印象——但是
果然无论什么都做不到完美吧。
　在胜利在望的时候更是如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200890a01">
（那种人根本用不着管）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　要逃走很容易。
　就算不使用剑胄的能力，只要找到比车宽更窄的
小路钻进去就行了。

　不用引人注目，就能平安地从这无聊的事件中
脱身。

　前提是自己一人。

　如果能将稻城忠保丢在这里，就没问题了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶろー。

	OnSE("se乗物_ジープ_加速",1000);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);


	Wait(500);

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200900a01">
「……唔！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆避け

//横フラ？

	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	Delete("絵背景100");
	DeleteStL(0,true);
	DrawDelete("絵フラ", 600, 1000, "slide_01_03_0", true);


	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200910b43">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　这次是擦着墙冲过去的。
　等他们靠得极近再跳到对面，勉强避开了……
但下次不会奏效了吧。

　开车的士兵满脸兴致冲冲的表情。
　和玩得兴起的孩子一样。

　看样子，不撞到一次就不会停下。

　我对他们没有杀意。
　
　他们<RUBY text="·····">没想那么多</RUBY>。

　被大型又沉重的车撞到的话人会轻易地死掉——
这种<RUBY text="···">复杂的</RUBY>事情他们无法预计。
　他们一定会在撞死人之后才明白。

　会想，原来这么整会死人啊。
　然后马上撇在脑后。

　所以还会做相同的事。

　这两人就是这种人。
　就算没有语言的鸿沟，我也跟他们沟通不了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200920b43">
「姐姐……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200930a01">
「现在有点忙……
　待会儿再说你家在哪。」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200940b43">
「不、不用了。
　多少想起来了。我家就在这附近。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　双目失明的学生在随口胡诌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200950b43">
「你可以不用送我的。
　还有，招待你那件事……仔细想想
我们家现在有点事。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200960a01">
「是吗？」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200970b43">
「非常抱歉。
　下次有机会再让我招待你吧。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200980a01">
「你家在哪？」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200990b43">
「真的就在附近。
　所以，姐姐……已经够了，请离开吧。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201000a01">
「是吗。
　……如果那么近的话。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶろー
	OnSE("se乗物_ジープ_加速",1000);
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);

	Wait(500);

	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	Delete("絵背景100");
	DeleteStL(0,true);
	DrawDelete("絵フラ", 600, 1000, "slide_01_03_1", true);

	SetFwC("cg/fw/fw村正_優しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201010a01">
「我不要什么隆重的大礼，不过去喝杯茶或许
也不错。
　这种程度的话，有事也不会打扰到你们吧？」

{	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201020b43">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　凝视着汽车。
　我知道——他们这次想用车和墙挤扁我们。

　无处可逃。
　他没有任何藏身之处。

　只有我的话就好办了。
　脚底抹油赶紧开溜就行了。

　但是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201030a01">
（主君的话……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　心中如此确信。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//	SoundPlay("@mbgm10", 0, 1000, true);


	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201040a01">
（一定不会让稻城忠保就这样死去）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵背景100", 5000, @0, @0, "cg/bg/bg015_路地裏_01.jpg");

	StCL(6000, @0, @0, "cg/st/st忠保盲目_通常_私服.png");
	FadeStCL(300, false);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw忠保盲目_虚脱.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201050b43">
「我必须代替那家伙去做。
　去做那家伙本该做的事。」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201060b43">
「我必须保护小夏。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201070b43">
「因为我……
　一定是牺牲了那家伙——牺牲了雄飞
才得以活下来的……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("絵背景100");
	DeleteStCL(0,true);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201080a01">
（绝对——不能让他死！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　那么这里就是湊斗景明的战场。
　即使他本人不在这里。

　我是他的力量，有战斗的义务！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201090a01">
「稻城忠保。」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201100b43">
「姐姐……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201110a01">
「你在天上飞过吗？」

{	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201120b43">
「哎？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201130a01">
「就是这种感觉哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 200, 0, null);

//◆飛翔
	OnSE("se人体_動作_跳躍01", 1000);
	OnSE("se人体_動作_跳躍02", 1000);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("絵背景100", 200, Center, -576, "cg/bg/resize/bg001_空b_01l.jpg");

	DeleteStL(0,true);
	Move("絵背景100", 2000, @0, -288, Dxl2, false);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　在猛冲过来的汽车的前进方向上……
　我和另一个人类<RUBY text="··">消失</RUBY>了。

　车上的士兵那一瞬间的表情太有趣了。
　双眼瞪圆，嘴巴大张——傻傻地看着以异于常人的
跳跃力越过他们头上的我和盲眼学生。

　他们就那样撞上了墙壁。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
	
//◆ずごーん。

	CreateColorSP("黒幕１", 3000, "#000000");

	Delete("絵背景100");
	CreateTextureSP("絵背景50", 103, @0, @0, "cg/bg/bg015_路地裏_01.jpg");
	OnSE("se戦闘_衝撃_衝突01", 1000);
	EffectZoomDXadd(10000, 1500, 1500, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", true);

	WaitKey(200);
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

//◆村正、着地

	OnSE("se人体_動作_一歩", 1000);

	WaitKey(1000);

	SetFwC("cg/fw/fw忠保盲目_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201140b43">
「……那、那个……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201150b43">
「姐姐刚才是不是做了什么厉害的举动？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201160a01">
「这个嘛？」

{	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201170b43">
「真的飞起来了吗？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201180a01">
「真的飞起来就太不可思议了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　我睁眼说瞎话。
　一边又为他看不到觉得可惜。

　我抓住他的胳膊，催促他前行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201190a01">
「总之先离开这里。
　你家是在海边吧？」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201200b43">
「呃……是的。但是——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱーん。銃声。
	OnSE("se戦闘_攻撃_ライフル撃つ01", 1000);
	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　……不会就这么轻易地算了。
　忘记对方是熟于战争的士兵了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆兵士二人
	SoundPlay("@mbgm21",0,1000,true);


	StR(1000, @-50, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	StCR(1000, @150, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	FadeStR(300, false);
	FadeStCR(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　二人从撞坏的车中走下来，怒视着我。
　他们亮出了枪，愤怒得连额头都红了。

　这是孩子的愤怒。
　欺负小猫玩，结果脸被猫抓伤的，孩子的愤怒。

　被深信比自己低等的对手反击所伤，所以火冒三丈
了吧。
　毫不犹豫、毫无羞耻、直白的愤怒。

　我完全不打算告诉对方他们的愤怒是没道理的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201210a01">
（相信正确就行了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　我要告诉他们的是，<RUBY text="········">明明正确却赢不了</RUBY>的屈辱。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);
	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201220b43">
「姐姐——」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201230a01">
「趴下！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　他照做了，动作迅速得让人想不到他失明了。
　……对了，我记得稻城忠保的判断力很出众。

　我回想着过去短暂的观察记忆。
　
　之后冲击便袭来了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱんぱん。連射

	OnSE("se戦闘_攻撃_ライフル撃つ4回", 1000);
	CreateColorSPadd("絵色100", 1500, "WHITE");
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 350, 0, null, true);
	Delete("絵色100");
	WaitKey(200);

//画面揺らす？

	CreateColorSP("撃たれて出血的な", 1500, "#990000");
	FadeDelete("撃たれて出血的な", 1000, true);

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201240a01">
「呜……呜!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　腹部、肩、右胸。
　三个地方被子弹打中了。

　异物的入侵催生了深深的厌恶感。
　脚下不稳，踩空了。

　但是，仅此而已。

　开枪的两个士兵呆住了。
　表情果然和孩子一样——看着用石头都砸不死的小猫的
孩子。

　这副虚拟肉体并没有坚固到能防御子弹。
　但是，也不像真正的肉体那样脆弱。那种程度的小弹丸
只要不是直接打在心铁上多少发我都能承受。

　……虽说如此，我也不会让他们继续开枪了。

　我朝几近恐慌而再次瞄准的他们伸出
一只手。
　解除部分变化的肉体——恢复成装甲。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆糸
	OnSE("se特殊_生物_蜘蛛の糸吐く01", 1000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	Zoom("絵背景20", 0, 2000, 2000, null, true);
	SetBlur("絵背景20", true, 3, 500, 70, false);

	DeleteStA(0,true);

	Zoom("絵背景20", 700, 1000, 1000, Dxl2, false);
	DrawDelete("絵フラ", 200, 100, "beam_03_00_1", true);
	Wait(300);
	FadeDelete("絵背景20",300,true);
	SetVolume("@OnSE*", 1000, 0, null);

//◆どが。投げ飛ばした。

	CreatePlainSP("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);

	OnSE("se人体_衝撃_転倒_複数", 1000);


	Shake("絵板写", 500, 0, 30, 0, 0, 300, null, true);
	Delete("絵板写");
	OnSE("se人体_衝撃_転倒03", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　飞射出的钢丝缠住二人的脚腕，发力将他们拽倒。
　同时尽量摔疼他们，好让他们不想再爬起来。

{	OnSE("se戦闘_破壊_金属",1000);}
　顺便折断了枪支。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201250a01">
「……哼！」

{	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201260b43">
「那个……姐姐……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201270a01">
「什么？」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201280b43">
「逃跑比较好……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201290a01">
「已经没事了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　我指着倒在地上呻吟的两人说。
　虽然明知他看不到。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201300b43">
「不是这个。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201310a01">
「？」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201320b43">
「糟了……这声音大概是……」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201330a01">
「声音？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　比他更早回答我愚蠢的反问的——
　是现实。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ひゅいーん。ずがんずがん。騎航＆着陸。
	OnSE("se戦闘_動作_鎧_着地01", 1000);

	WaitKey(1500);
	CreatePlainSP("絵板写", 200);
	Fade("絵板写", 0, 1000, null, true);
	Shake("絵板写", 500, 0, 10, 0, 0, 1000, null, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201340a01">
（……我真笨！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　为什么没早点注意到呢。
　这种东西一接近就该注意到的。

　不，事先就应该考虑到这个危险性的。
　不能让士兵开枪的。枪声会招来他们的同伴——
<RUBY text="·····">难缠的同伴</RUBY>，这种事稍微想想就能明白。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵三騎

	StR(1100, @50, @50, "cg/st/3dユーウォーキー_立ち_抜刀.png");
	StL(1000, @-50, @50, "cg/st/3dユーウォーキー_立ち_抜刀.png");

	OnSE("se人体_足音_鎧歩く03",1000);

	FadeStL(300, false);
	Move("@StL*", 500, @0, @-50, Dxl2, true);
	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

	FadeStR(300, false);
	Move("@StR*", 500, @0, @-50, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　一骑在我背后。
　两骑落在正面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201350a01">
（<RUBY text="仿冒品">数打武者</RUBY>们）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　即使被没有锻造师命魂寄宿的仿冒剑胄所包围，
我也全然不觉得恐惧。
　但威胁毕竟还是威胁。

　一对一的话或许能平分秋色，三对一实在捉襟见肘。

　正面的一骑正在和倒下的士兵谈话。
　士兵指着这边，用外语快速地说着什么……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201360b43">
「姐姐……逃吧。
　会被杀的。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201370a01">
「你能听懂他们的话吗？」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201380b43">
「稍微懂点。
　姐姐干掉了进驻军的士兵吧？　那家伙正在
告状。说什么反抗、有武装、很危险之类的。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201390a01">
「…………」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201400b43">
「告状的对象是骑士……不是武者吗？」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201410a01">
「嗯。」

{	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201420b43">
「请逃走吧！
　我……大概，就算被抓也不会有事的！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201430a01">
「你怎么办？
　你说自己一无所知、只是路过，他们就会笑
着放你走？」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201440b43">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201450a01">
「这情况应该是没可能了。
　那就不能丢下你。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201460a01">
「因为你还没招待我。」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201470b43">
「……但、但是。
　要怎么做？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201480a01">
「无论什么都做。
　无论做什么，都要救你！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　我是这样考虑的。
　带着他从三骑武者手中逃出——这不可能。

　但是，若换个方向考虑呢？
　用不着一下逃掉。用计策拉开一定距离……趁机将
他藏起来，我来引开敌人。

　顺利的话，至少能救他。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201490a01">
（就这么办）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　然后是计策。
　哪怕是极短的时间也好，有什么引开他们的
方法——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201500b43">
「姐姐。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201510a01">
「让我自己逃的话，我可不听。」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201520b43">
「…………
　请让我问个问题。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201530b43">
「就一个。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201540a01">
「？　什么？」

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201550b43">
「是你杀了雄飞的吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(1000,true);
//◆ボックス消してウェイト

	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　刹那。
　我忘却了周围的状况。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 0, -344, "cg/bg/bg015_路地裏_01.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, 200, -745, "cg/st/resize/st忠保盲目_通常_私服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);
	Request("絵演窓上/絵立絵", Smoothing);
	Zoom("絵演窓上/絵立絵", 0, 600, 600, null, true);



	Move("絵演窓上/絵演背景", 60000, -100, @0, null, false);
	Move("絵演窓上/絵立絵", 60000, -160, @0, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 2000, 1000, null, false);
	Fade("絵演窓上/絵立絵", 2000, 1000, null, false);

	Wait(500);


	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201560a01">
「————哎？」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201570b43">
「……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201580a01">
「……啊……」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201590b43">
「是这样吗？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201600a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックス消してウェイト

	WaitKey(2000);

	SoundPlay("@mbgm31", 0, 1000, true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201610a01">
「……是的……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　我承认了。
　如果被同一个人问同样的问题，湊斗景明一定也会
这样做。

　不能否定。
　不能不承认。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201620b43">
「哦哦……果然啊。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201630a01">
「为什么这么想？」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201640b43">
「灵光一闪……吧。
　在考虑姐姐你为什么这么拼命救我的时候。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201650b43">
「突然想到了。
　感觉脑细胞的未知部分之类的东西觉醒了。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201660a01">
「…………」

{	FwC("cg/fw/fw忠保盲目_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201670b43">
「啊，不过很具有冲击性呢。
　没想到会以这种方式遇到杀死雄飞的人。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201680a01">
「你……
　不恨我吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　我问了愚蠢的问题。
　他毫不犹豫地回答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201690b43">
「恨。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201700a01">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビキリ。ひび割れ音


	CreateTextureEX("sita", 100, @0, @0, "cg/bg/bg015_路地裏_01.jpg");
	Fade("sita", 0, 1000, null, true);
	CreateEffect("絵背景", 101, @0, @0, 1024, 576, "Monochrome");

	Fade("ue", 1000, 700, null, false);


	OnSE("se特殊_鎧_アベンジ_ひび割れ", 400);

	WaitKey(2000);


	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201710b43">
「雄飞是我很重要、很重要的朋友。
　如果是你夺走了他，我会比任何人都憎恨你。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビキリ。ひび割れ音


	Fade("ue", 1000, 600, null, false);

	OnSE("se特殊_鎧_ひび割れ01", 600);

	WaitKey(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　我知道自己正在死亡边缘。
　用不着跟周围的数打武者战斗。

　剑胄是不死的。
　但是，心铁腐朽的话我就会灭亡。

　稻城忠保拥有杀死我的力量。

　……既便如此，我仍然继续提问。
　问着将会毁灭自身的问题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201720a01">
「不原谅我吗？」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201730b43">
「不原谅。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビキ。


	Fade("ue", 1000, 500, null, false);


	OnSE("se特殊_鎧_アベンジ_ひび割れ", 800);

	WaitKey(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　死吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201740b43">
「无论你怎么道歉，
　无论你怎么补偿，都不原谅。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビキ。

	Fade("ue", 1000, 400, null, false);

	OnSE("se特殊_鎧_アベンジ_ひび割れ", 1000);

	WaitKey(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　死吧……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201750b43">
「夺走雄飞的你，我会恨一辈子。
　一辈子都不原谅你。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビキ。


	Fade("ue", 1000, 300, null, false);

	OnSE("se特殊_鎧_ひび割れ01", 1000);

	WaitKey(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　死。

　这不是自杀。
　我还有该做的事。并不想死。

　不想死——即便如此，我依然继续迈向死亡。
　因为这是唯一的道路。

　是不可逃避的道路。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201760a01">
「你……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201770a01">
「要向我，复仇？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
　问出最后的问题。

　……这就结束了。
　我的<RUBY text="生命">心铁</RUBY>会腐朽。

　在得到问题的答案时……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201780b43">
「不。」

{	Fade("ue", 1000, 1000, DxlAuto, false);
	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201790a01">
「————————」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201800a01">
「为……为什么？」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201810b43">
「因为不想失去意义。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201820a01">
「意义……？」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201830b43">
「雄飞死去的意义。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm05", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　新田雄飞——
　死去的……意义？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201840b43">
「……应该有意义吧？
　如果是姐姐这样的人杀死雄飞的话。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201850a01">
「这……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
　有，曾经有。
为了防止“卵”孵化，银星号增殖的最糟状况，
他——

　……不对。
　为此而死的只是真改，铃川令法。

　杀死新田雄飞的，是村正的<RUBY text="诅咒">誓约</RUBY>。
　
　——善恶相抵之理。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201860b43">
「我不会问是什么意义。
　现在……我不想听。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201870b43">
「用雄飞的生命来换取的是什么，我不想
知道。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201880a01">
「……」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201890b43">
「但是，请姐姐……珍视这意义，并保护好。
　<RUBY text="··">拜托</RUBY>。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201900b43">
「因为你是为此牺牲雄飞的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
　在包围自己三方的武者身上丝毫没有感觉到的畏惧，
如今却感觉到了。
　失明的学生将比单纯的复仇心严酷得多的感情投向了
我。

　绝不轻易地饶恕。

　他要我，守护意义。
　新田雄飞，死去的意义。

　即是要我永远背负新田雄飞的死。

　……当然了。
　这是顺应天理，再正常不过的重罚。

　杀人者，
　必须终生背负所杀之人的死。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201910a01">
「稻城忠保。」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201920b43">
「我只有……这一个愿望。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201930a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆竜騎兵、離陸
	OnSE("se特殊_鎧_駆動音02", 1000);
	WaitKey(500);
	CreateSE("飛ぶ", "se戦闘_動作_空突進01");
	MusicStart("飛ぶ", 0, 1000, 0, 1000, null,false);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　突如其来的巨响让我回过神来。
　……几乎被我忘记的武者们有所动作了。

　朝这边——不是。
　三骑都飞走了。

　朝着另一方向——从他们的举动来看，似乎很焦急。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201940a01">
「……什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
　不光是三骑数打武者。
　那两个士兵看都不看我们一眼就跑走了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201950b43">
「似乎有什么紧急联络。
　虽然没听太清楚……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201960b43">
「我好像听到了援军什么的。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201970a01">
「援军？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_021.nss"