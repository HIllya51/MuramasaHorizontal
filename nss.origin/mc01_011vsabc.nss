
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

scene mc01_011vsabc.nss_MAIN
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
	#bg204_�����ر���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mz00_000.nss";

}

scene mc01_011vsabc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_011vsab.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//���᷽
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}����", 100, Center, -576, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	Delete("�ϱ���");

	CreateSE("SE01","se���L_����_���ϕN01");
	CreateSE("SEL01","se���L_����_������02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//����ܞ�`��
	CreateTextureSP("�}����", 100, InLeft, Middle, "cg/bg/bg204_�����ر���_01.jpg");

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	//$First_Battle_Damage = 1;//�ǥХå���

//������󡸣ãУ�����`���ե饰�ǥ饤���{����
	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	MyLife_Count(0,$�����饤���{����);

.//�ã��ݳ����������{����
//������󡸣ãУ�����`���ե饰���������{����
	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	CP_IHPChange(0,$����������{����,null,false);

	MyTr_Count(0,366);
	CP_SpeedChange(0,396,null,false);

	CP_PowerChange(0,790,null,false);

	CP_HighChange(0,961,null,false);
	CP_AziChange(0,101,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,45,null,true);

	FrameShake();

	MusicStart("SEL01",2000,1000,0,1500,null,true);
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_01_0", false);

//������󡸣ãУ������ؤǔ�ǰ������
	MyTr_Count(300,451);
	CP_SpeedChange(300,537,null,false);

	Move("�}����", 3600, -3996, @0, Dxl2, false);
	CP_AziChange(3600,-79,Dxl1,false);

	Wait(1800);

	MyTr_Count(300,457);
	CP_SpeedChange(300,550,null,false);

	Wait(200);

	CP_RollBarMove2(600,0,Dxl1,false);

	Wait(100);

	MyTr_Count(300,461);
	CP_SpeedChange(300,561,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����򡭡���תһ�ٰ�ʮ�ȣ�
������������£��Ѿ��˲����������滹�Ǳ�����ŵ�
���ˡ�

����֮��������˵ء���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0210a01">
������������
���ڵ�����ǰ�������־ٶ��Ļ����ᱻ���ɰ���
�ġ�����


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/011vs0220a00">
������
���ղ���Ҳ������Ϊ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܩ`�ǥ��`�۩`��k��`��
	CreateSE("SE02","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE02",0,800,0,1000,null,false);

	$�Еr�g=RemainTime("SE02");
	WaitKey($�Еr�g);

//��ֱ�Ĥ����`���������
	CreateSE("SE01","se���L_����_�z��������03");
	CreateSE("SE01a","se���L_�Ɖ�_�z03");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);

//������󡸣ãУ������ݳ��_ʼ��
	MyLife_Count(300,31);
	CP_IHPChange(300,1,null,false);

	MyTr_Count(300,51);
	CP_SpeedChange2(1500,142,Dxl2,false);

	CP_HighChange2(1500,300,Dxl2,false);
	CP_AltChange(1500,-15,Dxl2,false);
	CP_AziChange(3600,-97,Dxl1,false);
	Move("�}�ݿձ���", 1500, @0, @-60, Dxl2, false);

	FrameShakeDelete();
	Shake("@CP_Frame*", 1500, 0, 50, 0, 0, 1000, Dxl2, false);
	Shake("�}�ݿձ���", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

	WaitKey(1000);

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 20100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 20000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 30, false);

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, true);

	Cockpit_AllFade0();
	WaitKey(1000);

	ClearWaitAll(3000, 2000);


//�����`�४�`�Щ`

..//������ָ��
//�Υե�����

}


