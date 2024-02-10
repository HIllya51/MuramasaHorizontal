$Revision: 29 $

//"nss/function_process.nss"【function.nss内でinclude】

.//【Ｓｔ共通】Deleteコマンド
..//DeleteStA

function DeleteStA($StA_Time,$StA_Wait)
{

	DeleteStL($StA_Time,false);
	DeleteStCL($StA_Time,false);
	DeleteStC($StA_Time,false);
	DeleteStR($StA_Time,false);
	DeleteStCR($StA_Time,false);
	DeleteStX($StA_Time,false);
	if($StA_Wait==true){WaitAction("@St*",null);}

}

.//【Ｓｔ共通】Fadeコマンド
..//FadeStA
function FadeStA($FStA_Time,$FStA_Wait)
{

	FadeStL($FStA_Time,false);
	FadeStCL($FStA_Time,false);
	FadeStC($FStA_Time,false);
	FadeStR($FStA_Time,false);
	FadeStCR($FStA_Time,false);
	FadeStX("@遠０/*",$FStA_Time,false);

	if($FStA_Wait==true){WaitAction("@St*",null);}

}


.//【Ｆｗ】顔ウィンドウ定義
..//初期定義
//---------------------------------------------------//
...//SetFwC
function SetFwC($画像,$回想判定)
{
	if($FwCName==""||$FwCName=="FwC10"){$FwCName="FwC01";}
	else if($FwCName=="FwC01"){$FwCName="FwC02";}
	else if($FwCName=="FwC02"){$FwCName="FwC03";}
	else if($FwCName=="FwC03"){$FwCName="FwC04";}
	else if($FwCName=="FwC04"){$FwCName="FwC05";}
	else if($FwCName=="FwC05"){$FwCName="FwC06";}
	else if($FwCName=="FwC06"){$FwCName="FwC07";}
	else if($FwCName=="FwC07"){$FwCName="FwC08";}
	else if($FwCName=="FwC08"){$FwCName="FwC09";}
	else if($FwCName=="FwC09"){$FwCName="FwC10";}

	if($FwCName01==""){$FwCName01=$FwCName;}
	else if($FwCName02==""){$FwCName02=$FwCName;}
	else if($FwCName03==""){$FwCName03=$FwCName;}
	else if($FwCName04==""){$FwCName04=$FwCName;}
	else if($FwCName05==""){$FwCName05=$FwCName;}
	else if($FwCName06==""){$FwCName06=$FwCName;}
	else if($FwCName07==""){$FwCName07=$FwCName;}
	else if($FwCName08==""){$FwCName08=$FwCName;}
	else if($FwCName09==""){$FwCName09=$FwCName;}
	else if($FwCName10==""){$FwCName10=$FwCName;}

	$ナット名 = $FwCName;

//テキストウィンドウ連動用変数
	$FwC_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwC_text_Window_begin = true;

	$FwPri = 20001;
	$FwPri02 =$FwPri+3;

	CreateTexture($ナット名, $FwPri, Center, -139, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 4, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if($回想判定=="Monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if(!$回想判定){

	}else{

	}

}

//-------------------//
...//ネームプレート用
//-------------------//
...//SetNwC
//※顔ウィンドウとの連携のため、ナット名などは同じ
function SetNwC($画像)
{
	if($FwCName==""||$FwCName=="FwC10"){$FwCName="FwC01";}
	else if($FwCName=="FwC01"){$FwCName="FwC02";}
	else if($FwCName=="FwC02"){$FwCName="FwC03";}
	else if($FwCName=="FwC03"){$FwCName="FwC04";}
	else if($FwCName=="FwC04"){$FwCName="FwC05";}
	else if($FwCName=="FwC05"){$FwCName="FwC06";}
	else if($FwCName=="FwC06"){$FwCName="FwC07";}
	else if($FwCName=="FwC07"){$FwCName="FwC08";}
	else if($FwCName=="FwC08"){$FwCName="FwC09";}
	else if($FwCName=="FwC09"){$FwCName="FwC10";}

	if($FwCName01==""){$FwCName01=$FwCName;}
	else if($FwCName02==""){$FwCName02=$FwCName;}
	else if($FwCName03==""){$FwCName03=$FwCName;}
	else if($FwCName04==""){$FwCName04=$FwCName;}
	else if($FwCName05==""){$FwCName05=$FwCName;}
	else if($FwCName06==""){$FwCName06=$FwCName;}
	else if($FwCName07==""){$FwCName07=$FwCName;}
	else if($FwCName08==""){$FwCName08=$FwCName;}
	else if($FwCName09==""){$FwCName09=$FwCName;}
	else if($FwCName10==""){$FwCName10=$FwCName;}

	$ナット名 = $FwCName;

//テキストウィンドウ連動用変数
	$FwC_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwC_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, 460, -139, $画像);

	Move($ナット名, 0, @0, 4, null, true);
	Fade($ナット名, 0, 0, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

}

//---------------------------------------------------//
...//SetFwL
function SetFwL($画像,$回想判定)
{
	if($FwLName==""||$FwLName=="FwL10"){$FwLName="FwL01";}
	else if($FwLName=="FwL01"){$FwLName="FwL02";}
	else if($FwLName=="FwL02"){$FwLName="FwL03";}
	else if($FwLName=="FwL03"){$FwLName="FwL04";}
	else if($FwLName=="FwL04"){$FwLName="FwL05";}
	else if($FwLName=="FwL05"){$FwLName="FwL06";}
	else if($FwLName=="FwL06"){$FwLName="FwL07";}
	else if($FwLName=="FwL07"){$FwLName="FwL08";}
	else if($FwLName=="FwL08"){$FwLName="FwL09";}
	else if($FwLName=="FwL09"){$FwLName="FwL10";}

	if($FwLName01==""){$FwLName01=$FwLName;}
	else if($FwLName02==""){$FwLName02=$FwLName;}
	else if($FwLName03==""){$FwLName03=$FwLName;}
	else if($FwLName04==""){$FwLName04=$FwLName;}
	else if($FwLName05==""){$FwLName05=$FwLName;}
	else if($FwLName06==""){$FwLName06=$FwLName;}
	else if($FwLName07==""){$FwLName07=$FwLName;}
	else if($FwLName08==""){$FwLName08=$FwLName;}
	else if($FwLName09==""){$FwLName09=$FwLName;}
	else if($FwLName10==""){$FwLName10=$FwLName;}

	$ナット名 = $FwLName;

//テキストウィンドウ連動用変数
	$FwL_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwL_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, Center, -139, $画像);
	Fade($ナット名, 0, 0, null, true);

	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	Move($ナット名, 0, @-256, 4, null, true);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if($回想判定=="Monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if(!$回想判定){

	}else{

	}

}

//-------------------//
...//ネームプレート用
//-------------------//
//---------------------------------------------------//
...//SetNwL
function SetNwL($画像)
{
	if($FwLName==""||$FwLName=="FwL10"){$FwLName="FwL01";}
	else if($FwLName=="FwL01"){$FwLName="FwL02";}
	else if($FwLName=="FwL02"){$FwLName="FwL03";}
	else if($FwLName=="FwL03"){$FwLName="FwL04";}
	else if($FwLName=="FwL04"){$FwLName="FwL05";}
	else if($FwLName=="FwL05"){$FwLName="FwL06";}
	else if($FwLName=="FwL06"){$FwLName="FwL07";}
	else if($FwLName=="FwL07"){$FwLName="FwL08";}
	else if($FwLName=="FwL08"){$FwLName="FwL09";}
	else if($FwLName=="FwL09"){$FwLName="FwL10";}

	if($FwLName01==""){$FwLName01=$FwLName;}
	else if($FwLName02==""){$FwLName02=$FwLName;}
	else if($FwLName03==""){$FwLName03=$FwLName;}
	else if($FwLName04==""){$FwLName04=$FwLName;}
	else if($FwLName05==""){$FwLName05=$FwLName;}
	else if($FwLName06==""){$FwLName06=$FwLName;}
	else if($FwLName07==""){$FwLName07=$FwLName;}
	else if($FwLName08==""){$FwLName08=$FwLName;}
	else if($FwLName09==""){$FwLName09=$FwLName;}
	else if($FwLName10==""){$FwLName10=$FwLName;}

	$ナット名 = $FwLName;

//テキストウィンドウ連動用変数
	$FwL_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwL_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, 460, -139, $画像);

	Fade($ナット名, 0, 0, null, true);

	SetAlias($ナット名,$ナット名);
	Request($ナット名, Hideable);

	Move($ナット名, 0, @-256, 4, null, true);

}

//---------------------------------------------------//
...//SetFwR
function SetFwR($画像,$回想判定)
{
	if($FwRName==""||$FwRName=="FwR10"){$FwRName="FwR01";}
	else if($FwRName=="FwR01"){$FwRName="FwR02";}
	else if($FwRName=="FwR02"){$FwRName="FwR03";}
	else if($FwRName=="FwR03"){$FwRName="FwR04";}
	else if($FwRName=="FwR04"){$FwRName="FwR05";}
	else if($FwRName=="FwR05"){$FwRName="FwR06";}
	else if($FwRName=="FwR06"){$FwRName="FwR07";}
	else if($FwRName=="FwR07"){$FwRName="FwR08";}
	else if($FwRName=="FwR08"){$FwRName="FwR09";}
	else if($FwRName=="FwR09"){$FwRName="FwR10";}

	if($FwRName01==""){$FwRName01=$FwRName;}
	else if($FwRName02==""){$FwRName02=$FwRName;}
	else if($FwRName03==""){$FwRName03=$FwRName;}
	else if($FwRName04==""){$FwRName04=$FwRName;}
	else if($FwRName05==""){$FwRName05=$FwRName;}
	else if($FwRName06==""){$FwRName06=$FwRName;}
	else if($FwRName07==""){$FwRName07=$FwRName;}
	else if($FwRName08==""){$FwRName08=$FwRName;}
	else if($FwRName09==""){$FwRName09=$FwRName;}
	else if($FwRName10==""){$FwRName10=$FwRName;}

	$ナット名 = $FwRName;

//テキストウィンドウ連動用変数
	$FwR_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwR_text_Window_begin = true;

	$FwPri = 20001;
	$FwPri02 =$FwPri+3;

	CreateTexture($ナット名, $FwPri, Center, -139, $画像);
	Fade($ナット名, 0, 0, null, true);

	SetAlias($ナット名,$ナット名);
	Request($ナット名, Hideable);

	Move($ナット名, 0, @+256, 4, null, true);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 707, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 707, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if($回想判定=="Monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if(!$回想判定){

	}else{

	}

}

//-------------------//
...//ネームプレート用
//-------------------//
//---------------------------------------------------//
...//SetNwR
function SetNwR($画像)
{
	if($FwRName==""||$FwRName=="FwR10"){$FwRName="FwR01";}
	else if($FwRName=="FwR01"){$FwRName="FwR02";}
	else if($FwRName=="FwR02"){$FwRName="FwR03";}
	else if($FwRName=="FwR03"){$FwRName="FwR04";}
	else if($FwRName=="FwR04"){$FwRName="FwR05";}
	else if($FwRName=="FwR05"){$FwRName="FwR06";}
	else if($FwRName=="FwR06"){$FwRName="FwR07";}
	else if($FwRName=="FwR07"){$FwRName="FwR08";}
	else if($FwRName=="FwR08"){$FwRName="FwR09";}
	else if($FwRName=="FwR09"){$FwRName="FwR10";}

	if($FwRName01==""){$FwRName01=$FwRName;}
	else if($FwRName02==""){$FwRName02=$FwRName;}
	else if($FwRName03==""){$FwRName03=$FwRName;}
	else if($FwRName04==""){$FwRName04=$FwRName;}
	else if($FwRName05==""){$FwRName05=$FwRName;}
	else if($FwRName06==""){$FwRName06=$FwRName;}
	else if($FwRName07==""){$FwRName07=$FwRName;}
	else if($FwRName08==""){$FwRName08=$FwRName;}
	else if($FwRName09==""){$FwRName09=$FwRName;}
	else if($FwRName10==""){$FwRName10=$FwRName;}

	$ナット名 = $FwRName;

//テキストウィンドウ連動用変数
	$FwR_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwR_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, 460, -139, $画像);

	Fade($ナット名, 0, 0, null, true);

	SetAlias($ナット名,$ナット名);
	Request($ナット名, Hideable);

	Move($ナット名, 0, @+256, 4, null, true);

}

...//SetFwB
function SetFwB($画像)
{
	if($FwBName==""||$FwBName=="FwB10"){$FwBName="FwB01";}
	else if($FwBName=="FwB01"){$FwBName="FwB02";}
	else if($FwBName=="FwB02"){$FwBName="FwB03";}
	else if($FwBName=="FwB03"){$FwBName="FwB04";}
	else if($FwBName=="FwB04"){$FwBName="FwB05";}
	else if($FwBName=="FwB05"){$FwBName="FwB06";}
	else if($FwBName=="FwB06"){$FwBName="FwB07";}
	else if($FwBName=="FwB07"){$FwBName="FwB08";}
	else if($FwBName=="FwB08"){$FwBName="FwB09";}
	else if($FwBName=="FwB09"){$FwBName="FwB10";}

	if($FwBName01==""){$FwBName01=$FwCName;}
	else if($FwBName02==""){$FwBName02=$FwBName;}
	else if($FwBName03==""){$FwBName03=$FwBName;}
	else if($FwBName04==""){$FwBName04=$FwBName;}
	else if($FwBName05==""){$FwBName05=$FwBName;}
	else if($FwBName06==""){$FwBName06=$FwBName;}
	else if($FwBName07==""){$FwBName07=$FwBName;}
	else if($FwBName08==""){$FwBName08=$FwBName;}
	else if($FwBName09==""){$FwBName09=$FwBName;}
	else if($FwBName10==""){$FwBName10=$FwBName;}

	$ナット名 = $FwBName;

//テキストウィンドウ連動用変数
	$FwB_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwB_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, 228, 577, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 445, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

}

//-------------------//
...//ネームプレート用
//-------------------//
...//SetNwB
//※顔ウィンドウとの連携のため、ナット名などは同じ
function SetNwB($画像)
{
	if($FwBName==""||$FwBName=="FwB10"){$FwBName="FwB01";}
	else if($FwBName=="FwB01"){$FwBName="FwB02";}
	else if($FwBName=="FwB02"){$FwBName="FwB03";}
	else if($FwBName=="FwB03"){$FwBName="FwB04";}
	else if($FwBName=="FwB04"){$FwBName="FwB05";}
	else if($FwBName=="FwB05"){$FwBName="FwB06";}
	else if($FwBName=="FwB06"){$FwBName="FwB07";}
	else if($FwBName=="FwB07"){$FwBName="FwB08";}
	else if($FwBName=="FwB08"){$FwBName="FwB09";}
	else if($FwBName=="FwB09"){$FwBName="FwB10";}

	if($FwBName01==""){$FwBName01=$FwBName;}
	else if($FwBName02==""){$FwBName02=$FwBName;}
	else if($FwBName03==""){$FwBName03=$FwBName;}
	else if($FwBName04==""){$FwBName04=$FwBName;}
	else if($FwBName05==""){$FwBName05=$FwBName;}
	else if($FwBName06==""){$FwBName06=$FwBName;}
	else if($FwBName07==""){$FwBName07=$FwBName;}
	else if($FwBName08==""){$FwBName08=$FwBName;}
	else if($FwBName09==""){$FwBName09=$FwBName;}
	else if($FwBName10==""){$FwBName10=$FwBName;}

	$ナット名 = $FwBName;

//テキストウィンドウ連動用変数
	$FwB_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwB_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, 228, 577, $画像);

	Move($ナット名, 0, @0, 445, null, true);
	Fade($ナット名, 0, 0, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

}

...//◆特殊用（undertext）
...//SetFwH
function SetFwH($画像,$回想判定)
{
	if($FwHName==""||$FwHName=="FwH10"){$FwHName="FwH01";}
	else if($FwHName=="FwH01"){$FwHName="FwH02";}
	else if($FwHName=="FwH02"){$FwHName="FwH03";}
	else if($FwHName=="FwH03"){$FwHName="FwH04";}
	else if($FwHName=="FwH04"){$FwHName="FwH05";}
	else if($FwHName=="FwH05"){$FwHName="FwH06";}
	else if($FwHName=="FwH06"){$FwHName="FwH07";}
	else if($FwHName=="FwH07"){$FwHName="FwH08";}
	else if($FwHName=="FwH08"){$FwHName="FwH09";}
	else if($FwHName=="FwH09"){$FwHName="FwH10";}

	if($FwHName01==""){$FwHName01=$FwHName;}
	else if($FwHName02==""){$FwHName02=$FwHName;}
	else if($FwHName03==""){$FwHName03=$FwHName;}
	else if($FwHName04==""){$FwHName04=$FwHName;}
	else if($FwHName05==""){$FwHName05=$FwHName;}
	else if($FwHName06==""){$FwHName06=$FwHName;}
	else if($FwHName07==""){$FwHName07=$FwHName;}
	else if($FwHName08==""){$FwHName08=$FwHName;}
	else if($FwHName09==""){$FwHName09=$FwHName;}
	else if($FwHName10==""){$FwHName10=$FwHName;}

	$ナット名 = $FwHName;

//テキストウィンドウ連動用変数
	$FwH_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwH_text_Window_begin = true;

	$FwPri = 20001;
	$FwPri02 =$FwPri+3;

	CreateTexture($ナット名, $FwPri, 228, 578, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 450, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 450, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 576, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if($回想判定=="Monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if(!$回想判定){

	}else{

	}

}

//-------------------//
...//ネームプレート用
//-------------------//
...//SetNwH
//※顔ウィンドウとの連携のため、ナット名などは同じ
function SetNwH($画像)
{
	if($FwHName==""||$FwHName=="FwH10"){$FwHName="FwH01";}
	else if($FwHName=="FwH01"){$FwHName="FwH02";}
	else if($FwHName=="FwH02"){$FwHName="FwH03";}
	else if($FwHName=="FwH03"){$FwHName="FwH04";}
	else if($FwHName=="FwH04"){$FwHName="FwH05";}
	else if($FwHName=="FwH05"){$FwHName="FwH06";}
	else if($FwHName=="FwH06"){$FwHName="FwH07";}
	else if($FwHName=="FwH07"){$FwHName="FwH08";}
	else if($FwHName=="FwH08"){$FwHName="FwH09";}
	else if($FwHName=="FwH09"){$FwHName="FwH10";}

	if($FwHName01==""){$FwHName01=$FwHName;}
	else if($FwHName02==""){$FwHName02=$FwHName;}
	else if($FwHName03==""){$FwHName03=$FwHName;}
	else if($FwHName04==""){$FwHName04=$FwHName;}
	else if($FwHName05==""){$FwHName05=$FwHName;}
	else if($FwHName06==""){$FwHName06=$FwHName;}
	else if($FwHName07==""){$FwHName07=$FwHName;}
	else if($FwHName08==""){$FwHName08=$FwHName;}
	else if($FwHName09==""){$FwHName09=$FwHName;}
	else if($FwHName10==""){$FwHName10=$FwHName;}

	$ナット名 = $FwHName;

//テキストウィンドウ連動用変数
	$FwH_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwH_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, 228, 576, $画像);

	Move($ナット名, 0, @0, 435, null, true);
	Fade($ナット名, 0, 0, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

}

...//◆特殊用（undertext2）
...//SetFwCH
function SetFwCH($画像)
{
	if($FwCHName==""||$FwCHName=="FwCH10"){$FwCHName="FwCH01";}
	else if($FwCHName=="FwCH01"){$FwCHName="FwCH02";}
	else if($FwCHName=="FwCH02"){$FwCHName="FwCH03";}
	else if($FwCHName=="FwCH03"){$FwCHName="FwCH04";}
	else if($FwCHName=="FwCH04"){$FwCHName="FwCH05";}
	else if($FwCHName=="FwCH05"){$FwCHName="FwCH06";}
	else if($FwCHName=="FwCH06"){$FwCHName="FwCH07";}
	else if($FwCHName=="FwCH07"){$FwCHName="FwCH08";}
	else if($FwCHName=="FwCH08"){$FwCHName="FwCH09";}
	else if($FwCHName=="FwCH09"){$FwCHName="FwCH10";}

	if($FwCHName01==""){$FwCHName01=$FwCHName;}
	else if($FwCHName02==""){$FwCHName02=$FwCHName;}
	else if($FwCHName03==""){$FwCHName03=$FwCHName;}
	else if($FwCHName04==""){$FwCHName04=$FwCHName;}
	else if($FwCHName05==""){$FwCHName05=$FwCHName;}
	else if($FwCHName06==""){$FwCHName06=$FwCHName;}
	else if($FwCHName07==""){$FwCHName07=$FwCHName;}
	else if($FwCHName08==""){$FwCHName08=$FwCHName;}
	else if($FwCHName09==""){$FwCHName09=$FwCHName;}
	else if($FwCHName10==""){$FwCHName10=$FwCHName;}

	$ナット名 = $FwCHName;

//テキストウィンドウ連動用変数
	$FwCH_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwCH_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, 228, 578, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 228, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 576, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 576, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if($回想判定=="Monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if(!$回想判定){

	}else{

	}

}

//-------------------//
...//ネームプレート用
//-------------------//
...//SetNwH
//※顔ウィンドウとの連携のため、ナット名などは同じ
function SetNwH($画像)
{
	if($FwCHName==""||$FwCHName=="FwCH10"){$FwCHName="FwCH01";}
	else if($FwCHName=="FwCH01"){$FwCHName="FwCH02";}
	else if($FwCHName=="FwCH02"){$FwCHName="FwCH03";}
	else if($FwCHName=="FwCH03"){$FwCHName="FwCH04";}
	else if($FwCHName=="FwCH04"){$FwCHName="FwCH05";}
	else if($FwCHName=="FwCH05"){$FwCHName="FwCH06";}
	else if($FwCHName=="FwCH06"){$FwCHName="FwCH07";}
	else if($FwCHName=="FwCH07"){$FwCHName="FwCH08";}
	else if($FwCHName=="FwCH08"){$FwCHName="FwCH09";}
	else if($FwCHName=="FwCH09"){$FwCHName="FwCH10";}

	if($FwCHName01==""){$FwCHName01=$FwCHName;}
	else if($FwCHName02==""){$FwCHName02=$FwCHName;}
	else if($FwCHName03==""){$FwCHName03=$FwCHName;}
	else if($FwCHName04==""){$FwCHName04=$FwCHName;}
	else if($FwCHName05==""){$FwCHName05=$FwCHName;}
	else if($FwCHName06==""){$FwCHName06=$FwCHName;}
	else if($FwCHName07==""){$FwCHName07=$FwCHName;}
	else if($FwCHName08==""){$FwCHName08=$FwCHName;}
	else if($FwCHName09==""){$FwCHName09=$FwCHName;}
	else if($FwCHName10==""){$FwCHName10=$FwCHName;}

	$ナット名 = $FwCHName;

//テキストウィンドウ連動用変数
	$FwCH_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwCH_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, 228, 576, $画像);

	Move($ナット名, 0, @0, 228, null, true);
	Fade($ナット名, 0, 0, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

}

...//能用
...//SetFwNoh
function SetFwNoh($画像)
{
	if($FwNohName==""||$FwNohName=="FwNoh10"){$FwNohName="FwNoh01";}
	else if($FwNohName=="FwNoh01"){$FwNohName="FwNoh02";}
	else if($FwNohName=="FwNoh02"){$FwNohName="FwNoh03";}
	else if($FwNohName=="FwNoh03"){$FwNohName="FwNoh04";}
	else if($FwNohName=="FwNoh04"){$FwNohName="FwNoh05";}
	else if($FwNohName=="FwNoh05"){$FwNohName="FwNoh06";}
	else if($FwNohName=="FwNoh06"){$FwNohName="FwNoh07";}
	else if($FwNohName=="FwNoh07"){$FwNohName="FwNoh08";}
	else if($FwNohName=="FwNoh08"){$FwNohName="FwNoh09";}
	else if($FwNohName=="FwNoh09"){$FwNohName="FwNoh10";}

	if($FwNohName01==""){$FwNohName01=$FwNohName;}
	else if($FwNohName02==""){$FwNohName02=$FwNohName;}
	else if($FwNohName03==""){$FwNohName03=$FwNohName;}
	else if($FwNohName04==""){$FwNohName04=$FwNohName;}
	else if($FwNohName05==""){$FwNohName05=$FwNohName;}
	else if($FwNohName06==""){$FwNohName06=$FwNohName;}
	else if($FwNohName07==""){$FwNohName07=$FwNohName;}
	else if($FwNohName08==""){$FwNohName08=$FwNohName;}
	else if($FwNohName09==""){$FwNohName09=$FwNohName;}
	else if($FwNohName10==""){$FwNohName10=$FwNohName;}

	$ナット名 = $FwNohName;

//テキストウィンドウ連動用変数
	$FwNoh_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwNoh_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, 228, 578, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 225, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 576, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 576, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

//		$回想判定=="";

	}else if($回想判定=="monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if($回想判定=="Monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if(!$回想判定){

	}else{

	}

}

//-------------------//
...//ネームプレート用
//-------------------//
...//SetNoh
//※顔ウィンドウとの連携のため、ナット名などは同じ
function SetNwNoh($画像)
{
	if($FwNohName==""||$FwNohName=="FwNoh10"){$FwNohName="FwNoh01";}
	else if($FwNohName=="FwNoh01"){$FwNohName="FwNoh02";}
	else if($FwNohName=="FwNoh02"){$FwNohName="FwNoh03";}
	else if($FwNohName=="FwNoh03"){$FwNohName="FwNoh04";}
	else if($FwNohName=="FwNoh04"){$FwNohName="FwNoh05";}
	else if($FwNohName=="FwNoh05"){$FwNohName="FwNoh06";}
	else if($FwNohName=="FwNoh06"){$FwNohName="FwNoh07";}
	else if($FwNohName=="FwNoh07"){$FwNohName="FwNoh08";}
	else if($FwNohName=="FwNoh08"){$FwNohName="FwNoh09";}
	else if($FwNohName=="FwNoh09"){$FwNohName="FwNoh10";}

	if($FwNohName01==""){$FwNohName01=$FwNohName;}
	else if($FwNohName02==""){$FwNohName02=$FwNohName;}
	else if($FwNohName03==""){$FwNohName03=$FwNohName;}
	else if($FwNohName04==""){$FwNohName04=$FwNohName;}
	else if($FwNohName05==""){$FwNohName05=$FwNohName;}
	else if($FwNohName06==""){$FwNohName06=$FwNohName;}
	else if($FwNohName07==""){$FwNohName07=$FwNohName;}
	else if($FwNohName08==""){$FwNohName08=$FwNohName;}
	else if($FwNohName09==""){$FwNohName09=$FwNohName;}
	else if($FwNohName10==""){$FwNohName10=$FwNohName;}

	$ナット名 = $FwNohName;

//テキストウィンドウ連動用変数
	$FwNoh_text_Window = true;
//テキストウィンドウ連動用変数(初回確認用)
	$FwNoh_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($ナット名, $FwPri, 228, 576, $画像);

	Move($ナット名, 0, @0, 212, null, true);
	Fade($ナット名, 0, 0, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

}



..//通常定義
//---------------------------------------------------//
...//OnFwC
function OnFwC($画像,$回想判定)
{
	if($FwCName==""||$FwCName=="FwC10"){$FwCName="FwC01";}
	else if($FwCName=="FwC01"){$FwCName="FwC02";}
	else if($FwCName=="FwC02"){$FwCName="FwC03";}
	else if($FwCName=="FwC03"){$FwCName="FwC04";}
	else if($FwCName=="FwC04"){$FwCName="FwC05";}
	else if($FwCName=="FwC05"){$FwCName="FwC06";}
	else if($FwCName=="FwC06"){$FwCName="FwC07";}
	else if($FwCName=="FwC07"){$FwCName="FwC08";}
	else if($FwCName=="FwC08"){$FwCName="FwC09";}
	else if($FwCName=="FwC09"){$FwCName="FwC10";}

	if($FwCName01==""){$FwCName01=$FwCName;}
	else if($FwCName02==""){$FwCName02=$FwCName;}
	else if($FwCName03==""){$FwCName03=$FwCName;}
	else if($FwCName04==""){$FwCName04=$FwCName;}
	else if($FwCName05==""){$FwCName05=$FwCName;}
	else if($FwCName06==""){$FwCName06=$FwCName;}
	else if($FwCName07==""){$FwCName07=$FwCName;}
	else if($FwCName08==""){$FwCName08=$FwCName;}
	else if($FwCName09==""){$FwCName09=$FwCName;}
	else if($FwCName10==""){$FwCName10=$FwCName;}

	$ナット名 = $FwCName;

	CreateTexture($ナット名, 20001, Center, -139, $画像);
	Fade($ナット名, 0, 0, null, true);


	SetAlias($ナット名,$ナット名);
	Request($ナット名, Hideable);

	Move($ナット名, 0, @0, 4, null, true);
	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//ウィンドウ変更フラグ
		$FaceWindow_Change = true;

	}else if($回想判定=="monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if($回想判定=="Monoc"){

		SetTone($ナット名, Monochrome);

		$回想判定=="";

	}else if(!$回想判定){

	}else{

	}

}

...//FwC
function FwC($画像,$回想判定)
{

	if($FwCName==""||$FwCName=="FwC10"){$FwCName="FwC01";}
	else if($FwCName=="FwC01"){$FwCName="FwC02";}
	else if($FwCName=="FwC02"){$FwCName="FwC03";}
	else if($FwCName=="FwC03"){$FwCName="FwC04";}
	else if($FwCName=="FwC04"){$FwCName="FwC05";}
	else if($FwCName=="FwC05"){$FwCName="FwC06";}
	else if($FwCName=="FwC06"){$FwCName="FwC07";}
	else if($FwCName=="FwC07"){$FwCName="FwC08";}
	else if($FwCName=="FwC08"){$FwCName="FwC09";}
	else if($FwCName=="FwC09"){$FwCName="FwC10";}

	if($FwCName01==""){$FwCName01=$FwCName;}
	else if($FwCName02==""){$FwCName02=$FwCName;}
	else if($FwCName03==""){$FwCName03=$FwCName;}
	else if($FwCName04==""){$FwCName04=$FwCName;}
	else if($FwCName05==""){$FwCName05=$FwCName;}
	else if($FwCName06==""){$FwCName06=$FwCName;}
	else if($FwCName07==""){$FwCName07=$FwCName;}
	else if($FwCName08==""){$FwCName08=$FwCName;}
	else if($FwCName09==""){$FwCName09=$FwCName;}
	else if($FwCName10==""){$FwCName10=$FwCName;}

	$ナット名 = $FwCName;

	CreateTexture($ナット名, 20001, Center, -139, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 4, null, true);

	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$回想判定=="";
		}

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$回想判定=="";

	}else if($回想判定=="monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if($回想判定=="Monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if(!$回想判定){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwC(0,true);

}

...//NwC
function NwC($画像)
{
	if($FwCName==""||$FwCName=="FwC10"){$FwCName="FwC01";}
	else if($FwCName=="FwC01"){$FwCName="FwC02";}
	else if($FwCName=="FwC02"){$FwCName="FwC03";}
	else if($FwCName=="FwC03"){$FwCName="FwC04";}
	else if($FwCName=="FwC04"){$FwCName="FwC05";}
	else if($FwCName=="FwC05"){$FwCName="FwC06";}
	else if($FwCName=="FwC06"){$FwCName="FwC07";}
	else if($FwCName=="FwC07"){$FwCName="FwC08";}
	else if($FwCName=="FwC08"){$FwCName="FwC09";}
	else if($FwCName=="FwC09"){$FwCName="FwC10";}

	if($FwCName01==""){$FwCName01=$FwCName;}
	else if($FwCName02==""){$FwCName02=$FwCName;}
	else if($FwCName03==""){$FwCName03=$FwCName;}
	else if($FwCName04==""){$FwCName04=$FwCName;}
	else if($FwCName05==""){$FwCName05=$FwCName;}
	else if($FwCName06==""){$FwCName06=$FwCName;}
	else if($FwCName07==""){$FwCName07=$FwCName;}
	else if($FwCName08==""){$FwCName08=$FwCName;}
	else if($FwCName09==""){$FwCName09=$FwCName;}
	else if($FwCName10==""){$FwCName10=$FwCName;}

	$ナット名 = $FwCName;

	CreateTexture($ナット名, 20001, 460, -139, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 4, null, true);


	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

//	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwC(0,true);

}

//---------------------------------------------------//
...//FwL
function FwL($画像)
{
	if($FwLName==""||$FwLName=="FwL10"){$FwLName="FwL01";}
	else if($FwLName=="FwL01"){$FwLName="FwL02";}
	else if($FwLName=="FwL02"){$FwLName="FwL03";}
	else if($FwLName=="FwL03"){$FwLName="FwL04";}
	else if($FwLName=="FwL04"){$FwLName="FwL05";}
	else if($FwLName=="FwL05"){$FwLName="FwL06";}
	else if($FwLName=="FwL06"){$FwLName="FwL07";}
	else if($FwLName=="FwL07"){$FwLName="FwL08";}
	else if($FwLName=="FwL08"){$FwLName="FwL09";}
	else if($FwLName=="FwL09"){$FwLName="FwL10";}

	if($FwLName01==""){$FwLName01=$FwLName;}
	else if($FwLName02==""){$FwLName02=$FwLName;}
	else if($FwLName03==""){$FwLName03=$FwLName;}
	else if($FwLName04==""){$FwLName04=$FwLName;}
	else if($FwLName05==""){$FwLName05=$FwLName;}
	else if($FwLName06==""){$FwLName06=$FwLName;}
	else if($FwLName07==""){$FwLName07=$FwLName;}
	else if($FwLName08==""){$FwLName08=$FwLName;}
	else if($FwLName09==""){$FwLName09=$FwLName;}
	else if($FwLName10==""){$FwLName10=$FwLName;}


	$ナット名 = $FwLName;

	CreateTexture($ナット名, 20001, Center, -139, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @-256, 4, null, true);
	SetAlias($ナット名,$Fwナット名C);
	Request($ナット名, Hideable);


	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 195, 4, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$回想判定=="";
		}

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 195, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$回想判定=="";

	}else if($回想判定=="monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if($回想判定=="Monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if(!$回想判定){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwL(0,true);
}

//---------------------------------------------------//
...//NwL
function NwL($画像)
{
	if($FwLName==""||$FwLName=="FwL10"){$FwLName="FwL01";}
	else if($FwLName=="FwL01"){$FwLName="FwL02";}
	else if($FwLName=="FwL02"){$FwLName="FwL03";}
	else if($FwLName=="FwL03"){$FwLName="FwL04";}
	else if($FwLName=="FwL04"){$FwLName="FwL05";}
	else if($FwLName=="FwL05"){$FwLName="FwL06";}
	else if($FwLName=="FwL06"){$FwLName="FwL07";}
	else if($FwLName=="FwL07"){$FwLName="FwL08";}
	else if($FwLName=="FwL08"){$FwLName="FwL09";}
	else if($FwLName=="FwL09"){$FwLName="FwL10";}

	if($FwLName01==""){$FwLName01=$FwLName;}
	else if($FwLName02==""){$FwLName02=$FwLName;}
	else if($FwLName03==""){$FwLName03=$FwLName;}
	else if($FwLName04==""){$FwLName04=$FwLName;}
	else if($FwLName05==""){$FwLName05=$FwLName;}
	else if($FwLName06==""){$FwLName06=$FwLName;}
	else if($FwLName07==""){$FwLName07=$FwLName;}
	else if($FwLName08==""){$FwLName08=$FwLName;}
	else if($FwLName09==""){$FwLName09=$FwLName;}
	else if($FwLName10==""){$FwLName10=$FwLName;}

	$ナット名 = $FwLName;

	CreateTexture($ナット名, 20001, 460, -139, $画像);
	SetAlias($ナット名,$Fwナット名C);

	Request($ナット名, Hideable);

	Fade($ナット名, 0, 0, null, true);
	Move($ナット名, 0, @-256, 4, null, true);

	FadeFwL(0,true);

}

//---------------------------------------------------//
...//FwR
function FwR($画像)
{
	if($FwRName==""||$FwRName=="FwR10"){$FwRName="FwR01";}
	else if($FwRName=="FwR01"){$FwRName="FwR02";}
	else if($FwRName=="FwR02"){$FwRName="FwR03";}
	else if($FwRName=="FwR03"){$FwRName="FwR04";}
	else if($FwRName=="FwR04"){$FwRName="FwR05";}
	else if($FwRName=="FwR05"){$FwRName="FwR06";}
	else if($FwRName=="FwR06"){$FwRName="FwR07";}
	else if($FwRName=="FwR07"){$FwRName="FwR08";}
	else if($FwRName=="FwR08"){$FwRName="FwR09";}
	else if($FwRName=="FwR09"){$FwRName="FwR10";}

	if($FwRName01==""){$FwRName01=$FwRName;}
	else if($FwRName02==""){$FwRName02=$FwRName;}
	else if($FwRName03==""){$FwRName03=$FwRName;}
	else if($FwRName04==""){$FwRName04=$FwRName;}
	else if($FwRName05==""){$FwRName05=$FwRName;}
	else if($FwRName06==""){$FwRName06=$FwRName;}
	else if($FwRName07==""){$FwRName07=$FwRName;}
	else if($FwRName08==""){$FwRName08=$FwRName;}
	else if($FwRName09==""){$FwRName09=$FwRName;}
	else if($FwRName10==""){$FwRName10=$FwRName;}

	$ナット名 = $FwRName;

	CreateTexture($ナット名, 20001, Center, -139, $画像);
	Fade($ナット名, 0, 0, null, true);

	SetAlias($ナット名,$Fwナット名C);

	Request($ナット名, Hideable);
	Move($ナット名, 0, @+256, 4, null, true);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 707, 4, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$回想判定=="";
		}

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 707, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$回想判定=="";

	}else if($回想判定=="monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if($回想判定=="Monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if(!$回想判定){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwR(0,true);

}

//---------------------------------------------------//
...//NwR
function NwR($画像)
{
	if($FwRName==""||$FwRName=="FwR10"){$FwRName="FwR01";}
	else if($FwRName=="FwR01"){$FwRName="FwR02";}
	else if($FwRName=="FwR02"){$FwRName="FwR03";}
	else if($FwRName=="FwR03"){$FwRName="FwR04";}
	else if($FwRName=="FwR04"){$FwRName="FwR05";}
	else if($FwRName=="FwR05"){$FwRName="FwR06";}
	else if($FwRName=="FwR06"){$FwRName="FwR07";}
	else if($FwRName=="FwR07"){$FwRName="FwR08";}
	else if($FwRName=="FwR08"){$FwRName="FwR09";}
	else if($FwRName=="FwR09"){$FwRName="FwR10";}

	if($FwRName01==""){$FwRName01=$FwRName;}
	else if($FwRName02==""){$FwRName02=$FwRName;}
	else if($FwRName03==""){$FwRName03=$FwRName;}
	else if($FwRName04==""){$FwRName04=$FwRName;}
	else if($FwRName05==""){$FwRName05=$FwRName;}
	else if($FwRName06==""){$FwRName06=$FwRName;}
	else if($FwRName07==""){$FwRName07=$FwRName;}
	else if($FwRName08==""){$FwRName08=$FwRName;}
	else if($FwRName09==""){$FwRName09=$FwRName;}
	else if($FwRName10==""){$FwRName10=$FwRName;}

	$ナット名 = $FwRName;

	CreateTexture($ナット名, 20001, 460, -139, $画像);
	SetAlias($ナット名,$Fwナット名C);

	Fade($ナット名, 0, 0, null, true);

	Request($ナット名, Hideable);
	Move($ナット名, 0, @+256, 4, null, true);

	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwR(0,true);

}

//---------------------------------------------------//
...//FwB
function FwB($画像)
{
	if($FwBName==""||$FwBName=="FwB10"){$FwBName="FwB01";}
	else if($FwBName=="FwB01"){$FwBName="FwB02";}
	else if($FwBName=="FwB02"){$FwBName="FwB03";}
	else if($FwBName=="FwB03"){$FwBName="FwB04";}
	else if($FwBName=="FwB04"){$FwBName="FwB05";}
	else if($FwBName=="FwB05"){$FwBName="FwB06";}
	else if($FwBName=="FwB06"){$FwBName="FwB07";}
	else if($FwBName=="FwB07"){$FwBName="FwB08";}
	else if($FwBName=="FwB08"){$FwBName="FwB09";}
	else if($FwBName=="FwB09"){$FwBName="FwB10";}

	if($FwBName01==""){$FwBName01=$FwBName;}
	else if($FwBName02==""){$FwBName02=$FwBName;}
	else if($FwBName03==""){$FwBName03=$FwBName;}
	else if($FwBName04==""){$FwBName04=$FwBName;}
	else if($FwBName05==""){$FwBName05=$FwBName;}
	else if($FwBName06==""){$FwBName06=$FwBName;}
	else if($FwBName07==""){$FwBName07=$FwBName;}
	else if($FwBName08==""){$FwBName08=$FwBName;}
	else if($FwBName09==""){$FwBName09=$FwBName;}
	else if($FwBName10==""){$FwBName10=$FwBName;}

	$ナット名 = $FwBName;

	CreateTexture($ナット名, 20001, 228, 577, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 445, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	FadeFwB(0,true);

}

//---------------------------------------------------//
...//NwB
function NwB($画像)
{
	if($FwBName==""||$FwBName=="FwB10"){$FwBName="FwB01";}
	else if($FwBName=="FwB01"){$FwBName="FwB02";}
	else if($FwBName=="FwB02"){$FwBName="FwB03";}
	else if($FwBName=="FwB03"){$FwBName="FwB04";}
	else if($FwBName=="FwB04"){$FwBName="FwB05";}
	else if($FwBName=="FwB05"){$FwBName="FwB06";}
	else if($FwBName=="FwB06"){$FwBName="FwB07";}
	else if($FwBName=="FwB07"){$FwBName="FwB08";}
	else if($FwBName=="FwB08"){$FwBName="FwB09";}
	else if($FwBName=="FwB09"){$FwBName="FwB10";}

	if($FwBName01==""){$FwBName01=$FwBName;}
	else if($FwBName02==""){$FwBName02=$FwBName;}
	else if($FwBName03==""){$FwBName03=$FwBName;}
	else if($FwBName04==""){$FwBName04=$FwBName;}
	else if($FwBName05==""){$FwBName05=$FwBName;}
	else if($FwBName06==""){$FwBName06=$FwBName;}
	else if($FwBName07==""){$FwBName07=$FwBName;}
	else if($FwBName08==""){$FwBName08=$FwBName;}
	else if($FwBName09==""){$FwBName09=$FwBName;}
	else if($FwBName10==""){$FwBName10=$FwBName;}

	$ナット名 = $FwBName;

	CreateTexture($ナット名, 20001, 228, 577, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 445, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwB(0,true);

}


//---------------------------------------------------//
...//FwH
function FwH($画像)
{
	if($FwHName==""||$FwHName=="FwH10"){$FwHName="FwH01";}
	else if($FwHName=="FwH01"){$FwHName="FwH02";}
	else if($FwHName=="FwH02"){$FwHName="FwH03";}
	else if($FwHName=="FwH03"){$FwHName="FwH04";}
	else if($FwHName=="FwH04"){$FwHName="FwH05";}
	else if($FwHName=="FwH05"){$FwHName="FwH06";}
	else if($FwHName=="FwH06"){$FwHName="FwH07";}
	else if($FwHName=="FwH07"){$FwHName="FwH08";}
	else if($FwHName=="FwH08"){$FwHName="FwH09";}
	else if($FwHName=="FwH09"){$FwHName="FwH10";}

	if($FwHName01==""){$FwHName01=$FwHName;}
	else if($FwHName02==""){$FwHName02=$FwHName;}
	else if($FwHName03==""){$FwHName03=$FwHName;}
	else if($FwHName04==""){$FwHName04=$FwHName;}
	else if($FwHName05==""){$FwHName05=$FwHName;}
	else if($FwHName06==""){$FwHName06=$FwHName;}
	else if($FwHName07==""){$FwHName07=$FwHName;}
	else if($FwHName08==""){$FwHName08=$FwHName;}
	else if($FwHName09==""){$FwHName09=$FwHName;}
	else if($FwHName10==""){$FwHName10=$FwHName;}

	$ナット名 = $FwHName;

	CreateTexture($ナット名, 20001, 228, 576, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 450, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$回想判定=="";
		}

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$回想判定=="";

	}else if($回想判定=="monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if($回想判定=="Monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if(!$回想判定){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwH(0,true);
}

//---------------------------------------------------//
...//NwH
function NwH($画像)
{
	if($FwHName==""||$FwHName=="FwH10"){$FwHName="FwH01";}
	else if($FwHName=="FwH01"){$FwHName="FwH02";}
	else if($FwHName=="FwH02"){$FwHName="FwH03";}
	else if($FwHName=="FwH03"){$FwHName="FwH04";}
	else if($FwHName=="FwH04"){$FwHName="FwH05";}
	else if($FwHName=="FwH05"){$FwHName="FwH06";}
	else if($FwHName=="FwH06"){$FwHName="FwH07";}
	else if($FwHName=="FwH07"){$FwHName="FwH08";}
	else if($FwHName=="FwH08"){$FwHName="FwH09";}
	else if($FwHName=="FwH09"){$FwHName="FwH10";}

	if($FwHName01==""){$FwHName01=$FwHName;}
	else if($FwHName02==""){$FwHName02=$FwHName;}
	else if($FwHName03==""){$FwHName03=$FwHName;}
	else if($FwHName04==""){$FwHName04=$FwHName;}
	else if($FwHName05==""){$FwHName05=$FwHName;}
	else if($FwHName06==""){$FwHName06=$FwHName;}
	else if($FwHName07==""){$FwHName07=$FwHName;}
	else if($FwHName08==""){$FwHName08=$FwHName;}
	else if($FwHName09==""){$FwHName09=$FwHName;}
	else if($FwHName10==""){$FwHName10=$FwHName;}

	$ナット名 = $FwHName;

	CreateTexture($ナット名, 20001, 228, 576, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 435, null, true);

	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwH(0,true);

}

//---------------------------------------------------//
...//FwCH
function FwCH($画像)
{
	if($FwCHName==""||$FwCHName=="FwCH10"){$FwCHName="FwCH01";}
	else if($FwCHName=="FwCH01"){$FwCHName="FwCH02";}
	else if($FwCHName=="FwCH02"){$FwCHName="FwCH03";}
	else if($FwCHName=="FwCH03"){$FwCHName="FwCH04";}
	else if($FwCHName=="FwCH04"){$FwCHName="FwCH05";}
	else if($FwCHName=="FwCH05"){$FwCHName="FwCH06";}
	else if($FwCHName=="FwCH06"){$FwCHName="FwCH07";}
	else if($FwCHName=="FwCH07"){$FwCHName="FwCH08";}
	else if($FwCHName=="FwCH08"){$FwCHName="FwCH09";}
	else if($FwCHName=="FwCH09"){$FwCHName="FwCH10";}

	if($FwCHName01==""){$FwCHName01=$FwCHName;}
	else if($FwCHName02==""){$FwCHName02=$FwCHName;}
	else if($FwCHName03==""){$FwCHName03=$FwCHName;}
	else if($FwCHName04==""){$FwCHName04=$FwCHName;}
	else if($FwCHName05==""){$FwCHName05=$FwCHName;}
	else if($FwCHName06==""){$FwCHName06=$FwCHName;}
	else if($FwCHName07==""){$FwCHName07=$FwCHName;}
	else if($FwCHName08==""){$FwCHName08=$FwCHName;}
	else if($FwCHName09==""){$FwCHName09=$FwCHName;}
	else if($FwCHName10==""){$FwCHName10=$FwCHName;}

	$ナット名 = $FwCHName;

	CreateTexture($ナット名, 20001, 228, 576, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 228, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$回想判定=="";
		}

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$回想判定=="";

	}else if($回想判定=="monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if($回想判定=="Monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if(!$回想判定){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwCH(0,true);
}

//---------------------------------------------------//
...//NwCH
function NwCH($画像)
{
	if($FwCHName==""||$FwCHName=="FwCH10"){$FwCHName="FwCH01";}
	else if($FwCHName=="FwCH01"){$FwCHName="FwCH02";}
	else if($FwCHName=="FwCH02"){$FwCHName="FwCH03";}
	else if($FwCHName=="FwCH03"){$FwCHName="FwCH04";}
	else if($FwCHName=="FwCH04"){$FwCHName="FwCH05";}
	else if($FwCHName=="FwCH05"){$FwCHName="FwCH06";}
	else if($FwCHName=="FwCH06"){$FwCHName="FwCH07";}
	else if($FwCHName=="FwCH07"){$FwCHName="FwCH08";}
	else if($FwCHName=="FwCH08"){$FwCHName="FwCH09";}
	else if($FwCHName=="FwCH09"){$FwCHName="FwCH10";}

	if($FwCHName01==""){$FwCHName01=$FwCHName;}
	else if($FwCHName02==""){$FwCHName02=$FwCHName;}
	else if($FwCHName03==""){$FwCHName03=$FwCHName;}
	else if($FwCHName04==""){$FwCHName04=$FwCHName;}
	else if($FwCHName05==""){$FwCHName05=$FwCHName;}
	else if($FwCHName06==""){$FwCHName06=$FwCHName;}
	else if($FwCHName07==""){$FwCHName07=$FwCHName;}
	else if($FwCHName08==""){$FwCHName08=$FwCHName;}
	else if($FwCHName09==""){$FwCHName09=$FwCHName;}
	else if($FwCHName10==""){$FwCHName10=$FwCHName;}

	$ナット名 = $FwCHName;

	CreateTexture($ナット名, 20001, 228, 576, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 228, null, true);

	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwCH(0,true);

}

//---------------------------------------------------//
...//FwNoh
function FwNoh($画像)
{
	if($FwNohName==""||$FwNohName=="FwNoh10"){$FwNohName="FwNoh01";}
	else if($FwNohName=="FwNoh01"){$FwNohName="FwNoh02";}
	else if($FwNohName=="FwNoh02"){$FwNohName="FwNoh03";}
	else if($FwNohName=="FwNoh03"){$FwNohName="FwNoh04";}
	else if($FwNohName=="FwNoh04"){$FwNohName="FwNoh05";}
	else if($FwNohName=="FwNoh05"){$FwNohName="FwNoh06";}
	else if($FwNohName=="FwNoh06"){$FwNohName="FwNoh07";}
	else if($FwNohName=="FwNoh07"){$FwNohName="FwNoh08";}
	else if($FwNohName=="FwNoh08"){$FwNohName="FwNoh09";}
	else if($FwNohName=="FwNoh09"){$FwNohName="FwNoh10";}

	if($FwNohName01==""){$FwNohName01=$FwNohName;}
	else if($FwNohName02==""){$FwNohName02=$FwNohName;}
	else if($FwNohName03==""){$FwNohName03=$FwNohName;}
	else if($FwNohName04==""){$FwNohName04=$FwNohName;}
	else if($FwNohName05==""){$FwNohName05=$FwNohName;}
	else if($FwNohName06==""){$FwNohName06=$FwNohName;}
	else if($FwNohName07==""){$FwNohName07=$FwNohName;}
	else if($FwNohName08==""){$FwNohName08=$FwNohName;}
	else if($FwNohName09==""){$FwNohName09=$FwNohName;}
	else if($FwNohName10==""){$FwNohName10=$FwNohName;}

	$ナット名 = $FwNohName;

	CreateTexture($ナット名, 20001, 228, 576, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 226, null, true);
	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	if($回想判定=="normal"){

	}else if($回想判定=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$回想判定=="";
		}

	}else if($回想判定=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$回想判定=="";

	}else if($回想判定=="monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if($回想判定=="Monoc"){
		SetTone($ナット名, Monochrome);
		$回想判定=="";
	}else if(!$回想判定){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwNoh(0,true);
}

//---------------------------------------------------//
...//NwNoh
function NwNoh($画像)
{
	if($FwNohName==""||$FwNohName=="FwNoh10"){$FwNohName="FwNoh01";}
	else if($FwNohName=="FwNoh01"){$FwNohName="FwNoh02";}
	else if($FwNohName=="FwNoh02"){$FwNohName="FwNoh03";}
	else if($FwNohName=="FwNoh03"){$FwNohName="FwNoh04";}
	else if($FwNohName=="FwNoh04"){$FwNohName="FwNoh05";}
	else if($FwNohName=="FwNoh05"){$FwNohName="FwNoh06";}
	else if($FwNohName=="FwNoh06"){$FwNohName="FwNoh07";}
	else if($FwNohName=="FwNoh07"){$FwNohName="FwNoh08";}
	else if($FwNohName=="FwNoh08"){$FwNohName="FwNoh09";}
	else if($FwNohName=="FwNoh09"){$FwNohName="FwNoh10";}

	if($FwNohName01==""){$FwNohName01=$FwNohName;}
	else if($FwNohName02==""){$FwNohName02=$FwNohName;}
	else if($FwNohName03==""){$FwNohName03=$FwNohName;}
	else if($FwNohName04==""){$FwNohName04=$FwNohName;}
	else if($FwNohName05==""){$FwNohName05=$FwNohName;}
	else if($FwNohName06==""){$FwNohName06=$FwNohName;}
	else if($FwNohName07==""){$FwNohName07=$FwNohName;}
	else if($FwNohName08==""){$FwNohName08=$FwNohName;}
	else if($FwNohName09==""){$FwNohName09=$FwNohName;}
	else if($FwNohName10==""){$FwNohName10=$FwNohName;}

	$ナット名 = $FwNohName;

	CreateTexture($ナット名, 20001, 228, 576, $画像);
	Fade($ナット名, 0, 0, null, true);

	Move($ナット名, 0, @0, 212, null, true);

	Request($ナット名, Hideable);
	SetAlias($ナット名,$ナット名);

	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwNoh(0,true);

}



//---------------------------------------------------//
..//表示定義
...//FadeFwC
function FadeFwC($描画時間,$待ち)
{
	if($FwCName01!=""){$ナット名=$FwCName01;$FwCName01="";}
	else if($FwCName02!=""){$ナット名=$FwCName02;$FwCName02="";}
	else if($FwCName03!=""){$ナット名=$FwCName03;$FwCName03="";}
	else if($FwCName04!=""){$ナット名=$FwCName04;$FwCName04="";}
	else if($FwCName05!=""){$ナット名=$FwCName05;$FwCName05="";}
	else if($FwCName06!=""){$ナット名=$FwCName06;$FwCName06="";}
	else if($FwCName07!=""){$ナット名=$FwCName07;$FwCName07="";}
	else if($FwCName08!=""){$ナット名=$FwCName08;$FwCName08="";}
	else if($FwCName09!=""){$ナット名=$FwCName09;$FwCName09="";}
	else if($FwCName10!=""){$ナット名=$FwCName10;$FwCName10="";}

	$FwP = 1;
	$Fw位置="C";

//描画マクロ
	PreFadeFw();

	$FaceFwC2=$FaceFwC;
	$FaceFwC=$nut;
	$FwCP = 1;

	//指定用
	$nutFwC=$setnut;
	$nutFwC2=$astnut;
}

//---------------------------------------------------//
...//FadeFwL
function FadeFwL($描画時間,$待ち)
{
	if($FwLName01!=""){$ナット名=$FwLName01;$FwLName01="";}
	else if($FwLName02!=""){$ナット名=$FwLName02;$FwLName02="";}
	else if($FwLName03!=""){$ナット名=$FwLName03;$FwLName03="";}
	else if($FwLName04!=""){$ナット名=$FwLName04;$FwLName04="";}
	else if($FwLName05!=""){$ナット名=$FwLName05;$FwLName05="";}
	else if($FwLName06!=""){$ナット名=$FwLName06;$FwLName06="";}
	else if($FwLName07!=""){$ナット名=$FwLName07;$FwLName07="";}
	else if($FwLName08!=""){$ナット名=$FwLName08;$FwLName08="";}
	else if($FwLName09!=""){$ナット名=$FwLName09;$FwLName09="";}
	else if($FwLName10!=""){$ナット名=$FwLName10;$FwLName10="";}

	$FwP = 1;
	$Fw位置="L";


//描画マクロ
	PreFadeFw();

	$FaceFwL2=$FaceFwL;
	$FaceFwL=$nut;
	$FwLP = 1;

	//指定用
	$nutFwL=$setnut;
	$nutFwL2=$astnut;
}

//---------------------------------------------------//
...//FadeFwR
function FadeFwR($描画時間,$待ち)
{
	if($FwRName01!=""){$ナット名=$FwRName01;$FwRName01="";}
	else if($FwRName02!=""){$ナット名=$FwRName02;$FwRName02="";}
	else if($FwRName03!=""){$ナット名=$FwRName03;$FwRName03="";}
	else if($FwRName04!=""){$ナット名=$FwRName04;$FwRName04="";}
	else if($FwRName05!=""){$ナット名=$FwRName05;$FwRName05="";}
	else if($FwRName06!=""){$ナット名=$FwRName06;$FwRName06="";}
	else if($FwRName07!=""){$ナット名=$FwRName07;$FwRName07="";}
	else if($FwRName08!=""){$ナット名=$FwRName08;$FwRName08="";}
	else if($FwRName09!=""){$ナット名=$FwRName09;$FwRName09="";}
	else if($FwRName10!=""){$ナット名=$FwRName10;$FwRName10="";}

	$FwP = 1;
	$Fw位置="R";

//描画マクロ
	PreFadeFw();

	$FaceFwR2=$FaceFwR;
	$FaceFwR=$nut;
	$FwRP = 1;

	//指定用
	$nutFwR=$setnut;
	$nutFwR2=$astnut;
}


//---------------------------------------------------//
...//FadeFwB
function FadeFwB($描画時間,$待ち)
{
	if($FwBName01!=""){$ナット名=$FwBName01;$FwBName01="";}
	else if($FwBName02!=""){$ナット名=$FwBName02;$FwBName02="";}
	else if($FwBName03!=""){$ナット名=$FwBName03;$FwBName03="";}
	else if($FwBName04!=""){$ナット名=$FwBName04;$FwBName04="";}
	else if($FwBName05!=""){$ナット名=$FwBName05;$FwBName05="";}
	else if($FwBName06!=""){$ナット名=$FwBName06;$FwBName06="";}
	else if($FwBName07!=""){$ナット名=$FwBName07;$FwBName07="";}
	else if($FwBName08!=""){$ナット名=$FwBName08;$FwBName08="";}
	else if($FwBName09!=""){$ナット名=$FwBName09;$FwBName09="";}
	else if($FwBName10!=""){$ナット名=$FwBName10;$FwBName10="";}

	$FwP = 1;
	$Fw位置="B";

//描画マクロ
	PreFadeFw();

	$FaceFwB2=$FaceFwB;
	$FaceFwB=$nut;
	$FwBP = 1;

	//指定用
	$nutFwB=$setnut;
	$nutFwB2=$astnut;
}

//---------------------------------------------------//
..//表示定義
...//FadeFwH
function FadeFwH($描画時間,$待ち)
{
	if($FwHName01!=""){$ナット名=$FwHName01;$FwHName01="";}
	else if($FwHName02!=""){$ナット名=$FwHName02;$FwHName02="";}
	else if($FwHName03!=""){$ナット名=$FwHName03;$FwHName03="";}
	else if($FwHName04!=""){$ナット名=$FwHName04;$FwHName04="";}
	else if($FwHName05!=""){$ナット名=$FwHName05;$FwHName05="";}
	else if($FwHName06!=""){$ナット名=$FwHName06;$FwHName06="";}
	else if($FwHName07!=""){$ナット名=$FwHName07;$FwHName07="";}
	else if($FwHName08!=""){$ナット名=$FwHName08;$FwHName08="";}
	else if($FwHName09!=""){$ナット名=$FwHName09;$FwHName09="";}
	else if($FwHName10!=""){$ナット名=$FwHName10;$FwHName10="";}

	$FwP = 1;
	$Fw位置="H";

//描画マクロ
	PreFadeFw();

	$FaceFwH2=$FaceFwH;
	$FaceFwH=$nut;
	$FwHP = 1;

	//指定用
	$nutFwH=$setnut;
	$nutFwH2=$astnut;
}

//---------------------------------------------------//
..//表示定義CH
...//FadeFwCH
function FadeFwCH($描画時間,$待ち)
{
	if($FwCHName01!=""){$ナット名=$FwCHName01;$FwCHName01="";}
	else if($FwCHName02!=""){$ナット名=$FwCHName02;$FwCHName02="";}
	else if($FwCHName03!=""){$ナット名=$FwCHName03;$FwCHName03="";}
	else if($FwCHName04!=""){$ナット名=$FwCHName04;$FwCHName04="";}
	else if($FwCHName05!=""){$ナット名=$FwCHName05;$FwCHName05="";}
	else if($FwCHName06!=""){$ナット名=$FwCHName06;$FwCHName06="";}
	else if($FwCHName07!=""){$ナット名=$FwCHName07;$FwCHName07="";}
	else if($FwCHName08!=""){$ナット名=$FwCHName08;$FwCHName08="";}
	else if($FwCHName09!=""){$ナット名=$FwCHName09;$FwCHName09="";}
	else if($FwCHName10!=""){$ナット名=$FwCHName10;$FwCHName10="";}

	$FwP = 1;
	$Fw位置="CH";

//描画マクロ
	PreFadeFw();

	$FaceFwCH2=$FaceFwCH;
	$FaceFwCH=$nut;
	$FwCHP = 1;

	//指定用
	$nutFwCH=$setnut;
	$nutFwCH2=$astnut;
}

//---------------------------------------------------//
..//表示定義Noh
...//FadeFwNoh
function FadeFwNoh($描画時間,$待ち)
{
	if($FwNohName01!=""){$ナット名=$FwNohName01;$FwNohName01="";}
	else if($FwNohName02!=""){$ナット名=$FwNohName02;$FwNohName02="";}
	else if($FwNohName03!=""){$ナット名=$FwNohName03;$FwNohName03="";}
	else if($FwNohName04!=""){$ナット名=$FwNohName04;$FwNohName04="";}
	else if($FwNohName05!=""){$ナット名=$FwNohName05;$FwNohName05="";}
	else if($FwNohName06!=""){$ナット名=$FwNohName06;$FwNohName06="";}
	else if($FwNohName07!=""){$ナット名=$FwNohName07;$FwNohName07="";}
	else if($FwNohName08!=""){$ナット名=$FwNohName08;$FwNohName08="";}
	else if($FwNohName09!=""){$ナット名=$FwNohName09;$FwNohName09="";}
	else if($FwNohName10!=""){$ナット名=$FwNohName10;$FwNohName10="";}

	$FwP = 1;
	$Fw位置="Noh";

//描画マクロ
	PreFadeFw();

	$FaceFwNoh2=$FaceFwNoh;
	$FaceFwNoh=$nut;
	$FwNohP = 1;

	//指定用
	$nutFwNoh=$setnut;
	$nutFwNoh2=$astnut;
}


//---------------------------------------------------//

..//デリート定義
//---------------------------------------------------//
...//DeleteFwC
function DeleteFwC($描画時間,$待ち)
{
	$ナット名="名無し";

	$FwP = 0;
	$位置="C";

	if($FwC_Back_Ex==true){Fade("@backFwC",$描画時間,0,null,false);$FwC_Back_Ex=false;Request("@backFwC", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$描画時間,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$描画時間,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwC_text_Window=false;
	$FwCP = 0;

}

//---------------------------------------------------//
...//DeleteFwL
function DeleteFwL($描画時間,$待ち)
{
	$ナット名="名無し";

	$FwP = 0;
	$位置="L";

	if($FwC_Back_Ex==true){Fade("@backFwC",$描画時間,0,null,false);$FwC_Back_Ex=false;Request("@backFwC", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$描画時間,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$描画時間,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwL_text_Window=false;
	$FwLP = 0;
}

//---------------------------------------------------//
...//DeleteFwR
function DeleteFwR($描画時間,$待ち)
{
	$ナット名="名無し";

	$FwP = 0;
	$位置="R";

	if($FwC_Back_Ex==true){Fade("@backFwC",$描画時間,0,null,false);$FwC_Back_Ex=false;Request("@backFwC", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$描画時間,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$描画時間,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwR_text_Window=false;
	$FwRP = 0;
}

//---------------------------------------------------//
...//DeleteFwB
function DeleteFwB($描画時間,$待ち)
{
	$ナット名="名無し";

	$FwP = 0;
	$位置="B";

	if($FwC_Back_Ex==true){Fade("@backFwC",$描画時間,0,null,false);$FwC_Back_Ex=false;Request("@backFwC", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$描画時間,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$描画時間,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}
	else if($FwB_Back_Ex==true){Fade("@backFwB",$描画時間,0,null,false);$FwB_Back_Ex=false;Request("@backFwB", Disused);}

	PreFadeFw();

	$FwB_text_Window=false;
	$FwBP = 0;

}

...//DeleteFwH
function DeleteFwH($描画時間,$待ち)
{
	$ナット名="名無し";

	$FwP = 0;
	$位置="C";

	if($FwH_Back_Ex==true){Fade("@backFwH",$描画時間,0,null,false);$FwH_Back_Ex=false;Request("@backFwH", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$描画時間,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$描画時間,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwH_text_Window=false;
	$FwHP = 0;

}

...//DeleteFwCH
function DeleteFwCH($描画時間,$待ち)
{
	$ナット名="名無し";

	$FwP = 0;
	$位置="C";

	if($FwCH_Back_Ex==true){Fade("@backFwCH",$描画時間,0,null,false);$FwCH_Back_Ex=false;Request("@backFwCH", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$描画時間,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$描画時間,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwCH_text_Window=false;
	$FwCHP = 0;

}

...//DeleteFwNoh
function DeleteFwNoh($描画時間,$待ち)
{
	$ナット名="名無し";

	$FwP = 0;
	$位置="Noh";

	if($FwNoh_Back_Ex==true){Fade("@backFwNoh",$描画時間,0,null,false);$FwNoh_Back_Ex=false;Request("@backFwNoh", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$描画時間,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$描画時間,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwNoh_text_Window=false;
	$FwNohP = 0;

}

..//表示定義マクロ
//---------------------------------------------------//
...//PreFadeFw
function PreFadeFw()
{
	$nut = $ナット名;

	if($Fw位置=="X"){
		$nus = "@" + $親ナット名StX;
		$picnut = $FaceStX;
		$Prepicnut = $FaceStX2;
		$StQ = $StXP;
	}else if($Fw位置=="C"){

//ナット名取得　$picnut
		$picnut = $FaceFwC;
//前ナット名取得　$Prepicnut
		$Prepicnut = $FaceFwC2;
//前定義が発生してるか確認用
		$FwQ = $FwCP;
	}else if($Fw位置=="L"){
		$picnut = $FaceFwL;
		$Prepicnut = $FaceFwL2;
		$FwQ = $FwLP;
	}else if($Fw位置=="R"){
		$picnut = $FaceFwR;
		$Prepicnut = $FaceFwR2;
		$FwQ = $FwRP;
	}else if($Fw位置=="B"){
		$picnut = $FaceFwB;
		$Prepicnut = $FaceFwB2;
		$FwQ = $FwBP;
	}else if($Fw位置=="H"){
		$picnut = $FaceFwH;
		$Prepicnut = $FaceFwH2;
		$FwQ = $FwHP;
	}else if($Fw位置=="CH"){
		$picnut = $FaceFwCH;
		$Prepicnut = $FaceFwCH2;
		$FwQ = $FwCHP;
	}else if($Fw位置=="Noh"){
		$picnut = $FaceFwNoh;
		$Prepicnut = $FaceFwNoh2;
		$FwQ = $FwNohP;
	}

//一度定義済み+定義フラグが発生している場合
	if($FwP==1 && $FwQ==0){
		if($Fw位置=="X"){$FaceFwX="名無し";
		}else if($Fw位置=="C"){$FaceFwC="名無し";
		}else if($Fw位置=="L"){$FaceFwL="名無し";
		}else if($Fw位置=="R"){$FaceFwR="名無し";
		}else if($Fw位置=="H"){$FaceFwH="名無し";
		}else if($Fw位置=="CH"){$FaceFwH="名無し";
		}else if($Fw位置=="Noh"){$FaceFwH="名無し";}
	}

//前ナット名正規定義
	$setnut = $nut;
//ナット名正規定義
	$astnut = $picnut;
//前ナット名正規定義
	$Preastnut = $Prepicnut;


	if($FwP!=0 && $FwQ==0 && $setnut!=$astnut && $astnut!=$Preastnut){
//		Fade($astnut, 0, 0, null, false);
	}

//	Fade($Preastnut, 0, 0, null, false);

	if($FwQ!=0 && $setnut!=$Preastnut && $astnut!=$Preastnut){
//		Delete($Preastnut);
	}

	if($FwP==1 && $FwQ==0){
		Fade($setnut, $描画時間, 1000, null, false);
	}else if($FwP==1 && $setnut!=$astnut){
//		$描画時間=$描画時間+1;
		//★ロック設置
		LockVideo(true);
		Fade($setnut, $描画時間, 1000, null, false);
		Fade($astnut, $描画時間, 0, null, false);
		//★ロック設置
		LockVideo(false);
		Request($astnut, Disused);
	}else if($FwP==0){
		Fade($astnut, $描画時間, 0, null, false);
		Request($astnut, Disused);
	}

	if($待ち==true)
	{
//		WaitAction($setnut, null);
		Wait($描画時間);
		if($StP==0){
//			WaitAction($astnut, null);
		Wait($描画時間);
		}

	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}

}

//=============================================================================//

//=============================================================================//

//=============================================================================//



//■立ち絵系マクロ
//=============================================================================//
.st
//=============================================================================//
//=============================================================================//
..//定義
//=============================================================================//
function StX($ナット名, 描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	$親ナット名StX = "遠０";
	$画像 = "cg/st/" + $画像;
	$nut = "@" + $親ナット名StX + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, 576, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}

function StC(描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($StCName==""||$StCName=="StC10"){$StCName="StC01";}
	else if($StCName=="StC01"){$StCName="StC02";}
	else if($StCName=="StC02"){$StCName="StC03";}
	else if($StCName=="StC03"){$StCName="StC04";}
	else if($StCName=="StC04"){$StCName="StC05";}
	else if($StCName=="StC05"){$StCName="StC06";}
	else if($StCName=="StC06"){$StCName="StC07";}
	else if($StCName=="StC07"){$StCName="StC08";}
	else if($StCName=="StC08"){$StCName="StC09";}
	else if($StCName=="StC09"){$StCName="StC10";}

	if($StCName01==""){$StCName01=$StCName;}
	else if($StCName02==""){$StCName02=$StCName;}
	else if($StCName03==""){$StCName03=$StCName;}
	else if($StCName04==""){$StCName04=$StCName;}
	else if($StCName05==""){$StCName05=$StCName;}
	else if($StCName06==""){$StCName06=$StCName;}
	else if($StCName07==""){$StCName07=$StCName;}
	else if($StCName08==""){$StCName08=$StCName;}
	else if($StCName09==""){$StCName09=$StCName;}
	else if($StCName10==""){$StCName10=$StCName;}

	$ナット名=$StCName;

	$親ナット名StC = "遠１";
//	$画像 = "cg/st/" + $画像;
	$nut = "@" + $親ナット名StC + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, 576, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}

function StCL(描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($StCLName==""||$StCLName=="StML10"){$StCLName="StML01";}
	else if($StCLName=="StML01"){$StCLName="StML02";}
	else if($StCLName=="StML02"){$StCLName="StML03";}
	else if($StCLName=="StML03"){$StCLName="StML04";}
	else if($StCLName=="StML04"){$StCLName="StML05";}
	else if($StCLName=="StML05"){$StCLName="StML06";}
	else if($StCLName=="StML06"){$StCLName="StML07";}
	else if($StCLName=="StML07"){$StCLName="StML08";}
	else if($StCLName=="StML08"){$StCLName="StML09";}
	else if($StCLName=="StML09"){$StCLName="StML10";}

	if($StCLName01==""){$StCLName01=$StCLName;}
	else if($StCLName02==""){$StCLName02=$StCLName;}
	else if($StCLName03==""){$StCLName03=$StCLName;}
	else if($StCLName04==""){$StCLName04=$StCLName;}
	else if($StCLName05==""){$StCLName05=$StCLName;}
	else if($StCLName06==""){$StCLName06=$StCLName;}
	else if($StCLName07==""){$StCLName07=$StCLName;}
	else if($StCLName08==""){$StCLName08=$StCLName;}
	else if($StCLName09==""){$StCLName09=$StCLName;}
	else if($StCLName10==""){$StCLName10=$StCLName;}

	$ナット名=$StCLName;

	$親ナット名StCL = "遠２";
//	$画像 = "cg/st/" + $画像;
	$nut = "@" + $親ナット名StCL + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, 576, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, @-256, @0, null, true);
	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}

function StL(描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($StLName==""||$StLName=="StL10"){$StLName="StL01";}
	else if($StLName=="StL01"){$StLName="StL02";}
	else if($StLName=="StL02"){$StLName="StL03";}
	else if($StLName=="StL03"){$StLName="StL04";}
	else if($StLName=="StL04"){$StLName="StL05";}
	else if($StLName=="StL05"){$StLName="StL06";}
	else if($StLName=="StL06"){$StLName="StL07";}
	else if($StLName=="StL07"){$StLName="StL08";}
	else if($StLName=="StL08"){$StLName="StL09";}
	else if($StLName=="StL09"){$StLName="StL10";}

	if($StLName01==""){$StLName01=$StLName;}
	else if($StLName02==""){$StLName02=$StLName;}
	else if($StLName03==""){$StLName03=$StLName;}
	else if($StLName04==""){$StLName04=$StLName;}
	else if($StLName05==""){$StLName05=$StLName;}
	else if($StLName06==""){$StLName06=$StLName;}
	else if($StLName07==""){$StLName07=$StLName;}
	else if($StLName08==""){$StLName08=$StLName;}
	else if($StLName09==""){$StLName09=$StLName;}
	else if($StLName10==""){$StLName10=$StLName;}

	$ナット名=$StLName;

	$親ナット名StL = "遠３";
//	$画像 = "cg/st/" + $画像;
	$nut = "@" + $親ナット名StL + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, 576, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, @-256, @0, null, true);
	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}

function StCR(描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($StCRName==""||$StCRName=="StMR10"){$StCRName="StMR01";}
	else if($StCRName=="StMR01"){$StCRName="StMR02";}
	else if($StCRName=="StMR02"){$StCRName="StMR03";}
	else if($StCRName=="StMR03"){$StCRName="StMR04";}
	else if($StCRName=="StMR04"){$StCRName="StMR05";}
	else if($StCRName=="StMR05"){$StCRName="StMR06";}
	else if($StCRName=="StMR06"){$StCRName="StMR07";}
	else if($StCRName=="StMR07"){$StCRName="StMR08";}
	else if($StCRName=="StMR08"){$StCRName="StMR09";}
	else if($StCRName=="StMR09"){$StCRName="StMR10";}

	if($StCRName01==""){$StCRName01=$StCRName;}
	else if($StCRName02==""){$StCRName02=$StCRName;}
	else if($StCRName03==""){$StCRName03=$StCRName;}
	else if($StCRName04==""){$StCRName04=$StCRName;}
	else if($StCRName05==""){$StCRName05=$StCRName;}
	else if($StCRName06==""){$StCRName06=$StCRName;}
	else if($StCRName07==""){$StCRName07=$StCRName;}
	else if($StCRName08==""){$StCRName08=$StCRName;}
	else if($StCRName09==""){$StCRName09=$StCRName;}
	else if($StCRName10==""){$StCRName10=$StCRName;}

	$ナット名=$StCRName;

	$親ナット名StCR = "遠４";
//	$画像 = "cg/st/" + $画像;
	$nut = "@" + $親ナット名StCR + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, 576, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, @+256, @0, null, true);
	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}

function StR(描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($StRName==""||$StRName=="StR10"){$StRName="StR01";}
	else if($StRName=="StR01"){$StRName="StR02";}
	else if($StRName=="StR02"){$StRName="StR03";}
	else if($StRName=="StR03"){$StRName="StR04";}
	else if($StRName=="StR04"){$StRName="StR05";}
	else if($StRName=="StR05"){$StRName="StR06";}
	else if($StRName=="StR06"){$StRName="StR07";}
	else if($StRName=="StR07"){$StRName="StR08";}
	else if($StRName=="StR08"){$StRName="StR09";}
	else if($StRName=="StR09"){$StRName="StR10";}

	if($StRName01==""){$StRName01=$StRName;}
	else if($StRName02==""){$StRName02=$StRName;}
	else if($StRName03==""){$StRName03=$StRName;}
	else if($StRName04==""){$StRName04=$StRName;}
	else if($StRName05==""){$StRName05=$StRName;}
	else if($StRName06==""){$StRName06=$StRName;}
	else if($StRName07==""){$StRName07=$StRName;}
	else if($StRName08==""){$StRName08=$StRName;}
	else if($StRName09==""){$StRName09=$StRName;}
	else if($StRName10==""){$StRName10=$StRName;}

	$ナット名=$StRName;

	$親ナット名StR = "遠５";
//	$画像 = "cg/st/" + $画像;
	$nut = "@" + $親ナット名StR + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, 576, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, @+256, @0, null, true);
	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}


//=============================================================================//
..st表情＆ポーズ変更
//=============================================================================//
function FadeStX($ナット名,$描画時間,$待ち)
{
	$StP = 1;
	$位置="X";

	PreFadeSt();

	$FaceStX2=$FaceStX;
	$FaceStX=$nut;
	$StXP = 1;

	//指定用
	$nutStX=$setnut;
	$nutStX2=$astnut;
}

function FadeStC($描画時間,$待ち)
{
	if($StCName01!=""){$ナット名=$StCName01;$StCName01="";}
	else if($StCName02!=""){$ナット名=$StCName02;$StCName02="";}
	else if($StCName03!=""){$ナット名=$StCName03;$StCName03="";}
	else if($StCName04!=""){$ナット名=$StCName04;$StCName04="";}
	else if($StCName05!=""){$ナット名=$StCName05;$StCName05="";}
	else if($StCName06!=""){$ナット名=$StCName06;$StCName06="";}
	else if($StCName07!=""){$ナット名=$StCName07;$StCName07="";}
	else if($StCName08!=""){$ナット名=$StCName08;$StCName08="";}
	else if($StCName09!=""){$ナット名=$StCName09;$StCName09="";}
	else if($StCName10!=""){$ナット名=$StCName10;$StCName10="";}

	$StP = 1;
	$位置="C";

	PreFadeSt();

	$FaceStC2=$FaceStC;
	$FaceStC=$nut;
	$StCP = 1;

	//指定用
	$nutStC=$setnut;
	$nutStC2=$astnut;
}

function FadeStCL($描画時間,$待ち)
{
	if($StCLName01!=""){$ナット名=$StCLName01;$StCLName01="";}
	else if($StCLName02!=""){$ナット名=$StCLName02;$StCLName02="";}
	else if($StCLName03!=""){$ナット名=$StCLName03;$StCLName03="";}
	else if($StCLName04!=""){$ナット名=$StCLName04;$StCLName04="";}
	else if($StCLName05!=""){$ナット名=$StCLName05;$StCLName05="";}
	else if($StCLName06!=""){$ナット名=$StCLName06;$StCLName06="";}
	else if($StCLName07!=""){$ナット名=$StCLName07;$StCLName07="";}
	else if($StCLName08!=""){$ナット名=$StCLName08;$StCLName08="";}
	else if($StCLName09!=""){$ナット名=$StCLName09;$StCLName09="";}
	else if($StCLName10!=""){$ナット名=$StCLName10;$StCLName10="";}

	$StP = 1;
	$位置="CL";

	PreFadeSt();

	$FaceStCL2=$FaceStCL;
	$FaceStCL=$nut;
	$StCLP = 1;

	//指定用
	$nutStCL=$setnut;
	$nutStCL2=$astnut;
}

function FadeStL($描画時間,$待ち)
{
	if($StLName01!=""){$ナット名=$StLName01;$StLName01="";}
	else if($StLName02!=""){$ナット名=$StLName02;$StLName02="";}
	else if($StLName03!=""){$ナット名=$StLName03;$StLName03="";}
	else if($StLName04!=""){$ナット名=$StLName04;$StLName04="";}
	else if($StLName05!=""){$ナット名=$StLName05;$StLName05="";}
	else if($StLName06!=""){$ナット名=$StLName06;$StLName06="";}
	else if($StLName07!=""){$ナット名=$StLName07;$StLName07="";}
	else if($StLName08!=""){$ナット名=$StLName08;$StLName08="";}
	else if($StLName09!=""){$ナット名=$StLName09;$StLName09="";}
	else if($StLName10!=""){$ナット名=$StLName10;$StLName10="";}

	$StP = 1;
	$位置="L";

	PreFadeSt();

	$FaceStL2=$FaceStL;
	$FaceStL=$nut;
	$StLP = 1;

	//指定用
	$nutStL=$setnut;
	$nutStL2=$astnut;
}

function FadeStCR($描画時間,$待ち)
{
	if($StCRName01!=""){$ナット名=$StCRName01;$StCRName01="";}
	else if($StCRName02!=""){$ナット名=$StCRName02;$StCRName02="";}
	else if($StCRName03!=""){$ナット名=$StCRName03;$StCRName03="";}
	else if($StCRName04!=""){$ナット名=$StCRName04;$StCRName04="";}
	else if($StCRName05!=""){$ナット名=$StCRName05;$StCRName05="";}
	else if($StCRName06!=""){$ナット名=$StCRName06;$StCRName06="";}
	else if($StCRName07!=""){$ナット名=$StCRName07;$StCRName07="";}
	else if($StCRName08!=""){$ナット名=$StCRName08;$StCRName08="";}
	else if($StCRName09!=""){$ナット名=$StCRName09;$StCRName09="";}
	else if($StCRName10!=""){$ナット名=$StCRName10;$StCRName10="";}

	$StP = 1;
	$位置="CR";

	PreFadeSt();

	$FaceStCR2=$FaceStCR;
	$FaceStCR=$nut;
	$StCRP = 1;

	//指定用
	$nutStCR=$setnut;
	$nutStCR2=$astnut;
}

function FadeStR($描画時間,$待ち)
{
	if($StRName01!=""){$ナット名=$StRName01;$StRName01="";}
	else if($StRName02!=""){$ナット名=$StRName02;$StRName02="";}
	else if($StRName03!=""){$ナット名=$StRName03;$StRName03="";}
	else if($StRName04!=""){$ナット名=$StRName04;$StRName04="";}
	else if($StRName05!=""){$ナット名=$StRName05;$StRName05="";}
	else if($StRName06!=""){$ナット名=$StRName06;$StRName06="";}
	else if($StRName07!=""){$ナット名=$StRName07;$StRName07="";}
	else if($StRName08!=""){$ナット名=$StRName08;$StRName08="";}
	else if($StRName09!=""){$ナット名=$StRName09;$StRName09="";}
	else if($StRName10!=""){$ナット名=$StRName10;$StRName10="";}

	$StP = 1;
	$位置="R";

	PreFadeSt();

	$FaceStR2=$FaceStR;
	$FaceStR=$nut;
	$StRP = 1;

	//指定用
	$nutStR=$setnut;
	$nutStR2=$astnut;
}

//=============================================================================//
..stデリート
//=============================================================================//
function DeleteStX($描画時間,$待ち)
{
	$ナット名="名無し";

	$StP = 0;
	$位置="X";

	PreFadeSt();

	$StXP = 0;
}

function DeleteStC($描画時間,$待ち)
{
	$ナット名="名無し";

	$StP = 0;
	$位置="C";

	PreFadeSt();

	$StCP = 0;
}

function DeleteStCL($描画時間,$待ち)
{
	$ナット名="名無し";

	$StP = 0;
	$位置="CL";

	PreFadeSt();

	$StCLP = 0;
}

function DeleteStL($描画時間,$待ち)
{
	$ナット名="名無し";

	$StP = 0;
	$位置="L";

	PreFadeSt();

	$StLP = 0;
}

function DeleteStCR($描画時間,$待ち)
{
	$ナット名="名無し";

	$StP = 0;
	$位置="CR";

	PreFadeSt();

	$StCRP = 0;
}

function DeleteStR($描画時間,$待ち)
{
	$ナット名="名無し";

	$StP = 0;
	$位置="R";

	PreFadeSt();

	$StRP = 0;
}


//――――――――――――――――――――――――――――――――――――――
..描画マクロ
//――――――――――――――――――――――――――――――――――――――
function PreFadeSt()
{
	$nut = $ナット名;

	if($位置=="X"){
		$nus = "@" + $親ナット名StX;
		$picnut = $FaceStX;
		$Prepicnut = $FaceStX2;
		$StQ = $StXP;
	}else if($位置=="C"){
		$nus = "@" + $親ナット名StC;
		$picnut = $FaceStC;
		$Prepicnut = $FaceStC2;
		$StQ = $StCP;
	}else if($位置=="CL"){
		$nus = "@" + $親ナット名StCL;
		$picnut = $FaceStCL;
		$Prepicnut = $FaceStCL2;
		$StQ = $StCLP;
	}else if($位置=="L"){
		$nus = "@" + $親ナット名StL;
		$picnut = $FaceStL;
		$Prepicnut = $FaceStL2;
		$StQ = $StLP;
	}else if($位置=="CR"){
		$nus = "@" + $親ナット名StCR;
		$picnut = $FaceStCR;
		$Prepicnut = $FaceStCR2;
		$StQ = $StCRP;
	}else if($位置=="R"){
		$nus = "@" + $親ナット名StR;
		$picnut = $FaceStR;
		$Prepicnut = $FaceStR2;
		$StQ = $StRP;
	}

	if($StP==1 && $StQ==0){
		if($位置=="X"){$FaceStX="名無し";
		}else if($位置=="C"){$FaceStC="名無し";
		}else if($位置=="CL"){$FaceStCL="名無し";
		}else if($位置=="L"){$FaceStL="名無し";
		}else if($位置=="CR"){$FaceStCR="名無し";
		}else if($位置=="R"){$FaceStR="名無し";}
	}

	$setnut = $nus + "/" + $nut;
	$astnut = $nus + "/" + $picnut;
	$Preastnut = $nus + "/" + $Prepicnut;

	if($StP!=0 && $StQ==0 && $setnut!=$astnut && $astnut!=$Preastnut){
		Fade($astnut, 0, 0, null, false);
	}

	Fade($Preastnut, 0, 0, null, false);

	if($StQ!=0 && $setnut!=$Preastnut && $astnut!=$Preastnut){
		Delete($Preastnut);
	}

	if($StP==1 && $StQ==0){
		Fade($setnut, $描画時間, 1000, null, false);
	}else if($StP==1 && $setnut!=$astnut){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $描画時間, 0, Axl3, false);
		Fade($setnut, $描画時間, 1000, Dxl2, false);
		Request($astnut, Disused);
	}else if($StP==0){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $描画時間, 0, null, false);
		Request($astnut, Disused);
	}

	if($待ち==true)
	{
		Wait($描画時間);

		if($StP==0){
			Wait($描画時間);
		}

	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}
}











//■立ち絵系マクロ
//=============================================================================//
.bu
//=============================================================================//
//=============================================================================//
..//定義
//=============================================================================//
function BuX($ナット名, 描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	$親ナット名BuX = "遠０";
	$画像 = "cg/bu/" + $画像;
	$nut = "@" + $親ナット名BuX + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, InBottom, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}

function BuC(描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($BuCName==""||$BuCName=="BuC10"){$BuCName="BuC01";}
	else if($BuCName=="BuC01"){$BuCName="BuC02";}
	else if($BuCName=="BuC02"){$BuCName="BuC03";}
	else if($BuCName=="BuC03"){$BuCName="BuC04";}
	else if($BuCName=="BuC04"){$BuCName="BuC05";}
	else if($BuCName=="BuC05"){$BuCName="BuC06";}
	else if($BuCName=="BuC06"){$BuCName="BuC07";}
	else if($BuCName=="BuC07"){$BuCName="BuC08";}
	else if($BuCName=="BuC08"){$BuCName="BuC09";}
	else if($BuCName=="BuC09"){$BuCName="BuC10";}

	if($BuCName01==""){$BuCName01=$BuCName;}
	else if($BuCName02==""){$BuCName02=$BuCName;}
	else if($BuCName03==""){$BuCName03=$BuCName;}
	else if($BuCName04==""){$BuCName04=$BuCName;}
	else if($BuCName05==""){$BuCName05=$BuCName;}
	else if($BuCName06==""){$BuCName06=$BuCName;}
	else if($BuCName07==""){$BuCName07=$BuCName;}
	else if($BuCName08==""){$BuCName08=$BuCName;}
	else if($BuCName09==""){$BuCName09=$BuCName;}
	else if($BuCName10==""){$BuCName10=$BuCName;}

	$ナット名=$BuCName;

	$親ナット名BuC = "遠１";
	$画像 = "cg/bu/" + $画像;
	$nut = "@" + $親ナット名BuC + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, InBottom, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}

function BuCL(描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($BuCLName==""||$BuCLName=="BuCL10"){$BuCLName="BuCL01";}
	else if($BuCLName=="BuCL01"){$BuCLName="BuCL02";}
	else if($BuCLName=="BuCL02"){$BuCLName="BuCL03";}
	else if($BuCLName=="BuCL03"){$BuCLName="BuCL04";}
	else if($BuCLName=="BuCL04"){$BuCLName="BuCL05";}
	else if($BuCLName=="BuCL05"){$BuCLName="BuCL06";}
	else if($BuCLName=="BuCL06"){$BuCLName="BuCL07";}
	else if($BuCLName=="BuCL07"){$BuCLName="BuCL08";}
	else if($BuCLName=="BuCL08"){$BuCLName="BuCL09";}
	else if($BuCLName=="BuCL09"){$BuCLName="BuCL10";}

	if($BuCLName01==""){$BuCLName01=$BuCLName;}
	else if($BuCLName02==""){$BuCLName02=$BuCLName;}
	else if($BuCLName03==""){$BuCLName03=$BuCLName;}
	else if($BuCLName04==""){$BuCLName04=$BuCLName;}
	else if($BuCLName05==""){$BuCLName05=$BuCLName;}
	else if($BuCLName06==""){$BuCLName06=$BuCLName;}
	else if($BuCLName07==""){$BuCLName07=$BuCLName;}
	else if($BuCLName08==""){$BuCLName08=$BuCLName;}
	else if($BuCLName09==""){$BuCLName09=$BuCLName;}
	else if($BuCLName10==""){$BuCLName10=$BuCLName;}

	$ナット名=$BuCLName;

	$親ナット名BuCL = "遠２";
	$画像 = "cg/bu/" + $画像;
	$nut = "@" + $親ナット名BuCL + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, InBottom, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, @-150, @0, null, true);
	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}

function BuL(描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($BuLName==""||$BuLName=="BuL10"){$BuLName="BuL01";}
	else if($BuLName=="BuL01"){$BuLName="BuL02";}
	else if($BuLName=="BuL02"){$BuLName="BuL03";}
	else if($BuLName=="BuL03"){$BuLName="BuL04";}
	else if($BuLName=="BuL04"){$BuLName="BuL05";}
	else if($BuLName=="BuL05"){$BuLName="BuL06";}
	else if($BuLName=="BuL06"){$BuLName="BuL07";}
	else if($BuLName=="BuL07"){$BuLName="BuL08";}
	else if($BuLName=="BuL08"){$BuLName="BuL09";}
	else if($BuLName=="BuL09"){$BuLName="BuL10";}

	if($BuLName01==""){$BuLName01=$BuLName;}
	else if($BuLName02==""){$BuLName02=$BuLName;}
	else if($BuLName03==""){$BuLName03=$BuLName;}
	else if($BuLName04==""){$BuLName04=$BuLName;}
	else if($BuLName05==""){$BuLName05=$BuLName;}
	else if($BuLName06==""){$BuLName06=$BuLName;}
	else if($BuLName07==""){$BuLName07=$BuLName;}
	else if($BuLName08==""){$BuLName08=$BuLName;}
	else if($BuLName09==""){$BuLName09=$BuLName;}
	else if($BuLName10==""){$BuLName10=$BuLName;}

	$ナット名=$BuLName;

	$親ナット名BuL = "遠３";
	$画像 = "cg/bu/" + $画像;
	$nut = "@" + $親ナット名BuL + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, InBottom, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, @-200, @0, null, true);
	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}

function BuCR(描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($BuCRName==""||$BuCRName=="BuCR10"){$BuCRName="BuCR01";}
	else if($BuCRName=="BuCR01"){$BuCRName="BuCR02";}
	else if($BuCRName=="BuCR02"){$BuCRName="BuCR03";}
	else if($BuCRName=="BuCR03"){$BuCRName="BuCR04";}
	else if($BuCRName=="BuCR04"){$BuCRName="BuCR05";}
	else if($BuCRName=="BuCR05"){$BuCRName="BuCR06";}
	else if($BuCRName=="BuCR06"){$BuCRName="BuCR07";}
	else if($BuCRName=="BuCR07"){$BuCRName="BuCR08";}
	else if($BuCRName=="BuCR08"){$BuCRName="BuCR09";}
	else if($BuCRName=="BuCR09"){$BuCRName="BuCR10";}

	if($BuCRName01==""){$BuCRName01=$BuCRName;}
	else if($BuCRName02==""){$BuCRName02=$BuCRName;}
	else if($BuCRName03==""){$BuCRName03=$BuCRName;}
	else if($BuCRName04==""){$BuCRName04=$BuCRName;}
	else if($BuCRName05==""){$BuCRName05=$BuCRName;}
	else if($BuCRName06==""){$BuCRName06=$BuCRName;}
	else if($BuCRName07==""){$BuCRName07=$BuCRName;}
	else if($BuCRName08==""){$BuCRName08=$BuCRName;}
	else if($BuCRName09==""){$BuCRName09=$BuCRName;}
	else if($BuCRName10==""){$BuCRName10=$BuCRName;}

	$ナット名=$BuCRName;

	$親ナット名BuCR = "遠４";
	$画像 = "cg/bu/" + $画像;
	$nut = "@" + $親ナット名BuCR + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, InBottom, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, @150, @0, null, true);
	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}

function BuR(描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($BuRName==""||$BuRName=="BuR10"){$BuRName="BuR01";}
	else if($BuRName=="BuR01"){$BuRName="BuR02";}
	else if($BuRName=="BuR02"){$BuRName="BuR03";}
	else if($BuRName=="BuR03"){$BuRName="BuR04";}
	else if($BuRName=="BuR04"){$BuRName="BuR05";}
	else if($BuRName=="BuR05"){$BuRName="BuR06";}
	else if($BuRName=="BuR06"){$BuRName="BuR07";}
	else if($BuRName=="BuR07"){$BuRName="BuR08";}
	else if($BuRName=="BuR08"){$BuRName="BuR09";}
	else if($BuRName=="BuR09"){$BuRName="BuR10";}

	if($BuRName01==""){$BuRName01=$BuRName;}
	else if($BuRName02==""){$BuRName02=$BuRName;}
	else if($BuRName03==""){$BuRName03=$BuRName;}
	else if($BuRName04==""){$BuRName04=$BuRName;}
	else if($BuRName05==""){$BuRName05=$BuRName;}
	else if($BuRName06==""){$BuRName06=$BuRName;}
	else if($BuRName07==""){$BuRName07=$BuRName;}
	else if($BuRName08==""){$BuRName08=$BuRName;}
	else if($BuRName09==""){$BuRName09=$BuRName;}
	else if($BuRName10==""){$BuRName10=$BuRName;}

	$ナット名=$BuRName;

	$親ナット名BuR = "遠５";
	$画像 = "cg/bu/" + $画像;
	$nut = "@" + $親ナット名BuR + "/" + $ナット名;

	CreateTexture($nut, 描画優先度, center, InBottom, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, @200, @0, null, true);
	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}


//=============================================================================//
..bu表情＆ポーズ変更
//=============================================================================//
function FadeBuX($ナット名,$描画時間,$待ち)
{
	$BuP = 1;
	$位置="X";

	PreFadeBu();

	$FaceBuX2=$FaceBuX;
	$FaceBuX=$nut;
	$BuXP = 1;

	//指定用
	$nutBuX=$setnut;
	$nutBuX2=$astnut;
}

function FadeBuC($描画時間,$待ち)
{
	if($BuCName01!=""){$ナット名=$BuCName01;$BuCName01="";}
	else if($BuCName02!=""){$ナット名=$BuCName02;$BuCName02="";}
	else if($BuCName03!=""){$ナット名=$BuCName03;$BuCName03="";}
	else if($BuCName04!=""){$ナット名=$BuCName04;$BuCName04="";}
	else if($BuCName05!=""){$ナット名=$BuCName05;$BuCName05="";}
	else if($BuCName06!=""){$ナット名=$BuCName06;$BuCName06="";}
	else if($BuCName07!=""){$ナット名=$BuCName07;$BuCName07="";}
	else if($BuCName08!=""){$ナット名=$BuCName08;$BuCName08="";}
	else if($BuCName09!=""){$ナット名=$BuCName09;$BuCName09="";}
	else if($BuCName10!=""){$ナット名=$BuCName10;$BuCName10="";}

	$BuP = 1;
	$位置="C";

	PreFadeBu();

	$FaceBuC2=$FaceBuC;
	$FaceBuC=$nut;
	$BuCP = 1;

	//指定用
	$nutBuC=$setnut;
	$nutBuC2=$astnut;
}

function FadeBuCL($描画時間,$待ち)
{
	if($BuCLName01!=""){$ナット名=$BuCLName01;$BuCLName01="";}
	else if($BuCLName02!=""){$ナット名=$BuCLName02;$BuCLName02="";}
	else if($BuCLName03!=""){$ナット名=$BuCLName03;$BuCLName03="";}
	else if($BuCLName04!=""){$ナット名=$BuCLName04;$BuCLName04="";}
	else if($BuCLName05!=""){$ナット名=$BuCLName05;$BuCLName05="";}
	else if($BuCLName06!=""){$ナット名=$BuCLName06;$BuCLName06="";}
	else if($BuCLName07!=""){$ナット名=$BuCLName07;$BuCLName07="";}
	else if($BuCLName08!=""){$ナット名=$BuCLName08;$BuCLName08="";}
	else if($BuCLName09!=""){$ナット名=$BuCLName09;$BuCLName09="";}
	else if($BuCLName10!=""){$ナット名=$BuCLName10;$BuCLName10="";}

	$BuP = 1;
	$位置="CL";

	PreFadeBu();

	$FaceBuCL2=$FaceBuCL;
	$FaceBuCL=$nut;
	$BuCLP = 1;

	//指定用
	$nutBuCL=$setnut;
	$nutBuCL2=$astnut;
}

function FadeBuL($描画時間,$待ち)
{
	if($BuLName01!=""){$ナット名=$BuLName01;$BuLName01="";}
	else if($BuLName02!=""){$ナット名=$BuLName02;$BuLName02="";}
	else if($BuLName03!=""){$ナット名=$BuLName03;$BuLName03="";}
	else if($BuLName04!=""){$ナット名=$BuLName04;$BuLName04="";}
	else if($BuLName05!=""){$ナット名=$BuLName05;$BuLName05="";}
	else if($BuLName06!=""){$ナット名=$BuLName06;$BuLName06="";}
	else if($BuLName07!=""){$ナット名=$BuLName07;$BuLName07="";}
	else if($BuLName08!=""){$ナット名=$BuLName08;$BuLName08="";}
	else if($BuLName09!=""){$ナット名=$BuLName09;$BuLName09="";}
	else if($BuLName10!=""){$ナット名=$BuLName10;$BuLName10="";}

	$BuP = 1;
	$位置="L";

	PreFadeBu();

	$FaceBuL2=$FaceBuL;
	$FaceBuL=$nut;
	$BuLP = 1;

	//指定用
	$nutBuL=$setnut;
	$nutBuL2=$astnut;
}

function FadeBuCR($描画時間,$待ち)
{
	if($BuCRName01!=""){$ナット名=$BuCRName01;$BuCRName01="";}
	else if($BuCRName02!=""){$ナット名=$BuCRName02;$BuCRName02="";}
	else if($BuCRName03!=""){$ナット名=$BuCRName03;$BuCRName03="";}
	else if($BuCRName04!=""){$ナット名=$BuCRName04;$BuCRName04="";}
	else if($BuCRName05!=""){$ナット名=$BuCRName05;$BuCRName05="";}
	else if($BuCRName06!=""){$ナット名=$BuCRName06;$BuCRName06="";}
	else if($BuCRName07!=""){$ナット名=$BuCRName07;$BuCRName07="";}
	else if($BuCRName08!=""){$ナット名=$BuCRName08;$BuCRName08="";}
	else if($BuCRName09!=""){$ナット名=$BuCRName09;$BuCRName09="";}
	else if($BuCRName10!=""){$ナット名=$BuCRName10;$BuCRName10="";}

	$BuP = 1;
	$位置="CR";

	PreFadeBu();

	$FaceBuCR2=$FaceBuCR;
	$FaceBuCR=$nut;
	$BuCRP = 1;

	//指定用
	$nutBuCR=$setnut;
	$nutBuCR2=$astnut;
}

function FadeBuR($描画時間,$待ち)
{
	if($BuRName01!=""){$ナット名=$BuRName01;$BuRName01="";}
	else if($BuRName02!=""){$ナット名=$BuRName02;$BuRName02="";}
	else if($BuRName03!=""){$ナット名=$BuRName03;$BuRName03="";}
	else if($BuRName04!=""){$ナット名=$BuRName04;$BuRName04="";}
	else if($BuRName05!=""){$ナット名=$BuRName05;$BuRName05="";}
	else if($BuRName06!=""){$ナット名=$BuRName06;$BuRName06="";}
	else if($BuRName07!=""){$ナット名=$BuRName07;$BuRName07="";}
	else if($BuRName08!=""){$ナット名=$BuRName08;$BuRName08="";}
	else if($BuRName09!=""){$ナット名=$BuRName09;$BuRName09="";}
	else if($BuRName10!=""){$ナット名=$BuRName10;$BuRName10="";}

	$BuP = 1;
	$位置="R";

	PreFadeBu();

	$FaceBuR2=$FaceBuR;
	$FaceBuR=$nut;
	$BuRP = 1;

	//指定用
	$nutBuR=$setnut;
	$nutBuR2=$astnut;
}

//=============================================================================//
..buデリート
//=============================================================================//
function DeleteBuX($描画時間,$待ち)
{
	$ナット名="名無し";

	$BuP = 0;
	$位置="X";

	PreFadeBu();

	$BuXP = 0;
}

function DeleteBuC($描画時間,$待ち)
{
	$ナット名="名無し";

	$BuP = 0;
	$位置="C";

	PreFadeBu();

	$BuCP = 0;
}

function DeleteBuCL($描画時間,$待ち)
{
	$ナット名="名無し";

	$BuP = 0;
	$位置="CL";

	PreFadeBu();

	$BuCLP = 0;
}

function DeleteBuL($描画時間,$待ち)
{
	$ナット名="名無し";

	$BuP = 0;
	$位置="L";

	PreFadeBu();

	$BuLP = 0;
}

function DeleteBuCR($描画時間,$待ち)
{
	$ナット名="名無し";

	$BuP = 0;
	$位置="CR";

	PreFadeBu();

	$BuCRP = 0;
}

function DeleteBuR($描画時間,$待ち)
{
	$ナット名="名無し";

	$BuP = 0;
	$位置="R";

	PreFadeBu();

	$BuRP = 0;
}


//――――――――――――――――――――――――――――――――――――――
..描画マクロ
//――――――――――――――――――――――――――――――――――――――
function PreFadeBu()
{
	$nut = $ナット名;

	if($位置=="X"){
		$nus = "@" + $親ナット名BuX;
		$picnut = $FaceBuX;
		$Prepicnut = $FaceBuX2;
		$BuQ = $BuXP;
	}else if($位置=="C"){
		$nus = "@" + $親ナット名BuC;
		$picnut = $FaceBuC;
		$Prepicnut = $FaceBuC2;
		$BuQ = $BuCP;
	}else if($位置=="CL"){
		$nus = "@" + $親ナット名BuCL;
		$picnut = $FaceBuCL;
		$Prepicnut = $FaceBuCL2;
		$BuQ = $BuCLP;
	}else if($位置=="L"){
		$nus = "@" + $親ナット名BuL;
		$picnut = $FaceBuL;
		$Prepicnut = $FaceBuL2;
		$BuQ = $BuLP;
	}else if($位置=="CR"){
		$nus = "@" + $親ナット名BuCR;
		$picnut = $FaceBuCR;
		$Prepicnut = $FaceBuCR2;
		$BuQ = $BuCRP;
	}else if($位置=="R"){
		$nus = "@" + $親ナット名BuR;
		$picnut = $FaceBuR;
		$Prepicnut = $FaceBuR2;
		$BuQ = $BuRP;
	}

	if($BuP==1 && $BuQ==0){
		if($位置=="X"){$FaceBuX="名無し";
		}else if($位置=="C"){$FaceBuC="名無し";
		}else if($位置=="CL"){$FaceBuCL="名無し";
		}else if($位置=="L"){$FaceBuL="名無し";
		}else if($位置=="CR"){$FaceBuCR="名無し";
		}else if($位置=="R"){$FaceBuR="名無し";}
	}

	$setnut = $nus + "/" + $nut;
	$astnut = $nus + "/" + $picnut;
	$Preastnut = $nus + "/" + $Prepicnut;

	if($BuP!=0 && $BuQ==0 && $setnut!=$astnut && $astnut!=$Preastnut){
		Fade($astnut, 0, 0, null, false);
	}

	Fade($Preastnut, 0, 0, null, false);

	if($BuQ!=0 && $setnut!=$Preastnut && $astnut!=$Preastnut){
		Delete($Preastnut);
	}

	if($BuP==1 && $BuQ==0){
		Fade($setnut, $描画時間, 1000, null, false);
	}else if($BuP==1 && $setnut!=$astnut){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $描画時間, 0, Axl3, false);
		Fade($setnut, $描画時間, 1000, Dxl2, false);
		Request($astnut, Disused);
	}else if($BuP==0){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $描画時間, 0, null, false);
		Request($astnut, Disused);
	}

	if($待ち==true)
	{
		WaitAction($setnut, null);

		if($BuP==0){
			WaitAction($astnut, null);
		}

	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}
}



































//=============================================================================//
.kw
//=============================================================================//
//――――――――――――――――――――――――――――――――――――――
..顔ウィンドウ枠設置
//――――――――――――――――――――――――――――――――――――――
...各ポジション
function SetKwX($描画優先度, Ｘ位置, Ｙ位置)
{
	$ナット名 = "顔０";
	$親ナット名KwX = $ナット名;
	$描画優先度KwX = $描画優先度;

	$顔プロセス頭X="顔Ｘ";
	$FaceKwX2="名無し";
	$FaceKwX="名無し";
	$KwXP = 0;
	$DelPro="@"+$顔プロセス頭X+"*";

	Kw();
	Move($ナット名,0, Ｘ位置, Ｙ位置, null,true);
}

function SetKwC($描画優先度, Ｘ位置, Ｙ位置)
{
	$ナット名 = "顔１";
	$親ナット名KwC = $ナット名;
	$描画優先度KwC = $描画優先度;

	$Ｘ基本 = 0;
	$Ｙ基本 = -76;

	$顔プロセス頭C="顔Ｃ";
	$FaceKwC2="名無し";
	$FaceKwC="名無し";
	$KwCP = 0;
	$DelPro="@"+$顔プロセス頭C+"*";

	Kw();
	Move($ナット名,0, @$Ｘ基本, @$Ｙ基本, null,true);
	Move($ナット名,0, Ｘ位置, Ｙ位置, null,true);
}

function SetKwCL($描画優先度, Ｘ位置, Ｙ位置)
{
	$ナット名 = "顔２";
	$親ナット名KwCL = $ナット名;
	$描画優先度KwCL = $描画優先度;

	$Ｘ基本 = -180;
	$Ｙ基本 = -76;

	$顔プロセス頭CL="顔ＣＬ";
	$FaceKwCL2="名無し";
	$FaceKwCL="名無し";
	$KwCLP = 0;
	$DelPro="@"+$顔プロセス頭CL+"*";

	Kw();
	Move($ナット名,0, @$Ｘ基本, @$Ｙ基本, null,true);
	Move($ナット名,0, Ｘ位置, Ｙ位置, null,true);
}

function SetKwL($描画優先度, Ｘ位置, Ｙ位置)
{
	$ナット名 = "顔３";
	$親ナット名KwL = $ナット名 ;
	$描画優先度KwL = $描画優先度;

	$Ｘ基本 = -260;
	$Ｙ基本 = -76;

	$顔プロセス頭L="顔Ｌ";
	$FaceKwL2="名無し";
	$FaceKwL="名無し";
	$KwLP = 0;
	$DelPro="@"+$顔プロセス頭L+"*";

	Kw();
	Move($ナット名,0, @$Ｘ基本, @$Ｙ基本, null,true);
	Move($ナット名,0, Ｘ位置, Ｙ位置, null,true);
}

function SetKwCR($描画優先度, Ｘ位置, Ｙ位置)
{
	$ナット名 = "顔４";
	$親ナット名KwCR = $ナット名;
	$描画優先度KwCR = $描画優先度;

	$Ｘ基本 = 180;
	$Ｙ基本 = -76;

	$顔プロセス頭CR="顔ＣＲ";
	$FaceKwCR2="名無し";
	$FaceKwCR="名無し";
	$KwCRP = 0;
	$DelPro="@"+$顔プロセス頭CR+"*";

	Kw();
	Move($ナット名,0, @$Ｘ基本, @$Ｙ基本, null,true);
	Move($ナット名,0, Ｘ位置, Ｙ位置, null,true);
}

function SetKwR($描画優先度, Ｘ位置, Ｙ位置)
{
	$ナット名 = "顔５";
	$親ナット名KwR = $ナット名;
	$描画優先度KwR = $描画優先度;

	$Ｘ基本 = 260;
	$Ｙ基本 = -76;

	$顔プロセス頭R="顔Ｒ";
	$FaceKwR2="名無し";
	$FaceKwR="名無し";
	$KwRP = 0;
	$DelPro="@"+$顔プロセス頭R+"*";

	Kw();
	Move($ナット名,0, @$Ｘ基本, @$Ｙ基本, null,true);
	Move($ナット名,0, Ｘ位置, Ｙ位置, null,true);
}

...マクロ
function Kw()
{
	if($stand01_who==$ナット名){$stand01_use="";}//初期化変数
	if($stand02_who==$ナット名){$stand02_use="";}//初期化変数
	if($stand03_who==$ナット名){$stand03_use="";}//初期化変数
	if($stand04_who==$ナット名){$stand04_use="";}//初期化変数
	if($stand05_who==$ナット名){$stand05_use="";}//初期化変数
	if($stand06_who==$ナット名){$stand06_use="";}//初期化変数
	if($stand07_who==$ナット名){$stand07_use="";}//初期化変数
	if($stand08_who==$ナット名){$stand08_use="";}//初期化変数
	if($stand09_who==$ナット名){$stand09_use="";}//初期化変数
	if($stand10_who==$ナット名){$stand10_use="";}//初期化変数
	if($stand11_who==$ナット名){$stand11_use="";}//初期化変数
	if($stand12_who==$ナット名){$stand12_use="";}//初期化変数
	if($stand13_who==$ナット名){$stand13_use="";}//初期化変数
	if($stand14_who==$ナット名){$stand14_use="";}//初期化変数
	if($stand15_who==$ナット名){$stand15_use="";}//初期化変数
	if($stand16_who==$ナット名){$stand16_use="";}//初期化変数
	if($stand17_who==$ナット名){$stand17_use="";}//初期化変数
	if($stand18_who==$ナット名){$stand18_use="";}//初期化変数
	if($stand19_who==$ナット名){$stand19_use="";}//初期化変数
	if($stand20_who==$ナット名){$stand20_use="";}//初期化変数
	if($stand21_who==$ナット名){$stand21_use="";}//初期化変数
	if($stand22_who==$ナット名){$stand22_use="";}//初期化変数
	if($stand23_who==$ナット名){$stand23_use="";}//初期化変数
	if($stand24_who==$ナット名){$stand24_use="";}//初期化変数
	if($stand25_who==$ナット名){$stand25_use="";}//初期化変数
	if($stand26_who==$ナット名){$stand26_use="";}//初期化変数
	if($stand27_who==$ナット名){$stand27_use="";}//初期化変数
	if($stand28_who==$ナット名){$stand28_use="";}//初期化変数
	if($stand29_who==$ナット名){$stand29_use="";}//初期化変数
	if($stand30_who==$ナット名){$stand30_use="";}//初期化変数

	Request($DelPro, Stop);
	Delete($DelPro);

	$消去ナット名 = @ + $ナット名;
	Delete($消去ナット名);

	$顔描画優先度差分 = 10;
	$枠描画優先度 = $描画優先度 + 20;
	$描画優先度基本 = $描画優先度 + 1;

	$枠本名 = "枠";
	$域本名 = "域";
	$墨本名 = "墨";

	$枠名 = "@" + $ナット名 + "/" + $枠本名;
	$域名 = "@" + $ナット名 + "/" + $域本名;
	$墨名 = "@" + $ナット名 + "/" + $墨本名;

	CreateTexture($ナット名, $描画優先度基本, center, middle, "cg/sys/adv/kw_00.png");
	Request($ナット名, Smoothing);
	SetAlias($ナット名, $ナット名);

//横214·214
//縦262·248
	CreateMask($域名, $枠描画優先度, 0, 0, "cg/sys/adv/kw_04.png", true);
	Request($ナット名, Smoothing);
	SetAlias($域名, $域名);

//	CreateTexture($枠名, $枠描画優先度, 0, 0, "cg/sys/adv/kw_01.png");
//	Request($枠名, Smoothing);
//	SetAlias($枠名, $枠名);

	CreateTexture($墨名, $枠描画優先度, 0, 0, "cg/sys/adv/kw_03.png");
	Request($墨名, Smoothing);
	SetAlias($墨名, $墨名);

	Fade($ナット名,0,0,null,true);
}


//――――――――――――――――――――――――――――――――――――――
..顔ウィンドウ素材設置
//――――――――――――――――――――――――――――――――――――――

...各ポジション
function KwX($ナット名,$Ｘ位置,$Ｙ位置,$画像)
{
	$描画優先度 = $描画優先度KwX + $顔描画優先度差分;
	$親ナット名 = $親ナット名KwX;
	$顔プロセス頭 = $顔プロセス頭X;

	PreKw();
}

function KwC($Ｘ位置,$Ｙ位置,$画像)
{
	$描画優先度 = $描画優先度KwC + $顔描画優先度差分;
	$親ナット名 = $親ナット名KwC;
	$顔プロセス頭 = $顔プロセス頭C;

	if($KwCName==""||$KwCName=="KwC10"){$KwCName="KwC01";}
	else if($KwCName=="KwC01"){$KwCName="KwC02";}
	else if($KwCName=="KwC02"){$KwCName="KwC03";}
	else if($KwCName=="KwC03"){$KwCName="KwC04";}
	else if($KwCName=="KwC04"){$KwCName="KwC05";}
	else if($KwCName=="KwC05"){$KwCName="KwC06";}
	else if($KwCName=="KwC06"){$KwCName="KwC07";}
	else if($KwCName=="KwC07"){$KwCName="KwC08";}
	else if($KwCName=="KwC08"){$KwCName="KwC09";}
	else if($KwCName=="KwC09"){$KwCName="KwC10";}

	if($KwCName01==""){$KwCName01=$KwCName;}
	else if($KwCName02==""){$KwCName02=$KwCName;}
	else if($KwCName03==""){$KwCName03=$KwCName;}
	else if($KwCName04==""){$KwCName04=$KwCName;}
	else if($KwCName05==""){$KwCName05=$KwCName;}
	else if($KwCName06==""){$KwCName06=$KwCName;}
	else if($KwCName07==""){$KwCName07=$KwCName;}
	else if($KwCName08==""){$KwCName08=$KwCName;}
	else if($KwCName09==""){$KwCName09=$KwCName;}
	else if($KwCName10==""){$KwCName10=$KwCName;}

	$ナット名=$KwCName;

	PreKw();
}

function KwCL($Ｘ位置,$Ｙ位置,$画像)
{
	$描画優先度 = $描画優先度KwCL + $顔描画優先度差分;
	$親ナット名 = $親ナット名KwCL;
	$顔プロセス頭 = $顔プロセス頭CL;

	if($KwCLName==""||$KwCLName=="KwCL10"){$KwCLName="KwCL01";}
	else if($KwCLName=="KwCL01"){$KwCLName="KwCL02";}
	else if($KwCLName=="KwCL02"){$KwCLName="KwCL03";}
	else if($KwCLName=="KwCL03"){$KwCLName="KwCL04";}
	else if($KwCLName=="KwCL04"){$KwCLName="KwCL05";}
	else if($KwCLName=="KwCL05"){$KwCLName="KwCL06";}
	else if($KwCLName=="KwCL06"){$KwCLName="KwCL07";}
	else if($KwCLName=="KwCL07"){$KwCLName="KwCL08";}
	else if($KwCLName=="KwCL08"){$KwCLName="KwCL09";}
	else if($KwCLName=="KwCL09"){$KwCLName="KwCL10";}

	if($KwCLName01==""){$KwCLName01=$KwCLName;}
	else if($KwCLName02==""){$KwCLName02=$KwCLName;}
	else if($KwCLName03==""){$KwCLName03=$KwCLName;}
	else if($KwCLName04==""){$KwCLName04=$KwCLName;}
	else if($KwCLName05==""){$KwCLName05=$KwCLName;}
	else if($KwCLName06==""){$KwCLName06=$KwCLName;}
	else if($KwCLName07==""){$KwCLName07=$KwCLName;}
	else if($KwCLName08==""){$KwCLName08=$KwCLName;}
	else if($KwCLName09==""){$KwCLName09=$KwCLName;}
	else if($KwCLName10==""){$KwCLName10=$KwCLName;}

	$ナット名=$KwCLName;

	PreKw();
}

function KwL($Ｘ位置,$Ｙ位置,$画像)
{
	$描画優先度 = $描画優先度KwL + $顔描画優先度差分;
	$親ナット名 = $親ナット名KwL;
	$顔プロセス頭 = $顔プロセス頭L;

	if($KwLName==""||$KwLName=="KwL10"){$KwLName="KwL01";}
	else if($KwLName=="KwL01"){$KwLName="KwL02";}
	else if($KwLName=="KwL02"){$KwLName="KwL03";}
	else if($KwLName=="KwL03"){$KwLName="KwL04";}
	else if($KwLName=="KwL04"){$KwLName="KwL05";}
	else if($KwLName=="KwL05"){$KwLName="KwL06";}
	else if($KwLName=="KwL06"){$KwLName="KwL07";}
	else if($KwLName=="KwL07"){$KwLName="KwL08";}
	else if($KwLName=="KwL08"){$KwLName="KwL09";}
	else if($KwLName=="KwL09"){$KwLName="KwL10";}

	if($KwLName01==""){$KwLName01=$KwLName;}
	else if($KwLName02==""){$KwLName02=$KwLName;}
	else if($KwLName03==""){$KwLName03=$KwLName;}
	else if($KwLName04==""){$KwLName04=$KwLName;}
	else if($KwLName05==""){$KwLName05=$KwLName;}
	else if($KwLName06==""){$KwLName06=$KwLName;}
	else if($KwLName07==""){$KwLName07=$KwLName;}
	else if($KwLName08==""){$KwLName08=$KwLName;}
	else if($KwLName09==""){$KwLName09=$KwLName;}
	else if($KwLName10==""){$KwLName10=$KwLName;}

	$ナット名=$KwLName;

	PreKw();
}

function KwCR($Ｘ位置,$Ｙ位置,$画像)
{
	$描画優先度 = $描画優先度KwCR + $顔描画優先度差分;
	$親ナット名 = $親ナット名KwCR;
	$顔プロセス頭 = $顔プロセス頭CR;

	if($KwCRName==""||$KwCRName=="KwCR10"){$KwCRName="KwCR01";}
	else if($KwCRName=="KwCR01"){$KwCRName="KwCR02";}
	else if($KwCRName=="KwCR02"){$KwCRName="KwCR03";}
	else if($KwCRName=="KwCR03"){$KwCRName="KwCR04";}
	else if($KwCRName=="KwCR04"){$KwCRName="KwCR05";}
	else if($KwCRName=="KwCR05"){$KwCRName="KwCR06";}
	else if($KwCRName=="KwCR06"){$KwCRName="KwCR07";}
	else if($KwCRName=="KwCR07"){$KwCRName="KwCR08";}
	else if($KwCRName=="KwCR08"){$KwCRName="KwCR09";}
	else if($KwCRName=="KwCR09"){$KwCRName="KwCR10";}

	if($KwCRName01==""){$KwCRName01=$KwCRName;}
	else if($KwCRName02==""){$KwCRName02=$KwCRName;}
	else if($KwCRName03==""){$KwCRName03=$KwCRName;}
	else if($KwCRName04==""){$KwCRName04=$KwCRName;}
	else if($KwCRName05==""){$KwCRName05=$KwCRName;}
	else if($KwCRName06==""){$KwCRName06=$KwCRName;}
	else if($KwCRName07==""){$KwCRName07=$KwCRName;}
	else if($KwCRName08==""){$KwCRName08=$KwCRName;}
	else if($KwCRName09==""){$KwCRName09=$KwCRName;}
	else if($KwCRName10==""){$KwCRName10=$KwCRName;}

	$ナット名=$KwCRName;

	PreKw();
}

function KwR($Ｘ位置,$Ｙ位置,$画像)
{
	$描画優先度 = $描画優先度KwR + $顔描画優先度差分;
	$親ナット名 = $親ナット名KwR;
	$顔プロセス頭 = $顔プロセス頭R;

	if($KwRName==""||$KwRName=="KwR10"){$KwRName="KwR01";}
	else if($KwRName=="KwR01"){$KwRName="KwR02";}
	else if($KwRName=="KwR02"){$KwRName="KwR03";}
	else if($KwRName=="KwR03"){$KwRName="KwR04";}
	else if($KwRName=="KwR04"){$KwRName="KwR05";}
	else if($KwRName=="KwR05"){$KwRName="KwR06";}
	else if($KwRName=="KwR06"){$KwRName="KwR07";}
	else if($KwRName=="KwR07"){$KwRName="KwR08";}
	else if($KwRName=="KwR08"){$KwRName="KwR09";}
	else if($KwRName=="KwR09"){$KwRName="KwR10";}

	if($KwRName01==""){$KwRName01=$KwRName;}
	else if($KwRName02==""){$KwRName02=$KwRName;}
	else if($KwRName03==""){$KwRName03=$KwRName;}
	else if($KwRName04==""){$KwRName04=$KwRName;}
	else if($KwRName05==""){$KwRName05=$KwRName;}
	else if($KwRName06==""){$KwRName06=$KwRName;}
	else if($KwRName07==""){$KwRName07=$KwRName;}
	else if($KwRName08==""){$KwRName08=$KwRName;}
	else if($KwRName09==""){$KwRName09=$KwRName;}
	else if($KwRName10==""){$KwRName10=$KwRName;}

	$ナット名=$KwRName;

	PreKw();
}

...マクロ
function PreKw()
{
	$alias = "@" + $親ナット名 + "/" + $域本名 + "/" + $ナット名;

	if($stand01_use==$alias){$stand01_use="";}//初期化変数
	if($stand02_use==$alias){$stand02_use="";}//初期化変数
	if($stand03_use==$alias){$stand03_use="";}//初期化変数
	if($stand04_use==$alias){$stand04_use="";}//初期化変数
	if($stand05_use==$alias){$stand05_use="";}//初期化変数
	if($stand06_use==$alias){$stand06_use="";}//初期化変数
	if($stand07_use==$alias){$stand07_use="";}//初期化変数
	if($stand08_use==$alias){$stand08_use="";}//初期化変数
	if($stand09_use==$alias){$stand09_use="";}//初期化変数
	if($stand10_use==$alias){$stand10_use="";}//初期化変数
	if($stand11_use==$alias){$stand11_use="";}//初期化変数
	if($stand12_use==$alias){$stand12_use="";}//初期化変数
	if($stand13_use==$alias){$stand13_use="";}//初期化変数
	if($stand14_use==$alias){$stand14_use="";}//初期化変数
	if($stand15_use==$alias){$stand15_use="";}//初期化変数
	if($stand16_use==$alias){$stand16_use="";}//初期化変数
	if($stand17_use==$alias){$stand17_use="";}//初期化変数
	if($stand18_use==$alias){$stand18_use="";}//初期化変数
	if($stand19_use==$alias){$stand19_use="";}//初期化変数
	if($stand20_use==$alias){$stand20_use="";}//初期化変数
	if($stand21_use==$alias){$stand21_use="";}//初期化変数
	if($stand22_use==$alias){$stand22_use="";}//初期化変数
	if($stand23_use==$alias){$stand23_use="";}//初期化変数
	if($stand24_use==$alias){$stand24_use="";}//初期化変数
	if($stand25_use==$alias){$stand25_use="";}//初期化変数
	if($stand26_use==$alias){$stand26_use="";}//初期化変数
	if($stand27_use==$alias){$stand27_use="";}//初期化変数
	if($stand28_use==$alias){$stand28_use="";}//初期化変数
	if($stand29_use==$alias){$stand29_use="";}//初期化変数
	if($stand30_use==$alias){$stand30_use="";}//初期化変数

		if($stand01_use==""){//初期化変数
			$stand01_use=$alias;
			$stand01_who=$親ナット名;
			$stand_num="1";
		}else if($stand02_use==""){//初期化変数
			$stand02_use=$alias;
			$stand02_who=$親ナット名;
			$stand_num="2";
		}else if($stand03_use==""){//初期化変数
			$stand03_use=$alias;
			$stand03_who=$親ナット名;
			$stand_num="3";
		}else if($stand04_use==""){//初期化変数
			$stand04_use=$alias;
			$stand04_who=$親ナット名;
			$stand_num="4";
		}else if($stand05_use==""){//初期化変数
			$stand05_use=$alias;
			$stand05_who=$親ナット名;
			$stand_num="5";
		}else if($stand06_use==""){//初期化変数
			$stand06_use=$alias;
			$stand06_who=$親ナット名;
			$stand_num="6";
		}else if($stand07_use==""){//初期化変数
			$stand07_use=$alias;
			$stand07_who=$親ナット名;
			$stand_num="7";
		}else if($stand08_use==""){//初期化変数
			$stand08_use=$alias;
			$stand08_who=$親ナット名;
			$stand_num="8";
		}else if($stand09_use==""){//初期化変数
			$stand09_use=$alias;
			$stand09_who=$親ナット名;
			$stand_num="9";
		}else if($stand10_use==""){//初期化変数
			$stand10_use=$alias;
			$stand10_who=$親ナット名;
			$stand_num="10";
		}else if($stand11_use==""){//初期化変数
			$stand11_use=$alias;
			$stand11_who=$親ナット名;
			$stand_num="11";
		}else if($stand12_use==""){//初期化変数
			$stand12_use=$alias;
			$stand12_who=$親ナット名;
			$stand_num="12";
		}else if($stand13_use==""){//初期化変数
			$stand13_use=$alias;
			$stand13_who=$親ナット名;
			$stand_num="13";
		}else if($stand14_use==""){//初期化変数
			$stand14_use=$alias;
			$stand14_who=$親ナット名;
			$stand_num="14";
		}else if($stand15_use==""){//初期化変数
			$stand15_use=$alias;
			$stand15_who=$親ナット名;
			$stand_num="15";
		}else if($stand16_use==""){//初期化変数
			$stand16_use=$alias;
			$stand16_who=$親ナット名;
			$stand_num="16";
		}else if($stand17_use==""){//初期化変数
			$stand17_use=$alias;
			$stand17_who=$親ナット名;
			$stand_num="17";
		}else if($stand18_use==""){//初期化変数
			$stand18_use=$alias;
			$stand18_who=$親ナット名;
			$stand_num="18";
		}else if($stand19_use==""){//初期化変数
			$stand19_use=$alias;
			$stand19_who=$親ナット名;
			$stand_num="19";
		}else if($stand20_use==""){//初期化変数
			$stand20_use=$alias;
			$stand20_who=$親ナット名;
			$stand_num="20";
		}else if($stand21_use==""){//初期化変数
			$stand21_use=$alias;
			$stand21_who=$親ナット名;
			$stand_num="21";
		}else if($stand22_use==""){//初期化変数
			$stand22_use=$alias;
			$stand22_who=$親ナット名;
			$stand_num="22";
		}else if($stand23_use==""){//初期化変数
			$stand23_use=$alias;
			$stand23_who=$親ナット名;
			$stand_num="23";
		}else if($stand24_use==""){//初期化変数
			$stand24_use=$alias;
			$stand24_who=$親ナット名;
			$stand_num="24";
		}else if($stand25_use==""){//初期化変数
			$stand25_use=$alias;
			$stand25_who=$親ナット名;
			$stand_num="25";
		}else if($stand26_use==""){//初期化変数
			$stand26_use=$alias;
			$stand26_who=$親ナット名;
			$stand_num="26";
		}else if($stand27_use==""){//初期化変数
			$stand27_use=$alias;
			$stand27_who=$親ナット名;
			$stand_num="27";
		}else if($stand28_use==""){//初期化変数
			$stand28_use=$alias;
			$stand28_who=$親ナット名;
			$stand_num="28";
		}else if($stand29_use==""){//初期化変数
			$stand29_use=$alias;
			$stand29_who=$親ナット名;
			$stand_num="29";
		}else if($stand30_use==""){//初期化変数
			$stand30_use=$alias;
			$stand30_who=$親ナット名;
			$stand_num="30";
		}else{
			$str="立ち絵が満杯だぜ？";
			CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
			Request("DebugAlert",PushText);
			return;
		}

	$nut = "@" + $親ナット名 + "/" + $域本名 + "/" + $ナット名;
	$顔プロセス = $顔プロセス頭 + $ナット名;

	CreateTexture($nut, $描画優先度, $Ｘ位置, $Ｙ位置, $画像);
	Request($nut, Smoothing);
	SetAlias($nut, $ナット名);
	Fade($nut,0,0,null,true);

	$HorKw=ImageHorizon($nut);
	$HorKw=$HorKw/2;
	$HorKw=$HorKw-107;
	$HorKw=-$HorKw;
	$VerKw=7;
	Move($nut, 0, @$HorKw, @$VerKw, null, true);

	$proc_f="Face"+$stand_num;
	CreateProcess($顔プロセス, $描画優先度, 0, 0, $proc_f);
	SetAlias($顔プロセス, $顔プロセス);
}





//――――――――――――――――――――――――――――――――――――――
..顔ウィンドウ動作１「開始」
//――――――――――――――――――――――――――――――――――――――

...「通常」
function FadeKwX($ナット名,$描画時間,$待ち)
{
	$KwP = 1;
	$KwM = 0;
	$位置="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 1;
	$KwXPex = 0;

	//指定用
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function FadeKwC($描画時間,$待ち)
{
	if($KwCName01!=""){$ナット名=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$ナット名=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$ナット名=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$ナット名=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$ナット名=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$ナット名=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$ナット名=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$ナット名=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$ナット名=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$ナット名=$KwCName10;$KwCName10="";}

	$KwP = 1;
	$KwM = 0;
	$位置="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 1;
	$KwCPex = 0;

	//指定用
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function FadeKwCL($描画時間,$待ち)
{
	if($KwCLName01!=""){$ナット名=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$ナット名=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$ナット名=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$ナット名=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$ナット名=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$ナット名=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$ナット名=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$ナット名=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$ナット名=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$ナット名=$KwCLName10;$KwCLName10="";}

	$KwP = 1;
	$KwM = 0;
	$位置="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 1;
	$KwCLPex = 0;

	//指定用
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function FadeKwL($描画時間,$待ち)
{
	if($KwLName01!=""){$ナット名=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$ナット名=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$ナット名=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$ナット名=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$ナット名=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$ナット名=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$ナット名=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$ナット名=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$ナット名=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$ナット名=$KwLName10;$KwLName10="";}

	$KwP = 1;
	$KwM = 0;
	$位置="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 1;
	$KwLPex = 0;

	//指定用
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function FadeKwCR($描画時間,$待ち)
{
	if($KwCRName01!=""){$ナット名=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$ナット名=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$ナット名=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$ナット名=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$ナット名=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$ナット名=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$ナット名=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$ナット名=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$ナット名=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$ナット名=$KwCRName10;$KwCRName10="";}

	$KwP = 1;
	$KwM = 0;
	$位置="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 1;
	$KwCRPex = 0;

	//指定用
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function FadeKwR($描画時間,$待ち)
{
	if($KwRName01!=""){$ナット名=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$ナット名=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$ナット名=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$ナット名=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$ナット名=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$ナット名=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$ナット名=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$ナット名=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$ナット名=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$ナット名=$KwRName10;$KwRName10="";}

	$KwP = 1;
	$KwM = 0;
	$位置="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 1;
	$KwRPex = 0;

	//指定用
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}


...「特殊開始」
function FadeKwXEX($ナット名,$描画時間,$待ち)
{
	$KwP = 1;
	$KwM = 0;
	$位置="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 1;
	$KwXPex = 1;

	//指定用
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function FadeKwCEX($描画時間,$待ち)
{
	if($KwCName01!=""){$ナット名=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$ナット名=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$ナット名=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$ナット名=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$ナット名=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$ナット名=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$ナット名=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$ナット名=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$ナット名=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$ナット名=$KwCName10;$KwCName10="";}

	$KwP = 1;
	$KwM = 0;
	$位置="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 1;
	$KwCPex = 1;

	//指定用
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function FadeKwCLEX($描画時間,$待ち)
{
	if($KwCLName01!=""){$ナット名=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$ナット名=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$ナット名=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$ナット名=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$ナット名=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$ナット名=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$ナット名=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$ナット名=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$ナット名=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$ナット名=$KwCLName10;$KwCLName10="";}

	$KwP = 1;
	$KwM = 0;
	$位置="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 1;
	$KwCLPex = 1;

	//指定用
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function FadeKwLEX($描画時間,$待ち)
{
	if($KwLName01!=""){$ナット名=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$ナット名=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$ナット名=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$ナット名=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$ナット名=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$ナット名=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$ナット名=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$ナット名=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$ナット名=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$ナット名=$KwLName10;$KwLName10="";}

	$KwP = 1;
	$KwM = 0;
	$位置="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 1;
	$KwLPex = 1;
	//指定用
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function FadeKwCREX($描画時間,$待ち)
{
	if($KwCRName01!=""){$ナット名=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$ナット名=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$ナット名=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$ナット名=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$ナット名=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$ナット名=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$ナット名=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$ナット名=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$ナット名=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$ナット名=$KwCRName10;$KwCRName10="";}

	$KwP = 1;
	$KwM = 0;
	$位置="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 1;
	$KwCRPex = 1;

	//指定用
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function FadeKwREX($描画時間,$待ち)
{
	if($KwRName01!=""){$ナット名=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$ナット名=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$ナット名=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$ナット名=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$ナット名=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$ナット名=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$ナット名=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$ナット名=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$ナット名=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$ナット名=$KwRName10;$KwRName10="";}

	$KwP = 1;
	$KwM = 0;
	$位置="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 1;
	$KwRPex = 1;

	//指定用
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}


//――――――――――――――――――――――――――――――――――――――
..顔ウィンドウ動作２「表情入れ替え」
//――――――――――――――――――――――――――――――――――――――
...「通常」
function Fade2KwX($ナット名,$描画時間,$待ち)
{
	$KwP = 2;
	$位置="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 2;
	$KwXPex = 0;

	//指定用
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function Fade2KwC($描画時間,$待ち)
{
	if($KwCName01!=""){$ナット名=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$ナット名=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$ナット名=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$ナット名=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$ナット名=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$ナット名=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$ナット名=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$ナット名=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$ナット名=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$ナット名=$KwCName10;$KwCName10="";}

	$KwP = 2;
	$位置="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 2;
	$KwCPex = 0;

	//指定用
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function Fade2KwCL($描画時間,$待ち)
{
	if($KwCLName01!=""){$ナット名=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$ナット名=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$ナット名=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$ナット名=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$ナット名=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$ナット名=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$ナット名=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$ナット名=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$ナット名=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$ナット名=$KwCLName10;$KwCLName10="";}

	$KwP = 2;
	$位置="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 2;
	$KwCLPex = 0;

	//指定用
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function Fade2KwL($描画時間,$待ち)
{
	if($KwLName01!=""){$ナット名=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$ナット名=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$ナット名=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$ナット名=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$ナット名=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$ナット名=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$ナット名=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$ナット名=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$ナット名=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$ナット名=$KwLName10;$KwLName10="";}

	$KwP = 2;
	$位置="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 2;
	$KwLPex = 0;

	//指定用
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function Fade2KwCR($描画時間,$待ち)
{
	if($KwCRName01!=""){$ナット名=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$ナット名=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$ナット名=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$ナット名=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$ナット名=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$ナット名=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$ナット名=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$ナット名=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$ナット名=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$ナット名=$KwCRName10;$KwCRName10="";}

	$KwP = 2;
	$位置="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 2;
	$KwCRPex = 0;

	//指定用
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function Fade2KwR($描画時間,$待ち)
{
	if($KwRName01!=""){$ナット名=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$ナット名=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$ナット名=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$ナット名=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$ナット名=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$ナット名=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$ナット名=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$ナット名=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$ナット名=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$ナット名=$KwRName10;$KwRName10="";}

	$KwP = 2;
	$位置="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 2;
	$KwRPex = 0;

	//指定用
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}


...「特殊開始」
function Fade2KwXEX($ナット名,$描画時間,$待ち)
{
	$KwP = 2;
	$位置="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 2;
	$KwXPex = 1;

	//指定用
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function Fade2KwCEX($描画時間,$待ち)
{
	if($KwCName01!=""){$ナット名=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$ナット名=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$ナット名=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$ナット名=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$ナット名=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$ナット名=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$ナット名=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$ナット名=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$ナット名=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$ナット名=$KwCName10;$KwCName10="";}

	$KwP = 2;
	$位置="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 2;
	$KwCPex = 1;

	//指定用
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function Fade2KwCLEX($描画時間,$待ち)
{
	if($KwCLName01!=""){$ナット名=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$ナット名=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$ナット名=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$ナット名=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$ナット名=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$ナット名=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$ナット名=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$ナット名=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$ナット名=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$ナット名=$KwCLName10;$KwCLName10="";}

	$KwP = 2;
	$位置="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 2;
	$KwCLPex = 1;

	//指定用
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function Fade2KwLEX($描画時間,$待ち)
{
	if($KwLName01!=""){$ナット名=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$ナット名=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$ナット名=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$ナット名=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$ナット名=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$ナット名=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$ナット名=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$ナット名=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$ナット名=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$ナット名=$KwLName10;$KwLName10="";}

	$KwP = 2;
	$位置="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 2;
	$KwLPex = 1;

	//指定用
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function Fade2KwCREX($描画時間,$待ち)
{
	if($KwCRName01!=""){$ナット名=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$ナット名=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$ナット名=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$ナット名=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$ナット名=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$ナット名=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$ナット名=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$ナット名=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$ナット名=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$ナット名=$KwCRName10;$KwCRName10="";}

	$KwP = 2;
	$位置="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 2;
	$KwCRPex = 1;

	//指定用
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function Fade2KwREX($描画時間,$待ち)
{
	if($KwRName01!=""){$ナット名=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$ナット名=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$ナット名=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$ナット名=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$ナット名=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$ナット名=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$ナット名=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$ナット名=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$ナット名=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$ナット名=$KwRName10;$KwRName10="";}

	$KwP = 2;
	$位置="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 2;
	$KwRPex = 1;

	//指定用
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}


//――――――――――――――――――――――――――――――――――――――
..顔ウィンドウ動作３「人物入れ替え」
//――――――――――――――――――――――――――――――――――――――
...「通常」
function Fade3KwX($ナット名,$描画時間,$待ち)
{
	$KwP = 3;
	$KwM = 0;
	$位置="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 3;
	$KwXPex = 0;

	//指定用
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function Fade3KwC($描画時間,$待ち)
{
	if($KwCName01!=""){$ナット名=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$ナット名=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$ナット名=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$ナット名=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$ナット名=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$ナット名=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$ナット名=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$ナット名=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$ナット名=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$ナット名=$KwCName10;$KwCName10="";}

	$KwP = 3;
	$KwM = 0;
	$位置="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 3;
	$KwCPex = 0;

	//指定用
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function Fade3KwCL($描画時間,$待ち)
{
	if($KwCLName01!=""){$ナット名=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$ナット名=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$ナット名=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$ナット名=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$ナット名=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$ナット名=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$ナット名=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$ナット名=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$ナット名=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$ナット名=$KwCLName10;$KwCLName10="";}

	$KwP = 3;
	$KwM = 0;
	$位置="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 3;
	$KwCLPex = 0;

	//指定用
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function Fade3KwL($描画時間,$待ち)
{
	if($KwLName01!=""){$ナット名=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$ナット名=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$ナット名=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$ナット名=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$ナット名=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$ナット名=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$ナット名=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$ナット名=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$ナット名=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$ナット名=$KwLName10;$KwLName10="";}

	$KwP = 3;
	$KwM = 0;
	$位置="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 3;
	$KwLPex = 0;

	//指定用
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function Fade3KwCR($描画時間,$待ち)
{
	if($KwCRName01!=""){$ナット名=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$ナット名=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$ナット名=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$ナット名=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$ナット名=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$ナット名=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$ナット名=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$ナット名=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$ナット名=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$ナット名=$KwCRName10;$KwCRName10="";}

	$KwP = 3;
	$KwM = 0;
	$位置="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 3;
	$KwCRPex = 0;

	//指定用
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function Fade3KwR($描画時間,$待ち)
{
	if($KwRName01!=""){$ナット名=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$ナット名=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$ナット名=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$ナット名=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$ナット名=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$ナット名=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$ナット名=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$ナット名=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$ナット名=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$ナット名=$KwRName10;$KwRName10="";}

	$KwP = 3;
	$KwM = 0;
	$位置="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 3;
	$KwRPex = 0;

	//指定用
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}

...「特殊開始」
function Fade3KwXEX($ナット名,$描画時間,$待ち)
{
	$KwP = 3;
	$KwM = 0;
	$位置="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 3;
	$KwXPex = 1;

	//指定用
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function Fade3KwCEX($描画時間,$待ち)
{
	if($KwCName01!=""){$ナット名=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$ナット名=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$ナット名=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$ナット名=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$ナット名=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$ナット名=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$ナット名=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$ナット名=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$ナット名=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$ナット名=$KwCName10;$KwCName10="";}

	$KwP = 3;
	$KwM = 0;
	$位置="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 3;
	$KwCPex = 1;

	//指定用
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function Fade3KwCLEX($描画時間,$待ち)
{
	if($KwCLName01!=""){$ナット名=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$ナット名=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$ナット名=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$ナット名=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$ナット名=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$ナット名=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$ナット名=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$ナット名=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$ナット名=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$ナット名=$KwCLName10;$KwCLName10="";}

	$KwP = 3;
	$KwM = 0;
	$位置="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 3;
	$KwCLPex = 1;

	//指定用
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function Fade3KwLEX($描画時間,$待ち)
{
	if($KwLName01!=""){$ナット名=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$ナット名=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$ナット名=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$ナット名=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$ナット名=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$ナット名=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$ナット名=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$ナット名=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$ナット名=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$ナット名=$KwLName10;$KwLName10="";}

	$KwP = 3;
	$KwM = 0;
	$位置="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 3;
	$KwLPex = 1;

	//指定用
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function Fade3KwCREX($描画時間,$待ち)
{
	if($KwCRName01!=""){$ナット名=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$ナット名=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$ナット名=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$ナット名=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$ナット名=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$ナット名=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$ナット名=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$ナット名=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$ナット名=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$ナット名=$KwCRName10;$KwCRName10="";}

	$KwP = 3;
	$KwM = 0;
	$位置="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 3;
	$KwCRPex = 1;

	//指定用
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function Fade3KwREX($描画時間,$待ち)
{
	if($KwRName01!=""){$ナット名=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$ナット名=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$ナット名=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$ナット名=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$ナット名=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$ナット名=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$ナット名=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$ナット名=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$ナット名=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$ナット名=$KwRName10;$KwRName10="";}

	$KwP = 3;
	$KwM = 0;
	$位置="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 3;
	$KwRPex = 1;

	//指定用
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}




//――――――――――――――――――――――――――――――――――――――
..顔ウィンドウ動作４「ヘンカ消去」
//――――――――――――――――――――――――――――――――――――――
function Fade4KwX($ナット名,$描画時間,$待ち)
{
	$KwP = 4;
	$位置="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 4;
	$KwXPex = 0;

	//指定用
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function Fade4KwC($描画時間,$待ち)
{
	if($KwCName01!=""){$ナット名=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$ナット名=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$ナット名=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$ナット名=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$ナット名=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$ナット名=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$ナット名=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$ナット名=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$ナット名=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$ナット名=$KwCName10;$KwCName10="";}

	$KwP = 4;
	$位置="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 4;
	$KwCPex = 0;

	//指定用
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function Fade4KwCL($描画時間,$待ち)
{
	if($KwCLName01!=""){$ナット名=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$ナット名=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$ナット名=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$ナット名=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$ナット名=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$ナット名=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$ナット名=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$ナット名=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$ナット名=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$ナット名=$KwCLName10;$KwCLName10="";}

	$KwP = 4;
	$位置="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 4;
	$KwCLPex = 0;

	//指定用
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function Fade4KwL($描画時間,$待ち)
{
	if($KwLName01!=""){$ナット名=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$ナット名=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$ナット名=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$ナット名=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$ナット名=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$ナット名=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$ナット名=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$ナット名=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$ナット名=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$ナット名=$KwLName10;$KwLName10="";}

	$KwP = 4;
	$位置="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 4;
	$KwLPex = 0;

	//指定用
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function Fade4KwCR($描画時間,$待ち)
{
	if($KwCRName01!=""){$ナット名=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$ナット名=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$ナット名=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$ナット名=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$ナット名=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$ナット名=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$ナット名=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$ナット名=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$ナット名=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$ナット名=$KwCRName10;$KwCRName10="";}

	$KwP = 4;
	$位置="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 4;
	$KwCRPex = 0;

	//指定用
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function Fade4KwR($描画時間,$待ち)
{
	if($KwRName01!=""){$ナット名=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$ナット名=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$ナット名=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$ナット名=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$ナット名=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$ナット名=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$ナット名=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$ナット名=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$ナット名=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$ナット名=$KwRName10;$KwRName10="";}

	$KwP = 4;
	$位置="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 4;
	$KwRPex = 0;

	//指定用
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}

//――――――――――――――――――――――――――――――――――――――
..顔ウィンドウ動作０「消去」
//――――――――――――――――――――――――――――――――――――――

...「通常」
function DeleteKwX($描画時間,$待つ)
{
	$KwP = 0;
	$位置="X";
	$ナット名="名無し";
	$待ち=false;

	PreFadeKw();

	if($KwXPex==1)
	{
		PreDeleteKwEX();
	}else{
		PreDeleteKw();
	}

	$KwXP = 0;
	$KwXPex = 0;
}

function DeleteKwC($描画時間,$待つ)
{
	$KwP = 0;
	$位置="C";
	$ナット名="名無し";
	$待ち=false;

	PreFadeKw();

	if($KwCPex==1)
	{
		PreDeleteKwEX();
	}else{
		PreDeleteKw();
	}

	$KwCP = 0;
	$KwCPex = 0;
}

function DeleteKwCL($描画時間,$待つ)
{
	$KwP = 0;
	$位置="CL";
	$ナット名="名無し";
	$待ち=false;

	PreFadeKw();

	if($KwCLPex==1)
	{
		PreDeleteKwEX();
	}else{
		PreDeleteKw();
	}

	$KwCLP = 0;
	$KwCLPex = 0;
}

function DeleteKwL($描画時間,$待つ)
{
	$KwP = 0;
	$位置="L";
	$ナット名="名無し";
	$待ち=false;

	PreFadeKw();

	if($KwLPex==1)
	{
		PreDeleteKwEX();
	}else{
		PreDeleteKw();
	}

	$KwLP = 0;
	$KwLPex = 0;
}

function DeleteKwCR($描画時間,$待つ)
{
	$KwP = 0;
	$位置="CR";
	$ナット名="名無し";
	$待ち=false;

	PreFadeKw();

	if($KwCRPex==1)
	{
		PreDeleteKwEX();
	}else{
		PreDeleteKw();
	}

	$KwCRP = 0;
	$KwCRPex = 0;
}

function DeleteKwR($描画時間,$待つ)
{
	$KwP = 0;
	$位置="R";
	$ナット名="名無し";
	$待ち=false;

	PreFadeKw();

	if($KwRPex==1)
	{
		PreDeleteKwEX();
	}else{
		PreDeleteKw();
	}

	$KwRP = 0;
	$KwRPex = 0;
}

function PreDeleteKw()
{
	Fade($smi,$描画時間,1000,Axl3,false);
	Rotate($nus, $描画時間, @0, @-90, @0, DxlAuto, $待つ);
	Request($nus, Disused);

	if($待つ==true)
	{
		WaitAction($nus, null);
	}
	else if($待つ != false)
	{
		Wait($待つ);
	}
	else
	{
	}
}



...「特殊開始」
function DeleteKwXEX($描画時間,$待つ)
{
	$KwP = 0;
	$位置="X";
	$ナット名="名無し";
	$待ち=false;

	$KwXPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwXP = 0;
	$KwXPex = 0;
}

function DeleteKwCEX($描画時間,$待つ)
{
	$KwP = 0;
	$位置="C";
	$ナット名="名無し";
	$待ち=false;

	$KwCPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwCP = 0;
	$KwCPex = 0;
}

function DeleteKwCLEX($描画時間,$待つ)
{
	$KwP = 0;
	$位置="CL";
	$ナット名="名無し";
	$待ち=false;

	$KwCLPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwCLP = 0;
	$KwCLPex = 0;
}

function DeleteKwLEX($描画時間,$待つ)
{
	$KwP = 0;
	$位置="L";
	$ナット名="名無し";
	$待ち=false;

	$KwLPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwLP = 0;
	$KwLPex = 0;
}

function DeleteKwCREX($描画時間,$待つ)
{
	$KwP = 0;
	$位置="CR";
	$ナット名="名無し";
	$待ち=false;

	$KwCRPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwCRP = 0;
	$KwCRPex = 0;
}

function DeleteKwREX($描画時間,$待つ)
{
	$KwP = 0;
	$位置="R";
	$ナット名="名無し";
	$待ち=false;

	$KwRPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwRP = 0;
	$KwRPex = 0;
}


function PreDeleteKwEX()
{
	Fade($smi,$描画時間,1000,Axl3,false);
	Rotate($nus, $描画時間, @0, @-90, @0, DxlAuto, false);
	Rotate($astnut, 0, @0, @0, @0, DxlAuto, false);
	Request($nus, Disused);

	if($待つ==true)
	{
		WaitAction($nus, null);
	}
	else if($待つ != false)
	{
		Wait($待つ);
	}
	else
	{
	}
}



//――――――――――――――――――――――――――――――――――――――
..描画マクロ
//――――――――――――――――――――――――――――――――――――――
function PreFadeKw()
{
	$nut = $ナット名;

	if($位置=="X"){
		$nus = "@" + $親ナット名KwX;
		$picnut = $FaceKwX;
		$Prepicnut = $FaceKwX2;
		$KwPex = $KwXPex;
		$顔プロセス頭 = $顔プロセス頭X;
	}else if($位置=="C"){
		$nus = "@" + $親ナット名KwC;
		$picnut = $FaceKwC;
		$Prepicnut = $FaceKwC2;
		$KwPex = $KwCPex;
		$顔プロセス頭 = $顔プロセス頭C;
	}else if($位置=="CL"){
		$nus = "@" + $親ナット名KwCL;
		$picnut = $FaceKwCL;
		$Prepicnut = $FaceKwCL2;
		$KwPex = $KwCLPex;
		$顔プロセス頭 = $顔プロセス頭CL;
	}else if($位置=="L"){
		$nus = "@" + $親ナット名KwL;
		$picnut = $FaceKwL;
		$Prepicnut = $FaceKwL2;
		$顔プロセス頭 = $顔プロセス頭L;
		$KwPex = $KwLPex;
	}else if($位置=="CR"){
		$nus = "@" + $親ナット名KwCR;
		$picnut = $FaceKwCR;
		$Prepicnut = $FaceKwCR2;
		$顔プロセス頭 = $顔プロセス頭CR;
		$KwPex = $KwCRPex;
	}else if($位置=="R"){
		$nus = "@" + $親ナット名KwR;
		$picnut = $FaceKwR;
		$Prepicnut = $FaceKwR2;
		$KwPex = $KwRPex;
		$顔プロセス頭 = $顔プロセス頭R;
	}

	$smi = $nus + "/" + $墨本名;
	$alias = $nus + "/" + $域本名 + "/" + $ナット名;

	if($stand01_use==$alias){
		$描画時間01=$描画時間;
		$KwPex01=$KwPex;
		$nut01=$nut;
		$nus01=$nus;
		$KwP01=$KwP;
		$smi01=$smi;
		$picnut01=$picnut;
		$Prepicnut01=$Prepicnut;
	}else if($stand02_use==$alias){
		$描画時間02=$描画時間;
		$KwPex02=$KwPex;
		$nut02=$nut;
		$nus02=$nus;
		$KwP02=$KwP;
		$smi02=$smi;
		$picnut02=$picnut;
		$Prepicnut02=$Prepicnut;
	}else if($stand03_use==$alias){
		$描画時間03=$描画時間;
		$KwPex03=$KwPex;
		$nut03=$nut;
		$nus03=$nus;
		$KwP03=$KwP;
		$smi03=$smi;
		$picnut03=$picnut;
		$Prepicnut03=$Prepicnut;
	}else if($stand04_use==$alias){
		$描画時間04=$描画時間;
		$KwPex04=$KwPex;
		$nut04=$nut;
		$nus04=$nus;
		$KwP04=$KwP;
		$smi04=$smi;
		$picnut04=$picnut;
		$Prepicnut04=$Prepicnut;
	}else if($stand05_use==$alias){
		$描画時間05=$描画時間;
		$KwPex05=$KwPex;
		$nut05=$nut;
		$nus05=$nus;
		$KwP05=$KwP;
		$smi05=$smi;
		$picnut05=$picnut;
		$Prepicnut05=$Prepicnut;
	}else if($stand06_use==$alias){
		$描画時間06=$描画時間;
		$KwPex06=$KwPex;
		$nut06=$nut;
		$nus06=$nus;
		$KwP06=$KwP;
		$smi06=$smi;
		$picnut06=$picnut;
		$Prepicnut06=$Prepicnut;
	}else if($stand07_use==$alias){
		$描画時間07=$描画時間;
		$KwPex07=$KwPex;
		$nut07=$nut;
		$nus07=$nus;
		$KwP07=$KwP;
		$smi07=$smi;
		$picnut07=$picnut;
		$Prepicnut07=$Prepicnut;
	}else if($stand08_use==$alias){
		$描画時間08=$描画時間;
		$KwPex08=$KwPex;
		$nut08=$nut;
		$nus08=$nus;
		$KwP08=$KwP;
		$smi08=$smi;
		$picnut08=$picnut;
		$Prepicnut08=$Prepicnut;
	}else if($stand09_use==$alias){
		$描画時間09=$描画時間;
		$KwPex09=$KwPex;
		$nut09=$nut;
		$nus09=$nus;
		$KwP09=$KwP;
		$smi09=$smi;
		$picnut09=$picnut;
		$Prepicnut09=$Prepicnut;
	}else if($stand10_use==$alias){
		$描画時間10=$描画時間;
		$KwPex10=$KwPex;
		$nut10=$nut;
		$nus10=$nus;
		$KwP10=$KwP;
		$smi10=$smi;
		$picnut10=$picnut;
		$Prepicnut10=$Prepicnut;
	}else if($stand11_use==$alias){
		$描画時間11=$描画時間;
		$KwPex11=$KwPex;
		$nut11=$nut;
		$nus11=$nus;
		$KwP11=$KwP;
		$smi11=$smi;
		$picnut11=$picnut;
		$Prepicnut11=$Prepicnut;
	}else if($stand12_use==$alias){
		$描画時間12=$描画時間;
		$KwPex12=$KwPex;
		$nut12=$nut;
		$nus12=$nus;
		$KwP12=$KwP;
		$smi12=$smi;
		$picnut12=$picnut;
		$Prepicnut12=$Prepicnut;
	}else if($stand13_use==$alias){
		$描画時間13=$描画時間;
		$KwPex13=$KwPex;
		$nut13=$nut;
		$nus13=$nus;
		$KwP13=$KwP;
		$smi13=$smi;
		$picnut13=$picnut;
		$Prepicnut13=$Prepicnut;
	}else if($stand14_use==$alias){
		$描画時間14=$描画時間;
		$KwPex14=$KwPex;
		$nut14=$nut;
		$nus14=$nus;
		$KwP14=$KwP;
		$smi14=$smi;
		$picnut14=$picnut;
		$Prepicnut14=$Prepicnut;
	}else if($stand15_use==$alias){
		$描画時間15=$描画時間;
		$KwPex15=$KwPex;
		$nut15=$nut;
		$nus15=$nus;
		$KwP15=$KwP;
		$smi15=$smi;
		$picnut15=$picnut;
		$Prepicnut15=$Prepicnut;
	}else if($stand16_use==$alias){
		$描画時間16=$描画時間;
		$KwPex16=$KwPex;
		$nut16=$nut;
		$nus16=$nus;
		$KwP16=$KwP;
		$smi16=$smi;
		$picnut16=$picnut;
		$Prepicnut16=$Prepicnut;
	}else if($stand17_use==$alias){
		$描画時間17=$描画時間;
		$KwPex17=$KwPex;
		$nut17=$nut;
		$nus17=$nus;
		$KwP17=$KwP;
		$smi17=$smi;
		$picnut17=$picnut;
		$Prepicnut17=$Prepicnut;
	}else if($stand18_use==$alias){
		$描画時間18=$描画時間;
		$KwPex18=$KwPex;
		$nut18=$nut;
		$nus18=$nus;
		$KwP18=$KwP;
		$smi18=$smi;
		$picnut18=$picnut;
		$Prepicnut18=$Prepicnut;
	}else if($stand19_use==$alias){
		$描画時間19=$描画時間;
		$KwPex19=$KwPex;
		$nut19=$nut;
		$nus19=$nus;
		$KwP19=$KwP;
		$smi19=$smi;
		$picnut19=$picnut;
		$Prepicnut19=$Prepicnut;
	}else if($stand20_use==$alias){
		$描画時間20=$描画時間;
		$KwPex20=$KwPex;
		$nut20=$nut;
		$nus20=$nus;
		$KwP20=$KwP;
		$smi20=$smi;
		$picnut20=$picnut;
		$Prepicnut20=$Prepicnut;
	}else if($stand21_use==$alias){
		$描画時間21=$描画時間;
		$KwPex21=$KwPex;
		$nut21=$nut;
		$nus21=$nus;
		$KwP21=$KwP;
		$smi21=$smi;
		$picnut21=$picnut;
		$Prepicnut21=$Prepicnut;
	}else if($stand22_use==$alias){
		$描画時間22=$描画時間;
		$KwPex22=$KwPex;
		$nut22=$nut;
		$nus22=$nus;
		$KwP22=$KwP;
		$smi22=$smi;
		$picnut22=$picnut;
		$Prepicnut22=$Prepicnut;
	}else if($stand23_use==$alias){
		$描画時間23=$描画時間;
		$KwPex23=$KwPex;
		$nut23=$nut;
		$nus23=$nus;
		$KwP23=$KwP;
		$smi23=$smi;
		$picnut23=$picnut;
		$Prepicnut23=$Prepicnut;
	}else if($stand24_use==$alias){
		$描画時間24=$描画時間;
		$KwPex24=$KwPex;
		$nut24=$nut;
		$nus24=$nus;
		$KwP24=$KwP;
		$smi24=$smi;
		$picnut24=$picnut;
		$Prepicnut24=$Prepicnut;
	}else if($stand25_use==$alias){
		$描画時間25=$描画時間;
		$KwPex25=$KwPex;
		$nut25=$nut;
		$nus25=$nus;
		$KwP25=$KwP;
		$smi25=$smi;
		$picnut25=$picnut;
		$Prepicnut25=$Prepicnut;
	}else if($stand26_use==$alias){
		$描画時間26=$描画時間;
		$KwPex26=$KwPex;
		$nut26=$nut;
		$nus26=$nus;
		$KwP26=$KwP;
		$smi26=$smi;
		$picnut26=$picnut;
		$Prepicnut26=$Prepicnut;
	}else if($stand27_use==$alias){
		$描画時間27=$描画時間;
		$KwPex27=$KwPex;
		$nut27=$nut;
		$nus27=$nus;
		$KwP27=$KwP;
		$smi27=$smi;
		$picnut27=$picnut;
		$Prepicnut27=$Prepicnut;
	}else if($stand28_use==$alias){
		$描画時間28=$描画時間;
		$KwPex28=$KwPex;
		$nut28=$nut;
		$nus28=$nus;
		$KwP28=$KwP;
		$smi28=$smi;
		$picnut28=$picnut;
		$Prepicnut28=$Prepicnut;
	}else if($stand29_use==$alias){
		$描画時間29=$描画時間;
		$KwPex29=$KwPex;
		$nut29=$nut;
		$nus29=$nus;
		$KwP29=$KwP;
		$smi29=$smi;
		$picnut29=$picnut;
		$Prepicnut29=$Prepicnut;
	}else if($stand30_use==$alias){
		$描画時間30=$描画時間;
		$KwPex30=$KwPex;
		$nut30=$nut;
		$nus30=$nus;
		$KwP30=$KwP;
		$smi30=$smi;
		$picnut30=$picnut;
		$Prepicnut30=$Prepicnut;
	}else if($ナット名=="名無し"){

	}else{
		$str="「"+$ナット名+"」使用リストにないぜ？";
		CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
		Request("DebugAlert",PushText);
	}

	$顔プロセス = "@" + $顔プロセス頭 + $nut;
	$顔プロセス前 = "@" + $顔プロセス頭 + $picnut;
	$setnut = $nus + "/" + $域本名 + "/" + $nut;
	$astnut = $nus + "/" + $域本名 + "/" + $picnut;
	$Preastnut = $nus + "/" + $域本名 + "/" + $Prepicnut;

	Request($顔プロセス前, Stop);

	if($setnut!=$astnut){
		Delete($顔プロセス前);
	}

	if($位置=="X"){
		if($KwXP==1){Kw1();}
		if($KwXP==3){Kw3();}
		$KwXP = 0;
	}else if($位置=="C"){
		if($KwCP==1){Kw1();}
		if($KwCP==3){Kw3();}
		$KwCP = 0;
	}else if($位置=="CL"){
		if($KwCLP==1){Kw1();}
		if($KwCLP==3){Kw3();}
		$KwCLP = 0;
	}else if($位置=="L"){
		if($KwLP==1){Kw1();}
		if($KwLP==3){Kw3();}
		$KwLP = 0;
	}else if($位置=="CR"){
		if($KwCRP==1){Kw1();}
		if($KwCRP==3){Kw3();}
		$KwCRP = 0;
	}else if($位置=="R"){
		if($KwRP==1){Kw1();}
		if($KwRP==3){Kw3();}
		$KwRP = 0;
	}

	Fade($Preastnut, 0, 0, null, false);
	Fade($astnut, 0, 1000, null, false);

	if($setnut!=$Preastnut && $astnut!=$Preastnut){
		Delete($Preastnut);
	}

	if($setnut!=$astnut){
		if($stand01_use==$astnut){
			$stand01_use="";//初期化変数
		}else if($stand02_use==$astnut){
			$stand02_use="";//初期化変数
		}else if($stand03_use==$astnut){
			$stand03_use="";//初期化変数
		}else if($stand04_use==$astnut){
			$stand04_use="";//初期化変数
		}else if($stand05_use==$astnut){
			$stand05_use="";//初期化変数
		}else if($stand06_use==$astnut){
			$stand06_use="";//初期化変数
		}else if($stand07_use==$astnut){
			$stand07_use="";//初期化変数
		}else if($stand08_use==$astnut){
			$stand08_use="";//初期化変数
		}else if($stand09_use==$astnut){
			$stand09_use="";//初期化変数
		}else if($stand10_use==$astnut){
			$stand10_use="";//初期化変数
		}else if($stand11_use==$astnut){
			$stand11_use="";//初期化変数
		}else if($stand12_use==$astnut){
			$stand12_use="";//初期化変数
		}else if($stand13_use==$astnut){
			$stand13_use="";//初期化変数
		}else if($stand14_use==$astnut){
			$stand14_use="";//初期化変数
		}else if($stand15_use==$astnut){
			$stand15_use="";//初期化変数
		}else if($stand16_use==$astnut){
			$stand16_use="";//初期化変数
		}else if($stand17_use==$astnut){
			$stand17_use="";//初期化変数
		}else if($stand18_use==$astnut){
			$stand18_use="";//初期化変数
		}else if($stand19_use==$astnut){
			$stand19_use="";//初期化変数
		}else if($stand20_use==$astnut){
			$stand20_use="";//初期化変数
		}else if($stand21_use==$astnut){
			$stand21_use="";//初期化変数
		}else if($stand22_use==$astnut){
			$stand22_use="";//初期化変数
		}else if($stand23_use==$astnut){
			$stand23_use="";//初期化変数
		}else if($stand24_use==$astnut){
			$stand24_use="";//初期化変数
		}else if($stand25_use==$astnut){
			$stand25_use="";//初期化変数
		}else if($stand26_use==$astnut){
			$stand26_use="";//初期化変数
		}else if($stand27_use==$astnut){
			$stand27_use="";//初期化変数
		}else if($stand28_use==$astnut){
			$stand28_use="";//初期化変数
		}else if($stand29_use==$astnut){
			$stand29_use="";//初期化変数
		}else if($stand30_use==$astnut){
			$stand30_use="";//初期化変数
		}else{
		//	$str="「"+$astnut01+"」使用リストにないぜ？";
		//	CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
		//	Request("DebugAlert",PushText);
		}
	}


	if($待ち!=2)
	{
		if($顔貯X==1){Request($顔貯プロセスX, Start);Request($顔貯プロセスX, Disused);$顔貯X=0;}
		if($顔貯C==1){Request($顔貯プロセスC, Start);Request($顔貯プロセスC, Disused);$顔貯C=0;}
		if($顔貯CL==1){Request($顔貯プロセスCL, Start);Request($顔貯プロセスCL, Disused);$顔貯CL=0;}
		if($顔貯L==1){Request($顔貯プロセスL, Start);Request($顔貯プロセスL, Disused);$顔貯L=0;}
		if($顔貯CR==1){Request($顔貯プロセスCR, Start);Request($顔貯プロセスCR, Disused);$顔貯CR=0;}
		if($顔貯R==1){Request($顔貯プロセスR, Start);Request($顔貯プロセスR, Disused);$顔貯R=0;}
	}

	if($KwP!=0)
	{
		if($待ち!=2)
		{
			Request($顔プロセス, Start);
			Request($顔プロセス, Disused);
		}
	
	
		if($待ち==true)
		{
			WaitAction($顔プロセス, null);
		}
		else if($待ち != false)
		{
			if($待ち==2)
			{
				if($位置=="X"){$顔貯X=1;$顔貯プロセスX=$顔プロセス;}
				if($位置=="C"){$顔貯C=1;$顔貯プロセスC=$顔プロセス;}
				if($位置=="CL"){$顔貯CL=1;$顔貯プロセスCL=$顔プロセス;}
				if($位置=="L"){$顔貯L=1;$顔貯プロセスL=$顔プロセス;}
				if($位置=="CR"){$顔貯CR=1;$顔貯プロセスCR=$顔プロセス;}
				if($位置=="R"){$顔貯R=1;$顔貯プロセスR=$顔プロセス;}
			}else{
				Wait($待ち);
			}
		}
		else
		{
		}
	}
}



function Kw1()
{
	$allnut = $nus + "/" + $域本名 + "/*";

	if($KwPex!=1){
		Move($astnut,0, 0, $VerKw, null, false);
	}
	Rotate($nus, 0, @0, 0, @0, null, false);
	Fade($nus, 0, 1000, null, false);
	Fade($smi, 0, 0, null, false);
	Fade($allnut, 0, 0, null, false);
}

function Kw3()
{
	$allnut = $nus + "/" + $域本名 + "/*";

	if($KwPex!=1){
		Move($astnut,0, 0, $VerKw, null, false);
	}
	Rotate($nus, 0, @0, 0, @0, null, false);
	Fade($nus, 0, 1000, null, false);
	Fade($smi, 0, 0, null, false);
	Fade($allnut, 0, 0, null, false);
}







//――――――――――――――――――――――――――――――――――――――
..顔ウィンドウプロセス
//――――――――――――――――――――――――――――――――――――――

function Face1()
{
	$setnut01 = $nus01 + "/" + $域本名 + "/" + $nut01;
	$astnut01 = $nus01 + "/" + $域本名 + "/" + $picnut01;
	$allnut01 = $nus01 + "/" + $域本名 + "/" + "*";

	if($KwP01==1)
	{
		$描画時間01 = $描画時間01/2;
		$nx01 = -10;//nx
		$ny01 = 10;//ny
		$mx01 = 10;//mx
		$my01 = -10;//my

		Fade($nus01, 0, 0, null, false);
		Rotate($nus01, 0, @0, 90, @0, null, true);
		Fade($smi01,0,1000,null,false);

		Fade($nus01,$描画時間01,1000,Dxl1,false);
		Fade($allnut01,0,0,null,false);
		Fade($smi01,$描画時間01,0,Dxl3,false);
		Rotate($nus01, $描画時間01, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut01, 0, @$nx01, @$ny01, null, true);//変更点
		Move($setnut01,$描画時間01, @$mx01, @$my01, Dxl1, false);
		Fade($setnut01,$描画時間01,1000,null,true);//変更点３
	}

	if($KwP01==2)
	{
		Fade($astnut01,$描画時間01,0,Axl3,false);
		Request($astnut01, Disused);
		Fade($setnut01,$描画時間01,1000,Dxl1,true);
	}

	if($KwP01==3)
	{
		$描画時間01 = $描画時間01/3;
		$nx01 = -10;//nx
		$ny01 = 10;//ny
		$mx01 = 10;//mx
		$my01 = -10;//my

		Fade($smi01,$描画時間01,1000,Axl3,false);
		Rotate($nus01, $描画時間01, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex01==1)
		{
			Rotate($astnut01, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus01, null);
		Rotate($nus01, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut01,0,0,null,false);
			Request($astnut01, Disused);
			Fade($nus01,0,0,null,false);

		Fade($smi01,0,1000,null,false);

		Fade($nus01,$描画時間01,1000,Dxl1,false);
		Fade($allnut01,0,0,null,false);
		Fade($smi01,$描画時間01,0,Dxl3,false);
		Rotate($nus01, $描画時間01, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus01, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut01, 0, @$nx01, @$ny01, null, true);//変更点
		Move($setnut01,$描画時間01, @$mx01, @$my01, Dxl1, false);
		Fade($setnut01,$描画時間01,1000,null,true);//変更点３
	}

	if($KwP01==4)
	{
		$描画時間01a = $描画時間01/2;

		Fade($astnut01,$描画時間01a,0,Axl3,false);
		Fade($setnut01,$描画時間01a,1000,Dxl1,false);

		Fade($smi01,$描画時間01,1000,Axl3,false);
		Rotate($nus01, $描画時間01, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex01==1)
		{
			Rotate($astnut01, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus01, Disused);
		WaitAction($nus01, null);
	}
}

function Face2()
{
	$setnut02 = $nus02 + "/" + $域本名 + "/" + $nut02;
	$astnut02 = $nus02 + "/" + $域本名 + "/" + $picnut02;
	$allnut02 = $nus02 + "/" + $域本名 + "/" + "*";

	if($KwP02==1)
	{
		$描画時間02 = $描画時間02/2;
		$nx02 = -10;//nx
		$ny02 = 10;//ny
		$mx02 = 10;//mx
		$my02 = -10;//my

		Fade($nus02, 0, 0, null, false);
		Rotate($nus02, 0, @0, 90, @0, null, true);
		Fade($smi02,0,1000,null,false);

		Fade($nus02,$描画時間02,1000,Dxl1,false);
		Fade($allnut02,0,0,null,false);
		Fade($smi02,$描画時間02,0,Dxl3,false);
		Rotate($nus02, $描画時間02, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut02, 0, @$nx02, @$ny02, null, true);//変更点
		Move($setnut02,$描画時間02, @$mx02, @$my02, Dxl1, false);
		Fade($setnut02,$描画時間02,1000,null,true);//変更点３
	}

	if($KwP02==2)
	{
		Fade($astnut02,$描画時間02,0,Axl3,false);
		Request($astnut02, Disused);
		Fade($setnut02,$描画時間02,1000,Dxl1,true);
	}

	if($KwP02==3)
	{
		$描画時間02 = $描画時間02/3;
		$nx02 = -10;//nx
		$ny02 = 10;//ny
		$mx02 = 10;//mx
		$my02 = -10;//my

		Fade($smi02,$描画時間02,1000,Axl3,false);
		Rotate($nus02, $描画時間02, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex02==1)
		{
			Rotate($astnut02, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus02, null);
		Rotate($nus02, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut02,0,0,null,false);
			Request($astnut02, Disused);
			Fade($nus02,0,0,null,false);

		Fade($smi02,0,1000,null,false);

		Fade($nus02,$描画時間02,1000,Dxl1,false);
		Fade($allnut02,0,0,null,false);
		Fade($smi02,$描画時間02,0,Dxl3,false);
		Rotate($nus02, $描画時間02, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus02, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut02, 0, @$nx02, @$ny02, null, true);//変更点
		Move($setnut02,$描画時間02, @$mx02, @$my02, Dxl1, false);
		Fade($setnut02,$描画時間02,1000,null,true);//変更点３
	}

	if($KwP02==4)
	{
		$描画時間02a = $描画時間02/2;

		Fade($astnut02,$描画時間02a,0,Axl3,false);
		Fade($setnut02,$描画時間02a,1000,Dxl1,false);

		Fade($smi02,$描画時間02,1000,Axl3,false);
		Rotate($nus02, $描画時間02, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex02==1)
		{
			Rotate($astnut02, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus02, Disused);
		WaitAction($nus02, null);
	}
}

function Face3()
{
	$setnut03 = $nus03 + "/" + $域本名 + "/" + $nut03;
	$astnut03 = $nus03 + "/" + $域本名 + "/" + $picnut03;
	$allnut03 = $nus03 + "/" + $域本名 + "/" + "*";

	if($KwP03==1)
	{
		$描画時間03 = $描画時間03/2;
		$nx03 = -10;//nx
		$ny03 = 10;//ny
		$mx03 = 10;//mx
		$my03 = -10;//my

		Fade($nus03, 0, 0, null, false);
		Rotate($nus03, 0, @0, 90, @0, null, true);
		Fade($smi03,0,1000,null,false);

		Fade($nus03,$描画時間03,1000,Dxl1,false);
		Fade($allnut03,0,0,null,false);
		Fade($smi03,$描画時間03,0,Dxl3,false);
		Rotate($nus03, $描画時間03, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut03, 0, @$nx03, @$ny03, null, true);//変更点
		Move($setnut03,$描画時間03, @$mx03, @$my03, Dxl1, false);
		Fade($setnut03,$描画時間03,1000,null,true);//変更点３
	}

	if($KwP03==2)
	{
		Fade($astnut03,$描画時間03,0,Axl3,false);
		Request($astnut03, Disused);
		Fade($setnut03,$描画時間03,1000,Dxl1,true);
	}

	if($KwP03==3)
	{
		$描画時間03 = $描画時間03/3;
		$nx03 = -10;//nx
		$ny03 = 10;//ny
		$mx03 = 10;//mx
		$my03 = -10;//my

		Fade($smi03,$描画時間03,1000,Axl3,false);
		Rotate($nus03, $描画時間03, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex03==1)
		{
			Rotate($astnut03, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus03, null);
		Rotate($nus03, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut03,0,0,null,false);
			Request($astnut03, Disused);
			Fade($nus03,0,0,null,false);

		Fade($smi03,0,1000,null,false);

		Fade($nus03,$描画時間03,1000,Dxl1,false);
		Fade($allnut03,0,0,null,false);
		Fade($smi03,$描画時間03,0,Dxl3,false);
		Rotate($nus03, $描画時間03, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus03, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut03, 0, @$nx03, @$ny03, null, true);//変更点
		Move($setnut03,$描画時間03, @$mx03, @$my03, Dxl1, false);
		Fade($setnut03,$描画時間03,1000,null,true);//変更点３
	}

	if($KwP03==4)
	{
		$描画時間03a = $描画時間03/2;

		Fade($astnut03,$描画時間03a,0,Axl3,false);
		Fade($setnut03,$描画時間03a,1000,Dxl1,false);

		Fade($smi03,$描画時間03,1000,Axl3,false);
		Rotate($nus03, $描画時間03, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex03==1)
		{
			Rotate($astnut03, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus03, Disused);
		WaitAction($nus03, null);
	}
}


function Face4()
{
	$setnut04 = $nus04 + "/" + $域本名 + "/" + $nut04;
	$astnut04 = $nus04 + "/" + $域本名 + "/" + $picnut04;
	$allnut04 = $nus04 + "/" + $域本名 + "/" + "*";

	if($KwP04==1)
	{
		$描画時間04 = $描画時間04/2;
		$nx04 = -10;//nx
		$ny04 = 10;//ny
		$mx04 = 10;//mx
		$my04 = -10;//my

		Fade($nus04, 0, 0, null, false);
		Rotate($nus04, 0, @0, 90, @0, null, true);
		Fade($smi04,0,1000,null,false);

		Fade($nus04,$描画時間04,1000,Dxl1,false);
		Fade($allnut04,0,0,null,false);
		Fade($smi04,$描画時間04,0,Dxl3,false);
		Rotate($nus04, $描画時間04, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut04, 0, @$nx04, @$ny04, null, true);//変更点
		Move($setnut04,$描画時間04, @$mx04, @$my04, Dxl1, false);
		Fade($setnut04,$描画時間04,1000,null,true);//変更点３
	}

	if($KwP04==2)
	{
		Fade($astnut04,$描画時間04,0,Axl3,false);
		Request($astnut04, Disused);
		Fade($setnut04,$描画時間04,1000,Dxl1,true);
	}

	if($KwP04==3)
	{
		$描画時間04 = $描画時間04/3;
		$nx04 = -10;//nx
		$ny04 = 10;//ny
		$mx04 = 10;//mx
		$my04 = -10;//my

		Fade($smi04,$描画時間04,1000,Axl3,false);
		Rotate($nus04, $描画時間04, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex04==1)
		{
			Rotate($astnut04, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus04, null);
		Rotate($nus04, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut04,0,0,null,false);
			Request($astnut04, Disused);
			Fade($nus04,0,0,null,false);

		Fade($smi04,0,1000,null,false);

		Fade($nus04,$描画時間04,1000,Dxl1,false);
		Fade($allnut04,0,0,null,false);
		Fade($smi04,$描画時間04,0,Dxl3,false);
		Rotate($nus04, $描画時間04, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus04, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut04, 0, @$nx04, @$ny04, null, true);//変更点
		Move($setnut04,$描画時間04, @$mx04, @$my04, Dxl1, false);
		Fade($setnut04,$描画時間04,1000,null,true);//変更点３
	}

	if($KwP04==4)
	{
		$描画時間04a = $描画時間04/2;

		Fade($astnut04,$描画時間04a,0,Axl3,false);
		Fade($setnut04,$描画時間04a,1000,Dxl1,false);

		Fade($smi04,$描画時間04,1000,Axl3,false);
		Rotate($nus04, $描画時間04, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex04==1)
		{
			Rotate($astnut04, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus04, Disused);
		WaitAction($nus04, null);
	}
}

function Face5()
{
	$setnut05 = $nus05 + "/" + $域本名 + "/" + $nut05;
	$astnut05 = $nus05 + "/" + $域本名 + "/" + $picnut05;
	$allnut05 = $nus05 + "/" + $域本名 + "/" + "*";

	if($KwP05==1)
	{
		$描画時間05 = $描画時間05/2;
		$nx05 = -10;//nx
		$ny05 = 10;//ny
		$mx05 = 10;//mx
		$my05 = -10;//my

		Fade($nus05, 0, 0, null, false);
		Rotate($nus05, 0, @0, 90, @0, null, true);
		Fade($smi05,0,1000,null,false);

		Fade($nus05,$描画時間05,1000,Dxl1,false);
		Fade($allnut05,0,0,null,false);
		Fade($smi05,$描画時間05,0,Dxl3,false);
		Rotate($nus05, $描画時間05, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut05, 0, @$nx05, @$ny05, null, true);//変更点
		Move($setnut05,$描画時間05, @$mx05, @$my05, Dxl1, false);
		Fade($setnut05,$描画時間05,1000,null,true);//変更点３
	}

	if($KwP05==2)
	{
		Fade($astnut05,$描画時間05,0,Axl3,false);
		Request($astnut05, Disused);
		Fade($setnut05,$描画時間05,1000,Dxl1,true);
	}

	if($KwP05==3)
	{
		$描画時間05 = $描画時間05/3;
		$nx05 = -10;//nx
		$ny05 = 10;//ny
		$mx05 = 10;//mx
		$my05 = -10;//my

		Fade($smi05,$描画時間05,1000,Axl3,false);
		Rotate($nus05, $描画時間05, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex05==1)
		{
			Rotate($astnut05, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus05, null);
		Rotate($nus05, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut05,0,0,null,false);
			Request($astnut05, Disused);
			Fade($nus05,0,0,null,false);

		Fade($smi05,0,1000,null,false);

		Fade($nus05,$描画時間05,1000,Dxl1,false);
		Fade($allnut05,0,0,null,false);
		Fade($smi05,$描画時間05,0,Dxl3,false);
		Rotate($nus05, $描画時間05, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus05, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut05, 0, @$nx05, @$ny05, null, true);//変更点
		Move($setnut05,$描画時間05, @$mx05, @$my05, Dxl1, false);
		Fade($setnut05,$描画時間05,1000,null,true);//変更点３
	}

	if($KwP05==4)
	{
		$描画時間05a = $描画時間05/2;

		Fade($astnut05,$描画時間05a,0,Axl3,false);
		Fade($setnut05,$描画時間05a,1000,Dxl1,false);

		Fade($smi05,$描画時間05,1000,Axl3,false);
		Rotate($nus05, $描画時間05, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex05==1)
		{
			Rotate($astnut05, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus05, Disused);
		WaitAction($nus05, null);
	}
}

function Face6()
{
	$setnut06 = $nus06 + "/" + $域本名 + "/" + $nut06;
	$astnut06 = $nus06 + "/" + $域本名 + "/" + $picnut06;
	$allnut06 = $nus06 + "/" + $域本名 + "/" + "*";

	if($KwP06==1)
	{
		$描画時間06 = $描画時間06/2;
		$nx06 = -10;//nx
		$ny06 = 10;//ny
		$mx06 = 10;//mx
		$my06 = -10;//my

		Fade($nus06, 0, 0, null, false);
		Rotate($nus06, 0, @0, 90, @0, null, true);
		Fade($smi06,0,1000,null,false);

		Fade($nus06,$描画時間06,1000,Dxl1,false);
		Fade($allnut06,0,0,null,false);
		Fade($smi06,$描画時間06,0,Dxl3,false);
		Rotate($nus06, $描画時間06, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut06, 0, @$nx06, @$ny06, null, true);//変更点
		Move($setnut06,$描画時間06, @$mx06, @$my06, Dxl1, false);
		Fade($setnut06,$描画時間06,1000,null,true);//変更点３
	}

	if($KwP06==2)
	{
		Fade($astnut06,$描画時間06,0,Axl3,false);
		Request($astnut06, Disused);
		Fade($setnut06,$描画時間06,1000,Dxl1,true);
	}

	if($KwP06==3)
	{
		$描画時間06 = $描画時間06/3;
		$nx06 = -10;//nx
		$ny06 = 10;//ny
		$mx06 = 10;//mx
		$my06 = -10;//my

		Fade($smi06,$描画時間06,1000,Axl3,false);
		Rotate($nus06, $描画時間06, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex06==1)
		{
			Rotate($astnut06, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus06, null);
		Rotate($nus06, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut06,0,0,null,false);
			Request($astnut06, Disused);
			Fade($nus06,0,0,null,false);

		Fade($smi06,0,1000,null,false);

		Fade($nus06,$描画時間06,1000,Dxl1,false);
		Fade($allnut06,0,0,null,false);
		Fade($smi06,$描画時間06,0,Dxl3,false);
		Rotate($nus06, $描画時間06, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus06, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut06, 0, @$nx06, @$ny06, null, true);//変更点
		Move($setnut06,$描画時間06, @$mx06, @$my06, Dxl1, false);
		Fade($setnut06,$描画時間06,1000,null,true);//変更点３
	}

	if($KwP06==4)
	{
		$描画時間06a = $描画時間06/2;

		Fade($astnut06,$描画時間06a,0,Axl3,false);
		Fade($setnut06,$描画時間06a,1000,Dxl1,false);

		Fade($smi06,$描画時間06,1000,Axl3,false);
		Rotate($nus06, $描画時間06, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex06==1)
		{
			Rotate($astnut06, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus06, Disused);
		WaitAction($nus06, null);
	}
}

function Face7()
{
	$setnut07 = $nus07 + "/" + $域本名 + "/" + $nut07;
	$astnut07 = $nus07 + "/" + $域本名 + "/" + $picnut07;
	$allnut07 = $nus07 + "/" + $域本名 + "/" + "*";

	if($KwP07==1)
	{
		$描画時間07 = $描画時間07/2;
		$nx07 = -10;//nx
		$ny07 = 10;//ny
		$mx07 = 10;//mx
		$my07 = -10;//my

		Fade($nus07, 0, 0, null, false);
		Rotate($nus07, 0, @0, 90, @0, null, true);
		Fade($smi07,0,1000,null,false);

		Fade($nus07,$描画時間07,1000,Dxl1,false);
		Fade($allnut07,0,0,null,false);
		Fade($smi07,$描画時間07,0,Dxl3,false);
		Rotate($nus07, $描画時間07, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut07, 0, @$nx07, @$ny07, null, true);//変更点
		Move($setnut07,$描画時間07, @$mx07, @$my07, Dxl1, false);
		Fade($setnut07,$描画時間07,1000,null,true);//変更点３
	}

	if($KwP07==2)
	{
		Fade($astnut07,$描画時間07,0,Axl3,false);
		Request($astnut07, Disused);
		Fade($setnut07,$描画時間07,1000,Dxl1,true);
	}

	if($KwP07==3)
	{
		$描画時間07 = $描画時間07/3;
		$nx07 = -10;//nx
		$ny07 = 10;//ny
		$mx07 = 10;//mx
		$my07 = -10;//my

		Fade($smi07,$描画時間07,1000,Axl3,false);
		Rotate($nus07, $描画時間07, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex07==1)
		{
			Rotate($astnut07, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus07, null);
		Rotate($nus07, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut07,0,0,null,false);
			Request($astnut07, Disused);
			Fade($nus07,0,0,null,false);

		Fade($smi07,0,1000,null,false);

		Fade($nus07,$描画時間07,1000,Dxl1,false);
		Fade($allnut07,0,0,null,false);
		Fade($smi07,$描画時間07,0,Dxl3,false);
		Rotate($nus07, $描画時間07, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus07, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut07, 0, @$nx07, @$ny07, null, true);//変更点
		Move($setnut07,$描画時間07, @$mx07, @$my07, Dxl1, false);
		Fade($setnut07,$描画時間07,1000,null,true);//変更点３
	}

	if($KwP07==4)
	{
		$描画時間07a = $描画時間07/2;

		Fade($astnut07,$描画時間07a,0,Axl3,false);
		Fade($setnut07,$描画時間07a,1000,Dxl1,false);

		Fade($smi07,$描画時間07,1000,Axl3,false);
		Rotate($nus07, $描画時間07, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex07==1)
		{
			Rotate($astnut07, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus07, Disused);
		WaitAction($nus07, null);
	}
}

function Face8()
{
	$setnut08 = $nus08 + "/" + $域本名 + "/" + $nut08;
	$astnut08 = $nus08 + "/" + $域本名 + "/" + $picnut08;
	$allnut08 = $nus08 + "/" + $域本名 + "/" + "*";

	if($KwP08==1)
	{
		$描画時間08 = $描画時間08/2;
		$nx08 = -10;//nx
		$ny08 = 10;//ny
		$mx08 = 10;//mx
		$my08 = -10;//my

		Fade($nus08, 0, 0, null, false);
		Rotate($nus08, 0, @0, 90, @0, null, true);
		Fade($smi08,0,1000,null,false);

		Fade($nus08,$描画時間08,1000,Dxl1,false);
		Fade($allnut08,0,0,null,false);
		Fade($smi08,$描画時間08,0,Dxl3,false);
		Rotate($nus08, $描画時間08, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut08, 0, @$nx08, @$ny08, null, true);//変更点
		Move($setnut08,$描画時間08, @$mx08, @$my08, Dxl1, false);
		Fade($setnut08,$描画時間08,1000,null,true);//変更点３
	}

	if($KwP08==2)
	{
		Fade($astnut08,$描画時間08,0,Axl3,false);
		Request($astnut08, Disused);
		Fade($setnut08,$描画時間08,1000,Dxl1,true);
	}

	if($KwP08==3)
	{
		$描画時間08 = $描画時間08/3;
		$nx08 = -10;//nx
		$ny08 = 10;//ny
		$mx08 = 10;//mx
		$my08 = -10;//my

		Fade($smi08,$描画時間08,1000,Axl3,false);
		Rotate($nus08, $描画時間08, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex08==1)
		{
			Rotate($astnut08, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus08, null);
		Rotate($nus08, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut08,0,0,null,false);
			Request($astnut08, Disused);
			Fade($nus08,0,0,null,false);

		Fade($smi08,0,1000,null,false);

		Fade($nus08,$描画時間08,1000,Dxl1,false);
		Fade($allnut08,0,0,null,false);
		Fade($smi08,$描画時間08,0,Dxl3,false);
		Rotate($nus08, $描画時間08, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus08, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut08, 0, @$nx08, @$ny08, null, true);//変更点
		Move($setnut08,$描画時間08, @$mx08, @$my08, Dxl1, false);
		Fade($setnut08,$描画時間08,1000,null,true);//変更点３
	}

	if($KwP08==4)
	{
		$描画時間08a = $描画時間08/2;

		Fade($astnut08,$描画時間08a,0,Axl3,false);
		Fade($setnut08,$描画時間08a,1000,Dxl1,false);

		Fade($smi08,$描画時間08,1000,Axl3,false);
		Rotate($nus08, $描画時間08, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex08==1)
		{
			Rotate($astnut08, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus08, Disused);
		WaitAction($nus08, null);
	}
}

function Face9()
{
	$setnut09 = $nus09 + "/" + $域本名 + "/" + $nut09;
	$astnut09 = $nus09 + "/" + $域本名 + "/" + $picnut09;
	$allnut09 = $nus09 + "/" + $域本名 + "/" + "*";

	if($KwP09==1)
	{
		$描画時間09 = $描画時間09/2;
		$nx09 = -10;//nx
		$ny09 = 10;//ny
		$mx09 = 10;//mx
		$my09 = -10;//my

		Fade($nus09, 0, 0, null, false);
		Rotate($nus09, 0, @0, 90, @0, null, true);
		Fade($smi09,0,1000,null,false);

		Fade($nus09,$描画時間09,1000,Dxl1,false);
		Fade($allnut09,0,0,null,false);
		Fade($smi09,$描画時間09,0,Dxl3,false);
		Rotate($nus09, $描画時間09, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut09, 0, @$nx09, @$ny09, null, true);//変更点
		Move($setnut09,$描画時間09, @$mx09, @$my09, Dxl1, false);
		Fade($setnut09,$描画時間09,1000,null,true);//変更点３
	}

	if($KwP09==2)
	{
		Fade($astnut09,$描画時間09,0,Axl3,false);
		Request($astnut09, Disused);
		Fade($setnut09,$描画時間09,1000,Dxl1,true);
	}

	if($KwP09==3)
	{
		$描画時間09 = $描画時間09/3;
		$nx09 = -10;//nx
		$ny09 = 10;//ny
		$mx09 = 10;//mx
		$my09 = -10;//my

		Fade($smi09,$描画時間09,1000,Axl3,false);
		Rotate($nus09, $描画時間09, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex09==1)
		{
			Rotate($astnut09, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus09, null);
		Rotate($nus09, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut09,0,0,null,false);
			Request($astnut09, Disused);
			Fade($nus09,0,0,null,false);

		Fade($smi09,0,1000,null,false);

		Fade($nus09,$描画時間09,1000,Dxl1,false);
		Fade($allnut09,0,0,null,false);
		Fade($smi09,$描画時間09,0,Dxl3,false);
		Rotate($nus09, $描画時間09, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus09, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut09, 0, @$nx09, @$ny09, null, true);//変更点
		Move($setnut09,$描画時間09, @$mx09, @$my09, Dxl1, false);
		Fade($setnut09,$描画時間09,1000,null,true);//変更点３
	}

	if($KwP09==4)
	{
		$描画時間09a = $描画時間09/2;

		Fade($astnut09,$描画時間09a,0,Axl3,false);
		Fade($setnut09,$描画時間09a,1000,Dxl1,false);

		Fade($smi09,$描画時間09,1000,Axl3,false);
		Rotate($nus09, $描画時間09, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex09==1)
		{
			Rotate($astnut09, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus09, Disused);
		WaitAction($nus09, null);
	}
}

function Face10()
{
	$setnut10 = $nus10 + "/" + $域本名 + "/" + $nut10;
	$astnut10 = $nus10 + "/" + $域本名 + "/" + $picnut10;
	$allnut10 = $nus10 + "/" + $域本名 + "/" + "*";

	if($KwP10==1)
	{
		$描画時間10 = $描画時間10/2;
		$nx10 = -10;//nx
		$ny10 = 10;//ny
		$mx10 = 10;//mx
		$my10 = -10;//my

		Fade($nus10, 0, 0, null, false);
		Rotate($nus10, 0, @0, 90, @0, null, true);
		Fade($smi10,0,1000,null,false);

		Fade($nus10,$描画時間10,1000,Dxl1,false);
		Fade($allnut10,0,0,null,false);
		Fade($smi10,$描画時間10,0,Dxl3,false);
		Rotate($nus10, $描画時間10, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut10, 0, @$nx10, @$ny10, null, true);//変更点
		Move($setnut10,$描画時間10, @$mx10, @$my10, Dxl1, false);
		Fade($setnut10,$描画時間10,1000,null,true);//変更点３
	}

	if($KwP10==2)
	{
		Fade($astnut10,$描画時間10,0,Axl3,false);
		Request($astnut10, Disused);
		Fade($setnut10,$描画時間10,1000,Dxl1,true);
	}

	if($KwP10==3)
	{
		$描画時間10 = $描画時間10/3;
		$nx10 = -10;//nx
		$ny10 = 10;//ny
		$mx10 = 10;//mx
		$my10 = -10;//my

		Fade($smi10,$描画時間10,1000,Axl3,false);
		Rotate($nus10, $描画時間10, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex10==1)
		{
			Rotate($astnut10, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus10, null);
		Rotate($nus10, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut10,0,0,null,false);
			Request($astnut10, Disused);
			Fade($nus10,0,0,null,false);

		Fade($smi10,0,1000,null,false);

		Fade($nus10,$描画時間10,1000,Dxl1,false);
		Fade($allnut10,0,0,null,false);
		Fade($smi10,$描画時間10,0,Dxl3,false);
		Rotate($nus10, $描画時間10, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus10, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut10, 0, @$nx10, @$ny10, null, true);//変更点
		Move($setnut10,$描画時間10, @$mx10, @$my10, Dxl1, false);
		Fade($setnut10,$描画時間10,1000,null,true);//変更点３
	}

	if($KwP10==4)
	{
		$描画時間10a = $描画時間10/2;

		Fade($astnut10,$描画時間10a,0,Axl3,false);
		Fade($setnut10,$描画時間10a,1000,Dxl1,false);

		Fade($smi10,$描画時間10,1000,Axl3,false);
		Rotate($nus10, $描画時間10, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex10==1)
		{
			Rotate($astnut10, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus10, Disused);
		WaitAction($nus10, null);
	}
}

function Face11()
{
	$setnut11 = $nus11 + "/" + $域本名 + "/" + $nut11;
	$astnut11 = $nus11 + "/" + $域本名 + "/" + $picnut11;
	$allnut11 = $nus11 + "/" + $域本名 + "/" + "*";

	if($KwP11==1)
	{
		$描画時間11 = $描画時間11/2;
		$nx11 = -10;//nx
		$ny11 = 10;//ny
		$mx11 = 10;//mx
		$my11 = -10;//my

		Fade($nus11, 0, 0, null, false);
		Rotate($nus11, 0, @0, 90, @0, null, true);
		Fade($smi11,0,1000,null,false);

		Fade($nus11,$描画時間11,1000,Dxl1,false);
		Fade($allnut11,0,0,null,false);
		Fade($smi11,$描画時間11,0,Dxl3,false);
		Rotate($nus11, $描画時間11, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut11, 0, @$nx11, @$ny11, null, true);//変更点
		Move($setnut11,$描画時間11, @$mx11, @$my11, Dxl1, false);
		Fade($setnut11,$描画時間11,1000,null,true);//変更点３
	}

	if($KwP11==2)
	{
		Fade($astnut11,$描画時間11,0,Axl3,false);
		Request($astnut11, Disused);
		Fade($setnut11,$描画時間11,1000,Dxl1,true);
	}

	if($KwP11==3)
	{
		$描画時間11 = $描画時間11/3;
		$nx11 = -10;//nx
		$ny11 = 10;//ny
		$mx11 = 10;//mx
		$my11 = -10;//my

		Fade($smi11,$描画時間11,1000,Axl3,false);
		Rotate($nus11, $描画時間11, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex11==1)
		{
			Rotate($astnut11, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus11, null);
		Rotate($nus11, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut11,0,0,null,false);
			Request($astnut11, Disused);
			Fade($nus11,0,0,null,false);

		Fade($smi11,0,1000,null,false);

		Fade($nus11,$描画時間11,1000,Dxl1,false);
		Fade($allnut11,0,0,null,false);
		Fade($smi11,$描画時間11,0,Dxl3,false);
		Rotate($nus11, $描画時間11, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus11, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut11, 0, @$nx11, @$ny11, null, true);//変更点
		Move($setnut11,$描画時間11, @$mx11, @$my11, Dxl1, false);
		Fade($setnut11,$描画時間11,1000,null,true);//変更点３
	}

	if($KwP11==4)
	{
		$描画時間11a = $描画時間11/2;

		Fade($astnut11,$描画時間11a,0,Axl3,false);
		Fade($setnut11,$描画時間11a,1000,Dxl1,false);

		Fade($smi11,$描画時間11,1000,Axl3,false);
		Rotate($nus11, $描画時間11, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex11==1)
		{
			Rotate($astnut11, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus11, Disused);
		WaitAction($nus11, null);
	}
}

function Face12()
{
	$setnut12 = $nus12 + "/" + $域本名 + "/" + $nut12;
	$astnut12 = $nus12 + "/" + $域本名 + "/" + $picnut12;
	$allnut12 = $nus12 + "/" + $域本名 + "/" + "*";

	if($KwP12==1)
	{
		$描画時間12 = $描画時間12/2;
		$nx12 = -10;//nx
		$ny12 = 10;//ny
		$mx12 = 10;//mx
		$my12 = -10;//my

		Fade($nus12, 0, 0, null, false);
		Rotate($nus12, 0, @0, 90, @0, null, true);
		Fade($smi12,0,1000,null,false);

		Fade($nus12,$描画時間12,1000,Dxl1,false);
		Fade($allnut12,0,0,null,false);
		Fade($smi12,$描画時間12,0,Dxl3,false);
		Rotate($nus12, $描画時間12, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut12, 0, @$nx12, @$ny12, null, true);//変更点
		Move($setnut12,$描画時間12, @$mx12, @$my12, Dxl1, false);
		Fade($setnut12,$描画時間12,1000,null,true);//変更点３
	}

	if($KwP12==2)
	{
		Fade($astnut12,$描画時間12,0,Axl3,false);
		Request($astnut12, Disused);
		Fade($setnut12,$描画時間12,1000,Dxl1,true);
	}

	if($KwP12==3)
	{
		$描画時間12 = $描画時間12/3;
		$nx12 = -10;//nx
		$ny12 = 10;//ny
		$mx12 = 10;//mx
		$my12 = -10;//my

		Fade($smi12,$描画時間12,1000,Axl3,false);
		Rotate($nus12, $描画時間12, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex12==1)
		{
			Rotate($astnut12, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus12, null);
		Rotate($nus12, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut12,0,0,null,false);
			Request($astnut12, Disused);
			Fade($nus12,0,0,null,false);

		Fade($smi12,0,1000,null,false);

		Fade($nus12,$描画時間12,1000,Dxl1,false);
		Fade($allnut12,0,0,null,false);
		Fade($smi12,$描画時間12,0,Dxl3,false);
		Rotate($nus12, $描画時間12, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus12, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut12, 0, @$nx12, @$ny12, null, true);//変更点
		Move($setnut12,$描画時間12, @$mx12, @$my12, Dxl1, false);
		Fade($setnut12,$描画時間12,1000,null,true);//変更点３
	}

	if($KwP12==4)
	{
		$描画時間12a = $描画時間12/2;

		Fade($astnut12,$描画時間12a,0,Axl3,false);
		Fade($setnut12,$描画時間12a,1000,Dxl1,false);

		Fade($smi12,$描画時間12,1000,Axl3,false);
		Rotate($nus12, $描画時間12, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex12==1)
		{
			Rotate($astnut12, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus12, Disused);
		WaitAction($nus12, null);
	}
}

function Face13()
{
	$setnut13 = $nus13 + "/" + $域本名 + "/" + $nut13;
	$astnut13 = $nus13 + "/" + $域本名 + "/" + $picnut13;
	$allnut13 = $nus13 + "/" + $域本名 + "/" + "*";

	if($KwP13==1)
	{
		$描画時間13 = $描画時間13/2;
		$nx13 = -10;//nx
		$ny13 = 10;//ny
		$mx13 = 10;//mx
		$my13 = -10;//my

		Fade($nus13, 0, 0, null, false);
		Rotate($nus13, 0, @0, 90, @0, null, true);
		Fade($smi13,0,1000,null,false);

		Fade($nus13,$描画時間13,1000,Dxl1,false);
		Fade($allnut13,0,0,null,false);
		Fade($smi13,$描画時間13,0,Dxl3,false);
		Rotate($nus13, $描画時間13, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut13, 0, @$nx13, @$ny13, null, true);//変更点
		Move($setnut13,$描画時間13, @$mx13, @$my13, Dxl1, false);
		Fade($setnut13,$描画時間13,1000,null,true);//変更点３
	}

	if($KwP13==2)
	{
		Fade($astnut13,$描画時間13,0,Axl3,false);
		Request($astnut13, Disused);
		Fade($setnut13,$描画時間13,1000,Dxl1,true);
	}

	if($KwP13==3)
	{
		$描画時間13 = $描画時間13/3;
		$nx13 = -10;//nx
		$ny13 = 10;//ny
		$mx13 = 10;//mx
		$my13 = -10;//my

		Fade($smi13,$描画時間13,1000,Axl3,false);
		Rotate($nus13, $描画時間13, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex13==1)
		{
			Rotate($astnut13, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus13, null);
		Rotate($nus13, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut13,0,0,null,false);
			Request($astnut13, Disused);
			Fade($nus13,0,0,null,false);

		Fade($smi13,0,1000,null,false);

		Fade($nus13,$描画時間13,1000,Dxl1,false);
		Fade($allnut13,0,0,null,false);
		Fade($smi13,$描画時間13,0,Dxl3,false);
		Rotate($nus13, $描画時間13, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus13, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut13, 0, @$nx13, @$ny13, null, true);//変更点
		Move($setnut13,$描画時間13, @$mx13, @$my13, Dxl1, false);
		Fade($setnut13,$描画時間13,1000,null,true);//変更点３
	}

	if($KwP13==4)
	{
		$描画時間13a = $描画時間13/2;

		Fade($astnut13,$描画時間13a,0,Axl3,false);
		Fade($setnut13,$描画時間13a,1000,Dxl1,false);

		Fade($smi13,$描画時間13,1000,Axl3,false);
		Rotate($nus13, $描画時間13, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex13==1)
		{
			Rotate($astnut13, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus13, Disused);
		WaitAction($nus13, null);
	}
}

function Face14()
{
	$setnut14 = $nus14 + "/" + $域本名 + "/" + $nut14;
	$astnut14 = $nus14 + "/" + $域本名 + "/" + $picnut14;
	$allnut14 = $nus14 + "/" + $域本名 + "/" + "*";

	if($KwP14==1)
	{
		$描画時間14 = $描画時間14/2;
		$nx14 = -10;//nx
		$ny14 = 10;//ny
		$mx14 = 10;//mx
		$my14 = -10;//my

		Fade($nus14, 0, 0, null, false);
		Rotate($nus14, 0, @0, 90, @0, null, true);
		Fade($smi14,0,1000,null,false);

		Fade($nus14,$描画時間14,1000,Dxl1,false);
		Fade($allnut14,0,0,null,false);
		Fade($smi14,$描画時間14,0,Dxl3,false);
		Rotate($nus14, $描画時間14, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut14, 0, @$nx14, @$ny14, null, true);//変更点
		Move($setnut14,$描画時間14, @$mx14, @$my14, Dxl1, false);
		Fade($setnut14,$描画時間14,1000,null,true);//変更点３
	}

	if($KwP14==2)
	{
		Fade($astnut14,$描画時間14,0,Axl3,false);
		Request($astnut14, Disused);
		Fade($setnut14,$描画時間14,1000,Dxl1,true);
	}

	if($KwP14==3)
	{
		$描画時間14 = $描画時間14/3;
		$nx14 = -10;//nx
		$ny14 = 10;//ny
		$mx14 = 10;//mx
		$my14 = -10;//my

		Fade($smi14,$描画時間14,1000,Axl3,false);
		Rotate($nus14, $描画時間14, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex14==1)
		{
			Rotate($astnut14, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus14, null);
		Rotate($nus14, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut14,0,0,null,false);
			Request($astnut14, Disused);
			Fade($nus14,0,0,null,false);

		Fade($smi14,0,1000,null,false);

		Fade($nus14,$描画時間14,1000,Dxl1,false);
		Fade($allnut14,0,0,null,false);
		Fade($smi14,$描画時間14,0,Dxl3,false);
		Rotate($nus14, $描画時間14, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus14, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut14, 0, @$nx14, @$ny14, null, true);//変更点
		Move($setnut14,$描画時間14, @$mx14, @$my14, Dxl1, false);
		Fade($setnut14,$描画時間14,1000,null,true);//変更点３
	}

	if($KwP14==4)
	{
		$描画時間14a = $描画時間14/2;

		Fade($astnut14,$描画時間14a,0,Axl3,false);
		Fade($setnut14,$描画時間14a,1000,Dxl1,false);

		Fade($smi14,$描画時間14,1000,Axl3,false);
		Rotate($nus14, $描画時間14, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex14==1)
		{
			Rotate($astnut14, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus14, Disused);
		WaitAction($nus14, null);
	}
}

function Face15()
{
	$setnut15 = $nus15 + "/" + $域本名 + "/" + $nut15;
	$astnut15 = $nus15 + "/" + $域本名 + "/" + $picnut15;
	$allnut15 = $nus15 + "/" + $域本名 + "/" + "*";

	if($KwP15==1)
	{
		$描画時間15 = $描画時間15/2;
		$nx15 = -10;//nx
		$ny15 = 10;//ny
		$mx15 = 10;//mx
		$my15 = -10;//my

		Fade($nus15, 0, 0, null, false);
		Rotate($nus15, 0, @0, 90, @0, null, true);
		Fade($smi15,0,1000,null,false);

		Fade($nus15,$描画時間15,1000,Dxl1,false);
		Fade($allnut15,0,0,null,false);
		Fade($smi15,$描画時間15,0,Dxl3,false);
		Rotate($nus15, $描画時間15, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut15, 0, @$nx15, @$ny15, null, true);//変更点
		Move($setnut15,$描画時間15, @$mx15, @$my15, Dxl1, false);
		Fade($setnut15,$描画時間15,1000,null,true);//変更点３
	}

	if($KwP15==2)
	{
		Fade($astnut15,$描画時間15,0,Axl3,false);
		Request($astnut15, Disused);
		Fade($setnut15,$描画時間15,1000,Dxl1,true);
	}

	if($KwP15==3)
	{
		$描画時間15 = $描画時間15/3;
		$nx15 = -10;//nx
		$ny15 = 10;//ny
		$mx15 = 10;//mx
		$my15 = -10;//my

		Fade($smi15,$描画時間15,1000,Axl3,false);
		Rotate($nus15, $描画時間15, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex15==1)
		{
			Rotate($astnut15, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus15, null);
		Rotate($nus15, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut15,0,0,null,false);
			Request($astnut15, Disused);
			Fade($nus15,0,0,null,false);

		Fade($smi15,0,1000,null,false);

		Fade($nus15,$描画時間15,1000,Dxl1,false);
		Fade($allnut15,0,0,null,false);
		Fade($smi15,$描画時間15,0,Dxl3,false);
		Rotate($nus15, $描画時間15, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus15, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut15, 0, @$nx15, @$ny15, null, true);//変更点
		Move($setnut15,$描画時間15, @$mx15, @$my15, Dxl1, false);
		Fade($setnut15,$描画時間15,1000,null,true);//変更点３
	}

	if($KwP15==4)
	{
		$描画時間15a = $描画時間15/2;

		Fade($astnut15,$描画時間15a,0,Axl3,false);
		Fade($setnut15,$描画時間15a,1000,Dxl1,false);

		Fade($smi15,$描画時間15,1000,Axl3,false);
		Rotate($nus15, $描画時間15, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex15==1)
		{
			Rotate($astnut15, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus15, Disused);
		WaitAction($nus15, null);
	}
}

function Face16()
{
	$setnut16 = $nus16 + "/" + $域本名 + "/" + $nut16;
	$astnut16 = $nus16 + "/" + $域本名 + "/" + $picnut16;
	$allnut16 = $nus16 + "/" + $域本名 + "/" + "*";

	if($KwP16==1)
	{
		$描画時間16 = $描画時間16/2;
		$nx16 = -10;//nx
		$ny16 = 10;//ny
		$mx16 = 10;//mx
		$my16 = -10;//my

		Fade($nus16, 0, 0, null, false);
		Rotate($nus16, 0, @0, 90, @0, null, true);
		Fade($smi16,0,1000,null,false);

		Fade($nus16,$描画時間16,1000,Dxl1,false);
		Fade($allnut16,0,0,null,false);
		Fade($smi16,$描画時間16,0,Dxl3,false);
		Rotate($nus16, $描画時間16, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut16, 0, @$nx16, @$ny16, null, true);//変更点
		Move($setnut16,$描画時間16, @$mx16, @$my16, Dxl1, false);
		Fade($setnut16,$描画時間16,1000,null,true);//変更点３
	}

	if($KwP16==2)
	{
		Fade($astnut16,$描画時間16,0,Axl3,false);
		Request($astnut16, Disused);
		Fade($setnut16,$描画時間16,1000,Dxl1,true);
	}

	if($KwP16==3)
	{
		$描画時間16 = $描画時間16/3;
		$nx16 = -10;//nx
		$ny16 = 10;//ny
		$mx16 = 10;//mx
		$my16 = -10;//my

		Fade($smi16,$描画時間16,1000,Axl3,false);
		Rotate($nus16, $描画時間16, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex16==1)
		{
			Rotate($astnut16, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus16, null);
		Rotate($nus16, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut16,0,0,null,false);
			Request($astnut16, Disused);
			Fade($nus16,0,0,null,false);

		Fade($smi16,0,1000,null,false);

		Fade($nus16,$描画時間16,1000,Dxl1,false);
		Fade($allnut16,0,0,null,false);
		Fade($smi16,$描画時間16,0,Dxl3,false);
		Rotate($nus16, $描画時間16, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus16, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut16, 0, @$nx16, @$ny16, null, true);//変更点
		Move($setnut16,$描画時間16, @$mx16, @$my16, Dxl1, false);
		Fade($setnut16,$描画時間16,1000,null,true);//変更点３
	}

	if($KwP16==4)
	{
		$描画時間16a = $描画時間16/2;

		Fade($astnut16,$描画時間16a,0,Axl3,false);
		Fade($setnut16,$描画時間16a,1000,Dxl1,false);

		Fade($smi16,$描画時間16,1000,Axl3,false);
		Rotate($nus16, $描画時間16, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex16==1)
		{
			Rotate($astnut16, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus16, Disused);
		WaitAction($nus16, null);
	}
}

function Face17()
{
	$setnut17 = $nus17 + "/" + $域本名 + "/" + $nut17;
	$astnut17 = $nus17 + "/" + $域本名 + "/" + $picnut17;
	$allnut17 = $nus17 + "/" + $域本名 + "/" + "*";

	if($KwP17==1)
	{
		$描画時間17 = $描画時間17/2;
		$nx17 = -10;//nx
		$ny17 = 10;//ny
		$mx17 = 10;//mx
		$my17 = -10;//my

		Fade($nus17, 0, 0, null, false);
		Rotate($nus17, 0, @0, 90, @0, null, true);
		Fade($smi17,0,1000,null,false);

		Fade($nus17,$描画時間17,1000,Dxl1,false);
		Fade($allnut17,0,0,null,false);
		Fade($smi17,$描画時間17,0,Dxl3,false);
		Rotate($nus17, $描画時間17, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut17, 0, @$nx17, @$ny17, null, true);//変更点
		Move($setnut17,$描画時間17, @$mx17, @$my17, Dxl1, false);
		Fade($setnut17,$描画時間17,1000,null,true);//変更点３
	}

	if($KwP17==2)
	{
		Fade($astnut17,$描画時間17,0,Axl3,false);
		Request($astnut17, Disused);
		Fade($setnut17,$描画時間17,1000,Dxl1,true);
	}

	if($KwP17==3)
	{
		$描画時間17 = $描画時間17/3;
		$nx17 = -10;//nx
		$ny17 = 10;//ny
		$mx17 = 10;//mx
		$my17 = -10;//my

		Fade($smi17,$描画時間17,1000,Axl3,false);
		Rotate($nus17, $描画時間17, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex17==1)
		{
			Rotate($astnut17, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus17, null);
		Rotate($nus17, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut17,0,0,null,false);
			Request($astnut17, Disused);
			Fade($nus17,0,0,null,false);

		Fade($smi17,0,1000,null,false);

		Fade($nus17,$描画時間17,1000,Dxl1,false);
		Fade($allnut17,0,0,null,false);
		Fade($smi17,$描画時間17,0,Dxl3,false);
		Rotate($nus17, $描画時間17, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus17, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut17, 0, @$nx17, @$ny17, null, true);//変更点
		Move($setnut17,$描画時間17, @$mx17, @$my17, Dxl1, false);
		Fade($setnut17,$描画時間17,1000,null,true);//変更点３
	}

	if($KwP17==4)
	{
		$描画時間17a = $描画時間17/2;

		Fade($astnut17,$描画時間17a,0,Axl3,false);
		Fade($setnut17,$描画時間17a,1000,Dxl1,false);

		Fade($smi17,$描画時間17,1000,Axl3,false);
		Rotate($nus17, $描画時間17, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex17==1)
		{
			Rotate($astnut17, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus17, Disused);
		WaitAction($nus17, null);
	}
}

function Face18()
{
	$setnut18 = $nus18 + "/" + $域本名 + "/" + $nut18;
	$astnut18 = $nus18 + "/" + $域本名 + "/" + $picnut18;
	$allnut18 = $nus18 + "/" + $域本名 + "/" + "*";

	if($KwP18==1)
	{
		$描画時間18 = $描画時間18/2;
		$nx18 = -10;//nx
		$ny18 = 10;//ny
		$mx18 = 10;//mx
		$my18 = -10;//my

		Fade($nus18, 0, 0, null, false);
		Rotate($nus18, 0, @0, 90, @0, null, true);
		Fade($smi18,0,1000,null,false);

		Fade($nus18,$描画時間18,1000,Dxl1,false);
		Fade($allnut18,0,0,null,false);
		Fade($smi18,$描画時間18,0,Dxl3,false);
		Rotate($nus18, $描画時間18, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut18, 0, @$nx18, @$ny18, null, true);//変更点
		Move($setnut18,$描画時間18, @$mx18, @$my18, Dxl1, false);
		Fade($setnut18,$描画時間18,1000,null,true);//変更点３
	}

	if($KwP18==2)
	{
		Fade($astnut18,$描画時間18,0,Axl3,false);
		Request($astnut18, Disused);
		Fade($setnut18,$描画時間18,1000,Dxl1,true);
	}

	if($KwP18==3)
	{
		$描画時間18 = $描画時間18/3;
		$nx18 = -10;//nx
		$ny18 = 10;//ny
		$mx18 = 10;//mx
		$my18 = -10;//my

		Fade($smi18,$描画時間18,1000,Axl3,false);
		Rotate($nus18, $描画時間18, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex18==1)
		{
			Rotate($astnut18, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus18, null);
		Rotate($nus18, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut18,0,0,null,false);
			Request($astnut18, Disused);
			Fade($nus18,0,0,null,false);

		Fade($smi18,0,1000,null,false);

		Fade($nus18,$描画時間18,1000,Dxl1,false);
		Fade($allnut18,0,0,null,false);
		Fade($smi18,$描画時間18,0,Dxl3,false);
		Rotate($nus18, $描画時間18, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus18, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut18, 0, @$nx18, @$ny18, null, true);//変更点
		Move($setnut18,$描画時間18, @$mx18, @$my18, Dxl1, false);
		Fade($setnut18,$描画時間18,1000,null,true);//変更点３
	}

	if($KwP18==4)
	{
		$描画時間18a = $描画時間18/2;

		Fade($astnut18,$描画時間18a,0,Axl3,false);
		Fade($setnut18,$描画時間18a,1000,Dxl1,false);

		Fade($smi18,$描画時間18,1000,Axl3,false);
		Rotate($nus18, $描画時間18, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex18==1)
		{
			Rotate($astnut18, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus18, Disused);
		WaitAction($nus18, null);
	}
}

function Face19()
{
	$setnut19 = $nus19 + "/" + $域本名 + "/" + $nut19;
	$astnut19 = $nus19 + "/" + $域本名 + "/" + $picnut19;
	$allnut19 = $nus19 + "/" + $域本名 + "/" + "*";

	if($KwP19==1)
	{
		$描画時間19 = $描画時間19/2;
		$nx19 = -10;//nx
		$ny19 = 10;//ny
		$mx19 = 10;//mx
		$my19 = -10;//my

		Fade($nus19, 0, 0, null, false);
		Rotate($nus19, 0, @0, 90, @0, null, true);
		Fade($smi19,0,1000,null,false);

		Fade($nus19,$描画時間19,1000,Dxl1,false);
		Fade($allnut19,0,0,null,false);
		Fade($smi19,$描画時間19,0,Dxl3,false);
		Rotate($nus19, $描画時間19, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut19, 0, @$nx19, @$ny19, null, true);//変更点
		Move($setnut19,$描画時間19, @$mx19, @$my19, Dxl1, false);
		Fade($setnut19,$描画時間19,1000,null,true);//変更点３
	}

	if($KwP19==2)
	{
		Fade($astnut19,$描画時間19,0,Axl3,false);
		Request($astnut19, Disused);
		Fade($setnut19,$描画時間19,1000,Dxl1,true);
	}

	if($KwP19==3)
	{
		$描画時間19 = $描画時間19/3;
		$nx19 = -10;//nx
		$ny19 = 10;//ny
		$mx19 = 10;//mx
		$my19 = -10;//my

		Fade($smi19,$描画時間19,1000,Axl3,false);
		Rotate($nus19, $描画時間19, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex19==1)
		{
			Rotate($astnut19, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus19, null);
		Rotate($nus19, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut19,0,0,null,false);
			Request($astnut19, Disused);
			Fade($nus19,0,0,null,false);

		Fade($smi19,0,1000,null,false);

		Fade($nus19,$描画時間19,1000,Dxl1,false);
		Fade($allnut19,0,0,null,false);
		Fade($smi19,$描画時間19,0,Dxl3,false);
		Rotate($nus19, $描画時間19, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus19, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut19, 0, @$nx19, @$ny19, null, true);//変更点
		Move($setnut19,$描画時間19, @$mx19, @$my19, Dxl1, false);
		Fade($setnut19,$描画時間19,1000,null,true);//変更点３
	}

	if($KwP19==4)
	{
		$描画時間19a = $描画時間19/2;

		Fade($astnut19,$描画時間19a,0,Axl3,false);
		Fade($setnut19,$描画時間19a,1000,Dxl1,false);

		Fade($smi19,$描画時間19,1000,Axl3,false);
		Rotate($nus19, $描画時間19, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex19==1)
		{
			Rotate($astnut19, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus19, Disused);
		WaitAction($nus19, null);
	}
}

function Face20()
{
	$setnut20 = $nus20 + "/" + $域本名 + "/" + $nut20;
	$astnut20 = $nus20 + "/" + $域本名 + "/" + $picnut20;
	$allnut20 = $nus20 + "/" + $域本名 + "/" + "*";

	if($KwP20==1)
	{
		$描画時間20 = $描画時間20/2;
		$nx20 = -10;//nx
		$ny20 = 10;//ny
		$mx20 = 10;//mx
		$my20 = -10;//my

		Fade($nus20, 0, 0, null, false);
		Rotate($nus20, 0, @0, 90, @0, null, true);
		Fade($smi20,0,1000,null,false);

		Fade($nus20,$描画時間20,1000,Dxl1,false);
		Fade($allnut20,0,0,null,false);
		Fade($smi20,$描画時間20,0,Dxl3,false);
		Rotate($nus20, $描画時間20, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut20, 0, @$nx20, @$ny20, null, true);//変更点
		Move($setnut20,$描画時間20, @$mx20, @$my20, Dxl1, false);
		Fade($setnut20,$描画時間20,1000,null,true);//変更点３
	}

	if($KwP20==2)
	{
		Fade($astnut20,$描画時間20,0,Axl3,false);
		Request($astnut20, Disused);
		Fade($setnut20,$描画時間20,1000,Dxl1,true);
	}

	if($KwP20==3)
	{
		$描画時間20 = $描画時間20/3;
		$nx20 = -10;//nx
		$ny20 = 10;//ny
		$mx20 = 10;//mx
		$my20 = -10;//my

		Fade($smi20,$描画時間20,1000,Axl3,false);
		Rotate($nus20, $描画時間20, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex20==1)
		{
			Rotate($astnut20, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus20, null);
		Rotate($nus20, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut20,0,0,null,false);
			Request($astnut20, Disused);
			Fade($nus20,0,0,null,false);

		Fade($smi20,0,1000,null,false);

		Fade($nus20,$描画時間20,1000,Dxl1,false);
		Fade($allnut20,0,0,null,false);
		Fade($smi20,$描画時間20,0,Dxl3,false);
		Rotate($nus20, $描画時間20, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus20, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut20, 0, @$nx20, @$ny20, null, true);//変更点
		Move($setnut20,$描画時間20, @$mx20, @$my20, Dxl1, false);
		Fade($setnut20,$描画時間20,1000,null,true);//変更点３
	}

	if($KwP20==4)
	{
		$描画時間20a = $描画時間20/2;

		Fade($astnut20,$描画時間20a,0,Axl3,false);
		Fade($setnut20,$描画時間20a,1000,Dxl1,false);

		Fade($smi20,$描画時間20,1000,Axl3,false);
		Rotate($nus20, $描画時間20, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex20==1)
		{
			Rotate($astnut20, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus20, Disused);
		WaitAction($nus20, null);
	}
}

function Face21()
{
	$setnut21 = $nus21 + "/" + $域本名 + "/" + $nut21;
	$astnut21 = $nus21 + "/" + $域本名 + "/" + $picnut21;
	$allnut21 = $nus21 + "/" + $域本名 + "/" + "*";

	if($KwP21==1)
	{
		$描画時間21 = $描画時間21/2;
		$nx21 = -10;//nx
		$ny21 = 10;//ny
		$mx21 = 10;//mx
		$my21 = -10;//my

		Fade($nus21, 0, 0, null, false);
		Rotate($nus21, 0, @0, 90, @0, null, true);
		Fade($smi21,0,1000,null,false);

		Fade($nus21,$描画時間21,1000,Dxl1,false);
		Fade($allnut21,0,0,null,false);
		Fade($smi21,$描画時間21,0,Dxl3,false);
		Rotate($nus21, $描画時間21, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut21, 0, @$nx21, @$ny21, null, true);//変更点
		Move($setnut21,$描画時間21, @$mx21, @$my21, Dxl1, false);
		Fade($setnut21,$描画時間21,1000,null,true);//変更点３
	}

	if($KwP21==2)
	{
		Fade($astnut21,$描画時間21,0,Axl3,false);
		Request($astnut21, Disused);
		Fade($setnut21,$描画時間21,1000,Dxl1,true);
	}

	if($KwP21==3)
	{
		$描画時間21 = $描画時間21/3;
		$nx21 = -10;//nx
		$ny21 = 10;//ny
		$mx21 = 10;//mx
		$my21 = -10;//my

		Fade($smi21,$描画時間21,1000,Axl3,false);
		Rotate($nus21, $描画時間21, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex21==1)
		{
			Rotate($astnut21, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus21, null);
		Rotate($nus21, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut21,0,0,null,false);
			Request($astnut21, Disused);
			Fade($nus21,0,0,null,false);

		Fade($smi21,0,1000,null,false);

		Fade($nus21,$描画時間21,1000,Dxl1,false);
		Fade($allnut21,0,0,null,false);
		Fade($smi21,$描画時間21,0,Dxl3,false);
		Rotate($nus21, $描画時間21, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus21, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut21, 0, @$nx21, @$ny21, null, true);//変更点
		Move($setnut21,$描画時間21, @$mx21, @$my21, Dxl1, false);
		Fade($setnut21,$描画時間21,1000,null,true);//変更点３
	}

	if($KwP21==4)
	{
		$描画時間21a = $描画時間21/2;

		Fade($astnut21,$描画時間21a,0,Axl3,false);
		Fade($setnut21,$描画時間21a,1000,Dxl1,false);

		Fade($smi21,$描画時間21,1000,Axl3,false);
		Rotate($nus21, $描画時間21, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex21==1)
		{
			Rotate($astnut21, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus21, Disused);
		WaitAction($nus21, null);
	}
}

function Face22()
{
	$setnut22 = $nus22 + "/" + $域本名 + "/" + $nut22;
	$astnut22 = $nus22 + "/" + $域本名 + "/" + $picnut22;
	$allnut22 = $nus22 + "/" + $域本名 + "/" + "*";

	if($KwP22==1)
	{
		$描画時間22 = $描画時間22/2;
		$nx22 = -10;//nx
		$ny22 = 10;//ny
		$mx22 = 10;//mx
		$my22 = -10;//my

		Fade($nus22, 0, 0, null, false);
		Rotate($nus22, 0, @0, 90, @0, null, true);
		Fade($smi22,0,1000,null,false);

		Fade($nus22,$描画時間22,1000,Dxl1,false);
		Fade($allnut22,0,0,null,false);
		Fade($smi22,$描画時間22,0,Dxl3,false);
		Rotate($nus22, $描画時間22, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut22, 0, @$nx22, @$ny22, null, true);//変更点
		Move($setnut22,$描画時間22, @$mx22, @$my22, Dxl1, false);
		Fade($setnut22,$描画時間22,1000,null,true);//変更点３
	}

	if($KwP22==2)
	{
		Fade($astnut22,$描画時間22,0,Axl3,false);
		Request($astnut22, Disused);
		Fade($setnut22,$描画時間22,1000,Dxl1,true);
	}

	if($KwP22==3)
	{
		$描画時間22 = $描画時間22/3;
		$nx22 = -10;//nx
		$ny22 = 10;//ny
		$mx22 = 10;//mx
		$my22 = -10;//my

		Fade($smi22,$描画時間22,1000,Axl3,false);
		Rotate($nus22, $描画時間22, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex22==1)
		{
			Rotate($astnut22, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus22, null);
		Rotate($nus22, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut22,0,0,null,false);
			Request($astnut22, Disused);
			Fade($nus22,0,0,null,false);

		Fade($smi22,0,1000,null,false);

		Fade($nus22,$描画時間22,1000,Dxl1,false);
		Fade($allnut22,0,0,null,false);
		Fade($smi22,$描画時間22,0,Dxl3,false);
		Rotate($nus22, $描画時間22, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus22, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut22, 0, @$nx22, @$ny22, null, true);//変更点
		Move($setnut22,$描画時間22, @$mx22, @$my22, Dxl1, false);
		Fade($setnut22,$描画時間22,1000,null,true);//変更点３
	}

	if($KwP22==4)
	{
		$描画時間22a = $描画時間22/2;

		Fade($astnut22,$描画時間22a,0,Axl3,false);
		Fade($setnut22,$描画時間22a,1000,Dxl1,false);

		Fade($smi22,$描画時間22,1000,Axl3,false);
		Rotate($nus22, $描画時間22, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex22==1)
		{
			Rotate($astnut22, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus22, Disused);
		WaitAction($nus22, null);
	}
}

function Face23()
{
	$setnut23 = $nus23 + "/" + $域本名 + "/" + $nut23;
	$astnut23 = $nus23 + "/" + $域本名 + "/" + $picnut23;
	$allnut23 = $nus23 + "/" + $域本名 + "/" + "*";

	if($KwP23==1)
	{
		$描画時間23 = $描画時間23/2;
		$nx23 = -10;//nx
		$ny23 = 10;//ny
		$mx23 = 10;//mx
		$my23 = -10;//my

		Fade($nus23, 0, 0, null, false);
		Rotate($nus23, 0, @0, 90, @0, null, true);
		Fade($smi23,0,1000,null,false);

		Fade($nus23,$描画時間23,1000,Dxl1,false);
		Fade($allnut23,0,0,null,false);
		Fade($smi23,$描画時間23,0,Dxl3,false);
		Rotate($nus23, $描画時間23, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut23, 0, @$nx23, @$ny23, null, true);//変更点
		Move($setnut23,$描画時間23, @$mx23, @$my23, Dxl1, false);
		Fade($setnut23,$描画時間23,1000,null,true);//変更点３
	}

	if($KwP23==2)
	{
		Fade($astnut23,$描画時間23,0,Axl3,false);
		Request($astnut23, Disused);
		Fade($setnut23,$描画時間23,1000,Dxl1,true);
	}

	if($KwP23==3)
	{
		$描画時間23 = $描画時間23/3;
		$nx23 = -10;//nx
		$ny23 = 10;//ny
		$mx23 = 10;//mx
		$my23 = -10;//my

		Fade($smi23,$描画時間23,1000,Axl3,false);
		Rotate($nus23, $描画時間23, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex23==1)
		{
			Rotate($astnut23, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus23, null);
		Rotate($nus23, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut23,0,0,null,false);
			Request($astnut23, Disused);
			Fade($nus23,0,0,null,false);

		Fade($smi23,0,1000,null,false);

		Fade($nus23,$描画時間23,1000,Dxl1,false);
		Fade($allnut23,0,0,null,false);
		Fade($smi23,$描画時間23,0,Dxl3,false);
		Rotate($nus23, $描画時間23, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus23, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut23, 0, @$nx23, @$ny23, null, true);//変更点
		Move($setnut23,$描画時間23, @$mx23, @$my23, Dxl1, false);
		Fade($setnut23,$描画時間23,1000,null,true);//変更点３
	}

	if($KwP23==4)
	{
		$描画時間23a = $描画時間23/2;

		Fade($astnut23,$描画時間23a,0,Axl3,false);
		Fade($setnut23,$描画時間23a,1000,Dxl1,false);

		Fade($smi23,$描画時間23,1000,Axl3,false);
		Rotate($nus23, $描画時間23, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex23==1)
		{
			Rotate($astnut23, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus23, Disused);
		WaitAction($nus23, null);
	}
}

function Face24()
{
	$setnut24 = $nus24 + "/" + $域本名 + "/" + $nut24;
	$astnut24 = $nus24 + "/" + $域本名 + "/" + $picnut24;
	$allnut24 = $nus24 + "/" + $域本名 + "/" + "*";

	if($KwP24==1)
	{
		$描画時間24 = $描画時間24/2;
		$nx24 = -10;//nx
		$ny24 = 10;//ny
		$mx24 = 10;//mx
		$my24 = -10;//my

		Fade($nus24, 0, 0, null, false);
		Rotate($nus24, 0, @0, 90, @0, null, true);
		Fade($smi24,0,1000,null,false);

		Fade($nus24,$描画時間24,1000,Dxl1,false);
		Fade($allnut24,0,0,null,false);
		Fade($smi24,$描画時間24,0,Dxl3,false);
		Rotate($nus24, $描画時間24, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut24, 0, @$nx24, @$ny24, null, true);//変更点
		Move($setnut24,$描画時間24, @$mx24, @$my24, Dxl1, false);
		Fade($setnut24,$描画時間24,1000,null,true);//変更点３
	}

	if($KwP24==2)
	{
		Fade($astnut24,$描画時間24,0,Axl3,false);
		Request($astnut24, Disused);
		Fade($setnut24,$描画時間24,1000,Dxl1,true);
	}

	if($KwP24==3)
	{
		$描画時間24 = $描画時間24/3;
		$nx24 = -10;//nx
		$ny24 = 10;//ny
		$mx24 = 10;//mx
		$my24 = -10;//my

		Fade($smi24,$描画時間24,1000,Axl3,false);
		Rotate($nus24, $描画時間24, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex24==1)
		{
			Rotate($astnut24, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus24, null);
		Rotate($nus24, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut24,0,0,null,false);
			Request($astnut24, Disused);
			Fade($nus24,0,0,null,false);

		Fade($smi24,0,1000,null,false);

		Fade($nus24,$描画時間24,1000,Dxl1,false);
		Fade($allnut24,0,0,null,false);
		Fade($smi24,$描画時間24,0,Dxl3,false);
		Rotate($nus24, $描画時間24, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus24, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut24, 0, @$nx24, @$ny24, null, true);//変更点
		Move($setnut24,$描画時間24, @$mx24, @$my24, Dxl1, false);
		Fade($setnut24,$描画時間24,1000,null,true);//変更点３
	}

	if($KwP24==4)
	{
		$描画時間24a = $描画時間24/2;

		Fade($astnut24,$描画時間24a,0,Axl3,false);
		Fade($setnut24,$描画時間24a,1000,Dxl1,false);

		Fade($smi24,$描画時間24,1000,Axl3,false);
		Rotate($nus24, $描画時間24, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex24==1)
		{
			Rotate($astnut24, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus24, Disused);
		WaitAction($nus24, null);
	}
}

function Face25()
{
	$setnut25 = $nus25 + "/" + $域本名 + "/" + $nut25;
	$astnut25 = $nus25 + "/" + $域本名 + "/" + $picnut25;
	$allnut25 = $nus25 + "/" + $域本名 + "/" + "*";

	if($KwP25==1)
	{
		$描画時間25 = $描画時間25/2;
		$nx25 = -10;//nx
		$ny25 = 10;//ny
		$mx25 = 10;//mx
		$my25 = -10;//my

		Fade($nus25, 0, 0, null, false);
		Rotate($nus25, 0, @0, 90, @0, null, true);
		Fade($smi25,0,1000,null,false);

		Fade($nus25,$描画時間25,1000,Dxl1,false);
		Fade($allnut25,0,0,null,false);
		Fade($smi25,$描画時間25,0,Dxl3,false);
		Rotate($nus25, $描画時間25, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut25, 0, @$nx25, @$ny25, null, true);//変更点
		Move($setnut25,$描画時間25, @$mx25, @$my25, Dxl1, false);
		Fade($setnut25,$描画時間25,1000,null,true);//変更点３
	}

	if($KwP25==2)
	{
		Fade($astnut25,$描画時間25,0,Axl3,false);
		Request($astnut25, Disused);
		Fade($setnut25,$描画時間25,1000,Dxl1,true);
	}

	if($KwP25==3)
	{
		$描画時間25 = $描画時間25/3;
		$nx25 = -10;//nx
		$ny25 = 10;//ny
		$mx25 = 10;//mx
		$my25 = -10;//my

		Fade($smi25,$描画時間25,1000,Axl3,false);
		Rotate($nus25, $描画時間25, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex25==1)
		{
			Rotate($astnut25, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus25, null);
		Rotate($nus25, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut25,0,0,null,false);
			Request($astnut25, Disused);
			Fade($nus25,0,0,null,false);

		Fade($smi25,0,1000,null,false);

		Fade($nus25,$描画時間25,1000,Dxl1,false);
		Fade($allnut25,0,0,null,false);
		Fade($smi25,$描画時間25,0,Dxl3,false);
		Rotate($nus25, $描画時間25, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus25, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut25, 0, @$nx25, @$ny25, null, true);//変更点
		Move($setnut25,$描画時間25, @$mx25, @$my25, Dxl1, false);
		Fade($setnut25,$描画時間25,1000,null,true);//変更点３
	}

	if($KwP25==4)
	{
		$描画時間25a = $描画時間25/2;

		Fade($astnut25,$描画時間25a,0,Axl3,false);
		Fade($setnut25,$描画時間25a,1000,Dxl1,false);

		Fade($smi25,$描画時間25,1000,Axl3,false);
		Rotate($nus25, $描画時間25, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex25==1)
		{
			Rotate($astnut25, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus25, Disused);
		WaitAction($nus25, null);
	}
}

function Face26()
{
	$setnut26 = $nus26 + "/" + $域本名 + "/" + $nut26;
	$astnut26 = $nus26 + "/" + $域本名 + "/" + $picnut26;
	$allnut26 = $nus26 + "/" + $域本名 + "/" + "*";

	if($KwP26==1)
	{
		$描画時間26 = $描画時間26/2;
		$nx26 = -10;//nx
		$ny26 = 10;//ny
		$mx26 = 10;//mx
		$my26 = -10;//my

		Fade($nus26, 0, 0, null, false);
		Rotate($nus26, 0, @0, 90, @0, null, true);
		Fade($smi26,0,1000,null,false);

		Fade($nus26,$描画時間26,1000,Dxl1,false);
		Fade($allnut26,0,0,null,false);
		Fade($smi26,$描画時間26,0,Dxl3,false);
		Rotate($nus26, $描画時間26, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut26, 0, @$nx26, @$ny26, null, true);//変更点
		Move($setnut26,$描画時間26, @$mx26, @$my26, Dxl1, false);
		Fade($setnut26,$描画時間26,1000,null,true);//変更点３
	}

	if($KwP26==2)
	{
		Fade($astnut26,$描画時間26,0,Axl3,false);
		Request($astnut26, Disused);
		Fade($setnut26,$描画時間26,1000,Dxl1,true);
	}

	if($KwP26==3)
	{
		$描画時間26 = $描画時間26/3;
		$nx26 = -10;//nx
		$ny26 = 10;//ny
		$mx26 = 10;//mx
		$my26 = -10;//my

		Fade($smi26,$描画時間26,1000,Axl3,false);
		Rotate($nus26, $描画時間26, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex26==1)
		{
			Rotate($astnut26, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus26, null);
		Rotate($nus26, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut26,0,0,null,false);
			Request($astnut26, Disused);
			Fade($nus26,0,0,null,false);

		Fade($smi26,0,1000,null,false);

		Fade($nus26,$描画時間26,1000,Dxl1,false);
		Fade($allnut26,0,0,null,false);
		Fade($smi26,$描画時間26,0,Dxl3,false);
		Rotate($nus26, $描画時間26, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus26, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut26, 0, @$nx26, @$ny26, null, true);//変更点
		Move($setnut26,$描画時間26, @$mx26, @$my26, Dxl1, false);
		Fade($setnut26,$描画時間26,1000,null,true);//変更点３
	}

	if($KwP26==4)
	{
		$描画時間26a = $描画時間26/2;

		Fade($astnut26,$描画時間26a,0,Axl3,false);
		Fade($setnut26,$描画時間26a,1000,Dxl1,false);

		Fade($smi26,$描画時間26,1000,Axl3,false);
		Rotate($nus26, $描画時間26, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex26==1)
		{
			Rotate($astnut26, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus26, Disused);
		WaitAction($nus26, null);
	}
}

function Face27()
{
	$setnut27 = $nus27 + "/" + $域本名 + "/" + $nut27;
	$astnut27 = $nus27 + "/" + $域本名 + "/" + $picnut27;
	$allnut27 = $nus27 + "/" + $域本名 + "/" + "*";

	if($KwP27==1)
	{
		$描画時間27 = $描画時間27/2;
		$nx27 = -10;//nx
		$ny27 = 10;//ny
		$mx27 = 10;//mx
		$my27 = -10;//my

		Fade($nus27, 0, 0, null, false);
		Rotate($nus27, 0, @0, 90, @0, null, true);
		Fade($smi27,0,1000,null,false);

		Fade($nus27,$描画時間27,1000,Dxl1,false);
		Fade($allnut27,0,0,null,false);
		Fade($smi27,$描画時間27,0,Dxl3,false);
		Rotate($nus27, $描画時間27, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut27, 0, @$nx27, @$ny27, null, true);//変更点
		Move($setnut27,$描画時間27, @$mx27, @$my27, Dxl1, false);
		Fade($setnut27,$描画時間27,1000,null,true);//変更点３
	}

	if($KwP27==2)
	{
		Fade($astnut27,$描画時間27,0,Axl3,false);
		Request($astnut27, Disused);
		Fade($setnut27,$描画時間27,1000,Dxl1,true);
	}

	if($KwP27==3)
	{
		$描画時間27 = $描画時間27/3;
		$nx27 = -10;//nx
		$ny27 = 10;//ny
		$mx27 = 10;//mx
		$my27 = -10;//my

		Fade($smi27,$描画時間27,1000,Axl3,false);
		Rotate($nus27, $描画時間27, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex27==1)
		{
			Rotate($astnut27, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus27, null);
		Rotate($nus27, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut27,0,0,null,false);
			Request($astnut27, Disused);
			Fade($nus27,0,0,null,false);

		Fade($smi27,0,1000,null,false);

		Fade($nus27,$描画時間27,1000,Dxl1,false);
		Fade($allnut27,0,0,null,false);
		Fade($smi27,$描画時間27,0,Dxl3,false);
		Rotate($nus27, $描画時間27, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus27, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut27, 0, @$nx27, @$ny27, null, true);//変更点
		Move($setnut27,$描画時間27, @$mx27, @$my27, Dxl1, false);
		Fade($setnut27,$描画時間27,1000,null,true);//変更点３
	}

	if($KwP27==4)
	{
		$描画時間27a = $描画時間27/2;

		Fade($astnut27,$描画時間27a,0,Axl3,false);
		Fade($setnut27,$描画時間27a,1000,Dxl1,false);

		Fade($smi27,$描画時間27,1000,Axl3,false);
		Rotate($nus27, $描画時間27, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex27==1)
		{
			Rotate($astnut27, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus27, Disused);
		WaitAction($nus27, null);
	}
}

function Face28()
{
	$setnut28 = $nus28 + "/" + $域本名 + "/" + $nut28;
	$astnut28 = $nus28 + "/" + $域本名 + "/" + $picnut28;
	$allnut28 = $nus28 + "/" + $域本名 + "/" + "*";

	if($KwP28==1)
	{
		$描画時間28 = $描画時間28/2;
		$nx28 = -10;//nx
		$ny28 = 10;//ny
		$mx28 = 10;//mx
		$my28 = -10;//my

		Fade($nus28, 0, 0, null, false);
		Rotate($nus28, 0, @0, 90, @0, null, true);
		Fade($smi28,0,1000,null,false);

		Fade($nus28,$描画時間28,1000,Dxl1,false);
		Fade($allnut28,0,0,null,false);
		Fade($smi28,$描画時間28,0,Dxl3,false);
		Rotate($nus28, $描画時間28, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut28, 0, @$nx28, @$ny28, null, true);//変更点
		Move($setnut28,$描画時間28, @$mx28, @$my28, Dxl1, false);
		Fade($setnut28,$描画時間28,1000,null,true);//変更点３
	}

	if($KwP28==2)
	{
		Fade($astnut28,$描画時間28,0,Axl3,false);
		Request($astnut28, Disused);
		Fade($setnut28,$描画時間28,1000,Dxl1,true);
	}

	if($KwP28==3)
	{
		$描画時間28 = $描画時間28/3;
		$nx28 = -10;//nx
		$ny28 = 10;//ny
		$mx28 = 10;//mx
		$my28 = -10;//my

		Fade($smi28,$描画時間28,1000,Axl3,false);
		Rotate($nus28, $描画時間28, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex28==1)
		{
			Rotate($astnut28, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus28, null);
		Rotate($nus28, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut28,0,0,null,false);
			Request($astnut28, Disused);
			Fade($nus28,0,0,null,false);

		Fade($smi28,0,1000,null,false);

		Fade($nus28,$描画時間28,1000,Dxl1,false);
		Fade($allnut28,0,0,null,false);
		Fade($smi28,$描画時間28,0,Dxl3,false);
		Rotate($nus28, $描画時間28, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus28, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut28, 0, @$nx28, @$ny28, null, true);//変更点
		Move($setnut28,$描画時間28, @$mx28, @$my28, Dxl1, false);
		Fade($setnut28,$描画時間28,1000,null,true);//変更点３
	}

	if($KwP28==4)
	{
		$描画時間28a = $描画時間28/2;

		Fade($astnut28,$描画時間28a,0,Axl3,false);
		Fade($setnut28,$描画時間28a,1000,Dxl1,false);

		Fade($smi28,$描画時間28,1000,Axl3,false);
		Rotate($nus28, $描画時間28, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex28==1)
		{
			Rotate($astnut28, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus28, Disused);
		WaitAction($nus28, null);
	}
}

function Face29()
{
	$setnut29 = $nus29 + "/" + $域本名 + "/" + $nut29;
	$astnut29 = $nus29 + "/" + $域本名 + "/" + $picnut29;
	$allnut29 = $nus29 + "/" + $域本名 + "/" + "*";

	if($KwP29==1)
	{
		$描画時間29 = $描画時間29/2;
		$nx29 = -10;//nx
		$ny29 = 10;//ny
		$mx29 = 10;//mx
		$my29 = -10;//my

		Fade($nus29, 0, 0, null, false);
		Rotate($nus29, 0, @0, 90, @0, null, true);
		Fade($smi29,0,1000,null,false);

		Fade($nus29,$描画時間29,1000,Dxl1,false);
		Fade($allnut29,0,0,null,false);
		Fade($smi29,$描画時間29,0,Dxl3,false);
		Rotate($nus29, $描画時間29, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut29, 0, @$nx29, @$ny29, null, true);//変更点
		Move($setnut29,$描画時間29, @$mx29, @$my29, Dxl1, false);
		Fade($setnut29,$描画時間29,1000,null,true);//変更点３
	}

	if($KwP29==2)
	{
		Fade($astnut29,$描画時間29,0,Axl3,false);
		Request($astnut29, Disused);
		Fade($setnut29,$描画時間29,1000,Dxl1,true);
	}

	if($KwP29==3)
	{
		$描画時間29 = $描画時間29/3;
		$nx29 = -10;//nx
		$ny29 = 10;//ny
		$mx29 = 10;//mx
		$my29 = -10;//my

		Fade($smi29,$描画時間29,1000,Axl3,false);
		Rotate($nus29, $描画時間29, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex29==1)
		{
			Rotate($astnut29, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus29, null);
		Rotate($nus29, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut29,0,0,null,false);
			Request($astnut29, Disused);
			Fade($nus29,0,0,null,false);

		Fade($smi29,0,1000,null,false);

		Fade($nus29,$描画時間29,1000,Dxl1,false);
		Fade($allnut29,0,0,null,false);
		Fade($smi29,$描画時間29,0,Dxl3,false);
		Rotate($nus29, $描画時間29, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus29, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut29, 0, @$nx29, @$ny29, null, true);//変更点
		Move($setnut29,$描画時間29, @$mx29, @$my29, Dxl1, false);
		Fade($setnut29,$描画時間29,1000,null,true);//変更点３
	}

	if($KwP29==4)
	{
		$描画時間29a = $描画時間29/2;

		Fade($astnut29,$描画時間29a,0,Axl3,false);
		Fade($setnut29,$描画時間29a,1000,Dxl1,false);

		Fade($smi29,$描画時間29,1000,Axl3,false);
		Rotate($nus29, $描画時間29, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex29==1)
		{
			Rotate($astnut29, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus29, Disused);
		WaitAction($nus29, null);
	}
}

function Face30()
{
	$setnut30 = $nus30 + "/" + $域本名 + "/" + $nut30;
	$astnut30 = $nus30 + "/" + $域本名 + "/" + $picnut30;
	$allnut30 = $nus30 + "/" + $域本名 + "/" + "*";

	if($KwP30==1)
	{
		$描画時間30 = $描画時間30/2;
		$nx30 = -10;//nx
		$ny30 = 10;//ny
		$mx30 = 10;//mx
		$my30 = -10;//my

		Fade($nus30, 0, 0, null, false);
		Rotate($nus30, 0, @0, 90, @0, null, true);
		Fade($smi30,0,1000,null,false);

		Fade($nus30,$描画時間30,1000,Dxl1,false);
		Fade($allnut30,0,0,null,false);
		Fade($smi30,$描画時間30,0,Dxl3,false);
		Rotate($nus30, $描画時間30, @0, 0, @0, Dxl1, true);//変更点２

		Move($setnut30, 0, @$nx30, @$ny30, null, true);//変更点
		Move($setnut30,$描画時間30, @$mx30, @$my30, Dxl1, false);
		Fade($setnut30,$描画時間30,1000,null,true);//変更点３
	}

	if($KwP30==2)
	{
		Fade($astnut30,$描画時間30,0,Axl3,false);
		Request($astnut30, Disused);
		Fade($setnut30,$描画時間30,1000,Dxl1,true);
	}

	if($KwP30==3)
	{
		$描画時間30 = $描画時間30/3;
		$nx30 = -10;//nx
		$ny30 = 10;//ny
		$mx30 = 10;//mx
		$my30 = -10;//my

		Fade($smi30,$描画時間30,1000,Axl3,false);
		Rotate($nus30, $描画時間30, @0, -90, @0, DxlAuto, false);//変更点２

		if($KwPex30==1)
		{
			Rotate($astnut30, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		WaitAction($nus30, null);
		Rotate($nus30, 0, @0, -270, @0, null, true);//変更点２

			Fade($astnut30,0,0,null,false);
			Request($astnut30, Disused);
			Fade($nus30,0,0,null,false);

		Fade($smi30,0,1000,null,false);

		Fade($nus30,$描画時間30,1000,Dxl1,false);
		Fade($allnut30,0,0,null,false);
		Fade($smi30,$描画時間30,0,Dxl3,false);
		Rotate($nus30, $描画時間30, @0, @-90, @0, Dxl1, true);//変更点２
		Rotate($nus30, 0, @0, 0, @0, null, true);//変更点２

		Move($setnut30, 0, @$nx30, @$ny30, null, true);//変更点
		Move($setnut30,$描画時間30, @$mx30, @$my30, Dxl1, false);
		Fade($setnut30,$描画時間30,1000,null,true);//変更点３
	}

	if($KwP30==4)
	{
		$描画時間30a = $描画時間30/2;

		Fade($astnut30,$描画時間30a,0,Axl3,false);
		Fade($setnut30,$描画時間30a,1000,Dxl1,false);

		Fade($smi30,$描画時間30,1000,Axl3,false);
		Rotate($nus30, $描画時間30, 0, -90, 0, DxlAuto, false);//変更点２

		if($KwPex30==1)
		{
			Rotate($astnut30, 0, @0, @0, @0, DxlAuto, false);//変更点２
		}
		Request($nus30, Disused);
		WaitAction($nus30, null);
	}
}



























//=============================================================================//
.Tv
//=============================================================================//
//――――――――――――――――――――――――――――――――――――――
..テレビ基本
//――――――――――――――――――――――――――――――――――――――
function SetTv($描画優先度, $Ｘ位置, $Ｙ位置, $映画像)
{
	$ナット名 = "テレビ";
	$親ナット名Tv = $ナット名;
	$描画優先度Tv = $描画優先度;

	$TV走査線透明度 = 600;

	$NoiseLoop = 1;
	$NoiseSpan1 = 2200;//ノイズ点灯時のフェード秒数
	$NoiseSpan2 = 600;//ノイズ切り替え時のフェード秒数
	$NoiseSpan3 = 2100;//ノイズ長期切り替え時のフェード秒数
	$NoiseSpan4 = 100;//ノイズ消灯時のフェード秒数
	$NoiseSpan5 = 100;//クロスフェード秒数
	$NoiseSpan6 = 100;//単体のクロスフェード秒数
	$NoiseVolume = 300;

	$TvSpan1 = 0;
	$TvSpan2 = 0;
	$TvSpan3 = 0;
	$TvSpan4 = 0;
	$TvSpan5 = 500;
	$TvVolume = 1000;

	$映プロセス頭="映";
	$音プロセス頭="音";
	$雑プロセス頭="雑";

	$ProTv2="名無し";
	$ProTv="名無し";
	$ProSv2="名無し";
	$ProSv="名無し";
	$ProNv2="名無し";
	$ProNv="名無し";
	$FaceTv2="名無し";
	$FaceTv="名無し";
	$FaceBv2="名無し";
	$FaceBv="名無し";
	$FaceCv2="名無し";
	$FaceCv="名無し";

	$ViP = 0;
	$ViQ = 0;
//	$SiP = 0;
//	$SiQ = 0;
	$NvP = 0;
	$NvQ = 0;
	$TvP = 0;
	$TvQ = 0;
	$BvP = 0;
	$BvQ = 0;
	$CvP = 0;
	$CvQ = 0;

	$BaseTv2="名無し";
	$BaseTv="名無し";
	$TvB = 0;

	$DelPro="@"+$映プロセス頭+"*";
	$DelPro2="@"+$音プロセス頭+"*";
	$DelPro3="@"+$雑プロセス頭+"*";

	PreSetTv();
	Move($ナット名,0, @$Ｘ位置, @$Ｙ位置, null,true);

}


...マクロ
function PreSetTv()
{
	if($vision01_who==$ナット名){$vision01_use="";}//初期化変数
	if($vision02_who==$ナット名){$vision02_use="";}//初期化変数
	if($vision03_who==$ナット名){$vision03_use="";}//初期化変数
	if($vision04_who==$ナット名){$vision04_use="";}//初期化変数
	if($vision05_who==$ナット名){$vision05_use="";}//初期化変数
	if($vision06_who==$ナット名){$vision06_use="";}//初期化変数
	if($vision07_who==$ナット名){$vision07_use="";}//初期化変数
	if($vision08_who==$ナット名){$vision08_use="";}//初期化変数
	if($vision09_who==$ナット名){$vision09_use="";}//初期化変数
	if($vision10_who==$ナット名){$vision10_use="";}//初期化変数

	if($dusty01_who==$ナット名){$dusty01_use="";}//初期化変数
	if($dusty02_who==$ナット名){$dusty02_use="";}//初期化変数
	if($dusty03_who==$ナット名){$dusty03_use="";}//初期化変数
	if($dusty04_who==$ナット名){$dusty04_use="";}//初期化変数
	if($dusty05_who==$ナット名){$dusty05_use="";}//初期化変数
	if($dusty06_who==$ナット名){$dusty06_use="";}//初期化変数
	if($dusty07_who==$ナット名){$dusty07_use="";}//初期化変数
	if($dusty08_who==$ナット名){$dusty08_use="";}//初期化変数
	if($dusty09_who==$ナット名){$dusty09_use="";}//初期化変数
	if($dusty10_who==$ナット名){$dusty10_use="";}//初期化変数

	Request($DelPro, Stop);
	Delete($DelPro);
	Request($DelPro2, Stop);
	Delete($DelPro2);
	Request($DelPro3, Stop);
	Delete($DelPro3);

	$消去ナット名 = @ + $ナット名;
	Delete($消去ナット名);

	$映描画優先度差分 = 1;
	$描画優先度基本 = $描画優先度 + 100;
	$硝描画優先度 = $描画優先度基本 - 1;

	$管本名 = "管";//TV画像
	$色本名 = "地";//下地
	$硝本名 = "硝";//マスク
	$盤本名 = "盤";//走査線
	$系本名 = "系";//ノイズ
	$止本名 = "止";//ノイズストップ

	$管名 = "@" + $ナット名 + "/" + $管本名;
	$色名 = "@" + $ナット名 + "/" + $色本名;
	$硝名 = "@" + $ナット名 + "/" + $硝本名;
	$盤名 = "@" + $ナット名 + "/" + $盤本名;
	$系名 = "@" + $ナット名 + "/" + $系本名;
	$止名 = "@" + $ナット名 + "/" + $止本名;

	CreateTexture($ナット名, $描画優先度基本, 0, 0, $映画像);
	Request($ナット名, Smoothing);
	SetAlias($ナット名, $ナット名);

	CreateColor($色名, $描画優先度, 0, 0, 800, 600, "BLACK");

	CreateWindow($硝名,$硝描画優先度,250,100,300,200,true);
	SetAlias($硝名, $硝名);

	CreateTexture($盤名, $硝描画優先度, 250, 100, "cg/ef/ef_fi_テレビ走査線.png");
	Request($盤名, AddRender);
	SetAlias($盤名, $盤名);

	CreateProcess($系名, 1000, 0, 0, "TvNoise");
	SetAlias($系名, $系名);
	CreateProcess($止名, 1000, 0, 0, "NoiseStop");
	SetAlias($止名, $止名);



		CreateTexture("@テレビ/硝/noise10000",1098,center,20,"cg/sys/tv/ノイズslow/slow_0000.png");
		CreateTexture("@テレビ/硝/noise10001",1098,center,20,"cg/sys/tv/ノイズslow/slow_0001.png");
		CreateTexture("@テレビ/硝/noise10002",1098,center,20,"cg/sys/tv/ノイズslow/slow_0002.png");
		CreateTexture("@テレビ/硝/noise10003",1098,center,20,"cg/sys/tv/ノイズslow/slow_0003.png");
		CreateTexture("@テレビ/硝/noise10004",1098,center,20,"cg/sys/tv/ノイズslow/slow_0004.png");
		CreateTexture("@テレビ/硝/noise10005",1098,center,20,"cg/sys/tv/ノイズslow/slow_0005.png");
		CreateTexture("@テレビ/硝/noise10006",1098,center,20,"cg/sys/tv/ノイズslow/slow_0006.png");
		CreateTexture("@テレビ/硝/noise10007",1098,center,20,"cg/sys/tv/ノイズslow/slow_0007.png");
		CreateTexture("@テレビ/硝/noise10008",1098,center,20,"cg/sys/tv/ノイズslow/slow_0008.png");
		CreateTexture("@テレビ/硝/noise10009",1098,center,20,"cg/sys/tv/ノイズslow/slow_0009.png");
		CreateTexture("@テレビ/硝/noise10010",1098,center,20,"cg/sys/tv/ノイズslow/slow_0010.png");
		CreateTexture("@テレビ/硝/noise10011",1098,center,20,"cg/sys/tv/ノイズslow/slow_0011.png");
		CreateTexture("@テレビ/硝/noise10012",1098,center,20,"cg/sys/tv/ノイズslow/slow_0012.png");
		CreateTexture("@テレビ/硝/noise10013",1098,center,20,"cg/sys/tv/ノイズslow/slow_0013.png");
		CreateTexture("@テレビ/硝/noise10014",1098,center,20,"cg/sys/tv/ノイズslow/slow_0014.png");
		CreateTexture("@テレビ/硝/noise10015",1098,center,20,"cg/sys/tv/ノイズslow/slow_0015.png");
		CreateTexture("@テレビ/硝/noise10016",1098,center,20,"cg/sys/tv/ノイズslow/slow_0016.png");
		CreateTexture("@テレビ/硝/noise10017",1098,center,20,"cg/sys/tv/ノイズslow/slow_0017.png");
		CreateTexture("@テレビ/硝/noise10018",1098,center,20,"cg/sys/tv/ノイズslow/slow_0018.png");
		CreateTexture("@テレビ/硝/noise10019",1098,center,20,"cg/sys/tv/ノイズslow/slow_0019.png");
		CreateTexture("@テレビ/硝/noise10020",1098,center,20,"cg/sys/tv/ノイズslow/slow_0020.png");
		CreateTexture("@テレビ/硝/noise10021",1098,center,20,"cg/sys/tv/ノイズslow/slow_0021.png");
		CreateTexture("@テレビ/硝/noise10022",1098,center,20,"cg/sys/tv/ノイズslow/slow_0022.png");
		CreateTexture("@テレビ/硝/noise10023",1098,center,20,"cg/sys/tv/ノイズslow/slow_0023.png");
		CreateTexture("@テレビ/硝/noise10024",1098,center,20,"cg/sys/tv/ノイズslow/slow_0024.png");
		CreateTexture("@テレビ/硝/noise10025",1098,center,20,"cg/sys/tv/ノイズslow/slow_0025.png");
		CreateTexture("@テレビ/硝/noise10026",1098,center,20,"cg/sys/tv/ノイズslow/slow_0026.png");
		CreateTexture("@テレビ/硝/noise10027",1098,center,20,"cg/sys/tv/ノイズslow/slow_0027.png");
		CreateTexture("@テレビ/硝/noise10028",1098,center,20,"cg/sys/tv/ノイズslow/slow_0028.png");
		CreateTexture("@テレビ/硝/noise10029",1098,center,20,"cg/sys/tv/ノイズslow/slow_0029.png");
		CreateTexture("@テレビ/硝/noise10030",1098,center,20,"cg/sys/tv/ノイズslow/slow_0030.png");
		CreateTexture("@テレビ/硝/noise10031",1098,center,20,"cg/sys/tv/ノイズslow/slow_0031.png");
		CreateTexture("@テレビ/硝/noise10032",1098,center,20,"cg/sys/tv/ノイズslow/slow_0032.png");
		CreateTexture("@テレビ/硝/noise10033",1098,center,20,"cg/sys/tv/ノイズslow/slow_0033.png");
		CreateTexture("@テレビ/硝/noise10034",1098,center,20,"cg/sys/tv/ノイズslow/slow_0034.png");
		CreateTexture("@テレビ/硝/noise10035",1098,center,20,"cg/sys/tv/ノイズslow/slow_0035.png");
		CreateTexture("@テレビ/硝/noise10036",1098,center,20,"cg/sys/tv/ノイズslow/slow_0036.png");
		CreateTexture("@テレビ/硝/noise10037",1098,center,20,"cg/sys/tv/ノイズslow/slow_0037.png");
		CreateTexture("@テレビ/硝/noise10038",1098,center,20,"cg/sys/tv/ノイズslow/slow_0038.png");
		CreateTexture("@テレビ/硝/noise10039",1098,center,20,"cg/sys/tv/ノイズslow/slow_0039.png");
		CreateTexture("@テレビ/硝/noise10040",1098,center,20,"cg/sys/tv/ノイズslow/slow_0040.png");
		CreateTexture("@テレビ/硝/noise10041",1098,center,20,"cg/sys/tv/ノイズslow/slow_0041.png");
		CreateTexture("@テレビ/硝/noise10042",1098,center,20,"cg/sys/tv/ノイズslow/slow_0042.png");
		CreateTexture("@テレビ/硝/noise10043",1098,center,20,"cg/sys/tv/ノイズslow/slow_0043.png");
		CreateTexture("@テレビ/硝/noise10044",1098,center,20,"cg/sys/tv/ノイズslow/slow_0044.png");
		CreateTexture("@テレビ/硝/noise10045",1098,center,20,"cg/sys/tv/ノイズslow/slow_0045.png");
		CreateTexture("@テレビ/硝/noise10046",1098,center,20,"cg/sys/tv/ノイズslow/slow_0046.png");
		CreateTexture("@テレビ/硝/noise10047",1098,center,20,"cg/sys/tv/ノイズslow/slow_0047.png");
		CreateTexture("@テレビ/硝/noise10048",1098,center,20,"cg/sys/tv/ノイズslow/slow_0048.png");
		CreateTexture("@テレビ/硝/noise10049",1098,center,20,"cg/sys/tv/ノイズslow/slow_0049.png");
		CreateTexture("@テレビ/硝/noise10050",1098,center,20,"cg/sys/tv/ノイズslow/slow_0050.png");
		CreateTexture("@テレビ/硝/noise10051",1098,center,20,"cg/sys/tv/ノイズslow/slow_0051.png");
		CreateTexture("@テレビ/硝/noise10052",1098,center,20,"cg/sys/tv/ノイズslow/slow_0052.png");
		CreateTexture("@テレビ/硝/noise10053",1098,center,20,"cg/sys/tv/ノイズslow/slow_0053.png");
		CreateTexture("@テレビ/硝/noise10054",1098,center,20,"cg/sys/tv/ノイズslow/slow_0054.png");
		CreateTexture("@テレビ/硝/noise10055",1098,center,20,"cg/sys/tv/ノイズslow/slow_0055.png");
		CreateTexture("@テレビ/硝/noise10056",1098,center,20,"cg/sys/tv/ノイズslow/slow_0056.png");
		CreateTexture("@テレビ/硝/noise10057",1098,center,20,"cg/sys/tv/ノイズslow/slow_0057.png");
		CreateTexture("@テレビ/硝/noise10058",1098,center,20,"cg/sys/tv/ノイズslow/slow_0058.png");
		CreateTexture("@テレビ/硝/noise10059",1098,center,20,"cg/sys/tv/ノイズslow/slow_0059.png");
		CreateTexture("@テレビ/硝/noise10060",1098,center,20,"cg/sys/tv/ノイズslow/slow_0060.png");
		CreateTexture("@テレビ/硝/noise10061",1098,center,20,"cg/sys/tv/ノイズslow/slow_0061.png");
		CreateTexture("@テレビ/硝/noise10062",1098,center,20,"cg/sys/tv/ノイズslow/slow_0062.png");
		CreateTexture("@テレビ/硝/noise10063",1098,center,20,"cg/sys/tv/ノイズslow/slow_0063.png");
		CreateTexture("@テレビ/硝/noise10064",1098,center,20,"cg/sys/tv/ノイズslow/slow_0064.png");
		CreateTexture("@テレビ/硝/noise10065",1098,center,20,"cg/sys/tv/ノイズslow/slow_0065.png");
		CreateTexture("@テレビ/硝/noise10066",1098,center,20,"cg/sys/tv/ノイズslow/slow_0066.png");
		CreateTexture("@テレビ/硝/noise10067",1098,center,20,"cg/sys/tv/ノイズslow/slow_0067.png");
		CreateTexture("@テレビ/硝/noise10068",1098,center,20,"cg/sys/tv/ノイズslow/slow_0068.png");
		CreateTexture("@テレビ/硝/noise10069",1098,center,20,"cg/sys/tv/ノイズslow/slow_0069.png");
		CreateTexture("@テレビ/硝/noise10070",1098,center,20,"cg/sys/tv/ノイズslow/slow_0070.png");
		CreateTexture("@テレビ/硝/noise10071",1098,center,20,"cg/sys/tv/ノイズslow/slow_0071.png");
		CreateTexture("@テレビ/硝/noise10072",1098,center,20,"cg/sys/tv/ノイズslow/slow_0072.png");
		CreateTexture("@テレビ/硝/noise10073",1098,center,20,"cg/sys/tv/ノイズslow/slow_0073.png");
		CreateTexture("@テレビ/硝/noise10074",1098,center,20,"cg/sys/tv/ノイズslow/slow_0074.png");

		SetAlias("@テレビ/硝/noise10000","noise10000");
		SetAlias("@テレビ/硝/noise10001","noise10001");
		SetAlias("@テレビ/硝/noise10002","noise10002");
		SetAlias("@テレビ/硝/noise10003","noise10003");
		SetAlias("@テレビ/硝/noise10004","noise10004");
		SetAlias("@テレビ/硝/noise10005","noise10005");
		SetAlias("@テレビ/硝/noise10006","noise10006");
		SetAlias("@テレビ/硝/noise10007","noise10007");
		SetAlias("@テレビ/硝/noise10008","noise10008");
		SetAlias("@テレビ/硝/noise10009","noise10009");
		SetAlias("@テレビ/硝/noise10010","noise10010");
		SetAlias("@テレビ/硝/noise10011","noise10011");
		SetAlias("@テレビ/硝/noise10012","noise10012");
		SetAlias("@テレビ/硝/noise10013","noise10013");
		SetAlias("@テレビ/硝/noise10014","noise10014");
		SetAlias("@テレビ/硝/noise10015","noise10015");
		SetAlias("@テレビ/硝/noise10016","noise10016");
		SetAlias("@テレビ/硝/noise10017","noise10017");
		SetAlias("@テレビ/硝/noise10018","noise10018");
		SetAlias("@テレビ/硝/noise10019","noise10019");
		SetAlias("@テレビ/硝/noise10020","noise10020");
		SetAlias("@テレビ/硝/noise10021","noise10021");
		SetAlias("@テレビ/硝/noise10022","noise10022");
		SetAlias("@テレビ/硝/noise10023","noise10023");
		SetAlias("@テレビ/硝/noise10024","noise10024");
		SetAlias("@テレビ/硝/noise10025","noise10025");
		SetAlias("@テレビ/硝/noise10026","noise10026");
		SetAlias("@テレビ/硝/noise10027","noise10027");
		SetAlias("@テレビ/硝/noise10028","noise10028");
		SetAlias("@テレビ/硝/noise10029","noise10029");
		SetAlias("@テレビ/硝/noise10030","noise10030");
		SetAlias("@テレビ/硝/noise10031","noise10031");
		SetAlias("@テレビ/硝/noise10032","noise10032");
		SetAlias("@テレビ/硝/noise10033","noise10033");
		SetAlias("@テレビ/硝/noise10034","noise10034");
		SetAlias("@テレビ/硝/noise10035","noise10035");
		SetAlias("@テレビ/硝/noise10036","noise10036");
		SetAlias("@テレビ/硝/noise10037","noise10037");
		SetAlias("@テレビ/硝/noise10038","noise10038");
		SetAlias("@テレビ/硝/noise10039","noise10039");
		SetAlias("@テレビ/硝/noise10040","noise10040");
		SetAlias("@テレビ/硝/noise10041","noise10041");
		SetAlias("@テレビ/硝/noise10042","noise10042");
		SetAlias("@テレビ/硝/noise10043","noise10043");
		SetAlias("@テレビ/硝/noise10044","noise10044");
		SetAlias("@テレビ/硝/noise10045","noise10045");
		SetAlias("@テレビ/硝/noise10046","noise10046");
		SetAlias("@テレビ/硝/noise10047","noise10047");
		SetAlias("@テレビ/硝/noise10048","noise10048");
		SetAlias("@テレビ/硝/noise10049","noise10049");
		SetAlias("@テレビ/硝/noise10050","noise10050");
		SetAlias("@テレビ/硝/noise10051","noise10051");
		SetAlias("@テレビ/硝/noise10052","noise10052");
		SetAlias("@テレビ/硝/noise10053","noise10053");
		SetAlias("@テレビ/硝/noise10054","noise10054");
		SetAlias("@テレビ/硝/noise10055","noise10055");
		SetAlias("@テレビ/硝/noise10056","noise10056");
		SetAlias("@テレビ/硝/noise10057","noise10057");
		SetAlias("@テレビ/硝/noise10058","noise10058");
		SetAlias("@テレビ/硝/noise10059","noise10059");
		SetAlias("@テレビ/硝/noise10060","noise10060");
		SetAlias("@テレビ/硝/noise10061","noise10061");
		SetAlias("@テレビ/硝/noise10062","noise10062");
		SetAlias("@テレビ/硝/noise10063","noise10063");
		SetAlias("@テレビ/硝/noise10064","noise10064");
		SetAlias("@テレビ/硝/noise10065","noise10065");
		SetAlias("@テレビ/硝/noise10066","noise10066");
		SetAlias("@テレビ/硝/noise10067","noise10067");
		SetAlias("@テレビ/硝/noise10068","noise10068");
		SetAlias("@テレビ/硝/noise10069","noise10069");
		SetAlias("@テレビ/硝/noise10070","noise10070");
		SetAlias("@テレビ/硝/noise10071","noise10071");
		SetAlias("@テレビ/硝/noise10072","noise10072");
		SetAlias("@テレビ/硝/noise10073","noise10073");
		SetAlias("@テレビ/硝/noise10074","noise10074");


		CreateTexture("@テレビ/硝/noise20000",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0000.png");
		CreateTexture("@テレビ/硝/noise20001",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0001.png");
		CreateTexture("@テレビ/硝/noise20002",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0002.png");
		CreateTexture("@テレビ/硝/noise20003",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0003.png");
		CreateTexture("@テレビ/硝/noise20004",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0004.png");
		CreateTexture("@テレビ/硝/noise20005",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0005.png");
		CreateTexture("@テレビ/硝/noise20006",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0006.png");
		CreateTexture("@テレビ/硝/noise20007",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0007.png");
		CreateTexture("@テレビ/硝/noise20008",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0008.png");
		CreateTexture("@テレビ/硝/noise20009",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0009.png");
		CreateTexture("@テレビ/硝/noise20010",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0010.png");
		CreateTexture("@テレビ/硝/noise20011",1098,center,20,"cg/sys/tv/ノイズnormal/normal_0011.png");

		SetAlias("@テレビ/硝/noise20000","noise20000");
		SetAlias("@テレビ/硝/noise20001","noise20001");
		SetAlias("@テレビ/硝/noise20002","noise20002");
		SetAlias("@テレビ/硝/noise20003","noise20003");
		SetAlias("@テレビ/硝/noise20004","noise20004");
		SetAlias("@テレビ/硝/noise20005","noise20005");
		SetAlias("@テレビ/硝/noise20006","noise20006");
		SetAlias("@テレビ/硝/noise20007","noise20007");
		SetAlias("@テレビ/硝/noise20008","noise20008");
		SetAlias("@テレビ/硝/noise20009","noise20009");
		SetAlias("@テレビ/硝/noise20010","noise20010");
		SetAlias("@テレビ/硝/noise20011","noise20011");

		CreateTexture("@テレビ/硝/noise_only",1097,center,20,"cg/sys/tv/ノイズonly/only.png");
		SetAlias("@テレビ/硝/noise_only","noise_only");

		Fade($ナット名,0,0,null,false);
}

//――――――――――――――――――――――――――――――――――――――
...テレビ走査線透明度
//――――――――――――――――――――――――――――――――――――――
function CreateLineTv($透明度)
{
	$TV走査線透明度=$透明度;
}

//――――――――――――――――――――――――――――――――――――――
...テレビノイズ
//――――――――――――――――――――――――――――――――――――――
function TvNoise()
{
	$NoiseMoveCount1=20;
	$NoiseAnimeCount1=0;
	while($NoiseAnimeCount1<4)
	{
		Move("@noise_only", 0, @0, $NoiseMoveCount1, null, false);
		Wait(1);

		$NoiseAnimeCount1+=1;
		$NoiseMoveCount1-=150;

		if($NoiseAnimeCount1==4){
			$NoiseMoveCount1=20;
			$NoiseAnimeCount1=0;
		}
	}
}

function NoiseStop()
{
	Wait($NoiseStopTime);
	WaitAction("@noise_only", null);
	Request($系名, Stop);
}






//――――――――――――――――――――――――――――――――――――――
...さよならテレビ
//――――――――――――――――――――――――――――――――――――――
function DeleteAllTv()
{
	$DelPro="@"+$映プロセス頭+"*";
	Request($DelPro, Stop);
	Delete($DelPro);
	Delete($DelPro);

	$DelPro="@"+$音プロセス頭+"*";
	Request($DelPro, Stop);
	Delete($DelPro);
	Delete($DelPro);

	$DelPro="@"+$雑プロセス頭+"*";
	Request($DelPro, Stop);
	Delete($DelPro);
	Delete($DelPro);

	$消去ナット名 = @ + $親ナット名Tv;
	Delete($消去ナット名);
}

//――――――――――――――――――――――――――――――――――――――
...描画関係
//――――――――――――――――――――――――――――――――――――――
function StartTv()
{
	Fade($親ナット名Tv,0,1000,null,false);
	Fade("@テレビ/*/*",0,0,null,false);
	Fade("@テレビ/*",0,0,null,false);
	Fade($色名,0,1000,null,false);
}

function StartTv2()
{
	Fade($親ナット名Tv,0,1000,null,false);
	Fade($盤名,0,$TV走査線透明度,null,false);
	Fade("@テレビ/硝/noise*", 0, 0, null, true);
}

function StartTv3($描画秒数)
{
	Fade($親ナット名Tv,$描画秒数,1000,null,false);
	Fade("@テレビ/*/*",0,0,null,false);
	Fade("@テレビ/*",0,0,null,false);
	Fade($色名,$描画秒数,1000,null,false);
	Wait($描画秒数);
}








//――――――――――――――――――――――――――――――――――――――
..テレビ背景色設置
//――――――――――――――――――――――――――――――――――――――
function SetBaseColorTv($TV下)
{
	if(!$TvB){
		if($TvBaseColorName==""||$TvBaseColorName=="TvBaseColor10"){$TvBaseColorName="TvBaseColor01";}
		else if($TvBaseColorName=="TvBaseColor01"){$TvBaseColorName="TvBaseColor02";}
		else if($TvBaseColorName=="TvBaseColor02"){$TvBaseColorName="TvBaseColor03";}
		else if($TvBaseColorName=="TvBaseColor03"){$TvBaseColorName="TvBaseColor04";}
		else if($TvBaseColorName=="TvBaseColor04"){$TvBaseColorName="TvBaseColor05";}
		else if($TvBaseColorName=="TvBaseColor05"){$TvBaseColorName="TvBaseColor06";}
		else if($TvBaseColorName=="TvBaseColor06"){$TvBaseColorName="TvBaseColor07";}
		else if($TvBaseColorName=="TvBaseColor07"){$TvBaseColorName="TvBaseColor08";}
		else if($TvBaseColorName=="TvBaseColor08"){$TvBaseColorName="TvBaseColor09";}
		else if($TvBaseColorName=="TvBaseColor09"){$TvBaseColorName="TvBaseColor10";}
		$TvB=1;
	}

	$テレビベースカラー名=$TvBaseColorName;

	$ナット名 = "@" + $親ナット名Tv + "/" + $硝本名 + "/" + $テレビベースカラー名;

	CreateColor($ナット名, $描画優先度Tv, 0, 0, 800, 600, $TV下);
	SetAlias($ナット名, $テレビベースカラー名);
	Fade($ナット名, 0, 0, null, true);
}

function FadeBaseColorTv(描画速度,待ち)
{
	$テレビベースカラー名EX = "@" + $テレビベースカラー名;
	Fade($テレビベースカラー名EX, 描画速度, 1000, null, 待ち);
}








//――――――――――――――――――――――――――――――――――――――
..立ち絵関係
//――――――――――――――――――――――――――――――――――――――
function Tv($Ｘ位置, $Ｙ位置, $画像)
{
	if($TvName==""||$TvName=="TvStand10"){$TvName="TvStand01";}
	else if($TvName=="TvStand01"){$TvName="TvStand02";}
	else if($TvName=="TvStand02"){$TvName="TvStand03";}
	else if($TvName=="TvStand03"){$TvName="TvStand04";}
	else if($TvName=="TvStand04"){$TvName="TvStand05";}
	else if($TvName=="TvStand05"){$TvName="TvStand06";}
	else if($TvName=="TvStand06"){$TvName="TvStand07";}
	else if($TvName=="TvStand07"){$TvName="TvStand08";}
	else if($TvName=="TvStand08"){$TvName="TvStand09";}
	else if($TvName=="TvStand09"){$TvName="TvStand10";}

	if($TvName01==""){$TvName01=$TvName;}
	else if($TvName02==""){$TvName02=$TvName;}
	else if($TvName03==""){$TvName03=$TvName;}
	else if($TvName04==""){$TvName04=$TvName;}
	else if($TvName05==""){$TvName05=$TvName;}
	else if($TvName06==""){$TvName06=$TvName;}
	else if($TvName07==""){$TvName07=$TvName;}
	else if($TvName08==""){$TvName08=$TvName;}
	else if($TvName09==""){$TvName09=$TvName;}
	else if($TvName10==""){$TvName10=$TvName;}

	$ナット名=$TvName;

	$画像 = "cg/tv/" + $画像;
	$nut = "@" + $親ナット名Tv + "/" + $硝本名 + "/" + $ナット名;

	$描画優先度 = $描画優先度Tv + 49;

	CreateTexture($nut, $描画優先度, center, 20, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);
//	Move($nut, 0, @0, @-95, null, true);

	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}


...tv表情＆ポーズ変更
function FadeTv($描画時間,$待ち)
{
	if($TvName01!=""){$ナット名=$TvName01;$TvName01="";}
	else if($TvName02!=""){$ナット名=$TvName02;$TvName02="";}
	else if($TvName03!=""){$ナット名=$TvName03;$TvName03="";}
	else if($TvName04!=""){$ナット名=$TvName04;$TvName04="";}
	else if($TvName05!=""){$ナット名=$TvName05;$TvName05="";}
	else if($TvName06!=""){$ナット名=$TvName06;$TvName06="";}
	else if($TvName07!=""){$ナット名=$TvName07;$TvName07="";}
	else if($TvName08!=""){$ナット名=$TvName08;$TvName08="";}
	else if($TvName09!=""){$ナット名=$TvName09;$TvName09="";}
	else if($TvName10!=""){$ナット名=$TvName10;$TvName10="";}

	$TvP = 1;

	PreFadeTv();

	$FaceTv2=$FaceTv;
	$FaceTv=$nut;
	$TvQ = 1;

	//指定用
	$nutTv=$setnut;
	$nutTv2=$astnut;
}

...tvデリート
function DeleteTv($描画時間,$待ち)
{
	$ナット名="名無し";

	$TvP = 0;

	PreFadeTv();

	$TvQ = 0;
}

...描画マクロ
function PreFadeTv()
{
	$nut = $ナット名;

	$nus = "@" + $親ナット名Tv + "/" + $硝本名;
	$picnut = $FaceTv;
	$Prepicnut = $FaceTv2;

	if($TvP==1 && $TvQ==0){$FaceTv="名無し";}

	$setnut = $nus + "/" + $nut;
	$astnut = $nus + "/" + $picnut;
	$Preastnut = $nus + "/" + $Prepicnut;

	if($TvP!=0 && $TvQ==0 && $setnut!=$astnut && $astnut!=$Preastnut){
		Fade($astnut, 0, 0, null, false);
	}

	Fade($Preastnut, 0, 0, null, false);

	if($TvQ!=0 && $setnut!=$Preastnut && $astnut!=$Preastnut){
		Delete($Preastnut);
	}

	if($TvP==1 && $TvQ==0){
		Fade($setnut, $描画時間, 1000, null, false);
	}else if($TvP==1 && $setnut!=$astnut){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $描画時間, 0, Axl3, false);
		Fade($setnut, $描画時間, 1000, Dxl2, false);
		Request($astnut, Disused);
	}else if($TvP==0){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $描画時間, 0, null, false);
		Request($astnut, Disused);
	}

	if($待ち==true)
	{
		WaitAction($setnut, null);

		if($TvP==0){
			WaitAction($astnut, null);
		}

	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}
}






//――――――――――――――――――――――――――――――――――――――
..テクスチャ関係
//――――――――――――――――――――――――――――――――――――――
function Bv($描画優先度, $Ｘ位置, $Ｙ位置, $画像)
{
	if($BvName==""||$BvName=="Bv10"){$BvName="Bv01";}
	else if($BvName=="Bv01"){$BvName="Bv02";}
	else if($BvName=="Bv02"){$BvName="Bv03";}
	else if($BvName=="Bv03"){$BvName="Bv04";}
	else if($BvName=="Bv04"){$BvName="Bv05";}
	else if($BvName=="Bv05"){$BvName="Bv06";}
	else if($BvName=="Bv06"){$BvName="Bv07";}
	else if($BvName=="Bv07"){$BvName="Bv08";}
	else if($BvName=="Bv08"){$BvName="Bv09";}
	else if($BvName=="Bv09"){$BvName="Bv10";}

	if($BvName01==""){$BvName01=$BvName;}
	else if($BvName02==""){$BvName02=$BvName;}
	else if($BvName03==""){$BvName03=$BvName;}
	else if($BvName04==""){$BvName04=$BvName;}
	else if($BvName05==""){$BvName05=$BvName;}
	else if($BvName06==""){$BvName06=$BvName;}
	else if($BvName07==""){$BvName07=$BvName;}
	else if($BvName08==""){$BvName08=$BvName;}
	else if($BvName09==""){$BvName09=$BvName;}
	else if($BvName10==""){$BvName10=$BvName;}

	$ナット名=$BvName;

//	$画像 = "cg/tv/" + $画像;
	$nut = "@" + $親ナット名Tv + "/" + $硝本名 + "/" + $ナット名;


//	$描画優先度 = $描画優先度Tv + $映描画優先度差分;

	CreateTexture($nut, $描画優先度, -250, -209, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);

	Request($nut, Smoothing);
	Zoom($nut, 0, 310, 210, null, false);

	Move($nut, 0, $Ｘ位置, $Ｙ位置, null, true);
}


...tv表情＆ポーズ変更
function FadeBv($描画時間,$待ち)
{
	if($BvName01!=""){$ナット名=$BvName01;$BvName01="";}
	else if($BvName02!=""){$ナット名=$BvName02;$BvName02="";}
	else if($BvName03!=""){$ナット名=$BvName03;$BvName03="";}
	else if($BvName04!=""){$ナット名=$BvName04;$BvName04="";}
	else if($BvName05!=""){$ナット名=$BvName05;$BvName05="";}
	else if($BvName06!=""){$ナット名=$BvName06;$BvName06="";}
	else if($BvName07!=""){$ナット名=$BvName07;$BvName07="";}
	else if($BvName08!=""){$ナット名=$BvName08;$BvName08="";}
	else if($BvName09!=""){$ナット名=$BvName09;$BvName09="";}
	else if($BvName10!=""){$ナット名=$BvName10;$BvName10="";}

	$BvP = 1;

	PreFadeBv();

	$FaceBv2=$FaceBv;
	$FaceBv=$nut;

	$BvQ = 1;

	//指定用
	$nutBv=$setnut;
	$nutBv2=$astnut;
}

...tvデリート
function DeleteBv($描画時間,$待ち)
{
	$ナット名="名無し";

	$BvP = 0;

	PreFadeBv();

	$BvQ = 0;
}

...描画マクロ
function PreFadeBv()
{
	$nut = $ナット名;

	$nus = "@" + $親ナット名Tv + "/" + $硝本名;
	$picnut = $FaceBv;
	$Prepicnut = $FaceBv2;

	if($BvP==1 && $BvQ==0){$FaceBv="名無し";}

	$setnut = $nus + "/" + $nut;
	$astnut = $nus + "/" + $picnut;
	$Preastnut = $nus + "/" + $Prepicnut;

	if($BvP!=0 && $BvQ==0 && $setnut!=$astnut && $astnut!=$Preastnut){
		Fade($astnut, 0, 0, null, false);
	}

	Fade($Preastnut, 0, 0, null, false);

	if($BvQ!=0 && $setnut!=$Preastnut && $astnut!=$Preastnut){
		Delete($Preastnut);
	}

	if($BvP==1 && $BvQ==0){
		Fade($setnut, $描画時間, 1000, null, false);
	}else if($BvP==1 && $setnut!=$astnut){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $描画時間, 0, Axl3, false);
		Fade($setnut, $描画時間, 1000, Dxl2, false);
		Request($astnut, Disused);
	}else if($BvP==0){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $描画時間, 0, null, false);
		Request($astnut, Disused);
	}

	if($待ち==true)
	{
		WaitAction($setnut, null);

		if($BvP==0){
			WaitAction($astnut, null);
		}

	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}
}





//――――――――――――――――――――――――――――――――――――――
..カラー関係
//――――――――――――――――――――――――――――――――――――――
function Cv($描画優先度, $透明度, $画像)
{
	if($CvName==""||$CvName=="Cv10"){$CvName="Cv01";}
	else if($CvName=="Cv01"){$CvName="Cv02";}
	else if($CvName=="Cv02"){$CvName="Cv03";}
	else if($CvName=="Cv03"){$CvName="Cv04";}
	else if($CvName=="Cv04"){$CvName="Cv05";}
	else if($CvName=="Cv05"){$CvName="Cv06";}
	else if($CvName=="Cv06"){$CvName="Cv07";}
	else if($CvName=="Cv07"){$CvName="Cv08";}
	else if($CvName=="Cv08"){$CvName="Cv09";}
	else if($CvName=="Cv09"){$CvName="Cv10";}


	if($CvName01==""){$CvName01=$CvName;$CvColor01=$透明度;}
	else if($CvName02==""){$CvName02=$CvName;$CvColor02=$透明度;}
	else if($CvName03==""){$CvName03=$CvName;$CvColor03=$透明度;}
	else if($CvName04==""){$CvName04=$CvName;$CvColor04=$透明度;}
	else if($CvName05==""){$CvName05=$CvName;$CvColor05=$透明度;}
	else if($CvName06==""){$CvName06=$CvName;$CvColor06=$透明度;}
	else if($CvName07==""){$CvName07=$CvName;$CvColor07=$透明度;}
	else if($CvName08==""){$CvName08=$CvName;$CvColor08=$透明度;}
	else if($CvName09==""){$CvName09=$CvName;$CvColor09=$透明度;}
	else if($CvName10==""){$CvName10=$CvName;$CvColor10=$透明度;}

	$ナット名=$CvName;

//	$画像 = "cg/tv/" + $画像;
	$nut = "@" + $親ナット名Tv + "/" + $硝本名 + "/" + $ナット名;


//	$描画優先度 = $描画優先度Tv + $映描画優先度差分;

	CreateColor($nut, $描画優先度, 0, 0, 300, 200, $画像);
	SetAlias($nut,$ナット名);
	Fade($nut, 0, 0, null, true);
}


...tv表情＆ポーズ変更
function FadeCv($描画時間,$待ち)
{
	if($CvName01!=""){$ナット名=$CvName01;$CvName01="";$TV色透明度=$CvColor01;}
	else if($CvName02!=""){$ナット名=$CvName02;$CvName02="";$TV色透明度=$CvColor02;}
	else if($CvName03!=""){$ナット名=$CvName03;$CvName03="";$TV色透明度=$CvColor03;}
	else if($CvName04!=""){$ナット名=$CvName04;$CvName04="";$TV色透明度=$CvColor04;}
	else if($CvName05!=""){$ナット名=$CvName05;$CvName05="";$TV色透明度=$CvColor05;}
	else if($CvName06!=""){$ナット名=$CvName06;$CvName06="";$TV色透明度=$CvColor06;}
	else if($CvName07!=""){$ナット名=$CvName07;$CvName07="";$TV色透明度=$CvColor07;}
	else if($CvName08!=""){$ナット名=$CvName08;$CvName08="";$TV色透明度=$CvColor08;}
	else if($CvName09!=""){$ナット名=$CvName09;$CvName09="";$TV色透明度=$CvColor09;}
	else if($CvName10!=""){$ナット名=$CvName10;$CvName10="";$TV色透明度=$CvColor10;}

	$CvP = 1;

	PreFadeCv();

	$FaceCv2=$FaceCv;
	$FaceCv=$nut;

	$CvQ = 1;

	//指定用
	$nutCv=$setnut;
	$nutCv2=$astnut;
}

...tvデリート
function DeleteCv($描画時間,$待ち)
{
	$ナット名="名無し";

	$CvP = 0;

	PreFadeCv();

	$CvQ = 0;
}

...描画マクロ
function PreFadeCv()
{
	$nut = $ナット名;

	$nus = "@" + $親ナット名Tv + "/" + $硝本名;
	$picnut = $FaceCv;
	$Prepicnut = $FaceCv2;

	if($CvP==1 && $CvQ==0){$FaceCv="名無し";}

	$setnut = $nus + "/" + $nut;
	$astnut = $nus + "/" + $picnut;
	$Preastnut = $nus + "/" + $Prepicnut;

	if($CvP!=0 && $CvQ==0 && $setnut!=$astnut && $astnut!=$Preastnut){
		Fade($astnut, 0, 0, null, false);
	}

	Fade($Preastnut, 0, 0, null, false);

	if($CvQ!=0 && $setnut!=$Preastnut && $astnut!=$Preastnut){
		Delete($Preastnut);
	}

	if($CvP==1 && $CvQ==0){
		Fade($setnut, $描画時間, $TV色透明度, null, false);
	}else if($CvP==1 && $setnut!=$astnut){
//		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $描画時間, 0, Axl3, false);
		Fade($setnut, $描画時間, $TV色透明度, Dxl2, false);
		Request($astnut, Disused);
	}else if($CvP==0){
//		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $描画時間, 0, null, false);
		Request($astnut, Disused);
	}

	if($待ち==true)
	{
		WaitAction($setnut, null);

		if($CvP==0){
			WaitAction($astnut, null);
		}

	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}
}



//――――――――――――――――――――――――――――――――――――――
..ノイズ関係
//――――――――――――――――――――――――――――――――――――――
//======================================
...ノイズプロセス設置マクロ
//======================================
function Nv($ノイズ透明度)
{
	if($NvSoundName==""||$NvSoundName=="NvSound10"){$NvSoundName="NvSound01";}
	else if($NvSoundName=="NvSound01"){$NvSoundName="NvSound02";}
	else if($NvSoundName=="NvSound02"){$NvSoundName="NvSound03";}
	else if($NvSoundName=="NvSound03"){$NvSoundName="NvSound04";}
	else if($NvSoundName=="NvSound04"){$NvSoundName="NvSound05";}
	else if($NvSoundName=="NvSound05"){$NvSoundName="NvSound06";}
	else if($NvSoundName=="NvSound06"){$NvSoundName="NvSound07";}
	else if($NvSoundName=="NvSound07"){$NvSoundName="NvSound08";}
	else if($NvSoundName=="NvSound08"){$NvSoundName="NvSound09";}
	else if($NvSoundName=="NvSound09"){$NvSoundName="NvSound10";}

	if($NvSoundName01==""){$NvSoundName01=$NvSoundName;$NoiseStencil01=$ノイズ透明度;}
	else if($NvSoundName02==""){$NvSoundName02=$NvSoundName;$NoiseStencil02=$ノイズ透明度;}
	else if($NvSoundName03==""){$NvSoundName03=$NvSoundName;$NoiseStencil03=$ノイズ透明度;}
	else if($NvSoundName04==""){$NvSoundName04=$NvSoundName;$NoiseStencil04=$ノイズ透明度;}
	else if($NvSoundName05==""){$NvSoundName05=$NvSoundName;$NoiseStencil05=$ノイズ透明度;}
	else if($NvSoundName06==""){$NvSoundName06=$NvSoundName;$NoiseStencil06=$ノイズ透明度;}
	else if($NvSoundName07==""){$NvSoundName07=$NvSoundName;$NoiseStencil07=$ノイズ透明度;}
	else if($NvSoundName08==""){$NvSoundName08=$NvSoundName;$NoiseStencil08=$ノイズ透明度;}
	else if($NvSoundName09==""){$NvSoundName09=$NvSoundName;$NoiseStencil09=$ノイズ透明度;}
	else if($NvSoundName10==""){$NvSoundName10=$NvSoundName;$NoiseStencil10=$ノイズ透明度;}

	$雑プロセス = $雑プロセス頭 + $NvSoundName;


	if($NoiseLoop){
		CreateSound($雑プロセス, SE, "sound/se/se特殊_天国_ノイズ_L");
		SetLoop($雑プロセス, true);
	}else if(!$NoiseLoop){
		CreateSound($雑プロセス, SE, "sound/se/se擬音_特殊_砂嵐01");
		SetLoop($雑プロセス, false);
	}

	SetAlias($雑プロセス, $雑プロセス);
	SetVolume($雑プロセス, 0, 0, NULL);
}



//======================================
...ノイズプロセス動作１「開始」
//======================================
function FadeNv($描画時間,$待ち)
{
	if($NvSoundName01!=""){$ノイズ名=$NvSoundName01;$透明名=$NoiseStencil01;$NvSoundName01="";}
	else if($NvSoundName02!=""){$ノイズ名=$NvSoundName02;$透明名=$NoiseStencil02;$NvSoundName02="";}
	else if($NvSoundName03!=""){$ノイズ名=$NvSoundName03;$透明名=$NoiseStencil03;$NvSoundName03="";}
	else if($NvSoundName04!=""){$ノイズ名=$NvSoundName04;$透明名=$NoiseStencil04;$NvSoundName04="";}
	else if($NvSoundName05!=""){$ノイズ名=$NvSoundName05;$透明名=$NoiseStencil05;$NvSoundName05="";}
	else if($NvSoundName06!=""){$ノイズ名=$NvSoundName06;$透明名=$NoiseStencil06;$NvSoundName06="";}
	else if($NvSoundName07!=""){$ノイズ名=$NvSoundName07;$透明名=$NoiseStencil07;$NvSoundName07="";}
	else if($NvSoundName08!=""){$ノイズ名=$NvSoundName08;$透明名=$NoiseStencil08;$NvSoundName08="";}
	else if($NvSoundName09!=""){$ノイズ名=$NvSoundName09;$透明名=$NoiseStencil09;$NvSoundName09="";}
	else if($NvSoundName10!=""){$ノイズ名=$NvSoundName10;$透明名=$NoiseStencil10;$NvSoundName10="";}

	$NvP = 1;

	PreFadeNv();

	$ProNv2=$ProNv;
	$ProNv=$ノイズ名;
	$NvQ = 1;

	//指定用
	$nutNv=$setdut;
	$nutNv2=$astdut;
}

//======================================
...ノイズプロセス動作２「終了」
//======================================
function DeleteNv($描画時間,$待ち)
{
	$ナット名="名無し";

	$NvP = 4;

	PreFadeNv();

	$NvQ = 4;
}


//======================================
...ノイズプロセス描画マクロ
//======================================
function PreFadeNv()
{
	$dut = $ノイズ名;
	$picdut = $ProNv;
	$Prepicdut = $ProNv2;

	if($NvP==1 && $NvQ==0){$FaceNv="名無し";}

	$setdut = "@" + $雑プロセス頭 + $dut;
	$astdut = "@" + $雑プロセス頭 + $picdut;
	$Preastdut = "@" + $雑プロセス頭 + $Prepicdut;

	Request($止名, Stop);
	WaitAction($止名, null);

	SetVolume($astdut, $描画時間, 0, NULL);

	if($NvP==1)
	{
		//■ノイズスタート
		Request($setdut, Play);
		Request($setdut, Disused);
		SetVolume($setdut, $描画時間, $NoiseVolume, NULL);
		Fade("@noise_only", $描画時間, $透明名, null, false);
		Request($系名, Start);
	}

	if($NvP==4)
	{
		//■ノイズ停止
		Fade("@noise_only", $描画時間, 0, null, false);
		$NoiseStopTime=$描画時間;
		Request($止名, Start);
	}

	if($待ち==true)
	{
		Wait($描画時間);
	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}

}







function SetNoiseVolume($NoiseVolume)
{
}

function SetNoiseChange($NoiseRace)
{
}










//――――――――――――――――――――――――――――――――――――――
..テレビプロセス関係
//――――――――――――――――――――――――――――――――――――――

//======================================
...テレビプロセス動作１「開始」
//======================================
function ProcessTv($待ち)
{
	$ViP = 1;
	SetProcessTv();

	ReadyProcessTv();
	PreProcessTv();
	ConProcessTv();
	$ViQ = 1;

	//指定用
	$nutTv=$setvut;
	$nutTv2=$astvut;
	$nutNv=$setdut;
	$nutNv2=$astdut;
	$nutBv=$settxt;
	$nutBv2=$asttxt;
	$nutCv=$setcol;
	$nutCv2=$astcol;
}



//======================================
...テレビプロセス動作２「切り替え」
//======================================
function ProcessTv2($待ち)
{
	$ViP = 2;
	SetProcessTv();

	ReadyProcessTv();
	PreProcessTv();
	ConProcessTv();
	$ViQ = 2;

	//指定用
	$nutTv=$setvut;
	$nutTv2=$astvut;
	$nutNv=$setdut;
	$nutNv2=$astdut;
	$nutBv=$settxt;
	$nutBv2=$asttxt;
	$nutCv=$setcol;
	$nutCv2=$astcol;
}



//======================================
...テレビプロセス動作３「長切り替え」
//======================================
function ProcessTv3($待ち)
{
	$ViP = 3;
	SetProcessTv();

	ReadyProcessTv();
	PreProcessTv();
	ConProcessTv();
	$ViQ = 3;

	//指定用
	$nutTv=$setvut;
	$nutTv2=$astvut;
	$nutNv=$setdut;
	$nutNv2=$astdut;
	$nutBv=$settxt;
	$nutBv2=$asttxt;
	$nutCv=$setcol;
	$nutCv2=$astcol;
}



//======================================
...テレビプロセス動作４「プツン」
//======================================
function ProcessTv4($待ち)
{
	$ViP = 4;
	SetProcessTv();

	ReadyProcessTv();
	PreProcessTv();
	ConProcessTv();
	$ViQ = 4;

	//指定用
	$nutTv=$setvut;
	$nutTv2=$astvut;
	$nutNv=$setdut;
	$nutNv2=$astdut;
	$nutBv=$settxt;
	$nutBv2=$asttxt;
	$nutCv=$setcol;
	$nutCv2=$astcol;
}


function SetTvVolume($TvVolume)
{
}


//======================================
...テレビプロセス設置マクロ
//======================================
function SetProcessTv()
{
	if($TvProcessName==""||$TvProcessName=="TvProcess10"){$TvProcessName="TvProcess01";$TvSoundName="TvSound01";}
	else if($TvProcessName=="TvProcess01"){$TvProcessName="TvProcess02";$TvSoundName="TvSound02";}
	else if($TvProcessName=="TvProcess02"){$TvProcessName="TvProcess03";$TvSoundName="TvSound03";}
	else if($TvProcessName=="TvProcess03"){$TvProcessName="TvProcess04";$TvSoundName="TvSound04";}
	else if($TvProcessName=="TvProcess04"){$TvProcessName="TvProcess05";$TvSoundName="TvSound05";}
	else if($TvProcessName=="TvProcess05"){$TvProcessName="TvProcess06";$TvSoundName="TvSound06";}
	else if($TvProcessName=="TvProcess06"){$TvProcessName="TvProcess07";$TvSoundName="TvSound07";}
	else if($TvProcessName=="TvProcess07"){$TvProcessName="TvProcess08";$TvSoundName="TvSound08";}
	else if($TvProcessName=="TvProcess08"){$TvProcessName="TvProcess09";$TvSoundName="TvSound09";}
	else if($TvProcessName=="TvProcess09"){$TvProcessName="TvProcess10";$TvSoundName="TvSound10";}

	if($TvProcessName01==""){$TvProcessName01=$TvProcessName;$TvSoundName01=$TvSoundName;}
	else if($TvProcessName02==""){$TvProcessName02=$TvProcessName;$TvSoundName02=$TvSoundName;}
	else if($TvProcessName03==""){$TvProcessName03=$TvProcessName;$TvSoundName03=$TvSoundName;}
	else if($TvProcessName04==""){$TvProcessName04=$TvProcessName;$TvSoundName04=$TvSoundName;}
	else if($TvProcessName05==""){$TvProcessName05=$TvProcessName;$TvSoundName05=$TvSoundName;}
	else if($TvProcessName06==""){$TvProcessName06=$TvProcessName;$TvSoundName06=$TvSoundName;}
	else if($TvProcessName07==""){$TvProcessName07=$TvProcessName;$TvSoundName07=$TvSoundName;}
	else if($TvProcessName08==""){$TvProcessName08=$TvProcessName;$TvSoundName08=$TvSoundName;}
	else if($TvProcessName09==""){$TvProcessName09=$TvProcessName;$TvSoundName09=$TvSoundName;}
	else if($TvProcessName10==""){$TvProcessName10=$TvProcessName;$TvSoundName10=$TvSoundName;}

	$alias = "@" + $映プロセス頭 + $TvProcessName;

	if($vision01_use==$alias){$vision01_use="";}//初期化変数
	if($vision02_use==$alias){$vision02_use="";}//初期化変数
	if($vision03_use==$alias){$vision03_use="";}//初期化変数
	if($vision04_use==$alias){$vision04_use="";}//初期化変数
	if($vision05_use==$alias){$vision05_use="";}//初期化変数
	if($vision06_use==$alias){$vision06_use="";}//初期化変数
	if($vision07_use==$alias){$vision07_use="";}//初期化変数
	if($vision08_use==$alias){$vision08_use="";}//初期化変数
	if($vision09_use==$alias){$vision09_use="";}//初期化変数
	if($vision10_use==$alias){$vision10_use="";}//初期化変数


		$親ナット名 = $親ナット名Tv;

		if($vision01_use==""){//初期化変数
			$vision01_use=$alias;
			$vision01_who=$親ナット名;
			$vision_num="1";
		}else if($vision02_use==""){//初期化変数
			$vision02_use=$alias;
			$vision02_who=$親ナット名;
			$vision_num="2";
		}else if($vision03_use==""){//初期化変数
			$vision03_use=$alias;
			$vision03_who=$親ナット名;
			$vision_num="3";
		}else if($vision04_use==""){//初期化変数
			$vision04_use=$alias;
			$vision04_who=$親ナット名;
			$vision_num="4";
		}else if($vision05_use==""){//初期化変数
			$vision05_use=$alias;
			$vision05_who=$親ナット名;
			$vision_num="5";
		}else if($vision06_use==""){//初期化変数
			$vision06_use=$alias;
			$vision06_who=$親ナット名;
			$vision_num="6";
		}else if($vision07_use==""){//初期化変数
			$vision07_use=$alias;
			$vision07_who=$親ナット名;
			$vision_num="7";
		}else if($vision08_use==""){//初期化変数
			$vision08_use=$alias;
			$vision08_who=$親ナット名;
			$vision_num="8";
		}else if($vision09_use==""){//初期化変数
			$vision09_use=$alias;
			$vision09_who=$親ナット名;
			$vision_num="9";
		}else if($vision10_use==""){//初期化変数
			$vision10_use=$alias;
			$vision10_who=$親ナット名;
			$vision_num="10";
		}else{
			$str="立ち絵が満杯だぜ？";
			CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
			Request("DebugAlert",PushText);
			return;
		}

	$音プロセス = $音プロセス頭 + $TvSoundName;


	if($ViP==1){
		$SoundNut="sound/se/se特殊_天国_テレビon";
	}else if($ViP==2){
		$SoundNut="sound/se/se特殊_天国_チャンネル01";
	}else if($ViP==3){
		$SoundNut="sound/se/se特殊_天国_チャンネル02";
	}else if($ViP==4){
		$SoundNut="sound/se/se特殊_天国_テレビoff";
	}

	CreateSound($音プロセス, SE, $SoundNut);
	SetLoop($音プロセス, false);
	SetAlias($音プロセス, $音プロセス);
	SetVolume($音プロセス, 0, 0, NULL);

	$映プロセス = $映プロセス頭 + $TvProcessName;
	$proc_f="Television"+$vision_num;
	CreateProcess($映プロセス, 1000, 0, 0, $proc_f);
	SetAlias($映プロセス, $映プロセス);
}


//======================================
...テレビプロセス準備マクロ
//======================================
function ReadyProcessTv()
{
	if($TvProcessName01!=""){$プロセス名=$TvProcessName01;$サウンド名=$TvSoundName01;$TvProcessName01="";}
	else if($TvProcessName02!=""){$プロセス名=$TvProcessName02;$サウンド名=$TvSoundName02;$TvProcessName02="";}
	else if($TvProcessName03!=""){$プロセス名=$TvProcessName03;$サウンド名=$TvSoundName03;$TvProcessName03="";}
	else if($TvProcessName04!=""){$プロセス名=$TvProcessName04;$サウンド名=$TvSoundName04;$TvProcessName04="";}
	else if($TvProcessName05!=""){$プロセス名=$TvProcessName05;$サウンド名=$TvSoundName05;$TvProcessName05="";}
	else if($TvProcessName06!=""){$プロセス名=$TvProcessName06;$サウンド名=$TvSoundName06;$TvProcessName06="";}
	else if($TvProcessName07!=""){$プロセス名=$TvProcessName07;$サウンド名=$TvSoundName07;$TvProcessName07="";}
	else if($TvProcessName08!=""){$プロセス名=$TvProcessName08;$サウンド名=$TvSoundName08;$TvProcessName08="";}
	else if($TvProcessName09!=""){$プロセス名=$TvProcessName09;$サウンド名=$TvSoundName09;$TvProcessName09="";}
	else if($TvProcessName10!=""){$プロセス名=$TvProcessName10;$サウンド名=$TvSoundName10;$TvProcessName10="";}

	if($ViP==4){
		$NvP=4;$NvQ=4;
		$ノイズ名="名無し";
	}else{
		$NvP=1;$NvQ=1;
		if($NvSoundName01!=""){$ノイズ名=$NvSoundName01;$透明名=$NoiseStencil01;$NvSoundName01="";}
		else if($NvSoundName02!=""){$ノイズ名=$NvSoundName02;$透明名=$NoiseStencil02;$NvSoundName02="";}
		else if($NvSoundName03!=""){$ノイズ名=$NvSoundName03;$透明名=$NoiseStencil03;$NvSoundName03="";}
		else if($NvSoundName04!=""){$ノイズ名=$NvSoundName04;$透明名=$NoiseStencil04;$NvSoundName04="";}
		else if($NvSoundName05!=""){$ノイズ名=$NvSoundName05;$透明名=$NoiseStencil05;$NvSoundName05="";}
		else if($NvSoundName06!=""){$ノイズ名=$NvSoundName06;$透明名=$NoiseStencil06;$NvSoundName06="";}
		else if($NvSoundName07!=""){$ノイズ名=$NvSoundName07;$透明名=$NoiseStencil07;$NvSoundName07="";}
		else if($NvSoundName08!=""){$ノイズ名=$NvSoundName08;$透明名=$NoiseStencil08;$NvSoundName08="";}
		else if($NvSoundName09!=""){$ノイズ名=$NvSoundName09;$透明名=$NoiseStencil09;$NvSoundName09="";}
		else if($NvSoundName10!=""){$ノイズ名=$NvSoundName10;$透明名=$NoiseStencil10;$NvSoundName10="";}
		else{$ノイズ名="名無し";$NvP=4;$NvQ=4;}
	}

	if($ViP==4){
		$TvP=0;$TvQ=0;
		$立ち絵名="名無し";
	}else{
		$TvP=1;$TvQ=1;
		if($TvName01!=""){$立ち絵名=$TvName01;$TvName01="";}
		else if($TvName02!=""){$立ち絵名=$TvName02;$TvName02="";}
		else if($TvName03!=""){$立ち絵名=$TvName03;$TvName03="";}
		else if($TvName04!=""){$立ち絵名=$TvName04;$TvName04="";}
		else if($TvName05!=""){$立ち絵名=$TvName05;$TvName05="";}
		else if($TvName06!=""){$立ち絵名=$TvName06;$TvName06="";}
		else if($TvName07!=""){$立ち絵名=$TvName07;$TvName07="";}
		else if($TvName08!=""){$立ち絵名=$TvName08;$TvName08="";}
		else if($TvName09!=""){$立ち絵名=$TvName09;$TvName09="";}
		else if($TvName10!=""){$立ち絵名=$TvName10;$TvName10="";}
		else{$立ち絵名="名無し";$TvP=0;$TvQ=0;}
	}

	if($ViP==4){
		$BvP=0;$BvQ=0;
		$画像絵名="名無し";
	}else{
		$BvP=1;$BvQ=1;
		if($BvName01!=""){$画像絵名=$BvName01;$BvName01="";}
		else if($BvName02!=""){$画像絵名=$BvName02;$BvName02="";}
		else if($BvName03!=""){$画像絵名=$BvName03;$BvName03="";}
		else if($BvName04!=""){$画像絵名=$BvName04;$BvName04="";}
		else if($BvName05!=""){$画像絵名=$BvName05;$BvName05="";}
		else if($BvName06!=""){$画像絵名=$BvName06;$BvName06="";}
		else if($BvName07!=""){$画像絵名=$BvName07;$BvName07="";}
		else if($BvName08!=""){$画像絵名=$BvName08;$BvName08="";}
		else if($BvName09!=""){$画像絵名=$BvName09;$BvName09="";}
		else if($BvName10!=""){$画像絵名=$BvName10;$BvName10="";}
		else{$画像絵名="名無し";$BvQ=0;$BvQ=0;}
	}

	if($ViP==4){
		$CvP=0;$CvQ=0;
		$色像絵名="名無し";
	}else{
		$CvP=1;$CvQ=1;
		if($CvName01!=""){$色像絵名=$CvName01;$CvName01="";$TV色透明度=$CvColor01;}
		else if($CvName02!=""){$色像絵名=$CvName02;$CvName02="";$TV色透明度=$CvColor02;}
		else if($CvName03!=""){$色像絵名=$CvName03;$CvName03="";$TV色透明度=$CvColor03;}
		else if($CvName04!=""){$色像絵名=$CvName04;$CvName04="";$TV色透明度=$CvColor04;}
		else if($CvName05!=""){$色像絵名=$CvName05;$CvName05="";$TV色透明度=$CvColor05;}
		else if($CvName06!=""){$色像絵名=$CvName06;$CvName06="";$TV色透明度=$CvColor06;}
		else if($CvName07!=""){$色像絵名=$CvName07;$CvName07="";$TV色透明度=$CvColor07;}
		else if($CvName08!=""){$色像絵名=$CvName08;$CvName08="";$TV色透明度=$CvColor08;}
		else if($CvName09!=""){$色像絵名=$CvName09;$CvName09="";$TV色透明度=$CvColor09;}
		else if($CvName10!=""){$色像絵名=$CvName10;$CvName10="";$TV色透明度=$CvColor10;}
		else{$色像絵名="名無し";$CvQ=0;$CvQ=0;}
	}
}


//======================================
...テレビプロセス描画マクロ
//======================================
function PreProcessTv()
{
	$vus = "@" + $親ナット名Tv;
	$dus = "@" + $親ナット名Tv;

	$pro = $プロセス名;
	$picpro = $ProTv;
	$Prepicpro = $ProTv2;

	$sax = $サウンド名;
	$picsax = $ProSv;
	$Prepicsax = $ProSv2;

	$dut = $ノイズ名;
	$picdut = $ProNv;
	$Prepicdut = $ProNv2;

	$vut = $立ち絵名;
	$picvut = $FaceTv;
	$Prepicvut = $FaceTv2;

	$tex = $画像絵名;
	$pictex = $FaceBv;
	$Prepictex = $FaceBv2;

	$col = $色像絵名;
	$piccol = $FaceCv;
	$Prepiccol = $FaceCv2;

	if($テレビベースカラー名!=$BaseTv)
	{
		$TvB=0;
		$bas = $テレビベースカラー名;
		$picbas = $BaseTv;
		$Prepicbas = $BaseTv2;
	}

	$Prealias = "@" + $映プロセス頭 + $picpro;
	$alias = "@" + $映プロセス頭 + $pro;

	if($vision01_use==$alias){
		$描画時間01=$描画時間;
		$vus01=$vus;
		$sax01=$sax;$picsax01=$picsax;
		$dut01=$dut;$picdut01=$picdut;$PreNoiseStencil01=$透明名;$NvP01=$NvP;
		$vut01=$vut;$picvut01=$picvut;
		$tex01=$tex;$pictex01=$pictex;
		$col01=$col;$piccol01=$piccol;$colstencil01=$TV色透明度;
		$bas01=$bas;$picbas01=$picbas;
		$ViP01=$ViP;
	}else if($vision02_use==$alias){
		$描画時間02=$描画時間;
		$vus02=$vus;
		$sax02=$sax;$picsax02=$picsax;
		$dut02=$dut;$picdut02=$picdut;$PreNoiseStencil02=$透明名;$NvP02=$NvP;
		$vut02=$vut;$picvut02=$picvut;
		$tex02=$tex;$pictex02=$pictex;
		$col02=$col;$piccol02=$piccol;$colstencil02=$TV色透明度;
		$bas02=$bas;$picbas02=$picbas;
		$ViP02=$ViP;
	}else if($vision03_use==$alias){
		$描画時間03=$描画時間;
		$vus03=$vus;
		$sax03=$sax;$picsax03=$picsax;
		$dut03=$dut;$picdut03=$picdut;$PreNoiseStencil03=$透明名;$NvP03=$NvP;
		$vut03=$vut;$picvut03=$picvut;
		$tex03=$tex;$pictex03=$pictex;
		$col03=$col;$piccol03=$piccol;$colstencil03=$TV色透明度;
		$bas03=$bas;$picbas03=$picbas;
		$ViP03=$ViP;
	}else if($vision04_use==$alias){
		$描画時間04=$描画時間;
		$vus04=$vus;
		$sax04=$sax;$picsax04=$picsax;
		$dut04=$dut;$picdut04=$picdut;$PreNoiseStencil04=$透明名;$NvP04=$NvP;
		$vut04=$vut;$picvut04=$picvut;
		$tex04=$tex;$pictex04=$pictex;
		$col04=$col;$piccol04=$piccol;$colstencil04=$TV色透明度;
		$bas04=$bas;$picbas04=$picbas;
		$ViP04=$ViP;
	}else if($vision05_use==$alias){
		$描画時間05=$描画時間;
		$vus05=$vus;
		$sax05=$sax;$picsax05=$picsax;
		$dut05=$dut;$picdut05=$picdut;$PreNoiseStencil05=$透明名;$NvP05=$NvP;
		$vut05=$vut;$picvut05=$picvut;
		$tex05=$tex;$pictex05=$pictex;
		$col05=$col;$piccol05=$piccol;$colstencil05=$TV色透明度;
		$bas05=$bas;$picbas05=$picbas;
		$ViP05=$ViP;
	}else if($vision06_use==$alias){
		$描画時間06=$描画時間;
		$vus06=$vus;
		$sax06=$sax;$picsax06=$picsax;
		$dut06=$dut;$picdut06=$picdut;$PreNoiseStencil06=$透明名;$NvP06=$NvP;
		$vut06=$vut;$picvut06=$picvut;
		$tex06=$tex;$pictex06=$pictex;
		$col06=$col;$piccol06=$piccol;$colstencil06=$TV色透明度;
		$bas06=$bas;$picbas06=$picbas;
		$ViP06=$ViP;
	}else if($vision07_use==$alias){
		$描画時間07=$描画時間;
		$vus07=$vus;
		$sax07=$sax;$picsax07=$picsax;
		$dut07=$dut;$picdut07=$picdut;$PreNoiseStencil07=$透明名;$NvP07=$NvP;
		$vut07=$vut;$picvut07=$picvut;
		$tex07=$tex;$pictex07=$pictex;
		$col07=$col;$piccol07=$piccol;$colstencil07=$TV色透明度;
		$bas07=$bas;$picbas07=$picbas;
		$ViP07=$ViP;
	}else if($vision08_use==$alias){
		$描画時間08=$描画時間;
		$vus08=$vus;
		$sax08=$sax;$picsax08=$picsax;
		$dut08=$dut;$picdut08=$picdut;$PreNoiseStencil08=$透明名;$NvP08=$NvP;
		$vut08=$vut;$picvut08=$picvut;
		$tex08=$tex;$pictex08=$pictex;
		$col08=$col;$piccol08=$piccol;$colstencil08=$TV色透明度;
		$bas08=$bas;$picbas08=$picbas;
		$ViP08=$ViP;
	}else if($vision09_use==$alias){
		$描画時間09=$描画時間;
		$vus09=$vus;
		$sax09=$sax;$picsax09=$picsax;
		$dut09=$dut;$picdut09=$picdut;$PreNoiseStencil09=$透明名;$NvP09=$NvP;
		$vut09=$vut;$picvut09=$picvut;
		$tex09=$tex;$pictex09=$pictex;
		$col09=$col;$piccol09=$piccol;$colstencil09=$TV色透明度;
		$bas09=$bas;$picbas09=$picbas;
		$ViP09=$ViP;
	}else if($vision10_use==$alias){
		$描画時間10=$描画時間;
		$vus10=$vus;
		$sax10=$sax;$picsax10=$picsax;
		$dut10=$dut;$picdut10=$picdut;$PreNoiseStencil10=$透明名;$NvP10=$NvP;
		$vut10=$vut;$picvut10=$picvut;
		$tex10=$tex;$pictex10=$pictex;
		$col10=$col;$piccol10=$piccol;$colstencil10=$TV色透明度;
		$bas10=$bas;$picbas10=$picbas;
		$ViP10=$ViP;
	}else if($ナット名=="名無し"){
	}else{
		$str="「"+$ナット名+"」使用リストにないぜ？";
		CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
		Request("DebugAlert",PushText);
	}


	$setpro = "@" + $映プロセス頭 + $pro;
	$astpro = "@" + $映プロセス頭 + $picpro;
	$Preastpro = "@" + $映プロセス頭 + $Prepicpro;

	$setsax = "@" + $音プロセス頭 + $sax;
	$astsax = "@" + $音プロセス頭 + $picsax;
	$Preastsax = "@" + $音プロセス頭 + $Prepicsax;

	$setdut = "@" + $雑プロセス頭 + $dut;
	$astdut = "@" + $雑プロセス頭 + $picdut;
	$Preastdut = "@" + $雑プロセス頭 + $Prepicdut;

	$setbas = $vus + "/" + $硝本名 + "/" + $bas;
	$astbas = $vus + "/" + $硝本名 + "/" + $picbas;
	$Preastbas = $vus + "/" + $硝本名 + "/" + $Prepicbas;

	$setvut = $vus + "/" + $硝本名 + "/" + $vut;
	$astvut = $vus + "/" + $硝本名 + "/" + $picvut;
	$Preastvut = $vus + "/" + $硝本名 + "/" + $Prepicvut;

	$settex = $vus + "/" + $硝本名 + "/" + $tex;
	$asttex = $vus + "/" + $硝本名 + "/" + $pictex;
	$Preasttex = $vus + "/" + $硝本名 + "/" + $Prepictex;

	$setcol = $vus + "/" + $硝本名 + "/" + $col;
	$astcol = $vus + "/" + $硝本名 + "/" + $piccol;
	$Preastcol = $vus + "/" + $硝本名 + "/" + $Prepiccol;



	Request($astpro, Stop);
	Delete($astpro);
	WaitAction($astpro, null);

	if($setsax!=$Preastsax && $astsax!=$Preastsax){
		SetVolume($Preastsax, 100, 0, NULL);
		Request($Preastsax, Disused);
	}

	if($setdut!=$Preastdut && $astdut!=$Preastdut){
		SetVolume($Preastdut, 100, 0, NULL);
		Request($Preastdut, Disused);
	}

	if($setvut!=$Preastvut && $astvut!=$Preastvut){
		Delete($Preastvut);
	}

	if($settex!=$Preasttex && $asttex!=$Preasttex){
		Delete($Preasttex);
	}

	if($setcol!=$Preastcol && $astcol!=$Preastcol){
		Delete($Preastcol);
	}



	if($ViQ==1){Vi1();}
	if($ViQ==2){Vi2();}
	if($ViQ==3){Vi3();}
	if($ViQ==4){Vi4();}


	if($setpro!=$astpro){
		if($vision01_use==$Prealias){
			$vision01_use="";//初期化変数
		}else if($vision02_use==$Prealias){
			$vision02_use="";//初期化変数
		}else if($vision03_use==$Prealias){
			$vision03_use="";//初期化変数
		}else if($vision04_use==$Prealias){
			$vision04_use="";//初期化変数
		}else if($vision05_use==$Prealias){
			$vision05_use="";//初期化変数
		}else if($vision06_use==$Prealias){
			$vision06_use="";//初期化変数
		}else if($vision07_use==$Prealias){
			$vision07_use="";//初期化変数
		}else if($vision08_use==$Prealias){
			$vision08_use="";//初期化変数
		}else if($vision09_use==$Prealias){
			$vision09_use="";//初期化変数
		}else if($vision10_use==$Prealias){
			$vision10_use="";//初期化変数
		}else{
		//	$str="「"+$astpro01+"」使用リストにないぜ？";
		//	CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
		//	Request("DebugAlert",PushText);
		}
	}

	Request($setpro, Start);
	Request($setpro, Disused);

	if($待ち==true)
	{
		WaitAction($setpro, null);
	}
	else if($待ち != false)
	{
		Wait($待ち);
	}
	else
	{
	}

}

//		Message("ああ","ああ");

function Vi1()
{
	Fade($astvut, 0, 1000, null, true);
	Fade($asttex, 0, 1000, null, true);
//	Fade($astcol, 0, 1000, null, true);

	if($テレビベースカラー名!=$BaseTv){Fade($astbas, 0, 1000, null, true);
	}else{Fade($setbas, 0, 1000, null, true);}

	Fade("@noise1*", 0, 0, null, false);
	Fade("@noise2*", 0, 0, null, false);
	Fade($盤名, 0, $TV走査線透明度, null, true);
}

function Vi2()
{
	Fade($astvut, 0, 1000, null, true);
	Fade($asttex, 0, 1000, null, true);
//	Fade($astcol, 0, 1000, null, true);

	if($テレビベースカラー名!=$BaseTv){Fade($astbas, 0, 1000, null, true);
	}else{Fade($setbas, 0, 1000, null, true);}

	Fade("@noise1*", 0, 0, null, false);
	Fade("@noise2*", 0, 0, null, false);
	Fade($盤名, 0, $TV走査線透明度, null, true);
}

function Vi3()
{
	Fade($astvut, 0, 1000, null, true);
	Fade($asttex, 0, 1000, null, true);
//	Fade($astcol, 0, 1000, null, true);

	if($テレビベースカラー名!=$BaseTv){Fade($astbas, 0, 1000, null, true);
	}else{Fade($setbas, 0, 1000, null, true);}

	Fade("@noise1*", 0, 0, null, false);
	Fade("@noise2*", 0, 0, null, false);
	Fade($盤名, 0, $TV走査線透明度, null, true);
}

function Vi4()
{
	if($テレビベースカラー名!=$BaseTv){Fade($astbas, 0, 0, null, true);
	}else{Fade($setbas, 0, 0, null, true);}

	Fade("@noise1*", 0, 0, null, false);
	Fade("@noise2*", 0, 0, null, false);
	Fade($盤名, 0, 0, null, false);
}



//======================================
...テレビプロセス引継ぎマクロ
//======================================
function ConProcessTv()
{
	$ProTv2=$ProTv;
	$ProTv=$プロセス名;

	$ProSv2=$ProSv;
	$ProSv=$サウンド名;

	$ProNv2=$ProNv;
	$ProNv=$ノイズ名;

	$FaceTv2=$FaceTv;
	$FaceTv=$立ち絵名;

	$FaceBv2=$FaceBv;
	$FaceBv=$画像絵名;

	$FaceCv2=$FaceCv;
	$FaceCv=$色像絵名;

	if($テレビベースカラー名!=$BaseTv)
	{
		$BaseTv2=$BaseTv;
		$BaseTv=$テレビベースカラー名;
	}
}



//――――――――――――――――――――――――――――――――――――――
...映ウィンドウプロセス
//――――――――――――――――――――――――――――――――――――――

function Television1()
{
	$allvut01 = $vus01 + "/" + $硝本名 + "/" + "*";

	$setsax01 = "@" + $音プロセス頭 + $sax01;
	$astsax01 = "@" + $音プロセス頭 + $picsax01;

	$setdut01 = "@" + $雑プロセス頭 + $dut01;
	$astdut01 = "@" + $雑プロセス頭 + $picdut01;

	$setvut01 = $vus01 + "/" + $硝本名 + "/" + $vut01;
	$astvut01 = $vus01 + "/" + $硝本名 + "/" + $picvut01;

	$settex01 = $vus01 + "/" + $硝本名 + "/" + $tex01;
	$asttex01 = $vus01 + "/" + $硝本名 + "/" + $pictex01;

	$setcol01 = $vus01 + "/" + $硝本名 + "/" + $col01;
	$astcol01 = $vus01 + "/" + $硝本名 + "/" + $piccol01;

	$setbas01 = $vus01 + "/" + $硝本名 + "/" + $bas01;
	$astbas01 = $vus01 + "/" + $硝本名 + "/" + $picbas01;


	if($ViP01==1)
	{
		//■スタート
		Fade($盤名, 1000, $TV走査線透明度, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, true);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax01, Play);
				Request($setsax01, Disused);
				Request($astsax01, Disused);
				SetVolume($setsax01, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax01, $TvSpan5, 0, NULL);


		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=7;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP01==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut01, Play);
					Request($setdut01, Disused);
					Request($astdut01, Disused);
					SetVolume($setdut01, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut01, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil01, null, false);
				}else if($NvP01==4){
					//■ノイズ停止
					Request($astdut01, Disused);
					SetVolume($astdut01, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut01);
				Fade($setvut01, 0, 1000, null, false);
				Delete($asttex01);
				Fade($settex01, 0, 1000, null, false);
				Delete($astcol01);
				Fade($setcol01, 0, $colstencil01, null, false);
				Delete($astbas01);
				Fade($setbas01, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP01==2)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax01, Play);
				Request($setsax01, Disused);
				Request($astsax01, Disused);
				SetVolume($setsax01, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax01, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<12)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise2%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==6){
				if($NvP01==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut01, Play);
					Request($setdut01, Disused);
					Request($astdut01, Disused);
					SetVolume($setdut01, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut01, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil01, null, false);
				}else if($NvP01==4){
					//■ノイズ停止
					Request($astdut01, Disused);
					SetVolume($astdut01, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut01);
				Fade($setvut01, 0, 1000, null, false);
				Delete($asttex01);
				Fade($settex01, 0, 1000, null, false);
				Delete($astcol01);
				Fade($setcol01, 0, $colstencil01, null, false);
				Delete($astbas01);
				Fade($setbas01, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP01==3)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax01, Play);
				Request($setsax01, Disused);
				Request($astsax01, Disused);
				SetVolume($setsax01, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax01, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP01==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut01, Play);
					Request($setdut01, Disused);
					Request($astdut01, Disused);
					SetVolume($setdut01, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut01, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil01, null, false);
				}else if($NvP01==4){
					//■ノイズ停止
					Request($astdut01, Disused);
					SetVolume($astdut01, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut01);
				Fade($setvut01, 0, 1000, null, false);
				Delete($asttex01);
				Fade($settex01, 0, 1000, null, false);
				Delete($astcol01);
				Fade($setcol01, 0, $colstencil01, null, false);
				Delete($astbas01);
				Fade($setbas01, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP01==4)
	{
		//■電源を切る
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax01, Play);
				Request($setsax01, Disused);
				Request($astsax01, Disused);
				SetVolume($setsax01, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax01, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<8)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP01==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut01, Play);
					Request($setdut01, Disused);
					Request($astdut01, Disused);
					SetVolume($setdut01, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut01, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil01, null, false);
				}else if($NvP01==4){
					//■ノイズ停止
					Request($astdut01, Disused);
					SetVolume($astdut01, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut01);
				Delete($asttex01);
				Delete($astcol01);
				Fade($setbas01, 0, 0, null, false);
			}
		}

		Fade($盤名, 200, 0, null, false);
		Draw();
	}

}




function Television2()
{
	$allvut02 = $vus02 + "/" + $硝本名 + "/" + "*";

	$setsax02 = "@" + $音プロセス頭 + $sax02;
	$astsax02 = "@" + $音プロセス頭 + $picsax02;

	$setdut02 = "@" + $雑プロセス頭 + $dut02;
	$astdut02 = "@" + $雑プロセス頭 + $picdut02;

	$setvut02 = $vus02 + "/" + $硝本名 + "/" + $vut02;
	$astvut02 = $vus02 + "/" + $硝本名 + "/" + $picvut02;

	$settex02 = $vus02 + "/" + $硝本名 + "/" + $tex02;
	$asttex02 = $vus02 + "/" + $硝本名 + "/" + $pictex02;

	$setcol02 = $vus02 + "/" + $硝本名 + "/" + $col02;
	$astcol02 = $vus02 + "/" + $硝本名 + "/" + $piccol02;

	$setbas02 = $vus02 + "/" + $硝本名 + "/" + $bas02;
	$astbas02 = $vus02 + "/" + $硝本名 + "/" + $picbas02;

	if($ViP02==1)
	{
		//■スタート
		Fade($盤名, 1000, $TV走査線透明度, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax02, Play);
				Request($setsax02, Disused);
				Request($astsax02, Disused);
				SetVolume($setsax02, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax02, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=7;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP02==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut02, Play);
					Request($setdut02, Disused);
					Request($astdut02, Disused);
					SetVolume($setdut02, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut02, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil02, null, false);
				}else if($NvP02==4){
					//■ノイズ停止
					Request($astdut02, Disused);
					SetVolume($astdut02, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut02);
				Fade($setvut02, 0, 1000, null, false);
				Delete($asttex02);
				Fade($settex02, 0, 1000, null, false);
				Delete($astcol02);
				Fade($setcol02, 0, $colstencil02, null, false);
				Delete($astbas02);
				Fade($setbas02, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP02==2)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax02, Play);
				Request($setsax02, Disused);
				Request($astsax02, Disused);
				SetVolume($setsax02, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax02, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<12)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise2%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==6){
				if($NvP02==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut02, Play);
					Request($setdut02, Disused);
					Request($astdut02, Disused);
					SetVolume($setdut02, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut02, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil02, null, false);
				}else if($NvP02==4){
					//■ノイズ停止
					Request($astdut02, Disused);
					SetVolume($astdut02, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut02);
				Fade($setvut02, 0, 1000, null, false);
				Delete($asttex02);
				Fade($settex02, 0, 1000, null, false);
				Delete($astcol02);
				Fade($setcol02, 0, $colstencil02, null, false);
				Delete($astbas02);
				Fade($setbas02, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP02==3)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax02, Play);
				Request($setsax02, Disused);
				Request($astsax02, Disused);
				SetVolume($setsax02, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax02, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP02==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut02, Play);
					Request($setdut02, Disused);
					Request($astdut02, Disused);
					SetVolume($setdut02, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut02, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil02, null, false);
				}else if($NvP02==4){
					//■ノイズ停止
					Request($astdut02, Disused);
					SetVolume($astdut02, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut02);
				Fade($setvut02, 0, 1000, null, false);
				Delete($asttex02);
				Fade($settex02, 0, 1000, null, false);
				Delete($astcol02);
				Fade($setcol02, 0, $colstencil02, null, false);
				Delete($astbas02);
				Fade($setbas02, 0, 1000, null, false);
			}
		}

		Draw();
	}

	if($ViP02==4)
	{
		//■電源を切る
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax02, Play);
				Request($setsax02, Disused);
				Request($astsax02, Disused);
				SetVolume($setsax02, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax02, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<8)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
			Draw();

			if($NoiseOpenCount1==8){
				if($NvP02==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut02, Play);
					Request($setdut02, Disused);
					Request($astdut02, Disused);
					SetVolume($setdut02, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut02, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil02, null, false);
				}else if($NvP02==4){
					//■ノイズ停止
					Request($astdut02, Disused);
					SetVolume($astdut02, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut02);
				Delete($asttex02);
				Delete($astcol02);
				Fade($setbas02, 0, 0, null, false);
			}
		}

		Fade($盤名, 200, 0, null, false);
		Draw();
	}

}





function Television3()
{
	$allvut03 = $vus03 + "/" + $硝本名 + "/" + "*";

	$setsax03 = "@" + $音プロセス頭 + $sax03;
	$astsax03 = "@" + $音プロセス頭 + $picsax03;

	$setdut03 = "@" + $雑プロセス頭 + $dut03;
	$astdut03 = "@" + $雑プロセス頭 + $picdut03;

	$setvut03 = $vus03 + "/" + $硝本名 + "/" + $vut03;
	$astvut03 = $vus03 + "/" + $硝本名 + "/" + $picvut03;

	$settex03 = $vus03 + "/" + $硝本名 + "/" + $tex03;
	$asttex03 = $vus03 + "/" + $硝本名 + "/" + $pictex03;

	$setcol03 = $vus03 + "/" + $硝本名 + "/" + $col03;
	$astcol03 = $vus03 + "/" + $硝本名 + "/" + $piccol03;

	$setbas03 = $vus03 + "/" + $硝本名 + "/" + $bas03;
	$astbas03 = $vus03 + "/" + $硝本名 + "/" + $picbas03;

	if($ViP03==1)
	{
		//■スタート
		Fade($盤名, 1000, $TV走査線透明度, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax03, Play);
				Request($setsax03, Disused);
				Request($astsax03, Disused);
				SetVolume($setsax03, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax03, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=7;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP03==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut03, Play);
					Request($setdut03, Disused);
					Request($astdut03, Disused);
					SetVolume($setdut03, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut03, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil03, null, false);
				}else if($NvP03==4){
					//■ノイズ停止
					Request($astdut03, Disused);
					SetVolume($astdut03, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut03);
				Fade($setvut03, 0, 1000, null, false);
				Delete($asttex03);
				Fade($settex03, 0, 1000, null, false);
				Delete($astcol03);
				Fade($setcol03, 0, $colstencil03, null, false);
				Delete($astbas03);
				Fade($setbas03, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP03==2)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax03, Play);
				Request($setsax03, Disused);
				Request($astsax03, Disused);
				SetVolume($setsax03, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax03, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<12)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise2%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==6){
				if($NvP03==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut03, Play);
					Request($setdut03, Disused);
					Request($astdut03, Disused);
					SetVolume($setdut03, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut03, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil03, null, false);
				}else if($NvP03==4){
					//■ノイズ停止
					Request($astdut03, Disused);
					SetVolume($astdut03, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut03);
				Fade($setvut03, 0, 1000, null, false);
				Delete($asttex03);
				Fade($settex03, 0, 1000, null, false);
				Delete($astcol03);
				Fade($setcol03, 0, $colstencil03, null, false);
				Delete($astbas03);
				Fade($setbas03, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP03==3)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax03, Play);
				Request($setsax03, Disused);
				Request($astsax03, Disused);
				SetVolume($setsax03, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax03, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP03==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut03, Play);
					Request($setdut03, Disused);
					Request($astdut03, Disused);
					SetVolume($setdut03, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut03, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil03, null, false);
				}else if($NvP03==4){
					//■ノイズ停止
					Request($astdut03, Disused);
					SetVolume($astdut03, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut03);
				Fade($setvut03, 0, 1000, null, false);
				Delete($asttex03);
				Fade($settex03, 0, 1000, null, false);
				Delete($astcol03);
				Fade($setcol03, 0, $colstencil03, null, false);
				Delete($astbas03);
				Fade($setbas03, 0, 1000, null, false);
			}
		}

		Draw();
	}

	if($ViP03==4)
	{
		//■電源を切る
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax03, Play);
				Request($setsax03, Disused);
				Request($astsax03, Disused);
				SetVolume($setsax03, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax03, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<8)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
			Draw();

			if($NoiseOpenCount1==8){
				if($NvP03==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut03, Play);
					Request($setdut03, Disused);
					Request($astdut03, Disused);
					SetVolume($setdut03, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut03, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil03, null, false);
				}else if($NvP03==4){
					//■ノイズ停止
					Request($astdut03, Disused);
					SetVolume($astdut03, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut03);
				Delete($asttex03);
				Delete($astcol03);
				Fade($setbas03, 0, 0, null, false);
			}
		}

		Fade($盤名, 200, 0, null, false);
		Draw();
	}

}




function Television4()
{
	$allvut04 = $vus04 + "/" + $硝本名 + "/" + "*";

	$setsax04 = "@" + $音プロセス頭 + $sax04;
	$astsax04 = "@" + $音プロセス頭 + $picsax04;

	$setdut04 = "@" + $雑プロセス頭 + $dut04;
	$astdut04 = "@" + $雑プロセス頭 + $picdut04;

	$setvut04 = $vus04 + "/" + $硝本名 + "/" + $vut04;
	$astvut04 = $vus04 + "/" + $硝本名 + "/" + $picvut04;

	$settex04 = $vus04 + "/" + $硝本名 + "/" + $tex04;
	$asttex04 = $vus04 + "/" + $硝本名 + "/" + $pictex04;

	$setcol04 = $vus04 + "/" + $硝本名 + "/" + $col04;
	$astcol04 = $vus04 + "/" + $硝本名 + "/" + $piccol04;

	$setbas04 = $vus04 + "/" + $硝本名 + "/" + $bas04;
	$astbas04 = $vus04 + "/" + $硝本名 + "/" + $picbas04;

	if($ViP04==1)
	{
		//■スタート
		Fade($盤名, 1000, $TV走査線透明度, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax04, Play);
				Request($setsax04, Disused);
				Request($astsax04, Disused);
				SetVolume($setsax04, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax04, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=7;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP04==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut04, Play);
					Request($setdut04, Disused);
					Request($astdut04, Disused);
					SetVolume($setdut04, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut04, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil04, null, false);
				}else if($NvP04==4){
					//■ノイズ停止
					Request($astdut04, Disused);
					SetVolume($astdut04, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut04);
				Fade($setvut04, 0, 1000, null, false);
				Delete($asttex04);
				Fade($settex04, 0, 1000, null, false);
				Delete($astcol04);
				Fade($setcol04, 0, $colstencil04, null, false);
				Delete($astbas04);
				Fade($setbas04, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP04==2)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax04, Play);
				Request($setsax04, Disused);
				Request($astsax04, Disused);
				SetVolume($setsax04, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax04, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<12)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise2%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==6){
				if($NvP04==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut04, Play);
					Request($setdut04, Disused);
					Request($astdut04, Disused);
					SetVolume($setdut04, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut04, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil04, null, false);
				}else if($NvP04==4){
					//■ノイズ停止
					Request($astdut04, Disused);
					SetVolume($astdut04, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut04);
				Fade($setvut04, 0, 1000, null, false);
				Delete($asttex04);
				Fade($settex04, 0, 1000, null, false);
				Delete($astcol04);
				Fade($setcol04, 0, $colstencil04, null, false);
				Delete($astbas04);
				Fade($setbas04, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP04==3)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax04, Play);
				Request($setsax04, Disused);
				Request($astsax04, Disused);
				SetVolume($setsax04, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax04, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP04==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut04, Play);
					Request($setdut04, Disused);
					Request($astdut04, Disused);
					SetVolume($setdut04, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut04, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil04, null, false);
				}else if($NvP04==4){
					//■ノイズ停止
					Request($astdut04, Disused);
					SetVolume($astdut04, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut04);
				Fade($setvut04, 0, 1000, null, false);
				Delete($asttex04);
				Fade($settex04, 0, 1000, null, false);
				Delete($astcol04);
				Fade($setcol04, 0, $colstencil04, null, false);
				Delete($astbas04);
				Fade($setbas04, 0, 1000, null, false);
			}
		}

		Draw();
	}

	if($ViP04==4)
	{
		//■電源を切る
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax04, Play);
				Request($setsax04, Disused);
				Request($astsax04, Disused);
				SetVolume($setsax04, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax04, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<8)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
			Draw();

			if($NoiseOpenCount1==8){
				if($NvP04==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut04, Play);
					Request($setdut04, Disused);
					Request($astdut04, Disused);
					SetVolume($setdut04, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut04, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil04, null, false);
				}else if($NvP04==4){
					//■ノイズ停止
					Request($astdut04, Disused);
					SetVolume($astdut04, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut04);
				Delete($asttex04);
				Delete($astcol04);
				Fade($setbas04, 0, 0, null, false);
			}
		}

		Fade($盤名, 200, 0, null, false);
		Draw();
	}

}




function Television5()
{
	$allvut05 = $vus05 + "/" + $硝本名 + "/" + "*";

	$setsax05 = "@" + $音プロセス頭 + $sax05;
	$astsax05 = "@" + $音プロセス頭 + $picsax05;

	$setdut05 = "@" + $雑プロセス頭 + $dut05;
	$astdut05 = "@" + $雑プロセス頭 + $picdut05;

	$setvut05 = $vus05 + "/" + $硝本名 + "/" + $vut05;
	$astvut05 = $vus05 + "/" + $硝本名 + "/" + $picvut05;

	$settex05 = $vus05 + "/" + $硝本名 + "/" + $tex05;
	$asttex05 = $vus05 + "/" + $硝本名 + "/" + $pictex05;

	$setcol05 = $vus05 + "/" + $硝本名 + "/" + $col05;
	$astcol05 = $vus05 + "/" + $硝本名 + "/" + $piccol05;

	$setbas05 = $vus05 + "/" + $硝本名 + "/" + $bas05;
	$astbas05 = $vus05 + "/" + $硝本名 + "/" + $picbas05;

	if($ViP05==1)
	{
		//■スタート
		Fade($盤名, 1000, $TV走査線透明度, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax05, Play);
				Request($setsax05, Disused);
				Request($astsax05, Disused);
				SetVolume($setsax05, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax05, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=7;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP05==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut05, Play);
					Request($setdut05, Disused);
					Request($astdut05, Disused);
					SetVolume($setdut05, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut05, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil05, null, false);
				}else if($NvP05==4){
					//■ノイズ停止
					Request($astdut05, Disused);
					SetVolume($astdut05, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut05);
				Fade($setvut05, 0, 1000, null, false);
				Delete($asttex05);
				Fade($settex05, 0, 1000, null, false);
				Delete($astcol05);
				Fade($setcol05, 0, $colstencil05, null, false);
				Delete($astbas05);
				Fade($setbas05, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP05==2)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax05, Play);
				Request($setsax05, Disused);
				Request($astsax05, Disused);
				SetVolume($setsax05, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax05, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<12)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise2%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==6){
				if($NvP05==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut05, Play);
					Request($setdut05, Disused);
					Request($astdut05, Disused);
					SetVolume($setdut05, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut05, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil05, null, false);
				}else if($NvP05==4){
					//■ノイズ停止
					Request($astdut05, Disused);
					SetVolume($astdut05, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut05);
				Fade($setvut05, 0, 1000, null, false);
				Delete($asttex05);
				Fade($settex05, 0, 1000, null, false);
				Delete($astcol05);
				Fade($setcol05, 0, $colstencil05, null, false);
				Delete($astbas05);
				Fade($setbas05, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP05==3)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax05, Play);
				Request($setsax05, Disused);
				Request($astsax05, Disused);
				SetVolume($setsax05, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax05, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP05==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut05, Play);
					Request($setdut05, Disused);
					Request($astdut05, Disused);
					SetVolume($setdut05, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut05, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil05, null, false);
				}else if($NvP05==4){
					//■ノイズ停止
					Request($astdut05, Disused);
					SetVolume($astdut05, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut05);
				Fade($setvut05, 0, 1000, null, false);
				Delete($asttex05);
				Fade($settex05, 0, 1000, null, false);
				Delete($astcol05);
				Fade($setcol05, 0, $colstencil05, null, false);
				Delete($astbas05);
				Fade($setbas05, 0, 1000, null, false);
			}
		}

		Draw();
	}

	if($ViP05==4)
	{
		//■電源を切る
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax05, Play);
				Request($setsax05, Disused);
				Request($astsax05, Disused);
				SetVolume($setsax05, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax05, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<8)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
			Draw();

			if($NoiseOpenCount1==8){
				if($NvP05==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut05, Play);
					Request($setdut05, Disused);
					Request($astdut05, Disused);
					SetVolume($setdut05, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut05, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil05, null, false);
				}else if($NvP05==4){
					//■ノイズ停止
					Request($astdut05, Disused);
					SetVolume($astdut05, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut05);
				Delete($asttex05);
				Delete($astcol05);
				Fade($setbas05, 0, 0, null, false);
			}
		}

		Fade($盤名, 200, 0, null, false);
		Draw();
	}

}





function Television6()
{
	$allvut06 = $vus06 + "/" + $硝本名 + "/" + "*";

	$setsax06 = "@" + $音プロセス頭 + $sax06;
	$astsax06 = "@" + $音プロセス頭 + $picsax06;

	$setdut06 = "@" + $雑プロセス頭 + $dut06;
	$astdut06 = "@" + $雑プロセス頭 + $picdut06;

	$setvut06 = $vus06 + "/" + $硝本名 + "/" + $vut06;
	$astvut06 = $vus06 + "/" + $硝本名 + "/" + $picvut06;

	$settex06 = $vus06 + "/" + $硝本名 + "/" + $tex06;
	$asttex06 = $vus06 + "/" + $硝本名 + "/" + $pictex06;

	$setcol06 = $vus06 + "/" + $硝本名 + "/" + $col06;
	$astcol06 = $vus06 + "/" + $硝本名 + "/" + $piccol06;

	$setbas06 = $vus06 + "/" + $硝本名 + "/" + $bas06;
	$astbas06 = $vus06 + "/" + $硝本名 + "/" + $picbas06;

	if($ViP06==1)
	{
		//■スタート
		Fade($盤名, 1000, $TV走査線透明度, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax06, Play);
				Request($setsax06, Disused);
				Request($astsax06, Disused);
				SetVolume($setsax06, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax06, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=7;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP06==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut06, Play);
					Request($setdut06, Disused);
					Request($astdut06, Disused);
					SetVolume($setdut06, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut06, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil06, null, false);
				}else if($NvP06==4){
					//■ノイズ停止
					Request($astdut06, Disused);
					SetVolume($astdut06, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut06);
				Fade($setvut06, 0, 1000, null, false);
				Delete($asttex06);
				Fade($settex06, 0, 1000, null, false);
				Delete($astcol06);
				Fade($setcol06, 0, $colstencil06, null, false);
				Delete($astbas06);
				Fade($setbas06, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP06==2)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax06, Play);
				Request($setsax06, Disused);
				Request($astsax06, Disused);
				SetVolume($setsax06, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax06, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<12)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise2%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==6){
				if($NvP06==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut06, Play);
					Request($setdut06, Disused);
					Request($astdut06, Disused);
					SetVolume($setdut06, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut06, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil06, null, false);
				}else if($NvP06==4){
					//■ノイズ停止
					Request($astdut06, Disused);
					SetVolume($astdut06, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut06);
				Fade($setvut06, 0, 1000, null, false);
				Delete($asttex06);
				Fade($settex06, 0, 1000, null, false);
				Delete($astcol06);
				Fade($setcol06, 0, $colstencil06, null, false);
				Delete($astbas06);
				Fade($setbas06, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP06==3)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax06, Play);
				Request($setsax06, Disused);
				Request($astsax06, Disused);
				SetVolume($setsax06, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax06, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP06==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut06, Play);
					Request($setdut06, Disused);
					Request($astdut06, Disused);
					SetVolume($setdut06, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut06, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil06, null, false);
				}else if($NvP06==4){
					//■ノイズ停止
					Request($astdut06, Disused);
					SetVolume($astdut06, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut06);
				Fade($setvut06, 0, 1000, null, false);
				Delete($asttex06);
				Fade($settex06, 0, 1000, null, false);
				Delete($astcol06);
				Fade($setcol06, 0, $colstencil06, null, false);
				Delete($astbas06);
				Fade($setbas06, 0, 1000, null, false);
			}
		}

		Draw();
	}

	if($ViP06==4)
	{
		//■電源を切る
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax06, Play);
				Request($setsax06, Disused);
				Request($astsax06, Disused);
				SetVolume($setsax06, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax06, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<8)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
			Draw();

			if($NoiseOpenCount1==8){
				if($NvP06==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut06, Play);
					Request($setdut06, Disused);
					Request($astdut06, Disused);
					SetVolume($setdut06, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut06, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil06, null, false);
				}else if($NvP06==4){
					//■ノイズ停止
					Request($astdut06, Disused);
					SetVolume($astdut06, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut06);
				Delete($asttex06);
				Delete($astcol06);
				Fade($setbas06, 0, 0, null, false);
			}
		}

		Fade($盤名, 200, 0, null, false);
		Draw();
	}

}




function Television7()
{
	$allvut07 = $vus07 + "/" + $硝本名 + "/" + "*";

	$setsax07 = "@" + $音プロセス頭 + $sax07;
	$astsax07 = "@" + $音プロセス頭 + $picsax07;

	$setdut07 = "@" + $雑プロセス頭 + $dut07;
	$astdut07 = "@" + $雑プロセス頭 + $picdut07;

	$setvut07 = $vus07 + "/" + $硝本名 + "/" + $vut07;
	$astvut07 = $vus07 + "/" + $硝本名 + "/" + $picvut07;

	$settex07 = $vus07 + "/" + $硝本名 + "/" + $tex07;
	$asttex07 = $vus07 + "/" + $硝本名 + "/" + $pictex07;

	$setcol07 = $vus07 + "/" + $硝本名 + "/" + $col07;
	$astcol07 = $vus07 + "/" + $硝本名 + "/" + $piccol07;

	$setbas07 = $vus07 + "/" + $硝本名 + "/" + $bas07;
	$astbas07 = $vus07 + "/" + $硝本名 + "/" + $picbas07;

	if($ViP07==1)
	{
		//■スタート
		Fade($盤名, 1000, $TV走査線透明度, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax07, Play);
				Request($setsax07, Disused);
				Request($astsax07, Disused);
				SetVolume($setsax07, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax07, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=7;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP07==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut07, Play);
					Request($setdut07, Disused);
					Request($astdut07, Disused);
					SetVolume($setdut07, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut07, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil07, null, false);
				}else if($NvP07==4){
					//■ノイズ停止
					Request($astdut07, Disused);
					SetVolume($astdut07, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut07);
				Fade($setvut07, 0, 1000, null, false);
				Delete($asttex07);
				Fade($settex07, 0, 1000, null, false);
				Delete($astcol07);
				Fade($setcol07, 0, $colstencil07, null, false);
				Delete($astbas07);
				Fade($setbas07, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP07==2)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax07, Play);
				Request($setsax07, Disused);
				Request($astsax07, Disused);
				SetVolume($setsax07, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax07, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<12)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise2%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==6){
				if($NvP07==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut07, Play);
					Request($setdut07, Disused);
					Request($astdut07, Disused);
					SetVolume($setdut07, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut07, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil07, null, false);
				}else if($NvP07==4){
					//■ノイズ停止
					Request($astdut07, Disused);
					SetVolume($astdut07, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut07);
				Fade($setvut07, 0, 1000, null, false);
				Delete($asttex07);
				Fade($settex07, 0, 1000, null, false);
				Delete($astcol07);
				Fade($setcol07, 0, $colstencil07, null, false);
				Delete($astbas07);
				Fade($setbas07, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP07==3)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax07, Play);
				Request($setsax07, Disused);
				Request($astsax07, Disused);
				SetVolume($setsax07, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax07, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP07==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut07, Play);
					Request($setdut07, Disused);
					Request($astdut07, Disused);
					SetVolume($setdut07, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut07, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil07, null, false);
				}else if($NvP07==4){
					//■ノイズ停止
					Request($astdut07, Disused);
					SetVolume($astdut07, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut07);
				Fade($setvut07, 0, 1000, null, false);
				Delete($asttex07);
				Fade($settex07, 0, 1000, null, false);
				Delete($astcol07);
				Fade($setcol07, 0, $colstencil07, null, false);
				Delete($astbas07);
				Fade($setbas07, 0, 1000, null, false);
			}
		}

		Draw();
	}

	if($ViP07==4)
	{
		//■電源を切る
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax07, Play);
				Request($setsax07, Disused);
				Request($astsax07, Disused);
				SetVolume($setsax07, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax07, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<8)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
			Draw();

			if($NoiseOpenCount1==8){
				if($NvP07==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut07, Play);
					Request($setdut07, Disused);
					Request($astdut07, Disused);
					SetVolume($setdut07, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut07, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil07, null, false);
				}else if($NvP07==4){
					//■ノイズ停止
					Request($astdut07, Disused);
					SetVolume($astdut07, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut07);
				Delete($asttex07);
				Delete($astcol07);
				Fade($setbas07, 0, 0, null, false);
			}
		}

		Fade($盤名, 200, 0, null, false);
		Draw();
	}

}





function Television8()
{
	$allvut08 = $vus08 + "/" + $硝本名 + "/" + "*";

	$setsax08 = "@" + $音プロセス頭 + $sax08;
	$astsax08 = "@" + $音プロセス頭 + $picsax08;

	$setdut08 = "@" + $雑プロセス頭 + $dut08;
	$astdut08 = "@" + $雑プロセス頭 + $picdut08;

	$setvut08 = $vus08 + "/" + $硝本名 + "/" + $vut08;
	$astvut08 = $vus08 + "/" + $硝本名 + "/" + $picvut08;

	$settex08 = $vus08 + "/" + $硝本名 + "/" + $tex08;
	$asttex08 = $vus08 + "/" + $硝本名 + "/" + $pictex08;

	$setcol08 = $vus08 + "/" + $硝本名 + "/" + $col08;
	$astcol08 = $vus08 + "/" + $硝本名 + "/" + $piccol08;

	$setbas08 = $vus08 + "/" + $硝本名 + "/" + $bas08;
	$astbas08 = $vus08 + "/" + $硝本名 + "/" + $picbas08;

	if($ViP08==1)
	{
		//■スタート
		Fade($盤名, 1000, $TV走査線透明度, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax08, Play);
				Request($setsax08, Disused);
				Request($astsax08, Disused);
				SetVolume($setsax08, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax08, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=7;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP08==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut08, Play);
					Request($setdut08, Disused);
					Request($astdut08, Disused);
					SetVolume($setdut08, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut08, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil08, null, false);
				}else if($NvP08==4){
					//■ノイズ停止
					Request($astdut08, Disused);
					SetVolume($astdut08, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut08);
				Fade($setvut08, 0, 1000, null, false);
				Delete($asttex08);
				Fade($settex08, 0, 1000, null, false);
				Delete($astcol08);
				Fade($setcol08, 0, $colstencil08, null, false);
				Delete($astbas08);
				Fade($setbas08, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP08==2)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax08, Play);
				Request($setsax08, Disused);
				Request($astsax08, Disused);
				SetVolume($setsax08, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax08, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<12)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise2%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==6){
				if($NvP08==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut08, Play);
					Request($setdut08, Disused);
					Request($astdut08, Disused);
					SetVolume($setdut08, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut08, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil08, null, false);
				}else if($NvP08==4){
					//■ノイズ停止
					Request($astdut08, Disused);
					SetVolume($astdut08, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut08);
				Fade($setvut08, 0, 1000, null, false);
				Delete($asttex08);
				Fade($settex08, 0, 1000, null, false);
				Delete($astcol08);
				Fade($setcol08, 0, $colstencil08, null, false);
				Delete($astbas08);
				Fade($setbas08, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP08==3)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax08, Play);
				Request($setsax08, Disused);
				Request($astsax08, Disused);
				SetVolume($setsax08, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax08, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP08==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut08, Play);
					Request($setdut08, Disused);
					Request($astdut08, Disused);
					SetVolume($setdut08, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut08, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil08, null, false);
				}else if($NvP08==4){
					//■ノイズ停止
					Request($astdut08, Disused);
					SetVolume($astdut08, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut08);
				Fade($setvut08, 0, 1000, null, false);
				Delete($asttex08);
				Fade($settex08, 0, 1000, null, false);
				Delete($astcol08);
				Fade($setcol08, 0, $colstencil08, null, false);
				Delete($astbas08);
				Fade($setbas08, 0, 1000, null, false);
			}
		}

		Draw();
	}

	if($ViP08==4)
	{
		//■電源を切る
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax08, Play);
				Request($setsax08, Disused);
				Request($astsax08, Disused);
				SetVolume($setsax08, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax08, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<8)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
			Draw();

			if($NoiseOpenCount1==8){
				if($NvP08==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut08, Play);
					Request($setdut08, Disused);
					Request($astdut08, Disused);
					SetVolume($setdut08, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut08, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil08, null, false);
				}else if($NvP08==4){
					//■ノイズ停止
					Request($astdut08, Disused);
					SetVolume($astdut08, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut08);
				Delete($asttex08);
				Delete($astcol08);
				Fade($setbas08, 0, 0, null, false);
			}
		}

		Fade($盤名, 200, 0, null, false);
		Draw();
	}

}









function Television9()
{
	$allvut09 = $vus09 + "/" + $硝本名 + "/" + "*";

	$setsax09 = "@" + $音プロセス頭 + $sax09;
	$astsax09 = "@" + $音プロセス頭 + $picsax09;

	$setdut09 = "@" + $雑プロセス頭 + $dut09;
	$astdut09 = "@" + $雑プロセス頭 + $picdut09;

	$setvut09 = $vus09 + "/" + $硝本名 + "/" + $vut09;
	$astvut09 = $vus09 + "/" + $硝本名 + "/" + $picvut09;

	$settex09 = $vus09 + "/" + $硝本名 + "/" + $tex09;
	$asttex09 = $vus09 + "/" + $硝本名 + "/" + $pictex09;

	$setcol09 = $vus09 + "/" + $硝本名 + "/" + $col09;
	$astcol09 = $vus09 + "/" + $硝本名 + "/" + $piccol09;

	$setbas09 = $vus09 + "/" + $硝本名 + "/" + $bas09;
	$astbas09 = $vus09 + "/" + $硝本名 + "/" + $picbas09;

	if($ViP09==1)
	{
		//■スタート
		Fade($盤名, 1000, $TV走査線透明度, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax09, Play);
				Request($setsax09, Disused);
				Request($astsax09, Disused);
				SetVolume($setsax09, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax09, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=7;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP09==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut09, Play);
					Request($setdut09, Disused);
					Request($astdut09, Disused);
					SetVolume($setdut09, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut09, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil09, null, false);
				}else if($NvP09==4){
					//■ノイズ停止
					Request($astdut09, Disused);
					SetVolume($astdut09, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut09);
				Fade($setvut09, 0, 1000, null, false);
				Delete($asttex09);
				Fade($settex09, 0, 1000, null, false);
				Delete($astcol09);
				Fade($setcol09, 0, $colstencil09, null, false);
				Delete($astbas09);
				Fade($setbas09, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP09==2)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax09, Play);
				Request($setsax09, Disused);
				Request($astsax09, Disused);
				SetVolume($setsax09, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax09, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<12)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise2%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==6){
				if($NvP09==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut09, Play);
					Request($setdut09, Disused);
					Request($astdut09, Disused);
					SetVolume($setdut09, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut09, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil09, null, false);
				}else if($NvP09==4){
					//■ノイズ停止
					Request($astdut09, Disused);
					SetVolume($astdut09, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut09);
				Fade($setvut09, 0, 1000, null, false);
				Delete($asttex09);
				Fade($settex09, 0, 1000, null, false);
				Delete($astcol09);
				Fade($setcol09, 0, $colstencil09, null, false);
				Delete($astbas09);
				Fade($setbas09, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP09==3)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax09, Play);
				Request($setsax09, Disused);
				Request($astsax09, Disused);
				SetVolume($setsax09, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax09, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP09==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut09, Play);
					Request($setdut09, Disused);
					Request($astdut09, Disused);
					SetVolume($setdut09, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut09, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil09, null, false);
				}else if($NvP09==4){
					//■ノイズ停止
					Request($astdut09, Disused);
					SetVolume($astdut09, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut09);
				Fade($setvut09, 0, 1000, null, false);
				Delete($asttex09);
				Fade($settex09, 0, 1000, null, false);
				Delete($astcol09);
				Fade($setcol09, 0, $colstencil09, null, false);
				Delete($astbas09);
				Fade($setbas09, 0, 1000, null, false);
			}
		}

		Draw();
	}

	if($ViP09==4)
	{
		//■電源を切る
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax09, Play);
				Request($setsax09, Disused);
				Request($astsax09, Disused);
				SetVolume($setsax09, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax09, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<8)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
			Draw();

			if($NoiseOpenCount1==8){
				if($NvP09==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut09, Play);
					Request($setdut09, Disused);
					Request($astdut09, Disused);
					SetVolume($setdut09, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut09, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil09, null, false);
				}else if($NvP09==4){
					//■ノイズ停止
					Request($astdut09, Disused);
					SetVolume($astdut09, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut09);
				Delete($asttex09);
				Delete($astcol09);
				Fade($setbas09, 0, 0, null, false);
			}
		}

		Fade($盤名, 200, 0, null, false);
		Draw();
	}

}




function Television10()
{
	$allvut10 = $vus10 + "/" + $硝本名 + "/" + "*";

	$setsax10 = "@" + $音プロセス頭 + $sax10;
	$astsax10 = "@" + $音プロセス頭 + $picsax10;

	$setdut10 = "@" + $雑プロセス頭 + $dut10;
	$astdut10 = "@" + $雑プロセス頭 + $picdut10;

	$setvut10 = $vus10 + "/" + $硝本名 + "/" + $vut10;
	$astvut10 = $vus10 + "/" + $硝本名 + "/" + $picvut10;

	$settex10 = $vus10 + "/" + $硝本名 + "/" + $tex10;
	$asttex10 = $vus10 + "/" + $硝本名 + "/" + $pictex10;

	$setcol10 = $vus10 + "/" + $硝本名 + "/" + $col10;
	$astcol10 = $vus10 + "/" + $硝本名 + "/" + $piccol10;

	$setbas10 = $vus10 + "/" + $硝本名 + "/" + $bas10;
	$astbas10 = $vus10 + "/" + $硝本名 + "/" + $picbas10;

	if($ViP10==1)
	{
		//■スタート
		Fade($盤名, 1000, $TV走査線透明度, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax10, Play);
				Request($setsax10, Disused);
				Request($astsax10, Disused);
				SetVolume($setsax10, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax10, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=7;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP10==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut10, Play);
					Request($setdut10, Disused);
					Request($astdut10, Disused);
					SetVolume($setdut10, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut10, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil10, null, false);
				}else if($NvP10==4){
					//■ノイズ停止
					Request($astdut10, Disused);
					SetVolume($astdut10, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut10);
				Fade($setvut10, 0, 1000, null, false);
				Delete($asttex10);
				Fade($settex10, 0, 1000, null, false);
				Delete($astcol10);
				Fade($setcol10, 0, $colstencil10, null, false);
				Delete($astbas10);
				Fade($setbas10, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP10==2)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax10, Play);
				Request($setsax10, Disused);
				Request($astsax10, Disused);
				SetVolume($setsax10, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax10, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<12)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise2%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==6){
				if($NvP10==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut10, Play);
					Request($setdut10, Disused);
					Request($astdut10, Disused);
					SetVolume($setdut10, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut10, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil10, null, false);
				}else if($NvP10==4){
					//■ノイズ停止
					Request($astdut10, Disused);
					SetVolume($astdut10, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut10);
				Fade($setvut10, 0, 1000, null, false);
				Delete($asttex10);
				Fade($settex10, 0, 1000, null, false);
				Delete($astcol10);
				Fade($setcol10, 0, $colstencil10, null, false);
				Delete($astbas10);
				Fade($setbas10, 0, 1000, null, false);
			}
		}

		Draw();
	}


	if($ViP10==3)
	{
		//■切り替わる
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax10, Play);
				Request($setsax10, Disused);
				Request($astsax10, Disused);
				SetVolume($setsax10, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax10, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<75)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;
	
			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
//			Draw();

			if($NoiseOpenCount1==8){
				if($NvP10==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut10, Play);
					Request($setdut10, Disused);
					Request($astdut10, Disused);
					SetVolume($setdut10, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut10, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil10, null, false);
				}else if($NvP10==4){
					//■ノイズ停止
					Request($astdut10, Disused);
					SetVolume($astdut10, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut10);
				Fade($setvut10, 0, 1000, null, false);
				Delete($asttex10);
				Fade($settex10, 0, 1000, null, false);
				Delete($astcol10);
				Fade($setcol10, 0, $colstencil10, null, false);
				Delete($astbas10);
				Fade($setbas10, 0, 1000, null, false);
			}
		}

		Draw();
	}

	if($ViP10==4)
	{
		//■電源を切る
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//■切り替えサウンドスタート
				Request($setsax10, Play);
				Request($setsax10, Disused);
				Request($astsax10, Disused);
				SetVolume($setsax10, $TvSpan1, $TvVolume, NULL);
				SetVolume($astsax10, $TvSpan5, 0, NULL);

		$NoiseOpenTexture01=0;
		$NoiseOpenCount1=0;
		while($NoiseOpenCount1<8)
		{
			$NoiseOpenCountPre01=$NoiseOpenTexture01;
			$NoiseOpenTexture01=String("@noise1%04d",$NoiseOpenCount1);
			$NoiseOpenCount1+=1;

			Fade($NoiseOpenTexture01, 0, 1000, null, true);
			Fade($NoiseOpenCountPre01, 0, 0, null, false);
			Draw();

			if($NoiseOpenCount1==8){
				if($NvP10==1){
					//■ノイズスタート
					Request($止名, Stop);
					WaitAction($止名, null);
					Request($setdut10, Play);
					Request($setdut10, Disused);
					Request($astdut10, Disused);
					SetVolume($setdut10, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut10, $NoiseSpan5, 0, NULL);
					Request($系名, Start);
					Fade("@noise_only", 0, $PreNoiseStencil10, null, false);
				}else if($NvP10==4){
					//■ノイズ停止
					Request($astdut10, Disused);
					SetVolume($astdut10, $NoiseSpan6, 0, NULL);
					Request($系名, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//■その他設置
				Delete($astvut10);
				Delete($asttex10);
				Delete($astcol10);
				Fade($setbas10, 0, 0, null, false);
			}
		}

		Fade($盤名, 200, 0, null, false);
		Draw();
	}

}






//――――――――――――――――――――――――――――――――――――――
..こけし残骸
//――――――――――――――――――――――――――――――――――――――
//======================================
...こけし設置マクロ
//======================================

function CreateKokeshi(Ｘ位置, Ｙ位置)
{
	$描画優先度 = $描画優先度Tv + 49;
	CreateTexture("@テレビ/硝/こけし00", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin00.png");
	CreateTexture("@テレビ/硝/こけし01", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin01.png");
	CreateTexture("@テレビ/硝/こけし02", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin02.png");
	CreateTexture("@テレビ/硝/こけし03", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin03.png");
	CreateTexture("@テレビ/硝/こけし04", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin04.png");
	CreateTexture("@テレビ/硝/こけし05", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin05.png");
	CreateTexture("@テレビ/硝/こけし06", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin06.png");
	CreateTexture("@テレビ/硝/こけし07", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin07.png");
	CreateTexture("@テレビ/硝/こけし08", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin08.png");
	CreateTexture("@テレビ/硝/こけし09", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin09.png");
	CreateTexture("@テレビ/硝/こけし10", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin10.png");
	CreateTexture("@テレビ/硝/こけし11", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin11.png");
	CreateTexture("@テレビ/硝/こけし12", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin12.png");
	CreateTexture("@テレビ/硝/こけし13", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin13.png");
	CreateTexture("@テレビ/硝/こけし14", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin14.png");
	CreateTexture("@テレビ/硝/こけし15", $描画優先度, center, 20, "cg/tv/tv神様(こけし)_通常_spin15.png");

	SetAlias("@テレビ/硝/こけし00","こけし00");
	SetAlias("@テレビ/硝/こけし01","こけし01");
	SetAlias("@テレビ/硝/こけし02","こけし02");
	SetAlias("@テレビ/硝/こけし03","こけし03");
	SetAlias("@テレビ/硝/こけし04","こけし04");
	SetAlias("@テレビ/硝/こけし05","こけし05");
	SetAlias("@テレビ/硝/こけし06","こけし06");
	SetAlias("@テレビ/硝/こけし07","こけし07");
	SetAlias("@テレビ/硝/こけし08","こけし08");
	SetAlias("@テレビ/硝/こけし09","こけし09");
	SetAlias("@テレビ/硝/こけし10","こけし10");
	SetAlias("@テレビ/硝/こけし11","こけし11");
	SetAlias("@テレビ/硝/こけし12","こけし12");
	SetAlias("@テレビ/硝/こけし13","こけし13");
	SetAlias("@テレビ/硝/こけし14","こけし14");
	SetAlias("@テレビ/硝/こけし15","こけし15");

	Fade("@こけし*", 0, 0, null, false);
	Move("@こけし*", 0, Ｘ位置, Ｙ位置, null, false);
}


function FadeKokeshi()
{
	CreateProcess("プロセス１", 150, 0, 0, "Loop");

}



function ProFadeKokeshi()
{





}















