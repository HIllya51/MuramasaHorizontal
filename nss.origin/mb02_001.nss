//<continuation number="480">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_001.nss_MAIN
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
	#bg026_���ӘSɽ��a_01=true;
	#bg032_��ᦌm�������b_01=true;
	#bg061_���ӘS�Ǵ����Tb_01=true;
	#bg062_���ӘS�Ǵ��ֵ�_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_002.nss";

}

scene mb02_001.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_014.nss"

//�����ӘS��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg026_���ӘSɽ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
  ���������ֳ�կ��
����ν�����֣���ָ���������е�һ��������

��������������������������ټ���Ϊ�׵ķ�̣���
�ԣ����ν������е����ơ�
������Χ���������ƺ�Ҳ�й�һ�����ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010010a02">
��������ô˵�����Ҵ�֮ǰ��ʼ�ͺ����⡣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010020a00">
���š���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010030a02">
��������������Ʋ�����д�������䡢������
��
����������ص��鼮�ϡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010040a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���Ҷ��ű��ڿ��л��ֱ߷��ʵ�һ�����ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb02/0010050a00">
����Ϊ�Ǳ�������˵��̫�����ɡ�
���������仹���塣��


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010060a02">
�������⵹Ҳ�ǡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010070a00">
�����Ǹ���һ���֣��ͳ��������ֳǡ�
����֪���ǲ������Ե�ʣ������Ǳ�˵û����
�ݹ���������δ������ΧϮ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ӿ��������ڲ����̶����꣬û����Щ������������
Ȼ�İɣ������ô˵��Ҳû��
�����Ǳ�ɢ��������ɥʧ�������������ϣ�Ҳ����ʵ��

������֮�µ����ж�ǿ��ʵ�������ж����������ơ���
����˹�в�������������ء�
�������������ֵ����򣬴������һ��ᱻ����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb02/0010080a00">
�������𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������Һ�һ���ܹ�Ǳ�������ǣ����<RUBY text="����">����</RUBY>�Ļ���
�������������ַ粨��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}��ܞ", 5000, "#FFFFFF");
	Fade("�}��ܞ", 1600, 1000, null, true);

	CreateTextureSP("�}���뱳��", 2000, Center, Middle, "cg/bg/bg032_��ᦌm�������b_01.jpg");
	Fade("�}��ܞ", 2000, 100, null, true);
	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010090a10">
��С���������׵�����
��������ˣ�����Ϊ����Ļ������Ȩ��
�Ĵ���æ����


//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010100a10">
��û��ô��������
����Ѫ����˵�����Ĺ���֮�ס���
����������Ҳû��������˶��׿ϡ���


//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010110a10">
���������ɮ����ͯ��Ϊ���ϸ����ˣ��׵�
�����·硣
�����ǡ����ء���


//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010120a10">
�����������׵���
���������ҷ����ε�λΪ������������������
��������Ȩ��֮ϯ������


//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010130a10">
���Գ�͢Ȩ����������ܡ�
������Ļ���ڲ����ó����<RUBY text="����">����</RUBY>����


//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010140a10">
���ԡ���������
�������������и���������һ�������


//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010150a10">
�������ڵ��׵���˵��ͯ���������ж���
���������Լ�<RUBY text="��������">�����ж�</RUBY>���ܿ��ᱩ¶����


//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010160a10">
������ֵ������ϳ��ˡ�
��Ǳ�������ֳǣ�����ʹ����ͯ��Ȩ��ʧ�ŵ�
�¼�����


//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010170a10">
�����׵��Ĳ���������λ������


//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010180a10">
����������Ͱ��ж�λ�ˡ�
����Ҫע�ⲻ�ɹ���
����Ļ�������ҷ�Ŀ�ġ���


//�����m��
<voice name="���m" class="���m" src="voice/mb02/0010190a10">
�����������͹���һ���ˡ���
����Ī���ǣ����н�פ����һ���˵Ĵ��ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}��ܞ��", 5000, "#FFFFFF");

//������
//�������T
	SetVolume("@mbgm*", 3000, 0, null);
	Fade("�}��ܞ��", 500, 1000, null, true);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg061_���ӘS�Ǵ����Tb_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 2000, true);
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

	StR(1000, @0, @0,"cg/st/st����_ͨ��_��װ.png");
	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_��װ.png");

	WaitKey(1000);

	FadeStR(500,false);
	FadeStL(500,true);

	WaitKey(500);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mb02/0010200a00">
�����������ε�������ְ��Ա�ľ��
����λ������ְͬ�ĸ�һ�¡���


//��������
<voice name="����" class="����" src="voice/mb02/0010210a00">
����ͨ�������ˡ���


{	NwC("cg/fw/nw�T�l.png");}
//������㣯�T����
<voice name="����㣯�T��" class="����������" src="voice/mb02/0010220e281">
�����Եȡ�{WaitKey(2000);}<BR>�������������ո��Σ���ӡ��������
�����ĸľ�����ˡ��ǣ��������ˡ���


//������㣯�T����
<voice name="����㣯�T��" class="����������" src="voice/mb02/0010230e281">
�������
��������������������


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010240a00">
����л����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����Ǹ��ܷ�����������һ����ֱ��������ٵ��˵�
ͷ�����Ǵ������š�
��ǰ������������Ե�����磬����������˵Ҳ����ȫδ
֪������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڡ����ֵ�
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg062_���ӘS�Ǵ��ֵ�_01.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ĿԶ��������ɽ�͵���״�俪һ��·����һ������
�ӣ�����Ȼ�γɻ��˹�������ұ�������ǹ���
�����Ǽ������������͵�ƽɽ�����������ģ��֮ͨ��
������Ϊ�޴�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_��װ.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010250a02">
��ȥ��������˰ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010260a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��һ��ָ������ĳǹ���˵����
������ҡ��ҡͷ��

�������ֳǵ��ڲ����첻���ܶ��⹫�������ȵ�������
���鱨�������п������ˡ�
��������ˣ����ճ������ǿ����Ʋ��һЩ����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mb02/0010270a00">
���ǿ������¼���ٵ������ҡ�
��������ʩһ���������档��


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010280a02">
�������ǣ�Ҫ��ɽ�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��һ����㵰���������������鷳���������Ϊ������
Ļ���Ĺ���ÿ���糿��Ⱥ�����ɽ���龰�ɡ�
���ҿ�Ц�Ŷ���������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mb02/0010290a00">
������Ҫ��
���Ȼ���ͻ��������������ˡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010300a02">
�����������ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����һ��û��ͨ�����ӣ�����ѧ��ط����ҡ�
���ҽ�����ɽ´����Ĵ�·ָ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mb02/0010310a00">
�������������ࡣ
�����������µļ�����ʹ�õ�·��ƽ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010320a02">
�����ء���������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����������һ���ع�ζ����ͬʱ���յ������صĵ�����
ɽ���ϴ��˹�����
������ȼ��������������

������Ԥ���Ļ��졣
���ƺ������Ǹ���ֱ��������˵������������ȡ������
ϵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010330a02">
���������𣿡�


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010340a00">
��������ô��
��ֻ��ͽ����һ��ͨ�ֶξ�̫�����ˡ���


//��������
<voice name="����" class="����" src="voice/mb02/0010350a00">
�����о������޵ĵ�·����
�������������ţ����ʮ�����Ӿ��ܵ����ˡ���


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010360a02">
���淽�㰡����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010370a00">
���ڷ����������ʱ��
�ƺ�Ҳ������Ѹ�ٲ��±�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���������ڹ��������ǵ�����˵Ҳ��һ����
������˵��������˲Ų���������·�������ǻ�������

�����ϻ�������·�����á�
������ܹ�����ס�����婖�ֵ�����ս��������ʹ����
�࣬·����𻵾Ͳ��ɱ��⡣

�������ദ��������Ϊ���ס�
���п��ܱ�����ʹ��ʱ�ƻ��������Լ���ʹ��ʱ������
���裬�������Ӧ��Ҳ���ǲ����ܡ�

��������������һ���ǽ����ڲ����ǳɱ���ǰ���ϡ�
���Ƿ���ʵ���У����Ǹ�δ֪����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��܇�����롣ͣ܇
	CreateSE("SE01","se�\��_܇_ֹͣ01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mb02/0010380a00">
���ǹ���������


{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010390a02">
������
����ô˵�������ڱ�ֽ�Ͽ����������ֵġ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010400a00">
����������͡�
����һ������С��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ǥ�¶�Ǥ˥��Ф�����Ů�ԡ��׵��äݤ�
	CreateSE("SE01","se�\��_܇_�ɥ��_�]01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw����_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0010410b20">
����������ʹ�õĳ�ȫ���ǹ����ġ�
����Ȼ��Ǯ���󣬲�����Ҳ���ǹ�ְ��Ա��ƫ
�ðɡ���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010420a00">
������ȫͬ�⡣û��������̬���޷���ֲ����
��ҵ�ġ�
���������ǽ��н����µġ�������


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0010430b20">
��̫��С���ˣ��ն����ˡ���Ȼ������ڴ�˵
���Ǹ����֡�
����Ϊ�Ҷ���αװ����С�����޹�ϵ��һ���
��ģ���������������̽�����


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010440a00">
�����ǿ�����������


{	FwC("cg/fw/fw����_΢Ц.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0010450b20">
���ǺǺǡ����ǵ�Ȼ��
����Ȼ��ô��ʤ����̽�����ء���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0010460a02">
���ն�������
���Ҿ��öԻ�������ϡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0010470a00">
����Ҳ�����롣��


{	FwC("cg/fw/fw����_΢Ц.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0010480b20">
�����ɣ��롣
���ȴ�����ȥ�������ݡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤��`��
	CreateSE("SE01","se�\��_܇_�k܇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��Ļ", 15000, "#000000");
	DrawTransition("�}��Ļ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitKey(1000);

	ClearWaitAll(3000, 0);

}

..//������ָ��
//�Υե����롡"mb02_002.nss"