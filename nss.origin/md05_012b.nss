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

scene md05_012b.nss_MAIN
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
	#bg088_�������ƳǤΥ۩`��_01b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_013.nss";

}

scene md05_012b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_012.nss"


//���Ӥ���
//������

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm34", 0, 1000, true);

	OnBG(100, "bg088_�������ƳǤΥ۩`��_01b.jpg");
	FadeBG(0, true);

	OnSE("se���L_����_��ͻ�M01",1000);
	OnSE("se���L_����_�z_̤���z��01",1000);

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ܡ�

���־塣
�����Ǳ�������ץס�Ŀ־塣

���Ƕ�<RUBY text="����">�Ǹ�</RUBY>�Ŀ־塣

������������Ц����Ϣ�ӱ�������

����ʲô�����ڱƽ���
�����谭�أ����谭�ء���ϸ����ĳ�Ϊ��ץס��
��׷����

�����ܻ�ͷ��
����ͷ��ᱻץ��

��Ҫ���롣

������δ��ı��֮�

�����ǣ�Ҫ�ӵ���ʱ�źá���?!

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

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md05/012b0010a01">
����������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/012b0020a00">
�������𣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��ʱ���ƶ�֮����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ƅ�
	OnSE("se���L_����_⟱ڴ����w�Ф�", 1000);

	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	SetVolume("@mbgm*", 1000, 0, null);

	WaitKey(1500);
}

..//������ָ��
//�Υե����롡"md05_013.nss"