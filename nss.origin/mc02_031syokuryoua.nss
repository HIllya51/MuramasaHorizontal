
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031syokuryoua.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_031syokuryouz.nss";
	$洋梨_Flag = true;

}

scene mc02_031syokuryoua.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031syokuryou.nss"


//●洋梨

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg081_飛行船船室Ba_01b.jpg");

	Delete("上背景");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我拿起一个洋梨。
　它已经熟透了，看起来很美味。只可惜，现在没时间
品尝。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$洋梨_Flag = true;

}

..//ジャンプ指定
//次ファイル　"mc02_031syokuryouz.nss"