$Revision: 137 $
#include "nss/function_stand.nss"
#include "nss/function_process.nss"


//���ޥ���򤵤�˥ޥ���ˤƤޤȤ�ƶ��x
//=============================================================================//
.//�ޤȤᶨ�x
//=============================================================================//
..SystemInit
function SystemInit()
{
//	$SYSTEM_text_interval = 0;
	$SYSTEM_text_interval = 48;
//	$SYSTEM_text_interval = 90;

//	$SYSTEM_text_waitkey=true;

	$SYSTEM_spt_name = $������ + $������ץȥЩ`�����;

	//��һ���i���z������ٶ��i���z��Ǥ��ޤ�ʤ��褦�ˡ�
	if(!$BGM_Init){
		if($Logo){
			//CreateTexture("�����ȥ뾯��", 100, 0, 0, "cg/sys/title/��`�ǥ���.png");
			//Fade("������", 0, 0, null, true);
			//Fade("������", 300, 1000, null, true);
		}
		InitBGM();
		$BGM_Init = true;
	}

	if(! $BOX_Init){
		LoadBox();
		SystemSet();
		$BOX_Init = true;
	}

	//Fade("�����ȥ뾯��", 300, 0, null, true);
	//Delete("�����ȥ뾯��");
}


//���ƥ����ȥܥå������ե���ȡ�������ץ��Ф褯���x�����Τ�ޥ���ˤƤޤȤ�ƶ��x��
//=============================================================================//
.//�ܥå������x
//=============================================================================//
..SystemSet
function SystemSet()
{
	//�����ٌ������
	SystemConquest();
}

..SystemConquest
function SystemConquest()
{
	//�����ٌ���
	Conquest("nss/function.nss",null,true);
	Conquest("nss/sys_config.nss",null,true);
	Conquest("nss/function_stand.nss",null,true);
	Conquest("nss/function_process.nss",null,true);

	Conquest("nss/function.nss",null,true);
	Conquest("nss/function_move.nss",null,true);
	Conquest("nss/function_select.nss",null,true);
	Conquest("nss/function_cockpit.nss",null,true);
	Conquest("nss/function_quick.nss",null,true);
	Conquest("nss/sys_hmode.nss",null,true);
}



..Box
function LoadBox()
{

	CreateName("�h��");
	SetAlias("�h��", "�h��");
	Request("�h��", Lock);
	CreateName("�h��");
	SetAlias("�h��", "�h��");
	Request("�h��", Lock);
	CreateName("�h��");
	SetAlias("�h��", "�h��");
	Request("�h��", Lock);
	CreateName("�h��");
	SetAlias("�h��", "�h��");
	Request("�h��", Lock);
	CreateName("�h��");
	SetAlias("�h��", "�h��");
	Request("�h��", Lock);
	CreateName("�h��");
	SetAlias("�h��", "�h��");
	Request("�h��", Lock);

	CreateName("����");
	SetAlias("����", "����");
	Request("����", Lock);
	CreateName("����");
	SetAlias("����", "����");
	Request("����", Lock);
	CreateName("����");
	SetAlias("����", "����");
	Request("����", Lock);
	CreateName("����");
	SetAlias("����", "����");
	Request("����", Lock);
	CreateName("����");
	SetAlias("����", "����");
	Request("����", Lock);
	CreateName("����");
	SetAlias("����", "����");
	Request("����", Lock);

	CreateWindow("box0", 20001, 0, 0, 1024, 576, false);
	SetAlias("box0", "box0");
	Request("box0", Lock);


//������
	CreateTexture("boxH", 20000, 264, InBottom, "cg/sys/adv/THTextWindow.png");
	SetAlias("boxH", "boxH");
	Fade("boxH",0,0,null,false);
	Request("boxH", Lock);
	Request("boxH", Hideable);
	Move("boxH", 0, @0, @+4, null, true);

	CreateTexture("boxTH", 20000, 224, InBottom, "cg/sys/adv/THTextWindow_Fw.png");
	SetAlias("boxTH", "boxTH");
	Fade("boxTH",0,0,null,false);
	Request("boxTH", Lock);
	Request("boxTH", Hideable);
	Move("boxTH", 0, @0, @+4, null, true);

	CreateTexture("boxAll", 20000, Center, Middle, "cg/sys/adv/fullwindow.png");
	SetAlias("boxAll", "boxAll");
	Fade("boxAll",0,0,null,false);
	Request("boxAll", Lock);
	Request("boxAll", Hideable);

	CreateTexture("boxCH", 20000, 264, middle, "cg/sys/adv/THTextWindow.png");
	SetAlias("boxCH", "boxCH");
	Fade("boxCH",0,0,null,false);
	Request("boxCH", Lock);
	Request("boxCH", Hideable);

	CreateTexture("boxCTH", 20000, 224, Middle, "cg/sys/adv/THTextWindow_Fw.png");
	SetAlias("boxCTH", "boxCTH");
	Fade("boxCTH",0,0,null,false);
	Request("boxCTH", Lock);
	Request("boxCTH", Hideable);

//�����ͨ��
	CreateTexture("boxCC", 20000, Center, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxCC", "boxCC");
	Fade("boxCC",0,0,null,false);
	Request("boxCC", Lock);
	Request("boxCC", Hideable);
	Move("boxCC", 0, @+2, @0, null, true);

//����л�Ԓ
	CreateTexture("boxCT", 20000, Center, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxCT", "boxCT");
	Fade("boxCT",0,0,null,false);
	Request("boxCT", Lock);
	Request("boxCT", Hideable);
	Move("boxCT", 0, @+2, @0, null, true);

//�҂�ͨ��
	CreateTexture("boxRR", 20000, Center, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxRR", "boxRR");
	Fade("boxRR",0,0,null,false);
	Request("boxRR", Lock);
	Request("boxRR", Hideable);

	Move("boxRR", 0, @+258, @0, null, true);


//�҂Ȼ�Ԓ
	CreateTexture("boxRT", 20000, Center, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxRT", "boxRT");
	Fade("boxRT",0,0,null,false);
	Request("boxRT", Lock);
	Request("boxRT", Hideable);

	Move("boxRT", 0, @+258, @0, null, true);

//���ͨ��
	CreateTexture("boxLL", 20000, Center, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxLL", "boxLL");
	Fade("boxLL",0,0,null,false);
	Request("boxLL", Lock);
	Request("boxLL", Hideable);

	Move("boxLL", 0, @-254, @0, null, true);

//��Ȼ�Ԓ
	CreateTexture("boxLT", 20000, Center, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxLT", "boxLT");
	Fade("boxLT",0,0,null,false);
	Request("boxLT", Lock);
	Request("boxLT", Hideable);

	Move("boxLT", 0, @-254, @0, null, true);

//����
	CreateTexture("boxNoh", 20000, 264, Middle, "cg/sys/adv/THTextWindow.png");
	SetAlias("boxNoh", "boxNoh");
	Fade("boxNoh",0,0,null,false);
	Request("boxNoh", Lock);
	Request("boxNoh", Hideable);

	CreateTexture("boxTNoh", 20000, 224, Middle, "cg/sys/adv/THTextWindow_Fw.png");
	SetAlias("boxTNoh", "boxTNoh");
	Fade("boxTNoh",0,0,null,false);
	Request("boxTNoh", Lock);
	Request("boxTNoh", Hideable);


..//backupλ������ǰ��09/01/28��
/*
//�����ͨ��
	CreateTexture("boxCC", 20000, 447, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxCC", "boxCC");
	Fade("boxCC",0,0,null,false);
	Request("boxCC", Lock);
	Request("boxCC", Hideable);

//����л�Ԓ
	CreateTexture("boxCT", 20000, 447, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxCT", "boxCT");
	Fade("boxCT",0,0,null,false);
	Request("boxCT", Lock);
	Request("boxCT", Hideable);

//�҂�ͨ��
	CreateTexture("boxRR", 20000, 597, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxRR", "boxRR");
	Fade("boxRR",0,0,null,false);
	Request("boxRR", Lock);
	Request("boxRR", Hideable);

//�҂Ȼ�Ԓ
	CreateTexture("boxRT", 20000, 597, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxRT", "boxRT");
	Fade("boxRT",0,0,null,false);
	Request("boxRT", Lock);
	Request("boxRT", Hideable);

//���ͨ��
	CreateTexture("boxLL", 20000, 297, 40, "cg/sys/adv/TextWindow.png");
	SetAlias("boxLL", "boxLL");
	Fade("boxLL",0,0,null,false);
	Request("boxLL", Lock);
	Request("boxLL", Hideable);

//��Ȼ�Ԓ
	CreateTexture("boxLT", 20000, 297, 0, "cg/sys/adv/TextWindow_Fw.png");
	SetAlias("boxLT", "boxLT");
	Fade("boxLT",0,0,null,false);
	Request("boxLT", Lock);
	Request("boxLT", Hideable);
*/


//����ʤ���
/*
//�룺�k����
	LoadFont("�ե���ȣ���", "@����", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "�����������������������������������ĤƤȤʤˤ̤ͤΤϤҤդؤۤޤߤ�������������󤬤��������������������¤ŤǤɤФӤ֤٤ܤѤԤפڤݤ����������ä��祢���������������������������������ĥƥȥʥ˥̥ͥΥϥҥեإۥޥߥ�������������󥬥��������������������¥ťǥɥХӥ֥٥ܥѥԥץڥݥ����������å��硢���`�������D������������");
	Request("�ե���ȣ���", Lock);

	LoadFont("�ե���ȣ���", "@����", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "һ���Ք�ζ��˼���Еr��Ҋ���˽K�ü�");
	Request("�ե���ȣ���", Lock);

	LoadFont("�ե���ȣ���", "@����", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "���˾ũ���ʽ�o�T����̫������򄫃������������w����������y�������y�Ǻžc��һ�����B����֦�����衩�����L�o�����}����ͯ�Ī{�Ӻ�ѩ܇���Ļ�������_�Ҵ�͹��ռ��늴ų�����\ɫ�ǣȣ�");
	Request("�ե���ȣ���", Lock);

//�룺�����
	LoadFont("�ե���ȣ���", "����", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "�����������������������������������ĤƤȤʤˤ̤ͤΤϤҤդؤۤޤߤ�������������󤬤��������������������¤ŤǤɤФӤ֤٤ܤѤԤפڤݤ����������ä��祢���������������������������������ĥƥȥʥ˥̥ͥΥϥҥեإۥޥߥ�������������󥬥��������������������¥ťǥɥХӥ֥٥ܥѥԥץڥݥ����������å��硢���`�������D������������");
	Request("�ե���ȣ���", Lock);

	LoadFont("�ե���ȣ���", "����", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "һ���Ք�ζ��˼���Еr��Ҋ���˽K�ü�");
	Request("�ե���ȣ���", Lock);

	LoadFont("�ե���ȣ���", "����", 20, #FFFFFF, #222222, 500, RIGHTDOWN, "���˾ũ���ʽ�o�T����̫������򄫃������������w����������y�������y�Ǻžc��һ�����B����֦�����衩�����L�o�����}����ͯ�Ī{�Ӻ�ѩ܇���Ļ�������_�Ҵ�͹��ռ��늴ų�����\ɫ�ǣȣ�");
	Request("�ե���ȣ���", Lock);
*/

/*
	//�Ԅ������ͤ�ϵ
	LoadImage("imgAutoText","cg/sys/icon/ico_auto.png");
	CreateTexture("iconAutoText",20000,$SYSTEM_position_x_text_icon,$SYSTEM_position_y_text_icon,"imgAutoText");
	SetAlias("iconAutoText","iconAutoText");
	Fade("iconAutoText",0,0,null,false);
	CreateProcess("�Ԅ������ͤꥢ���������",150,0,0,"procAutoIcon");
	Request("�Ԅ������ͤꥢ���������",Start);
	Request("imgAutoText",Lock);
	Request("iconAutoText",Lock);
	Request("�Ԅ������ͤꥢ���������",Lock);
*/

}

//���^�Υᥤ�󥲩`���ڤˤƶ��x
function GameMainSet()
{
	//�ǥХå���������ڻ�
//	$DEBUG_cgbglist="";
}
function GameMainSet2()
{
//	Save(5000);

	//���ȫ�i���O�����
	//Conquest($ConGameName,$GameName,true);
	Conquest($ConGameName,$GameName2,true);

	//���`�֥ե������5000�ե�����ˡ����`�����Υե����������¤�����
//	$DEBUG_savepath=String("%s/5000/%s.txt",#SYSTEM_save_path,$GameName);
//	WriteFile($DEBUG_savepath,$DEBUG_cgbglist,false);
//	$DEBUG_cgbglist="";
}
//�������λ����ã�ð�^�����z����
function ReConquest()
{
	Conquest($ConGameName,$PreGameName,true);
}



function DEBUG_cgbgcorrect($filename)
{
	if(Strstr($filename,"bg")&&!Strstr($DEBUG_cgbglist,$filename)){
		//�ե���������'bg'�Ȥ��������Ф����ꡢ�ʤ����ĳ�Ҋ�Έ��Ϥϥꥹ�Ȥ�׷��
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}else if(Strstr($filename,"ev")&&!Strstr($DEBUG_cgbglist,$filename)){
		//�ե���������'ev'�Ȥ��������Ф����ꡢ�ʤ����ĳ�Ҋ�Έ��Ϥϥꥹ�Ȥ�׷��
		$DEBUG_cgbglist=$DEBUG_cgbglist+$filename;
	}
}


..procAutoIcon
function procAutoIcon()
{
	$procAutoIcon_last=$SYSTEM_text_auto;
	while(1){
		if($SYSTEM_text_auto&&$procAutoIcon_last!=$SYSTEM_text_auto){
			Fade("@iconAutoText",0,0,null,false);
			Fade("@iconAutoText",150,1000,null,false);
		}else if(!$SYSTEM_text_auto){
			Fade("@iconAutoText",150,0,null,false);
		}
		$procAutoIcon_last=$SYSTEM_text_auto;
		Wait(300);
	}
}


//��������ץȤˤ����ƥƥ����Ȥ��x����ޥ����ޥ��
//=============================================================================//
.//�ƥ����ȶ��x
//=============================================================================//
//�ƥ����ȥ��������;�Фǉ䤨�������ϤϤ�ʹ����������
..TextIconSet()
function TextIconSet()
{
	//����
	$SYSTEM_text_icon_line="cg/sys/icon/line/�����ͤꥢ������%04d.png#5";
	//�ĥک`��
	$SYSTEM_text_icon_page="cg/sys/icon/page/�����ͤꥢ������%04d.png#5";
	//�Ԅ������ͤ�
	$SYSTEM_text_icon_auto="cg/sys/icon/auto/AUTO��������%02d.png#5";
}
function TextIconSet2()
{
	//����
	$SYSTEM_text_icon_line="cg/sys/icon/line2/�����ͤꥢ������%04d.png#12";
	//�ĥک`��
	$SYSTEM_text_icon_page="cg/sys/icon/page2/�����ͤꥢ������%04d.png#12";
	//�Ԅ������ͤ�
	$SYSTEM_text_icon_auto="cg/sys/icon/auto2/�����ͤꥢ������%04d.png#12";
}

//�����ɥ��B�Ӱ�
..SetTextEXC(Center)
function SetTextEXC()
{

	//LockVideo(true);

	SetFont("@����", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwC_text_Window==true){
//�����ɥ�����	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 575, 134, null, true);
	}else{
//�����ɥ�����
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 575, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

..SetTextEXR(Right)
function SetTextEXR()
{

	//LockVideo(true);

	SetFont("@����", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwR_text_Window==true){
//�����ɥ�����	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 831, 134, null, true);
	}else{
//�����ɥ�����
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 831, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

..SetTextEXL(Left)
function SetTextEXL()
{

	//LockVideo(true);

	SetFont("@����", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwL_text_Window==true){
//�����ɥ�����
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 320, 134, null, true);
	}else{
//�����ɥ�����
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 320, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

..SetTextA(ALL)
function SetTextA()
{
	//LockVideo(true);

	SetFont("@����", 20, #FFFFFF, #000000, 500, RIGHTDOWN);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",1024,576,1,40);

	SetVertex("$SYSTEM_present_text", 0, 0);
	Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
	Move("$SYSTEM_present_text", 0, 800, 10, null, true);

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

//���
..SetTextAH
function SetTextAH()
{

	//LockVideo(true);

	SetFont("����", 20, #FFFFFF, #000000, 500, RIGHTUP);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",500,500,0,21);

		SetVertex("$SYSTEM_present_text", 0, 0);

	if($FwH_text_Window==true){
		Move("$SYSTEM_present_text", 0, 170, 75, null, true);
	}else{
		Move("$SYSTEM_present_text", 0, 170, 75, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

//ͨ��������ɥ���
..SetTextEXH
function SetTextEXH()
{

	//LockVideo(true);

	SetFont("����", 20, #FFFFFF, #222222, 500, RIGHTDOWN);

	SetVertex("$SYSTEM_present_text", 0, 0);

	if($FwH_text_Window==true){
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",500,150,0,28);
		Move("$SYSTEM_present_text", 0, 365, 449, null, true);
	}else{
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",520,150,0,28);
		Move("$SYSTEM_present_text", 0, 286, 449, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

..SetTextA(ALL)
function SetTextEXAH()
{

	//LockVideo(true);

	SetFont("����", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",1024,576,1,28);

	SetVertex("$SYSTEM_present_text", 0, 0);
	Move("$SYSTEM_present_text", 0, 256, 100, null, true);

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

//�������������ã�
..SetTextEXCH
function SetTextEXCH()
{

	//LockVideo(true);

	SetFont("����", 20, #FFFFFF, #222222, 500, RIGHTDOWN);

	SetVertex("$SYSTEM_present_text", 0, 0);

	if($FwNoh_text_Window==true){
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",440,150,0,28);
		Move("$SYSTEM_present_text", 0, 365, 222, null, true);
	}else{
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",520,150,0,28);
		Move("$SYSTEM_present_text", 0, 286, 222, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

..//���룺color�����Υ��󥿩`�ƥ����ȡ�
..SetTextEXC(Center)
function SetTextEXCColor($�ƥ����ȥ���`�O��)
{

	//LockVideo(true);

	SetFont("@����", 20, $�ƥ����ȥ���`�O��, #000000, 500, RIGHTDOWN);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwC_text_Window==true){
//�����ɥ�����	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 575, 134, null, true);
	}else{
//�����ɥ�����
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 575, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

//�����ɥ��B�Ӱ�
..SetTextEXhyperR(Right)
function SetTextEXhyperR()
{

	//LockVideo(true);

	SetFont("@����", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwR_text_Window==true){
//�����ɥ�����	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 818, 134, null, true);
	}else{
//�����ɥ�����
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 789, 38, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}



..//backupλ������ǰ��09/01/28��
/*
//�����ɥ��B�Ӱ�
...SetTextEXC(Center)
function SetTextEXC()
{

	SetFont("@����", 20, #FFFFFF, #000000, 500, NONE);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwC_text_Window==true){
//�����ɥ�����	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 572, 134, null, true);
	}else{
//�����ɥ�����
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 572, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

...SetTextEXR(Right)
function SetTextEXR()
{

	SetFont("@����", 20, #FFFFFF, #000000, 500, NONE);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwR_text_Window==true){
//�����ɥ�����	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 722, 134, null, true);
	}else{
//�����ɥ�����
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 722, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

...SetTextEXL(Left)
function SetTextEXL()
{

	SetFont("@����", 20, #FFFFFF, #000000, 500, NONE);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",550,150,0,27);

	if($FwL_text_Window==true){
//�����ɥ�����	
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 422, 134, null, true);
	}else{
//�����ɥ�����
		SetVertex("$SYSTEM_present_text", 0, 0);
		Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
		Move("$SYSTEM_present_text", 0, 422, 55, null, true);
	}

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

...SetTextA(ALL)
function SetTextA()
{
	SetFont("@����", 20, #FFFFFF, #000000, 500, NONE);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",1024,576,1,40);

	SetVertex("$SYSTEM_present_text", 0, 0);
	Rotate("$SYSTEM_present_text", 0, @0, @0, 90, null,true);
	Move("$SYSTEM_present_text", 0, 800, 10, null, true);

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

//���
...SetTextAH
function SetTextAH()
{
	SetFont("����", 18, #000000, #FFFFFF, 500, RIGHTUP);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",421,500,0,21);

	SetVertex("$SYSTEM_present_text", 0, 0);
	Move("$SYSTEM_present_text", 0, 210, 75, null, true);

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

//ͨ��������ɥ���
...SetTextH
function SetTextH()
{
	SetFont("����", 18, #000000, #FFFFFF, 500, RIGHTUP);
	LoadText("$������","$SYSTEM_present_preprocess","$SYSTEM_present_text",421,500,0,21);

	SetVertex("$SYSTEM_present_text", 0, 0);
	Move("$SYSTEM_present_text", 0, 190, 459, null, true);

	Request("$SYSTEM_present_text", Lock);
	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

}

*/


//�����x�����ƥ����Ȥ�λ�ä�ޤȤ���{��
//=============================================================================//
.//�ƥ�����λ���a��
//=============================================================================//
//��ؤϟo��







//���ܥå������軭����Τȥƥ����Ȥ򥿥��ԥ󥰤��������ޤȤ�ƌg�Ф���ޥ���
//=============================================================================//
.//�����ԥ󥰥ޥ���
//=============================================================================//
/*======================*/
..//�ƥ�����(Once����`��)
/*======================*/
//======================================================//
...TypeBeginOnceI
//======================================================//
function TypeBeginOnceI()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//����ʾ�ե饰
			$FwC_text_Window_begin=false;
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,800,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

}

function TypeBeginOnceIFO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//����ʾ�ե饰
			$FwC_text_Window_begin=false;
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,800,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	DeleteFwC($BoxFadeTime,false);

}

...TypeBeginOnceO
function TypeBeginOnceO($BoxFadeTime)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwC_text_Window==true){
		DeleteFwC($BoxFadeTime,false);
		$FwC_text_Window=false;
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}

}

...TypeBeginOnceIO
function TypeBeginOnceIO($BoxFadeTime)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
			$FwC_text_Window_begin=false;
			FadeFwC(150,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,800,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwC_text_Window==true){
		DeleteFwC($BoxFadeTime,false);
		$FwC_text_Window=false;
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}


}

..///////////////////////
/*==============*/
..//��������Typebegin
/*==============*/
..///////////////////////
/*==============*/
...//��Center
/*==============*/
//======================================================//
....TypeBeginCI
//======================================================//
function TypeBeginCI()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//����ʾ�ե饰
			$FwC_text_Window_begin=false;
//�����ó��ڻ��ե饰
			$����="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

//======================================================//
....TypeBeginCIFO
//======================================================//
function TypeBeginCIFO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//����ʾ�ե饰
			$FwC_text_Window_begin=false;
//�����ó��ڻ��ե饰
			$����="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	$FaceWindow_Change = false;
	Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
	DeleteFwC($BoxFadeTime,false);

	Request("@Face_Sepia", Disused);

	BoxOut();

}

//======================================================//
....TypeBeginCO
//======================================================//
function TypeBeginCO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwC_text_Window==true){
		$FaceWindow_Change = false;
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwC($BoxFadeTime,false);
		Fade("@boxC*",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

//======================================================//
....TypeBeginCIO
//======================================================//
function TypeBeginCIO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
			$FwC_text_Window_begin=false;
//�����ó��ڻ��ե饰
			$�����ж�="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwC_text_Window==true){
	$FaceWindow_Change = false;
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwC($BoxFadeTime,false);
		Fade("@boxC*",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

/*=====*/
...//��RIGHT
/*=====*/

....TypeBeginRI
function TypeBeginRI()
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
//�����ó��ڻ��ե饰
			$����="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginRIFO
function TypeBeginRIFO()
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
//�����ó��ڻ��ե饰
			$����="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	$FaceWindow_Change = false;
	Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
	DeleteFwR($BoxFadeTime,false);
	Request("@Face_Sepia", Disused);
	BoxOut();

}

....TypeBeginRO
function TypeBeginRO()
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwR_text_Window==true){
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwR($BoxFadeTime,false);
		Fade("@boxRT",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxRR",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

....TypeBeginRIO
function TypeBeginRIO()
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
//�����ó��ڻ��ե饰
			$�����ж�="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}


	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwR_text_Window==true){
	$FaceWindow_Change = false;
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwR($BoxFadeTime,false);
		Fade("@boxRT",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxRR",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

/*=====*/
...//��LEFT
/*=====*/

....TypeBeginLI
function TypeBeginLI()
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
//�����ó��ڻ��ե饰
			$����="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwL($BoxFadeTime,false);
		Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginLIFO
function TypeBeginLIFO()
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL($BoxFadeTime,false);
		Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwL($BoxFadeTime,false);

	BoxOut();

}

....TypeBeginLO
function TypeBeginLO()
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwL_text_Window==true){
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwL($BoxFadeTime,false);
		Fade("@boxLT",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxLL",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

....TypeBeginLIO
function TypeBeginLIO()
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
//�����ó��ڻ��ե饰
			$�����ж�="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwL(150,false);
			Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwL_text_Window==true){
	$FaceWindow_Change = false;
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwL($BoxFadeTime,false);
		Fade("@boxLT",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxLL",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

..//����+�r�g�O�������ʤ�
/*==============*/
...//��Center
/*==============*/
//======================================================//
....TypeBeginTimeCI
//======================================================//
function TypeBeginTimeCI($TBFI_time)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//����ʾ�ե饰
			$FwC_text_Window_begin=false;
//�����ó��ڻ��ե饰
//			$����="";
//�����åե��`��
//			Fade("@Face_Sepia", 0, 300, null, false);

			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

//======================================================//
....TypeBeginTimeCIFO
//======================================================//
function TypeBeginTimeCIFO($TBFI_time)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=$TBFI_time;
	$BoxFadeTimeSub=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//����ʾ�ե饰
			$FwC_text_Window_begin=false;

//�����ó��ڻ��ե饰
			$����="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwC($BoxFadeTimeSub,false);

	BoxOut();

}

//======================================================//
....TypeBeginTimeCO
//======================================================//
function TypeBeginTimeCO($TBFO_time)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=$TBFO_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwC_text_Window==true){
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteComic();
		DeleteFwC($BoxFadeTime,false);
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxC*",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

//======================================================//
....TypeBeginTimeCIO
//======================================================//
function TypeBeginTimeCIO($TBFI_time,$TBFO_time)
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
			$FwC_text_Window_begin=false;

//�����ó��ڻ��ե饰
			$����="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);

			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwC_text_Window==true){
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteComic();
		DeleteFwC($TBFO_time,false);
		Fade("@boxC*",$TBFO_time,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxC*",$TBFO_time,0,null,true);
	}

	BoxOut();

}

/*=====*/
...//��RIGHT
/*=====*/

....TypeBeginTimeRI
function TypeBeginTimeRI($TBFI_time)
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginTimeRIFO
function TypeBeginTimeRIFO($TBFI_time)
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;
	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwR($BoxFadeTime,false);

	BoxOut();

}

....TypeBeginTimeRO
function TypeBeginTimeRO($TBFI_time)
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;
	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwR_text_Window==true){

	DeleteComic();
		DeleteFwR($BoxFadeTime,false);
		Fade("@boxRT",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxRR",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

....TypeBeginTimeRIO
function TypeBeginTimeRIO($TBFI_time,$TBFO_time)
{

//�ƥ�����λ������ǰ��09/01/28��
//	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_x_text_icon = 706;
	$SYSTEM_position_y_text_icon = 555;
	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
			FadeFwR($BoxFadeTime,false);
			Fade("@boxRR",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxRR",$BoxFadeTime,1000,null,true);
	}


	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwR_text_Window==true){

		DeleteComic();
		DeleteFwR($TBFO_time,false);
		Fade("@boxRT",$TBFO_time,0,null,true);
	}else{
		Fade("@boxRR",$TBFO_time,0,null,true);
	}

	BoxOut();

}

/*=====*/
...//?LEFT
/*=====*/

....TypeBeginTimeLI
function TypeBeginTimeLI($TBFI_time)
{

	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL($BoxFadeTime,false);
		Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);


}

....TypeBeginTimeLIFO
function TypeBeginTimeLIFO($TBFO_time)
{

	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=$TBFO_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL($BoxFadeTime,false);
		Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwL($BoxFadeTime,false);

	BoxOut();

}

....TypeBeginTimeLO
function TypeBeginTimeLO($TBFO_time)
{

	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=$TBFO_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwL_text_Window==true){
		DeleteComic();
		DeleteFwL($BoxFadeTime,false);
		Fade("@boxLT",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxLL",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}

....TypeBeginTimeLIO
function TypeBeginTimeLIO($TBFI_time,$TBFO_time)
{

	$SYSTEM_position_x_text_icon = 194;
	$SYSTEM_position_y_text_icon = 555;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL($BoxFadeTime,false);
			Fade("@boxLL",$BoxFadeTime,0,null,false);
		}
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxLL",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwL_text_Window==true){
		DeleteComic();
		DeleteFwL($TBFO_time,false);
		Fade("@boxLT",$TBFO_time,0,null,true);
	}else{
		Fade("@boxLL",$TBFO_time,0,null,true);
	}

	BoxOut();

}

/*=====*/
...//?H
/*=====*/
....TypeBeginHI
function TypeBeginHI()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
//����ʾ�ե饰
//�����ó��ڻ��ե饰
			$�����ж�="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			$FwH_text_Window_begin=false;
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginHO
function TypeBeginHO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwH_text_Window==true){
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH*",$BoxFadeTime,0,null,true);
	}


}

//======================================================//
....TypeBeginHIFO
//======================================================//
function TypeBeginHIFO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
//����ʾ�ե饰
			$FwH_text_Window_begin=false;
//�����ó��ڻ��ե饰
			$����="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	$FaceWindow_Change = false;
	Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
	DeleteFwH($BoxFadeTime,false);

	Request("@Face_Sepia", Disused);

	BoxOut();

}

//======================================================//
....TypeBeginHIO
//======================================================//
function TypeBeginHIO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
			$FwH_text_Window_begin=false;
//�����ó��ڻ��ե饰
			$����="";
//�����åե��`��
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwH_text_Window==true){
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxTH",$BoxFadeTime,0,null,true);
		Fade("@boxH*",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxH*",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}


/*=====*/
...//��TimeH
/*=====*/
....TypeBeginTimeHI
function TypeBeginTimeHI($TBFI_time)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
//����ʾ�ե饰
			$FwH_text_Window_begin=false;
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginTimeHO
function TypeBeginTimeHO($TBFI_time)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwH_text_Window==true){
	DeleteComic();
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH*",$BoxFadeTime,0,null,true);
	}


}

//======================================================//
....TypeBeginTimeHIFO
//======================================================//
function TypeBeginTimeHIFO($TBFO_time)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=$TBFO_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
//����ʾ�ե饰
			$FwH_text_Window_begin=false;
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwH($BoxFadeTime,false);

	BoxOut();

}


....TypeBeginTimeHIO
function TypeBeginTimeHIO($TBFI_time,$TBFO_time)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 554;

	$BoxFadeTime=$TBFI_time;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
			$FwH_text_Window_begin=false;
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwH_text_Window==true){
	DeleteComic();
		DeleteFwH($TBFO_time,false);
		Fade("@boxTH",$TBFO_time,0,null,true);
		Fade("@boxH",$TBFO_time,0,null,true);
	}else{
		Fade("@boxTH",$TBFO_time,0,null,true);
		Fade("@boxH",$TBFO_time,0,null,true);
	}

}

/*=====*/
...//?NOH
/*=====*/
....TypeBeginNOHI
function TypeBeginNOHI()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 329;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwNoh_text_Window==true){
		if($FwNoh_text_Window_begin==true){
//����ʾ�ե饰
			$FwNoh_text_Window_begin=false;
			FadeFwNoh($BoxFadeTime,false);
			Fade("@boxNoh",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTNoh",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTNoh",$BoxFadeTime,0,null,false);
		Fade("@boxNoh",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginNOHO
function TypeBeginNOHO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 329;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwNoh_text_Window==true){
	DeleteComic();
		DeleteFwNoh($BoxFadeTime,false);
		Fade("@boxTNoh",$BoxFadeTime,0,null,false);
		Fade("@boxNoh",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxTNoh",$BoxFadeTime,0,null,false);
		Fade("@boxNoh",$BoxFadeTime,0,null,true);
	}


}

//======================================================//
....TypeBeginNOHIFO
//======================================================//
function TypeBeginNOHIFO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 329;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwNoh_text_Window==true){
		if($FwNoh_text_Window_begin==true){
//����ʾ�ե饰
			$FwNoh_text_Window_begin=false;
			FadeFwNoh($BoxFadeTime,false);
			Fade("@boxNoh",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTNoh",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTNoh",$BoxFadeTime,0,null,false);
		Fade("@boxNoh",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwNoh($BoxFadeTime,false);

	BoxOut();

}

//======================================================//
....TypeBeginNOHIO
//======================================================//
function TypeBeginNOHIO()
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 329;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwNoh_text_Window==true){
		if($FwNoh_text_Window_begin==true){
			$FwNoh_text_Window_begin=false;
			FadeFwNoh($BoxFadeTime,false);
			Fade("@boxNoh",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTNoh",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTNoh",$BoxFadeTime,0,null,false);
		Fade("@boxNoh",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwNoh_text_Window==true){
	DeleteComic();
		DeleteFwNoh($BoxFadeTime,false);
		Fade("@boxTNoh",$BoxFadeTime,0,null,true);
		Fade("@boxNoh",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxTNoh",$BoxFadeTime,0,null,true);
		Fade("@boxNoh",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}



/*=====*/
...//?AH
/*=====*/
....TypeBeginAHI
function TypeBeginAHI()
{

	$SYSTEM_position_x_text_icon = 756;
	$SYSTEM_position_y_text_icon = 540;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	$BoxFadeTime=150;

	Fade("@boxAll",$BoxFadeTime,1000,null,true);

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	BoxOut();

}

....TypeBeginAHO
function TypeBeginAHO()
{

	$SYSTEM_position_x_text_icon = 756;
	$SYSTEM_position_y_text_icon = 540;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	$BoxFadeTime=150;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);
	Fade("@boxAll",$BoxFadeTime,0,null,true);

	BoxOut();

}

//======================================================//
....TypeBeginAHIO
function TypeBeginAHIO()
{

	$SYSTEM_position_x_text_icon = 756;
	$SYSTEM_position_y_text_icon = 540;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	$BoxFadeTime=150;

	Fade("@boxAll",$BoxFadeTime,1000,null,true);

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);
	Fade("@boxAll",$BoxFadeTime,0,null,true);

	BoxOut();

}



...//����I����
//======================================================//
....TypeBeginEXIO
//======================================================//
function TypeBeginEXIO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
//����ʾ�ե饰
			$FwC_text_Window_begin=false;
			FadeFwC($BoxFadeTime,false);
			Fade("@boxCC",$BoxFadeTime,0,null,false);
		}
		Fade("@boxRT",$BoxFadeTime,1000,null,false);
		Fade("@boxCT",$BoxFadeTime,1000,null,false);
		Fade("@boxLT",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Request("@text01", Disused);
	Request("@text02", Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwL_text_Window==true){
		DeleteFwC($BoxFadeTime,false);
		Fade("@FwR*",$BoxFadeTime,0,null,false);
		Fade("@FwL*",$BoxFadeTime,0,null,false);
		Fade("@boxRT",$BoxFadeTime,0,null,false);
		Fade("@boxLT",$BoxFadeTime,0,null,false);
		Fade("@boxCT",$BoxFadeTime,0,null,true);
		Delete("@Fw*");
		$FwR_text_Window=false;
		$FwL_text_Window=false;
	}else{
		Fade("@boxLL",$BoxFadeTime,0,null,true);
	}

	BoxOut();

}


/*=====*/
...//��CH
/*=====*/
....TypeBeginCHI
function TypeBeginCHI($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 330;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
//����ʾ�ե饰
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

//�룺���ڻ�
	$FadeTimeCenterText = -1;

	BoxOut();

}

....TypeBeginCHO
function TypeBeginCHO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 330;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	$FadeTimeCenterText = -1;

	if($FwCH_text_Window==true){
	DeleteComic();
		DeleteFwCH($BoxFadeTime,false);
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}


}

//======================================================//
....TypeBeginCHIFO
//======================================================//
function TypeBeginCHIFO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 330;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
//����ʾ�ե饰
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwCH($BoxFadeTime,false);

	$FadeTimeCenterText = -1;

	BoxOut();

}

//======================================================//
....TypeBeginCHIO
//======================================================//
function TypeBeginCHIO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 330;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwCH_text_Window==true){
	DeleteComic();
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxCTH",$BoxFadeTime,0,null,true);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,true);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}

	$FadeTimeCenterText = -1;

	BoxOut();

}

/*=====*/
...//��CIconI
/*=====*/
....TypeBeginCIconI
function TypeBeginCIconI($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 580;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
//����ʾ�ե饰
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

//�룺���ڻ�
	$FadeTimeCenterText = -1;

	BoxOut();

}

....TypeBeginCIconO
function TypeBeginCIconO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 580;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	$FadeTimeCenterText = -1;

	if($FwCH_text_Window==true){
	DeleteComic();
		DeleteFwCH($BoxFadeTime,false);
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}


}

//======================================================//
....TypeBeginCIconIFO
//======================================================//
function TypeBeginCIconIFO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 580;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
//����ʾ�ե饰
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	DeleteComic();
	DeleteFwCH($BoxFadeTime,false);

	$FadeTimeCenterText = -1;

	BoxOut();

}

//======================================================//
....TypeBeginCIconIO
//======================================================//
function TypeBeginCIconIO($FadeTimeCenterText)
{

	$SYSTEM_position_x_text_icon = 776;
	$SYSTEM_position_y_text_icon = 580;

//	$BoxFadeTime=150;

	if($FadeTimeCenterText>=0){$BoxFadeTime = $FadeTimeCenterText;}
	else{$BoxFadeTime = 150;}

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwCH_text_Window==true){
		if($FwCH_text_Window_begin==true){
			$FwCH_text_Window_begin=false;
			FadeFwCH($BoxFadeTime,false);
			Fade("@boxCH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxCTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,false);
		Fade("@boxCH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwCH_text_Window==true){
	DeleteComic();
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxCTH",$BoxFadeTime,0,null,true);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}else{
		Fade("@boxCTH",$BoxFadeTime,0,null,true);
		Fade("@boxCH*",$BoxFadeTime,0,null,true);
	}

	$FadeTimeCenterText = -1;

	BoxOut();

}



..///////////////////_end
..//�ƥ����äˤĤ��˱�
/*======================*/

/*=====*/
...//��Center
/*=====*/
/*
//======================================================//
....TypeBeginCI
//======================================================//
function TypeBeginCI()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	WaitText($textnumber, null);

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
			$FwC_text_Window_begin=false;
			FadeFwC(150,false);
		}
		Fade("@boxCT",150,800,null,true);
	}else{
		Fade("@boxCC",150,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);


}

....TypeBeginCO
function TypeBeginCO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwC_text_Window==true){
		DeleteFwC(150,false);
		$FwC_text_Window=false;
		Fade("@boxCT",150,0,null,true);
	}else{
		Fade("@boxCC",150,0,null,true);
	}

}

....TypeBeginCIO
function TypeBeginCIO()
{

	$SYSTEM_position_x_text_icon = 452;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwC_text_Window==true){
		if($FwC_text_Window_begin==true){
			$FwC_text_Window_begin=false;
			FadeFwC(300,false);
		}
		Fade("@boxCT",150,800,null,true);
	}else{
		Fade("@boxCC",150,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwC_text_Window==true){
		DeleteFwC(300,false);
		$FwC_text_Window=false;
		Fade("@boxCT",150,0,null,true);
	}else{
		Fade("@boxCC",150,0,null,true);
	}


}

/*=====*/
...//?RIGHT
/*=====*/

....TypeBeginRI
function TypeBeginRI()
{

	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
			FadeFwR(150,false);
		}
		Fade("@boxRT",150,800,null,true);
	}else{
		Fade("@boxRR",150,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

}

....TypeBeginRO
function TypeBeginRO()
{

	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwR_text_Window==true){
		DeleteFwR(150,false);
		$FwR_text_Window=false;
		Fade("@boxRT",150,0,null,true);
	}else{
		Fade("@boxRR",150,0,null,true);
	}

}

....TypeBeginRIO
function TypeBeginRIO()
{

	$SYSTEM_position_x_text_icon = 602;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwR_text_Window==true){
		if($FwR_text_Window_begin==true){
			$FwR_text_Window_begin=false;
			FadeFwR(150,false);
		}
		Fade("@boxRT",150,800,null,true);
	}else{
		Fade("@boxRR",150,800,null,true);
	}


	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwR_text_Window==true){
		DeleteFwR(150,false);
		$FwR_text_Window=false;
		Fade("@boxRT",150,0,null,true);
	}else{
		Fade("@boxRR",150,0,null,true);
	}
}

/*=====*/
...//?LEFT
/*=====*/

....TypeBeginLI
function TypeBeginLI()
{

	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL(150,false);
		}
		Fade("@boxLT",150,800,null,true);
	}else{
		Fade("@boxLL",150,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);


}

....TypeBeginLO
function TypeBeginLO()
{

	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwL_text_Window==true){
		DeleteFwL(150,false);
		$FwL_text_Window=false;
		Fade("@boxLT",150,0,null,true);
	}else{
		Fade("@boxLL",150,0,null,true);
	}
}

....TypeBeginLIO
function TypeBeginLIO()
{

	$SYSTEM_position_x_text_icon = 302;
	$SYSTEM_position_y_text_icon = 550;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwL_text_Window==true){
		if($FwL_text_Window_begin==true){
			$FwL_text_Window_begin=false;
			FadeFwL(150,false);
		}
		Fade("@boxLT",150,800,null,true);
	}else{
		Fade("@boxLL",150,800,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);

	if($FwL_text_Window==true){
		DeleteFwL(150,false);
		$FwL_text_Window=false;
		Fade("@boxLT",150,0,null,true);
	}else{
		Fade("@boxLL",150,0,null,true);
	}
}

*/

/*=====*/
..//?ALL
/*=====*/
...TypeBeginAI
function TypeBeginAI()
{

	$SYSTEM_position_x_text_icon = 193;
	$SYSTEM_position_y_text_icon = 500;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

//	Fade("@boxAll",150,800,null,true);

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, NoIcon);
	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
//	Fade("@boxCC",150,0,null,true);
}

...TypeBeginAO
function TypeBeginAO()
{

	$SYSTEM_position_x_text_icon = 333;
	$SYSTEM_position_y_text_icon = 560;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade("@boxAll",150,0,null,true);
}

...TypeBeginAIO
function TypeBeginAIO()
{

	$SYSTEM_position_x_text_icon = 333;
	$SYSTEM_position_y_text_icon = 560;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	Fade("@boxAll",150,800,null,true);

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade("@boxAll",150,0,null,true);
}

/*=====*/
..//?CenterS
/*=====*/
...TypeBeginCSI
function TypeBeginCSI()
{

	$SYSTEM_position_x_text_icon = 333;
	$SYSTEM_position_y_text_icon = 560;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	Fade("@boxCC",150,800,null,true);

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	#SYSTEM_text_speed = 0;

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
//	Fade("@boxCC",150,0,null,true);
}


..���٥�`�ɣ��ܥå����ڣ�
function BoxOut()
{
	#SYSTEM_skip_express_minimum_time=0;


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}

		SetVolume("@*", 0, 0, NULL);

		ClearFadeAll(0,true);

		Fade("@�ե�`��", 0, 0, null, true);
		Fade("@box11",0,0,null,true);
		Fade("@boxCC", 0, 0, null, true);
		Fade("@boxCT", 0, 0, null, true);
		Fade("@boxRR", 0, 0, null, true);
		Fade("@boxRT", 0, 0, null, true);
		Fade("@boxLL", 0, 0, null, true);
		Fade("@boxLT", 0, 0, null, true);

		Fade("@boxH", 0, 0, null, true);
		Fade("@boxAll", 0, 0, null, true);

		Fade("@boxTH", 0, 0, null, true);
		Fade("@boxTNoh", 0, 0, null, true);
	
		Fade("@boxNoh", 0, 0, null, true);
		Fade("@boxCTH", 0, 0, null, true);
	
		//�����ɥ��ޥ���ե饰���ڻ�
		$FwC_text_Window = false;
		$FwR_text_Window = false;
		$FwL_text_Window = false;
		$FwH_text_Window = false;
		$FwNoh_text_Window = false;
	
		//�����ɥ��ޥ�����ڥե饰���ڻ�
		$FwC_text_Window_begin = false;
		$FwR_text_Window_begin = false;
		$FwL_text_Window_begin = false;
		$FwH_text_Window_begin = false;
		$FwNoh_text_Window_begin = false;
	
		//�����ɥ��ޥ������ե饰���ڻ�
		$����="";

		#SYSTEM_skip_express_minimum_time+=0;
		Escape(3);
	}
}

..���٥�`�ɣ�ð�^��
function SkipOut()
{
	if(#SYSTEM_skip_absolute){$AllRead = Conquest($ConGameName,$GameName,true);}
	Conquest($ConGameName,$GameName2,true);

	SetVolume("@*", 0, 0, NULL);

	ClearFadeAll(0,true);

	Fade("@�ե�`��", 0, 0, null, true);
	Fade("@box11",0,0,null,true);
	Fade("@boxCC", 0, 0, null, true);
	Fade("@boxCT", 0, 0, null, true);
	Fade("@boxRR", 0, 0, null, true);
	Fade("@boxRT", 0, 0, null, true);
	Fade("@boxLL", 0, 0, null, true);
	Fade("@boxLT", 0, 0, null, true);

	Fade("@boxH", 0, 0, null, true);
	Fade("@boxAll", 0, 0, null, true);

	Fade("@boxTH", 0, 0, null, true);
	Fade("@boxTNoh", 0, 0, null, true);

	Fade("@boxNoh", 0, 0, null, true);
	Fade("@boxCTH", 0, 0, null, true);

//�����ɥ��ޥ���ե饰���ڻ�
	$FwC_text_Window = false;
	$FwR_text_Window = false;
	$FwL_text_Window = false;
	$FwH_text_Window = false;
	$FwNoh_text_Window = false;

//�����ɥ��ޥ�����ڥե饰���ڻ�
	$FwC_text_Window_begin = false;
	$FwR_text_Window_begin = false;
	$FwL_text_Window_begin = false;
	$FwH_text_Window_begin = false;
	$FwNoh_text_Window_begin = false;

//�����ɥ��ޥ������ե饰���ڻ�
	$����="";

	#SYSTEM_skip_express_minimum_time+=0;

	//Draw();
	Wait(64);
}



//��CreateTexture�Ή���
//=============================================================================//
.//CreateTextureϵ
//=============================================================================//

//���Ω`�ޥ�
//͸����0���饹���`�Ȥ��롸CreateTexture���Ǥ�
..CreateTextureEX
function CreateTextureEX($CreatePicEX_Nat, �軭���ȶ�, $CreateTexEX_X, $CreateTexEX_Y, $����`���ǩ`��)
{
	//�ǥХå���
	DEBUG_cgbgcorrect($����`���ǩ`��);

	CreateTexture($CreatePicEX_Nat, �軭���ȶ�, 1030, 0, $����`���ǩ`��);
	Fade($CreatePicEX_Nat, 0, 0, null, true);

//��ȡ��
	$CT_EXX = ImageHorizon($CreatePicEX_Nat);
//��ȡ��
	$CT_EXY = ImageVertical($CreatePicEX_Nat);
//��ȡ�á£�
	$CT_EXX2 = $CT_EXX-1024;
//��ȡ�á£�
	$CT_EXY2 = $CT_EXY-576;
//��ȡ�á£�
	$CT_EXX2 = $CT_EXX2/2;
//��ȡ�á£�
	$CT_EXY2 = $CT_EXY2/2;
//Centerȡ��
	$CT_EX_Center = -($CT_EXX2);
//Middleȡ��
	$CT_EX_Middle = -($CT_EXY2);
//Centerȡ��
	$CT_EX_Center2 = 1024-$CT_EXX;
//Rightȡ��
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middleȡ��
	$CT_EX_Middle2 = 576-$CT_EXY;
//Rightȡ��
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottomȡ��
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	SetAlias($CreatePicEX_Nat, $CreatePicEX_Nat);

	if($CreateTexEX_X=="Center"){
//�����1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//�����1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center2, @0, null, true);
//�����1024
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
//�����1024
		if($CT_EXX == 1024){
			Move($CreatePicEX_Nat, 0, 0, @0, null, true);
//�����1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
//�����1024
		}else{
			Move($CreatePicEX_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
//		$CreateTexEX_X = $CreateTexEX_X-1030;
		Move($CreatePicEX_Nat, 0, 0, @0, null, true);
		Move($CreatePicEX_Nat, 0, $CreateTexEX_X, @0, null, true);
	}


//�k���v�B
	if($CreateTexEX_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEX_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEX_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEX_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEX_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEX_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEX_Nat, 0, @0, 0, null, true);
		Move($CreatePicEX_Nat, 0, @0, $CreateTexEX_Y, null, true);
	}

}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateTexture���Ǥ�
..CreateTextureSP
function CreateTextureSP("�ʥå���", �軭���ȶ�, ������, ������, $����`���ǩ`��)
{
	//�ǥХå���
	DEBUG_cgbgcorrect($����`���ǩ`��);

	CreateTexture("�ʥå���", �軭���ȶ�, ������, ������, $����`���ǩ`��);
	SetAlias("�ʥå���", "�ʥå���");

}

//������
//͸����0���饹���`�Ȥ��롸CreateTexture���Ǥ�������ϳɸ�����
..CreateTextureEXadd
function CreateTextureEXadd($CreatePicEXadd_Nat, �軭���ȶ�, $CreateTexEXadd_X, $CreateTexEXadd_Y, $����`���ǩ`��)
{
	//�ǥХå���
	DEBUG_cgbgcorrect($����`���ǩ`��);

	CreateTexture($CreatePicEXadd_Nat, �軭���ȶ�, 1030, 0, $����`���ǩ`��);

//��ȡ��
	$CT_EXX = ImageHorizon($CreatePicEXadd_Nat);
//��ȡ��
	$CT_EXY = ImageVertical($CreatePicEXadd_Nat);
//��ȡ�á£�
	$CT_EXX2 = $CT_EXX-1024;
//��ȡ�á£�
	$CT_EXY2 = $CT_EXY-576;
//��ȡ�á£�
	$CT_EXX2 = $CT_EXX2/2;
//��ȡ�á£�
	$CT_EXY2 = $CT_EXY2/2;
//Centerȡ��
	$CT_EX_Center = -($CT_EXX2);
//Middleȡ��
	$CT_EX_Middle = -($CT_EXY2);
//Centerȡ��
	$CT_EX_Center2 = 1024-$CT_EXX;
//Rightȡ��
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middleȡ��
	$CT_EX_Middle2 = 576-$CT_EXY;
//Rightȡ��
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottomȡ��
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXadd_Nat, AddRender);
	SetAlias($CreatePicEXadd_Nat, $CreatePicEXadd_Nat);
	Fade($CreatePicEXadd_Nat, 0, 0, null, true);

	if($CreateTexEXadd_X=="Center"){
//�����1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//�����1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center2, @0, null, true);
//�����1024
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
//�����1024
		if($CT_EXX == 1024){
			Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
//�����1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
//�����1024
		}else{
			Move($CreatePicEXadd_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXadd_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXadd_Nat, 0, $CreateTexEXadd_X, @0, null, true);
	}


//�k���v�B
	if($CreateTexEXadd_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXadd_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXadd_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXadd_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXadd_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXadd_Nat, 0, @0, $CreateTexEXadd_Y, null, true);
	}
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateTexture���Ǥ�������ϳɸ�����
..CreateTextureSPadd
function CreateTextureSPadd("�ʥå���", �軭���ȶ�, ������, ������, $����`���ǩ`��)
{
	//�ǥХå���
	DEBUG_cgbgcorrect($����`���ǩ`��);

	CreateTexture("�ʥå���", �軭���ȶ�, ������, ������, $����`���ǩ`��);
	Request("�ʥå���", AddRender);
	SetAlias("�ʥå���", "�ʥå���");
}
//���p��
//͸����0���饹���`�Ȥ��롸CreateTexture���Ǥ�������ϳɸ�����
..CreateTextureEXsub
function CreateTextureEXsub($CreatePicEXsub_Nat, �軭���ȶ�, $CreateTexEXsub_X, $CreateTexEXsub_Y, $����`���ǩ`��)
{
	//�ǥХå���
	DEBUG_cgbgcorrect($����`���ǩ`��);

	CreateTexture($CreatePicEXsub_Nat, �軭���ȶ�, 1030, 0, $����`���ǩ`��);

//��ȡ��
	$CT_EXX = ImageHorizon($CreatePicEXsub_Nat);
//��ȡ��
	$CT_EXY = ImageVertical($CreatePicEXsub_Nat);
//��ȡ�á£�
	$CT_EXX2 = $CT_EXX-1024;
//��ȡ�á£�
	$CT_EXY2 = $CT_EXY-576;
//��ȡ�á£�
	$CT_EXX2 = $CT_EXX2/2;
//��ȡ�á£�
	$CT_EXY2 = $CT_EXY2/2;
//Centerȡ��
	$CT_EX_Center = -($CT_EXX2);
//Middleȡ��
	$CT_EX_Middle = -($CT_EXY2);
//Centerȡ��
	$CT_EX_Center2 = 1024-$CT_EXX;
//Rightȡ��
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middleȡ��
	$CT_EX_Middle2 = 576-$CT_EXY;
//Rightȡ��
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottomȡ��
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXsub_Nat, SubRender);
	SetAlias($CreatePicEXsub_Nat, $CreatePicEXsub_Nat);
	Fade($CreatePicEXsub_Nat, 0, 0, null, true);

	if($CreateTexEXsub_X=="Center"){
//�����1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//�����1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center2, @0, null, true);
//�����1024
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
//�����1024
		if($CT_EXX == 1024){
			Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
//�����1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
//�����1024
		}else{
			Move($CreatePicEXsub_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXsub_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXsub_Nat, 0, $CreateTexEXsub_X, @0, null, true);
	}


//�k���v�B
	if($CreateTexEXsub_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXsub_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXsub_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXsub_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXsub_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXsub_Nat, 0, @0, $CreateTexEXsub_Y, null, true);
	}
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateTexture���Ǥ����p��ϳɸ�����
..CreateTextureSPsub
function CreateTextureSPsub("�ʥå���", �軭���ȶ�, ������, ������, $����`���ǩ`��)
{
	//�ǥХå���
	DEBUG_cgbgcorrect($����`���ǩ`��);

	CreateTexture("�ʥå���", �軭���ȶ�, ������, ������, $����`���ǩ`��);
	Request("�ʥå���", SubRender);
	SetAlias("�ʥå���", "�ʥå���");
}

//�����`�Щ`�쥤
//͸����0���饹���`�Ȥ��롸CreateTexture���Ǥ�������ϳɸ�����
..CreateTextureEXover
function CreateTextureEXover($CreatePicEXover_Nat, �軭���ȶ�, $CreateTexEXover_X, $CreateTexEXover_Y, $����`���ǩ`��)
{
	//�ǥХå���
	DEBUG_cgbgcorrect($����`���ǩ`��);

	CreateTexture($CreatePicEXover_Nat, �軭���ȶ�, 1030, 0, $����`���ǩ`��);

//��ȡ��
	$CT_EXX = ImageHorizon($CreatePicEXover_Nat);
//��ȡ��
	$CT_EXY = ImageVertical($CreatePicEXover_Nat);
//��ȡ�á£�
	$CT_EXX2 = $CT_EXX-1024;
//��ȡ�á£�
	$CT_EXY2 = $CT_EXY-576;
//��ȡ�á£�
	$CT_EXX2 = $CT_EXX2/2;
//��ȡ�á£�
	$CT_EXY2 = $CT_EXY2/2;
//Centerȡ��
	$CT_EX_Center = -($CT_EXX2);
//Middleȡ��
	$CT_EX_Middle = -($CT_EXY2);
//Centerȡ��
	$CT_EX_Center2 = 1024-$CT_EXX;
//Rightȡ��
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middleȡ��
	$CT_EX_Middle2 = 576-$CT_EXY;
//Rightȡ��
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottomȡ��
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXover_Nat, OverlayRender);
	SetAlias($CreatePicEXover_Nat, $CreatePicEXover_Nat);
	Fade($CreatePicEXover_Nat, 0, 0, null, true);

	if($CreateTexEXover_X=="Center"){
//�����1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//�����1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center2, @0, null, true);
//�����1024
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
//�����1024
		if($CT_EXX == 1024){
			Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
//�����1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
//�����1024
		}else{
			Move($CreatePicEXover_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXover_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXover_Nat, 0, $CreateTexEXover_X, @0, null, true);
	}


//�k���v�B
	if($CreateTexEXover_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXover_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXover_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXover_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXover_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXover_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXover_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXover_Nat, 0, @0, $CreateTexEXover_Y, null, true);
	}
}


//�����ꥢ��ָ�����Ĥ��������Ρ�CreateTexture���Ǥ������`�Щ`�쥤�ϳɸ�����
..CreateTextureSPover
function CreateTextureSPover("�ʥå���", �軭���ȶ�, ������, ������, $����`���ǩ`��)
{
	//�ǥХå���
	DEBUG_cgbgcorrect($����`���ǩ`��);

	CreateTexture("�ʥå���", �軭���ȶ�, ������, ������, $����`���ǩ`��);
	Request("�ʥå���", OverlayRender);
	SetAlias("�ʥå���", "�ʥå���");
}

//���\��
//͸����0���饹���`�Ȥ��롸CreateTexture���Ǥ�������ϳɸ�����
..CreateTextureEXmul
function CreateTextureEXmul($CreatePicEXmul_Nat, �軭���ȶ�, $CreateTexEXmul_X, $CreateTexEXmul_Y, $����`���ǩ`��)
{
	//�ǥХå���
	DEBUG_cgbgcorrect($����`���ǩ`��);

	CreateTexture($CreatePicEXmul_Nat, �軭���ȶ�, 1030, 0, $����`���ǩ`��);

//��ȡ��
	$CT_EXX = ImageHorizon($CreatePicEXmul_Nat);
//��ȡ��
	$CT_EXY = ImageVertical($CreatePicEXmul_Nat);
//��ȡ�á£�
	$CT_EXX2 = $CT_EXX-1024;
//��ȡ�á£�
	$CT_EXY2 = $CT_EXY-576;
//��ȡ�á£�
	$CT_EXX2 = $CT_EXX2/2;
//��ȡ�á£�
	$CT_EXY2 = $CT_EXY2/2;
//Centerȡ��
	$CT_EX_Center = -($CT_EXX2);
//Middleȡ��
	$CT_EX_Middle = -($CT_EXY2);
//Centerȡ��
	$CT_EX_Center2 = 1024-$CT_EXX;
//Rightȡ��
	$CT_EX_Center3 = $CT_EX_Center2;
	$CT_EX_Center4 = -($CT_EX_Center3);
	$CT_EX_Center2 = $CT_EX_Center2/2;
//Middleȡ��
	$CT_EX_Middle2 = 576-$CT_EXY;
//Rightȡ��
	$CT_EX_Middle3 = $CT_EX_Middle2;
	$CT_EX_Middle4 = -($CT_EX_Middle3);
	$CT_EX_Middle2 = $CT_EX_Middle2/2;

//InBottomȡ��
	$CT_EX_InBottom0 = $CT_EXY-576;
	$CT_EX_InBottom = -($CT_EX_InBottom0);

	Request($CreatePicEXmul_Nat, MulRender);
	SetAlias($CreatePicEXmul_Nat, $CreatePicEXmul_Nat);
	Fade($CreatePicEXmul_Nat, 0, 0, null, true);

	if($CreateTexEXmul_X=="Center"){
//�����1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//�����1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center2, @0, null, true);
//�����1024
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
//�����1024
		if($CT_EXX == 1024){
			Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
//�����1024
		}else if($CT_EXX < 1024){
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
//�����1024
		}else{
			Move($CreatePicEXmul_Nat, 0, $CT_EX_Center3, @0, null, true);
		}
	}else{
		Move($CreatePicEXmul_Nat, 0, 0, @0, null, true);
		Move($CreatePicEXmul_Nat, 0, $CreateTexEXmul_X, @0, null, true);
	}


//�k���v�B
	if($CreateTexEXmul_Y=="Middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="middle"){
		if($CT_EXY == 576){
			Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		}else if($CT_EXX <= 576){
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle2, null, true);
		}else{
			Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_Middle, null, true);
		}
	}else if($CreateTexEXmul_Y=="InBottom"){
		if($CT_EXY != 576){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inBottom"){
		if($CT_EXY != 576){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else if($CreateTexEXmul_Y=="inbottom"){
		if($CT_EXY != 576){Move($CreatePicEXmul_Nat, 0, @0, $CT_EX_InBottom, null, true);}else{Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);}
	}else{
		Move($CreatePicEXmul_Nat, 0, @0, 0, null, true);
		Move($CreatePicEXmul_Nat, 0, @0, $CreateTexEXmul_Y, null, true);
	}
}


//�����ꥢ��ָ�����Ĥ��������Ρ�CreateTexture���Ǥ����\��ϳɸ�����
..CreateTextureSPmul
function CreateTextureSPmul("�ʥå���", �軭���ȶ�, ������, ������, $����`���ǩ`��)
{
	//�ǥХå���
	DEBUG_cgbgcorrect($����`���ǩ`��);

	CreateTexture("�ʥå���", �軭���ȶ�, ������, ������, $����`���ǩ`��);
	Request("�ʥå���", MulRender);
	SetAlias("�ʥå���", "�ʥå���");
}


//=============================================================================//
.//���������٥�ȡ��ţƌ���
//=============================================================================//

//���Ω`�ޥ�
//͸����0���饹���`�Ȥ��롸CreateTexture���Ǥ�
..OnBG
function OnBG(�軭���ȶ�,$bgimagedata,$�ѥå��ж�)
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

	$bg�ʥå� = $BgNameN;

	if($�ѥå��ж�=="normal"){
		$bgimagedata = "cg/bg/" + $bgimagedata;
	}else if($�ѥå��ж�=="path"){
		$bgimagedata = "cg2/bg/" + $bgimagedata;
//Pathͨ�^�����顢���ڻ���09/01/29��
		$�ѥå��ж�=="";
	}else if(!$�ѥå��ж�){
		$bgimagedata = "cg/bg/" + $bgimagedata;
	}else{
		$bgimagedata = "cg/bg/" + $bgimagedata;
	}

	//�ǥХå���
	DEBUG_cgbgcorrect($bgimagedata);

	CreateTexture($bg�ʥå�, �軭���ȶ�, Center, Middle, $bgimagedata);
	SetAlias($bg�ʥå�, $bg�ʥå�);
	Fade($bg�ʥå�, 0, 0, null, true);

}

...//FadeBG
function FadeBG($�軭�r�g,$����)
{
	if($BgNameN01!=""){$�ʥå���=$BgNameN01;$BgNameN01="";}
	else if($BgNameN02!=""){$�ʥå���=$BgNameN02;$BgNameN02="";}
	else if($BgNameN03!=""){$�ʥå���=$BgNameN03;$BgNameN03="";}
	else if($BgNameN04!=""){$�ʥå���=$BgNameN04;$BgNameN04="";}
	else if($BgNameN05!=""){$�ʥå���=$BgNameN05;$BgNameN05="";}
	else if($BgNameN06!=""){$�ʥå���=$BgNameN06;$BgNameN06="";}
	else if($BgNameN07!=""){$�ʥå���=$BgNameN07;$BgNameN07="";}
	else if($BgNameN08!=""){$�ʥå���=$BgNameN08;$BgNameN08="";}
	else if($BgNameN09!=""){$�ʥå���=$BgNameN09;$BgNameN09="";}
	else if($BgNameN10!=""){$�ʥå���=$BgNameN10;$BgNameN10="";}

	$BGP = 1;

	SetFont("����", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);


//�軭�ޥ���
	PreFadeBG();

	$FaceBG2=$FaceBG;
	$FaceBG=$nutBG;
	$BGCP = 1;

	//ָ����
	$nutBG=$setBGnut;
	$nutBG2=$astBGnut;

}

...//PreFadeBG
function PreFadeBG()
{
	$BGnut = $�ʥå���;

//�ʥå���ȡ�á�$picnut
		$picBGnut = $FaceBG;
//ǰ�ʥå���ȡ�á�$Prepicnut
		$PrepicBGnut = $FaceBG2;
//ǰ���x���k�����Ƥ뤫�_�J��
		$BGQ = $BGCP;

//һ�ȶ��x�g��+���x�ե饰���k�����Ƥ������
	if($BGP==1 && $BGQ==0){$FaceBG="���o��";}

//ǰ�ʥå�����Ҏ���x
	$setBGnut = "@"+$BGnut;
//�ʥå�����Ҏ���x
	$astBGnut = $nutBG;
//ǰ�ʥå�����Ҏ���x
	$PreastBGnut ="@"+$PrepicBGnut;

	if($BGP!=0 && $BGQ==0 && $setBGnut!=$astBGnut && $astBGnut!=$PreastBGnut){Fade($astBGnut, 0, 0, null, false);}

	Fade($PreastBGnut, 0, 0, null, false);

	if($BGQ!=0 && $setBGnut!=$PreastBGnut && $astBGnut!=$PreastBGnut){Delete($PreastBGnut);}

	if($BGP==1 && $BGQ==0){
		Fade($setBGnut, $�軭�r�g, 1000, null, false);
	}else if($BGP==1 && $setBGnut!=$astBGnut){
		Fade($astBGnut, $�軭�r�g, 0, Axl3, false);
		Fade($setBGnut, $�軭�r�g, 1000, Dxl2, false);
		Request($astBGnut, Disused);
	}else if($BGP==0){
		Fade($astBGnut, $�軭�r�g, 0, null, false);
		Request($astBGnut, Disused);
	}

	if($����==true)
	{
		WaitAction($setBGnut, null);

		if($StP==0){
			WaitAction($astBGnut, null);
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


//��CreateColor�Ή���
//=============================================================================//
.//CreateColorϵ
//=============================================================================//

//���Ω`�ޥ�
//͸����0���饹���`�Ȥ��롸CreateColor���Ǥ�
..CreateColorEX
function CreateColorEX("�ʥå���", �軭���ȶ�, ����`���ǩ`��)
{

	CreateColor("�ʥå���", �軭���ȶ�, 1024, 0, 1024, 576, ����`���ǩ`��);
	SetAlias("�ʥå���", "�ʥå���");
	Fade("�ʥå���", 0, 0, null, true);
	Move("�ʥå���", 0, @-1024, @0, null, true);

}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateColor���Ǥ�
..CreateColorSP
function CreateColorSP("�ʥå���", �軭���ȶ�, ����`���ǩ`��)
{
	CreateColor("�ʥå���", �軭���ȶ�, 0, 0, 1024, 576, ����`���ǩ`��);
	SetAlias("�ʥå���", "�ʥå���");
}

//������
//͸����0���饹���`�Ȥ��롸CreateColor���Ǥ�������ϳɸ�����
..CreateColorEXadd
function CreateColorEXadd("�ʥå���", �軭���ȶ�, ����`���ǩ`��)
{
	CreateColor("�ʥå���", �軭���ȶ�, 1024, 0, 1024, 576, ����`���ǩ`��);
	Request("�ʥå���", AddRender);
	SetAlias("�ʥå���", "�ʥå���");
	Fade("�ʥå���", 0, 0, null, true);
	Move("�ʥå���", 0, @-1024, @0, null, true);
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateColor���Ǥ�������ϳɸ�����
..CreateColorSPadd
function CreateColorSPadd("�ʥå���", �軭���ȶ�, ����`���ǩ`��)
{
	CreateColor("�ʥå���", �軭���ȶ�, 0, 0, 1024, 576, ����`���ǩ`��);
	Request("�ʥå���", AddRender);
	SetAlias("�ʥå���", "�ʥå���");
}

//���p��
//͸����0���饹���`�Ȥ��롸CreateColor���Ǥ����p��ϳɸ�����
..CreateColorEXsub
function CreateColorEXsub("�ʥå���", �軭���ȶ�, ����`���ǩ`��)
{
	CreateColor("�ʥå���", �軭���ȶ�, 1024, 0, 1024, 576, ����`���ǩ`��);
	Request("�ʥå���", SubRender);
	SetAlias("�ʥå���", "�ʥå���");
	Fade("�ʥå���", 0, 0, null, true);
	Move("�ʥå���", 0, @-1024, @0, null, true);
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateColor���Ǥ����p��ϳɸ�����
..CreateColorSPsub
function CreateColorSPsub("�ʥå���", �軭���ȶ�, ����`���ǩ`��)
{
	CreateColor("�ʥå���", �軭���ȶ�, 0, 0, 1024, 576, ����`���ǩ`��);
	Request("�ʥå���", SubRender);
	SetAlias("�ʥå���", "�ʥå���");
}


//�����`�Щ`�쥤
//͸����0���饹���`�Ȥ��롸CreateColor���Ǥ������`�Щ`�쥤�ϳɸ�����
..CreateColorEXover
function CreateColorEXover("�ʥå���", �軭���ȶ�, ����`���ǩ`��)
{
	CreateColor("�ʥå���", �軭���ȶ�, 1024, 0, 1024, 576, ����`���ǩ`��);
	Request("�ʥå���", OverlayRender);
	SetAlias("�ʥå���", "�ʥå���");
	Fade("�ʥå���", 0, 0, null, true);
	Move("�ʥå���", 0, @-1024, @0, null, true);
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateColor���Ǥ������`�Щ`�쥤�ϳɸ�����
..CreateColorSPover
function CreateColorSPover("�ʥå���", �軭���ȶ�, ����`���ǩ`��)
{
	CreateColor("�ʥå���", �軭���ȶ�, 0, 0, 1024, 576, ����`���ǩ`��);
	Request("�ʥå���", OverlayRender);
	SetAlias("�ʥå���", "�ʥå���");
}

//���\��
//͸����0���饹���`�Ȥ��롸CreateColor���Ǥ����\��ϳɸ�����
..CreateColorEXmul
function CreateColorEXmul("�ʥå���", �軭���ȶ�, ����`���ǩ`��)
{
	CreateColor("�ʥå���", �軭���ȶ�, 1024, 0, 1024, 576, ����`���ǩ`��);
	Request("�ʥå���", MulRender);
	SetAlias("�ʥå���", "�ʥå���");
	Fade("�ʥå���", 0, 0, null, true);
	Move("�ʥå���", 0, @-1024, @0, null, true);
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateColor���Ǥ����\��ϳɸ�����
..CreateColorSPmul
function CreateColorSPmul("�ʥå���", �軭���ȶ�, ����`���ǩ`��)
{
	CreateColor("�ʥå���", �軭���ȶ�, 0, 0, 1024, 576, ����`���ǩ`��);
	Request("�ʥå���", MulRender);
	SetAlias("�ʥå���", "�ʥå���");
}



//��CreateMovie�Ή���
//=============================================================================//
.//CreateMovieϵ
//=============================================================================//

//���Ω`�ޥ�
//͸����0���饹���`�Ȥ��롸CreateMovie���Ǥ�
..CreateMovieEX
function CreateMovieEX("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��")
{
	CreateMovie("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��");
	SetAlias("�ʥå���", "�ʥå���");
	Fade("�ʥå���", 0, 0, null, true);
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateMovie���Ǥ�
..CreateMovieSP
function CreateMovieSP("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��")
{
	CreateMovie("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��");
	SetAlias("�ʥå���", "�ʥå���");
}

//������
//͸����0���饹���`�Ȥ��롸CreateMovie���Ǥ�������ϳɸ�����
..CreateMovieEXadd
function CreateMovieEXadd("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��")
{
	CreateMovie("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��");
	Request("�ʥå���", AddRender);
	SetAlias("�ʥå���", "�ʥå���");
	Fade("�ʥå���", 0, 0, null, true);
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateMovie���Ǥ�������ϳɸ�����
..CreateMovieSPadd
function CreateMovieSPadd("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��")
{
	CreateMovie("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��");
	Request("�ʥå���", AddRender);
	SetAlias("�ʥå���", "�ʥå���");
}

//���p��
//͸����0���饹���`�Ȥ��롸CreateMovie���Ǥ����p��ϳɸ�����
..CreateMovieEXsub
function CreateMovieEXsub("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��")
{
	CreateMovie("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��");
	Request("�ʥå���", SubRender);
	SetAlias("�ʥå���", "�ʥå���");
	Fade("�ʥå���", 0, 0, null, true);
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateMovie���Ǥ����p��ϳɸ�����
..CreateMovieSPsub
function CreateMovieSPsub("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��")
{
	CreateMovie("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��");
	Request("�ʥå���", SubRender);
	SetAlias("�ʥå���", "�ʥå���");
}

//�����`�Щ`�쥤
//͸����0���饹���`�Ȥ��롸CreateMovie���Ǥ������`�Щ`�쥤�ϳɸ�����
..CreateMovieEXover
function CreateMovieEXover("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��")
{
	CreateMovie("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��");
	Request("�ʥå���", OverlayRender);
	SetAlias("�ʥå���", "�ʥå���");
	Fade("�ʥå���", 0, 0, null, true);
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateMovie���Ǥ������`�Щ`�쥤�ϳɸ�����
..CreateMovieSPover
function CreateMovieSPover("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��")
{
	CreateMovie("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��");
	Request("�ʥå���", OverlayRender);
	SetAlias("�ʥå���", "�ʥå���");
}

//���\��
//͸����0���饹���`�Ȥ��롸CreateMovie���Ǥ����\��ϳɸ�����
..CreateMovieEXmul
function CreateMovieEXmul("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��")
{
	CreateMovie("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��");
	Request("�ʥå���", MulRender);
	SetAlias("�ʥå���", "�ʥå���");
	Fade("�ʥå���", 0, 0, null, true);
}

//�����ꥢ��ָ�����Ĥ��������Ρ�CreateMovie���Ǥ����\��ϳɸ�����
..CreateMovieSPmul
function CreateMovieSPmul("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��")
{
	CreateMovie("�ʥå���", �軭���ȶ�, ������, ������, ��`��, �������ͥ�, "����`���ǩ`��");
	Request("�ʥå���", MulRender);
	SetAlias("�ʥå���", "�ʥå���");
}


function CreateStencilT($�ʥå�����,$�ʥå�����,�����ȶ�,��λ��,��λ��,$����,$����)
{
	$�ӥʥå���=$�ʥå�����+"/"+$�ʥå�����;

	CreateStencil($�ʥå�����,�����ȶ�,��λ��,��λ��,128,$����,false);
	CreateTexture($�ӥʥå���,�����ȶ�,��λ��,��λ��,$����);

	SetAlias($�ʥå�����, $�ʥå�����);
	SetAlias($�ӥʥå���, $�ʥå�����);

	Fade($�ʥå�����, 0, 0, null, false);
	Fade($�ʥå�����, 0, 0, null, true);
}

function CreateStencilC($�ʥå�����,$�ʥå�����,�����ȶ�,��λ��,��λ��,$����,$����)
{
	$�ӥʥå���=$�ʥå�����+"/"+$�ʥå�����;

	CreateStencil($�ʥå�����,�����ȶ�,��λ��,��λ��,128,$����,false);
	CreateColor($�ӥʥå���, �����ȶ�, 0, 0, 1024, 576, $����);

	SetAlias($�ʥå�����, $�ʥå�����);
	SetAlias($�ӥʥå���, $�ʥå�����);

	Fade($�ʥå�����, 0, 0, null, false);
	Fade($�ʥå�����, 0, 0, null, true);
}









//���軭�ޥ���
//=============================================================================//
.//����ܞ�Q��
//=============================================================================//
//�����Ϥˤ��Υʥå�����ȫ�Ƥ�Ф��ʤ�
//ʹ�ä����H�Ͻ~���ˡ�Pre�������ʹ�ä��Ƥ�������
..PrintBG
function PrintBG("�ʥå���",�軭���ȶ�)
{
	CreateEffect("�ʥå���", �軭���ȶ�, 0, 0, 1024, 576, "Plain");
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���",Passive);
	Request("�ʥå���", Lock);

	Delete("@*");
	Delete("*");

	ByeBye();

	Request("�ʥå���", UnLock);
}

..PrintBG2
function PrintBG2("�ʥå���")
{
	CreateTexture("�ʥå���", 30000, 0, 0, "SCREEN");
	SetAlias("�ʥå���", "�ʥå���");
	Request("�ʥå���", Lock);

	Delete("@*");
	Delete("*");

	ByeBye();

	Request("�ʥå���", UnLock);
}

//����Ҏ׷���Ŀ
//���v�B�������ʤ��ä�PrintBG
..PrintGO
function PrintGO("�ʥå���",�軭���ȶ�)
{
	CreateEffect("�ʥå���", �軭���ȶ�, 0, 0, 1024, 576, "Plain");
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���",Passive);
	Request("�ʥå���", Lock);

	DeleteStC(0,true);
	DeleteStR(0,true);
	DeleteStL(0,true);
	DeleteStCR(0,true);
	DeleteStCL(0,true);
	DeleteStX(0,true);

	Delete("@�}*");
	Delete("�}*");
	Delete("@OnBG*");
	Delete("OnBG*");

	ByeBye();

	Request("�ʥå���", UnLock);
}

..CreatePlainSP
function CreatePlainSP("�ʥå���",���ȶ�){

	CreateEffect("�ʥå���", ���ȶ�, 0, 0, 1024, 576, "Plain");
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���",Passive);

}

..CreatePlainSPadd
function CreatePlainSPadd("�ʥå���",���ȶ�){

	CreateEffect("�ʥå���", ���ȶ�, 0, 0, 1024, 576, "Plain");
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���",Passive);
	Request("�ʥå���", AddRender);

}

..CreatePlainSPsub
function CreatePlainSPsub("�ʥå���",���ȶ�){

	CreateEffect("�ʥå���", ���ȶ�, 0, 0, 1024, 576, "Plain");
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���",Passive);
	Request("�ʥå���", SubRender);

}

..CreatePlainSPover
function CreatePlainSPover("�ʥå���",���ȶ�){

	CreateEffect("�ʥå���", ���ȶ�, 0, 0, 1024, 576, "Plain");
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���",Passive);
	Request("�ʥå���", OverlayRender);

}

..CreatePlainSPmul
function CreatePlainSPmul("�ʥå���",���ȶ�){

	CreateEffect("�ʥå���", ���ȶ�, 0, 0, 1024, 576, "Plain");
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���",Passive);
	Request("�ʥå���", MulRender);

}

..CreatePlainEX
function CreatePlainEX("�ʥå���",���ȶ�){

	CreateEffect("�ʥå���", ���ȶ�, 0, 0, 1024, 576, "Plain");
	Request("�ʥå���",Passive);
	Fade("�ʥå���", 0, 0, null, true);
	SetAlias("�ʥå���","�ʥå���");

}

..CreatePlainEXadd
function CreatePlainEXadd("�ʥå���",���ȶ�){

	CreateEffect("�ʥå���", ���ȶ�, 0, 0, 1024, 576, "Plain");
	Request("�ʥå���",Passive);
	Fade("�ʥå���", 0, 0, null, true);
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���", AddRender);

}

..CreatePlainEXsub
function CreatePlainEXsub("�ʥå���",���ȶ�){

	CreateEffect("�ʥå���", ���ȶ�, 0, 0, 1024, 576, "Plain");
	Request("�ʥå���",Passive);
	Fade("�ʥå���", 0, 0, null, true);
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���", SubRender);

}

..CreatePlainEXover
function CreatePlainEXover("�ʥå���",���ȶ�){

	CreateEffect("�ʥå���", ���ȶ�, 0, 0, 1024, 576, "Plain");
	Request("�ʥå���",Passive);
	Fade("�ʥå���", 0, 0, null, true);
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���", OverlayRender);

}

..CreatePlainEXmul
function CreatePlainEXmul("�ʥå���",���ȶ�){

	CreateEffect("�ʥå���", ���ȶ�, 0, 0, 1024, 576, "Plain");
	Request("�ʥå���",Passive);
	Fade("�ʥå���", 0, 0, null, true);
	SetAlias("�ʥå���","�ʥå���");
	Request("�ʥå���", MulRender);

}

//=============================================================================//
.//Ĩ��ϵ
//=============================================================================//
..FadeDelete
function FadeDelete("�ʥå���", ��Ҫ�r�g, ����)
{
	Fade("�ʥå���", ��Ҫ�r�g, 0, null, ����);
	Request("�ʥå���", UnLock);
	Request("�ʥå���", Disused);
}

..DrawDelete
function DrawDelete("�ʥå���", ��Ҫ�r�g, ����, "$����", ����)
{
	$Transition = "cg/data/" + "$����" + ".png";

	DrawTransition("�ʥå���", ��Ҫ�r�g, 1000, 0, ����, null, "$Transition", ����);
	Request("�ʥå���", UnLock);
	Request("�ʥå���", Disused);
}

..PlayDelete
function PlayDelete($�ץ쥤�ʥå���, $PlayDeleteTime, $PlayWait)
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
		Fade($�ץ쥤�ʥå���, $PlayDeleteTime, 0, null, false);

		CreateProcess("�ץ쥤��ȥ��", 150, 0, 0, $PlayDeleteName);
		SetAlias("�ץ쥤��ȥ��", "�ץ쥤��ȥ��");
		Request("�ץ쥤��ȥ��", Start);
		Request("�ץ쥤��ȥ��", Disused);
	}else{
		Fade($�ץ쥤�ʥå���, $PlayDeleteTime, 0, null, true);

		Request($�ץ쥤�ʥå���, Stop);
		Delete($�ץ쥤�ʥå���);
	}
}

function PlayDeleteProcess1()
{
	Wait($PlayDeleteTime);
	Request($�ץ쥤�ʥå���, Stop);
	Delete($�ץ쥤�ʥå���);
}

function PlayDeleteProcess2()
{
	Wait($PlayDeleteTime);
	Request($�ץ쥤�ʥå���, Stop);
	Delete($�ץ쥤�ʥå���);
}

function PlayDeleteProcess3()
{
	Wait($PlayDeleteTime);
	Request($�ץ쥤�ʥå���, Stop);
	Delete($�ץ쥤�ʥå���);
}



//���ƄӤʤɤΈ���ܞ�Q���v����ޥ���
//=============================================================================//
.//��ܞ�I��ϵ
//=============================================================================//
//ʹ�ä����H�Ͻ~���ˡ�Pre�������ʹ�ä��Ƥ�������
..ClearFadeAll
function ClearFadeAll(��Ҫ�r�g,����)
{
	CreateColor("���ꥢ�\", 30000, 0, 0, 1024, 576, "BLACK");
	SetAlias("���ꥢ�\", "���ꥢ�\");
	Fade("���ꥢ�\", 0, 0, null, true);

	Fade("���ꥢ�\", ��Ҫ�r�g, 1000, null, ����);

	Delete("@*");
	Delete("*");

	ByeBye();
}

//ʹ�ä����H�Ͻ~���ˡ�Pre�������ʹ�ä��Ƥ�������
//�ӣŤ�һ�Ĥǌ���
..ClearWaitAll
function ClearWaitAll($FadeSoundTime,�����r�g)
{
	CreateColor("�}Clear_BlackWait", 24000, 0, 0, 1024, 576, "BLACK");
	SetAlias("�}Clear_BlackWait", "�}Clear_BlackWait");
	Fade("�}Clear_BlackWait", 0, 0, null, true);

	Request("�}Clear_BlackWait", Lock);


	$SoundTimeCFA=$FadeSoundTime+500;

	SetVolume("@SE*", $SoundTimeCFA, 0, null);
	SetVolume("SE*", $SoundTimeCFA, 0, null);
	SetVolume("@OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("OnSE*", $SoundTimeCFA, 0, null);
	SetVolume("@mbgm*", $SoundTimeCFA, 0, null);
	Fade("�}Clear_BlackWait", $FadeSoundTime, 1000, null, true);

	Wait(�����r�g);
	WaitPlay("@SE*",null);
	WaitPlay("@OnSE*",null);
	WaitPlay("SE*",null);
	WaitPlay("OnSE*",null);

	Delete("@*");
	Delete("*");

	ByeBye();

	Request("�}Clear_BlackWait", UnLock);

}

//ʹ�ä����H�Ͻ~���ˡ�Pre�������ʹ�ä��Ƥ�������
..ClearDrawAll
function ClearDrawAll(��Ҫ�r�g, ����, $����, ����)
{
	CreateColor("���ꥢ�\", 30000, 0, 0, 1024, 576, "BLACK");
	SetAlias("���ꥢ�\", "���ꥢ�\");
	Fade("���ꥢ�\", 0, 0, null, true);

	$Transition = "cg/data/" + $���� + ".png";
	Fade("���ꥢ�\", 0, 1000, null, false);
	DrawTransition("���ꥢ�\", ��Ҫ�r�g, 0, 1000, ����, null, $Transition, ����);

	Delete("@*");
	Delete("*");

	ByeBye();
}


..MoveEX
function MoveEX("�ʥå���", ��Ҫ�r�g, $������, $������, �ƥ��, ����)
{
	$�����˥ץ� = - $������;
	$�����˥ץ� = - $������;

	$�����˥ޥ��ʥ� = "@" + $�����˥ץ�;
	$�����˥ޥ��ʥ� = "@" + $�����˥ץ�;

	$�����˥ץ饹 = "@" + $������;
	$�����˥ץ饹 = "@" + $������;

	Move("�ʥå���", 0, $�����˥ޥ��ʥ�, $�����˥ޥ��ʥ�, null, true);
	Move("�ʥå���", ��Ҫ�r�g, $�����˥ץ饹, $�����˥ץ饹, �ƥ��, ����);
}



..���ڻ�
function ByeBye()
{
//�������}
	$StXP = 0;
	$StCP = 0;
	$StCLP = 0;
	$StLP = 0;
	$StCRP = 0;
	$StRP = 0;

	$StCName01="";
	$StCName02="";
	$StCName03="";
	$StCName04="";
	$StCName05="";
	$StCName06="";
	$StCName07="";
	$StCName08="";
	$StCName09="";
	$StCName10="";

	$StCLName01="";
	$StCLName02="";
	$StCLName03="";
	$StCLName04="";
	$StCLName05="";
	$StCLName06="";
	$StCLName07="";
	$StCLName08="";
	$StCLName09="";
	$StCLName10="";

	$StLName01="";
	$StLName02="";
	$StLName03="";
	$StLName04="";
	$StLName05="";
	$StLName06="";
	$StLName07="";
	$StLName08="";
	$StLName09="";
	$StLName10="";

	$StCRName01="";
	$StCRName02="";
	$StCRName03="";
	$StCRName04="";
	$StCRName05="";
	$StCRName06="";
	$StCRName07="";
	$StCRName08="";
	$StCRName09="";
	$StCRName10="";

	$StRName01="";
	$StRName02="";
	$StRName03="";
	$StRName04="";
	$StRName05="";
	$StRName06="";
	$StRName07="";
	$StRName08="";
	$StRName09="";
	$StRName10="";

//���Х��ȥ��å�
	$BuXP = 0;
	$BuCP = 0;
	$BuCLP = 0;
	$BuLP = 0;
	$BuCRP = 0;
	$BuRP = 0;

	$BuCName01="";
	$BuCName02="";
	$BuCName03="";
	$BuCName04="";
	$BuCName05="";
	$BuCName06="";
	$BuCName07="";
	$BuCName08="";
	$BuCName09="";
	$BuCName10="";

	$BuCLName01="";
	$BuCLName02="";
	$BuCLName03="";
	$BuCLName04="";
	$BuCLName05="";
	$BuCLName06="";
	$BuCLName07="";
	$BuCLName08="";
	$BuCLName09="";
	$BuCLName10="";

	$BuLName01="";
	$BuLName02="";
	$BuLName03="";
	$BuLName04="";
	$BuLName05="";
	$BuLName06="";
	$BuLName07="";
	$BuLName08="";
	$BuLName09="";
	$BuLName10="";

	$BuCRName01="";
	$BuCRName02="";
	$BuCRName03="";
	$BuCRName04="";
	$BuCRName05="";
	$BuCRName06="";
	$BuCRName07="";
	$BuCRName08="";
	$BuCRName09="";
	$BuCRName10="";

	$BuRName01="";
	$BuRName02="";
	$BuRName03="";
	$BuRName04="";
	$BuRName05="";
	$BuRName06="";
	$BuRName07="";
	$BuRName08="";
	$BuRName09="";
	$BuRName10="";


//�������ɥ�
	$stand01_use="";
	$stand02_use="";
	$stand03_use="";
	$stand04_use="";
	$stand05_use="";
	$stand06_use="";
	$stand07_use="";
	$stand08_use="";
	$stand09_use="";
	$stand10_use="";
	$stand11_use="";
	$stand12_use="";
	$stand13_use="";
	$stand14_use="";
	$stand15_use="";
	$stand16_use="";
	$stand17_use="";
	$stand18_use="";
	$stand19_use="";
	$stand20_use="";
	$stand21_use="";
	$stand22_use="";
	$stand23_use="";
	$stand24_use="";
	$stand25_use="";
	$stand26_use="";
	$stand27_use="";
	$stand28_use="";
	$stand29_use="";
	$stand30_use="";

	$KwCName01="";
	$KwCName02="";
	$KwCName03="";
	$KwCName04="";
	$KwCName05="";
	$KwCName06="";
	$KwCName07="";
	$KwCName08="";
	$KwCName09="";
	$KwCName10="";

	$KwCLName01="";
	$KwCLName02="";
	$KwCLName03="";
	$KwCLName04="";
	$KwCLName05="";
	$KwCLName06="";
	$KwCLName07="";
	$KwCLName08="";
	$KwCLName09="";
	$KwCLName10="";

	$KwLName01="";
	$KwLName02="";
	$KwLName03="";
	$KwLName04="";
	$KwLName05="";
	$KwLName06="";
	$KwLName07="";
	$KwLName08="";
	$KwLName09="";
	$KwLName10="";

	$KwCRName01="";
	$KwCRName02="";
	$KwCRName03="";
	$KwCRName04="";
	$KwCRName05="";
	$KwCRName06="";
	$KwCRName07="";
	$KwCRName08="";
	$KwCRName09="";
	$KwCRName10="";

	$KwRName01="";
	$KwRName02="";
	$KwRName03="";
	$KwRName04="";
	$KwRName05="";
	$KwRName06="";
	$KwRName07="";
	$KwRName08="";
	$KwRName09="";
	$KwRName10="";

//��TV�ޥ���������
	$vision01_use="";
	$vision02_use="";
	$vision03_use="";
	$vision04_use="";
	$vision05_use="";
	$vision06_use="";
	$vision07_use="";
	$vision08_use="";
	$vision09_use="";
	$vision10_use="";

	$TvProcessName01="";
	$TvProcessName02="";
	$TvProcessName03="";
	$TvProcessName04="";
	$TvProcessName05="";
	$TvProcessName06="";
	$TvProcessName07="";
	$TvProcessName08="";
	$TvProcessName09="";
	$TvProcessName10="";

//��TV�ޥ����Υ�����
	$NvSoundName01="";
	$NvSoundName02="";
	$NvSoundName03="";
	$NvSoundName04="";
	$NvSoundName05="";
	$NvSoundName06="";
	$NvSoundName07="";
	$NvSoundName08="";
	$NvSoundName09="";
	$NvSoundName10="";

//��TV�ޥ��������}��
	$TvName01="";
	$TvName02="";
	$TvName03="";
	$TvName04="";
	$TvName05="";
	$TvName06="";
	$TvName07="";
	$TvName08="";
	$TvName09="";
	$TvName10="";

//��TV�ޥ�������}��
	$BvName01="";
	$BvName02="";
	$BvName03="";
	$BvName04="";
	$BvName05="";
	$BvName06="";
	$BvName07="";
	$BvName08="";
	$BvName09="";
	$BvName10="";

//��TV�ޥ���ɫ��}��
	$CvName01="";
	$CvName02="";
	$CvName03="";
	$CvName04="";
	$CvName05="";
	$CvName06="";
	$CvName07="";
	$CvName08="";
	$CvName09="";
	$CvName10="";

//�������á�OnBG����09/01/29��
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

//���ӣ��á�OnBG����09/01/29��

}


//������ǥ����v�S�Υޥ����ޥ��
//=============================================================================//
.//����ǥ����v�S
//=============================================================================//
//=============================================================================//
..//��ţ��B��
//=============================================================================//
function ArrayEND()
{
	Array($EndName,"Ӣ�۾�","��׉��","ħ����","����","�衩��","��ž�");
	AssocArray($EndName,"Ӣ�۾�","��׉��","ħ����","����","�衩��","��ž�");
	Array($EndName["Ӣ�۾�"],"Roll01","@msong02_full","BLACK",-13000,60000,1024,3,"H",false,true);
	Array($EndName["��׉��"],"Roll01","@msong02_full","BLACK",-13000,60000,1024,3,"H",false,true);
	Array($EndName["ħ����"],"Roll01","@msong01_full","BLACK",-5000,60000,1024,3,"H",false,true);
	Array($EndName["����"],"Roll01","@msong03_full2","BLACK",6000,60000,1124,3,"H",false,true);
	Array($EndName["�衩��"],"Roll01","@msong04_inst","BLACK",10000,60000,1024,3,"H",false,true);
	Array($EndName["��ž�"],"Roll01","@msong02_full","BLACK",-13000,60000,1024,3,"H",false,true);

//�������ץ�����
//�������h��
//�������������α���
//���������������{��
//�������£ǣͣ��LĿ�ؤΥ������
//��������`��λ���{��
//�����������åե�`�����
//�����������åե�`�����ʽ��F����H����V��
//�������������뤫�ʤ������Ф���Ϥ�������o�����Ϥϡ�false��
//���������ǻ�����Ф��椨�뤫

//���������ե��`�ɻ�����
//�����������C��������ʾ����

//����������`�뻭����
//���������g���{�����^�ϡ��������{�����Ƥ���������

	Array($EndName["Ӣ�۾�"][0],"logo.png");
	Array($EndName["Ӣ�۾�"][1],0,960,10,10);
	Array($EndName["Ӣ�۾�"][6],"һ����`��","staff01","staff02");
	Array($EndName["Ӣ�۾�"][7],0,0,0);

	Array($EndName["��׉��"][0],"logo.png");
	Array($EndName["��׉��"][1],0,960,10,10);
	Array($EndName["��׉��"][6],"����֦��`��","staff01","staff02");
	Array($EndName["��׉��"][7],0,0,0);

	Array($EndName["�衩��"][0],"logo.png");
	Array($EndName["�衩��"][1],0,960,10,10);
	Array($EndName["�衩��"][6],"�衩���`��","staff01","staff02");
	Array($EndName["�衩��"][7],0,0,0);

	Array($EndName["ħ����"][0],"logo.png");
	Array($EndName["ħ����"][1],0,960,10,10);
	Array($EndName["ħ����"][6],"������`�ȣ�","staff01","staff02");
	Array($EndName["ħ����"][7],0,0,0);

	Array($EndName["��ž�"][0],"logo.png");
	Array($EndName["��ž�"][1],0,960,10,10);
	Array($EndName["��ž�"][6],"������`�ȣ�","staff01","staff02");
	Array($EndName["��ž�"][7],0,0,0);

	Array($EndName["����"][0],"ev169_���L�Ȥγ��ᤤ.jpg","ev132_Ц���y.jpg","ev133_����������_c.jpg","ev008_���Ӥ򱧤���Ů.jpg","ev128_�����ι�_b01.jpg","ev138_���I������_d.jpg","ev139_�y�򚢺�_a.jpg","ev101_�ץ��`��_a.jpg","ev103_����֦����_a.jpg","ev268_�䥯���Ȍ��Ť���һ��.jpg","ev106_���w��Ҋ�¤�����_d.jpg","ev112_һ���򤪊������ä��������.jpg","ev113_���`���å��F�eϯ_a.jpg","ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg","ev213_�����ȴ����νY�F_b.jpg","ev221_���������ԡ�Ӥ����Ĺ�_b.jpg","ev230_�������㤯�����.jpg","ev239_�衩�������_d.jpg","ev251_����VS�y�ǺśQ��ڶ���.jpg","ev255_Ұ̫���򘋤������_a.jpg","ev256_�y�ǺŤ�����_b.jpg","ev263_������̤�؞��ѩ܇�.jpg","ev266_�����������Ц��.jpg","logo.png");
	Array($EndName["����"][1],5,35,5,34,5,5,5,34,5,5,5,34,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,5,5,35,5,16,3,3);
	Array($EndName["����"][6],"������`��","staff01","staff02");
	Array($EndName["����"][7],0,200,50);

//�ǥХå���
	$RollDebug=false;
	if($RollDebug){
		$RollDebugAll=0;
		$RollDebugWhile=1;
		while(Count($EndName["����"][1])>$RollDebugWhile){
			$RollDebugAll=$RollDebugAll+$EndName["����"][1][$RollDebugWhile];
			$RollDebugWhile=$RollDebugWhile+2;
		}
		CreateText("�ǥХå���`��", 2000000, 50, 50, 700, 500, $RollDebugAll);
		WaitKey();
		Delete("�ǥХå���`��");
	}

	$LayerCount0=100000;//�µ�
	$LayerCount1=100010;//��`��
	$LayerCount2=100009;//�ե��`���äν}
	if($EndName[$ENDNumber]=="����"){
		$LayerCount2=100011;//�ե��`���äν}
	}
	$LayerCount9=200000;
}

//=============================================================================//
..//��ţĶ��x
//=============================================================================//
function TheEND($ENDNumber)
{
	QuickStop();

	//���B������
	ArrayEND();

	$EndBunbo=1000;
	$ENDBGM=$EndName[$ENDNumber][1];
	$ENDBack=$EndName[$ENDNumber][2];
	$TimeAdjust=$EndName[$ENDNumber][3];
	$LoopAdjust=$EndName[$ENDNumber][4];
	$LengthAdjust=$EndName[$ENDNumber][5];
	$ENDImage="end";
	$BGM��2=$EndName[$ENDNumber][8];
	SoundPlay($ENDBGM,0,1000,true);

	//�ﱳ����椨
	if($ENDBack!="EXTRA"){
		if($ENDBack=="BLACK"||$ENDBack=="WHITE"){
			CreateColor("ENDBack", $LayerCount0, 0, 0, 1024, 576, $ENDBack);
		}else{
			CreateTexture("ENDBack", $LayerCount0, 0, 0, $ENDBack);
		}
		SetAlias("ENDBack", "ENDBack");
		Fade("ENDBack", 0, 0, null, true);
		Fade("ENDBack", 1000, 1000, null, true);
	
		//���å��O��
		LockVideo(true);
		Fade("@*", 0, 0, null, false);
		Fade("*", 0, 0, null, false);
		Fade("ENDBack", 0, 1000, null, true);
		//���å��O��
		LockVideo(false);
	}

	if($EndName[$ENDNumber]=="����"){
		CreateTextureSP("ENDWindow", $LayerCount9, 25, 120, "cg/sys/ed/����ɥ�`���å��٥�ȥܥ����~�F.png");
		CreateTextureSP("ENDWindow2", $LayerCount2, 0, 0, "cg/sys/ed/����ɥ�`���å��٥�ȥܥ����~�F2.png");
	}

	//��ţĶ��x
	$RollNut=String("ClearRoll%02d",$ENDNumber);
	EndRollTexture();
	if(VariableValue(#,$RollNut)){
		SetRoll($EndProcess,$ENDBGM,false);
	}else{
		SetRoll($EndProcess,$ENDBGM,true);
		VariableValue(#,$RollNut,true);
	}

	//���ҥЩ`���_
	if($ENDNumber==0||$ENDNumber==1||$ENDNumber==2||$ENDNumber==4){
		Wait(5000);
		QuickStart();
	}
}

...//���ƥ�������ϵ���x
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
	}
}

//=============================================================================//
..//���`���_ʼ
//=============================================================================//
function SetRoll($�I��gλ��,$BGM��,$���C)
{
	if(!$PreSetRoll){
		#play_speed_plus=#SYSTEM_play_speed;
		#SYSTEM_play_speed=3;
	
		$SYSTEM_text_auto=false;
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
	
		$SYSTEM_menu_lock=true;
	}

	CreateProcess("����ɥ�`��ץ���", 2000, 0, 0, $�I��gλ��);
	SetAlias("����ɥ�`��ץ���", "����ɥ�`��ץ���");
	CreateProcess("����ɥ�`���ץ���", 150, 0, 0, "EndSong");
	SetAlias("����ɥ�`���ץ���", "����ɥ�`���ץ���");

	CreateColor("ɫ", $LayerCount9, 0, 0, 1024, 576, BLACK);
	SetAlias("ɫ", "ɫ");
	Fade("ɫ", 0, 0, null, true);

	$EndingSkip=false;
	Request("����ɥ�`��ץ���", Start);
	Wait(5000);
	if($���C){WaitAction("����ɥ�`��ץ���", null);}
	WaitKey();
	$EndingSkip=true;

	Request($BGM��, EntrustSuspend);
	SetVolume($BGM��, 6000, 0, NULL);

	Wait(2000);
	Fade("@ɫ", 2000, 1000, null, true);

	Request("����ɥ�`��ץ���", Stop);

	Fade("@����ɥ�`��*",0,0,null,true);
	Delete("@����ɥ�`��*");
	Delete("@END*");
	Fade("@ɫ", 0, 0, null, true);

	Delete("@ɫ");

	Wait(2000);

	if($EndName[$ENDNumber]!="����"){
		$SYSTEM_menu_lock = false;
	}

	#SYSTEM_play_speed = #play_speed_plus;
	$SYSTEM_text_waitkey = true;

	$ClearL=true;
	#ClearG=true;

	$PLACE_end=false;
	$PreSetRoll=false;
}


//=============================================================================//
..//���`�뷽ʽ�ץ���
//=============================================================================//

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...//�ŵ�ĥե��`�ɥ�����ץ�
function TextureRoll01()
{
	if($EndName[$ENDNumber][9]){
		$ENDWhile=0;
		while(Count($EndName[$ENDNumber][0])>$ENDWhile){
			$nut=String("ENDTexture%02d",$ENDWhile);
			$img=$EndName[$ENDNumber][0][$ENDWhile];
	
			if($img=="WHITE"||$img=="BLACK"){
				CreateColor($nut, $LayerCount2, 0, 0, 1024, 576, $img);
			}else{
				$img="cg/sys/ed/thum/"+$img;

				if($EndName[$ENDNumber]=="����"){
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
			$EndStartPoint=576;
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

	$�r�g=RemainTime($BGM��);
	$�r�g=$�r�g+$TimeAdjust;
	if($�r�g<$LoopAdjust){
		$EndExtension=true;
		$����=DurationTime($BGM��);
		$�r�g+=$����;
		Request("@����ɥ�`���ץ���", Start);
	}

	if($EndName[$ENDNumber][8]!=false){
		$�r�g+=DurationTime($BGM��2);
		Request("@����ɥ�`���ץ���", Start);
	}

//	WaitKey();

	if($EndName[$ENDNumber][7]!="F"){
		Move("@ENDRoll*",$�r�g,@$EndMoveX,@$EndMoveY,null,false);
	}

//	WaitKey();

	$nut="�Τ�";

	if($EndName[$ENDNumber][9]){
		$EndOneTime=$�r�g/$EndBunbo;
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

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...//�ŵ�ĥ�`�륹����ץ�
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

	$�r�g=RemainTime($BGM��);
	$�r�g+=$TimeAdjust;
	if($�r�g<$LoopAdjust){
		$EndExtension=true;
		$����=DurationTime($BGM��);
		$�r�g+=$����;
		Request("@����ɥ�`���ץ���", Start);
	}
	Move("@ENDRoll",$�r�g,@0,@$EndMoveB,null,true);
}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
...//�ŵ�ĥ�`�륹����ץȣ���
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

	$�r�g=RemainTime($BGM��);
	$�r�g+=$TimeAdjust;
	if($�r�g<$LoopAdjust){
		$EndExtension=true;
		$����=DurationTime($BGM��);
		$�r�g+=$����;
		Request("@����ɥ�`���ץ���", Start);
	}
	Move("@ENDRoll",$�r�g,@$EndMoveA,@0,null,true);
}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//����ɥ�����ץ��ä����@�A�ץ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
function EndSong()
{
	if($EndExtension){
		$EndTime=RemainTime($BGM��);
		Wait($EndTime);
	
		SetVolume($BGM��, 1000, 0, NULL);
		WaitAction($BGM��, null);
	
		SetFrequency($BGM��, 0, 1000, NULL);
		SetVolume($BGM��, 0, 1000, null);
		SetLoop($BGM��, false);
		Request($BGM��, Play);
	}

	if($EndName[$ENDNumber][8]!=false){
		WaitPlay($BGM��, null);
	
		if(!$EndingSkip){
			Request($BGM��2, CompulsorySuspend);
	
			SetFrequency($BGM��2, 0, 1000, NULL);
			SetVolume($BGM��2, 0, 1000, null);
			SetLoop($BGM��2, false);
			Request($BGM��2, Play);
	
			WaitPlay($BGM��2, null);
		}
	}
}
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//=============================================================================//
..//���`��ʂ䣨����˥�å�������ϣ�
//=============================================================================//
function PreSetRoll($ENDNumber)
{
	//���ҥЩ`ֹͣ
	QuickStop();

	//���B������
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,1000,true);

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
	//���ҥЩ`ֹͣ
	QuickStop();

	//���B������
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
..//���`��ʂ䣨;�Ф��饯��å���å�������ϣ�
//=============================================================================//
function PreTextRoll($ENDNumber)
{
	//���ҥЩ`ֹͣ
	QuickStop();

	//���B������
	ArrayEND();
	$ENDBGM=$EndName[$ENDNumber][1];
	SetVolume("@m*", 2000, 0, NULL);
	SoundPlay($ENDBGM,0,1000,true);

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

function PlayVOICE_ED($VoiceClassNut,$���S�ǩ`��,$VoiceWaitPlus1,$VoiceWaitPlus2)
{
//<voice name="�ǥͥ�" class="�ǥͥ�" src="voice/st20/0600220de" mode="off">

	$���饹��=$VoiceClassNut;

	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$���饹��){
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&!VariableValue(#,"ConfigCV_"+$���饹��+"[1]"))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$����ָ�� = "voice/" + $���S�ǩ`��;

		CreateSound($VoiceClassNut, VOICE, $����ָ��);
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
	$�����r�g=RemainTime($VoiceClassNut);
	$�����r�g+=$VoiceWaitPlus;
	Wait($�����r�g);
	Delete($VoiceClassNut);
}

/*
	PlayVOICE_ED("�ǥͥ�","voice/st20/0600220de",1000,3000);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box00>
[text0010028]
//���ǥͥ֡�
<voice name="�ǥͥ�" class="�ǥͥ�" src="voice/st20/0600220de" mode="off">
��Ҋ������ä��D�D��
{StopVOICEED();}
</PRE>
	SetText();
	TypeBegin();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/



//�����v�S�Υޥ����ޥ��
//=============================================================================//
.//���v�S
//=============================================================================//

// ���x
function CreateBGM("�ʥå���",$���S�ǩ`��)
{
	$����ָ�� = "sound/bgm/" + $���S�ǩ`��;

	CreateSound("�ʥå���", BGM, $����ָ��);
	SetVolume("�ʥå���", 0, 0, NULL);
	SetAlias("�ʥå���", "�ʥå���");
	Request("�ʥå���", Lock);
}

function CreateBGMPX("�ʥå���",$���S�ǩ`��)
{
	$����ָ�� = $���S�ǩ`��;

	CreateSound("�ʥå���", BGM, $����ָ��);
	SetVolume("�ʥå���", 0, 0, NULL);
	SetAlias("�ʥå���", "�ʥå���");
	Request("�ʥå���", Lock);
}

function CreateBGMSP("�ʥå���",$���S�ǩ`��)
{
	$����ָ�� = "sound/bgm/" + $���S�ǩ`��;

	CreateSound("�ʥå���", SE, $����ָ��);
	SetVolume("�ʥå���", 0, 0, NULL);
	SetAlias("�ʥå���", "�ʥå���");
	Request("�ʥå���", Lock);
}

function CreateBGMEX("�ʥå���",$���S�ǩ`��,�_ʼ�ߥ���,�K�˥ߥ���)
{
	$����ָ�� = "sound/bgm/" + $���S�ǩ`��;

	CreateSound("�ʥå���", BGM, $����ָ��);
	SetVolume("�ʥå���", 0, 0, NULL);
	SetAlias("�ʥå���", "�ʥå���");
	SetLoopPoint("�ʥå���",�_ʼ�ߥ���,�K�˥ߥ���);
}

function OnSE($���S�ǩ`��,�ӣ�����)
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

	$�ʥå��� = $SeName;

	$����ָ�� = "sound/se/" + $���S�ǩ`��;

	CreateSound($�ʥå���, SE, $����ָ��);
	SetVolume($�ʥå���, 0, 0, NULL);
	SetAlias($�ʥå���, $�ʥå���);

	Request($�ʥå���, "Play");

	SetFrequency($�ʥå���, 0, 1000, NULL);
	SetPan($�ʥå���, 0, 0, NULL);
	SetLoop($�ʥå���, false);
	SetVolume($�ʥå���, 0, �ӣ�����, null);
	Request($�ʥå���, Disused);

}

function CreateSE("�ʥå���",$���S�ǩ`��)
{
	$����ָ�� = "sound/se/" + $���S�ǩ`��;

	CreateSound("�ʥå���", SE, $����ָ��);
	SetVolume("�ʥå���", 0, 0, NULL);
	SetAlias("�ʥå���", "�ʥå���");
}

function CreateSEEX("�ʥå���",$���S�ǩ`��)
{
	$����ָ�� = "sound/se/" + "$���S�ǩ`��";

	if($���S�ǩ`��=="se���L_����_���ͥ륮�`�]���Ϥ�01_L"){
		$�_ʼ�ߥ���=5833;
		$�K�˥ߥ���=17267;
	}else if($���S�ǩ`��=="se���L_����_�z_���05_L"){
		$�_ʼ�ߥ���=4618;
		$�K�˥ߥ���=22538;
	}else if($���S�ǩ`��=="se����_��x_��`�륬��_�ʂ�"){
		$�_ʼ�ߥ���=1536;
		$�K�˥ߥ���=9301;
	}else if($���S�ǩ`��=="se���L_��҆��_����02_L"){
		$�_ʼ�ߥ���=5325;
		$�K�˥ߥ���=8294;
	}else if($���S�ǩ`��=="se�\��_�w�д�_�x��_ʼ_L"){
		$�_ʼ�ߥ���=15871;
		$�K�˥ߥ���=18810;
	}else if($���S�ǩ`��=="se���L_����_ħ������_����01"){
		$�_ʼ�ߥ���=7146;
		$�K�˥ߥ���=23621;
	}

	CreateSound("�ʥå���", SE, "$����ָ��");
	SetVolume("�ʥå���", 0, 0, NULL);
	SetAlias("�ʥå���", "�ʥå���");
	SetLoopPoint("�ʥå���",$�_ʼ�ߥ���,$�K�˥ߥ���);
}

function CreateVOICE($�ʥå���,$���S�ǩ`��)
{
	$���饹��=$�ʥå���;

	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$���饹��){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&!VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]"))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$����ָ�� = "voice/" + $���S�ǩ`��;

		CreateSound($�ʥå���, VOICE, $����ָ��);
		SetVolume($�ʥå���, 0, 0, NULL);
		SetAlias($�ʥå���, $�ʥå���);
	}
}

function CreateVOICEEX($�ʥå���,$���S�ǩ`��,$���饹��)
{
	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$���饹��){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}

	if(($VoiceGet&&!VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]"))||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$����ָ�� = "voice/" + $���S�ǩ`��;

		CreateSound($�ʥå���, VOICE, $����ָ��);
		SetVolume($�ʥå���, 0, 0, NULL);
		SetAlias($�ʥå���, $�ʥå���);
	}
}

// ����
function SoundPlay($�ʥå���,����,�ܥꥦ��,��`���O��)
{
	if(PassageTime($�ʥå���)<1){
		SetVolume($�ʥå���, 0, 1, null);
	}

	Request($�ʥå���, Play);

//�롡�̶����ޤ�
	SetFrequency($�ʥå���, 0, 1000, NULL);

	SetVolume($�ʥå���, ����, �ܥꥦ��, null);
	SetLoop($�ʥå���, ��`���O��);
	Request($�ʥå���, Disused);
}


function MusicStart("�ʥå���",����,�ܥꥦ��,��������,�������ԩ`��,�ƥ��,��`���O��)
{
	Request("�ʥå���", "Play");

	SetFrequency("�ʥå���", 0, �������ԩ`��, NULL);
	SetPan("�ʥå���", 0, ��������, NULL);
	SetLoop("�ʥå���", ��`���O��);
	SetVolume("�ʥå���", ����, �ܥꥦ��, �ƥ��);
	Request("�ʥå���", Disused);
}


function SoundLoopEnd($�ʥå���)
{
	SetLoop($�ʥå���, false);
	SetLoopPoint($�ʥå���,0,999999);
}





//��BGM���p��ƶ��x
//=============================================================================//
.//BGM���x
//=============================================================================//

function InitBGM()
{

//���x
	CreateBGM("mbgm01","mbgm01");
	CreateBGM("mbgm02","mbgm02");
	CreateBGM("mbgm03","mbgm03");
	CreateBGM("mbgm04","mbgm04");
	CreateBGM("mbgm05","mbgm05");
	CreateBGM("mbgm06","mbgm06");
	CreateBGM("mbgm07","mbgm07");
	CreateBGM("mbgm08","mbgm08");
	CreateBGM("mbgm09","mbgm09");
	CreateBGM("mbgm10","mbgm10");
	CreateBGM("mbgm11","mbgm11");
	CreateBGM("mbgm12","mbgm12");
	CreateBGM("mbgm13","mbgm13");
	CreateBGM("mbgm14","mbgm14");
	CreateBGM("mbgm15","mbgm15");
	CreateBGM("mbgm16","mbgm16");
	CreateBGM("mbgm17","mbgm17");
	CreateBGM("mbgm18","mbgm18");
	CreateBGM("mbgm19","mbgm19");
	CreateBGM("mbgm20","mbgm20");
	CreateBGM("mbgm21","mbgm21");
	CreateBGM("mbgm22","mbgm22");
	CreateBGM("mbgm23","mbgm23");
	CreateBGM("mbgm24","mbgm24");
	CreateBGM("mbgm25","mbgm25");
	CreateBGM("mbgm26","mbgm26");
	CreateBGM("mbgm27","mbgm27");
	CreateBGM("mbgm28","mbgm28");
	CreateBGM("mbgm29","mbgm29");
	CreateBGM("mbgm30","mbgm30");
	CreateBGM("mbgm31","mbgm31");
	CreateBGM("mbgm32","mbgm32");
	CreateBGM("mbgm33","mbgm33");
	CreateBGM("mbgm34","mbgm34");
	CreateBGM("mbgm35","mbgm35");
	CreateBGM("mbgm36","mbgm36");
	CreateBGM("mbgm37","mbgm37");

//	CreateBGM("msong01","msong01");
	CreateBGM("msong01_full","msong01_full");
	CreateBGM("msong01_short","msong01_short");
	CreateBGM("msong01_inst","msong01_inst");

//	CreateBGM("msong02","msong02");
	CreateBGM("msong02_full","msong02_full");
	CreateBGM("msong02_short","msong02_short");
	CreateBGM("msong02_inst","msong02_inst");

//	CreateBGM("msong03","msong03");
	CreateBGM("msong03_full","msong03_full");
	CreateBGM("msong03_short","msong03_short");
	CreateBGM("msong03_inst","msong03_inst");

	//�ѥå���
	CreateBGMPX("msong03_full2","sound2/bgm/msong03_full");

//	CreateBGM("msong04_short","msong04_short");
//��ӛ�����趨
	CreateBGM("msong04_full","msong04_full");
	CreateBGM("msong04_short","msong04_short");
	CreateBGM("msong04_inst","msong04_inst");
//	CreateBGM("msong04_arrange","msong04_arrange");
	CreateBGMEX("msong04_arrange","msong04_arrange",118617,185272);

	CreateBGM("msong05_short","msong05_short");
	CreateBGM("msong05_inst","msong05_inst");


	Request("mbgm01", Lock);
	Request("mbgm02", Lock);
	Request("mbgm03", Lock);
	Request("mbgm04", Lock);
	Request("mbgm05", Lock);
	Request("mbgm06", Lock);
	Request("mbgm07", Lock);
	Request("mbgm08", Lock);
	Request("mbgm09", Lock);
	Request("mbgm10", Lock);
	Request("mbgm11", Lock);
	Request("mbgm12", Lock);
	Request("mbgm13", Lock);
	Request("mbgm14", Lock);
	Request("mbgm15", Lock);
	Request("mbgm16", Lock);
	Request("mbgm17", Lock);
	Request("mbgm18", Lock);
	Request("mbgm19", Lock);
	Request("mbgm20", Lock);
	Request("mbgm21", Lock);
	Request("mbgm22", Lock);
	Request("mbgm23", Lock);
	Request("mbgm24", Lock);
	Request("mbgm25", Lock);
	Request("mbgm26", Lock);
	Request("mbgm27", Lock);
	Request("mbgm28", Lock);
	Request("mbgm29", Lock);
	Request("mbgm30", Lock);
	Request("mbgm31", Lock);
	Request("mbgm32", Lock);
	Request("mbgm33", Lock);
	Request("mbgm34", Lock);
	Request("mbgm35", Lock);
	Request("mbgm36", Lock);
	Request("mbgm37", Lock);

//	Request("msong01", Lock);
	Request("msong01_full", Lock);
	Request("msong01_inst", Lock);
	Request("msong01_short", Lock);

//	Request("msong02", Lock);
	Request("msong02_full", Lock);
	Request("msong02_inst", Lock);
	Request("msong02_short", Lock);

	Request("msong03_full", Lock);
	Request("msong03_inst", Lock);
	Request("msong03_short", Lock);
	Request("msong03_full2", Lock);

	Request("msong04_full", Lock);
	Request("msong04_inst", Lock);
	Request("msong04_arrange", Lock);
	Request("msong04_short", Lock);

	Request("msong05_inst", Lock);
	Request("msong05_short", Lock);

}


//---------------------------------------------------------------//
..Box_Black(�k�������á������趨��)
//--------------------------------------------------------------//
function Box_Black(){

	begin:

	while(1){

	Shake("@BackBlack", 999999, 0, 0, 0, 0, 500, null, true);
	Shake("@BackBlack", 999999, 0, 0, 0, 0, 500, null, true);

	}


}


function VoiceOn(){

	#һ�¥��ꥢ=true;
	#voice_on_��������=true;
	#voice_on_����=true;
	#voice_on_�������w=true;
	#voice_on_����ҰС��=true;
	#voice_on_�R���ұ�=true;
	#voice_on_⏴��=true;
	#voice_on_���B����֦=true;
	#voice_on_���}����=true;
	#voice_on_�c��һ��=true;
	#voice_on_ѩ܇�һ�i=true;
	#voice_on_���=true;
	#voice_on_�L���Ҿ�=true;
	#voice_on_С̫��=true;
	#voice_on_��Դ̫=true;
	#voice_on_�դ�=true;
	#voice_on_�դ�=true;
	#voice_on_�����o��=true;
	#voice_on_���B�{�Ӻ�=true;
	#voice_on_�[��ͯ��=true;
	#voice_on_���׵�=true;
	#voice_on_�����衩��=true;
	#voice_on_���L=true;
	#voice_on_����Υ�=true;
	#voice_on_���`���å�=true;
	#voice_on_���m=true;
	#voice_on_��·��=true;
	#voice_on_��·׿=true;
	#voice_on_��������=true;
	#voice_on_������霔�=true;
	#voice_on_���B=true;
	#voice_on_�о����L=true;
	#voice_on_�x��=true;
	#voice_on_�཭=true;
	#voice_on_�Զ�����=true;
	#voice_on_�����y=true;
	#voice_on_ɽ�\�����I=true;
	#voice_on_���I�ε�=true;
	#voice_on_����=true;
	#voice_on_�����@��=true;
	#voice_on_��������=true;
	#voice_on_������`=true;
	#voice_on_�\��ͯ��=true;
	#voice_on_���֥ǥ�=true;
	#voice_on_�������=true;
	#voice_on_���}��=true;
	#voice_on_���B��֦=true;
	#voice_on_ʼ�����=true;
	#voice_on_��g=true;
	#voice_on_�։�=true;
	#voice_on_�����奢���=true;
	#voice_on_���`�ꥬ=true;
	#voice_on_���ι�=true;
	#voice_on_�y�Ǻ�=true;
	#voice_on_����������=true;
	#voice_on_������Ů��=true;

}

