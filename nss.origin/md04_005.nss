//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_005.nss_MAIN
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
	#bg028_��亣ǣȣѻ���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_006.nss";

}

scene md04_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_004.nss"


//����亻���
//��������ܥå���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg028_��亣ǣȣѻ���_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);
	Wait(500);

	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0050010b03">
�������涼���ƻ�������ϡ�
���ֽ�û���κ���ʧ����

{	FwH("cg/fw/fw������`_Ц��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0050020b00">
���á�����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0050030b00">
��������ʱ�ֿ�ʼ������
��Ҫ��ǰ�߹ٱ�ǿ�����мɲ�Ҫ
��������������

//��������`��
<voice name="������`" class="������`" src="voice/md04/0050040b00">
����Ϊ�������ǰ����Ҳû�����塣��

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0050050b03">
�������ס���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 1000, 0, null);

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_006.nss"


/*
//�����ߣ����¡��Υ�����ץȤ��Ƅ�
</PRE>
	SetTextEXH();
	TypeBeginHIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��
������������������һһ��������
������������������������ʱ���߷�

*/
