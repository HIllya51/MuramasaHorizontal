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

scene mb03_010.nss_MAIN
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
	#bg027_���ӘS�u�h���g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_011.nss";

}

scene mb03_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_009.nss"

//�����ӘS
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

	Wait(500);
	SetFwC("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100010a08">
������������ôһ���£�
����������!?��


{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100020a07">
������������


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100030a06">
������������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100040a08">
������ι��
��Ϊʲô��˵������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100050a07">
��������ʲô���Щ����
��Ҳ����˵������Ļ��ܽ�һ�¾��ǡ�����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100060a07">
������֮�����ţػƽ�֮����������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100070a08">
����������ʲô�˰�!?��


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100080a06">
��������˵ɱ��ͯ�ĺ��е���������


{	FwC("cg/fw/fw�׵�_����.png");}
//�룺�������ʤΤã���090930��
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100090a08">
���ǡ��ǵģ������������ģ�
�����Ƕ�Ļ�������ƣ�����Σ������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100100a08">
�����뼯����ȱ�����֮�Կ���
����������ʱ��ҲҪ����̫�׸�����������
����������Ƿ��һ�����飬��Ҳ�˲����ˡ�
��Ҫ�����̽��ѹ��ס��͢����


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100110a07">
��Ҫ����һ�����𣿡�


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100120a06">
����Ҫ����


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100130a08">
����������˵������


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100140a06">
�������ء�
�������ô������Ǻȵ��ɡ���������������
��ɲ������ɡ���


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100150a07">
���š����о�������һ�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�׵�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100160a08">
���Ȳ�������Ҳ�������θ���������!!
������ͼ����������Ŷ������һ��ɱ�ľ�
��ͯ�Ĵ��˰�����


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100170a08">
��������˵��������Ҳ������ɱ�ģ�
���ԣ�������û����


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100180a08">
���ⲻ��Σ����ʲô!?��


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100190a06">
���Ǳ������롣��


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100200a07">
������ս�ǣ���


{	SetComic(@0,@0,9);
	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100210a08">
����������
�������ˡ���!!��


{	DeleteComic();
	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100220a06">
��������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100230a07">
����˵�㰡��
������������ô�����ģ���λ���壬��������
�����Ӷ���������Ŷ����


{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100240a08">
������ѽ��������ز�¶��
����Ȼ�����ã�������ô��Ļ�û�����Ͱ�����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100250a08">
�����Կ϶����ǣ�Ҳ�����ߵĴ��ڡ���
�����ţ�������ӵ�ж���ս�����ء���


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100260a07">
����Ӵ����


{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100270a06">
���롣��


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100280a08">
������������!!��


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100290a07">
�������ء�
������������أ���


{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100300a06">
����ô��
��Ҳ����˵��<RUBY text="��������">û������</RUBY>���԰ɣ���


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100310a07">
���ǰ���
������ô˵�ġ���


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100320a08">
��������


{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100330a07">
��Ϊʲô��������ͻ��޷������ء�
�����������и�����п��ܵ��ƲⰡ������˵
̫�׸��췴�����ǣȣ���ı�����԰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100340a06">
����Ļ������������⡣��


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100350a08">
����������


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100360a07">
������ȥֻ��<RUBY text="������������">��������</RUBY>������֣�
����ȷ����Ŷ�����׵�������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100370a08">
�����������ǵģ��Ǹ��ǡ����š�
����Ϊ����������յ����鱨����


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100380a07">
���Ǿʹ���һ�㿪ʼ˵����ͦ����
��Ϊʲô��������ͷ���ú�˵�أ���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100390a08">
���ǡ��ǰ������Ȼ�������
�������е㾪��ʧ���ˡ���


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100400a06">
����������������
���������ڵĻ��һ�δƽϢ�������Ѿ��ռ���
��ô���鱨���������ȷ�����࣬���������⡣��


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100410a06">
��������ӵ��һ֧�൱����ĵ����Ӱ�����


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100420a08">
���㡢���ǰɡ�����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100430a07">
������ôȫȻ��֪��
���Ⱦ��ڻ����㣿
����Ҳ�������ȫ���š���


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100440a06">
�����϶�����������̵ġ���


{	FwC("cg/fw/fw�׵�_����.png");}
//�룺��������ϣ���090930��
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100450a08">
���⡢�����£����ڸ�������ν����
���ú����������Ը����ɣ���


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100460a08">
����Ȼ�Է��Ѿ��������������ҷ�Ҳֻ������
�����ˡ�
����֪���Է��������������ٱ�����
ֻ�н����¿ɵ����ı������������¡�����


{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100470a07">
�������ɰɡ���


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100480a08">
������������


{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100490a07">
������С���������ı�����
����������Ϯ��������ɱ��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�׵�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100500a08">
���ᡭ��ȥ��
����ƾ��ľ��ӣ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100510a06">
���ǰ�����


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100520a08">
��Ϊ��Ϊʲô������


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100530a07">
������
���������Ϊ�㿼�ǰ�����


//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100540a07">
��������ҵȾ��ӽ����Ļ����ҿɲ��ұ�֤��
�����Ը�����Ŷ��
������᲻ɱ����˵����<RUBY text="����������">����΢����</RUBY>
<RUBY text="������">��һ��</RUBY>Ŷ����


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100550a06">
�������ɡ�
�������������������������ֳ�Ϯ����һ����
һ�ٳɹ��ġ���֮���Ŷ����


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100560a08">
��!!��


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100570a07">
������ô�����أ���


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100580a08">
��������
���䡪����ȻĪ������������Ӧ�ˡ���


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100590a08">
�����������첿�������°ɡ�����


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100600a07">
������Ҫ�졣
���ҿɵȲ��˶��Ŷ����


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100610a06">
��һ�����ڰɡ�
������������ʱ�ޡ�����


//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100620a06">
��ܥԽ���㴨����������<RUBY text="������">������</RUBY>���д��֡���


{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100630a08">
��������


{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100640a08">
��Ϊ����Ϊʲô������


//���׵���
<voice name="�׵�" class="�׵�" src="voice/mb03/0100650a08">
��Ϊʲô�����������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�ȥե��`�ɥ�����
//���ե��`�ɥ���
	ClearWaitAll(2000, 1000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	Wait(1000);
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100660a07">
���Ǽһ����𣿡�


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100670a06">
�����Ǹɲ��ɰ���
��������ɵ��Ҳ�����Լ��Ĵ��㡣�����Ҳ���
��Ϊ����ͬʱ������Ϊ�л���ȡʤ����


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100680a07">
������ɵ����
������ɵ�Ӳ�̫һ����ֻ����Ϊ���Ź������
�������Դ�����ס��������ǰ�����ѡ���


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100690a06">
��������ɵ�ӵ�֤��������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100700a07">
����Ҳ�����ϡ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100710a06">
���㲻��ô�����׵����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100720a07">
���ǡ����ǰɡ�
���Ǽһ�����ν��ǰ���󡭡�׼ȷ˵��������
���Ǳ�����һ���Ҳ������������Ĵ�������


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100730a07">
�����ԣ��ƺ����˾ͽ����Ҵ����ˡ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100740a06">
���������𡣡�


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100750a07">
��������ҲҪ�ս��ˡ���


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100760a06">
�����������ս�ġ�
��ֻҪ�һ����š���


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100770a07">
����Ӵ������иɾ��ʨ�Ӻ�
���Ǿ���˵�����ʱ��Ҳ�����𣿡�


{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mb03/0100780a06">
�����д��⡣
�����־�������ô�����ˡ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mb03/0100790a07">
������
����ô�����ʹ��һ���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_011.nss"