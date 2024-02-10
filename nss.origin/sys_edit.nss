
chapter main
{
	//■準備「映像投影」
	CreateTexture("video",10,center,middle,"VIDEO");
	CreateTexture("video2",1000,center,middle,"VIDEO");

	CreateColor("色１", 55, 0, 0, 1024, 576, "BLACK");
	Fade("色１", 0, 0, null, true);
	Fade("色１", 100, 900, null, true);

	SetFont("黑体", 14, FFFFFF, 000000, 500, RIGHTDOWN);

	//■変数セット
	DebugSet();

	$DebugCount=1;
	while($DebugCount<11){
		DebugSetChoice();
		$DebugCount+=1;
	}

	//▼描画
	Request("変数*", PushText);
	Request("変数*/*", PushText);
	Fade("Debug*/*/*", 0, 0, null, true);

	Fade("video2", 500, 0, null, true);


	//★選択肢
	$LOCAL_debug_enable=true;
	$SYSTEM_keydown_esc=false;
	$SYSTEM_r_button_down=false;

	while($LOCAL_debug_enable){
		select{
			//★終了
			if($SYSTEM_r_button_down||$SYSTEM_keydown_d){$LOCAL_debug_enable=false;break;}

			case DebugAdd1{$DebugNumber=1;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis1{$DebugNumber=1;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd2{$DebugNumber=2;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis2{$DebugNumber=2;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd3{$DebugNumber=3;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis3{$DebugNumber=3;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd4{$DebugNumber=4;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis4{$DebugNumber=4;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd5{$DebugNumber=5;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis5{$DebugNumber=5;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd6{$DebugNumber=6;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis6{$DebugNumber=6;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd7{$DebugNumber=7;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis7{$DebugNumber=7;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd8{$DebugNumber=8;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis8{$DebugNumber=8;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd9{$DebugNumber=9;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis9{$DebugNumber=9;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd10{$DebugNumber=10;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis10{$DebugNumber=10;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd11{$DebugNumber=11;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis11{$DebugNumber=11;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd12{$DebugNumber=12;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis12{$DebugNumber=12;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd13{$DebugNumber=13;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis13{$DebugNumber=13;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd14{$DebugNumber=14;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis14{$DebugNumber=14;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd15{$DebugNumber=15;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis15{$DebugNumber=15;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd16{$DebugNumber=16;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis16{$DebugNumber=16;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd17{$DebugNumber=17;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis17{$DebugNumber=17;$DebugPatarn=FALSE;DebugNumber();}

/*===============
			case DebugAdd18{$DebugNumber=18;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis18{$DebugNumber=18;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd19{$DebugNumber=19;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis19{$DebugNumber=19;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd20{$DebugNumber=20;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis20{$DebugNumber=20;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd21{$DebugNumber=21;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis21{$DebugNumber=21;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd22{$DebugNumber=22;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis22{$DebugNumber=22;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd23{$DebugNumber=23;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis23{$DebugNumber=23;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd24{$DebugNumber=24;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis24{$DebugNumber=24;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd25{$DebugNumber=25;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis25{$DebugNumber=25;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd26{$DebugNumber=26;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis26{$DebugNumber=26;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd27{$DebugNumber=27;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis27{$DebugNumber=27;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd28{$DebugNumber=28;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis28{$DebugNumber=28;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd29{$DebugNumber=29;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis29{$DebugNumber=29;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd30{$DebugNumber=30;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis30{$DebugNumber=30;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd31{$DebugNumber=31;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis31{$DebugNumber=31;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd32{$DebugNumber=32;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis32{$DebugNumber=32;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd33{$DebugNumber=33;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis33{$DebugNumber=33;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd34{$DebugNumber=34;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis34{$DebugNumber=34;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd35{$DebugNumber=35;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis35{$DebugNumber=35;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd36{$DebugNumber=36;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis36{$DebugNumber=36;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd37{$DebugNumber=37;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis37{$DebugNumber=37;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd38{$DebugNumber=38;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis38{$DebugNumber=38;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd39{$DebugNumber=39;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis39{$DebugNumber=39;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd40{$DebugNumber=40;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis40{$DebugNumber=40;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd41{$DebugNumber=41;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis41{$DebugNumber=41;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd42{$DebugNumber=42;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis42{$DebugNumber=42;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd43{$DebugNumber=43;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis43{$DebugNumber=43;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd44{$DebugNumber=44;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis44{$DebugNumber=44;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd45{$DebugNumber=45;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis45{$DebugNumber=45;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd46{$DebugNumber=46;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis46{$DebugNumber=46;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd47{$DebugNumber=47;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis47{$DebugNumber=47;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd48{$DebugNumber=48;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis48{$DebugNumber=48;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd49{$DebugNumber=49;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis49{$DebugNumber=49;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd50{$DebugNumber=50;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis50{$DebugNumber=50;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd51{$DebugNumber=51;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis51{$DebugNumber=51;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd52{$DebugNumber=52;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis52{$DebugNumber=52;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd53{$DebugNumber=53;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis53{$DebugNumber=53;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd54{$DebugNumber=54;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis54{$DebugNumber=54;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd55{$DebugNumber=55;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis55{$DebugNumber=55;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd56{$DebugNumber=56;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis56{$DebugNumber=56;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd57{$DebugNumber=57;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis57{$DebugNumber=57;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd58{$DebugNumber=58;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis58{$DebugNumber=58;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd59{$DebugNumber=59;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis59{$DebugNumber=59;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd60{$DebugNumber=60;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis60{$DebugNumber=60;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd61{$DebugNumber=61;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis61{$DebugNumber=61;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd62{$DebugNumber=62;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis62{$DebugNumber=62;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd63{$DebugNumber=63;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis63{$DebugNumber=63;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd64{$DebugNumber=64;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis64{$DebugNumber=64;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd65{$DebugNumber=65;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis65{$DebugNumber=65;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd66{$DebugNumber=66;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis66{$DebugNumber=66;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd67{$DebugNumber=67;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis67{$DebugNumber=67;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd68{$DebugNumber=68;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis68{$DebugNumber=68;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd69{$DebugNumber=69;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis69{$DebugNumber=69;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd70{$DebugNumber=70;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis70{$DebugNumber=70;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd71{$DebugNumber=71;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis71{$DebugNumber=71;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd72{$DebugNumber=72;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis72{$DebugNumber=72;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd73{$DebugNumber=73;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis73{$DebugNumber=73;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd74{$DebugNumber=74;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis74{$DebugNumber=74;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd75{$DebugNumber=75;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis75{$DebugNumber=75;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd76{$DebugNumber=76;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis76{$DebugNumber=76;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd77{$DebugNumber=77;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis77{$DebugNumber=77;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd78{$DebugNumber=78;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis78{$DebugNumber=78;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd79{$DebugNumber=79;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis79{$DebugNumber=79;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd80{$DebugNumber=80;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis80{$DebugNumber=80;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd81{$DebugNumber=81;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis81{$DebugNumber=81;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd82{$DebugNumber=82;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis82{$DebugNumber=82;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd83{$DebugNumber=83;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis83{$DebugNumber=83;$DebugPatarn=FALSE;DebugNumber();}
			case DebugAdd84{$DebugNumber=84;$DebugPatarn=TRUE;DebugNumber();}
			case DebugDis84{$DebugNumber=84;$DebugPatarn=FALSE;DebugNumber();}

			if($DebugPage!=2){
				case DebugAdd85{$DebugNumber=85;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis85{$DebugNumber=85;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd86{$DebugNumber=86;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis86{$DebugNumber=86;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd87{$DebugNumber=87;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis87{$DebugNumber=87;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd88{$DebugNumber=88;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis88{$DebugNumber=88;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd89{$DebugNumber=89;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis89{$DebugNumber=89;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd90{$DebugNumber=90;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis90{$DebugNumber=90;$DebugPatarn=FALSE;DebugNumber();}
				case DebugAdd91{$DebugNumber=91;$DebugPatarn=TRUE;DebugNumber();}
				case DebugDis91{$DebugNumber=91;$DebugPatarn=FALSE;DebugNumber();}
			}

===============*/

			//★終了
			if(!$LOCAL_debug_enable){break;}

			//★キーダウン系
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
				call_chapter nss/sys_close.nss;
			}else if($SYSTEM_keydown_t){
				call_chapter nss/sys_reset.nss;
			}else if($SYSTEM_keydown_r){
				call_chapter nss/sys_backselect.nss;
			}
		}
	}

	//■終了「本編への終了処理」
	Fade("video2", 300, 1000, null, true);
}


function DebugSet()
{

//変数の数設定
	if($DebugPage==1){
		$DebugCountBase=1;
		$DebugCountMax=11;
	}else{
		$DebugPage=1;
		$DebugCountBase=1;
		$DebugCountMax=11;
	}


	$DebugCount=$DebugCountBase;
	$DebugXBase=200;
	$DebugYBase=-30;
	$DebugXBase2=200;
	$DebugYBase2=-10;


	$Dia=24;
	$Di=1;
	while($Di<15){
		if($Di==5||$Di==9||$Di==13){
			$Dia-=1;
		}

		$DebugInt[$Di]=$Dia;
		$Dia+=23;
		$Di++;
	}

	while($DebugCount < $DebugCountMax){
		DebugSetText();
		$DebugCount+=1;
	}
}

//テキスト生成
function DebugSetText()
{
	$DebugText="名無し";
	$DebugMem="値無し";

	DebugResult();

	$DebugTitleNat="変数題"+$DebugCount;
	$DebugTextNat="変数名"+$DebugCount;
	$DebugMemNat=$DebugTextNat+"/"+"変数値"+$DebugCount;

	if($DebugPage==1){
		if($DebugCount<$DebugInt[1]){
			$DebugXBasePlus=0;
			$DebugYBasePlus=$DebugYBase+($DebugCount*40);
		}else if($DebugCount<$DebugInt[2]){
			$DebugXBasePlus=$DebugXBase;
			$DebugYBasePlus=$DebugYBase+($DebugCount-$DebugInt[1]+1*40);
		}else if($DebugCount<$DebugInt[3]){
			$DebugXBasePlus=$DebugXBase+(1*200);
			$DebugYBasePlus=$DebugYBase+($DebugCount-$DebugInt[2]+1*40);
		}else if($DebugCount<$DebugInt[4]){
			$DebugXBasePlus=$DebugXBase+(2*200);
			$DebugYBasePlus=$DebugYBase+($DebugCount-$DebugInt[3]+1*40);
		}
	}

	$DebugX1=$DebugXBasePlus;
	$DebugY1=$DebugYBasePlus;
	$DebugX2=$DebugX1+20;
	$DebugY2=$DebugY1+20;

	if($GRSelect){
		SetFont("黑体", 20, FF9933, 000000, 500, RIGHTDOWN);
	}else{
		SetFont("黑体", 20, FFFFFF, 000000, 500, RIGHTDOWN);
	}
	CreateText($DebugTitleNat, 100, $DebugX1, $DebugY1, Auto, Auto, $DebugTitle);

	if($DebugMem!=false){
		SetFont("黑体", 20, F0FF00, 000000, 500, RIGHTDOWN);
	}else{
		SetFont("黑体", 20, 888888, 000000, 500, RIGHTDOWN);
	}
	CreateText($DebugTextNat, 100, $DebugX2, $DebugY2, Auto, Auto, $DebugText);
	CreateText($DebugMemNat, 100, OutRight, 0, Auto, Auto, $DebugMark);
	Move($DebugMemNat, 0, @-30, @0, null, true);
}

//選択肢生成
function DebugSetChoice()
{
	if($DebugCount<$DebugInt[1]){
		$DebugXBasePlus=0;
		$DebugYBasePlus=$DebugYBase2+($DebugCount*40)+10;
	}else if($DebugCount<$DebugInt[2]){
		$DebugXBasePlus=$DebugXBase2;
		$DebugYBasePlus=$DebugYBase2+($DebugCount-$DebugInt[1]+1*40+10);
	}else if($DebugCount<$DebugInt[3]){
		$DebugXBasePlus=$DebugXBase2+(1*200);
		$DebugYBasePlus=$DebugYBase2+($DebugCount-$DebugInt[2]+1*40+10);
	}else if($DebugCount<$DebugInt[4]){
		$DebugXBasePlus=$DebugXBase2+(2*200);
		$DebugYBasePlus=$DebugYBase2+($DebugCount-$DebugInt[3]+1*40+10);
	}

	$DebugX1=$DebugXBasePlus;
	$DebugY1=$DebugYBasePlus;
	$DebugX2=$DebugXBasePlus+120;
	$DebugY2=$DebugYBasePlus;

	$DebugChoiceNat="DebugAdd"+$DebugCount;
	$DebugUsualNat=$DebugChoiceNat+"/MouseUsual/hit";
	$DebugOverNat=$DebugChoiceNat+"/MouseOver/img";
	$DebugClickNat=$DebugChoiceNat+"/MouseClick/img";

	CreateChoice($DebugChoiceNat);
	CreateColor($DebugUsualNat, 55, $DebugX1, $DebugY1, 100, 20, "BLUE");
	CreateColor($DebugOverNat, 55, $DebugX1, $DebugY1, 100, 20, "BLUE");
	CreateColor($DebugClickNat, 55, $DebugX1, $DebugY1, 100, 20, "BLUE");

	$DebugChoiceNat="DebugDis"+$DebugCount;
	$DebugUsualNat=$DebugChoiceNat+"/MouseUsual/hit";
	$DebugOverNat=$DebugChoiceNat+"/MouseOver/img";
	$DebugClickNat=$DebugChoiceNat+"/MouseClick/img";

	CreateChoice($DebugChoiceNat);
	CreateColor($DebugUsualNat, 55, $DebugX2, $DebugY2, 100, 20, "RED");
	CreateColor($DebugOverNat, 55, $DebugX2, $DebugY2, 100, 20, "RED");
	CreateColor($DebugClickNat, 55, $DebugX2, $DebugY2, 100, 20, "RED");

	Request("Debug*/MouseUsual/hit", Erase);
}



function DebugResult()
{
	if($DebugCount==1){$DebugTitle="アナザー好感度";$DebugText="<PRE>$Others_Flag</PRE>=";$DebugMem=$Others_Flag;$GRSelect=false;$DebugResult=false;}
	else if($DebugCount==2){$DebugTitle="村正好感度";$DebugText="<PRE>$Muramasa_Flag</PRE>=";$DebugMem=$Muramasa_Flag;$GRSelect=false;$DebugResult=false;}
	else if($DebugCount==3){$DebugTitle="香奈枝好感度";$DebugText="<PRE>$Kanae_Flag</PRE>=";$DebugMem=$Kanae_Flag;$GRSelect=false;$DebugResult=false;}
	else if($DebugCount==4){$DebugTitle="一条好感度";$DebugText="<PRE>$Ichizyou_Flag</PRE>=";$DebugMem=$Ichizyou_Flag;$GRSelect=false;$DebugResult=false;}
	else if($DebugCount==5){$DebugTitle="一条死亡";$DebugText="<PRE>$Ichizyou_Dead</PRE>=";$DebugMem=$Ichizyou_Dead;$GRSelect=false;$DebugResult=true;}
	else if($DebugCount==6){$DebugTitle="香奈枝死亡";$DebugText="<PRE>$Kanae_Dead</PRE>=";$DebugMem=$Kanae_Dead;$GRSelect=false;$DebugResult=true;}
	else if($DebugCount==7){$DebugTitle="英雄編終了";$DebugText="<PRE>#英雄編終了</PRE>=";$DebugMem=#英雄編終了;$GRSelect=true;$DebugResult=true;}
	else if($DebugCount==8){$DebugTitle="復讐編終了";$DebugText="<PRE>#復讐編終了</PRE>=";$DebugMem=#復讐編終了;$GRSelect=true;$DebugResult=true;}
	else if($DebugCount==9){$DebugTitle="魔王編解放(判定で使用するのはGLOBAL)";$DebugText="<PRE>$魔王編解放</PRE>=";$DebugMem=$魔王編解放;$GRSelect=false;$DebugResult=true;}
	else if($DebugCount==10){$DebugTitle="グレイワンド殺害";$DebugText="<PRE>$グレイワンド殺害</PRE>=";$DebugMem=$グレイワンド殺害;$GRSelect=false;$DebugResult=true;}



	if($DebugResult){
		if($DebugMem){
			$DebugMark="<PRE>true</PRE>";
		}else{
			$DebugMark="<PRE>false</PRE>";
		}
	}else{
		$DebugMark=$DebugMem;
	}
}

function DebugNumber()
{
	if($DebugNumber==1){アナザー好感度();}
	else if($DebugNumber==2){村正好感度();}
	else if($DebugNumber==3){香奈枝好感度();}
	else if($DebugNumber==4){一条好感度();}
	else if($DebugNumber==5){一条死亡();}
	else if($DebugNumber==6){香奈枝死亡();}
	else if($DebugNumber==7){英雄編終了();}
	else if($DebugNumber==8){復讐編終了();}
	else if($DebugNumber==9){魔王編解放();}
	else if($DebugNumber==10){グレイワンド殺害();}

	DebugSetText();
}


function アナザー好感度(){$DebugCount=1;if($DebugPatarn){$Others_Flag+=1;}else{$Others_Flag-=1;}}
function 村正好感度(){$DebugCount=2;if($DebugPatarn){$Muramasa_Flag+=1;}else{$Muramasa_Flag-=1;}}
function 香奈枝好感度(){$DebugCount=3;if($DebugPatarn){$Kanae_Flag+=1;}else{$Kanae_Flag-=1;}}
function 一条好感度(){$DebugCount=4;if($DebugPatarn){$Ichizyou_Flag+=1;}else{$Ichizyou_Flag-=1;}}
function 一条死亡(){$DebugCount=5;if($DebugPatarn){$Ichizyou_Dead=1;$一条死亡=1;}else{$Ichizyou_Dead=0;$一条死亡=0;}}
function 香奈枝死亡(){$DebugCount=6;if($DebugPatarn){$Kanae_Dead=1;$香奈枝死亡=1;}else{$Kanae_Dead=0;$香奈枝死亡=0;}}
function 英雄編終了(){$DebugCount=7;if($DebugPatarn){#英雄編終了=1;}else{#英雄編終了=0;}}
function 復讐編終了(){$DebugCount=8;if($DebugPatarn){#復讐編終了=1;}else{#復讐編終了=0;}}
function 魔王編解放(){$DebugCount=9;if($DebugPatarn){$魔王編解放=1;}else{$魔王編解放=0;}}
function グレイワンド殺害(){$DebugCount=10;if($DebugPatarn){$グレイワンド殺害=1;}else{$グレイワンド殺害=0;}}



















