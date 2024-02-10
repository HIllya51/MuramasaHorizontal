//<continuation number="340">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_020vs.nss_MAIN
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

//◆交戦続行あり　"mc03_020vsa.nss"
//◆交戦続行なし　"mc03_020vsb.nss"

	if($mc03_018vs_BSFlag == "交戦"){$GameName = "mc03_020vsa.nss";}
	else if($mc03_018vs_BSFlag == "離脱"){$GameName = "mc03_020vsb.nss";}

}

scene mc03_020vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_019vsa.nss"
//前ファイル　"mc03_019vsd.nss"

//あきゅん「デバッグ：演出確認用フラグ」
//	$mc03_018vs_BSFlag = "交戦";
//	$mc03_018vs_BSFlag = "離脱";

//●第２Ｒ
//◆交差
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateTextureSP("絵背景", 100, InRight, -730, "cg/bg/bg204_横旋回背景c_01.jpg");
	CreateTextureSP("絵演村正", 1010, 420, 120, "cg/st/3d村正標準_騎航_陰義b.png");
	Shake("絵演村正", 60000, 2, 1, 0, 0, 1000, null, false);
	Zoom("絵演村正", 0, 2000, 2000, null, true);

	Move("絵背景", 60000, 0, @0, DxlAuto, false);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵演村正", 800, 1000, 1000, null, false);
	BezierMove("絵演村正", 1000, (420,120){130,10}{0,-140}(143,-235), Dxl1, false);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一回合交战之后，我和敌骑擦身而过，疾驰远离。
　
　确保了高度和速度之后，再次和对方太刀较量，这是
武者之战的礼节。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

//◆フラグ分岐
//◆交戦続行ｏｒ戦域離脱

..//ジャンプ指定
//◆$２Ｒ総力_Flag、$２Ｒ加減_Flag、$２Ｒ受け_Flag、$２Ｒ避け_Flag
//◆上記いずれかを所持している場合　"mc03_020vsa.nss"
//◆$２Ｒ総力_Flagもしくは$２Ｒ加減_Flagがある場合　"mc03_020vsb.nss"


}



