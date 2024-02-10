//<continuation number="860">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_019.nss_MAIN
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
	#bg019_廃校教室_01=true;

	#ev104_鈴川と真改_a=true;
	#ev104_鈴川と真改_b=true;
	#ev104_鈴川と真改_c=true;
	#ev104_鈴川と真改_d=true;
	#ev104_鈴川と真改_e=true;
	#ev105_倒れた小夏_b=true;
	#ev105_倒れた小夏_a=true;
	#ev105_倒れた小夏_c=true;
	#ev105_倒れた小夏_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_真改=true;

	$PreGameName = $GameName;

	$GameName = "ma01_020.nss";

}

scene ma01_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_018.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 15000, "#000000");
	FadeDelete("上背景", 0, true);

	CreateSE("SEL01","se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("SEL01",2000,1000,0,800,null,true);

	SoundPlay("@mbgm28",0,1000,true);

//◆ブラックアウト

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
“心绪乘上凉爽的微风”

“我追逐着清风　向你奔去”

“你嫣然一笑　在喷水池边　张开双臂”

“牵起彼此的手　紧紧相拥　在绿草之上翩翩起舞”

“坚信着　那时那刻　天空下的绝景已是永恒”

“那片天空的绮色　永远难以忘怀　与你共处的时光”

“那缕清风的伶音　永远难以忘记　与你共享的梦境”

“那片天空的绮色　永远难以忘怀　与你共处的时光”

“那缕清风的伶音　永远难以忘记　与你共享的梦境”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureSP("絵背景20", 20, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	FadeDelete("暗転", 2000, true);

	WaitKey(1000);

//◆廃校教室

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　淡漠地。
　毫无韵律地朗读着古老的流行歌词。
　他，来了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 600, 0, null);
	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(600,true);

	WaitKey(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
　铃川。

　铃川老师。
　我们的班主任。

　向抛在地板上的<RUBY text="··">那个</RUBY>，投出仿佛哀悼般的目光。
　他的反应，仅此而已。身处浓烈的腥臭之中，
他甚至连手都不扇一下。

　一副马上就要开始上课的镇静表情。

　这里是教室。
　教师一人。
　学生三人加一个。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_虚無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190010b57">
「或许能够永远存留下来……
　我曾如此梦想。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　看着已经没有生命迹象的学生，
　他开口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_虚無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190020b57">
「使人类得以存活的是血液的流动。
　伴随着血的流动，人们生、老、病、死。
　因此，我笃信着只要将血液<RUBY text="··">凝固</RUBY>，
时间理应也会随之停止。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190030b57">
「只是梦想。只是妄想啊。
　停止了血液流动的人类，只是腐烂了而已。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　他阴郁地低语着，一时闭口不言。

　不久那双手开始战栗。
　明明是绝对抓不住的东西，
他却仿佛依旧想要死死握在手中一般，
撕扯着空无一物的虚空。

　用充血的两眼，凝视着<RUBY text="········">不可能存在的某物</RUBY>。
　铃川第一次显露出感情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190040b57">
「为什么。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190050b57">
「为什么!?　为什么，会失去!?
　为何美丽之物无法永远保持它原本的模样!?」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190060b57">
「为何注定，要从这手中散落!?」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190070b57">
「是诅咒吗！
　这是诅咒吗！
　是人们所背负的宿命的诅咒吗！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190080b57">
「美丽之物不是永恒的话。
　注定要落得丑陋腐朽的下场的话。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190090b57">
「<RUBY text="····">人们不是</RUBY>，<RUBY text="·········">绝对不会获得幸福吗</RUBY>!!
　所谓幸福，若只是不幸的母亲的话!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　饱含着怨怼。
　老师吐出这样的字句。

　装饰以绝望的愤怒。
　混杂了决绝的悔恨。
　倾吐出的，是那样的极端。

　那即是铃川。
　那即是铃川。
　在五脏六腑深处压抑掩藏的真心。

　倾吐在继续。
　猛烈如同洪水，汹涌不绝而出。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190100b57">
「至少如果是再正直一点的世界的话！
　再和善一点的世界的话！
　明明或许就能守护那些美丽之物！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190110b57">
「六波罗！　六波罗！
　为何是如此的时代！
　为何那般凶狠残暴冷酷无情的强盗之流，
却能被容许歌颂春天！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190120b57">
「没有神明！
　没有正义！
　美丽善良的人们无法被许以幸福的约定！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190130b57">
「披着人皮的禽兽将无辜的人们
撕裂吞噬来喂肥他们的肚皮！
　这就是世界！　我们的世界！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190140b57">
「还能做些什么!?
　在这样的世间！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190150b57">
「不是什么都做不到吗！
　都是冥河的堆石！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190160b57">
「我们只是取悦恶鬼的饵食吗！
　应该这么理解吗！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190170b57">
「怎么可能做到！
　我想要守护啊！　美丽的万物！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190180b57">
「如果那无法实现。
　无法实现的话……又该如何是好？」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190190b57">
「不是只能把它破坏吗！
　只能用这双手亲自把它破坏吗！
　在变成野兽的饵食之前！
　至少——在它还美丽的时刻！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　大叫。
　最后是失控的大叫。
　有着诅咒神明与世界的气势。

　睥睨上天，倾注杀意——然后脱力地，垂下了手臂。
　像被榨干了水分的呻吟，从铃川的喉咙挤出。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_虚無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190200b57">
「非破坏……不可。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190210b56">
「……怎么会……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　仿佛在竞逐着细弱感的擦蹭声。
　那是谁的声音呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190220b56">
「这是，老师，干的吗。
　为什么……」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【雄飛】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190230b57">
「我想要啊，新田。
　我怜惜啊，新田。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　铃川不知为何，看着我回答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SoundPlay("@mbgm28",0,1000,true);
	OnBG(10,"bg019_廃校教室_01.jpg");
	FadeBG(0,true);


	SetFwC("cg/fw/fw鈴川_虚無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190240b57">
「美丽之物最终腐烂消失，这种事我无法忍耐。
也不想忍耐。
　我曾眼睁睁看着……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190250b57">
「美丽的妻子因为病痛一天天容颜衰退。
　总是倾诉着温柔言语的口中
渐渐只能听到苦闷的喘息。
　只能眼睁睁看着。无能为力。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190260b57">
「啊啊……那时我就应该有所行动！
　不该畏手畏脚只是看着！」

{	FwC("cg/fw/fw鈴川_怒り.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190270b57">
「在那些孩子们变得丑陋之前，
在他们仍旧美丽的时刻，
就该将一切结束掉！
　就该将他们从苦难中解救出来！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190280b57">
「那时候的我没能做到……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190290b57">
「是希望啊！
　我没能舍弃希望！　以为这世界
还有救世主，还能垂怜赐予慈悲的
希望！」

{	FwC("cg/fw/fw鈴川_虚無.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190300b57">
「……倘若人们身负诅咒，这所谓的希望
不才正是致命的一击吗。
　正是使囚犯无法从刑台逃脱的钢铁枷锁。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190310b57">
「然而我已经不想再悔恨。
　不再会抱有那般希望。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190320b57">
「眼下是动乱的时代。
　美丽之物终将丧失。
　无法守护。
　所以。」

{	FwC("cg/fw/fw鈴川_虚無.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190330b57">
「心爱的美丽的万物啊。
　就用我这双手，亲自破坏。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//◆床が吹き飛ぶ。どーん。
	CreateColorEXadd("フラ", 15000, "#FFFFFF");
	CreateTextureEX("クエ", 30, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	SetBlur("クエ", true, 3, 500, 200, false);
	Fade("クエ", 0, 800, null, true);

	OnSE("se戦闘_破壊_建物01",1000);
	Fade("フラ", 2000, 1000, Dxl1, false);


	Shake("クエ", 2000, 20, 0, 0, 0, 800, null, false);
	Shake("絵*", 2000, 0, 20, 0, 0, 800, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　轰响震动着整个房间。
　粉尘弥漫。

　地板破碎。
　铺着硬木板的地面，被未知的力量撕扯出深长的裂口。

　源头就在铃川身后。

　尘埃散尽。
　<RUBY text="·">它</RUBY>现出自身的异形。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("フラ", null);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);

	DeleteStR(0,true);
	Delete("クエ*");
	Delete("絵*");

	CreateMask("絵Ｍ", 6000, 0, 0, "cg/data/effect_01_00_0.png", false);
	CreateColorSPadd("絵Ｍ/絵ＥＦ煙", 6000, "#BBBBBB");

//◆ＥＶ：鈴川と真改（百足）
	CreateTextureSP("絵ＥＶ5010", 5100, -650, -235, "cg/ev/resize/ev104_鈴川と真改_al.jpg");

	Move("絵ＥＶ5010", 3000, @0, -50, DxlAuto, false);
	FadeDelete("絵Ｍ/絵ＥＦ煙", 4000, false);
	FadeDelete("フラ", 2000, true);

	CreateSE("SE08","se特殊_生物_ムカデ威嚇");
	MusicStart("SE08",0,1000,0,1000,null,false);

	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　蜈蚣。百足。
　身具无数只脚的长虫，在铃川的背后扬起头。

　下顎吱吱鸣响。
　一对触角摇动。

　无法知晓眼睛长在何处。
　钢铁一般的甲壳，在微暗中闪耀着黄铜色。

　不过是极平凡的小虫形态。
　随便在哪里，挖挖土就会爬出来的东西。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵Ｍ");
	CreateTextureSP("絵ＥＶ5000", 5000, Center, Middle, "cg/ev/ev104_鈴川と真改_a.jpg");
	FadeDelete("絵ＥＶ501*", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0174]
　然而那巨大的身躯，究竟是何幽默。

　头部的位置已凌驾于铃川之上。
　身体的一半——或许还不止？——仍埋在地板之下。

　仅是那无数只脚中的其中一只，就足以与人类手臂匹敌。

　这种蜈蚣可能存在么。
　不。
　自然界中不可能存在。

　仔细观察的话。
　钢铁般的甲壳实际上，是由真正的钢铁铸成。

　——剑胄。
　想起了当初历史课上，耳旁风一样听过的内容。

　经过名工巧匠铸造的上等剑胄，
　可以变化为动物的形态，凭一己之力活动。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw鈴川_冷徹.png");

	SetBacklog("　　　　　　　　「真改。」", "voice/ma01/0190340b57", 鈴川);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190340b57">
　
　　　　　　　　「真改。」

</PRE>
	SetTextEXR();
	Request("@text0180", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE08", 1000, 0, null);

//◆バリーン。ムカデが鎧パーツに分解。
	CreateColorEXadd("フラ", 10000, "#FFFFFF");
	CreateSE("SE01","se特殊_鎧_装着03");

	MusicStart("SE01",0,1000,0,700,null,false);
	Fade("フラ", 300, 1000, null, true);

	CreateTextureSP("絵ＥＶ5000", 5000, Center, Middle, "cg/ev/ev104_鈴川と真改_b.jpg");

	FadeDelete("フラ", 2000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　蜈蚣碎裂。
　分裂为数十个，或者说数十的残片，
仿佛包围着铃川散开。

　铁甲的漩涡中。
　手臂缓缓举起。

　——是势。
　
　停止思考的脑海中冒出这个字。

　——装甲之势。
　
　武者的礼法，此为起势。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆顔の両脇に腕を持ち上げる。手術前の外科医っぽい感じ。
	CreateTextureEX("絵ＥＶ5011", 5010, -265, 0, "cg/ev/resize/ev104_鈴川と真改_cl.jpg");

	Move("絵ＥＶ5011", 1300, -500, -100, AxlDxl, false);
	Fade("絵ＥＶ5011", 300, 1000, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190350b57">
「愿得我心若明月。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	WaitAction("絵ＥＶ5011", null);
	Delete("絵ＥＶ5000");

//◆蕾が花開くように、肘を軸に両腕を横へ倒す。
	CreateTextureSP("絵ＥＶ4000", 4000, Center, Middle, "cg/ev/ev104_鈴川と真改_d.jpg");

	CreateMask("絵Ｍ１", 4100, 0, 0, "cg/ev/ev104_鈴川と真改_d.jpg", false);
	CreateColorSP("絵Ｍ１/絵白", 4000, "#FFFFFF");
	SetBlur("絵Ｍ１", true, 3, 500, 100, false);

	Zoom("絵Ｍ１*", 600, 1100, 1100, AxlDxl, false);
	FadeDelete("絵Ｍ１/絵白", 600, false);

	FadeDelete("絵ＥＶ5*", 600, true);
	Delete("絵Ｍ１*");

	Wait(1000);

	SetFwR("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190360b57">
「独映暗夜迷途人。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



//◆ガキーン。
//◆武者·井上和泉守国貞／真改
	#av_真改=true;

	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	Fade("フラ", 300, 1000, null, true);

	WaitKey(1000);

	Delete("絵ＥＶ*");

	CreateTextureEX("絵ＥＶ２", 4130, Center, Middle, "cg/ev/resize/ev104_鈴川と真改_el.jpg");
	CreateTextureSP("絵ＥＶ", 4120, Center, Middle, "cg/ev/ev104_鈴川と真改_e.jpg");
	FadeDelete("フラ", 2000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　如是。
　武者在此现身。

{	Fade("絵ＥＶ２", 1000, 1000, null, false);
	Move("絵ＥＶ２", 3000, @0, 0, DxlAuto, false);}
　<RUBY text="··">武者</RUBY>。
　当今世上最强的力量。
　就在，我的眼前。

　虽然并未采取战斗形态——
　不。
　说什么傻话。

{	FadeDelete("絵ＥＶ２", 1000, false);}
　<RUBY text="····">战斗形态</RUBY>？
　用一根手指就能杀死普通人类的<RUBY text="东西">存在</RUBY>，
为什么还有那么做的需要？

　没有关系。
　无论是备势迎击还是躺着不动。
那是在连瞬息都不用的时间里
就能毁掉一个生命的存在。

　它就在那里。
　<RUBY text="···">宣告着</RUBY>，<RUBY text="······">要将我们毁灭</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg019_廃校教室_01.jpg");
	FadeBG(0,true);
	StC(1000, @0,@0,"cg/st/3d真改_立ち_通常.png");
	FadeStC(0,true);

	FadeDelete("絵ＥＶ", 1000, true);

	SetFwR("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆以下、金打声
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190370b57">
「饰马、新田、稻城、来栖野……
　你们是好伙伴。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190380b57">
「一直互相体谅。
　而且无拘无束地交往。
　美丽的友情。没有比这更好的了……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190390b57">
「不想让它腐朽。
　不想看到不知何时就会到访的悲惨结局。
　所以就让我来结束吧。
　现在，此处。」

{	FwR("cg/fw/fw雄飛_怯えa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190400b56">
「啊哇……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　会被杀死。
　唐突的理解。

　会被就这样杀死。
　不容逃避现实的切实的死亡威胁。

　武者！
　武者！
　武者！

　死！
　死！
　死！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw雄飛_怯えa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190410b56">
「啊咭——咭。咭咭……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　为何？
　为何武者会？

　所谓武者应该是六波罗才对。
　可铃川不是六波罗。

　明明如此，为何。
　为何铃川会变成武者!?

　都是骗人的。
　这种事情，一定都是骗人的！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw雄飛_怯えa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190420b56">
「咭……」

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190430b57">
「不要逃，新田。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　铃川用钝重含糊的声音低语。
　说着不要逃，却连追来的样子都没有。

　<RUBY text="········">因为没有逃的余地</RUBY>。
　因为还在攻击范围之内。

　哪里。
　到哪里。
　到哪里去。
　逃到哪里去才好。

　腿脚无法站立，屁股蹭着地板蠕动，
我究竟要逃到哪里，
　能从骑航瞬息一驱万里的武者刀下逃脱吗!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190440b57">
「害怕的话，就闭上眼。
　像睡着了一样，<RUBY text="······">让我结束一切</RUBY>。」

{	FwR("cg/fw/fw雄飛_怯えa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190450b56">
「咭……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　嗡嗡地摇着头。
　睁大双眼。

　闭上就完了。
　稍一眨眼的刹那，我肯定立刻会被杀掉。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190460b57">
「……哼……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　武者扭过头。
　是在看着小夏和忠保，我以外的另两人么。

　是不是，看到了他们也同我一样。
　铁面的深处，传出叹息的声音。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190470b57">
「你们还是不明白啊。
　这世上所谓的恶意……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190480b57">
「是啊。
　因为你们现在正身处幸福之中。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190490b57">
「唯有无知才能被许以幸福。
　<RUBY text="伊甸园">乐园</RUBY>的传说实在正确。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190500b57">
「一旦知晓，幸福便到头了。
　……然而倘若一无所知，
你们便急于从我手中逃走。
那么死亡就会变得痛苦。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190510b57">
「不……你们的死必须是解脱。是安乐。
　所以……我来教你们。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190520b57">
「作为你们的班主任。
　来上最后一课。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190530b57">
「告诉你们美丽将如何崩溃。
　在安息之前，教给你们生的苦痛。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



//◆ちゃらり。
//◆真改、抜剣

	PrintGO("上背景", 15000);

	OnBG(100,"bg019_廃校教室_01.jpg");
	FadeBG(0,true);


	StL(1000, @0,@0,"cg/st/3d真改_立ち_抜刀.png");
	FadeStL(500,true);

	CreateSE("SE01","se戦闘_攻撃_鉄切断");
	MusicStart("SE01",0,1000,0,1500,null,false);

	FadeDelete("上背景", 300, true);

	WaitPlay("SE01", null);
	CreateSE("SE01a","se戦闘_動作_刀構え01");
	MusicStart("SE01a",0,1000,0,750,null,false);

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　冰凉的金属声鸣响。
　缓缓拔出的白刃。

　纤细之物。
　与其说是实用武器，更像王侯贵族的装饰刀剑。

{	CreateTextureEX("絵太刀", 1100, -5000, @-500, "cg/st/resize/3d真改_立ち_抜刀.png");
	Move("絵太刀", 0, -250, @0, null, true);
	Fade("絵太刀", 1000, 500, null, false);
	Move("絵太刀", 2000, @0, @-200, Dxl1, false);}
　……不对。
　刀很大。那是超过我的手臂，有我身体宽度的大钢刀。

　黄铜色的剑胄重厚之极，使如此巨物看起来都细长……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵太刀", 1000, false);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190540b57">
「从现在开始的……就是最后的梦境。
　并非现实。就这么想吧。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190550b57">
「因为你们——应当保持着美丽，死去。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆軽く床を蹴る音。真改消失
	CreateSE("SE01","se人体_動作_跳躍01");
	DeleteStL(0,true);
	MusicStart("SE01",0,1000,0,1500,null,false);

//◆ＢＧＭ：悪夢？
	SoundPlay("@mbgm29",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　武者消失了——从视线里。
　在我如此认为的刹那。

//{	SoundPlay("@mbgm37",0,1000,true);}
　刀尖<RUBY text="···">从背后</RUBY>敏捷地延伸至我视野中。
　抚碰着颈上的汗毛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190560b57">
「此时此地，我们定一个法则吧。
　牺牲他人便可得救的法则。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　背后的头顶。
　那个声音在让人不寒而栗的近距离里响起。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190570b57">
「是不是觉得这法则真讨厌啊？　
啊……实在讨厌啊。
　可是啊。真正应该讨厌的……是这个法则
<RUBY text="····">并不特殊</RUBY>这一事实。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190580b57">
「夺去他人的食物自己便不再饥饿。
　夺去他人的钱财自己便富有显赫。
　这个世界便是如此构成。作为教师，
我就来好好教给你们这一事实吧。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190590b57">
「来栖野。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　被叫到名字，小夏悚然一惊。
　无法作答。只能用充满恐惧的双眼，
仰望着站立在我背后的武者。

　然而铃川毫不介意。
　继续道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190600b57">
「<RUBY text="·········">请杀掉新田放过我吧</RUBY>，
来说说看。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　————

　什么啊。
　刚刚的，是什么啊。

　听起来，荒谬至极的……令人厌恶的话语，那种感觉。
　是什么，意思，啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190610b57">
「……说出来我就放过你。
　怎么样？　来栖野。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　在背后的人说完口中话语之前。
　没有回答，但却有回应。

　小夏哆嗦着，拼命左右摇头。
　全身因恐惧紧绷，连声音都发不出来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190620b57">
「是这样啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　不以为意地，颔首的感觉从头顶传来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190630b57">
「面对令人厌恶的法则，人类也不是无能为力。
　心底之美——
美的意识，可以成为对抗的力量。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190640b57">
「身为人类，其正确的美的意识，认为
牺牲他人使自身得到救赎并非正道。
　因为会感到丑陋，感到卑鄙。
人心确实有如此功能。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　诉说着美丽。倾注爱意，诉说着人的美丽。
　声音中却不含一丝愉悦。

　为何？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190650b57">
「然而。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　声音无动于衷地继续，
　——那张嘴方才，
　不是还慨叹着美丽的脆弱么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190660b57">
「支撑那美的意识的……
　不过是对现实的想象力缺乏。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆軽く一閃
//◆サク。

	SL_rightdown(@0,@0,1000);
	SL_rightdownfade2(10);
	OnSE("se戦闘_攻撃_刀刺さる03",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　眼前—一道光
　闪过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190670b56">
（…………什么？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　<RUBY text="·····">被做了什么</RUBY>。
　本能地，如此反应。

　可是……是什么？
　银白的刃尖，在视野中斜划而过……

　尖端。
　在那尖端。

　并没有血迹。
　正因，如此吧。
　自我感觉严重滞后。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190680b56">
（……咦？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　被刺了。
　太刀朝我的<RUBY text="······">脚背狠狠刺下</RUBY>。

　可是，却连一滴血都没有渗出。
　无法激发实感的场面。

　连痛苦也——
　没有。

　然而此时，本能却迅速察觉。
　现在只是……头脑没有及时追上现实。

　——将现实，捕捉。

　<RUBY text="····">刀尖回转</RUBY>。
　<RUBY text="··········">保持着刺进脚背的状态</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ズブッ。レッドフラッシュ
//あきゅん「SE：振る音が無いver要望」
	OnSE("se戦闘_攻撃_刀刺さる03",1000);
	CreateColorSP("絵血フラ", 10000, "#CC0000");
	FadeDelete("絵血フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　灼热。
　爆发。
　喷流。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190690b56">
「唔——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　疾驰游走全身的高压电流。
　类似的什么感觉。

　痛苦。
　那是巨大的，痛苦。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_怯えa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190700b56">
「唔啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　侵占整个神经系统的痛苦总集。
　然而还不够。神经还不够。过剩的痛苦从口中溢出。

　我嘶吼着。
　那是野兽的咆哮。

　跌落在脏污的地板上，痛苦地翻滚，
仿佛掉入陷阱的怪物一般狂暴吼叫。
　在碎尘般粉碎飞散的意识中，我依稀感到了
小夏和忠保投来的，绝望视线。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190710b57">
「接下来。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　声音很遥远。
　这个世界的支配者的声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190720b57">
「看来问新田已经没用了啊。那么，来栖野。
再问你一次吧。
　就这样<RUBY text="···">代替你</RUBY>折磨新田也没关系吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　又是这令人厌恶的字句。
　沉默的持续，比之前还要长。

　我已经没有余地去听什么看什么。
　然而铃川，似乎已经得到了回答。

　……同样的回答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190730b57">
「是吗。很好。
　来栖野。看起来
你的正义感能够承受想象的痛苦。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190740b57">
「然而……痛苦，不过是恐怖的一种。
　既不是全部，也不是极致。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆タン。軽い跳躍音
	CreateSE("SE01","se人体_動作_跳躍01");
	DeleteStL(0,true);
	MusicStart("SE01",0,1000,0,1500,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　终于，在暴走的感触稍许平复过来——我明白
那并非是痛苦得到缓解，仅仅是神经彻底烧毁崩
断——之中，我感觉到背后的动作开始转移。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ばふ。
	CreateTextureEX("絵ＥＶ5100", 5100, Center, Middle, "cg/ev/ev105_倒れた小夏_b.jpg");
	OnSE("se人体_衝撃_転倒01",1000);
	Fade("絵ＥＶ5100", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0671]
　随后，吞息咽气声，和仿佛包袱掷向地面的声音。
　仍旧横躺着的我转移过视线，不知道发生了什么，
只看见小夏仰倒在地面上，而黄铜的武者俯视着她。

　两手反持着太刀。
　刃尖，直指小夏的咽喉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190750b57">
「这便是死亡的恐怖。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　怎么可能动得了。小夏用呆滞的双目，
凝视着无限接近自己的钢铁。
　除此之外什么都做不到。

　武者却不同吧。
　理应能做太多的事……包括落下握在手中的，
仅差三公分的太刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190760b57">
「如果我想这么做……
　不。就算不想，只要手头稍微那么一失控
——来栖野，你就死了。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190770b57">
「你正暴露在死亡面前。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　反刍一般，说着这些话的铃川。
　用早已听惯的声音。
　与在教室里上课时，一模一样的声音。

　正因如此才让人汗毛耸立。
　唤起日常记忆的声音，将此时此刻的非日常凸显殆尽。

　疯了。
　这间教室已经疯了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190780b57">
「……怎么办。
　法则学会了吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　倾注而下的声音。
　小夏没有回答。
　什么都无法回答。

　然而，这是授课。
　老师不认同沉默。

{	OnSE("se戦闘_動作_刀構え01",1000);}
　——刃尖，落下<RUBY text="···">两公分</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0190790b33">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　细锐的呼气从小夏的喉中漏出。
　一瞬间，让人怀疑<RUBY text="·····">并非从口腔</RUBY>的穴口
中发出的声音，令人不寒而栗。

　没有刺下。还没有刺下。
　碰到了吗，没碰到吗……或许已经，
剜去了一层纤细皮肤。

　想喘气却喘不出来，小夏的嘴唇颤抖着。

　武者在沉默。
　没有再度发问。然而毋庸置疑，那并不是因为不想，
而是已经没有必要。

　铃川的质问汇集在太刀尖端。
　已经绝对，无法逃脱的距离。

　死的威胁。
　死的压迫。

　而小夏<k>
　……仍然沉默。

　即使已经战栗恐惧到，连指尖都动弹不得的程度，
　铃川要求的话语，依旧没有从口中吐出。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190800b57">
「……唔嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　至此，铃川的声音终于混杂了些意外之色。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190810b57">
「你们之间羁绊的坚固，真是超乎预想。
即使以死威胁，也无法牺牲同伴么。
　……真美啊。很好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　如此低语着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ5090", 5090, Center, Middle, "cg/ev/ev105_倒れた小夏_a.jpg");
	FadeDelete("絵ＥＶ5100", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0791]
　太刀的尖端——
　离开了。

　仿佛从巨石的重压下解放出来，小夏开始大口喘气。
　我也如此。在此刻依旧麻痹全身的痛苦中安下了心。

　总之——这一刻是逃过去了。
　虽然还完全谈不上安全。

　感到血液循环多少恢复了正常。
　思考能力微弱地在恢复。

　冷静。
　冷静地——采取行动。
　为了活下去。

　铃川……虽然很奇怪……但至少，能对话。
　而且，应该，也并非憎恨我们。

　那么……能做到什么。
　我坚信着。

　不要刺激他，谨慎发言……总有办法。
　
　拼尽全力思考。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	FadeStC(0,true);
	FadeDelete("絵ＥＶ*", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0799]
　我抬起视线。
　——铃川也在看着我。

　本来准备说出口的所有话语，消失无踪。
　——钢铁的双眸将我束缚。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190820b57">
「那么——」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　说些什么啊。
　快说啊。
　——有谁这样命令着。

　<RUBY text="····">否则的话</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	StL(1000, @+300, @0,"cg/st/3d真改_立ち_陰義.png");
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",1000,1000,0,1000,null,false);
	DeleteStC(1000,false);
	FadeStL(1000,true);

	SetFwL("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0190830b57">
「——接下来。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆一閃×５
	CreateColorSP("絵剣フラ", 10000, "#FFFFFF");
	DeleteStL(0,true);

	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1100,null,false);

	WaitKey(75);

	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1150,null,false);

	WaitKey(75);

	CreateSE("SE01c","se戦闘_攻撃_刀振る01");
	MusicStart("SE01c",0,1000,0,800,null,false);

	WaitKey(75);

	CreateSE("SE01d","se戦闘_攻撃_刀振る01");
	MusicStart("SE01d",0,1000,0,1200,null,false);

	WaitKey(75);

	CreateSE("SE01e","se戦闘_攻撃_刀振る01");
	MusicStart("SE01e",0,1000,0,1000,null,false);

	FadeDelete("絵剣フラ", 200, true);

/*====================================
//あきゅん「演出：スピード感が無いので保留」
	SL_leftdown(@0,@0,1000);
	SL_leftdownfade2(10);
	OnSE("se戦闘_攻撃_刀振る01",1000);

	SL_rightup(@0,@0,1000);
	SL_rightupfade2(10);
	OnSE("se戦闘_攻撃_刀振る01",1000);


	SL_left(@0,@0,1000);
	SL_leftfade2(10);
	OnSE("se戦闘_攻撃_刀振る01",1000);


	SL_rightdown(@0,@0,1000);
	SL_rightdownfade2(10);
	OnSE("se戦闘_攻撃_刀振る01",1000);


	SL_leftup(@0,@0,1000);
	SL_leftupfade2(10);
	OnSE("se戦闘_攻撃_刀振る01",1000);

*/====================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　剑影疾闪。
　撕裂空气的摩擦音。

　砍到什么的声音——没有响起。
　本该令人安心的事实却更让人不寒而栗。

　条件反射地，我伸手摸向脖颈。
　……被斩断了!?

　没有血的触感。
　但一想到至今没有流血的脚伤，
便觉得那也并不怎么可靠。

　不过，脑袋还好好连在脖子上。
　没有要掉的迹象。

　至少还没死。
　虽然后背感到的冻结般的冷气还未消散，
我至少确认了最低限度的必要事项。

　那么，究竟发生了什么。
　
　……视野中开始发生变化。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0190840b33">
「诶？」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190850b56">
「啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateTextureEX("絵ＥＶ5100", 5100, Center, Middle, "cg/ev/ev105_倒れた小夏_c.jpg");
	Fade("絵ＥＶ5100", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　小夏的衣服散开了。
　本该隐藏在衣服之下的肌肤露了出来。

　通透雪白。
　而且，意外的，极具女性魅力。

　虽然想象过几次，
　但是当然，一次都没亲眼见过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0190860b56">
（真漂亮啊……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870a]
　不合时宜的感慨。
　我一时忘我了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_衝撃_転倒02",1000);

	CreateColorEX("絵暗幕", 10000, "#000000");
	Fade("絵暗幕", 600, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870b]
　小夏张开悲鸣的口型，用双手遮住身体。

　胸部和大腿内侧。
　啊啊，果然要挡的是那里啊。我想着这种事。

　小夏的女性部分被遮掩住——
　然而一瞬之后，我依旧目不转睛地看着那里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 11000);

	CreateTextureSP("絵ＥＶ300", 5100, -40, 30, "cg/ev/ev105_倒れた小夏_d.jpg");
	SetShade("絵ＥＶ300", MEDIUM);
	Zoom("絵ＥＶ300", 0, 3000, 3000, null, true);
	Request("絵ＥＶ300", Smoothing);

	MoveFFP1("@絵ＥＶ300",40000);

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0873]
　高高隆起的胸部。
　那尖端的桃红。
　甚至让人忘记眼前状况地唤起喜悦，实在刺激性十足。

　可是，为何？
　为何我能看见。
　小夏明明遮挡着身体。

　……该不会是透视能力觉醒了吧。
　不，虽然那没什么不好，只是既然超能力要觉醒的话，
真希望来个对现在的状况更有用的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 500, null);

//◆四肢切断小夏
	CreateTextureSP("絵ＥＶ5090", 5090, Center, Middle, "cg/ev/ev105_倒れた小夏_d.jpg");
	FadeDelete("絵ＥＶ300", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
　———————————————————————
————————————————————————
————————————————————————
————————————————————————

　咦？
　什么？

　这是什么。

　……在看什么啊？
　我。

　那个。
　好像。

　好像，<RUBY text="···">没有了</RUBY>。

　……咦？
　为什么？

　没道理啊。

　小夏也是一副受到惊吓的表情。
　也是啊。

　<RUBY text="·····">没有了的话</RUBY>，很困扰吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	SetShade("絵背景100", LIGHT);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Move("絵背景100", 0, 511, -253, null, true);

	Fade("絵背景100", 600, 1000, null, false);
	Move("絵背景100", 600, 511, -283, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　啊……
　有了。

　在稍稍离开一点的地方，好好地在那儿。
　<RUBY text="······">没有了的东西</RUBY>。

　太好了太好了。
　真是的吓我一跳。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Fade("絵背景100", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0891]
　………………………………

　那个，打扰一下好吗。
　你。就是你。我在叫<RUBY text="·">你</RUBY>呢。

　逃避现实对话用假想人格君。
　总觉得久违地，又想跟你说话了。

　回答个问题。
　不是什么大事。很简单的问题。

　没发生什么奇怪的事吧？

　奇怪的事，一件也没有发生吧？

　对吧？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(1000);

//◆ブラックアウト。ダウンワイプ？
	CreateColorSP("絵暗転", 15000, "BLACK");
	DrawTransition("絵暗転", 3000, 0, 1000, 1000, DxlAuto, "cg/data/slide_02_01_0.png", false);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　——疯狂的教室，
　就这样一步一步陷入诡异。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵暗転", null);

	ClearFadeAll(0, true);

}

..//ジャンプ指定
//次ファイル　"ma01_020.nss"
