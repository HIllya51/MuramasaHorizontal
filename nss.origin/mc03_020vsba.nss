
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

scene mc03_020vsba.nss_MAIN
{

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

	Cockpit_AllFade0();

	$GameName = "mc03_021vsz.nss";

}

scene mc03_020vsba.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//$mc03_018vsb_R2Flag="�|";
//$mc03_018vsb_R2Flag="��";
//$mc03_018vsb_R2Flag="��";
//$mc03_018vsb_R2Flag="��";

//���x��ʧ��
//���ٶȤ���Ӥʤ�
//�����������e��롣�������ʒ���
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	Cockpit_AllFade2();

	$װ�׻��A=360;
	$װ��Ӌ�ゎ=$װ�׻��A-($mc03dmg*162);
	MyLife_Count(0,$װ��Ӌ�ゎ);

	$�������A=5;
	$����Ӌ�ゎ=$�������A-($mc03dmg*2);
	CP_IHPChange(0,$����Ӌ�ゎ,null,false);

	$�������A=300;
	$����Ӌ�ゎ=$�������A-($mc03kacl*250);
	CP_PowerChange(0,$����Ӌ�ゎ,null,false);

	CP_SpeedChange(0,168,null,false);
	MyTr_Count(0,170);

	CP_HighChange(0,1218,null,false);

	CP_AziChange(0,0,null,false);
	if($mc03_018vsb_R2Flag=="�|"){
		CP_AziChange(300,182,DxlAuto,false);
	}else if($mc03_018vsb_R2Flag=="��"){
		CP_AziChange(300,356,DxlAuto,false);
	}else if($mc03_018vsb_R2Flag=="��"){
		CP_AziChange(300,86,DxlAuto,false);
	}else if($mc03_018vsb_R2Flag=="��"){
		CP_AziChange(300,274,DxlAuto,false);
	}else{
		$냇�ݷ�λӋ=Random(10)+40;
		CP_AziChange(0,$냇�ݷ�λӋ,Dxl2,false);
	}

	CP_AltChange(0,-6,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);
	FrameShake();

	CreateTextureSP("�}������", 100, Center, -576, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	SetBlur("�}������", true, 3, 500, 100, false);
	CreateSurfaceEX("�}��������", 10000,1000,"@�}������");
	Fade("�}��������", 0, 1000, null, true);

	Move("�}������", 900, @0, @-576, Dxl1, false);
	Zoom("�}��������", 216000, 2000, 2000, null, false);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1100,null,false);

	Delete("�ϱ���");
	DrawTransition("�}ɫ�\", 300, 1000, 0, 100, Dxl1, "cg/data/slide_02_01_0.png", true);
	Delete("�}ɫ�\");

	SetFrequency("SE01", 400, 600, null);

	WaitAction("�}������", null);
	MoveFFP1("@�}������",4000);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,800,null,true);
	MusicStart("SEL01b",2000,750,0,1200,null,true);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc03/020vs0080a00">
��������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ˡ�
���ղŵ�һ�غϡ����������Ѻ��٣��һ�����ʹ������
���й�����Ե����

����ע������ƽ������������㡣
���ٶ���ȫ�޷���ߡ�

��������ȥ���޷����룡

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc03/020vs0090a01">
����������󡪡���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/020vs0100a00">
��û�취��
��������ת����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/020vs0110a00">
��������ս������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ܩ`�󡣥ܩ`�ǥ��۩`��k����
	CreateSE("SE02","se���L_����_���ُؼ׏��k��01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 19010, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_b.jpg");
	CreateTextureSP("�}��", 19000, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_b.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}����", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//��ʳ��ä��������`��ܤ��`��
	SetVolume("SEL*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE03","se���L_����_�z��������03");
	CreateSE("SE03a","se���L_�Ɖ�_�z03");

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	Wait(12);
	Delete("�}��*");

	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�}�ݿձ���", 100, Center, -1152, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");

	Delete("�ϱ���");

//������󡸣ãУ������ǥѥ��`����ӡ�
	Shake("@CP_Frame*", 2000, 50, 50, 0, 0, 1000, Dxl2, false);
	Shake("�}�ݿձ���", 2000, 0, 50, 0, 0, 1000, Dxl2, false);

	FadeDelete("�}ɫ��", 2000, false);

	Wait(1700);

	MyLife_Count(300,72);
	CP_IHPChange(300,1,null,true);

	WaitAction("@�}ɫ��", null);

	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 19910, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 19900, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 100, false);

	Cockpit_AllFade0();

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������Ȼ����Ҫ������ս��
��������������û����������ˡ�

����Զ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(3000, 2000);

//�����񥲩`�४�`�Щ`

..//������ָ��
//�Υե����롡"mc03_021vsz.nss"

}


