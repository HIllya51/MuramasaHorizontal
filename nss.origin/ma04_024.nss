//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_024.nss_MAIN
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
	if($����������){$�������ͻ�=true;$Others_Flag = 0;$OthersFav_After = 0;SetHex();}
	else if($���쥤���ɚ���){$�������ͻ�=true;$Others_Flag = 0;$OthersFav_After = 0;SetHex();}
	else{$�������ͻ�=true;$Others_Flag = 0;$OthersFav_After = 0;SetHex();}

		$PreGameName = $GameName;
		$GameName = "ma05_001vs.nss";

}

scene ma04_024.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//������Ԓ����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}�\��", 10, "#000000");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_���ľ�.png");
	WaitKey(3000);
	FadeDelete("�ϱ���", 2000, true);

	Wait(1000);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}�\��", 10, "#000000");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_���ľ���.png");
	FadeDelete("�ϱ���", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

..//������ָ��
//�Υե����롡"ma05_001vs.nss"

//����������������������������������������������


}




