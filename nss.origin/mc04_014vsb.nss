
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vsb.nss_MAIN
{
	//¡ï‚€„e¥Þ¥¯¥í³¬ËÙŒê
	Conquest("nss/mc04_014vsb.nss","RandomMeimetsu_mc04_014vsb",true);
	Conquest("nss/mc04_014vsb.nss","RandomMeimetsuSet_mc04_014vsb",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//¨‹¥¤¥Ù¥ó¥È£Ã£Ç
	#¥¤¥Ù¥ó¥È¥Õ¥¡¥¤¥ëÃû=true;
	#ev187_ã‘·ü¤ÎÑý„‡_g=true;
	#ev187_ã‘·ü¤ÎÑý„‡_h=true;


	//¨‹¥ë©`¥È¥Õ¥é¥°¡¢ßx’kÖ«¡¢´Î¤ÎGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_014vsb.nss
{
	$¥¹¥¯¥ê¥×¥È¥Ð©`¥¸¥ç¥ó = "  Version $Revision: 1 $";
	$˜‹³ÉÃû = ModuleFileName();
	$˜‹ÎÄÃû = $SYSTEM_present_process;
	SystemInit();



..//¥¸¥ã¥ó¥×Ö¸¶¨
//Ç°¥Õ¥¡¥¤¥ë¡¡"mc04_014vs.nss"

//¡ñ´ý¤Ä
	PrintBG("ÉÏ±³¾°", 30000);
	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("½}ÑÝ±³¾°09EX", 4101, @0, @0, "cg/ev/ev187_ã‘·ü¤ÎÑý„‡_i.jpg");
	Request("½}ÑÝ±³¾°09EX", Smoothing);
	Zoom("½}ÑÝ±³¾°09EX", 0, 1100, 1100, null, true);

	Delete("ÉÏ±³¾°");

//¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D
<PRE @box0>
[text0010]
¡¡²»ÄÜ¼±£¡
¡¡Õâ¿ÖÅÂÒ²ÊÇÓÕµÐÖ®Êõ¡£

¡¡Èç¹ûÎÒ»ÅÕÅµØ½ø¹¥£¬ÄÇ¾ÍÖÐÁËÏÝÚå¡£
¡¡Àä¾²¡ª¡ªÀä¾²£¬É÷ÖØµØÑ°ÕÒ»ú»á£¬

</PRE>
	SetTextEXL();
	TypeBeginLIO();//¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D

	CreateTextureEX("½}±³¾°09", 4300, @0, @0, "cg/ev/ev187_ã‘·ü¤ÎÑý„‡_c.jpg");
	CreateTextureEX("½}±³¾°10", 4400, @0, @0, "cg/ev/ev187_ã‘·ü¤ÎÑý„‡_b.jpg");
	CreateTextureEX("½}±³¾°11", 4500, @0, @0, "cg/ev/ev187_ã‘·ü¤ÎÑý„‡_f.jpg");
	CreateTextureEX("½}±³¾°12", 4600, @0, @0, "cg/ev/ev187_ã‘·ü¤ÎÑý„‡_h.jpg");
	Request("½}±³¾°*", Smoothing);
	Zoom("½}±³¾°*", 0, 1100, 1100, null, true);

	MoveFFP1("@½}±³¾°09",20000);
	MoveFFP2("@½}±³¾°10",20000);
	MoveFRP1("@½}±³¾°11",20000,20,20);
	MoveFRP2("@½}±³¾°12",20000,20,20);

//¡ôéœ²î·Ö
	Fade("½}±³¾°09", 2000, 1000, null, true);
	Wait(500);

//¡ô¤Ü¤ä¤±²î·Ö
	Fade("½}±³¾°10", 2000, 1000, null, true);
	Wait(500);

//¡ôéœ²î·Ö£â
	Fade("½}±³¾°11", 2000, 1000, null, true);
	Wait(500);

//¡ô¤Ü¤ä¤±²î·Ö£ã
	Fade("½}±³¾°12", 2000, 1000, null, true);
	Wait(500);

	CreateColorSP("ÏÂ·ó¤­", 100, "BLACK");

	MoveFFP1stop();
	MoveFFP2stop();

	CreateTextureSP("½}±³¾°10", 4400, @0, @0, "cg/ev/ev187_ã‘·ü¤ÎÑý„‡_g.jpg");
	CreateTextureSP("½}±³¾°11", 4500, @0, @0, "cg/ev/ev187_ã‘·ü¤ÎÑý„‡_i.jpg");
	Request("½}±³¾°*", Smoothing);
	Zoom("½}±³¾°*", 0, 1100, 1100, null, true);

	MoveFFP1("@½}±³¾°10",20000);
	MoveFFP2("@½}±³¾°11",30000);

	Delete("½}±³¾°09*");
	RandomMeimetsu_mc04_014vsb();

	SetFwL("cg/fw/fw¾°Ã÷_¿àÍ´.png");

//¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D
<PRE @box0>
[text0020]
//¡¾¾°Ã÷¡¿
<voice name="¾°Ã÷" class="¾°Ã÷" src="voice/mc04/014vs0650a00">
¡¸¡­¡­ÎØ¡­¡­ÎØ¡­¡­¡¹


{	FwL("cg/fw/fwã‘·ü_Í¨³£.png");}
//¡¾ª{×Óºð¡¿
<voice name="ª{×Óºð" class="ª{×Óºð" src="voice/mc04/014vs0660a06">
¡¸¡ª¡ª¡ª¡ª¡¹

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D¨D

//¡ôÒ•½ç¤¬ƒA¤¯¡£»­Ïñ»ØÜž£¿

//CG¤ÎÔ”¼š¤¬À´¤Ê¤±¤ì¤ÐºÎ¤È¤âÑÔ¤¨¤Þ¤»¤ó¤¬¡¢»ØÜž¤·¤Þ¤¹¤Èü\¤¬ÒŠ¤¨¤Æ¤·¤Þ¤¦¤Î¤ÇDrawDelete¤Ë¤·¤Æ¤¤¤Þ¤¹ inc™Ñ¾®

	SetVolume("@mbgm*", 300, 0, null);

//¡ô´ÌÍ»
	CreateColorSP("½}É«ü\", 20050, "#000000");
	SL_centerin2(21000,@0, @0,1000);
	OnSE("se‘éêL_¹¥“Ä_µ¶Õñ¤ë05", 1000);
	SL_centerinfade2(10);

//¡ô¤°¤µ©`¡£Ñª¡£
	OnSE("se‘éêL_¹¥“Ä_µ¶´Ì¤µ¤ë05", 1000);

	CreateColorSP("³à", 21100, "#990000");
	DrawTransition("³à", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("³à", 2000, true);

	ClearWaitAll(1500, 0);


//¡ô¥²©`¥à¥ª©`¥Ð©`

}

..//¥¸¥ã¥ó¥×Ö¸¶¨
//´Î¥Õ¥¡¥¤¥ë

..¥é¥ó¥À¥àÃ÷œç
function RandomMeimetsu_mc04_014vsb()
{
	CreateProcess("£Ð¥é¥ó¥À¥àÃ÷œç", 5000, 0, 0, "RandomMeimetsuSet_mc04_014vsb");
	SetAlias("£Ð¥é¥ó¥À¥àÃ÷œç","£Ð¥é¥ó¥À¥àÃ÷œç");
	Request("£Ð¥é¥ó¥À¥àÃ÷œç", Start);
}

function RandomMeimetsuSet_mc04_014vsb()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@½}±³¾°12", $RFTS, 0, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;
	Wait($RWS);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 1000);
	Fade("@½}±³¾°11", $RFTS2, 0, null, true);

	$RWaitSet2 = Random(10) + 10;
	$RWS2 = ($RWaitSet2 * 10) +600;
	Wait($RWS2);


	$RFadeTimeSet3 = Random(3) + 1;
	$RFTS3 = ($RFadeTimeSet3 * 1000);
	Fade("@½}±³¾°11", $RFTS3, 1000, null, true);

	$RWaitSet3 = Random(3) + 10;
	$RWS3 = ($RWaitSet3 * 10) +600;
	Wait($RWS3);

	$RFadeTimeSet4 = Random(3) + 2;
	$RFTS4 = ($RFadeTimeSet4 * 1000);
	Fade("@½}±³¾°12", $RFTS4, 1000, null, true);

	$RWaitSet4 = Random(3) + 10;
	$RWS4 = ($RWaitSet4 * 10) +600;
	Wait($RWS4);

	}

}