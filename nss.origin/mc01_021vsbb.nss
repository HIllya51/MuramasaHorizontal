
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

scene mc01_021vsbb.nss_MAIN
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
	#ev903_�����ŚݥХꥢ�`չ�__a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc01_022vs.nss";

}

scene mc01_021vsbb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��ؓ�O
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm08",0,1000,true);
	CreateTextureSP("�}��", 5000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	CreateWindow("�}��", 19000, 0, 108, 1024, 360, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 19000, "#CC0000");
	CreateTextureSP("�}��/�}�����}װ�׏r", 19100, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	CreateTextureSPadd("�}��/�}�����}װ�ײ�", 19120, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	Move("�}��/�}�����}װ��*", 0, @290, @160, null, true);
	Zoom("�}��/�}�����}װ��*", 0, 800, 800, null, true);
	Request("�}��/�}�����}װ��*", Smoothing);
	DrawTransition("�}��/�}�����}װ�ײ�", 0, 0, 400, 100, null, "cg/data/slide_03_01_1.png", true);
	Wait(32);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0390a01">
����װ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��`��
	CreateSE("SE01","se���L_��x_����չ�_");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("�}ɫ��", 19500, "WHITE");
	Fade("�}ɫ��",10,1000,null,true);

	CreateTextureEX("�}�ݴ����ϱ�", 19400, Center, Middle, "cg/ev/ev903_�����ŚݥХꥢ�`չ�__a.jpg");
	Zoom("�}�ݴ����ϱ�", 0, 2000, 2000, null, true);
	SetBlur("�}�ݴ����ϱ�", true, 4, 500, 50, false);
	Fade("�}�ݴ����ϱ�", 0, 1000, null, true);

	Delete("�}��*");
	Delete("�}��");

	Fade("�}�ݴ����ϱ�", 250, 1000, Dxl1, false);
	Zoom("�}�ݴ����ϱ�", 250, 1000, 1000, Dxl1, false);
	FadeDelete("�}ɫ��", 400, true);

//������������
	CreateSE("SE00","se���L_����_���ϕN01");

	CreateWindow("�}��", 19600, 342, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);
	CreateColorSP("�}��/�}��ɫ", 19610, "#CC0000");
	CreateTextureSPmul("�}��/�}�ݱ���", 19620, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 19700, Center, Middle, "cg/st/3d���å������`_�Tͻ_���La.png");
	Request("�}��/�}�����}װ��", Smoothing);
	Move("�}��/�}�����}װ��", 0, @0, @300, null, true);//���ߩ`ע�⣺��λ��
	Zoom("�}��/�}�����}װ��", 0, 500, 500, null, true);

	MusicStart("SE00",0,1000,0,1000,null,false);
	Zoom("�}��/�}�����}װ��", 600, 1000, 1000, Dxl2, false);
	Move("�}��/�}�����}װ��", 600, @0, @-100, Dxl2, false);

	Zoom("�}��", 300, 1000, 1000, Dxl2, true);
	Zoom("�}��/�}�����}װ��", 500, 3000, 3000, Dxl2, false);
	Move("�}��/�}�����}װ��", 500, @0, @-200, Dxl2, false);

	Wait(300);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateSE("SE02","se���L_����_�����01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_down2(20000,@0, @-100,2000);
	SL_downfade2(10);

	Delete("�}��*");

//���Х��`����ֹ����������
	CreateSE("SE03a","se���L_����_�z_���02");
	CreateSE("SE03b","se���L_�n��_�nͻ01");
	MusicStart("SE03a",0,1000,0,850,null,false);
	MusicStart("SE03b",0,500,0,1500,null,false);

	CreateColorSP("�}ɫ��", 30000, "#FFFFFF");
	Delete("�}ɫ�\");
	Delete("�}�ݴ����ϱ�");

	CreateTextureSP("�}�ձ���", 100, Center, InBottom, "cg/bg/bg202_�����ݳ�����ɽa_01.jpg");
	CreateTextureSPadd("�}�ձ�����", 110, Center, InBottom, "cg/bg/bg202_�����ݳ�����ɽa_01.jpg");
	Move("�}�ձ���*", 0, @0, @288, null, true);

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

	MyTr_Count(0,380);
	CP_SpeedChange(0,374,null,false);

	CP_PowerChange(0,577,null,false);

	CP_HighChange(0,1281,null,false);
	CP_AziChange(0,18,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);
	CP_RollBarMoveA();

	SetVolume("SE*", 2000, 0, null);

	FadeDelete("�}�ձ�����", 1500, false);
	FadeDelete("�}ɫ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����û����ų�Ĵ����γɵ����Ͻ������ս������
ͬ�ķ���
����Ȼ�������������ˡ�

��������˻��д�һ˿���ǵĻ���һ������һ�������Ի�
��ģ���ɡ�

���޷�����ȷ����ʵ�����ź�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 19900);
	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	Move("�}�����}", 0, @316, @0, null, true);
	Shake("�}�����}", 600000, 2, 0, 0, 0, 1000, null, false);

	Move("�}�����}", 6000, @-60, @0, DxlAuto, false);
	Move("�}�ݱ���", 60000, -100, @0, null, false);

	Cockpit_AllFade0();
	Fade("�ϱ���", 2000, 0, null, false);
	DrawDelete("�ϱ���", 2000, 1000, "slide_01_03_1", false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0400a01">
���Ź�ȥ�ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/021vs0410a00">
���ţ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);
	CreateColorEX("�}ɫ�\", 19000, "#000000");
	Fade("�}ɫ�\", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����������ͺá�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitPlay("SE*", null);

//����������

}

..//������ָ��
//�Υե����롡"mc01_022vs.nss"