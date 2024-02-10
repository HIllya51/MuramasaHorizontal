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

scene mb01_007b.nss_MAIN
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
	#bg058_曇空c_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_008.nss";

}

scene mb01_007b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mb01_007.nss"

//◆小分岐
//◆香奈枝を殺しているなら

//おがみ：雨エフェクト必要ないようですのでカット
/*
	if($AmeHure == true){
	Delete("@絵背景*");
	Delete("@Fw*");
	}else{
	PrintBG("上背景", 30000);
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	$AmeHure = true;
	CreateEffect("絵効果雨落下風", 5500, 256, 0, 512, 288, "Rain");
	SetAlias("絵効果雨落下風", "絵効果雨落下風");
	Request("絵効果雨落下風", Lock);
	Rotate("絵効果雨落下風", 0, @-60, @0, @0, null,true);
	Zoom("絵効果雨落下風", 0, 3000, 3500, null, true);
	Fade("絵効果雨落下風", 0, 500, null, true);
	}
*/

	CreateTextureSP("絵新背景", 5000, Center, Middle, "cg/bg/bg058_曇空c_01.jpg");
	Delete("上背景");
	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/007b0010a00">
「……应该没忘记ＧＨＱ的大鸟大尉吧。
　她已经不在了。」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/007b0020a00">
「因为已经被我杀掉了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"mb01_008.nss"