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

scene md03_027vs.nss_MAIN
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
	#bg056_���L�����Tǰ_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_028vs.nss";

}

scene md03_027vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md03_026vs.nss"


//���衩��ȴ���

	PrintBG("�ϱ���", 30000);
	OnBG(100, "bg056_���L�����Tǰ_03.jpg");
	FadeBG(0, true);
	CreateColorSP("�\Ļ��", 20000, "BLACK");
	Delete("�ϱ���");
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	SoundPlay("@mbgm09", 0, 1000, true);

	SetFwC("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md03/027vs0010a01">
������������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/027vs0020a07">
���㻹��ô����ԣ����
�����ڲ��Ƕ�������������

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/027vs0030a07">
����������ʲ!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������Ҳ�����ˡ�
���������������˰ɡ����Ȼʧ�

�����������ͯ�ӵĶ��š�
��ֻ����һ����֮ǰ��ͬ��

����ͬ���ǣ�����ͯ�Ӵ���<RUBY text="����">װ��</RUBY>��
��
��ԭ���������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @50, @0, "cg/st/st�衩��_ͨ��_�Ʒ�b.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw�衩��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/027vs0040a07">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������Ľ����Զ��׼���

��������Χ�����Żƽ��еľ޺�������Ȼ��ȫѹ����
һ����ȴ�뾰��������һ�����룬�޷���ʱ��ȥ��æ��
��Ҫ�л���ɢȥ��Χ��Ժ��ʿ��Ҳ��Ҫʱ�䡣

�����û��֧Ԯ�Ļ��������ߵ�ս��˲��ͻ������
�������뵥�������ࡣʤ���Զ��׼���

���������������Ļ���
��
�����������֮��ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩�衢�Ӥ�
//����������ֹ
	OnSE("se����_����_�᤺����01",1000);
	StL(1000, @-50, @0, "cg/st/st����_���L_˽��.png");
	Request("@StL*", Smoothing);
	Rotate("@StL*", 0, @0, @180, @0, null,true);

	Move("@StR*", 100, @-50, @0, DxlAuto, false);

	SetBlur("@StL*", true, 1, 500, 50, false);
	Move("@StL*", 300, @50, @0, DxlAuto, false);
	FadeStL(300, true);

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/027vs0050a07">
���㡪���ÿ���!!��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/027vs0060a01">
���Ҿܾ���
���ղ������෴ʱ��Ҳ�������˰ɡ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/027vs0070a07">
���㡢���⡭��
����˵��类ɱ����Ҳû�ô���!!��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/027vs0080a01">
������ͯ�Ӳ���ȡ��������
����������ˡ���֮���Ҹ���������ɡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/027vs0090a01">
���;�������ʤ�����һ��ú���ͯ�ӶԸ�
�㡣
���ڴ��ڼ��һ�ʹ�����ľ���ָ�ԭ״��Ҳ
���κ��ˡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/027vs0100a01">
���㱻�����ˣ������!!��

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/027vs0110a07">
���ٿ���Ц��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ

	OnSE("se����_����_�᤺����01",1000);
	DeleteStR(100, false);
	DeleteStL(100, true);
	WaitKey(100);

	OnSE("se���L_����_�z_���03", 1000);

	CreateColorSP("�\Ļ��", 20000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	SetVolume("SE*", 800, 0, Axl2);
	Wait(800);


}

..//������ָ��
//�Υե����롡"md03_028vs.nss"