//<continuation number="1080">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_043.nss_MAIN
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
	#ev128_病床の光_g01=true;
	#ev128_病床の光_g02=true;
	#bg053_堀越御所の庭_01=true;
	#ev901_銀星号天座失墜小彗星_c=true;
	#bg097_堀越御所内景明の部屋_01=true;
	#bg097_堀越御所内光の部屋_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md02_043.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_042.nss"


//◆ＣＧ：病床の光（現在バージョン）
//◆構図は過去バージョンと同じ。

//■全体的に立ち絵を表示すると微妙になってしまうシーンだと思うので立ち絵意図的に未使用 inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSPadd("ホワイトイン", 5000, "WHITE");
	Delete("上背景");

	CreateTextureSP("病床", 1000, @0, @0, "cg/ev/ev128_病床の光_g02.jpg");

//おがみ：EV完成後調整＞アップスクロール演出

	CreateTextureSP("病床アップ", 1000, -380, -460, "cg/ev/resize/ev128_病床の光_g02lex.jpg");

	Move("病床アップ", 6000, -510, -180, null, false);
	FadeDelete("ホワイトイン", 3000, true);

	Wait(2800);

	FadeDelete("病床アップ", 1000, true);

	SoundPlay("@mbgm37", 0, 1000, true);


	Wait(1500);

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430010a00">
「——————————————————」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　这我知道。
　怎么会不知道。

　曾经，每天每天不断注视的光景。

　幻想着能康复，祈求明天能结束这般光景。
　恐惧着悲惨结局，祈求明天还能维持这般现状。

　二律反背的情景。
　一年间，持续见证着。

　这副身躯。

　<RUBY text="·····">感染矿毒病</RUBY>、<RUBY text="············">身体和精神都染上疾病的光</RUBY>！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430020a01">
「这……这是。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430030a01">
「这是。」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430040a07">
「你不知道？
　凑斗光的病。」

{	FwL("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430050a01">
「知是知道……在青江之术中见过……
　虽然知道，但！」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430060a01">
「这算什么!?
　这是凑斗光的话，那是谁
装甲<RUBY text="母亲大人">二世</RUBY>成为银星号的!?」

{	FwL("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430070a07">
「是谁呢？」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430080a01">
「不要岔开话题！」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430090a07">
「我可没岔开话题。只是捉弄下你。
　但，你也不要明知故问行不？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430100a07">
「凑斗光在的话，当然是这里的凑斗光装甲后
成为银星号的。」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430110a01">
「这怎么行！
　根本做不到吧!?」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430120a01">
「这植物状态的重病病人……
怎么可能装甲战斗！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　没错。
　怎么可能。

　这不是真的。
　明显很奇怪。哪里错了。

　所以是骗人的。
　这些事全都是骗人的。

　——从哪里开始？

　从哪里到哪里是假的？

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430130a07">
「怎么听都觉得是荒唐的话。
　但是，这可不是假话。」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430140a07">
「事实上，这个凑斗光就是银星号。」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430150a01">
「所以说……到底怎样能做到！
　那种事怎么可能！」

{	FwL("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430160a07">
「沉睡。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　预言者一言道尽真理。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430170a01">
「……什么沉睡。」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430180a07">
「凑斗光一睡着，“银星号”就会出现。」

{	FwL("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430190a01">
「这是……什么。」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430200a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0430210a00">
「双重人格……？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一个肉体内寄宿着两个自我。
　虽然有听说过这种精神转换的存在——

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430220a07">
「不、不对。
　银星号并非<RUBY text="··">人格</RUBY>。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430230a07">
「实验调查过。」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430240a00">
「实验？」

{	FwL("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430250a07">
「我最初看到<RUBY text="····">这种状态</RUBY>时，
也只认为公主的睡法很奇怪。
　开始的时候我并不知道，
凑斗光是因感染矿毒病而变成废人的。」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430260a00">
「……」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430270a07">
「但渐渐又开始觉得奇怪。
　就试着探测了一下脑波。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430280a07">
「这种状态，以及起来活动的状态。」

{	FwL("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430290a01">
「脑波……？」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430300a07">
「简单地理解来说，就是脑内的血循环情况。
　虽说是近期的科学，但哥哥你该是知道的。」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430310a07">
「不……你们村正应该比谁都更清楚。
　不可能不清楚。如果不清楚的话，又怎能
改写人的精神？」

{	FwL("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430320a01">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430330a07">
「试着探测了脑波。
　而结果相反。」

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430340a00">
「相反……」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430350a07">
「<RUBY text="············">如此状态的凑斗光是清醒的</RUBY>，
　<RUBY text="···············">活动状态的银星号通常是睡眠状态</RUBY>。」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430360a00">
「————————」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430370a07">
「是梦。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430380a07">
「“银星号”是凑斗光的梦。」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430390a07">
「已被毁坏的人格，
是散乱的意识底部持续的梦。」

{	FwL("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430400a01">
「……梦……？」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430410a07">
「没错。」

{	FwL("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430420a01">
「那么——荒唐的事。」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430430a07">
「没想到什么吗？」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430440a01">
「怎么可能会有……」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430450a07">
「哥哥呢？」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430460a00">
「…………」

{	FwL("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430470a01">
「……主君？」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　那个时候。
　————昨天，挑战光的那个时候。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想

	EfRecoIn1(18000,300);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg053_堀越御所の庭_01.jpg");
	CreateTextureSP("絵回想200", 2100, 300, InBottom, "cg/st/st光_通常_私服.png");

	EfRecoIn2(600);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我确实这么想过。

　<RUBY text="······">存在感太稀薄</RUBY>。
　<RUBY text="········">光她真的在这里吗</RUBY>？之类的。

　足利茶茶丸所言，是对那迷糊直觉的一种合理解析。

　梦。

　是梦的话——便能吻合。
　光<RUBY text="·······">既存在亦不存在</RUBY>。

　那之前所感觉到的缺乏现实性……
　还有出奇的隔绝感，都能说明。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);


	SetFwL("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430480a07">
「有吧？
　你也说了……公主明明就在眼前，却对其
存在感到疑问。」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430490a00">
「……但……
　果然……还是不可能。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想：銀星号の戦闘

	EfRecoIn1(18000,600);

//■仮絵 inc櫻井
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	CreateTextureEX("絵回想200", 2100, @0, @0, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");
	Fade("絵回想200", 0, 500, null, false);

	EfRecoIn2(300);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430500a00">
「说<RUBY text="··">那些</RUBY>全部都是睡梦中的所为！」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430510a07">
「要说的话，就是天然的无念——梦想剑。
　公主的无敌也是合理的。」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430520a07">
「本来，人类中有很大部分都是些没用的人。
　如果银星号说要将那些没用的全部铲除，
只留下对自己必要的东西，便无人能战胜。」

{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430530a00">
「不可能。」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430540a07">
「怎能忍受如此凑巧的<RUBY text="··">奇迹</RUBY>？」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430550a00">
「…………」

{	FwL("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430560a07">
「放心吧。
　这并不是什么绝妙的奇迹。」

{	FwL("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430570a07">
「不过是诅咒。
　是有代价的。」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430580a00">
「……什么意思？」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430590a07">
「哥哥，你看这病况怎样？
　跟两年前比较。」

{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430600a00">
「……………………」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430610a00">
「衰弱了……？」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430620a07">
「嗯。
　虽说被活动中的强势力量所蒙骗，但这样睡着
就一切都清楚了吧？」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430630a07">
「身体里面更糟糕。
　虽然一方面投入了最新最高的医疗技术，
勉勉强强还能保住性命……
但也维持不了太久。」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430640a00">
「这……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　是什么令她如此虚弱？

　两年前，光就在治疗矿毒病。
　虽然为时已晚……但阻止了病情的进一步恶化。

　让其衰弱的理由也没有别的。
　
　——就是说。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);

	Delete("絵回想*");
	Delete("病床");
	OnBG(101, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//嶋：修正（してる）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430650a07">
「正由于那无法抑止的梦之世界，
银星号能发挥出超人的力量……
　而那份负荷的全部却是由
现实中凑斗光的肉体所承受。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430660a07">
「这样的话……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430670a00">
「…………」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430680a07">
「在我看来，还剩两次。
　银星号的活动。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430690a00">
「两次……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430700a07">
「大概吧。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430710a00">
「那之后呢——」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430720a07">
「没有了。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430730a00">
「……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430740a07">
「那就是终结。
　银星号……以及凑斗光。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　终结。

　从这世上消失。
　不存在。

　死亡。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430750a01">
「…………」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430760a07">
「那么。
　哥哥你要怎么办？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430770a00">
「……你问怎么办？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430780a07">
「我遵守约定。
　给了你一个杀公主的机会。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430790a00">
「…………」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430800a07">
「现在这情况，小孩子也能办到。
　用手轻轻捏住颈部就行了。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430810a07">
「那，请吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430820a00">
「……………………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430830a00">
「不可能。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　下不了手。

　<RUBY text="····">这是光啊</RUBY>。
　我的家人——我曾想要守护的，拯救的家人。

　杀掉？
　开玩笑吧。

　反了。一切都反了！
　用尽所有手段，拯救如此衰弱的光是我的责任——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430840a07">
「还有两次。
　但那两次也不知要死多少人啊。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430850a00">
「——————————————————」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430860a07">
「“银星号”是凑斗光深度入睡的状态下
所发生的现象。
　没办法阻止其出现。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430870a07">
「在她出现后，也没有能力制止。
　……只有现在。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430880a07">
「哥哥。
　不想有牺牲者的话，就只能现在杀了她哟。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430890a00">
「…………」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430900a00">
「…………………………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430910a01">
「……主君……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430920a01">
「请稍微……离开一下。
　由我来……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　伸出一只手，打住了下面的话。
　不想听。

　听了的话，脑袋会疼痛欲裂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430930a07">
「给我退开。
　事先说明，没说让你来干。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430940a07">
「这个机会我只给哥哥一个人。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430950a00">
「……村正……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430960a01">
「…………」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430970a07">
「没错。
　一切都是哥哥一个人的决断。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430980a07">
「一定要是哥哥你的意志。
　将凑斗光……杀害……」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430990a00">
「……哧……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431000a07">
「办不到？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0431010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　凑斗光。
　同时也是银星号，引起杀戮的所在。

　凑斗光。
　我曾想要守护的存在。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431020a07">
「哥哥……
　请回忆起我和那和尚说的话。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0431030a00">
「……？」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431040a07">
「无我。
　若凑斗景明不愿凑斗光死的话……
那就舍掉凑斗景明这个身份。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431050a07">
「成为英雄。
　期望<RUBY text="魔王">银星号</RUBY>的死是世界的意愿。」

{	SetVolume("@mbgm*", 5000, 0, null);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0431060a00">
「———————————————————
————————————————————
————————————————————
————————————————————」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431070a07">
「哥哥。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431080a07">
「舍去自我吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　为了消灭向世界散布死亡的银星号。

　我————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆選択：英雄になる／……なれない

}

..//ジャンプ指定
//◆英雄になる　"md02_043a.nss"
//◆……なれない　"md02_043b.nss"



//★選択肢シーン
scene md02_043.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("成为英雄","……成为不了");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆英雄になる　"md02_043a.nss"
				$GameName = "md02_043a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆……なれない　"md02_043b.nss"
				$GameName = "md02_043b.nss";
		}
	}
}