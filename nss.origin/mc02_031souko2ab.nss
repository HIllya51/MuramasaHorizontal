
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2ab.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$���_Flag = true;
	$��ʿ�ݽ~_Flag = true;

	$PreGameName = $GameName;


	$GameName = "mc02_031rouka2.nss";

	$Next_GameName = $GameName;
	$GameName = "mc02_031time.nss";

}

scene mc02_031souko2ab.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_031souko2a.nss"


//������
//���ɥ��_�����w���z��
//��}�죲����ʿ
//����ȭһ�W
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg081_�w�д�����Bb_01b.jpg");
	CreateSE("SE01","se�ճ�_����_���_��07");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

	CreateColorSP("�ե�å����", 15000, "WHITE");
	DrawTransition("�ե�å����", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnSE("se���L_����_ͻ�M01", 1000);

	WaitKey(500);

	OnSE("se���L_����_�z��������", 1000);

	WaitKey(300);

	CreatePlainEX("�}��д", 5000);
	FadeFR2("�}��д",0,500,600,@0,@0,50,Dxl2, false);

	FadeDelete("�ե�å����", 300, true);

	SetNwC("cg/fw/nw�������.png");
	//SetNwC("cg/fw/nw��ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�}���ʿ��
<voice name="����㣯�}���ʿ" class="����������" src="voice/mc02/031so0250e145">
����ŶŶŶŶŶŶŶŶŶ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������w�֡��ɤ��`��
	CreateSE("SE02","se���L_����_�z_�����w��02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Shake("�}��д", 300, 0, 80, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc02/031so0260a00">
��������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ô���������
��������˵������Ϊ���ߵ��Ҹ����ʵʩ
�ж���ʱ����

���������׼ȷ���Ʒִ����������ؽ���᲻һ���ɡ�
�á��Ȳ����������಻ɱ֮���Ĳ�ȷ��������ȭ�Ľ��
���Ǳ�ʿ�������Զ��ֱ��ײ��ǽ���ϡ�

���һ�æȥȷ���������ơ�
��
�������Һã���δ�����ˡ�

��������ʱ����ָ���ʶ�����������ò���
Ӧ��Ҳ������ȥ��
��������һ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031so0270a03">
���������顭��
��������������һ�����˳���ء���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0280a04">
�������Ǵն����ˡ�
����ʨ�����Բ����������泤��ʶ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ٶ�λŮ�������Ƿ������ĵİ���������������
һ��ʮ��ĳ��
�����ˣ�����ʱ�򣬱���׾�İ�ο��������������
��˵����һЩ��

������������Ѳ�������ڣ�ȷ��û�п�����֮��
Ѹ�ٳ����˷��䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ", 15000, "BLACK");
	DrawTransition("�\Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//��ʿ������ӥե饰
//����ʿ�ˣϥե饰��
//���ե饰�{��
//��$���_Flag = true;
//��$��ʿ�ݽ~_Flag = true;

//���������£�

}

..//������ָ��
//�Υե����롡"mc02_031rouka2.nss"