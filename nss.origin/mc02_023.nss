//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_023.nss_MAIN
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
	#ev220_�衩�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_024.nss";

}

scene mc02_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_022.nss"

//�����ӘS��
//���衩����g
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����11", 11, Center, Middle, "cg/bg/bg045_���ӘS�ǹ������g_01.jpg");
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0230010a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����衩�������_���F
//�����椬���ˤ�`�������
//���j���ӣš��������������餴����줼
//���䤬�Ƥ����R��������������Ϥ�
	CreateSE("�������ޤ�", "se����_������_�衩�������_L");
	MusicStart("�������ޤ�", 0, 1000, 0, 1000, null,true);
	CreateTextureEX("�}����10", 12, Center, Middle, "cg/ev/ev220_�衩�������.jpg");
	Fade("�}����10", 1000, 500, null, true);

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0230020a07">
�������ˡ���


{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0230030a07">
�������ˣ�
��������!!��


{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0230040a07">
���ҽ���ͳ�ȫ�㡣
�����ԡ���������<RUBY text="����">����</RUBY>���£���


{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0230050a07">
������˯��!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(300);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��
�����������������������ߵ��ĩ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�������ޤ�", 1500, 0, AxlAuto);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	WaitPlay("�������ޤ�", null);

	ClearFadeAll(0, true);

}

..//������ָ��
//�Υե����롡"mc02_024.nss"