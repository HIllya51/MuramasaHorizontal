
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031innsyokua.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$擂粉木_Flag = false;

	$PreGameName = $GameName;
	$GameName = "mc02_031innsyokuz.nss";

}

scene mc02_031innsyokua.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031innsyoku.nss"


//●擂粉木
//◆ぱかーん。殴られた。
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	Delete("上背景");


	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se擬音_コミカル_殴り02",1000);
	WaitKey(300);
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("絵背景120", 120, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	Shake("絵背景120", 300, 15, 15, 0, 0, 1000, Dxl3, false);
	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……似乎不对。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆擂粉木失う
//◆フラグ調整
//◆$擂粉木_Flag = false;

//◆→●何も渡さない

..//ジャンプ指定
//次ファイル　"mc02_031innsyokuz.nss"

}



