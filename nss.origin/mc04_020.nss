//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_020.nss_MAIN
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
	#bg087_���Bۡ���vǰb_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_021vs.nss";

}

scene mc04_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_019.nss"

//������������
//�����Ϥ����^
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	CreateTextureEXadd("�}����21", 10010, Center, Middle, "cg/bg/bg087_���Bۡ���vǰb_02.jpg");
	Zoom("�}����21", 0, 1030, 1030, null, true);
	Fade("�}����21", 0, 1000, null, true);
	DrawTransition("�}����21", 0, 0, 100, 1000, null, "cg/data/circle_13_00_1.png", true);
	DrawEffect("�}����21", 0, "HighWave", 20, 20, null);

	CreateTextureSP("�}����20", 10000, Center, Middle, "cg/bg/bg087_���Bۡ���vǰb_02.jpg");
	CreateSE("SEL01","se����_����_��������_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	Wait(1000);

	Delete("�ϱ���");
	Fade("�\Ļ��",2000,0,null,true);

	Wait(2000);

//��ɽ�֣�
	CreateProcess("�ץ�����", 150, 0, 0, "fire01");
	CreateProcess("�ץ�����", 150, 0, 0, "fire02");
	CreateProcess("�ץ�����", 150, 0, 0, "fire03");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	SetVolume("SEL*", 1000, 500, null);
	CreateTextureSP("�}�ݿձ���", 1000, Center, Middle, "cg/bg/bg002_��b_03.jpg");
	FadeDelete("�}����21", 800, false);
	FadeDelete("�}����20", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����񱾼�լۡ��ȼ�ա�

���Ҳ�֪���Լ�Ϊʲô���������
�������һع����ʱ�����Ѿ��������ţ���Զ������
������������û��լۡ��

�������Ļ�۷��赽����С�
���ƺ���Ҫ����ն�һͬ���ơ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("�\Ļ��", 25000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);

	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg022_ɽ��a_02.jpg");

	Delete("�ץ���*");
	Delete("�}����20");
	FadeDelete("�\Ļ��", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc04/0200010a01">
��������������
����������������ʧ�ˡ���

//��������
<voice name="����" class="��������" src="voice/mc04/0200020a01">
���ոա���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0200030a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ѳ�����
������ҡ��������������᲻�ɴݡ�

����ʹ��ˡ�
��ֻ����һ���£�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc04/0200040a00">
�������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc04_021vs.nss"