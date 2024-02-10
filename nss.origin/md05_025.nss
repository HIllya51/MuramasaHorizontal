//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_025.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_025.nss","AnimeCube_Delete",true);
	Conquest("nss/md05_025.nss","AnimeCube_Slide",true);
	

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
	#ev937_立方陣クイズ説明_a=true;
	#ev937_立方陣クイズ説明_b=true;
	#ev937_立方陣クイズ説明_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "function_magiccube.nss";

}

scene md05_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_024vs.nss"

	PrintBG("上背景", 30000);

//前ファイルの背景が不明なため黒のみ inc櫻井
//前ファイルのつなぎの関係で音楽を入れ替えました。徒歩
	SoundPlay("@mbgm13", 0, 1000, true);

//嶋：ダミー
	CreateTextureEX("クイズ背景", 800, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星d.jpg");
	Zoom("クイズ背景", 0, 1500, 1500, null, true);
	Fade("クイズ背景", 0, 1000, null, true);

	CreateColorEX("絵色100", 801, "Black");
	Fade("絵色100", 0, 500, null, true);


//	CreateTextureSP("キューブ", 800, 0, 0, "cg/sys/magiccube/立方陣座標-02.jpg");

	CreateTextureEX("村正１", 800, 256, 188, "cg/sys/magiccube/立方陣村正-01.png");

	CreateTextureEX("キューブ２", 1100, 256, 188, "cg/sys/magiccube/立方陣村正-02.png");
	CreateTextureEX("村正２", 1000, 256, 188, "cg/sys/magiccube/立方陣村正-03.png");

	CreateTextureEX("キューブ３", 1250, 256, 188, "cg/sys/magiccube/立方陣説明白キューブワク-12.png");
	CreateTextureEX("村正３", 1200, 256, 188, "cg/sys/magiccube/立方陣村正-04.png");

	FadeDelete("上背景",1000,true);

//●問題開始
//◆都合上横書きボックス
//◆※要は「５レベル立体魔方陣を完成させろ」という問題



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　目的是从饥饿虚空的重力圈逃离。
　必要程序是，辰气的调和。

　为了将凶暴的辰气——重力，变得安定，
制造逃脱机会。

　用我的引辰制御，达成目的。

　引辰制御，主要是将辰气从１号至１２５号的
１２５种类进行分类，随后操纵。
  此分类是以辰气的强度为基准，
强度和号码成正比。

　就是说，辰气１最弱，辰气１２５最强。
　辰气１０比辰气２强大五倍，辰气２７和
辰气５６融合，拥有和辰气８３等同的威力。

　能够同时操纵这１２５种辰气。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ev937

	Fade("村正１", 500, 1000, null,true);

//	CreateTextureEX("問題", 15000, @0, @0, "cg/ev/ev937_立方陣クイズ説明_a.jpg");
//	Fade("問題", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　比如，以自我为中心，想象一个立方体的空间。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	Fade("村正２", 500, 1000, null,true);
	Delete("村正１");

//◆立方体表示。ev937a
//	CreateTextureEX("問題02", 16000, @0, @0, "cg/ev/ev937_立方陣クイズ説明_b.jpg");
//	Fade("問題02", 1000, 1000, null, true);
//	Delete("問題");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　将其分割五份。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("村正３", 500, 1000, null,true);
	Delete("村正２");


//◆五単位分割。ev937b
//	CreateTextureEX("問題03", 16500, @0, @0, "cg/ev/ev937_立方陣クイズ説明_c.jpg");
//	Fade("問題03", 1000, 1000, null, true);
//	Delete("問題02");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　假设共计１２５个小立方体。

　在这１２５个立方体空间中，
能够将１２５种辰气一一分配。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ここで出題画面に使う画像を表示
//◆レベル１部分をアピール
//◆レベル１方陣。数字は計算無視の綺麗な配列
//◆レベル２部分をアピール
//◆レベル２方陣
//◆レベル３部分をアピール
//◆レベル３方陣
//◆レベル４部分をアピール
//◆レベル４方陣
//◆レベル５部分をアピール
//◆レベル５方陣
	CreateTextureEX("キューブ３", 1210, Center, Middle, "cg/sys/magiccube/立方陣説明白キューブワク全体-05.png");

	CreateTextureEX("説明レベル１下", 1200, 476, 366, "cg/sys/magiccube/立方陣説明キューブ数字_06_1.png");
	CreateTextureEX("説明レベル２下", 1200, 516, 201, "cg/sys/magiccube/立方陣説明キューブ数字_07_1.png");
	CreateTextureEX("説明レベル３下", 1200, 516, 38, "cg/sys/magiccube/立方陣説明キューブ数字_08_1.png");
	CreateTextureEX("説明レベル４下", 1200, 410, 38, "cg/sys/magiccube/立方陣説明キューブ数字_09_1.png");
	CreateTextureEX("説明レベル５下", 1200, 102, 38, "cg/sys/magiccube/立方陣説明キューブ数字_10_1.png");

	CreateTextureEX("説明レベル１", 1300, 476, 366, "cg/sys/magiccube/立方陣説明キューブ数字_06_1.png");
	CreateTextureEX("説明レベル２", 1300, 516, 201, "cg/sys/magiccube/立方陣説明キューブ数字_07_1.png");
	CreateTextureEX("説明レベル３", 1300, 516, 38, "cg/sys/magiccube/立方陣説明キューブ数字_08_1.png");
	CreateTextureEX("説明レベル４", 1300, 410, 38, "cg/sys/magiccube/立方陣説明キューブ数字_09_1.png");
	CreateTextureEX("説明レベル５", 1300, 102, 38, "cg/sys/magiccube/立方陣説明キューブ数字_10_1.png");

	CreateTextureEX("説明レベル１s", 1200, 256, 308, "cg/sys/magiccube/立方陣説明キューブ_06.png");
	CreateTextureEX("説明レベル２s", 1200, 256, 278, "cg/sys/magiccube/立方陣説明キューブ_07.png");
	CreateTextureEX("説明レベル３s", 1200, 256, 248, "cg/sys/magiccube/立方陣説明キューブ_08.png");
	CreateTextureEX("説明レベル４s", 1200, 256, 218, "cg/sys/magiccube/立方陣説明キューブ_09.png");
	CreateTextureEX("説明レベル５s", 1200, 256, 188, "cg/sys/magiccube/立方陣説明キューブ_10.png");


	Fade("キューブ３", 500, 1000, Dxl1,false);
	Fade("村正３", 500, 0, Axl1,true);

	Fade("説明レベル１", 500, 1000, null, false);
	Fade("説明レベル１s", 500, 1000, null, true);

	WaitKey();

	Fade("説明レベル１下", 500, 1000, null, false);
	Fade("説明レベル１", 500, 0, null, false);
	Fade("説明レベル１s", 500, 0, null, true);

	Fade("説明レベル２", 500, 1000, null, false);
	Fade("説明レベル２s", 500, 1000, null, true);

	WaitKey();

	Fade("説明レベル２下", 500, 1000, null, false);
	Fade("説明レベル２", 500, 0, null, false);
	Fade("説明レベル２s", 500, 0, null, true);

	Fade("説明レベル３", 500, 1000, null, false);
	Fade("説明レベル３s", 500, 1000, null, true);

	WaitKey();

	Fade("説明レベル３下", 500, 1000, null, false);
	Fade("説明レベル３", 500, 0, null, false);
	Fade("説明レベル３s", 500, 0, null, true);

	Fade("説明レベル４", 500, 1000, null, false);
	Fade("説明レベル４s", 500, 1000, null, true);

	WaitKey();

	Fade("説明レベル４下", 500, 1000, null, false);
	Fade("説明レベル４", 500, 0, null, false);
	Fade("説明レベル４s", 500, 0, null, true);

	Fade("説明レベル５", 500, 1000, null, false);
	Fade("説明レベル５s", 500, 1000, null, true);

	WaitKey();

	Fade("説明レベル５下", 500, 1000, null, false);
	Fade("説明レベル５", 500, 0, null, false);
	Fade("説明レベル５s", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　但是如此一来，显然，辰气的调和即重力无法获得
安定。
{	Fade("説明レベル*", 500, 0, null, false);}
　辰气的调和，意味着将辰气强度保持均衡。

　因此，这立方体空间里，若是辰气维持安定状态——

　所有直线，以及，

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆「直線」をいくつかアピール
	CreateTextureEX("level1_01", 1250, 102, 98, "cg/sys/magiccube/例題1キューブ-13.png");
	CreateTextureEX("level1_02", 1250, 102, 98, "cg/sys/magiccube/例題1キューブ-14.png");
	CreateTextureEX("level1_03", 1250, 102, 98, "cg/sys/magiccube/例題1キューブ-15.png");
	CreateTextureEX("level1_04", 1250, 102, 98, "cg/sys/magiccube/例題1キューブ-16.png");
	CreateTextureEX("level1_05", 1250, 102, 98, "cg/sys/magiccube/例題1キューブ-17.png");

	Fade("level1_01", 200, 1000, null, true);
	Wait(100);
	Fade("level1_02", 200, 1000, null, true);
	Wait(100);
	Fade("level1_03", 200, 1000, null, true);
	Wait(100);
	Fade("level1_04", 200, 1000, null, true);
	Wait(100);
	Fade("level1_05", 200, 1000, null, true);

	CreateColorEX("立方体黒", 15000, "Black");
	CreateTextureEX("立方体01", 16000, 357, 115, "cg/sys/magiccube/例題1キューブ-18.png");

	Fade("立方体黒", 500, 500, null, true);
	Fade("立方体01", 300, 1000, null, true);

	WaitKey();

	Delete("立方体*");
	Delete("level1_*");

	CreateTextureEX("level2_01", 1250, 360, 98, "cg/sys/magiccube/例題2キューブ-19.png");
	CreateTextureEX("level2_02", 1250, 360, 98, "cg/sys/magiccube/例題2キューブ-20.png");
	CreateTextureEX("level2_03", 1250, 360, 98, "cg/sys/magiccube/例題2キューブ-21.png");
	CreateTextureEX("level2_04", 1250, 360, 98, "cg/sys/magiccube/例題2キューブ-22.png");
	CreateTextureEX("level2_05", 1250, 360, 98, "cg/sys/magiccube/例題2キューブ-23.png");

	Fade("level2_01", 200, 1000, null, true);
	Wait(100);
	Fade("level2_02", 200, 1000, null, true);
	Wait(100);
	Fade("level2_03", 200, 1000, null, true);
	Wait(100);
	Fade("level2_04", 200, 1000, null, true);
	Wait(100);
	Fade("level2_05", 200, 1000, null, true);

	CreateColorEX("立方体黒", 15000, "Black");
	CreateTextureEX("立方体01", 16000, 357, 115, "cg/sys/magiccube/例題2キューブ-24.png");

	Fade("立方体黒", 500, 500, null, true);
	Fade("立方体01", 300, 1000, null, true);

	WaitKey();

	Delete("立方体*");
	Delete("level2_*");

	CreateTextureEX("level3_01", 1250, 206, 158, "cg/sys/magiccube/例題3キューブ-26.png");
	CreateTextureEX("level3_02", 1250, 206, 158, "cg/sys/magiccube/例題3キューブ-27.png");
	CreateTextureEX("level3_03", 1250, 206, 158, "cg/sys/magiccube/例題3キューブ-28.png");
	CreateTextureEX("level3_04", 1250, 206, 158, "cg/sys/magiccube/例題3キューブ-29.png");
	CreateTextureEX("level3_05", 1250, 206, 158, "cg/sys/magiccube/例題3キューブ-30.png");

	Fade("level3_01", 200, 1000, null, true);
	Wait(100);
	Fade("level3_02", 200, 1000, null, true);
	Wait(100);
	Fade("level3_03", 200, 1000, null, true);
	Wait(100);
	Fade("level3_04", 200, 1000, null, true);
	Wait(100);
	Fade("level3_05", 200, 1000, null, true);

	CreateColorEX("立方体黒", 15000, "Black");
	CreateTextureEX("立方体01", 16000, 357, 115, "cg/sys/magiccube/例題3キューブ-31.png");

	Fade("立方体黒", 500, 500, null, true);
	Fade("立方体01", 300, 1000, null, true);

	WaitKey();

	Delete("立方体*");
	Delete("level3_*");

	CreateTextureEX("level4_01", 1250, 256, 98, "cg/sys/magiccube/例題4キューブ-32.png");
	CreateTextureEX("level4_02", 1250, 256, 98, "cg/sys/magiccube/例題4キューブ-33.png");
	CreateTextureEX("level4_03", 1250, 256, 98, "cg/sys/magiccube/例題4キューブ-34.png");
	CreateTextureEX("level4_04", 1250, 256, 98, "cg/sys/magiccube/例題4キューブ-35.png");
	CreateTextureEX("level4_05", 1250, 256, 98, "cg/sys/magiccube/例題4キューブ-36.png");

	Fade("level4_01", 200, 1000, null, true);
	Wait(100);
	Fade("level4_02", 200, 1000, null, true);
	Wait(100);
	Fade("level4_03", 200, 1000, null, true);
	Wait(100);
	Fade("level4_04", 200, 1000, null, true);
	Wait(100);
	Fade("level4_05", 200, 1000, null, true);

	CreateColorEX("立方体黒", 15000, "Black");
	CreateTextureEX("CubeNum1", 15500, Center, Middle, "cg/sys/magiccube/例題4キューブ-37.png");
	CreateTextureEX("CubeNum2", 16000, Center, Middle, "cg/sys/magiccube/例題4キューブ-38.png");
	CreateProcess("CubeM", 150, 0, 0, "AnimeCube_Slide");
	SetAlias("CubeM","CubeM");

	Fade("立方体黒", 500, 500, null, true);
	Request("CubeM", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　所有对角线，

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆「対角線」をいくつかアピール
	AnimeCube_Delete();

	Delete("立方体*");
	Delete("level4_*");

	CreateTextureEX("level5_01", 1250, 206, 38, "cg/sys/magiccube/例題5キューブ-39.png");
	CreateTextureEX("level5_02", 1250, 206, 38, "cg/sys/magiccube/例題5キューブ-40.png");
	CreateTextureEX("level5_03", 1250, 206, 38, "cg/sys/magiccube/例題5キューブ-41.png");
	CreateTextureEX("level5_04", 1250, 206, 38, "cg/sys/magiccube/例題5キューブ-42.png");
	CreateTextureEX("level5_05", 1250, 206, 38, "cg/sys/magiccube/例題5キューブ-43.png");

	Fade("level5_01", 200, 1000, null, true);
	Wait(100);
	Fade("level5_02", 200, 1000, null, true);
	Wait(100);
	Fade("level5_03", 200, 1000, null, true);
	Wait(100);
	Fade("level5_04", 200, 1000, null, true);
	Wait(100);
	Fade("level5_05", 200, 1000, null, true);

	CreateColorEX("立方体黒", 15000, "Black");
	CreateTextureEX("立方体01", 16000, 357, 115, "cg/sys/magiccube/例題5キューブ-44.png");

	Fade("立方体黒", 500, 500, null, true);
	Fade("立方体01", 300, 1000, null, true);

	WaitKey();

	Delete("立方体*");
	Delete("level5_*");

	CreateTextureEX("level6_01", 1250, 310, 98, "cg/sys/magiccube/例題6キューブ-45.png");
	CreateTextureEX("level6_02", 1250, 310, 98, "cg/sys/magiccube/例題6キューブ-46.png");
	CreateTextureEX("level6_03", 1250, 310, 98, "cg/sys/magiccube/例題6キューブ-47.png");
	CreateTextureEX("level6_04", 1250, 310, 98, "cg/sys/magiccube/例題6キューブ-48.png");
	CreateTextureEX("level6_05", 1250, 310, 98, "cg/sys/magiccube/例題6キューブ-49.png");

	Fade("level6_01", 200, 1000, null, true);
	Wait(100);
	Fade("level6_02", 200, 1000, null, true);
	Wait(100);
	Fade("level6_03", 200, 1000, null, true);
	Wait(100);
	Fade("level6_04", 200, 1000, null, true);
	Wait(100);
	Fade("level6_05", 200, 1000, null, true);

	CreateColorEX("立方体黒", 15000, "Black");
	CreateTextureEX("立方体01", 16000, 357, 115, "cg/sys/magiccube/例題6キューブ-50.png");

	Fade("立方体黒", 500, 500, null, true);
	Fade("立方体01", 300, 1000, null, true);

	WaitKey();

	Delete("立方体*");
	Delete("level6_*");

	CreateTextureEX("level7_01", 1250, 102, 98, "cg/sys/magiccube/例題7キューブ-51.png");
	CreateTextureEX("level7_02", 1250, 102, 98, "cg/sys/magiccube/例題7キューブ-52.png");
	CreateTextureEX("level7_03", 1250, 102, 98, "cg/sys/magiccube/例題7キューブ-53.png");
	CreateTextureEX("level7_04", 1250, 102, 98, "cg/sys/magiccube/例題7キューブ-54.png");
	CreateTextureEX("level7_05", 1250, 102, 98, "cg/sys/magiccube/例題7キューブ-55.png");

	Fade("level7_01", 200, 1000, null, true);
	Wait(100);
	Fade("level7_02", 200, 1000, null, true);
	Wait(100);
	Fade("level7_03", 200, 1000, null, true);
	Wait(100);
	Fade("level7_04", 200, 1000, null, true);
	Wait(100);
	Fade("level7_05", 200, 1000, null, true);

	CreateColorEX("立方体黒", 15000, "Black");
	CreateTextureEX("CubeNum1", 15500, Center, Middle, "cg/sys/magiccube/例題7キューブ-56.png");
	CreateTextureEX("CubeNum2", 16000, Center, Middle, "cg/sys/magiccube/例題7キューブ-57.png");
	CreateProcess("CubeM", 150, 0, 0, "AnimeCube_Slide");
	SetAlias("CubeM","CubeM");

	Fade("立方体黒", 500, 500, null, true);
	Request("CubeM", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
  必须以同等强度分配１２５种辰气。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	AnimeCube_Delete();
	Delete("立方体黒");
	Delete("level7_*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
　……即是说。
　这便是如今，提示我的问题。

　那么开始解题。

　要解决此问题需要高难度的计算。
　时间很少。人体的大脑做不到。即便有剑胄的计算
机能也不足。

　但，若这不足能依靠人体的大脑补足——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆問題画面。方陣はまだ空白
//◆シャキーン。劒冑計算！　レイヤで蜘蛛顔を重ねる？

	OnSE("se特殊_鎧_装着03", 1000);

	CreateTextureSP("問題", 15000, @0, @0, "cg/ev/ev937_立方陣クイズ説明_a.jpg");
	FadeDelete("問題03",1000,true);
	CreateTextureEX("蜘蛛顔", 15100, @-400, @-300, "cg/st/resize/3d村正蜘蛛_正面m.png");
	Fade("蜘蛛顔", 300, 300, null, true);


//◆方陣の数字が一部を残して埋まる


//難易度低下OFFだとここでHIO? inc櫻井

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆システムメッセージ。黄色？
<FONT incolor="YELLOW">　为了使所有直线和对角线的数字总和相同，
请在空格中填入相应的剩余数字。</FONT>

<FONT incolor="YELLOW">　鼠标单击选中的数字后，
再单击选中的空格，
选择的数字将会填入选择的空格内。</FONT>

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

if($立方陣簡易フラグ){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆※難易度低下ＯＮのみ
<FONT incolor="YELLOW">　另，数字的总和是３１５。
　所有的直线和对角线，５个数字的总和要为３１５，
请填入。</FONT>

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

}else{

}

//◆→●問題スクリプト

	ClearWaitAll(1500, 1500);

..//ジャンプ指定
//次ファイル　"md05_025gameover.nss"
//次ファイル　"md05_025end.nss"

}

..//AnimeCube_Delete
function AnimeCube_Delete(){

	Request("@cube_test", Stop);
	Request("@cube_test1", Stop);
	Fade("@CubeNum*", 300, 0, null, true);
	Delete("@CubeNum*");
	Delete("@CubeM");
	Delete("@cube_test");
	Delete("@cube_test2");

}

..//AnimeCube_Slide
function AnimeCube_Slide(){

	begin:

	Fade("@CubeNum1", 300, 1000, null, false);
	Fade("@CubeNum2", 300, 1000, null, true);

	while(1){
		Move("@CubeNum2", 1500, @0, @+174, AxlDxl, true);
		Wait(2000);
		Move("@CubeNum2", 1500, @0, @-174, AxlDxl, true);
		Wait(2000);
	}

}

