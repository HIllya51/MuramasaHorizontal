//<continuation number="1660">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_037.nss_MAIN
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
	#bg039_��������ϯa_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_038.nss";

}

scene md02_037.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md02_036.nss"


//�������
	PrintBG("�ϱ���", 30000);
	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg039_��������ϯa_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm25", 0, 1000, true);
	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_0", true);


	CreateTextureEX("���ޤ�", 1000, @650, InBottom, "cg/st/st����_ͨ��_˽��.png");
	Request("���ޤ�", Smoothing);
	Fade("���ޤ�", 300, 1000, null, false);

	StL(1000, -236, -913, "cg/st/resize/st�衩��_ͨ��_��װ_b_l.png");
	SetVertex("@StL*", center, bottom);
	Zoom("@StL*", 0, 500, 500, null, true);
	Request("@StL*", Smoothing);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md02/0370010a01">
��˵��������ô��ôͻȻ��
������һ���Ӿ���������

{	FadeStL(300, false);
	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370020a07">
����Ҳ���Լ����������
�����������������е����������Щ���ӡ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370030a07">
�����ƺ������˰���
�����Ǿ����û������ʱ��Ͻ��档��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��Ļ�����ԣ�ܥԽ������
������Ǹ������йص��°ɡ����������룬
����������Լ��ط���������ȷʵ���

����Ȼ�����ڰ�ᦹ��¼������ζ������ж��У�
������Ҳ����äĿ���š�
������һ�ж������Ż�����������֣�
���б�Ҫ����<RUBY text="����">����</RUBY>�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370050a07">
��ม���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370060a00">
�����£���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370070a07">
���Ǳ��Ǳߡ�
�����������Ӵ����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370080a07">
�������辩�ӣ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370090a00">
���ǰ���
������ȥ�Ǽ�����ϵ�С���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370100a00">
���������Ҿ����Ѿ���ʱ�ˡ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370110a07">
��û��������ʲô�����ء�
����������Ĺ���ս��������ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370120a00">
����˵����������������
�����Ѹ�����ʱ���ˡ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370130a07">
�����᲻���ó�����
��������������η��񰮺����ǡ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370140a01">
��������������ʱҲ�У���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370150a00">
���ԡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370160a01">
�����Ǹ������е㲻һ������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370170a07">
�������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370180a01">
���ͷ����ƽ���������һ���е���֡���

{	FwC("cg/fw/fw�衩���װ_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370190a07">
�������ƽ�����
������������ġ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370200a00">
�����<RUBY text="��������">��������</RUBY>�ˡ�
���������������ƽ��������仯�ɡ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370210a07">
������һЩ��ʵ����Ȥ�Ķ����ء�
������ǰ�԰ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370220a00">
��������ʽ�����Ǵ�ʽ����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370230a07">
���п��ܰ���
�����ָ��죬֮ǰҲ�й�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md02/0370240a00">
����Ȼ����������ʹ�ʽ�������Ϊ
���������𣿡�

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370250a07">
���һ��ǱȽ�ϲ����ʽ����������
������������ȥ���С���ʽ�Ļ���������
��ֻ�������ɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370260a01">
����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370270a00">
����˵ʵ�����������ṹ������ܿ����֡�
�������ڴ�ʽ����Ҳ�Ƚ�ƫ������ʽ����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370280a07">
�����Ҳͦ������ġ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370290a00">
���ǡ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370300a07">
��ͨ����Ϊ������ʤ���𽺰�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370310a00">
����Ȼ����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370320a07">
����ʽͬ�˽�ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370330a00">
������
��Ҫ˵��ϲ���Ļ�������������

{	FwC("cg/fw/fw�衩���װ_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370340a07">
��������!!��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370350a00">
���ǳ���Ǹ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370360a01">
��������������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370370a07">
����˵��壬���ͳ����ˡ�
������ʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370380a00">
�������ƺ���������
��ӡ����û�м�������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370390a07">
���š���
�����Ǹ��������ú���ĳ�������𣿡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370400a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370410a07">
��������������
���е�����Ϯ�ﰡ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370420a00">
����������ô˵�Ļ�����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370430a07">
�����������ص����幹����
�����Ҳ�治�����Ӱ�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370440a00">
��֧�������ֵ�װ�ñ��Բ���ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370450a01">
���š�����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370460a07">
������ȥ���㲿����ʮ�㡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370470a00">
���ͳ�������ƺ�������
�������Ļ���ת���ʱ��᲻��������أ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370480a07">
�������������������ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370490a00">
��ԭ����ˡ���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370500a01">
�������ţ�����������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370510a00">
����!?
�����£��뿴�Ǳߣ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370520a07">
���ţ���������������
��ͦ���ֵ��¶��飬��ûʲô�ر𡪡� ��

{	FwC("cg/fw/fw�衩���װ_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370530a07">
��ʲô��������!?
��˫��գ��ְ����������
�������������ʽ������������!?��

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370540a00">
����������Ť���ź�װ�á���!!��

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370550a07">
������װ������
���Ǽҹ�˾��ô�������Ŀ�������!?
�һ���Ϊ��ֻ����Щ��ճ�ϼ������õ�
ģ�Ͷ���!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370560a00">
������ȫ�������ϰ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370570a01">
����������ιι����������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370580a00">
�����������ǡ����������ߡ���
�����������ε���Ŀ�㡣��

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370590a07">
���μ��ߵ�ˮ׼�ܷ��ӵ�ʲô�̶Ȼ����������
�����Խ��Խ��Ȥ�ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370600a00">
���ţ�ȷʵ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩�襺�`�ॢ�åס�
//���Ϥ碌�ƴ����ϥ��`�ॢ���ȡ�

	Move("@StL*", 300, -235, -670, null, false);
	Zoom("@StL*", 300, 750, 750, null, false);

	Move("���ޤ�", 300, @50, @100, null, false);
	Zoom("���ޤ�", 300, 800, 800, null, false);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370610a07">
��ม�<RUBY text="���٣�">���ս���</RUBY>�ĳ����ˡ�
���о��þ�û�����ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370620a00">
����Ҳ�������ɣ�
��էһ�������辩�ӵļ�����ʮ�����ơ�����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370630a07">
��������˵�����ں�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩�襺�`�ॢ�åף��������`�ॢ����
	Move("@StL*", 300, -234, -390, null, false);
	Zoom("@StL*", 300, 1000, 1000, null, false);
	Move("���ޤ�", 300, @50, @0, null, false);
	Zoom("���ޤ�", 300, 700, 700, null, false);

	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370640a07">
����ѽ��
����˵���ȥ�Ķ��ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370650a00">
��û�п�����
������û�вμӡ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370660a07">
����������˵������Ӵ��
���ǳ�����Ȯ��������Ͷ�뻹������ʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370670a00">
�������ͣ�
���ѵ�˵����֮ǰͨ��������桪��������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370680a07">
���Զԣ������Ǹ�����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩�襺�`�ॢ�åף��������`�ॢ����
//�����������ߥ��������������饤�ȥ��åף�
//���������ؤ���}�Ȥ�ʹ�äƤ���פ����⡣�l���褯��
	SetVolume("@mbgm*", 1000, 0, null);
	Move("@StL*", 300, -232, -80, null, false);
	Zoom("@StL*", 300, 1250, 1250, null, false);

	Move("���ޤ�", 300, @50, @100, null, false);
	Zoom("���ޤ�", 300, 500, 500, null, true);

//���饤�ȥ��åס�΢�� inc�Ѿ�
	OnSE("se�M��_���㥰_���äȤ�", 1000);
	CreateTextureEXmul("�饤�ȥ��å�", 1000, @0, @0, "cg/data/beam_04_00_1.png");
	Fade("�饤�ȥ��å�", 1500, 1000, null, true);
	WaitKey(2000);

//���ե��`�ɥ�����
	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 1500, 1000, null, true);
	Delete("@OnBG*");
	Delete("�Ǥ��������");
	Delete("���ޤ�");
	Delete("�饤�ȥ��å�");
	DeleteStA(0,true);
	OnBG(100, "bg039_��������ϯa_01.jpg");
	FadeBG(0, true);

	CreateSE("SE01L","se����_����_���`���å�02_L");
	MusicStart("SE01L",600,1000,0,1000,null,true);

	Wait(1000);

	FadeDelete("�\Ļ��",1500,true);

	Wait(1000);

	SoundPlay("@mbgm30", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����ο���ھ��������ֱ�Ť��ʼ��֩�����Ĵ�����
���������������˵㡣һ��ص���ϯ��
���¸�Ҫ��ʼ�� 
��һ�����죬װ�������Ǳ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01L*", 3000, 400, null);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md02/0370690a00">
����������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370700a07">
���辩���и��õĿ�ʼ��
�������ٿ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��ʮ��ƽ���Ļش�

����������裬������ע��������֮�ϡ�
����Ҳ˵���������ӡ��������������Գ̶ȵ����ӡ�

�����͸е����ĵ�״̬���в�ͬ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_��װ_b.png");
	StR(1001, @0, @0, "cg/st/st����_ͨ��_˽��.png");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md02/0370710a00">
����ʲô���𣿡�

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370720a07">
���ţ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370730a00">
���Ĳ����ɵ����ӡ���

{	FadeStL(300, false);
	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370740a07">
������û����������
��ʤ��Ҳ��ֵ���ڴ�����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370750a07">
��ֻ�ǽ��죬�����ս�Ҹ���������ա���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370760a00">
�����գ���

{	FadeStR(300, false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370770a01">
�����������ģ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������¶������ı���Ҳ�Ǻ�������

��װ�׾����������Ƕ��صġ�
���������ڵĻ����������顢�������ϴ�����
<RUBY text="�������">��Ͳ</RUBY>����������

��һ�Ը�֮����������
�����������ڱ����Ļ�������Щ����Ҳ����е����죬
����������ҩ�����˸��ӿ��ܡ�
���������µ�������������ղ�����ü�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370780a07">
�������ͺá���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370790a00">
������������

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370800a07">
����ı����΢���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370810a00">
��˵ʵ�����е�������⡣��

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370820a01">
�������Цһ��Ҳ����ȤӴ���������ˡ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370830a07">
����û�п���Ц����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370840a01">
������Ϊ�Σ���

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370850a07">
����硣��

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370860a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370870a00">
��������磿��

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370880a07">
������ʲô�����ǰ�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370890a00">
��������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370900a01">
������û�������ɣ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370910a07">
�����ǰɡ�
�����ǣ�<RUBY text="������������������">���ʲô����Ҳû��</RUBY>�������¿����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370920a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����������ܣ���
�����ֻ����������������������Լ���������������
����������һֱ�������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370930a07">
����ô�����������Ǻ����أ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370940a07">
���������������������
����ȥ���������ģ��ⲻ���ǰ����𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0370950a00">
��������

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370960a07">
������˵�������ر𰲾�����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370970a07">
��ֻ���������͸�����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0370980a01">
���������أ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0370990a07">
�����ڴ������屾������Ȥ����

//�����ߥ���ŭ
{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371000a01">
���ǻ���Ҫл�㡣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371010a00">
��ԭ����ˡ�
����������˼�İ���������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371020a01">
�������������²�ȥ���Ҳû��ϵ����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371030a07">
��û��û��
����ֻ�ǹ�硣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��˵�ţ����������Ц�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371040a07">
����簡����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371050a00">
����������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371060a07">
��������ֻ�й�硭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//����������
//����`���ӣŤ��ե��`�ɥ�����
	OnSE("se����_����_�Z��02", 1000);
	SetVolume("SE01L*", 1000, 0, null);

	WaitKey(1000);

	SetVolume("@OnSE*", 3000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��Ԥ��������
��������ɫ�ľ����ý��з׷׿�ʼ��������վ��

�����´����¿�ʼ���е�ʱ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_��װ_b.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371070a07">
������������¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371080a00">
������ģ���

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371090a07">
��Ӣ����ħ�����¡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371100a00">
�������ǡ���

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371110a07">
��������
��Ҫ������Ӣ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����������һ���ʣ�һ�߲�Ŀ��̽��ߡ�
���һ������ʮ��Сʱǰ��һĻ�����Ƶ�̾�˿�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md02/0371120a00">
���Ѿ��Թ��ˡ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371130a07">
�������Թ��ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371140a00">
���ǵġ����������µĻ���
�����Ϲ⣬�ԡ����ҡ���ս��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���Ǹ�ʱ����ȷʵ������������һ���硣
���ܸ��ܵ��Լ���֪�����󡪡�������ֻ��һ˲�䡣

�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/md02/0371150a00">
��������������˹�Ķ�̬��
��������������վ�����Һܽ��ľ��룬ȴ��
�����ʵ����ʼ���ɵĳ̶ȡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371160a00">
�����⻹���Ƕ���������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371170a07">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371180a00">
������������Ӣ��֮�����ǻ��ǲ��ʺ��ҡ�
���ܾ������ֱ���������ܾ��ĸо�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371190a00">
������˵����ֻ�ǵ����ؽ����ҵ�
������������ȫ��ͬ�Ķ�����
�������������ƺ�ֻ�ܷ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���ó����ۺ󣬲��ɷ������е�ʯͷ����������
������Ϊ��ܥԽ����Ӧ�û��Ȼ��
������ʵ��ȴ�в�ͬ��Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371200a07">
����������
�����������෴����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371210a00">
�������෴��ָ���ǣ���

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371220a07">
������㲢���ǿ����˹����Ķ�̬����
��������<RUBY text="��������������">���ڴ�������ʵ</RUBY>����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371230a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����ʵ��
���ǲ����л��޶��޷���׽��ģ��<RUBY text="������">��ʶ</RUBY>��

���������岻����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1001, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="��������" src="voice/md02/0371240a01">
�����岻��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��һֱ��Ĭ�Ĵ�������˵���������롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371250a07">
�����𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371260a01">
��������Ȼ��˵�˶���Ļ���Щ��Ǹ��
�����벻Ҫ������������Щ
�����Ķ������������š���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371270a07">
��������У����б��˵�ʱ��
ͷ���µĶ���Ӵ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371280a01">
����ѽ���������л������ҡ�
����ôҲ˳������ҡ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371290a01">
���������������С����˵����ʱ�����ô�죿��

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371300a07">
����ѽ����������������
����������˰��Ļ������С�㣬��Ҳ
��Щ��������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371310a01">
���ҿ�û˵Ҫ�����������ðɣ�
����Ȼ���á���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371320a00">
����������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371330a01">
����������Ҳ����
����������˵���ǲ�������ҲҪѡ���ˡ���

//��������
<voice name="����" class="��������" src="voice/md02/0371340a01">
���벻Ҫ�������н����˿������Ǻŵ�ͬ�顣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371350a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371360a01">
��������Ǹ��
���ղŵĻ������㡣��

//��������
<voice name="����" class="��������" src="voice/md02/0371370a01">
������˵�˶���Ļ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371380a00">
��ûʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�������������ż���
��ܥԽ����Ӧ�ò���վ������ߵġ�
���������һ�������˵�Ļ�һһ���գ�
��������������Ȼ���ò�����

��Ҳ����û�в�����Լ������֮����
��ֻ�ǡ�����֪Ϊ�����������Ļ������޷����ӣ�
�������������������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371390a07">
���š�ûʲô���಻����ġ�
����û�������ӹ��������׵����Ҹ档��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371400a01">
��������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371410a07">
����������Ū����һ���¡�
����˵������û��վ�������Ǳߡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371420a01">
������������һ�㣬�Ҿ�����ȫ�޷����Ρ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371430a07">
��������Χ�Ǿ�ʮ�幫��һ�����ǵĵ�ȷȷ��
��ʵ��������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371440a01">
���Ǿ�����ƭ�˵İ�!!��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371450a00">
�������Ȳ�˵�ǵ����ѡ�
�����£��ղ����������
�����Ǵ�������Ҳ�޷���⡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371460a00">
������ֻ�Ǻ�����¥�Ļ�����˼�ϵ���
˵��ͨ�����ǡ�����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371470a07">
��������¥����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��ܥԽ����������Ʒζ�㣬�������Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371480a07">
��������¥��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371490a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����Ůû�п��ҡ�
��������Ϊ׼���³����µĹ�����Ա�����߶��ķ���
���������ķ���

�����������Ҳ֪����

�������������Ц��
���Ȳ��Ǽ�Ц��Ҳ���ǳ�Ц��

��ֻ�ǣ�������<RUBY text="����������">�������Ц</RUBY>ʱ�����ֿ�Ц�ĸо���
�������ں������ཹ�ཱུأ�����Ц�š�

�����б�Ҫ��һ�¡�
������֪��Щʲô��

�������ʵĻ�����������˵�����ࡣ

��Ϊ�Σ��һ���ô���ء�

��Ӧ��������<k>
��
������Ϊ�Σ����ʲ����ڡ�

��Ϊʲô��
�������������������ʡ�

����֪�����ʳ����࣬ȴû���ʳ��ڡ�
��һ��<RUBY text="������������������">����Ϊ����֪������</RUBY>��

����ֱ����ô��Ϊ��
�����������֪��֮�󣬾������Ľ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_��װ_b.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371500a07">
��������Ȼ������
����Ȼ��������Ӣ�۵����ʡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371510a07">
�����ҵ����иü���Ӵ��
�������һ���ܳ�ΪӢ�۵ġ���

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371520a07">
��սʤ<RUBY text="����">ħ��</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371530a00">
�������㵽�ס�����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371540a07">
��������������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371550a00">
��������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371560a07">
����ô�õ����ա�
�����µ�ȴ���˰�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371570a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�����µģ�

�����򾺼�����
����������ʲôϷ���Եı仯��
�ƺ��������ٶȿ�ʼ���е�ʱ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�衩���װ_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371580a07">
����һ�������Ӣ����Ҳ���ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371590a00">
�����£���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371600a07">
�������о�������
����Ȼ����е�Զ������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371610a07">
����Ȼ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���䲻������Ů����֡�
���ŵ�����ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1001, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="��������" src="voice/md02/0371620a01">
�������ڸ�ʲô����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0371630a07">
������졣
����һ��ץ��Ӭ�԰��㡣��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371640a01">
������쵰������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0371650a00">
����������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0371660a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
���������ǣ�ʲô��

��һ�����ڽӽ����⡪��<k>
��
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);


//�������ۥ磻�ȥ����ȡ�inc�Ѿ�
	CreateColorEX("�ۥ磻�ȥ����ȣ�", 5000, "WHITE");
	Fade("�ۥ磻�ȥ����ȣ�",3000, 3000, null, true);


}

..//������ָ��
//�Υե����롡"md02_038.nss"