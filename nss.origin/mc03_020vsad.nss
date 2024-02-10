
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

scene mc03_020vsad.nss_MAIN
{

	

	//CP_AllSet("村正");

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

	Cockpit_AllFade0();

	$GameName = "mc03_021vsz.nss";

}

scene mc03_020vsad.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_020vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●避け防御２（※第１Ｒが「避け防御」の場合）
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	$装甲基礎=360;
	$装甲計算値=$装甲基礎-($mc03dmg*162);
	MyLife_Count(0,$装甲計算値);

	$体力基礎=5;
	$体力計算値=$体力基礎-($mc03dmg*2);
	CP_IHPChange(0,$体力計算値,null,false);

	$熱量基礎=300;
	$熱量計算値=$熱量基礎-($mc03kacl*250);
	CP_PowerChange(0,$熱量計算値,null,false);

	CP_SpeedChange(0,558,null,false);
	MyTr_Count(0,451);

	CP_HighChange(0,1072,null,false);
	$雰囲気方位計=Random(10)+40;
	CP_AziChange(0,$雰囲気方位計,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");

	MoveFFP1("@絵演航空背景",20000);

	CockPit_LockSet(@0,@0);
	CreateTextureSP("絵演立絵合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘b.png");
	Zoom("絵演立絵合体", 0, 100, 100, null, true);
	Request("絵演立絵合体", Smoothing);

	CP_LockOnMove("@絵演立絵合体",0,@-160,@-160,null,false);

	CreateSE("SE00","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE00",0,1000,0,1000,null,false);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我重复着现状中最善的做法。
　现在要全力回避。

　拙劣的攻击会丢掉性命。

　……不过。
　在战场之中，毫无新意地不断逃避，也是会丢掉性命
的吧……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回避機動
//◆敵騎が一度モニターから消える
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_LockOnMove("@絵演立絵合体",300,@-60,@576,AxlDxl,false);
	Move("絵演航空背景", 300, @-60, @576, AxlDxl, false);
	CP_HighChange(2000,1328,Dxl2,false);
	CP_AltChange(2000,60,Dxl2,false);

	Wait(200);

	CreateSE("SE02","se特殊_コックピット_ロックオン");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(300);

	Delete("@絵演立絵合体");

//◆が、再び。敵アップ
	CockPit_LockSet(@0,@0);
	CreateTextureEX("絵演立絵合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘b.png");

	$ガッタイダー縦ハーフサイズ=ImageVertical("絵演立絵合体")/2;
	$縦位置補正=$ガッタイダー縦ハーフサイズ+180;
	$縦位置補正２=(400+$縦位置補正)*(-1);

	CP_LockOnMove("@絵演立絵合体", 0,@0,@$縦位置補正, null, true);

	Wait(32);

	CreateSE("SE03","se戦闘_動作_空突進02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateSE("SE04","se戦闘_動作_空急降下01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Fade("絵演立絵合体", 0, 1000, null, true);
	CP_LockOnFade(0,"on",true);
	CP_LockOnMove("@絵演立絵合体", 300,@0,@$縦位置補正２,Axl2,false);

	Wait(300);

	CP_LockOnDelete();
	Move("絵演立絵合体", 1400, @0, -418, null, false);

	Wait(1000);

	SetVolume("SE*", 2000, 0, null);

//◆チェーンソーずがーん
	CreateSE("SE01a","se戦闘_攻撃_チェーンソー02_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);

	CreateColorSP("絵色黒地", 20000, "#000000");

	Delete("絵演立絵合体");
	Cockpit_AllFade0();
	CP_LockOnDelete();

	CreateTextureSPadd("絵演上上", 20120, -504, -730, "cg/ef/ef044_火花c.png");
	Zoom("絵演上上", 0, 3000, 3000, null, true);

	CreateTextureSP("絵演", 20100, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	DrawTransition("絵演", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", false);
	Zoom("絵演", 0, 1200, 1200, null, true);
	Request("絵演", Smoothing);

	Fade("絵演上上", 200, 0, null, false);
	Move("絵演上上", 200, 44, -150, null, false);
	Zoom("絵演上上", 200, 1000, 1000, null, false);
	Rotate("絵演上上", 200, @0, @0, @36000, null,false);
	Shake("絵演上上", 200, 40, 10, 0, 0, 500, Dxl2, false);

	Shake("絵演", 200, 100, 0, 0, 0, 1000, null, false);

	CreateSE("SE03a","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03a",0,1000,0,1000,null,false);

	Wait(50);

	CreateSE("SE03b","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03b",0,1000,0,1000,null,false);

	Wait(50);

	CreateSE("SE03c","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03c",0,1000,0,1000,null,false);

	Wait(50);

	CreateSE("SE04","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE04",0,1000,0,1000,null,false);

	Wait(50);

	CreateColorSP("絵色白", 21000, "#FFFFFF");
	Delete("絵色黒地");
	Delete("絵演*");
	Wait(12);
	FadeDelete("絵色白", 200, true);
	SetVolume("SE01a", 1600, 0, null);

	CreateSE("SE05","se戦闘_衝撃_鎧散華");
	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 20100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 30, false);

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, true);

	ClearWaitAll(3000, 2000);

//◆→●ゲームオーバー

..//ジャンプ指定
//次ファイル　"mc03_021vsz.nss"

}