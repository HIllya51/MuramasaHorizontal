//<continuation number="1040">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_014.nss_MAIN
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
	#bg057_���ӘS������_01=true;
	#bg089_���ӘS���ڸ߼�ʿ����ʳ��_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_015.nss";

}

scene md03_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_013.nss"


//�����¡���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg057_���ӘS������_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������ϣ����˳�����
�����컹�б��������ļ���

���첽���칫����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140010a06">
���ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ�

	StL(1000, @0, @0, "cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStL(500, true);

	Wait(300);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md03/0140020a00">
�������н����¡�
���������������������𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140030a06">
���������ǡ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140040a06">
����Թ������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140050a00">
��������û����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140060a06">
���Ǿ�һ��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʿ��ʳ�á�bg089a

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStL(0,true);
	OnBG(100, "bg089_���ӘS���ڸ߼�ʿ����ʳ��_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����S�����������н�ͬ���Է�����
���������Ҳ����ʲô���˵��£�û���κ�ͬϯ�ߣ�
�ص����ڳ��ڵ�ʿ����ʳ�á�

��Ϊ�˼Ȳ���ĮҲ���ñ������ң�
�����ʨ�Ӻ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md03/0140070a00">
����������Ҫ���̻غS���𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140080a06">
���š�
��������������

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140090a06">
��������ڲ�ץ�����þ����Ĺ��������𷴿�
֮�ĵĻ���һ��Ŭ�����ữ����Ӱ��
�����һ�Ҫ�����פ���Ŀ�ս���˽���׼������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140100a00">
����������˷�æ֮������ҪΪ�¹ٳ��ʱ
�䣬�¹ٵĸм�֮�������Ա���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��ע���������Ե÷�̣���С��Ӧ��

�����Ŀ�ս׼�����Ӧ����Ϊ���������������
Ϊ��ʹһ����<RUBY text="������">���ǵ�</RUBY>Ŀ�귢չ��

��������ô���Ҳ�֪���������Ǳ仯�϶������������
�������档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140110a06">
����ֻ������Ը������ѡ�
�������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
������ʨ�Ӻ��н�����ض���һ�仰��
�����ǣ�������ȴ�о�������������Ӷ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140120a06">
��˵���ף������������µġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140130a00">
���ǡ�
������ʲô�£���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140140a06">
��һ�仰���ꡣ��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140150a00">
���ǡ�����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140160a06">
�����ҿ��ż�ɽ��˵�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����¿��ӣ��òͽ��ò���ǡ���
���н����������ض����ҵ�����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw�{�Ӻ�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140170a06">
�����˲���衣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܥå��������ƥ�������
	WaitKey(800);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md03/0140180a00">
��������

{	SoundPlay("@mbgm35", 0, 1000, true);
	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140190a00">
�����¡�������

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140200a06">
�������������𡪡��ɱ����˵�������׵Ļ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140210a00">
�������������Ҿ��޷���ô˵�ˡ���
���������ŵĻ���Ȼû����ȴ�Ǻ����أ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140220a06">
���ߡ�
��������ô�롭����

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140230a06">
���������Ŀ����Ǽһ���Դ���
���������ƺ󡣡�

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140240a00">
��������Ц�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����ɲ���һЦ��֮��
��������ʳ�ã����Ƿ��䡪����ǽ�ж�Ҳδ��֪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140250a06">
���ӽ�������¿�����������ʤ�ι���һְ��
��������������֮Ҳûʲô���⡣��

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140260a06">
����Ҳ�������Ƶ��¡����������Ҳ��ɱ����
�������˲Ŷ�������ĵ�λ��
������������ͬ�����£����Ҳû��˵�����ġ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140270a00">
���������¡�
��������Ц�е�����ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140280a06">
���ߡ�������
���Ǿ����ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140290a06">
����ô�һ���˵���ɡ�
������˵�ġ��������������������衣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140300a00">
����������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140310a06">
������������������¡�
���һ�����ġ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140320a00">
������������

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140330a06">
������һ���š�
����Ȼ���������ϴ���֮�󡣡�

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140340a06">
����ô����
����Ϊ���ˣ������Լ��ľ��ӳ۳ҽ�����˵��
������Ը�ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140350a00">
���⡭���޷��񶨡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��Сʱ����Ҳ���������Ϊ�������ˡ�
���������˶��������һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md03/0140360a00">
�����ǵ�������������Ҳ��ò������Լ�����
����
���¹����ϲ��ǵ�������ָ�ӹ�֮�ġ���

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140370a06">
��ǫ����ȿɲ����㰡����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140380a00">
�����Ƿ������ĵ��������ۡ���

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140390a06">
������Ϲ����
����Ȼ���ǡ���������ز��˽��Լ�����

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140400a06">
������Ȥ��
���ն�����������ʧ���𣿡�

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140410a00">
�����ź���
�����ǲ��ܻ�Ӧ������µ��ڴ���
�ղ����Ĺ�����Ҳֻ�ܵ���û��������

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140420a06">
�������С�
���������Ƥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������ʨ�Ӻ�����ǡ�
��������졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140430a06">
�����������ô���𣿡�

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140440a00">
�������о����������֪��֮������

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140450a06">
��˵ʲôΥ�Ļ��ء�
����ֱ���������������

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140460a00">
���Ҳ������⡭����

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140470a06">
������һ�һֱ�ں�Ū�˰���
���ߣ��ɺޣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140480a06">
���Ҹ�������Ǹ�����С���ӱ�
Ӧ�ò���̫��ġ���
�����㿴���в���𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140490a00">
���������޴��¡���

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140500a06">
���ǵ���Ϊʲô��
����ִ���ڲ����������ǣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140510a00">
������������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140520a06">
������˵���ء���
������һ��ʲô�ġ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140530a06">
������ʲôԵ�������޷��뿪������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140540a00">
���������������ɽ��͡���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140550a06">
�����˵���������Ǹ�Ե���أ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140560a00">
��������¡���
�����¹ٿ�������������λ��Ȩ�ص��˶�һ��
С�����ִ�ţ���ʵ����˼�顣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140570a00">
���¹ٿ��Զ����������뷨
����̽Ѱ�𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140580a06">
����ô������ת�ƻ�����
���ߡ������ˣ�����ͷŹ��㡣��

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140590a06">
����׷�����ñ��Ĵ�ɰ�����

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140600a00">
��������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140610a06">
������������Ϊ�ҿ�����Ĳ��ܡ����ǡ���
��Ҳ����û�б�����ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140620a00">
����ʲô���ɣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140630a06">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140640a00">
����������

{	SoundPlay("@mbgm26",0,1000,true);
	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140650a06">
��һ�����㣬���ܻ������ҵܵܡ�
������֡����������Ǽһﳤʲôģ��
�����ǵ��ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140660a00">
�����еܵܣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���Ҵ�û��˵������¡�
������ʨ�Ӻ�ԭ���Ͳ��Ǵ���ҵ��ˣ�������������
���ӡ���<k>��������Ҳ�����ڱ�����֮ǰ���ڱ����еܵ�
��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_�h��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140670a06">
��Сʱ�������ˡ����������Ķ���Щʲô����
���������Ƿ񻹻����Ҷ��������
����������ţ����Ӧ�ú����ࡣ��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140680a00">
��������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140690a06">
�����˶��ѡ�
���ߣ��Ҿ�Ȼ��ҡ�ˡ�������������
������������ǡ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140700a06">
�����ǣ�ֻ���㡭��Ī�������˾��û����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140710a00">
�����¡�����

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140720a06">
���ߡ����ġ����޴���
��������ȥ�������֢�����������ġ���
����������Ҳû����ʱ���ˡ��������

{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140730a06">
�����������뽫�������ߣ�������ͬ������
�ܵ�һ�����һ��ս���ĸо���
�����ġ������ģ���

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140740a06">
������ʧ̬����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140750a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����������컨���Գ��Ĵ����н�����һʱ
�����Զԡ�
��ֻ�бڹҵ��ӱ��ڵδ����졣

����֪��ʱ��ʳ�õ��˽����߹��ˡ�
�����ս��䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md03/0140760a00">
���������������ĸ����ӣ���ͬ�������ޡ�
���������¹ٶ����ڲ�����ս����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140770a00">
��������������¹�˵������
���ʵĻ�����

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140780a06">
���ߡ�
�����컬�࡭����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140790a06">
����ս�������ɿɲ��Ƕ������޵�����ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140800a00">
����������
������Դ������Ϊ�ҳ��ĵ䷶�Ļ���
ԭ����ˣ����޻���˵����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140810a00">
������ȷʵ����������������֡���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140820a06">
��Ŷ��
������ô��Ϊ�𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140830a00">
�������𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140840a06">
��û�в��ԡ�
����Ȼû�в��ԡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140850a00">
����������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140860a06">
�����塣
�����塣��

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140870a06">
����˵���׻���˽�ġ�
��ֻ���������Լ��������°��ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140880a06">
���������������ߣ�һ����
����������������ʲô��ͼ��
�Ҷ�û�ʸ����㡣��

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140890a06">
������˽�ġ�
������˽��˽������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140900a00">
��������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140910a06">
������һ��ֵ������������֮���ɡ�
�������кö������ô���Ǳ�������ʥ�ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140920a06">
�����Ǽ��ˣ�����ֿ�ѡ�
�����ڵ�����Ȼ���߶�û�С����������й��ҡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140930a06">
����ֻ�������������ҡ�
��Ϊ���䱣�����ף���Ը���������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140940a00">
������������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140950a06">
����Ҳ�еİɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140960a00">
�������ǡ����¡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140970a00">
�����С���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0140980a06">
����ô������ͬ�ࡣ
�����㲻��ͬ��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0140990a00">
������������

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0141000a06">
�������ߡ����ġ�
��˵�˺ܲ����ҵĻ�������

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0141010a06">
�������ǵģ����ġ��޴�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0141020a00">
�����¡�����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0141030a06">
��ռ�����ʱ���ˡ�
���Ҹ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������Ϥ��ä�ȥ��{�Ӻ�

	OnSE("se�ճ�_��_�����Q��02", 1000);

	StL(1000, @0, @50, "cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @0, @-50, Dxl2, false);
	FadeStL(300, true);
	
	WaitKey(400);
	DeleteStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������������Ŀյ���û�С�
�������н���������Ȼ����Ұ����ʧ���߳���ʳ�á�

���ұ�����ԭ�أ���Ȼ��������ǰ�Ŀ�ϯ��

����������˽�ġ�

��ֵ������������֮�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md03/0141040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md03_015.nss"