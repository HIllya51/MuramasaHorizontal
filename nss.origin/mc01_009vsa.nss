

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//嶋：デバッグ用
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc01_009vsa.nss_MAIN
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
	$First_Battle_Damage = $First_Battle_Damage+1;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$GameName = "mc01_010vs.nss";

}

scene mc01_009vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_009vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●斬り合う
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演村正", 17100, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Move("絵演村正", 0, @-160, @120, null, true);
	CreateTextureSP("絵背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	CreateSE("SE01","se戦闘_動作_刀構え02");
	Move("絵演", 0, -615, @0, Dxl2, false);
	Delete("上背景");

	Move("絵演", 300, @60, @0, DxlAuto, false);
	Move("絵演村正", 300, @60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵演", 300, true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵背景", 17000, InLeft, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureSP("絵演合体", 17100, Center, -480, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 500, 500, null, true);

	DrawDelete("上背景", 150, 100, "slide_01_02_1", true);

	Move("絵演合体", 450, @0, -510, DxlAuto, false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我举刀过顶。
　敌骑也轻松地将战斧抬至肩头。

　那么谁能钻入对手<RUBY text="··">下方</RUBY>空子，谁便能在攻击中压制
住对手。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/009vs0460b33">
《我要用榨汁机将你的脑袋搅烂!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戦斧
	CreateColorEX("絵色黒", 19990, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵演合体", 700, 1500, 1500, Axl2, false);
	Move("絵演合体", 700, @-3, @0, Axl2, false);
	Fade("絵色黒", 600, 1000, Axl2, true);

	CreateSE("SE01a","se戦闘_攻撃_斧振る01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_rightdown2(20010,@120, @120,2000);
	SL_rightdownfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　伴随着疯狂的高喊声，敌骑迅速地攻了过来，其身上
所散发出来的气势简直到达了异常的地步。但与之相对
的，对方攻击的动作却格外草率。甚至称不上是什么正
经的武术。亦没有任何智取的小动作。

　我一边接近敌骑的腹下，一边挥下太刀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演合体");

//◆袈裟切り
	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @-75,1500);
	SL_leftdownfade2(10);

//◆がきーん。
	CreateSE("SE02a","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("絵色白", 30000, "#FFFFFF");
	Delete("絵色黒");

	CreateTextureSPadd("絵背景覆", 17010, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureSP("絵背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	Zoom("絵背景覆", 0, 1250, 1250, null, true);
	SetBlur("絵背景覆", true, 3, 500, 80, false);
	FadeDelete("絵色白", 150, false);

	FadeDelete("絵背景覆", 1000, false);
	Shake("絵背景覆", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵背景覆", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0470a00">
「唔——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0480a01">
《好硬……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　坚硬的手感让我不禁狠狠地咬紧牙关，村正则气愤地
颤动着装甲。
　看来敌人厚重的身形并不只是徒有其表。简单的剑击
对它根本不起作用。

　但无论如何，这一回合压制住了敌人。
　若继续由我方掌握战斗的形势，那无需费多少力气就
能——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆一撃食らう。ずがーん。
	CreateSE("SE01","se戦闘_攻撃_斧振る01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("絵色白", 30000, "#FFFFFF");
	Wait(10);
	Delete("絵色白");

	CreateSE("SE01a","se戦闘_衝撃_衝突01");
	CreateSE("SE01aa","se戦闘_攻撃_鎧攻撃命中03");
	CreateTextureEX("絵背景覆", 17010, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	SetBlur("絵背景覆", true, 3, 500, 80, false);

	MusicStart("SE01a",0,1000,0,1500,null,false);
	MusicStart("SE01aa",0,1000,0,1000,null,false);
	Fade("絵背景覆", 0, 1000, null, true);
	FadeDelete("絵背景覆", 1000, false);
	Shake("絵背景覆", 500, 0, 20, 0, 0, 1000, Dxl2, true);

//◆両騎、交差
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawDelete("上背景", 150, 100, "circle_01_00_0", true);

	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureSP("絵演村正", 17110, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	CreateTextureSP("絵演合体", 17100, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");

	$村正縮小率=250;
	$合体駄調整=$村正縮小率*2.25;

	Zoom("絵演村正", 0, $村正縮小率, $村正縮小率, null, true);
	Zoom("絵演合体", 0, $合体駄調整, $合体駄調整, null, true);

	CreateSE("SE02","se戦闘_動作_空突進02");
	CreateSE("SE02a","se戦闘_動作_空突進01");
	SetBlur("絵演村正", true, 2, 500, 30, true);
	SetBlur("絵演合体", true, 2, 500, 30, true);
	Move("絵演村正", 0, @200, @60, null, true);
	Move("絵演合体", 0, @-200, @-60, null, true);

	Move("絵演村正", 400, @-2500, @-30,Axl2, false);
	Zoom("絵演村正", 400, 850, 850, null, false);

	Move("絵演合体", 400, @2500, @30, Axl2, false);
	Zoom("絵演合体", 400, 1250, 1250, null, false);

	Zoom("絵演背景", 1000, 550, 550, Dxl2, false);

	MusicStart("SE02",0,1000,0,750,null,false);
	MusicStart("SE02a",0,1000,0,1150,null,false);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	Wait(800);

	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演*");

//あきゅん「ＣＰ：一度ＣＰを表示してダメージした事を表す」
	Cockpit_AllFade2();

	MyLife_Count(0,612);
	CP_IHPChange(0,10,null,false);

	CP_SpeedChange(0,420,null,false);
	MyTr_Count(0,287);

	CP_PowerChange(0,298,null,false);

	CP_HighChange(0,1617,null,false);
	CP_AziChange(0,178,null,false);

	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CreateTextureSP("絵演空背景", 100, Center, -1060, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

//あきゅん「ＣＰ：上昇しながら切り替え」
	CP_SpeedChange(2000,413,Dxl2,false);
	CP_PowerChange(2000,920,null,false);
	CP_HighChange(2000,1712,Dxl2,false);
	CP_AltChange(2000,13,Dxl2,false);
	Move("絵演空背景", 1500, @0, @60, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

//あきゅん「ＣＰ：斧ＤＭＧ：-218」
	MyLife_Count(300,394);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0490a00">
「什……什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　——腰部受到了攻击！
　
　不是很沉重的攻击。损伤大概也不会太严重。

　但是，为什么!?
　我明明逃离了战斧的攻击轨道。

　但是——这一击无疑是在与敌骑擦身而过的那一瞬
间被击中，而且是来自于身处我<RUBY text="··">上方</RUBY>的敌骑。
　毫无疑问，这是敌人的连续攻击。

　但是！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Cockpit_AllFade0();
	Delete("絵演空背景*");

	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	CreateTextureSP("絵背景", 500, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureSP("絵演村正立", 1000, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	Move("絵演村正立", 0, @-120, @20, null, true);
	Fade("絵演村正立", 0, 1000, null, true);

	Shake("絵演村正立", 2160000, 1, 1, 0, 0, 1000, null, false);
	Shake("絵背景", 2160000, 1, 0, 0, 0, 1000, null, false);
	Move("絵背景", 300000, @1024, @0, null, false);

	MusicStart("SEL01",1000,1000,0,1000,null,true);
	DrawDelete("絵色黒", 150, 100, "slide_03_01_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0500a00">
「村正！　刚才那是什么!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0510a01">
《不——不知道！
　明明避开了它的斧头……应该是……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　有着钢铁之心的村正也不禁动摇了。
　因为方才那诡异到极点的攻击。

　那究竟是什么？
　隐藏武器吗，还是某种特异的武术……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 300, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateColorSP("絵色黒", 20000, "#000000");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	WaitPlay("SE*", null);

//◆ダメージ＋１

}

..//ジャンプ指定
//次ファイル　"mc01_010vs.nss"
