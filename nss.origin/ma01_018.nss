//<continuation number="420">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_018.nss_MAIN
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
	#bg005_ɽ��_01=true;
	#bg019_��У����_01=true;
	#bg002_��a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_019.nss";

}

scene ma01_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_017.nss"

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg005_ɽ��_01.jpg");

	SoundPlay("@mbgm24",1000,1000,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);


//��ɽ��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��͸����ľ��ķ�϶�������˶��濪�س���ɽ��ƽ�ء�
������ǡ����žɸ����ľ��ƽ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180010b56">
��д�Ž�ֹ�������򰡡�����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0180020b43">
����������������û���ء���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0180030b33">
������û��������һ��˵�������ֵط�Ҳû��
���صع����ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��˵��û��
��Ҫ�뵽�������Ͳ��ò���û�е�·�ĵ�·��������
˵�ƺ�<RUBY text="����">����</RUBY>���ڵ�·�ĵط�����շתǰ����

����ʹ��ͽ������Ҳ�����к�����ѡ������·�ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180040b56">
����ʦ���������𣿡�

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0180050b57">
���š�
���Ǳߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,false);
	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��˵�ţ��崨ָ��ɽ�ŵķ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StR(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0180060b57">
����������һ�����е���ˮ��¶���ر�ĵط�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180070b56">
��ม���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����Ȼ����˸�֪������Ȼʲô��û�п�����
������ȷʵ����������Ļ���ȷ�ܸ��ܵ��·�
ˮ��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180080b56">
���ǡ����Ǹ����������ǣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0180090b43">
��������������ѧУ����

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0180100b33">
��ѧУ�Ļ�Ҳ̫С�˰ɣ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180110b56">
���ǰ���ֻ��ƽ���ɣ���

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0180120b57">
���������絾����˵��
����У�ᡣ<RUBY text="����������">����ѧУ��</RUBY>У�ᡣ��

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180130b56">
����!?���������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��û��˵������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0180140b57">
�������ܾ���ǰ�����ˡ�
���ᵽ���ڵĵط�֮ǰѧУ���������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180150b56">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @-60, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw�ұ�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0103]
//���愇�
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0180160b43">
��˵�������������ǰ���񡭡���

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���w���
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0180170b43">
����ȫû����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StCL(1010, @-60, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	Move("@StML*", 300, @60, @0, DxlAuto, false);
	FadeStCL(300,false);

//	SetComic(@0,@0,18);
	SetFwC("cg/fw/fwС��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0105]
//������椯�������󤯣�
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0180180b33">
���Ǿͱ�˵�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х��㡣
	OnSE("se���L_����_Ź��01",1000);
	CreateColorSP("�ե�", 15000, "#FFFFFF");

	DeleteStA(0,true);
	StR(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStR(0,true);

	FadeDelete("�ե�", 600, false);

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0180190b57">
������ʦ����С��ʱ������ˡ�
����֪������Ȼ�ġ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180200b56">
���ѵ����ڻ��úñ������ء���

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0180210b57">
����Ҫ�����ֺ�������Ĳ������
û��Ը��ɶ��Ѱɡ�
������Ѿ������ﻹ��У�������ˡ�
���ԲŻ�һֱ����ԭ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0180220b57">
��ֱ����һ����Ȼ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���Ǿ����Ǻ��ǻ������崨�ı������޷��жϡ�
���ƺ���¶���˱������ɫ�ʡ���
Ȼ�������ҽ������֮ǰ
�崨�Ѿ��ٶ������˲�����

�����ŷ�����У�ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180230b56">
�������ף�
���Ǹ���������ʦ����Σ�հ�!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������Ѿ��������ܾá�
���ݶ���֪��ʱ�ͻ����䡣
����������˲Ž�ֹ���ڡ���������Ȼ��ȷ��ˣ�
�����ⲻ�����

������崨�Ĳ²����к��ģ�������п��ܾ��Ƿ���
�ķ���ݵ㡣
����Ȼ��̫����������ͣ��ס�ޡ�����Ҳ������ȫ��
�����ֿ����ԡ�

��óȻ����ɲ������ǵ���Ϊ��
�����崨�����ҵ���������ֱ�߽������

��ʣ�����������������
������������ԥ������

�����գ��ұ�������������崨�ı�Ӱ׷ȥ��
���Ҹ�С��Ҳ�����ϡ�

�������Ѿ��������ֻ���¶������˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("��ܞ", 5, "#000000");
	DrawDelete("�}����*", 1000, 100, "blind_01_00_1", true);

//���\
	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������ζ��
����ù����ζ��
������ľ�Ϸ��ɵ���ζ��

���Ѿ��������̶ֳȵľ���
���Ѿ�֪�����������������

��Ȼ����
���������һ����ζ֮�ϣ�ѹ���ԵĴ��ڣ�
�Ǹ��õĳ�ζ������������ʲô�ء�

����֪�����Ƶ���ζ��
��ʮ��Ѱ������ζ��
���ڼ����ѧУ��������·�ϡ�

���۾�����ϰ�������ڻ谵�Ĺ��ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����1", 1, Center, Middle, "cg/bg/bg019_��У����_01.jpg");
	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);


//���У�ν���


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180240b56">
���������ң���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����ǰ�ľ�������ˡ�

���������ڷ�����ʱ�򱻰��˳�ȥ������Ҳ������Ҳ��
ʲô��û�С�
������һ��������Щ�����������µľ���Ҳ��ǿ������
��һ��ѧУ���е����Ӱɡ�

��û�����崨����Ӱ��
���Ѳ�������Ϊ���������
�ĸ������������ڱ�Ӧ�ǽ�̨��λ�ø�����

����ζ�ƺ����Ǵ����ﴫ���ġ�
���ۺϸ��ָ��ӵ�Ҫ�أ������<RUBY text="������">������</RUBY>���Ǹ�
���Ƶ���ζ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0180250b43">
����ʲô�ء����Ǹ�����

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0180260b33">
��������ɡ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180270b56">
���úô�������������롣��

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0180280b43">
�����ţ��о������ǻ���ˮ��ζ������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0180290b33">
������ˮ�䣿��

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180300b56">
���᲻�ỹ���Ž��㰡����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0180310b43">
��˭֪���ء�
����֮�򿪿�����֪���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����������ò�������˵��
����Ҷ�������Բ�������˵��˵���ġ�

����ζ����ȴ�Ǻö����ģ����ֻ�����㡢
���ҡ�����֮�ࡣ
������ĸ�Դ��ͨ���϶�������
��ʲô���˴������õĶ�����

����˵�������崨Ҳ���ڡ����ⲻ�����Ĵ��й��״���£�
����ȥȷ���ǳ�ζ��Դͷ��
��û�����������ж���ѡ���˰ɡ�
������վ��Ҳ�޷��侲������

������������û�취��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,false);
	DeleteStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0195]
����սս�������߽����ӵķ���
����������һͻȻ�ܳ�һȺ��������͸�ˡ�

��������������Ʒ��
������û�������������Ƕ��ϸ��Ÿ��Ӷ��ѡ�

���ƺ������׾��ܴ򿪡�
��һ��Ҳ�����ÿ��ġ�

��������̽�Ŵ��˴����档

{	CreateSE("SE01","se����_Ѫ_��Ѫ01");
	MusicStart("SE01",0,1000,0,500,null,false);}
����Լ���������˵�������
���������ұ��ı����ж�û��

���ִ������ӱ�Ե��
������һ���������Ȼ����Ϣ�������Ҵ�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("��ܞ", 1500, "#000000");
	Fade("��ܞ", 200, 1000, null, true);

	WaitKey(400);

	FadeDelete("��ܞ", 400, true);


//���ãǡ��������⤹��Τ⥢��ʤ顢һ˲�ۥ磻�ȥ����Ȥ⤷���ϥ֥�å�������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����������������ݣ����ҵĲ²���ȥ��Զ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180320b56">
������������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0180330b43">
���۷ɣ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0180340b33">
��������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���������Ҳ����һ��ȫ��䱸����������ʲôΣ��Ʒ�ɣ�
�������ű��ӣ�����ѯ�ʡ�
����ֻ����ʵ��档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180350b56">
�������ǻ�����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0180360b43">
��������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180370b56">
������˵���ǻ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���ǻ���
������һ��Ļ���

������Ϊʲô��

��������ʢ��ˮ��ˮ������һ�㻨�ꡣ��ɫ��
����ϡ���洦�ɼ��Ļ���
������ӣ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0180380b33">
����Ȼ�ǻ���
��ΪʲôҪ�ѻ��ص�װ��������ȥ������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180390b56">
���һ������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	WaitKey(200);
	FadeStR(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�������ǰ��Ű��ɣ������Ծ��������ű��ӣ����˹�����
����Ҳ���ﲻס���ˡ�

�������أ����¿�ʼ������

����������ŵ�����ҩ����ζ��
�����ǵ�����ˮ��

��Ȼ�󡪡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ˲�ե�å���
	CreateColorSP("�ե�", 15000, "#FFFFFF");
	SetVolume("SE*", 0, 0, null);
	SetVolume("OnSE*", 0, 0, null);
	SetVolume("@mbgm*", 0, 0, null);

	DeleteStL(0,true);
	DeleteStR(0,true);
	FadeDelete("�ե�", 100, false);

	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180400b56">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�����ա�
���Ҳ�㵱���ε���ȥ��

������ʲô!?
��<RUBY text="��������������">������ζ��ʲô</RUBY>��

�������������
���������̶ֳȡ�
��<RUBY text="������������">�������̶ֳ�</RUBY>��

��������
����ζ�ı�����Ź���ĳ�����

��<RUBY text="��������������">����Ũ�ҵĶ��</RUBY>��<RUBY text="��������������������">����ʹ��ʶ������һ˲</RUBY>��
������С�������տ���ˮ��ʱ�����ָо���

���Ӳ�֪��������ζ��
��������֪������
��
������֪��֪��!?

��������֪��������ζ����ȴ֪��<RUBY text="��������">�������</RUBY>����ζ��

�����ǡ�
�����ǡ�

���ǳ�ζ��ҡ���ҵĴ�����
����Ұ��б���ŵײȿա�

{	CreateSE("SE01","se�ճ�_��_�����Q��02");
	MusicStart("SE01",0,1000,0,750,null,false);}
��ʧȥƽ����ҵ�����Ϊ��Ѱ��֧�ţ�
����ץס�����ӱ�Ե��
�������ƺ��Ҵ��˵ط�����һ˲�䣬���Ӽ�����ת��
����Ķ�����ذ�����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�ե�", 15000, "#FFFFFF");
	CreateColorSP("��ܞ", 5000, "#000000");

//���Ф���`��
	CreateSE("SE02","se�ճ�_ˮ_����01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	FadeDelete("�ե�", 1000, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���������ˡ�
������������ˡ�

������ʲô��
������
��ˮ��

��Ȼ�����֮�⡣
������ʲô��

���ơ���<k>
��
�����������������Ʒ�

�����Ʒ����Ʒ�������ѧУ���Ʒ���Ůʽ�ġ�
���м�����ӡ�󡣼����ǿ϶��ġ����������Ǹ���˼��

�����У������<k>
��
�������������������������

����������ģ�<k>
���е�һ��ģ�<k>
�������������������������������������������ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("��ܞ", 1000, false);

	SetFwC("cg/fw/fwС��_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0180410b33">
����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��С�Ĳ�֪Ϊ�μ���š�
���������������ˡ�������˼���ˡ�
�������Ұ�����������鶼�����ˣ�

���Ǹ���ʲô������ʲô���š�
�������Ʒ����Ʒ��������
������ʲô��֮�󿴵�����ʲô��

���Ʒ��ļ�϶�ﲻ�ǻ�������ʲô��
������ʲô��

�������ɶ���˭����������ǰ�ֻ�����ȥ�ļһ
�ܰ��²�����
���ұ����������ǡ��Ǽһﷳ�˵�̱���ڵذ���
�ˡ����ڸ�ʲô����ƨ�ɻ����Ŷ��

�������ɶ񿴲�����
��˭���ְ���

��ʲô��ԭ�����ҵ��ְ���

���氭�£��߿���
�����뿴��������ʲô����

������˵�ҵ��Դ�����������������ķ���ת����
���úÿ�������

����ʲô��
��������ʲô����

���Ʒ���
�������档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_Ѫ_��Ѫ01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
����������ֱ�ʲô�����ڸ�ס�ˡ�
��Ż���ﰡ����˭�����������ʿɶ�ֹ��ι��

�����ǲ�֪��ô��������û��ʲô�仯��
������Ż�µ��Ǹ��������壬Ҳ��Ż����û�ж����

�������кڣ�
���аף�
���зۣ�
��������Ũ�صĻң�

�������������ϵ���ɫ��
�������Ǹ����Σ�

���С�ӡ��

�����ɡ��������š�������ԭ��

�������������

�����ǡ���������

����ʶ����

���ǳ���Ϥ����

���ǳ����������

��һֱ����

��̫�á���

�������ҵ��ˡ���Ҫ������

�����㡡�ɣ�

��û���

���԰�

������������������
��������������������������������������
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�ܥå���������С��������
	WaitKey(1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��
��������������������ͷ�ģ�
���������������������ࡣ

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("���", 10, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	Delete("�}����*");
//	Delete("��ܞ*");

//����գãǡ����ʤ���

	SetNwC("cg/fw/nw���w.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0180420b56">
������������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(3000, 2000);



}

..//������ָ��
//�Υե����롡"ma01_019.nss"
