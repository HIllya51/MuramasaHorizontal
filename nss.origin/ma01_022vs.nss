//<continuation number="1250">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_022vs.nss_MAIN
{

//コックピット用Ｓｅｔ
	CP_AllSet("真改");

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
	#bg002_空a_02=true;
	#bg001_空a_02=true;
	#bg201_旋回演出背景市街地_02=true;

	#ev942_村正ＶＳ真改=true;
	#ev107_双輪懸図解_a=true;
	#ev107_双輪懸図解_b=true;
	#ev107_双輪懸図解_c=true;
	#ev107_双輪懸図解_d=true;
	#ev108_太刀打図解_a=true;
	#ev108_太刀打図解_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_真改=true;

	$PreGameName = $GameName;

	$GameName = "ma01_023vs.nss";

}

scene ma01_022vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"ma01_021.nss"

//※演出指示はほぼスルーでＯＫ。構想が古いので。08/09/04
//◆飛翔音。バヒューン。
//◆モニター展開。ＡＣとかそれ系のフライトシュミレータ。但し和風アレンジ。呪術風？
//◆直進。微速ズームインで表現か。

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵フラ", 10000, "#FFFFFF");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Delete("上背景");

	CreateColorSP("黒幕１", 1500, "Black");

	FadeDelete("絵フラ", 2000, true);

//嶋：真改ステータス780：最大出力450程度で想定
	Cockpit_AllFade(300,780,0);

	CreateColorSPadd("絵色100", 1000, "White");
	Fade("絵色100", 0, 800, null, true);


	Wait(300);

	OnSE("se特殊_コックピット_起動音04",1000);
	Fade("絵色100", 1000, 0, Dxl1, false);
	DrawTransition("黒幕１", 800, 1000, 0, 300, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Cockpit_AllFade0();
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");

	Delete("絵背景100");

	SoundPlay("@mbgm36",0,1000,true);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("shin01", 1200, Center, -800, "cg/st/resize/3d真改_騎航_通常.png");

	Move("shin01", 0, @-500, @0, null, true);

	Request("絵背景100", Smoothing);
	Request("shin01", Smoothing);

	Zoom("絵背景100", 0, 550, 550, null, true);
	Zoom("shin01", 0, 500, 500, null, true);

	Fade("絵背景100", 0, 1000, null, true);

	CreateSE("SE01","se戦闘_動作_空中待機_L");
	MusicStart("SE01",300,1000,0,1000,null,true);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("shin01", 500, @+500, @0, Dxl1, false);
	Fade("shin01", 500, 1000, null, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_0", true);

	Wait(500);

	Move("絵背景100", 1500, @-200, @-150, null, false);
	Move("shin01", 1500, @-180, @-100, null, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl1, false);
	Shake("shin01", 100000, 1, 1, 0, 0, 500, null, false);
	Zoom("shin01", 1000, 1000, 1000, Dxl1, true);

	Wait(1500);

	OnSE("se戦闘_動作_空突進01",1000);
	Move("shin01", 500, @+2000, @-600, Dxl1, true);

	SetVolume("SE01", 500, 0, null);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteStC(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Cockpit_AllFade2();
	MyTr_Count(0,350);
	CP_SpeedChange(0,600,null,true);
	CP_HighChange(0,890,null,true);

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",300,1000,0,1000,null,true);
	FrameShake();
	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@絵背景100",1);

	CP_AziChange(10000,14,AxlDxl,false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　飞行————

　将飞行推进器临界运转。确保在最低限度
时间内产生最大推动力后弹跳——起飞
——滑翔。这简直能称之为无谋的紧急加速，
真改的装甲却出色完成了。

　克服了空中解体的危机，
装甲刺破暗红色的天空化作一羽利箭。
　
　确认出现在视野里的仪表。

　速度达到六百航线。
　高度略小于九百——<k>更低的低空飞行十分危险。

　持续加速着，恢复飞行稳定。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 500, null);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Cockpit_AllFade0();

	Delete("shin01");

	CreateTextureSP("絵Rollbg001", 1500, 0, -576, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureSP("絵Rollbg002", 1500, 0, -576, "cg/bg/resize/bg001_空a_02.jpg");

	CreateTextureSP("絵真改", 1600, Center, Middle, "cg/st/3d真改_騎航_通常.png");

	SetVertex("絵Rollbg*", 0, Middle);
	Zoom("絵Rollbg*", 0, 2000, 1000, null, true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@+1024,@-100,Dxl2,true);

	BGMoveAuto("@絵真改",2);

	CreateSCR1("@絵Rollbg001","@絵Rollbg002",1000,-2024, @0);

/*
	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureEX("絵St100", 1000, Center, -325, "cg/st/3d真改_騎航_通常.png");
	Fade("絵St100", 0, 1000, null, true);

	Shake("絵背景100", 50000, 1, 1, 0, 0, 500, null, false);
	BGMoveAuto("@絵St100",1);
	Cloud_Move(1000);
*/


	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　速度并未随心所欲提升的现实令人心烦意乱。
　以前曾在好奇心的驱使下试验过一次飞行性能。
那时并不是这样。
我记得那时装甲速度远远大于此刻。


　为何今天就达不到？
　有什么原因吗？

　……事到如今我才想到，应该对装甲性能
再多加体验一些。然而同时我也想起。
从没那个必要——<k>因为完全
没有想过会引起这种事态。这种……

　<RUBY text="········">遭遇同样武者之事</RUBY>！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 1000, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_02_1.png", true);

	Cockpit_AllFade2();

	BGMoveDelete();
	Delete("絵StRollbg*");
	Delete("絵真改");

	SCR1stop();
	CloudZoomDelete(0,true);

	Delete("絵St100");
	Delete("絵背景100");

	CP_SpeedChangeA();
	CP_HighChangeA();
	CP_AltChangeA();

	DrawDelete("黒幕１", 300, 100, "slide_01_02_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我焦躁不安地，一味向前飞行。
　到底逃到哪里才好。继续这样飞行下去就要
越过关东防空圈了。这种结果必须避免。


　六波罗的<RUBY text="雷达">警戒网</RUBY>虽然几乎不对防空圈内部多加注意，
但对越过、接近边境的猎物却能准确无误地捕捉。
对于未持有六波罗识别信号的人来说，那便意味着，死亡。

　无论如何都要在那之前甩开敌人——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

	#voice_on_真改=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0010b38">
《敌骑，<RUBY text="上方丁未">上方二〇〇度</RUBY>。距离三五〇。
　来袭。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0020b57">
「——什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　来袭？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0030a00">
《<RUBY text="Ｄｏｇｆｉｇｈｔ">尾随追击</RUBY>乃武者之耻。
　唯有<RUBY text="Ｂｕｌｌｆｉｇｈｔ">迎头猛击</RUBY>才为武者荣耀！》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0040b57">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　头盔内侧响起男人的声音。
　随即，侧腹内部周围有如毛虫蠕过。

　这种感触是。
　当被利刃刺中时所能感知到的，那种。

　鸡皮疙瘩四起。
　汗毛倒竖。
　并非来自肉体外部而是由内袭来的寒气。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


/*

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0050b57">
「————啊啊啊啊啊啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/

//◆左へ９０度ロール。ピッチアップ
//◆こういう時、高度計や速度計も合わせて変動

	CreateSE("SE10","se人体_体_心臓の音02");
	CreateSE("SE11","se人体_体_心臓の音02");

	CreateColorEXmul("フラッシュ白", 15000, "RED");
	Fade("フラッシュ白",100,500,null,true);
	MusicStart("SE10",0,1000,0,1000,null,false);
	MusicStart("SE11",0,500,0,1000,null,false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	OnSE("se戦闘_動作_空突進03",1000);

	BGMoveDelete();
	CP_RollBarMove("@絵背景50",2000,90,Dxl1,false);

	Wait(900);

	CP_AltChange2(1000,45,null,false);
	Zoom("絵背景50", 2500, 1500, 1500, Axl1, false);
	Move("絵背景50", 3500, @+250, @+550, Dxl1, false);
	MyTr_Count(2000,545);
	CP_SpeedChange(2000,400,null,false);
	CP_HighChange(2000,1200,null,false);
	CP_AziChange(2500,92,Axl1,false);
	Wait(1000);
	CP_SpeedChange(3000,512,null,false);
	CP_HighChange(3000,600,null,false);

	Wait(1000);

	SetVolume("SE01", 500, 1, null);


	CreateColorEXadd("フラッシュ白", 19000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	MovieSESet(20000,"mv真改疾走","se特殊_mv用_真改疾走");
	MovieSEStart2(300,1000);

	SetVolume("SE01", 500, 700, null);
	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);
	CreateTextureSP("Rollbg001", 1500, -1024, -576, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureSP("Rollbg002", 1500, -1024, -576, "cg/bg/resize/bg001_空a_02.jpg");
	SetVertex("Rollbg*", 1024, Middle);
	Zoom("Rollbg*", 0, 1000, 5000, null, true);
	CreateSCR1("@Rollbg001","@Rollbg002",1000,0, @0);

	FadeDelete("フラッシュ白",500,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　<RUBY text="Ｒｏｌｌ">侧滚</RUBY>！
　回转机体改变方向逃避逃避逃避————！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣撃カットイン
//◆ガーン。振動。モニター激しく揺れる
	CreateColorEX("絵色100", 20000, "Black");
	CreateColorEX("フラッシュ白", 21000, "WHITE");
	SL_leftup2(20001, @0, @0, 1500);

	Fade("絵色100", 300, 1000, null, true);

	BGMoveDelete();
	Delete("絵Rollbg*");
	Delete("Rollbg*");

	SCR1stop();
	CloudZoomDelete(0,true);

	FrameShakeDelete();

	Wait(50);

	OnSE("se戦闘_攻撃_野太刀振る01",1000);

	SL_leftupfade2(6);

	Wait(100);

	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵色100");
	CP_AllChange("@絵背景50",0, 500, 900, 512, 350);
	CP_RollBarMove("@絵背景50",0,-5,null,true);
	Move("絵背景50", 0, -512, -338, null, true);
	Move("絵背景50", 500, -512, -288, null, false);
	CP_RollBarMove("@絵背景50",0,10,null,true);
	Shake("@CP_Frame", 500, 30, 0, 0, 0, 500, null, false);
	OnSE("se戦闘_破壊_鎧04",1000);
//Azi = 25
	CP_AziChange(0,25,null,true);

	CP_RollBarMove("@絵背景50",500,0,Axl1,false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	OnSE("se戦闘_破壊_爆発01",1000);
	FrameShakeOnly(1500,6,10,600,Dxl1,false);
	CP_RollBarMove("@絵背景50",500,5,Axl1,true);
	CP_RollBarMove("@絵背景50",500,-5,Axl1,true);
	CP_RollBarMove("@絵背景50",500,0,Axl1,true);
	CP_IHPChange(500,9,null,false);
..//Power_900
	CP_PowerChange(500,900,null,false);
	MyLife_Count(500,702);
	MyTr_Count(500,424);

	CP_SpeedChangeA();
	CP_HighChangeA();
	CP_AltChangeA();

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0060b57">
「咳啊!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	BGMoveAuto("@絵背景50");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　侧腹受到猛烈冲击。
　振动一直传至体内，翻搅着五脏六腑。

　腹中仿佛有铁球在滚动一般。
　感到胃液上涌。

　凭借意志力抑制住感觉，我向剑胄问道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0070b57">
「受伤了吗——真改！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0080b38">
《装甲腰部受到若干损伤。
　对飞行及战斗并无影响。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　似乎没有被砍伤。
　伸手确认被袭之处并无大碍，对这个事实感到安心的
同时却不由得因另一个理由心寒万分。
真改回答中的一句。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0090b57">
「……战斗？」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0100b38">
《敌骑速度在我方之上。
　脱离战场极其困难。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0110b57">
「那提高速度不就行了！
　你本就该还能飞得更快吧!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0120b38">
《没错。但是需要时间。
　以现在的高度，迅速提高速度很难。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　……高度？
　原来如此。因为低空空气阻力强……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0130b57">
「就不能想点办法吗!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0140b38">
《若想甩开敌骑追踪，
牺牲速度驱使回旋是为定律。
　然此亦需以确保自骑速度充分为前提。
现状并不匹配。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0150b57">
「唔……！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0160b38">
《判定抗战最为合理。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　与剑胄相符的彻底无机质声线。
　即使撒娇也没用吧。那么，只能咬紧牙关。

　抗战？
　难道让我战斗吗……和武者之间。和武者之间！

　凭借剑胄之力杀人我已习惯。
　可是和武者，和力量与自己不相伯仲之人的战斗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0170a00">
《铃川令法。逃走无法认同。
　望你的表现与武者举止相称。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0180a00">
《拿起太刀。
　我方有意与你重新一决胜负。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CPMove_Auto001("@絵背景50",1500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　傍晚的天空中，距离相隔，再度送至的剑胄传音——
装甲通信。
　那从容不迫的声音，让人感到异常恐惧。

　有一种直觉。
　
　——那个敌人绝对不会让我逃掉。
　追踪、捕获、出击、攻陷。

　我会被杀掉。

　会被杀掉的。
　空将那些美丽之物，留在这丑陋的地平线之上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0190b57">
「唔……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　是的。没错。
　我的死亡便是如此之事。

　我的学生们。
　纯洁正直，如今可谓美丽的他们。

　——他们之后会变成怎样呢。

　终有一天会被腐蚀。
　充满这个世界的无情恶意必将他们玷污。

　那是无能为力的必然。
　
　那份必然——然而，我却拒绝了它。

　我曾发誓要用这双手拯救。
　拯救他们的美丽。

　让美丽之物，保留着美丽之姿迎来终结。
　我所必须肩负的责任。
　
　这一切还……没有结束！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CPMove_AutoR001("@絵背景50",3000,false);
	SetVolume("@mbgm*", 4000, 0, null);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0200b57">
「……真改。
　那家伙报上的是什么名字？」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0210b38">
《村正——势州千子锻造，右卫门尉村正。
　可谓绝世名甲的妖甲。
南北朝时期崛起并得天下第一之名，
传闻因招致大乱而仅流传三代便遭灭亡。》

//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0220b38">
《……作为对手没有破绽。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　最后附加的那一句话，或许含带了听来
不像剑胄应有的语气。
　但那种事怎样都好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0230b57">
「妖甲村正……将南北朝的战乱变为地狱的
元凶吗。传言其唯嗜流血，以无止境的诅咒，
仅为争斗本身而引起争斗……
　这样的东西在阻挡我吗。」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0240b38">
《若考虑当时的武器，长而大的野太刀应为主流。
　目前看来，
敌骑武器为普通太刀……不无诈称的可能性。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0250b57">
「怎样都好！
　不能死……我不能死。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0260b57">
「我还有事要做啊！
　真改！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0270b38">
《明白。开始战斗。
　敌骑位置，<RUBY text="上方丑寅">上方四五度</RUBY>。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：騎航戦
//◆右ロール、ピッチアップ４５度
//◆姿勢直し、直進

	SoundPlay("@mbgm08",0,1000,true);

	OnSE("se戦闘_動作_空突進03",1000);

	BGMoveDelete();
	CP_RollBarMove("@絵背景50",1000,-45,Dxl1,false);

	Wait(500);

	CP_AltChange(500,15,null,false);
	Zoom("絵背景50", 1200, 1500, 1500, Axl1, false);
	Move("絵背景50", 2000, @-250, @+500, Dxl1, false);
	MyTr_Count(1000,545);
	CP_SpeedChange(1000,400,null,false);
	CP_HighChange(1000,1200,null,false);
//Azi = 57
	CP_AziChange(1000,-47,Axl1,false);
	Wait(1000);
	MyTr_Count(600,350);
	CP_SpeedChange(1000,700,null,false);
	CP_HighChange(1000,800,null,false);
	CP_RollBarMove("@絵背景50",1000,0,Dxl1,true);

	SetVolume("SE01", 300, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	StC(1000, @-60,@+380,"cg/st/3d真改_騎航_通常.png");

	OnSE("se戦闘_動作_空突進02",1000);
	Move("@StC*", 500, @+60, @-60, Dxl2, false);
	FadeStC(500,false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Wait(400);

	StC(1000, @0,@+320,"cg/st/3d真改_騎航_戦闘.png");
	OnSE("se戦闘_動作_刀構え02",1000);
	FadeStC(200,true);

	Wait(300);

	OnSE("se戦闘_動作_空突進03",800);
	DeleteStC(400,false);
	SetBlur("@StC*", true, 3, 500, 50, false);
	Move("@StC*", 300, @+1000, @-1000, Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();
	CP_AltChange2(0,47,null,false);
	CP_IHPChange(0,9,null,false);
	CP_HighChange(15000,2000,Dxl1,false);
	CP_SpeedChangeA();
	FrameShake();

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	SetVertex("絵村正", 512, 288);
	Move("絵村正", 0, @-100, @-200, null, true);
	Zoom("絵村正", 0, 10, 10, null, true);
	Fade("絵村正", 0, 1000, null, true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	EnTr_Count(1000,680);

	OnSE("se特殊_コックピット_起動音02",1000);
	CP_EnemyLockFade(500,800,500,@-100,@-200);
	CP_LockOnMove("@絵村正",15000,@+100,@+50,AxlDxl,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　机体反向回旋。
　将不知何时再次占据上空的敌影收入视野，长驱直入。

　<RUBY text="对方">村正</RUBY>也低下头，移动着下降。
　形成正面交锋的激战阵势。

　武者对武者。
　最强战力对最强战力。
　有史以来，不断重复上演的空中决战。

　——如今又出现在，镰仓的空中。
　对战的一方竟由自己担当，
这种事要是昨天的我听到只会一笑置之吧。

　然而，若是在劫难逃的话！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビーッとレティクルが動く。ロックオン

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	Fade("絵村正", 0, 0, null, true);

	CreateTextureSP("絵背景100", 18000, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureSP("絵EF100", 18500, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Rotate("絵EF100", 0, @180, @0, @0, null,true);
	Zoom("絵EF100", 0, 1200, 1200, null, true);


	CreateTextureSP("絵St100", 19000, -888, -942, "cg/st/resize/3d真改_騎航_戦闘.png");
	SetBlur("絵St100", true, 3, 500, 50, false);

	Shake("絵EF100", 30000, 5, 5, 0, 0, 500, null, false);
	Shake("絵St100", 30000, 1, 0, 0, 0, 500, null, false);
	Fade("絵EF100", 0, 500, null, true);

	OnSE("se人体_動作_跳躍03",1000);

	Move("絵St100", 400, @+300, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Wait(1000);

	OnSE("se戦闘_動作_空突進03",1000);
	Move("絵St100", 400, @+2000, @0, Dxl1, false);
	Wait(300);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");
	Delete("絵St100");
	Delete("絵EF100");

	Cockpit_AllFade2();
	Fade("絵村正", 0, 1000, null, true);

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CloudZoomSet(10000);
	CloudZoomStart(700,600,600,500,600);


	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　准确看清了豆粒大小的敌影。

　灌注憎恶。满怀愤怒。
　这才是完全合理的，无需犹豫的意念。

　亦无迟疑。
　完成着必做之事的我，若是面前出现加以阻止的敌人，
除了愤怒憎恶之外还能如何。

　无需恐惧。条件势均力敌。
　——那么，必须取得胜利的我会赢！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵影拡大。ちょっと移動しながら
	Zoom("絵村正", 3000, 50, 50, null, false);
	CP_LockOnMove("@絵村正",10000,@0,@-50,AxlDxl,false);

	Wait(3000);

	SetFwR("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0280b38">
《距离五〇〇。斗牛形。》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0290b57">
「挡我者斩……
　村正？　令人厌恶的魔物。该死的人是你！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　长驱直入。将太刀高举过头顶。
　连同疾驰向天空的这副机体一齐砍去。

　加速之上叠乘加速，以最大威力——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 1000, 400, Dxl3);
	SetVolume("SE01", 5000, 0, null);

//◆伸びない速度計。つーか、落ちていく
	Zoom("絵村正", 2000, 70, 70, null, false);
	MyTr_Count(2000,600);
	CP_SpeedChange(5000,560,null,false);
	CP_HighChange(5000,2500,null,false);


	Wait(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　————迟了吗!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	Zoom("絵村正", 5000, 100, 100, null, false);
	CP_LockOnMove("@絵村正",10000,@0,@+20,AxlDxl,false);
	CP_LockOnChangeW(2000);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0300a00">
《……重新一决胜负，我应该这样说过。
　连高度都无法确保的突击，
轻视我也该有个限度——不，
还是说这仅仅是你的愚蠢行为？》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0310b57">
「!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進01",700);

	CloudZoomDelete(1500,false);
	Zoom("絵村正", 2000, 1000, 1000, Axl1, false);
	CP_LockOnMove("@絵村正",600,@+600, @+100, Axl1, true);
	CP_LockOnMove("@絵村正",600,@-600, @+100, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　视野里，
　红色武者现身。

　——好快!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カットイン：村正騎航上段
//◆村正上段斬撃汎用。なんか斬ってる。火花とか散ってる
//◆↑出しつつドガーン。振動

	CreateColorEX("絵色100", 20000, "Black");
	CreateColorEXadd("絵色200", 19999, "White");
	SL_rightdown2(21000, @0, @0,1500);

	SetBlur("絵村正", true, 4, 500, 50, false);

	Zoom("絵背景50", 300, 1500, 1500, null, true);
	Zoom("絵村正", 300, 2000, 2000, Dxl1, false);
	Wait(50);
	Fade("絵色100", 200, 1000, null, true);

	FrameShakeDelete();

	CP_LockOnDelete();

	Wait(100);

	OnSE("se戦闘_攻撃_野太刀振る01",1000);

	SL_rightdownfade2(15);

	Wait(100);
	CP_AllChange("@絵背景50",0, 300, 600, 512, 678);

	Delete("絵村正");
	CP_LockOnFadeT(0,true);
	CP_AziChange(0,10,null,true);

	CreateTextureEX("絵背景50", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);
	CP_RollBar_ADelete();
	CP_RollBarMove("@絵背景50",0,15,null,true);

	Shake("@CP_Frame", 500, 40, 30, 0, 0, 500, null, false);

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);
	CP_RollBarMove("@絵背景50",1000,0,null,false);
	Fade("絵色200",500,0,null,false);
	Fade("絵色100",200,0,null,true);
	Delete("絵色100");

	CP_IHPChange(700,6,null,false);
	MyLife_Count(500,651);
	MyTr_Count(500,250);

	CP_SpeedChangeA();
	CP_HighChangeA();
	CP_AltChangeA();

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0320b57">
「……唔呃!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　游走全身的冲击。
　热气与冷气在体内交替疾驰。

　苦闷的炽热与冰冻的严寒。
　比痛觉更加鲜明地，表达着承受打击之深。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 1000, 500, null);

	Move("絵背景50", 5000, @0, @-200, AxlDxl, false);
	MyTr_Count(2000,123);
	CP_SpeedChange(2000,155,null,false);
	CP_AltChange(3000,-20,null,false);
	CP_HighChange(5000,289,null,false);


	FrameShakeSt(4000);

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0330b38">
《装甲右肩部位受损严重。
　内部骨骼受到若干损伤。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0340b57">
「呃……这混蛋！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0350b38">
《速度下降。警告：有失速危险。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0360b57">
「什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CP_AltChange(2000,0,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　失速？
　
　我在脑海内思索着这意味着什么。

　失速——<RUBY text="Ｓｔａｌｌ">失速</RUBY>。
　飞行器因速度下降而失去升力。

　失速的飞行器将失去控制，在重力的作用下开始坠落……

　坠落!?
　不能控制!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0370b38">
《下降，以恢复速度。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0380b57">
「哈！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆エルロンロール。１８０度転回
//◆ピッチアップ。空→地平線→地面
//◆エルロン。１８０度転回して姿勢回復
//◆速度計上昇

	CreateTextureEX("絵背景100", 500, Center, -5000, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

	SetBlur("@絵背景50", true, 4, 500, 100, false);
	SetBlur("絵背景100", true, 4, 500, 100, false);


	OnSE("se戦闘_動作_空突進01",1000);

	Move("@絵背景50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@絵背景50",3000,180,Dxl1,true);
	Delete("@絵背景50");

	Move("絵背景100", 4500, @0, -500, Axl2, false);
	CP_SpeedChange(3000,540,null,false);
	MyTr_Count(500,450);

	Wait(3000);

	CP_RollBarMove2(0,0,null,true);

	CP_AziChange(1000,189,Axl1,false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	MyTr_Count(500,320);
	Wait(1000);


	OnSE("se戦闘_動作_空上昇01",1000);
	Move("絵背景100", 2000, @0, 800, Dxl1, false);
	Zoom("絵背景100", 2000, 1500, 1500, Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@FrameShake_Stall");
	Delete("絵背景100");
	CP_LockOnDelete();

	Cockpit_AllFade0();

	CreateTextureEX("絵背景50", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);


	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,true);


	CreateTextureSP("絵St100", 1000, -888, -802, "cg/st/resize/3d真改_騎航_通常.png");

	Move("絵St100", 400, @+300, @0, Dxl1, false);

	Cloud_Move2(1000);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	BGMoveAuto("@絵St100",1);
	Shake_Loop("@絵St100","shake01");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　头部上扬，垂直回旋。
　将本是敌对的重力纳为己用，终于示速器
从下降的趋势一转，开始上升。

　即使如此也已离地表很近。
　能否获得充分的速度——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0390b38">
《敌机，<RUBY text="上方壬子">上方三五〇度</RUBY>。来袭！》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0400b57">
「呃!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 0, null);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("絵St100");
	Cloud_MoveDelete();

	CreateTextureEX("絵背景50", 100, Center, 0, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);

	Cockpit_AllFade2();
	CP_AllChange("@絵背景50", 0, 263, 456);
	CP_AziChange(0,185,null,true);
	CP_IHPChange(0,5,null,false);
//Power_800
	CP_PowerChange(0,800,null,true);

	MyTr_Count(500,320);
	CP_SpeedChange(500,298,null,false);
	CP_HighChange(1000,780,null,false);

	Move("絵背景50", 500, @0, @-288, Dxl1, false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　慌忙抬头。

　将后背袒露只会单方面遭到斩杀，并且无法闪躲。
　总而言之言而总之，不正面对敌无论如何都……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進01",1000);

//◆旋回、ピッチアップ
//◆レティクル移動。ロックオン
	CP_RollBarMove("@絵背景50",700,45,Dxl1,false);

	Wait(300);

	CP_AltChange(400,15,null,false);
	Move("絵背景50", 2000, @+125, @+225, Dxl1, false);
	CP_HighChange(500,520,null,false);
	CP_AziChange(500,191,Axl1,false);
	Wait(500);
	CP_SpeedChange(600,450,null,false);
	CP_HighChange(600,920,null,false);
	FrameShake();
	CP_RollBarMove("@絵背景50",600,0,Dxl1,true);

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵村正", 0, 0, 0, null, true);
	Request("絵村正", Smoothing);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵村正",0,@-20,@-50,null,true);

	OnSE("se特殊_コックピット_ロックオン",1000);

	CP_LockOnMove("@絵村正",1000,@-50,@-50,null,false);
	Zoom("絵村正", 300, 100, 100, Dxl1, false);
	Fade("絵村正", 300, 1000, Dxl1, false);
	Wait(100);
	CP_LockOnFade(100,"on",true);


	SetFwR("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0410b38">
《距离二〇〇。》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0420b57">
「啊……啊啊啊啊！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　好近！　好快！
　该死，这样下去就完了！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



	CreateColorEX("絵色100", 21000, "Black");
	CreateWindow("CutIn", 150, 0, 50, 1024, 476, false);
	SetAlias("CutIn","CutIn");

//◆カットイン：村正騎航上段
	CreateTextureEX("CutIn/絵back", 21001, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEX("CutIn/絵Mura0", 21001, Center, -200, "cg/st/3d村正標準_騎航_通常.png");
	Request("CutIn/絵Mura0", Smoothing);
	CreateTextureEX("CutIn/絵Mura1", 21001, Center, -200, "cg/st/3d村正標準_騎突_戦闘.png");
	Request("CutIn/絵Mura1", Smoothing);
	SetVertex("CutIn/絵Mura0", 512, 288);
	Zoom("CutIn/絵Mura0", 0, 1500, 1500, null, true);
	SetVertex("CutIn/絵Mura1", 512, 288);
	Zoom("CutIn/絵Mura1", 0, 1500, 1500, null, true);
	Move("CutIn/絵Mura0", 0, @+50, @-10, null, true);

	Fade("絵色100", 100, 1000, null, true);
	Zoom("絵村正", 0, 100, 100, null, false);
	CP_LockOnMove("@絵村正",0,@0,@-50,null,true);

	OnSE("se戦闘_動作_空突進01",500);
	Move("CutIn/絵Mura0", 200, @-50, @+10, Dxl1, false);
	Fade("CutIn/絵back", 0, 1000, null, false);
	Fade("CutIn/絵Mura0", 0, 1000, null, false);

	DrawTransition("CutIn/*", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	OnSE("se戦闘_動作_刀構え01",1000);
	Fade("CutIn/絵Mura1", 300, 1000, Dxl1, false);
	Fade("CutIn/絵Mura0", 300, 0, Axl1, true);

	Wait(300);

	OnSE("se戦闘_動作_空突進03",1000);
	Move("CutIn/絵Mura1", 200, @-500, @+500, Dxl1, false);
	DrawTransition("CutIn/*", 200, 1000, 0, 100, null, "cg/data/slide_01_00_1.png", true);
	FrameShakeDelete();

	Delete("CutIn*");
	Fade("絵色100", 100, 0, null, true);
	Delete("絵色100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　确认敌人阵势。
　与之前一回合一样，是将太刀扛于肩上的对战阵势。

　那把太刀的长度。
　只要能让它离开我的射程！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02",800);
	Move("絵背景50", 1000, @0, @+50, Dxl1, false);
	Zoom("絵村正", 1500, 250, 250, Axl1, false);
	CP_SpeedChange(1500,354,null,false);
	CP_HighChange(1500,1215,null,false);
	CP_AltChange(1500,24,Dxl1,false);
	CP_LockOnMove("@絵村正",1000,@0,@+200,Dxl1,true);
	CP_LockOnMove("@絵村正",600,@+50,@-100,Axl1,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
　抬高<RUBY text="螺距">头部</RUBY>。
　将锁定村正的准心，调整至中心稍许偏下。

　取得太刀无法攻击到的距离，交错飞过——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0430a00">
《面对上段之势，向<RUBY text="·">上</RUBY>窜逃能如何呢？》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0440b57">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カットイン：村正上段斬撃
//◆ガーン。振動
	CreateColorEX("絵色100", 20000, "Black");
	CreateColorEX("フラッシュ白", 21000, "WHITE");
	SL_rightdown2(20001, @0, @0, 1500);

	OnSE("se戦闘_動作_空突進01",1000);

	Move("絵村正", 500, @0, @-100, null, false);
	Zoom("絵村正", 500, 1000, 1000, Dxl1, false);
	FrameShakeDelete();
	Fade("絵色100", 300, 1000, null, true);
	Delete("絵村正");
	CP_LockOnFadeT(0,true);
	Wait(50);

	OnSE("se戦闘_攻撃_野太刀振る02",500);
	SL_rightdownfade2(10);

	Wait(300);

	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵色100");
	CP_AltChange(0,15,null,true);
	CP_AllChange("@絵背景50",0, 354, 908);
	CreateTextureEX("絵背景100", 500, Center, -200, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 500, 10, 2, 0, 0, 500, null, false);
	Shake("@CP_Frame", 500, 10, 0, 0, 0, 500, null, false);
	OnSE("se戦闘_破壊_鎧01",1000);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");
	CP_IHPChange(500,5,null,false);
..//Power_700
	CP_PowerChange(500,700,null,false);
	CP_AziChange(0,10,null,true);

	CP_AltChange(1000,0,null,false);
	MyLife_Count(500,612);

	CP_SpeedChangeA();
	CP_HighChangeA();

	Move("絵背景100", 3000, @0, -300, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　又是一击。
　同在肩部。

　然而，或许是试图避让的机动姑且起到
了作用，损伤并不严重。
　仅仅是在之前伤口上回响着冲击的程度。

　……这次……还需要加这个限定语么。
　战况一直都是一边倒的劣势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0450b57">
「呃……真改！
　能用阴义来凝固那家伙的血吗!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0460b38">
《否定。
　敌骑的肉体被剑胄保护。穿透剑胄穷尽阴义
之事定不可为。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆垂直旋回→降下→上昇
	OnSE("se戦闘_動作_空上昇01",800);
	Move("絵背景100", 4000, @0, -5000, Dxl1, false);
	CP_AltChange(2100,-90,null,false);
	CP_SpeedChange(2100,300,Dxl1,false);
	CP_HighChange(2100,400,Dxl1,false);
	MyTr_Count(500,320);

	Wait(1200);
	CP_RollBarMove2(0,180,null,false);

	CP_AziChange(1500,96,null,false);
	Move("絵背景100", 5000, @0, -5000, Dxl1, false);
	CP_AltChange(1500,10,null,false);
	CP_SpeedChange(1500,400,Dxl1,false);
	CP_HighChange(1500,800,Dxl1,false);

	Wait(500);

	Move("絵背景100", 500, @0, -5100, Dxl1, true);
	CP_AltChange(400,-5,Dxl1,false);
	Move("絵背景110", 500, @0, -4950, Dxl1, true);
	CP_AltChange(400,0,Dxl1,false);
	Move("絵背景100", 500, @0, -5000, Dxl1, true);
	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Rotate("絵背景200", 0, @0, @0, 180, null,true);
	Fade("絵背景200", 0, 1000, null, true);

	OnSE("se戦闘_動作_空突進02",500);
	CP_RollBarMove("@絵背景200",1000,0,Dxl1,false);

	Wait(800);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0470b57">
「唔……！
　那，还有什么其他办法吗！　还有什么！」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0480a00">
《——真难看。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ロール→ピッチアップ→ロール戻し
//◆ロックオン

//嶋：ev942_村正ＶＳ真改

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("絵ev100", 1000, Center, Middle, "cg/ev/ev942_村正ＶＳ真改.jpg");

	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);


//	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
//	Zoom("絵村正", 0, 10, 10, null, true);
//	Request("絵村正", Smoothing);
//	CP_LockOnMove("@絵村正",0,@+300,@-300,null,true);

//	CP_LockOnMove("@絵村正",1000,@-310,@+100,null,false);
//	Fade("絵村正", 200, 1000, null, false);
//	Wait(100);
//	CP_AltChangeA();
//	CP_LockOnFade(100,"off",true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　仿佛听到了全部情况一般，冷酷的剑胄传音时机
恰到好处地传来。
　发信源在眼前压倒性地急速回旋，在重新夺回
的上空跃动，等待再次突击的时机。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0490a00">
《全然不知太刀较量之法。实属不符武者身份
的轻率。你，这是第一次使用双轮悬吗？
 那手中太刀所指对象，
从来只是肉体凡胎吗？》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0500a00">
《你的剑只用来欺凌手无缚鸡之力的人吗？》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0510b57">
《胡说！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵st100", 1100, -1024, -576, "cg/ev/resize/ev942_村正VS真改_l.jpg");
	SetBlur("絵st100", true, 3, 500, 50, false);

	Fade("絵st100", 300, 1000, null, false);
	Move("絵st100", 500, @+100, -150, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　将装甲通信的指向与敌影重合，我反驳起来。
　我没有理由被指责。尽情释放我的怒气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0520b57">
《坦然驾驶着无人不知的妖甲之辈口吐什么
狂言！　你的本性，为了获得力量
不惜背负诅咒的丑陋内心，我已经看得
够透彻了！　不是吗!?　村正！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵st200", 1200, Center, -576, "cg/ev/resize/ev942_村正VS真改_l.jpg");

	SetBlur("絵st200", true, 3, 500, 50, false);

	Fade("絵st200", 300, 1000, null, false);
	Move("絵st200", 500, @+500, 0, Dxl1, true);

	Delete("絵st100");

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0661]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0530a00">
《说来那便是井上真改吗。
　和泉守国贞。人称大阪正宗，
藩制时代初期的名作……
后被献与朝廷，一度置于国库的极品。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0540a00">
《持以如此剑胄还这般丑态。
　实在令人费解。你并非著名武门出身吗？》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0550a00">
《就调查结果而言，你仅为一介教师。
　但我曾怀疑或许你尚有隐藏血统……
不过看过方才那不成章法的行动似乎
也非如此。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0560a00">
《事出何因。你为何持有剑胄？
　是向六波罗讨好献媚，得来的好处吗？》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0570b57">
《！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Delete("絵st*");
	Delete("絵ev*");

	Cockpit_AllFade2();

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵村正", 0, 10, 10, null, true);
	Request("絵村正", Smoothing);
	CP_LockOnMove("@絵村正",0,@+300,@-300,null,true);

	CP_LockOnMove("@絵村正",0,@-310,@+100,null,false);
	Fade("絵村正", 0, 1000, null, false);
	CP_AltChangeA();
	CP_LockOnFade(0,"off",true);

	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　他的语气虽并非侮辱轻蔑。
　但内容本身便足够过分。

　屏息咽气。
　虽然看不见，但我知道自己的脸已转为苍白。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0580b57">
《……呵。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　居然说堂堂如我。
　向六波罗？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0590b57">
《开什么玩笑——————!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空上昇01",1000);

	CP_SpeedChange(1500,600,Dxl1,false);
	CP_HighChange(1500,1200,Dxl1,false);
	CP_AltChange(1500,30,null,false);
	MyTr_Count(1000,523);
//◆接近
	Zoom("絵背景100", 3000, 1500, 1500, null, false);

	Zoom("絵村正", 2500, 1000, 1000, null, false);
	CP_LockOnMove("@絵村正",2000,@+10,@+150,Dxl1,false);
	Wait(500);
	CP_SpeedChange(1500,570,Dxl1,false);
	CP_LockOnChange(100,true); 

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　敌人已在眼前。
　太刀第三次袭来的刹那。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵EF100", 19000, Center, Middle, "cg/ef/ef021_汎用陰義発動a.jpg");
	SetVertex("絵EF100", 512, 288);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	CreateTextureEX("絵EF200", 19001, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	SetBlur("絵EF200", true, 5, 500, 50, false);

	SL_centerdam(@0, @0,1000);



	OnSE("se特殊_陰義_発動01",1000);
	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 500, 1000, Dxl1, true);
	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0751]
　全身披覆着剑胄，感受与那装甲的接触。
　感受。感受。感受。通过高度集中的注意力作用
敏锐化的身体无论何处都感触极深。

　接触进化为结合。
　将装甲作为我身血肉识别。
　血脉交融神经互通灵魂寄宿。

　肉体与装甲合二为一。
　践踏常理实施融合，而后感知——掌握
心中蠢蠢涌动的力量之流。

　咏唱<RUBY text="指令">咒文</RUBY>使之解放。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_陰義_発動03",1000);
	Fade("絵EF200", 500, 1000, Dxl1, true);
	Delete("絵EF100");

	CreateColorEXadd("絵色100", 17000, "White");
	Fade("絵色100", 0, 1000, null, true);

	Fade("絵色100", 1000, 0, Dxl1, false);
	Fade("絵EF200", 700, 0, Dxl1, false);
	Zoom("絵EF200", 700, 2000, 2000, Dxl1, true);

//	OnSE("se人体_血_血しぶき02",1000);

//	SL_centerdamfade2(10);

	CP_PowerChange(300,600,null,false);


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0600b57">
「狂意缲！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　操纵之物——乃自身之血！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆レッドマスク？


	CreateColorEXadd("フラッシュ白", 20000, "White");
	Fade("フラッシュ白",0,1000,null,true);
	CreateColorEXmul("絵色100", 14000, "RED");

	OnSE("se人体_血_血しぶき01",1000);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 1000, 0, 1000, 200, Dxl1, "cg/data/zoom_01_00_0.png", false);


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0610a00">
「唔……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カットイン：剣撃
//◆風切音のみ
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る01",1000);
	Fade("絵背景100", 0, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　被我肩头<RUBY text="··">飞溅</RUBY>而出的血雾飞沫击中脸面，村正
飞行姿势的<RUBY text="平衡">安定</RUBY>受到扰乱。太刀刀法亦崩溃。
　在那间隙里潜过刀刃。交错。

　回合结束。我的装甲并未发出悲鸣。机体分离。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆交差、離脱
	Delete("絵村正");

	CreateTextureEX("絵背景50", 100, Center, -950, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Zoom("絵背景50", 0, 750, 750, null, true);
	Fade("絵背景50", 0, 1000, null, true);

	Delete("絵EF200");
	Delete("絵色100");

	CP_LockOnFadeT(0,true);
	CP_SpeedChange(500,248,Dxl1,false);
	CP_HighChange(500,600,Dxl1,false);

	Move("絵背景50", 500, @0, @-50, null, false);
	CP_AltChange(500,0,null,false);
	OnSE("se戦闘_動作_空突進01",1000);
	FadeDelete("絵背景100", 300, null, true);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0620b57">
《呵！　饥渴的妖甲。
　满怀感激地饮下我的血吧！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　吐出报复性的骂语。
　我多少泄了些愤。

　然而，状况并未好转。
　示速器的示数仍然显示着临近失速。必须继续
下降机体，恢复速度。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空急降下01",1000);

	Zoom("絵背景50", 1000, 900, 900, Dxl1, false);
	Shake("絵背景50", 6000, 1, 3, 0, 0, 1000, null, false);
	Move("絵背景50", 3000, @0, -2100, Dxl1, true);

	CP_HighChange(2000,200,null,false);
	CP_SpeedChange(2000,600,null,false);
	Zoom("絵背景50", 1200, 1300, 1300, Axl1, false);
	Move("絵背景50", 1200, @0, -1800, Axl1, false);

	Wait(600);
	Shake("絵背景50", 30000, 3, 4, 0, 0, 1000, null, false);

	Wait(603);

	OnSE("se戦闘_動作_空上昇01",1000);
	CP_SpeedChange(2000,497,null,false);
	CP_HighChange(2000,700,null,false);
	Zoom("絵背景50", 2000, 2000, 2000, Dxl1, false);
	Move("絵背景50", 2000, @0, 1200, Dxl1, false);

	Wait(1700);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("絵背景50");

	CreateTextureSP("絵Rollbg001", 1500, 0, -576, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureSP("絵Rollbg002", 1500, 0, -576, "cg/bg/resize/bg001_空a_02.jpg");

	CreateTextureSP("絵真改", 1600, Center, Middle, "cg/st/3d真改_騎航_通常.png");

	SetVertex("絵Rollbg*", 0, Middle);
	Zoom("絵Rollbg*", 0, 2000, 1000, null, true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@+1024,@-100,Dxl2,true);

	BGMoveAuto("@絵真改",2);

	CreateSCR1("@絵Rollbg001","@絵Rollbg002",1000,-2024, @0);

/*
	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵St100", 1000, Center, -325, "cg/st/3d真改_騎航_通常.png");
	Move("絵St100", 0, @+50, @0, null, true);
	Fade("絵St100", 0, 1000, null, true);

	Shake("絵背景100", 50000, 1, 1, 0, 0, 500, null, false);
	BGMoveAuto("@絵St100",1);
	Cloud_Move(1000);
*/

	DrawDelete("黒幕１", 300, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811]
　如此一来状况无法明了……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0630a00">
《操纵血液……那便是真改的阴义吗。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　呆板的语调因惊讶而摇动，村正的声音横飞而来。

　阴义。
　即使是在古法锻造的真打剑胄中也唯有极度上等
成品才能操纵的，超越单纯身体强化的异能之术。

　村正的猜测无误。
　那一击正是，真改所具备的阴义展现。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0640a00">
《既然连阴义都能操纵，看来不至于是仿作赝品。
　那副剑胄毫无疑问是真正的井上真改。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0650a00">
《区区一介教师的你又因何会持有？》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0660b57">
《哼……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_02_1.png", true);

	BGMoveDelete();
	Delete("絵Rollbg*");
	Delete("Rollbg*");
	Delete("絵真改");

	SCR1stop();
	CloudZoomDelete(0,true);

	BGMoveDelete();
	Cloud_MoveDelete();
	Delete("絵St100");
	Delete("絵背景100");

	Cockpit_AllFade2();

	CreateTextureSP("絵背景50", 500, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");


	CP_SpeedChange(500,413,null,false);

	CP_HighChangeA();

	CP_AltChangeA();

	DrawDelete("黒幕１", 300, 100, "slide_01_02_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　虽没有回答的必要，却有回答的意义。
　现在需要时间。只要有机会就应当争取。

　反正这对马上就要杀死的对手也不是非隐瞒不可之事。
　
　鼻中轻笑后，回答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	CPMove_Auto001("@絵背景50",3000,false);


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0670b57">
《圣诞老人的礼物……
　这么说你可会笑？》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0680a00">
《什么……？》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0690b57">
《可惜不是十二月二十四日啊。
　我在那个废弃的学校里<RUBY text="··">救了</RUBY>第二个学生后，
第二天……它就被放在了那里。》

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0700b57">
《就像在对我说请尽情使用一样。》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0710a00">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　沉默的附和。似乎无法辨别我所言真假，
　但那反应与我无关。我继续传送着剑胄传音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0720b57">
《或许终于有理解我的人出现了吧。
　即使并非如此也无关紧要。无论何人出于何种
意图，对我而言这副剑胄即是恩惠。》

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0730b57">
《托它的福，我终于能够远比以前更简单、
更完美、更美丽、更温柔地……
将心爱的人们杀死！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CPMove_AutoR001("@絵背景50",1000,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
　抬起头，在上方回旋。
　赤色的敌人——以现在的距离看只是个黑点——
进入视野。

　稍稍，有点远。
　或许是为了取得对话空间而扩大半径慢慢回旋。

　虽然我的意图得以实现，
但那副从容不迫的样子也着实让人火大。
　紧握太刀的双手充满了力量。
速度正在恢复。再无其他问题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0740b57">
《要上了——！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0750a00">
《……原来如此。
　事实即为，你仅仅<RUBY text="··">偶然</RUBY>得到了剑胄而已吗。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵村正", 0, 10, 10, null, true);
	Request("絵村正", Smoothing);
	CP_LockOnMove("@絵村正",0,@+300,@-300,null,true);

	OnSE("se戦闘_動作_刀構え02",600);
	Move("絵背景50", 1000, @0, @+200, null, false);
	CP_LockOnMove("@絵村正",1000,@-310,@+100,null,false);
	CP_AltChange(2000,31,null,false);
	Fade("絵村正", 200, 1000, null, false);
	Wait(100);
	CP_LockOnFade(100,"off",true);

	Zoom("絵村正", 5000, 100, 100, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
　<RUBY text="螺距">头盔</RUBY>降低，敌影俯冲而来。

　亚音速与亚音速的正面对决。
　速度之快，颇有分崩离析之势，间距在锐减——<k>仅凭人的双脚无论如何也达到不了的路程，
眼下却瞬间跳跃。

　准心中的点化作颗粒，颗粒又化为图形，
图形最终变为敌影在<RUBY text="显示器">视野</RUBY>中
显现。太刀较量的时机！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進01",800);

	CP_HighChange(2000,1640,null,false);
	CP_SpeedChange(1500,548,null,false);
	Zoom("絵村正", 1000, 500, 500, null, false);
	CP_LockOnMove("@絵村正", 1000,@0,@+200,null,false);
	CP_LockOnChange(500,true);
	CP_SpeedChange(1500,427,null,false);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0760a00">
《我明白了——那愚蠢的行动。》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0770b57">
《唔！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：村正上段
//◆ＣＩ：真改上段
//◆ＣＩ：剣撃交差
//◆ＣＩ：村正上段斬撃ヒット。ドガーン。

	OnSE("se戦闘_動作_空突進02",800);
	Zoom("絵村正", 1000, 800, 800, null, false);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Delete("絵村正");
	CP_LockOnFadeT(0,true);

	CreateTextureSP("絵shin001", 21001, -500, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵shin010", 21001, Center, Middle, "cg/st/3d真改_騎航_戦闘.png");
	SetBlur("絵shin010", true, 3, 300, 50, false);

	SL_rightup2(20000,@0, @0,1500);

	Move("絵shin010", 0, @-200, @+576, null, true);

	OnSE("se戦闘_動作_空突進01",600);
	Move("絵shin001", 550, @-100, @+100, Axl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_04_01_1", true);

	BezierMove("絵shin010", 400, (@0,@0){212,0}{212,0}(+312,-1500), Dxl1, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Delete("絵色100");
	Delete("絵shin*");

	CreateTextureSP("絵mura001", 21001, -512, -400, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵mura010", 21001, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	SetBlur("絵mura010", true, 3, 500, 50, false);

	SL_leftdown2(20000,@0, @0,1500);

	Move("絵mura010", 0, @+1024, @-576, null, true);

	OnSE("se戦闘_動作_空突進01",600);
	Move("絵mura001", 550, @+100, @-100, Axl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_04_01_1", true);

	Move("絵mura010", 400, -1536, 760, Dxl1, true);

	CreateColorEX("絵色100", 22000, "Black");
	Fade("絵色100", 100,1000,null,true);
	Delete("絵mura*");
	CreateColorEX("絵色200", 16000, "Black");
	Fade("絵色200", 0,1000,null,true);
	Delete("絵色100");
	CreateColorEX("絵色100", 22000, "White");
	Wait(100);
//	OnSE("se戦闘_攻撃_刀振る01",1000);
	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	SL_rightupfade2(15);

//	OnSE("se戦闘_攻撃_刀振る02",1000);
	OnSE("se戦闘_攻撃_野太刀振る02",1000);
	SL_leftdownfade2(15);

	Fade("絵色100", 200,1000,null,true);
	Fade("絵色200", 0,500,null,true);


	Move("絵背景50", 0, -512, -288, null, true);


	MyTr_Count(500,235);

	CP_IHPChange(500,3,null,false);
	CP_SpeedChange(500,345,null,false);
	CP_AltChange(1000,0,null,false);


	OnSE("se戦闘_衝撃_衝突01",1000);

	Shake("絵背景50", 500, 20, 30, 0, 0, 500, null, false);
	Shake("@CP_Frame", 500, 10, 5, 0, 0, 500, null, false);

	CreateColorSPmul("絵色200", 16000, "RED");
	Fade("絵色200", 2000,0,null,false);
	Fade("絵色100", 1000,0,null,true);

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0780b38">
《右上臂被袭。重度损伤。
　右臂若继续受到袭击将会危险。》

//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0790b38">
《警告：高准确率机能停止。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0800b57">
「呃唔唔……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
　感觉迟钝——
　抱着无法随心所欲行动的右臂，
呻吟着无处发泄的愤懑。

　为什么？
　为什么会输!?

　方才的一瞬。
　彼此太刀接触——短兵相接……

　但真改的太刀立即便被弹开，
　村正向<RUBY text="·">下</RUBY>俯冲过程中施出的一击
狠狠打向上臂。

　形成向村正<RUBY text="·">上</RUBY>方逃脱之势的我施出的下砍，
却只是擦过他腰部覆盖的翼甲——翼型装甲而过。
　恐怕，不，一定毫发无伤。

　完败。
　
　为什么，如此之大的差距……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0810a00">
《真是坚固的装甲。不辱大阪正宗之名。
　可惜的只是，没有遇到优秀的操控者。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0820b57">
《村正……！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0830a00">
《暴殄天物至极。
　连高度劣势都无法理解之辈
竟然持有此等宝物。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　……！
　高度劣势？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：図解·双輪懸


	CreateTextureEX("絵EV100", 19000, Center, Middle, "cg/ev/ev107_双輪懸図解_a.jpg");
	CreateTextureEX("絵EV200", 19000, Center, Middle, "cg/ev/ev107_双輪懸図解_b.jpg");
	CreateTextureEX("絵EV300", 19000, Center, Middle, "cg/ev/ev107_双輪懸図解_c.jpg");
	CreateTextureEX("絵EV400", 19000, Center, Middle, "cg/ev/ev107_双輪懸図解_d.jpg");
	Fade("絵EV100", 200, 1000, null, true);


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0840a00">
《听着，半吊子。
　武者的格斗战向来从抢占更高位置开始。
高度即为能量。明白吗。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵EV200", 300, 1000, null, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0850a00">
《占据比敌人更高位置的一方能够在俯冲
时追加攻击。获得速度，
以及获得速度转化而来的威力。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0860a00">
《自然处于优势地位。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0870b57">
《！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵EV300", 300, 1000, null, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0880a00">
《与此相对，处于位置较低的一方
一边要克服重力被迫减速，
一边还不得不向上攻击。
　明显承担着不利因素。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵EV400", 300, 1000, null, true);
	Delete("絵EV100");
	Delete("絵EV200");
	Delete("絵EV300");

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0890a00">
《这种状况在第二回合之后也不会改变。
　占据更高位置的一方运用获得的速度可以
快速上升，而位置较低的一方为了恢复速度
只能进一步下降。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0900b57">
《……》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0910a00">
《故此，被夺走高位的一方在一回合交锋后，
应当迅速回旋机体，在敌人调整状态之前
进行突袭逆转战局。也可暂时脱离战斗区域，
调整状态再决胜负。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0920a00">
《若剑胄回旋性能出色则选择前者，加速性能
优越则选择后者。亦有勇者凭借剑技
打破僵局。以上任一均不为，仅在
对手优势区域内持续缠战实则愚蠢透顶。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵EV400",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
　不带丝毫感情色彩，村正吐出侮辱性的言语。
　虽然想反驳，却找不到一句反驳的话。

　门外汉程度的航空力学知识记忆中倒是有些。
　此时回想起来，无疑印证了敌人的言论。

　——飞行体所持有的能量分为势能和动能。
　势能由质量和高度，动能由质量和速度决定。
因此，在高空高速飞行的飞行体往往具有很大
能量……如此这般。

　也就是说，身处比敌人更低位置却还自以为是
认为战况势均力敌的我就是个蠢货。
　即使如此我也没能耐住沉默。抱着求救的心境，
我试着向真改发问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0930b57">
「真改……那家伙说得对吗？」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0940b38">
《这是武者战斗的基本常识。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0950b57">
「那么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
　早点告诉我啊！
　
　……没有把整句话说出口，是因为知道说了也没用。

　剑胄的意识是受能力支配的特殊化ＯＳ。
　几天前，向学生们这样讲的人不正是我自己吗。
期待这种东西能像人类一样照顾他人才是大错特错。

　武者<RUBY text="····">必须操纵</RUBY>剑胄。
　而不是<RUBY text="·····">被剑胄操纵</RUBY>。

　作为常识，我知道这点。
　然而我却不曾明白这句话的分量。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0960a00">
《铃川令法。你就是个被给予了无法驾驭的玩具
的孩子。被这孩子夺去性命的人们虽终究无法挽
回，你的姿态却也让人感到悲哀。
　我再多教你一点吧。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0970b57">
《呃……》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0980a00">
《你知道武者为什么要进行正面激战吗？　
虽然也出于武者名誉，但理由不限于此。
　那是为了斩破剑胄的装甲。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0990a00">
《即使从后方追斩逃走的武者，穿透连炮击
也能弹开的装甲亦极艰难。
　然而若从正面高速直冲交锋，便可获得击
破装甲的威力。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1000a00">
《你若能理解这一点……
　你也就明白<RUBY text="·············">向对手上方逃脱同时施出下砍</RUBY>
的行为有多愚蠢了吧？》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1010b57">
《！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1250]
　令人厌恶地，那番话使某些情景在我脑中闪现。
　先前的几回合交锋。相同的太刀之势，
我向上逃离，他向下俯冲，
斩击间交错……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：図解·太刀打
	CreateTextureEX("絵EV100", 19000, Center, Middle, "cg/ev/ev108_太刀打図解_a.jpg");
	CreateTextureEX("絵EV200", 19000, Center, Middle, "cg/ev/ev108_太刀打図解_b.jpg");
	Fade("絵EV100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1251]
　<RUBY text="吾">真改</RUBY>之太刀，是在<RUBY text="··">追逐</RUBY>避开的<RUBY text="敌人">村正</RUBY>。
　村正的太刀，却在<RUBY text="··">迎击</RUBY>进攻的真改。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵EV200", 500, 1000, null, true);
	Delete("絵EV100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1260]
　打击力度自然产生明显差距……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵EV200", 300, false);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1270]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1020a00">
《理解了吗。
　那么，参上。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1280]
　犹如掷出刀子的一声。
　以及直逼肌肤的压迫感。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1290]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs1030b38">
《敌人，自<RUBY text="上方寅位">上方６０度</RUBY>来袭。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1040b57">
「唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空上昇01",1000);


	CP_RollBarMove("@絵背景50",700,-45,Dxl1,false);

	Wait(200);

	CP_AltChange(400,15,null,false);
	Move("絵背景50", 2000, @-125, @+225, Dxl1, false);
	CP_HighChange(500,520,null,false);
	CP_AziChange(500,-60,Axl1,false);
	CP_AltChange(500,0,Axl1,false);
	Wait(500);
	CP_SpeedChange(600,310,null,false);
	CP_HighChange(600,550,null,false);
	CP_RollBarMove("@絵背景50",600,0,Dxl1,true);

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵村正", 0, 10, 10, null, true);
	CP_LockOnMove("@絵村正",0,@+500,@-300,null,true);
	Request("絵村正", Smoothing);
	CP_LockOnMove("@絵村正",1000,@-400,@+100,null,false);

	Fade("絵村正", 200, 1000, null, false);
	Wait(100);
	CP_LockOnFade(100,"off",true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1310]
　起步晚了。
　用舌押抵着上颚急速回旋。

　交替看着毫无增长的示速器，以及形成鲜明对比的
威势盈溢的敌影，我别无他法唯有一味突进。
　这样下去只能一而再、再而三重蹈覆辙。

　敌人的太刀之势并未变化，仍为扛于右肩之形。
　我亦如此。
　
　仅就高度差而言对我十分不利……然而。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1320]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1050b57">
（若是潜入那家伙下方……！）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カットイン：真改上段

	OnSE("se戦闘_動作_空突進01",1000);

	CP_HighChange(2000,1564,null,false);
	CP_SpeedChange(2000,512,null,false);
	CP_AltChange(2500,45,Axl1,false);
	Zoom("絵村正", 2000, 500, 500, Axl1, false);
	CP_LockOnMove("@絵村正",1200,@+10, @+250, Dxl1, true);
	CP_SpeedChange(2000,491,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1330]
　接近。兵刃相接。
　躲过企图夺取我下方的村正——朝着它下方！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02",1000);
//◆接近。ピッチダウン。敵影が上へ
	CP_AltChange(2500,32,Axl1,false);
	Zoom("絵村正", 2000, 750, 750, Axl1, false);
	CP_LockOnChange(500,false);
	Move("絵背景50", 700, @-110, @-200, Dxl1, false);
	CP_LockOnMove("@絵村正",600,@-110, @-300, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1340]
　——成功了！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1350]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1060a00">
《吉野御流合战礼法技之一。
“回旋”。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 21000, "Black");
	CreateWindow("CutIn", 150, 0, 0, 1024, 576, false);
	SetAlias("CutIn","CutIn");

//◆ＣＩ：村正上段→下段→下段斬撃
//◆太刀を弾いて切り込む。キン、ガキーン。振動

	CreateTextureEX("CutIn/絵back", 21001, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEX("CutIn/絵Mura0", 21001, Center, -300, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureEX("CutIn/絵Mura1", 21001, Center, -300, "cg/st/3d村正標準_騎航_戦闘b.png");

	SL_up2(21002, @0, @0,1000);

	Move("CutIn/絵Mura0", 0, @+50, @0, null, true);

	Fade("絵色100", 100, 1000, null, true);
	Zoom("絵村正", 0, 100, 100, null, false);
	CP_LockOnMove("@絵村正",0,@0,@-50,null,true);

	Move("CutIn/絵Mura0", 200, @-50, @+10, Dxl1, false);
	Fade("CutIn/絵back", 0, 1000, null, false);
	Fade("CutIn/絵Mura0", 0, 1000, null, false);
	DrawTransition("CutIn/*", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);
	OnSE("se戦闘_動作_刀構え01",1000);
	Fade("CutIn/絵Mura1", 300, 1000, Dxl1, false);
	Fade("CutIn/絵Mura0", 300, 0, Axl1, true);

	Wait(500);

	Move("CutIn/絵Mura1", 200, @-500, @+500, Dxl1, false);
	DrawTransition("CutIn/*", 200, 1000, 0, 100, null, "cg/data/slide_01_00_1.png", true);
	Delete("CutIn*");
	CP_LockOnChange(0,true);
	SL_upfade2(10);

	CreateColorEX("フラッシュ白", 22000, "WHITE");
	OnSE("se戦闘_攻撃_刀衝突01",1000);
	Fade("フラッシュ白",100,1000,null,true);

	CreateTextureEX("絵背景100", 500, Center, -200, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Request("絵背景100", Smoothing);

	Delete("絵色100");
	Delete("絵村正");

	CP_AltChange(1000,0,null,false);

	Shake("@CP_Frame", 500, 0, 10, 0, 0, 500, Dxl1, false);

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1360]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1070b57">
「唔咕!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1370]
　胜利的确信。
　在萌芽的一瞬，便被外力击得粉碎。


　此时此刻。
　眼看正要交锋，村正将太刀一转，自下而上——！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1380]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1080a00">
《飞行中的战斗与地面战不同，
不能使用腰腿……然而即使如此，
设法发挥剑技的余地依旧存在。
　仅凭蛮力一味下砍并非高明。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1090a00">
《特意让对手向下躲避，同时使用作为太刀较量
基本之术的自右上段向右腋下段劈砍迎击。
　十分初级的技巧。》

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs1100b38">
《左肩部损伤。运转无故障。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1390]
　唔……！
　也就是说方才就劈斩而言双方势均力敌——<k>如此一来
之后，突进力度的差距就决定了战斗胜负。

　这点上的优劣直截了当……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1420]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1110b57">
「可恶!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆降下→旋回→直進
//◆村正ＶＳ真改の専用カットインとかもあると便利かなー。

	OnSE("se戦闘_動作_空突進01",1000);

	Move("絵背景100", 4000, @0, -3344, Dxl1, false);
	Shake("絵背景100", 50000, 0, 1, 0, 0, 500, null, false);

	SetVertex("絵背景100",768,-3056);

	CP_AltChange(2100,-90,null,false);
	CP_SpeedChange(2100,400,Dxl1,false);
	CP_HighChange(2100,400,Dxl1,false);

	Wait(1300);

	Zoom("絵背景100", 2000, 2000, 2000, Axl1, false);

	CP_RollBarMove("@絵背景100",1500,180,Axl2,true);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CP_LockOnDelete();

	Cockpit_AllFade0();

	Delete("絵背景100");
	CreateTextureEX("絵背景100", 500, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

//嶋：「3d真改_騎航_通常.png」に変更
	CreateTextureEX("絵真改100", 1000, Center, Middle, "cg/st/3d真改_騎航_戦闘.png");
	CreateTextureEX("絵EF100", 1000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureEX("絵EF200", 2000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	SetBlur("絵EF100", true, 3, 500, 50, false);
	Zoom("絵EF200", 0, 2500, 2500, null, true);
	SetBlur("絵EF200", true, 4, 500, 50, false);
	Fade("絵真改100", 0, 1000, null, true);
	Rotate("絵真改100", 0, @0, @0, @-45, null,true);
	Move("絵真改100", 0, @0, @-1000, null, true);

	Move("絵真改100", 700, @-300, @+2000, Dxl2, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	WaitAction("絵真改100",null);
	Rotate("絵真改100", 0, @0, @0, 0, null,true);
	Move("絵真改100", 0, @+1300, @0, Dxl1, true);
	Move("絵真改100", 700, @+1000, @-2000, Dxl1, false);
	Wait(500);
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("絵EF100", 300, 1000, 1000, Dxl1, false);
	Fade("絵EF100",300, 1000, null, true);

	Wait(100);

	OnSE("se戦闘_衝撃_衝突01",1000);
	Zoom("絵EF200", 600, 1000, 1000, Dxl1, false);
	Fade("絵EF200",600, 1000, null, true);

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	Wait(200);

	Fade("フラッシュ白",100,1000,null,true);

	CP_RollBarMove2(0,0,null,true);
	CP_AltChange(0,0,null,true);
	Delete("絵EF100");
	Delete("絵EF200");

	CreateWindow("ウィンドウ上", 15000, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateTextureEX("ウィンドウ上/絵背景01", 600, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureEX("ウィンドウ上/絵mura01", 600, Center, -400, "cg/st/3d村正標準_騎航_戦闘a.png");

	Move("ウィンドウ上/絵背景01", 0, @-288, @0, null, true);
	Move("ウィンドウ上/絵mura01", 0, @+500, @0, null, true);


	CreateTextureEX("ウィンドウ下/絵背景01", 600, Center, -412, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("ウィンドウ下/絵shin01", 600, Center, -150, "cg/st/3d真改_騎航_戦闘.png");

	Move("ウィンドウ下/絵背景01", 0, @+288, @0, null, true);
	Move("ウィンドウ下/絵shin01", 0, @-500, @0, null, true);

	Fade("ウィンドウ上/絵背景01", 0, 1000, null, true);
	Fade("ウィンドウ下/絵背景01", 0, 1000, null, true);

	Move("ウィンドウ上/絵背景01", 1000, @+288, @0, Dxl1, false);
	Move("ウィンドウ下/絵背景01", 1000, @-288, @0, Dxl1, false);

	Fade("ウィンドウ下/絵shin01", 1000, 1000, Dxl1, false);
	Fade("ウィンドウ上/絵mura01", 1000, 1000, Dxl1, false);

	Move("ウィンドウ上/絵mura01", 1200, @-500, @0, Dxl1, false);
	Move("ウィンドウ下/絵shin01", 1200, @+500, @0, Dxl1, false);

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1430]
　回旋、下降、回旋、突击突击突击————

　我怎么可能输给你这种家伙。
　你这种……还没一张手纸有用的警察之辈！

　堂堂的我！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ウィンドウ上");
	Delete("ウィンドウ下");

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");

	Cockpit_AllFade2();
	CP_IHPChange(500,4,null,false);
	CP_EnemyFade(0,650,400);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1440]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1120b57">
「杀死你！　我要杀死你！
　来缲环！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血がばしゃー
//◆ＣＩ：真改上段
	CreateTextureEX("絵EF100", 16000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Rotate("絵EF100", 0, @0, @180, @0, null,true);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	SetBlur("絵EF100", true, 3, 500, 50, false);

	OnSE("se人体_血_血しぶき01",1000);

	Zoom("絵EF100", 300, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 300, 1000, Dxl1, true);
	Cockpit_AllFade0();

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	CreateTextureEX("絵shin", 1500, Center, Middle, "cg/st/3d真改_騎航_戦闘.png");
	Fade("絵shin", 0, 1000, null, true);
	Move("絵shin", 0, @-1000, @+700, null, true);

	CreateColorEX("フラッシュ", 20000, #990000);
	Fade("フラッシュ",200,1000,null,true);


	Delete("絵EF100");

	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵shin", 600, @+1000, @-700, Dxl1, false);
	Shake_Loop("絵shin","Shake01");

	DrawTransition("フラッシュ", 800, 1000, 0, 100, null, "cg/data/zoom_01_00_1.png", true);

	Delete("フラッシュ");


	SetFwC("cg/fw/fw真改_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1450]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1130b57">
「唔噢噢噢噢噢!!」

{	Move("絵shin", 300, @+1000, @-600, Dxl1, false);
	Fade("絵shin", 300, 0, null, false);
	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1140a00">
《——同样手法不可能二度奏效。
　我并非那样好打交道之人。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵影が斜め下に移動
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("Shake01");

	Cockpit_AllFade2();
	CP_LockOnFade(0,"on",true);
	Delete("絵shin");
	Delete("絵背景100");

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Request("絵村正", Smoothing);
	CP_LockOnMove("@絵村正",0,@0,@+300,null,true);


	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵村正", 200, 1000, null, false);
	Zoom("@絵村正", 300, 1500, 1500, null, false);
	CP_AltChange(0,32,null,false);

	CP_HighChangeA();
	CP_SpeedChangeA();



	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Zoom("@絵村正", 300, 2000, 2000, null, false);
	CP_LockOnMove("@絵村正",300,@-500,@+1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1460]
　——躲开了!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：村正上段→村正上段斬撃
	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵村正");

	OnSE("se戦闘_破壊_鎧01",1000);
	Shake("@CP_Frame", 500, 0, 10, 0, 0, 500, null, false);
	Shake("絵背景50", 1000, 5, 5, 0, 0, 500, null, false);
	MyLife_Count(500,564);
	CP_AltChange(1000,0,null,false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1470]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs1150b38">
《胸部装甲被袭。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1160b57">
「呃……！
　真改！　不能利用回旋抑制住那家伙
的头部吗!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs1170b38">
《以现状判断不可能。
　即使分析显示真改旋回性能与村正
比肩，但如今由于损伤积累，性能的
发挥将产生障碍。》

//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs1180b38">
《故此不可能。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1190b57">
「唔……啊啊啊啊啊啊!!」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1200a00">
《苦恼吗，铃川令法。
　不过甘心接受吧。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1210a00">
《这份痛苦是直至今日你加诸于他人身上之物。
　品尝同样的苦楚乃是你的义务。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1220a00">
《利刃之报必将还至己身。
　夺人命者终将被夺己命。
　恶行必有恶报……<RUBY text="····">恶行必有</RUBY>
<RUBY text="··">恶报</RUBY>!!》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1230b57">
《闭嘴————！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1530]
　简直仿佛是在对自己说明一般反复叮咛着，
我挥手甩开那烦人的声音。
　傲于优位、盛气凌人的说教，我无心垂听。

　恶行哪里必有恶报。正如善行从未有过善报！
　这般世间能够信任的唯有美丽之物。唯有美
不会背叛。只要除去无法维持永远这一点！

　终将毁灭的现实无可奈何。
　死心吧。唯有这点怎样也无能为力，便早已认定是宿命。
　接受这份诅咒吧！

　然而我却无法忍受腐朽。
　我绝对无法忍受美终将转化为丑陋的命运！

　唯有此事我绝不容许。绝不。
　若是容许了这点，美丽就再无价值。
　
　我怎么可能容许！

　所以我要破坏！
　必须破坏！
　在美丽之物依旧美丽之时！

　我——做错了吗!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1540]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1240a00">
《铃川令法……<RUBY text="····">轮到你了</RUBY>。
　挣扎于苦楚，哀叹着愤怒，命散凶刃之下吧。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1250b57">
《不要啊啊啊啊!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1560]
　不对！
　我没错我没错绝对没有错！

　我是正确的！　没有任何错误！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm*", 1000, 0, null);



//◆ブラックアウト


}

..//ジャンプ指定
//次ファイル　"ma01_023vs.nss"