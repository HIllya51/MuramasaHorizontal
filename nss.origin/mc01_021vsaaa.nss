
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsaaa.nss_MAIN
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

scene mc01_021vsaaa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vsaa.nss"

//���
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	if($mc01_021vsaa_�϶�==true){
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	}else if($mc01_021vsaa_�¶�==true){
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���Lb.png");
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
	Delete("�}�����}");
	Delete("�}�ݱ���");

	CreateSE("SE02","se���L_����_�����01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_down2(20000,@0, @-100,2000);
	SL_downfade2(10);

//��̫��һ�W
	CreateSE("SE01","se���L_����_Ұ̫�����01");
	MusicStart("SE01",0,1000,0,2000,null,false);
	CreateTextureSPadd("�}����", 20010, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureSP("�}��", 20000, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	Zoom("�}����", 0, 1200, 10000, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//�􏎤����̫��
	CreateSE("SE01","se���L_����_��ꪏ���01");
	CreateColorSP("�}ɫ��", 21000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(10);

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");

	Delete("�}��*");
	Delete("�}ɫ�\");
	FadeDelete("�}ɫ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������û����������״��ȫ���̳���
һ���������׵�������֪�����ɵ��δ���
��ս���������ٶȶ�û�м�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������ʧ��

..//������ָ��
//�Υե����롡"mc01_021vsz.nss"

}


