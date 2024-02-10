//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_027.nss_MAIN
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
	#bg009_鎌倉住宅街a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_028.nss";

}

scene md06_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_026.nss"

//◆夕
//◆街路。bg009
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	OnBG(100, "bg009_鎌倉住宅街a_02.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒", 1500, true);

	SoundPlay("@mbgm30", 0, 1000, true);

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_凹むb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270010a01">
「我要回老家。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270020a00">
「……在哪里？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　夕阳下的归途。
　身边的同伴，明显是在闹别扭。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270030a01">
「唔，唔……
　做了那种事，做了那种事，居然做
了那种事！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270040a00">
「那些时刻是弥足珍贵的。」

{	FwC("cg/fw/fw村正_驚きb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270050a01">
「一点反省的意思都没有！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270060a00">
「我是打算说感谢的。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270070a01">
「……那种事，不会再让我
做了吧？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270080a00">
「…………」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270090a00">
「你知道吗村正？
　常言道：朝霞雨，晚霞晴。　
这都是有一定根据的——」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270100a01">
「别岔开话题。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　一边被村正责备，一边沿街踱步。
　路上行人渐稀，感觉格外冷清……尽管如此，
白天喧闹的余温似乎还在某处留存着。

　也许这就是并不显得寂寥的缘由吧。<k>
　
　
　——然后。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＳＥ：ざわめき
	CreateSE("SE01", "se背景_ガヤ_ざわめき01_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270110a00">
「……？」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270120a01">
「听好了，所谓男女间的因缘，
到底是——」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270130a01">
「……什么呢？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270140a00">
「我不知道。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　约莫数十人聚集在十字路口旁。
　面面相觑互相交谈着，但应该不是在　
闲话家常，总觉得气氛异常的不平静。

　试着靠近后，其中的一两人，简直像被　
野兽追赶一般，呼吸混乱，步伐
狼狈不堪地逃了出来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270150a00">
「发生了什么事？」

{	NwC("cg/fw/nw市民Ａ.png");}
//【ｅｔｃ／市民Ａ】
<voice name="ｅｔｃ／市民Ａ" class="その他男声" src="voice/md06/0270160e088">
「嗯，啊……
　似乎又产生纠纷了呐。」

{	NwC("cg/fw/nw市民Ｂ.png");}
//【ｅｔｃ／市民Ｂ】
<voice name="ｅｔｃ／市民Ｂ" class="その他男声" src="voice/md06/0270170e089">
「而且很激烈呢。
　这些人差点就被卷进去，　
好不容易才逃出来。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270180a00">
「……是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　已经是司空见惯的事了。
　又是关东的某个地方发动火力了吧……

　只能祈祷尽早平定下来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270190a00">
「到底是哪里？
　难不成是房总半岛——」

{	NwC("cg/fw/nw市民Ｂ.png");}
//【ｅｔｃ／市民Ｂ】
<voice name="ｅｔｃ／市民Ｂ" class="その他男声" src="voice/md06/0270200e089">
「不，不是的。
　就在<RUBY text="··">这里</RUBY>。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270210a00">
「……<RUBY text="这里">镰仓</RUBY>!?」

{	NwC("cg/fw/nw市民Ｂ.png");}
//【ｅｔｃ／市民Ｂ】
<voice name="ｅｔｃ／市民Ｂ" class="その他男声" src="voice/md06/0270220e089">
「是的。
　北镰仓那边……叫什么地方来着？」

{	SetVolume("@mbgm*", 300, 0, null);
	NwC("cg/fw/nw市民Ａ.png");}
//【ｅｔｃ／市民Ａ】
<voice name="ｅｔｃ／市民Ａ" class="その他男声" src="voice/md06/0270230e088">
「建朝寺。
　就在宫殿那边。」

{	NwC("cg/fw/nw市民Ｂ.png");}
//【ｅｔｃ／市民Ｂ】
<voice name="ｅｔｃ／市民Ｂ" class="その他男声" src="voice/md06/0270240e089">
「对对，就在那附近。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　八幡宫的重建还没开始着手。
　舞殿宫仍处于寄居建朝寺的状态。

　在那附近发生了纷争？
　那肯定是对朝廷怀有敌意的势力——可能是进驻军　
中的强硬派，或是六波罗中的过激派等等——因此
舞殿宫受袭的概率很高。

　亲王岌岌可危。
　不行，不能无动于衷——附近的住民甚多。
何况现在又多了这些避难者。

　会产生大面积杀伤。
　
　
　——必须阻止。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270250a00">
「村正！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　先在附近找个便于隐藏的落脚地，装备装甲。
　以武者的步速要赶到建朝寺，不过是咫尺之间。

　来得及。
　要在惨剧还没发生前赶到。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,true);

	SetVolume("@mbgm*", 100, 0, null);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270260a01">
「————」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270270a00">
「……啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　望着她深邃的双眸，瞬间平息了我沸腾的思维。

　……我到底想做什么？
　跳入纷争之所诉诸和平吗？

　明明很清楚，不是我力所能及的事。

　想要制止争斗，只能动用武力。
　不能像前几日与四个流氓交手时那般手下留情了
——恐怕这次的对手是武装了的军队。
势必会演变为一场搏命之战。

　要把敌人铲除吗？
　又要浸没于为守善而伐恶的伪善之中吗？

　然后为了消除伪善，杀更多的人么。
　包括同伴。

　……做不到。
　不可能做到。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270280a01">
「主君。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270290a00">
「…………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270300a00">
「回去吧……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270310a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　离开聚集的人群。
　村正也沉默着并肩而行。

　暮色苍茫，慢慢地夜行于归家途中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_028.nss"