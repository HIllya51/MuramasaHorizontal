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

scene ma02_014b.nss_MAIN
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
	#ev268_�䥯���Ȍ��Ť���һ��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma02_014b_routeFlag==true){$ma02_014b_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_015.nss";

}

scene ma02_014b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_014.nss"

//��ष��c��
	PrintBG("������", 30000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	CreateTextureEX("�}��", 4100, Center, Middle, "cg/ev/ev268_�䥯���Ȍ��Ť���һ��.jpg");

	FadeDelete("������", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
���������������ˣ�Ӧ����ȫ���ʺϴ�ҹ�����
Ů�԰ɡ�
{	Fade("�}��", 2000, 850, null, true);}
�������Ļ�������˵���Ǹ����һ�����ʺϰɣ�

�������ܾ��ã����Ǻ�ʧ������ۡ�
���������ܶ�������˵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��", 1000, false);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����衿
<voice name="����" class="����" src="voice/ma02/014b0010a04">
�����������������ű��Ů�˵ı���
Ŷ����С�㡣��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/014b0020a03">
�����ˡ�ʵ�ڿɶ񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ���øжȣ���
//$Ichizyou_Flag = $Ichizyou_Flag++;
	$ma02_014b_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


..//������ָ��
//�Υե����롡"ma02_015.nss"


}


