$Revision: $

//=============================================================================//
//�����٥����åס�
//=============================================================================//
chapter main
{
	//���å��Έ���
	if($SYSTEM_skip_lock){
		return;
	}

	if(!$SYSTEM_skip_lock){
		#SYSTEM_skip_express=true;
		$SYSTEM_skip=true;
		$SYSTEM_menu_enable=false;
	}
}


