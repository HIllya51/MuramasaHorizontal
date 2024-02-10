

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004baa.nss_MAIN
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

	$GameName = "mb04_004z.nss";

}

scene mb04_004baa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004ba.nss"

//●峰打ちにする
//◆がつーん
//◆一閃
//◆ずばしゃー。
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("上背景");

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵演背景", 150, 100, "circle_01_00_1", true);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1500);
	SL_leftdownfade2(10);

	SetVolume("SE*", 100, 0, null);

	CreateSE("SE02","se戦闘_攻撃_刀衝突02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(200);
	FadeDelete("絵フラッシュ白", 100, true);

	CreateSE("SE02b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02b",0,1000,0,1250,null,false);
	SL_down(@0, @0,1500);
	SL_downfade2(10);

	CreateSE("SE02c","se人体_血_血しぶき01");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	SL_leftdamN(@0, @0,1000);
	SL_leftdamfadeN2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……承受了我刀背一击的龙骑兵，
却毫不在意地砍下了击杀养母的一刀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆共通結末へ

}

..//ジャンプ指定
//次ファイル　"mb04_004z.nss"