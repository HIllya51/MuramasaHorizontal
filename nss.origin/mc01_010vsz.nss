

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

scene mc01_010vsz.nss_MAIN
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
	#bg002_��a_01=true;

	CP_AllDelete();

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;
	$GameName = "mz00_000.nss";

}

scene mc01_010vsz.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_010vsb.nss"
//ǰ�ե����롡"mc01_010vsca.nss"
//ǰ�ե����롡"mc01_011vsaba.nss"
//ǰ�ե����롡"mc01_019vsaa.nss"
//ǰ�ե����롡"mc01_019vsab.nss"
//ǰ�ե����롡"mc01_021vsaba.nss"
//ǰ�ե����롡"mc01_021vsba.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}


//�����`���������_�����餹��������

//����˥��`��å�
//�����쥤������
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateSE("SE01","se����_��_��Ġ����02");
	CreateColorSP("�}ɫ��", 20000, "#CC0000");

	Wait(10);

	CreateEffect("�}�݄�����ɫ", 19000, center, middle, 1024, 576, "Monochrome");
	SetAlias("�}�݄�����ɫ","�}�݄�����ɫ");
	Fade("�}�݄�����ɫ", 0, 0, null, true);
	CreateTextureSP("�}���ձ���", 1000, Center, InTop, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

	Fade("@box*", 0, 0, null, true);
	Fade("@Fw*", 0, 0, null, true);

//������󡸣ãУ����ڂ����x��
	Cockpit_AllFade2();

	$�����饤�ջ����� = 612;
	if($First_Battle_Damage >= 1){
		$�����饤���{���� = $�����饤�ջ����� - ($First_Battle_Damage*218);
	}else{
		$�����饤���{���� = $�����饤�ջ����� ;
	}

	$��������������� = 9;
	if($First_Battle_Damage >= 1){
		$����������{���� = $��������������� - ($First_Battle_Damage*3);
	}else{
		$����������{���� = $��������������� ;
	}

	MyLife_Count(0,$�����饤���{����);
	CP_IHPChange(0,$����������{����,null,false);

	MyTr_Count(0,140);
	CP_PowerChange(1,480,null,true);
	CP_SpeedChange2(0,172,Dxl2,false);

	CP_HighChange2(0,1444,Dxl2,false);
	CP_AltChange(0,10,Dxl2,false);

	CP_AziChange(0,30,null,false);
	CP_RollBarMove2(0,0,null,true);

	SetVolume("@mbgm*", 100, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(12);

	Delete("�ϱ���");
	FadeDelete("�}ɫ��", 300, true);

	Fade("�}�݄�����ɫ", 5000, 500, null, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc01/010vs0210a01">
����������!?��


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/010vs0220a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEL01","se���L_����_������01_L");
	MusicStart("SEL01",3000,1000,0,800,null,true);

	Fade("�}�݄�����ɫ", 5000, 750, null, false);

	MyTr_Count(300,60);
	$����������p�ق� = $����������{���� - 2;
	CP_IHPChange(300,$����������p�ق�,null,false);

	CP_PowerChange(3000,200,null,false);
	CP_SpeedChange(30000,274,Dxl2,false);

	CP_HighChange2(30000,600,Dxl2,false);
	CP_AltChange(3000,-60,Dxl2,false);
	Zoom("�}���ձ���", 3000, 1100, 1100, AxlDxl, false);
	Move("�}���ձ���", 3000, @0, @-1024, AxlDxl, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����⡣
��ԭ�������״��������ֵķ��ж���Щ��ǿ��������
���ܵ��˹��ȵĹ�������!!

��Ҫ׹���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ҕ��ؤä�
	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 2600, 1000, null, false);

	SetVolume("SE*", 3000, 0, null);
	Fade("�}�݄�����ɫ", 5000, 1000, null, false);

	MyTr_Count(300,0);
	CP_PowerChange(3000,0,null,false);
	CP_SpeedChange(3000,712,Dxl2,false);

	CP_HighChange(3000,150,Dxl2,false);
	CP_AltChange(3000,-90,Dxl2,false);
	Zoom("�}���ձ���", 3000, 5000, 5000, Axl2, false);
	Move("�}���ձ���", 3000, @0, @-1024, AxlDxl, false);

	WaitAction("�}ɫ�\", null);
	SetVolume("SE*", 100, 0, null);

	WaitKey(1000);

	Cockpit_AllFade0();

//���䡣���ɩ`��
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

	WaitKey(500);

//�����å������`
	PrintGO("�ϱ���", 20000);
	CreateSE("SE01a","se���L_�Ɖ�_�z01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	OnBG(100,"bg002_��a_01.jpg");
	FadeBG(0,true);
	CreateTextureSP("�}�ݺ���", 1000, Center, Middle, "cg/st/3d���å������`_����_ͨ��c.png");
	SetVolume("SE*", 1000, 600, null);
	FadeDelete("�ϱ���", 1000, true);

	WaitKey(1000);

	SetFwR("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030a]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/010vs0230b33">
�������ǺǺǡ���
����������������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


/*
//��������ݳ����ݤޤ����������礤Ҋ�����Ƥߤ롹
//��������ݳ�����������ʧ�������ΤǱ�����
	CreatePlainSP("�}��д", 22000);
	SetFwR("cg/fw/fwС��_�Ӥ�.png");
	CreateStencil("@FwC04/�}����",20000,0,0,128,"cg/fw/fwС��_�Ӥ�.png",true);
	CreateColorSP("@FwC04/�}����/ɫ", 20050, "#000000");
	DrawTransition("@FwC04/�}����/ɫ", 0, 0, 145, 500, null, "cg/data/slide_02_00_0.png", true);

*/


	SetFwR("cg/fw/fw���å������`_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030b]
//��С�ġ�
<voice name="С��" class="С��" src="voice/mc01/010vs0240b33">
����˵���㿴������
����������������

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(3000, 2000);

//�����`�४�`�Щ`

}

..//������ָ��
//�Υե�����