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
//クイックロック
	QuickStop();

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//��イベントＣＧ
	#イベントファイル兆=true;
	#ev009_ゲ�`ムオ�`バ�` = true;

	//��ル�`トフラグ、�x�k岔、肝のGameName
	$PreGameName = $GameName;

//	QuickStart();
	$SYSTEM_menu_lock = false;
	$SYSTEM_skip_lock = false;

	$GameCircle=0;

}

scene mz00_000.nss
{
	$スクリプトバ�`ジョン = "  Version $Revision: 1 $";
	$��撹兆 = ModuleFileName();
	$��猟兆 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ峺協
//念ファイル　""

//慌宥

	PrintBG("貧嘘尚", 30000);

	CreateColorEX("�\2", 20000, "BLACK");
	Fade("�\2", 0, 1000, null, true);

	Delete("貧嘘尚");

	CreateTextureEX("�}嘘尚100", 18000, Center, Middle, "cg/ev/ev009_ゲ�`ムオ�`バ�`.jpg");
	Fade("�}嘘尚100", 0, 1000, null, true);

	CreateTextureEX("�}嘘尚300", 19000, 55, 221, "cg/ev/resize/ev009_ゲ�`ムオ�`バ�`_l2.png");
	Fade("�}嘘尚300", 0, 1000, null, true);

	CreateTextureEX("�}嘘尚200", 18000, 55, 221, "cg/ev/resize/ev009_ゲ�`ムオ�`バ�`_l.png");
	Fade("�}嘘尚200", 0, 350, null, true);

	SetVertex("�}嘘尚200", 333, 58);


	DrawEffect("�}嘘尚200", 5000, "Ripple", 700, 500, null);
	FadeDelete("�\2", 2000, true);

//	Zoom("�}嘘尚200", 1000, 1050, 1050, null, true);
//	Zoom("�}嘘尚200", 1000, 1000, 1000, null, true);
//	Zoom("�}嘘尚200", 1000, 1050, 1050, null, true);
//	Zoom("�}嘘尚200", 1000, 1000, 1000, null, true);

	WaitKey();

	ClearFadeAll(3000, true);


//＃２３４５６７８９０１２３４５６７８９０１２３４


}


