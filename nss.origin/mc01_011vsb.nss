

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

scene mc01_011vsb.nss_MAIN
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
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mz00_000.nss";

}

scene mc01_011vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_011vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●戦域離脱
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 0, @0, @200, Dxl2, false);
	Delete("上背景");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0230a00">
「村正。改变方针。
　马上离开战场。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0240a01">
《……明白。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　虽然我的举动让不明白我为何急于赶路的村正感到有
些不平，但她最终还是听从了我的命令。
　也许比起对敌骑的战意，想要远离那莫名恐惧的心情
更占上风。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆軌道変えて離脱
	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	Zoom("絵演背景", 300, 1500, 1500, Dxl2, false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵演背景");
	CreateTextureSP("絵空背景", 100, 100, -1200, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Request("絵空背景", Smoothing);
	//SetBlur("絵空背景", true, 2, 500, 60, false);
	Move("絵空背景", 650, @0, @300, Dxl2, false);

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	//$First_Battle_Damage = 1;//デバッグ用

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);

.//ＣＰ演出＜生命値調整＞
//あきゅん「ＣＰ：ダメージフラグで生命値調整」
	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,402);
	CP_SpeedChange(0,482,null,false);

	CP_PowerChange(0,870,null,false);

	CP_HighChange(0,1287,null,false);
	CP_AziChange(0,281,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove("@絵空背景", 0, -10, Dxl2, false);

	FrameShake();

	MusicStart("SEL01",2000,1000,0,1500,null,true);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//あきゅん「ＣＰ：上昇しながら針路をとる演出」
	MyTr_Count(400,482);
	CP_SpeedChange(400,588,null,false);

	CP_PowerChange(400,800,null,false);

	CP_HighChange(400,1513,null,false);

	CP_AziChange(400000,261,DxlAuto,false);
	CP_AltChange(400,0,null,false);

	CP_RollBarMove2(5150,-3,null,false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0250a00">
「它追上来了吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0260a01">
《……嗯。
　而且速度很快。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0270a01">
《这样下去的话，很快就会被追上了……
　怎么办？》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0280a00">
「坚持刚才的方针。
　继续撤退。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0290a01">
《想被那个怪物在自己的屁股上狠狠咬上
一口吗？》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0300a00">
「……身后受伤是武者的耻辱啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　除掉逃离途中很有可能遭遇敌人来自背后的袭击这一
点，更重要的是，身后负伤对武者而言是最应避讳的。
　身后受伤是武者是最大的耻辱之刻印，理应怀抱着切
腹的觉悟来洗刷。

　但这次，无需担心这个问题。
　虽然敌人的速度很快，但在它接近到足以用战斧碰到
我之前，我就能到达目的地了。

　……就在我这样想的时候。<k>
　建朝寺已经在眼前了。
</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：ボーディーホーン発射
	CreateSE("SE02","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE02",0,800,0,1000,null,false);

	$残時間=RemainTime("SE02")/2;
	WaitKey($残時間);

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//◆村正
//◆砲弾直撃。ずがーん。散華。
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE01a","se戦闘_破壊_鎧03");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);

//あきゅん「ＣＰ：被弾演出開始」
	MyLife_Count(300,31);
	CP_IHPChange(300,1,null,false);

	MyTr_Count(300,51);
	CP_SpeedChange2(1500,142,Dxl2,false);

	CP_HighChange2(1500,1519,Dxl2,false);
	CP_AltChange(1500,20,Dxl2,false);
	Move("絵演空背景", 1500, @0, @-60, Dxl2, false);

	FrameShakeDelete();
	Shake("@CP_Frame*", 1500, 0, 50, 0, 0, 1000, Dxl2, false);
	Shake("絵演空背景", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

	WaitKey(1000);

	CreateSE("SE02","se戦闘_衝撃_鎧散華");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 30000, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl2, true);

//◆以下笑い声、全部重ねる。
//◆テキスト無し。

	WaitKey(1000);

	CreateColorEX("絵色黒", 30000, "#000000");
	Fade("絵色黒", 5000, 1000, null, false);

	CreateVOICE("小夏","mc01/011vs0301");
	MusicStart("小夏",0,1000,0,1000,null,false);

	$残時間=RemainTime("小夏");
	WaitKey($残時間);

	CreateColorEX("絵色黒弐", 30010, "#000000");
	Fade("絵色黒弐", 2000, 1000, null, true);

	SetVolume("小夏", 2500, 0, null);

	WaitPlay("小夏", null);

	ClearWaitAll(0, 2000);


/*

	SetFwC("cg/fw/fw小夏_憎悪.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/011vs0310b33">
《啊——哈哈哈哈哈哈哈哈！
　呵呵呵呵，啊哈哈哈哈哈哈哈哈哈哈哈！》

{	NwC("cg/fw/nwその他.png");}
//【ボーディ】
<voice name="ボーディ" class="ボーディ" src="voice/mc01/011vs0320b07">
《嘻哈哈哈哈哈哈哈哈哈哈！
　嘻哈哈哈哈哈哈哈哈哈哈！》

{	NwC("cg/fw/nwその他.png");}
//【ライター】
<voice name="ライター" class="ライター" src="voice/mc01/011vs0330b09">
《咦嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻！
　哎嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿！》

{	NwC("cg/fw/nwその他.png");}
//【レフター】
<voice name="レフター" class="レフター" src="voice/mc01/011vs0340b12">
《咯嘻呀嘻呀嘻嘻呀嘻呀嘻呀！
　呵呵呵呵，呵呵呵呵呵呵呵呵！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/


//◆ゲームオーバー

..//ジャンプ指定
//次ファイル

}


