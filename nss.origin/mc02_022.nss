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

scene mc02_022.nss_MAIN
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

	$GameName = "mc02_023.nss";

}

scene mc02_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_021.nss"


//�������β���
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����10", 11, Center, Middle, "cg/bg/bg030_�ǣȣѱO������_01.jpg");
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���緹��
����ͬ��ǰ�������ķ�����������׼ʱ�Ĺ涨ʱ��
����������ʿ�����ϵĲ͵������ѶϢ��

���ò͵��п���δ�ڴ�������Ϸ�����
ֽ��ţ�������������̷����������ڲ��
��ˮֽ��
������ȥˮ�֣�̯��ֽ�ţ������������֡�

���������������ˣ�������ɽ�˺��ĵ����ǣ�
�Ѿ��޷�ʧȥ�Է��ˡ�
���������ܹ�����������ǰһ�����������
����Ҳ����Ҫ�κ����ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc02/0220010a00">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0220020a00">
��������һ�ж��ռƻ����С�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����������ǵз�����ս��������ҷ���Ӧ�ԡ�
��
���������ڽ�����ת��Ϊ��ȷ�����ݣ�Ȼ���ֽ���棬
д�¡��������ס��İ��š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc02/0220030a00">
�����ոյ������Ҿ͵���û�����������ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ҽ�ֽ�Ż�ԭ����
��֮��ֻҪ�ȼ����ӣ���װ����ϲ��������ˡ�

�������á�
�����һ�а���Ԥ�����У���ô�����ġ�����ӡ�


��
�����������������������ߵ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	ClearFadeAll(0, true);
}

..//������ָ��
//�Υե����롡"mc02_023.nss"