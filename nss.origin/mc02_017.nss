//<continuation number="1430">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_017.nss_MAIN
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

	$GameName = "mc02_018.nss";

}

scene mc02_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_016.nss"

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg028_��亣ǣȣѻ���_01.jpg");
	FadeDelete("�ϱ���", 0, true);
	Fade("�\Ļ��", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������֪������һ���¼��ᷢ����
��ȴ������Щ��ͻ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������β���
//������Υ󣫱�ʿ

	Fade("�\Ļ��", 1000, 1000, null, true);
	CreateSE("SE�Τä�", "se����_����_�ɥ��Υå�01");
	CreateSE("SE������", "se�ճ�_����_�Ϊz���_��02");
	CreateSE("SE���뤯", "se����_����_�i��_����_L");
	MusicStart("SE�Τä�",0,1000,0,1500,null,false);
	WaitKey(1000);

	OnBG(100,"bg028_��亣ǣȣѻ���_01.jpg");
	FadeBG(0,true);
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg030_�ǣȣѱO������_01.jpg");

	MusicStart("SE������",0,1000,0,1500,null,false);
	WaitKey(500);

	MusicStart("SE���뤯",0,1000,0,1500,null,false);

	FadeDelete("�\Ļ��", 1000, true);

	WaitKey(500);
	SetVolume("SE*", 1000, 0, null);

	StL(1000, @60, @0,"cg/st/st�ǣȣѱ�ʿ_ͨ��_�Ʒ�.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);

	StCL(1100, @-90, @0,"cg/st/st����Υ�_ͨ��_�Ʒ�.png");

	Move("@StL*", 300, @20, @0, DxlAuto, false);
	FadeStL(300,false);

	Wait(100);

	Move("@StCL*", 300, @20, @0, DxlAuto, false);
	FadeStCL(300,true);
	Wait(300);


	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170010b03">
�����ǿ���������ũ������
��ֱ���ڽ�פ����˾���ı�ڶ�������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170020a00">
�����Ǵն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������˺���Ԥ���س��֣�ȴ����ò�������ҵķ���
֮�������
����ͱ��Ҵ�ʮ�꣬������곤�ɡ�

����ӵ�а���³����ѷ�˵��͵���ò��
�������뽭֮���෴���͵Ŀ����������ԱȵĻ���
���ĳ����Ϊƽӹ��������������κ�ӡ��

�����ĵ�����Ҳ����������
��
���������ֲ������η���������Ⱥ�ڵ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�ճ�_��_�����Q��01",1000);
	DeleteStA(300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����ò������֮����λ������Ȼ�Һ����˼ɵ�
�����������¡�
����Ҳ��Ч�������ڴ��ϡ�

��ͬ�е�ʿ����ǹ�ڶ�׼�컨�壬���������˱���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm35",0,1000,true);
	SetFwC("cg/fw/fw����Υ�_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170030b03">
������û��ʲô���ò����ɵĵط�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170040a00">
�����������ɣ���


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170050b03">
���ǰ���Ӧ��˵��Ҫ��Ƚ���ȷ��
���аɣ�������˵��ʳ���棬��������������
�׷���������Ҫ���ʽ��̺���ס������뿴
��ʿɽ�����ǰ���С�<RUBY text="�ԣ�塡�ǣ�����">�ռ�</RUBY>����������ࡪ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170060a00">
����������
���ҵ�ȷ����һ�����еĲ�����״̬����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170070b03">
�������������˵����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170080a00">
������������ľ��ӽ�פ������
�һ����о���²��
����Ȼ�ڻ�ʳ�����ַ���û��ʲô������
����ϣ���ܴ����ֲ����ɵ���״�н��ѡ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170090b03">
��������


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170100b03">
�������ҳԾ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������������ũ������Щ�Ծ���΢�����죬
�漴�������Ц��Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170110b03">
����ϲ�����ֱ�Բ����˵����ʽ��
������ҵ�ӡ����ҿ����ı�����Щ������ء���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170120a00">
���һ������������
�������ɲ���������ί��˵�������뷨��
ǡ�������أ��������¡���


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170130b03">
��Ŷ��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170140a00">
��Ҳ�������������ġ�
�����ڶ�����˵���ܶ����˿���Ц�Ļ���
�൱�ɹ������޷��úÿ����Լ�����


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170150b03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����������ȫ�ƿ����ԡ�

����������ǿ�뼷��΢Ц��������ʧ�ܣ�
�������黬����Ť�����Σ����Լ��ƺ�Ҳ������ˣ�
���õ��ֽ�����ס��
����������һ���������ָ���¶��Ц�⡣

���������ĵ�Ц�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170160b03">
���������ˡ��Ǹ�<RUBY text="����������">潸�</RUBY>˵����
��ֻҪ�����൱��Ŭ����ϸȥ�۲죬
��Ҳ�Ǹ��������������ء�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170170a00">
����������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170180b03">
�����ˡ�
�������ǳ��㹻�ˡ��������������ܼ��ķ�Χ
�ڴ���ɡ���

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170190b03">
�������𡭡��Ҿ͸���ɡ�
��Ŀǰ�ȸ���һ�˷ݵ����ɡ��������һ������
ȫ����ݵ����ɡ���


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170200b03">
���ն���������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170210a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������̸�����������ˡ�
������΢ֱͦ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170220b03">
�������յ��ı���ƣ�
������ᦹ�������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170230a00">
���С�
���Ը�����������ң�Ҫ���Դ����߰�����
���档��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����������Ӵ����ξ������Ǵ���������
��֪�˶����鱨�����޴ӵ�֪��
���Ҳ��ܶ���˵�����࣬Ҳ���ܶ������ѣ�
��������ǡ���Ļش�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170240b03">
�������㻹ͦ��Ծ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170250a00">
�����ҵ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��<RUBY text="����">��Ծ</RUBY>��ָʲô�����ǣȣ�֪������˻�Ծ��
�����Ҳ�ȡ��ʲôӦ���ж�����Щ�����������
ȴ��װ��֪�顣
����ũ�������ܲ��˵ؼ���˵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170260b03">
��������벻��������������
Ϊ����Ч���أ�
�������ţ�����߽����ԵĿ���
��ͨ���˾ٿ�ʼ������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170270a00">
�����������ԡ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170280b03">
�����Ѳ��ڡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170290a00">
��������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170300b03">
���ҿ�û�����ÿ�ͷ֧Ʊ���㽻�ס���
���Ŭ������������Ϊ���ԭ��
��������һ����
���Ҿ���ͬ��һ��ɡ���


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170310b03">
��������Ӧ��û������ȥ���ܲ�����Ϸ��
�϶�Ҳ�޷���Ч�ػ����㡣
��������ȡ�������ϵ��ж�������
�ܲ��ɣ��Ѿ�û�������������ˡ���


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170320b03">
�����ڣ����������ڶ����������С�
����������һ���ܿ���ɡ�
��Ϊ�����ߵ����ǣ����ڽ��������Ƕ�
����׽�����࡭����


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170330b03">
��������ô����ء������ǽ���ĸ��ư���
����ÿ�춼���Ű��ȵ���������
�����ձ�����һ�����濯���˺���Ӷ���԰��
�����ˡ�����ͻᱨ����è�ĵ����𣿡�


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170340b03">
������һ�����Ҫ��Ҫ���Ź��Ʒ����
���������˻Ḵ����̳���𽥻�Ծ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170350a00">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170360a00">
�����̶ֳȵ��ֹۡ���
�����ź���������˵�ƺ��ǲ����ܵġ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170370b03">
��˵��Ҳ�ǡ���


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170380b03">
�������ǵĻ���Ҳ����������չ��
������㵣����������ˣ��ն�����
��͸�Э���ǣȣѡ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170390b03">
�����������㱣֤�ô�ʹ������޵ı�����
���ѡ�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170400a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������ԥ��һ�������������

������һ�����ص����ƾ���������̯����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc02/0170410a00">
��������ͼĨɱ���ˣ�����ȴ������
����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170420b03">
����Ϊ������˸ı䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��������פ�������������ں���˵���ⷬ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170430b03">
����֮�����¼��𡭡�
����������Ϊ���Ǻŵĳ��֣�
�������Ի��ҵĽ�����ա���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170440b03">
���ҵ�ȷ���ɱ�ǰ����֮����
���ҽ����˲���������Ľ������ޱ����������㣬
һͬ���ֵ��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170450a00">
�����������Ρ������������𣿡�


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170460b03">
���ǰ���
���Ե�ʱ���������������൱�׵�����


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170470b03">
����Ϊ������˵��
��ֻ�Ǹ���·�����ĵ��˶��ѡ�
���ҵ�ʱ��ΪӦ������ɱ���㣬
������Ҳ��Ϊ����뷨û�д���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170480a00">
��������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170490b03">
���������������������ǻ��ص��ڲ���
�Ѿ�������δȷ�ϵĵ����ˡ�
�����ң����̬��Ҳ��ʾ��������ǲ�û��
��̬��ĵ��⡣��


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170500b03">
��ʵ���ϣ����ܺ����ǽ�������
���ԵĶԻ�����
���������һ�㣬���ǾͲ�����
�������뷨����


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170510b03">
��������ô���¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��������������ɵ�һϯ�����ҳ�Ĭ��Ƭ�̡�
���������ƺ����ò����ܡ�

����ԭ����û������Ҫ�Ʒ���������������С�
ֻ���뿴�����ķ�Ӧ���ˡ�
��ֻ������������һ����ʵ�����Ǹ�
<RUBY text="��������">��թ�黫</RUBY>�����˶��ѡ�

����ת�����飬�ı��˽�����ʽ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mc02/0170520a00">
��ԭ����ˡ��������£������������˵��
һ�ж����пϡ�
�����ܽ��ܡ������Ƕ��ҵĴ��á���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170530b03">
��������ô˵�Ļ���
�������������ܽ��ܵĵط��𣿡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170540a00">
������һЩ��
����Щ�������ǵ������ǵ����ҵ�
ԭ�򡣡�


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170550b03">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170560a00">
�����������������а��Ĵ����ʿ������
�ƺ�����ͼ���������������ǽ�פ�����ϡ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170570b03">
��������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170580a00">
���������Ҳ��ò�˵�ǲб��Ĵ�ʩ��
����������ʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������Ρ���
��
��һ�Ų������һش�

����Ȼ�����ϣ���Ҳû�п϶���
��������Ʈ����ģ�����ɵĳ�Ĭ��

���������Ҳ����������������������
Ҳ�����ƿ����ԡ�
����ֻ���ڼ���Ի���<RUBY text="����">����</RUBY>�����ֳ�Ĭ���ѡ�

�������Ĵ�Ҳ����ȷ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mc02/0170590a00">
���������¡���


{	FwC("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170600b03">
��������Ȼ������ô��ġ�
�������Ȼ���Ǹ�Э�����ǣ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170610b03">
��������˼������ķ�����
���׵��ֶΡ�
������Ҫ��������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170620a00">
����������
���������ˡ�����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170630a00">
������������ũ������
����������ʲôҪ�󣿡�


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170640b03">
����ϣ����������޽�ս��
�����ǳ��Ľ��С�����


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170650b03">
��<RUBY text="��������������">�����ǲ�����ս</RUBY>����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170660a00">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170670a00">
��Ҳ����˵����


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170680b03">
���������ˡ�
����Ҫ���ΪӢ�ۡ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170690a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SoundPlay("@mbgm36",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����û��©���Ҳ��Ծ�
��Ӳ����ǰɡ�
���������أ�ȴû�ܳɹ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170700b03">
��������Ը���𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170710a00">
�����������������ģ�
�ҹ��ڸм�����û����ס����˫�֡���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170720b03">
�����ϧ���һ����ĵ�ϴ�����֡�
�����ٿ�������
�ѻ�˵���𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170730a00">
���⵹����ν�����㲻��Ҳ�ܲ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
������Щ���ʵ�˵�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/mc02/0170740a00">
������Ҫ��<RUBY text="����">����</RUBY>��͹���Э���ǣȣ�
�𣿡�


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170750b03">
���š���������ô���¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����ũ������Щ���εؿ�Ц�š�
����֮��������Ҳ��ı�̬�ȡ�

���ⲻ�ǽ��ʹ����ʿ�����ۡ�
�������ǽ�̧֮�ߡ�������ǰ���ǣ�
����£������ǣȣѺ�

�����פ����������������Ϊ���֣�
��Ӣ��һ���Ծ�����ߡ�
����������������˵����Ļ���
���۵ķ���Ҳ�ͻ���֮�����ᡣ

��������פ�����������޸�������ڴ���
��Ӱ�����
��˵���ף���פ���������������ߡ�ƫ�����ѳ�ȥ��
����������֮�����ܳ��ֵ�������֮����ˡ���

��������ʶ��̾�˿�����
����������³������ѷ�������ﲻ�۵��ģ�
���Ǻ������徫��ĵ�ͽ������ӵ��Ϊ�ﵽĿ��
�ҳ���Ѵ𰸵�׿Խ���ܡ�

����������������ϣ�������ܹ��ʿɶ�ֹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/mc02/0170760a00">
��������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170770b03">
���Ҳ�����ǿ����ϲ����
��������Ҳ��־��ɣ��������������
�����¹������Ļ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170780a00">
��־����
�������ʲô��־�򣿡�


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170790b03">
�����磿����Ӣ��ƽ�������������ʷ�ϣ�
��ػ������ǵ�����������ս���Ĳ�����
ʹ���ǵ������������һ���㼶��
����Ӧ��Ϊ���߽����ҵ���׼�����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170800a00">
��������̫Զ��
����Ҫ˵�Ļ���̫�������ˡ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170810b03">
������ͬ�С�˵���Ҷ����ö��ġ�
���������ǰ�Ŀ����С�ڴ��һ���ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170820a00">
����͵Ľ�������


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170830b03">
���ǰ���
���ѵ�����Ϊ���Ǿ�������������Ļ�����ܴ���
������֮���𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170840a00">
����ô������������Ϊ���ãǣȣѡ�����Ӣ����
���ܴ�������ϲ��𣿡�


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170850b03">
���ǡ����ǱȽ�������
���ĸ�ѡ����ڴ�͹�����˵Ҳ����ů���أ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170860b03">
������Ϊ�ⲻ�Ǹ������㷳�յ����⡣��


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170870a00">
����ô����
�����併����������ǹ��֮�£�
����������ͬ���Ľ��£�
�ҿ�����ô��ɡ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170880b03">
���������棬�����ĸ���Ҫ��
����Ȼ���������Ƚ�׳����
������˵�����ǵ�ѡ�񡣡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170890a00">
�����ǡ�
�������������ҵĽ�����
��Ը����Ů�����µ�ʩ�ᣬ
����ѡ��Ҳ�������𣿡�


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170900b03">
������������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170910b03">
������˵�ġ����ţ�������⡣��


{	FwC("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170920b03">
�����������ǵ��뷨������
��ͬ�ġ�
������ٰ�尾������
���Ǹ�������Ϊ�����İ��֡���


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170930b03">
������Ϊ��Ҳ�����½⡭���������ѡ��
�����ǡ�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170940a00">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170950a00">
���Ҷ��ˡ�����ô��ɡ�
��ֻҪȥ�۲�ʵ�ʴ��ڴ�Ӣ����ͳ��֮�µ�
����״���������Ծ��ܿ�������
Ϊ�����������Զ����������Ļ������


//��������
<voice name="����" class="����" src="voice/mc02/0170960a00">
��������һ�㣬����˵�仰��
����Ҳ��������һ��ע������Ĵ�����


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0170970b03">
���ţ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0170980a00">
�����ţ����������������δ����ͼ������
�����ԵĿ�����ѡ�
����Ŀǰ�����������
��û�취�����Լ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���Ҵ󵨵ذڳ����û�ʧ��̬�ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/mc02/0170990a00">
���������޵�ս�ۣ����Ƿ���ʤ�㡣
������ѯ����ؼ��Ĳ��֡���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171000b03">
��������פ�����е�ս����
���ѳ�Խ�ڹض������������޾���ս���ˡ�
����ƾ������ʵ�������𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171010a00">
����Ҫ�ټ��Ϸ��ɱ�����Ԯ����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171020b03">
��������ˡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171030a00">
������ս�������Զ��
�����ǣ�����ʤ�ܵĲ�����
ֻ�б������ѡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171040a00">
������ô˵����Ͷ�������˵��
���硣��


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171050b03">
���ҳ����ڵ����ϲ������ǡ���
��������Ϊ�������޹�ƾ���������
�ֲ�˫��ս���ϵĲ���𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171060a00">
����ô���ܡ���


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171070b03">
����ô����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171080a00">
������Ϊ��ս֮ʱ��Ӧ��Ҫ�趨һ��
�����������������¡�
���Ǿ���<RUBY text="��������">��ս�پ�</RUBY>����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171090b03">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171100a00">
����Ӫ�˾��ĸ�������Ҳ���ǳ�Ǯ�����ǣ�
���൱�����ս���ɡ���ͣ�����Ĵ�ս��
��������Ϊ��λ��ս�������һ��Ƿ�����
����Զ�����������ǵ�֧�����൱�Ӵ�ġ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171110a00">
��Ū���������ᵼ����������<RUBY text="����">�Ʋ�</RUBY>��
������Ϊ�����Ĵ�Ӣ�����˥�䡣��


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171120b03">
��������˵�Ķԡ�
���������ǵ�ս��ʮ�㣬���ܲ���ս����
������������˵���൱���㡣��


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171130b03">
��û���������ǵ�Ŀ������ս�پ���
�����һ���������ܴ�ʤ���˰ɡ���


{	FwC("cg/fw/fw����_���L.png");}
//�룺�����������_܊����090930��
//��������
<voice name="����" class="����" src="voice/mc02/0171140a00">
������������Ե�����Ϊ���ƣ�
�䲻��������������
<RUBY text="��������">����Ͷ��</RUBY>�أ���


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171150b03">
�������ǵĸ������жϣ�
����Ϊ�����������־��ϰɣ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171160a00">
�����ǿ��Ǳ���������������������ǵ�
�����ޡ�
����Ҫ֮ʱ�����ǻ᲻���ֶΡ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171170b03">
������ԭ����ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171180a00">
��������������޽�˧��
�Ҿͻ�ֵ�ס���ǵĹ��ƣ�
ͬʱ�����Ƶ�����ء�
������ضԽ�פ����˵�ǲ��������࡭����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171190a00">
��ֻҪ�����˴��������ж���ʱ������
Ҳ����ǰ�����������ʵ���
����Ķ��Ҳ�ܵ����ơ�
������ʱ���ڹ����������ǲ����ܵġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171200a00">
��������ǿ����ط���ս���Ļ���
��ս�ı����ͻ᲻�㡣
�����ڶ�ʱ��������Ļ����
�վ����ǳ���˵�Ρ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171210a00">
��������֮��������ɱ���Ԯ��
�ں��Ͼͱ�Ļ�����ӻ����Ļ�������


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171220b03">
������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171230a00">
����˵ռ���ͣ���������������˼��
����α����ĵľ�����
���ܶ���֮��������Ϊ��פ�������
����������������ֹۡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171240a00">
����������Ρ��������¡���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171250b03">
���š�
���ðɡ����ҳ��ϡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171260a00">
��������


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171270b03">
������ȫ�֣����������ķ��������׵���
�����������ڵ�ȼս���ĵ����ߣ��������
˵�ǣ���̬���ƵĿ�����Ҳ�ܴ�
�������ڶ�ʱ����Ҫ����ʤ���������ѵġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171280a00">
����������Ϊ��Ҫ��ߵ�����
ʤ����������ҵĻ���
�������¡�����Ҳֻ�ܻش�����
�����ƴ����̫�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
�����ǳ�Ϊ<RUBY text="����������">���������</RUBY>Ӣ�ۣ��������Ѿ������ˣ�
���ο�<RUBY text="������">������</RUBY>Ӣ�ۣ����޷�ʤ����������
������Ӣ�ۡ�ֻҪ����һ������ս��֮�ϣ�
���������޾��Ϳ�������

������������Ļ�������ȥί�����ǺŰɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171290b03">
���Ҳ�����ǿ�㡣
��˵�伫�˵Ļ���ֻҪ��Ը��
������վ��ͬһ�����ϣ����㹻�ˡ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171300b03">
����˿������������Ϊ���ǵ�ս����
�������������ΰ�������˵���ֻ���
���������ǲ���һ�������أ�
����ǵĻ����������Ǹ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171310a00">
���������Ǹ��
�������һ�������Ǿ͵ö��Ի��������ޡ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171320b03">
��˵����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
����˵����פ����������ʤ���Ŀ�ũ������
���ȴ�������µ�һ��ҧ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171330b03">
�����ǻ�����ʤ�����ڶ�ʱ���ڡ���Ȼ����
��΢����ʧ�������ǻ���Ī���ս������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171340a00">
���������޸��ݣ�
ȴҪ��������Ļ�����


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171350b03">
�����ݰ���
�����������˵�ĺ��е�����


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171360b03">
������õ�����֮���������������ˡ�
�������ȵ�����ʵ�ʻ��������޺�
������Ȱ����ɡ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171370b03">
�����������֮���ٸ�������Э������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171380a00">
��������������


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171390b03">
����������
��Ҫ���㵽ʱ�����޷�����
�����Ļ�������


{	FwC("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171400b03">
����������˵���㽫���ٱ���Ҫ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0171410a00">
������������


{	FwC("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171420b03">
�����õ�δ��λ��Ŭ�����ۻ�������ɽ�ۡ�
�����ҵĽ�ֳ��䵡�����ѻ������������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0171430b03">
����Ȼδ����ˡ���������Ӧ�ø�������š���
��Ϊ�ˣ�����ӦŬ��������
����˵�԰ɣ����ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc02_018.nss"
