//<continuation number="1380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_007.nss_MAIN
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
	#bg022_ɽ��a_01=true;
	#bg025_�ӵ�ɽ�}��ɭa_01=true;
	#bg002_��a_01=true;

	#ev268_�䥯���Ȍ��Ť���һ��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_008vs.nss";

}

scene ma02_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_006a.nss"
//ǰ�ե����롡"ma02_006b.nss"


//������
	PrintBG("������", 30000);
	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);
	FadeDelete("������", 0, true);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070010a02">
������������û�����ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ڷ����Ƿ�ʹ��뿪��
��ӰͷҲ���صش�ˡ�
��������ע�⵽�ˡ��Ҵ����������˳�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se��Ȼ_��ľ_̽��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma02/0070020a00">
��������ʽ�Ĳ������𣿡�


{	NwC("cg/fw/nw������.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070030a02">
��������֪������
�����Ǹ�����ѧ�ġ���˵�Լ���ά��ʧ��֮ǰ
�Ǹ���ĳλ���˵������������㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��žž�����ֺ���Ӱת����ߡ�
�������Ի󡣶����۾�ͻȻ��������<k>����
�����˲����������ɫ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStL(300,true);


	SoundPlay("@mbgm17",0,1000,true);
	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070040a02">
���������㰡����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070050a00">
�������þò�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������һҾ��
�������������꣬Ҳ���ǳ��μ��档

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 5000, Center, Middle, "cg/ev/ev268_�䥯���Ȍ��Ť���һ��.jpg");
	Fade("�}����100", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0061]
������ò�����������ǡ�
���������ǲ���֮ǰ�������ֽ��������������͵���
����ִ֮ʱ��������

���ǵá���<k>�ǽУ�һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����100", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0069]
����ʱ���������ͬ�е������ǲ���ƽ�����¡�
����Ȼ��˵������л��������������棬
�ǲ��Ǹ����µ�л�ء�

�����ڿ���֮ʱ���Է��ȿ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070060a02">
����ʱ���¹򣬽�����Χ����
������ľ��컹���ǲ����ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070070a00">
����ʤ�̿֡�
���Ҿ����ò��Ű�æ�����Ǳ������Թۡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070080a02">
�����Ǻܻ��ҽ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����Ϊһ������Ů¶�ǵ�����һ�ڡ�
��ԭ����ˣ�����ô��Ҳ�޿��κΡ�һ����˵��������
͵�����˶����ŵò��ҽӽ��ġ�

��ʵ�����Լ�Ҳ����ô���ģ����ԶԷ���ô��
��û���ɱ�Թ��
����Ϊ�����Թ۱���Σ�յļһ�Լ��б�Ҫ��Ǹ��
����ʵ�ص���ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma02/0070090a00">
���ǳ���Ǹ����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070100a02">
�������С�
����������ô�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���Ƿ��Ǹ�������ջ����ء�ѧ��������Ů������
������
���Ӷ�֮��һ�����š�

��ԭ�����Լ����������������˵Ľ��Ҳ����
���˲��졣
���������˸��޹ؽ�Ҫ���������ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma02/0070110a00">
���ǽ�һ��С��ɡ�
���������ֵط���ᣬ����������
�кι���𡣡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070120a02">
������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070130a00">
��һ��С�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��û�лش�
��һƬ���š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma02/0070140a00">
���Ự�ж��ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0070150a01">
������˵Ҳû�ð�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070160a00">
��ʱ�ֵ���Ƥ���𣿣�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0070170a01">
����˵�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���Ӹ���ĳ������Ӱ����������ͷ�Ϸ�ʢ��֦Ҷ�䡪��
�������������Ľ��д�����
����Ȼ���������������ⷬ�Ի���
����Ůһ��ȴת�����ߣ���Ť�ؿ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070180a02">
��������������֡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070190a00">
��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070200a02">
����������֡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ظ���һ�顣
����֡�

�������������ְɡ�
�������ס���Ȼ���ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma02/0070210a00">
���ղŶԻ���Ŀ�������ҽ����������𣿣�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0070220a01">
���ǡ����ǰɡ�
����Ҳ�������á�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������������Ҳ��������
������Ϊ���ء���ô���Լ����Ǳ������ˡ�
���Ǵ���ʲô�硣

����֮��Ӧ�Բ���ʧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma02/0070230a00">
����һ�����С����
�����ǿɰ��ĺ����ְ�����

{	FwC("cg/fw/fwһ��_����.png");}
//���n܈�ꤹ��Ф���
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070240a02">
����������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070250a00">
�����ǣ����ǽ��鲻�ֱ������δ��ʧ��
�����ǳ���Ϊһ��С��Ƚ��İ�������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070260a02">
������һ��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070270a00">
����ô�ˣ�
��һ��С�㡣��

{	SetVolume("@mbgm*", 100, 1, null);
	FwC("cg/fw/fwһ��_ŭ��a.png");
	SetComic(@0,@0,15);}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070280a02">
��һ����������!!��


{	DeleteComic();
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070290a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0070300a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɭ
	OnBG(5000,"bg025_�ӵ�ɽ�}��ɭa_01.jpg");
	FadeBG(1000,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0209a]
������������������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
	OnBG(5000,"bg002_��a_01.jpg");
	FadeBG(1000,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0209b]
������������������������������������������������
������������������������������������������������
������������������������������������������������
������������������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
	SetVolume("@mbgm*", 2000, 1000, null);
	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(1000,true);


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma02/0070310a00">
�����ʧ�����һ��С�㡣
�����������־���Ĵն���������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070320a02">
����������
����������ĺ�ʧ�񡭡���װ��
���˺ü������֣�����������ɶ񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��һ���������ԣ���ֺ�������������
�Ҹп�����ص�ͷ��
��ԭ����ˣ��ȶ�������ǻ�ָ�ľ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma02/0070330a00">
���ܽ��ˡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0070340a01">
���ǰ�����
�����������������������
�����������������˫�װɡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070350a00">
��Ӧ�ð�����ϣ������Ϊ��ֱ֮�˵�Ը���ɣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0070360a01">
������û�뵽Ů��ζ֮����°ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����������������������ڼ䣬������´����˾���
�۹�ֱ����ߡ�
���������������ã��ƺ������˼����ն�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070370a02">
������Ȼ���ء�
����Ϊʲô�������ء����١���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070380a00">
��ִ�й��񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����ͬ�����������ʴ���������������
��������Ȥô����ֻ�Ǻ���һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma02/0070390a00">
�����أ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070400a02">
��ִ�й��񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�����ʵ��Ļش�
����������

��ѧ���Ĺ�������ɽ������
������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/ma02/0070410a00">
���ռ������𣿡�


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070420a02">
����˵ʲô!?��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070430a00">
��������Ҷ������׳�Ļ���
����ĸ�Ҷ���ܺ��ʡ���


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070440a02">
�����ǵģ���û��Ҫ�ش��ί�����ô˵�ģ�
��������⣡��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070450a00">
������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����Ȼ�Լ����ð˳���ˣ������ǿ��ǵ�����һ�Ŀ����ԡ�
�������Ƕ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/ma02/0070460a00">
����Ǹ�����������̽������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070470a02">
����������
�������������˻��Ļ쵰������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070480a00">
������
�������޵����ݡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070490a02">
������
����˵�����������ʵģ����ڸ��
Ȼ��������ͬ����������ô�������񣿡�


//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070500a02">
����������ش𲻾ͺ����
���һ��ɴ�ص�ͷ���񡭡�
���㲻���ö����𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070510a00">
�������á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���԰������������Ļ����ѿڶ���

������ƿ����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070520a02">
������������˵ʲô����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070530a00">
�������������͡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��ʵ���ϲ��ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma02/0070540a00">
����Ȼ��ˣ��ڲ���������ķ�Χ�ڣ�
���µ��ж�Ҫ�����������ǹ�����
������ǿ��ŵ����Ρ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070550a00">
����������û������Ծ���չʾ���
���������ǿ��Ҫ��
��ṹ�ɶԻ�����Ȩ���ֺ�����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070560a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070570a00">
����ˣ�����������ش��������⣬�����ܾ�
���µ��������������ɡ�
����û��ʧ��֮��ֵ���������ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��˵��֮���ע�⵽��
�������Һ���������ɭ���С�

��������Ҳ�������������С�
����Ϊ���㱣�ص�˵��������Ļ��������Ҳ����
��ӵ����ȨΪ��ҪĿ�ġ�

������������ĸ���̸���������ۣ��϶��ᱻ�޴�����
�������ֺ�����˽�����Ȩ��Ļ�����߾�ס���ţ���
ץ����Ҳ����֡�ʵ���Ͼ������������

������������������Ƿ��Ե��ˣ���������Ҳ�ᱻ������
��������Ϊ�á�
������˵������ǰ����Ů������������Щ��һ������
�����ı��飬������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070580a02">
����������û�������쵹����˵����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070590a00">
����л�佱����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070600a02">
��û���㡣
��������ɨĹ�ġ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070610a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
����ע�⵽���Ƕ�������Ļش�֮ǰ������ҪһС�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070620a02">
���⸽�������и�С���������ž������Ƕ�
�����ġ�ĹҲ�������
����Ȼ�������־�û��ô�鷳�ˣ�����������
����ô�����ġ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070630a00">
�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�����������鷳���ⷬ˵��û���Ӫ����
ȴҲ�����׶���
��
�����ǣ����ɵ㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/ma02/0070640a00">
��������ȥ���ӵ�;�е��������ˣ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070650a02">
�������š���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070660a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
��������������ܱߵĵ�ͼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma02/0070670a00">
����ɭ��Ӧ�������ֵ��෴һ�࣬
�����м���Ǵ��Ӱɡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070680a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070690a00">
��������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070700a02">
���ǡ��������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070710a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
������Ƶ���һ�ܵĻ�����˵�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070720a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070730a00">
������·���𣿡�


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070740a02">
���𡢱�˵��·ɶ�ģ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070750a00">
��������������ڵģ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070760a02">
���š����š���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070770a00">
�������ﵽ����Ӧ��ֻ��һ��·������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070780a02">
��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070790a00">
��������


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070800a02">
���㡢���ڻ���ʲô����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070810a00">
������������ô��·�ģ���


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070820a02">
��û����·����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070830a00">
�����ǣ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070840a02">
���������Ǹ�������ô˵�ء�
����·�����ˡ�����΢פ�����;�ɫ
���ǿ��Եİɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070850a00">
�����Եġ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070860a02">
��Ȼ�������ߵ�ʱ��һ����Χ��ͻȻ
��֪���Լ��Ǵ��ı������ģ������³���
�İɣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070870a00">
�������С���


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070880a02">
���㡢�㡢����쵰����Ȼ�����ô�ɴࡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����ִ��Ŷ��¡�
����֮���Ҵ��°�������̬�ĺ��ġ�

��Ȼ����ʵ˵�����������ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/ma02/0070890a00">
�������֮����·�հɡ���


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070900a02">
��ʲô�����֮��
���������ԣ��ҲŲ���Ŷ!?��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0070910a01">
���������Եȡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070920a00">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
��������ͻ�ز��졪����˵���Ҳ��������
���ҽ�ע����ת�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��������
<voice name="����" class="��������" src="voice/ma02/0070930a01">
���������ɣ�
����ɭ�����ں�Σ�ա�Ҫ������������·����
�һεĻ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070940a00">
��ԭ����ˡ�û��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
������Ǻܺ���
�����Ǻ͵ط���Աײ�����Ż������ء���Ȼ������
��ɱ����Ҳû��ƽ�����µı�֤��

��ϣ�����ܾ����뿪ɭ�֡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070950a02">
��ι�������ã��������ˣ��Ҽ�û����·
Ҳ����·�ա����Ǹ�����ֻ���޷����ƽ�����Ԫ
������С�ɶ���Ԫ����ν��ͼ���������ƭ�е�
��ѧ�ϵ���ߡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070960a00">
����������ĵ�һ����Ҫֱ�Ӳ�֢����


{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070970a02">
���������飿��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0070980a00">
�����С�㡣
����֪����������ô�߲��ܵ������𣿡�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0070990a02">
��ֱ�ߡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071000a00">
�����Ǹ��������ԵĻش���������͸�Խ��


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071010a02">
����ղ���û���ĵװ��ҵ�ɵ����!?��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071020a00">
����������ӵ�ֱ�߾���Լ��һ���幫�
����ķ����Ǳ���Ȼ�����Ǹ�����
Լ�˹���Զ������ڡ�
����ô����������Լ������ڵ����𡣡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071030a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
����������������һ�����
��Ȼ��ָ���뱱��ȫ�෴�ķ���С��˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071040a02">
���ϼ�������𡭡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071050a00">
��Ϊ��ÿ�仰�����������������ء���


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071060a02">
����������˵��ô��!?��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071070a00">
�������ˡ�
��û�취����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
����������֣�ָ�Ŵ��ӵķ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/ma02/0071080a00">
���볯�������ֱ�ߡ�
���Ǳ��Ǵ��ӡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071090a02">
���š��š���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071100a00">
��֪������
��һ��Ҫֱ�ߡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071110a02">
��֪����������
�������ľʱ���ǻ����ġ����ܿ��԰ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071120a00">
�����С���

{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071130a02">
������!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071140a00">
��������㸻�������Ե��˾���ת����
�϶�Ҳ����·�ġ���

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071150a02">
������˵��ʲô�������ˣ�
������Ҫ����ô��!?��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071160a00">
�����ԵĻ�������ȥ����


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071170a02">
����ô����!!��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071180a00">
����ô����������ȡ�������ԣ�
�ѵ�·����ľȫ����ƽֱ��ǰ���ɡ���


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071190a02">
�����������ܰ�!?����˵�ⲻ�ǻٻ�ɭ����
�����㲻��ô�����ҳ����ǡ����Ǳ�ֱ��
���������� ������·��!!��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071200a00">
����˵���Ǳߡ�ʱ�������Ѿ�������ʮ�ȣ�
��ȫû��˵��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071210a02">
������ֻ��ֻ���е������ѡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071220a00">
�������еġ���


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071230a02">
������һ����Ȼ�ı����������˵���ֻ���
�����ˡ����ټ����������·���£�
���������л����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071240a00">
�������Ļ��м�������л�⡣
�����Ǳ�����Щ����������ע��������ֱ���ϡ�
���Ѿ���ƫ�ˡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071250a02">
��Ŷ��Ŷ����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�i��04_L");
	MusicStart("SE01",0,1000,0,800,null,true);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0558]
//��������
<voice name="����" class="����" src="voice/ma02/0071260a00">
���ԣ�������ֱ�ߡ�
��Ȼ�����߶��ǿ�������


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071270a02">
������!!��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071280a00">
��ʱ��ʱ��ͷ�������ȷ�������Ƿ�������
���󷽣�Ӧ�ÿ��Գ�Ϊ��ֱ�ߵĻ�׼������


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0071290a02">
�����Բ��ῴ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);

	SetVolume("@mbgm*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
����������������������

��������ѧ������Ӱ�ӽ��н�Զ֮ʱ��
����������ʵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��������
<voice name="����" class="����" src="voice/ma02/0071300a00">
������ô������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0071310a01">
����˵�ǹ����ܷ��ߵ������𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0071320a00">
���š���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0071330a01">
�����ߵ��ɣ�
����������Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
������ľ��ʱ��ʱ�ֵ����ˡ�
���Ƕȵ�ƫ���Ѿ���������ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);

	CreateColorEX("�}��ܞ", 15000, "#000000");
	Fade("�}��ܞ", 2000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	WaitKey(2000);

//��С̫��

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/stС̫��_ͨ��_˽��.png");
	FadeStL(0,true);

	FadeDelete("�ϱ���", 1000, true);

	SetFwC("cg/fw/fwС̫��_�侲.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0071340b35">
������������

//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0071350b35">
������Ľ�����һ�Ρ�
�������Ľ�����һ�Ρ�
��������������������Ӫ������

{	FwC("cg/fw/fwС̫��_����.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0071360b35">
��û������Ľ�����
���������Ѿ���ͷ�������衣�����ˣ�

{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0071370b35">
����ô����
�����������Ϸ�Ľ��֮�ڡ����һ���Ͳ���
�����ˡ���Ա���˱�ɱ��Ҳ���鷳��

//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0071380b35">
��ȥӭ�Ӱɡ�
�����󡭡�������ξ������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"ma02_008vs.nss"

