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

scene md01_036.nss_MAIN
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
	#bg020_ɽ�}�ӵ�a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_037.nss";

}

scene md01_036.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_035.nss"

//��Դ��ɽ����bg020a��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg020_ɽ�}_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	StR(1000, @0, @0,"cg/st/st�������_ͨ��_˽��.png");
	FadeStR(300,true);

	StL(1000, @0, @0,"cg/st/st��霔�_ͨ��_˽��.png");

	SetFwC("cg/fw/fw�������_�~��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360010a13">
�����
�����������������������!!��

{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360020a13">
������ȷ���˵����ĳ���ʵ����
ͨ���м��ĵ�·�ϣ����߱�ʰ��ɢ���ڿ���ң�
�������ϧ��¶���޹��°����
������Ů����Ȼ����������

//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360030a13">
���ܾ��˸�����Ҫ�ҽ�����Ϊ����ҵ�糤��Ȱ�գ�
���۲μ��������������Ȫɱ��֮�ã�˭������
ȴ�Ǵ��ڿ��ߺͲ����ڿ���
���������ľ�ս������ ��

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360040a13">
���;�����̶ֳȰ�!!��

{	FadeStL(300,false);
	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md01/0360050b37">
������ʲô����������

{	SoundPlay("@mbgm21",0,1000,true);
	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360060a13">
���޷������ĸо����㰴���������͹��ˡ�
������ի������

//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360070a13">
��Ŷι���óƺ���Ͷ�������ŷ�𡣡�

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md01/0360080b37">
���ƺ��ĸ��������⡣
���������ǣ����ƺ�ϴ�����Ļ��������˵
�Ǻܱ���ġ���

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360090a13">
���ǾͰͶ�������ŷ��
����������ı��������¿��ӣ�
Ҳ�ǲ���ķ羰Ŷ����

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md01/0360100b37">
����֮���ƺ�����������

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360110a13">
���±���Ĭ����Ԥ���ġ�<RUBY text="�ã�������">��֮����</RUBY>����
������Ȼ���Ǿ���ֻ��ģ������
�������������������������󡣡�

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360120a13">
�������ܹ����ۿ����˰�����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md01/0360130b37">
�������ֶ�����ڡ���
���Ǹ�����ȥ�ƺ���������ء���

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360140a13">
����ȷ��
���������ͺ����㡣��

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md01/0360150b37">
����ˣ�Ҳ���ᷢ��ʲô����

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360160a13">
���ţ��ǵġ�
��<RUBY text="��������">���̶ֳ�</RUBY>����һ��Ҳ��������

{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360170a13">
������ֱ���Ǹ����֮ǰ������������������

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md01/0360180b37">
��<RUBY text="��">��</RUBY>���������С���

{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360190a13">
��û��
��������������ϣ����찵�ڵ����У���

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360200a13">
��Ϊ�˶����ڵ������ޡ�
��Ϊ�˶����ڵģǣȣѡ�
��Ϊ�˶����ڵ����Ǻš���

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360210a13">
��Ϊ�˶����ڵ�<RUBY text="����">������</RUBY>����

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md01/0360220b37">
��û����

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360230a13">
���������еĳ���֮ʱ����·�򿪡�����

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md01/0360240a13">
�����ǻ�������ᡣ��

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md01/0360250b37">
�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_037.nss"