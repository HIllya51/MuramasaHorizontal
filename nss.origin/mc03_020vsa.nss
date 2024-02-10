
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_020vsa.nss_MAIN
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

//あきゅん「デバッグ：演出確認用」
	//$GameName = "mc03_020vsaa.nss";
	//$GameName = "mc03_020vsab.nss";
	//$GameName = "mc03_019vsb.nss";
	//$GameName = "mc03_019vsc.nss";
	//$GameName = "mc03_020vsac.nss";
	//$GameName = "mc03_020vsad.nss";

	if($mc03_017vs_Flag == "避け" && $mc03_018vs_R2Flag == "総力"){
//◆$２Ｒ総力_Flagがあり、かつ$１Ｒ避け_Flagがある場合
		$GameName = "mc03_020vsaa.nss";
	}else if($mc03_017vs_Flag == "総力" && $mc03_018vs_R2Flag == "総力"){
//◆$２Ｒ総力_Flagがあり、かつ$１Ｒ総力_Flagがある場合
		$GameName = "mc03_020vsab.nss";
	}else if($mc03_018vs_R2Flag == "受け"){
//◆$２Ｒ受け_Flagがある場合
		$GameName = "mc03_019vsc.nss";
	}else if($mc03_018vs_R2Flag == "加減"){
//◆$２Ｒ加減_Flagがある場合
		$GameName = "mc03_019vsb.nss";
	}else if($mc03_017vs_Flag == "総力" && $mc03_018vs_R2Flag == "避け"){
//◆$２Ｒ避け_Flagがあり、かつ$１Ｒ総力_Flagがある場合
		$GameName = "mc03_020vsac.nss";
	}else if($mc03_017vs_Flag == "避け" && $mc03_018vs_R2Flag == "避け"){
//◆$２Ｒ避け_Flagがあり、かつ$１Ｒ避け_Flagがある場合
		$GameName = "mc03_020vsad.nss";

	}

}

scene mc03_020vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_020vs.nss"

//●交戦続行
//◆旋回
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("絵演空", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");

	CreateTextureSPadd("絵演村正光", 1011, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	Fade("絵演村正光", 0, 600, null, true);
	DrawTransition("絵演村正光", 0, 0, 100, 1000, null, "cg/data/slide_01_00_0.png", true);
	Zoom("絵演村正光", 0, 1050, 1050, null, true);

	Move("絵演村正*", 0, @-400, @60, null, true);
	Shake("絵演村正*", 216000, 1, 2, 0, 0, 1000, null, false);

	Move("絵演空", 75000, @0, @576, null, false);
	Move("絵演村正*", 2000, @20, @-60, DxlAuto, false);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　根据礼节，我将敌机纳入了<RUBY text="Monitor">视野</RUBY>。
　当然了……这个家伙让大鸟大尉现在生死不明，我怎
么可能转身离开！

　把那个让人极其不快的家伙击落之前，我不可能收起
太刀。
　我带着熊熊燃烧的怒火一同进击。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆近接
	SetVolume("SEL*", 100, 0, null);
	CreateSE("SE02","se戦闘_動作_空突進01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 19000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　带着越战越强的<RUBY text="Pressure">威压</RUBY>，<RUBY text="石像鬼">有翼鬼兵</RUBY>向我袭来。
　我——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ分岐

..//ジャンプ指定
//●総力攻撃２（※第１Ｒが「避け防御」の場合）
//◆$２Ｒ総力_Flagがあり、かつ$１Ｒ避け_Flagがある場合
//次ファイル　"mc03_020vsaa.nss"

//●総力攻撃２（※第１Ｒが「総力攻撃」の場合）
//◆$２Ｒ総力_Flagがあり、かつ$１Ｒ総力_Flagがある場合
//次ファイル　"mc03_020vsab.nss"


//●加減攻撃２
//◆→●加減攻撃１
//◆$２Ｒ加減_Flagがある場合
//次ファイル　"mc03_019vsb.nss"

//●受け防御２
//◆→●受け防御１
//◆$２Ｒ受け_Flagがある場合
//次ファイル　"mc03_019vsc.nss"


//●避け防御２（※第１Ｒが「総力攻撃」の場合）
//◆$２Ｒ避け_Flagがあり、かつ$１Ｒ総力_Flagがある場合
//次ファイル　"mc03_020vsac.nss"


//◆$２Ｒ避け_Flagがあり、かつ$１Ｒ避け_Flagがある場合
//次ファイル　"mc03_020vsad.nss"

}


