
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

scene mc03_020vsac.nss_MAIN
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

	$GameName = "mc03_021vs.nss";

}

scene mc03_020vsac.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��ܤ������������ڣ��Ҥ����t�����ġ��Έ��ϣ�
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	Move("�}�����}", 0, @316, @0, null, true);
	Shake("�}�����}", 600000, 2, 0, 0, 0, 1000, null, false);

	Move("�}�����}", 6000, @-60, @0, DxlAuto, false);
	Move("�}�ݱ���", 600000, -100, @0, null, false);

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,800,null,false);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_03_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����û���ý�ӭ����
�����ڲ��Ǹù�����ʱ����

���ڵ��˻ӻ�������֮ǰ����<RUBY text="������">���ȥ</RUBY>��
����̧��ͷ��˲����١�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 19000, "#000000");
	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	SetVolume("SE*", 100, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("�}�����}", 200, @-1500, @-30, Dxl1, false);

	Wait(170);

	Fade("�}ɫ�\", 0, 1000, null, true);
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Wait(300);

//�������`�󥽩`һ�W
	CreateSE("SE01a","se���L_����_�����`�󥽩`02_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);

	CreateColorSP("�}ɫ�\��", 20000, "#000000");

	CreateTextureSPadd("�}������", 20120, -504, -730, "cg/ef/ef044_��c.png");
	Zoom("�}������", 0, 3000, 3000, null, true);

	CreateTextureSP("�}��", 20100, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	DrawTransition("�}��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", false);
	Zoom("�}��", 0, 1200, 1200, null, true);
	Request("�}��", Smoothing);

	Fade("�}������", 200, 0, null, false);
	Move("�}������", 200, 44, -150, null, false);
	Zoom("�}������", 200, 1000, 1000, null, false);
	Rotate("�}������", 200, @0, @0, @36000, null,false);
	Shake("�}������", 200, 40, 10, 0, 0, 500, Dxl2, false);

	Shake("�}��", 200, 100, 0, 0, 0, 1000, null, true);

//���رܳɹ�
	CreateColorSP("�}ɫ��", 21000, "#FFFFFF");
	Delete("�}ɫ�\*");
	Delete("�}��*");

	Wait(12);

	CreateSE("SE02","se���L_����_��ͻ�M02");
	MusicStart("SE02",0,1000,0,1000,null,false);

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

	CP_HighChange(0,1197,null,false);

	$냇�ݷ�λӋ=Random(10)+40;
	CP_AziChange(0,$냇�ݷ�λӋ,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");

	Move("�}�ݺ��ձ���", 700, @0, @143, Dxl1, false);

	FadeDelete("�}ɫ��", 200, true);
	SetVolume("SE01a", 1600, 0, null);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc03/020vs0060a00">
�������á���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc03/020vs0070a01">
����Ư���رܿ��ˡ���
���������ղ��ƺ����ա���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����Ȼ����ȱ������������������׶�����������
�����ϲ���Ĳ��֡�
��ֻҪ�ҷ��ļ��������������Ǿ�ȫ�������˰ɡ���


������Ҫ���ض������ս����
����������ս����Ӧ�����ҵ��Է���������

��������ǿ�������ȴ�����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

//����������å��ᥤ��

..//������ָ��
//�Υե����롡"mc03_021vs.nss"

}