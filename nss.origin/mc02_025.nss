//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_025.nss_MAIN
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

	$GameName = "mc02_026.nss";

}

scene mc02_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_024.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 100, "BLACK");
	Delete("�ϱ���");
	SoundPlay("@mbgm34", 0, 1000, true);

//���w�д��x��_ʼ�äݤ��ӣ�
//��`�פ��d�դ������⤷��ʤ� inc�Ѿ�
	CreateSEEX("�w�д�", "se�\��_�w�д�_�x��_ʼ_L");
	MusicStart("�w�д�", 0, 500, 0, 600, null,true);

//���\����
//�����Υ��`�󡢥ܥ����o��

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���ܥ����o��
//�����衿
<voice name="����" class="����" src="voice/mc02/0250010a04">
���������ƺ��Ѿ�����ˡ���


//���ܥ����o��
{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0250020a03">
���ǰ���
���������͸þ�ʤ�ˡ�����


//���ܥ����o��
{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0250030a03">
����ս���ֻ���ʮ���ӡ�
�����ư˵����Ҿͻ��������


//���ܥ����o��
{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0250040a04">
���ǵġ�
��������ʤ�����ǡ����ܡ���


//���ܥ����o��
{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0250050a03">
��������ʤ�ǰܡ�
��������Ȼ��������ƺ���û��
̫��Ĳ�𡣡�


//���ܥ����o��
{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0250060a03">
���ѵ�һ����
����ȻҪս����Ҫ������


//���ܥ����o��
{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0250070a04">
��ִ�ţ�����
����λ��������˵����


//���ܥ����o��
{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0250080a03">
��û��ִ�š�
�����顢��Ȥ������ʵ�ʡ���


//���ܥ����o��
{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0250090a03">
��������
���������ִ�ţ��������ֶ���
����ʲô���壿��


//���ܥ����o��
{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0250100a04">
���š����϶�û�аɡ���


//���ܥ����o��
{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc2/0250110a03">
��������ô���°�����


//���ܥ����o��
{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0250120a04">
����������С�㡣��


//���ܥ����o��
{	SetFrequency("�w�д�", 10000, 1000, null);
	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0250130a03">
��ʲô�£���


//���ܥ����o��
{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0250140a04">
�����˱�������ƿ��Ǳ������������������⣬
��û��������������
��ֻ���ڶԷ��ı��ϻ���д������ͨ��
���Ҿ����൱���㰡����


//���ܥ����o��
{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0250150a03">
����������ϵķ�����ȽϺ��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�w�д�*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��
�����������������������ߵ���ʮ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	WaitPlay("�w�д�*", null);

	ClearFadeAll(0, true);
}

..//������ָ��
//�Υե����롡"mc02_026.nss"