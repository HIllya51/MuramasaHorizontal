//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_029.nss_MAIN
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

	$GameName = "mc04_030.nss";

}

scene mc04_029.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_028.nss"


//��ҹ����

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����20", 12, Center, Middle, "cg/bg/bg025_�ӵ�ɽ�}��ɭa_03.jpg");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg025_ɽ�}��ɭa_01.jpg");
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	WaitKey(1500);

	SoundPlay("@mbgm23",0,1000,true);
	FadeDelete("�}����20",2500,true);
	WaitKey(1500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ҹ��ȥ����
��ӭ���峿��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����30", 10, Center, Middle, "cg/bg/bg091_ɽ�P��һ��_01.jpg");
	Fade("�}����30",1500,1000,null,true);
	WaitKey(1500);

//�� �����}�ʤ��ۤ������åץ�Υԥ�`�ȩ`���Ĥ�냇�ݤ����Ƥ����ΤǤϤʤ����ȡ� inc�Ѿ�

	SetFwC("cg/fw/fw����֦_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0290010a03">
��������������ʿ���������������뿪�������
��Ů�˵��Ⱥ��ء���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0290020a00">
���ǳ���Ǹ��
�����������ѵñȽ�������͡���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0290030a03">
��˯���������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 15000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg091_ɽ�P��һ��_01.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ξ��Թ�š�
��������Ц�⣬�����ͳ��˷��䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣�ɽ�P�γ�ʳ��
//������ä��ݳ����Ĥı�ʾ����

//inc�ñ����ʳ�ϤɤΤ褦���ݳ�����Ф�����Ǥ��礦�������Ȥꤢ���������}��ϯ���Ť��ޤǤθФ������äƤߤޤ�����

	OnSE("se�ճ�_����_���_��01", 1000);
	WaitKey(1000);
	DrawDelete("�\Ļ��", 1000, 1000, "blind_01_00_1", true);

	WaitKey(1000);

	CreateSE("SEL01","se�ճ�_ʳ��_����ʂ�_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������̴�׼�������ϯ�Ͼۼ���
��һ�������Ӷ��˽���ƽ���ĶԻ���һ������
�޿����޵�ʳ�

{	SetVolume("SEL*", 1000, 0, null);}
��Ȼ��ֱ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����衿
<voice name="����" class="����" src="voice/mc04/0290040a04">
���ն����ˣ�������ʲô�����𣿡�


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0290050a00">
������΢��ɭ����ɢɢ������


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0290060a04">
����Ҳ�ܲ����ء���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0290070a03">
��ȷʵ����������Ҳ�ܺá�
���������ˣ��Ժ�����һ��ȥ�𣿡�


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0290080a00">
����Ȼ��
����ô������һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������Լ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);


}

..//������ָ��
//�Υե����롡"mc04_030.nss"