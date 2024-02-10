$Revision: 137 $
#include "nss/function_stand.nss"
#include "nss/function_process.nss"


//■マクロをさらにマクロにてまとめて定義
//=============================================================================//
.//まとめ定義
//=============================================================================//
..SystemInit
function SystemInit()
{
//	$SYSTEM_text_interval = 0;
	$SYSTEM_text_interval = 48;
//	$SYSTEM_text_interval = 90;

//	$SYSTEM_text_waitkey=true;

	$SYSTEM_spt_name = $構成名 + $スクリプトバージョン;

	//■一度読み込んだら再度読み込んでしまわないように。
	if(!$BGM_Init){
		if($Logo){
			//CreateTexture("タイトル警告", 100, 0, 0, "cg/sys/title/ローディング.png");
			//Fade("背景１", 0, 0, null, true);
			//Fade("背景１", 300, 1000, null, true);
		}
		InitBGM();
		$BGM_Init = true;
	}

	if(! $BOX_Init){
		LoadBox();
		SystemSet();
		$BOX_Init = true;
	}

	//Fade("タイトル警告", 300, 0, null, true);
	//Delete("タイトル警告");
}


//■テキストボックス·フォント、スクリプト中よく定義するものをマクロにてまとめて定義。
//=============================================================================//
.//ボックス定義
//=============================================================================//
..SystemSet
function SystemSet()
{
	//◆超速対応だお
	SystemConquest();
}

..SystemConquest
function SystemConquest()
{
	//◆超速対応
	Conquest("nss/function.nss",null,true);
	Conquest("nss/sys_config.nss",null,true);
	Conquest("nss/function_stand.nss",null,true);
	Conquest("nss/function_process.nss",null,true);

	Conquest("nss/function.nss",null,true);
	Conquest("nss/function_move.nss",null,true);
	Conquest("nss/function_select.nss",null,true);
	Conquest("nss/function_cockpit.nss",null,true);
	Conquest("nss/function_quick.nss",null,true);
	Conquest("nss/sys_hmode.nss",null,true);
}



..Box
function LoadBox()
{

	CreateName("遠０");
	SetAlias("遠０", "遠０");
	Request("遠０", Lock);
	CreateName("遠１");
	SetAlias("遠１", "遠１");
	Request("遠１", Lock);
	CreateName("遠２");
	SetAlias("遠２", "遠２");
	Request("遠２", Lock);
	CreateName("遠３");
	SetAlias("遠３", "遠３");
	Request("遠３", Lock);
	CreateName("遠４");
	SetAlias("遠４", "遠４");
	Request("遠４", Lock);
	CreateName("遠５");
	SetAlias("遠５", "遠５");
	Request("遠５", Lock);

	CreateName("近０");
	SetAlias("近０", "近０");
	Request("近０", Lock);
	CreateName("近１");
	SetAlias("近１", "近１");
	Request("近１", Lock);
	CreateName("近２");
	SetAlias("近２", "近２");
	Request("近２", Lock);
	CreateName("近３");
	SetAlias("近３", "近３");
	Request("近３", Lock);
	CreateName("近４");
	SetAlias("近４", "近４");
	Request("近４", Lock);
	CreateName("近５");
	SetAlias("近５", "近５");
	Request("近５", Lock);

	CreateWindow("box0", 20001, 0, 0, 1024, 576, false);
	SetAlias("box0", "box0");
	Request("box0", Lock);


//特殊用
	CreateTexture("boxH", 20000, 264, InBottom, "cg/sys/adv/THTextWindow.png");
	SetAlias("boxH", "boxH");
	Fade("boxH",0,0,null,false);
	Request("boxH", Lock);
	Request("boxH", Hideable);
	Move("boxH", 0, @0, @+4, null, true);

	CreateTexture("boxTH", 20000, 224, InBottom, "cg/sys/adv/THTextWindow_Fw.png");
	SetAlias("boxTH", "boxTH");
	Fade("boxTH",0,0,null,false);
	Request("boxTH", Lock);
	Request("boxTH", Hideable);
	Move("boxTH", 0, @0, @+4, null, true);

	CreateTexture("boxAll", 20000, Center, Middle, "cg/sys/adv/fullwindow.png");
	SetAlias("boxAll", "boxAll");
	Fade("boxAll",0,0,null,false);
	Request("boxAll", Lock);
	Request("boxAll", Hideable);

	CreateTexture("boxCH", 20000, 264, middle, "cg/sys/adv/THTextWindow.png");
	SetAlias("boxCH", "boxCH");
	Fade("boxCH",0,0,null,false);
	Request("boxCH", Lock);
	Request("boxCH", Hideable);

	CreateTexture("boxCTH", 20000, 224, Middle, "cg/sys/adv/THTextWindow_Fw.png");
	SetAlias("boxCTH", "boxCTH");
	Fade("boxCTH",0,0,null,false);
	Request("boxCTH", Lock);
	Request("boxCTH", Hideable);

//真ん中通常
	CreateTexture("boxCC", 20000, Center, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxCC", "boxCC");
	Fade("boxCC",0,0,null,false);
	Request("boxCC", Lock);
	Request("boxCC", Hideable);
	Move("boxCC", 0, @+2, @0, null, true);

//真ん中会話
	CreateTexture("boxCT", 20000, Center, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxCT", "boxCT");
	Fade("boxCT",0,0,null,false);
	Request("boxCT", Lock);
	Request("boxCT", Hideable);
	Move("boxCT", 0, @+2, @0, null, true);

//右側通常
	CreateTexture("boxRR", 20000, Center, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxRR", "boxRR");
	Fade("boxRR",0,0,null,false);
	Request("boxRR", Lock);
	Request("boxRR", Hideable);

	Move("boxRR", 0, @+258, @0, null, true);


//右側会話
	CreateTexture("boxRT", 20000, Center, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxRT", "boxRT");
	Fade("boxRT",0,0,null,false);
	Request("boxRT", Lock);
	Request("boxRT", Hideable);

	Move("boxRT", 0, @+258, @0, null, true);

//左側通常
	CreateTexture("boxLL", 20000, Center, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxLL", "boxLL");
	Fade("boxLL",0,0,null,false);
	Request("boxLL", Lock);
	Request("boxLL", Hideable);

	Move("boxLL", 0, @-254, @0, null, true);

//左側会話
	CreateTexture("boxLT", 20000, Center, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxLT", "boxLT");
	Fade("boxLT",0,0,null,false);
	Request("boxLT", Lock);
	Request("boxLT", Hideable);

	Move("boxLT", 0, @-254, @0, null, true);

//能用
	CreateTexture("boxNoh", 20000, 264, Middle, "cg/sys/adv/THTextWindow.png");
	SetAlias("boxNoh", "boxNoh");
	Fade("boxNoh",0,0,null,false);
	Request("boxNoh", Lock);
	Request("boxNoh", Hideable);

	CreateTexture("boxTNoh", 20000, 224, Middle, "cg/sys/adv/THTextWindow_Fw.png");
	SetAlias("boxTNoh", "boxTNoh");
	Fade("boxTNoh",0,0,null,false);
	Request("boxTNoh", Lock);
	Request("boxTNoh", Hideable);


..//backup位置修正前【09/01/28】
/*
//真ん中通常
	CreateTexture("boxCC", 20000, 447, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxCC", "boxCC");
	Fade("boxCC",0,0,null,false);
	Request("boxCC", Lock);
	Request("boxCC", Hideable);

//真ん中会話
	CreateTexture("boxCT", 20000, 447, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxCT", "boxCT");
	Fade("boxCT",0,0,null,false);
	Request("boxCT", Lock);
	Request("boxCT", Hideable);

//右側通常
	CreateTexture("boxRR", 20000, 597, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxRR", "boxRR");
	Fade("boxRR",0,0,null,false);
	Request("boxRR", Lock);
	Request("boxRR", Hideable);

//右側会話
	CreateTexture("boxRT", 20000, 597, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxRT", "boxRT");
	Fade("boxRT",0,0,null,false);
	Request("boxRT", Lock);
	Request("boxRT", Hideable);

//左側通常
	CreateTexture("boxLL", 20000, 297, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxLL", "boxLL");
	Fade("boxLL",0,0,null,false);
	Request("boxLL", Lock);
	Request("boxLL", Hideable);

//左側会話
	CreateTexture("boxLT", 20000, 297, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxLT", "boxLT");
	Fade("boxLT",0,0,null,false);
	Request("boxLT", Lock);
	Request("boxLT", Hideable);
*/


//いらないこ
/*
//嶋：縦書き
	LoadFont("フォント１Ａ", "@黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをんがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽぁぃぅぇぉっゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンガギグゲゴザジズゼゾダヂヅデドバビブベボパピプペポァィゥェォッャュョ、。ー…！？―「」『』《》");
	Request("フォント１Ａ", Lock);

	LoadFont("フォント２Ａ", "@黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "一今日敵味方思分行時言聞見何人終好急");
	Request("フォント２Ａ", Lock);

	LoadFont("フォント３Ａ", "@黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "化八九〇零式竜騎兵航太刀数真打劔冑御堂武者雄飛湊斗景明光統世村正銀星号綾祢一条大鳥香奈枝足利茶々丸署長護氏永倉岡部童心獅子吼川雪車町金神様幕府六波羅家大和国空甲鉄電磁赤青白黒色ＧＨＱ");
	Request("フォント３Ａ", Lock);

//嶋：横書き
	LoadFont("フォント１Ｂ", "黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをんがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽぁぃぅぇぉっゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンガギグゲゴザジズゼゾダヂヅデドバビブベボパピプペポァィゥェォッャュョ、。ー…！？―「」『』《》");
	Request("フォント１Ｂ", Lock);

	LoadFont("フォント２Ｂ", "黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "一今日敵味方思分行時言聞見何人終好急");
	Request("フォント２Ｂ", Lock);

	LoadFont("フォント３Ｂ", "黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "化八九〇零式竜騎兵航太刀数真打劔冑御堂武者雄飛湊斗景明光統世村正銀星号綾祢一条大鳥香奈枝足利茶々丸署長護氏永倉岡部童心獅子吼川雪車町金神様幕府六波羅家大和国空甲鉄電磁赤青白黒色ＧＨＱ");
	Request("フォント３Ｂ", Lock);
*/

/*
	//自動文字送り系
	LoadImage("imgAutoText","cg/sys/icon/ico_auto.png");
	CreateTexture("iconAutoText",20000,$SYSTEM_position_x_text_icon,$SYSTEM_position_y_text_icon,"imgAutoText");
	SetAlias("iconAutoText","iconAutoText");
	Fade("iconAutoText",0,0,null,false);
	CreateProcess("自動文字送りアイコン情報",150,0,0,"procAutoIcon");
	Request("自動文字送りアイコン情報",Start);
	Request("imgAutoText",Lock);
	Request("iconAutoText",Lock);
	Request("自動文字送りアイコン情報",Lock);
*/

}

//■頭のメインゲーム内にて定義
function GameMainSet()
{
	//デバッグ変数を初期化
//	$DEBUG_cgbglist="";
}
function GameMainSet2()
{
//	Save(5000);

	//☆超速全読み設定解除
	//Conquest($ConGameName,$GameName,true);
	Conquest($ConGameName,$GameName2,true);

	//セーブフォルダの5000フォルダに、シーン名のファイル名で吐き出し
//	$DEBUG_savepath=String("%s/5000/%s.txt",#SYSTEM_save_path,$GameName);
//	WriteFile($DEBUG_savepath,$DEBUG_cgbglist,false);
//	$DEBUG_cgbglist="";
}
//■本編の回想用：冒頭に仕込むもの
function ReConquest()
{
	Conquest($ConGameName,$PreGameName,true);
}



function DEBUG_cgbgcorrect($filename)
{
	if(Strstr($filename,"bg")&&!Strstr($DEBUG_cgbglist,$filename)){
		//ファイル名に'bg'という文字列があり、なおかつ初見の場合はリストに追加
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}else if(Strstr($filename,"ev")&&!Strstr($DEBUG_cgbglist,$filename)){
		//ファイル名に'ev'という文字列があり、なおかつ初見の場合はリストに追加
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}
}


..procAutoIcon
function procAutoIcon()
{
	$procAutoIcon_last=$SYSTEM_text_auto;
	while(1){
		if($SYSTEM_text_auto&&$procAutoIcon_last!=$SYSTEM_text_auto){
			Fade("@iconAutoText",0,0,null,false);
			Fade("@iconAutoText",150,1000,null,false);
		}else if(!$SYSTEM_text_auto){
			Fade("@iconAutoText",150,0,null,false);
		}
		$procAutoIcon_last=$SYSTEM_text_auto;
		Wait(300);
	}
}


//■スクリプトにおいてテキストを定義するマクロコマンド
//=============================================================================//
.//テキスト定義
//=============================================================================//
//テキストアイコンを途中で変えたい場合はお使いください
..TextIconSet()
function TextIconSet()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/line/文字送りアイコン%04d.png#5";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/page/文字送りアイコン%04d.png#5";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/auto/AUTOアイコン%02d.png#5";
}
function TextIconSet2()
{
	//改行
	$SYSTEM_text_icon_line="cg/sys/icon/line2/文字送りアイコン%04d.png#12";
	//改ページ
	$SYSTEM_text_icon_page="cg/sys/icon/page2/文字送りアイコン%04d.png#12";
	//自動文字送り
	$SYSTEM_text_icon_auto="cg/sys/icon/auto2/文字送りアイコン%04d.png#12";
}

//顔ウィンドウ連動版
..SetTextEXC(Center)
function SetTextEXC()
{

	//LockVideo(true);

	SetFont("@黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwC_text_Window==true){
//顔ウィンドウオン	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 575, 134, null, true);
	}else{
//顔ウィンドウオフ
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 575, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

..SetTextEXR(Right)
function SetTextEXR()
{

	//LockVideo(true);

	SetFont("@黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwR_text_Window==true){
//顔ウィンドウオン	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 831, 134, null, true);
	}else{
//顔ウィンドウオフ
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 831, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

..SetTextEXL(Left)
function SetTextEXL()
{

	//LockVideo(true);

	SetFont("@黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwL_text_Window==true){
//顔ウィンドウオン
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 320, 134, null, true);
	}else{
//顔ウィンドウオフ
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 320, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

..SetTextA(ALL)
function SetTextA()
{
	//LockVideo(true);

	SetFont("@黑体", 20, #FFFFFF, #000000, 500, RIGHTDOWN);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",1024,576,1,40);

	SetVertex("$SYSTEM_present_text", 0, 0);
	Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
	Move("$SYSTEM_present_text", 0, 800, 10, null, true);

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

//予備
..SetTextAH
function SetTextAH()
{

	//LockVideo(true);

	SetFont("黑体", 20, #FFFFFF, #000000, 500, RIGHTUP);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",500,500,0,21);

		SetVertex("$SYSTEM_present_text", 0, 0);

	if($FwH_text_Window==true){
		Move("$SYSTEM_present_text", 0, 170, 75, null, true);
	}else{
		Move("$SYSTEM_present_text", 0, 170, 75, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

//通常ウィンドウ用
..SetTextEXH
function SetTextEXH()
{

	//LockVideo(true);

	SetFont("黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN);

	SetVertex("$SYSTEM_present_text", 0, 0);

	if($FwH_text_Window==true){
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",500,150,0,28);
		Move("$SYSTEM_present_text", 0, 365, 449, null, true);
	}else{
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",520,150,0,28);
		Move("$SYSTEM_present_text", 0, 286, 449, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

..SetTextA(ALL)
function SetTextEXAH()
{

	//LockVideo(true);

	SetFont("黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",1024,576,1,28);

	SetVertex("$SYSTEM_present_text", 0, 0);
	Move("$SYSTEM_present_text", 0, 256, 100, null, true);

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

//中央横書き（能用）
..SetTextEXCH
function SetTextEXCH()
{

	//LockVideo(true);

	SetFont("黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN);

	SetVertex("$SYSTEM_present_text", 0, 0);

	if($FwNoh_text_Window==true){
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",440,150,0,28);
		Move("$SYSTEM_present_text", 0, 365, 222, null, true);
	}else{
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",520,150,0,28);
		Move("$SYSTEM_present_text", 0, 286, 222, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

..//↓嶋：color付きのセンターテキスト。
..SetTextEXC(Center)
function SetTextEXCColor($テキストカラー設定)
{

	//LockVideo(true);

	SetFont("@黑体", 20, $テキストカラー設定, #000000, 500, RIGHTDOWN);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwC_text_Window==true){
//顔ウィンドウオン	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 575, 134, null, true);
	}else{
//顔ウィンドウオフ
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 575, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

//顔ウィンドウ連動版
..SetTextEXhyperR(Right)
function SetTextEXhyperR()
{

	//LockVideo(true);

	SetFont("@黑体", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwR_text_Window==true){
//顔ウィンドウオン	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 818, 134, null, true);
	}else{
//顔ウィンドウオフ
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 789, 38, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}



..//backup位置修正前【09/01/28】
/*
//顔ウィンドウ連動版
...SetTextEXC(Center)
function SetTextEXC()
{

	SetFont("@黑体", 20, #FFFFFF, #000000, 500, NONE);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwC_text_Window==true){
//顔ウィンドウオン	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 572, 134, null, true);
	}else{
//顔ウィンドウオフ
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 572, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

...SetTextEXR(Right)
function SetTextEXR()
{

	SetFont("@黑体", 20, #FFFFFF, #000000, 500, NONE);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwR_text_Window==true){
//顔ウィンドウオン	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 722, 134, null, true);
	}else{
//顔ウィンドウオフ
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 722, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

...SetTextEXL(Left)
function SetTextEXL()
{

	SetFont("@黑体", 20, #FFFFFF, #000000, 500, NONE);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwL_text_Window==true){
//顔ウィンドウオン	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 422, 134, null, true);
	}else{
//顔ウィンドウオフ
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 422, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

...SetTextA(ALL)
function SetTextA()
{
	SetFont("@黑体", 20, #FFFFFF, #000000, 500, NONE);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",1024,576,1,40);

	SetVertex("$SYSTEM_present_text", 0, 0);
	Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
	Move("$SYSTEM_present_text", 0, 800, 10, null, true);

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

//予備
...SetTextAH
function SetTextAH()
{
	SetFont("黑体", 18, #000000, #FFFFFF, 500, RIGHTUP);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",421,500,0,21);

	SetVertex("$SYSTEM_present_text", 0, 0);
	Move("$SYSTEM_present_text", 0, 210, 75, null, true);

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

//通常ウィンドウ用
...SetTextH
function SetTextH()
{
	SetFont("黑体", 18, #000000, #FFFFFF, 500, RIGHTUP);
	LoadText("$構文名","$SYSTEM_present_preprocess","$SYSTEM_present_text",421,500,0,21);

	SetVertex("$SYSTEM_present_text", 0, 0);
	Move("$SYSTEM_present_text", 0, 190, 459, null, true);

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

*/


//■定義したテキストの位置をまとめて調整
//=============================================================================//
.//テキスト位置補正
//=============================================================================//
//今回は無し







//■ボックスを描画するのとテキストをタイピングする動作をまとめて実行するマクロ
//=============================================================================//
.//タイピングマクロ
//=============================================================================//
/*======================*/
..//テスト用(Onceシリーズ)
/*======================*/
//======================================================//
...TypeBeginOnceI
//======================================================//
function TypeBeginOnceI()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//初表示フラグ
			$FwC_text_Window_begin=false;
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,800,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

}

function TypeBeginOnceIFO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//初表示フラグ
			$FwC_text_Window_begin=false;
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,800,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	DeleteFwC($BoxFadeTime,false);

}

...TypeBeginOnceO
function TypeBeginOnceO($BoxFadeTime)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwC_text_Window==true){
		DeleteFwC($BoxFadeTime,false);
		$FwC_text_Window=false;
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}

}

...TypeBeginOnceIO
function TypeBeginOnceIO($BoxFadeTime)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
			$FwC_text_Window_begin=false;
			FadeFwC(150,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,800,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwC_text_Window==true){
		DeleteFwC($BoxFadeTime,false);
		$FwC_text_Window=false;
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}


}

..///////////////////////
/*==============*/
..//■本番用Typebegin
/*==============*/
..///////////////////////
/*==============*/
...//▼Center
/*==============*/
//======================================================//
....TypeBeginCI
//======================================================//
function TypeBeginCI()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//初表示フラグ
			$FwC_text_Window_begin=false;
//回想用初期化フラグ
			$回想="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

//======================================================//
....TypeBeginCIFO
//======================================================//
function TypeBeginCIFO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//初表示フラグ
			$FwC_text_Window_begin=false;
//回想用初期化フラグ
			$回想="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	$FaceWindow_Change = false;
	Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
	DeleteFwC($BoxFadeTime,false);

	Request("@Face_Sepia", Disused);

	BoxOut();

}

//======================================================//
....TypeBeginCO
//======================================================//
function TypeBeginCO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwC_text_Window==true){
		$FaceWindow_Change = false;
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwC($BoxFadeTime,false);
		Fade("@boxC*",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

//======================================================//
....TypeBeginCIO
//======================================================//
function TypeBeginCIO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
			$FwC_text_Window_begin=false;
//回想用初期化フラグ
			$回想判定="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwC_text_Window==true){
	$FaceWindow_Change = false;
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwC($BoxFadeTime,false);
		Fade("@boxC*",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

/*=====*/
...//▼RIGHT
/*=====*/

....TypeBeginRI
function TypeBeginRI()
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
//回想用初期化フラグ
			$回想="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginRIFO
function TypeBeginRIFO()
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
//回想用初期化フラグ
			$回想="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	$FaceWindow_Change = false;
	Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
	DeleteFwR($BoxFadeTime,false);
	Request("@Face_Sepia", Disused);
	BoxOut();

}

....TypeBeginRO
function TypeBeginRO()
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwR_text_Window==true){
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwR($BoxFadeTime,false);
		Fade("@boxRT",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxRR",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

....TypeBeginRIO
function TypeBeginRIO()
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
//回想用初期化フラグ
			$回想判定="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}


	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwR_text_Window==true){
	$FaceWindow_Change = false;
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwR($BoxFadeTime,false);
		Fade("@boxRT",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxRR",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

/*=====*/
...//▼LEFT
/*=====*/

....TypeBeginLI
function TypeBeginLI()
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
//回想用初期化フラグ
			$回想="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwL($BoxFadeTime,false);
		Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginLIFO
function TypeBeginLIFO()
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL($BoxFadeTime,false);
		Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwL($BoxFadeTime,false);

	BoxOut();

}

....TypeBeginLO
function TypeBeginLO()
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwL_text_Window==true){
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwL($BoxFadeTime,false);
		Fade("@boxLT",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxLL",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

....TypeBeginLIO
function TypeBeginLIO()
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
//回想用初期化フラグ
			$回想判定="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwL(150,false);
			Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwL_text_Window==true){
	$FaceWindow_Change = false;
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwL($BoxFadeTime,false);
		Fade("@boxLT",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxLL",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

..//特殊+時間設定付きなど
/*==============*/
...//▼Center
/*==============*/
//======================================================//
....TypeBeginTimeCI
//======================================================//
function TypeBeginTimeCI($TBFI_time)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//初表示フラグ
			$FwC_text_Window_begin=false;
//回想用初期化フラグ
//			$回想="";
//回想用フェード
//			Fade("@Face_Sepia", 0, 300, null, false);

			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

//======================================================//
....TypeBeginTimeCIFO
//======================================================//
function TypeBeginTimeCIFO($TBFI_time)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=$TBFI_time;
	$BoxFadeTimeSub=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//初表示フラグ
			$FwC_text_Window_begin=false;

//回想用初期化フラグ
			$回想="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwC($BoxFadeTimeSub,false);

	BoxOut();

}

//======================================================//
....TypeBeginTimeCO
//======================================================//
function TypeBeginTimeCO($TBFO_time)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=$TBFO_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwC_text_Window==true){
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteComic();
		DeleteFwC($BoxFadeTime,false);
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

//======================================================//
....TypeBeginTimeCIO
//======================================================//
function TypeBeginTimeCIO($TBFI_time,$TBFO_time)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
			$FwC_text_Window_begin=false;

//回想用初期化フラグ
			$回想="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);

			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwC_text_Window==true){
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteComic();
		DeleteFwC($TBFO_time,false);
		Fade("@boxC*",$TBFO_time,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxC*",$TBFO_time,0,null,true);
	}

	BoxOut();

}

/*=====*/
...//▼RIGHT
/*=====*/

....TypeBeginTimeRI
function TypeBeginTimeRI($TBFI_time)
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginTimeRIFO
function TypeBeginTimeRIFO($TBFI_time)
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;
	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwR($BoxFadeTime,false);

	BoxOut();

}

....TypeBeginTimeRO
function TypeBeginTimeRO($TBFI_time)
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;
	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwR_text_Window==true){

	DeleteComic();
		DeleteFwR($BoxFadeTime,false);
		Fade("@boxRT",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxRR",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

....TypeBeginTimeRIO
function TypeBeginTimeRIO($TBFI_time,$TBFO_time)
{

//テキスト位置修正前【09/01/28】
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;
	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}


	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwR_text_Window==true){

		DeleteComic();
		DeleteFwR($TBFO_time,false);
		Fade("@boxRT",$TBFO_time,0,null,true);
	}else{
		Fade("@boxRR",$TBFO_time,0,null,true);
	}

	BoxOut();

}

/*=====*/
...//?LEFT
/*=====*/

....TypeBeginTimeLI
function TypeBeginTimeLI($TBFI_time)
{

	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL($BoxFadeTime,false);
		Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);


}

....TypeBeginTimeLIFO
function TypeBeginTimeLIFO($TBFO_time)
{

	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=$TBFO_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL($BoxFadeTime,false);
		Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwL($BoxFadeTime,false);

	BoxOut();

}

....TypeBeginTimeLO
function TypeBeginTimeLO($TBFO_time)
{

	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=$TBFO_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwL_text_Window==true){
		DeleteComic();
		DeleteFwL($BoxFadeTime,false);
		Fade("@boxLT",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxLL",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

....TypeBeginTimeLIO
function TypeBeginTimeLIO($TBFI_time,$TBFO_time)
{

	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL($BoxFadeTime,false);
			Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwL_text_Window==true){
		DeleteComic();
		DeleteFwL($TBFO_time,false);
		Fade("@boxLT",$TBFO_time,0,null,true);
	}else{
		Fade("@boxLL",$TBFO_time,0,null,true);
	}

	BoxOut();

}

/*=====*/
...//?H
/*=====*/
....TypeBeginHI
function TypeBeginHI()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
//初表示フラグ
//回想用初期化フラグ
			$回想判定="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			$FwH_text_Window_begin=false;
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginHO
function TypeBeginHO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwH_text_Window==true){
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH*",$BoxFadeTime,0,null,true);
	}


}

//======================================================//
....TypeBeginHIFO
//======================================================//
function TypeBeginHIFO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
//初表示フラグ
			$FwH_text_Window_begin=false;
//回想用初期化フラグ
			$回想="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	$FaceWindow_Change = false;
	Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
	DeleteFwH($BoxFadeTime,false);

	Request("@Face_Sepia", Disused);

	BoxOut();

}

//======================================================//
....TypeBeginHIO
//======================================================//
function TypeBeginHIO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
			$FwH_text_Window_begin=false;
//回想用初期化フラグ
			$回想="";
//回想用フェード
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwH_text_Window==true){
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxTH",$BoxFadeTime,0,null,true);
		Fade("@boxH*",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxH*",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}


/*=====*/
...//▼TimeH
/*=====*/
....TypeBeginTimeHI
function TypeBeginTimeHI($TBFI_time)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
//初表示フラグ
			$FwH_text_Window_begin=false;
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginTimeHO
function TypeBeginTimeHO($TBFI_time)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwH_text_Window==true){
	DeleteComic();
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH*",$BoxFadeTime,0,null,true);
	}


}

//======================================================//
....TypeBeginTimeHIFO
//======================================================//
function TypeBeginTimeHIFO($TBFO_time)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=$TBFO_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
//初表示フラグ
			$FwH_text_Window_begin=false;
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwH($BoxFadeTime,false);

	BoxOut();

}


....TypeBeginTimeHIO
function TypeBeginTimeHIO($TBFI_time,$TBFO_time)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
			$FwH_text_Window_begin=false;
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwH_text_Window==true){
	DeleteComic();
		DeleteFwH($TBFO_time,false);
		Fade("@boxTH",$TBFO_time,0,null,true);
		Fade("@boxH",$TBFO_time,0,null,true);
	}else{
		Fade("@boxTH",$TBFO_time,0,null,true);
		Fade("@boxH",$TBFO_time,0,null,true);
	}

}

/*=====*/
...//?NOH
/*=====*/
....TypeBeginNOHI
function TypeBeginNOHI()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 329;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwNoh_text_Window==true){
		if($FwNoh_text_Window_begin==true){
//初表示フラグ
			$FwNoh_text_Window_begin=false;
			FadeFwNoh($BoxFadeTime,false);
			Fade("@boxNoh",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTNoh",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTNoh",$BoxFadeTime,0,null,false);
		Fade("@boxNoh",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginNOHO
function TypeBeginNOHO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 329;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwNoh_text_Window==true){
	DeleteComic();
		DeleteFwNoh($BoxFadeTime,false);
		Fade("@boxTNoh",$BoxFadeTime,0,null,false);
		Fade("@boxNoh",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxTNoh",$BoxFadeTime,0,null,false);
		Fade("@boxNoh",$BoxFadeTime,0,null,true);
	}


}

//======================================================//
....TypeBeginNOHIFO
//======================================================//
function TypeBeginNOHIFO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 329;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwNoh_text_Window==true){
		if($FwNoh_text_Window_begin==true){
//初表示フラグ
			$FwNoh_text_Window_begin=false;
			FadeFwNoh($BoxFadeTime,false);
			Fade("@boxNoh",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTNoh",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTNoh",$BoxFadeTime,0,null,false);
		Fade("@boxNoh",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwNoh($BoxFadeTime,false);

	BoxOut();

}

//======================================================//
....TypeBeginNOHIO
//======================================================//
function TypeBeginNOHIO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 329;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwNoh_text_Window==true){
		if($FwNoh_text_Window_begin==true){
			$FwNoh_text_Window_begin=false;
			FadeFwNoh($BoxFadeTime,false);
			Fade("@boxNoh",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTNoh",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTNoh",$BoxFadeTime,0,null,false);
		Fade("@boxNoh",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwNoh_text_Window==true){
	DeleteComic();
		DeleteFwNoh($BoxFadeTime,false);
		Fade("@boxTNoh",$BoxFadeTime,0,null,true);
		Fade("@boxNoh",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxTNoh",$BoxFadeTime,0,null,true);
		Fade("@boxNoh",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}



/*=====*/
...//?AH
/*=====*/
....TypeBeginAHI
function TypeBeginAHI()
{

	$SYSTEM_position_x_text_icon = 756;
	$SYSTEM_position_y_text_icon = 540;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	$BoxFadeTime=150;

	Fade("@boxAll",$BoxFadeTime,1000,null,true);

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginAHO
function TypeBeginAHO()
{

	$SYSTEM_position_x_text_icon = 756;
	$SYSTEM_position_y_text_icon = 540;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	$BoxFadeTime=150;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);
	Fade("@boxAll",$BoxFadeTime,0,null,true);

	BoxOut();

}

//======================================================//
....TypeBeginAHIO
function TypeBeginAHIO()
{

	$SYSTEM_position_x_text_icon = 756;
	$SYSTEM_position_y_text_icon = 540;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	$BoxFadeTime=150;

	Fade("@boxAll",$BoxFadeTime,1000,null,true);

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);
	Fade("@boxAll",$BoxFadeTime,0,null,true);

	BoxOut();

}



...//特殊処理用
//======================================================//
....TypeBeginEXIO
//======================================================//
function TypeBeginEXIO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//初表示フラグ
			$FwC_text_Window_begin=false;
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,false);
		Fade("@boxCT",$BoxFadeTime,1000,null,false);
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Request("@text01", Disused);
	Request("@text02", Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwL_text_Window==true){
		DeleteFwC($BoxFadeTime,false);
		Fade("@FwR*",$BoxFadeTime,0,null,false);
		Fade("@FwL*",$BoxFadeTime,0,null,false);
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxCT",$BoxFadeTime,0,null,true);
		Delete("@Fw*");
		$FwR_text_Window=false;
		$FwL_text_Window=false;
	}else{
		Fade("@boxLL",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}


/*=====*/
...//▼CH
/*=====*/
....TypeBeginCHI
function TypeBeginCHI($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 330;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
//初表示フラグ
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

//嶋：初期化
	$FadeTimeCenterText = -1;

	BoxOut();

}

....TypeBeginCHO
function TypeBeginCHO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 330;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	$FadeTimeCenterText = -1;

	if($FwCH_text_Window==true){
	DeleteComic();
		DeleteFwCH($BoxFadeTime,false);
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}


}

//======================================================//
....TypeBeginCHIFO
//======================================================//
function TypeBeginCHIFO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 330;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
//初表示フラグ
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwCH($BoxFadeTime,false);

	$FadeTimeCenterText = -1;

	BoxOut();

}

//======================================================//
....TypeBeginCHIO
//======================================================//
function TypeBeginCHIO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 330;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwCH_text_Window==true){
	DeleteComic();
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxCTH",$BoxFadeTime,0,null,true);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,true);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}

	$FadeTimeCenterText = -1;

	BoxOut();

}

/*=====*/
...//▼CIconI
/*=====*/
....TypeBeginCIconI
function TypeBeginCIconI($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 580;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
//初表示フラグ
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

//嶋：初期化
	$FadeTimeCenterText = -1;

	BoxOut();

}

....TypeBeginCIconO
function TypeBeginCIconO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 580;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	$FadeTimeCenterText = -1;

	if($FwCH_text_Window==true){
	DeleteComic();
		DeleteFwCH($BoxFadeTime,false);
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}


}

//======================================================//
....TypeBeginCIconIFO
//======================================================//
function TypeBeginCIconIFO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 580;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
//初表示フラグ
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwCH($BoxFadeTime,false);

	$FadeTimeCenterText = -1;

	BoxOut();

}

//======================================================//
....TypeBeginCIconIO
//======================================================//
function TypeBeginCIconIO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 580;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwCH_text_Window==true){
	DeleteComic();
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxCTH",$BoxFadeTime,0,null,true);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,true);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}

	$FadeTimeCenterText = -1;

	BoxOut();

}



..///////////////////_end
..//テスト用につき退避
/*======================*/

/*=====*/
...//▼Center
/*=====*/
/*
//======================================================//
....TypeBeginCI
//======================================================//
function TypeBeginCI()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
			$FwC_text_Window_begin=false;
			FadeFwC(150,false);
		}
		Fade("@boxCT",150,800,null,true);
	}else{
		Fade("@boxCC",150,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);


}

....TypeBeginCO
function TypeBeginCO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwC_text_Window==true){
		DeleteFwC(150,false);
		$FwC_text_Window=false;
		Fade("@boxCT",150,0,null,true);
	}else{
		Fade("@boxCC",150,0,null,true);
	}

}

....TypeBeginCIO
function TypeBeginCIO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
			$FwC_text_Window_begin=false;
			FadeFwC(300,false);
		}
		Fade("@boxCT",150,800,null,true);
	}else{
		Fade("@boxCC",150,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwC_text_Window==true){
		DeleteFwC(300,false);
		$FwC_text_Window=false;
		Fade("@boxCT",150,0,null,true);
	}else{
		Fade("@boxCC",150,0,null,true);
	}


}

/*=====*/
...//?RIGHT
/*=====*/

....TypeBeginRI
function TypeBeginRI()
{

	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
			FadeFwR(150,false);
		}
		Fade("@boxRT",150,800,null,true);
	}else{
		Fade("@boxRR",150,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

}

....TypeBeginRO
function TypeBeginRO()
{

	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwR_text_Window==true){
		DeleteFwR(150,false);
		$FwR_text_Window=false;
		Fade("@boxRT",150,0,null,true);
	}else{
		Fade("@boxRR",150,0,null,true);
	}

}

....TypeBeginRIO
function TypeBeginRIO()
{

	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
			FadeFwR(150,false);
		}
		Fade("@boxRT",150,800,null,true);
	}else{
		Fade("@boxRR",150,800,null,true);
	}


	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwR_text_Window==true){
		DeleteFwR(150,false);
		$FwR_text_Window=false;
		Fade("@boxRT",150,0,null,true);
	}else{
		Fade("@boxRR",150,0,null,true);
	}
}

/*=====*/
...//?LEFT
/*=====*/

....TypeBeginLI
function TypeBeginLI()
{

	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL(150,false);
		}
		Fade("@boxLT",150,800,null,true);
	}else{
		Fade("@boxLL",150,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);


}

....TypeBeginLO
function TypeBeginLO()
{

	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwL_text_Window==true){
		DeleteFwL(150,false);
		$FwL_text_Window=false;
		Fade("@boxLT",150,0,null,true);
	}else{
		Fade("@boxLL",150,0,null,true);
	}
}

....TypeBeginLIO
function TypeBeginLIO()
{

	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL(150,false);
		}
		Fade("@boxLT",150,800,null,true);
	}else{
		Fade("@boxLL",150,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwL_text_Window==true){
		DeleteFwL(150,false);
		$FwL_text_Window=false;
		Fade("@boxLT",150,0,null,true);
	}else{
		Fade("@boxLL",150,0,null,true);
	}
}

*/

/*=====*/
..//?ALL
/*=====*/
...TypeBeginAI
function TypeBeginAI()
{

	$SYSTEM_position_x_text_icon = 193;
	$SYSTEM_position_y_text_icon = 500;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

//	Fade("@boxAll",150,800,null,true);

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, NoIcon);
	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
//	Fade("@boxCC",150,0,null,true);
}

...TypeBeginAO
function TypeBeginAO()
{

	$SYSTEM_position_x_text_icon = 333;
	$SYSTEM_position_y_text_icon = 560;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade("@boxAll",150,0,null,true);
}

...TypeBeginAIO
function TypeBeginAIO()
{

	$SYSTEM_position_x_text_icon = 333;
	$SYSTEM_position_y_text_icon = 560;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	Fade("@boxAll",150,800,null,true);

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade("@boxAll",150,0,null,true);
}

/*=====*/
..//?CenterS
/*=====*/
...TypeBeginCSI
function TypeBeginCSI()
{

	$SYSTEM_position_x_text_icon = 333;
	$SYSTEM_position_y_text_icon = 560;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	Fade("@boxCC",150,800,null,true);

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	#SYSTEM_text_speed = 0;

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
//	Fade("@boxCC",150,0,null,true);
}


..超速モード（ボックス内）
function BoxOut()
{
	#SYSTEM_skip_express_minimum_time=0;


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}

		SetVolume("@*", 0, 0, NULL);

		ClearFadeAll(0,true);

		Fade("@フレーム", 0, 0, null, true);
		Fade("@box11",0,0,null,true);
		Fade("@boxCC", 0, 0, null, true);
		Fade("@boxCT", 0, 0, null, true);
		Fade("@boxRR", 0, 0, null, true);
		Fade("@boxRT", 0, 0, null, true);
		Fade("@boxLL", 0, 0, null, true);
		Fade("@boxLT", 0, 0, null, true);

		Fade("@boxH", 0, 0, null, true);
		Fade("@boxAll", 0, 0, null, true);

		Fade("@boxTH", 0, 0, null, true);
		Fade("@boxTNoh", 0, 0, null, true);
	
		Fade("@boxNoh", 0, 0, null, true);
		Fade("@boxCTH", 0, 0, null, true);
	
		//顔ウィンドウマクロフラグ初期化
		$FwC_text_Window = false;
		$FwR_text_Window = false;
		$FwL_text_Window = false;
		$FwH_text_Window = false;
		$FwNoh_text_Window = false;
	
		//顔ウィンドウマクロ初期フラグ初期化
		$FwC_text_Window_begin = false;
		$FwR_text_Window_begin = false;
		$FwL_text_Window_begin = false;
		$FwH_text_Window_begin = false;
		$FwNoh_text_Window_begin = false;
	
		//顔ウィンドウマクロ回想フラグ初期化
		$回想="";

		#SYSTEM_skip_express_minimum_time+=0;
		Escape(3);
	}
}

..超速モード（冒頭）
function SkipOut()
{
	if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}
	Conquest($ConGameName,$GameName2,true);

	SetVolume("@*", 0, 0, NULL);

	ClearFadeAll(0,true);

	Fade("@フレーム", 0, 0, null, true);
	Fade("@box11",0,0,null,true);
	Fade("@boxCC", 0, 0, null, true);
	Fade("@boxCT", 0, 0, null, true);
	Fade("@boxRR", 0, 0, null, true);
	Fade("@boxRT", 0, 0, null, true);
	Fade("@boxLL", 0, 0, null, true);
	Fade("@boxLT", 0, 0, null, true);

	Fade("@boxH", 0, 0, null, true);
	Fade("@boxAll", 0, 0, null, true);

	Fade("@boxTH", 0, 0, null, true);
	Fade("@boxTNoh", 0, 0, null, true);

	Fade("@boxNoh", 0, 0, null, true);
	Fade("@boxCTH", 0, 0, null, true);

//顔ウィンドウマクロフラグ初期化
	$FwC_text_Window = false;
	$FwR_text_Window = false;
	$FwL_text_Window = false;
	$FwH_text_Window = false;
	$FwNoh_text_Window = false;

//顔ウィンドウマクロ初期フラグ初期化
	$FwC_text_Window_begin = false;
	$FwR_text_Window_begin = false;
	$FwL_text_Window_begin = false;
	$FwH_text_Window_begin = false;
	$FwNoh_text_Window_begin = false;

//顔ウィンドウマクロ回想フラグ初期化
	$回想="";

	#SYSTEM_skip_express_minimum_time+=0;

	//Draw();
	Wait(64);
}



//■CreateTextureの変形
//=============================================================================//
.//CreateTexture系
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateTexture」です
..CreateTextureEX
function CreateTextureEX($CreatePicEX_Nat, 描画優先度, $CreateTexEX_X, $CreateTexEX_Y, $イメージデータ)
{
	//デバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEX_Nat, 描画優先度, 1030, 0, $イメージデータ);
	Fade($CreatePicEX_Nat, 0, 0, null, true);

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEX_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEX_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-576;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = 576-$CT_EXY;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	SetAlias($CreatePicEX_Nat, $CreatePicEX_Nat);

	if($CreateTexEX_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEX_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEX_X=="InLeft"){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEX_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
//		$CreateTexEX_X = $CreateTexEX_X-1030;
		Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		Move($CreatePicEX_Nat, 0, $CreateTexEX_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEX_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		Move($CreatePicEX_Nat, 0, @0, $CreateTexEX_Y, null, true);
	}

}

//エイリアス指定がついただけの「CreateTexture」です
..CreateTextureSP
function CreateTextureSP("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//デバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	SetAlias("ナット名", "ナット名");

}

//▼加算
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXadd
function CreateTextureEXadd($CreatePicEXadd_Nat, 描画優先度, $CreateTexEXadd_X, $CreateTexEXadd_Y, $イメージデータ)
{
	//デバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXadd_Nat, 描画優先度, 1030, 0, $イメージデータ);

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXadd_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXadd_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-576;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = 576-$CT_EXY;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXadd_Nat, AddRender);
	SetAlias($CreatePicEXadd_Nat, $CreatePicEXadd_Nat);
	Fade($CreatePicEXadd_Nat, 0, 0, null, true);

	if($CreateTexEXadd_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXadd_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXadd_X=="InLeft"){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXadd_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXadd_Nat, 0, $CreateTexEXadd_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXadd_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXadd_Nat, 0, @0, $CreateTexEXadd_Y, null, true);
	}
}

//エイリアス指定がついただけの「CreateTexture」です（加算合成付き）
..CreateTextureSPadd
function CreateTextureSPadd("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//デバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
}
//▼減算
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXsub
function CreateTextureEXsub($CreatePicEXsub_Nat, 描画優先度, $CreateTexEXsub_X, $CreateTexEXsub_Y, $イメージデータ)
{
	//デバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXsub_Nat, 描画優先度, 1030, 0, $イメージデータ);

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXsub_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXsub_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-576;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = 576-$CT_EXY;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXsub_Nat, SubRender);
	SetAlias($CreatePicEXsub_Nat, $CreatePicEXsub_Nat);
	Fade($CreatePicEXsub_Nat, 0, 0, null, true);

	if($CreateTexEXsub_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXsub_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXsub_X=="InLeft"){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXsub_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXsub_Nat, 0, $CreateTexEXsub_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXsub_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXsub_Nat, 0, @0, $CreateTexEXsub_Y, null, true);
	}
}

//エイリアス指定がついただけの「CreateTexture」です（減算合成付き）
..CreateTextureSPsub
function CreateTextureSPsub("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//デバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
}

//▼オーバーレイ
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXover
function CreateTextureEXover($CreatePicEXover_Nat, 描画優先度, $CreateTexEXover_X, $CreateTexEXover_Y, $イメージデータ)
{
	//デバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXover_Nat, 描画優先度, 1030, 0, $イメージデータ);

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXover_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXover_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-576;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = 576-$CT_EXY;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXover_Nat, OverlayRender);
	SetAlias($CreatePicEXover_Nat, $CreatePicEXover_Nat);
	Fade($CreatePicEXover_Nat, 0, 0, null, true);

	if($CreateTexEXover_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXover_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXover_X=="InLeft"){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXover_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXover_Nat, 0, $CreateTexEXover_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXover_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXover_Nat, 0, @0, $CreateTexEXover_Y, null, true);
	}
}


//エイリアス指定がついただけの「CreateTexture」です（オーバーレイ合成付き）
..CreateTextureSPover
function CreateTextureSPover("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//デバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
}

//▼乗算
//透明度0からスタートする「CreateTexture」です（加算合成付き）
..CreateTextureEXmul
function CreateTextureEXmul($CreatePicEXmul_Nat, 描画優先度, $CreateTexEXmul_X, $CreateTexEXmul_Y, $イメージデータ)
{
	//デバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture($CreatePicEXmul_Nat, 描画優先度, 1030, 0, $イメージデータ);

//ｘ取得
	$CT_EXX = ImageHorizon($CreatePicEXmul_Nat);
//ｙ取得
	$CT_EXY = ImageVertical($CreatePicEXmul_Nat);
//ｘ取得÷２
	$CT_EXX2 = $CT_EXX-1024;
//ｙ取得÷２
	$CT_EXY2 = $CT_EXY-576;
//ｘ取得÷４
	$CT_EXX2 = $CT_EXX2/2;
//ｙ取得÷４
	$CT_EXY2 = $CT_EXY2/2;
//Center取得
	$CT_EX_Center = -($CT_EXX2);
//Middle取得
	$CT_EX_Middle = -($CT_EXY2);
//Center取得
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right取得
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle取得
	$CT_EX_Middle2 = 576-$CT_EXY;
//Right取得
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom取得
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXmul_Nat, MulRender);
	SetAlias($CreatePicEXmul_Nat, $CreatePicEXmul_Nat);
	Fade($CreatePicEXmul_Nat, 0, 0, null, true);

	if($CreateTexEXmul_X=="Center"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXmul_X=="center"){
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center, @0, null, true);
		}
	}else if($CreateTexEXmul_X=="InLeft"){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
	}else if($CreateTexEXmul_X=="InRight"){
//横幅＝1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//横幅＜1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
//横幅＞1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXmul_Nat, 0, $CreateTexEXmul_X, @0, null, true);
	}


//縦幅関連
	if($CreateTexEXmul_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXmul_Nat, 0, @0, $CreateTexEXmul_Y, null, true);
	}
}


//エイリアス指定がついただけの「CreateTexture」です（乗算合成付き）
..CreateTextureSPmul
function CreateTextureSPmul("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ)
{
	//デバッグ用
	DEBUG_cgbgcorrect($イメージデータ);

	CreateTexture("ナット名", 描画優先度, Ｘ座標, Ｙ座標, $イメージデータ);
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
}


//=============================================================================//
.//背景·イベント·ＥＦ専用
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateTexture」です
..OnBG
function OnBG(描画優先度,$bgimagedata,$パッチ判定)
{
	if($BgNameN==""||$BgNameN=="OnBG10"){$BgNameN="OnBG01";}
	else if($BgNameN=="OnBG01"){$BgNameN="OnBG02";}
	else if($BgNameN=="OnBG02"){$BgNameN="OnBG03";}
	else if($BgNameN=="OnBG03"){$BgNameN="OnBG04";}
	else if($BgNameN=="OnBG04"){$BgNameN="OnBG05";}
	else if($BgNameN=="OnBG05"){$BgNameN="OnBG06";}
	else if($BgNameN=="OnBG06"){$BgNameN="OnBG07";}
	else if($BgNameN=="OnBG07"){$BgNameN="OnBG08";}
	else if($BgNameN=="OnBG08"){$BgNameN="OnBG09";}
	else if($BgNameN=="OnBG09"){$BgNameN="OnBG10";}

	if($BgNameN01==""){$BgNameN01=$BgNameN;}
	else if($BgNameN02==""){$BgNameN02=$BgNameN;}
	else if($BgNameN03==""){$BgNameN03=$BgNameN;}
	else if($BgNameN04==""){$BgNameN04=$BgNameN;}
	else if($BgNameN05==""){$BgNameN05=$BgNameN;}
	else if($BgNameN06==""){$BgNameN06=$BgNameN;}
	else if($BgNameN07==""){$BgNameN07=$BgNameN;}
	else if($BgNameN08==""){$BgNameN08=$BgNameN;}
	else if($BgNameN09==""){$BgNameN09=$BgNameN;}
	else if($BgNameN10==""){$BgNameN10=$BgNameN;}

	$bgナット = $BgNameN;

	if($パッチ判定=="normal"){
		$bgimagedata = "cg/bg/" + $bgimagedata;
	}else if($パッチ判定=="path"){
		$bgimagedata = "cg2/bg/" + $bgimagedata;
//Path通過したら、初期化【09/01/29】
		$パッチ判定=="";
	}else if(!$パッチ判定){
		$bgimagedata = "cg/bg/" + $bgimagedata;
	}else{
		$bgimagedata = "cg/bg/" + $bgimagedata;
	}

	//デバッグ用
	DEBUG_cgbgcorrect($bgimagedata);

	CreateTexture($bgナット, 描画優先度, Center, Middle, $bgimagedata);
	SetAlias($bgナット, $bgナット);
	Fade($bgナット, 0, 0, null, true);

}

...//FadeBG
function FadeBG($描画時間,$待ち)
{
	if($BgNameN01!=""){$ナット名=$BgNameN01;$BgNameN01="";}
	else if($BgNameN02!=""){$ナット名=$BgNameN02;$BgNameN02="";}
	else if($BgNameN03!=""){$ナット名=$BgNameN03;$BgNameN03="";}
	else if($BgNameN04!=""){$ナット名=$BgNameN04;$BgNameN04="";}
	else if($BgNameN05!=""){$ナット名=$BgNameN05;$BgNameN05="";}
	else if($BgNameN06!=""){$ナット名=$BgNameN06;$BgNameN06="";}
	else if($BgNameN07!=""){$ナット名=$BgNameN07;$BgNameN07="";}
	else if($BgNameN08!=""){$ナット名=$BgNameN08;$BgNameN08="";}
	else if($BgNameN09!=""){$ナット名=$BgNameN09;$BgNameN09="";}
	else if($BgNameN10!=""){$ナット名=$BgNameN10;$BgNameN10="";}

	$BGP = 1;

	SetFont("黑体", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);


//描画マクロ
	PreFadeBG();

	$FaceBG2=$FaceBG;
	$FaceBG=$nutBG;
	$BGCP = 1;

	//指定用
	$nutBG=$setBGnut;
	$nutBG2=$astBGnut;

}

...//PreFadeBG
function PreFadeBG()
{
	$BGnut = $ナット名;

//ナット名取得　$picnut
		$picBGnut = $FaceBG;
//前ナット名取得　$Prepicnut
		$PrepicBGnut = $FaceBG2;
//前定義が発生してるか確認用
		$BGQ = $BGCP;

//一度定義済み+定義フラグが発生している場合
	if($BGP==1 && $BGQ==0){$FaceBG="名無し";}

//前ナット名正規定義
	$setBGnut = "@"+$BGnut;
//ナット名正規定義
	$astBGnut = $nutBG;
//前ナット名正規定義
	$PreastBGnut ="@"+$PrepicBGnut;

	if($BGP!=0 && $BGQ==0 && $setBGnut!=$astBGnut && $astBGnut!=$PreastBGnut){Fade($astBGnut, 0, 0, null, false);}

	Fade($PreastBGnut, 0, 0, null, false);

	if($BGQ!=0 && $setBGnut!=$PreastBGnut && $astBGnut!=$PreastBGnut){Delete($PreastBGnut);}

	if($BGP==1 && $BGQ==0){
		Fade($setBGnut, $描画時間, 1000, null, false);
	}else if($BGP==1 && $setBGnut!=$astBGnut){
		Fade($astBGnut, $描画時間, 0, Axl3, false);
		Fade($setBGnut, $描画時間, 1000, Dxl2, false);
		Request($astBGnut, Disused);
	}else if($BGP==0){
		Fade($astBGnut, $描画時間, 0, null, false);
		Request($astBGnut, Disused);
	}

	if($待ち==true)
	{
		WaitAction($setBGnut, null);

		if($StP==0){
			WaitAction($astBGnut, null);
		}

	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}

}


//■CreateColorの変形
//=============================================================================//
.//CreateColor系
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateColor」です
..CreateColorEX
function CreateColorEX("ナット名", 描画優先度, イメージデータ)
{

	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);

}

//エイリアス指定がついただけの「CreateColor」です
..CreateColorSP
function CreateColorSP("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	SetAlias("ナット名", "ナット名");
}

//▼加算
//透明度0からスタートする「CreateColor」です（加算合成付き）
..CreateColorEXadd
function CreateColorEXadd("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（加算合成付き）
..CreateColorSPadd
function CreateColorSPadd("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
}

//▼減算
//透明度0からスタートする「CreateColor」です（減算合成付き）
..CreateColorEXsub
function CreateColorEXsub("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（減算合成付き）
..CreateColorSPsub
function CreateColorSPsub("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
}


//▼オーバーレイ
//透明度0からスタートする「CreateColor」です（オーバーレイ合成付き）
..CreateColorEXover
function CreateColorEXover("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（オーバーレイ合成付き）
..CreateColorSPover
function CreateColorSPover("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
}

//▼乗算
//透明度0からスタートする「CreateColor」です（乗算合成付き）
..CreateColorEXmul
function CreateColorEXmul("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 1024, 0, 1024, 576, イメージデータ);
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Move("ナット名", 0, @-1024, @0, null, true);
}

//エイリアス指定がついただけの「CreateColor」です（乗算合成付き）
..CreateColorSPmul
function CreateColorSPmul("ナット名", 描画優先度, イメージデータ)
{
	CreateColor("ナット名", 描画優先度, 0, 0, 1024, 576, イメージデータ);
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
}



//■CreateMovieの変形
//=============================================================================//
.//CreateMovie系
//=============================================================================//

//▼ノーマル
//透明度0からスタートする「CreateMovie」です
..CreateMovieEX
function CreateMovieEX("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です
..CreateMovieSP
function CreateMovieSP("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	SetAlias("ナット名", "ナット名");
}

//▼加算
//透明度0からスタートする「CreateMovie」です（加算合成付き）
..CreateMovieEXadd
function CreateMovieEXadd("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（加算合成付き）
..CreateMovieSPadd
function CreateMovieSPadd("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", AddRender);
	SetAlias("ナット名", "ナット名");
}

//▼減算
//透明度0からスタートする「CreateMovie」です（減算合成付き）
..CreateMovieEXsub
function CreateMovieEXsub("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（減算合成付き）
..CreateMovieSPsub
function CreateMovieSPsub("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", SubRender);
	SetAlias("ナット名", "ナット名");
}

//▼オーバーレイ
//透明度0からスタートする「CreateMovie」です（オーバーレイ合成付き）
..CreateMovieEXover
function CreateMovieEXover("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（オーバーレイ合成付き）
..CreateMovieSPover
function CreateMovieSPover("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", OverlayRender);
	SetAlias("ナット名", "ナット名");
}

//▼乗算
//透明度0からスタートする「CreateMovie」です（乗算合成付き）
..CreateMovieEXmul
function CreateMovieEXmul("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
}

//エイリアス指定がついただけの「CreateMovie」です（乗算合成付き）
..CreateMovieSPmul
function CreateMovieSPmul("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ")
{
	CreateMovie("ナット名", 描画優先度, Ｘ座標, Ｙ座標, ループ, αチャンネル, "イメージデータ");
	Request("ナット名", MulRender);
	SetAlias("ナット名", "ナット名");
}


function CreateStencilT($ナット名１,$ナット名２,画像優先度,Ｘ位置,Ｙ位置,$画像１,$画像２)
{
	$子ナット名=$ナット名１+"/"+$ナット名２;

	CreateStencil($ナット名１,画像優先度,Ｘ位置,Ｙ位置,128,$画像１,false);
	CreateTexture($子ナット名,画像優先度,Ｘ位置,Ｙ位置,$画像２);

	SetAlias($ナット名１, $ナット名１);
	SetAlias($子ナット名, $ナット名２);

	Fade($ナット名１, 0, 0, null, false);
	Fade($ナット名２, 0, 0, null, true);
}

function CreateStencilC($ナット名１,$ナット名２,画像優先度,Ｘ位置,Ｙ位置,$画像１,$画像２)
{
	$子ナット名=$ナット名１+"/"+$ナット名２;

	CreateStencil($ナット名１,画像優先度,Ｘ位置,Ｙ位置,128,$画像１,false);
	CreateColor($子ナット名, 画像優先度, 0, 0, 1024, 576, $画像２);

	SetAlias($ナット名１, $ナット名１);
	SetAlias($子ナット名, $ナット名２);

	Fade($ナット名１, 0, 0, null, false);
	Fade($ナット名２, 0, 0, null, true);
}









//■描画マクロ
//=============================================================================//
.//場面転換用
//=============================================================================//
//画面上にこのナット以外全てを残さない
//使用する際は絶対に「Pre」の外で使用してください
..PrintBG
function PrintBG("ナット名",描画優先度)
{
	CreateEffect("ナット名", 描画優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", Lock);

	Delete("@*");
	Delete("*");

	ByeBye();

	Request("ナット名", UnLock);
}

..PrintBG2
function PrintBG2("ナット名")
{
	CreateTexture("ナット名", 30000, 0, 0, "SCREEN");
	SetAlias("ナット名", "ナット名");
	Request("ナット名", Lock);

	Delete("@*");
	Delete("*");

	ByeBye();

	Request("ナット名", UnLock);
}

//※新規追加項目
//音関連は消さない用のPrintBG
..PrintGO
function PrintGO("ナット名",描画優先度)
{
	CreateEffect("ナット名", 描画優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", Lock);

	DeleteStC(0,true);
	DeleteStR(0,true);
	DeleteStL(0,true);
	DeleteStCR(0,true);
	DeleteStCL(0,true);
	DeleteStX(0,true);

	Delete("@絵*");
	Delete("絵*");
	Delete("@OnBG*");
	Delete("OnBG*");

	ByeBye();

	Request("ナット名", UnLock);
}

..CreatePlainSP
function CreatePlainSP("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);

}

..CreatePlainSPadd
function CreatePlainSPadd("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", AddRender);

}

..CreatePlainSPsub
function CreatePlainSPsub("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", SubRender);

}

..CreatePlainSPover
function CreatePlainSPover("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", OverlayRender);

}

..CreatePlainSPmul
function CreatePlainSPmul("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("ナット名","ナット名");
	Request("ナット名",Passive);
	Request("ナット名", MulRender);

}

..CreatePlainEX
function CreatePlainEX("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");

}

..CreatePlainEXadd
function CreatePlainEXadd("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", AddRender);

}

..CreatePlainEXsub
function CreatePlainEXsub("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", SubRender);

}

..CreatePlainEXover
function CreatePlainEXover("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", OverlayRender);

}

..CreatePlainEXmul
function CreatePlainEXmul("ナット名",優先度){

	CreateEffect("ナット名", 優先度, 0, 0, 1024, 576, "Plain");
	Request("ナット名",Passive);
	Fade("ナット名", 0, 0, null, true);
	SetAlias("ナット名","ナット名");
	Request("ナット名", MulRender);

}

//=============================================================================//
.//抹消系
//=============================================================================//
..FadeDelete
function FadeDelete("ナット名", 所要時間, 待ち)
{
	Fade("ナット名", 所要時間, 0, null, 待ち);
	Request("ナット名", UnLock);
	Request("ナット名", Disused);
}

..DrawDelete
function DrawDelete("ナット名", 所要時間, 境界, "$画像", 待ち)
{
	$Transition = "cg/data/" + "$画像" + ".png";

	DrawTransition("ナット名", 所要時間, 1000, 0, 境界, null, "$Transition", 待ち);
	Request("ナット名", UnLock);
	Request("ナット名", Disused);
}

..PlayDelete
function PlayDelete($プレイナット名, $PlayDeleteTime, $PlayWait)
{
	if($PlayDeleteCount==0){
		$PlayDeleteCount=1;
	}else if($PlayDeleteCount==1){
		$PlayDeleteCount=2;
	}else if($PlayDeleteCount==2){
		$PlayDeleteCount=3;
	}else if($PlayDeleteCount==3){
		$PlayDeleteCount=1;
	}

	$PlayDeleteName="PlayDeleteProcess"+$PlayDeleteCount;

	if($PlayWait==false){
		Fade($プレイナット名, $PlayDeleteTime, 0, null, false);

		CreateProcess("プレイ消去１", 150, 0, 0, $PlayDeleteName);
		SetAlias("プレイ消去１", "プレイ消去１");
		Request("プレイ消去１", Start);
		Request("プレイ消去１", Disused);
	}else{
		Fade($プレイナット名, $PlayDeleteTime, 0, null, true);

		Request($プレイナット名, Stop);
		Delete($プレイナット名);
	}
}

function PlayDeleteProcess1()
{
	Wait($PlayDeleteTime);
	Request($プレイナット名, Stop);
	Delete($プレイナット名);
}

function PlayDeleteProcess2()
{
	Wait($PlayDeleteTime);
	Request($プレイナット名, Stop);
	Delete($プレイナット名);
}

function PlayDeleteProcess3()
{
	Wait($PlayDeleteTime);
	Request($プレイナット名, Stop);
	Delete($プレイナット名);
}



//■移動などの場面転換に関するマクロ
//=============================================================================//
.//暗転処理系
//=============================================================================//
//使用する際は絶対に「Pre」の外で使用してください
..ClearFadeAll
function ClearFadeAll(所要時間,待ち)
{
	CreateColor("クリア黒", 30000, 0, 0, 1024, 576, "BLACK");
	SetAlias("クリア黒", "クリア黒");
	Fade("クリア黒", 0, 0, null, true);

	Fade("クリア黒", 所要時間, 1000, null, 待ち);

	Delete("@*");
	Delete("*");

	ByeBye();
}

//使用する際は絶対に「Pre」の外で使用してください
//ＳＥも一つで対応
..ClearWaitAll
function ClearWaitAll($FadeSoundTime,待ち時間)
{
	CreateColor("絵Clear_BlackWait", 24000, 0, 0, 1024, 576, "BLACK");
	SetAlias("絵Clear_BlackWait", "絵Clear_BlackWait");
	Fade("絵Clear_BlackWait", 0, 0, null, true);

	Request("絵Clear_BlackWait", Lock);


	$SoundTimeCFA=$FadeSoundTime+500;

	SetVolume("@SE*", $SoundTimeCFA, 0, null);
	SetVolume("SE*", $SoundTimeCFA, 0, null);
	SetVolume("@OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("@mbgm*", $SoundTimeCFA, 0, null);
	Fade("絵Clear_BlackWait", $FadeSoundTime, 1000, null, true);

	Wait(待ち時間);
	WaitPlay("@SE*",null);
	WaitPlay("@OnSE*",null);
	WaitPlay("SE*",null);
	WaitPlay("OnSE*",null);

	Delete("@*");
	Delete("*");

	ByeBye();

	Request("絵Clear_BlackWait", UnLock);

}

//使用する際は絶対に「Pre」の外で使用してください
..ClearDrawAll
function ClearDrawAll(所要時間, 境界, $画像, 待ち)
{
	CreateColor("クリア黒", 30000, 0, 0, 1024, 576, "BLACK");
	SetAlias("クリア黒", "クリア黒");
	Fade("クリア黒", 0, 0, null, true);

	$Transition = "cg/data/" + $画像 + ".png";
	Fade("クリア黒", 0, 1000, null, false);
	DrawTransition("クリア黒", 所要時間, 0, 1000, 境界, null, $Transition, 待ち);

	Delete("@*");
	Delete("*");

	ByeBye();
}


..MoveEX
function MoveEX("ナット名", 所要時間, $Ｘ座標, $Ｙ座標, テンポ, 待ち)
{
	$Ｘ座標プレ = - $Ｘ座標;
	$Ｙ座標プレ = - $Ｙ座標;

	$Ｘ座標マイナス = "@" + $Ｘ座標プレ;
	$Ｙ座標マイナス = "@" + $Ｙ座標プレ;

	$Ｘ座標プラス = "@" + $Ｘ座標;
	$Ｙ座標プラス = "@" + $Ｙ座標;

	Move("ナット名", 0, $Ｘ座標マイナス, $Ｙ座標マイナス, null, true);
	Move("ナット名", 所要時間, $Ｘ座標プラス, $Ｙ座標プラス, テンポ, 待ち);
}



..初期化
function ByeBye()
{
//■立ち絵
	$StXP = 0;
	$StCP = 0;
	$StCLP = 0;
	$StLP = 0;
	$StCRP = 0;
	$StRP = 0;

	$StCName01="";
	$StCName02="";
	$StCName03="";
	$StCName04="";
	$StCName05="";
	$StCName06="";
	$StCName07="";
	$StCName08="";
	$StCName09="";
	$StCName10="";

	$StCLName01="";
	$StCLName02="";
	$StCLName03="";
	$StCLName04="";
	$StCLName05="";
	$StCLName06="";
	$StCLName07="";
	$StCLName08="";
	$StCLName09="";
	$StCLName10="";

	$StLName01="";
	$StLName02="";
	$StLName03="";
	$StLName04="";
	$StLName05="";
	$StLName06="";
	$StLName07="";
	$StLName08="";
	$StLName09="";
	$StLName10="";

	$StCRName01="";
	$StCRName02="";
	$StCRName03="";
	$StCRName04="";
	$StCRName05="";
	$StCRName06="";
	$StCRName07="";
	$StCRName08="";
	$StCRName09="";
	$StCRName10="";

	$StRName01="";
	$StRName02="";
	$StRName03="";
	$StRName04="";
	$StRName05="";
	$StRName06="";
	$StRName07="";
	$StRName08="";
	$StRName09="";
	$StRName10="";

//■バストアップ
	$BuXP = 0;
	$BuCP = 0;
	$BuCLP = 0;
	$BuLP = 0;
	$BuCRP = 0;
	$BuRP = 0;

	$BuCName01="";
	$BuCName02="";
	$BuCName03="";
	$BuCName04="";
	$BuCName05="";
	$BuCName06="";
	$BuCName07="";
	$BuCName08="";
	$BuCName09="";
	$BuCName10="";

	$BuCLName01="";
	$BuCLName02="";
	$BuCLName03="";
	$BuCLName04="";
	$BuCLName05="";
	$BuCLName06="";
	$BuCLName07="";
	$BuCLName08="";
	$BuCLName09="";
	$BuCLName10="";

	$BuLName01="";
	$BuLName02="";
	$BuLName03="";
	$BuLName04="";
	$BuLName05="";
	$BuLName06="";
	$BuLName07="";
	$BuLName08="";
	$BuLName09="";
	$BuLName10="";

	$BuCRName01="";
	$BuCRName02="";
	$BuCRName03="";
	$BuCRName04="";
	$BuCRName05="";
	$BuCRName06="";
	$BuCRName07="";
	$BuCRName08="";
	$BuCRName09="";
	$BuCRName10="";

	$BuRName01="";
	$BuRName02="";
	$BuRName03="";
	$BuRName04="";
	$BuRName05="";
	$BuRName06="";
	$BuRName07="";
	$BuRName08="";
	$BuRName09="";
	$BuRName10="";


//■顔ウィンドウ
	$stand01_use="";
	$stand02_use="";
	$stand03_use="";
	$stand04_use="";
	$stand05_use="";
	$stand06_use="";
	$stand07_use="";
	$stand08_use="";
	$stand09_use="";
	$stand10_use="";
	$stand11_use="";
	$stand12_use="";
	$stand13_use="";
	$stand14_use="";
	$stand15_use="";
	$stand16_use="";
	$stand17_use="";
	$stand18_use="";
	$stand19_use="";
	$stand20_use="";
	$stand21_use="";
	$stand22_use="";
	$stand23_use="";
	$stand24_use="";
	$stand25_use="";
	$stand26_use="";
	$stand27_use="";
	$stand28_use="";
	$stand29_use="";
	$stand30_use="";

	$KwCName01="";
	$KwCName02="";
	$KwCName03="";
	$KwCName04="";
	$KwCName05="";
	$KwCName06="";
	$KwCName07="";
	$KwCName08="";
	$KwCName09="";
	$KwCName10="";

	$KwCLName01="";
	$KwCLName02="";
	$KwCLName03="";
	$KwCLName04="";
	$KwCLName05="";
	$KwCLName06="";
	$KwCLName07="";
	$KwCLName08="";
	$KwCLName09="";
	$KwCLName10="";

	$KwLName01="";
	$KwLName02="";
	$KwLName03="";
	$KwLName04="";
	$KwLName05="";
	$KwLName06="";
	$KwLName07="";
	$KwLName08="";
	$KwLName09="";
	$KwLName10="";

	$KwCRName01="";
	$KwCRName02="";
	$KwCRName03="";
	$KwCRName04="";
	$KwCRName05="";
	$KwCRName06="";
	$KwCRName07="";
	$KwCRName08="";
	$KwCRName09="";
	$KwCRName10="";

	$KwRName01="";
	$KwRName02="";
	$KwRName03="";
	$KwRName04="";
	$KwRName05="";
	$KwRName06="";
	$KwRName07="";
	$KwRName08="";
	$KwRName09="";
	$KwRName10="";

//■TVマクロ「基本」
	$vision01_use="";
	$vision02_use="";
	$vision03_use="";
	$vision04_use="";
	$vision05_use="";
	$vision06_use="";
	$vision07_use="";
	$vision08_use="";
	$vision09_use="";
	$vision10_use="";

	$TvProcessName01="";
	$TvProcessName02="";
	$TvProcessName03="";
	$TvProcessName04="";
	$TvProcessName05="";
	$TvProcessName06="";
	$TvProcessName07="";
	$TvProcessName08="";
	$TvProcessName09="";
	$TvProcessName10="";

//■TVマクロ「ノイズ」
	$NvSoundName01="";
	$NvSoundName02="";
	$NvSoundName03="";
	$NvSoundName04="";
	$NvSoundName05="";
	$NvSoundName06="";
	$NvSoundName07="";
	$NvSoundName08="";
	$NvSoundName09="";
	$NvSoundName10="";

//■TVマクロ「立ち絵」
	$TvName01="";
	$TvName02="";
	$TvName03="";
	$TvName04="";
	$TvName05="";
	$TvName06="";
	$TvName07="";
	$TvName08="";
	$TvName09="";
	$TvName10="";

//■TVマクロ「画像絵」
	$BvName01="";
	$BvName02="";
	$BvName03="";
	$BvName04="";
	$BvName05="";
	$BvName06="";
	$BvName07="";
	$BvName08="";
	$BvName09="";
	$BvName10="";

//■TVマクロ「色像絵」
	$CvName01="";
	$CvName02="";
	$CvName03="";
	$CvName04="";
	$CvName05="";
	$CvName06="";
	$CvName07="";
	$CvName08="";
	$CvName09="";
	$CvName10="";

//■背景用「OnBG」【09/01/29】
	$BgNameN01="";
	$BgNameN02="";
	$BgNameN03="";
	$BgNameN04="";
	$BgNameN05="";
	$BgNameN06="";
	$BgNameN07="";
	$BgNameN08="";
	$BgNameN09="";
	$BgNameN10="";

//■ＳＥ用「OnBG」【09/01/29】

}


//■エンディング関係のマクロコマンド
//=============================================================================//
.//エンディング関係
//=============================================================================//
//=============================================================================//
..//★ＥＤ連想
//=============================================================================//
function ArrayEND()
{
	Array($EndName,"英雄編","復讐編","魔王編","悪鬼編","茶々編","解放編");
	AssocArray($EndName,"英雄編","復讐編","魔王編","悪鬼編","茶々編","解放編");
	Array($EndName["英雄編"],"Roll01","@msong02_full","BLACK",-13000,60000,1024,3,"H",false,true);
	Array($EndName["復讐編"],"Roll01","@msong02_full","BLACK",-13000,60000,1024,3,"H",false,true);
	Array($EndName["魔王編"],"Roll01","@msong01_full","BLACK",-5000,60000,1024,3,"H",false,true);
	Array($EndName["悪鬼編"],"Roll01","@msong03_full2","BLACK",6000,60000,1124,3,"H",false,true);
	Array($EndName["茶々編"],"Roll01","@msong04_inst","BLACK",10000,60000,1024,3,"H",false,true);
	Array($EndName["解放編"],"Roll01","@msong02_full","BLACK",-13000,60000,1024,3,"H",false,true);

//■０：プロセス名
//■１：唄名
//■２：出だしの背景
//■３：再生秒数調整
//■４：ＢＧＭ２週目へのカウント
//■５：ロール位置調整
//■６：スタッフロールの数
//■７：スタッフロールの形式「F」「H」「V」
//■８：２曲あるかないか、有る場合は曲名を無い場合は「false」
//■９：後ろで画像を切り替えるか

//■０－：フェード画像差分
//■１－：待機秒数、表示秒数

//■６－：ロール画像差分
//■７－：間隔調整（頭は「５」で調整してください）

	Array($EndName["英雄編"][0],"logo.png");
	Array($EndName["英雄編"][1],0,960,10,10);
	Array($EndName["英雄編"][6],"一条ルート","staff01","staff02");
	Array($EndName["英雄編"][7],0,0,0);

	Array($EndName["復讐編"][0],"logo.png");
	Array($EndName["復讐編"][1],0,960,10,10);
	Array($EndName["復讐編"][6],"香奈枝ルート","staff01","staff02");
	Array($EndName["復讐編"][7],0,0,0);

	Array($EndName["茶々編"][0],"logo.png");
	Array($EndName["茶々編"][1],0,960,10,10);
	Array($EndName["茶々編"][6],"茶々丸ルート","staff01","staff02");
	Array($EndName["茶々編"][7],0,0,0);

	Array($EndName["魔王編"][0],"logo.png");
	Array($EndName["魔王編"][1],0,960,10,10);
	Array($EndName["魔王編"][6],"村正ルート２","staff01","staff02");
	Array($EndName["魔王編"][7],0,0,0);

	Array($EndName["解放編"][0],"logo.png");
	Array($EndName["解放編"][1],0,960,10,10);
	Array($EndName["解放編"][6],"村正ルート２","staff01","staff02");
	Array($EndName["解放編"][7],0,0,0);

	Array($EndName["悪鬼編"][0],"ev169_署長との出会い.jpg","ev132_笑う統.jpg","ev133_兜割に挑む光_c.jpg","ev008_赤子を抱える女.jpg","ev128_病床の光_b01.jpg","ev138_首領の最期_d.jpg","ev139_統を殺害_a.jpg","ev101_プロローグ_a.jpg","ev103_香奈枝演奏_a.jpg","ev268_ヤクザと対峙する一条.jpg","ev106_雄飛と見下ろす村正_d.jpg","ev112_一条をお姫様だっこする村正.jpg","ev113_サーキット貴賓席_a.jpg","ev914_九〇式竜騎兵魔剣インメルマンターン.jpg","ev213_景明と村正の結縁_b.jpg","ev221_月明かりを浴びて立つ光_b.jpg","ev230_泣きじゃくる村正.jpg","ev239_茶々丸の最期_d.jpg","ev251_村正VS銀星号決戦第二局.jpg","ev255_野太刀を構える村正_a.jpg","ev256_銀星号の最期_b.jpg","ev263_村正を刺し貫く雪車町.jpg","ev266_景明、悪鬼の笑い.jpg","logo.png");
	Array($EndName["悪鬼編"][1],5,35,5,34,5,5,5,34,5,5,5,34,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,16,3,3);
	Array($EndName["悪鬼編"][6],"村正ルート","staff01","staff02");
	Array($EndName["悪鬼編"][7],0,200,50);

//デバッグ用
	$RollDebug=false;
	if($RollDebug){
		$RollDebugAll=0;
		$RollDebugWhile=1;
		while(Count($EndName["悪鬼編"][1])>$RollDebugWhile){
			$RollDebugAll=$RollDebugAll+$EndName["悪鬼編"][1][$RollDebugWhile];
			$RollDebugWhile=$RollDebugWhile+2;
		}
		CreateText("デバッグロール", 2000000, 50, 50, 700, 500, $RollDebugAll);
		WaitKey();
		Delete("デバッグロール");
	}

	$LayerCount0=100000;//下地
	$LayerCount1=100010;//ロール
	$LayerCount2=100009;//フェード用の絵
	if($EndName[$ENDNumber]=="悪鬼編"){
		$LayerCount2=100011;//フェード用の絵
	}
	$LayerCount9=200000;
}

//=============================================================================//
..//★ＥＤ定義
//=============================================================================//
function TheEND($ENDNumber)
{
	QuickStop();

	//▼連想配列
	ArrayEND();

	$EndBunbo=1000;
	$ENDBGM=$EndName[$ENDNumber][1];
	$ENDBack=$EndName[$ENDNumber][2];
	$TimeAdjust=$EndName[$ENDNumber][3];
	$LoopAdjust=$EndName[$ENDNumber][4];
	$LengthAdjust=$EndName[$ENDNumber][5];
	$ENDImage="end";
	$BGM名2=$EndName[$ENDNumber][8];
	SoundPlay($ENDBGM,0,1000,true);

	//★背景差し替え
	if($ENDBack!="EXTRA"){
		if($ENDBack=="BLACK"||$ENDBack=="WHITE"){
			CreateColor("ENDBack", $LayerCount0, 0, 0, 1024, 576, $ENDBack);
		}else{
			CreateTexture("ENDBack", $LayerCount0, 0, 0, $ENDBack);
		}
		SetAlias("ENDBack", "ENDBack");
		Fade("ENDBack", 0, 0, null, true);
		Fade("ENDBack", 1000, 1000, null, true);
	
		//★ロック設置
		LockVideo(true);
		Fade("@*", 0, 0, null, false);
		Fade("*", 0, 0, null, false);
		Fade("ENDBack", 0, 1000, null, true);
		//★ロック設置
		LockVideo(false);
	}

	if($EndName[$ENDNumber]=="悪鬼編"){
		CreateTextureSP("ENDWindow", $LayerCount9, 25, 120, "cg/sys/ed/エンドロール用イベントボカシ額縁.png");
		CreateTextureSP("ENDWindow2", $LayerCount2, 0, 0, "cg/sys/ed/エンドロール用イベントボカシ額縁2.png");
	}

	//★ＥＤ定義
	$RollNut=String("ClearRoll%02d",$ENDNumber);
	EndRollTexture();
	if(VariableValue(#,$RollNut)){
		SetRoll($EndProcess,$ENDBGM,false);
	}else{
		SetRoll($EndProcess,$ENDBGM,true);
		VariableValue(#,$RollNut,true);
	}

	//■右バー再開
	if($ENDNumber==0||$ENDNumber==1||$ENDNumber==2||$ENDNumber==4){
		Wait(5000);
		QuickStart();
	}
}

...//■テクスチャ系定義
function EndRollTexture()
{
	$EndRoll=$EndName[$ENDNumber][0];

	if($EndRoll=="Roll01"){
		$EndProcess="ProcessRoll01";
		TextureRoll01();
	}else if($EndRoll=="Roll00"){
		$EndProcess="ProcessRoll00";
		TextureRoll00();
	}else if($EndRoll=="Roll00H"){
		$EndProcess="ProcessRoll00H";
		TextureRoll00H();
	}
}

//=============================================================================//
..//★ロール開始
//=============================================================================//
function SetRoll($処理単位名,$BGM名,$待機)
{
	if(!$PreSetRoll){
		#play_speed_plus=#SYSTEM_play_speed;
		#SYSTEM_play_speed=3;
	
		$SYSTEM_text_auto=false;
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
	
		$SYSTEM_menu_lock=true;
	}

	CreateProcess("エンドロールプロセス", 2000, 0, 0, $処理単位名);
	SetAlias("エンドロールプロセス", "エンドロールプロセス");
	CreateProcess("エンドロール歌プロセス", 150, 0, 0, "EndSong");
	SetAlias("エンドロール歌プロセス", "エンドロール歌プロセス");

	CreateColor("色", $LayerCount9, 0, 0, 1024, 576, BLACK);
	SetAlias("色", "色");
	Fade("色", 0, 0, null, true);

	$EndingSkip=false;
	Request("エンドロールプロセス", Start);
	Wait(5000);
	if($待機){WaitAction("エンドロールプロセス", null);}
	WaitKey();
	$EndingSkip=true;

	Request($BGM名, EntrustSuspend);
	SetVolume($BGM名, 6000, 0, NULL);

	Wait(2000);
	Fade("@色", 2000, 1000, null, true);

	Request("エンドロールプロセス", Stop);

	Fade("@エンドロール*",0,0,null,true);
	Delete("@エンドロール*");
	Delete("@END*");
	Fade("@色", 0, 0, null, true);

	Delete("@色");

	Wait(2000);

	if($EndName[$ENDNumber]!="悪鬼編"){
		$SYSTEM_menu_lock = false;
	}

	#SYSTEM_play_speed = #play_speed_plus;
	$SYSTEM_text_waitkey = true;

	$ClearL=true;
	#ClearG=true;

	$PLACE_end=false;
	$PreSetRoll=false;
}


//=============================================================================//
..//●ロール方式プロセス
//=============================================================================//

//――――――――――――――――――――――――――――――――――――
...//古典的フェードスクリプト
function TextureRoll01()
{
	if($EndName[$ENDNumber][9]){
		$ENDWhile=0;
		while(Count($EndName[$ENDNumber][0])>$ENDWhile){
			$nut=String("ENDTexture%02d",$ENDWhile);
			$img=$EndName[$ENDNumber][0][$ENDWhile];
	
			if($img=="WHITE"||$img=="BLACK"){
				CreateColor($nut, $LayerCount2, 0, 0, 1024, 576, $img);
			}else{
				$img="cg/sys/ed/thum/"+$img;

				if($EndName[$ENDNumber]=="悪鬼編"){
					if(Strstr($img, "logo")){
						CreateTexture($nut, $LayerCount9, 0, 0, $img);
					}else{
						CreateTexture($nut, $LayerCount2, 25, 120, $img);
					}
				}else{
					CreateTexture($nut, $LayerCount2, 0, 0, $img);
				}
			}
			SetAlias($nut, $nut);
			Fade($nut, 0, 0, null, true);
			$ENDWhile++;
		}
	}

	if($EndName[$ENDNumber][7]!="F"){
		if($EndName[$ENDNumber][7]=="V"){
			$EndStartPoint=576;
		}else if($EndName[$ENDNumber][7]=="H"){
			$EndStartPoint=0;
		}

		$ENDWhile=0;
		while($EndName[$ENDNumber][6]>$ENDWhile){
			$nut=String("ENDRoll%02d",$ENDWhile);
			$img="cg/sys/ed/"+$EndName[$ENDNumber][6][$ENDWhile]+".png";

			if($EndName[$ENDNumber][7]=="V"){
				CreateTexture($nut, $LayerCount1, Center, 0, $img);
				SetAlias($nut, $nut);

				$EndStartPoint=$EndStartPoint+$EndName[$ENDNumber][7][$ENDWhile];
				$RollV=$EndStartPoint;
				Move($nut, 0, 0, $RollV, null, true);
				$EndStartPoint+=ImageVertical($nut);
				$EndStart=$EndStartPoint;
			}else if($EndName[$ENDNumber][7]=="H"){
				CreateTexture($nut, $LayerCount1, 0, Middle, $img);
				SetAlias($nut, $nut);

				$EndStartPoint+=ImageHorizon($nut);
				$EndStartPoint=$EndStartPoint+$EndName[$ENDNumber][7][$ENDWhile];
				$RollH = -$EndStartPoint;
				Move($nut, 0, $RollH, 0, null, true);
				$EndStart=$EndStartPoint;
			}

			$ENDWhile++;
		}
	}
}

function ProcessRoll01()
{
	if($EndName[$ENDNumber][7]=="V"){
		$EndMoveA=$EndStart;
		$EndMoveX=0;
		$EndMoveY=-($EndMoveA+$LengthAdjust);
	}else if($EndName[$ENDNumber][7]=="H"){
		$EndMoveA=$EndStart;
		$EndMoveX=$EndMoveA+$LengthAdjust;
		$EndMoveY=0;
	}

	SetLoop($BGM名, false);
	Request($BGM名, CompulsorySuspend);

	$時間=RemainTime($BGM名);
	$時間=$時間+$TimeAdjust;
	if($時間<$LoopAdjust){
		$EndExtension=true;
		$秒数=DurationTime($BGM名);
		$時間+=$秒数;
		Request("@エンドロール歌プロセス", Start);
	}

	if($EndName[$ENDNumber][8]!=false){
		$時間+=DurationTime($BGM名2);
		Request("@エンドロール歌プロセス", Start);
	}

//	WaitKey();

	if($EndName[$ENDNumber][7]!="F"){
		Move("@ENDRoll*",$時間,@$EndMoveX,@$EndMoveY,null,false);
	}

//	WaitKey();

	$nut="何か";

	if($EndName[$ENDNumber][9]){
		$EndOneTime=$時間/$EndBunbo;
		$ENDWhile2=0;
		$ENDWhile=0;
		while(Count($EndName[$ENDNumber][0])>$ENDWhile){
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Fade($nut, $Time, 0, null, false);

			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Wait($Time);
	
			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			$nut=String("@ENDTexture%02d",$ENDWhile);
			Fade($nut, $Time, 1000, null, false);

			$ENDWhile2++;
			$Time=$EndName[$ENDNumber][1][$ENDWhile2]*$EndOneTime;
			Wait($Time);

			$ENDWhile2++;
			$ENDWhile++;
		}
	}

	WaitAction("@ENDRoll*", null);
}

//――――――――――――――――――――――――――――――――――――
...//古典的ロールスクリプト
function TextureRoll00()
{
	CreateTexture("ENDRoll", $LayerCount1, 0, 600, $ENDImage);
	SetAlias("ENDRoll", "ENDRoll");
}
function ProcessRoll00()
{
	$EndMoveA=ImageVertical("@ENDRoll");
	$EndMoveA+=$LengthAdjust;
	$EndMoveB=-($EndMoveA);

	SetLoop($BGM名, false);
	Request($BGM名, CompulsorySuspend);

	$時間=RemainTime($BGM名);
	$時間+=$TimeAdjust;
	if($時間<$LoopAdjust){
		$EndExtension=true;
		$秒数=DurationTime($BGM名);
		$時間+=$秒数;
		Request("@エンドロール歌プロセス", Start);
	}
	Move("@ENDRoll",$時間,@0,@$EndMoveB,null,true);
}

//――――――――――――――――――――――――――――――――――――
...//古典的ロールスクリプト：横
function TextureRoll01H()
{
	CreateTexture("ENDRoll", $LayerCount1, 0, 0, $ENDImage);
	SetAlias("ENDRoll", "ENDRoll");

	$RollH=ImageHorizon("ENDRoll");
	$RollH=-$RollH;
	Move("ENDRoll", 0, $RollH, 0, null, true);
}
function ProcessRoll01H()
{
	$EndMoveA=ImageHorizon("@ENDRoll");
	$EndMoveA+=$LengthAdjust;

	SetLoop($BGM名, false);
	Request($BGM名, CompulsorySuspend);

	$時間=RemainTime($BGM名);
	$時間+=$TimeAdjust;
	if($時間<$LoopAdjust){
		$EndExtension=true;
		$秒数=DurationTime($BGM名);
		$時間+=$秒数;
		Request("@エンドロール歌プロセス", Start);
	}
	Move("@ENDRoll",$時間,@$EndMoveA,@0,null,true);
}

//――――――――――――――――――――――――――――――――――――
//エンドスクリプト用の音継続プロセス
//――――――――――――――――――――――――――――――――――――
function EndSong()
{
	if($EndExtension){
		$EndTime=RemainTime($BGM名);
		Wait($EndTime);
	
		SetVolume($BGM名, 1000, 0, NULL);
		WaitAction($BGM名, null);
	
		SetFrequency($BGM名, 0, 1000, NULL);
		SetVolume($BGM名, 0, 1000, null);
		SetLoop($BGM名, false);
		Request($BGM名, Play);
	}

	if($EndName[$ENDNumber][8]!=false){
		WaitPlay($BGM名, null);
	
		if(!$EndingSkip){
			Request($BGM名2, CompulsorySuspend);
	
			SetFrequency($BGM名2, 0, 1000, NULL);
			SetVolume($BGM名2, 0, 1000, null);
			SetLoop($BGM名2, false);
			Request($BGM名2, Play);
	
			WaitPlay($BGM名2, null);
		}
	}
}
//――――――――――――――――――――――――――――――――――――

//=============================================================================//
..//★ロール準備（最後にロックする場合）
//=============================================================================//
function PreSetRoll($ENDNumber)
{
	//■右バー停止
	QuickStop();

	//▼連想配列
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,1000,true);

	$PLACE_end=true;

	#play_speed_plus = #SYSTEM_play_speed;
	#SYSTEM_play_speed = 3;

	$SYSTEM_text_auto = false;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;

	$SYSTEM_menu_lock = true;

	Request($ENDBGM, CompulsorySuspend);

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;

	$PreSetRoll=true;
}


function PreSetRoll02A()
{
	//■右バー停止
	QuickStop();

	//▼連想配列
	ArrayEND();

	$PLACE_end=true;

	#play_speed_plus = #SYSTEM_play_speed;
	#SYSTEM_play_speed = 3;

	$SYSTEM_text_auto = false;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;

	$SYSTEM_menu_lock = true;

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;

	$PreSetRoll=true;
}
function PreSetRoll02B($ENDNumber)
{
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,1000,true);
	Request($ENDBGM, CompulsorySuspend);
}

//=============================================================================//
..//★ロール準備（途中からクリックロックする場合）
//=============================================================================//
function PreTextRoll($ENDNumber)
{
	//■右バー停止
	QuickStop();

	//▼連想配列
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,1000,true);

	$PLACE_end=true;

	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_skip=false;

	$SYSTEM_text_auto_lock=true;

	Request($ENDBGM, CompulsorySuspend);
	$SYSTEM_text_auto_lock = true;

	$SYSTEM_text_interval = 128;
	$SYSTEM_text_waitkey = false;
}

function PlayVOICE_ED($VoiceClassNut,$音楽データ,$VoiceWaitPlus1,$VoiceWaitPlus2)
{
//<voice name="デネブ" class="デネブ" src="voice/st20/0600220de" mode="off">

	$クラス名=$VoiceClassNut;

	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$クラス名){
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&!VariableValue(#,"ConfigCV_"+$クラス名+"[1]"))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$場所指定 = "voice/" + $音楽データ;

		CreateSound($VoiceClassNut, VOICE, $場所指定);
		SetAlias($VoiceClassNut, $VoiceClassNut);

		SetLoop($VoiceClassNut, false);
		SetVolume($VoiceClassNut, 0, 1000, null);
		Request($VoiceClassNut, Play);
		Request($VoiceClassNut, Disused);

		$VoiceWaitPlus=$VoiceWaitPlus1;
	}else{
		$VoiceWaitPlus=$VoiceWaitPlus2;
	}
}
function StopVOICEED()
{
	$待ち時間=RemainTime($VoiceClassNut);
	$待ち時間+=$VoiceWaitPlus;
	Wait($待ち時間);
	Delete($VoiceClassNut);
}

/*
	PlayVOICE_ED("デネブ","voice/st20/0600220de",1000,3000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box00>
[text0010028]
//【デネブ】
<voice name="デネブ" class="デネブ" src="voice/st20/0600220de" mode="off">
「見られちゃった――」
{StopVOICEED();}
</PRE>
	SetText();
	TypeBegin();//―――――――――――――――――――――――――――――
*/



//■音関係のマクロコマンド
//=============================================================================//
.//音関係
//=============================================================================//

// 定義
function CreateBGM("ナット名",$音楽データ)
{
	$場所指定 = "sound/bgm/" + $音楽データ;

	CreateSound("ナット名", BGM, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
	Request("ナット名", Lock);
}

function CreateBGMPX("ナット名",$音楽データ)
{
	$場所指定 = $音楽データ;

	CreateSound("ナット名", BGM, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
	Request("ナット名", Lock);
}

function CreateBGMSP("ナット名",$音楽データ)
{
	$場所指定 = "sound/bgm/" + $音楽データ;

	CreateSound("ナット名", SE, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
	Request("ナット名", Lock);
}

function CreateBGMEX("ナット名",$音楽データ,開始ミリ秒,終了ミリ秒)
{
	$場所指定 = "sound/bgm/" + $音楽データ;

	CreateSound("ナット名", BGM, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
	SetLoopPoint("ナット名",開始ミリ秒,終了ミリ秒);
}

function OnSE($音楽データ,ＳＥ音量)
{
	if($SeName==""||$SeName=="OnSE10"){$SeName="OnSE01";}
	else if($SeName=="OnSE01"){$SeName="OnSE02";}
	else if($SeName=="OnSE02"){$SeName="OnSE03";}
	else if($SeName=="OnSE03"){$SeName="OnSE04";}
	else if($SeName=="OnSE04"){$SeName="OnSE05";}
	else if($SeName=="OnSE05"){$SeName="OnSE06";}
	else if($SeName=="OnSE06"){$SeName="OnSE07";}
	else if($SeName=="OnSE07"){$SeName="OnSE08";}
	else if($SeName=="OnSE08"){$SeName="OnSE09";}
	else if($SeName=="OnSE09"){$SeName="OnSE10";}

	if($SeName01==""){$SeName01=$SeName;}
	else if($SeName02==""){$SeName02=$SeName;}
	else if($SeName03==""){$SeName03=$SeName;}
	else if($SeName04==""){$SeName04=$SeName;}
	else if($SeName05==""){$SeName05=$SeName;}
	else if($SeName06==""){$SeName06=$SeName;}
	else if($SeName07==""){$SeName07=$SeName;}
	else if($SeName08==""){$SeName08=$SeName;}
	else if($SeName09==""){$SeName09=$SeName;}
	else if($SeName10==""){$SeName10=$SeName;}

	$ナット名 = $SeName;

	$場所指定 = "sound/se/" + $音楽データ;

	CreateSound($ナット名, SE, $場所指定);
	SetVolume($ナット名, 0, 0, NULL);
	SetAlias($ナット名, $ナット名);

	Request($ナット名, "Play");

	SetFrequency($ナット名, 0, 1000, NULL);
	SetPan($ナット名, 0, 0, NULL);
	SetLoop($ナット名, false);
	SetVolume($ナット名, 0, ＳＥ音量, null);
	Request($ナット名, Disused);

}

function CreateSE("ナット名",$音楽データ)
{
	$場所指定 = "sound/se/" + $音楽データ;

	CreateSound("ナット名", SE, $場所指定);
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
}

function CreateSEEX("ナット名",$音楽データ)
{
	$場所指定 = "sound/se/" + "$音楽データ";

	if($音楽データ=="se戦闘_攻撃_エネルギー鬩ぎ合い01_L"){
		$開始ミリ秒=5833;
		$終了ミリ秒=17267;
	}else if($音楽データ=="se戦闘_攻撃_鎧_剣戟05_L"){
		$開始ミリ秒=4618;
		$終了ミリ秒=22538;
	}else if($音楽データ=="se特殊_陰義_レールガン穿_準備"){
		$開始ミリ秒=1536;
		$終了ミリ秒=9301;
	}else if($音楽データ=="se戦闘_荒覇吐_攻撃02_L"){
		$開始ミリ秒=5325;
		$終了ミリ秒=8294;
	}else if($音楽データ=="se乗物_飛行船_離陸開始_L"){
		$開始ミリ秒=15871;
		$終了ミリ秒=18810;
	}else if($音楽データ=="se戦闘_攻撃_魔法攻撃_弾く01"){
		$開始ミリ秒=7146;
		$終了ミリ秒=23621;
	}

	CreateSound("ナット名", SE, "$場所指定");
	SetVolume("ナット名", 0, 0, NULL);
	SetAlias("ナット名", "ナット名");
	SetLoopPoint("ナット名",$開始ミリ秒,$終了ミリ秒);
}

function CreateVOICE($ナット名,$音楽データ)
{
	$クラス名=$ナット名;

	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$クラス名){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&!VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]"))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$場所指定 = "voice/" + $音楽データ;

		CreateSound($ナット名, VOICE, $場所指定);
		SetVolume($ナット名, 0, 0, NULL);
		SetAlias($ナット名, $ナット名);
	}
}

function CreateVOICEEX($ナット名,$音楽データ,$クラス名)
{
	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$クラス名){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&!VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]"))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$場所指定 = "voice/" + $音楽データ;

		CreateSound($ナット名, VOICE, $場所指定);
		SetVolume($ナット名, 0, 0, NULL);
		SetAlias($ナット名, $ナット名);
	}
}

// 再生
function SoundPlay($ナット名,秒数,ボリウム,ループ設定)
{
	if(PassageTime($ナット名)<1){
		SetVolume($ナット名, 0, 1, null);
	}

	Request($ナット名, Play);

//嶋　固定します
	SetFrequency($ナット名, 0, 1000, NULL);

	SetVolume($ナット名, 秒数, ボリウム, null);
	SetLoop($ナット名, ループ設定);
	Request($ナット名, Disused);
}


function MusicStart("ナット名",秒数,ボリウム,再生方向,再生スピード,テンポ,ループ設定)
{
	Request("ナット名", "Play");

	SetFrequency("ナット名", 0, 再生スピード, NULL);
	SetPan("ナット名", 0, 再生方向, NULL);
	SetLoop("ナット名", ループ設定);
	SetVolume("ナット名", 秒数, ボリウム, テンポ);
	Request("ナット名", Disused);
}


function SoundLoopEnd($ナット名)
{
	SetLoop($ナット名, false);
	SetLoopPoint($ナット名,0,999999);
}





//■BGMを纏めて定義
//=============================================================================//
.//BGM定義
//=============================================================================//

function InitBGM()
{

//定義
	CreateBGM("mbgm01","mbgm01");
	CreateBGM("mbgm02","mbgm02");
	CreateBGM("mbgm03","mbgm03");
	CreateBGM("mbgm04","mbgm04");
	CreateBGM("mbgm05","mbgm05");
	CreateBGM("mbgm06","mbgm06");
	CreateBGM("mbgm07","mbgm07");
	CreateBGM("mbgm08","mbgm08");
	CreateBGM("mbgm09","mbgm09");
	CreateBGM("mbgm10","mbgm10");
	CreateBGM("mbgm11","mbgm11");
	CreateBGM("mbgm12","mbgm12");
	CreateBGM("mbgm13","mbgm13");
	CreateBGM("mbgm14","mbgm14");
	CreateBGM("mbgm15","mbgm15");
	CreateBGM("mbgm16","mbgm16");
	CreateBGM("mbgm17","mbgm17");
	CreateBGM("mbgm18","mbgm18");
	CreateBGM("mbgm19","mbgm19");
	CreateBGM("mbgm20","mbgm20");
	CreateBGM("mbgm21","mbgm21");
	CreateBGM("mbgm22","mbgm22");
	CreateBGM("mbgm23","mbgm23");
	CreateBGM("mbgm24","mbgm24");
	CreateBGM("mbgm25","mbgm25");
	CreateBGM("mbgm26","mbgm26");
	CreateBGM("mbgm27","mbgm27");
	CreateBGM("mbgm28","mbgm28");
	CreateBGM("mbgm29","mbgm29");
	CreateBGM("mbgm30","mbgm30");
	CreateBGM("mbgm31","mbgm31");
	CreateBGM("mbgm32","mbgm32");
	CreateBGM("mbgm33","mbgm33");
	CreateBGM("mbgm34","mbgm34");
	CreateBGM("mbgm35","mbgm35");
	CreateBGM("mbgm36","mbgm36");
	CreateBGM("mbgm37","mbgm37");

//	CreateBGM("msong01","msong01");
	CreateBGM("msong01_full","msong01_full");
	CreateBGM("msong01_short","msong01_short");
	CreateBGM("msong01_inst","msong01_inst");

//	CreateBGM("msong02","msong02");
	CreateBGM("msong02_full","msong02_full");
	CreateBGM("msong02_short","msong02_short");
	CreateBGM("msong02_inst","msong02_inst");

//	CreateBGM("msong03","msong03");
	CreateBGM("msong03_full","msong03_full");
	CreateBGM("msong03_short","msong03_short");
	CreateBGM("msong03_inst","msong03_inst");

	//パッチ用
	CreateBGMPX("msong03_full2","sound2/bgm/msong03_full");

//	CreateBGM("msong04_short","msong04_short");
//下記削除予定
	CreateBGM("msong04_full","msong04_full");
	CreateBGM("msong04_short","msong04_short");
	CreateBGM("msong04_inst","msong04_inst");
//	CreateBGM("msong04_arrange","msong04_arrange");
	CreateBGMEX("msong04_arrange","msong04_arrange",118617,185272);

	CreateBGM("msong05_short","msong05_short");
	CreateBGM("msong05_inst","msong05_inst");


	Request("mbgm01", Lock);
	Request("mbgm02", Lock);
	Request("mbgm03", Lock);
	Request("mbgm04", Lock);
	Request("mbgm05", Lock);
	Request("mbgm06", Lock);
	Request("mbgm07", Lock);
	Request("mbgm08", Lock);
	Request("mbgm09", Lock);
	Request("mbgm10", Lock);
	Request("mbgm11", Lock);
	Request("mbgm12", Lock);
	Request("mbgm13", Lock);
	Request("mbgm14", Lock);
	Request("mbgm15", Lock);
	Request("mbgm16", Lock);
	Request("mbgm17", Lock);
	Request("mbgm18", Lock);
	Request("mbgm19", Lock);
	Request("mbgm20", Lock);
	Request("mbgm21", Lock);
	Request("mbgm22", Lock);
	Request("mbgm23", Lock);
	Request("mbgm24", Lock);
	Request("mbgm25", Lock);
	Request("mbgm26", Lock);
	Request("mbgm27", Lock);
	Request("mbgm28", Lock);
	Request("mbgm29", Lock);
	Request("mbgm30", Lock);
	Request("mbgm31", Lock);
	Request("mbgm32", Lock);
	Request("mbgm33", Lock);
	Request("mbgm34", Lock);
	Request("mbgm35", Lock);
	Request("mbgm36", Lock);
	Request("mbgm37", Lock);

//	Request("msong01", Lock);
	Request("msong01_full", Lock);
	Request("msong01_inst", Lock);
	Request("msong01_short", Lock);

//	Request("msong02", Lock);
	Request("msong02_full", Lock);
	Request("msong02_inst", Lock);
	Request("msong02_short", Lock);

	Request("msong03_full", Lock);
	Request("msong03_inst", Lock);
	Request("msong03_short", Lock);
	Request("msong03_full2", Lock);

	Request("msong04_full", Lock);
	Request("msong04_inst", Lock);
	Request("msong04_arrange", Lock);
	Request("msong04_short", Lock);

	Request("msong05_inst", Lock);
	Request("msong05_short", Lock);

}


//---------------------------------------------------------------//
..Box_Black(縦がき専用【削除予定】)
//--------------------------------------------------------------//
function Box_Black(){

	begin:

	while(1){

	Shake("@BackBlack", 999999, 0, 0, 0, 0, 500, null, true);
	Shake("@BackBlack", 999999, 0, 0, 0, 0, 500, null, true);

	}


}


function VoiceOn(){

	#一章クリア=true;
	#voice_on_湊斗景明=true;
	#voice_on_村正=true;
	#voice_on_新田雄飛=true;
	#voice_on_来栖野小夏=true;
	#voice_on_稲城忠保=true;
	#voice_on_鈴川令法=true;
	#voice_on_大鳥香奈枝=true;
	#voice_on_永倉さよ=true;
	#voice_on_綾弥一条=true;
	#voice_on_雪車町一蔵=true;
	#voice_on_真改=true;
	#voice_on_長坂右京=true;
	#voice_on_小太郎=true;
	#voice_on_弥源太=true;
	#voice_on_ふき=true;
	#voice_on_ふな=true;
	#voice_on_足利護氏=true;
	#voice_on_大鳥獅子吼=true;
	#voice_on_遊佐童心=true;
	#voice_on_今川雷蝶=true;
	#voice_on_足利茶々丸=true;
	#voice_on_署長=true;
	#voice_on_キャノン=true;
	#voice_on_ガーゲット=true;
	#voice_on_舞殿宮=true;
	#voice_on_皇路操=true;
	#voice_on_皇路卓=true;
	#voice_on_二世村正=true;
	#voice_on_柳生常闇斎=true;
	#voice_on_芳養=true;
	#voice_on_研究所長=true;
	#voice_on_義清=true;
	#voice_on_青江=true;
	#voice_on_皆斗本家=true;
	#voice_on_湊斗統=true;
	#voice_on_山賊の首領=true;
	#voice_on_首領の弟=true;
	#voice_on_正宗=true;
	#voice_on_岡部桜子=true;
	#voice_on_足利邦氏=true;
	#voice_on_ウィロー=true;
	#voice_on_黒瀬童子=true;
	#voice_on_コブデン=true;
	#voice_on_ウォルフ=true;
	#voice_on_永倉翁=true;
	#voice_on_大鳥花枝=true;
	#voice_on_始祖村正=true;
	#voice_on_飽間=true;
	#voice_on_浦夢=true;
	#voice_on_サシュアント=true;
	#voice_on_オーリガ=true;
	#voice_on_孤児の光=true;
	#voice_on_銀星号=true;
	#voice_on_その他男声=true;
	#voice_on_その他女声=true;

}

