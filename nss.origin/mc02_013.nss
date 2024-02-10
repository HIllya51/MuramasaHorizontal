//<continuation number="1130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_013.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_014.nss";

}

scene mc02_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_012.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


//■顔を上げる、とのことで。
//ただこれだと微妙かもしれない。 inc櫻井

	OnBG(11, "bg079_ウォルフ教授の部屋_03.jpg");
	FadeBG(0, false);
	Delete("上背景");
	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　突然，我感觉到突兀的视线，便抬起头来。
　我环视房内——没看到任何人。

　每当我要开始看论文时，都会感受到这股视线。
　
　……是错觉吗。

　我再次将视线落在论文上。
　我刚才看到哪里了。我寻找着刚刚的进度。

　无意间，我发现了那潦草的字迹。
　它位于页面的一角……不同于正文，字体凌乱。

　虽看似出自同一人之手。
　但书写语言不同。正文是英文和日文掺杂使用，这潦草的
字迹应该是——德语。

　似乎是一气呵成的段落。
　
　Ｍｅｉｎ……Ｍａｃｈｔｈａｂａｒ……
　Ｋｒｉｓｔａｌｌｎａｃｈｔ……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130010a00">
「……大法首？
　……水晶之……夜……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　以前，我拼命找寻治疗妹妹疾病的方法时，
曾经学过一点医疗发达国家——德国的语言。
　我搜刮着无底的记忆，总之，我先试着翻译
文中之意。

　其中一句应当是这个意思。

　
　『我们的大法首啊，水晶之夜发生了何事？』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130020a00">
「…………？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　大法首——是先前“大战”时战败的统合独逸联邦
的领导者自称的名号。
　至于……水晶之夜。

　虽然我知晓其意，却无法理解。
　
　我陷入沉思视线无意间飘移，当我察觉到
<RUBY text="····">那个存在</RUBY>时，不禁叫出声来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆「少女」
//◆戦国ランスの魂縛りみたいな感じか。エルフ耳（白蝦夷）
//◆ＢＧＭ：金神／魔王尊

	StC(1000, @0, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStC(300, true);

	WaitKey(1500);

	SoundPlay("@mbgm02", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　是名少女。

　她从什么时候开始站在那的。
　在几十秒前，我环视房内时应该还没出现
——不，也有可能是<RUBY text="·····">我漏看了她</RUBY>。

　不得不让我探究这种愚蠢的可能性，
那名少女没有任何所谓的『主张』。
　她在这里的主张。她是一个活人的主张。
这些都没有。

　完全没散发出人类的气息。
　虽然她有心跳，但她也太没生命力了。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130030a00">
「……你是？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆ボックス消してウェイト
	WaitKey(1500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……她全无反应。
　也没有其他手段来回应我。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130040a00">
（雕像？）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我脑中闪过一个离谱的念头。
　但即便是这个想法也无法剔除。少女的安静、纹丝
不动都超出常轨。

　我缓缓地将手伸向少女，碰了碰她的脸颊。
　
　好柔软。
　好温暖。

　这是有体温的肌肤。
　果然是活生生的人类。

　虽然跟她说话毫无意义，但碰触却可以刺激她吗？
少女眨了眨眼。
　就这样直勾勾地抬头看着我。

　注视着我。
　动也不动地凝视着我。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130050a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。茶々丸（ライガー）

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg037_競技場ガレージb_01.jpg");
	CreateTextureSP("絵回想200", 2100, Center, InBottom, "cg/st/st茶々丸_通常_変装.png");

	EfRecoIn2(300);
	
	WaitKey(1500);

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　——为什么。
　有位少女的容颜，与她重叠了。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130060a00">
（为什么……？）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我因莫名的幻影而困惑。
　我也只能继续沉默着凝视这名少女。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

//◆ＢＧＭフェードアウトして
	SetVolume("@mbgm*", 1000, 0, AxlAuto);

//◆足音→ドアが開く

	OnSE("se人体_足音_歩く03_L", 1000);
	WaitKey(3000);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se日常_建物_扉開く01", 1000);

	SetFwR("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130070a13">
「话说，内裤的现在进行时是
内裤ｉｎｇ吗？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130080a00">
「不，那根本不是动词啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我回过头。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_04_1.png", true);

	DeleteStA(0, true);

	CreateTextureSP("絵演拡大背景", 6000, -207, -273, "cg/bg/resize/bg079_ウォルフ教授の部屋_03m.jpg");

//◆ウォルフ

	StR(6100, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_04_0.png", true);
	Delete("黒幕１");

	SoundPlay("@mbgm21", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　有位高大的男人正站在那里。
　他满脸胡须，<RUBY text="····">炯炯有神</RUBY>的双眼格外引人
注意。

　与雕像般的少女相比，这男人明显像个活人。
　年龄不详。乍看之下像五十岁的男人，但我认为
他或许出乎意料的年轻。不过也应该不会是三十几
岁吧。

　他——<k>{DeleteStR(150,true);}淡淡地瞟了我一眼之后，眺望着身旁的少女，
然后露出笑容。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @80, @0, "cg/st/stウォルフ_通常_私服.png");
	StCL(1000, @-40, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStA(0,true);
	FadeDelete("絵演拡大背景", 300, true);

	SetFwC("cg/fw/fwウォルフ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130090a13">
「怎么，你在这里啊“少女”！
　人生大概就是这样吧。青鸟一直都在自己
的家中。遗失的钱包就在抽屉里。就是这种
感觉吧。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130100a13">
「来，你回房吧。
　已经是小朋友睡觉的时间啦。上完厕所，
刷完牙，穿好睡衣，脱掉内裤，钻进被窝。
最后一项最重要的。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130110a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 20000);
	DeleteStA(0,true);
	FadeDelete("絵板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　虽然少女对于男人的话没有做出任何反应，但她的手
被男人拉住，她顺从地迈开步伐，朝里面的门走去，然
后消失不见。
　我目送她离开，胡子男转身面向着我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	StL(1000, @0, @0,"cg/st/stウォルフ_通常_私服.png");
	FadeStL(300,true);

	SoundPlay("@mbgm35", 1000, 1000, true);

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130120a13">
「有件事我一直觉得不可思议。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130130a00">
「什么事？」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130140a13">
「为什么人要穿内裤？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130150a00">
「这算是哲学问题吗？」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130160a13">
「这并不影响我的问题。
　你难道没有疑问吗？　人类
又不是生来就穿着内裤的。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130170a13">
「然而每个人都穿着内裤。
　简直就像天命——一样。」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130180a13">
「不过，另一方面，大家都会脱内裤啊！
　有人穿着内裤性交吗？
有人穿着内裤排便吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130190a00">
「的确罕见。」


{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130200a13">
「那是不道德的行为吧！」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130210a00">
「我承认那是特殊癖好。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130220a13">
「正常的人类都会脱内裤。
　那么，为什么不一开始就脱掉它？」


{	FwC("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130230a13">
「不穿内裤不也挺好的吗！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130240a00">
「……原来如此。
　我懂你的意思。」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130250a13">
「是吗。
　你也赞成我的想法吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130260a00">
「不。」


{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130270a13">
「什么!?」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130280a00">
「人本来就应该穿内裤的吧。」


{	FwC("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130290a13">
「为什么！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130300a00">
「这次我来发问。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130310a13">
「嗯。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130320a00">
「看到老大不小的男人不穿内裤到处走，
你会觉得开心吗？」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130330a13">
「你是在侮辱我吗？」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130340a00">
「请回答。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130350a13">
「我会右手拿着三八口径的枪，左手拿着内裤，
命令他立刻给我穿上。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130360a00">
「原来如此。
　那……如此强迫一个男人穿上内裤，
你觉得开心吗？」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130370a13">
「恶心死了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130380a00">
「反过来说，让女性脱掉内裤呢？」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130390a13">
「这是人生一大乐事。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130400a00">
「就是这么回事。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130410a13">
「嗯？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130420a00">
「在不穿内裤的世界里，让丑陋的人穿上内裤。
在每个人都穿上内裤的世界里，让美女脱掉内裤，
哪边的人生比较美妙呢？」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130430a00">
「答案很明确吧。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130440a13">
「——————」


{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130450a13">
「喔喔喔!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	DeleteStA(300, false);
	CreatePlainEX("絵板写", 15);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	SetVolume("@mbgm*", 1000, 0, null);

	CreatePlainSP("絵板写下", 9990);
	CreatePlainEXadd("絵板写", 10000);
	Wait(12);
	Fade("絵板写", 1000, 1000, Axl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　男人嘶吼了起来。
　他举起双手，在空中挥舞。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm28", 0, 1000, true);
	CreateTextureSP("絵演効果背景", 9000, Center, Middle, "cg/bg/bg001_空c_03.jpg");

	Fade("絵板写*", 1000, 0, null, false);
	DrawDelete("絵板写*", 1000, 1000, "effect_01_00_0", true);

	SetFwC("cg/fw/fwウォルフ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130460a13">
「太棒了啊啊啊!!
　太完美了！
　多么美妙啊！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130470a13">
「终于解开了长久以来的谜团！
　居然这么简单就解决了！
　啊啊，哈——利——路——亚！」


{	FwC("cg/fw/fwウォルフ_歓喜.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130480a13">
「哈利利利利路路路路亚亚亚亚亚亚亚!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1500);

	SetVolume("@mbgm*", 1000, 0, null);
	StL(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStL(0, true);

	FadeDelete("絵演効果背景", 600, true);

//◆不意に冷静に
	SetFwC("cg/fw/fwウォルフ_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130490a13">
「我是白痴吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130500a00">
「这个概率很高。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　虽然按情理我不该这么说。
　中途开始，我的脑髓跟不上对话的展开，所以依靠
脊椎条件反射地作答。但方才这些，何处才是哲学。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35", 0, 1000, true);

	SetFwC("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130510a13">
「不过。
　……就算如此，人们还是
得脱掉内裤。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130520a00">
「啊……？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130530a13">
「遮掩性器就是有羞耻心的证明。
　羞耻心就是智慧的根源。」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130540a13">
「这种小聪明让我们远离了神明……」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130550a13">
「只要它存在，人类就无法得到神的原谅。
　不管怎么祈求，我们的愿望……终究无法
实现。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130560a13">
「……想成为神明之人，就该全裸……」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130570a13">
「抛开一切……真心祈求。
　这样的话……神就会<RUBY text="··">降临</RUBY>……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130580a00">
「………………？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆足音

	DeleteStL(300,false);
	OnSE("se人体_足音_歩く03_L", 1000);
	WaitKey(1500);
	SetVolume("@OnSE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　男人突然迈出步伐。
　他绕到桌子对面，坐在一张老旧的椅子上。

　然后伸出一只手，示意我也坐下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130590a13">
「你是凑斗景明吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130600a00">
「是的。
　你是——」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130610a13">
「我叫沃尔夫。
　大家都叫我沃尔夫教授。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　不出所料。
　他……就是向大鸟大尉请求饶我一命的人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130620a00">
「在大学里教书吗？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130630a13">
「我的确曾经教过。
　但现在不一样。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130640a13">
「但司令部要求我应付一下大和语的课程。
要我在横滨教书。
　因此，大家才会称呼我教授吧。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130650a00">
「我从刚才就深刻体会到，你的大和语相当流利。
　大家会尊敬您也是理所当然的吧。」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130660a13">
「谢谢。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130670a13">
「不过，我惯于大和语的使用，
并不是什么奇迹，而是理所当然之事。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130680a00">
「此话怎讲？」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130690a13">
「很简单。
　大和就是内裤之国。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130700a00">
「……不。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　这根本毫无根据。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130710a13">
「不对。
　应该说，大和是不穿内裤的国家。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130720a00">
「这……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　以前是这样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130730a13">
「不对。
　大和是剑胄的国家。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130740a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　他的言辞无章可循——这是我的错觉吗。

　不过——剑胄？
　那，这个人是……剑胄的研究者吗？

　如此说来，他的领域就是机械力学、流体力学、考古学。
　不，或者……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130750a13">
「Ｆｏｌｋｌｏｒｅ。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130760a00">
「Ｆｏｌｋｌｏｒｅ……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　他就像看透我的想法似的说出一个单词，
我接收到这个单词，并加以反刍。
　这是德语的音阶。

　Ｆｏｌｋｌｏｒｅ……Ｆｏｌｋｌｏｒｅ。
　……民俗学</RUBY>。
　
　将德语转换成英文，再将英文转换成大和语。

　民俗学。
　我品味完这个单词后，再次环视房内。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130770a00">
「……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　我刚刚看到一半的奇妙论文一定就是他
撰写的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130780a13">
「无视大和，想站在人类文化的角度上
解开剑胄的意义，这很好笑吧？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130790a00">
「能让外国人这么说，身为大和人，
我感到很开心。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130800a13">
「啊，你们也有值得夸耀的文化哦。
　在如此狭小的岛国中，居然可以发展出
如此独特的技术。」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130810a13">
「以这一点来说，你们或许比全欧洲的国家
都优秀。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130820a00">
「不敢当。
　不过，我们既无法独力完成产业革命这般伟大
的事业，也无法从这股潮流中开拓剑胃的量产
工业。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130830a13">
「嗯。那么就认为是有长有短吧。
　不过啊，我还是赞扬大和的优秀。」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130840a13">
「不，应该说我很期待。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130850a00">
「……期待什么？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130860a13">
「我很期待<RUBY text="··">你们</RUBY>是否能实现
……我的愿望。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　是我的错觉吗。
　他所说的『你们』在我听来有些异样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130870a00">
「…………」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130880a13">
「那么，让我们来解决事情吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130890a00">
「事情？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130900a13">
「当然就是叫你过来的原因啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　……是吗。
　进驻军的顾问教授不会闲来无事与人会面吧。
这是理所当然的。

　既然叫我来，应该对我有什么要求吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130910a00">
「……现在，我在想自己身为俘虏，
却受到不错的待遇。
　因此，我不会主动抱有敌意。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130920a00">
「只要教授的愿望与我、或是和我有关的
人员没有明显利益冲突的话，我就会
尽可能地善加处理。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130930a13">
「嗯。
　不过，事情也没有那么夸张啦。」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130940a13">
「事情很简单。很快就结束。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130950a00">
「……是。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130960a13">
「你健康吗？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130970a00">
「……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130980a00">
「是的。
　身体机能大致上没有障碍。」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130990a13">
「应该不会明天一早就
突然猝死吧？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131000a00">
「……大概不会。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131010a13">
「那就好。没事了。
　你可以回自己的房间了。」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131020a13">
「把你带到这里的士兵正在外面等你。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131030a00">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131040a00">
「你说的事情，就只是这样而已吗？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131050a13">
「嗯。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131060a00">
「……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131070a00">
「听说您请求大鸟大尉把我活着
带到此地。
　为何……如此挂念我的生命？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131080a00">
「如果可以的话，希望能告诉我原因。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131090a13">
「我已经告诉你了啊。」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131100a00">
「……」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131110a13">
「我对你们有所期待……
　我刚刚不是说过了吗？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131120a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(1500);

//◆部屋を出る

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131130a13">
「——你的未来不会有绿龙振翅声。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　离开房间那一刻，我听到了这句话。
　
　……是某个国家的说法吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆時間経過

	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"mc02_014.nss"
