//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_012b.nss_MAIN
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
	#bg088_チェイテ城のホール_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_013.nss";

}

scene md05_012b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_012.nss"


//●逃げる
//◆逃走

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm34", 0, 1000, true);

	OnBG(100, "bg088_チェイテ城のホール_01b.jpg");
	FadeBG(0, true);

	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　返身奔跑。

　恐惧。
　不是被这世界抓住的恐惧。

　是对<RUBY text="··">那个</RUBY>的恐惧。

　……仿若含笑的气息从背后传来。

　有什么——在逼近。
　无阻碍地，无阻碍地……细弱的某物，为了抓住我
而追来。

　不能回头。
　回头便会被抓。

　要逃离。

　逃离未曾谋面之物。

　但是，要逃到何时才好……?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間ぶれ

	CreatePlainEX("絵板写", 100);

	OnSE("se特殊_その他_空間歪曲",1000);

	DrawEffect("絵板写", 36000, "MiddleWave", 30, 30, null);

	Fade("絵板写", 500, 900, null, false);
	Zoom("絵板写", 1000, 1300, 1300, AxlDxl, false);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/012b0010a01">
《主君！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/012b0020a00">
「来了吗！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　时间移动之力————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	OnSE("se戦闘_動作_鉄壁吹っ飛ばす", 1000);

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	SetVolume("@mbgm*", 1000, 0, null);

	WaitKey(1500);
}

..//ジャンプ指定
//次ファイル　"md05_013.nss"