#include "nss/function.nss"
#include "nss/sys_config.nss"

//=============================================================================//
//������������������������������������������������������������������������������
.//���[��ҭh��Щ`�����1.00
//������������������������������������������������������������������������������
//=============================================================================//
chapter main
{
	//�勵���ȥ��״�B
	$SYSTEM_menu_lock = true;

	//�������O��
	#GameNumber=0;
	#SYSTEM_product_code="MURAMASA";
	#SCRIPT_VERSION="1.30";
//	#SYSTEM_loading_image="cg/sys/save/nowloading.jpg";
//	#SYSTEM_loading_image_x=0;
//	#SYSTEM_loading_image_y=0;
	#SYSTEM_skip_express_image="cg/sys/skip/skip-%03d.jpg#5";
//	#SYSTEM_skip_express_image="cg/sys/skip/����%04d.png#22";
	#SYSTEM_interrupt_play_speed=3;
	#SYSTEM_express_skip_animation_fps=100;

	//��˥�`
	SetShortcut("M", "nss/sys_menu.nss");
	//���`�֥�˥�`
	SetShortcut("S", "nss/sys_save.nss");
	//��`�ɥ�˥�`
	SetShortcut("L", "nss/sys_load.nss");
	//�ꥻ�åȴ_�J
	SetShortcut("T", "nss/sys_reset.nss");
	//�Хå����쥯��
	SetShortcut("R", "nss/sys_backselect.nss");
	//����ե���
	SetShortcut("C", "nss/sys_config.nss");
	//�Хå���
	SetShortcut("B", "nss/sys_backlog.nss");
	//�Ԅ������ͤ�
	SetShortcut("A", "nss/sys_auto.nss");
	//ȫ�����ʾ
	SetShortcut("F", "nss/sys_screen.nss");
	//����
	SetShortcut("N", "nss/sys_skip.nss");
	//�����å����`��
	SetShortcut("Q", "nss/sys_quicksave.nss");
	//�����å���`��
	SetShortcut("P", "nss/sys_quickload.nss");
	//�ǥХå�
	//SetShortcut("D", "nss/sys_edit.nss");
	//�øжȻ���
	SetShortcut("H", "nss/sys_hmode.nss");

	//��������Τ��s��
	if(!#N2Start){
		//���O���ꥻ�å�
		ConfigFormat();
		//��t�ץ쥤�r�g��Ӌ�y�_ʼ
		#BEGIN_TIME = Time();
		#N2Start=true;
	}

	//��ҭh�_ʼ��������������������
	while(1)
	{
		//�����`����^�˱ؤ�ӛ��
		$������ץȥЩ`����� = "  Version $Revision: 60 $";
		$������ = ModuleFileName();
		SystemInit();

		//���å��O��
		LockVideo(false);

		//����`�ब�����`�Ȥ������Ȥ���ʾ�������
		$GameStart = 1;

		//����`�ॹ�ԩ`��
		#play_speed_plus = #SYSTEM_play_speed;

		//������������������������������
		//���ǥХå���
		//#SYSTEM_skip_absolute = true;
		//#SYSTEM_skip_express = true;
		//$Logo=true;
		//$FullMetalDeamon=true;
		//#FullMetalDeamonG=false;

		//DebugSound();
		//DebugGallery();
		//������������������������������

		//���ե饰�؅��ޤǥ����ȥ�Ǳ�ʾ
		if(!#START_FLAG&&!$GameClose){
			//$GameContiune=1;
			//TitleLogo2();
			//Delete("*");
			//call_chapter nss/0_boot_�_ʼ������ץ�.nss;
		}

		//���ɥ�å����ɥ�å�
		if($GameContiune == 1){
			//��Y��
			$GameContiune = 0;
			Delete("*");
			call_chapter nss/0_boot_�_ʼ������ץ�.nss;

			//����ȥ륯�ꥢ��������
			TitleClear();

			//�����`����^�˱ؤ�ӛ��
			$������ = ModuleFileName();
			SystemInit();

			//���å��O��
			LockVideo(false);

			//����`�ब�����`�Ȥ������Ȥ���ʾ�������
			$GameStart = 1;

			//����`�ॹ�ԩ`��
			#play_speed_plus = #SYSTEM_play_speed;
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
		$SYSTEM_text_waitkey=true;

		$TitleBGM="@mbgm04";
		$TitleOverSE="sound/se/se���L_����_������02";
		$TitleClickSE="se���L_����_������01";
		$TitleClickSE2="se����_�z_װ��03";
		$TitleClickSE3="se����_�z_װ��04";
		$TitleClickSE4="se���L_����_��ꪏ���01";
		//$TitleClickSE4="se���L_����_��װ�ʂ�01";

		Save(0);
		DeleteSaveFile(9999);

		//������`���x
		TitleColor();
		//���������ȥ��i�߳���
		if(!$CgArray){
			call_chapter nss/extra_gallery.nss->main2;
			$CgArray=true;
		}
		//���ե륹���ץ���
		TitleScreen();
		//�������󥰥��ж�
		TitleCongratulations();
		//�������ȥ������ȥ�BGM�ж�
		TitleLogo();
		//���������ȥ붨�x
		TitleSet();
		//���������ȥ����
		TitleFade();
		//���������ȥ륻�쥯��
		TitleSelect();

		//��Y��
		if($TitleSelect == 1)
		{
			Request("�����ȥ륤��`����", UnLock);
			Request("�����ȥ륤��`����", UnLock);
			Request("�����ȥ륤��`����", UnLock);
			Delete("*");
			Request("�Q���������", Disused);
			Request("�Q���������", UnLock);
			Wait(2000);

			call_chapter nss/0_boot_�_ʼ������ץ�.nss;

			//����ȥ륯�ꥢ��������
			TitleClear();

		}else if($TitleSelect == 2){
			//�����ñ���
			CreateTexture("������`��", 2000, 0, 0, SCREEN);
			SetAlias("������`��", "������`��");

			//�����å�����ɥ�
			CreateWindow("�����ƥॿ���ȥ�", 10000, 0, 0, 1024, 576, false);
			SetAlias("�����ƥॿ���ȥ�", "�����ƥॿ���ȥ�");
			Request("�����ƥॿ���ȥ�", Lock);

			//SE
			CreateSE("�Q��������",$TitleClickSE4);
			Request("�Q��������", Lock);

			Delete("�����ȥ�*");
			call_chapter nss/extra_menu.nss;

			Request("�Q��������", UnLock);
			Request("�Q��������", Disused);
		}
	}
	//->end while
}
//->end chapter main
//=============================================================================//


//============================================================================//
..//�����ꥢ��I���
//============================================================================//
function TitleClear()
{
	//�����ж�
	if(#��׉���K��||#Ӣ�۾��K��||#�����K��){
		#ClearG=true;
	}
	//����ȥ����ʂ�
	if($FullMetalDeamon){
		#FullMetalDeamonL=true;
	}

	ClearScore(LOCAL);
	ClearBacklog();
	DeleteSaveFile(9999);

	//����ȥ���
	if(#FullMetalDeamonL){
		$FullMetalDeamon=true;
	}
	#FullMetalDeamonL=false;

	//�ClearScore���������줿������ץȵĤʤ���ٶ��x
	$BOX_Init = true;
	$BGM_Init = true;
	$Logo = true;
	$GameStart = 1;
}
//============================================================================//




//============================================================================//
..//�������ȥ륫��`�ж���
//============================================================================//
function TitleColor()
{
	CreateColor("�����ȥ륫��`", 150, 0, 0, 1024, 576, "BLACK");
	SetAlias("�����ȥ륫��`", "�����ȥ륫��`");
	Fade("�����ȥ륫��`", 0, 0, null, true);
	CreateColor("�����ȥ륫��`��", 150, 0, 0, 1024, 576, "WHITE");
	SetAlias("�����ȥ륫��`", "�����ȥ륫��`");
	Fade("�����ȥ륫��`��", 0, 0, null, true);
	//Request("�����ȥ륫��`��", AddRender);
}
//============================================================================//




//============================================================================//
..//�������ȥ�ե륹���ץ�����
//============================================================================//
function TitleScreen()
{
	CreateProcess("�����ȥ�ե륹���ץ���", 150, 0, 0, "TitleFull");
	SetAlias("�����ȥ�ե륹���ץ���", "�����ȥ�ե륹���ץ���");
	Request("�����ȥ�ե륹���ץ���", Start);
}
function TitleFull(){
	select{
		//�省�`������ϵ
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}
	}
}
//============================================================================//




//============================================================================//
..//�����󥰥�����`������ж���
//============================================================================//
function TitleCongratulations()
{
	if(#�����K��&&!#ClearAll&&$CompleteCount){
		SoundPlay("@mbgm12",0,1000,true);

		CreateColor("����ǤȤ�ɫ", 150, 0, 0, 1024, 576, "White");
		Fade("����ǤȤ�ɫ", 0, 0, null, true);
		Request("����ǤȤ�ɫ", AddRender);

		CreateTexture("����ǤȤ�", 100, 0, 0, "cg/ev/ev999_����ǤȤ�.jpg");
		Fade("����ǤȤ�", 0, 0, null, true);

		Fade("����ǤȤ�ɫ", 500, 1000, null, true);
		Fade("����ǤȤ�",0,1000,null,true);
		Fade("����ǤȤ�ɫ", 1000, 0, null, true);

		WaitKey();

		#ev999_����ǤȤ�=true;

		//$ClearL = false;
		#ClearAll = true;

		SetVolume("@mbgm*", 4000, 0, NULL);

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
		CreateColor("�����ȥ륫��`��", 100, 0, 0, 1024, 576, "WHITE");
		CreateTexture("�����ȥ��ǥ�����", 100, 0, 0, "cg/sys/title/media_a.jpg");
		CreateTexture("�����ȥ��ǥ�����", 100, 0, 0, "cg/sys/title/media_b.jpg");
		CreateTexture("�����ȥ�˥ȥ�ץ饹", 100, 0, 0, "cg/sys/title/Nitroplus-logo.jpg");
		CreateTexture("�����ȥ�ע��", 100, 0, 0, "cg/sys/title/ע�����.jpg");
		//CreateTexture("�����ȥ����Y", 100, 0, 0, "cg/sys/title/�Tע��.jpg");
		//CreateTexture("�����ȥ��h��", 100, 0, 0, "cg/sys/title/�����å���˥�`�����h��.jpg");

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
		Delete("�����ȥ륫��`��");
		WaitKey(3000);
		Fade("�����ȥ�˥ȥ�ץ饹", 500, 0, null, true);

		Wait(500);

		Fade("�����ȥ�ע��", 1000, 1000, null, false);
		WaitKey(1100);
		Fade("�����ȥ�ע��", 0, 1000, null, true);
		WaitKey(8000);
		Fade("�����ȥ�ע��", 500, 0, null, false);
		WaitKey(600);
		Fade("�����ȥ�ע��", 0, 0, null, true);

/*
		Fade("�����ȥ����Y", 1000, 1000, null, false);
		WaitKey(1100);
		Fade("�����ȥ����Y", 0, 1000, null, true);
		WaitKey(8000);
		Fade("�����ȥ����Y", 500, 0, null, false);
		WaitKey(600);
		Fade("�����ȥ����Y", 0, 0, null, true);

		Fade("�����ȥ��h��", 1000, 1000, null, false);
		WaitKey(1100);
		Fade("�����ȥ��h��", 0, 1000, null, true);
		WaitKey();
		Fade("�����ȥ��h��", 500, 0, null, false);
		WaitKey(600);
		Fade("�����ȥ��h��", 0, 0, null, true);
*/
		Wait(100);
	}
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
		//Request("�����ȥ륫��`��", AddRender);

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


function zangai(){
	if(#�����K��){
		$TitleMuramasa="cg/ev/ev267_��������ţ�_a.jpg";
	}else if(#ħ�����K��){
		$TitleMuramasa="cg/ev/ev501_�������.jpg";
	}else if(#��׉���K��&&(!#Ӣ�۾�δ��||!#Ӣ�۾��K��)){
		$TitleMuramasa="cg/ev/ev004_����֦������_a.jpg";
		if(!#Ӣ�۾��K��){
			#Ӣ�۾�δ��=true;
		}
	}else if(#Ӣ�۾��K��){
		$TitleMuramasa="cg/ev/ev165_��K����_a.jpg";
	}else{
		$TitleMuramasa="cg/ev/ev501_�������.jpg";
	}
}

//=============================================================================//
..//�������ȥ붨�x��
//=============================================================================//
function TitleSet()
{
...	//���ǥ�ץ���
	//CreateProcess("�����ȥ�ץ���", 150, 0, 0, "TitleProcess");
	//SetAlias("�����ȥ�ץ���", "�����ȥ�ץ���");
	CreateTPO1("@�����ȥ�����","@�����ȥ��ܞ",600,300,1100,2);

...	//����`��
	LoadImage("�����ȥ륤��`����", "cg/sys/title/hit.png");
	SetAlias("�����ȥ륤��`����", "�����ȥ륤��`����");
	if(!$�������ȥ饿���ȥ�){
		LoadImage("�����ȥ륤��`����", "cg/sys/title/�θ�ʿ��������.png");
		SetAlias("�����ȥ륤��`����", "�����ȥ륤��`����");
		Request("�����ȥ륤��`����", Lock);
		LoadImage("�����ȥ륤��`����", "cg/sys/title/������.png");
		SetAlias("�����ȥ륤��`����", "�����ȥ륤��`����");
		Request("�����ȥ륤��`����", Lock);
		LoadImage("�����ȥ륤��`����", "cg/ef/ef046_��a.jpg");
		SetAlias("�����ȥ륤��`����", "�����ȥ륤��`����");
		Request("�����ȥ륤��`����", Lock);
	}

...	//���ե饰���
	if(#Ӣ�۾��K��&&#��׉���K��){
		#ħ�������=true;
	}
//	#Ӣ�۾��K��=true;
//	#��׉���K��=true;
//	#ħ�����K��=false;
//	#�����K��=false;

	if(!$Logo){
		if(#�����K��&&!#����ͨ�^){
			$TitleMuramasa="cg/ev/ev267_��������ţ�_a.jpg";
			#����ͨ�^=true;
		}else if(#ħ�����K��&&!#�����K��){
			$TitleMuramasa="cg/ev/ev501_�������.jpg";
			#ħ����ͨ�^=true;
		}else if(#Ӣ�۾��K��&&!#Ӣ�۾�ͨ�^){
			$TitleMuramasa="cg/ev/ev165_��K����_a.jpg";
			#Ӣ�۾�ͨ�^=true;
		}else if(#��׉���K��&&!#��׉��ͨ�^){
			$TitleMuramasa="cg/ev/ev004_����֦������_a.jpg";
			#��׉��ͨ�^=true;
		}else{
			#ͨ�����K��=true;
			Array($TitleImageName,"Ӣ�۾��K��","��׉���K��","�����K��","ͨ�����K��");
			AssocArray($TitleImageName,"Ӣ�۾��K��","��׉���K��","�����K��","ͨ�����K��");

			$TitleImageWhile2=0;
			$TitleImageWhile=0;
			while(Count($TitleImageName)>$TitleImageWhile){
				if(VariableValue(#,$TitleImageName[$TitleImageWhile])){
					VariableValue($,"TitleImageRun"+$TitleImageWhile2,$TitleImageName[$TitleImageWhile]);
					$TitleImageWhile2++;
				}
				$TitleImageWhile++;
			}

			$ReTitleImage=Random($TitleImageWhile2);
			$OkTitleImage=VariableValue($,"TitleImageRun"+$ReTitleImage);

			if($OkTitleImage=="�����K��"){
				$TitleMuramasa="cg/ev/ev267_��������ţ�_a.jpg";
			}else if($OkTitleImage=="Ӣ�۾��K��"){
				$TitleMuramasa="cg/ev/ev165_��K����_a.jpg";
			}else if($OkTitleImage=="��׉���K��"){
				$TitleMuramasa="cg/ev/ev004_����֦������_a.jpg";
			}else{
				$TitleMuramasa="cg/ev/ev501_�������.jpg";
			}
		}
		LoadImage("�����ȥ륤��`������", $TitleMuramasa);
		SetAlias("�����ȥ륤��`������", "�����ȥ륤��`������");
	}


...	//������
	CreateTexture("�����ȥ뱳��", 100, 0, 0, "�����ȥ륤��`����");
	SetAlias("�����ȥ뱳��", "�����ȥ뱳��");
	CreateTexture("�����ȥ���", 100, 50, 540, "cg/sys/title/���ԩ`�饤��.png");
	SetAlias("�����ȥ���", "�����ȥ���");
	CreateTexture("�����ȥ��ܞ", 100, 50, 540, "cg/sys/title/���ԩ`�饤��.png");
	SetAlias("�����ȥ��ܞ", "�����ȥ��ܞ");
	Request("�����ȥ��ܞ", Erase);

	CreateTexture("�����ȥ�����", 100, 0, 0, "�����ȥ륤��`����");
	SetAlias("�����ȥ�����", "�����ȥ�����");
	Zoom("�����ȥ�����", 0, 2000, 2000, Dxl2, true);
	Request("�����ȥ�����", OverlayRender);

	if(!$Logo){
		CreateTexture("�����ȥ����", 100, Center, Middle, "�����ȥ륤��`������");
		SetAlias("�����ȥ����", "�����ȥ����");
		Request("�����ȥ����", AddRender);
		CreateTexture("�����ȥ������", 100, Center, Middle, "�����ȥ륤��`������");
		SetAlias("�����ȥ������", "�����ȥ������");
		Request("�����ȥ������", AddRender);
		SetShade("�����ȥ������", MEDIUM);
		CreateTexture("�����ȥ������", 100, Center, Middle, "�����ȥ륤��`������");
		SetAlias("�����ȥ������", "�����ȥ������");
		Request("�����ȥ������", AddRender);
		Zoom("�����ȥ������", 0, 1100, 1100, null, true);
	}

	CreateTexture("�����ȥ뱳����", 100, 0, 0, "�����ȥ륤��`����");
	SetAlias("�����ȥ뱳����", "�����ȥ뱳����");
	Request("�����ȥ뱳����", AddRender);

	if(!$Logo){
		CreateTexture("�����ȥ넿������", 100, 0, 0, "cg/ef/ef004_����Ѫ�~.jpg");
		Request("�����ȥ넿������", AddRender);
		CreateTexture("�����ȥ넿������", 100, 0, 0, "cg/ef/ef005_����Ѫ�~.jpg");
		Request("�����ȥ넿������", AddRender);
	}

	CreateTexture("�����ȥ��", 100, 346, 40, "�����ȥ륤��`����");
	SetAlias("�����ȥ��", "�����ȥ��");
	CreateTexture("�����ȥ����", 100, 346, 40, "�����ȥ륤��`����");
	SetAlias("�����ȥ����", "�����ȥ����");

	if(!$Logo){
		CreateTexture("�����ȥ넿������", 100, 0, 0, "cg/ef/resize/ef006_����Ѫ���֤�_ex.png");
		SetVertex("�����ȥ넿������", 1024, 0);
		//SetVertex("�����ȥ넿������", 0, 512);
		//Zoom("�����ȥ넿������", 0, 0, 0, Dxl2, true);
		Request("�����ȥ넿������", MulRender);
		Rotate("�����ȥ넿������", 100, @0, @0, -90, Dxl1, false);
	
		CreateTexture("�����ȥ넿������", 100, 0, 0, "cg/ef/resize/ef007_����Ѫ���֤�_ex.png");
		SetVertex("�����ȥ넿������", 0, 0);
		//SetVertex("�����ȥ넿������", 1024, 512);
		//Zoom("�����ȥ넿������", 0, 0, 0, Dxl2, true);
		Request("�����ȥ넿������", MulRender);
		Rotate("�����ȥ넿������", 100, @0, @0, 90, Dxl1, false);
	
		CreateColor("�����ȥ�Ѫɫ", 150, 0, 0, 1024, 576, "RED");
		Request("�����ȥ�Ѫɫ", AddRender);
	
		CreateTexture("�����ȥ��}��", 100, 492, 157, "cg/sys/telop/tp_ħ��������01.png");
		SetVertex("������", Cnter, 110);
	}

...	//��������ɥ����x
	CreateWindow("�����ȥ뷙��", 300, 0, 0, 1024, 576, false);
	SetAlias("�����ȥ뷙��", "�����ȥ뷙��");

...	//�����N���x
	Array($TitleNutName,";��","�_ʼ","�i�z","�O��","�؄e","����","��ӛ");
	AssocArray($TitleNutName,";��","�_ʼ","�i�z","�O��","�؄e","����","��ӛ");

	Array($TitleNutName[�_ʼ],762,150,true,�������,Start);
	Array($TitleNutName[�i�z],702,150,true,늹�ӛ�h,Load);
	Array($TitleNutName[�O��],282,150,true,�O������,Config);
	Array($TitleNutName[;��],822,150,true,�����꤫��,Quick);
	Array($TitleNutName[�؄e],222,150,true,�؄e����,Extra);
	Array($TitleNutName[����],162,150,true,�K�ˤ���,Exit);
	Array($TitleNutName[��ӛ],60,524,false,�饤�ʩ`����,LinerNotes);

	if(#�����K��){
		$TitleNutName[��ӛ][2]=true;
	}

	$WhileCount=0;
	while(Count($TitleNutName)>$WhileCount){
		if($TitleNutName[$WhileCount][2]){
			$TitleX=$TitleNutName[$WhileCount][0];
			$TitleY=$TitleNutName[$WhileCount][1];
	
			$TitleNutBase="�����ȥ�"+$TitleNutName[$WhileCount];
			CreateChoice($TitleNutBase);
			SetAlias($TitleNutBase, $TitleNutBase);
	
			if($TitleNutName[$WhileCount]=="��ӛ"){
				$TitleNutImage0="cg/sys/title/�饤�ʩ`����-000.png";
			}else{
				$TitleNutImage0="�����ȥ륤��`����";
			}
			$TitleNutImage1=$TitleNutBase+"����`����";
			$TitleNutFail="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"-001.png";
			LoadImage($TitleNutImage1, $TitleNutFail);
			$TitleNutImage2=$TitleNutBase+"����`����";
			$TitleNutFail="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"-002.png";
			LoadImage($TitleNutImage2, $TitleNutFail);
			$TitleNutImage3=$TitleNutBase+"����`����";
			$TitleNutFail="cg/sys/title/"+$TitleNutName[$WhileCount][3]+"-003.png";
			LoadImage($TitleNutImage3, $TitleNutFail);
		
			$TitleNutTemp1="�����ȥ뷙��/"+$TitleNutBase+"��";
			$TitleNutTemp1Alias="����"+$TitleNutBase+"��";
			CreateTexture($TitleNutTemp1, 100, $TitleX, $TitleY, $TitleNutImage1);
			SetAlias($TitleNutTemp1, $TitleNutTemp1Alias);
			//$TitleNutTemp2="�����ȥ뷙��/"+$TitleNutBase+"��";
			//$TitleNutTemp2Alias="���������ȥ�"+$TitleNutBase+"��";
			//CreateTexture($TitleNutTemp2, 100, $TitleX, $TitleY, $TitleNutImage2);
			//SetAlias($TitleNutTemp2, $TitleNutTemp2Alias);
			//$TitleNutTemp3="�����ȥ뷙��/"+$TitleNutBase+"��";
			//$TitleNutTemp3Alias="���������ȥ�"+$TitleNutBase+"��";
			//CreateTexture($TitleNutTemp3, 100, $TitleX, $TitleY, $TitleNutImage3);
			//SetAlias($TitleNutTemp3, $TitleNutTemp3Alias);
	
			$TitleNutHitAlias=$TitleNutBase+"��";
			$TitleNutHit=$TitleNutBase+"/MouseUsual/hit";
			CreateTexture($TitleNutHit, 100, $TitleX, $TitleY, $TitleNutImage0);
			SetAlias($TitleNutHit, $TitleNutHitAlias);
			Request($TitleNutHit, "Erase");
			//$TitleNutUsualAlias=$TitleNutBase+"��":
			//$TitleNutUsual=$TitleNutBase+"/MouseUsual/nut";
			//CreateTexture($TitleNutUsual, 100, $TitleX, $TitleY, $TitleNutImage1);
			//SetAlias($TitleNutUsual, $TitleNutUsualAlias);
			$TitleNutOverAlias=$TitleNutBase+"��";
			$TitleNutOver=$TitleNutBase+"/MouseOver/nut";
			CreateTexture($TitleNutOver, 100, $TitleX, $TitleY, $TitleNutImage2);
			SetAlias($TitleNutOver, $TitleNutOverAlias);
			$TitleNutClickAlias=$TitleNutBase+"��";
			$TitleNutClick=$TitleNutBase+"/MouseClick/nut";
			CreateTexture($TitleNutClick, 100, $TitleX, $TitleY, $TitleNutImage3);
			SetAlias($TitleNutClick, $TitleNutClickAlias);
	
			$TitleSoundOver=$TitleNutBase+"/MouseOver/se";
			CreateSound($TitleSoundOver, SE, $TitleOverSE);

			//$TitleProOverAlias=$TitleNutBase+"�ץ�����";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Over";
			//$TitleProOver=$TitleNutBase+"/MouseOver/Pro";
			//CreateProcess($TitleProOver, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProOver, $TitleProOverAlias);
			//$TitleProLeaveAlias=$TitleNutBase+"�ץ�����";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Leave";
			//$TitleProLeave=$TitleNutBase+"/MouseLeave/Pro";
			//CreateProcess($TitleProLeave, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProLeave, $TitleProLeaveAlias);
			//$TitleProClickAlias=$TitleNutBase+"�ץ�����";
			//$TitleNutPro="Title"+$TitleNutName[$WhileCount[4]+"Click";
			//$TitleProClick=$TitleNutBase+"/MouseClick/Pro";
			//CreateProcess($TitleProClick, 150, 0, 0, $TitleNutPro);
			//SetAlias($TitleProClick, $TitleProClickAlias);

			if($TitleNutName[$WhileCount]==";��"&&!ExistSave(9998)){
				Request($TitleNutBase,UnClickable);
				$nut=$TitleNutBase+"/*/*";
				Request($nut, Erase);
				Delete($TitleSoundOver);
			}
		}
		$WhileCount++;
	}

	if(!ExistSave(9998)){
		$TitleNutName[;��][2]=false;
	}


	Fade("�����ȥ�*",0,0,null,false);
	Fade("�����ȥ�*/*",0,0,null,false);
	Fade("�����ȥ�*/*/*",0,0,null,true);
}
//============================================================================//



//=============================================================================//
..//�������ȥ������
//=============================================================================//
function TitleFade()
{
	$TitleFadeIcon=0;

...	//�����ӕr
	if(!$Logo){
		//�ʂ�
		Zoom("�����ȥ뱳��", 0, 2000, 2000, Dxl2, true);
		Zoom("�����ȥ뱳����", 0, 2000, 2000, null, true);
		Zoom("�����ȥ��", 0, 800, 800, Dxl2, true);
		Zoom("�����ȥ����", 0, 800, 800, Dxl2, true);

		Request("�����ȥ륫��`��", AddRender);
		CreateSE("SE01","se����_냇��_�z�ǈ���02");

		//��£ǣͥץ쥤
		SoundPlay($TitleBGM,0,1000,true);
		Wait(2000);

		//����ȫ������
		MoveFRP1("@�����ȥ������",10000,15,15);
		MoveFRP2("@�����ȥ뱳����",10000,15,15);
	
		Move("�����ȥ��}��", 4000, @-100, @0, null, false);
		Zoom("�����ȥ��}��", 4000, 1000, 1000, null, false);
		Fade("�����ȥ��}��", 1000, 1000, null, false);
		Wait(2000);

		$TitleFadeTime=7000;
		Fade("�����ȥ��}��", 2000, 0, null, false);
		Zoom("�����ȥ뱳��", $TitleFadeTime, 1000, 1000, Axl1, false);
		Zoom("�����ȥ뱳����", $TitleFadeTime, 1500, 1500, Axl1, false);
		Zoom("�����ȥ������", $TitleFadeTime, 1500, 1500, Axl1, false);
		Zoom("�����ȥ����", $TitleFadeTime, 1500, 1500, Axl1, false);
		Zoom("�����ȥ������", $TitleFadeTime, 1600, 1600, Axl1, false);
		Fade("�����ȥ������", 3000, 800, null, false);
		Wait(1000);
	
		Fade("�����ȥ������", 3000, 0, null, false);
		Fade("�����ȥ����", 3000, 800, null, false);
		Wait(2000);
	
		DrawEffect("�����ȥ�����", 1000, "MiddleWave", 0, 1000, null);
		Fade("�����ȥ�����", 3000, 700, null, false);
	
		Fade("�����ȥ������", 200, 500, null, false);
		Rotate("�����ȥ넿������", 500, @0, @0, 0, Dxl3, false);
		Zoom("�����ȥ넿������", 2000, 2000, 2000, Dxl3, false);
		Fade("�����ȥ넿������", 100, 500, null, false);
		Fade("�����ȥ넿������", 300, 500, null, false);
		Fade("�����ȥ뱳��", 500, 300, null, false);
		Fade("�����ȥ뱳����", 500, 500, null, false);
		Fade("�����ȥ�Ѫɫ", 1000, 200, null, false);
		Wait(500);
		Fade("�����ȥ넿������", 1000, 0, null, false);
		Wait(500);
		Fade("�����ȥ�Ѫɫ", 1500, 0, null, false);
		Fade("�����ȥ������", 500, 0, null, false);
		Fade("�����ȥ뱳����", 500, 0, null, false);
		Fade("�����ȥ넿������", 700, 0, null, false);
		Fade("�����ȥ뱳��", 500, 100, null, false);
		Wait(500);
	
		Fade("�����ȥ������", 200, 500, null, false);
		Rotate("�����ȥ넿������", 500, @0, @0, 0, Dxl3, false);
		Zoom("�����ȥ넿������", 2000, 2000, 2000, Dxl3, false);
		Fade("�����ȥ넿������", 100, 500, null, false);
		Fade("�����ȥ넿������", 300, 500, null, false);
		Fade("�����ȥ뱳��", 500, 600, null, false);
		Fade("�����ȥ뱳����", 500, 800, null, false);
		Fade("�����ȥ�Ѫɫ", 1000, 200, null, false);
		Wait(500);
		Fade("�����ȥ넿������", 1000, 0, null, false);
		Wait(500);
		Fade("�����ȥ�Ѫɫ", 1500, 0, null, false);
		Fade("�����ȥ������", 500, 0, null, false);
		Fade("�����ȥ뱳����", 500, 0, null, false);
		Fade("�����ȥ넿������", 700, 0, null, false);
		Wait(500);
	
		Fade("�����ȥ륫��`��", 200, 1000, Axl1, true);
			SoundPlay("SE01",0,1000,false);
			//����ȫ�����ֹࣺͣ
			MoveFRP1stop();
			MoveFRP2stop();
			//���R�귵��
			TitleProcessStart();

			Fade("�����ȥ���",0,1000,null,false);
			Fade("�����ȥ����", 0, 0, null, false);
			Fade("�����ȥ������", 0, 0, null, false);
			Fade("�����ȥ넿��*", 0, 0, null, false);
			Zoom("�����ȥ뱳��", 0, 1000, 1000, null, false);
			Fade("�����ȥ뱳��", 0, 1000, null, false);
			Zoom("�����ȥ��", 0, 1000, 1000, null, false);
			Fade("�����ȥ��", 0, 1000, null, false);
			Zoom("�����ȥ����", 0, 1000, 1000, null, false);
			Fade("�����ȥ����", 0, 1000, null, false);
			SetBlur("�����ȥ����", true, 2, 500, 50, false);
			Zoom("�����ȥ뱳����", 0, 1000, 1000, null, false);
			Fade("�����ȥ뱳����", 0, 1000, null, false);
			SetBlur("�����ȥ뱳����", true, 2, 500, 50, false);
			Fade("�����ȥ�����", 0, 300, null, false);
	
		Fade("@���������ȥ��_ʼ��",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@���������ȥ��i�z��",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ�;�У�",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ��O����",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ��؄e��",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ���ڣ�",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ��ӛ��",$TitleFadeIcon,1000,null,false);
		if(!ExistSave(9998)){
			Fade("@���������ȥ�;�У�",$TitleFadeIcon,500,null,false);
		}
		WaitAction("@���������ȥ��_ʼ��", null);

		Zoom("�����ȥ����", 1000, 1200, 1200, null, false);
		Fade("�����ȥ����", 1000, 0, null, false);
		Zoom("�����ȥ뱳����", 1000, 1200, 1200, null, false);
		Fade("�����ȥ뱳����", 1000, 0, null, false);

		Fade("�����ȥ륫��`��",1000,0,null,true);

		$Logo=1;

	}else if($FullMetalDeamon){
...	//��������ţĽK����I��
		CreateTextureEX("�����ȥ됙��", 16000, Center, Middle, "cg/ev/ev267_��������ţ�_a.jpg");
		CreateTextureEX("�����ȥ됙��", 16010, -750, -770, "cg/ev/resize/ev267_��������ţ�_a.jpg");
		CreateTextureEX("�����ȥ됙��", 16100, @0, @0, "cg/ev/ev267_��������ţ�_b.jpg");
		CreateColorEXadd("�}ɫ��", 30000, "#FFFFFF");

		//SoundPlay($TitleBGM, 0, 700, false);
		Wait(160);

		CreateSE("SE01","se�M��_냇��_�i��01");
		MusicStart("SE01",0,1000,0,1000,null,false);
		WaitPlay("SE01", null);

		CreateSE("SE02","se���L_����_�z_̤���z��01");
		MusicStart("SE02",0,1000,0,1000,null,false);

		Fade("�����ȥ됙��", 0, 1000, null, false);
		Fade("�����ȥ됙��", 0, 1000, null, false);
		Shake("�����ȥ됙��", 300, 0, 20, 0, 0, 1000, null, true);
	
		Wait(500);
	
		Move("�����ȥ됙��", 8000, @0, -60, DxlAuto, false);
		Wait(6000);
		FadeDelete("�����ȥ됙��", 1000, true);
	
		Wait(1500);
	
		Fade("�����ȥ됙��", 2000, 1000, null, true);
		Delete("�����ȥ됙��");
	
		Wait(2000);
	
		CreateSE("SE03","se����_냇��_�z�ǈ���02");
		MusicStart("SE03",0,1000,0,1000,null,false);

		Fade("�}ɫ��", 0, 1000, null, true);
			Delete("�����ȥ됙��*");
			CreateTextureSP("�����ȥ됙��", 16200, @0, @0, "cg/ev/ev267_��������ţ�_c.jpg");
			CreatePlainEX("�}��д", 16210);
			SetBlur("�}��д", true, 2, 500, 80, false);
			Fade("�}��д", 0, 500, null, true);
		FadeDelete("�}��д", 1450, false);
		Zoom("�}��д", 1500, 1300, 1300, null, false);
		FadeDelete("�}ɫ��", 1000, true);
	
		//SoundPlay($TitleBGM, 2000, 650, false);
		//Wait(5000);

		//SetVolume($TitleBGM, 5000, 1000, NULL);
	
		//CreateTextureEX("�����ȥ됙��", 16200, Center, Middle, "cg/ev/ev267_��������ţ�_a.jpg");
		//Fade("�����ȥ됙��", 2000, 1000, null, true);
		//Delete("�����ȥ됙��");

		//Wait(2000);

		//Fade("�����ȥ됙��", 3000, 0, null, true);
		//Delete("�����ȥ됙��");

			Wait(6000);
			Fade("�����ȥ됙��", 5000, 0, null, true);
			Delete("�����ȥ됙��");

		CreateColor("�����ȥ됙��ɫ", 16200, 0, 0, 1024, 576, BLACK);
		Wait(1000);

			SoundPlay($TitleBGM, 2000, 1000, true);
			Wait(2000);

		//����������ۤ�ͬһ
		Fade("�����ȥ�����", 0, 1, null, true);
		DrawEffect("�����ȥ�����", 1000, "MiddleWave", 0, 1000, null);

		Fade("�����ȥ����", 0, 1000, null, false);
		Fade("�����ȥ뱳����", 0, 1000, null, false);
		Fade("�����ȥ뱳��",0,1000,null,true);
		Fade("�����ȥ��",0,1000,null,true);
		Fade("�����ȥ���",0,1000,null,false);

		Fade("@���������ȥ��_ʼ��",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@���������ȥ��i�z��",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ�;�У�",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ��O����",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ��؄e��",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ���ڣ�",$TitleFadeIcon,1000,null,false);
		if(#FullMetalDeamonG){
			Fade("@���������ȥ��ӛ��",$TitleFadeIcon,1000,null,false);
		}

		if(!ExistSave(9998)){
			Fade("@���������ȥ�;�У�",$TitleFadeIcon,500,null,false);
		}
		WaitAction("@���������ȥ��_ʼ��", null);

		SetBlur("�����ȥ����", true, 2, 500, 50, false);
		SetBlur("�����ȥ뱳����", true, 2, 500, 50, false);

		Zoom("�����ȥ����", 2000, 1200, 1200, null, false);
		Fade("�����ȥ����", 2000, 0, null, false);
		Zoom("�����ȥ뱳����", 2000, 1200, 1200, null, false);
		Fade("�����ȥ뱳����", 2000, 0, null, false);

		Fade("�����ȥ됙��ɫ", 2000, 0, null, true);
		Delete("�����ȥ됙��ɫ");

		if(!#FullMetalDeamonG){
			Move("@���������ȥ��ӛ��", 0, @0, @-15, null, true);
			Move("@���������ȥ��ӛ��", 1000, @0, @15, Dxl1, false);
			Fade("@���������ȥ��ӛ��",1000,1000,null,true);
			#FullMetalDeamonG=true;
		}

		//���R�귵��
		TitleProcessStart();
		$FullMetalDeamon=false;

	}else{
...	//������Ŀ�Խ�
		if($�������ȥ饿���ȥ�){
			if(#�������ȥ�£ǣ� != $TitleBGM){
				//��£ǣͥץ쥤
				SetVolume("@mbgm*", 1000, 0, NULL);
				SetVolume("@msong*", 1000, 0, NULL);
				SoundPlay($TitleBGM,0,1000,true);
			}

			Request("�����ȥ륫��`��", AddRender);
			CreateSE("SE01","se���L_����_���nͻ01");

			SoundPlay("SE01",0,1000,false);
			Fade("�����ȥ륫��`��", 0, 1000, Axl1, true);

			Fade("�����ƥॿ���ȥ�/�����ȥ뱳��", 0, 0, null, true);
			Request("�����ƥॿ���ȥ�", UnLock);
			Delete("�����ƥॿ���ȥ�");

			$�������ȥ饿���ȥ�=false;
		}else{
			//��£ǣͥץ쥤
			SoundPlay($TitleBGM,0,1000,true);

			//�ʂ�
			Move("�����ȥ뱳��", 0, @0, @-576, null, true);
			Zoom("�����ȥ��", 0, 800, 800, Dxl2, true);
	
			Request("�����ȥ륫��`��", AddRender);
			CreateSE("SE01","se����_냇��_�z�ǈ���02");
	
			Zoom("�����ȥ��", 2000, 1000, 1000, null, false);
			Fade("�����ȥ��", 2000, 1000, null, 1600);

			Move("�����ȥ뱳��", 400, @0, @576, null, false);
			Fade("�����ȥ뱳��", 400, 1000, null, 200);

			SoundPlay("SE01",0,1000,false);
			Fade("�����ȥ륫��`��", 200, 1000, Axl1, true);
		}

		Fade("�����ȥ�����", 0, 1, null, true);
		DrawEffect("�����ȥ�����", 1000, "MiddleWave", 0, 1000, null);

		Fade("�����ȥ����", 0, 1000, null, false);
		Fade("�����ȥ뱳����", 0, 1000, null, false);
		Fade("�����ȥ뱳��",0,1000,null,true);
		Fade("�����ȥ��",0,1000,null,true);
		Fade("�����ȥ���",0,1000,null,false);

		Fade("@���������ȥ��_ʼ��",$TitleFadeIcon,1000,Dxl1,false);
		Fade("@���������ȥ��i�z��",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ�;�У�",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ��O����",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ��؄e��",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ���ڣ�",$TitleFadeIcon,1000,null,false);
		Fade("@���������ȥ��ӛ��",$TitleFadeIcon,1000,null,false);
		if(!ExistSave(9998)){
			Fade("@���������ȥ�;�У�",$TitleFadeIcon,500,null,false);
		}
		WaitAction("@���������ȥ��_ʼ��", null);

		SetBlur("�����ȥ����", true, 2, 500, 50, false);
		SetBlur("�����ȥ뱳����", true, 2, 500, 50, false);

		Zoom("�����ȥ����", 1000, 1200, 1200, null, false);
		Fade("�����ȥ����", 1000, 0, null, false);
		Zoom("�����ȥ뱳����", 1000, 1200, 1200, null, false);
		Fade("�����ȥ뱳����", 1000, 0, null, false);

		Fade("�����ȥ륫��`��",1000,0,null,true);

		//���R�귵��
		TitleProcessStart();
	}

	//���ץ��������`��
	//Request("�����ȥ�ץ���", Start);

	//�����åȥե��`����
	TitleFocus();

	Request("�����ȥ�ե륹���ץ���", Stop);
	WaitAction("�����ȥ�ե륹���ץ���", null);
}
//============================================================================//



//=============================================================================//
..//�����åȥͥ����ȥե��`������
//=============================================================================//
function TitleFocus(){
	$TitleCount=Count($TitleNutName);

	$TitleWhile=0;
	while($TitleCount>$TitleWhile){
		if($TitleNutName[$TitleWhile][2]){
			TitleDocusGo();
		}
		$TitleWhile++;
	}
}

function TitleDocusGo()
{
	$TitleFocusBreak=true;
	$TitleStart=$TitleWhile+1;
	$TitleWhile2=0;
	while($TitleCount>$TitleWhile2&&$TitleFocusBreak){
		if($TitleStart>=$TitleCount){
			$TitleStart=0;
		}

		if($TitleNutName[$TitleStart][2]){
			$menunut="�����ȥ�"+$TitleNutName[$TitleWhile]+"/MouseUsual/hit";
			$menunut2="�����ȥ�"+$TitleNutName[$TitleStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,DOWN);
				SetNextFocus($menunut,$menunut2,LEFT);
			$TitleFocusBreak=false;
		}

		$TitleStart++;
		$TitleWhile2++;
	}


	$TitleFocusBreak=true;
	$TitleStart=$TitleWhile-1;
	$TitleWhile2=0;
	while($TitleCount>$TitleWhile2&&$TitleFocusBreak){
		if($TitleStart<0){
			$TitleStart=$TitleCount-1;
		}

		if($TitleNutName[$TitleStart][2]){
			$menunut="�����ȥ�"+$TitleNutName[$TitleWhile]+"/MouseUsual/hit";
			$menunut2="�����ȥ�"+$TitleNutName[$TitleStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,UP);
				SetNextFocus($menunut,$menunut2,RIGHT);
			$TitleFocusBreak=false;
		}

		$TitleStart--;
		$TitleWhile2++;
	}


}
//============================================================================//




//=============================================================================//
..//���ե��󥯥����ץ������N��
//=============================================================================//
//�������ȥ��ݳ��ե��󥯥����
function CreateTPO1($NutTPO1a,$NutTPO1b,$TimeTPO1,$FadeTPO1,$WaitTPO1,$ParTPO1){
	CreateProcess("�����ȥ�TPO1", 100, 0, 0, "ProcessTPO1");
	SetAlias("�����ȥ�TPO1", "�����ȥ�TPO1");
}
function ProcessTPO1(){
	begin:

	while(1){
		if($ParTPO1==1){
			LockVideo(true);//���å��O��
			Fade($NutTPO1b, $TimeTPO1, 0, null, false);
			Fade($NutTPO1a, $TimeTPO1, $FadeTPO1, null, false);
			LockVideo(false);//���å��O��
			Wait($WaitTPO1);
	
			LockVideo(true);//���å��O��
			Fade($NutTPO1b, $TimeTPO1, $FadeTPO1, null, false);
			LockVideo(false);//���å��O��
			Wait($WaitTPO1);
		}else if($ParTPO1==2){
			LockVideo(true);//���å��O��
			Fade($NutTPO1a, $TimeTPO1, $FadeTPO1, null, false);
			Fade($NutTPO1b, $TimeTPO1, 0, null, false);
			LockVideo(false);//���å��O��
			Wait($WaitTPO1);
	
			LockVideo(true);//���å��O��
			Fade($NutTPO1b, $TimeTPO1, $FadeTPO1, null, false);
			Fade($NutTPO1a, $TimeTPO1, 0, null, false);
			LockVideo(false);//���å��O��
			Wait($WaitTPO1);
		}
	}
}
function TitleProcessStart(){
	Request("�����ȥ�TPO1", Start);
}
function TitleProcessStop(){
	Request("�����ȥ�TPO1", Stop);
	WaitAction("�����ȥ�TPO1", null);
	Fade("�����ȥ�����", 100, 0, null, false);
	//���å��O��
	LockVideo(false);
}

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
	Request("@�����ȥ��_ʼ/MouseLeave/�����ȥ��_ʼ�ץ�����", Stop);
	WaitAction("@�����ȥ��_ʼ/MouseLeave/�����ȥ��_ʼ�ץ�����", null);

	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, false);

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
	Request("@�����ȥ��_ʼ��", Enter);

	$TitleStartPro=0;
	Request("@�����ȥ��_ʼ/MouseOver/�����ȥ��_ʼ�ץ�����", Stop);
	WaitAction("@�����ȥ��_ʼ/MouseOver/�����ȥ��_ʼ�ץ�����", null);
	Fade("@�����ȥ륢�����󥢥˥�*", 0, 0, null, true);
}

function TitleStartClick()
{
	Request("@�����ȥ��_ʼ��", Erase);
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
			case �����ȥ����{
				TitleProcessStop();

				//CreateSE("�Q���������",$TitleClickSE2);
				//SoundPlay("�Q���������",0,1000,false);

				$Title_Exit = true;
				call_chapter nss/sys_close.nss;
				$Title_Exit = false;

				TitleProcessStart();
			}

			if(ExistSave(9998)){
				case �����ȥ�;��{
					TitleProcessStop();

					CreateSE("�Q���������",$TitleClickSE2);
					SoundPlay("�Q���������",0,1000,false);
		
					SetVolume("@mbgm*", 3000, 0, NULL);
					Fade("�����ȥ륫��`", 1000, 1000, null, true);
					WaitPlay("�Q���������", null);
		
					$Title_Quick = true;
					call_chapter nss/sys_quickload.nss;
					$Title_Quick = false;
		
					TitleProcessStart();
				}
			}

			case �����ȥ��_ʼ{
				TitleProcessStop();

				CreateSE("�Q���������",$TitleClickSE2);
				Request("�Q���������", Lock);
				SoundPlay("�Q���������",0,1000,false);

				SetVolume("@mbgm*", 3000, 0, NULL);
				Fade("�����ȥ륫��`", 1000, 1000, null, true);

				$TitleSelect = 1;
			}

			case �����ȥ��؄e{
				TitleProcessStop();

				CreateSE("�Q���������",$TitleClickSE3);
				SoundPlay("�Q���������",0,1000,false);

				$TitleSelect = 2;
			}

			case �����ȥ��i�z{
				TitleProcessStop();

				CreateSE("�Q���������",$TitleClickSE);
				SoundPlay("�Q���������",0,1000,false);

				$Title_Load = true;
				call_chapter nss/sys_load.nss;
				$Title_Load = false;

				TitleProcessStart();
			}

			case �����ȥ��O��{
				TitleProcessStop();

				CreateSE("�Q���������",$TitleClickSE);
				SoundPlay("�Q���������",0,1000,false);

				$Title_Config = true;
				call_chapter nss/sys_config.nss;
				$Title_Config = false;

				TitleProcessStart();
			}

			case �����ȥ��ӛ{
				CreateSE("�Q���������",$TitleClickSE);
				SoundPlay("�Q���������",0,1000,false);

				Wait(100);

				#SYSTEM_window_full = false;
				System("OPEN:http://www.otomedream.com/temp/game/muramasamune/secret/");
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
		}
	}

}//============================================================================//


