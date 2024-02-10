$Revision: 35 $

#include "nss/function.nss"
#include "nss/function_move.nss"
#include "nss/function_select.nss"
#include "nss/function_cockpit.nss"
#include "nss/function_quick.nss"

//"nss/function_stand.nss"��function.nss�ڤ�include��
//"nss/function_process.nss"��function.nss�ڤ�include��

//�룺�øжȻ�����
#include "nss/sys_hmode.nss"

//============================================================================//
..//�����`���`���Єe��
//============================================================================//
chapter main
{
	if($GameStart != 1)
	{
		$GameName = 0;
		$GameContiune = 1;
		Reset();
	}

	if(!#TitleConquest){
		//�����ٌ������
		SystemConquest();
		Save(0);
		#TitleConquest=true;
	}

	SelectStoryMode();
}
//=============================================================================//


//============================================================================//
..//�����`���_ʼ��
//============================================================================//
function SelectStoryMode()
{
	if($TitleSelect==3){
		ClearScore(LOCAL);
		ClearBacklog();
		DeleteSaveFile(9999);

		#һ�¥��ꥢ = true;
		#voice_on_�y�Ǻ�=true;
		#voice_on_����������=true;
		#voice_on_������Ů��=true;
		#voice_on_�������w=true;
		#voice_on_����ҰС��=true;
		#voice_on_�R���ұ�=true;
		#voice_on_⏴��=true;
		#voice_on_���B����֦=true;
		#voice_on_���}����=true;
		#voice_on_��������=true;
		#voice_on_�c��һ��=true;
		#voice_on_ѩ܇�һ�i=true;
		#voice_on_���=true;
		#voice_on_����=true;

		$TITLE_NOW="��";
		$GameName = "ma02_001.nss";
	}else if($GameName == 0){
		ClearScore(LOCAL);
		ClearBacklog();
		DeleteSaveFile(9999);

		$TITLE_NOW=" �������������¡��������� ";
		$GameName = "ma00_000.nss";
	}



	//�ClearScore���������줿������ץȵĤʤ���ٶ��x
	$BOX_Init = true;
	$BGM_Init = true;
	$Logo = true;
	$GameStart = 1;

	//����`�ॹ�ԩ`��
	#SYSTEM_play_speed = #play_speed_plus;

	//������ƥ�����ϵ�γ��ڻ�
	$PLACE_title = false;

	//��r�g�����ץ쥤�r�g��
	#START_TIME = Time();
	$PLAY_TIME = 0;

	$SYSTEM_menu_lock=false;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_erase_lock=false;
	$SYSTEM_backlog_lock=false;

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_text_auto_lock=true;

	$SYSTEM_text_erase=false;
	$SYSTEM_text_waitkey=true;

	//ConfigCharacterVoice();

	//������`�ȥ��åȥ�˥�`
	QuickSet();

	$GameCircle=true;
	while($GameCircle){
		$ConGameName = "nss/" + $GameName;
		$AllRead = Conquest($ConGameName,$GameName,null);

		$GameName2 = $GameName + "_MAIN";
		$hoge="nss/" + $GameName + "->" + $GameName2;
//		Conquest($ConGameName,$GameName2,true);
		call_scene $hoge;
	}

	//�ﳬ�٤���Ή��w��
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//�葉����`�_�J��
	$CgArray=false;

	//������`�ȥ��åȥ�˥�`ֹͣ
	QuickStop();
}
















function SelectEndMode()
{
	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_text_auto_lock=true;

	#SYSTEM_window_full_lock=false;
	$SYSTEM_backselect_lock=true;
	$SYSTEM_text_auto_lock=true;
	$SYSTEM_load_lock=true;
	$SYSTEM_save_lock=true;
	$SYSTEM_skip_lock=false;
	$SYSTEM_text_erase_lock=false;
	$SYSTEM_backlog_lock=true;
	$SYSTEM_menu_lock=false;

	$SYSTEM_text_erase=false;
	$SYSTEM_text_waitkey=true;

	//�����ȥ�ˑ��루�քӣ�
	//�ҥ���å����քӣ�
	//�O�����քӣ�

	//�����˹�����ȫ�_�ťե饰
	if(#d1_true_end){
		$VoiceOnAll=true;
	}
	//ConfigCharacterVoice();
	//VoiceReset();

	$GameCircle=1;
	while($GameCircle==1)
	{
		$ConGameName = "nss/" + $GameName;
		$AllRead = Conquest($ConGameName,$GameName,null);

		$GameName2 = $GameName + "_MAIN";
		$hoge="nss/" + $GameName + "->" + $GameName2;
		Conquest($ConGameName,$GameName2,true);
		call_scene $hoge;
	}
}



