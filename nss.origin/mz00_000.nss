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
//�����å���å�
	QuickStop();

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev009_���`�४�`�Щ` = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//	QuickStart();
	$SYSTEM_menu_lock = false;
	$SYSTEM_skip_lock = false;

	$GameCircle=0;

}

scene mz00_000.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡""

//��ͨ

	PrintBG("�ϱ���", 30000);

	CreateColorEX("�\2", 20000, "BLACK");
	Fade("�\2", 0, 1000, null, true);

	Delete("�ϱ���");

	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev009_���`�४�`�Щ`.jpg");
	Fade("�}����100", 0, 1000, null, true);

	CreateTextureEX("�}����300", 19000, 55, 221, "cg/ev/resize/ev009_���`�४�`�Щ`_l2.png");
	Fade("�}����300", 0, 1000, null, true);

	CreateTextureEX("�}����200", 18000, 55, 221, "cg/ev/resize/ev009_���`�४�`�Щ`_l.png");
	Fade("�}����200", 0, 350, null, true);

	SetVertex("�}����200", 333, 58);


	DrawEffect("�}����200", 5000, "Ripple", 700, 500, null);
	FadeDelete("�\2", 2000, true);

//	Zoom("�}����200", 1000, 1050, 1050, null, true);
//	Zoom("�}����200", 1000, 1000, 1000, null, true);
//	Zoom("�}����200", 1000, 1050, 1050, null, true);
//	Zoom("�}����200", 1000, 1000, 1000, null, true);

	WaitKey();

	ClearFadeAll(3000, true);


//������������������������������������������������


}


