//<continuation number="1070">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_003.nss_MAIN
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
	#bg066_���ӘS���ڤΤɤ�_01=true;
	#bg069_���ӘS���ڎ��g_01a=true;
	#bg027_���ӘS�u�h���g_01=true;
	#ev803_�����ޥåף�_a=true;
	#ev803_�����ޥåף�_b=true;
	#ev803_�����ޥåף�_c=true;
	#ev901_�y�Ǻ�����ʧ��С����_c=true;
	#ev124_���΍u���Շ�_c=true;
	#ev804_�����ޥåף�=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_004.nss";

}

scene md04_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md04_002.nss"

//�����ӘS

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

//��������ݳ���"md04_006.nss"�Εr�g���ޤ���ǰ��r���߷֤ʤΤ�ҹ�ˤ��ޤ�����
	OnBG(100, "bg066_���ӘS���ڤΤɤ�_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm19", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ҺͲ���������뿪���������˶Խ�����
�İ�Χ���������֡�
��С������Ӧ��Ҳ��ͨ�����·;���ظϡ�

��;������һ��������������ˡ�
���ƺ����ڵ����ǻ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//������
//����霔�


	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg069_���ӘS���ڎ��g_01a.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


	StR(1000, @0, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw��霔�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0030010b37">
���������Ͼ����ֶ�����ڴ�������Ϣ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030020a00">
������������

{	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�b.png");
	FadeStL(300, false);
	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030030a07">
��������������
���ɶ������鷳�ˣ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030040a07">
��������˭�ڵ��һ����ǵ��£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030050a00">
����Ȼ�����׵�����ʹ�á�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030060a07">
�����ǵĴ���������ء�
���������ֲ������ţ���פ��Ҫ����ʽ��ʤ��
��ʹ���׵�Ҳû��ϵ������<RUBY text="����">����</RUBY>��ͷ���ˡ���

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0030070b37">
���Ǹ����ǹؼ���
�������������ġ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030080a00">
���Ǹ���ô�죿��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030090a07">
��ֻ�����ֶ���Ԥ�Ȳ��õ����ˡ�
���ֿ��ɡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030100a07">
������Ҫ����Σ�����ƣ������˱���ʹ�ö���
�׵�����

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0030110b37">
����ܽ�פ���Ĺ��ƣ������Ǳ��뽺��״̬����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030120a07">
�������ǡ���ʮһ���������𣿡�

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030130a07">
���������»���ʮ�����������ѡ���

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0030140b37">
������������
��������ȷʵ�����ʡ�����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0030150b37">
������ô�õ�ʱ�䶼�޷����������ֵĻ�����
���������¶�����ʹ��ɱ����ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030160a07">
���ǰ���
����ʱ���������������ֶ����
����֮�¡���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030170a07">
������Ҫ������֮����ס�����֡���

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0030180b37">
���š�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030190a00">
����������
���ܰ쵽�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������˴�ͽ�פ����������ʵ����Ǵ�Ӣ�������
���ܶ���֮�����������ӵ������װ���ľ���������

������ǰ����
�������޲�ս���ܣ�Ͷ���Ӣ��������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030200a07">
��ֻ��һս�ˡ�
���������Ǳ�����·�ˣ���硣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030210a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030220a00">
���ǰ���
��������·�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����û�б�ķ�����
����ֻ����Ψһ��·;��ƴ�����ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���u�h���g
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);
	OnBG(100, "bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	SoundPlay("@mbgm20",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���źӡ�С����ܥԽ�������ۼ������¼䡣
���������������S��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030230a07">
��ʨ�Ӻ���ô�ˣ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030240a08">
���Ѿ��ɵ�����ˡ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030250a09">
���S����Ԯ�������ܶ��ص���������
�ء���
������Ϊʤ�ܵĹؼ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030260a07">
�����𡭡���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030270a09">
��������������һ������
�����Ƕ���Ϊ���ڰ��ϵ��¾��δ����ּ��
�䲼�������޸���֮ʱ����פ����ս����ʤ��
�������塣��

//��ͯ�ġ�
<voice names="ͯ��" class="ͯ��" src="voice/md04/0030280a09">
��ʵ���벻�����ڴ�֮ǰ�͹������������

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030290a08">
���š�
����<RUBY text="��Ⱥ�һ�">�ǣȣ�</RUBY>���������˿��ӣ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030300a09">
��ս������˵��ȷʵ�öԷ�������ɢ֮ʱ����
�����������������ǲ���<RUBY text="����">������</RUBY>����ƽ�ȵ�
���֣��������Ǿ���Ϊ���ǻ��ȿ��Ǵ����η�
�����֡���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030310a08">
��������ʲô���顣��

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030320a07">
�����������ٺ��Ҳ²�Ҳ�����޲��ɡ�
��������ʲô���飬���˶�����ģ�����ˡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030330a07">
�������Ӳ�������ϯ��ּ����ģ��Ǿ�ֻ��
֣�ص������ǻ�ȥ�ˡ�
�����뷽���ɣ�������Ⱥ�쵰����ģ��ı�
ˮ����ж�Ӿ��������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030340a09">
���š����ǰ�����

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030350a08">
��ͯ�Ĵ��ˣ����˵Ķ����أ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���`�}���x����ģ��؇�

	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se�ճ�_��_����᤯��02");
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateColorSP("�}ɫ�\", 100, "#000000");
	CreateTextureSP("�}�ţ֑��a", 2000, Center, Middle, "cg/ev/ev803_�����ޥåף�_a.jpg");
	FadeDelete("�ϱ���", 1000, true);
	MusicStart("SE01",0,1000,0,750,null,false);
	DrawDelete("�}��ܞ", 1000, 100, "blind_03_00_0", true);

	Wait(500);

	CreateTextureEX("�}�ţ֑��b", 2100, Center, Middle, "cg/ev/ev803_�����ޥåף�_b.jpg");
	Request("�}�ţ֑��b", Smoothing);
	Fade("�}�ţ֑��b", 1000, 1000, null, true);
	Delete("�}�ţ֑��a");

	Zoom("�}�ţ֑��b", 1500, 1500, 1500, AxlDxl, false);
	Move("�}�ţ֑��b", 1500, -251, -138, AxlDxl, true);


	SetFwC("cg/fw/fwͯ��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030360a09">
�����ǽ�פ������ؽ��ӽ�Ⱥ��ͻ����ģ���
�ڷ��ߺ�ͻϮ��Сƺ���ۡ�
���ش�פ��Сƺ���ҷ��������ӡ�����

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030370a09">
����׼Сƺ�ľ������÷���׼����ʱ�����ˡ�
�������ڷ����������֮�䲼�·����ߣ���
Сƺ�Ĳд潢��ѹ���ڸ��ڡ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030380a08">
������ֻ��ѹ�ƣ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030390a09">
��������ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030400a07">
������
���������ʲô������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030410a07">
��Сƺ�Ľ��ӱ���ס�Ǻ��鷳��
����������Է�ֻ�Ƿ����Ļ����Ǿ�û��
���ý��ӵı�Ҫ����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030420a09">
���������������Ϊ����ֹ���Ƕ������ж���
����������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030430a08">
���Ѳ������ǵ�Ŀ�Ĳ������֣�
��������Ϯ����Ķ��У���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030440a07">
����ô���ܣ���

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030450a09">
��ռ�����֡����������֡��������ޱ��������
���ǣȣѼ�Ȼ�Ѿ������������Ͳ�����������
Ŀ�ġ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030460a09">
�����ǡ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030470a07">
��������Ϊʲô����������Сƺ�۵�½�ء�
��������Сƺ����

{	Zoom("�}�ţ֑��b", 1500, 1000, 1000, AxlDxl, false);
	Move("�}�ţ֑��b", 1500, 0, 0, AxlDxl, false);
	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030480a09">
����������
����Ӻ�亻�����½·����Խ������Ҫ��
����������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030490a08">
��Ҳ���ܻ���ô������
����������·�������Կ���չ��������������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030500a08">
������˵�����ڱ𴦣���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030510a09">
�������š�
��������������һ��������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030520a09">
��������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�������", 3000, @0, @0, "cg/ev/ev803_�����ޥåף�_c.jpg");
	Request("�������", Smoothing);

	Fade("�������", 500, 1000, null, true);
	Move("�������", 1500, -54, -51, AxlDxl, false);
	Zoom("�������", 1500, 1200, 1200, AxlDxl, true);
	Delete("�}�ţ֑��b");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������ͯ�Ĵִ����ָ����ŵ�ͼ�ϵ�<RUBY text="��">��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�׵�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030530a08">
���������Ϻ�������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030540a07">
��ιιι��
���������Ҫ��ô�����ֵط���½����
���Ǻ���������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030550a07">
�����Ǻ�����ô˵�������ܾ������ǻ᲻����
ʲô����������������ó�����������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030560a09">
����Ȼ�С�
����½��������Ӣ�������ϴδ�սʱ�Ϳ�
ʼʹ���ˡ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030570a08">
����Ȼ��˵������ô��Ч����

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030580a09">
����֪�ǲ��Ƕ�ȱ�����˸�����
����Ϊ�����Թ�����˵��������кܴ��
�о���ֵ����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030590a09">
�����Ҫ����������ȫ�ĸۿڣ��ͱ�������
�����ش�����������׼����
�����ǣ��ӷ��������ĺ�����½�Ļ�����ʧ
�ͻ���΢�öࡣ��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030600a07">
������ȷʵ�ܱ�����
����ľ�����ɱ�亡�����亡���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030610a07">
����Ȼ����ȫ�޷�����ȴҲ���ǹ�����������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030620a08">
���Ƕ��ķ��������Կ����ģ�ľ��ӵ�½��
����Щ�ǣȣѻ���֪���ġ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030630a09">
������������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030640a07">
������˵���������ɡ���

{	FwC("cg/fw/fw�׵�_܊��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030650a08">
���š���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030660a07">
��Ҫ�Ժ���������Ԯ�𣿡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030670a09">
��û�õġ�
������ܵ���Ϯ��û���ܼ�����Ԯ�ĳ���
��������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030680a09">
�������ɳ������ɹ��ں������ϲ��������Ƕ�
ӭ�����ģ��½��֪ʶ���黹�ܲ��㡣��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030690a07">
������˵�����ں�̲����æ����
��ʱ��ͻᱻ��������ɾ���
���ҵ��Ǿ����ò�����ô���ۡ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030700a08">
���Է������Ǿ������ѵ���б������ġ�
�������<RUBY text="��������">ʧ�ܴ���</RUBY>����ʤ���Ļ���
���Ǻܲ�������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030710a07">
�������ǵ��ǡ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030720a09">
��ֻ�÷�����������ս����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030730a00">
��ʧ���ˡ�
��������λ���˲�����ͻ��
Сƺ�۷����ķ����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�������", 1500, 1500, 1500, AxlDxl, false);
	Move("�������", 1500, -251, -138, AxlDxl, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����޷��������ֳ�Ĭ�������ʵ���
��������Щ����������ͷ�������һѡ��

����������⡣
��������Сƺ�۲д�Ľ��ӹ�עһ�������ø���������
����֧Ԯ��������й���ɡ�

����ģ�������Ļ������Ӧ�ò�����ȫ�����ᵽСƺ��
�ɡ�
��Сƺ��ŵĻ�����פ���ĵ�½��ս�ͻ����Գɹ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030740a07">
��Ҫ�������õĽ��Ӿ���ô������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030750a00">
������û���𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030760a07">
�����ӵ����С�
�������н�֮���ĸ��ٽ��ӡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030770a00">
���Ǿ��á�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����������������������������������

��<RUBY text="������">��֮��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//���y�Ǻť���ȥ饭�å������΍u�����w��

	EfRecoIn1(18000,600);

	CreateTextureSP("����ȥ饭�å�", 15000, @0, @0, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_c.jpg");


	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoIn1(18000,600);

	Delete("����ȥ饭�å�");
	CreateTextureSP("���΍u", 15000, @0, @0, "cg/ev/ev124_���΍u���Շ�_a.jpg");


	EfRecoIn2(300);



	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030780a07">
����֮���Ľ��ӣ�����֮ǰ��Ϊ<RUBY text="����������">Ī�����¹�</RUBY>
�������ˡ�
�����ڻ�û���޸��á���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030790a07">
�����ְ�зϵ�״̬��û�취ȥ��Ԯ����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030800a00">
�������������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);
	Delete("���΍u");
	Zoom("�������", 0, 1000, 1000, null, false);
	Move("�������", 0, 0, 0, null, true);

	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030810a07">
����ȻҲ���������ӡ�
����һ˵����ģ�������亡�����ؽ��ӶԿ�
�Ľ��ӵĻ��������ܰ뵺�ϲ���פ���������
�ʰɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0030820a00">
���Ǳ��أ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030830a07">
��Ҫָ�����Ǻܼ򵥡�
�����ǡ�����

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030840a08">
�����������������������ս���Ļ���
̫ƽ����ͻ�ȫ�޷����ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030850a07">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��ԭ����ˡ�
  ��פ���������˾���ս���������ں�亡������
�����ء�

�����ǿ��ܴӸ������������Ԯ���������󣬻���
��½��
  ���ǲ��ܽ�Ϊ�����о���Ԯ�����õĽ�������
��ģ�塭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030860a09">
���ܵ���˵��������������������ӭ���з���
�����𣿡�

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030870a08">
���ǵġ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030880a07">
���������ų����ó���ѡ�񡣡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030890a09">
����ô����ȷ���ҷ���ս�����ðɡ�
�����ȡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����Źźӹ��������ĶԻ���
���ҷ�����ĥ�������־��������֪ʶ��

����һ�������ֳ��ڡ�
�������������ֳ���ֱϽ�ľ��š�������Ȼ��Ϊ������
�ɰ��ϵ������ˡ��������������������������ʤ��һ
����ָ�ӣ���������������ͯ�Ĵ��С�

���ڶ��ǹź����ڡ�
�������Ǵӹźӹ������Ĺپ��л��������������ֳǵġ�
ָ�ӹٵ�Ȼ�ǹźӹ�������ͯ�ģ��������Ĵ����ߡ�

��������С�����ڡ�
��������С����������ǲ�ľ��ӡ����ڱ�������������
�ܽϿ�ؽ��������������ֳǣ��öӵĹ�ģ����������
ǲ���Ӹ���

��������ܥԽ���ڡ�
��������ܥԽ����������ǲ���ӣ�ָ��Ȩ�ڲ�������ϡ�
ܥԽ��ԣ�Ĳ���״����ӳ�ڳ���ĺ����ϣ����Ծ�����
�������Ӽ��ʡ���������Щ������ν��

�������ǺS�����ڡ�
�������ǴӴ���ʨ�Ӻ����±���Ϊ���������Ļ��S
�������зָ������פ���������ֵĹٱ���

����������Ź����������ֵĳ�פս����
�������������޵��������Ҳ�ǹض��ط��ִ��
������������

����������ʹ��ˣ���ǹƥ��Ҳ���޷���ǣȣѿ���ġ�
��������ǣȣ�ƥ���Ʊ���Ҫ�ط�����֧Ԯ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����؇�

	CreateTextureSP("�Ǥ����؇�", 1900, @0, @0, "cg/ev/ev804_�����ޥåף�.jpg");
	DrawDelete("�������", 1000, 100, "blind_02_01a_1", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
������˵��Ҫ�źӡ�С�����S����ܥԽ��
����Ҫ�ض��Ĺ�����Ԯ������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030900a09">
���ղ��Ѿ��Թźӷ�����ָ�
��������ˡ�����

{	FwR("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030910a09">
��Ӧ��û�ðɡ���

{	FwR("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030920a08">
��Ҳ�����С������ָ���ˡ���
���š�û���ڴ�������

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030930a07">
����Ϊ�źӺ�С��λ�ò��á�
������ǣȣѵĲ�ıͷ��������
����һ�������ж�����

{	FwR("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030940a07">
��С�����ڵ����Ӧ���Ѿ�
��Сƺ�۲���˰ɣ���

{	FwR("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030950a08">
���š����ǰɡ���

{	FwR("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0030960a09">
����ʣ�µ�ֻ��ܥԽ�ͺS���ˡ���

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030970a07">
��Ҳ��̫�ڴ�ܥԽ����
�������ڵ�������ǲ����ܽ�����ı���
���̵����������ġ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0030980a07">
��һ�㿴���������ǽ�פ����ס����������ɡ���

{	FwR("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0030990a08">
���������ǸԲ����췴���ġ���

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0031000a07">
�����ɲ������������

{	FwR("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0031010a09">
������һ��������

{	FwR("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0031020a07">
������ֻ�ܼ�����ʨ�Ӻ��ˡ���

{	FwR("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0031030a08">
�����������ǰ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
������ʨ�Ӻ�ĺS������������
���ǹ�ģ��ʵ������������������������ط�����

����������ܸϵ������֣���������ǣȣѵ�ս����
������ƽ����ɫ�ɡ�

�����ǣ�����Ҫһ��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0031040a07">
��ʨ�Ӻ𱼸�������پ��ӡ����ٷ�������Ҫ
�������ء���

{	FwR("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md04/0031050a09">
������������

{	FwR("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0031060a07">
��������ô�룬���춼�����İɡ���

{	FwR("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md04/0031070a08">
�����ҡ���
���źӹ������ܳŵ�ʲôʱ���أ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��û��
��Ϊ��ѹ�ƹźӹ���������פ���϶��Ὣ���ֱ���
�����Ǳߡ�

���ź�����Ļ����S����ȥ�����ֵ�·�ͶϾ��ˡ�
�������ֽ��ᱻ������

����������ʱ����ܱ���Զ�ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1500);

}

..//������ָ��
//�Υե����롡"md04_004.nss"