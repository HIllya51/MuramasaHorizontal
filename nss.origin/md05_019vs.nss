//<continuation number="1420">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_019vs.nss_MAIN
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
	#ev247_向き合う村正と銀星号=true;
	#ev248_汚染嵐を生成する銀星号=true;
	#ev002_銀星号事件イメージ２=true;
	#ev008_赤子を抱える女=true;
	#bg051_皆斗家居間_03a=true;
	#ev131_景明が湊斗家に来た日=true;
	#ev132_笑う統=true;
	#ev005_斬り割られた兜=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_020vs.nss";

}

scene md05_019vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_018.nss"

//◆新生銀星号·昇臨
	PrintBG("上背景", 30000);

		SoundPlay("@mbgm01", 0, 1000, true);
		CreateTextureSP("背景１", 100, 0, 0, "cg/ev/ev247_向き合う村正と銀星号.jpg");
		CreateSE("サウンド２","se背景_ガヤ_燃える町並み_L");
		CreateSE("サウンド１","se特殊_その他_辰気収斂_L");
		SoundPlay("サウンド２",3000,1000,true);
		SoundPlay("サウンド１",3000,500,true);

	FadeDelete("上背景", 3000, true);

//◆溶岩の海の上、対峙する村正と銀星号
//◆人を小さく、地獄風景を大きく取る構図か。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　不由怀疑此处是世界终焉。
　看到这幅光景的，某个人。

　丧失美丽外表的富士山，正喷发着污血般的熔岩。
　禁止生命存在，禁止传承，禁止创造，这是除却
破灭，禁止一切的虚界。

　谁活在这里。
　谁活在这里？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		SetVolume("サウンド１", 3000, 250, NULL);
		SetVolume("サウンド２", 3000, 500, NULL);

	Wait(2000);

	SetFwC("cg/fw/fw光_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0010a14">
「唯有胜者。」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0020a14">
「只有唯一的胜者，伫立于天涯。」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0030a14">
「此人才会被称为神。
　亲自允许不被人类原谅的事情，
超群的权能者——」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0040a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　早有觉悟的邂逅。

　期待着相遇，也决定了必须完成之事。

　光。
　我的妹妹。
　
　——耽溺于自我梦境中的，凑斗光。

　早已决定，相遇便杀掉她。

　……因为早已决定。
　现在，立刻。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0050a00">
「光。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0060a14">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　即使是嘟囔也未忽略，光给予回答。
　点头。面含笑容。

　燃烧的大地上刮来热风，在那之中，她却是一
副安稳姿态。
　
　但是，我，我理应做的是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0070a00">
「是你……吗？」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0080a14">
「怎么，这莫名的问题。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　她噗嗤笑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0090a14">
「不，并非不解。不知为何被吹飞
又被埋到地下，在那里偶遇奇事，百般遭遇。
　让你担心了……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0100a00">
「……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0110a14">
「无需思索。
　虽然最终，我的事也仍是一头雾水，
  但光就是光。并非其他任何人。」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0120a14">
「如你所见，依旧存活！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0130a00">
「……是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　——不对。
　并不需要这般对话。

　我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0140a00">
「你提到了神呢……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0150a14">
「嗯。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0160a00">
「你，想成为这个世界的神吗？」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0170a14">
「<RUBY text="·····">想成为神吗</RUBY>？
　……唔，从未考虑过。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0180a14">
「但是，我知道<RUBY text="····">必须如此</RUBY>。
　否则，无法实现光的愿望。」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0190a14">
「此为你和<RUBY text="村正">二世</RUBY>教导我的道路。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0200a00">
「…………
　但是你，已经和神一样了吧。」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0210a14">
「……嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　——不对。
　不该像寻找避难所一般，玩弄言辞。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0220a00">
「一看就能明白……
　那个“神”虽已被破坏，
但是<RUBY text="力量">神威</RUBY>并没有消失。」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0230a00">
「就在你的身体里。」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0240a14">
「……？」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/019vs0250a15">
《主君，是指<RUBY text="··">此物</RUBY>吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆うぉーん。神力オーラとかそんな感じで演出

	OnSE("se特殊_その他_神のオーラ",1000);

	CreateColorEXadd("色１", 19999, "#FFFFFF");
	Fade("色１", 1000, 500, null, true);
	Fade("色１", 1000, 0, null, false);

	SetFwC("cg/fw/fw光_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0260a14">
「啊啊……这个吗！」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/019vs0270a15">
《是极为了不起的东西。》

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0280a14">
「感觉增加了十个左右的肝脏呢。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0290a00">
「……那已经足够了吧。
　你拥有仅被称作神才有的力量。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0300a00">
「在此之上，还奢望什么。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0310a14">
「呵呵。
　硬要问已了然于心的事……这是你不可思议
之处呢。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0320a00">
「……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0330a14">
「不——本来，光还未达到神的地位。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0340a14">
「察觉之后才发现，入手的谜之力。
　确实极为強大……」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0350a14">
「但，仅凭拥有力量便是神了吗？
　那么恐龙是神否。海啸是神否。八〇厘米
重列车炮是神否——」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0360a14">
「不能认同吧？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0370a00">
「……」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0380a14">
「力量，不过是力量罢了。
　是因，非果。」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0390a14">
「过去，诸多霸王自诩为神。
　是因为他们拥有力量吗。否。正因他们拥有
力量，致使诸国臣服其下，故王相信他们身怀
神性。臣民亦是如此。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0400a00">
「……那么，你。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　无论如何。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0410a14">
「敬于历史，及其未来所示之道路，光对其臣服。
　无论拥有多大武力，不待成果展露世人前，
绝不擅自称王！」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0420a14">
「且绝不重蹈覆辙！」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0430a14">
「昔日霸王，都于中途堕落。
　在完全征服世界前便满足，沉溺于力量，
成为不完全之神。」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0440a14">
「故被打倒……」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0450a14">
「我，不会如此。
　我会踏破霸王之路的终点。」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0460a14">
「凑斗光会击败三十亿人类并使其屈服，
借此事实，走上神座！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0470a00">
「你，无论如何，
　都无法舍弃这妄想吗?!」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0480a14">
「绝不舍弃！
　即便是妄想，即便是痴念，
然而这份志诚便是光的命脉！」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0490a14">
「首先整顿舞台吧。
　如今，宿于光之愚力……
分给天下万民都已足够！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0500a00">
「————做什么?!」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0510a14">
「光一己之愿即是全人类战死。
　故诸位必须持有反抗光的能力——
若非如此，便<RUBY text="···">不公平</RUBY>！」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0520a14">
「故传授于你们！
　武之一法！　杀伐争夺的力量与心智！」

{	SetVolume("@mbgm*", 500, 0, null);
	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0530a14">
「天下布武!!
　此时此刻，凑斗光发令!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm37",0,1000,true);

//◆稲妻逆天
	OnSE("se自然_雷_稲光02",1000);

	Fade("色１", 0, 1000, null, true);

		CreateColorEX("色２", 19999, "#000000");
		CreateTextureSP("背景３", 2000, 0, 0, "cg/bg/bg001_空a_02.jpg");
		CreateTextureSPadd("エフェクト１", 2000, 100, -200, "cg/ef/ef038_汎用射撃.jpg");
		Rotate("エフェクト１", 0, @0, @0, -70, null, true);
		Zoom("エフェクト１", 0, 3000, 3000, Dxl2, true);
	
		CreateTextureSP("背景４", 1000, 0, 0, "cg/bg/bg002_空b_03.jpg");
		CreateTextureSPsub("エフェクト２", 1000, -505, -281, "cg/ef/ef045_スパーク.jpg");
		Zoom("エフェクト２", 0, 2000, 2000, Dxl2, true);

	Fade("色１", 500, 0, null, false);
	Move("エフェクト１", 1000, @50, @400, Dxl1, false);
	Wait(500);
	Fade("色２", 500, 1000, null, true);

	Fade("色１", 0, 0, null, false);
	Fade("背景３", 0, 0, null, false);
	Fade("エフェクト１", 0, 0, null, true);
	Fade("色２", 1000, 0, null, false);

	SetVolume("サウンド*", 2000, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　银之右手指向苍天，击出闪光。
　宛如逆天而上的闪电。

　昏暗的空中，被洞穿了一个如同枪伤的孔。
　
　——在那周围，大气翻滚。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：神力台風
	CreateSE("サウンド３","se戦闘_銀星号_精神汚染波_L");
	SoundPlay("サウンド３",1000,1000,true);

	CreatePlainSP("絵板写", 18010);
	SetVertex("絵板写", 0, 0);
	SetBlur("絵板写", true, 3, 500, 200, false);

		Delete("エフェクト*");
		Delete("背景*");
		CreateTextureEX("背景１", 100, 0, 0, "cg/ev/ev248_汚染嵐を生成する銀星号.jpg");
		SetVertex("背景１", 512, 50);
		Zoom("背景１", 0, 4000, 4000, Dxl2, true);
		SetBlur("背景１", true, 2, 500, 100, false);

	Zoom("絵板写", 2000, 4000, 4000, Axl2, false);
	Fade("絵板写", 2000, 0, null, false);
	Wait(2000);



	Fade("背景１", 2000, 1000, null, false);
	Zoom("背景１", 2000, 1000, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　漩涡卷动。

　云层撕裂。
　犹如平静海面的天空变得波涛汹涌。

　以中央的<RUBY text="·">孔</RUBY>为轴，狂风卷席……
　就像是台风——但是。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0540a00">
「村正，那是——」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0550a01">
《……是污染波的堆集！
　真是好猛的浓度……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0560a01">
《受到那种浓度的袭击，装甲也防不了！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　——连武者也不逃过的精神污染！
　
　是那暴风雨召来的……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0570a01">
《何况……不止、如此……？》

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0580a14">
「诚然，蜘蛛。
　此为<RUBY text="····">武之风暴</RUBY>。」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0590a14">
「白银的风雨不断注入大地……
　赐予人们武之力量与灵魂，
成为和光同等的武者。」

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0600a00">
「——什……?!」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0610a14">
「如此便将人类的身心悉数武装!!
　这其中的佼佼者，才配得上称为神之武者!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　那是，
　难道，
　即是——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆汚染光景
	CreateTextureEX("背景２", 100, 0, 0, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	SetTone("背景２", Monochrome);

	Fade("背景２", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　引发比那次更可怕的惨剧?!

　强迫人们进行无谓的杀戮与斗争——
　在给予<RUBY text="········">和银星号同等之力</RUBY>之后。

　是这样吗？
　那将会——造成多大的破坏与毁灭?!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("背景２", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　光站立的姿态中毫无玩笑和迷惘。
　声称要消灭全人类，在那之前要使全人类如自己一般
强大，接着转为实际行动。

　对自身行为毫无怀疑。
　
　——制造风暴。

　不止一个。
　两个，三个，不断生成。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0620a14">
「俄罗斯帝国！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆台風発進。適当に演出。
	CreatePlainSP("絵板写１", 18090);
	SetVertex("絵板写１", 1024, 50);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);

	Zoom("絵板写１", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写１", 500, true);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0630a14">
「大汉！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆台風発進。
	CreatePlainSP("絵板写２", 18080);
	SetVertex("絵板写２", 50, 50);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);

	Zoom("絵板写２", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写２", 500, true);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0640a14">
「欧洲！
　中东！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆台風発進
	CreatePlainSP("絵板写３", 18070);
	SetVertex("絵板写３", 900, 50);
	CreatePlainSP("絵板写４", 18060);
	SetVertex("絵板写４", 700, 50);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);
	Zoom("絵板写３", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写３", 500, 500);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);
	Zoom("絵板写４", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写４", 500, true);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0650a14">
「新大陆！
　暗黑大陆！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆台風発進
	CreatePlainSP("絵板写５", 18050);
	SetVertex("絵板写５", 200, 50);
	CreatePlainSP("絵板写６", 18040);
	SetVertex("絵板写６", 100, 50);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);
	Zoom("絵板写５", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写５", 500, 500);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);
	Zoom("絵板写６", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写６", 500, true);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0660a14">
「大和！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆台風発進。
	CreatePlainSP("絵板写７", 18080);
	SetVertex("絵板写７", 512, 50);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);

	Zoom("絵板写７", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写７", 500, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　……银星号一声令下。
　风暴们犹如忠诚的部下般，朝着指示的方向前进。

　一举驱散黑暗与狂风。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド３", 1000, 0, NULL);

	CreateTextureEX("背景２", 100, 0, 0, "cg/bg/bg002_空b_03.jpg");
	Fade("背景２", 1000, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0670a00">
「……村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0680a01">
《……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0690a00">
「那些风暴污染全世界需要多长时间，
你知道吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0700a01">
《可能……一小时。》

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0710a14">
「约四十五分吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("背景１", 100, 0, 0, "cg/ev/ev247_向き合う村正と銀星号.jpg");
	Fade("背景１", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　实行者作出了亲切的说明。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0720a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0730a00">
「阻止的方法呢？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0740a01">
《切断根源。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0750a01">
《那些风暴并非独立。
　而是与发生源紧密相连——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　将根源，
　银星号毁灭的话，污染风暴也会消散。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0760a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　不得不杀掉她。
　
　——早已明显的事，化为更紧迫的现实，置于我的面前。

  必须要杀掉，光。
　立刻。立刻。

　在迷茫之间亦是。
　在犹豫之间亦是。
　拔出太刀，现在立刻。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0770a00">
「————」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0780a00">
「你在追求什么……光！」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0790a00">
「做到这地步，到底想得到什么!!」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0800a14">
「好。不管几次都回答你。
　既然你数次发问，那光也喊出永久不变
的决意吧。」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0810a14">
「父亲!!」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0820a00">
「……啧……」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0830a14">
「我的愿望仅此而已！
　<RUBY text="·······">将父亲归还于我</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　呼喊凑斗光内心的存在，呼喊凑斗光的<RUBY text="梦">悲愿</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0840a14">
「我想感受将我生于此世的根源——
　父亲的爱！」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0850a14">
「为此，我消灭母亲，毁灭世界。
将夺走我父亲的束缚悉数毁灭。
　为此，我会成为神。依靠神权，
夺回人伦所不允许存在的父亲。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　那就像是——
　就如同，面对难题——寻找掉落大海的一颗珍珠，
去用业火蒸发海水作为解答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_瞋恚.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0860a14">
「要问，为何？
　为何，这般苦苦追求。」

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0870a14">
「是因为<RUBY text="····">被夺走了</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·光出生時
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 500, 1000, null, true);
	CreateTextureSP("絵ＥＶ", 1000, Center, Middle, "cg/ev/ev008_赤子を抱える女.jpg");
	SetTone("絵ＥＶ", Sepia);
	Fade("色１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　
　　　　　　“这孩子没有父亲。”


　　　　　“这孩子不是你的女儿。”


　　　　“这孩子……<k>你不可以爱。”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("色１", 500, 1000, null, true);
	Delete("絵ＥＶ");
	Fade("色１", 500, 0, null, true);

	SetFwC("cg/fw/fw光_瞋恚.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0880a14">
「我记得。
　记得母亲对父亲如此强行宣告，记得那个瞬间，
都深深印刻于灵魂。」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0890a14">
「所以必须夺回!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　那不是大脑的想法。是生命的渴望。

　有人曾说，被偷走心脏的人，
可能不去夺回自己的心脏吗。

　一定是有无法抑制的冲动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0900a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0910a00">
「……父亲……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0920a00">
「你的，父亲。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·皆斗本家
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 500, 1000, null, true);
	CreateTextureSP("絵ＥＶ", 1000, Center, Middle, "cg/bg/bg051_皆斗家居間_03a.jpg");
	StL(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	SetTone("絵ＥＶ", Sepia);
	SetTone("@StL*", Sepia);
	FadeStL(0,true);
	Fade("色１", 500, 0, null, true);


	SetFwC("cg/fw/fw本家_通常.png","Sepia");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【本家】
<voice name="本家" class="本家" src="voice/md05/019vs0930b52">
『景明！　来这边！』

//【本家】
<voice name="本家" class="本家" src="voice/md05/019vs0940b52">
『我对你并无任何怨恨。如此命令你，
我也于心不安。
　但事到如今，
唯有感叹这被笨蛋选中的命运了。』

//【本家】
<voice name="本家" class="本家" src="voice/md05/019vs0950b52">
『你来做个了断吧。』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆明堯
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 500, 1000, null, true);
	DeleteStA(0,true);
	CreateTextureSP("絵ＥＶ", 100, Center, Middle, "cg/ev/ev131_景明が湊斗家に来た日.jpg");
	SetTone("絵ＥＶ", Sepia);
	Fade("色１", 500, 0, null, true);

//◆統
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 500, 1000, null, true);
	CreateTextureSP("絵ＥＶ", 100, Center, Middle, "cg/ev/ev132_笑う統.jpg");
	SetTone("絵ＥＶ", Sepia);
	Fade("色１", 500, 0, null, true);

//◆兜割り
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 500, 1000, null, true);
	CreateTextureSP("絵ＥＶ", 100, Center, Middle, "cg/ev/ev005_斬り割られた兜.jpg");
	SetTone("絵ＥＶ", Sepia);
	Fade("色１", 500, 0, null, true);

//◆戻り
	Fade("色１", 500, 1000, null, true);
	Delete("絵ＥＶ");
	Fade("色１", 2000, 0, null, true);

	Wait(2000);

	SetFwC("cg/fw/fw景明_悲しみ.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0960a00">
「……不在了。
　不在这世上的，任何地方。」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0970a00">
「你的父亲，舍弃了身为父亲应做之事。
　听从了……要舍弃的命令。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0980a14">
「…………」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0990a00">
「你知道的吧。」

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1000a14">
「知道。」

//【光】
<voice name="光" class="光" src="voice/md05/019vs1010a14">
「所以，我放弃了……
只是<RUBY text="···">表面的</RUBY>凑斗光放弃了。」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1020a00">
「……」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1030a14">
「但暗地里，我却培育出了这样的自己。
　即便如此，也渴求被父亲所爱……」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1040a14">
「这样的我的，一个梦想。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　并非悲痛。
　而像是夸耀。
　
　诉说着自己的虚构。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1050a00">
「……你……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1060a14">
「被隐藏于人世的父亲……
　只要将这世界天翻地覆一番，
或许便会现身吧？」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1070a14">
「呵呵……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1080a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　光饶有兴味地笑着。
　我却什么也无法回答。

  在她停下笑之前，我只能像石头般保持沉默。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【光】
<voice name="光" class="光" src="voice/md05/019vs1090a14">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1100a00">
「……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1110a14">
「景明……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1120a00">
「光。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　如同小指轻触般的一声称呼，从上而来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1130a00">
「那么，你……
　只要父亲归来，承认你是他女儿，
便满足了？」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1140a00">
「会放弃破坏世界吗？」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1150a14">
「……这问题，以前也曾回答过。」

//【光】
<voice name="光" class="光" src="voice/md05/019vs1160a14">
「光所求之物并非作为祭品的行尸走肉。
　而是真实的心。」

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1170a14">
「父亲以社会和秩序为重，
所以不承认光是他的女儿。
　正因如此，
也许会为守护世界而答应光的心愿。」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1180a14">
「但是，这是不行的！
　没有真实。不过是只有表象的赝品。
我并不想要这种东西！」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1190a14">
「为了得到真实……
　唯有将父亲尊崇之物。将母亲统，
将人类社会，将一切破坏殆尽才行。」

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1200a14">
「<RUBY text="····">即便如此</RUBY>还会爱光吗！
　九成是憎恨也无妨。九成九是憎恨也无妨。
只要剩余一分，仅仅些微……哪怕一个碎片，
能给予亲情之爱的话。」

//◆囁くように
{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1210a14">
「这样便好。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1220a00">
「…………」

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1230a14">
「这样我便满足。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　是在脑中描绘着那光景吗。
　呼——

　光，露出做梦般的表情，长叹一口气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1240a00">
（————）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　想起了线的存在。

　互相纠缠的一捆线。
　由于太过复杂，最初到底为何会变成那样，
已经无从知晓。

　若要解开，花时间慢慢处理才是正确的方法。
　
　但是，如果没有时间——

　只有一个手段。
　只能用剪刀剪开。

　只有将打结之处剪断，解开线。
　
　要解开这个结，只有这方法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1250a00">
「这样啊。」

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1260a14">
「……景明？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1270a00">
「那么，光。」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1280a00">
「不会将父亲给你。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1290a00">
「在这里……死去吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	SetVolume("@mbgm*", 3000, 0, NULL);
	Wait(5000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　热浪的漩涡被冷气逼退。
　那不是由冬天的气象生成的。

　竟是源于一个人情绪的爆发。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【光】
<voice name="光" class="光" src="voice/md05/019vs1300a14">
「这就是答复吗，景明。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1310a00">
「……」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1320a14">
「明白了。
　没错，你终究是母亲大人的伙伴……
而不是我的。」

//【光】
<voice name="光" class="光" src="voice/md05/019vs1330a14">
「母亲才是我的敌人。」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1340a14">
「若是遵从母亲遗志，
　义兄景明，你也是光的敌人！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1350a00">
「……正是如此。」

{	SoundPlay("@mbgm11",0,1000,true);
	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1360a14">
「杀。」

//【光】
<voice name="光" class="光" src="voice/md05/019vs1370a14">
「我要夺尽这个听从母亲的生命魂魄。」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1380a14">
「光要夺走母亲的一切！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1390a00">
「…………」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1400a14">
「然后打倒世界。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1410a14">
「待一切终结……
　用宿于此身的力量，仅将父亲一人复生。」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1420a14">
「能阻挡我的话就试试吧!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　银星号——凑斗光的杀意。
　终于，向我而来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md05_020vs.nss"