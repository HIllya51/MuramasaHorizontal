
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

scene mc03_020vsab.nss_MAIN
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

scene mc03_020vsab.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_020vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●総力攻撃２（※第１Ｒが「総力攻撃」の場合）
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

	CP_HighChange(0,1217,null,false);
	CP_AziChange(0,295,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");

	MoveFFP1("@絵演航空背景",20000);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　再来一次！
　用力命中和刚才同样的地方！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//あきゅん「ＣＰ：特定の値から熱量をガンガン減らす」
	CP_PowerChange(5000,0,null,false);
	CP_SpeedChange(500,110,null,false);
	MyTr_Count(500,60);

	PrintGO("上背景", 19999);
	CreateColorSP("絵色黒", 10, "#000000");

	Fade("@box*", 0, 0, null, true);
	Cockpit_AllFade0();

	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 50000, "#000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵色黒");
	Delete("上背景");

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);
	FadeDelete("絵演上", 200, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0040a00">
「尝尝这个——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆グレイアウト症状
	SetVolume("@mbgm*", 300, 0, null);
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 30000, "#FFFFFF");
	Delete("絵演*");

	Cockpit_AllFade2();
	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");
	MoveFFP1("@絵演航空背景",20000);

	CreatePlainSP("絵演失神一", 20000);
	CreatePlainSP("絵演失神二", 19990);
	SetShade("絵演失神一", HEAVY);
	SetShade("絵演失神二", SEMIHEAVY);
	SetTone("絵演失神*", Monochrome);
	SetBlur("絵演失神*", true, 1, 500, 30, false);

	FadeDelete("絵色白", 100, false);

	Zoom("絵演失神*", 300, 1150, 1150, Dxl2, false);

	Wait(200);

//◆復帰
	Fade("絵演失神一", 100, 0, Dxl2, false);
	FadeDelete("絵演失神二", 200, true);
	Delete("絵演失神*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　…………什么？

　这——<k>——这是！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆グレイアウト症状
	CreateSE("SE01","se人体_体_心臓の音02");
	CreatePlainSP("絵演失神一", 20000);
	CreatePlainSP("絵演失神二", 19990);
	SetShade("絵演失神一", HEAVY);
	SetShade("絵演失神二", SEMIHEAVY);
	SetTone("絵演失神*", Monochrome);
	SetBlur("絵演失神*", true, 1, 500, 30, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆復帰
	Zoom("絵演失神*", 300, 1150, 1150, Dxl2, false);

	Wait(400);

	Fade("絵演失神一", 100, 0, Dxl2, false);
	FadeDelete("絵演失神二", 200, true);
	Delete("絵演失神*");

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0050a00">
（糟了……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我失去了血气。
　
　……完全是字面意思。

　我明明知道自己身体状况不佳！
　连续进行全力攻击会有怎样的后果，是自明之理！


　事到如今…………<k>热量枯竭！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆グレイアウト。復帰せず
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateEffect("絵効果", 19990, 0, 0, 1024, 576, "Monochrome");
	SetAlias("絵効果","絵効果");

	SetBlur("絵演航空背景", true, 3, 500, 300, false);

	Wait(32);

	FadeDelete("絵色白", 600, false);

	CockPit_LockSet(@0,@0);
	CreateTextureEX("絵演立絵合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘b.png");
	CP_LockOnMove("@絵演立絵合体",0,@0,@-100,null,true);
	Zoom("絵演立絵合体", 0, 100, 100, null, true);
	Request("絵演立絵合体", Smoothing);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　意识急速地变得散漫。
　我失去了指尖的感觉。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演立絵合体", 300, 1000, null, false);
	CP_LockOnMove("@絵演立絵合体",300,@0,@-10,null,true);

	CreateSE("SE02","se特殊_コックピット_ロックオン");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CP_LockOnFade(300,"off",true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　不，必须要行动。
　动起来，总之先把敌人的，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵騎、チェーンソー一閃
	CreateColorEX("絵色黒", 20000, "#000000");

	CP_LockOnMove("@絵演立絵合体",1000,@0,@-100,null,false);
	Wait(800);
	CP_LockOnMove("@絵演立絵合体",1000,@0,@-30,null,false);
	Wait(200);

	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体", 400, @0, @0, @30, Axl2,false);
	Zoom("絵演立絵合体", 400, 1500, 1500, Axl2, false);
	CP_LockOnMove("@絵演立絵合体",400,@50,@600,Axl2,false);

	CP_LockOnChange(200,false);

	Wait(100);

	Fade("絵色黒", 280, 1000, Axl2, true);
	Delete("絵演立絵合体*");
	CP_LockOnDelete();

//◆ずばーん。
	CreateSE("SE01a","se戦闘_攻撃_チェーンソー02_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);

	CreateColorSP("絵色黒地", 20000, "#000000");

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


