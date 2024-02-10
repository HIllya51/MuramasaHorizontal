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

scene ma02_014b.nss_MAIN
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
	#ev268_ヤクザと対峙する一条=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_014b_routeFlag==true){$ma02_014b_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_015.nss";

}

scene ma02_014b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_014.nss"

//●むしろ綾弥
	PrintBG("背景０", 30000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	CreateTextureEX("絵演", 4100, Center, Middle, "cg/ev/ev268_ヤクザと対峙する一条.jpg");

	FadeDelete("背景０", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　像我这样的男人，应该完全不适合大家闺秀般的
女性吧。
{	Fade("絵演", 2000, 850, null, true);}
　那样的话倒不如说，那个绫弥一条更适合吧？

　……总觉得，这是很失礼的评价。
　根本不能对她本人说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演", 1000, false);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/014b0010a04">
「唔。他那是正在想着别的女人的表情
哦，大小姐。」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/014b0020a03">
「算了。实在可恶。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条好感度＋１
//$Ichizyou_Flag = $Ichizyou_Flag++;
	$ma02_014b_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


..//ジャンプ指定
//次ファイル　"ma02_015.nss"


}


