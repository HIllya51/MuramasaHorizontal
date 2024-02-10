//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_004.nss_MAIN
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
	#bg009_鎌倉住宅街b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_003_1.nss";

}

scene mc01_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_003.nss"

//◆香奈枝サイド
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100, "bg009_鎌倉住宅街b_01.jpg");
	FadeBG(0, true);
	CreateEffect("絵効果雨", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	CreateSE("雨", "se自然_水_雨音02_L");
	MusicStart("雨", 0, 1000, 0, 1000, null,true);

	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0040010a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　大鸟香奈枝低头看着那个男人。
　看着那个跪在水洼中，不停嘶喊着的男人。

　冰冷地————
　
　不。

　温暖地。
　温柔地。
　宛若要将他包裹住一般，热切地。

　……大鸟香奈枝微笑着，注视着男人的身影。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雨音のＳＥをしばらく流し
//◆フェードアウト

	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);

	Wait(1000);

	SetVolume("雨", 2000, 0, null);

//◆以降は"mb01_003_1.nss"の
//◆「〝元帥、薨去_」から
//◆「〝また、この発表を受けた進駐軍総司令部では――_」までを
//◆経由してから下記のファイルに飛びます


	ClearWaitAll(3000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_003_1.nss"