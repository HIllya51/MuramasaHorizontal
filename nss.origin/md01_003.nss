//<continuation number="1250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_003.nss_MAIN
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
	#bg093_ɽ�g�δ�a_01=true;
	#bg023_��Դ̫�μ�_01=true;
	#bg023_��Դ̫�μ�_03a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�։�=true;

	$PreGameName = $GameName;

	$GameName = "md01_004.nss";

}

scene md01_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_002.nss"

//���r�Ĵ�
//����g
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg093_ɽ�g�δ�a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	Wait(500);

	StR(1000, @30, @0,"cg/st/st��g_ͨ��_˽��.png");
	FadeStR(500,true);
	Wait(500);

	SetFwC("cg/fw/fw��g_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//����g��
<voice name="��g" class="��g" src="voice/md01/0030010b50">
��������ӣ���Ҳ�ܾ�û�����ˡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030020b30">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @-60, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(500,true);
	Wait(500);

	SoundPlay("@mbgm05",0,1000,true);

	StCL(1000, @90, @0,"cg/st/st��������_ͨ��_˽��.png");

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0015]
//��������
<voice name="����" class="��������" src="voice/md01/0030030a01">
��������ˣ���ӭ����

{	FwC("cg/fw/fw��g_ͨ��a.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0030040b50">
��Ŷ�����Ҽ��������ϵ��ˡ�
��Ϻ�ĳ������ǿ찡����

//����g��
<voice name="��g" class="��g" src="voice/md01/0030050b50">
���ı��Ǵ�����Ů�����ı�����Ů��
����С�ľͻ�������

{	FadeStCL(300,false);
	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0030060a15">
������˵��̫�����ˡ�
������ֻ�Ǻ��ӡ���

//������������
<voice name="��������" class="��������" src="voice/md01/0030070a15">
������ļ�����Ҳ�Ÿո����˻������ѡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0030080a01">
���������ұ�������΢����һ�㡣��

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0030090a15">
������

{	FwC("cg/fw/fwʼ����_ͨ��.png");}
//��ʼ���ޡ�
<voice name="ʼ����" class="ʼ����" src="voice/md01/0030100b29">
���Ǻǡ�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030110b30">
�����ƺ��ܳ�ʱ��תս�ڸ����ء���

{	FwC("cg/fw/fw��g_ͨ��b.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0030120b50">
���š�
�������Ǽһ�ı�����ɵ����ƣ��������һ
���ˡ���

{	FwC("cg/fw/fw��g_���d.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0030130b50">
���ȵ�������Ϊ��²�����ź�Ҳ������ѩ��
Щ��ɡ�
��������Ů�����źޡ�����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0030140a15">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0030150a01">
��������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030160b30">
�������Ǳ���λ�ǣ���

{	FwC("cg/fw/fw��g_ͨ��b.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0030170b50">
��Ŷ��
����λ�ǰ���ɽ��ѧɮ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���։����թ`���У�
	DeleteStA(300,true);

	StR(1000, @0, @0,"cg/st/resize/st�։�_ͨ����_˽��a.png");
	FadeStR(500,true);

	Wait(500);

//�����։���੤�Ϥ�䥫�����ȡ�
//���ձ��Z�����֤�����ˡ��Υ���`����
	SetFwC("cg/fw/fw�։�_�^����].png");

	#voice_on_�։�=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030180b16">
���ҽ����Ρ�
�����ָ�̡���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030190b30">
��������

{	FwC("cg/fw/fw��g_ͨ��a.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0030200b50">
������ѧʶ�ǳ�Ԩ����
�����������������ϳ���Ļ����ѯʦ����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030210b30">
���롭����

{	FwC("cg/fw/fw��g_ͨ��a.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0030220b50">
����Ҳ�����Ҽ���æ��
��֮ǰҲ������������������ʱͻȻ��˵����
����¡�����

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030230b16">
������˵�����Ŀ�������ߵĽ��С�
������������ر����Ȥ����

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030240b16">
�������������Э���㡣��

{	FwC("cg/fw/fw��g_ͨ��a.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0030250b50">
�������������˵�������Ļ�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030260b30">
��Э����
���������ж���ľ����𡣡�

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030270b16">
�������Ҳ��޶���ļ�����
�������������˹��������硣��

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030280b16">
�����˽⵽�˸���ѧ�ʡ�
��Ҳ�����˺ܶལ�С���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030290b30">
����������

{	FwC("cg/fw/fw��g_ͨ��a.png");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0030300b50">
������ء�
������Ӧ�û�û���ҵ�����ķ����ɣ���

//����g��
<voice name="��g" class="��g" src="voice/md01/0030310b50">
����Ϊ���ԣ�����һ�����ε�֪ʶ��Ӧ��Ҳ
ûʲô��ʧ����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030320b30">
���š���
����Ȼ������˵����Ҳû���ɾܾ�����

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030330b30">
�����������������Ǹ�ƶ��Ĵ��ӡ�����ϰ��
�ھ������������˵��Ӧ�û�����಻�㡭��
����ʹ����Ҳ�����𣿡�

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030340b16">
����Ҫ����
��лл�㡣�������ˡ���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030350b16">
�������ա���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030360b30">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg023_��Դ̫�μ�_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm23",0,1000,true);

	Wait(500);

	SetFwC("cg/fw/fw�։�_�^����].png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030370b16">
���������ˣ����ó������𣿡�

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030380b30">
���������ʵú���֡�
��������ó����㣬��ô������ɽ��еĶ��졣��

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030390b16">
����ô��ش�
����ʮ������ǧ��پ�ʮ���������ǧ�İٶ�
ʮһ����ʮ������ǧ��ʮ�ţ�Ȼ���ٳ�������
�ö��٣���

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030400b30">
������������һ�¡�
������������ľ������

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030410b16">
���ǺǺǡ�
����ʹ����ľ��Ҳ��ҪһЩʱ�����õ��𰸰ɡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030420b30">
����ҪһЩʱ�䡣��

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030430b16">
��������ʹ������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Pӛ������
	OnSE("se�ճ�_��_�U�P�Pӛ01",1000);

	Wait(1500);
	SetFwC("cg/fw/fwʼ�����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0035]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030440b30">
����������ʲô��
������������ĳ�ּǺš���

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030450b16">
���������õ����֡���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030460b30">
�����֣����������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030470b16">
���ԡ�
�������һ������Ƕ��������������������
������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030480b30">
������
����ô�����Բ�ļǺ���ʮ�𡣡�

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030490b16">
�����ԣ�������ˡ�
���Ǹ���<RUBY text="�ڣ���">��</RUBY>����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030500b30">
���㣿��

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030510b16">
����ʾ�ޡ�
����ʾ�հ׵����־���<RUBY text="�ڣ���">��</RUBY>����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030520b30">
��������������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030530b30">
��û�еĶ�����Ϊ��Ҫ�����ֱ�ʾ����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030540b16">
��������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0030550a15">
����������?!��

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030560b30">
����ô�ˡ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0030570a15">
��ʲô��ô�˰������ף�
�����Ǻ������ķ��ְ�!!��

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030580b30">
��ʲô����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0030590a15">
�����δ��ˣ�������������ֱ�ʾʮ����
���ѵ�����������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030600b16">
���ԡ�<RUBY text="һ">��</RUBY>��<RUBY text="��">��</RUBY>����������
��������ȷ�ı�ʾ�����������ţ����Ǻ���д����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0030610a15">
�����ף�������
�����������֣����ղŵļ��㡪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//���ե��`�ɥ���
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 500, 1000, null, true);

	OnSE("se�ճ�_��_�U�P�Pӛ01",1000);
	$�Еr�g=RemainTime("@OnSE*");
	WaitKey($�Еr�g);

	FadeDelete("�}ɫ�\", 500, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������������
<voice name="��������" class="��������" src="voice/md01/0030620a15">
��һ����ʮ������ǧ�˰���ʮ����
��һ˲�䡭����

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030630b30">
������������

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030640b16">
������ء�
�����ʹ�����õ����֣�����ͻ��÷���ɡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030650b30">
��û����ʮ��ǧ��Щ���֡���
����һ���ţ��ټ���<RUBY text="�ڣ���">��</RUBY>��Ϊʮ�����֣�
��ʾ������������

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030660b30">
���������������ܴ������ټ���Ĺ������𣡡�

{	FwC("cg/fw/fw�։�_�^����].png");}
//�룺�������Τ򣩡�090930��
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030670b16">
����ʵ�������ֺͼ��㷽�����ڸ��ӹ��ϵ���
�����Ѵ�����͡�
����Ȼ��ʽ���б仯������

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030680b16">
�����ǣ��󲿷��˶��޷�������еļ�ֵ��
���ܹ������ˣ�Ҳ�ǽ����ռ����������������

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030690b16">
�����Բ�δ���ռ�����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030700b30">
��������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030710b16">
��ǧ�����Ӵ���˰�������֪ʶȴ����û��
����������кܶࡣ
����Ȼ��Ҳ����ȫδ֪��֪ʶ����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030720b30">
����Щ֪ʶ�����δ���Ҳ֪���𣿡�

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030730b16">
���ǡ���

{	FwC("cg/fw/fwʼ�����_����.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030740b30">
�������̸��ᣡ
�����������ꡣ��̸���ɡ���

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030750b30">
����һ������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030760b16">
����Ҫ������ͷ��
���һ�̸���ġ�������Ϊ�˶�������

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030770b16">
��Ϊ�˰������е�֪ʶ���̸��������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

	Wait(500);

//���r�Ĵ�
	OnBG(100,"bg093_ɽ�g�δ�a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�}ɫ�\", 2000, true);

	SetFwC("cg/fw/fw�։�_�^����].png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030780b16">
���������ˡ�
����Ȼ��Ҫ׷�����ߵĽ��У��Ǿͱ����˽���
��<RUBY text="����">Դ��</RUBY>����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030790b30">
������Դ������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030800b16">
�������������ĸ�Դ������
���ҽ����Ϊ��������������������

{	FwC("cg/fw/fwʼ�����_����.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030810b30">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0030820a01">
�����������Ǵ�ʯ���Ǹ�����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030830b16">
���ǡ�
����ָ��ʯ�໥�������໥�ų����������

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030840b16">
���������������𣿡�

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030850b30">
����������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030860b16">
���������������嶼�߱���
���������������������������

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030870b30">
����������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030880b16">
�����ڣ��Ҽ�����ʯͷ��
���ſ��֣��ͻ���������

{//������
	OnSE("se����_����_ʯ����Ȥ�",1000);
	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030890b16">
��ʯͷ������档��

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030900b30">
��������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030910b16">
������ǳ�������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0030920a01">
��������������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0030930a15">
������������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0030940a15">
������˵������������䣬����Ϊ��صĳ���
����������������

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030950b16">
���ԡ�
�������������úܿ��ء���

{	FwC("cg/fw/fw��������_����.png");}
//���y�����
//������������
<voice name="��������" class="��������" src="voice/md01/0030960a15">
��������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030970b30">
��������ô�������أ���

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0030980b16">
��������ؽ�ϣ������������������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0030990b30">
�����أ���

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031000b16">
�������岻�ϵط��飬������µĶ�������
�Ѿ������ٷ���Ķ�������Ϊ���ء���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031010b16">
������������زġ�
��������ֶ�������ϣ��ܲ��������ݡ����
���桢�Լ�<RUBY text="����">����</RUBY>��
������������Ϊ��������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0031020b30">
�����ǡ���������Ϊ�𣿡�

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031030b16">
��Ҳ��������˵����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0031040b30">
������������
�����д�������������������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031050b16">
���벻Ҫ��ǿ�Լ�ȥ��⡣
������ͼ��л����ͷ�Ե���ת����

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031060b16">
��ѧ��û�н�����
����ѭ�򽥽���ѧϰ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
//������
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

	Wait(500);
	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);
	FadeDelete("�}ɫ�\", 2000, true);

	SetFwC("cg/fw/fwʼ�����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0031070b30">
��֮ǰ��������ꡭ����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031080b16">
���ţ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0031090b30">
�����δ��ˣ�Ϊʲô�Խ��и���Ȥ����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031100b16">
����������𡣡�

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0031110b30">
�����ɭ��������꣬Ϊ�λ�ִ�ŵض���
�߸���Ȥ����
�������һ���ȫ�޷���⡣��

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031120b16">
���ܵõ�����˿佱�����ҵĹ��١�
�����ǣ��һ�ʲô�����˽⡣��

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0031130b30">
����ô�ᡣ��

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031140b16">
��������ʵ��ʲôҲ��֪����
����������֪�������飬����ң���ɼ�
֮������

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0031150b30">
����ʹ�����δ��˵�֪ʶ��Ҳ��ң���ɼ��𣿡�

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031160b16">
�����ָо���������Ѱ�����뺣�е�һ��ɰ�𡣡�

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0031170b30">
�������޷����󡣡�

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031180b16">
��<RUBY text="�������">��֮��</RUBY>����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0031190b30">
������

{	FwC("cg/fw/fw�։�_�^����].png");}
//�룺������090930��
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031200b16">
����֪���ںδ���
����֪�����Ρ�����

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031210b16">
���������š�
�������Ǹ�������ĳ���Ƿ�����յ�Ψһ
����������ô����

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031220b16">
���������֮��Ӧ����Ѱ��֮���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0031230b30">
������������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031240b16">
���������ˡ��������㣬���ҵ�������
������Ϊ�˼����㣬�������ⶫ����ͷ֮����
�ġ���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0031250b16">
��������������Ұɡ�
�����������ǻƽ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	ClearWaitAll(2000, 3000);


}

..//������ָ��
//�Υե����롡"md01_004.nss"