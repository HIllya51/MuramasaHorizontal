//<continuation number="480">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_013.nss_MAIN
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
	#bg100_�����w_03=true;
	#bg098_ܥԽ����������_03=true;
	#bg027_���ӘS�u�h���g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_014.nss";

}

scene md04_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_012.nss"


//��ҹ
//�����ӘS

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg100_�����w_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm20", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����֮�����ֳ���ʱ���ڡ�
����פ������ĺʱ��ֹͣ�˹��������ص��������档

��ܥԽ���ڵ�Ļ������Ȼ�����׷���Ľ��飬������
����ֻ�ǳ���<RUBY text="��������">����ʿ��</RUBY>��Ŀ�ģ�ʵ����û����Ϊ�Ҿ�
��������׷����
����������ڵĲ������˳�����һ�ɡ�

��ֻ��˵����ʧ���ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg063_���ӘS��������_03.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	Wait(500);
	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130010a07">
��������
����ô�ˣ���磿��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0130020a00">
��ûʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ͻȻͣ�½Ų���
�����������ѯ���ҡ�

���ҵ�Ŀ�ⱻ������ҵ���Ⱥ��������

�����ڵ����ϵĸ����ߡ�
�������ǵȲ��������ͣ�ʧȥһ���ȵ�ʿ����ս�ѱ���
ǰ��ҽ������

�����ܰ�����<RUBY text="��������������">һ������������</RUBY>��
��������·�ߣ��Ѿ����ٶ��������塣�������������
û����ע�⵽��������ʵ��Ҷ���֪��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md04/0130030a00">
�����˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����˵������ӹ���ɵ���ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md04/0130040a00">
����ʬ����
���������ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0130050a00">
������Ŀ�������������ζ����
������Ϥ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0130060a00">
�������¡�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130070a07">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������¶����΢Ц��

��������Ůζʮ���΢Ц�����Ҷ��ߵ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130080a07">
�����ǣ���û�н�����
�����и����˻���ȥ����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130090a07">
��������ȥ����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130100a07">
���������<RUBY text="������">ȫ����</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0130110a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���u�h���g


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);
	OnBG(100, "bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");
	Wait(500);

//냇�ݵĤˤ����ˤϳ������������}�����ʤ���

	SetFwC("cg/fw/fwͯ��_��˼.png");

//�룺������ģ������090930��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130120a09">
��С�������ƺ��������ˡ�
���ղ����˼�������

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0130130a08">
���������𡣡�

//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0130140a08">
��ͯ�Ĵ��ˣ��ǳ���Ǹ��
����ΪС���Ĺ�������������Ǹ����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130150a09">
����ѽ��ѽ�����Ǹ����
��С�������޿��κΡ���Ϊ�׵�������������
��ս������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130160a07">
������פ��ռ���Ȼ��Ļ�С���ͻ�Ѹ�����䣬
��Щ���ǲ������֪������
�������׹������ء���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130170a09">
���ǰ��ǰ���
���׵����˲��ع��ġ����ڱ��뼯�о����Ը�
��ǰ�ĵ��ˡ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0130180a08">
�������š�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130190a07">
��ͯ�ĺ��У�ʨ�Ӻ��������𣿡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130200a09">
��û�С�
�����˵��źŸ����ڶ��������������ء���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130210a07">
�����𡭡�
�������ˡ�������Ӧ�ò����S������˰ɡ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130220a09">
���������졭��
���������ó����졣��

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130230a07">
������ʵ�ڹ�Ǻ����
��˫�������ϡ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0130240a08">
��ʨ�Ӻ��Ԯ�������ܸ�����
�������ֵ��������ܳ������𣿡�

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0130250a08">
�������������𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130260a07">
���š���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0130270a08">
���ǰ�������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130280a09">
���󴬿ڵ�С��������ڵ�ܥԽ���������ڵ�
�����ô������

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0130290a08">
������ô�ֹۡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130300a07">
������Ҳ�ǡ�
������һ�챻����仨��ˮ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130310a07">
���ܵ�һ����Ԥ������
����Ȼ����ͳŲ�ס�ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130320a09">
��ƶɮ�����ˡ�
����ͷƶɮ�ᰲ�ŵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܩ`�󡣱�����
	OnSE("se���L_�Ɖ�_���k02", 1000);

	CreatePlainEX("�}��д", 15000);
	Fade("�}��д", 0, 1000, null, true);

	Shake("�}��д", 1000, 0, 3, 0, 0, 1000, DxlAuto, true);

	Delete("�}��д");

	Wait(300);

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130330a07">
����������
��½����Ȼ�����ˣ����к�ը�����Ӵ���
ը��ͨ��������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130340a09">
������ڵ�Ϲ����Ҷ�ը�������ų����Ķ�
��ȥ�ܻ����ʲô�ġ�
�����ܲ��ڴ���ʲôֱ�ӵ�ս�������Ƿ���
������Ϣ��������㹻�ˡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130350a07">
�����鷳��
����΢�ŵ�ˮ������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0130360a08">
��������ȥ������˵˵����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130370a07">
��������ȥ�󰡡�
�����������ͬ��Ļ������Ǵ�һ��ʼ
�Ͳ���������ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130380a09">
���Ǻǡ���˵�ö�˵�öԡ�
��ƶɮ�и����õļƲ����������ת����λԸ��
�����𣿡�

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0130390a08">
����ʲô����

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130400a09">
��ûʲô���ˡ�
��ֻ�ǲ���򲻻��ֶ��ѡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130410a07">
��������������á�
�����ǣ���˭ȥ����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130420a07">
��ܥԽ����û��ô����ԣ��
��Ԥ�����𣿡�

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130430a09">
��������
��Ԥ���ӱ�������ʹ�á���

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130440a09">
���и��Ӻ��ʵ���ѡ����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0130450a07">
������Ŷ���ǰ���
�����С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0130460a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StL(1000, @0, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	FadeStL(500, true);
	Wait(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������迴���������ҡ��������������ķ���
����Ҳ����Ԥ�а�أ�ͬʱ������Ͷ���Ǵ���

�������������޷硣
�������˲�֪��ʱ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0130470a09">
���ܽ������𣬳���ի����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0130480b37">
����Ȼ���ԡ�
���¹����϶�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����
//�����ä�ȥ��
	SetBlur("@StL*", true, 1, 50, 50, false);
	Move("@StL*", 200, @-50, @0, Axl2, false);
	DeleteStL(200, false);


	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_014.nss"