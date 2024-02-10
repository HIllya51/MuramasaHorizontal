//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_014.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_015vs.nss";

}

scene mc03_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_013.nss"


//◆付近。林？

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg022_山林a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm35", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１".1500.true);

//◆雪車町
	StL(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140010a12">
「…………」

//◆カチッ。スイッチ入れる
//◆ザー。無線ノイズ。

{	OnSE("se日常_機械_無線通信03", 1000);
	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140020a12">
「柿泽？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140030a12">
「嗯，我是雪车町……」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140040a12">
「对。我这边也看到了。
　很不错，噗通一下掉下去……
　嘿，嘿。辛苦了。」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140050a12">
「嗯，这样对<RUBY text="赞助者">ＧＨＱ</RUBY>的人情也都还了吧……」



//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140060a12">
「……结束？
　不，不，怎么会呢。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140070a12">
「这可还没完呢哦……
　嘿，嘿嘿嘿嘿……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140080a12">
「……接下来，才是<RUBY text="···">我们的</RUBY>正餐。
　小心些。」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140090a12">
「——话刚说完。
　咯，咯。咯咯咯。混蛋。」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140100a12">
「<RUBY text="···">来了哦</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"mc03_015vs.nss"