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

scene md02_028.nss_MAIN
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
	#bg001_��c_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_029.nss";

}

scene md02_028.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_027.nss"


//���ݸ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg001_��c_03.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);


	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw�衩��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//	SetFwC("cg/fw/fw�衩��_ͨ��a.png");
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0280010a07">
��ʲô��Ҳû������������������������!!��

{	FwC("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0280020a14">
����ȷʵ��Ԥ�ϵ�������Ԥ�����ȫһ��
�������˾��Ȱ�������!!��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0280030a07">
���ܾ���û���ˡ�
������������Ҫ��������

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0280040a14">
������
�����������̫���ж�������ʧ�ܵ�ԭ�򡣡�

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0280050a07">
������˵����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500,1500);

}

..//������ָ��
//�Υե����롡"md02_029.nss"