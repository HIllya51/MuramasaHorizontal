//<continuation number="600">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc03_023vs.nss_MAIN
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
	#ev946_村正ＶＳガッタイダー_b=true;
	#ev946_村正ＶＳガッタイダー_d=true;
	#ev922_ガッタイダーボーディホーン準備_b=true;
	#ev922_ガッタイダーボーディホーン準備_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc03_023vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_022vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆村正ＶＳガッタイダー
	SoundPlay("@mbgm13",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演", 18000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_d.jpg");

	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0010a01">
《……结果，还是和上一次的经过相似呢。》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0020a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　正如剑胄所言。
　敌骑的<RUBY text="脚力">速力</RUBY>突然变得迟钝，
　这和之前对决最后的状况完全一样。

　敌骑已经不具备正常的战斗机动力了。
　之后等待着的只有坠落的命运。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0030a01">
《怎么办？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　她催促我下达指令，我保持着沉默。
　现在很容易击坠——<RUBY text="翅膀">翼型装甲</RUBY>上砍一刀，就能解决。

　想到对手令大鸟大尉深陷危险，这样对其进行回礼不
用有任何犹豫。
　那种重装甲。即使降落时粗野一些，也不会致死吧。


　为了之后不发生第三次袭击，给其一定的伤害应该算
是上策。
　
　但即使想到这里，我还是有些犹豫。

　……胜负已分。
　即使我不做些什么，敌骑也会败下<RUBY text="天空">战场</RUBY>。
　在这种情况下，我冒着可能杀害对方的危险继续前去
追击，是否有意义呢。

　即使有再次来袭的可能，我认为也不用过分地担心。
　
　我已经了解了敌骑的战力。对方已经不会成为威胁。
只要小心一下奇袭，就能轻易地应付。

　而且，现在我想要尽早地离开这里。
　
　确认大鸟主从是否平安才是我该最优先去做的事。

　如果进行并不必要的追击，奉陪敌骑的临死挣扎，那
才是最浪费时间的，完全是愚蠢的行为。
　
　…………那么结论是。

　我将<RUBY text="MetalEcho">装甲通信</RUBY>的波长与敌骑匹配。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,360);
	CP_IHPChange(0,5,null,false);
	CP_PowerChange(0,250,null,false);

	CP_SpeedChange(0,555,null,false);
	MyTr_Count(0,427);

	CP_HighChange(0,1250,null,false);

	$雰囲気方位計=Random(10)+40;
	CP_AziChange(0,$雰囲気方位計,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘b.png");
	Move("絵演立絵合体", 0, @0, @-100, null, true);
	Zoom("絵演立絵合体", 0, 40, 40, null, true);
	Request("絵演立絵合体", Smoothing);

	MoveFRP1("@絵演航空背景",30000,30,30);
	MoveFRP2("@絵演立絵合体",28000,20,20);

	FadeDelete("絵演", 1000, true);

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0040a00">
《交战中的敌骑注意。
　请立刻脱离战斗空域。》


//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0050a00">
《贵骑的热量状况我已看破。
　我断定贵骑无法继续战斗。》


{	FwL("cg/fw/fwガッタイダー_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0060b33">
《…………》


{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0070a00">
《我无意击坠贵骑。
　贵骑的所属以及目的我已基本推测到，并
判断不必急于歼灭贵骑。》


//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0080a00">
《贵骑若撤退，我发誓不会进行追击，并且也
会离开此处。》


{	FwL("cg/fw/fwガッタイダー_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0090b33">
《…………》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……没有回答。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0100a00">
《重复一遍。
　请离开这个空域。》

//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0110a00">
《如果贵骑希望交战到底，我也只得应战。
　
　贵骑应该已经理解了，以贵骑的战力现在不
可能击破我。》


{	FwL("cg/fw/fwガッタイダー_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0120b33">
《————》


{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0130a00">
《贵骑战斗技术拙劣。
　以这种本领操纵奇怪的机体交战至此，我赞
赏贵骑的胆力。但若不知适时撤退，这种豪胆
也只是浪费。》

//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0140a00">
《如果想要打倒我，首先应该寻找合适的老师
修行武者之道。
　为了这个目的，这次贵骑撤退也是上策。这
是我的忠告。》

//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0150a00">
《做个决断吧。》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　没有回答。

　回答是————

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ボーディ２】
<voice name="ボーディ２" class="ボーディ２" src="voice/mc03/023vs0160b08">
《诶……诶嘿嘿嘿嘿嘿嘿……》

//【ライター２】
<voice name="ライター２" class="ライター２" src="voice/mc03/023vs0170b10">
《嘻嘻嘻嘻……》

//【レフター２】
<voice name="レフター２" class="レフター２" src="voice/mc03/023vs0180b13">
《嘻呀嘻呀嘻呀嘻呀——》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0190b33">
《啊哈哈哈！
　哼哼，哈哈哈哈哈哈哈哈哈哈！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　……没有回答。
　没有能称之为回答的东西。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0200a01">
《主君。》


{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0210a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　轻轻的声音像是要催促我下定决心。我咬牙握紧了太
刀的刀柄。
　对方果然疯了吗。我们无法进行正常的对话吗。


　但是，该怎么办。
　敌骑现在只剩下着陆所必须的最低限度热量了。


　应该已经什么都做不到了——
　
　但只有恶意在不断增长。

　甚至那黑色的阳炎映在了我的视网膜中。
　敌骑的恶意没有止境。


</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガッタイダーＲ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ライター２】
<voice name="ライター２" class="ライター２" src="voice/mc03/023vs0220b10">
《他说知道……》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="レフター２" src="voice/mc03/023vs0230b13">
《知道我们的目的。》


{	FwL("cg/fw/fwガッタイダーＨ_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0240b33">
《不过，<RUBY text="·····">没有被杀掉</RUBY>啊。》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="ボーディ２" src="voice/mc03/023vs0250b08">
《嘻，嘻嘻嘻嘻嘻……》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="レフター２" src="voice/mc03/023vs0260b13">
《还让我们逃跑。》


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="ライター２" src="voice/mc03/023vs0270b10">
《让我们回去修行再来。》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="ボーディ２" src="voice/mc03/023vs0280b08">
《咦嘻嘻嘻嘻嘻嘻嘻嘻！》


{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0290a00">
「………………」


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="ライター２" src="voice/mc03/023vs0300b10">
《不过，打不赢。》


{	FwL("cg/fw/fwガッタイダーＨ_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0310b33">
《打不赢啊。》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="レフター２" src="voice/mc03/023vs0320b13">
《打不赢。》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="ボーディ２" src="voice/mc03/023vs0330b08">
《呜嘻……》


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="ライター２" src="voice/mc03/023vs0340b10">
《怎么办呢。》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="レフター２" src="voice/mc03/023vs0350b13">
《怎么办？》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="ボーディ２" src="voice/mc03/023vs0360b08">
《咦……咦嘻……》


{	FwL("cg/fw/fwガッタイダーＨ_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0370b33">
《什么怎么办。
　只能这么办吧。对吧？》


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="ライター２" src="voice/mc03/023vs0380b10">
《嗯。》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="レフター２" src="voice/mc03/023vs0390b13">
《是呀。》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="ボーディ２" src="voice/mc03/023vs0400b08">
《咯咯咯咦嘻……》


{	FwL("cg/fw/fwガッタイダーＨ_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0410b33">
《打不赢也不要紧。》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="レフター２" src="voice/mc03/023vs0420b13">
《杀掉就好。》


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="ライター２" src="voice/mc03/023vs0430b10">
《杀掉就好。》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="ボーディ２" src="voice/mc03/023vs0440b08">
《咦……咯……》


{	FwL("cg/fw/fwガッタイダーＨ_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0450b33">
《杀了吧。》


{	FwL("cg/fw/fwガッタイダーＲ_通常.png");}
//【ライター２】
<voice name="ライター２" class="ライター２" src="voice/mc03/023vs0460b10">
《杀了吧。》


{	FwL("cg/fw/fwガッタイダーＬ_通常.png");}
//【レフター２】
<voice name="レフター２" class="レフター２" src="voice/mc03/023vs0470b13">
《杀了吧。》


{	FwL("cg/fw/fwガッタイダーＢ_通常.png");}
//【ボーディ２】
<voice name="ボーディ２" class="ボーディ２" src="voice/mc03/023vs0480b08">
《咦哈————————————!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ボーディホーン準備
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/絵演", 19010, Center, 144, "cg/ev/ev922_ガッタイダーボーディホーン準備_b.jpg");
	Move("絵窓/絵演", 5000, @0, @-190, null, false);

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	CreateTextureSP("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_立ち_通常b.png");
	Move("絵演立絵合体", 0, @0, @-60, null, true);
	Request("絵演立絵合体", Smoothing);
	Zoom("絵演立絵合体", 0, 80, 80, null, true);

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0490a01">
《主君，那个！》


{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0500a00">
「白费力气！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　对龙骑兵用高速彻甲弹。
　但是……那种大炮，在难以维持平衡的状态下射击，
一般是无法命中的。

　而且我也不必站在原地等对方射击。
　
　我扇起<RUBY text="翅膀">翼型装甲</RUBY>，准备高速回避。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_立ち_通常b.png");
	Move("絵演立絵合体", 0, @0, @-100, null, true);
	Zoom("絵演立絵合体", 0, 40, 40, null, true);
	Request("絵演立絵合体", Smoothing);

	Zoom("絵窓", 300, 1000, 0, Dxl2, true);
	Delete("絵窓");

//◆回避
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_SpeedChange(0,525,null,false);
	MyTr_Count(300,510);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　……明明知道了劣势无法挽回。
　为什么还要这样不知放弃！

　但即使如此，这也是最后一击了。
　只要能够避开这一弹，那个怪物就没有攻击方法了。

　只要将这一弹——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 19100, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_b.jpg");
	Fade("絵演", 1000, 1000, null, true);

	SetFwL("cg/fw/fwガッタイダーＨ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0510b33">
《宴会》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0520b33">
《现在》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/023vs0530b33">
《结束————————————!!》

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 300, 0, null);

//◆ガッタイダー分離
	CreateSE("SE01","se特殊_鎧_ガッタイダー分離");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 19100, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_c.jpg");
	FadeDelete("絵色白", 1000, true);

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0540a00">
「什么——」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0550a01">
《现在!?》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　敌骑————分离了！
　分为了四骑，<RUBY text="······">向我射了出来</RUBY>。

　就是说，

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0560a00">
「自杀攻击!?」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　利用最后的热量！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Delete("絵演立絵*");

	CreateTextureSP("絵演立絵合体右", 1000, Center, Middle, "cg/st/3dガッタイダーＲ_騎航_通常.png");
	Move("絵演立絵合体右", 0, @-256, @576, null, true);
	Zoom("絵演立絵合体右", 0, 150, 150, null, true);
	Rotate("絵演立絵合体右", 0, @0, -180, @0, null,true);

	CreateTextureSP("絵演立絵合体左", 1000, Center, Middle, "cg/st/3dガッタイダーＲ_騎航_通常.png");
	Zoom("絵演立絵合体左", 0, 150, 150, null, true);
	Move("絵演立絵合体左", 0, @200, @-400, null, true);
	Rotate("絵演立絵合体左", 0, @0, -180, @0, null,true);

	Request("絵演立絵合体", Smoothing);

	CreateSE("SE00","se戦闘_動作_空上昇01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	DrawDelete("絵演", 150, 100, "zoom_01_00_0", true);

//◆ライター、レフターが順に突進
//◆がしがし。食らう。
	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演立絵合体左", 400, @-800, @400, null, true);

	Wait(200);

	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体左", 0, @0, 0, 60, null,true);
	Zoom("絵演立絵合体左", 200, 3000, 3000, Dxl2, false);
	Move("絵演立絵合体左", 200, @300, @-100, null, false);

	Wait(170);

	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("絵色白", 19900, "#FFFFFF");

	Wait(12);

	Delete("絵演立絵合体左");

	CreatePlainEX("絵板写", 1000);
	Fade("絵板写", 0, 300, null, true);
	Shake("絵板写", 700, 20, 20, 0, 0, 500, Dxl1, false);
	MyLife_Count(300,300);
	CP_IHPChange(300,4,null,false);
	CP_SpeedChange(2000,500,null,false);
	MyTr_Count(300,457);
	Shake("@CP_Frame*", 700, 30, 0, 0, 0, 1000, Dxl2, false);

	Delete("絵演立絵合体左");
	Wait(10);
	FadeDelete("絵色白", 200, true);

//あきゅん「演出：右のターン」
	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体右", 0, @0, -180, 90, null,true);
	Move("絵演立絵合体右", 400, @100, @-1000, null, true);

	Wait(200);

	Move("絵演立絵合体右", 0, @700, @0, null, true);


	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体右", 0, @0, @0, -90, null,true);
	Zoom("絵演立絵合体右", 200, 3000, 3000, Dxl2, false);
	Move("絵演立絵合体右", 200, @-400, @100, null, false);

	Wait(170);

	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("絵色白", 19900, "#FFFFFF");

	Wait(12);

	Delete("絵演立絵合体右");

	CreatePlainEX("絵板写", 1000);
	Fade("絵板写", 0, 300, null, true);
	Shake("絵板写", 700, 20, 20, 0, 0, 500, Dxl1, false);
	MyLife_Count(300,240);
	CP_IHPChange(300,3,null,false);
	CP_SpeedChange(2000,450,null,false);
	MyTr_Count(300,366);
	Shake("@CP_Frame*", 700, 0, 30, 0, 0, 1000, Dxl2, false);

	Wait(10);
	FadeDelete("絵色白", 200, true);

	SetFwL("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0570a00">
「呜……！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　我从正面受到了<RUBY text="··">双脚</RUBY>的突击。
　距离不够我躲开。

　肩部和胸甲受损。
　并不是严重的损伤——但一瞬间我的动作停住了。


　不妙。
　这是敌人的目的……！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ボーディホーン
	CreateSE("SE02","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 19010, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_c.jpg");
	CreateTextureSP("絵演", 19000, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_c.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Cockpit_AllFade0();

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0580a01">
《躲开!!》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　向哪躲？

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆選択：上／下／右／左

}

..//ジャンプ指定
//◆上　"mc03_023vsa.nss"
//◆下　"mc03_023vsb.nss"
//◆右　"mc03_023vsb.nss"
//◆左　"mc03_023vsb.nss"

//★選択肢シーン
scene mc03_023vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm12",0,1000,true);
	CreateTextureSP("絵演", 100, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_c.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice04("上","下","右","左");
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
			ChoiceA04();
//◆上　"mc03_023vsa.nss"
				$GameName = "mc03_023vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆下　"mc03_023vsb.nss"
				$GameName = "mc03_023vsb.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆右　"mc03_023vsb.nss"
				$GameName = "mc03_023vsb.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆左　"mc03_023vsb.nss"
				$GameName = "mc03_023vsb.nss";
		}
	}
}