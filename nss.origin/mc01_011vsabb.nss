
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

scene mc01_011vsabb.nss_MAIN
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
	#bg202_�����ݳ�����ɽa_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc01_012vs.nss";

}

scene mc01_011vsabb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_011vsab.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//����
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}����", 100, Center, -576, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc01/011vs0160a00">
�����棡
�������˵ĺ�ȥ����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc01/011vs0170a00">
���ӹ��������������޷������Լ����󣡡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0180a01">
�����ף���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_���ϕN01");
	CreateSE("SEL01","se���L_����_������02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

//�����`���롣
	CreateTextureSP("�}����", 100, Center, InBottom, "cg/bg/bg202_�����ݳ�����ɽa_01.jpg");
	SetBlur("�}����", true, 3, 500, 50, false);


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

	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	MusicStart("SEL01",2000,1000,0,1500,null,true);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", false);

//������󡸣ãУ��ԥå��Ϥ����ϕN�ϕN��
	MyTr_Count(300,470);
	CP_SpeedChange(3000,537,null,false);

	CP_AltChange(10000,52,null,false);
	CP_HighChange(150000,1847,null,false);

	Move("�}����", 150000, @0, -576, Dxl2, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������ٶȣ����ϡ��������ϡ�
���㵽�����ڿ��޷����еĵط����������������

���������������еĻ������ܻ�Ӧ�ҵ�Ҫ��
��Ȼ�����������ס�����Ҳ�ӿ����ٶ�׷��ǰ������ͼ
����ͣ�����������֮�ڡ�

�����ӿ��𡪡�����!?

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 100, 1, null);

//���Ӥ��`��
//���ܩ`�ǥ��`�۩`��k��
	CreateSE("SE02","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 17100, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a.jpg");
	CreateTextureSP("�}��", 17000, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a.jpg");

	CreateTextureSPadd("�}�݄���", 18000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Zoom("�}�݄���", 300, 2000, 2000, AxlDxl, false);
	Fade("�}�݄���", 300, 0, null, false);
	DrawDelete("�}�݄���", 300, 100, "circle_01_00_1", false);

	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	WaitKey(600);

//�������餺������ä��Ӥ᤿��
	CreateSE("SE03","se���L_����_�z������01");
	CreateSE("SE03a","se���L_����_��ꪏ���02");

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1500,null,false);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, Axl2, true);

	WaitKey(1000);

	Delete("�}��");
	Cockpit_AllFade0();

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg002_��a_01.jpg");

	SetVolume("SEL*", 4000, 1000, null);
	FadeDelete("�}ɫ��", 2000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc01/011vs0190a01">
���á��������˺�������һ�С�����
�����Ǵ�ƫ�ˣ���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc01/011vs0200a00">
���á�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������������˻��ڡ�
������ǧ��һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//������ָ��
//�Υե����롡"mc01_012vs.nss"

}



