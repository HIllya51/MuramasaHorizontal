#include "nss/function.nss"
//=============================================================================//
//＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃
.//￥�[���勠h￥バ�`ジョン1.00
//＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃
//=============================================================================//
chapter main
{
	//￥タイトルの彜�B
	$SYSTEM_menu_lock = 1;
	#play_speed_plus += 0;
	#SYSTEM_play_speed=#play_speed_plus;

	//＊兜豚�O協
//	#SYSTEM_product_code="SuMaGa";
//	#SCRIPT_VERSION="1.01";
//	#SYSTEM_loading_image="cg/sys/save/nowloading.jpg";
//	#SYSTEM_loading_image_x=0;
//	#SYSTEM_loading_image_y=0;
//	#SYSTEM_script_debug="nss/sys_debug.nss";
//	#SYSTEM_skip_express_image="cg/sys/adv/階堀スキップ.jpg";
//	#SYSTEM_skip_express_image="cg/sys/skip/階堀%04d.png#22";

	#SYSTEM_interrupt_play_speed=5;


	if(!#GAME_start_flag){
		#SYSTEM_click_break_voice=true;
		#GAME_start_flag=true;
	}



	while(1)
	{
		//￥�坤鴬`ムがスタ�`トしたことを苧幣する�篳�
		$GameStart = 1;

		//＊シ�`ンの�^に駅ず��峰
		$スクリプトバ�`ジョン = "  Version $Revision: 59 $";
		$��撹兆 = ModuleFileName();
		SystemInit();

		//������������������������������
		//��デバッグ喘
//		#SYSTEM_skip_absolute = true;
//		#SYSTEM_skip_express = true;
//		$Logo = 1;

/*
		#ClearG = 1;
		#START_FLAG = 1;
		#a1_not_bad_end=true;
		#a1_End=true;
		#a2_bad_end=true;
		#a2_not_bad_end=true;
		#a2_End=true;
		#a3_death_end=true;
		#a3_normal_end=true;
		#b2_normal_end=true;
		#b3_bad_end=true;
		#b3_normal_end=true;
		#c1_bad_end=true;
		#c1_true_end=true;
		#c3_bad_end=true;
		#c3_true_end=true;
		#c2_bad_end=true;
		#c2_true_end=true;
		#d1_true_end=true;
*/

//		DebugSound();
//		DebugGallery();
		//§§§§§§§§§§§§§§§

/*
		//フラグ指�Г泙妊織ぅ肇觀捻輅�
		if(!#START_FLAG&&!$GameClose){
			//☆�K阻パ�`ト�篳�クリア
			EndSelectFormat();

			$GameContiune=1;
			TitleLogo2();
		}
*/

		//＊ドラック�Ε疋蹈奪�
		if($GameContiune == 1)
		{
			//￥�坤鴬`ムスピ�`ド
			if(#play_speed_plus != 0)
			{
				/*兜指軟���rではないときは、プレイ堀業をバックアップ*/
				#play_speed_plus = #SYSTEM_play_speed;
			}else{
				/*兜指軟���rは、プレイ堀業のバックアップを３に耕協*/
				#play_speed_plus = 3;
			}

			$GameContiune = 0;
			Delete("*");
			call_chapter nss/0_boot_�_兵スクリプト.nss;
		}

		//￥�坤鴬`ムスピ�`ド
		if(#play_speed_plus != 0)
		{
			/*兜指軟���rではないときは、プレイ堀業をバックアップ*/
			#play_speed_plus = #SYSTEM_play_speed;
		}else{
			/*兜指軟���rは、プレイ堀業のバックアップを３に耕協*/
			#play_speed_plus = 3;
		}

		//￥�坤轡好謄��篳�狼のクリア
		$GameName=false;
		$TitleSelect=false;

		$PLACE_badend=false;
		$PLACE_title=true;

		#SYSTEM_play_speed=3;
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
		$SYSTEM_text_auto=false;
		$SYSTEM_menu_lock=true;
		#SYSTEM_skip_express_minimum_time=0;

//フラグ喘セ�`ブ
		Save(0);
//�x�k岔に��るようのフラグを��茅
		DeleteSaveFile(9999);

		//☆�K阻パ�`ト�篳�クリア
		EndSelectFormat();

		//☆フレ�`ム兜豚晒
//		Move("@フレ�`ム",0, 0, 500, null,false);
//		Fade("@フレ�`ム",0,0,null,false);
//		Fade("@box11",0,0,null,false);

//	CreateColor("�\鳥１", 150, 0, 0, 800, 600, "Black");
	CreateTexture("嘘尚１", 100, 0, 0, "cg/bg/翫屎_嘘尚ダミ�`01.jpg");

		WaitKey();

		SelectlistSet();

		WaitKey();
	Rotate("@03Select*", 1000000, @0, @0, @179000, null,false);

	Rotate("@01Select*", 1000000, @0, @0, @180000, null,true);

		WaitKey();


		TitleSet();
		//＊�坤織ぅ肇��嘛�
		TitleFade();
		//＊�坤織ぅ肇襯札譽�ト
		TitleSelect();

		//￥�砂Y惚
		if($TitleSelect == 1)
		{
			Delete("*");
			Request("�Q協サウンド", Disused);
			Request("�Q協サウンド", UnLock);
			Wait(2000);

			call_chapter nss/0_boot_�_兵スクリプト.nss;
		}

		if($TitleSelect == 2)
		{
			//�､�喘嘘尚
			CreateTexture("スクリ�`ン", 1000, 0, 0, SCREEN);
			SetAlias("スクリ�`ン", "スクリ�`ン");

			//��り喘ウィンドウ
			CreateWindow("システムタイトル", 10000, 0, 0, 800, 600, false);
			SetAlias("システムタイトル", "システムタイトル");
			Request("システムタイトル", Lock);

			Delete("タイトル*");
			call_chapter nss/extra_menu.nss;
		}
	}
	//->end while
}
//->end chapter main
//=============================================================================//








//============================================================================//
..//☆�K阻パ�`ト�篳�兜豚晒マクロ☆
//============================================================================//
function EndSelectFormat()
{
	$End_f1_00_01=false;
	$End_f1_00_02=false;
	$End_f1_00_03=false;
	$End_f1_00_04=false;
	$End_f1_00_05=false;
	$End_f1_00_06=false;
	$End_f1_00_07=false;
	$End_f1_00_08=false;
	$End_f1_00_09=false;
	$End_f1_00_10=false;
	$End_f1_00_11=false;
	$End_f1_00_12=false;
	$End_f1_00_13=false;
	$End_f1_00_14=false;
	$End_f1_00_15=false;
	$End_f1_00_16=false;
	$End_f1_00_17=false;
	$End_f1_01_01=false;
	$End_f1_01_02=false;
	$End_f1_01_03=false;
	$End_f1_01_04=false;
	$End_f1_01_05=false;
	$End_f1_01_06=false;
	$End_f1_01_07=false;
	$End_f1_01_08=false;
	$End_f1_01_09=false;
	$End_f1_01_10=false;
	$End_f1_01_11=false;
	$End_f1_01_12=false;
	$End_f1_01_13=false;
	$End_f1_01_14=false;
	$End_f1_01_15=false;
	$End_f1_01_16=false;
	$End_f1_01_17=false;
	$End_f1_01_18=false;
	$End_f1_01_19=false;
}
//============================================================================//









//============================================================================//
..//＊タイトルカラ�`登協＊
//============================================================================//
function TitleColor()
{
		CreateColor("タイトルカラ�`", 150, 0, 0, 800, 600, "BLACK");
		SetAlias("タイトルカラ�`", "タイトルカラ�`");
		Fade("タイトルカラ�`", 0, 0, null, true);
		CreateColor("タイトルカラ�`２", 100, 0, 0, 800, 600, "WHITE");
		SetAlias("タイトルカラ�`", "タイトルカラ�`");
		Fade("タイトルカラ�`２", 0, 0, null, true);
}
//============================================================================//


//============================================================================//
..//＊コングラチュレ�`ション�‥亢─�
//============================================================================//
function TitleCongratulations()
{
	if(#ClearG==1&&#a1_not_bad_end==true&&#a1_End==true&&#a2_bad_end==true&&#a2_not_bad_end==true&&#a2_End==true&&#a3_death_end==true&&#a3_normal_end==true&&#b2_normal_end==true&&#b3_bad_end==true&&#b3_normal_end==true&&#c1_bad_end==true&&#c1_true_end==true&&#c3_bad_end==true&&#c3_true_end==true&&#c2_bad_end==true&&#c2_true_end==true&&#d1_true_end==true&&#ClearAll!=1)
	{
		SoundPlay("@smgm11",0,1000,true);

		CreateColor("おめでとう弼", 150, 0, 0, 800, 600, "White");
		Fade("おめでとう弼", 0, 0, null, true);
		Request("おめでとう弼", AddRender);

		CreateTexture("おめでとう", 100, 0, 0, "cg/ev/ev_z1_99_おめでとう鮫��.jpg");
		Fade("おめでとう", 0, 0, null, true);

		Fade("おめでとう弼", 500, 1000, null, true);
		Fade("おめでとう",0,1000,null,true);
		Fade("おめでとう弼", 1000, 0, null, true);

		WaitKey();

		$ClearL = 0;
		#ClearAll = 1;

		SetVolume("@sm*", 4000, 0, NULL);

		Fade("おめでとう",4000,0,null,true);
		Delete("おめでとう*");
	}
}
//============================================================================//














//============================================================================//
..//＊ロゴ登協＊
//============================================================================//
function TitleLogo()
{
//￥�災散飯Qたらゲ�`ム嶄は竃さないようにする登協

	$Logo += 0;

	if($Logo == 0)
	{

		CreateTexture("タイトルニトロプラス", 100, 0, 0, "cg/sys/title/ニトロロゴ.jpg");

//		CreateTexture("タイトルメディア１", 100, 0, 0, "cg/sys/title/media_a.jpg");
//		CreateTexture("タイトルメディア２", 100, 0, 0, "cg/sys/title/media_b.jpg");
//		CreateTexture("タイトルニトロプラス", 100, 0, 0, "cg/sys/title/ニトロロゴ.jpg");
//		CreateTexture("タイトル廣吭", 100, 0, 0, "cg/sys/title/廣吭.jpg");
		Fade("タイトル*", 0, 0, null, true);

		Fade("タイトルカラ�`２",300,1000,null,true);
//		Fade("タイトルメディア１", 500, 1000, null, true);
//		WaitKey(3000);
//		Fade("タイトルメディア２", 500, 1000, null, true);
//		Fade("タイトルメディア１", 0, 0, null, true);
//		WaitKey(3000);
//		Fade("タイトルメディア２",500,0,null,true);

//		Wait(1000);

		Fade("タイトルニトロプラス", 1000, 1000, null, true);
		WaitKey(1000);
		Fade("タイトルニトロプラス", 100, 0, null, true);

//		Fade("タイトル廣吭", 1000, 1000, null, true);
//		WaitKey(5000);
//		Fade("タイトル廣吭", 500, 0, null, true);
	}


//	$Reset=0;


}
//============================================================================//



//============================================================================//
..//＊ロゴ登協２＊
//============================================================================//
function TitleLogo2()
{
		$Logo = 1;

		CreateColor("タイトルカラ�`２", 100, 0, 0, 800, 600, "WHITE");
		Fade("タイトルカラ�`２", 0, 0, null, true);

		CreateTexture("タイトルメディア１", 100, 0, 0, "cg/sys/title/media_a.jpg");
		CreateTexture("タイトルメディア２", 100, 0, 0, "cg/sys/title/media_b.jpg");
		CreateTexture("タイトルニトロプラス", 100, 0, 0, "cg/sys/title/ニトロロゴ.jpg");
		Fade("タイトル*", 0, 0, null, true);

		Fade("タイトルカラ�`２",300,1000,null,true);
		Fade("タイトルメディア１", 500, 1000, null, true);
		WaitKey(3000);
		Fade("タイトルメディア２", 500, 1000, null, true);
		Fade("タイトルメディア１", 0, 0, null, true);
		WaitKey(3000);
		Fade("タイトルメディア２",500,0,null,true);

		Wait(1000);

		Fade("タイトルニトロプラス", 1000, 1000, null, true);
		WaitKey(3000);
		Fade("タイトルカラ�`２", 0, 0, null, true);
		Fade("タイトルニトロプラス", 500, 0, null, true);
}
//============================================================================//






//=============================================================================//
..//＊タイトル協�x＊
//=============================================================================//
function TitleSet()
{
	//＊嘘尚
	CreateTexture("タイトル嘘尚", 100, 0, 0, "cg/sys/title/back02.png");
	SetAlias("タイトル嘘尚", "タイトル嘘尚");

	//＊ＳＴＡＲＴ
	CreateChoice("Select01");
	SetAlias("Select01", "Select01");

	$startX = 0;
	$startY = 0;

	LoadColor("Select01_001", 199, 24, "Black");
	LoadColor("Select01_002", 199, 24, "Red");
	LoadColor("Select01_003", 199, 24, "Blue");


	CreateTexture("Select01/MouseUsual/Select01_000", 100, $startX, $startY, "Select01_001");
	SetAlias("Select01/MouseUsual/Select01_000", "Select01_000");

	CreateTexture("Select01/MouseUsual/Select01_001", 100, $startX, $startY, "Select01_001");
	SetAlias("Select01/MouseUsual/Select01_001", "Select01_001");
	CreateTexture("Select01/MouseOver/Select01_002", 100, $startX, $startY, "Select01_002");
	SetAlias("Select01/MouseOver/Select01_002", "Select01_002");
	CreateTexture("Select01/MouseClick/Select01_003", 100, $startX, $startY, "Select01_003");
	SetAlias("Select01/MouseClick/Select01_003", "Select01_003");

	CreateProcess("Select01/MouseOver/SelectProcess01_001", 150, 0, 0, "TitleStartOver");
	SetAlias("Select01/MouseOver/SelectProcess01_001", "SelectProcess01_001");

	CreateProcess("Select01/MouseLeave/SelectProcess01_002", 150, 0, 0, "TitleStartLeave");
	SetAlias("Select01/MouseLeave/SelectProcess01_002", "SelectProcess01_002");

	CreateProcess("Select01/MouseClick/SelectProcess01_003", 150, 0, 0, "TitleStartClick");
	SetAlias("Select01/MouseClick/SelectProcess01_003", "SelectProcess01_003");

	Request("Select01/MouseUsual/SelectProcess01_000", "Erase");

	//＊ＬＯＡＤ
	CreateChoice("タイトル�i�z");
	SetAlias("タイトル�i�z", "タイトル�i�z");

	$loadX = 70;
	$loadY = 405;

	LoadImage("タイトル�i�zイメ�`ジ１", "cg/sys/title/load01.png");
	LoadImage("タイトル�i�zイメ�`ジ２", "cg/sys/title/load02.png");
	LoadImage("タイトル�i�zイメ�`ジ３", "cg/sys/title/load03.png");

	CreateTexture("タイトル�i�z/MouseUsual/タイトル�i�z０", 100, $loadX, $loadY, "cg/sys/title/topbt_load_hit.png");
	SetAlias("タイトル�i�z/MouseUsual/タイトル�i�z０", "タイトル�i�z０");

	CreateTexture("タイトル�i�z/MouseUsual/タイトル�i�z１", 100, $loadX, $loadY, "タイトル�i�zイメ�`ジ１");
	SetAlias("タイトル�i�z/MouseUsual/タイトル�i�z１", "タイトル�i�z１");
	CreateTexture("タイトル�i�z/MouseOver/タイトル�i�z２", 100, $loadX, $loadY, "タイトル�i�zイメ�`ジ２");
	SetAlias("タイトル�i�z/MouseOver/タイトル�i�z２", "タイトル�i�z２");
	CreateTexture("タイトル�i�z/MouseClick/タイトル�i�z３", 100, $loadX, $loadY, "タイトル�i�zイメ�`ジ３");
	SetAlias("タイトル�i�z/MouseClick/タイトル�i�z３", "タイトル�i�z３");

	CreateProcess("タイトル�i�z/MouseOver/タイトル�i�zプロセス１", 150, 0, 0, "TitleLoadOver");
	SetAlias("タイトル�i�z/MouseOver/タイトル�i�zプロセス１", "タイトル�i�zプロセス１");
	CreateProcess("タイトル�i�z/MouseLeave/タイトル�i�zプロセス２", 150, 0, 0, "TitleLoadLeave");
	SetAlias("タイトル�i�z/MouseLeave/タイトル�i�zプロセス２", "タイトル�i�zプロセス２");
	CreateProcess("タイトル�i�z/MouseClick/タイトル�i�zプロセス３", 150, 0, 0, "TitleLoadClick");
	SetAlias("タイトル�i�z/MouseClick/タイトル�i�zプロセス３", "タイトル�i�zプロセス３");

	CreateSound("タイトル�i�z/MouseOver/タイトル�i�z咄１", SE, "sound/se/SE_システム_タイトル_�x�k");

	Request("タイトル�i�z/MouseUsual/タイトル�i�z０", "Erase");

	//＊ＥＸＩＴ
	CreateChoice("タイトル竃笥");
	SetAlias("タイトル竃笥", "タイトル竃笥");

	$configX = 70;
	$configY = 438;

	LoadImage("タイトル竃笥イメ�`ジ１", "cg/sys/title/exit01.png");
	LoadImage("タイトル竃笥イメ�`ジ２", "cg/sys/title/exit02.png");
	LoadImage("タイトル竃笥イメ�`ジ３", "cg/sys/title/exit03.png");

	CreateTexture("タイトル竃笥/MouseUsual/タイトル竃笥０", 100, $configX, $configY, "cg/sys/title/topbt_config_hit.png");
	SetAlias("タイトル竃笥/MouseUsual/タイトル竃笥０", "タイトル竃笥０");

	CreateTexture("タイトル竃笥/MouseUsual/タイトル竃笥１", 100, $configX, $configY, "タイトル竃笥イメ�`ジ１");
	SetAlias("タイトル竃笥/MouseUsual/タイトル竃笥１", "タイトル竃笥１");
	CreateTexture("タイトル竃笥/MouseOver/タイトル竃笥２", 100, $configX, $configY, "タイトル竃笥イメ�`ジ２");
	SetAlias("タイトル竃笥/MouseOver/タイトル竃笥２", "タイトル竃笥２");
	CreateTexture("タイトル竃笥/MouseClick/タイトル竃笥３", 100, $configX, $configY, "タイトル竃笥イメ�`ジ３");
	SetAlias("タイトル竃笥/MouseClick/タイトル竃笥３", "タイトル竃笥３");

	CreateProcess("タイトル竃笥/MouseOver/タイトル竃笥プロセス１", 150, 0, 0, "TitleConfigOver");
	SetAlias("タイトル竃笥/MouseOver/タイトル竃笥プロセス１", "タイトル竃笥プロセス１");
	CreateProcess("タイトル竃笥/MouseLeave/タイトル竃笥プロセス２", 150, 0, 0, "TitleConfigLeave");
	SetAlias("タイトル竃笥/MouseLeave/タイトル竃笥プロセス２", "タイトル竃笥プロセス２");
	CreateProcess("タイトル竃笥/MouseClick/タイトル竃笥プロセス３", 150, 0, 0, "TitleConfigClick");
	SetAlias("タイトル竃笥/MouseClick/タイトル竃笥プロセス３", "タイトル竃笥プロセス３");

//咄なしのため曜閲
//	CreateSound("タイトル竃笥/MouseOver/タイトル竃笥咄１", SE, "sound/se/SE_システム_タイトル_�x�k");

	Request("タイトル竃笥/MouseUsual/タイトル竃笥０", "Erase");





	if($Logo == 0)
	{
//		$PreTitleMoveIcon=-20;
//		Move("@タイトル�_兵１", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@タイトル�i�z１", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@タイトル�O協１", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@タイトル蒙�e１", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@タイトル竃笥１", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@タイトル����１", 0, @0, @$PreTitleMoveIcon, null, false);
	}

	Fade("@タイトル嘘尚",0,0,null,false);
	Fade("@タイトル�_兵*",0,0,null,false);
	Fade("@タイトル�i�z*",0,0,null,false);
	Fade("@タイトル�O協*",0,0,null,false);
	Fade("@タイトル蒙�e*",0,0,null,false);
	Fade("@タイトル竃笥*",0,0,null,false);
	Fade("@タイトル����*",0,0,null,false);

//	Fade("タイトル*/*",0,0,null,false);
	Fade("タイトル*/*/*",0,0,null,true);

}
//============================================================================//







//=============================================================================//
..//＊タイトル�嘛�＊
//=============================================================================//
function TitleFade()
{
	//￥匯業でも��ていない��栽は送す
	if(!#TitleMovieFirst){
		#TitleMovieFirst=1;
		$Logo=0;
	}


	if(!$Logo)
	{
		$TitleFadeIcon=0;

//		CreateSound("タイトルム�`ビ�`サウンド", SE, "sound/se/SE_システム_タイトル_ム�`ビ�`");
//		CreateMovie("タイトルム�`ビ�`", 100, 0, 0, false, false, "dx/intro.ngs");
//		Request("タイトルム�`ビ�`サウンド", Play);

//		if(!#TitleMovie){
//			WaitAction("タイトルム�`ビ�`", null);
//			#TitleMovie=1;
//		}else{
//			$TitleMoveTime=RemainTime("タイトルム�`ビ�`")-1000;
//			WaitKey($TitleMoveTime);
//		}

//		SetVolume("タイトルム�`ビ�`サウンド", 1000, 0, NULL);

			//￥ＢＧＭプレイ
//			SoundPlay($TitleBGM,0,1000,true);
//			SetStream($TitleBGM, 2000);

		Fade("タイトルカラ�`*",0,0,null,true);
		Fade("タイトル嘘尚",0,1000,null,true);
		Fade("タイトルム�`ビ�`", 500, 0, null, false);
		Move("@タイトル����", 500, @300, @0, null, true);

		Delete("タイトルム�`ビ�`");

		Fade("@Select01",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@タイトル�i�z１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル�O協１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル蒙�e１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル竃笥１",$TitleFadeIcon,1000,null,false);

		Delete("@タイトル����*");
		WaitAction("@タイトル�_兵１", null);

		$Logo=1;

	}else{

		if($エキストラタイトル)
		{
			if(#エキストラＢＧＭ != $TitleBGM)
			{
				//￥ＢＧＭプレイ
				SetVolume("@sm*", 1000, 0, NULL);
				SoundPlay($TitleBGM,0,1000,true);
				SetStream($TitleBGM, 2000);
			}

			CreateMask("タイトルマスク", 10000, 0, 0, "dx/mv_extra.ngs", false);
			CreateTexture("タイトルマスク/タイトル嘘尚", 10000, 0, 0, "cg/sys/title/フィニッシュ鮫中.jpg");
			WaitAction("タイトルマスク", null);

			Fade("タイトル嘘尚",0,1000,null,true);
			Request("システムタイトル", UnLock);
			Delete("システムタイトル");
			Delete("タイトルマスク");
		}
		else
		{
			//￥ＢＧＭプレイ
			SoundPlay($TitleBGM,0,1000,true);
			SetStream($TitleBGM, 2000);

			Fade("タイトルカラ�`",0,1000,null,true);
			Fade("タイトル嘘尚",0,1000,null,true);
			Fade("タイトルカラ�`",1000,0,null,true);
		}
		$エキストラタイトル=false;


		Move("@タイトル����", 500, @300, @0, null, true);

		if(#d1_true_end)
		{
			CreateSound("タイトル����サウンド", SE, "voice/d110/0401420gd");

			Fade("@タイトル����１",0,1000,null,false);
			Move("@タイトル����１", 0, @-200, @0, null, true);

			Request("タイトル����サウンド", Play);

			Move("@タイトル����１", 300, @200, @0, null, false);
			Rotate("@タイトル����１", 300, @0, @0, 360, null, true);

//			Zoom("@タイトル����１", 0, 500, 500, null, true);
//			Fade("@タイトル����１",100,1000,null,false);
//			Zoom("@タイトル����１", 100, 1050, 1050, Axl1, true);
//			Zoom("@タイトル����１", 100, 1000, 1000, Dxl1, true);
		}

		Fade("@@Select01",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@タイトル�i�z１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル�O協１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル蒙�e１",$TitleFadeIcon,1000,null,false);
		Fade("@タイトル竃笥１",$TitleFadeIcon,1000,null,false);

		Delete("@タイトル����*");
		WaitAction("@タイトル�_兵１", null);

	}

	//＊プロセススタ�`ト
	Request("タイトルプロセス", Start);

/*
.//オプションアリの��栽は��茅駅��
		SetNextFocus("Select01/MouseUsual/タイトル�_兵０", "タイトル竃笥/MouseUsual/タイトル竃笥０", UP);
		SetNextFocus("Select01/MouseUsual/タイトル�_兵０", "タイトル竃笥/MouseUsual/タイトル竃笥０", LEFT);
		SetNextFocus("Select01/MouseUsual/タイトル�_兵０", "タイトル�i�z/MouseUsual/タイトル�i�z０", DOWN);
		SetNextFocus("タイトル�_兵/MouseUsual/タイトル�_兵０", "タイトル�i�z/MouseUsual/タイトル�i�z０", RIGHT);

		SetNextFocus("タイトル�i�z/MouseUsual/タイトル�i�z０", "タイトル�_兵/MouseUsual/タイトル�_兵０", UP);
		SetNextFocus("タイトル�i�z/MouseUsual/タイトル�i�z０", "タイトル�_兵/MouseUsual/タイトル�_兵０", LEFT);
		SetNextFocus("タイトル�i�z/MouseUsual/タイトル�i�z０", "タイトル竃笥/MouseUsual/タイトル竃笥０", DOWN);
		SetNextFocus("タイトル�i�z/MouseUsual/タイトル�i�z０", "タイトル竃笥/MouseUsual/タイトル竃笥０", RIGHT);

		SetNextFocus("タイトル竃笥/MouseUsual/タイトル竃笥０", "タイトル�i�z/MouseUsual/タイトル�i�z０", UP);
		SetNextFocus("タイトル竃笥/MouseUsual/タイトル竃笥０", "タイトル�i�z/MouseUsual/タイトル�i�z０", LEFT);
		SetNextFocus("タイトル竃笥/MouseUsual/タイトル竃笥０", "タイトル�_兵/MouseUsual/タイトル�_兵０", DOWN);
		SetNextFocus("タイトル竃笥/MouseUsual/タイトル竃笥０", "タイトル�_兵/MouseUsual/タイトル�_兵０", RIGHT);
*/

}
//============================================================================//







//=============================================================================//
..//＊ファンクションプロセス光�N＊
//=============================================================================//
//§タイトルファンクション
function TitleProcess()
{
	while(1){
		Wait(35000);

		SetVolume($TitleBGM, 2000, 0, NULL);
		Fade("@タイトルカラ�`", 1300, 1000, null, true);

		MoviePlay("dx/mv_smg_PV.ngs", true);

		SoundPlay($TitleBGM,1000,1000,true);
		SetStream($TitleBGM, 2000);
		Fade("@タイトルカラ�`", 700, 0, null, true);
	}
}


//§スタ�`トファンクション
function TitleStartUsual()
{
}

function TitleStartOver()
{
	Request("@SelectProcess01_002", Stop);
	WaitAction("@Select01/MouseLeave/SelectProcess01_002", null);

	$TitleStartPro=1;
	while($TitleStartPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 674, 125, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleStartLeave()
{
	Request("@Select01/MouseLeave/Select01_001", Enter);

	$TitleStartPro=0;
	Request("@SelectProcess01_001", Stop);
	WaitAction("@SelectProcess01_001", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleStartClick()
{
	Request("@Select01_001", Erase);
}



//§ロ�`ドファンクション
function TitleLoadUsual()
{
}

function TitleLoadOver()
{
	Request("@タイトル�i�z/MouseLeave/タイトル�i�zプロセス２", Stop);
	WaitAction("@タイトル�i�z/MouseLeave/タイトル�i�zプロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

	$TitleLoadPro=1;
	while($TitleLoadPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 677, 158, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleLoadLeave()
{
	Request("@タイトル�i�z１", Enter);

	$TitleLoadPro=0;
	Request("@タイトル�i�z/MouseOver/タイトル�i�zプロセス１", Stop);
	WaitAction("@タイトル�i�z/MouseOver/タイトル�i�zプロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleLoadClick()
{
	Request("@タイトル�i�z１", Erase);
}



//§コンフィグファンクション
function TitleConfigUsual()
{
}

function TitleConfigOver()
{
	Request("@タイトル�O協/MouseLeave/タイトル�O協プロセス２", Stop);
	WaitAction("@タイトル�O協/MouseLeave/タイトル�O協プロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

	$TitleConfigPro=1;
	while($TitleConfigPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 656, 189, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleConfigLeave()
{
	Request("@タイトル�O協１", Enter);

	$TitleConfigPro=0;
	Request("@タイトル�O協/MouseOver/タイトル�O協プロセス１", Stop);
	WaitAction("@タイトル�O協/MouseOver/タイトル�O協プロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleConfigClick()
{
	Request("@タイトル�O協１", Erase);
}



//§エキストラファンクション
function TitleExtraUsual()
{
}

function TitleExtraOver()
{
	Request("@タイトル蒙�e/MouseLeave/タイトル蒙�eプロセス２", Stop);
	WaitAction("@タイトル蒙�e/MouseLeave/タイトル蒙�eプロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

	$TitleExtraPro=1;
	while($TitleExtraPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 675, 222, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleExtraLeave()
{
	Request("@タイトル蒙�e１", Enter);

	$TitleExtraPro=0;
	Request("@タイトル蒙�e/MouseOver/タイトル蒙�eプロセス１", Stop);
	WaitAction("@タイトル蒙�e/MouseOver/タイトル蒙�eプロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleExtraClick()
{
	Request("@タイトル蒙�e１", Erase);
}



//§イグジットファンクション
function TitleExitUsual()
{
}

function TitleExitOver()
{
	Request("@タイトル竃笥/MouseLeave/タイトル竃笥プロセス２", Stop);
	WaitAction("@タイトル竃笥/MouseLeave/タイトル竃笥プロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

	$TitleExitPro=1;
	while($TitleExitPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@タイトルアイコンアニメ%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 691, 254, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleExitLeave()
{
	Request("@タイトル竃笥１", Enter);

	$TitleExitPro=0;
	Request("@タイトル竃笥/MouseOver/タイトル竃笥プロセス１", Stop);
	WaitAction("@タイトル竃笥/MouseOver/タイトル竃笥プロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleExitClick()
{
	Request("@タイトル竃笥１", Erase);
}



//§ライナ�`ノ�`ツファンクション
function TitleLinerUsual()
{
}

function TitleLinerOver()
{
}

function TitleLinerLeave()
{
	Request("@タイトル����１", Enter);
}

function TitleLinerClick()
{
	Request("@タイトル����１", Erase);
}





//=============================================================================//
..//＊セレクト＊
//=============================================================================//
function TitleSelect()
{
	while(!$TitleSelect)
	{
		select
		{
			case Select01:
			{
				Request("@タイトルプロセス", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@タイトルカラ�`", 200, 0, null, true);

				Wait(100);

				SetVolume("@sm*", 3000, 0, NULL);

				CreateColor("丹�^ホワイト", 1000, 0, 0, 800, 600, "WHITE");
				SetAlias("丹�^ホワイト", "丹�^ホワイト");
				Request("丹�^ホワイト", Lock);
				Fade("丹�^ホワイト", 0, 0, null, true);
				Fade("丹�^ホワイト", 1000, 1000, null, true);

				$TitleSelect = 1;
			}

			case タイトル�i�z:
			{
				Request("@タイトルプロセス", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@タイトルカラ�`", 200, 0, null, true);

				CreateSE("�Q協サウンド","SE_システム_タイトル_�Q協");
				SoundPlay("�Q協サウンド",0,1000,false);

//				CreateTexture("タイトル�i�z４", 100, $loadX, $loadY, "cg/sys/title/topbt_load_on.png");
//				Fade("タイトル�i�z/*/*",0,0,null,false);
//				Fade("タイトル�i�z４",0,1000,null,true);
				Wait(100);

//				Fade("タイトルカラ�`",1000,1000,null,false);

				$Title_Load = 1;
				call_chapter nss/sys_load.nss;
				$Title_Load = 0;

				Request("@タイトル�i�z１", Enter);
				Fade("@タイトル�i�z３",200,0,null,true);
//				Fade("タイトルカラ�`",150,0,null,true);
				Request("@タイトルプロセス", Start);
			}

			case タイトル�O協:
			{
				Request("@タイトルプロセス", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@タイトルカラ�`", 200, 0, null, true);

				CreateSE("�Q協サウンド","SE_システム_タイトル_�Q協");
				SoundPlay("�Q協サウンド",0,1000,false);

//				CreateTexture("タイトル�O協４", 100, $configX, $configY, "cg/sys/title/topbt_config_on.png");
//				Fade("タイトル�O協/*/*",0,0,null,false);
//				Fade("タイトル�O協４",0,1000,null,true);
				Wait(100);

//				Fade("タイトルカラ�`",1000,1000,null,false);

				$Title_Config = 1;
				call_chapter nss/sys_config.nss;
				$Title_Config = 0;

				Request("@タイトル�O協１", Enter);
				Fade("@タイトル�O協３",200,0,null,true);
//				Fade("タイトルカラ�`",150,0,null,true);
				Request("@タイトルプロセス", Start);
			}

	
			if(#ClearG)
			{
				case タイトル蒙�e:
				{
					Request("@タイトルプロセス", Stop);
					SoundPlay($TitleBGM,1000,1000,true);
					Fade("@タイトルカラ�`", 200, 0, null, true);

					CreateSE("�Q協サウンド","SE_システム_タイトル_�Q協");
					SoundPlay("�Q協サウンド",0,1000,false);
	
	//				CreateTexture("タイトル蒙�e４", 100, $extraX, $extraY, "cg/sys/title/topbt_extra_on.png");
	//				Fade("タイトル蒙�e/*/*",0,0,null,false);
	//				Fade("タイトル蒙�e４",0,1000,null,true);
					Wait(100);
	
					$TitleSelect = 2;
				}
			}


			case タイトル竃笥:
			{
				Request("@タイトルプロセス", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@タイトルカラ�`", 200, 0, null, true);

				CreateSE("�Q協サウンド","SE_システム_タイトル_�Q協");
				SoundPlay("�Q協サウンド",0,1000,false);

//				CreateTexture("タイトル竃笥４", 100, $exitX, $exitY, "cg/sys/title/topbt_exit_on.png");
//				Fade("タイトル竃笥４",0,1000,null,true);
//				Fade("タイトル竃笥/*/*",0,0,null,false);
//				Fade("タイトル竃笥/MouseClick/タイトル竃笥３",0,0,null,false);
				Wait(100);

				$Title_Exit = 1;
				call_chapter nss/sys_close.nss->main2;
				$Title_Exit = 0;

				Request("@タイトル竃笥１", Enter);
				Fade("@タイトル竃笥３",200,0,null,true);
				Request("@タイトルプロセス", Start);
			}


			if(#d1_true_end)
			{
				case タイトル����:
				{
					Request("@タイトルプロセス", Stop);
					SoundPlay($TitleBGM,1000,1000,true);
					Fade("@タイトルカラ�`", 200, 0, null, true);

					CreateSE("�Q協サウンド","SE_システム_タイトル_�Q協");
					SoundPlay("�Q協サウンド",0,1000,false);

//					CreateTexture("タイトル����４", 100, $linerX, $linerY, "cg/sys/title/ライナ�`_on.png");
//					Fade("タイトル����４",0,1000,null,false);
//					Fade("タイトル����/*/*",0,0,null,false);
					Wait(100);

					#SYSTEM_window_full = false;
					System("OPEN:http://www.otomedream.com/temp/game/muramasamune/smg");

					Request("@タイトル����１", Enter);
					Fade("@タイトル����３",200,0,null,true);
					Request("@タイトルプロセス", Start);
				}
			}
		}
	}

}//============================================================================//

function SelectlistSet(){

	$ColorList = 1;

	$startX = 0;
	$startY = 0;

	while($ColorList<97){

		$ナット兆１="Select"+$ColorList+"_1"+;
		$ナット兆２="Select"+$ColorList+"_2"+;
		$ナット兆３="Select"+$ColorList+"_3"+;
		$鮫�顳�="WHITE";
		$鮫�顳�="WHITE";
		$鮫�顳�="BLUE";

		LoadColor($ナット兆１, 199, 24, $鮫�顳�);
		LoadColor($ナット兆２, 199, 24, $鮫�顳�);
		LoadColor($ナット兆３, 199, 24, $鮫�顳�);
		SetAlias($ナット兆１,$ナット兆１);
		SetAlias($ナット兆２,$ナット兆２);
		SetAlias($ナット兆３,$ナット兆３);

		$1ナット兆１="01Select"+$ColorList;
		$1ナット兆２="02Select"+$ColorList;
		$1ナット兆３="03Select"+$ColorList;

	CreateTexture("$1ナット兆１", 1000, $startX, $startY, "$ナット兆１");
	SetAlias("$1ナット兆１", "$1ナット兆１");
	Fade("$1ナット兆１", 0, 0, null, false);
	Fade("$1ナット兆１", 1, 50, null, true);

	CreateTexture("$1ナット兆２", 1000, $startX, $startY, "$ナット兆２");
	SetAlias("$1ナット兆２", "$1ナット兆２");
	Fade("$1ナット兆２", 0, 0, null, false);
	CreateTexture("$1ナット兆３", 1000, $startX, $startY, "$ナット兆３");
	SetAlias("$1ナット兆３", "$1ナット兆３");
	Fade("$1ナット兆３", 0, 50, null, false);



	if($startY == 575){
	$startY = 0;
		if($startX < 800){$startX = $startX+201;}
	}else{
	$startY = $startY+25;
	}
		$ColorList++;

	}


	CursorPosition($CLX,$CLY);


}
