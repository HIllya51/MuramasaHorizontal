
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu02ca.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg086_病室_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_004gameover.nss";

}

scene md05_004byoushitsu02ca.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_004byoushitsu02c.nss"


	PrintBG("上背景", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");


//●守る

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　没错，保护她。

　从什么人那里，保护这名少女。
　永远地。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆白銀光
//◆→●失敗

	CreateColorEXadd("フラッシュ白", 3000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);

..//ジャンプ指定
//次ファイル　"md05_004gameover.nss"

}


