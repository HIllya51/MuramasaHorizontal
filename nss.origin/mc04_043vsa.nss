
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_043vsa.nss_MAIN
{

	
//���å��ԥå��ãӣ��
	//CP_AllSet("����");

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

scene mc04_043vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ100", 18000, "BLACK");
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mc04_043vs.nss"


//���ؤ뤿��


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ػ���

���ǵġ�
�������ػ�ס��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺����������֦
	EfRecoIn1(18500,600);

	CreateTextureEX("�}����", 18000, @0, @0, "cg/ev/ev171_����֦�˹򤯾���.jpg");
	Fade("�}����", 0, 1000, null, true);

	EfRecoIn2(300);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ػ�ס�Ǹ�׼ȷ������ҵ����У�
������Լ��Ҫ������ȷ�̷���Ů�ԡ�

����ϧһ�д���Ҳ���ػ�ס��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);

	Delete("�}����");
	EfRecoOut2(600,true);

//�����L�͎�
	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CreateTextureSP("�}����50", 100, Center, -1600, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Request("�}����50", Smoothing);

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,272,null,false);
	CP_IHPChange(0,3,null,false);

	CP_SpeedChange(0,650,null,false);
	CP_HighChange(0,657,null,false);
	CP_AziChange(0,17,Axl1,false);


	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se���L_����_��ͻ�M02",1000);


	DrawDelete("�}ɫ100", 200, 100, "slide_02_01_1", false);
	Move("�}����50", 1000, @0, @800, Dxl2, true);

	SoundPlay("@mbgm13",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ȫ��������ʶ�ϵ�������
��ŭ���Ͽգ���׽��Ӱ��

��ս����
�����𡭡�ս����

��Ϊ���ػ��޿�ȡ��֮�ˡ�
�������ػ������ξ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0250a00">
���ޣ����ޣ���


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/043vs0260a00">
���ް�����������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ϕN
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 4000, 1100, null);


	CreateTextureEX("�}����100", 1500, 0, 0, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Zoom("�}����100", 0, 1000, 1000, null, true);
	Move("�}����100", 0, @0, -800, null, true);
	CreateTextureEX("�}��", 100, Center, middle, "cg/st/3d�Х���_�Tͻ_���L.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 50, 50, null, true);
	SetBlur("�}��", true, 1, 300, 100, false);
	Move("@�}��", 0, @0, @-50, null, true);

	CreateSurfaceEX("�}Suf",1000,2000,"�}����100");

	OnSE("se���L_����_��ͻ�M03",1000);

//	CP_HighChange(1000,-150,null,false);
//	CP_SpeedChange(1000,540,null,false);

	Fade("�}����100", 0, 1000, null, true);
	Fade("�}Suf", 500, 1000, null, false);
	Rotate("�}Suf", 2800, @0, @0, @180, AxlDxl,false);
	Move("�}����100", 3500, @0, -5000, AxlDxl, false);
	Move("@�}����50", 500, @0, @-200, Axl2, false);

	CP_AziChange(2000,189,Axl1,false);
	CP_SpeedChange(2000,750,AxlDxl,false);
	CP_HighChange(2000,557,AxlDxl,false);


	CP_RollBarMove2(2000,180,AxlDxl,true);
	CP_RollBarMove("@�}����50",0,0,null,true);
	Zoom("@�}����50", 0, 1100, 1100, null, true);

	Wait(500);
	CP_SpeedChange(2000,650,AxlDxl,false);
	CP_HighChange(2000,657,AxlDxl,false);

	Move("@�}����50", 0, -512, -388, null, true);
	Fade("�}Suf", 300, 0, null, false);
	Move("@�}����50", 500, -512, -158, Dxl2, true);
	Move("@�}��", 0, @0, @-50, Dxl2, false);
	Fade("@�}��", 300, 1000, null, false);
	Move("@�}����50", 600, -512, -188, AxlDxl, true);

//	BGMoveAuto("@�}����50",1);

	Wait(500);

	Delete("�}����100");
	Delete("�}Suf");

	SetVolume("@mbgm*", 300, 0, null);
	SetVolume("SE*", 300, 0, null);
	CreateColorSP("�}ɫ100", 18500, "BLACK");
	Wait(500);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��
�������������ǣ��ն���������
�������㲻���Ѿ�������������

��
���������������������Լ���������

��
���ն�����δ��һ���ػ�ס����֮�ˣ�
��������˸���û�������ػ��κ��˵���һ��ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0270a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D






	OnSE("se����_��_��Ġ����02",1000);

	Wait(1000);

	CreateSE("SE01","se���L_����_�z_�ٶ�ʧ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);


//�����쥤������
	CreateEffect("���ե����ȣ�", 16000, 0, 0, 1024, 576, "Monochrome");
	Fade("���ե����ȣ�", 0, 0, null, true);
	Fade("���ե����ȣ�", 5000, 600, null, false);


	CP_SpeedChange2(6000,147,null,false);
	CP_HighChange2(6000,154,null,false);

	CP_SpeedChange(6000,316,AxlDxl,false);
	CP_HighChange(6000,427,AxlDxl,false);
	Move("@�}��", 6000, @0, @-50, AxlDxl, false);
	Move("@�}����50", 6000, @0, @-150, AxlDxl, false);
	FadeDelete("�}ɫ100", 3000, true);
	Wait(2000);

	SetFwC("cg/fw/fw����_�ֲ�.png");
	
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/043vs0280a00">
�������ء���


{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc04/043vs0290a00">
������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ100", 18500, "WHITE");

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("@�}��", 200, 1000, null, false);
	Move("@�}��", 500, @0, @-50, Dxl1, true);
	Move("@�}��", 400, @0, @50, Axl3, false);
	Fade("�}ɫ100", 400, 1000, Axl3, false);
	Zoom("@�}��", 400, 1500, 1500, Axl3, true);

//	Wait(350);

	OnSE("se���L_�Ɖ�_�z03",1000);
//	SetFrequency("SE10", 2000, 800, null);

	Delete("@�}��");
	BGMoveDelete();
//	Shake("�}����50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
//	Move("�}����50", 2000, @0, -1200, Dxl2, true);




//���Х�������
//����ͻ
	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateSE("SE02","se���L_�Ɖ�_�z04");

	SetFrequency("SE10", 1000, 1450, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
//	Zoom("�}����50", 500, 1650, 1650, Axl2, false);
//	Fade("�}ɫ100", 500, 1000, Axl3, false);
//	Zoom("�}��", 500, 1000, 1000, Axl2, true);

	CP_LockOnDelete();
	Delete("�}��");
	MusicStart("SE02",0,1000,0,1000,null,false);

//�������`��
	CreateTextureEX("�}���k", 18150, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	Zoom("�}���k", 0, 1100, 1100, null, true);

	CreateSE("SE01","se���L_�Ɖ�_�z01");
	CreateSE("SE02","se���L_�n��_�zܞ��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	EffectZoomadd(18500, 4500, 500, "cg/ef/ef022_��������ɢ�A.jpg", false);
	Wait(150);
	FadeDelete("�}ɫ100", 1000, false);

	Shake("�}���k", 3500, 5, 3, 0, 0, 1000, Dxl2, false);
	Zoom("�}���k", 6000, 1200, 1200, Dxl2, false);
	Fade("�}���k", 50, 1000, null, true);

	Wait(2000);


//����������
//�����`�४�`�Щ`
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	ClearFadeAll(3000, true);
	CP_AllDelete();

	Wait(3000);



}

..//������ָ��
//�Υե�����


