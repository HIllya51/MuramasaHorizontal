//<continuation number="70">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003b.nss_MAIN
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
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_004.nss";

}

scene mb01_003b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_003.nss"

//◆小分岐
//◆香奈枝が死亡していた場合

	PrintBG("上背景", 30000);
	OnBG(100,"bg032_八幡宮奥舞殿内b_01.jpg");
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeBG(0,true);
	FadeStR(0,true);
	Delete("上背景");
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/003b0010a10">
「难道是景明君……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/003b0020a11">
「不。绝对不是。
　已得到确认。奉刀参拜当天，
景明未迈出我的官邸半步。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/003b0030a10">
「……那么。
　这是怎么回事？」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/003b0040a11">
「……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/003b0050a11">
「看现状……
　除足利护氏<RUBY text="··········">已连同八幡宫一起消失</RUBY>的事实以外，一无所知。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/003b0060a10">
「什么都无法断言吗？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/003b0070a11">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

}

..//ジャンプ指定
//次ファイル　"mb01_004.nss"