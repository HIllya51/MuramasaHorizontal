//<continuation number="880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_007.nss_MAIN
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

	$GameName = "mc02_008.nss";

}

scene mc02_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_002.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	OnBG(100,"bg030_�ǣȣѱO������_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm35",0,1000,true);
	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_�Ʒ�c.png");
	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");

	FadeStL(0, false);
	FadeStR(0, false);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1000,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070010a03">
��������������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070020a00">
�������Ҹ���ƽ��������Ĳ��͡���
����ֱ�Ǹ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070030a03">
��û��ϵ����
�������ǵ�ȷ���൱���ĵ�һĻ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0070040a04">
����С�㱻Ư���ػ����ˡ�
������������֮ս�Ľ����С���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070050a03">
���ǰ����о����������򷸹���õ��Уˣ�
��Ϊ�õ�һ�ֶ������ţ���������Ͷ��һ������
����ʧ�ܣ�����������
��ȷֽ������һ�����аܱ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0070060a04">
���´δ�С������Ҳ�ø��������ۣ�
������ǽ�ǳ�֮��ʲô�İɡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070070a03">
������������ѹ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300, false);
	DeleteStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����פ����ξ��������֦�������̴�����ɴ����
������λ����û�ȶ೤ʱ��������˵������ߡ�

����Ȼ�����ǣǣȣѵĽ����������˳���������
Ҳ����Ϊ�档
��������������<RUBY text="��������">Ϊ�ζ���</RUBY>������״���ԣ�
����ȫ�Ǹ����š�

����֮����ֻ�ܴ�ͷ��ʼ����ѯ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc02/0070080a00">
����ξ���¡���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070090a03">
��ʲô�£���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070100a00">
���ҿ������ȷ����𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070110a03">
����㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������Ȼ��ɣ�������˼����
��Ӧ�÷�������λ�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc02/0070120a00">
�����������������ˣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070130a03">
�����ƽ���ӳ��������ˡ�
����Ϊ����û�ҵ��������塭����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070140a03">
������Ӧ��Ǳ����ĳ��
��̽����ɡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070150a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������̾һ������
��������Σ��ⶼ�Ǹ�ϲѶ��

������֮����ȻԶԶ�Ʋ����ǰ�ȫ�ġ���
������λ�����ó�����������������
Ϊ��ͻ��Σ��������ȥ����һ�����ҵ�
����֮���ɡ�

����������£��ҵĵ��ĸ������޼����¡�
����ô�������������й����Լ��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc02/0070160a00">
����Ϊ�λ��������
���������ȣ������������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070170a03">
���Ǻ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ش�ú�ֱ�ӣ�����ί��ȴ���ż�ɽ��

�������
��
��������פ����˾���

�����������ǣȣѱ����Ľ������ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc02/0070180a00">
����ô����
��Ϊ���һ��ں������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070190a00">
�������Լ�����Ӧ���ǵ��ڽ��������ˡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070200a03">
��û��
����ɴ�������㣬���ó�
������������ˡ��԰ɣ���


{	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0070210a04">
���ǡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070220a00">
���⡪����

//��������
<voice name="����" class="����" src="voice/mc02/0070230a00">
������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070240a00">
���������鷳�ˡ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0070250a04">
�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����׸ò��õ�л�ء�
������΢��ã��һ��������һ��ǵ���л�ɡ�

���ϸ��˴�ſ�͸���ҵ����ģ����Ļش���������
������Ҫ�ʼ硣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc02/0070260a00">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������ʱֹͣ���ʣ���ʼ������Ϣ��

���������жԣ�Ϯ���˽����µ��ǣǣȣѡ���
���������ڲ�������֦С���֪��һ��Ϣ���������ҡ�����

���ܵ�Ϯ����ʱ������Ҳ�ڸ�������
�������˻��Ե��ҡ����һ��ղ��˵��������
����������ôһ���°ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc02/0070270a00">
����������
�����µĽ����أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0070280a04">
����ȻҲһ��������ˡ�
�������ڱ�ķ�����Ϣ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070290a03">
���ܿ�ϧ���Ҳ��������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070300a00">
�������⡣
������Ϊ���أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070310a00">
��Ϊ�β����Ҽ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���Դ������Ļش�ʹ��жϣ�ͻȻ������һ�γ�Ĭ��

������֦С��ı��鲢����ʧ���⵽��ڵ����֪��
�������
�����ı��鿴�����������ܡ���ζ��γ�Ĭ��

����ʵ��������Ҫ�ش�
�����Ѿ������ˣ��Һ�����������ϵ��

��Ϊ�β������Һͽ��������Ӵ���
��
��������Ϊ�������ҽ�����װ��

����Ϊ��η���ҵ���װ��
��
��������Ϊ�����ҵжԡ�

������֮��

����Ϊĳ�����飬������ǣȣ�֮�䷢��
������
������ʱ�������գǣȣѵ�������ȡ���ж���

������������Ϊֹ�����У��Լ����ڽ�֮����Щ����һͬ��Ĩɱ����ʵ������Ե���ƺ��޷����Ϊ��������������ɡ�����һ�ж����޿ɱ���ġ�

������Ȼ������������ݵ��Ҷ�����
��������Ԥ�������ҽ�����Ϯ��һ��
����ì��ʵ��Ȼ����Ϊ����ô������
ֻ��Ϊ��һ�ٰ������˶�������ѡ�

��һ�ж����ʻ��ˡ�
��ʣ�»�δ���˵��ǡ���������ǣȣѶ��������ɡ�

�����С�
��<RUBY text="������������������">Ϊʲô�����ڻ�����</RUBY>��

���Ƿ���һ����·�ء�
���������Ҳ�ɱ�ң������Ҿн��ں���ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc02/0070320a00">
�������ξ���¡���

{	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStR(300, false);
	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070330a03">
���š���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070340a00">
�����ʣ������Ϊ�ε������棿��


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070350a03">
���ѵ�������Ϊ��������������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���ǣȣѴ�ξ΢Ц�š�
�������ԣ���΢ЦӦ�ù�����
��Ц��������ȫ����������

����Ҳ����ֵ�þ��ȣ������Һ�������ؼ���˵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc02/0070360a00">
���㱾Ӧ�����׵�����ͣ���Ŷԡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070370a03">
�����𣿡�


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070380a00">
����ֻ�轫ǹ�ڵ����ҵ�̫��Ѩ�ϣ����ס
�������ָʩ��һ�ٿ����ҵ������͹��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����˵һСʱ֮ǰ�һ������š�
���������������ķ���ɱ���ң���Ҳ�޷�
�ֿ���

������С�����Ĺ��������Գ�����������á�
������֦С���ں����Ц��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070390a03">
����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070400a00">
������������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070410a03">
�����������Ҳ�кܶ�ԭ��ġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070420a00">
������Ļ�������ҡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070430a03">
�����԰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��΢Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070440a03">
�����ȣ��ұ��˰��н�
�������˻��Ŵ���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070450a00">
��������
�����˰��У���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070460a00">
���ǣǣȣ�������𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070470a03">
���ǰ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070480a00">
����������λ�أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������ȫ�޴�����
����˵�����˾���һ���������ˣ����ڽ�פ����
����ʶ���˶�û�С��������ӳ��⡣

��˳��һ�ᣬ��Ҳ���ǵ��Լ���·�Դ�ȹ��ɲ�
������İ��Ӣ���ˡ�
���Ҹ������󲻵��Լ���ȫ���Ϊ�λᱻ�˵�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070490a03">
����һλ�������ֶ�����ڵ��ˡ�
������Ȼ��Դ�ֵ��ι���һְ����
��֪�����𣿡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070500a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������������ȫû��ӡ��
���ֶ��򡪡��ǣ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070510a03">
���㲻��ʶ����
��������λ����Ϊ�λ�Ϊ��������
�����أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0070520a04">
��ѧ��������������Щ�ط��ᳬ��
���˵���⡣
����Ҳ�����йشն������ı����У�
ĳЩ�ط������˽��ڵ���Ȥ�ɣ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070530a03">
����������
��ϣ��������Ȥ�ͺá���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070540a00">
���ǻ�ʹ��ҲΪ�ѵ�Ҫ���ġ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070550a03">
����Ӧ�������õ�����ڻ���Ļ���ġ�
���ԣ���ʱ����������ȷ��һ������ɡ�
����������Ʋ����Щ��̸������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070560a03">
�����ɻ���һ����
��������˽�˵�Ե�ɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070570a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��΢Ц��
��
��
���ҿ�������

�����������������Ķ�����

��Ψһ����־��
��Ψһ�ĸ��顣
��Ψһ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/mc02/0070580a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������ĵ�����ء�����ص��˵�ͷ��

����ǰֻ����һ���ɻ�����ȴ����
ȷ�ŵķ�Χ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 1000, 0, null);
	DeleteStL(300, false);


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/mc02/0070590a00">
���ұ�������������ţ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��
�������������������������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070600a03">
���������ˡ�
���Ҳ�������������ȥ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��
��������������ɽ�䱳����ӿ����Ȫˮ��
���������������ӯ����Ө��͸�Ķ��⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����rӋ�����`�󤴩`����Ļء��K�˴��ġ�


	CreateSE("�rӋ", "se�ճ�_�Cе_���rӋ�Q��_4��");
	MusicStart("�rӋ", 0, 1000, 0, 1000, null,false);

	WaitKey(10000);

	SetVolume("�rӋ", 1000, 0, null, false);

	SoundPlay("@mbgm18",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��������������ʱ������������ע�⵽
�������ӱ�
�������뿴����ֻ�Ǽ���ʽ���ε�С�ݺܲ���Ƶģ�
��Ϊ���۵Ĺ��ӡ�

������˼�������ֵط��ڷ����ֶ���֮�˵���ͼ��
���ǿ��ǵ�����û�д������޷�������ҹ�ķ�����
����Ӧ�÷���һ��ʱ��������������Ʒ�ء�����
����ͻ����������ĺ�������ѹ�ȱ��ռ����ء�

����ȷ�и�֪���봦����ʣ��ʱ�䣬�������þ���
���������������������
�����ǽ����Ѷ���Ķ������������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070610a03">
��������ܿ����������峿���ǰ����𣿡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070620a00">
��������Щ����ɡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070630a03">
�����峿��
�������ž������������ˣ������̸��˹���
������ϸ���������ǲ��Ϻ���������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0070640a04">
������ɴ�������ˡ�
���ն����ˣ�������ԭ���ҵ����񡣡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070650a00">
��������л�
����λ������ǰ�����Ҹм���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���Ͼ��Ҳ��ᱻһͷ��ˮ�����Ų����ˡ�

���������峿�ĵ㡭��
���һ���Ϊ�Դ��ڽ�����Ժ�ڵ��º�
�Ѿ�����һ�����ˣ�����ʵ�ϻ��������찡��

������Ҳ���Ѿ���һ����ˡ�
��������������ĳ��ظ�������
��������Ŀ����ԱȽϴ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/mc02/0070660a00">
����ξ���¡���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070670a03">
��ʲô�£��������ˣ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070680a00">
�����������Ǹ���ׯ�г��μ��桭��
���Ǹ�����Ѳ������ڵ�С��ׯ�ġ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070690a03">
���ǰ�����
��������ɽ�ϡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070700a00">
�������Ժ󣬲�δ����̫��ʱ�䡣
���о��������ա���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070710a03">
���������ڼ䷢���˺ܶ��¡�
����̰�ٽ��֣�����Χ��װ�׾���
չ������ı�У�Ǳ�뽭֮����
���͹���ս��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070720a00">
���ǵġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0070730a04">
��ÿ���¼��������д��
�������İ��ָ��ӵĸ�ֽѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
�������˺ܶ��¡����Ƕ��ֶ��ѡ�
�����������ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/mc02/0070740a00">
��Ȼ������ξ����
���Ҳ����ס���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070750a00">
��<RUBY text="������������">���Ҳ����ʱ</RUBY>�����Ѿ������Ļ�
���⡣��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070760a03">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070770a00">
����������ݵĽ��������ں�ʱ��
�Ժ�������ʹ�����������أ�
�������˼����Ҳ�ⲻ��������š���

//��������
<voice name="����" class="����" src="voice/mc02/0070780a00">
��������
�������ף�������û�������أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
��һ���������ˣ�������Ҫ���������ɡ�
���ϲ��������鲻��Ͷ��<RUBY text="����������">˵����Ե��</RUBY>��
�Ѿ�������һ���˶Ա����Ļ����⡣

�����Լ�����������ϲ�������ֻ�������ϯ�ϵ���Ц��
���㲻�ϡ�
��������ҵ������Ǻ���Ե�ɵģ�
Ҳ����Ϊ�档<k>Ȼ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070790a03">
����������Ŷ������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070800a00">
��������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070810a03">
���ǳ����׶���
���ǳ������ģ����ɡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070820a00">
�����Ҳ�֪�������ɣ���Ȼ��
���쳣ʧ̬�ĵط��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
������ҷ�����ʲô����������������˵ľٶ���
�ǾͲ��ò���Ǹ�˰ɡ�
�����Ҳ�̸��Ǹ�ܲ��ܽ�����⡣

����������֦С������鿴������û���ܵ�Ӱ�죬
�����ŵ�ҡ��ҡͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070830a03">
���������������ϡ�
���������˲���⣬�Ǻ������ġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070840a00">
��������������𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070850a03">
����Ȼ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
�������Ĵ�С��Ц������ˡ�
�����к��еĳɷ֡�������Ҳһ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070860a03">
��������Ϊ�˶�������ġ�
���������ϸ��������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0070870a03">
����Щ˵����������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0070880a00">
���޷���
�������������Ǹ������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
����һ�������˵����
��������������֦��ξ������Цһ����
Ȼ��ʼ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);

}

..//������ָ��
//�Υե����롡"mc02_008.nss"