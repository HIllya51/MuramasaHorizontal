
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_020vsb.nss_MAIN
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

	Cockpit_AllFade0();

	//���ե饰��᪣������
//	$GameName = "mc03_020vsba.nss";

	if($mc03_017vs_Flag == "�t��"){
//��$���Ҿt��_Flag���������
		$GameName = "mc03_020vsba.nss";
	}else if($mc03_017vs_Flag == "�ܤ�"){
//��$���ұܤ�_Flag���������
		$GameName = "mc03_020vsbb.nss";
	}

}

scene mc03_020vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vs.nss"

//������󡸥ǥХå����ݳ��_�J�åե饰��
//	$mc03_017vs_Flag = "�t��";
//	$mc03_017vs_Flag = "�ܤ�";

//������x��
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 19000, "#000000");
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������ڣ�����ҲҪ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ӥ��`��
	CreateSE("SE01","se���L_����_��ͻ�M01");

	CreateTextureSP("�}������", 100, Center, -150, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	CreateSurfaceEX("�}��������", 10000,1000,"@�}������");
	Fade("�}��������", 0, 1000, null, true);

	Zoom("�}��������", 120000, 2000, 2000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����ʮ������Ϊ�ϲߡ�
����ǿ������ս����ǿ������ս��
��������Ҳ�Ǳ�����

���ҿ�ʼ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}������", 900, @0, @-864, Axl1, false);

	Wait(300);

	Zoom("�}��������", 1000, 2000, 2000, Axl1, false);

	Wait(300);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 300, 0, 1000, 100, Axl1, "cg/data/slide_02_01_1.png", true);

//���ե饰���
//���ڣ��Ҥ����t�����ġ������x��ʧ��
//���ڣ��Ҥ����ܤ������������x�ѳɹ�

..//������ָ��
//��$���Ҿt��_Flag���������
//�Υե����롡"mc03_020vsba.nss"

//��$���ұܤ�_Flag���������
//�Υե����롡"mc03_020vsbb.nss"

}