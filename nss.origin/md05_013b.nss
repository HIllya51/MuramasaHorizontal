//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_013b.nss_MAIN
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
	#bg108_荒れ狂う海b_00=true;
	#bg108_荒れ狂う海a_00=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md05_013b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_013.nss"


//●船上に降りる
//◆降下。近付く

	PrintBG("上背景", 30000);
	OnBG(100, "bg108_荒れ狂う海b_00.jpg");
	FadeBG(0, true);
	CreateSE("暴風", "se自然_風_暴風");
	MusicStart("暴風", 0, 1000, 0, 1000, null,true);
	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0010a01">
《边上写有外国文字……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/013b0020a00">
「像是船名。」

//◆アンドレア·ゲイル
{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/013b0030a00">
「……ＡＮＤＲＥＡ……ＧＡＩＬ……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我念出这名字的瞬间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間ぶれ
	SetVolume("暴風", 500, 0, null);
	Wait(500);

	CreateTextureSP("下", 90, @0, @0, "cg/bg/bg108_荒れ狂う海a_00.jpg");


//	OnBG(90, "bg108_荒れ狂う海a_00.jpg");
//	FadeBG(0, true);

	CreatePlainEX("絵板写", 100);

	OnSE("se特殊_その他_空間歪曲",1000);

	Fade("絵板写", 200, 900, null, true);
	Zoom("絵板写", 1000, 1300, 1300, null, false);


//	DrawEffect("絵板写", 36000, "MiddleWave", 30, 30, null);

//◆戻り
	EffectZoom(17000, 1000, 0, "cg/bg/bg108_荒れ狂う海b_00.jpg", false);

	Delete("@OnBG*");
	FadeDelete("絵板写",1000,true);


	Wait(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0040a01">
《————诶?!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/013b0050a00">
「消失了?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　消失了。
　船已经，在海上消失无踪。

　一瞬间被海浪吞噬了吗？
　不，即使如此……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/013b0060a00">
「村正，知道发生了什么吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0070a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0080a01">
《刚才……
　在那里，发生了时间扭曲。》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/013b0090a00">
「……什么……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0100a01">
《那艘船……
　<RUBY text="····">代替我们</RUBY>，被带走了。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0110a01">
《所以，我们已经——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……………………

　不知作何感想。

　应该后悔自己的草率吗。
　应该担忧船和其中的船员命途多舛吗。

　无论如何。
　丢失了回到原世界线索的我，思索烦恼的时间
应有尽有……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒2", 15000, "BLACK");

	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);

//	Fade("黒2", 3000, 1000, null, true);

	ClearWaitAll(3000, 1500);

/*
//◆ゲームオーバー


	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev009_ゲームオーバー.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

//	WaitKey();

	ClearWaitAll(1500, 1500);
*/
}

..//ジャンプ指定
//次ファイル