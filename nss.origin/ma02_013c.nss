//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_013c.nss_MAIN
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
	$Sayo_Flag++;


	$PreGameName = $GameName;

	$GameName = "ma02_014.nss";

}

scene ma02_013c.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_013.nss"

//�񡸤Ф����ʤ顭����

	PrintBG("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw����_�դ�.png");
	SetComic(@0,@0,13);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
//�����衿
<voice name="����" class="����" src="voice/ma02/013c0010a04">
�������ۡ���


{	DeleteComic();
	FwC("cg/fw/fw����֦_����å�.png");
	SetComic(@0,@0,8);}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/013c0020a03">
����!?
�����ţ�������ô���£���


{	DeleteComic();
	FwC("cg/fw/fw����_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/013c0030a04">
����С�㡭��
����֮���밮֮����
����·�������������أ���


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/013c0040a03">
���š��ţ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/013c0050a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ֻ����Ϊ���߸������곤�ߣ�
����ֱ�ӽ������֣�Ҳ���������Ĳ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/013c0060a03">
���������˺ýƻ�����ôֻ���������Ŵ���
����Ҳ����Ҫ���㾰�����ˣ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/013c0070a04">
���ǺǺǡ�
����С�㣬
����������ֻ�ܼ�Ȯ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���ե饰��
//$Sayo_Flag = $Sayo_Flag++;


}

..//������ָ��
//�Υե����롡"ma02_014.nss"

