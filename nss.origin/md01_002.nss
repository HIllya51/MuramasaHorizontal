//<continuation number="1270">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_002.nss_MAIN
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
	#bg025_�ӵ�ɽ�}��ɭb_02=true;
	#bg020_ɽ�}�ӵ�_01=true;
	#bg093_ɽ�g�δ�a_01=true;
	#bg023_��Դ̫�μ�_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_ʼ�����=true;
	#voice_on_��g=true;

	$PreGameName = $GameName;

	$GameName = "md01_003.nss";

}

scene md01_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_001.nss"

//�������¡��^ȥ�ѩ`�Ȥν}�ˤ�ȫ�ƥ�Υ���ޥ���ʩ��
//��������ݳ����ɤ��ޤǥޥ����������`��⤽����������ޤǥ�Υ������Ȥꤢ�������������}������

//��bg025b
//���ϑ�ӣ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");

	CreateEffect("�}�ݥ�Υ���", 19998, 0, 0, 1030, 580, Monochrome);
//	CreateEffect("�}�ݥ�Υ���", 10000, Center, Middle, 1030, 580, "Monochrome");
	SetAlias("�}�ݥ�Υ���","�}�ݥ�Υ���");
	OnBG(100,"bg025_�ӵ�ɽ�}��ɭb_02.jpg");
	CreateSE("SEL01","se����_����_�ϑ�01");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ؼ䣬�����ķ�Χ������
������Ѫ��ϴ����Ѫ������ֱ����ʬ�ǳ�ɽ��

���ڵ��ϣ�����������ļ�ʸ����������ļ�϶��
����Ľ�˧�����ʿ���ǣ���ִ����������ͦ����
�����Ͽգ�������Ϊ���е���ʿ������ͨ���Լ���������
���������ķ磬ʹ��̫�����ҵؽ��档

������ս���ĳ��档
�������͡���һ���������ƺ���ʱ����

����ϸ�۲�Ļ���Ҳ�ܸ�Ϊ��ȷ�����֡�
�����е���״�����ߵ�ս����ʽ������������װ������
��Щ��ʵ��˵���ⳡս���ȷ�Դƽ��ս�����
ս�������ķ�����

������Ҫ���ǣ�ս�������ǿɼ������ġ���
������ϻ��Ž�ɫ̫�����ݻ����졣

�����ǣ�<RUBY text="��������������������">�κ�һ����Ӫ�ж��е�</RUBY>��
������������̬������ս��������������ڴ��ʷ��
Ҳ�ܺ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw��������_ͨ��.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������������
<voice name="��������" class="��������" src="voice/md01/0020010a15">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ҵ�ͷ�򷢳������ķ���תȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��bg020a
//����������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateEffect("�}�ݥ�Υ���", 10000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("�}�ݥ�Υ���","�}�ݥ�Υ���");
	OnBG(100,"bg020_ɽ�}�ӵ�_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	StL(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	FadeStL(500,true);

	SoundPlay("@mbgm23",0,1000,true);
	Wait(500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��һλС�ɵ�Ϻ��Ů�ԡ�
���Ҵ������������������������š�����˵
�ҵ���߱���λŮ�԰���

���������Ķ��󲢲����ҡ�
������վ��ǰ��ģ�һ�����˵ı�Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ʼ�����
	StR(1000, @0, @0,"cg/st/stʼ�����_ͨ��_˽��.png");
	FadeStR(500,true);

	SetFwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");

	#voice_on_ʼ�����=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020020b30">
���ܿ��������𣿡�

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020030a15">
���ᱲ��ʧ���ɡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020040b30">
���ǰ���
����������ľ������һ�������ó����ѱ䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Щ�����������
�������Ǹ�����Ҳע�⵽�ˡ�

��һ����ת�˱��з�����ֱ���ղ�Ϊֹ��ͬ��
�����˽�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwʼ�����_ꓤ���.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020050b30">
��û�취�ˡ���

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020060a15">
����������ƺ�Ҳ�޷�������

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020070b30">
��������

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020080a15">
����λ���˵ĳ������壬
Ҳ�в�������ľ�ı����𡣡�

{	FwC("cg/fw/fwʼ�����_ꓤ���.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020090b30">
��û�������£���

{	FwC("cg/fw/fw��������_����.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020100a15">
������Ҫ���ˡ�����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020110b30">
��ֻ��һʱ��
���ᱲ���̵ļ�Ұ�����ϲ�������������
����ھ������ϱ�����Ѫ����
���������Գ������ˡ���

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020120b30">
�����գ�������˻�ʤ����
���������������еġ���

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020130a15">
��������

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020140b30">
�������𡣡�

{	FwC("cg/fw/fw��������_����.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020150a15">
���޷����š���

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020160b30">
�����ò��š���

{	FwC("cg/fw/fw��������_����.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020170a15">
���������εģ�ֻ�ж������صĸ��ס���

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020180b30">
��������

{	FwC("cg/fw/fw��������_����.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020190a15">
�����Ÿ��״��ڸ���Ķ��켼����
��Ҳ���Ÿ���<RUBY text="��������">�Ӵ�֮��</RUBY>�ҵ��ģ�����֮���¡���

//������������
<voice name="��������" class="��������" src="voice/md01/0020200a15">
�����������̳и��׵��㼣��
��������ǣ���֮��������

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020210b30">
���������𡣡�

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020220a15">
����ȥ�ɣ����ס�
��ս�������ˡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020230b30">
���š�����

{//��ãǟo�����ͩ`��ץ�`�ȡ�����
	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0020240a01">
�������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��������أ�<RUBY text="��">��</RUBY>������������
�������ҵ�������

���������˴��Լ��������﷢���ģ�����֮������

���������Ƿǳ���Ϥ�ĸо���

��ÿ�α��װ�ף�������ͬ�����顣
��ֻ����ε��������������������Щ��С��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ͩ`��ץ�`�ȡ�������
//�����¡��^ȥ�ѩ`�Ȥ�ȫ��ͬ��
	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md01/0020250a01">
��ĸ�ס�ս������������
���Ѿ����������𣿡�

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020260a15">
��������

{	FwC("cg/fw/fwʼ�����_���d.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020270b30">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����������Э���������������������Ҳ�����ס�
����С���������ˡ����ҵ����ˡ�����������˵ĶԻ���

����λŮ�ԣ�����ص��˵�ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_����.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������������
<voice name="��������" class="��������" src="voice/md01/0020280a15">
����û��
����Ҫ��������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0020290a01">
��Ҫ����ʱ����

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020300a15">
����֪����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0020310a01">
������ս�����Ǵ�ʲôʱ��ʼ�ģ���

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020320a15">
������֮ǰ��һֱ����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0020330a01">
���ҳ���֮ǰ����

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020340a15">
���ǵġ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0020350a01">
��ĸ���أ�
��ĸ�׳�����ʱ���أ���

//��������
<voice name="����" class="��������" src="voice/md01/0020360a01">
��û�У�ս���𣿡�

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0020370a15">
�������С���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0020380a01">
���⹫�أ���

{	FwC("cg/fw/fwʼ�����_���d.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020390b30">
��������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0020400a01">
���⹫������ʱ���أ�
��û�У�ս���𣿡�

{	FwC("cg/fw/fwʼ�����_���d.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020410b30">
��������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020420b30">
���С���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����˵���ⳡս���ķ籩���˰��꣬�ķ��˴��ȫ����

���ϱ������ҡ�

���ҵĽ��С�����������������硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���r�Ĵ塣bg093
//�������ҡ�bg023
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateEffect("�}�ݥ�Υ���", 10000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("�}�ݥ�Υ���","�}�ݥ�Υ���");
	OnBG(100,"bg093_ɽ�g�δ�a_01.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnBG(100,"bg023_��Դ̫�μ�_01.jpg");
	FadeBG(0,true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

	SetFwC("cg/fw/fw��������_ͨ��.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������������
<voice name="��������" class="��������" src="voice/md01/0020430a15">
�����ס�
������������ˡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020440b30">
��Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����g
	StR(1000, @0, @0,"cg/st/st��g_ͨ��_˽��.png");
	FadeStR(500,true);

	Wait(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������ζ��Ϻ�Ĵ�����ط��ݡ�
��������������ǣ��������õ����ˡ�

����ͳ����һ��һ���Ľ��졣
��Ӧ����һ��Ϻ����������ص�������𡭡�
���ǣ�������δ����
����û�д���������к���

�������ˣ�Ҳ��û��¶���������ɫ��
�������������Ľ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020450b30">
����û�£���ʲô���á���

{	#voice_on_��g=true;
	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020460b50">
���������𡣡�

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020470b30">
���š���

{	FwC("cg/fw/fw��g_ͨ��a.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020480b50">
������ľҲ�Ǹ����˳Ծ��Ļ쵰��
��������Ū���ѵ�ʱ���ͳ��ϡ���

//����g��
<voice name="��g" class="��g" src="voice/md01/0020490b50">
����Ұɽ�ĸ�λӦ�󷽵ش�������λ��
���������ǽ��Ǽһ��Ҫ���������ţ�
����Ż��ݱ����ˡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020500b30">
������Ѭ��֮�������á�
��������ô���ᱳ�ѵ����ˣ�
һ��ʼ�͸õ��ɵ��ˡ���

{	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020510b50">
������������Ҳ�����ĵ���
��׷�����׷���λ����������æµ��Ӫ��
��Ϊ���ػ��������塣��

{	FwC("cg/fw/fwʼ�����_ꓤ���.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020520b30">
�����Ǳ�ĩ���á�
�������Ľ��죬Ӧ��Ϊ���ػ�����
ȥʹ�������������������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020530b30">
��Ϊ���ػ�������������壬����ʲô
���ߡ���

{	FwC("cg/fw/fw��g_���d.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020540b50">
���š�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020550b30">
��������ˣ����㵽�˼���ҳ�ȫ
������֮ʱ��Ҳ������ȥͶ�������ɡ���

{	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020560b50">
���ǵ�Ȼ����

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020570b30">
��������ƹ�����ٽ��¡�
�����������ʣ������������飬���κ�
���Ҷ�Ҫǿ�ҡ���

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020580b30">
��������α����������

{	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020590b50">
���š���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020600b30">
�����ò�Ӯ������

{	FwC("cg/fw/fw��g_ͨ��a.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020610b50">
��������ˡ�
��������������Ҫ�����������

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020620b30">
��������

{	FwC("cg/fw/fw��g_ͨ��a.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020630b50">
����Ȼ���ϲ���˵�����ƺ��Ѿ��Ȳ�
��ȥ�ˡ�
���ľ����Ҳ�ǡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020640b30">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��g_ͨ��b.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//����g��
<voice name="��g" class="��g" src="voice/md01/0020650b50">
������ɣ���У�ǧ�Ӵ�Ķ��쳤����������
����������
��������Ŵ��������Ķ�����䲼���콣��
��گ�������������ꡣ��

//����g��
<voice name="��g" class="��g" src="voice/md01/0020660b50">
��ȴ��Ȼ�������𡣡�

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020670b30">
�������С���

{	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020680b50">
��������Ľ��й����ľ���µ����ӣ������ϳ�
ȫ����ӵ�����Ļ�������ʲô��һҹ֮����
Ϥ����������

{	FwC("cg/fw/fw��g_���d.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020690b50">
������������ڴ���ƽ��Ҳ���ܹ�������
�ɡ�����

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020700b30">
����Ҳ��Ϊ����������
��������ˣ����޷������¾���ȥ���졣��

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020710b30">
����Ϊ���ܷ�������������

{	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020720b50">
����û�ҵ������𡣡�

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020730b30">
��������������Ƿ�������⡣��

{	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020740b50">
�����򣿡�

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020750b30">
��������ˣ���������ߵĽ���Ӧ����
�����Ķ����أ���

{	FwC("cg/fw/fw��g_ͨ��a.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020760b50">
������ǿ��װ�׼�Ӳ���������Ѹ�١�����

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020770b30">
������Ϊ�ܰ쵽�𣿡�

{	FwC("cg/fw/fw��g_���d.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020780b50">
������������

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020790b30">
�������Ƕ�ô�������Ķ���ʦ�����޷����
���ܵĽ��С�
��ѡ��Щʲô���ͱ�ȻҪ������һЩʲô����

{	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020800b50">
���Ǹ�ѡ�񣬻�ûȷ���𣿡�

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020810b30">
���š���

{	FwC("cg/fw/fw��g_ͨ��a.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020820b50">
��ʲô������õģ�ʲô�������ߵġ����أ���

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020830b30">
����ν���ߵĽ��а���������ˡ�
����������<RUBY text="����������������">���������Ľ���</RUBY>����

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020840b30">
���Ǳ���ܹ������κ��˵Ķ�����
�����ǳ�Ϊȥɱ�������˵Ķ�����
������������Ⱦ����Ļ������޷���ʼ����

{	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020850b50">
���ϳ����Լ��ˣ������ǵ��˶԰ɣ���

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020860b30">
��Ҫ��������룬��ϸ�¡�
��Ŀ��Խ����ȷ�����е����ܾ�Խ��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��g_���d.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//����g��
<voice name="��g" class="��g" src="voice/md01/0020870b50">
������ԭ����ˡ���

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020880b30">
����Ҫ�������ܾͱ�����ȷ��Ŀ�ꡣ�����
�ؼ�����

{	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020890b50">
����˲���ս��Ѳ���𡣡�

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020900b30">
���š���

{	FwC("cg/fw/fw��g_ͨ��b.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020910b50">
���ó��������𣿡�

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020920b30">
����û�С�
���ỹû��������ֵ�ô򵹵ĵ��ˡ���

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020930b30">
������ľ֮����ԶԶ��������

{	FwC("cg/fw/fw��g_ͨ��a.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020940b50">
�����𡭡�
�������ˡ��һὫ�����˼ί���ת��
���ľ���¡���

//����g��
<voice name="��g" class="��g" src="voice/md01/0020950b50">
��Ҳ�ᴫ����ʵĶ����
�����Ƕ���Ӧ�ö������ġ���

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020960b30">
����Ǹ�ˡ���

{	FwC("cg/fw/fw��g_ͨ��a.png","Monoc");}
//����g��
<voice name="��g" class="��g" src="voice/md01/0020970b50">
�������ƾ���ҵĹ�ϵ��
�����ֿ��׻���ʡ�˰ɡ���

//����g��
<voice name="��g" class="��g" src="voice/md01/0020980b50">
�����ٶ�ѷ��ġ�
���ڴ��ڼ䣬�һ���Ѿ������ػ�ס
��Ұ�ġ���

{	FwC("cg/fw/fwʼ�����_����.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0020990b30">
�����������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����
//���ե��`�ɥ���
	ClearWaitAll(2000, 0);
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateEffect("�}�ݥ�Υ���", 10000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("�}�ݥ�Υ���","�}�ݥ�Υ���");
	OnBG(100,"bg023_��Դ̫�μ�_01.jpg");
	StR(1000, @0, @0,"cg/st/stʼ�����_ͨ��_˽��.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");

	Wait(1000);
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	Wait(1000);

	SetFwC("cg/fw/fwʼ�����_ꓤ���.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0021000b30">
������������

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0021010a15">
����ô�ˣ����ס�
���ƺ��ǳ��������ء���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0021020b30">
������������

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0021030a15">
��ĸ�ף���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/stʼ����_ͨ��_˽��.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fwʼ����_�@��.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0195]
//��ʼ���ޡ�
<voice name="ʼ����" class="ʼ����" src="voice/md01/0021040b29">
�������׶��ƺ�����ռ�ˡ���

{	FwC("cg/fw/fw��������_߳��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0021050a15">
������ʲô?!
���ľ�����ϸ��²Ź��������ʸո�
ӭ��ʱ�������ط�����ʱ�̲����𣡡�

//������������
<voice name="��������" class="��������" src="voice/md01/0021060a15">
�������ػ����еĳ��ɵľ�����
��ʲô����

{	FwC("cg/fw/fwʼ����_�@��.png","Monoc");}
//��ʼ���ޡ�
<voice name="ʼ����" class="ʼ����" src="voice/md01/0021070b29">
�������ѱ��ˡ���

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0021080a15">
������ʲô����

{	FwC("cg/fw/fwʼ�����_ŭ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0021090b30">
�����������˰���
���Ѷ��Ǻ����һ�����ˡ���

{	FwC("cg/fw/fw��������_����.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0021100a15">
������ʽ���������������?!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwʼ�����_ꓤ���.png","Monoc");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0021110b30">
��������

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0021120a15">
����ô�����ϳ�����󡭡���

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0021130b30">
���������˵�ˣ��ɼ�Ұ�Ļ���
��λ����

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0021140a15">
��������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0021150a01">
����˵�������£���

{	FwC("cg/fw/fwʼ����_�@��.png","Monoc");}
//��ʼ���ޡ�
<voice name="ʼ����" class="ʼ����" src="voice/md01/0021160b29">
��������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0021170a01">
�������أ�
���������ھ����ɣ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0021180b30">
��������

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0021190a15">
���������ס���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0021200b30">
������Ů������������
�������ö���ʦ����ҫ��
������������������ء���

{	FwC("cg/fw/fw��������_����.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0021210a15">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0021220a01">
��ĸ�ס�
���Ǹ��������أ���

{	FwC("cg/fw/fw��������_ͨ��.png","Monoc");}
//������������
<voice name="��������" class="��������" src="voice/md01/0021230a15">
��������������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0021240a01">
�����š���
�������أ���

{	FwC("cg/fw/fwʼ����_�@��.png","Monoc");}
//��ʼ���ޡ�
<voice name="ʼ����" class="ʼ����" src="voice/md01/0021250b29">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0021260a01">
�������⹫��������

{	FwC("cg/fw/fwʼ�����_ꓤ���.png","Monoc");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0021270b30">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����
	ClearWaitAll(2000, 5000);

}

..//������ָ��
//�Υե����롡"md01_003.nss"