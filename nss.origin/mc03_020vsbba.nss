
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

scene mc03_020vsbba.nss_MAIN
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

	$GameName = "mc03_022vs.nss";

}

scene mc03_020vsbba.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vsbb.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//�񷽽�����
//�������٤��䤨
//����������
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");

//������󡸣ãУ���횶��x�ޤȤ᡹
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

	CP_SpeedChange(0,558,null,false);
	MyTr_Count(0,451);

	CP_HighChange(0,1240,null,false);
	CP_AziChange(0,0,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,850,null,false);

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg001_��e_01.jpg");
	Zoom("�}����", 0, 1100, 1100, null, true);

	Zoom("�}����", 60000, 2000, 2000, null, false);
	MoveFFP1("@�}����",20000);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");

	Wait(300);

	MusicStart("SEL01a",2000,750,0,1500,null,true);
	MusicStart("SEL01b",2000,750,0,2000,null,true);

	SetFrequency("SE01", 400, 1000, null);

	Delete("�ϱ���");

	Fade("�}ɫ��", 1300, 0, null, false);
	DrawDelete("�}ɫ��", 1600, 1000, "circle_04_00_0", true);

	WaitKey(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc03/020vs0120a00">
�������ء�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/020vs0130a01">
���ȵȣ�������
��������Σ�ա���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc03/020vs0140a00">
������
����������Σ�ա���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/020vs0150a01">
������������������
����ѽ�������ˡ���

//��������
<voice name="����" class="��������" src="voice/mc03/020vs0160a01">
���Ǹ��ּһ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣�ܩ`�ǥ��`�۩`��
	SetVolume("SE*", 600, 10, null);
	EfRecoIn1(19900,600);
	CreateTextureSP("�}����", 19000, Center, Middle, "cg/ev/ev922_���å������`�ܩ`�ǥ��۩`��ʂ�_a.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc03/020vs0170a00">
�����������Ÿ��ٳ��׵���
�����ֻ�����ܣ����Ϊ����ӡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/020vs0180a00">
������ӱ����ܵ�������һ���ͻᱻ���䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

	SetVolume("SE*", 2000, 1000, null);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc03/020vs0190a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/020vs0200a01">
����������̫�����У���������׼��
������ԭ����˰�����



{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/020vs0210a00">
���������ӵ��𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/020vs0220a01">
����һ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�������ԩ`��
	CreateSE("SE01","se����_���å��ԥå�_̽��01");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(800);

	SetVolume("SE01", 100, 0, null);
	CreateSE("SE01a","se����_���å��ԥå�_������02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Wait(400);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mc03/020vs0230a01">
����������婖��
�����������޷����ӵ��ء���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/020vs0240a00">
���ÿ찡������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/020vs0250a01">
�����յ������㣬�Է������˷ݵ�������
����ʹ���������������Է����Ǻ�����ء���


//��������
<voice name="����" class="��������" src="voice/mc03/020vs0260a01">
����ô�죿
������Է��Ƶ��Ϸ�����棬Ҳ���ú�̫��
�޹��ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��û˦����
����������Ҳ��Ԥ��֮�ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc03/020vs0270a00">
���ҷ��������ָ����𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/020vs0280a01">
���š�
����������Ѫ��״�������ȸղ��������ơ���

//��������
<voice name="����" class="��������" src="voice/mc03/020vs0290a01">
���������ս���ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��״̬���ѵ�ԭ������˵�����������ģ�������Ϊ��
����ܵĲ�������
��ǰ�߱���Ҫ�����Ϣ���ָܻ���������ֻҪ�����ҵ�
�������������ܹ��ָ���

���������˶��ݵ�ս������ʱ�䣬�ɹ���������һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mc03/020vs0300a00">
����ôת��Ӧս����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/020vs0310a01">
�����ף�
������������˽�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Zoom("�}����", 2000, 4000, 4000, null, false);
	CP_SpeedChange(2000,630,null,false);
	MyTr_Count(300,488);

	Wait(600);

	CP_RollBarMove("@�}����", 400, 90, null, false);
	CP_AziChange(2400,225,AxlDxl,false);
	CP_AltChange(1200,70,AxlDxl,false);
	Move("�}����", 1400, @0, @288, Axl1, false);

	Wait(400);

	Fade("�}ɫ�\", 1000, 1000, null, true);

	Wait(1000);

	ClearWaitAll(1000, 1000);

//�����񥯥ꥢ

..//������ָ��
//�Υե����롡"mc03_022vs.nss"

}