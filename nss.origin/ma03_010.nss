//<continuation number="1090">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_010.nss_MAIN
{

	CP_AllSet("����");

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
	#bg035_�`�}���`���åȸ��a_01=true;
	#bg039_��������ϯa_01=true;

	#ev113_���`���å��F�eϯ_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_�ۥåȥܥ��=true;

	CP_AllDelete();

	$PreGameName = $GameName;
	$GameName = "ma03_011.nss";

}

scene ma03_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_009.nss"


//���`�}���`���å�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm22",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��װ�׾����ķ�Դ��׷�ݵ����Լ��ʮ��ǰ��
�������λ�ڴ�Ӣ����������������һЩ��������
�˶�һ�������ྺ��ͬ������ΪŮ�������еĹ�����Ϸ
��ʼ�ġ�

����ȥ�������ĸ����ң����ж�������������ʥ�Ե�
������˶������������ս�����⣬��������������
ʹ�á�
��Ȼ������ʽ�������ͣ����еĵ����ı���������

����Ϊ��������ٴ��ڵ����߼�ľ��٣���һ��˼
���������һ�ӭ����ʿ������Ϊ��û����뵽���
����ľ��������������ͬʱ������������ƶ�����
����ʽ��

��װ�׾��������������ˡ�
����Ӣ������Ϊԭ�㣬ֱ����Խ�ล����Ͽֻ����һ
�꣬�ռ�ŷ��ȫ�������ͳ����������Լ����֮��

�����ڴ�͵���ʷ��Լ��ʮ��ǰ��������Ļ��ת˲֮��
���ܵ��˿��ȵ�֧�֣����ұ��ֳ�������¡��ʢ�����ף�
����ʱ����������ս�Ƶ�����֮�С������Ž����ս����
����û�й��׵Ĳ�ҵ��඼���ٱ�ǿ����С��ģ�����ǡ�

��װ�׾���Ҳδ�����⣬��սʱ��������������ƣ�����
��ʵ�ϵı���״̬��ս������������ʱ������ƣ�
ϣ���������˵ĺ���Ҳ�𽥸��ǡ�����Ȩ������
Ҳ��ͬ������֮�ˣ�������������ٶ����𡭡�

����ȥ�����������ֻ�״�ܵ���ʽ��ɡ�
�����˽��ꡪ����¡��һ�꣬
����ͳһ���Ĵ�ͣǣ����ھ������졣

������һ�أ��������ڡ���<k>
��
����ʼ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������x���m�����ݳ����뤫��
//���Q��ϯ

	OnBG(100,"bg039_��������ϯa_01.jpg");

	CreateSE("SEL01","se����_����_���`���å�02_L");
	MusicStart("SEL01",500,1000,0,1000,null,true);
	CreateSE("SEL02","se����_����_���`���å�01_L");
	MusicStart("SEL02",500,800,0,1000,null,true);

	FadeBG(1000,true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100010a02">
���������ǺŻ������ֵط��𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100020a00">
��Ӧ�ò��ᡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����쳤�����ڹ���ϯ���Ĵ�������һ������������
�ش��ͬʱ���������������졣
���᳡��������ͬһ�㡣��ӵ��Ⱥ�����ǣ�����������
�ĵ��˷ܣ����������ߣ����������졣

���˿����ܵ��ϼ��۵���Ӱ�в���һ��ѡ�ֵ���Ӱ��
���ǵĵǳ�Ҫ������֮��
���������������ʢ����

�����Ƕ�װ�׾����ĸ����ж�ô��������ֱ������֮ǰ
���е������ٵ����ܵ����ܳ��������������״����
�ж�ô������
�����ھ�����ʵ��֪��

�����־����������Ǳ��е����鼸���ӽ�����������
�Դ˲������ĵ����ǿ�����ֱ�����쳣�ĳ̶ȡ�
��Ȼ������ѡ���Ǳ��ԺȲʵ����ǵı�����û���κβ���
���Ķ������е�ֻ�Ǵ���Ļ�ϲ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma03/0100030a00">
����Ȼ���Ƕ������˷��У�����������û��
�ܵ�������Ⱦ�ļ���
���������ǺŵĽ��������Ҫ��������Ǳ��
�ǳ����ѡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100040a02">
��Ϊʲô�أ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100050a03">
����ѽ��
��һ���ǵ�һ������������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100060a02">
���ţ������ǡ�
��֮ǰҲ����̫����Ȥ��
��Ȼ���ڿ���ȷʵ����Ȥ�����ӡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100070a03">
��װ�׾�����ʹ�õĶ�����ʽ���϶��������
���С�
�������ܿ���������������ܵ�Ŷ����

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100080a03">
����ΪӮ���ˡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100090a02">
��Ϊʲô��
�����в�����������Ҫǿ�𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100100a03">
����ս��������˵��������
�����������Ǳ����ٶȵ�װ�׾�������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100110a03">
����Ȼ��ʽ���г�Ϊ�����ý��е�ר�ù�񡭡�
��������þ�ʽ����������ֶ����𣿡�

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100120a02">
������ԭ������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ȷʵ��������
����װ�׾����У�����Ҫ�������Խ��

����˵��ˣ���Ҳû�н�ֹ��������
ʵ���ϣ�ʹ�����μӱ����ĺ�������ż��Ҳ�С���
������δ�й��������ɼ���ǰ����

��������������Ǿ��Ե������ɣ�Ҫ�ǲμӵĻ��ض�
�ǳ����ۡ�������˵����ɫ�����Ǻš�
����ȫ�޷������ܻ쵽װ�������С�

������������
���������ϵ�������ԣ��������Ǻ�ӵ���㹻��
�����ʸ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100130a02">
����Ȼ��ˣ��ն��������������ǡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100140a00">
����Ȼ����Ϊ�˱���ֲ�ˡ��ѡ��ļ����塣
�����ݴ����ĸо��жϣ�<RUBY text="����������������">��ζ�ƺ����ڲ���</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100150a00">
����ԡ��ѡ����ԣ���ζ��������Ѳ�Զ��
������û����ʱ�䡣��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100160a02">
����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100170a00">
�����ҵĽ��С���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100180a03">
��˵�����⻹�ǵ�һ��������
���Ǹ��൱�������������أ���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100190a04">
�����ƶ�ұʦһ���Ǹ����ɰ����߰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ʵֻ��Ϊ�����ԭ�档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100200a03">
�����ָо�׼ȷ��
�����������Ǻ���������Ϣ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100210a00">
���ӹ�ȥ�ľ��鿴����ֵ�����εġ�
�������������������˵�ܱߵ�ĳ��λ�ã�
�϶������ż����塣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����Ȼ��Χ̫�������ڲ��ܽ��е�̺ʽ�������Ҳ��
����ͷ�ۡ�
����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����衿
<voice name="����" class="����" src="voice/ma03/0100220a04">
��������ȷ��һЩ��
������˵�⸽������Ϣ�Ƚ�ǿ��֮��ġ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100230a00">
��ò�Ʋ���<RUBY text="��������">���ֶ���</RUBY>��
�����˼�Ϊ���Ե��ƶ�λ�����⣬
�޷��ٽ�һ������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100240a02">
�������ⲻ����˵û�а취�ҵ��𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100250a00">
������Ҫ�Ǽ����屻����ֱ��Ŀ���Ļ�
�Ϳ���ʶ�ơ�
���������ڴ����Ѿ�ȥ�ܸ�������ĳ�����
�������ܼ�����еĲ������

//��������
<voice name="����" class="����" src="voice/ma03/0100260a00">
������Ҳ������ȫ֮�ߡ�Ҳ�п����ǲ��ڱ���
��ʹ�õ���ϰ�
����Щ��ֻ�п����������顣��

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100270a02">
��ԭ����ˡ���
����֪���ˡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100280a03">
��������Ӧ����ô������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100290a00">
�����ҹ۲�һ��״������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����Ȼ�����Ѷ�����������Ǳ�������ⷿ����
��һ��û�н������������壬�����ǲ����ܵġ�
����ֹ�޹���Ա�����Ǳ�Ȼ��

������������ڴ�Ҳ�޷�ͨ�á�
�����㾯�������������£�Ҳ�������к��������

����ͣǣ�ս���׽����ͳһ����������������<RUBY text="������">������</RUBY>��
������֧��ĵط�������ǿ�н��롣

���������ʲô�취����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100300a02">
����˵��������������ʲô����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100310a03">
��Ԥѡ������
�����ڶ�û�ж���ʵ����Ҳ������ν�Ķ���ѡ
�ֽ���<RUBY text="����">ɸѡ</RUBY>����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100320a04">
���ڽ����Ԥѡ�����л��ǰ�гɼ���ѡ�֣���
�������������ѡ����һͬ�ڰ�����о�������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100330a02">
����Ҫ��ô�����ɼ��ء�
������ȥ�о�ֻ�������ɷ�ͣͣ�����ӡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100340a03">
��Ԥѡ�ȵ��ǵ�Ȧʱ�䡣
�����͸�λȻ��Ԥ�����ܡ�����ͬʱ���ܵ�ֻ
�о�ʤ������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100350a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����Ȼ����������������Ȥ����һ��������ȴ����
�������������ϡ�
���������Ը����־������Ʋ����������е�����ĵ�
�������˵�ӡ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����衿
<voice name="����" class="����" src="voice/ma03/0100360a04">
��������˵��Ԥѡ�Σ���Ҳ�зɵúܺõ�ѡ
���ء�
������ղ�ͨ���������ѡ�֣����ǲ�����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100370a00">
�����ǡ�����ɭ�������Ȯ��
����͹�ҵӦ���Ѿ�����¼����¼�С�
���ԣ�Ӧ����˽�˺����嶼�μӵ�����ɡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100380a03">
����ò��ʩ�����൱�󵨵ĸ����ء���������
Ҳ�Ǵ������ط���ֲ�ġ�
����������λ�������˽�˶���Ҳ˵�����أ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100390a02">
�����������������ˡ�
�����������ղ����¡����ֳ�Ҫ�����ƶ�����
�ӣ�ȴ�����һ����ѹ�˹�ȥ��
�����𻨶�ð�����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100400a04">
��ŶŶ���ǲ��Ǿ��������𡣿��������ó���
���ˡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100410a00">
�������Ļ���𡭡�
����Ȼ��ʹ�þ�ʽ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100420a03">
��ֻҪ���ֺͻ�еʦ�㹻���㣬��������Ҳ
����ս���ڵ�һ�ߵ�����ɣ�
����˵����������Ƚϲ���������

{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100430a02">
���ⲻ��ͦǿ�����

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100440a04">
��ȷʵ����ء���Ȼ�ڼ�������Ҫ����ʺţ�
���������໥��ײ����ս�к�ǿȴ����ʵ��
������Խ�Ǽ��Ҿ�Խ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�ե�å����", 15000, "Black");
	Fade("�ե�å����",500,1000,null,true);

	#av_�ۥåȥܥ��=true;
	CreateColorSP("�\Ļ", 1000, "Black");
	CreateTextureSP("�}����100", 1500, 0, -364, "cg/st/resize/3d�ۥåȥܥ��_����_ͨ��l.png");
	Request("�}����100", Smoothing);

	Move("�}����100", 5000, -261, -364, AxlDxl, false);

	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����װ�׾����У�������������й�����Ȼ�Ƿ�����Ϊ��
������������Χ�ڵ�������ײ��
����Ҳ����װ�ף���Ȼ������ϵģ�����塤�����Ȼ
��Ϊ��ʽ��ȴ��Ȼ�ܹ�����������ԭ��

��������ˣ��Ͼ��ǹ�ȥ�����塣
������ֱ�߼�������Ƿȱ����������Ҳ������������
���ˣ�����ƾ��������Ϊ�׵Ĺ�����Ա�ķܶ�����
ǰ�У�ȴ�վ��޷����ʤ����

���������������ţ��ͱ���ֱ������һ�ȳ�Խ�˵���Ȯ
����������׷�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�ե�å����", 15000, "Black");
	Fade("�ե�å����",500,1000,null,true);

	Delete("�\Ļ");
	Delete("�}����100");

	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100450a03">
�����������ӣ����Ǹ�������һ����
����ת��������ء���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100460a00">
��ת��������֢�����ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���������ӹ���Ҳϣ�������滻����ɡ�
����Ȼ�����ڵľ�����Ҳ�����ܲ������Ԥ�㡣
���ӹ�����ά��������Ѿ����漣�ˡ�

�����µ�Ԥѡ���У������ۻ�Ծ���ֵ�ò��
Ҳֻ������֧���顣
����ʶת����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma03/0100470a00">
����������ô������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0100480a01">
��û���쳣��
���μӽ��쾺����ȫ�����嶼�����ˣ������ǡ���

//��������
<voice name="����" class="��������" src="voice/ma03/0100490a01">
��ȫ����ͨ��<RUBY text="����">��ð</RUBY>���С���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100500a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�������������У������Ǿ����ý������������ƺ���
����Ϊ�����Ľ��ж�ұʦ������Ҳ���Լ����뷨�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma03/0100510a00">
������ϯȷ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0100520a01">
����û�����б�Ҫ�𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100530a00">
�������Է���һ��
�����Ӿ��鱨���͹�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0100540a01">
���˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����˥��`չ�_
//�����`���åȸ����Ҋ����Ҋ��

	SetVolume("SEL01", 600, 300, null);
	SetVolume("SEL02", 600, 200, null);

	CreateColorEX("�\Ļ", 10000, "Black");
	Fade("�\Ļ",0,1000,null,true);
	DrawTransition("�\Ļ", 500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateTextureSP("�}����100", 6000, 0, 0, "cg/bg/resize/bg035_�`�}���`���åȸ��a_01_l.jpg");
	CreateColorSPmul("�}ɫ100", 7000, "RED");
	Fade("�}ɫ100", 0, 400, null, true);



	Cockpit_AllFadeMura(100,720,0);

	DrawTransition("�\Ļ", 500, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Delete("�\Ļ");

	BezierMove("�}����100", 5000, (@0,@0){@-100,@-100}{@-200,@-300}(@-300,@-400){@-300,@-350}{@-350,@-325}(@-300,@-300), null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
������������

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���٤�ҕ���Ƅӡ�ֹͣ
	Move("�}����100", 500, @+100, @+100, Dxl1, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����һ��ϯλ����Χ΢����������롣
�����ǡ������ϯ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ��F�eϯ���衩����F�D�ˡ�
//���F�D�ˤ��Ŀ��ˤ��֤ä�ñ�ӡ����뤤�����Ƥ�����줿�Ղ��Ҋ���ʤ�

	SetVolume("SEL01", 500, 0, null);
	SetVolume("SEL02", 500, 0, null);

	PrintGO("�ϱ���", 30000);

	CP_AllDelete();

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	CreateTextureEX("�}�ţ�50", 5000, Center, Middle, "cg/ev/ev113_���`���å��F�eϯ_a.jpg");
	Fade("�}�ţ�50", 0, 1000, null, true);

	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����Ȼ��һ�����ϯͬ�����Ÿ�ʽ��Ů���٣���ÿ����
������Ʒ�ʲ�����װ����
����ض��������ߺͼα����Լ������й�ϵ���ˡ�

�����ܿ������ߵ���Ӱ��
�������ǵĽ���ȴ�ʹ˿��������ϱ��۵���Щ��Ȼ��ͬ��
��Ϊ���أ���Ϊ��³��

��������ʽ���������
�����ϯ�Ļ������������������ֲ������Լ��ھ�
�ٱ�������������¹ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma03/0100550a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0100560a01">
��û���쳣����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100570a00">
�����ף�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����������������Ŀ��Ļ���ĳ��������˵��
����ͺܼ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100580a03">
��������������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100590a02">
����ô������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100600a03">
������û�¡���
��������̫��ɹ��̫���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ϯ�ˑ���
	FadeDelete("�}�ţ�50", 1000, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma03/0100610a00">
��û�°ɡ�
�������ʲô�Ļ����͵�����������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100620a03">
�����������뵣�ġ�
��ֻ����΢��Щ�Ժ����ѡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100630a00">
����������������Ļ��ͻ�֮���ӡ�
�����ǲ�Ҫ��������Ϊ�á���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100640a03">
�����ţ������������ǵġ�
����Ȼ����ô����Ļ������˼Ҵ�
������ĵط�ȥ����

//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100650a03">
���������Ǵ�����ʲô�أ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100660a00">
��ֻ����������ȴһ��ͷ�Զ��ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������������ϵ���˼��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100670a02">
�������������ء�
���ն���������˵������͵���
�Ͳ�Ҫ̫��ǿ������

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100680a03">
����ѽ������ʲô���鶼�̲�סҪ���죬��
ֵ�����ڵĴ�С�㡣
�����Ҳ������ٵġ���Ϊ��Ҳ�ǳ�Ϊ����һ��
������Ҫ������������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100690a03">
���ţ��Ϲ���
���˼�һ��Ҳ������С�������ļ�Ů������
��Ŷ����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0100700a00">
����������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0100710a02">
���������������趨!!
�����У����ڱ��˵���ǰ��Ӹ�С��!!��

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100720a04">
�����Ǹ����˸о����ȵļ����ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��ʵ���ǡ�

���ӱ�����ΧͶ�������ߣ�ͬʱ�۾������ʱ̨��
��Ԥѡ�εĽ���ʱ���Ѿ��ٽ���

��Ӧ����ô����
����Ϊһ����ڣ�����ô����Ҳ�����޵ġ����һ���
���͵��޶ȡ�Ҫ�������Ƶĵ��飬��������ȷ����
�ھ������������ж���

���������������ж����ˣ�һ���Ǵ��Ĺ�����Ա����
Ȼ����������ߣ���������������˳��ɡ�
��Ҫ���ܻ������֮һ�ͺá�

����ô��
����Ȼ��ˣ���ʲô������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
	ClearWaitAll(1000, 1000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm21",0,1000,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310a]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100730a03">
������ɴ������

{
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,false);
	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100740a04">
���ǡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100750a03">
����һ���Ǳߡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100760a04">
����ָ���ϯ�𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100770a03">
����������Ҷˡ�
����ܥԽ�Ĺ������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100780a04">
��ʲô�����ǲ���������!?
����ѽѽ�����ǻ������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100790a03">
���Ӹղſ�Ļʽû�б����ܵ��������������
��΢��˽�ðɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100800a04">
���ʹ���һ�����ƺ��Ǹ����Ƴ�������ء���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100810a03">
��������ߵġ���������λ�ء�
��������һλŮ���𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100820a04">
����������Ϊ�����ֵ�Ů�԰ɡ�
��˵�����ܲ������˳谮��Ů�١�
����Ҳ����˵����Ů�����ֻ��αװ��
��ʵ�ǳ������Ĳ������˵���ĸ����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100830a03">
������ĸ�ס�
���ò���˵������Ϻ�ĵġ�������
����ǽ����ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100840a04">
���ţ���˵��Ҳ�ǹ����������ˡ�
��ܥԽ���������ǰ�Ϻ���˵����顣��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100850a03">
������������������Щ��̫�����ء�
��Ӧ��С�ĵ㣬�����������ȽϺðɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100860a04">
����㵹�ǲ���̫���⡣
��С�����λ�������ˣ�Ӧ��ֻ������������
��ʱ����΢����������ѡ���

//�����衿
<voice name="����" class="����" src="voice/ma03/0100870a04">
������������ǵá���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100880a03">
�����ء�
����ô�Ͳ��õ���ͻȻ����ʱ������������
�ˡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100890a04">
��Ҫ���Ӧ����λ���ˣ�ȷʵ����ͷ���ء�
������ʨ�Ӻ���µĻ����鵹�Ǽ򵥡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100900a03">
��<RUBY text="��������">������λ</RUBY>��̬��Ҳ�����ʡ�
�����������ٲ����Ѻðɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0100910a04">
����������Ҳû�б�Ҫר��ȥ�����ǵ��鷳����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0100920a03">
�����ء���
������»����ȱ������˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 1000);

//���F�eϯ

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");

	CreateTextureEX("�}�ţ�50", 100, Center, Middle, "cg/ev/ev113_���`���å��F�eϯ_a.jpg");
	Fade("�}�ţ�50", 0, 1000, null, true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0100930a07">
��������������

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0100940a07">
���ף����������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0100950a07">
���������������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0100960a07">
��ι�����Ǹ����ҡ�
���Ǹ���Զ������

{	NwC("cg/fw/nw����.png");}
//������㣯���ߡ�
<voice name="����㣯����" class="����������" src="voice/ma03/0100970e116">
���ǡ���

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0100980a07">
������������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0100990a07">
�������ţ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0101000a07">
�����������Ľ�������
��û���ɣ�

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0101010a07">
��������
����ʨ�Ӻ����鲻�õ����Ǹ��𣿣�

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0101020a07">
����Ҳ�п����ء�����

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0101030a07">
�������ţ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0101040a07">
�����Աߵ��ǡ�����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0101050a07">
������������Ӵι��

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0101060a07">
���ٺ١���

{	FwC("cg/fw/fw�L����_ͨ��.png");}
//���L���֡�
<voice name="�L����" class="�L����" src="voice/ma03/0101070b44">
����������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0101080a07">
���������£��������¡�
�����ֻ�����Ȥ�����ĸо�����

{	FwC("cg/fw/fw�L����_ͨ��.png");}
//���L���֡�
<voice name="�L����" class="�L����" src="voice/ma03/0101090b44">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_011.nss"