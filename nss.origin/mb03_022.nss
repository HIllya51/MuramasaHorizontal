//<continuation number="660">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_022.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb03_022.nss","FlyMoving",true);
	Conquest("nss/mb03_022.nss","FlyMoving2",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg001_空a_02=true;
	#bg043_江ノ島山林_02=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_001.nss";

}

scene mb03_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_021.nss"


	PrintBG("上背景", 30000);

//おがみ：素材来たら差し替え
	CreateColorSPadd("絵白転", 15000, "#FFFFFF");
	CreateTextureEX("絵立絵", 1000, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	Move("絵立絵", 0, @-586, @120, null, true);
	Zoom("絵立絵", 0, 200, 200, null, true);
	SetBlur("絵立絵", true, 3, 200, 70, false);

	CreateTextureSP("絵立絵２", 1000, Center, Middle, "cg/st/3d銀星号_立ち_通常2.png");
//	Move("絵立絵２", 0, @-586, @120, null, true);
//	Zoom("絵立絵２", 0, 200, 200, null, true);
	SetBlur("絵立絵２", true, 3, 200, 70, false);

$ループムーブナット名 = "@絵立絵";
$ループムーブタイム = 40000;

	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se人体_動作_跳躍03");

	Delete("上背景");

	FadeDelete("絵白転", 600, false);
	SoundPlay("@mbgm10",0,1000,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵立絵", 300, 1000, null, false);
	Move("絵立絵２", 1000, @106, @0, Dxl2, false);
	Move("絵立絵", 1000, @296, @-120, Dxl2, true);


	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１", Start);

	SetFwR("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0220010a02">
「受死吧——银星号!!」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220020a14">
「——」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0220030a02">
「命丧你手的人不计其数。
　就算杀了你一个也还不清这些帐。」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0220040a02">
「制裁你的正义来得太迟了。
　而今，根本无法偿还……」


</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆演出指示
//◆１：上記一条台詞を表示する。ボイス再生途中で
//◆クリックされた場合は即座に２へ。されなかった
//◆場合はボイスが「止めてやる」まで再生された時
//◆点で強制的に２へ。
//◆２：一条台詞を消さず、表示したまま、その上に
//◆次の光台詞を大フォント＋大ボックスで重ねる

	SetFwR("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0220050a02">
「但是，怎么可能继续任你肆意妄为!!
　我和正宗，在这里，阻止你——！」
{


	CreatePlainSP("絵板写", 30000);
	$残時間=RemainTime("@text0019");
	WaitKey($残時間);

	SetVolume("@mbgm*", 500, 0, null);
	SetVolume("@text0019", 500, 0, null);

	CreateColorEX("絵色100", 30200, "BLACK");
	Zoom("絵色100", 0, 500, 1000, null, true);

	Fade("絵色100", 0, 700, null, true);

	CreateVOICE("ぐだぐだ","mb03/0220060a14");
	MusicStart("ぐだぐだ",0,1000,0,1000,null,false);

	LockVideo(true);


	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字１",30411,Center,Middle,auto,auto,"「ぐだぐだやかましいわ");
	Rotate("絵文字１", 0, @0, @0, @90, null,true);
	Request("絵文字１",NoLog);
	Move("絵文字１", 0, @150, @0, null, false);

	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字２",30411,Center,Middle,auto,auto,"この駄犬がああああああ");
	Rotate("絵文字２", 0, @0, @0, @90, null,true);
	Request("絵文字２",NoLog);
	Move("絵文字２", 0, @100, @0, null, false);

	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字３",30411,Center,Middle,auto,auto,"あああああああああああ");
	Rotate("絵文字３", 0, @0, @0, @90, null,true);
	Request("絵文字３",NoLog);
	Move("絵文字３", 0, @50, @0, null, false);

	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字４",30411,Center,Middle,auto,auto,"あああああああああああ");
	Rotate("絵文字４", 0, @0, @0, @90, null,true);
	Request("絵文字４",NoLog);
	Move("絵文字４", 0, @0, @0, null, false);

	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字５",30411,Center,Middle,auto,auto,"あああああああああああ");
	Rotate("絵文字５", 0, @0, @0, @90, null,true);
	Request("絵文字５",NoLog);
	Move("絵文字５", 0, @-50, @0, null, false);

	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字６",30411,Center,Middle,auto,auto,"あああああああああああ");
	Rotate("絵文字６", 0, @0, @0, @90, null,true);
	Request("絵文字６",NoLog);
	Move("絵文字６", 0, @-100, @0, null, false);

	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字７",30411,Center,Middle,auto,auto,"あああああああッッッ!!」");
	Rotate("絵文字７", 0, @0, @0, @90, null,true);
	Request("絵文字７",NoLog);
	Move("絵文字７", 0, @-150, @20, null, false);



	SetBacklog("「罗哩罗嗦的你这杂种啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!!!」", "Voice/mb03/0220060a14", 光);


	LockVideo(false);


	WaitKey(4500);
}
</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

	Delete("絵文字*");
	Delete("絵板写");
	Delete("絵色100");

/*



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/mb03/0220060a14">
「罗哩罗嗦的你这杂种啊
啊啊啊啊啊啊啊啊啊啊啊
啊啊啊啊啊啊啊啊啊啊啊
啊啊啊啊啊啊啊啊啊啊啊
啊啊啊啊啊啊啊啊啊啊啊
啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

*/
//◆大爆発。ノリは乙女座のシャカ開眼。
//◆大破壊。なんか周囲の物体がおおむね崩壊しました。
//◆分子レベルで。
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se戦闘_破壊_大爆発01",1000);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	WaitKey(2000);

	CreateColorEX("絵色黒", 5100, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);
	WaitPlay("SE*", null);

	ClearWaitAll(0, 2000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");
	CreateSE("SEL01","se自然_風_荒野_L");
	FadeBG(0,true);
	Delete("上背景");

	MusicStart("SEL01",0,1000,0,850,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……我好像，失去了知觉。
　恐怕是……数秒之间。

　在这期间，世界变了。

　首先，我全身无力。
　完全使不上劲——跪于地面的膝盖根本无法直立。

　四处不见一条的身影。
　察觉到我的心思，村正启动了探测机能……<k>
{//◆ＳＥ：ピピピ。信号音
	CreateSE("SE01","se特殊_コックピット_探索01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
找到了。东北方向偏东大约四千米的地方。

　<RUBY text="···">四千米</RUBY>。
　也就是说足足被吹弹开这么长的距离。

　……探测机能是这样传达的。
　但有些不可思议。发出信号，与物体相冲突后返回并
接受信号，由此掌握情况的雷达探测，因为地面上障碍
物过多，大致是无法发挥机能的。

　然而这机能却实现了。
　事实上，也没有什么不可思议。即便在地面上，
如果是<RUBY text="····">广阔平原</RUBY>的正中央，信号探测也能
正常发挥机能。仅此而已。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆砂漠状態。bg043を流用？

	CreateMovie("煙動画", 1999, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 4000, null, true);
	Request("煙動画", AddRender);
	Move("煙動画", 0, @0, @-100, null, true);
	Rotate("煙動画", 0, @0, @180, @0, null,true);
	FadeDelete("絵暗転", 2000, true);

	Wait(1000);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220070a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);
	StC(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	Rotate("@StC*", 0, @0, @180, @0, null,true);
	Request("@StC*", Smoothing);
	FadeStC(500,true);

	Wait(500);
	SoundPlay("@mbgm14",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　改头换面的世界中，唯独银星号一如往昔。
　剧变的一瞬间，不管它究竟做了什么，此刻已毫无痕
迹。是拳打还是脚踢，亦或太刀砍过？如果毫无痕迹，
那就无从知晓了。

　或者也许什么都没有做，所以才会毫无变动。不过是
这种理所当然的事而已。
　那也许，只不过是——<k><RUBY text="·····">生气了而已</RUBY>
吧。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220080a00">
「……………………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　然后，在这变动与不动的世界正中。
　银星号此刻，正凝视着我。

　那眼瞳是从未有过的冰冷。
　然而同时也翻滚着从未有过的灼热。

　沸点的愤怒与零度的失望。
　热浪乱舞寒冷冻结的负面情感。
　
　白银的魔神，<RUBY text="····">彻底失望</RUBY>了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/mb03/0220090a14">
「无聊。
　无聊。
　无聊。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220100a14">
「你居然会选择逃避，欺骗自己……事与愿违
也该有个度。
　就算是母亲的教诲——那句戏言，也不至愚
蠢至此！」


//【光】
<voice name="光" class="光" src="voice/mb03/0220110a14">
「其中自有它的道理。但是景明，如今你所走
的路连这一点也欠缺。
　只是一场欺瞒！　浅薄的乐观妄想而已！」


//【光】
<voice name="光" class="光" src="voice/mb03/0220120a14">
「没想到，你居然……居然会
堕落至此!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　充满愤怒的言辞化做刀刃，剜向我的胸膛。刺得很深。
几乎能闻到鲜血的腥味，很深、很痛。
　不知道为什么……为什么得忍耐到这个地步。听到的
不过是杀戮恶魔的大放厥词而已。

　一条与我的合作，可以免去无关者的牺牲——超越欲
求无罪之人性命的村正的诅咒。
　死去的，只会是这位比谁都真挚追求为人正道，比任
何人都严正的少女所认定的“恶”者。

　这有什么错吗。
　有什么道理受人嘲讽辱骂呢？

　……………………但是。
　
　定是因为在脑外的某处早已悟出了其中的<RUBY text="··">道理</RUBY>，
所以我才会这般糟糕地动摇……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【光】
<voice name="光" class="光" src="voice/mb03/0220130a14">
「景明……你究竟搞错了什么。
　难道你认为和那个小姑娘联手就是正义吗？　
凭什么这样断定。因为只需要杀一个人？」


//【光】
<voice name="光" class="光" src="voice/mb03/0220140a14">
「难道说杀一双是罪孽，只杀一人就是正义了
吗？」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220150a00">
「不……不是……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我强行扭动僵硬的下颚，挤出反驳的话语。
　发出宛如细屑的声音。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220160a00">
「和数字无关。
　而是因为可以不杀无罪之人……只要和一条一
起战斗。所以我才这么做。这是理所当然的。」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220170a14">
「哼。
　若是有罪之人，杀掉也无妨——{WaitKey(5000);}不对。
让我重新正确表达一下……」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220180a14">
「若是有罪之人，
　<RUBY text="····">让她杀掉</RUBY>也无妨。你是这个意思吗？」


{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220190a00">
「……」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220200a00">
「有的罪过无法原谅。
　有的罪人确实该死。」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220210a00">
「其中，有些人因为拥有强大的力量，所以
连司法也无法制裁……就像六波罗，银星号，你。
一条把处决这些罪孽滔天之人作为自己的使命。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220220a00">
「我不觉得这样的事……有什么错。」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220230a14">
「原来如此，是这样啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　银星号露骨地显示出耻笑的神色。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/mb03/0220240a14">
「这种做法也许是<RUBY text="··">正确</RUBY>的吧。
　但是即便如此，作出这些行为的人凭什么还
敢自称正义呢？」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220250a00">
「什么……？」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220260a14">
「没有这种道理吧。
　或者说，有什么——」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220270a14">
「<RUBY text="·········">正确的杀人就是无罪</RUBY>，是吗？」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220280a00">
「——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　我无言以对。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/mb03/0220290a14">
「别说蠢话了。
　杀人就是杀人。没有区别。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220300a14">
「都是武的体现，同等同质。
　竞争武力，胜利，杀戮……只是这样的现象
而已，根本不需要其他解释。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220310a14">
「有无罪过？
　这不是我所关心的，如果问责罪过，不管是
正当的杀人还是不当的杀人，都没什么区别。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220320a14">
「就从毁坏生命使其终结这一点而言，两者几
乎都一样啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　面对眼前的口若悬河，简直没有插嘴的余地。
　无从阻挠。这是因为我明白——银星号所言皆为真理。

　但即便如此也不能认同。
　如果承认这一切，就等于……承认至今确信的道理都
是错误的……<k>而这——<k>对于那位少女——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220330a00">
「就算这样……
　就算是这样。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220340a00">
「如果死去的只是该死之人的话……
　但村正会杀掉不该丧命的人。只要能够阻止这
个行为——就有……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　意义。我本想接上这个词。
　然而却没有说出口，这是因为被对方的话所抹杀了吗。
……还是因为，自己并不信任自己的话呢。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【光】
<voice name="光" class="光" src="voice/mb03/0220350a14">
「你在说什么。
　该死的都是弱者。该活的都是强者。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220360a14">
「根本就不存在不该死却死了的人。
　如果屈服于你的刀刃，
那就是败给了武力的竞争。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220370a14">
「管他是善还是恶，死亡就是真理，
没有什么不合情理的。」


{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220380a00">
「不对……！
　该死的只是那些唯有死才可制裁的罪恶。」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220390a00">
「……而如果村正制裁了这些罪恶，就会连同
无罪之人一起诛杀。
　因为善恶相抵的戒律……」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220400a00">
「我，绝不允许……」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220410a14">
「景明。
　景明。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　……白银色的武者失声而笑。
　仿佛想说自己早已无力愤怒。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【光】
<voice name="光" class="光" src="voice/mb03/0220420a14">
「而今的你简直就像个稚童。
　这样——啊啊，是这样啊。你终究还是无法
理解吗。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220430a14">
「<RUBY text="····">善恶相抵</RUBY>。
　对村正所担负的这四个字，
你抱有的全是误解……」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220440a00">
「……误解……？」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0220450a01">
《…………》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　那只是——凶咒而已……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【光】
<voice name="光" class="光" src="voice/mb03/0220460a14">
「那不是诅咒
　善恶相抵，是<RUBY text="·····">单纯的事实</RUBY>。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220470a14">
「是所谓武的，本质……
　村正只是将它公布于青天白日之下。」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220480a00">
「……是什么……意思。」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220490a14">
「而今的你，告诉你也不懂。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　措辞很是无情。
　银星号抬头望天，似乎要穿透天际，而后再次，
将视线重重投向了我。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【光】
<voice name="光" class="光" src="voice/mb03/0220500a14">
「但是就一点，我要告诉你。
　现在，<RUBY text="·····">你所做的事</RUBY>是什么。」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220510a14">
「和那小姑娘联手就是正义？
　不对吧……」


//【光】
<voice name="光" class="光" src="voice/mb03/0220520a14">
「不过就是战斗，而后杀戮。
　这和以前有什么区别。——而根本上
有区别的是——」


//【光】
<voice name="光" class="光" src="voice/mb03/0220530a14">
「有区别的是，」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　………………是啊。
　
　我明白的。其实我是明白的。

　只有这一点，我完全无法辩解。
　因为这样做就可以不杀善人，将自己的思考停滞在这
个想法，竭力不去正视的一件事。

　凑斗景明最大的污点。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/mb03/0220540a14">
「就是<RUBY text="······">杀人的不是你</RUBY>。
　<RUBY text="·······">代替你杀人的是</RUBY>那疯狗。就是这点不同……」


//【光】
<voice name="光" class="光" src="voice/mb03/0220550a14">
「你将杀人作为罪恶的同时，把罪过用正义的
名义，推给了那个小丫头！」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220560a14">
「不知羞耻，景明!!」


{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220570a00">
「……啊……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　——是的。
　正是这样。

　现在的我，把杀人的罪孽，推给了绫弥一条。
　而对于这个，我在内心的某个角落，体会着自卑的安
心……

　真是无可救药，恬不知耻的所作所为。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【光】
<voice name="光" class="光" src="voice/mb03/0220580a14">
「如今的你真无聊。
　丑陋。偏离武之正道已经太远了。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220590a14">
「畏惧武道，并放弃了它。
　而且竟然妄图利用他人的武道，贪图蒙受胜
利的恩惠。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220600a14">
「这样就没办法了。
　毫无办法！」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220610a14">
「太失败！
　对你的教导就是一场失败！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銀星号、舞い上がる
	CreateSE("SE01","se人体_動作_跳躍01");
	OnBG(3000,"bg002_空a_02.jpg");
	Fade("煙動画", 1000, 0, null, false);
	FadeBG(1000,true);
	StL(4000, @0, @60,"cg/st/3d銀星号_立ち_通常b.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @0, @-60, DxlAuto, false);
	FadeStL(300,true);

	Delete("煙動画");

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0220620a00">
「……银星号！」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0220630a14">
「看来是太由着你了。
　本想照顾点你，所以没有急着传布武道，
但事与愿违。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220640a14">
「谁曾想到事情会发展至此。
　……看来已无需犹豫。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220650a14">
「你看好了，景明！
　今后光将向全天下传布武道。」


//【光】
<voice name="光" class="光" src="voice/mb03/0220660a14">
「你就伫立于这抛却一切伪饰的世界中心，
　好好醒悟真理!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



//◆飛び去る
	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateColorEX("絵上幕", 15000, "BLACK");
	Fade("絵色白", 200, 1000, null, true);
	DeleteStA(0,true);

	WaitKey(100);

	FadeDelete("絵色白", 200, false);

	CreateTextureSP("絵背景100", 3100, -100, Middle, "cg/st/3d銀星号_騎航_通常2.png");
	SetBlur("絵背景100", true, 4, 300, 20, false);

	EffectZoomadd(10000, 1000, 500, "cg/ef/ef034_精神汚染.jpg", false);

	Zoom("絵背景100", 500, 10, 10, Axl2, false);
	Move("絵背景100", 200, @500, @-100, Dxl2, true);

	FadeDelete("絵背景100", 500, false);
	Move("絵背景100", 300, @-1000, @-200, Axl2, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　眼看着化成白银的流星，魔王之骑追逐着暮色而去。
　我无法追赶。

　也无法起身。连手臂也无力伸展。
　已成碎片的灵魂，连一丝力量也无法传达给四肢。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("絵上幕", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0325]
　我只是目送着银色的背影。
　
　
　而后，世界开始崩坏。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆Ｃパート完

//◆カットインぽくロゴ？
//あきゅん「演出：超仮仮」

/*
	ClearWaitAll(2000, 3000);

	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/sys/Telop/lg_村正.jpg");
	CreateColorSP("絵色黒地", 100, "#000000");

	Wait(100);

	FadeDelete("絵色白", 1000, true);

	WaitKey(2000);

	ClearWaitAll(3000, 3000);
*/


	ClearWaitAll(500, 500);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,1);

	ClearWaitAll(3000, 2000);

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"mb04_001.nss"


function FlyMoving()
{

$t = $ループムーブタイム;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名", $t, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}

function FlyMoving2()
{

$t2 = $ループムーブタイム２;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名２", $t2, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}
