
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_018vsa.nss_MAIN
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

	Cockpit_AllFade0();

	$GameName = "mc01_019vs.nss";

}

scene mc01_018vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_018vs.nss"

//��ǰ�������u���Ϥˤ����ʤ���Ҋ�ФäƤ������
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateWindow("�}����", 19000, 0, 0, 1024, 288, false);
	SetAlias("�}����","�}����");
	CreateColorSP("�}����/�}��ɫ", 19010, "#CC0000");
	CreateTextureSPmul("�}����/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	CreateTextureSP("�}����/�}�����}װ��", 19100, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	Move("�}����/�}�����}װ��", 0, @308, @-80, null, true);

	CreateWindow("�}����", 19000, 0, 288, 1024, 288, false);
	SetAlias("�}����","�}����");
	CreateColorSP("�}����/�}��ɫ", 19010, "#336600");
	CreateTextureSPmul("�}����/�}�ݱ���", 19020, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");

	CreateTextureSP("�}����/�}�����}װ��", 19100, Center, Middle, "cg/st/3d���å������`_�T��_���La.png");
	Move("�}����/�}�����}װ��", 0, @-390, @200, null, true);

	Request("�}��*", Smoothing);

	Move("�}����/�}�����}װ��", 0, @-60, @0, Dxl2, false);
	Move("�}����/�}�����}װ��", 0, @60, @0, Dxl2, false);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����Ȼ�⵽��������������Ϯ��Ҳ��û����������
Ŀ����ע�⵽��һ�㣺�����ƺ��޷����ϲࡪ��Ҳ��
���Լ��ı��淽�򹥻���
���ܵ��������ڵ��˵��²ࡢ����֮ʱ��

��һ��������ȱ�㣬�����صļ���Ҳûʲô���µġ�
����̫��������ʤ�൱���ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"mc01_019vs.nss"