//<continuation number="910">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_004.nss_MAIN
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
	#bg045_���ӘS�ǹ������g_01=true;
	#bg064_���ӘS���ڵ�_01=true;
	#bg002_��a_01=true;
	#bg002_��a_02=true;
	#bg064_���ӘS���ڵ�_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�����@��=true;

	$PreGameName = $GameName;

	$GameName = "mb02_005.nss";

}

scene mb02_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_003.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg045_���ӘS�ǹ������g_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	StL(1000, @0, @0,"cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0040010a09">
�����ƣ�Ҫ֪ζ��Ī���ۡ�����


{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb02/0040020b21">
������������


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0040030a09">
���ֲ����ж����ء�
�����ǵġ�����


//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0040040a09">
�����塣��


{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb02/0040050b21">
���ڡ���


{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/mb02/0040060a09">
�����������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//�������Y��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg064_���ӘS���ڵ�_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb02/0040070a00">
�������Ǹ����öԸ��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040080a02">
�������Ǹ������а��ˡ�
�����˵��׳�ˣ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��һ���ƺ���û������
����֪�ǲ��Ƿ��ŵ���������һ�����ã�����δ����
���У�������ɢ��������֮�С�

�������Ǵ�����ͨ����������������ǵĵ�·֮һ��
��֪�Ƿ���Ϊ��·��᫣�û������ͨ���ߡ�
�����Ǳ�������Ŀ�Ĳ�ѡ������·�������ж�û��

��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb02/0040090a00">
��һ����
������������һЩ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040100a02">
�������ǡ�
����֪��������ô������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040110a00">
���²���Ը�𣿡�


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040120a02">
����������ζ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����֪���ǲ��Ǿ���������һ������ͷ��

��Ǳ���Ӫ����Ȼ���������С�
����һ����ֱ���������ֱ����Ů��˵����ȷ���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb02/0040130a00">
��������ս�پ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ٴ�ȷ��һ��ʼ�ͼƻ��õķ��롣

������̫��ʱ�䣬ֻ����ȡ����һ;��
��Ҳ������һ��һ���˵����Ρ��������Ҳ���ʺ�����
������ϸ�µ�����

�������ܿ��ᱩ¶��������������֮ǰ��Ѹ�������
���뿪���
��������õķ��������Һ�һ�����ֶ�������˵��

����Ȼ�����˾�����׼���������ֱ���������ս��ʽ��
�޷����⣬��������һ��ʼ��������֪�����ɡ�
��������˵�����ڴ���<RUBY text="��������������">ĳ�̶ֳȵĴֱ�</RUBY>��

��Ϊ���ܸ��轾������������������ӭ��һ�Ǻݻ�����
����Ҳ��������ͬ���߽��׵�չʾʵ������˼������
���������������Եס�
��������û�аɣ��Ⲣ��רҵ�͹�����Ա��

�������ǣ���ν������ڴ�����ظ����ڼƻ�֮
�С���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040140a02">
���ա���������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040150a00">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ͻȻ���˺��ҵ����֣����Ҵ�˼����������

���������Լ����л����ĳƺ����Ļ�����һ�㣬һ��
˫��糺죬����ٶ��������������ҵ�Ŀ�ġ�
����ָ���·ǰ����

���и�Ů�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���@�ӊ�
	StC(1000, @0, @0,"cg/st/st�@��_ͨ��_˽��a.png");
	FadeStC(500,true);

	Wait(200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���������������
�����Ⲣ��ֵ�þ��ȡ���ؾ����ﲻ����֮����
��ͬ��Ů�ԡ�

��һ��Ů������ѡ�����վ��ĵ�·�ߣ�
Ҫ˵�Ź�Ҳ�Ź֡���
������Ҳûʲô����ֵġ�һ�������ߵú������

��Ȼ������ʵȴ�ǣ��ҵ�ע�������Ǹ�Ů����������

��������װ�����졣
���ǳ����صĴ�硭��ȴ�ֺ�����Ůʷ���ֹ�������
�����Է�װ��ͬ��

�����ֲ������۵�װ����
��
�����ԣ����ǽ黳��һ��ɡ�

����װ���Ա���һ���˵���ݺ͵�λ��
��������Ů�˵�װ����ȴ��������Щ��

����ò���������ʸ��ţ�����һ���������Ǵ�ҹ��㡣
����װȴ������֮��㣡�
���������Ȳ�������ڲ���Ů�ٺͳ���������Ů��Ҳ
�����������١�����ɨ�������������ۡ�

�����ڹ��ɵ���һ���ϸ�涨ÿ���˵ȼ���ְ���С
��ᡣ����ȴ�������κ�һ�����䡣
�����������ϡ��������ˡ����Լ����ǰ���������̬
�ȡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb02/0040160a00">
���ǲ��ǡ�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���ӿ�ʼ˼���������ж������˼����ӡ�
���������ɻ�

����Ϊ�����޵Ĺ�������Ӧ�Կ��ɵ�Ů����֮���ʡ���
����ʵ������������޿���֮�����ǳ��ڵľ���֪��
���ˣ�ֻ�������Щ���⡣

����������ˣ���ı��Ӧ�Կ��ܻ���������ĺ����
��һ������Ϊ�����˶�����һ�档
��
������������ȿ��˿ڡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�@��_ͨ��a.png");

	#voice_on_�����@��=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040170b28">
�������ǡ���


{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040180a00">
��������ʲô�鷳����


{	FwL("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040190b28">
��Ҳ���������鷳������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��Ů��������ɬ�ƵĴ���������
���Ҳ��ɵ�˳������Ŀ�⿴ȥ����������Ů�˵Ľ��ϡ�

��������ô�������ʺ���ɽ·�ı���Ь�ӣ�������մ
Ⱦ�ɲ�ɫ��
�������������ղ�˵�Ĳ������Ļ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mb02/0040200a00">
���Ұ����г��ɡ�
�����������һ���𣿡�


{	FwL("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040210b28">
��������ġ��������ˡ�
��������������ˡ���


{	FwL("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040220a00">
�����ǣ����Ľš�����


{	FwL("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040230b28">
�����Ͼ͵��ˡ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������˵����Ŀ�ĵذɡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�@��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040240b28">
������Ӧ�á����쵽�ˡ���


{	FwL("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040250a02">
��Ӧ�ã���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��һ��û�зŹ�Ů�˺����Ĵ�ǡ�
��Ů��û�лش𣬱ܿ����ߡ�

��˫��΢�졣

������Ŷ��
��ԭ����ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb02/0040260a00">
��������̫���ˡ���


{	FwL("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040270b28">
�������ǰ���
��û����


{	FwL("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040280a00">
����Ҫȥ�����


{	FwL("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040290b28">
������լۡ������


{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040300a00">
����������
��������ʿ�����پ������Ŵ��˵�լۡ����


{	FwL("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040310b28">
���ǡ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����������ص�����
�����ǿ������ֲ�������ҵļҾ졭��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mb02/0040320a00">
����ô������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��������ͷ�ۡ�
����Ȼ���Ʋ�լۡ���ڵĴ��λ�ã����Ǿ���ص�
�Ҳ������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040330a02">
������լۡ����
���������Ǹ��𣿡�


{	FwL("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040340a00">
����֪������


{	FwL("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040350a02">
��֪����
���ղſ�������ʱ��˵��������լۡ����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��һ��û˵���ڵĲ��ִ���ǡ��׵�������׼���ĳ���
ʾ��ͼ���ɡ�
���ƺ��Ǹղ������ῴͼ��ʱ�򣬼��˲��ٵط���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mb02/0040360a00">
����ô��Ůʿ��
�����Ǹ�����·����


{	FwL("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040370b28">
������ʵ�ڱ�Ǹ��
���鷳��λ�ˡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����
//����Ϧ��
//�����饹���������۩`��
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg002_��a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1500, true);

	WaitKey(1000);

	SetVolume("@mbgm*", 2000, 0, null);
	OnBG(2000,"bg002_��a_02.jpg");
	FadeBG(4000,true);

	CreateSE("SE01","se�M��_���ߥ���_���饹�Q����");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	StL(1000, @0, @0,"cg/st/st�@��_ͨ��_˽��a.png");
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_��װ.png");
	FadeStA(0,true);

	OnBG(100,"bg064_���ӘS���ڵ�_02.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mb02/0040380a00">
��������������ˣ�����������·��ë������


{	FwC("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040390a02">
���š��Ų��ǣ�
���ǵ������ת������鹹���۱�����
�ҵļ��㡭������


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040400b28">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
��������·��Ů��Ϊ���˴�·ʱ���ͻ�����ѧ��Ӧ����
�³���������·���ˡ�
��Ҳ����˵��ǰ���ٻ����ˣ�����Լ�һȥ������

���ع��������Ⱦ��糺졣
��������ѻ������ʹ��Ĥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/mb02/0040410a00">
����ʵ������Ůʿ��
���������������鷳����


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040420b28">
�����������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040430a02">
����Ҫ����
����Ρ������һ��������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040440a00">
���ڵ��ϲ�����ӣ�������ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��û���ˡ�

�����������˲�����·��Ů����Ȼû������ȴ¶��һ��
�޷�����ģ��˼���š�
������ܲ³�������ʲô��

���ȸ����𰸡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/mb02/0040450a00">
����ʵ�������ǽ���ոո��Ρ�
��������Ϥ���ڵĹ��졣��


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040460b28">
����������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040470a00">
����Ǹ���ҽ��ܳ��ˡ�
������������ְ��Ա�ľ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040480a00">
����λҲ�ǣ�����һ�¡���


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040490b28">
�����ǸԲ�ӣ�ӡ�
��û����λ�Ա��������Ҳ�ʧ���ء���


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040500a02">
�������Բ�����


{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040510b28">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��Ҫ˵�Բ�����
����ǰ��ʱ���ڻ�������������ѡ�������ʨ�Ӻ���
���Ļ����ܣ��ձ������ġ����Ǹ��Բ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/mb02/0040520a00">
�����ǵ��������ٹ���ǧ�𣿡�


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040530b28">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040540a00">
���⡭��
���Ҳ�֪��������ݣ�����ð������


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040550b28">
������������˿�����
�������Ҳ�����������˽��Ů���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���Բ���Ů������һ˿�����˵����
����һʱ��֪��ο��ڡ�һ��Ҳ�����Զԡ�

���������űߵİ��ӡ���ƫƫ���������µ����ߡ���
�Ҳ�����ɫ�ؽ����߷ɣ�ͬʱ�����е���Ƭƴ��������
������ԭ����ˡ��ֲ���һ��<RUBY text="������������">����������̬</RUBY>��

���Բ�������һ�����ӵ��������������ƥ�е�Ȩ�ƣ�
ӵ�е��������������ɻ��嵣��������ְ��
��������Ů����

����������ţ����������ȴ��������ͬ��
��ݸ߹�ȴɥʧ����
�����ǣ�Ҳ�޷��ع�����

��������������˵��ֻ�����Ǹ�������˽��Ů��������
��������ݡ�
�����Ĵ��ڣ����������������ĿҲ��������Ȼ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040560b28">
����Ҳ��һ��ǰ�ű������ݾӾ����ҵģ�
�մӺS������������û��á�
�����Բ��Ǻ���Ϥ·������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040570a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���Һ��������ظ�����һ�����ٶ�����������
���Ʋⷽ�����൱���ܵ������������ͣ�½Ų�������
�Ŀ���ʵ�����������ܲ��ˡ�

���������������������Ҳ���ɡ�
����������Ҳ������ԥ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/mb02/0040580a00">
��һ���İ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��ͻȻ��������
���ҡ�һ���͸Բ�С�㡣���������ߺ����ŵн���Ů����

�����ܶ�˭��˵����ׯ�ϵĳǶ����ǰ���֮������

���ǲ�����Ϊ֪������Ҳδ���������ǣ��������˹���
֮���ء�
�����ع¶��в����С�㣬�˿̣���ɫ��΢�����Щ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040590b28">
��������ô�ˣ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040600a02">
��������ûʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
��ͻ�������ķ��ʣ���һ������ʧ�롣
����֪���ǲ�������ʲô�����ղ�һֱע����ӣ��С��
�Ĳ����������ƺ���ȫû�뵽�Է����з�Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040610a02">
����ֻ�Ǿ��ú�����
����ô˵�أ��治����ǧ��С�㰡����


{	FwC("cg/fw/fw�@��_�ߐu.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040620b28">
��������л�佱��
��������������������������
��Ϊ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
��С�����Խ��ߵ�С��Ӧ��
��û������Щ�������ﲻԶ�ĵط�̰ͼ���ݵĹ���
��ȣ�������������Ҫ������ࡣ

������
��һ��ҡ��ҡͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040630a02">
����������װ����
�����ǡ�������������ǧ��С��һ������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040640a00">
����������������С��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
��̫ʧ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�Ť�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040650a02">
��û��û��
�����ǣ����ǵġ�����������������С��ĸо�
������ġ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040660a00">
���侲�㡣
���Ҳ����ǲ���������˵ʲô��������ȫ
����������˵ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
���ܾ��ã�����ҵ�����������͵��˶���������
����֪����ô���¡�

��żȻһƳ������ӣ��С��������ǿ���Ƶ�С��Ц
�š�
����Ȼ�����ŵ����������죬�ɻ���û��ס©��������
����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040670b28">
����Ǹ����
�����ǣ���λ��ĺ���Ȥ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040680a00">
������������ƾ������һĻ���϶����ǵ���
��Ļ����ҽ�����ϧ�ҵĸм�֮�顣��


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040690a02">
���ù���Ĩ�ǵ�˵������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040700a00">
�����Ů�˺���֣���ֻ����ͨ�˰��ˡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040710a02">
����ö��������ң��ù��֡�����


{	FwC("cg/fw/fw�@��_Ц��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040720b28">
���Ǻǡ�
����λ��Ļ�������������
����ͬ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040730a00">
���ǡ�
����Ϊ�������������ֳǻ�����һ�ա�
��δ����λǰ������Ϥ�����


{	FwC("cg/fw/fw�@��_Ц��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040740b28">
��û��
��̫����û�����������ĸо��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
��С��ģ��һ������ڶг�Ŀ���˵����
����Ȼ���ڱ�ȡЦ��������˵������Ц��

�������۾�����ļ����а��ġ�
��������֪С�㲢�Ǳ������ģ��������޷��������е�
��ҡ��

�������������ϸ��ֳ����ȵı���֮ǰŬ������ס
���Լ���
��һ���ƺ�Ҳ����ס�ˣ�ֻ�Ƿ�����һ�������ڴ��õ�
��΢���졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/mb02/0040750a00">
������������֮ǰ�����ǲ�����������
�������������ˡ�
��û�뵽��Ȼ�����������˵أ�
˵ʵ���������Լ�����˼������⡣��


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040760b28">
��ԭ��������������
�����ʮ������ɡ���


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040770b28">
����Ҳ������Ȼ�޷����λ������ڹ�������
���Ტ�ۡ�
��������������Ϥ�ĵط���Ҳ�ǿ��ն�ࡣ��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040780a00">
���ǡ�����


{	FwC("cg/fw/fw�@��_����.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040790b28">
���ر��Ǹ��ӵĵ�·����ͷ�ۡ�
����S����ͬ��û��һֱ�ڼ������Լ���Ŀ��
��Ȼ�ܺá�����ÿ�γ��Ŷ�����·Ҳ��ʵ����
���Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
�����������������֣�������կ��ӵ�����෱�ӵĵ�·
����Ҳ���Ǻ��¡�
������Ϊ���ڵо�ͻ�Ƴ���֮�ʣ������������ֽ���ʱ
�䡢��ʹ�������ɢ��

����Ȼ����ͨ�������Ҳ��������޶ȵ�ʱ���������
���ڸ�Ҫ��֮�䡭��
������ӣ��С�������ڳ��ھ�סһ���Բ���·�����Ҳ
������֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040800b28">
���Ҵ������Ҳ�ڲμ���ᦴ���֮��ȥ����
�������������
������;�о�����·����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040810a00">
������Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
�������û�Ǵ���������ֱ�߾���Ӧ�û������婖��
����
�������Ҽǵ�Ӧ������·������ֱ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040820b28">
����������
��Ϊʲôÿ��·��Ҫ׽Ū���ƵĲ��ء���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040830a00">
����ֻ��ȥѯ�ʵ�·��ͨ���ˡ���


{	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040840b28">
��ȫ����һ��ֱ·�Ļ��Ͳ�����·�ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040850a00">
��������ȷ�ǲ�����·�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
����Ҫ��˽�ͨ�ı����ԣ�������Ҫ������·����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetComic(@0,@0,11);
	SetFwC("cg/fw/fwһ��_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040860a02">
������˵���


{	DeleteComic();
	FwC("cg/fw/fw�@��_ͨ��b.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040870b28">
������������𣿡�


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0040880a02">
���ǳ���⡣
��û����·̫�ɶ��ˡ����ǲ�·�Ĵ�
�ཨ����ֱ·�������ˡ������ϲ����õ�
�����ڵ��������������


{	FwC("cg/fw/fw�@��_Ц��.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040890b28">
��û��û��
���ܺö�����Ҳ���԰������еĿռ�����ô
���ö�������������ˡ���


//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0040900b28">
���㲻������Ϊ�𣿡�


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0040910a00">
��ˡ��ֱ�Ը��˼��⣬�ҿɲ���ס��������
�ʵǼ�һ���ĵط�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
�������ضȷ�����֪�ϰ��Ķ���������Ͷ��
�������䵥�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���\
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_005.nss"