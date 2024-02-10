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

scene ma02_003a.nss_MAIN
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

//フラグ追加箇所
//香奈枝フラグ

	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_003_routeFlag == true){$ma02_003_routeFlag = false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;
	$GameName = "ma02_004.nss";


}

scene ma02_003a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_003.nss"

//●信用できる

	PrintBG("背景０", 30000);

	OnBG(100,"bg021_村長応接間_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);
	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……感觉告诉我，可以信任。

　若按理性分析，不得不说非常可疑。这二人身份太过不
明。
　但在考虑这些之前的印象，实不相瞒，也不是没萌生出
一些隐约的好感。

　让感性优先于理性是危险的，这一点我很清楚。
　然而即便是用理性导出的结论，
我也不禁怀疑眼下罗列谎言的意义。
因为后患已能预测。

　如今，还不如实话实说。

　……总之。

　<RUBY text="·········">对她抱有好感很危险</RUBY>。
　还是注意点好……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝好感度＋１

//嶋：フラグ
	$ma02_003_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

//◆分岐終了



}

..//ジャンプ指定
//次ファイル　"ma02_004.nss"



