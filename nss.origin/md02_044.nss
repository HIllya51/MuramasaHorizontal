//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_044.nss_MAIN
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
	#bg022_ɽ��a_03=true;
	#ev221_���������ԡ�Ӥ����Ĺ�_a=true;
	#ev221_���������ԡ�Ӥ����Ĺ�_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_045.nss";

}

scene md02_044.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md02_043b.nss"


//��ɽ�С�bg022

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg022_ɽ��a_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm33", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����������������С�
������Ĺ⾲����˯�š�

��Ҫ˵�����ŵĻ����ƺ��е㲻�ԡ�
������ֻ���޷��������ѡ�

���Ȳ��ļ�����ȫ�����������޷�վ����
�����ױ����˶�Զ�ľ��롣���ϵ������ˣ�
Ҳ���˺ܶ�Ѫ��

����ʶɢ�ҡ�
�����Ź��ܥԽ�����ɱ���������
ֱ���˿̴�Ȼ�ػ�����Χ��˲�䣬
������ȫ�հף����޺ۼ���

������Ӧ��û�������ܵ�һ�����ϣ�
��ˣ�����Ӧ�û���ͬһ���ҹ��ɡ�
�������֮�󼸸�Сʱ����
����ʵ�ʻ����Ǹ��̵�ʱ�䡣

������ֻʣ��ֱ������Χ��ˮ����Ȼ��������
��ܥԽ����Զ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md02/0440010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������������ô���أ�

�����������ϣ������������������ʮ���޴���
���µ������������ʣ�Ҳ������ô�ʣ�
��������Ҳ�޼ƿ�ʩ��

������Ĵ��൱���ԡ�
���Һ�����ұ���Ҫ�����¡�

�����ԣ����˼����
������Ҫ�𰸡���Ҳ����Ҫ��

������֪����
��������ʵ�Ѿ�֪������Ҳ������װ����֪����
Ƭ��Ҳ�á�

���ҵ�����������ƣ������ս���
��ǳǳ����Ϣ���������ա�

����΢˯һ�°ɡ�
��Ҫ˼�����£�������˵��

���˿̾�˯ȥ�ɣ����������Ļ��롣
������������һֱ��һֱ���ػ��Ź⡭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md02/0440020a00">
��������������������

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440030a00">
��������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������ա�������<k>
��<RUBY text="����������">˯��ĺ���</RUBY>!?

��ȷ�Ϲ�������
������˯�ˡ�

���Ӻ�ʱ��ʼ�ģ�
������������������������á�

���������������˵��ʲô�ɣ�

�����Ǻ��ǹ���Ρ�
���������˯�߱����֡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	WaitKey(1000);

//�����á������Ϥ�����

	OnSE("se����_����_һ�i", 1000);

//���ţ֣��¹���䤷���
	CreateTextureEX("��", 15000, @0, @0, "cg/ev/ev221_���������ԡ�Ӥ����Ĺ�_a.jpg");

//�����ߣ�EV��������I���ꥵ�����ز�����

	CreateTextureEX("��2", 15000, -960, -480, "cg/ev/resize/ev221_���������ԡ�Ӥ����Ĺ�_al.jpg");
	Fade("��2", 1600, 1000, null, false);
	Move("��2", 6000, -530, -80, DxlAuto, false);

	Wait(1600);

	SoundPlay("@mbgm14",0,1000,true);

	Wait(3400);

	Fade("��", 0, 1000, null, true);
	FadeDelete("��2", 3000, false);

	Wait(1000);

	SetFwL("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/md02/0440040a14">
��������������

{	FwL("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440050a14">
���ݵ�ζ����
������ζ����
���ڰ���ζ��������

{	FwL("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440060a14">
��̧ͷ��������������ľϸ����������
����ɽ�еķ��ž�ɫ������

{	FwL("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440070a14">
���������������ġ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����΢Ц�ţ���ô˵����
����Ʒζҹ���ɽ��㣬�����ſ����ۡ�

���⡣
��
������<RUBY text="��">���Ǻ�</RUBY>��

���ն��������Σ����Ǻš�
����������ԡ���¹��µ����ˣ���ʵ��á�

�����ǲ��ǿ���Ҳ����������
�����������ġ�������������

�������Ĵ������Σ�
����������Ķ����� 

������������ֵ��ΰɡ�
���ڲ�֪��ʱ�����ɽ��Ȼ���ܺ�����ڲƭ����

�������Ľ��͡�������״���ܽ��ܡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md02/0440080a00">
�������⡭����

{	FwL("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440090a14">
��ʲô����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440100a00">
���㡪����

{	FwL("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440110a00">
������������

{	FwL("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440120a14">
����ô�ˡ�
�����ǵĹ�ϵ�������ʲô����

{	FwL("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440130a14">
�������Ǽ��ˣ������𣿡�

{	FwL("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440140a00">
������������

{	FwL("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440150a14">
����ʲô��û��ϵ��˵�ɡ�
�����������������

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440160a00">
��������

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440170a00">
�����ǡ���������𣿡�

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����˵�Ļ�������˵���˿ڡ�

��ȷʵ�Ǵ�����
��������ô��Ҳ�������εĶ����ʣ���������
�ֻ��ߣ���Ϊ����ȴ�ʣ���������

���������֣����������񾭶����ߵ���Ϊ��
����Ȼ����ֵ����ҡ���

���Թ���˵����������岻����
������ü�����ž��ȵı��鷴���ҡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("��2", 16000, @0, @0, "cg/ev/ev221_���������ԡ�Ӥ����Ĺ�_b.jpg");
	Fade("��2", 500, 1000, null, true);
	Wait(500);

	SetFwL("cg/fw/fw��_�Ȑ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��΢Ц
//���⡿
<voice name="��" class="��" src="voice/md02/0440180a14">
���ǰ�����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440190a00">
������������

{	FwL("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440200a14">
����ֻ�����Ǵն�����Ρ���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440210a00">
�������㡭����

{	FwL("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440220a00">
��֪���Լ�������

{	FwL("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440230a14">
����֪������

{	FwL("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440240a14">
����֪���Լ�ֻ��һ���Ӱ����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����û���뱯̾��Ҳ���ǿ�͸��
��<RUBY text="��">���Ǻ�</RUBY>��������Ȼ����ͬ��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md02/0440250a00">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���޷���⡣
��֪���������Ρ������鹹�����������Ĵ�����

���鹹�ñ�����Ϊ������
���鹹���������Ծ�������ڱ�����ì����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/md02/0440260a14">
������˼�飿��

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440270a00">
��������

{	FwL("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440280a14">
��������˵��û��ʲô��Ҫ���յġ���

//���⡿
<voice name="��" class="��" src="voice/md02/0440290a14">
���ξ���ϣ����
����������ȻҲ������ô���ԣ�
�����ʹն�����ԣ���ȷʵ����ϣ���Ľᾧ����

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440300a00">
������ϣ��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}���¹�", 17000, -396, -130, "cg/ev/resize/ev221_���������ԡ�Ӥ����Ĺ�_bl.jpg");
	Move("�}���¹�", 6000, -172, -32, DxlAuto, false);
	Fade("�}���¹�", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������֡�
���»�֮����˸�Ű����Ĺ�ԡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���⡿
<voice name="��" class="��" src="voice/md02/0440310a14">
���������Ǵն�����ζ�ϲ�á�
������ζ�����Ǵն������Ĵ��ڡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("��*");
	FadeDelete("�}���¹�", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���ſ����֣��������ؿڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���⡿
<voice name="��" class="��" src="voice/md02/0440320a14">
���������Ǵն�����ζ��Ժ���
������ζ�����Ǵն������ǿ�Ĵ��ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���ս�˫�֣�߬��ȭͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���⡿
<voice name="��" class="��" src="voice/md02/0440330a14">
���������Ǵն�����ζ����ġ�
������ζ�����Ǵն��⼴��ʵ�ֵ����룡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���ӽ��յ�ȭ������ʳָ����һ��ͦ���š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md02/0440340a00">
������������

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440350a14">
���Ҳ���㯣�����Ϊ�Ҷ����ڡ���
����������·��һ��ǰ���������ܰ�õ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440360a00">
���⡭����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440370a14">
������Ҫȥ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݹ�", 5110, -480, -290, "cg/ev/resize/ev221_���������ԡ�Ӥ����Ĺ�_al.jpg");
	Move("�}�ݹ�", 6000, -480, -120, DxlAuto, false);
	Fade("�}�ݹ�", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����˵�š�
���������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md02/0440380a00">
������ȥ��������

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440390a14">
����
����Ϊ����Σ�Ϊ��ʵ�ֹ��Ը������

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440400a14">
������Ҫʵ�����²��䡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440410a00">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���ǡ�
������ζ�š���Ҳ���ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/md02/0440420a00">
����Ҫ����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440430a14">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440440a00">
����Ҫ�����ٲ�ɱ�ˣ�
��Ҳ��Ҫ�����Լ�������!!��

//��������
<voice name="����" class="����" src="voice/md02/0440450a00">
��������塪����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440460a14">
�����������𣿡�

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440470a00">
����������

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440480a14">
����������������

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440490a14">
��������ͣ����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440500a00">
���⣡��

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440510a14">
����Ϊ��ϣ��������ǰ�С�
�����������Ҷ���֪������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440520a14">
�����ǹ���Ρ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440530a00">
������������

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440540a14">
�������޵Ļ�������ս���ޡ�
�������Ļ��ض���ʵ��Ը������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
��Ը����

����ġ�������Ը����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/md02/0440550a00">
�������ס�����

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440560a14">
���š���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440570a14">
���������ߵĸ�������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440580a00">
��������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440590a00">
��û���ˡ���
������������ĸ��ס�����

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440600a14">
��������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440610a00">
����Ң���˲�û�ܾ��㣡
��ȥ���Ļ���һֱ����ӭ����ġ�����

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440620a14">
���Ҳ��ǿ������档��

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440630a14">
�������Լ����Ҹ��ס�
�����Ϲ�����Ů������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440640a00">
����Ҳ������

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440650a14">
����ʵ���𣿡�

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440660a00">
������������

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440670a14">
��������˵��һ������Ҫ��������ʱ�����ԡ�
������Ҳ�ܽ������ס�
������һ��Ҳû�С���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440680a14">
�����±��ܾ�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0440690a00">
��������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0440700a14">
������ô�롣��������

//���⡿
<voice name="��" class="��" src="voice/md02/0440710a14">
�����Ը����ʵ����
�������Ǵ���ĵף�����ʵ�Ļ��������
������Ů���𡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

//���^ȥ�ե�å���餷���Τǰץ�����

	CreateColorEX("�ۥ磻�ȥ����ȣ�", 5000, "WHITE");
	Fade("�ۥ磻�ȥ����ȣ�",300, 1000, null, true);


}

..//������ָ��
//�Υե����롡"md02_045.nss"