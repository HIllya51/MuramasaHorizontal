
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoroc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;


	//▼ルートフラグ、選択肢、次のGameName
	$擂粉木_Flag = true;

	$PreGameName = $GameName;

	$GameName = "mc02_031daidokoroz.nss";

}

scene mc02_031daidokoroc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031daidokoro.nss"

//●擂粉木
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我把研磨棒拿在手里——西洋是称之为彩色蜡笔吗。
　恐怕是用来制作调味料什么的工具吧，那么。
这个会不会有什么用处呢？

　姑且先拿着。
　要是碍事的话扔了就行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆擂粉木入手
//◆フラグ調整
//◆$擂粉木_Flag = true;

//◆→●移動

..//ジャンプ指定
//次ファイル　"mc02_031daidokoroz.nss"

}

