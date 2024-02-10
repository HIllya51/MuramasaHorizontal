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

scene ma02_014c.nss_MAIN
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
	if($ma02_014c_routeFlag==true){$ma02_014c_routeFlag=false;}
	else{$Muramasa_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_015.nss";

}

scene ma02_014c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_014.nss"

//●俺には村正
//◆一条·香奈枝クリア後限定

	PrintBG("背景０", 30000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　……能和我相配的也只有村正吧。

　冰冷的钢。
　血色的铁。
　于地上爬行的昆虫外形。
　既不温暖也不柔软，单纯的刀刃。

　那样——才与我身份相符。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/014c0010a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正好感度＋２？
//$Muramasa_Flag = $Muramasa_Flag+2;
	$ma02_014c_routeFlag = true;
	$Muramasa_Flag++;

	judgment_of_count();

}

..//ジャンプ指定
//次ファイル　"ma02_015.nss"
