//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_038.nss_MAIN
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
	#bg103_���ӘS������ٛg����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_039.nss";

}

scene md04_038.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md04_037.nss"


//���ٛg��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg103_���ӘS������ٛg����_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SetNwC("cg/fw/nw�a����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md04/0380010e247">
���������ˣ�
���з���ֵ������Ǹ����˵ġ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0380020a07">
��������������

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md04/0380030e247">
���ǡ�
������������죬���֮����
�ƾ�֮ӣʢ��ʱ����������ӳ�չ⡣��

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md04/0380040e247">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0380050a07">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0380060a07">
����֪���ˡ�
�����°ɡ���

{	NwC("cg/fw/nw�a����.png");}
//������㣯�a����
<voice name="����㣯�a��" class="����������" src="voice/md04/0380070e247">
���ǡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0380080a07">
��������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0380090a07">
����硭����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0380100a00">
���ղŵ��ǣ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0380110a07">
���������ᴫ������Ϣ��
�����ǽ���ʱ�õİ��š���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0380120a07">
�������ǿ�ũ�����ص��ǣȣѣ����¿�ʼ�ж�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0380130a00">
����������������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0380140a07">
������ͦ˳���ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0380150a00">
���š���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0380160a07">
�������ܡ����á�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0380170a07">
��<RUBY text="����">ʱ��</RUBY>Ҳ���ոպã���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_039.nss"