//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_018.nss_MAIN
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
	#bg053_堀越御所の庭_01=true;
	#ev002_銀星号事件イメージ２=true;
	#bg052_湊斗家道場_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_019.nss";

}

scene md02_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_017.nss"

//◆庭
	PrintBG("上背景", 30000);
	CreateColorSP("ホワイトイン", 5000, "WHITE");
	OnBG(100, "bg053_堀越御所の庭_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("ホワイトイン",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　才发现。
　腰腿无力，面仰天空。即便如此背部却没有触碰地面。

　如此不可思议的事，花了三秒才明白。
　……我被什么支撑着。

　支撑着我的，是光。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光アップ
//■まだ素材ない。素材によってはウィンドウを動かす inc櫻井
//↓試し inc櫻井

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -144, "cg/bg/bg053_堀越御所の庭_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, 160, -468, "cg/st/resize/st光_通常_私服_l.png");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 30000, @-100, @0, null, false);
	Move("絵演窓上/絵立絵", 30000, @-200, @0, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);
	Wait(300);
/*
	StR(1000, @0, @800, "cg/st/resize/st光_通常_私服_l.png");
	Request("@StR*", Smoothing);
	FadeStR(300, false);
*/

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md02/0180010a14">
「值得嘉许。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180020a00">
「……光……」

{	SoundPlay("@mbgm30", 0, 1000, true);
	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180030a14">
「就这么想赶上我吗？」

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180040a14">
「如此耿直的执念真是太可爱了。
　在八幡宫让你看到<RUBY text="··">那个</RUBY>也值得了。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180050a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0180060a00">
「我在做什么……
　你是……知道的吗？」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180070a14">
「概括来说，明镜止水。
　摒弃杂念，想要更加接近光吧。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180080a00">
「……」

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180090a14">
「呵……呵呵。」

//【光】
<voice name="光" class="光" src="voice/md02/0180100a14">
「当然知道。
　把握你的内心波动，
比山茶花的花期还容易懂。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

//	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　光用左手的食指指向花草从中的花蕾。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	StC(1000, @0, @0, "cg/st/st光_通常_私服.png");
	FadeStC(300, false);

	SetFwR("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md02/0180110a14">
「还剩两天。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180120a00">
「……我反倒不懂你。」

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180130a14">
「不要焦急。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　收回纤细的手指，触碰我的脸。
　轻柔地拭去沾附的尘土。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md02/0180140a14">
「光就在这里……
　不会留下你自己跑掉的。」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180150a14">
「我等着你来。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180160a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　从这个本该斩杀——想要斩杀的对手口中，
说出安慰的话语。
　不知在何处因何原因惨烈失足的这种状况下，
我的内心相比陷入屈辱，更多的只是混乱。 

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180170a00">
（这算什么）

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180180a00">
（<RUBY text="····">这算什么</RUBY>！）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　混乱。

　混乱中浮出水面的，是最单纯的核心。
　只有它绝对没错，那一个结论。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180190a00">
（我——必须要将你杀了）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　伸出手。
　伸向静静凝视着我的光，她的喉部。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180200a00">
（赶紧。
　现在，就这瞬间）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　光。
　即便你说等，我也无法再等待。

　不能等待。

　给你时间的话，你会怎样呢？
　还会变成银星号吧……

　会引起极大的灾祸。
　会散布漫天的不幸。
　会产生更多的死者。

　所以要杀了你。
　现在，马上。

　抓住咽喉。
　一气摧毁。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180210a00">
「…………」

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180220a14">
「……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180230a00">
「……哧……」

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180240a14">
「觉得痛苦吗？景明……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180250a00">
「……」

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180260a14">
「光罪孽深重。
　你的痛苦于我如同甘露。」

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180270a14">
「但是……
　果然，看着这样的你会感觉痛苦……
这样的感觉也有。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　沾染无数的鲜血及无数绝望的手指，爱抚着我的脸。
　是冷酷还是热情——我无法理解。

　或许是不想理解。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	StC(1000, @0, @0, "cg/st/st光_通常_私服.png");
	FadeStC(300, false);

	SetFwR("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md02/0180280a14">
「……好吧……」

//【光】
<voice name="光" class="光" src="voice/md02/0180290a14">
「景明。
　让我来拭去你的痛苦吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//◆女王蟻村正、瞬時に登場
	OnSE("se人体_動作_一歩", 1000);
	StR(900, -115, -110, "cg/st/3d二世女王蟻_煽り.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 0, 3000, null, false);
	Zoom("@StR*", 100, 950, 950, null, false);
	FadeStR(300, true);

	Wait(500);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180300a00">
「！」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　那身影一瞬间出现。

　白银的女王蚁——村正二世。
　不用操控者出声就能接受指示吗？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32", 0, 1000, true);
	SetFwR("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md02/0180310a14">
「居然说不了解光……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180320a00">
「————」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180330a14">
「那就让你了解一下吧。
　你的杂念，竭尽全力除掉吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆それっぽいＳＥ。卵生成

	CreateColorEXadd("たまご", 15000, "WHITE");
	DrawTransition("たまご", 0, 200, 200, 500, null, "cg/data/circle_01_00_0.png", true);


	OnSE("se特殊_その他_卵生成01", 1000);

	Fade("たまご", 500, 1000, null, true);
	Fade("たまご", 1000, 500, null, true);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180340a00">
「那是……!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想·ＯＰの卵生成

	EfRecoIn1(18000,600);
	CreateTextureEX("イベ絵10", 1001, Center, Middle, "cg/ev/resize/ev101_プロローグ_cl.jpg");
	Request("イベ絵10", Smoothing);
	Zoom("イベ絵10", 0, 2000, 2000, null, false);
	Move("イベ絵10", 0, -1500, 300, null, false);
	Fade("イベ絵10", 1000, 1000, null, true);
	Fade("たまご", 0, 0, null, true);

	EfRecoIn2(300);

	WaitKey(1500);

//◆戻り
	EfRecoOut1(300);
	Delete("イベ絵*");
	Fade("たまご", 0, 500, null, true);
	EfRecoOut2(600,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　————“卵”!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【光】
<voice name="光" class="光" src="voice/md02/0180350a14">
「“波”的结晶。
　只要有了这个，对你也能起作用吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　波。
　污染精神的波。

　银星号散布来侵袭心灵的疫病——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。狂う人々

	EfRecoIn1(18000,600);

	Fade("たまご", 0, 0, null, true);
	CreateTextureEX("イベ絵10", 1001, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Fade("イベ絵10", 0, 1000, null, true);


	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……想将我变成那样吗!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("イベ絵*");
	Fade("たまご", 1000, 500, null, true);
	CreateSE("SE10","se特殊_雰囲気_共鳴01");
	MusicStart("SE10",2000,700,0,1000,null,true);
	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md02/0180360a14">
「你的杂念归根究底就是外界周围。」

{	FwR("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180370a14">
「光总归要破坏……
　要是无法等待的话，让你的心变得
无法感知那些就好了。」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180380a14">
「这就将你内心欲求之外的一切驱逐。
　如果你的欲求是光，那就只考虑光的事吧。」

{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180390a00">
「住手!!」

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180400a14">
「不必想太多。只是暂时的。
　用这样的方法干涉你内心，也不是光的本意。」

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180410a14">
「等让你苦恼的世界迎来终结后，就恢复原状。
　静静等待那天的到来就好。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　挥开光的手——
　寻找掉落的刀——
　要远离“波”的结晶。要逃——

　拼尽全力尝试一切办法。
　不管怎样，还是不如愿。

　光抓着我不放，
也不知道刀掉落何处，
结晶不断在逼近。

　逃不了。

　我将最后的抵抗集中于视线里。

　挖尽她灵魂深处憎恶的矿脉，毁灭掉她的成果。

　光回看着我。

　那里，仅有温柔。

　面对这温柔，我绝望了。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



//◆卵接近。ホワイトアウト？
	SetVolume("SE10", 1500, 1000, null);

	DrawTransition("たまご", 1500, 200, 1000, 500, Axl2, "cg/data/circle_01_00_0.png", false);
	Fade("たまご", 1500, 1000, null, true);

	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	DeleteStA(0,true);
	Delete("たまご");
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE10", 1500, 0, null);

	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	CreateSE("SE02","se特殊_電撃_放電02");

//◆そこへ割り込む鋼線。村正の糸
	CreateTextureSP("絵背景20", 4800, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

//◆カキーン
	MusicStart("SE01",0,1000,0,1000,null,false);


//◆電磁バリヤー。

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, true);

	CreateTextureSPadd("絵背景31", 4901, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureSP("絵背景30", 4900, Center, Middle, "cg/ef/ef035_蜘蛛網捕獲.jpg");

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("絵背景31", 1000, 4000, 4000, Axl1, false);
	Zoom("絵背景30", 1000, 1200, 1200, Dxl1, false);
	Rotate("絵背景31", 1000, @0, @0, @3000, Axl1,false);
	DrawDelete("絵フラ", 100, 100, "zoom_01_00_0", true);

	Wait(500);

	FadeDelete("絵背景*",300,true);

//◆蜘蛛村正

	StL(1100, @-60, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	Rotate("@StL*", 0, 0, 180, 0, null, false);

	OnSE("se人体_足音_鎧歩く03",1000);

	Move("@StL*", 400, @0, @50, Dxl2, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180420a01">
《主君！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180430a00">
「……村正!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　熟悉的声音拉回了逐渐远去的意识。
　是村正——我的村正。

　没错。
　村正的“卵”之污染，唯有同为村正的力量才能防御。

　察觉到我处于危险而赶来的吗……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st光_通常_私服.png");
	StC(900, 380, -110, "cg/st/3d二世女王蟻_煽り.png");
	Request("@StC*", Smoothing);
	Zoom("@StC*", 0, 950, 950, null, true);
	FadeStC(300, false);
	FadeStR(300, false);

	SetFwC("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【光】
<voice name="光" class="光" src="voice/md02/0180440a14">
「……」

//【光】
<voice name="光" class="光" src="voice/md02/0180450a14">
「景明的村正……
　想来妨碍我吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180460a01">
《要是有不该妨碍的理由，还请你告诉我！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆肉体変成
	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	MusicStart("SE01b",0,1000,0,700,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStL(0,true);
	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(0,true);
	WaitKey(500);
	FadeDelete("絵フラ", 1000, true);
	SetVolume("SE*", 1000, 0, null);


	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180470a01">
「离开我的操控者！」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180480a15">
《……呵？》

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180490a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　女王蚁看见肉体化的村正，发出愉快的剑胄传音。
　然后光的双手放开了我，身体转向那边。

　用我至今为止没见过的表情，窥视着那边。
　不————

　有一次。
　与此相近的表情。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：第五話、光復活直後。光と統。
	EfRecoIn1(18000,600);

	CreateTextureEX("イベ絵10", 1001, Center, Middle, "cg/bg/bg052_湊斗家道場_01.jpg");
	Fade("イベ絵10", 0, 1000, null, true);
	StR(1100, @0, @0, "cg/st/st光二年前_通常_私服.png");
	StL(1100, @0, @0, "cg/st/st統_通常_私服.png");
	FadeStL(0, false);
	FadeStR(0, true);

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　那时。
　光从病床上起来，面对母亲的那时候。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("イベ絵*");
	DeleteStR(0,false);
	DeleteStL(0,true);
	DeleteStC(0,true);

	StR(1000, @0, @0, "cg/st/st光_通常_私服.png");
	StC(900, 380, -110, "cg/st/3d二世女王蟻_煽り.png");
	Request("@StC*", Smoothing);
	Zoom("@StC*", 0, 950, 950, null, true);
	StL(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStA(0, true);

	EfRecoOut2(600,true);

	SoundPlay("@mbgm37", 0, 1000, true);

	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【光】
<voice name="光" class="光" src="voice/md02/0180500a14">
「……虽然起了帮我引导景明的作用。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180510a01">
「……」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180520a14">
「但已经不需要了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光と村正。対峙

//■CGないからブラーとか？　inc櫻井
	OnSE("se特殊_陰義_幻影02", 1000);
	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 500, null, true);
	
	SetBlur("絵板写", 8, true, 400, 200);

	Fade("絵板写", 0, 500, Dxl1, true);
	Zoom("絵板写", 100, 1100, 1100, Dxl1, false);
	Fade("絵板写", 100, 1000, null, true);

	Zoom("絵板写", 500, 1000, 1000, Dxl1, false);
	Fade("絵板写", 500, 0, null, true);


	Delete("絵板写");

	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【光】
<voice name="光" class="光" src="voice/md02/0180530a14">
「粉碎吧，毁灭吧。」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180540a01">
「咳……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	StL(1000, @0, @2,"cg/st/st村正_戦闘_私服.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	FadeStL(0,true);
	FadeDelete("絵板写", 300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　村正摆好架势。

　即使未被操控者装甲上的状态，剑胄的战斗能力
也远远凌驾于单凭肉身的人类。
　一对一的决斗肯定是不会输掉的。

　但——
　仅限于光，这样的常识无法通用！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180550a00">
「停下，光！」

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180560a14">
「……景明。」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180570a00">
「如果毁灭村正——
　我绝对不原谅你！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　未经思考，脱口而出的话。

　光膛目结舌。

　——不对。

　瞬间，直觉这么告诉我。

　这不是我该说的话。完全搞错了。

　光的表情凝固了。
　受了伤一般。

　视线转回，她看着村正。
　我已看不到她的眼神——但从村正
反射性地后退一步，可以想象。

　光成为了冲动与破坏的化身。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180580a00">
（必须阻止……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　逼迫着肉体。

　但依然连一根手指也动弹不得。
　被她抱着的期间，是被做了什么吗？
还是说，全身神经因杀意而萎缩了？

　动不了。
　但，动不了的话——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【光】
<voice name="光" class="光" src="voice/md02/0180590a14">
「————」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180600a01">
「……哧……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光、攻撃準備
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	OnSE("se人体_動作_一歩", 1000);

	WaitKey(500);

	SetFwC("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180610a15">
《主君。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180620a15">
《可以吗？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆下がる光
	WaitKey(500);
	Move("@StR*", 300, @30, @0, null, false);
	OnSE("se人体_動作_後ずさり01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　……救援之手。
　来自预料之外的方向。

　白银色的村正二世。
　空中飞舞的女王蚁，
用让人无法忽视的剑胄传声，
暂停了操控者的行动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【光】
<voice name="光" class="光" src="voice/md02/0180630a14">
「……」

//【光】
<voice name="光" class="光" src="voice/md02/0180640a14">
「你说可以吗？是什么意思？
　村正。」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180650a15">
《不懂吗？
　这样……变成这样的话就不好了。》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180660a14">
「快点说。
　你才不懂。你知道我现在有多气愤吗？」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180670a15">
《正因为胄知道才阻止汝。
　主君，是那个。》

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180680a14">
「什么……？」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180690a15">
《汝现在心怀敌意。》

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180700a14">
「————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　……对了。
　村正的誓约，善恶相抵。

　因为在以前，银星号如此自由不受束缚都因为
那些是毫无敌意而展开的杀戮。
　如果怀抱敌意而杀，纵然是光也无法逃离戒律。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180710a15">
《在这里消灭三世的话……
　那换来的结果，会失去什么呢？》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180720a15">
《主君，汝自己也是明白的。》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180730a14">
「……唔……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　光看向天顶。
　立在那里——<RUBY text="··">等待</RUBY>着，像是在乞求谁的原谅。

　但似乎未如愿的样子。
　心中满是悔恨，紧紧握着拳。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光、去る。ずたずた。
	CreateSE("SE01","se人体_足音_歩く08");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetVolume("@mbgm*", 3000, 0, null);
	DeleteStR(500,false);
	DeleteStC(500,true);

	WaitKey(1000);
	SetVolume("SE*", 2000, 0, null);

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　……伴着愤然的足音，光离开了。
　实在罕有。

　白银色的剑胄无言消失。
　同出现于此处时一样，无声无息。

　庭院里只剩下我与村正。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16", 0, 1000, true);
	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180740a01">
「……主君。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180750a01">
「没事吧？
　没有被怎么样吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180760a00">
「……嗯。
　多亏你及时赶来，得救了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　如此说着，深刻体会着此时的安然。
　刚才真是危险。

　如果受到污染波的结晶影响……
　现在的我会变成怎样，会用这双手做什么呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。狂う人々

	EfRecoIn1(18000,600);

//仮画像　inc櫻井
	CreateTextureEX("イベ絵10", 1001, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	Fade("イベ絵10", 0, 1000, null, true);

	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　冷意灌满全身。
　把冰触碰到裸露皮肤时的感觉也不至这样吧。

　太过恐惧太过厌恶的想象。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180770a00">
「谢谢。」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180780a01">
「……不客气。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180790a00">
「太好了。你也没事。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180800a01">
「嗯……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180810a01">
「…………
　今天的状况，该感谢母亲……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180820a00">
「……这该怎么说呢……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　各自怀着复杂的心情，低语交谈。
　虽然日光的照射并非敌不过北风的肆虐，
但要恢复感受那温度的从容，还需花点时间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);
}

..//ジャンプ指定
//次ファイル　"md02_019.nss"