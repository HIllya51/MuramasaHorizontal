//=============================================================================//
//■EXTRA [Sound Library]■
//=============================================================================//
chapter main
{
	//★タイトルの状態
	$SYSTEM_menu_lock = true;

	$DebugMode=false;

	$SoundPage=1;
	$SoundPhase=0;

	$SoundFirst=true;
	MediaBase();
	Media();

	//■動作「終了」
	CreateEffect("@システムエキストラ/背景", 2500, 0, 0, 1024, 576, "Plain");
	Request("@システムエキストラ/背景",Passive);

	Wait(16);

	//サウンド系の変数の初期化
	#BgmNumber=$BgmNumberPre;
}

chapter main2
{
	Sound();
}

function MediaBase()
{
	$エキストラ音楽=true;

	LoadImage("SoundImage0", "cg/sys/extra/sound/空白アイコン.png");
	//LoadImage("SoundImage1", "cg/sys/extra/sound/サムネイルボタンoff.png");
	LoadImage("SoundImage2", "cg/sys/extra/sound/選択カーソル.png");
	//LoadImage("SoundImage3", "cg/sys/extra/sound/サムネイルボタンon.png");

	//■ベース
	CreateColor("SoundColor", 3000, 0, 0, 1024, 576, BLACK);
	Fade("SoundColor", 0, 0, null, false);

	//■背景
	CreateTexture("SoundGround", 1000, 0, 0, "cg/sys/extra/sound/背景画像.png");

	//■ＥＸＩＴ
	CreateChoice("SoundExit");
	SetAlias("SoundExit", "SoundExit");

	$exitX = 0;
	$exitY = 438;

	LoadImage("SoundExitImage1", "cg/sys/extra/sound/退出-001.png");
	LoadImage("SoundExitImage2", "cg/sys/extra/sound/退出-002.png");
	LoadImage("SoundExitImage3", "cg/sys/extra/sound/退出-003.png");

	CreateTexture("SoundExit/img", 1000, $exitX, $exitY, "SoundExitImage1");
	CreateTexture("SoundExit/MouseUsual/hit", 1000, $exitX, $exitY, "SoundExitImage1");
	CreateTexture("SoundExit/MouseOver/nut", 1000, $exitX, $exitY, "SoundExitImage2");
	CreateTexture("SoundExit/MouseClick/nut", 1000, $exitX, $exitY, "SoundExitImage3");
	Request("SoundExit/MouseUsual/hit", "Erase");

	//■アニメーション
	$CountWhile=1;
	while(10>=$CountWhile){
		$img=String("cg/sys/extra/sound/anime/A-icon-%03d.png",$CountWhile);
		$nut=String("SoundAnime%03d",$CountWhile);
		CreateTexture($nut, 1000, -50, 0, $img);
		SetAlias($nut, $nut);
		$CountWhile++;
	}
	Fade("SoundAnime*", 0, 0, null, true);
	Fade("SoundAnime001", 0, 1000, null, false);
	CreateProcess("SoundProcess", 150, 0, 0, "SoundAnimation");

	//■ＳＯＵＮＤ変数定義
	Sound();

	//ページ合計書き出し
	$SoundWrite=false;
	SoundWrite();
}

function SoundAnimation(){
	$SoundAnimeLoop=true;
	$SoundAnimeWhile=1;
	while($SoundAnimeLoop){
		//★ロック
		//LockVideo(true);

		$animenut=String("@SoundAnime%03d",$SoundAnimeWhile);
		Request("@SoundAnime*", Erase);
		Request($animenut, Enter);
		$SoundAnimeWhile++;

		if(10<$SoundAnimeWhile){
			$SoundAnimeWhile=1;
		}

		Fade($animenut, 0, 1000, null, false);
		//★ロック
		//LockVideo(false);
		//Wait(16);
		//Draw();
	}
}


..//★連想配列
function Sound()
{
	//★ロック設置
	//LockVideo(true);

	//■選択肢
	Array(#SoundCategory,"BGM","SONG","MV");
	AssocArray(#SoundCategory,"BGM","SONG","MV");

	$SoundWhile=0;
	while(Count(#SoundCategory)>$SoundWhile){
		#SoundOnCount[$SoundWhile]=0;
		#SoundCount[$SoundWhile]=0;
		#SoundCategory[$SoundWhile][0]=0;
		$SoundWhile++;
	}

	Array(#Sound,"何か","@mbgm01","@mbgm02","@mbgm03","@mbgm04","@mbgm05","@mbgm06","@mbgm07","@mbgm08","@mbgm09","@mbgm10","@mbgm11","@mbgm12","@mbgm13","@mbgm14","@mbgm15","@mbgm16","@mbgm17","@mbgm18","@mbgm19","@mbgm20","@mbgm21","@mbgm22","@mbgm23","@mbgm24","@mbgm25","@mbgm26","@mbgm27","@mbgm28","@mbgm29","@mbgm30","@mbgm31","@mbgm32","@mbgm33","@mbgm34","@mbgm35","@mbgm36","@mbgm37","@msong01_short","@msong02_short","@msong03_short","@msong04_short","@msong05_short","mvOP","mvOP02","mvPV");
	AssocArray(#Sound,"何か","@mbgm01","@mbgm02","@mbgm03","@mbgm04","@mbgm05","@mbgm06","@mbgm07","@mbgm08","@mbgm09","@mbgm10","@mbgm11","@mbgm12","@mbgm13","@mbgm14","@mbgm15","@mbgm16","@mbgm17","@mbgm18","@mbgm19","@mbgm20","@mbgm21","@mbgm22","@mbgm23","@mbgm24","@mbgm25","@mbgm26","@mbgm27","@mbgm28","@mbgm29","@mbgm30","@mbgm31","@mbgm32","@mbgm33","@mbgm34","@mbgm35","@mbgm36","@mbgm37","@msong01_short","@msong02_short","@msong03_short","@msong04_short","@msong05_short","mvOP","mvOP02","mvPV");
	#SoundCount=Count(#Sound);

	#open=true;
	Array(#Sound["@mbgm01"],"BGM","BGM-001","open");
	Array(#Sound["@mbgm02"],"BGM","BGM-002","open");
	Array(#Sound["@mbgm03"],"BGM","BGM-003","open");
	Array(#Sound["@mbgm04"],"BGM","BGM-004","open");
	Array(#Sound["@mbgm05"],"BGM","BGM-005","open");
	Array(#Sound["@mbgm06"],"BGM","BGM-006","open");
	Array(#Sound["@mbgm07"],"BGM","BGM-007","open");
	Array(#Sound["@mbgm08"],"BGM","BGM-008","open");
	Array(#Sound["@mbgm09"],"BGM","BGM-009","open");
	Array(#Sound["@mbgm10"],"BGM","BGM-010","open");
	Array(#Sound["@mbgm11"],"BGM","BGM-011","open");
	Array(#Sound["@mbgm12"],"BGM","BGM-012","open");
	Array(#Sound["@mbgm13"],"BGM","BGM-013","open");
	Array(#Sound["@mbgm14"],"BGM","BGM-014","open");
	Array(#Sound["@mbgm15"],"BGM","BGM-015","open");
	Array(#Sound["@mbgm16"],"BGM","BGM-016","open");
	Array(#Sound["@mbgm17"],"BGM","BGM-017","open");
	Array(#Sound["@mbgm18"],"BGM","BGM-018","open");
	Array(#Sound["@mbgm19"],"BGM","BGM-019","open");
	Array(#Sound["@mbgm20"],"BGM","BGM-020","open");
	Array(#Sound["@mbgm21"],"BGM","BGM-021","open");
	Array(#Sound["@mbgm22"],"BGM","BGM-022","open");
	Array(#Sound["@mbgm23"],"BGM","BGM-023","open");
	Array(#Sound["@mbgm24"],"BGM","BGM-024","open");
	Array(#Sound["@mbgm25"],"BGM","BGM-025","open");
	Array(#Sound["@mbgm26"],"BGM","BGM-026","open");
	Array(#Sound["@mbgm27"],"BGM","BGM-027","open");
	Array(#Sound["@mbgm28"],"BGM","BGM-028","open");
	Array(#Sound["@mbgm29"],"BGM","BGM-029","open");
	Array(#Sound["@mbgm30"],"BGM","BGM-030","open");
	Array(#Sound["@mbgm31"],"BGM","BGM-031","open");
	Array(#Sound["@mbgm32"],"BGM","BGM-032","open");
	Array(#Sound["@mbgm33"],"BGM","BGM-033","open");
	Array(#Sound["@mbgm34"],"BGM","BGM-034","open");
	Array(#Sound["@mbgm35"],"BGM","BGM-035","open");
	Array(#Sound["@mbgm36"],"BGM","BGM-036","open");
	Array(#Sound["@mbgm37"],"BGM","BGM-037","open");

	Array(#Sound["@msong01_short"],"SONG","SONG-001",msong01);
	Array(#Sound["@msong02_short"],"SONG","SONG-002",msong02);
	Array(#Sound["@msong03_short"],"SONG","SONG-003",msong03);
	Array(#Sound["@msong04_short"],"SONG","SONG-004",msong04);
	Array(#Sound["@msong05_short"],"SONG","SONG-005",msong05);

	Array(#Sound["mvOP"],"MV","mvOP","open");
	Array(#Sound["mvOP02"],"MV","mvOP02",mvOP02);
	Array(#Sound["mvPV"],"MV","mvPV","open");

	#Sound要素数=2;


	$SoundWhile=1;
	while(#SoundCount>$SoundWhile){
		if(!$format){
			//■デバッグモード用
			if($DebugMode){
				SoundDebug();
			}
			//■カテゴリ分類
			$SoundOpenWhile=0;
			while(Count(#SoundCategory)>$SoundOpenWhile){
				if(Strstr(#Sound[$SoundWhile][0], #SoundCategory[$SoundOpenWhile])){
					//該当ページは何番まで？
					#SoundCategory[$SoundOpenWhile][0]=#SoundCategory[$SoundOpenWhile][0]+1;
					//カテゴリに当てはめていくよ！
					#SoundCategory[$SoundOpenWhile][#SoundCategory[$SoundOpenWhile][0]]=#Sound[$SoundWhile];
		
					//ＳＯＵＮＤ枚数カウント
					#SoundCountGo=false;
					SoundRound();
				}
				$SoundOpenWhile++;
			}
		}else{
			SoundFormat();
		}
		$SoundWhile++;
	}
}

...//■フォーマット用
function SoundFormat()
{
	$SoundOpenWhile=#Sound要素数;
	while(Count(#Sound[$SoundWhile])>$SoundOpenWhile){
		VariableValue(#,#Sound[$SoundWhile][$SoundOpenWhile],false);
		$SoundOpenWhile++;
	}
}
...//■デバッグ用
function SoundDebug()
{
	$SoundOpenWhile=#Sound要素数;
	while(Count(#Sound[$SoundWhile])>$SoundOpenWhile){
		VariableValue(#,#Sound[$SoundWhile][$SoundOpenWhile],true);
		$SoundOpenWhile++;
	}
}
...//□ＳＯＵＮＤ枚数カウント用
function SoundRound()
{
	//これがないと総数を表示しないよ
	#SoundCountGo=true;

	//カテゴリ別総CG数
	#SoundCount[$SoundOpenWhile]=#SoundCount[$SoundOpenWhile]+Count(#Sound[$SoundWhile])-#Sound要素数;
	//カテゴリ別総有効CG数
	$SoundCountWhile=#Sound要素数;
	while(Count(#Sound[$SoundWhile])>$SoundCountWhile){
		if(VariableValue(#,#Sound[$SoundWhile][$SoundCountWhile])){
			#SoundOnCount[$SoundOpenWhile]=#SoundOnCount[$SoundOpenWhile]+1;
		}
		$SoundCountWhile++;
	}
}



...//□ＳＯＵＮＤ枚数書き出し用
function SoundWrite()
{
	$SoundCountAll=0;
	$SoundOnCountAll=0;

	$xxx=0;
	$SoundWhile=0;
	while(Count(#SoundCategory)>$SoundWhile){
		$SoundCountAll=$SoundCountAll+#SoundCount[$SoundWhile];
		$SoundOnCountAll=$SoundOnCountAll+#SoundOnCount[$SoundWhile];

		if($SoundWrite){
			$img=#SoundCategory[$SoundWhile]+"　"+#SoundOnCount[$SoundWhile]+"/"+#SoundCount[$SoundWhile];
			$nut="SoundText"+$SoundWhile;
			$xxx+=30;
			SetFont("黑体", 18, 000000, FFFFFF, MEDIUM, RIGHTDOWN);
			CreateText($nut, 9999, 0, $xxx, Auto, Auto, $img);
		}
		$SoundWhile++;
	}

	if($SoundWrite){
		$img="全体　"+$SoundOnCountAll+"/"+$SoundCountAll;
		CreateText("SoundText9", 9999, 0, 0, Auto, Auto, $img);
	}
}

//======================
//ここまで基本的に構造変わらず
//======================

..//●選択肢生成と描画
function Media(){

	if($SoundFirst){
	}else{
		CreateTexture("SoundScreen", 10000, 0, 0, SCREEN);
		Fade("SoundNext/MouseUsual/img", 0, 1000, null, false);
		Fade("SoundBack/MouseUsual/img", 0, 1000, null, false);
	}

	//■選択肢定義
	$SoundMaxCount=#SoundCount-1;//１ページ中の選択肢数（サウンドライブラリ仕様）
	$PreX=380;
	$PreY=84;
	$X=$PreX;
	$Y=$PreY;
	//カテゴリにおける最大ページ数（サウンドライブラリでは関係なし）
	$SoundMaxPage=Integer(#SoundCategory[$SoundPhase][0]/$SoundMaxCount);
	if((#SoundCategory[$SoundPhase][0]%$SoundMaxCount)>0){
		$SoundMaxPage+=1;
		$SoundOverPage=$SoundMaxPage+1;
	}

	$SoundWhile=1;//選択番号
	$SoundWhile2=(($SoundPage-1)*$SoundMaxCount)+1;//ほんとの番号
	while($SoundMaxCount>=$SoundWhile){
		//▼多岐カテゴリを全て描画（サウンドライブラリのみ）
		if($SoundWhile2>#SoundCategory[$SoundPhase][0]){$SoundPhase+=1;$SoundWhile2=1;}

		//▼サムネイル選抜と有効枚数カウント用（複数サムネは無いサウンドライブラリ仕様）
		$CountWhile=#Sound要素数;
		VariableValue($,"SoundCheck"+$SoundWhile,false);
		$onimg="false";
		if(VariableValue(#,#Sound[#SoundCategory[$SoundPhase][$SoundWhile2]][$CountWhile])&&$SoundWhile2<=#SoundCategory[$SoundPhase][0]){
			VariableValue($,"SoundCheck"+$SoundWhile,true);
			$onimg=true;
		}
		$nutimg=#Sound[#SoundCategory[$SoundPhase][$SoundWhile2]][1];//サウンドライブラリ仕様

		//▼選択肢生成開始（サウンドライブラリのみ）
		$nutbase="Sound"+$SoundWhile;
		$nut=$nutbase+"/img"
		Delete($nut);
		if($SoundFirst){
			CreateChoice($nutbase);
			SetAlias($nutbase, $nutbase);
			if(#SoundCategory[$SoundPhase]=="MV"){
				$nut=$nutbase+"/MouseUsual/hit";
				CreateTexture($nut, 1001, $X, $Y, "SoundImage0");
				Request($nut, Erase);
				$nut=$nutbase+"/MouseOver/img";
				CreateTexture($nut, 1001, $X, $Y, "SoundImage2");
				//$nut=$nutbase+"/MouseClick/img";
				//CreateTexture($nut, 1001, $X, $Y, "SoundImage3");
				$nut=$nutbase+"/MouseClick";
				Delete($nut);
			}else if(#SoundCategory[$SoundPhase]=="BGM"||#SoundCategory[$SoundPhase]=="SONG"){
				$nut=$nutbase+"/MouseUsual/hit";
				$img="cg/sys/extra/sound/"+$nutimg+"-001.png";
				CreateTexture($nut, 1001, $X, $Y, $img);
				Request($nut, Erase);
				$nut=$nutbase+"/MouseOver/img";
				$img="cg/sys/extra/sound/"+$nutimg+"-002.png";
				//$nut=$nutbase+"/MouseClick/img";
				//CreateTexture($nut, 1001, $X, $Y, "SoundImage3");
				CreateTexture($nut, 1001, $X, $Y, $img);
				$nut=$nutbase+"/MouseClick";
				Delete($nut);
			}
		}

		if(#SoundCategory[$SoundPhase]=="MV"){
			if($onimg){
				$img="cg/sys/extra/thum/dx/"+$nutimg+".jpg";
			}else{
				$img="SoundImage0";
			}
			$nut=$nutbase+"/img";
			CreateTexture($nut, 1000, $X, $Y, $img);
		}else if(#SoundCategory[$SoundPhase]=="BGM"||#SoundCategory[$SoundPhase]=="SONG"){
			if($onimg){
				$nut=$nutbase+"/img";
				$img="cg/sys/extra/sound/"+$nutimg+"-001.png";
				CreateTexture($nut, 1000, $X, $Y, $img);
			}else{
				if(#SoundCategory[$SoundPhase]=="SONG"){
					$nut=$nutbase+"/img";
					$img="cg/sys/extra/sound/"+$nutimg+"-000.png";
					CreateTexture($nut, 1000, $X, $Y, $img);
				}
			}
		}

		if($SoundWhile2>#SoundCategory[$SoundPhase][0]){
			Request($nutbase,UnClickable);
			$nut=$nutbase+"/*/*";
			Request($nut, Erase);
			$nut=$nutbase+"/*";
			Request($nut, Erase);
		}else if(!$onimg){
			Request($nutbase,UnClickable);
			$nut=$nutbase+"/*/*";
			Request($nut, Erase);
		}else{
			Request($nutbase,Clickable);
			$nut=$nutbase+"/*/*";
			Request($nut, Enter);
			$nut=$nutbase+"/MouseUsual/*";
			Request($nut, Erase);
			$nut=$nutbase+"/*";
			Request($nut, Enter);
		}

		if(#エキストラＢＧＭ==#SoundCategory[$SoundPhase][$SoundWhile2]){
			$X2=$X-26;
			Move("@SoundAnime*", 0, $X2, $Y, null, true);
		}

		$SoundWhile2++;
		$SoundWhile++;

		//データ移動
		if($SoundWhile<=18){
			$Y+=24;
		}else if($SoundWhile==19){
			$X=651;
			$Y=$PreY;
		}else if($SoundWhile<=28){
			$Y+=24;
		}else if($SoundWhile==29){
			$X=787;
			$Y=$PreY;
		}else if($SoundWhile<=37){
			$Y+=24;
		}else if($SoundWhile==38){
			$X=651;
			$Y=396;
		}else if($SoundWhile<=42){
			$Y+=24;
		}else if($SoundWhile==43){
			$X=102;
			$Y=$PreY;
		}else if($SoundWhile<=45){
			$Y+=150;
		}
	}
	Fade("*/MouseOver/*", 0, 0, null, false);
	Fade("*/MouseClick/*", 0, 0, null, true);
	Fade("*/img2", 0, 0, null, true);

	//●セットネクストフォーカス
	Array($SoundForcus,"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","Exit");
	AssocArray($SoundForcus,"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","Exit");
	Array($SoundForcus[1],18,2,43,19);
	Array($SoundForcus[2],1,3,43,20);
	Array($SoundForcus[3],2,4,43,21);
	Array($SoundForcus[4],3,5,43,22);
	Array($SoundForcus[5],4,6,43,23);
	Array($SoundForcus[6],5,7,44,24);
	Array($SoundForcus[7],6,8,44,25);
	Array($SoundForcus[8],7,9,44,26);
	Array($SoundForcus[9],8,10,44,27);
	Array($SoundForcus[10],9,11,44,28);
	Array($SoundForcus[11],10,12,44,28);
	Array($SoundForcus[12],11,13,44,38);
	Array($SoundForcus[13],12,14,45,38);
	Array($SoundForcus[14],13,15,45,38);
	Array($SoundForcus[15],14,16,45,39);
	Array($SoundForcus[16],15,17,45,40);
	Array($SoundForcus[17],16,18,45,41);
	Array($SoundForcus[18],17,1,45,42);

	Array($SoundForcus[19],42,20,1,29);
	Array($SoundForcus[20],19,21,2,30);
	Array($SoundForcus[21],20,22,3,31);
	Array($SoundForcus[22],21,23,4,32);
	Array($SoundForcus[23],22,24,5,33);
	Array($SoundForcus[24],23,25,6,34);
	Array($SoundForcus[25],24,26,7,35);
	Array($SoundForcus[26],25,27,8,36);
	Array($SoundForcus[27],26,28,9,37);
	Array($SoundForcus[28],27,38,10,37);

	Array($SoundForcus[29],42,30,19,43);
	Array($SoundForcus[30],29,31,20,43);
	Array($SoundForcus[31],30,32,21,43);
	Array($SoundForcus[32],31,33,22,43);
	Array($SoundForcus[33],32,34,23,43);
	Array($SoundForcus[34],33,35,24,44);
	Array($SoundForcus[35],34,36,25,44);
	Array($SoundForcus[36],35,37,26,44);
	Array($SoundForcus[37],36,38,27,44);

	Array($SoundForcus[38],37,39,14,Exit);
	Array($SoundForcus[39],38,40,15,Exit);
	Array($SoundForcus[40],39,41,16,Exit);
	Array($SoundForcus[41],40,42,17,Exit);
	Array($SoundForcus[42],41,29,18,Exit);

	Array($SoundForcus[43],45,44,29,1);
	Array($SoundForcus[44],43,45,37,9);
	Array($SoundForcus[45],44,43,Exit,14);

	Array($SoundForcus[Exit],Exit,Exit,38,45);

	$SoundWhile=1;
	while(Count($SoundForcus)>$SoundWhile){
		$basenut="Sound"+$SoundForcus[$SoundWhile]+"/MouseUsual/hit";
		$up="Sound"+$SoundForcus[$SoundWhile][0]+"/MouseUsual/hit";
		$down="Sound"+$SoundForcus[$SoundWhile][1]+"/MouseUsual/hit";
		$left="Sound"+$SoundForcus[$SoundWhile][2]+"/MouseUsual/hit";
		$right="Sound"+$SoundForcus[$SoundWhile][3]+"/MouseUsual/hit";
		SetNextFocus($basenut, $up, UP);
		SetNextFocus($basenut, $down, DOWN);
		SetNextFocus($basenut, $left, LEFT);
		SetNextFocus($basenut, $right, RIGHT);
		$SoundWhile++;
	}

	//●描画
	$SoundWhile=0;
	while(Count(#SoundCategory)>$SoundWhile){
		$SoundNutBase="Sound"+#SoundCategory[$SoundWhile];
		$nut=$SoundNutBase+"/img2";
		Fade($nut, 0, 0, null, true);
		Request($SoundNutBase, Clickable);
		$nut=$SoundNutBase+"/MouseOver/nut";
		Request($nut, Enter);
		$nut=$SoundNutBase+"/MouseClick/nut";
		Request($nut, Enter);
		$SoundWhile++;
	}
	$SoundNutBase="Sound"+#SoundCategory[$SoundPhase];
	//Request($SoundNutBase, UnClickable);
	$nut=$SoundNutBase+"/*/nut";
	//Request($nut, Erase);
	$nut=$SoundNutBase+"/img2";
	Fade($nut, 0, 1000, null, true);

	if($SoundFirst){
		Fade("@スクリーン", 500, 0, null, true);
		Delete("@スクリーン");
		$SoundFirst=false;
	}else{
		Fade("SoundScreen", 300, 0, null, true);
		Delete("SoundScreen");
	}

	//サウンドライブラリ用初期動作
	Request("SoundProcess", Start);

	//★選択開始
	$MediaWhile=true;
	while($MediaWhile){
		$SelectSoundIco=0;
		select{
			//★キーダウン系
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if($SYSTEM_r_button_down){
				$MediaWhile=false;$SoundLoop=false;$SoundWoop=false;break;
			}
	
			case Sound1{$SelectSoundIco=1;
			}case Sound2{$SelectSoundIco=2;
			}case Sound3{$SelectSoundIco=3;
			}case Sound4{$SelectSoundIco=4;
			}case Sound5{$SelectSoundIco=5;
			}case Sound6{$SelectSoundIco=6;
			}case Sound7{$SelectSoundIco=7;
			}case Sound8{$SelectSoundIco=8;
			}case Sound9{$SelectSoundIco=9;
			}case Sound10{$SelectSoundIco=10;
			}case Sound11{$SelectSoundIco=11;
			}case Sound12{$SelectSoundIco=12;
			}case Sound13{$SelectSoundIco=13;
			}case Sound14{$SelectSoundIco=14;
			}case Sound15{$SelectSoundIco=15;
			}case Sound16{$SelectSoundIco=16;
			}case Sound17{$SelectSoundIco=17;
			}case Sound18{$SelectSoundIco=18;
			}case Sound19{$SelectSoundIco=19;
			}case Sound20{$SelectSoundIco=20;
			}case Sound21{$SelectSoundIco=21;
			}case Sound22{$SelectSoundIco=22;
			}case Sound23{$SelectSoundIco=23;
			}case Sound24{$SelectSoundIco=24;
			}case Sound25{$SelectSoundIco=25;
			}case Sound26{$SelectSoundIco=26;
			}case Sound27{$SelectSoundIco=27;
			}case Sound28{$SelectSoundIco=28;
			}case Sound29{$SelectSoundIco=29;
			}case Sound30{$SelectSoundIco=30;
			}case Sound31{$SelectSoundIco=31;
			}case Sound32{$SelectSoundIco=32;
			}case Sound33{$SelectSoundIco=33;
			}case Sound34{$SelectSoundIco=34;
			}case Sound35{$SelectSoundIco=35;
			}case Sound36{$SelectSoundIco=36;
			}case Sound37{$SelectSoundIco=37;
			}case Sound38{$SelectSoundIco=38;
			}case Sound39{$SelectSoundIco=39;
			}case Sound40{$SelectSoundIco=40;
			}case Sound41{$SelectSoundIco=41;
			}case Sound42{$SelectSoundIco=42;
			}case Sound43{$SelectSoundIco=43;
			}case Sound44{$SelectSoundIco=44;
			}case Sound45{$SelectSoundIco=45;
			}case SoundExit{
				//Request("@決定サウンズ", Stop);
				//SetVolume("@決定サウンズ", 0, 1000, NULL);
				//Request("@決定サウンズ", Play);
				$MediaWhile=false;$SoundLoop=false;$SoundWoop=false;break;
			}case SoundNext{
				//Request("決定サウンド", Stop);
				//Request("決定サウンド", Play);
				$MediaWhile=false;
				$SoundPage++;
				if($SoundPage==$SoundOverPage){$SoundPage=1;}
			}case SoundBack{
				//Request("決定サウンド", Stop);
				//Request("決定サウンド", Play);
				$MediaWhile=false;
				$SoundPage--;
				if($SoundPage==0){$SoundPage=$SoundMaxPage;}
			}
		}

		if($SelectSoundIco!=0&&VariableValue($,"SoundCheck"+$SelectSoundIco)){
			//★音スクリプト
			SoundFade();
		}else{
			$SelectSoundIco=0;
		}
	}

	Request("SoundProcess", Stop);
	Request("SoundAnime*", Erase);
	Request($animenut, Enter);
}


..//●選択後動作
function SoundFade()
{
	$SoundNumber=$SelectSoundIco+(($SoundPage-1)*$SoundMaxCount);
	$SoundName=#Sound[$SoundNumber];

	//同ナンバー選択時停止
	if(#エキストラＢＧＭ==#Sound[$SoundName]){
		SetVolume("@m*", 2000, 0, NULL);
		#エキストラＢＧＭ=0;

		Request("SoundProcess", Stop);
		WaitAction("SoundProcess", null);
		Request("SoundAnime*", Erase);
		Request($animenut, Enter);
		Fade($animenut, 300, 0, null, false);
	}else if(Strstr(#Sound[$SoundName][0], #SoundCategory[0])||Strstr(#Sound[$SoundName][0], #SoundCategory[1])){
		//BGM再生//歌再生
		if(VariableValue(#Sound[$SoundName][#Sound要素数])){
			SetVolume("@m*", 2000, 0, NULL);
			#エキストラＢＧＭ=#Sound[$SoundName];

			$nut="Sound"+$SoundNumber+"/img";
			Position($nut,$X,$Y);
			$X-=26;
			Move("SoundAnime*", 0, $X, $Y, null, true);
			Request("SoundProcess", Start);

			//エキストラＢＧＭ
			Request(#エキストラＢＧＭ, Play);
			SetLoop(#エキストラＢＧＭ, true);
			SetVolume(#エキストラＢＧＭ, 0, 1000, NULL);
		}
	}else if(Strstr(#Sound[$SoundName][0], #SoundCategory[2])){
		//映像再生
		if(VariableValue(#Sound[$SoundName][#Sound要素数])){
			Request("SoundProcess", Stop);
			WaitAction("SoundProcess", null);
			Request("SoundAnime*", Erase);
			Request($animenut, Enter);

			SetVolume(#エキストラＢＧＭ, 1000, 1, NULL);

			Fade("SoundColor", 1000, 1000, null, true);
			$nut="dx/"+#Sound[$SoundName]+".ngs";
			MoviePlay($nut, true);

			//エキストラＢＧＭ
			Request(#エキストラＢＧＭ, Play);
			SetLoop(#エキストラＢＧＭ, true);
			SetVolume(#エキストラＢＧＭ, 1000, 1000, NULL);

			Fade("SoundColor", 300, 0, null, true);

			Request("SoundProcess", Start);
		}
	}
}