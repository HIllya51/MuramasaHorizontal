//<continuation number="1260">



chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_019vs.nss_MAIN
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
	#bg020_ɽ�}�ӵ�_01=true;
	#bg022_ɽ��a_01=true;
	#bg020_ɽ�}_01=true;
	#bg005_ɽ��_01=true;

	#ev110_��Ƥ���������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_020vs.nss";

}

scene ma02_019vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_018a.nss"
//ǰ�ե����롡"ma02_018b.nss"


//������
	PrintBG("������", 30000);
	CreateColorSP("�}��ܞ", 1500, "#000000");
	OnBG(100,"bg020_ɽ�}�ӵ�_01.jpg");
	FadeBG(0,true);
	Delete("������");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0010a01">
����������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0020a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������֮����緹��
�����ǶԽ��ûؼң���������������ҵĲ�
Ъ������ʱ�򣬽ӵ���������Ĵ����Ľ�
�д�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm16",0,1000,true);
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0030a00">
���к��쳣����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0040a01">
������һ��������ӡ�
��������������߶�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0050a00">
��֪���ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040a]
��������Դ̫����������ʾ�⣬�����뿪��
������������߱������ˣ������Ե����ҵ�
�˵�ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 5000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040b]
����׷���źʹ���֮����������Ӱ�����ӡ�
���������ϱ���խС��ɽ·����������֮�С�

���Ҳ�δ��ָ�������������
�����̣��ұ㷢����Ǳ���������еĴ�������ǰ����
��Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0060a00">
�������𣿣�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0070a01">
���ǵġ�
�����ҡ�������һ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0080a00">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���Ǹ���Ӱ�����������ǡ�
���ƺ������Ա�д��ʲô��

������ֽƬ�ݸ��Աߵ���ľ��
����֦�Ϸ���Ѹ������������ֱ۲���������
�ǡ�������֮Գ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0090a00">
����ɽ����λ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0100a01">
��������Գ���������ٵ������൱ǿ����
���Ҷ�û�����̾��쵽��
�����ǡ����Ǹ����˲�������ɽ�Ĳ����ߡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0110a00">
�������ǰ���
���Ǹ��ˣ������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��Գ�ܿ�Ծ����������֮����Ծ��ת˲֮�����ʧ����
�������
������һ�պ�ֽ�ʣ������̶��¡��ƺ���ϵ������ɽ·
���ɿ���Ь����

�������ܶ���֮�������ǵط��ٵ������Ա��
���ո����������沢��֮���������������ɽ�ɡ�

������������Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0120a01">
��Ҫ��ô�죿
��Ҫ������ɽ�ĺ��濴���𣿡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0130a00">
�����ڶԷ�������������½���׷���𣿣�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0140a01">
�������޷��ش��㡰��Ȼ���ԡ����治���ġ�
��������Ƭɭ����ȫ�ǶԷ��ĵ��̡�����ֻ��
׷��Ҳ�����Ѱɡ�����

//��������
<voice name="����" class="��������" src="voice/ma02/019vs0150a01">
��Ҫ����׷�ٵĻ����͸��ӡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0160a00">
���Ѱ졢³ç����ı�𣿣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���Ǿ�û�취�ˡ�
  ��Ȼ���ܸ�����ɽ���ط���һ��ľݵ�ȥ�Ļ���
�ٺò����ˣ�������������ж�����ɽ����������
�ǿ϶��ᱻ˦���ġ�

������ʹ����û��˦������ɽҲ�������и����ߵ�
����»ص�������ߡ�
��Ҳ����˵��û��û�ˡ����ֻ��װ��˷ѵ�����
�ޱ�����ʱ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0170a01">
���ɴ࣬������������ɽ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0180a00">
����Ҫ���������׷������
�����Ҽ�ʹ˳�����У�����õط������ǽ䱸
�����Ӷ����صø���Ļ����Ǳ��Ǳ�ĩ��
���ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0190a01">
������Ҳ�ԡ�
����Ǹ��˵�˺��޼�ֵ�Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����Ӧ������������Ӳ��
����װ��û�з��֣�����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0200a00">
����̰�ġ�
�������ܰѿӵ���������ߵط��ٵĻ���
�Ǳ��������⡣�����������ӣ�����
���ָ��棩

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0210a01">
���š�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0220a00">
�����ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��������ɢ��
��ȷ����Χ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0230a00">
�������������ԱҲ�����棩

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��������롣
����Լ��һ���ס���΢Զ�˵㡣���ǣ������ڲ�������
������½ӽ������Ļ����Ǿ�������ʺ�͵Ϯ�ˡ�

�����˻���ϵ��Ь������Ϊ���������ȷ���һ�ߡ�
�����õĻ��ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0240a00">
����Ҫ�������˵�ս������
����������̫����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0250a01">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��������һ��������ʧ�ˡ�
��ȡ����֮�������ֳ�����������

����������ʹ���ַ������죬ĬĬ�ؽ������߾ٹ��硣
��ά������������һ����

��������
��������
���Ĳ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se����_����_���S01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("�}�ţ�50", 5000, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	DrawTransition("�}�ţ�50", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Wait(200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0183]
����Ծ��
�������ŵĵ�б����Ѹ��һ�ӣ�ͬʱ��ת�����õ�����
���������˵ļ�ͷն�¡���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������һ�W
//���Ф��Ϥ�һ�W
	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��", 10, "#000000");
	CreateColorEX("�}����", 110, "#000000");
	Delete("�ϱ���");

	OnSE("se���L_����_�����02",1000);

	CreateSE("SE01","se���L_����_�����01");

	SL_rightup(@0, @0,1500);
	Rotate("@slashLU*", 0, @0, @0, @30, null,true);
	Request("@slashLU*", Smoothing);

	CreateTextureSP("�}�ţ�100", 100, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	DrawTransition("�}�ţ�100", 200, 0, 500, 100, null, "cg/data/slide_04_00_0.png", false);

	Wait(150);

	Fade("�}����", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightupfade2(10);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0189]
������������������!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������¤��뾰��
//�����Ѥä��X���ؤ��
	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}�֥�", 1500, "#CC0000");

	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);

	OnSE("se���L_����_���̤���02",1000);

	Wait(200);

	OnSE("se����_Ѫ_�����01",1000);

	Delete("�ϱ���");
	FadeDelete("�}�֥�", 500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0260a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0270a01">
������!?��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0280a00">
�������޴󰭣�
��ֻ�ǲ��ˡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���ȱ����ḧ������΢�ĳ̶ȡ�
�������Ʋ������ˡ�

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStR(500,true);

	Wait(200);

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0290a12">
���������ۡ�
�������Ұɡ�����ʲôʱ�򡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��һ���Ծ���ģ������ͣգ�۵����ˡ�
����ȥ�������κ��������������������������

��������ˡ�
���ղš���<RUBY text="����������������������">һ����ǰ���ܿ��ҵ�һ��</RUBY>��<RUBY text="��������">һ�߰ε�</RUBY>��
<RUBY text="����������">������һ��</RUBY>������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0300a01">
��������������ˡ���!?��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0310a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���ҿ������˵Ľűߡ�
���ҽŵ�Ь��ɢ���ţ�ֻϵ��һ�롣

��<RUBY text="��������������">����δ��������</RUBY>��
�����ǵ��ж�ȷʵ�ǳ��������ϵġ�

�����ǡ��������Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_���L_˽��.png");
	FadeStL(300,true);


	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0320a00">
��������Ӧ������ݵ�����ֻ��ʶһ����
���ǵ���������ǰ�����ˡ����������Ҽ�ʶ��
ͬ���ķ�Ӧ��������


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0330a12">
�������ٺ١�����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0340a00">
�����ǵڶ�����
��Ұľɽ���ѩ���һ�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���޷���ȫ����ס�����е�ս���������˵����
��������������֮�����Ͽ���������Ц�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0350a12">
����Ȼ������ס���ˡ�
���ǻ����ǹ����ء�����С�硣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0360a00">
�����ɼǵö��ѡ��Ҳ����������ס�ġ�
�����ǽ���ʱ����Ҳ�����˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��ѩ���һ�����������롣����������
������ԭ������<RUBY text="��������">�ص�����</RUBY>�С�
��������ǰ�������־��롣�Ҳ�����������������ǣ�
����ð���Ļ��ᱩ¶��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0370a00">
������������������չˡ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0380a12">
�������١�
����ѽ�����ж�С��������ô
�˲�������𡭡�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0390a00">
����ǰ��ս��Ҵӿ��л��䡣
���治����û��׹�䵽��������׶ˣ�����Ȼ
���ڰ�����


{	FwC("cg/fw/fwѩ܇�_��Ц.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0400a12">
���١��١��١���
�����������𣿡�


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0410a00">
�����ǵ�Ȼ�ġ�
�����ǰ����������ϴ�Ҳͦ�ѵġ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0420a12">
����������ô˵������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
������ı仯���뽺�š�
�����ǣ�ռ���Ƶ����ҷ���

��ѩ���������ˣ������۽����Ļ�����������
��ƥ�С�
�����ƾ����е�����������Ļ����Ҳ�����ܷ�
ʤ������

������Ŀǰ����������ƾ����еġ�
��Ь�����˵�ѩ����ƶ����ơ������Ļ�������
�Σ�Ҳ����ʹ����ȫ����ʽ�ɡ�
��������ף����ҷ�������

��ѩ�����Ҫ��������״���Ļ����ͱ����ý���
��ʤ����
����������Χ���޽��е���Ӱ��Ҳû�п�������

{	CreateSE("SE01","se���L_�\����_�Х���_�����ɥ��_L");
	MusicStart("SE01",1500,600,0,800,null,true);}
�����ǡ�
��������ɽ�ϴ������������У����<RUBY text="�������">������</RUBY>�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 6000, 0, null);

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�����ߣ��������
//�룺������090930��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0430a12">
����ͷ�۰���
����û����������<RUBY text="����">����</RUBY>�̶Ȱ���
�Ҳ���������<RUBY text="���">����</RUBY>��ɱ��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0440a00">
���ҵ������ͬ��
���Ҳ���ŵ��������ƵĻ��ᡣ�����˼�������
���Ҵ�����������֮֫һ����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0450a12">
����ô��û�취�ˡ�
��������Ź��ң���Ȼ�һ������̫�����𡭡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0460a00">
��Ҫʹ�ý����𣿡�


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0470a12">
���ٺ١�
�������Ļ���С��Ҫ��ô�죿��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0480a00">
����Ҳʹ�ý��У�ֱ�����㿳������


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0490a12">
���ٺ١�
�����������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���Ҽǵ���ѩ�����ǰ��δ�ἰ�����֣�ȴ����
����˵����
���Ǵ��Ǹ�����������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0500a12">
�����ǰ�����
���Ǽһﲻ�еİɡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0510a00">
��������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0520a12">
�����ǵط��ٸ��������������ġ�
��Ҫ����ȷ��һ�¡�������֪������ֻ����Ҫ
����ӵ������ˡ���


//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0530a12">
������Һ�С���¡������ڿ��п�ʼ������
ս�Ļ��������أ�
��������Ԯ���𣿡���ô�����ء����ط��ٸ�
�²���˵���϶���ȥ��ֹ��������ӵ�Ŷ����


//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0540a12">
�������Ļ����ٺ١�˭�����ط��ٸ��º�С̫
��үү�Ķ����أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0550a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��������ˣ��������ﶼ�ܾ����
��������֮սҲ��һ����

��ѩ���״������һ���еġ�
������������չ������ս���Ļ�����ȷ�кܸߵ�Σ�ջ�
��������˵�Ľ����

����Ȼ�����ƿ������͸�����������ȴû������װ��
װ�׽��з�����������������϶���˼���ҷ�ִ����
�������ƴӶ������ڴ����֮���ٷ��ص�����ѡ��Ŀ�
���ԡ�

��ǰ�����ʱ���������໥�����˽���һ˲�䡣
�������Ҿ���ѩ��Ľ��п����Ǿ��õ����򡣴��ƾ��
<RUBY text="����">�ٶ�</RUBY>�Ļ����޷���֤����ȫ˦���Ҷ����߰ɡ�

����ʵ�ϣ���Ȼ���н��䲶׽ն������š���
�����Ҳ���ð����ɽ����޷�����
��
������ս����һѡ�����ͬ�ڱ������ˣ�

������ƾһ���ɱ����ס�ҷ��ľ�ս��������
�Դ˳ɹ�������������������¡�
��������ˣ�����ս�������ƺ��볣�˲�ͬ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0560a00">
���������ȷʵ������˵��
��������Ȼ�������Ǳ��Դ�״̬����ʤ��������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0570a12">
�����Ҳ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�᤺����01",1000);
	Move("@StR*", 200, @0, @5, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��ѩ��ĽŶ��ˡ�
���ҽš�������������Ь�ӡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 500, 0, null);
	SetFwC("cg/fw/fwѩ܇�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0580a12">
��ˡ�Ѵ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ߣ��ĥФ���
//���ܥ������ڤá������¤���
//��˲�g�֥�å�������
	OnSE("se����_����_���¤�",1000);
	CreateColorSP("�}��ܞ", 2000, "#000000");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0590a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(0,true);

	FadeDelete("�}��ܞ", 300, true);

	SoundPlay("@mbgm25",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
����Һ��������
�������·����Ϸ�!!

����ǿ�࿪ͷ�����������߱��ڵ���
��Ȼ���������֮�䣬ѩ��������˾��룡

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0600a00">
��������������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0610a12">
���Բ����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 1500, Center, Middle, "cg/bg/bg022_ɽ��a_01.jpg");
	Fade("�}����100", 0, 1000, null, true);
	Zoom("�}����100", 200, 1500, 1500, Dxl2, false);
	FadeDelete("�}����100", 200, false);

	CreateSE("SE02","se���L_����_���04");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(500);
	CreateSE("SE01","se���L_�\����_�Х���_�����ɥ��_L");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
��׷�ϡ�
���۽����ҷ�ռ�Ϸ硣����������������׷�ϡ�
ֻҪ�����岽����

�����ǡ�
�����������岽֮ǰ��ѩ����ѵ�����<RUBY text="����">����</RUBY>��

{	MusicStart("SE01",1500,1000,0,1000,null,true);}
��������ľ����Ӱ�еġ���<k>���ֻ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 2000, 500, null);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0620a01">
����������!?��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0630a00">
���ǽ��У���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
��û�����ǽ��С�
�������Ժ����İ˰�ʽ������Ϊ�����������ģ�½��
��ʽ�ľũ�ʽ�������
������֮ʱ����Ħ�г�����̬��

���������������ʹ�÷��������Ծɱ���ʹ�á���ӵ
���ڶ������������
���ո�һֱ���ŵ�<RUBY text="������">������</RUBY>��Ȼ�����𡭡���

{
	SetVolume("SE01", 1500, 0, null);
	CreateSE("SE02","se���L_�\����_�Х���_�k�M");
	MusicStart("SE02",0,1000,0,1000,null,false);
}
��ѩ���Ѹ����������һ���¼�������
���������ѷ�����Ħ�г����̱���˳�ȥ��

���������֣�����ɽ·������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0640a01">
����������װ�ס�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0650a00">
�����أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
���������������۵��ּ�ϸխɽ·���ٶȿ�ȴ����ת��
�ķ����������ٶȲ���ȴ���ÿ��ƵĶ���Ħ����ȣ�
��������һ����������⣬��ʹ����Ҳװ����
���н��з���ս���ҷ�Ҳ�ܲ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0660a01">
����ô����ֻ�ܷŹ������𡭡�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0670a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
��ѩ�����ͼӦ�����Ǹ��ɡ�
��ȷʵ������ȥ�ҷ����޼ƿ�ʩ���ƺ�����ֻ����ѩ���
��Ը��ҧ����Ŀ���䱳Ӱ��է��֮��ȷʵ��ˡ�

�����ǣ�����ת������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0680a00">
��������
��<RUBY text="������">������</RUBY>׷������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0690a01">
�������������ף���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ԩ`��
//�������Ƅ�
//��������ݳ������������鳬�m����
//��������ݳ������������Ȥ�Fw�������äƤʤ��Ǥ���

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
//	SetVolume("@mbgm*", 100, 0, null);

	PrintGO("�ϱ���", 15000);
	SetBlur("�ϱ���", true, 3, 500, 50, false);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg022_ɽ��a_01.jpg");
	Rotate("�}����50", 0, @0, @180, @0, null,true);
//	OnBG(100,"bg020_ɽ�}_01.jpg");
//	FadeBG(0,true);

	CreateTextureSP("�}�ţ�100", 110, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");

	OnSE("se����_����_���S02",1000);
	CreateSE("SE10","se���L_�\����_�Х���_����_L");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Zoom("�ϱ���", 200, 2000, 2000, null, false);
	Zoom("�}�ţ�100", 900, 1200, 1200, Dxl2, false);
	FadeDelete("�ϱ���", 200, true);

	Wait(500);

	DrawDelete("�}�ţ�100", 150, 100, "circle_01_00_1", true);


	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0700a12">
����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
������Ǹо�������������Ϣ��
����Ȼ��ͷ����ѩ������յļ���������
�鴤�š�

�����롪����������ס�
������β������������֮��ľ���һ��������š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��֩��֣ӥ�ΥХ������Τ�������������ե�`�ɾ�
//��������ݳ������������鳬�m����
	SetFrequency("SE10", 3000, 1200, null);

	CreateTextureEX("�}�ţ�100", 110, Center, Middle, "cg/ev/resize/ev110_��Ƥ���������_l.jpg");
	Move("�}�ţ�100", 0, @400, @200, null, true);
	SetBlur("�}�ţ�100", true, 3, 300, 100, false);

	CreateTextureEX("�}�ţ�200", 100, Center, Middle, "cg/ev/ev110_��Ƥ���������.jpg");
	Zoom("�}�ţ�200", 0, 2000, 2000, null, true);

	OnSE("se���L_����_��ͻ�M02",1000);
	CreateSE("SE01","se���L_����_��ͻ�M04");
	CreateSE("SE02","se���L_�|��_�}��������02");
	CreateSE("SE03","se�\��_��܇_����01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}�ţ�100", 200, 1000, null, false);
	Move("�}�ţ�100", 600, @10, @10, null, true);
	Move("�}�ţ�100", 600, @-40, @-30, null, true);
	MusicStart("SE03",500,1000,0,1000,null,true);

	Fade("�}�ţ�200", 0, 1000, null, true);
	Move("�}�ţ�100", 500, @-370, @-180, Dxl2, false);
	Zoom("�}�ţ�100", 500, 1000, 1000, Dxl2, false);
	Zoom("�}�ţ�200", 500, 1000, 1000, Dxl2, true);
	FadeDelete("�}�ţ�100", 500, true);


//	Wait(500);

	SetVolume("SE03", 2000, 0, null);
	SetVolume("SE10", 3000, 500, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0502]
����������ǰ��ɽ·�ϼ��۵Ķ���Ħ�У�
����ɫ��֩��Խ��������

��Գ��֮����������ɽԳ��ר����
�����̶ֳȵļ��ܴ���֩��Ҳ����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0710a01">
������ٶȣ�
��ǧ��Ҫ��˦������

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0720a00">
�����ף���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se���L_�|��_�}��������02");
	CreateSE("SE03","se�\��_��܇_����01_L");

	CreateTextureEX("�}�ţ�100", 110, Center, Middle, "cg/ev/resize/ev110_��Ƥ���������_l.jpg");
	Move("�}�ţ�100", 0, @400, @200, null, true);
	SetBlur("�}�ţ�100", true, 3, 300, 100, false);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_�����Ƅ�.jpg", false);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	FadeF4("�}�ţ�100", 200, 1000, 1000, 0, 0, Axl3, false);
	Wait(800);
	FadeDelete("�}�ţ�100", 200, true);
	SetVolume("SE03", 1000, 0, null);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
���ֽ������������ڴ������ϵ��Լ��̶�ס��
���ƶ��ķ�ʽ���ǲ��ԡ���Ұ�ľ���任�ۻ����ҡ�
���ǣ��Թ��ڷ��е�������˵�ⲻ��ʲô��

��ȷ��Ŀ�����Ӱ��׼����̫���Ա���ս��

���ҿ���ѩ�������ת��ǰ����һɲ�ǣ�
¶���˳������ɫ��
��������ԥ����������˼�������Ƿ�Ӧ��װ�ס�

���������������������������׷�ϵģ���һ�����Ƶ�
����������װ�׵�˲����ܻᱻ���Ǵ򵹡�
��ѩ���ѡ���Ǽ�����ȫ�������������ܣ�������ô
����ġ�����ô���ã�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");
	Zoom("�}����100", 0, 1300, 1300, null, true);

	Zoom("�}����100", 300, 1000, 1000, Dxl2, false);

//�m�����ݳ�
	SetFrequency("SE10", 3000, 1300, null);
	SetVolume("SE10", 3000, 1000, null);
	Fade("�}����100", 500, 1000, null, true);
	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0526]
���Ӻͻ��������ʻ���ֱ����
�������Ȼ��Ħ�г�ռ���ơ������������ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����200", 1000, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	Zoom("�}����200", 0, 1300, 1300, null, true);

	Zoom("�}����200", 300, 1000, 1000, Dxl2, false);

//�m�����ݳ�
	SetFrequency("SE10", 2000, 1000, null);
	Fade("�}����200", 500, 1000, null, true);
	Delete("�}����100");

	Wait(1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0527]
���������ǵ�·���ϵ��˳������
��Ħ�г����ٶȼ���������ֱ����������֩���򽥽�
��׷����ȥ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����300", 1000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Zoom("�}����300", 0, 1300, 1300, null, true);

	Zoom("�}����300", 300, 1000, 1000, Dxl2, false);

	Fade("�}����300", 500, 1000, null, true);
	Delete("�}����200");

	SetFrequency("SE10", 3000, 1300, null);
	SetVolume("SE10", 3000, 1000, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text9527]
  ���ڼ������̵����ֿɼ��ľ���ǰ����·�ֱ����
ֱ�ߡ�����

��ֱ�߶Է�ռ�š�
������ҷ�������
�����һ��һ�ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����300", 500, true);

	SetVolume("SE10", 2000, 500, null);

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0730a01">
�����޽�չ��������

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0740a00">
���Ϳ����ˡ�
���������ų�˿����<RUBY text="������">ǹ����</RUBY>��ͬʱ���С���


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0750a01">
�������������ף���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_֩������¤�01",1000);

//��������
	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	Zoom("�}����100", 0, 1500, 1500, null, true);

	Zoom("�}����100", 300, 1000, 1000, Dxl2, false);
	Fade("�}����100", 150, 1000, null, true);

	Delete("�}����300");

	Wait(500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0538]
����֩���³���˿��
���ü�������˺����ա����ٶȲ����ڼ���
�ϳ�����ɽ·�Ͽ񱼵�Ħ�г���

�������׵ļ�϶���������ӡ�
�������ᴩĦ�г����ֵı�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0760a12">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
�����ǣ�ѩ���������������Ȼ��Ѱ����
�������Ե�һ˲�����������죬��ʶ���Ƚ���
��в����ɲ�Ǽ䡣

�����ַ�����
  ���������Ƴ�Ħ�а��ֲ��ڳ���İ��У��ڿ���
��������ѧͼ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􄇓ġ��Ҥ��Ҥ��
	OnSE("se���L_����_�����03",1000);
	CreateColorEXadd("�}ɫ100", 2000, "WHITE");
	CreateTextureSP("�}����100", 1100, Center, Middle, "cg/ef/ef014_���ú�܉��.jpg");
	CreateTextureEX("�}����200", 1100, Center, Middle, "cg/ef/ef013_����б��܉��.jpg");
	CreateSE("SE01","se���L_����_�z��������");

	Zoom("�}����100", 300, 1100, 1100, Dxl2, false);
	Shake("�}����100", 300, 0, 2, 0, 0, 500, null, false);

	FadeDelete("�}ɫ100", 300, true);

	Wait(300);

	Zoom("�}����200", 300, 1100, 1100, Dxl2, false);
	Shake("�}����200", 300, 2, 2, 0, 0, 500, null, false);
	Fade("�}����200", 100, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("�}����100");

	Zoom("�}�ţ�200", 0, 1300, 1300, null, true);
	Zoom("�}�ţ�200", 300, 1000, 1000, Dxl2, false);
	FadeDelete("�}����200", 300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0552]
����ϡ�
�����ߡ�

���������Ѿ��ǣ������ħ���<RUBY text="�����塡������">��������</RUBY>�ˡ�
���ҿ������ֳ����������������ƶ�û�б䣬�ͻ�����
�ӱ��������ǿϮ��

�������ܵ���Ϊ��

�����ǣ��Ұ����Ľ����͹���ȡ�

��<RUBY text="������������������������������">������֮�µĿ������ǿ��������</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0770a00">
��������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߣ�SE����������
	OnSE("se����_����_֩������¤�01",1000);
	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	Zoom("�}����100", 0, 2500, 1500, null, true);
	Rotate("�}����100", 0, @0, @180, @0, null,true);


	Zoom("�}����100", 300, 1010, 1010, Dxl2, false);
	Fade("�}����100", 100, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
���´ﰵ�š�
����Ϊ��Ӧ������<RUBY text="����">�ջ�</RUBY>˿��

�������Ǳ�ѩ���ն�ϵ���˿��
������Խ��Ħ�г���������ľ�ϵ�˿��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fwѩ܇�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0780a12">
��������������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
����̬��������ɫ���ࡣ������ɫ�ܹ����
��ԭ�������Ļ���
���������ӽ��ˡ�Ѹ�ٵء��������ӽ�����
�ҡ�

�����ù̶���ǰ����˿ǣ���Լ���
���������ڿ��С�

�����ٶȺͷų���˿���ٶȴ�����ͬ��
������֮���ȷɳ۵�Ħ�г����졪��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_��ͻ�M07",1000);


//���ȓĤäƸФ�
	CreateTextureEX("�}����200", 1100, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	Zoom("�}����100", 300, 2000, 2000, Axl3, false);
	Zoom("�}����200", 300, 1100, 1100, Dxl3, false);
	Shake("�}����200", 300, 0, 2, 0, 0, 500, null, false);
	Fade("�}����200", 200, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0593]
���Ӵ���һ˲�䡣
�������������ѩ���һ����Ȼ��������

�����ٶ�����ص����ȣ��Բ���ӻ���ӭ���󷽵ĵ�Ϯ��
����һ���ٶȼ��죬׼ȷ����׼���ҵ�ͷ�����治����
һ���Ľ�����

�����ǡ���
����ʹӵ��׿Խ�Ľ�����Ҳ������Ťת������Ϯ��һ��
�ԵĲ��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_�����03",1000);

	CreateColorEXadd("�}ɫ100", 2000, "WHITE");
	CreateTextureSP("�}����100", 1100, Center, Middle, "cg/ef/ef010_����б��܉��.jpg");
	CreateTextureEX("�}����200", 1100, Center, Middle, "cg/ef/ef012_����б��܉��.jpg");
	CreateTextureEX("�}����300", 1000, Center, Middle, "cg/bg/bg020_ɽ�}_01.jpg");

	Zoom("�}����100", 300, 1100, 1100, Dxl2, false);
	Shake("�}����100", 300, 0, 2, 0, 0, 500, null, false);

	Fade("�}ɫ100", 300, 0, null, true);

	Wait(300);

	Zoom("�}����200", 300, 1100, 1100, Dxl2, false);
	Shake("�}����200", 300, 5, 3, 0, 0, 500, null, false);
	Fade("�}����200", 100, 1000, null, true);
	Fade("�}����300", 0, 1000, null, true);

	Delete("�}����100");
	Delete("�}����50");


	FadeDelete("�}����200", 300, false);
	Wait(150);

	Fade("�}ɫ100", 0, 1000, null, true);
	OnSE("se���L_����_�z_���03",1000);
	FadeDelete("�}ɫ100", 300, true);

//�􄇓�
//�􄇓�
//�������`��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0598]
���һӳ���һ����ӭ����ѩ��Ľ�����
�����������塪��������������

���Ƶ���
���������ֻ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������å�
	CreateSE("SE01","se���L_�\����_�Х���_����å�");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFrequency("SE10", 3000, 800, null);
	SetVolume("SE10", 3000, 500, null);

	Wait(300);
	SetFwC("cg/fw/fwѩ܇�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs0790a12">
���ȡ����١������������쵰!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
������Ħ�кᷭ�ˡ�
��������������ɽ��б�桪������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE10", 2000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);


	CreateColorEX("�}ɫ100", 15000, "BLACK");
	CreateTextureEX("�}����100", 1100, Center, Middle, "cg/bg/bg020_ɽ�}_01.jpg");
	Fade("�}����100", 0, 1000, null, true);

	CreateSE("SE01","se���L_�\����_�Х���_��ܞ");
	CreateSE("SE02","se����_����_ˮ���w���z��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("�}����100", 1500, 2000, 2000, Axl3, false);
	Shake("�}����100", 1500, 0, 10, 0, 0, 1000, Axl2, false);
	Fade("�}ɫ100", 1500, 1500, null, true);

	Wait(1000);

	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(2500);

//��������`������
//���ɤܩ`�󡣴�������ޤ�����
//�����������K�ˡ�

//��ɽ��
//��������ݳ�������졢���m����
	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg020_ɽ�}_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);


	SetFwC("cg/fw/fw����_����.png");

	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/ma02/019vs0800a00">
������ˮ������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0810a01">
�������ƺ����䵽�˺��
�����˺�ͨ�����˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
���ô���ͣ��������վ��ɽ·�ϸ��ӡ�
��ɽ�����ʵ�СϪ�����а������������е����ˡ�
û�п���<RUBY text="Ħ�г�">����</RUBY>������Χ�ĺۼ�������
�����ǹ��䵽�����µĵط�ȥ�ˡ�

��ѩ�������û�����ص����ˡ�����ˮ�ж��ټ�����
����ɣ�����˸߶ȵ��䣬���ֱ���漣�ˡ�
�������Ȼ�ص��ͷ��

����ʧȥ��ʶ�˰ɣ���������һ��������
��������ϸ�����Ļ�����������ָ������Ѱ����
ʲôһ���䶯�š�������ؿ��ź��ϵ�����
��������Զ�������ϣ����Ųص����ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0820a01">
��������ô�죿��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0830a00">
������������Σ�հ�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0840a01">
���ǵġ�ֻҪ��������Ϳ�������������û
ʲôΣ�ա�
�����ҿ�����Ҳû�й��ۡ���Ҫ��ո���˵�ģ�
������ֻ�ֽ��𣿡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0850a00">
�������������ˡ�ˤ�������Ӽ�������
�������ˡ�
������˵���ǳɹ�ʹ��ɥʧս�����˰ɡ�
����Ҫ�ٽ��й����ˡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0860a01">
��˵��Ҳ���ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/019vs0870a00">
���ؿӵ��ɡ�
���Ҳ����뿪̫��ʱ�䡣��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/019vs0880a01">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
������̫���Ϳ쵽���Ϸ��ˡ�
�����Ҫ������֮ʱ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//��ܞ�Q
//��������ݳ�������졢���m����
	ClearWaitAll(2000, 1000);

	Wait(1000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg005_ɽ��_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm24",0,1000,true);

	StR(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660a]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0890b05">
��ι���֡������ȵ��ң���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);

	StL(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660b]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0900b06">
�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,true);

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660c]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0910b05">
��ʲô�����ﰡ��
��үү����˵����������ɽ�Ϻ�Σ�գ�
��Ҫ��Զ·Ҫ�Ͽ�ؼҡ���


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0920b06">
���������ô����������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0930b05">
���ǿ�����Σ�հ��������ǵģ���
�����Ļ�������


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0940b06">
���ҵ��ˣ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0950b05">
��ʲô�ҵ��˰�����
������������ʲô����


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0960b06">
���ˣ�
�����ˣ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0970b05">
������������������


//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0980b05">
������������


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs0990b05">
��ѽ��
�������ۣ������ء�����ô����ô�죿��


//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1000b05">
�����ʣ��������ʣ���û�°�!?��


{	NwC("cg/fw/nwѩ܇�.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs1010a12">
������������


{	OnSE("se����_����_����ߵ��",1000);
	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1020b06">
��ι��ι��
���������𣿡�

//���ڤ��ڤ�

{	FwC("cg/fw/fw�դ�_�n��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1030b05">
���֡��֣�
����ס�֣���


{	NwC("cg/fw/nwѩ܇�.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs1040a12">
�������ء�����


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1050b06">
�����ˡ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1060b05">
������������
���롢���ʣ�ιι����


{	NwC("cg/fw/nwѩ܇�.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs1070a12">
��������������


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1080b05">
��������ô�죿
����֮�Ȱ����Ӻ���Ū�����Ƚ�
�ðɡ�����


{	OnSE("se����_����_����ߵ��",1000);
	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1090b06">
���填�填
������ô�ˡ�����

//���ڤ��ڤ�

{	FwC("cg/fw/fw�դ�_�n��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1100b05">
���֣���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs1110a12">
�������١��ٺ١�����


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1120b06">
�����壿��


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1130b05">
���롢������û�°ɣ�
����������ô�ˣ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs1140a12">
���ٺ١���
������û����ûʲô���˵�Ŷ��
�벻Ҫ���⡭����


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1150b05">
���͡���������ô˵����
�������൱���ص����ӡ�����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs1160a12">
���١��١���
�����ǡ���΢���������å������
������


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1170b05">
��������


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1180b06">
����å����
�����ˣ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs1190a12">
�������š�������������
���ұ������ļһ������˰�����


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1200b06">
�����š���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs1210a12">
���ٺ١����Ǹ������������ϱ���������������
�����˾�Ҫ�����𡭡���Ȼ�Ļ�������<RUBY text="������">��һ��</RUBY>
��û���������𡣡�


//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs1220a12">
���١����ٺٺ١���������


{	NwC("cg/fw/nwѩ܇�.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/019vs1230a12">
������������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1240b06">
������˯���ˡ���


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1250b05">
�����š�����Ȼ��̫������ô���£�
���ǲ��ܷ����������ء���
���õġ��֣�����æ����


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/019vs1260b06">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma02_020vs.nss"


