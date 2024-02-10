//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_012.nss_MAIN
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
	#ev178_雪車町とガッタイダー列車襲撃_a=true;
	#ev178_雪車町とガッタイダー列車襲撃_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_013.nss";

}

scene mc03_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc03_011.nss"

//◆移動

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100, "bg085_汽車客車_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm34", 0, 1000, true);
	CreateSE("がたんごとん", "se乗物_汽車_走行01_L");
	MusicStart("がたんごとん", 1000, 1000, 0, 1000, null,true);
	Delete("上背景");
	DrawDelete("黒幕１", 200, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　列车这种构造，若是用来藏身，横向宽度致
命地不足。
　只要直线前进追赶，应该就能捉住。

　如果我没有看错的话。
　
　如果我看错了——就不会见到任何人。

　不会见到吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆顔グラなし
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120010a12">
「…………诶嘿。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	SetVolume("がたんごとん", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);
	
	SoundPlay("@mbgm35", 0, 1000, true);

//◆雪車町

	StC(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStC(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　有一个男人。
　特别粗鲁，但又奇妙地热情——对，就好像把包含自
己的世间万物都看作无聊的东西，嘲弄并且沉溺其中，
他展现着如此独特的风情。

　男人站在我面前。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120020a00">
「雪车町一藏!!」


{	FwR("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120030a12">
「咯，咯，咯……！
　这真是奇遇啊，凑斗小哥。」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120040a12">
「来会津参加赏雪之旅吗……？
　那真是很可惜啊，会津今年找准了客官，似
乎不打算涂上面霜啊。」


{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120050a12">
「只是涂上了口红，想要展示自己的风流……
　嘿，嘿！　很气人对吧？」


</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　他胡乱说着，动作像猫一样，让人无法怀疑他的进退
自如。
　我本该立刻追上去，但我只能命令双脚暂时停下来。


　距离，大概是<RUBY text="六米">三、四间</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);

	StL(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	StR(1000, @0, @0, "cg/st/st景明_通常_私服.png");
	FadeStA(0, true);

	FadeDelete("絵板写", 200, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120060a00">
「你为什么在这里。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120070a12">
「你以为风流的只有自己吗？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120080a00">
「别装傻。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120090a12">
「嘿，嘿嘿……！
　这种事根本没必要来问吧……」



{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120100a12">
「我是谁，你又是谁……如果你忘了个干净漂
亮，那倒是情有可原……对吧。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120110a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　这个男人……对。是ＧＨＱ雇佣的间谍。
　而我，几次妨碍了ＧＨＱ的计划，而且协助大鸟大尉
想要阻止锻造雷弹的投下，现在对于他们来说明显是敌
对的存在。

　原来如此，不用特意浪费唇舌去问他了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120120a00">
「也就是，猎狗。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120130a12">
「嘿……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120140a00">
「<RUBY text="克莱布·卡农">ＧＨＱ参谋</RUBY>选择了你。是这样吗。
　你作为大和人，只要能成功入侵会津，之后
行动起来都不用特别在意篠川军的存在……」



{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120150a00">
「但是即使如此，现在这种状况下没有身份证
明就想越境应该是不可能的吧。
　六波罗御雇之名有如此程度的信用吗？」



{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120160a12">
「那是不可能的吧……
　那种东西，现在连辟邪护身符的效果都达不
到了。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120170a12">
「嗯，虽然全面封锁说的很夸张，但也并不是
建起了一圈城墙，只不过是士兵拿着枪巡逻而
已……对吧。
　漏洞之类，找一下就能发现……」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120180a12">
「如果真的没有，<RUBY text="····">打开一个</RUBY>就可以了。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120190a00">
「…………
　你的雇主允许这样吗。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120200a00">
「难道没对你说，别加害无关人员？」



{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120210a12">
「说了啊……
　但还有注释说，尽可能地。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120220a12">
「如果不可能，那就没办法了……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120230a00">
「……」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120240a12">
「诶，嘿！
　卡农中佐是知道的哦……如果下这种命令，
就一定会有人死掉。」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120250a12">
「他知道还这样下令……
　所以啊，那个男人在做了之后不会后悔悲叹
啊。」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120260a12">
「<RUBY text="······">和你可不一样</RUBY>。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120270a00">
「……………………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120280a00">
「他如此地……
　想要把我……」

//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120290a00">
「如此想要抹杀我和大鸟大尉吗。
　这真是很深的执念啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　不。
　这不是执念的问题……吗？

　既然是那个人。
　我们，不，大鸟大尉不会因为考虑自身的安全而闭门
不出。他大概是预料到了大鸟大尉这种性格能带来的结
果，在这基础上作出的判断吧。

　香奈枝在会津应该会做出反ＧＨＱ的行动——这确实
存在——他为了阻止这件事。
　才把这个脸色难看的男人送来的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120300a00">
「……目标不是我，而是大鸟大尉吧？
　雪车町一藏。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120310a12">
「看来你脑袋里的供血改善些了啊。
　嘿，嘿……可喜可贺。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120320a00">
「是吗。
　那么，我不会让你过去。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se日常_衣類_衣擦れ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 1000, @60, @0, DxlAuto, false);
	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我没有理会他挑衅的谩骂。我放松膝盖，微微沉下了
腰部。
　我预测着敌人的攻击手段，做好了准备。

　雪车町拿着的是杖——仅仅是一次挥击而已。
　没有剑胄。那么，空手去抵抗他，虽然很困难，但却
并非不可能。

　……最后还可以让村正来帮忙。
　面对这个对手如果还去考虑骑士道，那连自我满足都
算不上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120330a12">
「那么……嘿嘿。
　我也不会说，让你放我过去……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120340a00">
「……？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120350a12">
「说想要先解决那位大小姐的……
　是<RUBY text="那些家伙">进驻军</RUBY>的利益。
　<RUBY text="···">我这边</RUBY>也有我这边的利益啊。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120360a12">
「如果要比谁更重要……对吧？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120370a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆フラッシュバック
//◆第四話のＶＳ雪車町


//仮画像　inc櫻井

	EfRecoIn1(18000,600);
	CreateTextureSP("イベ絵10", 1001, Center, Middle, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");


	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　
　　　　　　　　“半吊子的混蛋……”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120380a00">
「你……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120390a12">
「咯……」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120400a12">
「咯，咯咯，嘿嘿嘿嘿嘿……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラッシュバック
//◆第四話のＶＳ雪車町

	EfRecoIn1(18000,600);
//仮画像　inc櫻井
	CreateTextureSP("イベ絵10", 1001, Center, Middle, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　
　　　　　　　　　　“消失”

　
　　　　　　　　　“给我消失”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り


	EfRecoOut1(300);


	Delete("イベ絵*");

	EfRecoOut2(600,true);

	SoundPlay("@mbgm12", 0, 1000, true);


	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120410a00">
「雪车町!!」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120420a12">
「凑斗!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆剣閃
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1100,null,false);
	CreateTextureEXadd("絵演上", 11100, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureSP("絵演", 11000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	Zoom("絵演上", 0, 10000, 10000, null, false);
	Fade("絵演上", 0, 450, null, true);

	DeleteStA(0,true);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Delete("絵演");

//◆避ける
	CreateSE("SE02","se人体_動作_跳躍01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 9900);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 20, 0, 0, 0, 1000, null, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120430a00">
「……!?」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　我以一寸之差避开了对方急速的一刀。
　然后做好准备迎接他的下一击——

　但我看到对方已经后退了。
　
　……他要逃跑吗？


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120440a12">
「嘻嘻，哈哈!!
　今天就先不和你战。」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120450a12">
「因为有更<RUBY text="·····">合适的对手</RUBY>在等着你啊!!」



{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120460a00">
「……什么!?」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120470a12">
「是最棒的家伙啊!!
　去夺走你那毫无价值的性命，没有比那家伙
更合适的了!!」


{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120480a12">
「你就老实等着吧!!」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120490a00">
「雪车町!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我的喊声没能制止那个干瘦家伙的脚步。
　距离逐渐拉开。那个黑色的身影巧妙地从狭窄的通道
中跑开。

　我追在他身后。
　一种难以说清，但又让我感到不祥的预感蚕食着我的
心脏。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆追う
	OnSE("se人体_動作_跳躍01", 1000);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　雪车町的速度超乎常人。
　从他的脸色来看，他的心肺机能一定是不健全的。到
底为什么他能达到这种速度，我很难理解。

　想要拉近和他的距离，十分困难。
　虽然也并没有被他甩开——但这样下去很不妙。

　恐怕前面有篠川公方府军兵乘坐的车辆。
　进入那里之后，就无法再追赶他了。


　如果真如永仓侍从所说，那都是些士气低下的后方人
员，那么我不认为雪车町的意图是让我和他们冲突。
　但如果发生那种事，一定会很麻烦。


　应该趁现在抓住他——但是……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStC(300, true);

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120500a00">
「……？」


{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120510a12">
「……嘿……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　那张不健康的脸转向了我这边。
　他的脚步也停下了。

　他越过了连接器，走到了前一节车厢中。
　雪车町没有继续逃跑，他看着我。

　胸口中的战栗变得更加严重。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120520a00">
（不行）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　制止。
　要制止。

　——制止什么？
　
　不。那种事无关紧要。

　总之，要制止<RUBY text="··">那个</RUBY>。
　现在立刻！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120530a12">
「咯——」


{	FwR("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120540a12">
「咯，咯——————!!」

{	DeleteStA(300, false);}

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆がっこん。重いレバーを動かした音
	OnSE("se日常_機械_レバー動かす", 1000);

//離れるのに時間がかかるだろうから間を取る。 inc櫻井
	WaitKey(400);

//◆車両が一度揺れる
	CreatePlainEX("絵板写", 101);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120550a00">
「……什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01L","se乗物_汽車_走行01_L");
	MusicStart("SE01L",2000,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　他做了什么。

　雪车町——扳动了扳手一样的东西。
　于是响起了一阵沉重的金属声……

　但是，没有任何变化。<k>
　没有任何……<k>……<k>……!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120560a00">
「雪车町!!」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120570a12">
「嘻哈哈哈————————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 2000, 500, null);

	CreateTextureEX("絵ＥＶ", 5100, InLeft, -470, "cg/ev/resize/ev178_雪車町とガッタイダー列車襲撃_al.jpg");
	Request("絵ＥＶ", Smoothing);
	Move("絵ＥＶ", 8000, -512, -288, null, false);
	Zoom("絵ＥＶ", 16000, 500, 500, DxlAuto, false);
	Fade("絵ＥＶ", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　奇怪的笑声逐渐变远。
　不，不止是声音。

　他的身影也是。
　我没有后退。我在前进。但是雪车町却不断变远。


　列车在远离。
　雪车町所在的车厢，正在远离我所在的车厢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120580a00">
（连接器断开了!?）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵ＥＶ", null);

	PrintGO("上背景", 15000);
	CreateColorSP("黒幕１", 9, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/ev/ev178_雪車町とガッタイダー列車襲撃_b.jpg");
	SetVolume("SE01L*", 4000, 0, null);
	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　我终于理解了现状。
　但我感到了更加强烈的困惑。

　我不知道他这样做的意图。
　我和大鸟主从乘坐的车辆从机车上分离，速度逐渐下
降——但这又如何呢。

　虽然这样对我们不利，但完全无法说是致命的困境。
　为什么……要做这种像是小孩子恶作剧一般的事？


　如果我们正驶在陡峭的坡道上，并且后方有其他机车
向我们驶来，那么这辆列车的滑落会带来凄惨的相撞事
故。但现状并不是那种状况。

　现在列车正行驶在平地上，前面很快将再次驶过一座
桥。雪车町所在的车厢驶在前面。大概是因为甩掉了
我们这边的车厢，前面的列车提高了速度，
已经驶过了半座桥。

　……桥是安全的。
　做出这种状况的那个人，现在正在证明这一点。


　不会是……在自己的列车驶过之后再破坏桥梁吧。
　那应该需要相当大量的炸弹，或者是需要大炮，但我
看不到那种东西的踪影。


　无法理解。
　……虽然我不理解，但我能够听到毁灭的脚步声在悄
悄靠近。

　前面的车辆驶过了桥。
　接着，<RUBY text="这边">后车</RUBY>靠近了桥。

　什么也没有发生。
　雪车町什么也没有做。

　他只是，轻轻地抬起了手。
　向着天空————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆襲来·ガッタイダー
	CreateColorEX("黒幕１", 25000, "BLACK");
	CreateTextureEX("空", 500, @0, @0, "cg/bg/bg001_空b_01.jpg");
	Fade("空", 1000, 1000, null, true);

	OnSE("se戦闘_動作_空突進08", 1000);

	CreateTextureEX("絵演立絵", 1000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Move("絵演立絵", 0, @0, @-160, null, true);
	Zoom("絵演立絵", 0, 50, 50, null, true);

	Move("絵演立絵", 600, @0, @200, Dxl2, false);
	Fade("絵演立絵", 600, 1000, null, false);

	Wait(300);

	Move("絵演立絵", 10000, @0, @120, null, false);

	Wait(1000);

	Move("絵演立絵", 300, @0, @-40, Axl2, false);
	Zoom("絵演立絵", 300, 550, 550, Axl2, false);

	Wait(120);

	Fade("黒幕１", 0, 1000, null, false);
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	WaitKey(400);

	ClearFadeAll(0,true);

}

..//ジャンプ指定
//次ファイル　"mc03_013.nss"