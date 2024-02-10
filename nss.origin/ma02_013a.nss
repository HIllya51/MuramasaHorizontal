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

scene ma02_013a.nss_MAIN
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
	if($ma02_013a_routeFlag==true){$ma02_013a_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_014.nss";

}

scene ma02_013a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_013.nss"

//●「お任せします」

	PrintBG("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/013a0010a03">
「呀！」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/013a0020a04">
「好感度上升啦。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆香奈枝好感度＋１
//$Kanae_Flag = $Kanae_Flag++;
	$ma02_013a_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();


}

..//ジャンプ指定
//次ファイル　"ma02_014.nss"
