//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_022vs.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_023vs.nss";

}

scene mc03_022vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vsbba.nss"

//�񥯥ꥢ
//����ա����Ĥ��T������
//����ա�Ϧ�դ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 10000, "#000000");

	CreateSE("SE01","se���L_����_���Б��L��_L");
	MusicStart("SE01",2000,1000,0,900,null,true);

	CreateTextureSP("�}����110", 110, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg002_��a_02.jpg");

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\", 1000, true);

	WaitKey(1500);

	FadeDelete("�}����110", 1000, true);

	SoundPlay("@mbgm13",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���Է���Ȼ�������⺺��

�����������ߵ������ߡ��Է���������������̫ȱ����
���ˡ�
��ʼ�ն���<RUBY text="FullThrottle">ȫ������</RUBY>��

�����ֵ��͵�ȫ����̣���ȻҲ���������޷��������
����
�����ǣ��ҷ�ֻҪϰ�������ֹ��ƣ����ֻ�����׿���
�������ĵ���ͻ����

��<RUBY text="��">����</RUBY>�������֮��û���޴��ػ�Ӧ���˵��͹�����
�Ǳܿ������͵Ĺ��ƣ��᳹����ʱӦ�Ե�ս����
������ս�����þ��ܴ���Ч����


����ʹ���ı����������������˼�����ͷţ��ܿ�Ҳ��
�ľ���
�������ĲƲ���һ�����˷��ù⣬��һ������

{	SetVolume("SE*", 1000, 0, null);}
�����ǣ������<RUBY text="����">�Ʋ�</RUBY>������ǰ��
��
��ʤ���ѷ֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitPlay("SE*", null);


..//������ָ��
//�Υե����롡"mc03_023vs.nss"

}