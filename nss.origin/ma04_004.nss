//<continuation number="380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_004.nss_MAIN
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
	#voice_on_������霔�=true;

	$PreGameName = $GameName;

	$GameName = "ma04_005.nss";

}

scene ma04_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_003.nss"

//�񣰣�
//�����ӘS��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm34",0,1000,true);

	StL(1000, @0, @0,"cg/st/st�o��_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma04/0040010a05">
���������ǡ�
���к��£���ʨ�Ӻ𡣡�

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma04/0040020a06">
���ǡ�
�����գ����פ��������ϵ����������
�˱��桭����

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma04/0040030a06">
���������������֮���ɳ�����ʽ����
�š���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0040040a09">
������Ŷ��Ŷ����

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma04/0040050a08">
���鱨�Ŀ��Ŷ��أ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma04/0040060a06">
��������Ǳ���ں���ľ��ڣ�����������
���ֵ��顣
����˵��ȷ�����Ƶķ�������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma04/0040070a07">
������
��Ҳ����˵�������������ˣ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0040080a09">
����Ȼ��˽����������������⡣
��������֪ͨ�������Ѿ���һ����ʱ��
�˰ɡ���

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma04/0040090a05">
���⡭�����Ƕ�����������
��������ն�̫�����ˣ�����������ء�����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma04/0040100a05">
��������Ρ���
����Ȼ�Է��Ϲ����ᱲ����������ȷ�ˡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma04/0040110a08">
���ǣ����ס�
��<RUBY text="��������">��������</RUBY>�Ϳ����˰ɣ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma04/0040120a05">
���š�
������֮Ұ�޶�����ϡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0040130a09">
������һ���Ա���<RUBY text="����">����</RUBY>Ҳ��ٶۡ�
�������������Ǳ�ʳһ�ٰɣ������¡���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma04/0040140a07">
���������ǵĹ���Ͱ׷��ˡ�
����ο��ǻ��˲���Ǯ�ء���

{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma04/0040150a06">
������ӻ�Ԥ��ļһ�û�ʸ�˵���ֻ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma04/0040160a07">
�������ôɭ�ϵ��о�������Ķ���ȴ��
ֽ����һ�����϶���¶�ڰɡ��ҿ�������
�Լ����档
�������и�����ű���˸�������Ц����

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma04/0040170a08">
���ᵹҲ����������Щ�������ء�����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//�룺���������餤����090930��
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma04/0040180a05">
�����Ҳ�á����������֮�����ġ�
���������ڴ�ʱ��Ŀ��Ͷ��<RUBY text="��������">��ʤ��</RUBY>�����ӡ���
ʨ�Ӻ��Ǳ������Ρ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma04/0040190a06">
�����ڴ�����
��������������

{	#voice_on_������霔�=true;
	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/ma04/0040200b37">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������á�
//��������霔ȡ��̥�������˥ʥ��ȥ����`��
	StR(1000, @-30, @0,"cg/st/st��霔�_ͨ��_˽��.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw��霔�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/ma04/0040210b37">
�����ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0040220a09">
��Ŷ������������
����æ֮�л����������������˼����

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/ma04/0040230b37">
�����ɹػ���ʵ���ҵ���
���ź��н����ˡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma04/0040240a05">
����ô������ի��
���S���Ǻ��������

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/ma04/0040250b37">
��������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma04/0040260a05">
��������ǡ�����ֱ�ԡ���

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/ma04/0040270b37">
���ǡ���Ŀǰ����һ�о������ա�
�������µľ��ڵ��У����������Ҳ��˳��
��ת����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma04/0040280a05">
�����¹غ�Ļ����ҵ�����Ҵ�ҵ��
�������겻�Ṽ����֮�����ɣ���

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/ma04/0040290b37">
���������޲��н���ĳ�����
��������Ṽ��������������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma04/0040300a05">
��������á�
�����¡���

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/ma04/0040310b37">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á�
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	DeleteStR(300,true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0040320a09">
����ô���ƻ����е���Σ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma04/0040330a06">
���ɸԲ�֮�����ռ�����ʵս�������ڽ���
���յ�����
��һ����ɣ���Ԥ�����е�һ����������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/ma04/0040340a05">
���ӿ��ٶȡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/ma04/0040350a06">
���ǣ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/ma04/0040360a09">
��������Ҳ�����ޱ���
����֪���Ǻ�ʱ������ҷ���ȡ�ж���
������ô������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma04/0040370a08">
������ֻ��ָ���᷽��׼���Ľ�֮������
���ܹ�<RUBY text="��������">��������</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//�����΍u�h����������Ƭ������Ҋ����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg040_���΍uȫ��_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��λ�����������ϵĽ�֮���ڹض���������Ĳ����
���������ĵأ���ν����ʷ�ƾõĹ۹⾰�㡣
׷�ݻ�ȥ��������Ļ��֮ǰ���вΰݵ����Զ����������
�˽���ʱ��������ΰ�����һͬ��Ϊƽ�����еıص�֮����

�����㵽�˽������������صķ羰��������Ȼ����ϲ����
���Ž�ͨ��ʩ�ı���������Զ����ǰ���������������
�����޼���
�����а����ڶ�������ʿ��

�������˹�������ķѵ������ӣ�ѧϰԺԺ��ʱ��
����ľϣ��ȡ���Լʮ��ǰ����Ϊ�ĺ�̫���ε�ѳ
��ص㣬�����ڴ�;��ڹ�Ϊ��֪��
����Ȼȷ��˵���¼������ں����԰���

�������������ǲ�����Ϊ�ΰݵ���羰��ʤ����ӭ
���˻�������Ŀ�ĵ����ǡ�
�����紹�����ֻ������ϧֲ����С���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ƭ����ˮԡ��
	OnBG(100,"bg041_Ƭ������_01.jpg");
	FadeBG(1000,true);
	SoundPlay("@mbgm29",0,1000,true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma04/0040380a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������
����Ұ�г���ź���һɫ�ı�������ʵ�����������á�

���ȷ���ų�ˮ����ζ������Ƥ����
��ȫ���������ӿ���ĺ��飬������ʱ��ȴ����������
�����������ܡ�

�����ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


..//������ָ��
//�Υե����롡"ma04_005.nss"

}


