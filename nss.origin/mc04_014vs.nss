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

scene mc04_014vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc04_014vs.nss","RandomMeimetsu_mc04_014vs",true);
	Conquest("nss/mc04_014vs.nss","RandomMeimetsuSet_mc04_014vs",true);
	

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
	#bg090_大鳥邸通路b_01=true;
	#bg090_大鳥邸通路d_01=true;

	#ev954_獅子吼装甲_a=true;
	#ev954_獅子吼装甲_b=true;
	#ev186_村正ＶＳ銘伏_a=true;
	#ev186_村正ＶＳ銘伏_b=true;
	#ev186_村正ＶＳ銘伏_c=true;
	#ev186_村正ＶＳ銘伏_d=true;
	#ev187_銘伏の妖剣_a=true;
	#ev187_銘伏の妖剣_b=true;
	#ev187_銘伏の妖剣_c=true;
	#ev187_銘伏の妖剣_d=true;
	#ev187_銘伏の妖剣_e=true;
	#ev187_銘伏の妖剣_f=true;
	#ev187_銘伏の妖剣_i=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_銘伏=true;

	$PreGameName = $GameName;
	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_014vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_013vs.nss"


//◆景明サイド
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	CreateTextureSP("Ｃ/絵背景", 100, Center, Middle, "cg/bg/bg088_大鳥邸ホール_01a.jpg");

	Request("Ｃ/*", Smoothing);
	SoundPlay("@mbgm13", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	CreateSE("走る", "se人体_足音_鎧歩く04");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	StR(1100, @0, @0, "cg/st/3d村正標準_立ち_通常.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0010a01">
《主君，是这附近！
　在这下面——！》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0020a00">
「是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我停在了这里。
　但是，脚边只有地板。

　附近并没有正巧出现通往地下的入口。
　周围也找不到。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0030a00">
「香气如何呢。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0040a01">
《现在还是异常。和之前一样。没有别的表现
方式。
　……<RUBY text="母亲">银星号</RUBY>到底在做什么呢。》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0050a00">
「强行突破还是会很危险吧。
　那样的话——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　欲速则不达。我只能遵从这句古话。
　但我希望浪费的路程能够最少。

　要是问了大鸟大尉宅邸的详细构造就好了。
不过现在已经晚了。
　那么，除了仔细寻找之外，还有什么办法。
如果能有更有效的方法——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士
	CreateTextureEX("Ｃ/絵立絵兵士", 300, Center, Middle, "cg/st/resize/st六波羅兵士_通常_制服m.png");
	Request("Ｃ/絵立絵兵士", Smoothing);
	Zoom("Ｃ/絵立絵兵士", 0, 500, 500, null, true);

	Move("Ｃ/絵立絵兵士", 0, @-250, @0, null, true);

	Move("Ｃ/絵立絵兵士", 300, @60, @0, Dxl2, false);
	Fade("Ｃ/絵立絵兵士", 300, 1000, null, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｓ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／大鳥兵士Ｓ】
<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0060e189">
「呜哦!?」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0070a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_跳躍02", 1000);
	Move("Ｃ/絵背景", 200, @0, @-60, Dxl2, false);
	MoveCamera("Ｃ", 200, @-100, @0, @500, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一个士兵从旁边的走廊中冲出来，他看到我
之后惊慌地站住了。
　一刹那，我没有考虑就先行动了。

　我扑向了士兵，把他按住。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆倒して捕まえ
	OnSE("se人体_衝撃_転倒03", 1000);

	CreatePlainEX("絵板写", 10000);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, true);
	Delete("絵板写");

	FadeDelete("Ｃ/絵立絵兵士", 300, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｓ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／大鳥兵士Ｓ】
<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0080e189">
「——咿——」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0090a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　看他的脸，还很年轻。
　他目光的摇动显示出了恐惧，这时我才<RUBY text="··">想到</RUBY>
自己的行动可以冠上怎样的目的。

　对于我自己简单的想法，我感到很无聊，但
我还是不得已地继续下去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0100a00">
「我打算杀死你。」


{	NwC("cg/fw/nw大鳥軍兵士Ｓ.png");}
//【ｅｔｃ／大鳥兵士Ｓ】

<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0110e189">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0120a00">
「但是，我也可以释放你。
　如果你满足我的要求，我会按照后者实行。」



{	NwC("cg/fw/nw大鳥軍兵士Ｓ.png");}
//【ｅｔｃ／大鳥兵士Ｓ】

<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0130e189">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0140a00">
「这宅邸有地下室吗？」


{	NwC("cg/fw/nw大鳥軍兵士Ｓ.png");}
//【ｅｔｃ／大鳥兵士Ｓ】
<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0150e189">
「有……有的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0160a00">
「怎么去那里？」


{	NwC("cg/fw/nw大鳥軍兵士Ｓ.png");}
//【ｅｔｃ／大鳥兵士Ｓ】
<voice name="ｅｔｃ／大鳥兵士Ｓ" class="その他男声" src="voice/mc04/014vs0170e189">
「……拐过那边的拐角……
　走到头，丁字路口左转，有个楼梯——」



{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0180a00">
「感谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	OnSE("se人体_動作_締める01", 1000);
	Wait(1500);

//◆村正立つ
	PrintGO("上背景", 5000);
	Wait(10);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg088_大鳥邸ホール_01a.jpg");

	Delete("Ｃ");
	FadeDelete("上背景", 500, true);

	CreateSE("SE01","se人体_足音_鎧歩く04");
	StR(1000, @0, @0, "cg/st/3d村正標準_立ち_通常.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我压迫了他的颈动脉十秒，在他失去意识之后我站起
身。
　他倒在路中间可能被踩到，所以我把他放到了墙边。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0190a01">
《暴徒表演得不错。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0200a00">
「别管我。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0210a01">
《那边拐过去之后直走？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0220a00">
「然后左拐。
　走吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だっ。走り出し
//◆突き当たりにＴ字路がある廊下
	OnSE("se戦闘_動作_空突進01", 1000);
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	DeleteStR(0,true);

	OnBG(100, "bg090_大鳥邸通路d_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我们很快确认到，至少士兵说的不全是谎话。
　
　拐过拐角之后，我们确实看到前面有个丁字路口。

　不过。
　在那之前，有一个问题。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	CreatePlainSP("絵板写", 10000);

	StL(1100, @-60, @0,"cg/st/3d九四式指揮官_立ち_通常.png");
	StC(1000, @-80,@0,"cg/st/st邦氏_通常_私服.png");
	StCR(900, @-120, @0,"cg/st/3d九四式竜騎兵_立ち_通常b.png");
	StR(1200, @160, @0,"cg/st/3d九〇式指揮官_立ち_通常.png");
	FadeStA(0,true);

	FadeDelete("絵板写", 300, true);

	Wait(1400);

	CreatePlainSP("絵板写", 10000);
	DeleteStA(0,true);
	FadeDelete("絵板写", 300, true);

//◆獅子吼
	StL(1100, @0, @0, "cg/st/st獅子吼_通常_制服.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0230a06">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0240a00">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0250a00">
「虽然我并不是特意来找你……」


{//頬を歪めて、とあるので inc櫻井
	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0260a06">
「那是我要说的话！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　他冷笑着如此唾弃道。
　那个男人——大鸟狮子吼。

　我们以正面相遇的形式再会了。
　
　他身后有武者三骑。并且，还有一眼就能看出是贵族
的少年。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw近習Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／近習Ａ】
<voice name="ｅｔｃ／近習Ａ" class="その他男声" src="voice/mc04/014vs0270e055">
「中将阁下，这里交给我们。」


{	NwC("cg/fw/nw近習Ｂ.png");}
//【ｅｔｃ／近習Ｂ】
<voice name="ｅｔｃ／近習Ｂ" class="その他男声" src="voice/mc04/014vs0280e056">
「请您守卫殿下——」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0290a06">
「别开玩笑了。正相反。
　你们近卫怎么能离开殿下身边。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0300a06">
「走吧。
　离开这里的准备应该已经做好了。」


{	NwC("cg/fw/nw近習Ａ.png");}
//【ｅｔｃ／近習Ａ】
<voice name="ｅｔｃ／近習Ａ" class="その他男声" src="voice/mc04/014vs0310e055">
「可是——」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0320a06">
「别让我再重复！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_鎧_複数駆け去る01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　他这一喊，让少年和他身边的三骑护卫吓了一跳。
　
　在这声音的压力之下，他们慌忙从我身边跑过。


　这段时间，我没有动。
　当然，我并没有要去制止他们的必要。而且，即使我
有，我也无法摆脱正面射来的杀气束缚。


{	SetVolume("SE01", 3000, 0, null);}
　四人的脚步声消失在我身后的远方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0330a00">
「……“殿下”……
　那么，那是足利四郎邦氏。」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0340a06">
「听你口气，像是刚知道啊。
　如果真是这样，那你真是个白痴<RUBY text="Ｔｅｒｒｏｒｉｓｔ">歹徒</RUBY>啊。」



{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0350a00">
「…………
　我没有想以暴力行为来达到政治主张。」



{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0360a06">
「即是说，你只是香奈枝雇佣的佣兵吗？
　那又如何。你以为我会放过你吗。」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　年轻的将帅嗤之以鼻。
　……看来我们的对话不会有进展。

　对他来说，听<RUBY text="我">袭击者</RUBY>说话毫无价值。
　
　即使我对他说，我对四郎邦氏不感兴趣，
他也不会相信我吧。
——只能一决胜负了吗？　可是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0370a06">
「可惜，我没时间俘虏你。
　我就砍下你的首级吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銘伏出現。じわーっと。
	OnSE("se特殊_鎧_銘伏出現01", 1000);

	CreateStencil("絵演型",1000,center,middle,128,"cg/st/3d銘伏七節_正面.png",false);
	SetAlias("絵演型","絵演型");
	Move("絵演型", 0, -361, -553, null, true);

	CreatePlainEX("絵演型/絵板写", 990);
	SetShade("絵演型/絵板写", HEAVY);
	Fade("絵演型/絵板写", 1600, 1000, null, true);

	Wait(300);

	CreatePlainSP("絵板写", 5000);
	Delete("絵演型");
	CreateTextureSP("絵七節", 1000, Center, Middle, "cg/st/3d銘伏七節_正面.png");
	Move("絵七節", 0, -361, -553, null, true);

	FadeDelete("絵板写", 1000, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0380a01">
《……!?
　剑胄——什么时候！》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0390a00">
「……篠川公方大鸟狮子吼中将！
　如果能让我从这里过去，我不会与你恋战！」



{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0400a06">
「你以为这样说就能逃走吗？　愚蠢！
　如果让入侵的家伙毫发无伤地回去，我还算
什么公方！」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0410a06">
「先前我未带武器，所以放过你。
　没有第二次了。无论你的目的是殿下还是花
枝大人，我都不会让你得逞。想要从我眼前离
开，就成为尸体前往黄泉路上吧！」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0420a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/014vs0430a01">
《主君……》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0440a00">
（没办法）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　这样继续对话也只是浪费时间。
　我调整了心态，准备作为武者与其战斗。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ちゃきーん。抜刀
//◆抜刀村正と獅子吼。対峙
	CreatePlainSP("絵板写", 6000);
	CreateWindow("絵窓", 5000, 631, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵演背景", 5020, Center, Middle, "cg/bg/bg090_大鳥邸通路a_01.jpg");
	Move("絵窓/絵演背景", 0, @300, @0, null, true);

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	Move("絵窓/絵演立絵装甲", 0, @600, @0, null, true);
	Fade("絵窓/*", 0, 0, null, true);
	Delete("絵板写");

	Move("絵窓/絵演背景", 6000, @-100, @0, null, false);
	Move("絵窓/絵演立絵装甲", 6000, 201, @0, DxlAuto, false);

	OnSE("se擬音_雰囲気_抜刀01", 1000);
	Fade("絵窓/*", 0, 1000, null, true);
	DrawTransition("絵窓/*", 300, 0, 1000, 10, Dxl2, "cg/data/slide_02_01_1.png", true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0450a00">
「你作为篠川中将，竟然把自己作为一介武者
进行太刀较量。
　我只得将其称为匹夫之勇。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0460a00">
「我凑斗景明，以自己的原因非法入侵这里，
现在只得与你战斗。
　我的剑胄是右卫门尉村正——」

{	SetVolume("@mbgm*", 1000, 0, null);}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0470a00">
「你的剑胄之铭是何！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼中央に。装甲ポーズ。
	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");

	Fade("絵フラ", 300, 1000, null, true);

	DeleteStA(0,true);
	Delete("なぶせ");
	Delete("絵窓");

	CreateTextureSP("装甲", 5000, @0, @0, "cg/ev/ev954_獅子吼装甲_a.jpg");
	Fade("絵フラ", 1000, 0, null, true);

	SoundPlay("@mbgm08", 0, 1000, true);

	SetFwR("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0480a06">
「凶器不需要铭!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//以下、CGの詳細が来なければ完成できないため一旦保留 inc櫻井

//◆ガキーン。武者·銘伏
	#av_銘伏=true;

//◆戦闘ＢＧＭ。両騎対峙
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStA(0,true);

	CreateTextureSP("装甲", 4000, @0, @0, "cg/ev/ev954_獅子吼装甲_b.jpg");
	FadeDelete("絵フラ", 1000,false);

	WaitKey(2000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵演背景", 1, Center, Middle, "cg/bg/bg090_大鳥邸通路d_01.jpg");
	CreateTextureSP("Ｃ/絵演立", 250, Center, Middle, "cg/st/3d銘伏_立ち_抜刀.png");
	Zoom("Ｃ/絵演立", 0, 750, 750, null, true);
	Zoom("Ｃ/絵演背景", 0, 1500, 1500, null, true);
	SetShade("Ｃ/絵演背景", HEAVY);

	Request("Ｃ/*", Smoothing);

	MoveCamera("Ｃ", 4000, @-200, @0, @0, AxlDxl, false);

	FadeDelete("装甲", 1500, true);

	Wait(2000);

	CreateTextureEX("絵背景02", 4000, -778, -60, "cg/ev/resize/ev186_村正ＶＳ銘伏_al.jpg");
	Fade("絵背景02", 1000, 1000, null, false);
	Move("絵背景02", 3000, @0, -460, DxlAuto, true);

	CreateSE("SE02","se戦闘_動作_刀構え01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(1000);

	CreateTextureEX("絵背景00", 4100, -286, -400, "cg/ev/resize/ev186_村正ＶＳ銘伏_al.jpg");
	Fade("絵背景00", 1000, 1000, null, false);
	Move("絵背景00", 3000, @0, -130, DxlAuto, true);

	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);

	CreateTextureSP("絵背景01", 3000, Center, Middle, "cg/ev/ev186_村正ＶＳ銘伏_a.jpg");
	Delete("絵背景02");
	FadeDelete("絵背景00", 1000, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　我们同时举刀过顶。
　我们同时将敌方置于斩击的范围内。

　大鸟狮子吼举刀较高。
　比起举刀较低的我，他攻意明显会比较不利，同时斩
击的到达时间也会缩短。

　如果使用这种举刀姿势，我认为他会立刻凶猛地斩击
过来，
　
　——但是没有。

　一片寂静。
　大鸟狮子吼静止在那里，就像是平原中孤独伫立的枯
木一样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0490a00">
（我还以为他是只有激情和锐气的男人）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我有必要修正给与对手的评价。
　他并不是战场上手持利剑，意欲吞噬敌人的<RUBY text="Ｖａｎｇｕａｒｄ">猛将</RUBY>——
这样看来，他反而具备<RUBY text="Ｓｗｏｒｄ　Ｍａｓｔｅｒ">剑客</RUBY>的心技。


　先不管这是不是他本来的<RUBY text="Ｓｔｙｌｅ">剑质</RUBY>，
　我必须承认这很适合此处的战斗。
　这是在地上，而且是在狭窄的屋内。

　不仅仅是飞翔于天空的翼型装甲无法发挥，连金刚力
也难以充分发挥。这种局面下，依靠力量和速度的武者
刀法会特别不利。
　在这种情况下，精妙的技术才会有利。

　如果在敌骑的装甲之下等待我的是这种技术，那我决
不能大意行动。
　如果我轻易地斩击，会遭到反击的一刀而吐血身亡。


　是在我将要攻击的时候挫我锐气吗——还是等我进攻
后避开，在我失去平衡时斩击我呢。
　无论如何，这一回合都会决出胜负。

　我也必须应用剑技。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0500a00">
（——唔）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵背景02", 3100, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_b.jpg");
	Fade("絵背景02", 1000, 1000, null, true);
	Delete("絵背景01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　我下了决心。
　将重心前移。

　我将膝盖向对手靠近了几厘米。
　
　加强了攻势。将意志注入刀刃。

　斩击。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0510a00">
「……呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	Wait(800);

	SetFwC("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0520a06">
「————」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0530a00">
（没反应吗……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　敌方不动。
　我放出的攻击之气如风抚柳而去。

　就是说，<RUBY text="·····">他没有上当</RUBY>。
　如果刚才敌骑将我露骨的攻势当作胜机，想要先行击
倒我而向我进攻，那我会用全力的<RUBY text="Ｃｏｕｎｔｅｒ">反击技</RUBY>
一刀剥夺敌人的战斗力。

　或者，如果他打算在我开始攻击之后反击，那么我并
没有前去攻击的样子应该会让他产生动摇。



　但是敌骑完全没有反应。
　他的姿势毫无变化，维持着稳定的剑气。

　<RUBY text="Ｆａｉｎｔ">诱敌之术</RUBY>完全被看穿了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0540a00">
（不妙啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　不妙的并不仅仅是剑技的失败，如果再考虑到给与敌
人的影响，我不由得在心中咂舌。
　刚才敌人应该是看穿了……看穿了我也想要使用技法
的事实。

　他会变得更加慎重，剑技也会更加巧妙吧。
　难敌变得更加难以对付。

　我是否不该去轻易试探，而只是静静等待对方变得焦
躁呢……？
　
　即使这样想，事到如今也没有意义了。

　现在不是受挫的时候。
　敌人应该会慎重行动，
　但那并不<RUBY text="Ｅｑｕａｌ">等于</RUBY>一定会花费时间。

　他如果决定了策略，一刹那就会袭击而来。
　我在内心迷茫的情况下，无法应对。微小的失败应该
立刻忘掉。

　敌人会来————
　应该会来。

　在刚才无声的攻防之中，他看到胜负的天平向自己这
方倾斜，他应该不会舍弃这个机会。
　他没有义务等到天平再次恢复平衡——也就是我调整
身心再次开始谋划计策的时候。

　敌人会来。
　但是，会以什么形式……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("絵板写", 10000);

//◆獅子吼の剣尖が動く。ゆらーり。
	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景03b", 2, -2000, -760, "cg/ev/resize/ev186_村正ＶＳ銘伏_clm.jpg");
	CreateTextureSP("Ｃ/絵背景03a", 3, -2000, -760, "cg/ev/resize/ev186_村正ＶＳ銘伏_alm.jpg");

	Fade("Ｃ/絵背景03a", 6000, 0, null, false);
	MoveCamera("Ｃ", 4000, @-200, @0, @0, DxlAuto, false);
	FadeDelete("絵板写", 1000, true);

	Wait(6000);

	CreateTextureSP("絵背景03c", 1, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_c.jpg");
	CreateTextureSP("絵背景03d", 1, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_b.jpg");

	Fade("Ｃ/絵背景03b", 1000, 0, null, true);

	MoveFFP1stop();
	MoveFFP2stop();

	FadeDelete("絵背景03d", 1000, true);
	Delete("Ｃ");

	CreateTextureSP("絵背景03", 3000, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_c.jpg");
	Delete("絵背景03c");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0550a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　狮子吼的剑微微摇动。
　我反射般地进行迎击——<k>冲出去——<k>我的身体
产生了这种冲动，我勉强制止了自己。

　敌人这个动作，感觉不到杀意。
　这是诱敌。和我刚才做的一样。

　如果被引诱过去，就会受到斩击。
　自制——自制。一次次的自制。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/絵背景03b", 10000, -1900, -680, "cg/ev/resize/ev186_村正ＶＳ銘伏_clm.jpg");
	MoveFFP1("@絵窓/絵背景03b",30000);
	Zoom("絵窓/絵背景03b", 0, 1500, 1500, null, true);
	Request("絵窓/絵背景03b", Smoothing);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0353]
　我艰难地防止了自己姿势的崩溃。
　我继续守望着敌人武器的动向。

　……奇怪的是，在我看穿了他的诱敌计策之后，他的
动作没有停下来。
　他的刀刃缓缓地前行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0560a00">
（这……不<RUBY text="··">仅仅</RUBY>是诱敌？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 300, 1000, 0, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　刀刃流转——
　<RUBY text="··">平躺</RUBY>了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MoveFFP1stop();
	Delete("絵窓");

//◆獅子吼·眩惑剣。丸橋の構に近い
	CreatePlainSP("絵板写", 10000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景04a", 3, -1530, -300, "cg/ev/resize/ev186_村正ＶＳ銘伏_clm.jpg");
	CreateTextureSP("Ｃ/絵背景04b", 2, -1530, -300, "cg/ev/resize/ev186_村正ＶＳ銘伏_dlm.jpg");
	MoveFFP1("@Ｃ/絵背景04b",25000);
	MoveFFP2("@Ｃ/絵背景04a",20000);

	MoveCamera("Ｃ", 6000, @0, @200, @0, DxlAuto, false);

	Delete("絵背景*");
	FadeDelete("絵板写", 1000, true);

	FadeDelete("Ｃ/絵背景04a", 6000, true);

	CreateTextureSP("絵背景04", 1, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_d.jpg");
	FadeDelete("Ｃ/絵背景04b", 1000, true);
	Delete("絵背景03");
	Delete("Ｃ");

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0570a00">
（呜——呜！）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MoveFFP1stop();
	MoveFFP2stop();

	CreatePlainEX("絵板写", 4990);
	SetShade("絵板写", HEAVY);

	CreateWindow("絵窓", 5000, 342, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);

	CreateTextureSP("絵窓/絵演", 5100, Center, Middle, "cg/ev/ev187_銘伏の妖剣_a.jpg");
	Zoom("絵窓/絵演", 0, 1100, 1100, null, true);
	Request("絵窓/絵演", Smoothing);

	Fade("絵板写", 2000, 1000, Dxl3, false);
	Zoom("絵窓", 2000, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　一瞬间，我动员了自己全部的意志，才避免因动摇而
颤抖。

　狮子吼所做的事，是将举起的太刀向前倒下——仅此
而已。
　他将刀尖指向对方，也就是指向了我。

　敌骑太刀的刀柄，刀尖，还有我的眼睛，形成了
<RUBY text="····">一条直线</RUBY>。
　
　——这现实，给我带来了什么呢。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 2000, 3400, 3400, Dxl2, true);

//◆レイヤ重ね：ef017
//◆ＥＶ差分：ぼやけ
	CreatePlainSP("絵板写", 20000);

	Wait(10);

	Delete("絵窓");
	Delete("絵背景*");

	CreateTextureSP("絵背景04", 3300, Center, Middle, "cg/ev/ev187_銘伏の妖剣_a.jpg");
	Zoom("絵背景04", 0, 1100, 1100, null, true);

	CreateTextureSP("絵背景05", 3400, Center, Middle, "cg/ev/ev187_銘伏の妖剣_b.jpg");
	Zoom("絵背景05", 0, 1100, 1100, null, true);

	CreateTextureEX("絵背景05EX", 10010, @-750, @-500, "cg/ef/ef017_汎用正面軌道.jpg");
	Fade("絵背景05EX", 0, 300, null, false);

	CreateTextureEX("絵背景06", 3500, Center, Middle, "cg/ev/ev187_銘伏の妖剣_c.jpg");
	Zoom("絵背景06", 0, 1100, 1100, null, true);

	Request("絵背景0*", Smoothing);

	MoveFFP1("@絵背景04",25000);
	MoveFFP2("@絵背景05",25000);
	MoveFRP1("@絵背景06",25000,30,30);

	FadeDelete("絵板写", 1000, false);

	Wait(1000);

//◆レイヤ重ね：ef017
//◆ＥＶ差分：影
	Fade("絵背景06", 1000, 1000, null, true);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0580a00">
（呜……！）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	RandomMeimetsu_mc04_014vs();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　我感到目眩。
　距离感这种东西，变得极其暧昧。

　我感到……全世界都消失了，只剩下现在指着我的刀
尖一点。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0590a00">
（可恶）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　大鸟狮子吼——使用了妖剑!?

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆明確差分
//◆影差分
//あきゅん「演出：マクロでループさせてるのでカット、ウェイトは後半の複線」
	FadeDelete("絵背景05EX", 1200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　这样会很难办。
　看到<RUBY text="··">尖端</RUBY>而失去冷静，是动物的本能。

　而且是在这种单挑的时候——因为现在全身的神经都
变得敏感，这种压迫感无法轻视。
　
　我感到整个舌头突然变得干燥，嘴唇不停地颤抖。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぼやけ差分
//あきゅん「演出：マクロでループさせてるのでカット、ウェイトは後半の複線」
	Wait(1400);

	SetFwL("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0600a06">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　敌方冰冷的双眼，窥视着我的动作。
　他是在等待——等待我的自我毁灭。

　等我身心这样消耗下去，下半身变得无力吗。
　还是说等我自暴自弃地进攻呢。
　
　无论哪方，我都没有胜机。

　如果以我的精神力，可以在这种状态下维持平常心，
那应该没有问题，但是——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆明確差分
//◆ぼやけ差分
//◆闇差分
//あきゅん「演出：マクロでループさせてるのでカット、ウェイトは後半の複線」

	Wait(1600);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0610a00">
「……呜……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　我不可避免地注视着那里。
　我的感觉集中于一点。

　其他一切都消失了。
　我看不到敌人的身影。

　……不行！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぼやけ差分
	CreateTextureEX("絵演壱", 9100, Center, Middle, "cg/ev/ev187_銘伏の妖剣_b.jpg");
	Zoom("絵演壱", 0, 1100, 1100, null, true);
	MoveFRP2("@絵演壱",25000,30,30);
	Request("絵演壱", Smoothing);

	Fade("絵演壱", 1800, 1000, null, true);

	CreateTextureSP("絵背景04", 3300, Center, Middle, "cg/ev/ev187_銘伏の妖剣_d.jpg");
	Zoom("絵背景04", 0, 1100, 1100, null, true);

	CreateTextureSP("絵背景05", 3400, Center, Middle, "cg/ev/ev187_銘伏の妖剣_e.jpg");
	Zoom("絵背景05", 0, 1100, 1100, null, true);

	CreateTextureEX("絵背景06", 3500, Center, Middle, "cg/ev/ev187_銘伏の妖剣_f.jpg");
	Zoom("絵背景06", 0, 1100, 1100, null, true);

	Request("絵背景0*", Smoothing);

	MoveFFP1("@絵背景04",25000);
	MoveFFP2("@絵背景05",25000);
	MoveFRP1("@絵背景06",25000,30,30);

	SetFwL("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0620a06">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//◆ぼやけ差分ｂ：獅子吼の右手が太刀から離れる
//◆ＳＥ：チャキ。脇差の鯉口を切る音
//◆↑この２演出は↓のテキスト流しつつにしたいが。
	Fade("絵演壱", 2000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　我无法维持自己内心的冷静。
　我知道自己逐渐倾斜于崩溃。

　我还能够坚持多久呢。
　十秒……还是几秒呢。
在我自己崩溃从而受到敌人斩击之前。

{	CreateSE("SE01","se戦闘_動作_刀構え03");
	MusicStart("SE01",0,500,0,1000,null,false);}
　…………该做出决定吗？

　要一直等到最后吗。
　要拼死前去攻击吗。
　还是寻找撤退的道路呢。

　是否——<k>该做出决定了呢————

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆闇差分ｂ：切先が迫る
	CreateTextureEX("絵背景08EX", 9120, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Zoom("絵背景08EX", 0, 1100, 1100, null, true);
	Request("絵背景08EX", Smoothing);
	Fade("絵背景08EX", 2000, 1000, null, true);

	MoveFFP1stop();
	MoveFFP2stop();
	MoveFRP1stop();
	MoveFRP2stop();
	MoveFRP3stop();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　来了!?

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆選択：打つ／待つ／逃れる

}

..//ジャンプ指定
//◆打つ　"mc04_014vsa.nss"
//◆待つ　"mc04_014vsb.nss"
//◆逃れる　"mc04_014vsc.nss"

//★選択肢シーン
scene mc04_014vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵背景09EX", Smoothing);
	Zoom("絵背景09EX", 0, 1100, 1100, null, true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice03("攻击","等待","逃跑");
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
			ChoiceA03();
//◆打つ　"mc04_014vsa.nss"
				$GameName = "mc04_014vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆待つ　"mc04_014vsb.nss"
				$GameName = "mc04_014vsb.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆逃れる　"mc04_014vsc.nss"
				$GameName = "mc04_014vsc.nss";
		}
	}
}

.//プロセス用======================================================

..ランダム明滅
function RandomMeimetsu_mc04_014vs()
{
	CreateProcess("Ｐランダム明滅", 5000, 0, 0, "RandomMeimetsuSet_mc04_014vs");
	SetAlias("Ｐランダム明滅","Ｐランダム明滅");
	Request("Ｐランダム明滅", Start);
}

function RandomMeimetsuSet_mc04_014vs()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@絵背景06", $RFTS, 0, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 1000);
	Fade("@絵背景05", $RFTS2, 0, null, true);

	$RWaitSet2 = Random(10) + 10;
	$RWS2 = ($RWaitSet2 * 10) +600;

	Wait($RWS2);


	$RFadeTimeSet3 = Random(3) + 1;
	$RFTS3 = ($RFadeTimeSet3 * 1000);
	Fade("@絵背景05", $RFTS3, 1000, null, true);

	$RWaitSet3 = Random(10) + 10;
	$RWS3 = ($RWaitSet3 * 10) +600;

	Wait($RWS3);

	$RFadeTimeSet4 = Random(3) + 2;
	$RFTS4 = ($RFadeTimeSet4 * 1000);
	Fade("@絵背景06", $RFTS4, 1000, null, true);

	$RWaitSet4 = Random(10) + 10;
	$RWS4 = ($RWaitSet4 * 10) +1000;

	Wait($RWS4);

	}

}