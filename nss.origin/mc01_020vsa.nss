
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc01_020vsa.nss_MAIN
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

scene mc01_020vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_020vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//���ܤ�ֹ���
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("�}�ձ���", 100, -512, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureSP("�}�ݺ������}", 17100, -338, -502, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}�ݺ������}", Smoothing);
	Zoom("�}�ݺ������}", 0, 100, 100, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();
	Request("@��󥺣�", UnLock);
	Request("@��󥺥ץ�����", UnLock);
	Request("��󥺣�", UnLock);
	Request("��󥺥ץ�����", UnLock);
	Delete("@��󥺥ץ�����");
	Delete("@���*");
	Delete("��󥺥ץ�����");
	Delete("���*");

	Zoom("�}�ݺ������}*", 0, 1000, 1000, null, true);

	CreatePlainEX("�}��д", 18010);
	CreatePlainEX("�}��д��", 18020);
	Fade("�}��д", 0, 400, null, false);
	Fade("�}��д��", 0, 200, null, false);
	Zoom("�}��д", 0, 1100, 1100, Dxl2, false);
	Zoom("�}��д��", 0, 1300, 1300, Dxl2, false);

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������˱��ӵ�������
���Ի���������м�ס������ֻҪ������������С���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc01/020vs0140a00">
������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ˣ�
����ָ�����ˡ���<k>��������ȫ����������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����һ�W
	CreateColorSP("�}ɫ�\", 20010, "#000000");
	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

//��̫���򴵤��w�Ф��Ƥ����`��
	CreateSE("SE02","se���L_����_��ꪏ���02");
	CreateSE("SE02a","se���L_�n��_�nͻ01");
	CreateSE("SE02b","se���L_�Ɖ�_���k01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 22000, "#FFFFFF");
	CreateTextureSPover("�}�݄���", 11000, Center, Middle, "cg/ef/ef044_��a.jpg");
	CreateTextureEXadd("�}�݄�����", 11110, Center, Middle, "cg/ef/ef044_��a.jpg");

	CreateTextureSP("�}���ձ���", 1000, Center, -576, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

//������󡸣ãУ����ڂ����x��
	Cockpit_AllFade2();

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	MyLife_Count(0,$�����饤���{����);
	CP_IHPChange(0,$����������{����,null,false);

	CP_SpeedChange(0,97,null,false);
	MyTr_Count(0,98);

	CP_PowerChange(0,666,null,false);

	CP_HighChange(0,782,null,false);
	CP_AziChange(0,251,null,false);

	CP_AltChange(0,-14,null,false);
	CP_RollBarMove2(0,0,null,true);

	Delete("�}�ձ���");
	Delete("�}�ݺ������}");
	Delete("�}ɫ�\");
	Delete("�}��*");

	Shake("@CP_Frame", 2000, 30, 30, 0, 0, 1000, Dxl2, false);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}�݄���", 5000, 5000, 5000, Dxl2, false);
	Shake("�}�݄�����", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("�}�݄�����", 500, 1500, 1500, Dxl2, false);
	Fade("�}�݄�����", 250, 1000, null, true);
	Fade("�}�݄�����", 250, 0, DxlAuto, true);
	FadeDelete("�}�݄���", 300, true);

	Wait(250);

	WaitAction("�}ɫ��", null);

//������󡸣ãУ�����`�����ܤ������¤���Ф��ˡ�

	CreateSE("SE03","se���L_����_�ռ�����01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("�}ɫ��", 19000, "#FFFFFF");
	Fade("�}ɫ��", 5000, 850, null, false);

	MyLife_Count(300,30);
	CP_IHPChange(300,1,null,false);
	MyTr_Count(300,0);

	CP_SpeedChange(5000,1000,null,false);
	Move("�}���ձ���", 5000, @0, @-1728, Axl2, false);
	Zoom("�}���ձ���", 5000, 3000, 3000, Axl2, false);
	CP_HighChange(5000,0,Axl2,false);
	CP_AltChange(5000,-90,Dxl2,false);

	Wait(3500);

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 0, null);

//��������ɢ�A
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

	FadeDelete("�}ɫ�\", 1000, true);

	WaitKey(1000);

	SetFwR("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/020vs0150b33">
������������������������������
��̫���ˣ���ɱ���Ǽһ��ˣ���

//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/020vs0160b33">
�����ԡ������ԡ���
��������˵����������


</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

/*
//��������ݳ����ݤޤ����������礤Ҋ�����Ƥߤ롹
//��������ݳ�����������ʧ�������ΤǱ�����
	CreatePlainSP("�}��д", 22000);
	SetFwC("cg/fw/fwС��_���.png");
	CreateStencil("@FwC04/�}����",20000,0,0,128,"cg/fw/fwС��_���.png",true);
	CreateColorSP("@FwC04/�}����/ɫ", 20050, "#000000");
	DrawTransition("@FwC04/�}����/ɫ", 0, 0, 145, 500, null, "cg/data/slide_02_00_0.png", true);

*/

	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 6000, 1000, null, false);

	SetFwR("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0041]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/020vs0170b33">
��������Ϊ�ҡ����е����ˣ��𡭡�����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}ɫ�\", 2000, 1000, null, false);

//�����å������`������
	CreateSE("SE01","se���L_����_�ռ�����01");
	MusicStart("SE01",1600,1000,0,1000,null,false);

//���ܩ`��
	WaitPlay("SE*", null);

	Wait(1000);

	CreateSE("SE02","se���L_�n��_�zɢ�A");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateSE("SE02a","se���L_�Ɖ�_�z01");
	MusicStart("SE02a",0,1000,0,1000,null,false);

	Wait(1000);

	ClearWaitAll(3000, 2000);

//�����`�४�`�Щ`

}

..//������ָ��
//�Υե�����