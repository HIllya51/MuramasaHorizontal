
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004hazure01ab.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg050_湊斗家門前_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_004hazure01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004hazure01ab.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004hazure01a.nss"

	PrintBG("上背景", 30000);

	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(0,true);

	Delete("上背景");

//●女性



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一位女性，以平稳的目光注视着你。
  年纪大概比你要大，不过并没有失去朝气。给人的印
象有点不可思议。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

..//ジャンプ指定
//次ファイル

}


