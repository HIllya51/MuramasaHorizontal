//<continuation number="250">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_029vs.nss_MAIN
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
	#ev146_������ϓĽ��h_a=true;
	#ev146_������ϓĽ��h_b=true;

	#bg070_���ӘS�����A�Υ۩`��_03=true;
	#bg071_���ӘS���ڏ������_03=true;
	#ev146_������ϓĽ��h_a=true;
	#ev146_������ϓĽ��h_b=true;
	#ev146_������ϓĽ��h_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_030vs.nss";

}

scene mb02_029vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_028vs.nss"

	SoundPlay("@mbgm09",0,1000,true);//���ߩ`ע��

//�������֣ӳ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg070_���ӘS�����A�Υ۩`��_03.jpg");
	StR(1000, @0, @0,"cg/st/st��霔�_ͨ��_˽��.png");

//�����ߣ������򥦥���ɥ��ǳ����Ƥ����ޤ�
//	StR(1000, @0, @0,"cg/st/3d�����˜�_����_�i���֟o.png");
	CreateWindow("�}�ݷ���", 4000, 0, Middle, 512, 576, false);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateTextureSP("�}�ݷ���/�}����", 4100, 0, 0, "cg/bg/bg071_���ӘS���ڏ������_03.jpg");
	CreateTextureEX("�}�ݷ���/�}����100", 4200, Center, Middle, "cg/st/3d�����˜�_����_�i���֟o.png");
	Rotate("�}�ݷ���/�}����", 0, @0, @180, @0, null,true);

	Move("�}�ݷ���/�}����100", 0, -470, -180, null, true);


	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 500, true);

	CreateSE("SE01","se���L_����_�z_̤���z��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("�}�ݷ���/�}����100", 500, -450, -200, Dxl2, false);
	Fade("�}�ݷ���/�}����100", 500, 1000, null, false);
	FadeStA(500,true);


	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mb02/029vs0010a00">
��������������ի����


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0020b37">
��������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mb02/029vs0030a00">
�������д�ɡ���


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0040b37">
�����ǰ���֮�ˡ�
��û������˱���������ϰ�ߡ���


{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0050b37">
�����ǡ�������ر𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��Ҳ����˵���ұ�����������
����������������ֳƺ�����

��������������ի��
��Ļ���ز����ա������������������ɵ�����������
����Ļ��������ʦ��������һ������ӡ����ڡ���ͳ˧
����

������͵�һ�Ľ��ͣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0060b37">
�����뵽�����䡱���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��վ��������۷������ָ���ҵ����֣�����˵����
����ֻʧȥ������ǰ�˲��ֵ��֡�
��ΪĻ���������䷶����һ��ֱ���ӡ����ڡ���ͳ˧��
</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mb02/029vs0070a00">
��������


{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0080b37">
��һ���������衰���䡱��ƾ����Է�֮����
�ԳƵ�һ����ȡʤ������
�������ؾ����ڡ�����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ֣�", 6000, Center, Middle, "cg/ev/ev146_������ϓĽ��h_a.jpg");
	Fade("�}�ţ֣�", 1000, 1000, null, true);

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0052]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0090b37">
��<RUBY text="������">��һ��</RUBY>���������Է���·���󶯡�
����<RUBY text="����">����</RUBY>��һ��ȷĿ��ӭս��
���Ƶ��뵶�Ľ��棬������ؾ����ڡ�
�������˽��ľ�׼�ȡ���


{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0100b37">
���ҵȵġ��ϻ������Ƕ��ǡ�
������Է��������󶯣��������ͬ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ������⡣���Q�L�Ρ�
	CreateTextureSP("�}�ţ֣�", 5990, Center, Middle, "cg/ev/ev146_������ϓĽ��h_c.jpg");
	FadeDelete("�}�ţ֣�", 1000, true);

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0110b37">
������������׷�����Ч�ʶ���
��׼��
�������<RUBY text="����">��Բ</RUBY>�ĵз���·�ڲ࣬�ҵĽ�
ȴ�����<RUBY text="����">СԲ</RUBY>������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ֣�", 5980, Center, Middle, "cg/ev/ev146_������ϓĽ��h_b.jpg");
	FadeDelete("�}�ţ֣�", 1000, true);

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0065]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0120b37">
�����ԣ����ձȶԷ����絽��Ŀ�ꡣ
�������档<RUBY text="����">ͦ��</RUBY>��
������ն����


//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0130b37">
��������������������ɵĺϻ���
����������ͬΪ������������Ҳ��������ͬ����
����ϵ�ƺ�������ȫ��ͬ����ʽ���еġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����һ�����ĵ���ʦ������������˵����
��Ȼ���ɼ�̫���ѧ����ȴ�ǰ�ֶ��޷���⡣

���ø�Ч���˽���������֮��������������ת֮����
�������������Ĳ�����ˡ�

�����޷�Ч�£�Ҳ���ƽ�֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/mb02/029vs0140a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����м�����֮�£�ȷʵ���������ˡ�
��������Ҳһ���ɡ�

��Ӯ����������ӡ�
������״̬�¡����޼ƿ�ʩ��

����ǻ֮�б���һƬ��
������£�����������Ϊ�������ж���װ���������Ѫ
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/mb02/029vs0150a01">
������ȫ���Ը�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/029vs0160a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ɴ�װ������Űε���ʹ��Ҳ�����룬����ս����
���ۣ���������˵����
�������⸱��ɫ������˵�˷������������Ľ��ԡ�

������������ྐྵ��ȫ����ս��
��
�����Ҿܾ������Ľ��ԣ��������޹ء�

�������ٲ�ɱ¾��
����һ��Լ���ˡ�Ϊ����ɱ¾��������֮�˵���������
���ߡ�

�������ȫ��ʹ���е������������öԷ������ء���Ϊ
������Ϊɱ�˶����⻯��������
���������ơ�����������һ���������ҵ����ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/mb02/029vs0170a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������Ĭ�ˡ�
�����Ĭ�ƺ������˷���֮�⡪����������ⳡʤ����
<RUBY text="��������">���Բ���</RUBY>��

���Ƕ�����ĳ�ֵķ�����
������������������û����ԣȥ̽�����ַ��������ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0180b37">
��������ô��
����һ�ˣ��ᵶһ�ѣ���ס�����ǰ·��������
�ѡ��ϻ���������


//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0190b37">
��������һ�����ߡ�����ͬ��ȴ�����Զ��
������û��ʱ�䡣������ã��ҵĲ��±���
������


{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0200b37">
���˿�״�����ϡ�
����ô���������δ��㣿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���ⷬ�������ݼ�ֱ�����ƣ�����λ��ʿ��˵ʱ�Ŀ���
����ȥȴ����������ƣ��������Ŵ��ݡ�
����ɫ��е����֮�¿���������˫����Ҳ�޷���������
���⡣

����������ļ������⣬ȴ�����Ҵ˿�Ӧֱ�����ʵ��
���޿���֮����
������һ�ˡ�����һ�ˡ����з��ڲ��õĽ����߱�����
�Ե���Ԯ������ȴû�С���

���з�֮��ӵ�б�������ʷ��λ�ڰ��׵Ĵ����ɡ�����
�������ĵǷ��켫֮�ա�
����ò����ײ��޳��������ɵĴն�����֮����ȣ�ͬ
Ϊ����ȴ��������֮�

����������������֮��ԭ�������Ե�ս����֮��˿�
ȴ��Ϊ���С�
��
������������¡�

���ú��ֶβ���ͻ����һ���棿

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_˼��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//����霔ȡ�
��
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0210b37">
���ķ�����ͨ��ʮ������ 


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/029vs0220a00">
��������


{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/mb02/029vs0230b37">
������֮��ֻ��ɱ�˵���
�������Ѵ���˵�֮���硭������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/029vs0240a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�������Զԡ�
�������޼ƿ�ʩ��

������ʤ���ѳɶ��֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 3000, 0, null);
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 300, 1000, null, false);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mb02/029vs0250a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���������ˣ������<RUBY text="����">��</RUBY>��

���ն�����ʤ������������ի��
�����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 1500);

}

..//������ָ��
//�Υե����롡"mb02_030vs.nss"