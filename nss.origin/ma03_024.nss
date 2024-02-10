//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_024.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma03_024.nss","ma03_SB2",true);
	Conquest("nss/ma03_024.nss","ma03_SB3",true);
	Conquest("nss/ma03_024.nss","ma03_SB",true);
	Conquest("nss/ma03_024.nss","ma_03_SBProcess",true);
	Conquest("nss/ma03_024.nss","ma_03_SBDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_runs",true);
	Conquest("nss/ma03_024.nss","ma03_024_runsProcess",true);
	Conquest("nss/ma03_024.nss","ma03_024_runsDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_shakeloop",true);
	Conquest("nss/ma03_024.nss","ma03_024_shakeloopProcess",true);
	Conquest("nss/ma03_024.nss","ma03_024_shakeloopDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_GC",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCP1",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCPC",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCP2",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCPDelete",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCF",true);
	Conquest("nss/ma03_024.nss","ma03_024_GCFP",true);

	CP_AllSet("村正");

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

//嶋：仮
	#ev117_レースの情景_a=true;
	#ev904_村正マグネットコーティング_c=true;
	#ev904_村正マグネットコーティング_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_スーパーハウンド=true;
	#av_RG10=true;
	#av_セクシー=true;
	#av_ザ·ゲイシャ=true;
	#av_ジェントルダッシュ=true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;
	$GameName = "ma03_025.nss";

}

scene ma03_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_023.nss"

//◆スタートランプ。赤→青
//◆ピッ、ピッ、ピッ、ポーン。
//◆各騎発進
//嶋：ev指定：ev117_レースの情景_a


	PrintBG("上背景", 30000);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef048_シグナルa.jpg");
	CreateTextureEX("絵背景200", 1100, Center, Middle, "cg/ef/ef048_シグナルb.jpg");
	CreateTextureEX("絵背景300", 1200, Center, Middle, "cg/ef/ef048_シグナルc.jpg");
	CreateTextureEX("絵背景400", 1300, Center, Middle, "cg/ef/ef048_シグナルd.jpg");

	CreateSE("SE10","se特殊_鎧_レース_アイドリング");
	CreateSE("SE11","se戦闘_衝撃_攻撃交錯02");
	CreateSE("SE12","se特殊_鎧_レース_加速01");
	CreateSE("SE00","se背景_ガヤ_サーキット03_L");
	CreateSE("SE01","se特殊_鎧_レース_加速01");
	CreateSE("SE02","se特殊_鎧_レース_加速02");
	CreateSE("SE03","se戦闘_動作_空突進08");
	CreateSE("SE04","se特殊_鎧_レース_加速01");
	CreateSE("SE05","se戦闘_動作_空突進08");
	CreateSE("SE06","se特殊_鎧_レース_加速02");
	CreateSE("SE07","se特殊_鎧_レース_加速01");


	MusicStart("SE10",500,500,0,1000,null,true);

	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 500, true);

Wait(750);

	OnSE("se特殊_その他_スタートランプ02",1000);
	Fade("絵背景200", 300, 1000, null, true);

Wait(750);

	OnSE("se特殊_その他_スタートランプ02",1000);
	Fade("絵背景300", 300, 1000, null, true);

Wait(750);

	MusicStart("SE10",500,1000,0,1000,null,true);
	OnSE("se特殊_その他_スタートランプ03",1000);
	Fade("絵背景400", 300, 1000, null, true);

Wait(100);

	MusicStart("SE11",0,1000,0,1000,null,false);
	MusicStart("SE12",0,1000,0,1000,null,false);

	PrintGO("上背景", 5000);

	CreateTextureSP("絵st001", 1400, 1024, Middle, "cg/st/3dウルティマ_騎航_通常.png");
	CreateTextureSP("絵st002", 1500, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	CreateTextureSP("絵st003", 1200, 1024, Middle, "cg/st/3dＲＧ－１０_騎航_通常.png");
	CreateTextureSP("絵st004", 1300, 1024, Middle, "cg/st/3dＳハウンド_騎航_通常.png");
	CreateTextureSP("絵st005", 1400, 1024, Middle, "cg/st/3dＧダッシュ_騎航_通常.png");
	CreateTextureSP("絵st006", 1300, 1024, Middle, "cg/st/3dゲイシャ_騎航_通常.png");
	CreateTextureSP("絵st007", 1400, 1024, Middle, "cg/st/3dセクシー_騎航_通常.png");
	CreateTextureSP("絵st008", 1500, 1024, Middle, "cg/st/3d村正競技_騎航_通常.png");

	#av_スーパーハウンド=true;
	#av_RG10=true;
	#av_セクシー=true;
	#av_ザ·ゲイシャ=true;
	#av_ジェントルダッシュ=true;

//アベンジ
	Move("絵st002", 0, @0, @200, null, true);
//ＲＧ－１０
	Move("絵st003", 0, @0, @-100, null, true);
//ハウンド
	Move("絵st004", 0, @0, @-250, null, true);
//ダッシュ
	Move("絵st005", 0, @0, @-40, null, true);
//ゲイシャ
	Move("絵st006", 0, @0, @+120, null, true);
//セクシー
	Move("絵st007", 0, @0, @-130, null, true);
//ホットドック
	Move("絵st008", 0, @0, @-50, null, true);

	Zoom("絵st002", 0, 1200, 1200, null, true);
	Zoom("絵st003", 0, 500, 500, null, true);
	Zoom("絵st004", 0, 750, 750, null, true);
	Zoom("絵st005", 0, 400, 400, null, true);
	Zoom("絵st006", 0, 300, 300, null, true);
	Zoom("絵st007", 0, 1000, 1000, null, true);

	ma03_SB2(1000,3,1000,0);
	ma03_SB3(2000,300);

	SetVolume("SE10", 1000, 0, null);

	MusicStart("SE00",500,800,0,1000,null,true);
	FadeDelete("上背景", 300, true);

	$Race_Time = 1000;

	Wait(200);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵st001", $Race_Time, @-7000, @0, Dxl2, false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵st002", $Race_Time, @-6500, @0, DxlAuto, false);
	Wait(100);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("絵st003", $Race_Time, @-6000, @0, Dxl1, false);
	Wait(100);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("絵st004", $Race_Time, @-5000, @0, Dxl2, false);
	Wait(100);
	MusicStart("SE05",0,1000,0,1000,null,false);
	Move("絵st005", $Race_Time, @-4800, @0, DxlAuto, false);
	Wait(100);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Move("絵st006", $Race_Time, @-4900, @0, Dxl1, false);
	Wait(100);
	MusicStart("SE07",0,1000,0,1000,null,false);
	Move("絵st007", $Race_Time, @-4500, @0, Dxl1, false);
	Wait(500);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵st008", $Race_Time, @-4000, @0, Dxl1, true);

	SetVolume("SE00", 500, 0, null);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev117_レースの情景_a.jpg");
	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/ev/ev117_レースの情景_a.jpg");

	Delete("絵st*");
	ma_03_SBDelete();

	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/ev/ev117_レースの情景_a.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	Zoom("絵背景200", 500, 2000, 2000, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);

	CreateSE("SE10","se背景_ガヤ_サーキット01_L");
	CreateSE("SE01","se特殊_鎧_レース_加速01");
	MusicStart("SE10",500,1000,0,1000,null,true);
	Move("絵背景200", 1000, @0, @-100, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("黒幕１", 250, 100, "slide_01_01_1", true);
	FadeDelete("絵背景200", 500, false);

	SoundPlay("@mbgm13",0,1000,true);

	Wait(500);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240010a07">
《各骑同时起步了——————!!
　真是惊人的引擎交响曲！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240020a07">
《选手们成群结队地驶过第一直道！　危险！
　事故的发生率在这个瞬间
达到了顶峰——————!!》

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240030a07">
《啊————!?
　第十三位，浮起来了————》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どごーん。
//爆発まとめ
	SetVolume("SE10", 500, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵st004", 1300, -268, -50, "cg/st/3dアベンジ_騎航_通常_b.png");
	CreateTextureSP("絵st005", 1400, -388, -148, "cg/st/3dＳハウンド_騎航_通常.png");
	Zoom("絵st004", 0, 500, 500, null, true);
	Zoom("絵st005", 0, 750, 750, null, true);

	CreateTextureSP("絵st106", 1300, 1024, Middle, "cg/st/3dゲイシャ_騎航_通常.png");
	CreateTextureSPadd("絵st116", 1400, 1024, Middle, "cg/st/3dゲイシャ_騎航_通常.png");
	Zoom("絵st106", 0, 800, 800, null, true);
	Zoom("絵st116", 0, 800, 800, null, true);
	SetTone("絵st116", Sepia);

	Move("絵st004", 0, @+1024, @0, null, false);
	Move("絵st005", 0, @+1024, @0, null, false);

	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEXadd("絵背景200", 3200, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");

	SetBlur("絵背景200", true, 3, 300, 50, false);

	Shake("絵st004", 50000, 2, 1, 0, 0, 1000, null, false);
	Shake("絵st005", 50000, 1, 2, 0, 0, 1000, null, false);

//	BezierMove("絵st004", 1000, (@0,@0){@-950,@+10}{@-970,@-30}(@-850,@-10){@-860,@+50}{@-870,@+70}(@-800,@-600), DxlAxl, false);

	ma03_SB2(1000,3,1000,0);
	ma03_SB3(2000,300);

	Request("絵st004", Smoothing);
	Request("絵st005", Smoothing);
	Request("絵st1*", Smoothing);

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	CreateSE("SE02","se特殊_鎧_レース_加速02");
	CreateSE("SE03","se特殊_鎧_レース_加速01");
	CreateSE("SE04","se特殊_鎧_レース_減速01");
	CreateSE("SE05","se戦闘_破壊_爆発05");

	MusicStart("SE01",300,500,0,1300,null,true);

	Move("絵st004", 500, @-1024, @0, null, false);
	Move("絵st005", 500, @-1024, @0, null, false);
	DrawDelete("黒幕１", 250, 100, "slide_01_01_1", true);

	MusicStart("SE04",0,1000,0,1300,null,false);
	Rotate("絵st1*", 1000, @0, @0, @30, Axl1,false);
	BezierMove("絵st1*", 1000, (@0,@0){@-950,@+10}{@-970,@-30}(@-850,@-10){@-860,@+50}{@-870,@+70}(@-800,@-600), DxlAxl, false);

	Wait(500);

	MusicStart("SE02",0,1000,0,1300,null,false);
	Move("絵st004", 500, @-890, @+10, Dxl1, false);
	Wait(100);
	MusicStart("SE01",0,1000,0,1300,null,false);
	Move("絵st005", 500, @-1000, @-100, Dxl1, true);

	SetVolume("SE04", 500, 0, null);

	Wait(100);

	CreateColorEXadd("絵色100", 1500, "White");

	MusicStart("SE05",0,1000,0,1300,null,false);
	SetVolume("SE01", 1000, 0, null);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, null, "cg/data/circle_10_00_0.png", true);


	Zoom("絵背景200", 500, 3000, 3000, null, false);
	Zoom("絵背景100", 250, 1200, 1200, null, false);

	Fade("絵背景100", 250, 1000, null, false);
	Shake("絵背景100", 100000, 5, 3, 0, 0, 1000, null, false);

	BezierMove("絵背景100", 1500, (@0,@0){@0,@-35}{@0,@-70}(@0,@-95){@0,@-70}{@0,@-35}(@0,@0){@0,@+10}{@0,@+20}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), AxlDxl, false);
	BezierMove("絵背景200", 1500, (@0,@0){@0,@-35}{@0,@-70}(@0,@-95){@0,@-70}{@0,@-35}(@0,@0){@0,@+10}{@0,@+20}(@0,@0){@0,@-20}{@0,@-10}(@0,@0), AxlDxl, false);

	Fade("絵背景200", 250, 1000, null, true);
	Fade("絵背景200", 500, 0, null, false);

	Wait(1000);

	SetVolume("SE05", 500, 0, null);

	CreateColorEX("黒幕", 15000, "Black");
	Fade("黒幕",500,1000,null,true);
	ma_03_SBDelete();
	Delete("絵色100");
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵sy004");
	Delete("絵sy005");
	Delete("絵sy1*");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	Fade("黒幕",1000,0,null,true);
	Delete("黒幕");

/*
	OnSE("se戦闘_破壊_爆発01",1000);

	CreatePlainSP("絵振", 100);
	Wait(1);
	CreatePlainEX("絵振２", 110);
	SetBlur("絵振２", true, 3, 600, 50, false);

	CreateColorEXadd("絵フラ", 2000, "#FFFFFF");

	Fade("絵振２", 0, 700, null, false);
	Zoom("絵振２", 200, 1200, 1200, null, false);

	OnSE("se戦闘_破壊_爆発04",1000);
	Fade("絵フラ", 200, 1000, null, true);
	Delete("絵振２");

	FadeDelete("絵フラ", 300, false);

	FadeFR4("絵振",0,1000,1000,0,0,30,Dxl2,false);
	Delete("絵振*");
*/

	SetFwC("cg/fw/fw茶々丸変装_歯噛.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240040a07">
《撞上了！
　为了避免碰擦而强行转向的
第十三位，泽田队！　浮起来了！
猛烈撞上了赛道拱廊！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240050a07">
《马上实行救援！》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240060a08">
《真难看啊。
　不懂如何使用翅膀的鸟，当然会掉下来啊。》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240070a07">
《被撞坏的拱门的修复也很快着手
进行。这边的工作人员都非常熟练，
没有半点无用功。
　另一边的比赛——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);

	ma03_SB2(700,1,1000,0);
	ma03_SB3(2000,300);

//1:翔京：ウルティマ·シュール
	CreateTextureSP("絵st001", 1400, 1300, Middle, "cg/st/3dウルティマ_騎航_通常.png");
	Zoom("絵st001", 0, 1100, 1100, null, true);
	Request("絵st001", Smoothing);

//2:ヨコタン：スーパーハウンド
	CreateTextureSP("絵st002", 1300, 1024, Middle, "cg/st/3dＳハウンド_騎航_通常.png");
	Request("絵st002", Smoothing);
//3:ＴＦＦ：アベンジ
	CreateTextureSP("絵st003", 1500, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Zoom("絵st003", 0, 800, 800, null, true);
	Request("絵st003", Smoothing);
//4:マツイ：ザ·ゲイシャ
	CreateTextureSP("絵st004", 1100, 1024, 0, "cg/st/3dゲイシャ_騎航_通常.png");
	Zoom("絵st004", 0, 750, 750, null, true);
	Request("絵st004", Smoothing);
//5:アソシエイブル：ＲＧ－１０
	CreateTextureSP("絵st005", 1100, 1024, -200, "cg/st/3dＲＧ－１０_騎航_通常.png");
	Zoom("絵st005", 0, 500, 500, null, true);
	Request("絵st005", Smoothing);

	CreateSE("SE01","se特殊_鎧_レース_加速01");
	CreateSE("SE02","se特殊_鎧_レース_旋回02");
	CreateSE("SE03","se特殊_鎧_レース_旋回02");
	CreateSE("SE04","se特殊_鎧_レース_旋回02");
	CreateSE("SE05","se戦闘_動作_空突進03");

	$レースタイム１ = 1000;
	$レースタイム２ = 1200;

	FadeDelete("上背景", 300, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵st001", $レースタイム１, -5000, @0, Dxl1, false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	BezierMove("絵st002", $レースタイム１, (1424,-364){0,300}{-512,-100}(-1524,-300), Dxl1, false);
	Wait(200);
	MusicStart("SE03",0,1000,0,1000,null,false);
	BezierMove("絵st004", $レースタイム２, (1524,-164){400,400}{0,-200}(-1624,@0), Dxl1, false);
	Wait(50);
	Move("絵st005", $レースタイム１, -2000, @0, Dxl1, false);
	Wait(50);
	MusicStart("SE04",0,1000,0,1000,null,false);
	BezierMove("絵st003", $レースタイム２, (2024,-264){100,-600}{-300,100}(-1524,-264), Dxl1, true);


	Wait(200);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("絵st0*");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev907_ウルティマ走行.jpg");
	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/ev/ev907_ウルティマ走行.jpg");

	SetBlur("絵背景200", true, 3, 500, 100, false);

	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @-200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	Fade("絵背景100", 300, 1000, null, true);
	FadeDelete("絵背景200", 300, false);

	MusicStart("SE05",0,1000,0,1000,null,false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240080a07">
《进入第一个弯道了！
　首位果然！　是翔京理想号！》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240090a07">
《后面跟着的是横锻、田村、松井还有联会，
之后是团子！
　最后面是警察队！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240100a07">
《现在，就是这样的顺序！
　通过最初的弯道后会如何变化呢!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正視点
//◆モニター展開。サーキット騎航中。
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 20000, "#000000");

	FadeDelete("上背景", 600, true);
	Wait(1000);
	Cockpit_AllFade2();
	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_024_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,182,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	FadeDelete("絵暗転", 600, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　…………要说不出所料吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240110a00">
「竞速性能也差太多了吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240120a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　数打剑胄要劣于真打剑胄。
　这在现在来说是个常识，也无须怀疑这个事实。

　但是，就算数打剑胄的性能容量只有八，
将这些全都都用在速度和运动性的增加上的竞技用剑胄
——和将一〇的容量五五分配到战斗力和机动性的真打
剑胄比起来，按道理在速度上的竞争是不可能输的。

　但是这个分析只不过是数字上的。
　实际上，力量的差距是如此之大。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240130a01">
《……反正在竞赛中获胜也不是目的
吧。不是挺好的嘛。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240140a00">
「话是这么说。
　如果太慢的话就不好办了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　如果滞留在后方的话，在孵化开始的时候再赶过去
就会慢一步。
　不能断言这种延迟，会不会造成被害人的数量增加
一位数。

  在“卵”觉醒的瞬间来访的灾厄，银星号。
　是杀尽众人，毁灭一切的天象之复制。

　至少我也想要留在后几名的集团中……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆コーナーリング

//◆俯瞰視点（放送席）

	SetVolume("SE01", 600, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	Cockpit_AllFade0();

	DrawDelete("上背景", 125, 100, "slide_01_03_1", true);
	WaitKey(50);
	DrawDelete("絵暗転", 125, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw茶々丸変装_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240150a07">
《警察队通过了弯道！
　怎么说呢——真是稳健的跑法！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240160a08">
《……你说什么啊。
　无论是剑胄的性能还是骑手的力量都很平庸。
没什么看点啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 20000, "#000000");

	FadeDelete("上背景", 600, true);
	Wait(1000);
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,182,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_024_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240170a01">
《…………》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240180a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　是我的错觉吗。
　透过接触皮肤的铁甲，感觉有什么尖锐的东西，刺在
我的身上……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 600, 0, null);

//◆俯瞰視点
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 20000, "#000000");

	DrawDelete("上背景", 125, 100, "slide_02_01_1", true);

	Cockpit_AllFade0();

	ma03_024_runsDelete();

	CreateSE("SE01","se特殊_鎧_レース_加速02");
	CreateSE("SE02","se戦闘_動作_空突進08");
	CreateSE("SE03","se背景_ガヤ_サーキット01_L");

	CreateTextureSP("絵st100", 1000, 0, 0, "cg/st/3dウルティマ_騎航_通常3.png");
	Rotate("絵st100", 0, @0, @0, @-35, null,true);
	Move("絵st100", 0, 1024, 200, null, true);
	Request("絵st100", Smoothing);
	SetBlur("絵st100", true, 3, 300, 30, false);

	CreateTextureEXadd("絵背景100", 1300, -543, -552, "cg/ef/ef044_火花c.png");
	Zoom("絵背景100", 0, 100, 100, null, true);
	CreateTextureSP("Rollbg001", 300, -727, -400, "cg/bg/bg038_サーキットカーブ_01.jpg");
	CreateTextureSP("Rollbg002", 400, -727, -400, "cg/bg/bg038_サーキットカーブ_01 アーチ01.png");
	CreateTextureEX("Rollbg003", 2000, -727, -400, "cg/bg/bg038_サーキットカーブ_01 アーチ01.png");
	Zoom("Rollbg00*", 0, 750, 750, null, true);
//	Zoom("", 0, 750, 750, null, true);

	Move("Rollbg00*",0, @-2000, @-400, null, true);

	MusicStart("SE03",1000,1000,0,1000,null,true);

	Move("Rollbg00*",2000, -727, -400, Dxl1, false);
	DrawDelete("絵暗転", 125, 100, "slide_02_01_1", true);

	WaitAction("Rollbg00*",null);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Rotate("絵st100", 400, @0, @0, -45, DxlAuto,false);
	Zoom("絵st100", 400, 800, 800, DxlAuto, false);
	Move("絵st100", 400, -500, -100, DxlAuto, false);

	Wait(350);

	Fade("Rollbg003", 0, 1000, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵背景100", 25, 800, Dxl1, false);
	Move("絵st100",300, @-30, @0, DxlAuto, false);
	Zoom("絵背景100", 250, 2000, 2000, Dxl1, false);
	Rotate("絵st100", 250, @0, @0, 45, Dxl1,false);
	Wait(100);
	Fade("絵背景100", 500, 0, Dxl1, false);
	Zoom("絵st100", 400, 350, 350, Dxl1, false);
	Move("絵st100", 500, 1024, -350, Dxl1, true);
	Fade("絵背景100", 200, 0, Dxl1, false);

	SetVolume("SE03", 1000, 0, null);

	Wait(1000);

	PrintGO("上背景", 25000);

	Delete("Rollbg*");

	CreateColorSP("絵暗転", 20000, "#000000");

	DrawDelete("上背景", 125, 100, "slide_02_01_1", true);

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");

	FadeBG(0,true);

	DrawDelete("絵暗転", 125, 100, "slide_02_01_1", true);


	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240190a07">
《理想号通过了Ｕ形弯！
　总算杀出重围了！》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240200a07">
《接下来的集团是超级猎犬、ＲＧ-一〇、
逆袭骑三强！　缠斗很激烈！
　松井已经被甩开了吗!?》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240210a08">
《大体上是顺利展开了呢。
　那么，接下来会怎么样……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);

	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240220a02">
「唔……
　凑斗先生，加油……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240230a03">
「……虽然是这样说啊。
　拿军用的剑胄去挑战竞技用剑胄的速度……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0240240a04">
「不行不行不行的啊。
　要举例的话，可以说是鸟和鱼的赛跑吧。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240250a02">
「那样没办法相比吧。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0240260a04">
「就是这么个意思。
　二者的世界是不同的哦，绫弥小姐。」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240270a02">
「可恶——……
　那么就这么呆着吗。真不甘心啊……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240280a03">
「好了，不要忘了。
　景明大人——还有我们的目的是不同的哦？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0240290a04">
「是的。
　参加比赛只是手段而已。」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240300a02">
「……这些，我明白的啊。
　但是一开始看，就感觉……产生激情了啊。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0240310a04">
「我明白您的心情。
　希望凑斗大人自己不会陷入那种激情中吧。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240320a03">
「他应该是没问题的。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240330a02">
「……虽然我也觉得，稍微想要看一下。
　看看那样的凑斗先生。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0240340a04">
「呵呵。
　确实是呢。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240350a03">
「我明白了。请交给我吧。
　从现在开始由我来送出爱的能量。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240360a02">
「喂。
　你的主人突然说出了奇怪的话呢。」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0240370a04">
「与其说奇怪，不如说是完全脱线了。
　请不要管她。请把她当做住在白色柔软墙壁
包围的密室中的人吧。」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240380a03">
「这种时候，能给陷入困境的男人带来斗志的
是女人的爱情！
　激情燃烧的爱恋会给景明大人打开猛烈反击
的道路！　去吧，我的爱！」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240390a02">
「要吃爆米花吗？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0240400a04">
「恭敬不如从命。
　哎呀，真是怀念啊。在我年轻的时候
这种东西还是比较少见的……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆村正視点
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0,true);

	CreateTextureSP("絵st001", 1300, 1024, Middle, "cg/st/3d村正競技_騎航_通常.png");

	ma03_SB2(1000,1,1000,0);
	ma03_SB3(1100,300);

	OnSE("se特殊_鎧_レース_加速01",1000);


	Move("絵st001", 800, -150, @+50, Dxl1, false);

	DrawDelete("黒幕１", 250, 100, "slide_01_01_1", true);



	CreateSE("SEL01","se特殊_鎧_レース_巡航音");
	MusicStart("SEL01",1000,500,0,1000,null,true);


	BGMoveAuto("@絵st001",1);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　转过了Ｓ形弯道。
　对我来说，是没什么危险的飞行。

　虽然这实在不是什么表扬的话。
　在这条环形赛道上，我并没有足够的竞技起航技术同
时保证速度和安全都到达极限，所以只是舍弃了速度换
来了安全而已。

　在观众看来也没什么有趣的。
　反正也没什么办法，只能让他们忍一忍了。

　我和先头部队快要拉开半圈的距离了。
现在差距正逐渐拉大，没有要缩短的迹象。
黄金骑的骑手和骑体的状态好像都很好。
　怎么办呢。

　这种情况下还是不要强追，而是故意慢上一圈更合适
吧。总之只要接近选手们就可以了。
　……虽然不能说是从根本上解决了问题。

　就算暂时接近了，又被拉开的话还是一样。
　既然我的速度大幅度低于对方是事实，和骑手们保持
最近距离的愿望是无论如何都无法实现的。

　需要索性改变想法吗。
　比如无视赛道飞起来…………？

　也是一种办法。
　不过——如果被视为放弃比赛，妨碍比赛的话，
会被逐出赛道。这样会给警察队带来巨大的困扰。

　没有什么好的对策吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240410a07">
《哦，联会准备超了！
　在进攻内线——不过，不行啊！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240420a07">
《横锻的超级猎犬技高一筹！
　牢牢封锁住了内线，使他无从
下手！　第二和第三位没有变动！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240430a08">
《漂亮的攻防战。
　……和他们比起来，最后一名那是什么
啊。真是臭不可闻。》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240440a08">
《垃圾一样的拙作呢，那个剑胄。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240450a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　……一言不发的村正让我实在有点担心。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SEL*", 1000, 0, null);

//◆俯瞰視点
	SetBlur("絵st001", true, 3, 500, 50, false);

	BGMoveDelete();
	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st001", 800, -2500, @-50, Dxl1, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	Delete("絵st001");

	ma_03_SBDelete();

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240460a07">
《第一集团驶过了起点线。
　这样就是五圈了！　进入第六圈！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240470a07">
《还有十五圈。快要进入比赛的中间
阶段了。
　状况开始有些胶着了吗？》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240480a08">
《是这样没错。
　以翔京为首，横锻、联会、田村、
松井……第一集团的排位已经比较稳定了。》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240490a07">
《另一边，后方的形势还很混乱。
　有人撞上，有人滑出赛道，
正在上演激烈的争斗！》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240500a07">
《但是，只有最后一名的警察队还有些孤立！
　果然用预备骑体来参赛是不现实的吗!?
　昨天的事故太沉重了吗！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240510a07">
《就算如此警察队还是在奔跑！　到场的诸位，
这并不是在用各位的血汗钱！　他们并不是
浪费各位的税金前来参赛！　用的是月薪！
从月薪中凑出费用的！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240520a07">
《他们从微薄的月薪中省下重要的一部分，把每顿
伙食费从三十元砍到二十元，凭借如此筹集到的钱
奔跑！　伟大啊警察同志！　加油啊警察同志！
　乘着失去的薪水飞吧，热狗！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240530a07">
《冲吧——热狗！
　不要输啊热狗！
　加油努力吧热狗——————!!》

{	FwC("cg/fw/fw茶々丸変装_泣き.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240540a07">
《呜呜————！
　助威的我好像白痴一样——！》

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240550a08">
《别去管他就行了吧!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正視点
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 20000, "#000000");

	FadeDelete("上背景", 300, true);
	Wait(1000);
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,182,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_024_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("絵暗転", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我停止烦恼。
　……果然，基本没有称心如意的方法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240560a00">
「村正。离开赛道吧。
　这种情况没有办法了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240570a01">
《………………》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240580a00">
「从上空来把握选手集团————
　……村正？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240590a01">
《…………
　跑起来……就可以了吧……？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240600a00">
「喂？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240610a01">
《如果飞快一点的话就可以了吧。
　……飞……快一点的话!!》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240620a00">
「回答我，村正。
　你了解状况吗。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240630a01">
《……呜。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　它没了解。
　不，应该说村正已经沉入这种状况之中了吧。

　村正的注意力集中在遥远的前方。
　集中在远处他们驾驶的竞技用剑胄上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240640a00">
「村正——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240650a01">
《别小瞧我<RUBY text="···">小鬼们</RUBY>!!
　不过是纸糊的一戳就破!!》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240660a01">
《让你们感受一下——
　真正剑胄的力量!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　喂。
　在这之前。
　能告诉我，你到底想干什么吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240670a01">
《磁装·正极！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正マグネットコーティング
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#003399");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　……磁力镀装！
　和形成防御屏障的负极相反，朝自身作用的
正极——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240680a00">
「冷静一点村正。
　这个办法我也考虑过。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240690a01">
《————》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240700a00">
「但是无法弥补差距。
　只会白白消耗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　磁装·正极是将装甲全部领域进行分割，分层进行磁
化，利用产生吸附和反作用力令各个动力系统变得更加
有效率。
　可以期待机动性的提高。

　但是，阴义必然会消耗热量，效果也和热量消耗的程
度成比例。
　如果要达到显著的效果——匹敌竞技用剑胄的速度之
类——消耗也会很大。

　不可能持久的。而且，能否做到这种事本身也存在疑
问。
　我得出的结论，就是这种状况下这个办法无效。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240710a01">
《——主君。请让我执行。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240720a00">
「我觉得对话没有成立。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240730a01">
《我会把你带到<RUBY text="··">那里</RUBY>去！
　我不会说谎的。主君，
这是你想要的最佳做法。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　……虽然我觉得这做不到。
　我在头脑内进行计算。

　一种情况是，我继续和处于兴奋状态的村正争论。
　另一种情况，是随它喜欢。
　哪种情况更危险。哪种情况是更<RUBY text="·····">致命的失败</RUBY>。

　没用多长时间，我就得出了结论。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240740a00">
「……磁力加速。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 300, 0, null);

//◆村正磁力加速
//嶋：ev指定：ev904_村正マグネットコーティング_c
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	ma_03_SBDelete();
	ma03_024_runsDelete();

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_c.jpg");
	CreateTextureSP("絵背景200", 200, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_c.jpg");

	ma03_024_shakeloop("@絵背景200",2,1);

	DrawDelete("黒幕１", 250, 100, "slide_01_01_1", true);

	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#003399");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);



	CreateSE("SE02","se特殊_陰義_磁力加速03_L");
	MusicStart("SE02",500,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　咒句实行。

　风变硬，变重了。
　是速度急升带来的。

　和之前完全不同的快速。
　………即使如此，我也才刚刚到达了一线竞技用剑胄
的最后方。

　总之，和前方的差距不再扩大了。
　等待其他骑手犯错由此排名上升也是有可
能的了。当然，
这是在自己不犯错的前提之下。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240750a00">
「……这样就满足了吧？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240760a01">
《这才刚开始哦。》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240770a00">
「什么？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　我身上的剑胄低声说道。
　我不由得产生了不祥的预感。

　——装甲带上了异样的<RUBY text="····">某种东西</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240780a01">
《天地万物皆存吸引之力。
　此作用称为引辰，此力量称为辰气——》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆重力波。青黒い？
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,500,null,false);
	CreateTextureEX("絵ＥＦ", 300, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_c.jpg");
	SetTone("絵ＥＦ", NegaPosi);
	Fade("絵ＥＦ", 200, 1000, null, false);
	DrawTransition("絵ＥＦ", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	ma03_024_GC();

	CreateColorEXover("絵色", 5000, "#7900BE");
	Fade("絵色", 200, 1000, null, false);
	WaitKey(100);

	FadeDelete("絵色", 300, false);
	DrawDelete("絵ＥＦ", 300, 100, "circle_02_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　…………!?
　这是——难道。

　难道。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240790a00">
「你在做什么!?」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240800a01">
《辰气聚集。》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正、グラビティコーティング
	CreateSE("SE01","se特殊_コックピット_起動音04");
	MusicStart("SE01",0,1000,0,750,null,false);

	ma03_024_GCPC(500,1000,5000);

	CreateTextureEXsub("絵ＥＦ", 100, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_c.jpg");
	SetBlur("絵ＥＦ", true, 3, 600, 50, false);
	Fade("絵ＥＦ", 200, 500, null, false);

	WaitKey(200);

	FadeDelete("絵ＥＦ", 2000, false);
	Zoom("絵ＥＦ", 600, 1200, 1200, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　装甲周围充满了能量。
　这不是作为村正自身性质的磁力操作。

　这是完全不同的力量。
　但却是很相似的力量——

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240810a00">
「这是……重力操作……」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240820a01">
《……该说是重力操作的亚流吧。》

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240830a00">
「为什么你能做到这种事？
　这是……」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240840a00">
「这是……
　<RUBY text="···">银星号</RUBY>的能力吧！」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240850a01">
《破坏了“卵”回收野太刀碎片的时候
<RUBY text="··">附赠</RUBY>的哦。
　虽然只有一点而已。》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　……“卵”是银星号力量的结晶。
　这一次的“卵”是加上了村正的力量——野太刀的
碎片后生成的。

　难道是野太刀的碎片回到村正身上的时候，把混在
里面的银星号的“力量”也一起带过来了吗……！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240860a00">
「能操控吗？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240870a01">
《这种高度的话可以。也许，辰气距离地表越
近越好操控……应该吧。
　虽然做不到母亲那样……但至少可以让腿脚
变得轻快些。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240880a01">
《足以击败那些<RUBY text="··">赝品</RUBY>了！》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆弾けるエネルギー。バチバチと。
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se特殊_陰義_発動03");
	CreateSE("SE02","se特殊_電撃_帯電01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	MusicStart("SE02",0,1000,0,800,Axl2,true);

	ma03_024_GCPC(500,1000,4000);
	CreateColorEXadd("絵フラ", 5000, "#000033");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240890a01">
《主君！》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240900a00">
「——辰气加速。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆重力加速。ばびーん。
//嶋：ev指定：ev904_村正マグネットコーティング_d

	CreateSE("SE03","se戦闘_陰義_磁力展開");
	MusicStart("SE03",0,1000,0,1000,null,false);

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE04a","se特殊_電撃_放電01");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	ma03_024_GCPDelete();

	CreateSE("SE04","se戦闘_動作_空突進03");
	MusicStart("SE04",0,1000,0,1500,Dxl2,false);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

	PrintGO("上背景", 25000);
//◆俯瞰視点
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm25",0,1000,true);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240910a07">
《…………哎———————
—————————————!?》

{	FwC("cg/fw/fw雷蝶_仰天.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240920a08">
《那是什么啊—————
—————————!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆観客席
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);

	CreateSE("SE01","se背景_ガヤ_歓声02");
	MusicStart("SE01",600,1000,0,1000,null,true);

	FadeDelete("上背景", 200, true);
	FadeDelete("絵暗転", 200, true);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0240930a03">
「爱，传到了!?」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0240940a02">
「骗人————————
——————————!?」

{	FwC("cg/fw/fwさよ_怒り.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0240950a04">
「噗————」
　
（→喷出了爆米花）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	Cockpit_AllFade2();

	CP_SpeedChange(0,256,null,true);
	MyTr_Count(0,381);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_024_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	$ma03_024_runs01 = 100;
	$ma03_024_runs02 = 200;
	CreateSE("SE01","se特殊_陰義_重力コーテイング01");

	CreateColorEXmul("絵24co", 2500, "#330033");
	Fade("絵24co", 0, 500, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateSE("SE02","se特殊_鎧_レース_巡航音");
	MusicStart("SE02",500,700,0,1000,null,true);
	FadeDelete("上背景", 200, true);
	FadeDelete("絵暗転", 200, true);

	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Delete("絵24co");


	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0240960a07">
《厉害——！　厉害啊热狗！
　完全不明白是怎么做到的——加速然后一口气
追了上去——————————!!》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0240970a08">
《怎么回事啊！　为什么那样的骑体可以那么
突然就产生这么快的速度啊！
　不可能的啊，去联络监视员！　确认一下有
没有用什么奇怪的器械！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0240980a00">
「村正！　太快了！
　无论是谁看都很奇怪！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0240990a01">
《力量的控制……有点困难……
　但追上了不就可以了吗!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0241000a00">
「虽说是这样，但我不想这么引人注意！
　到后面会很头疼的！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0241010a01">
《那么，等到后面再去头疼吧！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0241020a00">
「我一点都不想和『谜之超新星出现』这种平庸
陈腐的新闻一起装饰下个月装甲竞技杂志封面啊！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0241030a01">
《不是很好吗，实现了你童年的梦想！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0241040a00">
「降低速度——————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXmul("絵24co", 2500, "#330033");
	CreateSE("SE01","se特殊_陰義_グラビティアクセル加速");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Fade("絵24co", 100, 500, null, true);
	Fade("絵24co", 100, 0, null, true);
	Delete("絵24co");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　村正似乎在被翻滚的力量<RUBY text="···">所左右</RUBY>，我向它喊道。
　虽然不知道我的声音能否传到村正那里。

　我已经感觉不到风了。
　空气已经消失了。这里就是如此的领域。

　很清新。
　很美妙。
　……这不是开玩笑。

　这是装甲竞技中甚至都<RUBY text="·····">没有的世界</RUBY>。
　怎么能到达这种境地呢。

　我将精神的指尖伸向装甲表面盘旋的力量。
　既然村正无法独自控制，那么只能由我同时进行控制。

　我握紧了像是沸腾瀑布般的能量漩涡。
　意识白热化。脑梁像是要炸开。左脑和右脑分隔开，
自己分成了两半。

　封印住——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆エネルギー集束
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#330033");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　还差一点——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆集束
//◆減速

	CP_SpeedChange(1000,204,null,false);
	MyTr_Count(1000,213);
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,750,null,false);
	SetVolume("SE02", 1000, 400, null);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	OnSE("se特殊_鎧_レース_減速01",1000);

	$ma03_024_runs01 = 200;
	$ma03_024_runs02 = 300;
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0241050a07">
《噢噢!?　热狗，停止加速了！
　虽然到最后我们也没明白到底是怎么回事，
不过看上去好像到极限了。》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0241060a07">
《似乎回复到安稳的行驶中了。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0241070a08">
《……但现在……和之前为止的行驶相比，
还是非常的快呢。
　这是他真正的性能吗……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　我将重力加速缩小到可控制的范围内。
　骑体恢复了稳定的状态。

　……终于平静下来了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0241080a00">
「维持这个速度吧，村正。
　不要再加速了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0241090a01">
《嗯……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE02", 500, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	ma03_024_runsDelete();
	Cockpit_AllFade0();

	DrawDelete("上背景", 125, 100, "slide_01_03_1", true);
	WaitKey(50);
	DrawDelete("絵暗転", 125, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0241100a07">
《哎呀——真厉害呢。
　说起来你——好像说过那是非常平庸的拙作，
狠狠批了一顿吧？》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0241110a08">
《……呜。
　知道了啦。吾收回，吾承认了好吧。》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0241120a08">
《那个骑体并不一般啊。
　虽然是有搞不懂的地方……》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0241130a08">
《那加速十分超常——并且也很美丽。
　仅仅是看到这一幕，也可以说他足够参加这
次的决赛了吧。》

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0241140a07">
《这就是主办者说的话。
　太好了呢——警察同志！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0241150a01">
《嘻嘻。》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0241160a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

..//ジャンプ指定
//次ファイル　"ma03_025.nss"


}

..//◆1.ma03_SB2
function ma03_SB2($サーキット真横_BG,$ma03_BGNum,$ma03_BGTime,$ma03_BGpoint){

	if($ma03_BGNum==1){
	//昼間
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");

	}else if($ma03_BGNum==2){
	//夜
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");

	}else if($ma03_BGNum==3){
//レーススタート直後
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_04.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_04.jpg");

	}else{
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

}

..//◆2.ma03_SB3
function ma03_SB3($サーキット真横_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_01.png");
	SetBlur("Circuit_Bar", true, 3, 300, 8, false);

	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");

}

..//◆3.ma03_SB
function ma03_SB($サーキット真横_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
	SetBlur("Circuit_Bar", true, 3, 300, 8, false);

	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");

}

..//?4.ma_03_SBProcess
function ma_03_SBProcess(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1074, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
	}

}

..//◆5.ma_03_SBDelete
function ma_03_SBDelete(){

	Fade("@Circuit_Bar", 0, 0, null, true);
	Delete("@柱プロセス");
	Delete("@Circuit_Bar");
	SCR1stop();
	Delete("@Circuit*");

}

..//◆6.ma03_024_runs
function ma03_024_runs($md03_024_既存ファイル,優先度,$md03_024_ファイル名){

	CreateTextureEX("絵runs01", 優先度, Center, Middle, $md03_024_ファイル名);
	CreateTextureEX("絵runs02", 優先度, Center, Middle, $md03_024_ファイル名);
	SetBlur("絵runs01", true, 3, 400, 20, false);
	SetBlur("絵runs02", true, 3, 400, 20, false);

	SetVertex("絵runs01", 518, 389);
	SetVertex("絵runs02", 518, 389);
	SetVertex($md03_024_既存ファイル, 518, 389);

	CreateProcess("疾走", 1500, 0, 0, "ma03_024_runsProcess");
	SetAlias("疾走","疾走");
	Request("疾走", Start);

	$ma03_024_runs01 = 125;
	$ma03_024_runs02 = 250;

}

..//◆7.ma03_024_runsProcess
function ma03_024_runsProcess(){

	begin:

		Zoom($md03_024_既存ファイル, 50000, 2000, 2000, AxlAuto, false);
		Shake($md03_024_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);
		Fade($md03_024_既存ファイル, 500, 0, null, false);

		Fade("@絵runs01", $ma03_024_runs01, 500, null, false);
		Zoom("@絵runs01", $ma03_024_runs02, 3000, 3000, AxlAuto, false);

		Wait($ma03_024_runs01);

	while(1){

		Shake($md03_024_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);

		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);
		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_024_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_024_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_024_runs01, 700, Dxl1, false);
		Wait($ma03_024_runs01);

	}


}

..//◆8.ma03_024_runsDelete
function ma03_024_runsDelete(){

	Request("@疾走", Stop);
	Delete("@疾走");
	Delete("@絵runs*");

}

..//◆9.ma03_024_shakeloop
function ma03_024_shakeloop($024SLP,$024揺れ幅x,$024揺れ幅y){

	CreateProcess("揺れ揺れ", 15000, 0, 0, "ma03_024_shakeloopProcess");
	SetAlias("揺れ揺れ","揺れ揺れ");
	Request("揺れ揺れ", Start);

}

..//◆10.ma03_024_shakeloopProcess
function ma03_024_shakeloopProcess(){

	begin:

	while(1){Shake($024SLP, 500000, $024揺れ幅x,$024揺れ幅y, 0, 0, 1000, null, true);}

}

..//◆11.ma03_024_shakeloopDelete
function ma03_024_shakeloopDelete(){

	Request($024SLP, Stop);
	Shake($024SLP, 0, 0, 0, 0, 0, 1000, null, true);
	Delete($024SLP);
	Delete("@揺れ揺れ");

}

..//◆12.ma03_024_GC
function ma03_024_GC(){

	$GCPC_time = 300;
	$GCPC_time2 = 1000;
	$GCPC_time3 = 5000;

	CreateTextureEXmul("絵GC001", 2000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_d.jpg");
	CreateTextureEXover("絵GC002", 1999, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_d.jpg");

	CreateProcess("辰気1", 15000, 0, 0, "ma03_024_GCP1");
	SetAlias("辰気1","辰気1");

	CreateProcess("辰気2", 15000, 0, 0, "ma03_024_GCP2");
	SetAlias("辰気2","辰気2");


	Request("辰気1", Start);
	Request("辰気2", Start);

}

..//◆13.ma03_024_GCP1
function ma03_024_GCP1(){

	begin:

	while(1){
		Zoom("@絵GC001", $GCPC_time3, 1300, 1300, AxlDxl, false);
		Fade("@絵GC001",$GCPC_time2, $GCPC_time, null, true);
		Fade("@絵GC001",$GCPC_time2, 0, null, true);
		Zoom("@絵GC001", 0, 1000, 1000, AxlDxl, true);
	}

}

..//◆14.ma03_024_GCPC
function ma03_024_GCPC($GCPC_time,$GCPC_time2,$GCPC_time3){}

..//◆15.ma03_024_GCP2
function ma03_024_GCP2(){

	begin:

	while(1){
		Fade("@絵GC002",5000, 300, null, true);
		Fade("@絵GC002",5000, 0, null, true);
	}

}

..//◆16.ma03_024_GCPDelete
function ma03_024_GCPDelete(){

	Request("@辰気1",Stop);
	Request("@辰気2",Stop);

	Delete("@辰気*");

	SetBlur("@絵GC001", true, 3, 400, 100, false);
	Fade("@絵GC002",500, 0, null, false);
	Zoom("@絵GC001", 1000, 2000, 2000, AxlDxl, false);
	Fade("@絵GC001",500, 700, null, true);
	FadeDelete("@絵GC001",500, true);

	Delete("@絵GC*");

}


..//◆17.ma03_024_GCF
function ma03_024_GCF(){

	CreateColorEXmul("絵24co", 2500, "#330033");

	CreateTextureEXover("絵24ef", 2000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Zoom("絵24ef", 0, 4000, 4000, null, true);
	Request("絵24ef", Smoothing);

	CreateProcess("辰気色", 15000, 0, 0, "ma03_024_GCFP");
	SetAlias("辰気色","辰気色");

	Request("辰気色", Start);

}

..//◆17.ma03_024_GCFP
function ma03_024_GCFP(){

	begin:

	Fade("@絵24ef",0, 800, null, false);
	DrawTransition("@絵24ef", 0, 0, 200, 200, DxlAxl, "cg/data/circle_02_00_1.png", true);
	Shake("@絵24ef", 500000, 20, 10, 0, 0, 1000, null, false);
//	Rotate("@絵24ef", 500000, @0, @0, 18000, null,false);
	Fade("@絵24co",0, 300, null, false);

while(1){

	Shake("@絵24ef", 500000, 20, 10, 0, 0, 1000, null, true);

}

/*
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 300, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 300, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
*/

}
