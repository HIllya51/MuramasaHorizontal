//=============================================================================//
.//��EXTRA [Recollection Library]��
//=============================================================================//
#include "nss/function.nss"
#include "nss/function_move.nss"
#include "nss/function_select.nss"

//"nss/function_stand.nss"��function.nss�ڤ�include��
//"nss/function_process.nss"��function.nss�ڤ�include��

chapter main
{
	//�勵���ȥ��״�B
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

	CreateEffect("@�����ƥ२�����ȥ�/����", 2500, 0, 0, 1024, 576, "Plain");
	Request("@�����ƥ२�����ȥ�/����",Passive);

	Wait(16);
}

chapter main2
{
	Reco();
}


..//����A���x
function RecollectionBase()
{
	$�������ȥ����=true;

	LoadImage("RecoImage0", "cg/sys/extra/reco/�հץ�������.png");
	//LoadImage("RecoImage1", "cg/sys/extra/reco/����ͥ���ܥ���off.png");
	LoadImage("RecoImage2", "cg/sys/extra/reco/�x�k���`����.png");
	//LoadImage("RecoImage3", "cg/sys/extra/reco/����ͥ���ܥ���on.png");

	//�����x��������
	CreateTexture("RecoGround", 1000, 0, 0, "cg/sys/extra/reco/��������.png");

	//�����N���x
	//Array($RecoNutName,"2D","3D","BG","Back","Next","Exit");
	//AssocArray($RecoNutName,"2D","3D","BG","Back","Next","Exit");
	Array($RecoNutName,"Exit");
	AssocArray($RecoNutName,"Exit");

	//Array($RecoNutName["2D"],862,98,true,���ﻭ,"2D");
	//Array($RecoNutName["3D"],862,194,true,����Ԫ�Ļ�,"3D");
	//Array($RecoNutName["BG"],862,334,true,������,BG);
	//Array($RecoNutName["Back"],912,438,true,ǰ�,Back);
	//Array($RecoNutName["Next"],862,438,true,���,Next);
	Array($RecoNutName["Exit"],0,438,true,�˳�,Exit);

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

	//���ңţãω������x
	Reco();

	//�ک`����Ӌ��������
	$RecoWrite=false;
	RecoWrite();
}


..//���B������
function Reco()
{
	//���å��O��
	//LockVideo(true);

	//���x�k֫
	Array(#RecoCategory,"ȫ�T");
	AssocArray(#RecoCategory,"ȫ�T");

	$RecoWhile=0;
	while(Count(#RecoCategory)>$RecoWhile){
		#RecoOnCount[$RecoWhile]=0;
		#RecoCount[$RecoWhile]=0;
		#RecoCategory[$RecoWhile][0]=0;
		$RecoWhile++;
	}

	Array(#Reco,"�Τ�","ev105_���줿С��_e","ev114_݆��������_a","ev137_���I݆��","ev145_�@�Ӥ򷸤�ͯ��_a","ev148_һ���ȣ�_a","ev193_��󥰤���ȣ�","ev196_����֦�ȣ�_a","ev222_�衩���_a","ev259_������_a","ev262_�����ᥤ�ɤ��󤴷���_a");
	AssocArray(#Reco,"�Τ�","ev105_���줿С��_e","ev114_݆��������_a","ev137_���I݆��","ev145_�@�Ӥ򷸤�ͯ��_a","ev148_һ���ȣ�_a","ev193_��󥰤���ȣ�","ev196_����֦�ȣ�_a","ev222_�衩���_a","ev259_������_a","ev262_�����ᥤ�ɤ��󤴷���_a");
	#RecoCount=Count(#Reco);

	Array(#Reco["ev105_���줿С��_e"],"ȫ�T","No","ma01_020");
	Array(#Reco["ev114_݆��������_a"],"ȫ�T","No","ma03_013");
	Array(#Reco["ev137_���I݆��"],"ȫ�T","No","ma05_017");
	Array(#Reco["ev145_�@�Ӥ򷸤�ͯ��_a"],"ȫ�T","No","mb02_020");
	Array(#Reco["ev148_һ���ȣ�_a"],"ȫ�T","No","mb03_008");
	Array(#Reco["ev193_��󥰤���ȣ�"],"ȫ�T","No","mc04_024");
	Array(#Reco["ev196_����֦�ȣ�_a"],"ȫ�T","No","mc04_028");
	Array(#Reco["ev222_�衩���_a"],"ȫ�T","No","md03_003");
	Array(#Reco["ev259_������_a"],"ȫ�T","No","md06_021");
	Array(#Reco["ev262_�����ᥤ�ɤ��󤴷���_a"],"ȫ�T","No","md06_026");

	#RecoҪ����=2;

	$RecoWhile=1;
	while(#RecoCount>$RecoWhile){
		if(!$format){
			//���ǥХå���`����
			if($DebugMode){
				RecoDebug();
			}
			//�����ƥ�����
			$RecoOpenWhile=0;
			while(Count(#RecoCategory)>$RecoOpenWhile){
				if(Strstr(#Reco[$RecoWhile][0], #RecoCategory[$RecoOpenWhile])){
					//ԓ���ک`���Ϻη��ޤǣ�
					#RecoCategory[$RecoOpenWhile][0]=#RecoCategory[$RecoOpenWhile][0]+1;
					//���ƥ���˵��ƤϤ�Ƥ����裡
					#RecoCategory[$RecoOpenWhile][#RecoCategory[$RecoOpenWhile][0]]=#Reco[$RecoWhile];
		
					//�ңţã�ö���������
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

...//���ե��`�ޥå���
function RecoFormat()
{
	$RecoOpenWhile=#RecoҪ����;
	while(Count(#Reco[$RecoWhile])>$RecoOpenWhile){
		VariableValue(#,#Reco[$RecoWhile][$RecoOpenWhile],false);
		$RecoOpenWhile++;
	}
}
...//���ǥХå���
function RecoDebug()
{
	$RecoOpenWhile=#RecoҪ����;
	while(Count(#Reco[$RecoWhile])>$RecoOpenWhile){
		VariableValue(#,#Reco[$RecoWhile][$RecoOpenWhile],true);
		$RecoOpenWhile++;
	}
}
...//���ңţã�ö�����������
function RecoRound()
{
	//���ƥ���e�tCG��
	#RecoCount[$RecoOpenWhile]=#RecoCount[$RecoOpenWhile]+Count(#Reco[$RecoWhile])-#RecoҪ����;
	//���ƥ���e�t�Є�CG��
	$RecoCountWhile=#RecoҪ����;
	while(Count(#Reco[$RecoWhile])>$RecoCountWhile){
		if(VariableValue(#,#Reco[$RecoWhile][$RecoCountWhile])){
			#RecoOnCount[$RecoOpenWhile]=#RecoOnCount[$RecoOpenWhile]+1;
		}
		$RecoCountWhile++;
	}
}
...//���ңţã�ö������������
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
			$img=#RecoCategory[$RecoWhile]+"��"+#RecoOnCount[$RecoWhile]+"/"+#RecoCount[$RecoWhile];
			$nut="RecoText"+$RecoWhile;
			$xxx+=30;
			SetFont("����", 18, 000000, FFFFFF, MEDIUM, RIGHTDOWN);
			CreateText($nut, 9999, 0, $xxx, Auto, Auto, $img);
		}
		$RecoWhile++;
	}

	if($RecoWrite){
		$img="ȫ�塡"+$RecoOnCountAll+"/"+$RecoCountAll;
		CreateText("RecoText9", 9999, 0, 0, Auto, Auto, $img);
	}
}

..//���x�k֫���ɤ��軭
function Recollection()
{
	if($RecoFirst||$RecoReturn){
	}else{
		CreateTexture("RecoScreen", 10000, 0, 0, SCREEN);
		Fade("RecoNext/MouseUsual/img", 0, 1000, null, false);
		Fade("RecoBack/MouseUsual/img", 0, 1000, null, false);
	}

	//���x�k֫���x
	$RecoMaxCount=20;//���ƥ���Υک`����
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
	//���ƥ���ˤ��������ک`����
	$RecoMaxPage=Integer(#RecoCategory[$RecoPhase][0]/$RecoMaxCount);
	if((#RecoCategory[$RecoPhase][0]%$RecoMaxCount)>0){
		$RecoMaxPage+=1;
		$RecoOverPage=$RecoMaxPage+1;
	}

	$RecoWhile=1;//�x�k����
	$RecoWhile2=(($RecoPage-1)*$RecoMaxCount)+1;//�ۤ�Ȥη���
	while($RecoMaxCount>=$RecoWhile){
		//������ͥ����x�i���Є�ö�����������
		VariableValue($,"RecoCheck"+$RecoWhile,false);
		$RecoBunsi=0;
		$RecoBunbo=0;
		$onimg="false";
		$CountWhile=#RecoҪ����;
		while(Count(#Reco[#RecoCategory[$RecoPhase][$RecoWhile2]])>$CountWhile){
			$RecoBunbo++;
			if(VariableValue(#,#Reco[#RecoCategory[$RecoPhase][$RecoWhile2]][$CountWhile])&&$RecoWhile2<=#RecoCategory[$RecoPhase][0]){
				if(!$onimg){
					$nutimg=#Reco[#RecoCategory[$RecoPhase][$RecoWhile2]];//CG���`�äƥ���ͥ��뤬ֱ��
					VariableValue($,"RecoCheck"+$RecoWhile,true);
				}
				$RecoBunsi++;
				$onimg=true;
			}
			$CountWhile++;
		}

		//���x�k֫�����_ʼ
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
			//�������ж�
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

		//�ǩ`���Ƅ�
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

	//�񥻥åȥͥ����ȥե��`����
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

	//���軭
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
		Fade("@������`��", 500, 0, null, true);
		Delete("@������`��");

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



	//���x�k�_ʼ
	$RecollectionWhile=true;
	while($RecollectionWhile){
		$SelectRecoIco=0;
		select{
			//�省�`������ϵ
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
				//Request("@�Q��������", Stop);
				//SetVolume("@�Q��������", 0, 1000, NULL);
				//Request("@�Q��������", Play);
				$RecollectionWhile=false;$RecoLoop=false;$RecoWoop=false;break;
			}case RecoNext{
				//Request("�Q���������", Stop);
				//Request("�Q���������", Play);
				$RecollectionWhile=false;
				$RecoPage++;
				if($RecoPage==$RecoOverPage){$RecoPage=1;}
			}case RecoBack{
				//Request("�Q���������", Stop);
				//Request("�Q���������", Play);
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

	//����륹����ץ�
	if($SelectRecoIco!=0){
		RecoFade();
	}
}



..//���x�k�����
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
	//Delete("@�����ƥॿ���ȥ�/�����ȥ뱳��");

	//������ƥ�����ϵ�γ��ڻ�
	$PLACE_reco=true;
	$PLACE_title=false;

	//�������ȥ饪�ꥸ��
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

	//����`�ॹ�ԩ`��
	#SYSTEM_play_speed = #play_speed_plus;

	//�����ȥ뤫��Ϥ��Τޤ��M��
	ClearBacklog();
	DeleteSaveFile(9999);
	//DeleteSaveFile(#SaveSelect[#GameNumber]);

	//������`�ȥ��åȥ�˥�`
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

	//������`�ȥ��åȥ�˥�`
	QuickStop();

	//����`�ॹ�ԩ`��
	#play_speed_plus = #SYSTEM_play_speed;

	//������ƥ�����ϵ�Υ��ꥢ
	$GameName=false;

	#SYSTEM_play_speed=3;
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_menu_lock=true;
	#SYSTEM_skip_express_minimum_time=0;
	$SYSTEM_text_waitkey=true;

	//�������ȥ饪�ꥸ��
	$SYSTEM_save_lock=false;
	$SYSTEM_backselect_lock=false;
	$SYSTEM_load_lock=false;
	$LOCAL_extra_lock=false;

	//$MemoryWhile=true;
	$PLACE_title=true;
	$PLACE_reco=false;

	//�������ȥ�£ǣ�
	Request(#�������ȥ�£ǣ�, Play);
	SetLoop(#�������ȥ�£ǣ�, true);
	SetVolume(#�������ȥ�£ǣ�, 0, 1000, NULL);

	$RecoReturn=true;
}

..//���������
//�ﱾ���λ���ð�^�����z����
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
//�ﱾ���λ���K�ˤ����z��Ǐ��ƵĤ����^�ˑ���
function RecoReturn(){
	Escape(2);
}
//�ﱾ���λ��륹����ץ�ð�^�˲�z��
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
//�ᥤ����
	//��ꥳ�쥯������á���������������
	ReConquest();
	#ma03_013=true;
	if($PLACE_reco){
		RecoOut();
	}



//���`����
//============================================
//��ꥳ�쥯������á���������������
if(!$PLACE_reco){
//============================================


//============================================
//��ꥳ�쥯������á���������������
}else{

	//״�B���x
	SoundPlay("@mbgm36",0,1000,true);

	SceneFadeBG(200, 0, "cg/bg/bg18500_2_����x�����A.jpg",true);
	CreateColorEXadd("��Ļ", 17000, "WHITE");
	Fade("��Ļ", 0, 1000, null, true);


	//�ꥳ����Ĩ��
	RecoIn();
}
//========================================================


//�K��
//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		RecoReturn();
	}else{

	}
//============================================

}
