
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

scene mc03_020vsad.nss_MAIN
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

scene mc03_020vsad.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//��ܤ������������ڣ��Ҥ����ܤ��������Έ��ϣ�
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

	CP_HighChange(0,1072,null,false);
	$냇�ݷ�λӋ=Random(10)+40;
	CP_AziChange(0,$냇�ݷ�λӋ,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("�}�ݺ��ձ���", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");

	MoveFFP1("@�}�ݺ��ձ���",20000);

	CockPit_LockSet(@0,@0);
	CreateTextureSP("�}�����}����", 1100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���Lb.png");
	Zoom("�}�����}����", 0, 100, 100, null, true);
	Request("�}�����}����", Smoothing);

	CP_LockOnMove("@�}�����}����",0,@-160,@-160,null,false);

	CreateSE("SE00","se���L_����_�z_�ϵ�������01");
	MusicStart("SE00",0,1000,0,1000,null,false);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ظ�����״�����Ƶ�������
������Ҫȫ���رܡ�

��׾�ӵĹ����ᶪ��������

������������
����ս��֮�У���������ز����ӱܣ�Ҳ�ǻᶪ������
�İɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���رܙC��
//�����T��һ�ȥ�˥��`����������
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_LockOnMove("@�}�����}����",300,@-60,@576,AxlDxl,false);
	Move("�}�ݺ��ձ���", 300, @-60, @576, AxlDxl, false);
	CP_HighChange(2000,1328,Dxl2,false);
	CP_AltChange(2000,60,Dxl2,false);

	Wait(200);

	CreateSE("SE02","se����_���å��ԥå�_��å�����");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(300);

	Delete("@�}�����}����");

//�������٤ӡ������å�
	CockPit_LockSet(@0,@0);
	CreateTextureEX("�}�����}����", 1100, Center, Middle, "cg/st/3d���å������`_�Tͻ_���Lb.png");

	$���å������`�k�ϩ`�ե�����=ImageVertical("�}�����}����")/2;
	$�kλ���a��=$���å������`�k�ϩ`�ե�����+180;
	$�kλ���a����=(400+$�kλ���a��)*(-1);

	CP_LockOnMove("@�}�����}����", 0,@0,@$�kλ���a��, null, true);

	Wait(32);

	CreateSE("SE03","se���L_����_��ͻ�M02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateSE("SE04","se���L_����_�ռ�����01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Fade("�}�����}����", 0, 1000, null, true);
	CP_LockOnFade(0,"on",true);
	CP_LockOnMove("@�}�����}����", 300,@0,@$�kλ���a����,Axl2,false);

	Wait(300);

	CP_LockOnDelete();
	Move("�}�����}����", 1400, @0, -418, null, false);

	Wait(1000);

	SetVolume("SE*", 2000, 0, null);

//�������`�󥽩`�����`��
	CreateSE("SE01a","se���L_����_�����`�󥽩`02_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);

	CreateColorSP("�}ɫ�\��", 20000, "#000000");

	Delete("�}�����}����");
	Cockpit_AllFade0();
	CP_LockOnDelete();

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