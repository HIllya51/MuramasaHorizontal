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

scene md05_036.nss_MAIN
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
	#ev254_��դˁФ��y�Ǻ�_c=true;
	#ev254_��դˁФ��y�Ǻ�_d=true;
	#ev940_���������ʧ��С����_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_037vs.nss";

}

scene md05_036.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_035.nss"


//������
//�����݅���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");

	CreateTextureSP("gin01", 2000, @0, @0, "cg/ev/ev254_��դˁФ��y�Ǻ�_c.jpg");

	//ͽ�i��ǰ�Υե����뤫��ο������v�S��BGM���
	SoundPlay("@mbgm14", 0, 1000, true);

	Delete("�ϱ���");
	DrawDelete("�\", 500, 100, "slide_04_00_1", true);

	Wait(500);

	SetFwC("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md05/0360010a14">
�������𣬾�������

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0360020a14">
��Ҫ�����������ˣ������������𣿡�

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0360030a14">
��������мǡ�
�����ǵ���Լ���ƶ���֡�����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0360040a14">
��ɱ���ҵĻ���
����Ҳע����ɱ���Ǹ�֩�롣��

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0360050a14">
���������Ҳ����ΪȻ���Ǿͷ��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ͥ륮�`���

	CreateSEEX("SE01","se���L_����_���ͥ륮�`�]���Ϥ�01_L");
	CreateSE("SE02","se����_�z_���ͥ륮�`���01");

	CreateTextureEX("gin04", 2100, @0, @0, "cg/ev/ev254_��դˁФ��y�Ǻ�_d.jpg");

	MusicStart("SE01",0,1000,0,1000,null,true);
	MusicStart("SE02",0,1000,0,1000,null,false);

	EffectZoomadd(10000, 2000, 500, "cg/ev/ev254_��դˁФ��y�Ǻ�_d.jpg", false);

	Fade("gin04", 1000, 1000, null, true);


	Wait(1000);

	SetVolume("SE*", 3000, 0, Axl2);



//�����đB��

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/md05/0360060a14">
������׹�䡪������С����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����K�쥤�ǥ��Х����_ʼ
	SetVolume("@mbgm*", 3000, 0, NULL);

//��CG�Ǆ����_�J�g�� inc�Ѿ�
//������������ˤ�äƤω������

	CreateTextureEX("�饹���y�Ǻ��·�", 2200, Center, Middle, "cg/ev/ev940_���������ʧ��С����_a.jpg");
	CreateTextureEX("�饹���y�Ǻ�", 2200, Center, Middle, "cg/ev/ev940_���������ʧ��С����_a.jpg");
	Zoom("�饹���y�Ǻ�*", 0, 2000, 2000, null, true);
	SetBlur("�饹���y�Ǻ�*", true, 3, 500, 50, false);

	CreateColorEXadd("�}ɫ100", 15000, "WHITE");

$��`�ץ�`�֥ʥå��� = "@�饹���y�Ǻ�";
$��`�ץ�`�֥����� = 5000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);

	Wait(100);
	CreateSE("SE03","se���L_�Ɖ�_���k06");
	CreateSE("SE04","se���L_����_���ϕN01");

	MusicStart("SE03",0,1000,0,1000,null,false);

	Zoom("gin04", 500, 2000, 2000, Axl1, false);
	Wait(200);
	Fade("�饹���y�Ǻ�", 300, 500, null, false);
	Fade("�饹���y�Ǻ��·�", 300, 1000, null, false);
	Zoom("�饹���y�Ǻ�", 600, 1100, 1100, Dxl1, false);
	Zoom("�饹���y�Ǻ��·�", 600, 1000, 1000, Dxl1, true);
//	Move("�饹���y�Ǻ�", 600, @400, @-200, null, true);


	Wait(2000);

	MusicStart("SE04",0,1000,0,1000,null,false);

	Zoom("�饹���y�Ǻ�", 2000, 2500, 2500, Axl2, false);
	Fade("�}ɫ100", 2000, 1000, null, true);

	SetVolume("SE*", 5000, 0, null);

	Wait(2000);
	Delete("�饹���y�Ǻ�*");
	Delete("gin*");

	CreateColorEX("�}ɫ200", 25000, "BLACK");
	Fade("�}ɫ200", 3000, 1000, null, true);



//�����A���Τ�Clearϵ�Ϥ��Ƥޤ��� inc�Ѿ�

}

..//������ָ��
//�Υե����롡"md05_037vs.nss"