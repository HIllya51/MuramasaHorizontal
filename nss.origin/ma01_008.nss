//<continuation number="840">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_008.nss_MAIN
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
	#bg008_����_01=true;
	#bg001_��a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_009.nss";

}

scene ma01_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_007.nss"

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg008_����_01.jpg");

//������
	SoundPlay("@mbgm26",1000,1000,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ǽ��ǻ����������ǣ�ʱ������һ����������ţ�
ѧУһ�������Ҫȥ���γ�Ҳһ��������ڼ�����

��˵ʵ�����Ҹ���û���������ε����飬��
����״����������̿Σ�ֻ������ɧ���ɡ�
����ʹ˵����ȥ����Ҳ�϶�����õ���⡣

���뾡�������ѧУ��
�������������ҵ�����Ұ�Ҵ����鷳��
����Ϊһ��������Զ�׵Ĺ¶����������չ��ҵ�
���尢�̵��ġ�

����������Ǳ�������ĸ������ģ�����ʱ��
���·�����ȥ�����ɣ�
����Ȼһ˲����������⣬ȴŪ�����ס������¹ʶ���
����˵�ǣ���˫�׵��������ǵá�

������������������˵��õķ���ֻ�еȴ���ѧ�����ж���
�������ϿΡ�����Ȼ�Ա���������ͬ�ľ�ȴ
��ְ�������ſε��崨��Щ��Ǹ��
�����ҵ������߷�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStC(300,true);

	SetFwR("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080010b57">
����������ʷ��Ϊ�Ŵ���������������������
�ִ������ַ������ͽ���ʱ�����֡���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080020b57">
���ϻ�ѧϰ�����ǽ�����
�����쿪ʼ�����ִ�������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080030b57">
�����ڽ������ִ��Ļ��������ѧ˵��
������֮һ�������ͽ��еĵ���
��Ϊ���ˡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080040b57">
�����Ϲ�ʱ�����񣬽���һֱ����ǿ������
ʹװ������������������Ծ���������ڿ�������
�۳ҡ�����ʤ����������������û�С���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080050b57">
��½�ϵ�ս�������еķ��н���Ϊ��������
Ҳ����עĿ�����������ķ��ӵ���ս��������
����Զ��������ȷ��ʵ�顣��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080060b57">
����<RUBY text="�ȣ֣���">���ٳ��׵�</RUBY>��ʼ��
�Ի��佣��ΪĿ�ĵı����о�Ҳ�ڿ�չ��
�ҹ���սʱ��Ҳ��һʱ���ݹ���ż�����֮����
�ƻ������ܴﵽʵ�õ����Ӽ���û�С���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080070b57">
��û���ܴ򵹽��еı�����Ҳû�н����޷�
��ܵı�����
��ֻҪ���⣬ʹ�ý���һ�˾���
����ȫ����װ�İ��˲�������

{	FwR("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080080b57">
������������ֹ��ˡ�
����֮�У������������˽�ƾһ��֮��
�㽫�������л��𡣡�

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080090b57">
����Ȼ�������ĸ����Ҷ������ഫ˵����
���������ʵ����������Ϊ�췽ҹ̷�������ò�
��Ϊ��ʵ��в���ܵ����Ǵ�͹��񡭡�
���ź����ǳ������ˡ���

{	FwR("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0080100b56">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����50", 1050, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	Fade("�}����50", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ڴ��ߵļ��ˣ�ͻȻ̧ͷ������ա�
�������ھ������꽵�ٰ㡣�ֻ��ǣ��������������ʲô��

���������ң�ʲô��û�С�
��û��<RUBY text="������">����ɫ</RUBY>�Ķ�����ʲô��û�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStL(0,true);
	DeleteStC(0,true);

	FadeDelete("�}����50", 400, true);

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080110b57">
��������ӵ�����������
��ʹ�ô˵Ƚ���֮�ˣ���Ϊ���ߡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080120b57">
��������ǰ�����߽�����С����
�ϲ�ʿ�塭����Ұ������Ϊʲô����

{	NwC("cg/fw/nw��Ұ.png");}
//������㣯��Ұ��
<voice name="����㣯��Ұ" class="����������" src="voice/ma01/0080130e074">
����Ϊ�����ǹ���Ʒ����

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080140b57">
��Ϊʲô�ǹ���Ʒ����

{	NwC("cg/fw/nw��Ұ.png");}
//������㣯��Ұ��
<voice name="����㣯��Ұ" class="����������" src="voice/ma01/0080150e074">
����Ϊһ������ʦֻ�������һ̨����

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080160b57">
���ǵġ����콣���Ƕ���ʦһ���е�Ψһһ��
������ԭ��Ϊ����ɽ��У�����ʦ���뽫�Լ�
������ͻ��Ǵ�����������֮��
�����������ν�ġ�������ͨ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080170b57">
�����һ�����������Ҫʹ���л�ÿ�ν��ǿ
������������������ʦҲ��Ҫ�߱��൱��
ͷ�ԣ����ʹ���ߵ���˼���ơ��������
�ﵽ������ͨ����ֻ�������ϳ����׶��ѡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080180b57">
������˵��Ϊ�˴���һ̨���У�����ʦ����
����һ��������
��˵���ǹ���ƷҲ������Ȼ����

{	NwC("cg/fw/nw����.png");}
//������㣯���
<voice name="����㣯����" class="����������" src="voice/ma01/0080190e046">
����ʦ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080200b57">
����ô�ˣ������

{	NwC("cg/fw/nw����.png");}
//������㣯���
<voice name="����㣯����" class="����������" src="voice/ma01/0080210e046">
�����콣�еĶ���ʦ�������𣿡�

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080220b57">
���������Ǹ����ѻش�����⡣
������ʦ���Ļ���Ϊ���е�<RUBY text="�ϣ�">ͳ������</RUBY>
������������Ҳ������Ϊ�����š���

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080230b57">
�����������������վ�ֻ����Ϊ���в�����
���񡭡�����˵��<RUBY text="����">����</RUBY>����Ķ�����
������û������������ֻ�ܻ�Ӧʹ���ߵ����
�����Է��ж�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080240b57">
����ȻҲ����˵���в�����˵Ľ��д��ڹ���
����ֻ�Ǵ�˵�е�Զ���񻰡�
���ִ�Ӧ�ò������˰ɡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080250b57">
�����ǡ�
����������ԭ��ֱ�����������ߵ�����
���ǳ�֮�١���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080260b57">
���������繲ͨ���������Ϸ���Ա仯����
���Ͷ����ľ��ꡭ��<RUBY text="����˹��">���ص۹�</RUBY>�ı��������̣�
����չ�˾ȫ�����״�û�кķѶ���ʦ��
����������˽��е����졣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080270b57">
����ô����֮ǰ�Ķ��������ꡣ
������֪��������ʲô�𣿡�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0080280b43">
����֪������

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080290b57">
�����ǡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0080300b43">
��<RUBY text="���е�">��Ӣ����</RUBY>�ķ���½��ڸ���<RUBY text="����">���ظ�д</RUBY>��
�о�����<RUBY text="��¡">�����帴��</RUBY>������������ͣ�ͣ�
�о��ɹ����۸�������չ�˾����

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080310b57">
���ɹ��ľ��������ǣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0080320b43">
�����帴�Ƶ���ɡ�
��������Ϊ�޷��˷��������⣬�����ڴ���
ҽѧ��Ч���ñ��϶�Ϊ�����ܡ���

{	FwC("cg/fw/fw⏴�_Ц�.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080330b57">
���ǵġ�
��Ȼ������չ�˾�İ�³����ϣ�²�ʿ�漴�뵽
����������������ڽ��е����칤�̡���

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080340b57">
��Ϊ���ý��г�Ϊ������ԴȪ��ͬʱ�߱���Ԧ
������������Ҫ���ǻۣ�����ʦ�����
����������Ǳ���ġ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080350b57">
����ʿ�ɹ��ø�������ʵ��ǰ�ߣ���еʽ
<RUBY text="�ãУ�">����װ��</RUBY>��<RUBY text="�У������">����ϵͳ</RUBY>������ߡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080360b57">
������������ȫ�½����ɴ˵�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080370b57">
�������������ͽ��о����ܷ�����˵����������
����ԶԶ���硪����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080380b57">
������˵���ھ��ͽ�����Ҳ�����ϵ�Ʒ�Ľ��У�
������ʹ����û��װ�׵�״̬�£�Ҳӵ��
����ָʾ�����ж���������
������ʱ�����״��Ϊ�����ƶ��������̬����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080390b57">
�����ͽ��о��޷�������Щ��
����ʹ��ˣ����ͽ���Ҳ�����˳�ֵ���������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080400b57">
���������ı�ʲô�����صļ�����
��������ʦ������ɵ���ʵ������
�������¹����ߡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080410b57">
�����һ������������������������
���ͱ������������������������ٷ�����������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080420b57">
����񣬾���������Ҳ�ڱƽ����ͻ��ֵ�ʱ��
�������١�������Ϊ����Ҳ�ܶࡣ
�����羺���ý��е���������Ҳ��̵ǳ�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080430b57">
����һ���棬�����ͽ��е��ռ��ɷ��ȣ�
���ͽ��е����켱���½�����
��������Ҳ�ǵ�Ȼ�İɡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080440b57">
��������ʼ��ʧ��ʱ�����ڣ���˵����Ϻ������
�Ķ���ʦ��Ҳֻ���������ڴ�����
���취����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080450b57">
�����ս�������������ͽ��С�
��ʹ�þ��ͽ��еģ����˳����������ԨԴ��
��У֮���������ˡ���

{	FwC("cg/fw/fw⏴�_Ц�.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080460b57">
������������΢����һ�����
���ú�����Ŷ���������ֵĻ�������ν����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ۺ�Σ�ա�
���ֲ��˯���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080470b57">
��ӵ�г����������׳�Ϊ���У�ʹ�ý��е���
��Ϊ���ߡ��������װɡ�
�����������֣����ͺ;��͡������
һ���ǰ��Ϊ���򣬳ƺ���Ϊ��򡣡�

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080480b57">
������ĳƺ�����Ϊ��ʽ���к�
��ʽ���С���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080490b57">
�������ߣ�����ר�������г�Ϊ�������
���������Ͻ���ǰ�߱��������ʹ���ߣ�����
����������ʹ���ߣ�ʹ��ʱҲ�������غ��塣
ϣ�����ע�⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������=����������
������=��������
��
�����������ɡ�֪������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101]

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0080500b56">
��������������ߣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0102]
��ֱ������֮ǰ���ǻ���Ӣ�ۻ���ʿ�Ĵ����ʡ�
��ӵ�б�˭��ǿ������������˭���ϸ�ط��������
��Զ��Ϊ����Ķ��ƣ����������֮ǰ�����ҵ�
�ػ��ߡ���

��ÿ�����˶����㽹���
����ν���ߣ����������Ĵ��ڡ�
��
������ֱ������֮ǰ��

�����<k>
���ᵽ���ߣ�����<RUBY text="����������">�Ǹ�������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080510b57">
������ص��������ִ��Ļ��֡�
����֮����ѧ˵��������ĵǳ���Ϊ
�ִ��Ŀ��ˡ������е����ɴ��������
���󴨡���

{	NwC("cg/fw/nw��.png");}
//������㣯�󴨡�
<voice name="����㣯��" class="������Ů��" src="voice/ma01/0080520e162">
����֪������

{	FwC("cg/fw/fw⏴�_Ц�.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080530b57">
�����о���ܺá�����վ�š�
����ô�������ʽ��в�ʿ���ǡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0080540b43">
����Ϊ��ȥֻ����Ȩ����ռ�������ǿ������
��ʼ���ɵ�����׼������С���

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080550b57">
������
�������¼����ĵ�������������
����ʽ����������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080560b57">
��������ˣ�����Ҫ���ʮ̨���ͱ���
Ҫ����Ԥ�㼶����ʽ�ﻮ������
������ϡ��Ʒ��һ�㲢û�иı䡣
������ֻ�Ǻ���ǰ�������ȶ��ԡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080570b57">
�����е�����һ�����ӣ�ʹ���߾Ͳ���ֻ��
ʿ��ײ�ά���ˡ�
��������Ĳ�����ô�죿���ԣ�ƽ�񡣡�

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080580b57">
�������зָ��ڴ�֮ǰֻ���ھ�����䵱��ǵ�
ƽ������ߣ�������������ӡ�
�����һ������ӵ����������
��Ȼ������ȨҲ��������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080590b57">
�������ڴ�͹����ӵ���������ӵ�������¡
���꣬���Ʋ����Ʊ���ѡ�ٷ��г�������
��¡ʮ�ꡭ�����Ͷ��������ꡣ���ڼ�
�����������ʱ��ȷ�żȻҲ������ԭ�򡣡�

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080600b57">
�����˵ǹ֧�������������壬
��ô��������׳��ľ������ͽ��С�
����������ĵǳ���Ϊ�ִ����ˣ�����
Դ�������Ŀ��ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���ܸо���ɱ¾��ʮ�����ʷ���ء�
�������Ľ�����Ȼ�ܸı�������ʷ����������
ȷʵҲ�������Ŀ�����

���������ֹ۵㣬�´��ֻ���ʲô�����ǳ�
��д�µ���ʷ�ɡ�
���϶�����ʲô���ɵĶ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080610b57">
����ô�����������ִ�ʷ���������´ν��ɡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080620b57">
������ֻ�Ǵ��˵��һ�¾ͽ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���ܺá�
������Ŀγ����ڵ������֮��ֻҪ����ɨ��
�Ϳ���ȥ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080630b57">
�������������˵��������ĳɳ�������
��ͳ������Դ��ֳ��ͳ�εķ�����
���ڸ��صֿ��˶��з�����ʢ����



//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080640b57">
����������״������������������
Ҫ�����������ӡ�����ͼȷ��������
���޵�������λ��ȴ�⵽���Դ�Ӣ����Ϊ�׵�
����������ԡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080650b57">
���ն�ս���վ�û����ֹ������£�
����ԶԿ�֮���ƽ������½�Ľ�չ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080660b57">
������ʹ��Ӣ�����Ϊ���裬���ϴ�ʹ
��ս����������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080670b57">
����������������ĵ�����ͳ�����ߵ���֯
��������������
������ͻ���ս��½����������ͬ�γɹ�����֯��
�ų�����ͳ�����׶�Ȧ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080680b57">
�����������������Ļ���ĵ�������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080690b57">
��֮���Ǵ�ս��ŷ�ݡ����ޡ��Լ�����
�����򶼱�ս��Ļ�����ǡ�
����;����½��������������̽׶�
��ս��ʤ��ʹ����������ͳһ�ڼ�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080700b57">
��Ȼ����Ӣ����´�½פ����ǲ��
̫ƽ����ӭ����;���
����һ�����ù������ˡ�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080710b57">
������ͳ�͹����������Ժ�ƽ������Ҽ�����
ΪĿ�Ĵ�������֯����ʵ���ϣ�������֪��
ֻ�����Ǵ�Ӣ�����
���ǹ��ҵ�����Э����ѡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080720b57">
����Ӣ���������˾��飬���<RUBY text="�գΣ�">���˾�</RUBY>��
��˵���ף�ս����������֮ǰ���´�½����
ս�����沢û�еõ�������ǿ������֧���ӵ�
�����������˲�������Ĳ���������ǳ��ش󡣡�

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080730b57">
����һ���棬��Դ��ȱ��û������֧�ֵ�
���һ�࣬����ս�پ�����ͼ�����֮��
����ά����
��ս�����š�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080740b57">
�����գ���;����Ȼس���ʧȥռ��أ�
����ӭ��������ս��
�����ƽ�һ�����������ݡ��й���������
�������ǣ��������Խ��ڡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080750b57">
��ÿ���˶����ţ�ֻҪ�����޳�����
���ƾ��ܷ�ת����
�����������ء���

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080760b57">
���´��˴��ʷ��ʷ��ǰ���ģ���ʷ���ϡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");
	FadeFwC(300, true);}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0080770b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������ķ�̡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080780b57">
��<RUBY text="������������">�����ޱ�����</RUBY>����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080790b57">
������������������˾���
�����ǳ�Ϊһ�߼������ѹ��͡��ջٳ��С�
��ɱ���񣬵���������ȫ�����𡣡�

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080800b57">
����˴�ս�սᣬ��ͱ�������һʱ����Ȩ��
��ȴ���������˵�<RUBY text="�ǣȣ�">��פ��˾�</RUBY>����֮�¡���
��Ϊ�ѱ�Ľ����������޻����
����֮�¶Դ�͵�ͳ��Ȩ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080810b57">
��ʱֵ��¡�����꣬���Ͷ�������꣬����
һ�������ꡣ
�������������֮ǰ����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080820b57">
���ǵġ�
������֮������<RUBY text="��������">ֻ������</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0080830b57">
���������ϡ��´����ǰ������ʱ��˳��
����ȥ��
����ôֵ��������

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0080840b33">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������

	ClearWaitAll(2000,3000);

}

..//������ָ��
//�Υե����롡"ma01_009.nss"
