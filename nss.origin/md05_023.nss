//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_023.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_024vs.nss";

}

scene md05_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md05_022.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("下敷き", 50, "BLACK");


	FadeDelete("上背景",1000,true);

//◆ＳＥ：パソコンのリセット音

	OnSE("se日常_機械_PCリセット音", 1000);

	CreateTextureEX("無我", 15000, @0, @0, "cg/ef/ef036_無我の境地.jpg");

	Fade("無我", 1000, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　自我重生。

　认识自身固有名字。<k>
　
《三世继承千子右卫门尉村正。》

　结束。

　确认自身内容。<k>
　
《拥有战斗能力一项。》

　确认。

　确认自身的内容。<k>
　
《拥有存在目的一项。》

　确认。<k>
　
《敕命拜受／六合四海守护
　朝敌二世右卫门尉村正讨伐，为天下太平之事。》

　了解。

　确认自身内容。<k>
　
《仅以上二项。》

　结束。

　总结自身存在，认知。<k>
　
《朝敌追讨执行用战斗能力。》
《六合尘清四海波静维持防御力。》

　结束。

　确认自身状况。<k>
　
《朝敌一骑，在交战圈内行动中。》

　确认。

　根据状况确认结束待机状态。<k>
　
《朝敌追讨执行用战斗能力／三世千子右卫门尉村正
认可其符合敕命，开始战斗。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 16500, "WHITE");
	CreateColorEX("絵色200", 16500, "WHITE");
	CreateColorEX("絵色300", 16400, "BLACK");
	Zoom("絵色100", 0, 1000, 5, null, true);
	Zoom("絵色200", 0, 6, 1000, null, true);

	OnSE("se特殊_鎧_電子音02",1000);

	Fade("絵色300", 0, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Zoom("絵色100", 50, 2, 500, Dxl1, true);
	Zoom("絵色100", 100, 1000, 0, Dxl1, true);

	Wait(500);

}

..//ジャンプ指定
//次ファイル　"md05_024vs.nss"