//<continuation number="270">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_028vs.nss_MAIN
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
	#ev172_ヴィッカースメイフライMk4C型_a=true;
	#ev172_ヴィッカースメイフライMk4C型_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_ST09ユーウォーキー=true;

	$PreGameName = $GameName;

	$GameName = "mc02_029.nss";

}

scene mc02_028vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_029.nss"

//◆飛行艦発見
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("絵演空", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");

	CreateTextureEXadd("絵演村正光", 1011, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	Fade("絵演村正光", 0, 600, null, true);
	DrawTransition("絵演村正光", 0, 0, 100, 1000, null, "cg/data/slide_01_00_0.png", true);
	Zoom("絵演村正光", 0, 1050, 1050, null, true);

	Move("絵演村正*", 0, @-400, @60, null, true);
	Shake("絵演村正*", 216000, 1, 2, 0, 0, 1000, null, false);

	Move("絵演空", 75000, @0, @576, null, false);
	Move("絵演村正*", 2000, @20, @-60, DxlAuto, false);

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);
	CloudZoomVertex(0,@256,@0,null,false);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0010a01">
《……是那个吗!?》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0020a00">
「没错。
　找到了……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 2000, 0, null);

	CreateSE("SEL01","se乗物_飛行船_巡航音_L");
	MusicStart("SEL01",2000,600,0,750,null,true);

	CreateTextureEX("絵ＥＶ", 5000, Center, Middle, "cg/ev/ev172_ヴィッカースメイフライMk4C型_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	Delete("絵演村正*");
	CloudZoomDelete(0,false);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　从横滨出发约三分钟后。
　以肉眼确认漂浮在空中的巨大氦气球。

　这种迅速不只是因为事前已推测出
飞行战舰会走直线前往目的地。
　飞行战舰不是能无视风向就能前进的机械。
很有可能会因风而大大影响航向。

　事实上，飞行战舰的航向比预定稍偏南。
　但没在搜索上浪费时间，很大的原因是
永仓老人家事先准备了发报机。

　已潜入战舰内的大鸟主从，
离开横滨不久后便发出信号，
之后我们便成功追踪到她们的踪迹。
　如果只靠预测和村正的探查大概会花费较多时间。

　三分钟就能捕捉到信号可以说是最佳。
　为了不白费这难得的成果，
我想尽快冲进战舰——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆近付く
//◆船を見下ろす感じに
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵ＥＶ");
	CreateTextureEX("絵演ＥＶ", 1000, Center, -130, "cg/ev/resize/ev172_ヴィッカースメイフライMk4C型_bm.jpg");
	CreateTextureSP("絵演", 1000, Center, -130, "cg/ev/resize/ev172_ヴィッカースメイフライMk4C型_am.jpg");
	Request("絵演*", Smoothing);
	Zoom("絵演*", 0, 700, 700, null, true);

	MusicStart("SEL01",2000,800,0,800,null,true);

	Move("絵演*", 650, @0, @-26, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　飞行战舰的要害在<RUBY text="··">上头</RUBY>。
　因为膨胀的气囊，无法用肉眼确认对方的接近。

　透过信号探查得知飞行体的存在，
但到底是敌骑，还是大型鸟类，抑或只是误认吗，应该
尚不易判断。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0030a01">
《……好大。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0040a00">
「以军用飞行船来说比较小。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　维卡斯四式的全长约一四〇公尺。
　与绕行世界一周的知名哥拉弗·雪沛林之类的战舰相比，
不过是小巫见大巫。

　即使如此，以龙骑兵的角度来看，这简直是空中阁楼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0050a01">
《如此大的城堡为何能在空中
漂浮……》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0060a00">
「原理很简单。
　在那个袋子里装有比空气还轻的气体。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0070a01">
《……哦。
　唔……城堡会飞，还有一击就能将城堡打飞的
火具。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0080a01">
《切身感受时代的差异，有些悲伤
及厌恶。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0090a00">
「等会再感叹。
　我们从上头绕进去……直攻操纵室。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0100a00">
「要是能压制住掌舵手，逼他变更航向
的话，应该能争取到时间。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　这样也比较容易找炸弹。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0110a01">
《明白。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0120a00">
「我姑且确认一下，周围没有敌骑吧？」


{	CreateSE("SE01","se特殊_コックピット_探索01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0130a01">
《——没有。
　该领域只有我们和
下方飞行的船。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　村正立刻结束信号探查，说道。
　
　还没等舌根干燥，就在剑胄传音的余韵还残留在
我头盖骨的内侧时。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛行艦の陰から敵騎出現。二騎。
//◆ＳＴ－０９ユーウォーキー
	#av_ST09ユーウォーキー=true;

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,500,0,700,null,false);

	Fade("絵演ＥＶ", 0, 1000, null, true);
	FadeDelete("絵演", 1000, true);

	WaitKey(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0140a01">
《咦……
　咦咦咦咦!?》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0150a01">
《怎么可能……等等……
　我真的老年痴呆了吗!?》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0160a00">
「——不。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我浑身不寒而栗，阻止着剑胄的自责行为。
　要说患上老年痴呆症的人，那也是我。

　大鸟大尉曾说过——
　隐形龙骑兵『部队』早已存在！

　本次作战中使用的只是其中一骑，用途只是投下炸弹，
飞行战舰的<RUBY text="·····">隐形护卫骑</RUBY>
不曾被使用在作战上——
　这个约定是什么时候，是谁，和我立下的!?

　掉以轻心也该有个限度吧……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0170a00">
「那是上次乱破的同类。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0180a01">
《乱破？
　……月山从三位!?》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0190a00">
「他们拥有将信号反射降到最小的装甲构造。
　还有，他们刚刚躲在飞行战舰的影子底下吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　这样的话就能躲过信号探查及肉眼确认。
　若用热源探查的话或许能捕捉
到他们的行踪……但我并没有
聪明到那种程度。

　若我足够聪明的话，就能发现敌方接近了我们，
也就能重新考虑突入方法了吧。
　现在也于事无补了。

　居然败在关键时刻！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0200a01">
《怎么办!?》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0210a00">
「呜——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　逼近的骑体有两只。
　只要观察他们的动作，就能明白制造者的实力
及骑体性能。

　均相当具有水准。
　这是当然的——因为前者是受卡农中佐信赖，
参与机密作战的人才。后者则是国际联盟军的
最新锐骑体ＳＴ-〇九。

　都与空中恶魔的名号相称。
　在这种情况之下，我们不是其对手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0220a00">
「……直捣船舱！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0230a01">
《从——从哪里？》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0240a00">
「从<RUBY text="···">那一带</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm08",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　早就没有闲情攻击操纵室了。
　为了躲避那两架骑体——我们只能先
进入战舰。

　只要能成功进入船舱，至少还能以佯攻协助大鸟大尉！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0250a00">
「接下来就随机应变吧！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0260a01">
《意思是顺其自然吗!?》


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0270a00">
「没错！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二騎迫る
//◆どうにか回避して
	SetBlur("絵演ＥＶ", true, 3, 500, 80, false);

	SetVolume("SEL*", 1000, 0, null);
	CreateSE("SE00","se戦闘_動作_空上昇01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Zoom("絵演ＥＶ", 600, 2000, 2000, null, false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵演*");

	CreateTextureSP("絵演背景", 100, InLeft, Middle, "cg/bg/bg204_横旋回背景b_01.jpg");
	Move("絵演背景", 100000, -5088, @0, null, false);

	CreateTextureSP("絵演ユー騎戦", 1200, -355, 460, "cg/st/resize/3dユーウォーキー_騎航_戦闘sex.png");
	CreateTextureSP("絵演ユー騎通", 1000, -960, 80, "cg/st/resize/3dユーウォーキー_騎航_通常sex.png");
	Zoom("絵演ユー騎通", 0, 700, 700, null, false);
	Request("絵演ユー*", Smoothing);
	Shake("絵演ユー騎通", 2160000, 1, 1, 0, 0, 1000, null, false);
	Shake("絵演ユー騎戦", 2160000, 1, 1, 0, 0, 800, null, false);

	CreateSE("SE01a","se戦闘_動作_空突進02");
	CreateSE("SE01","se戦闘_動作_空突進02");

	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	BezierMove("絵演ユー騎通", 600, (-960, 80){-166,-40}{-10,-115}{20,-280}(-22,-320), Dxl1, false);

	Wait(200);

	MusicStart("SE01a",0,1000,0,800,null,false);
	Zoom("絵演ユー２", 600, 800, 800, null, false);
	BezierMove("絵演ユー騎戦", 600, (-355, 460){-30,160}{120,50}{100,-130}(-341,-90), Dxl1, true);

	CreateSE("SE02","se戦闘_動作_空上昇01");
	CreateSE("SE02a","se戦闘_動作_空上昇01");


	Move("絵演ユー騎通", 3000, -110, @0, DxlAuto, false);
	Wait(240);
	Move("絵演ユー騎戦", 3000, -380, @0, DxlAuto, false);

	Wait(2760);

	MusicStart("SE02",0,1000,0,1000,null,false);
	BezierMove("絵演ユー騎通", 380, (-110, -320){70,-273}{270,-262}{380,-385}(1000,-400), Dxl1, false);

	Wait(240);

	MusicStart("SE02a",0,1000,0,1100,null,false);
	BezierMove("絵演ユー騎戦", 280, (-380, -90){40,-30}{320,0}{660,-20}(1000,-20), Dxl1, true);

	WaitKey(2000);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("絵演ユー*");

	CreateTextureSP("絵演村正", 1100, 1024, -572, "cg/st/3d村正標準_騎航_陰義b.png");
	Request("絵演村正", Smoothing);
	Zoom("絵演村正", 0, 400, 400, Dxl2, false);
	Shake("絵演村正", 2160000, 1, 0, 0, 0, 1000, null, false);

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景c_01.jpg");
	Move("絵演背景", 300000, 0, @0, null, false);

	CloudZoomSet(2000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@1024,@-144,null,false);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateSE("SE03","se戦闘_動作_空急降下01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	BezierMove("絵演村正", 600, (1024,-572){-37,-405}{-37,-300}(115,-230), Dxl1, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	Wait(750);

	Move("絵演村正", 2000, -33, @0, null, false);
	Wait(2000);

	CreateTextureSP("絵演ユー騎通", 1000, -735, -352, "cg/st/resize/3dユーウォーキー_騎航_通常sex.png");
	CreateTextureSP("絵演ユー騎戦", 1200, -877, -50, "cg/st/resize/3dユーウォーキー_騎航_戦闘sex.png");

	Request("絵演ユー騎*", Smoothing);
	Zoom("絵演ユー騎*", 0, 400, 400, Dxl2, false);
	SetBlur("絵演ユー騎*", true, 1, 500, 80, false);

	CreateSE("SE04","se戦闘_動作_空突進08");
	MusicStart("SE04",0,1000,0,1000,null,false);
	BezierMove("絵演ユー騎通", 600, (-735,-352){-37,-405}{-37,-300}(750,500), Dxl1, false);

	Wait(100);

	CreateSE("SE04a","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	SetBlur("絵演村正", true, 2, 500, 60, false);
	Rotate("絵演村正", 600, @0, @0, 30, DxlAuto,false);
	BezierMove("絵演村正", 300, (-33,-230){-50,-200}{-80,-180}(-122,-170), Dxl3, false);

	Wait(200);

	CreateSE("SE04b","se戦闘_動作_空突進08");

	MusicStart("SE04b",0,1000,0,1100,null,false);
	BezierMove("絵演ユー騎戦", 600, (-877,-50){-293,-127}{77,-140}(800,-150), Dxl1, false);

	Wait(100);

	CreateSE("SE04c","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE04c",0,1000,0,1000,null,false);
	Rotate("絵演村正", 600, @0, @0, -30, DxlAuto,false);
	BezierMove("絵演村正", 300, (-122,-170){-141,-260}{-141,-260}(-200,-275), Dxl3, false);

	Wait(100);

	CreateSE("SE04d","se戦闘_動作_空突進01");
	MusicStart("SE04d",0,1000,0,1000,null,false);
	Move("絵演村正", 600, -883, -41, Axl2, true);

//◆船の側面に回って突入。ずがーん。

	CreateSE("SE01","se戦闘_動作_鉄壁吹っ飛ばす");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, true);

	Delete("絵演村正");
	Delete("絵演ユー*");
	CloudZoomDelete(0,false);

	Wait(1000);

	SetVolume("@m*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　
　　　　　　　　　上午七点五〇分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 0);


}

..//ジャンプ指定
//次ファイル　"mc02_029.nss"