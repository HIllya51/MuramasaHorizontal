//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_013b.nss_MAIN
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
	$PreGameName = $GameName;

	$GameName = "ma02_014.nss";

}

scene ma02_013b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_013.nss"

//�񡸤��Ϥꤷ�ޤ���

	PrintBG("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw�դ�_�n��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/013b0010b05">
����ǿ!?��


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/013b0020a03">
��ѽ�š�
�������������Ǹ������ġ��ۡ���


{	FwC("cg/fw/fw�դ�_�n��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/013b0030b05">
����Ȼû��Ӧ!?
����λҲ��ǿ!!��

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

..//������ָ��
//�Υե����롡"ma02_014.nss"
