//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_033.nss_MAIN
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
	#bg073_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_034.nss";

}

scene md05_033.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_032vs.nss"

//���Q�顤��K��
//�����κ���

	PrintBG("�ϱ���", 30000);

	Wait(1000);

	OnBG(100, "bg073_��a_02.jpg");
	FadeBG(0, true);

	CreateTextureSPadd("��Դ100", 1000, Center, Middle, "cg/data/circle_04_00_1.png");
	Fade("��Դ100", 0, 700, null, true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg073_��a_02.jpg");
	Zoom("�}����50", 0, 1200, 1200, null, true);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg073_��a_02.jpg");
	Zoom("�}����100", 0, 1400, 1200, null, true);
	Fade("�}����100", 0, 600, null, true);
	CreateTextureSP("�}����200", 100, Center, Middle, "cg/bg/bg073_��a_02.jpg");
	Zoom("�}����200", 0, 1200, 1200, null, true);
	DrawTransition("�}����200", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("�}����100", 50, "LowWave ", 0, 100, null);
	DrawEffect("�}����100", 500, "SuperWave", 40, 40, null);


	//ͽ�i��ǰ�Υե����뤫��ο������v�S�Ǻ�����������������
	//SoundPlay("@mbgm01", 0, 1000, true);
	CreateSE("������ɣ�","se��Ȼ_ˮ_��x�β�01_L");
	CreateSE("������ɣ�","se��Ȼ_ˮ_��x�β�02_L");
	SoundPlay("������ɣ�",2000,1000,true);
	SoundPlay("������ɣ�",2000,1000,true);

	Wait(1000);


	Move("�}����*", 12000, @-100, @0, null, false);

	Zoom("��Դ100", 12000, 1300, 1300, null, false);
	Fade("��Դ100", 12000, 200, null, false);
	FadeDelete("�ϱ���",3000,true);

	Wait(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ұ�����ĵط���λ�ڴ����С�

���³������ϸ���
��������˹��̾�Ȼ���ܱ�ס��������ֱ�Ǹ��漣��

�����嵽�����ˡ�
����һ�����������Ĳ�λҲû�С�

��Ѫ����ֹ��Ⱦ�������ʵĺ�ˮ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���Υ���������
//��������
<voice name="����" class="��������" src="voice/md05/0330010a01">
�������ԡ���
���Բ��𡭡�����������

//��������
<voice name="����" class="��������" src="voice/md05/0330020a01">
���ҡ���ֻ�򡭡�
������<RUBY text="������">������</RUBY>������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0330030a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��΢�������Լ����޷������
����һϢ�Ľ��д�����Ӧ�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md05/0330040a00">
�����������ͺá�
������<RUBY text="������">������</RUBY>������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0330050a01">
������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0330060a00">
��֮��͡��������Ұɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��û���˻�Ӧ��
���ҵĽ��У��ƺ��Ѻ���˵��֮���ˡ�

���ƻ����ļ�һ�¡�
���ҵ����������顣
������Ҳ����������

���Ѿ��޷�ս����

������<k>
��
��
���������������ͺá�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�������*", 3000, 0, NULL);

	Wait(1500);
	SoundPlay("@mbgm14", 0, 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md05/0330070a00">
���Ǽһ

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0330080a00">
�������ˣʲô��ı�𣿣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������䡪��
����Ӧ����ô˵��

�������ƻ�������Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md05/0330090a00">
��������Ǽһ

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������Ҹ档
�����û���Ǿ仰�����Ʊص����
���޷����쵽��

��Ҫ�ﵽ���Ҿ��硣
����Ϊ����ֻΪ�ػ������ս����Ӣ�ۡ�

��Ȼ��

����������������ɱ¾��

��׷����<k>
����������ֻ������Ľ������ƶ���֡�

��Ϊ���ػ�ĳ�������߱�У�
����Ҫ�е�ʧȥ��Ҫ�ػ�֮���������

���ַ�ħ����Ӣ�ۣ�
���̶���Ϊ��һ����ħ��Ϯ�����硣

�����ó�ΪӢ�ۡ�

��������������ɱ�С�
������Ϊ���Ҷ�ɱ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md05/0330100a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������Լ����Ҳ�����Ц��
����������ұ��Ͳ��ñ�����Ϊ�ػ������ս������
�Բ��������뷨��

�����Ƿ���ҵ��������ء�������и�����˼����
ͷ�Ծ��������ˡ�

���ܹ�����ѡ��ĵ�·Ψ��һ����

���������ҡ�
�����Ӣ�ۡ�

�����վ��ǣ�<k>
����Ϊ�ն�������<k>
��ɱ�˴ն��⡣

���ǵġ�<k>
����Ϊ�ն���Ψһ�ļ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 500, 0, 1000, 500, null, "cg/data/slide_02_01_0.png", true);

	Delete("�}�ݹ�");

}

..//������ָ��
//�Υե����롡"md05_034.nss"