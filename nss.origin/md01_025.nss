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

scene md01_025.nss_MAIN
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

	//�������ã�
	#���٥�ȥե�������=true;
	#ev214_�����o�Ϥ�����=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_026.nss";

}

scene md01_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_024.nss"

//���`�}����·
//�����á����á����á����Ф��M����

//���ţ֣�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg007_��m��·a_01.jpg");
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev214_�����o�Ϥ�����.jpg");
	CreateSE("SEL01","se����_����_��������_L");
	MusicStart("SEL01",1000,1000,0,750,null,true);

	Wait(2000);

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	SoundPlay("@mbgm24",0,1000,true);

	WaitKey(1000);

	SetVolume("SEL*", 2000, 0, null);
	FadeDelete("�}�ţ�", 1000, true);

	StL(1000, @60, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	Move("@StL*", 300, @-60, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250010a07">
��ѽ�ǡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250020a05">
������衭��
�����ڴ˵���Ϊ���¡���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250030a07">
���ιۼ��롣��

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250040a05">
���������˶��������ĵ��ࡣ
������Ϯ������֮��У�ӭ�ж���
������������ְ֮�𡣡�

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250050a05">
�����������⡣
�����ٻغ���ݡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250060a07">
����ѽ����ү�ӡ���Ҫ��ôһ��һ���
������������ص�Ŷ����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250070a07">
����������ƾ����ϻ�ȥ������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250080a05">
����������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250090a07">
��������ִ�ں�����Ŷ��
����û������Ҫ������ֻ���ڹ����ϸ��ڣ�
��ʱ�ύ���档���ֻ��һζ��������¡���

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250100a07">
���ܲ���������
���������ео���ϮҲ�ð���
�ֲ�������ѽ��ת��һ���뷨���ɴ����Լ�
��ɵ��˰ɡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250110a07">
������������ү�ӣ�
��Ҫ�������Ļ������ʷ���������ĵ�����
����ķ��Ѿ�Ҫ������Ŷ��������ֹ�Ļ�
ֻ�г�����Ŷ����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250120a05">
����������衣
����������ȴ�ô�Ҳ�˳�͢��Ա����

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250130a05">
�������е��Ծ�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250140a07">
���ߡ�����ү������ǡ�
��Ӧ��������ʵ�ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250150a07">
�������Ҳ�������������
���㵽�����ڴ�Щʲô�����ţ���

{//����ݤ�ݤ�
	CreateSE("SE01","se����_����_����ߵ��");
	MusicStart("SE01",0,1000,0,1000,null,false);
//����Ϣ
	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250160a05">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250170a07">
��������Ͼͻ�ȥ������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250180a05">
�������ˡ�
�����ǡ������������ر���Ȥ֮�¡���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250190a07">
����ѽ����Ϊ���ҲŻ���ô��Ϊ����
���ҿ��ǶԾִ����ڴ��ò����ˡ�û�취������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250200a05">
���֣�
����������������������������Ů�ˣ���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250210a05">
��������ܥԽ����ʱ������ȥ����
������
����Ȼ�ܼ���������֣�Ӧ�ö���
�ָ�Щ���˰ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250220a07">
����Ҳ���ǡ�
����������Ƥ������Ҫ��͸�û���ˡ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250230a07">
���������ҽ������ͬ�³�ȥ��
�������Ǳߵĳ��ӡ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250240a05">
�������ߡ�
��������Ҳ��Щ���ԡ�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250250a07">
������ָ������������ĸ�ף���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250260a05">
����������չ������;����Ż�����ʵ����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250270a07">
���ҵ����辿������ˣ�<RUBY text="����������">��񾿾���</RUBY>
<RUBY text="����">����</RUBY>���Ҳ�˵��ļһ
���������úܰ�����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250280a05">
���ǡ���Ц���ѡ���

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250290a07">
���һ���ô�չ˳���������Ϊ����
���Ǹ������ǡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250300a07">
����ϲ������������������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250310a05">
������������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250320a07">
����ô�ˣ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250330a05">
��������һֱ���ǳ��罫��������ɡ���
������Ī�ǡ�����

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250340a05">
���꣬Ī������������á�������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250350a07">
������ι���������졣
��һ��������˵ʲô�ء���

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250360a05">
���������š�
��������Ǹ���ղ�֮�����˰ɡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250370a07">
����������������ͷ�ӻ���ͬ����ʲô�ģ�
���������ּ���ǧ������¡���

{//����Ҫ�ˏꤸ�Ʒ���
//��������ݳ���Ҫ�_�J��
	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250380a07">
���ҷǳ�ϲ�������
����Ȼû�п���������

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0250390a05">
������ô��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С��������
	CreateSE("SEL02","se����_����_����᤯01_L");
	MusicStart("SEL02",0,1000,0,1000,null,true);

	WaitKey(1000);

	SetNwC("cg/fw/nw�����_��ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯Ļ������
<voice name="����㣯Ļ����" class="����������" src="voice/md01/0250400e270">
������ϲ���𡭡���

{	NwC("cg/fw/nw�����_��ʿ��.png");}
//������㣯Ļ���¡�
<voice name="����㣯Ļ����" class="����������" src="voice/md01/0250410e271">
������û��������������

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0250420a07">
���ţ�
��Ϊʲô�о����˵��ҳ϶�ͻȻ
�����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_026.nss"