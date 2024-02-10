//<continuation number="160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_006.nss_MAIN
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
	#bg090_大鳥邸通路a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_007vs.nss";

}

scene mc04_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_005vs.nss"


//◆村正サイド
//◆騒々しい屋敷内。ＳＥ
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 100, "BLACK");
	CreateTextureSP("絵背景11", 12, Center, Middle, "cg/bg/bg088_大鳥邸ホール_01a.jpg");
	CreateSE("SE01","se背景_ガヤ_室内ざわめき_短");
	MusicStart("SE01",0,1000,0,700,null,false);

	Wait(1000);

	Delete("上背景");
	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm36",0,1000,true);

	StR(1000, @60, @0,"cg/st/3d村正標準_立ち_通常.png");
	CreateSE("SE02","se人体_足音_鎧歩く04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　宅邸内部突然变得十分混乱。
　看来香奈枝做得很过分。

　对于我这显眼的深红装甲村正，大鸟家的士兵没有进
行有组织的迎击。
　大概是组织内的情报没有正确传达的缘故吧。

　我只遇到了少量的士兵，而且基本上我都趁着对方惊
讶的时候冲了过去，没有交战。
　其中还有些人大概以为我是家中的武者，只是看了我
一眼就慌忙跑开了。

　按照训练严格的亲卫队来说，这是不可能犯下的严重
失误。
　也就是说，在前当主被弑之后，其女儿来袭这件事对
他们产生了如此严重的冲击。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060010a01">
《不过，即使如此。
　我监听了一下<RUBY text="波">音波</RUBY>，无论哪里，所有人都在
喊香奈枝香奈枝香奈枝香奈枝——》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060020a01">
《没必要如此动摇吧？
　还是说，这家里士兵的忠诚心如此深厚？》



{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060030a00">
「不对。
　不是那样的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我如此断言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060040a00">
「他们只是在恐惧。
　对大鸟香奈枝的恐惧让他们无法承受。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060050a01">
《……这种说法，
说得你好像能看穿他们的内心似的。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060060a00">
「我能看穿。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　这没什么的。
　只要看看自己的内心就可以了。

　那是超越逻辑的敬畏和恐怖。

　对于她来说，我和他们站在同一个立场上。
　那一天，我在<RUBY text="横滨">ＧＨＱ</RUBY>的房间中，理解了大鸟香奈枝的
杀意。同样的，他们也——以某种体验——得知了相同
的事，那么自然会与我有着同样的感受。

　<RUBY text="········">被大鸟香奈枝复仇</RUBY>。
　让那杀意盯上的这种——心情。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("絵背景11");
	DeleteStA(0,true);
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg090_大鳥邸通路a_01.jpg");
	DrawDelete("黒幕１", 1000, 1000, "blind_01_00_1", true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060070a00">
「方向呢？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060080a01">
《是这边没错。
　……真的是很清晰。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060090a01">
《如此浓密的<RUBY text="氛围">香气</RUBY>我第一次遇到。
　到底发生了什么事……？》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060100a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　村正在进入篠川的时候就断定了。
　银星号在<RUBY text="··">那里</RUBY>。

　她正确地给出了大鸟家本邸的方向和距离。
　
　之前从未有过这种事。

　村正以前经常对我说，银星号的香气十分漠
然。
　她那时说，虽然在肉眼距离能够确定，但在那之前只
能找到粗略方向，而且再远离些就找不到了——

　但是那香气，这次似乎很异常。
　村正似乎将其所在找得很准。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060110a01">
《……看来是在下面。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060120a00">
「下面？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060130a01">
《是地下。
　并不深……大概就是在这下面一层。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060140a01">
《……怎么办？
　方向是这边没错，不过如果没有楼梯还是会
困扰吧。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060150a01">
《把地板砍碎吗？》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060160a00">
「我们不知道银星号现在是什么状态。
　我希望能够避免诱发危险的举动……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆疾駆
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, -630, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -630, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc04_007vs.nss"