//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_044.nss_MAIN
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
	#bg022_山林a_03=true;
	#ev221_月明かりを浴びて立つ光_a=true;
	#ev221_月明かりを浴びて立つ光_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_045.nss";

}

scene md02_044.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_043b.nss"


//◆山中。bg022

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg022_山林a_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm33", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……我坐在树林中。
　怀里的光静静地睡着。

　要说是坐着的话，似乎有点不对。
　仅仅只是无法动弹而已。

　腿部的肌肉完全紧绷，几乎无法站立。
　到底奔跑了多远的距离。身上到处是伤，
也出了很多血。

　意识散乱。
　抱着光从堀越御所飞奔出来——
直到此刻呆然地环视周围的瞬间，
记忆完全空白，毫无痕迹。

　我想应该没有连续跑到一天以上，
因此，现在应该还在同一天的夜里吧。
　大概那之后几个小时……
不，实际或许是更短的时间。

　几乎只剩下直觉，周围的水土依然是伊豆，
与堀越的相差不远。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——接下来该怎么办呢？

　各种意义上，这样的问题毫无疑问十分愚蠢。
　事到如今根本不必问，也不该这么问，
就算问了也无计可施。

　问题的答案相当明显。
　我很清楚我必须要做的事。

　所以，打断思考。
　不需要答案——也不想要。

　不想知道。
　即便其实已经知道……也期望能装作不知道，
片刻也好。

　我调整抱光的姿势，把脸凑近。
　浅浅的寝息，拂过脸颊。

　稍微睡一下吧。
　要思考的事，醒来再说。

　此刻就睡去吧，沉浸于最后的幻想。
　就这样……一直、一直，守护着光……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440020a00">
「……………………」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440030a00">
「……额!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　触碰脸颊————<k>
　<RUBY text="·····">睡熟的呼吸</RUBY>!?

　确认光的情况。
　……睡了。

　从何时开始的？
　不，这种事情随便怎样都好。

　……足利茶茶丸说过什么吧？

　银星号是光的梦。
　陷入深度睡眠便会出现——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(1000);

//◆さっ。立ち上がる音

	OnSE("se人体_動作_一歩", 1000);

//◆ＥＶ：月光を愉しむ光
	CreateTextureEX("光", 15000, @0, @0, "cg/ev/ev221_月明かりを浴びて立つ光_a.jpg");

//おがみ：EV完成後作業＞リサイズ素材作成

	CreateTextureEX("光2", 15000, -960, -480, "cg/ev/resize/ev221_月明かりを浴びて立つ光_al.jpg");
	Fade("光2", 1600, 1000, null, false);
	Move("光2", 6000, -530, -80, DxlAuto, false);

	Wait(1600);

	SoundPlay("@mbgm14",0,1000,true);

	Wait(3400);

	Fade("光", 0, 1000, null, true);
	FadeDelete("光2", 3000, false);

	Wait(1000);

	SetFwL("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md02/0440040a14">
「这风真舒服。」

{	FwL("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440050a14">
「草的味道。
　土的味道。
　黑暗的味道……」

{	FwL("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440060a14">
「抬头仰望，隐藏于树木细缝间的月亮。
　深山中的风雅景色啊！」

{	FwL("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440070a14">
「景明，你真用心。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　光微笑着，那么说道。
　像品味夜间的山风般，缓缓张开两臂。

　光。
　
　……<RUBY text="光">银星号</RUBY>。

　凑斗光做的梦，银星号。
　伫立着沐浴于月光下的身姿，着实虚幻。

　但那并非空虚也并不柔弱。
　而是有力的。充满着力量！

　这样的存在是梦？
　如此有力的东西吗？ 

　是我在做奇怪的梦吧。
　在不知何时闯入此山，然后受狐狸所诓骗……

　这样的解释——比现状更能接受。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440080a00">
「……光……」

{	FwL("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440090a14">
「什么？」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440100a00">
「你——」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440110a00">
「…………」

{	FwL("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440120a14">
「怎么了。
　我们的关系不需顾虑什么。」

{	FwL("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440130a14">
「我们是家人，不是吗？」

{	FwL("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440140a00">
「…………」

{	FwL("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440150a14">
「问什么都没关系，说吧。
　想听你的声音。」

{	FwL("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440160a00">
「……」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440170a00">
「你是……光的梦吗？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　想说的话，还是说出了口。

　确实是蠢话。
　对着怎么看也不像是梦的东西问：你是梦吗。
又或者，认为是梦却问：你是梦吗。

　不管哪种，都像是脑神经断裂者的所为。
　果然，奇怪的是我……

　对光来说，会觉得意义不明。
　皱着眉，带着惊讶的表情反问我——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("光2", 16000, @0, @0, "cg/ev/ev221_月明かりを浴びて立つ光_b.jpg");
	Fade("光2", 500, 1000, null, true);
	Wait(500);

	SetFwL("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆微笑
//【光】
<voice name="光" class="光" src="voice/md02/0440180a14">
「是啊。」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440190a00">
「————」

{	FwL("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440200a14">
「我只不过是凑斗光的梦。」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440210a00">
「……你……」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440220a00">
「知道自己……」

{	FwL("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440230a14">
「我知道。」

{	FwL("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440240a14">
「我知道自己只是一身幻影。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　并没陷入悲叹。也并非看透。
　<RUBY text="光">银星号</RUBY>仅仅是自然地认同。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440250a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　无法理解。
　知道自身是梦——是虚构，会有这样的存在吗？

　虚构让崩坏成为宿命，
　虚构本身有所自觉，与存在本身不是矛盾吗？

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md02/0440260a14">
「不可思议？」

{	FwL("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440270a00">
「……」

{	FwL("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440280a14">
「对我来说，没有什么需要烦恼的。」

//【光】
<voice name="光" class="光" src="voice/md02/0440290a14">
「梦就是希望。
　不……虽然也不能这么断言，
但仅就凑斗光而言，梦确实就是希望的结晶。」

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440300a00">
「……希望……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演月光", 17000, -396, -130, "cg/ev/resize/ev221_月明かりを浴びて立つ光_bl.jpg");
	Move("絵演月光", 6000, -172, -32, DxlAuto, false);
	Fade("絵演月光", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　光伸出左手。
　月华之下闪烁着白银的光辉。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md02/0440310a14">
「我因我是凑斗光的梦而喜悦。
　那意味着我是凑斗光最纯粹的存在。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Delete("光*");
	FadeDelete("絵演月光", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　张开的手，触摸着胸口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/md02/0440320a14">
「我因我是凑斗光的梦而自豪。
　那意味着我是凑斗光最坚强的存在。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　握紧双手，攥成拳头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【光】
<voice name="光" class="光" src="voice/md02/0440330a14">
「我因我是凑斗光的梦而起誓。
　那意味着我是凑斗光即将实现的梦想！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　从紧握的拳里仅伸出食指，像剑一般挺立着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440340a00">
「…………」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440350a14">
「我不迷惘，我作为我而存在……
　走上这条路，一心前进——我能办得到。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440360a00">
「光……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440370a14">
「必须要去了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演光", 5110, -480, -290, "cg/ev/resize/ev221_月明かりを浴びて立つ光_al.jpg");
	Move("絵演光", 6000, -480, -120, DxlAuto, false);
	Fade("絵演光", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　她说着。
　背向了我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440380a00">
「……去……？」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440390a14">
「唔。
　作为光的梦，为了实现光的愿望。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440400a14">
「必须要实现天下布武。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440410a00">
「————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　那。
　那意味着……也就是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440420a00">
「不要！」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440430a14">
「…………」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440440a00">
「不要……再残杀了！
　也会要了你自己的命的!!」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0440450a00">
「你的身体——」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440460a14">
「到极限了吗？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440470a00">
「……！」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440480a14">
「或许是那样。」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440490a14">
「但不能停。」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440500a00">
「光！」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440510a14">
「我为了希望而继续前行。
　其他所在我都不知道！」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440520a14">
「我是光的梦。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440530a00">
「…………」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440540a14">
「到极限的话，就挑战极限。
　那样的话必定能实现愿望！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　愿望。

　光的————愿望。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440550a00">
「将父亲……」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440560a14">
「嗯。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440570a14">
「将被抢走的父亲抢回来。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440580a00">
「……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440590a00">
「没有人……
　……抢走你的父亲……」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440600a14">
「……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440610a00">
「明尧大人并没拒绝你！
　去见的话，一直都会迎接你的……」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440620a14">
「我并非渴望见面。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440630a14">
「他称自己是我父亲。
　承认光是他女儿。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440640a00">
「那也——」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440650a14">
「能实现吗？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440660a00">
「…………」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440670a14">
「跟你所说的一样。我要见父亲随时都可以。
见到了也能叫他父亲。
　但我一次也没有。」

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440680a14">
「我怕被拒绝。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440690a00">
「……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440700a14">
「你怎么想。景明。」

//【光】
<voice name="光" class="光" src="voice/md02/0440710a14">
「光的愿望能实现吗？
　父亲是打从心底，用真实的话语——承认
我是她女儿吗……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//■過去フラッシュらしいので白アウト

	CreateColorEX("ホワイトアウト１", 5000, "WHITE");
	Fade("ホワイトアウト１",300, 1000, null, true);


}

..//ジャンプ指定
//次ファイル　"md02_045.nss"