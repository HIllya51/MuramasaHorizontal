
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

scene mc03_020vsaa.nss_MAIN
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
	if($mc03_kacl_Frag==ture){
		$mc03_kacl_Frag=false;
	}else{
		$mc03kacl++;
	}

	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc03_021vs.nss";

}

scene mc03_020vsaa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��t�����ģ������ڣ��Ҥ����ܤ��������Έ��ϣ�
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
<voice name="����" class="����" src="voice/mc03/020vs0010a00">
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
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

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

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,205,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/resize/bg002_��a_01.jpg");

	FadeDelete("�}ɫ��", 300, true);

//������󡸣ãУ��t�����ĤΤ�������p�١�
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
<voice name="����" class="��������" src="voice/mc03/020vs0020a01">
��ֻҪ�ٴ�����ͬһ���ط�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/020vs0030a00">
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


���á���������һ������ʤ�ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

//����������å��ᥤ��

..//������ָ��
//�Υե����롡"mc03_021vs.nss"

}


