//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_031.nss_MAIN
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
	#ev113_���`���å��F�eϯ_a=true;
	#bg031_��ᦌm����_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_032.nss";

}

scene md01_031.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_030.nss"

//���ե�å��塣�^ȥ��
	SoundPlay("@mbgm01",0,1000,true);
	PrintBG("�ϱ���", 15000);
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����", 16000, Center, Middle, "cg/ev/ev128_�����ι�_a03.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("�}����*");
	OnBG(100,"bg031_��ᦌm����_01.jpg");
	StL(1000, @-60, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	StR(1100, @60, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	Delete("�ϱ���");
	FadeBG(0,true);
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	FadeStA(0,true);
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��̫��ңԶ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md01/0310010a00">
���㾿��������������ʲô����

{	FwC("cg/fw/fw��_�@��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310020a14">
��������
������ֵ������ʹ�İ�ҵ�𣿡�

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310030a14">
���Ǻðɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310040a00">
��������

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310050a14">
������֮�£��㲼��֮����
���������²��䣡��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310060a00">
����֮�������򣿡�

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310070a14">
������ν�����ᡣ
����ν��ɱ¾����

//���⡿
<voice name="��" class="��" src="voice/md01/0310080a14">
�������������ķ��򡣡�

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310090a00">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ԡ�
����ͳ���ˡ�����ĸ��˵�ĵ���ͬ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/md01/0310100a14">
���µ���񣬿ɲ�Ҫ˵��Щû˯�ѵĻ�����
������
�����٣���ҲӦ��<RUBY text="��������">������</RUBY>�İɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310110a00">
����������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310120a14">
�����������׵İɣ�
���ܺã��������á���

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310130a14">
����ˣ�˵��Ҳ�����ˡ�
����Ҫ���������������������

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310140a14">
������Ӧ�þʹ�ն���Ž�һ�£��������˵�ʱ����
��˭������ѭ���������桢ս����ɱ¾����
��Ҫ����������ʱ������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310150a00">
������ʱ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310160a00">
��������ʱ���������١�
��ֻ�������������ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������ġ�����ġ�
������������սᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_�_�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���⡿
<voice name="��" class="��" src="voice/md01/0310170a14">
�����ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310180a00">
��������!?��

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310190a14">
��������������
�����ʤ�����µı��ܵõ���Ϊ<RUBY text="��">��</RUBY>���ʸ��ˣ���

//���⡿
<voice name="��" class="��" src="voice/md01/0310200a14">
�����ǹ�ĳư�֮������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310210a00">
�������ܣ���

{	FwC("cg/fw/fw��_��˼�h.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310220a14">
������������ˣ�
������������Ӧ�û���֡���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310230a14">
�����߼�˼�����ܱ�����ķ�����ֻ�������
��<RUBY text="����������������������">����ȫ�����ս���л�ʤ</RUBY>!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310240a00">
������������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310250a14">
��Ϊ�ˣ����ȱ�������ȫ����ս������̨����
��ֵ�����ҵ��ǣ��ڴ�����Ⱦ����Ӱ���£�
������鱻��ͣת�Ƹ����ˡ���

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310260a14">
��׷����Щ��������ֻ����������Ĵ������࣬
����ӱ���նɱ����ôų�����ӡ�
����ѭ����ս������Ϊ�����ǰ㣬��˶ԵȾ�����
ʤ���������塣��

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310270a14">
����Ҫ��<RUBY text="����">����</RUBY>�Ķ��������£�
���ڶ��㡣
���ﵽ��ľ��硪�����<RUBY text="����">Ŀ��</RUBY>Ҳ����ʵ���ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310280a00">
������Ŀ�ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������ʱ��������ʲô�����𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/md01/0310290a14">
�����ڴ˵㣬�ղ�˵���ɣ�
�������Ļ��ɲ��þ���������ߡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310300a00">
������������

//��������
<voice name="����" class="����" src="voice/md01/0310310a00">
���������𣿡�

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310320a14">
������ֻҪ�ж�־����
���������塢��ɳ�Ϊ����ս��֮������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310330a00">
���������໥��ɱ������������ν��
��������������İ���??��

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310340a14">
����ô�ᡣ
������������������˾ͺ��ˡ���

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310350a14">
����ϧ���ǣ������û�к��ȥ��ȫ���ࡣ
�������ĸ��飬����ֻ��<RUBY text="������">һ����</RUBY>���ѡ���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310360a14">
����������
��������������Ů˵�������Ļ�������
���Ǽ��ˣ���������̽���ĵĻ���
Ҳ�ᡭ�������������͵ĸо�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310370a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���������С�
���޷���⡣

����ȫ�޷���ϵ������
��������ʶ�й������������ȫ�޷���ϵ��

�������ںͻ�Ӱ�Ի��㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md01/0310380a00">
������ˡ�����

{	FwC("cg/fw/fw��_�@��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310390a14">
����û�ǻ��¡���

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310400a00">
������ˣ�
�������ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310410a00">
������ǰ�����㡭��
����ɽ���źʹ��˶�ɱ����ʱ����Ѿ����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�������������Ľ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md01/0310420a00">
���ҵ����á���
���⣬�Ǹ�ʱ���Ѿ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������i��
	CreateSE("SE01","se�M��_냇��_�i��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("�}��д", 5000);
	StR(1100, @60, @0,"cg/st/3d�����˜�_����_�i��.png");
	FadeStR(0,true);
	FadeDelete("�}��д", 300, false);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/md01/0310430a00">
���㲻����һֻ��ħ���ѡ�
��������ɱ������

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310440a14">
������������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310450a14">
����û�з衣��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310460a00">
���Ҳ�������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310470a14">
��������Ҫ����
�����<RUBY text="��������">���֮ʱ</RUBY>����֪��һ�С���

//���⡿
<voice name="��" class="��" src="voice/md01/0310480a14">
��֪�������������Ľ��С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310490a00">
��������!?��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0310500a01">
������������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310510a14">
����֪���Ļ����ϣ���Ϊ�ҵ��������

//���⡿
<voice name="��" class="��" src="voice/md01/0310520a14">
��Ȼ��Ҳ�������㡭����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310530a14">
��Ϊ��������֣���ĸ��ɱ������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310540a00">
����������������������������������������
����������������������������������������
����������������������������������������
������������������������������������������

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0310550a14">
��������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310560a00">
������ʲô������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0310570a00">
������˵ʲô������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 1000);

}

..//������ָ��
//�Υե����롡"md01_032.nss"