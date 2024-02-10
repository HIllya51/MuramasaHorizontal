//=============================================================================//
.//■EXTRA [Recollection Library]■
//=============================================================================//
#include "nss/function.nss"
#include "nss/function_move.nss"
#include "nss/function_select.nss"

//"nss/function_stand.nss"【function.nss内でinclude】
//"nss/function_process.nss"【function.nss内でinclude】

chapter main
{
	//★タイトルの状態
	$SYSTEM_menu_lock = true;

	$DebugMode=false;

	$RecoPage=1;
	$RecoPhase=0;

	$RecoFirst=true;
	$RecoWoop=true;
	while($RecoWoop){
		RecollectionBase();
	
		$RecoLoop=true;
		while($RecoLoop){
			Recollection();
		}
	}

	CreateEffect("@システムエキストラ/背景", 2500, 0, 0, 1024, 576, "Plain");
	Request("@システムエキストラ/背景",Passive);

	Wait(16);
}

chapter main2
{
	Reco();
}


..//★基礎定義
function RecollectionBase()
{
	$エキストラ回想=true;

	LoadImage("RecoImage0", "cg/sys/extra/reco/空白アイコン.png");
	//LoadImage("RecoImage1", "cg/sys/extra/reco/サムネイルボタンoff.png");
	LoadImage("RecoImage2", "cg/sys/extra/reco/選択カーソル.png");
	//LoadImage("RecoImage3", "cg/sys/extra/reco/サムネイルボタンon.png");

	//■定義「背景」
	CreateTexture("RecoGround", 1000, 0, 0, "cg/sys/extra/reco/背景画像.png");

	//■各種定義
	//Array($RecoNutName,"2D","3D","BG","Back","Next","Exit");
	//AssocArray($RecoNutName,"2D","3D","BG","Back","Next","Exit");
	Array($RecoNutName,"Exit");
	AssocArray($RecoNutName,"Exit");

	//Array($RecoNutName["2D"],862,98,true,人物画,"2D");
	//Array($RecoNutName["3D"],862,194,true,三次元的画,"3D");
	//Array($RecoNutName["BG"],862,334,true,背景画,BG);
	//Array($RecoNutName["Back"],912,438,true,前頁,Back);
	//Array($RecoNutName["Next"],862,438,true,次頁,Next);
	Array($RecoNutName["Exit"],0,438,true,退出,Exit);

	$WhileCount=0;
	while(Count($RecoNutName)>$WhileCount){
		if($RecoNutName[$WhileCount][2]){
			$RecoX=$RecoNutName[$WhileCount][0];
			$RecoY=$RecoNutName[$WhileCount][1];

			$RecoNutBase="Reco"+$RecoNutName[$WhileCount];
			CreateChoice($RecoNutBase);
			SetAlias($RecoNutBase, $RecoNutBase);

			$RecoNutImage1=$RecoNutBase+"Image1";
			$RecoNutFail="cg/sys/extra/reco/"+$RecoNutName[$WhileCount][3]+"-001.png";
			LoadImage($RecoNutImage1, $RecoNutFail);
			$RecoNutImage2=$RecoNutBase+"Image2";
			$RecoNutFail="cg/sys/extra/reco/"+$RecoNutName[$WhileCount][3]+"-002.png";
			LoadImage($RecoNutImage2, $RecoNutFail);
			$RecoNutImage3=$RecoNutBase+"Image3";
			$RecoNutFail="cg/sys/extra/reco/"+$RecoNutName[$WhileCount][3]+"-003.png";
			LoadImage($RecoNutImage3, $RecoNutFail);

			$RecoNutTemp1=$RecoNutBase+"/img";
			CreateTexture($RecoNutTemp1, 1000, $RecoX, $RecoY, $RecoNutImage1);

			if($RecoNutName[$WhileCount]!="Next"&&$RecoNutName[$WhileCount]!="Back"&&$RecoNutName[$WhileCount]!="Exit"){
				$RecoNutTemp2=$RecoNutBase+"/img2";
				CreateTexture($RecoNutTemp2, 1000, $RecoX, $RecoY, $RecoNutImage3);
			}
			$RecoNutHit=$RecoNutBase+"/MouseUsual/hit";
			CreateTexture($RecoNutHit, 1000, $RecoX, $RecoY, $RecoNutImage1);
			$RecoNutOver=$RecoNutBase+"/MouseOver/nut";
			CreateTexture($RecoNutOver, 1000, $RecoX, $RecoY, $RecoNutImage2);
			$RecoNutClick=$RecoNutBase+"/MouseClick/nut";
			CreateTexture($RecoNutClick, 1000, $RecoX, $RecoY, $RecoNutImage3);
			Request($RecoNutHit, "Erase");
		}
		$WhileCount++;
	}

	//■ＲＥＣＯ変数定義
	Reco();

	//ページ合計書き出し
	$RecoWrite=false;
	RecoWrite();
}


..//★連想配列
function Reco()
{
	//★ロック設置
	//LockVideo(true);

	//■選択肢
	Array(#RecoCategory,"全員");
	AssocArray(#RecoCategory,"全員");

	$RecoWhile=0;
	while(Count(#RecoCategory)>$RecoWhile){
		#RecoOnCount[$RecoWhile]=0;
		#RecoCount[$RecoWhile]=0;
		#RecoCategory[$RecoWhile][0]=0;
		$RecoWhile++;
	}

	Array(#Reco,"何か","ev105_倒れた小夏_e","ev114_輪姦される操_a","ev137_首領輪姦","ev145_桜子を犯す童心_a","ev148_一条Ｈ１_a","ev193_ヤングさよＨ２","ev196_香奈枝Ｈ１_a","ev222_茶々丸Ｈ_a","ev259_村正Ｈ_a","ev262_村正メイドさんご奉仕_a");
	AssocArray(#Reco,"何か","ev105_倒れた小夏_e","ev114_輪姦される操_a","ev137_首領輪姦","ev145_桜子を犯す童心_a","ev148_一条Ｈ１_a","ev193_ヤングさよＨ２","ev196_香奈枝Ｈ１_a","ev222_茶々丸Ｈ_a","ev259_村正Ｈ_a","ev262_村正メイドさんご奉仕_a");
	#RecoCount=Count(#Reco);

	Array(#Reco["ev105_倒れた小夏_e"],"全員","No","ma01_020");
	Array(#Reco["ev114_輪姦される操_a"],"全員","No","ma03_013");
	Array(#Reco["ev137_首領輪姦"],"全員","No","ma05_017");
	Array(#Reco["ev145_桜子を犯す童心_a"],"全員","No","mb02_020");
	Array(#Reco["ev148_一条Ｈ１_a"],"全員","No","mb03_008");
	Array(#Reco["ev193_ヤングさよＨ２"],"全員","No","mc04_024");
	Array(#Reco["ev196_香奈枝Ｈ１_a"],"全員","No","mc04_028");
	Array(#Reco["ev222_茶々丸Ｈ_a"],"全員","No","md03_003");
	Array(#Reco["ev259_村正Ｈ_a"],"全員","No","md06_021");
	Array(#Reco["ev262_村正メイドさんご奉仕_a"],"全員","No","md06_026");

	#Reco要素数=2;

	$RecoWhile=1;
	while(#RecoCount>$RecoWhile){
		if(!$format){
			//■デバッグモード用
			if($DebugMode){
				RecoDebug();
			}
			//■カテゴリ分類
			$RecoOpenWhile=0;
			while(Count(#RecoCategory)>$RecoOpenWhile){
				if(Strstr(#Reco[$RecoWhile][0], #RecoCategory[$RecoOpenWhile])){
					//該当ページは何番まで？
					#RecoCategory[$RecoOpenWhile][0]=#RecoCategory[$RecoOpenWhile][0]+1;
					//カテゴリに当てはめていくよ！
					#RecoCategory[$RecoOpenWhile][#RecoCategory[$RecoOpenWhile][0]]=#Reco[$RecoWhile];
		
					//ＲＥＣＯ枚数カウント
					RecoRound();
				}
				$RecoOpenWhile++;
			}
		}else{
			RecoFormat();
		}
		$RecoWhile++;
	}
}

...//■フォーマット用
function RecoFormat()
{
	$RecoOpenWhile=#Reco要素数;
	while(Count(#Reco[$RecoWhile])>$RecoOpenWhile){
		VariableValue(#,#Reco[$RecoWhile][$RecoOpenWhile],false);
		$RecoOpenWhile++;
	}
}
...//■デバッグ用
function RecoDebug()
{
	$RecoOpenWhile=#Reco要素数;
	while(Count(#Reco[$RecoWhile])>$RecoOpenWhile){
		VariableValue(#,#Reco[$RecoWhile][$RecoOpenWhile],true);
		$RecoOpenWhile++;
	}
}
...//□ＲＥＣＯ枚数カウント用
function RecoRound()
{
	//カテゴリ別総CG数
	#RecoCount[$RecoOpenWhile]=#RecoCount[$RecoOpenWhile]+Count(#Reco[$RecoWhile])-#Reco要素数;
	//カテゴリ別総有効CG数
	$RecoCountWhile=#Reco要素数;
	while(Count(#Reco[$RecoWhile])>$RecoCountWhile){
		if(VariableValue(#,#Reco[$RecoWhile][$RecoCountWhile])){
			#RecoOnCount[$RecoOpenWhile]=#RecoOnCount[$RecoOpenWhile]+1;
		}
		$RecoCountWhile++;
	}
}
...//□ＲＥＣＯ枚数書き出し用
function RecoWrite()
{
	$RecoCountAll=0;
	$RecoOnCountAll=0;

	$xxx=0;
	$RecoWhile=0;
	while(Count(#RecoCategory)>$RecoWhile){
		$RecoCountAll=$RecoCountAll+#RecoCount[$RecoWhile];
		$RecoOnCountAll=$RecoOnCountAll+#RecoOnCount[$RecoWhile];

		if($RecoWrite){
			$img=#RecoCategory[$RecoWhile]+"　"+#RecoOnCount[$RecoWhile]+"/"+#RecoCount[$RecoWhile];
			$nut="RecoText"+$RecoWhile;
			$xxx+=30;
			SetFont("黑体", 18, 000000, FFFFFF, MEDIUM, RIGHTDOWN);
			CreateText($nut, 9999, 0, $xxx, Auto, Auto, $img);
		}
		$RecoWhile++;
	}

	if($RecoWrite){
		$img="全体　"+$RecoOnCountAll+"/"+$RecoCountAll;
		CreateText("RecoText9", 9999, 0, 0, Auto, Auto, $img);
	}
}

..//●選択肢生成と描画
function Recollection()
{
	if($RecoFirst||$RecoReturn){
	}else{
		CreateTexture("RecoScreen", 10000, 0, 0, SCREEN);
		Fade("RecoNext/MouseUsual/img", 0, 1000, null, false);
		Fade("RecoBack/MouseUsual/img", 0, 1000, null, false);
	}

	//■選択肢定義
	$RecoMaxCount=20;//カテゴリのページ数
	$PreX=672;
	$PreY=38;
	$X_plus=-190;
	$Y_plus=100;
	$Gyou1=5;
	$Gyou2=10;
	$Gyou3=15;
	$Gyou4=20;
	$Gyou5=25;
	$X=$PreX;
	$Y=$PreY;
	//カテゴリにおける最大ページ数
	$RecoMaxPage=Integer(#RecoCategory[$RecoPhase][0]/$RecoMaxCount);
	if((#RecoCategory[$RecoPhase][0]%$RecoMaxCount)>0){
		$RecoMaxPage+=1;
		$RecoOverPage=$RecoMaxPage+1;
	}

	$RecoWhile=1;//選択番号
	$RecoWhile2=(($RecoPage-1)*$RecoMaxCount)+1;//ほんとの番号
	while($RecoMaxCount>=$RecoWhile){
		//▼サムネイル選抜と有効枚数カウント用
		VariableValue($,"RecoCheck"+$RecoWhile,false);
		$RecoBunsi=0;
		$RecoBunbo=0;
		$onimg="false";
		$CountWhile=#Reco要素数;
		while(Count(#Reco[#RecoCategory[$RecoPhase][$RecoWhile2]])>$CountWhile){
			$RecoBunbo++;
			if(VariableValue(#,#Reco[#RecoCategory[$RecoPhase][$RecoWhile2]][$CountWhile])&&$RecoWhile2<=#RecoCategory[$RecoPhase][0]){
				if(!$onimg){
					$nutimg=#Reco[#RecoCategory[$RecoPhase][$RecoWhile2]];//CGと違ってサムネイルが直下
					VariableValue($,"RecoCheck"+$RecoWhile,true);
				}
				$RecoBunsi++;
				$onimg=true;
			}
			$CountWhile++;
		}

		//▼選択肢生成開始
		$nutbase="Reco"+$RecoWhile;
		$nut=$nutbase+"/img";
		Delete($nut);
		if($RecoFirst||$RecoReturn){
			CreateChoice($nutbase);
			SetAlias($nutbase, $nutbase);
			$nut=$nutbase+"/MouseUsual/hit";
			CreateTexture($nut, 1001, $X, $Y, "RecoImage0");
			Request($nut, Erase);
			$nut=$nutbase+"/MouseOver/img";
			CreateTexture($nut, 1001, $X, $Y, "RecoImage2");
			//$nut=$nutbase+"/MouseClick/img";
			//CreateTexture($nut, 1001, $X, $Y, "RecoImage3");
			$nut=$nutbase+"/MouseClick";
			Delete($nut);
		}

		if($onimg){
			//文字列判定
			if(Strstr($nutimg, "ev")){
				$index="ev";
			}else{
				$index="bg";
			}
			$img="cg/sys/extra/thum/"+$index+"/"+$nutimg+".jpg";
		}else{
			$RecoBunsi=1;
			$RecoBunbo=1;
			$img="RecoImage0";
		}
		$nut=$nutbase+"/img";
		CreateTexture($nut, 1000, $X, $Y, $img);
		if(($RecoBunsi/$RecoBunbo)!=1){
			Fade($nut, 0, 500, null, true);
		}

		if($RecoWhile2>#RecoCategory[$RecoPhase][0]){
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

		$RecoWhile2++;
		$RecoWhile++;

		//データ移動
		if($RecoWhile<=$Gyou1){
			$Y=$PreY+($Y_plus*($RecoWhile-1));
		}else if($RecoWhile<=$Gyou2){
			$Y=$PreY+($Y_plus*($RecoWhile-$Gyou1-1));
			$X=$PreX+$X_plus;
		}else if($RecoWhile<=$Gyou3){
			$Y=$PreY+($Y_plus*($RecoWhile-$Gyou2-1));
			$X=$PreX+($X_plus*2);
		}else if($RecoWhile<=$Gyou4){
			$Y=$PreY+($Y_plus*($RecoWhile-$Gyou3-1));
			$X=$PreX+($X_plus*3);
		}else if($RecoWhile<=$Gyou5){
			$Y=$PreY+($Y_plus*($RecoWhile-$Gyou4-1));
			$X=$PreX+($X_plus*4);
		}
	}
	Fade("*/MouseOver/*", 0, 0, null, false);
	Fade("*/MouseClick/*", 0, 0, null, true);

	//●セットネクストフォーカス
//	Array($RecoForcus,"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","2D","3D","BG","Exit","Next","Back");
//	AssocArray($RecoForcus,"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","2D","3D","BG","Exit","Next","Back");
	Array($RecoForcus,"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","Exit");
	AssocArray($RecoForcus,"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","Exit");
	Array($RecoForcus[1],5,2,6,16);
	Array($RecoForcus[2],1,3,7,17);
	Array($RecoForcus[3],2,4,8,18);
	Array($RecoForcus[4],3,5,9,19);
	Array($RecoForcus[5],4,1,10,Exit);
	Array($RecoForcus[6],10,7,11,1);
	Array($RecoForcus[7],6,8,12,2);
	Array($RecoForcus[8],7,9,13,3);
	Array($RecoForcus[9],8,10,14,4);
	Array($RecoForcus[10],9,6,15,5);
	Array($RecoForcus[11],15,12,16,6);
	Array($RecoForcus[12],11,13,17,7);
	Array($RecoForcus[13],12,14,18,8);
	Array($RecoForcus[14],13,15,19,9);
	Array($RecoForcus[15],14,11,20,10);
	Array($RecoForcus[16],20,17,1,11);
	Array($RecoForcus[17],16,18,2,12);
	Array($RecoForcus[18],17,19,3,13);
	Array($RecoForcus[19],18,20,4,14);
	Array($RecoForcus[20],19,16,Exit,15);


	//Array($RecoForcus["2D"],Next,"3D",1,15);
	//Array($RecoForcus["3D"],"2D",BG,3,17);
	//Array($RecoForcus[BG],"3D",Next,4,19);
	//Array($RecoForcus[Next],BG,"2D",5,Back);
	//Array($RecoForcus[Back],BG,"2D",Next,Exit);
	Array($RecoForcus[Exit],Exit,Exit,5,20);

	$RecoWhile=1;
	while(Count($RecoForcus)>$RecoWhile){
		$basenut="Reco"+$RecoForcus[$RecoWhile]+"/MouseUsual/hit";
		$up="Reco"+$RecoForcus[$RecoWhile][0]+"/MouseUsual/hit";
		$down="Reco"+$RecoForcus[$RecoWhile][1]+"/MouseUsual/hit";
		$left="Reco"+$RecoForcus[$RecoWhile][2]+"/MouseUsual/hit";
		$right="Reco"+$RecoForcus[$RecoWhile][3]+"/MouseUsual/hit";
		SetNextFocus($basenut, $up, UP);
		SetNextFocus($basenut, $down, DOWN);
		SetNextFocus($basenut, $left, LEFT);
		SetNextFocus($basenut, $right, RIGHT);
		$RecoWhile++;
	}

	//●描画
	$RecoWhile=0;
	while(Count(#RecoCategory)>$RecoWhile){
		$RecoNutBase="Reco"+#RecoCategory[$RecoWhile];
		$nut=$RecoNutBase+"/img2";
		Fade($nut, 0, 0, null, true);
		Request($RecoNutBase, Clickable);
		$nut=$RecoNutBase+"/MouseOver/nut";
		Request($nut, Enter);
		$nut=$RecoNutBase+"/MouseClick/nut";
		Request($nut, Enter);
		$RecoWhile++;
	}
	$RecoNutBase="Reco"+#RecoCategory[$RecoPhase];
	//Request($RecoNutBase, UnClickable);
	$nut=$RecoNutBase+"/*/nut";
	//Request($nut, Erase);
	$nut=$RecoNutBase+"/img2";
	Fade($nut, 0, 1000, null, true);

	if($RecoFirst){
		Fade("@スクリーン", 500, 0, null, true);
		Delete("@スクリーン");

		$RecoFirst=false;
	}else if($RecoReturn){
		Fade("@RecoScreen", 500, 0, null, true);
		Request("RecoScreen", UnLock);
		Delete("@RecoScreen");

		$RecoReturn=false;
	}else{
		Fade("RecoScreen", 300, 0, null, true);
		Delete("RecoScreen");
	}



	//★選択開始
	$RecollectionWhile=true;
	while($RecollectionWhile){
		$SelectRecoIco=0;
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
				$RecollectionWhile=false;$RecoLoop=false;$RecoWoop=false;break;
			}
	
			case Reco1{$SelectRecoIco=1;
			}case Reco2{$SelectRecoIco=2;
			}case Reco3{$SelectRecoIco=3;
			}case Reco4{$SelectRecoIco=4;
			}case Reco5{$SelectRecoIco=5;
			}case Reco6{$SelectRecoIco=6;
			}case Reco7{$SelectRecoIco=7;
			}case Reco8{$SelectRecoIco=8;
			}case Reco9{$SelectRecoIco=9;
			}case Reco10{$SelectRecoIco=10;
			}case Reco11{$SelectRecoIco=11;
			}case Reco12{$SelectRecoIco=12;
			}case Reco13{$SelectRecoIco=13;
			}case Reco14{$SelectRecoIco=14;
			}case Reco15{$SelectRecoIco=15;
			}case Reco16{$SelectRecoIco=16;
			}case Reco17{$SelectRecoIco=17;
			}case Reco18{$SelectRecoIco=18;
			}case Reco19{$SelectRecoIco=19;
			}case Reco20{$SelectRecoIco=20;
			}case Reco2D{
				$RecoPhase=0;$RecoPage=1;
				$RecollectionWhile=false;
			}case Reco3D{
				$RecoPhase=1;$RecoPage=1;
				$RecollectionWhile=false;
			}case RecoBG{
				$RecoPhase=2;$RecoPage=1;
				$RecollectionWhile=false;
			}case RecoExit{
				//Request("@決定サウンズ", Stop);
				//SetVolume("@決定サウンズ", 0, 1000, NULL);
				//Request("@決定サウンズ", Play);
				$RecollectionWhile=false;$RecoLoop=false;$RecoWoop=false;break;
			}case RecoNext{
				//Request("決定サウンド", Stop);
				//Request("決定サウンド", Play);
				$RecollectionWhile=false;
				$RecoPage++;
				if($RecoPage==$RecoOverPage){$RecoPage=1;}
			}case RecoBack{
				//Request("決定サウンド", Stop);
				//Request("決定サウンド", Play);
				$RecollectionWhile=false;
				$RecoPage--;
				if($RecoPage==0){$RecoPage=$RecoMaxPage;}
			}
		}

		if($SelectRecoIco!=0&&VariableValue($,"RecoCheck"+$SelectRecoIco)){
			$RecollectionWhile=false;$RecoLoop2=false;$RecoLoop=false;
		}else{
			$SelectRecoIco=0;
		}
	}

	//★回想スクリプト
	if($SelectRecoIco!=0){
		RecoFade();
	}
}



..//●選択後動作
function RecoFade()
{
	SetVolume("@m*", 1000, 0, null);
/*
	$IcoNut="RecoIco"+$SelectRecoIco+"/Tex2";
	Fade($IcoNut, 0, 1000, null, false);
	$IcoNut="RecoIco"+$SelectRecoIco+"/Img2";
	Fade($IcoNut, 0, 1000, null, true);
*/
	//CreateColor("RecoColor", 40000, 0, 0, 800, 600, "BLACK");
	//Fade("RecoColor", 0, 0, null, true);
	//Fade("RecoColor", 500, 1000, null, true);
	CreateTexture("RecoScreen", 99999999, 0, 0, SCREEN);
	SetAlias("RecoScreen", "RecoScreen");
	Request("RecoScreen", Lock);
	Wait(500);

	Delete("Reco*/*/*");
	Delete("Reco*/*");
	Delete("Reco*");
	//Delete("Memory*/*/*");
	//Delete("Memory*/*");
	//Delete("Memory*");
	//Delete("@システムタイトル/タイトル背景");

	//★：システム変数系の初期化
	$PLACE_reco=true;
	$PLACE_title=false;

	//エキストラオリジン
	$SYSTEM_backselect_lock=true;
	$SYSTEM_save_lock=true;
	$SYSTEM_load_lock=true;
	$LOCAL_extra_lock=true;

	$SYSTEM_menu_lock=false;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_erase_lock = false;
	$SYSTEM_backlog_lock = false;

	$SYSTEM_show_cursor = false;

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_text_auto_lock=true;

	$SYSTEM_text_erase=false;
	$SYSTEM_text_waitkey=true;

	//ConfigCharacterVoice();

	//★：ゲームスピード
	#SYSTEM_play_speed = #play_speed_plus;

	//タイトルからはこのまま進行
	ClearBacklog();
	DeleteSaveFile(9999);
	//DeleteSaveFile(#SaveSelect[#GameNumber]);

	//◆ショートカットメニュー
	QuickSet();

	$RecoNumber=$SelectRecoIco+(($RecoPage-1)*$RecoMaxCount);
	$RecoName=#RecoCategory[$RecoPhase][$RecoNumber];
	$GameName=#Reco[$RecoName][2]+".nss";

	$GameCircle=true;
	while($GameCircle){
		$ConGameName = "nss/" + $GameName;
		$AllRead = Conquest($ConGameName,$GameName,null);

		$GameName2 = $GameName + "_MAIN";
		$hoge="nss/" + $GameName + "->" + $GameName2;
		Conquest($ConGameName,$GameName2,true);
		call_scene $hoge;
	}

	//◆ショートカットメニュー
	QuickStop();

	//★：ゲームスピード
	#play_speed_plus = #SYSTEM_play_speed;

	//★：システム変数系のクリア
	$GameName=false;

	#SYSTEM_play_speed=3;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_menu_lock=true;
	#SYSTEM_skip_express_minimum_time=0;
	$SYSTEM_text_waitkey=true;

	//エキストラオリジン
	$SYSTEM_save_lock=false;
	$SYSTEM_backselect_lock=false;
	$SYSTEM_load_lock=false;
	$LOCAL_extra_lock=false;

	//$MemoryWhile=true;
	$PLACE_title=true;
	$PLACE_reco=false;

	//エキストラＢＧＭ
	Request(#エキストラＢＧＭ, Play);
	SetLoop(#エキストラＢＧＭ, true);
	SetVolume(#エキストラＢＧＭ, 0, 1000, NULL);

	$RecoReturn=true;
}

..//☆本編挿入用
//★本編の回想冒頭に仕込むもの
function ReConquest_yobi()
{
	Conquest($ConGameName,$PreGameName,true);
}
function RecoIn(){
	Request("@RecoScreen", UnLock);
	Fade("@RecoScreen", 500, 0, null, true);
	Delete("@RecoScreen");

	Wait(1000);
}
//★本編の回想終了に仕込んで強制的に先頭に戻す
function RecoReturn(){
	Escape(2);
}
//★本編の回想スクリプト冒頭に差し込む
function RecoOut(){
	SetVolume("@m*", 2000, 0, NULL);

	CreateTexture("RecoScreen", 99999999, 0, 0, SCREEN);
	SetAlias("RecoScreen", "RecoScreen");
	Request("RecoScreen", Lock);

	Wait(2000);

	Delete("@*");
	Delete("*");

	$GameCircle=false;
}







function ForExample(){
//メイン内
	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#ma03_013=true;
	if($PLACE_reco){
		RecoOut();
	}



//シーン内
//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義
	SoundPlay("@mbgm36",0,1000,true);

	SceneFadeBG(200, 0, "cg/bg/bg18500_2_天象儀最上階.jpg",true);
	CreateColorEXadd("白幕", 17000, "WHITE");
	Fade("白幕", 0, 1000, null, true);


	//リコ背景抹消
	RecoIn();
}
//========================================================


//終了
//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{

	}
//============================================

}
