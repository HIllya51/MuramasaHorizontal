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

scene ma02_013a.nss_MAIN
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
	#bg023_��Դ̫�μ�_03a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma02_013a_routeFlag==true){$ma02_013a_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_014.nss";

}

scene ma02_013a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_013.nss"

//�񡸤��Τ����ޤ���

	PrintBG("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw����֦_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/013a0010a03">
��ѽ����


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/013a0020a04">
���øж�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//������֦�øжȣ���
//$Kanae_Flag = $Kanae_Flag++;
	$ma02_013a_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();


}

..//������ָ��
//�Υե����롡"ma02_014.nss"
