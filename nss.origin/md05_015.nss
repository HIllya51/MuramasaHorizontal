//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_015.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_015.nss","TurboBlur3",true);
	

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
	#bg041_片瀬海岸_03=true;
	#bg001_空d_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_016vs.nss";

}

scene md05_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_014b.nss"


//◆夜の海岸？

	PrintBG("上背景", 30000);
	CreateColorSP("白", 5000, "WHITE");

//	SoundPlay("@mbgm30", 0, 1000, true);

	CreateSE("umi", "se自然_水_浜辺の波01_L");
	MusicStart("umi", 0, 1000, 0, 1000, null,true);

	CreateTextureEX("ワープ演出", 4500, @0, @0, "cg/bg/bg041_片瀬海岸_03.jpg");
	Zoom("ワープ演出", 0, 1500, 1500, null, true);
	DrawEffect("ワープ演出", 50, "SuperWave", 0, 500, null);
	Fade("ワープ演出", 0, 500, null, true);


	OnBG(100, "bg041_片瀬海岸_03.jpg");
	FadeBG(0, true);

	Delete("上背景");

	FadeDelete("白",1500,true);

	Fade("ワープ演出", 1000, 0, null, true);
	Delete("ワープ演出");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一片寂静。
　除了微波轻拍的声音，没有任何扰乱耳根之音。

　某天夜里，某处海边。
　诡异的气氛，激烈的大风，凶猛的火焰，都不存在。
这里是安稳的世界。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150010a00">
「……还没结束吗。
　但是，不要松懈。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150020a01">
《是啊。
　不过，先不谈时间，这里似乎是大和。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我对村正的想法，表示赞同。
　这里是大和的海。约摸是太平洋一侧。

　抬头望天，星空的模样也证实了这一假设。
　有眼熟的星座，还有月亮——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150030a00">
「……………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150040a01">
《？　怎么了？》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150050a00">
「月亮它……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150060a01">
《月亮？》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150070a00">
「……裂开了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150080a01">
《啊？
　……等等，不要说出这么怪异的话啊。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150090a01">
《冷静点。
　月亮虽然盈亏，但并没有裂开。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆割れた月
	CreateColorSP("黒幕１", 3100, "#000000");
	DrawTransition("黒幕１", 100, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("にゃがー", 3000, @0, @0, "cg/bg/bg001_空d_03.jpg");
	CreateTextureSP("にゃがー大", 3000, @0, @0, "cg/bg/bg001_空d_03.jpg");
	Request("にゃがー大", Smoothing);
	Zoom("にゃがー大", 0, 2000, 2000, null, true);
	Move("にゃがー大", 0, @0, 250, null, true);

	SetBlur("にゃがー大", true, 2, 500, 100, false);

	DrawTransition("黒幕１", 100, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Wait(500);

	Move("にゃがー大", 300, @0, 0, Dxl2, false);
	Zoom("にゃがー大", 300, 1000, 1000, Dxl2, true);

	Delete("にゃがー大");
	Wait(500);

//■ガガーンとかＳＥつけるべき？　inc櫻井

	OnSE("se擬音_コミカル_ガーン02",1000);

	SetFwR("cg/fw/fw村正蜘蛛_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150100a01">
《哇啊——————?!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　裂开了。
　看几次都一样。断定是错觉而再次确认亦是如此。

　地球的至宝，美丽的卫星完全碎裂了。

　是……满月吗。若真是如此。
　那便是，呈现一幅遍地碎盘般的惨状。

　……想起了一则关于月亮诞生的说法。
　在地球周围漂浮的物质因引力而聚集，最终形成了
月亮——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150110a01">
《等、什、什么啊唔月月月月亮！》

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150120a00">
「冷静点。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我打断错乱不已说起奇怪语言的村正。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//話をしながら元に戻るというような演出ですが、trueにしたほうが良いのなら1000,trueで inc櫻井

	FadeDelete("にゃがー",2000,false);
	Wait(500);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150130a00">
「这不该是数万年……的地方吧……
　可能是数亿年以前，过去的地球吗？」

{	FwC("cg/fw/fw村正蜘蛛_冷汗.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150140a01">
《诶？
　那、个……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150150a01">
《本来理应只能在数百年的范围内活动，
我觉得不会这样……
　周围看起来也不像。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我同意。
　我听闻月亮的诞生，应该是——<k>和地球几乎同一时期。
如此一来，便不是数亿年前，而是数十亿年前。

　无法令人相信，这里是如此远古的地球。

　那么……究竟是怎么回事。

　如果这里不是月亮形成过程中的时代。

　……未来？
　是将来，月亮由于某种原因分裂了吗？

　人类在月球表面开发犯下了从未有过的巨大失误吗？
　或者是和外星人的决战场——？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150160a01">
《…………》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150170a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150180a01">
《啊。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150190a00">
「……嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　村正深陷混乱中，而我则转头向ＳＦ方向前
进。或许因为这些缘故，才晚发现了。
　
　有人。

　留下点点足迹，行走中的人影。
　从我的角度看去是背影，虽然因昏暗而无法轻易判断
——但似乎是位女性。

　她正准备离开。
　然而，是感受到了什么吗。

　不经意地，回头向我看来。
　糟糕——我这么想着，却手足无措。

　隔着些许距离，互相面对面。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条（三年後）

	StC(1000, @0, @0, "cg/st/st一条三年後_通常_私服.png");
	FadeStC(500, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……不认识的女性。

　我没有见过她。
　这点毋庸置疑。但……有什么，在刺激我的记忆。

　明明对她的全貌没有记忆，却有点点滴滴牵动心绪。
　比如，那双眸——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条三年後_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/md05/0150200a02">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
  看见突然现身的武者——对她来说——却没有
一丝动摇。
　如这光景般，静静伫立。
　泛起微微的波澜。

　那是看向遥远过去的眼神。
　抑或是，凝视自我内心。

　她不吐一言，我也一语不发。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆一条消す

	DeleteStC(500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　只停留数秒的脚步，再度向前行走。
　抬脚离去。
　
　径直地。

　她不再止步，连头也不回。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150210a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間ぶれ

	CreatePlainEX("絵板写", 100);

	OnSE("se特殊_その他_空間歪曲",1000);

	DrawEffect("絵板写", 36000, "MiddleWave", 30, 30, null);

	Fade("絵板写", 500, 900, null, false);
	Zoom("絵板写", 1000, 1300, 1300, AxlDxl, false);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150220a01">
《主君。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150230a00">
「啊啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　时空间产生了扭曲。
　从这里似乎也能安然逃脱。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150240a01">
《刚才的，是谁？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150250a00">
「不知道。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150260a01">
《……真的？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150270a00">
「为何起疑？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150280a01">
《……算了。
　比起这个，小心点。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150290a01">
《大概，这样就能回去——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	SetVolume("umi", 1000, 0, null);

	CreateSEEX("SE01","se戦闘_攻撃_エネルギー鬩ぎ合い01_L");
	OnSE("se戦闘_動作_鉄壁吹っ飛ばす", 1000);

	MusicStart("SE01",0,1000,0,1000,null,true);

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);


	CreateColorSPadd("白", 2500, "WHITE");


	CreateTextureSP("瞬間移動", 1000, @0, @0, "cg/ef/ef039_時間移動.jpg");

	CreateColorEXadd("絵色100", 2000, "WHITE");
	Fade("絵色100", 0, 500, null, true);

	$Warpトランジ = @絵色100;
	$Warpトランジ速度 = 500;
	$Warpトランジなめらかさ = 500;



	CreateTextureEXadd("絵背景効果線", 1500, Center, Middle, "cg/ef/resize/ef039_時間移動l.jpg");
	SetVertex("絵背景効果線", 800, 420);
	$効果ナット名 = @絵背景効果線;


	CreateProcess("プロセス２", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");


	Request("プロセス２", Start);
	Request("プロセス３", Start);

	Delete("上背景");
	FadeDelete("黒幕１",1000,true);
	Fade("白", 1000, 0, null, true);


	Wait(3500);

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	Fade("白", 1500, 1000, null, true);

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"md05_016vs.nss"


function TurboBlur3()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, Axl2, "cg/data/circle_01_00_0.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, Dxl2, "cg/data/circle_01_00_1.png", true);

	}

}