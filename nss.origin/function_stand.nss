$Revision: 29 $

//"nss/function_process.nss"��function.nss�ڤ�include��

.//���ӣ���ͨ��Delete���ޥ��
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

.//���ӣ���ͨ��Fade���ޥ��
..//FadeStA
function FadeStA($FStA_Time,$FStA_Wait)
{

	FadeStL($FStA_Time,false);
	FadeStCL($FStA_Time,false);
	FadeStC($FStA_Time,false);
	FadeStR($FStA_Time,false);
	FadeStCR($FStA_Time,false);
	FadeStX("@�h��/*",$FStA_Time,false);

	if($FStA_Wait==true){WaitAction("@St*",null);}

}


.//���ƣ��������ɥ����x
..//���ڶ��x
//---------------------------------------------------//
...//SetFwC
function SetFwC($����,$�����ж�)
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

	$�ʥå��� = $FwCName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwC_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwC_text_Window_begin = true;

	$FwPri = 20001;
	$FwPri02 =$FwPri+3;

	CreateTexture($�ʥå���, $FwPri, Center, -139, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 4, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if($�����ж�=="Monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if(!$�����ж�){

	}else{

	}

}

//-------------------//
...//�ͩ`��ץ�`����
//-------------------//
...//SetNwC
//�������ɥ��Ȥ��BЯ�Τ��ᡢ�ʥå����ʤɤ�ͬ��
function SetNwC($����)
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

	$�ʥå��� = $FwCName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwC_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwC_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, 460, -139, $����);

	Move($�ʥå���, 0, @0, 4, null, true);
	Fade($�ʥå���, 0, 0, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

}

//---------------------------------------------------//
...//SetFwL
function SetFwL($����,$�����ж�)
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

	$�ʥå��� = $FwLName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwL_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwL_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, Center, -139, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	Move($�ʥå���, 0, @-256, 4, null, true);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if($�����ж�=="Monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if(!$�����ж�){

	}else{

	}

}

//-------------------//
...//�ͩ`��ץ�`����
//-------------------//
//---------------------------------------------------//
...//SetNwL
function SetNwL($����)
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

	$�ʥå��� = $FwLName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwL_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwL_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, 460, -139, $����);

	Fade($�ʥå���, 0, 0, null, true);

	SetAlias($�ʥå���,$�ʥå���);
	Request($�ʥå���, Hideable);

	Move($�ʥå���, 0, @-256, 4, null, true);

}

//---------------------------------------------------//
...//SetFwR
function SetFwR($����,$�����ж�)
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

	$�ʥå��� = $FwRName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwR_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwR_text_Window_begin = true;

	$FwPri = 20001;
	$FwPri02 =$FwPri+3;

	CreateTexture($�ʥå���, $FwPri, Center, -139, $����);
	Fade($�ʥå���, 0, 0, null, true);

	SetAlias($�ʥå���,$�ʥå���);
	Request($�ʥå���, Hideable);

	Move($�ʥå���, 0, @+256, 4, null, true);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 707, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 707, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if($�����ж�=="Monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if(!$�����ж�){

	}else{

	}

}

//-------------------//
...//�ͩ`��ץ�`����
//-------------------//
//---------------------------------------------------//
...//SetNwR
function SetNwR($����)
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

	$�ʥå��� = $FwRName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwR_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwR_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, 460, -139, $����);

	Fade($�ʥå���, 0, 0, null, true);

	SetAlias($�ʥå���,$�ʥå���);
	Request($�ʥå���, Hideable);

	Move($�ʥå���, 0, @+256, 4, null, true);

}

...//SetFwB
function SetFwB($����)
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

	$�ʥå��� = $FwBName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwB_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwB_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, 228, 577, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 445, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

}

//-------------------//
...//�ͩ`��ץ�`����
//-------------------//
...//SetNwB
//�������ɥ��Ȥ��BЯ�Τ��ᡢ�ʥå����ʤɤ�ͬ��
function SetNwB($����)
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

	$�ʥå��� = $FwBName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwB_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwB_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, 228, 577, $����);

	Move($�ʥå���, 0, @0, 445, null, true);
	Fade($�ʥå���, 0, 0, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

}

...//�������ã�undertext��
...//SetFwH
function SetFwH($����,$�����ж�)
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

	$�ʥå��� = $FwHName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwH_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwH_text_Window_begin = true;

	$FwPri = 20001;
	$FwPri02 =$FwPri+3;

	CreateTexture($�ʥå���, $FwPri, 228, 578, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 450, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 450, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 576, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if($�����ж�=="Monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if(!$�����ж�){

	}else{

	}

}

//-------------------//
...//�ͩ`��ץ�`����
//-------------------//
...//SetNwH
//�������ɥ��Ȥ��BЯ�Τ��ᡢ�ʥå����ʤɤ�ͬ��
function SetNwH($����)
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

	$�ʥå��� = $FwHName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwH_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwH_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, 228, 576, $����);

	Move($�ʥå���, 0, @0, 435, null, true);
	Fade($�ʥå���, 0, 0, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

}

...//�������ã�undertext2��
...//SetFwCH
function SetFwCH($����)
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

	$�ʥå��� = $FwCHName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwCH_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwCH_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, 228, 578, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 228, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 576, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 576, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if($�����ж�=="Monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if(!$�����ж�){

	}else{

	}

}

//-------------------//
...//�ͩ`��ץ�`����
//-------------------//
...//SetNwH
//�������ɥ��Ȥ��BЯ�Τ��ᡢ�ʥå����ʤɤ�ͬ��
function SetNwH($����)
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

	$�ʥå��� = $FwCHName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwCH_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwCH_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, 228, 576, $����);

	Move($�ʥå���, 0, @0, 228, null, true);
	Fade($�ʥå���, 0, 0, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

}

...//����
...//SetFwNoh
function SetFwNoh($����)
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

	$�ʥå��� = $FwNohName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwNoh_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwNoh_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, 228, 578, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 225, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 576, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 576, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

//		$�����ж�=="";

	}else if($�����ж�=="monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if($�����ж�=="Monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if(!$�����ж�){

	}else{

	}

}

//-------------------//
...//�ͩ`��ץ�`����
//-------------------//
...//SetNoh
//�������ɥ��Ȥ��BЯ�Τ��ᡢ�ʥå����ʤɤ�ͬ��
function SetNwNoh($����)
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

	$�ʥå��� = $FwNohName;

//�ƥ����ȥ�����ɥ��B���É���
	$FwNoh_text_Window = true;
//�ƥ����ȥ�����ɥ��B���É���(���ش_�J��)
	$FwNoh_text_Window_begin = true;

	$FwPri = 20001;

	CreateTexture($�ʥå���, $FwPri, 228, 576, $����);

	Move($�ʥå���, 0, @0, 212, null, true);
	Fade($�ʥå���, 0, 0, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

}



..//ͨ�����x
//---------------------------------------------------//
...//OnFwC
function OnFwC($����,$�����ж�)
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

	$�ʥå��� = $FwCName;

	CreateTexture($�ʥå���, 20001, Center, -139, $����);
	Fade($�ʥå���, 0, 0, null, true);


	SetAlias($�ʥå���,$�ʥå���);
	Request($�ʥå���, Hideable);

	Move($�ʥå���, 0, @0, 4, null, true);
	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

//������ɥ�����ե饰
		$FaceWindow_Change = true;

	}else if($�����ж�=="monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if($�����ж�=="Monoc"){

		SetTone($�ʥå���, Monochrome);

		$�����ж�=="";

	}else if(!$�����ж�){

	}else{

	}

}

...//FwC
function FwC($����,$�����ж�)
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

	$�ʥå��� = $FwCName;

	CreateTexture($�ʥå���, 20001, Center, -139, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 4, null, true);

	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$�����ж�=="";
		}

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$�����ж�=="";

	}else if($�����ж�=="monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if($�����ж�=="Monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if(!$�����ж�){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwC(0,true);

}

...//NwC
function NwC($����)
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

	$�ʥå��� = $FwCName;

	CreateTexture($�ʥå���, 20001, 460, -139, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 4, null, true);


	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

//	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwC(0,true);

}

//---------------------------------------------------//
...//FwL
function FwL($����)
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


	$�ʥå��� = $FwLName;

	CreateTexture($�ʥå���, 20001, Center, -139, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @-256, 4, null, true);
	SetAlias($�ʥå���,$Fw�ʥå���C);
	Request($�ʥå���, Hideable);


	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 195, 4, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$�����ж�=="";
		}

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 195, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$�����ж�=="";

	}else if($�����ж�=="monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if($�����ж�=="Monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if(!$�����ж�){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwL(0,true);
}

//---------------------------------------------------//
...//NwL
function NwL($����)
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

	$�ʥå��� = $FwLName;

	CreateTexture($�ʥå���, 20001, 460, -139, $����);
	SetAlias($�ʥå���,$Fw�ʥå���C);

	Request($�ʥå���, Hideable);

	Fade($�ʥå���, 0, 0, null, true);
	Move($�ʥå���, 0, @-256, 4, null, true);

	FadeFwL(0,true);

}

//---------------------------------------------------//
...//FwR
function FwR($����)
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

	$�ʥå��� = $FwRName;

	CreateTexture($�ʥå���, 20001, Center, -139, $����);
	Fade($�ʥå���, 0, 0, null, true);

	SetAlias($�ʥå���,$Fw�ʥå���C);

	Request($�ʥå���, Hideable);
	Move($�ʥå���, 0, @+256, 4, null, true);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 707, 4, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$�����ж�=="";
		}

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 707, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$�����ж�=="";

	}else if($�����ж�=="monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if($�����ж�=="Monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if(!$�����ж�){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwR(0,true);

}

//---------------------------------------------------//
...//NwR
function NwR($����)
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

	$�ʥå��� = $FwRName;

	CreateTexture($�ʥå���, 20001, 460, -139, $����);
	SetAlias($�ʥå���,$Fw�ʥå���C);

	Fade($�ʥå���, 0, 0, null, true);

	Request($�ʥå���, Hideable);
	Move($�ʥå���, 0, @+256, 4, null, true);

	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwR(0,true);

}

//---------------------------------------------------//
...//FwB
function FwB($����)
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

	$�ʥå��� = $FwBName;

	CreateTexture($�ʥå���, 20001, 228, 577, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 445, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	FadeFwB(0,true);

}

//---------------------------------------------------//
...//NwB
function NwB($����)
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

	$�ʥå��� = $FwBName;

	CreateTexture($�ʥå���, 20001, 228, 577, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 445, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwB(0,true);

}


//---------------------------------------------------//
...//FwH
function FwH($����)
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

	$�ʥå��� = $FwHName;

	CreateTexture($�ʥå���, 20001, 228, 576, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 450, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$�����ж�=="";
		}

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$�����ж�=="";

	}else if($�����ж�=="monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if($�����ж�=="Monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if(!$�����ж�){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwH(0,true);
}

//---------------------------------------------------//
...//NwH
function NwH($����)
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

	$�ʥå��� = $FwHName;

	CreateTexture($�ʥå���, 20001, 228, 576, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 435, null, true);

	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwH(0,true);

}

//---------------------------------------------------//
...//FwCH
function FwCH($����)
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

	$�ʥå��� = $FwCHName;

	CreateTexture($�ʥå���, 20001, 228, 576, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 228, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$�����ж�=="";
		}

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$�����ж�=="";

	}else if($�����ж�=="monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if($�����ж�=="Monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if(!$�����ж�){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwCH(0,true);
}

//---------------------------------------------------//
...//NwCH
function NwCH($����)
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

	$�ʥå��� = $FwCHName;

	CreateTexture($�ʥå���, 20001, 228, 576, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 228, null, true);

	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwCH(0,true);

}

//---------------------------------------------------//
...//FwNoh
function FwNoh($����)
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

	$�ʥå��� = $FwNohName;

	CreateTexture($�ʥå���, 20001, 228, 576, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 226, null, true);
	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	if($�����ж�=="normal"){

	}else if($�����ж�=="Sepia"){

		if($FaceWindow_Change == true){

		}else{
			CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
			Fade("Face_Sepia", 0, 0, null, true);
			Request("Face_Sepia", MulRender);
			Request("Face_Sepia", Hideable);
			SetAlias("Face_Sepia","Face_Sepia");
			$�����ж�=="";
		}

	}else if($�����ж�=="sepia"){

		CreateColor("Face_Sepia", $FwPri02, 228, 556, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");
		$�����ж�=="";

	}else if($�����ж�=="monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if($�����ж�=="Monoc"){
		SetTone($�ʥå���, Monochrome);
		$�����ж�=="";
	}else if(!$�����ж�){
	}else{
	}

	Fade("@Face_Sepia", 0, 300, null, false);
	FadeFwNoh(0,true);
}

//---------------------------------------------------//
...//NwNoh
function NwNoh($����)
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

	$�ʥå��� = $FwNohName;

	CreateTexture($�ʥå���, 20001, 228, 576, $����);
	Fade($�ʥå���, 0, 0, null, true);

	Move($�ʥå���, 0, @0, 212, null, true);

	Request($�ʥå���, Hideable);
	SetAlias($�ʥå���,$�ʥå���);

	Fade("@Face_Sepia", 0, 0, null, false);
	FadeFwNoh(0,true);

}



//---------------------------------------------------//
..//��ʾ���x
...//FadeFwC
function FadeFwC($�軭�r�g,$����)
{
	if($FwCName01!=""){$�ʥå���=$FwCName01;$FwCName01="";}
	else if($FwCName02!=""){$�ʥå���=$FwCName02;$FwCName02="";}
	else if($FwCName03!=""){$�ʥå���=$FwCName03;$FwCName03="";}
	else if($FwCName04!=""){$�ʥå���=$FwCName04;$FwCName04="";}
	else if($FwCName05!=""){$�ʥå���=$FwCName05;$FwCName05="";}
	else if($FwCName06!=""){$�ʥå���=$FwCName06;$FwCName06="";}
	else if($FwCName07!=""){$�ʥå���=$FwCName07;$FwCName07="";}
	else if($FwCName08!=""){$�ʥå���=$FwCName08;$FwCName08="";}
	else if($FwCName09!=""){$�ʥå���=$FwCName09;$FwCName09="";}
	else if($FwCName10!=""){$�ʥå���=$FwCName10;$FwCName10="";}

	$FwP = 1;
	$Fwλ��="C";

//�軭�ޥ���
	PreFadeFw();

	$FaceFwC2=$FaceFwC;
	$FaceFwC=$nut;
	$FwCP = 1;

	//ָ����
	$nutFwC=$setnut;
	$nutFwC2=$astnut;
}

//---------------------------------------------------//
...//FadeFwL
function FadeFwL($�軭�r�g,$����)
{
	if($FwLName01!=""){$�ʥå���=$FwLName01;$FwLName01="";}
	else if($FwLName02!=""){$�ʥå���=$FwLName02;$FwLName02="";}
	else if($FwLName03!=""){$�ʥå���=$FwLName03;$FwLName03="";}
	else if($FwLName04!=""){$�ʥå���=$FwLName04;$FwLName04="";}
	else if($FwLName05!=""){$�ʥå���=$FwLName05;$FwLName05="";}
	else if($FwLName06!=""){$�ʥå���=$FwLName06;$FwLName06="";}
	else if($FwLName07!=""){$�ʥå���=$FwLName07;$FwLName07="";}
	else if($FwLName08!=""){$�ʥå���=$FwLName08;$FwLName08="";}
	else if($FwLName09!=""){$�ʥå���=$FwLName09;$FwLName09="";}
	else if($FwLName10!=""){$�ʥå���=$FwLName10;$FwLName10="";}

	$FwP = 1;
	$Fwλ��="L";


//�軭�ޥ���
	PreFadeFw();

	$FaceFwL2=$FaceFwL;
	$FaceFwL=$nut;
	$FwLP = 1;

	//ָ����
	$nutFwL=$setnut;
	$nutFwL2=$astnut;
}

//---------------------------------------------------//
...//FadeFwR
function FadeFwR($�軭�r�g,$����)
{
	if($FwRName01!=""){$�ʥå���=$FwRName01;$FwRName01="";}
	else if($FwRName02!=""){$�ʥå���=$FwRName02;$FwRName02="";}
	else if($FwRName03!=""){$�ʥå���=$FwRName03;$FwRName03="";}
	else if($FwRName04!=""){$�ʥå���=$FwRName04;$FwRName04="";}
	else if($FwRName05!=""){$�ʥå���=$FwRName05;$FwRName05="";}
	else if($FwRName06!=""){$�ʥå���=$FwRName06;$FwRName06="";}
	else if($FwRName07!=""){$�ʥå���=$FwRName07;$FwRName07="";}
	else if($FwRName08!=""){$�ʥå���=$FwRName08;$FwRName08="";}
	else if($FwRName09!=""){$�ʥå���=$FwRName09;$FwRName09="";}
	else if($FwRName10!=""){$�ʥå���=$FwRName10;$FwRName10="";}

	$FwP = 1;
	$Fwλ��="R";

//�軭�ޥ���
	PreFadeFw();

	$FaceFwR2=$FaceFwR;
	$FaceFwR=$nut;
	$FwRP = 1;

	//ָ����
	$nutFwR=$setnut;
	$nutFwR2=$astnut;
}


//---------------------------------------------------//
...//FadeFwB
function FadeFwB($�軭�r�g,$����)
{
	if($FwBName01!=""){$�ʥå���=$FwBName01;$FwBName01="";}
	else if($FwBName02!=""){$�ʥå���=$FwBName02;$FwBName02="";}
	else if($FwBName03!=""){$�ʥå���=$FwBName03;$FwBName03="";}
	else if($FwBName04!=""){$�ʥå���=$FwBName04;$FwBName04="";}
	else if($FwBName05!=""){$�ʥå���=$FwBName05;$FwBName05="";}
	else if($FwBName06!=""){$�ʥå���=$FwBName06;$FwBName06="";}
	else if($FwBName07!=""){$�ʥå���=$FwBName07;$FwBName07="";}
	else if($FwBName08!=""){$�ʥå���=$FwBName08;$FwBName08="";}
	else if($FwBName09!=""){$�ʥå���=$FwBName09;$FwBName09="";}
	else if($FwBName10!=""){$�ʥå���=$FwBName10;$FwBName10="";}

	$FwP = 1;
	$Fwλ��="B";

//�軭�ޥ���
	PreFadeFw();

	$FaceFwB2=$FaceFwB;
	$FaceFwB=$nut;
	$FwBP = 1;

	//ָ����
	$nutFwB=$setnut;
	$nutFwB2=$astnut;
}

//---------------------------------------------------//
..//��ʾ���x
...//FadeFwH
function FadeFwH($�軭�r�g,$����)
{
	if($FwHName01!=""){$�ʥå���=$FwHName01;$FwHName01="";}
	else if($FwHName02!=""){$�ʥå���=$FwHName02;$FwHName02="";}
	else if($FwHName03!=""){$�ʥå���=$FwHName03;$FwHName03="";}
	else if($FwHName04!=""){$�ʥå���=$FwHName04;$FwHName04="";}
	else if($FwHName05!=""){$�ʥå���=$FwHName05;$FwHName05="";}
	else if($FwHName06!=""){$�ʥå���=$FwHName06;$FwHName06="";}
	else if($FwHName07!=""){$�ʥå���=$FwHName07;$FwHName07="";}
	else if($FwHName08!=""){$�ʥå���=$FwHName08;$FwHName08="";}
	else if($FwHName09!=""){$�ʥå���=$FwHName09;$FwHName09="";}
	else if($FwHName10!=""){$�ʥå���=$FwHName10;$FwHName10="";}

	$FwP = 1;
	$Fwλ��="H";

//�軭�ޥ���
	PreFadeFw();

	$FaceFwH2=$FaceFwH;
	$FaceFwH=$nut;
	$FwHP = 1;

	//ָ����
	$nutFwH=$setnut;
	$nutFwH2=$astnut;
}

//---------------------------------------------------//
..//��ʾ���xCH
...//FadeFwCH
function FadeFwCH($�軭�r�g,$����)
{
	if($FwCHName01!=""){$�ʥå���=$FwCHName01;$FwCHName01="";}
	else if($FwCHName02!=""){$�ʥå���=$FwCHName02;$FwCHName02="";}
	else if($FwCHName03!=""){$�ʥå���=$FwCHName03;$FwCHName03="";}
	else if($FwCHName04!=""){$�ʥå���=$FwCHName04;$FwCHName04="";}
	else if($FwCHName05!=""){$�ʥå���=$FwCHName05;$FwCHName05="";}
	else if($FwCHName06!=""){$�ʥå���=$FwCHName06;$FwCHName06="";}
	else if($FwCHName07!=""){$�ʥå���=$FwCHName07;$FwCHName07="";}
	else if($FwCHName08!=""){$�ʥå���=$FwCHName08;$FwCHName08="";}
	else if($FwCHName09!=""){$�ʥå���=$FwCHName09;$FwCHName09="";}
	else if($FwCHName10!=""){$�ʥå���=$FwCHName10;$FwCHName10="";}

	$FwP = 1;
	$Fwλ��="CH";

//�軭�ޥ���
	PreFadeFw();

	$FaceFwCH2=$FaceFwCH;
	$FaceFwCH=$nut;
	$FwCHP = 1;

	//ָ����
	$nutFwCH=$setnut;
	$nutFwCH2=$astnut;
}

//---------------------------------------------------//
..//��ʾ���xNoh
...//FadeFwNoh
function FadeFwNoh($�軭�r�g,$����)
{
	if($FwNohName01!=""){$�ʥå���=$FwNohName01;$FwNohName01="";}
	else if($FwNohName02!=""){$�ʥå���=$FwNohName02;$FwNohName02="";}
	else if($FwNohName03!=""){$�ʥå���=$FwNohName03;$FwNohName03="";}
	else if($FwNohName04!=""){$�ʥå���=$FwNohName04;$FwNohName04="";}
	else if($FwNohName05!=""){$�ʥå���=$FwNohName05;$FwNohName05="";}
	else if($FwNohName06!=""){$�ʥå���=$FwNohName06;$FwNohName06="";}
	else if($FwNohName07!=""){$�ʥå���=$FwNohName07;$FwNohName07="";}
	else if($FwNohName08!=""){$�ʥå���=$FwNohName08;$FwNohName08="";}
	else if($FwNohName09!=""){$�ʥå���=$FwNohName09;$FwNohName09="";}
	else if($FwNohName10!=""){$�ʥå���=$FwNohName10;$FwNohName10="";}

	$FwP = 1;
	$Fwλ��="Noh";

//�軭�ޥ���
	PreFadeFw();

	$FaceFwNoh2=$FaceFwNoh;
	$FaceFwNoh=$nut;
	$FwNohP = 1;

	//ָ����
	$nutFwNoh=$setnut;
	$nutFwNoh2=$astnut;
}


//---------------------------------------------------//

..//�ǥ�`�ȶ��x
//---------------------------------------------------//
...//DeleteFwC
function DeleteFwC($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$FwP = 0;
	$λ��="C";

	if($FwC_Back_Ex==true){Fade("@backFwC",$�軭�r�g,0,null,false);$FwC_Back_Ex=false;Request("@backFwC", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$�軭�r�g,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$�軭�r�g,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwC_text_Window=false;
	$FwCP = 0;

}

//---------------------------------------------------//
...//DeleteFwL
function DeleteFwL($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$FwP = 0;
	$λ��="L";

	if($FwC_Back_Ex==true){Fade("@backFwC",$�軭�r�g,0,null,false);$FwC_Back_Ex=false;Request("@backFwC", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$�軭�r�g,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$�軭�r�g,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwL_text_Window=false;
	$FwLP = 0;
}

//---------------------------------------------------//
...//DeleteFwR
function DeleteFwR($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$FwP = 0;
	$λ��="R";

	if($FwC_Back_Ex==true){Fade("@backFwC",$�軭�r�g,0,null,false);$FwC_Back_Ex=false;Request("@backFwC", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$�軭�r�g,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$�軭�r�g,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwR_text_Window=false;
	$FwRP = 0;
}

//---------------------------------------------------//
...//DeleteFwB
function DeleteFwB($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$FwP = 0;
	$λ��="B";

	if($FwC_Back_Ex==true){Fade("@backFwC",$�軭�r�g,0,null,false);$FwC_Back_Ex=false;Request("@backFwC", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$�軭�r�g,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$�軭�r�g,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}
	else if($FwB_Back_Ex==true){Fade("@backFwB",$�軭�r�g,0,null,false);$FwB_Back_Ex=false;Request("@backFwB", Disused);}

	PreFadeFw();

	$FwB_text_Window=false;
	$FwBP = 0;

}

...//DeleteFwH
function DeleteFwH($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$FwP = 0;
	$λ��="C";

	if($FwH_Back_Ex==true){Fade("@backFwH",$�軭�r�g,0,null,false);$FwH_Back_Ex=false;Request("@backFwH", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$�軭�r�g,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$�軭�r�g,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwH_text_Window=false;
	$FwHP = 0;

}

...//DeleteFwCH
function DeleteFwCH($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$FwP = 0;
	$λ��="C";

	if($FwCH_Back_Ex==true){Fade("@backFwCH",$�軭�r�g,0,null,false);$FwCH_Back_Ex=false;Request("@backFwCH", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$�軭�r�g,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$�軭�r�g,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwCH_text_Window=false;
	$FwCHP = 0;

}

...//DeleteFwNoh
function DeleteFwNoh($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$FwP = 0;
	$λ��="Noh";

	if($FwNoh_Back_Ex==true){Fade("@backFwNoh",$�軭�r�g,0,null,false);$FwNoh_Back_Ex=false;Request("@backFwNoh", Disused);}
	else if($FwL_Back_Ex==true){Fade("@backFwL",$�軭�r�g,0,null,false);$FwL_Back_Ex=false;Request("@backFwL", Disused);}
	else if($FwR_Back_Ex==true){Fade("@backFwR",$�軭�r�g,0,null,false);$FwR_Back_Ex=false;Request("@backFwR", Disused);}

	PreFadeFw();

	$FwNoh_text_Window=false;
	$FwNohP = 0;

}

..//��ʾ���x�ޥ���
//---------------------------------------------------//
...//PreFadeFw
function PreFadeFw()
{
	$nut = $�ʥå���;

	if($Fwλ��=="X"){
		$nus = "@" + $�H�ʥå���StX;
		$picnut = $FaceStX;
		$Prepicnut = $FaceStX2;
		$StQ = $StXP;
	}else if($Fwλ��=="C"){

//�ʥå���ȡ�á�$picnut
		$picnut = $FaceFwC;
//ǰ�ʥå���ȡ�á�$Prepicnut
		$Prepicnut = $FaceFwC2;
//ǰ���x���k�����Ƥ뤫�_�J��
		$FwQ = $FwCP;
	}else if($Fwλ��=="L"){
		$picnut = $FaceFwL;
		$Prepicnut = $FaceFwL2;
		$FwQ = $FwLP;
	}else if($Fwλ��=="R"){
		$picnut = $FaceFwR;
		$Prepicnut = $FaceFwR2;
		$FwQ = $FwRP;
	}else if($Fwλ��=="B"){
		$picnut = $FaceFwB;
		$Prepicnut = $FaceFwB2;
		$FwQ = $FwBP;
	}else if($Fwλ��=="H"){
		$picnut = $FaceFwH;
		$Prepicnut = $FaceFwH2;
		$FwQ = $FwHP;
	}else if($Fwλ��=="CH"){
		$picnut = $FaceFwCH;
		$Prepicnut = $FaceFwCH2;
		$FwQ = $FwCHP;
	}else if($Fwλ��=="Noh"){
		$picnut = $FaceFwNoh;
		$Prepicnut = $FaceFwNoh2;
		$FwQ = $FwNohP;
	}

//һ�ȶ��x�g��+���x�ե饰���k�����Ƥ������
	if($FwP==1 && $FwQ==0){
		if($Fwλ��=="X"){$FaceFwX="���o��";
		}else if($Fwλ��=="C"){$FaceFwC="���o��";
		}else if($Fwλ��=="L"){$FaceFwL="���o��";
		}else if($Fwλ��=="R"){$FaceFwR="���o��";
		}else if($Fwλ��=="H"){$FaceFwH="���o��";
		}else if($Fwλ��=="CH"){$FaceFwH="���o��";
		}else if($Fwλ��=="Noh"){$FaceFwH="���o��";}
	}

//ǰ�ʥå�����Ҏ���x
	$setnut = $nut;
//�ʥå�����Ҏ���x
	$astnut = $picnut;
//ǰ�ʥå�����Ҏ���x
	$Preastnut = $Prepicnut;


	if($FwP!=0 && $FwQ==0 && $setnut!=$astnut && $astnut!=$Preastnut){
//		Fade($astnut, 0, 0, null, false);
	}

//	Fade($Preastnut, 0, 0, null, false);

	if($FwQ!=0 && $setnut!=$Preastnut && $astnut!=$Preastnut){
//		Delete($Preastnut);
	}

	if($FwP==1 && $FwQ==0){
		Fade($setnut, $�軭�r�g, 1000, null, false);
	}else if($FwP==1 && $setnut!=$astnut){
//		$�軭�r�g=$�軭�r�g+1;
		//���å��O��
		LockVideo(true);
		Fade($setnut, $�軭�r�g, 1000, null, false);
		Fade($astnut, $�軭�r�g, 0, null, false);
		//���å��O��
		LockVideo(false);
		Request($astnut, Disused);
	}else if($FwP==0){
		Fade($astnut, $�軭�r�g, 0, null, false);
		Request($astnut, Disused);
	}

	if($����==true)
	{
//		WaitAction($setnut, null);
		Wait($�軭�r�g);
		if($StP==0){
//			WaitAction($astnut, null);
		Wait($�軭�r�g);
		}

	}
	else if($���� != false)
	{
		Wait($����);
	}
	else
	{
	}

}

//=============================================================================//

//=============================================================================//

//=============================================================================//



//�������}ϵ�ޥ���
//=============================================================================//
.st
//=============================================================================//
//=============================================================================//
..//���x
//=============================================================================//
function StX($�ʥå���, �軭���ȶ�, $��λ��, $��λ��, $����)
{
	$�H�ʥå���StX = "�h��";
	$���� = "cg/st/" + $����;
	$nut = "@" + $�H�ʥå���StX + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, 576, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, $��λ��, $��λ��, null, true);
}

function StC(�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$StCName;

	$�H�ʥå���StC = "�h��";
//	$���� = "cg/st/" + $����;
	$nut = "@" + $�H�ʥå���StC + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, 576, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, $��λ��, $��λ��, null, true);
}

function StCL(�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$StCLName;

	$�H�ʥå���StCL = "�h��";
//	$���� = "cg/st/" + $����;
	$nut = "@" + $�H�ʥå���StCL + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, 576, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, @-256, @0, null, true);
	Move($nut, 0, $��λ��, $��λ��, null, true);
}

function StL(�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$StLName;

	$�H�ʥå���StL = "�h��";
//	$���� = "cg/st/" + $����;
	$nut = "@" + $�H�ʥå���StL + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, 576, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, @-256, @0, null, true);
	Move($nut, 0, $��λ��, $��λ��, null, true);
}

function StCR(�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$StCRName;

	$�H�ʥå���StCR = "�h��";
//	$���� = "cg/st/" + $����;
	$nut = "@" + $�H�ʥå���StCR + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, 576, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, @+256, @0, null, true);
	Move($nut, 0, $��λ��, $��λ��, null, true);
}

function StR(�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$StRName;

	$�H�ʥå���StR = "�h��";
//	$���� = "cg/st/" + $����;
	$nut = "@" + $�H�ʥå���StR + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, 576, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	$StV=-(ImageVertical($nut));
	Move($nut, 0, @0, @$StV, null, true);

	Move($nut, 0, @+256, @0, null, true);
	Move($nut, 0, $��λ��, $��λ��, null, true);
}


//=============================================================================//
..st���飦�ݩ`�����
//=============================================================================//
function FadeStX($�ʥå���,$�軭�r�g,$����)
{
	$StP = 1;
	$λ��="X";

	PreFadeSt();

	$FaceStX2=$FaceStX;
	$FaceStX=$nut;
	$StXP = 1;

	//ָ����
	$nutStX=$setnut;
	$nutStX2=$astnut;
}

function FadeStC($�軭�r�g,$����)
{
	if($StCName01!=""){$�ʥå���=$StCName01;$StCName01="";}
	else if($StCName02!=""){$�ʥå���=$StCName02;$StCName02="";}
	else if($StCName03!=""){$�ʥå���=$StCName03;$StCName03="";}
	else if($StCName04!=""){$�ʥå���=$StCName04;$StCName04="";}
	else if($StCName05!=""){$�ʥå���=$StCName05;$StCName05="";}
	else if($StCName06!=""){$�ʥå���=$StCName06;$StCName06="";}
	else if($StCName07!=""){$�ʥå���=$StCName07;$StCName07="";}
	else if($StCName08!=""){$�ʥå���=$StCName08;$StCName08="";}
	else if($StCName09!=""){$�ʥå���=$StCName09;$StCName09="";}
	else if($StCName10!=""){$�ʥå���=$StCName10;$StCName10="";}

	$StP = 1;
	$λ��="C";

	PreFadeSt();

	$FaceStC2=$FaceStC;
	$FaceStC=$nut;
	$StCP = 1;

	//ָ����
	$nutStC=$setnut;
	$nutStC2=$astnut;
}

function FadeStCL($�軭�r�g,$����)
{
	if($StCLName01!=""){$�ʥå���=$StCLName01;$StCLName01="";}
	else if($StCLName02!=""){$�ʥå���=$StCLName02;$StCLName02="";}
	else if($StCLName03!=""){$�ʥå���=$StCLName03;$StCLName03="";}
	else if($StCLName04!=""){$�ʥå���=$StCLName04;$StCLName04="";}
	else if($StCLName05!=""){$�ʥå���=$StCLName05;$StCLName05="";}
	else if($StCLName06!=""){$�ʥå���=$StCLName06;$StCLName06="";}
	else if($StCLName07!=""){$�ʥå���=$StCLName07;$StCLName07="";}
	else if($StCLName08!=""){$�ʥå���=$StCLName08;$StCLName08="";}
	else if($StCLName09!=""){$�ʥå���=$StCLName09;$StCLName09="";}
	else if($StCLName10!=""){$�ʥå���=$StCLName10;$StCLName10="";}

	$StP = 1;
	$λ��="CL";

	PreFadeSt();

	$FaceStCL2=$FaceStCL;
	$FaceStCL=$nut;
	$StCLP = 1;

	//ָ����
	$nutStCL=$setnut;
	$nutStCL2=$astnut;
}

function FadeStL($�軭�r�g,$����)
{
	if($StLName01!=""){$�ʥå���=$StLName01;$StLName01="";}
	else if($StLName02!=""){$�ʥå���=$StLName02;$StLName02="";}
	else if($StLName03!=""){$�ʥå���=$StLName03;$StLName03="";}
	else if($StLName04!=""){$�ʥå���=$StLName04;$StLName04="";}
	else if($StLName05!=""){$�ʥå���=$StLName05;$StLName05="";}
	else if($StLName06!=""){$�ʥå���=$StLName06;$StLName06="";}
	else if($StLName07!=""){$�ʥå���=$StLName07;$StLName07="";}
	else if($StLName08!=""){$�ʥå���=$StLName08;$StLName08="";}
	else if($StLName09!=""){$�ʥå���=$StLName09;$StLName09="";}
	else if($StLName10!=""){$�ʥå���=$StLName10;$StLName10="";}

	$StP = 1;
	$λ��="L";

	PreFadeSt();

	$FaceStL2=$FaceStL;
	$FaceStL=$nut;
	$StLP = 1;

	//ָ����
	$nutStL=$setnut;
	$nutStL2=$astnut;
}

function FadeStCR($�軭�r�g,$����)
{
	if($StCRName01!=""){$�ʥå���=$StCRName01;$StCRName01="";}
	else if($StCRName02!=""){$�ʥå���=$StCRName02;$StCRName02="";}
	else if($StCRName03!=""){$�ʥå���=$StCRName03;$StCRName03="";}
	else if($StCRName04!=""){$�ʥå���=$StCRName04;$StCRName04="";}
	else if($StCRName05!=""){$�ʥå���=$StCRName05;$StCRName05="";}
	else if($StCRName06!=""){$�ʥå���=$StCRName06;$StCRName06="";}
	else if($StCRName07!=""){$�ʥå���=$StCRName07;$StCRName07="";}
	else if($StCRName08!=""){$�ʥå���=$StCRName08;$StCRName08="";}
	else if($StCRName09!=""){$�ʥå���=$StCRName09;$StCRName09="";}
	else if($StCRName10!=""){$�ʥå���=$StCRName10;$StCRName10="";}

	$StP = 1;
	$λ��="CR";

	PreFadeSt();

	$FaceStCR2=$FaceStCR;
	$FaceStCR=$nut;
	$StCRP = 1;

	//ָ����
	$nutStCR=$setnut;
	$nutStCR2=$astnut;
}

function FadeStR($�軭�r�g,$����)
{
	if($StRName01!=""){$�ʥå���=$StRName01;$StRName01="";}
	else if($StRName02!=""){$�ʥå���=$StRName02;$StRName02="";}
	else if($StRName03!=""){$�ʥå���=$StRName03;$StRName03="";}
	else if($StRName04!=""){$�ʥå���=$StRName04;$StRName04="";}
	else if($StRName05!=""){$�ʥå���=$StRName05;$StRName05="";}
	else if($StRName06!=""){$�ʥå���=$StRName06;$StRName06="";}
	else if($StRName07!=""){$�ʥå���=$StRName07;$StRName07="";}
	else if($StRName08!=""){$�ʥå���=$StRName08;$StRName08="";}
	else if($StRName09!=""){$�ʥå���=$StRName09;$StRName09="";}
	else if($StRName10!=""){$�ʥå���=$StRName10;$StRName10="";}

	$StP = 1;
	$λ��="R";

	PreFadeSt();

	$FaceStR2=$FaceStR;
	$FaceStR=$nut;
	$StRP = 1;

	//ָ����
	$nutStR=$setnut;
	$nutStR2=$astnut;
}

//=============================================================================//
..st�ǥ�`��
//=============================================================================//
function DeleteStX($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$StP = 0;
	$λ��="X";

	PreFadeSt();

	$StXP = 0;
}

function DeleteStC($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$StP = 0;
	$λ��="C";

	PreFadeSt();

	$StCP = 0;
}

function DeleteStCL($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$StP = 0;
	$λ��="CL";

	PreFadeSt();

	$StCLP = 0;
}

function DeleteStL($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$StP = 0;
	$λ��="L";

	PreFadeSt();

	$StLP = 0;
}

function DeleteStCR($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$StP = 0;
	$λ��="CR";

	PreFadeSt();

	$StCRP = 0;
}

function DeleteStR($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$StP = 0;
	$λ��="R";

	PreFadeSt();

	$StRP = 0;
}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�軭�ޥ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function PreFadeSt()
{
	$nut = $�ʥå���;

	if($λ��=="X"){
		$nus = "@" + $�H�ʥå���StX;
		$picnut = $FaceStX;
		$Prepicnut = $FaceStX2;
		$StQ = $StXP;
	}else if($λ��=="C"){
		$nus = "@" + $�H�ʥå���StC;
		$picnut = $FaceStC;
		$Prepicnut = $FaceStC2;
		$StQ = $StCP;
	}else if($λ��=="CL"){
		$nus = "@" + $�H�ʥå���StCL;
		$picnut = $FaceStCL;
		$Prepicnut = $FaceStCL2;
		$StQ = $StCLP;
	}else if($λ��=="L"){
		$nus = "@" + $�H�ʥå���StL;
		$picnut = $FaceStL;
		$Prepicnut = $FaceStL2;
		$StQ = $StLP;
	}else if($λ��=="CR"){
		$nus = "@" + $�H�ʥå���StCR;
		$picnut = $FaceStCR;
		$Prepicnut = $FaceStCR2;
		$StQ = $StCRP;
	}else if($λ��=="R"){
		$nus = "@" + $�H�ʥå���StR;
		$picnut = $FaceStR;
		$Prepicnut = $FaceStR2;
		$StQ = $StRP;
	}

	if($StP==1 && $StQ==0){
		if($λ��=="X"){$FaceStX="���o��";
		}else if($λ��=="C"){$FaceStC="���o��";
		}else if($λ��=="CL"){$FaceStCL="���o��";
		}else if($λ��=="L"){$FaceStL="���o��";
		}else if($λ��=="CR"){$FaceStCR="���o��";
		}else if($λ��=="R"){$FaceStR="���o��";}
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
		Fade($setnut, $�軭�r�g, 1000, null, false);
	}else if($StP==1 && $setnut!=$astnut){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $�軭�r�g, 0, Axl3, false);
		Fade($setnut, $�軭�r�g, 1000, Dxl2, false);
		Request($astnut, Disused);
	}else if($StP==0){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $�軭�r�g, 0, null, false);
		Request($astnut, Disused);
	}

	if($����==true)
	{
		Wait($�軭�r�g);

		if($StP==0){
			Wait($�軭�r�g);
		}

	}
	else if($���� != false)
	{
		Wait($����);
	}
	else
	{
	}
}











//�������}ϵ�ޥ���
//=============================================================================//
.bu
//=============================================================================//
//=============================================================================//
..//���x
//=============================================================================//
function BuX($�ʥå���, �軭���ȶ�, $��λ��, $��λ��, $����)
{
	$�H�ʥå���BuX = "�h��";
	$���� = "cg/bu/" + $����;
	$nut = "@" + $�H�ʥå���BuX + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, InBottom, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, $��λ��, $��λ��, null, true);
}

function BuC(�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$BuCName;

	$�H�ʥå���BuC = "�h��";
	$���� = "cg/bu/" + $����;
	$nut = "@" + $�H�ʥå���BuC + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, InBottom, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, $��λ��, $��λ��, null, true);
}

function BuCL(�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$BuCLName;

	$�H�ʥå���BuCL = "�h��";
	$���� = "cg/bu/" + $����;
	$nut = "@" + $�H�ʥå���BuCL + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, InBottom, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, @-150, @0, null, true);
	Move($nut, 0, $��λ��, $��λ��, null, true);
}

function BuL(�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$BuLName;

	$�H�ʥå���BuL = "�h��";
	$���� = "cg/bu/" + $����;
	$nut = "@" + $�H�ʥå���BuL + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, InBottom, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, @-200, @0, null, true);
	Move($nut, 0, $��λ��, $��λ��, null, true);
}

function BuCR(�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$BuCRName;

	$�H�ʥå���BuCR = "�h��";
	$���� = "cg/bu/" + $����;
	$nut = "@" + $�H�ʥå���BuCR + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, InBottom, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, @150, @0, null, true);
	Move($nut, 0, $��λ��, $��λ��, null, true);
}

function BuR(�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$BuRName;

	$�H�ʥå���BuR = "�h��";
	$���� = "cg/bu/" + $����;
	$nut = "@" + $�H�ʥå���BuR + "/" + $�ʥå���;

	CreateTexture($nut, �軭���ȶ�, center, InBottom, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	Move($nut, 0, @200, @0, null, true);
	Move($nut, 0, $��λ��, $��λ��, null, true);
}


//=============================================================================//
..bu���飦�ݩ`�����
//=============================================================================//
function FadeBuX($�ʥå���,$�軭�r�g,$����)
{
	$BuP = 1;
	$λ��="X";

	PreFadeBu();

	$FaceBuX2=$FaceBuX;
	$FaceBuX=$nut;
	$BuXP = 1;

	//ָ����
	$nutBuX=$setnut;
	$nutBuX2=$astnut;
}

function FadeBuC($�軭�r�g,$����)
{
	if($BuCName01!=""){$�ʥå���=$BuCName01;$BuCName01="";}
	else if($BuCName02!=""){$�ʥå���=$BuCName02;$BuCName02="";}
	else if($BuCName03!=""){$�ʥå���=$BuCName03;$BuCName03="";}
	else if($BuCName04!=""){$�ʥå���=$BuCName04;$BuCName04="";}
	else if($BuCName05!=""){$�ʥå���=$BuCName05;$BuCName05="";}
	else if($BuCName06!=""){$�ʥå���=$BuCName06;$BuCName06="";}
	else if($BuCName07!=""){$�ʥå���=$BuCName07;$BuCName07="";}
	else if($BuCName08!=""){$�ʥå���=$BuCName08;$BuCName08="";}
	else if($BuCName09!=""){$�ʥå���=$BuCName09;$BuCName09="";}
	else if($BuCName10!=""){$�ʥå���=$BuCName10;$BuCName10="";}

	$BuP = 1;
	$λ��="C";

	PreFadeBu();

	$FaceBuC2=$FaceBuC;
	$FaceBuC=$nut;
	$BuCP = 1;

	//ָ����
	$nutBuC=$setnut;
	$nutBuC2=$astnut;
}

function FadeBuCL($�軭�r�g,$����)
{
	if($BuCLName01!=""){$�ʥå���=$BuCLName01;$BuCLName01="";}
	else if($BuCLName02!=""){$�ʥå���=$BuCLName02;$BuCLName02="";}
	else if($BuCLName03!=""){$�ʥå���=$BuCLName03;$BuCLName03="";}
	else if($BuCLName04!=""){$�ʥå���=$BuCLName04;$BuCLName04="";}
	else if($BuCLName05!=""){$�ʥå���=$BuCLName05;$BuCLName05="";}
	else if($BuCLName06!=""){$�ʥå���=$BuCLName06;$BuCLName06="";}
	else if($BuCLName07!=""){$�ʥå���=$BuCLName07;$BuCLName07="";}
	else if($BuCLName08!=""){$�ʥå���=$BuCLName08;$BuCLName08="";}
	else if($BuCLName09!=""){$�ʥå���=$BuCLName09;$BuCLName09="";}
	else if($BuCLName10!=""){$�ʥå���=$BuCLName10;$BuCLName10="";}

	$BuP = 1;
	$λ��="CL";

	PreFadeBu();

	$FaceBuCL2=$FaceBuCL;
	$FaceBuCL=$nut;
	$BuCLP = 1;

	//ָ����
	$nutBuCL=$setnut;
	$nutBuCL2=$astnut;
}

function FadeBuL($�軭�r�g,$����)
{
	if($BuLName01!=""){$�ʥå���=$BuLName01;$BuLName01="";}
	else if($BuLName02!=""){$�ʥå���=$BuLName02;$BuLName02="";}
	else if($BuLName03!=""){$�ʥå���=$BuLName03;$BuLName03="";}
	else if($BuLName04!=""){$�ʥå���=$BuLName04;$BuLName04="";}
	else if($BuLName05!=""){$�ʥå���=$BuLName05;$BuLName05="";}
	else if($BuLName06!=""){$�ʥå���=$BuLName06;$BuLName06="";}
	else if($BuLName07!=""){$�ʥå���=$BuLName07;$BuLName07="";}
	else if($BuLName08!=""){$�ʥå���=$BuLName08;$BuLName08="";}
	else if($BuLName09!=""){$�ʥå���=$BuLName09;$BuLName09="";}
	else if($BuLName10!=""){$�ʥå���=$BuLName10;$BuLName10="";}

	$BuP = 1;
	$λ��="L";

	PreFadeBu();

	$FaceBuL2=$FaceBuL;
	$FaceBuL=$nut;
	$BuLP = 1;

	//ָ����
	$nutBuL=$setnut;
	$nutBuL2=$astnut;
}

function FadeBuCR($�軭�r�g,$����)
{
	if($BuCRName01!=""){$�ʥå���=$BuCRName01;$BuCRName01="";}
	else if($BuCRName02!=""){$�ʥå���=$BuCRName02;$BuCRName02="";}
	else if($BuCRName03!=""){$�ʥå���=$BuCRName03;$BuCRName03="";}
	else if($BuCRName04!=""){$�ʥå���=$BuCRName04;$BuCRName04="";}
	else if($BuCRName05!=""){$�ʥå���=$BuCRName05;$BuCRName05="";}
	else if($BuCRName06!=""){$�ʥå���=$BuCRName06;$BuCRName06="";}
	else if($BuCRName07!=""){$�ʥå���=$BuCRName07;$BuCRName07="";}
	else if($BuCRName08!=""){$�ʥå���=$BuCRName08;$BuCRName08="";}
	else if($BuCRName09!=""){$�ʥå���=$BuCRName09;$BuCRName09="";}
	else if($BuCRName10!=""){$�ʥå���=$BuCRName10;$BuCRName10="";}

	$BuP = 1;
	$λ��="CR";

	PreFadeBu();

	$FaceBuCR2=$FaceBuCR;
	$FaceBuCR=$nut;
	$BuCRP = 1;

	//ָ����
	$nutBuCR=$setnut;
	$nutBuCR2=$astnut;
}

function FadeBuR($�軭�r�g,$����)
{
	if($BuRName01!=""){$�ʥå���=$BuRName01;$BuRName01="";}
	else if($BuRName02!=""){$�ʥå���=$BuRName02;$BuRName02="";}
	else if($BuRName03!=""){$�ʥå���=$BuRName03;$BuRName03="";}
	else if($BuRName04!=""){$�ʥå���=$BuRName04;$BuRName04="";}
	else if($BuRName05!=""){$�ʥå���=$BuRName05;$BuRName05="";}
	else if($BuRName06!=""){$�ʥå���=$BuRName06;$BuRName06="";}
	else if($BuRName07!=""){$�ʥå���=$BuRName07;$BuRName07="";}
	else if($BuRName08!=""){$�ʥå���=$BuRName08;$BuRName08="";}
	else if($BuRName09!=""){$�ʥå���=$BuRName09;$BuRName09="";}
	else if($BuRName10!=""){$�ʥå���=$BuRName10;$BuRName10="";}

	$BuP = 1;
	$λ��="R";

	PreFadeBu();

	$FaceBuR2=$FaceBuR;
	$FaceBuR=$nut;
	$BuRP = 1;

	//ָ����
	$nutBuR=$setnut;
	$nutBuR2=$astnut;
}

//=============================================================================//
..bu�ǥ�`��
//=============================================================================//
function DeleteBuX($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$BuP = 0;
	$λ��="X";

	PreFadeBu();

	$BuXP = 0;
}

function DeleteBuC($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$BuP = 0;
	$λ��="C";

	PreFadeBu();

	$BuCP = 0;
}

function DeleteBuCL($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$BuP = 0;
	$λ��="CL";

	PreFadeBu();

	$BuCLP = 0;
}

function DeleteBuL($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$BuP = 0;
	$λ��="L";

	PreFadeBu();

	$BuLP = 0;
}

function DeleteBuCR($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$BuP = 0;
	$λ��="CR";

	PreFadeBu();

	$BuCRP = 0;
}

function DeleteBuR($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$BuP = 0;
	$λ��="R";

	PreFadeBu();

	$BuRP = 0;
}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�軭�ޥ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function PreFadeBu()
{
	$nut = $�ʥå���;

	if($λ��=="X"){
		$nus = "@" + $�H�ʥå���BuX;
		$picnut = $FaceBuX;
		$Prepicnut = $FaceBuX2;
		$BuQ = $BuXP;
	}else if($λ��=="C"){
		$nus = "@" + $�H�ʥå���BuC;
		$picnut = $FaceBuC;
		$Prepicnut = $FaceBuC2;
		$BuQ = $BuCP;
	}else if($λ��=="CL"){
		$nus = "@" + $�H�ʥå���BuCL;
		$picnut = $FaceBuCL;
		$Prepicnut = $FaceBuCL2;
		$BuQ = $BuCLP;
	}else if($λ��=="L"){
		$nus = "@" + $�H�ʥå���BuL;
		$picnut = $FaceBuL;
		$Prepicnut = $FaceBuL2;
		$BuQ = $BuLP;
	}else if($λ��=="CR"){
		$nus = "@" + $�H�ʥå���BuCR;
		$picnut = $FaceBuCR;
		$Prepicnut = $FaceBuCR2;
		$BuQ = $BuCRP;
	}else if($λ��=="R"){
		$nus = "@" + $�H�ʥå���BuR;
		$picnut = $FaceBuR;
		$Prepicnut = $FaceBuR2;
		$BuQ = $BuRP;
	}

	if($BuP==1 && $BuQ==0){
		if($λ��=="X"){$FaceBuX="���o��";
		}else if($λ��=="C"){$FaceBuC="���o��";
		}else if($λ��=="CL"){$FaceBuCL="���o��";
		}else if($λ��=="L"){$FaceBuL="���o��";
		}else if($λ��=="CR"){$FaceBuCR="���o��";
		}else if($λ��=="R"){$FaceBuR="���o��";}
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
		Fade($setnut, $�軭�r�g, 1000, null, false);
	}else if($BuP==1 && $setnut!=$astnut){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $�軭�r�g, 0, Axl3, false);
		Fade($setnut, $�軭�r�g, 1000, Dxl2, false);
		Request($astnut, Disused);
	}else if($BuP==0){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $�軭�r�g, 0, null, false);
		Request($astnut, Disused);
	}

	if($����==true)
	{
		WaitAction($setnut, null);

		if($BuP==0){
			WaitAction($astnut, null);
		}

	}
	else if($���� != false)
	{
		Wait($����);
	}
	else
	{
	}
}



































//=============================================================================//
.kw
//=============================================================================//
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�����ɥ����O��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...���ݥ������
function SetKwX($�軭���ȶ�, ��λ��, ��λ��)
{
	$�ʥå��� = "�";
	$�H�ʥå���KwX = $�ʥå���;
	$�軭���ȶ�KwX = $�軭���ȶ�;

	$ץ����^X="�";
	$FaceKwX2="���o��";
	$FaceKwX="���o��";
	$KwXP = 0;
	$DelPro="@"+$ץ����^X+"*";

	Kw();
	Move($�ʥå���,0, ��λ��, ��λ��, null,true);
}

function SetKwC($�軭���ȶ�, ��λ��, ��λ��)
{
	$�ʥå��� = "�";
	$�H�ʥå���KwC = $�ʥå���;
	$�軭���ȶ�KwC = $�軭���ȶ�;

	$�ػ��� = 0;
	$�ٻ��� = -76;

	$ץ����^C="�";
	$FaceKwC2="���o��";
	$FaceKwC="���o��";
	$KwCP = 0;
	$DelPro="@"+$ץ����^C+"*";

	Kw();
	Move($�ʥå���,0, @$�ػ���, @$�ٻ���, null,true);
	Move($�ʥå���,0, ��λ��, ��λ��, null,true);
}

function SetKwCL($�軭���ȶ�, ��λ��, ��λ��)
{
	$�ʥå��� = "�";
	$�H�ʥå���KwCL = $�ʥå���;
	$�軭���ȶ�KwCL = $�軭���ȶ�;

	$�ػ��� = -180;
	$�ٻ��� = -76;

	$ץ����^CL="ã�";
	$FaceKwCL2="���o��";
	$FaceKwCL="���o��";
	$KwCLP = 0;
	$DelPro="@"+$ץ����^CL+"*";

	Kw();
	Move($�ʥå���,0, @$�ػ���, @$�ٻ���, null,true);
	Move($�ʥå���,0, ��λ��, ��λ��, null,true);
}

function SetKwL($�軭���ȶ�, ��λ��, ��λ��)
{
	$�ʥå��� = "�";
	$�H�ʥå���KwL = $�ʥå��� ;
	$�軭���ȶ�KwL = $�軭���ȶ�;

	$�ػ��� = -260;
	$�ٻ��� = -76;

	$ץ����^L="�";
	$FaceKwL2="���o��";
	$FaceKwL="���o��";
	$KwLP = 0;
	$DelPro="@"+$ץ����^L+"*";

	Kw();
	Move($�ʥå���,0, @$�ػ���, @$�ٻ���, null,true);
	Move($�ʥå���,0, ��λ��, ��λ��, null,true);
}

function SetKwCR($�軭���ȶ�, ��λ��, ��λ��)
{
	$�ʥå��� = "�";
	$�H�ʥå���KwCR = $�ʥå���;
	$�軭���ȶ�KwCR = $�軭���ȶ�;

	$�ػ��� = 180;
	$�ٻ��� = -76;

	$ץ����^CR="ã�";
	$FaceKwCR2="���o��";
	$FaceKwCR="���o��";
	$KwCRP = 0;
	$DelPro="@"+$ץ����^CR+"*";

	Kw();
	Move($�ʥå���,0, @$�ػ���, @$�ٻ���, null,true);
	Move($�ʥå���,0, ��λ��, ��λ��, null,true);
}

function SetKwR($�軭���ȶ�, ��λ��, ��λ��)
{
	$�ʥå��� = "�";
	$�H�ʥå���KwR = $�ʥå���;
	$�軭���ȶ�KwR = $�軭���ȶ�;

	$�ػ��� = 260;
	$�ٻ��� = -76;

	$ץ����^R="�";
	$FaceKwR2="���o��";
	$FaceKwR="���o��";
	$KwRP = 0;
	$DelPro="@"+$ץ����^R+"*";

	Kw();
	Move($�ʥå���,0, @$�ػ���, @$�ٻ���, null,true);
	Move($�ʥå���,0, ��λ��, ��λ��, null,true);
}

...�ޥ���
function Kw()
{
	if($stand01_who==$�ʥå���){$stand01_use="";}//���ڻ�����
	if($stand02_who==$�ʥå���){$stand02_use="";}//���ڻ�����
	if($stand03_who==$�ʥå���){$stand03_use="";}//���ڻ�����
	if($stand04_who==$�ʥå���){$stand04_use="";}//���ڻ�����
	if($stand05_who==$�ʥå���){$stand05_use="";}//���ڻ�����
	if($stand06_who==$�ʥå���){$stand06_use="";}//���ڻ�����
	if($stand07_who==$�ʥå���){$stand07_use="";}//���ڻ�����
	if($stand08_who==$�ʥå���){$stand08_use="";}//���ڻ�����
	if($stand09_who==$�ʥå���){$stand09_use="";}//���ڻ�����
	if($stand10_who==$�ʥå���){$stand10_use="";}//���ڻ�����
	if($stand11_who==$�ʥå���){$stand11_use="";}//���ڻ�����
	if($stand12_who==$�ʥå���){$stand12_use="";}//���ڻ�����
	if($stand13_who==$�ʥå���){$stand13_use="";}//���ڻ�����
	if($stand14_who==$�ʥå���){$stand14_use="";}//���ڻ�����
	if($stand15_who==$�ʥå���){$stand15_use="";}//���ڻ�����
	if($stand16_who==$�ʥå���){$stand16_use="";}//���ڻ�����
	if($stand17_who==$�ʥå���){$stand17_use="";}//���ڻ�����
	if($stand18_who==$�ʥå���){$stand18_use="";}//���ڻ�����
	if($stand19_who==$�ʥå���){$stand19_use="";}//���ڻ�����
	if($stand20_who==$�ʥå���){$stand20_use="";}//���ڻ�����
	if($stand21_who==$�ʥå���){$stand21_use="";}//���ڻ�����
	if($stand22_who==$�ʥå���){$stand22_use="";}//���ڻ�����
	if($stand23_who==$�ʥå���){$stand23_use="";}//���ڻ�����
	if($stand24_who==$�ʥå���){$stand24_use="";}//���ڻ�����
	if($stand25_who==$�ʥå���){$stand25_use="";}//���ڻ�����
	if($stand26_who==$�ʥå���){$stand26_use="";}//���ڻ�����
	if($stand27_who==$�ʥå���){$stand27_use="";}//���ڻ�����
	if($stand28_who==$�ʥå���){$stand28_use="";}//���ڻ�����
	if($stand29_who==$�ʥå���){$stand29_use="";}//���ڻ�����
	if($stand30_who==$�ʥå���){$stand30_use="";}//���ڻ�����

	Request($DelPro, Stop);
	Delete($DelPro);

	$��ȥ�ʥå��� = @ + $�ʥå���;
	Delete($��ȥ�ʥå���);

	$��軭���ȶȲ�� = 10;
	$���軭���ȶ� = $�軭���ȶ� + 20;
	$�軭���ȶȻ��� = $�軭���ȶ� + 1;

	$������ = "��";
	$���� = "��";
	$ī���� = "ī";

	$���� = "@" + $�ʥå��� + "/" + $������;
	$���� = "@" + $�ʥå��� + "/" + $����;
	$ī�� = "@" + $�ʥå��� + "/" + $ī����;

	CreateTexture($�ʥå���, $�軭���ȶȻ���, center, middle, "cg/sys/adv/kw_00.png");
	Request($�ʥå���, Smoothing);
	SetAlias($�ʥå���, $�ʥå���);

//��214��214
//�k262��248
	CreateMask($����, $���軭���ȶ�, 0, 0, "cg/sys/adv/kw_04.png", true);
	Request($�ʥå���, Smoothing);
	SetAlias($����, $����);

//	CreateTexture($����, $���軭���ȶ�, 0, 0, "cg/sys/adv/kw_01.png");
//	Request($����, Smoothing);
//	SetAlias($����, $����);

	CreateTexture($ī��, $���軭���ȶ�, 0, 0, "cg/sys/adv/kw_03.png");
	Request($ī��, Smoothing);
	SetAlias($ī��, $ī��);

	Fade($�ʥå���,0,0,null,true);
}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�����ɥ��ز��O��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

...���ݥ������
function KwX($�ʥå���,$��λ��,$��λ��,$����)
{
	$�軭���ȶ� = $�軭���ȶ�KwX + $��軭���ȶȲ��;
	$�H�ʥå��� = $�H�ʥå���KwX;
	$ץ����^ = $ץ����^X;

	PreKw();
}

function KwC($��λ��,$��λ��,$����)
{
	$�軭���ȶ� = $�軭���ȶ�KwC + $��軭���ȶȲ��;
	$�H�ʥå��� = $�H�ʥå���KwC;
	$ץ����^ = $ץ����^C;

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

	$�ʥå���=$KwCName;

	PreKw();
}

function KwCL($��λ��,$��λ��,$����)
{
	$�軭���ȶ� = $�軭���ȶ�KwCL + $��軭���ȶȲ��;
	$�H�ʥå��� = $�H�ʥå���KwCL;
	$ץ����^ = $ץ����^CL;

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

	$�ʥå���=$KwCLName;

	PreKw();
}

function KwL($��λ��,$��λ��,$����)
{
	$�軭���ȶ� = $�軭���ȶ�KwL + $��軭���ȶȲ��;
	$�H�ʥå��� = $�H�ʥå���KwL;
	$ץ����^ = $ץ����^L;

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

	$�ʥå���=$KwLName;

	PreKw();
}

function KwCR($��λ��,$��λ��,$����)
{
	$�軭���ȶ� = $�軭���ȶ�KwCR + $��軭���ȶȲ��;
	$�H�ʥå��� = $�H�ʥå���KwCR;
	$ץ����^ = $ץ����^CR;

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

	$�ʥå���=$KwCRName;

	PreKw();
}

function KwR($��λ��,$��λ��,$����)
{
	$�軭���ȶ� = $�軭���ȶ�KwR + $��軭���ȶȲ��;
	$�H�ʥå��� = $�H�ʥå���KwR;
	$ץ����^ = $ץ����^R;

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

	$�ʥå���=$KwRName;

	PreKw();
}

...�ޥ���
function PreKw()
{
	$alias = "@" + $�H�ʥå��� + "/" + $���� + "/" + $�ʥå���;

	if($stand01_use==$alias){$stand01_use="";}//���ڻ�����
	if($stand02_use==$alias){$stand02_use="";}//���ڻ�����
	if($stand03_use==$alias){$stand03_use="";}//���ڻ�����
	if($stand04_use==$alias){$stand04_use="";}//���ڻ�����
	if($stand05_use==$alias){$stand05_use="";}//���ڻ�����
	if($stand06_use==$alias){$stand06_use="";}//���ڻ�����
	if($stand07_use==$alias){$stand07_use="";}//���ڻ�����
	if($stand08_use==$alias){$stand08_use="";}//���ڻ�����
	if($stand09_use==$alias){$stand09_use="";}//���ڻ�����
	if($stand10_use==$alias){$stand10_use="";}//���ڻ�����
	if($stand11_use==$alias){$stand11_use="";}//���ڻ�����
	if($stand12_use==$alias){$stand12_use="";}//���ڻ�����
	if($stand13_use==$alias){$stand13_use="";}//���ڻ�����
	if($stand14_use==$alias){$stand14_use="";}//���ڻ�����
	if($stand15_use==$alias){$stand15_use="";}//���ڻ�����
	if($stand16_use==$alias){$stand16_use="";}//���ڻ�����
	if($stand17_use==$alias){$stand17_use="";}//���ڻ�����
	if($stand18_use==$alias){$stand18_use="";}//���ڻ�����
	if($stand19_use==$alias){$stand19_use="";}//���ڻ�����
	if($stand20_use==$alias){$stand20_use="";}//���ڻ�����
	if($stand21_use==$alias){$stand21_use="";}//���ڻ�����
	if($stand22_use==$alias){$stand22_use="";}//���ڻ�����
	if($stand23_use==$alias){$stand23_use="";}//���ڻ�����
	if($stand24_use==$alias){$stand24_use="";}//���ڻ�����
	if($stand25_use==$alias){$stand25_use="";}//���ڻ�����
	if($stand26_use==$alias){$stand26_use="";}//���ڻ�����
	if($stand27_use==$alias){$stand27_use="";}//���ڻ�����
	if($stand28_use==$alias){$stand28_use="";}//���ڻ�����
	if($stand29_use==$alias){$stand29_use="";}//���ڻ�����
	if($stand30_use==$alias){$stand30_use="";}//���ڻ�����

		if($stand01_use==""){//���ڻ�����
			$stand01_use=$alias;
			$stand01_who=$�H�ʥå���;
			$stand_num="1";
		}else if($stand02_use==""){//���ڻ�����
			$stand02_use=$alias;
			$stand02_who=$�H�ʥå���;
			$stand_num="2";
		}else if($stand03_use==""){//���ڻ�����
			$stand03_use=$alias;
			$stand03_who=$�H�ʥå���;
			$stand_num="3";
		}else if($stand04_use==""){//���ڻ�����
			$stand04_use=$alias;
			$stand04_who=$�H�ʥå���;
			$stand_num="4";
		}else if($stand05_use==""){//���ڻ�����
			$stand05_use=$alias;
			$stand05_who=$�H�ʥå���;
			$stand_num="5";
		}else if($stand06_use==""){//���ڻ�����
			$stand06_use=$alias;
			$stand06_who=$�H�ʥå���;
			$stand_num="6";
		}else if($stand07_use==""){//���ڻ�����
			$stand07_use=$alias;
			$stand07_who=$�H�ʥå���;
			$stand_num="7";
		}else if($stand08_use==""){//���ڻ�����
			$stand08_use=$alias;
			$stand08_who=$�H�ʥå���;
			$stand_num="8";
		}else if($stand09_use==""){//���ڻ�����
			$stand09_use=$alias;
			$stand09_who=$�H�ʥå���;
			$stand_num="9";
		}else if($stand10_use==""){//���ڻ�����
			$stand10_use=$alias;
			$stand10_who=$�H�ʥå���;
			$stand_num="10";
		}else if($stand11_use==""){//���ڻ�����
			$stand11_use=$alias;
			$stand11_who=$�H�ʥå���;
			$stand_num="11";
		}else if($stand12_use==""){//���ڻ�����
			$stand12_use=$alias;
			$stand12_who=$�H�ʥå���;
			$stand_num="12";
		}else if($stand13_use==""){//���ڻ�����
			$stand13_use=$alias;
			$stand13_who=$�H�ʥå���;
			$stand_num="13";
		}else if($stand14_use==""){//���ڻ�����
			$stand14_use=$alias;
			$stand14_who=$�H�ʥå���;
			$stand_num="14";
		}else if($stand15_use==""){//���ڻ�����
			$stand15_use=$alias;
			$stand15_who=$�H�ʥå���;
			$stand_num="15";
		}else if($stand16_use==""){//���ڻ�����
			$stand16_use=$alias;
			$stand16_who=$�H�ʥå���;
			$stand_num="16";
		}else if($stand17_use==""){//���ڻ�����
			$stand17_use=$alias;
			$stand17_who=$�H�ʥå���;
			$stand_num="17";
		}else if($stand18_use==""){//���ڻ�����
			$stand18_use=$alias;
			$stand18_who=$�H�ʥå���;
			$stand_num="18";
		}else if($stand19_use==""){//���ڻ�����
			$stand19_use=$alias;
			$stand19_who=$�H�ʥå���;
			$stand_num="19";
		}else if($stand20_use==""){//���ڻ�����
			$stand20_use=$alias;
			$stand20_who=$�H�ʥå���;
			$stand_num="20";
		}else if($stand21_use==""){//���ڻ�����
			$stand21_use=$alias;
			$stand21_who=$�H�ʥå���;
			$stand_num="21";
		}else if($stand22_use==""){//���ڻ�����
			$stand22_use=$alias;
			$stand22_who=$�H�ʥå���;
			$stand_num="22";
		}else if($stand23_use==""){//���ڻ�����
			$stand23_use=$alias;
			$stand23_who=$�H�ʥå���;
			$stand_num="23";
		}else if($stand24_use==""){//���ڻ�����
			$stand24_use=$alias;
			$stand24_who=$�H�ʥå���;
			$stand_num="24";
		}else if($stand25_use==""){//���ڻ�����
			$stand25_use=$alias;
			$stand25_who=$�H�ʥå���;
			$stand_num="25";
		}else if($stand26_use==""){//���ڻ�����
			$stand26_use=$alias;
			$stand26_who=$�H�ʥå���;
			$stand_num="26";
		}else if($stand27_use==""){//���ڻ�����
			$stand27_use=$alias;
			$stand27_who=$�H�ʥå���;
			$stand_num="27";
		}else if($stand28_use==""){//���ڻ�����
			$stand28_use=$alias;
			$stand28_who=$�H�ʥå���;
			$stand_num="28";
		}else if($stand29_use==""){//���ڻ�����
			$stand29_use=$alias;
			$stand29_who=$�H�ʥå���;
			$stand_num="29";
		}else if($stand30_use==""){//���ڻ�����
			$stand30_use=$alias;
			$stand30_who=$�H�ʥå���;
			$stand_num="30";
		}else{
			$str="�����}������������";
			CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
			Request("DebugAlert",PushText);
			return;
		}

	$nut = "@" + $�H�ʥå��� + "/" + $���� + "/" + $�ʥå���;
	$ץ��� = $ץ����^ + $�ʥå���;

	CreateTexture($nut, $�軭���ȶ�, $��λ��, $��λ��, $����);
	Request($nut, Smoothing);
	SetAlias($nut, $�ʥå���);
	Fade($nut,0,0,null,true);

	$HorKw=ImageHorizon($nut);
	$HorKw=$HorKw/2;
	$HorKw=$HorKw-107;
	$HorKw=-$HorKw;
	$VerKw=7;
	Move($nut, 0, @$HorKw, @$VerKw, null, true);

	$proc_f="Face"+$stand_num;
	CreateProcess($ץ���, $�軭���ȶ�, 0, 0, $proc_f);
	SetAlias($ץ���, $ץ���);
}





//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�����ɥ����������_ʼ��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

...��ͨ����
function FadeKwX($�ʥå���,$�軭�r�g,$����)
{
	$KwP = 1;
	$KwM = 0;
	$λ��="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 1;
	$KwXPex = 0;

	//ָ����
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function FadeKwC($�軭�r�g,$����)
{
	if($KwCName01!=""){$�ʥå���=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$�ʥå���=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$�ʥå���=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$�ʥå���=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$�ʥå���=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$�ʥå���=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$�ʥå���=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$�ʥå���=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$�ʥå���=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$�ʥå���=$KwCName10;$KwCName10="";}

	$KwP = 1;
	$KwM = 0;
	$λ��="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 1;
	$KwCPex = 0;

	//ָ����
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function FadeKwCL($�軭�r�g,$����)
{
	if($KwCLName01!=""){$�ʥå���=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$�ʥå���=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$�ʥå���=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$�ʥå���=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$�ʥå���=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$�ʥå���=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$�ʥå���=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$�ʥå���=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$�ʥå���=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$�ʥå���=$KwCLName10;$KwCLName10="";}

	$KwP = 1;
	$KwM = 0;
	$λ��="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 1;
	$KwCLPex = 0;

	//ָ����
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function FadeKwL($�軭�r�g,$����)
{
	if($KwLName01!=""){$�ʥå���=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$�ʥå���=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$�ʥå���=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$�ʥå���=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$�ʥå���=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$�ʥå���=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$�ʥå���=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$�ʥå���=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$�ʥå���=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$�ʥå���=$KwLName10;$KwLName10="";}

	$KwP = 1;
	$KwM = 0;
	$λ��="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 1;
	$KwLPex = 0;

	//ָ����
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function FadeKwCR($�軭�r�g,$����)
{
	if($KwCRName01!=""){$�ʥå���=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$�ʥå���=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$�ʥå���=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$�ʥå���=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$�ʥå���=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$�ʥå���=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$�ʥå���=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$�ʥå���=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$�ʥå���=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$�ʥå���=$KwCRName10;$KwCRName10="";}

	$KwP = 1;
	$KwM = 0;
	$λ��="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 1;
	$KwCRPex = 0;

	//ָ����
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function FadeKwR($�軭�r�g,$����)
{
	if($KwRName01!=""){$�ʥå���=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$�ʥå���=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$�ʥå���=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$�ʥå���=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$�ʥå���=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$�ʥå���=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$�ʥå���=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$�ʥå���=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$�ʥå���=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$�ʥå���=$KwRName10;$KwRName10="";}

	$KwP = 1;
	$KwM = 0;
	$λ��="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 1;
	$KwRPex = 0;

	//ָ����
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}


...�������_ʼ��
function FadeKwXEX($�ʥå���,$�軭�r�g,$����)
{
	$KwP = 1;
	$KwM = 0;
	$λ��="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 1;
	$KwXPex = 1;

	//ָ����
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function FadeKwCEX($�軭�r�g,$����)
{
	if($KwCName01!=""){$�ʥå���=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$�ʥå���=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$�ʥå���=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$�ʥå���=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$�ʥå���=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$�ʥå���=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$�ʥå���=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$�ʥå���=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$�ʥå���=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$�ʥå���=$KwCName10;$KwCName10="";}

	$KwP = 1;
	$KwM = 0;
	$λ��="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 1;
	$KwCPex = 1;

	//ָ����
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function FadeKwCLEX($�軭�r�g,$����)
{
	if($KwCLName01!=""){$�ʥå���=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$�ʥå���=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$�ʥå���=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$�ʥå���=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$�ʥå���=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$�ʥå���=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$�ʥå���=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$�ʥå���=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$�ʥå���=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$�ʥå���=$KwCLName10;$KwCLName10="";}

	$KwP = 1;
	$KwM = 0;
	$λ��="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 1;
	$KwCLPex = 1;

	//ָ����
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function FadeKwLEX($�軭�r�g,$����)
{
	if($KwLName01!=""){$�ʥå���=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$�ʥå���=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$�ʥå���=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$�ʥå���=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$�ʥå���=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$�ʥå���=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$�ʥå���=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$�ʥå���=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$�ʥå���=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$�ʥå���=$KwLName10;$KwLName10="";}

	$KwP = 1;
	$KwM = 0;
	$λ��="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 1;
	$KwLPex = 1;
	//ָ����
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function FadeKwCREX($�軭�r�g,$����)
{
	if($KwCRName01!=""){$�ʥå���=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$�ʥå���=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$�ʥå���=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$�ʥå���=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$�ʥå���=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$�ʥå���=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$�ʥå���=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$�ʥå���=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$�ʥå���=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$�ʥå���=$KwCRName10;$KwCRName10="";}

	$KwP = 1;
	$KwM = 0;
	$λ��="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 1;
	$KwCRPex = 1;

	//ָ����
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function FadeKwREX($�軭�r�g,$����)
{
	if($KwRName01!=""){$�ʥå���=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$�ʥå���=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$�ʥå���=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$�ʥå���=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$�ʥå���=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$�ʥå���=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$�ʥå���=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$�ʥå���=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$�ʥå���=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$�ʥå���=$KwRName10;$KwRName10="";}

	$KwP = 1;
	$KwM = 0;
	$λ��="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 1;
	$KwRPex = 1;

	//ָ����
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�����ɥ�����������������椨��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...��ͨ����
function Fade2KwX($�ʥå���,$�軭�r�g,$����)
{
	$KwP = 2;
	$λ��="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 2;
	$KwXPex = 0;

	//ָ����
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function Fade2KwC($�軭�r�g,$����)
{
	if($KwCName01!=""){$�ʥå���=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$�ʥå���=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$�ʥå���=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$�ʥå���=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$�ʥå���=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$�ʥå���=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$�ʥå���=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$�ʥå���=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$�ʥå���=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$�ʥå���=$KwCName10;$KwCName10="";}

	$KwP = 2;
	$λ��="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 2;
	$KwCPex = 0;

	//ָ����
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function Fade2KwCL($�軭�r�g,$����)
{
	if($KwCLName01!=""){$�ʥå���=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$�ʥå���=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$�ʥå���=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$�ʥå���=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$�ʥå���=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$�ʥå���=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$�ʥå���=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$�ʥå���=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$�ʥå���=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$�ʥå���=$KwCLName10;$KwCLName10="";}

	$KwP = 2;
	$λ��="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 2;
	$KwCLPex = 0;

	//ָ����
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function Fade2KwL($�軭�r�g,$����)
{
	if($KwLName01!=""){$�ʥå���=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$�ʥå���=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$�ʥå���=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$�ʥå���=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$�ʥå���=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$�ʥå���=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$�ʥå���=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$�ʥå���=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$�ʥå���=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$�ʥå���=$KwLName10;$KwLName10="";}

	$KwP = 2;
	$λ��="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 2;
	$KwLPex = 0;

	//ָ����
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function Fade2KwCR($�軭�r�g,$����)
{
	if($KwCRName01!=""){$�ʥå���=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$�ʥå���=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$�ʥå���=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$�ʥå���=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$�ʥå���=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$�ʥå���=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$�ʥå���=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$�ʥå���=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$�ʥå���=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$�ʥå���=$KwCRName10;$KwCRName10="";}

	$KwP = 2;
	$λ��="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 2;
	$KwCRPex = 0;

	//ָ����
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function Fade2KwR($�軭�r�g,$����)
{
	if($KwRName01!=""){$�ʥå���=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$�ʥå���=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$�ʥå���=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$�ʥå���=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$�ʥå���=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$�ʥå���=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$�ʥå���=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$�ʥå���=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$�ʥå���=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$�ʥå���=$KwRName10;$KwRName10="";}

	$KwP = 2;
	$λ��="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 2;
	$KwRPex = 0;

	//ָ����
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}


...�������_ʼ��
function Fade2KwXEX($�ʥå���,$�軭�r�g,$����)
{
	$KwP = 2;
	$λ��="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 2;
	$KwXPex = 1;

	//ָ����
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function Fade2KwCEX($�軭�r�g,$����)
{
	if($KwCName01!=""){$�ʥå���=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$�ʥå���=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$�ʥå���=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$�ʥå���=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$�ʥå���=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$�ʥå���=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$�ʥå���=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$�ʥå���=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$�ʥå���=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$�ʥå���=$KwCName10;$KwCName10="";}

	$KwP = 2;
	$λ��="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 2;
	$KwCPex = 1;

	//ָ����
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function Fade2KwCLEX($�軭�r�g,$����)
{
	if($KwCLName01!=""){$�ʥå���=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$�ʥå���=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$�ʥå���=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$�ʥå���=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$�ʥå���=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$�ʥå���=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$�ʥå���=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$�ʥå���=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$�ʥå���=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$�ʥå���=$KwCLName10;$KwCLName10="";}

	$KwP = 2;
	$λ��="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 2;
	$KwCLPex = 1;

	//ָ����
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function Fade2KwLEX($�軭�r�g,$����)
{
	if($KwLName01!=""){$�ʥå���=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$�ʥå���=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$�ʥå���=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$�ʥå���=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$�ʥå���=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$�ʥå���=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$�ʥå���=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$�ʥå���=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$�ʥå���=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$�ʥå���=$KwLName10;$KwLName10="";}

	$KwP = 2;
	$λ��="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 2;
	$KwLPex = 1;

	//ָ����
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function Fade2KwCREX($�軭�r�g,$����)
{
	if($KwCRName01!=""){$�ʥå���=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$�ʥå���=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$�ʥå���=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$�ʥå���=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$�ʥå���=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$�ʥå���=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$�ʥå���=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$�ʥå���=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$�ʥå���=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$�ʥå���=$KwCRName10;$KwCRName10="";}

	$KwP = 2;
	$λ��="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 2;
	$KwCRPex = 1;

	//ָ����
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function Fade2KwREX($�軭�r�g,$����)
{
	if($KwRName01!=""){$�ʥå���=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$�ʥå���=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$�ʥå���=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$�ʥå���=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$�ʥå���=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$�ʥå���=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$�ʥå���=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$�ʥå���=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$�ʥå���=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$�ʥå���=$KwRName10;$KwRName10="";}

	$KwP = 2;
	$λ��="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 2;
	$KwRPex = 1;

	//ָ����
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�����ɥ�����������������椨��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...��ͨ����
function Fade3KwX($�ʥå���,$�軭�r�g,$����)
{
	$KwP = 3;
	$KwM = 0;
	$λ��="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 3;
	$KwXPex = 0;

	//ָ����
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function Fade3KwC($�軭�r�g,$����)
{
	if($KwCName01!=""){$�ʥå���=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$�ʥå���=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$�ʥå���=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$�ʥå���=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$�ʥå���=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$�ʥå���=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$�ʥå���=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$�ʥå���=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$�ʥå���=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$�ʥå���=$KwCName10;$KwCName10="";}

	$KwP = 3;
	$KwM = 0;
	$λ��="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 3;
	$KwCPex = 0;

	//ָ����
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function Fade3KwCL($�軭�r�g,$����)
{
	if($KwCLName01!=""){$�ʥå���=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$�ʥå���=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$�ʥå���=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$�ʥå���=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$�ʥå���=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$�ʥå���=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$�ʥå���=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$�ʥå���=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$�ʥå���=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$�ʥå���=$KwCLName10;$KwCLName10="";}

	$KwP = 3;
	$KwM = 0;
	$λ��="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 3;
	$KwCLPex = 0;

	//ָ����
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function Fade3KwL($�軭�r�g,$����)
{
	if($KwLName01!=""){$�ʥå���=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$�ʥå���=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$�ʥå���=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$�ʥå���=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$�ʥå���=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$�ʥå���=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$�ʥå���=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$�ʥå���=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$�ʥå���=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$�ʥå���=$KwLName10;$KwLName10="";}

	$KwP = 3;
	$KwM = 0;
	$λ��="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 3;
	$KwLPex = 0;

	//ָ����
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function Fade3KwCR($�軭�r�g,$����)
{
	if($KwCRName01!=""){$�ʥå���=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$�ʥå���=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$�ʥå���=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$�ʥå���=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$�ʥå���=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$�ʥå���=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$�ʥå���=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$�ʥå���=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$�ʥå���=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$�ʥå���=$KwCRName10;$KwCRName10="";}

	$KwP = 3;
	$KwM = 0;
	$λ��="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 3;
	$KwCRPex = 0;

	//ָ����
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function Fade3KwR($�軭�r�g,$����)
{
	if($KwRName01!=""){$�ʥå���=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$�ʥå���=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$�ʥå���=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$�ʥå���=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$�ʥå���=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$�ʥå���=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$�ʥå���=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$�ʥå���=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$�ʥå���=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$�ʥå���=$KwRName10;$KwRName10="";}

	$KwP = 3;
	$KwM = 0;
	$λ��="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 3;
	$KwRPex = 0;

	//ָ����
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}

...�������_ʼ��
function Fade3KwXEX($�ʥå���,$�軭�r�g,$����)
{
	$KwP = 3;
	$KwM = 0;
	$λ��="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 3;
	$KwXPex = 1;

	//ָ����
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function Fade3KwCEX($�軭�r�g,$����)
{
	if($KwCName01!=""){$�ʥå���=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$�ʥå���=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$�ʥå���=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$�ʥå���=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$�ʥå���=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$�ʥå���=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$�ʥå���=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$�ʥå���=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$�ʥå���=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$�ʥå���=$KwCName10;$KwCName10="";}

	$KwP = 3;
	$KwM = 0;
	$λ��="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 3;
	$KwCPex = 1;

	//ָ����
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function Fade3KwCLEX($�軭�r�g,$����)
{
	if($KwCLName01!=""){$�ʥå���=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$�ʥå���=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$�ʥå���=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$�ʥå���=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$�ʥå���=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$�ʥå���=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$�ʥå���=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$�ʥå���=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$�ʥå���=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$�ʥå���=$KwCLName10;$KwCLName10="";}

	$KwP = 3;
	$KwM = 0;
	$λ��="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 3;
	$KwCLPex = 1;

	//ָ����
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function Fade3KwLEX($�軭�r�g,$����)
{
	if($KwLName01!=""){$�ʥå���=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$�ʥå���=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$�ʥå���=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$�ʥå���=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$�ʥå���=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$�ʥå���=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$�ʥå���=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$�ʥå���=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$�ʥå���=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$�ʥå���=$KwLName10;$KwLName10="";}

	$KwP = 3;
	$KwM = 0;
	$λ��="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 3;
	$KwLPex = 1;

	//ָ����
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function Fade3KwCREX($�軭�r�g,$����)
{
	if($KwCRName01!=""){$�ʥå���=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$�ʥå���=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$�ʥå���=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$�ʥå���=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$�ʥå���=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$�ʥå���=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$�ʥå���=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$�ʥå���=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$�ʥå���=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$�ʥå���=$KwCRName10;$KwCRName10="";}

	$KwP = 3;
	$KwM = 0;
	$λ��="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 3;
	$KwCRPex = 1;

	//ָ����
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function Fade3KwREX($�軭�r�g,$����)
{
	if($KwRName01!=""){$�ʥå���=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$�ʥå���=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$�ʥå���=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$�ʥå���=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$�ʥå���=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$�ʥå���=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$�ʥå���=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$�ʥå���=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$�ʥå���=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$�ʥå���=$KwRName10;$KwRName10="";}

	$KwP = 3;
	$KwM = 0;
	$λ��="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 3;
	$KwRPex = 1;

	//ָ����
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�����ɥ����������إ���ȥ��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function Fade4KwX($�ʥå���,$�軭�r�g,$����)
{
	$KwP = 4;
	$λ��="X";

	PreFadeKw();

	$FaceKwX2=$FaceKwX;
	$FaceKwX=$nut;
	$KwXP = 4;
	$KwXPex = 0;

	//ָ����
	$nutKwX=$setnut;
	$nutKwX2=$astnut;
}

function Fade4KwC($�軭�r�g,$����)
{
	if($KwCName01!=""){$�ʥå���=$KwCName01;$KwCName01="";}
	else if($KwCName02!=""){$�ʥå���=$KwCName02;$KwCName02="";}
	else if($KwCName03!=""){$�ʥå���=$KwCName03;$KwCName03="";}
	else if($KwCName04!=""){$�ʥå���=$KwCName04;$KwCName04="";}
	else if($KwCName05!=""){$�ʥå���=$KwCName05;$KwCName05="";}
	else if($KwCName06!=""){$�ʥå���=$KwCName06;$KwCName06="";}
	else if($KwCName07!=""){$�ʥå���=$KwCName07;$KwCName07="";}
	else if($KwCName08!=""){$�ʥå���=$KwCName08;$KwCName08="";}
	else if($KwCName09!=""){$�ʥå���=$KwCName09;$KwCName09="";}
	else if($KwCName10!=""){$�ʥå���=$KwCName10;$KwCName10="";}

	$KwP = 4;
	$λ��="C";

	PreFadeKw();

	$FaceKwC2=$FaceKwC;
	$FaceKwC=$nut;
	$KwCP = 4;
	$KwCPex = 0;

	//ָ����
	$nutKwC=$setnut;
	$nutKwC2=$astnut;
}

function Fade4KwCL($�軭�r�g,$����)
{
	if($KwCLName01!=""){$�ʥå���=$KwCLName01;$KwCLName01="";}
	else if($KwCLName02!=""){$�ʥå���=$KwCLName02;$KwCLName02="";}
	else if($KwCLName03!=""){$�ʥå���=$KwCLName03;$KwCLName03="";}
	else if($KwCLName04!=""){$�ʥå���=$KwCLName04;$KwCLName04="";}
	else if($KwCLName05!=""){$�ʥå���=$KwCLName05;$KwCLName05="";}
	else if($KwCLName06!=""){$�ʥå���=$KwCLName06;$KwCLName06="";}
	else if($KwCLName07!=""){$�ʥå���=$KwCLName07;$KwCLName07="";}
	else if($KwCLName08!=""){$�ʥå���=$KwCLName08;$KwCLName08="";}
	else if($KwCLName09!=""){$�ʥå���=$KwCLName09;$KwCLName09="";}
	else if($KwCLName10!=""){$�ʥå���=$KwCLName10;$KwCLName10="";}

	$KwP = 4;
	$λ��="CL";

	PreFadeKw();

	$FaceKwCL2=$FaceKwCL;
	$FaceKwCL=$nut;
	$KwCLP = 4;
	$KwCLPex = 0;

	//ָ����
	$nutKwCL=$setnut;
	$nutKwCL2=$astnut;
}

function Fade4KwL($�軭�r�g,$����)
{
	if($KwLName01!=""){$�ʥå���=$KwLName01;$KwLName01="";}
	else if($KwLName02!=""){$�ʥå���=$KwLName02;$KwLName02="";}
	else if($KwLName03!=""){$�ʥå���=$KwLName03;$KwLName03="";}
	else if($KwLName04!=""){$�ʥå���=$KwLName04;$KwLName04="";}
	else if($KwLName05!=""){$�ʥå���=$KwLName05;$KwLName05="";}
	else if($KwLName06!=""){$�ʥå���=$KwLName06;$KwLName06="";}
	else if($KwLName07!=""){$�ʥå���=$KwLName07;$KwLName07="";}
	else if($KwLName08!=""){$�ʥå���=$KwLName08;$KwLName08="";}
	else if($KwLName09!=""){$�ʥå���=$KwLName09;$KwLName09="";}
	else if($KwLName10!=""){$�ʥå���=$KwLName10;$KwLName10="";}

	$KwP = 4;
	$λ��="L";

	PreFadeKw();

	$FaceKwL2=$FaceKwL;
	$FaceKwL=$nut;
	$KwLP = 4;
	$KwLPex = 0;

	//ָ����
	$nutKwL=$setnut;
	$nutKwL2=$astnut;
}

function Fade4KwCR($�軭�r�g,$����)
{
	if($KwCRName01!=""){$�ʥå���=$KwCRName01;$KwCRName01="";}
	else if($KwCRName02!=""){$�ʥå���=$KwCRName02;$KwCRName02="";}
	else if($KwCRName03!=""){$�ʥå���=$KwCRName03;$KwCRName03="";}
	else if($KwCRName04!=""){$�ʥå���=$KwCRName04;$KwCRName04="";}
	else if($KwCRName05!=""){$�ʥå���=$KwCRName05;$KwCRName05="";}
	else if($KwCRName06!=""){$�ʥå���=$KwCRName06;$KwCRName06="";}
	else if($KwCRName07!=""){$�ʥå���=$KwCRName07;$KwCRName07="";}
	else if($KwCRName08!=""){$�ʥå���=$KwCRName08;$KwCRName08="";}
	else if($KwCRName09!=""){$�ʥå���=$KwCRName09;$KwCRName09="";}
	else if($KwCRName10!=""){$�ʥå���=$KwCRName10;$KwCRName10="";}

	$KwP = 4;
	$λ��="CR";

	PreFadeKw();

	$FaceKwCR2=$FaceKwCR;
	$FaceKwCR=$nut;
	$KwCRP = 4;
	$KwCRPex = 0;

	//ָ����
	$nutKwCR=$setnut;
	$nutKwCR2=$astnut;
}

function Fade4KwR($�軭�r�g,$����)
{
	if($KwRName01!=""){$�ʥå���=$KwRName01;$KwRName01="";}
	else if($KwRName02!=""){$�ʥå���=$KwRName02;$KwRName02="";}
	else if($KwRName03!=""){$�ʥå���=$KwRName03;$KwRName03="";}
	else if($KwRName04!=""){$�ʥå���=$KwRName04;$KwRName04="";}
	else if($KwRName05!=""){$�ʥå���=$KwRName05;$KwRName05="";}
	else if($KwRName06!=""){$�ʥå���=$KwRName06;$KwRName06="";}
	else if($KwRName07!=""){$�ʥå���=$KwRName07;$KwRName07="";}
	else if($KwRName08!=""){$�ʥå���=$KwRName08;$KwRName08="";}
	else if($KwRName09!=""){$�ʥå���=$KwRName09;$KwRName09="";}
	else if($KwRName10!=""){$�ʥå���=$KwRName10;$KwRName10="";}

	$KwP = 4;
	$λ��="R";

	PreFadeKw();

	$FaceKwR2=$FaceKwR;
	$FaceKwR=$nut;
	$KwRP = 4;
	$KwRPex = 0;

	//ָ����
	$nutKwR=$setnut;
	$nutKwR2=$astnut;
}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�����ɥ�����������ȥ��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

...��ͨ����
function DeleteKwX($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="X";
	$�ʥå���="���o��";
	$����=false;

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

function DeleteKwC($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="C";
	$�ʥå���="���o��";
	$����=false;

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

function DeleteKwCL($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="CL";
	$�ʥå���="���o��";
	$����=false;

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

function DeleteKwL($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="L";
	$�ʥå���="���o��";
	$����=false;

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

function DeleteKwCR($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="CR";
	$�ʥå���="���o��";
	$����=false;

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

function DeleteKwR($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="R";
	$�ʥå���="���o��";
	$����=false;

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
	Fade($smi,$�軭�r�g,1000,Axl3,false);
	Rotate($nus, $�軭�r�g, @0, @-90, @0, DxlAuto, $����);
	Request($nus, Disused);

	if($����==true)
	{
		WaitAction($nus, null);
	}
	else if($���� != false)
	{
		Wait($����);
	}
	else
	{
	}
}



...�������_ʼ��
function DeleteKwXEX($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="X";
	$�ʥå���="���o��";
	$����=false;

	$KwXPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwXP = 0;
	$KwXPex = 0;
}

function DeleteKwCEX($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="C";
	$�ʥå���="���o��";
	$����=false;

	$KwCPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwCP = 0;
	$KwCPex = 0;
}

function DeleteKwCLEX($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="CL";
	$�ʥå���="���o��";
	$����=false;

	$KwCLPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwCLP = 0;
	$KwCLPex = 0;
}

function DeleteKwLEX($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="L";
	$�ʥå���="���o��";
	$����=false;

	$KwLPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwLP = 0;
	$KwLPex = 0;
}

function DeleteKwCREX($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="CR";
	$�ʥå���="���o��";
	$����=false;

	$KwCRPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwCRP = 0;
	$KwCRPex = 0;
}

function DeleteKwREX($�軭�r�g,$����)
{
	$KwP = 0;
	$λ��="R";
	$�ʥå���="���o��";
	$����=false;

	$KwRPex = 1;

	PreFadeKw();
	PreDeleteKwEX();

	$KwRP = 0;
	$KwRPex = 0;
}


function PreDeleteKwEX()
{
	Fade($smi,$�軭�r�g,1000,Axl3,false);
	Rotate($nus, $�軭�r�g, @0, @-90, @0, DxlAuto, false);
	Rotate($astnut, 0, @0, @0, @0, DxlAuto, false);
	Request($nus, Disused);

	if($����==true)
	{
		WaitAction($nus, null);
	}
	else if($���� != false)
	{
		Wait($����);
	}
	else
	{
	}
}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�軭�ޥ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function PreFadeKw()
{
	$nut = $�ʥå���;

	if($λ��=="X"){
		$nus = "@" + $�H�ʥå���KwX;
		$picnut = $FaceKwX;
		$Prepicnut = $FaceKwX2;
		$KwPex = $KwXPex;
		$ץ����^ = $ץ����^X;
	}else if($λ��=="C"){
		$nus = "@" + $�H�ʥå���KwC;
		$picnut = $FaceKwC;
		$Prepicnut = $FaceKwC2;
		$KwPex = $KwCPex;
		$ץ����^ = $ץ����^C;
	}else if($λ��=="CL"){
		$nus = "@" + $�H�ʥå���KwCL;
		$picnut = $FaceKwCL;
		$Prepicnut = $FaceKwCL2;
		$KwPex = $KwCLPex;
		$ץ����^ = $ץ����^CL;
	}else if($λ��=="L"){
		$nus = "@" + $�H�ʥå���KwL;
		$picnut = $FaceKwL;
		$Prepicnut = $FaceKwL2;
		$ץ����^ = $ץ����^L;
		$KwPex = $KwLPex;
	}else if($λ��=="CR"){
		$nus = "@" + $�H�ʥå���KwCR;
		$picnut = $FaceKwCR;
		$Prepicnut = $FaceKwCR2;
		$ץ����^ = $ץ����^CR;
		$KwPex = $KwCRPex;
	}else if($λ��=="R"){
		$nus = "@" + $�H�ʥå���KwR;
		$picnut = $FaceKwR;
		$Prepicnut = $FaceKwR2;
		$KwPex = $KwRPex;
		$ץ����^ = $ץ����^R;
	}

	$smi = $nus + "/" + $ī����;
	$alias = $nus + "/" + $���� + "/" + $�ʥå���;

	if($stand01_use==$alias){
		$�軭�r�g01=$�軭�r�g;
		$KwPex01=$KwPex;
		$nut01=$nut;
		$nus01=$nus;
		$KwP01=$KwP;
		$smi01=$smi;
		$picnut01=$picnut;
		$Prepicnut01=$Prepicnut;
	}else if($stand02_use==$alias){
		$�軭�r�g02=$�軭�r�g;
		$KwPex02=$KwPex;
		$nut02=$nut;
		$nus02=$nus;
		$KwP02=$KwP;
		$smi02=$smi;
		$picnut02=$picnut;
		$Prepicnut02=$Prepicnut;
	}else if($stand03_use==$alias){
		$�軭�r�g03=$�軭�r�g;
		$KwPex03=$KwPex;
		$nut03=$nut;
		$nus03=$nus;
		$KwP03=$KwP;
		$smi03=$smi;
		$picnut03=$picnut;
		$Prepicnut03=$Prepicnut;
	}else if($stand04_use==$alias){
		$�軭�r�g04=$�軭�r�g;
		$KwPex04=$KwPex;
		$nut04=$nut;
		$nus04=$nus;
		$KwP04=$KwP;
		$smi04=$smi;
		$picnut04=$picnut;
		$Prepicnut04=$Prepicnut;
	}else if($stand05_use==$alias){
		$�軭�r�g05=$�軭�r�g;
		$KwPex05=$KwPex;
		$nut05=$nut;
		$nus05=$nus;
		$KwP05=$KwP;
		$smi05=$smi;
		$picnut05=$picnut;
		$Prepicnut05=$Prepicnut;
	}else if($stand06_use==$alias){
		$�軭�r�g06=$�軭�r�g;
		$KwPex06=$KwPex;
		$nut06=$nut;
		$nus06=$nus;
		$KwP06=$KwP;
		$smi06=$smi;
		$picnut06=$picnut;
		$Prepicnut06=$Prepicnut;
	}else if($stand07_use==$alias){
		$�軭�r�g07=$�軭�r�g;
		$KwPex07=$KwPex;
		$nut07=$nut;
		$nus07=$nus;
		$KwP07=$KwP;
		$smi07=$smi;
		$picnut07=$picnut;
		$Prepicnut07=$Prepicnut;
	}else if($stand08_use==$alias){
		$�軭�r�g08=$�軭�r�g;
		$KwPex08=$KwPex;
		$nut08=$nut;
		$nus08=$nus;
		$KwP08=$KwP;
		$smi08=$smi;
		$picnut08=$picnut;
		$Prepicnut08=$Prepicnut;
	}else if($stand09_use==$alias){
		$�軭�r�g09=$�軭�r�g;
		$KwPex09=$KwPex;
		$nut09=$nut;
		$nus09=$nus;
		$KwP09=$KwP;
		$smi09=$smi;
		$picnut09=$picnut;
		$Prepicnut09=$Prepicnut;
	}else if($stand10_use==$alias){
		$�軭�r�g10=$�軭�r�g;
		$KwPex10=$KwPex;
		$nut10=$nut;
		$nus10=$nus;
		$KwP10=$KwP;
		$smi10=$smi;
		$picnut10=$picnut;
		$Prepicnut10=$Prepicnut;
	}else if($stand11_use==$alias){
		$�軭�r�g11=$�軭�r�g;
		$KwPex11=$KwPex;
		$nut11=$nut;
		$nus11=$nus;
		$KwP11=$KwP;
		$smi11=$smi;
		$picnut11=$picnut;
		$Prepicnut11=$Prepicnut;
	}else if($stand12_use==$alias){
		$�軭�r�g12=$�軭�r�g;
		$KwPex12=$KwPex;
		$nut12=$nut;
		$nus12=$nus;
		$KwP12=$KwP;
		$smi12=$smi;
		$picnut12=$picnut;
		$Prepicnut12=$Prepicnut;
	}else if($stand13_use==$alias){
		$�軭�r�g13=$�軭�r�g;
		$KwPex13=$KwPex;
		$nut13=$nut;
		$nus13=$nus;
		$KwP13=$KwP;
		$smi13=$smi;
		$picnut13=$picnut;
		$Prepicnut13=$Prepicnut;
	}else if($stand14_use==$alias){
		$�軭�r�g14=$�軭�r�g;
		$KwPex14=$KwPex;
		$nut14=$nut;
		$nus14=$nus;
		$KwP14=$KwP;
		$smi14=$smi;
		$picnut14=$picnut;
		$Prepicnut14=$Prepicnut;
	}else if($stand15_use==$alias){
		$�軭�r�g15=$�軭�r�g;
		$KwPex15=$KwPex;
		$nut15=$nut;
		$nus15=$nus;
		$KwP15=$KwP;
		$smi15=$smi;
		$picnut15=$picnut;
		$Prepicnut15=$Prepicnut;
	}else if($stand16_use==$alias){
		$�軭�r�g16=$�軭�r�g;
		$KwPex16=$KwPex;
		$nut16=$nut;
		$nus16=$nus;
		$KwP16=$KwP;
		$smi16=$smi;
		$picnut16=$picnut;
		$Prepicnut16=$Prepicnut;
	}else if($stand17_use==$alias){
		$�軭�r�g17=$�軭�r�g;
		$KwPex17=$KwPex;
		$nut17=$nut;
		$nus17=$nus;
		$KwP17=$KwP;
		$smi17=$smi;
		$picnut17=$picnut;
		$Prepicnut17=$Prepicnut;
	}else if($stand18_use==$alias){
		$�軭�r�g18=$�軭�r�g;
		$KwPex18=$KwPex;
		$nut18=$nut;
		$nus18=$nus;
		$KwP18=$KwP;
		$smi18=$smi;
		$picnut18=$picnut;
		$Prepicnut18=$Prepicnut;
	}else if($stand19_use==$alias){
		$�軭�r�g19=$�軭�r�g;
		$KwPex19=$KwPex;
		$nut19=$nut;
		$nus19=$nus;
		$KwP19=$KwP;
		$smi19=$smi;
		$picnut19=$picnut;
		$Prepicnut19=$Prepicnut;
	}else if($stand20_use==$alias){
		$�軭�r�g20=$�軭�r�g;
		$KwPex20=$KwPex;
		$nut20=$nut;
		$nus20=$nus;
		$KwP20=$KwP;
		$smi20=$smi;
		$picnut20=$picnut;
		$Prepicnut20=$Prepicnut;
	}else if($stand21_use==$alias){
		$�軭�r�g21=$�軭�r�g;
		$KwPex21=$KwPex;
		$nut21=$nut;
		$nus21=$nus;
		$KwP21=$KwP;
		$smi21=$smi;
		$picnut21=$picnut;
		$Prepicnut21=$Prepicnut;
	}else if($stand22_use==$alias){
		$�軭�r�g22=$�軭�r�g;
		$KwPex22=$KwPex;
		$nut22=$nut;
		$nus22=$nus;
		$KwP22=$KwP;
		$smi22=$smi;
		$picnut22=$picnut;
		$Prepicnut22=$Prepicnut;
	}else if($stand23_use==$alias){
		$�軭�r�g23=$�軭�r�g;
		$KwPex23=$KwPex;
		$nut23=$nut;
		$nus23=$nus;
		$KwP23=$KwP;
		$smi23=$smi;
		$picnut23=$picnut;
		$Prepicnut23=$Prepicnut;
	}else if($stand24_use==$alias){
		$�軭�r�g24=$�軭�r�g;
		$KwPex24=$KwPex;
		$nut24=$nut;
		$nus24=$nus;
		$KwP24=$KwP;
		$smi24=$smi;
		$picnut24=$picnut;
		$Prepicnut24=$Prepicnut;
	}else if($stand25_use==$alias){
		$�軭�r�g25=$�軭�r�g;
		$KwPex25=$KwPex;
		$nut25=$nut;
		$nus25=$nus;
		$KwP25=$KwP;
		$smi25=$smi;
		$picnut25=$picnut;
		$Prepicnut25=$Prepicnut;
	}else if($stand26_use==$alias){
		$�軭�r�g26=$�軭�r�g;
		$KwPex26=$KwPex;
		$nut26=$nut;
		$nus26=$nus;
		$KwP26=$KwP;
		$smi26=$smi;
		$picnut26=$picnut;
		$Prepicnut26=$Prepicnut;
	}else if($stand27_use==$alias){
		$�軭�r�g27=$�軭�r�g;
		$KwPex27=$KwPex;
		$nut27=$nut;
		$nus27=$nus;
		$KwP27=$KwP;
		$smi27=$smi;
		$picnut27=$picnut;
		$Prepicnut27=$Prepicnut;
	}else if($stand28_use==$alias){
		$�軭�r�g28=$�軭�r�g;
		$KwPex28=$KwPex;
		$nut28=$nut;
		$nus28=$nus;
		$KwP28=$KwP;
		$smi28=$smi;
		$picnut28=$picnut;
		$Prepicnut28=$Prepicnut;
	}else if($stand29_use==$alias){
		$�軭�r�g29=$�軭�r�g;
		$KwPex29=$KwPex;
		$nut29=$nut;
		$nus29=$nus;
		$KwP29=$KwP;
		$smi29=$smi;
		$picnut29=$picnut;
		$Prepicnut29=$Prepicnut;
	}else if($stand30_use==$alias){
		$�軭�r�g30=$�軭�r�g;
		$KwPex30=$KwPex;
		$nut30=$nut;
		$nus30=$nus;
		$KwP30=$KwP;
		$smi30=$smi;
		$picnut30=$picnut;
		$Prepicnut30=$Prepicnut;
	}else if($�ʥå���=="���o��"){

	}else{
		$str="��"+$�ʥå���+"��ʹ�åꥹ�Ȥˤʤ�����";
		CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
		Request("DebugAlert",PushText);
	}

	$ץ��� = "@" + $ץ����^ + $nut;
	$ץ���ǰ = "@" + $ץ����^ + $picnut;
	$setnut = $nus + "/" + $���� + "/" + $nut;
	$astnut = $nus + "/" + $���� + "/" + $picnut;
	$Preastnut = $nus + "/" + $���� + "/" + $Prepicnut;

	Request($ץ���ǰ, Stop);

	if($setnut!=$astnut){
		Delete($ץ���ǰ);
	}

	if($λ��=="X"){
		if($KwXP==1){Kw1();}
		if($KwXP==3){Kw3();}
		$KwXP = 0;
	}else if($λ��=="C"){
		if($KwCP==1){Kw1();}
		if($KwCP==3){Kw3();}
		$KwCP = 0;
	}else if($λ��=="CL"){
		if($KwCLP==1){Kw1();}
		if($KwCLP==3){Kw3();}
		$KwCLP = 0;
	}else if($λ��=="L"){
		if($KwLP==1){Kw1();}
		if($KwLP==3){Kw3();}
		$KwLP = 0;
	}else if($λ��=="CR"){
		if($KwCRP==1){Kw1();}
		if($KwCRP==3){Kw3();}
		$KwCRP = 0;
	}else if($λ��=="R"){
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
			$stand01_use="";//���ڻ�����
		}else if($stand02_use==$astnut){
			$stand02_use="";//���ڻ�����
		}else if($stand03_use==$astnut){
			$stand03_use="";//���ڻ�����
		}else if($stand04_use==$astnut){
			$stand04_use="";//���ڻ�����
		}else if($stand05_use==$astnut){
			$stand05_use="";//���ڻ�����
		}else if($stand06_use==$astnut){
			$stand06_use="";//���ڻ�����
		}else if($stand07_use==$astnut){
			$stand07_use="";//���ڻ�����
		}else if($stand08_use==$astnut){
			$stand08_use="";//���ڻ�����
		}else if($stand09_use==$astnut){
			$stand09_use="";//���ڻ�����
		}else if($stand10_use==$astnut){
			$stand10_use="";//���ڻ�����
		}else if($stand11_use==$astnut){
			$stand11_use="";//���ڻ�����
		}else if($stand12_use==$astnut){
			$stand12_use="";//���ڻ�����
		}else if($stand13_use==$astnut){
			$stand13_use="";//���ڻ�����
		}else if($stand14_use==$astnut){
			$stand14_use="";//���ڻ�����
		}else if($stand15_use==$astnut){
			$stand15_use="";//���ڻ�����
		}else if($stand16_use==$astnut){
			$stand16_use="";//���ڻ�����
		}else if($stand17_use==$astnut){
			$stand17_use="";//���ڻ�����
		}else if($stand18_use==$astnut){
			$stand18_use="";//���ڻ�����
		}else if($stand19_use==$astnut){
			$stand19_use="";//���ڻ�����
		}else if($stand20_use==$astnut){
			$stand20_use="";//���ڻ�����
		}else if($stand21_use==$astnut){
			$stand21_use="";//���ڻ�����
		}else if($stand22_use==$astnut){
			$stand22_use="";//���ڻ�����
		}else if($stand23_use==$astnut){
			$stand23_use="";//���ڻ�����
		}else if($stand24_use==$astnut){
			$stand24_use="";//���ڻ�����
		}else if($stand25_use==$astnut){
			$stand25_use="";//���ڻ�����
		}else if($stand26_use==$astnut){
			$stand26_use="";//���ڻ�����
		}else if($stand27_use==$astnut){
			$stand27_use="";//���ڻ�����
		}else if($stand28_use==$astnut){
			$stand28_use="";//���ڻ�����
		}else if($stand29_use==$astnut){
			$stand29_use="";//���ڻ�����
		}else if($stand30_use==$astnut){
			$stand30_use="";//���ڻ�����
		}else{
		//	$str="��"+$astnut01+"��ʹ�åꥹ�Ȥˤʤ�����";
		//	CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
		//	Request("DebugAlert",PushText);
		}
	}


	if($����!=2)
	{
		if($��AX==1){Request($��A�ץ���X, Start);Request($��A�ץ���X, Disused);$��AX=0;}
		if($��AC==1){Request($��A�ץ���C, Start);Request($��A�ץ���C, Disused);$��AC=0;}
		if($��ACL==1){Request($��A�ץ���CL, Start);Request($��A�ץ���CL, Disused);$��ACL=0;}
		if($��AL==1){Request($��A�ץ���L, Start);Request($��A�ץ���L, Disused);$��AL=0;}
		if($��ACR==1){Request($��A�ץ���CR, Start);Request($��A�ץ���CR, Disused);$��ACR=0;}
		if($��AR==1){Request($��A�ץ���R, Start);Request($��A�ץ���R, Disused);$��AR=0;}
	}

	if($KwP!=0)
	{
		if($����!=2)
		{
			Request($ץ���, Start);
			Request($ץ���, Disused);
		}
	
	
		if($����==true)
		{
			WaitAction($ץ���, null);
		}
		else if($���� != false)
		{
			if($����==2)
			{
				if($λ��=="X"){$��AX=1;$��A�ץ���X=$ץ���;}
				if($λ��=="C"){$��AC=1;$��A�ץ���C=$ץ���;}
				if($λ��=="CL"){$��ACL=1;$��A�ץ���CL=$ץ���;}
				if($λ��=="L"){$��AL=1;$��A�ץ���L=$ץ���;}
				if($λ��=="CR"){$��ACR=1;$��A�ץ���CR=$ץ���;}
				if($λ��=="R"){$��AR=1;$��A�ץ���R=$ץ���;}
			}else{
				Wait($����);
			}
		}
		else
		{
		}
	}
}



function Kw1()
{
	$allnut = $nus + "/" + $���� + "/*";

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
	$allnut = $nus + "/" + $���� + "/*";

	if($KwPex!=1){
		Move($astnut,0, 0, $VerKw, null, false);
	}
	Rotate($nus, 0, @0, 0, @0, null, false);
	Fade($nus, 0, 1000, null, false);
	Fade($smi, 0, 0, null, false);
	Fade($allnut, 0, 0, null, false);
}







//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�����ɥ��ץ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

function Face1()
{
	$setnut01 = $nus01 + "/" + $���� + "/" + $nut01;
	$astnut01 = $nus01 + "/" + $���� + "/" + $picnut01;
	$allnut01 = $nus01 + "/" + $���� + "/" + "*";

	if($KwP01==1)
	{
		$�軭�r�g01 = $�軭�r�g01/2;
		$nx01 = -10;//nx
		$ny01 = 10;//ny
		$mx01 = 10;//mx
		$my01 = -10;//my

		Fade($nus01, 0, 0, null, false);
		Rotate($nus01, 0, @0, 90, @0, null, true);
		Fade($smi01,0,1000,null,false);

		Fade($nus01,$�軭�r�g01,1000,Dxl1,false);
		Fade($allnut01,0,0,null,false);
		Fade($smi01,$�軭�r�g01,0,Dxl3,false);
		Rotate($nus01, $�軭�r�g01, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut01, 0, @$nx01, @$ny01, null, true);//�����
		Move($setnut01,$�軭�r�g01, @$mx01, @$my01, Dxl1, false);
		Fade($setnut01,$�軭�r�g01,1000,null,true);//����㣳
	}

	if($KwP01==2)
	{
		Fade($astnut01,$�軭�r�g01,0,Axl3,false);
		Request($astnut01, Disused);
		Fade($setnut01,$�軭�r�g01,1000,Dxl1,true);
	}

	if($KwP01==3)
	{
		$�軭�r�g01 = $�軭�r�g01/3;
		$nx01 = -10;//nx
		$ny01 = 10;//ny
		$mx01 = 10;//mx
		$my01 = -10;//my

		Fade($smi01,$�軭�r�g01,1000,Axl3,false);
		Rotate($nus01, $�軭�r�g01, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex01==1)
		{
			Rotate($astnut01, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus01, null);
		Rotate($nus01, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut01,0,0,null,false);
			Request($astnut01, Disused);
			Fade($nus01,0,0,null,false);

		Fade($smi01,0,1000,null,false);

		Fade($nus01,$�軭�r�g01,1000,Dxl1,false);
		Fade($allnut01,0,0,null,false);
		Fade($smi01,$�軭�r�g01,0,Dxl3,false);
		Rotate($nus01, $�軭�r�g01, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus01, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut01, 0, @$nx01, @$ny01, null, true);//�����
		Move($setnut01,$�軭�r�g01, @$mx01, @$my01, Dxl1, false);
		Fade($setnut01,$�軭�r�g01,1000,null,true);//����㣳
	}

	if($KwP01==4)
	{
		$�軭�r�g01a = $�軭�r�g01/2;

		Fade($astnut01,$�軭�r�g01a,0,Axl3,false);
		Fade($setnut01,$�軭�r�g01a,1000,Dxl1,false);

		Fade($smi01,$�軭�r�g01,1000,Axl3,false);
		Rotate($nus01, $�軭�r�g01, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex01==1)
		{
			Rotate($astnut01, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus01, Disused);
		WaitAction($nus01, null);
	}
}

function Face2()
{
	$setnut02 = $nus02 + "/" + $���� + "/" + $nut02;
	$astnut02 = $nus02 + "/" + $���� + "/" + $picnut02;
	$allnut02 = $nus02 + "/" + $���� + "/" + "*";

	if($KwP02==1)
	{
		$�軭�r�g02 = $�軭�r�g02/2;
		$nx02 = -10;//nx
		$ny02 = 10;//ny
		$mx02 = 10;//mx
		$my02 = -10;//my

		Fade($nus02, 0, 0, null, false);
		Rotate($nus02, 0, @0, 90, @0, null, true);
		Fade($smi02,0,1000,null,false);

		Fade($nus02,$�軭�r�g02,1000,Dxl1,false);
		Fade($allnut02,0,0,null,false);
		Fade($smi02,$�軭�r�g02,0,Dxl3,false);
		Rotate($nus02, $�軭�r�g02, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut02, 0, @$nx02, @$ny02, null, true);//�����
		Move($setnut02,$�軭�r�g02, @$mx02, @$my02, Dxl1, false);
		Fade($setnut02,$�軭�r�g02,1000,null,true);//����㣳
	}

	if($KwP02==2)
	{
		Fade($astnut02,$�軭�r�g02,0,Axl3,false);
		Request($astnut02, Disused);
		Fade($setnut02,$�軭�r�g02,1000,Dxl1,true);
	}

	if($KwP02==3)
	{
		$�軭�r�g02 = $�軭�r�g02/3;
		$nx02 = -10;//nx
		$ny02 = 10;//ny
		$mx02 = 10;//mx
		$my02 = -10;//my

		Fade($smi02,$�軭�r�g02,1000,Axl3,false);
		Rotate($nus02, $�軭�r�g02, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex02==1)
		{
			Rotate($astnut02, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus02, null);
		Rotate($nus02, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut02,0,0,null,false);
			Request($astnut02, Disused);
			Fade($nus02,0,0,null,false);

		Fade($smi02,0,1000,null,false);

		Fade($nus02,$�軭�r�g02,1000,Dxl1,false);
		Fade($allnut02,0,0,null,false);
		Fade($smi02,$�軭�r�g02,0,Dxl3,false);
		Rotate($nus02, $�軭�r�g02, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus02, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut02, 0, @$nx02, @$ny02, null, true);//�����
		Move($setnut02,$�軭�r�g02, @$mx02, @$my02, Dxl1, false);
		Fade($setnut02,$�軭�r�g02,1000,null,true);//����㣳
	}

	if($KwP02==4)
	{
		$�軭�r�g02a = $�軭�r�g02/2;

		Fade($astnut02,$�軭�r�g02a,0,Axl3,false);
		Fade($setnut02,$�軭�r�g02a,1000,Dxl1,false);

		Fade($smi02,$�軭�r�g02,1000,Axl3,false);
		Rotate($nus02, $�軭�r�g02, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex02==1)
		{
			Rotate($astnut02, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus02, Disused);
		WaitAction($nus02, null);
	}
}

function Face3()
{
	$setnut03 = $nus03 + "/" + $���� + "/" + $nut03;
	$astnut03 = $nus03 + "/" + $���� + "/" + $picnut03;
	$allnut03 = $nus03 + "/" + $���� + "/" + "*";

	if($KwP03==1)
	{
		$�軭�r�g03 = $�軭�r�g03/2;
		$nx03 = -10;//nx
		$ny03 = 10;//ny
		$mx03 = 10;//mx
		$my03 = -10;//my

		Fade($nus03, 0, 0, null, false);
		Rotate($nus03, 0, @0, 90, @0, null, true);
		Fade($smi03,0,1000,null,false);

		Fade($nus03,$�軭�r�g03,1000,Dxl1,false);
		Fade($allnut03,0,0,null,false);
		Fade($smi03,$�軭�r�g03,0,Dxl3,false);
		Rotate($nus03, $�軭�r�g03, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut03, 0, @$nx03, @$ny03, null, true);//�����
		Move($setnut03,$�軭�r�g03, @$mx03, @$my03, Dxl1, false);
		Fade($setnut03,$�軭�r�g03,1000,null,true);//����㣳
	}

	if($KwP03==2)
	{
		Fade($astnut03,$�軭�r�g03,0,Axl3,false);
		Request($astnut03, Disused);
		Fade($setnut03,$�軭�r�g03,1000,Dxl1,true);
	}

	if($KwP03==3)
	{
		$�軭�r�g03 = $�軭�r�g03/3;
		$nx03 = -10;//nx
		$ny03 = 10;//ny
		$mx03 = 10;//mx
		$my03 = -10;//my

		Fade($smi03,$�軭�r�g03,1000,Axl3,false);
		Rotate($nus03, $�軭�r�g03, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex03==1)
		{
			Rotate($astnut03, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus03, null);
		Rotate($nus03, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut03,0,0,null,false);
			Request($astnut03, Disused);
			Fade($nus03,0,0,null,false);

		Fade($smi03,0,1000,null,false);

		Fade($nus03,$�軭�r�g03,1000,Dxl1,false);
		Fade($allnut03,0,0,null,false);
		Fade($smi03,$�軭�r�g03,0,Dxl3,false);
		Rotate($nus03, $�軭�r�g03, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus03, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut03, 0, @$nx03, @$ny03, null, true);//�����
		Move($setnut03,$�軭�r�g03, @$mx03, @$my03, Dxl1, false);
		Fade($setnut03,$�軭�r�g03,1000,null,true);//����㣳
	}

	if($KwP03==4)
	{
		$�軭�r�g03a = $�軭�r�g03/2;

		Fade($astnut03,$�軭�r�g03a,0,Axl3,false);
		Fade($setnut03,$�軭�r�g03a,1000,Dxl1,false);

		Fade($smi03,$�軭�r�g03,1000,Axl3,false);
		Rotate($nus03, $�軭�r�g03, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex03==1)
		{
			Rotate($astnut03, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus03, Disused);
		WaitAction($nus03, null);
	}
}


function Face4()
{
	$setnut04 = $nus04 + "/" + $���� + "/" + $nut04;
	$astnut04 = $nus04 + "/" + $���� + "/" + $picnut04;
	$allnut04 = $nus04 + "/" + $���� + "/" + "*";

	if($KwP04==1)
	{
		$�軭�r�g04 = $�軭�r�g04/2;
		$nx04 = -10;//nx
		$ny04 = 10;//ny
		$mx04 = 10;//mx
		$my04 = -10;//my

		Fade($nus04, 0, 0, null, false);
		Rotate($nus04, 0, @0, 90, @0, null, true);
		Fade($smi04,0,1000,null,false);

		Fade($nus04,$�軭�r�g04,1000,Dxl1,false);
		Fade($allnut04,0,0,null,false);
		Fade($smi04,$�軭�r�g04,0,Dxl3,false);
		Rotate($nus04, $�軭�r�g04, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut04, 0, @$nx04, @$ny04, null, true);//�����
		Move($setnut04,$�軭�r�g04, @$mx04, @$my04, Dxl1, false);
		Fade($setnut04,$�軭�r�g04,1000,null,true);//����㣳
	}

	if($KwP04==2)
	{
		Fade($astnut04,$�軭�r�g04,0,Axl3,false);
		Request($astnut04, Disused);
		Fade($setnut04,$�軭�r�g04,1000,Dxl1,true);
	}

	if($KwP04==3)
	{
		$�軭�r�g04 = $�軭�r�g04/3;
		$nx04 = -10;//nx
		$ny04 = 10;//ny
		$mx04 = 10;//mx
		$my04 = -10;//my

		Fade($smi04,$�軭�r�g04,1000,Axl3,false);
		Rotate($nus04, $�軭�r�g04, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex04==1)
		{
			Rotate($astnut04, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus04, null);
		Rotate($nus04, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut04,0,0,null,false);
			Request($astnut04, Disused);
			Fade($nus04,0,0,null,false);

		Fade($smi04,0,1000,null,false);

		Fade($nus04,$�軭�r�g04,1000,Dxl1,false);
		Fade($allnut04,0,0,null,false);
		Fade($smi04,$�軭�r�g04,0,Dxl3,false);
		Rotate($nus04, $�軭�r�g04, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus04, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut04, 0, @$nx04, @$ny04, null, true);//�����
		Move($setnut04,$�軭�r�g04, @$mx04, @$my04, Dxl1, false);
		Fade($setnut04,$�軭�r�g04,1000,null,true);//����㣳
	}

	if($KwP04==4)
	{
		$�軭�r�g04a = $�軭�r�g04/2;

		Fade($astnut04,$�軭�r�g04a,0,Axl3,false);
		Fade($setnut04,$�軭�r�g04a,1000,Dxl1,false);

		Fade($smi04,$�軭�r�g04,1000,Axl3,false);
		Rotate($nus04, $�軭�r�g04, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex04==1)
		{
			Rotate($astnut04, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus04, Disused);
		WaitAction($nus04, null);
	}
}

function Face5()
{
	$setnut05 = $nus05 + "/" + $���� + "/" + $nut05;
	$astnut05 = $nus05 + "/" + $���� + "/" + $picnut05;
	$allnut05 = $nus05 + "/" + $���� + "/" + "*";

	if($KwP05==1)
	{
		$�軭�r�g05 = $�軭�r�g05/2;
		$nx05 = -10;//nx
		$ny05 = 10;//ny
		$mx05 = 10;//mx
		$my05 = -10;//my

		Fade($nus05, 0, 0, null, false);
		Rotate($nus05, 0, @0, 90, @0, null, true);
		Fade($smi05,0,1000,null,false);

		Fade($nus05,$�軭�r�g05,1000,Dxl1,false);
		Fade($allnut05,0,0,null,false);
		Fade($smi05,$�軭�r�g05,0,Dxl3,false);
		Rotate($nus05, $�軭�r�g05, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut05, 0, @$nx05, @$ny05, null, true);//�����
		Move($setnut05,$�軭�r�g05, @$mx05, @$my05, Dxl1, false);
		Fade($setnut05,$�軭�r�g05,1000,null,true);//����㣳
	}

	if($KwP05==2)
	{
		Fade($astnut05,$�軭�r�g05,0,Axl3,false);
		Request($astnut05, Disused);
		Fade($setnut05,$�軭�r�g05,1000,Dxl1,true);
	}

	if($KwP05==3)
	{
		$�軭�r�g05 = $�軭�r�g05/3;
		$nx05 = -10;//nx
		$ny05 = 10;//ny
		$mx05 = 10;//mx
		$my05 = -10;//my

		Fade($smi05,$�軭�r�g05,1000,Axl3,false);
		Rotate($nus05, $�軭�r�g05, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex05==1)
		{
			Rotate($astnut05, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus05, null);
		Rotate($nus05, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut05,0,0,null,false);
			Request($astnut05, Disused);
			Fade($nus05,0,0,null,false);

		Fade($smi05,0,1000,null,false);

		Fade($nus05,$�軭�r�g05,1000,Dxl1,false);
		Fade($allnut05,0,0,null,false);
		Fade($smi05,$�軭�r�g05,0,Dxl3,false);
		Rotate($nus05, $�軭�r�g05, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus05, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut05, 0, @$nx05, @$ny05, null, true);//�����
		Move($setnut05,$�軭�r�g05, @$mx05, @$my05, Dxl1, false);
		Fade($setnut05,$�軭�r�g05,1000,null,true);//����㣳
	}

	if($KwP05==4)
	{
		$�軭�r�g05a = $�軭�r�g05/2;

		Fade($astnut05,$�軭�r�g05a,0,Axl3,false);
		Fade($setnut05,$�軭�r�g05a,1000,Dxl1,false);

		Fade($smi05,$�軭�r�g05,1000,Axl3,false);
		Rotate($nus05, $�軭�r�g05, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex05==1)
		{
			Rotate($astnut05, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus05, Disused);
		WaitAction($nus05, null);
	}
}

function Face6()
{
	$setnut06 = $nus06 + "/" + $���� + "/" + $nut06;
	$astnut06 = $nus06 + "/" + $���� + "/" + $picnut06;
	$allnut06 = $nus06 + "/" + $���� + "/" + "*";

	if($KwP06==1)
	{
		$�軭�r�g06 = $�軭�r�g06/2;
		$nx06 = -10;//nx
		$ny06 = 10;//ny
		$mx06 = 10;//mx
		$my06 = -10;//my

		Fade($nus06, 0, 0, null, false);
		Rotate($nus06, 0, @0, 90, @0, null, true);
		Fade($smi06,0,1000,null,false);

		Fade($nus06,$�軭�r�g06,1000,Dxl1,false);
		Fade($allnut06,0,0,null,false);
		Fade($smi06,$�軭�r�g06,0,Dxl3,false);
		Rotate($nus06, $�軭�r�g06, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut06, 0, @$nx06, @$ny06, null, true);//�����
		Move($setnut06,$�軭�r�g06, @$mx06, @$my06, Dxl1, false);
		Fade($setnut06,$�軭�r�g06,1000,null,true);//����㣳
	}

	if($KwP06==2)
	{
		Fade($astnut06,$�軭�r�g06,0,Axl3,false);
		Request($astnut06, Disused);
		Fade($setnut06,$�軭�r�g06,1000,Dxl1,true);
	}

	if($KwP06==3)
	{
		$�軭�r�g06 = $�軭�r�g06/3;
		$nx06 = -10;//nx
		$ny06 = 10;//ny
		$mx06 = 10;//mx
		$my06 = -10;//my

		Fade($smi06,$�軭�r�g06,1000,Axl3,false);
		Rotate($nus06, $�軭�r�g06, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex06==1)
		{
			Rotate($astnut06, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus06, null);
		Rotate($nus06, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut06,0,0,null,false);
			Request($astnut06, Disused);
			Fade($nus06,0,0,null,false);

		Fade($smi06,0,1000,null,false);

		Fade($nus06,$�軭�r�g06,1000,Dxl1,false);
		Fade($allnut06,0,0,null,false);
		Fade($smi06,$�軭�r�g06,0,Dxl3,false);
		Rotate($nus06, $�軭�r�g06, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus06, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut06, 0, @$nx06, @$ny06, null, true);//�����
		Move($setnut06,$�軭�r�g06, @$mx06, @$my06, Dxl1, false);
		Fade($setnut06,$�軭�r�g06,1000,null,true);//����㣳
	}

	if($KwP06==4)
	{
		$�軭�r�g06a = $�軭�r�g06/2;

		Fade($astnut06,$�軭�r�g06a,0,Axl3,false);
		Fade($setnut06,$�軭�r�g06a,1000,Dxl1,false);

		Fade($smi06,$�軭�r�g06,1000,Axl3,false);
		Rotate($nus06, $�軭�r�g06, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex06==1)
		{
			Rotate($astnut06, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus06, Disused);
		WaitAction($nus06, null);
	}
}

function Face7()
{
	$setnut07 = $nus07 + "/" + $���� + "/" + $nut07;
	$astnut07 = $nus07 + "/" + $���� + "/" + $picnut07;
	$allnut07 = $nus07 + "/" + $���� + "/" + "*";

	if($KwP07==1)
	{
		$�軭�r�g07 = $�軭�r�g07/2;
		$nx07 = -10;//nx
		$ny07 = 10;//ny
		$mx07 = 10;//mx
		$my07 = -10;//my

		Fade($nus07, 0, 0, null, false);
		Rotate($nus07, 0, @0, 90, @0, null, true);
		Fade($smi07,0,1000,null,false);

		Fade($nus07,$�軭�r�g07,1000,Dxl1,false);
		Fade($allnut07,0,0,null,false);
		Fade($smi07,$�軭�r�g07,0,Dxl3,false);
		Rotate($nus07, $�軭�r�g07, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut07, 0, @$nx07, @$ny07, null, true);//�����
		Move($setnut07,$�軭�r�g07, @$mx07, @$my07, Dxl1, false);
		Fade($setnut07,$�軭�r�g07,1000,null,true);//����㣳
	}

	if($KwP07==2)
	{
		Fade($astnut07,$�軭�r�g07,0,Axl3,false);
		Request($astnut07, Disused);
		Fade($setnut07,$�軭�r�g07,1000,Dxl1,true);
	}

	if($KwP07==3)
	{
		$�軭�r�g07 = $�軭�r�g07/3;
		$nx07 = -10;//nx
		$ny07 = 10;//ny
		$mx07 = 10;//mx
		$my07 = -10;//my

		Fade($smi07,$�軭�r�g07,1000,Axl3,false);
		Rotate($nus07, $�軭�r�g07, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex07==1)
		{
			Rotate($astnut07, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus07, null);
		Rotate($nus07, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut07,0,0,null,false);
			Request($astnut07, Disused);
			Fade($nus07,0,0,null,false);

		Fade($smi07,0,1000,null,false);

		Fade($nus07,$�軭�r�g07,1000,Dxl1,false);
		Fade($allnut07,0,0,null,false);
		Fade($smi07,$�軭�r�g07,0,Dxl3,false);
		Rotate($nus07, $�軭�r�g07, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus07, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut07, 0, @$nx07, @$ny07, null, true);//�����
		Move($setnut07,$�軭�r�g07, @$mx07, @$my07, Dxl1, false);
		Fade($setnut07,$�軭�r�g07,1000,null,true);//����㣳
	}

	if($KwP07==4)
	{
		$�軭�r�g07a = $�軭�r�g07/2;

		Fade($astnut07,$�軭�r�g07a,0,Axl3,false);
		Fade($setnut07,$�軭�r�g07a,1000,Dxl1,false);

		Fade($smi07,$�軭�r�g07,1000,Axl3,false);
		Rotate($nus07, $�軭�r�g07, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex07==1)
		{
			Rotate($astnut07, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus07, Disused);
		WaitAction($nus07, null);
	}
}

function Face8()
{
	$setnut08 = $nus08 + "/" + $���� + "/" + $nut08;
	$astnut08 = $nus08 + "/" + $���� + "/" + $picnut08;
	$allnut08 = $nus08 + "/" + $���� + "/" + "*";

	if($KwP08==1)
	{
		$�軭�r�g08 = $�軭�r�g08/2;
		$nx08 = -10;//nx
		$ny08 = 10;//ny
		$mx08 = 10;//mx
		$my08 = -10;//my

		Fade($nus08, 0, 0, null, false);
		Rotate($nus08, 0, @0, 90, @0, null, true);
		Fade($smi08,0,1000,null,false);

		Fade($nus08,$�軭�r�g08,1000,Dxl1,false);
		Fade($allnut08,0,0,null,false);
		Fade($smi08,$�軭�r�g08,0,Dxl3,false);
		Rotate($nus08, $�軭�r�g08, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut08, 0, @$nx08, @$ny08, null, true);//�����
		Move($setnut08,$�軭�r�g08, @$mx08, @$my08, Dxl1, false);
		Fade($setnut08,$�軭�r�g08,1000,null,true);//����㣳
	}

	if($KwP08==2)
	{
		Fade($astnut08,$�軭�r�g08,0,Axl3,false);
		Request($astnut08, Disused);
		Fade($setnut08,$�軭�r�g08,1000,Dxl1,true);
	}

	if($KwP08==3)
	{
		$�軭�r�g08 = $�軭�r�g08/3;
		$nx08 = -10;//nx
		$ny08 = 10;//ny
		$mx08 = 10;//mx
		$my08 = -10;//my

		Fade($smi08,$�軭�r�g08,1000,Axl3,false);
		Rotate($nus08, $�軭�r�g08, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex08==1)
		{
			Rotate($astnut08, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus08, null);
		Rotate($nus08, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut08,0,0,null,false);
			Request($astnut08, Disused);
			Fade($nus08,0,0,null,false);

		Fade($smi08,0,1000,null,false);

		Fade($nus08,$�軭�r�g08,1000,Dxl1,false);
		Fade($allnut08,0,0,null,false);
		Fade($smi08,$�軭�r�g08,0,Dxl3,false);
		Rotate($nus08, $�軭�r�g08, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus08, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut08, 0, @$nx08, @$ny08, null, true);//�����
		Move($setnut08,$�軭�r�g08, @$mx08, @$my08, Dxl1, false);
		Fade($setnut08,$�軭�r�g08,1000,null,true);//����㣳
	}

	if($KwP08==4)
	{
		$�軭�r�g08a = $�軭�r�g08/2;

		Fade($astnut08,$�軭�r�g08a,0,Axl3,false);
		Fade($setnut08,$�軭�r�g08a,1000,Dxl1,false);

		Fade($smi08,$�軭�r�g08,1000,Axl3,false);
		Rotate($nus08, $�軭�r�g08, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex08==1)
		{
			Rotate($astnut08, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus08, Disused);
		WaitAction($nus08, null);
	}
}

function Face9()
{
	$setnut09 = $nus09 + "/" + $���� + "/" + $nut09;
	$astnut09 = $nus09 + "/" + $���� + "/" + $picnut09;
	$allnut09 = $nus09 + "/" + $���� + "/" + "*";

	if($KwP09==1)
	{
		$�軭�r�g09 = $�軭�r�g09/2;
		$nx09 = -10;//nx
		$ny09 = 10;//ny
		$mx09 = 10;//mx
		$my09 = -10;//my

		Fade($nus09, 0, 0, null, false);
		Rotate($nus09, 0, @0, 90, @0, null, true);
		Fade($smi09,0,1000,null,false);

		Fade($nus09,$�軭�r�g09,1000,Dxl1,false);
		Fade($allnut09,0,0,null,false);
		Fade($smi09,$�軭�r�g09,0,Dxl3,false);
		Rotate($nus09, $�軭�r�g09, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut09, 0, @$nx09, @$ny09, null, true);//�����
		Move($setnut09,$�軭�r�g09, @$mx09, @$my09, Dxl1, false);
		Fade($setnut09,$�軭�r�g09,1000,null,true);//����㣳
	}

	if($KwP09==2)
	{
		Fade($astnut09,$�軭�r�g09,0,Axl3,false);
		Request($astnut09, Disused);
		Fade($setnut09,$�軭�r�g09,1000,Dxl1,true);
	}

	if($KwP09==3)
	{
		$�軭�r�g09 = $�軭�r�g09/3;
		$nx09 = -10;//nx
		$ny09 = 10;//ny
		$mx09 = 10;//mx
		$my09 = -10;//my

		Fade($smi09,$�軭�r�g09,1000,Axl3,false);
		Rotate($nus09, $�軭�r�g09, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex09==1)
		{
			Rotate($astnut09, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus09, null);
		Rotate($nus09, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut09,0,0,null,false);
			Request($astnut09, Disused);
			Fade($nus09,0,0,null,false);

		Fade($smi09,0,1000,null,false);

		Fade($nus09,$�軭�r�g09,1000,Dxl1,false);
		Fade($allnut09,0,0,null,false);
		Fade($smi09,$�軭�r�g09,0,Dxl3,false);
		Rotate($nus09, $�軭�r�g09, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus09, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut09, 0, @$nx09, @$ny09, null, true);//�����
		Move($setnut09,$�軭�r�g09, @$mx09, @$my09, Dxl1, false);
		Fade($setnut09,$�軭�r�g09,1000,null,true);//����㣳
	}

	if($KwP09==4)
	{
		$�軭�r�g09a = $�軭�r�g09/2;

		Fade($astnut09,$�軭�r�g09a,0,Axl3,false);
		Fade($setnut09,$�軭�r�g09a,1000,Dxl1,false);

		Fade($smi09,$�軭�r�g09,1000,Axl3,false);
		Rotate($nus09, $�軭�r�g09, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex09==1)
		{
			Rotate($astnut09, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus09, Disused);
		WaitAction($nus09, null);
	}
}

function Face10()
{
	$setnut10 = $nus10 + "/" + $���� + "/" + $nut10;
	$astnut10 = $nus10 + "/" + $���� + "/" + $picnut10;
	$allnut10 = $nus10 + "/" + $���� + "/" + "*";

	if($KwP10==1)
	{
		$�軭�r�g10 = $�軭�r�g10/2;
		$nx10 = -10;//nx
		$ny10 = 10;//ny
		$mx10 = 10;//mx
		$my10 = -10;//my

		Fade($nus10, 0, 0, null, false);
		Rotate($nus10, 0, @0, 90, @0, null, true);
		Fade($smi10,0,1000,null,false);

		Fade($nus10,$�軭�r�g10,1000,Dxl1,false);
		Fade($allnut10,0,0,null,false);
		Fade($smi10,$�軭�r�g10,0,Dxl3,false);
		Rotate($nus10, $�軭�r�g10, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut10, 0, @$nx10, @$ny10, null, true);//�����
		Move($setnut10,$�軭�r�g10, @$mx10, @$my10, Dxl1, false);
		Fade($setnut10,$�軭�r�g10,1000,null,true);//����㣳
	}

	if($KwP10==2)
	{
		Fade($astnut10,$�軭�r�g10,0,Axl3,false);
		Request($astnut10, Disused);
		Fade($setnut10,$�軭�r�g10,1000,Dxl1,true);
	}

	if($KwP10==3)
	{
		$�軭�r�g10 = $�軭�r�g10/3;
		$nx10 = -10;//nx
		$ny10 = 10;//ny
		$mx10 = 10;//mx
		$my10 = -10;//my

		Fade($smi10,$�軭�r�g10,1000,Axl3,false);
		Rotate($nus10, $�軭�r�g10, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex10==1)
		{
			Rotate($astnut10, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus10, null);
		Rotate($nus10, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut10,0,0,null,false);
			Request($astnut10, Disused);
			Fade($nus10,0,0,null,false);

		Fade($smi10,0,1000,null,false);

		Fade($nus10,$�軭�r�g10,1000,Dxl1,false);
		Fade($allnut10,0,0,null,false);
		Fade($smi10,$�軭�r�g10,0,Dxl3,false);
		Rotate($nus10, $�軭�r�g10, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus10, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut10, 0, @$nx10, @$ny10, null, true);//�����
		Move($setnut10,$�軭�r�g10, @$mx10, @$my10, Dxl1, false);
		Fade($setnut10,$�軭�r�g10,1000,null,true);//����㣳
	}

	if($KwP10==4)
	{
		$�軭�r�g10a = $�軭�r�g10/2;

		Fade($astnut10,$�軭�r�g10a,0,Axl3,false);
		Fade($setnut10,$�軭�r�g10a,1000,Dxl1,false);

		Fade($smi10,$�軭�r�g10,1000,Axl3,false);
		Rotate($nus10, $�軭�r�g10, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex10==1)
		{
			Rotate($astnut10, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus10, Disused);
		WaitAction($nus10, null);
	}
}

function Face11()
{
	$setnut11 = $nus11 + "/" + $���� + "/" + $nut11;
	$astnut11 = $nus11 + "/" + $���� + "/" + $picnut11;
	$allnut11 = $nus11 + "/" + $���� + "/" + "*";

	if($KwP11==1)
	{
		$�軭�r�g11 = $�軭�r�g11/2;
		$nx11 = -10;//nx
		$ny11 = 10;//ny
		$mx11 = 10;//mx
		$my11 = -10;//my

		Fade($nus11, 0, 0, null, false);
		Rotate($nus11, 0, @0, 90, @0, null, true);
		Fade($smi11,0,1000,null,false);

		Fade($nus11,$�軭�r�g11,1000,Dxl1,false);
		Fade($allnut11,0,0,null,false);
		Fade($smi11,$�軭�r�g11,0,Dxl3,false);
		Rotate($nus11, $�軭�r�g11, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut11, 0, @$nx11, @$ny11, null, true);//�����
		Move($setnut11,$�軭�r�g11, @$mx11, @$my11, Dxl1, false);
		Fade($setnut11,$�軭�r�g11,1000,null,true);//����㣳
	}

	if($KwP11==2)
	{
		Fade($astnut11,$�軭�r�g11,0,Axl3,false);
		Request($astnut11, Disused);
		Fade($setnut11,$�軭�r�g11,1000,Dxl1,true);
	}

	if($KwP11==3)
	{
		$�軭�r�g11 = $�軭�r�g11/3;
		$nx11 = -10;//nx
		$ny11 = 10;//ny
		$mx11 = 10;//mx
		$my11 = -10;//my

		Fade($smi11,$�軭�r�g11,1000,Axl3,false);
		Rotate($nus11, $�軭�r�g11, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex11==1)
		{
			Rotate($astnut11, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus11, null);
		Rotate($nus11, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut11,0,0,null,false);
			Request($astnut11, Disused);
			Fade($nus11,0,0,null,false);

		Fade($smi11,0,1000,null,false);

		Fade($nus11,$�軭�r�g11,1000,Dxl1,false);
		Fade($allnut11,0,0,null,false);
		Fade($smi11,$�軭�r�g11,0,Dxl3,false);
		Rotate($nus11, $�軭�r�g11, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus11, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut11, 0, @$nx11, @$ny11, null, true);//�����
		Move($setnut11,$�軭�r�g11, @$mx11, @$my11, Dxl1, false);
		Fade($setnut11,$�軭�r�g11,1000,null,true);//����㣳
	}

	if($KwP11==4)
	{
		$�軭�r�g11a = $�軭�r�g11/2;

		Fade($astnut11,$�軭�r�g11a,0,Axl3,false);
		Fade($setnut11,$�軭�r�g11a,1000,Dxl1,false);

		Fade($smi11,$�軭�r�g11,1000,Axl3,false);
		Rotate($nus11, $�軭�r�g11, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex11==1)
		{
			Rotate($astnut11, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus11, Disused);
		WaitAction($nus11, null);
	}
}

function Face12()
{
	$setnut12 = $nus12 + "/" + $���� + "/" + $nut12;
	$astnut12 = $nus12 + "/" + $���� + "/" + $picnut12;
	$allnut12 = $nus12 + "/" + $���� + "/" + "*";

	if($KwP12==1)
	{
		$�軭�r�g12 = $�軭�r�g12/2;
		$nx12 = -10;//nx
		$ny12 = 10;//ny
		$mx12 = 10;//mx
		$my12 = -10;//my

		Fade($nus12, 0, 0, null, false);
		Rotate($nus12, 0, @0, 90, @0, null, true);
		Fade($smi12,0,1000,null,false);

		Fade($nus12,$�軭�r�g12,1000,Dxl1,false);
		Fade($allnut12,0,0,null,false);
		Fade($smi12,$�軭�r�g12,0,Dxl3,false);
		Rotate($nus12, $�軭�r�g12, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut12, 0, @$nx12, @$ny12, null, true);//�����
		Move($setnut12,$�軭�r�g12, @$mx12, @$my12, Dxl1, false);
		Fade($setnut12,$�軭�r�g12,1000,null,true);//����㣳
	}

	if($KwP12==2)
	{
		Fade($astnut12,$�軭�r�g12,0,Axl3,false);
		Request($astnut12, Disused);
		Fade($setnut12,$�軭�r�g12,1000,Dxl1,true);
	}

	if($KwP12==3)
	{
		$�軭�r�g12 = $�軭�r�g12/3;
		$nx12 = -10;//nx
		$ny12 = 10;//ny
		$mx12 = 10;//mx
		$my12 = -10;//my

		Fade($smi12,$�軭�r�g12,1000,Axl3,false);
		Rotate($nus12, $�軭�r�g12, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex12==1)
		{
			Rotate($astnut12, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus12, null);
		Rotate($nus12, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut12,0,0,null,false);
			Request($astnut12, Disused);
			Fade($nus12,0,0,null,false);

		Fade($smi12,0,1000,null,false);

		Fade($nus12,$�軭�r�g12,1000,Dxl1,false);
		Fade($allnut12,0,0,null,false);
		Fade($smi12,$�軭�r�g12,0,Dxl3,false);
		Rotate($nus12, $�軭�r�g12, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus12, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut12, 0, @$nx12, @$ny12, null, true);//�����
		Move($setnut12,$�軭�r�g12, @$mx12, @$my12, Dxl1, false);
		Fade($setnut12,$�軭�r�g12,1000,null,true);//����㣳
	}

	if($KwP12==4)
	{
		$�軭�r�g12a = $�軭�r�g12/2;

		Fade($astnut12,$�軭�r�g12a,0,Axl3,false);
		Fade($setnut12,$�軭�r�g12a,1000,Dxl1,false);

		Fade($smi12,$�軭�r�g12,1000,Axl3,false);
		Rotate($nus12, $�軭�r�g12, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex12==1)
		{
			Rotate($astnut12, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus12, Disused);
		WaitAction($nus12, null);
	}
}

function Face13()
{
	$setnut13 = $nus13 + "/" + $���� + "/" + $nut13;
	$astnut13 = $nus13 + "/" + $���� + "/" + $picnut13;
	$allnut13 = $nus13 + "/" + $���� + "/" + "*";

	if($KwP13==1)
	{
		$�軭�r�g13 = $�軭�r�g13/2;
		$nx13 = -10;//nx
		$ny13 = 10;//ny
		$mx13 = 10;//mx
		$my13 = -10;//my

		Fade($nus13, 0, 0, null, false);
		Rotate($nus13, 0, @0, 90, @0, null, true);
		Fade($smi13,0,1000,null,false);

		Fade($nus13,$�軭�r�g13,1000,Dxl1,false);
		Fade($allnut13,0,0,null,false);
		Fade($smi13,$�軭�r�g13,0,Dxl3,false);
		Rotate($nus13, $�軭�r�g13, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut13, 0, @$nx13, @$ny13, null, true);//�����
		Move($setnut13,$�軭�r�g13, @$mx13, @$my13, Dxl1, false);
		Fade($setnut13,$�軭�r�g13,1000,null,true);//����㣳
	}

	if($KwP13==2)
	{
		Fade($astnut13,$�軭�r�g13,0,Axl3,false);
		Request($astnut13, Disused);
		Fade($setnut13,$�軭�r�g13,1000,Dxl1,true);
	}

	if($KwP13==3)
	{
		$�軭�r�g13 = $�軭�r�g13/3;
		$nx13 = -10;//nx
		$ny13 = 10;//ny
		$mx13 = 10;//mx
		$my13 = -10;//my

		Fade($smi13,$�軭�r�g13,1000,Axl3,false);
		Rotate($nus13, $�軭�r�g13, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex13==1)
		{
			Rotate($astnut13, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus13, null);
		Rotate($nus13, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut13,0,0,null,false);
			Request($astnut13, Disused);
			Fade($nus13,0,0,null,false);

		Fade($smi13,0,1000,null,false);

		Fade($nus13,$�軭�r�g13,1000,Dxl1,false);
		Fade($allnut13,0,0,null,false);
		Fade($smi13,$�軭�r�g13,0,Dxl3,false);
		Rotate($nus13, $�軭�r�g13, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus13, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut13, 0, @$nx13, @$ny13, null, true);//�����
		Move($setnut13,$�軭�r�g13, @$mx13, @$my13, Dxl1, false);
		Fade($setnut13,$�軭�r�g13,1000,null,true);//����㣳
	}

	if($KwP13==4)
	{
		$�軭�r�g13a = $�軭�r�g13/2;

		Fade($astnut13,$�軭�r�g13a,0,Axl3,false);
		Fade($setnut13,$�軭�r�g13a,1000,Dxl1,false);

		Fade($smi13,$�軭�r�g13,1000,Axl3,false);
		Rotate($nus13, $�軭�r�g13, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex13==1)
		{
			Rotate($astnut13, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus13, Disused);
		WaitAction($nus13, null);
	}
}

function Face14()
{
	$setnut14 = $nus14 + "/" + $���� + "/" + $nut14;
	$astnut14 = $nus14 + "/" + $���� + "/" + $picnut14;
	$allnut14 = $nus14 + "/" + $���� + "/" + "*";

	if($KwP14==1)
	{
		$�軭�r�g14 = $�軭�r�g14/2;
		$nx14 = -10;//nx
		$ny14 = 10;//ny
		$mx14 = 10;//mx
		$my14 = -10;//my

		Fade($nus14, 0, 0, null, false);
		Rotate($nus14, 0, @0, 90, @0, null, true);
		Fade($smi14,0,1000,null,false);

		Fade($nus14,$�軭�r�g14,1000,Dxl1,false);
		Fade($allnut14,0,0,null,false);
		Fade($smi14,$�軭�r�g14,0,Dxl3,false);
		Rotate($nus14, $�軭�r�g14, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut14, 0, @$nx14, @$ny14, null, true);//�����
		Move($setnut14,$�軭�r�g14, @$mx14, @$my14, Dxl1, false);
		Fade($setnut14,$�軭�r�g14,1000,null,true);//����㣳
	}

	if($KwP14==2)
	{
		Fade($astnut14,$�軭�r�g14,0,Axl3,false);
		Request($astnut14, Disused);
		Fade($setnut14,$�軭�r�g14,1000,Dxl1,true);
	}

	if($KwP14==3)
	{
		$�軭�r�g14 = $�軭�r�g14/3;
		$nx14 = -10;//nx
		$ny14 = 10;//ny
		$mx14 = 10;//mx
		$my14 = -10;//my

		Fade($smi14,$�軭�r�g14,1000,Axl3,false);
		Rotate($nus14, $�軭�r�g14, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex14==1)
		{
			Rotate($astnut14, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus14, null);
		Rotate($nus14, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut14,0,0,null,false);
			Request($astnut14, Disused);
			Fade($nus14,0,0,null,false);

		Fade($smi14,0,1000,null,false);

		Fade($nus14,$�軭�r�g14,1000,Dxl1,false);
		Fade($allnut14,0,0,null,false);
		Fade($smi14,$�軭�r�g14,0,Dxl3,false);
		Rotate($nus14, $�軭�r�g14, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus14, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut14, 0, @$nx14, @$ny14, null, true);//�����
		Move($setnut14,$�軭�r�g14, @$mx14, @$my14, Dxl1, false);
		Fade($setnut14,$�軭�r�g14,1000,null,true);//����㣳
	}

	if($KwP14==4)
	{
		$�軭�r�g14a = $�軭�r�g14/2;

		Fade($astnut14,$�軭�r�g14a,0,Axl3,false);
		Fade($setnut14,$�軭�r�g14a,1000,Dxl1,false);

		Fade($smi14,$�軭�r�g14,1000,Axl3,false);
		Rotate($nus14, $�軭�r�g14, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex14==1)
		{
			Rotate($astnut14, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus14, Disused);
		WaitAction($nus14, null);
	}
}

function Face15()
{
	$setnut15 = $nus15 + "/" + $���� + "/" + $nut15;
	$astnut15 = $nus15 + "/" + $���� + "/" + $picnut15;
	$allnut15 = $nus15 + "/" + $���� + "/" + "*";

	if($KwP15==1)
	{
		$�軭�r�g15 = $�軭�r�g15/2;
		$nx15 = -10;//nx
		$ny15 = 10;//ny
		$mx15 = 10;//mx
		$my15 = -10;//my

		Fade($nus15, 0, 0, null, false);
		Rotate($nus15, 0, @0, 90, @0, null, true);
		Fade($smi15,0,1000,null,false);

		Fade($nus15,$�軭�r�g15,1000,Dxl1,false);
		Fade($allnut15,0,0,null,false);
		Fade($smi15,$�軭�r�g15,0,Dxl3,false);
		Rotate($nus15, $�軭�r�g15, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut15, 0, @$nx15, @$ny15, null, true);//�����
		Move($setnut15,$�軭�r�g15, @$mx15, @$my15, Dxl1, false);
		Fade($setnut15,$�軭�r�g15,1000,null,true);//����㣳
	}

	if($KwP15==2)
	{
		Fade($astnut15,$�軭�r�g15,0,Axl3,false);
		Request($astnut15, Disused);
		Fade($setnut15,$�軭�r�g15,1000,Dxl1,true);
	}

	if($KwP15==3)
	{
		$�軭�r�g15 = $�軭�r�g15/3;
		$nx15 = -10;//nx
		$ny15 = 10;//ny
		$mx15 = 10;//mx
		$my15 = -10;//my

		Fade($smi15,$�軭�r�g15,1000,Axl3,false);
		Rotate($nus15, $�軭�r�g15, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex15==1)
		{
			Rotate($astnut15, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus15, null);
		Rotate($nus15, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut15,0,0,null,false);
			Request($astnut15, Disused);
			Fade($nus15,0,0,null,false);

		Fade($smi15,0,1000,null,false);

		Fade($nus15,$�軭�r�g15,1000,Dxl1,false);
		Fade($allnut15,0,0,null,false);
		Fade($smi15,$�軭�r�g15,0,Dxl3,false);
		Rotate($nus15, $�軭�r�g15, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus15, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut15, 0, @$nx15, @$ny15, null, true);//�����
		Move($setnut15,$�軭�r�g15, @$mx15, @$my15, Dxl1, false);
		Fade($setnut15,$�軭�r�g15,1000,null,true);//����㣳
	}

	if($KwP15==4)
	{
		$�軭�r�g15a = $�軭�r�g15/2;

		Fade($astnut15,$�軭�r�g15a,0,Axl3,false);
		Fade($setnut15,$�軭�r�g15a,1000,Dxl1,false);

		Fade($smi15,$�軭�r�g15,1000,Axl3,false);
		Rotate($nus15, $�軭�r�g15, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex15==1)
		{
			Rotate($astnut15, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus15, Disused);
		WaitAction($nus15, null);
	}
}

function Face16()
{
	$setnut16 = $nus16 + "/" + $���� + "/" + $nut16;
	$astnut16 = $nus16 + "/" + $���� + "/" + $picnut16;
	$allnut16 = $nus16 + "/" + $���� + "/" + "*";

	if($KwP16==1)
	{
		$�軭�r�g16 = $�軭�r�g16/2;
		$nx16 = -10;//nx
		$ny16 = 10;//ny
		$mx16 = 10;//mx
		$my16 = -10;//my

		Fade($nus16, 0, 0, null, false);
		Rotate($nus16, 0, @0, 90, @0, null, true);
		Fade($smi16,0,1000,null,false);

		Fade($nus16,$�軭�r�g16,1000,Dxl1,false);
		Fade($allnut16,0,0,null,false);
		Fade($smi16,$�軭�r�g16,0,Dxl3,false);
		Rotate($nus16, $�軭�r�g16, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut16, 0, @$nx16, @$ny16, null, true);//�����
		Move($setnut16,$�軭�r�g16, @$mx16, @$my16, Dxl1, false);
		Fade($setnut16,$�軭�r�g16,1000,null,true);//����㣳
	}

	if($KwP16==2)
	{
		Fade($astnut16,$�軭�r�g16,0,Axl3,false);
		Request($astnut16, Disused);
		Fade($setnut16,$�軭�r�g16,1000,Dxl1,true);
	}

	if($KwP16==3)
	{
		$�軭�r�g16 = $�軭�r�g16/3;
		$nx16 = -10;//nx
		$ny16 = 10;//ny
		$mx16 = 10;//mx
		$my16 = -10;//my

		Fade($smi16,$�軭�r�g16,1000,Axl3,false);
		Rotate($nus16, $�軭�r�g16, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex16==1)
		{
			Rotate($astnut16, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus16, null);
		Rotate($nus16, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut16,0,0,null,false);
			Request($astnut16, Disused);
			Fade($nus16,0,0,null,false);

		Fade($smi16,0,1000,null,false);

		Fade($nus16,$�軭�r�g16,1000,Dxl1,false);
		Fade($allnut16,0,0,null,false);
		Fade($smi16,$�軭�r�g16,0,Dxl3,false);
		Rotate($nus16, $�軭�r�g16, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus16, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut16, 0, @$nx16, @$ny16, null, true);//�����
		Move($setnut16,$�軭�r�g16, @$mx16, @$my16, Dxl1, false);
		Fade($setnut16,$�軭�r�g16,1000,null,true);//����㣳
	}

	if($KwP16==4)
	{
		$�軭�r�g16a = $�軭�r�g16/2;

		Fade($astnut16,$�軭�r�g16a,0,Axl3,false);
		Fade($setnut16,$�軭�r�g16a,1000,Dxl1,false);

		Fade($smi16,$�軭�r�g16,1000,Axl3,false);
		Rotate($nus16, $�軭�r�g16, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex16==1)
		{
			Rotate($astnut16, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus16, Disused);
		WaitAction($nus16, null);
	}
}

function Face17()
{
	$setnut17 = $nus17 + "/" + $���� + "/" + $nut17;
	$astnut17 = $nus17 + "/" + $���� + "/" + $picnut17;
	$allnut17 = $nus17 + "/" + $���� + "/" + "*";

	if($KwP17==1)
	{
		$�軭�r�g17 = $�軭�r�g17/2;
		$nx17 = -10;//nx
		$ny17 = 10;//ny
		$mx17 = 10;//mx
		$my17 = -10;//my

		Fade($nus17, 0, 0, null, false);
		Rotate($nus17, 0, @0, 90, @0, null, true);
		Fade($smi17,0,1000,null,false);

		Fade($nus17,$�軭�r�g17,1000,Dxl1,false);
		Fade($allnut17,0,0,null,false);
		Fade($smi17,$�軭�r�g17,0,Dxl3,false);
		Rotate($nus17, $�軭�r�g17, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut17, 0, @$nx17, @$ny17, null, true);//�����
		Move($setnut17,$�軭�r�g17, @$mx17, @$my17, Dxl1, false);
		Fade($setnut17,$�軭�r�g17,1000,null,true);//����㣳
	}

	if($KwP17==2)
	{
		Fade($astnut17,$�軭�r�g17,0,Axl3,false);
		Request($astnut17, Disused);
		Fade($setnut17,$�軭�r�g17,1000,Dxl1,true);
	}

	if($KwP17==3)
	{
		$�軭�r�g17 = $�軭�r�g17/3;
		$nx17 = -10;//nx
		$ny17 = 10;//ny
		$mx17 = 10;//mx
		$my17 = -10;//my

		Fade($smi17,$�軭�r�g17,1000,Axl3,false);
		Rotate($nus17, $�軭�r�g17, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex17==1)
		{
			Rotate($astnut17, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus17, null);
		Rotate($nus17, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut17,0,0,null,false);
			Request($astnut17, Disused);
			Fade($nus17,0,0,null,false);

		Fade($smi17,0,1000,null,false);

		Fade($nus17,$�軭�r�g17,1000,Dxl1,false);
		Fade($allnut17,0,0,null,false);
		Fade($smi17,$�軭�r�g17,0,Dxl3,false);
		Rotate($nus17, $�軭�r�g17, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus17, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut17, 0, @$nx17, @$ny17, null, true);//�����
		Move($setnut17,$�軭�r�g17, @$mx17, @$my17, Dxl1, false);
		Fade($setnut17,$�軭�r�g17,1000,null,true);//����㣳
	}

	if($KwP17==4)
	{
		$�軭�r�g17a = $�軭�r�g17/2;

		Fade($astnut17,$�軭�r�g17a,0,Axl3,false);
		Fade($setnut17,$�軭�r�g17a,1000,Dxl1,false);

		Fade($smi17,$�軭�r�g17,1000,Axl3,false);
		Rotate($nus17, $�軭�r�g17, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex17==1)
		{
			Rotate($astnut17, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus17, Disused);
		WaitAction($nus17, null);
	}
}

function Face18()
{
	$setnut18 = $nus18 + "/" + $���� + "/" + $nut18;
	$astnut18 = $nus18 + "/" + $���� + "/" + $picnut18;
	$allnut18 = $nus18 + "/" + $���� + "/" + "*";

	if($KwP18==1)
	{
		$�軭�r�g18 = $�軭�r�g18/2;
		$nx18 = -10;//nx
		$ny18 = 10;//ny
		$mx18 = 10;//mx
		$my18 = -10;//my

		Fade($nus18, 0, 0, null, false);
		Rotate($nus18, 0, @0, 90, @0, null, true);
		Fade($smi18,0,1000,null,false);

		Fade($nus18,$�軭�r�g18,1000,Dxl1,false);
		Fade($allnut18,0,0,null,false);
		Fade($smi18,$�軭�r�g18,0,Dxl3,false);
		Rotate($nus18, $�軭�r�g18, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut18, 0, @$nx18, @$ny18, null, true);//�����
		Move($setnut18,$�軭�r�g18, @$mx18, @$my18, Dxl1, false);
		Fade($setnut18,$�軭�r�g18,1000,null,true);//����㣳
	}

	if($KwP18==2)
	{
		Fade($astnut18,$�軭�r�g18,0,Axl3,false);
		Request($astnut18, Disused);
		Fade($setnut18,$�軭�r�g18,1000,Dxl1,true);
	}

	if($KwP18==3)
	{
		$�軭�r�g18 = $�軭�r�g18/3;
		$nx18 = -10;//nx
		$ny18 = 10;//ny
		$mx18 = 10;//mx
		$my18 = -10;//my

		Fade($smi18,$�軭�r�g18,1000,Axl3,false);
		Rotate($nus18, $�軭�r�g18, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex18==1)
		{
			Rotate($astnut18, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus18, null);
		Rotate($nus18, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut18,0,0,null,false);
			Request($astnut18, Disused);
			Fade($nus18,0,0,null,false);

		Fade($smi18,0,1000,null,false);

		Fade($nus18,$�軭�r�g18,1000,Dxl1,false);
		Fade($allnut18,0,0,null,false);
		Fade($smi18,$�軭�r�g18,0,Dxl3,false);
		Rotate($nus18, $�軭�r�g18, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus18, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut18, 0, @$nx18, @$ny18, null, true);//�����
		Move($setnut18,$�軭�r�g18, @$mx18, @$my18, Dxl1, false);
		Fade($setnut18,$�軭�r�g18,1000,null,true);//����㣳
	}

	if($KwP18==4)
	{
		$�軭�r�g18a = $�軭�r�g18/2;

		Fade($astnut18,$�軭�r�g18a,0,Axl3,false);
		Fade($setnut18,$�軭�r�g18a,1000,Dxl1,false);

		Fade($smi18,$�軭�r�g18,1000,Axl3,false);
		Rotate($nus18, $�軭�r�g18, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex18==1)
		{
			Rotate($astnut18, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus18, Disused);
		WaitAction($nus18, null);
	}
}

function Face19()
{
	$setnut19 = $nus19 + "/" + $���� + "/" + $nut19;
	$astnut19 = $nus19 + "/" + $���� + "/" + $picnut19;
	$allnut19 = $nus19 + "/" + $���� + "/" + "*";

	if($KwP19==1)
	{
		$�軭�r�g19 = $�軭�r�g19/2;
		$nx19 = -10;//nx
		$ny19 = 10;//ny
		$mx19 = 10;//mx
		$my19 = -10;//my

		Fade($nus19, 0, 0, null, false);
		Rotate($nus19, 0, @0, 90, @0, null, true);
		Fade($smi19,0,1000,null,false);

		Fade($nus19,$�軭�r�g19,1000,Dxl1,false);
		Fade($allnut19,0,0,null,false);
		Fade($smi19,$�軭�r�g19,0,Dxl3,false);
		Rotate($nus19, $�軭�r�g19, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut19, 0, @$nx19, @$ny19, null, true);//�����
		Move($setnut19,$�軭�r�g19, @$mx19, @$my19, Dxl1, false);
		Fade($setnut19,$�軭�r�g19,1000,null,true);//����㣳
	}

	if($KwP19==2)
	{
		Fade($astnut19,$�軭�r�g19,0,Axl3,false);
		Request($astnut19, Disused);
		Fade($setnut19,$�軭�r�g19,1000,Dxl1,true);
	}

	if($KwP19==3)
	{
		$�軭�r�g19 = $�軭�r�g19/3;
		$nx19 = -10;//nx
		$ny19 = 10;//ny
		$mx19 = 10;//mx
		$my19 = -10;//my

		Fade($smi19,$�軭�r�g19,1000,Axl3,false);
		Rotate($nus19, $�軭�r�g19, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex19==1)
		{
			Rotate($astnut19, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus19, null);
		Rotate($nus19, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut19,0,0,null,false);
			Request($astnut19, Disused);
			Fade($nus19,0,0,null,false);

		Fade($smi19,0,1000,null,false);

		Fade($nus19,$�軭�r�g19,1000,Dxl1,false);
		Fade($allnut19,0,0,null,false);
		Fade($smi19,$�軭�r�g19,0,Dxl3,false);
		Rotate($nus19, $�軭�r�g19, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus19, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut19, 0, @$nx19, @$ny19, null, true);//�����
		Move($setnut19,$�軭�r�g19, @$mx19, @$my19, Dxl1, false);
		Fade($setnut19,$�軭�r�g19,1000,null,true);//����㣳
	}

	if($KwP19==4)
	{
		$�軭�r�g19a = $�軭�r�g19/2;

		Fade($astnut19,$�軭�r�g19a,0,Axl3,false);
		Fade($setnut19,$�軭�r�g19a,1000,Dxl1,false);

		Fade($smi19,$�軭�r�g19,1000,Axl3,false);
		Rotate($nus19, $�軭�r�g19, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex19==1)
		{
			Rotate($astnut19, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus19, Disused);
		WaitAction($nus19, null);
	}
}

function Face20()
{
	$setnut20 = $nus20 + "/" + $���� + "/" + $nut20;
	$astnut20 = $nus20 + "/" + $���� + "/" + $picnut20;
	$allnut20 = $nus20 + "/" + $���� + "/" + "*";

	if($KwP20==1)
	{
		$�軭�r�g20 = $�軭�r�g20/2;
		$nx20 = -10;//nx
		$ny20 = 10;//ny
		$mx20 = 10;//mx
		$my20 = -10;//my

		Fade($nus20, 0, 0, null, false);
		Rotate($nus20, 0, @0, 90, @0, null, true);
		Fade($smi20,0,1000,null,false);

		Fade($nus20,$�軭�r�g20,1000,Dxl1,false);
		Fade($allnut20,0,0,null,false);
		Fade($smi20,$�軭�r�g20,0,Dxl3,false);
		Rotate($nus20, $�軭�r�g20, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut20, 0, @$nx20, @$ny20, null, true);//�����
		Move($setnut20,$�軭�r�g20, @$mx20, @$my20, Dxl1, false);
		Fade($setnut20,$�軭�r�g20,1000,null,true);//����㣳
	}

	if($KwP20==2)
	{
		Fade($astnut20,$�軭�r�g20,0,Axl3,false);
		Request($astnut20, Disused);
		Fade($setnut20,$�軭�r�g20,1000,Dxl1,true);
	}

	if($KwP20==3)
	{
		$�軭�r�g20 = $�軭�r�g20/3;
		$nx20 = -10;//nx
		$ny20 = 10;//ny
		$mx20 = 10;//mx
		$my20 = -10;//my

		Fade($smi20,$�軭�r�g20,1000,Axl3,false);
		Rotate($nus20, $�軭�r�g20, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex20==1)
		{
			Rotate($astnut20, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus20, null);
		Rotate($nus20, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut20,0,0,null,false);
			Request($astnut20, Disused);
			Fade($nus20,0,0,null,false);

		Fade($smi20,0,1000,null,false);

		Fade($nus20,$�軭�r�g20,1000,Dxl1,false);
		Fade($allnut20,0,0,null,false);
		Fade($smi20,$�軭�r�g20,0,Dxl3,false);
		Rotate($nus20, $�軭�r�g20, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus20, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut20, 0, @$nx20, @$ny20, null, true);//�����
		Move($setnut20,$�軭�r�g20, @$mx20, @$my20, Dxl1, false);
		Fade($setnut20,$�軭�r�g20,1000,null,true);//����㣳
	}

	if($KwP20==4)
	{
		$�軭�r�g20a = $�軭�r�g20/2;

		Fade($astnut20,$�軭�r�g20a,0,Axl3,false);
		Fade($setnut20,$�軭�r�g20a,1000,Dxl1,false);

		Fade($smi20,$�軭�r�g20,1000,Axl3,false);
		Rotate($nus20, $�軭�r�g20, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex20==1)
		{
			Rotate($astnut20, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus20, Disused);
		WaitAction($nus20, null);
	}
}

function Face21()
{
	$setnut21 = $nus21 + "/" + $���� + "/" + $nut21;
	$astnut21 = $nus21 + "/" + $���� + "/" + $picnut21;
	$allnut21 = $nus21 + "/" + $���� + "/" + "*";

	if($KwP21==1)
	{
		$�軭�r�g21 = $�軭�r�g21/2;
		$nx21 = -10;//nx
		$ny21 = 10;//ny
		$mx21 = 10;//mx
		$my21 = -10;//my

		Fade($nus21, 0, 0, null, false);
		Rotate($nus21, 0, @0, 90, @0, null, true);
		Fade($smi21,0,1000,null,false);

		Fade($nus21,$�軭�r�g21,1000,Dxl1,false);
		Fade($allnut21,0,0,null,false);
		Fade($smi21,$�軭�r�g21,0,Dxl3,false);
		Rotate($nus21, $�軭�r�g21, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut21, 0, @$nx21, @$ny21, null, true);//�����
		Move($setnut21,$�軭�r�g21, @$mx21, @$my21, Dxl1, false);
		Fade($setnut21,$�軭�r�g21,1000,null,true);//����㣳
	}

	if($KwP21==2)
	{
		Fade($astnut21,$�軭�r�g21,0,Axl3,false);
		Request($astnut21, Disused);
		Fade($setnut21,$�軭�r�g21,1000,Dxl1,true);
	}

	if($KwP21==3)
	{
		$�軭�r�g21 = $�軭�r�g21/3;
		$nx21 = -10;//nx
		$ny21 = 10;//ny
		$mx21 = 10;//mx
		$my21 = -10;//my

		Fade($smi21,$�軭�r�g21,1000,Axl3,false);
		Rotate($nus21, $�軭�r�g21, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex21==1)
		{
			Rotate($astnut21, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus21, null);
		Rotate($nus21, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut21,0,0,null,false);
			Request($astnut21, Disused);
			Fade($nus21,0,0,null,false);

		Fade($smi21,0,1000,null,false);

		Fade($nus21,$�軭�r�g21,1000,Dxl1,false);
		Fade($allnut21,0,0,null,false);
		Fade($smi21,$�軭�r�g21,0,Dxl3,false);
		Rotate($nus21, $�軭�r�g21, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus21, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut21, 0, @$nx21, @$ny21, null, true);//�����
		Move($setnut21,$�軭�r�g21, @$mx21, @$my21, Dxl1, false);
		Fade($setnut21,$�軭�r�g21,1000,null,true);//����㣳
	}

	if($KwP21==4)
	{
		$�軭�r�g21a = $�軭�r�g21/2;

		Fade($astnut21,$�軭�r�g21a,0,Axl3,false);
		Fade($setnut21,$�軭�r�g21a,1000,Dxl1,false);

		Fade($smi21,$�軭�r�g21,1000,Axl3,false);
		Rotate($nus21, $�軭�r�g21, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex21==1)
		{
			Rotate($astnut21, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus21, Disused);
		WaitAction($nus21, null);
	}
}

function Face22()
{
	$setnut22 = $nus22 + "/" + $���� + "/" + $nut22;
	$astnut22 = $nus22 + "/" + $���� + "/" + $picnut22;
	$allnut22 = $nus22 + "/" + $���� + "/" + "*";

	if($KwP22==1)
	{
		$�軭�r�g22 = $�軭�r�g22/2;
		$nx22 = -10;//nx
		$ny22 = 10;//ny
		$mx22 = 10;//mx
		$my22 = -10;//my

		Fade($nus22, 0, 0, null, false);
		Rotate($nus22, 0, @0, 90, @0, null, true);
		Fade($smi22,0,1000,null,false);

		Fade($nus22,$�軭�r�g22,1000,Dxl1,false);
		Fade($allnut22,0,0,null,false);
		Fade($smi22,$�軭�r�g22,0,Dxl3,false);
		Rotate($nus22, $�軭�r�g22, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut22, 0, @$nx22, @$ny22, null, true);//�����
		Move($setnut22,$�軭�r�g22, @$mx22, @$my22, Dxl1, false);
		Fade($setnut22,$�軭�r�g22,1000,null,true);//����㣳
	}

	if($KwP22==2)
	{
		Fade($astnut22,$�軭�r�g22,0,Axl3,false);
		Request($astnut22, Disused);
		Fade($setnut22,$�軭�r�g22,1000,Dxl1,true);
	}

	if($KwP22==3)
	{
		$�軭�r�g22 = $�軭�r�g22/3;
		$nx22 = -10;//nx
		$ny22 = 10;//ny
		$mx22 = 10;//mx
		$my22 = -10;//my

		Fade($smi22,$�軭�r�g22,1000,Axl3,false);
		Rotate($nus22, $�軭�r�g22, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex22==1)
		{
			Rotate($astnut22, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus22, null);
		Rotate($nus22, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut22,0,0,null,false);
			Request($astnut22, Disused);
			Fade($nus22,0,0,null,false);

		Fade($smi22,0,1000,null,false);

		Fade($nus22,$�軭�r�g22,1000,Dxl1,false);
		Fade($allnut22,0,0,null,false);
		Fade($smi22,$�軭�r�g22,0,Dxl3,false);
		Rotate($nus22, $�軭�r�g22, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus22, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut22, 0, @$nx22, @$ny22, null, true);//�����
		Move($setnut22,$�軭�r�g22, @$mx22, @$my22, Dxl1, false);
		Fade($setnut22,$�軭�r�g22,1000,null,true);//����㣳
	}

	if($KwP22==4)
	{
		$�軭�r�g22a = $�軭�r�g22/2;

		Fade($astnut22,$�軭�r�g22a,0,Axl3,false);
		Fade($setnut22,$�軭�r�g22a,1000,Dxl1,false);

		Fade($smi22,$�軭�r�g22,1000,Axl3,false);
		Rotate($nus22, $�軭�r�g22, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex22==1)
		{
			Rotate($astnut22, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus22, Disused);
		WaitAction($nus22, null);
	}
}

function Face23()
{
	$setnut23 = $nus23 + "/" + $���� + "/" + $nut23;
	$astnut23 = $nus23 + "/" + $���� + "/" + $picnut23;
	$allnut23 = $nus23 + "/" + $���� + "/" + "*";

	if($KwP23==1)
	{
		$�軭�r�g23 = $�軭�r�g23/2;
		$nx23 = -10;//nx
		$ny23 = 10;//ny
		$mx23 = 10;//mx
		$my23 = -10;//my

		Fade($nus23, 0, 0, null, false);
		Rotate($nus23, 0, @0, 90, @0, null, true);
		Fade($smi23,0,1000,null,false);

		Fade($nus23,$�軭�r�g23,1000,Dxl1,false);
		Fade($allnut23,0,0,null,false);
		Fade($smi23,$�軭�r�g23,0,Dxl3,false);
		Rotate($nus23, $�軭�r�g23, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut23, 0, @$nx23, @$ny23, null, true);//�����
		Move($setnut23,$�軭�r�g23, @$mx23, @$my23, Dxl1, false);
		Fade($setnut23,$�軭�r�g23,1000,null,true);//����㣳
	}

	if($KwP23==2)
	{
		Fade($astnut23,$�軭�r�g23,0,Axl3,false);
		Request($astnut23, Disused);
		Fade($setnut23,$�軭�r�g23,1000,Dxl1,true);
	}

	if($KwP23==3)
	{
		$�軭�r�g23 = $�軭�r�g23/3;
		$nx23 = -10;//nx
		$ny23 = 10;//ny
		$mx23 = 10;//mx
		$my23 = -10;//my

		Fade($smi23,$�軭�r�g23,1000,Axl3,false);
		Rotate($nus23, $�軭�r�g23, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex23==1)
		{
			Rotate($astnut23, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus23, null);
		Rotate($nus23, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut23,0,0,null,false);
			Request($astnut23, Disused);
			Fade($nus23,0,0,null,false);

		Fade($smi23,0,1000,null,false);

		Fade($nus23,$�軭�r�g23,1000,Dxl1,false);
		Fade($allnut23,0,0,null,false);
		Fade($smi23,$�軭�r�g23,0,Dxl3,false);
		Rotate($nus23, $�軭�r�g23, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus23, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut23, 0, @$nx23, @$ny23, null, true);//�����
		Move($setnut23,$�軭�r�g23, @$mx23, @$my23, Dxl1, false);
		Fade($setnut23,$�軭�r�g23,1000,null,true);//����㣳
	}

	if($KwP23==4)
	{
		$�軭�r�g23a = $�軭�r�g23/2;

		Fade($astnut23,$�軭�r�g23a,0,Axl3,false);
		Fade($setnut23,$�軭�r�g23a,1000,Dxl1,false);

		Fade($smi23,$�軭�r�g23,1000,Axl3,false);
		Rotate($nus23, $�軭�r�g23, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex23==1)
		{
			Rotate($astnut23, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus23, Disused);
		WaitAction($nus23, null);
	}
}

function Face24()
{
	$setnut24 = $nus24 + "/" + $���� + "/" + $nut24;
	$astnut24 = $nus24 + "/" + $���� + "/" + $picnut24;
	$allnut24 = $nus24 + "/" + $���� + "/" + "*";

	if($KwP24==1)
	{
		$�軭�r�g24 = $�軭�r�g24/2;
		$nx24 = -10;//nx
		$ny24 = 10;//ny
		$mx24 = 10;//mx
		$my24 = -10;//my

		Fade($nus24, 0, 0, null, false);
		Rotate($nus24, 0, @0, 90, @0, null, true);
		Fade($smi24,0,1000,null,false);

		Fade($nus24,$�軭�r�g24,1000,Dxl1,false);
		Fade($allnut24,0,0,null,false);
		Fade($smi24,$�軭�r�g24,0,Dxl3,false);
		Rotate($nus24, $�軭�r�g24, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut24, 0, @$nx24, @$ny24, null, true);//�����
		Move($setnut24,$�軭�r�g24, @$mx24, @$my24, Dxl1, false);
		Fade($setnut24,$�軭�r�g24,1000,null,true);//����㣳
	}

	if($KwP24==2)
	{
		Fade($astnut24,$�軭�r�g24,0,Axl3,false);
		Request($astnut24, Disused);
		Fade($setnut24,$�軭�r�g24,1000,Dxl1,true);
	}

	if($KwP24==3)
	{
		$�軭�r�g24 = $�軭�r�g24/3;
		$nx24 = -10;//nx
		$ny24 = 10;//ny
		$mx24 = 10;//mx
		$my24 = -10;//my

		Fade($smi24,$�軭�r�g24,1000,Axl3,false);
		Rotate($nus24, $�軭�r�g24, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex24==1)
		{
			Rotate($astnut24, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus24, null);
		Rotate($nus24, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut24,0,0,null,false);
			Request($astnut24, Disused);
			Fade($nus24,0,0,null,false);

		Fade($smi24,0,1000,null,false);

		Fade($nus24,$�軭�r�g24,1000,Dxl1,false);
		Fade($allnut24,0,0,null,false);
		Fade($smi24,$�軭�r�g24,0,Dxl3,false);
		Rotate($nus24, $�軭�r�g24, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus24, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut24, 0, @$nx24, @$ny24, null, true);//�����
		Move($setnut24,$�軭�r�g24, @$mx24, @$my24, Dxl1, false);
		Fade($setnut24,$�軭�r�g24,1000,null,true);//����㣳
	}

	if($KwP24==4)
	{
		$�軭�r�g24a = $�軭�r�g24/2;

		Fade($astnut24,$�軭�r�g24a,0,Axl3,false);
		Fade($setnut24,$�軭�r�g24a,1000,Dxl1,false);

		Fade($smi24,$�軭�r�g24,1000,Axl3,false);
		Rotate($nus24, $�軭�r�g24, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex24==1)
		{
			Rotate($astnut24, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus24, Disused);
		WaitAction($nus24, null);
	}
}

function Face25()
{
	$setnut25 = $nus25 + "/" + $���� + "/" + $nut25;
	$astnut25 = $nus25 + "/" + $���� + "/" + $picnut25;
	$allnut25 = $nus25 + "/" + $���� + "/" + "*";

	if($KwP25==1)
	{
		$�軭�r�g25 = $�軭�r�g25/2;
		$nx25 = -10;//nx
		$ny25 = 10;//ny
		$mx25 = 10;//mx
		$my25 = -10;//my

		Fade($nus25, 0, 0, null, false);
		Rotate($nus25, 0, @0, 90, @0, null, true);
		Fade($smi25,0,1000,null,false);

		Fade($nus25,$�軭�r�g25,1000,Dxl1,false);
		Fade($allnut25,0,0,null,false);
		Fade($smi25,$�軭�r�g25,0,Dxl3,false);
		Rotate($nus25, $�軭�r�g25, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut25, 0, @$nx25, @$ny25, null, true);//�����
		Move($setnut25,$�軭�r�g25, @$mx25, @$my25, Dxl1, false);
		Fade($setnut25,$�軭�r�g25,1000,null,true);//����㣳
	}

	if($KwP25==2)
	{
		Fade($astnut25,$�軭�r�g25,0,Axl3,false);
		Request($astnut25, Disused);
		Fade($setnut25,$�軭�r�g25,1000,Dxl1,true);
	}

	if($KwP25==3)
	{
		$�軭�r�g25 = $�軭�r�g25/3;
		$nx25 = -10;//nx
		$ny25 = 10;//ny
		$mx25 = 10;//mx
		$my25 = -10;//my

		Fade($smi25,$�軭�r�g25,1000,Axl3,false);
		Rotate($nus25, $�軭�r�g25, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex25==1)
		{
			Rotate($astnut25, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus25, null);
		Rotate($nus25, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut25,0,0,null,false);
			Request($astnut25, Disused);
			Fade($nus25,0,0,null,false);

		Fade($smi25,0,1000,null,false);

		Fade($nus25,$�軭�r�g25,1000,Dxl1,false);
		Fade($allnut25,0,0,null,false);
		Fade($smi25,$�軭�r�g25,0,Dxl3,false);
		Rotate($nus25, $�軭�r�g25, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus25, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut25, 0, @$nx25, @$ny25, null, true);//�����
		Move($setnut25,$�軭�r�g25, @$mx25, @$my25, Dxl1, false);
		Fade($setnut25,$�軭�r�g25,1000,null,true);//����㣳
	}

	if($KwP25==4)
	{
		$�軭�r�g25a = $�軭�r�g25/2;

		Fade($astnut25,$�軭�r�g25a,0,Axl3,false);
		Fade($setnut25,$�軭�r�g25a,1000,Dxl1,false);

		Fade($smi25,$�軭�r�g25,1000,Axl3,false);
		Rotate($nus25, $�軭�r�g25, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex25==1)
		{
			Rotate($astnut25, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus25, Disused);
		WaitAction($nus25, null);
	}
}

function Face26()
{
	$setnut26 = $nus26 + "/" + $���� + "/" + $nut26;
	$astnut26 = $nus26 + "/" + $���� + "/" + $picnut26;
	$allnut26 = $nus26 + "/" + $���� + "/" + "*";

	if($KwP26==1)
	{
		$�軭�r�g26 = $�軭�r�g26/2;
		$nx26 = -10;//nx
		$ny26 = 10;//ny
		$mx26 = 10;//mx
		$my26 = -10;//my

		Fade($nus26, 0, 0, null, false);
		Rotate($nus26, 0, @0, 90, @0, null, true);
		Fade($smi26,0,1000,null,false);

		Fade($nus26,$�軭�r�g26,1000,Dxl1,false);
		Fade($allnut26,0,0,null,false);
		Fade($smi26,$�軭�r�g26,0,Dxl3,false);
		Rotate($nus26, $�軭�r�g26, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut26, 0, @$nx26, @$ny26, null, true);//�����
		Move($setnut26,$�軭�r�g26, @$mx26, @$my26, Dxl1, false);
		Fade($setnut26,$�軭�r�g26,1000,null,true);//����㣳
	}

	if($KwP26==2)
	{
		Fade($astnut26,$�軭�r�g26,0,Axl3,false);
		Request($astnut26, Disused);
		Fade($setnut26,$�軭�r�g26,1000,Dxl1,true);
	}

	if($KwP26==3)
	{
		$�軭�r�g26 = $�軭�r�g26/3;
		$nx26 = -10;//nx
		$ny26 = 10;//ny
		$mx26 = 10;//mx
		$my26 = -10;//my

		Fade($smi26,$�軭�r�g26,1000,Axl3,false);
		Rotate($nus26, $�軭�r�g26, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex26==1)
		{
			Rotate($astnut26, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus26, null);
		Rotate($nus26, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut26,0,0,null,false);
			Request($astnut26, Disused);
			Fade($nus26,0,0,null,false);

		Fade($smi26,0,1000,null,false);

		Fade($nus26,$�軭�r�g26,1000,Dxl1,false);
		Fade($allnut26,0,0,null,false);
		Fade($smi26,$�軭�r�g26,0,Dxl3,false);
		Rotate($nus26, $�軭�r�g26, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus26, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut26, 0, @$nx26, @$ny26, null, true);//�����
		Move($setnut26,$�軭�r�g26, @$mx26, @$my26, Dxl1, false);
		Fade($setnut26,$�軭�r�g26,1000,null,true);//����㣳
	}

	if($KwP26==4)
	{
		$�軭�r�g26a = $�軭�r�g26/2;

		Fade($astnut26,$�軭�r�g26a,0,Axl3,false);
		Fade($setnut26,$�軭�r�g26a,1000,Dxl1,false);

		Fade($smi26,$�軭�r�g26,1000,Axl3,false);
		Rotate($nus26, $�軭�r�g26, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex26==1)
		{
			Rotate($astnut26, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus26, Disused);
		WaitAction($nus26, null);
	}
}

function Face27()
{
	$setnut27 = $nus27 + "/" + $���� + "/" + $nut27;
	$astnut27 = $nus27 + "/" + $���� + "/" + $picnut27;
	$allnut27 = $nus27 + "/" + $���� + "/" + "*";

	if($KwP27==1)
	{
		$�軭�r�g27 = $�軭�r�g27/2;
		$nx27 = -10;//nx
		$ny27 = 10;//ny
		$mx27 = 10;//mx
		$my27 = -10;//my

		Fade($nus27, 0, 0, null, false);
		Rotate($nus27, 0, @0, 90, @0, null, true);
		Fade($smi27,0,1000,null,false);

		Fade($nus27,$�軭�r�g27,1000,Dxl1,false);
		Fade($allnut27,0,0,null,false);
		Fade($smi27,$�軭�r�g27,0,Dxl3,false);
		Rotate($nus27, $�軭�r�g27, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut27, 0, @$nx27, @$ny27, null, true);//�����
		Move($setnut27,$�軭�r�g27, @$mx27, @$my27, Dxl1, false);
		Fade($setnut27,$�軭�r�g27,1000,null,true);//����㣳
	}

	if($KwP27==2)
	{
		Fade($astnut27,$�軭�r�g27,0,Axl3,false);
		Request($astnut27, Disused);
		Fade($setnut27,$�軭�r�g27,1000,Dxl1,true);
	}

	if($KwP27==3)
	{
		$�軭�r�g27 = $�軭�r�g27/3;
		$nx27 = -10;//nx
		$ny27 = 10;//ny
		$mx27 = 10;//mx
		$my27 = -10;//my

		Fade($smi27,$�軭�r�g27,1000,Axl3,false);
		Rotate($nus27, $�軭�r�g27, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex27==1)
		{
			Rotate($astnut27, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus27, null);
		Rotate($nus27, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut27,0,0,null,false);
			Request($astnut27, Disused);
			Fade($nus27,0,0,null,false);

		Fade($smi27,0,1000,null,false);

		Fade($nus27,$�軭�r�g27,1000,Dxl1,false);
		Fade($allnut27,0,0,null,false);
		Fade($smi27,$�軭�r�g27,0,Dxl3,false);
		Rotate($nus27, $�軭�r�g27, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus27, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut27, 0, @$nx27, @$ny27, null, true);//�����
		Move($setnut27,$�軭�r�g27, @$mx27, @$my27, Dxl1, false);
		Fade($setnut27,$�軭�r�g27,1000,null,true);//����㣳
	}

	if($KwP27==4)
	{
		$�軭�r�g27a = $�軭�r�g27/2;

		Fade($astnut27,$�軭�r�g27a,0,Axl3,false);
		Fade($setnut27,$�軭�r�g27a,1000,Dxl1,false);

		Fade($smi27,$�軭�r�g27,1000,Axl3,false);
		Rotate($nus27, $�軭�r�g27, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex27==1)
		{
			Rotate($astnut27, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus27, Disused);
		WaitAction($nus27, null);
	}
}

function Face28()
{
	$setnut28 = $nus28 + "/" + $���� + "/" + $nut28;
	$astnut28 = $nus28 + "/" + $���� + "/" + $picnut28;
	$allnut28 = $nus28 + "/" + $���� + "/" + "*";

	if($KwP28==1)
	{
		$�軭�r�g28 = $�軭�r�g28/2;
		$nx28 = -10;//nx
		$ny28 = 10;//ny
		$mx28 = 10;//mx
		$my28 = -10;//my

		Fade($nus28, 0, 0, null, false);
		Rotate($nus28, 0, @0, 90, @0, null, true);
		Fade($smi28,0,1000,null,false);

		Fade($nus28,$�軭�r�g28,1000,Dxl1,false);
		Fade($allnut28,0,0,null,false);
		Fade($smi28,$�軭�r�g28,0,Dxl3,false);
		Rotate($nus28, $�軭�r�g28, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut28, 0, @$nx28, @$ny28, null, true);//�����
		Move($setnut28,$�軭�r�g28, @$mx28, @$my28, Dxl1, false);
		Fade($setnut28,$�軭�r�g28,1000,null,true);//����㣳
	}

	if($KwP28==2)
	{
		Fade($astnut28,$�軭�r�g28,0,Axl3,false);
		Request($astnut28, Disused);
		Fade($setnut28,$�軭�r�g28,1000,Dxl1,true);
	}

	if($KwP28==3)
	{
		$�軭�r�g28 = $�軭�r�g28/3;
		$nx28 = -10;//nx
		$ny28 = 10;//ny
		$mx28 = 10;//mx
		$my28 = -10;//my

		Fade($smi28,$�軭�r�g28,1000,Axl3,false);
		Rotate($nus28, $�軭�r�g28, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex28==1)
		{
			Rotate($astnut28, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus28, null);
		Rotate($nus28, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut28,0,0,null,false);
			Request($astnut28, Disused);
			Fade($nus28,0,0,null,false);

		Fade($smi28,0,1000,null,false);

		Fade($nus28,$�軭�r�g28,1000,Dxl1,false);
		Fade($allnut28,0,0,null,false);
		Fade($smi28,$�軭�r�g28,0,Dxl3,false);
		Rotate($nus28, $�軭�r�g28, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus28, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut28, 0, @$nx28, @$ny28, null, true);//�����
		Move($setnut28,$�軭�r�g28, @$mx28, @$my28, Dxl1, false);
		Fade($setnut28,$�軭�r�g28,1000,null,true);//����㣳
	}

	if($KwP28==4)
	{
		$�軭�r�g28a = $�軭�r�g28/2;

		Fade($astnut28,$�軭�r�g28a,0,Axl3,false);
		Fade($setnut28,$�軭�r�g28a,1000,Dxl1,false);

		Fade($smi28,$�軭�r�g28,1000,Axl3,false);
		Rotate($nus28, $�軭�r�g28, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex28==1)
		{
			Rotate($astnut28, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus28, Disused);
		WaitAction($nus28, null);
	}
}

function Face29()
{
	$setnut29 = $nus29 + "/" + $���� + "/" + $nut29;
	$astnut29 = $nus29 + "/" + $���� + "/" + $picnut29;
	$allnut29 = $nus29 + "/" + $���� + "/" + "*";

	if($KwP29==1)
	{
		$�軭�r�g29 = $�軭�r�g29/2;
		$nx29 = -10;//nx
		$ny29 = 10;//ny
		$mx29 = 10;//mx
		$my29 = -10;//my

		Fade($nus29, 0, 0, null, false);
		Rotate($nus29, 0, @0, 90, @0, null, true);
		Fade($smi29,0,1000,null,false);

		Fade($nus29,$�軭�r�g29,1000,Dxl1,false);
		Fade($allnut29,0,0,null,false);
		Fade($smi29,$�軭�r�g29,0,Dxl3,false);
		Rotate($nus29, $�軭�r�g29, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut29, 0, @$nx29, @$ny29, null, true);//�����
		Move($setnut29,$�軭�r�g29, @$mx29, @$my29, Dxl1, false);
		Fade($setnut29,$�軭�r�g29,1000,null,true);//����㣳
	}

	if($KwP29==2)
	{
		Fade($astnut29,$�軭�r�g29,0,Axl3,false);
		Request($astnut29, Disused);
		Fade($setnut29,$�軭�r�g29,1000,Dxl1,true);
	}

	if($KwP29==3)
	{
		$�軭�r�g29 = $�軭�r�g29/3;
		$nx29 = -10;//nx
		$ny29 = 10;//ny
		$mx29 = 10;//mx
		$my29 = -10;//my

		Fade($smi29,$�軭�r�g29,1000,Axl3,false);
		Rotate($nus29, $�軭�r�g29, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex29==1)
		{
			Rotate($astnut29, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus29, null);
		Rotate($nus29, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut29,0,0,null,false);
			Request($astnut29, Disused);
			Fade($nus29,0,0,null,false);

		Fade($smi29,0,1000,null,false);

		Fade($nus29,$�軭�r�g29,1000,Dxl1,false);
		Fade($allnut29,0,0,null,false);
		Fade($smi29,$�軭�r�g29,0,Dxl3,false);
		Rotate($nus29, $�軭�r�g29, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus29, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut29, 0, @$nx29, @$ny29, null, true);//�����
		Move($setnut29,$�軭�r�g29, @$mx29, @$my29, Dxl1, false);
		Fade($setnut29,$�軭�r�g29,1000,null,true);//����㣳
	}

	if($KwP29==4)
	{
		$�軭�r�g29a = $�軭�r�g29/2;

		Fade($astnut29,$�軭�r�g29a,0,Axl3,false);
		Fade($setnut29,$�軭�r�g29a,1000,Dxl1,false);

		Fade($smi29,$�軭�r�g29,1000,Axl3,false);
		Rotate($nus29, $�軭�r�g29, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex29==1)
		{
			Rotate($astnut29, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus29, Disused);
		WaitAction($nus29, null);
	}
}

function Face30()
{
	$setnut30 = $nus30 + "/" + $���� + "/" + $nut30;
	$astnut30 = $nus30 + "/" + $���� + "/" + $picnut30;
	$allnut30 = $nus30 + "/" + $���� + "/" + "*";

	if($KwP30==1)
	{
		$�軭�r�g30 = $�軭�r�g30/2;
		$nx30 = -10;//nx
		$ny30 = 10;//ny
		$mx30 = 10;//mx
		$my30 = -10;//my

		Fade($nus30, 0, 0, null, false);
		Rotate($nus30, 0, @0, 90, @0, null, true);
		Fade($smi30,0,1000,null,false);

		Fade($nus30,$�軭�r�g30,1000,Dxl1,false);
		Fade($allnut30,0,0,null,false);
		Fade($smi30,$�軭�r�g30,0,Dxl3,false);
		Rotate($nus30, $�軭�r�g30, @0, 0, @0, Dxl1, true);//����㣲

		Move($setnut30, 0, @$nx30, @$ny30, null, true);//�����
		Move($setnut30,$�軭�r�g30, @$mx30, @$my30, Dxl1, false);
		Fade($setnut30,$�軭�r�g30,1000,null,true);//����㣳
	}

	if($KwP30==2)
	{
		Fade($astnut30,$�軭�r�g30,0,Axl3,false);
		Request($astnut30, Disused);
		Fade($setnut30,$�軭�r�g30,1000,Dxl1,true);
	}

	if($KwP30==3)
	{
		$�軭�r�g30 = $�軭�r�g30/3;
		$nx30 = -10;//nx
		$ny30 = 10;//ny
		$mx30 = 10;//mx
		$my30 = -10;//my

		Fade($smi30,$�軭�r�g30,1000,Axl3,false);
		Rotate($nus30, $�軭�r�g30, @0, -90, @0, DxlAuto, false);//����㣲

		if($KwPex30==1)
		{
			Rotate($astnut30, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		WaitAction($nus30, null);
		Rotate($nus30, 0, @0, -270, @0, null, true);//����㣲

			Fade($astnut30,0,0,null,false);
			Request($astnut30, Disused);
			Fade($nus30,0,0,null,false);

		Fade($smi30,0,1000,null,false);

		Fade($nus30,$�軭�r�g30,1000,Dxl1,false);
		Fade($allnut30,0,0,null,false);
		Fade($smi30,$�軭�r�g30,0,Dxl3,false);
		Rotate($nus30, $�軭�r�g30, @0, @-90, @0, Dxl1, true);//����㣲
		Rotate($nus30, 0, @0, 0, @0, null, true);//����㣲

		Move($setnut30, 0, @$nx30, @$ny30, null, true);//�����
		Move($setnut30,$�軭�r�g30, @$mx30, @$my30, Dxl1, false);
		Fade($setnut30,$�軭�r�g30,1000,null,true);//����㣳
	}

	if($KwP30==4)
	{
		$�軭�r�g30a = $�軭�r�g30/2;

		Fade($astnut30,$�軭�r�g30a,0,Axl3,false);
		Fade($setnut30,$�軭�r�g30a,1000,Dxl1,false);

		Fade($smi30,$�軭�r�g30,1000,Axl3,false);
		Rotate($nus30, $�軭�r�g30, 0, -90, 0, DxlAuto, false);//����㣲

		if($KwPex30==1)
		{
			Rotate($astnut30, 0, @0, @0, @0, DxlAuto, false);//����㣲
		}
		Request($nus30, Disused);
		WaitAction($nus30, null);
	}
}



























//=============================================================================//
.Tv
//=============================================================================//
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�ƥ�ӻ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function SetTv($�軭���ȶ�, $��λ��, $��λ��, $ӳ����)
{
	$�ʥå��� = "�ƥ��";
	$�H�ʥå���Tv = $�ʥå���;
	$�軭���ȶ�Tv = $�軭���ȶ�;

	$TV�ߖ˾�͸���� = 600;

	$NoiseLoop = 1;
	$NoiseSpan1 = 2200;//�Υ�����ƕr�Υե��`������
	$NoiseSpan2 = 600;//�Υ����Ф��椨�r�Υե��`������
	$NoiseSpan3 = 2100;//�Υ����L���Ф��椨�r�Υե��`������
	$NoiseSpan4 = 100;//�Υ������ƕr�Υե��`������
	$NoiseSpan5 = 100;//�����ե��`������
	$NoiseSpan6 = 100;//�g��Υ����ե��`������
	$NoiseVolume = 300;

	$TvSpan1 = 0;
	$TvSpan2 = 0;
	$TvSpan3 = 0;
	$TvSpan4 = 0;
	$TvSpan5 = 500;
	$TvVolume = 1000;

	$ӳ�ץ����^="ӳ";
	$���ץ����^="��";
	$�j�ץ����^="�j";

	$ProTv2="���o��";
	$ProTv="���o��";
	$ProSv2="���o��";
	$ProSv="���o��";
	$ProNv2="���o��";
	$ProNv="���o��";
	$FaceTv2="���o��";
	$FaceTv="���o��";
	$FaceBv2="���o��";
	$FaceBv="���o��";
	$FaceCv2="���o��";
	$FaceCv="���o��";

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

	$BaseTv2="���o��";
	$BaseTv="���o��";
	$TvB = 0;

	$DelPro="@"+$ӳ�ץ����^+"*";
	$DelPro2="@"+$���ץ����^+"*";
	$DelPro3="@"+$�j�ץ����^+"*";

	PreSetTv();
	Move($�ʥå���,0, @$��λ��, @$��λ��, null,true);

}


...�ޥ���
function PreSetTv()
{
	if($vision01_who==$�ʥå���){$vision01_use="";}//���ڻ�����
	if($vision02_who==$�ʥå���){$vision02_use="";}//���ڻ�����
	if($vision03_who==$�ʥå���){$vision03_use="";}//���ڻ�����
	if($vision04_who==$�ʥå���){$vision04_use="";}//���ڻ�����
	if($vision05_who==$�ʥå���){$vision05_use="";}//���ڻ�����
	if($vision06_who==$�ʥå���){$vision06_use="";}//���ڻ�����
	if($vision07_who==$�ʥå���){$vision07_use="";}//���ڻ�����
	if($vision08_who==$�ʥå���){$vision08_use="";}//���ڻ�����
	if($vision09_who==$�ʥå���){$vision09_use="";}//���ڻ�����
	if($vision10_who==$�ʥå���){$vision10_use="";}//���ڻ�����

	if($dusty01_who==$�ʥå���){$dusty01_use="";}//���ڻ�����
	if($dusty02_who==$�ʥå���){$dusty02_use="";}//���ڻ�����
	if($dusty03_who==$�ʥå���){$dusty03_use="";}//���ڻ�����
	if($dusty04_who==$�ʥå���){$dusty04_use="";}//���ڻ�����
	if($dusty05_who==$�ʥå���){$dusty05_use="";}//���ڻ�����
	if($dusty06_who==$�ʥå���){$dusty06_use="";}//���ڻ�����
	if($dusty07_who==$�ʥå���){$dusty07_use="";}//���ڻ�����
	if($dusty08_who==$�ʥå���){$dusty08_use="";}//���ڻ�����
	if($dusty09_who==$�ʥå���){$dusty09_use="";}//���ڻ�����
	if($dusty10_who==$�ʥå���){$dusty10_use="";}//���ڻ�����

	Request($DelPro, Stop);
	Delete($DelPro);
	Request($DelPro2, Stop);
	Delete($DelPro2);
	Request($DelPro3, Stop);
	Delete($DelPro3);

	$��ȥ�ʥå��� = @ + $�ʥå���;
	Delete($��ȥ�ʥå���);

	$ӳ�軭���ȶȲ�� = 1;
	$�軭���ȶȻ��� = $�軭���ȶ� + 100;
	$���軭���ȶ� = $�軭���ȶȻ��� - 1;

	$�ܱ��� = "��";//TV����
	$ɫ���� = "��";//�µ�
	$������ = "��";//�ޥ���
	$�P���� = "�P";//�ߖ˾�
	$ϵ���� = "ϵ";//�Υ���
	$ֹ���� = "ֹ";//�Υ������ȥå�

	$���� = "@" + $�ʥå��� + "/" + $�ܱ���;
	$ɫ�� = "@" + $�ʥå��� + "/" + $ɫ����;
	$���� = "@" + $�ʥå��� + "/" + $������;
	$�P�� = "@" + $�ʥå��� + "/" + $�P����;
	$ϵ�� = "@" + $�ʥå��� + "/" + $ϵ����;
	$ֹ�� = "@" + $�ʥå��� + "/" + $ֹ����;

	CreateTexture($�ʥå���, $�軭���ȶȻ���, 0, 0, $ӳ����);
	Request($�ʥå���, Smoothing);
	SetAlias($�ʥå���, $�ʥå���);

	CreateColor($ɫ��, $�軭���ȶ�, 0, 0, 800, 600, "BLACK");

	CreateWindow($����,$���軭���ȶ�,250,100,300,200,true);
	SetAlias($����, $����);

	CreateTexture($�P��, $���軭���ȶ�, 250, 100, "cg/ef/ef_fi_�ƥ���ߖ˾�.png");
	Request($�P��, AddRender);
	SetAlias($�P��, $�P��);

	CreateProcess($ϵ��, 1000, 0, 0, "TvNoise");
	SetAlias($ϵ��, $ϵ��);
	CreateProcess($ֹ��, 1000, 0, 0, "NoiseStop");
	SetAlias($ֹ��, $ֹ��);



		CreateTexture("@�ƥ��/��/noise10000",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0000.png");
		CreateTexture("@�ƥ��/��/noise10001",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0001.png");
		CreateTexture("@�ƥ��/��/noise10002",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0002.png");
		CreateTexture("@�ƥ��/��/noise10003",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0003.png");
		CreateTexture("@�ƥ��/��/noise10004",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0004.png");
		CreateTexture("@�ƥ��/��/noise10005",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0005.png");
		CreateTexture("@�ƥ��/��/noise10006",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0006.png");
		CreateTexture("@�ƥ��/��/noise10007",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0007.png");
		CreateTexture("@�ƥ��/��/noise10008",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0008.png");
		CreateTexture("@�ƥ��/��/noise10009",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0009.png");
		CreateTexture("@�ƥ��/��/noise10010",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0010.png");
		CreateTexture("@�ƥ��/��/noise10011",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0011.png");
		CreateTexture("@�ƥ��/��/noise10012",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0012.png");
		CreateTexture("@�ƥ��/��/noise10013",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0013.png");
		CreateTexture("@�ƥ��/��/noise10014",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0014.png");
		CreateTexture("@�ƥ��/��/noise10015",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0015.png");
		CreateTexture("@�ƥ��/��/noise10016",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0016.png");
		CreateTexture("@�ƥ��/��/noise10017",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0017.png");
		CreateTexture("@�ƥ��/��/noise10018",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0018.png");
		CreateTexture("@�ƥ��/��/noise10019",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0019.png");
		CreateTexture("@�ƥ��/��/noise10020",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0020.png");
		CreateTexture("@�ƥ��/��/noise10021",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0021.png");
		CreateTexture("@�ƥ��/��/noise10022",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0022.png");
		CreateTexture("@�ƥ��/��/noise10023",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0023.png");
		CreateTexture("@�ƥ��/��/noise10024",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0024.png");
		CreateTexture("@�ƥ��/��/noise10025",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0025.png");
		CreateTexture("@�ƥ��/��/noise10026",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0026.png");
		CreateTexture("@�ƥ��/��/noise10027",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0027.png");
		CreateTexture("@�ƥ��/��/noise10028",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0028.png");
		CreateTexture("@�ƥ��/��/noise10029",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0029.png");
		CreateTexture("@�ƥ��/��/noise10030",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0030.png");
		CreateTexture("@�ƥ��/��/noise10031",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0031.png");
		CreateTexture("@�ƥ��/��/noise10032",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0032.png");
		CreateTexture("@�ƥ��/��/noise10033",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0033.png");
		CreateTexture("@�ƥ��/��/noise10034",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0034.png");
		CreateTexture("@�ƥ��/��/noise10035",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0035.png");
		CreateTexture("@�ƥ��/��/noise10036",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0036.png");
		CreateTexture("@�ƥ��/��/noise10037",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0037.png");
		CreateTexture("@�ƥ��/��/noise10038",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0038.png");
		CreateTexture("@�ƥ��/��/noise10039",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0039.png");
		CreateTexture("@�ƥ��/��/noise10040",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0040.png");
		CreateTexture("@�ƥ��/��/noise10041",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0041.png");
		CreateTexture("@�ƥ��/��/noise10042",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0042.png");
		CreateTexture("@�ƥ��/��/noise10043",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0043.png");
		CreateTexture("@�ƥ��/��/noise10044",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0044.png");
		CreateTexture("@�ƥ��/��/noise10045",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0045.png");
		CreateTexture("@�ƥ��/��/noise10046",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0046.png");
		CreateTexture("@�ƥ��/��/noise10047",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0047.png");
		CreateTexture("@�ƥ��/��/noise10048",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0048.png");
		CreateTexture("@�ƥ��/��/noise10049",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0049.png");
		CreateTexture("@�ƥ��/��/noise10050",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0050.png");
		CreateTexture("@�ƥ��/��/noise10051",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0051.png");
		CreateTexture("@�ƥ��/��/noise10052",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0052.png");
		CreateTexture("@�ƥ��/��/noise10053",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0053.png");
		CreateTexture("@�ƥ��/��/noise10054",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0054.png");
		CreateTexture("@�ƥ��/��/noise10055",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0055.png");
		CreateTexture("@�ƥ��/��/noise10056",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0056.png");
		CreateTexture("@�ƥ��/��/noise10057",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0057.png");
		CreateTexture("@�ƥ��/��/noise10058",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0058.png");
		CreateTexture("@�ƥ��/��/noise10059",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0059.png");
		CreateTexture("@�ƥ��/��/noise10060",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0060.png");
		CreateTexture("@�ƥ��/��/noise10061",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0061.png");
		CreateTexture("@�ƥ��/��/noise10062",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0062.png");
		CreateTexture("@�ƥ��/��/noise10063",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0063.png");
		CreateTexture("@�ƥ��/��/noise10064",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0064.png");
		CreateTexture("@�ƥ��/��/noise10065",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0065.png");
		CreateTexture("@�ƥ��/��/noise10066",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0066.png");
		CreateTexture("@�ƥ��/��/noise10067",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0067.png");
		CreateTexture("@�ƥ��/��/noise10068",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0068.png");
		CreateTexture("@�ƥ��/��/noise10069",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0069.png");
		CreateTexture("@�ƥ��/��/noise10070",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0070.png");
		CreateTexture("@�ƥ��/��/noise10071",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0071.png");
		CreateTexture("@�ƥ��/��/noise10072",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0072.png");
		CreateTexture("@�ƥ��/��/noise10073",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0073.png");
		CreateTexture("@�ƥ��/��/noise10074",1098,center,20,"cg/sys/tv/�Υ���slow/slow_0074.png");

		SetAlias("@�ƥ��/��/noise10000","noise10000");
		SetAlias("@�ƥ��/��/noise10001","noise10001");
		SetAlias("@�ƥ��/��/noise10002","noise10002");
		SetAlias("@�ƥ��/��/noise10003","noise10003");
		SetAlias("@�ƥ��/��/noise10004","noise10004");
		SetAlias("@�ƥ��/��/noise10005","noise10005");
		SetAlias("@�ƥ��/��/noise10006","noise10006");
		SetAlias("@�ƥ��/��/noise10007","noise10007");
		SetAlias("@�ƥ��/��/noise10008","noise10008");
		SetAlias("@�ƥ��/��/noise10009","noise10009");
		SetAlias("@�ƥ��/��/noise10010","noise10010");
		SetAlias("@�ƥ��/��/noise10011","noise10011");
		SetAlias("@�ƥ��/��/noise10012","noise10012");
		SetAlias("@�ƥ��/��/noise10013","noise10013");
		SetAlias("@�ƥ��/��/noise10014","noise10014");
		SetAlias("@�ƥ��/��/noise10015","noise10015");
		SetAlias("@�ƥ��/��/noise10016","noise10016");
		SetAlias("@�ƥ��/��/noise10017","noise10017");
		SetAlias("@�ƥ��/��/noise10018","noise10018");
		SetAlias("@�ƥ��/��/noise10019","noise10019");
		SetAlias("@�ƥ��/��/noise10020","noise10020");
		SetAlias("@�ƥ��/��/noise10021","noise10021");
		SetAlias("@�ƥ��/��/noise10022","noise10022");
		SetAlias("@�ƥ��/��/noise10023","noise10023");
		SetAlias("@�ƥ��/��/noise10024","noise10024");
		SetAlias("@�ƥ��/��/noise10025","noise10025");
		SetAlias("@�ƥ��/��/noise10026","noise10026");
		SetAlias("@�ƥ��/��/noise10027","noise10027");
		SetAlias("@�ƥ��/��/noise10028","noise10028");
		SetAlias("@�ƥ��/��/noise10029","noise10029");
		SetAlias("@�ƥ��/��/noise10030","noise10030");
		SetAlias("@�ƥ��/��/noise10031","noise10031");
		SetAlias("@�ƥ��/��/noise10032","noise10032");
		SetAlias("@�ƥ��/��/noise10033","noise10033");
		SetAlias("@�ƥ��/��/noise10034","noise10034");
		SetAlias("@�ƥ��/��/noise10035","noise10035");
		SetAlias("@�ƥ��/��/noise10036","noise10036");
		SetAlias("@�ƥ��/��/noise10037","noise10037");
		SetAlias("@�ƥ��/��/noise10038","noise10038");
		SetAlias("@�ƥ��/��/noise10039","noise10039");
		SetAlias("@�ƥ��/��/noise10040","noise10040");
		SetAlias("@�ƥ��/��/noise10041","noise10041");
		SetAlias("@�ƥ��/��/noise10042","noise10042");
		SetAlias("@�ƥ��/��/noise10043","noise10043");
		SetAlias("@�ƥ��/��/noise10044","noise10044");
		SetAlias("@�ƥ��/��/noise10045","noise10045");
		SetAlias("@�ƥ��/��/noise10046","noise10046");
		SetAlias("@�ƥ��/��/noise10047","noise10047");
		SetAlias("@�ƥ��/��/noise10048","noise10048");
		SetAlias("@�ƥ��/��/noise10049","noise10049");
		SetAlias("@�ƥ��/��/noise10050","noise10050");
		SetAlias("@�ƥ��/��/noise10051","noise10051");
		SetAlias("@�ƥ��/��/noise10052","noise10052");
		SetAlias("@�ƥ��/��/noise10053","noise10053");
		SetAlias("@�ƥ��/��/noise10054","noise10054");
		SetAlias("@�ƥ��/��/noise10055","noise10055");
		SetAlias("@�ƥ��/��/noise10056","noise10056");
		SetAlias("@�ƥ��/��/noise10057","noise10057");
		SetAlias("@�ƥ��/��/noise10058","noise10058");
		SetAlias("@�ƥ��/��/noise10059","noise10059");
		SetAlias("@�ƥ��/��/noise10060","noise10060");
		SetAlias("@�ƥ��/��/noise10061","noise10061");
		SetAlias("@�ƥ��/��/noise10062","noise10062");
		SetAlias("@�ƥ��/��/noise10063","noise10063");
		SetAlias("@�ƥ��/��/noise10064","noise10064");
		SetAlias("@�ƥ��/��/noise10065","noise10065");
		SetAlias("@�ƥ��/��/noise10066","noise10066");
		SetAlias("@�ƥ��/��/noise10067","noise10067");
		SetAlias("@�ƥ��/��/noise10068","noise10068");
		SetAlias("@�ƥ��/��/noise10069","noise10069");
		SetAlias("@�ƥ��/��/noise10070","noise10070");
		SetAlias("@�ƥ��/��/noise10071","noise10071");
		SetAlias("@�ƥ��/��/noise10072","noise10072");
		SetAlias("@�ƥ��/��/noise10073","noise10073");
		SetAlias("@�ƥ��/��/noise10074","noise10074");


		CreateTexture("@�ƥ��/��/noise20000",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0000.png");
		CreateTexture("@�ƥ��/��/noise20001",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0001.png");
		CreateTexture("@�ƥ��/��/noise20002",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0002.png");
		CreateTexture("@�ƥ��/��/noise20003",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0003.png");
		CreateTexture("@�ƥ��/��/noise20004",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0004.png");
		CreateTexture("@�ƥ��/��/noise20005",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0005.png");
		CreateTexture("@�ƥ��/��/noise20006",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0006.png");
		CreateTexture("@�ƥ��/��/noise20007",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0007.png");
		CreateTexture("@�ƥ��/��/noise20008",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0008.png");
		CreateTexture("@�ƥ��/��/noise20009",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0009.png");
		CreateTexture("@�ƥ��/��/noise20010",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0010.png");
		CreateTexture("@�ƥ��/��/noise20011",1098,center,20,"cg/sys/tv/�Υ���normal/normal_0011.png");

		SetAlias("@�ƥ��/��/noise20000","noise20000");
		SetAlias("@�ƥ��/��/noise20001","noise20001");
		SetAlias("@�ƥ��/��/noise20002","noise20002");
		SetAlias("@�ƥ��/��/noise20003","noise20003");
		SetAlias("@�ƥ��/��/noise20004","noise20004");
		SetAlias("@�ƥ��/��/noise20005","noise20005");
		SetAlias("@�ƥ��/��/noise20006","noise20006");
		SetAlias("@�ƥ��/��/noise20007","noise20007");
		SetAlias("@�ƥ��/��/noise20008","noise20008");
		SetAlias("@�ƥ��/��/noise20009","noise20009");
		SetAlias("@�ƥ��/��/noise20010","noise20010");
		SetAlias("@�ƥ��/��/noise20011","noise20011");

		CreateTexture("@�ƥ��/��/noise_only",1097,center,20,"cg/sys/tv/�Υ���only/only.png");
		SetAlias("@�ƥ��/��/noise_only","noise_only");

		Fade($�ʥå���,0,0,null,false);
}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...�ƥ���ߖ˾�͸����
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function CreateLineTv($͸����)
{
	$TV�ߖ˾�͸����=$͸����;
}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...�ƥ�ӥΥ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
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
	Request($ϵ��, Stop);
}






//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...����ʤ�ƥ��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function DeleteAllTv()
{
	$DelPro="@"+$ӳ�ץ����^+"*";
	Request($DelPro, Stop);
	Delete($DelPro);
	Delete($DelPro);

	$DelPro="@"+$���ץ����^+"*";
	Request($DelPro, Stop);
	Delete($DelPro);
	Delete($DelPro);

	$DelPro="@"+$�j�ץ����^+"*";
	Request($DelPro, Stop);
	Delete($DelPro);
	Delete($DelPro);

	$��ȥ�ʥå��� = @ + $�H�ʥå���Tv;
	Delete($��ȥ�ʥå���);
}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...�軭�v�S
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function StartTv()
{
	Fade($�H�ʥå���Tv,0,1000,null,false);
	Fade("@�ƥ��/*/*",0,0,null,false);
	Fade("@�ƥ��/*",0,0,null,false);
	Fade($ɫ��,0,1000,null,false);
}

function StartTv2()
{
	Fade($�H�ʥå���Tv,0,1000,null,false);
	Fade($�P��,0,$TV�ߖ˾�͸����,null,false);
	Fade("@�ƥ��/��/noise*", 0, 0, null, true);
}

function StartTv3($�軭����)
{
	Fade($�H�ʥå���Tv,$�軭����,1000,null,false);
	Fade("@�ƥ��/*/*",0,0,null,false);
	Fade("@�ƥ��/*",0,0,null,false);
	Fade($ɫ��,$�軭����,1000,null,false);
	Wait($�軭����);
}








//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�ƥ�ӱ���ɫ�O��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function SetBaseColorTv($TV��)
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

	$�ƥ�ӥ٩`������`��=$TvBaseColorName;

	$�ʥå��� = "@" + $�H�ʥå���Tv + "/" + $������ + "/" + $�ƥ�ӥ٩`������`��;

	CreateColor($�ʥå���, $�軭���ȶ�Tv, 0, 0, 800, 600, $TV��);
	SetAlias($�ʥå���, $�ƥ�ӥ٩`������`��);
	Fade($�ʥå���, 0, 0, null, true);
}

function FadeBaseColorTv(�軭�ٶ�,����)
{
	$�ƥ�ӥ٩`������`��EX = "@" + $�ƥ�ӥ٩`������`��;
	Fade($�ƥ�ӥ٩`������`��EX, �軭�ٶ�, 1000, null, ����);
}








//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�����}�v�S
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function Tv($��λ��, $��λ��, $����)
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

	$�ʥå���=$TvName;

	$���� = "cg/tv/" + $����;
	$nut = "@" + $�H�ʥå���Tv + "/" + $������ + "/" + $�ʥå���;

	$�軭���ȶ� = $�軭���ȶ�Tv + 49;

	CreateTexture($nut, $�軭���ȶ�, center, 20, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);
//	Move($nut, 0, @0, @-95, null, true);

	Move($nut, 0, $��λ��, $��λ��, null, true);
}


...tv���飦�ݩ`�����
function FadeTv($�軭�r�g,$����)
{
	if($TvName01!=""){$�ʥå���=$TvName01;$TvName01="";}
	else if($TvName02!=""){$�ʥå���=$TvName02;$TvName02="";}
	else if($TvName03!=""){$�ʥå���=$TvName03;$TvName03="";}
	else if($TvName04!=""){$�ʥå���=$TvName04;$TvName04="";}
	else if($TvName05!=""){$�ʥå���=$TvName05;$TvName05="";}
	else if($TvName06!=""){$�ʥå���=$TvName06;$TvName06="";}
	else if($TvName07!=""){$�ʥå���=$TvName07;$TvName07="";}
	else if($TvName08!=""){$�ʥå���=$TvName08;$TvName08="";}
	else if($TvName09!=""){$�ʥå���=$TvName09;$TvName09="";}
	else if($TvName10!=""){$�ʥå���=$TvName10;$TvName10="";}

	$TvP = 1;

	PreFadeTv();

	$FaceTv2=$FaceTv;
	$FaceTv=$nut;
	$TvQ = 1;

	//ָ����
	$nutTv=$setnut;
	$nutTv2=$astnut;
}

...tv�ǥ�`��
function DeleteTv($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$TvP = 0;

	PreFadeTv();

	$TvQ = 0;
}

...�軭�ޥ���
function PreFadeTv()
{
	$nut = $�ʥå���;

	$nus = "@" + $�H�ʥå���Tv + "/" + $������;
	$picnut = $FaceTv;
	$Prepicnut = $FaceTv2;

	if($TvP==1 && $TvQ==0){$FaceTv="���o��";}

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
		Fade($setnut, $�軭�r�g, 1000, null, false);
	}else if($TvP==1 && $setnut!=$astnut){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $�軭�r�g, 0, Axl3, false);
		Fade($setnut, $�軭�r�g, 1000, Dxl2, false);
		Request($astnut, Disused);
	}else if($TvP==0){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $�軭�r�g, 0, null, false);
		Request($astnut, Disused);
	}

	if($����==true)
	{
		WaitAction($setnut, null);

		if($TvP==0){
			WaitAction($astnut, null);
		}

	}
	else if($���� != false)
	{
		Wait($����);
	}
	else
	{
	}
}






//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�ƥ��������v�S
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function Bv($�軭���ȶ�, $��λ��, $��λ��, $����)
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

	$�ʥå���=$BvName;

//	$���� = "cg/tv/" + $����;
	$nut = "@" + $�H�ʥå���Tv + "/" + $������ + "/" + $�ʥå���;


//	$�軭���ȶ� = $�軭���ȶ�Tv + $ӳ�軭���ȶȲ��;

	CreateTexture($nut, $�軭���ȶ�, -250, -209, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);

	Request($nut, Smoothing);
	Zoom($nut, 0, 310, 210, null, false);

	Move($nut, 0, $��λ��, $��λ��, null, true);
}


...tv���飦�ݩ`�����
function FadeBv($�軭�r�g,$����)
{
	if($BvName01!=""){$�ʥå���=$BvName01;$BvName01="";}
	else if($BvName02!=""){$�ʥå���=$BvName02;$BvName02="";}
	else if($BvName03!=""){$�ʥå���=$BvName03;$BvName03="";}
	else if($BvName04!=""){$�ʥå���=$BvName04;$BvName04="";}
	else if($BvName05!=""){$�ʥå���=$BvName05;$BvName05="";}
	else if($BvName06!=""){$�ʥå���=$BvName06;$BvName06="";}
	else if($BvName07!=""){$�ʥå���=$BvName07;$BvName07="";}
	else if($BvName08!=""){$�ʥå���=$BvName08;$BvName08="";}
	else if($BvName09!=""){$�ʥå���=$BvName09;$BvName09="";}
	else if($BvName10!=""){$�ʥå���=$BvName10;$BvName10="";}

	$BvP = 1;

	PreFadeBv();

	$FaceBv2=$FaceBv;
	$FaceBv=$nut;

	$BvQ = 1;

	//ָ����
	$nutBv=$setnut;
	$nutBv2=$astnut;
}

...tv�ǥ�`��
function DeleteBv($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$BvP = 0;

	PreFadeBv();

	$BvQ = 0;
}

...�軭�ޥ���
function PreFadeBv()
{
	$nut = $�ʥå���;

	$nus = "@" + $�H�ʥå���Tv + "/" + $������;
	$picnut = $FaceBv;
	$Prepicnut = $FaceBv2;

	if($BvP==1 && $BvQ==0){$FaceBv="���o��";}

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
		Fade($setnut, $�軭�r�g, 1000, null, false);
	}else if($BvP==1 && $setnut!=$astnut){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $�軭�r�g, 0, Axl3, false);
		Fade($setnut, $�軭�r�g, 1000, Dxl2, false);
		Request($astnut, Disused);
	}else if($BvP==0){
		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $�軭�r�g, 0, null, false);
		Request($astnut, Disused);
	}

	if($����==true)
	{
		WaitAction($setnut, null);

		if($BvP==0){
			WaitAction($astnut, null);
		}

	}
	else if($���� != false)
	{
		Wait($����);
	}
	else
	{
	}
}





//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..����`�v�S
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function Cv($�軭���ȶ�, $͸����, $����)
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


	if($CvName01==""){$CvName01=$CvName;$CvColor01=$͸����;}
	else if($CvName02==""){$CvName02=$CvName;$CvColor02=$͸����;}
	else if($CvName03==""){$CvName03=$CvName;$CvColor03=$͸����;}
	else if($CvName04==""){$CvName04=$CvName;$CvColor04=$͸����;}
	else if($CvName05==""){$CvName05=$CvName;$CvColor05=$͸����;}
	else if($CvName06==""){$CvName06=$CvName;$CvColor06=$͸����;}
	else if($CvName07==""){$CvName07=$CvName;$CvColor07=$͸����;}
	else if($CvName08==""){$CvName08=$CvName;$CvColor08=$͸����;}
	else if($CvName09==""){$CvName09=$CvName;$CvColor09=$͸����;}
	else if($CvName10==""){$CvName10=$CvName;$CvColor10=$͸����;}

	$�ʥå���=$CvName;

//	$���� = "cg/tv/" + $����;
	$nut = "@" + $�H�ʥå���Tv + "/" + $������ + "/" + $�ʥå���;


//	$�軭���ȶ� = $�軭���ȶ�Tv + $ӳ�軭���ȶȲ��;

	CreateColor($nut, $�軭���ȶ�, 0, 0, 300, 200, $����);
	SetAlias($nut,$�ʥå���);
	Fade($nut, 0, 0, null, true);
}


...tv���飦�ݩ`�����
function FadeCv($�軭�r�g,$����)
{
	if($CvName01!=""){$�ʥå���=$CvName01;$CvName01="";$TVɫ͸����=$CvColor01;}
	else if($CvName02!=""){$�ʥå���=$CvName02;$CvName02="";$TVɫ͸����=$CvColor02;}
	else if($CvName03!=""){$�ʥå���=$CvName03;$CvName03="";$TVɫ͸����=$CvColor03;}
	else if($CvName04!=""){$�ʥå���=$CvName04;$CvName04="";$TVɫ͸����=$CvColor04;}
	else if($CvName05!=""){$�ʥå���=$CvName05;$CvName05="";$TVɫ͸����=$CvColor05;}
	else if($CvName06!=""){$�ʥå���=$CvName06;$CvName06="";$TVɫ͸����=$CvColor06;}
	else if($CvName07!=""){$�ʥå���=$CvName07;$CvName07="";$TVɫ͸����=$CvColor07;}
	else if($CvName08!=""){$�ʥå���=$CvName08;$CvName08="";$TVɫ͸����=$CvColor08;}
	else if($CvName09!=""){$�ʥå���=$CvName09;$CvName09="";$TVɫ͸����=$CvColor09;}
	else if($CvName10!=""){$�ʥå���=$CvName10;$CvName10="";$TVɫ͸����=$CvColor10;}

	$CvP = 1;

	PreFadeCv();

	$FaceCv2=$FaceCv;
	$FaceCv=$nut;

	$CvQ = 1;

	//ָ����
	$nutCv=$setnut;
	$nutCv2=$astnut;
}

...tv�ǥ�`��
function DeleteCv($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$CvP = 0;

	PreFadeCv();

	$CvQ = 0;
}

...�軭�ޥ���
function PreFadeCv()
{
	$nut = $�ʥå���;

	$nus = "@" + $�H�ʥå���Tv + "/" + $������;
	$picnut = $FaceCv;
	$Prepicnut = $FaceCv2;

	if($CvP==1 && $CvQ==0){$FaceCv="���o��";}

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
		Fade($setnut, $�軭�r�g, $TVɫ͸����, null, false);
	}else if($CvP==1 && $setnut!=$astnut){
//		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $�軭�r�g, 0, Axl3, false);
		Fade($setnut, $�軭�r�g, $TVɫ͸����, Dxl2, false);
		Request($astnut, Disused);
	}else if($CvP==0){
//		Fade($astnut, 0, 1000, null, true);//true?
		Fade($astnut, $�軭�r�g, 0, null, false);
		Request($astnut, Disused);
	}

	if($����==true)
	{
		WaitAction($setnut, null);

		if($CvP==0){
			WaitAction($astnut, null);
		}

	}
	else if($���� != false)
	{
		Wait($����);
	}
	else
	{
	}
}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�Υ����v�S
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//======================================
...�Υ����ץ����O�åޥ���
//======================================
function Nv($�Υ���͸����)
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

	if($NvSoundName01==""){$NvSoundName01=$NvSoundName;$NoiseStencil01=$�Υ���͸����;}
	else if($NvSoundName02==""){$NvSoundName02=$NvSoundName;$NoiseStencil02=$�Υ���͸����;}
	else if($NvSoundName03==""){$NvSoundName03=$NvSoundName;$NoiseStencil03=$�Υ���͸����;}
	else if($NvSoundName04==""){$NvSoundName04=$NvSoundName;$NoiseStencil04=$�Υ���͸����;}
	else if($NvSoundName05==""){$NvSoundName05=$NvSoundName;$NoiseStencil05=$�Υ���͸����;}
	else if($NvSoundName06==""){$NvSoundName06=$NvSoundName;$NoiseStencil06=$�Υ���͸����;}
	else if($NvSoundName07==""){$NvSoundName07=$NvSoundName;$NoiseStencil07=$�Υ���͸����;}
	else if($NvSoundName08==""){$NvSoundName08=$NvSoundName;$NoiseStencil08=$�Υ���͸����;}
	else if($NvSoundName09==""){$NvSoundName09=$NvSoundName;$NoiseStencil09=$�Υ���͸����;}
	else if($NvSoundName10==""){$NvSoundName10=$NvSoundName;$NoiseStencil10=$�Υ���͸����;}

	$�j�ץ��� = $�j�ץ����^ + $NvSoundName;


	if($NoiseLoop){
		CreateSound($�j�ץ���, SE, "sound/se/se����_���_�Υ���_L");
		SetLoop($�j�ץ���, true);
	}else if(!$NoiseLoop){
		CreateSound($�j�ץ���, SE, "sound/se/se�M��_����_ɰ��01");
		SetLoop($�j�ץ���, false);
	}

	SetAlias($�j�ץ���, $�j�ץ���);
	SetVolume($�j�ץ���, 0, 0, NULL);
}



//======================================
...�Υ����ץ������������_ʼ��
//======================================
function FadeNv($�軭�r�g,$����)
{
	if($NvSoundName01!=""){$�Υ�����=$NvSoundName01;$͸����=$NoiseStencil01;$NvSoundName01="";}
	else if($NvSoundName02!=""){$�Υ�����=$NvSoundName02;$͸����=$NoiseStencil02;$NvSoundName02="";}
	else if($NvSoundName03!=""){$�Υ�����=$NvSoundName03;$͸����=$NoiseStencil03;$NvSoundName03="";}
	else if($NvSoundName04!=""){$�Υ�����=$NvSoundName04;$͸����=$NoiseStencil04;$NvSoundName04="";}
	else if($NvSoundName05!=""){$�Υ�����=$NvSoundName05;$͸����=$NoiseStencil05;$NvSoundName05="";}
	else if($NvSoundName06!=""){$�Υ�����=$NvSoundName06;$͸����=$NoiseStencil06;$NvSoundName06="";}
	else if($NvSoundName07!=""){$�Υ�����=$NvSoundName07;$͸����=$NoiseStencil07;$NvSoundName07="";}
	else if($NvSoundName08!=""){$�Υ�����=$NvSoundName08;$͸����=$NoiseStencil08;$NvSoundName08="";}
	else if($NvSoundName09!=""){$�Υ�����=$NvSoundName09;$͸����=$NoiseStencil09;$NvSoundName09="";}
	else if($NvSoundName10!=""){$�Υ�����=$NvSoundName10;$͸����=$NoiseStencil10;$NvSoundName10="";}

	$NvP = 1;

	PreFadeNv();

	$ProNv2=$ProNv;
	$ProNv=$�Υ�����;
	$NvQ = 1;

	//ָ����
	$nutNv=$setdut;
	$nutNv2=$astdut;
}

//======================================
...�Υ����ץ������������K�ˡ�
//======================================
function DeleteNv($�軭�r�g,$����)
{
	$�ʥå���="���o��";

	$NvP = 4;

	PreFadeNv();

	$NvQ = 4;
}


//======================================
...�Υ����ץ����軭�ޥ���
//======================================
function PreFadeNv()
{
	$dut = $�Υ�����;
	$picdut = $ProNv;
	$Prepicdut = $ProNv2;

	if($NvP==1 && $NvQ==0){$FaceNv="���o��";}

	$setdut = "@" + $�j�ץ����^ + $dut;
	$astdut = "@" + $�j�ץ����^ + $picdut;
	$Preastdut = "@" + $�j�ץ����^ + $Prepicdut;

	Request($ֹ��, Stop);
	WaitAction($ֹ��, null);

	SetVolume($astdut, $�軭�r�g, 0, NULL);

	if($NvP==1)
	{
		//���Υ��������`��
		Request($setdut, Play);
		Request($setdut, Disused);
		SetVolume($setdut, $�軭�r�g, $NoiseVolume, NULL);
		Fade("@noise_only", $�軭�r�g, $͸����, null, false);
		Request($ϵ��, Start);
	}

	if($NvP==4)
	{
		//���Υ���ֹͣ
		Fade("@noise_only", $�軭�r�g, 0, null, false);
		$NoiseStopTime=$�軭�r�g;
		Request($ֹ��, Start);
	}

	if($����==true)
	{
		Wait($�軭�r�g);
	}
	else if($���� != false)
	{
		Wait($����);
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










//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�ƥ�ӥץ����v�S
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//======================================
...�ƥ�ӥץ������������_ʼ��
//======================================
function ProcessTv($����)
{
	$ViP = 1;
	SetProcessTv();

	ReadyProcessTv();
	PreProcessTv();
	ConProcessTv();
	$ViQ = 1;

	//ָ����
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
...�ƥ�ӥץ������������Ф��椨��
//======================================
function ProcessTv2($����)
{
	$ViP = 2;
	SetProcessTv();

	ReadyProcessTv();
	PreProcessTv();
	ConProcessTv();
	$ViQ = 2;

	//ָ����
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
...�ƥ�ӥץ������������L�Ф��椨��
//======================================
function ProcessTv3($����)
{
	$ViP = 3;
	SetProcessTv();

	ReadyProcessTv();
	PreProcessTv();
	ConProcessTv();
	$ViQ = 3;

	//ָ����
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
...�ƥ�ӥץ������������ץĥ�
//======================================
function ProcessTv4($����)
{
	$ViP = 4;
	SetProcessTv();

	ReadyProcessTv();
	PreProcessTv();
	ConProcessTv();
	$ViQ = 4;

	//ָ����
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
...�ƥ�ӥץ����O�åޥ���
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

	$alias = "@" + $ӳ�ץ����^ + $TvProcessName;

	if($vision01_use==$alias){$vision01_use="";}//���ڻ�����
	if($vision02_use==$alias){$vision02_use="";}//���ڻ�����
	if($vision03_use==$alias){$vision03_use="";}//���ڻ�����
	if($vision04_use==$alias){$vision04_use="";}//���ڻ�����
	if($vision05_use==$alias){$vision05_use="";}//���ڻ�����
	if($vision06_use==$alias){$vision06_use="";}//���ڻ�����
	if($vision07_use==$alias){$vision07_use="";}//���ڻ�����
	if($vision08_use==$alias){$vision08_use="";}//���ڻ�����
	if($vision09_use==$alias){$vision09_use="";}//���ڻ�����
	if($vision10_use==$alias){$vision10_use="";}//���ڻ�����


		$�H�ʥå��� = $�H�ʥå���Tv;

		if($vision01_use==""){//���ڻ�����
			$vision01_use=$alias;
			$vision01_who=$�H�ʥå���;
			$vision_num="1";
		}else if($vision02_use==""){//���ڻ�����
			$vision02_use=$alias;
			$vision02_who=$�H�ʥå���;
			$vision_num="2";
		}else if($vision03_use==""){//���ڻ�����
			$vision03_use=$alias;
			$vision03_who=$�H�ʥå���;
			$vision_num="3";
		}else if($vision04_use==""){//���ڻ�����
			$vision04_use=$alias;
			$vision04_who=$�H�ʥå���;
			$vision_num="4";
		}else if($vision05_use==""){//���ڻ�����
			$vision05_use=$alias;
			$vision05_who=$�H�ʥå���;
			$vision_num="5";
		}else if($vision06_use==""){//���ڻ�����
			$vision06_use=$alias;
			$vision06_who=$�H�ʥå���;
			$vision_num="6";
		}else if($vision07_use==""){//���ڻ�����
			$vision07_use=$alias;
			$vision07_who=$�H�ʥå���;
			$vision_num="7";
		}else if($vision08_use==""){//���ڻ�����
			$vision08_use=$alias;
			$vision08_who=$�H�ʥå���;
			$vision_num="8";
		}else if($vision09_use==""){//���ڻ�����
			$vision09_use=$alias;
			$vision09_who=$�H�ʥå���;
			$vision_num="9";
		}else if($vision10_use==""){//���ڻ�����
			$vision10_use=$alias;
			$vision10_who=$�H�ʥå���;
			$vision_num="10";
		}else{
			$str="�����}������������";
			CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
			Request("DebugAlert",PushText);
			return;
		}

	$���ץ��� = $���ץ����^ + $TvSoundName;


	if($ViP==1){
		$SoundNut="sound/se/se����_���_�ƥ��on";
	}else if($ViP==2){
		$SoundNut="sound/se/se����_���_�����ͥ�01";
	}else if($ViP==3){
		$SoundNut="sound/se/se����_���_�����ͥ�02";
	}else if($ViP==4){
		$SoundNut="sound/se/se����_���_�ƥ��off";
	}

	CreateSound($���ץ���, SE, $SoundNut);
	SetLoop($���ץ���, false);
	SetAlias($���ץ���, $���ץ���);
	SetVolume($���ץ���, 0, 0, NULL);

	$ӳ�ץ��� = $ӳ�ץ����^ + $TvProcessName;
	$proc_f="Television"+$vision_num;
	CreateProcess($ӳ�ץ���, 1000, 0, 0, $proc_f);
	SetAlias($ӳ�ץ���, $ӳ�ץ���);
}


//======================================
...�ƥ�ӥץ����ʂ�ޥ���
//======================================
function ReadyProcessTv()
{
	if($TvProcessName01!=""){$�ץ�����=$TvProcessName01;$���������=$TvSoundName01;$TvProcessName01="";}
	else if($TvProcessName02!=""){$�ץ�����=$TvProcessName02;$���������=$TvSoundName02;$TvProcessName02="";}
	else if($TvProcessName03!=""){$�ץ�����=$TvProcessName03;$���������=$TvSoundName03;$TvProcessName03="";}
	else if($TvProcessName04!=""){$�ץ�����=$TvProcessName04;$���������=$TvSoundName04;$TvProcessName04="";}
	else if($TvProcessName05!=""){$�ץ�����=$TvProcessName05;$���������=$TvSoundName05;$TvProcessName05="";}
	else if($TvProcessName06!=""){$�ץ�����=$TvProcessName06;$���������=$TvSoundName06;$TvProcessName06="";}
	else if($TvProcessName07!=""){$�ץ�����=$TvProcessName07;$���������=$TvSoundName07;$TvProcessName07="";}
	else if($TvProcessName08!=""){$�ץ�����=$TvProcessName08;$���������=$TvSoundName08;$TvProcessName08="";}
	else if($TvProcessName09!=""){$�ץ�����=$TvProcessName09;$���������=$TvSoundName09;$TvProcessName09="";}
	else if($TvProcessName10!=""){$�ץ�����=$TvProcessName10;$���������=$TvSoundName10;$TvProcessName10="";}

	if($ViP==4){
		$NvP=4;$NvQ=4;
		$�Υ�����="���o��";
	}else{
		$NvP=1;$NvQ=1;
		if($NvSoundName01!=""){$�Υ�����=$NvSoundName01;$͸����=$NoiseStencil01;$NvSoundName01="";}
		else if($NvSoundName02!=""){$�Υ�����=$NvSoundName02;$͸����=$NoiseStencil02;$NvSoundName02="";}
		else if($NvSoundName03!=""){$�Υ�����=$NvSoundName03;$͸����=$NoiseStencil03;$NvSoundName03="";}
		else if($NvSoundName04!=""){$�Υ�����=$NvSoundName04;$͸����=$NoiseStencil04;$NvSoundName04="";}
		else if($NvSoundName05!=""){$�Υ�����=$NvSoundName05;$͸����=$NoiseStencil05;$NvSoundName05="";}
		else if($NvSoundName06!=""){$�Υ�����=$NvSoundName06;$͸����=$NoiseStencil06;$NvSoundName06="";}
		else if($NvSoundName07!=""){$�Υ�����=$NvSoundName07;$͸����=$NoiseStencil07;$NvSoundName07="";}
		else if($NvSoundName08!=""){$�Υ�����=$NvSoundName08;$͸����=$NoiseStencil08;$NvSoundName08="";}
		else if($NvSoundName09!=""){$�Υ�����=$NvSoundName09;$͸����=$NoiseStencil09;$NvSoundName09="";}
		else if($NvSoundName10!=""){$�Υ�����=$NvSoundName10;$͸����=$NoiseStencil10;$NvSoundName10="";}
		else{$�Υ�����="���o��";$NvP=4;$NvQ=4;}
	}

	if($ViP==4){
		$TvP=0;$TvQ=0;
		$�����}��="���o��";
	}else{
		$TvP=1;$TvQ=1;
		if($TvName01!=""){$�����}��=$TvName01;$TvName01="";}
		else if($TvName02!=""){$�����}��=$TvName02;$TvName02="";}
		else if($TvName03!=""){$�����}��=$TvName03;$TvName03="";}
		else if($TvName04!=""){$�����}��=$TvName04;$TvName04="";}
		else if($TvName05!=""){$�����}��=$TvName05;$TvName05="";}
		else if($TvName06!=""){$�����}��=$TvName06;$TvName06="";}
		else if($TvName07!=""){$�����}��=$TvName07;$TvName07="";}
		else if($TvName08!=""){$�����}��=$TvName08;$TvName08="";}
		else if($TvName09!=""){$�����}��=$TvName09;$TvName09="";}
		else if($TvName10!=""){$�����}��=$TvName10;$TvName10="";}
		else{$�����}��="���o��";$TvP=0;$TvQ=0;}
	}

	if($ViP==4){
		$BvP=0;$BvQ=0;
		$����}��="���o��";
	}else{
		$BvP=1;$BvQ=1;
		if($BvName01!=""){$����}��=$BvName01;$BvName01="";}
		else if($BvName02!=""){$����}��=$BvName02;$BvName02="";}
		else if($BvName03!=""){$����}��=$BvName03;$BvName03="";}
		else if($BvName04!=""){$����}��=$BvName04;$BvName04="";}
		else if($BvName05!=""){$����}��=$BvName05;$BvName05="";}
		else if($BvName06!=""){$����}��=$BvName06;$BvName06="";}
		else if($BvName07!=""){$����}��=$BvName07;$BvName07="";}
		else if($BvName08!=""){$����}��=$BvName08;$BvName08="";}
		else if($BvName09!=""){$����}��=$BvName09;$BvName09="";}
		else if($BvName10!=""){$����}��=$BvName10;$BvName10="";}
		else{$����}��="���o��";$BvQ=0;$BvQ=0;}
	}

	if($ViP==4){
		$CvP=0;$CvQ=0;
		$ɫ��}��="���o��";
	}else{
		$CvP=1;$CvQ=1;
		if($CvName01!=""){$ɫ��}��=$CvName01;$CvName01="";$TVɫ͸����=$CvColor01;}
		else if($CvName02!=""){$ɫ��}��=$CvName02;$CvName02="";$TVɫ͸����=$CvColor02;}
		else if($CvName03!=""){$ɫ��}��=$CvName03;$CvName03="";$TVɫ͸����=$CvColor03;}
		else if($CvName04!=""){$ɫ��}��=$CvName04;$CvName04="";$TVɫ͸����=$CvColor04;}
		else if($CvName05!=""){$ɫ��}��=$CvName05;$CvName05="";$TVɫ͸����=$CvColor05;}
		else if($CvName06!=""){$ɫ��}��=$CvName06;$CvName06="";$TVɫ͸����=$CvColor06;}
		else if($CvName07!=""){$ɫ��}��=$CvName07;$CvName07="";$TVɫ͸����=$CvColor07;}
		else if($CvName08!=""){$ɫ��}��=$CvName08;$CvName08="";$TVɫ͸����=$CvColor08;}
		else if($CvName09!=""){$ɫ��}��=$CvName09;$CvName09="";$TVɫ͸����=$CvColor09;}
		else if($CvName10!=""){$ɫ��}��=$CvName10;$CvName10="";$TVɫ͸����=$CvColor10;}
		else{$ɫ��}��="���o��";$CvQ=0;$CvQ=0;}
	}
}


//======================================
...�ƥ�ӥץ����軭�ޥ���
//======================================
function PreProcessTv()
{
	$vus = "@" + $�H�ʥå���Tv;
	$dus = "@" + $�H�ʥå���Tv;

	$pro = $�ץ�����;
	$picpro = $ProTv;
	$Prepicpro = $ProTv2;

	$sax = $���������;
	$picsax = $ProSv;
	$Prepicsax = $ProSv2;

	$dut = $�Υ�����;
	$picdut = $ProNv;
	$Prepicdut = $ProNv2;

	$vut = $�����}��;
	$picvut = $FaceTv;
	$Prepicvut = $FaceTv2;

	$tex = $����}��;
	$pictex = $FaceBv;
	$Prepictex = $FaceBv2;

	$col = $ɫ��}��;
	$piccol = $FaceCv;
	$Prepiccol = $FaceCv2;

	if($�ƥ�ӥ٩`������`��!=$BaseTv)
	{
		$TvB=0;
		$bas = $�ƥ�ӥ٩`������`��;
		$picbas = $BaseTv;
		$Prepicbas = $BaseTv2;
	}

	$Prealias = "@" + $ӳ�ץ����^ + $picpro;
	$alias = "@" + $ӳ�ץ����^ + $pro;

	if($vision01_use==$alias){
		$�軭�r�g01=$�軭�r�g;
		$vus01=$vus;
		$sax01=$sax;$picsax01=$picsax;
		$dut01=$dut;$picdut01=$picdut;$PreNoiseStencil01=$͸����;$NvP01=$NvP;
		$vut01=$vut;$picvut01=$picvut;
		$tex01=$tex;$pictex01=$pictex;
		$col01=$col;$piccol01=$piccol;$colstencil01=$TVɫ͸����;
		$bas01=$bas;$picbas01=$picbas;
		$ViP01=$ViP;
	}else if($vision02_use==$alias){
		$�軭�r�g02=$�軭�r�g;
		$vus02=$vus;
		$sax02=$sax;$picsax02=$picsax;
		$dut02=$dut;$picdut02=$picdut;$PreNoiseStencil02=$͸����;$NvP02=$NvP;
		$vut02=$vut;$picvut02=$picvut;
		$tex02=$tex;$pictex02=$pictex;
		$col02=$col;$piccol02=$piccol;$colstencil02=$TVɫ͸����;
		$bas02=$bas;$picbas02=$picbas;
		$ViP02=$ViP;
	}else if($vision03_use==$alias){
		$�軭�r�g03=$�軭�r�g;
		$vus03=$vus;
		$sax03=$sax;$picsax03=$picsax;
		$dut03=$dut;$picdut03=$picdut;$PreNoiseStencil03=$͸����;$NvP03=$NvP;
		$vut03=$vut;$picvut03=$picvut;
		$tex03=$tex;$pictex03=$pictex;
		$col03=$col;$piccol03=$piccol;$colstencil03=$TVɫ͸����;
		$bas03=$bas;$picbas03=$picbas;
		$ViP03=$ViP;
	}else if($vision04_use==$alias){
		$�軭�r�g04=$�軭�r�g;
		$vus04=$vus;
		$sax04=$sax;$picsax04=$picsax;
		$dut04=$dut;$picdut04=$picdut;$PreNoiseStencil04=$͸����;$NvP04=$NvP;
		$vut04=$vut;$picvut04=$picvut;
		$tex04=$tex;$pictex04=$pictex;
		$col04=$col;$piccol04=$piccol;$colstencil04=$TVɫ͸����;
		$bas04=$bas;$picbas04=$picbas;
		$ViP04=$ViP;
	}else if($vision05_use==$alias){
		$�軭�r�g05=$�軭�r�g;
		$vus05=$vus;
		$sax05=$sax;$picsax05=$picsax;
		$dut05=$dut;$picdut05=$picdut;$PreNoiseStencil05=$͸����;$NvP05=$NvP;
		$vut05=$vut;$picvut05=$picvut;
		$tex05=$tex;$pictex05=$pictex;
		$col05=$col;$piccol05=$piccol;$colstencil05=$TVɫ͸����;
		$bas05=$bas;$picbas05=$picbas;
		$ViP05=$ViP;
	}else if($vision06_use==$alias){
		$�軭�r�g06=$�軭�r�g;
		$vus06=$vus;
		$sax06=$sax;$picsax06=$picsax;
		$dut06=$dut;$picdut06=$picdut;$PreNoiseStencil06=$͸����;$NvP06=$NvP;
		$vut06=$vut;$picvut06=$picvut;
		$tex06=$tex;$pictex06=$pictex;
		$col06=$col;$piccol06=$piccol;$colstencil06=$TVɫ͸����;
		$bas06=$bas;$picbas06=$picbas;
		$ViP06=$ViP;
	}else if($vision07_use==$alias){
		$�軭�r�g07=$�軭�r�g;
		$vus07=$vus;
		$sax07=$sax;$picsax07=$picsax;
		$dut07=$dut;$picdut07=$picdut;$PreNoiseStencil07=$͸����;$NvP07=$NvP;
		$vut07=$vut;$picvut07=$picvut;
		$tex07=$tex;$pictex07=$pictex;
		$col07=$col;$piccol07=$piccol;$colstencil07=$TVɫ͸����;
		$bas07=$bas;$picbas07=$picbas;
		$ViP07=$ViP;
	}else if($vision08_use==$alias){
		$�軭�r�g08=$�軭�r�g;
		$vus08=$vus;
		$sax08=$sax;$picsax08=$picsax;
		$dut08=$dut;$picdut08=$picdut;$PreNoiseStencil08=$͸����;$NvP08=$NvP;
		$vut08=$vut;$picvut08=$picvut;
		$tex08=$tex;$pictex08=$pictex;
		$col08=$col;$piccol08=$piccol;$colstencil08=$TVɫ͸����;
		$bas08=$bas;$picbas08=$picbas;
		$ViP08=$ViP;
	}else if($vision09_use==$alias){
		$�軭�r�g09=$�軭�r�g;
		$vus09=$vus;
		$sax09=$sax;$picsax09=$picsax;
		$dut09=$dut;$picdut09=$picdut;$PreNoiseStencil09=$͸����;$NvP09=$NvP;
		$vut09=$vut;$picvut09=$picvut;
		$tex09=$tex;$pictex09=$pictex;
		$col09=$col;$piccol09=$piccol;$colstencil09=$TVɫ͸����;
		$bas09=$bas;$picbas09=$picbas;
		$ViP09=$ViP;
	}else if($vision10_use==$alias){
		$�軭�r�g10=$�軭�r�g;
		$vus10=$vus;
		$sax10=$sax;$picsax10=$picsax;
		$dut10=$dut;$picdut10=$picdut;$PreNoiseStencil10=$͸����;$NvP10=$NvP;
		$vut10=$vut;$picvut10=$picvut;
		$tex10=$tex;$pictex10=$pictex;
		$col10=$col;$piccol10=$piccol;$colstencil10=$TVɫ͸����;
		$bas10=$bas;$picbas10=$picbas;
		$ViP10=$ViP;
	}else if($�ʥå���=="���o��"){
	}else{
		$str="��"+$�ʥå���+"��ʹ�åꥹ�Ȥˤʤ�����";
		CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
		Request("DebugAlert",PushText);
	}


	$setpro = "@" + $ӳ�ץ����^ + $pro;
	$astpro = "@" + $ӳ�ץ����^ + $picpro;
	$Preastpro = "@" + $ӳ�ץ����^ + $Prepicpro;

	$setsax = "@" + $���ץ����^ + $sax;
	$astsax = "@" + $���ץ����^ + $picsax;
	$Preastsax = "@" + $���ץ����^ + $Prepicsax;

	$setdut = "@" + $�j�ץ����^ + $dut;
	$astdut = "@" + $�j�ץ����^ + $picdut;
	$Preastdut = "@" + $�j�ץ����^ + $Prepicdut;

	$setbas = $vus + "/" + $������ + "/" + $bas;
	$astbas = $vus + "/" + $������ + "/" + $picbas;
	$Preastbas = $vus + "/" + $������ + "/" + $Prepicbas;

	$setvut = $vus + "/" + $������ + "/" + $vut;
	$astvut = $vus + "/" + $������ + "/" + $picvut;
	$Preastvut = $vus + "/" + $������ + "/" + $Prepicvut;

	$settex = $vus + "/" + $������ + "/" + $tex;
	$asttex = $vus + "/" + $������ + "/" + $pictex;
	$Preasttex = $vus + "/" + $������ + "/" + $Prepictex;

	$setcol = $vus + "/" + $������ + "/" + $col;
	$astcol = $vus + "/" + $������ + "/" + $piccol;
	$Preastcol = $vus + "/" + $������ + "/" + $Prepiccol;



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
			$vision01_use="";//���ڻ�����
		}else if($vision02_use==$Prealias){
			$vision02_use="";//���ڻ�����
		}else if($vision03_use==$Prealias){
			$vision03_use="";//���ڻ�����
		}else if($vision04_use==$Prealias){
			$vision04_use="";//���ڻ�����
		}else if($vision05_use==$Prealias){
			$vision05_use="";//���ڻ�����
		}else if($vision06_use==$Prealias){
			$vision06_use="";//���ڻ�����
		}else if($vision07_use==$Prealias){
			$vision07_use="";//���ڻ�����
		}else if($vision08_use==$Prealias){
			$vision08_use="";//���ڻ�����
		}else if($vision09_use==$Prealias){
			$vision09_use="";//���ڻ�����
		}else if($vision10_use==$Prealias){
			$vision10_use="";//���ڻ�����
		}else{
		//	$str="��"+$astpro01+"��ʹ�åꥹ�Ȥˤʤ�����";
		//	CreateText("DebugAlert",9999999,0,0,auto,auto,$str);
		//	Request("DebugAlert",PushText);
		}
	}

	Request($setpro, Start);
	Request($setpro, Disused);

	if($����==true)
	{
		WaitAction($setpro, null);
	}
	else if($���� != false)
	{
		Wait($����);
	}
	else
	{
	}

}

//		Message("����","����");

function Vi1()
{
	Fade($astvut, 0, 1000, null, true);
	Fade($asttex, 0, 1000, null, true);
//	Fade($astcol, 0, 1000, null, true);

	if($�ƥ�ӥ٩`������`��!=$BaseTv){Fade($astbas, 0, 1000, null, true);
	}else{Fade($setbas, 0, 1000, null, true);}

	Fade("@noise1*", 0, 0, null, false);
	Fade("@noise2*", 0, 0, null, false);
	Fade($�P��, 0, $TV�ߖ˾�͸����, null, true);
}

function Vi2()
{
	Fade($astvut, 0, 1000, null, true);
	Fade($asttex, 0, 1000, null, true);
//	Fade($astcol, 0, 1000, null, true);

	if($�ƥ�ӥ٩`������`��!=$BaseTv){Fade($astbas, 0, 1000, null, true);
	}else{Fade($setbas, 0, 1000, null, true);}

	Fade("@noise1*", 0, 0, null, false);
	Fade("@noise2*", 0, 0, null, false);
	Fade($�P��, 0, $TV�ߖ˾�͸����, null, true);
}

function Vi3()
{
	Fade($astvut, 0, 1000, null, true);
	Fade($asttex, 0, 1000, null, true);
//	Fade($astcol, 0, 1000, null, true);

	if($�ƥ�ӥ٩`������`��!=$BaseTv){Fade($astbas, 0, 1000, null, true);
	}else{Fade($setbas, 0, 1000, null, true);}

	Fade("@noise1*", 0, 0, null, false);
	Fade("@noise2*", 0, 0, null, false);
	Fade($�P��, 0, $TV�ߖ˾�͸����, null, true);
}

function Vi4()
{
	if($�ƥ�ӥ٩`������`��!=$BaseTv){Fade($astbas, 0, 0, null, true);
	}else{Fade($setbas, 0, 0, null, true);}

	Fade("@noise1*", 0, 0, null, false);
	Fade("@noise2*", 0, 0, null, false);
	Fade($�P��, 0, 0, null, false);
}



//======================================
...�ƥ�ӥץ������@���ޥ���
//======================================
function ConProcessTv()
{
	$ProTv2=$ProTv;
	$ProTv=$�ץ�����;

	$ProSv2=$ProSv;
	$ProSv=$���������;

	$ProNv2=$ProNv;
	$ProNv=$�Υ�����;

	$FaceTv2=$FaceTv;
	$FaceTv=$�����}��;

	$FaceBv2=$FaceBv;
	$FaceBv=$����}��;

	$FaceCv2=$FaceCv;
	$FaceCv=$ɫ��}��;

	if($�ƥ�ӥ٩`������`��!=$BaseTv)
	{
		$BaseTv2=$BaseTv;
		$BaseTv=$�ƥ�ӥ٩`������`��;
	}
}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...ӳ������ɥ��ץ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

function Television1()
{
	$allvut01 = $vus01 + "/" + $������ + "/" + "*";

	$setsax01 = "@" + $���ץ����^ + $sax01;
	$astsax01 = "@" + $���ץ����^ + $picsax01;

	$setdut01 = "@" + $�j�ץ����^ + $dut01;
	$astdut01 = "@" + $�j�ץ����^ + $picdut01;

	$setvut01 = $vus01 + "/" + $������ + "/" + $vut01;
	$astvut01 = $vus01 + "/" + $������ + "/" + $picvut01;

	$settex01 = $vus01 + "/" + $������ + "/" + $tex01;
	$asttex01 = $vus01 + "/" + $������ + "/" + $pictex01;

	$setcol01 = $vus01 + "/" + $������ + "/" + $col01;
	$astcol01 = $vus01 + "/" + $������ + "/" + $piccol01;

	$setbas01 = $vus01 + "/" + $������ + "/" + $bas01;
	$astbas01 = $vus01 + "/" + $������ + "/" + $picbas01;


	if($ViP01==1)
	{
		//�������`��
		Fade($�P��, 1000, $TV�ߖ˾�͸����, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, true);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut01, Play);
					Request($setdut01, Disused);
					Request($astdut01, Disused);
					SetVolume($setdut01, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut01, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil01, null, false);
				}else if($NvP01==4){
					//���Υ���ֹͣ
					Request($astdut01, Disused);
					SetVolume($astdut01, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut01, Play);
					Request($setdut01, Disused);
					Request($astdut01, Disused);
					SetVolume($setdut01, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut01, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil01, null, false);
				}else if($NvP01==4){
					//���Υ���ֹͣ
					Request($astdut01, Disused);
					SetVolume($astdut01, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut01, Play);
					Request($setdut01, Disused);
					Request($astdut01, Disused);
					SetVolume($setdut01, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut01, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil01, null, false);
				}else if($NvP01==4){
					//���Υ���ֹͣ
					Request($astdut01, Disused);
					SetVolume($astdut01, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Դ���Ф�
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut01, Play);
					Request($setdut01, Disused);
					Request($astdut01, Disused);
					SetVolume($setdut01, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut01, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil01, null, false);
				}else if($NvP01==4){
					//���Υ���ֹͣ
					Request($astdut01, Disused);
					SetVolume($astdut01, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
				Delete($astvut01);
				Delete($asttex01);
				Delete($astcol01);
				Fade($setbas01, 0, 0, null, false);
			}
		}

		Fade($�P��, 200, 0, null, false);
		Draw();
	}

}




function Television2()
{
	$allvut02 = $vus02 + "/" + $������ + "/" + "*";

	$setsax02 = "@" + $���ץ����^ + $sax02;
	$astsax02 = "@" + $���ץ����^ + $picsax02;

	$setdut02 = "@" + $�j�ץ����^ + $dut02;
	$astdut02 = "@" + $�j�ץ����^ + $picdut02;

	$setvut02 = $vus02 + "/" + $������ + "/" + $vut02;
	$astvut02 = $vus02 + "/" + $������ + "/" + $picvut02;

	$settex02 = $vus02 + "/" + $������ + "/" + $tex02;
	$asttex02 = $vus02 + "/" + $������ + "/" + $pictex02;

	$setcol02 = $vus02 + "/" + $������ + "/" + $col02;
	$astcol02 = $vus02 + "/" + $������ + "/" + $piccol02;

	$setbas02 = $vus02 + "/" + $������ + "/" + $bas02;
	$astbas02 = $vus02 + "/" + $������ + "/" + $picbas02;

	if($ViP02==1)
	{
		//�������`��
		Fade($�P��, 1000, $TV�ߖ˾�͸����, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut02, Play);
					Request($setdut02, Disused);
					Request($astdut02, Disused);
					SetVolume($setdut02, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut02, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil02, null, false);
				}else if($NvP02==4){
					//���Υ���ֹͣ
					Request($astdut02, Disused);
					SetVolume($astdut02, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut02, Play);
					Request($setdut02, Disused);
					Request($astdut02, Disused);
					SetVolume($setdut02, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut02, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil02, null, false);
				}else if($NvP02==4){
					//���Υ���ֹͣ
					Request($astdut02, Disused);
					SetVolume($astdut02, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut02, Play);
					Request($setdut02, Disused);
					Request($astdut02, Disused);
					SetVolume($setdut02, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut02, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil02, null, false);
				}else if($NvP02==4){
					//���Υ���ֹͣ
					Request($astdut02, Disused);
					SetVolume($astdut02, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Դ���Ф�
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut02, Play);
					Request($setdut02, Disused);
					Request($astdut02, Disused);
					SetVolume($setdut02, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut02, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil02, null, false);
				}else if($NvP02==4){
					//���Υ���ֹͣ
					Request($astdut02, Disused);
					SetVolume($astdut02, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
				Delete($astvut02);
				Delete($asttex02);
				Delete($astcol02);
				Fade($setbas02, 0, 0, null, false);
			}
		}

		Fade($�P��, 200, 0, null, false);
		Draw();
	}

}





function Television3()
{
	$allvut03 = $vus03 + "/" + $������ + "/" + "*";

	$setsax03 = "@" + $���ץ����^ + $sax03;
	$astsax03 = "@" + $���ץ����^ + $picsax03;

	$setdut03 = "@" + $�j�ץ����^ + $dut03;
	$astdut03 = "@" + $�j�ץ����^ + $picdut03;

	$setvut03 = $vus03 + "/" + $������ + "/" + $vut03;
	$astvut03 = $vus03 + "/" + $������ + "/" + $picvut03;

	$settex03 = $vus03 + "/" + $������ + "/" + $tex03;
	$asttex03 = $vus03 + "/" + $������ + "/" + $pictex03;

	$setcol03 = $vus03 + "/" + $������ + "/" + $col03;
	$astcol03 = $vus03 + "/" + $������ + "/" + $piccol03;

	$setbas03 = $vus03 + "/" + $������ + "/" + $bas03;
	$astbas03 = $vus03 + "/" + $������ + "/" + $picbas03;

	if($ViP03==1)
	{
		//�������`��
		Fade($�P��, 1000, $TV�ߖ˾�͸����, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut03, Play);
					Request($setdut03, Disused);
					Request($astdut03, Disused);
					SetVolume($setdut03, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut03, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil03, null, false);
				}else if($NvP03==4){
					//���Υ���ֹͣ
					Request($astdut03, Disused);
					SetVolume($astdut03, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut03, Play);
					Request($setdut03, Disused);
					Request($astdut03, Disused);
					SetVolume($setdut03, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut03, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil03, null, false);
				}else if($NvP03==4){
					//���Υ���ֹͣ
					Request($astdut03, Disused);
					SetVolume($astdut03, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut03, Play);
					Request($setdut03, Disused);
					Request($astdut03, Disused);
					SetVolume($setdut03, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut03, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil03, null, false);
				}else if($NvP03==4){
					//���Υ���ֹͣ
					Request($astdut03, Disused);
					SetVolume($astdut03, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Դ���Ф�
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut03, Play);
					Request($setdut03, Disused);
					Request($astdut03, Disused);
					SetVolume($setdut03, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut03, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil03, null, false);
				}else if($NvP03==4){
					//���Υ���ֹͣ
					Request($astdut03, Disused);
					SetVolume($astdut03, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
				Delete($astvut03);
				Delete($asttex03);
				Delete($astcol03);
				Fade($setbas03, 0, 0, null, false);
			}
		}

		Fade($�P��, 200, 0, null, false);
		Draw();
	}

}




function Television4()
{
	$allvut04 = $vus04 + "/" + $������ + "/" + "*";

	$setsax04 = "@" + $���ץ����^ + $sax04;
	$astsax04 = "@" + $���ץ����^ + $picsax04;

	$setdut04 = "@" + $�j�ץ����^ + $dut04;
	$astdut04 = "@" + $�j�ץ����^ + $picdut04;

	$setvut04 = $vus04 + "/" + $������ + "/" + $vut04;
	$astvut04 = $vus04 + "/" + $������ + "/" + $picvut04;

	$settex04 = $vus04 + "/" + $������ + "/" + $tex04;
	$asttex04 = $vus04 + "/" + $������ + "/" + $pictex04;

	$setcol04 = $vus04 + "/" + $������ + "/" + $col04;
	$astcol04 = $vus04 + "/" + $������ + "/" + $piccol04;

	$setbas04 = $vus04 + "/" + $������ + "/" + $bas04;
	$astbas04 = $vus04 + "/" + $������ + "/" + $picbas04;

	if($ViP04==1)
	{
		//�������`��
		Fade($�P��, 1000, $TV�ߖ˾�͸����, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut04, Play);
					Request($setdut04, Disused);
					Request($astdut04, Disused);
					SetVolume($setdut04, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut04, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil04, null, false);
				}else if($NvP04==4){
					//���Υ���ֹͣ
					Request($astdut04, Disused);
					SetVolume($astdut04, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut04, Play);
					Request($setdut04, Disused);
					Request($astdut04, Disused);
					SetVolume($setdut04, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut04, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil04, null, false);
				}else if($NvP04==4){
					//���Υ���ֹͣ
					Request($astdut04, Disused);
					SetVolume($astdut04, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut04, Play);
					Request($setdut04, Disused);
					Request($astdut04, Disused);
					SetVolume($setdut04, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut04, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil04, null, false);
				}else if($NvP04==4){
					//���Υ���ֹͣ
					Request($astdut04, Disused);
					SetVolume($astdut04, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Դ���Ф�
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut04, Play);
					Request($setdut04, Disused);
					Request($astdut04, Disused);
					SetVolume($setdut04, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut04, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil04, null, false);
				}else if($NvP04==4){
					//���Υ���ֹͣ
					Request($astdut04, Disused);
					SetVolume($astdut04, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
				Delete($astvut04);
				Delete($asttex04);
				Delete($astcol04);
				Fade($setbas04, 0, 0, null, false);
			}
		}

		Fade($�P��, 200, 0, null, false);
		Draw();
	}

}




function Television5()
{
	$allvut05 = $vus05 + "/" + $������ + "/" + "*";

	$setsax05 = "@" + $���ץ����^ + $sax05;
	$astsax05 = "@" + $���ץ����^ + $picsax05;

	$setdut05 = "@" + $�j�ץ����^ + $dut05;
	$astdut05 = "@" + $�j�ץ����^ + $picdut05;

	$setvut05 = $vus05 + "/" + $������ + "/" + $vut05;
	$astvut05 = $vus05 + "/" + $������ + "/" + $picvut05;

	$settex05 = $vus05 + "/" + $������ + "/" + $tex05;
	$asttex05 = $vus05 + "/" + $������ + "/" + $pictex05;

	$setcol05 = $vus05 + "/" + $������ + "/" + $col05;
	$astcol05 = $vus05 + "/" + $������ + "/" + $piccol05;

	$setbas05 = $vus05 + "/" + $������ + "/" + $bas05;
	$astbas05 = $vus05 + "/" + $������ + "/" + $picbas05;

	if($ViP05==1)
	{
		//�������`��
		Fade($�P��, 1000, $TV�ߖ˾�͸����, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut05, Play);
					Request($setdut05, Disused);
					Request($astdut05, Disused);
					SetVolume($setdut05, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut05, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil05, null, false);
				}else if($NvP05==4){
					//���Υ���ֹͣ
					Request($astdut05, Disused);
					SetVolume($astdut05, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut05, Play);
					Request($setdut05, Disused);
					Request($astdut05, Disused);
					SetVolume($setdut05, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut05, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil05, null, false);
				}else if($NvP05==4){
					//���Υ���ֹͣ
					Request($astdut05, Disused);
					SetVolume($astdut05, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut05, Play);
					Request($setdut05, Disused);
					Request($astdut05, Disused);
					SetVolume($setdut05, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut05, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil05, null, false);
				}else if($NvP05==4){
					//���Υ���ֹͣ
					Request($astdut05, Disused);
					SetVolume($astdut05, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Դ���Ф�
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut05, Play);
					Request($setdut05, Disused);
					Request($astdut05, Disused);
					SetVolume($setdut05, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut05, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil05, null, false);
				}else if($NvP05==4){
					//���Υ���ֹͣ
					Request($astdut05, Disused);
					SetVolume($astdut05, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
				Delete($astvut05);
				Delete($asttex05);
				Delete($astcol05);
				Fade($setbas05, 0, 0, null, false);
			}
		}

		Fade($�P��, 200, 0, null, false);
		Draw();
	}

}





function Television6()
{
	$allvut06 = $vus06 + "/" + $������ + "/" + "*";

	$setsax06 = "@" + $���ץ����^ + $sax06;
	$astsax06 = "@" + $���ץ����^ + $picsax06;

	$setdut06 = "@" + $�j�ץ����^ + $dut06;
	$astdut06 = "@" + $�j�ץ����^ + $picdut06;

	$setvut06 = $vus06 + "/" + $������ + "/" + $vut06;
	$astvut06 = $vus06 + "/" + $������ + "/" + $picvut06;

	$settex06 = $vus06 + "/" + $������ + "/" + $tex06;
	$asttex06 = $vus06 + "/" + $������ + "/" + $pictex06;

	$setcol06 = $vus06 + "/" + $������ + "/" + $col06;
	$astcol06 = $vus06 + "/" + $������ + "/" + $piccol06;

	$setbas06 = $vus06 + "/" + $������ + "/" + $bas06;
	$astbas06 = $vus06 + "/" + $������ + "/" + $picbas06;

	if($ViP06==1)
	{
		//�������`��
		Fade($�P��, 1000, $TV�ߖ˾�͸����, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut06, Play);
					Request($setdut06, Disused);
					Request($astdut06, Disused);
					SetVolume($setdut06, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut06, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil06, null, false);
				}else if($NvP06==4){
					//���Υ���ֹͣ
					Request($astdut06, Disused);
					SetVolume($astdut06, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut06, Play);
					Request($setdut06, Disused);
					Request($astdut06, Disused);
					SetVolume($setdut06, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut06, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil06, null, false);
				}else if($NvP06==4){
					//���Υ���ֹͣ
					Request($astdut06, Disused);
					SetVolume($astdut06, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut06, Play);
					Request($setdut06, Disused);
					Request($astdut06, Disused);
					SetVolume($setdut06, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut06, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil06, null, false);
				}else if($NvP06==4){
					//���Υ���ֹͣ
					Request($astdut06, Disused);
					SetVolume($astdut06, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Դ���Ф�
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut06, Play);
					Request($setdut06, Disused);
					Request($astdut06, Disused);
					SetVolume($setdut06, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut06, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil06, null, false);
				}else if($NvP06==4){
					//���Υ���ֹͣ
					Request($astdut06, Disused);
					SetVolume($astdut06, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
				Delete($astvut06);
				Delete($asttex06);
				Delete($astcol06);
				Fade($setbas06, 0, 0, null, false);
			}
		}

		Fade($�P��, 200, 0, null, false);
		Draw();
	}

}




function Television7()
{
	$allvut07 = $vus07 + "/" + $������ + "/" + "*";

	$setsax07 = "@" + $���ץ����^ + $sax07;
	$astsax07 = "@" + $���ץ����^ + $picsax07;

	$setdut07 = "@" + $�j�ץ����^ + $dut07;
	$astdut07 = "@" + $�j�ץ����^ + $picdut07;

	$setvut07 = $vus07 + "/" + $������ + "/" + $vut07;
	$astvut07 = $vus07 + "/" + $������ + "/" + $picvut07;

	$settex07 = $vus07 + "/" + $������ + "/" + $tex07;
	$asttex07 = $vus07 + "/" + $������ + "/" + $pictex07;

	$setcol07 = $vus07 + "/" + $������ + "/" + $col07;
	$astcol07 = $vus07 + "/" + $������ + "/" + $piccol07;

	$setbas07 = $vus07 + "/" + $������ + "/" + $bas07;
	$astbas07 = $vus07 + "/" + $������ + "/" + $picbas07;

	if($ViP07==1)
	{
		//�������`��
		Fade($�P��, 1000, $TV�ߖ˾�͸����, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut07, Play);
					Request($setdut07, Disused);
					Request($astdut07, Disused);
					SetVolume($setdut07, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut07, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil07, null, false);
				}else if($NvP07==4){
					//���Υ���ֹͣ
					Request($astdut07, Disused);
					SetVolume($astdut07, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut07, Play);
					Request($setdut07, Disused);
					Request($astdut07, Disused);
					SetVolume($setdut07, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut07, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil07, null, false);
				}else if($NvP07==4){
					//���Υ���ֹͣ
					Request($astdut07, Disused);
					SetVolume($astdut07, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut07, Play);
					Request($setdut07, Disused);
					Request($astdut07, Disused);
					SetVolume($setdut07, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut07, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil07, null, false);
				}else if($NvP07==4){
					//���Υ���ֹͣ
					Request($astdut07, Disused);
					SetVolume($astdut07, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Դ���Ф�
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut07, Play);
					Request($setdut07, Disused);
					Request($astdut07, Disused);
					SetVolume($setdut07, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut07, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil07, null, false);
				}else if($NvP07==4){
					//���Υ���ֹͣ
					Request($astdut07, Disused);
					SetVolume($astdut07, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
				Delete($astvut07);
				Delete($asttex07);
				Delete($astcol07);
				Fade($setbas07, 0, 0, null, false);
			}
		}

		Fade($�P��, 200, 0, null, false);
		Draw();
	}

}





function Television8()
{
	$allvut08 = $vus08 + "/" + $������ + "/" + "*";

	$setsax08 = "@" + $���ץ����^ + $sax08;
	$astsax08 = "@" + $���ץ����^ + $picsax08;

	$setdut08 = "@" + $�j�ץ����^ + $dut08;
	$astdut08 = "@" + $�j�ץ����^ + $picdut08;

	$setvut08 = $vus08 + "/" + $������ + "/" + $vut08;
	$astvut08 = $vus08 + "/" + $������ + "/" + $picvut08;

	$settex08 = $vus08 + "/" + $������ + "/" + $tex08;
	$asttex08 = $vus08 + "/" + $������ + "/" + $pictex08;

	$setcol08 = $vus08 + "/" + $������ + "/" + $col08;
	$astcol08 = $vus08 + "/" + $������ + "/" + $piccol08;

	$setbas08 = $vus08 + "/" + $������ + "/" + $bas08;
	$astbas08 = $vus08 + "/" + $������ + "/" + $picbas08;

	if($ViP08==1)
	{
		//�������`��
		Fade($�P��, 1000, $TV�ߖ˾�͸����, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut08, Play);
					Request($setdut08, Disused);
					Request($astdut08, Disused);
					SetVolume($setdut08, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut08, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil08, null, false);
				}else if($NvP08==4){
					//���Υ���ֹͣ
					Request($astdut08, Disused);
					SetVolume($astdut08, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut08, Play);
					Request($setdut08, Disused);
					Request($astdut08, Disused);
					SetVolume($setdut08, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut08, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil08, null, false);
				}else if($NvP08==4){
					//���Υ���ֹͣ
					Request($astdut08, Disused);
					SetVolume($astdut08, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut08, Play);
					Request($setdut08, Disused);
					Request($astdut08, Disused);
					SetVolume($setdut08, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut08, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil08, null, false);
				}else if($NvP08==4){
					//���Υ���ֹͣ
					Request($astdut08, Disused);
					SetVolume($astdut08, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Դ���Ф�
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut08, Play);
					Request($setdut08, Disused);
					Request($astdut08, Disused);
					SetVolume($setdut08, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut08, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil08, null, false);
				}else if($NvP08==4){
					//���Υ���ֹͣ
					Request($astdut08, Disused);
					SetVolume($astdut08, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
				Delete($astvut08);
				Delete($asttex08);
				Delete($astcol08);
				Fade($setbas08, 0, 0, null, false);
			}
		}

		Fade($�P��, 200, 0, null, false);
		Draw();
	}

}









function Television9()
{
	$allvut09 = $vus09 + "/" + $������ + "/" + "*";

	$setsax09 = "@" + $���ץ����^ + $sax09;
	$astsax09 = "@" + $���ץ����^ + $picsax09;

	$setdut09 = "@" + $�j�ץ����^ + $dut09;
	$astdut09 = "@" + $�j�ץ����^ + $picdut09;

	$setvut09 = $vus09 + "/" + $������ + "/" + $vut09;
	$astvut09 = $vus09 + "/" + $������ + "/" + $picvut09;

	$settex09 = $vus09 + "/" + $������ + "/" + $tex09;
	$asttex09 = $vus09 + "/" + $������ + "/" + $pictex09;

	$setcol09 = $vus09 + "/" + $������ + "/" + $col09;
	$astcol09 = $vus09 + "/" + $������ + "/" + $piccol09;

	$setbas09 = $vus09 + "/" + $������ + "/" + $bas09;
	$astbas09 = $vus09 + "/" + $������ + "/" + $picbas09;

	if($ViP09==1)
	{
		//�������`��
		Fade($�P��, 1000, $TV�ߖ˾�͸����, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut09, Play);
					Request($setdut09, Disused);
					Request($astdut09, Disused);
					SetVolume($setdut09, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut09, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil09, null, false);
				}else if($NvP09==4){
					//���Υ���ֹͣ
					Request($astdut09, Disused);
					SetVolume($astdut09, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut09, Play);
					Request($setdut09, Disused);
					Request($astdut09, Disused);
					SetVolume($setdut09, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut09, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil09, null, false);
				}else if($NvP09==4){
					//���Υ���ֹͣ
					Request($astdut09, Disused);
					SetVolume($astdut09, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut09, Play);
					Request($setdut09, Disused);
					Request($astdut09, Disused);
					SetVolume($setdut09, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut09, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil09, null, false);
				}else if($NvP09==4){
					//���Υ���ֹͣ
					Request($astdut09, Disused);
					SetVolume($astdut09, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Դ���Ф�
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut09, Play);
					Request($setdut09, Disused);
					Request($astdut09, Disused);
					SetVolume($setdut09, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut09, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil09, null, false);
				}else if($NvP09==4){
					//���Υ���ֹͣ
					Request($astdut09, Disused);
					SetVolume($astdut09, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
				Delete($astvut09);
				Delete($asttex09);
				Delete($astcol09);
				Fade($setbas09, 0, 0, null, false);
			}
		}

		Fade($�P��, 200, 0, null, false);
		Draw();
	}

}




function Television10()
{
	$allvut10 = $vus10 + "/" + $������ + "/" + "*";

	$setsax10 = "@" + $���ץ����^ + $sax10;
	$astsax10 = "@" + $���ץ����^ + $picsax10;

	$setdut10 = "@" + $�j�ץ����^ + $dut10;
	$astdut10 = "@" + $�j�ץ����^ + $picdut10;

	$setvut10 = $vus10 + "/" + $������ + "/" + $vut10;
	$astvut10 = $vus10 + "/" + $������ + "/" + $picvut10;

	$settex10 = $vus10 + "/" + $������ + "/" + $tex10;
	$asttex10 = $vus10 + "/" + $������ + "/" + $pictex10;

	$setcol10 = $vus10 + "/" + $������ + "/" + $col10;
	$astcol10 = $vus10 + "/" + $������ + "/" + $piccol10;

	$setbas10 = $vus10 + "/" + $������ + "/" + $bas10;
	$astbas10 = $vus10 + "/" + $������ + "/" + $picbas10;

	if($ViP10==1)
	{
		//�������`��
		Fade($�P��, 1000, $TV�ߖ˾�͸����, null, false);
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut10, Play);
					Request($setdut10, Disused);
					Request($astdut10, Disused);
					SetVolume($setdut10, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut10, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil10, null, false);
				}else if($NvP10==4){
					//���Υ���ֹͣ
					Request($astdut10, Disused);
					SetVolume($astdut10, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut10, Play);
					Request($setdut10, Disused);
					Request($astdut10, Disused);
					SetVolume($setdut10, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut10, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil10, null, false);
				}else if($NvP10==4){
					//���Υ���ֹͣ
					Request($astdut10, Disused);
					SetVolume($astdut10, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Ф�����
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut10, Play);
					Request($setdut10, Disused);
					Request($astdut10, Disused);
					SetVolume($setdut10, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut10, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil10, null, false);
				}else if($NvP10==4){
					//���Υ���ֹͣ
					Request($astdut10, Disused);
					SetVolume($astdut10, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
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
		//���Դ���Ф�
		Fade("@noise1*", 0, 0, null, false);
		Fade("@noise2*", 0, 0, null, false);
		Draw();

				//���Ф��椨������ɥ����`��
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
					//���Υ��������`��
					Request($ֹ��, Stop);
					WaitAction($ֹ��, null);
					Request($setdut10, Play);
					Request($setdut10, Disused);
					Request($astdut10, Disused);
					SetVolume($setdut10, $NoiseSpan1, $NoiseVolume, NULL);
					SetVolume($astdut10, $NoiseSpan5, 0, NULL);
					Request($ϵ��, Start);
					Fade("@noise_only", 0, $PreNoiseStencil10, null, false);
				}else if($NvP10==4){
					//���Υ���ֹͣ
					Request($astdut10, Disused);
					SetVolume($astdut10, $NoiseSpan6, 0, NULL);
					Request($ϵ��, Stop);
					Fade("@noise_only", 0, 0, null, true);
				}
				//���������O��
				Delete($astvut10);
				Delete($asttex10);
				Delete($astcol10);
				Fade($setbas10, 0, 0, null, false);
			}
		}

		Fade($�P��, 200, 0, null, false);
		Draw();
	}

}






//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
..�������к�
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//======================================
...�������O�åޥ���
//======================================

function CreateKokeshi(��λ��, ��λ��)
{
	$�軭���ȶ� = $�軭���ȶ�Tv + 49;
	CreateTexture("@�ƥ��/��/������00", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin00.png");
	CreateTexture("@�ƥ��/��/������01", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin01.png");
	CreateTexture("@�ƥ��/��/������02", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin02.png");
	CreateTexture("@�ƥ��/��/������03", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin03.png");
	CreateTexture("@�ƥ��/��/������04", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin04.png");
	CreateTexture("@�ƥ��/��/������05", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin05.png");
	CreateTexture("@�ƥ��/��/������06", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin06.png");
	CreateTexture("@�ƥ��/��/������07", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin07.png");
	CreateTexture("@�ƥ��/��/������08", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin08.png");
	CreateTexture("@�ƥ��/��/������09", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin09.png");
	CreateTexture("@�ƥ��/��/������10", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin10.png");
	CreateTexture("@�ƥ��/��/������11", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin11.png");
	CreateTexture("@�ƥ��/��/������12", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin12.png");
	CreateTexture("@�ƥ��/��/������13", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin13.png");
	CreateTexture("@�ƥ��/��/������14", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin14.png");
	CreateTexture("@�ƥ��/��/������15", $�軭���ȶ�, center, 20, "cg/tv/tv��(������)_ͨ��_spin15.png");

	SetAlias("@�ƥ��/��/������00","������00");
	SetAlias("@�ƥ��/��/������01","������01");
	SetAlias("@�ƥ��/��/������02","������02");
	SetAlias("@�ƥ��/��/������03","������03");
	SetAlias("@�ƥ��/��/������04","������04");
	SetAlias("@�ƥ��/��/������05","������05");
	SetAlias("@�ƥ��/��/������06","������06");
	SetAlias("@�ƥ��/��/������07","������07");
	SetAlias("@�ƥ��/��/������08","������08");
	SetAlias("@�ƥ��/��/������09","������09");
	SetAlias("@�ƥ��/��/������10","������10");
	SetAlias("@�ƥ��/��/������11","������11");
	SetAlias("@�ƥ��/��/������12","������12");
	SetAlias("@�ƥ��/��/������13","������13");
	SetAlias("@�ƥ��/��/������14","������14");
	SetAlias("@�ƥ��/��/������15","������15");

	Fade("@������*", 0, 0, null, false);
	Move("@������*", 0, ��λ��, ��λ��, null, false);
}


function FadeKokeshi()
{
	CreateProcess("�ץ�����", 150, 0, 0, "Loop");

}



function ProFadeKokeshi()
{





}















