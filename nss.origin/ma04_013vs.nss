//<continuation number="2790">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_013vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_013vs.nss","DenziBladeCharge",true);
	Conquest("nss/ma04_013vs.nss","DenziBladeChargeSet",true);

//あきゅん「演出：次のファイルで使用する用に準備」
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
	#bg046_江ノ島観測台_03=true;
	#ev909_荒覇吐=true;
	#ev909_荒覇吐_b=true;
	#ev909_荒覇吐_c=true;
	#ev909_荒覇吐_d=true;
	#ev911_荒覇吐ＡＩフィールド展開=true;
	#ev912_荒覇吐竜気砲アップ_a=true;
	#ev912_荒覇吐竜気砲アップ_b=true;
	#ev913_荒覇吐追尾弾=true;
	#ev944_村正ＶＳ荒覇吐=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma04_014vs.nss";

}

scene ma04_013vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_012.nss"

//●１２
//◆山頂·観測台
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateColorSP("絵黒下", 10, "#000000");

	$窓縦枠=384;
	$窓位置調整=288-($窓縦枠/2);

	CreateWindow("絵窓", 19000, 0, $窓位置調整, 1024, $窓縦枠, false);
	SetAlias("絵窓","絵窓");

	CreateTextureSP("絵窓/絵演背景", 100, Center, Middle, "cg/bg/bg001_空a_03.jpg");
	CreateTextureSP("絵窓/絵演村正", 1000, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	Zoom("絵窓/絵演村正", 0, 75, 75, null, true);

	MoveFFP1("@絵窓/絵演村正",20000);

	CreateSE("SE01","se戦闘_動作_空走行01_L");
	MusicStart("SE01",0,300,0,1000,null,true);

	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	WaitKey(1000);

	SetFwR("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0010b02">
「……唔嗯。
　那就是村正啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	PrintGO("上背景", 30000);
	OnBG(100,"bg046_江ノ島観測台_03.jpg");
	StL(1000, @0, @0,"cg/st/st所長_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Move("上背景", 300, @0, 576, Dxl2, true);
	Delete("上背景");

	WaitKey(500);

	StR(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0020b02">
「在这个倍率下看不清啊……
　难道就没有精确度再高一些的
对地望远镜了吗？」

//◆無視風
{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0030b22">
「…………」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0040b02">
「我问你话呢？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0050b22">
「啊……嗯，没有啦……
　在我们这里，那就是最新式的
望远镜了。」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0060b02">
「这就是了吗。
　原来如此。以类人猿创造的东西来说，
这的确算是高等了。」

//◆歯軋り風
{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0070b22">
「…………」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0080b02">
「我在夸奖你啊？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0090b22">
「真……真是万分感激呀！
　承蒙夸奖，在下惊喜得直冲地狱！」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0100b02">
「……这玩笑真无聊，所长。
　非常没品。」

//◆のけぞり風
{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0110b22">
「…………」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs0120e068">
「荒霸吐传来通信。
　他询问，所属不明的武者该如何
处置……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0130b02">
「击垮他。」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0140b22">
「喂喂！
　那个还在进行调整呢……！」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0150b02">
「最坏结果，两败俱伤也无所谓。」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0160b22">
「有所谓呀?!」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs0170e068">
「……请问……？」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0180b02">
「现在这个研究所的指挥权掌握在我手中。
理论上是这样的……
　还是说，你有何异议？」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs0190e068">
「……不。」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0200b22">
「……唔喔。
　杀了他吧。诚心期望来个人杀了他。
在我无数的愿望中只实现一个就好，
那就是杀了这混蛋……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正ＶＳ荒覇吐
//◆荒覇吐ブレストファイアー。避ける村正
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵ＥＶ", 19000, Center, -170, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	DrawDelete("上背景", 200, 100, "slide_01_01_0", true);

	SoundPlay("@mbgm10",1000,1000,true);

	CreateSE("SE01","se戦闘_荒覇吐_攻撃01");
	CreateSE("SE01aa","se戦闘_動作_空突進02");
	CreateTextureSPadd("絵演上", 19100, Center, -170, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	CreateTextureSP("絵演", 19050, Center, -170, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);

	Delete("絵暗転");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵演上", 1000, false);
	Wait(400);
	Move("絵演*", 8000, @0, -700, null, false);
	Wait(1300);

	MusicStart("SE01aa",0,1000,0,1000,null,false);
	SetBlur("絵演", true, 2, 500, 40, false);
	Move("絵演*", 300, @0, -700, Dxl2, true);

	WaitKey(500);

//◆少し被弾
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateColorSP("絵黒幕", 20000, "BLACK");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSPadd("絵演上", 19100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 19000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);
	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE01b","se戦闘_破壊_鎧03");
	CreatePlainSPadd("絵板写", 19990);
	CreateColorEXmul("絵色赤", 20000, "#CC0000");
	Zoom("絵板写", 0, 1150, 1150, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 800, null, true);
	FadeDelete("絵色赤", 300, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	Shake("絵板写", 600, 0, 20, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0210a00">
「损伤如何?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0220a01">
《左大臂轻微受损！
　不影响性能。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一般来说，枪械对武者起不了太大
效果。
　因为想要捕捉其机动，或穿透其装甲，
枪都太过力不从心。

　可是如果让一个十分单纯的理论介于其中，
答案就会被颠覆。
　——一发击不中，那么十发呢？
十发击不穿，那么百发呢？

　一旦集中运用，枪械就能对武者
构成威胁了。
　从巨型怪物的表皮上突出来的炮口群，
正是为了这个目的吧。

　可是，即使如此——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0230a00">
「……我自认为完全躲开了啊。
　难道因为太黑了，导致目测有误吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0240a01">
《不对。
　是我们的动作比以往要迟钝。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0250a00">
「…………
　原因是先前的<RUBY text="··">寒气</RUBY>么。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0260a01">
《对。就是那个。
　那阵风会从体内吸取热量……
作为对抗武者用的武装，它真是有效得可怕啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　武者一切超常的能力都以热量为代价。
　而夺走这些热量——的确。这大概就是能削弱敌骑的
最短捷径。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0270a00">
「也就是说，不可以被那阵风
捕捉到……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0280a01">
《嗯。
　装甲可以多少起到一些防护作用，
但决不能对它过度依赖。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0290a00">
「明白了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵演", 1500, @-256, @0, Axl3, false);
	WaitKey(1000);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateColorSP("絵色黒", 20000, "#000000");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");

	CreateTextureSP("絵ＥＶ", 19010, InRight, Middle, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	SetBlur("絵ＥＶ", true, 2, 500, 50, false);
	CreateSurfaceEX("絵効果サフ", 19000,1000,"@絵ＥＶ");
	Fade("絵効果サフ", 0, 1000, null, true);

	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	Move("絵ＥＶ", 2000, 0, 0, Axl2, false);
	Zoom("絵効果サフ", 2000, 2000, 2000, null, false);
	Rotate("絵効果サフ", 2000, @0, @0, @20, DxlAuto,false);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	Wait(1700);

	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateColorSP("絵色黒", 20000, "#000000");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, Axl2, "cg/data/slide_02_01_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");

	CreateTextureSP("絵演背景", 18000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	DrawDelete("上背景", 150, 100, "slide_02_01_0", true);
	Move("絵演背景", 650, @0, @286, Dxl2, false);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
　我绕着枪炮的推定射程外画圆周飞起，
到达敌骑后方的上空。
{	CreateSE("SE02","se戦闘_荒覇吐_移動01");
	MusicStart("SE02",0,1000,0,750,null,false);}
　当然，银色的庞然大物立刻改变姿势，转而向我
——不过，它的动作真是迟钝得可以。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演荒", 17000, -60, -250, "cg/ev/resize/ev909_荒覇吐_cm.jpg");
	Move("絵演荒", 3000, @0, -90, DxlAuto, false);
	CreateSE("SE01","se戦闘_荒覇吐_移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵演背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070b]
　我再移向它背后。敌人又动弹了
——更进一步向它身后移动。
　步下无形的螺旋阶梯，渐渐缩短距离。

　远远眺望，怪兽之巨便已无可置疑，
但近身肉搏时，这一点又变得更为明显了。
　我就相当于挑战大象的蚂蚁。

　但是。
　巨象败于蝼蚁之口——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

	CreateSE("SE00","se戦闘_動作_空突進02");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreatePlainSP("絵板写", 18000);
	SetBlur("絵板写", true, 3, 500, 60, false);
	Zoom("絵板写", 600, 2000, 2000, Dxl2, false);
	Wait(580);

//◆一閃
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_left2(20010,@0, @0,2000);
	SL_leftfade2(10);

//◆ガキーン。
	PrintGO("上背景", 30000);
	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE01*",0,1000,0,1000,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

//◆銃火。避けて逃げる村正。
	CreateSE("SE02","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演上", 19100, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	CreateTextureSP("絵演", 19050, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	SetVertex("絵演*", 1070, 1000);
	Delete("絵暗転");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("絵演上", 1500, 1250, 1250, Dxl2, false);
	Shake("絵演", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵演上", 1000, false);

	WaitKey(800);

	CreateSE("SE03","se戦闘_動作_空突進02");
	CreateColorSP("絵黒幕", 20000, "BLACK");
	MusicStart("SE03",0,1000,0,1000,null,false);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演背景", 15000, InLeft, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	CreateSE("SE03","se戦闘_動作_空突進01");
	CreateTextureEX("絵演立絵村正", 15100, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a2.png");
	Move("絵演立絵村正", 0, @-286, @120, null, true);
	Zoom("絵演立絵村正", 0, 850, 850, null, true);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Zoom("絵演立絵村正", 300, 1000, 1000, Dxl2, false);
	Move("絵演立絵村正", 600, @30, @-120, Dxl2, false);
	Fade("絵演立絵村正", 300, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0300a00">
「……好像不怎么行啊，
　有些困难。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0310a01">
《装甲的厚重与目测的并无二致……
　但愿它是只纸老虎吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　失去了村正本来的主要武装，野太刀，事到如今
我痛惜不已。
　那件巨大的物品正是为了应对这种情况而存在的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆騎航。適当に捻り入れつつ
	Move("絵演立絵村正", 300, @30, @0, null, false);
	Wait(250);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("絵演立絵村正", true, 2, 300, 30, true);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵演立絵村正", 300, @1800, @0, Dxl2, false);
	Wait(30);
	Fade("絵色白", 400, 0, null, false);
	DrawTransition("絵色白", 800, 1000, 0, 100, Dxl2, "cg/data/slide_07_00_1.png", false);
	BezierMove("絵演背景", 1000, (0,-576){-100,-500}{-300,-400}{-500,-300}(-1024,0), Axl1, false);
	Wait(800);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Wait(500);

//◆一撃。やっぱガキーンと。
	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1200,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	PrintGO("上背景", 30000);
	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE01*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

//◆銃火。逃げるよー。
	CreateSE("SE03","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演上", 19100, -740, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	CreateTextureSP("絵演", 19050, -740, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	Request("絵演*", Smoothing);
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	SetVertex("絵演*", 1070, 1000);
	Delete("絵暗転");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Zoom("絵演上", 1500, 1250, 1250, Dxl2, false);
	Shake("絵演", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵演上", 1000, false);

	WaitKey(800);

	CreateSE("SE03a","se戦闘_動作_空突進02");
	CreateColorSP("絵黒幕", 20000, "BLACK");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSPadd("絵演上", 18100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);
	Move("絵演*", 150, -615, @0, Dxl2, false);
	Delete("上背景");
	FadeDelete("絵演上", 600, false);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0320a00">
「坚固的装甲、迟钝的行动……大概是用来
守护基地的吧？
　六波罗制造的兵器还真是稀奇古怪。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0330a00">
「不过，如此一来，谜团就大致解开了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0340a01">
《谜团？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0350a00">
「这剑胄如此巨大。而且既然是在进行研究，
它就绝非独一无二。
　为了锻造出包括失败品在内的大量装甲，
不知会产生多少废弃材料……」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0360a00">
「若是将它们在周围的海域中处理掉，
那温度变化之大，使得局部地区
气候异常也没什么不可思议。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0370a01">
《这倒也是。
自古，锻冶师们就十分头疼该如何
处理废钢……甚至还有传说，把废钢
舍弃在湖中，结果使湖水干涸了。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0380a00">
「破坏生态系统，也是因为那阵风吧。既然是为
进行剥夺热量的兵器的实验而成为了牺牲品，那
岛上凄惨至极的荒凉景象也能理解了。不过有
关一部分地区欣欣向荣的光景，仍无从说明……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0390a00">
「无论如何，为研制新兵器而牺牲了自然环境，
这笔交易真是太不合算了。
自然是有限的资产，
但经过数年，新兵器就会沦为旧式。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0400a01">
《是啊。
　……不过啊。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0410a01">
《它也并不绝对就是<RUBY text="·">新</RUBY>兵器。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0420a00">
「……何出此言？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演荒覇吐", 18100, -460, -90, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	Fade("絵演荒覇吐", 1000, 1000, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0119]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0430a01">
《表层无疑是运用当今的技术制成的。
　不过中枢……恐怕是古式之物。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0440a01">
《那是，
　巨大的真打…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我认为这极有可能。

　我听说，大舰巨炮主义风靡军队内部的旧时代，
大型剑胄这种设想当然也出现过，不过最终没能
攻克技术上的问题而被放弃了。
　与其说是突然地研制成功了——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演荒覇吐", 600, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0450a00">
「古时存在那种东西么。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0460a01">
《……我只是有听过这种传闻。
据说鹿岛沉睡着布都御魂，也有传言
唐国之倚天屠龙。
　不过最重要的是。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0470a01">
《那阵风……
　以我所感，那是阴义。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　阴义。
　遵照自古以来的法则，
只有以锻冶师的性命作为心铁而锻造出来的
真打剑胄，才拥有这种能力。

　原来如此。既然能使用这种力量，就不可能
是现代的新式剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0480a00">
「可是，如此一来——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演", 2000, @-512, @-200, Axl2, false);

	Wait(500);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演");

	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateTextureSP("絵演旋回背景", 15000, Center, 0, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSP("絵演立絵村正", 15100, -2300, -200, "cg/st/3d村正標準_騎航_通常3b.png");
	SetVertex("絵演旋回背景", center, 0);
	Zoom("絵演旋回背景", 0, 1000, 3000, null, true);
	Request("絵演旋回背景", Smoothing);

	SetBlur("絵演立絵村正", true, 2, 500, 120, false);
	Shake("絵演立絵村正", 2160000, 1, 3, 0, 0, 1000, null, false);

	Move("絵演旋回背景", 2000, @0, -2304, AxlDxl, false);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 150, 1000, "slide_02_01_1", true);

	Move("絵演立絵村正", 2000, @30, @-120, DxlAuto, false);

	Wait(2000);

	Move("絵演立絵村正", 20000, @30, @30, DxlAuto, false);
	Move("絵演旋回背景", 20000, @0, -2880, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　这说明，怪物厚重的皮肤之下，
　还有由古代之神秘所制造出的重装甲
在等着我们。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE03","se戦闘_荒覇吐_攻撃05");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MFlash(30, 20);

	WaitKey(300);

//◆避けながら接近してガキーンと。
	Zoom("絵演立絵村正", 200, 800, 800, Axl2, false);
	Move("絵演立絵村正", 200, @200, @200, null, true);

	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(500);

	Delete("@MF*");
	Delete("絵演*");

	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1200,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	PrintGO("上背景", 30000);
	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE01*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0490a00">
「……看来没有希望可以斩断它。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0500a01">
《……很可惜，
　火力相差太悬殊了。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateColorSP("絵色黒", 20000, "#000000");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, Axl2, "cg/data/slide_02_01_1.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");

	CreateTextureSP("絵演背景", 18000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	DrawDelete("上背景", 150, 100, "slide_02_01_0", true);
	Move("絵演背景", 650, @0, @286, Dxl2, false);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　村正懊恼地对我表示赞同。
　先前用剑攻击敌骑，可对方看起来毫发无损，
相反，我的手臂却受到了冲击，甚至影响到骨头了。
村正也对自己的刀身产生绝望感了吧。

　没错，火力不同。
　这份单纯而又绝对的差距，
是无法轻易攻破的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0510a01">
《你有何打算……？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0520a00">
「若实际情况允许，如今应该撤退。
　但是。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0530a01">
《你的意思是不能撤退？
　拖延时间的话，已经差不多
足够了吧？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0540a00">
「……有件事让我很在意。
　这只怪物，怎么看都是埋伏着在
等待我们——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　先前的遭遇战。
　若说我们是偶然被发现而遭到攻击，未免发生得太快了。
还是认为敌方一开始就捕捉到了我们的踪影，才比较妥当。

　还有，事到如今，还是没有出现其他的敌方兵力
这一事实——倘若我们的入侵乃不测事故，
应该立即就会有警报发出，现在肯定已是警戒兵
云集而至。

　到底为何。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0550a00">
「此次事件，最初起就黑幕重重。
　不过，看来我们还是掉入了某人为了某种目的
而设下的圈套。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0560a01">
《若这是陷阱，那么轻易逃走反而会陷入
更深的窘境……
　你是这意思吗？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0570a00">
「这可能性很大。
　而且——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆フラッシュバック。芳養一家
	EfRecoIn1(20000,600);
	CreateTextureSP("絵回想背景", 18000, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	StC(18100, @0,@0,"cg/st/st芳養_通常_私服.png");
	FadeStC(0,true);
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	DeleteStA(0,true);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0580a00">
「还有他们失踪的事。
　虽然那个少年说江之岛附近发生的失踪事件
只是当事人连夜潜逃，但偏偏，少年一家
也消失了……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0590a00">
「应该不是什么连夜潜逃，而是岛上异变的一环。
虽然不知道具体细节。
　想救助他们，除了迅速解决事件外别无他法。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0600a01">
《……要解决这岛上发生的事件，
　也就是说。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒覇吐
	CreateSE("SE01","se戦闘_荒覇吐_移動02_L");
	CreateTextureEX("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐_c.jpg");
	MusicStart("SE01",0,1000,0,1000,null,true);
	Fade("絵演", 2000, 1000, null, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0610a01">
《看来必须击败那个家伙了？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0620a00">
「是啊。
　这就是结论。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　积累出一条条正理，却得出了莽撞的结论。
　一般，人们称这为黔驴之技。

　不过当然——
　对<RUBY text="我们">村正</RUBY>来说，这只是<RUBY text="····">家常便饭</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0630a01">
《……了解。
　那么方法就只有一个。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆銃撃
	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演上", 19100, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	CreateTextureSP("絵演", 19050, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	SetVertex("絵演*", 1070, 1000);
	Delete("絵暗転");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演上", 1500, 1250, 1250, Dxl2, false);
	Shake("絵演", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵演上", 1000, false);

	WaitKey(800);

//◆避けっ。
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	CreateColorSP("絵黒幕", 20000, "BLACK");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演立絵", 18100, 512, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	CreateTextureSP("絵演背景", 18000, InRight, Middle, "cg/bg/resize/bg001_空a_03.jpg");
	Request("絵演背景", Smoothing);
	SetVertex("背景１", right, middle);
	Zoom("絵演背景", 0, 3000, 1000, null, true);
	Delete("上背景");

	SetBlur("絵演立絵", true, 2, 300, 50, false);
	Shake("絵演立絵", 1000, 0, 2, 0, 0, 1000, null, false);
	Move("絵演立絵", 800, -1700, @-10, Axl2, false);
	Move("絵演背景", 10000, 1024, @0, DxlAuto, false);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	Wait(800);

	CreateTextureEX("絵演", 18000, -500, -130, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演", 0, 800, 800, null, true);

	Zoom("絵演", 300, 1000, 1000, DxlAuto, false);
	Move("絵演", 300, @-80, @0, DxlAuto, false);
	Fade("絵演", 300, 1000, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0640a01">
《主君，请运行磁装！》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0650a00">
「要用电磁拔刀么。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0660a01">
《嗯。
　我的终焉之太刀，可以斩断
任何东西。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0670a01">
《它是当今的普通装甲也好，
神话时代的遗产也罢，都无所谓。
　无论是什么，结果都一样！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　村正争强好胜的言行也许是出自未能<RUBY text="···">伤害到</RUBY>对方而产生的
屈辱感，但我也不认为这是诳语。
　终焉之太刀——电磁拔刀。高压的磁力反弹所带来的
神速之一刀，即使前方立有铁壁，也确实能够击破吧。

　如今体力消耗得所剩无几，要试图操纵这种需要细致
注意力的术式，存在巨大危险——<k>若未能成功操纵
电磁拔刀，磁力与热量的暴走将意味着自身的崩溃
——<k>不过这也是家常便饭，如今也没什么值得忧虑了。

　不过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0680a00">
「不行。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0690a01">
《为什么！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0700a00">
「那是剑胄。
　<RUBY text="····">里面有人</RUBY>。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0710a00">
「使用终焉的话，就没办法控制力道了。
　会把里面的操控者一起斩成两半的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0720a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　至少先弄清楚操控者到底坐在巨型物体的何处，
就能找到突破口。
　眼下里面人的生死全都听天由命。

　如果对方是被植入“卵”的寄生体——
就要杀了对方。没有商量余地。
　想要阻止新的银星号诞生，只有尽可能快速地
破坏掉一切。理由仅仅如此。

　但，对方并非如此。我不能杀。
　即便如此，他可能还是逃不掉罪的谴责——恐怕
破坏岛上环境并威胁附近居民之罪全都由他担负。
放过他，今后也许还会进行破坏。

　但就算这样，“<RUBY text="·····">由我来制裁</RUBY>”这种傲慢的举动，
是不可能得到认同的。
　必须依法进行制裁。我所能做的
只有将嫌犯带进法庭而已。

　如果连法律都依靠不住的话——对方是幕府那种
权力（滥用）者的话——或许也会认为，可以随意
进行处置。
　但这么做就是暴徒。我好歹是个警察。

　警察必须对司法忠诚不二。
　绝不可以根据一己之见去衡量罪恶，
进行裁决并下手杀害。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆フラッシュバック。真改殺害、代官殺害、皇路卓殺害
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl2, true);

	CreateColorSP("絵色黒地", 18000, "#000000");
	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/3d真改_立ち_戦闘.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/3d真改_立ち_戦闘.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @-256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);


	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/3d八八式指揮官_立ち_抜刀.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/3d八八式指揮官_立ち_抜刀.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演立絵*", 0, @256, @0, null, true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

	CreateTextureSP("絵演立絵", 18100, Center, InBottom, "cg/st/st皇路_通常_私服.png");
	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/st皇路_通常_私服.png",false);
	SetAlias("絵演立絵覆","絵演立絵覆");
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);

	Fade("絵色白", 30, 0, null, true);
	Wait(150);
	Fade("絵色白", 30, 1000, null, true);

	Delete("絵演立絵*");
	Delete("絵色黒地*");

	FadeDelete("絵色白", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　——绝对不行。
　这是不被允许的行为。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0730a01">
《那要怎么办?!》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0740a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　在王牌被封住的情况下。
　要解决这个怪物。

　存在于脑海中的参谋似乎不能立刻就回答
这种任性过头的提问。
　而且，敌人也不可能乖乖等着我，
直到得出答案。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演上", 19100, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	CreateTextureSP("絵演", 19050, -340, -730, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	SetVertex("絵演*", 1070, 1000);
	Delete("絵暗転");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演上", 1500, 1250, 1250, Dxl2, false);
	Shake("絵演", 1000, 4, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵演上", 1000, false);

	WaitKey(1000);

//◆避ける
	CreateSE("SE02","se戦闘_動作_空突進02");
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", true);

	CreateTextureSP("絵演背景", 18000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Delete("絵演*");

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("絵演背景", 650, @0, @300, Dxl2, false);
	DrawDelete("絵色黒", 150, 1000, "slide_02_01_1", true);

//◆竜気砲
	CreateTextureEX("絵演", 18100, -310, InBottom, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Move("絵演", 650, @0, -65, Dxl2, false);
	Fade("絵演", 600, 1000, null, true);

	CreateSE("SE03","se特殊_鎧_駆動音01");
	CreateSE("SE03b","se特殊_鎧_駆動音02");
	MusicStart("SE03",0,1000,0,800,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演荒上", 0, 1200, 1200, null, false);
	Zoom("絵演荒上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒上", 200, true);

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0750a00">
「——？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0760a01">
《那是…………
　什么？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　炮口的动作仿佛曲起脖子的蛇，指向了我。
　它——可以说是又小又细。并没有能让
被瞄准的对手心生怯意的威慑力。

　可是——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆ぶおーん。
	CreateSEEX("SE01","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01",0,1000,0,100,null,true);
	SetFrequency("SE01", 10000, 1000, Dxl3);

	CreatePlainSPadd("絵板写", 18900);
	CreateTextureSPadd("絵演効果", 19000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	SetBlur("絵板写", true, 2, 500, 30, false);
	Zoom("絵板写", 0, 1500, 1500, null, true);
	Zoom("絵板写", 3000, 1000, 1000, null, false);
	DrawDelete("絵板写", 300, 100, "circle_01_00_0", false);

	Zoom("絵演効果", 300, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "circle_01_00_1", false);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0770a01">
《哎？
　这是——剑胄传音——》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　然而。
　这股让人不寒而栗，颤抖不已的<RUBY text="··">死气</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs0780a00">
「————退避!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs0790a01">
《?!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆竜気砲発振
//◆メーザー砲みたいなもんか？
	CreateSE("SE01","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	Wait(300);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	OnBG(100,"bg046_江ノ島観測台_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SetVolume("SE*", 5000, 0, null);
	DrawDelete("絵暗転", 300, 1000, "slide_01_01_1", true);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0800b02">
「……那是什么？」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0810b22">
「……」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0820b02">
「所长？
　以你的记忆能力大概记不牢吧，
所以我再次通告，你有义务回答我的
提问——」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0830b22">
「是龙气炮啦！
　我说<RUBY text="ｖｉｂｒｏｃａｎｏｎ">共振炮</RUBY>，你们就能明白了吧。」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0840b02">
「<RUBY text="ｖｉｂｒｏｃａｎｏｎ">共振炮</RUBY>……
　我的确听过这种兵器的设想。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0850b02">
「好像是使用了剑胄装甲通信的兵器？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0860b22">
「是啊。
　接收到武者的剑胄传音，体表就会小幅震动
吧？　这种现象能否用于攻击呢？　就是因
这个有趣的想法开始研究的。」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0870b22">
「结果，我们发现可以聚集起极低的剑胄传音，
引起共振，目标就可能瞬间升温，
最终被引燃。
　我们把这个结论实际运用在龙气炮上了。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0880b02">
「龙气啊。原来如此。
　不过还真了不起啊。」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0890b22">
「哼。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0900b02">
「那玩意儿，在我军曾作为机动兵器决定性
战力的搭载武装而进行研究，不过听说未能
解决电力供给和小型化问题，而受挫中断了。
　想运用在炮台上，成本又不合算。」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0910b02">
「将机动兵器大型化，居然就解决了
这些问题……真是绝妙而粗糙的手法。
　也只有岛国的原始人才想得出来。我们文明人
就只能当做笑料给一带而过了。」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0920b22">
「咕嗷———!!」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0930b02">
「你想感谢我是可以，不过别太吵闹了，
所长。」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0940b22">
「在你看来，我像是在感谢你!?」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0950b02">
「我对基于原始国家独特风俗而产生的感情表现
没兴趣。
　话说回来，所长。」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0960b22">
「人家想回家啦……
　真想闷在房间里，沉浸于杀害妄想中……
啊，流星……神啊求求您了，杀了杀了杀了
这家伙……实现我唯一的愿望吧……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0970b02">
「那个大家伙好歹也是剑胄吧。
但是，到底是用何种方法锻造成的？
　如此巨大的东西……说实话，
我完全无从想象。」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs0980b22">
「……这个我也不知道。
　把它改造成兵器装备的的确是我们，不过<RUBY text="ｂａｓｅ">原型</RUBY>
就跟我们无关了。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs0990b02">
「哦？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1000b22">
「这个岛的西南端有个石洞。
　什么通向富士山的风洞呀，
什么四处云游的神之道路呀，
有很多有趣的传说。」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1010b22">
「那东西是在洞穴深处发现的。
　八年前被民俗学调查团发现……不过
好像很久以前就在当地居民之间被
口口相传了。」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1020b22">
「说是什么<RUBY text="····">现世之身</RUBY>啥的。
　真搞不懂。岛上人们也是
众口纷纭。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1030b02">
「……」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1040b22">
「即使我们去着手调查，结果也只能判断是数百
年前，甚至数千年以至更早以前锻造的
——<RUBY text="···">给武者</RUBY><RUBY text="····">穿的剑胄</RUBY>。
　大家都吓了一跳。」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1050b22">
「因为在剑胄外再披上剑胄，
这种想法真是闻所未闻。总而言之，
它被归到六波罗的管辖之下，起了个名字，
叫龙骑兵用强化外装，然后就开始研究……」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1060b22">
「不过最后，制造方法还是没弄明白。
　无奈地决定就算只有一骑也投入运用吧，
然后顺势研究，那东西就被制造出来了。
就这么回事。」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1070b02">
「原来如此。
　我大致理解了。」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1080b22">
「万岁万岁。」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1090b02">
「总而言之就是你们『一无所知』。
　感谢你内容空洞的说明。
我自觉浪费了好多时间。」

{	FwC("cg/fw/fw所長_笑い.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1100b22">
「呜哇。
　我好像开始感到开心了，
总觉得自己是在挑战，看人类的杀意能
到什么程度。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶおおーん
	CreateSE("SE01","se戦闘_荒覇吐_攻撃04_L");
	MusicStart("SE01",0,500,0,100,null,true);
	SetFrequency("SE01", 10000, 1000, Dxl3);

	WaitKey(300);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1110b02">
「……唔？
　现在那又是要做什么？」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1120b22">
「嗯？
　哦……」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1130b22">
「那是扩散龙气炮啦。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆要は拡散粒子砲だ。
//◆ずびーっと。
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	DrawDelete("上背景", 150, 100, "slide_01_01_0", true);

	CreateTextureSP("絵演", 19000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");

	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演上", 18090, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演", 18090, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	CreateSE("SE01a","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲一上", 18081, -900, -380, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");
	CreateTextureSP("絵演振砲一", 18080, -900, -380, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");

	CreateSE("SE01b","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲二上", 18071, -460, -512, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");
	CreateTextureSP("絵演振砲二", 18070, -460, -512, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");

	CreateSE("SE01c","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲三上", 18061, -68, -500, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");
	CreateTextureSP("絵演振砲三", 18060, -68, -500, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");

	CreateSE("SE01d","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲四上", 18051, -10, -10, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");
	CreateTextureSP("絵演振砲四", 18050, -10, -10, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");

	CreateSE("SE01e","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲五上", 18041, -397, -30, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");
	CreateTextureSP("絵演振砲五", 18040, -397, -30, "cg/ef/resize/ef047_発振砲集団射撃l.jpg");

	CreateSE("SE01d","se戦闘_荒覇吐_攻撃05");
	CreateTextureSPadd("絵演振砲六上", 18031, Center, Middle, "cg/ef/resize/ef047_発振砲集団射撃sex01.jpg");
	CreateTextureSP("絵演振砲六", 18030, Center, Middle, "cg/ef/resize/ef047_発振砲集団射撃sex01.jpg");
	SetVertex("絵演振砲*", 140, 470);
	SetBlur("絵演振砲六上", true, 2, 500, 50, false);


	DrawDelete("絵暗転", 150, 100, "slide_01_01_0", true);

	SetVolume("SE*", 100, 0, null);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演上", 200, 1400, 1400, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 300, true);

	Delete("絵演");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Shake("絵演振砲一", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲一上", 200, 1250, 1250, null, false);
	FadeDelete("絵演振砲一上", 300, false);

	Wait(200);
	Delete("絵演振砲一");

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("絵演振砲二", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲二上", 200, 1250, 1250, null, false);
	FadeDelete("絵演振砲二上", 300, false);

	Wait(200);
	Delete("絵演振砲二");

	MusicStart("SE01c",0,1000,0,1000,null,false);
	Shake("絵演振砲三", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲三上", 200, 1250, 1250, null, false);
	FadeDelete("絵演振砲三上", 300, false);

	Wait(200);
	Delete("絵演振砲三");

	MusicStart("SE01d",0,1000,0,1000,null,false);
	Shake("絵演振砲四", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲四上", 200, 1250, 1250, null, false);
	FadeDelete("絵演振砲四上", 300, false);

	Wait(200);
	Delete("絵演振砲四");

	MusicStart("SE01e",0,1000,0,1000,null,false);
	Shake("絵演振砲五", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲五上", 200, 1250, 1250, null, false);
	FadeDelete("絵演振砲五上", 300, false);

	Wait(300);
	Delete("絵演振砲五");

	MusicStart("SE01d",0,1000,0,1000,null,false);
	Shake("絵演振砲六", 2160000, 10, 0, 0, 0, 1000, Dxl3, false);
	Zoom("絵演振砲六上", 200, 2000, 2000, null, false);
	FadeDelete("絵演振砲六上", 300, true);

//◆ずがーん。
	CreateColorSP("絵白転", 20000, "#FFFFFF");
	CreateSE("SE02","se戦闘_攻撃_焼き鏝_弱");
	CreateSE("SE02a","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE02",0,1000,0,800,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("絵演*");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	DrawTransition("絵色赤熱", 0, 0, 150, 100, null, "cg/data/circle_01_00_1.png", true);

	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE02a") / 3;
	FadeDelete("絵色赤熱", 150, false);
	FadeFR2("絵板写",0,500,$残時間,0,0,30,Dxl3, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1140a00">
「……烫!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1150a01">
《与刚才一样……
　轻微损伤。不过几乎全身都被波及！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　所谓的皮肤感受到了<RUBY text="··">刺痛</RUBY>的灼烧感。
　没能避开刚才的<RUBY text="·">波</RUBY>。

　不过大范围扩散开来，威力也就相应削弱了吧。
与方才击中左腕的一击比起来，
真算温婉了。
　左腕已经碳化，连手指都动弹不得。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1160a00">
「……这是什么兵器？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1170a01">
《我怎么可能知道。
　不过能肯定的是，它利用了剑胄传音。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　利用了剑胄传音的射击兵器。
　……无法想象。

　据说除了无果而终被放弃的电磁加速炮外，
还有其他几项开发，
是次世代火炮研究之一吗？
　难道其中有可以实用化的项目么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1180a01">
《有追击！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1190a00">
「——啧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆回避機動
	CreateColorEX("絵色黒", 20000, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("@OnBG*", true, 2, 500, 60, false);
	Zoom("@OnBG*", 300, 1500, 1500, DxlAuto, false);
	Move("@OnBG*", 150, @0, @-100, null, true);
	Move("@OnBG*", 150, @0, @300, null, false);

	Wait(100);

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

//◆バラララと銃火
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureEX("絵演上", 18010, -150, -30, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演", 18000, -150, -30, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	Fade("絵演上", 0, 500, null, true);
	Shake("絵演上", 216000, 0, 20, 0, 0, 1000, null, false);
	Shake("絵演", 216000, 0, 4, 0, 0, 1000, null, false);
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	Delete("上背景");
	Delete("絵暗転");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);

	SetVolume("SE*", 5000, 0, null);
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演*");
	Delete("@MF*");

	CreateTextureSP("絵演背景", 17000, InLeft, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitAction("絵演背景", null);

	Move("絵演背景", 50000, -512, 0, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　我忍着身体的灼痛逃向上空。
　……这次的枪火全是实弹。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01L","se戦闘_動作_空走行01_L");
	MusicStart("SE01L",300,1000,0,1000,null,true);
	CreateTextureEX("絵演立絵", 17050, -2240, -200, "cg/st/3d村正標準_騎航_通常3b.png");
	Zoom("絵演立絵", 0, 1050, 1050, null, true);

	Shake("絵演立絵", 2160000, 2, 1, 0, 0, 1000, null, false);
	Zoom("絵演立絵", 300, 1000, 1000, null, false);
	Fade("絵演立絵", 300, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1200a00">
「看来无法进行连射……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1210a01">
《真是不幸中的万幸。
　不过这恐怕也只相当于为被火灼烧的罪人
脸上缠绕起绷带。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1220a00">
「这比喻是什么意思？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1230a01">
《还是别问为妙。不然你会意气消沉的。
　话说回来，你有何打算？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1240a00">
「……我想寻找并攻击装甲脆弱之处。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSEEX("SE01aL","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01aL",0,200,0,100,null,true);
	SetFrequency("SE01", 10000, 1000, Dxl3);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　即使是坚固无比的剑胄，也有比较而言脆弱的
部分。
　身为人所穿着的铠甲，弱点则必不可免。
而关节处正是弱点。

　为了保证活动自由，关节处的装甲必须轻薄，
也就必定产生间隙。
　瞄准这一处弱点的，是双轮悬——这是武者与武者
单挑时的定则之一。

　……虽然那怪物脱离了剑胄常识甚远。
　但还是会有某处要害吧。

　只是——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆竜気砲
	CreateSE("SE01","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	Wait(300);

	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1250a00">
「看这形势，也不能慢条斯理四下调查啊。
　在找到对方的胫骨之前，
我就会被先一步击坠了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1260a01">
《真是不尽人意的预测啊。
　更不尽人意的是，我无法否定。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_01_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　那门小炮，蕴藏着一击秒杀武者的力量。
　我根本无法在被那种武器瞄准的同时，
去寻找什么弱点。

　不如速战速决。
　——我虽然明白这一点。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ぶおーん
	CreateSE("SE01","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, false);

	Wait(150);

//◆急回避ー。
	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演荒*");
	Delete("絵色白");

//◆ちょっとかする。
	CreateColorSP("絵白転", 20000, "#FFFFFF");
	CreateSE("SE03","se戦闘_攻撃_焼き鏝_弱");
	CreateSE("SE03a","se戦闘_破壊_爆発02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("絵演*");
	Delete("絵色黒");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	DrawTransition("絵色赤熱", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);

	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE03a") / 3;
	FadeDelete("絵色赤熱", 150, false);
	Shake("絵板写", $残時間, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1270a01">
《……右腿装甲中弹！
　烧伤严重。开始治愈——》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1280a00">
「稍后再说。
　目前缓下速度就行。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　我强忍住被数百根针一口气刺中般的剧痛，
下达命令。
　武者能向剑胄提供的热量有限。将热量用于治愈，
性能当然会减弱。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1290a00">
「……腿上还有痛觉。
　比起已经没知觉的左腕来，
算是轻伤了吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1300a01">
《主君……
请使用“终焉”！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1310a00">
「不行。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　敌骑操控者也许会死。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1320a01">
《那就应该撤退！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1330a00">
「不行。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　少年他们也许会死。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1340a01">
《你会死的！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1350a00">
「不必你来担心。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("絵演背景", true, 2, 500, 60, false);
	Zoom("絵演背景", 300, 1500, 1500, DxlAuto, false);
	Move("絵演背景", 150, @0, @-100, null, true);
	Rotate("絵演背景", 1000, @0, @0, @-30, null,false);
	Move("絵演背景", 150, @0, @300, null, false);

	Wait(100);

//◆突入
	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18010, Center, Middle, "cg/ev/resize/ev502_村正抜刀片手l.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/resize/ev502_村正抜刀片手l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆剣撃。がしーん。
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE03","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE03",0,1000,0,1500,null,false);
	SL_centerout2(20010,@0, @0,2000);
	SL_centeroutfade2(10);

	PrintGO("上背景", 30000);
	CreateSE("SE03a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE03b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE03*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　我单手斩向敌人。
　当然，即便我赌上全身之力的双臂也无法
留下伤痕的硬壁，这次也不会就这样被斩裂。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆銃撃
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureEXadd("絵演覆", 18010, -250, -250, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	CreateTextureSP("絵演", 18000, -250, -250, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	SetBlur("絵演覆", true, 3, 500, 200, false);
	SetVertex("絵演覆", left, 460);
	Fade("絵演覆", 0, 750, null, true);
	Fade("絵演覆", 400, 0, DxlAuto, false);
	Zoom("絵演覆", 400, 1250, 1250, DxlAuto, false);
	Shake("絵演", 2160000, 8, 0, 0, 0, 1000, Dxl2, false);
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	Delete("上背景");
	Delete("絵暗転");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);

//◆回避
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演*");
	Delete("@MF*");

	CreateTextureSP("絵演背景", 17000, InLeft, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitAction("絵演背景", null);

//◆もう一撃。
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1700,null,false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演背景");

	CreateTextureSPadd("絵演上", 18010, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);


	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE04","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE04",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	PrintGO("上背景", 30000);
	CreateSE("SE04a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE04b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE04*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1360a01">
《有何计谋吗?!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　我无暇回答，再次攻击。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆がきーんと。
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_08_00_0.png", true);

	Delete("絵演背景");

	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");
	CreateTextureSPadd("絵演上", 18010, -260, -20, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	CreateTextureSP("絵演", 18000, -260, -20, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Zoom("絵演上", 200, 1150, 1150, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawDelete("絵黒幕", 150, 100, "slide_08_00_1", true);
	FadeDelete("絵演上", 200, true);

	PrintGO("上背景", 30000);
	CreateSE("SE02a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE02b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE02*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

//◆退避
	CreateSE("SE03a","se戦闘_動作_空上昇01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演");
	Delete("@MF*");

	CreateTextureSP("絵演背景", 17000, InLeft, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitAction("絵演背景", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　单调地持续着徒然的攻势。

　单调地——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆銃撃
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐_d.jpg");
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	Delete("上背景");
	Delete("絵暗転");
	MusicStart("SE02",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);

//◆旋回して避けてがきーんと。
	CreateSE("SE03a","se戦闘_動作_空上昇01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵演");
	Delete("@MF*");

	CreateTextureSP("絵演背景", 17000, InRight, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @300, @0, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	WaitAction("絵演背景", null);
	Move("絵演背景", 4000, @300, @0, null, false);

	CreateTextureEX("絵演村正", 17100, 1024, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");

	SetBlur("絵演村正", true, 2, 500, 80, true);
	Shake("絵演村正", 216000, 0, 2, 0, 0, 1000, null, false);
	Move("絵演村正", 1200, @-900, @-10, DxlAuto, false);
	Fade("絵演村正", 300, 1000, null, true);

	Wait(900);

	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 0, 850, null, true);
	Wait(20);
	Fade("絵色白", 380, 0, null, false);
	DrawDelete("絵色白", 380, 0, "slide_05_00_1", false);

	Move("絵演村正", 300, @-1600, @-120, Dxl3, true);
	Wait(300);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵効果*");
	Delete("絵演村正*");

	Wait(300);

	CreateSE("SE05","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE05",0,1000,0,1200,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

	CreateSE("SE05a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE05b","se戦闘_攻撃_刀衝突01");
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE05*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1370a01">
《……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　注意到了吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵演*");

	CreateTextureSP("絵演背景", 17000, InLeft, InTop, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @-300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

	WaitAction("絵演背景", null);

//◆銃撃
	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演", 18050, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演", 0, 1100, 1100, null, false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 30, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 2000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　……射击渐渐变得涣散。
　由此可见敌手的焦躁。

　我像是要激发这份焦躁般，重复着攻击。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突入してがきーん。
	CreateSE("SE01a","se戦闘_動作_空突進02");
	CreatePlainSPadd("絵板写", 20000);
	CreateColorEX("絵色黒", 20000, "#000000");
	SetBlur("絵板写", true, 2, 500, 80, false);
	Zoom("絵板写", 400, 1500, 1500, null, false);
	Wait(200);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵色黒", 200, 1000, null, false);
	DrawTransition("絵色黒", 200, 0, 1000, 100, Axl2, "cg/data/circle_01_00_0.png", true);

	Delete("絵板写");

	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE03","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE03",0,1000,0,1500,null,false);
	SL_leftup2(20010,@0, @0,2000);
	SL_leftupfade2(10);

	PrintGO("上背景", 30000);
	CreateSE("SE03a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE03b","se戦闘_攻撃_刀衝突01");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreatePlainSPadd("絵板写", 19000);
	Delete("上背景");
	MusicStart("SE03*",0,1000,0,800,null,false);
	SetBlur("絵板写", true, 2, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵暗転", 600, false);
	WaitKey(200);
	FadeDelete("絵板写", 400, true);

//◆ぱららっと銃火
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureEXadd("絵演覆", 18010, -140, -90, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演", 18000, -140, -90, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	SetVertex("絵演覆", 850, 260);
	Fade("絵演覆", 0, 500, null, true);
	Zoom("絵演覆", 0, 1250, 1250, null, true);
	Shake("絵演覆", 2160000, 6, 0, 0, 0, 1000, null, false);
	CreateSE("SE04","se戦闘_銃器_機関銃乱射02");
	Delete("上背景");
	Delete("絵暗転");
	MusicStart("SE04",0,1000,0,1000,null,false);

	MFlash(30, 10);

	WaitKey(1000);
	FadeDelete("絵演覆", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　反击已经不能称之为狙击了。
　只不过是叠加数量的镇压射击。

　也许是因为追截飞来飞去堪比苍蝇的我，
开始疲惫了吧。
　每一弹都不包含置我于死地的集中力。

　也有压倒性优势的缘故吧。
　对手是无法伤及自己丝毫的蚊蝇之士，
理所当然无法维持拼死的斗志。

　——时机已到。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆機動
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵演*");
	Delete("@MF*");

	CreateTextureSP("絵演背景", 17000, Center, InTop, "cg/bg/resize/bg002_空a_03l.jpg");
	Zoom("絵演背景", 0, 1500, 1500, null, true);
	Rotate("絵演背景", 0, @0, @0, @180, null,true);
	SetBlur("絵演背景", true, 2, 500, 80, false);

	Zoom("絵演背景", 650, 1000, 1000, null, false);
	Rotate("絵演背景", 650, @0, @0, @-180, null,false);
	Move("絵演背景", 1200, @0, @-300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

	WaitAction("絵演背景", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　我在天空划出扭曲的螺旋轨道，绕到银色巨物的
背后。
　举起太刀进攻。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆機動
	CreatePlainSP("絵板写", 20000);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureSP("絵演村正", 17100, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateStencil("絵演村正型",17110,Center,Middle,128,"cg/st/3d村正標準_騎突_戦闘.png",false);
	CreateColorEX("絵演村正型/色", 17120, "#000000");
	Fade("絵演村正型/色", 0, 750, null, true);

	Zoom("絵演村正*", 0, 150, 150, null, true);
	Request("絵演村正*", Smoothing);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演村正*", 0, @-256, @-100, null, true);
	Move("絵演村正*", 300, @0, @-60, DxlAuto, false);
	FadeDelete("絵板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　与敌人肉搏——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆機動。前面へ
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateColorEX("絵色黒", 19990, "#000000");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演村正*", 200, @30, @-60, null, true);
	Move("絵演村正*", 400, @280, @100, null, false);
	Zoom("絵演村正*", 400, 1500, 1500, null, false);
	Wait(100);
	Fade("絵演村正型/色", 300, 0, null, false);
	Wait(300);
	Fade("絵色黒", 100, 1000, null, true);
	Fade("絵演村正*", 100, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　——绕向前方。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_02_01_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1380a01">
《目标接近！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1390a00">
「明白——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 20000);
	SetBlur("絵板写", true, 2, 500, 80, false);
	CreateTextureSP("絵演", 18000, -514, -170, "cg/ev/resize/ev910_荒覇吐胸元アップm.jpg");
	Request("絵演", Smoothing);
	Rotate("絵演", 0, @0, @180, @0, null,true);
	Zoom("絵板写", 300, 1500, 1500, Dxl2, false);
	Fade("絵板写", 300, 0, Axl2, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　无视茫然彷徨寻找敌影的枪炮，
我跃到正面。
　那里也有一门枪炮。

　——那小巧而极度危险的炮门。

　敌人应该立即就察觉到了我的目的。
　但事到如今已经迟了。

　这门炮若是妨碍到我的作战计划——
　那首先，就得让它闭嘴。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣撃。
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");
	CreateTextureSPadd("絵演上", 18010, -260, -20, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	CreateTextureSP("絵演", 18000, -260, -20, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	SetVertex("絵演*", 687, 687);
	Zoom("絵演上", 200, 1150, 1150, Dxl2, false);
	Shake("絵演", 1000, 0, 20, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MoveFFP1stop();
	DrawDelete("絵色白", 150, 100, "slide_08_00_1", true);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　斩————

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//◆ＡＩフィールド発動
//◆要はバリヤーで止めた。
	CreateSE("SE01","se戦闘_荒覇吐_防壁発動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev911_荒覇吐ＡＩフィールド展開.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev911_荒覇吐ＡＩフィールド展開.jpg");
	Zoom("絵演上", 200, 1150, 1150, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	Wait(100);
	FadeDelete("絵演上", 200, true);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1400a00">
「——什么?!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1410a01">
《怎么会?!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　被阻止了!?
　不对——

{	SoundPlay("@mbgm13",0,1000,true);}
　<RUBY text="····">被逮到了</RUBY>!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆見物席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島観測台_03.jpg");
	StL(1000, @0, @0,"cg/st/st所長_通常_私服.png");
	StR(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStA(0,true);
	FadeBG(0,true);
	DrawDelete("上背景", 200, 100, "slide_01_01_1", true);
	DrawDelete("絵暗転", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1420b02">
「……」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1430b22">
「好啦好啦，在你提问之前我先告诉你。
　那是<RUBY text="ＡＩｆｉｅｌｄ">封铁力场</RUBY>。」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1440b22">
「利用电磁场的作用来限制敌骑的动作，
是防御兼辅助攻击用的武装。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1450b02">
「我没问你。」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1460b22">
「啊啊！　是这样啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆現場
	PrintGO("上背景", 30000);
	CreateSE("SE01","se特殊_雰囲気_集中01_L");
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSPadd("絵演覆", 18010, -110, -100, "cg/ev/resize/ev911_荒覇吐ＡＩフィールド展開m.jpg");
	CreateTextureSP("絵演", 18000, -110, -100, "cg/ev/resize/ev911_荒覇吐ＡＩフィールド展開m.jpg");
	SetVertex("絵演*", 800, 300);
	Shake("絵演覆", 3000, 4, 0, 0, 0, 1000, AxlDxl, false);
	Zoom("絵演覆", 3000, 1200, 1200, null, false);
	FadeDelete("絵演覆", 2800, false);
	OnBG(17000,"bg002_空a_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",2000,1000,0,750,null,true);
	DrawDelete("上背景", 200, 100, "slide_01_01_0", true);
	DrawDelete("絵暗転", 200, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1470a01">
《这是……磁力！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1480a00">
「竟然连这种东西都——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　竟然连<RUBY text="那种东西">引发磁场装置</RUBY>都有装备么！

　眼下，拘禁着我这钢铁之躯的，
正是与村正很亲密的力量——磁力。
　而且是强大的电磁力。

　利用蛮力，是逃脱不掉的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1490a01">
《——主君!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1500a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶおーん
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreatePlainEX("絵板写", 18010);
	CreateSE("SE01","se特殊_鎧_駆動音02");
	CreateSE("SE01b","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,750,null,false);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 300, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	CreateSEEX("SEL01a","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SEL01a",0,1000,0,100,null,true);
	SetFrequency("SEL01a", 10000, 1000, Dxl3);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 50, 750, null, true);
	FadeDelete("絵色白", 800, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　前面的炮口发出带着火药味的呻吟。
　——那是本该已斩碎的凶器。

　瞄准敌人王牌的意图被粉碎的如今，这个位置，
这个距离，转而意味着由逆袭之路登上断头台的
阶梯。
　若不立即逃脱，便必死无疑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演弐", 18100, -250, -490, "cg/ev/resize/ev911_荒覇吐ＡＩフィールド展開l.jpg");
	Move("絵演弐", 300, -300, -200, DxlAuto, false);
	Fade("絵演弐", 300, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0761]
　但是，我动弹不得。
　磁波之网束缚着四肢。

　磁波——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1510a00">
「磁力镀装!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆磁波ｖｓ磁波。ジジっと。
	CreateSE("SE01","se戦闘_陰義_磁力弾く");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 20000, "#FFFFFF");
	CreateTextureSPadd("絵演上", 18210, -923, -113, "cg/ev/resize/ev903_村正磁気バリアー展開_al.jpg");
	CreateTextureSP("絵演", 18200, -923, -113, "cg/ev/resize/ev903_村正磁気バリアー展開_al.jpg");
	SetVertex("絵演*", 1700, 440);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Wait(10);
	FadeDelete("絵色白", 200, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆離脱
	CreateSE("SE02","se戦闘_衝撃_攻撃交錯02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	Move("絵演弐", 0, -256, -144, null, true);
	FadeDelete("絵演*", 300, false);
	SetBlur("絵演弐", true, 2, 500, 80, false);
	Zoom("絵演弐", 300, 750, 750, null, true);

//◆竜気砲発振
	SetVolume("SEL*", 100, 0, null);

	CreateSE("SE03","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 19990, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, false);
	DrawTransition("絵背景", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);

	Wait(300);

	WaitAction("絵背景", null);
	PrintGO("上背景", 30000);
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵演背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	MusicStart("SE06",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "slide_01_01_1", true);
	Move("絵演背景", 650, 0, @0, Dxl2, false);
	DrawDelete("絵暗転", 150, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　磁力反弹导致拘束解除，我从炮口前躲避
开来。
　真是千钧一发。

　暗示着黄泉之路的波动舔舐着我的侧腹，
全速逃离——逃离。
　总而言之要拉开距离。

　敌人竟有那种防备措施，完全超乎预料。
　总之只能重整架势了。

　持续着毫无胜算的战斗，就像是在玩一场
自己单方面亮出手中底牌的扑克游戏。
　——不必说，于对手而言是最理想的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆追撃砲火。避けるよー。
	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演", 18050, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 250, true);

//◆ちょっと当てられたり。
	CreateColorSP("絵白転", 20000, "#FFFFFF");
	CreateSE("SE02","se戦闘_攻撃_焼き鏝_弱");
	CreateSE("SE02a","se戦闘_破壊_爆発02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("絵演*");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	DrawTransition("絵色赤熱", 0, 0, 150, 100, null, "cg/data/circle_01_00_1.png", true);

	CloudZoomSet(17110);
	CloudZoomFade(0,false);
	CloudZoomVertex(10000,@512,@-144,null,false);
	CloudZoomStart(400,800,800,300,400);

	CreateTextureSP("絵演背景", 17000, 0, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	SetShade("絵演背景", MEDIUM);
	Zoom("絵演背景", 0, 5000, 5000, null, true);
	FadeDelete("絵白転", 300, false);
	CreatePlainEX("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE02a") / 3;
	FadeDelete("絵色赤熱", 150, false);
	Zoom("絵板写", 0, 1150, 1150, null, true);
	FadeFR2("絵板写",0,500,$残時間,0,0,30,Dxl3, true);
	Delete("絵板写");

	CreateSE("SE03a","se戦闘_動作_空上昇01");
	CreateTextureEX("絵演立絵村正", 17100, -2300, -100, "cg/st/3d村正標準_騎航_通常3b.png");

	SetBlur("絵演立絵村正", true, 2, 500, 120, false);
	Shake("絵演立絵村正", 2160000, 1, 3, 0, 0, 1000, null, false);
	Move("絵演背景", 270000, @-1024, @576, null, false);

	MusicStart("SE03a",0,1000,0,1000,null,false);
	Fade("絵演立絵村正", 300, 1000, null, false);
	Move("絵演立絵村正", 2000, @30, @-120, DxlAuto, false);

	Wait(2000);

	CreateSE("SE04","se戦闘_動作_空走行02_L");
	MusicStart("SE04",2000,1000,0,1500,null,true);
	Move("絵演立絵村正", 20000, @30, @30, DxlAuto, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1520a00">
「……啧。
　一旦深入接近，逃走时就很困难啊！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1530a01">
《确实。
　而且，还附带着被那种拙劣招数
打得落花流水的屈辱感。真是糟透了！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1540a00">
「拙劣？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1550a01">
《那种傻大个配上那么点儿磁力，不是吗？
　根本不值一提！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1560a01">
《那种玩意儿，我轻易就能斩断。
　前提是理解力低下的操控者不要
进行没必要的手下留情！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　剑胄的讽刺所指，并无误解。
　但绝非可行。我不能杀了对方——只要
他与银星号无关。

　必须另寻攻略方法。
　那门炮与那堵墙。能够超越两重障碍的手段。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1570a00">
「有没有办法不被那片磁场捕捉住？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1580a01">
《……这很困难。
　在那片磁场中散发同极的磁力，
就会被弹向外侧。这点刚才得到了证明……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1590a01">
《也无从利用速度来突破，如此一来。
　剩下的……只能等待散发磁场的力量
枯竭吧。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1600a00">
「散发磁场的……力量？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1610a01">
《话虽如此，但那不是阴义。
　所以和热量也没关系……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1620a01">
《……热量……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 19000, Center, Middle, "cg/ev/ev911_荒覇吐ＡＩフィールド展開.jpg");
	Fade("絵演", 300, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　——力量。
　散发出磁场的东西。

　是电力吧。
　恐怕那门怪炮的动力也是。

{	FadeDelete("絵演", 600, false);}
　但是，这电力又是从何处得来的？
　巨型躯体内藏有电池吗？

　也可能是在利用某种方法，
从外部接受供给……
　如果是电池，应该随着使用，终会枯竭。

　——持久战术在这种情况下有效吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1630a01">
《……主君。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　村正似乎与我一样，想出了什么主意。
　它打破了像是配合我而制造出的沉默，
一副冥思苦想的样子向我搭话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1640a01">
《我注意到了……
　敌人的战斗方式怎么看都很奇怪，不是吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1650a00">
「什么意思？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1660a01">
《请回想最初的那阵风。
　那是夺取热量的阴义……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1670a01">
《刚才我也说过，那是对抗武者时，
极为有效的攻击。
　……但是为何却只使用一次后就再也
没有了呢？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1680a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　这么一说，的确不可思议。
　根本没必要弹如雨下地进行射击。

　顺序错了。先使用阴义来止住我的脚步就好。
　让我失去热量，一旦我飞不起来，之后就好比
打鸭子了。

　为何没这么做？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1690a00">
「因为阴义会消耗巨大的热量吗……
　不，那个巨物好歹也保存着
足以飞行的热量。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1700a01">
《是啊。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1710a00">
「……难道那阴义对武者不起作用吗？
　以其威力，不足以冲破装甲的防护……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1720a01">
《是的。
　应该这么考虑吧？》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1730a01">
《但是，又有疑问出现了。
　……这种阴义到底是用来干嘛的？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1740a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
　该不会是为了虐杀非装甲的人类吧。
　准备那种巨型身体，设想的敌人却是
一般人，未免太粗暴了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1750a01">
《你怎么看？　主君。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1760a00">
「…………
　敌人的那种巨型体魄——」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1770a00">
「就普通情况思考，它应该比通常的剑胄
需要更大的热量才对啊？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1780a01">
《是啊。这应该没错。
　即使出自极为优秀的名工巧匠之手，
也会从操控者身上夺走难以估量的
热量……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1790a01">
《这一点也很不可思议——》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1800a00">
「这一点却和阴义正好契合。
　……那份力量，是否是为了从外部补充
欠缺的热量而存在的呢。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1810a01">
《……！
　原来如此。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1820a01">
《那阵风会<RUBY text="··">夺取</RUBY>生物的热量……
　不是用于攻击，而是为补给而存在的阴义！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1830a00">
「……若真是如此，就能定下策略了。
　现在，那家伙没有补给源。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1840a00">
「附近只有被剑胄保护着的我。
　岛上的生命力几乎都已枯竭。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1850a01">
《若维持持久战，热量欠缺就是
无可避免的……！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1860a00">
「那门炮与磁场都不适合持久战。
　大概。」

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs1870a01">
《那么——》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs1880a00">
「嗯。
　——要吸引那只怪物来回移动。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	Move("絵演立絵村正", 200, @30, @-20, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, false);
	DrawDelete("絵色白", 150, 100, "slide_08_00_0", false);
	Move("絵演立絵村正", 200, @2048, @576, null, true);

	WaitKey(600);

	CreateColorSP("絵暗転", 20000, "#000000");
	DrawTransition("絵暗転", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
	CloudZoomDelete(0,false);

//◆見物席
//◆戦闘の遠響
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateSE("SEL01","se戦闘_特殊_空中戦風景対荒覇吐01_L");
	OnBG(100,"bg046_江ノ島観測台_03.jpg");
	FadeBG(0,true);
	MusicStart("SEL01",1000,750,0,1000,null,true);
	Delete("上背景");
	DrawDelete("絵暗転", 200, 100, "slide_01_01_0", true);

	SoundPlay("@mbgm08",0,1000,true);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1890b02">
「……对方改变战斗方法了啊。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1900b02">
「从斗牛变成斗牛士了。
　……已经放弃在实力上做文章了么。
这判断下得真快。不过很妥当。」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1910b02">
「但是，再没有什么决策比立刻
撤逃来得妥帖了……不，如果已经理解到
自己掉进陷阱无处可逃，就又另当别论。
　这猿猴鼻子真灵。」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1920b02">
「雪车町感到棘手，也不是不能理解。
　与如此轻车熟路之人对峙，
的确挺困难的。说什么需要一支大队，
也未必就是空穴来风……」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1930b22">
「我说呀，那说法到底算什么啊。
　事到如今，我还没得到
任何解释哦？」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1940b02">
「所长。我有问题。」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1950b22">
「没在听……看表情，他根本没在听我说话……
　这家伙当真把人当成猴子
之类的东西了？」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1960b22">
「说不定那种说法是真的呢。
　白种人的女人根本不把黄色人种当人看，
而认为他们相当于宠物，所以就满不在乎地
在大和男人面前换衣服……」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1970b22">
「唔嗷！
　真想看！
　我想被当成宠物！」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs1980b02">
「敌人似乎是转为持久战的方针了。
　这对那兵器有效吗？」

{	SetVolume("SEL*", 5000, 0, null);
	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs1990b22">
「…………啥？　持久战？
　啊，那可糟了。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2000b02">
「说明。」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2010b22">
「什么说明不说明的，正如您所见呀。
　那东西又大又不灵活，若要捉住逃跑的
敌人，热量立刻就会消耗殆尽。」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2020b22">
「如果对方是杂兵，在此之前就会被
逮住了……看那样子是没可能了。
　我投降了哈。」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2030b02">
「…………」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2040b02">
「真是难以想像的缺陷兵器……」

{	FwC("cg/fw/fw所長_笑い.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2050b22">
「缺陷你妹！
　交换燃料罐就万事大吉啦！」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2060b02">
「燃料罐？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2070b22">
「就是让那个大块头飞上天的
热源啦。
　让骑体停止下来，换上新家伙，
一段时间内又能运作了。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2080b02">
「那就快点安排。」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2090b22">
「不过可惜的是，那燃料罐很难
筹备到呀。
　库存稀少。根本不能这样
挥霍。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2100b02">
「但是，库存还是有的，对吧？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2110b22">
「……我说呀少佐殿下。
　这里的研究还没结束呢。
以后也还得继续下去呀。」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2120b22">
「怎么可以随便将无处补充的
燃料罐浪费在这种莫名其妙的
斗殴中呀？
　喂我说。这么浅显的道理，你倒是快弄明白。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2130b02">
「使用。」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2140b22">
「……啊啊啊啊啊!?
　混蛋你给我适可而止！我可是忍耐忍耐再忍耐地
陪你玩到现在的。就算我这虚数空间般宽宏的心灵
也是有限度的！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆チャキ。
	CreateSE("SE01","se戦闘_銃器_拳銃構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(200);

	SetFwC("cg/fw/fw所長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2150b22">
「——」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2160b02">
「所长。
　试问……」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2170b02">
「只有英雄、圣人和愚者深信自己是
不死之身。
　你是其中的哪一个？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2180b22">
「……嘿。
　你傻了吗？」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/013vs2190b22">
「“人生不会终结”这种绝望，
我从来不相信。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ずきゅーん。
	CreateSE("SE01","se戦闘_銃器_拳銃発砲01");
	CreateSE("SE01a","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(200);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("絵フラッシュ白", 300, true);

	SetNwC("cg/fw/nw研究員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs2200e068">
「……所。」

//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs2210e068">
「所长!!」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2220b02">
「……这份职务，现在开始属于你了。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/013vs2230b02">
「希望你作为一个新所长，能遵从我的指示。」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/013vs2240e068">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正ＶＳ荒覇吐
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	DrawDelete("上背景", 150, 100, "slide_01_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_01_0", true);

//◆猛銃撃
	CreateSE("SE01","se戦闘_荒覇吐_攻撃01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 600, true);

	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MFlash(30, 5);

//◆回避機動
	CreateSE("SE03","se戦闘_動作_空突進02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

//◆竜気砲ぶいーん
	CreateSEEX("SEL04","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SEL04",0,1000,0,100,null,true);
	SetFrequency("SEL04", 10000, 1000, Dxl3);
	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	SetVolume("SEL04", 100, 0, null);
	CreateSE("SE04a","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19990, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, false);
	DrawTransition("絵色白", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);
	WaitAction("絵色白", null);

//◆回避ずぎゃー
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演", 3000, -615, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	SetBlur("絵演", true, 2, 500, 80, false);
	Shake("絵演", 2160000, 1, 1, 0, 0, 1000, null, false);

	DrawDelete("上背景", 150, 100, "slide_01_01_0", true);
	DrawDelete("絵色黒", 150, 100, "slide_01_01_0", true);

	CreateSE("SE05","se戦闘_動作_空突進01");
	CreateColorEXadd("絵色竜気砲", 19000, "#FFFFFF");
	DrawTransition("絵色竜気砲", 0, 0, 50, 1000, null, "cg/data/slide_01_04_0.png", true);

	Fade("絵色竜気砲", 2000, 1000, null, false);

	Wait(1500);

	MusicStart("SE05",0,1000,0,1000,null,false);
	Move("絵演", 150, @-216, @200, Dxl2, false);

	Wait(100);

	DrawTransition("絵色竜気砲", 200, 50, 1000, 1000, null, "cg/data/slide_01_03_0.png", true);

	PrintGO("上背景", 25000);
	CreateSE("SE06","se戦闘_動作_空上昇01");
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演背景", 17000, InRight, InTop, "cg/bg/resize/bg002_空a_03l.jpg");
	SetBlur("絵演背景", true, 2, 500, 30, false);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Move("絵演背景", 800, @200, @-500, Dxl2, false);
	DrawDelete("上背景", 150, 100, "slide_02_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_0", true);

	CreateTextureEX("絵演立絵村正", 17100, 400, -170, "cg/st/3d村正標準_騎航_陰義b.png");
	Zoom("絵演立絵村正", 0, 1500, 1500, null, true);
	Request("絵演立絵村正", Smoothing);
	SetBlur("絵演立絵村正", true, 2, 500, 100, true);
	Shake("絵演立絵村正", 2160000, 1, 2, 0, 0, 1000, null, false);
	Move("絵演背景", 27000, @200, @0, null, false);
	Move("絵演立絵村正", 2000, @-200, @0, DxlAuto, false);
	Fade("絵演立絵村正", 300, 1000, null, true);

	Wait(1700);

	CreateSE("SE06a","se戦闘_動作_空上昇01");
	MusicStart("SE06a",0,1000,0,1500,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 250, 0, null, false);
	DrawDelete("絵色白", 300, 100, "slide_08_00_1", false);
	Move("絵演立絵村正", 200, @-2000, @-200, Dxl2, false);

	Wait(500);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);
	Delete("絵色白");
	Delete("絵演立絵村正");
	CreateTextureSP("絵演背景", 17000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @200, @400, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_03_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　上方旋转后冲进右下方，边<RUBY text="ｒｏｌｌ">翻滚</RUBY>边大幅度绕弯
以拖长距离。反转——计算好与敌骑捕捉擦身而过
的时机进行突破，钻过闪耀银光的威容正侧方，
移到它身后——上升。

　临近耐久极限的<RUBY text="Ｇ">荷重</RUBY>使骨骼嘎吱作响。我知道，
力道与速度的调整稍有误差，
微妙的均衡就会脆弱崩溃，无用的钙质结晶
便会瞬间粉碎。冷汗在脊背上流淌。

　敌手的技术也非泛泛之辈。
　本应已甩到身后的弹幕忽而瞬间在前方展开。
我立即调转方向，却不偏不倚地再次
展开于前方——躲开后，又一次次在前方出现。

　有数次不慎钻进弹幕而勉强逃脱了虎口的经历。
感觉自己就像在与冥河的摆渡人开玩笑一样。
　肝火大动的死神仿佛下一秒就会揪住我的衣襟。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2250a00">
「我可没有在死亡线上跳舞的兴趣……！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2260a01">
《简直就像当今享乐主义的年轻人呀！
　顺带再哼一首小曲儿如何?!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆銃撃
	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MFlash(20, 20);
	CreateTextureSPadd("絵演上", 18100, Center, Middle, "cg/ev/ev909_荒覇吐_d.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev909_荒覇吐_d.jpg");
	Zoom("絵演上", 200, 1200, 1200, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆ぐるぐる避け
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#CC0000");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSP("絵窓/絵演立絵村正", 19100, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	CreateSE("SE02","se戦闘_動作_空上昇01");
	Request("絵窓/絵演立絵村正", Smoothing);
	Zoom("絵窓/絵演立絵村正", 0, 850, 850, null, true);
	Move("絵窓/絵演立絵村正", 0, @266, @0, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	SetBlur("絵窓/絵演立絵村正", true, 2, 300, 100, true);
	Shake("絵窓/絵演立絵村正", 5000, 1, 2, 0, 0, 1000, null, false);
	Move("絵窓/絵演立絵村正", 1000, @-1500, @0, Axl2, false);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	Wait(500);

	Zoom("絵窓", 500, 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　无数火线随着时间推移而越发锐利。
　不知何时，其中所掺杂的从容不迫已经消失。
甚至还能看到相反的某种情绪。

　焦躁——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("@MF*");
	CreateSE("SE01a","se戦闘_荒覇吐_移動01");
	MusicStart("SE01a",0,1000,0,750,null,false);
	CreateTextureEX("絵演背景", 18000, -480, InBottom, "cg/ev/resize/ev909_荒覇吐_cm.jpg");
	Move("絵演背景", 3000, @0, -220, DxlAuto, false);
	Fade("絵演背景", 600, 1000, null, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2270a00">
「看来他已经注意到我们的目的了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2280a01">
《应该是吧。
　我们明明不进行反击，
却不远不近地粘在他周围转来转去。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
　只要有像个人样的脑袋，都会察觉吧。
　与之相对，对方选择了猛攻吗。

　在厚重的铠甲之中，怪物的操控者在咬牙切齿么。
　还是在嘲笑使出了错误战法的敌人呢。
　成功与否。还无法预测凶吉。

　现在也只能尽全力应战。
　迷茫会夺走我的胜机。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2290a00">
「——磁力加速！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2300a01">
《了解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 20000, "#FFFFFF");
	CreateTextureSPadd("絵演陰義二", 19005, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	CreateTextureSP("絵演陰義三", 19000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	Zoom("絵演陰義*", 0, 1300, 1300, null, true);
	SetBlur("絵演陰義二", true, 2, 500, 30, false);
	Zoom("絵演陰義*", 100, 1000, 1000, Dxl2, false);
	Fade("絵フラ", 100, 0, null, false);
	FadeDelete("絵演陰義二", 300, true);

//◆すげー弾幕
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 20000, "#FFFFFF");
	Wait(20);
	Delete("絵演陰義*");
	FadeDelete("絵色白", 0, true);
	MFlash(20, 20);
	CreateTextureSPadd("絵演上", 18100, -700, Middle, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	CreateTextureSP("絵演", 18000, -700, Middle, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	Request("絵演*", Smoothing);
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	Zoom("絵演上", 500, 1200, 1200, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(500);

//◆すげー回避
	CreateSE("SE03","se特殊_陰義_磁力加速02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18010, -1000, -480, "cg/ev/resize/ev904_村正マグネットコーティング_al.jpg");
	CreateTextureSP("絵演", 18000, -1000, -480, "cg/ev/resize/ev904_村正マグネットコーティング_al.jpg");
	SetVertex("絵演*", 1587, 634);
	Zoom("絵演上", 0, 1500, 1500, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Move("絵演*", 200, -680, -210, Dxl2, false);
	Shake("絵演", 200, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE03a","se特殊_陰義_磁力加速01");
	MusicStart("SE03a",0,1000,0,1200,null,false);
	CreateTextureSPadd("絵演上", 18010, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");
	SetVertex("絵演*", 795, 315);
	Zoom("絵演上", 0, 1500, 1500, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(300);

	CreateSE("SE03b","se戦闘_動作_空上昇01");
	MusicStart("SE03b",0,1000,0,1500,null,false);
	CreateTextureSPadd("絵演上", 18010, Center, -610, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	CreateTextureSP("絵演", 18000, Center, -610, "cg/ev/ev944_村正ＶＳ荒覇吐.jpg");
	Zoom("絵演上", 0, 1500, 1500, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
　仿佛撒网般，弹雨自全方位堵截而来。
　我用加速机动穿梭于这张网的每一丝缝隙。

　若是普通的飞行能力，早被捕捉了吧。
　幸运的是，不做无用的猜疑，我只听令于与头脑无关
而直接冻结至心脏的直觉。

　但，这要持续到何时呢。
　并非只有敌人才有极限。即使我不会
先对手一步陷入缺乏热量的困境，
热量的衰退也会招致飞行性能整体下降。

　村正的机动性能与敌骑的射击能力
被小于号连接起来的瞬间，胜负便定下了。
　这在我方看来，决不赏心悦目。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2310a01">
《敌人的速度迟缓下来了……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2320a00">
「确定吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2330a01">
《他本来就是个迟钝的老王八，所以也没
多大区别。
　不过的确是衰退了。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
　终于。
　激烈的枪击如今还在持续——那巨型身体里难道
装满了弹仓不成？——即使果真如此，只要底座不稳，
它们也会失去意义。

　之后只要继续慎重地应战就好——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("@MF*");
	PrintGO("上背景", 25000);
	CreateTextureSPadd("絵演背景覆", 18010, -120, -70, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演背景", 18000, -120, -70, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateSE("SE01","se戦闘_荒覇吐_移動01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("絵演背景*", 6000, -60, -70, DxlAuto, false);
	FadeDelete("上背景", 600, true);
	FadeDelete("絵演背景覆", 800, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2340a01">
《……？》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2350a01">
《什么？》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2360a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	CreateTextureEX("絵演荒砲弾", 18010, Center, Middle, "cg/ev/ev913_荒覇吐追尾弾.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
　毫无预兆。
　子弹的暴风雨突然消失无踪了。

{	CreateSE("SE01","se戦闘_破壊_爆発02");
	MusicStart("SE01",0,1000,0,1250,null,false);
	Fade("絵演荒砲弾", 300, 850, null, false);}
　取而代之射出来的是，
　——那是炮弹？

{	CreateSE("SE01a","se戦闘_破壊_爆発02");
	MusicStart("SE01a",0,1000,0,1150,null,false);}
　三四发大型弹被连续射出。
　速度迟缓。

　不，本应很快。
　但以枪炮的子弹来说，是不值一提的低速。

　<RUBY text="···········">看见子弹之后再开始躲避</RUBY>也绝对来得及。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2370a00">
「……退避。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2380a01">
《嗯……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵背景", 17000, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	DrawDelete("上背景", 200, 100, "slide_01_01_1", true);
	DrawDelete("絵暗転", 200, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
　骑体倒向左边，转一圈后便脱离了子弹轨道。
　子弹也没有玩出特别的花样，
徒然地掠过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2390a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2400a01">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2410a00">
「奇怪的子弹……
　就像压缩了那只怪物后在它头上
插了一把长矛。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2420a01">
《是啊……
　…………？》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2430a01">
《返回来了?!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2440a00">
「什么?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転する奇弾
	CreateSE("SE01","se戦闘_荒覇吐_ビット移動04");
	MusicStart("SE01",0,800,0,1200,null,false);
	SetVolume("SE01", 200, 600, null);
	CreateTextureSP("絵演荒砲弾", 18000, Center, Middle, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	Zoom("絵演荒砲弾", 0, 1000, 1000, null, false);
	Zoom("絵演荒砲弾", 200, 800, 800, Dxl2, false);
	Shake("絵演荒砲弾", 200, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾上", 200, true);

	Wait(200);

	CreateSE("SE01a","se戦闘_荒覇吐_ビット移動04");
	MusicStart("SE01a",0,600,0,800,null,false);
	SetVolume("SE01a", 200, 1000, null);
	CreateTextureSPadd("絵演荒砲弾二上", 18110, -358, -198, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾二", 18100, -358, -198, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	Zoom("絵演荒砲弾二*", 0, 800, 800, null, false);
	Request("絵演荒砲弾二*", Smoothing);
	SetBlur("絵演荒砲弾二", true, 2, 500, 30, false);
	DrawTransition("絵演荒砲弾二*", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", false);

	Move("絵演荒砲弾二*", 200, -530, -310, Dxl2, false);
	Zoom("絵演荒砲弾二*", 200, 1200, 1200, Dxl2, false);
	Shake("絵演荒砲弾二", 200, 0, 0, 0, 10, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾二上", 400, true);

//◆ファンネル·ビット
	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾三上", 18310, -30, -30, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾三", 18300, -30, -30, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾三*", 256, 144);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

	CreateSE("SE04","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE04",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾四上", 18410, -30, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	CreateTextureSP("絵演荒砲弾四", 18400, -30, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	SetVertex("絵演荒砲弾四*", 256, 720);
	Zoom("絵演荒砲弾四上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾四上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾四", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾四上", 200, true);

	CreateSE("SE05","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE05",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演荒砲弾五上", 18510, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾五", 18500, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾五*", 1280, 720);
	Zoom("絵演荒砲弾五上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾五上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾五", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾五上", 200, true);

	CreateSE("SE06","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾六上", 18610, -410, -30, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾六", 18600, -410, -30, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾六*", 1280, 144);
	Zoom("絵演荒砲弾六上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾六上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾六", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾六上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
　子弹又回来了。
　它折回头——就像有自己的意志一般——再次瞄准了
我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2450a00">
「什——」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2460a00">
「那是什么东西啊?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2470a01">
《快避开——！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆回避
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("絵演荒砲弾*");
	CreateTextureSPadd("絵演上", 18010, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);
	FadeDelete("絵演上", 200, true);

//◆ひゅんひゅんと掠め過ぎてゆくビット
	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演三上", 18310, -90, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	CreateTextureSP("絵演三", 18300, -90, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	SetVertex("絵演三*", 256, 144);
	Zoom("絵演三上", 0, 1500, 1500, null, false);
	Zoom("絵演三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演三", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演三上", 200, true);

	CreateSE("SE04","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE04",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演四上", 18410, -90, -80, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演四", 18400, -90, -80, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演四*", 256, 720);
	Zoom("絵演四上", 0, 1500, 1500, null, false);
	Zoom("絵演四上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演四", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演四上", 200, true);

	CreateSE("SE05","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE05",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演五上", 18510, -410, -80, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演五", 18500, -410, -80, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演五*", 1280, 720);
	Zoom("絵演五上", 0, 1500, 1500, null, false);
	Zoom("絵演五上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演五", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演五上", 200, true);

	CreateSE("SE06","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演六上", 18610, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演六", 18600, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演六*", 1280, 144);
	Zoom("絵演六上", 0, 1500, 1500, null, false);
	Zoom("絵演六上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演六", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演六上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
　退避。躲藏。
　速度完全没有变化。就子弹的大小和形状来看，
被击中后的伤害可不能小觑，但要从那股射线
脱身也不费吹灰之力。

　但是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	CreateSE("SE01","se戦闘_荒覇吐_移動01");
	CreateTextureEXadd("絵演荒本体覆", 18010, InLeft, -50, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演荒本体", 18000, InLeft, -50, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("絵演荒本体*", 800, -100, @0, Dxl2, false);
	FadeDelete("上背景", 300, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2480a01">
《本体——！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2490a00">
「唔!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ズガガッと銃撃
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Fade("絵演荒本体覆", 0, 800, null, true);
	Zoom("絵演荒本体覆", 0, 1100, 1100, null, true);
	Shake("絵演荒本体覆", 216000, 4, 1, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵色白", 150, true);

	MFlash(30, 10);

	Wait(300);

//◆避ける。ちょっと被弾。
	CreateSE("SE03","se戦闘_動作_空突進02");
	MusicStart("SE03",0,1000,0,1250,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("絵演荒*");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateSE("SE04","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE04a","se戦闘_破壊_爆発02");
	DrawTransition("絵色赤熱", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04a",0,1000,0,1000,null,false);
	Delete("絵色黒");

	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE04a") / 3;
	FadeDelete("絵色赤熱", 300, false);
	Shake("絵板写", $残時間, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
　果然……
　果然是要这样吗！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2500a01">
《腰部装甲中弹！
　请小心，损伤已经累积不少了！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2510a00">
「呜——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
　剑胄的腰部是支撑起连接翅膀的翼型装甲的重要部位。
　这里被严重破坏，就不免会坠落。

　以为曾一度远离自己的死亡线再次靠近。
　多次扑空的死神正窃笑地看着我，
向我招手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2520a01">
《主君！
　那种子弹又射出两发——》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2530a00">
「怎么还没完！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット
	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	CreateTextureSPadd("絵演荒砲弾三上", 18310, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾三", 18300, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾三*", 256, 720);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);
	MusicStart("SE03",0,1000,0,900,null,false);
	Move("絵演荒砲弾三*", 200, -90, -30, Dxl2, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

	CreateSE("SE04","se戦闘_荒覇吐_ビット移動01");
	CreateTextureSPadd("絵演荒砲弾四上", 18410, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾四", 18400, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾四*", 1280, 720);
	Zoom("絵演荒砲弾四上", 0, 1500, 1500, null, false);
	MusicStart("SE04",0,1000,0,1100,null,false);
	Move("絵演荒砲弾四*", 200, -420, -80, Dxl2, false);
	Zoom("絵演荒砲弾四上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾四", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾四上", 200, true);

//◆避けー。
	CreateSE("SE05","se戦闘_動作_空突進01");
	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, Center, InTop, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @-288, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

	Wait(300);

//◆銃撃
	CreateSE("SE06","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(30, 8);
	CreateTextureSPadd("絵演荒上", 18010, -250, -280, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	CreateTextureSP("絵演荒", 18000, -250, -280, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	Zoom("絵演荒上", 0, 1200, 1200, null, false);
	Zoom("絵演荒上", 300, 1000, 1000, Dxl2, false);
	Shake("絵演荒", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒上", 200, true);

	Wait(300);

//◆にーげーてー。
	CreateSE("SE07","se戦闘_動作_空上昇01");
	MusicStart("SE07",0,1000,0,1500,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, InRight, InTop, "cg/bg/bg204_横旋回背景b_03.jpg");
	CreateSE("SE07a","se戦闘_動作_空上昇01");
	CreateTextureEX("絵演立絵村正", 17100, -1450, 200, "cg/st/3d村正標準_騎航_通常4b.png");
	SetBlur("絵演立絵村正", true, 2, 500, 120, false);

	MusicStart("SE07a",0,1000,0,1000,null,false);
	Fade("絵演立絵村正", 300, 1000, null, false);
	BezierMove("絵演立絵村正", 950, (-1450,200){-1820,140}{-1770,-240}(-1660,-190), Dxl1, false);
	Move("絵演背景", 150000, -100, -30, DxlAuto, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);
	Shake("絵演立絵村正", 2160000, 1, 3, 0, 0, 1000, null, false);

	Wait(800);

	CreateSE("SE07b","se戦闘_動作_空走行02_L");
	MusicStart("SE07b",2000,1000,0,1500,null,true);

	Move("絵演立絵村正", 20000, -1630, -140, DxlAuto, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2540a01">
《这奇怪的炮，先是猴子般模仿我的磁场之盾，
这次又出现自动追踪的子弹……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2550a01">
《这趣味恐吓箱到底是要怎样啊！
　不会是某人制造出来耍人玩的吧?!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2560a00">
「我也有这种感觉！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
　沿着飞行线路自动追尾的子弹。
　紧接着是精确瞄准的枪炮射击。

　走投无路了。
　也许此处已是末路。

　——我听见了死亡的声音。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆ぶおーん
	CreateSEEX("SEL01","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SEL01",0,1000,0,100,null,true);
	SetFrequency("SEL01", 10000, 1000, Dxl3);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreatePlainSPadd("絵板写", 18900);
	CreateTextureSPadd("絵演効果", 19000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("絵演立絵村正*");
	Delete("絵演背景*");

	SetBlur("絵板写", true, 2, 500, 30, false);
	Zoom("絵板写", 0, 1150, 1150, null, true);
	Zoom("絵板写", 300, 1000, 1000, null, false);
	DrawDelete("絵板写", 300, 100, "circle_01_00_0", false);

	Zoom("絵演効果", 300, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "circle_01_00_1", true);

//◆ビット六発
	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾三上", 18310, -30, -30, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾三", 18300, -30, -30, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾三*", 256, 144);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

	CreateSE("SE04","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE04",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾四上", 18410, -30, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	CreateTextureSP("絵演荒砲弾四", 18400, -30, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	SetVertex("絵演荒砲弾四*", 256, 720);
	Zoom("絵演荒砲弾四上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾四上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾四", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾四上", 200, true);

	CreateSE("SE05","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE05",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演荒砲弾五上", 18510, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾五", 18500, -410, -258, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾五*", 1280, 720);
	Zoom("絵演荒砲弾五上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾五上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾五", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾五上", 200, true);

	CreateSE("SE06","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE06",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾六上", 18610, -410, -30, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾六", 18600, -410, -30, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾六*", 1280, 144);
	Zoom("絵演荒砲弾六上", 0, 1500, 1500, null, false);
	Zoom("絵演荒砲弾六上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾六", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾六上", 200, true);

//◆回避
	PrintGO("上背景", 30000);
	CreateSE("SE07","se戦闘_動作_空上昇01");
	MusicStart("SE07",0,1000,0,1000,null,false);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateTextureSP("絵演背景", 17000, InRight, Middle, "cg/bg/resize/bg001_空a_03.jpg");
	CreateTextureSP("絵演村正立絵", 17100, 1024, Middle, "cg/st/3d村正標準_騎航_陰義.png");
	Shake("絵演村正立絵", 216000, 0, 2, 0, 0, 1000, DxlAuto, false);
	SetBlur("絵演村正立絵", true, 2, 500, 30, true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	Move("絵演背景", 5000, @576, @0, null, false);
	Move("絵演村正立絵", 300, @-1024, @0, Dxl2, false);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	Wait(150);

	Move("絵演村正立絵", 300, @-30, @0, null, true);

	Wait(200);

	CreateSE("SE07a","se戦闘_動作_空上昇01");
	MusicStart("SE07a",0,1000,0,1500,null,false);
	Move("絵演村正立絵", 300, @-2000, @-150, Axl2, true);

//◆竜気砲発振
	SetVolume("SEL*", 100, 0, null);
	CreateSE("SE08","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE08",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	Wait(300);

//◆直撃
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureSPadd("絵背景上", 17010, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateSE("SE10","se戦闘_攻撃_焼き鏝_強");
	MusicStart("SE10",0,1000,0,1000,null,false);
	Shake("絵背景", 3000, 0, 30, 0, 0, 500, null, false);
	FadeFR2("絵背景上",0,500,3000,@0,@0,100,Dxl2, false);
	Delete("上背景");
	FadeDelete("絵暗転", 3000, true);
	FadeDelete("絵背景上", 1000, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2570a00">
「……啊啊啊!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2580a01">
《——左脚装甲中弹！　直击！
　大部分碳化……就现状而言，无法恢复……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
　没有疼痛。
　但无知觉才更可怕。

　左脚与左腕一模一样，连趾尖都动弹不得。
只有沉浸在黑暗中的冰冷。
　即使有村正的恢复力，治愈也需要几天时间。

　但这种情况下，我还怀疑能否熬到为这些琐事烦心的
时候。
　左腕右脚左脚，不断累积起来的损伤正像切葱
一样削弱着村正的性能。毋庸置疑。

　……绝境——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット三発
	CreateSE("SE01","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾一上", 18310, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾一", 18300, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾一*", 256, 720);
	Zoom("絵演荒砲弾一上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾一*", 200, -90, -80, Dxl2, false);
	Zoom("絵演荒砲弾一上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾一", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾一上", 200, true);

	CreateSE("SE02","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾二上", 18410, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾二", 18400, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾二*", 1280, 720);
	Zoom("絵演荒砲弾二上", 0, 1500, 1500, null, false);

	Move("絵演荒砲弾二*", 200, -410, -80, Dxl2, false);
	Zoom("絵演荒砲弾二上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾二", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾二上", 200, true);

	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演荒砲弾三上", 18510, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾三", 18500, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾三*", center, 144);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);

	Move("絵演荒砲弾三*", 200, -410, -205, Dxl2, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

//◆避けるー。
	CreateSE("SE04","se戦闘_動作_空突進01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @0, @288, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitKey(500);

//◆銃撃
	CreateSE("SE06","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(30, 8);
	CreateTextureSPadd("絵演荒上", 18010, -110, -20, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演荒", 18000, -110, -20, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	Zoom("絵演荒上", 0, 1200, 1200, null, false);
	Zoom("絵演荒上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒上", 200, true);

	Wait(300);

//◆避けるけどー。
	CreateSE("SE07","se戦闘_動作_空上昇01");
	MusicStart("SE07",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演荒");

	CreateTextureSPadd("絵演村正上", 18010, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演村正", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演村正上", 0, 1300, 1300, null, false);
	Zoom("絵演村正上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演村正", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演村正*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演村正上", 200, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2590a00">
「啧……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2600a01">
《还有！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット三発
//◆ビット三発
	CreateSE("SE01","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾一上", 18310, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾一", 18300, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾一*", 256, 720);
	Zoom("絵演荒砲弾一上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾一*", 200, -90, -80, Dxl2, false);
	Zoom("絵演荒砲弾一上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾一", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾一上", 200, true);

	CreateSE("SE02","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾二上", 18410, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾二", 18400, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾二*", 1280, 720);
	Zoom("絵演荒砲弾二上", 0, 1500, 1500, null, false);

	Move("絵演荒砲弾二*", 200, -410, -80, Dxl2, false);
	Zoom("絵演荒砲弾二上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾二", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾二上", 200, true);

	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演荒砲弾三上", 18510, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾三", 18500, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾三*", center, 144);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);

	Move("絵演荒砲弾三*", 200, -410, -205, Dxl2, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

//◆避けるー。
	CreateSE("SE04","se戦闘_動作_空突進01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, InRight, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @216, @288, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitKey(500);

//◆銃撃。
	CreateSE("SE06","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(30, 8);
	CreateTextureSPadd("絵演荒上", 18010, -300, -240, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	CreateTextureSP("絵演荒", 18000, -300, -240, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	Zoom("絵演荒上", 0, 1200, 1200, null, false);
	Zoom("絵演荒上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒上", 200, true);

	Wait(300);

//◆食らいました。ズガッと。
	CreateSE("SE07","se戦闘_動作_空突進02");
	MusicStart("SE07",0,1000,0,1250,null,false);
	CreateColorEXadd("絵色白", 30000, "#FFFFFF");
	SetBlur("絵演荒", true, 3, 500, 30, false);
	Zoom("絵演荒", 150, 1500, 1500, Dxl2, false);
	Fade("絵色白", 150, 1000, Axl2, false);
	DrawTransition("絵色白", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	Delete("絵演荒*");
	Delete("@MF*");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateSE("SE07a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE07b","se戦闘_攻撃_鎧攻撃命中03");
	DrawTransition("絵色赤熱", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);
	MusicStart("SE07a",0,1000,0,1000,null,false);
	MusicStart("SE07b",0,1000,0,1000,null,false);
	Delete("絵色白");

	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE07b")/2;
	FadeDelete("絵色赤熱", 300, false);
	Shake("絵板写", $残時間, 0, 60, 0, 0, 1000, Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1200]
　机动力的极限点——
　我受到弹雨的洗礼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2610a00">
「……呜……！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2620a01">
《主君……！
　这样下去会被击败的！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1220]
　不必说我也明白。
　看这情况，已是<RUBY text="····">穷途末路</RUBY>。

　所有退路都被封锁，我的棋子已经孤立无援。
　对弈者再使出一招决胜技，即分胜负。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット二発
	CreateSE("SE01","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾一上", 18310, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾一", 18300, InLeft, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾一*", 256, 720);
	Zoom("絵演荒砲弾一上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾一*", 200, -410, -230, Dxl2, false);
	Zoom("絵演荒砲弾一上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾一", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾一上", 200, true);

	CreateSE("SE02","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾二上", 18410, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	CreateTextureSP("絵演荒砲弾二", 18400, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾m.jpg");
	SetVertex("絵演荒砲弾二*", 1280, 720);
	Zoom("絵演荒砲弾二上", 0, 1500, 1500, null, false);

	Move("絵演荒砲弾二*", 200, -110, -90, Dxl2, false);
	Zoom("絵演荒砲弾二上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾二", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾二上", 200, true);

//◆避ける
	CreateSE("SE03","se戦闘_動作_空突進01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, InLeft, InTop, "cg/bg/resize/bg002_空a_03l.jpg");
	Move("絵演背景", 650, @-512, @-288, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_03_01_0", true);

	WaitKey(500);

//◆ぶおーん。
	CreateSE("SE03","se特殊_鎧_駆動音01");
	CreateSE("SE03b","se特殊_鎧_駆動音02");
	MusicStart("SE03",0,1000,0,800,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演荒上", 0, 1200, 1200, null, false);
	Zoom("絵演荒上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒上", 200, true);

	CreateSEEX("SEL01","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SEL01",0,1000,0,100,null,true);
	SetFrequency("SEL01", 10000, 1000, Dxl3);

	CreatePlainSPadd("絵板写", 18900);
	CreateTextureSPadd("絵演効果", 19000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	SetBlur("絵板写", true, 2, 500, 30, false);
	Zoom("絵板写", 0, 1150, 1150, null, true);
	Zoom("絵板写", 3000, 1000, 1000, null, false);
	DrawDelete("絵板写", 3000, 100, "circle_01_00_0", false);

	Zoom("絵演効果", 3000, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 3000, 0, null, false);
	DrawDelete("絵演効果", 3000, 100, "circle_01_00_1", false);

	Wait(3000);

//◆竜気砲
	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	Wait(300);

	SetVolume("SE*", 5000, 0, null);
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	CreateColorEXadd("絵演荒竜", 19000, "#FFFFFF");
	CreateTextureSP("絵演村正", 18000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	DrawTransition("絵演荒竜", 0, 0, 100, 1000, null, "cg/data/slide_01_00_0.png", true);
	Fade("絵演荒竜", 5000, 750, null, false);
	DrawDelete("上背景", 150, 100, "slide_01_03_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1230]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2630a01">
《主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1240]
　退避——
　从射线上逃开——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット飛来
	CreateSE("SE02","se戦闘_荒覇吐_ビット移動04");
	MusicStart("SE02",0,600,0,800,null,false);
	SetVolume("SE02", 200, 1000, null);
	CreateTextureSPadd("絵演荒砲弾一上", 19110, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾l.jpg");
	CreateTextureSP("絵演荒砲弾一", 19100, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾l.jpg");

	Delete("絵演村正*");
	Delete("絵演荒竜");
	Zoom("絵演荒砲弾一", 0, 800, 800, null, false);
	Request("絵演荒砲弾一*", Smoothing);
	SetBlur("絵演荒砲弾一上", true, 2, 500, 30, false);
	DrawTransition("絵演荒砲弾一*", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Move("絵演荒砲弾一*", 200, 250, 70, Dxl2, false);
	Zoom("絵演荒砲弾一", 200, 1500, 1500, Dxl2, false);
	Zoom("絵演荒砲弾一上", 200, 2250, 2250, Dxl2, false);
	Shake("絵演荒砲弾一", 200, 0, 0, 0, 10, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾一上", 400, true);

//◆直撃
	CreateColorEXadd("絵色白", 30000, "#FFFFFF");
	SetBlur("絵演荒", true, 3, 500, 30, false);
	Zoom("絵演荒", 150, 1500, 1500, Dxl2, false);
	Fade("絵色白", 150, 1000, Axl2, false);
	DrawTransition("絵色白", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	Delete("絵演荒*");
	CreateColorSPover("絵色赤熱", 20000, "#CC0000");
	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateSE("SE07a","se戦闘_衝撃_衝突01");
	CreateSE("SE07b","se戦闘_攻撃_鎧攻撃命中03");
	DrawTransition("絵色赤熱", 0, 0, 200, 100, null, "cg/data/circle_01_00_1.png", true);
	MusicStart("SE07a",0,1000,0,1000,null,false);
	MusicStart("SE07b",0,1000,0,1000,null,false);
	Delete("絵色白");

	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 50, false);
	$残時間=RemainTime("SE07b")/2;
	FadeDelete("絵色赤熱", 300, false);
	Shake("絵板写", $残時間, 0, 60, 0, 0, 1000, Dxl3, true);
	Delete("絵板写");

	CreatePlainSP("絵板写", 30000);
	CreateTextureSP("絵演村正立絵", 17100, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	Move("絵演村正立絵", 0, @140, @0, null, true);
	Shake("絵演村正立絵", 800, 4, 2, 0, 0, 1000, Dxl2, false);
	Move("絵演村正立絵", 800, @90, @20, DxlAuto, false);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1250]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2640a00">
「嘎啊?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2650a01">
《不好——！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビット残り三発
	CreateSE("SE01","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演荒砲弾一上", 18310, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	CreateTextureSP("絵演荒砲弾一", 18300, InRight, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex02.jpg");
	SetVertex("絵演荒砲弾一*", 256, 144);
	Zoom("絵演荒砲弾一上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾一*", 200, -90, -220, Dxl2, false);
	Zoom("絵演荒砲弾一上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾一", 500, 0, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾一上", 200, true);

	CreateSE("SE02","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演荒砲弾二上", 18410, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	CreateTextureSP("絵演荒砲弾二", 18400, InLeft, InBottom, "cg/ev/resize/ev913_荒覇吐追尾弾mex01.jpg");
	SetVertex("絵演荒砲弾二*", 1280, 144);
	Zoom("絵演荒砲弾二上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾二*", 200, -420, -80, Dxl2, false);
	Zoom("絵演荒砲弾二上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾二", 500, 20, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾二上", 200, true);

	CreateSE("SE03","se戦闘_荒覇吐_ビット移動01");
	MusicStart("SE03",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演荒砲弾三上", 18510, Center, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	CreateTextureSP("絵演荒砲弾三", 18500, Center, InTop, "cg/ev/resize/ev913_荒覇吐追尾弾mex03.jpg");
	SetVertex("絵演荒砲弾三*", center, 720);
	Zoom("絵演荒砲弾三上", 0, 1500, 1500, null, false);
	Move("絵演荒砲弾三*", 200, -420, -220, Dxl2, false);
	Zoom("絵演荒砲弾三上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演荒砲弾三", 500, 20, 20, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演荒砲弾三上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1260]
　退路————
　全无。

　死炮的射线一路贯通过来。
　能供逃避的方位被追尾弹封锁。

　我被将死了。
　我投降。

　到此为止。
　我会死。

　我会葬身于此。
　——————<RUBY text="····">葬身于此</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜気砲
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreateTextureSP("絵演荒", 19000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Request("絵演荒", Smoothing);
	Delete("絵演荒覇砲弾*");
	Zoom("絵演荒", 10000, 1500, 1500, DxlAuto, false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1270]
　…………但是。
　我究竟是否被允许葬身于此呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 0, null);
	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 300, 1000, Dxl2, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1280]
//◆顔グラなし
//【光】
<voice name="光" class="光" src="voice/ma04/013vs2660a14">
「正相反。
　——对吧？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆村正
	PrintBG("上背景", 30000);
	CreateSE("SE01","se特殊_陰義_発動03");
	CreateColorSPadd("絵暗転", 20000, "#FFFFFF");
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("上背景", 100, true);
	WaitKey(200);
	FadeDelete("絵暗転", 300, true);

	SoundPlay("@mbgm12",0,1000,true);

	CreateWindow("絵窓上", 15000, 0, 0,1024, 288, false);
	CreateWindow("絵窓下", 15000, 0, 288, 1024, 576, false);
	SetAlias("絵窓上","絵窓上");
	SetAlias("絵窓下","絵窓下");

	CreateColorSP("絵窓上/絵色100", 15000, "Black");
	CreateColorSP("絵窓下/絵色100", 15000, "Black");

	CreateWindow("絵窓縦", 15000, 512, 0,400, 576, false);
	SetAlias("絵窓縦","絵窓縦");
	CreateTextureEX("絵窓縦/絵EV100", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("絵窓縦/絵EV100", Smoothing);
	Zoom("絵窓縦/絵EV100", 0, 2000, 2000, null, true);
	Move("絵窓縦/絵EV100", 0, @-300, @0, null, false);

	CreateTextureEX("絵窓縦/絵EV200", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	Request("絵窓縦/絵EV200", Smoothing);
	Zoom("絵窓縦/絵EV200", 0, 2000, 2000, null, true);
	Move("絵窓縦/絵EV200", 0, @-300, @0, null, false);

	Delete("黒幕１");

	CreateTextureSP("絵EV100", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_a.jpg");
	CreateTextureEX("絵EV200", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("絵EV100", Smoothing);
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	Move("絵EV100", 0, @+400, @+288, null, false);
	Request("絵EV200", Smoothing);
	Zoom("絵EV200", 0, 2000, 2000, null, true);
	Move("絵EV200", 0, @0, @+288, null, false);

	Move("絵EV100", 500, @-400, @0, Dxl1, false);
	Move("絵窓上", 300, @0, @-200, null, false);
	Move("絵窓下", 300, @0, @+200, null, true);

	WaitAction("絵EV100", null);

	CreateColorEXadd("絵色100", 14001, "White");

	OnSE("se特殊_鎧_装着01",1000);

	Fade("絵EV200", 0, 1000, null, false);
	Fade("絵色100", 0, 1000, null, false);

	DrawTransition("絵色100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("絵EV100");
	FadeDelete("絵色100",1000,true);

	CreateColorEX("絵色100", 14005, "Black");
	Fade("絵色100", 0, 700, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("絵窓縦/絵EV100", 0, 1000, null, false);
	DrawTransition("絵窓縦/絵EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);
//	CreateColorSP("絵色100", 10, "White");

	Wait(300);

	Fade("絵窓縦/絵EV200", 0, 1000, null, false);
	Shake("絵窓縦/絵EV200", 500000, 2, 1, 0, 0, 500, null, false);

	OnSE("se特殊_電撃_帯電01",700);

	CreateSE("SEL01","se特殊_電撃_帯電01");
	MusicStart("SEL01",0,700,0,1000,null,true);

	CreateColorEXadd("絵窓縦/絵200", 20000, #99CCFF);
	Fade("絵窓縦/絵200", 10, 600, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 500, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 700, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 500, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 800, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1290]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2670a00">
「啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1300]
　我运起<RUBY text="··">力量</RUBY>。

　从脐下丹田巡向五脏六腑，又落定脊髓。
　抵达阳茎之后，再次上升至丹田。

　运转。
　我运转根源之力，呼唤隆隆之荒乱。

　　　　　　　天破崩稜落炼鬼属
　　　　　　　妙法八界死辰雷领

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1310]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2680a00">
「磁装·终焉！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2690a01">
《!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆全身に紫電がー。溜めポーズ
	SetVolume("OnSE*", 1000, 0, null);
	SetVolume("SEL01", 1000, 0, null);

	CreateSE("SE01","se特殊_電撃_放電02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 20010, "#FFFFFF");

	Delete("絵窓上/*");
	Delete("絵窓下/*");
	Delete("絵窓縦/*");

	Delete("絵窓上");
	Delete("絵窓下");
	Delete("絵窓縦");

	Delete("絵色100");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureSP("絵演", 4000, -440, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_cm.jpg");

	Wait(50);

	FadeDelete("絵色白", 100, false);

	Move("絵演", 300, -380, @0, Dxl2, false);
	Fade("絵演", 300, 1000, null, true);
	CreateSE("SEL01","se特殊_電撃_帯電02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEXadd("プロ絵上", 4020, -380, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dm.jpg");
	CreateTextureEXsub("プロ絵", 4010, -380, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dm.jpg");
	SetVertex("プロ絵", 1160, 470);

	DenziBladeCharge();

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2700a00">
「电磁拔刀——祸!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆撃ちました。
	CreateColorSPadd("絵色白", 30000, "#FFFFFF");

	Wait(10);

	SetVolume("SE*", 100, 0, null);
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateSE("SE01","se特殊_電撃_放電01");
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/resize/ef030_汎用電磁抜刀am.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/resize/ef030_汎用電磁抜刀am.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Delete("プロ*");
	Delete("Ｐ*");
	Delete("上背景");
	FadeDelete("絵色白", 100, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 700, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(500);

//◆ビット三機をすべて斬墜
	CreateColorSPadd("絵色白", 30000, "#FFFFFF");

	Wait(10);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateSE("SE02","se戦闘_衝撃_鎧散華");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureEX("絵演荒砲弾", 3110, Center, Middle, "cg/ev/ev913_荒覇吐追尾弾.jpg");
	CreateTextureSPover("絵演上", 3100, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	SetVertex("絵演上", 580, 230);
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("上背景");
	Delete("絵色白");
	Fade("絵演荒砲弾", 0, 750, null, true);
	FadeDelete("絵演荒砲弾", 500, false);
	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, false);

	Wait(500);

//◆竜気砲発振
	CreateSE("SE08","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE08",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演荒上", 18210, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	CreateTextureSP("絵演荒", 18200, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");

	SetBlur("絵演荒上", true, 2, 500, 30, false);
	Zoom("絵演荒上", 0, 1150, 1150, null, true);
	Zoom("絵演荒上", 300, 1000, 1000, null, false);
	Shake("絵演荒上", 300, 0, 20, 0, 0, 1000, DxlAuto, false);
	DrawDelete("絵演荒上", 300, 100, "circle_01_00_1", true);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	WaitKey(2000);

//◆すれすれで回避ー。
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵演*");
	Fade("絵色白", 0, 750, null, true);
	CreateTextureSP("絵演背景", 17000, Center, InBottom, "cg/bg/resize/bg002_空a_03l.jpg");
	SetVolume("SE08", 3000, 0, null);
	FadeDelete("絵色白", 650, false);
	Move("絵演背景", 650, @0, @288, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1330]
　我要，
　脱离死亡线————

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	WaitAction("絵演背景", null);

//◆一瞬、グレイアウト
	CreateSE("SE01","se人体_体_心臓の音02");
	CreatePlainSP("絵演失神一", 20000);
	CreatePlainSP("絵演失神二", 19990);
	SetShade("絵演失神一", HEAVY);
	SetShade("絵演失神二", SEMIHEAVY);
	SetTone("絵演失神*", Monochrome);
	SetBlur("絵演失神*", true, 1, 500, 30, false);
	SetVolume("@mbgm*", 300, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演失神*", 300, 1150, 1150, Dxl2, false);
	Fade("絵演失神一", 100, 0, Dxl2, false);
	FadeDelete("絵演失神二", 200, true);
	Delete("絵演失神*");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1340]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2710a01">
《……唔！
　热量……！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2720a00">
「哈……啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1350]
　寒意包裹住全身。
　我试图甩脱——但根本甩不开。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1360]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2730a00">
「没办法了……
　快着陆。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2740a01">
《了解……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆着陸
	CreateSE("SE01","se戦闘_動作_鎧_着地01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵演背景", 300, @0, @-288, null, false);
	Wait(250);

	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 200, 100, "slide_02_01_0", true);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);

	Delete("上背景");
	DrawDelete("絵暗転", 200, 100, "slide_02_01_0", true);

	CreateSE("SE01a","se戦闘_衝撃_鎧転倒01");
	CreatePlainEX("絵板写震", 5000);
	Fade("絵板写震", 0, 300, null, true);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Shake("絵板写震", 1000, 0, 60, 0, 0, 1000, Dxl1, true);
	Delete("絵板写震");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1370]
　我降落到地面……摔倒了。
　带着无法挪动双腿的丑态，我只能难堪地
伏在地面。

　如今受到狙击的话，就无路可逃了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1380]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2750a00">
「村正！　敌情！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2760a01">
《…………<?>
{	Wait(500);}
它停止了！
　敌骑也着陆了！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2770a01">
《看来对方的热量也达到极限了……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1390]
　一纸之隔啊。
　我深深地……深深地，松了口气。

　但是，我并没有闲暇去悠然体味拾回一条命的喜悦。
　事态至此，就要拼恢复力了。

　我得先敌人一步整装待发，将对方一军——
　否则，下次就真的会被一路逼到三途川的对岸吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1400]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/013vs2780a00">
「村正……检查骑体状况。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/013vs2790a01">
《了解——
　哎呀？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1410]
　剑胄给出怪异的应答。
　紧接着，背后的地面鸣叫了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"ma04_014vs.nss"

.//プロセス用======================================================

..//電磁抜刀放電ループ
function DenziBladeCharge()
{
	CreateProcess("Ｐ電磁抜刀放電ループ", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("Ｐ電磁抜刀放電ループ","Ｐ電磁抜刀放電ループ");
	Request("Ｐ電磁抜刀放電ループ", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	}

}