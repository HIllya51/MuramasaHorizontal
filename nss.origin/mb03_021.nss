//<continuation number="1330">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_021.nss_MAIN
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
	#bg072_��Ĥǵ����������L���B_02=true;
	#ev152_Ҋ�¤��y�Ǻ�_a=true;
	#bg002_��a_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_022.nss";

}

scene mb03_021.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_020.nss"
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg072_��Ĥǵ����������L���B_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	StL(1000, @0, @0,"cg/st/3d����_����_ͨ��.png");
	FadeStL(0,true);

	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm01",0,1000,true);

	Wait(200);


	SetFwC("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0210010a02">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��һ��������ߣ���Ȼ������
��
����Ҳ�ѹ֡�

����˵�ڽ�֮����������������˽����������棬��
�ǵ�һ�Ρ�
�����һ������һĿ��Ȼ���޷��ڸǵ��쳣�ж�������
��Ϣ��

�����˵���ﲻ�Ծ���ֻ��������<RUBY text="����">����</RUBY>��ͬ��
��������˵����ʡ�������˵��޷���⡣

��������˵����Ԫ��Ĵ��ڡ�
���������ߣ��ֲ��ò�˵�䳬Խ�����ߡ�

�����ٶ������Զԡ�

��ԭ������ݷ�С��֮ʱ����Ѱ���������Ǻ����ڵ���
����
����ͻȻ����ײ�ϣ����һ�������������ʽ�������ǳ�
�����ϡ�

�����˫˫��Ӳ����ܵ����ǣ�����ɫ������ȴ��Ȼ��
�á�
����Ȼɨ��һ��һ���������ڣ���΢΢�������Դ�����
�ٶȽ����������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ݰ�", 5000, Center, Middle, "cg/bg/bg072_��Ĥǵ����������L���B_02.jpg");

	CreateMovie("���ӻ�", 4999, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 4000, null, true);
	Request("���ӻ�", AddRender);
	Move("���ӻ�", 0, @0, @-100, null, true);
	Rotate("���ӻ�", 0, @0, @180, @0, null,true);

	CreateTextureSP("�}��", 4000, Center, Middle, "cg/ev/ev152_Ҋ�¤��y�Ǻ�_a.jpg");

	FadeDelete("�}�ݰ�", 1000, true);

	Wait(300);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210020a14">
�����˸����ң�˵�ǡ���С��������Ӿۼ���
ʿ��������
�������е���Ȥ��������һ�档��


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210030a14">
�������������ʿ�ǡ�
�����ͣ�����֪���ӣ����ܱ����˶��ٴΣ���
�ɿ��ͬ����ʬ�����ǰ������


//���⡿
<voice name="��" class="��" src="voice/mb03/0210040a14">
��һֱս����������һ�
������һ�γ�ʵ��ʱ�⡣��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������ϸһ������Χ���˽��׵���������ʮ����
��������ĵ�ʬ�������ߡ��������װ�ײк�ɢ��һ�ء�
�����Ƕ��Ǳ��������������������������˴�֮ǰ��
�����ı�ʿ�ǿ��ҵ�����״̬��ͬ��

��������ͨ��ʿ����Ϊ������Ⱦ���Բ��������ֵ�ס��
Ⱦ��������һ�ڣ��¸ҵ������Ǻŷ�������ս�ɡ�
��Ȼ��ȫ�𡭡����ɰ������顢��顣

����ıȡ�һ������<RUBY text="��">��</RUBY>��
��Ѫ�������ս���ϣ����Ծ��ٵİ������ߣ�û������
һ����Ѫ��ֻ�������泩��̾�˿�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210050a14">
�����ң�û�뵽������Ҳ��������
������Ĺ����ǳ��ױ����ĸ��������أ�
���һֱ�����ö�á���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210060a00">
�������⡭����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ħ�
����а�֡����컯���ǹ�����

�������ˡ�
���ն�����֮�á����������Ѳ����˵Ĵ��ڡ�

������������Ψ��
��
��������������

��ֻ������·��
���������Ϊ�ˡ�����������ֻ��նɱ����˵����á�

�������������׵ĵ���
�����٣��ڽ�֮������֮ʱ��

���ǵġ�
��һ�Ⱦ���ȡ��������

�����ǡ�
��������ˡ���
��
���˿̵��ң�ȴ�������������䡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mb03/0210070a00">
���㡭��
���Ѿ����ز�ȥ���𣿡�


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210080a14">
�������ţ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210090a00">
���ص���ǰ��������
���������Ǹ�С����ʱһ������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210100a14">
������������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210110a00">
�����Ѿ�����ˡ��Դ�����ǰ����û����ֹ
�㿪ʼ������ɽ��Ϊ�н�����ɱ������
����������������ɱ�����ϵľ����
����ˡ�����


{	FwR("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210120a00">
���������ɣ�
������ķ�񡭡������������������������
�����ǻز�ȥ�𣿡�


//��������
<voice name="����" class="����" src="voice/mb03/0210130a00">
����ռ����ǹɷ�񡭡�
���������Ŭ����Ҳ�޷���������!?��


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210140a14">
��������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210150a14">
���š���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���ҵĻ��ﲻ֪�����л�Ϊ�˺�С�
������ȭ��ס�˶�ͷ��¶�������ģ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210160a14">
������������ʶ����Щ<RUBY text="����">ƫ��</RUBY>����
�������ո�˵����֮���˰ɣ�����������


//���⡿
<voice name="��" class="��" src="voice/mb03/0210170a14">
���Ҹ���û�з衣
��Ҳû�иı������ȥ�ǣ�����Ҳ�ǣ�
<RUBY text="��������">�Ҿ�����</RUBY>���ն��⡣��


{	FwR("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210180a00">
������ô���ܡ�����
�����������£���ô�������������������ģ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�������³��������֮��
����ƾ�����һ��ϣ��������˵����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb03/0210190a00">
���������ǡ����Ҳ������㳹�׷��ˡ�
�������ϣ����ǡ���������һ�����ԡ�������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210200a14">
��������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210210a00">
��������䣬������˶���С���ׯ��
�����������������ķ��ˣ�����ʧ�أ��Ͳ�
��ֻ������̶ȡ���


//��������
<voice name="����" class="����" src="voice/mb03/0210220a00">
������Ӧ����������
���˿̣����ٴ��ȫ��
�������ŷ��ϵ���������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���ǵġ�
��������Ǻ��Ǹ����׵Ŀ��ˣ����쵢�����ƻ��Լ�ɱ
¾֮�Ρ����������Ž��˷ѽ⡣

�����Ǻ�ֻҪ�ڴ���Ͽ��������㹻�ˡ�
���������Ϳ�����Ⱦ���ģ���Ƭ��������ɰ��ǵ�����

������һ�в�û�б����ʵ���ѵ�������˵�����Ǻŵ�
ʧ�صõ���������
�����ҡ���������һ���������в��ᣬ�ѵ�������

������������
����ϣ����������������һ�У�ʱ�����պ������塪��
��Ϊ���������Ϊ��������˶�һ�ʹ�����

��Ȼ����ֻҪ�����л��д���Щ����������ڣ�ֻҪ
�����벹����һ�еĻ�����
���ҡ�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mb03/0210230a00">
���������!?
����!!��


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210240a14">
����������
��������鷳�ļһﰡ����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����Ļش�����̾Ϣ��

����Щ���ᡪ��
�����а��ݵ�������������ע���ҵ����塣
��
����֪Ϊ�Σ�����<RUBY text="��������">΢΢һ��</RUBY>����ֱ�ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210250a14">
���׻�˵��Ϊ���Ӳ�֪��ĸ�ǡ���
�������޷���ͨ������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210260a00">
������������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210270a14">
����֮����û����˲Ϣ֮��<RUBY text="����">����</RUBY>�ض���
������������Ϊ���㡣��


{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210280a00">
��ʲ����
����������ô����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��Ϊ�ˡ����ң�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210290a14">
���������������ˡ�
����û�з衣������ô���ܷ衣��


//���⡿
<voice name="��" class="��" src="voice/mb03/0210300a14">
��ɱ���ǰ�ɽ������������ڴ��������䣬��
��ɱ�������Ͼ��񣬶�����ˡ���������ô˵
�İɡ�
������������⡣��


//���⡿
<voice name="��" class="��" src="voice/mb03/0210310a14">
����һ�ζ�û�У�<RUBY text="������������������">������û��ɱ������</RUBY>����


{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210320a00">
������ʲô����!?��


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210330a14">
��������������ս����ʤ����ɱ�����ǡ�
�����Ǵ�����û�л������⡣��


//���⡿
<voice name="��" class="��" src="voice/mb03/0210340a14">
��������Ϊ����ֻ����Ϊһ������������䷨
���ѡ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210350a00">
���䷨����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����ǡ�����ĸ�Ľ̻塪��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210360a14">
��ս����ɱ¾��
���䷨��˵�������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210370a00">
������!?��


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210380a14">
��������⡣��������
��ֻ�����������ն��ɱ������


//���⡿
<voice name="��" class="��" src="voice/mb03/0210390a14">
�����������䣬�Թ���Ժ������塣��ˣ�Ҳ
��δ����������
���������𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��Ҳ����˵���������ԣ�<k>
�������������ȱ�������������һ��ʼ�Ͳ��ֵ���ն��
ɱ����!?

��������ǰ�ĵ�һ�ο�ʼ����
������ɽ������С����񣬺�������ذ�һ�С���!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210400a14">
����֮��������
���������²���֮�������


//���⡿
<voice name="��" class="��" src="voice/mb03/0210410a14">
������˳���䷨��
���������Ե��䣬
����ĥ������У�ΩԸ̤������ı�������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������������ô�����ѵ�˵��
����Ը�������֣�������
����������Ⱦ�����������𡭡���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mb03/0210420a00">
������Ϊʲô��
��Ϊʲô���С��������ģ�Ը������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210430a14">
����Ϊ�Ǿ���<RUBY text="��������">�������</RUBY>��
���᳹�����<RUBY text="����������">������ս��</RUBY>����������
���ǹ���ڵ����塣��


{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210440a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���㡣
���㣬

����ģ���ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210450a14">
��Ϊ��ʵ��Ը������Ҫ�ù����־ͿȾ������
�硭���Ҿ���������ģ�Ҳ������������ġ�
�������ѭ�򽥽��Ļ������ŵ�<RUBY text="����">����</RUBY>�ɣ���


//���⡿
<voice name="��" class="��" src="voice/mb03/0210460a14">
����Ϊĸ�״��˽̸�������Ǵ���ġ��㲻����
���̽�������ڹ�͵��䡣���ǿ��������Ĵ�
�ԣ������Ļᷢ���ء���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210470a00">
���������ԡ���
���Ż�<RUBY text="������">������</RUBY>�𡭡�����


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210480a14">
���š�
��ֻҪ�Ҳ��ż������㣬��ͻ������������
���С���


//���⡿
<voice name="��" class="��" src="voice/mb03/0210490a14">
������������Ϊʵ�����Ŀ�ꡣ��


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb03/0210500a01">
������������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210510a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����ǣ�ʲô��˼������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210520a14">
���������Ҿ��ò����ʱ���ˡ�
����Σ�������������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210530a14">
���Ƿ�����׼��ս������������������أ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������ڴ������������Ǻš������Ǵն�����֮�á���
����Ͷ�����������ʡ�

������<RUBY text="����������">����������</RUBY>��

�����ǲ�ƴ�ڻ��
����ȻҲ��������˵Ц��
���������Ǽ򵥵ĳ�Ū��
������أ����Ķ�����

��
����֪����������<RUBY text="����">�Ǹ�</RUBY>�Ѳ�����ã��

�������˶ೡɱ¾���־磬
���˿�Ҳ����������һ����̨�ϣ�
�����ң���һ�в��ǵжԵ�ս������ɵģ�ֻ��Ϊɱ¾
��ɱ¾������������˵�ġ�

����һ˿��ԥ��û�У�

������������������Դ�ڷ��
���ǿ��µ��������ҵ����������ˡ�

�����ǣ��������ˡ�
������������Ƿ���Դͷ������޷����ӵ����飬��
�����������۽�����Ư���Ľ�˵��

�������϶�������Ҳ����Ϊ���
�����ǣ����Ѿ�����ˡ��������������ǣ��ҵ��ӱ���
����ѡ�

���Ǻ���������ӱܡ�
����Ϊ��ֻ����жۻ���

��նɱ���õĵ��С�

��������Ҫ�ģ����෴����
��ֱ����ʵ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/mb03/0210540a00">
���⡣
����û�з衣��


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210550a14">
���š�
�������ڶ��ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����һ����������ӣ�ü����͡�

�����������˶�������¡�
�������ǰ��������¡���<k>�����������档
�������£����ѡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/mb03/0210560a00">
���⡣
���������Ǻš���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
����֪Ϊ�Σ���Ҫ��С�
�����������ں����ڡ�

���þ�������������������븹�С�
�����С�������ԥֻ����Ȼ����Ϊ�µ��������û��
�κ������ˡ�

������Ϊ��ĥ�µ��С�
����������һ��������

�����ǳ��ϡ�
��
��
�����ǶϾ���

�����ǣ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mb03/0210570a00">
������а��
�����ҵĵ��ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���£ǣ���Ȥ�
//���ե��`�ɥ�����
	SetVolume("@mbgm*", 100, 0, null);
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 600, 1000, null, true);
	Delete("�}��*");
	Delete("���ӻ�");

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�����������Լ������á�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//���£ǣ��Ф��椨
	Fade("�}ɫ�\", 1500, 0, null, true);
	SoundPlay("@mbgm04",3000,1000,true);

	Wait(300);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210580a14">
������������<RUBY text="������">���Զ</RUBY>�š�
������㻹��˵�����ֻ��Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
������������һ������˵���Ļ����ɫ�Ķ�ħ����
��Ц��
�������ε�ʮָ���桪��Ȼ��ͬʱ��¶��ϲ����ɫ����
�顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210590a14">
������������Ҳδ�����ɡ�
���������������������һ������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210600a00">
��������ߣ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210610a14">
����Ȼ�ǣ��ҵ�����ˡ�
������������������Ϊ��������ս���Ļ�����
��Ȼ�Ѿ��¶������˰ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210620a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210630a14">
���ƶ���֡������Ǵ����ľ��Խ��ɡ�
��ն�м�ն�ѣ���ɱ����ɱ����


//���⡿
<voice name="��" class="��" src="voice/mb03/0210640a14">
�����Ƿ����������Ѱ飬
������Թ�Ϊ�еĺ޸��
�����ߡ���ĸ�״����������ˡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210650a00">
�������⡭����


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210660a14">
���������ĳ���˵�����
��������˵����ȫ�ȼ۵ġ���


//���⡿
<voice name="��" class="��" src="voice/mb03/0210670a14">
���������߹�ͬ��ȴ�ľ��ģ�
���������аɣ�����������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0210680a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�����ǡ�
�����ǡ�
��
�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0210690a02">
����������Ҫ���־��ġ�
����Ϊ�ն����������ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������
	StL(1000, @0, @0,"cg/st/3d����_����_ͨ��.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/mb03/0210700a00">
��һ��������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210710a14">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
��һֱ��Ĭ�ŵ���Ů������Ϊ�˱�����һ��վ���м䡣
����ü�ҽ���������̸���⵽��������ܲ����⡣

�����ǣ����������˵Ļ����ǹ��������������ԡ�
�������Ȱ���Ȥ��ìͷת���Ǳߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 4000, 522, Middle, "cg/ev/ev152_Ҋ�¤��y�Ǻ�_a.jpg");

	Move("�}��", 500, @-10, @0, Dxl2, false);
	Fade("�}��", 500, 1000, null, true);


	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210720a14">
�����Ǻ��ˡ�
���Һܱ�Ǹ���㲻�Ų��ʣ�ֻ�˺;���˵����
�������μ��滹δ���к��ʹ�����˽�̸Ҳ��
ʧ��ɡ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0210730a02">
���������������ҽ�����
����������Ҫ�����ࡣ��


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210740a14">
��Ϊ�Σ�
��������ڣ��Ƿǳ���Ҫ�ģ��������˻�����
�⣬����Բ�����˼ʹ�ϵ����


//���⡿
<voice name="��" class="��" src="voice/mb03/0210750a14">
�����ܸ������趼Ӧ��ע����ڡ�
�����ԣ��ҽ���Ҳ���ȴ�ʱ���ʺ�ʼ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
�����������Ǹ����������ʱ���ʺ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0210760a02">
������˵ʲô��ûʲô���ֿ��Ա��������ġ�
��������������׵İɡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210770a14">
���ߺߡ�
�����ǲ����ź����͡���


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0210780a02">
���ҽ���
��˵�����淴���𣡡����ֲ�������!?��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ܥ�����ȫ���i�ࡣ
//�����夲�स�夲�ऴ�����Τ��꤭�줫�����ꤹ������
//���Τ������礦�ޤĤ���餤�ޤĤդ��餤�ޤĤ����ͤ�
//���Ȥ���ˤ���Ȥ����֤餳�����Τ֤餳�����Ѥ���
//���Ѥ��ݤѤ��ݤΤ���`��󤬤󤷤�`��󤬤�Τ��`
//�����������`�������Τݤ�ݤ��ԩ`�Τݤ�ݤ��ʩ`
//���Τ��礦���夦�ᤤ�Τ��礦����

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210790a14">
���ѵ���������ޣ��ԣ�һ�����ֳ���������


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0210800a02">
����ʲô��������������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210810a14">
������������ʾ����


{	FwC("cg/fw/fwһ��_ŭ��c.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0210820a02">
��˭��������հ�!?
���ҵ���˼�ǣ��Ҹ���û���������ļһﵱ��
�ˣ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210830a14">
���ţ���


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0210840a02">
���㲻������а��ɡ�����Ѱɡ�
����������Ϊ���Ǵն����������á�����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0210850a02">
����Ҫɱ���㣬<RUBY text="������">������</RUBY>��
��������˵�������㹻�ˡ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb03/0210860b40">
�����ǣ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210870a14">
����������
��ԭ����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
�����������ÿһ�붼������ɱ���Ũ�ȡ�
��������ɫ�ı�ѩ�����Ǻ���ԡ����ȴ��������һ����
��һЦ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210880a14">
��Ҳ����˵���蹷�𣿡�


{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0210890a02">
��ʲô!?��


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210900a14">
�������Ҳ����ڳ�Ц�㡣
����äĿ�Ķ�־�����ǲ���رܵġ���


//���⡿
<voice name="��" class="��" src="voice/mb03/0210910a14">
������Ҳ�ܾ�����
�������������Ǻ��ˡ���Ȼ��һ�ʱ��֪��������
�����ӣ��ǲ�������ҵġ���


{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/mb03/0210920a15">
���š�
������������Ĺŵ�����������˳̶ȵ�װ�ס���


//������������
<voice name="��������" class="��������" src="voice/mb03/0210930a15">
������ǣ���������������ڡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210940a14">
����Σ���


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb03/0210950b40">
�������ߡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210960a14">
����������
���治������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210970a14">
�����µ�һ�������ڣ�
����˷Ǳ�Ѱ��֮���Ȼ��;���ͬʱ����
������ǰ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
�����ˣ��Է������������á�
������ٿȻ�䣬���Ǻ�¶����˼̬֮��

�����絼���˲��϶���Ĵ𰸣������������㹫ʽ��ѧ
��һ�㡣

������һ�������˫�۾�ת����ߡ��������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//���⡿
<voice name="��" class="��" src="voice/mb03/0210980a14">
������������
������ķ蹷������Ҫ������ս����


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0210990a14">
��������ô������أ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0211000a00">
������������


{	FwC("cg/fw/fwһ��_��Ц.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211010a02">
����ô�ˣ�
����Ը�����һ��������������һ��һ�����𡣡�


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0211020a14">
����Ȼ��ƫ��һ��һ����Ҳ��ǿ��������ν��
�������������벻���ǡ�����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211030a02">
��������
����Ȼ��֪��������ʲô����


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211040a02">
�����Ǿ������Լ�<RUBY text="����">����</RUBY>Ŷ��
�������ն������������𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0211050a00">
������{WaitKey(1100);}���ԡ���

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211060a02">
��û���⡣
����Ϊɱ�Ǽһ���ˣ����ҡ���


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0211070a14">
������������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211080a02">
������֮���޹ؽ�Ҫ��
��ɥ����ֻ�����Ǹ���ħ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0211090a00">
������������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0211100a14">
��������������������������������


{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0211110a14">
���ȵȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("�}����100", 10000, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	CreateTextureEX("�}����200", 10000, Center, Middle, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
	Move("�}����200", 0, @0, @100, null, true);

	Fade("�}����100", 500, 1000, null, true);

	OnSE("se���L_����_�z_���02",1000);

	Fade("�}����200", 500, 1000, null, false);
	Move("�}����200", 1500, @0, @-100, Dxl2, true);

	DeleteStA(0,true);

//���y�Ǻš�����

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//���⡿
<voice name="��" class="��" src="voice/mb03/0211120a14">
���ղš���
����˵ʲô����


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0211130a00">
��������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0211140a14">
���蹷���ش��ҡ���


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211150a02">
��ֵ���㷴������
������������Ȼ�����顣��


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0211160a14">
��������


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211170a02">
������ն�����ɱ��Ļ�����Ϊ�����Ե�ʱ�
����ɱһ���ˡ�
�������ҵ����ڿ�û�������鷳�Ĺ涨����


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211180a02">
�����Բ���ս����ֻ�����ˡ�ɱ������һ�ˡ�
����ô�����ľ�������а��һ���ˡ���


{	FwR("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211190a02">
���Һʹն��������Ƕ��˺�һ������֮����������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0211200a14">
����������
����������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0211210a14">
����Ҳ����ô������𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
�����Ų���Ƶĵ�Ȼ��ɫ����ɫ����ѯ�ʵ���
���ʺ��������޷��ش�

����Ȼ���������޳ɵġ�
��һ��˵���ڵļ�ֱ�ǵ�Ȼ֮��

���������ɱ�оͱ��뻹��ɱ��ͬ�顣
������������ڵĻ������ľ�ֻ�ǵз�һ�ˡ�

����Ϊ�Σ���Ҫѡ��ǰ���أ�
���������跳�յ�ѡ��
��
��Ȼ���һ�����ݽߣ�����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//���⡿
<voice name="��" class="��" src="voice/mb03/0211220a14">
��������ô����
����Ҳ�������ڴ��ģ����Դ��������蹷����
�����𣿡�


{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/mb03/0211230a15">
��������


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0211240a00">
��������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb03/0211250a01">
��������


{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211260a02">
�������ն���������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0211270a00">
���ǡ���
���ǰ�����


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0211280a00">
��������������


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mb03/0211290a14">
��������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����������
	WaitKey(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
�����������أ�������ů�ķ硣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��������
<voice name="����" class="����" src="voice/mb03/0211300a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
���ؿ�ӿ����

����Ҫ���ݵĻ��������������ĺ����С�
��һ����˳����ƽ�˾���������ա�û�з��գ��е�ֻ
�Ǵ˿̵İ��꣬����ע����ݰ���������ĺ��ǣ�ب��
���䡪��

��Ȼ������ȴ�Ƽ�鳴�ģ�
��
�����������ž��轫�Ӻ���Ծ��Ϯ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StL(1000, @0,@0,"cg/st/3d����_����_ͨ��.png");
	FadeStL(0,true);

	FadeDelete("�}����*", 500, true);

	SetFwR("cg/fw/fwһ��_����a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211310a02">
�����Ѿ�˵�ˡ�
���������ǵ����Ӷ����ˡ���


{	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0211320a02">
�����ڡ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb03/0211330b40">
��ŵ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���褤�Ϥ��ä�
//��ͻ�M
	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");

	Move("@StC*", 200, @0, @-200, Axl3, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	DrawTransition("�}ɫ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	WaitPlay("SE01", null);

}

..//������ָ��
//�Υե����롡"mb03_022.nss"