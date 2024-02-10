//<continuation number="90">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003a.nss_MAIN
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

scene mb01_003a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_003.nss"

//◆小分岐
//◆香奈枝が生存していた場合

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
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/003a0010a10">
「香奈枝进行得还顺利吗……？」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/003a0020a11">
「如此说来，那之后也完全没有和我联络，
着实可疑。
　虽也尝试过派密探潜入ＧＨＱ，但……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/003a0030a10">
「如何了？」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/003a0040a11">
「……行踪不明。似乎是追踪被认为失踪的
大鸟大尉去了。
　也就是说，同我方一样……对方也在怀疑
是否与我方有关连。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/003a0050a10">
「……也难怪。
　关乎八幡宫嘛。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/003a0060a10">
「可是，那么……
　到底怎么回事？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/003a0070a11">
「看现状……
　只能说大尉和护氏<RUBY text="········">连同八幡宫一起消失了</RUBY>。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/003a0080a10">
「无法想象吗？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/003a0090a11">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"mb01_004.nss"