
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

scene mc03_020vsab.nss_MAIN
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

scene mc03_020vsab.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��t�����ģ������ڣ��Ҥ����t�����ġ��Έ��ϣ�
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

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

	CP_HighChange(0,1217,null,false);
	CP_AziChange(0,295,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");

	MoveFFP1("@�}�ݺ��ձ���",20000);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������һ�Σ�
���������к͸ղ�ͬ���ĵط���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������󡸣ãУ��ض��΂���������򥬥󥬥�p�餹��
	CP_PowerChange(5000,0,null,false);
	CP_SpeedChange(500,110,null,false);
	MyTr_Count(500,60);

	PrintGO("�ϱ���", 19999);
	CreateColorSP("�}ɫ�\", 10, "#000000");

	Fade("@box*", 0, 0, null, true);
	Cockpit_AllFade0();

	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
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

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc03/020vs0040a00">
���������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����쥤������֢״
	SetVolume("@mbgm*", 300, 0, null);
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 30000, "#FFFFFF");
	Delete("�}��*");

	Cockpit_AllFade2();
	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	MoveFFP1("@�}�ݺ��ձ���",20000);

	CreatePlainSP("�}��ʧ��һ", 20000);
	CreatePlainSP("�}��ʧ���", 19990);
	SetShade("�}��ʧ��һ", HEAVY);
	SetShade("�}��ʧ���", SEMIHEAVY);
	SetTone("�}��ʧ��*", Monochrome);
	SetBlur("�}��ʧ��*", true, 1, 500, 30, false);

	FadeDelete("�}ɫ��", 100, false);

	Zoom("�}��ʧ��*", 300, 1150, 1150, Dxl2, false);

	Wait(200);

//��͎�
	Fade("�}��ʧ��һ", 100, 0, Dxl2, false);
	FadeDelete("�}��ʧ���", 200, true);
	Delete("�}��ʧ��*");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������ʲô��

���⡪��<k>�������ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����쥤������֢״
	CreateSE("SE01","se����_��_��Ġ����02");
	CreatePlainSP("�}��ʧ��һ", 20000);
	CreatePlainSP("�}��ʧ���", 19990);
	SetShade("�}��ʧ��һ", HEAVY);
	SetShade("�}��ʧ���", SEMIHEAVY);
	SetTone("�}��ʧ��*", Monochrome);
	SetBlur("�}��ʧ��*", true, 1, 500, 30, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

//��͎�
	Zoom("�}��ʧ��*", 300, 1150, 1150, Dxl2, false);

	Wait(400);

	Fade("�}��ʧ��һ", 100, 0, Dxl2, false);
	FadeDelete("�}��ʧ���", 200, true);
	Delete("�}��ʧ��*");

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc03/020vs0050a00">
�����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ʧȥ��Ѫ����
��
��������ȫ��������˼��

��������֪���Լ�����״�����ѣ�
����������ȫ���������������ĺ����������֮��


���µ���񡭡�����<k>�����ݽߣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����쥤�����ȡ��͎�����
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateEffect("�}����", 19990, 0, 0, 1024, 576, "Monochrome");
	SetAlias("�}����","�}����");

	SetBlur("�}�ݺ��ձ���", true, 3, 500, 300, false);

	Wait(32);

	FadeDelete("�}ɫ��", 600, false);

	CockPit_LockSet(@0,@0);
	CreateTextureEX("�}�����}����", 1100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���Lb.png");
	CP_LockOnMove("@�}�����}����",0,@0,@-100,null,true);
	Zoom("�}�����}����", 0, 100, 100, null, true);
	Request("�}�����}����", Smoothing);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ʶ���ٵر��ɢ����
����ʧȥ��ָ��ĸо���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�}�����}����", 300, 1000, null, false);
	CP_LockOnMove("@�}�����}����",300,@0,@-10,null,true);

	CreateSE("SE02","se����_���å��ԥå�_��å�����");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CP_LockOnFade(300,"off",true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����������Ҫ�ж���
������������֮�Ȱѵ��˵ģ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T�������`�󥽩`һ�W
	CreateColorEX("�}ɫ�\", 20000, "#000000");

	CP_LockOnMove("@�}�����}����",1000,@0,@-100,null,false);
	Wait(800);
	CP_LockOnMove("@�}�����}����",1000,@0,@-30,null,false);
	Wait(200);

	CreateSE("SE02a","se���L_����_���ϕN01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Rotate("�}�����}����", 400, @0, @0, @30, Axl2,false);
	Zoom("�}�����}����", 400, 1500, 1500, Axl2, false);
	CP_LockOnMove("@�}�����}����",400,@50,@600,Axl2,false);

	CP_LockOnChange(200,false);

	Wait(100);

	Fade("�}ɫ�\", 280, 1000, Axl2, true);
	Delete("�}�����}����*");
	CP_LockOnDelete();

//�����Щ`��
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

	Shake("�}��", 200, 100, 0, 0, 0, 1000, null, false);

	CreateSE("SE03a","se���L_����_�z_���02");
	MusicStart("SE03a",0,1000,0,1000,null,false);

	Wait(50);

	CreateSE("SE03b","se���L_����_�z_���02");
	MusicStart("SE03b",0,1000,0,1000,null,false);

	Wait(50);

	CreateSE("SE03c","se���L_����_�z_���02");
	MusicStart("SE03c",0,1000,0,1000,null,false);

	Wait(50);

	CreateSE("SE04","se���L_����_�z��������03");
	MusicStart("SE04",0,1000,0,1000,null,false);

	Wait(50);

	CreateColorSP("�}ɫ��", 21000, "#FFFFFF");
	Delete("�}ɫ�\��");
	Delete("�}��*");
	Wait(12);
	FadeDelete("�}ɫ��", 200, true);
	SetVolume("SE01a", 1600, 0, null);

	CreateSE("SE05","se���L_�n��_�zɢ�A");
	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateTextureSPover("�}����", 20100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 20000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetVertex("�}����", 474, 293);
	SetBlur("�}����", true, 3, 300, 30, false);

	Zoom("�}����", 500, 1100, 1100, Dxl1, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("�}����", 1000, true);


	ClearWaitAll(3000, 2000);

//�����񥲩`�४�`�Щ`

..//������ָ��
//�Υե����롡"mc03_021vsz.nss"

}


