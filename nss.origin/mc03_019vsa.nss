
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

scene mc03_019vsa.nss_MAIN
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

//������󡸣ãУ������ß���Ӌ��ʽ��
	if($mc03_kacl_Frag==ture){
		$mc03_kacl_Frag=false;
	}else{
		$mc03kacl++;
	}

	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc03_020vs.nss";

}

scene mc03_019vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_019vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��t�����ģ�
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 19999);
	CreateColorSP("�}ɫ�\", 10, "#000000");

	Fade("@box*", 0, 0, null, true);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 50000, "#000000");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}ɫ�\");
	Delete("�ϱ���");

	CreateTextureSPadd("�}����", 3100, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	CreateTextureSP("�}��", 3000, -55, -190, "cg/ev/resize/ev504_����ͻ�Ml.jpg");
	Zoom("�}����", 0, 1300, 1300, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("�}��*", 150, -615, @0, Dxl2, false);

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);

	FadeDelete("�}����", 200, true);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc03/019vs0020a00">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������ڶ��ֵı�Ű����Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ĕؤꤺ���`��
	CreateSE("SE02","se���L_����_Ұ̫�����01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	CreateTextureSPadd("�}����", 3100, -220, -30, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	CreateTextureSP("�}��", 3000, -220, -30, "cg/ev/resize/ev947_�����ؓĚ���_l.jpg");
	Zoom("�}����", 0, 1500, 1500, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 50, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Wait(280);

	CreateSE("SE03a","se���L_����_�z��������03");
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreateSE("SE03b","se���L_����_�z_���02");
	MusicStart("SE03b",0,1000,0,1000,null,false);

	CreateColorSP("�}ɫ��", 20000, "#FFFFFF");

	Delete("�}��*");

	Wait(10);

//������󡸣ãУ���횶��x�ޤȤ᡹
	Cockpit_AllFade2();

	MyLife_Count(0,360);
	CP_IHPChange(0,5,null,false);
	CP_PowerChange(0,300,null,false);

	CP_SpeedChange(0,558,null,false);
	MyTr_Count(0,451);

	CP_HighChange(0,1119,null,false);
	CP_AziChange(0,135,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	FadeDelete("�}ɫ��", 300, true);

//������󡸣ãУ��t�����Ĥ򤷤��Τǟ��������M��
	$mc03kacl++;
	$mc03_kacl_Frag=ture;
	$�������A=300;
	$����Ӌ�ゎ=$�������A-($mc03kacl*250);
	CP_PowerChange(300,$����Ӌ�ゎ,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������塣
���ұܿ�����Ĺ�������ǰ�����������Լ���һ����

���ָ�ʮ�㡭����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mc03/019vs0030a01">
��ֻҪ�ٴ�����ͬһ���ط�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/019vs0040a00">
�����ܶ�ȥ�Է���ս����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ʹ�Է���������壬�������ĺ���ҲӦ���Ǿ߱���
�۵����岿�֡�
��ֻҪ�������ʣ�µ�����Ӧ�þ��޷�������ս�ˣ�


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

//������ڣ���

..//������ָ��
//�Υե����롡"mc03_020vs.nss"

}


