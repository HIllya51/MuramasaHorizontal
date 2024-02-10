
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_043vsa.nss_MAIN
{

	
//コックピット用Ｓｅｔ
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

	CP_AllDelete();

	$GameName = "mz00_000.nss";

}

scene mc04_043vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 18000, "BLACK");
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mc04_043vs.nss"


//●守るため


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……守护。

　是的。
　我想守护住。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：景明と香奈枝
	EfRecoIn1(18500,600);

	CreateTextureEX("絵回想", 18000, @0, @0, "cg/ev/ev171_香奈枝に跪く景明.jpg");
	Fade("絵回想", 0, 1000, null, true);

	EfRecoIn2(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　守护住那个准确理解了我的罪行，
　并且约定要给我正确刑罚的女性。

　不惜一切代价也想守护住！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);

	Delete("絵回想");
	EfRecoOut2(600,true);

//◆戦闘復帰
	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CreateTextureSP("絵背景50", 100, Center, -1600, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,272,null,false);
	CP_IHPChange(0,3,null,false);

	CP_SpeedChange(0,650,null,false);
	CP_HighChange(0,657,null,false);
	CP_AziChange(0,17,Axl1,false);


	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se戦闘_動作_空突進02",1000);


	DrawDelete("絵色100", 200, 100, "slide_02_01_1", false);
	Move("絵背景50", 1000, @0, @800, Dxl2, true);

	SoundPlay("@mbgm13",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　奋起全力驱逐意识上的雾霭。
　怒视上空，捕捉敌影。

　战斗。
　奋起……战斗！

　为了守护无可取代之人。
　——守护大鸟大尉！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0250a00">
「噢，噢噢！」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0260a00">
「噢啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆急上昇
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 4000, 1100, null);


	CreateTextureEX("絵背景100", 1500, 0, 0, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, @0, -800, null, true);
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 50, 50, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);
	Move("@絵狸", 0, @0, @-50, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");

	OnSE("se戦闘_動作_空突進03",1000);

//	CP_HighChange(1000,-150,null,false);
//	CP_SpeedChange(1000,540,null,false);

	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵Suf", 500, 1000, null, false);
	Rotate("絵Suf", 2800, @0, @0, @180, AxlDxl,false);
	Move("絵背景100", 3500, @0, -5000, AxlDxl, false);
	Move("@絵背景50", 500, @0, @-200, Axl2, false);

	CP_AziChange(2000,189,Axl1,false);
	CP_SpeedChange(2000,750,AxlDxl,false);
	CP_HighChange(2000,557,AxlDxl,false);


	CP_RollBarMove2(2000,180,AxlDxl,true);
	CP_RollBarMove("@絵背景50",0,0,null,true);
	Zoom("@絵背景50", 0, 1100, 1100, null, true);

	Wait(500);
	CP_SpeedChange(2000,650,AxlDxl,false);
	CP_HighChange(2000,657,AxlDxl,false);

	Move("@絵背景50", 0, -512, -388, null, true);
	Fade("絵Suf", 300, 0, null, false);
	Move("@絵背景50", 500, -512, -158, Dxl2, true);
	Move("@絵狸", 0, @0, @-50, Dxl2, false);
	Fade("@絵狸", 300, 1000, null, false);
	Move("@絵背景50", 600, -512, -188, AxlDxl, true);

//	BGMoveAuto("@絵背景50",1);

	Wait(500);

	Delete("絵背景100");
	Delete("絵Suf");

	SetVolume("@mbgm*", 300, 0, null);
	SetVolume("SE*", 300, 0, null);
	CreateColorSP("絵色100", 18500, "BLACK");
	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　
　　　……可是，凑斗景明啊。
　　　你不是已经有所觉悟了吗？

　
　　　　　　　　　对自己的宿命。

　
　凑斗景明未曾一度守护住珍视之人，
　这个男人根本没有力量守护任何人的这一事实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0270a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――






	OnSE("se人体_体_心臓の音02",1000);

	Wait(1000);

	CreateSE("SE01","se戦闘_動作_鎧_速度失速01");
	MusicStart("SE01",0,1000,0,1000,null,false);


//◆グレイアウト
	CreateEffect("エフェクト１", 16000, 0, 0, 1024, 576, "Monochrome");
	Fade("エフェクト１", 0, 0, null, true);
	Fade("エフェクト１", 5000, 600, null, false);


	CP_SpeedChange2(6000,147,null,false);
	CP_HighChange2(6000,154,null,false);

	CP_SpeedChange(6000,316,AxlDxl,false);
	CP_HighChange(6000,427,AxlDxl,false);
	Move("@絵狸", 6000, @0, @-50, AxlDxl, false);
	Move("@絵背景50", 6000, @0, @-150, AxlDxl, false);
	FadeDelete("絵色100", 3000, true);
	Wait(2000);

	SetFwC("cg/fw/fw景明_恐怖.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0280a00">
「……呜。」


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0290a00">
「呃啊————啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 18500, "WHITE");

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("@絵狸", 200, 1000, null, false);
	Move("@絵狸", 500, @0, @-50, Dxl1, true);
	Move("@絵狸", 400, @0, @50, Axl3, false);
	Fade("絵色100", 400, 1000, Axl3, false);
	Zoom("@絵狸", 400, 1500, 1500, Axl3, true);

//	Wait(350);

	OnSE("se戦闘_破壊_鎧03",1000);
//	SetFrequency("SE10", 2000, 800, null);

	Delete("@絵狸");
	BGMoveDelete();
//	Shake("絵背景50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
//	Move("絵背景50", 2000, @0, -1200, Dxl2, true);




//◆バロウズ攻撃
//◆刺突
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateSE("SE02","se戦闘_破壊_鎧04");

	SetFrequency("SE10", 1000, 1450, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
//	Zoom("絵背景50", 500, 1650, 1650, Axl2, false);
//	Fade("絵色100", 500, 1000, Axl3, false);
//	Zoom("絵狸", 500, 1000, 1000, Axl2, true);

	CP_LockOnDelete();
	Delete("絵狸");
	MusicStart("SE02",0,1000,0,1000,null,false);

//◆ずがーん
	CreateTextureEX("絵爆発", 18150, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵爆発", 0, 1100, 1100, null, true);

	CreateSE("SE01","se戦闘_破壊_鎧01");
	CreateSE("SE02","se戦闘_衝撃_鎧転倒02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	EffectZoomadd(18500, 4500, 500, "cg/ef/ef022_汎用武者散華.jpg", false);
	Wait(150);
	FadeDelete("絵色100", 1000, false);

	Shake("絵爆発", 3500, 5, 3, 0, 0, 1000, Dxl2, false);
	Zoom("絵爆発", 6000, 1200, 1200, Dxl2, false);
	Fade("絵爆発", 50, 1000, null, true);

	Wait(2000);


//◆致命傷。
//◆ゲームオーバー
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	ClearFadeAll(3000, true);
	CP_AllDelete();

	Wait(3000);



}

..//ジャンプ指定
//次ファイル


