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

scene mb02_007.nss_MAIN
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
	#bg033_���ӘS�����h_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_008.nss";

}

scene mb02_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_006.nss"

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg033_���ӘS�����h_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����н�һ���ͳ����������������ᡣ

������ļƻ��Ƿ�ͷ�ڳ���Ѳ�ӡ�
����������ڸ����ŵ����塣

������Ľ�������������䲻�ߣ�ȴ��Ҫ��ͷ�����
��������ְ��Ա�ճ����������֮һ��
��Ҳ����˵�������Ĵ��߶���Ҳ�����������ɡ�

������Ůʿ�Ѿ������Ǳ�֤���ˣ����㱻Ѳ�߱����ʣ�
ֻҪ�ó�ǡ�����ļ��ټ���˵����û���ˡ�
�������������ռ��鱨��������˵����û�б������
�������ˡ�

���鱨����û���鱨����������Ҫ�Ĳ����Ѿ�ת���
���ֵ��鱨����������ʵ���鱨��
���������ƶ��ж��ƻ����Ǹ���ʵʩ����������֪һЩ
���ڵ������һ�ж��޴�̸��

��˵�������Һ�һ�����������Ҫʹ����ͯ�Ĵ��һ����
��������������λ��ɮ��������Ŷ�����ƺ��ȳ˶�ľ��
��ɴ����ѡ�
���޷����������

������̫��ʱ���վ������²ߡ�
������һ������һ������˿��δ�䣬�������²�����Σ��
����Ϣ��

����������Ҳ��������ڹ����Ľ��Ÿж���������
��������һ�ֲ��ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0070010b20">
����λС��ٰ�����Ǳ���������
Ҫ��һЩ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0070020a00">
��Ҳ��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������;�����������������
����������Ůʿ�˼������̾�˿�����
��������ͷ��Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0070030b20">
��Ϊ�˲������������ɣ������ȴ���һ�°ɡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0070040a00">
�������ˡ�
����Ҳ��΢˼��һ�°ɡ����������з���
��������֮��ĵ����𣿡�


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0070050b20">
�������г�������ǳ�ǽ���̷�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������ǳ�ǽ��ͽ��ȥ��˵�е�Զ����Ҳ����ʲô���¡�
���Ը������˳·ȥ������
���ҵ��ͷ��ת���˻��⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb02/0070060a00">
����������Բ���ǧ���ˡ���


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0070070b20">
����������
����λС�㰡����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0070080a00">
����λС��˵��ס�ھ����ң���˵ʵ�ڻ���
�����ھ���������������������


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0070090b20">
��˵ʵ���������鷳����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������Ϊ�������Լ����Ҫ˵ʵ�ڻ���Ե����
����λ������ֱ̽�Բ��䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0070100b20">
��������Ҳ����ʲô���á�
�������������������п��ܱ�ɼ��Ϸ�Ļ����
��ͷĿ������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0070110a00">
��ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��Ψһ���Գ�Ϊ���������޵�֮�ˡ����Բ����ٵ�Ů����
����Ϊ���а��ض������޲���֮�˵�������ͳ˧�ߣ�
�����Ǹ����ѵ��˲š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb02/0070120a00">
��С����Χ�����Ƶļ����𣿡�


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0070130b20">
���ںS���ƺ��Ѿ������ˡ�
����˽���ת�Ƶ��ر���Ϊ��̵������֡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����Ա��͹�������
����ȷ������������Ҫ�õ�ӣ��С�㣬Ҳ�����ڶ�������
���ְɡ���<k>���������¶����������ʡ�

���Ͼ����������һ���������޵����˳ɹ������ˡ�
�����ܶ��Ծ�û�������ˡ�

���������һ������λС���ĩ·�ͺ������ˡ�

��������һ�̡������ڶ��ֻ�̼����ġ��ȸ�һ��
�������꣬���Բ�������ֽ��������ǵ���ʱ��
����žͻᡪ�����С���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0070140b20">
������������������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0070150a00">
����δ�д˴��㡣��


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0070160b20">
����<RUBY text="����">����</RUBY>��˵��Ҳ�ǿ�����ЩΣ�յ����ӡ�
������˾���������λС��֮ʱ��
��������������
��ؿɱ����������õķ��硣��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0070170a00">
�����������ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�������������Ҹ棬��ʵ�Ƕ��š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_008.nss"