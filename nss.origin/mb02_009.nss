//<continuation number="690">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_009.nss_MAIN
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
	#ev144_Ů���_�Α���Ҋ�ݤ���һ��_a=true;
	#ev144_Ů���_�Α���Ҋ�ݤ���һ��_b=true;
	#ev144_Ů���_�Α���Ҋ�ݤ���һ��_c=true;
	#ev144_Ů���_�Α���Ҋ�ݤ���һ��_d=true;
	#ev160_����=true;

	#bg066_���ӘS���ڤΤɤ�_01=true;
	#ev144_Ů���_�Α���Ҋ�ݤ���һ��_a=true;
	#ev160_����=true;
	#ev144_Ů���_�Α���Ҋ�ݤ���һ��_b=true;
	#ev144_Ů���_�Α���Ҋ�ݤ���һ��_c=true;
	#ev144_Ů���_�Α���Ҋ�ݤ���һ��_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_010.nss";

}

scene mb02_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_008.nss"


//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg066_���ӘS���ڤΤɤ�_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm26",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ӱ���Ĳ����ɵ����ɰ�����ǰ
���£��Ҽ���̽����ڡ�
��Ѳ�ϲ��ǹ�һ�ܺ���������ȥ��

��������Χ�������ء��ֿ�͹�����ʩ��
���Ǹ������˵��Ҫ�Ƚϵ͡���Ϊƽ�������򡣲����
��ÿ�߸�ʮ������ײ��Ѳ�߱��������ɵ�Ŀ����鷳��

��Ҳ����˵��������˵û�ж�����塣
���Ҽӿ첽�����������Ը��ߵı�����ȥ��һ�����
һ��������˷ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb02/0090010a00">
����������Ե�ɺϡ�����������ע����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\��", 10, "#000000");
	StL(50, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	StR(50, @0, @0,"cg/st/st�@��_ͨ��_˽��a.png");
	FadeStA(0,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����������������˸�̾��

{	FadeDelete("@OnBG*", 2000, DxlAuto);}
���������Ϻ͸Բ�ӣ�ӡ���ʤ�ߺͰ��ߡ�������
�뱻�����ߡ�Ӧ����������Ӧ���������ߡ�
��һ�������һλ���

�������ڴ���ȴ�����ⳡ���ˡ�
���������������綼����̫Զ���Ҹ�������Ϊ����
ȴ���̲�סȥ˼����

�������������Ķ�̫�����ء������ǵ�����������
��������˵�ǲпᡣ
���������˵����˻�ʹ���ֿ������Ի�����
���ǻ�����෴��Ч���ء�

�����������ǰ�߾ͺ��ˡ�
���Ҳ������ϣ������ȴ���Լ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����x
//�����ߣ�һ�������ˑ����ޤ�
//	CreateTextureEX("�}�ţ�", 2000, Center, Middle, "cg/ev/ev144_Ů���_�Α���Ҋ�ݤ���һ��_a.jpg");
//	Fade("�}�ţ�", 1000, 1000, null, true);


	PrintGO("�ϱ���", 5000);
	OnBG(100,"bg066_���ӘS���ڤΤɤ�_01.jpg");
	FadeBG(0,true);
	DeleteStA(0,true);

	FadeDelete("�ϱ���", 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ܹ�������ɽ���ϣ���ͣ�½Ų���

������Ů��һ���������ֵؽ������£�һ��ɻ���
�����Կ������Ǵ���ũҵ���¼��Ͷ��ߵ�������
�������൱��λ��Ů���ǵ���Ϸ��

�����������ע����������Ļ�⾰��
����ʹ�Ҳ��ò�����ע��ģ�ȴ���ڲ�Զ�����Ǹ�
���������ǵĹ�Ӱ��

�����Ǳ��ˡ�
������һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�", 2000, Center, Middle, "cg/ev/ev144_Ů���_�Α���Ҋ�ݤ���һ��_a.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	Wait(500);

	OnBG(100,"bg066_���ӘS���ڤΤɤ�_01.jpg");
	FadeBG(0,true);
	DeleteStA(0,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0045]
����ŮĿ��ƽ����ע������ƽ����һĻ��
���Ƿ�ƽ��������ζ�ź������
����<k>ٿȻ������ʶ����һ��֮�佨���Ĺ�ϵ�Ѿ�����
����ֻһ�۾Ͷ�����Ȼ���أ���������ָп���

��ʱ��Ӧ�û�����ܳ���
��Ȼ��ʱ����Ȼ������ȴ�кܶ���ᡣΪ���˽�
���һ������˵Ļ��ᡣ

���Ҿ������Ǹ������Ů����

�����˾�������ֱ����<RUBY text="��������">�˹���Ʒ</RUBY>��
�����ֲ�ͬ����ż�ĸо���

�������е�˵���ǡ������һ������

��������ż������࣬�׵����ı��ǿն���
����޴�������ȣ�ȴֻ�ܸ��ܵ�һ����С���ģ�
��յĴ�Ƭʣ��ռ�ǳ����ԡ�

�����Կ��������������Ƥ�ҡ�����ż��
��
����һ����ͬ��
��<RUBY text="��������������">��û��ʣ��ռ�</RUBY>��

����������һ�������С��������
����<RUBY text="��������������">������ʮ�����</RUBY>��

����Ů������֮��ֻ��Ψһ����־��Ψһ�����
Ψһ��Ŀ�ġ���һ��ʼ���ǡ�
���Ȳ������ࡣ
��Ҳ����ż�ˡ�

�����ǻ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mb02/0090020a00">
���Ǽһ��ǲ��ҵ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ȥ����δ�������ļ䣬������ǵ�һ�ν�����ȷ��
���Ի���
����һ�ʣ������ǲ��ҵ���

����żһ���ǲ��ҵİɡ�
�������������ǣ�ȴ�޷���Ϊ�������ˡ�

�����ǻ����ء�
����Ϊ�����������߱��������ܵĻ�����

�������ǲ�����
��
���Ҵ�������

����ֻ֪��һ���¡�
���������벻�ң�����ֻ����Զ�����Ÿ���
�Լ��ĵ�һ���ܡ�

��ֱ������Ϊֹ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_��װ.png");
	FadeStL(0,true);

	FadeDelete("�}�ţ�*", 1000, true);

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090030a02">
���������ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��һ�������Ų����ع�ͷ�����к����ҡ�
�����������ҵ�����������������ע�⡪����
������ȴû���Ƿ����飬ֻ��ĬĬ�ص��ͷ��

������Ҳû��������
���ɻ��Ĺ������������������Լ��Ľ�̸֮�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mb02/0090040a00">
�������Ѿ�ȫ��Ѳ�������𣿡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090050a02">
��������û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��һ��������Ȼ��ش����
�����������ǳ������ͷ����һ�������������ȫ�෴��
����Ҳû��һ������

���������������ж�ʱ��Ԥ�⵽�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090060a02">
���ն������أ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090070a00">
����һ�����ջ�
����ϸ����Ժ��ٸ����㡣��


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090080a02">
���á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����������ʡ�
����������һ����ԭ�����Ǹ�������Ů��ӡ����
�������ˡ�

����������������һ������ϸ�۲�һ���Ļ���
����һ���Ӿ�����ȫ��͸������ʵ��Ŀ��
��������Ȼ�����뷨�Ͼ�������Щƫִ��
�ҳ�����ߣ����Ż�����Ĺ����ǡ�

���������ǵ���˵��Ц�����Ǻ���ǰ��һ��������
���಻��һ�������ҡ�������
��������֮�侫���ϵĲ�����ж�Զ�ء�

�������Կ�ȥ������һ��Ҳ��׷�����ҵ����ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�", 2000, Center, Middle, "cg/ev/ev144_Ů���_�Α���Ҋ�ݤ���һ��_a.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	SetFwR("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090090a02">
����������ô�룿��


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090100a00">
����ЩŮ�����𣿡�


{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090110a02">
������˾�����


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090120a00">
����ƽ�������Ҹ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������ܹ����˿̵�ʱ�յ������ѿ�������ô��
�������������������������ӡ�
����������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090130a02">
����Ҳ��������ġ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�������Ż����³��޵�һ����ƽ��֮����
����Ů���������ֵ�����������һ�С�

��·���������Ӳݷ������顣
��������չ��ҶƬ���ҵ�ҡ���š���������������
�Ӷ��ŷ�ŭ���ֱۡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwR("cg/fw/fwһ��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090140a02">
�������벻Ҫ�۲��ҡ�
��ֻ������ʶ�����������ѡ���


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090150a00">
��̫����һ�������ˡ���


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090160a02">
���Բ��𡣡�


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090170a00">
�����÷�����
�����ں�ƽ���Ҹ�����


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090180a02">
���ǰ���
��<RUBY text="����">����</RUBY>��ƽ���Ҹ�������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ůҧ���촽Ӧ����
���۾�����<RUBY text="����">�з�</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb02/0090190a00">
����������
����Ľ�𣿡���ǰ��Ļ�龰����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���Ҳ�δ����˼�����׳���һ����ֱ�������ư�����ʡ�
���������˻᲻�����ԣ���һ���϶�����Ū���ҵ���˼��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090200a02">
��������Ľ��
���ǰ�����


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090210a02">
������������Ľ�����ʽ����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����Ȼ��һ��������޲����ش����
��������ȴ�̺��ŷ�ŭ������Ȼ����������ҡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mb02/0090220a00">
��������


{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090230a02">
�����ֻ�������Ļ���Ҳ����ν��
��ֻ��������ƶ��֮����ˡ�
��һ��ֻ��������ô��Ϊ����


{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090240a02">
�����ֲ������к�ŵ�򡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��Լ�������ǰ����ŷ�������˻��ڹ�������˼��
�����¹��ҵ��˶���
������ʱ����壬����һ����ȫƽ���������롭��
����̫��������ʵ��

�����������δ�õ����������ƶ��ײ��֧�֣���Ȼ��Ȼ
���ܵ���Ȩ�ߵ���ѹ������������
�����̳�����ǰ���쵼������һ�����ԡ���
ΨԸ��������ʮ�ּܺͽ��١�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090250a02">
�����������Щ��ԣ������<RUBY text="����">ǿ��</RUBY>�������ۡ�
���������������˲Ʋ���
�����Լ������������Ϊ�񡣡�


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090260a02">
�����ҡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����Ů��ϸ��ָ�⣬ָ���������������µ�Ů�١�
���Ƕ������Ƿ�����ָ�����ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090270a02">
������������֪���
����δ���ǹ����������Ǻ�ƽ���Ҹ��Ĵ���
��ʲô����ֻ��һζ�������ܡ���


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090280a02">
�����˷��С���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��һ���ظ����ҵĻ���
����������Ҳ���Ƿ����������о��顣

�����������Ů���������
��<RUBY text="������������">Ӧ��˼��ʲô</RUBY>��

��˼����ȥ����ֻ���³���ӹ�Ļ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/mb02/0090290a00">
���������ĸ����Ҷ���һ���ġ�
�����ۺ��������̬����


//��������
<voice name="����" class="����" src="voice/mb02/0090300a00">
���ʱ����屾��������Ч�ؽ���
�Ӷ�Ļ������ˡ���


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090310a02">
���š���


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090320a00">
������ǿʳ��������
<RUBY text="����������">����Ȼ����</RUBY>�������ˡ�
��ֻҪ��Ȼ��ķ����Ծ���ˡ���


//��������
<voice name="����" class="����" src="voice/mb02/0090330a00">
�����еĶ��ﶼ�Ჶʳ���ߡ�
������Ҳ����ȥ������Ϊ�Լ�ʳ��Ķ��֡�����


//��������
<voice name="����" class="����" src="voice/mb02/0090340a00">
�����������Ļ���
���е��˶�����Щ����һ������


{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090350a02">
���ǡ�
��<RUBY text="��������">�������</RUBY>ȴ��û����ʶ���Ӷ�֮��
���ǲ�֪���ܡ���


{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090360a02">
����˵�����𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��һ��ֱֱ���������ҡ�
���������Ů���е�Ŀ�⡣

��Ӧ��˼��ʲô��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/mb02/0090370a00">
��û�д���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���Ҵ����
��
������û����������˵��

��������
������Ƕ�
������ƾ���κ��߼��������ܽ�����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mb02/0090380a00">
����˵��û��һ������


{	FwR("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090390a02">
���š���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����Ů΢Ц�ˡ�
���Ǹ�ò���绨��Ů�ԡ�

��һ��Ҳ��¶�����ֱ��鰡����
�����������૰���ʱ��Ҳ���ǻ�����Ȯʱ������
��<RUBY text="��������">����ʱ��</RUBY>��

��Ӧ��˼��ʲô��
��
��ʲô����Ӧ��˼����

�����һ���ǻ�������ֻ��ͬ��һ�㡣
�����Է�ͬѰ���������ս������ĵ�ĳ����ͷ����
���ɲ�ǣ���Ӧ�ý�����ȴ��

���Ҳ����𰸡�
�������Ҳ����𰸣���ȴ�ж����������ó������
�Ǹ�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/mb02/0090400a00">
��һ����
������һ�ѵ�����


{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090410a02">
������ʲô����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
����������ͻ�Ļ��һ����ʾ���⣬ת��
����΢Ц������
���������������������һ�㡣

����ʱ��ǻ��һ�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/mb02/0090420a00">
��������һӡ����ʱȴ����ս����
��������״��������������ġ���


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090430a02">
�������ǰ���
�����ǣ�����ô���أ���


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090440a00">
�����ж�ñװ�Ρ����а��ߡ�
����Щ��׺������������ɫ�ʡ���


{	SetVolume("@mbgm*", 2000, 0, null);
	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090450a00">
������Ҳ��������һ�㻪�ʰɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_���濫����03",500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
����չ��ֽ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ���", 5000, Center, Middle, "cg/ev/ev160_����.jpg");
	Fade("�}�ţ���", 1000, 1000, null, true);

	Wait(500);

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090460a02">
���������ǡ�����


{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090470a00">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����˵��������ʵ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ֣�", 2100, Center, Middle, "cg/ev/ev144_Ů���_�Α���Ҋ�ݤ���һ��_b.jpg");
	Fade("�}�ţ֣�", 0, 1000, null, false);
	FadeDelete("�}�ţ���", 1000, true);

	SoundPlay("@mbgm27",2000,1000,true);

	SetFwL("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090480a02">
��������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090490a02">
���Ǹ�������


{	FwL("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090500a02">
�������������
��Ҫ�����𣿡�


{	FwL("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090510a00">
���ǰ�����


{	FwL("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090520a02">
������������


{	FwL("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090530a02">
��������


{	FwL("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090540a02">
������������


{	FwL("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090550a00">
��������ϲ���𣿡�

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����Ů�ľٶ�����ѪҺѭ�����ķι��ܲ������ش��쳣��
Ȼ��������ȫ��Ӳ�ˣ��⸱ģ��������Щ��֪���롣
������Ϳ���С����������Ȼ����ʲô���˻���Ҳ����
ֵ����ҫ�ĸ߼�Ʒ��

����ԥ����ԥȥ������ѡ��һ����ƽ������ķ�������
���ǲ����ñ�������ȽϺ��ء���ϸ���룬Ҳû��ʲô
���������������ɡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureSP("�}�ţ�", 2000, Center, Middle, "cg/ev/ev144_Ů���_�Α���Ҋ�ݤ���һ��_c.jpg");

	SetFwL("cg/fw/fwһ��_�Ť�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090560a02">
�����������ǵģ�
���Ǹ������ǡ����ն�������ѡ�ġ�������


{	FwL("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090570a00">
���ǰ�����


{	FwL("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090580a02">
��Ϊ���ҡ�����


{	FwL("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090590a00">
���ǵġ���


{	FadeDelete("�}�ţ֣�", 1000, false);
	FwL("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090600a02">
���ۡ�����


{	FwL("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090610a02">
���á��á���˵ʲô�ź��ء�
���š����Ǹ��������ǵ�һ����������
���ֶ����͸��ҡ���


{	FwL("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090620a02">
���ǡ��ǡ����ǳ���л����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��һ�����������Ƕ������˲�֪���ǵ�л���ǽ���
��ͷ���ѡ�
�������䶼��͸�ˡ�

�������ܾ��ã����Ҷ��е㲻����˼�ˡ�
����������֮���ƺ��Ǻܿ��ĵ������ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/mb02/0090630a00">
��������


{	FwL("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090640a02">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ֣�", 2100, Center, Middle, "cg/ev/ev144_Ů���_�Α���Ҋ�ݤ���һ��_d.jpg");
	Fade("�}�ţ֣�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
������������һ�����㷢�С�
�����ԹԵ����Ұ�Ū��

����ָ���������΢�ҵط�˿��
�����¶�������

�����ţ���������������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 1, null);

	SetFwL("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/mb02/0090650a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
����Ů�������ң����ҿ��ڡ�

�����ʺ��㡣
��Ҳ�ܿɰ������ܷ���������䡣�����������
��Ů���ǡ�

�����ǲ������һ����
�����ǱȱȽ��ǡ��洦�ɼ��Ĵ��ڡ�

����λ������Ů�Ӳ������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fwһ��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090660a02">
��������ô������


{	FwL("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0090670a00">
���š���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 1000, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
����΢Ц������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��������
<voice name="����" class="����" src="voice/mb02/0090680a00">
�����ʺ��㡣��


{	FwL("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0090690a02">
������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(0,true);
	Delete("�}�ţ�");
	FadeDelete("�}�ţ֣�", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
����Ů�ִ���ͷ��
������������˫Ŀ����������˵��������ѹ��ס�Ļ���
�����ͻ����������

�����ԡ���
����һ˲�䣬�����ҵ����и��ֳ���ʲô�������Ů
Ҳһ��û�п����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_010.nss"