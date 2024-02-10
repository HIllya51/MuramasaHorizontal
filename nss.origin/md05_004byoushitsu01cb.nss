
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01cb.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev128_病床の光_g01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$光自分_Flag = true;

	$PreGameName = $GameName;

	$GameName = "md05_004byoushitsu01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004byoushitsu01cb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004byoushitsu01c.nss"

	PrintBG("上背景", 30000);

	CreateTextureSP("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");


//●自分の事

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　没有回答。
　……仅有一次，少女像是要重新认识你一样，
眨了下眼。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$光自分_Flag = true;

..//ジャンプ指定
//次ファイル

}


