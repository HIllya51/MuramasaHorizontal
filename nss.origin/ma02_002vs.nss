//<continuation number="1080">

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

scene ma02_002vs.nss_MAIN
{

	$TITLE_NOW=" ————　第二篇 双老骑　———— ";

//嶋：コックピット用Ｓｅｔ
	CP_AllSet("村正");

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
	#bg010_拘置所外観_01=true;
	#bg004_鄙びた村a_01=true;
	#bg020_山脈坑道_01=true;
	#bg005_山中_01=true;
	#bg002_空a_01=true;
	#bg202_旋回演出背景山_01=true;

	#ev504_村正突進=true;
	#ev958_長坂馬乗り=true;
	#ev903_村正磁気バリアー展開=true;


	//▼ルートフラグ，選択肢，次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_003.nss";

	CP_AllDelete();

}

scene ma02_002vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"ma02_001.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆第二編「双老騎」

	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕１", 1500, "Black");
	Delete("上背景");

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第二編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);

	PrintGO("上背景", 25000);

	OnBG(10,"bg010_拘置所外観_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm16",0,1000,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　事态发展的速度不是一般的急剧。
　尽管最初并非如此。

　在拘留所出现的村正报告说捕捉到银星号的香气，之
后联络镰仓警察署长，办妥出所手续，囚徒凑斗景明变
成警察属员凑斗景明离开狱室。

　接着在村正的指引下，来到镰仓近郊的贫寒山村。
　到此为止都是已经熟稔的步骤，也没有值得一提的变
故。

　可是到达村子后三十分钟内的事态发展，却足以匹敌
过去数日。
　这个村子时钟指针的转动速度无疑比其它地方快上很
多。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村
	OnBG(10,"bg004_鄙びた村a_01.jpg");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　发现贫穷的小村笼罩在躁动的气氛中，于是叫住
一个村民，打听到有ＧＨＱ军官前来巡察的事情。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆坑道前
	OnBG(10,"bg020_山脈坑道_01.jpg");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　跟在军官后面移步到村外开发中的矿山一看，恰好遭
遇无情的六波罗士兵向劳累过度力尽倒地的矿工挥下刀
刃的场面。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_攻撃_ライフル撃つ01",1000);
	Fade("フラッシュ白",100,1000,null,true);

//◆香奈枝発砲
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStR(0,true);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　还没来得及阻止，只听枪声响起，骚乱人群归于寂静，
士兵倒在自己的血泊中，身着进驻军军服的大和裔女性
拂去枪口硝烟。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝と長坂
	CreatePlainSP("絵板写", 5000);
	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服a2.png");
	FadeStA(0,true);
	FadeDelete("絵板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　看上去像是六波罗方头领的军官与女性剧烈争执后
恼羞成怒，装备上剑胄并拔出太刀凶相毕露。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//◆竜騎兵·長坂
	StL(1000, @0, @0,"cg/st/3d八八式指揮官_立ち_抜刀.png");
	FadeStL(300,true);

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　刹那间，村正的剑胄传音刺激耳膜，震撼脑髓。
　——《主君，银星号的气息！　那个是被植入卵的
寄生体！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	PrintGO("上背景", 15000);
//	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg001_空a_01.jpg");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg005_山中_01.jpg");

	OnSE("se特殊_鎧_装着01",1000);
	CreateTextureSP("絵ＳＴＣ100", 1000, Center, InBottom, "cg/st/3d村正標準_立ち_通常.png");
	CreatePlainSP("絵板写", 10000);
	Delete("絵ＳＴＣ100");
	CreateTextureSP("絵ＳＴＣ200", 1200, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");

	CreateTextureEX("絵村正１", 2000, 0, -188, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureEX("絵村正２", 2100, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureEX("絵村正３", 2000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	SetBlur("絵村正１", true, 3, 500, 50, false);

..//嶋：BGM
//あきゅん「演出：開始位置調整」
	//SoundPlay("@mbgm11",0,1000,true);
	FadeDelete("上背景", 300, true);

	OnSE("se戦闘_動作_刀構え02",1000);
	FadeDelete("絵板写", 300, true);

	Wait(300);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("絵村正１", 400, 1000, null, false);

	Move("絵村正１", 500, @-1024, @0, Axl1, false);
	Wait(350);
	Shake("絵村正２", 100000, 0, 1, 0, 0, 500, null, false);
	Fade("絵村正３", 500, 1000, null, false);
	Fade("絵村正２", 500, 1000, null, true);

	SoundPlay("@mbgm08",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　于是。
　我还没有弄清具体状况，就不得不装备村正
急速冲出。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵背景", 20000, "Black");
	DrawTransition("絵背景", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	PrintGO("上背景", 20000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");

	OnSE("se戦闘_動作_刀構え01",1000);
	CreateTextureSP("立ち絵", 500, Center, InBottom, "cg/st/3d八八式指揮官_立ち_戦闘.png");


	DrawDelete("上背景", 500, 1000, "slide_01_02_1", true);

	Wait(500);

//◆フライトモニター展開
//◆ＣＩ剣撃
	CreateTextureEX("絵ef100", 1000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");

	Request("絵ef100", Smoothing);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	Fade("フラッシュ白",100,1000,null,true);

	Fade("絵ef100", 200, 1000, null, true);

	Fade("フラッシュ白",300,0,null,true);

	Delete("フラッシュ白");

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　卷起疾风，如迅雷般疾驰的太刀轨迹——
　刀刃直指长发飘飘的军装丽人，距离她与身旁老妇一
同成为大胆外科手术的实验品的时间只剩四分之一秒，
可谓若有若无的间隔。

　这就足矣。
　花费锐利锥尖刺破薄纸一张的时间，挤入两者的间隙，
挥刀弹开饱含杀意的闪光。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＩ剣撃。ガシーン。

	Zoom("絵ef100", 500, 3000, 3000, Dxl1, false);

	Wait(250);

	OnSE("se戦闘_攻撃_刀振る02",1000);
	CreateMovie("ムービー１", 1200, Center, Middle, false, false, "dx/mv剣戟_下から上.ngs");

	WaitAction("ムービー１", null);

	CreateColorEXadd("フラッシュ白", 20000, "WHITE");

	OnSE("se戦闘_攻撃_刀衝突01",1000);
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵ef100");
	Delete("ムービー１");

//嶋：村正ステータス装甲720
	MyLife_Count(0,720);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,400,null,false);

	CP_SpeedChange2(0,0,null,false);
	MyTr_Count(0,254);

	CP_HighChange2(0,3,null,false);
	CP_AziChange(0,112,null,false);
	CP_AltChange(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	Cockpit_AllFade2();

	Request("絵背景100", Smoothing);
	Request("立ち絵", Smoothing);
	SetBlur("絵背景100", true, 3, 500, 50, false);
	SetBlur("立ち絵", true, 3, 500, 50, false);

	Shake_Delete(200,300,false,"cg/bg/bg020_山脈坑道_01.jpg");
	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……没有听到惊愕的呼声。

　差点成为尸骸的两人的肉体感觉无法赶上武者的举动
——刀刃走偏，深深砍裂土地的龙骑兵现在估计也正沉浸
于完成报复的梦想中。
　意识到梦想与现实之龃龉要在不久的未来。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_鎧歩く04",1000);
	Move("絵背景100", 300, @0, @+50, null, false);
	Move("立ち絵", 300, @0, @+100, null, false);
	Zoom("絵背景100", 300, 1300, 1300, null, false);
	Zoom("立ち絵", 300, 1500, 1500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　决心贪婪地夺走这段时间，左脚前踏一步。
　巨大重量被集中到一点，脚底沉入山腹处的坚实地面。

　下肢如铁桩般陷入地表，以此为轴旋转身体，用右肘
突击六波罗武者的胸甲。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_跳躍02",1000);
	Zoom("絵背景100", 300, 2500, 2500, null, false);
	Zoom("立ち絵", 300, 2500, 2500, null, false);

	WaitKey(200);


//◆バーン。
	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);
	CreateColorSPadd("絵フラ白", 10000, "#FFFFFF");

	Delete("立ち絵");

	Zoom("絵背景100", 0, 2500, 2500, null, true);
	Move("絵背景100", 0, @0, @-50, null, false);

	WaitKey(50);


	Shake_Delete(1000,1000,false,"cg/bg/bg020_山脈坑道_01.jpg");

	Zoom("絵背景100", 500, 1000, 1000, null, false);
	FadeDelete("絵フラ白", 600, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　乘着前冲威势的打击，其造成的冲力足以将男性一人
连带剑胄一副击退九米之远。
　如打水漂的石片一般弹起落下，之后似乎终于觉察到
异变的发生，龙骑兵的眼窝指向我方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0010b45">
「什么……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StC(1000, @0,@+50,"cg/st/3d八八式指揮官_立ち_抜刀.png");

	OnSE("se人体_動作_跳躍01",1000);
	Move("@StC*", 300, @0, @-50, Dxl1, false);
	FadeStC(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　肘突的冲击看来没有波及脑部。
　男性官吏当即站起身来。流利的动作没有一丝摇晃。
而且站起来后，膝盖也没有丝毫颤抖。

　本就明白仅凭一记肘击不可能对武者造成致命伤，但
其恢复之迅速实在值得刮目相看。
　由此可以窥见此人实力不俗。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0020b45">
「竟然是武者!?
　你是哪个部队的人！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　对方视线从我的颈部扫动到肩上，估计是在寻找军章。
　如果是正规幕府兵，那自然是随身佩戴的东西。

　而当然，也不是我会持有的东西。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0030b45">
「……？
　总之，快让开！　这个村子属我管辖。不管
是哪来的武者，都没有横加干预的理由。」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0040b45">
「有意见就去向古河中将阁下提吧！」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0050a00">
「拒绝。
　此时此地，就要取你首级。」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0060b45">
「叛逆者吗……！」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0070a00">
「非也。并不属于军法上的叛逆行为。
　六波罗的指挥系统与本人毫无关系。」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0080b45">
「……什么？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　数秒的沉默。
　是在对不隶属六波罗的武者这一事实
进行消化吗。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0090b45">
「那你从属何处。
　进驻军吗。和那女人一样，是卖国之辈？」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0100a00">
「不属于任何组织。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　并没有撒谎。
　不仅表面上警察属员的身份得不到官方认可，
本质上更不用提，我根本没有资格自称警察。

　倒不如说是与之相对的一方。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0110a00">
「只需把我看作杀手就好。」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0120b45">
「杀手……？　哼。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　武者用鼻子哼了一声。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0130b45">
「是受人指使来杀我的吗。
　是谁？　那家伙在我的头上押了多少钱？」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0140a00">
「不。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　看来招致误解了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0150a00">
「既没有委托人，也没有报酬。」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0160b45">
「……不是杀手吗？」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0170a00">
「个人坚持而非盈利目的。
　主要的活动理由仅凭个人意愿。」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0180b45">
「那……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　即使覆盖着厚厚的护面，似乎也能看到他额上
青筋暴现的表情。
　心中怒气高涨，龙骑兵前进一步。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	StC(1000, @0,@0,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	Request("@StC*", Smoothing);

	OnSE("se戦闘_動作_鎧_踏み込み01",1000);
	FadeStC(300,false);
	Move("@StC*", 200, @0, @100, Dxl2, false);
	Zoom("@StC*", 200, 1200, 1200, Dxl2, true);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0190b45">
「那单纯就是杀人狂而已，蠢材！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteStC(0,true);

	Cockpit_AllFade0();

	WindowXSet(1000, 100);
	WindowXSetBG(1000, @+0, @+0,"cg/bg/bg020_山脈_01.jpg");
	WindowXSetSt(1000, @-150, @+100,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	WindowFadeBG(0,0,1000,null,"slide_01_01_0",false);

	Window_StMove(0, @-100, @0, null, true);

//嶋：ＳＥ一歩踏み出す
	OnSE("se人体_足音_鎧歩く04",1000);
	Window_StMove(500, @+100, @0, null, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　接下来的一步，是发动攻击的突进。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_跳躍02",1000);
	Window_StZoom(250, 2000, Dxl1,false);
	Window_StMove(300, @+500, @-100, Dxl1, false);
	Wait(200);

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_攻撃_刀振る02",1000);

	Fade("フラッシュ白",100,1000,null,true);

	Window_Delete(0, true);

//◆剣撃
	CreateTextureEX("絵ef100", 3000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵ef100", 100, 1000, null, true);

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　军刀自上段向下劈砍。
　仿佛切断绳索的断头铡刀般急速下落。

　尽管毫无松懈之意，但想避开这力量与速度兼备的
一剑一点也不轻松。
　右脚蹬地，侧身向后退避。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorEX("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵ef100");

	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Move("絵背景100", 0, @-100, @0, null, true);

	Cockpit_AllFade2();

	OnSE("se人体_動作_跳躍01",1000);
	Move("絵背景100", 300, @+100, @0, Dxl2, false);
	Zoom("絵背景100", 300, 1000, 1000, Dxl2, false);

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0200a00">
（原来如此）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　毛发被剑风吹拂飘动，心中暗自颔首。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0210a00">
（今后就这样自称好了）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	SetVertex("背景100", 0, 288);
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetBlur("絵背景100", true, 3, 500, 100, false);
	Request("絵背景100", Smoothing);

	CreateTextureEX("絵村正", 1000, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	Move("絵村正", 0, @-100, @+50, null, true);
	Zoom("絵村正", 0, 1200, 1200, null, true);
	Fade("絵村正", 0, 1000, Dxl1, false);

	Move("絵背景100", 400, @-50, @0, null, false);
	Move("絵村正", 600, @+300, @-50, Dxl3, false);
	Zoom("絵村正", 600, 1000, 1000, Dxl3, false);
	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　滑行数步距离后停下，转身正对敌手。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();

	Delete("絵村正");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	StC(1000, @+100,@+50,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	FadeStC(0,true);

	OnSE("se戦闘_動作_鎧_踏み込み01",1000);
	OnSE("se戦闘_動作_刀構え02",1000);
	Move("@StC*", 500, @-100, @-50, Dxl2, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
　六波罗武士的姿势完全没有破绽。迅速收回挥空
的剑，准备再次突进。
　尽管如此，还是用略显窝火的语调骂道。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0220b45">
「最近的年轻人都是些只擅长愚弄人的家伙吗。
没出息啊。
　记得我们这代年轻的时候，比你们现在有骨
气得多！」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0230a00">
「实在惭愧。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　尽管我并无愚弄之意。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0240a00">
（年长者对年轻者的批评据说在人类
史上极为普遍。虚心接受也罢）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0250a01">
《是这样吗？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0260a00">
（比如四千年前埃及的壁画上也都写着
『最近的年轻人啊』之类）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0270a01">
《哼嗯。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　相对距离约为五六米。
　在这种距离与武者对峙，无论如何也无法拭去心头的
违和感。

　武者的交战舞台本在天空。
　撇开翱翔苍天的双轮悬不用，以这种极近距离对峙的
情况极为罕有。

　这在对方而言也是一样吧。
　再次细看眼前武者的身姿。八八式龙骑兵甲。去除了
七点七毫米机枪，是仿效高级军官的惯例吗。这是大和
海军制式的剑胄。

　若此人是海兵队出身，那么地面战斗的经验应该
比陆军武者还少才对。
　身体轻轻摇动的举措，不仅是在权衡呼吸，或许还有
感到困惑的原因。

　若是如此——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0280a01">
《主君，把握先机。
　起飞夺取高位吧。》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0290a00">
「……不。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　在村正做出建议的同时，我心中也浮现出同样的想法，
但还是轻轻摇头拒绝。
　抢在敌骑之前起飞，夺取高度优势——这是武者战中
无须赘言的铁则。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0300a00">
「先等对手起飞。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0310a01">
《为何？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0320a00">
「我先行起飞时，留在身后的不仅是敌骑。」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0330a01">
《————》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　看来理解了。
　村正陷入沉默。

　转移到飞行不仅能够飞跃性地提高速度，也能百分百
地发挥作为武者的性能。
　不过与此同时，行动就不如在地上用双脚站立时那么
方便灵活。

　若敌骑在我起飞之后即刻追来那倒还好。
　但也有可能无视我的行为留在地表，把注意力转移回
最初的目标上。

　那种情况下，就不知道能否再度阻止了。
　……估计把握不大。

　只能将先手让给敌方。
　确定状况后，等待。

　等待。
　然而。

　————没有起飞。

　前方的龙骑兵没有离开地面，推进器保持冷却，没有
喷出火焰。尽管步伐的移动散发着危险气息，窥探着进
击时机，但那并非意欲升空飞翔的动作，双脚始终牢牢
陷入地面。

　莫非见我没有起飞，怀疑存在陷阱吗……？
　
　这样想也没错，或者说，

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0340a00">
（再往后的局势也预料到了吗）

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -144, "cg/bg/resize/bg003_荒れ野_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, -455, -500, "cg/st/resize/3d八八式指揮官_立ち_戦闘_l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);
//	BGMoveAuto("@絵演窓上/絵立絵",1);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　八八式的设计过于平实，注重点放在力量与护甲上，
飞行性能并无值得称道之处。在空中进行机动战的话，
即便一开始取得优势地位，也无法保证能够维持下去。

　当然，这也要根据对战敌手的性能而论。
　事实上八八式已经被看作旧型，海军现已开始转而
装备机动性得到提高的九四式。

　追求眼前利益起飞的话必定败北。
　比起这样，还不如停留在地上打开活路——是这样判
断的吗？

　若是如此，这份沉着老辣实在不容小觑。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0350a00">
（不能给他时间）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　在战斗中，时间拖得越久，对经验及手段丰富者往往
越是有利。
　必须缩短时间，不给他玩弄计策的余裕。

　也就是说，应该短兵相接。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	Delete("絵演窓上*");
	DeleteStC(0,true);
	Delete("絵色100");

	CreateTextureEX("絵村正", 1000, Center, InBottom, "cg/st/3d村正標準_立ち_戦闘.png");
	Move("絵村正", 0, @250, @140, null, true);

	Fade("絵村正", 0, 1000, null, true);

	OnSE("se戦闘_動作_刀構え02",1000);
	Move("絵村正", 300, 100, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0360a00">
「接我一刀。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え02",1000);
	WindowYSet(1200, 0,512);
	WindowYSetBG(1200, @+0, @+0,"cg/bg/bg003_荒れ野_01.jpg");
	WindowYSetSt(1200, @-250, @+80,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	WindowY_BGMove(500, @-75, @0, null, false);
	WindowYFadeBG(2,300,300,null,"slide_01_01_1",true);

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0441]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0370b45">
「来吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//嶋：駆けるEV
	OnSE("se人体_動作_跳躍01",1000);
	WindowY_WipeDelete(300, "slide_01_01_0", true);

	Wait(200);

	OnSE("se人体_動作_跳躍02",1000);
	Move("絵村正", 300, -1000, 50, Axl3, false);

	CreateTextureEX("絵ef100", 2000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureEX("絵ef200", 2000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	SetBlur("絵ef200", true, 3, 500, 100, false);

	Wait(200);

	Fade("絵ef100", 100, 1000, null, false);
	Fade("絵ef200", 0, 1000, null, false);
	Zoom("絵ef200", 500, 2000, 2000, Dxl1, false);
	Fade("絵ef200", 500, 0, Dxl1, true);
	Delete("絵ef200");
	Delete("絵村正");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　降低重心前冲。
　右脚蹬地时低头，左脚踏地时屈背。仿佛在地表窜行
的毒蛇一般，几乎擦到地面。我将头探到敌手身前。

　用太阳下的敌影遮住自己身形。在影中跃起身躯，送
出太刀。
　向上劈砍——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵ef100");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	StC(1000, @-50,@+330,"cg/st/3d八八式指揮官_立ち_戦闘.png");
	Request("@StC*", Smoothing);
	Zoom("@StC*", 0, 2000, 2000, null, true);
	FadeStC(0,true);

	Move("@StC*", 300, @50, @-30, Dxl1, false);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460a]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0380b45">
「哼！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆縦割り剣閃

	CreateColorEX("絵色100", 15000, "Black");

	Fade("絵色100", 100, 1000, null, true);
	Delete("絵背景100");
	DeleteStC(0,true);

	SL_down2(16000,@0, @0,1000);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_downfade2(10);


	CreateColorEXadd("フラッシュ白", 16000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵色100");

	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460b]
　抢占先机。
　早已摆好架势，正中砍下一闪。

　六波罗武士挥下的军刀准确地向我头盔的顶部狙击。
　
　——正如预料。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆撃剣。がーん。
	CreateColorEX("絵色100", 15000, "Black");

	Fade("絵色100", 100, 1000, null, true);
	Delete("絵背景100");
	DeleteStC(0,true);

	SL_up2(16000,@0, @0,1000);
	OnSE("se戦闘_攻撃_刀振る02",1000);
	SL_upfade2(5);

	CreateTextureEX("絵ef100", 16000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	CreateTextureEX("絵ef200", 16000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	SetBlur("絵ef200", true, 3, 500, 50, false);

	OnSE("se戦闘_攻撃_刀衝突01",1000);
	Fade("絵ef100", 100, 1000, null, false);
	Fade("絵ef200", 0, 1000, null, true);

	Zoom("絵ef200", 500, 3000, 3000, Dxl1, false);
	Fade("絵ef200", 500, 0, Dxl1, true);

	CreateColorEX("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵ef100");
	Delete("絵ef200");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");

	CreateTextureSP("絵St100", 1000, -500, -500, "cg/st/resize/3d八八式指揮官_立ち_戦闘_l.png");
	Zoom("絵St100", 0, 750, 750, null, true);
	Request("絵St100", Smoothing);
	SetBlur("絵St100", true, 2, 300, 100, false);

	Cockpit_AllFade2();

	Delete("絵色100");

	MyLife_Count(200,712);
	CP_PowerChange(5000,320,null,false);

	MyTr_Count(500,425);

	Move("絵St100", 500, @0, -580, Dxl2, false);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　将作势上砍的剑收回手中，向上格挡，与下砍的军刀
相互激突，反冲，最后卸去力道。
　刀刃的方向被改变，擦过肩甲。

　如此一来，在我眼前，
　敌武者的侧腹毫无防备地展露出来。

　——吉野御流合战礼法，错之形。
　
　以我头顶引诱敌方剑击，格挡卸力后击其空隙——

　翻转手腕挥出一斩。
　抓住与囊中之物无异的空隙，用太刀准确无误地斩击。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆ガキーン
	CreateColorEX("絵色100", 16000, "Black");
	Fade("絵色100", 100, 1000, null, true);

	SL_left2(20000, @0, @0, 1500);
	SL_leftfade2(10);

	CreateColorEXadd("フラッシュ白", 21000, "WHITE");

	CreateSE("SE01a","se戦闘_攻撃_鎧攻撃命中03");
	OnSE("se戦闘_攻撃_刀衝突01",1000);
	MusicStart("SE01a",0,800,0,700,null,false);

	Fade("フラッシュ白",0,1000,null,true);

	FrameShake_Ran();
//	RFlash();

	Delete("絵色100");

//嶋：ＳＥ鍔ぜり
	CreateSE("SE01","se戦闘_攻撃_刀衝突02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵St100", 1000, -535, -120, "cg/st/resize/3d八八式指揮官_立ち_戦闘_l.png");
	Zoom("絵St100", 0, 1750, 1750, null, true);
	Request("絵St100", Smoothing);

	SetShade("絵背景100", MEDIUM);
	Shake_Loop("@絵St100","shake01");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0390a00">
「——呃。」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0400b45">
「成绩勉强过得去。
　不过……这还不够！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　本应深深砍入胴甲的刀刃，被翻转的敌刃生生挡住。

　——太快了。
　全力剑击被卸去之后，竟能即刻做出如此动作，不
管是反应也好，运剑也好，都远远偏离常轨。

　即便作为武者，也实在不合情理。
　
　……也就是说。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0410a01">
《是预先识破了吗……？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0420a00">
（看来是这样呢）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　在心中反思方才的一回合。
　……敌骑袭向我头顶的一刀，格挡时的手感轻得出奇。
尽管刀势锋芒依旧。

　是觉察到我诱其出刀的意图，事先减弱手腕力道，以
备转变太刀轨迹吗……？
　若是如此，落得如此结果也只能心服口服。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0430b45">
「小子，有过从军经验吗？」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0440a00">
「之前的大战中，抱着村田枪在菲律宾密林里
打过两年。」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0450b45">
「我在最前线呆的时间是你的六倍。
　小毛孩二等兵，你还在流鼻涕的时候，我就
已经在大陆转战建功。这把久经磨砺的刀，可
不想被你太过小看啊！」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0460a00">
「了解。今后铭记在心。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//嶋：Ｓｔズーム，なおかつツルギの鍔ぜりあい。
//	CreatePlainSP("絵板写", 10000);
	Request("絵St100", Smoothing);
	SetBlur("絵St100", true, 3, 500, 60, false);

	CreateSE("SE01","se戦闘_攻撃_剣戟弾く03");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Shake("絵St100", 700, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵St100", 200, 1800, 1800, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　对方在至近距离发出无畏的笑声，而我则以视线报以
肯定。
　交架在一起的刀刃吱吱发出尖锐声响。平凡力道无法
伤其分毫的钢刃相互割削，散落下银色的细屑。

　支撑太刀的双腕承受着令人生畏的重压。
　甲铁，皮肤还有筋肉下的骨头都在吱吱作响。仅以八
八式的性能无法解释的这份刚强之力，恐怕是以其中操
纵者非比寻常的膂力驱动的吧。

　……不。
　仅是如此还不够吗？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0470a00">
「问你一事。」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0480b45">
「什么。」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0490a00">
「你是否知道银星号？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　窥其表情。
　尽管面容被覆盖，但能探知气息。在这种近距离下
并无障碍。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0500b45">
「……银星号？
　是指最近突然风传的杀人魔之类的？　
传闻总是不胫而走的东西呢……」


{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0510b45">
「你说那个怎么了。」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0520a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　意识到这是无意义的问题。
　男人的声音没有一丝踌躇。

　什么也不知道。即便被给予了“卵”。
　不过，这种事情也不是未有前例。估计是<RUBY text="·">她</RUBY>认为
没有和这个男人见面的必要吧。

　既然如此，这在当下就只是杂念而已。
　忘在脑后，专心打开目前局势——然而，
这也无法随我所愿。

　对我方而言，力量本是长处，即便是现在已经丢失的
大长刀也能毫不费力地使用，而且现在身体也能发挥全
力。但即使是这样，也无法轻易压倒这个敌手。
　角力竞争的微弱优势在瞬息间反复易主。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0530a00">
（胜负难分……分不出胜负）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0540a01">
《可是主君，不能退让。》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0550a00">
（我知道）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　退让就是死。
　拨开敌方之剑向后跳跃，同时斩击——估计
梦想耍弄这种小聪明时就会被撞倒斩杀。

　反过来说，对手所处的立场也是一样。
　——双方如今都是背水一战。

　也就是说除了前进以外没有别的路可走。
　两脚深深陷入地面，竭尽全力前压。

　同等的力量像回音一般与我相互抗衡——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	FrameShakeDelete();

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0560a00">
「……呃？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//嶋：リサイズ画像をさらにズーム
	CreateSE("SE01","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Shake("絵St100", 700, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵St100", 200, 1900, 1900, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　没有？

　向前压的刀刃没有遇到抵抗，
　就这样向敌方压去。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0570a00">
（退却了？　能压过去吗？）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　这过分便宜的状况让我产生瞬间踌躇。
　
　……但这已经绰绰有余了吧。

{	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　有什么突然滑到两腕之间。
　蛇。

　——刀柄。

　军刀的刀柄冷不防地，
　探入我两腕之间。

　敌方不知何时放开军刀的左手……
　再次握住刀柄。

　如钩子一般缠绕在一起，手腕与手腕，剑与剑。
　
　这意味着什么？
　这个姿势是什么？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0580b45">
「……虽然这只是小花招。
　但也有派上用场的时候。」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0590a00">
「!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//	Zoom("絵板写", 200, 1200, 1200, Dxl2, true);
	OnSE("se戦闘_動作_刀構え01",1000);
	Move("絵St100", 200, @0, @150, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　龙骑兵让军刀回旋。
　刀柄卡住我的两腕——扭转。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0600a01">
《手腕擒拿!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　用剑使出的关节技！

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

	Shake("@CP_Frame", 500, 5, 3, 0, 0, 500, null, false);

	OnSE("se戦闘_攻撃_鎧_絞める01",1000);
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 2000, 700, Dxl3);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",200,0,null,true);
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

	MyLife_Count(200,661);
	CP_PowerChange(5000,411,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0671]
　手肘和手腕一同发出悲鸣。
　剧痛直刺脑髓。

　覆盖的甲铁毫无意义。
　这既非斩击也非打击的攻击方式是钢壁
无法防御的。

　皮肉被撕扯，筋骨被弯折。
　这样下去会被折断。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0610a00">
「嘁——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え01",1000);

	Zoom("絵St100", 200, 1800, 1800, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　没有选择余地。
　撒手放开太刀，飞身向后闪避。

　虽然知道这样做会有什么结果。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0620b45">
「退缩了吗，小毛孩！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　对方不可能放过这个机会。
　六波罗武者即刻将我后退的距离重新
追回，并将刀刃压向我的肩口。

　勉勉强强挡住他的双臂。
　脚下失去平衡。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆倒れる
//◆ＳＥと竜騎兵アップで誤魔化せるか。

	Zoom("絵St100", 300, 3000, 3000, Axl2, false);
	Rotate("絵St100", 300, @0, @0, @90, Axl2,false);

	OnSE("se戦闘_衝撃_鎧転倒01",1000);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	DeleteStC(0,true);
	Delete("絵背景100");
	Delete("絵St100");
	Delete("絵St100");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	SetShade("絵背景50", HEAVY);

//嶋：リサイズ希望
//	CreateTextureSP("絵St50", 1000, Center, Middle, "cg/st/3d八八式指揮官_騎航_戦闘.png");
	CreateTextureSP("絵St50", 1000, Center, Middle, "cg/ev/resize/ev958_長坂馬乗り_l.png");
//	Zoom("絵St50", 0, 3000, 3000, null, true);
	SetBlur("絵St50", true, 2, 300, 100, false);
	Zoom("絵St50", 0, 1000, 1000, null, true);
	Request("絵St50",Smoothing);
//	Rotate("絵St50", 0, @0, @0, @30, null,true);
//	Move("絵St50", 0, @+100, @+400, null, true);
//	BGMoveAuto("@絵背景50",3);
//	BGMoveAuto("@絵St50",5);
	Shake_Loop("@絵St50","shake01");
//	FrameShake();
	FrameShake_Ran();

	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ01",1000);

	Zoom("絵St50", 500, 550, 550, Dxl3, false);
//	Move("絵St50", 300, @0, @+100, null, false);
	DrawDelete("黒幕１", 300, 100, "slide_02_01_0", true);



	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0630b45">
「哈——」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0640a00">
「呃……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[t愉悦的眼神俯视着我，
　而我则咬牙切齿地仰头还以目光。

　敌手如今采取乘骑之势，把全身重量放在
剑上向我压来。
　瞄准的是——颈项根部，甲铁的间隙……

　就算抓住手腕进行抵抗，优劣之分也显而易见。
　和之前的态势不同。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0650b45">
「那么……」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0660a00">
「……」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0670b45">
「再嚣张的小鬼这样一来也得老实了吧。
　我再问一次。你是什么人？」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0680a00">
「我已说过。
　是来取你性命之人。」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0690b45">
「理由是什么？」

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0700a00">
「个人意愿。」

{	FwR("cg/fw/fw八八式_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0710b45">
「是吗。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_鎧_ひび割れ02",1000);
	Zoom("絵St50", 400, 600, 600, AxlDxl, false);
	Move("絵St50", 400, @0, @30, AxlDxl, true);

	CreateColorEXmul("フラッシュ", 20000, "RED");
	Fade("フラッシュ",100,800,null,true);
	DrawDelete("フラッシュ", 300, 1000, "slide_05_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　冰冷的触感。
　刀刃已经陷入颈部皮肉。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0720b45">
「冥顽不化的傻瓜看来需要更激烈的疗法呢！
　就让我来试试，看是你的固执先屈服还是你的
脑袋先被切下来！」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0730a00">
「……唔!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_鎧かする01",1000);
	Zoom("絵St50", 300, 680, 680, AxlDxl, false);
	Move("絵St50", 300, @0, @20, AxlDxl, true);

	CreateEffect("エフェクト１", 18000, 0, 0, 1024, 576, "NegaPosi");
	Fade("エフェクト１", 0, 0, null, true);


	OnSE("se人体_体_心臓の音02",1000);
	Fade("エフェクト１", 300, 700, Dxl1, true);
	Fade("エフェクト１", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　寒意侵蚀体内。
　尽管实际侵入体内的刀刃尚且只有数毫米，可其中生
出的恶寒已经传遍全身上下。要是再深一厘米，感觉全
身都会结冰冻僵。

　虽然到那个时候，或许什么也感觉不到了。
　喉管被切入一厘米，要活命就很难了吧。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0740a00">
（这种询问手法有一个问题）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0750a01">
《……什么？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0760a00">
（像这样不是说不出话来了吗）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0770a01">
《是呢。要是对方能在你死去之前意识到那倒
还好。
　要怎么办？　要试着把期待放在人类的智慧
上，继续像这样任人鱼肉吗？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0780a00">
（虽说一味相信他人之愚蠢者是低能，可一味
相信他人之贤明者，则是无能。
　还是算了吧）

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0790a00">
（启动导源。用阴义脱身）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0800a01">
《……在这种状况下？　你说真的吗？》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0810a00">
（大体上是这个打算。
　听我的，村正。现在没有时间辩论）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0820a01">
《——了解。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, null);
	SoundPlay("@mbgm13",1000,1000,true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　缓缓吐出一口长气。
近得过分的敌刃无疑让我心感焦虑，但更需要沉静下来。
光是使劲喘一口气或许就会使我丢掉性命，
生死间的距离仅有一线。

　伴随着最后的吐气，放松紧张的双腕。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_鎧歩く03",1000);
	Zoom("絵St50", 200, 690, 690, AxlDxl, false);
	Move("絵St50", 200, @0, @10, AxlDxl, true);

//	Shake("絵St50", 500, 0, 10, 0, 0, 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0791]
　阻挡敌刃的腕力毫无疑问是我的生命线。犹如濒临陷
落的要塞中仅存的一门大炮。
　毫不犹豫地瞬间将其放弃掉。

　——在生与死的境界线上单足起舞。
　脑浆在甘美的诱惑与漆黑的恐怖中沸腾。

　会怀疑这是疯狂行为的，或许不仅是村正。
　现在脆弱的颈部处于完全无防备状态，即便是孩童也
能轻易取我性命。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_鎧歩く04",1000);
	Zoom("絵St50", 200, 650, 650, AxlDxl, false);
	Move("絵St50", 200, @0, @-60, AxlDxl, true);

	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0830b45">
「——!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　然而武者却踌躇了一个刹那。
　估计正因为他是久经战阵的老兵。战斗中见到突然
摆在眼前的美味饵料，就喜出望外冲上前去的后果，
他是再明白不过。

　若是经验尚浅者想必会毫不犹豫地挥刀砍下。如此
一来胜利就到手了吧。
　但这位老兵却止住了自己的手与剑。

　产生了极为细微的时间间隙。
　
　若无法抓住这机会，那我理应毙命于此。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 20000, "Black");

	Fade("絵色100", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811]
　急剧短促地吸气。
　约一拳分量的空气，这就足矣。

　吸入的空气沉入丹田，流淌，卷起漩涡。
　自由，奔放，不断扩张的波动。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se特殊_陰義_発動04",1000);
//	CreateTextureEXsub("絵ef100", 18000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
//	CreateTextureEXsub("絵ef200", 18000, Center, Middle, "cg/ef/ef021_汎用陰義発動a.jpg");
	CreateTextureEXadd("絵ef100", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEXadd("絵ef200", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEXadd("絵ef300", 18000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	CreateTextureEXadd("絵ef400", 18000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
//	Zoom("絵ef*", 0, 3000, 3000, null, true);
	Rotate("絵ef200", 0, @0, @0, @180, null,true);
	Rotate("絵ef400", 0, @0, @0, @180, null,true);
//	SetShade("絵ef200", HEAVY);
	SetBlur("絵ef*", true, 2, 300, 50, false);

	Fade("絵ef100", 0, 1000, null, true);
	Fade("絵ef200", 0, 1000, null, true);
	FadeDelete("絵色100", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0812]
　再将其抑制。挤压，凝缩。
　狂乱翻腾的小股力量始终无法得到解放，放任暴动的
同时持续贮存。

　漩涡挣扎着，为寻求更大的力量将周围事物卷入自身。
　膨胀。肥大。抑制。暴走。

　波动化为波涛。波涛化作怒涛。
　汹涌狂暴的瀑布眼看就要将拘束的锁链挣断，对这即
将化作绝望暴力的力量做出最后的控制。

　从拘束中释放的一股支流输入手臂。
　沿着手腕——注入紧握于手中的敌方手臂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0840a01">
《阴。》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0850a00">
（阳）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　挣脱拘束。
　予暴力以自由。

　因喜悦而颤抖的力量放任冲动，在全身驱驰，充满，
溢出。
　释放。压抑的时代宣告终结，解放之时已经到来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0860a00">
「磁装·负极——」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0870a01">
《“磁流·逆转”。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MyTr_Count(500,580);

	OnSE("se戦闘_陰義_磁力展開",1000);
	Fade("絵ef300", 200, 1000, null, false);
	Fade("絵ef400", 200, 1000, null, false);
	Zoom("絵ef*", 1000, 1100, 1100, Dxl3, false);
	Fade("絵ef100", 500, 0, null, false);
	Fade("絵ef200", 500, 0, null, true);

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0841]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0880b45">
「什——咯啊!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(500);

	OnSE("se戦闘_陰義_磁力弾く",1000);
	CreateColorEX("フラッシュ白", 21000, "WHITE");

	Zoom("絵St50", 100, 1000, 1000, Dxl3, false);
	Move("絵St50", 100, 0, 0, Dxl3, false);

	Fade("フラッシュ白",100,1000,null,true);

	Cockpit_AllFade0();

	Delete("絵ef*");
	Delete("エフェクト１");
	Delete("絵St50");
	Delete("絵背景50");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");

	Shake_Delete(1500,500,false,"cg/bg/bg020_山脈坑道_01.jpg");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　六波罗的武者被震飞。

　从我的身上——弹飞出去。
　仅是一瞬——就飞出了遥远的距离。
　
　仅因为被倒地的村正用右脚一踢。

　至少在旁人看来应是如此。
　荒诞的景象，估计只能如此描述。武者的重量，乘骑
的姿势，不管通过怎样粗略的计算，都不可能得出这样
的结果。

　让敌方骑体带上磁性，利用同极相斥的原理，蕴含磁
力作用的一踢。
　这正是利用村正之阴义，方得以上演的荒诞剧。

　被踢飞的六波罗估计到最后也不会理解这个事实吧。
　完全来不及发问。

　虽然明白刚才一击无法对敌方造成什么严重损伤。但
为了奠定胜局必须打开这个空隙。
　奔跑。

　村正的磁装无法长时间保持。
　由于是瞬发技巧，若想保持一秒以上就得消耗莫大的
热量……但若中断的话，要再度磁装就得重新调整呼吸。

　即便能改变局势，但也无法弥补我方的不利。
　颈上的伤口并不浅。随着时间推移，血液和热量都会
一同流失。胜机只有现在，这个瞬间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景1000", 1500, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	SetShade("絵背景1000", HEAVY);

	Zoom("絵背景1000", 0, 2000, 2000, null, true);
	Move("絵背景1000", 0, 512, 0, null, true);

	CreateTextureEX("絵村正", 2000, Center, Middle, "cg/st/resize/3d村正標準_騎航_陰義.png");
	Request("絵村正", Smoothing);
	SetBlur("絵村正", true, 3, 500, 100, false);
	Fade("絵村正", 0, 1000, null, true);
	Move("絵村正", 0, @+1024, @100, null, true);

//嶋：使用できるか不明のため退避
//	CreateEffect("エフェクト１", 1900, 0, 0, 288, 512, "Rain");
//	Zoom("エフェクト１", 0, 2500, 2500, null, true);
//	Rotate("エフェクト１", 0, @45, @0, @-90, null,true);
//	Request("エフェクト１", Smoothing);
//	Move("エフェクト１", 0, @+600, @+20, null, true);
//	Fade("エフェクト１", 0, 450, null, true);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("絵村正", 300, -200, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1.png", true);

	WaitAction("絵村正", null);
	SetBlur("絵村正", false, 3, 500, 50, false);
	Shake_Loop("@絵背景1000","shake01");
	BGMoveAuto("@絵村正",1);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0851]
　奔跑。

　龙骑兵几乎就要站立起来。
　果然没有损伤，仅是夸张地摔了一跤而已。
缩短距离，冲到敌人眼前。

　根本没有时间去捡太刀。
　用整个身躯作为武器，冲撞上去。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	BGMoveDelete();

	OnSE("se戦闘_動作_空突進01",1000);
	Move("絵村正", 300, @-3000, @0, Dxl1, false);
//嶋：素材に合わせてズーム変更
	Zoom("絵村正", 300, 3000, 3000, null, false);

	Wait(200);

	CreateTextureEX("絵ef100", 10000, Center, Middle, "cg/ev/resize/ev903_村正磁気バリアー展開_al.jpg");
	CreateTextureEX("絵ef200", 10000, Center, Middle, "cg/ev/resize/ev903_村正磁気バリアー展開_al.jpg");
//	Zoom("絵ef100", 0, 750, 750, Dxl1, false);
//	Zoom("絵ef200", 0, 750, 750, Dxl1, false);
	SetBlur("絵ef200", true, 3, 500, 100, false);
	Move("絵ef100", 0, @-200, @+250, null, true);
	Zoom("絵ef200", 200, 1200, 1200, Dxl1, false);
	Fade("絵ef200", 0, 500, null, false);
	Fade("絵ef100", 0, 1000, null, true);

	Wait(300);

	OnSE("se戦闘_陰義_磁力弾く",1000);
	CreateColorEXadd("フラッシュ白", 16000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵ef100");
	Delete("絵ef200");
	Shake_LoopDelete();

	Delete("絵村正");
	Delete("絵背景1000");

	Shake_Delete(1500,1000,false,"cg/bg/bg020_山脈坑道_01.jpg");
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0890b45">
「咕……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("絵背景100");
	CreateTextureSP("絵背景50", 100, 0, 0, "cg/bg/resize/bg002_空a_01.jpg");
//嶋：画像によってはなし
	CreateTextureSP("絵st100", 500, Center, Middle, "cg/st/3d八八式指揮官_騎航_通常.png");
	Rotate("絵st100", 0, @0, @0, @-120, null,true);
	Move("絵st100", 0, @1024, @576, null, true);

	OnSE("se戦闘_動作_空突進07",1000);
	Move("絵背景50", 1000, @-1000, @-500, Dxl1, false);
	Move("絵st100", 700, @-2048, @-1152, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　八八式龙骑兵再次被撞飞。
　犹如被汽车高速撞击的小狗一般，高高飞起。

　但即便如此，敌骑也没有松开手中军刀。
　冲撞的瞬间就已经做好防备，想必已经料到我会如此。

　无法造成任何伤害——
　同时，我方也解除了磁装。热量已到极限。

　再尝试维持的话，就得做好热量匮乏的觉悟。
　已经全身发冷。指尖微微有些麻痹。

　逆转之策已经实行。
　敌兵毫发无伤，我方离无法战斗只有一步之遥。
　
　接下来只待一决胜负。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//嶋：シナリオ退避
//　あとは決着が待つだけだ。

	Delete("絵St100");

	WindowXSet(2000, 100);
	WindowXSetBG(2000, @+0, @+0,"cg/bg/bg020_山脈坑道_01.jpg");
	WindowXSetSt(2000, @100, @700,"cg/st/resize/3d村正標準_立ち_抜刀.png");

	WindowFadeBG(1,300,300,null,"slide_05_00_1",true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0900a01">
《主君！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0910a00">
「是。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Window_Delete(0,true)

	MyLife_Count(500,720);
	MyTr_Count(500,574);
	CP_HighChange2(0,0,null,false);
	CP_SpeedChange2(0,0,null,false);
	Cockpit_AllFade2();
	CP_PowerChange(300,100,null,false);

	CP_SpeedChange2(1000,270,null,false);
	CP_HighChange2(500,300,null,false);

	FrameShake();

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/st/3d八八式指揮官_騎突_通常.png");
	Move("絵背景100", 0, @0, @-200, null, true);
	Rotate("絵背景100", 0, @0, @0, @-150, null,true);
	Zoom("絵背景100", 0, 10, 10, null, true);
	SetBlur("絵背景100", true, 3, 300, 100, false);

	CreateTextureSP("絵背景50", 50, -100, -700, "cg/bg/bg202_旋回演出背景山_01.jpg");
	SetBlur("絵背景50", true, 3, 200, 100, false);

	CockPit_LockSet(@0,@0);


	OnSE("se戦闘_動作_空上昇01",1000);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);


	Move("絵背景50", 1000, @0, @200, Dxl2, false);
	Move("絵背景100", 1000, @0, @50, Dxl2, false);

	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　竭尽全力，双脚蹬地，跃向天空。
　为了决出胜负。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0920b45">
「臭小鬼!!!!!!!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　六波罗武者的咆哮响彻天空。
　带着愤怒，屈辱，失望。

　逆转已成，胜负已决。
　这个事实，敌手也已理解——从山腰飞向虚空，启动
推进器转入飞行。

　在空中作战赢的会是我。因此敌方才不起飞。<k>
　……那么，强迫他起飞即可！

　一旦脚下没有大地支撑，就只能飞行。
　不问是非，战场只剩一个。

　将残余的些许热量传到背上的飞行器，
　浮起——
　飞行——
　上升——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進03",1000);


	CP_SpeedChange(2000,352,AxlDxl,false);
	CP_HighChange(2000,864,AxlDxl,false);
	CP_AltChange(2000,45,AxlDxl,false);
	Move("絵背景50", 2000, @0, @500, AxlDxl, false);
	Move("絵背景100", 2000, @0, @1000, AxlDxl, true);

	CP_AltChange(1000,0,AxlDxl,false);
	Move("絵背景50", 1000, @0, @-1050, AxlDxl, false);
	Move("絵背景100", 1000, @0, @-900, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0915]
　同样的程序，敌骑进行的速度明显比我方更慢，由此
确保高度优势。
　
　翻转。下降。

　八八式龙骑兵实质上甚至还没有开始上升机动。
　或许是因为在意外中进入飞行，光是取得姿势平衡就
已经手忙脚乱。

　完全是俎上之肉。
　单方面发动强袭。

　没有太刀。武装只有拳头。
　能够藉此破坏的致命部位，仅有一处。

　从敌兵背侧接近。
　瞄准腰部，殴击。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ばきゃーん
	CreateColorEX("フラッシュ白", 15000, "WHITE");

	CreateSE("SE01","se戦闘_破壊_鎧01");

	OnSE("se戦闘_動作_空突進01",1000);

	CP_SpeedChange2(1000,270,null,false);
	CP_HighChange2(500,421,null,false);
	CP_PowerChange(300,50,null,false);
	Zoom("絵背景50", 400, 1200, 1200, Axl3, false);
	Move("絵背景100", 400, @0, @-50, Axl3, false);
	Zoom("絵背景100", 400, 1800, 1800, Axl3, false);
	Rotate("絵背景100", 400, @0, @0, @-50, AxlDxl,false);
	Wait(350);
	Fade("フラッシュ白",0,1000,null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(250);
	Shake("@CP_Frame", 500, 20, 20, 0, 0, 500, null, false);

	Delete("絵背景100");

	Zoom("絵背景50", 1500, 1000, 1000, Dxl2, false);
	BGMoveAuto("@絵背景50",1);


	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw八八式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/002vs0930b45">
「咯呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　武者严重失去平衡。
　并且——无法再次恢复。

　在腰周展开的翼型装甲，是飞行中不可缺少的羽翼。
若是缺了这个，推进器再怎么喷射，也只能造成噪声
污染。
　这副羽翼，龙骑兵已经失去一半以上。

　不过，残余的翼型装甲似乎还在履行自己的职责。
　武者一边下落，一边滑翔，以处于坠落和着陆的中
间状态向地面的树海冲去。

　……那样一来恐怕死不了。
　有追击的必要。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0940a00">
「村正，捕捉住敌骑。
　继续追踪。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0950a01">
《不行！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0960a00">
「什么？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs0970a01">
《热量已经到达极限。
　继续飞行已经很危险，更不用提战斗！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0980a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　听到警告，我才发现自己确实已经不是能够继续战斗
的状态。
　手指的酥麻现在已经接近麻痹状态，全身的寒气也在
进一步向我证明。

　状况每一秒都在持续恶化，只要继续装甲飞行就不可
能恢复。
　
　已到鸣金收兵之时。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs0990a00">
「没能解决掉吗……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs1000a01">
《这次也是没办法吧。
　毕竟有些太过匆忙。》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs1010a00">
「若能妥当应对这种匆忙，应该就能在最短时间
内解决事态。
　虽是常有之事，但实在为我的无能感到懊悔。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs1020a01">
《……》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/002vs1030a00">
「回去吧，村正。
　先恢复身体状态，之后再搜索树海。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/002vs1040a01">
《……了解。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

//◆地上
	CreateColorEX("絵暗転", 20000, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進06");

	MusicStart("SE01",0,1000,0,1000,null,false);

	BGMoveDelete();
	Move("絵背景50", 2000, @0, @-500, Axl2, false);
	Fade("絵暗転", 2000, 1000, null, true);

	CP_AllDelete();

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);

	PrintGO("上背景", 30010);

	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_制服a.png");
	StR(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	FadeDelete("上背景", 2000, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/002vs1050a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/002vs1060a04">
「大小姐……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/002vs1070a03">
「赤红的，武者……
　赤红…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/002vs1080a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);



}

..//ジャンプ指定
//次ファイル　"ma02_003.nss"


