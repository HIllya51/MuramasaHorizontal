//<continuation number="60">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_016vs.nss_MAIN
{

	
//���å��ԥå��ãӣ��
	CP_AllSet("����");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg002_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_017vs.nss";

}

scene mb04_016vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

..//������ָ��
//ǰ�ե����롡"mb04_015vs.nss"

	SoundPlay("@mbgm11",0,1000,true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/resize/bg002_��a_02.jpg");
	Zoom("�}����50", 0, 2000, 2000, null, true);
	CreateSE("SE10","se���L_����_��ͻ�M05");
	MusicStart("SE10",1000,1200,0,1200,null,true);
	Wait(1000);
//������
//�����ߣ����å��ԥåȄ������x=======================
	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();

	MyLife_Count(0,620);
	MyTr_Count(0,358);
	CP_IHPChange(500,9,null,false);
	CP_PowerChange(300,600,null,false);

//	CP_EHPChange(0,3,null,true);
//	EnLife_Count(1000,300);
	CP_EnemyFade(0,3,220,525);

	CP_AziChange(500,10,null,false);
	CP_HighChange(0,1000,null,false);
	CP_SpeedChange(0,527,null,false);

	FrameShake();
	BGMoveAuto("@�}����50",1);
//===================================================

	OnSE("se���L_����_��ͻ�M02",1000);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);
	Zoom("�}����50", 1500, 1000, 1000, Dxl2, false);

	CreateProcess("�ץ�����", 12000, 0, 0, "Lastfire");
	SetAlias("�ץ�����","�ץ�����");
	Request("�ץ�����",Start);


	FadeDelete("�ϱ���", 500, true);

	Wait(1000);
	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/016vs0010a02">
���������ǡ�����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/016vs0020b40">
������Բ���¿�������������������
�����������ڴ����е�ʱ�ǰ���ˡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/016vs0030a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���Ǹ��ˡ�����ġ���
����Ҫնɱ�ҡ�

��������Ҫɱ�ҡ���
��
����ô���ܡ�

���޷����š�
��������Ըȥ�����š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/016vs0040a02">
�����С�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ڲ���ȥ����Щ��
��ʲô������ȥ�롣

������˵Ļ���
���Ӹ�������̳е���־���ͻ��ܴ졣

���Ժ���ֻҪ����һ���¾��㹻�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/016vs0050b40">
����ô��ֻ��һ��·��
�������������������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/016vs0060a02">
��������֪���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Ҫ�����������ֵ��ף�

��������֮ս�᳹ʼ�գ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se����_��x_���ڜʂ�_L");
	CreateColorEXadd("�ե�å��奢����", 18005, "WHITE");

	EffectZoomadd(10000, 1200, 100, "cg/ef/ef034_����AȾ.jpg", false);


	MusicStart("SE02",0,1000,0,1000,null,true);
	Fade("�ե�å��奢����", 3000, 1000, null, true);
	CP_AllDelete();

	SetVolume("SE*", 1000, 0, null);

	ClearFadeAll(1500, true);


	Wait(1000);

}

..//������ָ��
//�Υե����롡"mb04_017vs.nss"



