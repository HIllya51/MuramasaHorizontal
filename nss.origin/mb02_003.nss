//<continuation number="1410">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_003.nss_MAIN
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
	#bg063_普陀楽城内廊下_01=true;
	#bg045_普陀楽城公方の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_004.nss";

}

scene mb02_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb02_002.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg063_普陀楽城内廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StR(1000, @0, @0,"cg/st/st義清_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030010a00">
「前来提交关东第六区粮食情况报告。
　请通报游佐中将阁下。」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb02/0030020b21">
「明白了。
　请稍等。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　似是侍童的少年消失在通路的深处。

　并未经过称得上是等待的时间。
　少年返回，无言地催促着我们从旁通行。

　略一点头，我向前走去。
　一条跟在后面。

　走了约十步左右，一间极为质朴的书斋映入眼帘。
　向一位坐于隔扇前、背对我们的魁梧之人行了一礼。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆童心の間
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030030a09">
「无妨。
　进来。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030040a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	Wait(500);
	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　边注意着不要将头抬得过高，边跨过门槛。
　就算做出无礼的举动，屋子的主人也看不到。但，
侍童绝对在背后盯着我们，果然还是得注意态度恭谨。

　有些在意位于我视线死角的一条此刻的举动。
　……别是昂首挺胸地走进来就好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030050a09">
「宇都宫送来的报告吗？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030060a00">
「是。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030070a09">
「粮谷缺乏很严重吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030080a00">
「……是。
　照此发展，将有可能不得不改为配给制。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030090a09">
「嗯。
　冈部之乱作祟啊。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030100a00">
「是……
　粮食状况虽整体趋于改善，然北关东
一带的情况则属例外。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030110a09">
「因为征用军粮过于严苛。
　加之那一带的镇子与村落，曾因袒护叛乱而
遭灭顶之灾，这也有一定影响……」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030120a09">
「考虑到未来，的确需要以儆效尤，虽然贫僧
并无意指责狮子吼大人的做法。
　可是农业人口一下子削减了数千人。经济的
根基会垮掉的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030130a00">
「……是……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030140a09">
「于是……
　该怎么做呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　游佐童心没有看文件，依旧背着身，烦恼似的喃喃自
语。
　却有些心不在焉的感觉，
——似乎是正在做什么细致的手工活。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030150a09">
「是否得向茶茶丸大人低头呢。
　求她将骏豆的丰饶分到别处一些……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030160a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030170a09">
「虽然向她借债让人有些害怕。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030180a00">
「果真如此吗？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030190a09">
「呵呵……
　你在小看那位小姐吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030200a00">
「不敢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　别说小看了，根本连见都没见过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030210a09">
「她可是<RUBY text="·····">吃人的老虎</RUBY>哟？
　又不是不知道堀越骚动的来龙去脉……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030220a00">
「…………」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030230a09">
「足利茶茶丸、今川雷蝶、大鸟狮子吼……
　个个年轻勇猛、心怀鬼胎，皆为可惧之人。」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030240a09">
「表里如一的老实人唯贫僧童心尔。
　哈哈哈哈哈！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　就像开了一个绝佳的玩笑似的，四公方之首高声大笑。
　我烦恼着是否该跟着他笑两声。最后还是放弃了。

　我诚惶诚恐地垂头静待。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030250a09">
「你的声音真耳生。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030260a00">
「……什么？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030270a09">
「政所的人员我都知晓……
　和你今天可是初会？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030280a00">
「……失敬。
　未能及时自报姓名，还请宽恕。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我慌忙道歉。
　心内略有些惊讶。

　这位古河公方，可说是现在普陀乐城真正意义上的主
人，然若说他熟知每一个处于城堡底层、负责杂务的下
级文官……
　令人难以置信。

　我想，或许是在<RUBY text="···">巧妙地</RUBY>用话套我。
　但在没有确凿证据的情况下装傻充愣，太过危险。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030290a00">
「小人名为改景秋。
　今日刚刚赴任。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030300a09">
「改吗……
　<RUBY text="··">那位</RUBY>姑娘呢？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030310a00">
「是。是小人的拙荆，名叫一媛。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……按理公方从未回过头，而一条也始终一言未发。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030320a00">
「尚有许多生疏之处，请严加指导、鞭策。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030330a09">
「哦。
　夫妻出仕，令人钦佩。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030340a00">
「说来惭愧，由于需赡养病中父母，自己一
人工作着实难以维持家计。故在来此之际提
出申请，请求委以拙荆一职。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030350a09">
「从哪儿来的？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030360a00">
「此前效力于印旛代官所。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030370a09">
「印旛沼吗……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030380a00">
「是。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030390a09">
「那里相当棘手啊。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030400a00">
「是……
　两年前的水灾导致周边村落遭受重创。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030410a09">
「五年前也曾洪水泛滥。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030420a00">
「是。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030430a09">
「于是……嗯。
　听说明年<RUBY text="···">还会有</RUBY>洪灾。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030440a00">
「也有人散布此种传闻。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　好似亲眼见过似的对答如流。
　若听起来像是真话就好……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030450a09">
「须完善治水工程啊。
　印旛沼遭受洪涝，直接影响幕府的储备禄
米。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030460a00">
「恕我插言……
　恳请早日完善。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030470a09">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　像是为难似的首肯后，公方沉默了。
　过了许久，只能听到摆弄什么小东西的悉索声。

　我是否该放下文件退下呢……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030480a09">
「夫人。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030490a00">
「——」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030500a02">
「……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030510a00">
（叫你呢）


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030520a02">
「啊……是。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030530a09">
「你不善言谈呢。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030540a02">
「这个……算是吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030550a00">
「实在抱歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　出乎意料的事态，令我警惕起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030560a00">
「拙荆虽勤劳肯干，却笨嘴拙舌、不知礼数。
　我事先警告过她，在公方大人面前勿要
多言。」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030570a09">
「不让女子开口讲话，你也太过分了。
　无妨、无妨。年轻女子无礼也可爱。尽管开
口无妨。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030580a00">
「是……
　遵命。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　朝一条使了个眼色。
　无言之意应该已传达给她——一条使眼色表示明白就
是最好的证明，至少在表面上会压抑住对六波罗的敌忾
心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030590a09">
「普陀乐如何？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030600a02">
「好大啊。
　大得夸张。」


{//◆頭痛そう
	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030610a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030620a09">
「呵呵。
　不喜欢这座城吗？」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030630a02">
「不。哪里。
　只是觉得太过浪费钱财。」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030640a09">
「哈哈哈！
　原来如此，此话好直率。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030650a00">
「……真是丢人。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030660a09">
「无妨无妨。不可发怒。
　如此直爽，倒令人神清气爽。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030670a09">
「那么，夫人。
　为何觉得是浪费钱财呢？」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030680a02">
「您不知道？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030690a00">
「一……媛。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030700a09">
「嗯。请赐教。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030710a02">
「很简单。
　<RUBY text="········">没有不会沦陷的城</RUBY>。不管多么固若金汤，
城终究是会陷落的。」


//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030720a02">
「为这种东西花钱，太蠢了。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030730a09">
「呵！」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030740a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030750a09">
「改。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030760a00">
「是。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030770a09">
「你的妻子真是个聪明人。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030780a00">
「……您过奖了……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　无言可对。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030790a09">
「句句合情合理。
　不过……一媛夫人。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030800a02">
「有何指教？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030810a09">
「的确，建造这座城池，有如将宝贵的金钱付
之东流。
　更为合理的其他用法想必数不胜数。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030820a09">
「但……这并非浪费。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030830a02">
「是吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　一条反问道。
　就算从保守的角度来看，与其说是反问，倒不如说是
挑战。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030840a09">
「嗯。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030850a02">
「有何意义呢？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030860a09">
「你不知道？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030870a02">
「……是。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030880a09">
「这个嘛……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　顿了一顿。
　接着，皈依佛门的武将威严地说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030890a09">
「虚张声势啊。
　你想，建造一座巨大的城池，
会<RUBY text="···">镇慑住</RUBY>所有人吧？」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030900a02">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030910a00">
「……」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030920a09">
「唔哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　游佐高僧捧腹大笑。
　我瞟了一眼背后。

　……她明显一脸不高兴的样子。
　这也难怪。不过没被看到真是万幸。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030930a09">
「总之，道理都是一样的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　他仍旧背对着我们。
　隔着中将的肩膀，可以看到有什么东西伸了出来。

　像是从刚才起就一直在摆弄的东西……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030940a00">
「是……小茶勺吗？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030950a09">
「正是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　用竹子制成的小勺。
　的确是茶道道具的一种。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030960a09">
「铭为“思草”。
　肥后细川家代代相传之物。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030970a09">
「据说是小堀远州所做。
　数年前勉强别人转让给我的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　勺尖弯曲稍深……
　因此而得铭吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030980a00">
「……做工精湛。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030990a09">
「是吧。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031000a02">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031010a09">
「出自名家小堀远江守之手……
　得无与伦比的艺道大名细川家精心使用三百
年、历经二十代，千锤百炼的好茶勺。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031020a09">
「独具妙不可言之风韵。
　是世间不可多得的珍品。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031030a00">
「的确。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031040a09">
「不过。
　……一媛夫人如何看此物？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031050a02">
「脏脏的一小段竹子。」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031060a09">
「对！
　多么寒酸的竹子。若是滚落庭前，
定会遭人踩踏。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031070a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031080a09">
「普陀乐城和此物一样。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031090a00">
「啊。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031100a02">
「啊？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031110a09">
「如果觉得它是可怕的城池，那它就是。
　如果觉得它是纸老虎，那它也是。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031120a09">
「都真实无疑。
　都一针见血。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031130a09">
「由见到它的人来决定就好。
　如此一来，世间万物皆无意义，又
都有意义……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031140a00">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031150a02">
「…………」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031160a09">
「看看吧。这就是<RUBY text="····">普陀乐城</RUBY>。
　给你吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　未转身看我们，公方将小茶勺扔出。
　准确地落在一条手上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031170a02">
「诶？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031180a00">
「……什么？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031190a09">
「拿去吧，就当是跑路费。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031200a00">
「可、可是……这是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　不是所谓的，一件<RUBY text="····">无价之宝</RUBY>吗。
　竟然把这个——难以置信。

　一条握着那个旧竹子做的小勺，思考着这是怎么
一回事。
　即便没有感激之意，也势必会觉困惑吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031210a09">
「怎么了？
　不喜欢吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031220a00">
「绝无此事。
　但小人实在是觉得与自己的身份不相符。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031230a09">
「不必如此谦逊。
　不过是个挖耳勺罢了。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031240a00">
「……什么？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031250a02">
「挖……耳勺？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031260a09">
「没错。
　因为我的头比较大。挖耳勺没有这么大根本
不够用。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031270a09">
「这是我刚才自己试着做的挖耳勺。
　世间绝无仅有的珍品哟。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031280a00">
「……」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031290a09">
「哈哈哈哈哈哈哈!!」


{//◆べきっ。
	CreateSE("SE01","se人体_動作_木の棒折る");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031300a00">
「…………啊。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031310a02">
「……这个臭和尚……！」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031320a09">
「玩笑是不是开得太过分了。
　罪过罪过。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031330a09">
「改，报告书放在那儿吧。
　在尊夫人扑上来抽我的秃头之前，
带着她退下吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031340a00">
「是……
　遵命。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031350a09">
「辛苦了。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031360a00">
「是。
　告退。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　古河公方最终也没看我们一眼。

　我使了个眼色，催促一条退下。
　虽然毫不掩饰对于被耍之事的不悦。但少女并未
违拗，怒气冲冲地默默站起身来。

　我跟在她后面。
　回身离开前，看了一眼落在草席上的那个东西。

　断得不成形的竹制小茶勺。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031370a00">
「…………」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031380a09">
「<RUBY text="········">脏脏的一小段竹子</RUBY>。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031390a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031400a09">
「对吧？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031410a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆転換
	ClearWaitAll(2000, 1000);


}

..//ジャンプ指定
//次ファイル　"mb02_004.nss"