
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

scene mc01_020vsb.nss_MAIN
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

	Cockpit_AllFade0();

	$GameName = "mc01_021vs.nss";

}

scene mc01_020vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_020vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��رܤ���
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
�����ڡ���ֻ�ܱܿ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc01/020vs0180a00">
���ذ�������������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����һ�W
	CreateColorSP("�}ɫ�\", 20010, "#000000");
	CreateSE("SE01","se���L_����_�����01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

//������ä��Ӥä����Ǥ�ʤ�Ȥ��ܤ�
	CreateSE("SE02","se���L_����_��ͻ�M02");
	CreateSE("SE02a","se���L_����_�z������01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 22000, "#FFFFFF");

	CreateTextureSP("�}���ձ���", 1000, Center, -720, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

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

	CP_SpeedChange(0,314,null,false);
	MyTr_Count(0,319);

	CP_PowerChange(0,666,null,false);

	CP_HighChange(0,913,null,false);
	CP_AziChange(0,251,null,false);

	CP_AltChange(0,14,null,false);
	CP_RollBarMove2(0,0,null,true);

	Delete("�}�ձ���");
	Delete("�}�ݺ������}");
	Delete("�}ɫ�\");
	Delete("�}��*");

//������󡸣ãУ��Ϥ˒i����ȵ�����ʤ����ĤλرܤΤ������ϻرܚ�ζ��
	CP_HighChange(60000,1267,null,false);
	Move("�}���ձ���", 60000, @0, @288, null, false);

	Shake("@CP_Frame", 1500, 0, 4, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}ɫ��", 500, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc01/020vs0190a01">
�������㿪�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);

	Cockpit_AllFade0();

	CreateTextureSP("�}�ݱ���", 17000, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");
	CreateTextureSP("�}�ݴ���", 17110, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	CreateTextureSP("�}�ݺ���", 17100, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");
	CreateSE("SE02","se���L_����_��ͻ�M02");
	CreateSE("SE02a","se���L_����_��ͻ�M01");
	SetBlur("�}�ݴ���", true, 2, 500, 30, true);
	SetBlur("�}�ݺ���", true, 2, 500, 30, true);
	Move("�}�ݴ���", 0, @200, @60, null, true);
	Move("�}�ݺ���", 0, @-200, @-60, null, true);

	Move("�}�ݴ���", 400, @-2500, @-30,Axl2, false);
	Zoom("�}�ݴ���", 400, 850, 850, null, false);

	Move("�}�ݺ���", 400, @2500, @30, Axl2, false);
	Zoom("�}�ݺ���", 400, 1250, 1250, null, false);

	Zoom("�}�ݱ���", 1000, 550, 550, Dxl2, false);

	MusicStart("SE02",0,1000,0,750,null,false);
	MusicStart("SE02a",0,1000,0,1150,null,false);
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_0", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������ʵ�ĺ���֮�
��������Ȼֻ��<RUBY text="������">���̵�</RUBY>����֮�

����������Ŀ��ʧ�ܣ������һͬ�뿪���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x��



..//������ָ��
//�Υե����롡"mc01_021vs.nss"

}



