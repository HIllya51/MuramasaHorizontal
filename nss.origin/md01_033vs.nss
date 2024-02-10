//<continuation number="470">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_033vs.nss_MAIN
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

	$GameName = "md01_034vs.nss";

}

scene md01_033vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md01_032.nss"



//◆村正ＶＳ銀星号·決着（嘘）
//◆要は一条編の決着シーンを再現。
//◆銀星号の失墜彗星に対して村正の全身レールガン
//◆ずどーん。
//◆すげーエネルギーの渦

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵ＥＶ", 18000, Center, Middle, "cg/ev/ev156_銀星号との決着英雄編.jpg");
	Zoom("絵ＥＶ", 0, 2000, 2000, null, true);

	SetBlur("絵ＥＶ", true, 3, 500, 50, false);
	Move("絵ＥＶ", 0, 500, @-200, null, true);

	Delete("上背景");

	CreateSE("SE01","se特殊_電撃_帯電01");
	OnSE("se特殊_電撃_放電02",1000);
	MusicStart("SE01",2000,500,0,1000,null,true);

	Zoom("絵ＥＶ", 2000, 1800, 1800, null, false);
	Move("絵ＥＶ", 2000, 400, -160, null, false);
	Fade("絵暗転", 2000, 0, null, true);

	OnSE("se特殊_電撃_放電01",1000);
	Fade("絵暗転", 100, 500, null, true);
	FadeDelete("絵暗転", 500, false);
	Zoom("絵ＥＶ", 500, 1000, 1000, Axl2, false);
	Move("絵ＥＶ", 500, 0, 0, Axl2, true);

	CreateSE("SE01","se戦闘_攻撃_振る04");
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	CreateTextureSP("絵演", 18050, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	Zoom("絵演", 0, 1100, 1100, null, true);
	Request("絵演*", Smoothing);

	Fade("絵演*", 0, 1000, null, true);
	Zoom("絵演上", 200, 1200, 1200, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	WaitKey(500);

	DrawDelete("絵演", 150, 100, "circle_01_00_1", true);

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//◆どがーん。ぶつかった。
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	CreateSE("SE02","se戦闘_衝撃_攻撃交錯02");
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	CreatePlainSPadd("絵板写", 19990);
	SetBlur("絵板写", true, 3, 500, 30, false);

	MusicStart("SE01",0,1000,0,750,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1150, 1150, null, false);
	Fade("絵色白", 200, 1000, null, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵白転", 20000, "#FFFFFF");
	CreateColorSP("絵暗転", 15000, "#000000");
	Delete("上背景");
	FadeDelete("絵白転", 2000, true);


	Wait(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0010a01">
《成功了————吗!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0020a00">
「…………！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がきーん。再装甲
//◆村正
	OnSE("se特殊_鎧_装着04",1000);
	CreateSE("SE停滞", "se戦闘_動作_空走行02_L");
	CreateSE("SE余波", "se特殊_電撃_帯電01");

	CloudZoomSet(2500);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 1100, 1100, null, true);

	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@0,@0,null,true);

$ループムーブナット名２ = "@絵背景100";
$ループムーブタイム２ = 5000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");
	Request("プロセス２", Start);
	Shake("絵背景100", 1000000, 1, 5, 0, 0, 500, null, false);

	MusicStart("SE停滞", 3000, 700, 0, 1000, null,true);
	MusicStart("SE余波", 3000, 400, 0, 1000, null,true);
	FadeDelete("絵暗転", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　应该打中了。

　银星号的必杀技，<RUBY text="天体坠落小彗星">垂直落下的踢技</RUBY>——
　我射出肉身用电磁拔刀来与之对战，终于胜了。

　分毫之差。
　但我确实打中了一击。

　对那至今为止一次都未能触碰到的银色之影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆乱流が収まってゆく
	Shake("絵背景100", 5000, 1, 5, 0, 0, 500, Dxl1, false);
	SetVolume("SE余波", 5000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　重力波的余震消散，天空恢复平稳。
　目所能及的地方却不见敌影。

　全无银星号的身影。

　…………结束了。


　吗？

　我，终于……<k>

　做到了，

　终于，<k>做到了吗？

　这不得不去<k>做的事————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色100", 15000, "BLACK");
	SetVolume("SE停滞", 1000, 1, null);
	Fade("絵色100", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　
　　　　　　光就拜托你了，景明。
　　　　　　那个约定……请不要忘记。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE停滞", 3000, 500, null);
	FadeDelete("絵色100", 1000, true);

//◆イン
	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0030a00">
「……哧……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0040a01">
《主君，上面!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずどがーん。
//◆吹っ飛び
	Delete("プロセス２");
	SetVolume("SE停滞", 3000, 0, null);

	CreateTextureEX("絵背景100", 100, Center, -50, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	CreateTextureEX("絵背景村正", 100, Center, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 500, 500, null, true);
	Rotate("絵背景村正", 0, @0, @0, @180, null,true);
	SetBlur("絵背景村正", true, 1, 500, 100, false);


	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Zoom("絵背景200", 500, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 200, 1000, null, false);
	EffectZoomadd(15000, 500, 500, "cg/ef/ef045_スパーク.jpg", false);
	Wait(300);

	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("絵背景100", 2000, @0, -1200, Dxl1, false);
	Rotate("絵背景村正", 2000, @0, @0, @10, null,false);
	Shake("絵背景村正", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("絵背景村正", 2000, @0, -200, Dxl1, false);
	Fade("絵背景村正", 0, 1000, null, true);
	FadeDelete("絵背景200", 500, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　——————什。<k>

　什么？

　攻击？<k>
　从哪里来的？<k>

　……是谁？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ？
//◆銀星号再臨

	CreateTextureEX("絵背景500", 3000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Request("絵背景500", Smoothing);
	Zoom("絵背景500", 0, 1100, 1100, null, true);

	CreateTextureEX("絵背景銀", 3000, Center, Middle, "cg/st/resize/3d銀星号_立ち_通常l.png");
	Move("絵背景銀", 0, @100, @0, null, true);

	Fade("絵背景500", 1000, 1000, null, true);


	Move("絵背景銀", 3000, @0, @200, null, false);
	Fade("絵背景銀", 1000, 1000, null, true);
	Delete("絵背景村正");
	Delete("絵背景100");
	CloudZoomDelete(500,false);

	SoundPlay("@mbgm02",0,1000,true);

	Wait(2500);

	SetFwC("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0050a14">
「真漂亮。」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0060a14">
「真漂亮……！
　真让我着迷啊，景明!!」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0070a14">
「我真没想到你能到现在这个地步……
　我对自己的失礼判断道歉！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵背景銀", 1000, @0, @350, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　健在。
　还健在。

　全部力量集中到剑上，使出浑身解数。

　即便这样——仍然健在。这简直……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



	Move("絵背景銀", 500, @-100, @0, Axl1, false);
	FadeDelete("絵背景銀", 500, true);

	CreateTextureEX("絵背景銀", 3000, -670, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵背景銀", Smoothing);
	Zoom("絵背景銀", 0, 150, 150, null, true);
	Move("絵背景銀", 0, @100, @0, null, true);
	SetBlur("絵背景銀", true, 1, 500, 100, false);
	CreateTextureEX("絵背景村正", 3001, 50, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 800, 800, null, true);
//	SetBlur("絵背景村正", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(500,@-400,@0,null,false);

	CreateSE("SE停滞", "se戦闘_動作_空走行02_L");

$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@絵背景銀";
$ループムーブタイム２ = 15000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");

	Request("プロセス１", Start);
	Request("プロセス２", Start);

	MusicStart("SE停滞",2000,500,0,1000,null,true);

	Fade("絵背景銀", 1000, 1000, null, false);
	Fade("絵背景村正", 1000, 1000, null, true);


	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0080a00">
「无效吗!?」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0090a14">
「在说什么呢？
　哪里是无效啊，简直就是<RUBY text="···">爽快的</RUBY>一击。」

//【光】
<voice name="光" class="光" src="voice/md01/033vs0100a14">
「看吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　银星号指着自己的胸口。
　装甲的表面，仅仅一条——浅浅的裂缝。

　……不可能。
　被那样打中，仅仅就这种损伤程度!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0110a14">
「还是第一次……！
　光的辰气屏障被打破，装甲负上伤痕！」

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0120a14">
「这种感觉——」

{	FwR("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0130a14">
「痛！
　沙沙簌簌！
　战栗游走的感觉！」

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0140a14">
「啊啊……这就是伤痕吗？
　这就是战斗吗？」

{	FwR("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md01/033vs0150a14">
「这就是相互交合吗!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　吼叫出喜悦的银星号。
　对这细微的伤痕……若有若无的裂伤……
怜爱般地伸出手去触摸。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0160a01">
《辰、辰、辰气屏障……
　就那样一直展开着来战斗吗!?
至今为止都是吗！》

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0170a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　村正的悲鸣，完全代表了我的心境。

　光所说的辰气屏障，和村正所使用的磁力屏障——
即负极磁装是等同的。
　能够使用这一点完全不值得惊讶。

　可是。
　若是提到常常展开屏障同时战斗——

　村正的磁力屏障需要大量的热量。
　因此在屏障展开之时，飞行以及其他机能余力
就所剩无几了。

　为此，通常磁力屏障仅仅是受到敌骑攻击，
仅仅断念的一瞬间展开。

　若是常常张开，对于敌人的突袭固然能应付，
但相对的，骑体的性能将大大降低。
　通常，甚至都谈不上战斗能力的降低——就连
飞行也无法好好维持。

　<RUBY text="···">即是说</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0180a00">
「银星号在之前……
　都没有充分发挥其性能吗……？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0190a01">
《不要开玩笑了。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　在钝哑的剑胄传音中，感受到溃决之际的绝望，
这并非我感性的错觉。

　噩梦。
　噩梦也该有个度……!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0200a14">
「你终于到这里来了，景明。
　光所在的地方！」

//【光】
<voice name="光" class="光" src="voice/md01/033vs0210a14">
「以你为对手，还使用这辰气屏障就太不解风情了。
　现在开始只身迎战吧！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ジキャー。フィールド解除っぽく
//◆※銀星号（従前）と銀星号（解除後）とで色合いを
//◆少し変える？　輝きとか。後者の方が強く見えるように
	CreateTextureEXadd("絵背景銀強", 3000, -670, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵背景銀強", Smoothing);
	Zoom("絵背景銀強", 0, 150, 150, null, true);
	Move("絵背景銀強", 0, @100, @0, null, true);

	OnSE("se特殊_エネルギー放棄",1000);
	Fade("絵背景銀強", 0, 1000, null, true);
	Zoom("絵背景銀強", 2000, 200, 200, Dxl2, false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_汎用移動.jpg", true);

	FadeDelete("絵背景銀強", 2000, false);
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　辰气屏障解除了吗!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0220a14">
「真真正正的银星号！
　那种无谓的隐藏已经不需要了！」

//【光】
<voice name="光" class="光" src="voice/md01/033vs0230a14">
「品尝吧！
　享受吧！
　我来了哦，景明!!」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0240a00">
「咕——!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景銀近", 3000, Center, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Zoom("絵背景銀近", 0, 500, 500, null, true);
	Move("絵背景銀近", 0, @0, @-90, null, true);
	CreateColorEX("絵色100", 15000, "WHITE");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……不能屈服！
　战斗之前就输掉，即使对底层武者来说也是
不该有的耻辱。

　银星号舍弃了防御壁垒！
　现在给予一击的话，便能让它坠落！

　是做过一次的事。
　再一次，不可能做不到。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("SE*", 100, 0, null);

//◆↑改頁クリック待たず
//◆攻撃食らってずがーん。ぶっとび

	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵背景銀", 0, 0, null, true);

	Fade("絵背景銀近", 50, 1000, null, false);
	Shake("絵背景銀近", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("絵色100", 200, 1000, Axl2, true);

	OnSE("se戦闘_破壊_鎧03",1000);
	CreateSE("SE停滞", "se戦闘_動作_空走行02_L");
	Wait(100);
	Delete("プロセス*");
	Delete("絵背景*");

	CreateTextureEX("絵背景スクロール１", 3100, 0, @0, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureEX("絵背景スクロール２", 3100, 0, @0, "cg/bg/bg204_横旋回背景c_01.jpg");

	CreateTextureSP("絵背景村正", 3101, -150, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 800, 800, null, true);
	Rotate("絵背景村正", 0, @0, @0, @180, null,true);
	SetBlur("絵背景村正", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@1000,@0,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,-4000,@0);
	Shake("絵背景村正", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("絵背景村正", 10000, @100, @0, Dxl1, false);


	MusicStart("SE停滞",2000,1000,0,1300,null,true);
	FadeDelete("絵色100", 1000, true);

	Wait(1000);

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0250a00">
「…………」

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0260a00">
「——啊——？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 15000, "WHITE");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　<RUBY text="····">飞起来了</RUBY>。

　就像被风吹一般，在空中游行。

　……为什么？

　我并没有——<k>受到任何攻击——

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆↑改頁クリック待たず
//◆またずがーん
	SetVolume("SE停滞", 100, 1, null);

	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵色100", 100, 1000, Axl2, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);

	Wait(100);
	Delete("プロセス*");
	Delete("絵背景*");
	SCR1stop();

	CreateTextureSP("絵背景スクロール１", 3100, -4000, @0, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵背景スクロール２", 3100, -4000, @0, "cg/bg/bg204_横旋回背景c_01.jpg");

	CreateTextureSP("絵背景村正", 3101, -150, -250, "cg/st/3d村正標準_騎航_通常2.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 800, 800, null, true);
	Rotate("絵背景村正", 0, @0, @0, @180, null,true);
	SetBlur("絵背景村正", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-2000,@0,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,0,@0);
	Shake("絵背景村正", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("絵背景村正", 10000, @-100, @0, Dxl1, false);


	SetVolume("SE停滞", 2000, 1000, null);
	FadeDelete("絵色100", 1000, true);

	Wait(1000);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0270a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 15000, "WHITE");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　这是什么。

　发生什么事了？

　为何我会被弹飞起来？

　什么？

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆↑クリック待たず
//◆またずがーん
	SetVolume("SE停滞", 100, 1, null);
	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵色100", 100, 1000, Axl2, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);

	Wait(100);
	Delete("プロセス*");
	Delete("絵背景*");
	SCR1stop();

	CreateTextureSP("絵背景スクロール１", 3100, Center, -4000, "cg/bg/resize/bg204_横旋回背景_01tl.jpg");
	CreateTextureSP("絵背景スクロール２", 3100, Center, -4000, "cg/bg/resize/bg204_横旋回背景_01tl.jpg");
	Rotate("絵背景スクロール２", 0, @0, @180, @0, null,true);


	CreateTextureSP("絵背景村正", 3101, -150, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 800, 800, null, true);
	Rotate("絵背景村正", 0, @0, @0, @110, null,true);
	SetBlur("絵背景村正", true, 1, 500, 100, false);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@0,@-1000,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,@0,0);
	Shake("絵背景村正", 10000000, 1, 2, 0, 0, 1000, null, false);
	Move("絵背景村正", 10000, @0, @-100, Dxl1, false);


	SetVolume("SE停滞", 2000, 1000, null);
	FadeDelete("絵色100", 1000, true);

	Wait(1000);

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0280a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　究竟发生了什么？

　这是————什么？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0290a01">
《像……像这样。
　这样的。》

{	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0300a00">
「村正……」

//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0310a00">
「我们受到攻击……了吗？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/033vs0320a01">
《…………》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　在哪里？

　银星号在哪里？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE停滞", 2000, 1, null);

//◆銀星号·空中静止
	CreateTextureEX("絵背景1000", 4000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureEX("絵背景銀近", 4000, Center, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵背景銀近", Smoothing);
	SetBlur("絵背景銀近", true, 2, 500, 100, false);

	Fade("絵背景1000", 1000, 1000, null, true);

	Wait(1000);
	Move("絵背景銀近", 1000, @0, @-100, Dxl2, false);
	Zoom("絵背景銀近", 1000, 500, 500, Dxl2, false);
	Fade("絵背景銀近", 1000, 1000, null, true);
	Wait(500);

	Delete("絵背景村正");
	SCR1stop();

	SoundPlay("@mbgm01",0,1000,true);


	CloudZoomDelete(0,true);


	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0330a00">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　银星号出现了。<k>

　<RUBY text="·····">静止于空中</RUBY>。

　……飞行体，若不持续移动便会从空中掉落。
　这是空中世界的定律。

　能够凌驾于定律之上的仅有一部分昆虫和鸟类，
以及高性能的飞行战舰而已。
　而它们也需要花费极大的体力，
才可能维持极短时间的悬浮。

　她若无其事般。
　那里简直像筑起了玻璃高台般。 

　悠然地<RUBY text="···">站立着</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0340a14">
「呼。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　或许是感觉到我凝视的目光，
那超越常规的银色物体朝这边投来微笑。
　正这么想着。

　她舒展般举起一只手——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆空中舞踏
//◆戦闘ＳＴ利用しつつ動かしたりしてそれっぽく。
	CreateTextureSP("絵背景スクロール１", 3100, 0, @0, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵背景スクロール２", 3100, 0, @0, "cg/bg/bg204_横旋回背景c_01.jpg");

	CreateTextureSP("絵背景銀1", 3101, -1050, -250, "cg/st/3d銀星号_騎航_通常2.png");
	Request("絵背景銀1", Smoothing);
	Zoom("絵背景銀1", 0, 1500, 1500, null, true);
	SetBlur("絵背景銀1", true, 1, 500, 100, false);

	CreateTextureEX("絵背景銀2", 3101, -1300, -400, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵背景銀2", Smoothing);
	Zoom("絵背景銀2", 0, 800, 800, null, true);
	SetBlur("絵背景銀2", true, 1, 500, 100, false);

	CreateTextureEX("絵背景銀3", 3101, -1150, -250, "cg/st/3d銀星号_立ち_戦闘b3.png");
	Request("絵背景銀3", Smoothing);
//	Zoom("絵背景銀3", 0, 500, 500, null, true);
	SetBlur("絵背景銀3", true, 1, 500, 100, false);

	CreateTextureEX("絵背景銀4", 3101, -1250, -400, "cg/st/3d銀星号_立ち_戦闘b.png");
	Request("絵背景銀4", Smoothing);
	Zoom("絵背景銀4", 0, 800, 800, null, true);
	SetBlur("絵背景銀4", true, 1, 500, 100, false);

	CreateTextureEX("絵背景銀5", 3101, -850, -100, "cg/st/3d銀星号_騎航_通常.png");
	Request("絵背景銀5", Smoothing);
	Zoom("絵背景銀5", 0, 900, 900, null, true);
	SetBlur("絵背景銀5", true, 1, 500, 100, false);

	OnSE("se戦闘_動作_空突進08",1000);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",20000,-1000,@0);
	Move("絵背景銀", 10000, @100, @0, Dxl1, false);

	Move("絵背景銀近", 500, @100, @0, Axl1, false);
	FadeDelete("絵背景1000", 500, false);
	FadeDelete("絵背景銀近", 500, true);

	Zoom("絵背景銀1", 3000, 800, 800, Dxl1, false);
	Move("絵背景銀*", 1000, @800, @50, Dxl2, true);

	Fade("絵背景銀1", 500, 0, null, false);
	Fade("絵背景銀2", 500, 1000, null, false);
	Move("絵背景銀*", 500, @150, @-50, AxlDxl, true);

	Fade("絵背景銀2", 500, 0, null, false);
	Fade("絵背景銀3", 500, 1000, null, false);
	Move("絵背景銀*", 600, @150, @-20, AxlDxl, true);

	Fade("絵背景銀3", 500, 0, null, false);
	Fade("絵背景銀4", 500, 1000, null, false);
	Move("絵背景銀*", 400, @150, @50, AxlDxl, true);

	Fade("絵背景銀4", 500, 0, null, false);
	Fade("絵背景銀5", 500, 1000, null, false);
	Move("絵背景銀*", 1000, @650, @-50, Axl2, false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　芭蕾剧『胡桃夹子人偶』
　第二幕『巧克力精灵』

　……帝剧芭蕾团，兴隆三三年北陆公演版。

　那让人甚至错以为是原剧的跃动感，
使这出稀世杰作以及芭蕾界的著名场面，
艳丽地舞动于眼前。 

　踏于虚空的舞台之上。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0350a00">
「……哈……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　如果说这里是奇异国度的话，
我还是想快点返回现实。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景1000", 4000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureEX("絵背景銀近", 4000, Center, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Zoom("絵背景銀近", 0, 500, 500, null, true);
	Move("絵背景銀近", 0, @-100, @-100, null, true);
	Request("絵背景銀近", Smoothing);
	SetBlur("絵背景銀近", true, 2, 500, 100, false);

	Fade("絵背景1000", 500, 1000, null, true);

	OnSE("se戦闘_動作_空突進07",1000);
	Move("絵背景銀近", 1000, @100, @0, Dxl2, false);
	Fade("絵背景銀近", 1000, 1000, null, true);

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0360a14">
「这才是真正的引辰制御。」

//【光】
<voice name="光" class="光" src="voice/md01/033vs0370a14">
「称之为真正的<RUBY text="··">飞行</RUBY>啊。
　和普通飞行的原理有点不同哟。」

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0380a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　武者的飞行，在欧洲语言圈中一般被称作游航。
　其语源是拉丁语中的游航。

　……确实，银星号那样的已不能再称之为飞行。
　一点也不相称。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【光】
<voice name="光" class="光" src="voice/md01/033vs0390a14">
「能作这支舞的对象吗——景明！」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 15000, "WHITE");

	CreateTextureEX("絵背景銀近２", 4000, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Zoom("絵背景銀近２", 0, 500, 500, null, true);
	Move("絵背景銀近２", 0, @0, @0, null, true);
	Request("絵背景銀近２", Smoothing);
	SetBlur("絵背景銀近２", true, 1, 500, 10, false);

//◆ずがーん
	OnSE("se戦闘_動作_空突進02",1000);
	FadeDelete("絵背景銀近", 100, false);
	Fade("絵背景銀近２", 50, 1000, null, false);
	Fade("絵色100", 100, 1000, Axl3, false);
	Zoom("絵背景銀近２", 100, 2000, 2000, Axl2, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);

	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　什么也无法看见。

　什么也无法理解。

　……竟有那种事？

　曾经，银星号的攻击速度于我来说，确实是
压倒性的胜利。
　但是，即便无法反应，在攻击的瞬间察觉到
这个事情的可能性还是有的。

　能了解是如何被攻击的。

　……但如今却不能。

　什么时候、从哪里、怎样攻击的？
　即使<RUBY text="··">事后</RUBY>回想也完全无法理解。

　————————怎么会有那种事!!

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆ずがーん
	CreateTextureEX("絵背景100", 10000, Center, -50, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureEX("絵背景200", 11000, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	CreateTextureEX("絵背景村正", 10000, Center, -250, "cg/st/3d村正標準_騎航_通常2.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 1000, 1000, null, true);
	Rotate("絵背景村正", 0, @0, @0, @180, null,true);
	SetBlur("絵背景村正", true, 1, 500, 100, false);


	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Zoom("絵背景200", 500, 1500, 1500, Dxl2, false);
	Fade("絵背景200", 200, 1000, null, false);
	EffectZoomadd(15000, 500, 500, "cg/ef/ef045_スパーク.jpg", false);
	Wait(300);

	Fade("絵背景100", 0, 1000, null, true);
	Delete("絵色100");
	Shake("絵背景100", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("絵背景100", 2000, @0, -1200, Dxl1, false);
	Rotate("絵背景村正", 2000, @0, @0, @10, null,false);
	Zoom("絵背景村正", 2000, 500, 500, Dxl1, false);
	Shake("絵背景村正", 10000000, 1, 1, 0, 0, 1000, Dxl1, false);
	Move("絵背景村正", 2000, @0, -200, Dxl1, false);
	Fade("絵背景村正", 0, 1000, null, true);
	FadeDelete("絵背景200", 500, true);

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0400a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　——我们处在同一个地方。
　我想方才，光是在告诉我这些。

　她说谎。

　根本就不在一个地方。

　<RUBY text="·····">世界错开了</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆ずがーん
	CreateTextureEX("絵背景銀近", 10000, Center, Middle, "cg/st/3d銀星号_騎航_通常3.png");
	Zoom("絵背景銀近", 0, 800, 800, null, true);
	Move("絵背景銀近", 0, @-150, @0, null, true);
	CreateColorEX("絵色100", 15000, "WHITE");

	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵背景銀", 0, 0, null, true);

	Fade("絵背景銀近", 50, 1000, null, false);
	Shake("絵背景銀近", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("絵色100", 200, 1000, Axl2, true);

	Delete("絵背景*");

	CreateTextureSP("絵背景100", 3001, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureSP("絵背景エフェクト", 13000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");

	CreateTextureSP("絵背景村正", 3003, -150, -250, "cg/st/3d村正標準_騎航_通常4a.png");
	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 1800, 1800, null, true);
	Rotate("絵背景村正", 0, @0, @0, @100, null,true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス２", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス２","プロセス２");


	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(500,@0,@0,null,false);


$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 25000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);
	Request("プロセス２", Start);

	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);


	EffectZoomadd(15000, 600, 100, "cg/ef/ef040_汎用衝突.jpg", false);
	Zoom("絵背景エフェクト", 600, 1200, 1200, Dxl1, false);
	FadeDelete("絵色100", 100, true);
	Wait(200);

	Shake("絵背景村正", 10000000, 0, 1, 0, 0, 1000, null, false);
	Rotate("絵背景村正", 1000, @0, @0, @80, Dxl2,false);
	Zoom("絵背景村正", 1000, 500, 500, Dxl2, false);
	FadeDelete("絵背景エフェクト", 1000, true);


	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0410a00">
「咯……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　看不见。
　眼睛根本没有用。

　视网膜仅捕捉到残像。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0420a00">
（不能……依赖眼睛）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　毫无用处的话，舍弃便是。
　会成为障碍。 

　那其他的知觉。

　听觉？

　不对。

　嗅觉？

　不对。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0430a00">
（不是<RUBY text="··">感官</RUBY>。
　也不是<RUBY text="··">直觉</RUBY>）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　是悟。

　超越感官的认识。
　撇开见光才能知、听音才能晓这种蜿蜒的过程，
悟出<RUBY text="····">战斗本身</RUBY>并应对。

　远远超过那些所谓强者和智者的水平，
　也凌驾于那些威名远播的达人和名人的境界，

　只能是达到可称之为剑圣的武者所具备的。

　……肯定不为我所拥有。
　但是。

　若没有那种东西，实力便相差甚远！

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆ずがーん
	CreateTextureEX("絵背景銀近", 3002, Center, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Zoom("絵背景銀近", 0, 400, 400, null, true);
	Move("絵背景銀近", 0, @-150, @0, null, true);
	CreateColorEX("絵色100", 15000, "WHITE");

	OnSE("se戦闘_動作_空突進02",1000);
	Fade("絵背景銀", 0, 0, null, true);

	Fade("絵背景銀近", 50, 1000, null, false);
	Shake("絵背景銀近", 250, 10, 2, 0, 0, 1000, Dxl2, false);
	Fade("絵色100", 200, 1000, Axl2, true);
	Delete("絵背景*");

	OnSE("se特殊_鎧_レース_クラッシュ",1000);

	Wait(2000);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0440a00">
（……养父）

//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0450a00">
（师傅，说过什么？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　悟。

　究竟该如何得到？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 5000, 0, null);

//◆フェードアウト
	CreateColorEX("絵色200", 16000, "BLACK");
	Fade("絵色200", 1000, 1000, null, true);
	Delete("絵色100");
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　
　　　　　　　　　——舍弃吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 3001, Center, Middle, "cg/bg/bg001_空a_01.jpg");

	SetVolume("SE停滞", 3000, 500, null);
	FadeDelete("絵色200", 1000, true);


//◆イン
	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0460a00">
（明尧大人）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　在吉野御流的秘传中有记载，那位大人曾说过。

　——该舍弃。

　将<RUBY text="··">视觉</RUBY>。
　将<RUBY text="··">听觉</RUBY>。
　将<RUBY text="··">感觉</RUBY>。
　将<RUBY text="··">思考</RUBY>。

　与世界断绝。
　舍去世界。

　什么也不想。

　若失去一切，
　也就没有牵制到我的东西了。

　这种境界。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/md01/033vs0470a00">
（舍弃……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　我能办到吗？

　舍弃一切，将心神投向这虚空——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);
	ClearFadeAll(500, true);


}

..//ジャンプ指定
//次ファイル　"md01_034vs.nss"