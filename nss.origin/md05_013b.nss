//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_013b.nss_MAIN
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
	#bg108_�Ĥ�񤦺�b_00=true;
	#bg108_�Ĥ�񤦺�a_00=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md05_013b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_013.nss"


//���Ϥ˽����
//�����¡�������

	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg108_�Ĥ�񤦺�b_00.jpg");
	FadeBG(0, true);
	CreateSE("���L", "se��Ȼ_�L_���L");
	MusicStart("���L", 0, 1000, 0, 1000, null,true);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md05/013b0010a01">
������д��������֡�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/013b0020a00">
�����Ǵ�������

//������ɥ쥢��������
{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md05/013b0030a00">
���������Σģңţ������ǣ��ɣ̡�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������ֵ�˲�䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g�֤�
	SetVolume("���L", 500, 0, null);
	Wait(500);

	CreateTextureSP("��", 90, @0, @0, "cg/bg/bg108_�Ĥ�񤦺�a_00.jpg");


//	OnBG(90, "bg108_�Ĥ�񤦺�a_00.jpg");
//	FadeBG(0, true);

	CreatePlainEX("�}��д", 100);

	OnSE("se����_������_���g����",1000);

	Fade("�}��д", 200, 900, null, true);
	Zoom("�}��д", 1000, 1300, 1300, null, false);


//	DrawEffect("�}��д", 36000, "MiddleWave", 30, 30, null);

//������
	EffectZoom(17000, 1000, 0, "cg/bg/bg108_�Ĥ�񤦺�b_00.jpg", false);

	Delete("@OnBG*");
	FadeDelete("�}��д",1000,true);


	Wait(1000);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md05/013b0040a01">
������������?!��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/013b0050a00">
����ʧ��?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����ʧ�ˡ�
�����Ѿ����ں�����ʧ���١�

��һ˲�䱻������������
��������ʹ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md05/013b0060a00">
��������֪��������ʲô�𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/013b0070a01">
������������

//��������
<voice name="����" class="��������" src="voice/md05/013b0080a01">
���ղš���
�������������ʱ��Ť������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/013b0090a00">
������ʲô������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/013b0100a01">
�����Ҵ�����
��<RUBY text="��������">��������</RUBY>���������ˡ���

//��������
<voice name="����" class="��������" src="voice/md05/013b0110a01">
�����ԣ������Ѿ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������������������

����֪���θ��롣

��Ӧ�ú���Լ��Ĳ�����
��Ӧ�õ��Ǵ������еĴ�Ա��;�����

��������Ρ�
����ʧ�˻ص�ԭ�����������ң�˼�����յ�ʱ��
Ӧ�о��С���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\2", 15000, "BLACK");

	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);

//	Fade("�\2", 3000, 1000, null, true);

	ClearWaitAll(3000, 1500);

/*
//�����`�४�`�Щ`


	CreateTextureEX("�}����100", 18000, Center, Middle, "cg/ev/ev009_���`�४�`�Щ`.jpg");
	Fade("�}����100", 1000, 1000, null, true);

//	WaitKey();

	ClearWaitAll(1500, 1500);
*/
}

..//������ָ��
//�Υե�����