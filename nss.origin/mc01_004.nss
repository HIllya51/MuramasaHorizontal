//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_004.nss_MAIN
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
	#bg009_�`�}סլ��b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb01_003_1.nss";

}

scene mc01_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_003.nss"

//������֦������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	OnBG(100, "bg009_�`�}סլ��b_01.jpg");
	FadeBG(0, true);
	CreateEffect("�}������", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);
	CreateSE("��", "se��Ȼ_ˮ_����02_L");
	MusicStart("��", 0, 1000, 0, 1000, null,true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 1000, true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0040010a03">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������֦��ͷ�����Ǹ����ˡ�
�������Ǹ�����ˮ���У���ͣ˻���ŵ����ˡ�

������ء�������
��
������

����ů�ء�
������ء�
������Ҫ��������סһ�㣬���еء�

��������������֦΢Ц�ţ�ע�������˵���Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ΣӣŤ򤷤Ф餯����
//���ե��`�ɥ�����

	CreateColorEX("�\Ļ��", 25000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);

	Wait(1000);

	SetVolume("��", 2000, 0, null);

//���Խ���"mb01_003_1.nss"��
//������Ԫ����ްȥ_������
//�������ޤ������ΰk����ܤ����M�v܊�t˾��ǤϨD�D_���ޤǤ�
//���U�ɤ��Ƥ�����ӛ�Υե�������w�Ӥޤ�


	ClearWaitAll(3000, 2000);

}

..//������ָ��
//�Υե����롡"mb01_003_1.nss"