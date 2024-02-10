//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_036.nss_MAIN
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
	#ev254_虚空に佇む銀星号_c=true;
	#ev254_虚空に佇む銀星号_d=true;
	#ev940_最後の天座失墜小彗星_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_037vs.nss";

}

scene md05_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_035.nss"


//◆宇宙
//◆辰気収斂

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	CreateTextureSP("gin01", 2000, @0, @0, "cg/ev/ev254_虚空に佇む銀星号_c.jpg");

	//徒歩：前のファイルからの繋ぎの関係でBGM変更
	SoundPlay("@mbgm14", 0, 1000, true);

	Delete("上背景");
	DrawDelete("黒", 500, 100, "slide_04_00_1", true);

	Wait(500);

	SetFwC("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/0360010a14">
《来了吗，景明？》

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0360020a14">
《要将我视作敌人，进而除掉我吗？》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0360030a14">
《那务必切记。
　我们的誓约是善恶相抵——》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0360040a14">
《杀了我的话，
　你也注定会杀了那个蜘蛛。》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0360050a14">
《如果这样也不以为然，那就放马过来吧!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆エネルギー最高

	CreateSEEX("SE01","se戦闘_攻撃_エネルギー鬩ぎ合い01_L");
	CreateSE("SE02","se特殊_鎧_エネルギー充電01");

	CreateTextureEX("gin04", 2100, @0, @0, "cg/ev/ev254_虚空に佇む銀星号_d.jpg");

	MusicStart("SE01",0,1000,0,1000,null,true);
	MusicStart("SE02",0,1000,0,1000,null,false);

	EffectZoomadd(10000, 2000, 500, "cg/ev/ev254_虚空に佇む銀星号_d.jpg", false);

	Fade("gin04", 1000, 1000, null, true);


	Wait(1000);

	SetVolume("SE*", 3000, 0, Axl2);



//◆攻撃態勢

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md05/0360060a14">
《天座坠落————小彗星!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆最終レイディバグ·開始
	SetVolume("@mbgm*", 3000, 0, NULL);

//他CGで動作確認済み inc櫻井
//ただし、構図によっては変更あり

	CreateTextureEX("ラスト銀星号下敷き", 2200, Center, Middle, "cg/ev/ev940_最後の天座失墜小彗星_a.jpg");
	CreateTextureEX("ラスト銀星号", 2200, Center, Middle, "cg/ev/ev940_最後の天座失墜小彗星_a.jpg");
	Zoom("ラスト銀星号*", 0, 2000, 2000, null, true);
	SetBlur("ラスト銀星号*", true, 3, 500, 50, false);

	CreateColorEXadd("絵色100", 15000, "WHITE");

$ループムーブナット名 = "@ラスト銀星号";
$ループムーブタイム = 5000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);

	Wait(100);
	CreateSE("SE03","se戦闘_破壊_爆発06");
	CreateSE("SE04","se戦闘_動作_空上昇01");

	MusicStart("SE03",0,1000,0,1000,null,false);

	Zoom("gin04", 500, 2000, 2000, Axl1, false);
	Wait(200);
	Fade("ラスト銀星号", 300, 500, null, false);
	Fade("ラスト銀星号下敷き", 300, 1000, null, false);
	Zoom("ラスト銀星号", 600, 1100, 1100, Dxl1, false);
	Zoom("ラスト銀星号下敷き", 600, 1000, 1000, Dxl1, true);
//	Move("ラスト銀星号", 600, @400, @-200, null, true);


	Wait(2000);

	MusicStart("SE04",0,1000,0,1000,null,false);

	Zoom("ラスト銀星号", 2000, 2500, 2500, Axl2, false);
	Fade("絵色100", 2000, 1000, null, true);

	SetVolume("SE*", 5000, 0, null);

	Wait(2000);
	Delete("ラスト銀星号*");
	Delete("gin*");

	CreateColorEX("絵色200", 25000, "BLACK");
	Fade("絵色200", 3000, 1000, null, true);



//すぐ続くのでClear系はしてません inc櫻井

}

..//ジャンプ指定
//次ファイル　"md05_037vs.nss"