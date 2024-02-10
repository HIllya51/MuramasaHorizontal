
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004yashiki01cb.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg051_湊斗家居間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$本家自分_Flag = true;

	$PreGameName = $GameName;
	$GameName = "md05_004yashiki01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004yashiki01cb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004yashiki01c.nss"


	PrintBG("上背景", 30000);

	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	FadeStL(0,true);

	Delete("上背景");



//●自分の事

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004ya0050b52">
「你是明尧那家伙从某处捡回
送到凑斗家的孤儿。
　还是勿忘养育之恩，竭尽所能为吾之一族
效力为好。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$本家自分_Flag = true;

..//ジャンプ指定
//次ファイル

}


