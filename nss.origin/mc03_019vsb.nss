
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

scene mc03_019vsb.nss_MAIN
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

scene mc03_019vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_019vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��Ӝp���ģ�
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

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc03/019vs0050a00">
���ߣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ڲ��ù���̰����
���������������˹��Ƶĳ̶Ⱦ͹��ˡ�

����û��ʹ����ʤ�����ǣ��ӳ���һ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ĕؤ�
	CreateColorSP("�}ɫ�\", 19000, "#000000");

	Wait(10);

	CreateSE("SE01","se���L_����_Ұ̫�����02");
	SL_leftdown2(19010,@0, @0,1500);

	Delete("�}��*");

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdownfade2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������ǡ�
����������ֻ��ʹ�������ļһ�����ֲ���ȫ����Ӧ
�Բ��������İɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 300, 0, null);

//�����Υ����`�󥽩`һ�W
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

//��ʳ��ä��������`��
	CreateColorSP("�}ɫ��", 21000, "#FFFFFF");

	Delete("�}ɫ�\*");
	Delete("�}��*");

	Wait(32);

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

	CP_SpeedChange2(0,331,null,false);
	MyTr_Count(0,256);

	CP_HighChange2(0,1304,null,false);
	CP_AziChange(0,135,null,false);
	CP_AltChange2(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}����", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");

	Shake("@CP_Frame", 216000, 20, 20, 0, 0, 1000, null, false);

	FadeDelete("�}ɫ��", 200, true);

	CreateColorEXmul("�}ɫѪ", 1100, "#CC0000");
	CreatePlainSPsub("�}��д", 1000);

//������󡸣ãУ��ãӹ��Ĵ���ܤ����Τ�װ�����ġ�
	$mc03dmg=$mc03dmg+2;
	$mc03_dmg_Frag=ture;
	$װ�׻��A=360;
	$װ��Ӌ�ゎ=$װ�׻��A-($mc03dmg*162);
	MyLife_Count(300,$װ��Ӌ�ゎ);

//������󡸣ãУ��ãӹ��Ĵ���ܤ����Τ��������ġ�
	$mc03_dmg_Frag=ture;
	$�������A=5;
	$����Ӌ�ゎ=$�������A-($mc03dmg*2);
	CP_IHPChange(300,$����Ӌ�ゎ,null,false);

//������󡸣ãУ��ãӹ��Ĵ���ܤ����Τǟ������ġ�
//������󡸣ãУ����̤ΤǤ����Ǥϣ��ˤ��롹
	$mc03kacl=$mc03kacl+1;
	$mc03_kacl_Frag=ture;
	//$�������A=300;
	//$����Ӌ�ゎ=$�������A-($mc03kacl*250);
	CP_PowerChange(300,0,null,false);

	CP_SpeedChange2(300,151,null,false);

	Shake("�}����", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03a","se���L_����_�z_���02");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	Wait(50);
	Fade("�}��д", 0, 0, null, true);

	Wait(100);

	Fade("�}��д", 0, 1000, null, true);
	Shake("�}����", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03b","se���L_����_�z_���02");
	MusicStart("SE03b",0,1000,0,1000,null,false);

	Wait(50);
	Fade("�}��д", 0, 0, null, true);

	Wait(100);

	Fade("�}��д", 0, 1000, null, true);

	Shake("�}����", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03c","se���L_����_�z_���02");
	MusicStart("SE03c",0,1000,0,1000,null,false);

	Wait(50);
	Fade("�}��д", 0, 0, null, true);

	Wait(100);

	Fade("�}��д", 0, 1000, null, true);

	Shake("�}����", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03d","se���L_����_�z_���02");
	MusicStart("SE03d",0,1000,0,1000,null,false);

	Wait(50);
	Fade("�}��д", 0, 0, null, true);

	Wait(100);

	Fade("�}��д", 0, 1000, null, true);

	Shake("�}����", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03e","se���L_����_�z_���02");
	MusicStart("SE03e",0,1000,0,1000,null,false);

	Wait(50);
	Fade("�}��д", 0, 0, null, true);

	Wait(100);

	Fade("�}��д", 0, 1000, null, true);

	Shake("�}����", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03f","se���L_����_�z_���02");
	MusicStart("SE03f",0,1000,0,1000,null,false);

	Wait(50);
	Fade("�}��д", 0, 0, null, true);

	Wait(100);

	Fade("�}��д", 0, 1000, null, true);

	SetVolume("SE*", 1600, 0, null);
	CreateSE("SE04","se���L_����_�z��������03");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Shake("�}����", 1000, -40, 20, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 1000, 40, 40, 0, 0, 1000, null, false);

	Fade("�}ɫѪ", 0, 1000, null, false);
	DrawTransition("�}ɫѪ", 0, 0, 175, 500, null, "cg/data/zoom_01_00_0.png", true);
	FadeDelete("�}ɫѪ", 300, false);

	Wait(50);
	Fade("�}��д", 0, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������ǻ������С�
��
���������ǵĽ�ֲ�ͬ�����������ö���ʹ����û�У�
�������������˿�����������Ѫ��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CP_SpeedChange(20000,999,null,false);
	MyTr_Count(300,0);

	CP_HighChange(20000,100,null,false);
	CP_AltChange(3000,-90,null,false);
	CP_AltChangeA();

	Move("�}����", 3000, @0, @-1440, Dxl2, false);
	Zoom("�}����", 20000, 2000, 2000, Axl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����������ˣ�����Ʒ��׹��Ŀֲ�֮ǰ��ʧȥ����
����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_�ռ�����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);

	ClearWaitAll(3000, 2000);

//�����񥲩`�४�`�Щ`

..//������ָ��
//�Υե����롡"mc03_021vsz.nss"


}


