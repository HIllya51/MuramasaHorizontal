
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsab.nss_MAIN
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

	$GameName = "mz00_000.nss";

}

scene mc04_017vsab.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_017vsa.nss"

	//$mc04_017vsa = 右;//デバッグ用

//●上／左／右
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景08EX", 6000, -1730, -750, "cg/ev/resize/ev186_村正ＶＳ銘伏_klm.jpg");

	Delete("上背景");


//◆選んだ方見て
	if($mc04_017vsa == 上){
	Move("@絵背景08EX", 2000, @0, @400, DxlAuto, true);
	}else if($mc04_017vsa == 左){
	Move("@絵背景08EX", 2000, @300, @0, DxlAuto, true);
	}else if($mc04_017vsa == 右){
	Move("@絵背景08EX", 2000, @-300, @0, DxlAuto, true);
	}

	SetVolume("@mbgm*", 1000, 0, null);

//◆ひゅん、ずしゃー。斬死。
	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	CreateColorSP("絵色黒", 6050, "#000000");
	SL_rightdown2(6100,@0, @0,1500);

	MusicStart("SE01",0,1000,0,1200,null,false);
	SL_rightdownfade2(10);

	Wait(500);

	SetVolume("@mbgm*", 300, 0, null);
	OnSE("se戦闘_攻撃_刀刺さる05", 1000);

	CreateColorSP("赤", 16000, "#990000");
	DrawTransition("赤", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("赤",2000,true);

//◆ゲームオーバー

}

..//ジャンプ指定
//次ファイル