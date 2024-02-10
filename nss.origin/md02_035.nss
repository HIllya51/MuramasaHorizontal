//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_035.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md02_035.nss","rec_001",true);
	Conquest("nss/md02_035.nss","rec_ex01",true);
	Conquest("nss/md02_035.nss","rec_ex02",true);
	Conquest("nss/md02_035.nss","rec_002",true);
	Conquest("nss/md02_035.nss","rec_003",true);
	Conquest("nss/md02_035.nss","rec_004",true);
	Conquest("nss/md02_035.nss","rec_005",true);
	Conquest("nss/md02_035.nss","rec_006",true);
	Conquest("nss/md02_035.nss","rec_007",true);
	Conquest("nss/md02_035.nss","rec_008",true);
	Conquest("nss/md02_035.nss","rec_009",true);
	Conquest("nss/md02_035.nss","rec_010",true);
	Conquest("nss/md02_035.nss","rec_011",true);
	Conquest("nss/md02_035.nss","rec_012",true);
	Conquest("nss/md02_035.nss","rec_013",true);
	Conquest("nss/md02_035.nss","rec_Delete",true);
	Conquest("nss/md02_035.nss","Saya_Shake",true);
	Conquest("nss/md02_035.nss","Saya_ShakeProcess",true);
	

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
	#bg008_教室_01=true;
	#bg007_若宮大路a_02=true;
	#bg005_山中_02=true;
	#bg016_公園a_01=true;
	#bg044_研究施設内_01a=true;
	#bg003_荒れ野_01=true;
	#bg096_八幡宮地下岩窟_01a=true;
	#bg099_落書きのような野原と山_01=true;
	#bg109_宇宙空間=true;
	#bg097_堀越御所内景明の部屋_03b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_036.nss";

}

scene md02_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_034.nss"


//◆以下カオス
//◆適当な背景＋適当なキャラを連続でガンガン表示。
//◆霧江（ハロワ）→ストリクス（ヴェドゴニア）→
//◆ナイア→神様（スマガ）→ドクターウェスト→
//◆地球皇帝→沙耶→冷蔵庫→宇宙
//◆で、最後に元の部屋。がばっと起きる。

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	Delete("上背景");

	SoundPlay("@mbgm29", 0, 1000, true);

	Delete("黒幕１");

	rec_001();
	Wait(100);
	rec_002();
	Wait(100);
	rec_003();
	Wait(100);
	rec_004();
	Wait(100);
	rec_005();
	Wait(100);
	rec_006();
	Wait(100);
	rec_007();
	Wait(100);
	rec_008();
	Wait(100);
	rec_009();
	Wait(100);
	rec_010();
	Wait(100);
	rec_011();
	Wait(100);
	rec_012();
	Wait(100);
	rec_013();
	Wait(100);
	rec_ex01();
	Wait(100);
	rec_ex02();
	Wait(100);
	rec_Delete();

	SetVolume("@mbgm29", 1000, 0, null);

	OnBG(100,"bg097_堀越御所内景明の部屋_03b.jpg");
	FadeBG(0,true);

	OnSE("se人体_動作_起きる02", 1000);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//	SetFwC("cg/fw/fw景明_通常b.png");
//【景明】
<voice name="景明" class="景明" src="voice/md02/0350010a00">
「……………………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆つーっと上から蜘蛛村正

	StR(1000, @0, @-350, "cg/st/3d村正蜘蛛_正面.png");
	Rotate("@StR*", 0, @0, @180, @180, null, false);
	Move("@StR*", 1000, @0, @150, null, false);
	FadeStR(1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0350020a01">
《……怎么了？
　不好好睡觉的话，明天会没精神。》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0350030a00">
「不行。
　今晚感觉越睡越累啊。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0350040a01">
《？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("@StR*", 3000, @0, @-450, null, true);


	ClearWaitAll(1500, 1500);

..//ジャンプ指定
//次ファイル　"md02_036.nss"


}

//=====================//
..//rec_001（Chaos;Head）
//=====================//
function rec_001(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureEX("絵Rec100", 100, -90, -45, "cg/bg/bg007_若宮大路a_01.jpg");
	Zoom("絵Rec100", 0, 1200, 1200, null, true);
	Request("絵Rec100", Smoothing);

	CreateTextureEX("絵Recst01_001", 100, Center, Middle, "cg/rec/st梨深_制服_通常ビシッ！_normal.png");
	CreateTextureEX("絵Recst01_002", 110, Center, Middle, "cg/rec/st梨深_制服_通常ビシッ！_normal_eye01.png");
	CreateTextureEX("絵Recst01_003", 120, Center, Middle, "cg/rec/st梨深_制服_通常ビシッ！_normal_eye02.png");

	Move("絵Recst01_001", 0, @-100, @0, null, true);

	Fade("絵Rec100", 0, 1000, null, true);

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	Move("絵Recst01_001", 300, @+100, @0, Dxl1, false);
	Fade("絵Recst01_001", 300, 1000, null, true);

	WaitAction("絵Recst01_001", null);

	Fade("絵Recst01_002", 50, 1000, null, true);
	Fade("絵Recst01_003", 50, 1000, null, true);
	Wait(50);
	Fade("絵Recst01_003", 25, 0, null, true);
	Fade("絵Recst01_002", 25, 0, null, true);

	Wait(200);

	Fade("絵Recst01_002", 10, 1000, null, true);
	Fade("絵Recst01_003", 10, 1000, null, true);
	Wait(10);
	Fade("絵Recst01_003", 5, 0, null, true);
	Fade("絵Recst01_002", 5, 0, null, true);
	Wait(5);
	Fade("絵Recst01_002", 10, 1000, null, true);
	Fade("絵Recst01_003", 10, 1000, null, true);
	Wait(10);
	Fade("絵Recst01_003", 5, 0, null, true);
	Fade("絵Recst01_002", 5, 0, null, true);

	WaitKey(500);

}

//=====================//
..//rec_ex01（そに子）
//=====================//
function rec_ex01(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureEX("絵Recsoni", 1000, Center, InBottom, "cg/rec/そに子.jpg");

	Move("絵Recsoni", 5000, @0, 0, null, false);
	Fade("絵Recsoni", 0, 1000, null, true);

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	WaitKey(5000);

}

//=====================//
..//rec_ex02（オウカ）
//=====================//
function rec_ex02(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureSP("絵Recou", 1000, Center, InBottom, "cg/rec/オウカちゃん.jpg");
	Zoom("絵Recou", 0, 2000, 2000, null, true);
	SetBlur("絵Recou", true, 3, 500, 200, false);

	Zoom("絵Recou", 500, 1000, 1000, null, false);
	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	WaitKey(2000);

}

//=====================//
..//rec_002（神様）
//=====================//
function rec_002(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureSP("絵RecSMG00", 1000, Center, InBottom, "cg/bg/bg006_雄飛の部屋_01.jpg");
	CreateTextureSP("絵RecSMG02", 1500, Center, InBottom, "cg/rec/stRec神様_制服鼻_normal.png");
	CreateTextureSP("絵RecSMG01", 1500, Center, InBottom, "cg/rec/stRec神様_制服_normal.png");

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	Wait(500);

	Fade("絵RecSMG02", 300, 1000, Dxl3, false);
	Fade("絵RecSMG01", 300, 0, Axl1, true);

	WaitKey(500);

}

//=====================//
..//rec_003（ジャンゴ）
//=====================//
function rec_003(){

//あきゅん「演出：カメラの動きを調整しました10/01」

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);
	Delete("@絵Rec*");

	CreateCamera("絵RecＣ", 0, 0, 1000);
	SetAlias("絵RecＣ","絵RecＣ");

	CreateTextureSP("絵RecＣ/絵Recジャン01", 10, InLeft, Middle, "cg/rec/bg09110_3_サンチョアジト_内部n.jpg");
	Zoom("絵RecＣ/絵Recジャン01", 0, 990, 990, null, true);

	CreateTextureEX("絵RecＣ/絵Recジャン02", 500, 760, -160, "cg/rec/buRec_サンチョ.png");
	SetVertex("絵RecＣ/絵Recジャン02", center, bottom);
	Zoom("絵RecＣ/絵Recジャン02", 0, 500, 500, null, true);

	MoveCamera("絵RecＣ", 5000, @576, @0, @0, DxlAuto, false);

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	Wait(500);

	Fade("絵RecＣ/絵Recジャン02", 300, 1000, null, true);

	WaitKey(4000);


/*
	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureEX("絵Recジャン01", 1500, 0, 0, "cg/rec/bg09110_3_サンチョアジト_内部n.jpg");
	CreateTextureEX("絵Recジャン02", 2000, Center, InBottom, "cg/rec/buRec_サンチョ.png");
	Move("絵Recジャン02", 0, @+100, @0, null, true);

	Fade("絵Recジャン01", 0, 1000, null, true);
	Move("絵Recジャン01", 5000, -576, @0, null, false);

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	Wait(500);

	Move("絵Recジャン02", 4700, @-100, @0, Dxl1, false);
	Fade("絵Recジャン02", 300, 1000, null, true);

	WaitKey(4000);
*/

}

//=====================//
..//rec_004（竜_恋）
//=====================//
function rec_004(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureEX("絵Recドラlast00", 1500, Center, InBottom, "cg/rec/st母_軍服happy.png");
	CreateTextureSP("絵Recドラsec05", 1400, -282, InBottom, "cg/rec/st重機兵_通常damage.png");
	CreateTextureSP("絵Recドラsec06", 1400, 220, InBottom, "cg/rec/st重機兵_通常damage.png");
	CreateTextureEX("絵Recドラset02", 1300, -38, InBottom, "cg/rec/st重機兵_通常ready.png");
	CreateTextureEX("絵Recドラset03", 1200, -400, InBottom, "cg/rec/st重機兵_通常attack.png");
	CreateTextureEX("絵Recドラset04", 1100, 300, InBottom, "cg/rec/st重機兵_通常normal.png");
	Move("絵Recドラset04", 0, 1024, @0, null, true);
	Move("絵Recドラset02", 0, 1024, @0, null, true);
	Move("絵Recドラset03", 0, 1024, @0, null, true);

	Move("絵Recドラsec05", 0, -1024, @0, null, true);
	Move("絵Recドラsec06", 0, -1024, @0, null, true);
	Move("絵Recドラlast00", 0, @0, @+576, null, true);

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	Move("絵Recドラset04", 500, 300, @0, Dxl1, false);
	Move("絵Recドラset02", 500, -38, @0, Dxl1, false);
	Move("絵Recドラset03", 500, -400, @0, Dxl1, false);
	Fade("絵Recドラset*", 300, 1000, null, true);

	Wait(100);

	Move("絵Recドラsec05", 500, -282, @0, Dxl1, false);
	Move("絵Recドラsec06", 500, 220, @0, Dxl1, false);

	Fade("絵Recドラsec*", 300, 1000, null, true);

	Wait(200);

	Move("絵Recドラlast00", 500, @0, @-576, Dxl1, false);
	Fade("絵Recドラlast00", 300, 1000, null, true);

	WaitKey(1000);

}

//=====================//
..//rec_005（天使）
//=====================//
function rec_005(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureEX("絵Rec安藤01", 100, Center, Middle, "cg/rec/stRec_安藤組.png");
	Fade("絵Rec安藤01", 500, 1000, Dxl1, true);

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	WaitKey(300);

}

//=====================//
..//rec_006（塵骸）
//=====================//
function rec_006(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureEX("絵Rec海鮮01", 100, Center, Middle, "cg/rec/stRec_海鮮丼.png");
	CreateTextureEX("絵Rec海鮮02", 1000, Center, Middle, "cg/rec/stRec_海鮮丼.png");
	SetBlur("絵Rec海鮮02", true, 4, 600, 100, false);

	Fade("絵Rec海鮮01", 0, 1000, null, false);
	Fade("絵Rec海鮮02", 0, 1000, null, true);

	Zoom("絵Rec海鮮02", 700, 2000, 2000, Dxl1, false);
	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");
	Fade("絵Rec海鮮02", 500, 0, Dxl1, false);

	WaitKey(500);

}

//=====================//
..//rec_007（塵骸）
//=====================//
function rec_007(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureEX("絵Rec冷蔵01", 1000, Center, Middle, "cg/rec/stRec_冷蔵庫.png");
	Zoom("絵Rec冷蔵01", 0, 5000, 5000, null, true);
	SetBlur("絵Rec冷蔵01", true, 4, 300, 50, false);

	Shake("絵Rec冷蔵01", 400, 55, 50, 10, 10, 1000, null, false);
	Fade("絵Rec冷蔵01", 400, 1000, Dxl1, false);
	Zoom("絵Rec冷蔵01", 400, 1000, 1000, AxlDxl, false);
	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	WaitKey(500);

}

//=====================//
..//rec_008（デモンベイン）
//=====================//
function rec_008(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateColorSP("絵Rec100", 1500, "Black");

	CreateTextureEX("絵Recデモ", 2000, Center, InBottom, "cg/rec/stRec_地球皇帝.png");
	Request("絵Recデモ", Smoothing);
	Move("絵Recデモ", 0, @+50, @0, Dxl1, true);

	Fade("絵Recデモ", 0, 1000, null, true);
	Move("絵Recデモ", 1000, @0, @+256, Dxl1, false);
	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	WaitKey(500);

}

//=====================//
..//rec_009（デモンベイン）
//=====================//
function rec_009(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateColorSP("絵Rec100", 900, "Black");

	CreateTextureSP("絵Rec機神01", 1000, Center, InBottom, "cg/rec/stRec_ナイア01.png");
	SetVertex("絵Rec機神01", center, bottom);
	Zoom("絵Rec機神01", 0, 900, 900, null, true);
	Request("絵Rec機神01", Smoothing);

	CreateTextureEX("絵Rec機神02", 1000, Center, InBottom, "cg/rec/stRec_ナイア02.png");
	SetVertex("絵Rec機神02", center, bottom);
	Zoom("絵Rec機神02", 0, 900, 900, null, true);
	Request("絵Rec機神02", Smoothing);

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	Wait(500);

	Fade("絵Rec機神02", 300, 1000, Dxl1, false);
	Fade("絵Rec機神01", 300, 0, Axl1, true);

	WaitKey(500);

}


//=====================//
..//rec_010（ヴェド）
//=====================//
function rec_010(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureSP("絵Rec吸血100", 100, Center, Middle, "cg/bg/bg003_荒れ野_03.jpg");
	CreateTextureSP("絵Rec吸血110", 1000, Center, InBottom, "cg/rec/stRec_ストリクス.png");
	SetVertex("絵Rec吸血110", center, bottom);
	Zoom("絵Rec吸血110", 0, 900, 900, null, true);
	Request("絵Rec吸血110", Smoothing);

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	WaitKey(500);

}

//=====================//
..//rec_011（鬼哭）
//=====================//
function rec_011(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureSP("絵Rec鬼哭", 1100, Center, Middle, "cg/rec/stRec_ペトリューシュカ.png");
	Request("絵Rec鬼哭", Smoothing);
	Zoom("絵Rec鬼哭", 0, 1500, 1500, null, true);

	SetBlur("絵Rec鬼哭", true, 3, 500, 50, false);

	Zoom("絵Rec鬼哭", 400, 1000, 1000, Dxl1, false);

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	WaitKey(500);

}

//=====================//
..//rec_012（沙耶）
//=====================//
function rec_012(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	CreateTextureEX("絵Rec沙耶", 1000, Center, InBottom, "cg/rec/evRec_沙耶a.jpg");
	Request("絵Rec沙耶", Smoothing);

	CreateTextureEX("絵Rec沙耶10", 1000, Center, InBottom, "cg/rec/evRec_沙耶a.jpg");

	CreateTextureEX("絵Rec沙耶00", 1000, Center, InTop, "cg/rec/evRec_沙耶b.jpg");

	CreateTextureEX("絵Rec沙耶01", 1200, Center, -480, "cg/rec/evRec_沙耶a.jpg");
	CreateTextureEX("絵Rec沙耶02", 1200, Center, 275, "cg/rec/evRec_沙耶a.jpg");

	CreateTextureEX("絵Rec沙耶03", 1200, Center, -192, "cg/rec/evRec_沙耶b.jpg");
	CreateTextureEX("絵Rec沙耶04", 1200, Center, 144, "cg/rec/evRec_沙耶a.jpg");


	Move("絵Rec沙耶", 500, @0, @+192, DxlAuto, false);
	Fade("絵Rec沙耶", 300, 1000, null, true);

	Saya_Shake();

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	WaitKey(3000);

}

//=====================//
..//rec_013（スマガＳＰ）
//=====================//
function rec_013(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");


	CreateTextureSP("絵Recbg001", 100, Center, Middle, "cg/bg/bg001_空c_03.jpg");

	CreateTextureEX("絵Recst01_001", 100, 23, InBottom, "cg/rec/stデネブ_箒乗り_魔服_rage.png");
	CreateTextureEX("絵Recst01_002", 110, 512, InBottom, "cg/rec/stカペラ_箒乗り_魔服_rage.png");

	CreateTextureEX("絵Recef01_001", 1000, Center, Middle, "cg/rec/ef_ef_カペラリネアビームa.jpg");
	CreateTextureEX("絵Recef01_002", 1100, Center, Middle, "cg/rec/ef_ef_デネブリネアビームa.jpg");
	Zoom("絵Recef01_001", 0, 1500, 1500, null, true);
	Zoom("絵Recef01_002", 0, 1500, 1500, null, true);
	SetBlur("絵Recef01_001", true, 3, 500, 50, false);
	SetBlur("絵Recef01_002", true, 3, 500, 50, false);

	Move("絵Recst01_001", 0, @-100, @+50, null, true);
	Move("絵Recst01_002", 0, @+100, @+50, null, true);

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

	Move("絵Recst01_001", 300, @+100, @-50, Dxl1, false);
	Move("絵Recst01_002", 300, @-100, @-50, Dxl1, false);

	Fade("絵Recst01_001", 300, 1000, null, false);
	Fade("絵Recst01_002", 300, 1000, null, true);

	Wait(200);

	Zoom("絵Recef01_001", 300, 750, 750, null, false);
	Fade("絵Recef01_001", 300, 1000, null, true);

	Zoom("絵Recef01_002", 300, 750, 750, null, false);
	Fade("絵Recef01_002", 300, 1000, null, true);

	WaitKey(100);

}

//=====================//
..//rec_Delete
//=====================//
function rec_Delete(){

	CreateColorEXadd("フラッシュホワイト", 15000, "WHITE");
	Fade("フラッシュホワイト",300,1000,null,true);

	Delete("@絵Rec*");

	Fade("フラッシュホワイト",300,0,null,true);
	Delete("フラッシュホワイト");

}

//=====================//
..//Saya_Shake
//=====================//
function Saya_Shake(){


	CreateProcess("絵Rec沙耶Ｐ", 150, 0, 0, "Saya_ShakeProcess");
	SetAlias("絵Rec沙耶Ｐ","絵Rec沙耶Ｐ");
	Request("絵Rec沙耶Ｐ", Start);


}

//=====================//
..//Saya_ShakeProcess
//=====================//
function Saya_ShakeProcess(){


	begin:

while(1){

	Fade("@絵Rec沙耶01", 10, 800, null, true);

	Fade("@絵Rec沙耶01", 0, 0, null, false);
	Fade("@絵Rec沙耶02", 15, 800, null, true);

	Fade("@絵Rec沙耶02", 0, 0, null, false);
	Fade("@絵Rec沙耶03", 15, 800, null, true);

	Fade("@絵Rec沙耶03", 0, 0, null, false);
	Fade("@絵Rec沙耶01", 20, 800, null, true);

	Fade("@絵Rec沙耶10", 0, 1000, null, false);
	Fade("@絵Rec沙耶01", 0, 0, null, false);
	Fade("@絵Rec沙耶02", 18, 800, null, true);

	Fade("@絵Rec沙耶10", 0, 0, null, false);
	Fade("@絵Rec沙耶02", 0, 0, null, false);
	Fade("@絵Rec沙耶04", 20, 800, null, true);

	Fade("@絵Rec沙耶10", 0, 1000, null, false);
	Fade("@絵Rec沙耶04", 0, 0, null, false);
	Fade("@絵Rec沙耶01", 14, 800, null, true);

	Fade("@絵Rec沙耶10", 0, 0, null, false);
	Fade("@絵Rec沙耶01", 0, 0, null, false);
	Fade("@絵Rec沙耶02", 20, 800, null, true);

	Fade("@絵Rec沙耶02", 15, 0, null, true);

	Wait(200);

	Fade("@絵Rec沙耶10", 0, 1000, null, false);
	Fade("@絵Rec沙耶02", 0, 0, null, false);
	Fade("@絵Rec沙耶03", 20, 800, null, true);

	Fade("@絵Rec沙耶10", 0, 0, null, false);
	Fade("@絵Rec沙耶03", 0, 0, null, false);
	Fade("@絵Rec沙耶01", 20, 800, null, true);

	Fade("@絵Rec沙耶01", 0, 0, null, false);
	Fade("@絵Rec沙耶02", 20, 800, null, true);

	Fade("@絵Rec沙耶10", 0, 1000, null, false);
	Fade("@絵Rec沙耶02", 0, 0, null, false);
	Fade("@絵Rec沙耶04", 20, 800, null, true);

	Fade("@絵Rec沙耶10", 0, 0, null, false);
	Fade("@絵Rec沙耶00", 0, 1000, null, false);
	Fade("@絵Rec沙耶04", 0, 0, null, false);
	Fade("@絵Rec沙耶01", 20, 800, null, true);

	Fade("@絵Rec沙耶00", 0, 0, null, false);
	Fade("@絵Rec沙耶01", 0, 0, null, true);

	Fade("@絵Rec沙耶03", 0, 0, null, false);
	Fade("@絵Rec沙耶01", 20, 800, null, true);

	Fade("@絵Rec沙耶03", 0, 0, null, false);
	Fade("@絵Rec沙耶02", 20, 800, null, true);

	Fade("@絵Rec沙耶02", 0, 0, null, false);
	Fade("@絵Rec沙耶01", 20, 800, null, true);

	Fade("@絵Rec沙耶00", 0, 1000, null, false);
	Fade("@絵Rec沙耶01", 0, 0, null, false);
	Fade("@絵Rec沙耶04", 20, 800, null, true);

	Fade("@絵Rec沙耶00", 0, 0, null, false);
	Fade("@絵Rec沙耶04", 0, 0, null, false);
	Fade("@絵Rec沙耶03", 20, 800, null, true);

	Fade("@絵Rec沙耶03", 0, 0, null, true);


}

}


