//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_013b.nss_MAIN
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
	#bg023_弥源太の家_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_014.nss";

}

scene ma02_013b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_013.nss"

//●「お断りします」

	PrintBG("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fwふき_衝撃.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/013b0010b05">
「好强!?」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/013b0020a03">
「呀嗯。
　景明大人真是个坏·心·眼～」


{	FwC("cg/fw/fwふき_衝撃.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/013b0030b05">
「竟然没反应!?
　这位也好强!!」

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}

..//ジャンプ指定
//次ファイル　"ma02_014.nss"
