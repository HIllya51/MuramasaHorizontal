
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsaab.nss_MAIN
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

	$GameName = "mc01_021vsz.nss";

}

scene mc01_021vsaab.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vsaa.nss"

	//$mc01_021vsaa_����=true;

//����
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	if($mc01_021vsaa_�϶�==true){
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	}else if($mc01_021vsaa_�¶�==true){
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���Lb.png");
	}else if($mc01_021vsaa_����==true){
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���Ld.png");
	Move("�}�����}", 0, @-90, @0, null, true);
	}else{
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d���٥�_�T��_ͨ��.png");
	}

	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateColorEXadd("�}ɫ��", 19000, "#FFFFFF");

	Move("�}�����}", 0, @316, @-50, null, true);
	Delete("�ϱ���");

	Move("�}�����}", 2000, @-200, @0, null, false);
	Move("�}�ݱ���", 5000, -100, @0, AxlDxl, false);

	Wait(500);

	Fade("�}ɫ��", 0, 1000, null, true);
	SetBlur("�}�����}", true, 2, 500, 60, false);

	Wait(16);

	MusicStart("SE01",0,1000,0,1250,null,false);

	Fade("�}ɫ��", 300, 0, Dxl1, false);
	DrawDelete("�}ɫ��", 600, 100, "slide_05_00_1", false);

	Move("�}�����}", 300, @-2000, @0, Dxl2, false);
	Move("�}�ݱ���", 4000, -100, @0, Dxl3, false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

//����һ�W
	PrintBG("�ϱ���", 30000);
	CreateTextureSPover("�}�݄���", 110, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	Request("�}�ݱ���", Smoothing);
	Zoom("�}�ݱ���", 0, 3000, 1000, null, true);

	CreateTextureSP("�}�ݺ���", 100, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 750, 750, null, true);
	Move("�}�ݺ���", 0, @100, @-80, null, true);
	Rotate("�}�ݺ���", 0, @0, @-30, @0, null,true);

	CreateTextureSP("�}�ݴ���", 110, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	Request("�}�ݴ���", Smoothing);
	Zoom("�}�ݴ���", 0, 500, 500, null, true);
	Move("�}�ݴ���", 0, @-200, @80, null, true);
	Rotate("�}�ݴ���", 0, @0, @-10, @0, null,true);

	Move("�}�ݺ���", 15000, @60, @-5, Dxl2, false);
	Move("�}�ݴ���", 15000, @-60, @5, Dxl2, false);

	CreateSE("SE02","se���L_����_�ռ�����01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 150, 100, "zoom_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ҷ�������ǣ�ơ���
��
��������Ų�̬�㶷־�ĵ��ˣ���ȫ
���Ѵ˾ٷ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������ʧ��

..//������ָ��
//�Υե����롡"mc01_021vsz.nss"

}


