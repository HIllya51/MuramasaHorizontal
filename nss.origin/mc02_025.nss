//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_025.nss_MAIN
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

	$GameName = "mc02_026.nss";

}

scene mc02_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_024.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 100, "BLACK");
	Delete("上背景");
	SoundPlay("@mbgm34", 0, 1000, true);

//◆飛行船離陸開始っぽいＳＥ
//ループは鬱陶しいかもしれない inc櫻井
	CreateSEEX("飛行船", "se乗物_飛行船_離陸開始_L");
	MusicStart("飛行船", 0, 500, 0, 600, null,true);

//◆黒画面
//◆このシーン、ボイス無し

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆ボイス無し
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250010a04">
『……船似乎已经离港了。』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250020a03">
『是啊。
　接下来就该决胜了……』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250030a03">
『作战大概只需二十分钟。
　估计八点左右就会结束。』


//◆ボイス無し
{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250040a04">
『是的。
　无论是胜，或是……败。』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250050a03">
『无论是胜是败。
　……虽然两个结果似乎都没有
太大的差别。』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250060a03">
『难得一争。
　既然要战，就要蠃。』


//◆ボイス無し
{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250070a04">
『执着，是吗。
　那位大人这样说。』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250080a03">
『没错。执着。
　琐碎、无趣、不切实际。』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250090a03">
『但……
　如果抛弃执着，国家这种东西
还有什么意义？』


//◆ボイス無し
{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250100a04">
『嗯……肯定没有吧。』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc2/0250110a03">
『就是这么回事啊。』


//◆ボイス無し
{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250120a04">
『不过，大小姐。』


//◆ボイス無し
{	SetFrequency("飛行船", 10000, 1000, null);
	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250130a03">
『什么事？』


//◆ボイス無し
{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250140a04">
『除了抱着氧气瓶，潜入充满氦气的气囊以外，
就没有其他方法了吗。
　只能在对方的背上互相写字来沟通，
让我觉得相当不便啊。』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250150a03">
『贴在外壁上的方法会比较好吗？』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("飛行船*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　
　　　　　　　　　上午七点四十五分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	WaitPlay("飛行船*", null);

	ClearFadeAll(0, true);
}

..//ジャンプ指定
//次ファイル　"mc02_026.nss"