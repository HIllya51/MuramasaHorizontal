
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004saidenn01aa.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg054_湊斗家祭殿a_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_004saidenn01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004saidenn01aa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_004saidenn01a.nss"


	PrintBG("上背景", 30000);

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");

//●祭殿の中

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　这是个清净的空间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル

}


