//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_005.nss_MAIN
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

	$GameName = "mc03_006.nss";

}

scene mc03_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_004.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("��", 10000, "WHITE");

	OnBG(100,"bg068_���ӘS���ڲ���_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm18", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("��",1500,true);


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc03/0050010a00">
����ξ���¡�
�������������£��һ�����ŵġ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050020a03">
�������ᣬ���ţ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050030a00">
���ǡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050040a03">
������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050050a00">
���㲻������˺��޼�ֵ�ضԴ��Լ���������
���������һ��Ҫ���ء���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050060a03">
���������޼�ֵ������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050070a00">
���ǡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050080a03">
�������������ġ���
����û�м�ֵ���£���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050090a00">
��û�С���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050100a03">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050110a00">
�������ء���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050120a03">
����������෴�Ļ�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050130a00">
���ǡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050140a03">
����������෴���������˻����ȥ���أ�
������Ҽ��������𣿡�



{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050150a00">
�����ᡣ��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050160a03">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050170a00">
���һ�߾�ȫ��ȥ�ȴ�ξ���¡���



{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050180a03">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050190a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������֮������ᡣ

����ξ�����ϣ���������������������
���ҿ��������ҵ�����Ӧ��Ҳ����ͬ���ı��顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050200a03">
������������
�����᲻���߼��𣿡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050210a00">
����Ȼ������˵��������Ϊ��ȫ������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050220a03">
��������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050230a03">
��Ϊʲô������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050240a00">
����������֪���ģ����Ǹ��ɴ�ξ�������ֲ�
�����ˡ�
��������Ҿ��˴�ξ���£�������������ġ���



//��������
<voice name="����" class="����" src="voice/mc03/0050250a00">
�����ǣ��������򲻺�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050260a03">
�����ǡ�����


//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050270a03">
��������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050280a03">
�����ǡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050290a00">
���š���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050300a03">
���ҼȲ���ʥ�ˣ�Ҳ������ʹ����
���������ˡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050310a00">
����֪������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050320a03">
������Ϊ���ˣ���ȥ�˴�������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050330a00">
��ȷʵ�ǡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050340a03">
����ʹ�ھ���֮��ĵط���
����ɱ�˵����������Ҳ�Ⱦ������˸��ࡣ��



{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050350a00">
��Ҳ���ǵġ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050360a03">
�������������ң���Ⱦ������˸����𣿡�



{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050370a00">
���Ȳ��ܺ��벻��֮�֡�
����ξҲӦ�����������ص��ˡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050380a03">
���š���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050390a00">
������һ�죬Ҳ���⵽�����ı�Ӧ�ɡ�
�������������Ѿ������ľ�����������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050400a03">
��������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050410a00">
�����ǣ���ʹ��ˣ�Ҳ���Բ���ͦ����ҡ�
�����Բ�����



{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050420a03">
��Ϊʲô����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050430a00">
����ξ���¡���
������������ж���ڤ�������ǣ�����վ����
�����ǰ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050440a00">
�����ܹ�����ֱ�����ǵ����𡣡�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050450a03">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������֦�������µ����̻ش�
���ҵ��˵�ͷ��Ȼ������ʵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm32", 0, 1000, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc03/0050460a00">
����ɱ���������������𣿡�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050470a03">
��û�С���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050480a00">
��ɱ�������׵ĺ����𣿡�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050490a03">
������û�С�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050500a00">
��������вм��������޷���·���ˣ�ɱ����
�𣿡�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050510a03">
������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050520a00">
��û�аɡ�
�����ǡ���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0050530a00">
���ң�ȫ������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���Ұ�Ȼ��˵�˳�����
��˵���˴����ξ�ʹն�����֮�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc03/0050540a00">
�����ԡ���
�����������𡣴�ξ����

//��������
<voice name="����" class="����" src="voice/mc03/0050550a00">
������ȥӭ�������������������
�������������뱰��������Ӧ����������

//��������
<voice name="����" class="����" src="voice/mc03/0050560a00">
����󣬾��Բ���Ϊ���ң������Լ�������Σ
��֮�С�
������°�����һ��Ҫ��Ӧ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0050570a03">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc03_006.nss"