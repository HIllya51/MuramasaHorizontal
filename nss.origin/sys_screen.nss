$Revision: $

//=============================================================================//
//��������`���
//=============================================================================//
chapter main
{
	//���å��Έ���
	if(#SYSTEM_window_full_lock){
		return;
	}

	if(!#SYSTEM_window_full_lock){
		Wait(16);
		#SYSTEM_window_full=!#SYSTEM_window_full;
	}
	$SYSTEM_keydown_f=false;
}

