//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_027.nss_MAIN
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
	#bg008_����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_028.nss";

}

scene md02_027.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"md02_026.nss"


//������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg008_����_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����硣
����Ȼ����תУ�����������Աߵ�λ�á�

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg008_����_01.jpg");

	CreateWindow("������ɥ���", 15000, 0, 100, 1024, 376, false);
	SetAlias("������ɥ���","������ɥ���");

	CreateTextureEX("������ɥ���/�}����100", 2000, 0, Middle, "cg/bg/resize/bg008_����_01.jpg");
	Zoom("������ɥ���/�}����100", 0, 1500, 1500, null, true);
	Move("������ɥ���/�}����100", 0, @-1300, @-50, null, true);
	SetShade("������ɥ���/�}����100", LIGHT);
	CreateTextureEX("������ɥ���/�}st100", 2000, Center, Middle, "cg/rec/stRec_����ʺ�.png");
	CreateTextureEX("������ɥ���/�}st200", 2000, Center, Middle, "cg/rec/stRec_�����ǰ.png");
	Move("������ɥ���/�}st100", 0, @+250, @+20, null, true);
	Move("������ɥ���/�}st200", 0, @+220, @+20, null, true);
	Zoom("������ɥ���/�}st100", 0, 1200, 1200, null, true);
	Request("������ɥ���/�}st100",Smoothing);

	Zoom("������ɥ���/�}st200", 0, 1200, 1200, null, true);
	Request("������ɥ���/�}st200",Smoothing);

	CreateColorEX("�}ɫ100", 1500, "Black");

	Fade("�}ɫ100",500,1000,null,false);
	Move("������ɥ���/�}����100", 2000, @-100, @0, null, false);
	Fade("������ɥ���/�}����100",500,1000,null,true);
	Wait(500);
	Move("������ɥ���/�}st100", 1000, @-30, @0, null, false);
	Fade("������ɥ���/�}st100",500,1000,null,true);

	Wait(500);

//��������
	SetNwH("cg/fw/ny�o�ڤ�ܞУ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���ͩ`��ãǡ��o�ڤ�ܞУ����
//������㣯�ҥ���ơ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0270010e016">
��������

{	FwH("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0270020a00">
��������

{	Fade("������ɥ���/�}st200", 300, 1000, Dxl1, false);
	Fade("������ɥ���/�}st100", 300, 0, Axl1, false);
	NwH("cg/fw/ny�o�ڤ�ܞУ��.png");}
//������㣯�ҥ���ơ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0270030e016">
������������

{	FwH("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0270040a00">
������������

{	NwH("cg/fw/ny�o�ڤ�ܞУ��.png");}
//������㣯�ҥ���ơ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0270050e016">
������������������������������������������

{	FwH("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0270060a00">
������������������������������������������

{	Fade("������ɥ���/�}st100", 300, 1000, Dxl1, false);
	Fade("������ɥ���/�}st200", 300, 0, Axl1, false);
	NwH("cg/fw/ny�o�ڤ�ܞУ��.png");}
//������㣯�ҥ���ơ�
<voice name="����㣯�ҥ����" class="������Ů��" src="voice/md02/0270070e016">
����������������������������������������
����������������������������������������
����������������������������������������
������������������������������������������

{	FwH("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0270080a00">
����������������������������������������
����������������������������������������
����������������������������������������
������������������������������������������

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500,1500);


}

..//������ָ��
//�Υե����롡"md02_028.nss"