//<continuation number="790">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_015.nss_MAIN
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
	#bg097_ܥԽ�����ھ����β���_01=true;
	#ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_016.nss";

}

scene md02_015.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_014.nss"


//���ե��`�ɥ���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg097_ܥԽ�����ھ����β���_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm26", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);


	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150010a07">
������Ҫ��ΪӢ�۰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����꣬����������������µ�˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md02/0150020a00">
������Ӣ�ۡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150030a07">
���š���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150040a07">
��ͺ��Ҳ�ѵ�˵Щ����Ļ���
����ȷʵ�ǶԸ��ܱ�Ҫ��ָ�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��ʮ����ͬ�����ӣ���ͣ����ͷ��
�����������γɶԱȣ��ҷ�����л��ɡ�

�����ҡ�
����ɮ��˵��Ĩȥ���ң�����һ�������ó�Խ
��֪�ĸй١����Ӷ���ѭ������־�ʹ����ս����

������������������֪��������ֱ�۵��ж�ʲô
����ȷ��ʲô�Ǵ�����ˣ�������㯣������֪�ͺá�
���ܸ���������ʧ������Ӱ������ա�����Ҳ�������
����ѧ�����

��ԭ����ˣ�Ӣ�ۡ�
���������Ҷ�ս���ˣ���������Ӣ�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150050a07">
���޷���ͬ�ı����ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150060a00">
�������෴��
�����������죬���Ҿ���Ӣ��֮��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150070a00">
��������һ�£�������ʮ��ңԶ�Ĵ��ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ô������ɱ�˷���ΪӢ�ۡ���˵����Ц
Ҳ̫��Ȥζ�ˡ�
�������ǺŶ�ս�ķ������������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150080a07">
����û�С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150090a00">
��������ô˵����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150100a07">
���������Ϊֹ��������������ô��
<RUBY text="����">Ӣ��</RUBY>����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150110a07">
��֪�����Ľ�̸������
����ɫ���ߡ������൱����Ӵ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150120a00">
�������ǵ�����˵������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ܥԽ�����ƺ����������������ʮ���˽�
�������������µ������ú����⡣
�����Ǻ�������ߣ���֪���Ҳ�ǵ�Ȼ�ġ�

��˲�䣬ռ�ݴ�����ʶ�ģ���һ�����ߡ�ʱ����С�
������Ŀ�Ľӽ��ҵ����ˡ�
��������Ҳ˵���˳�ɫ���ߵ����֣�
֮�����������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md02/0150130a00">
�������������¼��ı��񲿷֣�
������һ���˵���������ҥ����
����ֱ���Ǻ�����ʵ���ݵĳƺ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150140a07">
���޷粻���˰���
��������Ӣ�۾��б�����Ӣ�۵�����Ӵ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150150a00">
�����ź�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150160a07">
�����ò��죿��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150170a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��ֱ�ӵػش��ˡ�
�����ҳ�֮ΪӢ�۵Ļ����ǶԱ���ɱ��֮�˵ĳ�Ū��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150180a07">
��������ǲ�����Ϊ����Ͳ����ܱ��˵Ļ��ɣ�
������ҿ��Գû���������ġ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150190a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0150200a01">
���������Ҽ�ʶ���ˣ���ֱ��ص��˵в���
��Щ��ͷ���ԭ�򡭡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150210a00">
�����¡�����˵��������ϵ�������˵�ġ�
�����ܷ���ܾ��������ˡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150220a07">
����˼�ǣ������ϵ���ľͲ������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150230a00">
���ܶ���֮������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150240a07">
����������졣
������������˵��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150250a07">
��������˽������Ϊ�����ս������Ӣ�ۡ�
������ս���ĸ��ȥս����Ϊ�����硣
�������ĸ�����Ӣ�ۡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150260a07">
�����ϡ���

//���ӣţ��ӥ����ʤ󤫥���å�
{	OnSE("se����_��_��܈��01", 1000);
	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150270a00">
������������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150280a07">
����ʲô�����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150290a00">
���������ԡ�
���Լ���ս�������׻�����Ϊ�Լ������ɡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150300a07">
���������Ҫս������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ڲ�����ˡ�
��Ϊ�Ͳ��������յ���̸�����������ƺ�������ȫ��ʧ��

��ܥԽ��������������˫����ɢ�����쳣�����飬
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150310a07">
��<RUBY text="��������������������">��Ϊ����������������</RUBY>��
������Щ������������ɱ����
���Լ�����ս������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150320a00">
���ǡ���Ҳ����������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������Ϊ�����ڿ���Ц��
���Է����⻻��˵�����ѡ�

���ҵ�ս����ɱ�˶��������Լ������ɡ�
�����������ɵģ�����Ҳû��ת�����ε����
�����Է����������⻻��˵��������Ҫ�Ҷ�ҡ���ѡ�

�����ԡ���û��Ҫϴ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150330a07">
������㡭��
��������Լ���Ҫ�������ģ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150340a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺����Ԓ��ѩ܇�
	EfRecoIn1(18000,600);

	CreateTextureSP("���ٽ}10", 1001, Center, Middle, "cg/ev/ev914_�ũ�ʽ�o�T��ħ��������ޥ󥿩`��.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fwѩ܇�_��Ц.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md02/0150350a12">
����������С����
�����ǶԽ��ã�����Ը��ɱ����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);

	Delete("���ٽ}*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150360a07">
���䲻�������������������ˡ�
������Ϊ�����硣��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150370a07">
�����������Ļ�����и��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150380a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��������ʵ��
��������ʵ�������ǲ�ͬ��

��<RUBY text="������">����˵</RUBY>��<RUBY text="��������������">���ҳ�֮ΪӢ��</RUBY>
<RUBY text="����">�Ļ�</RUBY>��<RUBY text="��������">�ǲ��е�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="��������" src="voice/md02/0150390a01">
������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150400a07">
���ţ���硣
�����ͷ��β���Ǽ����˵����ݰ�����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150410a07">
����������̫�����ˡ�
�������Ļ������۹���ö��޷�սʤ<RUBY text="����">���Ǻ�</RUBY>Ӵ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150420a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����������������͡�
������ѹ��ͷ�Ե�������Ҳ�������อ��������

��ֻ������������ᡣ

��
�������������Ҹ��ܵ���ħ�ĵ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150430a07">
�������һֱ�������Ų���Ը���뷨��ս����
�����˺ܶ��ˡ�
���Ѿ��㹻����ΪӢ�ۡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150440a07">
��������û��սʤ������
��Ϊʲô�ء�������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150450a07">
��<RUBY text="������������">Ӣ��սʤħ��</RUBY>����һ���ġ�
����������ô�������ͱ�Ȼ����������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150460a07">
��Ȼ�������ȴ�޷�ȡʤ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150470a07">
������������Ϊ�����û���׳�ΪӢ�ۡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150480a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����׳�ΪӢ�ۣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150490a07">
����籾����ս������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150500a07">
����ʵ����͹���ս����
���������ɱ������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150510a07">
���Ҵ���ĵ���ô�롣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150520a00">
����������������������������������������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150530a07">
�������޷�սʤ��
������������Ȼ�ġ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150540a07">
�����Ų���ɱ�����뷨��ô��սʤ��
ʲô���졢ʲô�����Ѿ��ǹ�ȥ�����⡣
�����Ҫ�ǲ�����������㯵Ļ�������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150550a00">
���������ҡ�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150560a07">
��û����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150570a07">
����ȥ���ҡ���
����ȥ���˸��顣��

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150580a07">
��ֻ���Ź���������ĵ��ˡ�
������ħ������ɱ�����С���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150590a07">
����ΪӢ�ۡ�
�������ΪӢ�ۡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150600a07">
�����Ǹ�����ְ��
���԰ɡ�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150610a00">
������������

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150620a00">
��Ϊ�Ρ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150630a07">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150640a00">
���㲻��վ�����Ǻ��Ǳ���
��Ϊʲô����˵�����Ļ�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150650a07">
����Ȼ�Һ�ϲ��������
����Ҳ����վ�����Ǳߡ���

{	SoundPlay("@mbgm19", 0, 1000, true);}

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150660a07">
����������������Ҫ��顣
���л��Ļ�Ҳ����ζ���е��ˡ���Ϊ��
�����Ľ����ǲ��ܵ��ҽ�ɱ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150670a07">
����Ҫ�ǹ����Ļ�飬���ڶ������ž�����ˡ�
���������Ǻ��޵���ؽ���ɱ��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150680a07">
���������������˰ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150690a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150700a07">
�����˵��վ��˭�Ǳߣ�������˵�Ǹ��ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150710a00">
���ң���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150720a07">
���š���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0150730a01">
�������ƶ���ֵĽ��ɣ�����Ҳ��һ���ġ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150740a07">
��û��ϵ����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150750a07">
����������ϣ���Ļ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150760a07">
����ΪӢ�ۣ���ħ��ս���Ļ�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150770a07">
����û��ϵ��
������һ��ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����������轫�촽�ս��Ҷ��ߡ�
������˵����

�������ķ�ʳ�γɶԱȡ�
���������ĳ��ȡ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0150780a07">
���Ҹ������һ�𡭡�
��ɱ����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0150790a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����������x�k֫�O���ơ��衩��΅⤤�ե饰���O�����뤫����һ����

//����������뤫�⤷��ޤ���һ���äƤ����ޤ���inc�Ѿ�
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md02_016.nss"