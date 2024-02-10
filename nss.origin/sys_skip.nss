$Revision: $

//=============================================================================//
//¡ö³¬ËÙ¥¹¥­¥Ã¥×¡ö
//=============================================================================//
chapter main
{
	//¡ï¥í¥Ã¥¯¤ÎˆöºÏ
	if($SYSTEM_skip_lock){
		return;
	}

	if(!$SYSTEM_skip_lock){
		#SYSTEM_skip_express=true;
		$SYSTEM_skip=true;
		$SYSTEM_menu_enable=false;
	}
}


