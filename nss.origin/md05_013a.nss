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

scene md05_013a.nss_MAIN
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
	#bg108_�Ĥ�񤦺�b_00=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_014.nss";

}

scene md05_013a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_013.nss"


//�񤳤������ޤ�

	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg108_�Ĥ�񤦺�b_00.jpg");
	FadeBG(0, true);
	CreateSE("���L", "se��Ȼ_�L_���L");
	MusicStart("���L", 0, 1000, 0, 1000, null,true);
	Delete("�ϱ���");


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md05/013a0010a01">
��������棬�ܿ���ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/013a0020a00">
������������
������Ǵ������ְɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g�֤�
	CreatePlainEX("�}��д", 100);
	OnSE("se����_������_���g����",1000);

	DrawEffect("�}��д", 36000, "MiddleWave", 30, 30, null);

	Fade("�}��д", 500, 900, null, false);
	Zoom("�}��д", 1000, 1300, 1300, AxlDxl, false);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md05/013a0030a00">
��ʱ���𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/013a0040a01">
�������ǡ�
�������������Ҹ�������֮������Ϊ�á���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ƅ�
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("���L", 1000, 0, null);

	OnSE("se���L_����_⟱ڴ����w�Ф�", 1000);

	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1500);
}

..//������ָ��
//�Υե����롡"md05_014.nss"