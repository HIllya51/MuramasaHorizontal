
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

scene mc03_023vsa.nss_MAIN
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

	$GameName = "mc03_024vs.nss";

}

scene mc03_023vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_023vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//����
	SoundPlay("@mbgm12",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 19990, "#000000");
	FadeDelete("�ϱ���", 200, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ϣ�
�������ڵ��������Ϸ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k�h�ܩ`��
//�����꤮���Ӥ�Ƥ����ޤ�����
	Cockpit_AllFade2();

	MyLife_Count(0,240);
	CP_IHPChange(0,3,null,false);
	CP_PowerChange(0,200,null,false);

	CP_SpeedChange(0,550,null,false);
	MyTr_Count(0,457);

	CP_HighChange(0,1800,null,false);
	$냇�ݷ�λӋ=Random(10)+40;
	CP_AziChange(0,$냇�ݷ�λӋ,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -1728, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateSurfaceEX("�}��������", 100,1000,"@�}�ݺ��ձ���");
	Fade("�}��������", 0, 1000, null, true);
	CreateSE("SE01","se���L_����_���ϕN01");

	Wait(12);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ݺ��ձ���", 650, @0, @1296, Dxl3, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc03/023vs0590a01">
���㿪�ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��ֻ����塣
���Ҵ��˼��ڤ��ķֽ����ϣ�������<RUBY text="����">�˰�</RUBY>��

�����ա�
�����ǣ��������˾�û���ֶ��ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���إå��u��
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateTextureSP("�}�����}�^", 1000, Center, Middle, "cg/st/3d���å������`��_�T��_ͨ��.png");
	Move("�}�����}�^", 0, @-636, @576, null, true);
	Zoom("�}�����}�^", 0, 300, 300, null, true);
	Request("�}�����}�^", Smoothing);
	SetBlur("�}�����}�^", true, 3, 500, 40, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Rotate("�}�����}�^", 200, @0, @0, @30, Dxl2,true);
	Zoom("�}�����}�^", 200, 1000, 1000, null, false);
	Move("�}�����}�^", 200, @400, @-576, Dxl2, false);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc03/023vs0600a00">
��ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����С�������!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ��", 20000, "#FFFFFF");
	CreateSE("SE01a","se���L_�Ɖ�_���k04");
	CreateSE("SE01b","se���L_����_�z��������03");
	CreateSE("SE01c","se���L_����_��ͻ�M01");

//���nͻ
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Zoom("�}�����}�^", 150, 3000, 3000, Dxl2, false);
	Move("�}�����}�^", 150, @120, @120, Dxl2, false);

	Wait(149);

//�������`�����������`��
//���ե��`�ɥ����ȡ��̥�������
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);

	Wait(200);

	MyLife_Count(300,120);
	CP_IHPChange(300,2,null,false);
	CP_PowerChange(300,100,null,false);
	CP_SpeedChange(2000,200,null,false);
	MyTr_Count(300,160);
	Shake("@CP_Frame", 1300, 10, 20, 0, 0, 1000, Dxl2, false);

	CreateColorEX("�}ɫ�\", 20000, "#000000");
	CreateSE("SE02","se���L_����_�ռ�����01");

	Delete("�}�����}*");
	FadeDelete("�}ɫ��", 1000, true);

	Wait(800);

//��������˥�
//������
	MusicStart("SE02",1600,1000,0,500,null,false);
	Move("�}�ݺ��ձ���", 2000, @0, @-1728, AxlDxl, false);
	Zoom("�}��������", 9000, 5000, 5000, Axl1, false);
	CP_SpeedChange(9000,500,null,false);
	MyTr_Count(300,61);
	CP_HighChange(9000,500,null,false);
	CP_AltChange(4000,-80,null,false);

	Wait(1000);

	SetFrequency("SE02", 2000, 1000, Dxl3);
	FrameShake();

	Wait(1000);
	Shake("�}�ݺ��ձ���", 2160000, 0, 4, 0, 0, 1000, null, false);

	Wait(1000);

	SetVolume("SE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 1, null);
	Fade("�}ɫ�\", 2000, 1000, null, true);

	Cockpit_AllFade0();
	ClearWaitAll(0, 2000);

}

..//������ָ��
//�Υե����롡"mc03_024vs.nss"