
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01aa.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev128_病床の光_g01=true;
	#bg086_病室_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_004byoushitsu01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004byoushitsu01aa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004byoushitsu01a.nss"

//●部屋の中

	PrintBG("上背景", 30000);


	CreateTextureEX("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("絵hikaru", 0, 1000, null, true);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);
	
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	Fade("絵hikaru", 500, 0, null, true);

//	FadeDelete("hikaru",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　没有生气的房间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵hikaru", 500, 1000, null, true);


..//ジャンプ指定
//次ファイル

}


