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

scene md05_018.nss_MAIN
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
	#ev246_魔神長坂崩壊_b=true;
	#ev246_魔神長坂崩壊_c=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_019vs.nss";

}

scene md05_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_017vs.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 18000, "#000000");
	CreateEffect("絵効果", 4110, 0, 0, 1024, 576, "KitanoBlue");
	SetAlias("絵効果","絵効果");
	CreateTextureSP("絵ＥＶ２", 4100, Center, Middle, "cg/ev/ev246_魔神長坂崩壊_b.jpg");
	FadeDelete("上背景", 2000, true);

	Wait(500);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/0180010a14">
《真是场好决斗。
　托你们的福，我<RUBY text="··">醒得</RUBY>非常舒服。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DrawDelete("絵色黒", 300, 1000, "circle_01_00_1", true);

//◆ウェイト
	PrintBG("上背景", 19000);
	CreateTextureSP("絵ＥＶ２", 4100, Center, Middle, "cg/ev/ev246_魔神長坂崩壊_b.jpg");
	FadeDelete("上背景", 800, false);

	WaitKey(800);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0180020a00">
「——————————————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……听到了。

　刚刚，
　确实，
　听到了声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm01", 0, 1000, true);


	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md05/0180030a14">
《但别那么不干不脆的。
　难得的勇武之名，不要被自己玷污了。》

//【光】
<voice name="光" class="光" src="voice/md05/0180040a14">
《花中樱花最上，人中武士最优！
　直至凋谢都要繁华绽放!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ビキビキビキ。ひび割れ音
	OnSE("se特殊_鎧_アベンジ_ひび割れ", 1000);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	Wait(10);
	FadeDelete("絵色白", 100, true);

	Wait(500);

	SetFwC("cg/fw/fw長坂魔神_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/0180050b45">
《——什么——？》

{	FwC("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/0180060b45">
《啊，呃，呀啊啊啊啊啊啊啊啊?!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ビキビキ。
	OnSE("se特殊_鎧_ひび割れ02", 1000);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色白", 1000, true);

	Wait(500);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md05/0180070a14">
《生死抉择，
　应是赋予自我的课题，
　扪心自问————》

//【光】
<voice name="光" class="光" src="voice/md05/0180080a14">
《故于嘲笑的欢喜漩涡中
拉开喜剧之幕吧!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//―――――――――――――――――――――――――――――

//◆ずどーん。富士山粉砕
	OnSE("se戦闘_破壊_大爆発01", 1000);

	CreateColorEX("絵色フラッシュ", 18500, "WHITE");
	CreateTextureSPover("絵演上", 3100, Center, Middle, "cg/ev/ev246_魔神長坂崩壊_c.jpg");
	CreateTextureSP("絵演", 1000, Center, Middle, "cg/ev/ev246_魔神長坂崩壊_c.jpg");
	SetVertex("絵演上", 580, 410);
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵ＥＶ*");

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);

	Wait(400);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	SetVertex("絵背景100", 512, 576);

	Zoom("絵背景100", 0, 3000, 1000, null, true);
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 2, 300, 100, false);
	Fade("絵背景100", 0, 1000, null, true);

//	Wait(1000);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Shake("絵背景100", 3000, 10, 0, 10, 0, 1000, null, false);
	Zoom("絵背景100", 3000, 1100, 15000, Dxl3, false);
	Move("絵背景100", 3000, @0, @7500, Axl2, false);
	FadeDelete("絵演上", 1000, true);

	Wait(800);
	Fade("絵色フラッシュ", 1000, 1000, null, true);

	Wait(1000);

//	FadeDelete("絵演上", 1000, true);

//あきゅん「演出：ここで銀星号の初登場演出を天丼したいがしかし」
//おがみ：演出調整済み

	CreatePlainSP("絵背景200", 20000);

	Delete("絵背景100");
	Delete("絵演");
	DeleteStL(0,true);
	Delete("絵色フラッシュ");

	CreateColorSP("絵色100", 1000, "Black");
	CreateColorEXadd("絵色200", 10000, "White");

	CreateTextureSP("銀星", 5000, -100, -472, "cg/ev/resize/ev152_見下ろす銀星号_aｌ.jpg");
	Request("銀星", Smoothing);
	CreateTextureEX("銀星２", 6000, 0, -200, "cg/ev/resize/ev247_向き合う村正と銀星号l.jpg");
	Request("銀星２", Smoothing);

	Fade("絵背景200", 3000, 0, null, true);

	Wait(500);


	Move("銀星", 6000, @0, @200, null, false);


	Wait(3000);



	Fade("銀星２", 1000, 1000, null, false);
	Move("銀星２", 5000, @0, 0, AxlDxl, true);

	Wait(500);

	Delete("銀星");
	Delete("絵色100");

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0180090a00">
「光!!」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0180100a14">
「景明，有答案了吗?!
　终于来到世界尽头——」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0180110a14">
「小丑的诡辩和恶魔的假面，
正踩着你的影子!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md05_019vs.nss"