//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_014b.nss_MAIN
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
	#bg003_�Ĥ�Ұ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_015.nss";

}

scene md05_014b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_014.nss"


//�������ʤ�

	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm02", 0, 1000, true);

	OnBG(100, "bg003_�Ĥ�Ұ_03.jpg");
	FadeBG(0, true);
	CreateTextureEXadd("��", 110, @0, @0, "cg/ef/ef046_��a.jpg");
	Fade("��", 0, 1000, null, true);
	Zoom("��", 0, 1100, 1100, null, true);

	DrawEffect("��", 50, "MiddleWave", 30, 30, null);

	CreateSE("SE�����", "se����_����_ȼ����K��_L");
	MusicStart("SE�����", 3000, 1000, 0, 1000,null, true);

	CreateMovie("���ӻ�", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 6000, null, true);
	Request("���ӻ�", SubRender);
	Move("���ӻ�", 0, @0, @-400, null, true);

	FadeDelete("�ϱ���",1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����˵��<RUBY text="����">��ħ</RUBY>����
���������ӿ�ϵ�˼�����������������С�
�һ�æ����ӿ���

�����С�
�����������������������и���ģ�
ֻ�д��������������ˡ�

�����������ߣ�ֻ�ܰ��������еĻ���һ�����ѡ�
��û�г��ֵ��ʸ�

��������Ϊ�ҵ��ж��Լ��ж����ܷ����ı䣬�ǽ�������
����������������󡭡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g�֤�
	CreatePlainEX("�}��д", 11000);
	DrawEffect("�}��д", 36000, "MiddleWave", 30, 30, null);

	OnSE("se����_������_���g����",1000);

	Fade("�}��д", 200, 1000, null, false);
	Zoom("�}��д", 1000, 1300, 1300, Dxl2, true);

	Wait(500);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");
	
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md05/014b0010a01">
��������Ҫ���ǡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/014b0020a00">
����Ǹ��
��ͷ��һ�ȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ѿ�������Ů����Ӱ��
�������Ļ���֪�ֻ�ð��������ͷ��

�����о��������������������������塣
��
�����������ܻص�ԭ����ʱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ƅ�
	SetVolume("@SE*", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se���L_����_⟱ڴ����w�Ф�", 1000);

	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1500);

}

..//������ָ��
//�Υե����롡"md05_015.nss"