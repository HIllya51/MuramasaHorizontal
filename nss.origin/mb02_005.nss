//<continuation number="230">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_005.nss_MAIN
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
	#bg062_���ӘS�Ǵ��ֵ�_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_006.nss";

}

scene mb02_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mb02_004.nss"


//���\
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg062_���ӘS�Ǵ��ֵ�_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����������·����������·��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ǡ��ݷ�أ�
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm30",0,1000,true);

	StL(1000, @0, @0,"cg/st/st�@��_ͨ��_˽��a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw�@��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050010b28">
��ʮ�ָ�л����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0050020a00">
����������û����æ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������լۡ��ǰ��
��С���ͷ��л������Ҳ������

��δ��ǫѷ��̬�ȣ������Լ������ö��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050030b28">
���Ǹ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0050040a00">
���ǡ���


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050050b28">
�����������������ҡ�
���벻Ҫ���������ܳ������ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����������д���������֮�⡣

���Բ�ӣ���Ƿ���Ļ����������������ӡ��˥������
���塣
������Ϊ������Ч���Ĺ�����˵���ӽ�����û��ʲô��
����ͼ��

���Ա������Ψ���Ǵӵ�С������������˵Ҳһ����
������������ȴ���˵�ͷ�������Ե�һ��һ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb02/0050060a00">
����ʤ�̿֡�
�����ɺ��⣬������Ȼ���ܡ���


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050070b28">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����Ȼ��ʲô��û˵��
���������������Ԯ��Ů����ȥʱ����ʩ֬�۵Ĵ���
�ƺ�����һ˿Ц�⡣

{	DeleteStL(300,false);}
�����������ů��ס����ȥ��
��
��������ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

	StL(1000, @0, @0,"cg/st/st�@��_ͨ��_˽��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0050080a02">
�������Ǹ�����


{	FadeStL(300,false);
	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050090b28">
����ô�ˣ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0050100a02">
���㡭������ô��ģ���


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050110b28">
����������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0050120a02">
�����ڵĴ�������
���Լ������ޡ�����


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0050130a02">
�����б����Ϸ���֮����ȥ�ĸ��ס�����


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0050140a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ˡ�
��û����ֹ��һͻ��״����

���˾�̫�����񡪡��������Ǳ���Ϊ�����������޵�
��������ߵĳ�Ū�Ļ���������á�
������

��һ���������θ��顣
����˭����һĿ��Ȼ����λ��Ů������ʤ���Ծ�˵����
�����ġ�������վ�ڸԲ�ǧ��һ�����ڳ����ʡ�

��������Ļ������Ӧ��֮�¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050150b28">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ʼ���ӣ�ӣ���Ȼ���ῴ����������ζ����������
�������Ի�֮ɫ��
����Ҳû��˵�����ȵĻ���û�취����Ӳ��ͷƤ������
̬��չ�ɡ�

��һ������Ӧ��Ҳ�����Լ�˵�˲���˵�Ļ���һֱ����
���ߡ�
��������Ѿ�������ӣ�Ӷ����⸱ģ����������⣬
�ֻ�ó�ʲô���ۡ�

�������ٴο�������ʱ������֮�к��޸���ɫ�ʡ�
�������ǿ��顣�����̺��ż������ζ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm32",2000,1000,true);

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050160b28">
�����ǰ��ߡ�
������֮�⣬���޻���˵����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0050170a02">
��������


{	FwC("cg/fw/fw�@��_ŭ��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050180b28">
����Ȼս���˾͸ó�Ĭ��������ʤ�ߣ��������
���򡭡�
�������۱�����սǰΪ֮���ܺ�Ʊ�Ӧ������Ϊ
�޳ܡ���

//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050190b28">
���Ҳ���˵��ʲô������˵��
Ϊ����Բ�֮����
�������Ƕ��������ޡ������Ǹ��ס���

//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0050200b28">
�����ܸ��ס���
������뷨������ս�ˡ�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0050210a00">
������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0050220a02">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0050230a02">
�������Բ��𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_006.nss"