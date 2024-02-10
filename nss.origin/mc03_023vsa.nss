
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

scene mc03_023vsa.nss_MAIN
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

	Cockpit_AllFade0();

	$GameName = "mc03_024vs.nss";

}

scene mc03_023vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_023vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●上
	SoundPlay("@mbgm12",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 19990, "#000000");
	FadeDelete("上背景", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　向上！
　那门炮的死角是上方——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆発砲ぼーん
//◆ぎりぎり掠めていきました。
	Cockpit_AllFade2();

	MyLife_Count(0,240);
	CP_IHPChange(0,3,null,false);
	CP_PowerChange(0,200,null,false);

	CP_SpeedChange(0,550,null,false);
	MyTr_Count(0,457);

	CP_HighChange(0,1800,null,false);
	$雰囲気方位計=Random(10)+40;
	CP_AziChange(0,$雰囲気方位計,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵演航空背景", 100, Center, -1728, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵演航空背景");
	Fade("絵効果サフ", 0, 1000, null, true);
	CreateSE("SE01","se戦闘_動作_空上昇01");

	Wait(12);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演航空背景", 650, @0, @1296, Dxl3, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/023vs0590a01">
《躲开了……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　只差毫厘。
　我从人间和冥界的分界线上，滚到了<RUBY text="··">此岸</RUBY>。

　好险。
　但是，这样敌人就没有手段了，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ヘッド襲来
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureSP("絵演立絵頭", 1000, Center, Middle, "cg/st/3dガッタイダーＨ_騎航_通常.png");
	Move("絵演立絵頭", 0, @-636, @576, null, true);
	Zoom("絵演立絵頭", 0, 300, 300, null, true);
	Request("絵演立絵頭", Smoothing);
	SetBlur("絵演立絵頭", true, 3, 500, 40, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Rotate("絵演立絵頭", 200, @0, @0, @30, Dxl2,true);
	Zoom("絵演立絵頭", 200, 1000, 1000, null, false);
	Move("絵演立絵頭", 200, @400, @-576, Dxl2, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/023vs0600a00">
「什么……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　还有————!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色白", 20000, "#FFFFFF");
	CreateSE("SE01a","se戦闘_破壊_爆発04");
	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE01c","se戦闘_動作_空突進01");

//◆衝突
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Zoom("絵演立絵頭", 150, 3000, 3000, Dxl2, false);
	Move("絵演立絵頭", 150, @120, @120, Dxl2, false);

	Wait(149);

//◆大ダメージ。ずががーん。
//◆フェードアウト。短ウェイト
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);

	Wait(200);

	MyLife_Count(300,120);
	CP_IHPChange(300,2,null,false);
	CP_PowerChange(300,100,null,false);
	CP_SpeedChange(2000,200,null,false);
	MyTr_Count(300,160);
	Shake("@CP_Frame", 1300, 10, 20, 0, 0, 1000, Dxl2, false);

	CreateColorEX("絵色黒", 20000, "#000000");
	CreateSE("SE02","se戦闘_動作_空急降下01");

	Delete("絵演立絵*");
	FadeDelete("絵色白", 1000, true);

	Wait(800);

//◆村正モニタ
//◆墜落中
	MusicStart("SE02",1600,1000,0,500,null,false);
	Move("絵演航空背景", 2000, @0, @-1728, AxlDxl, false);
	Zoom("絵効果サフ", 9000, 5000, 5000, Axl1, false);
	CP_SpeedChange(9000,500,null,false);
	MyTr_Count(300,61);
	CP_HighChange(9000,500,null,false);
	CP_AltChange(4000,-80,null,false);

	Wait(1000);

	SetFrequency("SE02", 2000, 1000, Dxl3);
	FrameShake();

	Wait(1000);
	Shake("絵演航空背景", 2160000, 0, 4, 0, 0, 1000, null, false);

	Wait(1000);

	SetVolume("SE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 1, null);
	Fade("絵色黒", 2000, 1000, null, true);

	Cockpit_AllFade0();
	ClearWaitAll(0, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_024vs.nss"