#include "nss/function.nss"
//=============================================================================//
//������������������������������������������������������������������������������
.//���[��ҭh��Щ`�����1.00
//������������������������������������������������������������������������������
//=============================================================================//
chapter main
{
	//�勵���ȥ��״�B
	$SYSTEM_menu_lock = 1;
	#play_speed_plus += 0;
	#SYSTEM_play_speed=#play_speed_plus;

	//�������O��
//	#SYSTEM_product_code="SuMaGa";
//	#SCRIPT_VERSION="1.01";
//	#SYSTEM_loading_image="cg/sys/save/nowloading.jpg";
//	#SYSTEM_loading_image_x=0;
//	#SYSTEM_loading_image_y=0;
//	#SYSTEM_script_debug="nss/sys_debug.nss";
//	#SYSTEM_skip_express_image="cg/sys/adv/���٥����å�.jpg";
//	#SYSTEM_skip_express_image="cg/sys/skip/����%04d.png#22";

	#SYSTEM_interrupt_play_speed=5;


	if(!#GAME_start_flag){
		#SYSTEM_click_break_voice=true;
		#GAME_start_flag=true;
	}



	while(1)
	{
		//����`�ब�����`�Ȥ������Ȥ���ʾ�������
		$GameStart = 1;

		//�����`����^�˱ؤ�ӛ��
		$������ץȥЩ`����� = "  Version $Revision: 59 $";
		$������ = ModuleFileName();
		SystemInit();

		//������������������������������
		//���ǥХå���
//		#SYSTEM_skip_absolute = true;
//		#SYSTEM_skip_express = true;
//		$Logo = 1;

/*
		#ClearG = 1;
		#START_FLAG = 1;
		#a1_not_bad_end=true;
		#a1_End=true;
		#a2_bad_end=true;
		#a2_not_bad_end=true;
		#a2_End=true;
		#a3_death_end=true;
		#a3_normal_end=true;
		#b2_normal_end=true;
		#b3_bad_end=true;
		#b3_normal_end=true;
		#c1_bad_end=true;
		#c1_true_end=true;
		#c3_bad_end=true;
		#c3_true_end=true;
		#c2_bad_end=true;
		#c2_true_end=true;
		#d1_true_end=true;
*/

//		DebugSound();
//		DebugGallery();
		//������������������������������

/*
		//�ե饰�؅��ޤǥ����ȥ�Ǳ�ʾ
		if(!#START_FLAG&&!$GameClose){
			//���K�˥ѩ`�ȉ������ꥢ
			EndSelectFormat();

			$GameContiune=1;
			TitleLogo2();
		}
*/

		//���ɥ�å����ɥ�å�
		if($GameContiune == 1)
		{
			//����`�ॹ�ԩ`��
			if(#play_speed_plus != 0)
			{
				/*�������ӕr�ǤϤʤ��Ȥ��ϡ��ץ쥤�ٶȤ�Хå����å�*/
				#play_speed_plus = #SYSTEM_play_speed;
			}else{
				/*�������ӕr�ϡ��ץ쥤�ٶȤΥХå����åפ򣳤˹̶�*/
				#play_speed_plus = 3;
			}

			$GameContiune = 0;
			Delete("*");
			call_chapter nss/0_boot_�_ʼ������ץ�.nss;
		}

		//����`�ॹ�ԩ`��
		if(#play_speed_plus != 0)
		{
			/*�������ӕr�ǤϤʤ��Ȥ��ϡ��ץ쥤�ٶȤ�Хå����å�*/
			#play_speed_plus = #SYSTEM_play_speed;
		}else{
			/*�������ӕr�ϡ��ץ쥤�ٶȤΥХå����åפ򣳤˹̶�*/
			#play_speed_plus = 3;
		}

		//������ƥ�����ϵ�Υ��ꥢ
		$GameName=false;
		$TitleSelect=false;

		$PLACE_badend=false;
		$PLACE_title=true;

		#SYSTEM_play_speed=3;
		$SYSTEM_skip=false;
		#SYSTEM_skip_express=false;
		$SYSTEM_text_auto=false;
		$SYSTEM_menu_lock=true;
		#SYSTEM_skip_express_minimum_time=0;

//�ե饰�å��`��
		Save(0);
//�x�k֫�ˑ���褦�Υե饰������
		DeleteSaveFile(9999);

		//���K�˥ѩ`�ȉ������ꥢ
		EndSelectFormat();

		//���ե�`����ڻ�
//		Move("@�ե�`��",0, 0, 500, null,false);
//		Fade("@�ե�`��",0,0,null,false);
//		Fade("@box11",0,0,null,false);

//	CreateColor("�\Ļ��", 150, 0, 0, 800, 600, "Black");
	CreateTexture("������", 100, 0, 0, "cg/bg/����_�������ߩ`01.jpg");

		WaitKey();

		SelectlistSet();

		WaitKey();
	Rotate("@03Select*", 1000000, @0, @0, @179000, null,false);

	Rotate("@01Select*", 1000000, @0, @0, @180000, null,true);

		WaitKey();


		TitleSet();
		//���������ȥ����
		TitleFade();
		//���������ȥ륻�쥯��
		TitleSelect();

		//��Y��
		if($TitleSelect == 1)
		{
			Delete("*");
			Request("�Q���������", Disused);
			Request("�Q���������", UnLock);
			Wait(2000);

			call_chapter nss/0_boot_�_ʼ������ץ�.nss;
		}

		if($TitleSelect == 2)
		{
			//�����ñ���
			CreateTexture("������`��", 1000, 0, 0, SCREEN);
			SetAlias("������`��", "������`��");

			//�����å�����ɥ�
			CreateWindow("�����ƥॿ���ȥ�", 10000, 0, 0, 800, 600, false);
			SetAlias("�����ƥॿ���ȥ�", "�����ƥॿ���ȥ�");
			Request("�����ƥॿ���ȥ�", Lock);

			Delete("�����ȥ�*");
			call_chapter nss/extra_menu.nss;
		}
	}
	//->end while
}
//->end chapter main
//=============================================================================//








//============================================================================//
..//���K�˥ѩ`�ȉ������ڻ��ޥ����
//============================================================================//
function EndSelectFormat()
{
	$End_f1_00_01=false;
	$End_f1_00_02=false;
	$End_f1_00_03=false;
	$End_f1_00_04=false;
	$End_f1_00_05=false;
	$End_f1_00_06=false;
	$End_f1_00_07=false;
	$End_f1_00_08=false;
	$End_f1_00_09=false;
	$End_f1_00_10=false;
	$End_f1_00_11=false;
	$End_f1_00_12=false;
	$End_f1_00_13=false;
	$End_f1_00_14=false;
	$End_f1_00_15=false;
	$End_f1_00_16=false;
	$End_f1_00_17=false;
	$End_f1_01_01=false;
	$End_f1_01_02=false;
	$End_f1_01_03=false;
	$End_f1_01_04=false;
	$End_f1_01_05=false;
	$End_f1_01_06=false;
	$End_f1_01_07=false;
	$End_f1_01_08=false;
	$End_f1_01_09=false;
	$End_f1_01_10=false;
	$End_f1_01_11=false;
	$End_f1_01_12=false;
	$End_f1_01_13=false;
	$End_f1_01_14=false;
	$End_f1_01_15=false;
	$End_f1_01_16=false;
	$End_f1_01_17=false;
	$End_f1_01_18=false;
	$End_f1_01_19=false;
}
//============================================================================//









//============================================================================//
..//�������ȥ륫��`�ж���
//============================================================================//
function TitleColor()
{
		CreateColor("�����ȥ륫��`", 150, 0, 0, 800, 600, "BLACK");
		SetAlias("�����ȥ륫��`", "�����ȥ륫��`");
		Fade("�����ȥ륫��`", 0, 0, null, true);
		CreateColor("�����ȥ륫��`��", 100, 0, 0, 800, 600, "WHITE");
		SetAlias("�����ȥ륫��`", "�����ȥ륫��`");
		Fade("�����ȥ륫��`��", 0, 0, null, true);
}
//============================================================================//


//============================================================================//
..//�����󥰥�����`������ж���
//============================================================================//
function TitleCongratulations()
{
	if(#ClearG==1&&#a1_not_bad_end==true&&#a1_End==true&&#a2_bad_end==true&&#a2_not_bad_end==true&&#a2_End==true&&#a3_death_end==true&&#a3_normal_end==true&&#b2_normal_end==true&&#b3_bad_end==true&&#b3_normal_end==true&&#c1_bad_end==true&&#c1_true_end==true&&#c3_bad_end==true&&#c3_true_end==true&&#c2_bad_end==true&&#c2_true_end==true&&#d1_true_end==true&&#ClearAll!=1)
	{
		SoundPlay("@smgm11",0,1000,true);

		CreateColor("����ǤȤ�ɫ", 150, 0, 0, 800, 600, "White");
		Fade("����ǤȤ�ɫ", 0, 0, null, true);
		Request("����ǤȤ�ɫ", AddRender);

		CreateTexture("����ǤȤ�", 100, 0, 0, "cg/ev/ev_z1_99_����ǤȤ�����.jpg");
		Fade("����ǤȤ�", 0, 0, null, true);

		Fade("����ǤȤ�ɫ", 500, 1000, null, true);
		Fade("����ǤȤ�",0,1000,null,true);
		Fade("����ǤȤ�ɫ", 1000, 0, null, true);

		WaitKey();

		$ClearL = 0;
		#ClearAll = 1;

		SetVolume("@sm*", 4000, 0, NULL);

		Fade("����ǤȤ�",4000,0,null,true);
		Delete("����ǤȤ�*");
	}
}
//============================================================================//














//============================================================================//
..//�����ж���
//============================================================================//
function TitleLogo()
{
//�һ���Q���饲�`���Фϳ����ʤ��褦�ˤ����ж�

	$Logo += 0;

	if($Logo == 0)
	{

		CreateTexture("�����ȥ�˥ȥ�ץ饹", 100, 0, 0, "cg/sys/title/�˥ȥ��.jpg");

//		CreateTexture("�����ȥ��ǥ�����", 100, 0, 0, "cg/sys/title/media_a.jpg");
//		CreateTexture("�����ȥ��ǥ�����", 100, 0, 0, "cg/sys/title/media_b.jpg");
//		CreateTexture("�����ȥ�˥ȥ�ץ饹", 100, 0, 0, "cg/sys/title/�˥ȥ��.jpg");
//		CreateTexture("�����ȥ�ע��", 100, 0, 0, "cg/sys/title/ע��.jpg");
		Fade("�����ȥ�*", 0, 0, null, true);

		Fade("�����ȥ륫��`��",300,1000,null,true);
//		Fade("�����ȥ��ǥ�����", 500, 1000, null, true);
//		WaitKey(3000);
//		Fade("�����ȥ��ǥ�����", 500, 1000, null, true);
//		Fade("�����ȥ��ǥ�����", 0, 0, null, true);
//		WaitKey(3000);
//		Fade("�����ȥ��ǥ�����",500,0,null,true);

//		Wait(1000);

		Fade("�����ȥ�˥ȥ�ץ饹", 1000, 1000, null, true);
		WaitKey(1000);
		Fade("�����ȥ�˥ȥ�ץ饹", 100, 0, null, true);

//		Fade("�����ȥ�ע��", 1000, 1000, null, true);
//		WaitKey(5000);
//		Fade("�����ȥ�ע��", 500, 0, null, true);
	}


//	$Reset=0;


}
//============================================================================//



//============================================================================//
..//�����ж�����
//============================================================================//
function TitleLogo2()
{
		$Logo = 1;

		CreateColor("�����ȥ륫��`��", 100, 0, 0, 800, 600, "WHITE");
		Fade("�����ȥ륫��`��", 0, 0, null, true);

		CreateTexture("�����ȥ��ǥ�����", 100, 0, 0, "cg/sys/title/media_a.jpg");
		CreateTexture("�����ȥ��ǥ�����", 100, 0, 0, "cg/sys/title/media_b.jpg");
		CreateTexture("�����ȥ�˥ȥ�ץ饹", 100, 0, 0, "cg/sys/title/�˥ȥ��.jpg");
		Fade("�����ȥ�*", 0, 0, null, true);

		Fade("�����ȥ륫��`��",300,1000,null,true);
		Fade("�����ȥ��ǥ�����", 500, 1000, null, true);
		WaitKey(3000);
		Fade("�����ȥ��ǥ�����", 500, 1000, null, true);
		Fade("�����ȥ��ǥ�����", 0, 0, null, true);
		WaitKey(3000);
		Fade("�����ȥ��ǥ�����",500,0,null,true);

		Wait(1000);

		Fade("�����ȥ�˥ȥ�ץ饹", 1000, 1000, null, true);
		WaitKey(3000);
		Fade("�����ȥ륫��`��", 0, 0, null, true);
		Fade("�����ȥ�˥ȥ�ץ饹", 500, 0, null, true);
}
//============================================================================//






//=============================================================================//
..//�������ȥ붨�x��
//=============================================================================//
function TitleSet()
{
	//������
	CreateTexture("�����ȥ뱳��", 100, 0, 0, "cg/sys/title/back02.png");
	SetAlias("�����ȥ뱳��", "�����ȥ뱳��");

	//���ӣԣ��ң�
	CreateChoice("Select01");
	SetAlias("Select01", "Select01");

	$startX = 0;
	$startY = 0;

	LoadColor("Select01_001", 199, 24, "Black");
	LoadColor("Select01_002", 199, 24, "Red");
	LoadColor("Select01_003", 199, 24, "Blue");


	CreateTexture("Select01/MouseUsual/Select01_000", 100, $startX, $startY, "Select01_001");
	SetAlias("Select01/MouseUsual/Select01_000", "Select01_000");

	CreateTexture("Select01/MouseUsual/Select01_001", 100, $startX, $startY, "Select01_001");
	SetAlias("Select01/MouseUsual/Select01_001", "Select01_001");
	CreateTexture("Select01/MouseOver/Select01_002", 100, $startX, $startY, "Select01_002");
	SetAlias("Select01/MouseOver/Select01_002", "Select01_002");
	CreateTexture("Select01/MouseClick/Select01_003", 100, $startX, $startY, "Select01_003");
	SetAlias("Select01/MouseClick/Select01_003", "Select01_003");

	CreateProcess("Select01/MouseOver/SelectProcess01_001", 150, 0, 0, "TitleStartOver");
	SetAlias("Select01/MouseOver/SelectProcess01_001", "SelectProcess01_001");

	CreateProcess("Select01/MouseLeave/SelectProcess01_002", 150, 0, 0, "TitleStartLeave");
	SetAlias("Select01/MouseLeave/SelectProcess01_002", "SelectProcess01_002");

	CreateProcess("Select01/MouseClick/SelectProcess01_003", 150, 0, 0, "TitleStartClick");
	SetAlias("Select01/MouseClick/SelectProcess01_003", "SelectProcess01_003");

	Request("Select01/MouseUsual/SelectProcess01_000", "Erase");

	//���̣ϣ���
	CreateChoice("�����ȥ��i�z");
	SetAlias("�����ȥ��i�z", "�����ȥ��i�z");

	$loadX = 70;
	$loadY = 405;

	LoadImage("�����ȥ��i�z����`����", "cg/sys/title/load01.png");
	LoadImage("�����ȥ��i�z����`����", "cg/sys/title/load02.png");
	LoadImage("�����ȥ��i�z����`����", "cg/sys/title/load03.png");

	CreateTexture("�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", 100, $loadX, $loadY, "cg/sys/title/topbt_load_hit.png");
	SetAlias("�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", "�����ȥ��i�z��");

	CreateTexture("�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", 100, $loadX, $loadY, "�����ȥ��i�z����`����");
	SetAlias("�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", "�����ȥ��i�z��");
	CreateTexture("�����ȥ��i�z/MouseOver/�����ȥ��i�z��", 100, $loadX, $loadY, "�����ȥ��i�z����`����");
	SetAlias("�����ȥ��i�z/MouseOver/�����ȥ��i�z��", "�����ȥ��i�z��");
	CreateTexture("�����ȥ��i�z/MouseClick/�����ȥ��i�z��", 100, $loadX, $loadY, "�����ȥ��i�z����`����");
	SetAlias("�����ȥ��i�z/MouseClick/�����ȥ��i�z��", "�����ȥ��i�z��");

	CreateProcess("�����ȥ��i�z/MouseOver/�����ȥ��i�z�ץ�����", 150, 0, 0, "TitleLoadOver");
	SetAlias("�����ȥ��i�z/MouseOver/�����ȥ��i�z�ץ�����", "�����ȥ��i�z�ץ�����");
	CreateProcess("�����ȥ��i�z/MouseLeave/�����ȥ��i�z�ץ�����", 150, 0, 0, "TitleLoadLeave");
	SetAlias("�����ȥ��i�z/MouseLeave/�����ȥ��i�z�ץ�����", "�����ȥ��i�z�ץ�����");
	CreateProcess("�����ȥ��i�z/MouseClick/�����ȥ��i�z�ץ�����", 150, 0, 0, "TitleLoadClick");
	SetAlias("�����ȥ��i�z/MouseClick/�����ȥ��i�z�ץ�����", "�����ȥ��i�z�ץ�����");

	CreateSound("�����ȥ��i�z/MouseOver/�����ȥ��i�z����", SE, "sound/se/SE_�����ƥ�_�����ȥ�_�x�k");

	Request("�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", "Erase");

	//���ţأɣ�
	CreateChoice("�����ȥ����");
	SetAlias("�����ȥ����", "�����ȥ����");

	$configX = 70;
	$configY = 438;

	LoadImage("�����ȥ���ڥ���`����", "cg/sys/title/exit01.png");
	LoadImage("�����ȥ���ڥ���`����", "cg/sys/title/exit02.png");
	LoadImage("�����ȥ���ڥ���`����", "cg/sys/title/exit03.png");

	CreateTexture("�����ȥ����/MouseUsual/�����ȥ���ڣ�", 100, $configX, $configY, "cg/sys/title/topbt_config_hit.png");
	SetAlias("�����ȥ����/MouseUsual/�����ȥ���ڣ�", "�����ȥ���ڣ�");

	CreateTexture("�����ȥ����/MouseUsual/�����ȥ���ڣ�", 100, $configX, $configY, "�����ȥ���ڥ���`����");
	SetAlias("�����ȥ����/MouseUsual/�����ȥ���ڣ�", "�����ȥ���ڣ�");
	CreateTexture("�����ȥ����/MouseOver/�����ȥ���ڣ�", 100, $configX, $configY, "�����ȥ���ڥ���`����");
	SetAlias("�����ȥ����/MouseOver/�����ȥ���ڣ�", "�����ȥ���ڣ�");
	CreateTexture("�����ȥ����/MouseClick/�����ȥ���ڣ�", 100, $configX, $configY, "�����ȥ���ڥ���`����");
	SetAlias("�����ȥ����/MouseClick/�����ȥ���ڣ�", "�����ȥ���ڣ�");

	CreateProcess("�����ȥ����/MouseOver/�����ȥ���ڥץ�����", 150, 0, 0, "TitleConfigOver");
	SetAlias("�����ȥ����/MouseOver/�����ȥ���ڥץ�����", "�����ȥ���ڥץ�����");
	CreateProcess("�����ȥ����/MouseLeave/�����ȥ���ڥץ�����", 150, 0, 0, "TitleConfigLeave");
	SetAlias("�����ȥ����/MouseLeave/�����ȥ���ڥץ�����", "�����ȥ���ڥץ�����");
	CreateProcess("�����ȥ����/MouseClick/�����ȥ���ڥץ�����", 150, 0, 0, "TitleConfigClick");
	SetAlias("�����ȥ����/MouseClick/�����ȥ���ڥץ�����", "�����ȥ���ڥץ�����");

//���ʤ��Τ����˱�
//	CreateSound("�����ȥ����/MouseOver/�����ȥ��������", SE, "sound/se/SE_�����ƥ�_�����ȥ�_�x�k");

	Request("�����ȥ����/MouseUsual/�����ȥ���ڣ�", "Erase");





	if($Logo == 0)
	{
//		$PreTitleMoveIcon=-20;
//		Move("@�����ȥ��_ʼ��", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@�����ȥ��i�z��", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@�����ȥ��O����", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@�����ȥ��؄e��", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@�����ȥ���ڣ�", 0, @0, @$PreTitleMoveIcon, null, false);
//		Move("@�����ȥ��ӛ��", 0, @0, @$PreTitleMoveIcon, null, false);
	}

	Fade("@�����ȥ뱳��",0,0,null,false);
	Fade("@�����ȥ��_ʼ*",0,0,null,false);
	Fade("@�����ȥ��i�z*",0,0,null,false);
	Fade("@�����ȥ��O��*",0,0,null,false);
	Fade("@�����ȥ��؄e*",0,0,null,false);
	Fade("@�����ȥ����*",0,0,null,false);
	Fade("@�����ȥ��ӛ*",0,0,null,false);

//	Fade("�����ȥ�*/*",0,0,null,false);
	Fade("�����ȥ�*/*/*",0,0,null,true);

}
//============================================================================//







//=============================================================================//
..//�������ȥ������
//=============================================================================//
function TitleFade()
{
	//��һ�ȤǤ�Ҋ�Ƥ��ʤ����Ϥ�����
	if(!#TitleMovieFirst){
		#TitleMovieFirst=1;
		$Logo=0;
	}


	if(!$Logo)
	{
		$TitleFadeIcon=0;

//		CreateSound("�����ȥ��`�ө`�������", SE, "sound/se/SE_�����ƥ�_�����ȥ�_��`�ө`");
//		CreateMovie("�����ȥ��`�ө`", 100, 0, 0, false, false, "dx/intro.ngs");
//		Request("�����ȥ��`�ө`�������", Play);

//		if(!#TitleMovie){
//			WaitAction("�����ȥ��`�ө`", null);
//			#TitleMovie=1;
//		}else{
//			$TitleMoveTime=RemainTime("�����ȥ��`�ө`")-1000;
//			WaitKey($TitleMoveTime);
//		}

//		SetVolume("�����ȥ��`�ө`�������", 1000, 0, NULL);

			//��£ǣͥץ쥤
//			SoundPlay($TitleBGM,0,1000,true);
//			SetStream($TitleBGM, 2000);

		Fade("�����ȥ륫��`*",0,0,null,true);
		Fade("�����ȥ뱳��",0,1000,null,true);
		Fade("�����ȥ��`�ө`", 500, 0, null, false);
		Move("@�����ȥ뷙��", 500, @300, @0, null, true);

		Delete("�����ȥ��`�ө`");

		Fade("@Select01",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@�����ȥ��i�z��",$TitleFadeIcon,1000,null,false);
		Fade("@�����ȥ��O����",$TitleFadeIcon,1000,null,false);
		Fade("@�����ȥ��؄e��",$TitleFadeIcon,1000,null,false);
		Fade("@�����ȥ���ڣ�",$TitleFadeIcon,1000,null,false);

		Delete("@�����ȥ뷙��*");
		WaitAction("@�����ȥ��_ʼ��", null);

		$Logo=1;

	}else{

		if($�������ȥ饿���ȥ�)
		{
			if(#�������ȥ�£ǣ� != $TitleBGM)
			{
				//��£ǣͥץ쥤
				SetVolume("@sm*", 1000, 0, NULL);
				SoundPlay($TitleBGM,0,1000,true);
				SetStream($TitleBGM, 2000);
			}

			CreateMask("�����ȥ�ޥ���", 10000, 0, 0, "dx/mv_extra.ngs", false);
			CreateTexture("�����ȥ�ޥ���/�����ȥ뱳��", 10000, 0, 0, "cg/sys/title/�ե��˥å��廭��.jpg");
			WaitAction("�����ȥ�ޥ���", null);

			Fade("�����ȥ뱳��",0,1000,null,true);
			Request("�����ƥॿ���ȥ�", UnLock);
			Delete("�����ƥॿ���ȥ�");
			Delete("�����ȥ�ޥ���");
		}
		else
		{
			//��£ǣͥץ쥤
			SoundPlay($TitleBGM,0,1000,true);
			SetStream($TitleBGM, 2000);

			Fade("�����ȥ륫��`",0,1000,null,true);
			Fade("�����ȥ뱳��",0,1000,null,true);
			Fade("�����ȥ륫��`",1000,0,null,true);
		}
		$�������ȥ饿���ȥ�=false;


		Move("@�����ȥ뷙��", 500, @300, @0, null, true);

		if(#d1_true_end)
		{
			CreateSound("�����ȥ��ӛ�������", SE, "voice/d110/0401420gd");

			Fade("@�����ȥ��ӛ��",0,1000,null,false);
			Move("@�����ȥ��ӛ��", 0, @-200, @0, null, true);

			Request("�����ȥ��ӛ�������", Play);

			Move("@�����ȥ��ӛ��", 300, @200, @0, null, false);
			Rotate("@�����ȥ��ӛ��", 300, @0, @0, 360, null, true);

//			Zoom("@�����ȥ��ӛ��", 0, 500, 500, null, true);
//			Fade("@�����ȥ��ӛ��",100,1000,null,false);
//			Zoom("@�����ȥ��ӛ��", 100, 1050, 1050, Axl1, true);
//			Zoom("@�����ȥ��ӛ��", 100, 1000, 1000, Dxl1, true);
		}

		Fade("@@Select01",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@�����ȥ��i�z��",$TitleFadeIcon,1000,null,false);
		Fade("@�����ȥ��O����",$TitleFadeIcon,1000,null,false);
		Fade("@�����ȥ��؄e��",$TitleFadeIcon,1000,null,false);
		Fade("@�����ȥ���ڣ�",$TitleFadeIcon,1000,null,false);

		Delete("@�����ȥ뷙��*");
		WaitAction("@�����ȥ��_ʼ��", null);

	}

	//���ץ��������`��
	Request("�����ȥ�ץ���", Start);

/*
.//���ץ���󥢥�Έ��Ϥ��������
		SetNextFocus("Select01/MouseUsual/�����ȥ��_ʼ��", "�����ȥ����/MouseUsual/�����ȥ���ڣ�", UP);
		SetNextFocus("Select01/MouseUsual/�����ȥ��_ʼ��", "�����ȥ����/MouseUsual/�����ȥ���ڣ�", LEFT);
		SetNextFocus("Select01/MouseUsual/�����ȥ��_ʼ��", "�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", DOWN);
		SetNextFocus("�����ȥ��_ʼ/MouseUsual/�����ȥ��_ʼ��", "�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", RIGHT);

		SetNextFocus("�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", "�����ȥ��_ʼ/MouseUsual/�����ȥ��_ʼ��", UP);
		SetNextFocus("�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", "�����ȥ��_ʼ/MouseUsual/�����ȥ��_ʼ��", LEFT);
		SetNextFocus("�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", "�����ȥ����/MouseUsual/�����ȥ���ڣ�", DOWN);
		SetNextFocus("�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", "�����ȥ����/MouseUsual/�����ȥ���ڣ�", RIGHT);

		SetNextFocus("�����ȥ����/MouseUsual/�����ȥ���ڣ�", "�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", UP);
		SetNextFocus("�����ȥ����/MouseUsual/�����ȥ���ڣ�", "�����ȥ��i�z/MouseUsual/�����ȥ��i�z��", LEFT);
		SetNextFocus("�����ȥ����/MouseUsual/�����ȥ���ڣ�", "�����ȥ��_ʼ/MouseUsual/�����ȥ��_ʼ��", DOWN);
		SetNextFocus("�����ȥ����/MouseUsual/�����ȥ���ڣ�", "�����ȥ��_ʼ/MouseUsual/�����ȥ��_ʼ��", RIGHT);
*/

}
//============================================================================//







//=============================================================================//
..//���ե��󥯥����ץ������N��
//=============================================================================//
//�������ȥ�ե��󥯥����
function TitleProcess()
{
	while(1){
		Wait(35000);

		SetVolume($TitleBGM, 2000, 0, NULL);
		Fade("@�����ȥ륫��`", 1300, 1000, null, true);

		MoviePlay("dx/mv_smg_PV.ngs", true);

		SoundPlay($TitleBGM,1000,1000,true);
		SetStream($TitleBGM, 2000);
		Fade("@�����ȥ륫��`", 700, 0, null, true);
	}
}


//�������`�ȥե��󥯥����
function TitleStartUsual()
{
}

function TitleStartOver()
{
	Request("@SelectProcess01_002", Stop);
	WaitAction("@Select01/MouseLeave/SelectProcess01_002", null);

	$TitleStartPro=1;
	while($TitleStartPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@�����ȥ륢�����󥢥˥�%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 674, 125, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleStartLeave()
{
	Request("@Select01/MouseLeave/Select01_001", Enter);

	$TitleStartPro=0;
	Request("@SelectProcess01_001", Stop);
	WaitAction("@SelectProcess01_001", null);
	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, true);
}

function TitleStartClick()
{
	Request("@Select01_001", Erase);
}



//����`�ɥե��󥯥����
function TitleLoadUsual()
{
}

function TitleLoadOver()
{
	Request("@�����ȥ��i�z/MouseLeave/�����ȥ��i�z�ץ�����", Stop);
	WaitAction("@�����ȥ��i�z/MouseLeave/�����ȥ��i�z�ץ�����", null);

	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, false);

	$TitleLoadPro=1;
	while($TitleLoadPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@�����ȥ륢�����󥢥˥�%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 677, 158, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleLoadLeave()
{
	Request("@�����ȥ��i�z��", Enter);

	$TitleLoadPro=0;
	Request("@�����ȥ��i�z/MouseOver/�����ȥ��i�z�ץ�����", Stop);
	WaitAction("@�����ȥ��i�z/MouseOver/�����ȥ��i�z�ץ�����", null);
	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, true);
}

function TitleLoadClick()
{
	Request("@�����ȥ��i�z��", Erase);
}



//������ե����ե��󥯥����
function TitleConfigUsual()
{
}

function TitleConfigOver()
{
	Request("@�����ȥ��O��/MouseLeave/�����ȥ��O���ץ�����", Stop);
	WaitAction("@�����ȥ��O��/MouseLeave/�����ȥ��O���ץ�����", null);

	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, false);

	$TitleConfigPro=1;
	while($TitleConfigPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@�����ȥ륢�����󥢥˥�%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 656, 189, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleConfigLeave()
{
	Request("@�����ȥ��O����", Enter);

	$TitleConfigPro=0;
	Request("@�����ȥ��O��/MouseOver/�����ȥ��O���ץ�����", Stop);
	WaitAction("@�����ȥ��O��/MouseOver/�����ȥ��O���ץ�����", null);
	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, true);
}

function TitleConfigClick()
{
	Request("@�����ȥ��O����", Erase);
}



//���������ȥ�ե��󥯥����
function TitleExtraUsual()
{
}

function TitleExtraOver()
{
	Request("@�����ȥ��؄e/MouseLeave/�����ȥ��؄e�ץ�����", Stop);
	WaitAction("@�����ȥ��؄e/MouseLeave/�����ȥ��؄e�ץ�����", null);

	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, false);

	$TitleExtraPro=1;
	while($TitleExtraPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@�����ȥ륢�����󥢥˥�%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 675, 222, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleExtraLeave()
{
	Request("@�����ȥ��؄e��", Enter);

	$TitleExtraPro=0;
	Request("@�����ȥ��؄e/MouseOver/�����ȥ��؄e�ץ�����", Stop);
	WaitAction("@�����ȥ��؄e/MouseOver/�����ȥ��؄e�ץ�����", null);
	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, true);
}

function TitleExtraClick()
{
	Request("@�����ȥ��؄e��", Erase);
}



//���������åȥե��󥯥����
function TitleExitUsual()
{
}

function TitleExitOver()
{
	Request("@�����ȥ����/MouseLeave/�����ȥ���ڥץ�����", Stop);
	WaitAction("@�����ȥ����/MouseLeave/�����ȥ���ڥץ�����", null);

	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, false);

	$TitleExitPro=1;
	while($TitleExitPro)
	{
		$TitleAnimeCountPre=$TitleAnimeTexture;
		$TitleAnimeCount+=1;
		$TitleAnimeTexture=String("@�����ȥ륢�����󥢥˥�%02d",$TitleAnimeCount);

		Move($TitleAnimeTexture, 0, 691, 254, null, false);
		Fade($TitleAnimeTexture, 0, 1000, null, false);
		Fade($TitleAnimeCountPre, 0, 0, null, false);

		if($TitleAnimeCount>=23){$TitleAnimeCount=0;}
	}
}

function TitleExitLeave()
{
	Request("@�����ȥ���ڣ�", Enter);

	$TitleExitPro=0;
	Request("@�����ȥ����/MouseOver/�����ȥ���ڥץ�����", Stop);
	WaitAction("@�����ȥ����/MouseOver/�����ȥ���ڥץ�����", null);
	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, true);
}

function TitleExitClick()
{
	Request("@�����ȥ���ڣ�", Erase);
}



//���饤�ʩ`�Ω`�ĥե��󥯥����
function TitleLinerUsual()
{
}

function TitleLinerOver()
{
}

function TitleLinerLeave()
{
	Request("@�����ȥ��ӛ��", Enter);
}

function TitleLinerClick()
{
	Request("@�����ȥ��ӛ��", Erase);
}





//=============================================================================//
..//�����쥯�ȡ�
//=============================================================================//
function TitleSelect()
{
	while(!$TitleSelect)
	{
		select
		{
			case Select01:
			{
				Request("@�����ȥ�ץ���", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@�����ȥ륫��`", 200, 0, null, true);

				Wait(100);

				SetVolume("@sm*", 3000, 0, NULL);

				CreateColor("ð�^�ۥ磻��", 1000, 0, 0, 800, 600, "WHITE");
				SetAlias("ð�^�ۥ磻��", "ð�^�ۥ磻��");
				Request("ð�^�ۥ磻��", Lock);
				Fade("ð�^�ۥ磻��", 0, 0, null, true);
				Fade("ð�^�ۥ磻��", 1000, 1000, null, true);

				$TitleSelect = 1;
			}

			case �����ȥ��i�z:
			{
				Request("@�����ȥ�ץ���", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@�����ȥ륫��`", 200, 0, null, true);

				CreateSE("�Q���������","SE_�����ƥ�_�����ȥ�_�Q��");
				SoundPlay("�Q���������",0,1000,false);

//				CreateTexture("�����ȥ��i�z��", 100, $loadX, $loadY, "cg/sys/title/topbt_load_on.png");
//				Fade("�����ȥ��i�z/*/*",0,0,null,false);
//				Fade("�����ȥ��i�z��",0,1000,null,true);
				Wait(100);

//				Fade("�����ȥ륫��`",1000,1000,null,false);

				$Title_Load = 1;
				call_chapter nss/sys_load.nss;
				$Title_Load = 0;

				Request("@�����ȥ��i�z��", Enter);
				Fade("@�����ȥ��i�z��",200,0,null,true);
//				Fade("�����ȥ륫��`",150,0,null,true);
				Request("@�����ȥ�ץ���", Start);
			}

			case �����ȥ��O��:
			{
				Request("@�����ȥ�ץ���", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@�����ȥ륫��`", 200, 0, null, true);

				CreateSE("�Q���������","SE_�����ƥ�_�����ȥ�_�Q��");
				SoundPlay("�Q���������",0,1000,false);

//				CreateTexture("�����ȥ��O����", 100, $configX, $configY, "cg/sys/title/topbt_config_on.png");
//				Fade("�����ȥ��O��/*/*",0,0,null,false);
//				Fade("�����ȥ��O����",0,1000,null,true);
				Wait(100);

//				Fade("�����ȥ륫��`",1000,1000,null,false);

				$Title_Config = 1;
				call_chapter nss/sys_config.nss;
				$Title_Config = 0;

				Request("@�����ȥ��O����", Enter);
				Fade("@�����ȥ��O����",200,0,null,true);
//				Fade("�����ȥ륫��`",150,0,null,true);
				Request("@�����ȥ�ץ���", Start);
			}

	
			if(#ClearG)
			{
				case �����ȥ��؄e:
				{
					Request("@�����ȥ�ץ���", Stop);
					SoundPlay($TitleBGM,1000,1000,true);
					Fade("@�����ȥ륫��`", 200, 0, null, true);

					CreateSE("�Q���������","SE_�����ƥ�_�����ȥ�_�Q��");
					SoundPlay("�Q���������",0,1000,false);
	
	//				CreateTexture("�����ȥ��؄e��", 100, $extraX, $extraY, "cg/sys/title/topbt_extra_on.png");
	//				Fade("�����ȥ��؄e/*/*",0,0,null,false);
	//				Fade("�����ȥ��؄e��",0,1000,null,true);
					Wait(100);
	
					$TitleSelect = 2;
				}
			}


			case �����ȥ����:
			{
				Request("@�����ȥ�ץ���", Stop);
				SoundPlay($TitleBGM,1000,1000,true);
				Fade("@�����ȥ륫��`", 200, 0, null, true);

				CreateSE("�Q���������","SE_�����ƥ�_�����ȥ�_�Q��");
				SoundPlay("�Q���������",0,1000,false);

//				CreateTexture("�����ȥ���ڣ�", 100, $exitX, $exitY, "cg/sys/title/topbt_exit_on.png");
//				Fade("�����ȥ���ڣ�",0,1000,null,true);
//				Fade("�����ȥ����/*/*",0,0,null,false);
//				Fade("�����ȥ����/MouseClick/�����ȥ���ڣ�",0,0,null,false);
				Wait(100);

				$Title_Exit = 1;
				call_chapter nss/sys_close.nss->main2;
				$Title_Exit = 0;

				Request("@�����ȥ���ڣ�", Enter);
				Fade("@�����ȥ���ڣ�",200,0,null,true);
				Request("@�����ȥ�ץ���", Start);
			}


			if(#d1_true_end)
			{
				case �����ȥ��ӛ:
				{
					Request("@�����ȥ�ץ���", Stop);
					SoundPlay($TitleBGM,1000,1000,true);
					Fade("@�����ȥ륫��`", 200, 0, null, true);

					CreateSE("�Q���������","SE_�����ƥ�_�����ȥ�_�Q��");
					SoundPlay("�Q���������",0,1000,false);

//					CreateTexture("�����ȥ��ӛ��", 100, $linerX, $linerY, "cg/sys/title/�饤�ʩ`_on.png");
//					Fade("�����ȥ��ӛ��",0,1000,null,false);
//					Fade("�����ȥ��ӛ/*/*",0,0,null,false);
					Wait(100);

					#SYSTEM_window_full = false;
					System("OPEN:http://www.otomedream.com/temp/game/muramasamune/smg");

					Request("@�����ȥ��ӛ��", Enter);
					Fade("@�����ȥ��ӛ��",200,0,null,true);
					Request("@�����ȥ�ץ���", Start);
				}
			}
		}
	}

}//============================================================================//

function SelectlistSet(){

	$ColorList = 1;

	$startX = 0;
	$startY = 0;

	while($ColorList<97){

		$�ʥå�����="Select"+$ColorList+"_1"+;
		$�ʥå�����="Select"+$ColorList+"_2"+;
		$�ʥå�����="Select"+$ColorList+"_3"+;
		$����="WHITE";
		$����="WHITE";
		$����="BLUE";

		LoadColor($�ʥå�����, 199, 24, $����);
		LoadColor($�ʥå�����, 199, 24, $����);
		LoadColor($�ʥå�����, 199, 24, $����);
		SetAlias($�ʥå�����,$�ʥå�����);
		SetAlias($�ʥå�����,$�ʥå�����);
		SetAlias($�ʥå�����,$�ʥå�����);

		$1�ʥå�����="01Select"+$ColorList;
		$1�ʥå�����="02Select"+$ColorList;
		$1�ʥå�����="03Select"+$ColorList;

	CreateTexture("$1�ʥå�����", 1000, $startX, $startY, "$�ʥå�����");
	SetAlias("$1�ʥå�����", "$1�ʥå�����");
	Fade("$1�ʥå�����", 0, 0, null, false);
	Fade("$1�ʥå�����", 1, 50, null, true);

	CreateTexture("$1�ʥå�����", 1000, $startX, $startY, "$�ʥå�����");
	SetAlias("$1�ʥå�����", "$1�ʥå�����");
	Fade("$1�ʥå�����", 0, 0, null, false);
	CreateTexture("$1�ʥå�����", 1000, $startX, $startY, "$�ʥå�����");
	SetAlias("$1�ʥå�����", "$1�ʥå�����");
	Fade("$1�ʥå�����", 0, 50, null, false);



	if($startY == 575){
	$startY = 0;
		if($startX < 800){$startX = $startX+201;}
	}else{
	$startY = $startY+25;
	}
		$ColorList++;

	}


	CursorPosition($CLX,$CLY);


}
