
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_043vsb.nss_MAIN
{

	
//е│е├епе╘е├е╚╙├г╙гхгЇ
	//CP_AllSet("┤х╒¤");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//иЛеде┘еєе╚г├г╟
	#ev170_е╨еэеже║╩ЁщLдЄ╔фЪв_a=true;
	#ev170_е╨еэеже║╩ЁщLдЄ╔фЪв_c=true;

	//иЛеый`е╚е╒еще░бв▀xТk╓лбв┤╬д╬GameName
	$PreGameName = $GameName;

//двдндхдєб╕г├г╨г║┤╬д╬е╒ебедеыд╟г├г╨╩╣╙├д╖д╞д╩длд├д┐д╬д╟═╦▒▄б╣
	Cockpit_AllFade0();
	//CP_AllDelete();

	$GameName = "mc04_044vs.nss";

}

scene mc04_043vsb.nss
{
	$е╣епеъе╫е╚е╨й`е╕ечеє = "  Version $Revision: 1 $";
	$ШЛ│╔├√ = ModuleFileName();
	$ШЛ╬─├√ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("╔╧▒│╛░", 30000);
	CreateColorSP("╜}╔л100", 18000, "BLACK");
	Delete("╔╧▒│╛░");

..//е╕еуеєе╫╓╕╢и
//╟░е╒ебедеыбб"mc04_043vs.nss"

//бёЪвд╣д┐дс


//иDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиD
<PRE @box0>
[text0010]
бб╔▒бг

бб╥к╔▒╦└─╟╕Ў╞я╩┐бг

</PRE>
	SetTextEXC();
	TypeBeginCIO();//иDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиD

//бЇе╒еще├е╖ехе╨е├епг║╩ЁщLд╬╦└
	EfRecoIn1(18500,600);

	CreateTextureEX("╜}╗╪╧ы", 18000, @0, @0, "cg/ev/ev170_е╨еэеже║╩ЁщLдЄ╔фЪв_c.jpg");
	Fade("╜}╗╪╧ы", 0, 1000, null, true);
	CreateTextureEX("╜}╗╪╧ы2", 18000, @0, @0, "cg/ev/ev170_е╨еэеже║╩ЁщLдЄ╔фЪв_a.jpg");

	EfRecoIn2(300);

	Wait(500);

	Fade("╜}╗╪╧ы2", 500, 1000, null, true);

//иDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиD
<PRE @box0>
[text0020]
бб╘ў║▐бг
бб╘ў║▐гм╘ў║▐гм╘ў║▐╘ў║▐╘ў║▐бг

бб─╟╕Ў╩╟│Ё╡╨бг
бб╤°╕╕╡─│Ё╚╦бг

бб╬▐╖и╚─╦ббг
бб▓╗┐╔╚─╦ббг

бб╘ў║▐гм╗│╫┼╘ў║▐╚е╔▒бг
бб╓┤╫┼╙┌╘ў╢ё╩╡╨╨╔▒║жбг

бб╔▒бг

бб╬и╥╗╡──ю═╖бг
бб╞ф╦√╡─╥╗╟╨╢╝├╗╙╨▒╪╥кбг

бб┤╒╢╖╛░├ў╓╗╥к╙╨╒т╕Ў╛═║├бг

бб╜л╔▒╥т╣с│╣╡╜╡╫бкбкбкбк
бб
бб╓╗╓к╡└╔▒╚╦╓о╩ї╡─┤╒╢╖╛░├ў╧ы╒№╛╚┤є─ё╧у─╬╓ж
╡─╗░гм│¤┤╦╥╘═т▒Ё╬▐╦√╖и!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//иDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиDиD


//бЇСщъLП═Ов
	EfRecoOut1(300);

	Delete("╜}╗╪╧ы*");
	EfRecoOut2(600,true);

	CreateSE("SE10","seСщъL_Д╙╫ў_┐╒═╗▀M05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CreateTextureSP("╜}▒│╛░50", 100, Center, -1600, "cg/bg/bg202_╨¤╗╪╤▌│Ў▒│╛░╔╜_01.jpg");
	Request("╜}▒│╛░50", Smoothing);

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();


	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("seСщъL_Д╙╫ў_┐╒═╗▀M02",1000);


	DrawDelete("╜}╔л100", 200, 100, "slide_02_01_1", false);
	Move("╜}▒│╛░50", 1000, @0, @800, Dxl2, true);

//бЇФ│ЄT╜╙╜№
	OnSE("seСщъL_Д╙╫ў_┐╒═╗▀M03",1000);
	Fade("@╜}└ъ", 200, 1000, null, false);
	Zoom("@╜}└ъ", 900, 500, 500, Axl3, true);
	Move("@╜}└ъ", 500, @0, @-50, Dxl2, true);
	Move("@╜}└ъ", 400, @0, @50, Dxl3, false);
	Fade("╜}╔л100", 400, 1000, Dxl3, false);


//бЇ┤х╒¤ОбыКбгеьй`еыемеєЬ╩Вф
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("№\─╗г▒", 18000, "BLACK");
	DrawTransition("№\─╗г▒", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	Cockpit_AllFade0();
//	CP_AllDelete();


	Delete("╜}M");
	Delete("╜}▒│╛░50");
	Delete("╜}EV100");
	Delete("╜}EV200");
	Delete("╜}shin");
	Delete("╜}╔л400");
	Delete("еие╒езепе╚г▒");

	CreateWindow("ежегеєе╔еж╔╧", 15000, 0, 0,1024, 288, false);
	CreateWindow("ежегеєе╔еж╧┬", 15000, 0, 288, 1024, 576, false);
	SetAlias("ежегеєе╔еж╔╧","ежегеєе╔еж╔╧");
	SetAlias("ежегеєе╔еж╧┬","ежегеєе╔еж╧┬");

	CreateWindow("ежегеєе╔еж┐k", 15000, 512, 0,400, 576, false);
	SetAlias("ежегеєе╔еж┐k","ежегеєе╔еж┐k");
	CreateTextureEX("ежегеєе╔еж┐k/╜}EV100", 16000, Center, Middle, "cg/ev/ev902_┤х╒¤ыК┤┼Тi╡╢еьй`еыемеє_b.jpg");
	Request("ежегеєе╔еж┐k/╜}EV100", Smoothing);
	Zoom("ежегеєе╔еж┐k/╜}EV100", 0, 2000, 2000, null, true);
	Move("ежегеєе╔еж┐k/╜}EV100", 0, @-300, @0, null, false);
	CreateTextureEX("ежегеєе╔еж┐k/╜}EV200", 16000, Center, Middle, "cg/ev/ev902_┤х╒¤ыК┤┼Тi╡╢еьй`еыемеє_c.jpg");
	Request("ежегеєе╔еж┐k/╜}EV200", Smoothing);
	Zoom("ежегеєе╔еж┐k/╜}EV200", 0, 2000, 2000, null, true);
	Move("ежегеєе╔еж┐k/╜}EV200", 0, @-300, @0, null, false);




	CreateTextureSP("╜}EV100", 14000, Center, Middle, "cg/ev/ev902_┤х╒¤ыК┤┼Тi╡╢еьй`еыемеє_a.jpg");
	CreateTextureEX("╜}EV200", 14000, Center, Middle, "cg/ev/ev902_┤х╒¤ыК┤┼Тi╡╢еьй`еыемеє_b.jpg");
	Request("╜}EV100", Smoothing);
	Zoom("╜}EV100", 0, 2000, 2000, null, true);
	Move("╜}EV100", 0, @+400, @+288, null, false);
	Request("╜}EV200", Smoothing);
	Zoom("╜}EV200", 0, 2000, 2000, null, true);
	Move("╜}EV200", 0, @0, @+288, null, false);

	Move("╜}EV100", 500, @-400, @0, Dxl1, false);
	Move("ежегеєе╔еж╔╧", 300, @0, @-200, null, false);
	Move("ежегеєе╔еж╧┬", 300, @0, @+200, null, false);
	DrawDelete("№\─╗г▒", 300, 100, "slide_03_01_1", true);
	Delete("№\─╗г▒");

	WaitAction("╜}EV100", null);
	CreateColorEXadd("╜}╔л100", 14001, "White");

	OnSE("se╠╪╩т_цz_╫░╫┼01",1000);

//	SoundPlay("@mbgm11",0,1000,true);

	CreateProcess("е╫еэе╗е╣г▒", 12000, 0, 0, "Lastfire");
	SetAlias("е╫еэе╗е╣г▒","е╫еэе╗е╣г▒");
	Request("е╫еэе╗е╣г▒",Start);

	OnSE("seСщъL_╣еУ─_цz_ДЗък01",1000);
	OnSE("seСщъL_Д╙╫ў_┐╒═╗▀M06",1000);

	Fade("╜}EV200", 0, 1000, null, false);
	Fade("╜}╔л100", 0, 1000, null, false);
	DrawTransition("╜}╔л100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("╜}EV100");
	FadeDelete("╜}╔л100",1000,false);
	Move("╜}EV200", 1000, 0, 0, Axl3, false);
	Zoom("╜}EV200", 1000, 1000, 1000, Axl3, true);

	EffectZoomadd(15000, 700, 100, "cg/ev/ev902_┤х╒¤ыК┤┼Тi╡╢еьй`еыемеє_d.jpg", false);

	Wait(200);

//дкдмд▀г╩АбыК

	CreateColorSP("ежегеєе╔еж╔╧/╜}╔л100", 15000, "Black");
	CreateColorSP("ежегеєе╔еж╧┬/╜}╔л100", 15000, "Black");

	CreateColorEX("╜}╔л100", 14005, "Black");
	CreateColorEXadd("е╒еще├е╖ехевеже╚", 18005, "WHITE");
	Fade("╜}╔л100", 0, 700, null, false);
	DrawTransition("╜}╔л100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("ежегеєе╔еж┐k/╜}EV100", 0, 1000, null, false);
	DrawTransition("ежегеєе╔еж┐k/╜}EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);

	Wait(300);

	Fade("ежегеєе╔еж┐k/╜}EV200", 0, 1000, null, false);
	Shake("ежегеєе╔еж┐k/╜}EV200", 500000, 2, 1, 0, 0, 1000, null, false);

	OnSE("se╠╪╩т_ыКУ─_ОбыК01",700);

	CreateSE("SE01","se╠╪╩т_ыКУ─_ОбыК01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("ежегеєе╔еж┐k/╜}200", 20000, #99CCFF);
	Fade("ежегеєе╔еж┐k/╜}200", 10, 600, null, true);
	Fade("ежегеєе╔еж┐k/╜}200", 100, 0, null, true);
	Fade("ежегеєе╔еж┐k/╜}200", 10, 500, null, true);
	Fade("ежегеєе╔еж┐k/╜}200", 100, 0, null, true);
	Fade("ежегеєе╔еж┐k/╜}200", 10, 700, null, true);
	Fade("ежегеєе╔еж┐k/╜}200", 100, 0, null, true);
	Fade("ежегеєе╔еж┐k/╜}200", 10, 500, null, true);
	Fade("ежегеєе╔еж┐k/╜}200", 100, 0, null, true);
	Fade("ежегеєе╔еж┐k/╜}200", 10, 800, null, true);
	Fade("ежегеєе╔еж┐k/╜}200", 100, 0, null, true);

	SetVolume("SE01", 100, 0, null);



	CreateColorSP("№\─╗г▒", 21000, "BLACK");
	DrawTransition("№\─╗г▒", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ежегеєе╔еж╔╧/*");
	Delete("ежегеєе╔еж╧┬/*");
	Delete("ежегеєе╔еж┐k/*");

	Delete("ежегеєе╔еж╔╧");
	Delete("ежегеєе╔еж╧┬");
	Delete("ежегеєе╔еж┐k");

	Delete("╜}╔л100");
	Delete("╜}EV100");
	Delete("╜}EV200");

	CreateTextureSP("╜}EV100", 1999, Center, Middle, "cg/ev/ev902_┤х╒¤ыК┤┼Тi╡╢еьй`еыемеє_c.jpg");
	CreateTextureSP("╜}EV200", 2000, Center, Middle, "cg/ev/ev902_┤х╒¤ыК┤┼Тi╡╢еьй`еыемеє_d.jpg");

	Shake_Loop("@╜}EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se╠╪╩т_ыКУ─_ОбыК01");
	CreateSE("SE02","se╠╪╩т_ыКУ─_╖┼ыК02");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("№\─╗г▒", 300, 100, "slide_01_01_1", true);

	Fade("╜}▒│╛░200", 500, 1000, null, true);


	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(1000);

	SetVolume("*", 3000, 0, null);

	Fade("е╒еще├е╖ехевеже╚", 1000, 1000, null, true);

	ClearFadeAll(2000, true);

	//CP_AllDelete();


	Wait(1000);

}

..//е╕еуеєе╫╓╕╢и
//┤╬е╒ебедеыбб"mc04_044vs.nss"