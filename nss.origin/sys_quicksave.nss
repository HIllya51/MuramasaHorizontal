$Revision: $

//=============================================================================//
//¡ö¥¯¥¤¥Ã¥¯¥»©`¥Ö¡ö
//=============================================================================//
chapter main
{
	if(!$SYSTEM_save_lock){
		$SYSTEM_keydown_q=false;

		//¥¢¥¤¥³¥ó¤òÄ¨Ïû¤¹¤ë¥³¥Þ¥ó¥É
		$SYSTEM_text_icon_disable=false;
		$SYSTEM_mousewheel_up=false;
		$SYSTEM_mousewheel_down=false;

		$PLAY_TIME+=(Time()-#START_TIME);
		#START_TIME=Time();
		Save(9998);

		Request("<@QuickSound>", Stop);
		SetVolume("<@QuickSound>", 0, 1000, NULL);
		Request("<@QuickSound>", Play);
	}
}

