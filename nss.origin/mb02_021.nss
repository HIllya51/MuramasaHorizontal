//<continuation number="360">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_021.nss_MAIN
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
	#bg026_���ӘSɽ��a_03=true;
	#bg064_���ӘS���ڵ�_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_022.nss";

}

scene mb02_021.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_020.nss"

//��ҹ
//�����ӘS��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg026_���ӘSɽ��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���賿�ĵ㡣
����׼���˳�������֮�ʣ���ʼ�ж���

���ܿ�Ѳ�߶ӵ�·��Ҳ����ǰ������ϡ�
�������ڲt��¥���ߵ���խ����֮�䣬��ҹĻ��
Ǳ�С�

������˵ʵ�����������ǡ�
��Ҳ������������ˡ������ǡ�

���ǳ����ֱ��ݡ��Ǵ�<RUBY text="��������">����Ч��</RUBY>�к�
���⡣
�����У���λ�������ӵ����ߡ���

��ÿÿ˼�ǣ������˸����ɻ�
����������ˣ������ж��ǲ����ܵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0210010a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����Ҫ��ֹһ�������ڵ��졣
������Ұ�ʱ�仨�ڵ����ϣ�����һ���������ڼ�չ��
�����ж���

������ڼ������ȡ�
��������λֻ֪��ǰ�����Ů���Զ�Ϊ�Ļ��������޷�
���¡�

��������һ���к�֮ɽ����������ɽ���ɡ�
���������塣

�����������·�����
��Ϊ����ֹ������ֵ�Ĳк��ѻ��Ľ�֣�������ͬ�С�

�����ѷ��������ж�����һ���ڴ�����ս���������ɱ��
��ͯ�ġ������������ҵ�Ȱ˵�������ˡ�
����Ϊ�Һ����ף�û�гɹ��Ŀ����ԡ�

��������������������ƺ��޸�ϵ����ʱ�������ס��
��������һ�߳ɹ���ϣ�������ܷ������ĵ���ֹһ����
�����Լ�Ҳ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg064_���ӘS���ڵ�_03.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw����_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210020b20">
���ȴ��Ѿá���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0210030a00">
���ٵ����𣿡�


{	FwC("cg/fw/fw����_΢Ц.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210040b20">
����׼ʱ��
�����ˣ������أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0210050a00">
���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֩�룦������ţ��
	StR(1000, @100, @200,"cg/st/3d����֩��_���.png");
	StL(1000, @-100, @350,"cg/st/3d������ţ��_����.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);

	CreateSE("SE01a","se����_����_�z�i��03");
	CreateSE("SE01b","se���L_����_�z_̤���z��02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeStR(300,true);
	MusicStart("SE01b",0,1000,0,800,null,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210060b20">
��������


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210070b20">
������ʧ��
��ûע����ڽ��ԡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0210080a00">
����Ϊһֱ����Ǳ���š�
������ʧ�񡭡�������ͻ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ó�����Ĵ�����ӹ���ɣ�����Ҳ�ƺ�ӵ��Ǳ�����ܣ�
ֻ�����кڰ�����Ӱ���������伣��
���޷������˲��Ҳ����Ȼ��

������С������ȷ�Ǿ޴��ʧ��
�������������Ůʷ�������µĻ���������֮ǰ����ø�
���ܵ��³���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mb02/0210090a00">
���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���ܾ���<RUBY text="����">����</RUBY>���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210100b20">
��������С���������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0210110a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ڼ���֮ʱ�����Ѿ���֪�������ǳ��н��С�������
����ȫû���ϵ��������ϡ�����ϵĶ�����
�����������������У������������ŵı��顣

������û��һ��ʼ��֪�ᣬ��������������ͷ����Ϊ
��Ӫ���<RUBY text="��������">Ϸ�焿��</RUBY>��
����������Ӫ�����е������̶��������ӡ�󡪡����
��Ҳ��Ӱ�쵽�������׵��Ĺ�ϵ�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210120b20">
��������ô�������߰ɡ�
�������У����С������ң��鷳�ն����˵�
�󡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0210130a00">
�������ˡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0210140a02">
������������
������ȥ����������������һ������


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210150b20">
�����ڹ�ŮӶ���ú�������������
��ԭ��ҹ��������������������ǰ��㣬��
�Ž�ҹ������������


//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210160b20">
��һ����������֮���û�������ˡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0210170a02">
������
�������ն�������ʲôʱ��װ�ף���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0210180a00">
��<RUBY text="����">Ǳ��</RUBY>�ж��������ٽ�<RUBY text="����">Ϯ��</RUBY>�ж�֮ǰ��
�����ڻ��硭����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0210190a00">
��װ�׵�˲�䣬���������ڸ����������߻�
ע�⵽���ǵĴ��ڣ�������ǻ�ȫ��ɱ����
��������׼ǧ��һ���Ļ��ᡣ��


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0210200a02">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���ڵ��桢���������ڣ����ߵ��״�̽�����ǰ��裬��
������̽�⻹����Ч���ġ�
����Ȼ����̽�ⷶΧ��һ�����ޣ���ͬһ������֮�ڳ�
�ֵĿ������廹�ǿ���̽�⵽�İɡ�

���˿̻�е���������ἴʱ���֡�����ʱ��������
�Ը��㷶Χ��
����˵���µ�½ս��������䱸���������ɱ����ǿ��
������̽�⡭��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210210b20">
���˴���ս�ؼ�����Ѹ�١�
��һ���ж��ѳ�ִﵽĿ�ģ�����Ѹ�ٳ��ˡ���


//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210220b20">
��һ���ܱ��Ͽձ�������������·һ����
���������������֮ǰ�ӳ����⡣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0210230a00">
�����ס���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0210240a02">
��������ô�죿��


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210250b20">
�����ϴ�������Ϯ����ͬʱ������������ʧ��
�ٵĻ���һ�оͶ���¶�ˡ�
����������λ���˵���Ҳ������̡�����


//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210260b20">
����Ϊ������·������ϳ�����
�����赣�ġ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0210270a02">
���Ҳ�û�е����ء�
��������ֻ�ǲ��뻹Ҫ�չ��㣬�����ޡ���


{	FwC("cg/fw/fw����_΢Ц.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0210280b20">
��������ѽ�����𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0210290a00">
����������Χ�����Σ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0210300a01">
��û���쳣��
����Ȼ��Ҳ����˵���´󼪡���


//��������
<voice name="����" class="��������" src="voice/mb02/0210310a01">
������ϵͳһ�������ɭ�ϡ�
����������Ȼ����Ϥ�ڲ�����Ϊ������·��Ǳ
��Ӧ�ò��Ѱɡ�����


//��������
<voice name="����" class="��������" src="voice/mb02/0210320a01">
��ֻҪ�Ǳߵ���ţ���Ϻ��ȡ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/0210330b40">
���ſڿ��ӣ�����һ֩�����
��������޵�֮����ͬ���᲻�����ڰ�������
�᲻��Ϊ�ܡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0210340a01">
������<?>
{Wait(500);}
��Ӵ������
��������ȱ��ȴ������֪�߳ܣ���Ҳ�㽣�У�
���µ�һ�����е��������ǲ�һ���ء���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb02/0210350b40">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb02/0210360a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������ܾ�����Щ���ơ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

}

..//������ָ��
//�Υե����롡"mb02_022.nss"