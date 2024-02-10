
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

scene mc03_020vsbba.nss_MAIN
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

	$GameName = "mc03_022vs.nss";

}

scene mc03_020vsbba.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_020vsbb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●方角正解
//◆方角少し変え
//◆正面に西陽
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

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

	CP_HighChange(0,1240,null,false);
	CP_AziChange(0,0,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,850,null,false);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg001_空e_01.jpg");
	Zoom("絵背景", 0, 1100, 1100, null, true);

	Zoom("絵背景", 60000, 2000, 2000, null, false);
	MoveFFP1("@絵背景",20000);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");

	Wait(300);

	MusicStart("SEL01a",2000,750,0,1500,null,true);
	MusicStart("SEL01b",2000,750,0,2000,null,true);

	SetFrequency("SE01", 400, 1000, null);

	Delete("上背景");

	Fade("絵色白", 1300, 0, null, false);
	DrawDelete("絵色白", 1600, 1000, "circle_04_00_0", true);

	WaitKey(500);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0120a00">
「……呜……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0130a01">
《等等，主君。
　这样很危险。》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0140a00">
「不。
　不这样才危险。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0150a01">
《？　…………啊。
　是呀。我忘了。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0160a01">
《那个粗家伙！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。ボーディーホーン
	SetVolume("SE*", 600, 10, null);
	EfRecoIn1(19900,600);
	CreateTextureSP("絵回想", 19000, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_a.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0170a00">
「敌骑隐藏着高速彻甲弹。
　如果只是逃跑，会成为活靶子。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0180a00">
「如果从背后受到攻击，一击就会被击落。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

	SetVolume("SE*", 2000, 1000, null);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0190a00">
「不过——」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0200a01">
《这样向着太阳飞行，就难以瞄准。
　……原来如此啊。》



{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0210a00">
「这样能逃掉吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0220a01">
《等一下。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆サーチ音。ピー。
	CreateSE("SE01","se特殊_コックピット_探索01");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(800);

	SetVolume("SE01", 100, 0, null);
	CreateSE("SE01a","se特殊_コックピット_起動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Wait(400);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0230a01">
《敌骑，后方五五〇。
　……看来无法简单逃掉呢。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0240a00">
「好快啊……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0250a01">
《按照单纯计算，对方有四人份的热量。
　即使考虑骑体重量，对方还是很有余地。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0260a01">
《怎么办？
　如果对方绕到上方或侧面，也会变得和太阳
无关了……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　没甩掉吗。
　不过，这也在预料之内。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0270a00">
「我方的体力恢复了吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0280a01">
《嗯。
　热量管理，血流状况，都比刚才有所改善。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0290a01">
《不会妨碍战斗的继续。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　状态不佳的原因，与其说是热量的消耗，更是因为身
体机能的不正常。
　前者必须要充分休息才能恢复，但后者只要让紊乱的
身心镇静下来就能够恢复。

　我利用了短暂的战斗脱离时间，成功做到了这一点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0300a00">
「那么转身应战。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0310a01">
《明白！
　这次来做个了结吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("絵色黒", 20000, "#000000");
	Zoom("絵背景", 2000, 4000, 4000, null, false);
	CP_SpeedChange(2000,630,null,false);
	MyTr_Count(300,488);

	Wait(600);

	CP_RollBarMove("@絵背景", 400, 90, null, false);
	CP_AziChange(2400,225,AxlDxl,false);
	CP_AltChange(1200,70,AxlDxl,false);
	Move("絵背景", 1400, @0, @288, Axl1, false);

	Wait(400);

	Fade("絵色黒", 1000, 1000, null, true);

	Wait(1000);

	ClearWaitAll(1000, 1000);

//◆→●クリア

..//ジャンプ指定
//次ファイル　"mc03_022vs.nss"

}