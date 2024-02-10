
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

scene mc01_021vsbb.nss_MAIN
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
	#ev903_村正磁気バリアー展開_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc01_022vs.nss";

}

scene mc01_021vsbb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●負極
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm08",0,1000,true);
	CreateTextureSP("絵演", 5000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	CreateWindow("絵窓", 19000, 0, 108, 1024, 360, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 19000, "#CC0000");
	CreateTextureSP("絵窓/絵演立絵装甲弐", 19100, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	CreateTextureSPadd("絵窓/絵演立絵装甲参", 19120, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	Move("絵窓/絵演立絵装甲*", 0, @290, @160, null, true);
	Zoom("絵窓/絵演立絵装甲*", 0, 800, 800, null, true);
	Request("絵窓/絵演立絵装甲*", Smoothing);
	DrawTransition("絵窓/絵演立絵装甲参", 0, 0, 400, 100, null, "cg/data/slide_03_01_1.png", true);
	Wait(32);
	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0390a01">
《磁装·负极！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばりやー。
	CreateSE("SE01","se戦闘_陰義_磁力展開");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 19500, "WHITE");
	Fade("絵色白",10,1000,null,true);

	CreateTextureEX("絵演磁力障壁", 19400, Center, Middle, "cg/ev/ev903_村正磁気バリアー展開_a.jpg");
	Zoom("絵演磁力障壁", 0, 2000, 2000, null, true);
	SetBlur("絵演磁力障壁", true, 4, 500, 50, false);
	Fade("絵演磁力障壁", 0, 1000, null, true);

	Delete("絵窓*");
	Delete("絵演");

	Fade("絵演磁力障壁", 250, 1000, Dxl1, false);
	Zoom("絵演磁力障壁", 250, 1000, 1000, Dxl1, false);
	FadeDelete("絵色白", 400, true);

//◆敵、斧攻撃
	CreateSE("SE00","se戦闘_動作_空上昇01");

	CreateWindow("絵窓", 19600, 342, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 19610, "#CC0000");
	CreateTextureSPmul("絵窓/絵演背景", 19620, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 19700, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵窓/絵演立絵装甲", Smoothing);
	Move("絵窓/絵演立絵装甲", 0, @0, @300, null, true);//ダミー注意：仮位置
	Zoom("絵窓/絵演立絵装甲", 0, 500, 500, null, true);

	MusicStart("SE00",0,1000,0,1000,null,false);
	Zoom("絵窓/絵演立絵装甲", 600, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵装甲", 600, @0, @-100, Dxl2, false);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);
	Zoom("絵窓/絵演立絵装甲", 500, 3000, 3000, Dxl2, false);
	Move("絵窓/絵演立絵装甲", 500, @0, @-200, Dxl2, false);

	Wait(300);

	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE02","se戦闘_攻撃_斧振る01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_down2(20000,@0, @-100,2000);
	SL_downfade2(10);

	Delete("絵窓*");

//◆バリヤーで阻止。弾き返す
	CreateSE("SE03a","se戦闘_攻撃_鎧_剣戟02");
	CreateSE("SE03b","se戦闘_衝撃_衝突01");
	MusicStart("SE03a",0,1000,0,850,null,false);
	MusicStart("SE03b",0,500,0,1500,null,false);

	CreateColorSP("絵色白", 30000, "#FFFFFF");
	Delete("絵色黒");
	Delete("絵演磁力障壁");

	CreateTextureSP("絵空背景", 100, Center, InBottom, "cg/bg/bg202_旋回演出背景山a_01.jpg");
	CreateTextureSPadd("絵空背景覆", 110, Center, InBottom, "cg/bg/bg202_旋回演出背景山a_01.jpg");
	Move("絵空背景*", 0, @0, @288, null, true);

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);

//あきゅん「ＣＰ：ダメージフラグで生命値調整」
	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,380);
	CP_SpeedChange(0,374,null,false);

	CP_PowerChange(0,577,null,false);

	CP_HighChange(0,1281,null,false);
	CP_AziChange(0,18,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);
	CP_RollBarMoveA();

	SetVolume("SE*", 2000, 0, null);

	FadeDelete("絵空背景覆", 1500, false);
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　利用互相排斥的磁力形成的屏障将敌骑的战斧推向不
同的方向。
　当然，村正毫发无伤。

　如果敌人还尚存一丝理智的话，一定会是一副满脸迷惑
的模样吧。

　无法亲自确认着实让人遗憾……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 19900);
	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	Move("絵演立絵", 0, @316, @0, null, true);
	Shake("絵演立絵", 600000, 2, 0, 0, 0, 1000, null, false);

	Move("絵演立絵", 6000, @-60, @0, DxlAuto, false);
	Move("絵演背景", 60000, -100, @0, null, false);

	Cockpit_AllFade0();
	Fade("上背景", 2000, 0, null, false);
	DrawDelete("上背景", 2000, 1000, "slide_01_03_1", false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0400a01">
《撑过去了。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0410a00">
（嗯）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	CreateColorEX("絵色黒", 19000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　暂且这样就好。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitPlay("SE*", null);

//◆→●生存

}

..//ジャンプ指定
//次ファイル　"mc01_022vs.nss"