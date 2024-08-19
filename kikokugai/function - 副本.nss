$Revision: 137 $
#include "nss/function_stand.nss"
#include "nss/function_process.nss"

#include "nss/function_lc_akk.nss"
#include "nss/function_lc_chiyo.nss"
#include "nss/function_lc_oga.nss"
#include "nss/function_lc_shima.nss"
#include "nss/function_lc_toho.nss"
#include "nss/function_lc_ara.nss"
#include "nss/function_lc_wam.nss"

//���}�N��������Ƀ}�N���ɂĂ܂Ƃ߂Ē�`
//=============================================================================//
.//�܂Ƃߒ�`
//=============================================================================//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SystemInit
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SystemInit()
{
	$SYSTEM_text_interval = 48;
	$SYSTEM_spt_name=$�\����+$�X�N���v�g�o�[�W����;

	//����ΓI������������
	$SYSTEM_ignore_voice_sync_text=false;
	$SYSTEM_ignore_text_speed=false;

	//����x�ǂݍ��񂾂�ēx�ǂݍ���ł��܂�Ȃ��悤�ɡ�
	//��BGM�S��
	if(!$BGM_Init){
		if($Logo){
			//CreateTexture("�^�C�g���x��", 100, 0, 0, "cg/sys/title/���[�f�B���O.png");
			//Fade("�w�i�P", 0, 0, null, true);
			//Fade("�w�i�P", 300, 1000, null, true);
		}
		InitBGM();
		$BGM_Init=true;
	}
	//��TEXTBOX�n�Ƃ��̑��V�X�e���摜�n
	if(!$BOX_Init){
		LoadBox();
		SystemSet();
		$BOX_Init=true;
	}

	//Fade("�^�C�g���x��", 300, 0, null, true);
	//Delete("�^�C�g���x��");
}


//���X�N���v�g�`����`�֘A
//=============================================================================//
.//��b��`
//=============================================================================//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SystemSet
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SystemSet()
{
	//�������Ή�����
	SystemConquest();

	//���\�ߓǂ݂����摜������΁E�E�E

}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SystemConquest
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SystemConquest()
{
	//�������Ή�
	Conquest("nss/function.nss",null,true);
	Conquest("nss/sys_config.nss",null,true);
	Conquest("nss/function_stand.nss",null,true);
	Conquest("nss/function_process.nss",null,true);

	Conquest("nss/function_dialog.nss",null,true);
	Conquest("nss/sys_twitter.nss",null,true);

	Conquest("nss/function.nss",null,true);
	Conquest("nss/function_move.nss",null,true);
	Conquest("nss/function_select.nss",null,true);
	Conquest("nss/function_cockpit.nss",null,true);
	Conquest("nss/function_quick.nss",null,true);

	Conquest("nss/function_axl.nss",null,true);
	Conquest("nss/function_lc_akk.nss",null,true);
	Conquest("nss/function_lc_chiyo.nss",null,true);
	Conquest("nss/function_lc_inc.nss",null,true);
	Conquest("nss/function_lc_oga.nss",null,true);
	Conquest("nss/function_lc_shima.nss",null,true);
	Conquest("nss/function_lc_toho.nss",null,true);
	Conquest("nss/function_axl.nss",null,true);
	Conquest("nss/function_lc_ara.nss",null,true);
	Conquest("nss/function_lc_wam.nss",null,true);
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..LoadBox
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function LoadBox()
{
	//���ʏ�E�B���h�E�摜
	//��
	CreateTexture("boxHN", 19000, Center, 560, "cg/sys/adv/THTextWindow.png");
	SetAlias("boxHN", "boxHN");
	Fade("boxHN",0,0,null,false);
	Request("boxHN", Lock);
	Request("boxHN", Hideable);

	//����
	CreateTexture("boxHF", 19000, Center, 560, "cg/sys/adv/THTextWindow_Fw.png");
	SetAlias("boxHF", "boxHF");
	Fade("boxHF",0,0,null,false);
	Request("boxHF", Lock);
	Request("boxHF", Hideable);


	//�c
	CreateTexture("boxVN", 19000, 426, 44, "cg/sys/adv/TextWindow.png");
	SetAlias("boxVN", "boxVN");
	Fade("boxVN",0,0,null,false);
	Request("boxVN", Lock);
	Request("boxVN", Hideable);

	//�c��
	CreateTexture("boxVF", 19000, 426, -4, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxVF", "boxVF");
	Fade("boxVF",0,0,null,false);
	Request("boxVF", Lock);
	Request("boxVF", Hideable);
	Move("boxVF", 0, @0, @4, null, true);


	//�S���
	CreateTexture("boxAll", 20000, Center, Middle, "cg/sys/adv/fullwindow.png");
	SetAlias("boxAll", "boxAll");
	Fade("boxAll",0,0,null,false);
	Request("boxAll", Lock);
	Request("boxAll", Hideable);

	//���ʏ�E�B���h�E�p
	CreateWindow("box0", 20001, 0, 0, 1024, 768, false);
	SetAlias("box0", "box0");
	Request("box0", Lock);

	//���J�S���݂邵�p
	//CreateName("RateWindow");
	//SetAlias("RateWindow", "RateWindow");
	//Request("RateWindow", Lock);
}


//���X�N���v�g�`���F�{���Ăяo���O���`
//���C���Q�[�����yCallScene�O�z
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..GameMainSet
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function GameMainSet()
{
	//�f�o�b�O�ϐ���������
	//$DEBUG_cgbglist="";

	//�������S�ǂݐݒ�F���ǂ�
	//Conquest($ConGameName,$GameName2,false);//Main
	//Conquest($ConGameName,$GameName,false);//�{��Scene

	if(!$PLACE_reco){
		//���������ɃX�L�b�v�ƃI�[�g���[�h������
		#JIKOKU_auto_text_cancel=true;//���Ȃ�
		if(!#JIKOKU_auto_text_cancel){
			$SYSTEM_skip=false;
			#SYSTEM_skip_express=false;
			$SYSTEM_text_auto=false;
	
			//Message("�f�o�b�O�p�E�B���h�E","�f�o�b�O�p�ł��P",YESNOCANCE,EXCLAMATION);
		}else if(#auto_log){
			#auto_log=false;
			$SYSTEM_text_auto_lock=false;
			$SYSTEM_text_auto=true;
	
			//Message("�f�o�b�O�p�E�B���h�E","�f�o�b�O�p�ł��Q",YESNOCANCE,EXCLAMATION);
		}
	}

	//�Q�s���������ԍ�������
	$AddTextCount=1;
}

//���C���Q�[�����yCallScene��z
function GameMainSet2()
{
	//���b�f�f�o�b�O�p�Z�[�u�f�[�^�쐬
	//Save(5000);

	//�������S�ǂݐݒ����
	Conquest($ConGameName,$GameName2,true);//Main
	Conquest($ConGameName,$GameName,true);//�{��Scene

	//���b�f�f�o�b�O�p�F�Z�[�u�t�H���_��5000�t�H���_�ɡ��V�[�������̃t�@�C�����œf���o��
	//$DEBUG_savepath=String("%s/5000/%s.txt",#SYSTEM_save_path,$GameName);
	//WriteFile($DEBUG_savepath,$DEBUG_cgbglist,false);
	//$DEBUG_cgbglist="";
}

function GameBreak()
{
	//���Q�[���T�[�N�����u���C�N����ۂ�
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@x*", 2000, 0, NULL);
	PrintFadeNut("��w�i", 2000, true);

	ClockDelete(0,true);
	TextBoxDelete(0);

	$GameName = "";
	$GameCircle=false;
	//$GameTV=true;

	$SYSTEM_low_thread_priority=false;
	$SYSTEM_save_lock=false;
	$SYSTEM_load_lock=false;
	$SYSTEM_text_auto=false;
}

//���I���p�X�N���v�g�̍Ō�ɋL��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..EndScript
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function EndScript()
{
	if($GameClose){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("��w�i", 1000, true);

		//�����v���C���ԁF���v
		#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);

		Exit();
	}else if($GameTV){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("��w�i", 1000, true);

		$GameName = "";
		$GameCircle=false;
		$GameTV=true;
	}else if(!$�G�L�X�g���^�C�g��){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("��w�i", 1000, true);
	}else{
		$GameName = "";
	}
}

//���G�L�X�g����z�p�F�{�Җ`���Ɏd����
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..ReConquest
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function ReConquest()
{
	Conquest($ConGameName,$PreGameName,true);
}

//����������������
//�yScene�擪�z
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SkipOut
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SkipOut()
{
	if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}
	Conquest($ConGameName,$GameName2,true);

	SetVolume("@*", 0, 0, NULL);
	ClearFadeAll(0,true);

	//����i�ɂ�肯�裨�{�b�N�X��������
	Fade("@boxH", 0, 0, null, true);
	Fade("@boxM",0,0,null,true);


	#SYSTEM_skip_express_minimum_time+=0;

	Wait(64);
}

//�yBox���z
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..BoxOut
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function BoxOut()
{
	#SYSTEM_skip_express_minimum_time=0;

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}

		SetVolume("@*", 0, 0, NULL);
		ClearFadeAll(0,true);

		//����i�ɂ�肯�裨�{�b�N�X��������
		Fade("@boxH", 0, 0, null, true);
		Fade("@boxM",0,0,null,true);


		#SYSTEM_skip_express_minimum_time+=0;
		Escape(3);
	}
}


//���f�o�b�O�p�FCG���X�g�f�o���p
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..DEBUG_cgbgcorrect
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function DEBUG_cgbgcorrect($filename)
{
	if(Strstr($filename,"bg")&&!Strstr($DEBUG_cgbglist,$filename)){
		//�t�@�C������'bg'�Ƃ��������񂪂��裬�Ȃ��������̏ꍇ�̓��X�g�ɒǉ�
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}else if(Strstr($filename,"ev")&&!Strstr($DEBUG_cgbglist,$filename)){
		//�t�@�C������'ev'�Ƃ��������񂪂��裬�Ȃ��������̏ꍇ�̓��X�g�ɒǉ�
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}
}


//���v���C���ԃ}�N��
//=============================================================================//
.//���v���C����
//=============================================================================//
function GetTime()
{
	//�����v���C���ԁF���v
	#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);
	//�����v���C���ԁF�v���J�n
	#BEGIN_TIME=Time();
}


//���̓^�C�g�������}�N��
//=============================================================================//
.//���v���C����
//=============================================================================//
//�S�L�X�ł��g�p//�S�L�X�ł�$�͔ԍ��̈������Ƃ�
function SceneChange($�͔ԍ�)
{
	//�S�L�X�p����
	if($�͔ԍ�>1){
		Enter1line();
	}

	$ChapterNum=$�͔ԍ�;
	$ChapterName=String("Episode%02d",$ChapterNum);
	VariableValue(#,$ChapterName,true);

	if($�͔ԍ�==1){$�͑�="��һ�@�����?ҹ";}
	else if($�͔ԍ�==2){$�͑�="�ڶ?�@��ȭ����";}
	else if($�͔ԍ�==3){$�͑�="���?�@�??��?";}
	else if($�͔ԍ�==4){$�͑�="�����@�ֶ����?�?";}
	else if($�͔ԍ�==5){$�͑�="�����@���Ѫ�?";}
	else if($�͔ԍ�==6){$�͑�="���?�@���?�԰";}
	$�͊ԑ}��="�@�@�@�@"+$�͑�;

	SetBacklog("�@",null,null);
	SetBacklog($�͊ԑ}��,null,null);
	SetBacklog("�@",null,null);

	Enter1line();
	//�S�L�X�p���������܂�
	
	if(#SceneSkip){
		//�X�L�b�v��蒴�����ɐݒ肷��
		#SYSTEM_skip_express=false;
		$SYSTEM_skip=false;
		//$SYSTEM_text_auto=false;
	}
}

//�o�b�N���O�ł̃t�@�C���ƃt�@�C���̊ԂɂP�s�����p
function Enter1line()
{
	SetBacklog("�@",null,null);
}




//���X�N���v�g�ɂ����ăe�L�X�g���`����}�N���R�}���h
//=============================================================================//
.//�e�L�X�g��`
//=============================================================================//

//�e�L�X�g�A�C�R����r���ŕς������ꍇ�͂��g����������
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TextIconSet()
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TextIconSet()
{
	//���s
	$SYSTEM_text_icon_line="cg/sys/icon/line/��������A�C�R��%04d.png#5";
	//���y�[�W
	$SYSTEM_text_icon_page="cg/sys/icon/page/��������A�C�R��%04d.png#5";
	//������������
	$SYSTEM_text_icon_auto="cg/sys/icon/auto/AUTO�A�C�R��%02d.png#5";
}
function TextIconSet2()
{
	//���s
	$SYSTEM_text_icon_line="cg/sys/icon/line2/��������A�C�R��%04d.png#12";
	//���y�[�W
	$SYSTEM_text_icon_page="cg/sys/icon/page2/��������A�C�R��%04d.png#12";
	//������������
	$SYSTEM_text_icon_auto="cg/sys/icon/auto2/��������A�C�R��%04d.png#12";
}

//��E�B���h�E�p��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..Fw
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function Fw($FwPic)
{
	$PreFwNut=$FwNut;

	$FwCount+=1;
	if($FwCount>10){$FwCount=0;}
	$FwNut=String("FwNut%02d",$FwCount);

	if(Strstr($FwPic, "fw")){
		$FwData="cg/fw/"+$FwPic+".png";
		$FwType="fw";
	}else{
		$FwData="cg/nw/"+$FwPic+".png";
		$FwType="nw";
	}
	CreateTexture($FwNut, 19001, 1000, 1000, $FwData);
	SetAlias($FwNut, $FwNut);
	Fade($FwNut, 0, 0, null, false);
	Request($FwNut, Hideable);

	$OnFW=true;
}

function FadeFw($FwPic)
{
	$PreFwNut=$FwNut;

	$FwCount+=1;
	if($FwCount>10){$FwCount=0;}
	$FwNut=String("FwNut%02d",$FwCount);

	if(Strstr($FwPic, "fw")){
		$FwData="cg/fw/"+$FwPic+".png";
		$TypeBeginFaceX=$TypeBeginFwX;
		$TypeBeginFaceY=$TypeBeginFwY;
	}else{
		$FwData="cg/nw/"+$FwPic+".png";
		$TypeBeginFaceX=$TypeBeginNwX;
		$TypeBeginFaceY=$TypeBeginNwY;
	}
	CreateTexture($FwNut, 19001, 1000, 1000, $FwData);
	SetAlias($FwNut, $FwNut);
	Fade($FwNut, 0, 0, null, true);
	Request($FwNut, Hideable);

	Move($FwNut, 0, $TypeBeginFaceX, $TypeBeginFaceY, null, false);
	Fade($PreFwNut, 16, 0, null, false);
	Fade($FwNut, 16, 1000, null, true);
	Delete($PreFwNut);

	$OnFW=false;
}

//�ʏ�E�B���h�E�c�p
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SetText
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SetText()
{
	//TakeRateBack();//�ʐ^�B��p
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginFwX=170;//�ύX
		$TypeBeginFwY=567;
		$TypeBeginNwX=170;//�ύX
		$TypeBeginNwY=567;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}

		$TypeBeginBoxX=166;//�ύX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=336;//�ύX
		$TypeBeginTextY=553;
		$TypeBeginIconX=870;//�ύX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVF";
	}else{
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginBoxX=166;//�ύX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=176;//�ύX
		$TypeBeginTextY=553;
		$TypeBeginIconX=815;//�ύX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVN";
	}

	SetTextBase();
}

function SetTextL()
{
	//TakeRateBack();//�ʐ^�B��p
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginFwX=7;//�ύX
		$TypeBeginFwY=567;
		$TypeBeginNwX=7;//�ύX
		$TypeBeginNwY=567;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}

		$TypeBeginBoxX=5;//�ύX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=170;//�ύX
		$TypeBeginTextY=553;
		$TypeBeginIconX=705;//�ύX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVF";
	}else{
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginBoxX=5;//�ύX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=10;//�ύX
		$TypeBeginTextY=553;
		$TypeBeginIconX=650;//�ύX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVN";
	}

	SetTextBase();
}


function SetTextR()
{
	//TakeRateBack();//�ʐ^�B��p
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginFwX=279;//�ύX
		$TypeBeginFwY=567;
		$TypeBeginNwX=279;//�ύX
		$TypeBeginNwY=567;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}

		$TypeBeginBoxX=277;//�ύX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=440;//�ύX
		$TypeBeginTextY=553;
		$TypeBeginIconX=985;//�ύX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVF";
	}else{
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginBoxX=328;//�ύX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=333;//�ύX
		$TypeBeginTextY=553;
		$TypeBeginIconX=985;//�ύX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVN";
	}

	SetTextBase();
}



function SetTextBase()
{
		SetFont("@�l�r ����", 22, #FFFFFF, #000000, 600, RIGHTDOWN);
		LoadText($�\����,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,$LoadTextHsize,0,35);

		SetVertex($SYSTEM_present_text, 0, 0);
		Rotate($SYSTEM_present_text, 0, @0, @0, 0, null,true);
		Move($SYSTEM_present_text, 0, $TypeBeginTextX, $TypeBeginTextY, null, true);
	
		Request($SYSTEM_present_text, Erase);
		Request($SYSTEM_present_text, Lock);
		Request($SYSTEM_present_text, Hideable);
}


//�ʏ�E�B���h�E���p
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SetTextH
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SetTextH()
{
	//TakeRateBack();//�ʐ^�B��p
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize = 540;
		$LoadTextHsize = 150;

		$TypeBeginFwX=144;
		$TypeBeginFwY=566;

		$TypeBeginBoxX=@0;
		$TypeBeginBoxY=@0;
		$TypeBeginTextX=320;
		$TypeBeginTextY=572;
		$TypeBeginIconX=830;
		$TypeBeginIconY=685;

		$TypeBeginNut="@boxHF";
	}else{
		$LoadTextWsize = 660;
		$LoadTextHsize = 150;

		$TypeBeginBoxX=@0;
		$TypeBeginBoxY=@0;
		$TypeBeginTextX=185;
		$TypeBeginTextY=570;
		$TypeBeginIconX=800;
		$TypeBeginIconY=680;

		$TypeBeginNut="@boxHN";
	}

	SetTextBase2();
}


function SetTextBase2()
{
		SetFont("�l�r ����", 22, #FFFFFF, #000000, 600, RIGHTDOWN);
		LoadText($�\����,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,$LoadTextHsize,0,35);

		Move($SYSTEM_present_text, 0, $TypeBeginTextX, $TypeBeginTextY, null, true);
	
		Request($SYSTEM_present_text, Erase);
		Request($SYSTEM_present_text, Lock);
		Request($SYSTEM_present_text, Hideable);
}



//�S��ʃE�B���h�E�p
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..SetTextC
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function SetTextC()
{
	$TypeBeginBoxX=@0;
	$TypeBeginBoxY=@0;

	$TypeBeginIconX=887;
	$TypeBeginIconY=618;

	$TypeBeginNut="@boxAll";

	SetFont("�l�r ����", 28, #FFFFFF, #222222, 500, AROUND);
	SetVertex($SYSTEM_present_text, 0, 0);

	$LoadTextWsize = 756;
	LoadText($�\����,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,400,0,40);

	$TextH=ImageHorizon($SYSTEM_present_text);
	$TextV=ImageVertical($SYSTEM_present_text);

	$WindXSize=1024;
	$WindYSize=512;
	$TextH2=($WindXSize-$TextH)/2;
	$TextV2=($WindYSize-$TextV)/2;
	Move($SYSTEM_present_text, 0, $TextH2, $TextV2, null, false);

	Request($SYSTEM_present_text, Erase);
	Request($SYSTEM_present_text, Lock);
	Request($SYSTEM_present_text, Hideable);
}


//���{�b�N�X��`�悷��̂ƃe�L�X�g���^�C�s���O���铮����܂Ƃ߂Ď��s����}�N��
//=============================================================================//
.//�^�C�s���O�}�N��
//=============================================================================//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBegin���{�b�N�X�L��F�^�C�s���O��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBegin()
{
	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($OnFW){
		Move($FwNut, 0, $TypeBeginFaceX, $TypeBeginFaceY, null, false);
		Move($TypeBeginNut, 0, $TypeBeginBoxX, @0, null, false);
		Fade($FwNut, $BoxFadeTime, 1000, null, false);
		Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	}else{
		Move($TypeBeginNut, 0, $TypeBeginBoxX, @0, null, false);
		Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	}
	Delete($PreFwNut);
	$OnFW=false;

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, true);

	BoxOut();
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginT���{�b�N�X�����F�^�C�s���O��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginT()
{
	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($OnFW){
		Move($FwNut, 0, $TypeBeginFaceX, $TypeBeginFaceY, null, false);
		Fade($FwNut, $BoxFadeTime, 1000, null, false);
	}else{
	}
	Delete($PreFwNut);
	$OnFW=false;

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginF���{�b�N�X�����F�t�F�[�h��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginF($TextFadeTime)
{
	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($OnFW){
		Move($FwNut, 0, $TypeBeginFaceX, $TypeBeginFaceY, null, false);
		Fade($FwNut, $BoxFadeTime, 1000, null, false);
	}else{
	}
	Delete($PreFwNut);
	$OnFW=false;

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginF2���{�b�N�X�L��F�t�F�[�h��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginF2($TextFadeTime)
{
	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=$TextFadeTime;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($OnFW){
		Move($FwNut, 0, $TypeBeginFaceX, $TypeBeginFaceY, null, false);
		Move($TypeBeginNut, 0, $TypeBeginBoxX, @0, null, false);
		Fade($FwNut, $BoxFadeTime, 1000, null, false);
		Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	}else{
		Move($TypeBeginNut, 0, $TypeBeginBoxX, @0, null, false);
		Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	}
	Delete($PreFwNut);
	$OnFW=false;

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade("@boxM",$BoxFadeTime,600,null,false);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginA���{�b�N�X�L��F�^�C�s���O�F�I�[�g�i�s�p��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginA($TypeBeginWaitA)
{
	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($OnFW){
		Move($FwNut, 0, $TypeBeginFaceX, $TypeBeginFaceY, null, false);
		Move($TypeBeginNut, 0, $TypeBeginBoxX, @0, null, false);
		Fade($FwNut, $BoxFadeTime, 1000, null, false);
		Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	}else{
		Move($TypeBeginNut, 0, $TypeBeginBoxX, @0, null, false);
		Fade($TypeBeginNut,$BoxFadeTime,1000,null,false);
	}
	Delete($PreFwNut);
	$OnFW=false;

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);
	WaitPlay($textnumber, null);

	Wait($TypeBeginWaitA);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginAN���{�b�N�X�����F�^�C�s���O�F�I�[�g�i�s�p��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginAN($TypeBeginWaitA)
{
	if($AddVoiceON){
		Delete("AddVoice*");
		$AddVoiceON=false;
	}

	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($OnFW){
		Move($FwNut, 0, $TypeBeginFaceX, $TypeBeginFaceY, null, false);
		Fade($FwNut, $BoxFadeTime, 1000, null, false);
	}else{
	}
	Delete($PreFwNut);
	$OnFW=false;

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	Request($textnumber, Enter);
	WaitText($textnumber, null);
	WaitPlay($textnumber, null);

	Wait($TypeBeginWaitA);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginAF���{�b�N�X�����F�t�F�[�h�F�I�[�g�i�s�p��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginAF($TextFadeTime,$TypeBeginWaitA)
{
	$SYSTEM_position_x_text_icon=$TypeBeginIconX;
	$SYSTEM_position_y_text_icon=$TypeBeginIconY;

	$BoxFadeTime=0;
	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;

	Fade("@FwNut*", $BoxFadeTime, 0, null, false);
	Fade("@box*",$BoxFadeTime,0,null,false);

	if($OnFW){
		Move($FwNut, 0, $TypeBeginFaceX, $TypeBeginFaceY, null, false);
		Fade($FwNut, $BoxFadeTime, 1000, null, false);
	}else{
	}
	Delete($PreFwNut);
	$OnFW=false;

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	$SYSTEM_text_waitkey=false;
	$SYSTEM_text_icon_disable=true;
	Fade($textnumber, 0, 0, null, true);
	Request($textnumber, Enter);
	Request($textnumber, PushText);
	Fade($textnumber, $TextFadeTime, 1000, null, true);
	$SYSTEM_text_icon_disable=false;
	$SYSTEM_text_waitkey=true;
	WaitText($textnumber, null);
	WaitPlay($textnumber, null);

	Wait($TypeBeginWaitA);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();
}



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TextBoxDelete
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TextBoxDelete($BoxDeleteTime)
{
	Fade("@FwNut*",$BoxDeleteTime,0,null,false);
	Fade("@box*",$BoxDeleteTime,0,null,true);
	Delete("@FwNut*");
}










//=============================================================================//
.//�e�L�X�g��s�����\��
//=============================================================================//
//---------------------------------------------------------------//
..AddText
//---------------------------------------------------------------//
function AddText($AddTextLine,$AddTextText,$AddTextClass,$AddTextVoice,$AddTextPlay,$AddVoicePlay,$AddVoiceVolume)
{
	Delete("LogText*");
	Delete("AddText*");
	Delete("AddVoice*");
	$AddVoiceON=false;

	if($AddVoicePlay){
		$AddTextNus="AddVoice"+$AddTextClass+$AddTextLine;
		CreateVOICEEX($AddTextNus,$AddTextVoice,$AddTextClass);
		Request($AddTextNus, Lock);
		SetVolumeEX($AddTextNus, 0, $AddVoiceVolume, null);
	}else{
		$AddTextNus="ParVoice"+$AddTextClass+$AddTextLine;
		CreateVOICEEX($AddTextNus,$AddTextVoice,$AddTextClass);
		SetVolumeEX($AddTextNus, 0, $AddVoiceVolume, null);
	}

	//��������
	$LOCAL_text_interval=DurationTime($AddTextNus)/Strlen($AddTextText);
//	$AddTextText=String("<Interval time=%d>%s</Interval>",$LOCAL_text_interval,$AddTextText);
	Delete("ParVoice*");

	if(VariableValue(#,Substr($GameName,0,Strstr($GameName,".nss")-1)+"_Add"+$AddTextCount)){
		SetFont("�l�r�S�V�b�N", 28, FFFF75, 000001, 500, AROUND);
	}else{
		SetFont("�l�r�S�V�b�N", 28, FFFFFF, 222222, 500, AROUND);
	}
	$LoadTextWsize = 756;
	$WindXSize=1024;
	$TypeBeginTextX=($WindXSize-$LoadTextWsize)/2+30;
	$TypeBeginTextY=($AddTextLine-1)*40+450;

	if($AddTextPlay){
		$AddTextNut="AddText"+$AddTextClass+$AddTextLine;
	}else{
		$AddTextNut="LogText"+$AddTextClass+$AddTextLine;
	}

	CreateText($AddTextNut, 20001, $TypeBeginTextX, $TypeBeginTextY, Auto, Auto, $AddTextText);
	SetAlias($AddTextNut,$AddTextNut);
	Request($AddTextNut, NoLog);
	Request($AddTextNut, Erase);
	Request($AddTextNut, Hideable);
	Request($AddTextNut, Lock);

	if(!$AddTextPlay){
		Fade("LogText*", 0, 0, null, true);
		Request("LogText*", Enter);
		Request("LogText*", PushText);
	}

	if(!$AddTextVoice){
		SetBacklog($AddTextText, "NULL", "NULL");
	}else{
		$AddTextVoice="voice/"+$AddTextVoice;
		SetBacklog($AddTextText, $AddTextVoice, $AddTextClass);
	}
}



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
..TypeBeginD�������s�{�b�N�X�F�^�C�s���O��
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function TypeBeginD()
{
	$SYSTEM_position_x_text_icon=910;
	$SYSTEM_position_y_text_icon=536;

	//��������
	$SYSTEM_ignore_voice_sync_text=true;
	$SYSTEM_ignore_text_speed=true;

	VariableValue(#,Substr($GameName,0,Strstr($GameName,".nss")-1)+"_Add"+$AddTextCount,true);
	$AddTextCount++;
	if(#SYSTEM_sync_voice_and_text){
		$SYSTEM_text_interval=$LOCAL_text_interval;
	}

	$BoxFadeTime=150;

	$boxtype=$SYSTEM_present_preprocess;
	$textnumber=$SYSTEM_present_text;
	Request($textnumber, NoLog);

	Fade("@boxH",$BoxFadeTime,1000,null,false);

	if(!$PLACE_end){$SYSTEM_text_auto_lock=false;}

	//�{�C�X�Đ�
	Request("AddVoice*", Play);
	SetLoop("AddVoice*", false);
	Request("AddVoice*", Disused);

	//�����s�G���^�[
	Request("AddText*", Enter);

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	//�����s����
	Request("LogText*", UnLock);
	Request("AddText*", UnLock);
	Request("AddVoice*", UnLock);

	Fade("LogText*", 0, 0, null, true);
	Delete("LogText*");
	Fade("AddText*", 0, 0, null, true);
	Delete("AddText*");
	if(#SYSTEM_click_break_voice){
		Delete("AddVoice*");
	}
	$AddVoiceON=true;
	$AddTextTextIn=false;

	//����������������
	$SYSTEM_ignore_voice_sync_text=false;
	$SYSTEM_ignore_text_speed=false;
	$SYSTEM_text_interval=48;

	BoxOut();
}


//---------------------------------------------------------------//
..TypeAddText
//---------------------------------------------------------------//
function TypeAddText()
{
	Request($SYSTEM_present_text, NoLog);
	Request("AddText*", Enter);

	Request("AddVoice*", Play);
	SetLoop("AddVoice*", false);
	Request("AddVoice*", Disused);
}

//---------------------------------------------------------------//
..WaitAddText
//---------------------------------------------------------------//
function WaitAddText()
{
	Fade("LogText*", 0, 1000, null, false);
	Fade($SYSTEM_present_text, 0, 0, null, false);

	if(!#SYSTEM_auto_text_break_voice&&$SYSTEM_text_auto){
		WaitPlay("AddVoice*", null);
	}
}

//---------------------------------------------------------------//
..WaitAddText2
//---------------------------------------------------------------//
function WaitAddText2()
{
	if(!#SYSTEM_auto_text_break_voice&&$SYSTEM_text_auto){
		WaitPlay("AddVoice*", null);
	}
}

//---------------------------------------------------------------//
..DeleteAddText
//---------------------------------------------------------------//
function DeleteAddText()
{
	Request("LogText*", UnLock);
	Request("AddText*", UnLock);
	Request("AddVoice*", UnLock);

	Fade("LogText*", 0, 0, null, true);
	Delete("LogText*");
	Fade("AddText*", 0, 0, null, true);
	Delete("AddText*");
	if(#SYSTEM_click_break_voice){
		Delete("AddVoice*");
	}
	$AddVoiceON=true;
}




//��CreateTexture�̕ό`
//=============================================================================//
.//CreateTexture�n
//=============================================================================//

//���m�[�}��
//�����x0����X�^�[�g���顸CreateTexture���ł�
..CreateTextureEX
function CreateTextureEX($CreatePicEX_Nat, �`��D��x, $CreateTexEX_X, $CreateTexEX_Y, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture($CreatePicEX_Nat, �`��D��x, 1030, 0, $�C���[�W�f�[�^);
	Fade($CreatePicEX_Nat, 0, 0, null, true);

//���擾
	$CT_EXX = ImageHorizon($CreatePicEX_Nat);
//���擾
	$CT_EXY = ImageVertical($CreatePicEX_Nat);
//���擾���Q
	$CT_EXX2 = $CT_EXX-1024;
//���擾���Q
	$CT_EXY2 = $CT_EXY-768;
//���擾���S
	$CT_EXX2 = $CT_EXX2/2;
//���擾���S
	$CT_EXY2 = $CT_EXY2/2;
//Center�擾
	$CT_EX_Center = -($CT_EXX2);
//Middle�擾
	$CT_EX_Middle = -($CT_EXY2);
//Center�擾
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right�擾
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle�擾
	$CT_EX_Middle2 = 768-$CT_EXY;
//Right�擾
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom�擾
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	SetAlias($CreatePicEX_Nat, $CreatePicEX_Nat);

	if($CreateTexEX_X=="Center"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
//������1024
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
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
//������1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
//		$CreateTexEX_X = $CreateTexEX_X-1030;
		Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		Move($CreatePicEX_Nat, 0, $CreateTexEX_X, @0, null, true);
	}


//�c���֘A
	if($CreateTexEX_Y=="Middle"){
		if($CT_EXY == 768){
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 768){
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="middle"){
		if($CT_EXY == 768){
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 768){
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="InBottom"){
		if($CT_EXY != 768){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inBottom"){
		if($CT_EXY != 768){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inbottom"){
		if($CT_EXY != 768){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		Move($CreatePicEX_Nat, 0, @0, $CreateTexEX_Y, null, true);
	}

}

//�G�C���A�X�w�肪���������̡�CreateTexture���ł�
..CreateTextureSP
function CreateTextureSP("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^);
	SetAlias("�i�b�g��", "�i�b�g��");

}

//�����Z
//�����x0����X�^�[�g���顸CreateTexture���ł������Z�����t����
..CreateTextureEXadd
function CreateTextureEXadd($CreatePicEXadd_Nat, �`��D��x, $CreateTexEXadd_X, $CreateTexEXadd_Y, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture($CreatePicEXadd_Nat, �`��D��x, 1030, 0, $�C���[�W�f�[�^);

//���擾
	$CT_EXX = ImageHorizon($CreatePicEXadd_Nat);
//���擾
	$CT_EXY = ImageVertical($CreatePicEXadd_Nat);
//���擾���Q
	$CT_EXX2 = $CT_EXX-1024;
//���擾���Q
	$CT_EXY2 = $CT_EXY-768;
//���擾���S
	$CT_EXX2 = $CT_EXX2/2;
//���擾���S
	$CT_EXY2 = $CT_EXY2/2;
//Center�擾
	$CT_EX_Center = -($CT_EXX2);
//Middle�擾
	$CT_EX_Middle = -($CT_EXY2);
//Center�擾
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right�擾
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle�擾
	$CT_EX_Middle2 = 768-$CT_EXY;
//Right�擾
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom�擾
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXadd_Nat, AddRender);
	SetAlias($CreatePicEXadd_Nat, $CreatePicEXadd_Nat);
	Fade($CreatePicEXadd_Nat, 0, 0, null, true);

	if($CreateTexEXadd_X=="Center"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
//������1024
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
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXadd_Nat, 0, $CreateTexEXadd_X, @0, null, true);
	}


//�c���֘A
	if($CreateTexEXadd_Y=="Middle"){
		if($CT_EXY == 768){
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 768){
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="middle"){
		if($CT_EXY == 768){
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 768){
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="InBottom"){
		if($CT_EXY != 768){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inBottom"){
		if($CT_EXY != 768){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inbottom"){
		if($CT_EXY != 768){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXadd_Nat, 0, @0, $CreateTexEXadd_Y, null, true);
	}
}

//�G�C���A�X�w�肪���������̡�CreateTexture���ł������Z�����t����
..CreateTextureSPadd
function CreateTextureSPadd("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^);
	Request("�i�b�g��", AddRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}
//�����Z
//�����x0����X�^�[�g���顸CreateTexture���ł������Z�����t����
..CreateTextureEXsub
function CreateTextureEXsub($CreatePicEXsub_Nat, �`��D��x, $CreateTexEXsub_X, $CreateTexEXsub_Y, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture($CreatePicEXsub_Nat, �`��D��x, 1030, 0, $�C���[�W�f�[�^);

//���擾
	$CT_EXX = ImageHorizon($CreatePicEXsub_Nat);
//���擾
	$CT_EXY = ImageVertical($CreatePicEXsub_Nat);
//���擾���Q
	$CT_EXX2 = $CT_EXX-1024;
//���擾���Q
	$CT_EXY2 = $CT_EXY-768;
//���擾���S
	$CT_EXX2 = $CT_EXX2/2;
//���擾���S
	$CT_EXY2 = $CT_EXY2/2;
//Center�擾
	$CT_EX_Center = -($CT_EXX2);
//Middle�擾
	$CT_EX_Middle = -($CT_EXY2);
//Center�擾
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right�擾
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle�擾
	$CT_EX_Middle2 = 768-$CT_EXY;
//Right�擾
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom�擾
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXsub_Nat, SubRender);
	SetAlias($CreatePicEXsub_Nat, $CreatePicEXsub_Nat);
	Fade($CreatePicEXsub_Nat, 0, 0, null, true);

	if($CreateTexEXsub_X=="Center"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
//������1024
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
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXsub_Nat, 0, $CreateTexEXsub_X, @0, null, true);
	}


//�c���֘A
	if($CreateTexEXsub_Y=="Middle"){
		if($CT_EXY == 768){
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 768){
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="middle"){
		if($CT_EXY == 768){
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 768){
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="InBottom"){
		if($CT_EXY != 768){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inBottom"){
		if($CT_EXY != 768){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inbottom"){
		if($CT_EXY != 768){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXsub_Nat, 0, @0, $CreateTexEXsub_Y, null, true);
	}
}

//�G�C���A�X�w�肪���������̡�CreateTexture���ł������Z�����t����
..CreateTextureSPsub
function CreateTextureSPsub("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^);
	Request("�i�b�g��", SubRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//���I�[�o�[���C
//�����x0����X�^�[�g���顸CreateTexture���ł������Z�����t����
..CreateTextureEXover
function CreateTextureEXover($CreatePicEXover_Nat, �`��D��x, $CreateTexEXover_X, $CreateTexEXover_Y, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture($CreatePicEXover_Nat, �`��D��x, 1030, 0, $�C���[�W�f�[�^);

//���擾
	$CT_EXX = ImageHorizon($CreatePicEXover_Nat);
//���擾
	$CT_EXY = ImageVertical($CreatePicEXover_Nat);
//���擾���Q
	$CT_EXX2 = $CT_EXX-1024;
//���擾���Q
	$CT_EXY2 = $CT_EXY-768;
//���擾���S
	$CT_EXX2 = $CT_EXX2/2;
//���擾���S
	$CT_EXY2 = $CT_EXY2/2;
//Center�擾
	$CT_EX_Center = -($CT_EXX2);
//Middle�擾
	$CT_EX_Middle = -($CT_EXY2);
//Center�擾
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right�擾
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle�擾
	$CT_EX_Middle2 = 768-$CT_EXY;
//Right�擾
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom�擾
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXover_Nat, OverlayRender);
	SetAlias($CreatePicEXover_Nat, $CreatePicEXover_Nat);
	Fade($CreatePicEXover_Nat, 0, 0, null, true);

	if($CreateTexEXover_X=="Center"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
//������1024
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
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXover_Nat, 0, $CreateTexEXover_X, @0, null, true);
	}


//�c���֘A
	if($CreateTexEXover_Y=="Middle"){
		if($CT_EXY == 768){
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 768){
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="middle"){
		if($CT_EXY == 768){
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 768){
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="InBottom"){
		if($CT_EXY != 768){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inBottom"){
		if($CT_EXY != 768){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inbottom"){
		if($CT_EXY != 768){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXover_Nat, 0, @0, $CreateTexEXover_Y, null, true);
	}
}


//�G�C���A�X�w�肪���������̡�CreateTexture���ł����I�[�o�[���C�����t����
..CreateTextureSPover
function CreateTextureSPover("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^);
	Request("�i�b�g��", OverlayRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//����Z
//�����x0����X�^�[�g���顸CreateTexture���ł������Z�����t����
..CreateTextureEXmul
function CreateTextureEXmul($CreatePicEXmul_Nat, �`��D��x, $CreateTexEXmul_X, $CreateTexEXmul_Y, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture($CreatePicEXmul_Nat, �`��D��x, 1030, 0, $�C���[�W�f�[�^);

//���擾
	$CT_EXX = ImageHorizon($CreatePicEXmul_Nat);
//���擾
	$CT_EXY = ImageVertical($CreatePicEXmul_Nat);
//���擾���Q
	$CT_EXX2 = $CT_EXX-1024;
//���擾���Q
	$CT_EXY2 = $CT_EXY-768;
//���擾���S
	$CT_EXX2 = $CT_EXX2/2;
//���擾���S
	$CT_EXY2 = $CT_EXY2/2;
//Center�擾
	$CT_EX_Center = -($CT_EXX2);
//Middle�擾
	$CT_EX_Middle = -($CT_EXY2);
//Center�擾
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right�擾
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle�擾
	$CT_EX_Middle2 = 768-$CT_EXY;
//Right�擾
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom�擾
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXmul_Nat, MulRender);
	SetAlias($CreatePicEXmul_Nat, $CreatePicEXmul_Nat);
	Fade($CreatePicEXmul_Nat, 0, 0, null, true);

	if($CreateTexEXmul_X=="Center"){
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
//������1024
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
//������1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//������1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
//������1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXmul_Nat, 0, $CreateTexEXmul_X, @0, null, true);
	}


//�c���֘A
	if($CreateTexEXmul_Y=="Middle"){
		if($CT_EXY == 768){
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 768){
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="middle"){
		if($CT_EXY == 768){
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 768){
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="InBottom"){
		if($CT_EXY != 768){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inBottom"){
		if($CT_EXY != 768){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inbottom"){
		if($CT_EXY != 768){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXmul_Nat, 0, @0, $CreateTexEXmul_Y, null, true);
	}
}


//�G�C���A�X�w�肪���������̡�CreateTexture���ł�����Z�����t����
..CreateTextureSPmul
function CreateTextureSPmul("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^)
{
	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($�C���[�W�f�[�^);

	CreateTexture("�i�b�g��", �`��D��x, �w���W, �x���W, $�C���[�W�f�[�^);
	Request("�i�b�g��", MulRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}


//=============================================================================//
.//�w�i�E�C�x���g�E�d�e��p
//=============================================================================//

//���m�[�}��
//�����x0����X�^�[�g���顸CreateTexture���ł�
..OnBG
function OnBG(�`��D��x,$bgimagedata,$�p�b�`����)
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

	$bg�i�b�g = $BgNameN;

	if($�p�b�`����=="normal"){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else if($�p�b�`����=="path"){
		$bgimagedata = "cg2/bg/" + $bgimagedata + ".jpg";
//Path�ʉ߂����磬�������y09/01/29�z
		$�p�b�`����=="";
	}else if(!$�p�b�`����){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else{
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}

	//���b�f�f�o�b�O�p
	DEBUG_cgbgcorrect($bgimagedata);

	CreateTexture($bg�i�b�g, �`��D��x, Center, Middle, $bgimagedata);
	SetAlias($bg�i�b�g, $bg�i�b�g);
	Fade($bg�i�b�g, 0, 0, null, true);
}

...//FadeBG
function FadeBG($�`�掞��,$�҂�)
{
	if($BgNameN01!=""){$�i�b�g��=$BgNameN01;$BgNameN01="";}
	else if($BgNameN02!=""){$�i�b�g��=$BgNameN02;$BgNameN02="";}
	else if($BgNameN03!=""){$�i�b�g��=$BgNameN03;$BgNameN03="";}
	else if($BgNameN04!=""){$�i�b�g��=$BgNameN04;$BgNameN04="";}
	else if($BgNameN05!=""){$�i�b�g��=$BgNameN05;$BgNameN05="";}
	else if($BgNameN06!=""){$�i�b�g��=$BgNameN06;$BgNameN06="";}
	else if($BgNameN07!=""){$�i�b�g��=$BgNameN07;$BgNameN07="";}
	else if($BgNameN08!=""){$�i�b�g��=$BgNameN08;$BgNameN08="";}
	else if($BgNameN09!=""){$�i�b�g��=$BgNameN09;$BgNameN09="";}
	else if($BgNameN10!=""){$�i�b�g��=$BgNameN10;$BgNameN10="";}

	$BGP = 1;

	SetFont("�l�r ����", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);


//�`��}�N��
	PreFadeBG();

	$FaceBG2=$FaceBG;
	$FaceBG=$nutBG;
	$BGCP = 1;

	//�w��p
	$nutBG=$setBGnut;
	$nutBG2=$astBGnut;

	//�A�U�i�G���p�F�J�S���A�\�r�J���[
	if(#AnotherL){
		KagomeColorAuto(19000,300,true);
	}
}

...//PreFadeBG
function PreFadeBG()
{
	$BGnut = $�i�b�g��;

//�i�b�g���擾�@$picnut
		$picBGnut = $FaceBG;
//�O�i�b�g���擾�@$Prepicnut
		$PrepicBGnut = $FaceBG2;
//�O��`���������Ă邩�m�F�p
		$BGQ = $BGCP;

//��x��`�ς�+��`�t���O���������Ă���ꍇ
	if($BGP==1 && $BGQ==0){$FaceBG="������";}

//�O�i�b�g�����K��`
	$setBGnut = "@"+$BGnut;
//�i�b�g�����K��`
	$astBGnut = $nutBG;
//�O�i�b�g�����K��`
	$PreastBGnut ="@"+$PrepicBGnut;

	if($BGP!=0 && $BGQ==0 && $setBGnut!=$astBGnut && $astBGnut!=$PreastBGnut){Fade($astBGnut, 0, 0, null, false);}

	Fade($PreastBGnut, 0, 0, null, false);

	if($BGQ!=0 && $setBGnut!=$PreastBGnut && $astBGnut!=$PreastBGnut){Delete($PreastBGnut);}

	if($BGP==1 && $BGQ==0){
		Fade($setBGnut, $�`�掞��, 1000, null, false);
	}else if($BGP==1 && $setBGnut!=$astBGnut){
		Fade($astBGnut, $�`�掞��, 0, Axl3, false);
		Fade($setBGnut, $�`�掞��, 1000, Dxl2, false);
		Request($astBGnut, Disused);
	}else if($BGP==0){
		Fade($astBGnut, $�`�掞��, 0, null, false);
		Request($astBGnut, Disused);
	}

	if($�҂�==true)
	{
		WaitAction($setBGnut, null);

		if($StP==0){
			WaitAction($astBGnut, null);
		}

	}
	else if($�҂� != false)
	{
		Wait($�҂�);
	}
	else
	{
	}

}


//��CreateColor�̕ό`
//=============================================================================//
.//CreateColor�n
//=============================================================================//

//���m�[�}��
//�����x0����X�^�[�g���顸CreateColor���ł�
..CreateColorEX
function CreateColorEX("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{

	CreateColor("�i�b�g��", �`��D��x, 1024, 0, 1024, 768, �C���[�W�f�[�^);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Move("�i�b�g��", 0, @-1024, @0, null, true);

}

//�G�C���A�X�w�肪���������̡�CreateColor���ł�
..CreateColorSP
function CreateColorSP("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 0, 0, 1024, 768, �C���[�W�f�[�^);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//�����Z
//�����x0����X�^�[�g���顸CreateColor���ł������Z�����t����
..CreateColorEXadd
function CreateColorEXadd("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 1024, 0, 1024, 768, �C���[�W�f�[�^);
	Request("�i�b�g��", AddRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Move("�i�b�g��", 0, @-1024, @0, null, true);
}

//�G�C���A�X�w�肪���������̡�CreateColor���ł������Z�����t����
..CreateColorSPadd
function CreateColorSPadd("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 0, 0, 1024, 768, �C���[�W�f�[�^);
	Request("�i�b�g��", AddRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//�����Z
//�����x0����X�^�[�g���顸CreateColor���ł������Z�����t����
..CreateColorEXsub
function CreateColorEXsub("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 1024, 0, 1024, 768, �C���[�W�f�[�^);
	Request("�i�b�g��", SubRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Move("�i�b�g��", 0, @-1024, @0, null, true);
}

//�G�C���A�X�w�肪���������̡�CreateColor���ł������Z�����t����
..CreateColorSPsub
function CreateColorSPsub("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 0, 0, 1024, 768, �C���[�W�f�[�^);
	Request("�i�b�g��", SubRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}


//���I�[�o�[���C
//�����x0����X�^�[�g���顸CreateColor���ł����I�[�o�[���C�����t����
..CreateColorEXover
function CreateColorEXover("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 1024, 0, 1024, 768, �C���[�W�f�[�^);
	Request("�i�b�g��", OverlayRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Move("�i�b�g��", 0, @-1024, @0, null, true);
}

//�G�C���A�X�w�肪���������̡�CreateColor���ł����I�[�o�[���C�����t����
..CreateColorSPover
function CreateColorSPover("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 0, 0, 1024, 768, �C���[�W�f�[�^);
	Request("�i�b�g��", OverlayRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//����Z
//�����x0����X�^�[�g���顸CreateColor���ł�����Z�����t����
..CreateColorEXmul
function CreateColorEXmul("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 1024, 0, 1024, 768, �C���[�W�f�[�^);
	Request("�i�b�g��", MulRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Move("�i�b�g��", 0, @-1024, @0, null, true);
}

//�G�C���A�X�w�肪���������̡�CreateColor���ł�����Z�����t����
..CreateColorSPmul
function CreateColorSPmul("�i�b�g��", �`��D��x, �C���[�W�f�[�^)
{
	CreateColor("�i�b�g��", �`��D��x, 0, 0, 1024, 768, �C���[�W�f�[�^);
	Request("�i�b�g��", MulRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}



//��CreateMovie�̕ό`
//=============================================================================//
.//CreateMovie�n
//=============================================================================//

//���m�[�}��
//�����x0����X�^�[�g���顸CreateMovie���ł�
..CreateMovieEX
function CreateMovieEX("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
}

//�G�C���A�X�w�肪���������̡�CreateMovie���ł�
..CreateMovieSP
function CreateMovieSP("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	SetAlias("�i�b�g��", "�i�b�g��");
}

//�����Z
//�����x0����X�^�[�g���顸CreateMovie���ł������Z�����t����
..CreateMovieEXadd
function CreateMovieEXadd("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", AddRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
}

//�G�C���A�X�w�肪���������̡�CreateMovie���ł������Z�����t����
..CreateMovieSPadd
function CreateMovieSPadd("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", AddRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//�����Z
//�����x0����X�^�[�g���顸CreateMovie���ł������Z�����t����
..CreateMovieEXsub
function CreateMovieEXsub("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", SubRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
}

//�G�C���A�X�w�肪���������̡�CreateMovie���ł������Z�����t����
..CreateMovieSPsub
function CreateMovieSPsub("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", SubRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//���I�[�o�[���C
//�����x0����X�^�[�g���顸CreateMovie���ł����I�[�o�[���C�����t����
..CreateMovieEXover
function CreateMovieEXover("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", OverlayRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
}

//�G�C���A�X�w�肪���������̡�CreateMovie���ł����I�[�o�[���C�����t����
..CreateMovieSPover
function CreateMovieSPover("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", OverlayRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//����Z
//�����x0����X�^�[�g���顸CreateMovie���ł�����Z�����t����
..CreateMovieEXmul
function CreateMovieEXmul("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", MulRender);
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
}

//�G�C���A�X�w�肪���������̡�CreateMovie���ł�����Z�����t����
..CreateMovieSPmul
function CreateMovieSPmul("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^")
{
	CreateMovie("�i�b�g��", �`��D��x, �w���W, �x���W, ���[�v, ���`�����l��, "�C���[�W�f�[�^");
	Request("�i�b�g��", MulRender);
	SetAlias("�i�b�g��", "�i�b�g��");
}

//��CreateStencil�̕ό`
//=============================================================================//
.//CreateStencil�n
//=============================================================================//
//
..CreateStencilT
function CreateStencilT($�i�b�g���P,$�i�b�g���Q,�摜�D��x,�w�ʒu,�x�ʒu,$�摜�P,$�摜�Q)
{
	$�q�i�b�g��=$�i�b�g���P+"/"+$�i�b�g���Q;

	CreateStencil($�i�b�g���P,�摜�D��x,�w�ʒu,�x�ʒu,128,$�摜�P,false);
	CreateTexture($�q�i�b�g��,�摜�D��x,�w�ʒu,�x�ʒu,$�摜�Q);

	SetAlias($�i�b�g���P, $�i�b�g���P);
	SetAlias($�q�i�b�g��, $�i�b�g���Q);

	Fade($�i�b�g���P, 0, 0, null, false);
	Fade($�i�b�g���Q, 0, 0, null, true);
}

//
..CreateStencilC
function CreateStencilC($�i�b�g���P,$�i�b�g���Q,�摜�D��x,�w�ʒu,�x�ʒu,$�摜�P,$�摜�Q)
{
	$�q�i�b�g��=$�i�b�g���P+"/"+$�i�b�g���Q;

	CreateStencil($�i�b�g���P,�摜�D��x,�w�ʒu,�x�ʒu,128,$�摜�P,false);
	CreateColor($�q�i�b�g��, �摜�D��x, 0, 0, 1024, 768, $�摜�Q);

	SetAlias($�i�b�g���P, $�i�b�g���P);
	SetAlias($�q�i�b�g��, $�i�b�g���Q);

	Fade($�i�b�g���P, 0, 0, null, false);
	Fade($�i�b�g���Q, 0, 0, null, true);
}




//��CreateWindow�̕ό`
//=============================================================================//
.//CreateWindow�n
//=============================================================================//
//�G�C���A�X�w��̕t������`����
..CreateWindowEX
function CreateWindowEX($WindowNut, XPos, YPos, XSet, YSet, ����)
{
	CreateWindow($WindowNut, 0, XPos, YPos, XSet, YSet, ����);
	SetAlias($WindowNut,$WindowNut);
}

//��CreateProcess�̕ό`
//=============================================================================//
.//CreateProcess�n
//=============================================================================//
//�G�C���A�X�w��̕t������`����
..CreateProcessEX
function CreateProcessEX($ProcessNameNut, $ProcessNut)
{
	CreateProcess($ProcessNameNut, 0, 0, 0, $ProcessNut);
	SetAlias($ProcessNameNut,$ProcessNameNut);
}


//��CreateMask�̕ό`
//=============================================================================//
.//CreateMask�n
//=============================================================================//
//�G�C���A�X�w��̕t������`����
..CreateMaskEX
function CreateMaskEX($MaskNameNut, MPri, XPos, YPos, $MaskDataName, �e�q)
{
	CreateMask($MaskNameNut, MPri, XPos, YPos, $MaskDataName, �e�q);
	SetAlias($MaskNameNut,$MaskNameNut);
}


//���`��}�N��
//=============================================================================//
.//��ʓ]���p
//=============================================================================//
//��ʏ�ɂ��̃i�b�g�ȊO�S�Ă��c���Ȃ�
//�g�p����ۂ͐�΂ɡ�Pre���̊O�Ŏg�p���Ă�������
..PrintBG
function PrintBG("�i�b�g��",�`��D��x)
{
	CreateEffect("�i�b�g��", �`��D��x, 0, 0, 1024, 768, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", Lock);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("�i�b�g��", UnLock);
}

..PrintBG2
function PrintBG2("�i�b�g��")
{
	CreateTexture("�i�b�g��", 30000, 0, 0, "SCREEN");
	SetAlias("�i�b�g��", "�i�b�g��");
	Request("�i�b�g��", Lock);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("�i�b�g��", UnLock);
}

//���V�K�ǉ�����
//���֘A�͏����Ȃ��p��PrintBG
..PrintGO
function PrintGO("�i�b�g��",�`��D��x)
{
	CreateEffect("�i�b�g��", �`��D��x, 0, 0, 1024, 768, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", Lock);

	ByeDefault();
	ByeBye();

	Request("�i�b�g��", UnLock);
}

..CreatePlainSP
function CreatePlainSP("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 768, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);

}

..CreatePlainSPadd
function CreatePlainSPadd("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 768, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", AddRender);

}

..CreatePlainSPsub
function CreatePlainSPsub("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 768, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", SubRender);

}

..CreatePlainSPover
function CreatePlainSPover("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 768, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", OverlayRender);

}

..CreatePlainSPmul
function CreatePlainSPmul("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 768, "Plain");
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��",Passive);
	Request("�i�b�g��", MulRender);

}

..CreatePlainEX
function CreatePlainEX("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 768, "Plain");
	Request("�i�b�g��",Passive);
	Fade("�i�b�g��", 0, 0, null, true);
	SetAlias("�i�b�g��","�i�b�g��");

}

..CreatePlainEXadd
function CreatePlainEXadd("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 768, "Plain");
	Request("�i�b�g��",Passive);
	Fade("�i�b�g��", 0, 0, null, true);
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��", AddRender);

}

..CreatePlainEXsub
function CreatePlainEXsub("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 768, "Plain");
	Request("�i�b�g��",Passive);
	Fade("�i�b�g��", 0, 0, null, true);
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��", SubRender);

}

..CreatePlainEXover
function CreatePlainEXover("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 768, "Plain");
	Request("�i�b�g��",Passive);
	Fade("�i�b�g��", 0, 0, null, true);
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��", OverlayRender);

}

..CreatePlainEXmul
function CreatePlainEXmul("�i�b�g��",�D��x){

	CreateEffect("�i�b�g��", �D��x, 0, 0, 1024, 768, "Plain");
	Request("�i�b�g��",Passive);
	Fade("�i�b�g��", 0, 0, null, true);
	SetAlias("�i�b�g��","�i�b�g��");
	Request("�i�b�g��", MulRender);

}

//=============================================================================//
.//�����n
//=============================================================================//
..FadeDelete
function FadeDelete("�i�b�g��", ���v����, �e���|, �҂�)
{
	Fade("�i�b�g��", ���v����, 0, �e���|, �҂�);
	Request("�i�b�g��", UnLock);
	Request("�i�b�g��", Disused);

	TakeRatePicAuto();//���k���F�A�U�i�G���X�N���[��
}

..DrawDelete
function DrawDelete("�i�b�g��", ���v����, ���E, �e���|, "$�摜", �҂�)
{
	$Transition = "cg/data/" + "$�摜" + ".png";

	DrawTransition("�i�b�g��", ���v����, 1000, 0, ���E, �e���|, "$Transition", �҂�);
	Request("�i�b�g��", UnLock);
	Request("�i�b�g��", Disused);

	TakeRatePicAuto();//���k���F�A�U�i�G���X�N���[��
}

..PlayDelete
function PlayDelete($�v���C�i�b�g��, $PlayDeleteTime, $PlayWait)
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
		Fade($�v���C�i�b�g��, $PlayDeleteTime, 0, null, false);

		CreateProcess("�v���C�����P", 150, 0, 0, $PlayDeleteName);
		SetAlias("�v���C�����P", "�v���C�����P");
		Request("�v���C�����P", Start);
		Request("�v���C�����P", Disused);
	}else{
		Fade($�v���C�i�b�g��, $PlayDeleteTime, 0, null, true);

		Request($�v���C�i�b�g��, Stop);
		Delete($�v���C�i�b�g��);
	}
}

function PlayDeleteProcess1()
{
	Wait($PlayDeleteTime);
	Request($�v���C�i�b�g��, Stop);
	Delete($�v���C�i�b�g��);
}

function PlayDeleteProcess2()
{
	Wait($PlayDeleteTime);
	Request($�v���C�i�b�g��, Stop);
	Delete($�v���C�i�b�g��);
}

function PlayDeleteProcess3()
{
	Wait($PlayDeleteTime);
	Request($�v���C�i�b�g��, Stop);
	Delete($�v���C�i�b�g��);
}



//���ړ��Ȃǂ̏�ʓ]���Ɋւ���}�N��
//=============================================================================//
.//�Ó]�����n
//=============================================================================//

..//�Ó]�����n�x�[�X

//�g�p����ۂ͐�΂ɡ�Pre���̊O�Ŏg�p���Ă�������
..ClearFadeAll
function ClearFadeAll(���v����,�҂�)
{
	CreateColor("�N���A��", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("�N���A��", "�N���A��");
	Fade("�N���A��", 0, 0, null, true);

	Fade("�N���A��", ���v����, 1000, null, �҂�);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintFadeAll
function PrintFadeAll("�i�b�g��",���v����,�҂�)
{
	CreateColor("�i�b�g��", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Request("�i�b�g��", Lock);

	Fade("�i�b�g��", ���v����, 1000, null, �҂�);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("�i�b�g��", UnLock);
}


//�g�p����ۂ͐�΂ɡ�Pre���̊O�Ŏg�p���Ă�������
..ClearFadeNut
function ClearFadeNut(���v����,�҂�)
{
	CreateColor("�N���A��", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("�N���A��", "�N���A��");
	Fade("�N���A��", 0, 0, null, true);

	Fade("�N���A��", ���v����, 1000, null, �҂�);

	ByeDefault();
	ByeBye();

	Delete("�N���A��");
}

..PrintFadeNut
function PrintFadeNut("�i�b�g��",���v����,�҂�)
{
	CreateColor("�i�b�g��", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);

	Fade("�i�b�g��", ���v����, 1000, null, �҂�);

	ByeDefault();
	ByeBye();
}

//�g�p����ۂ͐�΂ɡ�Pre���̊O�Ŏg�p���Ă�������
..ClearDrawAll
function ClearDrawAll(���v����, ���E, $�摜, �҂�)
{
	CreateColor("�N���A��", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("�N���A��", "�N���A��");
	Fade("�N���A��", 0, 0, null, true);

	$Transition = "cg/data/" + $�摜 + ".png";
	Fade("�N���A��", 0, 1000, null, false);
	DrawTransition("�N���A��", ���v����, 0, 1000, ���E, null, $Transition, �҂�);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintDrawAll
function PrintDrawAll("�i�b�g��", ���v����, ���E, $�摜, �҂�)
{
	CreateColor("�i�b�g��", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);
	Request("�i�b�g��", Lock);

	$Transition = "cg/data/" + $�摜 + ".png";
	Fade("�i�b�g��", 0, 1000, null, false);
	DrawTransition("�i�b�g��", ���v����, 0, 1000, ���E, null, $Transition, �҂�);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("�i�b�g��", UnLock);
}


//�g�p����ۂ͐�΂ɡ�Pre���̊O�Ŏg�p���Ă�������
..ClearDrawNut
function ClearDrawNut(���v����, ���E, $�摜, �҂�)
{
	CreateColor("�N���A��", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("�N���A��", "�N���A��");
	Fade("�N���A��", 0, 0, null, true);

	$Transition = "cg/data/" + $�摜 + ".png";
	Fade("�N���A��", 0, 1000, null, false);
	DrawTransition("�N���A��", ���v����, 0, 1000, ���E, null, $Transition, �҂�);

	ByeDefault();
	ByeBye();

	Delete("�N���A��");
}

..PrintDrawNut
function PrintDrawNut("�i�b�g��", ���v����, ���E, $�摜, �҂�)
{
	CreateColor("�i�b�g��", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("�i�b�g��", "�i�b�g��");
	Fade("�i�b�g��", 0, 0, null, true);

	$Transition = "cg/data/" + $�摜 + ".png";
	Fade("�i�b�g��", 0, 1000, null, false);
	DrawTransition("�i�b�g��", ���v����, 0, 1000, ���E, null, $Transition, �҂�);

	ByeDefault();
	ByeBye();
}

..//�Ó]�����n���p

//�g�p����ۂ͐�΂ɡ�Pre���̊O�Ŏg�p���Ă�������
//�r�d����őΉ�
..ClearWaitAll
function ClearWaitAll($FadeSoundTime,�҂�����)
{
	CreateColor("�GClear_BlackWait", 24000, 0, 0, 1024, 768, "BLACK");
	SetAlias("�GClear_BlackWait", "�GClear_BlackWait");
	Fade("�GClear_BlackWait", 0, 0, null, true);

	Request("�GClear_BlackWait", Lock);


	$SoundTimeCFA=$FadeSoundTime+500;

	SetVolume("@SE*", $SoundTimeCFA, 0, null);
	SetVolume("SE*", $SoundTimeCFA, 0, null);
	SetVolume("@OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("@m*", $SoundTimeCFA, 0, null);
	Fade("�GClear_BlackWait", $FadeSoundTime, 1000, null, true);

	Wait(�҂�����);
	WaitPlay("@SE*",null);
	WaitPlay("@OnSE*",null);
	WaitPlay("SE*",null);
	WaitPlay("OnSE*",null);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("�GClear_BlackWait", UnLock);
	Delete("�GClear_BlackWait");
}



..MoveEX
function MoveEX("�i�b�g��", ���v����, $�w���W, $�x���W, �e���|, �҂�)
{
	$�w���W�v�� = - $�w���W;
	$�x���W�v�� = - $�x���W;

	$�w���W�}�C�i�X = "@" + $�w���W�v��;
	$�x���W�}�C�i�X = "@" + $�x���W�v��;

	$�w���W�v���X = "@" + $�w���W;
	$�x���W�v���X = "@" + $�x���W;

	Move("�i�b�g��", 0, $�w���W�}�C�i�X, $�x���W�}�C�i�X, null, true);
	Move("�i�b�g��", ���v����, $�w���W�v���X, $�x���W�v���X, �e���|, �҂�);
}





//���ϐ��������}�N���R�}���h
//=============================================================================//
.//������
//=============================================================================//
..ByeBye
function ByeBye()
{
//�������G�S����
	ByeAllSt();

//���w�i�p��OnBG��
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
}

..ByeDefault
function ByeDefault()
{
	Delete("@�G*");
	Delete("�G*");
	Delete("@OnBG*");
	Delete("OnBG*");
	Delete("@�w�i*");
	Delete("@FwNut*");

	//�A�U�i�G��
	Delete("@OnKG*");
	Delete("@RateWindow/*");
	Delete("@gameview");
}



//���G���f�B���O�֌W�̃}�N���R�}���h
//=============================================================================//
.//�G���f�B���O�֌W
//=============================================================================//
//=============================================================================//
..//���d�c�A�z
//=============================================================================//
function ArrayEND()
{
	Array($EndName,"�^��");
	AssocArray($EndName,"�^��");

	Array($EndName["�^��"],"Roll01","@uta01","cg/sys/ed/�G���h�e���b�v�w�i.png",6000,30000,0,1,"H",false,false);

//	Array($EndName["����"],"Roll01","@EndBGM01","BLACK",6200,60000,-576,1,"V","@EndBGM02",false);
//	Array($EndName["�^��"],"Roll01","@xsonged","BLACK",-3000,60000,-576,1,"V",false,false);
//	Array($EndName["�^��"],"Movie01",false,"WHITE",-3000,60000,-576,1,"V",false,false);

//	Array($EndName,"�p�Y��","���Q��","������","���S��","���X��","�����");
//	AssocArray($EndName,"�p�Y��","���Q��","������","���S��","���X��","�����");
//	Array($EndName["�p�Y��"],"Roll01","@xsonged","BLACK",-3000,60000,-768,1,"V",false,false);
//	Array($EndName["���Q��"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);
//	Array($EndName["������"],"Roll01","@xsonged","BLACK",-5000,60000,1024,3,"H",false,true);
//	Array($EndName["���S��"],"Roll01","@xsonged","BLACK",6000,60000,1124,3,"H",false,true);
//	Array($EndName["���X��"],"Roll01","@xsonged","BLACK",10000,60000,1024,3,"H",false,true);
//	Array($EndName["�����"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);

//���O�F�v���Z�X��
//���P�F�S��
//���Q�F�o�����̔w�i
//���R�F�Đ��b������
//���S�F�a�f�l�Q�T�ڂւ̃J�E���g
//���T�F���[���ʒu��������ɃP�c������
//���U�F�X�^�b�t���[���̐�
//���V�F�X�^�b�t���[���̌`����F����H����V��
//���W�F�Q�Ȃ��邩�Ȃ������L��ꍇ�͋Ȗ��𖳂��ꍇ�͡�false��
//���X�F���ŉ摜��؂�ւ��邩

//���O�|�F�t�F�[�h�摜����
//���P�|�F�ҋ@�b�����\���b�����O�摜�������q�E�E�F�C�g�E���摜�\���b���E�E�F�C�g��

//���U�|�F���[���摜������ENDRoll00�EENDRoll01�E�E�E��
//���V�|�F���[���摜�̃s�N�Z���Ԋu����

	//Array($EndName["����"][0],"logo.png");//���X��false�ňӖ�������
	//Array($EndName["����"][1],0,960,10,10);//���X��false�ňӖ�������
	//Array($EndName["����"][6],"�N���W�b�g_�V���[�g");
	//Array($EndName["����"][7],0);

	//Array($EndName["�^��"][0],"logo.png");//���X��false�ňӖ�������
	//Array($EndName["�^��"][1],0,960,10,10);//���X��false�ňӖ�������
	Array($EndName["�^��"][6],"�G���h�e���b�v");
	Array($EndName["�^��"][7],0);

/*
	Array($EndName["���Q��"][0],"logo.png");
	Array($EndName["���Q��"][1],0,960,10,10);
	Array($EndName["���Q��"][6],"���ގ}���[�g","staff01","staff02");
	Array($EndName["���Q��"][7],0,0,0);

	Array($EndName["���X��"][0],"logo.png");
	Array($EndName["���X��"][1],0,960,10,10);
	Array($EndName["���X��"][6],"���X�ۃ��[�g","staff01","staff02");
	Array($EndName["���X��"][7],0,0,0);

	Array($EndName["������"][0],"logo.png");
	Array($EndName["������"][1],0,960,10,10);
	Array($EndName["������"][6],"�������[�g�Q","staff01","staff02");
	Array($EndName["������"][7],0,0,0);

	Array($EndName["�����"][0],"logo.png");
	Array($EndName["�����"][1],0,960,10,10);
	Array($EndName["�����"][6],"�������[�g�Q","staff01","staff02");
	Array($EndName["�����"][7],0,0,0);

	Array($EndName["���S��"][0],"ev169_�����Ƃ̏o�.jpg","ev132_�΂���.jpg","ev133_�����ɒ��ތ�_c.jpg","ev008_�Ԏq������鏗.jpg","ev128_�a���̌�_b01.jpg","ev138_��̂̍Ŋ�_d.jpg","ev139_�����E�Q_a.jpg","ev101_�v�����[�O_a.jpg","ev103_���ގ}���t_a.jpg","ev268_���N�U�ƑΛ�������.jpg","ev106_�Y��ƌ����낷����_d.jpg","ev112_��������P�l���������鑺��.jpg","ev113_�T�[�L�b�g�M�o��_a.jpg","ev914_��Z�����R�������C�������}���^�[��.jpg","ev213_�i���Ƒ����̌���_b.jpg","ev221_��������𗁂тė���_b.jpg","ev230_�������Ⴍ�鑺��.jpg","ev239_���X�ۂ̍Ŋ�_d.jpg","ev251_����VS�␯���������.jpg","ev255_�쑾�����\���鑺��_a.jpg","ev256_�␯���̍Ŋ�_b.jpg","ev263_�������h���т���Ԓ�.jpg","ev266_�i�������S�̏΂�.jpg","logo.png");
	Array($EndName["���S��"][1],5,35,5,34,5,5,5,34,5,5,5,34,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,16,3,3);
	Array($EndName["���S��"][6],"�������[�g","staff01","staff02");
	Array($EndName["���S��"][7],0,200,50);
*/


//�f�o�b�O�p
	$RollDebug=false;
	if($RollDebug){
		$RollDebugAll=0;
		$RollDebugWhile=1;
		while(Count($EndName["���S��"][1])>$RollDebugWhile){
			$RollDebugAll=$RollDebugAll+$EndName["���S��"][1][$RollDebugWhile];
			$RollDebugWhile=$RollDebugWhile+2;
		}
		CreateText("�f�o�b�O���[��", 2000000, 50, 50, 700, 500, $RollDebugAll);
		WaitKey();
		Delete("�f�o�b�O���[��");
	}


	$LayerCount0=100000;//���n
	$LayerCount1=100010;//���[��
	$LayerCount2=100009;//�t�F�[�h�p�̊G
	if($EndName[$ENDNumber]=="���S��"){
		$LayerCount2=100011;//�t�F�[�h�p�̊G
	}
	$LayerCount9=200000;
}

//=============================================================================//
..//���d�c��`
//=============================================================================//
function TheEND($ENDNumber)
{
	QuickStop();

	//���A�z�z��
	ArrayEND();

	$EndBunbo=1000;
	$ENDBGM=$EndName[$ENDNumber][1];
	$ENDBack=$EndName[$ENDNumber][2];
	$TimeAdjust=$EndName[$ENDNumber][3];
	$LoopAdjust=$EndName[$ENDNumber][4];
	$LengthAdjust=$EndName[$ENDNumber][5];
	$ENDImage="end";
	$BGM��2=$EndName[$ENDNumber][8];

	//////////////////
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@uta*", 2000, 0, NULL);
	SetVolume("@m*", 2000, 0, NULL);
	if($ENDBGM!=false){
		SoundPlay($ENDBGM,1000,1000,true);
	}
	//////////////////

	//���w�i�����ւ�
	if($ENDBack!="EXTRA"){
		if($ENDBack=="BLACK"||$ENDBack=="WHITE"){
			CreateColor("ENDBack", $LayerCount0, 0, 0, 1024, 768, $ENDBack);
		}else{
			CreateTexture("ENDBack", $LayerCount0, 0, 0, $ENDBack);
		}
		SetAlias("ENDBack", "ENDBack");
		Fade("ENDBack", 0, 0, null, true);
		Request("ENDBack", Lock);
		Fade("ENDBack", 1000, 1000, null, true);
	
		//�����b�N�ݒu
		LockVideo(true);
		Delete("@*");
		Fade("@*", 0, 0, null, false);
		Fade("@*/*", 0, 0, null, false);
		Fade("@*/*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*/*", 0, 0, null, false);
		Fade("ENDBack", 0, 1000, null, true);
		//�����b�N�ݒu
		LockVideo(false);

		Request("ENDBack", UnLock);
	}

	if($EndName[$ENDNumber]=="���S��"){
		CreateTextureSP("ENDWindow", $LayerCount9, 25, 120, "cg/sys/ed/�G���h���[���p�C�x���g�{�J�V�z��.png");
		CreateTextureSP("ENDWindow2", $LayerCount2, 0, 0, "cg/sys/ed/�G���h���[���p�C�x���g�{�J�V�z��2.png");
	}

	//���d�c��`
	$RollNut=String("ClearRoll%02d",$ENDNumber);
	EndRollTexture();
	if(VariableValue(#,$RollNut)){
		SetRoll($EndProcess,$ENDBGM,false);
	}else{
		SetRoll($EndProcess,$ENDBGM,true);
		VariableValue(#,$RollNut,true);
	}

	//���E�o�[�ĊJ
	if($ENDNumber==0||$ENDNumber==1||$ENDNumber==2||$ENDNumber==4){
		Wait(5000);
		QuickStart();
	}
}

...//���e�N�X�`���n��`
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
	}else if($EndRoll=="Movie01"){
		$EndProcess="ProcessRoll01";
	}
}

//=============================================================================//
..//�����[���J�n
//=============================================================================//
function SetRoll($�����P�ʖ�,$BGM��,$�ҋ@)
{
	if(!$PreSetRoll){
		#play_speed_plus=#SYSTEM_play_speed;
		#SYSTEM_play_speed=3;
	
		$SYSTEM_text_auto=false;
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
	
		$SYSTEM_menu_lock=true;
	}


	if($EndRoll!="Movie01"){
		CreateProcess("�G���h���[���v���Z�X", 2000, 0, 0, $�����P�ʖ�);
		SetAlias("�G���h���[���v���Z�X", "�G���h���[���v���Z�X");
		CreateProcess("�G���h���[���̃v���Z�X", 150, 0, 0, "EndSong");
		SetAlias("�G���h���[���̃v���Z�X", "�G���h���[���̃v���Z�X");
	
		CreateColor("�F", $LayerCount9, 0, 0, 1024, 768, BLACK);
		SetAlias("�F", "�F");
		Fade("�F", 0, 0, null, true);
	
		$EndingSkip=false;
		Request("�G���h���[���v���Z�X", Start);
		Wait(5000);
		if($�ҋ@){WaitAction("�G���h���[���v���Z�X", null);}
	
		$SYSTEM_keydown_enter=false;
		$SYSTEM_l_button_down=false;
		select{
			if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
				break;
			}
		}
		$SYSTEM_l_button_down=false;
		$SYSTEM_keydown_enter=false;
	
		$EndingSkip=true;

		Request($BGM��, EntrustSuspend);
		SetVolume($BGM��, 6000, 0, NULL);

		if($EndName[$ENDNumber][8]!=false){
			Request($BGM��2, EntrustSuspend);
			SetVolume($BGM��2, 6000, 0, NULL);
		}
	}else{
		//���[�r�[
		CreateColor("�F", $LayerCount9, 0, 0, 1024, 768, BLACK);
		SetAlias("�F", "�F");
		Fade("�F", 0, 0, null, true);

		CreateMovie("ENDMovie",$LayerCount1,0,0,false,false,"dx/mv_axl_ED.ngs",500);
		SetAlias("ENDMovie", "ENDMovie");

		if(#LOCAL_break_play_movie&&!$�ҋ@){
			//Message("�f�o�b�O�p�E�B���h�E�P","�f�o�b�O�p�ł�",YESNOCANCE,EXCLAMATION);
			CreateProcess("�G���h���[���v���Z�X���[�r�[", 150, 0, 0, "EndMovie");
			SetAlias("�G���h���[���v���Z�X���[�r�[", "�G���h���[���v���Z�X���[�r�[");
			Request("�G���h���[���v���Z�X���[�r�[", Start);
		}
		WaitPlay("ENDMovie", null);

		Request("�G���h���[���v���Z�X���[�r�[", Stop);
		WaitAction("�G���h���[���v���Z�X���[�r�[", null);
		Delete("�G���h���[���v���Z�X���[�r�[");

		$SYSTEM_l_button_down=false;
		$SYSTEM_keydown_enter=false;
	}

	Wait(2000);
	Fade("@�F", 2000, 1000, null, true);

	Request("�G���h���[���v���Z�X", Stop);

	Fade("@�G���h���[��*",0,0,null,true);
	Delete("@�G���h���[��*");
	Delete("@END*");
	Fade("@�F", 0, 0, null, true);

	Delete("@�F");

	Wait(2000);

	if($EndName[$ENDNumber]!="���S��"){
		//$SYSTEM_menu_lock = false;
	}

	#SYSTEM_play_speed = #play_speed_plus;
	$SYSTEM_text_waitkey = true;

	$ClearL=true;
	#ClearG=true;

	$PLACE_end=false;
	$PreSetRoll=false;
}

function EndMovie()
{
	$SYSTEM_keydown_enter=false;
	$SYSTEM_l_button_down=false;

	while(1){
		if($SYSTEM_l_button_down||$SYSTEM_keydown_enter){
				Fade("@�F", 2000, 1000, null, true);
				Delete("@ENDMovie");
		}
		Wait(100);
	}
}

//=============================================================================//
..//�����[�������v���Z�X
//=============================================================================//

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
...//�ÓT�I�t�F�[�h�X�N���v�g
function TextureRoll01()
{
	if($EndName[$ENDNumber][9]){
		$ENDWhile=0;
		while(Count($EndName[$ENDNumber][0])>$ENDWhile){
			$nut=String("ENDTexture%02d",$ENDWhile);
			$img=$EndName[$ENDNumber][0][$ENDWhile];
	
			if($img=="WHITE"||$img=="BLACK"){
				CreateColor($nut, $LayerCount2, 0, 0, 1024, 768, $img);
			}else{
				$img="cg/sys/ed/thum/"+$img;

				if($EndName[$ENDNumber]=="���S��"){
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
			$EndStartPoint=768;
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

	SetLoop($BGM��, false);
	Request($BGM��, CompulsorySuspend);

	$����=RemainTime($BGM��);
	$����=$����+$TimeAdjust;
	if($����<$LoopAdjust){
		$EndExtension=true;
		$�b��=DurationTime($BGM��);
		$����+=$�b��;
		Request("@�G���h���[���̃v���Z�X", Start);
	}

	if($EndName[$ENDNumber][8]!=false){
		$����+=DurationTime($BGM��2);
		Request("@�G���h���[���̃v���Z�X", Start);
	}

//	WaitKey();

	if($EndName[$ENDNumber][7]!="F"){
		Move("@ENDRoll*",$����,@$EndMoveX,@$EndMoveY,null,false);
	}

//	WaitKey();

	$nut="����";

	if($EndName[$ENDNumber][9]){
		$EndOneTime=$����/$EndBunbo;
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

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
...//�ÓT�I���[���X�N���v�g
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

	SetLoop($BGM��, false);
	Request($BGM��, CompulsorySuspend);

	$����=RemainTime($BGM��);
	$����+=$TimeAdjust;
	if($����<$LoopAdjust){
		$EndExtension=true;
		$�b��=DurationTime($BGM��);
		$����+=$�b��;
		Request("@�G���h���[���̃v���Z�X", Start);
	}
	Move("@ENDRoll",$����,@0,@$EndMoveB,null,true);
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
...//�ÓT�I���[���X�N���v�g�F��
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

	SetLoop($BGM��, false);
	Request($BGM��, CompulsorySuspend);

	$����=RemainTime($BGM��);
	$����+=$TimeAdjust;
	if($����<$LoopAdjust){
		$EndExtension=true;
		$�b��=DurationTime($BGM��);
		$����+=$�b��;
		Request("@�G���h���[���̃v���Z�X", Start);
	}
	Move("@ENDRoll",$����,@$EndMoveA,@0,null,true);
}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�G���h�X�N���v�g�p�̉��p���v���Z�X
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
function EndSong()
{
	if($EndExtension){
		$EndTime=RemainTime($BGM��);
		Wait($EndTime);
	
		SetVolume($BGM��, 1000, 0, NULL);
		WaitAction($BGM��, null);
	
		SetFrequency($BGM��, 0, 1000, NULL);
		SetVolume($BGM��, 0, 500, null);
		SetLoop($BGM��, false);
		Request($BGM��, Play);
	}

	if($EndName[$ENDNumber][8]!=false){
		WaitPlay($BGM��, null);
	
		if(!$EndingSkip){
			Request($BGM��2, CompulsorySuspend);
	
			SetFrequency($BGM��2, 0, 1000, NULL);
			SetVolume($BGM��2, 0, 500, null);
			SetLoop($BGM��2, false);
			Request($BGM��2, Play);
	
			WaitPlay($BGM��2, null);
		}
	}
}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//=============================================================================//
..//�����[���������Ō�Ƀ��b�N����ꍇ��
//=============================================================================//
function PreSetRoll($ENDNumber)
{
	//���E�o�[��~
	QuickStop();

	//���A�z�z��
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,750,true);

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
	//���E�o�[��~
	QuickStop();

	//���A�z�z��
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
..//�����[���������r������N���b�N���b�N����ꍇ��
//=============================================================================//
function PreTextRoll($ENDNumber)
{
	//���E�o�[��~
	QuickStop();

	//���A�z�z��
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 5000, 0, NULL);
	SoundPlay($ENDBGM,0,750,true);

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

function PlayVOICE_ED($VoiceClassNut,$���y�f�[�^,$VoiceWaitPlus1,$VoiceWaitPlus2)
{
//<voice name="�f�l�u" class="�f�l�u" src="voice/st20/0600220de" mode="off">

	$�N���X��=$VoiceClassNut;

	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(#VoiceName[$VoiceWhile]==$�N���X��){
			//$VoiceGet=true;
		}
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$�N���X��){
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&VariableValue(#,"voice_on_"+$�N���X��))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){}

	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+$�N���X��+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$�ꏊ�w�� = "voice/" + $���y�f�[�^;

		CreateSound($VoiceClassNut, VOICE, $�ꏊ�w��);
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
	$�҂�����=RemainTime($VoiceClassNut);
	$�҂�����+=$VoiceWaitPlus;
	Wait($�҂�����);
	Delete($VoiceClassNut);
}

/*
	PlayVOICE_ED("�f�l�u","voice/st20/0600220de",1000,3000);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box00>
[text0010028]
//�y�f�l�u�z
<voice name="�f�l�u" class="�f�l�u" src="voice/st20/0600220de" mode="off">
������ꂿ������\�\��
{StopVOICEED();}
</PRE>
	SetText();
	TypeBegin();//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
=
*/



//�����֌W�̃}�N���R�}���h
//=============================================================================//
.//���֌W
//=============================================================================//

// ��`
function CreateBGM($�a�f�l�i�b�g,$���y�f�[�^)
{
	BGMbase();
}
function CreateBGMEX($�a�f�l�i�b�g,$���y�f�[�^,�J�n�~���b,�I���~���b)
{
	BGMbase();
	SetLoopPoint($�a�f�l�i�b�g,�J�n�~���b,�I���~���b);
}
function BGMbase()
{
	$�ꏊ�w�� = "sound/bgm/" + $���y�f�[�^;
	CreateSound($�a�f�l�i�b�g, BGM, $�ꏊ�w��);
	SetVolume($�a�f�l�i�b�g, 0, 0, NULL);
	SetAlias($�a�f�l�i�b�g, $�a�f�l�i�b�g);
}




function CreateBGM_ef($�a�f�l�i�b�g�P,$���y�f�[�^)
{
	BGMbase_ef();
}
function CreateBGMEX_ef($�a�f�l�i�b�g�P,$���y�f�[�^,�J�n�~���b,�I���~���b)
{
	BGMbase_ef();
	SetLoopPoint($�a�f�l�i�b�g�P,�J�n�~���b,�I���~���b);
	SetLoopPoint($�a�f�l�i�b�g�Q,�J�n�~���b,�I���~���b);
}
function BGMbase_ef()
{
	$�ꏊ�w�� = "sound/bgm/" + $���y�f�[�^;
	CreateSound($�a�f�l�i�b�g�P, BGM, $�ꏊ�w��);
	SetVolume($�a�f�l�i�b�g�P, 0, 0, NULL);
	SetAlias($�a�f�l�i�b�g�P, $�a�f�l�i�b�g�P);
	Request($�a�f�l�i�b�g�P, Lock);

	$�a�f�l�i�b�g�Q=$�a�f�l�i�b�g�P+"_ef";
	CreateSound($�a�f�l�i�b�g�Q, BGM, $�ꏊ�w��);
	SetVolume($�a�f�l�i�b�g�Q, 0, 0, NULL);
	SetAlias($�a�f�l�i�b�g�Q, $�a�f�l�i�b�g�Q);
	Request($�a�f�l�i�b�g�Q, Lock);

	//SoundEffect("�i�b�g��","Chorus",�h���C0�`�E�F�b�g100,���˂�0~100,�t�B�[�h�o�b�N-99~99,�f�B���C�^�C��0~20);
	//SoundEffect($�a�f�l�i�b�g�Q,"Chorus",50,50,-90,10);
	//SoundEffect($�a�f�l�i�b�g�Q,"Chorus",50,50,-90,10);

	//SoundEffect("�i�b�g��","Echo",�h���C0�`�E�F�b�g100,�t�B�[�h�o�b�N0~100,���`�����l���f�B���C��1~2000�~���b��,�E�`�����l���f�B���C��1~2000�~���b��);
	//SoundEffect($�a�f�l�i�b�g�Q,"Echo",60,70,230,230);
	SoundEffect($�a�f�l�i�b�g�Q,"Echo",60,70,170,170);
}


function CreateBGMPX("�i�b�g��",$���y�f�[�^)
{
	$�ꏊ�w�� = $���y�f�[�^;
	CreateSound("�i�b�g��", BGM, $�ꏊ�w��);
	SetVolume("�i�b�g��", 0, 0, NULL);
	SetAlias("�i�b�g��", "�i�b�g��");
}

function CreateBGMSE("�i�b�g��",$���y�f�[�^)
{
	$�ꏊ�w�� = "sound/bgm/" + $���y�f�[�^;
	CreateSound("�i�b�g��", SE, $�ꏊ�w��);
	SetVolume("�i�b�g��", 0, 0, NULL);
	SetAlias("�i�b�g��", "�i�b�g��");
}






..OnSE
function OnSE($���y�f�[�^,$�r�d����)
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

	$�i�b�g�� = $SeName;

	$�ꏊ�w�� = "sound/se/" + $���y�f�[�^;

	CreateSound($�i�b�g��, SE, $�ꏊ�w��);
	SetVolume($�i�b�g��, 0, 0, NULL);
	SetAlias($�i�b�g��, $�i�b�g��);

	Request($�i�b�g��, "Play");

	SetFrequency($�i�b�g��, 0, 1000, NULL);
	SetPan($�i�b�g��, 0, 0, NULL);
	SetLoop($�i�b�g��, false);

	SetVolumeEX($�i�b�g��, 0, $�r�d����, null);
	Request($�i�b�g��, Disused);

}

..CreateSE
function CreateSE("�i�b�g��",$���y�f�[�^)
{
	$�ꏊ�w�� = "sound/se/" + $���y�f�[�^;

	CreateSound("�i�b�g��", SE, $�ꏊ�w��);
	SetVolume("�i�b�g��", 0, 0, NULL);
	SetAlias("�i�b�g��", "�i�b�g��");
}

..CreateSEEX
function CreateSEEX("�i�b�g��",$���y�f�[�^)
{
	$�ꏊ�w�� = "sound/se/" + "$���y�f�[�^";

	if($���y�f�[�^=="se�퓬_�U��_�G�l���M�[驂�����01_L"){
		$�J�n�~���b=5833;
		$�I���~���b=17267;
	}else if($���y�f�[�^=="se�퓬_�U��_�Z_����05_L"){
		$�J�n�~���b=4618;
		$�I���~���b=22538;
	}else if($���y�f�[�^=="se����_�A�`_���[���K����_����"){
		$�J�n�~���b=1536;
		$�I���~���b=9301;
	}else if($���y�f�[�^=="se�퓬_�r�e�f_�U��02_L"){
		$�J�n�~���b=5325;
		$�I���~���b=8294;
	}else if($���y�f�[�^=="se�敨_��s�D_�����J�n_L"){
		$�J�n�~���b=15871;
		$�I���~���b=18810;
	}else if($���y�f�[�^=="se�퓬_�U��_���@�U��_�e��01"){
		$�J�n�~���b=7146;
		$�I���~���b=23621;
	}else if($���y�f�[�^=="se_�퓬_�����ō�a00"){
		//�S�L�X�����C�N����
		$�J�n�~���b=88;
		$�I���~���b=20893;
	}else if($���y�f�[�^=="se_�퓬_�����ō�b00"){
		//�S�L�X�����C�N����
		$�J�n�~���b=222;
		$�I���~���b=20136;
	}else if($���y�f�[�^=="se_�퓬_�����ō�c00"){
		//�S�L�X�����C�N����
		$�J�n�~���b=80;
		$�I���~���b=17656;
	}

	CreateSound("�i�b�g��", SE, "$�ꏊ�w��");
	SetVolume("�i�b�g��", 0, 0, NULL);
	SetAlias("�i�b�g��", "�i�b�g��");
	SetLoopPoint("�i�b�g��",$�J�n�~���b,$�I���~���b);
}

..CreateVOICE
function CreateVOICE($�i�b�g��,$���y�f�[�^)
{
	$�N���X��=$�i�b�g��;

	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$�N���X��){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$�ꏊ�w�� = "voice/" + $���y�f�[�^;

		CreateSound($�i�b�g��, VOICE, $�ꏊ�w��);
		SetVolume($�i�b�g��, 0, 0, NULL);
		SetAlias($�i�b�g��, $�i�b�g��);
	}
}

..CreateVOICEEX
function CreateVOICEEX($�i�b�g��,$���y�f�[�^,$�N���X��)
{
	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$�N���X��){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}


	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$�ꏊ�w�� = "voice/" + $���y�f�[�^;

		CreateSound($�i�b�g��, VOICE, $�ꏊ�w��);
		SetVolume($�i�b�g��, 0, 0, NULL);
		SetAlias($�i�b�g��, $�i�b�g��);
	}
}


// �Đ�
..SoundPlay
function SoundPlay($SoundPlayName,�b��,$�{���E��,���[�v�ݒ�)
{
	if(PassageTime($SoundPlayName)<1){
		SetVolume($SoundPlayName, 0, 1, null);
	}

	//SetStream("@m13", 15020);
	//SetStream("@m13_ef", 15020);

	//�G�t�F�N�g�d�l
	$bgmmoji=Strstr($SoundPlayName, "m");
	if($bgmmoji==1||$bgmmoji==2){
		$SoundPlayName2=$SoundPlayName+"_ef";
		Request($SoundPlayName2, Stop);
		SetLoop($SoundPlayName2, ���[�v�ݒ�);
		SetVolume($SoundPlayName2, 0, 1, null);
		Request($SoundPlayName2, Play);
	}

	Request($SoundPlayName, Play);

	SetFrequency($SoundPlayName, 0, 1000, null);
//	SetPan($SoundPlayName, 0, 0, NULL);
	SetLoop($SoundPlayName, ���[�v�ݒ�);

	SetVolumeEX($SoundPlayName, �b��, $�{���E��, null);


	Request($SoundPlayName, Disused);
}



..MusicStart
function MusicStart($MusicStartName,�b��,$�{���E��,�Đ�����,�Đ��X�s�[�h,�e���|,���[�v�ݒ�)
{
	//�G�t�F�N�g�d�l
	$bgmmoji=Strstr($MusicStartName, "m");
	if($bgmmoji==1||$bgmmoji==2){
		$MusicStartName2=$MusicStartName+"_ef";
		Request($MusicStartName2, Stop);
		SetLoop($MusicStartName2, ���[�v�ݒ�);
		SetVolume($MusicStartName2, 0, 1, null);
		Request($MusicStartName2, Play);
	}

	Request($MusicStartName, Play);

	SetFrequency($MusicStartName, 0, �Đ��X�s�[�h, NULL);
	SetPan($MusicStartName, 0, �Đ�����, NULL);
	SetLoop($MusicStartName, ���[�v�ݒ�);

	SetVolumeEX($MusicStartName, �b��, $�{���E��, �e���|);

	Request($MusicStartName, Disused);
}

..SetVolumeEX
function SetVolumeEX("�i�b�g", �b��, $�{���E��, �e���|)
{
	$DynamicRange=$�{���E��/2;
	if($�{���E��==1){
		$DynamicRange=1;
	}
	SetVolume("�i�b�g", �b��, $DynamicRange, �e���|);
}

function SoundLoopEnd($�i�b�g��)
{
	SetLoop($�i�b�g��, false);
	SetLoopPoint($�i�b�g��,0,999999);
}

..SetVolumeEF
function SetVolumeEF($SetVolumeName,$�{���E��)
{
	$DynamicRange=$�{���E��/2;
	if($�{���E��==1){
		$DynamicRange=1;
	}

	$SetVolumeName2=$SetVolumeName+"_ef";
	SetVolume($SetVolumeName, 0, 0, null);
	SetVolume($SetVolumeName2, 0, $DynamicRange, null);
	Request($SetVolumeName2, Pause);
}




//��BGM��Z�߂Ē�`
//=============================================================================//
.//BGM��`
//=============================================================================//

function InitBGM()
{

//��`

//	CreateBGM("EndBGM01","m14");
//	Request("EndBGM01", Lock);
//	CreateBGM("EndBGM02","m01");
//	Request("EndBGM02", Lock);

	CreateBGMEX_ef("m01","m01",391,216640);
	CreateBGM_ef("m01no_f","m01no_f");//���g�p
	CreateBGMEX_ef("m02","m02",14407,142429);
//	CreateBGMEX_ef("m03","m03",000,000);
	CreateBGMEX_ef("m03a","m03a",374,171803);//���g�p
	CreateBGMEX_ef("m03","m03b",379,171748);//����m03�Ɠ������ۂ��̂œ�������
	CreateBGMEX_ef("m04","m04",34616,254038);
	CreateBGMEX_ef("m04melody","m04melody",95,192105);
	CreateBGMEX_ef("m05","m05",306,208301);
	CreateBGMEX_ef("m06","m06",349,203167);
	CreateBGMEX_ef("m07","m07",352,244593);
	CreateBGM_ef("m08","m08");//���g�p
	CreateBGMEX_ef("m08a","m08a",3007,176353);
	CreateBGMEX_ef("m08b","m08b",3009,176353);
	CreateBGMEX_ef("m09","m09",7618,198363);
	CreateBGMEX_ef("m10","m10",15562,204863);
	CreateBGMEX_ef("m11","m11",273,169857);
	CreateBGMEX_ef("m12","m12",6461,169455);
	CreateBGMEX_ef("m13","m13",302,221927);
	CreateBGMEX_ef("m13b","m13b",206907,428533);//���[�ł��������f�ޔ�

	CreateBGM_ef("uta01","uta01");
	CreateBGM_ef("uta02","uta02");

//	CreateBGMEX_ef("m91","m91",14003,45999););
}




function VoiceOn(){

	#��̓N���A=true;
	#voice_on_���l�i��=true;
	#voice_on_����=true;
	#voice_on_�V�c�Y��=true;
	#voice_on_�����쏬��=true;
	#voice_on_��钉��=true;
	#voice_on_���ߖ@=true;
	#voice_on_�咹���ގ}=true;
	#voice_on_�i�q����=true;
	#voice_on_������=true;
	#voice_on_��Ԓ��ꑠ=true;
	#voice_on_�^��=true;
	#voice_on_����E��=true;
	#voice_on_�����Y=true;
	#voice_on_�팹��=true;
	#voice_on_�ӂ�=true;
	#voice_on_�ӂ�=true;
	#voice_on_�����쎁=true;
	#voice_on_�咹���q��=true;
	#voice_on_�V�����S=true;
	#voice_on_���엋��=true;
	#voice_on_�������X��=true;
	#voice_on_����=true;
	#voice_on_�L���m��=true;
	#voice_on_�K�[�Q�b�g=true;
	#voice_on_���a�{=true;
	#voice_on_�c�H��=true;
	#voice_on_�c�H��=true;
	#voice_on_�񐢑���=true;
	#voice_on_������ō�=true;
	#voice_on_�F�{=true;
	#voice_on_��������=true;
	#voice_on_�`��=true;
	#voice_on_�]=true;
	#voice_on_�F�l�{��=true;
	#voice_on_���l��=true;
	#voice_on_�R���̎��=true;
	#voice_on_��̂̒�=true;
	#voice_on_���@=true;
	#voice_on_�������q=true;
	#voice_on_�����M��=true;
	#voice_on_�E�B���[=true;
	#voice_on_�������q=true;
	#voice_on_�R�u�f��=true;
	#voice_on_�E�H���t=true;
	#voice_on_�i�q��=true;
	#voice_on_�咹�Ԏ}=true;
	#voice_on_�n�c����=true;
	#voice_on_�O��=true;
	#voice_on_�Y��=true;
	#voice_on_�T�V���A���g=true;
	#voice_on_�I�[���K=true;
	#voice_on_�ǎ��̌�=true;
	#voice_on_�␯��=true;
	#voice_on_���̑��j��=true;
	#voice_on_���̑�����=true;

}





//�����e���J�ډ�ʒ�`
//=============================================================================//
.//���e���J�ډ�ʒ�`
//=============================================================================//
//�摜���擾���܂����g�p��͕K���������Ă���������
function TakeRateImg()
{
	Fade("@Oclock*", 0, 0, null, true);
	Fade("@Oclock*/*", 0, 0, null, true);
	Fade("@text*", 0, 0, null, true);

	QuickStop();

	WriteImage(String("%s/%s.img",#SYSTEM_save_path,Substr($GameName,0,Strstr($GameName,".nss")-1)));
	WaitKey();
}

//��FadeDelete����DrawDelete�����̉ӏ��Ŏ����I�ɉ摜���擾���܂�
function TakeRatePicAuto()
{
	if($RateTakenModeAuto){
		Fade("@Oclock*", 0, 0, null, true);
		Fade("@Oclock*/*", 0, 0, null, true);
		Fade("@text*", 0, 0, null, true);

		QuickStop();

		WriteImage(String("%s/%s.img",#SYSTEM_save_path,$FolderName));

		SetVolume("@*", 100, 0, NULL);
		Delete("*");
		Delete("@*");

		Escape(4);
	}
}

//�C�ӂ̏ꏊ�Ŏ����I�ɉ摜���擾���܂�
function TakeRatePic()
{
	if($RateTakenMode){
		Fade("@Oclock*", 0, 0, null, true);
		Fade("@Oclock*/*", 0, 0, null, true);
		Fade("@text*", 0, 0, null, true);

		QuickStop();

		WriteImage(String("%s/%s.img",#SYSTEM_save_path,$FolderName));

		SetVolume("@*", 100, 0, NULL);
		Delete("*");
		Delete("@*");

		Escape(3);
	}
}

//RateTakenMode�őJ�ڒ������������e�L�X�g�܂ł��ǂ蒅�����ꍇ
function TakeRateBack()
{
	if($RateTakenMode){
		SetVolume("@*", 100, 0, NULL);
		Delete("*");
		Delete("@*");
		Escape(4);
	}
}

//�\���p
function FadeRateImg($FolderNameIn)
{
	$FadeRateStr=Strstr($FolderNameIn,".nss");

	if($FadeRateStr){
		$FadeRateText=Substr($FolderNameIn,0,$FadeRateStr-1);
	}else{
		$FadeRateText=$FolderNameIn
	}

	$RateCountmg=String("%s/%s.img","cg/sys/rate/thum",$FadeRateText);
	CreateTexture("@RateWindow/thum",30000,0,0,$RateCountmg);
}







//�J�n�X�N���v�g�擪�Ŏ��̍s����������ύX
function GameRate()
{
	#SYSTEM_save_thumbnail_width=1024;
	#SYSTEM_save_thumbnail_height=768;

	if($KagomeTex==329){
		$SYSTEM_text_auto=false;
		$SYSTEM_skip=false;
		WaitKey();
	}else{
		$SYSTEM_text_auto_lock=false;
		$SYSTEM_skip_lock=false;
		$SYSTEM_text_auto=false;
		#SYSTEM_skip_absolute = true;
		$SYSTEM_skip=true;
	}

	$KagomeTex++;
	TakeRateFolder();

	$GameName=$FolderName+".nss";
}



function TakeRateFolder()
{
	if($KagomeTex==1){$FolderName="1800�m�[�R";}
	else if($KagomeTex==2){$FolderName="1800�t�E��";}
	else if($KagomeTex==3){$FolderName="1800�b��";}
	else if($KagomeTex==4){$FolderName="1800���g��";}
	else if($KagomeTex==5){$FolderName="1800����";}
	else if($KagomeTex==6){$FolderName="1800��H";}
	else if($KagomeTex==7){$FolderName="1810�m�[�R_�t�E��";}
	else if($KagomeTex==8){$FolderName="1810���g��";}
	else if($KagomeTex==9){$FolderName="1810����";}
	else if($KagomeTex==10){$FolderName="1820�m�[�R";}
	else if($KagomeTex==11){$FolderName="1820�t�E��";}
	else if($KagomeTex==12){$FolderName="1820�b��";}
	else if($KagomeTex==13){$FolderName="1820��H";}
	else if($KagomeTex==14){$FolderName="1830�t�E��";}
	else if($KagomeTex==15){$FolderName="1830�b��";}
	else if($KagomeTex==16){$FolderName="1830����_�m�[�R";}
	else if($KagomeTex==17){$FolderName="1830��H";}
	else if($KagomeTex==18){$FolderName="1840���g��";}
	else if($KagomeTex==19){$FolderName="1840����_�m�[�R_h";}
	else if($KagomeTex==20){$FolderName="1850�b��";}
	else if($KagomeTex==21){$FolderName="1850���g��";}
	else if($KagomeTex==22){$FolderName="1850��H_�t�E��";}
	else if($KagomeTex==23){$FolderName="1900�m�[�R";}
	else if($KagomeTex==24){$FolderName="1900�t�E��";}
	else if($KagomeTex==25){$FolderName="1900�b��";}
	else if($KagomeTex==26){$FolderName="1900���g��";}
	else if($KagomeTex==27){$FolderName="1900����";}
	else if($KagomeTex==28){$FolderName="1900��H";}
	else if($KagomeTex==29){$FolderName="1910�m�[�R_�t�E��";}
	else if($KagomeTex==30){$FolderName="1910�b��";}
	else if($KagomeTex==31){$FolderName="1910���g��_��H";}
	else if($KagomeTex==32){$FolderName="1920�b��";}
	else if($KagomeTex==33){$FolderName="1920���g��_��H";}
	else if($KagomeTex==34){$FolderName="1920����_�m�[�R_�t�E��";}
	else if($KagomeTex==35){$FolderName="1930�m�[�R";}
	else if($KagomeTex==36){$FolderName="1930�t�E��";}
	else if($KagomeTex==37){$FolderName="1930�b��";}
	else if($KagomeTex==38){$FolderName="1930���g��";}
	else if($KagomeTex==39){$FolderName="1930����";}
	else if($KagomeTex==40){$FolderName="1930��H";}
	else if($KagomeTex==41){$FolderName="1940�m�[�R";}
	else if($KagomeTex==42){$FolderName="1940�b��";}
	else if($KagomeTex==43){$FolderName="1940����";}
	else if($KagomeTex==44){$FolderName="1940��H";}
	else if($KagomeTex==45){$FolderName="1942���g��_�m�[�R";}
	else if($KagomeTex==46){$FolderName="1943�m�[�R";}
	else if($KagomeTex==47){$FolderName="1943���g��";}
	else if($KagomeTex==48){$FolderName="1948���g��_�m�[�R";}
	else if($KagomeTex==49){$FolderName="1949�m�[�R";}
	else if($KagomeTex==50){$FolderName="1949���g��";}
	else if($KagomeTex==51){$FolderName="1950�m�[�R";}
	else if($KagomeTex==52){$FolderName="1950�t�E��";}
	else if($KagomeTex==53){$FolderName="1950�b��";}
	else if($KagomeTex==54){$FolderName="1950���g��_����";}
	else if($KagomeTex==55){$FolderName="2000�m�[�R";}
	else if($KagomeTex==56){$FolderName="2000���g��";}
	else if($KagomeTex==57){$FolderName="2000����";}
	else if($KagomeTex==58){$FolderName="2000��H_�b��";}
	else if($KagomeTex==59){$FolderName="2007��H_�b��_�m�[�R";}
	else if($KagomeTex==60){$FolderName="2008�m�[�R";}
	else if($KagomeTex==61){$FolderName="2008��H_�b��";}
	else if($KagomeTex==62){$FolderName="2010�m�[�R";}
	else if($KagomeTex==63){$FolderName="2010���g��_�t�E��";}
	else if($KagomeTex==64){$FolderName="2010����";}
	else if($KagomeTex==65){$FolderName="2010��H_�b��";}
	else if($KagomeTex==66){$FolderName="2020�J�S��1";}
	else if($KagomeTex==67){$FolderName="2020�m�[�R";}
	else if($KagomeTex==68){$FolderName="2020���g��_�t�E��";}
	else if($KagomeTex==69){$FolderName="2020����";}
	else if($KagomeTex==70){$FolderName="2020��H_�b��";}
	else if($KagomeTex==71){$FolderName="2030�m�[�R";}
	else if($KagomeTex==72){$FolderName="2030���g��_�t�E��";}
	else if($KagomeTex==73){$FolderName="2030����";}
	else if($KagomeTex==74){$FolderName="2030��H_�b��";}
	else if($KagomeTex==75){$FolderName="2040�b��";}
	else if($KagomeTex==76){$FolderName="2040���g��_�t�E��";}
	else if($KagomeTex==77){$FolderName="2040����";}
	else if($KagomeTex==78){$FolderName="2040��H_�m�[�R";}
	else if($KagomeTex==79){$FolderName="2045���g��_�t�E��";}
	else if($KagomeTex==80){$FolderName="2047���g��_�t�E��";}
	else if($KagomeTex==81){$FolderName="2050�J�S��2";}
	else if($KagomeTex==82){$FolderName="2050�m�[�R";}
	else if($KagomeTex==83){$FolderName="2050�b��";}
	else if($KagomeTex==84){$FolderName="2050���g��_����_�t�E��";}
	else if($KagomeTex==85){$FolderName="2100�m�[�R";}
	else if($KagomeTex==86){$FolderName="2100�b��";}
	else if($KagomeTex==87){$FolderName="2100���g��_�t�E��";}
	else if($KagomeTex==88){$FolderName="2100����";}
	else if($KagomeTex==89){$FolderName="2110�m�[�R";}
	else if($KagomeTex==90){$FolderName="2110���g��_�t�E��";}
	else if($KagomeTex==91){$FolderName="2110����";}
	else if($KagomeTex==92){$FolderName="2111���g��_�t�E��";}
	else if($KagomeTex==93){$FolderName="2115���g��_�t�E��";}
	else if($KagomeTex==94){$FolderName="2120���g��_�b��_����_�m�[�R_�t�E��";}
	else if($KagomeTex==95){$FolderName="2130�t�E��";}
	else if($KagomeTex==96){$FolderName="2130�b��";}
	else if($KagomeTex==97){$FolderName="2130���g��_����_�m�[�R";}
	else if($KagomeTex==98){$FolderName="2131�t�E��";}
	else if($KagomeTex==99){$FolderName="2131�b��";}
	else if($KagomeTex==100){$FolderName="2134�b��";}
	else if($KagomeTex==101){$FolderName="2139�t�E��";}
	else if($KagomeTex==102){$FolderName="2140�m�[�R_�t�E��";}
	else if($KagomeTex==103){$FolderName="2140�b��";}
	else if($KagomeTex==104){$FolderName="2140���g��_����";}
	else if($KagomeTex==105){$FolderName="2143�b��";}
	else if($KagomeTex==106){$FolderName="2144�b��";}
	else if($KagomeTex==107){$FolderName="2150�t�E��";}
	else if($KagomeTex==108){$FolderName="2150�b��";}
	else if($KagomeTex==109){$FolderName="2150���g��_����_�m�[�R";}
	else if($KagomeTex==110){$FolderName="2200�m�[�R";}
	else if($KagomeTex==111){$FolderName="2200�b��";}
	else if($KagomeTex==112){$FolderName="2200���g��_����";}
	else if($KagomeTex==113){$FolderName="2206�m�[�R";}
	else if($KagomeTex==114){$FolderName="2210�m�[�R";}
	else if($KagomeTex==115){$FolderName="2210�t�E��";}
	else if($KagomeTex==116){$FolderName="2210�b��";}
	else if($KagomeTex==117){$FolderName="2210���g��_����";}
	else if($KagomeTex==118){$FolderName="2220�b��_�t�E��";}
	else if($KagomeTex==119){$FolderName="2220���g��_����_�m�[�R";}
	else if($KagomeTex==120){$FolderName="2230�J�S��3";}
	else if($KagomeTex==121){$FolderName="2230�t�E��";}
	else if($KagomeTex==122){$FolderName="2230�b��";}
	else if($KagomeTex==123){$FolderName="2230���g��_����_�m�[�R";}
	else if($KagomeTex==124){$FolderName="2233���g��_����_�m�[�R_�t�E��";}
	else if($KagomeTex==125){$FolderName="2235�t�E��";}
	else if($KagomeTex==126){$FolderName="2235���g��_����_�m�[�R";}
	else if($KagomeTex==127){$FolderName="2240�t�E��";}
	else if($KagomeTex==128){$FolderName="2240���g��_�b��_����_�m�[�R";}
	else if($KagomeTex==129){$FolderName="2250�J�S��4";}
	else if($KagomeTex==130){$FolderName="2250�t�E��";}
	else if($KagomeTex==131){$FolderName="2250���g��_�b��_����_�m�[�R";}
	else if($KagomeTex==132){$FolderName="2300�t�E��_h";}
	else if($KagomeTex==133){$FolderName="2300���g��_�b��_����_�m�[�R";}
	else if($KagomeTex==134){$FolderName="2301�b��";}
	else if($KagomeTex==135){$FolderName="2301���g��";}
	else if($KagomeTex==136){$FolderName="2301����_�m�[�R";}
	else if($KagomeTex==137){$FolderName="2304���g��";}
	else if($KagomeTex==138){$FolderName="2310�m�[�R";}
	else if($KagomeTex==139){$FolderName="2310�b��";}
	else if($KagomeTex==140){$FolderName="2310���g��";}
	else if($KagomeTex==141){$FolderName="2310����";}
	else if($KagomeTex==142){$FolderName="2311�m�[�R";}
	else if($KagomeTex==143){$FolderName="2320�J�S��5";}
	else if($KagomeTex==144){$FolderName="2320�m�[�R";}
	else if($KagomeTex==145){$FolderName="2320�t�E��_h";}
	else if($KagomeTex==146){$FolderName="2320�b��";}
	else if($KagomeTex==147){$FolderName="2320���g��_��H";}
	else if($KagomeTex==148){$FolderName="2320����";}
	else if($KagomeTex==149){$FolderName="2330�m�[�R";}
	else if($KagomeTex==150){$FolderName="2330�t�E��";}
	else if($KagomeTex==151){$FolderName="2330���g��_��H_�b��";}
	else if($KagomeTex==152){$FolderName="2330����";}
	else if($KagomeTex==153){$FolderName="2331���g��";}
	else if($KagomeTex==154){$FolderName="2331��H_�b��";}
	else if($KagomeTex==155){$FolderName="2338�m�[�R";}
	else if($KagomeTex==156){$FolderName="2340�m�[�R_�t�E��";}
	else if($KagomeTex==157){$FolderName="2340���g��";}
	else if($KagomeTex==158){$FolderName="2340����";}
	else if($KagomeTex==159){$FolderName="2340��H_�b��";}
	else if($KagomeTex==160){$FolderName="2345����";}
	else if($KagomeTex==161){$FolderName="2348�m�[�R_�t�E��";}
	else if($KagomeTex==162){$FolderName="2349�m�[�R_�t�E��";}
	else if($KagomeTex==163){$FolderName="2350���g��_��H_�b��_����_�m�[�R_�t�E��";}
	else if($KagomeTex==164){$FolderName="2400���g��_��H_�b��_����_�m�[�R_�t�E��";}
	else if($KagomeTex==165){$FolderName="a2020����_�m�[�R";}
	else if($KagomeTex==166){$FolderName="a2030����_�m�[�R";}
	else if($KagomeTex==167){$FolderName="a2040���g��_�t�E��";}
	else if($KagomeTex==168){$FolderName="a2040����_�m�[�R";}
	else if($KagomeTex==169){$FolderName="a2040��H";}
	else if($KagomeTex==170){$FolderName="a2047���g��_�t�E��";}
	else if($KagomeTex==171){$FolderName="a2050�J�S��";}
	else if($KagomeTex==172){$FolderName="aa2050���g��_�t�E��";}
	else if($KagomeTex==173){$FolderName="aa2050��H_�b��";}
	else if($KagomeTex==174){$FolderName="aa2100�b��";}
	else if($KagomeTex==175){$FolderName="aa2100���g��";}
	else if($KagomeTex==176){$FolderName="aa2100��H_�t�E��";}
	else if($KagomeTex==177){$FolderName="aa2110�t�E��";}
	else if($KagomeTex==178){$FolderName="aa2110�b��";}
	else if($KagomeTex==179){$FolderName="aa2110���g��";}
	else if($KagomeTex==180){$FolderName="aa2110��H";}
	else if($KagomeTex==181){$FolderName="aa2120�t�E��";}
	else if($KagomeTex==182){$FolderName="aa2120���g��";}
	else if($KagomeTex==183){$FolderName="aa2120��H_�b��";}
	else if($KagomeTex==184){$FolderName="aa2345�t�E��";}
	else if($KagomeTex==185){$FolderName="aa2350��H_�b��";}
	else if($KagomeTex==186){$FolderName="aa2355���g��";}
	else if($KagomeTex==187){$FolderName="ab2050����_�m�[�R";}
	else if($KagomeTex==188){$FolderName="ab2051�m�[�R";}
	else if($KagomeTex==189){$FolderName="ab2051����";}
	else if($KagomeTex==190){$FolderName="ab2100�m�[�R";}
	else if($KagomeTex==191){$FolderName="ab2100���g��_����_�t�E��";}
	else if($KagomeTex==192){$FolderName="ab2100��H_�b��";}
	else if($KagomeTex==193){$FolderName="ab2107���g��_����_�m�[�R_�t�E��";}
	else if($KagomeTex==194){$FolderName="ab2108�m�[�R";}
	else if($KagomeTex==195){$FolderName="ab2108���g��_����_�t�E��";}
	else if($KagomeTex==196){$FolderName="ab2110�m�[�R";}
	else if($KagomeTex==197){$FolderName="ab2110����";}
	else if($KagomeTex==198){$FolderName="ab2110��H_�b��";}
	else if($KagomeTex==199){$FolderName="ab2131��H_�b��_�t�E��";}
	else if($KagomeTex==200){$FolderName="ab2133�t�E��";}
	else if($KagomeTex==201){$FolderName="ab2133��H_�b��";}
	else if($KagomeTex==202){$FolderName="ab2140���g��_����";}
	else if($KagomeTex==203){$FolderName="ab2140��H_�b��";}
	else if($KagomeTex==204){$FolderName="ab2150���g��_����_�m�[�R";}
	else if($KagomeTex==205){$FolderName="ab2150��H_�b��";}
	else if($KagomeTex==206){$FolderName="ab2200�b��";}
	else if($KagomeTex==207){$FolderName="ab2200���g��";}
	else if($KagomeTex==208){$FolderName="ab2200��H";}
	else if($KagomeTex==209){$FolderName="ab2210�t�E��";}
	else if($KagomeTex==210){$FolderName="ab2210���g��_h";}
	else if($KagomeTex==211){$FolderName="ab2210��H";}
	else if($KagomeTex==212){$FolderName="ab2220��H_�b��";}
	else if($KagomeTex==213){$FolderName="ab2230�J�S��";}
	else if($KagomeTex==214){$FolderName="aba2400�b��";}
	else if($KagomeTex==215){$FolderName="aba2401��H_�t�E��";}
	else if($KagomeTex==216){$FolderName="aba2402�t�E��";}
	else if($KagomeTex==217){$FolderName="aba2403����_�m�[�R";}
	else if($KagomeTex==218){$FolderName="aba2404���g��";}
	else if($KagomeTex==219){$FolderName="abb2400���g��_��H_�b��_����_�m�[�R_�t�E��";}
	else if($KagomeTex==220){$FolderName="b2050��H";}
	else if($KagomeTex==221){$FolderName="b2110���g��_��H_�t�E��";}
	else if($KagomeTex==222){$FolderName="b2115���g��_��H_�t�E��";}
	else if($KagomeTex==223){$FolderName="b2120��H";}
	else if($KagomeTex==224){$FolderName="b2130�b��";}
	else if($KagomeTex==225){$FolderName="b2134�b��";}
	else if($KagomeTex==226){$FolderName="b2140��H_�b��";}
	else if($KagomeTex==227){$FolderName="b2144��H_�b��";}
	else if($KagomeTex==228){$FolderName="b2150��H_�b��";}
	else if($KagomeTex==229){$FolderName="b2200��H_�b��";}
	else if($KagomeTex==230){$FolderName="b2206�m�[�R";}
	else if($KagomeTex==231){$FolderName="b2208��H_�b��_�m�[�R";}
	else if($KagomeTex==232){$FolderName="b2209�m�[�R";}
	else if($KagomeTex==233){$FolderName="b2209��H_�b��";}
	else if($KagomeTex==234){$FolderName="b2210���g��_����_�m�[�R";}
	else if($KagomeTex==235){$FolderName="b2210��H_�b��";}
	else if($KagomeTex==236){$FolderName="b2213���g��";}
	else if($KagomeTex==237){$FolderName="b2213����_�m�[�R";}
	else if($KagomeTex==238){$FolderName="b2220�J�S��";}
	else if($KagomeTex==239){$FolderName="ba2220���g��_����_�m�[�R";}
	else if($KagomeTex==240){$FolderName="ba2220��H_�b��";}
	else if($KagomeTex==241){$FolderName="ba2221��H_�b��";}
	else if($KagomeTex==242){$FolderName="ba2230�m�[�R";}
	else if($KagomeTex==243){$FolderName="ba2230���g��_����";}
	else if($KagomeTex==244){$FolderName="ba2230��H_�b��";}
	else if($KagomeTex==245){$FolderName="ba2235���g��";}
	else if($KagomeTex==246){$FolderName="ba2235����";}
	else if($KagomeTex==247){$FolderName="ba2235��H_�b��_�m�[�R";}
	else if($KagomeTex==248){$FolderName="ba2236�m�[�R";}
	else if($KagomeTex==249){$FolderName="ba2236��H_�b��";}
	else if($KagomeTex==250){$FolderName="ba2239����_�m�[�R";}
	else if($KagomeTex==251){$FolderName="ba2240���g��";}
	else if($KagomeTex==252){$FolderName="ba2240����_�m�[�R";}
	else if($KagomeTex==253){$FolderName="ba2240��H_�b��";}
	else if($KagomeTex==254){$FolderName="ba2248���g��_����_�m�[�R";}
	else if($KagomeTex==255){$FolderName="ba2250���g��_��H_�b��_����_�m�[�R";}
	else if($KagomeTex==256){$FolderName="ba2300�J�S��";}
	else if($KagomeTex==257){$FolderName="baa2300���g��_��H_�b��_����_�m�[�R_�t�E��";}
	else if($KagomeTex==258){$FolderName="baa2330����_�m�[�R_h";}
	else if($KagomeTex==259){$FolderName="baa2351��H_�b��";}
	else if($KagomeTex==260){$FolderName="baa2352��H_�b��";}
	else if($KagomeTex==261){$FolderName="baa2353��H_�b��";}
	else if($KagomeTex==262){$FolderName="baa2354��H_�b��";}
	else if($KagomeTex==263){$FolderName="baa2355���g��";}
	else if($KagomeTex==264){$FolderName="baa2356����_�m�[�R";}
	else if($KagomeTex==265){$FolderName="baa2357����_�m�[�R";}
	else if($KagomeTex==266){$FolderName="baa2358����_�m�[�R";}
	else if($KagomeTex==267){$FolderName="baa2359�t�E��";}
	else if($KagomeTex==268){$FolderName="bab2300���g��_��H_�b��_����_�m�[�R";}
	else if($KagomeTex==269){$FolderName="bab2330��H_�b��";}
	else if($KagomeTex==270){$FolderName="bab2340��H_�b��_h";}
	else if($KagomeTex==271){$FolderName="bab2350��H_�b��";}
	else if($KagomeTex==272){$FolderName="bab2352��H_�b��";}
	else if($KagomeTex==273){$FolderName="bab2354��H_�b��";}
	else if($KagomeTex==274){$FolderName="bab2358����_�m�[�R";}
	else if($KagomeTex==275){$FolderName="bab2359���g��_�t�E��";}
	else if($KagomeTex==276){$FolderName="bb2220���g��_����";}
	else if($KagomeTex==277){$FolderName="bb2221��H_�b��_h";}
	else if($KagomeTex==278){$FolderName="bb2235���g��_����";}
	else if($KagomeTex==279){$FolderName="bb2400��H_�b��";}
	else if($KagomeTex==280){$FolderName="bb2401���g��_����";}
	else if($KagomeTex==281){$FolderName="c2230���g��_����";}
	else if($KagomeTex==282){$FolderName="c2233���g��_����_�t�E��";}
	else if($KagomeTex==283){$FolderName="c2235���g��_����";}
	else if($KagomeTex==284){$FolderName="c2240���g��_�b��_����";}
	else if($KagomeTex==285){$FolderName="c2250�t�E��";}
	else if($KagomeTex==286){$FolderName="c2250���g��_�b��_����";}
	else if($KagomeTex==287){$FolderName="c2300�t�E��";}
	else if($KagomeTex==288){$FolderName="c2300�b��";}
	else if($KagomeTex==289){$FolderName="c2300���g��_����";}
	else if($KagomeTex==290){$FolderName="c2310���g��_�t�E��";}
	else if($KagomeTex==291){$FolderName="c2310����";}
	else if($KagomeTex==292){$FolderName="c2340�b��";}
	else if($KagomeTex==293){$FolderName="c2341���g��_�t�E��";}
	else if($KagomeTex==294){$FolderName="c2350���g��_����";}
	else if($KagomeTex==295){$FolderName="c2351�t�E��";}
	else if($KagomeTex==296){$FolderName="c2357�b��";}
	else if($KagomeTex==297){$FolderName="c2400���g��";}
	else if($KagomeTex==298){$FolderName="c2401���g��_�t�E��";}
	else if($KagomeTex==299){$FolderName="c2402���g��";}
	else if($KagomeTex==300){$FolderName="c2403���g��_����_�t�E��";}
	else if($KagomeTex==301){$FolderName="c2404���g��";}
	else if($KagomeTex==302){$FolderName="c2405�t�E��";}
	else if($KagomeTex==303){$FolderName="c2406����";}
	else if($KagomeTex==304){$FolderName="d2304���g��";}
	else if($KagomeTex==305){$FolderName="d2310���g��";}
	else if($KagomeTex==306){$FolderName="d2311�m�[�R";}
	else if($KagomeTex==307){$FolderName="d2341�m�[�R";}
	else if($KagomeTex==308){$FolderName="d2345����_�m�[�R";}
	else if($KagomeTex==309){$FolderName="d2400���g��";}
	else if($KagomeTex==310){$FolderName="d2401����_�m�[�R";}
	else if($KagomeTex==311){$FolderName="d2402���g��_����_�m�[�R";}
	else if($KagomeTex==312){$FolderName="d2403����_�m�[�R";}
	else if($KagomeTex==313){$FolderName="d2404���g��";}
	else if($KagomeTex==314){$FolderName="e2320���g��";}
	else if($KagomeTex==315){$FolderName="e2330���g��";}
	else if($KagomeTex==316){$FolderName="e2338�m�[�R";}
	else if($KagomeTex==317){$FolderName="e2349�m�[�R";}
	else if($KagomeTex==318){$FolderName="e2355���g��";}
	else if($KagomeTex==319){$FolderName="e2400����_�m�[�R";}
	else if($KagomeTex==320){$FolderName="e2404���g��";}
	else if($KagomeTex==321){$FolderName="y1730�t�E��";}
	else if($KagomeTex==322){$FolderName="y1730���g��";}
	else if($KagomeTex==323){$FolderName="y1730����";}
	else if($KagomeTex==324){$FolderName="y1750�m�[�R";}
	else if($KagomeTex==325){$FolderName="y1750�~�d�n";}
	else if($KagomeTex==326){$FolderName="y1750�b��";}
	else if($KagomeTex==327){$FolderName="y1751��H_�b��";}
	else if($KagomeTex==328){$FolderName="y1752�b��";}
	else if($KagomeTex==329){$FolderName="y1752��H";}
}


function myNowRoute(){
	$myRoute=#RouteName;
	if(#RouteName=="a"||#RouteName=="ab"||#RouteName=="aa"||#RouteName=="aba"||#RouteName=="abb"){
		if(AXNL_GetScriptTimeZone($GameName)>=2020){
			$myRoute="a";
		}
		if(AXNL_GetScriptTimeZone($GameName)>=2050){
			if(#RouteName=="aa"){
				$myRoute="aa";
			}else{
				$myRoute="ab";
				if(AXNL_GetScriptTimeZone($GameName)>=2230){
					$myRoute=#RouteName;
				}
			}
		}
	}else if(#RouteName=="b"||#RouteName=="ba"||#RouteName=="baa"||#RouteName=="bab"||#RouteName=="bb"){
		if(AXNL_GetScriptTimeZone($GameName)>=2050){
			$myRoute="b";
		}
		if(AXNL_GetScriptTimeZone($GameName)>=2220){
			if(#RouteName=="bb"){
				$myRoute="bb";
			}else{
				$myRoute="ba";
				if(AXNL_GetScriptTimeZone($GameName)>=2300){
					$myRoute=m_Route;
				}
			}
		}
	}else if((#RouteName=="c"&&AXNL_GetScriptTimeZone($GameName)>=2230)||(#RouteName=="d"&&AXNL_GetScriptTimeZone($GameName)>=2250)||(#RouteName=="e"&&AXNL_GetScriptTimeZone($GameName)>=2320)){
		$myRoute=#RouteName;
	}else{
		$myRoute="�g�D���[";
	}


}
