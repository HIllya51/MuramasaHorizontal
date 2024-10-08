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

//Ą}NðģįÉ}NÉÄÜÆßÄč`
//=============================================================================//
.//ÜÆßč`
//=============================================================================//

//\\\\\\\\\\\\\\\
..SystemInit
//\\\\\\\\\\\\\\\
function SystemInit()
{
	$SYSTEM_text_interval = 48;
	$SYSTEM_spt_name=$\Žž+$XNvgo[W;

	//ĪâÎIđšŊúð
	$SYSTEM_ignore_voice_sync_text=false;
	$SYSTEM_ignore_text_speed=false;

	//ĄęxĮÝņūįÄxĮÝņÅĩÜíČĒæĪÉĄĢ
	//ĪBGMS
	if(!$BGM_Init){
		if($Logo){
			//CreateTexture("^Cgx", 100, 0, 0, "cg/sys/title/[fBO.png");
			//Fade("wiP", 0, 0, null, true);
			//Fade("wiP", 300, 1000, null, true);
		}
		InitBGM();
		$BGM_Init=true;
	}
	//ĪTEXTBOXnÆŧĖžVXeæn
	if(!$BOX_Init){
		LoadBox();
		SystemSet();
		$BOX_Init=true;
	}

	//Fade("^Cgx", 300, 0, null, true);
	//Delete("^Cgx");
}


//ĄXNvg`Šč`ÖA
//=============================================================================//
.//îbč`
//=============================================================================//

//\\\\\\\\\\\\\\\
..SystemSet
//\\\\\\\\\\\\\\\
function SystemSet()
{
	//īŽÎūĻ
	SystemConquest();

	//\ßĮÝ―ĒæŠ ęÎEEE

}

//\\\\\\\\\\\\\\\
..SystemConquest
//\\\\\\\\\\\\\\\
function SystemConquest()
{
	//īŽÎ
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

//\\\\\\\\\\\\\\\
..LoadBox
//\\\\\\\\\\\\\\\
function LoadBox()
{
	//ĘíEBhEæ
	//Ą
	CreateTexture("boxHN", 19000, Center, 560, "cg/sys/adv/THTextWindow.png");
	SetAlias("boxHN", "boxHN");
	Fade("boxHN",0,0,null,false);
	Request("boxHN", Lock);
	Request("boxHN", Hideable);

	//Ąį
	CreateTexture("boxHF", 19000, Center, 560, "cg/sys/adv/THTextWindow_Fw.png");
	SetAlias("boxHF", "boxHF");
	Fade("boxHF",0,0,null,false);
	Request("boxHF", Lock);
	Request("boxHF", Hideable);


	//c
	CreateTexture("boxVN", 19000, 426, 44, "cg/sys/adv/TextWindow.png");
	SetAlias("boxVN", "boxVN");
	Fade("boxVN",0,0,null,false);
	Request("boxVN", Lock);
	Request("boxVN", Hideable);

	//cį
	CreateTexture("boxVF", 19000, 426, -4, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxVF", "boxVF");
	Fade("boxVF",0,0,null,false);
	Request("boxVF", Lock);
	Request("boxVF", Hideable);
	Move("boxVF", 0, @0, @4, null, true);


	//SæĘ
	CreateTexture("boxAll", 20000, Center, Middle, "cg/sys/adv/fullwindow.png");
	SetAlias("boxAll", "boxAll");
	Fade("boxAll",0,0,null,false);
	Request("boxAll", Lock);
	Request("boxAll", Hideable);

	//ĘíEBhEp
	CreateWindow("box0", 20001, 0, 0, 1024, 768, false);
	SetAlias("box0", "box0");
	Request("box0", Lock);

	//JSÝéĩp
	//CreateName("RateWindow");
	//SetAlias("RateWindow", "RateWindow");
	//Request("RateWindow", Lock);
}


//ĄXNvg`ŠF{ķÄŅoĩOãč`
//CQ[āyCallSceneOz
//\\\\\\\\\\\\\\\
..GameMainSet
//\\\\\\\\\\\\\\\
function GameMainSet()
{
	//fobOÏðúŧ
	//$DEBUG_cgbglist="";

	//īŽSĮÝÝčFĒĮÖ
	//Conquest($ConGameName,$GameName2,false);//Main
	//Conquest($ConGameName,$GameName,false);//{ķScene

	if(!$PLACE_reco){
		//ÉXLbvÆI[g[hðð
		#JIKOKU_auto_text_cancel=true;//âįČĒ
		if(!#JIKOKU_auto_text_cancel){
			$SYSTEM_skip=false;
			#SYSTEM_skip_express=false;
			$SYSTEM_text_auto=false;
	
			//Message("fobOpEBhE","fobOpÅ·P",YESNOCANCE,EXCLAMATION);
		}else if(#auto_log){
			#auto_log=false;
			$SYSTEM_text_auto_lock=false;
			$SYSTEM_text_auto=true;
	
			//Message("fobOpEBhE","fobOpÅ·Q",YESNOCANCE,EXCLAMATION);
		}
	}

	//QsđšŊúÔúŧ
	$AddTextCount=1;
}

//CQ[āyCallSceneãz
function GameMainSet2()
{
	//ĪbffobOpZ[uf[^ėŽ
	//Save(5000);

	//īŽSĮÝÝčð
	Conquest($ConGameName,$GameName2,true);//Main
	Conquest($ConGameName,$GameName,true);//{ķScene

	//ĪbffobOpFZ[utH_Ė5000tH_ÉĄļV[žĄđĖt@CžÅfŦoĩ
	//$DEBUG_savepath=String("%s/5000/%s.txt",#SYSTEM_save_path,$GameName);
	//WriteFile($DEBUG_savepath,$DEBUG_cgbglist,false);
	//$DEBUG_cgbglist="";
}

function GameBreak()
{
	//ĨQ[T[NðuCN·éÛÉ
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@x*", 2000, 0, NULL);
	PrintFadeNut("ãwi", 2000, true);

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

//ĄIđpXNvgĖÅãÉLÚ
//\\\\\\\\\\\\\\\
..EndScript
//\\\\\\\\\\\\\\\
function EndScript()
{
	if($GameClose){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("ãwi", 1000, true);

		//vCÔFv
		#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);

		Exit();
	}else if($GameTV){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("ãwi", 1000, true);

		$GameName = "";
		$GameCircle=false;
		$GameTV=true;
	}else if(!$GLXg^Cg){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("ãwi", 1000, true);
	}else{
		$GameName = "";
	}
}

//ĄGLXgņzpF{Ō`ŠÉdÞ
//\\\\\\\\\\\\\\\
..ReConquest
//\\\\\\\\\\\\\\\
function ReConquest()
{
	Conquest($ConGameName,$PreGameName,true);
}

//ĄīŽ­Ūúŧ
//ySceneæŠz
//\\\\\\\\\\\\\\\
..SkipOut
//\\\\\\\\\\\\\\\
function SkipOut()
{
	if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}
	Conquest($ConGameName,$GameName2,true);

	SetVolume("@*", 0, 0, NULL);
	ClearFadeAll(0,true);

	//ĪėiÉæčŊčĢĻ{bNXÁĢĐ
	Fade("@boxH", 0, 0, null, true);
	Fade("@boxM",0,0,null,true);


	#SYSTEM_skip_express_minimum_time+=0;

	Wait(64);
}

//yBoxāz
//\\\\\\\\\\\\\\\
..BoxOut
//\\\\\\\\\\\\\\\
function BoxOut()
{
	#SYSTEM_skip_express_minimum_time=0;

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}

		SetVolume("@*", 0, 0, NULL);
		ClearFadeAll(0,true);

		//ĪėiÉæčŊčĢĻ{bNXÁĢĐ
		Fade("@boxH", 0, 0, null, true);
		Fade("@boxM",0,0,null,true);


		#SYSTEM_skip_express_minimum_time+=0;
		Escape(3);
	}
}


// fobOpFCGXgfoĩp
//\\\\\\\\\\\\\\\
..DEBUG_cgbgcorrect
//\\\\\\\\\\\\\\\
function DEBUG_cgbgcorrect($filename)
{
	if(Strstr($filename,"bg")&&!Strstr($DEBUG_cgbglist,$filename)){
		//t@CžÉ'bg'ÆĒĪķņŠ čĢŽČĻĐÂĐĖęÍXgÉĮÁ
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}else if(Strstr($filename,"ev")&&!Strstr($DEBUG_cgbglist,$filename)){
		//t@CžÉ'ev'ÆĒĪķņŠ čĢŽČĻĐÂĐĖęÍXgÉĮÁ
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}
}


//ĄvCÔ}N
//=============================================================================//
.//vCÔ
//=============================================================================//
function GetTime()
{
	//vCÔFv
	#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);
	//vCÔFvŠJn
	#BEGIN_TIME=Time();
}


//ĄÍ^CgŠĢ}N
//=============================================================================//
.//vCÔ
//=============================================================================//
//SLXÅāgp//SLXÅÍ$ÍÔĖøðÆé
function SceneChange($ÍÔ)
{
	//SLXp
	if($ÍÔ>1){
		Enter1line();
	}

	$ChapterNum=$ÍÔ;
	$ChapterName=String("Episode%02d",$ChapterNum);
	VariableValue(#,$ChapterName,true);

	if($ÍÔ==1){$Íč="ĩÚŌŧÕÂ@đúÛÞÓ?Ōđ";}
	else if($ÍÔ==2){$Íč="ĩÚķ?ÕÂ@ŧúČ­đĶ―Ģ";}
	else if($ÍÔ==3){$Íč="ĩÚČ?ÕÂ@ķ??·Ï?";}
	else if($ÍÔ==4){$Íč="ĩÚËÄÕÂ@ÆÖķŦĩØÓ?ą?";}
	else if($ÍÔ==5){$Íč="ĩÚÎåÕÂ@Öč·įŅŠÓ?";}
	else if($ÍÔ==6){$Íč="ĩÚÁ?ÕÂ@°ŪÔ?ŪÔ°";}
	$ÍÔ}ü="@@@@"+$Íč;

	SetBacklog("@",null,null);
	SetBacklog($ÍÔ}ü,null,null);
	SetBacklog("@",null,null);

	Enter1line();
	//SLXpąąÜÅ
	
	if(#SceneSkip){
		//XLbvæčīŽðæÉÝč·é
		#SYSTEM_skip_express=false;
		$SYSTEM_skip=false;
		//$SYSTEM_text_auto=false;
	}
}

//obNOÅĖt@CÆt@CĖÔÉPsüęép
function Enter1line()
{
	SetBacklog("@",null,null);
}




//ĄXNvgÉĻĒÄeLXgðč`·é}NR}h
//=============================================================================//
.//eLXgč`
//=============================================================================//

//eLXgACRðrÅÏĶ―ĒęÍĻgĒ­ūģĒ
//\\\\\\\\\\\\\\\
..TextIconSet()
//\\\\\\\\\\\\\\\
function TextIconSet()
{
	//üs
	$SYSTEM_text_icon_line="cg/sys/icon/line/ķčACR%04d.png#5";
	//üy[W
	$SYSTEM_text_icon_page="cg/sys/icon/page/ķčACR%04d.png#5";
	//ĐŪķč
	$SYSTEM_text_icon_auto="cg/sys/icon/auto/AUTOACR%02d.png#5";
}
function TextIconSet2()
{
	//üs
	$SYSTEM_text_icon_line="cg/sys/icon/line2/ķčACR%04d.png#12";
	//üy[W
	$SYSTEM_text_icon_page="cg/sys/icon/page2/ķčACR%04d.png#12";
	//ĐŪķč
	$SYSTEM_text_icon_auto="cg/sys/icon/auto2/ķčACR%04d.png#12";
}

//įEBhEp
//\\\\\\\\\\\\\\\
..Fw
//\\\\\\\\\\\\\\\
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

//ĘíEBhEcp
//\\\\\\\\\\\\\\\
..SetText
//\\\\\\\\\\\\\\\
function SetText()
{
	//TakeRateBack();//Ę^Bép
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginFwX=170;//ÏX
		$TypeBeginFwY=567;
		$TypeBeginNwX=170;//ÏX
		$TypeBeginNwY=567;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}

		$TypeBeginBoxX=166;//ÏX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=336;//ÏX
		$TypeBeginTextY=553;
		$TypeBeginIconX=870;//ÏX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVF";
	}else{
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginBoxX=166;//ÏX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=176;//ÏX
		$TypeBeginTextY=553;
		$TypeBeginIconX=815;//ÏX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVN";
	}

	SetTextBase();
}

function SetTextL()
{
	//TakeRateBack();//Ę^Bép
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginFwX=7;//ÏX
		$TypeBeginFwY=567;
		$TypeBeginNwX=7;//ÏX
		$TypeBeginNwY=567;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}

		$TypeBeginBoxX=5;//ÏX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=170;//ÏX
		$TypeBeginTextY=553;
		$TypeBeginIconX=705;//ÏX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVF";
	}else{
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginBoxX=5;//ÏX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=10;//ÏX
		$TypeBeginTextY=553;
		$TypeBeginIconX=650;//ÏX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVN";
	}

	SetTextBase();
}


function SetTextR()
{
	//TakeRateBack();//Ę^Bép
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginFwX=279;//ÏX
		$TypeBeginFwY=567;
		$TypeBeginNwX=279;//ÏX
		$TypeBeginNwY=567;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}

		$TypeBeginBoxX=277;//ÏX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=440;//ÏX
		$TypeBeginTextY=553;
		$TypeBeginIconX=985;//ÏX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVF";
	}else{
		$LoadTextWsize=670;
		$LoadTextHsize=170;

		$TypeBeginBoxX=328;//ÏX
		$TypeBeginBoxY=0;
		$TypeBeginTextX=333;//ÏX
		$TypeBeginTextY=553;
		$TypeBeginIconX=985;//ÏX
		$TypeBeginIconY=700;

		$TypeBeginNut="@boxVN";
	}

	SetTextBase();
}



function SetTextBase()
{
		SetFont("@lr ūĐ", 22, #FFFFFF, #000000, 600, RIGHTDOWN);
		LoadText($\ķž,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,$LoadTextHsize,0,35);

		SetVertex($SYSTEM_present_text, 0, 0);
		Rotate($SYSTEM_present_text, 0, @0, @0, 0, null,true);
		Move($SYSTEM_present_text, 0, $TypeBeginTextX, $TypeBeginTextY, null, true);
	
		Request($SYSTEM_present_text, Erase);
		Request($SYSTEM_present_text, Lock);
		Request($SYSTEM_present_text, Hideable);
}


//ĘíEBhEĄp
//\\\\\\\\\\\\\\\
..SetTextH
//\\\\\\\\\\\\\\\
function SetTextH()
{
	//TakeRateBack();//Ę^Bép
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
		SetFont("lr ūĐ", 22, #FFFFFF, #000000, 600, RIGHTDOWN);
		LoadText($\ķž,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,$LoadTextHsize,0,35);

		Move($SYSTEM_present_text, 0, $TypeBeginTextX, $TypeBeginTextY, null, true);
	
		Request($SYSTEM_present_text, Erase);
		Request($SYSTEM_present_text, Lock);
		Request($SYSTEM_present_text, Hideable);
}



//SæĘEBhEp
//\\\\\\\\\\\\\\\
..SetTextC
//\\\\\\\\\\\\\\\
function SetTextC()
{
	$TypeBeginBoxX=@0;
	$TypeBeginBoxY=@0;

	$TypeBeginIconX=887;
	$TypeBeginIconY=618;

	$TypeBeginNut="@boxAll";

	SetFont("lr ūĐ", 28, #FFFFFF, #222222, 500, AROUND);
	SetVertex($SYSTEM_present_text, 0, 0);

	$LoadTextWsize = 756;
	LoadText($\ķž,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,400,0,40);

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


//Ą{bNXð`æ·éĖÆeLXgð^CsO·éŪėðÜÆßÄĀs·é}N
//=============================================================================//
.//^CsO}N
//=============================================================================//

//\\\\\\\\\\\\\\\
..TypeBeginĢĻ{bNXLčF^CsOĢĐ
//\\\\\\\\\\\\\\\
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

//\\\\\\\\\\\\\\\
..TypeBeginTĢĻ{bNXģĩF^CsOĢĐ
//\\\\\\\\\\\\\\\
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

//\\\\\\\\\\\\\\\
..TypeBeginFĢĻ{bNXģĩFtF[hĢĐ
//\\\\\\\\\\\\\\\
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

//\\\\\\\\\\\\\\\
..TypeBeginF2ĢĻ{bNXLčFtF[hĢĐ
//\\\\\\\\\\\\\\\
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


//\\\\\\\\\\\\\\\
..TypeBeginAĢĻ{bNXLčF^CsOFI[gispĢĐ
//\\\\\\\\\\\\\\\
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

//\\\\\\\\\\\\\\\
..TypeBeginANĢĻ{bNXģĩF^CsOFI[gispĢĐ
//\\\\\\\\\\\\\\\
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


//\\\\\\\\\\\\\\\
..TypeBeginAFĢĻ{bNXģĩFtF[hFI[gispĢĐ
//\\\\\\\\\\\\\\\
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



//\\\\\\\\\\\\\\\
..TextBoxDelete
//\\\\\\\\\\\\\\\
function TextBoxDelete($BoxDeleteTime)
{
	Fade("@FwNut*",$BoxDeleteTime,0,null,false);
	Fade("@box*",$BoxDeleteTime,0,null,true);
	Delete("@FwNut*");
}










//=============================================================================//
.//eLXgņsŊ\Ķ
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

	//đšŊú
	$LOCAL_text_interval=DurationTime($AddTextNus)/Strlen($AddTextText);
//	$AddTextText=String("<Interval time=%d>%s</Interval>",$LOCAL_text_interval,$AddTextText);
	Delete("ParVoice*");

	if(VariableValue(#,Substr($GameName,0,Strstr($GameName,".nss")-1)+"_Add"+$AddTextCount)){
		SetFont("lrSVbN", 28, FFFF75, 000001, 500, AROUND);
	}else{
		SetFont("lrSVbN", 28, FFFFFF, 222222, 500, AROUND);
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



//\\\\\\\\\\\\\\\
..TypeBeginDĢĻĄs{bNXF^CsOĢĐ
//\\\\\\\\\\\\\\\
function TypeBeginD()
{
	$SYSTEM_position_x_text_icon=910;
	$SYSTEM_position_y_text_icon=536;

	//đšŊú
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

	//{CXÄķ
	Request("AddVoice*", Play);
	SetLoop("AddVoice*", false);
	Request("AddVoice*", Disused);

	//ĄsG^[
	Request("AddText*", Enter);

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	//ĄsÁ
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

	//đšŊú§Āð
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




//ĄCreateTextureĖÏ`
//=============================================================================//
.//CreateTexturen
//=============================================================================//

//Ĩm[}
//§ūx0ĐįX^[g·éĄļCreateTextureĄđÅ·
..CreateTextureEX
function CreateTextureEX($CreatePicEX_Nat, `æDæx, $CreateTexEX_X, $CreateTexEX_Y, $C[Wf[^)
{
	//ĪbffobOp
	DEBUG_cgbgcorrect($C[Wf[^);

	CreateTexture($CreatePicEX_Nat, `æDæx, 1030, 0, $C[Wf[^);
	Fade($CreatePicEX_Nat, 0, 0, null, true);

//æū
	$CT_EXX = ImageHorizon($CreatePicEX_Nat);
//æū
	$CT_EXY = ImageVertical($CreatePicEX_Nat);
//æūQ
	$CT_EXX2 = $CT_EXX-1024;
//æūQ
	$CT_EXY2 = $CT_EXY-768;
//æūS
	$CT_EXX2 = $CT_EXX2/2;
//æūS
	$CT_EXY2 = $CT_EXY2/2;
//Centeræū
	$CT_EX_Center = -($CT_EXX2);
//Middleæū
	$CT_EX_Middle = -($CT_EXY2);
//Centeræū
	$CT_EX_Center2 = 1024-$CT_EXX;
//Rightæū
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middleæū
	$CT_EX_Middle2 = 768-$CT_EXY;
//Rightæū
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottomæū
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	SetAlias($CreatePicEX_Nat, $CreatePicEX_Nat);

	if($CreateTexEX_X=="Center"){
//Ą1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//Ą1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
//Ą1024
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
//Ą1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//Ą1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
//Ą1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
//		$CreateTexEX_X = $CreateTexEX_X-1030;
		Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		Move($CreatePicEX_Nat, 0, $CreateTexEX_X, @0, null, true);
	}


//cÖA
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

//GCAXwčŠÂĒ―ūŊĖĄļCreateTextureĄđÅ·
..CreateTextureSP
function CreateTextureSP("ibgž", `æDæx, wĀW, xĀW, $C[Wf[^)
{
	//ĪbffobOp
	DEBUG_cgbgcorrect($C[Wf[^);

	CreateTexture("ibgž", `æDæx, wĀW, xĀW, $C[Wf[^);
	SetAlias("ibgž", "ibgž");

}

//ĨÁZ
//§ūx0ĐįX^[g·éĄļCreateTextureĄđÅ·ĢĻÁZŽtŦĢĐ
..CreateTextureEXadd
function CreateTextureEXadd($CreatePicEXadd_Nat, `æDæx, $CreateTexEXadd_X, $CreateTexEXadd_Y, $C[Wf[^)
{
	//ĪbffobOp
	DEBUG_cgbgcorrect($C[Wf[^);

	CreateTexture($CreatePicEXadd_Nat, `æDæx, 1030, 0, $C[Wf[^);

//æū
	$CT_EXX = ImageHorizon($CreatePicEXadd_Nat);
//æū
	$CT_EXY = ImageVertical($CreatePicEXadd_Nat);
//æūQ
	$CT_EXX2 = $CT_EXX-1024;
//æūQ
	$CT_EXY2 = $CT_EXY-768;
//æūS
	$CT_EXX2 = $CT_EXX2/2;
//æūS
	$CT_EXY2 = $CT_EXY2/2;
//Centeræū
	$CT_EX_Center = -($CT_EXX2);
//Middleæū
	$CT_EX_Middle = -($CT_EXY2);
//Centeræū
	$CT_EX_Center2 = 1024-$CT_EXX;
//Rightæū
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middleæū
	$CT_EX_Middle2 = 768-$CT_EXY;
//Rightæū
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottomæū
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXadd_Nat, AddRender);
	SetAlias($CreatePicEXadd_Nat, $CreatePicEXadd_Nat);
	Fade($CreatePicEXadd_Nat, 0, 0, null, true);

	if($CreateTexEXadd_X=="Center"){
//Ą1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//Ą1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
//Ą1024
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
//Ą1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//Ą1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
//Ą1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXadd_Nat, 0, $CreateTexEXadd_X, @0, null, true);
	}


//cÖA
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

//GCAXwčŠÂĒ―ūŊĖĄļCreateTextureĄđÅ·ĢĻÁZŽtŦĢĐ
..CreateTextureSPadd
function CreateTextureSPadd("ibgž", `æDæx, wĀW, xĀW, $C[Wf[^)
{
	//ĪbffobOp
	DEBUG_cgbgcorrect($C[Wf[^);

	CreateTexture("ibgž", `æDæx, wĀW, xĀW, $C[Wf[^);
	Request("ibgž", AddRender);
	SetAlias("ibgž", "ibgž");
}
//ĨļZ
//§ūx0ĐįX^[g·éĄļCreateTextureĄđÅ·ĢĻÁZŽtŦĢĐ
..CreateTextureEXsub
function CreateTextureEXsub($CreatePicEXsub_Nat, `æDæx, $CreateTexEXsub_X, $CreateTexEXsub_Y, $C[Wf[^)
{
	//ĪbffobOp
	DEBUG_cgbgcorrect($C[Wf[^);

	CreateTexture($CreatePicEXsub_Nat, `æDæx, 1030, 0, $C[Wf[^);

//æū
	$CT_EXX = ImageHorizon($CreatePicEXsub_Nat);
//æū
	$CT_EXY = ImageVertical($CreatePicEXsub_Nat);
//æūQ
	$CT_EXX2 = $CT_EXX-1024;
//æūQ
	$CT_EXY2 = $CT_EXY-768;
//æūS
	$CT_EXX2 = $CT_EXX2/2;
//æūS
	$CT_EXY2 = $CT_EXY2/2;
//Centeræū
	$CT_EX_Center = -($CT_EXX2);
//Middleæū
	$CT_EX_Middle = -($CT_EXY2);
//Centeræū
	$CT_EX_Center2 = 1024-$CT_EXX;
//Rightæū
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middleæū
	$CT_EX_Middle2 = 768-$CT_EXY;
//Rightæū
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottomæū
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXsub_Nat, SubRender);
	SetAlias($CreatePicEXsub_Nat, $CreatePicEXsub_Nat);
	Fade($CreatePicEXsub_Nat, 0, 0, null, true);

	if($CreateTexEXsub_X=="Center"){
//Ą1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//Ą1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
//Ą1024
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
//Ą1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//Ą1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
//Ą1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXsub_Nat, 0, $CreateTexEXsub_X, @0, null, true);
	}


//cÖA
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

//GCAXwčŠÂĒ―ūŊĖĄļCreateTextureĄđÅ·ĢĻļZŽtŦĢĐ
..CreateTextureSPsub
function CreateTextureSPsub("ibgž", `æDæx, wĀW, xĀW, $C[Wf[^)
{
	//ĪbffobOp
	DEBUG_cgbgcorrect($C[Wf[^);

	CreateTexture("ibgž", `æDæx, wĀW, xĀW, $C[Wf[^);
	Request("ibgž", SubRender);
	SetAlias("ibgž", "ibgž");
}

//ĨI[o[C
//§ūx0ĐįX^[g·éĄļCreateTextureĄđÅ·ĢĻÁZŽtŦĢĐ
..CreateTextureEXover
function CreateTextureEXover($CreatePicEXover_Nat, `æDæx, $CreateTexEXover_X, $CreateTexEXover_Y, $C[Wf[^)
{
	//ĪbffobOp
	DEBUG_cgbgcorrect($C[Wf[^);

	CreateTexture($CreatePicEXover_Nat, `æDæx, 1030, 0, $C[Wf[^);

//æū
	$CT_EXX = ImageHorizon($CreatePicEXover_Nat);
//æū
	$CT_EXY = ImageVertical($CreatePicEXover_Nat);
//æūQ
	$CT_EXX2 = $CT_EXX-1024;
//æūQ
	$CT_EXY2 = $CT_EXY-768;
//æūS
	$CT_EXX2 = $CT_EXX2/2;
//æūS
	$CT_EXY2 = $CT_EXY2/2;
//Centeræū
	$CT_EX_Center = -($CT_EXX2);
//Middleæū
	$CT_EX_Middle = -($CT_EXY2);
//Centeræū
	$CT_EX_Center2 = 1024-$CT_EXX;
//Rightæū
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middleæū
	$CT_EX_Middle2 = 768-$CT_EXY;
//Rightæū
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottomæū
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXover_Nat, OverlayRender);
	SetAlias($CreatePicEXover_Nat, $CreatePicEXover_Nat);
	Fade($CreatePicEXover_Nat, 0, 0, null, true);

	if($CreateTexEXover_X=="Center"){
//Ą1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//Ą1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
//Ą1024
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
//Ą1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//Ą1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
//Ą1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXover_Nat, 0, $CreateTexEXover_X, @0, null, true);
	}


//cÖA
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


//GCAXwčŠÂĒ―ūŊĖĄļCreateTextureĄđÅ·ĢĻI[o[CŽtŦĢĐ
..CreateTextureSPover
function CreateTextureSPover("ibgž", `æDæx, wĀW, xĀW, $C[Wf[^)
{
	//ĪbffobOp
	DEBUG_cgbgcorrect($C[Wf[^);

	CreateTexture("ibgž", `æDæx, wĀW, xĀW, $C[Wf[^);
	Request("ibgž", OverlayRender);
	SetAlias("ibgž", "ibgž");
}

//ĨæZ
//§ūx0ĐįX^[g·éĄļCreateTextureĄđÅ·ĢĻÁZŽtŦĢĐ
..CreateTextureEXmul
function CreateTextureEXmul($CreatePicEXmul_Nat, `æDæx, $CreateTexEXmul_X, $CreateTexEXmul_Y, $C[Wf[^)
{
	//ĪbffobOp
	DEBUG_cgbgcorrect($C[Wf[^);

	CreateTexture($CreatePicEXmul_Nat, `æDæx, 1030, 0, $C[Wf[^);

//æū
	$CT_EXX = ImageHorizon($CreatePicEXmul_Nat);
//æū
	$CT_EXY = ImageVertical($CreatePicEXmul_Nat);
//æūQ
	$CT_EXX2 = $CT_EXX-1024;
//æūQ
	$CT_EXY2 = $CT_EXY-768;
//æūS
	$CT_EXX2 = $CT_EXX2/2;
//æūS
	$CT_EXY2 = $CT_EXY2/2;
//Centeræū
	$CT_EX_Center = -($CT_EXX2);
//Middleæū
	$CT_EX_Middle = -($CT_EXY2);
//Centeræū
	$CT_EX_Center2 = 1024-$CT_EXX;
//Rightæū
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middleæū
	$CT_EX_Middle2 = 768-$CT_EXY;
//Rightæū
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottomæū
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXmul_Nat, MulRender);
	SetAlias($CreatePicEXmul_Nat, $CreatePicEXmul_Nat);
	Fade($CreatePicEXmul_Nat, 0, 0, null, true);

	if($CreateTexEXmul_X=="Center"){
//Ą1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//Ą1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
//Ą1024
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
//Ą1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//Ą1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
//Ą1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXmul_Nat, 0, $CreateTexEXmul_X, @0, null, true);
	}


//cÖA
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


//GCAXwčŠÂĒ―ūŊĖĄļCreateTextureĄđÅ·ĢĻæZŽtŦĢĐ
..CreateTextureSPmul
function CreateTextureSPmul("ibgž", `æDæx, wĀW, xĀW, $C[Wf[^)
{
	//ĪbffobOp
	DEBUG_cgbgcorrect($C[Wf[^);

	CreateTexture("ibgž", `æDæx, wĀW, xĀW, $C[Wf[^);
	Request("ibgž", MulRender);
	SetAlias("ibgž", "ibgž");
}


//=============================================================================//
.//wiECxgEdeęp
//=============================================================================//

//Ĩm[}
//§ūx0ĐįX^[g·éĄļCreateTextureĄđÅ·
..OnBG
function OnBG(`æDæx,$bgimagedata,$pb`ŧč)
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

	$bgibg = $BgNameN;

	if($pb`ŧč=="normal"){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else if($pb`ŧč=="path"){
		$bgimagedata = "cg2/bg/" + $bgimagedata + ".jpg";
//PathĘßĩ―įĢŽúŧy09/01/29z
		$pb`ŧč=="";
	}else if(!$pb`ŧč){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else{
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}

	//ĪbffobOp
	DEBUG_cgbgcorrect($bgimagedata);

	CreateTexture($bgibg, `æDæx, Center, Middle, $bgimagedata);
	SetAlias($bgibg, $bgibg);
	Fade($bgibg, 0, 0, null, true);
}

...//FadeBG
function FadeBG($`æÔ,$Ōŋ)
{
	if($BgNameN01!=""){$ibgž=$BgNameN01;$BgNameN01="";}
	else if($BgNameN02!=""){$ibgž=$BgNameN02;$BgNameN02="";}
	else if($BgNameN03!=""){$ibgž=$BgNameN03;$BgNameN03="";}
	else if($BgNameN04!=""){$ibgž=$BgNameN04;$BgNameN04="";}
	else if($BgNameN05!=""){$ibgž=$BgNameN05;$BgNameN05="";}
	else if($BgNameN06!=""){$ibgž=$BgNameN06;$BgNameN06="";}
	else if($BgNameN07!=""){$ibgž=$BgNameN07;$BgNameN07="";}
	else if($BgNameN08!=""){$ibgž=$BgNameN08;$BgNameN08="";}
	else if($BgNameN09!=""){$ibgž=$BgNameN09;$BgNameN09="";}
	else if($BgNameN10!=""){$ibgž=$BgNameN10;$BgNameN10="";}

	$BGP = 1;

	SetFont("lr ūĐ", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);


//`æ}N
	PreFadeBG();

	$FaceBG2=$FaceBG;
	$FaceBG=$nutBG;
	$BGCP = 1;

	//wčp
	$nutBG=$setBGnut;
	$nutBG2=$astBGnut;

	//AUiGpFJSA\rJ[
	if(#AnotherL){
		KagomeColorAuto(19000,300,true);
	}
}

...//PreFadeBG
function PreFadeBG()
{
	$BGnut = $ibgž;

//ibgžæū@$picnut
		$picBGnut = $FaceBG;
//Oibgžæū@$Prepicnut
		$PrepicBGnut = $FaceBG2;
//Oč`Š­ķĩÄéĐmFp
		$BGQ = $BGCP;

//ęxč`ÏÝ+č`tOŠ­ķĩÄĒéę
	if($BGP==1 && $BGQ==0){$FaceBG="žģĩ";}

//OibgžģKč`
	$setBGnut = "@"+$BGnut;
//ibgžģKč`
	$astBGnut = $nutBG;
//OibgžģKč`
	$PreastBGnut ="@"+$PrepicBGnut;

	if($BGP!=0 && $BGQ==0 && $setBGnut!=$astBGnut && $astBGnut!=$PreastBGnut){Fade($astBGnut, 0, 0, null, false);}

	Fade($PreastBGnut, 0, 0, null, false);

	if($BGQ!=0 && $setBGnut!=$PreastBGnut && $astBGnut!=$PreastBGnut){Delete($PreastBGnut);}

	if($BGP==1 && $BGQ==0){
		Fade($setBGnut, $`æÔ, 1000, null, false);
	}else if($BGP==1 && $setBGnut!=$astBGnut){
		Fade($astBGnut, $`æÔ, 0, Axl3, false);
		Fade($setBGnut, $`æÔ, 1000, Dxl2, false);
		Request($astBGnut, Disused);
	}else if($BGP==0){
		Fade($astBGnut, $`æÔ, 0, null, false);
		Request($astBGnut, Disused);
	}

	if($Ōŋ==true)
	{
		WaitAction($setBGnut, null);

		if($StP==0){
			WaitAction($astBGnut, null);
		}

	}
	else if($Ōŋ != false)
	{
		Wait($Ōŋ);
	}
	else
	{
	}

}


//ĄCreateColorĖÏ`
//=============================================================================//
.//CreateColorn
//=============================================================================//

//Ĩm[}
//§ūx0ĐįX^[g·éĄļCreateColorĄđÅ·
..CreateColorEX
function CreateColorEX("ibgž", `æDæx, C[Wf[^)
{

	CreateColor("ibgž", `æDæx, 1024, 0, 1024, 768, C[Wf[^);
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
	Move("ibgž", 0, @-1024, @0, null, true);

}

//GCAXwčŠÂĒ―ūŊĖĄļCreateColorĄđÅ·
..CreateColorSP
function CreateColorSP("ibgž", `æDæx, C[Wf[^)
{
	CreateColor("ibgž", `æDæx, 0, 0, 1024, 768, C[Wf[^);
	SetAlias("ibgž", "ibgž");
}

//ĨÁZ
//§ūx0ĐįX^[g·éĄļCreateColorĄđÅ·ĢĻÁZŽtŦĢĐ
..CreateColorEXadd
function CreateColorEXadd("ibgž", `æDæx, C[Wf[^)
{
	CreateColor("ibgž", `æDæx, 1024, 0, 1024, 768, C[Wf[^);
	Request("ibgž", AddRender);
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
	Move("ibgž", 0, @-1024, @0, null, true);
}

//GCAXwčŠÂĒ―ūŊĖĄļCreateColorĄđÅ·ĢĻÁZŽtŦĢĐ
..CreateColorSPadd
function CreateColorSPadd("ibgž", `æDæx, C[Wf[^)
{
	CreateColor("ibgž", `æDæx, 0, 0, 1024, 768, C[Wf[^);
	Request("ibgž", AddRender);
	SetAlias("ibgž", "ibgž");
}

//ĨļZ
//§ūx0ĐįX^[g·éĄļCreateColorĄđÅ·ĢĻļZŽtŦĢĐ
..CreateColorEXsub
function CreateColorEXsub("ibgž", `æDæx, C[Wf[^)
{
	CreateColor("ibgž", `æDæx, 1024, 0, 1024, 768, C[Wf[^);
	Request("ibgž", SubRender);
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
	Move("ibgž", 0, @-1024, @0, null, true);
}

//GCAXwčŠÂĒ―ūŊĖĄļCreateColorĄđÅ·ĢĻļZŽtŦĢĐ
..CreateColorSPsub
function CreateColorSPsub("ibgž", `æDæx, C[Wf[^)
{
	CreateColor("ibgž", `æDæx, 0, 0, 1024, 768, C[Wf[^);
	Request("ibgž", SubRender);
	SetAlias("ibgž", "ibgž");
}


//ĨI[o[C
//§ūx0ĐįX^[g·éĄļCreateColorĄđÅ·ĢĻI[o[CŽtŦĢĐ
..CreateColorEXover
function CreateColorEXover("ibgž", `æDæx, C[Wf[^)
{
	CreateColor("ibgž", `æDæx, 1024, 0, 1024, 768, C[Wf[^);
	Request("ibgž", OverlayRender);
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
	Move("ibgž", 0, @-1024, @0, null, true);
}

//GCAXwčŠÂĒ―ūŊĖĄļCreateColorĄđÅ·ĢĻI[o[CŽtŦĢĐ
..CreateColorSPover
function CreateColorSPover("ibgž", `æDæx, C[Wf[^)
{
	CreateColor("ibgž", `æDæx, 0, 0, 1024, 768, C[Wf[^);
	Request("ibgž", OverlayRender);
	SetAlias("ibgž", "ibgž");
}

//ĨæZ
//§ūx0ĐįX^[g·éĄļCreateColorĄđÅ·ĢĻæZŽtŦĢĐ
..CreateColorEXmul
function CreateColorEXmul("ibgž", `æDæx, C[Wf[^)
{
	CreateColor("ibgž", `æDæx, 1024, 0, 1024, 768, C[Wf[^);
	Request("ibgž", MulRender);
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
	Move("ibgž", 0, @-1024, @0, null, true);
}

//GCAXwčŠÂĒ―ūŊĖĄļCreateColorĄđÅ·ĢĻæZŽtŦĢĐ
..CreateColorSPmul
function CreateColorSPmul("ibgž", `æDæx, C[Wf[^)
{
	CreateColor("ibgž", `æDæx, 0, 0, 1024, 768, C[Wf[^);
	Request("ibgž", MulRender);
	SetAlias("ibgž", "ibgž");
}



//ĄCreateMovieĖÏ`
//=============================================================================//
.//CreateMovien
//=============================================================================//

//Ĩm[}
//§ūx0ĐįX^[g·éĄļCreateMovieĄđÅ·
..CreateMovieEX
function CreateMovieEX("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^")
{
	CreateMovie("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^");
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
}

//GCAXwčŠÂĒ―ūŊĖĄļCreateMovieĄđÅ·
..CreateMovieSP
function CreateMovieSP("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^")
{
	CreateMovie("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^");
	SetAlias("ibgž", "ibgž");
}

//ĨÁZ
//§ūx0ĐįX^[g·éĄļCreateMovieĄđÅ·ĢĻÁZŽtŦĢĐ
..CreateMovieEXadd
function CreateMovieEXadd("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^")
{
	CreateMovie("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^");
	Request("ibgž", AddRender);
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
}

//GCAXwčŠÂĒ―ūŊĖĄļCreateMovieĄđÅ·ĢĻÁZŽtŦĢĐ
..CreateMovieSPadd
function CreateMovieSPadd("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^")
{
	CreateMovie("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^");
	Request("ibgž", AddRender);
	SetAlias("ibgž", "ibgž");
}

//ĨļZ
//§ūx0ĐįX^[g·éĄļCreateMovieĄđÅ·ĢĻļZŽtŦĢĐ
..CreateMovieEXsub
function CreateMovieEXsub("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^")
{
	CreateMovie("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^");
	Request("ibgž", SubRender);
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
}

//GCAXwčŠÂĒ―ūŊĖĄļCreateMovieĄđÅ·ĢĻļZŽtŦĢĐ
..CreateMovieSPsub
function CreateMovieSPsub("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^")
{
	CreateMovie("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^");
	Request("ibgž", SubRender);
	SetAlias("ibgž", "ibgž");
}

//ĨI[o[C
//§ūx0ĐįX^[g·éĄļCreateMovieĄđÅ·ĢĻI[o[CŽtŦĢĐ
..CreateMovieEXover
function CreateMovieEXover("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^")
{
	CreateMovie("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^");
	Request("ibgž", OverlayRender);
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
}

//GCAXwčŠÂĒ―ūŊĖĄļCreateMovieĄđÅ·ĢĻI[o[CŽtŦĢĐ
..CreateMovieSPover
function CreateMovieSPover("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^")
{
	CreateMovie("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^");
	Request("ibgž", OverlayRender);
	SetAlias("ibgž", "ibgž");
}

//ĨæZ
//§ūx0ĐįX^[g·éĄļCreateMovieĄđÅ·ĢĻæZŽtŦĢĐ
..CreateMovieEXmul
function CreateMovieEXmul("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^")
{
	CreateMovie("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^");
	Request("ibgž", MulRender);
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
}

//GCAXwčŠÂĒ―ūŊĖĄļCreateMovieĄđÅ·ĢĻæZŽtŦĢĐ
..CreateMovieSPmul
function CreateMovieSPmul("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^")
{
	CreateMovie("ibgž", `æDæx, wĀW, xĀW, [v, ŋ`l, "C[Wf[^");
	Request("ibgž", MulRender);
	SetAlias("ibgž", "ibgž");
}

//ĄCreateStencilĖÏ`
//=============================================================================//
.//CreateStenciln
//=============================================================================//
//
..CreateStencilT
function CreateStencilT($ibgžP,$ibgžQ,æDæx,wĘu,xĘu,$æP,$æQ)
{
	$qibgž=$ibgžP+"/"+$ibgžQ;

	CreateStencil($ibgžP,æDæx,wĘu,xĘu,128,$æP,false);
	CreateTexture($qibgž,æDæx,wĘu,xĘu,$æQ);

	SetAlias($ibgžP, $ibgžP);
	SetAlias($qibgž, $ibgžQ);

	Fade($ibgžP, 0, 0, null, false);
	Fade($ibgžQ, 0, 0, null, true);
}

//
..CreateStencilC
function CreateStencilC($ibgžP,$ibgžQ,æDæx,wĘu,xĘu,$æP,$æQ)
{
	$qibgž=$ibgžP+"/"+$ibgžQ;

	CreateStencil($ibgžP,æDæx,wĘu,xĘu,128,$æP,false);
	CreateColor($qibgž, æDæx, 0, 0, 1024, 768, $æQ);

	SetAlias($ibgžP, $ibgžP);
	SetAlias($qibgž, $ibgžQ);

	Fade($ibgžP, 0, 0, null, false);
	Fade($ibgžQ, 0, 0, null, true);
}




//ĄCreateWindowĖÏ`
//=============================================================================//
.//CreateWindown
//=============================================================================//
//GCAXwčĖtĒ―č`―ß
..CreateWindowEX
function CreateWindowEX($WindowNut, XPos, YPos, XSet, YSet, Ŋú)
{
	CreateWindow($WindowNut, 0, XPos, YPos, XSet, YSet, Ŋú);
	SetAlias($WindowNut,$WindowNut);
}

//ĄCreateProcessĖÏ`
//=============================================================================//
.//CreateProcessn
//=============================================================================//
//GCAXwčĖtĒ―č`―ß
..CreateProcessEX
function CreateProcessEX($ProcessNameNut, $ProcessNut)
{
	CreateProcess($ProcessNameNut, 0, 0, 0, $ProcessNut);
	SetAlias($ProcessNameNut,$ProcessNameNut);
}


//ĄCreateMaskĖÏ`
//=============================================================================//
.//CreateMaskn
//=============================================================================//
//GCAXwčĖtĒ―č`―ß
..CreateMaskEX
function CreateMaskEX($MaskNameNut, MPri, XPos, YPos, $MaskDataName, eq)
{
	CreateMask($MaskNameNut, MPri, XPos, YPos, $MaskDataName, eq);
	SetAlias($MaskNameNut,$MaskNameNut);
}


//Ą`æ}N
//=============================================================================//
.//ęĘ]·p
//=============================================================================//
//æĘãÉąĖibgČOSÄðcģČĒ
//gp·éÛÍâÎÉĄļPreĄđĖOÅgpĩÄ­ūģĒ
..PrintBG
function PrintBG("ibgž",`æDæx)
{
	CreateEffect("ibgž", `æDæx, 0, 0, 1024, 768, "Plain");
	SetAlias("ibgž","ibgž");
	Request("ibgž",Passive);
	Request("ibgž", Lock);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("ibgž", UnLock);
}

..PrintBG2
function PrintBG2("ibgž")
{
	CreateTexture("ibgž", 30000, 0, 0, "SCREEN");
	SetAlias("ibgž", "ibgž");
	Request("ibgž", Lock);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("ibgž", UnLock);
}

//ĶVKĮÁÚ
//đÖAÍÁģČĒpĖPrintBG
..PrintGO
function PrintGO("ibgž",`æDæx)
{
	CreateEffect("ibgž", `æDæx, 0, 0, 1024, 768, "Plain");
	SetAlias("ibgž","ibgž");
	Request("ibgž",Passive);
	Request("ibgž", Lock);

	ByeDefault();
	ByeBye();

	Request("ibgž", UnLock);
}

..CreatePlainSP
function CreatePlainSP("ibgž",Dæx){

	CreateEffect("ibgž", Dæx, 0, 0, 1024, 768, "Plain");
	SetAlias("ibgž","ibgž");
	Request("ibgž",Passive);

}

..CreatePlainSPadd
function CreatePlainSPadd("ibgž",Dæx){

	CreateEffect("ibgž", Dæx, 0, 0, 1024, 768, "Plain");
	SetAlias("ibgž","ibgž");
	Request("ibgž",Passive);
	Request("ibgž", AddRender);

}

..CreatePlainSPsub
function CreatePlainSPsub("ibgž",Dæx){

	CreateEffect("ibgž", Dæx, 0, 0, 1024, 768, "Plain");
	SetAlias("ibgž","ibgž");
	Request("ibgž",Passive);
	Request("ibgž", SubRender);

}

..CreatePlainSPover
function CreatePlainSPover("ibgž",Dæx){

	CreateEffect("ibgž", Dæx, 0, 0, 1024, 768, "Plain");
	SetAlias("ibgž","ibgž");
	Request("ibgž",Passive);
	Request("ibgž", OverlayRender);

}

..CreatePlainSPmul
function CreatePlainSPmul("ibgž",Dæx){

	CreateEffect("ibgž", Dæx, 0, 0, 1024, 768, "Plain");
	SetAlias("ibgž","ibgž");
	Request("ibgž",Passive);
	Request("ibgž", MulRender);

}

..CreatePlainEX
function CreatePlainEX("ibgž",Dæx){

	CreateEffect("ibgž", Dæx, 0, 0, 1024, 768, "Plain");
	Request("ibgž",Passive);
	Fade("ibgž", 0, 0, null, true);
	SetAlias("ibgž","ibgž");

}

..CreatePlainEXadd
function CreatePlainEXadd("ibgž",Dæx){

	CreateEffect("ibgž", Dæx, 0, 0, 1024, 768, "Plain");
	Request("ibgž",Passive);
	Fade("ibgž", 0, 0, null, true);
	SetAlias("ibgž","ibgž");
	Request("ibgž", AddRender);

}

..CreatePlainEXsub
function CreatePlainEXsub("ibgž",Dæx){

	CreateEffect("ibgž", Dæx, 0, 0, 1024, 768, "Plain");
	Request("ibgž",Passive);
	Fade("ibgž", 0, 0, null, true);
	SetAlias("ibgž","ibgž");
	Request("ibgž", SubRender);

}

..CreatePlainEXover
function CreatePlainEXover("ibgž",Dæx){

	CreateEffect("ibgž", Dæx, 0, 0, 1024, 768, "Plain");
	Request("ibgž",Passive);
	Fade("ibgž", 0, 0, null, true);
	SetAlias("ibgž","ibgž");
	Request("ibgž", OverlayRender);

}

..CreatePlainEXmul
function CreatePlainEXmul("ibgž",Dæx){

	CreateEffect("ibgž", Dæx, 0, 0, 1024, 768, "Plain");
	Request("ibgž",Passive);
	Fade("ibgž", 0, 0, null, true);
	SetAlias("ibgž","ibgž");
	Request("ibgž", MulRender);

}

//=============================================================================//
.//Án
//=============================================================================//
..FadeDelete
function FadeDelete("ibgž", vÔ, e|, Ōŋ)
{
	Fade("ibgž", vÔ, 0, e|, Ōŋ);
	Request("ibgž", UnLock);
	Request("ibgž", Disused);

	TakeRatePicAuto();//kāFAUiGXN[
}

..DrawDelete
function DrawDelete("ibgž", vÔ, ŦE, e|, "$æ", Ōŋ)
{
	$Transition = "cg/data/" + "$æ" + ".png";

	DrawTransition("ibgž", vÔ, 1000, 0, ŦE, e|, "$Transition", Ōŋ);
	Request("ibgž", UnLock);
	Request("ibgž", Disused);

	TakeRatePicAuto();//kāFAUiGXN[
}

..PlayDelete
function PlayDelete($vCibgž, $PlayDeleteTime, $PlayWait)
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
		Fade($vCibgž, $PlayDeleteTime, 0, null, false);

		CreateProcess("vCÁP", 150, 0, 0, $PlayDeleteName);
		SetAlias("vCÁP", "vCÁP");
		Request("vCÁP", Start);
		Request("vCÁP", Disused);
	}else{
		Fade($vCibgž, $PlayDeleteTime, 0, null, true);

		Request($vCibgž, Stop);
		Delete($vCibgž);
	}
}

function PlayDeleteProcess1()
{
	Wait($PlayDeleteTime);
	Request($vCibgž, Stop);
	Delete($vCibgž);
}

function PlayDeleteProcess2()
{
	Wait($PlayDeleteTime);
	Request($vCibgž, Stop);
	Delete($vCibgž);
}

function PlayDeleteProcess3()
{
	Wait($PlayDeleteTime);
	Request($vCibgž, Stop);
	Delete($vCibgž);
}



//ĄÚŪČĮĖęĘ]·ÉÖ·é}N
//=============================================================================//
.//Ã]n
//=============================================================================//

..//Ã]nx[X

//gp·éÛÍâÎÉĄļPreĄđĖOÅgpĩÄ­ūģĒ
..ClearFadeAll
function ClearFadeAll(vÔ,Ōŋ)
{
	CreateColor("NA", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("NA", "NA");
	Fade("NA", 0, 0, null, true);

	Fade("NA", vÔ, 1000, null, Ōŋ);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintFadeAll
function PrintFadeAll("ibgž",vÔ,Ōŋ)
{
	CreateColor("ibgž", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
	Request("ibgž", Lock);

	Fade("ibgž", vÔ, 1000, null, Ōŋ);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("ibgž", UnLock);
}


//gp·éÛÍâÎÉĄļPreĄđĖOÅgpĩÄ­ūģĒ
..ClearFadeNut
function ClearFadeNut(vÔ,Ōŋ)
{
	CreateColor("NA", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("NA", "NA");
	Fade("NA", 0, 0, null, true);

	Fade("NA", vÔ, 1000, null, Ōŋ);

	ByeDefault();
	ByeBye();

	Delete("NA");
}

..PrintFadeNut
function PrintFadeNut("ibgž",vÔ,Ōŋ)
{
	CreateColor("ibgž", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);

	Fade("ibgž", vÔ, 1000, null, Ōŋ);

	ByeDefault();
	ByeBye();
}

//gp·éÛÍâÎÉĄļPreĄđĖOÅgpĩÄ­ūģĒ
..ClearDrawAll
function ClearDrawAll(vÔ, ŦE, $æ, Ōŋ)
{
	CreateColor("NA", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("NA", "NA");
	Fade("NA", 0, 0, null, true);

	$Transition = "cg/data/" + $æ + ".png";
	Fade("NA", 0, 1000, null, false);
	DrawTransition("NA", vÔ, 0, 1000, ŦE, null, $Transition, Ōŋ);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintDrawAll
function PrintDrawAll("ibgž", vÔ, ŦE, $æ, Ōŋ)
{
	CreateColor("ibgž", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);
	Request("ibgž", Lock);

	$Transition = "cg/data/" + $æ + ".png";
	Fade("ibgž", 0, 1000, null, false);
	DrawTransition("ibgž", vÔ, 0, 1000, ŦE, null, $Transition, Ōŋ);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("ibgž", UnLock);
}


//gp·éÛÍâÎÉĄļPreĄđĖOÅgpĩÄ­ūģĒ
..ClearDrawNut
function ClearDrawNut(vÔ, ŦE, $æ, Ōŋ)
{
	CreateColor("NA", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("NA", "NA");
	Fade("NA", 0, 0, null, true);

	$Transition = "cg/data/" + $æ + ".png";
	Fade("NA", 0, 1000, null, false);
	DrawTransition("NA", vÔ, 0, 1000, ŦE, null, $Transition, Ōŋ);

	ByeDefault();
	ByeBye();

	Delete("NA");
}

..PrintDrawNut
function PrintDrawNut("ibgž", vÔ, ŦE, $æ, Ōŋ)
{
	CreateColor("ibgž", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("ibgž", "ibgž");
	Fade("ibgž", 0, 0, null, true);

	$Transition = "cg/data/" + $æ + ".png";
	Fade("ibgž", 0, 1000, null, false);
	DrawTransition("ibgž", vÔ, 0, 1000, ŦE, null, $Transition, Ōŋ);

	ByeDefault();
	ByeBye();
}

..//Ã]np

//gp·éÛÍâÎÉĄļPreĄđĖOÅgpĩÄ­ūģĒ
//rdāęÂÅÎ
..ClearWaitAll
function ClearWaitAll($FadeSoundTime,ŌŋÔ)
{
	CreateColor("GClear_BlackWait", 24000, 0, 0, 1024, 768, "BLACK");
	SetAlias("GClear_BlackWait", "GClear_BlackWait");
	Fade("GClear_BlackWait", 0, 0, null, true);

	Request("GClear_BlackWait", Lock);


	$SoundTimeCFA=$FadeSoundTime+500;

	SetVolume("@SE*", $SoundTimeCFA, 0, null);
	SetVolume("SE*", $SoundTimeCFA, 0, null);
	SetVolume("@OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("@m*", $SoundTimeCFA, 0, null);
	Fade("GClear_BlackWait", $FadeSoundTime, 1000, null, true);

	Wait(ŌŋÔ);
	WaitPlay("@SE*",null);
	WaitPlay("@OnSE*",null);
	WaitPlay("SE*",null);
	WaitPlay("OnSE*",null);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("GClear_BlackWait", UnLock);
	Delete("GClear_BlackWait");
}



..MoveEX
function MoveEX("ibgž", vÔ, $wĀW, $xĀW, e|, Ōŋ)
{
	$wĀWv = - $wĀW;
	$xĀWv = - $xĀW;

	$wĀW}CiX = "@" + $wĀWv;
	$xĀW}CiX = "@" + $xĀWv;

	$wĀWvX = "@" + $wĀW;
	$xĀWvX = "@" + $xĀW;

	Move("ibgž", 0, $wĀW}CiX, $xĀW}CiX, null, true);
	Move("ibgž", vÔ, $wĀWvX, $xĀWvX, e|, Ōŋ);
}





//ĄÏúŧ}NR}h
//=============================================================================//
.//úŧ
//=============================================================================//
..ByeBye
function ByeBye()
{
//Ą§ŋGSÁ
	ByeAllSt();

//ĄwipĄļOnBGĄđ
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
	Delete("@G*");
	Delete("G*");
	Delete("@OnBG*");
	Delete("OnBG*");
	Delete("@wi*");
	Delete("@FwNut*");

	//AUiG
	Delete("@OnKG*");
	Delete("@RateWindow/*");
	Delete("@gameview");
}



//ĄGfBOÖWĖ}NR}h
//=============================================================================//
.//GfBOÖW
//=============================================================================//
//=============================================================================//
..//dcAz
//=============================================================================//
function ArrayEND()
{
	Array($EndName,"^Ā");
	AssocArray($EndName,"^Ā");

	Array($EndName["^Ā"],"Roll01","@uta01","cg/sys/ed/Ghebvwi.png",6000,30000,0,1,"H",false,false);

//	Array($EndName["ĪĘ"],"Roll01","@EndBGM01","BLACK",6200,60000,-576,1,"V","@EndBGM02",false);
//	Array($EndName["^Ā"],"Roll01","@xsonged","BLACK",-3000,60000,-576,1,"V",false,false);
//	Array($EndName["^Ā"],"Movie01",false,"WHITE",-3000,60000,-576,1,"V",false,false);

//	Array($EndName,"pYŌ","QŌ","ĪŌ","ŦSŌ","XŌ","ðúŌ");
//	AssocArray($EndName,"pYŌ","QŌ","ĪŌ","ŦSŌ","XŌ","ðúŌ");
//	Array($EndName["pYŌ"],"Roll01","@xsonged","BLACK",-3000,60000,-768,1,"V",false,false);
//	Array($EndName["QŌ"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);
//	Array($EndName["ĪŌ"],"Roll01","@xsonged","BLACK",-5000,60000,1024,3,"H",false,true);
//	Array($EndName["ŦSŌ"],"Roll01","@xsonged","BLACK",6000,60000,1124,3,"H",false,true);
//	Array($EndName["XŌ"],"Roll01","@xsonged","BLACK",10000,60000,1024,3,"H",false,true);
//	Array($EndName["ðúŌ"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);

//ĄOFvZXž
//ĄPFSž
//ĄQFoūĩĖwi
//ĄRFÄķbēŪ
//ĄSFaflQTÚÖĖJEg
//ĄTF[ĘuēŪĢĻåÉPcēŪĢĐ
//ĄUFX^bt[Ė
//ĄVFX^bt[Ė`ŪĄļFĄđĄļHĄđĄļVĄđ
//ĄWFQČ éĐČĒĐĢŽLéęÍČžðģĒęÍĄļfalseĄđ
//ĄXFãëÅæðØčÖĶéĐ

//ĄO|FtF[hæ·Š
//ĄP|FŌ@bĢŽ\ĶbĢĻOæÁŠqEEFCgEæ\ĶbEEFCgĢĐ

//ĄU|F[æ·ŠĢĻENDRoll00EENDRoll01EEEĢĐ
//ĄV|F[æĖsNZÔuēŪ

	//Array($EndName["ĪĘ"][0],"logo.png");//ĄXŠfalseÅÓĄŠģĒ
	//Array($EndName["ĪĘ"][1],0,960,10,10);//ĄXŠfalseÅÓĄŠģĒ
	//Array($EndName["ĪĘ"][6],"NWbg_V[g");
	//Array($EndName["ĪĘ"][7],0);

	//Array($EndName["^Ā"][0],"logo.png");//ĄXŠfalseÅÓĄŠģĒ
	//Array($EndName["^Ā"][1],0,960,10,10);//ĄXŠfalseÅÓĄŠģĒ
	Array($EndName["^Ā"][6],"Ghebv");
	Array($EndName["^Ā"][7],0);

/*
	Array($EndName["QŌ"][0],"logo.png");
	Array($EndName["QŌ"][1],0,960,10,10);
	Array($EndName["QŌ"][6],"Þ}[g","staff01","staff02");
	Array($EndName["QŌ"][7],0,0,0);

	Array($EndName["XŌ"][0],"logo.png");
	Array($EndName["XŌ"][1],0,960,10,10);
	Array($EndName["XŌ"][6],"XÛ[g","staff01","staff02");
	Array($EndName["XŌ"][7],0,0,0);

	Array($EndName["ĪŌ"][0],"logo.png");
	Array($EndName["ĪŌ"][1],0,960,10,10);
	Array($EndName["ĪŌ"][6],"šģ[gQ","staff01","staff02");
	Array($EndName["ĪŌ"][7],0,0,0);

	Array($EndName["ðúŌ"][0],"logo.png");
	Array($EndName["ðúŌ"][1],0,960,10,10);
	Array($EndName["ðúŌ"][6],"šģ[gQ","staff01","staff02");
	Array($EndName["ðúŌ"][7],0,0,0);

	Array($EndName["ŦSŌ"][0],"ev169_·ÆĖoïĒ.jpg","ev132_ÎĪ.jpg","ev133_É§Þõ_c.jpg","ev008_ÔqðøĶé.jpg","ev128_a°Ėõ_b01.jpg","ev138_ņĖĖÅú_d.jpg","ev139_ðEQ_a.jpg","ev101_v[O_a.jpg","ev103_Þ}t_a.jpg","ev268_NUÆÎģ·éęð.jpg","ev106_YōÆĐšë·šģ_d.jpg","ev112_ęððĻPlūÁą·éšģ.jpg","ev113_T[LbgMoČ_a.jpg","ev914_ãZŪģRšC}^[.jpg","ev213_iūÆšģĖ_b.jpg","ev221_ūĐčðŅÄ§Âõ_b.jpg","ev230_Ŧķá­éšģ.jpg","ev239_XÛĖÅú_d.jpg","ev251_šģVSâŊíæņĮ.jpg","ev255_ėūð\Ķéšģ_a.jpg","ev256_âŊĖÅú_b.jpg","ev263_šģðhĩŅ­áÔŽ.jpg","ev266_iūĢŽŦSĖÎĒ.jpg","logo.png");
	Array($EndName["ŦSŌ"][1],5,35,5,34,5,5,5,34,5,5,5,34,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,16,3,3);
	Array($EndName["ŦSŌ"][6],"šģ[g","staff01","staff02");
	Array($EndName["ŦSŌ"][7],0,200,50);
*/


//fobOp
	$RollDebug=false;
	if($RollDebug){
		$RollDebugAll=0;
		$RollDebugWhile=1;
		while(Count($EndName["ŦSŌ"][1])>$RollDebugWhile){
			$RollDebugAll=$RollDebugAll+$EndName["ŦSŌ"][1][$RollDebugWhile];
			$RollDebugWhile=$RollDebugWhile+2;
		}
		CreateText("fobO[", 2000000, 50, 50, 700, 500, $RollDebugAll);
		WaitKey();
		Delete("fobO[");
	}


	$LayerCount0=100000;//šn
	$LayerCount1=100010;//[
	$LayerCount2=100009;//tF[hpĖG
	if($EndName[$ENDNumber]=="ŦSŌ"){
		$LayerCount2=100011;//tF[hpĖG
	}
	$LayerCount9=200000;
}

//=============================================================================//
..//dcč`
//=============================================================================//
function TheEND($ENDNumber)
{
	QuickStop();

	//ĨAzzņ
	ArrayEND();

	$EndBunbo=1000;
	$ENDBGM=$EndName[$ENDNumber][1];
	$ENDBack=$EndName[$ENDNumber][2];
	$TimeAdjust=$EndName[$ENDNumber][3];
	$LoopAdjust=$EndName[$ENDNumber][4];
	$LengthAdjust=$EndName[$ENDNumber][5];
	$ENDImage="end";
	$BGMž2=$EndName[$ENDNumber][8];

	//////////////////
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@uta*", 2000, 0, NULL);
	SetVolume("@m*", 2000, 0, NULL);
	if($ENDBGM!=false){
		SoundPlay($ENDBGM,1000,1000,true);
	}
	//////////////////

	//wi·ĩÖĶ
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
	
		//bNÝu
		LockVideo(true);
		Delete("@*");
		Fade("@*", 0, 0, null, false);
		Fade("@*/*", 0, 0, null, false);
		Fade("@*/*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*/*", 0, 0, null, false);
		Fade("ENDBack", 0, 1000, null, true);
		//bNÝu
		LockVideo(false);

		Request("ENDBack", UnLock);
	}

	if($EndName[$ENDNumber]=="ŦSŌ"){
		CreateTextureSP("ENDWindow", $LayerCount9, 25, 120, "cg/sys/ed/Gh[pCxg{JVz.png");
		CreateTextureSP("ENDWindow2", $LayerCount2, 0, 0, "cg/sys/ed/Gh[pCxg{JVz2.png");
	}

	//dcč`
	$RollNut=String("ClearRoll%02d",$ENDNumber);
	EndRollTexture();
	if(VariableValue(#,$RollNut)){
		SetRoll($EndProcess,$ENDBGM,false);
	}else{
		SetRoll($EndProcess,$ENDBGM,true);
		VariableValue(#,$RollNut,true);
	}

	//ĄEo[ÄJ
	if($ENDNumber==0||$ENDNumber==1||$ENDNumber==2||$ENDNumber==4){
		Wait(5000);
		QuickStart();
	}
}

...//ĄeNX`nč`
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
..//[Jn
//=============================================================================//
function SetRoll($PĘž,$BGMž,$Ō@)
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
		CreateProcess("Gh[vZX", 2000, 0, 0, $PĘž);
		SetAlias("Gh[vZX", "Gh[vZX");
		CreateProcess("Gh[ĖvZX", 150, 0, 0, "EndSong");
		SetAlias("Gh[ĖvZX", "Gh[ĖvZX");
	
		CreateColor("F", $LayerCount9, 0, 0, 1024, 768, BLACK);
		SetAlias("F", "F");
		Fade("F", 0, 0, null, true);
	
		$EndingSkip=false;
		Request("Gh[vZX", Start);
		Wait(5000);
		if($Ō@){WaitAction("Gh[vZX", null);}
	
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

		Request($BGMž, EntrustSuspend);
		SetVolume($BGMž, 6000, 0, NULL);

		if($EndName[$ENDNumber][8]!=false){
			Request($BGMž2, EntrustSuspend);
			SetVolume($BGMž2, 6000, 0, NULL);
		}
	}else{
		//[r[
		CreateColor("F", $LayerCount9, 0, 0, 1024, 768, BLACK);
		SetAlias("F", "F");
		Fade("F", 0, 0, null, true);

		CreateMovie("ENDMovie",$LayerCount1,0,0,false,false,"dx/mv_axl_ED.ngs",500);
		SetAlias("ENDMovie", "ENDMovie");

		if(#LOCAL_break_play_movie&&!$Ō@){
			//Message("fobOpEBhEP","fobOpÅ·",YESNOCANCE,EXCLAMATION);
			CreateProcess("Gh[vZX[r[", 150, 0, 0, "EndMovie");
			SetAlias("Gh[vZX[r[", "Gh[vZX[r[");
			Request("Gh[vZX[r[", Start);
		}
		WaitPlay("ENDMovie", null);

		Request("Gh[vZX[r[", Stop);
		WaitAction("Gh[vZX[r[", null);
		Delete("Gh[vZX[r[");

		$SYSTEM_l_button_down=false;
		$SYSTEM_keydown_enter=false;
	}

	Wait(2000);
	Fade("@F", 2000, 1000, null, true);

	Request("Gh[vZX", Stop);

	Fade("@Gh[*",0,0,null,true);
	Delete("@Gh[*");
	Delete("@END*");
	Fade("@F", 0, 0, null, true);

	Delete("@F");

	Wait(2000);

	if($EndName[$ENDNumber]!="ŦSŌ"){
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
				Fade("@F", 2000, 1000, null, true);
				Delete("@ENDMovie");
		}
		Wait(100);
	}
}

//=============================================================================//
..//[ûŪvZX
//=============================================================================//

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
...//ÃTItF[hXNvg
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

				if($EndName[$ENDNumber]=="ŦSŌ"){
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

	SetLoop($BGMž, false);
	Request($BGMž, CompulsorySuspend);

	$Ô=RemainTime($BGMž);
	$Ô=$Ô+$TimeAdjust;
	if($Ô<$LoopAdjust){
		$EndExtension=true;
		$b=DurationTime($BGMž);
		$Ô+=$b;
		Request("@Gh[ĖvZX", Start);
	}

	if($EndName[$ENDNumber][8]!=false){
		$Ô+=DurationTime($BGMž2);
		Request("@Gh[ĖvZX", Start);
	}

//	WaitKey();

	if($EndName[$ENDNumber][7]!="F"){
		Move("@ENDRoll*",$Ô,@$EndMoveX,@$EndMoveY,null,false);
	}

//	WaitKey();

	$nut="―Đ";

	if($EndName[$ENDNumber][9]){
		$EndOneTime=$Ô/$EndBunbo;
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

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
...//ÃTI[XNvg
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

	SetLoop($BGMž, false);
	Request($BGMž, CompulsorySuspend);

	$Ô=RemainTime($BGMž);
	$Ô+=$TimeAdjust;
	if($Ô<$LoopAdjust){
		$EndExtension=true;
		$b=DurationTime($BGMž);
		$Ô+=$b;
		Request("@Gh[ĖvZX", Start);
	}
	Move("@ENDRoll",$Ô,@0,@$EndMoveB,null,true);
}

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
...//ÃTI[XNvgFĄ
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

	SetLoop($BGMž, false);
	Request($BGMž, CompulsorySuspend);

	$Ô=RemainTime($BGMž);
	$Ô+=$TimeAdjust;
	if($Ô<$LoopAdjust){
		$EndExtension=true;
		$b=DurationTime($BGMž);
		$Ô+=$b;
		Request("@Gh[ĖvZX", Start);
	}
	Move("@ENDRoll",$Ô,@$EndMoveA,@0,null,true);
}

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//GhXNvgpĖđpąvZX
//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
function EndSong()
{
	if($EndExtension){
		$EndTime=RemainTime($BGMž);
		Wait($EndTime);
	
		SetVolume($BGMž, 1000, 0, NULL);
		WaitAction($BGMž, null);
	
		SetFrequency($BGMž, 0, 1000, NULL);
		SetVolume($BGMž, 0, 500, null);
		SetLoop($BGMž, false);
		Request($BGMž, Play);
	}

	if($EndName[$ENDNumber][8]!=false){
		WaitPlay($BGMž, null);
	
		if(!$EndingSkip){
			Request($BGMž2, CompulsorySuspend);
	
			SetFrequency($BGMž2, 0, 1000, NULL);
			SetVolume($BGMž2, 0, 500, null);
			SetLoop($BGMž2, false);
			Request($BGMž2, Play);
	
			WaitPlay($BGMž2, null);
		}
	}
}
//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

//=============================================================================//
..//[õĢĻÅãÉbN·éęĢĐ
//=============================================================================//
function PreSetRoll($ENDNumber)
{
	//ĄEo[â~
	QuickStop();

	//ĨAzzņ
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
	//ĄEo[â~
	QuickStop();

	//ĨAzzņ
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
..//[õĢĻrĐįNbNbN·éęĢĐ
//=============================================================================//
function PreTextRoll($ENDNumber)
{
	//ĄEo[â~
	QuickStop();

	//ĨAzzņ
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

function PlayVOICE_ED($VoiceClassNut,$đyf[^,$VoiceWaitPlus1,$VoiceWaitPlus2)
{
//<voice name="flu" class="flu" src="voice/st20/0600220de" mode="off">

	$NXž=$VoiceClassNut;

	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(#VoiceName[$VoiceWhile]==$NXž){
			//$VoiceGet=true;
		}
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$NXž){
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&VariableValue(#,"voice_on_"+$NXž))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){}

	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+$NXž+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$ęwč = "voice/" + $đyf[^;

		CreateSound($VoiceClassNut, VOICE, $ęwč);
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
	$ŌŋÔ=RemainTime($VoiceClassNut);
	$ŌŋÔ+=$VoiceWaitPlus;
	Wait($ŌŋÔ);
	Delete($VoiceClassNut);
}

/*
	PlayVOICE_ED("flu","voice/st20/0600220de",1000,3000);
//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
<PRE @box00>
[text0010028]
//yfluz
<voice name="flu" class="flu" src="voice/st20/0600220de" mode="off">
ĄļĐįęŋáÁ―\\Ąđ
{StopVOICEED();}
</PRE>
	SetText();
	TypeBegin();//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
=
*/



//ĄđÖWĖ}NR}h
//=============================================================================//
.//đÖW
//=============================================================================//

// č`
function CreateBGM($aflibg,$đyf[^)
{
	BGMbase();
}
function CreateBGMEX($aflibg,$đyf[^,Jn~b,Iđ~b)
{
	BGMbase();
	SetLoopPoint($aflibg,Jn~b,Iđ~b);
}
function BGMbase()
{
	$ęwč = "sound/bgm/" + $đyf[^;
	CreateSound($aflibg, BGM, $ęwč);
	SetVolume($aflibg, 0, 0, NULL);
	SetAlias($aflibg, $aflibg);
}




function CreateBGM_ef($aflibgP,$đyf[^)
{
	BGMbase_ef();
}
function CreateBGMEX_ef($aflibgP,$đyf[^,Jn~b,Iđ~b)
{
	BGMbase_ef();
	SetLoopPoint($aflibgP,Jn~b,Iđ~b);
	SetLoopPoint($aflibgQ,Jn~b,Iđ~b);
}
function BGMbase_ef()
{
	$ęwč = "sound/bgm/" + $đyf[^;
	CreateSound($aflibgP, BGM, $ęwč);
	SetVolume($aflibgP, 0, 0, NULL);
	SetAlias($aflibgP, $aflibgP);
	Request($aflibgP, Lock);

	$aflibgQ=$aflibgP+"_ef";
	CreateSound($aflibgQ, BGM, $ęwč);
	SetVolume($aflibgQ, 0, 0, NULL);
	SetAlias($aflibgQ, $aflibgQ);
	Request($aflibgQ, Lock);

	//SoundEffect("ibgž","Chorus",hC0`EFbg100,ĪËč0~100,tB[hobN-99~99,fBC^C0~20);
	//SoundEffect($aflibgQ,"Chorus",50,50,-90,10);
	//SoundEffect($aflibgQ,"Chorus",50,50,-90,10);

	//SoundEffect("ibgž","Echo",hC0`EFbg100,tB[hobN0~100,ķ`lfBCĢĻ1~2000~bĢĐ,E`lfBCĢĻ1~2000~bĢĐ);
	//SoundEffect($aflibgQ,"Echo",60,70,230,230);
	SoundEffect($aflibgQ,"Echo",60,70,170,170);
}


function CreateBGMPX("ibgž",$đyf[^)
{
	$ęwč = $đyf[^;
	CreateSound("ibgž", BGM, $ęwč);
	SetVolume("ibgž", 0, 0, NULL);
	SetAlias("ibgž", "ibgž");
}

function CreateBGMSE("ibgž",$đyf[^)
{
	$ęwč = "sound/bgm/" + $đyf[^;
	CreateSound("ibgž", SE, $ęwč);
	SetVolume("ibgž", 0, 0, NULL);
	SetAlias("ibgž", "ibgž");
}






..OnSE
function OnSE($đyf[^,$rdđĘ)
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

	$ibgž = $SeName;

	$ęwč = "sound/se/" + $đyf[^;

	CreateSound($ibgž, SE, $ęwč);
	SetVolume($ibgž, 0, 0, NULL);
	SetAlias($ibgž, $ibgž);

	Request($ibgž, "Play");

	SetFrequency($ibgž, 0, 1000, NULL);
	SetPan($ibgž, 0, 0, NULL);
	SetLoop($ibgž, false);

	SetVolumeEX($ibgž, 0, $rdđĘ, null);
	Request($ibgž, Disused);

}

..CreateSE
function CreateSE("ibgž",$đyf[^)
{
	$ęwč = "sound/se/" + $đyf[^;

	CreateSound("ibgž", SE, $ęwč);
	SetVolume("ibgž", 0, 0, NULL);
	SetAlias("ibgž", "ibgž");
}

..CreateSEEX
function CreateSEEX("ibgž",$đyf[^)
{
	$ęwč = "sound/se/" + "$đyf[^";

	if($đyf[^=="seíŽ_U_GlM[éĐŽĒ01_L"){
		$Jn~b=5833;
		$Iđ~b=17267;
	}else if($đyf[^=="seíŽ_U_Z_05_L"){
		$Jn~b=4618;
		$Iđ~b=22538;
	}else if($đyf[^=="seÁę_A`_[Kú_õ"){
		$Jn~b=1536;
		$Iđ~b=9301;
	}else if($đyf[^=="seíŽ_ref_U02_L"){
		$Jn~b=5325;
		$Iđ~b=8294;
	}else if($đyf[^=="seæĻ_ōsD_ĢĪJn_L"){
		$Jn~b=15871;
		$Iđ~b=18810;
	}else if($đyf[^=="seíŽ_U_@U_e­01"){
		$Jn~b=7146;
		$Iđ~b=23621;
	}else if($đyf[^=="se_íŽ_Åa00"){
		//SLXCNđđ
		$Jn~b=88;
		$Iđ~b=20893;
	}else if($đyf[^=="se_íŽ_Åb00"){
		//SLXCNđđ
		$Jn~b=222;
		$Iđ~b=20136;
	}else if($đyf[^=="se_íŽ_Åc00"){
		//SLXCNđđ
		$Jn~b=80;
		$Iđ~b=17656;
	}

	CreateSound("ibgž", SE, "$ęwč");
	SetVolume("ibgž", 0, 0, NULL);
	SetAlias("ibgž", "ibgž");
	SetLoopPoint("ibgž",$Jn~b,$Iđ~b);
}

..CreateVOICE
function CreateVOICE($ibgž,$đyf[^)
{
	$NXž=$ibgž;

	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$NXž){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$ęwč = "voice/" + $đyf[^;

		CreateSound($ibgž, VOICE, $ęwč);
		SetVolume($ibgž, 0, 0, NULL);
		SetAlias($ibgž, $ibgž);
	}
}

..CreateVOICEEX
function CreateVOICEEX($ibgž,$đyf[^,$NXž)
{
	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$NXž){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}


	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$ęwč = "voice/" + $đyf[^;

		CreateSound($ibgž, VOICE, $ęwč);
		SetVolume($ibgž, 0, 0, NULL);
		SetAlias($ibgž, $ibgž);
	}
}


// Äķ
..SoundPlay
function SoundPlay($SoundPlayName,b,${E,[vÝč)
{
	if(PassageTime($SoundPlayName)<1){
		SetVolume($SoundPlayName, 0, 1, null);
	}

	//SetStream("@m13", 15020);
	//SetStream("@m13_ef", 15020);

	//GtFNgdl
	$bgmmoji=Strstr($SoundPlayName, "m");
	if($bgmmoji==1||$bgmmoji==2){
		$SoundPlayName2=$SoundPlayName+"_ef";
		Request($SoundPlayName2, Stop);
		SetLoop($SoundPlayName2, [vÝč);
		SetVolume($SoundPlayName2, 0, 1, null);
		Request($SoundPlayName2, Play);
	}

	Request($SoundPlayName, Play);

	SetFrequency($SoundPlayName, 0, 1000, null);
//	SetPan($SoundPlayName, 0, 0, NULL);
	SetLoop($SoundPlayName, [vÝč);

	SetVolumeEX($SoundPlayName, b, ${E, null);


	Request($SoundPlayName, Disused);
}



..MusicStart
function MusicStart($MusicStartName,b,${E,Äķûü,ÄķXs[h,e|,[vÝč)
{
	//GtFNgdl
	$bgmmoji=Strstr($MusicStartName, "m");
	if($bgmmoji==1||$bgmmoji==2){
		$MusicStartName2=$MusicStartName+"_ef";
		Request($MusicStartName2, Stop);
		SetLoop($MusicStartName2, [vÝč);
		SetVolume($MusicStartName2, 0, 1, null);
		Request($MusicStartName2, Play);
	}

	Request($MusicStartName, Play);

	SetFrequency($MusicStartName, 0, ÄķXs[h, NULL);
	SetPan($MusicStartName, 0, Äķûü, NULL);
	SetLoop($MusicStartName, [vÝč);

	SetVolumeEX($MusicStartName, b, ${E, e|);

	Request($MusicStartName, Disused);
}

..SetVolumeEX
function SetVolumeEX("ibg", b, ${E, e|)
{
	$DynamicRange=${E/2;
	if(${E==1){
		$DynamicRange=1;
	}
	SetVolume("ibg", b, $DynamicRange, e|);
}

function SoundLoopEnd($ibgž)
{
	SetLoop($ibgž, false);
	SetLoopPoint($ibgž,0,999999);
}

..SetVolumeEF
function SetVolumeEF($SetVolumeName,${E)
{
	$DynamicRange=${E/2;
	if(${E==1){
		$DynamicRange=1;
	}

	$SetVolumeName2=$SetVolumeName+"_ef";
	SetVolume($SetVolumeName, 0, 0, null);
	SetVolume($SetVolumeName2, 0, $DynamicRange, null);
	Request($SetVolumeName2, Pause);
}




//ĄBGMðZßÄč`
//=============================================================================//
.//BGMč`
//=============================================================================//

function InitBGM()
{

//č`

//	CreateBGM("EndBGM01","m14");
//	Request("EndBGM01", Lock);
//	CreateBGM("EndBGM02","m01");
//	Request("EndBGM02", Lock);

	CreateBGMEX_ef("m01","m01",391,216640);
	CreateBGM_ef("m01no_f","m01no_f");//Ēgp
	CreateBGMEX_ef("m02","m02",14407,142429);
//	CreateBGMEX_ef("m03","m03",000,000);
	CreateBGMEX_ef("m03a","m03a",374,171803);//Ēgp
	CreateBGMEX_ef("m03","m03b",379,171748);//ĀÍm03ÆŊķÁÛĒĖÅāēŪ
	CreateBGMEX_ef("m04","m04",34616,254038);
	CreateBGMEX_ef("m04melody","m04melody",95,192105);
	CreateBGMEX_ef("m05","m05",306,208301);
	CreateBGMEX_ef("m06","m06",349,203167);
	CreateBGMEX_ef("m07","m07",352,244593);
	CreateBGM_ef("m08","m08");//Ēgp
	CreateBGMEX_ef("m08a","m08a",3007,176353);
	CreateBGMEX_ef("m08b","m08b",3009,176353);
	CreateBGMEX_ef("m09","m09",7618,198363);
	CreateBGMEX_ef("m10","m10",15562,204863);
	CreateBGMEX_ef("m11","m11",273,169857);
	CreateBGMEX_ef("m12","m12",6461,169455);
	CreateBGMEX_ef("m13","m13",302,221927);
	CreateBGMEX_ef("m13b","m13b",206907,428533);//[ÅÁŋ °fÞÅ

	CreateBGM_ef("uta01","uta01");
	CreateBGM_ef("uta02","uta02");

//	CreateBGMEX_ef("m91","m91",14003,45999););
}




function VoiceOn(){

	#ęÍNA=true;
	#voice_on_Đliū=true;
	#voice_on_šģ=true;
	#voice_on_VcYō=true;
	#voice_on_ēėŽÄ=true;
	#voice_on_îéÛ=true;
	#voice_on_éėß@=true;
	#voice_on_åđÞ}=true;
	#voice_on_iqģæ=true;
	#voice_on_ŧíęð=true;
	#voice_on_áÔŽę =true;
	#voice_on_^ü=true;
	#voice_on_·âE=true;
	#voice_on_ŽūY=true;
	#voice_on_íđū=true;
	#voice_on_ÓŦ=true;
	#voice_on_ÓČ=true;
	#voice_on_Ŧė=true;
	#voice_on_åđqá=true;
	#voice_on_VēķS=true;
	#voice_on_Ąėą=true;
	#voice_on_ŦXÛ=true;
	#voice_on_·=true;
	#voice_on_Lm=true;
	#voice_on_K[Qbg=true;
	#voice_on_a{=true;
	#voice_on_cH=true;
	#voice_on_cHė=true;
	#voice_on_ņĒšģ=true;
	#voice_on_öķíÅÖ=true;
	#voice_on_F{=true;
	#voice_on_Ī·=true;
	#voice_on_`ī=true;
	#voice_on_Â]=true;
	#voice_on_Fl{Æ=true;
	#voice_on_Đl=true;
	#voice_on_RŊĖņĖ=true;
	#voice_on_ņĖĖí=true;
	#voice_on_ģ@=true;
	#voice_on_Šũq=true;
	#voice_on_ŦM=true;
	#voice_on_EB[=true;
	#voice_on_Ģķq=true;
	#voice_on_Ruf=true;
	#voice_on_EHt=true;
	#voice_on_iqĨ=true;
	#voice_on_åđÔ}=true;
	#voice_on_ncšģ=true;
	#voice_on_OÔ=true;
	#voice_on_Yē=true;
	#voice_on_TVAg=true;
	#voice_on_I[K=true;
	#voice_on_ĮĖõ=true;
	#voice_on_âŊ=true;
	#voice_on_ŧĖžjš=true;
	#voice_on_ŧĖžš=true;

}





//ĄeJÚæĘč`
//=============================================================================//
.//eJÚæĘč`
//=============================================================================//
//æðæūĩÜ·ĢĻgpãÍKļÁĩÄ­ūģĒĢĐ
function TakeRateImg()
{
	Fade("@Oclock*", 0, 0, null, true);
	Fade("@Oclock*/*", 0, 0, null, true);
	Fade("@text*", 0, 0, null, true);

	QuickStop();

	WriteImage(String("%s/%s.img",#SYSTEM_save_path,Substr($GameName,0,Strstr($GameName,".nss")-1)));
	WaitKey();
}

//ĄļFadeDeleteĄđĄļDrawDeleteĄđĖÓÅĐŪIÉæðæūĩÜ·
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

//CÓĖęÅĐŪIÉæðæūĩÜ·
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

//RateTakenModeÅJÚĢŽ―āģ­eLXgÜÅ―ĮčĒ―ę
function TakeRateBack()
{
	if($RateTakenMode){
		SetVolume("@*", 100, 0, NULL);
		Delete("*");
		Delete("@*");
		Escape(4);
	}
}

//\Ķp
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







//JnXNvgæŠÅĖsŦæð­§ÏX
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
	if($KagomeTex==1){$FolderName="1800m[R";}
	else if($KagomeTex==2){$FolderName="1800tE";}
	else if($KagomeTex==3){$FolderName="1800bß";}
	else if($KagomeTex==4){$FolderName="1800đg";}
	else if($KagomeTex==5){$FolderName="1800đ";}
	else if($KagomeTex==6){$FolderName="1800įH";}
	else if($KagomeTex==7){$FolderName="1810m[R_tE";}
	else if($KagomeTex==8){$FolderName="1810đg";}
	else if($KagomeTex==9){$FolderName="1810đ";}
	else if($KagomeTex==10){$FolderName="1820m[R";}
	else if($KagomeTex==11){$FolderName="1820tE";}
	else if($KagomeTex==12){$FolderName="1820bß";}
	else if($KagomeTex==13){$FolderName="1820įH";}
	else if($KagomeTex==14){$FolderName="1830tE";}
	else if($KagomeTex==15){$FolderName="1830bß";}
	else if($KagomeTex==16){$FolderName="1830đ_m[R";}
	else if($KagomeTex==17){$FolderName="1830įH";}
	else if($KagomeTex==18){$FolderName="1840đg";}
	else if($KagomeTex==19){$FolderName="1840đ_m[R_h";}
	else if($KagomeTex==20){$FolderName="1850bß";}
	else if($KagomeTex==21){$FolderName="1850đg";}
	else if($KagomeTex==22){$FolderName="1850įH_tE";}
	else if($KagomeTex==23){$FolderName="1900m[R";}
	else if($KagomeTex==24){$FolderName="1900tE";}
	else if($KagomeTex==25){$FolderName="1900bß";}
	else if($KagomeTex==26){$FolderName="1900đg";}
	else if($KagomeTex==27){$FolderName="1900đ";}
	else if($KagomeTex==28){$FolderName="1900įH";}
	else if($KagomeTex==29){$FolderName="1910m[R_tE";}
	else if($KagomeTex==30){$FolderName="1910bß";}
	else if($KagomeTex==31){$FolderName="1910đg_įH";}
	else if($KagomeTex==32){$FolderName="1920bß";}
	else if($KagomeTex==33){$FolderName="1920đg_įH";}
	else if($KagomeTex==34){$FolderName="1920đ_m[R_tE";}
	else if($KagomeTex==35){$FolderName="1930m[R";}
	else if($KagomeTex==36){$FolderName="1930tE";}
	else if($KagomeTex==37){$FolderName="1930bß";}
	else if($KagomeTex==38){$FolderName="1930đg";}
	else if($KagomeTex==39){$FolderName="1930đ";}
	else if($KagomeTex==40){$FolderName="1930įH";}
	else if($KagomeTex==41){$FolderName="1940m[R";}
	else if($KagomeTex==42){$FolderName="1940bß";}
	else if($KagomeTex==43){$FolderName="1940đ";}
	else if($KagomeTex==44){$FolderName="1940įH";}
	else if($KagomeTex==45){$FolderName="1942đg_m[R";}
	else if($KagomeTex==46){$FolderName="1943m[R";}
	else if($KagomeTex==47){$FolderName="1943đg";}
	else if($KagomeTex==48){$FolderName="1948đg_m[R";}
	else if($KagomeTex==49){$FolderName="1949m[R";}
	else if($KagomeTex==50){$FolderName="1949đg";}
	else if($KagomeTex==51){$FolderName="1950m[R";}
	else if($KagomeTex==52){$FolderName="1950tE";}
	else if($KagomeTex==53){$FolderName="1950bß";}
	else if($KagomeTex==54){$FolderName="1950đg_đ";}
	else if($KagomeTex==55){$FolderName="2000m[R";}
	else if($KagomeTex==56){$FolderName="2000đg";}
	else if($KagomeTex==57){$FolderName="2000đ";}
	else if($KagomeTex==58){$FolderName="2000įH_bß";}
	else if($KagomeTex==59){$FolderName="2007įH_bß_m[R";}
	else if($KagomeTex==60){$FolderName="2008m[R";}
	else if($KagomeTex==61){$FolderName="2008įH_bß";}
	else if($KagomeTex==62){$FolderName="2010m[R";}
	else if($KagomeTex==63){$FolderName="2010đg_tE";}
	else if($KagomeTex==64){$FolderName="2010đ";}
	else if($KagomeTex==65){$FolderName="2010įH_bß";}
	else if($KagomeTex==66){$FolderName="2020JS1";}
	else if($KagomeTex==67){$FolderName="2020m[R";}
	else if($KagomeTex==68){$FolderName="2020đg_tE";}
	else if($KagomeTex==69){$FolderName="2020đ";}
	else if($KagomeTex==70){$FolderName="2020įH_bß";}
	else if($KagomeTex==71){$FolderName="2030m[R";}
	else if($KagomeTex==72){$FolderName="2030đg_tE";}
	else if($KagomeTex==73){$FolderName="2030đ";}
	else if($KagomeTex==74){$FolderName="2030įH_bß";}
	else if($KagomeTex==75){$FolderName="2040bß";}
	else if($KagomeTex==76){$FolderName="2040đg_tE";}
	else if($KagomeTex==77){$FolderName="2040đ";}
	else if($KagomeTex==78){$FolderName="2040įH_m[R";}
	else if($KagomeTex==79){$FolderName="2045đg_tE";}
	else if($KagomeTex==80){$FolderName="2047đg_tE";}
	else if($KagomeTex==81){$FolderName="2050JS2";}
	else if($KagomeTex==82){$FolderName="2050m[R";}
	else if($KagomeTex==83){$FolderName="2050bß";}
	else if($KagomeTex==84){$FolderName="2050đg_đ_tE";}
	else if($KagomeTex==85){$FolderName="2100m[R";}
	else if($KagomeTex==86){$FolderName="2100bß";}
	else if($KagomeTex==87){$FolderName="2100đg_tE";}
	else if($KagomeTex==88){$FolderName="2100đ";}
	else if($KagomeTex==89){$FolderName="2110m[R";}
	else if($KagomeTex==90){$FolderName="2110đg_tE";}
	else if($KagomeTex==91){$FolderName="2110đ";}
	else if($KagomeTex==92){$FolderName="2111đg_tE";}
	else if($KagomeTex==93){$FolderName="2115đg_tE";}
	else if($KagomeTex==94){$FolderName="2120đg_bß_đ_m[R_tE";}
	else if($KagomeTex==95){$FolderName="2130tE";}
	else if($KagomeTex==96){$FolderName="2130bß";}
	else if($KagomeTex==97){$FolderName="2130đg_đ_m[R";}
	else if($KagomeTex==98){$FolderName="2131tE";}
	else if($KagomeTex==99){$FolderName="2131bß";}
	else if($KagomeTex==100){$FolderName="2134bß";}
	else if($KagomeTex==101){$FolderName="2139tE";}
	else if($KagomeTex==102){$FolderName="2140m[R_tE";}
	else if($KagomeTex==103){$FolderName="2140bß";}
	else if($KagomeTex==104){$FolderName="2140đg_đ";}
	else if($KagomeTex==105){$FolderName="2143bß";}
	else if($KagomeTex==106){$FolderName="2144bß";}
	else if($KagomeTex==107){$FolderName="2150tE";}
	else if($KagomeTex==108){$FolderName="2150bß";}
	else if($KagomeTex==109){$FolderName="2150đg_đ_m[R";}
	else if($KagomeTex==110){$FolderName="2200m[R";}
	else if($KagomeTex==111){$FolderName="2200bß";}
	else if($KagomeTex==112){$FolderName="2200đg_đ";}
	else if($KagomeTex==113){$FolderName="2206m[R";}
	else if($KagomeTex==114){$FolderName="2210m[R";}
	else if($KagomeTex==115){$FolderName="2210tE";}
	else if($KagomeTex==116){$FolderName="2210bß";}
	else if($KagomeTex==117){$FolderName="2210đg_đ";}
	else if($KagomeTex==118){$FolderName="2220bß_tE";}
	else if($KagomeTex==119){$FolderName="2220đg_đ_m[R";}
	else if($KagomeTex==120){$FolderName="2230JS3";}
	else if($KagomeTex==121){$FolderName="2230tE";}
	else if($KagomeTex==122){$FolderName="2230bß";}
	else if($KagomeTex==123){$FolderName="2230đg_đ_m[R";}
	else if($KagomeTex==124){$FolderName="2233đg_đ_m[R_tE";}
	else if($KagomeTex==125){$FolderName="2235tE";}
	else if($KagomeTex==126){$FolderName="2235đg_đ_m[R";}
	else if($KagomeTex==127){$FolderName="2240tE";}
	else if($KagomeTex==128){$FolderName="2240đg_bß_đ_m[R";}
	else if($KagomeTex==129){$FolderName="2250JS4";}
	else if($KagomeTex==130){$FolderName="2250tE";}
	else if($KagomeTex==131){$FolderName="2250đg_bß_đ_m[R";}
	else if($KagomeTex==132){$FolderName="2300tE_h";}
	else if($KagomeTex==133){$FolderName="2300đg_bß_đ_m[R";}
	else if($KagomeTex==134){$FolderName="2301bß";}
	else if($KagomeTex==135){$FolderName="2301đg";}
	else if($KagomeTex==136){$FolderName="2301đ_m[R";}
	else if($KagomeTex==137){$FolderName="2304đg";}
	else if($KagomeTex==138){$FolderName="2310m[R";}
	else if($KagomeTex==139){$FolderName="2310bß";}
	else if($KagomeTex==140){$FolderName="2310đg";}
	else if($KagomeTex==141){$FolderName="2310đ";}
	else if($KagomeTex==142){$FolderName="2311m[R";}
	else if($KagomeTex==143){$FolderName="2320JS5";}
	else if($KagomeTex==144){$FolderName="2320m[R";}
	else if($KagomeTex==145){$FolderName="2320tE_h";}
	else if($KagomeTex==146){$FolderName="2320bß";}
	else if($KagomeTex==147){$FolderName="2320đg_įH";}
	else if($KagomeTex==148){$FolderName="2320đ";}
	else if($KagomeTex==149){$FolderName="2330m[R";}
	else if($KagomeTex==150){$FolderName="2330tE";}
	else if($KagomeTex==151){$FolderName="2330đg_įH_bß";}
	else if($KagomeTex==152){$FolderName="2330đ";}
	else if($KagomeTex==153){$FolderName="2331đg";}
	else if($KagomeTex==154){$FolderName="2331įH_bß";}
	else if($KagomeTex==155){$FolderName="2338m[R";}
	else if($KagomeTex==156){$FolderName="2340m[R_tE";}
	else if($KagomeTex==157){$FolderName="2340đg";}
	else if($KagomeTex==158){$FolderName="2340đ";}
	else if($KagomeTex==159){$FolderName="2340įH_bß";}
	else if($KagomeTex==160){$FolderName="2345đ";}
	else if($KagomeTex==161){$FolderName="2348m[R_tE";}
	else if($KagomeTex==162){$FolderName="2349m[R_tE";}
	else if($KagomeTex==163){$FolderName="2350đg_įH_bß_đ_m[R_tE";}
	else if($KagomeTex==164){$FolderName="2400đg_įH_bß_đ_m[R_tE";}
	else if($KagomeTex==165){$FolderName="a2020đ_m[R";}
	else if($KagomeTex==166){$FolderName="a2030đ_m[R";}
	else if($KagomeTex==167){$FolderName="a2040đg_tE";}
	else if($KagomeTex==168){$FolderName="a2040đ_m[R";}
	else if($KagomeTex==169){$FolderName="a2040įH";}
	else if($KagomeTex==170){$FolderName="a2047đg_tE";}
	else if($KagomeTex==171){$FolderName="a2050JS";}
	else if($KagomeTex==172){$FolderName="aa2050đg_tE";}
	else if($KagomeTex==173){$FolderName="aa2050įH_bß";}
	else if($KagomeTex==174){$FolderName="aa2100bß";}
	else if($KagomeTex==175){$FolderName="aa2100đg";}
	else if($KagomeTex==176){$FolderName="aa2100įH_tE";}
	else if($KagomeTex==177){$FolderName="aa2110tE";}
	else if($KagomeTex==178){$FolderName="aa2110bß";}
	else if($KagomeTex==179){$FolderName="aa2110đg";}
	else if($KagomeTex==180){$FolderName="aa2110įH";}
	else if($KagomeTex==181){$FolderName="aa2120tE";}
	else if($KagomeTex==182){$FolderName="aa2120đg";}
	else if($KagomeTex==183){$FolderName="aa2120įH_bß";}
	else if($KagomeTex==184){$FolderName="aa2345tE";}
	else if($KagomeTex==185){$FolderName="aa2350įH_bß";}
	else if($KagomeTex==186){$FolderName="aa2355đg";}
	else if($KagomeTex==187){$FolderName="ab2050đ_m[R";}
	else if($KagomeTex==188){$FolderName="ab2051m[R";}
	else if($KagomeTex==189){$FolderName="ab2051đ";}
	else if($KagomeTex==190){$FolderName="ab2100m[R";}
	else if($KagomeTex==191){$FolderName="ab2100đg_đ_tE";}
	else if($KagomeTex==192){$FolderName="ab2100įH_bß";}
	else if($KagomeTex==193){$FolderName="ab2107đg_đ_m[R_tE";}
	else if($KagomeTex==194){$FolderName="ab2108m[R";}
	else if($KagomeTex==195){$FolderName="ab2108đg_đ_tE";}
	else if($KagomeTex==196){$FolderName="ab2110m[R";}
	else if($KagomeTex==197){$FolderName="ab2110đ";}
	else if($KagomeTex==198){$FolderName="ab2110įH_bß";}
	else if($KagomeTex==199){$FolderName="ab2131įH_bß_tE";}
	else if($KagomeTex==200){$FolderName="ab2133tE";}
	else if($KagomeTex==201){$FolderName="ab2133įH_bß";}
	else if($KagomeTex==202){$FolderName="ab2140đg_đ";}
	else if($KagomeTex==203){$FolderName="ab2140įH_bß";}
	else if($KagomeTex==204){$FolderName="ab2150đg_đ_m[R";}
	else if($KagomeTex==205){$FolderName="ab2150įH_bß";}
	else if($KagomeTex==206){$FolderName="ab2200bß";}
	else if($KagomeTex==207){$FolderName="ab2200đg";}
	else if($KagomeTex==208){$FolderName="ab2200įH";}
	else if($KagomeTex==209){$FolderName="ab2210tE";}
	else if($KagomeTex==210){$FolderName="ab2210đg_h";}
	else if($KagomeTex==211){$FolderName="ab2210įH";}
	else if($KagomeTex==212){$FolderName="ab2220įH_bß";}
	else if($KagomeTex==213){$FolderName="ab2230JS";}
	else if($KagomeTex==214){$FolderName="aba2400bß";}
	else if($KagomeTex==215){$FolderName="aba2401įH_tE";}
	else if($KagomeTex==216){$FolderName="aba2402tE";}
	else if($KagomeTex==217){$FolderName="aba2403đ_m[R";}
	else if($KagomeTex==218){$FolderName="aba2404đg";}
	else if($KagomeTex==219){$FolderName="abb2400đg_įH_bß_đ_m[R_tE";}
	else if($KagomeTex==220){$FolderName="b2050įH";}
	else if($KagomeTex==221){$FolderName="b2110đg_įH_tE";}
	else if($KagomeTex==222){$FolderName="b2115đg_įH_tE";}
	else if($KagomeTex==223){$FolderName="b2120įH";}
	else if($KagomeTex==224){$FolderName="b2130bß";}
	else if($KagomeTex==225){$FolderName="b2134bß";}
	else if($KagomeTex==226){$FolderName="b2140įH_bß";}
	else if($KagomeTex==227){$FolderName="b2144įH_bß";}
	else if($KagomeTex==228){$FolderName="b2150įH_bß";}
	else if($KagomeTex==229){$FolderName="b2200įH_bß";}
	else if($KagomeTex==230){$FolderName="b2206m[R";}
	else if($KagomeTex==231){$FolderName="b2208įH_bß_m[R";}
	else if($KagomeTex==232){$FolderName="b2209m[R";}
	else if($KagomeTex==233){$FolderName="b2209įH_bß";}
	else if($KagomeTex==234){$FolderName="b2210đg_đ_m[R";}
	else if($KagomeTex==235){$FolderName="b2210įH_bß";}
	else if($KagomeTex==236){$FolderName="b2213đg";}
	else if($KagomeTex==237){$FolderName="b2213đ_m[R";}
	else if($KagomeTex==238){$FolderName="b2220JS";}
	else if($KagomeTex==239){$FolderName="ba2220đg_đ_m[R";}
	else if($KagomeTex==240){$FolderName="ba2220įH_bß";}
	else if($KagomeTex==241){$FolderName="ba2221įH_bß";}
	else if($KagomeTex==242){$FolderName="ba2230m[R";}
	else if($KagomeTex==243){$FolderName="ba2230đg_đ";}
	else if($KagomeTex==244){$FolderName="ba2230įH_bß";}
	else if($KagomeTex==245){$FolderName="ba2235đg";}
	else if($KagomeTex==246){$FolderName="ba2235đ";}
	else if($KagomeTex==247){$FolderName="ba2235įH_bß_m[R";}
	else if($KagomeTex==248){$FolderName="ba2236m[R";}
	else if($KagomeTex==249){$FolderName="ba2236įH_bß";}
	else if($KagomeTex==250){$FolderName="ba2239đ_m[R";}
	else if($KagomeTex==251){$FolderName="ba2240đg";}
	else if($KagomeTex==252){$FolderName="ba2240đ_m[R";}
	else if($KagomeTex==253){$FolderName="ba2240įH_bß";}
	else if($KagomeTex==254){$FolderName="ba2248đg_đ_m[R";}
	else if($KagomeTex==255){$FolderName="ba2250đg_įH_bß_đ_m[R";}
	else if($KagomeTex==256){$FolderName="ba2300JS";}
	else if($KagomeTex==257){$FolderName="baa2300đg_įH_bß_đ_m[R_tE";}
	else if($KagomeTex==258){$FolderName="baa2330đ_m[R_h";}
	else if($KagomeTex==259){$FolderName="baa2351įH_bß";}
	else if($KagomeTex==260){$FolderName="baa2352įH_bß";}
	else if($KagomeTex==261){$FolderName="baa2353įH_bß";}
	else if($KagomeTex==262){$FolderName="baa2354įH_bß";}
	else if($KagomeTex==263){$FolderName="baa2355đg";}
	else if($KagomeTex==264){$FolderName="baa2356đ_m[R";}
	else if($KagomeTex==265){$FolderName="baa2357đ_m[R";}
	else if($KagomeTex==266){$FolderName="baa2358đ_m[R";}
	else if($KagomeTex==267){$FolderName="baa2359tE";}
	else if($KagomeTex==268){$FolderName="bab2300đg_įH_bß_đ_m[R";}
	else if($KagomeTex==269){$FolderName="bab2330įH_bß";}
	else if($KagomeTex==270){$FolderName="bab2340įH_bß_h";}
	else if($KagomeTex==271){$FolderName="bab2350įH_bß";}
	else if($KagomeTex==272){$FolderName="bab2352įH_bß";}
	else if($KagomeTex==273){$FolderName="bab2354įH_bß";}
	else if($KagomeTex==274){$FolderName="bab2358đ_m[R";}
	else if($KagomeTex==275){$FolderName="bab2359đg_tE";}
	else if($KagomeTex==276){$FolderName="bb2220đg_đ";}
	else if($KagomeTex==277){$FolderName="bb2221įH_bß_h";}
	else if($KagomeTex==278){$FolderName="bb2235đg_đ";}
	else if($KagomeTex==279){$FolderName="bb2400įH_bß";}
	else if($KagomeTex==280){$FolderName="bb2401đg_đ";}
	else if($KagomeTex==281){$FolderName="c2230đg_đ";}
	else if($KagomeTex==282){$FolderName="c2233đg_đ_tE";}
	else if($KagomeTex==283){$FolderName="c2235đg_đ";}
	else if($KagomeTex==284){$FolderName="c2240đg_bß_đ";}
	else if($KagomeTex==285){$FolderName="c2250tE";}
	else if($KagomeTex==286){$FolderName="c2250đg_bß_đ";}
	else if($KagomeTex==287){$FolderName="c2300tE";}
	else if($KagomeTex==288){$FolderName="c2300bß";}
	else if($KagomeTex==289){$FolderName="c2300đg_đ";}
	else if($KagomeTex==290){$FolderName="c2310đg_tE";}
	else if($KagomeTex==291){$FolderName="c2310đ";}
	else if($KagomeTex==292){$FolderName="c2340bß";}
	else if($KagomeTex==293){$FolderName="c2341đg_tE";}
	else if($KagomeTex==294){$FolderName="c2350đg_đ";}
	else if($KagomeTex==295){$FolderName="c2351tE";}
	else if($KagomeTex==296){$FolderName="c2357bß";}
	else if($KagomeTex==297){$FolderName="c2400đg";}
	else if($KagomeTex==298){$FolderName="c2401đg_tE";}
	else if($KagomeTex==299){$FolderName="c2402đg";}
	else if($KagomeTex==300){$FolderName="c2403đg_đ_tE";}
	else if($KagomeTex==301){$FolderName="c2404đg";}
	else if($KagomeTex==302){$FolderName="c2405tE";}
	else if($KagomeTex==303){$FolderName="c2406đ";}
	else if($KagomeTex==304){$FolderName="d2304đg";}
	else if($KagomeTex==305){$FolderName="d2310đg";}
	else if($KagomeTex==306){$FolderName="d2311m[R";}
	else if($KagomeTex==307){$FolderName="d2341m[R";}
	else if($KagomeTex==308){$FolderName="d2345đ_m[R";}
	else if($KagomeTex==309){$FolderName="d2400đg";}
	else if($KagomeTex==310){$FolderName="d2401đ_m[R";}
	else if($KagomeTex==311){$FolderName="d2402đg_đ_m[R";}
	else if($KagomeTex==312){$FolderName="d2403đ_m[R";}
	else if($KagomeTex==313){$FolderName="d2404đg";}
	else if($KagomeTex==314){$FolderName="e2320đg";}
	else if($KagomeTex==315){$FolderName="e2330đg";}
	else if($KagomeTex==316){$FolderName="e2338m[R";}
	else if($KagomeTex==317){$FolderName="e2349m[R";}
	else if($KagomeTex==318){$FolderName="e2355đg";}
	else if($KagomeTex==319){$FolderName="e2400đ_m[R";}
	else if($KagomeTex==320){$FolderName="e2404đg";}
	else if($KagomeTex==321){$FolderName="y1730tE";}
	else if($KagomeTex==322){$FolderName="y1730đg";}
	else if($KagomeTex==323){$FolderName="y1730đ";}
	else if($KagomeTex==324){$FolderName="y1750m[R";}
	else if($KagomeTex==325){$FolderName="y1750~dn";}
	else if($KagomeTex==326){$FolderName="y1750bß";}
	else if($KagomeTex==327){$FolderName="y1751įH_bß";}
	else if($KagomeTex==328){$FolderName="y1752bß";}
	else if($KagomeTex==329){$FolderName="y1752įH";}
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
		$myRoute="gD[";
	}


}
