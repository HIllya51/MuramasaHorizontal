
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_020vsa.nss_MAIN
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

//������󡸥ǥХå����ݳ��_�J�á�
	//$GameName = "mc03_020vsaa.nss";
	//$GameName = "mc03_020vsab.nss";
	//$GameName = "mc03_019vsb.nss";
	//$GameName = "mc03_019vsc.nss";
	//$GameName = "mc03_020vsac.nss";
	//$GameName = "mc03_020vsad.nss";

	if($mc03_017vs_Flag == "�ܤ�" && $mc03_018vs_R2Flag == "�t��"){
//��$���Ҿt��_Flag�����ꡢ����$���ұܤ�_Flag���������
		$GameName = "mc03_020vsaa.nss";
	}else if($mc03_017vs_Flag == "�t��" && $mc03_018vs_R2Flag == "�t��"){
//��$���Ҿt��_Flag�����ꡢ����$���Ҿt��_Flag���������
		$GameName = "mc03_020vsab.nss";
	}else if($mc03_018vs_R2Flag == "�ܤ�"){
//��$�����ܤ�_Flag���������
		$GameName = "mc03_019vsc.nss";
	}else if($mc03_018vs_R2Flag == "�Ӝp"){
//��$���ҼӜp_Flag���������
		$GameName = "mc03_019vsb.nss";
	}else if($mc03_017vs_Flag == "�t��" && $mc03_018vs_R2Flag == "�ܤ�"){
//��$���ұܤ�_Flag�����ꡢ����$���Ҿt��_Flag���������
		$GameName = "mc03_020vsac.nss";
	}else if($mc03_017vs_Flag == "�ܤ�" && $mc03_018vs_R2Flag == "�ܤ�"){
//��$���ұܤ�_Flag�����ꡢ����$���ұܤ�_Flag���������
		$GameName = "mc03_020vsad.nss";

	}

}

scene mc03_020vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vs.nss"

//�񽻑�A��
//������
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("�}�ݿ�", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3b.png");

	CreateTextureSPadd("�}�ݴ�����", 1011, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	Fade("�}�ݴ�����", 0, 600, null, true);
	DrawTransition("�}�ݴ�����", 0, 0, 100, 1000, null, "cg/data/slide_01_00_0.png", true);
	Zoom("�}�ݴ�����", 0, 1050, 1050, null, true);

	Move("�}�ݴ���*", 0, @-400, @60, null, true);
	Shake("�}�ݴ���*", 216000, 1, 2, 0, 0, 1000, null, false);

	Move("�}�ݿ�", 75000, @0, @576, null, false);
	Move("�}�ݴ���*", 2000, @20, @-60, DxlAuto, false);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������ڣ��ҽ��л�������<RUBY text="Monitor">��Ұ</RUBY>��
����Ȼ�ˡ�������һ��ô����ξ������������������
ô����ת���뿪��

�����Ǹ����˼��䲻��ļһ����֮ǰ���Ҳ���������
̫����
���Ҵ�������ȼ�յ�ŭ��һͬ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("SEL*", 100, 0, null);
	CreateSE("SE02","se���L_����_��ͻ�M01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 19000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ԽսԽǿ��<RUBY text="Pressure">��ѹ</RUBY>��<RUBY text="ʯ���">������</RUBY>����Ϯ����
���ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰���

..//������ָ��
//��t�����ģ������ڣ��Ҥ����ܤ��������Έ��ϣ�
//��$���Ҿt��_Flag�����ꡢ����$���ұܤ�_Flag���������
//�Υե����롡"mc03_020vsaa.nss"

//��t�����ģ������ڣ��Ҥ����t�����ġ��Έ��ϣ�
//��$���Ҿt��_Flag�����ꡢ����$���Ҿt��_Flag���������
//�Υե����롡"mc03_020vsab.nss"


//��Ӝp���ģ�
//������Ӝp���ģ�
//��$���ҼӜp_Flag���������
//�Υե����롡"mc03_019vsb.nss"

//���ܤ�������
//�������ܤ�������
//��$�����ܤ�_Flag���������
//�Υե����롡"mc03_019vsc.nss"


//��ܤ������������ڣ��Ҥ����t�����ġ��Έ��ϣ�
//��$���ұܤ�_Flag�����ꡢ����$���Ҿt��_Flag���������
//�Υե����롡"mc03_020vsac.nss"


//��$���ұܤ�_Flag�����ꡢ����$���ұܤ�_Flag���������
//�Υե����롡"mc03_020vsad.nss"

}


