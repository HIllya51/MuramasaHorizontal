//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_046vs.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	//CP_AllDelete();

	$GameName = "mc04_047vs.nss";

}

scene mc04_046vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"mc04_045vs.nss"


//������֦������
//���������

//���������ǥ֥�`�ɥ��`�ģ�ʹ������

	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm13",0,1000,true);

//	CreateColorSP("�}ɫ100", 20000, "BLACK");
	CreateTextureSP("�}����50", 100, Center, 0, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
//	SetBlur("�}����50", true, 3, 800, 200, false);
	Request("�}����50", Smoothing);
	Shake_Loop("@�}����50","shake01");

	CreateTextureEX("�}��", 1590, center, middle, "cg/st/3d�Х���_�T��_ͨ��.png");
	Request("�}��", Smoothing);
	Rotate("�}��", 0, @0, @0, @-50, null,true);
	Zoom("�}��", 0, 300, 300, null, true);
	Move("�}��", 0, @0, @-1000, null, true);
	SetBlur("�}��", true, 2, 200, 100, false);
	Fade("�}��", 0, 1000, null, true);
	Shake_Loop("@�}��","shake02");

	CreateSE("SE01","se���L_����_�z_�ٶ�ʧ��01");
	CreateSE("SE10","se���L_����_��ͻ�M05");

	FadeDelete("�ϱ���", 1000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}����50", 30000, @0, @-1500, Dxl2, false);
	Move("�}��", 2000, @0, @1000, Dxl2, true);
	FadeF4("�}��", 0, 1000, 60000, 0, 0, null, false);

/*
	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();
	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"off",false);
	CP_EnemyFade(0,10,420,300);

*/


	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/046vs0010a03">
���ߺߡ���������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/046vs0020a03">
����������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������Ļ��������Ц��
��ϲ�õò������ѣ�Ц��ǰ��������

���������������ˡ�
�����·�Ҫ��ȫ��Ϊɳ��һ���ʧ�����Ϯ��ͬʱ��
�����ʹ��ط�����Ц��

�������뷨���ﵽ�ˡ�
��
����ħ���������

������Ը���
�����������
��ɱ���ɱ�⡣

���γ���һ��������Լ�άϵ������

����Ƭ���ֻʣ����

���εȵ�������
���εȵ�ˬ�졣

�������ڴ˿���ɡ�
������ڱ�΢��С�г�ӯ��

�����ʲô������Ҫ��

��ֻҪ�����ͺá�

�������ڸ�������ͳһ!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/046vs0030a03">
��������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Х�������
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateSE("SE02","se����_���å��ԥå�_������04");
	CreateSE("SE03","se���L_����_��ͻ�M08");

	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("�}��", 500, @-5, @20, Dxl2, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 300, 100, "cg/ef/ef003_�����Ƅ�.jpg", false);
	Zoom("�}��", 1000, 500, 500, Axl3, false);
	Move("�}��", 1000, @100, @-600, Axl3, true);


	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);

	//CP_AllDelete();

}

..//������ָ��
//�Υե����롡"mc04_047vs.nss"



