
//"nss/function.nss"��0_�_ʼ������ץ��ڤ�include��
//"nss/function_stand.nss"��function.nss�ڤ�include��
//"nss/function_cockpit.nss"��function.nss�ڤ�include��

//=============================================================================//
..chapter main
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene function_magiccube.nss_MAIN
{

/*
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		call_scene $MainGameName;
		GameMainSet();
	}
*/

	$SYSTEM_skip_lock = true;

		$MainGameName="@->"+$GameName;
		call_scene $MainGameName;
		GameMainSet();

	$SYSTEM_skip_lock = false;

	//����`�ȥե饰���x�k֫���Τ�GameName
//�~�����
	$SYSTEM_menu_lock = false;
	QuickStart();

	$PreGameName = $GameName;

	if($��������� == true){
	$GameName = "md05_025end.nss";
		$��������� = false;
	}else{
	$GameName = "md05_025gameover.nss";
		$����ꇲ����� = false;
	}

//	$GameCircle = 0;

}

..scene function_magiccube
scene function_magiccube.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	CreateTexture("�·�",150,0,0,"cg/sys/magiccube/������h������`�ֱ���-58.png");
//	CreateTexture("�·�",150,0,0,"cg/sys/magiccube/����ꇥ���`�ֆ��}����.jpg");
	CreateTexture("�x�k�åޥ�",151,46,212,"cg/sys/magiccube/���}�ѥͥ�P.png");

	CreateChoice("Deb");
	CreateTexture("Deb/MouseUsual/img",1500,-40,-15,"cg/sys/magiccube/���}�å���`�֥ܥ���-���`�Щ`����󥻥�.png");
	CreateTexture("Deb/MouseOver/img",1500,-40,-15,"cg/sys/magiccube/���}�å���`�֥ܥ���-���`�Щ`����󥻥�.png");
	CreateTexture("Deb/MouseClick/img",1500,-40,-15,"cg/sys/magiccube/���}�å���`�֥ܥ���-���`�Щ`����󥻥�.png");
	Request("Deb/MouseUsual/img", Erase);
	Request("Deb/MouseOver/img", Erase);
	Request("Deb/MouseClick/img", Erase);

	CreateChoice("Manual");
	CreateTexture("Manual/MouseUsual/img",1500,174,338,"cg/sys/magiccube/�h������-001.png");
	CreateTexture("Manual/MouseOver/img",1500,174,338,"cg/sys/magiccube/�h������-002.png");
	CreateTexture("Manual/MouseClick/img",1500,174,338,"cg/sys/magiccube/�h������-003.png");

	CreateChoice("Answer");
	CreateTexture("Answer/MouseUsual/img",1500,56,460,"cg/sys/magiccube/��𤹤�-001.png");
	CreateTexture("Answer/MouseOver/img",1500,56,460,"cg/sys/magiccube/��𤹤�-002.png");
	CreateTexture("Answer/MouseClick/img",1500,56,460,"cg/sys/magiccube/��𤹤�-003.png");


	CreateChoice("State");
	CreateTexture("State/MouseUsual/img",1500,174,224,"cg/sys/magiccube/״�B�����-001.png");
	CreateTexture("State/MouseOver/img",1500,174,224,"cg/sys/magiccube/״�B�����-002.png");
	CreateTexture("State/MouseClick/img",1500,174,224,"cg/sys/magiccube/״�B�����-003.png");

//Y����
//	$MCSetY1 = 200;
//	$MCSetY2 = 510;
//	$MCSetY3 = 550;
	$MCSetY1 = 218;
	$MCSetY2 = 258;
	$MCSetY3 = 298;
	$MCSetY4 = 338;
	$MCSetY5 = 378;
	$MCSetY6 = 418;

//X����
	$MCSetX1 = 52;
	$MCSetX2 = 92;
	$MCSetX3 = 132;

//	$MCSetX1 = 30;
//	$MCSetX2 = 260;
//	$MCSetX3 = 310;
//	$MCSetX4 = 360;
//	$MCSetX5 = 410;
//	$MCSetX6 = 460;

//���ƤϤ��Y����
	$�ޥ�ĿY1 = 98;
	$�ޥ�ĿY2 = 113;
	$�ޥ�ĿY3 = 128;
	$�ޥ�ĿY4 = 143;
	$�ޥ�ĿY5 = 158;

//���ƤϤ��X����
	$�ޥ�ĿX1 = 154;
	$�ޥ�ĿX2 = 180;
	$�ޥ�ĿX3 = 206;
	$�ޥ�ĿX4 = 232;
	$�ޥ�ĿX5 = 258;

	$�ޥ�ĿX6 = 462;
	$�ޥ�ĿX7 = 488;
	$�ޥ�ĿX8 = 514;
	$�ޥ�ĿX9 = 540;
	$�ޥ�ĿX10 = 566;


//���ƤϤ��Y����

//�����å���å�
	QuickStop();

//�x�k������xy
	CreateChoiceCount(1,62,$MCSetX1,$MCSetY1);
	CreateChoiceCount(2,49,$MCSetX1,$MCSetY2);
	CreateChoiceCount(3,8,$MCSetX1,$MCSetY3);
	CreateChoiceCount(4,55,$MCSetX1,$MCSetY4);
	CreateChoiceCount(5,84,$MCSetX1,$MCSetY5);
	CreateChoiceCount(6,24,$MCSetX1,$MCSetY6);

	CreateChoiceCount(7,9,$MCSetX2,$MCSetY1);
	CreateChoiceCount(8,105,$MCSetX2,$MCSetY2);
	CreateChoiceCount(9,22,$MCSetX2,$MCSetY3);
	CreateChoiceCount(10,35,$MCSetX2,$MCSetY4);
	CreateChoiceCount(11,60,$MCSetX2,$MCSetY5);
	CreateChoiceCount(12,74,$MCSetX2,$MCSetY6);

	CreateChoiceCount(13,41,$MCSetX3,$MCSetY1);
	CreateChoiceCount(14,96,$MCSetX3,$MCSetY2);
	CreateChoiceCount(15,101,$MCSetX3,$MCSetY3);
	CreateChoiceCount(16,46,$MCSetX3,$MCSetY4);
	CreateChoiceCount(17,99,$MCSetX3,$MCSetY5);
	CreateChoiceCount(18,124,$MCSetX3,$MCSetY6);

	Fade("*/*/*",0,0,null,false);
	Fade("*/MouseUsual/*",300,1000,null,true);

//�ޥ�����
//	CreateChoiceCountM(1,173,94);
//	CreateChoiceCountM(2,193,115);
//	CreateChoiceCountM(3,214,135);

//	CreateChoiceCountM(4,153,115);
//	CreateChoiceCountM(5,173,135);
//	CreateChoiceCountM(6,193,156);

//	CreateChoiceCountM(7,133,135);
//	CreateChoiceCountM(8,153,156);
//	CreateChoiceCountM(9,173,176);

//	CreateChoiceCountM(10,387,94);
//	CreateChoiceCountM(11,407,115);
//	CreateChoiceCountM(12,428,135);

//	CreateChoiceCountM(13,367,115);
//	CreateChoiceCountM(14,387,135);
//	CreateChoiceCountM(15,407,156);

//	CreateChoiceCountM(16,347,135);
//	CreateChoiceCountM(17,367,156);
//	CreateChoiceCountM(18,387,176);


//��(-7,-15)
	CreateChoiceCountM(1,$�ޥ�ĿX3,$�ޥ�ĿY1);
	CreateChoiceCountM(2,$�ޥ�ĿX4,$�ޥ�ĿY2);
	CreateChoiceCountM(3,$�ޥ�ĿX5,$�ޥ�ĿY3);

	CreateChoiceCountM(4,$�ޥ�ĿX2,$�ޥ�ĿY2);
	CreateChoiceCountM(5,$�ޥ�ĿX3,$�ޥ�ĿY3);
	CreateChoiceCountM(6,$�ޥ�ĿX4,$�ޥ�ĿY4);

	CreateChoiceCountM(7,$�ޥ�ĿX1,$�ޥ�ĿY3);
	CreateChoiceCountM(8,$�ޥ�ĿX2,$�ޥ�ĿY4);
	CreateChoiceCountM(9,$�ޥ�ĿX3,$�ޥ�ĿY5);

//��(-7,-15)
	CreateChoiceCountM(10,$�ޥ�ĿX8,$�ޥ�ĿY1);
	CreateChoiceCountM(11,$�ޥ�ĿX9,$�ޥ�ĿY2);
	CreateChoiceCountM(12,$�ޥ�ĿX10,$�ޥ�ĿY3);

	CreateChoiceCountM(13,$�ޥ�ĿX7,$�ޥ�ĿY2);
	CreateChoiceCountM(14,$�ޥ�ĿX8,$�ޥ�ĿY3);
	CreateChoiceCountM(15,$�ޥ�ĿX9,$�ޥ�ĿY4);

	CreateChoiceCountM(16,$�ޥ�ĿX6,$�ޥ�ĿY3);
	CreateChoiceCountM(17,$�ޥ�ĿX7,$�ޥ�ĿY4);
	CreateChoiceCountM(18,$�ޥ�ĿX8,$�ޥ�ĿY5);

//	$����ꇺ��ץե饰 = true;
	SoundPlay("@mbgm11",0,1000,true);


	if($����ꇺ��ץե饰==true){To_LevelDwon();}
	else{}

	$Loop_end = true;

	while($Loop_end){

	$SYSTEM_menu_lock = false;
	No_FadeChoiceCountM();

	if($MathNum_01==true){CreateChoiceCountR(1,$�ޥ�ĿX3,$�ޥ�ĿY1);}
	if($MathNum_02==true){CreateChoiceCountR(2,$�ޥ�ĿX4,$�ޥ�ĿY2);}
	if($MathNum_03==true){CreateChoiceCountR(3,$�ޥ�ĿX5,$�ޥ�ĿY3);}
	if($MathNum_04==true){CreateChoiceCountR(4,$�ޥ�ĿX2,$�ޥ�ĿY2);}
	if($MathNum_05==true){CreateChoiceCountR(5,$�ޥ�ĿX3,$�ޥ�ĿY3);}
	if($MathNum_06==true){CreateChoiceCountR(6,$�ޥ�ĿX4,$�ޥ�ĿY4);}
	if($MathNum_07==true){CreateChoiceCountR(7,$�ޥ�ĿX1,$�ޥ�ĿY3);}
	if($MathNum_08==true){CreateChoiceCountR(8,$�ޥ�ĿX2,$�ޥ�ĿY4);}
	if($MathNum_09==true){CreateChoiceCountR(9,$�ޥ�ĿX3,$�ޥ�ĿY5);}
	if($MathNum_10==true){CreateChoiceCountR(10,$�ޥ�ĿX8,$�ޥ�ĿY1);}
	if($MathNum_11==true){CreateChoiceCountR(11,$�ޥ�ĿX9,$�ޥ�ĿY2);}
	if($MathNum_12==true){CreateChoiceCountR(12,$�ޥ�ĿX10,$�ޥ�ĿY3);}
	if($MathNum_13==true){CreateChoiceCountR(13,$�ޥ�ĿX7,$�ޥ�ĿY2);}
	if($MathNum_14==true){CreateChoiceCountR(14,$�ޥ�ĿX8,$�ޥ�ĿY3);}
	if($MathNum_15==true){CreateChoiceCountR(15,$�ޥ�ĿX9,$�ޥ�ĿY4);}
	if($MathNum_16==true){CreateChoiceCountR(16,$�ޥ�ĿX6,$�ޥ�ĿY3);}
	if($MathNum_17==true){CreateChoiceCountR(17,$�ޥ�ĿX7,$�ޥ�ĿY4);}
	if($MathNum_18==true){CreateChoiceCountR(18,$�ޥ�ĿX8,$�ޥ�ĿY5);}

	FadeDelete("�ϱ���",500,true);

		$SYSTEM_r_button_down=false;

		select{
//			if($SYSTEM_r_button_down){Fade("BLK",300,1000,null,false);WaitAction("BLK");Delete("*");return;}
			case Deb{To_Debug();$Answer=true;}
			case Manual{To_Manual();$Answer=true;}
			case Answer{MathAnswer();$Answer=true;SetVolume("@mbgm*", 500, 0, null);}
			case State{OverFadeDelete();Goto_DeleteMath();Statetrun();$Answer=true;}
			case Count_1{Goto_Math();Delete_Select("Count_1");$HNC=62;FadeNum(1);}
			case Count_2{Goto_Math();Delete_Select("Count_2");$HNC=49;FadeNum(2);}
			case Count_3{Goto_Math();Delete_Select("Count_3");$HNC=8;FadeNum(3);}
			case Count_4{Goto_Math();Delete_Select("Count_4");$HNC=55;FadeNum(4);}
			case Count_5{Goto_Math();Delete_Select("Count_5");$HNC=84;FadeNum(5);}
			case Count_6{Goto_Math();Delete_Select("Count_6");$HNC=24;FadeNum(6);}
			case Count_7{Goto_Math();Delete_Select("Count_7");$HNC=9;FadeNum(7);}
			case Count_8{Goto_Math();Delete_Select("Count_8");$HNC=105;FadeNum(8);}
			case Count_9{Goto_Math();Delete_Select("Count_9");$HNC=22;FadeNum(9);}
			case Count_10{Goto_Math();Delete_Select("Count_10");$HNC=35;FadeNum(10);}
			case Count_11{Goto_Math();Delete_Select("Count_11");$HNC=60;FadeNum(11);}
			case Count_12{Goto_Math();Delete_Select("Count_12");$HNC=74;FadeNum(12);}
			case Count_13{Goto_Math();Delete_Select("Count_13");$HNC=41;FadeNum(13);}
			case Count_14{Goto_Math();Delete_Select("Count_14");$HNC=96;FadeNum(14);}
			case Count_15{Goto_Math();Delete_Select("Count_15");$HNC=101;FadeNum(15);}
			case Count_16{Goto_Math();Delete_Select("Count_16");$HNC=46;FadeNum(16);}
			case Count_17{Goto_Math();Delete_Select("Count_17");$HNC=99;FadeNum(17);}
			case Count_18{Goto_Math();Delete_Select("Count_18");$HNC=124;FadeNum(18);}
			if($MathNum_01==true){case MathCountR_1{$No_route=true;CreateChoiceCount2($SN1);Math_Res(1);CreateChoiceCountM(1,$�ޥ�ĿX3,$�ޥ�ĿY1);$MathNum_01=false;$SN1=0;}}
			if($MathNum_02==true){case MathCountR_2{$No_route=true;CreateChoiceCount2($SN2);Math_Res(2);CreateChoiceCountM(2,$�ޥ�ĿX4,$�ޥ�ĿY2);$MathNum_02=false;$SN2=0;}}
			if($MathNum_03==true){case MathCountR_3{$No_route=true;CreateChoiceCount2($SN3);Math_Res(3);CreateChoiceCountM(3,$�ޥ�ĿX5,$�ޥ�ĿY3);$MathNum_03=false;$SN3=0;}}
			if($MathNum_04==true){case MathCountR_4{$No_route=true;CreateChoiceCount2($SN4);Math_Res(4);CreateChoiceCountM(4,$�ޥ�ĿX2,$�ޥ�ĿY2);$MathNum_04=false;$SN4=0;}}
			if($MathNum_05==true){case MathCountR_5{$No_route=true;CreateChoiceCount2($SN5);Math_Res(5);CreateChoiceCountM(5,$�ޥ�ĿX3,$�ޥ�ĿY3);$MathNum_05=false;$SN5=0;}}
			if($MathNum_06==true){case MathCountR_6{$No_route=true;CreateChoiceCount2($SN6);Math_Res(6);CreateChoiceCountM(6,$�ޥ�ĿX4,$�ޥ�ĿY4);$MathNum_06=false;$SN6=0;}}
			if($MathNum_07==true){case MathCountR_7{$No_route=true;CreateChoiceCount2($SN7);Math_Res(7);CreateChoiceCountM(7,$�ޥ�ĿX1,$�ޥ�ĿY3);$MathNum_07=false;$SN7=0;}}
			if($MathNum_08==true){case MathCountR_8{$No_route=true;CreateChoiceCount2($SN8);Math_Res(8);CreateChoiceCountM(8,$�ޥ�ĿX2,$�ޥ�ĿY4);$MathNum_08=false;$SN8=0;}}
			if($MathNum_09==true){case MathCountR_9{$No_route=true;CreateChoiceCount2($SN9);Math_Res(9);CreateChoiceCountM(9,$�ޥ�ĿX3,$�ޥ�ĿY5);$MathNum_09=false;$SN9=0;}}
			if($MathNum_10==true){case MathCountR_10{$No_route=true;CreateChoiceCount2($SN10);Math_Res(10);CreateChoiceCountM(10,$�ޥ�ĿX8,$�ޥ�ĿY1);$MathNum_10=false;$SN10=0;}}
			if($MathNum_11==true){case MathCountR_11{$No_route=true;CreateChoiceCount2($SN11);Math_Res(11);CreateChoiceCountM(11,$�ޥ�ĿX9,$�ޥ�ĿY2);$MathNum_11=false;$SN11=0;}}
			if($MathNum_12==true){case MathCountR_12{$No_route=true;CreateChoiceCount2($SN12);Math_Res(12);CreateChoiceCountM(12,$�ޥ�ĿX10,$�ޥ�ĿY3);$MathNum_12=false;$SN12=0;}}
			if($MathNum_13==true){case MathCountR_13{$No_route=true;CreateChoiceCount2($SN13);Math_Res(13);CreateChoiceCountM(13,$�ޥ�ĿX7,$�ޥ�ĿY2);$MathNum_13=false;$SN13=0;}}
			if($MathNum_14==true){case MathCountR_14{$No_route=true;CreateChoiceCount2($SN14);Math_Res(14);CreateChoiceCountM(14,$�ޥ�ĿX8,$�ޥ�ĿY3);$MathNum_14=false;$SN14=0;}}
			if($MathNum_15==true){case MathCountR_15{$No_route=true;CreateChoiceCount2($SN15);Math_Res(15);CreateChoiceCountM(15,$�ޥ�ĿX9,$�ޥ�ĿY4);$MathNum_15=false;$SN15=0;}}
			if($MathNum_16==true){case MathCountR_16{$No_route=true;CreateChoiceCount2($SN16);Math_Res(16);CreateChoiceCountM(16,$�ޥ�ĿX6,$�ޥ�ĿY3);$MathNum_16=false;$SN16=0;}}
			if($MathNum_17==true){case MathCountR_17{$No_route=true;CreateChoiceCount2($SN17);Math_Res(17);CreateChoiceCountM(17,$�ޥ�ĿX7,$�ޥ�ĿY4);$MathNum_17=false;$SN17=0;}}
			if($MathNum_18==true){case MathCountR_18{$No_route=true;CreateChoiceCount2($SN18);Math_Res(18);CreateChoiceCountM(18,$�ޥ�ĿX8,$�ޥ�ĿY5);$MathNum_18=false;$SN18=0;}}
		}

	$SYSTEM_menu_lock = true;

	if($No_route==false){
		if($Answer==false){
//				FadeChoiceCountM();
				Fade("MathCount_*/MouseUsual/img", 300, 1000, null, true);
			select{
				if($SYSTEM_r_button_down){OverFadeDelete();Goto_DeleteMath();$out=true;CreateChoiceCount2($HNC);break;}
					if($out==false){
					case MathCount_1{OverFadeDelete();Delete_Select("MathCount_1");SetMath(1);Goto_DeleteMath();}
					case MathCount_2{OverFadeDelete();Delete_Select("MathCount_2");SetMath(2);Goto_DeleteMath();}
					case MathCount_3{OverFadeDelete();Delete_Select("MathCount_3");SetMath(3);Goto_DeleteMath();}
					case MathCount_4{OverFadeDelete();Delete_Select("MathCount_4");SetMath(4);Goto_DeleteMath();}
					case MathCount_5{OverFadeDelete();Delete_Select("MathCount_5");SetMath(5);Goto_DeleteMath();}
					case MathCount_6{OverFadeDelete();Delete_Select("MathCount_6");SetMath(6);Goto_DeleteMath();}
					case MathCount_7{OverFadeDelete();Delete_Select("MathCount_7");SetMath(7);Goto_DeleteMath();}
					case MathCount_8{OverFadeDelete();Delete_Select("MathCount_8");SetMath(8);Goto_DeleteMath();}
					case MathCount_9{OverFadeDelete();Delete_Select("MathCount_9");SetMath(9);Goto_DeleteMath();}
					case MathCount_10{OverFadeDelete();Delete_Select("MathCount_10");SetMath(10);Goto_DeleteMath();}
					case MathCount_11{OverFadeDelete();Delete_Select("MathCount_11");SetMath(11);Goto_DeleteMath();}
					case MathCount_12{OverFadeDelete();Delete_Select("MathCount_12");SetMath(12);Goto_DeleteMath();}
					case MathCount_13{OverFadeDelete();Delete_Select("MathCount_13");SetMath(13);Goto_DeleteMath();}
					case MathCount_14{OverFadeDelete();Delete_Select("MathCount_14");SetMath(14);Goto_DeleteMath();}
					case MathCount_15{OverFadeDelete();Delete_Select("MathCount_15");SetMath(15);Goto_DeleteMath();}
					case MathCount_16{OverFadeDelete();Delete_Select("MathCount_16");SetMath(16);Goto_DeleteMath();}
					case MathCount_17{OverFadeDelete();Delete_Select("MathCount_17");SetMath(17);Goto_DeleteMath();}
					case MathCount_18{OverFadeDelete();Delete_Select("MathCount_18");SetMath(18);Goto_DeleteMath();}
					}else{
					$out=false;
					}
			}//select_end
			Fade("MathCount_*/MouseOver/img", 300, 0, null, false);
			Fade("MathCount_*/MouseUsual/img", 300, 0, null, false);
		}else{$Answer=false;}//if(answer)_end
	}else{
		$No_route=false;
		No_FadeChoiceCountM();
	}

	}
	}

}

function Statetrun(){

	$Statetrun_Def = true;

	if(!$SN1){}else{CreateChoiceCount2($SN1);Math_Res(1);CreateChoiceCountM(1,$�ޥ�ĿX3,$�ޥ�ĿY1);$MathNum_01=false;}
	if(!$SN2){}else{CreateChoiceCount2($SN2);Math_Res(2);CreateChoiceCountM(2,$�ޥ�ĿX4,$�ޥ�ĿY2);$MathNum_02=false;}
	if(!$SN3){}else{if($����ꇺ��ץե饰==true){}else{CreateChoiceCount2($SN3);Math_Res(3);CreateChoiceCountM(3,$�ޥ�ĿX5,$�ޥ�ĿY3);$MathNum_03=false;}}
	if(!$SN4){}else{CreateChoiceCount2($SN4);Math_Res(4);CreateChoiceCountM(4,$�ޥ�ĿX2,$�ޥ�ĿY2);$MathNum_04=false;}
	if(!$SN5){}else{CreateChoiceCount2($SN5);Math_Res(5);CreateChoiceCountM(5,$�ޥ�ĿX3,$�ޥ�ĿY3);$MathNum_05=false;}
	if(!$SN6){}else{CreateChoiceCount2($SN6);Math_Res(6);CreateChoiceCountM(6,$�ޥ�ĿX4,$�ޥ�ĿY4);$MathNum_06=false;}
	if(!$SN7){}else{if($����ꇺ��ץե饰==true){}else{CreateChoiceCount2($SN7);Math_Res(7);CreateChoiceCountM(7,$�ޥ�ĿX1,$�ޥ�ĿY3);$MathNum_07=false;}}
	if(!$SN8){}else{CreateChoiceCount2($SN8);Math_Res(8);CreateChoiceCountM(8,$�ޥ�ĿX2,$�ޥ�ĿY4);$MathNum_08=false;}
	if(!$SN9){}else{if($����ꇺ��ץե饰==true){}else{CreateChoiceCount2($SN9);Math_Res(9);CreateChoiceCountM(9,$�ޥ�ĿX3,$�ޥ�ĿY5);$MathNum_09=false;}}
	if(!$SN10){}else{CreateChoiceCount2($SN10);Math_Res(10);CreateChoiceCountM(10,$�ޥ�ĿX8,$�ޥ�ĿY1);$MathNum_10=false;}
	if(!$SN11){}else{CreateChoiceCount2($SN11);Math_Res(11);CreateChoiceCountM(11,$�ޥ�ĿX9,$�ޥ�ĿY2);$MathNum_11=false;}
	if(!$SN12){}else{if($����ꇺ��ץե饰==true){}else{CreateChoiceCount2($SN12);Math_Res(12);CreateChoiceCountM(12,$�ޥ�ĿX10,$�ޥ�ĿY3);$MathNum_12=false;}}
	if(!$SN13){}else{CreateChoiceCount2($SN13);Math_Res(13);CreateChoiceCountM(13,$�ޥ�ĿX7,$�ޥ�ĿY2);$MathNum_13=false;}
	if(!$SN14){}else{CreateChoiceCount2($SN14);Math_Res(14);CreateChoiceCountM(14,$�ޥ�ĿX8,$�ޥ�ĿY3);$MathNum_14=false;}
	if(!$SN15){}else{CreateChoiceCount2($SN15);Math_Res(15);CreateChoiceCountM(15,$�ޥ�ĿX9,$�ޥ�ĿY4);$MathNum_15=false;}
	if(!$SN16){}else{if($����ꇺ��ץե饰==true){}else{CreateChoiceCount2($SN16);Math_Res(16);CreateChoiceCountM(16,$�ޥ�ĿX6,$�ޥ�ĿY3);$MathNum_16=false;}}
	if(!$SN17){}else{CreateChoiceCount2($SN17);Math_Res(17);CreateChoiceCountM(17,$�ޥ�ĿX7,$�ޥ�ĿY4);$MathNum_17=false;}
	if(!$SN18){}else{if($����ꇺ��ץե饰==true){}else{CreateChoiceCount2($SN18);Math_Res(18);CreateChoiceCountM(18,$�ޥ�ĿX8,$�ޥ�ĿY5);$MathNum_18=false;}}

	$SN1=0;
	$SN2=0;
	if($����ꇺ��ץե饰==true){}else{$SN3=0;}
	$SN4=0;
	$SN5=0;
	$SN6=0;
	if($����ꇺ��ץե饰==true){}else{$SN7=0;}
	$SN8=0;
	if($����ꇺ��ץե饰==true){}else{$SN9=0;}
	$SN10=0;
	$SN11=0;
	if($����ꇺ��ץե饰==true){}else{$SN12=0;}
	$SN13=0;
	$SN14=0;
	$SN15=0;
	if($����ꇺ��ץե饰==true){}else{$SN16=0;}
	$SN17=0;
	if($����ꇺ��ץե饰==true){}else{$SN18=0;}

	$Statetrun_Def = false;

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
function To_LevelDwon(){

	Delete_Select("Count_4");
	Delete_Select("Count_5");
	Delete_Select("Count_10");
	Delete_Select("Count_14");
	Delete_Select("Count_15");
	Delete_Select("Count_16");


$HNC=84;
	OverFadeDelete();Delete_Select("MathCount_3");SetMath(3);
	$MathNum_03 = false;
	Wait(10);

$HNC=46;
	OverFadeDelete();Delete_Select("MathCount_7");SetMath(7);
	$MathNum_07 = false;
	Wait(10);


$HNC=101;
	OverFadeDelete();Delete_Select("MathCount_9");SetMath(9);
	$MathNum_09 = false;
	Wait(10);

$HNC=96;
	OverFadeDelete();Delete_Select("MathCount_12");SetMath(12);
	$MathNum_12 = false;
	Wait(10);


$HNC=55;
	OverFadeDelete();Delete_Select("MathCount_16");SetMath(16);
	$MathNum_16 = false;
	Wait(10);

$HNC=35;
	OverFadeDelete();Delete_Select("MathCount_18");SetMath(18);
	$MathNum_18 = false;


}




//??????????????????????????????????????//
function To_Debug(){

	Delete_Select("Count_1");
	Delete_Select("Count_2");
	Delete_Select("Count_3");
	Delete_Select("Count_4");
	Delete_Select("Count_5");
	Delete_Select("Count_6");
	Delete_Select("Count_7");
	Delete_Select("Count_8");
	Delete_Select("Count_9");
	Delete_Select("Count_10");
	Delete_Select("Count_11");
	Delete_Select("Count_12");
	Delete_Select("Count_13");
	Delete_Select("Count_14");
	Delete_Select("Count_15");
	Delete_Select("Count_16");
	Delete_Select("Count_17");
	Delete_Select("Count_18");


$HNC=41;
	OverFadeDelete();Delete_Select("MathCount_1");SetMath(1);
	Wait(10);
$HNC=124;
	OverFadeDelete();Delete_Select("MathCount_2");SetMath(2);
	Wait(10);
$HNC=84;
	OverFadeDelete();Delete_Select("MathCount_3");SetMath(3);
	Wait(10);
$HNC=99;
	OverFadeDelete();Delete_Select("MathCount_4");SetMath(4);
	Wait(10);
$HNC=24;
	OverFadeDelete();Delete_Select("MathCount_5");SetMath(5);
	Wait(10);
$HNC=60;
	OverFadeDelete();Delete_Select("MathCount_6");SetMath(6);
	Wait(10);
$HNC=46;
	OverFadeDelete();Delete_Select("MathCount_7");SetMath(7);
	Wait(10);
$HNC=22;
	OverFadeDelete();Delete_Select("MathCount_8");SetMath(8);
	Wait(10);
$HNC=101;
	OverFadeDelete();Delete_Select("MathCount_9");SetMath(9);
	Wait(10);
$HNC=105;
	OverFadeDelete();Delete_Select("MathCount_10");SetMath(10);
	Wait(10);
$HNC=8;
	OverFadeDelete();Delete_Select("MathCount_11");SetMath(11);
	Wait(10);
$HNC=96;
	OverFadeDelete();Delete_Select("MathCount_12");SetMath(12);
	Wait(10);
$HNC=9;
	OverFadeDelete();Delete_Select("MathCount_13");SetMath(13);
	Wait(10);
$HNC=62;
	OverFadeDelete();Delete_Select("MathCount_14");SetMath(14);
	Wait(10);
$HNC=74;
	OverFadeDelete();Delete_Select("MathCount_15");SetMath(15);
	Wait(10);
$HNC=55;
	OverFadeDelete();Delete_Select("MathCount_16");SetMath(16);
	Wait(10);
$HNC=49;
	OverFadeDelete();Delete_Select("MathCount_17");SetMath(17);
	Wait(10);
$HNC=35;
	OverFadeDelete();Delete_Select("MathCount_18");SetMath(18);


}


/*===========================================================*/
.//���������
/*===========================================================*/
.//���\Ļ��
..//Goto_Math
function Goto_Math(){

	CreateColor("Black_01", 1900, 0, 0, 1024, 576, "Black");
	Fade("Black_01", 0, 0, null, true);
	Fade("Black_01", 500, 500, null, true);
	SetAlias("Black_01","Black_01");

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//Goto_DeleteMath
function Goto_DeleteMath(){

	Fade("Black_01", 300, 0, null, true);
	Delete("Black_01");
}

function Delete_Select($Count){

	Delete($Count);

	$Count = "@"+$Count;
	Delete($Count);

}

function To_Manual(){

	$SYSTEM_menu_lock = true;
	CreateColor("black001", 18000, 0, 0, 1024, 576, "Black");
	Fade("black001", 0, 0, null, true);
	Fade("black001", 500, 500, null, true);

	SetFont("����", 20, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("�ƥ����ȣ�", 18001, 50, 50, 700, 500, "����Ϸ˵����");
	Fade("�ƥ����ȣ�", 0, 0, null, true);
	CreateText("�ƥ����ȣ�", 18001, 70, 80, 700, 500, "��ν�����ĵ��ͣ���ָ���⳽����ǿ����");
	Fade("�ƥ����ȣ�", 0, 0, null, true);

	CreateText("�ƥ����ȣ�", 18001, 70, 110, 700, 500, "��ˣ���Ҫ�ڴ�������ռ������볽���İ�����");
	Fade("�ƥ����ȣ�", 0, 0, null, true);
	CreateText("�ƥ����ȣ�", 18001, 70, 140, 700, 500, "����Ҫ�������ֳɣ����������ࡣ");
	Fade("�ƥ����ȣ�", 0, 0, null, true);
	CreateText("�ƥ����ȣ�", 18001, 70, 170, 700, 500, "ʹ������һֱ�ߡ���һ�Խ�����ӵ��ͬ�ȵ�ǿ����");
	Fade("�ƥ����ȣ�", 0, 0, null, true);
	SetFont("����", 20, #FFFF00, 000000, MEDIUM, RIGHTDOWN);
	CreateText("�ƥ����ȣ�", 18001, 70, 200, 700, 500, "������Ƶ������ϲ�����֮��");
	Fade("�ƥ����ȣ�", 0, 0, null, true);
	CreateText("�ƥ����ȣ�", 18001, 70, 230, 700, 500, "ֻҪ�ٽ�����Ƶ������ϲ���������ѡ������֣�");
	Fade("�ƥ����ȣ�", 0, 0, null, true);
	CreateText("�ƥ����ȣ�", 18001, 70, 260, 700, 500, "�ͻ�����֮ǰѡ��ĸ����");
	Fade("�ƥ����ȣ�", 0, 0, null, true);
	CreateText("�ƥ����ȣ�", 18001, 70, 290, 700, 500, "�����е��������ɽ�����֮��");
	Fade("�ƥ����ȣ�", 0, 0, null, true);
	CreateText("�ƥ����ȣ���", 18001, 70, 320, 700, 500, "�뵥������𡻡�");
	Fade("�ƥ����ȣ���", 0, 0, null, true);

	Request("�ƥ�����*", NoLog);
	Request("�ƥ�����*", PushText);

	Fade("�ƥ�����*", 500, 1000, null, true);
��
	WaitKey();

	Fade("�ƥ�����*", 100, 0, null, true);
	Fade("black001", 500, 0, null, true);
	Delete("black001");
	Delete("�ƥ�����*");
	$SYSTEM_menu_lock = false;

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
.//���x�k�ᡢ�����
..//FadeNum
function FadeNum($FadeSetN){

	if($FadeSetN==1){CreateTexture("Over01", 2001, $MCSetX1,$MCSetY1, "cg/sys/magiccube/�ѥͥ�����/62-003.png");}
	else if($FadeSetN==2){CreateTexture("Over01", 2001, $MCSetX1,$MCSetY2, "cg/sys/magiccube/�ѥͥ�����/49-003.png");}
	else if($FadeSetN==3){CreateTexture("Over01", 2001, $MCSetX1,$MCSetY3, "cg/sys/magiccube/�ѥͥ�����/8-003.png");}
	else if($FadeSetN==4){CreateTexture("Over01", 2001, $MCSetX1,$MCSetY4, "cg/sys/magiccube/�ѥͥ�����/55-003.png");}
	else if($FadeSetN==5){CreateTexture("Over01", 2001, $MCSetX1,$MCSetY5, "cg/sys/magiccube/�ѥͥ�����/84-003.png");}
	else if($FadeSetN==6){CreateTexture("Over01", 2001, $MCSetX1,$MCSetY6, "cg/sys/magiccube/�ѥͥ�����/24-003.png");}
	else if($FadeSetN==7){CreateTexture("Over01", 2001, $MCSetX2,$MCSetY1, "cg/sys/magiccube/�ѥͥ�����/9-003.png");}
	else if($FadeSetN==8){CreateTexture("Over01", 2001, $MCSetX2,$MCSetY2, "cg/sys/magiccube/�ѥͥ�����/105-003.png");}
	else if($FadeSetN==9){CreateTexture("Over01", 2001, $MCSetX2,$MCSetY3, "cg/sys/magiccube/�ѥͥ�����/22-003.png");}
	else if($FadeSetN==10){CreateTexture("Over01", 2001, $MCSetX2,$MCSetY4, "cg/sys/magiccube/�ѥͥ�����/35-003.png");}
	else if($FadeSetN==11){CreateTexture("Over01", 2001, $MCSetX2,$MCSetY5, "cg/sys/magiccube/�ѥͥ�����/60-003.png");}
	else if($FadeSetN==12){CreateTexture("Over01", 2001, $MCSetX2,$MCSetY6, "cg/sys/magiccube/�ѥͥ�����/74-003.png");}
	else if($FadeSetN==13){CreateTexture("Over01", 2001, $MCSetX3,$MCSetY1, "cg/sys/magiccube/�ѥͥ�����/41-003.png");}
	else if($FadeSetN==14){CreateTexture("Over01", 2001, $MCSetX3,$MCSetY2, "cg/sys/magiccube/�ѥͥ�����/96-003.png");}
	else if($FadeSetN==15){CreateTexture("Over01", 2001, $MCSetX3,$MCSetY3, "cg/sys/magiccube/�ѥͥ�����/101-003.png");}
	else if($FadeSetN==16){CreateTexture("Over01", 2001, $MCSetX3,$MCSetY4, "cg/sys/magiccube/�ѥͥ�����/46-003.png");}
	else if($FadeSetN==17){CreateTexture("Over01", 2001, $MCSetX3,$MCSetY5, "cg/sys/magiccube/�ѥͥ�����/99-003.png");}
	else if($FadeSetN==18){CreateTexture("Over01", 2001, $MCSetX3,$MCSetY6, "cg/sys/magiccube/�ѥͥ�����/124-003.png");}

	SetAlias("Over01","Over01");

	Fade("Over01", 0, 0, null, true);

	CreateProcess("OverFade", 150, 0, 0, "OverFade");
	Request("OverFade", Start);
	SetAlias("OverFade","OverFade");


}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//OverFade(�ץ���)
function OverFade(){

	while(1){
		Fade("@Over01",500,500, null, true);
		Fade("@Over01",500,1000, null, true);
		}




}


.//�����ե�å�����
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//OverFadeDelete
function OverGrand(){


	CreateTexture("Overpict", 1350, Center, Middle, "cg/sys/magiccube/�ѥͥ�����/���}����over.png");
	Fade("Overpict", 0, 0, null, true);

//	CreateProcess("OverGrand", 150, 0, 0, "OverGrandProcess");
//	Request("OverGrand", Start);
//	SetAlias("OverGrand","OverGrand");
	SetAlias("Overpict","Overpict");
	Fade("@Overpict",1000,200, null, false);

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//OverGrandProcess
function OverGrandProcess(){

	while(1){
		Fade("@Overpict",5000,200, null, true);
		Fade("@Overpict",5000,0, null, true);
		}

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//OverFadeDelete
function OverFadeDelete(){

	Request("@OverFade", Stop);
	Request("@OverFade", Disused);
	Fade("@Over01", 300, 0, null, true);
	Request("@Over01", Disused);

}


.//���ش𤹤���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//OverMathAnswer()
function MathAnswer(){

	if($SN1==41&&$SN2==124&&$SN3==84&&$SN4==99&&$SN5==24&&$SN6==60&&$SN7==46&&$SN8==22&&$SN9==101&&$SN10==105&&$SN11==8&&$SN12==96&&$SN13==9&&$SN14==62&&$SN15==74&&$SN16==55&&$SN17==49&&$SN18==35){
		$Loop_end = false;
	CreateColor("Whiteout", 20000, 0, 0, 1024, 576, "White");
	Fade("Whiteout", 0, 0, null, true);
	SetAlias("Whiteout","Whiteout");
	Request("Whiteout", Lock);
	Fade("Whiteout", 500, 1000, null, true);
	Delete("*");
	Request("Whiteout", UnLock);
	Fade("Whiteout", 500, 0, null, true);
	Delete("Whiteout");

	$��������� = true;

	}else{
		$Loop_end = false;

	CreateColor("Whiteout", 20000, 0, 0, 1024, 576, "White");
	Fade("Whiteout", 0, 0, null, true);
	SetAlias("Whiteout","Whiteout");
	Request("Whiteout", Lock);
	Fade("Whiteout", 500, 1000, null, true);
	Delete("*");
	Request("Whiteout", UnLock);
	Fade("Whiteout", 500, 0, null, true);
	Delete("Whiteout");

	$����ꇲ����� = true;

	}
}


.//���x�k���֤�ޥ����軭��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//SetMath($MathSetN)
function SetMath($MathSetN){

//�����O�����ʥå�����
	$SetMathD = "cg/sys/magiccube/����`������z������/"+$HNC+".png";

//���������������Єe(6,7)
	if($MathSetN==1){CreateTexture("SetNum1",13000,$�ޥ�ĿX3,$�ޥ�ĿY1,$SetMathD);SetAlias("SetNum1","SetNum1");$SN1=$HNC;$MathNum_01=true;}
	else if($MathSetN == 2){CreateTexture("SetNum2",13000,$�ޥ�ĿX4,$�ޥ�ĿY2,$SetMathD);SetAlias("SetNum2","SetNum2");$SN2=$HNC;$MathNum_02=true;}
	else if($MathSetN == 3){CreateTexture("SetNum3",13000,$�ޥ�ĿX5,$�ޥ�ĿY3,$SetMathD);SetAlias("SetNum3","SetNum3");$SN3=$HNC;$MathNum_03=true;}
	else if($MathSetN == 4){CreateTexture("SetNum4",13000,$�ޥ�ĿX2,$�ޥ�ĿY2,$SetMathD);SetAlias("SetNum4","SetNum4");$SN4=$HNC;$MathNum_04=true;}
	else if($MathSetN == 5){CreateTexture("SetNum5",13000,$�ޥ�ĿX3,$�ޥ�ĿY3,$SetMathD);SetAlias("SetNum5","SetNum5");$SN5=$HNC;$MathNum_05=true;}
	else if($MathSetN == 6){CreateTexture("SetNum6",13000,$�ޥ�ĿX4,$�ޥ�ĿY4,$SetMathD);SetAlias("SetNum6","SetNum6");$SN6=$HNC;$MathNum_06=true;}
	else if($MathSetN == 7){CreateTexture("SetNum7",13000,$�ޥ�ĿX1,$�ޥ�ĿY3,$SetMathD);SetAlias("SetNum7","SetNum7");$SN7=$HNC;$MathNum_07=true;}
	else if($MathSetN == 8){CreateTexture("SetNum8",13000,$�ޥ�ĿX2,$�ޥ�ĿY4,$SetMathD);SetAlias("SetNum8","SetNum8");$SN8=$HNC;$MathNum_08=true;}
	else if($MathSetN == 9){CreateTexture("SetNum9",13000,$�ޥ�ĿX3,$�ޥ�ĿY5,$SetMathD);SetAlias("SetNum9","SetNum9");$SN9=$HNC;$MathNum_09=true;}
	else if($MathSetN == 10){CreateTexture("SetNum10",13000,$�ޥ�ĿX8,$�ޥ�ĿY1,$SetMathD);SetAlias("SetNum10","SetNum10");$SN10=$HNC;$MathNum_10=true;}
	else if($MathSetN == 11){CreateTexture("SetNum11",13000,$�ޥ�ĿX9,$�ޥ�ĿY2,$SetMathD);SetAlias("SetNum11","SetNum11");$SN11=$HNC;$MathNum_11=true;}
	else if($MathSetN == 12){CreateTexture("SetNum12",13000,$�ޥ�ĿX10,$�ޥ�ĿY3,$SetMathD);SetAlias("SetNum12","SetNum12");$SN12=$HNC;$MathNum_12=true;}
	else if($MathSetN == 13){CreateTexture("SetNum13",13000,$�ޥ�ĿX7,$�ޥ�ĿY2,$SetMathD);SetAlias("SetNum13","SetNum13");$SN13=$HNC;$MathNum_13=true;}
	else if($MathSetN == 14){CreateTexture("SetNum14",13000,$�ޥ�ĿX8,$�ޥ�ĿY3,$SetMathD);SetAlias("SetNum14","SetNum14");$SN14=$HNC;$MathNum_14=true;}
	else if($MathSetN == 15){CreateTexture("SetNum15",13000,$�ޥ�ĿX9,$�ޥ�ĿY4,$SetMathD);SetAlias("SetNum15","SetNum15");$SN15=$HNC;$MathNum_15=true;}
	else if($MathSetN == 16){CreateTexture("SetNum16",13000,$�ޥ�ĿX6,$�ޥ�ĿY3,$SetMathD);SetAlias("SetNum16","SetNum16");$SN16=$HNC;$MathNum_16=true;}
	else if($MathSetN == 17){CreateTexture("SetNum17",13000,$�ޥ�ĿX7,$�ޥ�ĿY4,$SetMathD);SetAlias("SetNum17","SetNum17");$SN17=$HNC;$MathNum_17=true;}
	else if($MathSetN == 18){CreateTexture("SetNum18",13000,$�ޥ�ĿX8,$�ޥ�ĿY5,$SetMathD);SetAlias("SetNum18","SetNum18");$SN18=$HNC;$MathNum_18=true;}

//λ���{����
/*
	CreateTexture("ML2",14000,530,73,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML3",14000,560,73,"cg/MagicCube/Math01_08.png");

	CreateTexture("ML4",14000,500,102,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML5",14000,530,102,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML6",14000,560,102,"cg/MagicCube/Math01_08.png");

	CreateTexture("ML7",14000,500,131,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML8",14000,530,131,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML9",14000,560,131,"cg/MagicCube/Math01_08.png");

	CreateTexture("ML10",14000,660,73,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML11",14000,690,73,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML12",14000,720,73,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML13",14000,660,102,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML14",14000,690,102,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML15",14000,720,102,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML16",14000,660,131,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML17",14000,690,131,"cg/MagicCube/Math01_08.png");
	CreateTexture("ML18",14000,720,131,"cg/MagicCube/Math01_08.png");
*/

}

.//���ޥ����軭�������֤�������H�΄I��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//Math_Res
function Math_Res($Math_Res){

	Fade("@$CCnat/*/*",0,0,null,false);
	Fade("@$CCnat/MouseUsual/*",0,1000,null,false);
	$Math_Nat= "@SetNum"+$Math_Res;

	if($Statetrun_Def == true){Fade("$Math_Nat", 0, 0, null, true);}
	else{Fade("$Math_Nat", 300, 0, null, true);}
	$SNN= "$SN"+$Math_Res;
	$SNN=0;

}


.//�������x�k�É���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//CreateChoiceCount
function CreateChoiceCount($CCi,$CCC,$CCCX,$CCCY){

	$CCnat = "Count_"+$CCi;

	CreateChoice($CCnat);

	$CreateCC1 = $CCnat+"/MouseUsual/img_Num";
	$CreateCC2 = $CCnat+"/MouseOver/img_Num";
	$CreateCC3 = $CCnat+"/MouseClick/img_Num";

	$CreateCN1 = "cg/sys/magiccube/�ѥͥ�����/"+$CCC+"-001.png";
	$CreateCN2 = "cg/sys/magiccube/�ѥͥ�����/"+$CCC+"-002.png";
	$CreateCN3 = "cg/sys/magiccube/�ѥͥ�����/"+$CCC+"-003.png";


	CreateTexture($CreateCC1,1600,$CCCX,$CCCY,$CreateCN1);
	CreateTexture($CreateCC2,1600,$CCCX,$CCCY,$CreateCN2);
	CreateTexture($CreateCC3,1600,$CCCX,$CCCY,$CreateCN3);
	SetAlias($CCnat,$CCnat);

}

.//���x�k��������x�k��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//CreateChoiceCount2
function CreateChoiceCount2($CCC){

	if($CCC==62){$CCi=1;$CCCX2=$MCSetX1;$CCCY2=$MCSetY1;}
	else if($CCC==49){$CCi=2;$CCCX2=$MCSetX1;$CCCY2=$MCSetY2;}
	else if($CCC==8){$CCi=3;$CCCX2=$MCSetX1;$CCCY2=$MCSetY3;}
	else if($CCC==55){$CCi=4;$CCCX2=$MCSetX1;$CCCY2=$MCSetY4;}
	else if($CCC==84){$CCi=5;$CCCX2=$MCSetX1;$CCCY2=$MCSetY5;}
	else if($CCC==24){$CCi=6;$CCCX2=$MCSetX1;$CCCY2=$MCSetY6;}
	else if($CCC==9){$CCi=7;$CCCX2=$MCSetX2;$CCCY2=$MCSetY1;}
	else if($CCC==105){$CCi=8;$CCCX2=$MCSetX2;$CCCY2=$MCSetY2;}
	else if($CCC==22){$CCi=9;$CCCX2=$MCSetX2;$CCCY2=$MCSetY3;}
	else if($CCC==35){$CCi=10;$CCCX2=$MCSetX2;$CCCY2=$MCSetY4;}
	else if($CCC==60){$CCi=11;$CCCX2=$MCSetX2;$CCCY2=$MCSetY5;}
	else if($CCC==74){$CCi=12;$CCCX2=$MCSetX2;$CCCY2=$MCSetY6;}
	else if($CCC==41){$CCi=13;$CCCX2=$MCSetX3;$CCCY2=$MCSetY1;}
	else if($CCC==96){$CCi=14;$CCCX2=$MCSetX3;$CCCY2=$MCSetY2;}
	else if($CCC==101){$CCi=15;$CCCX2=$MCSetX3;$CCCY2=$MCSetY3;}
	else if($CCC==46){$CCi=16;$CCCX2=$MCSetX3;$CCCY2=$MCSetY4;}
	else if($CCC==99){$CCi=17;$CCCX2=$MCSetX3;$CCCY2=$MCSetY5;}
	else if($CCC==124){$CCi=18;$CCCX2=$MCSetX3;$CCCY2=$MCSetY6;}

	$CCnat = "Count_"+$CCi;

	CreateChoice($CCnat);

	$CreateCC1 = $CCnat+"/MouseUsual/img_Math";
	$CreateCC2 = $CCnat+"/MouseOver/img_Math";
	$CreateCC3 = $CCnat+"/MouseClick/img_Math";

	$CreateCN1 = "cg/sys/magiccube/�ѥͥ�����/"+$CCC+"-001.png";
	$CreateCN2 = "cg/sys/magiccube/�ѥͥ�����/"+$CCC+"-002.png";
	$CreateCN3 = "cg/sys/magiccube/�ѥͥ�����/"+$CCC+"-003.png";


	CreateTexture($CreateCC1,1600,$CCCX2,$CCCY2,$CreateCN1);
	CreateTexture($CreateCC2,1600,$CCCX2,$CCCY2,$CreateCN2);
	CreateTexture($CreateCC3,1600,$CCCX2,$CCCY2,$CreateCN3);
	SetAlias($CCnat,$CCnat);
//	Fade($CreateCC1, 0, 0, null, false);
	Fade($CreateCC2, 0, 0, null, false);
	Fade($CreateCC3, 0, 0, null, true);

}

.//���ޥ��x�k��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//CreateChoiceCountM
function CreateChoiceCountM($CCi,$CCCX,$CCCY){

	$CCnat = "MathCount_"+$CCi;

	CreateChoice($CCnat);


	$CreateCC1 = $CCnat+"/MouseUsual/img";
	$CreateCC2 = $CCnat+"/MouseOver/img";
	$CreateCC3 = $CCnat+"/MouseClick/img";

//	$CreateCN1 = "cg/MagicCube/MathSelect003.png";
//	$CreateCN2 = "cg/MagicCube/MathSelect001.png";
//	$CreateCN3 = "cg/MagicCube/MathSelect003.png";

	$CreateCN1 = "cg/sys/magiccube/���}�å���`�֥ܥ���-ͨ��.png";
	$CreateCN2 = "cg/sys/magiccube/���}�å���`�֥ܥ���-���`�Щ`����󥻥�.png";
	$CreateCN3 = "cg/sys/magiccube/���}�å���`�֥ܥ���-���`�Щ`�x�k.png";


	CreateTexture($CreateCC1,2000,$CCCX,$CCCY,$CreateCN1);
	CreateTexture($CreateCC2,2000,$CCCX,$CCCY,$CreateCN2);
	CreateTexture($CreateCC3,2000,$CCCX,$CCCY,$CreateCN3);
	SetAlias($CCnat,$CCnat);
	SetAlias("$CreateCC1","$CCnat");
	SetAlias("$CreateCC2","$CCnat");
	SetAlias("$CreateCC3","$CCnat");
	Fade($CreateCC1, 0, 0, null, true);
	Fade($CreateCC2, 0, 0, null, true);
	Fade($CreateCC3, 0, 0, null, true);

}


.//���ޥ�����ä��������x�k��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//CreateChoiceCountR
function CreateChoiceCountR($CCi,$CCCX,$CCCY){

	$CCnat = "MathCountR_"+$CCi;

	CreateChoice($CCnat);

	$CreateCC1 = $CCnat+"/MouseUsual/img";
	$CreateCC2 = $CCnat+"/MouseOver/img";
	$CreateCC3 = $CCnat+"/MouseClick/img";
	$CreateCC4 = $CCnat+"/MouseLeave/process";

	$CreateCC1A = "U"+$CCnat;
	$CreateCC2A = "O"+$CCnat;
	$CreateCC3A = "C"+$CCnat;
	$CreateCC4A = "P"+$CCnat;

//	$CreateCN1 = "cg/MagicCube/MathSelectR003.png";
//	$CreateCN2 = "cg/MagicCube/MathSelectR001.png";
//	$CreateCN3 = "cg/MagicCube/MathSelectR003.png";

	$CreateCN1 = "cg/sys/magiccube/���}�å���`�֥ܥ���-ͨ��.png";
	$CreateCN2 = "cg/sys/magiccube/���}�å���`�֥ܥ���-���`�Щ`����󥻥�.png";
	$CreateCN3 = "cg/sys/magiccube/���}�å���`�֥ܥ���-���`�Щ`�x�k.png";

	CreateTexture($CreateCC1,2000,$CCCX,$CCCY,$CreateCN1);
	CreateTexture($CreateCC2,2000,$CCCX,$CCCY,$CreateCN2);
	CreateTexture($CreateCC3,2000,$CCCX,$CCCY,$CreateCN3);
	CreateProcess($CreateCC4, 2000, $CCCX, $CCCY, "mouseleave");
	SetAlias($CCnat,$CCnat);
	SetAlias($CreateCC1,$CreateCC1A);
	SetAlias($CreateCC2,$CreateCC2A);
	SetAlias($CreateCC3,$CreateCC3A);
	SetAlias($CreateCC4,$CreateCC4A);

	Fade($CreateCC1, 0, 0, null, false);
	Fade($CreateCC2, 0, 0, null, false);
	Fade($CreateCC3, 0, 0, null, true);

}

function mouseleave(){

	Fade("@UMathCountR*", 100, 0, null, true);

}

.//���ޥ������ե��`�ɥ�����
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//FadeChoiceCountM
function FadeChoiceCountM(){Fade("@MathCount_*", 300, 1000, null, true);}

..//No_FadeChoiceCountM
function No_FadeChoiceCountM(){Fade("@MathCount_*", 300, 0, null, true);Fade("@CMathCountR_*", 300, 0, null, true);}


.//���x�k�äΥޥ��򥻥å�
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//MagicCubeSet
function MagicCubeSet(){

	CreateTexture("math10",1200,center,middle,"cg/MagicCube/���}2.jpg");
//	Fade("math10", 0, 0, null, true);
	SetAlias("math10","math10");
//	CreateTexture("math01", 15000, 86,5, "cg/MagicCube/Math001M.png");
//	Fade("math01", 0, 0, null, true);
//	SetAlias("math01","math01");
//	CreateTexture("math02", 15000, 300,5, "cg/MagicCube/Math002M.png");
//	Fade("math02", 0, 0, null, true);
//	SetAlias("math02","math02");
//	CreateTexture("math03", 15000, 530,5, "cg/MagicCube/Math003M.png");
//	Fade("math03", 0, 0, null, true);
//	SetAlias("math03","math03");
//	CreateTexture("math04", 15000, 584,183, "cg/MagicCube/Math004M.png");
//	Fade("math04", 0, 0, null, true);
//	SetAlias("math04","math04");
//	CreateTexture("math05", 15000, 530,365, "cg/MagicCube/Math005M.png");
//	Fade("math05", 0, 0, null, true);
//	SetAlias("math05","math05");

	Move("math0*", 0, @0, @+100, null, true);
	Zoom("math0*", 0, 1200, 1200, null, true);


}

.//���x�k�äΥޥ����ʾ
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//MagicCubeFade
function MagicCubeFade(){

	Move("math0*", 300, @0, @-100, null, false);
	Zoom("@math0*", 300, 1000, 1000, null, false);
	Fade("@math0*", 500, 1000, null, true);

}

.//���x�k�ä��������O�äΤߣ�δʹ�ã�
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//MagicCubeSet2
function MagicCubeSet2(){

//Y����
	$MCSetY1 = 470;
	$MCSetY2 = 510;
	$MCSetY3 = 550;
//X����
	$MCSetX1 = 210;
	$MCSetX2 = 260;
	$MCSetX3 = 310;
	$MCSetX4 = 360;
	$MCSetX5 = 410;
	$MCSetX6 = 460;

	CreateTexture("SN062", 15000, $MCSetX1,$MCSetY1, "cg/MagicCube/�x�k����01_62.png");SetAlias("SN062","SN062");
	CreateTexture("SN049", 15000, $MCSetX2,$MCSetY1, "cg/MagicCube/�x�k����01_49.png");SetAlias("SN049","SN049");
	CreateTexture("SN008", 15000, $MCSetX3,$MCSetY1, "cg/MagicCube/�x�k����01_8.png");SetAlias("SN008","SN008");
	CreateTexture("SN055", 15000, $MCSetX4,$MCSetY1, "cg/MagicCube/�x�k����01_55.png");SetAlias("SN055","SN055");
	CreateTexture("SN084", 15000, $MCSetX5,$MCSetY1, "cg/MagicCube/�x�k����01_84.png");SetAlias("SN084","SN084");
	CreateTexture("SN024", 15000, $MCSetX6,$MCSetY1, "cg/MagicCube/�x�k����01_24.png");SetAlias("SN024","SN024");
	CreateTexture("SN009", 15000, $MCSetX1,$MCSetY2, "cg/MagicCube/�x�k����01_9.png");SetAlias("SN009","SN009");
	CreateTexture("SN105", 15000, $MCSetX2,$MCSetY2, "cg/MagicCube/�x�k����01_105.png");SetAlias("SN105","SN105");
	CreateTexture("SN022", 15000, $MCSetX3,$MCSetY2, "cg/MagicCube/�x�k����01_22.png");SetAlias("SN022","SN022");
	CreateTexture("SN035", 15000, $MCSetX4,$MCSetY2, "cg/MagicCube/�x�k����01_35.png");SetAlias("SN035","SN035");
	CreateTexture("SN060", 15000, $MCSetX5,$MCSetY2, "cg/MagicCube/�x�k����01_60.png");SetAlias("SN060","SN060");
	CreateTexture("SN074", 15000, $MCSetX6,$MCSetY2, "cg/MagicCube/�x�k����01_74.png");SetAlias("SN074","SN074");
	CreateTexture("SN041", 15000, $MCSetX1,$MCSetY3, "cg/MagicCube/�x�k����01_41.png");SetAlias("SN041","SN041");
	CreateTexture("SN096", 15000, $MCSetX2,$MCSetY3, "cg/MagicCube/�x�k����01_96.png");SetAlias("SN096","SN096");
	CreateTexture("SN101", 15000, $MCSetX3,$MCSetY3, "cg/MagicCube/�x�k����01_101.png");SetAlias("SN101","SN101");
	CreateTexture("SN046", 15000, $MCSetX4,$MCSetY3, "cg/MagicCube/�x�k����01_46.png");SetAlias("SN046","SN046");
	CreateTexture("SN099", 15000, $MCSetX5,$MCSetY3, "cg/MagicCube/�x�k����01_99.png");SetAlias("SN099","SN099");
	CreateTexture("SN124", 15000, $MCSetX6,$MCSetY3, "cg/MagicCube/�x�k����01_124.png");SetAlias("SN124","SN124");

	Request("SN062", MulRender);
	Request("SN049", MulRender);
	Request("SN008", MulRender);
	Request("SN055", MulRender);


}

.//�������ܥ����ʾ�ã�δʹ�ã�
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//SetMain
function SetMain(){

	CreateChoice("Manual");
	CreateTexture("Manual/MouseUsual/img",15000,20,470,"cg/MagicCube/manual_001.png");
	CreateTexture("Manual/MouseOver/img",15000,20,470,"cg/MagicCube/manual_002.png");
	CreateTexture("Manual/MouseClick/img",15000,20,470,"cg/MagicCube/manual_003.png");

	CreateChoice("Answer");
	CreateTexture("Answer/MouseUsual/img",15000,20,530,"cg/MagicCube/anther_001.png");
	CreateTexture("Answer/MouseOver/img",15000,20,530,"cg/MagicCube/anther_002.png");
	CreateTexture("Answer/MouseClick/img",15000,20,530,"cg/MagicCube/anther_003.png");

	CreateChoice("Count1");
	CreateTexture("Count1/MouseUsual/img",15000,200,530,"cg/MagicCube/�x�k����01_62.png");
	CreateTexture("Count1/MouseOver/img",15000,200,530,"cg/MagicCube/�x�k����02_62.png");
	CreateTexture("Count1/MouseClick/img",15000,200,530,"cg/MagicCube/�x�k����03_62.png");

	Fade("*/*/*",0,0,null,false);
	Fade("*/MouseUsual/*",0,1000,null,false);

}

.//���ܥ������ã�δʹ�ã�
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//light_M
function light_M(){

	CreateProcess("light", 150, 0, 0, "light_MProcess");
	Request("light", Start);
}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D//
..//light_MProcess
function light_MProcess(){

	while(1){

	$LMTIME = 300;
	$LMTIME2 = 50;

	Fade("@ML1", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML2", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML3", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML4", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML5", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML6", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML7", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML8", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML9", $LMTIME, 500, null, true);

	Fade("@ML1", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML2", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML3", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML4", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML5", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML6", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML7", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML8", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML9", $LMTIME, 300, null, true);


	Fade("@ML1", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML2", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML3", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML4", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML5", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML6", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML7", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML8", $LMTIME, 500, null, false);
	Wait($LMTIME2);
	Fade("@ML9", $LMTIME, 500, null, true);

	Fade("@ML1", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML2", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML3", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML4", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML5", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML6", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML7", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML8", $LMTIME, 300, null, false);
	Wait($LMTIME2);
	Fade("@ML9", $LMTIME, 300, null, true);


	}

}


function set_focus()
{
	focus("Count_1","Count_2",RIGHT);
	focus("CG_1","CG_2",RIGHT);
	focus("CG_2","CG_3",RIGHT);
	focus("CG_3","CG_4",RIGHT);
	focus("CG_4","CG_5",RIGHT);
	focus("CG_5","CG_1",RIGHT);
	focus("CG_6","CG_7",RIGHT);
	focus("CG_7","CG_8",RIGHT);
	focus("CG_8","CG_9",RIGHT);
	focus("CG_9","CG_10",RIGHT);
	focus("CG_10","CG_6",RIGHT);
	focus("CG_11","CG_12",RIGHT);
	focus("CG_12","CG_13",RIGHT);
	focus("CG_13","CG_14",RIGHT);
	focus("CG_14","CG_15",RIGHT);
	focus("CG_15","CG_11",RIGHT);
	focus("CG_16","CG_17",RIGHT);
	focus("CG_17","CG_18",RIGHT);
	focus("CG_18","CG_19",RIGHT);
	focus("CG_19","CG_20",RIGHT);
	focus("CG_20","CG_16",RIGHT);
	focus("CG_1","CG_5",LEFT);
	focus("CG_2","CG_1",LEFT);
	focus("CG_3","CG_2",LEFT);
	focus("CG_4","CG_3",LEFT);
	focus("CG_5","CG_4",LEFT);
	focus("CG_6","CG_10",LEFT);
	focus("CG_7","CG_6",LEFT);
	focus("CG_8","CG_7",LEFT);
	focus("CG_9","CG_8",LEFT);
	focus("CG_10","CG_9",LEFT);
	focus("CG_11","CG_15",LEFT);
	focus("CG_12","CG_11",LEFT);
	focus("CG_13","CG_12",LEFT);
	focus("CG_14","CG_13",LEFT);
	focus("CG_15","CG_14",LEFT);
	focus("CG_16","CG_20",LEFT);
	focus("CG_17","CG_16",LEFT);
	focus("CG_18","CG_17",LEFT);
	focus("CG_19","CG_18",LEFT);
	focus("CG_20","CG_19",LEFT);
	focus("CG_1","CG_6",DOWN);
	focus("CG_2","CG_7",DOWN);
	focus("CG_3","CG_8",DOWN);
	focus("CG_4","CG_9",DOWN);
	focus("CG_5","CG_10",DOWN);
	focus("CG_6","CG_11",DOWN);
	focus("CG_7","CG_12",DOWN);
	focus("CG_8","CG_13",DOWN);
	focus("CG_9","CG_14",DOWN);
	focus("CG_10","CG_15",DOWN);
	focus("CG_11","CG_16",DOWN);
	focus("CG_12","CG_17",DOWN);
	focus("CG_13","CG_18",DOWN);
	focus("CG_14","CG_19",DOWN);
	focus("CG_15","CG_20",DOWN);
	focus("CG_16","DATA_A",DOWN);
	focus("CG_17","DATA_B",DOWN);
	focus("CG_18","CG_3",DOWN);
	focus("CG_19","BACK",DOWN);
	focus("CG_20","EXIT",DOWN);
	focus("CG_1","DATA_A",UP);
	focus("CG_2","DATA_B",UP);
	focus("CG_3","CG_18",UP);
	focus("CG_4","BACK",UP);
	focus("CG_5","EXIT",UP);
	focus("CG_6","CG_1",UP);
	focus("CG_7","CG_2",UP);
	focus("CG_8","CG_3",UP);
	focus("CG_9","CG_4",UP);
	focus("CG_10","CG_5",UP);
	focus("CG_11","CG_6",UP);
	focus("CG_12","CG_7",UP);
	focus("CG_13","CG_8",UP);
	focus("CG_14","CG_9",UP);
	focus("CG_15","CG_10",UP);
	focus("CG_16","CG_11",UP);
	focus("CG_17","CG_12",UP);
	focus("CG_18","CG_13",UP);
	focus("CG_19","CG_14",UP);
	focus("CG_20","CG_15",UP);
	focus("DATA_A","DATA_B",RIGHT);
	focus("DATA_B","BACK",RIGHT);
	focus("BACK","NEXT",RIGHT);
	focus("NEXT","EXIT",RIGHT);
	focus("EXIT","DATA_A",RIGHT);
	focus("DATA_A","EXIT",LEFT);
	focus("DATA_B","DATA_A",LEFT);
	focus("BACK","DATA_B",LEFT);
	focus("NEXT","BACK",LEFT);
	focus("EXIT","NEXT",LEFT);
	focus("DATA_A","CG_1",DOWN);
	focus("DATA_B","CG_2",DOWN);
	focus("BACK","CG_4",DOWN);
	focus("NEXT","CG_5",DOWN);
	focus("EXIT","CG_5",DOWN);
	focus("DATA_A","CG_16",UP);
	focus("DATA_B","CG_17",UP);
	focus("BACK","CG_19",UP);
	focus("NEXT","CG_20",UP);
	focus("EXIT","CG_20",UP);
}

function focus($a,$b,$key)
{
	$a=$a+"/MouseUsual/img";
	$b=$b+"/MouseUsual/img";
	SetNextFocus($a,$b,$key);
}


