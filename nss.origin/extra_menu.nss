#include "nss/function.nss"
//=============================================================================//
//��EXTRA [Menu]��
//=============================================================================//
chapter main
{
	//�������ȥ�����O��
	if(!$�������ȥ饿���ȥ�){
		$�������ȥ饿���ȥ�=true;

		//������ɥ�`���ܤ�
		if(!#������ɳ���){
			#�������ȥ�£ǣ�=$TitleBGM;
			#������ɳ���=true;
		}
		SetVolume("@m*", 1000, 0, NULL);

		Request(#�������ȥ�£ǣ�, Play);
		SetLoop(#�������ȥ�£ǣ�, true);
		SetVolume(#�������ȥ�£ǣ�, 0, 1000, NULL);
	}

	//�ǥХå���
	if(!$PLACE_title){
		$������ = ModuleFileName();
		SystemInit();

		Request(#�������ȥ�£ǣ�, Play);
		SetLoop(#�������ȥ�£ǣ�, true);
		SetVolume(#�������ȥ�£ǣ�, 0, 1000, NULL);
	}


	//�����������ȥ�����å�����ɥ�
	CreateWindow("�����ƥ२�����ȥ�", 10000, 0, 0, 1024, 576, false);
	SetAlias("�����ƥ२�����ȥ�", "�����ƥ२�����ȥ�");
	Request("�����ƥ२�����ȥ�", Lock);

	$extExit=false;
	while(!$extExit)
	{
		//�����������ȥ鶨�x
		ExtraSet();
		//�����������ȥ����
		ExtraFade();
		//�����������ȥ饻�쥯��
		TitleSelect();

		//�ãǥ�`���B����
		WaitAction("@�����ƥ��B��ץ���", null);

		//��Y��
		//�����ñ���
		CreateEffect("������`��", 2500, 0, 0, 1024, 576, "Plain");
		Request("������`��",Passive);
		SetAlias("������`��", "������`��");
		Delete("�������ȥ�*");

		if($ExtraSelect==1){
			call_chapter nss/extra_gallery.nss;
		}else if($ExtraSelect==2){
			call_chapter nss/extra_recollection.nss;
		}else if($ExtraSelect==3){
			call_chapter nss/extra_sound.nss;
		}else if($ExtraSelect==4){
			call_chapter nss/extra_dimension.nss;
		}
	}

	Request("@�Q��������", Stop);
	SetVolume("@�Q��������", 0, 1000, NULL);
	Request("@�Q��������", Play);

	//���������K�ˡ�
	CreateTexture("@�����ƥॿ���ȥ�/�����ȥ뱳��", 149, 0, 0, SCREEN);
}

//=============================================================================//
..//�������ȥ붨�x��
//=============================================================================//
function ExtraSet()
{
	//�勵���ȥ��״�B
	$SYSTEM_menu_lock = true;

	$ExtraOverSE="sound2/se/se����_�z_װ��01";
	$ExtraClickSE="sound/se/se����_�z_װ��06";
	//se���L_����_��װ�ʂ�01
	//se���L_����_������02

	//�����x��������
	CreateTexture("�������ȥ鱳��",999,0,0,"cg/sys/extra/main/MENU��������.png");
	SetAlias("�������ȥ鱳��", "�������ȥ鱳��");

...	//�����N���x
	Array($ExtraNutName,"����","����","���S","����","����");
	AssocArray($ExtraNutName,"����","����","���S","����","����");

	Array($ExtraNutName[����],534,114,okdk,CG,Start);
	Array($ExtraNutName[����],434,114,okdk,����,Load);
	Array($ExtraNutName[���S],234,114,okdk,SOUNDMOVIE,Config);
	Array($ExtraNutName[����],134,114,true,�ĥ륮��ܞ,Extra);
	Array($ExtraNutName[����],0,438,true,��˥�`�˳�,Exit);

	if(#ClearG){
		$ExtraNutName[����][2]=true;
		$ExtraNutName[����][2]=true;
		$ExtraNutName[���S][2]=true;
	}

	$WhileCount=0;
	while(Count($ExtraNutName)>$WhileCount){
		$ExtraX=$ExtraNutName[$WhileCount][0];
		$ExtraY=$ExtraNutName[$WhileCount][1];

		$ExtraNutBase="�������ȥ�"+$ExtraNutName[$WhileCount];
		CreateChoice($ExtraNutBase);
		SetAlias($ExtraNutBase, $ExtraNutBase);

		$ExtraNutImage1="cg/sys/extra/main/"+$ExtraNutName[$WhileCount][3]+"-001.png";
		$ExtraNutImage2="cg/sys/extra/main/"+$ExtraNutName[$WhileCount][3]+"-002.png";
		$ExtraNutImage3="cg/sys/extra/main/"+$ExtraNutName[$WhileCount][3]+"-003.png";
	
		$ExtraNutTemp1=$ExtraNutBase+"/img";
		CreateTexture($ExtraNutTemp1, 1000, $ExtraX, $ExtraY, $ExtraNutImage1);

		if($ExtraNutName[$WhileCount][2]){
			$ExtraNutHit=$ExtraNutBase+"/MouseUsual/hit";
			CreateTexture($ExtraNutHit, 1000, $ExtraX, $ExtraY, $ExtraNutImage1);
			Request($ExtraNutHit, Erase);
			//$ExtraNutUsual=$ExtraNutBase+"/MouseUsual/nut";
			//CreateTexture($ExtraNutUsual, 1000, $ExtraX, $ExtraY, $ExtraNutImage1);
			$ExtraNutOver=$ExtraNutBase+"/MouseOver/nut";
			CreateTexture($ExtraNutOver, 1000, $ExtraX, $ExtraY, $ExtraNutImage2);
			$ExtraNutClick=$ExtraNutBase+"/MouseClick/nut";
			CreateTexture($ExtraNutClick, 1000, $ExtraX, $ExtraY, $ExtraNutImage3);
	
			$ExtraSoundOver=$ExtraNutBase+"/MouseOver/se";
			CreateSound($ExtraSoundOver, SE, $ExtraOverSE);
		}else{
			Fade($ExtraNutTemp1,0,200,null,false);
		}
		$WhileCount++;
	}

	Fade("�������ȥ�*/*/*",0,0,null,true);


	CreateSound("�Q���������", SE, $ExtraClickSE);
	SetVolume("�Q���������", 0, 1000, NULL);
}


//=============================================================================//
..//���������ȥ������
//=============================================================================//
function ExtraFade()
{
	//����������`�ө`��
	if($�������ȥ����||$�������ȥ黭��||$�������ȥ����S||$�������ȥ�����){
		Fade("�������ȥ鱳��", 0, 1000, null, false);
		Fade("@�����ƥ२�����ȥ�/����", 500, 0, null, true);
		Delete("@�����ƥ२�����ȥ�/����");
	}else{
		Fade("�������ȥ鱳��", 0, 1000, null, false);
		Fade("@������`��", 500, 0, null, true);
		Delete("@������`��");
	}

	$�������ȥ����=false;
	$�������ȥ黭��=false;
	$�������ȥ����S=false;
	$�������ȥ�����=false;

	//�����åȥե��`����
	ExtraFocus();
}


//=============================================================================//
..//�����åȥͥ����ȥե��`������
//=============================================================================//
function ExtraFocus(){
	$ExtraCount=Count($ExtraNutName);

	$ExtraWhile=0;
	while($ExtraCount>$ExtraWhile){
		if($ExtraNutName[$ExtraWhile][2]){
			ExtraDocusGo();
		}
		$ExtraWhile++;
	}
}

function ExtraDocusGo()
{
	$ExtraFocusBreak=true;
	$ExtraStart=$ExtraWhile+1;
	$ExtraWhile2=0;
	while($ExtraCount>$ExtraWhile2&&$ExtraFocusBreak){
		if($ExtraStart>=$ExtraCount){
			$ExtraStart=0;
		}

		if($ExtraNutName[$ExtraStart][2]){
			$menunut="�������ȥ�"+$ExtraNutName[$ExtraWhile]+"/MouseUsual/hit";
			$menunut2="�������ȥ�"+$ExtraNutName[$ExtraStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,DOWN);
				SetNextFocus($menunut,$menunut2,LEFT);
			$ExtraFocusBreak=false;
		}

		$ExtraStart++;
		$ExtraWhile2++;
	}


	$ExtraFocusBreak=true;
	$ExtraStart=$ExtraWhile-1;
	$ExtraWhile2=0;
	while($ExtraCount>$ExtraWhile2&&$ExtraFocusBreak){
		if($ExtraStart<0){
			$ExtraStart=$ExtraCount-1;
		}

		if($ExtraNutName[$ExtraStart][2]){
			$menunut="�������ȥ�"+$ExtraNutName[$ExtraWhile]+"/MouseUsual/hit";
			$menunut2="�������ȥ�"+$ExtraNutName[$ExtraStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,UP);
				SetNextFocus($menunut,$menunut2,RIGHT);
			$ExtraFocusBreak=false;
		}

		$ExtraStart--;
		$ExtraWhile2++;
	}

}
//============================================================================//



//=============================================================================//
..//�����쥯�ȡ�
//=============================================================================//
function TitleSelect()
{
	$ExtraSelect=false;
	$SYSTEM_r_button_down=false;
	select
	{
		case �������ȥ����{
			$extExit=true;
			$ExtraSelect=6;
			break;
		}case �������ȥ黭��{
			$ExtraSelect=1;
			Request("�Q���������", Play);
			Request("�Q���������", Disused);
		}case �������ȥ����{
			$ExtraSelect=2;
			Request("�Q���������", Play);
			Request("�Q���������", Disused);
		}case �������ȥ����S{
			$ExtraSelect=3;
			Request("�Q���������", Play);
			Request("�Q���������", Disused);
		}case �������ȥ�����{
			$ExtraSelect=4;
			Request("�Q���������", Play);
			Request("�Q���������", Disused);
		}

		//�省�`������ϵ
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}

		if($SYSTEM_r_button_down){
			$extExit=true;
			$ExtraSelect=6;
			break;
		}
	}

}//============================================================================//




