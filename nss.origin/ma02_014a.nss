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

scene ma02_014a.nss_MAIN
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
	if($ma02_014a_routeFlag==true){$ma02_014a_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_015.nss";

}

scene ma02_014a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_014.nss"

//��ʤ�ۤ�
	PrintBG("������", 30000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
���������������Ͽ��Ļ������ǻ���ȷʵ����
˵�ܰ��䡣
���ҵ����Ҫ��ʤһ�

�����ǳ���֮�ⲻ��Ƶĵط�ʵ��̫�࡭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����衿
<voice name="����" class="����" src="voice/ma02/014a0010a04">
�������Ǿ��û��еı����أ���С�㡣��


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/014a0020a03">
���������ٰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������֦�øжȣ���
//$Kanae_Flag = $Kanae_Flag++;
	$ma02_014a_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();


..//������ָ��
//�Υե����롡"ma02_015.nss"

}



