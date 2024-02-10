
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004hazure01ca.nss_MAIN
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

scene md05_004hazure01ca.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md05_004hazure01c.nss"


//●女性の事


	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【統】
<voice name="統" class="統" src="voice/md05/004ha0040b46">
「我是你的母亲哦。
　要是你敢说忘了我会哭的哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

..//ジャンプ指定
//次ファイル

}


