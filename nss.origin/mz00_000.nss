//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mz00_000.nss_MAIN
{

	$SYSTEM_menu_lock = true;
	$SYSTEM_skip_lock = true;
//¥¯¥¤¥Ã¥¯¥í¥Ã¥¯
	QuickStop();

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//¨‹¥¤¥Ù¥ó¥È£Ã£Ç
	#¥¤¥Ù¥ó¥È¥Õ¥¡¥¤¥ëÃû=true;
	#ev009_¥²©`¥à¥ª©`¥Ð©` = true;

	//¨‹¥ë©`¥È¥Õ¥é¥°¡¢ßx’kÖ«¡¢´Î¤ÎGameName
	$PreGameName = $GameName;

//	QuickStart();
	$SYSTEM_menu_lock = false;
	$SYSTEM_skip_lock = false;

	$GameCircle=0;

}

scene mz00_000.nss
{
	$¥¹¥¯¥ê¥×¥È¥Ð©`¥¸¥ç¥ó = "  Version $Revision: 1 $";
	$˜‹³ÉÃû = ModuleFileName();
	$˜‹ÎÄÃû = $SYSTEM_present_process;
	SystemInit();

..//¥¸¥ã¥ó¥×Ö¸¶¨
//Ç°¥Õ¥¡¥¤¥ë¡¡""

//¹²Í¨

	PrintBG("ÉÏ±³¾°", 30000);

	CreateColorEX("ü\2", 20000, "BLACK");
	Fade("ü\2", 0, 1000, null, true);

	Delete("ÉÏ±³¾°");

	CreateTextureEX("½}±³¾°100", 18000, Center, Middle, "cg/ev/ev009_¥²©`¥à¥ª©`¥Ð©`.jpg");
	Fade("½}±³¾°100", 0, 1000, null, true);

	CreateTextureEX("½}±³¾°300", 19000, 55, 221, "cg/ev/resize/ev009_¥²©`¥à¥ª©`¥Ð©`_l2.png");
	Fade("½}±³¾°300", 0, 1000, null, true);

	CreateTextureEX("½}±³¾°200", 18000, 55, 221, "cg/ev/resize/ev009_¥²©`¥à¥ª©`¥Ð©`_l.png");
	Fade("½}±³¾°200", 0, 350, null, true);

	SetVertex("½}±³¾°200", 333, 58);


	DrawEffect("½}±³¾°200", 5000, "Ripple", 700, 500, null);
	FadeDelete("ü\2", 2000, true);

//	Zoom("½}±³¾°200", 1000, 1050, 1050, null, true);
//	Zoom("½}±³¾°200", 1000, 1000, 1000, null, true);
//	Zoom("½}±³¾°200", 1000, 1050, 1050, null, true);
//	Zoom("½}±³¾°200", 1000, 1000, 1000, null, true);

	WaitKey();

	ClearFadeAll(3000, true);


//¡ô£²£³£´£µ£¶£·£¸£¹£°£±£²£³£´£µ£¶£·£¸£¹£°£±£²£³£´


}


