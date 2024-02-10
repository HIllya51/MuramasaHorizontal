
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004yashiki01b.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

//	$md05_２週目 = true;
//	$md05_３週目 = true;
	//▼ルートフラグ、選択肢、次のGameName
	if($md05_３週目 == true){
		call_scene @->md05_004yashiki01b_03.nss;
	}else if($md05_２週目 == true){
		call_scene @->md05_004yashiki01b_02.nss;
	}else{
		call_scene @->md05_004yashiki01b_01.nss;
	}

	$PreGameName = $GameName;
	$GameName = "md05_004yashiki01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}


scene md05_004yashiki01b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_004yashiki01.nss"

//●話す
//◆フラグ分岐

}


//――――――――――――――――――――――――――――――
.//◆第三段階
scene md05_004yashiki01b_03.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);

	StL(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	FadeStL(0,true);

	Delete("上背景");


	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004ya0030b52">
「又是你吗？
　这次是什么事？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}


//――――――――――――――――――――――――――――――
.//◆第二段階
scene md05_004yashiki01b_02.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);

	StL(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	FadeStL(0,true);

	Delete("上背景");

	SetFwC("cg/fw/fw本家_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004ya0020b52">
「不要在我面前露出一副白痴样！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}


//――――――――――――――――――――――――――――――
.//◆第一段階
scene md05_004yashiki01b_01.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	FadeStL(0,true);

	Delete("上背景");



	SetFwC("cg/fw/fw本家_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004ya0010b52">
「你在发什么呆！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

..//ジャンプ指定
//次ファイル



}


