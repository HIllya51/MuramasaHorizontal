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

scene ma03_005a.nss_MAIN
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
	#bg031_��ᦌm����_03=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma03_005a_routeFlag==true){$ma03_005a_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_006.nss";

}

scene ma03_005a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_005.nss"

//����
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg031_��ᦌm����_03.jpg");
	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma03/005a0010a00">
����������������ӣǣȣѣ�Ӧ��Ҳ�������
�����ɡ�
����ȷ����һ�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������֦�øжȣ���
//$Kanae_Flag = $Kanae_Flag++;
	$ma03_005a_routeFlag = true;
	$ma03_005a_routeFlag02 = true;
	$Kanae_Flag++;

	judgment_of_count();


}

..//������ָ��
//�Υե����롡"ma03_006.nss"