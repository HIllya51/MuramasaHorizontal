
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

scene mc01_011vsaa.nss_MAIN
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

scene mc01_011vsaa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_011vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��ͻ��
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}�ţ�", 18000, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a.jpg");
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc01/011vs0070a00">
����������ֻ�����������ƣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0080a01">
�����𣿡�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc01/011vs0090a00">
���ǰ����������⡣
������ǰ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0100a01">
���������ס�
���������������㣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ͻ��
	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 20000, "#000000");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}�ţ�");

	CreateTextureSPadd("�}����", 3100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);

//�����å������`���k�h
	CreateSE("SE02","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//��ֱ�Ĥ����`��
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE03","se���L_����_�z��������03");
	CreateSE("SE03a","se���L_�Ɖ�_�z03");

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�}�ݿձ���", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

	Delete("�ϱ���");

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	MyLife_Count(0,$�����饤���{����);

//������󡸣ãУ�����`���ե饰���������{����
	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	CP_IHPChange(0,$����������{����,null,false);

	MyTr_Count(0,111);
	CP_SpeedChange2(0,500,null,false);

	CP_PowerChange(0,800,null,false);

	CP_HighChange2(0,912,null,false);
	CP_AziChange(0,101,null,false);
	CP_AltChange(0,-3,null,false);

	CP_RollBarMove2(0,0,null,true);

	Shake("@CP_Frame*", 2000, 50, 50, 0, 0, 1000, Dxl2, false);
	Shake("�}�ݿձ���", 2000, 0, 50, 0, 0, 1000, Dxl2, false);

	FadeDelete("�}ɫ��", 2000, false);

	Wait(1700);

	MyLife_Count(300,37);
	CP_IHPChange(300,1,null,true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc01/011vs0110a00">
�������´β�Ҫ���ˡ�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0120a01">
�������һ���ô���ġ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɢ�A���ܤ��`��
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 20100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 20000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 100, false);

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, true);

	WaitKey(1000);

	ClearWaitAll(3000, 2000);


//�����`�४�`�Щ`

..//������ָ��
//�Υե�����

}


