//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//�ե饰�����å���
		$GameDebugSelect = 1;
		Reset();
	}

}

scene ma05_023.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		if($Return_ma05_021vs == true){}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName

//	$Ӣ�۾��K�� = true;
//	$��׉���K�� = true;
//	$ħ������� = true;
//	$һ������ = true;
//	$����֦���� = true;
//	$Ichizyou_Flag = 1;
//	$Ichizyou_Flag = 4;
//	$Kanae_Flag = 1;
//	$Kanae_Flag = 4;
//	$Muramasa_Flag = 1;
//	$Muramasa_Flag = 4;

	RouteChicker();

	if($RC_N["һ��"] < $RC_N["����֦"] && $RC_N["һ��"] < $RC_N["����"]){
//Ӣ�۾�
		$PreGameName = $GameName;
		$GameName = "mb01_001.nss";
	}else if($RC_N["����֦"] < $RC_N["һ��"] && $RC_N["����֦"] < $RC_N["����"]){
//��׉��
		$PreGameName = $GameName;
		$GameName = "mc01_001.nss";
	}else if($RC_N["����"] < $RC_N["����֦"] && $RC_N["����"] < $RC_N["һ��"] && !$һ������ && !$����֦����){
//ħ����
		$PreGameName = $GameName;
		$GameName = "md01_001.nss";
	}else{
//�Хåɥ����
//�룺�øжȤ�һ�������¤Ξ顢bad
//$badEnd_Flag = ����������ץ����ж���
		$badEnd_Flag = true;
		$PreGameName = $GameName;
		$GameName = "mz01_003.nss";
	}
}

scene ma05_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_022.nss"
//ǰ�ե����롡"mz00_001.nss"
//ǰ�ե����롡"mz00_002.nss"

//������Ԓ����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}�\��", 10, "#000000");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_���徎.png");
	WaitKey(4000);
	FadeDelete("�ϱ���", 2000, true);

	Wait(1000);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}�\��", 10, "#000000");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_���徎��.png");
	FadeDelete("�ϱ���", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

//����`�ȷ��
//���ҥ���ȫ�T���椫�Ĵ����øж�һ�����Ϥʤ����
//��һ�����椫�ĺøж�һ�����Ϥʤ�һ��
//������֦���椫�ĺøж�һ�����Ϥʤ�����֦
//����������ϥХåɾ�

..//������ָ��
//�룺��׉���ˤƣ�һ���������Ƥ��ʤ�����
//�Υե����롡"mz00_001.nss"
//�Υե����롡"mz00_002.nss"
//�Υե����롡"mz00_003.nss"
//�Υե����롡"mb01_001.nss"
//�Υե����롡"mc01_001.nss"
//�Υե����롡"md01_001.nss"


}



//������������������������������������������������


