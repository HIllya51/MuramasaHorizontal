
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsbc.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc01_021vsbc.nss","DenziBladeCharge",true);
	Conquest("nss/mc01_021vsbc.nss","DenziBladeChargeSet",true);

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

	$GameName = "mc01_021vsz.nss";

}

scene mc01_021vsbc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vsb.nss"

//���L�F
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("�}��", 5000, Center, -90, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	CreateWindow("�}��", 19000, 0, 108, 1024, 360, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 19000, "#CC0000");
	CreateTextureSP("�}��/�}�����}װ�׏r", 19100, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	CreateTextureSPadd("�}��/�}�����}װ�ײ�", 19120, Center, Middle, "cg/ev/resize/ev902_����늴Œi����`�륬��_bl.jpg");
	Move("�}��/�}�����}װ��*", 0, @290, @160, null, true);
	Zoom("�}��/�}�����}װ��*", 0, 800, 800, null, true);
	Request("�}��/�}�����}װ��*", Smoothing);
	DrawTransition("�}��/�}�����}װ�ײ�", 0, 0, 400, 100, null, "cg/data/slide_03_01_1.png", true);
	Wait(32);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ڿɲ������ĵ�ʱ��
������ǿ��һ�������̽���ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc01/021vs0420a01">
����װ�����ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����`�륬��ʂ�
	CreateSE("SEL01","se����_늓�_���01");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");

	CreateTextureSPadd("�ץ�}��", 4020, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");
	CreateTextureSPover("�ץ�}", 4010, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");
	CreateTextureSP("�}�ݴ���", 4000, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_c.jpg");

	SetVertex("�ץ�}*", 800, 290);

	Delete("�}��*");
	Delete("�}��");

	Wait(10);
	DenziBladeCharge();
	FadeDelete("�}ɫ��", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ջ����е�̫��Ϊ���ģ���ɱ�����������ӿ��Ű��
��ֻҪ��������������һ�ж��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc01/021vs0430a00">
�������ȵȣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������ס�
����ô���Ļ���

�������ô���Ļ���
��<RUBY text="��������������">��ɱ���Ǹ�����</RUBY>��

����Űε���<RUBY text="��������">��������</RUBY>��һ����
���޷��������飬���׽����������ƻ�������


�������Ļ���
���һ�ɱ�������·�����ĵ��ˡ�

���������ڴ����Ľ��ɣ��һ�����ɱһ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc01/021vs0440a00">
�����У�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ��", 19900, "#FFFFFF");
	Fade("�}ɫ��", 1600, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ֹͣ����������������ɢ��
��
�����������������ҵ����˵�����ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//������ʧ��

..//������ָ��
//�Υե����롡"mc01_021vsz.nss"

}

.//�ץ�����======================================================

..//늴Œi����능�`��
function DenziBladeCharge()
{
	CreateProcess("��늴Œi����능�`��", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("��늴Œi����능�`��","��늴Œi����능�`��");
	Request("��늴Œi����능�`��", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�ץ�}", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 300, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 250, 0, null, true);
	Wait(50);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�ץ�}", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 200, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@�ץ�}", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@�ץ�}��", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@�ץ�}*", 150, $RZS, $RZS, null, false);
	Fade("@�ץ�}*", 50, 800, null, true);
	Fade("@�ץ�}*", 150, 0, null, true);
	Wait(10);
	Zoom("@�ץ�}*", 0, 1000, 1000, null, false);

	}

}