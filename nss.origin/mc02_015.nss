//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_015.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_016.nss";

}

scene mc02_015.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_014.nss"


//���ե��`�ɥ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg028_��亣ǣȣѻ���_01.jpg");
	StL(1100,@-30,@0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(0,false);
	SoundPlay("@mbgm35",0,1000,true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc02/0150010a00">
���ǡ�������ôһ������
����Ϊ���ƴ�ת����е������Ĺ���������
����������Ŷ����ᵽ����صĽ�פ����У��
����ͼ�ƻ����ۡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150020a00">
�������ж�ʧ�ܡ�
�������·��󣬵��£ǣȣѶԳ����µ��Ʋá�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150030a03">
���ǡ�������ô���¡�
���������޷������𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150040a00">
����������
���š���Ȼ���ź�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150050a00">
�����ƺ����ò����š���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150060a03">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ȫ���Ϻ��߼��ˡ�
��Ϊʲô��פ����������Ӫ��ͻȻ����
�����޷����Ĳ�����ȫ�����ˡ�

�������뻳��Ҳû�л��ɵ����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc02/0150070a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������������ˡ�

������ӿ�ֵĸп������������������ǵĶ̼���
������Щ��Ӧ��˼���ǵ���������˱��е����ʱ仯��
�����˸�̾��

��������������һ����
��
��������Ϯ���¼�����˵���ˡ���������������
����������

��Ҳ����˵����<k>
��
��
�����������Ǽ���Ҳ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�������
	EfRecoIn1(18000,600);

	CreateTextureSP("���ٽ}10", 2000, Center, Middle, "cg/ev/ev170_�Х������L���䚢_a.jpg");

	EfRecoIn2(300);
	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������������
�������Լ������˶��Լ��Ĳ�ı��

������ǣ��������������𡭡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);

	Delete("���ٽ}*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc02/0150080a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������������ţ���û���޿ɽ���֮����
����������ϡ�����ȫ������⡣

������
��Ʋ������̸����������������Ρ���

������ѹ�����
��ӿ����ͷ��<k>
��
����������������������������������������������С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�Х���

	EfRecoIn1(18000,600);

	CreateTextureSP("�}����100", 2000, Center, InBottom, "cg/bg/bg077_�����µ���¥ǰ_02.jpg");
	CreateTextureSP("�}����200", 2100, Center, InBottom, "cg/st/3d�Х���_����_ͨ��.png");


	EfRecoIn2(300);
	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����λ��ʿ��

�������Ͷ��صĽ��У��������ҵ�ĳЩ���䡣
����ǰ������ѧУ�￴��������ʷ���ϼ���

������ӡ��һ����Ƭ��
���������������䱦��������ʥ���������˶���

��Ϊ������ŷ��ʷȾ��Ѥ��ɫ�ʵ�ΰ��Ӣ����ϲ�������ף�
��Ӣ��������Ӣ��֮���زأ��������е�������
����˵���������ʯ���ų��ļ���ÿ����ɱ��
ħ������˵��׼ȷ���·��ڶ���ͷ�ϵ�ƻ����

����λ��ʿ�Ľ��м�ֱ�ͺ����䱦һ����
��
����������һ����

���ǲ�ͬ�ġ�

����Ȼ������ڶ�һ��������������ô���׾ͱ�
���������жϡ�
��Ȼ������û�������жϣ��ҵ��۾�Ҳ����Ϊ
�Ǹ���������Ʒ��

��������Ʒ��
���Ƿ���Ʒ��

�������ϣ������سɹ����ơ�װ�׵�ǿ��һ��
Ҳ��������Ʒ��
������˿���������ڡ���ʥ���ϵĶ�����ȴ
��͸�����⸱���еı��档

�����Ƕ���ʦ�������ġ�
��ǿ�ң�����Ť�����Ը��ġ�

������ʦ�߽���֪��Ӣ�۵Ľ���ƭȡ������
�߹�ִ�϶�����Ӣ��ʹ�õĽ��У��Լ������
��Ʒʵ���ϸ����㡭��
���ҿ��õ��Ǳ�΢��Ť�����˸�

�������ǽ��е��˾��Բ���
�����޾��ĸ�̾��
������ֻ������üͷ�������ط���
�������Ѱɡ�

�����ֽ��С�������ɱ����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc02/0150090a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ͬ����֦С����˵��
�������Ѿ������ˡ�
�����������ϣ�����ȫ�����ˡ�

�����ǡ�
����������ȴ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);
	Delete("����");
	Delete("�}����*");

	EfRecoOut2(600,true);

	StL(1000,@-30,@0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150100a03">
��������˵������
���������ˣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150110a00">
���ǡ�
����ô�ˣ���ξ���¡���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150120a03">
�����죬�Ҳ������绰֮��
��������ò�������
���Ƿ�����ʲô���𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150130a00">
�������ǵġ�
���Խ����˵���ҹ����˴�ξ���ҵ�
�Ҹ档��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120a]
���Ȳ������ǲ������������Ҹ棬
��������Լ�����лش�������
��ʵ���ϣ������Ҹ�ԭ���ǿ��Է������õġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݻ���", 4100, Center, Middle, "cg/ev/ev946_�����֣ӥ��å������`_a.jpg");
	Fade("�}�ݻ���", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120b]
��Ҫ��û����<RUBY text="������">������</RUBY>�Ļ���
��Ҫ������Ѹ�ٽ���Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ݻ���", 1000, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc02/0150140a00">
��������ξ���¡���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150150a03">
��ʲô�£���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150160a00">
�������������ħ��޴����ʿ����
����û��ʲôͷ���ء���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150170a03">
����ħ�㣿��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150180a00">
���ǵġ�
�����벻���������õ����ݴ��ˡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150190a03">
�������Ҳ�֪������
����Ȼ��פ������ʿ�Ƕ�����
����ɫɫ�Ľ��С���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150200a03">
�����ħ�𡭡�
���ƺ���������ֱ�����������
��ʿ�ǵ���Ȥ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150210a00">
��������ȷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������������Ҫ�����������Ĺ��ˣ�
�������Ӧ�ò���е����İɡ�
���������ֻ��أ�������֯�Եģ�
�����������Ҹټ͵���Ϊ��

�����˵���������ǣǣȣѣ�
��
������ʱ��δ��Ҳ̫���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc02/0150220a00">
��������


{	StCL(1200,@ 80,@ 0,"cg/st/st����_ͨ��_˽��.png");
	FadeStCL(300,false);
	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0150230a04">
���������ļ�������Ȥ��ô�ͼ���
ʿ���أ����ն����ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150240a00">
���š�
����ʱ��������ǰ�������µ�;�С���


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0150250a04">
����������ร���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150260a03">
��������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150270a00">
�������Ҳ���͵Ϯ���ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���Ҿ׽��ſ�ɬ���������Һ�³�ʵ�顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc02/0150280a00">
��Ҫ����Щ������ʿ���ˡ���
������������ܵþȡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150290a03">
������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150300a03">
���ף���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150310a03">
���������ף���


{	SoundPlay("@mbgm32",0,1000,true);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150320a00">
���ǵġ�
������˵�����ڽ�������ɱ��
�������𡣡�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150330a03">
���š��������ǡ�
����������֪������¡�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0150340a04">
�������������𳤾ճ���Ң���ˡ�
���Ѿ�ȷ�Ϲ���λ���˵������ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150350a00">
����������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150360a00">
�������ҵ�������
�����ܹ��������ݡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150370a03">
����������������


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0150380a04">
�����ǡ������ǲ�ͬ�հ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150390a00">
����ΪĳЩԭ�������Ӵն��ҳ�����
������֮�����͸�����׸ǰ�ľ��ա���
�ճء���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0150400a04">
����������������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150410a00">
����������Ӵ�ξ���Ҹ棬���̸���
�ֳ��Ļ�����˵�������ܱ�������
��������ʿ����ļ��С����ȳ�����������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0150420a00">
�������Ǹ���ʿ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainEX("�}��д", 19900);

	CreateColorEX("�}ɫ�\", 10000, "#000000");
	CreateTextureEX("�}�����}", 11000, -925, -1476, "cg/st/resize/3d�Х���_����_ͨ��l.png");
	Fade("�}ɫ�\", 1600, 1000, null, true);

	Move("�}�����}", 6000, @0, @576, null, false);
	Fade("�}�����}", 3000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���Ǹ�����ʿ��
��
�������������ǽ�פ������ʿ��

����Ӧ�ô�����֦С��Ŀ����ʳ��Ǽһ����ݲŶԣ�
����һ��֪����<k>
��
{Fade("�}��д", 300, 1000, null, false);}
���������뷨��ͬ������ӹ����Ժ���˲����ʧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0182]
��֪����������Ρ�
���ҳ�����Ϯ����������������

��������������Ļ����������ξ����������Ρ�

������Լ������ķ�²���ӣ����һ������Լ����ṩ��
�鱨��նɱ����ʿ��������е������ߣ����ɾ��Ǵ�
ͳ�Ĺ���׼���
������û�˻����ͳ������˷��ӱ��ɡ�

��������������鷳�����⡣
����������������

����������Ϊ����
�������ĳ��ұ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mc02/0150430a00">
��������!!
���Ǹ�������ʿ����!!��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0150440a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���r�g�U�^

	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"mc02_016.nss"