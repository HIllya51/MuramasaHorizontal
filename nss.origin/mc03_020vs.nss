//<continuation number="340">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_020vs.nss_MAIN
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

//������A�Ф��ꡡ"mc03_020vsa.nss"
//������A�Фʤ���"mc03_020vsb.nss"

	if($mc03_018vs_BSFlag == "����"){$GameName = "mc03_020vsa.nss";}
	else if($mc03_018vs_BSFlag == "�x��"){$GameName = "mc03_020vsb.nss";}

}

scene mc03_020vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_019vsa.nss"
//ǰ�ե����롡"mc03_019vsd.nss"

//������󡸥ǥХå����ݳ��_�J�åե饰��
//	$mc03_018vs_BSFlag = "����";
//	$mc03_018vs_BSFlag = "�x��";

//��ڣ���
//������
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	CreateTextureSP("�}����", 100, InRight, -730, "cg/bg/bg204_�����ر���c_01.jpg");
	CreateTextureSP("�}�ݴ���", 1010, 420, 120, "cg/st/3d�����˜�_�T��_��xb.png");
	Shake("�}�ݴ���", 60000, 2, 1, 0, 0, 1000, null, false);
	Zoom("�}�ݴ���", 0, 2000, 2000, null, true);

	Move("�}����", 60000, 0, @0, DxlAuto, false);

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}�ݴ���", 800, 1000, 1000, null, false);
	BezierMove("�}�ݴ���", 1000, (420,120){130,10}{0,-140}(143,-235), Dxl1, false);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��һ�غϽ�ս֮���Һ͵���������������Զ�롣
��
��ȷ���˸߶Ⱥ��ٶ�֮���ٴκͶԷ�̫������������
����֮ս����ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

//���ե饰���
//������A�У������x��

..//������ָ��
//��$���Ҿt��_Flag��$���ҼӜp_Flag��$�����ܤ�_Flag��$���ұܤ�_Flag
//����ӛ�����줫�����֤��Ƥ�����ϡ�"mc03_020vsa.nss"
//��$���Ҿt��_Flag�⤷����$���ҼӜp_Flag��������ϡ�"mc03_020vsb.nss"


}



