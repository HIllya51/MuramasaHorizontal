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

scene md04_025.nss_MAIN
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
	#bg018_֪�̄���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_026vs.nss";

}

scene md04_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_024.nss"


//���`�}��Ϧ
//��˾�

//�ե�����ζ̤����ݳ���򿼑]���������}�ʤ� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg018_֪�̄���_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(500);
	SetFwH("cg/fw/fw������`_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������`��
<voice name="������`" class="������`" src="voice/md04/0250010b00">
������������

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0250020b03">
��������

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0250030b03">
���ص�ԭ���𣿣�

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0250040b03">
����Ȼ�����޼ƿ�ʩ��
���������Ƶı仯���Ʋ��ֹ۰�����

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0250050b03">
�����ԵĻ�����ϣ���������˽ᡭ����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1500);
}

..//������ָ��
//�Υե����롡"md04_026vs.nss"