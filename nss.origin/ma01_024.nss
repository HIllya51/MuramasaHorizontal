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

scene ma01_024.nss_MAIN
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
	#bg002_��a_02=true;
	#ev925_Ұ̫����Ƭ_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_025.nss";

}

scene ma01_024.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_023vs.nss"

//��Ϧ��
	PrintBG("�ϱ���", 30000);

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Fade("�}����100", 0, 1000, null, true);

	FadeDelete("�ϱ���", 1000,true);

	SoundPlay("@mbgm26",0,1000,true);


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0240010b56">
������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����꿴���ˡ�

�������ƻ���յ������⼣��
��������塪�����������̶�����
����ͭɫ�Ĺ����ɢ�䡣

�����꿴���ˡ�
����ɲ�Ǽ��һ������

���ޱ�Ѹ����
���ޱȸվ���
����������Ϊ���������Ʒ��ӵģ��׻��⡣

�����꿴���ˡ�
���˿̶��Է�������ʵģ�����졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0240020b56">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����꿴���ˡ����Ҿþ�עĿ��
�����������ĵ��ӿ�ϵĻ��Ȳ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SetVolume("@mbgm*", 1000, 0, null);


//��ɽ�С�Ϧ
//�������`�󡣽������������
//�������`�󡣴������ŵ�

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Wait(1000);

	CreateTexture("�}����50", 100, Center, Middle, "cg/bg/bg005_ɽ��_02.jpg");
	Delete("�}����100");


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("�\Ļ��");

//�룺�ӣ�׷���趨
	OnSE("se���L_����_������01",1000);
	CreateColorEXadd("�ե�å����", 15000, "WHITE");

	Fade("�ե�å����",200,1000,null,true);


	StC(1000, @0,@+50,"cg/st/3d�����˜�_����_ͨ��.png");

	Wait(500);

	FadeStC(300,false);

	Move("@StC*", 1000, @0, @-50, Dxl1, false);
	Fade("�ե�å����",1500,0,null,true);
	Delete("�ե�å����");

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050a]
//��������
<voice name="����" class="����" src="voice/ma01/0240030a00">
�������ҵ��ˡ���


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����100", 5000, Center, Middle, "cg/ev/ev925_Ұ̫����Ƭ_a.jpg");
	Fade("�}����100", 1000, 1000, null, true);

	SetFwR("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050b]
//��������
<voice name="����" class="����" src="voice/ma01/0240040a00">
��Ұ̫���ġ�����������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/0240050a01">
��������һ��
���������������ء���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���`�}��Ϧ
//��ѩ܇�
//���ѥ��`�󡣤ʤ󤫸�������


	PrintGO("�ϱ���", 15000);

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	CreateTexture("�}����50", 100, Center, Middle, "cg/bg/bg007_��m��·a_02.jpg");
	StR(1000, @0,@0,"cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStR(0,true);

	DrawDelete("�ϱ���", 1000, 1000, "blind_01_00_1", true);

	Wait(1000);

	DrawDelete("�\Ļ��", 1000, 1000, "blind_01_00_1", true);


	CreateColorEXadd("�ե�å����", 15000, "WHITE");
//�룺�����ο����Ԥ���
	OnSE("se����_�z_װ��03",1000);
	Fade("�ե�å����",0,1000,null,true);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fwѩ܇�_�o.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0240060a12">
����������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0240070a12">
��������ġ�
����ĵ��űꡭ����ʧ�ˣ���

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0240080a12">
����ʧ���ˡ�����ιι��
����ôһ���°���

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0240090a12">
��������������������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0240100a12">
���˼ҲŲ��������ء�
����������ô�򵥾ͺ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(1000);

//���ե��`�ɥ�����
	ClearWaitAll(1000, 4000);


}

..//������ָ��
//�Υե����롡"ma01_025.nss"

