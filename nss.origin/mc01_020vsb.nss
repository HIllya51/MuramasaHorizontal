
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

scene mc01_020vsb.nss_MAIN
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

	$GameName = "mc01_021vs.nss";

}

scene mc01_020vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_020vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●回避する
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵空背景", 100, -512, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵演合体立絵", 17100, -338, -502, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体立絵", Smoothing);
	Zoom("絵演合体立絵", 0, 100, 100, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();
	Request("@レンズ１", UnLock);
	Request("@レンズプロセス１", UnLock);
	Request("レンズ１", UnLock);
	Request("レンズプロセス１", UnLock);
	Delete("@レンズプロセス１");
	Delete("@レンズ*");
	Delete("レンズプロセス１");
	Delete("レンズ*");

	Zoom("絵演合体立絵*", 0, 1000, 1000, null, true);

	CreatePlainEX("絵板写", 18010);
	CreatePlainEX("絵板写二", 18020);
	Fade("絵板写", 0, 400, null, false);
	Fade("絵板写二", 0, 200, null, false);
	Zoom("絵板写", 0, 1100, 1100, Dxl2, false);
	Zoom("絵板写二", 0, 1300, 1300, Dxl2, false);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　现在——只能避开！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0180a00">
「呜啊————！」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆斧一閃
	CreateColorSP("絵色黒", 20010, "#000000");
	CreateSE("SE01","se戦闘_攻撃_斧振る01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

//◆ちょっと掠った。でもなんとか避け
	CreateSE("SE02","se戦闘_動作_空突進02");
	CreateSE("SE02a","se戦闘_攻撃_鎧かする01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 22000, "#FFFFFF");

	CreateTextureSP("絵航空背景", 1000, Center, -720, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

//あきゅん「ＣＰ：初期値定義」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);
	CP_IHPChange(0,$合体戦生命調整値,null,false);

	CP_SpeedChange(0,314,null,false);
	MyTr_Count(0,319);

	CP_PowerChange(0,666,null,false);

	CP_HighChange(0,913,null,false);
	CP_AziChange(0,251,null,false);

	CP_AltChange(0,14,null,false);
	CP_RollBarMove2(0,0,null,true);

	Delete("絵空背景");
	Delete("絵演合体立絵");
	Delete("絵色黒");
	Delete("絵板*");

//あきゅん「ＣＰ：上に抜けると当たらない攻撃の回避のためやや上回避気味」
	CP_HighChange(60000,1267,null,false);
	Move("絵航空背景", 60000, @0, @288, null, false);

	Shake("@CP_Frame", 1500, 0, 4, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵色白", 500, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0190a01">
《……躲开了！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);

	Cockpit_AllFade0();

	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureSP("絵演村正", 17110, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	CreateTextureSP("絵演合体", 17100, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");
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
	DrawDelete("絵色黒", 150, 100, "circle_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　货真价实的毫厘之差。
　不，虽然只是<RUBY text="···">极短的</RUBY>毫厘之差。

　毒斧捕获目标失败，与敌骑一同离开了我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆離脱



..//ジャンプ指定
//次ファイル　"mc01_021vs.nss"

}



