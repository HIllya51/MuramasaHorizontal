
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsz.nss_MAIN
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

	CP_AllDelete();

	$GameName = "mz00_000.nss";

}

scene mc01_021vsz.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vsaaa.nss"
//ǰ�ե����롡"mc01_021vsaab.nss"
//ǰ�ե����롡"mc01_021vsbc.nss"

//��ʧ��
//�������С������`��
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	Fade("@box*", 0, 0, null, true);
	Fade("@Fw*", 0, 0, null, true);
	Delete("�ϱ���");

	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-100,2000);
	SL_downfade2(10);

//��������ɢ�A
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 20100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 20000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 30, false);

	Cockpit_AllFade0();

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);

	Fade("�}����", 1000, 0, null, false);
	DrawDelete("�}����", 1000, 100, "worm_01_00_0", true);

//�����å������`
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateTextureSP("�}�ݱ���", 100, Center, Middle, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	CreateTextureSP("�}�ݺ���", 1000, Center, Middle, "cg/st/3d���å������`_����_ͨ��c.png");
	Request("�}�ݺ���", Smoothing);
	Zoom("�}�ݺ���", 0, 800, 800, null, true);

	Move("�}�ݺ���", 0, @0, @-120, null, true);
	FadeDelete("�ϱ���", 2000, true);

	CreateSE("SE01a","se���L_�Ɖ�_�z01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetVolume("SE*", 1000, 600, null);

	CreateSE("SE02","se���L_����_�ռ�����01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("�}�ݱ���", 40000, 4000, 4000, null, false);
	Zoom("�}�ݺ���", 40000, 0, 0, null, false);

	CreateColorEX("�}ɫ�\", 18000, "#000000");

	WaitKey(1000);

	SetFwR("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���ܩ`�ǥ���
<voice name="�ܩ`�ǥ�" class="�ܩ`�ǥ�" src="voice/mc01/021vs0450b07">
��ߴ����ߴ�ޡ���

{	Fade("�}ɫ�\", 4000, 1000, null, false);}
//���ܩ`�ǥ���
<voice name="�ܩ`�ǥ�" class="�ܩ`�ǥ�" src="voice/mc01/021vs0460b07">
����������������
�����������ޡ�����

//���ܩ`�ǥ���
<voice name="�ܩ`�ǥ�" class="�ܩ`�ǥ�" src="voice/mc01/021vs0470b07">
���������ޡ���������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ�\", 2000, 1000, Dxl2, false);

//�����å������`���䡣�ܩ`��
	CreateSE("SE01","se���L_����_�ռ�����01");
	MusicStart("SE01",1600,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	Wait(1000);

	CreateSE("SE02","se���L_�n��_�zɢ�A");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateSE("SE02a","se���L_�Ɖ�_�z01");
	MusicStart("SE02a",0,1000,0,1000,null,false);

	Wait(1000);

	ClearWaitAll(3000, 2000);

//�����`�४�`�Щ`

..//������ָ��
//�Υե�����

}


