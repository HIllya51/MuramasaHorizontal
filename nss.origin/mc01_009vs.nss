//<continuation number="560">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_009vs.nss_MAIN
{

	

//あきゅん「ＣＰ：村正にセット」
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
	#bg201_旋回演出背景市街地_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_GUTSEIDER=true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_009vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_008.nss"

//◆村正。既に騎航中
	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SEL01a","se戦闘_動作_空走行02_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演背景", 17000, InLeft, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureEX("絵演村正立絵", 17100, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	SetBlur("絵演村正立絵", true, 2, 300, 150, false);
	Move("絵演村正立絵", 0, @-380, @60, null, true);
	Delete("上背景");
	Move("絵演背景", 650, @-60, @288, Dxl2, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	Wait(200);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);
	Shake("絵演村正立絵", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("絵演村正立絵", 2300, @30, @-60, Dxl2, false);
	Fade("絵演村正立絵", 300, 1000, null, true);

	Move("絵演背景", 180000, -1024, 0, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0010a01">
《到底怎么回事！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0020a00">
「稍后再解释！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
　幸好村正就在附近，没等多久就归来了。村正一到达
我就迅速装备上了装甲。
　将飞行推进器强制发动到极限，冲向天色还明亮的天
空。

　装甲因不堪重负，全身都发出了嘎嘎的声响。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0030a01">
《太危险了！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0040a00">
「马上就好。忍一忍。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　伴随着速度的攀升，不祥的声音越发刺耳了起来。大
概有些难以承受，剑胄发出了抱怨与警告的叫声。
　但现在不是该理会这些的时候。

　从署长宅邸到建朝寺，步行的话的确是有些距离，但
若用剑胄飞行，也仅是从眉眼到鼻尖的距离而已。
　几乎转瞬即达。

　即便是稍微有些勉强的飞行，大概也不会给装甲带来
很严重的损伤吧。
　但村正似乎对这一结论很不赞同。……不过，连目的
地都未告知就被迫进行飞行，也难怪她会如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0050a01">
《别再进行这种低级的装甲骑手才会做的行为了，
赶快降下速度才是上策！
　我倒是无妨，但这对你身体的伤害太大了。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0060a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我沉默着，这些我都明白。
　连说话的余力都没有，并不只是因为现在要急着赶路。

　村正的指责是正确的。
　我已经感受到了身体所能承受能量即将到达极限的征
兆。血液的流通已经紊乱。大概一松气就会马上失明，
陷入昏迷。

　若真昏过去，那等待我的便只有坠落地面的惨剧了。
　我不得不将精神紧绷地像冰棱一般坚硬，抵抗着那想
要融入黑暗的冲动。

　这无疑是需要耗尽我所有力气的行为。
　然而，我却仍然必须从已经干涸了的力量的底部，榨
出如残渣般的余力，将其一点点用于速度的提升。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0070a01">
《——主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我没有余力再去理会她无聊的废话。
　隔绝所有的声音，继续全力投入骑航。

　要不要用磁气加速呢——这个念头闪过我的脑海。但
最终我还是没有采用这个办法。
　现在不能浪费时间发动阴义。

　而且，距离八幡宫也没有多远了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ピーッ。警告音
	CreateSE("SE01","se特殊_コックピット_アラーム");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0080a01">
《主君!!
　<RUBY text="艮位上方">上方四十五度</RUBY>!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0090a00">
「——<?>
{	Wait(300);
	FwC("cg/fw/fw景明_警戒.png");}
什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我的反应过于迟钝。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆その方向を向く
	SetVolume("SE*", 300, 0, null);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	Request("絵演背景", Smoothing);
	Zoom("絵演背景", 0, 3000, 3000, null, true);
	SetBlur("絵演背景", true, 3, 500, 80, false);
	Move("絵演背景", 650, 2048, @0, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_01_01_1", true);

	WaitAction("絵演背景", null);

//◆敵騎襲来
	CreateSE("SE01L","se戦闘_動作_空突進05");
	MusicStart("SE01L",2000,200,0,800,null,true);

	CreatePlainSP("絵板写", 20000);
	CreateTextureSP("絵演合体立絵", 17100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	CreateStencil("絵演合体立絵覆",17110,Center,Middle,128,"cg/st/3dガッタイダー_騎突_戦闘a.png",false);
	SetAlias("絵演合体立絵覆","絵演合体立絵覆");
	CreateColorEX("絵演合体立絵覆/色", 17120, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進02");
	Fade("絵演合体立絵覆/色", 0, 750, null, true);
	Request("絵演合体立絵*", Smoothing);
	Zoom("絵演合体立絵*", 0, 100, 100, null, true);
	Move("絵演合体立絵*", 0, @0, @90, DxlAuto, true);

	Move("絵演合体立絵*", 300, @0, @-30, DxlAuto, false);
	MusicStart("SE01",0,500,0,1000,null,false);
	FadeDelete("絵板写", 300, true);

	SetNwR("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/009vs0100b33">
《粉碎之爱·地球爆!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01",600,1000,0,1000,null,false);
	SetBlur("絵演合体立絵", true, 2, 500, 80, true);
	Zoom("絵演合体立絵*", 5000, 200, 200, null, false);
	Move("絵演合体立絵*", 1800, @0, @-80, DxlAuto, true);
	Wait(100);
	Zoom("絵演合体立絵*", 5000, 280, 280, null, false);

	Wait(800);

	SetVolume("SE01L*", 2000, 0, null);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演合体立絵*", 200, @0, @40, DxlAuto, false);
	Fade("絵演合体立絵覆/色", 200, 0, Dxl2, false);
	Zoom("絵演合体立絵*", 200, 1500, 1500, null, false);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 380, 1000, null, true);

	Cockpit_AllFade2();

//◆斧撃
	CreateSE("SE02","se戦闘_攻撃_斧振る01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_rightdown2(20010,@150, @150,2000);
	SL_rightdownfade2(10);

//◆ぞがーん
	CreateSE("SE03","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE03a","se戦闘_攻撃_鎧攻撃命中03");
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演空背景", 100, Center, -1100, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Request("絵演空背景", Smoothing);
	Delete("上背景");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

//あきゅん「ＣＰ：初期値定義」
	MyLife_Count(0,720);
	CP_IHPChange(0,10,null,false);

	CP_SpeedChange(0,550,null,false);
	MyTr_Count(0,475);

	CP_PowerChange(0,980,null,false);

	CP_HighChange(0,1824,null,false);
	CP_AziChange(0,243,null,false);

	CP_AltChange(0,0,null,false);
	//CP_AltChangeA();

//あきゅん「ＣＰ：被弾演出開始」
	MyTr_Count(300,140);
	CP_SpeedChange2(1500,226,Dxl2,false);

	CP_HighChange2(1500,1683,Dxl2,false);
	CP_AltChange(1500,10,Dxl2,false);
	Move("絵演空背景", 1500, @0, @60, Dxl2, false);

	Shake("@CP_Frame*", 1500, 0, 30, 0, 0, 1000, Dxl2, false);
	Shake("絵演空背景", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

//あきゅん「ＣＰ：斧ＤＭＧ-108」
	MyLife_Count(300,612);
	CP_IHPChange(300,9,null,false);

	CP_RollBarMove("@絵演空背景*", 0, 5, null, true);

	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0110a00">
「啊——」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆モニター赤くなって

//◆墜落モード
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 1000, 600, Dxl3);

	MyTr_Count(300,128);
	CP_SpeedChange2(2000,174,Dxl2,false);
	CP_HighChange2(2000,1542,Dxl2,false);
	CP_AltChange(2000,-30,Dxl2,false);
	CP_AziChange(2000,251,null,false);
	Zoom("絵演空背景", 2000, 1050, 1050, Dxl2, false);
	Move("絵演空背景", 2000, @0, @-120, Dxl2, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0120a00">
「呃……啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆落ちるー。
	CreateSE("SE01a","se戦闘_動作_空突進08");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetFrequency("SE01a", 1000, 600, Dxl3);

	FrameShake();
	Shake("絵演空背景", 2160000, 0, 8, 0, 0, 1000, Dxl2, false);

	MyTr_Count(300,103);
	CP_SpeedChange(20000,286,Dxl2,false);
	CP_HighChange2(20000,872,Dxl2,false);
	CP_AltChange(2000,-57,Dxl2,false);
	CP_AziChange(2000,254,null,false);
	Zoom("絵演空背景", 20000, 1200, 1200, Dxl2, false);
	Move("絵演空背景", 2000, @0, @-120, Dxl2, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0130a01">
《主……主君!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　糟糕。
　地面上——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0140a00">
「唔……嗯！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立て直し
//◆危ういとこで反転、上昇へ
	OnSE("se戦闘_動作_空急降下01",1000);

//あきゅん「ＣＰ：落下さらに地表へ」
	CP_SpeedChange(10000,322,Dxl2,false);
	CP_HighChange2(10000,314,Dxl2,false);
	CP_AltChange(2000,-61,Dxl2,false);
	CP_AziChange(2000,257,null,false);
	Zoom("絵演空背景", 10000, 1450, 1450, Dxl2, false);
	Move("絵演空背景", 2000, @0, @-120, Dxl2, false);

	Wait(2000);

//あきゅん「ＣＰ：速度を取り戻し上昇」
	OnSE("se戦闘_動作_空上昇01",1000);

	MyTr_Count(300,470);
	CP_PowerChange(300,930,null,false);
	CP_SpeedChange(2000,512,Axl2,false);
	CP_HighChange(2000,1021,Axl2,false);
	CP_AltChange(2000,10,Axl2,false);
	CP_AziChange(2000,239,null,false);
	CP_RollBarMove("@絵演空背景", 2000, 0, Axl2, false);
	Zoom("絵演空背景", 2000, 1000, 1000, Axl2, false);
	Move("絵演空背景", 2000, @0, 0, Axl2, false);

	Wait(1700);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("絵演空背景*");

	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	CreateTextureSP("絵背景", 500, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	Move("絵背景", 0, @30, @0, null, true);
	CreateTextureSP("絵演村正立", 1000, Center, Middle, "cg/st/3d村正標準_騎航_通常2.png");
	Move("絵演村正立", 0, @70, @20, null, true);
	Fade("絵演村正立", 0, 1000, null, true);

	Move("絵背景", 300000, -60, @0, null, false);


	Shake("絵背景", 2160000, 1, 0, 0, 0, 1000, null, false);
	BGMoveAuto("@絵演村正立",1);

	CloudZoomSet(5000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@-512,@-144,null,false);

	MusicStart("SEL01",1000,1000,0,1000,null,true);
	DrawDelete("絵色黒", 300, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……勉强躲过。
　躲过迫近眼前的地狱之门，我再次回到天空温柔的怀
抱中。

　心头浮上让人想要稽首跪拜的安心感。
　
　——然而，现在并不是该沉浸在这种情绪中的时候。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0150a01">
《真是肝胆皆寒！》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0160a00">
「那种东西你根本就没有吧。
　比起这个，汇报一下损伤程度。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　其实无需询问，背后的剧痛已经提醒了我。
　每一次急促的呼吸都会带来剧烈的疼痛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0170a01">
《后背装甲受到了严重损坏……
　不过幸好，飞行器几乎无损。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0180a00">
「不幸中的大幸吗。
　……那么，刚才那个是敌袭吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　明知这是个愚蠢的问题，我却还是愚蠢地提出来。

　因为直到被袭击前一刻，我的意识都还沉浸在其他事
物之中，因此对于那一刹那发生的事，认知格外模糊。
　似乎听到了剑胄传音……但这份记忆也有些模糊。

　说是炮弹的话，的确能如此认同，但说是落石的话，
也没有否定的理由。只不过要问问这究竟是哪个浮游岛
上掉下来的石头了。
　面对这样的我，剑胄的回答格外简单明了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0190a01">
《是敌人。当然是敌人了。
　<RUBY text="庚位上方">上方二五五度</RUBY>！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 600, 0, null);

//◆そっちへ
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 650, @512, @0, Dxl2, false);
	DrawDelete("上背景", 150, 100, "slide_01_02_1", true);
	CloudZoomDelete(0,false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　我顺着剑胄说的方向转头望去。
　……敌人毫不隐藏，就在那里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆復讐戦騎ガッタイダー
//◆デザインイメージ：ガッタイダー。
#av_GUTSEIDER=true;

//◆注·ハカイダー四人衆ではなく魔神英雄伝の方。

//◆登場演出
	CreateColorEX("絵色白", 20000, "#FFFFFF");
	CreateTextureEX("絵演合体", 17100, Center, Middle, "cg/st/resize/3dガッタイダー_立ち_通常am.png");

	CreateSE("SE01","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01",0,1000,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵演合体", 0, 1000, null, true);
	Fade("絵色白", 200, 0, null, true);
	Wait(100);

	CreateSE("SE01b","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01b",0,1000,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵演合体", 0, -460, -510, null, true);
	Fade("絵色白", 200, 0, null, true);
	Wait(100);

	CreateSE("SE01c","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01c",0,1000,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵演合体", 0, -1660, -1920, null, true);
	Fade("絵色白", 200, 0, null, true);
	Wait(100);

	CreateSE("SE01d","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01d",0,1000,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵演合体", 0, -640, -1400, null, true);
	Fade("絵色白", 200, 0, null, true);
	Wait(100);

	CreateSE("SE02","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE02",0,1000,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	CreateTextureSP("絵演合体", 17100, Center, Middle, "cg/st/3dガッタイダー_立ち_通常a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 350, 350, null, true);
	CreatePlainSPadd("絵板写", 17110);
	Zoom("絵板写", 2000, 1300, 1300, null, false);
	FadeDelete("絵板写", 2000, false);
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　那是恶魔。

　或者，它看起来有点像西方的龙的拟人化。
　那是一个无比暴力的、恶意的、充满了怨念的破坏欲
的集合体。

　其身形大约是村正的一点五倍，不，是近两倍。
　排除江之岛的巨兽，这是我迄今为止所见过的最庞大
的怪物。

　它张着那如爬虫类皮膜一般的两翼，悠然翱翔在空中。
这究竟是怎样的因果招致的噩梦啊。
　我突然有一种想要抓破脸的冲动。

　如果没有流血的话，就知道这是个梦，醒来就好了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0200a01">
《那样只是徒增伤口而已，快住手。
　遗憾的是，它的确是现实存在的。》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0210a00">
「我知道。江之岛的那次经历是宝贵的经验。
　对方发射识别信号了吗？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0220a01">
《没有。》

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0230a00">
「所属不明吗……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　虽然也考虑过不幸被六波罗防空队发现的可能性——
但如果未声明所属，应该就不是六波罗了。
　况且，我也从未听说过六波罗制式采用了那种形态奇
特的剑胄。

　那么被袭击的理由究竟是……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0240a00">
「难道是植入了“卵”的寄生体——」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0250a01">
《并没有感受到“卵”的气息。
　它与银星号无关。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　这并不是最后仅剩的那个“卵”，村正说道。
　那么。

　…………………………………………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0260a00">
「究竟是什么人？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0270a01">
《你问我也……
　大概只有对方本人知道答案吧。》

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0280a00">
「的确啊……」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0290a01">
《要问问看吗？
　不过不知道能否与对方顺利沟通，
有些微妙啊。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　话虽如此，但除此之外别无他法。
　如果没有被攻击的理由，那这很可能只是一个误会。

　……虽然仅因为一个误会就差点被打断了脊椎，实在
让人有些不爽。
　但相较持续眼下这种情况，仍要好得多。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0300a00">
《告知前方不明骑。
　我方无意攻击。》

//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0310a00">
《请问贵骑所属何方，目的为何？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　……

　没有回应。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0320a00">
「问对方名字前要先报上自己的姓名，是这个
意思吗？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0330a01">
《谁知道……
　若是如此，那对方岂不是在连我们是谁都不知道
的情况下，就直接展开攻击了吗？》

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0340a00">
「也许对方就是有这种特殊嗜好的人。」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0350a01">
《根本没那种人。
　话说，这种家伙，赶快把它解决掉吧。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　虽然并非不同意村正的建议，但我又一次尝试着和不明
骑的通讯。
　当然，总不至于直说「我方亦所属不明」。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0360a00">
《我方所属为——国际统和共荣联盟大和进驻军。
　目前正在执行机密任务，未持有识别信号。》

//◆荒い息
{	FwR("cg/fw/fwガッタイダー_通常.png");}
//【机体】
<voice name="ボーディ" class="ボーディ" src="voice/mc01/009vs0370b07">
《……》

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0380a00">
《重复。我方所属为进驻军。
　请告知贵骑所属及目的。》

//◆荒い息遣い。ぜーはーぜーはー。
{	FwR("cg/fw/fwガッタイダー_通常.png");}
//【机体】
<voice name="ボーディ" class="ボーディ" src="voice/mc01/009vs0390b07">
《……<?>
{	Wait(300);}
……<?>
{	Wait(300);}
…………》

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0400a00">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　什么？
　这是……对方的回音吗？

　就像刚刚全力奔跑结束之后的人——不，不如说更像
是晚期哮喘病人般，病态而凌乱的喘息。
　只传来了喘息的声音，没有任何言语。

　但，这并非未将他的意志传达过来。
　他的呼吸中包含着某种意志。

　即是，对我的————<k>敌意。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0410a01">
《来了！》

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0420a00">
「嗤!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　然后，这便是对方的回答吗！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆敵騎突進
	CreateSE("SE00","se戦闘_動作_空突進01");
	MusicStart("SE00",0,1000,0,750,null,false);
	CreatePlainSP("絵板写", 20000);
	CreateTextureSP("絵演合体", 17100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 500, 500, null, true);

	CreateSE("SE01","se戦闘_動作_空突進02");

	Zoom("絵演合体", 3000, 1200, 1200, null, false);
	FadeDelete("絵板写", 100, true);

	Wait(100);

	Zoom("絵演合体", 100, 1200, 1200, null, false);

	Wait(50);

	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);


//◆迎撃
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateSE("SE01a","se擬音_雰囲気_抜刀01");
	CreateSE("SEL01","se戦闘_動作_空走行01_L");

	CreateTextureSP("絵演村正", 17100, 0, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	CreateTextureSP("絵演背景", 17000, InRight, Middle, "cg/bg/bg204_横旋回背景c_01.jpg");
	Move("絵演村正", 0, @660, @0, null, true);
	Shake("絵演村正", 2160000, 1, 2, 0, 0, 1000, null, false);

	Move("絵演村正", 650, @-512, @0, Dxl2, false);
	Move("絵演背景", 300000, -100, @0, Dxl3, false);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　总之，先拔刀。
　无论对方是何人，都没有理由毫无抵抗地任其宰割。

　我也有要事在身。
　尤其是，现在——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0430a00">
（……对了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　突然的袭击，让我把忘记的事，回想了起来。
　没错，现在不是在这种地方进行这种莫名战斗的时候。

　要马上脱身——
　
　——不……难道，这与大鸟大尉所说的亲王即将陷入危
机这件事有关吗!?

　不是难道。不如说这样的想法才是自然的。
　若真是如此……<k>便不能轻率地逃离了。敌骑定会紧
追我方，最终反而变成特意将敌人引向亲王所在地了。

　那样的话，别说是救援了，反而会连累亲王。
　就算要脱身，也要在此之前先剥夺敌骑的战斗能力。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0440a00">
「村正，确定方针。
　给敌骑不足以致死的一击之后迅速离开！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0450a01">
《明白！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆正面相撃
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵演村正", 150, @-60, @0, null, false);

	CreateColorSPadd("絵白転", 20000, "#FFFFFF");
	Fade("絵白転", 150, 1000, null, false);
	DrawTransition("絵白転", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 18010, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵白転", 150, 100, "slide_01_03_1", true);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　敌骑占据了高度优势。
　必须逆气流而上，迎击敌人。很显然形势对我方尤为
不利。

　敌人的武器是体积庞大且外形凶恶的战斧。
　若这一击加上与其外表相符的骑体的重量，再加之下
落威力的话，那毫无疑问，会造成巨大的威胁。

　那么，这一回合。
　该如何应对呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：斬り合う／ひとまず防御に徹する

}

..//ジャンプ指定
//◆斬り合う　"mc01_009vsa.nss"
//◆ひとまず防御に徹する　"mc01_009vsb.nss"

//★選択肢シーン
scene mc01_009vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Move("絵演*", 0, -615, @0, Dxl2, false);
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("斩击","暂且贯彻防御战术");
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
			ChoiceA02();
//◆斬り合う　"mc01_009vsa.nss"
				$GameName = "mc01_009vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆ひとまず防御に徹する　"mc01_009vsb.nss"
				$GameName = "mc01_009vsb.nss";
		}
	}
}