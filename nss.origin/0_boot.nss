#include "nss/function.nss"
#include "nss/sys_config.nss"

//=============================================================================//
//＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃
.//￥�[���勠h￥バ�`ジョン1.00
//＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃
//=============================================================================//
chapter main
{
	//￥タイトルの彜�B
	$SYSTEM_menu_lock = true;

	//＊兜豚�O協
	#GameNumber=0;
	#SYSTEM_product_code="MURAMASA";
	#SCRIPT_VERSION="1.30";
//	#SYSTEM_loading_image="cg/sys/save/nowloading.jpg";
//	#SYSTEM_loading_image_x=0;
//	#SYSTEM_loading_image_y=0;
	#SYSTEM_skip_express_image="cg/sys/skip/skip-%03d.jpg#5";
//	#SYSTEM_skip_express_image="cg/sys/skip/階堀%04d.png#22";
	#SYSTEM_interrupt_play_speed=3;
	#SYSTEM_express_skip_animation_fps=100;

	//メニュ�`
	SetShortcut("M", "nss/sys_menu.nss");
	//セ�`ブメニュ�`
	SetShortcut("S", "nss/sys_save.nss");
	//ロ�`ドメニュ�`
	SetShortcut("L", "nss/sys_load.nss");
	//リセット�_�J
	SetShortcut("T", "nss/sys_reset.nss");
	//バックセレクト
	SetShortcut("R", "nss/sys_backselect.nss");
	//コンフィグ
	SetShortcut("C", "nss/sys_config.nss");
	//バックログ
	SetShortcut("B", "nss/sys_backlog.nss");
	//徭�嗄鍔嵋佑�
	SetShortcut("A", "nss/sys_auto.nss");
	//畠鮫中燕幣
	SetShortcut("F", "nss/sys_screen.nss");
	//階堀
	SetShortcut("N", "nss/sys_skip.nss");
	//クイックセ�`ブ
	SetShortcut("Q", "nss/sys_quicksave.nss");
	//クイックロ�`ド
	SetShortcut("P", "nss/sys_quickload.nss");
	//デバッグ
	//SetShortcut("D", "nss/sys_edit.nss");
	//挫湖業鮫中
	SetShortcut("H", "nss/sys_hmode.nss");

	//＊�祭邀�のお�s崩
	if(!#N2Start){
		//¢�O協リセット
		ConfigFormat();
		//¢�tプレイ�r�g�采��y�_兵
		#BEGIN_TIME = Time();
		#N2Start=true;
	}

	//¢�勠h�_兵¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢
	while(1)
	{
		//＊シ�`ンの�^に駅ず��峰
		$スクリプトバ�`ジョン = "  Version $Revision: 60 $";
		$��撹兆 = ModuleFileName();
		SystemInit();

		//￥ロック�O崔
		LockVideo(false);

		//￥�坤鴬`ムがスタ�`トしたことを苧幣する�篳�
		$GameStart = 1;

		//￥�坤鴬`ムスピ�`ド
		#play_speed_plus = #SYSTEM_play_speed;

		//������������������������������
		//��デバッグ喘
		//#SYSTEM_skip_absolute = true;
		//#SYSTEM_skip_express = true;
		//$Logo=true;
		//$FullMetalDeamon=true;
		//#FullMetalDeamonG=false;

		//DebugSound();
		//DebugGallery();
		//§§§§§§§§§§§§§§§

		//＆フラグ指�Г泙妊織ぅ肇觀捻輅�
		if(!#START_FLAG&&!$GameClose){
			//$GameContiune=1;
			//TitleLogo2();
			//Delete("*");
			//call_chapter nss/0_boot_�_兵スクリプト.nss;
		}

		//＊ドラック�Ε疋蹈奪�
		if($GameContiune == 1){
			//￥�砂Y惚
			$GameContiune = 0;
			Delete("*");
			call_chapter nss/0_boot_�_兵スクリプト.nss;

			//℃タイトルクリア�篳�崙囮
			TitleClear();

			//＊シ�`ンの�^に駅ず��峰
			$��撹兆 = ModuleFileName();
			SystemInit();

			//￥ロック�O崔
			LockVideo(false);

			//￥�坤鴬`ムがスタ�`トしたことを苧幣する�篳�
			$GameStart = 1;

			//￥�坤鴬`ムスピ�`ド
			#play_speed_plus = #SYSTEM_play_speed;
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
		$SYSTEM_text_waitkey=true;

		$TitleBGM="@mbgm04";
		$TitleOverSE="sound/se/se�蜉L_�嘛�_偽��え02";
		$TitleClickSE="se�蜉L_�嘛�_偽��え01";
		$TitleClickSE2="se蒙歩_�z_廾彭03";
		$TitleClickSE3="se蒙歩_�z_廾彭04";
		$TitleClickSE4="se�蜉L_好��_��螽�､�01";
		//$TitleClickSE4="se�蜉L_�嘛�_冷廾����01";

		Save(0);
		DeleteSaveFile(9999);

		//＊カラ�`協�x
		TitleColor();
		//＊エキストラ�iみ竃し
		if(!$CgArray){
			call_chapter nss/extra_gallery.nss->main2;
			$CgArray=true;
		}
		//＊フルスクプロセス
		TitleScreen();
		//＊�坤灰鵐哀蘚亢�
		TitleCongratulations();
		//＊�坤蹈瓦肇┘�ストラBGM登協
		TitleLogo();
		//＊�坤織ぅ肇覿��x
		TitleSet();
		//＊�坤織ぅ肇��嘛�
		TitleFade();
		//＊�坤織ぅ肇襯札譽�ト
		TitleSelect();

		//￥�砂Y惚
		if($TitleSelect == 1)
		{
			Request("タイトルイメ�`ジ１", UnLock);
			Request("タイトルイメ�`ジ２", UnLock);
			Request("タイトルイメ�`ジ３", UnLock);
			Delete("*");
			Request("�Q協サウンド", Disused);
			Request("�Q協サウンド", UnLock);
			Wait(2000);

			call_chapter nss/0_boot_�_兵スクリプト.nss;

			//℃タイトルクリア�篳�崙囮
			TitleClear();

		}else if($TitleSelect == 2){
			//�､�喘嘘尚
			CreateTexture("スクリ�`ン", 2000, 0, 0, SCREEN);
			SetAlias("スクリ�`ン", "スクリ�`ン");

			//��り喘ウィンドウ
			CreateWindow("システムタイトル", 10000, 0, 0, 1024, 576, false);
			SetAlias("システムタイトル", "システムタイトル");
			Request("システムタイトル", Lock);

			//SE
			CreateSE("�Q協サウンズ",$TitleClickSE4);
			Request("�Q協サウンズ", Lock);

			Delete("タイトル*");
			call_chapter nss/extra_menu.nss;

			Request("�Q協サウンズ", UnLock);
			Request("�Q協サウンズ", Disused);
		}
	}
	//->end while
}
//->end chapter main
//=============================================================================//


//============================================================================//
..//＊クリア瘁�I尖＊
//============================================================================//
function TitleClear()
{
	//℃エンド登協
	if(#痗��ｽK阻||#哂俛�ｽK阻||#��麹�ｽK阻){
		#ClearG=true;
	}
	//℃タイトル�筝�����
	if($FullMetalDeamon){
		#FullMetalDeamonL=true;
	}

	ClearScore(LOCAL);
	ClearBacklog();
	DeleteSaveFile(9999);

	//℃タイトル�筝�
	if(#FullMetalDeamonL){
		$FullMetalDeamon=true;
	}
	#FullMetalDeamonL=false;

	//￥仝ClearScore々で��されたスクリプト議なもの壅協�x
	$BOX_Init = true;
	$BGM_Init = true;
	$Logo = true;
	$GameStart = 1;
}
//============================================================================//




//============================================================================//
..//＊タイトルカラ�`登協＊
//============================================================================//
function TitleColor()
{
	CreateColor("タイトルカラ�`", 150, 0, 0, 1024, 576, "BLACK");
	SetAlias("タイトルカラ�`", "タイトルカラ�`");
	Fade("タイトルカラ�`", 0, 0, null, true);
	CreateColor("タイトルカラ�`２", 150, 0, 0, 1024, 576, "WHITE");
	SetAlias("タイトルカラ�`", "タイトルカラ�`");
	Fade("タイトルカラ�`２", 0, 0, null, true);
	//Request("タイトルカラ�`２", AddRender);
}
//============================================================================//




//============================================================================//
..//＊タイトルフルスクプロセス＊
//============================================================================//
function TitleScreen()
{
	CreateProcess("タイトルフルスクプロセス", 150, 0, 0, "TitleFull");
	SetAlias("タイトルフルスクプロセス", "タイトルフルスクプロセス");
	Request("タイトルフルスクプロセス", Start);
}
function TitleFull(){
	select{
		//￥キ�`ダウン狼
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}
	}
}
//============================================================================//




//============================================================================//
..//＊コングラチュレ�`ション�‥亢─�
//============================================================================//
function TitleCongratulations()
{
	if(#��麹�ｽK阻&&!#ClearAll&&$CompleteCount){
		SoundPlay("@mbgm12",0,1000,true);

		CreateColor("おめでとう弼", 150, 0, 0, 1024, 576, "White");
		Fade("おめでとう弼", 0, 0, null, true);
		Request("おめでとう弼", AddRender);

		CreateTexture("おめでとう", 100, 0, 0, "cg/ev/ev999_おめでとう.jpg");
		Fade("おめでとう", 0, 0, null, true);

		Fade("おめでとう弼", 500, 1000, null, true);
		Fade("おめでとう",0,1000,null,true);
		Fade("おめでとう弼", 1000, 0, null, true);

		WaitKey();

		#ev999_おめでとう=true;

		//$ClearL = false;
		#ClearAll = true;

		SetVolume("@mbgm*", 4000, 0, NULL);

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
		CreateColor("タイトルカラ�`３", 100, 0, 0, 1024, 576, "WHITE");
		CreateTexture("タイトルメディア１", 100, 0, 0, "cg/sys/title/media_a.jpg");
		CreateTexture("タイトルメディア２", 100, 0, 0, "cg/sys/title/media_b.jpg");
		CreateTexture("タイトルニトロプラス", 100, 0, 0, "cg/sys/title/Nitroplus-logo.jpg");
		CreateTexture("タイトル廣吭", 100, 0, 0, "cg/sys/title/廣吭並��.jpg");
		//CreateTexture("タイトル悶�Y", 100, 0, 0, "cg/sys/title/�T廣吭.jpg");
		//CreateTexture("タイトル�h苧", 100, 0, 0, "cg/sys/title/クィックメニュ�`荷恬�h苧.jpg");

		Fade("タイトル*", 0, 0, null, true);

		Fade("タイトルカラ�`３",300,1000,null,true);
		Fade("タイトルメディア１", 500, 1000, null, true);
		WaitKey(3000);
		Fade("タイトルメディア２", 500, 1000, null, true);
		Fade("タイトルメディア１", 0, 0, null, true);
		WaitKey(3000);
		Fade("タイトルメディア２",500,0,null,true);

		Wait(1000);

		Fade("タイトルニトロプラス", 1000, 1000, null, true);
		Delete("タイトルカラ�`３");
		WaitKey(3000);
		Fade("タイトルニトロプラス", 500, 0, null, true);

		Wait(500);

		Fade("タイトル廣吭", 1000, 1000, null, false);
		WaitKey(1100);
		Fade("タイトル廣吭", 0, 1000, null, true);
		WaitKey(8000);
		Fade("タイトル廣吭", 500, 0, null, false);
		WaitKey(600);
		Fade("タイトル廣吭", 0, 0, null, true);

/*
		Fade("タイトル悶�Y", 1000, 1000, null, false);
		WaitKey(1100);
		Fade("タイトル悶�Y", 0, 1000, null, true);
		WaitKey(8000);
		Fade("タイトル悶�Y", 500, 0, null, false);
		WaitKey(600);
		Fade("タイトル悶�Y", 0, 0, null, true);

		Fade("タイトル�h苧", 1000, 1000, null, false);
		WaitKey(1100);
		Fade("タイトル�h苧", 0, 1000, null, true);
		WaitKey();
		Fade("タイトル�h苧", 500, 0, null, false);
		WaitKey(600);
		Fade("タイトル�h苧", 0, 0, null, true);
*/
		Wait(100);
	}
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
		//Request("タイトルカラ�`２", AddRender);

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


function zangai(){
	if(#��麹�ｽK阻){
		$TitleMuramasa="cg/ev/ev267_寔伏��麹ＥＤ_a.jpg";
	}else if(#徴藍�ｽK阻){
		$TitleMuramasa="cg/ev/ev501_翫屎��恙.jpg";
	}else if(#痗��ｽK阻&&(!#哂俛�ﾎ漢�||!#哂俛�ｽK阻)){
		$TitleMuramasa="cg/ev/ev004_�稍琳Δ緑徘�_a.jpg";
		if(!#哂俛�ｽK阻){
			#哂俛�ﾎ漢�=true;
		}
	}else if(#哂俛�ｽK阻){
		$TitleMuramasa="cg/ev/ev165_恷�K屎忱_a.jpg";
	}else{
		$TitleMuramasa="cg/ev/ev501_翫屎��恙.jpg";
	}
}

//=============================================================================//
..//＊タイトル協�x＊
//=============================================================================//
function TitleSet()
{
...	//＊デモプロセス
	//CreateProcess("タイトルプロセス", 150, 0, 0, "TitleProcess");
	//SetAlias("タイトルプロセス", "タイトルプロセス");
	CreateTPO1("@タイトル况貧","@タイトル指��",600,300,1100,2);

...	//＊ロ�`ド
	LoadImage("タイトルイメ�`ジ０", "cg/sys/title/hit.png");
	SetAlias("タイトルイメ�`ジ０", "タイトルイメ�`ジ０");
	if(!$エキストラタイトル){
		LoadImage("タイトルイメ�`ジ１", "cg/sys/title/�慮司娠馨飴���.png");
		SetAlias("タイトルイメ�`ジ１", "タイトルイメ�`ジ１");
		Request("タイトルイメ�`ジ１", Lock);
		LoadImage("タイトルイメ�`ジ２", "cg/sys/title/ロゴ鮫��.png");
		SetAlias("タイトルイメ�`ジ２", "タイトルイメ�`ジ２");
		Request("タイトルイメ�`ジ２", Lock);
		LoadImage("タイトルイメ�`ジ３", "cg/ef/ef046_况a.jpg");
		SetAlias("タイトルイメ�`ジ３", "タイトルイメ�`ジ３");
		Request("タイトルイメ�`ジ３", Lock);
	}

...	//＊フラグ盾慧
	if(#哂俛�ｽK阻&&#痗��ｽK阻){
		#徴藍�ｽ盞�=true;
	}
//	#哂俛�ｽK阻=true;
//	#痗��ｽK阻=true;
//	#徴藍�ｽK阻=false;
//	#��麹�ｽK阻=false;

	if(!$Logo){
		if(#��麹�ｽK阻&&!#��麹�ﾍ��^){
			$TitleMuramasa="cg/ev/ev267_寔伏��麹ＥＤ_a.jpg";
			#��麹�ﾍ��^=true;
		}else if(#徴藍�ｽK阻&&!#��麹�ｽK阻){
			$TitleMuramasa="cg/ev/ev501_翫屎��恙.jpg";
			#徴藍�ﾍ��^=true;
		}else if(#哂俛�ｽK阻&&!#哂俛�ﾍ��^){
			$TitleMuramasa="cg/ev/ev165_恷�K屎忱_a.jpg";
			#哂俛�ﾍ��^=true;
		}else if(#痗��ｽK阻&&!#痗��ﾍ��^){
			$TitleMuramasa="cg/ev/ev004_�稍琳Δ緑徘�_a.jpg";
			#痗��ﾍ��^=true;
		}else{
			#宥械�ｽK阻=true;
			Array($TitleImageName,"哂俛�ｽK阻","痗��ｽK阻","��麹�ｽK阻","宥械�ｽK阻");
			AssocArray($TitleImageName,"哂俛�ｽK阻","痗��ｽK阻","��麹�ｽK阻","宥械�ｽK阻");

			$TitleImageWhile2=0;
			$TitleImageWhile=0;
			while(Count($TitleImageName)>$TitleImageWhile){
				if(VariableValue(#,$TitleImageName[$TitleImageWhile])){
					VariableValue($,"TitleImageRun"+$TitleImageWhile2,$TitleImageName[$TitleImageWhile]);
					$TitleImageWhile2++;
				}
				$TitleImageWhile++;
			}

			$ReTitleImage=Random($TitleImageWhile2);
			$OkTitleImage=VariableValue($,"TitleImageRun"+$ReTitleImage);

			if($OkTitleImage=="��麹�ｽK阻"){
				$TitleMuramasa="cg/ev/ev267_寔伏��麹ＥＤ_a.jpg";
			}else if($OkTitleImage=="哂俛�ｽK阻"){
				$TitleMuramasa="cg/ev/ev165_恷�K屎忱_a.jpg";
			}else if($OkTitleImage=="痗��ｽK阻"){
				$TitleMuramasa="cg/ev/ev004_�稍琳Δ緑徘�_a.jpg";
			}else{
				$TitleMuramasa="cg/ev/ev501_翫屎��恙.jpg";
			}
		}
		LoadImage("タイトルイメ�`ジ翫屎", $TitleMuramasa);
		SetAlias("タイトルイメ�`ジ翫屎", "タイトルイメ�`ジ翫屎");
	}


...	//＊嘘尚
	CreateTexture("タイトル嘘尚", 100, 0, 0, "タイトルイメ�`ジ１");
	SetAlias("タイトル嘘尚", "タイトル嘘尚");
	CreateTexture("タイトル井��", 100, 50, 540, "cg/sys/title/コピ�`ライト.png");
	SetAlias("タイトル井��", "タイトル井��");
	CreateTexture("タイトル指��", 100, 50, 540, "cg/sys/title/コピ�`ライト.png");
	SetAlias("タイトル指��", "タイトル指��");
	Request("タイトル指��", Erase);

	CreateTexture("タイトル况貧", 100, 0, 0, "タイトルイメ�`ジ３");
	SetAlias("タイトル况貧", "タイトル况貧");
	Zoom("タイトル况貧", 0, 2000, 2000, Dxl2, true);
	Request("タイトル况貧", OverlayRender);

	if(!$Logo){
		CreateTexture("タイトル翫屎", 100, Center, Middle, "タイトルイメ�`ジ翫屎");
		SetAlias("タイトル翫屎", "タイトル翫屎");
		Request("タイトル翫屎", AddRender);
		CreateTexture("タイトル翫屎０", 100, Center, Middle, "タイトルイメ�`ジ翫屎");
		SetAlias("タイトル翫屎０", "タイトル翫屎０");
		Request("タイトル翫屎０", AddRender);
		SetShade("タイトル翫屎０", MEDIUM);
		CreateTexture("タイトル翫屎２", 100, Center, Middle, "タイトルイメ�`ジ翫屎");
		SetAlias("タイトル翫屎２", "タイトル翫屎２");
		Request("タイトル翫屎２", AddRender);
		Zoom("タイトル翫屎２", 0, 1100, 1100, null, true);
	}

	CreateTexture("タイトル嘘尚２", 100, 0, 0, "タイトルイメ�`ジ１");
	SetAlias("タイトル嘘尚２", "タイトル嘘尚２");
	Request("タイトル嘘尚２", AddRender);

	if(!$Logo){
		CreateTexture("タイトル�森�１Ｃ", 100, 0, 0, "cg/ef/ef004_��喘僮�~.jpg");
		Request("タイトル�森�１Ｃ", AddRender);
		CreateTexture("タイトル�森�１Ｄ", 100, 0, 0, "cg/ef/ef005_��喘僮�~.jpg");
		Request("タイトル�森�１Ｄ", AddRender);
	}

	CreateTexture("タイトルロゴ", 100, 346, 40, "タイトルイメ�`ジ２");
	SetAlias("タイトルロゴ", "タイトルロゴ");
	CreateTexture("タイトルロゴ２", 100, 346, 40, "タイトルイメ�`ジ２");
	SetAlias("タイトルロゴ２", "タイトルロゴ２");

	if(!$Logo){
		CreateTexture("タイトル�森�１Ａ", 100, 0, 0, "cg/ef/resize/ef006_��喘僮しぶき_ex.png");
		SetVertex("タイトル�森�１Ａ", 1024, 0);
		//SetVertex("タイトル�森�１Ａ", 0, 512);
		//Zoom("タイトル�森�１Ａ", 0, 0, 0, Dxl2, true);
		Request("タイトル�森�１Ａ", MulRender);
		Rotate("タイトル�森�１Ａ", 100, @0, @0, -90, Dxl1, false);
	
		CreateTexture("タイトル�森�１Ｂ", 100, 0, 0, "cg/ef/resize/ef007_��喘僮しぶき_ex.png");
		SetVertex("タイトル�森�１Ｂ", 0, 0);
		//SetVertex("タイトル�森�１Ｂ", 1024, 512);
		//Zoom("タイトル�森�１Ｂ", 0, 0, 0, Dxl2, true);
		Request("タイトル�森�１Ｂ", MulRender);
		Rotate("タイトル�森�１Ｂ", 100, @0, @0, 90, Dxl1, false);
	
		CreateColor("タイトル僮弼", 150, 0, 0, 1024, 576, "RED");
		Request("タイトル僮弼", AddRender);
	
		CreateTexture("タイトル�}忖", 100, 492, 157, "cg/sys/telop/tp_徴藍���携�01.png");
		SetVertex("嘘尚１", Cnter, 110);
	}

...	//＊ウィンドウ協�x
	CreateWindow("タイトル����", 300, 0, 0, 1024, 576, false);
	SetAlias("タイトル����", "タイトル����");

...	//＊光�N協�x
	Array($TitleNutName,"余嶄","�_兵","�i�z","�O協","蒙�e","竃笥","����");
	AssocArray($TitleNutName,"余嶄","�_兵","�i�z","�O協","蒙�e","竃笥","����");

	Array($TitleNutName[�_兵],762,150,true,恷兜から,Start);
	Array($TitleNutName[�i�z],702,150,true,��高���h,Load);
	Array($TitleNutName[�O協],282,150,true,�O協鮫中,Config);
	Array($TitleNutName[余嶄],822,150,true,しおりから,Quick);
	Array($TitleNutName[蒙�e],222,150,true,蒙�e原紗,Extra);
	Array($TitleNutName[竃笥],162,150,true,�K阻する,Exit);
	Array($TitleNutName[����],60,524,false,ライナ�`鮫��,LinerNotes);

	if(#��麹�ｽK阻){
		$TitleNutName[����][2]=true;
	}

	$WhileCount=0;
	while(Count($TitleNutName)>$WhileCount){
		if($TitleNutName[$WhileCount][2]){
			$TitleX=$TitleNutName[$WhileCount][0];
			$TitleY=$TitleNutName[$WhileCount][1];
	
			$TitleNutBase="タイトル"+$TitleNutName[$WhileCount];
			CreateChoice($TitleNutBase);
			SetAlias($TitleNutBase, $TitleNutBase);
	
			if($TitleNutName[$WhileCount]=="����"){
				$TitleNutImage0="cg/sys/title/ライナ�`鮫��-000.png";
			}else{
				$TitleNutImage0="タイトルイメ�`ジ０";
			}
			$TitleNutImage1=$TitleNutBase+"イメ�`ジ１";
			$TitleNutFail="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"-001.png";
			LoadImage($TitleNutImage1, $TitleNutFail);
			$TitleNutImage2=$TitleNutBase+"イメ�`ジ２";
			$TitleNutFail="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"-002.png";
			LoadImage($TitleNutImage2, $TitleNutFail);
			$TitleNutImage3=$TitleNutBase+"イメ�`ジ３";
			$TitleNutFail="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"-003.png";
			LoadImage($TitleNutImage3, $TitleNutFail);
		
			$TitleNutTemp1="タイトル����/"+$TitleNutBase+"１";
			$TitleNutTemp1Alias="����"+$TitleNutBase+"１";
			CreateTexture($TitleNutTemp1, 100, $TitleX, $TitleY, $TitleNutImage1);
			SetAlias($TitleNutTemp1, $TitleNutTemp1Alias);
			//$TitleNutTemp2="タイトル����/"+$TitleNutBase+"２";
			//$TitleNutTemp2Alias="����タイトル"+$TitleNutBase+"２";
			//CreateTexture($TitleNutTemp2, 100, $TitleX, $TitleY, $TitleNutImage2);
			//SetAlias($TitleNutTemp2, $TitleNutTemp2Alias);
			//$TitleNutTemp3="タイトル����/"+$TitleNutBase+"３";
			//$TitleNutTemp3Alias="����タイトル"+$TitleNutBase+"３";
			//CreateTexture($TitleNutTemp3, 100, $TitleX, $TitleY, $TitleNutImage3);
			//SetAlias($TitleNutTemp3, $TitleNutTemp3Alias);
	
			$TitleNutHitAlias=$TitleNutBase+"０";
			$TitleNutHit=$TitleNutBase+"/MouseUsual/hit";
			CreateTexture($TitleNutHit, 100, $TitleX, $TitleY, $TitleNutImage0);
			SetAlias($TitleNutHit, $TitleNutHitAlias);
			Request($TitleNutHit, "Erase");
			//$TitleNutUsualAlias=$TitleNutBase+"１":
			//$TitleNutUsual=$TitleNutBase+"/MouseUsual/nut";
			//CreateTexture($TitleNutUsual, 100, $TitleX, $TitleY, $TitleNutImage1);
			//SetAlias($TitleNutUsual, $TitleNutUsualAlias);
			$TitleNutOverAlias=$TitleNutBase+"２";
			$TitleNutOver=$TitleNutBase+"/MouseOver/nut";
			CreateTexture($TitleNutOver, 100, $TitleX, $TitleY, $TitleNutImage2);
			SetAlias($TitleNutOver, $TitleNutOverAlias);
			$TitleNutClickAlias=$TitleNutBase+"３";
			$TitleNutClick=$TitleNutBase+"/MouseClick/nut";
			CreateTexture($TitleNutClick, 100, $TitleX, $TitleY, $TitleNutImage3);
			SetAlias($TitleNutClick, $TitleNutClickAlias);
	
			$TitleSoundOver=$TitleNutBase+"/MouseOver/se";
			CreateSound($TitleSoundOver, SE, $TitleOverSE);

			//$TitleProOverAlias=$TitleNutBase+"プロセス１";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Over";
			//$TitleProOver=$TitleNutBase+"/MouseOver/Pro";
			//CreateProcess($TitleProOver, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProOver, $TitleProOverAlias);
			//$TitleProLeaveAlias=$TitleNutBase+"プロセス２";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Leave";
			//$TitleProLeave=$TitleNutBase+"/MouseLeave/Pro";
			//CreateProcess($TitleProLeave, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProLeave, $TitleProLeaveAlias);
			//$TitleProClickAlias=$TitleNutBase+"プロセス３";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Click";
			//$TitleProClick=$TitleNutBase+"/MouseClick/Pro";
			//CreateProcess($TitleProClick, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProClick, $TitleProClickAlias);

			if($TitleNutName[$WhileCount]=="余嶄"&&!ExistSave(9998)){
				Request($TitleNutBase,UnClickable);
				$nut=$TitleNutBase+"/*/*";
				Request($nut, Erase);
				Delete($TitleSoundOver);
			}
		}
		$WhileCount++;
	}

	if(!ExistSave(9998)){
		$TitleNutName[余嶄][2]=false;
	}


	Fade("タイトル*",0,0,null,false);
	Fade("タイトル*/*",0,0,null,false);
	Fade("タイトル*/*/*",0,0,null,true);
}
//============================================================================//



//=============================================================================//
..//＊タイトル�嘛�＊
//=============================================================================//
function TitleFade()
{
	$TitleFadeIcon=0;

...	//��軟���r
	if(!$Logo){
		//����
		Zoom("タイトル嘘尚", 0, 2000, 2000, Dxl2, true);
		Zoom("タイトル嘘尚２", 0, 2000, 2000, null, true);
		Zoom("タイトルロゴ", 0, 800, 800, Dxl2, true);
		Zoom("タイトルロゴ２", 0, 800, 800, Dxl2, true);

		Request("タイトルカラ�`２", AddRender);
		CreateSE("SE01","se蒙歩_������_�z鞠��處02");

		//￥ＢＧＭプレイ
		SoundPlay($TitleBGM,0,1000,true);
		Wait(2000);

		//��頼畠ランダム
		MoveFRP1("@タイトル翫屎２",10000,15,15);
		MoveFRP2("@タイトル嘘尚２",10000,15,15);
	
		Move("タイトル�}忖", 4000, @-100, @0, null, false);
		Zoom("タイトル�}忖", 4000, 1000, 1000, null, false);
		Fade("タイトル�}忖", 1000, 1000, null, false);
		Wait(2000);

		$TitleFadeTime=7000;
		Fade("タイトル�}忖", 2000, 0, null, false);
		Zoom("タイトル嘘尚", $TitleFadeTime, 1000, 1000, Axl1, false);
		Zoom("タイトル嘘尚２", $TitleFadeTime, 1500, 1500, Axl1, false);
		Zoom("タイトル翫屎０", $TitleFadeTime, 1500, 1500, Axl1, false);
		Zoom("タイトル翫屎", $TitleFadeTime, 1500, 1500, Axl1, false);
		Zoom("タイトル翫屎２", $TitleFadeTime, 1600, 1600, Axl1, false);
		Fade("タイトル翫屎０", 3000, 800, null, false);
		Wait(1000);
	
		Fade("タイトル翫屎０", 3000, 0, null, false);
		Fade("タイトル翫屎", 3000, 800, null, false);
		Wait(2000);
	
		DrawEffect("タイトル况貧", 1000, "MiddleWave", 0, 1000, null);
		Fade("タイトル况貧", 3000, 700, null, false);
	
		Fade("タイトル翫屎２", 200, 500, null, false);
		Rotate("タイトル�森�１Ａ", 500, @0, @0, 0, Dxl3, false);
		Zoom("タイトル�森�１Ａ", 2000, 2000, 2000, Dxl3, false);
		Fade("タイトル�森�１Ａ", 100, 500, null, false);
		Fade("タイトル�森�１Ｃ", 300, 500, null, false);
		Fade("タイトル嘘尚", 500, 300, null, false);
		Fade("タイトル嘘尚２", 500, 500, null, false);
		Fade("タイトル僮弼", 1000, 200, null, false);
		Wait(500);
		Fade("タイトル�森�１Ａ", 1000, 0, null, false);
		Wait(500);
		Fade("タイトル僮弼", 1500, 0, null, false);
		Fade("タイトル翫屎２", 500, 0, null, false);
		Fade("タイトル嘘尚２", 500, 0, null, false);
		Fade("タイトル�森�１Ｃ", 700, 0, null, false);
		Fade("タイトル嘘尚", 500, 100, null, false);
		Wait(500);
	
		Fade("タイトル翫屎２", 200, 500, null, false);
		Rotate("タイトル�森�１Ｂ", 500, @0, @0, 0, Dxl3, false);
		Zoom("タイトル�森�１Ｂ", 2000, 2000, 2000, Dxl3, false);
		Fade("タイトル�森�１Ｂ", 100, 500, null, false);
		Fade("タイトル�森�１Ｄ", 300, 500, null, false);
		Fade("タイトル嘘尚", 500, 600, null, false);
		Fade("タイトル嘘尚２", 500, 800, null, false);
		Fade("タイトル僮弼", 1000, 200, null, false);
		Wait(500);
		Fade("タイトル�森�１Ｂ", 1000, 0, null, false);
		Wait(500);
		Fade("タイトル僮弼", 1500, 0, null, false);
		Fade("タイトル翫屎２", 500, 0, null, false);
		Fade("タイトル嘘尚２", 500, 0, null, false);
		Fade("タイトル�森�１Ｄ", 700, 0, null, false);
		Wait(500);
	
		Fade("タイトルカラ�`２", 200, 1000, Axl1, true);
			SoundPlay("SE01",0,1000,false);
			//��頼畠ランダム�才Ｖ�
			MoveFRP1stop();
			MoveFRP2stop();
			//���Rり卦し
			TitleProcessStart();

			Fade("タイトル井��",0,1000,null,false);
			Fade("タイトル翫屎", 0, 0, null, false);
			Fade("タイトル翫屎２", 0, 0, null, false);
			Fade("タイトル�森�*", 0, 0, null, false);
			Zoom("タイトル嘘尚", 0, 1000, 1000, null, false);
			Fade("タイトル嘘尚", 0, 1000, null, false);
			Zoom("タイトルロゴ", 0, 1000, 1000, null, false);
			Fade("タイトルロゴ", 0, 1000, null, false);
			Zoom("タイトルロゴ２", 0, 1000, 1000, null, false);
			Fade("タイトルロゴ２", 0, 1000, null, false);
			SetBlur("タイトルロゴ２", true, 2, 500, 50, false);
			Zoom("タイトル嘘尚２", 0, 1000, 1000, null, false);
			Fade("タイトル嘘尚２", 0, 1000, null, false);
			SetBlur("タイトル嘘尚２", true, 2, 500, 50, false);
			Fade("タイトル况貧", 0, 300, null, false);
	
		Fade("@����タイトル�_兵１",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@����タイトル�i�z１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル余嶄１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル�O協１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル蒙�e１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル竃笥１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル����１",$TitleFadeIcon,1000,null,false);
		if(!ExistSave(9998)){
			Fade("@����タイトル余嶄１",$TitleFadeIcon,500,null,false);
		}
		WaitAction("@����タイトル�_兵１", null);

		Zoom("タイトルロゴ２", 1000, 1200, 1200, null, false);
		Fade("タイトルロゴ２", 1000, 0, null, false);
		Zoom("タイトル嘘尚２", 1000, 1200, 1200, null, false);
		Fade("タイトル嘘尚２", 1000, 0, null, false);

		Fade("タイトルカラ�`２",1000,0,null,true);

		$Logo=1;

	}else if($FullMetalDeamon){
...	//��仝��麹ＥＤ�K阻瘁�I尖々
		CreateTextureEX("タイトル��麹１", 16000, Center, Middle, "cg/ev/ev267_寔伏��麹ＥＤ_a.jpg");
		CreateTextureEX("タイトル��麹２", 16010, -750, -770, "cg/ev/resize/ev267_寔伏��麹ＥＤ_a.jpg");
		CreateTextureEX("タイトル��麹３", 16100, @0, @0, "cg/ev/ev267_寔伏��麹ＥＤ_b.jpg");
		CreateColorEXadd("�}弼易", 30000, "#FFFFFF");

		//SoundPlay($TitleBGM, 0, 700, false);
		Wait(160);

		CreateSE("SE01","se�M咄_������_�i偽01");
		MusicStart("SE01",0,1000,0,1000,null,false);
		WaitPlay("SE01", null);

		CreateSE("SE02","se�蜉L_�嘛�_�z_未み�zみ01");
		MusicStart("SE02",0,1000,0,1000,null,false);

		Fade("タイトル��麹１", 0, 1000, null, false);
		Fade("タイトル��麹２", 0, 1000, null, false);
		Shake("タイトル��麹２", 300, 0, 20, 0, 0, 1000, null, true);
	
		Wait(500);
	
		Move("タイトル��麹２", 8000, @0, -60, DxlAuto, false);
		Wait(6000);
		FadeDelete("タイトル��麹２", 1000, true);
	
		Wait(1500);
	
		Fade("タイトル��麹３", 2000, 1000, null, true);
		Delete("タイトル��麹１");
	
		Wait(2000);
	
		CreateSE("SE03","se蒙歩_������_�z鞠��處02");
		MusicStart("SE03",0,1000,0,1000,null,false);

		Fade("�}弼易", 0, 1000, null, true);
			Delete("タイトル��麹*");
			CreateTextureSP("タイトル��麹０", 16200, @0, @0, "cg/ev/ev267_寔伏��麹ＥＤ_c.jpg");
			CreatePlainEX("�}医亟", 16210);
			SetBlur("�}医亟", true, 2, 500, 80, false);
			Fade("�}医亟", 0, 500, null, true);
		FadeDelete("�}医亟", 1450, false);
		Zoom("�}医亟", 1500, 1300, 1300, null, false);
		FadeDelete("�}弼易", 1000, true);
	
		//SoundPlay($TitleBGM, 2000, 650, false);
		//Wait(5000);

		//SetVolume($TitleBGM, 5000, 1000, NULL);
	
		//CreateTextureEX("タイトル��麹１", 16200, Center, Middle, "cg/ev/ev267_寔伏��麹ＥＤ_a.jpg");
		//Fade("タイトル��麹１", 2000, 1000, null, true);
		//Delete("タイトル��麹０");

		//Wait(2000);

		//Fade("タイトル��麹１", 3000, 0, null, true);
		//Delete("タイトル��麹１");

			Wait(6000);
			Fade("タイトル��麹０", 5000, 0, null, true);
			Delete("タイトル��麹０");

		CreateColor("タイトル��麹弼", 16200, 0, 0, 1024, 576, BLACK);
		Wait(1000);

			SoundPlay($TitleBGM, 2000, 1000, true);
			Wait(2000);

		//��ここからほぼ揖匯
		Fade("タイトル况貧", 0, 1, null, true);
		DrawEffect("タイトル况貧", 1000, "MiddleWave", 0, 1000, null);

		Fade("タイトルロゴ２", 0, 1000, null, false);
		Fade("タイトル嘘尚２", 0, 1000, null, false);
		Fade("タイトル嘘尚",0,1000,null,true);
		Fade("タイトルロゴ",0,1000,null,true);
		Fade("タイトル井��",0,1000,null,false);

		Fade("@����タイトル�_兵１",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@����タイトル�i�z１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル余嶄１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル�O協１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル蒙�e１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル竃笥１",$TitleFadeIcon,1000,null,false);
		if(#FullMetalDeamonG){
			Fade("@����タイトル����１",$TitleFadeIcon,1000,null,false);
		}

		if(!ExistSave(9998)){
			Fade("@����タイトル余嶄１",$TitleFadeIcon,500,null,false);
		}
		WaitAction("@����タイトル�_兵１", null);

		SetBlur("タイトルロゴ２", true, 2, 500, 50, false);
		SetBlur("タイトル嘘尚２", true, 2, 500, 50, false);

		Zoom("タイトルロゴ２", 2000, 1200, 1200, null, false);
		Fade("タイトルロゴ２", 2000, 0, null, false);
		Zoom("タイトル嘘尚２", 2000, 1200, 1200, null, false);
		Fade("タイトル嘘尚２", 2000, 0, null, false);

		Fade("タイトル��麹弼", 2000, 0, null, true);
		Delete("タイトル��麹弼");

		if(!#FullMetalDeamonG){
			Move("@����タイトル����１", 0, @0, @-15, null, true);
			Move("@����タイトル����１", 1000, @0, @15, Dxl1, false);
			Fade("@����タイトル����１",1000,1000,null,true);
			#FullMetalDeamonG=true;
		}

		//���Rり卦し
		TitleProcessStart();
		$FullMetalDeamon=false;

	}else{
...	//��２指朕參週
		if($エキストラタイトル){
			if(#エキストラＢＧＭ != $TitleBGM){
				//￥ＢＧＭプレイ
				SetVolume("@mbgm*", 1000, 0, NULL);
				SetVolume("@msong*", 1000, 0, NULL);
				SoundPlay($TitleBGM,0,1000,true);
			}

			Request("タイトルカラ�`２", AddRender);
			CreateSE("SE01","se�蜉L_好��_偽�n融01");

			SoundPlay("SE01",0,1000,false);
			Fade("タイトルカラ�`２", 0, 1000, Axl1, true);

			Fade("システムタイトル/タイトル嘘尚", 0, 0, null, true);
			Request("システムタイトル", UnLock);
			Delete("システムタイトル");

			$エキストラタイトル=false;
		}else{
			//￥ＢＧＭプレイ
			SoundPlay($TitleBGM,0,1000,true);

			//����
			Move("タイトル嘘尚", 0, @0, @-576, null, true);
			Zoom("タイトルロゴ", 0, 800, 800, Dxl2, true);
	
			Request("タイトルカラ�`２", AddRender);
			CreateSE("SE01","se蒙歩_������_�z鞠��處02");
	
			Zoom("タイトルロゴ", 2000, 1000, 1000, null, false);
			Fade("タイトルロゴ", 2000, 1000, null, 1600);

			Move("タイトル嘘尚", 400, @0, @576, null, false);
			Fade("タイトル嘘尚", 400, 1000, null, 200);

			SoundPlay("SE01",0,1000,false);
			Fade("タイトルカラ�`２", 200, 1000, Axl1, true);
		}

		Fade("タイトル况貧", 0, 1, null, true);
		DrawEffect("タイトル况貧", 1000, "MiddleWave", 0, 1000, null);

		Fade("タイトルロゴ２", 0, 1000, null, false);
		Fade("タイトル嘘尚２", 0, 1000, null, false);
		Fade("タイトル嘘尚",0,1000,null,true);
		Fade("タイトルロゴ",0,1000,null,true);
		Fade("タイトル井��",0,1000,null,false);

		Fade("@����タイトル�_兵１",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@����タイトル�i�z１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル余嶄１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル�O協１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル蒙�e１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル竃笥１",$TitleFadeIcon,1000,null,false);
		Fade("@����タイトル����１",$TitleFadeIcon,1000,null,false);
		if(!ExistSave(9998)){
			Fade("@����タイトル余嶄１",$TitleFadeIcon,500,null,false);
		}
		WaitAction("@����タイトル�_兵１", null);

		SetBlur("タイトルロゴ２", true, 2, 500, 50, false);
		SetBlur("タイトル嘘尚２", true, 2, 500, 50, false);

		Zoom("タイトルロゴ２", 1000, 1200, 1200, null, false);
		Fade("タイトルロゴ２", 1000, 0, null, false);
		Zoom("タイトル嘘尚２", 1000, 1200, 1200, null, false);
		Fade("タイトル嘘尚２", 1000, 0, null, false);

		Fade("タイトルカラ�`２",1000,0,null,true);

		//���Rり卦し
		TitleProcessStart();
	}

	//＊プロセススタ�`ト
	//Request("タイトルプロセス", Start);

	//§セットフォ�`カス
	TitleFocus();

	Request("タイトルフルスクプロセス", Stop);
	WaitAction("タイトルフルスクプロセス", null);
}
//============================================================================//



//=============================================================================//
..//＊セットネクストフォ�`カス＊
//=============================================================================//
function TitleFocus(){
	$TitleCount=Count($TitleNutName);

	$TitleWhile=0;
	while($TitleCount>$TitleWhile){
		if($TitleNutName[$TitleWhile][2]){
			TitleDocusGo();
		}
		$TitleWhile++;
	}
}

function TitleDocusGo()
{
	$TitleFocusBreak=true;
	$TitleStart=$TitleWhile+1;
	$TitleWhile2=0;
	while($TitleCount>$TitleWhile2&&$TitleFocusBreak){
		if($TitleStart>=$TitleCount){
			$TitleStart=0;
		}

		if($TitleNutName[$TitleStart][2]){
			$menunut="タイトル"+$TitleNutName[$TitleWhile]+"/MouseUsual/hit";
			$menunut2="タイトル"+$TitleNutName[$TitleStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,DOWN);
				SetNextFocus($menunut,$menunut2,LEFT);
			$TitleFocusBreak=false;
		}

		$TitleStart++;
		$TitleWhile2++;
	}


	$TitleFocusBreak=true;
	$TitleStart=$TitleWhile-1;
	$TitleWhile2=0;
	while($TitleCount>$TitleWhile2&&$TitleFocusBreak){
		if($TitleStart<0){
			$TitleStart=$TitleCount-1;
		}

		if($TitleNutName[$TitleStart][2]){
			$menunut="タイトル"+$TitleNutName[$TitleWhile]+"/MouseUsual/hit";
			$menunut2="タイトル"+$TitleNutName[$TitleStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,UP);
				SetNextFocus($menunut,$menunut2,RIGHT);
			$TitleFocusBreak=false;
		}

		$TitleStart--;
		$TitleWhile2++;
	}


}
//============================================================================//




//=============================================================================//
..//＊ファンクションプロセス光�N＊
//=============================================================================//
//§タイトル處竃ファンクション
function CreateTPO1($NutTPO1a,$NutTPO1b,$TimeTPO1,$FadeTPO1,$WaitTPO1,$ParTPO1){
	CreateProcess("タイトルTPO1", 100, 0, 0, "ProcessTPO1");
	SetAlias("タイトルTPO1", "タイトルTPO1");
}
function ProcessTPO1(){
	begin:

	while(1){
		if($ParTPO1==1){
			LockVideo(true);//￥ロック�O崔
			Fade($NutTPO1b, $TimeTPO1, 0, null, false);
			Fade($NutTPO1a, $TimeTPO1, $FadeTPO1, null, false);
			LockVideo(false);//￥ロック�O崔
			Wait($WaitTPO1);
	
			LockVideo(true);//￥ロック�O崔
			Fade($NutTPO1b, $TimeTPO1, $FadeTPO1, null, false);
			LockVideo(false);//￥ロック�O崔
			Wait($WaitTPO1);
		}else if($ParTPO1==2){
			LockVideo(true);//￥ロック�O崔
			Fade($NutTPO1a, $TimeTPO1, $FadeTPO1, null, false);
			Fade($NutTPO1b, $TimeTPO1, 0, null, false);
			LockVideo(false);//￥ロック�O崔
			Wait($WaitTPO1);
	
			LockVideo(true);//￥ロック�O崔
			Fade($NutTPO1b, $TimeTPO1, $FadeTPO1, null, false);
			Fade($NutTPO1a, $TimeTPO1, 0, null, false);
			LockVideo(false);//￥ロック�O崔
			Wait($WaitTPO1);
		}
	}
}
function TitleProcessStart(){
	Request("タイトルTPO1", Start);
}
function TitleProcessStop(){
	Request("タイトルTPO1", Stop);
	WaitAction("タイトルTPO1", null);
	Fade("タイトル况貧", 100, 0, null, false);
	//￥ロック�O崔
	LockVideo(false);
}

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
	Request("@タイトル�_兵/MouseLeave/タイトル�_兵プロセス２", Stop);
	WaitAction("@タイトル�_兵/MouseLeave/タイトル�_兵プロセス２", null);

	Fade("@タイトルアイコンアニメ*", 0, 0, null, false);

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
	Request("@タイトル�_兵１", Enter);

	$TitleStartPro=0;
	Request("@タイトル�_兵/MouseOver/タイトル�_兵プロセス１", Stop);
	WaitAction("@タイトル�_兵/MouseOver/タイトル�_兵プロセス１", null);
	Fade("@タイトルアイコンアニメ*", 0, 0, null, true);
}

function TitleStartClick()
{
	Request("@タイトル�_兵１", Erase);
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
			case タイトル竃笥{
				TitleProcessStop();

				//CreateSE("�Q協サウンド",$TitleClickSE2);
				//SoundPlay("�Q協サウンド",0,1000,false);

				$Title_Exit = true;
				call_chapter nss/sys_close.nss;
				$Title_Exit = false;

				TitleProcessStart();
			}

			if(ExistSave(9998)){
				case タイトル余嶄{
					TitleProcessStop();

					CreateSE("�Q協サウンド",$TitleClickSE2);
					SoundPlay("�Q協サウンド",0,1000,false);
		
					SetVolume("@mbgm*", 3000, 0, NULL);
					Fade("タイトルカラ�`", 1000, 1000, null, true);
					WaitPlay("�Q協サウンド", null);
		
					$Title_Quick = true;
					call_chapter nss/sys_quickload.nss;
					$Title_Quick = false;
		
					TitleProcessStart();
				}
			}

			case タイトル�_兵{
				TitleProcessStop();

				CreateSE("�Q協サウンド",$TitleClickSE2);
				Request("�Q協サウンド", Lock);
				SoundPlay("�Q協サウンド",0,1000,false);

				SetVolume("@mbgm*", 3000, 0, NULL);
				Fade("タイトルカラ�`", 1000, 1000, null, true);

				$TitleSelect = 1;
			}

			case タイトル蒙�e{
				TitleProcessStop();

				CreateSE("�Q協サウンド",$TitleClickSE3);
				SoundPlay("�Q協サウンド",0,1000,false);

				$TitleSelect = 2;
			}

			case タイトル�i�z{
				TitleProcessStop();

				CreateSE("�Q協サウンド",$TitleClickSE);
				SoundPlay("�Q協サウンド",0,1000,false);

				$Title_Load = true;
				call_chapter nss/sys_load.nss;
				$Title_Load = false;

				TitleProcessStart();
			}

			case タイトル�O協{
				TitleProcessStop();

				CreateSE("�Q協サウンド",$TitleClickSE);
				SoundPlay("�Q協サウンド",0,1000,false);

				$Title_Config = true;
				call_chapter nss/sys_config.nss;
				$Title_Config = false;

				TitleProcessStart();
			}

			case タイトル����{
				CreateSE("�Q協サウンド",$TitleClickSE);
				SoundPlay("�Q協サウンド",0,1000,false);

				Wait(100);

				#SYSTEM_window_full = false;
				System("OPEN:http://www.otomedream.com/temp/game/muramasamune/secret/");
			}

			//￥キ�`ダウン狼
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}
		}
	}

}//============================================================================//


