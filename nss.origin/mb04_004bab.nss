

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004bab.nss_MAIN
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

	$GameName = "mb04_004z.nss";

}

scene mb04_004bab.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_004ba.nss"

//�񔳤΄�����ֹ���
//��һ�W
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 100, "#000000");
	CreateTextureSP("�}�ݱ���", 3000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Delete("�ϱ���");

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}�ݱ���", 150, 100, "circle_01_00_1", true);

	CreateSE("SE01b","se���L_����_Ұ̫�����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_left(@0, @0,1500);
	SL_leftfade2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ı�֮ǰ��׼���˶��ӽ��Ĺ����ת����ס���˵�
̫������
��
������ľ߱����׿Խ�Ľ�����!?

�������Ҳ����߱���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ф���`
	CreateSE("SE01c","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_leftdamN(@0, @0,1000);
	SL_leftdamfadeN2(10);
	WaitPlay("SE01c", null);

//����ͨ�Yĩ��

}

..//������ָ��
//�Υե����롡"mb04_004z.nss"