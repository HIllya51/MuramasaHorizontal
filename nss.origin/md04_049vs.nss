//<continuation number="480">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_049vs.nss_MAIN
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
	#bg001_空a_02=true;
	#bg204_横旋回背景_02=true;
	#ev301_銀星号クラッシュ=true;
	#ev806_戦争絵シリーズその４_a=true;
	#ev806_戦争絵シリーズその４_b=true;
	#ev806_戦争絵シリーズその４_c=true;
	#ev901_銀星号天座失墜小彗星_a=true;
	#ev901_銀星号天座失墜小彗星_b=true;
	#ev901_銀星号天座失墜小彗星_c=true;
	#ev901_銀星号天座失墜小彗星_d=true;
	#ev228_白銀の軍団_a=true;
	#ev228_白銀の軍団_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_八剣姫=true;

	$PreGameName = $GameName;
	$GameName = "md04_050vs.nss";

}

scene md04_049vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_048vs.nss"


//◆上空

	PrintBG("上背景", 30000);
	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm08", 0, 1000, true);
	CreateTextureSP("絵演空立絵", 1200, @-800,@0, "cg/st/3d銀星号_立ち_戦闘b.png");
	SetBlur("絵演空立絵", true, 2, 500, 50, false);
	CreateColorEXadd("フラッシュ白", 2500, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("上背景");

	CloudZoomSet(1300);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,null,true);

	OnSE("se戦闘_動作_空突進07",1000);

	Fade("フラッシュ白",200,0,Axl3,false);
	Move("絵演空立絵", 1000, @450, @-300, Dxl1, true);


	SetFwC("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md04/049vs0010a14">
「吉野御流合战礼法——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号

	CreateTextureEX("ひだり", 1400, @0, @0, "cg/ef/ef002_汎用移動.jpg");
	Zoom("ひだり", 0, 2500, 2500, null, true);
	Fade("ひだり", 100, 1000, null, false);
	Zoom("ひだり", 150, 1000, 1000, DxlAuto, false);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演空立絵", 100, @-1450, @-200, Dxl1, false);
	FadeDelete("絵演空立絵", 300, false);


	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md04/049vs0020a14">
「剔抉！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一騎撃墜
	OnSE("se戦闘_攻撃_殴る05",1000);
	CreateColorEX("黒", 1500, "BLACK");
	Fade("黒",100,1000,null,false);


	CreateTextureSPadd("絵演", 10011, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	DrawTransition("絵演", 100, 0, 1000, 100, null, "cg/data/beam_04_00_0.png", true);
	FadeDelete("ひだり", 0, true);

	CreateTextureSP("絵演空立絵六", 1200, @-100,@-400, "cg/st/3d八八式竜騎兵_騎航_戦闘b.png");
	CreateTextureSP("絵演空立絵銀", 1200, @-400,@-200, "cg/st/3d銀星号_立ち_戦闘b.png");
	SetBlur("絵演空立絵銀", true, 2, 500, 50, false);

	Request("絵演空立絵六", Smoothing);
	Zoom("絵演空立絵六", 0, 800, 800, null, true);


	Shake("絵演空立絵六", 1000, 10, 20, 0, 0, 1000, Dxl1, false);
	Fade("黒",100,0,null,false);
//	DrawTransition("絵演", 200, 1000, 0, 100, null, "cg/data/beam_04_00_1.png", false);
	Move("絵演空立絵銀", 200, @-100, @-100, Dxl1, true);
	WaitKey(100);
	FadeDelete("絵演空立絵銀", 300, false);
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Move("絵演空立絵銀", 100, @-1550, @1500, Dxl1, true);


	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 19000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	FadeDelete("絵演空立絵六", 0, true);
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 30, false);

	Zoom("絵演上", 200, 1100, 1100, Dxl1, false);
	Shake("絵演", 200, 0, 10, 0, 0, 1000, Dxl3, true);

	FadeDelete("絵演*", 300, true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_04_00_1.png", true);


	CreateTextureSP("絵演空立絵六", 1200, @-100,@-400, "cg/st/3d八八式竜騎兵_騎航_戦闘b.png");

	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, true);
	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_04_00_0.png", true);

	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵演空立絵銀", 1200, @400,@-200, "cg/st/3d銀星号_立ち_戦闘b.png");
	Move("絵演空立絵銀", 300, @-600, @0, Dxl1, false);

	FadeDelete("絵演空立絵銀", 300, true);

	OnSE("se戦闘_攻撃_剣戟弾く02",1000);

	CreateTextureSPadd("きる", 10011, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	DrawTransition("きるきる", 100, 0, 1000, 100, null, "cg/data/slide_01_04_1.png", false);


	CreateTextureEX("絵演空立絵銀", 1200, @-400,@0, "cg/st/3d銀星号_立ち_戦闘.png");
	SetBlur("絵演空立絵銀", true, 2, 500, 50, false);


	Fade("絵演空立絵銀",100,1000,null,true);
//	FadeDelete("絵演空立絵銀", 100, false);
	OnSE("se戦闘_動作_空突進01", 1000);
//	Wait(180);
	CreateTextureEX("みぎ", 1400, @0, @0, "cg/ef/ef001_汎用移動.jpg");
	Zoom("みぎ", 0, 2500, 2500, null, true);
	Fade("みぎ", 100, 1000, null, false);
	Zoom("みぎ", 250, 1000, 1000, DxlAuto, false);
	Move("絵演空立絵銀", 100, @1450, @-200, Dxl1, false);
	CreateTextureSPadd("きるきる", 10011, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	DrawTransition("きるきる", 100, 0, 1000, 100, null, "cg/data/beam_03_00_0.png", false);
	FadeDelete("絵演空立絵銀", 200, false);


	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md04/049vs0030a14">
「花梳！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一騎撃墜
	Shake("絵演空立絵六", 1000, 10, 20, 0, 0, 1000, Dxl1, false);
	FadeDelete("みぎ", 300, true);

	OnSE("se戦闘_攻撃_殴る06",1000);

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);


	CreateTextureSPover("絵演上", 19000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	FadeDelete("きる*", 0, true);
	FadeDelete("絵演空立絵六", 0, true);
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 30, false);

	Zoom("絵演上", 300, 1100, 1100, Dxl1, false);
	Shake("絵演", 300, 0, 10, 0, 0, 1000, Dxl3, true);

	FadeDelete("絵演*", 300, true);

	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_04_00_0.png", true);

	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, true);

	CreateTextureEX("絵ＳＴＣ101", 1300, @200, @-300, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
	CreateTextureEX("絵ＳＴＣ102", 1400, @-500, @-300, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
	Request("絵ＳＴＣ10*", Smoothing);
	Rotate("絵ＳＴＣ101", 0, @0, @0, @50, null,true);


	Zoom("絵ＳＴＣ101", 0, 1000, 1000, null, false);
	Zoom("絵ＳＴＣ102", 0, 2000, 2000, null, false);
	Zoom("@OnBG*", 0, 2000, 2000, null, false);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_04_00_1.png", true);

	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md04/049vs0040a14">
「酸浆！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二騎撃墜


	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("絵ＳＴＣ100", 1500, Center, @0, "cg/st/3d銀星号_騎突_蹴り.png");
	Request("絵ＳＴＣ100", Smoothing);
	Zoom("絵ＳＴＣ100", 0, 100, 100, null, true);
	SetBlur("絵ＳＴＣ100", true, 2, 500, 50, false);

	Zoom("@OnBG*", 300, 1000, 1000, Axl2, false);
	Zoom("絵ＳＴＣ100", 250, 3000, 3000, Axl2, false);
	Zoom("絵ＳＴＣ101", 250, 300, 300, Axl2, false);
	Zoom("絵ＳＴＣ102", 250, 1000, 1000, Axl2, false);

	Fade("絵ＳＴＣ101", 150, 1000, null, false);
	Fade("絵ＳＴＣ102", 150, 1000, null, false);
	Fade("絵ＳＴＣ100", 150, 1000, null, true);
	FadeDelete("絵ＳＴＣ100",150,false);

	Shake("絵ＳＴＣ101", 1000, 10, 20, 0, 0, 1000, Dxl1, false);
	Shake("絵ＳＴＣ102", 1000, 10, 20, 0, 0, 1000, Dxl1, false);
	WaitKey(100);

	FadeDelete("みぎ", 300, true);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 19000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");

	FadeDelete("絵ＳＴＣ10*",0,false);

	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 30, false);

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, true);

	FadeDelete("絵演*", 500, true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_04_00_0.png", true);
	CreateTextureSP("絵演", 1200, @-7500, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	Zoom("絵演", 0, 4000, 800, Dxl1, false);
	CreateTextureSP("絵演空立絵", 1350, OutRight, Middle, "cg/st/3d銀星号_騎航_通常3.png");
	SetBlur("絵演空立絵", true, 2, 500, 50, false);
	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_04_00_1.png", true);

	CreateTextureEX("絵ＳＴＣ101", 1300, @-1000, @-300, "cg/st/3d八八式竜騎兵_騎航_戦闘b.png");
	CreateTextureEX("絵ＳＴＣ102", 1400, @-2000, @-300, "cg/st/3d八八式竜騎兵_騎航_戦闘a.png");
	CreateTextureEX("絵ＳＴＣ103", 1300, @-3200, @-300, "cg/st/3d八八式竜騎兵_騎航_戦闘b.png");
	CreateTextureEX("絵ＳＴＣ104", 1400, @-5000, @-300, "cg/st/3d八八式竜騎兵_騎航_戦闘a.png");

	Zoom("絵ＳＴＣ101", 0, 300, 300, null, false);
	Zoom("絵ＳＴＣ102", 0, 1000, 1000, null, false);
	Zoom("絵ＳＴＣ103", 0, 600, 600, null, false);
	Zoom("絵ＳＴＣ104", 0, 1000, 1000, null, true);

	Fade("絵ＳＴＣ10*", 0, 1000, null, true);

	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("絵演空立絵", 200, 100, @0, Dxl2, true);

	Move("絵演空立絵", 10000, 180, @0, null, false);

	SetFwC("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/md04/049vs0050a14">
「释掌！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//	CreateColorSP("絵黒幕", 16000, "#FFFFFF");
//	DrawTransition("絵黒幕", 150, 500, 100, 1000, null, "cg/data/slide_05_00_1.png", true);
	CreateSE("SE01","se戦闘_動作_空突進04");
	MusicStart("SE01",0,1000,0,1000,null,false);
//	WaitKey(100);
	CreateTextureSPadd("よこ", 1350, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	DrawTransition("よこ", 3000, 0, 1000, 1000, null, "cg/data/slide_01_04_1.png", false);
	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, false);
	Move("絵ＳＴＣ10*", 1500, @8500, @0, null, false);

	Move("絵演空立絵", 600, @-2300, @0, Axl1, false);
	Move("絵演", 1200, @8000, @0, Dxl1, true);

	CreateColorSPadd("絵白幕", 16000, "#FFFFFF");
	DrawTransition("絵白幕", 150, 0, 1000, 1000, null, "cg/data/slide_05_00_1.png", true);

//	DrawTransition("絵白幕", 150, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);

//◆四騎撃墜

	CreateTextureEX("絵EV100", 2001, Center, Middle, "cg/ev/ev301_銀星号クラッシュ.jpg");
	CreateTextureEX("絵EV200", 2000, Center, Middle, "cg/ev/ev301_銀星号クラッシュ.jpg");

	SetBlur("絵EV100", true, 3, 500, 100, false);
	Fade("絵EV100", 0, 1000, null, false);
	Fade("絵EV200", 0, 1000, null, true);

	FadeDelete("絵白幕", 250, false);

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Shake("絵EV100", 1000, 5, 6, 0, 0, 500, Dxl1, false);
	Zoom("絵EV100", 1000, 1600, 1600, null, false);
	FadeDelete("絵EV100", 1000, true);

	CreateTextureEX("絵ＥＶ", 15000, Center, Middle, "cg/ev/ev228_白銀の軍団_a.jpg");
	Fade("絵ＥＶ", 1500, 1000, null, true);

	//CreateTextureSP("絵演空立絵", 1200, @350,@0, "cg/st/3d銀星号_立ち_通常.png");
	Wait(150);

	Delete("絵ＳＴＣ10*");
	Delete("よこ");
	Delete("絵演");
	FadeDelete("絵EV200", 500, true);

	Wait(500);

	SetFwR("cg/fw/fw光_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md04/049vs0060a14">
「……很好！不愧为享誉盛名的六波罗众。
　每一位都是出色的武者！」

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md04/049vs0070a14">
「不过真是遗憾啊，
对我进行瞬杀是行不通的……
　无需畏怯，振奋起来！
　自信能做到的武士，站到我的面前来!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆幕府竜騎兵隊

/*
	CreateTextureEX("絵ＳＴＣ1001", 1200,  @-300, @-300, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ1002", 1100,  @-400, @-600, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ1003", 1000,  @100, @-600, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("絵ＳＴＣ1004", 1050,  @200, @-300, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	Zoom("絵ＳＴＣ1001", 0, 800, 800, null, false);
	Zoom("絵ＳＴＣ1002", 0, 500, 500, null, false);
	Zoom("絵ＳＴＣ1003", 0, 250, 250, null, false);
	Zoom("絵ＳＴＣ1004", 0, 300, 300, null, false);
	Request("絵ＳＴＣ100*", Smoothing);


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 100, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	Delete("絵演空立絵");
	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, false);

	Fade("絵ＳＴＣ100*", 0, 1000, null, true);
	DrawTransition("黒幕１", 100, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
*/

	CreateColorSP("黒幕１", 30000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵色100");
	Delete("絵演*");
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("カメラ１/やられ役*");
	Delete("絵ＥＶ");

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/やられ役01a", 500, @200, @-200, "cg/st/3d八八式竜騎兵_騎航_戦闘a.png");
	CreateTextureEX("カメラ１/やられ役02a", 350, @400, @-0, "cg/st/3d八八式竜騎兵_騎航_戦闘b.png");
	CreateTextureEX("カメラ１/やられ役03a", 200, @400, @-300, "cg/st/3d八八式竜騎兵_騎航_戦闘a.png");
	CreateTextureEX("カメラ１/やられ役04a", 100, @500, @-200, "cg/st/3d八八式竜騎兵_騎航_戦闘b.png");

	Fade("カメラ１/やられ役01a", 0, 1000, null, false);
	Fade("カメラ１/やられ役02a", 0, 1000, null, false);
	Fade("カメラ１/やられ役03a", 0, 1000, null, false);
	Fade("カメラ１/やられ役04a", 0, 1000, null, false);

	Zoom("カメラ１/やられ役01*", 0, 600, 600, null, false);
	Zoom("カメラ１/やられ役02*", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03*", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04*", 0, 250, 250, null, false);

	Move("カメラ１/やられ役01*", 0, 41, -218, null, true);
	Move("カメラ１/やられ役02*", 0, -268, -45, null, true);
	Move("カメラ１/やられ役03*", 0, -429, -206, null, true);
	Move("カメラ１/やられ役04*", 0, -257, -304, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進03", 1000);
	OnSE("se戦闘_動作_空突進06", 1000);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 0, 700, 0, 1000, null,true);


$ループムーブナット名 = "@カメラ１/やられ役01*";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@カメラ１/やられ役02*";
$ループムーブタイム２ = 20000;

$ループムーブナット名３ = "@カメラ１/やられ役03*";
$ループムーブタイム３ = 15000;

$ループムーブナット名４ = "@カメラ１/やられ役04*";
$ループムーブタイム４ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	CreateProcess("プロセス３", 150, 0, 0, "FlyMoving3");
	CreateProcess("プロセス４", 150, 0, 0, "FlyMoving4");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);

	MoveCamera("@カメラ１", 0, 500, 50, @0, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	MoveCamera("@カメラ１", 1500, 100, 200, @300, Dxl1, true);
	Delete("黒幕１");

//	SetBlur("カメラ１/やられ役0*", true, 1, 500, 100, false);


	SetNwC("cg/fw/nw六波羅竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／幕府騎Ｂ】
<voice name="ｅｔｃ／幕府騎Ｂ" class="その他男声" src="voice/md04/049vs0080e262">
《这、这样……
　没没没没问题吗!!》

{	NwC("cg/fw/nw六波羅竜騎兵Ｂ.png");}
//【ｅｔｃ／幕府騎Ｃ】
<voice name="ｅｔｃ／幕府騎Ｃ" class="その他男声" src="voice/md04/049vs0090e263">
《我们这么多人攻她一人，竟无法伤
她分毫……》

{	NwC("cg/fw/nw六波羅竜騎兵Ｃ.png");}
//【ｅｔｃ／幕府騎Ｄ】
<voice name="ｅｔｃ／幕府騎Ｄ" class="その他男声" src="voice/md04/049vs0100e264">
《……银星号……!!》

{	NwC("cg/fw/nw六波羅竜騎兵Ｄ.png");}
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0110e265">
《但是。
　我们已围堵了她，
绊住其脚步——正如计划的那样。》

{	NwC("cg/fw/nw六波羅竜騎兵Ｂ.png");}
//【ｅｔｃ／幕府騎Ｃ】
<voice name="ｅｔｃ／幕府騎Ｃ" class="その他男声" src="voice/md04/049vs0120e263">
《唔……》

{	NwC("cg/fw/nw六波羅竜騎兵Ｄ.png");}
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0130e265">
《母舰呢？》

{	NwC("cg/fw/nw六波羅竜騎兵Ｃ.png");}
//【ｅｔｃ／幕府騎Ｄ】
<voice name="ｅｔｃ／幕府騎Ｄ" class="その他男声" src="voice/md04/049vs0140e264">
《准备完毕！》

{	NwC("cg/fw/nw六波羅竜騎兵Ｄ.png");}
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0150e265">
《好，散开!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆散開
/*
	Move("絵ＳＴＣ1001", 300, @-900, @400, null, false);
	Move("絵ＳＴＣ1002", 300, @-900, @200, null, false);
	Move("絵ＳＴＣ1003", 300, @-900, @-400, null, false);
	Move("絵ＳＴＣ1004", 300, @-11000, @-400, null, false);
*/
	Request("プロセス*", Stop);
	Delete("プロセス*");

	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進03",1000);


	Move("カメラ１/やられ役01a", 500, @1000, @1000, Axl1, false);
	Move("カメラ１/やられ役02a", 500, @900, @-1100, Axl1, false);
	Move("カメラ１/やられ役03a", 500, @-1000, @1000, Axl1, false);
	Move("カメラ１/やられ役04a", 500, @-1500, @-1000, Axl1, true);

	Delete("カメラ*");


	SetFwC("cg/fw/fw光_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md04/049vs0160a14">
「……嗯？」

{	NwC("cg/fw/nw六波羅竜騎兵Ｄ.png");}
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0170e265">
《下地狱吧，你这怪物!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆摩天蛟
//◆主砲発振
//◆ずぎゅーんぼかーん。
	CreateSE("SE01","se戦闘_衝撃_鎧散華");
	CreateSE("SE02a","se戦闘_バロウズ_ボーガン射撃01");
	CreateSE("SE02b","se戦闘_荒覇吐_攻撃03");
	CreateSE("SE03","se戦闘_銃器_砲門構え01");
	CreateSE("SE04","se特殊_鎧_エネルギー充電01");

	CreateColorEXadd("絵色100", 15000, "WHITE");
	Fade("絵色100", 500, 1000, null, true);

	CreateTextureSP("絵EV100", 2001, Center, Middle, "cg/ev/ev806_戦争絵シリーズその４_a.jpg");
	CreateTextureSP("絵EV200", 2000, Center, Middle, "cg/ev/ev806_戦争絵シリーズその４_b.jpg");
	CreateTextureEXadd("発振エフェクト", 2100, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("発振ビームエフェクト", 2200, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Move("発振ビームエフェクト", 0, @0, @100, null, true);
	Rotate("発振ビームエフェクト", 0, @0, @180, @-10, null,true);
	Zoom("発振ビームエフェクト", 0, 2000, 2000, null, true);
	Move("発振エフェクト", 0, @0, @70, null, true);

	Request("絵EV*", Smoothing);
	Zoom("絵EV*", 0, 1300, 1300, null, true);

	SetBlur("絵EV100", true, 2, 500, 100, false);

	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	FadeDelete("絵色100", 1000, false);
	Zoom("絵EV*", 1500, 1000, 1000, Dxl1, true);

	Wait(300);
	Rotate("発振エフェクト", 1500, @0, @0, @10000, Axl2,false);
	Zoom("発振エフェクト", 1500, 2000, 2000, Axl1, false);
	Fade("発振エフェクト", 200, 1000, null, false);

	Fade("絵EV100", 1000, 0, null, false);
	Wait(800);

	Shake("絵EV100", 600, 5, 6, 0, 0, 500, Axl1, false);
	Move("絵EV*", 600, @-750, @-550, Dxl2, false);
	Zoom("絵EV*", 600, 3000, 3000, Dxl2, false);

	MusicStart("SE02*",0,1000,0,1000,null,false);
	Wait(300);
	SetVolume("SE04", 1000, 0, null);
	Fade("発振ビームエフェクト", 50, 1000, null, false);
	Zoom("発振ビームエフェクト", 500, 3000, 3000, Axl1, true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 19000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");

	FadeDelete("絵EV100", 0, true);
	FadeDelete("絵EV200", 0, true);
	Delete("発振*");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 30, false);

	Zoom("絵演上", 1000, 1500, 1500, Dxl1, false);
	Shake("絵演", 300, 0, 10, 0, 0, 1000, Dxl3, true);
	Wait(500);

	SetVolume("SE02*", 3000, 0, null);
	FadeDelete("絵演*", 1500, true);

	Wait(1000);

	SetNwC("cg/fw/nw六波羅竜騎兵Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／幕府騎Ｄ】
<voice name="ｅｔｃ／幕府騎Ｄ" class="その他男声" src="voice/md04/049vs0180e264">
《……命中!!》

{	NwC("cg/fw/nw六波羅竜騎兵Ａ.png");}
//【ｅｔｃ／幕府騎Ｂ】
<voice name="ｅｔｃ／幕府騎Ｂ" class="その他男声" src="voice/md04/049vs0190e262">
《杀死她了吗！》

{	NwC("cg/fw/nw六波羅竜騎兵Ｄ.png");}
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0200e265">
《这世上没有任何东西在摩天蛟主炮
的攻击下还能保持外形。
　即使那是白银之魔王——银星号!!》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆小ウェイト
	WaitKey(500);

	SetFwC("cg/fw/fw光_沈思.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【光】
<voice name="光" class="光" src="voice/md04/049vs0210a14">
「哦。
　这样认为并没错。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md04/049vs0220a14">
「如果对那兵器一无所知的话，
我说不定早被炸碎。
　它的威力的确很大。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆銀星号健在。片手を突き出している？

	CreateTextureEX("絵演空立絵", 1200, center,-310, "cg/st/3d銀星号_立ち_戦闘b2.png");
	SetBlur("絵演空立絵", true, 3, 200, 100, false);

	Move("絵演空立絵", 600, -560, @0, Dxl1, false);
	Fade("絵演空立絵", 600, 1000, null, true);

	SetNwC("cg/fw/nw六波羅竜騎兵Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0230e265">
《————》

{	NwC("cg/fw/nw六波羅竜騎兵Ｂ.png");}
//【ｅｔｃ／幕府騎Ｃ】
<voice name="ｅｔｃ／幕府騎Ｃ" class="その他男声" src="voice/md04/049vs0240e263">
《竟然
　单手就……挡住了？》

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md04/049vs0250a14">
「我在江之岛遭遇过同样的武器。
　它是靠喷出气浪攻击的，还有用什么招式才
能化解气浪这些我都一清二楚……」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md04/049vs0260a14">
「能攻击到我的武略是一流的。
　不过还差一点，是运气不好吧。」

{	NwC("cg/fw/nw六波羅竜騎兵Ｄ.png");}
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0270e265">
《……怎么办……》

{	NwC("cg/fw/nw六波羅竜騎兵Ｄ.png");}
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0280e265">
《南无八幡大菩萨!!
　<RUBY text="····">这种东西</RUBY>，该如何是好!?》

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/049vs0290a14">
「喝！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号飛翔。天頂へ
	SetVolume("停滞", 1000, 0, null);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵演空立絵", 100, 0, 5000, Dxl2, false);
	FadeDelete("絵演空立絵", 100, true);

	CreateTextureEX("絵EF100", 2000, Center, 0, "cg/ef/ef019_銀星号突貫03.jpg");
	Rotate("絵EF100", 0, @180, @0, @0, null,true);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Move("絵EF100", 0, -512, -288, Dxl1, false);
	Request("絵EF100", Smoothing);
	SetBlur("絵EF100", true, 3, 500, 50, false);

	OnSE("se戦闘_動作_空上昇01",1000);
	Move("絵EF100", 300, 0, 0, Dxl1, false);
	Zoom("絵EF100", 300, 1100, 1100, Dxl1, false);
	CloudZoomDelete(600,false);
	Fade("絵EF100", 600, 1000, null, true);


	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md04/049vs0300a14">
「天体坠落·小彗星!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フォーリンダウン·レイディバグ
//◆摩天蛟、轟沈

//↓ここからma00_000 と同じものです。スピードを調整しています　inc久保田

	CreateTextureEX("絵ev50", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	CreateTextureSP("絵ev40", 9000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	CreateTextureEX("絵ev60", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	SetBlur("絵ev60", true, 3, 500, 100, false);

	CreateTextureEX("絵ev100", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	CreateTextureEX("絵ev200", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_b.jpg");
	CreateTextureEX("絵ev300", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");
	CreateTextureEX("絵ev400", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");

	CreateTextureEX("絵ev410", 10000, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	SetBlur("絵ev410", true, 3, 500, 100, false);

	CreateColorEX("絵色1000", 15000, "White");
	CreateColorEX("絵色100", 17000, "Black");

	OnSE("se人体_動作_跳躍03",1000);
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	CreateColorEXadd("白", 10000, "WHITE");

	Fade("絵色1000", 0, 1000, null, true);
	SetVertex("絵ev50", 0, 0);
	Zoom("絵ev50", 0, 2000, 2000, Dxl1, true);
	Fade("絵ev50", 0, 1000, null, true);
	SetBlur("絵ev50", true, 3, 500, 100, false);
//	Move("絵ev50", 1500, -1024, -576, Dxl2, false);
	Move("絵ev50", 0, -1024, -576, Dxl2, false);
	Request("絵ev50", Smoothing);
	Fade("絵色1000", 500, 500, null, true);
	Fade("絵色1000", 500, 0, null, false);
//	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se特殊_陰義_発動01",1000);
	Move("絵ev50", 600, @+1024, @+576, Dxl2, false);

	Wait(400);

	Fade("白",100,1000,null,true);

	MovieSESet(16000,"mv小彗星_a","se特殊_mv用_小彗星_a");
	MovieSEStart2(300,1000);

	Fade("フラッシュ白",0,1000,null,true);
	Delete("白");
//↑ここまでma00_000 と同じものです。　inc久保田

	CreateTextureEX("EV100", 2001, Center, Middle, "cg/ev/ev806_戦争絵シリーズその４_a.jpg");
	CreateTextureEX("EV200", 2000, Center, Middle, "cg/ev/ev806_戦争絵シリーズその４_a.jpg");

	SetBlur("EV100", true, 3, 500, 100, false);
	Fade("EV100", 0, 1000, null, false);
	Fade("EV200", 0, 1000, null, true);
	Delete("絵ev*");
	Delete("絵EF*");
	FadeDelete("フラッシュ白", 300, false);

	SetVolume("@mbgm*", 1000, 0, null);
	Shake("EV100", 500, 5, 6, 0, 0, 500, null, false);
	Zoom("EV100", 500, 2000, 2000, Axl1, true);

	CreateSE("SE03","se戦闘_破壊_爆発09");
	CreateSE("SE04","se戦闘_破壊_爆発04");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 19000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	FadeDelete("EV*", 0, true);
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 2, 300, 30, false);

	CloudZoomSet(2100);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,500,-200,null,true);
	Request("絵Cloud1*", SubRender);

	CreateTextureSP("EV300", 2000, Center, Middle, "cg/ev/ev806_戦争絵シリーズその４_c.jpg");
	Request("EV300", Smoothing);
	Zoom("EV300", 0, 1300, 1300, null, true);

	Zoom("絵演上", 500, 1500, 1500, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, true);

	Zoom("EV300", 20000, 1000, 1000, null, false);

	FadeDelete("絵演*", 5000, true);


	SetNwC("cg/fw/nw六波羅竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／幕府騎Ｂ】
<voice name="ｅｔｃ／幕府騎Ｂ" class="その他男声" src="voice/md04/049vs0310e262">
《摩天蛟啊啊啊啊啊!?》

{	NwC("cg/fw/nw六波羅竜騎兵Ｂ.png");}
//【ｅｔｃ／幕府騎Ｃ】
<voice name="ｅｔｃ／幕府騎Ｃ" class="その他男声" src="voice/md04/049vs0320e263">
《啊，啊啊……母舰被……》

{	NwC("cg/fw/nw六波羅竜騎兵Ｃ.png");}
//【ｅｔｃ／幕府騎Ｄ】
<voice name="ｅｔｃ／幕府騎Ｄ" class="その他男声" src="voice/md04/049vs0330e264">
《六波罗的希望……沉没了…………》

{	NwC("cg/fw/nw六波羅竜騎兵Ｄ.png");}
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0340e265">
《……这不是真的……吧？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：銀星号＋星片八剣姫
	#av_八剣姫=true;

	SoundPlay("@mbgm37",0,1000,true);
	SetVolume("SE*", 1500, 0, null);

	CreateTextureEX("絵EV100", 2201, Center, Middle, "cg/ev/ev228_白銀の軍団_b.jpg");
	CreateTextureEX("絵大", 2200, 0, 0, "cg/ev/resize/ev228_白銀の軍団_bl.jpg");
	Zoom("絵EV100", 0, 1500, 1500, null, true);
	SetBlur("絵EV100", true, 3, 300, 30, false);


	Move("絵大", 6000, -1024, @0, AxlDxl, false);
	Fade("絵大", 2000, 1000, null, true);

	CloudZoomDelete(0,false);

	Wait(3000);

	Zoom("絵EV100", 2000, 1000, 1000, Dxl1, false);
	Fade("絵EV100", 1000, 1000, null, true);


	Delete("EV300");
	Wait(2000);
	Delete("絵大");
	SetFwC("cg/fw/fw嵐を導くもの_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【八剣姫Ａ】
<voice name="八剣姫Ａ" class="その他女声" src="voice/md04/049vs0350c00">
《母亲大人！》

{	FwC("cg/fw/fw炎の骨_通常.png");}
//【八剣姫Ｂ】
<voice name="八剣姫Ｂ" class="その他女声" src="voice/md04/049vs0360c01">
《母亲大人！》

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md04/049vs0370a14">
「看到如此华美景象，忍不住了吗？
　我的孩子们——最骁勇的八骑啊！」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/049vs0380a14">
「渴望战斗吗。
　渴望参加生命与生命的霸权争夺吗？」

{	FwC("cg/fw/fw星の角_通常.png");}
//【八剣姫Ｃ】
<voice name="八剣姫Ｃ" class="その他女声" src="voice/md04/049vs0390c02">
《母亲大人！》

{	FwC("cg/fw/fw猫の爪_通常.png");}
//【八剣姫Ｄ】
<voice name="八剣姫Ｄ" class="その他女声" src="voice/md04/049vs0400c03">
《母亲大人！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/049vs0410a14">
「那就上吧!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆八剣姫出撃
//◆竜騎兵隊
//◆撃墜されてゆく
	CreateTextureEX("は", 1050, @-800, @-300, "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureEX("ち", 1000, @-800, @-200, "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureEX("け", 1100, @-800, @-100, "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureEX("ん", 1190, @-800, @-250, "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureEX("き", 1000, @-500, @0, "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureEX("が", 1050, @-800, @-100, "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureEX("八", 1150, @-700, @-850, "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureEX("体", 1300, @-800, @-300, "cg/st/3d八剣姫_騎航_通常.png");

	Zoom("は", 0, 500, 500, null, false);
	Zoom("ち", 0, 250, 250, null, false);
	Zoom("け", 0, 750, 750, null, false);
	Zoom("ん", 0, 1000, 1000, null, false);
	Zoom("き", 0, 250, 250, null, false);
	Zoom("が", 0, 750, 750, null, false);
	Zoom("八", 0, 1050, 1050, null, false);
	Zoom("体", 0, 1500, 1500, null, false);

	SetBlur("は", true, 3, 300, 30, false);
	SetBlur("ち", true, 3, 300, 30, false);
	SetBlur("け", true, 3, 300, 30, false);
	SetBlur("ん", true, 3, 300, 30, false);
	SetBlur("き", true, 3, 300, 30, false);
	SetBlur("が", true, 3, 300, 30, false);
	SetBlur("八", true, 3, 300, 30, false);
	SetBlur("体", true, 3, 300, 30, false);


	CreateTextureEX("絵ＳＴＣ1001", 1200,  @-300, @-300, "cg/st/3d八八式竜騎兵_騎航_戦闘b.png");
	CreateTextureEX("絵ＳＴＣ1002", 1100,  @-400, @-600, "cg/st/3d八八式竜騎兵_騎航_戦闘b.png");
	CreateTextureEX("絵ＳＴＣ1003", 1000,  @100, @-600, "cg/st/3d八八式竜騎兵_騎航_戦闘a.png");
	CreateTextureEX("絵ＳＴＣ1004", 1050,  @200, @-300, "cg/st/3d八八式竜騎兵_騎航_戦闘b.png");

	Zoom("絵ＳＴＣ1001", 0, 800, 800, null, false);
	Zoom("絵ＳＴＣ1002", 0, 500, 500, null, false);
	Zoom("絵ＳＴＣ1003", 0, 250, 250, null, false);
	Zoom("絵ＳＴＣ1004", 0, 300, 300, null, false);


$ループムーブナット名 = "@絵ＳＴＣ1001";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@絵ＳＴＣ1002";
$ループムーブタイム２ = 20000;

$ループムーブナット名３ = "@絵ＳＴＣ1003";
$ループムーブタイム３ = 15000;

$ループムーブナット名４ = "@絵ＳＴＣ1004";
$ループムーブタイム４ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	CreateProcess("プロセス３", 150, 0, 0, "FlyMoving3");
	CreateProcess("プロセス４", 150, 0, 0, "FlyMoving4");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);


	Zoom("絵EV100", 100, 1200, 1200, null, false);

	CreateColorSPadd("siro幕１", 3000, "#FFFFFF");
	DrawTransition("siro幕１", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);
	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, false);


	FadeDelete("絵EV100", 0, true);

	Fade("絵ＳＴＣ100*", 0, 1000, null, true);
	FadeDelete("siro幕１", 100, true);
	FadeDelete("絵EV100", 0, true);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,800,0,1000,null,false);
//	Move("は", 300, @1900, @1900, Axl3, false);
	Fade("は", 0, 1000, Dxl3, true);
	CreateTextureSPadd("は絵演", 1049, Center, @-50, "cg/ef/ef015_汎用横軌道.jpg");
	DrawTransition("は絵演", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("は", 100, @1600, @0, null, false);

	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,700,0,1000,null,false);
//	Move("ち", 500, @1900, @1900, Axl1, false);
	Fade("ち", 0, 1000, Dxl1, true);
	CreateTextureSPadd("ち絵演", 999, Center, @50, "cg/ef/ef015_汎用横軌道.jpg");
	DrawTransition("ち絵演", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("ち", 200, @1900, @0, null, true);
	FadeDelete("ち", 0, true);
	FadeDelete("ち絵演", 1000, false);

	FadeDelete("は", 0, false);
	FadeDelete("は絵演", 1000, false);



	CreateSE("SE03","se戦闘_動作_空突進03");
	MusicStart("SE03",0,1000,0,1000,null,false);
//	Move("け", 700, @1900, @1900, Axl1, false);
	Fade("け", 0, 1000, null, true);
	CreateTextureSPadd("け絵演", 1099, Center, @150, "cg/ef/ef015_汎用横軌道.jpg");
	DrawTransition("け絵演", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("け", 300, @1900, @0, null, false);

	CreateSE("SE04","se戦闘_動作_空突進08");
	MusicStart("SE04",0,1000,0,1000,null,false);
//	Move("ん", 300, @1900, @1900, Axl3, false);
	Fade("ん", 0, 1000, Dxl3, true);
	CreateTextureSPadd("ん絵演", 1089, Center, @0, "cg/ef/ef015_汎用横軌道.jpg");
	DrawTransition("ん絵演", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("ん", 200, @1900, @0, null, false);


	CreateSE("SE05","se戦闘_動作_空突進01");
	MusicStart("SE05",0,700,0,1000,null,false);
//	Move("き", 500, @1900, @1900, Axl1, false);
	Fade("き", 0, 1000, Dxl1, true);
	CreateTextureSPadd("き絵演", 1001, Center, @0, "cg/ef/ef013_汎用斜め軌道.jpg");
	DrawTransition("き絵演", 100, 0, 1000, 100, null, "cg/data/beam_04_00_0.png", false);
	Move("き", 100, @1900, @-1300, null, true);
	FadeDelete("き", 0, true);
	FadeDelete("き絵演", 1000, false);

	FadeDelete("け", 0, true);
	FadeDelete("け絵演", 1000, false);

	FadeDelete("ん", 0, true);
	FadeDelete("ん絵演", 1000, false);




	CreateSE("SE06","se戦闘_動作_空突進02");
	MusicStart("SE06",0,1000,0,1000,null,false);
//	Move("が", 500, @1900, @1900, Axl1, false);
	Fade("が", 0, 1000, Dxl1, true);
	CreateTextureSPadd("が絵演", 1049, Center, @-150, "cg/ef/ef015_汎用横軌道.jpg");
	DrawTransition("が絵演", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("が", 300, @1900, @0, null, true);


	CreateSE("SE07","se戦闘_動作_空突進03");
	MusicStart("SE07",0,1000,0,1000,null,false);
//	Move("八", 700, @1900, @1900, Axl1, false);
	Fade("八", 0, 1000, null, true);
	CreateTextureSPadd("八絵演", 1299, @0, @0, "cg/ef/ef011_汎用斜め軌道.jpg");
	DrawTransition("八絵演", 100, 0, 1000, 100, null, "cg/data/beam_03_00_0.png", false);
	Move("八", 100, @1900, @1900, null, false);


	CreateSE("SE08","se戦闘_動作_空突進08");
	MusicStart("SE08",0,1000,0,1000,null,false);
//	Move("体", 300, @1900, @1900, Axl3, false);
	Fade("体", 0, 1000, Dxl3, true);
	CreateTextureSPadd("体絵演", 1299, Center, @25, "cg/ef/ef015_汎用横軌道.jpg");
	Zoom("体絵演", 0, 2500, 2500, null, false);
	DrawTransition("体絵演", 100, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);
	Move("体", 300, @1900, @0, null, true);
	FadeDelete("体", 0, true);
	FadeDelete("体絵演", 1000, false);


	FadeDelete("が", 0, true);
	FadeDelete("が絵演", 1000, false);


	FadeDelete("八", 0, true);
	FadeDelete("八絵演", 1000, false);

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 19000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Request("絵演*", Smoothing);

	Zoom("絵演*", 0, 1100, 1100, null, true);

	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 30, false);

	Zoom("絵演上", 2000, 1210, 1210, Dxl1, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, true);

	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("カメラ*");

	Wait(1000);

	SetNwC("cg/fw/nw六波羅竜騎兵Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0420e265">
《……八幡大菩萨……
　这就是……六波罗的宿命吗……》

{	NwC("cg/fw/nw六波羅竜騎兵Ｄ.png");}
//【ｅｔｃ／幕府騎Ｅ】
<voice name="ｅｔｃ／幕府騎Ｅ" class="その他男声" src="voice/md04/049vs0430e265">
《以武力称霸于这个时代的我们——
　在更为强大的力量前，宛若蝼蚁。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆撃墜
//◆全滅

	FadeDelete("絵ＳＴＣ100*", 0, false);
	FadeDelete("絵演*", 2000, true);

//◆銀星号


	CreateTextureEX("絵演空立絵", 1200, @300,@0, "cg/st/3d銀星号_立ち_通常.png");
	Move("絵演空立絵", 300, @50, @0, Dxl1, false);
	Fade("絵演空立絵", 300, 1000, null, true);

	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md04/049vs0440a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピピ。探知

	CreateSE("SE01","se特殊_コックピット_アラーム");
	MusicStart("SE01",0,500,0,1000,null,false);

	SetFwC("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/049vs0450a15">
《主君。》

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md04/049vs0460a14">
「什么事？」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/049vs0470a15">
《有大机体正在接近。
　是相当优秀的剑胄。操控者恐怕不是普通人。》

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/049vs0480a14">
「……哦？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 100, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	ClearWaitAll(0, 0);
}

..//ジャンプ指定
//次ファイル　"md04_050vs.nss"