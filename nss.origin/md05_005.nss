//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_005.nss_MAIN
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
	#bg066_���ӘS���ڤΤɤ�_03=true;
	#ev926_Ұ̫��ȫ��=true;
	#ev237_�դ˕N�ä�����_c=true;
	#bg106_��ʿɽ�h��a_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_006.nss";

}

scene md05_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_004end.nss"


//�񥯥ꥢ
//��Ԫ�Έ���


	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("��", 15000, "WHITE");

	OnBG(100, "bg066_���ӘS���ڤΤɤ�_03.jpg");
	FadeBG(0, true);
	OnSE("se����_�z_װ��03", 1000);

	StR(1000, @0, @250, "cg/st/3d����֩��_���.png");
	FadeStR(0, true);


	Delete("�ϱ���");
	FadeDelete("��", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md05/0050010a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0050020a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm19", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������ˡ�
��
������ԭ�����ʼ���ǵ������
˿��δ���ɡ�

����֮��ƽ�����¡�
���ұ���ס�����ң�����װ�׵İ���ɫ
Ҳ������ȥ��

��Ȼ�󡭡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md05/0050030a01">
���������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0050040a00">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ұ̫�������ڣ�
//���F�g�λ��ؤ�Ԫ�˥ǥ������ؤ��мy���Y���Фꡣ

	CreateTextureEX("�Τ���", 4000, @0, @0, "cg/ev/ev926_Ұ̫��ȫ��.jpg");
	Fade("�Τ���", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������һ�Ѿ޴��̫����

����Ұ̫����
����ʧ�Ѿõģ�������Ұ̫����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�Τ���",1000,true);

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md05/0050050a00">
�����ڻص����������ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0050060a01">
���ţ���

//��������
<voice name="����" class="��������" src="voice/md05/0050070a01">
�����������ǣ�������Щ��֡�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0050080a00">
����֣���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0050090a01">
���������֮ǰ����Щ��ͬ�ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���������һ˵��Ҳ������״�ƺ��ı��˵ĸо���
������һ���ܹ���ȷ��֪���Ĳ��졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md05/0050100a01">
����ʲô�أ�
������Ϊ�������Ǻŵ�������Ե���𡭡�����

//��������
<voice name="����" class="��������" src="voice/md05/0050110a01">
�������ǳ���֮�������ʲô������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0050120a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0050130a00">
�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������Ұ̫����
�������������εĵ��������ߡ�

�����ص�����״�ĵ�����·��
��֪Ϊ������������ĳ�˵���ò��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md05/0050140a00">
���ⲻ�����廯�˰ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0050150a01">
���Ǹ������š�
��������˵���෴����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0050160a00">
���Ǿͺá�
������ڵ����ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0050170a01">
��������Ȼ��������˵�ˡ�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0050180a00">
���Ȳ�˵�Ǹ������������������ɡ�
����Ϊ��Ҳ����ת�����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0050190a01">
�����֡�����
�������к��뷨����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md05/0050200a00">
���š�
������������ν�Ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��һ������������ӿ�֡�
����������Ȼ��Ȼ����¶���ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md05/0050210a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 2000, 0, null);
	ClearWaitAll(2000, 2000);


//���i���塢�Ӥ�������
//����ʿɽ�h����ҹ
//���ۥ磻�ȥ�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 16000, "#000000");
	Delete("�ϱ���");

	CreateSE("������", "se����_������_�u������");
	MusicStart("������", 0, 1000, 0, 1000, null,true);


	CreateTextureEX("�i����", 15000, @0, @0, "cg/ev/ev237_�դ˕N�ä�����_c.jpg");
	Fade("�i����", 0, 1000, null, true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	WaitKey(1500);


	OnBG(100, "bg106_��ʿɽ�h��a_03.jpg");
	FadeBG(0, true);
	
	FadeDelete("�i����",1000,true);

	WaitKey(1500);

	OnSE("se���L_�Ɖ�_���k04", 1000);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",1000,1000,null,true);

	SetVolume("SE*", 3000, 0, null);
	SetVolume("������", 3000, 0, null);
	Wait(3000);

}

..//������ָ��
//�Υե����롡"md05_006.nss"