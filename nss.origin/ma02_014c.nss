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

scene ma02_014c.nss_MAIN
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
	if($ma02_014c_routeFlag==true){$ma02_014c_routeFlag=false;}
	else{$Muramasa_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_015.nss";

}

scene ma02_014c.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_014.nss"

//�񰳤ˤϴ���
//��һ��������֦���ꥢ���޶�

	PrintBG("������", 30000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
�������ܺ��������Ҳֻ�д����ɡ�

������ĸ֡�
��Ѫɫ������
���ڵ������е��������Ρ�
���Ȳ���ůҲ�����������ĵ��С�

������������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/ma02/014c0010a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������øжȣ�����
//$Muramasa_Flag = $Muramasa_Flag+2;
	$ma02_014c_routeFlag = true;
	$Muramasa_Flag++;

	judgment_of_count();

}

..//������ָ��
//�Υե����롡"ma02_015.nss"
