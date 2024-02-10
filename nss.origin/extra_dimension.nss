#include "nssex/function_tokuten.nss"

//=============================================================================//
//��EXTRA [3 Dimension]��
//=============================================================================//
chapter main
{
	//�勵���ȥ��״�B
	$SYSTEM_menu_lock = true;

	$DebugMode=false;

	//�ص���
	$TOKUTEN=false;
	TokutenPatch();

	if(!$TOKUTEN&&#SelectDxNumber>48){
		#DxPage=1;
		#SelectDxName="�ũ�ʽָ�]���T";
		#SelectDxNumber=21;
	}


	$DxFirst=true;
	DxBase();

	if(!#DxPageFirst){
		#DxPage=1;
		#SelectDxName="�ũ�ʽָ�]���T";
		#SelectDxNumber=21;
		#av_�ũ�ʽָ�]���T=true;
		#av_����ʽָ�]���T=true;
		#DxPageFirst=true;
	}

	$DxLoop=true;
	while($DxLoop){
		Dimension();
	}

	CreateEffect("@�����ƥ२�����ȥ�/����", 2500, 0, 0, 1024, 576, "Plain");
	Request("@�����ƥ२�����ȥ�/����",Passive);

	Wait(16);
}

chapter main2
{
	Dx();
}

function DxBase()
{
	$�������ȥ�����=true;

	LoadImage("DxImage0", "cg/sys/extra/3d/NO.png");
//	LoadImage("DxImage1", "cg/sys/extra/3d/����ͥ���ܥ���off.png");
//	LoadImage("DxImage2", "cg/sys/extra/3d/����ͥ���ܥ���over.png");
//	LoadImage("DxImage3", "cg/sys/extra/3d/����ͥ���ܥ���on.png");

//	LoadImage("NoData", "cg/sys/extra/3d/CG_NODATA.jpg");

	//�����x��������
	CreateTexture("DxGround", 1000, 0, 0, "cg/sys/extra/3d/3D�ӥ奢�`����.png");

	//�����N���x
	Array($DxNutName,"Back","Next","Exit");
	AssocArray($DxNutName,"Back","Next","Exit");

	Array($DxNutName[Back],948,438,true,ǰ�,Back);
	Array($DxNutName[Next],948,474,true,���,Next);
	Array($DxNutName[Exit],948,510,true,�˳�,Exit);

	$WhileCount=0;
	while(Count($DxNutName)>$WhileCount){
		if($DxNutName[$WhileCount][2]){
			$DxX=$DxNutName[$WhileCount][0];
			$DxY=$DxNutName[$WhileCount][1];

			$DxNutBase="Dx"+$DxNutName[$WhileCount];
			CreateChoice($DxNutBase);
			SetAlias($DxNutBase, $DxNutBase);

			$DxNutImage1=$DxNutBase+"Image1";
			$DxNutFail="cg/sys/extra/3d/�ܥ���/"+$DxNutName[$WhileCount][3]+"-001.png";
			LoadImage($DxNutImage1, $DxNutFail);
			$DxNutImage2=$DxNutBase+"Image2";
			$DxNutFail="cg/sys/extra/3d/�ܥ���/"+$DxNutName[$WhileCount][3]+"-002.png";
			LoadImage($DxNutImage2, $DxNutFail);
			$DxNutImage3=$DxNutBase+"Image3";
			$DxNutFail="cg/sys/extra/3d/�ܥ���/"+$DxNutName[$WhileCount][3]+"-003.png";
			LoadImage($DxNutImage3, $DxNutFail);

			$DxNutTemp1=$DxNutBase+"/img";
			CreateTexture($DxNutTemp1, 1000, $DxX, $DxY, $DxNutImage1);

			$DxNutHit=$DxNutBase+"/MouseUsual/hit";
			CreateTexture($DxNutHit, 1000, $DxX, $DxY, $DxNutImage1);
			$DxNutOver=$DxNutBase+"/MouseOver/nut";
			CreateTexture($DxNutOver, 1000, $DxX, $DxY, $DxNutImage2);
			$DxNutClick=$DxNutBase+"/MouseClick/nut";
			CreateTexture($DxNutClick, 1000, $DxX, $DxY, $DxNutImage3);
			Request($DxNutHit, "Erase");
		}
		$WhileCount++;
	}

	//���ģ؉������x
	Dx();
}



function Dx()
{
	//���x�k֫
	if(!$TOKUTEN){
		Array($Dx,"�Τ�","����","����������`���`��װ","��������������װ��","�y�Ǻ�","����","����","���","��ɽ����λ","���\ɽ","����ɽ","����","ϥ��","㑷�","ͬ��؞","�཭ؑ��","���\","�\��ͯ��","�˰�ʽ�o�T��","�˰�ʽָ�]���T","�ũ�ʽ�o�T��","�ũ�ʽָ�]���T","����ʽ�o�T��","����ʽָ�]���T","����ʽ�o�T��","�����ꥢ�ࡤ�Х���","����������","ST05��`�����","GR03�����","GR08�ȥ�`��","ST09��`�����`���`","���٥�","����ƥ��ޡ�����`��","���`�ѩ`�ϥ����","RG10","�ۥåȥܥ��","�������`","������������","������ȥ���å���","GUTSEIDER","�إå�","�ܩ`�ǥ�","��ե��`","�饤���`","��҆��","�˄���","���������羀");
		AssocArray($Dx,"�Τ�","����","����������`���`��װ","��������������װ��","�y�Ǻ�","����","����","���","��ɽ����λ","���\ɽ","����ɽ","����","ϥ��","㑷�","ͬ��؞","�཭ؑ��","���\","�\��ͯ��","�˰�ʽ�o�T��","�˰�ʽָ�]���T","�ũ�ʽ�o�T��","�ũ�ʽָ�]���T","����ʽ�o�T��","����ʽָ�]���T","����ʽ�o�T��","�����ꥢ�ࡤ�Х���","����������","ST05��`�����","GR03�����","GR08�ȥ�`��","ST09��`�����`���`","���٥�","����ƥ��ޡ�����`��","���`�ѩ`�ϥ����","RG10","�ۥåȥܥ��","�������`","������������","������ȥ���å���","GUTSEIDER","�إå�","�ܩ`�ǥ�","��ե��`","�饤���`","��҆��","�˄���","���������羀");
	}else{
		Array($Dx,"�Τ�","����","����������`���`��װ","��������������װ��","�y�Ǻ�","����","����","���","��ɽ����λ","���\ɽ","����ɽ","����","ϥ��","㑷�","ͬ��؞","�཭ؑ��","���\","�\��ͯ��","�˰�ʽ�o�T��","�˰�ʽָ�]���T","�ũ�ʽ�o�T��","�ũ�ʽָ�]���T","����ʽ�o�T��","����ʽָ�]���T","����ʽ�o�T��","�����ꥢ�ࡤ�Х���","����������","ST05��`�����","GR03�����","GR08�ȥ�`��","ST09��`�����`���`","���٥�","����ƥ��ޡ�����`��","���`�ѩ`�ϥ����","RG10","�ۥåȥܥ��","�������`","������������","������ȥ���å���","GUTSEIDER","�إå�","�ܩ`�ǥ�","��ե��`","�饤���`","��҆��","�˄���","���������羀","�հף�","�հף�","֩��","Ů��ρ","��ţ��","����ȥ�Х�","����","�߹�","�w","�����衩��","�Щ`�ȥꥣ","�F","�Ɖ����","���A�ӷ��","����","�L���Ҿ�","���Ŀָ�������γɤ�ι���","����`���`��","�����å��`���ᥤ�ե饤Mk4C��","Ħ����","GHQ��Ş","�����������","���`�ѩ`������");
		AssocArray($Dx,"�Τ�","����","����������`���`��װ","��������������װ��","�y�Ǻ�","����","����","���","��ɽ����λ","���\ɽ","����ɽ","����","ϥ��","㑷�","ͬ��؞","�཭ؑ��","���\","�\��ͯ��","�˰�ʽ�o�T��","�˰�ʽָ�]���T","�ũ�ʽ�o�T��","�ũ�ʽָ�]���T","����ʽ�o�T��","����ʽָ�]���T","����ʽ�o�T��","�����ꥢ�ࡤ�Х���","����������","ST05��`�����","GR03�����","GR08�ȥ�`��","ST09��`�����`���`","���٥�","����ƥ��ޡ�����`��","���`�ѩ`�ϥ����","RG10","�ۥåȥܥ��","�������`","������������","������ȥ���å���","GUTSEIDER","�إå�","�ܩ`�ǥ�","��ե��`","�饤���`","��҆��","�˄���","���������羀","�հף�","�հף�","֩��","Ů��ρ","��ţ��","����ȥ�Х�","����","�߹�","�w","�����衩��","�Щ`�ȥꥣ","�F","�Ɖ����","���A�ӷ��","����","�L���Ҿ�","���Ŀָ�������γɤ�ι���","����`���`��","�����å��`���ᥤ�ե饤Mk4C��","Ħ����","GHQ��Ş","�����������","���`�ѩ`������");
	}
	$DxCount=Count($Dx);
	$Ҫ����=1;

	Array($Dx[����],1,"����",true);
	Array($Dx[����������`���`��װ],2,"����������`���`��װ");
	Array($Dx[��������������װ��],3,"��������������װ��");
	Array($Dx[�y�Ǻ�],4,"�y�Ǻ�",true);
	Array($Dx[����],5,"����",true);
	Array($Dx[����],6,"����",true);
	Array($Dx[���],7,"���");
	Array($Dx[��ɽ����λ],8,"��ɽ����λ");
	Array($Dx[���\ɽ],9,"���\ɽ");
	Array($Dx[����ɽ],10,"����ɽ");
	Array($Dx[����],11,"����");
	Array($Dx[ϥ��],12,"ϥ��");
	Array($Dx[㑷�],13,"㑷�");
	Array($Dx[ͬ��؞],14,"ͬ��؞");
	Array($Dx[�཭ؑ��],15,"�཭ؑ��");
	Array($Dx[���\],16,"���\");
	Array($Dx[�\��ͯ��],17,"�\��ͯ��");
	Array($Dx[�˄���],18,"�˄���");
	Array($Dx[���������羀],19,"���������羀");
	Array($Dx[�˰�ʽ�o�T��],20,"�˰�ʽ�o�T��");
	Array($Dx[�˰�ʽָ�]���T],21,"�˰�ʽָ�]���T");
	Array($Dx[�ũ�ʽ�o�T��],22,"�ũ�ʽ�o�T��");
	Array($Dx[�ũ�ʽָ�]���T],23,"�ũ�ʽָ�]���T");
	Array($Dx[����ʽ�o�T��],24,"����ʽ�o�T��");
	Array($Dx[����ʽָ�]���T],25,"����ʽָ�]���T");
	Array($Dx[����ʽ�o�T��],26,"����ʽ�o�T��");
	Array($Dx[�����ꥢ�ࡤ�Х���],27,"�����ꥢ�ࡤ�Х���",true);
	Array($Dx[����������],28,"����������");
	Array($Dx[ST05��`�����],29,"ST-05��`�����");
	Array($Dx[GR03�����],30,"GR-03�����");
	Array($Dx[GR08�ȥ�`��],31,"GR-08�ȥ�`��");
	Array($Dx[ST09��`�����`���`],32,"ST-09��`�����`���`");
	Array($Dx[���٥�],33,"���٥�");
	Array($Dx[����ƥ��ޡ�����`��],34,"����ƥ��ޡ�����`��");
	Array($Dx[���`�ѩ`�ϥ����],35,"���`�ѩ`�ϥ����");
	Array($Dx[RG10],36,"RG-10");
	Array($Dx[�ۥåȥܥ��],37,"�ۥåȥܥ��");
	Array($Dx[�������`],38,"�������`");
	Array($Dx[������������],39,"������������");
	Array($Dx[������ȥ���å���],40,"������ȥ���å���");
	Array($Dx[GUTSEIDER],41,"GUTS EIDER");
	Array($Dx[�إå�],42,"�إå�",true);
	Array($Dx[�ܩ`�ǥ�],43,"�ܩ`�ǥ�",true);
	Array($Dx[��ե��`],44,"��ե��`");
	Array($Dx[�饤���`],45,"�饤���`");
	Array($Dx[��҆��],46,"��҆��");

	if($TOKUTEN){
		Array($Dx[�հף�],774,"�Τ�");
		Array($Dx[�հף�],774,"�Τ�");
		Array($Dx[֩��],901,"��������");
		Array($Dx[Ů��ρ],902,"��������");
		Array($Dx[��ţ��],903,"����");
		Array($Dx[����ȥ�Х�],904,"�����ꥢ�ࡤ�Х���");
		Array($Dx[����],905,"���");
		Array($Dx[�߹�],906,"㑷�");
		Array($Dx[�w],907,"ͬ��؞");
		Array($Dx[�����衩��],908,"�衩�転��");
		Array($Dx[�Щ`�ȥꥣ],909,"�Щ`�ȥꥣ");
		Array($Dx[�F],910,"�F");
		Array($Dx[�Ɖ����],911,"����");
		Array($Dx[���A�ӷ��],912,"���A�ӷ��");
		Array($Dx[����],913,"����");
		Array($Dx[�L���Ҿ�],914,"�L���Ҿ�");
		Array($Dx[���Ŀָ�������γɤ�ι���],915,"���Ŀָ�������γɤ�ι���");
		Array($Dx[����`���`��],916,"����`���`��");
		Array($Dx[�����å��`���ᥤ�ե饤Mk4C��],917,"�����å��`���ᥤ�ե饤Mk4C��");
		Array($Dx[Ħ����],918,"Ħ����");
		Array($Dx[GHQ��Ş],919,"GHQ��Ş");
		Array($Dx[�����������],920,"�����������");
		Array($Dx[���`�ѩ`������],921,"���`�ѩ`������");

		$DxWhile=49;
		while($DxCount>$DxWhile){
			DxDebug();
			$DxWhile++;
		}
	}

	$DxWhile=1;
	while($DxCount>$DxWhile){
		if(!$format){
			//���ǥХå���`����
			if($DebugMode){
				DxDebug();
			}
		}else{
			DxFormat();
		}
		$DxWhile++;
	}
}

function DxFormat()
{
	VariableValue(#,"av_"+$Dx[$DxWhile],false);
	VariableValue(#,"aw_"+$Dx[$DxWhile],false);
}
function DxDebug()
{
	VariableValue(#,"av_"+$Dx[$DxWhile],true);
	if($Dx[$DxWhile][2]){
		VariableValue(#,"aw_"+$Dx[$DxWhile],true);
	}
}

function Dimension()
{
	if($DxFirst){
	}else{
		CreateTexture("DxScreen", 10000, 0, 0, SCREEN);
		Fade("DxNext/MouseUsual/img", 0, 1000, null, false);
		Fade("DxBack/MouseUsual/img", 0, 1000, null, false);
	}

	$DxMaxCount=24;
	$DxMaxPage=Integer($DxCount/$DxMaxCount);
	if(($DxCount%$DxMaxCount)>0){
		$DxMaxPage+=1;
		$DxOverPage=$DxMaxPage+1;
	}

	$X=910;
	$Y=28;
	$DxWhile2=((#DxPage-1)*$DxMaxCount)+1;//�ۤ�Ȥη���
	$DxWhile=1;//�x�k����
	while($DxMaxCount>=$DxWhile){
		$nutbase="Dx"+$DxWhile;

		$nut=$nutbase+"/*/*";
		Delete($nut);
		$nut=$nutbase+"/*";
		Delete($nut);

		CreateChoice($nutbase);
		SetAlias($nutbase, $nutbase);
		if(VariableValue(#,"av_"+$Dx[$DxWhile2])&&($DxCount>$DxWhile2)&&!Strstr($Dx[$DxWhile2],"�հ�")){
			VariableValue($,"DxCheck"+$Dx[$DxWhile],true);

			//�ص���
			if($DxWhile2>48){
				$DxIndex="cgex";
			}else{
				$DxIndex="cg";
			}

			$img1=$DxIndex+"/sys/extra/3d/�ͩ`��ץ�`��/"+$Dx[$DxWhile2][1]+"-001.png";
			$img2=$DxIndex+"/sys/extra/3d/�ͩ`��ץ�`��/"+$Dx[$DxWhile2][1]+"-002.png";
			$img3=$DxIndex+"/sys/extra/3d/�ͩ`��ץ�`��/"+$Dx[$DxWhile2][1]+"-003.png";
		}else{
			VariableValue($,"DxCheck"+$Dx[$DxWhile],false);
			$img1="DxImage0";
			$img2="DxImage0";
			$img3="DxImage0";
		}
		$nut=$nutbase+"/img";
		CreateTexture($nut, 1000, $X, $Y, $img1);
		$nut=$nutbase+"/img2";
		CreateTexture($nut, 1000, $X, $Y, $img3);
		Fade($nut, 0, 0, null, true);

		$nut=$nutbase+"/MouseUsual/hit";
		CreateTexture($nut, 1000, $X, $Y, $img1);
		Request($nut,Erase);
		$nut=$nutbase+"/MouseOver/hit";
		CreateTexture($nut, 1000, $X, $Y, $img2);
		$nut=$nutbase+"/MouseClick/hit";
		CreateTexture($nut, 1000, $X, $Y, $img3);

		if($DxWhile2>=$DxCount||Strstr($Dx[$DxWhile2],"�հ�")){
			Request($nutbase,UnClickable);
			$nut=$nutbase+"/*/*";
			Request($nut, Erase);
			$nut=$nutbase+"/*";
			Request($nut, Erase);
		}else if(VariableValue(#,"av_"+$Dx[$DxWhile2])!=true){
			Request($nutbase,UnClickable);
			$nut=$nutbase+"/*/*";
			Request($nut, Erase);
		}

		$DxWhile2++;
		$DxWhile++;
		if($DxWhile==13){
			$X=910;
			$Y=238;
		}else{
			$X-=30;
		}
	}

	Fade("*/MouseOver/*", 0, 0, null, false);
	Fade("*/MouseClick/*", 0, 0, null, true);

	//��������߱�ʾ
	$DxNumber=#SelectDxName;
	$SelectDxIco=#SelectDxNumber-((#DxPage-1)*$DxMaxCount);
	DxFadeSet();

	//�񥻥åȥͥ����ȥե��`����
	Array($DxForcus,"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","Exit","Next","Back");
	AssocArray($DxForcus,"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","Exit","Next","Back");
	Array($DxForcus[1],Exit,13,2,12);
	Array($DxForcus[2],14,14,3,1);
	Array($DxForcus[3],15,15,4,2);
	Array($DxForcus[4],16,16,5,3);
	Array($DxForcus[5],17,17,6,4);
	Array($DxForcus[6],18,18,7,5);
	Array($DxForcus[7],19,19,8,6);
	Array($DxForcus[8],20,20,9,7);
	Array($DxForcus[9],21,21,10,8);
	Array($DxForcus[10],22,22,11,9);
	Array($DxForcus[11],23,23,12,10);
	Array($DxForcus[12],24,24,1,11);
	Array($DxForcus[13],1,Back,14,24);
	Array($DxForcus[14],2,2,15,13);
	Array($DxForcus[15],3,3,16,14);
	Array($DxForcus[16],4,4,17,15);
	Array($DxForcus[17],5,5,18,16);
	Array($DxForcus[18],6,6,19,17);
	Array($DxForcus[19],7,7,20,18);
	Array($DxForcus[20],8,8,21,19);
	Array($DxForcus[21],9,9,22,20);
	Array($DxForcus[22],10,10,23,21);
	Array($DxForcus[23],11,11,24,22);
	Array($DxForcus[24],12,12,13,23);

	Array($DxForcus[Exit],Next,1,13,24);
	Array($DxForcus[Next],Back,Exit,13,24);
	Array($DxForcus[Back],13,Next,13,24);

	if(#DxPage==2){
		Array($DxForcus[11],11,11,12,10);
		Array($DxForcus[12],12,12,1,11);
		Array($DxForcus[13],1,Back,14,22);
		Array($DxForcus[22],10,10,13,21);
	
		Array($DxForcus[Exit],Next,1,13,22);
		Array($DxForcus[Next],Back,Exit,13,22);
		Array($DxForcus[Back],13,Next,13,22);
	}else if(#DxPage==3){
		Array($DxForcus[10],10,10,11,9);
		Array($DxForcus[11],11,11,12,10);
		Array($DxForcus[12],12,12,1,11);
		Array($DxForcus[13],1,Back,14,21);
		Array($DxForcus[21],9,9,13,20);
	
		Array($DxForcus[Exit],Next,1,13,21);
		Array($DxForcus[Next],Back,Exit,13,21);
		Array($DxForcus[Back],13,Next,13,21);
	}

	$DxWhile=1;
	while(Count($DxForcus)>$DxWhile){
		$basenut="Dx"+$DxForcus[$DxWhile]+"/MouseUsual/hit";
		$up="Dx"+$DxForcus[$DxWhile][0]+"/MouseUsual/hit";
		$down="Dx"+$DxForcus[$DxWhile][1]+"/MouseUsual/hit";
		$left="Dx"+$DxForcus[$DxWhile][2]+"/MouseUsual/hit";
		$right="Dx"+$DxForcus[$DxWhile][3]+"/MouseUsual/hit";
		SetNextFocus($basenut, $up, UP);
		SetNextFocus($basenut, $down, DOWN);
		SetNextFocus($basenut, $left, LEFT);
		SetNextFocus($basenut, $right, RIGHT);
		$DxWhile++;
	}

	//���軭
	if($DxFirst){
		Fade("@������`��", 500, 0, null, true);
		Delete("@������`��");

		$DxFirst=false;
	}else{
		Fade("DxScreen", 300, 0, null, true);
		Delete("DxScreen");
	}

	//���x�k�_ʼ
	$DimensionWhile=true;
	while($DimensionWhile){
		$SelectDxIco=0;
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
				$DimensionWhile=false;$DxLoop=false;break;
			}
	
			case Dx1{$SelectDxIco=1;}
			case Dx2{$SelectDxIco=2;}
			case Dx3{$SelectDxIco=3;}
			case Dx4{$SelectDxIco=4;}
			case Dx5{$SelectDxIco=5;}
			case Dx6{$SelectDxIco=6;}
			case Dx7{$SelectDxIco=7;}
			case Dx8{$SelectDxIco=8;}
			case Dx9{$SelectDxIco=9;}
			case Dx10{$SelectDxIco=10;}
			case Dx11{$SelectDxIco=11;}
			case Dx12{$SelectDxIco=12;}
			case Dx13{$SelectDxIco=13;}
			case Dx14{$SelectDxIco=14;}
			case Dx15{$SelectDxIco=15;}
			case Dx16{$SelectDxIco=16;}
			case Dx17{$SelectDxIco=17;}
			case Dx18{$SelectDxIco=18;}
			case Dx19{$SelectDxIco=19;}
			case Dx20{$SelectDxIco=20;}
			case Dx21{$SelectDxIco=21;}
			if(#DxPage!=3){
				case Dx22{$SelectDxIco=22;}
			}
			if(#DxPage!=2&&#DxPage!=3){
				case Dx23{$SelectDxIco=23;}
				case Dx24{$SelectDxIco=24;}
			}

			case DxExit{
				//Request("@�Q��������", Stop);
				//SetVolume("@�Q��������", 0, 1000, NULL);
				//Request("@�Q��������", Play);
				$DimensionWhile=false;$DxLoop=false;break;
			}case DxNext{
				//Request("�Q���������", Stop);
				//Request("�Q���������", Play);
				$DimensionWhile=false;
				#DxPage++;
				if(#DxPage==$DxOverPage){#DxPage=1;}
			}case DxBack{
				//Request("�Q���������", Stop);
				//Request("�Q���������", Play);
				$DimensionWhile=false;
				#DxPage--;
				if(#DxPage==0){#DxPage=$DxMaxPage;}
			}
		}

		if($SelectDxIco!=0&&VariableValue($,"DxCheck"+$Dx[$SelectDxIco])){
			DxFade();
		}
	}
}


function DxFade()
{
	CreateTexture("������`��", 3000, 0, 0, SCREEN);

	$DxNumber=$SelectDxIco+((#DxPage-1)*$DxMaxCount);
	#SelectDxNumber=$DxNumber;
	#SelectDxName=$Dx[$DxNumber];
	DxFadeSet();

	Fade("������`��", 300, 0, null, true);
	Delete("������`��");

	$SelectDxIco=0;
}

function DxFadeSet()
{
	//�ص���
	if(#SelectDxNumber>48){
		$DxIndex="cgex";
	}else{
		$DxIndex="cg";
	}

	$mov=String("dx/3d/ex_%03d.ngs",$Dx[$DxNumber][0]);
	$img1=$DxIndex+"/sys/extra/3d/�ͩ`��ץ�`�ȴ�/"+$Dx[$DxNumber][1]+".png";
	$img2=$DxIndex+"/sys/extra/3d/�����ڥå�/"+$Dx[$DxNumber][1]+"���ڥå�.png";
	if(VariableValue(#,"aw_"+$Dx[$DxNumber])){
		$img2="cg/sys/extra/3d/�����ڥå�/"+$Dx[$DxNumber][1]+"���_�ţ����ڥå�.png";
	}

	CreateTexture("DxName", 1000, 480, 28, $img1);
	CreateTexture("DxSpec", 1000, 60, 436, $img2);
	CreateMovie("DxMovie", 1000, 80, 28, true, false, $mov);
	$nut="Dx"+$SelectDxIco+"/img2";
	Fade("Dx*/img2", 0, 0, null, true);
	Fade($nut, 0, 1000, null, true);
}
