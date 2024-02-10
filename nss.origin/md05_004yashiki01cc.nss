
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004yashiki01cc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg051_湊斗家居間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($md05_２週目==true){$本家目的２_Flag = true;}
	else{$本家目的_Flag = true;}

	$PreGameName = $GameName;
	$GameName = "md05_004yashiki01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004yashiki01cc.nss
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



..//ジャンプ指定
//前ファイル　"md05_004yashiki01c.nss"


//●目的の事
//◆フラグ分岐

//――――――――――――――――――――――――――――――
.//◆第二段階

if($md05_２週目==true){

	SetFwC("cg/fw/fw本家_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004ya0070b52">
「守护光。
　你为此而生，为此而亡。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$本家目的２_Flag = true;

}else{

//――――――――――――――――――――――――――――――
.//◆第一段階

	SetFwC("cg/fw/fw本家_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004ya0060b52">
「你的职责就是守护凑斗家族。
　哪怕要付出你那无足轻重的生命！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$本家目的_Flag = true;

}//else_end

..//ジャンプ指定
//次ファイル

}


