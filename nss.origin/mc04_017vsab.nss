
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsab.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_017vsab.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_017vsa.nss"

	//$mc04_017vsa = ��;//�ǥХå���

//���ϣ�����
	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}����08EX", 6000, -1730, -750, "cg/ev/resize/ev186_�����֣�㑷�_klm.jpg");

	Delete("�ϱ���");


//���x�����Ҋ��
	if($mc04_017vsa == ��){
	Move("@�}����08EX", 2000, @0, @400, DxlAuto, true);
	}else if($mc04_017vsa == ��){
	Move("@�}����08EX", 2000, @300, @0, DxlAuto, true);
	}else if($mc04_017vsa == ��){
	Move("@�}����08EX", 2000, @-300, @0, DxlAuto, true);
	}

	SetVolume("@mbgm*", 1000, 0, null);

//���Ҥ�󡢤�����`��������
	CreateSE("SE01","se���L_����_Ұ̫�����01");
	CreateColorSP("�}ɫ�\", 6050, "#000000");
	SL_rightdown2(6100,@0, @0,1500);

	MusicStart("SE01",0,1000,0,1200,null,false);
	SL_rightdownfade2(10);

	Wait(500);

	SetVolume("@mbgm*", 300, 0, null);
	OnSE("se���L_����_���̤���05", 1000);

	CreateColorSP("��", 16000, "#990000");
	DrawTransition("��", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("��",2000,true);

//�����`�४�`�Щ`

}

..//������ָ��
//�Υե�����