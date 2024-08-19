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

//仭儅僋儘傪偝傜偵儅僋儘偵偰傑偲傔偰掕媊
//=============================================================================//
.//傑偲傔掕媊
//=============================================================================//

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..SystemInit
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function SystemInit()
{
	$SYSTEM_text_interval = 48;
	$SYSTEM_spt_name=$峔惉柤+$僗僋儕僾僩僶乕僕儑儞;

	//仱愨懳揑壒惡摨婜夝彍
	$SYSTEM_ignore_voice_sync_text=false;
	$SYSTEM_ignore_text_speed=false;

	//仭堦搙撉傒崬傫偩傜嵞搙撉傒崬傫偱偟傑傢側偄傛偆偵。
	//仱BGM慡晹
	if(!$BGM_Init){
		if($Logo){
			//CreateTexture("僞僀僩儖寈崘", 100, 0, 0, "cg/sys/title/儘乕僨傿儞僌.png");
			//Fade("攚宨侾", 0, 0, null, true);
			//Fade("攚宨侾", 300, 1000, null, true);
		}
		InitBGM();
		$BGM_Init=true;
	}
	//仱TEXTBOX宯偲偦偺懠僔僗僥儉夋憸宯
	if(!$BOX_Init){
		LoadBox();
		SystemSet();
		$BOX_Init=true;
	}

	//Fade("僞僀僩儖寈崘", 300, 0, null, true);
	//Delete("僞僀僩儖寈崘");
}


//仭僗僋儕僾僩朻摢掕媊娭楢
//=============================================================================//
.//婎慴掕媊
//=============================================================================//

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..SystemSet
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function SystemSet()
{
	//仧挻懍懳墳偩偍
	SystemConquest();

	//仧梊傔撉傒偨偄夋憸偑偁傟偽丒丒丒

}

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..SystemConquest
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function SystemConquest()
{
	//仧挻懍懳墳
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

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..LoadBox
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function LoadBox()
{
	//仚捠忢僂傿儞僪僂夋憸
	//墶
	CreateTexture("boxHN", 19000, Center, 560, "cg/sys/adv/THTextWindow.png");
	SetAlias("boxHN", "boxHN");
	Fade("boxHN",0,0,null,false);
	Request("boxHN", Lock);
	Request("boxHN", Hideable);

	//墶婄
	CreateTexture("boxHF", 19000, Center, 560, "cg/sys/adv/THTextWindow_Fw.png");
	SetAlias("boxHF", "boxHF");
	Fade("boxHF",0,0,null,false);
	Request("boxHF", Lock);
	Request("boxHF", Hideable);


	//廲
	CreateTexture("boxVN", 19000, 426, 44, "cg/sys/adv/TextWindow.png");
	SetAlias("boxVN", "boxVN");
	Fade("boxVN",0,0,null,false);
	Request("boxVN", Lock);
	Request("boxVN", Hideable);

	//廲婄
	CreateTexture("boxVF", 19000, 426, -4, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxVF", "boxVF");
	Fade("boxVF",0,0,null,false);
	Request("boxVF", Lock);
	Request("boxVF", Hideable);
	Move("boxVF", 0, @0, @4, null, true);


	//慡夋柺
	CreateTexture("boxAll", 20000, Center, Middle, "cg/sys/adv/fullwindow.png");
	SetAlias("boxAll", "boxAll");
	Fade("boxAll",0,0,null,false);
	Request("boxAll", Lock);
	Request("boxAll", Hideable);

	//仚捠忢僂傿儞僪僂梡
	CreateWindow("box0", 20001, 0, 0, 1024, 768, false);
	SetAlias("box0", "box0");
	Request("box0", Lock);

	//仚僇僑儊捿傞偟梡
	//CreateName("RateWindow");
	//SetAlias("RateWindow", "RateWindow");
	//Request("RateWindow", Lock);
}


//仭僗僋儕僾僩朻摢丗杮暥屇傃弌偟慜屻掕媊
//儊僀儞僎乕儉撪亂CallScene慜亃
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..GameMainSet
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function GameMainSet()
{
	//僨僶僢僌曄悢傪弶婜壔
	//$DEBUG_cgbglist="";

	//仚挻懍慡撉傒愝掕丗枹撉傊
	//Conquest($ConGameName,$GameName2,false);//Main
	//Conquest($ConGameName,$GameName,false);//杮暥Scene

	if(!$PLACE_reco){
		//仚帪崗枅偵僗僉僢僾偲僆乕僩儌乕僪傪夝彍
		#JIKOKU_auto_text_cancel=true;//傗傜側偄
		if(!#JIKOKU_auto_text_cancel){
			$SYSTEM_skip=false;
			#SYSTEM_skip_express=false;
			$SYSTEM_text_auto=false;
	
			//Message("僨僶僢僌梡僂傿儞僪僂","僨僶僢僌梡偱偡侾",YESNOCANCE,EXCLAMATION);
		}else if(#auto_log){
			#auto_log=false;
			$SYSTEM_text_auto_lock=false;
			$SYSTEM_text_auto=true;
	
			//Message("僨僶僢僌梡僂傿儞僪僂","僨僶僢僌梡偱偡俀",YESNOCANCE,EXCLAMATION);
		}
	}

	//俀峴壒惡摨婜斣崋弶婜壔
	$AddTextCount=1;
}

//儊僀儞僎乕儉撪亂CallScene屻亃
function GameMainSet2()
{
	//仱俠俧僨僶僢僌梡僙乕僽僨乕僞嶌惉
	//Save(5000);

	//仚挻懍慡撉傒愝掕夝彍
	Conquest($ConGameName,$GameName2,true);//Main
	Conquest($ConGameName,$GameName,true);//杮暥Scene

	//仱俠俧僨僶僢僌梡丗僙乕僽僼僅儖僟偺5000僼僅儖僟偵「僔乕儞柤」偺僼傽僀儖柤偱揻偒弌偟
	//$DEBUG_savepath=String("%s/5000/%s.txt",#SYSTEM_save_path,$GameName);
	//WriteFile($DEBUG_savepath,$DEBUG_cgbglist,false);
	//$DEBUG_cgbglist="";
}

function GameBreak()
{
	//仴僎乕儉僒乕僋儖傪僽儗僀僋偡傞嵺偵
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@x*", 2000, 0, NULL);
	PrintFadeNut("忋攚宨", 2000, true);

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

//仭廔椆梡僗僋儕僾僩偺嵟屻偵婰嵹
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..EndScript
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function EndScript()
{
	if($GameClose){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("忋攚宨", 1000, true);

		//仠憤僾儗僀帪娫丗崌寁
		#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);

		Exit();
	}else if($GameTV){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("忋攚宨", 1000, true);

		$GameName = "";
		$GameCircle=false;
		$GameTV=true;
	}else if(!$僄僉僗僩儔僞僀僩儖){
		SetVolume("@SE*", 1000, 0, NULL);
		SetVolume("@x*", 1000, 0, NULL);
		PrintFadeNut("忋攚宨", 1000, true);
	}else{
		$GameName = "";
	}
}

//仭僄僉僗僩儔夞憐梡丗杮曇朻摢偵巇崬傓
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..ReConquest
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function ReConquest()
{
	Conquest($ConGameName,$PreGameName,true);
}

//仭挻懍敪摦弶婜壔
//亂Scene愭摢亃
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..SkipOut
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function SkipOut()
{
	if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}
	Conquest($ConGameName,$GameName2,true);

	SetVolume("@*", 0, 0, NULL);
	ClearFadeAll(0,true);

	//仱嶌昳偵傛傝偗傝（儃僢僋僗摍徚嫀）
	Fade("@boxH", 0, 0, null, true);
	Fade("@boxM",0,0,null,true);


	#SYSTEM_skip_express_minimum_time+=0;

	Wait(64);
}

//亂Box撪亃
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..BoxOut
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function BoxOut()
{
	#SYSTEM_skip_express_minimum_time=0;

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}

		SetVolume("@*", 0, 0, NULL);
		ClearFadeAll(0,true);

		//仱嶌昳偵傛傝偗傝（儃僢僋僗摍徚嫀）
		Fade("@boxH", 0, 0, null, true);
		Fade("@boxM",0,0,null,true);


		#SYSTEM_skip_express_minimum_time+=0;
		Escape(3);
	}
}


//仩僨僶僢僌梡丗CG儕僗僩揻弌偟梡
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..DEBUG_cgbgcorrect
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function DEBUG_cgbgcorrect($filename)
{
	if(Strstr($filename,"bg")&&!Strstr($DEBUG_cgbglist,$filename)){
		//僼傽僀儖柤偵'bg'偲偄偆暥帤楍偑偁傝，側偍偐偮弶尒偺応崌偼儕僗僩偵捛壛
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}else if(Strstr($filename,"ev")&&!Strstr($DEBUG_cgbglist,$filename)){
		//僼傽僀儖柤偵'ev'偲偄偆暥帤楍偑偁傝，側偍偐偮弶尒偺応崌偼儕僗僩偵捛壛
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}
}


//仭僾儗僀帪娫儅僋儘
//=============================================================================//
.//憤僾儗僀帪娫
//=============================================================================//
function GetTime()
{
	//仠憤僾儗僀帪娫丗崌寁
	#ALL_PLAY_TIME=#ALL_PLAY_TIME+(Time()-#BEGIN_TIME);
	//仠憤僾儗僀帪娫丗寁應奐巒
	#BEGIN_TIME=Time();
}


//仭復僞僀僩儖暘棧儅僋儘
//=============================================================================//
.//憤僾儗僀帪娫
//=============================================================================//
//婼歀奨偱傕巊梡//婼歀奨偱偼$復斣崋偺堷悢傪偲傞
function SceneChange($復斣崋)
{
	//婼歀奨梡張棟
	if($復斣崋>1){
		Enter1line();
	}

	$ChapterNum=$復斣崋;
	$ChapterName=String("Episode%02d",$ChapterNum);
	VariableValue(#,$ChapterName,true);

	if($復斣崋==1){$復戣="第一章丂鬼哭雨夜";}
	else if($復斣崋==2){$復戣="第二章丂机拳功剑";}
	else if($復斣崋==3){$復戣="第三章丂恩仇追想";}
	else if($復斣崋==4){$復戣="第四章丂浦东地狱变";}
	else if($復斣崋==5){$復戣="第五章丂骤风血雨";}
	else if($復斣崋==6){$復戣="第六章丂爱憎之园";}
	$復娫憓擖="丂丂丂丂"+$復戣;

	SetBacklog("丂",null,null);
	SetBacklog($復娫憓擖,null,null);
	SetBacklog("丂",null,null);

	Enter1line();
	//婼歀奨梡張棟偙偙傑偱
	
	if(#SceneSkip){
		//僗僉僢僾傛傝挻懍傪愭偵愝掕偡傞
		#SYSTEM_skip_express=false;
		$SYSTEM_skip=false;
		//$SYSTEM_text_auto=false;
	}
}

//僶僢僋儘僌偱偺僼傽僀儖偲僼傽僀儖偺娫偵侾峴擖傟傞梡
function Enter1line()
{
	SetBacklog("丂",null,null);
}




//仭僗僋儕僾僩偵偍偄偰僥僉僗僩傪掕媊偡傞儅僋儘僐儅儞僪
//=============================================================================//
.//僥僉僗僩掕媊
//=============================================================================//

//僥僉僗僩傾僀僐儞傪搑拞偱曄偊偨偄応崌偼偍巊偄偔偩偝偄
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..TextIconSet()
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function TextIconSet()
{
	//夵峴
	$SYSTEM_text_icon_line="cg/sys/icon/line/暥帤憲傝傾僀僐儞%04d.png#5";
	//夵儁乕僕
	$SYSTEM_text_icon_page="cg/sys/icon/page/暥帤憲傝傾僀僐儞%04d.png#5";
	//帺摦暥帤憲傝
	$SYSTEM_text_icon_auto="cg/sys/icon/auto/AUTO傾僀僐儞%02d.png#5";
}
function TextIconSet2()
{
	//夵峴
	$SYSTEM_text_icon_line="cg/sys/icon/line2/暥帤憲傝傾僀僐儞%04d.png#12";
	//夵儁乕僕
	$SYSTEM_text_icon_page="cg/sys/icon/page2/暥帤憲傝傾僀僐儞%04d.png#12";
	//帺摦暥帤憲傝
	$SYSTEM_text_icon_auto="cg/sys/icon/auto2/暥帤憲傝傾僀僐儞%04d.png#12";
}

//婄僂傿儞僪僂梡憢
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..Fw
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
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

//捠忢僂傿儞僪僂廲梡
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..SetText
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function SetText()
{
	//TakeRateBack();//幨恀嶣傞梡
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize=560;
		$LoadTextHsize=150;

		$TypeBeginFwX=431;//曄峏
		$TypeBeginFwY=4;
		$TypeBeginNwX=434;//曄峏
		$TypeBeginNwY=5;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}

		$TypeBeginBoxX=426;//曄峏
		$TypeBeginBoxY=0;
		$TypeBeginTextX=582;//曄峏
		$TypeBeginTextY=179;
		$TypeBeginIconX=440;//曄峏
		$TypeBeginIconY=723;

		$TypeBeginNut="@boxVF";
	}else{
		$LoadTextWsize=660;
		$LoadTextHsize=150;

		$TypeBeginBoxX=426;//曄峏
		$TypeBeginBoxY=0;
		$TypeBeginTextX=582;//曄峏
		$TypeBeginTextY=60;
		$TypeBeginIconX=440;//曄峏
		$TypeBeginIconY=683;

		$TypeBeginNut="@boxVN";
	}

	SetTextBase();
}

function SetTextL()
{
	//TakeRateBack();//幨恀嶣傞梡
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize=560;
		$LoadTextHsize=150;

		$TypeBeginFwX=122;//曄峏
		$TypeBeginFwY=4;
		$TypeBeginNwX=125;//曄峏
		$TypeBeginNwY=5;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}

		$TypeBeginBoxX=117;//曄峏
		$TypeBeginBoxY=0;
		$TypeBeginTextX=273;//曄峏
		$TypeBeginTextY=179;
		$TypeBeginIconX=131;//曄峏
		$TypeBeginIconY=723;

		$TypeBeginNut="@boxVF";
	}else{
		$LoadTextWsize=660;
		$LoadTextHsize=150;

		$TypeBeginBoxX=117;//曄峏
		$TypeBeginBoxY=0;
		$TypeBeginTextX=273;//曄峏
		$TypeBeginTextY=60;
		$TypeBeginIconX=131;//曄峏
		$TypeBeginIconY=683;

		$TypeBeginNut="@boxVN";
	}

	SetTextBase();
}


function SetTextR()
{
	//TakeRateBack();//幨恀嶣傞梡
	$WindXSize=1024;
	$WindYSize=768;

	if($OnFW){
		$LoadTextWsize=560;
		$LoadTextHsize=150;

		$TypeBeginFwX=748;//曄峏
		$TypeBeginFwY=4;
		$TypeBeginNwX=751;//曄峏
		$TypeBeginNwY=5;
		if($FwType=="fw"){
			$TypeBeginFaceX=$TypeBeginFwX;
			$TypeBeginFaceY=$TypeBeginFwY;
		}else{
			$TypeBeginFaceX=$TypeBeginNwX;
			$TypeBeginFaceY=$TypeBeginNwY;
		}

		$TypeBeginBoxX=743;//曄峏
		$TypeBeginBoxY=0;
		$TypeBeginTextX=899;//曄峏
		$TypeBeginTextY=179;
		$TypeBeginIconX=757;//曄峏
		$TypeBeginIconY=723;

		$TypeBeginNut="@boxVF";
	}else{
		$LoadTextWsize=660;
		$LoadTextHsize=150;

		$TypeBeginBoxX=743;//曄峏
		$TypeBeginBoxY=0;
		$TypeBeginTextX=899;//曄峏
		$TypeBeginTextY=60;
		$TypeBeginIconX=757;//曄峏
		$TypeBeginIconY=683;

		$TypeBeginNut="@boxVN";
	}

	SetTextBase();
}



function SetTextBase()
{
		SetFont("@俵俽 柧挬", 22, #FFFFFF, #000000, 600, RIGHTDOWN);
		LoadText($峔暥柤,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,$LoadTextHsize,0,35);
	
		SetVertex($SYSTEM_present_text, 0, 0);
		Rotate($SYSTEM_present_text, 0, @0, @0, 90, null,true);
		Move($SYSTEM_present_text, 0, $TypeBeginTextX, $TypeBeginTextY, null, true);
	
		Request($SYSTEM_present_text, Erase);
		Request($SYSTEM_present_text, Lock);
		Request($SYSTEM_present_text, Hideable);
}



//捠忢僂傿儞僪僂墶梡
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..SetTextH
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function SetTextH()
{
	//TakeRateBack();//幨恀嶣傞梡
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
		SetFont("俵俽 柧挬", 22, #FFFFFF, #000000, 600, RIGHTDOWN);
		LoadText($峔暥柤,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,$LoadTextHsize,0,35);

		Move($SYSTEM_present_text, 0, $TypeBeginTextX, $TypeBeginTextY, null, true);
	
		Request($SYSTEM_present_text, Erase);
		Request($SYSTEM_present_text, Lock);
		Request($SYSTEM_present_text, Hideable);
}



//慡夋柺僂傿儞僪僂梡
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..SetTextC
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function SetTextC()
{
	$TypeBeginBoxX=@0;
	$TypeBeginBoxY=@0;

	$TypeBeginIconX=887;
	$TypeBeginIconY=618;

	$TypeBeginNut="@boxAll";

	SetFont("俵俽 柧挬", 28, #FFFFFF, #222222, 500, AROUND);
	SetVertex($SYSTEM_present_text, 0, 0);

	$LoadTextWsize = 756;
	LoadText($峔暥柤,$SYSTEM_present_preprocess,$SYSTEM_present_text,$LoadTextWsize,400,0,40);

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


//仭儃僢僋僗傪昤夋偡傞偺偲僥僉僗僩傪僞僀僺儞僌偡傞摦嶌傪傑偲傔偰幚峴偡傞儅僋儘
//=============================================================================//
.//僞僀僺儞僌儅僋儘
//=============================================================================//

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..TypeBegin（儃僢僋僗桳傝丗僞僀僺儞僌）
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
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

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..TypeBeginT（儃僢僋僗柍偟丗僞僀僺儞僌）
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
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

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..TypeBeginF（儃僢僋僗柍偟丗僼僃乕僪）
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
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

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..TypeBeginF2（儃僢僋僗桳傝丗僼僃乕僪）
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
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


//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..TypeBeginA（儃僢僋僗桳傝丗僞僀僺儞僌丗僆乕僩恑峴梡）
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
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

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..TypeBeginAN（儃僢僋僗柍偟丗僞僀僺儞僌丗僆乕僩恑峴梡）
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
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


//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..TypeBeginAF（儃僢僋僗柍偟丗僼僃乕僪丗僆乕僩恑峴梡）
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
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



//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..TextBoxDelete
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function TextBoxDelete($BoxDeleteTime)
{
	Fade("@FwNut*",$BoxDeleteTime,0,null,false);
	Fade("@box*",$BoxDeleteTime,0,null,true);
	Delete("@FwNut*");
}










//=============================================================================//
.//僥僉僗僩擇峴摨帪昞帵
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

	//壒惡摨婜
	$LOCAL_text_interval=DurationTime($AddTextNus)/Strlen($AddTextText);
//	$AddTextText=String("<Interval time=%d>%s</Interval>",$LOCAL_text_interval,$AddTextText);
	Delete("ParVoice*");

	if(VariableValue(#,Substr($GameName,0,Strstr($GameName,".nss")-1)+"_Add"+$AddTextCount)){
		SetFont("俵俽僑僔僢僋", 28, FFFF75, 000001, 500, AROUND);
	}else{
		SetFont("俵俽僑僔僢僋", 28, FFFFFF, 222222, 500, AROUND);
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



//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
..TypeBeginD（暋悢峴儃僢僋僗丗僞僀僺儞僌）
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function TypeBeginD()
{
	$SYSTEM_position_x_text_icon=910;
	$SYSTEM_position_y_text_icon=536;

	//壒惡摨婜
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

	//儃僀僗嵞惗
	Request("AddVoice*", Play);
	SetLoop("AddVoice*", false);
	Request("AddVoice*", Disused);

	//暋悢峴僄儞僞乕
	Request("AddText*", Enter);

	Request($textnumber, Enter);
	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	//暋悢峴徚嫀
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

	//壒惡摨婜惂尷夝彍
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




//仭CreateTexture偺曄宍
//=============================================================================//
.//CreateTexture宯
//=============================================================================//

//仴僲乕儅儖
//摟柧搙0偐傜僗僞乕僩偡傞「CreateTexture」偱偡
..CreateTextureEX
function CreateTextureEX($CreatePicEX_Nat, 昤夋桪愭搙, $CreateTexEX_X, $CreateTexEX_Y, $僀儊乕僕僨乕僞)
{
	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($僀儊乕僕僨乕僞);

	CreateTexture($CreatePicEX_Nat, 昤夋桪愭搙, 1030, 0, $僀儊乕僕僨乕僞);
	Fade($CreatePicEX_Nat, 0, 0, null, true);

//倶庢摼
	$CT_EXX = ImageHorizon($CreatePicEX_Nat);
//倷庢摼
	$CT_EXY = ImageVertical($CreatePicEX_Nat);
//倶庢摼亐俀
	$CT_EXX2 = $CT_EXX-1024;
//倷庢摼亐俀
	$CT_EXY2 = $CT_EXY-768;
//倶庢摼亐係
	$CT_EXX2 = $CT_EXX2/2;
//倷庢摼亐係
	$CT_EXY2 = $CT_EXY2/2;
//Center庢摼
	$CT_EX_Center = -($CT_EXX2);
//Middle庢摼
	$CT_EX_Middle = -($CT_EXY2);
//Center庢摼
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right庢摼
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle庢摼
	$CT_EX_Middle2 = 768-$CT_EXY;
//Right庢摼
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom庢摼
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	SetAlias($CreatePicEX_Nat, $CreatePicEX_Nat);

	if($CreateTexEX_X=="Center"){
//墶暆亖1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//墶暆亙1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
//墶暆亜1024
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
//墶暆亖1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//墶暆亙1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
//墶暆亜1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
//		$CreateTexEX_X = $CreateTexEX_X-1030;
		Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		Move($CreatePicEX_Nat, 0, $CreateTexEX_X, @0, null, true);
	}


//廲暆娭楢
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

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateTexture」偱偡
..CreateTextureSP
function CreateTextureSP("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, $僀儊乕僕僨乕僞)
{
	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($僀儊乕僕僨乕僞);

	CreateTexture("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, $僀儊乕僕僨乕僞);
	SetAlias("僫僢僩柤", "僫僢僩柤");

}

//仴壛嶼
//摟柧搙0偐傜僗僞乕僩偡傞「CreateTexture」偱偡（壛嶼崌惉晅偒）
..CreateTextureEXadd
function CreateTextureEXadd($CreatePicEXadd_Nat, 昤夋桪愭搙, $CreateTexEXadd_X, $CreateTexEXadd_Y, $僀儊乕僕僨乕僞)
{
	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($僀儊乕僕僨乕僞);

	CreateTexture($CreatePicEXadd_Nat, 昤夋桪愭搙, 1030, 0, $僀儊乕僕僨乕僞);

//倶庢摼
	$CT_EXX = ImageHorizon($CreatePicEXadd_Nat);
//倷庢摼
	$CT_EXY = ImageVertical($CreatePicEXadd_Nat);
//倶庢摼亐俀
	$CT_EXX2 = $CT_EXX-1024;
//倷庢摼亐俀
	$CT_EXY2 = $CT_EXY-768;
//倶庢摼亐係
	$CT_EXX2 = $CT_EXX2/2;
//倷庢摼亐係
	$CT_EXY2 = $CT_EXY2/2;
//Center庢摼
	$CT_EX_Center = -($CT_EXX2);
//Middle庢摼
	$CT_EX_Middle = -($CT_EXY2);
//Center庢摼
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right庢摼
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle庢摼
	$CT_EX_Middle2 = 768-$CT_EXY;
//Right庢摼
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom庢摼
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXadd_Nat, AddRender);
	SetAlias($CreatePicEXadd_Nat, $CreatePicEXadd_Nat);
	Fade($CreatePicEXadd_Nat, 0, 0, null, true);

	if($CreateTexEXadd_X=="Center"){
//墶暆亖1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//墶暆亙1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
//墶暆亜1024
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
//墶暆亖1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//墶暆亙1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
//墶暆亜1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXadd_Nat, 0, $CreateTexEXadd_X, @0, null, true);
	}


//廲暆娭楢
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

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateTexture」偱偡（壛嶼崌惉晅偒）
..CreateTextureSPadd
function CreateTextureSPadd("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, $僀儊乕僕僨乕僞)
{
	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($僀儊乕僕僨乕僞);

	CreateTexture("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, $僀儊乕僕僨乕僞);
	Request("僫僢僩柤", AddRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}
//仴尭嶼
//摟柧搙0偐傜僗僞乕僩偡傞「CreateTexture」偱偡（壛嶼崌惉晅偒）
..CreateTextureEXsub
function CreateTextureEXsub($CreatePicEXsub_Nat, 昤夋桪愭搙, $CreateTexEXsub_X, $CreateTexEXsub_Y, $僀儊乕僕僨乕僞)
{
	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($僀儊乕僕僨乕僞);

	CreateTexture($CreatePicEXsub_Nat, 昤夋桪愭搙, 1030, 0, $僀儊乕僕僨乕僞);

//倶庢摼
	$CT_EXX = ImageHorizon($CreatePicEXsub_Nat);
//倷庢摼
	$CT_EXY = ImageVertical($CreatePicEXsub_Nat);
//倶庢摼亐俀
	$CT_EXX2 = $CT_EXX-1024;
//倷庢摼亐俀
	$CT_EXY2 = $CT_EXY-768;
//倶庢摼亐係
	$CT_EXX2 = $CT_EXX2/2;
//倷庢摼亐係
	$CT_EXY2 = $CT_EXY2/2;
//Center庢摼
	$CT_EX_Center = -($CT_EXX2);
//Middle庢摼
	$CT_EX_Middle = -($CT_EXY2);
//Center庢摼
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right庢摼
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle庢摼
	$CT_EX_Middle2 = 768-$CT_EXY;
//Right庢摼
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom庢摼
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXsub_Nat, SubRender);
	SetAlias($CreatePicEXsub_Nat, $CreatePicEXsub_Nat);
	Fade($CreatePicEXsub_Nat, 0, 0, null, true);

	if($CreateTexEXsub_X=="Center"){
//墶暆亖1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//墶暆亙1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
//墶暆亜1024
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
//墶暆亖1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//墶暆亙1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
//墶暆亜1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXsub_Nat, 0, $CreateTexEXsub_X, @0, null, true);
	}


//廲暆娭楢
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

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateTexture」偱偡（尭嶼崌惉晅偒）
..CreateTextureSPsub
function CreateTextureSPsub("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, $僀儊乕僕僨乕僞)
{
	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($僀儊乕僕僨乕僞);

	CreateTexture("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, $僀儊乕僕僨乕僞);
	Request("僫僢僩柤", SubRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

//仴僆乕僶乕儗僀
//摟柧搙0偐傜僗僞乕僩偡傞「CreateTexture」偱偡（壛嶼崌惉晅偒）
..CreateTextureEXover
function CreateTextureEXover($CreatePicEXover_Nat, 昤夋桪愭搙, $CreateTexEXover_X, $CreateTexEXover_Y, $僀儊乕僕僨乕僞)
{
	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($僀儊乕僕僨乕僞);

	CreateTexture($CreatePicEXover_Nat, 昤夋桪愭搙, 1030, 0, $僀儊乕僕僨乕僞);

//倶庢摼
	$CT_EXX = ImageHorizon($CreatePicEXover_Nat);
//倷庢摼
	$CT_EXY = ImageVertical($CreatePicEXover_Nat);
//倶庢摼亐俀
	$CT_EXX2 = $CT_EXX-1024;
//倷庢摼亐俀
	$CT_EXY2 = $CT_EXY-768;
//倶庢摼亐係
	$CT_EXX2 = $CT_EXX2/2;
//倷庢摼亐係
	$CT_EXY2 = $CT_EXY2/2;
//Center庢摼
	$CT_EX_Center = -($CT_EXX2);
//Middle庢摼
	$CT_EX_Middle = -($CT_EXY2);
//Center庢摼
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right庢摼
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle庢摼
	$CT_EX_Middle2 = 768-$CT_EXY;
//Right庢摼
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom庢摼
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXover_Nat, OverlayRender);
	SetAlias($CreatePicEXover_Nat, $CreatePicEXover_Nat);
	Fade($CreatePicEXover_Nat, 0, 0, null, true);

	if($CreateTexEXover_X=="Center"){
//墶暆亖1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//墶暆亙1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
//墶暆亜1024
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
//墶暆亖1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//墶暆亙1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
//墶暆亜1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXover_Nat, 0, $CreateTexEXover_X, @0, null, true);
	}


//廲暆娭楢
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


//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateTexture」偱偡（僆乕僶乕儗僀崌惉晅偒）
..CreateTextureSPover
function CreateTextureSPover("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, $僀儊乕僕僨乕僞)
{
	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($僀儊乕僕僨乕僞);

	CreateTexture("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, $僀儊乕僕僨乕僞);
	Request("僫僢僩柤", OverlayRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

//仴忔嶼
//摟柧搙0偐傜僗僞乕僩偡傞「CreateTexture」偱偡（壛嶼崌惉晅偒）
..CreateTextureEXmul
function CreateTextureEXmul($CreatePicEXmul_Nat, 昤夋桪愭搙, $CreateTexEXmul_X, $CreateTexEXmul_Y, $僀儊乕僕僨乕僞)
{
	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($僀儊乕僕僨乕僞);

	CreateTexture($CreatePicEXmul_Nat, 昤夋桪愭搙, 1030, 0, $僀儊乕僕僨乕僞);

//倶庢摼
	$CT_EXX = ImageHorizon($CreatePicEXmul_Nat);
//倷庢摼
	$CT_EXY = ImageVertical($CreatePicEXmul_Nat);
//倶庢摼亐俀
	$CT_EXX2 = $CT_EXX-1024;
//倷庢摼亐俀
	$CT_EXY2 = $CT_EXY-768;
//倶庢摼亐係
	$CT_EXX2 = $CT_EXX2/2;
//倷庢摼亐係
	$CT_EXY2 = $CT_EXY2/2;
//Center庢摼
	$CT_EX_Center = -($CT_EXX2);
//Middle庢摼
	$CT_EX_Middle = -($CT_EXY2);
//Center庢摼
	$CT_EX_Center2 = 1024-$CT_EXX;
//Right庢摼
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middle庢摼
	$CT_EX_Middle2 = 768-$CT_EXY;
//Right庢摼
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottom庢摼
	$CT_EX_InBottom0 = $CT_EXY-768;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXmul_Nat, MulRender);
	SetAlias($CreatePicEXmul_Nat, $CreatePicEXmul_Nat);
	Fade($CreatePicEXmul_Nat, 0, 0, null, true);

	if($CreateTexEXmul_X=="Center"){
//墶暆亖1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//墶暆亙1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
//墶暆亜1024
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
//墶暆亖1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//墶暆亙1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
//墶暆亜1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXmul_Nat, 0, $CreateTexEXmul_X, @0, null, true);
	}


//廲暆娭楢
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


//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateTexture」偱偡（忔嶼崌惉晅偒）
..CreateTextureSPmul
function CreateTextureSPmul("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, $僀儊乕僕僨乕僞)
{
	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($僀儊乕僕僨乕僞);

	CreateTexture("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, $僀儊乕僕僨乕僞);
	Request("僫僢僩柤", MulRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}


//=============================================================================//
.//攚宨丒僀儀儞僩丒俤俥愱梡
//=============================================================================//

//仴僲乕儅儖
//摟柧搙0偐傜僗僞乕僩偡傞「CreateTexture」偱偡
..OnBG
function OnBG(昤夋桪愭搙,$bgimagedata,$僷僢僠敾掕)
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

	$bg僫僢僩 = $BgNameN;

	if($僷僢僠敾掕=="normal"){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else if($僷僢僠敾掕=="path"){
		$bgimagedata = "cg2/bg/" + $bgimagedata + ".jpg";
//Path捠夁偟偨傜，弶婜壔亂09/01/29亃
		$僷僢僠敾掕=="";
	}else if(!$僷僢僠敾掕){
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}else{
		$bgimagedata = "cg/bg/" + $bgimagedata + ".jpg";
	}

	//仱俠俧僨僶僢僌梡
	DEBUG_cgbgcorrect($bgimagedata);

	CreateTexture($bg僫僢僩, 昤夋桪愭搙, Center, Middle, $bgimagedata);
	SetAlias($bg僫僢僩, $bg僫僢僩);
	Fade($bg僫僢僩, 0, 0, null, true);
}

...//FadeBG
function FadeBG($昤夋帪娫,$懸偪)
{
	if($BgNameN01!=""){$僫僢僩柤=$BgNameN01;$BgNameN01="";}
	else if($BgNameN02!=""){$僫僢僩柤=$BgNameN02;$BgNameN02="";}
	else if($BgNameN03!=""){$僫僢僩柤=$BgNameN03;$BgNameN03="";}
	else if($BgNameN04!=""){$僫僢僩柤=$BgNameN04;$BgNameN04="";}
	else if($BgNameN05!=""){$僫僢僩柤=$BgNameN05;$BgNameN05="";}
	else if($BgNameN06!=""){$僫僢僩柤=$BgNameN06;$BgNameN06="";}
	else if($BgNameN07!=""){$僫僢僩柤=$BgNameN07;$BgNameN07="";}
	else if($BgNameN08!=""){$僫僢僩柤=$BgNameN08;$BgNameN08="";}
	else if($BgNameN09!=""){$僫僢僩柤=$BgNameN09;$BgNameN09="";}
	else if($BgNameN10!=""){$僫僢僩柤=$BgNameN10;$BgNameN10="";}

	$BGP = 1;

	SetFont("俵俽 柧挬", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);


//昤夋儅僋儘
	PreFadeBG();

	$FaceBG2=$FaceBG;
	$FaceBG=$nutBG;
	$BGCP = 1;

	//巜掕梡
	$nutBG=$setBGnut;
	$nutBG2=$astBGnut;

	//傾僓僫僄儖梡丗僇僑儊傾僜價僇儔乕
	if(#AnotherL){
		KagomeColorAuto(19000,300,true);
	}
}

...//PreFadeBG
function PreFadeBG()
{
	$BGnut = $僫僢僩柤;

//僫僢僩柤庢摼丂$picnut
		$picBGnut = $FaceBG;
//慜僫僢僩柤庢摼丂$Prepicnut
		$PrepicBGnut = $FaceBG2;
//慜掕媊偑敪惗偟偰傞偐妋擣梡
		$BGQ = $BGCP;

//堦搙掕媊嵪傒+掕媊僼儔僌偑敪惗偟偰偄傞応崌
	if($BGP==1 && $BGQ==0){$FaceBG="柤柍偟";}

//慜僫僢僩柤惓婯掕媊
	$setBGnut = "@"+$BGnut;
//僫僢僩柤惓婯掕媊
	$astBGnut = $nutBG;
//慜僫僢僩柤惓婯掕媊
	$PreastBGnut ="@"+$PrepicBGnut;

	if($BGP!=0 && $BGQ==0 && $setBGnut!=$astBGnut && $astBGnut!=$PreastBGnut){Fade($astBGnut, 0, 0, null, false);}

	Fade($PreastBGnut, 0, 0, null, false);

	if($BGQ!=0 && $setBGnut!=$PreastBGnut && $astBGnut!=$PreastBGnut){Delete($PreastBGnut);}

	if($BGP==1 && $BGQ==0){
		Fade($setBGnut, $昤夋帪娫, 1000, null, false);
	}else if($BGP==1 && $setBGnut!=$astBGnut){
		Fade($astBGnut, $昤夋帪娫, 0, Axl3, false);
		Fade($setBGnut, $昤夋帪娫, 1000, Dxl2, false);
		Request($astBGnut, Disused);
	}else if($BGP==0){
		Fade($astBGnut, $昤夋帪娫, 0, null, false);
		Request($astBGnut, Disused);
	}

	if($懸偪==true)
	{
		WaitAction($setBGnut, null);

		if($StP==0){
			WaitAction($astBGnut, null);
		}

	}
	else if($懸偪 != false)
	{
		Wait($懸偪);
	}
	else
	{
	}

}


//仭CreateColor偺曄宍
//=============================================================================//
.//CreateColor宯
//=============================================================================//

//仴僲乕儅儖
//摟柧搙0偐傜僗僞乕僩偡傞「CreateColor」偱偡
..CreateColorEX
function CreateColorEX("僫僢僩柤", 昤夋桪愭搙, 僀儊乕僕僨乕僞)
{

	CreateColor("僫僢僩柤", 昤夋桪愭搙, 1024, 0, 1024, 768, 僀儊乕僕僨乕僞);
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
	Move("僫僢僩柤", 0, @-1024, @0, null, true);

}

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateColor」偱偡
..CreateColorSP
function CreateColorSP("僫僢僩柤", 昤夋桪愭搙, 僀儊乕僕僨乕僞)
{
	CreateColor("僫僢僩柤", 昤夋桪愭搙, 0, 0, 1024, 768, 僀儊乕僕僨乕僞);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

//仴壛嶼
//摟柧搙0偐傜僗僞乕僩偡傞「CreateColor」偱偡（壛嶼崌惉晅偒）
..CreateColorEXadd
function CreateColorEXadd("僫僢僩柤", 昤夋桪愭搙, 僀儊乕僕僨乕僞)
{
	CreateColor("僫僢僩柤", 昤夋桪愭搙, 1024, 0, 1024, 768, 僀儊乕僕僨乕僞);
	Request("僫僢僩柤", AddRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
	Move("僫僢僩柤", 0, @-1024, @0, null, true);
}

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateColor」偱偡（壛嶼崌惉晅偒）
..CreateColorSPadd
function CreateColorSPadd("僫僢僩柤", 昤夋桪愭搙, 僀儊乕僕僨乕僞)
{
	CreateColor("僫僢僩柤", 昤夋桪愭搙, 0, 0, 1024, 768, 僀儊乕僕僨乕僞);
	Request("僫僢僩柤", AddRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

//仴尭嶼
//摟柧搙0偐傜僗僞乕僩偡傞「CreateColor」偱偡（尭嶼崌惉晅偒）
..CreateColorEXsub
function CreateColorEXsub("僫僢僩柤", 昤夋桪愭搙, 僀儊乕僕僨乕僞)
{
	CreateColor("僫僢僩柤", 昤夋桪愭搙, 1024, 0, 1024, 768, 僀儊乕僕僨乕僞);
	Request("僫僢僩柤", SubRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
	Move("僫僢僩柤", 0, @-1024, @0, null, true);
}

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateColor」偱偡（尭嶼崌惉晅偒）
..CreateColorSPsub
function CreateColorSPsub("僫僢僩柤", 昤夋桪愭搙, 僀儊乕僕僨乕僞)
{
	CreateColor("僫僢僩柤", 昤夋桪愭搙, 0, 0, 1024, 768, 僀儊乕僕僨乕僞);
	Request("僫僢僩柤", SubRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}


//仴僆乕僶乕儗僀
//摟柧搙0偐傜僗僞乕僩偡傞「CreateColor」偱偡（僆乕僶乕儗僀崌惉晅偒）
..CreateColorEXover
function CreateColorEXover("僫僢僩柤", 昤夋桪愭搙, 僀儊乕僕僨乕僞)
{
	CreateColor("僫僢僩柤", 昤夋桪愭搙, 1024, 0, 1024, 768, 僀儊乕僕僨乕僞);
	Request("僫僢僩柤", OverlayRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
	Move("僫僢僩柤", 0, @-1024, @0, null, true);
}

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateColor」偱偡（僆乕僶乕儗僀崌惉晅偒）
..CreateColorSPover
function CreateColorSPover("僫僢僩柤", 昤夋桪愭搙, 僀儊乕僕僨乕僞)
{
	CreateColor("僫僢僩柤", 昤夋桪愭搙, 0, 0, 1024, 768, 僀儊乕僕僨乕僞);
	Request("僫僢僩柤", OverlayRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

//仴忔嶼
//摟柧搙0偐傜僗僞乕僩偡傞「CreateColor」偱偡（忔嶼崌惉晅偒）
..CreateColorEXmul
function CreateColorEXmul("僫僢僩柤", 昤夋桪愭搙, 僀儊乕僕僨乕僞)
{
	CreateColor("僫僢僩柤", 昤夋桪愭搙, 1024, 0, 1024, 768, 僀儊乕僕僨乕僞);
	Request("僫僢僩柤", MulRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
	Move("僫僢僩柤", 0, @-1024, @0, null, true);
}

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateColor」偱偡（忔嶼崌惉晅偒）
..CreateColorSPmul
function CreateColorSPmul("僫僢僩柤", 昤夋桪愭搙, 僀儊乕僕僨乕僞)
{
	CreateColor("僫僢僩柤", 昤夋桪愭搙, 0, 0, 1024, 768, 僀儊乕僕僨乕僞);
	Request("僫僢僩柤", MulRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}



//仭CreateMovie偺曄宍
//=============================================================================//
.//CreateMovie宯
//=============================================================================//

//仴僲乕儅儖
//摟柧搙0偐傜僗僞乕僩偡傞「CreateMovie」偱偡
..CreateMovieEX
function CreateMovieEX("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞")
{
	CreateMovie("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞");
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
}

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateMovie」偱偡
..CreateMovieSP
function CreateMovieSP("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞")
{
	CreateMovie("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞");
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

//仴壛嶼
//摟柧搙0偐傜僗僞乕僩偡傞「CreateMovie」偱偡（壛嶼崌惉晅偒）
..CreateMovieEXadd
function CreateMovieEXadd("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞")
{
	CreateMovie("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞");
	Request("僫僢僩柤", AddRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
}

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateMovie」偱偡（壛嶼崌惉晅偒）
..CreateMovieSPadd
function CreateMovieSPadd("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞")
{
	CreateMovie("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞");
	Request("僫僢僩柤", AddRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

//仴尭嶼
//摟柧搙0偐傜僗僞乕僩偡傞「CreateMovie」偱偡（尭嶼崌惉晅偒）
..CreateMovieEXsub
function CreateMovieEXsub("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞")
{
	CreateMovie("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞");
	Request("僫僢僩柤", SubRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
}

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateMovie」偱偡（尭嶼崌惉晅偒）
..CreateMovieSPsub
function CreateMovieSPsub("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞")
{
	CreateMovie("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞");
	Request("僫僢僩柤", SubRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

//仴僆乕僶乕儗僀
//摟柧搙0偐傜僗僞乕僩偡傞「CreateMovie」偱偡（僆乕僶乕儗僀崌惉晅偒）
..CreateMovieEXover
function CreateMovieEXover("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞")
{
	CreateMovie("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞");
	Request("僫僢僩柤", OverlayRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
}

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateMovie」偱偡（僆乕僶乕儗僀崌惉晅偒）
..CreateMovieSPover
function CreateMovieSPover("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞")
{
	CreateMovie("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞");
	Request("僫僢僩柤", OverlayRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

//仴忔嶼
//摟柧搙0偐傜僗僞乕僩偡傞「CreateMovie」偱偡（忔嶼崌惉晅偒）
..CreateMovieEXmul
function CreateMovieEXmul("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞")
{
	CreateMovie("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞");
	Request("僫僢僩柤", MulRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
}

//僄僀儕傾僗巜掕偑偮偄偨偩偗偺「CreateMovie」偱偡（忔嶼崌惉晅偒）
..CreateMovieSPmul
function CreateMovieSPmul("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞")
{
	CreateMovie("僫僢僩柤", 昤夋桪愭搙, 倃嵗昗, 倄嵗昗, 儖乕僾, 兛僠儍儞僱儖, "僀儊乕僕僨乕僞");
	Request("僫僢僩柤", MulRender);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

//仭CreateStencil偺曄宍
//=============================================================================//
.//CreateStencil宯
//=============================================================================//
//
..CreateStencilT
function CreateStencilT($僫僢僩柤侾,$僫僢僩柤俀,夋憸桪愭搙,倃埵抲,倄埵抲,$夋憸侾,$夋憸俀)
{
	$巕僫僢僩柤=$僫僢僩柤侾+"/"+$僫僢僩柤俀;

	CreateStencil($僫僢僩柤侾,夋憸桪愭搙,倃埵抲,倄埵抲,128,$夋憸侾,false);
	CreateTexture($巕僫僢僩柤,夋憸桪愭搙,倃埵抲,倄埵抲,$夋憸俀);

	SetAlias($僫僢僩柤侾, $僫僢僩柤侾);
	SetAlias($巕僫僢僩柤, $僫僢僩柤俀);

	Fade($僫僢僩柤侾, 0, 0, null, false);
	Fade($僫僢僩柤俀, 0, 0, null, true);
}

//
..CreateStencilC
function CreateStencilC($僫僢僩柤侾,$僫僢僩柤俀,夋憸桪愭搙,倃埵抲,倄埵抲,$夋憸侾,$夋憸俀)
{
	$巕僫僢僩柤=$僫僢僩柤侾+"/"+$僫僢僩柤俀;

	CreateStencil($僫僢僩柤侾,夋憸桪愭搙,倃埵抲,倄埵抲,128,$夋憸侾,false);
	CreateColor($巕僫僢僩柤, 夋憸桪愭搙, 0, 0, 1024, 768, $夋憸俀);

	SetAlias($僫僢僩柤侾, $僫僢僩柤侾);
	SetAlias($巕僫僢僩柤, $僫僢僩柤俀);

	Fade($僫僢僩柤侾, 0, 0, null, false);
	Fade($僫僢僩柤俀, 0, 0, null, true);
}




//仭CreateWindow偺曄宍
//=============================================================================//
.//CreateWindow宯
//=============================================================================//
//僄僀儕傾僗巜掕偺晅偄偨掕媊柦椷
..CreateWindowEX
function CreateWindowEX($WindowNut, XPos, YPos, XSet, YSet, 摨婜)
{
	CreateWindow($WindowNut, 0, XPos, YPos, XSet, YSet, 摨婜);
	SetAlias($WindowNut,$WindowNut);
}

//仭CreateProcess偺曄宍
//=============================================================================//
.//CreateProcess宯
//=============================================================================//
//僄僀儕傾僗巜掕偺晅偄偨掕媊柦椷
..CreateProcessEX
function CreateProcessEX($ProcessNameNut, $ProcessNut)
{
	CreateProcess($ProcessNameNut, 0, 0, 0, $ProcessNut);
	SetAlias($ProcessNameNut,$ProcessNameNut);
}


//仭CreateMask偺曄宍
//=============================================================================//
.//CreateMask宯
//=============================================================================//
//僄僀儕傾僗巜掕偺晅偄偨掕媊柦椷
..CreateMaskEX
function CreateMaskEX($MaskNameNut, MPri, XPos, YPos, $MaskDataName, 恊巕)
{
	CreateMask($MaskNameNut, MPri, XPos, YPos, $MaskDataName, 恊巕);
	SetAlias($MaskNameNut,$MaskNameNut);
}


//仭昤夋儅僋儘
//=============================================================================//
.//応柺揮姺梡
//=============================================================================//
//夋柺忋偵偙偺僫僢僩埲奜慡偰傪巆偝側偄
//巊梡偡傞嵺偼愨懳偵「Pre」偺奜偱巊梡偟偰偔偩偝偄
..PrintBG
function PrintBG("僫僢僩柤",昤夋桪愭搙)
{
	CreateEffect("僫僢僩柤", 昤夋桪愭搙, 0, 0, 1024, 768, "Plain");
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤",Passive);
	Request("僫僢僩柤", Lock);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("僫僢僩柤", UnLock);
}

..PrintBG2
function PrintBG2("僫僢僩柤")
{
	CreateTexture("僫僢僩柤", 30000, 0, 0, "SCREEN");
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Request("僫僢僩柤", Lock);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("僫僢僩柤", UnLock);
}

//仸怴婯捛壛崁栚
//壒娭楢偼徚偝側偄梡偺PrintBG
..PrintGO
function PrintGO("僫僢僩柤",昤夋桪愭搙)
{
	CreateEffect("僫僢僩柤", 昤夋桪愭搙, 0, 0, 1024, 768, "Plain");
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤",Passive);
	Request("僫僢僩柤", Lock);

	ByeDefault();
	ByeBye();

	Request("僫僢僩柤", UnLock);
}

..CreatePlainSP
function CreatePlainSP("僫僢僩柤",桪愭搙){

	CreateEffect("僫僢僩柤", 桪愭搙, 0, 0, 1024, 768, "Plain");
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤",Passive);

}

..CreatePlainSPadd
function CreatePlainSPadd("僫僢僩柤",桪愭搙){

	CreateEffect("僫僢僩柤", 桪愭搙, 0, 0, 1024, 768, "Plain");
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤",Passive);
	Request("僫僢僩柤", AddRender);

}

..CreatePlainSPsub
function CreatePlainSPsub("僫僢僩柤",桪愭搙){

	CreateEffect("僫僢僩柤", 桪愭搙, 0, 0, 1024, 768, "Plain");
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤",Passive);
	Request("僫僢僩柤", SubRender);

}

..CreatePlainSPover
function CreatePlainSPover("僫僢僩柤",桪愭搙){

	CreateEffect("僫僢僩柤", 桪愭搙, 0, 0, 1024, 768, "Plain");
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤",Passive);
	Request("僫僢僩柤", OverlayRender);

}

..CreatePlainSPmul
function CreatePlainSPmul("僫僢僩柤",桪愭搙){

	CreateEffect("僫僢僩柤", 桪愭搙, 0, 0, 1024, 768, "Plain");
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤",Passive);
	Request("僫僢僩柤", MulRender);

}

..CreatePlainEX
function CreatePlainEX("僫僢僩柤",桪愭搙){

	CreateEffect("僫僢僩柤", 桪愭搙, 0, 0, 1024, 768, "Plain");
	Request("僫僢僩柤",Passive);
	Fade("僫僢僩柤", 0, 0, null, true);
	SetAlias("僫僢僩柤","僫僢僩柤");

}

..CreatePlainEXadd
function CreatePlainEXadd("僫僢僩柤",桪愭搙){

	CreateEffect("僫僢僩柤", 桪愭搙, 0, 0, 1024, 768, "Plain");
	Request("僫僢僩柤",Passive);
	Fade("僫僢僩柤", 0, 0, null, true);
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤", AddRender);

}

..CreatePlainEXsub
function CreatePlainEXsub("僫僢僩柤",桪愭搙){

	CreateEffect("僫僢僩柤", 桪愭搙, 0, 0, 1024, 768, "Plain");
	Request("僫僢僩柤",Passive);
	Fade("僫僢僩柤", 0, 0, null, true);
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤", SubRender);

}

..CreatePlainEXover
function CreatePlainEXover("僫僢僩柤",桪愭搙){

	CreateEffect("僫僢僩柤", 桪愭搙, 0, 0, 1024, 768, "Plain");
	Request("僫僢僩柤",Passive);
	Fade("僫僢僩柤", 0, 0, null, true);
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤", OverlayRender);

}

..CreatePlainEXmul
function CreatePlainEXmul("僫僢僩柤",桪愭搙){

	CreateEffect("僫僢僩柤", 桪愭搙, 0, 0, 1024, 768, "Plain");
	Request("僫僢僩柤",Passive);
	Fade("僫僢僩柤", 0, 0, null, true);
	SetAlias("僫僢僩柤","僫僢僩柤");
	Request("僫僢僩柤", MulRender);

}

//=============================================================================//
.//枙徚宯
//=============================================================================//
..FadeDelete
function FadeDelete("僫僢僩柤", 強梫帪娫, 僥儞億, 懸偪)
{
	Fade("僫僢僩柤", 強梫帪娫, 0, 僥儞億, 懸偪);
	Request("僫僢僩柤", UnLock);
	Request("僫僢僩柤", Disused);

	TakeRatePicAuto();//仛搆曕丗傾僓僫僄儖僗僋儕乕儞
}

..DrawDelete
function DrawDelete("僫僢僩柤", 強梫帪娫, 嫬奅, 僥儞億, "$夋憸", 懸偪)
{
	$Transition = "cg/data/" + "$夋憸" + ".png";

	DrawTransition("僫僢僩柤", 強梫帪娫, 1000, 0, 嫬奅, 僥儞億, "$Transition", 懸偪);
	Request("僫僢僩柤", UnLock);
	Request("僫僢僩柤", Disused);

	TakeRatePicAuto();//仛搆曕丗傾僓僫僄儖僗僋儕乕儞
}

..PlayDelete
function PlayDelete($僾儗僀僫僢僩柤, $PlayDeleteTime, $PlayWait)
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
		Fade($僾儗僀僫僢僩柤, $PlayDeleteTime, 0, null, false);

		CreateProcess("僾儗僀徚嫀侾", 150, 0, 0, $PlayDeleteName);
		SetAlias("僾儗僀徚嫀侾", "僾儗僀徚嫀侾");
		Request("僾儗僀徚嫀侾", Start);
		Request("僾儗僀徚嫀侾", Disused);
	}else{
		Fade($僾儗僀僫僢僩柤, $PlayDeleteTime, 0, null, true);

		Request($僾儗僀僫僢僩柤, Stop);
		Delete($僾儗僀僫僢僩柤);
	}
}

function PlayDeleteProcess1()
{
	Wait($PlayDeleteTime);
	Request($僾儗僀僫僢僩柤, Stop);
	Delete($僾儗僀僫僢僩柤);
}

function PlayDeleteProcess2()
{
	Wait($PlayDeleteTime);
	Request($僾儗僀僫僢僩柤, Stop);
	Delete($僾儗僀僫僢僩柤);
}

function PlayDeleteProcess3()
{
	Wait($PlayDeleteTime);
	Request($僾儗僀僫僢僩柤, Stop);
	Delete($僾儗僀僫僢僩柤);
}



//仭堏摦側偳偺応柺揮姺偵娭偡傞儅僋儘
//=============================================================================//
.//埫揮張棟宯
//=============================================================================//

..//埫揮張棟宯儀乕僗

//巊梡偡傞嵺偼愨懳偵「Pre」偺奜偱巊梡偟偰偔偩偝偄
..ClearFadeAll
function ClearFadeAll(強梫帪娫,懸偪)
{
	CreateColor("僋儕傾崟", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("僋儕傾崟", "僋儕傾崟");
	Fade("僋儕傾崟", 0, 0, null, true);

	Fade("僋儕傾崟", 強梫帪娫, 1000, null, 懸偪);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintFadeAll
function PrintFadeAll("僫僢僩柤",強梫帪娫,懸偪)
{
	CreateColor("僫僢僩柤", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
	Request("僫僢僩柤", Lock);

	Fade("僫僢僩柤", 強梫帪娫, 1000, null, 懸偪);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("僫僢僩柤", UnLock);
}


//巊梡偡傞嵺偼愨懳偵「Pre」偺奜偱巊梡偟偰偔偩偝偄
..ClearFadeNut
function ClearFadeNut(強梫帪娫,懸偪)
{
	CreateColor("僋儕傾崟", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("僋儕傾崟", "僋儕傾崟");
	Fade("僋儕傾崟", 0, 0, null, true);

	Fade("僋儕傾崟", 強梫帪娫, 1000, null, 懸偪);

	ByeDefault();
	ByeBye();

	Delete("僋儕傾崟");
}

..PrintFadeNut
function PrintFadeNut("僫僢僩柤",強梫帪娫,懸偪)
{
	CreateColor("僫僢僩柤", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);

	Fade("僫僢僩柤", 強梫帪娫, 1000, null, 懸偪);

	ByeDefault();
	ByeBye();
}

//巊梡偡傞嵺偼愨懳偵「Pre」偺奜偱巊梡偟偰偔偩偝偄
..ClearDrawAll
function ClearDrawAll(強梫帪娫, 嫬奅, $夋憸, 懸偪)
{
	CreateColor("僋儕傾崟", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("僋儕傾崟", "僋儕傾崟");
	Fade("僋儕傾崟", 0, 0, null, true);

	$Transition = "cg/data/" + $夋憸 + ".png";
	Fade("僋儕傾崟", 0, 1000, null, false);
	DrawTransition("僋儕傾崟", 強梫帪娫, 0, 1000, 嫬奅, null, $Transition, 懸偪);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
}

..PrintDrawAll
function PrintDrawAll("僫僢僩柤", 強梫帪娫, 嫬奅, $夋憸, 懸偪)
{
	CreateColor("僫僢僩柤", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);
	Request("僫僢僩柤", Lock);

	$Transition = "cg/data/" + $夋憸 + ".png";
	Fade("僫僢僩柤", 0, 1000, null, false);
	DrawTransition("僫僢僩柤", 強梫帪娫, 0, 1000, 嫬奅, null, $Transition, 懸偪);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();
	Request("僫僢僩柤", UnLock);
}


//巊梡偡傞嵺偼愨懳偵「Pre」偺奜偱巊梡偟偰偔偩偝偄
..ClearDrawNut
function ClearDrawNut(強梫帪娫, 嫬奅, $夋憸, 懸偪)
{
	CreateColor("僋儕傾崟", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("僋儕傾崟", "僋儕傾崟");
	Fade("僋儕傾崟", 0, 0, null, true);

	$Transition = "cg/data/" + $夋憸 + ".png";
	Fade("僋儕傾崟", 0, 1000, null, false);
	DrawTransition("僋儕傾崟", 強梫帪娫, 0, 1000, 嫬奅, null, $Transition, 懸偪);

	ByeDefault();
	ByeBye();

	Delete("僋儕傾崟");
}

..PrintDrawNut
function PrintDrawNut("僫僢僩柤", 強梫帪娫, 嫬奅, $夋憸, 懸偪)
{
	CreateColor("僫僢僩柤", 20000, 0, 0, 1024, 768, "BLACK");
	SetAlias("僫僢僩柤", "僫僢僩柤");
	Fade("僫僢僩柤", 0, 0, null, true);

	$Transition = "cg/data/" + $夋憸 + ".png";
	Fade("僫僢僩柤", 0, 1000, null, false);
	DrawTransition("僫僢僩柤", 強梫帪娫, 0, 1000, 嫬奅, null, $Transition, 懸偪);

	ByeDefault();
	ByeBye();
}

..//埫揮張棟宯墳梡

//巊梡偡傞嵺偼愨懳偵「Pre」偺奜偱巊梡偟偰偔偩偝偄
//俽俤傕堦偮偱懳墳
..ClearWaitAll
function ClearWaitAll($FadeSoundTime,懸偪帪娫)
{
	CreateColor("奊Clear_BlackWait", 24000, 0, 0, 1024, 768, "BLACK");
	SetAlias("奊Clear_BlackWait", "奊Clear_BlackWait");
	Fade("奊Clear_BlackWait", 0, 0, null, true);

	Request("奊Clear_BlackWait", Lock);


	$SoundTimeCFA=$FadeSoundTime+500;

	SetVolume("@SE*", $SoundTimeCFA, 0, null);
	SetVolume("SE*", $SoundTimeCFA, 0, null);
	SetVolume("@OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("@m*", $SoundTimeCFA, 0, null);
	Fade("奊Clear_BlackWait", $FadeSoundTime, 1000, null, true);

	Wait(懸偪帪娫);
	WaitPlay("@SE*",null);
	WaitPlay("@OnSE*",null);
	WaitPlay("SE*",null);
	WaitPlay("OnSE*",null);

	Delete("@*");
	Delete("*");

	ByeDefault();
	ByeBye();

	Request("奊Clear_BlackWait", UnLock);
	Delete("奊Clear_BlackWait");
}



..MoveEX
function MoveEX("僫僢僩柤", 強梫帪娫, $倃嵗昗, $倄嵗昗, 僥儞億, 懸偪)
{
	$倃嵗昗僾儗 = - $倃嵗昗;
	$倄嵗昗僾儗 = - $倄嵗昗;

	$倃嵗昗儅僀僫僗 = "@" + $倃嵗昗僾儗;
	$倄嵗昗儅僀僫僗 = "@" + $倄嵗昗僾儗;

	$倃嵗昗僾儔僗 = "@" + $倃嵗昗;
	$倄嵗昗僾儔僗 = "@" + $倄嵗昗;

	Move("僫僢僩柤", 0, $倃嵗昗儅僀僫僗, $倄嵗昗儅僀僫僗, null, true);
	Move("僫僢僩柤", 強梫帪娫, $倃嵗昗僾儔僗, $倄嵗昗僾儔僗, 僥儞億, 懸偪);
}





//仭曄悢弶婜壔儅僋儘僐儅儞僪
//=============================================================================//
.//弶婜壔
//=============================================================================//
..ByeBye
function ByeBye()
{
//仭棫偪奊慡徚嫀
	ByeAllSt();

//仭攚宨梡「OnBG」
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
	Delete("@奊*");
	Delete("奊*");
	Delete("@OnBG*");
	Delete("OnBG*");
	Delete("@攚宨*");
	Delete("@FwNut*");

	//傾僓僫僄儖
	Delete("@OnKG*");
	Delete("@RateWindow/*");
	Delete("@gameview");
}



//仭僄儞僨傿儞僌娭學偺儅僋儘僐儅儞僪
//=============================================================================//
.//僄儞僨傿儞僌娭學
//=============================================================================//
//=============================================================================//
..//仛俤俢楢憐
//=============================================================================//
function ArrayEND()
{
	Array($EndName,"恀幚");
	AssocArray($EndName,"恀幚");

	Array($EndName["恀幚"],"Roll01","@uta01","cg/sys/ed/僄儞僪僥儘僢僾攚宨.png",6000,30000,0,1,"H",false,false);

//	Array($EndName["嫟捠"],"Roll01","@EndBGM01","BLACK",6200,60000,-576,1,"V","@EndBGM02",false);
//	Array($EndName["恀幚"],"Roll01","@xsonged","BLACK",-3000,60000,-576,1,"V",false,false);
//	Array($EndName["恀幚"],"Movie01",false,"WHITE",-3000,60000,-576,1,"V",false,false);

//	Array($EndName,"塸梇曇","暅廞曇","杺墹曇","埆婼曇","拑乆曇","夝曻曇");
//	AssocArray($EndName,"塸梇曇","暅廞曇","杺墹曇","埆婼曇","拑乆曇","夝曻曇");
//	Array($EndName["塸梇曇"],"Roll01","@xsonged","BLACK",-3000,60000,-768,1,"V",false,false);
//	Array($EndName["暅廞曇"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);
//	Array($EndName["杺墹曇"],"Roll01","@xsonged","BLACK",-5000,60000,1024,3,"H",false,true);
//	Array($EndName["埆婼曇"],"Roll01","@xsonged","BLACK",6000,60000,1124,3,"H",false,true);
//	Array($EndName["拑乆曇"],"Roll01","@xsonged","BLACK",10000,60000,1024,3,"H",false,true);
//	Array($EndName["夝曻曇"],"Roll01","@xsonged","BLACK",-13000,60000,1024,3,"H",false,true);

//仭侽丗僾儘僙僗柤
//仭侾丗塖柤
//仭俀丗弌偩偟偺攚宨
//仭俁丗嵞惗昩悢挷惍
//仭係丗俛俧俵俀廡栚傊偺僇僂儞僩
//仭俆丗儘乕儖埵抲挷惍（庡偵働僣挷惍）
//仭俇丗僗僞僢僼儘乕儖偺悢
//仭俈丗僗僞僢僼儘乕儖偺宍幃「F」「H」「V」
//仭俉丗俀嬋偁傞偐側偄偐，桳傞応崌偼嬋柤傪柍偄応崌偼「false」
//仭俋丗屻傠偱夋憸傪愗傝懼偊傞偐

//仭侽亅丗僼僃乕僪夋憸嵎暘
//仭侾亅丗懸婡昩悢，昞帵昩悢（慜夋憸徚嫀暘巕丒僂僃僀僩丒師夋憸昞帵昩悢丒僂僃僀僩）

//仭俇亅丗儘乕儖夋憸嵎暘（ENDRoll00丒ENDRoll01丒丒丒）
//仭俈亅丗儘乕儖夋憸偺僺僋僙儖娫妘挷惍

	//Array($EndName["嫟捠"][0],"logo.png");//仭俋偑false偱堄枴偑柍偄
	//Array($EndName["嫟捠"][1],0,960,10,10);//仭俋偑false偱堄枴偑柍偄
	//Array($EndName["嫟捠"][6],"僋儗僕僢僩_僔儑乕僩");
	//Array($EndName["嫟捠"][7],0);

	//Array($EndName["恀幚"][0],"logo.png");//仭俋偑false偱堄枴偑柍偄
	//Array($EndName["恀幚"][1],0,960,10,10);//仭俋偑false偱堄枴偑柍偄
	Array($EndName["恀幚"][6],"僄儞僪僥儘僢僾");
	Array($EndName["恀幚"][7],0);

/*
	Array($EndName["暅廞曇"][0],"logo.png");
	Array($EndName["暅廞曇"][1],0,960,10,10);
	Array($EndName["暅廞曇"][6],"崄撧巬儖乕僩","staff01","staff02");
	Array($EndName["暅廞曇"][7],0,0,0);

	Array($EndName["拑乆曇"][0],"logo.png");
	Array($EndName["拑乆曇"][1],0,960,10,10);
	Array($EndName["拑乆曇"][6],"拑乆娵儖乕僩","staff01","staff02");
	Array($EndName["拑乆曇"][7],0,0,0);

	Array($EndName["杺墹曇"][0],"logo.png");
	Array($EndName["杺墹曇"][1],0,960,10,10);
	Array($EndName["杺墹曇"][6],"懞惓儖乕僩俀","staff01","staff02");
	Array($EndName["杺墹曇"][7],0,0,0);

	Array($EndName["夝曻曇"][0],"logo.png");
	Array($EndName["夝曻曇"][1],0,960,10,10);
	Array($EndName["夝曻曇"][6],"懞惓儖乕僩俀","staff01","staff02");
	Array($EndName["夝曻曇"][7],0,0,0);

	Array($EndName["埆婼曇"][0],"ev169_彁挿偲偺弌夛偄.jpg","ev132_徫偆摑.jpg","ev133_姇妱偵挧傓岝_c.jpg","ev008_愒巕傪書偊傞彈.jpg","ev128_昦彴偺岝_b01.jpg","ev138_庱椞偺嵟婜_d.jpg","ev139_摑傪嶦奞_a.jpg","ev101_僾儘儘乕僌_a.jpg","ev103_崄撧巬墘憈_a.jpg","ev268_儎僋僓偲懳洺偡傞堦忦.jpg","ev106_梇旘偲尒壓傠偡懞惓_d.jpg","ev112_堦忦傪偍昉條偩偭偙偡傞懞惓.jpg","ev113_僒乕僉僢僩婱昽惾_a.jpg","ev914_嬨乑幃棾婻暫杺寱僀儞儊儖儅儞僞乕儞.jpg","ev213_宨柧偲懞惓偺寢墢_b.jpg","ev221_寧柧偐傝傪梺傃偰棫偮岝_b.jpg","ev230_媰偒偠傖偔傞懞惓.jpg","ev239_拑乆娵偺嵟婜_d.jpg","ev251_懞惓VS嬧惎崋寛愴戞擇嬊.jpg","ev255_栰懢搧傪峔偊傞懞惓_a.jpg","ev256_嬧惎崋偺嵟婜_b.jpg","ev263_懞惓傪巋偟娧偔愥幵挰.jpg","ev266_宨柧，埆婼偺徫偄.jpg","logo.png");
	Array($EndName["埆婼曇"][1],5,35,5,34,5,5,5,34,5,5,5,34,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,16,3,3);
	Array($EndName["埆婼曇"][6],"懞惓儖乕僩","staff01","staff02");
	Array($EndName["埆婼曇"][7],0,200,50);
*/


//僨僶僢僌梡
	$RollDebug=false;
	if($RollDebug){
		$RollDebugAll=0;
		$RollDebugWhile=1;
		while(Count($EndName["埆婼曇"][1])>$RollDebugWhile){
			$RollDebugAll=$RollDebugAll+$EndName["埆婼曇"][1][$RollDebugWhile];
			$RollDebugWhile=$RollDebugWhile+2;
		}
		CreateText("僨僶僢僌儘乕儖", 2000000, 50, 50, 700, 500, $RollDebugAll);
		WaitKey();
		Delete("僨僶僢僌儘乕儖");
	}


	$LayerCount0=100000;//壓抧
	$LayerCount1=100010;//儘乕儖
	$LayerCount2=100009;//僼僃乕僪梡偺奊
	if($EndName[$ENDNumber]=="埆婼曇"){
		$LayerCount2=100011;//僼僃乕僪梡偺奊
	}
	$LayerCount9=200000;
}

//=============================================================================//
..//仛俤俢掕媊
//=============================================================================//
function TheEND($ENDNumber)
{
	QuickStop();

	//仴楢憐攝楍
	ArrayEND();

	$EndBunbo=1000;
	$ENDBGM=$EndName[$ENDNumber][1];
	$ENDBack=$EndName[$ENDNumber][2];
	$TimeAdjust=$EndName[$ENDNumber][3];
	$LoopAdjust=$EndName[$ENDNumber][4];
	$LengthAdjust=$EndName[$ENDNumber][5];
	$ENDImage="end";
	$BGM柤2=$EndName[$ENDNumber][8];

	//////////////////
	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@uta*", 2000, 0, NULL);
	SetVolume("@m*", 2000, 0, NULL);
	if($ENDBGM!=false){
		SoundPlay($ENDBGM,1000,1000,true);
	}
	//////////////////

	//仛攚宨嵎偟懼偊
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
	
		//仛儘僢僋愝抲
		LockVideo(true);
		Delete("@*");
		Fade("@*", 0, 0, null, false);
		Fade("@*/*", 0, 0, null, false);
		Fade("@*/*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*", 0, 0, null, false);
		Fade("*/*/*", 0, 0, null, false);
		Fade("ENDBack", 0, 1000, null, true);
		//仛儘僢僋愝抲
		LockVideo(false);

		Request("ENDBack", UnLock);
	}

	if($EndName[$ENDNumber]=="埆婼曇"){
		CreateTextureSP("ENDWindow", $LayerCount9, 25, 120, "cg/sys/ed/僄儞僪儘乕儖梡僀儀儞僩儃僇僔妟墢.png");
		CreateTextureSP("ENDWindow2", $LayerCount2, 0, 0, "cg/sys/ed/僄儞僪儘乕儖梡僀儀儞僩儃僇僔妟墢2.png");
	}

	//仛俤俢掕媊
	$RollNut=String("ClearRoll%02d",$ENDNumber);
	EndRollTexture();
	if(VariableValue(#,$RollNut)){
		SetRoll($EndProcess,$ENDBGM,false);
	}else{
		SetRoll($EndProcess,$ENDBGM,true);
		VariableValue(#,$RollNut,true);
	}

	//仭塃僶乕嵞奐
	if($ENDNumber==0||$ENDNumber==1||$ENDNumber==2||$ENDNumber==4){
		Wait(5000);
		QuickStart();
	}
}

...//仭僥僋僗僠儍宯掕媊
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
..//仛儘乕儖奐巒
//=============================================================================//
function SetRoll($張棟扨埵柤,$BGM柤,$懸婡)
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
		CreateProcess("僄儞僪儘乕儖僾儘僙僗", 2000, 0, 0, $張棟扨埵柤);
		SetAlias("僄儞僪儘乕儖僾儘僙僗", "僄儞僪儘乕儖僾儘僙僗");
		CreateProcess("僄儞僪儘乕儖壧僾儘僙僗", 150, 0, 0, "EndSong");
		SetAlias("僄儞僪儘乕儖壧僾儘僙僗", "僄儞僪儘乕儖壧僾儘僙僗");
	
		CreateColor("怓", $LayerCount9, 0, 0, 1024, 768, BLACK);
		SetAlias("怓", "怓");
		Fade("怓", 0, 0, null, true);
	
		$EndingSkip=false;
		Request("僄儞僪儘乕儖僾儘僙僗", Start);
		Wait(5000);
		if($懸婡){WaitAction("僄儞僪儘乕儖僾儘僙僗", null);}
	
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

		Request($BGM柤, EntrustSuspend);
		SetVolume($BGM柤, 6000, 0, NULL);

		if($EndName[$ENDNumber][8]!=false){
			Request($BGM柤2, EntrustSuspend);
			SetVolume($BGM柤2, 6000, 0, NULL);
		}
	}else{
		//儉乕價乕
		CreateColor("怓", $LayerCount9, 0, 0, 1024, 768, BLACK);
		SetAlias("怓", "怓");
		Fade("怓", 0, 0, null, true);

		CreateMovie("ENDMovie",$LayerCount1,0,0,false,false,"dx/mv_axl_ED.ngs",500);
		SetAlias("ENDMovie", "ENDMovie");

		if(#LOCAL_break_play_movie&&!$懸婡){
			//Message("僨僶僢僌梡僂傿儞僪僂侾","僨僶僢僌梡偱偡",YESNOCANCE,EXCLAMATION);
			CreateProcess("僄儞僪儘乕儖僾儘僙僗儉乕價乕", 150, 0, 0, "EndMovie");
			SetAlias("僄儞僪儘乕儖僾儘僙僗儉乕價乕", "僄儞僪儘乕儖僾儘僙僗儉乕價乕");
			Request("僄儞僪儘乕儖僾儘僙僗儉乕價乕", Start);
		}
		WaitPlay("ENDMovie", null);

		Request("僄儞僪儘乕儖僾儘僙僗儉乕價乕", Stop);
		WaitAction("僄儞僪儘乕儖僾儘僙僗儉乕價乕", null);
		Delete("僄儞僪儘乕儖僾儘僙僗儉乕價乕");

		$SYSTEM_l_button_down=false;
		$SYSTEM_keydown_enter=false;
	}

	Wait(2000);
	Fade("@怓", 2000, 1000, null, true);

	Request("僄儞僪儘乕儖僾儘僙僗", Stop);

	Fade("@僄儞僪儘乕儖*",0,0,null,true);
	Delete("@僄儞僪儘乕儖*");
	Delete("@END*");
	Fade("@怓", 0, 0, null, true);

	Delete("@怓");

	Wait(2000);

	if($EndName[$ENDNumber]!="埆婼曇"){
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
				Fade("@怓", 2000, 1000, null, true);
				Delete("@ENDMovie");
		}
		Wait(100);
	}
}

//=============================================================================//
..//仠儘乕儖曽幃僾儘僙僗
//=============================================================================//

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
...//屆揟揑僼僃乕僪僗僋儕僾僩
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

				if($EndName[$ENDNumber]=="埆婼曇"){
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

	SetLoop($BGM柤, false);
	Request($BGM柤, CompulsorySuspend);

	$帪娫=RemainTime($BGM柤);
	$帪娫=$帪娫+$TimeAdjust;
	if($帪娫<$LoopAdjust){
		$EndExtension=true;
		$昩悢=DurationTime($BGM柤);
		$帪娫+=$昩悢;
		Request("@僄儞僪儘乕儖壧僾儘僙僗", Start);
	}

	if($EndName[$ENDNumber][8]!=false){
		$帪娫+=DurationTime($BGM柤2);
		Request("@僄儞僪儘乕儖壧僾儘僙僗", Start);
	}

//	WaitKey();

	if($EndName[$ENDNumber][7]!="F"){
		Move("@ENDRoll*",$帪娫,@$EndMoveX,@$EndMoveY,null,false);
	}

//	WaitKey();

	$nut="壗偐";

	if($EndName[$ENDNumber][9]){
		$EndOneTime=$帪娫/$EndBunbo;
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

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
...//屆揟揑儘乕儖僗僋儕僾僩
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

	SetLoop($BGM柤, false);
	Request($BGM柤, CompulsorySuspend);

	$帪娫=RemainTime($BGM柤);
	$帪娫+=$TimeAdjust;
	if($帪娫<$LoopAdjust){
		$EndExtension=true;
		$昩悢=DurationTime($BGM柤);
		$帪娫+=$昩悢;
		Request("@僄儞僪儘乕儖壧僾儘僙僗", Start);
	}
	Move("@ENDRoll",$帪娫,@0,@$EndMoveB,null,true);
}

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
...//屆揟揑儘乕儖僗僋儕僾僩丗墶
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

	SetLoop($BGM柤, false);
	Request($BGM柤, CompulsorySuspend);

	$帪娫=RemainTime($BGM柤);
	$帪娫+=$TimeAdjust;
	if($帪娫<$LoopAdjust){
		$EndExtension=true;
		$昩悢=DurationTime($BGM柤);
		$帪娫+=$昩悢;
		Request("@僄儞僪儘乕儖壧僾儘僙僗", Start);
	}
	Move("@ENDRoll",$帪娫,@$EndMoveA,@0,null,true);
}

//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
//僄儞僪僗僋儕僾僩梡偺壒宲懕僾儘僙僗
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
function EndSong()
{
	if($EndExtension){
		$EndTime=RemainTime($BGM柤);
		Wait($EndTime);
	
		SetVolume($BGM柤, 1000, 0, NULL);
		WaitAction($BGM柤, null);
	
		SetFrequency($BGM柤, 0, 1000, NULL);
		SetVolume($BGM柤, 0, 500, null);
		SetLoop($BGM柤, false);
		Request($BGM柤, Play);
	}

	if($EndName[$ENDNumber][8]!=false){
		WaitPlay($BGM柤, null);
	
		if(!$EndingSkip){
			Request($BGM柤2, CompulsorySuspend);
	
			SetFrequency($BGM柤2, 0, 1000, NULL);
			SetVolume($BGM柤2, 0, 500, null);
			SetLoop($BGM柤2, false);
			Request($BGM柤2, Play);
	
			WaitPlay($BGM柤2, null);
		}
	}
}
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗

//=============================================================================//
..//仛儘乕儖弨旛（嵟屻偵儘僢僋偡傞応崌）
//=============================================================================//
function PreSetRoll($ENDNumber)
{
	//仭塃僶乕掆巭
	QuickStop();

	//仴楢憐攝楍
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
	//仭塃僶乕掆巭
	QuickStop();

	//仴楢憐攝楍
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
..//仛儘乕儖弨旛（搑拞偐傜僋儕僢僋儘僢僋偡傞応崌）
//=============================================================================//
function PreTextRoll($ENDNumber)
{
	//仭塃僶乕掆巭
	QuickStop();

	//仴楢憐攝楍
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

function PlayVOICE_ED($VoiceClassNut,$壒妝僨乕僞,$VoiceWaitPlus1,$VoiceWaitPlus2)
{
//<voice name="僨僱僽" class="僨僱僽" src="voice/st20/0600220de" mode="off">

	$僋儔僗柤=$VoiceClassNut;

	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(#VoiceName[$VoiceWhile]==$僋儔僗柤){
			//$VoiceGet=true;
		}
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$僋儔僗柤){
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&VariableValue(#,"voice_on_"+$僋儔僗柤))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){}

	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+$僋儔僗柤+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$応強巜掕 = "voice/" + $壒妝僨乕僞;

		CreateSound($VoiceClassNut, VOICE, $応強巜掕);
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
	$懸偪帪娫=RemainTime($VoiceClassNut);
	$懸偪帪娫+=$VoiceWaitPlus;
	Wait($懸偪帪娫);
	Delete($VoiceClassNut);
}

/*
	PlayVOICE_ED("僨僱僽","voice/st20/0600220de",1000,3000);
//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
<PRE @box00>
[text0010028]
//亂僨僱僽亃
<voice name="僨僱僽" class="僨僱僽" src="voice/st20/0600220de" mode="off">
「尒傜傟偪傖偭偨乗乗」
{StopVOICEED();}
</PRE>
	SetText();
	TypeBegin();//乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗乗
=
*/



//仭壒娭學偺儅僋儘僐儅儞僪
//=============================================================================//
.//壒娭學
//=============================================================================//

// 掕媊
function CreateBGM($俛俧俵僫僢僩,$壒妝僨乕僞)
{
	BGMbase();
}
function CreateBGMEX($俛俧俵僫僢僩,$壒妝僨乕僞,奐巒儈儕昩,廔椆儈儕昩)
{
	BGMbase();
	SetLoopPoint($俛俧俵僫僢僩,奐巒儈儕昩,廔椆儈儕昩);
}
function BGMbase()
{
	$応強巜掕 = "sound/bgm/" + $壒妝僨乕僞;
	CreateSound($俛俧俵僫僢僩, BGM, $応強巜掕);
	SetVolume($俛俧俵僫僢僩, 0, 0, NULL);
	SetAlias($俛俧俵僫僢僩, $俛俧俵僫僢僩);
}




function CreateBGM_ef($俛俧俵僫僢僩侾,$壒妝僨乕僞)
{
	BGMbase_ef();
}
function CreateBGMEX_ef($俛俧俵僫僢僩侾,$壒妝僨乕僞,奐巒儈儕昩,廔椆儈儕昩)
{
	BGMbase_ef();
	SetLoopPoint($俛俧俵僫僢僩侾,奐巒儈儕昩,廔椆儈儕昩);
	SetLoopPoint($俛俧俵僫僢僩俀,奐巒儈儕昩,廔椆儈儕昩);
}
function BGMbase_ef()
{
	$応強巜掕 = "sound/bgm/" + $壒妝僨乕僞;
	CreateSound($俛俧俵僫僢僩侾, BGM, $応強巜掕);
	SetVolume($俛俧俵僫僢僩侾, 0, 0, NULL);
	SetAlias($俛俧俵僫僢僩侾, $俛俧俵僫僢僩侾);
	Request($俛俧俵僫僢僩侾, Lock);

	$俛俧俵僫僢僩俀=$俛俧俵僫僢僩侾+"_ef";
	CreateSound($俛俧俵僫僢僩俀, BGM, $応強巜掕);
	SetVolume($俛俧俵僫僢僩俀, 0, 0, NULL);
	SetAlias($俛俧俵僫僢僩俀, $俛俧俵僫僢僩俀);
	Request($俛俧俵僫僢僩俀, Lock);

	//SoundEffect("僫僢僩柤","Chorus",僪儔僀0乣僂僃僢僩100,偆偹傝0~100,僼傿乕僪僶僢僋-99~99,僨傿儗僀僞僀儉0~20);
	//SoundEffect($俛俧俵僫僢僩俀,"Chorus",50,50,-90,10);
	//SoundEffect($俛俧俵僫僢僩俀,"Chorus",50,50,-90,10);

	//SoundEffect("僫僢僩柤","Echo",僪儔僀0乣僂僃僢僩100,僼傿乕僪僶僢僋0~100,嵍僠儍儞僱儖僨傿儗僀（1~2000儈儕昩）,塃僠儍儞僱儖僨傿儗僀（1~2000儈儕昩）);
	//SoundEffect($俛俧俵僫僢僩俀,"Echo",60,70,230,230);
	SoundEffect($俛俧俵僫僢僩俀,"Echo",60,70,170,170);
}


function CreateBGMPX("僫僢僩柤",$壒妝僨乕僞)
{
	$応強巜掕 = $壒妝僨乕僞;
	CreateSound("僫僢僩柤", BGM, $応強巜掕);
	SetVolume("僫僢僩柤", 0, 0, NULL);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

function CreateBGMSE("僫僢僩柤",$壒妝僨乕僞)
{
	$応強巜掕 = "sound/bgm/" + $壒妝僨乕僞;
	CreateSound("僫僢僩柤", SE, $応強巜掕);
	SetVolume("僫僢僩柤", 0, 0, NULL);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}






..OnSE
function OnSE($壒妝僨乕僞,$俽俤壒検)
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

	$僫僢僩柤 = $SeName;

	$応強巜掕 = "sound/se/" + $壒妝僨乕僞;

	CreateSound($僫僢僩柤, SE, $応強巜掕);
	SetVolume($僫僢僩柤, 0, 0, NULL);
	SetAlias($僫僢僩柤, $僫僢僩柤);

	Request($僫僢僩柤, "Play");

	SetFrequency($僫僢僩柤, 0, 1000, NULL);
	SetPan($僫僢僩柤, 0, 0, NULL);
	SetLoop($僫僢僩柤, false);

	SetVolumeEX($僫僢僩柤, 0, $俽俤壒検, null);
	Request($僫僢僩柤, Disused);

}

..CreateSE
function CreateSE("僫僢僩柤",$壒妝僨乕僞)
{
	$応強巜掕 = "sound/se/" + $壒妝僨乕僞;

	CreateSound("僫僢僩柤", SE, $応強巜掕);
	SetVolume("僫僢僩柤", 0, 0, NULL);
	SetAlias("僫僢僩柤", "僫僢僩柤");
}

..CreateSEEX
function CreateSEEX("僫僢僩柤",$壒妝僨乕僞)
{
	$応強巜掕 = "sound/se/" + "$壒妝僨乕僞";

	if($壒妝僨乕僞=="se愴摤_峌寕_僄僱儖僊乕椹偓崌偄01_L"){
		$奐巒儈儕昩=5833;
		$廔椆儈儕昩=17267;
	}else if($壒妝僨乕僞=="se愴摤_峌寕_奪_寱寔05_L"){
		$奐巒儈儕昩=4618;
		$廔椆儈儕昩=22538;
	}else if($壒妝僨乕僞=="se摿庩_堿媊_儗乕儖僈儞慂_弨旛"){
		$奐巒儈儕昩=1536;
		$廔椆儈儕昩=9301;
	}else if($壒妝僨乕僞=="se愴摤_峳攅揻_峌寕02_L"){
		$奐巒儈儕昩=5325;
		$廔椆儈儕昩=8294;
	}else if($壒妝僨乕僞=="se忔暔_旘峴慏_棧棨奐巒_L"){
		$奐巒儈儕昩=15871;
		$廔椆儈儕昩=18810;
	}else if($壒妝僨乕僞=="se愴摤_峌寕_杺朄峌寕_抏偔01"){
		$奐巒儈儕昩=7146;
		$廔椆儈儕昩=23621;
	}else if($壒妝僨乕僞=="se_愴摤_寱寔懪崌a00"){
		//婼歀奨儕儊僀僋壒尮
		$奐巒儈儕昩=88;
		$廔椆儈儕昩=20893;
	}else if($壒妝僨乕僞=="se_愴摤_寱寔懪崌b00"){
		//婼歀奨儕儊僀僋壒尮
		$奐巒儈儕昩=222;
		$廔椆儈儕昩=20136;
	}else if($壒妝僨乕僞=="se_愴摤_寱寔懪崌c00"){
		//婼歀奨儕儊僀僋壒尮
		$奐巒儈儕昩=80;
		$廔椆儈儕昩=17656;
	}

	CreateSound("僫僢僩柤", SE, "$応強巜掕");
	SetVolume("僫僢僩柤", 0, 0, NULL);
	SetAlias("僫僢僩柤", "僫僢僩柤");
	SetLoopPoint("僫僢僩柤",$奐巒儈儕昩,$廔椆儈儕昩);
}

..CreateVOICE
function CreateVOICE($僫僢僩柤,$壒妝僨乕僞)
{
	$僋儔僗柤=$僫僢僩柤;

	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$僋儔僗柤){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$応強巜掕 = "voice/" + $壒妝僨乕僞;

		CreateSound($僫僢僩柤, VOICE, $応強巜掕);
		SetVolume($僫僢僩柤, 0, 0, NULL);
		SetAlias($僫僢僩柤, $僫僢僩柤);
	}
}

..CreateVOICEEX
function CreateVOICEEX($僫僢僩柤,$壒妝僨乕僞,$僋儔僗柤)
{
	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$僋儔僗柤){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}


	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$応強巜掕 = "voice/" + $壒妝僨乕僞;

		CreateSound($僫僢僩柤, VOICE, $応強巜掕);
		SetVolume($僫僢僩柤, 0, 0, NULL);
		SetAlias($僫僢僩柤, $僫僢僩柤);
	}
}


// 嵞惗
..SoundPlay
function SoundPlay($SoundPlayName,昩悢,$儃儕僂儉,儖乕僾愝掕)
{
	if(PassageTime($SoundPlayName)<1){
		SetVolume($SoundPlayName, 0, 1, null);
	}

	//SetStream("@m13", 15020);
	//SetStream("@m13_ef", 15020);

	//僄僼僃僋僩巇條
	$bgmmoji=Strstr($SoundPlayName, "m");
	if($bgmmoji==1||$bgmmoji==2){
		$SoundPlayName2=$SoundPlayName+"_ef";
		Request($SoundPlayName2, Stop);
		SetLoop($SoundPlayName2, 儖乕僾愝掕);
		SetVolume($SoundPlayName2, 0, 1, null);
		Request($SoundPlayName2, Play);
	}

	Request($SoundPlayName, Play);

	SetFrequency($SoundPlayName, 0, 1000, null);
//	SetPan($SoundPlayName, 0, 0, NULL);
	SetLoop($SoundPlayName, 儖乕僾愝掕);

	SetVolumeEX($SoundPlayName, 昩悢, $儃儕僂儉, null);


	Request($SoundPlayName, Disused);
}



..MusicStart
function MusicStart($MusicStartName,昩悢,$儃儕僂儉,嵞惗曽岦,嵞惗僗僺乕僪,僥儞億,儖乕僾愝掕)
{
	//僄僼僃僋僩巇條
	$bgmmoji=Strstr($MusicStartName, "m");
	if($bgmmoji==1||$bgmmoji==2){
		$MusicStartName2=$MusicStartName+"_ef";
		Request($MusicStartName2, Stop);
		SetLoop($MusicStartName2, 儖乕僾愝掕);
		SetVolume($MusicStartName2, 0, 1, null);
		Request($MusicStartName2, Play);
	}

	Request($MusicStartName, Play);

	SetFrequency($MusicStartName, 0, 嵞惗僗僺乕僪, NULL);
	SetPan($MusicStartName, 0, 嵞惗曽岦, NULL);
	SetLoop($MusicStartName, 儖乕僾愝掕);

	SetVolumeEX($MusicStartName, 昩悢, $儃儕僂儉, 僥儞億);

	Request($MusicStartName, Disused);
}

..SetVolumeEX
function SetVolumeEX("僫僢僩", 昩悢, $儃儕僂儉, 僥儞億)
{
	$DynamicRange=$儃儕僂儉/2;
	if($儃儕僂儉==1){
		$DynamicRange=1;
	}
	SetVolume("僫僢僩", 昩悢, $DynamicRange, 僥儞億);
}

function SoundLoopEnd($僫僢僩柤)
{
	SetLoop($僫僢僩柤, false);
	SetLoopPoint($僫僢僩柤,0,999999);
}

..SetVolumeEF
function SetVolumeEF($SetVolumeName,$儃儕僂儉)
{
	$DynamicRange=$儃儕僂儉/2;
	if($儃儕僂儉==1){
		$DynamicRange=1;
	}

	$SetVolumeName2=$SetVolumeName+"_ef";
	SetVolume($SetVolumeName, 0, 0, null);
	SetVolume($SetVolumeName2, 0, $DynamicRange, null);
	Request($SetVolumeName2, Pause);
}




//仭BGM傪揨傔偰掕媊
//=============================================================================//
.//BGM掕媊
//=============================================================================//

function InitBGM()
{

//掕媊

//	CreateBGM("EndBGM01","m14");
//	Request("EndBGM01", Lock);
//	CreateBGM("EndBGM02","m01");
//	Request("EndBGM02", Lock);

	CreateBGMEX_ef("m01","m01",391,216640);
	CreateBGM_ef("m01no_f","m01no_f");//枹巊梡
	CreateBGMEX_ef("m02","m02",14407,142429);
//	CreateBGMEX_ef("m03","m03",000,000);
	CreateBGMEX_ef("m03a","m03a",374,171803);//枹巊梡
	CreateBGMEX_ef("m03","m03b",379,171748);//幚偼m03偲摨偠偭傐偄偺偱撪晹挷惍
	CreateBGMEX_ef("m04","m04",34616,254038);
	CreateBGMEX_ef("m04melody","m04melody",95,192105);
	CreateBGMEX_ef("m05","m05",306,208301);
	CreateBGMEX_ef("m06","m06",349,203167);
	CreateBGMEX_ef("m07","m07",352,244593);
	CreateBGM_ef("m08","m08");//枹巊梡
	CreateBGMEX_ef("m08a","m08a",3007,176353);
	CreateBGMEX_ef("m08b","m08b",3009,176353);
	CreateBGMEX_ef("m09","m09",7618,198363);
	CreateBGMEX_ef("m10","m10",15562,204863);
	CreateBGMEX_ef("m11","m11",273,169857);
	CreateBGMEX_ef("m12","m12",6461,169455);
	CreateBGMEX_ef("m13","m13",302,221927);
	CreateBGMEX_ef("m13b","m13b",206907,428533);//儉乕偱偭偪偁偘慺嵽斉

	CreateBGM_ef("uta01","uta01");
	CreateBGM_ef("uta02","uta02");

//	CreateBGMEX_ef("m91","m91",14003,45999););
}




function VoiceOn(){

	#堦復僋儕傾=true;
	#voice_on_柀搇宨柧=true;
	#voice_on_懞惓=true;
	#voice_on_怴揷梇旘=true;
	#voice_on_棃惒栰彫壞=true;
	#voice_on_堫忛拤曐=true;
	#voice_on_楅愳椷朄=true;
	#voice_on_戝捁崄撧巬=true;
	#voice_on_塱憅偝傛=true;
	#voice_on_埢栱堦忦=true;
	#voice_on_愥幵挰堦憼=true;
	#voice_on_恀夵=true;
	#voice_on_挿嶁塃嫗=true;
	#voice_on_彫懢榊=true;
	#voice_on_栱尮懢=true;
	#voice_on_傆偒=true;
	#voice_on_傆側=true;
	#voice_on_懌棙岇巵=true;
	#voice_on_戝捁巶巕欋=true;
	#voice_on_梀嵅摱怱=true;
	#voice_on_崱愳棆挶=true;
	#voice_on_懌棙拑乆娵=true;
	#voice_on_彁挿=true;
	#voice_on_僉儍僲儞=true;
	#voice_on_僈乕僎僢僩=true;
	#voice_on_晳揳媨=true;
	#voice_on_峜楬憖=true;
	#voice_on_峜楬戩=true;
	#voice_on_擇悽懞惓=true;
	#voice_on_桍惗忢埮嵵=true;
	#voice_on_朏梴=true;
	#voice_on_尋媶強挿=true;
	#voice_on_媊惔=true;
	#voice_on_惵峕=true;
	#voice_on_奆搇杮壠=true;
	#voice_on_柀搇摑=true;
	#voice_on_嶳懐偺庱椞=true;
	#voice_on_庱椞偺掜=true;
	#voice_on_惓廆=true;
	#voice_on_壀晹嶗巕=true;
	#voice_on_懌棙朚巵=true;
	#voice_on_僂傿儘乕=true;
	#voice_on_崟悾摱巕=true;
	#voice_on_僐僽僨儞=true;
	#voice_on_僂僅儖僼=true;
	#voice_on_塱憅墺=true;
	#voice_on_戝捁壴巬=true;
	#voice_on_巒慶懞惓=true;
	#voice_on_朞娫=true;
	#voice_on_塝柌=true;
	#voice_on_僒僔儏傾儞僩=true;
	#voice_on_僆乕儕僈=true;
	#voice_on_屒帣偺岝=true;
	#voice_on_嬧惎崋=true;
	#voice_on_偦偺懠抝惡=true;
	#voice_on_偦偺懠彈惡=true;

}





//仭儔僥棑慗堏夋柺掕媊
//=============================================================================//
.//儔僥棑慗堏夋柺掕媊
//=============================================================================//
//夋憸傪庢摼偟傑偡（巊梡屻偼昁偢徚嫀偟偰偔偩偝偄）
function TakeRateImg()
{
	Fade("@Oclock*", 0, 0, null, true);
	Fade("@Oclock*/*", 0, 0, null, true);
	Fade("@text*", 0, 0, null, true);

	QuickStop();

	WriteImage(String("%s/%s.img",#SYSTEM_save_path,Substr($GameName,0,Strstr($GameName,".nss")-1)));
	WaitKey();
}

//「FadeDelete」「DrawDelete」摍偺売強偱帺摦揑偵夋憸傪庢摼偟傑偡
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

//擟堄偺応強偱帺摦揑偵夋憸傪庢摼偟傑偡
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

//RateTakenMode偱慗堏拞，壗傕柍偔僥僉僗僩傑偱偨偳傝拝偄偨応崌
function TakeRateBack()
{
	if($RateTakenMode){
		SetVolume("@*", 100, 0, NULL);
		Delete("*");
		Delete("@*");
		Escape(4);
	}
}

//昞帵梡
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







//奐巒僗僋儕僾僩愭摢偱師偺峴偒愭傪嫮惂曄峏
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
	if($KagomeTex==1){$FolderName="1800僲乕僐";}
	else if($KagomeTex==2){$FolderName="1800僼僂儕";}
	else if($KagomeTex==3){$FolderName="1800宐撨";}
	else if($KagomeTex==4){$FolderName="1800嵐峠梾";}
	else if($KagomeTex==5){$FolderName="1800帡捁";}
	else if($KagomeTex==6){$FolderName="1800愮廐";}
	else if($KagomeTex==7){$FolderName="1810僲乕僐_僼僂儕";}
	else if($KagomeTex==8){$FolderName="1810嵐峠梾";}
	else if($KagomeTex==9){$FolderName="1810帡捁";}
	else if($KagomeTex==10){$FolderName="1820僲乕僐";}
	else if($KagomeTex==11){$FolderName="1820僼僂儕";}
	else if($KagomeTex==12){$FolderName="1820宐撨";}
	else if($KagomeTex==13){$FolderName="1820愮廐";}
	else if($KagomeTex==14){$FolderName="1830僼僂儕";}
	else if($KagomeTex==15){$FolderName="1830宐撨";}
	else if($KagomeTex==16){$FolderName="1830帡捁_僲乕僐";}
	else if($KagomeTex==17){$FolderName="1830愮廐";}
	else if($KagomeTex==18){$FolderName="1840嵐峠梾";}
	else if($KagomeTex==19){$FolderName="1840帡捁_僲乕僐_h";}
	else if($KagomeTex==20){$FolderName="1850宐撨";}
	else if($KagomeTex==21){$FolderName="1850嵐峠梾";}
	else if($KagomeTex==22){$FolderName="1850愮廐_僼僂儕";}
	else if($KagomeTex==23){$FolderName="1900僲乕僐";}
	else if($KagomeTex==24){$FolderName="1900僼僂儕";}
	else if($KagomeTex==25){$FolderName="1900宐撨";}
	else if($KagomeTex==26){$FolderName="1900嵐峠梾";}
	else if($KagomeTex==27){$FolderName="1900帡捁";}
	else if($KagomeTex==28){$FolderName="1900愮廐";}
	else if($KagomeTex==29){$FolderName="1910僲乕僐_僼僂儕";}
	else if($KagomeTex==30){$FolderName="1910宐撨";}
	else if($KagomeTex==31){$FolderName="1910嵐峠梾_愮廐";}
	else if($KagomeTex==32){$FolderName="1920宐撨";}
	else if($KagomeTex==33){$FolderName="1920嵐峠梾_愮廐";}
	else if($KagomeTex==34){$FolderName="1920帡捁_僲乕僐_僼僂儕";}
	else if($KagomeTex==35){$FolderName="1930僲乕僐";}
	else if($KagomeTex==36){$FolderName="1930僼僂儕";}
	else if($KagomeTex==37){$FolderName="1930宐撨";}
	else if($KagomeTex==38){$FolderName="1930嵐峠梾";}
	else if($KagomeTex==39){$FolderName="1930帡捁";}
	else if($KagomeTex==40){$FolderName="1930愮廐";}
	else if($KagomeTex==41){$FolderName="1940僲乕僐";}
	else if($KagomeTex==42){$FolderName="1940宐撨";}
	else if($KagomeTex==43){$FolderName="1940帡捁";}
	else if($KagomeTex==44){$FolderName="1940愮廐";}
	else if($KagomeTex==45){$FolderName="1942嵐峠梾_僲乕僐";}
	else if($KagomeTex==46){$FolderName="1943僲乕僐";}
	else if($KagomeTex==47){$FolderName="1943嵐峠梾";}
	else if($KagomeTex==48){$FolderName="1948嵐峠梾_僲乕僐";}
	else if($KagomeTex==49){$FolderName="1949僲乕僐";}
	else if($KagomeTex==50){$FolderName="1949嵐峠梾";}
	else if($KagomeTex==51){$FolderName="1950僲乕僐";}
	else if($KagomeTex==52){$FolderName="1950僼僂儕";}
	else if($KagomeTex==53){$FolderName="1950宐撨";}
	else if($KagomeTex==54){$FolderName="1950嵐峠梾_帡捁";}
	else if($KagomeTex==55){$FolderName="2000僲乕僐";}
	else if($KagomeTex==56){$FolderName="2000嵐峠梾";}
	else if($KagomeTex==57){$FolderName="2000帡捁";}
	else if($KagomeTex==58){$FolderName="2000愮廐_宐撨";}
	else if($KagomeTex==59){$FolderName="2007愮廐_宐撨_僲乕僐";}
	else if($KagomeTex==60){$FolderName="2008僲乕僐";}
	else if($KagomeTex==61){$FolderName="2008愮廐_宐撨";}
	else if($KagomeTex==62){$FolderName="2010僲乕僐";}
	else if($KagomeTex==63){$FolderName="2010嵐峠梾_僼僂儕";}
	else if($KagomeTex==64){$FolderName="2010帡捁";}
	else if($KagomeTex==65){$FolderName="2010愮廐_宐撨";}
	else if($KagomeTex==66){$FolderName="2020僇僑儊1";}
	else if($KagomeTex==67){$FolderName="2020僲乕僐";}
	else if($KagomeTex==68){$FolderName="2020嵐峠梾_僼僂儕";}
	else if($KagomeTex==69){$FolderName="2020帡捁";}
	else if($KagomeTex==70){$FolderName="2020愮廐_宐撨";}
	else if($KagomeTex==71){$FolderName="2030僲乕僐";}
	else if($KagomeTex==72){$FolderName="2030嵐峠梾_僼僂儕";}
	else if($KagomeTex==73){$FolderName="2030帡捁";}
	else if($KagomeTex==74){$FolderName="2030愮廐_宐撨";}
	else if($KagomeTex==75){$FolderName="2040宐撨";}
	else if($KagomeTex==76){$FolderName="2040嵐峠梾_僼僂儕";}
	else if($KagomeTex==77){$FolderName="2040帡捁";}
	else if($KagomeTex==78){$FolderName="2040愮廐_僲乕僐";}
	else if($KagomeTex==79){$FolderName="2045嵐峠梾_僼僂儕";}
	else if($KagomeTex==80){$FolderName="2047嵐峠梾_僼僂儕";}
	else if($KagomeTex==81){$FolderName="2050僇僑儊2";}
	else if($KagomeTex==82){$FolderName="2050僲乕僐";}
	else if($KagomeTex==83){$FolderName="2050宐撨";}
	else if($KagomeTex==84){$FolderName="2050嵐峠梾_帡捁_僼僂儕";}
	else if($KagomeTex==85){$FolderName="2100僲乕僐";}
	else if($KagomeTex==86){$FolderName="2100宐撨";}
	else if($KagomeTex==87){$FolderName="2100嵐峠梾_僼僂儕";}
	else if($KagomeTex==88){$FolderName="2100帡捁";}
	else if($KagomeTex==89){$FolderName="2110僲乕僐";}
	else if($KagomeTex==90){$FolderName="2110嵐峠梾_僼僂儕";}
	else if($KagomeTex==91){$FolderName="2110帡捁";}
	else if($KagomeTex==92){$FolderName="2111嵐峠梾_僼僂儕";}
	else if($KagomeTex==93){$FolderName="2115嵐峠梾_僼僂儕";}
	else if($KagomeTex==94){$FolderName="2120嵐峠梾_宐撨_帡捁_僲乕僐_僼僂儕";}
	else if($KagomeTex==95){$FolderName="2130僼僂儕";}
	else if($KagomeTex==96){$FolderName="2130宐撨";}
	else if($KagomeTex==97){$FolderName="2130嵐峠梾_帡捁_僲乕僐";}
	else if($KagomeTex==98){$FolderName="2131僼僂儕";}
	else if($KagomeTex==99){$FolderName="2131宐撨";}
	else if($KagomeTex==100){$FolderName="2134宐撨";}
	else if($KagomeTex==101){$FolderName="2139僼僂儕";}
	else if($KagomeTex==102){$FolderName="2140僲乕僐_僼僂儕";}
	else if($KagomeTex==103){$FolderName="2140宐撨";}
	else if($KagomeTex==104){$FolderName="2140嵐峠梾_帡捁";}
	else if($KagomeTex==105){$FolderName="2143宐撨";}
	else if($KagomeTex==106){$FolderName="2144宐撨";}
	else if($KagomeTex==107){$FolderName="2150僼僂儕";}
	else if($KagomeTex==108){$FolderName="2150宐撨";}
	else if($KagomeTex==109){$FolderName="2150嵐峠梾_帡捁_僲乕僐";}
	else if($KagomeTex==110){$FolderName="2200僲乕僐";}
	else if($KagomeTex==111){$FolderName="2200宐撨";}
	else if($KagomeTex==112){$FolderName="2200嵐峠梾_帡捁";}
	else if($KagomeTex==113){$FolderName="2206僲乕僐";}
	else if($KagomeTex==114){$FolderName="2210僲乕僐";}
	else if($KagomeTex==115){$FolderName="2210僼僂儕";}
	else if($KagomeTex==116){$FolderName="2210宐撨";}
	else if($KagomeTex==117){$FolderName="2210嵐峠梾_帡捁";}
	else if($KagomeTex==118){$FolderName="2220宐撨_僼僂儕";}
	else if($KagomeTex==119){$FolderName="2220嵐峠梾_帡捁_僲乕僐";}
	else if($KagomeTex==120){$FolderName="2230僇僑儊3";}
	else if($KagomeTex==121){$FolderName="2230僼僂儕";}
	else if($KagomeTex==122){$FolderName="2230宐撨";}
	else if($KagomeTex==123){$FolderName="2230嵐峠梾_帡捁_僲乕僐";}
	else if($KagomeTex==124){$FolderName="2233嵐峠梾_帡捁_僲乕僐_僼僂儕";}
	else if($KagomeTex==125){$FolderName="2235僼僂儕";}
	else if($KagomeTex==126){$FolderName="2235嵐峠梾_帡捁_僲乕僐";}
	else if($KagomeTex==127){$FolderName="2240僼僂儕";}
	else if($KagomeTex==128){$FolderName="2240嵐峠梾_宐撨_帡捁_僲乕僐";}
	else if($KagomeTex==129){$FolderName="2250僇僑儊4";}
	else if($KagomeTex==130){$FolderName="2250僼僂儕";}
	else if($KagomeTex==131){$FolderName="2250嵐峠梾_宐撨_帡捁_僲乕僐";}
	else if($KagomeTex==132){$FolderName="2300僼僂儕_h";}
	else if($KagomeTex==133){$FolderName="2300嵐峠梾_宐撨_帡捁_僲乕僐";}
	else if($KagomeTex==134){$FolderName="2301宐撨";}
	else if($KagomeTex==135){$FolderName="2301嵐峠梾";}
	else if($KagomeTex==136){$FolderName="2301帡捁_僲乕僐";}
	else if($KagomeTex==137){$FolderName="2304嵐峠梾";}
	else if($KagomeTex==138){$FolderName="2310僲乕僐";}
	else if($KagomeTex==139){$FolderName="2310宐撨";}
	else if($KagomeTex==140){$FolderName="2310嵐峠梾";}
	else if($KagomeTex==141){$FolderName="2310帡捁";}
	else if($KagomeTex==142){$FolderName="2311僲乕僐";}
	else if($KagomeTex==143){$FolderName="2320僇僑儊5";}
	else if($KagomeTex==144){$FolderName="2320僲乕僐";}
	else if($KagomeTex==145){$FolderName="2320僼僂儕_h";}
	else if($KagomeTex==146){$FolderName="2320宐撨";}
	else if($KagomeTex==147){$FolderName="2320嵐峠梾_愮廐";}
	else if($KagomeTex==148){$FolderName="2320帡捁";}
	else if($KagomeTex==149){$FolderName="2330僲乕僐";}
	else if($KagomeTex==150){$FolderName="2330僼僂儕";}
	else if($KagomeTex==151){$FolderName="2330嵐峠梾_愮廐_宐撨";}
	else if($KagomeTex==152){$FolderName="2330帡捁";}
	else if($KagomeTex==153){$FolderName="2331嵐峠梾";}
	else if($KagomeTex==154){$FolderName="2331愮廐_宐撨";}
	else if($KagomeTex==155){$FolderName="2338僲乕僐";}
	else if($KagomeTex==156){$FolderName="2340僲乕僐_僼僂儕";}
	else if($KagomeTex==157){$FolderName="2340嵐峠梾";}
	else if($KagomeTex==158){$FolderName="2340帡捁";}
	else if($KagomeTex==159){$FolderName="2340愮廐_宐撨";}
	else if($KagomeTex==160){$FolderName="2345帡捁";}
	else if($KagomeTex==161){$FolderName="2348僲乕僐_僼僂儕";}
	else if($KagomeTex==162){$FolderName="2349僲乕僐_僼僂儕";}
	else if($KagomeTex==163){$FolderName="2350嵐峠梾_愮廐_宐撨_帡捁_僲乕僐_僼僂儕";}
	else if($KagomeTex==164){$FolderName="2400嵐峠梾_愮廐_宐撨_帡捁_僲乕僐_僼僂儕";}
	else if($KagomeTex==165){$FolderName="a2020帡捁_僲乕僐";}
	else if($KagomeTex==166){$FolderName="a2030帡捁_僲乕僐";}
	else if($KagomeTex==167){$FolderName="a2040嵐峠梾_僼僂儕";}
	else if($KagomeTex==168){$FolderName="a2040帡捁_僲乕僐";}
	else if($KagomeTex==169){$FolderName="a2040愮廐";}
	else if($KagomeTex==170){$FolderName="a2047嵐峠梾_僼僂儕";}
	else if($KagomeTex==171){$FolderName="a2050僇僑儊";}
	else if($KagomeTex==172){$FolderName="aa2050嵐峠梾_僼僂儕";}
	else if($KagomeTex==173){$FolderName="aa2050愮廐_宐撨";}
	else if($KagomeTex==174){$FolderName="aa2100宐撨";}
	else if($KagomeTex==175){$FolderName="aa2100嵐峠梾";}
	else if($KagomeTex==176){$FolderName="aa2100愮廐_僼僂儕";}
	else if($KagomeTex==177){$FolderName="aa2110僼僂儕";}
	else if($KagomeTex==178){$FolderName="aa2110宐撨";}
	else if($KagomeTex==179){$FolderName="aa2110嵐峠梾";}
	else if($KagomeTex==180){$FolderName="aa2110愮廐";}
	else if($KagomeTex==181){$FolderName="aa2120僼僂儕";}
	else if($KagomeTex==182){$FolderName="aa2120嵐峠梾";}
	else if($KagomeTex==183){$FolderName="aa2120愮廐_宐撨";}
	else if($KagomeTex==184){$FolderName="aa2345僼僂儕";}
	else if($KagomeTex==185){$FolderName="aa2350愮廐_宐撨";}
	else if($KagomeTex==186){$FolderName="aa2355嵐峠梾";}
	else if($KagomeTex==187){$FolderName="ab2050帡捁_僲乕僐";}
	else if($KagomeTex==188){$FolderName="ab2051僲乕僐";}
	else if($KagomeTex==189){$FolderName="ab2051帡捁";}
	else if($KagomeTex==190){$FolderName="ab2100僲乕僐";}
	else if($KagomeTex==191){$FolderName="ab2100嵐峠梾_帡捁_僼僂儕";}
	else if($KagomeTex==192){$FolderName="ab2100愮廐_宐撨";}
	else if($KagomeTex==193){$FolderName="ab2107嵐峠梾_帡捁_僲乕僐_僼僂儕";}
	else if($KagomeTex==194){$FolderName="ab2108僲乕僐";}
	else if($KagomeTex==195){$FolderName="ab2108嵐峠梾_帡捁_僼僂儕";}
	else if($KagomeTex==196){$FolderName="ab2110僲乕僐";}
	else if($KagomeTex==197){$FolderName="ab2110帡捁";}
	else if($KagomeTex==198){$FolderName="ab2110愮廐_宐撨";}
	else if($KagomeTex==199){$FolderName="ab2131愮廐_宐撨_僼僂儕";}
	else if($KagomeTex==200){$FolderName="ab2133僼僂儕";}
	else if($KagomeTex==201){$FolderName="ab2133愮廐_宐撨";}
	else if($KagomeTex==202){$FolderName="ab2140嵐峠梾_帡捁";}
	else if($KagomeTex==203){$FolderName="ab2140愮廐_宐撨";}
	else if($KagomeTex==204){$FolderName="ab2150嵐峠梾_帡捁_僲乕僐";}
	else if($KagomeTex==205){$FolderName="ab2150愮廐_宐撨";}
	else if($KagomeTex==206){$FolderName="ab2200宐撨";}
	else if($KagomeTex==207){$FolderName="ab2200嵐峠梾";}
	else if($KagomeTex==208){$FolderName="ab2200愮廐";}
	else if($KagomeTex==209){$FolderName="ab2210僼僂儕";}
	else if($KagomeTex==210){$FolderName="ab2210嵐峠梾_h";}
	else if($KagomeTex==211){$FolderName="ab2210愮廐";}
	else if($KagomeTex==212){$FolderName="ab2220愮廐_宐撨";}
	else if($KagomeTex==213){$FolderName="ab2230僇僑儊";}
	else if($KagomeTex==214){$FolderName="aba2400宐撨";}
	else if($KagomeTex==215){$FolderName="aba2401愮廐_僼僂儕";}
	else if($KagomeTex==216){$FolderName="aba2402僼僂儕";}
	else if($KagomeTex==217){$FolderName="aba2403帡捁_僲乕僐";}
	else if($KagomeTex==218){$FolderName="aba2404嵐峠梾";}
	else if($KagomeTex==219){$FolderName="abb2400嵐峠梾_愮廐_宐撨_帡捁_僲乕僐_僼僂儕";}
	else if($KagomeTex==220){$FolderName="b2050愮廐";}
	else if($KagomeTex==221){$FolderName="b2110嵐峠梾_愮廐_僼僂儕";}
	else if($KagomeTex==222){$FolderName="b2115嵐峠梾_愮廐_僼僂儕";}
	else if($KagomeTex==223){$FolderName="b2120愮廐";}
	else if($KagomeTex==224){$FolderName="b2130宐撨";}
	else if($KagomeTex==225){$FolderName="b2134宐撨";}
	else if($KagomeTex==226){$FolderName="b2140愮廐_宐撨";}
	else if($KagomeTex==227){$FolderName="b2144愮廐_宐撨";}
	else if($KagomeTex==228){$FolderName="b2150愮廐_宐撨";}
	else if($KagomeTex==229){$FolderName="b2200愮廐_宐撨";}
	else if($KagomeTex==230){$FolderName="b2206僲乕僐";}
	else if($KagomeTex==231){$FolderName="b2208愮廐_宐撨_僲乕僐";}
	else if($KagomeTex==232){$FolderName="b2209僲乕僐";}
	else if($KagomeTex==233){$FolderName="b2209愮廐_宐撨";}
	else if($KagomeTex==234){$FolderName="b2210嵐峠梾_帡捁_僲乕僐";}
	else if($KagomeTex==235){$FolderName="b2210愮廐_宐撨";}
	else if($KagomeTex==236){$FolderName="b2213嵐峠梾";}
	else if($KagomeTex==237){$FolderName="b2213帡捁_僲乕僐";}
	else if($KagomeTex==238){$FolderName="b2220僇僑儊";}
	else if($KagomeTex==239){$FolderName="ba2220嵐峠梾_帡捁_僲乕僐";}
	else if($KagomeTex==240){$FolderName="ba2220愮廐_宐撨";}
	else if($KagomeTex==241){$FolderName="ba2221愮廐_宐撨";}
	else if($KagomeTex==242){$FolderName="ba2230僲乕僐";}
	else if($KagomeTex==243){$FolderName="ba2230嵐峠梾_帡捁";}
	else if($KagomeTex==244){$FolderName="ba2230愮廐_宐撨";}
	else if($KagomeTex==245){$FolderName="ba2235嵐峠梾";}
	else if($KagomeTex==246){$FolderName="ba2235帡捁";}
	else if($KagomeTex==247){$FolderName="ba2235愮廐_宐撨_僲乕僐";}
	else if($KagomeTex==248){$FolderName="ba2236僲乕僐";}
	else if($KagomeTex==249){$FolderName="ba2236愮廐_宐撨";}
	else if($KagomeTex==250){$FolderName="ba2239帡捁_僲乕僐";}
	else if($KagomeTex==251){$FolderName="ba2240嵐峠梾";}
	else if($KagomeTex==252){$FolderName="ba2240帡捁_僲乕僐";}
	else if($KagomeTex==253){$FolderName="ba2240愮廐_宐撨";}
	else if($KagomeTex==254){$FolderName="ba2248嵐峠梾_帡捁_僲乕僐";}
	else if($KagomeTex==255){$FolderName="ba2250嵐峠梾_愮廐_宐撨_帡捁_僲乕僐";}
	else if($KagomeTex==256){$FolderName="ba2300僇僑儊";}
	else if($KagomeTex==257){$FolderName="baa2300嵐峠梾_愮廐_宐撨_帡捁_僲乕僐_僼僂儕";}
	else if($KagomeTex==258){$FolderName="baa2330帡捁_僲乕僐_h";}
	else if($KagomeTex==259){$FolderName="baa2351愮廐_宐撨";}
	else if($KagomeTex==260){$FolderName="baa2352愮廐_宐撨";}
	else if($KagomeTex==261){$FolderName="baa2353愮廐_宐撨";}
	else if($KagomeTex==262){$FolderName="baa2354愮廐_宐撨";}
	else if($KagomeTex==263){$FolderName="baa2355嵐峠梾";}
	else if($KagomeTex==264){$FolderName="baa2356帡捁_僲乕僐";}
	else if($KagomeTex==265){$FolderName="baa2357帡捁_僲乕僐";}
	else if($KagomeTex==266){$FolderName="baa2358帡捁_僲乕僐";}
	else if($KagomeTex==267){$FolderName="baa2359僼僂儕";}
	else if($KagomeTex==268){$FolderName="bab2300嵐峠梾_愮廐_宐撨_帡捁_僲乕僐";}
	else if($KagomeTex==269){$FolderName="bab2330愮廐_宐撨";}
	else if($KagomeTex==270){$FolderName="bab2340愮廐_宐撨_h";}
	else if($KagomeTex==271){$FolderName="bab2350愮廐_宐撨";}
	else if($KagomeTex==272){$FolderName="bab2352愮廐_宐撨";}
	else if($KagomeTex==273){$FolderName="bab2354愮廐_宐撨";}
	else if($KagomeTex==274){$FolderName="bab2358帡捁_僲乕僐";}
	else if($KagomeTex==275){$FolderName="bab2359嵐峠梾_僼僂儕";}
	else if($KagomeTex==276){$FolderName="bb2220嵐峠梾_帡捁";}
	else if($KagomeTex==277){$FolderName="bb2221愮廐_宐撨_h";}
	else if($KagomeTex==278){$FolderName="bb2235嵐峠梾_帡捁";}
	else if($KagomeTex==279){$FolderName="bb2400愮廐_宐撨";}
	else if($KagomeTex==280){$FolderName="bb2401嵐峠梾_帡捁";}
	else if($KagomeTex==281){$FolderName="c2230嵐峠梾_帡捁";}
	else if($KagomeTex==282){$FolderName="c2233嵐峠梾_帡捁_僼僂儕";}
	else if($KagomeTex==283){$FolderName="c2235嵐峠梾_帡捁";}
	else if($KagomeTex==284){$FolderName="c2240嵐峠梾_宐撨_帡捁";}
	else if($KagomeTex==285){$FolderName="c2250僼僂儕";}
	else if($KagomeTex==286){$FolderName="c2250嵐峠梾_宐撨_帡捁";}
	else if($KagomeTex==287){$FolderName="c2300僼僂儕";}
	else if($KagomeTex==288){$FolderName="c2300宐撨";}
	else if($KagomeTex==289){$FolderName="c2300嵐峠梾_帡捁";}
	else if($KagomeTex==290){$FolderName="c2310嵐峠梾_僼僂儕";}
	else if($KagomeTex==291){$FolderName="c2310帡捁";}
	else if($KagomeTex==292){$FolderName="c2340宐撨";}
	else if($KagomeTex==293){$FolderName="c2341嵐峠梾_僼僂儕";}
	else if($KagomeTex==294){$FolderName="c2350嵐峠梾_帡捁";}
	else if($KagomeTex==295){$FolderName="c2351僼僂儕";}
	else if($KagomeTex==296){$FolderName="c2357宐撨";}
	else if($KagomeTex==297){$FolderName="c2400嵐峠梾";}
	else if($KagomeTex==298){$FolderName="c2401嵐峠梾_僼僂儕";}
	else if($KagomeTex==299){$FolderName="c2402嵐峠梾";}
	else if($KagomeTex==300){$FolderName="c2403嵐峠梾_帡捁_僼僂儕";}
	else if($KagomeTex==301){$FolderName="c2404嵐峠梾";}
	else if($KagomeTex==302){$FolderName="c2405僼僂儕";}
	else if($KagomeTex==303){$FolderName="c2406帡捁";}
	else if($KagomeTex==304){$FolderName="d2304嵐峠梾";}
	else if($KagomeTex==305){$FolderName="d2310嵐峠梾";}
	else if($KagomeTex==306){$FolderName="d2311僲乕僐";}
	else if($KagomeTex==307){$FolderName="d2341僲乕僐";}
	else if($KagomeTex==308){$FolderName="d2345帡捁_僲乕僐";}
	else if($KagomeTex==309){$FolderName="d2400嵐峠梾";}
	else if($KagomeTex==310){$FolderName="d2401帡捁_僲乕僐";}
	else if($KagomeTex==311){$FolderName="d2402嵐峠梾_帡捁_僲乕僐";}
	else if($KagomeTex==312){$FolderName="d2403帡捁_僲乕僐";}
	else if($KagomeTex==313){$FolderName="d2404嵐峠梾";}
	else if($KagomeTex==314){$FolderName="e2320嵐峠梾";}
	else if($KagomeTex==315){$FolderName="e2330嵐峠梾";}
	else if($KagomeTex==316){$FolderName="e2338僲乕僐";}
	else if($KagomeTex==317){$FolderName="e2349僲乕僐";}
	else if($KagomeTex==318){$FolderName="e2355嵐峠梾";}
	else if($KagomeTex==319){$FolderName="e2400帡捁_僲乕僐";}
	else if($KagomeTex==320){$FolderName="e2404嵐峠梾";}
	else if($KagomeTex==321){$FolderName="y1730僼僂儕";}
	else if($KagomeTex==322){$FolderName="y1730嵐峠梾";}
	else if($KagomeTex==323){$FolderName="y1730帡捁";}
	else if($KagomeTex==324){$FolderName="y1750僲乕僐";}
	else if($KagomeTex==325){$FolderName="y1750儈僤僴";}
	else if($KagomeTex==326){$FolderName="y1750宐撨";}
	else if($KagomeTex==327){$FolderName="y1751愮廐_宐撨";}
	else if($KagomeTex==328){$FolderName="y1752宐撨";}
	else if($KagomeTex==329){$FolderName="y1752愮廐";}
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
		$myRoute="僩僁儖乕";
	}


}
