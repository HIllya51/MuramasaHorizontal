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

scene ma02_003b.nss_MAIN
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
	#bg021_村長応接間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_004.nss";

}

scene ma02_003b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_003.nss"

//●わからない

	PrintGO("背景０", 30000);

	OnBG(100,"bg021_村長応接間_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);
	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……无话可说。
　现状是，判断材料完全不足。

　既然枪口瞄准了六波罗，那就不是参与支持他们
暴政的人。
　尽管这么考虑，她那ＧＨＱ的头衔，就算未招来敌意，
也足够唤起我的警戒心了。

　不过信任之类的暂且不提，考虑到善后事宜，
眼下说谎估计只会招来麻烦。
　老实地说出来恐怕还好些。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆分岐終了


}

..//ジャンプ指定
//次ファイル　"ma02_004.nss"

