
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsz.nss_MAIN
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

scene mc01_021vsz.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vsaaa.nss"
//前ファイル　"mc01_021vsaab.nss"
//前ファイル　"mc01_021vsbc.nss"

//●失敗
//◆斧命中。ずがーん。
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#000000");
	Fade("@box*", 0, 0, null, true);
	Fade("@Fw*", 0, 0, null, true);
	Delete("上背景");

	CreateSE("SE01","se戦闘_攻撃_斧振る01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-100,2000);
	SL_downfade2(10);

//◆村正、散華
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 20100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 30, false);

	Cockpit_AllFade0();

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);

	Fade("絵演上", 1000, 0, null, false);
	DrawDelete("絵演上", 1000, 100, "worm_01_00_0", true);

//◆ガッタイダー
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/bg202_旋回演出背景山_01.jpg");
	CreateTextureSP("絵演合体", 1000, Center, Middle, "cg/st/3dガッタイダー_立ち_通常c.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 800, 800, null, true);

	Move("絵演合体", 0, @0, @-120, null, true);
	FadeDelete("上背景", 2000, true);

	CreateSE("SE01a","se戦闘_破壊_鎧01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetVolume("SE*", 1000, 600, null);

	CreateSE("SE02","se戦闘_動作_空急降下01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("絵演背景", 40000, 4000, 4000, null, false);
	Zoom("絵演合体", 40000, 0, 0, null, false);

	CreateColorEX("絵色黒", 18000, "#000000");

	WaitKey(1000);

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ボーディ】
<voice name="ボーディ" class="ボーディ" src="voice/mc01/021vs0450b07">
《叽——叽咿。》

{	Fade("絵色黒", 4000, 1000, null, false);}
//【ボーディ】
<voice name="ボーディ" class="ボーディ" src="voice/mc01/021vs0460b07">
《咯——咕咕咕！
　咯咿咿咿咿——》

//【ボーディ】
<voice name="ボーディ" class="ボーディ" src="voice/mc01/021vs0470b07">
《咕……咿……哈…………》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("絵色黒", 2000, 1000, Dxl2, false);

//◆ガッタイダー墜落。ぼーん
	CreateSE("SE01","se戦闘_動作_空急降下01");
	MusicStart("SE01",1600,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	Wait(1000);

	CreateSE("SE02","se戦闘_衝撃_鎧散華");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateSE("SE02a","se戦闘_破壊_鎧01");
	MusicStart("SE02a",0,1000,0,1000,null,false);

	Wait(1000);

	ClearWaitAll(3000, 2000);

//◆ゲームオーバー

..//ジャンプ指定
//次ファイル

}


