//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_006.nss_MAIN
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
	#ev175_バロウズコントラバス形態=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_007.nss";

}

scene mc03_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_005.nss"

//◆廊下
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100, "bg063_永倉邸廊下_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　香奈枝小姐委婉地表达了自己的疲劳，于是我从
她面前告辞，走上了返回自己房间的路。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：コントラバス独奏。別バージョン？

	SoundPlay("@mbgm06", 0, 1000, true);

//◆ウェイト

	WaitKey(1500);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0060010a00">
「…………？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——怎么回事呢。
　弦乐器那奇妙的音色，和以前听到时相比，
音调似乎变得有些不同。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100, "bg068_普陀楽城内部屋_01.jpg");
	FadeBG(0, true);

	FadeDelete("上背景", 1500, true);
	FadeDelete("黒幕１", 1500, true);

//◆香奈枝
	StL(1000, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300, true);

	Wait(1000);

	CreateTextureEX("絵ＥＶ", 4100, Center, Middle, "cg/ev/ev175_バロウズコントラバス形態.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　象征着乐器的剑胄，名字是威廉·巴罗斯。

　
　——“赝作弓圣”

　一个特别想要成为英雄的锻造师，深深沉溺于自己的英雄
才能，但同时胆怯也比别人多出一倍。他模仿了声名远
扬的神甲“弓圣”威廉·退尔，锻造出了这个本想取代
真品的作品。

　伪装成传说大名甲的初次登场——他作为剑胄完成了
新生，但其射出的第一箭，就不幸地露出了马脚。
　他选择的<RUBY text="Crusader">操纵者</RUBY>没能善用他的“能力”，


　本想依照传说，射穿放在别人头顶的苹果，但是弓箭
偏离了目标——射穿了那人的喉咙。
　
　射杀的，是锻造师的妻子。

　之后，他巴罗斯在认识的人之中成为了侮蔑和嘲笑
的对象，他被称为最愚劣的诅咒赝品，得到了和他希望
完全相反的评价——但是对从奇遇中得到的第二个操纵
者，大鸟香奈枝，他从未违背过她的期待。

　无论在战场上。还是在乐堂中。
　<RUBY text="巴罗斯">赝作</RUBY>总是能奏出她想要的音色，弹出她心目中的旋律。


　恐怕是因为赝品的乐器与她阴暗的心灵很默契吧。

　但是————现在。
　她用指尖一次次拨弄琴弦，但乐器却没有顺应奏者之
意。

　音阶坍塌。
　音调混乱。

　演奏出的，是像蚯蚓一样阴湿扭曲的曲子。
　大鸟香奈枝变得更加烦躁。

　变调。

　她注意到了。
　那并不是乐器的问题。

　是使用乐器的手指。
　是驱使手指的神经。
　是统领神经的脑髓。

　产生变调的，并不是乐器，而是大鸟香奈枝。

　先前简短的对话还在心中回荡。
　那真是奇异的对话。

　和自己对话，对于自己所说的话产生疑问，不停地问
着自己……
　
　香奈枝只得这样去想。

　凑斗景明说的话，本来应该是大鸟香奈枝说出口的，
而且实际上她也确实说过。
　他那样困惑也情有可原。

　——凑斗景明，应死在大鸟香奈枝的手中。

　这才是她应有的结论。
　是正确的归结，是应得的结局。

　罪孽得到裁决，
　复仇迎来终结，
　善恶成为等价，
　维持世界的秩序。

　明明是这样的。
　……为什么，当时要替他挡开呢。

　如果是为了要亲手杀掉他——那也是本末倒置了。
　子弹没有击中要害，所以香奈枝捡回了一条命。
但这只是从结果来说。


　如果再缺少一丝幸运，她现在也不会存在于这世上了吧。
　复仇者用自己的性命换取了仇敌的性命。

　开玩笑也要有个限度。

　————为什么？

　大鸟香奈枝自问。

　大鸟香奈枝喜欢流血，嗜好杀人。
　作为贵族的荣耀，与向往正义的志向共存，形成了这
种嗜好。

　所以她走上了战场。
　作为贵族的自己，履行正道的自己，作为杀人狂的自
己。为了实现自己的价值。

　其中复仇是最棒的战场。
　为了被掠夺的哀叹，将其夺回——对于这正义，没有
可怀疑的余地。

　过去，她代理过很多的复仇。
　作为执法者，她履行了贵族的义务。
　
　并且乐在其中。

　现在，香奈枝回到了祖国，她终于该为自己复仇了。
　……事到如今，为什么还会犹豫呢。


　是因为杀了他的父亲吗——她也会这样想。
　但是，只要把事实告诉他，这个问题就能有结果。


　在他得知事实之后，如果愤怒地来向香奈枝挑战，那
样也很好。
　战斗，并且分出胜负吧。

　谁会取胜，谁能完成复仇，这是只有神才知道的事。
　这样很好。完全没有问题。


　……可是。
　如果他得知事实之后，还是无法在自己心中孕育出足
够的憎恶，不能和香奈枝的憎恶抗衡的话。

　如果他认为一切都是自己播撒的灾厄之种——
　
　就像那样，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。涙する景明

	EfRecoIn1(18000,600);

//仮画像　inc櫻井
	CreateTextureSP("イベ絵10", 17001, Center, Middle, "cg/ev/ev171_香奈枝に跪く景明.jpg");

	DeleteStA(0,true);
	EfRecoIn2(300);

	WaitKey(1000);

//◆戻り

	EfRecoOut1(300);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg068_普陀楽城内部屋_01.jpg");
	Delete("イベ絵*");
	Delete("絵ＥＶ*");
	EfRecoOut2(600,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　就像那样——如果他最后只会那样做。
　
　
　大鸟香奈枝，是否能够完成复仇呢。

　不。
　必须完成。

　复仇是法则。
　法则必须正确地执行。

　掠夺之罪，必须以反被掠夺的形式进行偿还。


　大鸟香奈枝这样对自己说。
　要履行贵族之血担负的使命。要维护正义之道的尊严。
要享受沉浸于杀人的喜悦。

　就这样，指尖再次抚上了琴弦。
　奏出琴音，纺出乐曲。

　耳边重新响起了熟悉的音色。

　要复仇，
　要复仇，
　复仇，
　复仇之后……

　
　　　　之后，
　　　　　　　　　　　　　……又能如何呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＢＧＭ止めて、びーん。弦を荒く弾く。
	SetVolume("@mbgm*", 300, 0, null);
	OnSE("se特殊_楽器_コントラバス01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　有生以来第一次产生的疑问，令香奈枝的手指从琴弦
上滑落了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆庭？
//◆さよ

	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 1500, 1000, null, true);
	PrintGO("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg053_永倉家の庭_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0060020a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　年老的侍从，是知道的。

　她知道，越是心中抱有强烈憎恶之情的人，其爱情也
越深。

　她知道，自己侍奉的主人，也并非例外——
　
　永仓纱代，是知道的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_007.nss"