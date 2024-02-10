//<continuation number="30">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_026.nss_MAIN
{

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//★ＯＰ
	$express_log=#SYSTEM_skip_express;
	$skip_log=$SYSTEM_skip;
	$auto_log=$SYSTEM_text_auto;

	$SYSTEM_skip=false;
	$SYSTEM_text_auto=false;

	if(#SYSTEM_break_play_movie){MoviePlay("dx/mvOP.ngs", true);}
	else{MoviePlay("dx/mvOP.ngs", false);}

	if(#keep_auto_and_skip){
		if($express_log){
			#SYSTEM_skip_express=$express_log;
		}

		if($skip_log){
			$SYSTEM_skip=true;
		}else if($auto_log){
			$SYSTEM_text_auto=true;
		}
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg002_空a_03=true;
	#bg010_拘置所外観_03=true;

	//▼ルートフラグ、選択肢、次のGameName
//嶋：フラグ
	#一章クリア = true;
	#msong01=true;

	$PreGameName = $GameName;

	$GameName = "ma02_001.nss";

}

scene ma01_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_025.nss"


//◆夜空
//◆関東拘置所
//◆鎌倉署長と景明



	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景5000", 5000, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	CreateTextureSP("絵背景20", 20, Center, Middle, "cg/bg/bg010_拘置所外観_03.jpg");

	StL(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(0,true);
	FadeStR(0,true);

	FadeDelete("上背景", 1000, true);

	WaitKey(1000);

	FadeDelete("絵背景5000", 1000, true);


	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【署長】
<voice name="署長" class="署長" src="voice/ma01/0260010a11">
「湊斗景明。
　涉嫌杀害铃川令法及新田雄飞，
现依法将你逮捕。」

//◆ガチャッ。手錠が掛かる音
{	OnSE("se日常_物_手錠かける",1000);
	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma01/0260020a11">
「……辛苦了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0260030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 10, "#000000");

	FadeDelete("上背景", 2000, true);

	WaitKey(1000);

//◆タイプ音と共に一字ずつ表示するか？

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
《<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);}
兴<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(50);}
隆<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(50);}
四<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(50);}
一<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(50);}
年<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(50);}
一<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(50);}
〇<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(50);}
月<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(50);}
一<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(50);}
二<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(50);}
日<?>
{OnSE("se日常_物_タイプライターキャリッジ戻01",1000);}
》

《<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);}
未<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
决<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
囚<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
凑<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
斗<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
景<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
明<?>
{WaitKey(100);}
　<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
关<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
东<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
拘<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
留<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
所<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
收<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
监<?>
{OnSE("se日常_物_タイプライターキャリッジ戻01",1000);}
》

《<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);}
涉<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
嫌<?>
{OnSE("se日常_物_タイプライターキャリッジ戻01",1000);}
》

《<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);}
杀<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
人<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
罪<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
十<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
四<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
件<?>
{OnSE("se日常_物_タイプライターキャリッジ戻01",1000);}
》

《<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);}
其<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
中<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
一<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
件<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
为<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
亲<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
属<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
杀<?>
{OnSE("se日常_物_タイプライターキータイプ01",1000);
WaitKey(100);}
人<?>
{OnSE("se日常_物_タイプライターキャリッジ戻01",1000);}
》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆テロップ？
//◆　これは英雄の物語ではない。
//◆　英雄を志す者は無用である。

	Wait(2000);

	CreateColorSP("絵黒面", 10000, "#000000");

	CreateColorSP("絵黒地", 150, "#000000");
	Move("絵黒地", 0, -512, @0, null, true);

	CreateTextureSP("絵テロ１", 100, Center, Middle, "cg/sys/Telop/tp_第一編末尾.png");
	Zoom("絵テロ１", 0, 700, 700, null, true);
	Request("絵テロ１", Smoothing);

	FadeDelete("絵黒面", 2000, true);

	WaitKey(2000);

	FadeDelete("絵黒地", 1000, true);

	WaitKey(4000);

	CreateTextureEX("絵テロ２", 100, 300, Middle, "cg/sys/Telop/lg_第一編.png");
	Fade("絵テロ２", 1000, 1000, null, true);

	Wait(1000);

	CreateTextureEX("絵テロ３", 100, 300, Middle, "cg/sys/Telop/lg_第一編了.png");
	Fade("絵テロ３", 1000, 1000, null, true);

	WaitKey(3000);

	ClearWaitAll(1000, 1000);


//◆第一話·了
//◆ＯＰムービー

..//ジャンプ指定
//次ファイル　"ma02_001.nss"

}


//◆２３４５６７８９０１２３４５６７８９０１２３４

/*嶋：退避します＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

※第四話用ボイス
//◎べー：こちらの音声は「ex」フォルダに格納
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ex/0010010b57">
「恶鬼！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ex/0010020b57">
「是你杀的！」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ex/0010030b56">
「恶鬼！」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ex/0010040b56">
「你杀的！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝*/

