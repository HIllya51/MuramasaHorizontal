
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_023vsb.nss_MAIN
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

	$GameName = "mc03_021vsz.nss";

}

scene mc03_023vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_023vs.nss"

//��������
	SoundPlay("@mbgm12",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 100, "#000000");
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 150, 100, "zoom_01_00_1", true);

	SetFrequency("SE01", 1000, 750, Dxl2);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������У�
��������ҵĶ������̫����

���ڿ��������ҡ�������!?

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k�h���ܩ`��
//���ĉ�
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 19910, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 19900, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 100, false);

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, true);

	WaitKey(1000);

	ClearWaitAll(3000, 2000);

//�����`�४�`�Щ`
//����������ݳ���������������������_�J���w���������������Ҫ�_�J��

}

..//������ָ��
//�Υե����롡"mc03_021vsz.nss"
