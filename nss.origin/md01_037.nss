//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_037.nss_MAIN
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
	#bg005_ɽ��_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_001.nss";

}

scene md01_037.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_036.nss"

//��Դ��ɽ����bg005��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg005_ɽ��_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	SoundPlay("@mbgm37",0,1000,true);

	StL(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw���L_�䅗.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����L��
<voice name="���L" class="���L" src="voice/md01/0370010a11">
���������Ǻš�����

//�����L��
<voice name="���L" class="���L" src="voice/md01/0370020a11">
�����ǡ����⡭������

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0370030a11">
�������Ǽһ������ġ���Ů���𡭡���

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md01/0370040a11">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ѩ`����
//�����åȥ���ݤ���
	ClearWaitAll(3000, 1000);

	PrintBG("�ϱ���", 10000);
	cut_in_logo(10010,3);

	ClearWaitAll(3000, 2000);

/*
//��������ݳ�����������
	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_���nͻ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}����", 1000, Center, Middle, "cg/sys/Telop/lg_����.jpg");
	CreateColorSP("�}ɫ�\��", 100, "#000000");
	Delete("�ϱ���");

	Wait(100);

	FadeDelete("�}ɫ��", 1000, true);

	WaitKey(2000);

	ClearWaitAll(3000, 3000);
*/

//������������������������������������������������

}

..//������ָ��
//�Υե����롡"md02_001.nss"