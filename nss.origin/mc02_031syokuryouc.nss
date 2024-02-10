
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031syokuryouc.nss_MAIN
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
	$ガスボンベ_Flag = true;

}

scene mc02_031syokuryouc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031syokuryou.nss"


//●ガスボンベ

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg081_飛行船船室Ba_01b.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我发现了便携式液化气瓶，把它捡了起来。
　……瓶体相当破旧。在带着它行走的途中气体发生
泄漏，等我发现的时候已经出现中毒症状——希望不
会这样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$ガスボンベ_Flag = true;

}

..//ジャンプ指定
//次ファイル　"mc02_031syokuryouz.nss"