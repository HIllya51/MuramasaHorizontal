//<continuation number="1640">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003_3.nss_MAIN
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
	#bg032_��ᦌm�������a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
//	$PreGameName = $GameName;

//	���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
//	������֦�����椷�Ƥ������ϡ�"mb01_003a.nss"
//	������֦���������Ƥ������ϡ�"mb01_003b.nss"
//	$GameName = "mb01_003b.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	if($PreGameName == "mc01_001.nss"){
		$PreGameName = $GameName;
		$GameName = "mc01_002.nss";
	}else{
		$PreGameName = $GameName;
		$GameName = "mb01_003_4.nss";
	}

}

scene mb01_003_3.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_002.nss"
//ǰ�ե����롡"mb01_002a.nss"

.//��Ӣ�۾����ȡ���׉��"mc01_001.nss"���Ǥι��Х��ꥢ������������
//�����`��Ƿ֤��ơ�����


//������
//����ᦌm���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	OnBG(100,"bg032_��ᦌm�������a_01.jpg");
	FadeBG(0,true);
	Fade("�}����Ļ", 0, 400, null, true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030020a10">
��Ŷ����������һ�ˣ���������
���ϴ������ˡ��𳤶����߱����ˡ�
�ָ������˴��鷳����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030030a00">
���ǡ�
����̧̫�����ˣ�ǰ��֮�����Ҳ��˹�����
�Ҹ�����µġ������������ġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030040a00">
������һ�η�������ؼ������Ǻţ�
�վ�δ����ֹ��������
�����澡ʧ�������ѵ�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030050a10">
������ô˵��
���Ȼ��������޵�Σ�ձ������ֻ�ȡ��
�ǣȣѵ���ı��Ļ�����ң���������Ҳ
ƽ����������

{	FwC("cg/fw/fw�H��_Ц��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030060a10">
���������Ǻܺ��𡣡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030070a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������������ڵ�Ȱο֮�����һ���һ��
���������ҵ������˼���ᦹ�����������������
��˵��ֱˬ�������������ݲ������ȴ�������ҵĳ�
����

���Խ�֮���¼��������Ѿ���һ�����ࡣ
���˿���ƣ���ѻ���Ȭ�����������཭��Ϯ�����е���
�������������ҶԹ���������

����Ȼ�Ⲣ����������֮�£���һֱ��С�������Ŀ��
ע�����ҵ��𳤣���Ŀ���ƿ���������ֱֱ�ؿ�������
������
�����ű���̽���ƵĻ���һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030080a11">
���������¡���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030090a10">
���š�����


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030100a10">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030110a00">
���ڡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030120a10">
����Ȼ��������ˣ���ͽ��֮������һ̸��
��������ǰ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030130a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�����Ϥ���_��");
	MusicStart("SE01",0,500,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ҹ�����ǰŲ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030140a10">
�����Խ�Щ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030150a00">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�����Ϥ���_��");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������������ǰһЩ��
������������������ϥ��������

�������к����ء�
���йؽ��֮�¡�����ֻҪ�����йأ�����������ޱ�
����

���ѡ����ٻ���һ����������ȡ�Դ�����������ӡ֮
����д档
������ĸ�塪�����Ǻ��Խ��ڡ�

���轫����߻��ơ�
�����һ�����ҵ�ս����������������ֻ��Ϊһ������
�߱��þ���Ŀ�ġ�

�����ж�����
�����ж��������䱳��<RUBY text="��������">���ж���</RUBY>��

�������
�����ơ�
���������ұ���Ҫɱ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb01/0030160a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ޤ�
//��������ȓe�餤�ǡ������֤�Ĥ�
	CreatePlainEXover("�}����", 300);
	CreateSE("SE01","se����_�n��_ܞ��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("�}����",0,750,300,0,0,10,DxlAuto, true);
	Delete("�}����");

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030170a11">
����������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030180a00">
������ʵ�ڱ�Ǹ��
������Щ����ƣ�ۡ���


//��������
<voice name="����" class="����" src="voice/mb01/0030190a00">
��ƣ�롭����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030200a10">
���ǿɲ��С����������Ϣ��
�������������ȴҲ���Ƿ����������


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030210a10">
���ǰɣ��𳤡���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030220a11">
���ǡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030230a00">
������
������һ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����ҧ�����أ��ɴ�˫�ۡ�
���þ�ȫ�������ӳ�̬��¶���Լ���

������ƣ�룿
��������Լ����ܳ���������<RUBY text="����">����</RUBY>״̬֮�С�

�������Լ������ƽ���ƣ����ζ���޷�Ʒ������Ԩ֮�ˣ�
��ʲôȥ������л�
���������ж�����޳ܣ��ſ�������й������

���ɳܵ������������š�
����������Ҳ����˵������ζ��<RUBY text="����">����</RUBY>�ľ����Ѿ�������
��

����������ҲҪ�и����𡭡�
��
��
�������ع������������Լ�����Ū��������뷨��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mb01/0030240a00">
����ֱ�Ǹ��
������Ŀ֮�����������ۡ�
�����������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030250a10">
��û��ϵ�𡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����Ȼ�������΢������ԥ���������Ϊ��������˵��
����ȷʵ���������ϱ�о��������·��¾��İ�ص�
�˵�ͷ��
�����ţ�����һ���·�Ħ��֮����

�����������������ӿ������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030260a10">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030270a00">
���ڡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030280a10">
���������������������޼����ڴ��
Ϊ����Ϊ��
���������ô�ͳ�Ϊ��פ����
����Ӣ����ĸ���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030290a00">
�������ǡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030300a10">
��ԭ��Ӧ�����׵��ƶ�<RUBY text="����">��̬</RUBY>����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030310a00">
��������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030320a10">
�������������в�ͨ�ˡ���
��˭�ϣǣȣѾ�������ᣬ�����ֶΡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���������޵Ŀ��������޶ã�����ʹ����ѩ���һ�i
֮���ļ��������������߱��С������֮�£�����
����פ��Ӣ�ۻ��ˡ�
���ҳ��ϣ�Ҫ˵���ᣬ���ֶε�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030330a10">
�����ǡ�
���ҷ�������Ҫ��Ȼ��ȡ��ʩ
���������д��뷨����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030340a00">
��������


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030350a11">
������Χ�ƴ�͵Ķ����������壬�Ǿ���
�п��ܵ��·��̵�Σ���ֶΡ�
˵ʵ������������һʧ��
��Ȼ������������ü�ޡ�����ǵġ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030360a11">
�������������ڴ���ʱ���������ȡ�����ˡ�
Ȼ���������Ӳ��ܣ�
�͵��������δ���ڲ��ˡ���
���������Ǳ��뿪�١�����ĵ�·����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030370a00">
�������𳤡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����С�������š�
����Ϊ�˴ߴ���˵��ȥ������ֹ��˵��ȥ�����Լ�Ҳ����
�жϡ�

���һ�û�гٶ۵�δ����͸���𳤹���Ĩ�ǵĻ������յ�
Ŀ�����ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030380a11">
���з�������ǿ��
�����ҷ��Ƶ���������

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030390a11">
�����������ǲ���ս����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030400a00">
����ȡ�����ֶ��𣿡�


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030410a11">
���ԡ�
��<RUBY text="��������">�����ֶ�</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����С�����Ĺ����ֶΡ�
��������ʾ�ģ�����Ϊ����֮�˾����������Ϊ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mb01/0030420a00">
����������׷�����ˡ�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030430a11">
������<RUBY text="����">����</RUBY>���Ƶ���Ͷ��·֮ʱ
��û��ʱ���ˣ�
���������˼����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��һ������������һ�оͶ����ˡ�����������ִ�л���
�����꣬�������������޷��߸����������˼��
���������ɷ��ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mb01/0030440a00">
��Ŀ���ǡ�����


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030450a11">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030460a00">
���������ǽ�פ����
������ɹ��ɵ���פ�����ԣ����Ϲ��ܲ�ֻҪ
�������εľ����ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030470a00">
��������˵��������פ������ʹ���ǲ�ȡ
�����ж�����Ч���ʵ��䷴��
����ô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����������һ�仰��û��˵��
��Ȼ�������ǵĳ�Ĭ����ǡǡ�ش����޿ɷ��ϵ���ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mb01/0030480a00">
������Ŀ������һ������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030490a10">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030500a00">
����������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030510a10">
�����ǡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030520a00">
������������ܾȴ���𡣡�


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030530a10">
����������������ζ��ȡ��ʤ����
�Ͼ���ʵ�뽫�岻ͬ��
���������ƻᷢ���޴�仯����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030540a00">
��������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030550a11">
��������
����Ӧ��֪������Ļ�����������δ�ͳ�ɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030560a00">
������Ȩ����Ȩ�����룿��


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030570a11">
���ԡ�
������Ļ���ڴ��ȫ������ͳ��Ȩ֮�ʣ�
δ��ȡ�ϳ���ʱͳ���ߣ�����͢���ֶΡ���


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030580a11">
�������������˾ٵ�Ҳ������Ȼ��
������ȥ���й���ԭ��Ȩ��ƽ����Ȩ��������
˭Ҳ��ϣ����ʷ���ݡ�����


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030590a11">
��Ȼ�������ԭ����ƽ�ϵĽ�����͢Ȩ����
Դ������Զ��͢��
������͢�����ھ��������ڶ������ֽ���
�¶�����Ȩ�볯͢���롣��


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030600a11">
��ͨ����ʹ��͢�Ͽ�������Ȩ����ʽ��
ͬʱ�������ϳ�͢Ȩ�������Դ���Ϊ
ͳ�εĴ������֡���
����һ���棬ȴ�ż���͢�������Ρ���


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030610a11">
������<RUBY text="��������">������Ч</RUBY>���ַ�����
������������
�������̵�����ʱ���⣬һֱ
�������񡣡�


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030620a11">
��������Ҳδ������һ��ͳ��
������Ȩ����Ȩ����˫�ع������ڴ��
����ٹ̡�����ǿ�е߸����������Ƽ�
���û������󡭡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030630a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���̿����Ľ�˵��
���������𳤵�Ŀ�ĵ�Ȼ����ģ����ʷ��ʦ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030640a11">
�������ؼ��������
������֮�������Ȩ��Ҫȷ��ͳ������
����õ���͢��֧�֡���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030650a11">
������<RUBY text="����">�Ѿ�</RUBY>ȷ��ͳ�ε�
��Ȩ��˵����͢������ʹ����ϵ����߶��ѡ�
��Ϊ�˽��������������ã�������������
���в����ɡ���


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030660a11">
��������δ<RUBY text="����">ȷ��</RUBY>ͳ�ε�
��Ȩȴ�����������ڿ��г��ߡ�
��������̧������������У��������˶�����
��������֮�¡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030670a00">
������
����������������Լ�����־��
����Ҫ��ʲô�Ļ�������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030680a11">
��û��
����Ϊ��Ҫ��������֮�ˣ��޷���������
�ɣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030690a00">
������Ϊ�ˣ�Ҫȡ����������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030700a11">
���ֽ������޵�ͳ�����ȹ̡�
��������ʹ��ɥʧͳ��֮���㡭����


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030710a11">
��������Ļ���и��ܴ���ص㣬������ͳ
��������������һ����֮�¡�
���������̳��˴����������ӳ��ϴ�����
���軨��ʱ�䡣��


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030720a11">
�����һ����©����Ȼ���ࡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
������ʧȥ�����������ϣ������޵�ͳ����ϵ����
���ѷ졣
�����Ĺ���Ϊ�׵���ϵ������ˮ�棬����ʼ���ֶ���
֮�ơ�

�������������ֶ���̬�Ƴ�����롣
���ӽ���һ��ϵ��<RUBY text="����">ʹ��</RUBY>����
���Ĵ����������ĳ�͢Ȩ����

�����ŷ�����������η���Ȩ��
�������֮�����������ͼ�𡭡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/mb01/0030730a00">
���������ǣȣѻ��Ļ����ʧ��
���ܲ����𣿡�


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030740a10">
����ز��᲻�ܲ��ʡ�
��������������ʹ��̬��չ�����һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����פ������������Ļ�������ľ���ʱ������ʼ���ֹ�
������
����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030750a10">
��ԭ����פ���Ͳ�����Ϊη��Ļ��
������ʵ����
������Ϊ����ռ��󲻼�����񷴿�������
�����������Դ�ʱ�����԰ɣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030760a00">
���ǡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030770a10">
��Ҳ����˵�������а���ǿ���Ļ��������
������ҡ���ǣȣѵ���ս�㽫�ƺ�
����Ϊ�������������Ļ��������Ҳ������
���им�֮�顣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030780a00">
������ԭ����ˡ�
����ָ����ǣȣѻ��������Ҫô��Ļ������
ƽϢ�ٶ�����пᱩ������������ߡ�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030790a11">
�����ǳ��ֶ�����ͻ��������ս�����������
��������̬���ˣ������͹���ֻ��ָ��
������פ����������ú�ƽ�ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030800a00">
���ǣȣѵ�ȻҲ��չ���߶���ʹ����̬�ݱ�
���˰ɡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030810a10">
�������ǽ�������֮ս��
������������ʤ�㡭����


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030820a10">
����ͬ����һ����ȥ��а�������ޡ���ӡ��
��������һ��ͳ��������Ժͻ���Ļ����
����˰����С���ӹ�ģ����

//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030830a10">
������Ļ�������������ܣ�
�ҷ���ʤ�ˡ�
��ȫ�޽�פ����������ء���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030840a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���ҿɲ���Ϊ�������������ô�򵥡�
�������������Ҳ����������һ��Ļ����ϣ��Ÿ�˵��
ʤ�㡣

������������������δ֪������������˼�������ǳ���
�����һ�����δ�����ع�ʧ�������������ֻ������
��һ���ε�ʵ����
����������������������Բ����˵�ġ�

������Ӧ������̬��֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mb01/0030850a00">
���������ǡ�
������н�����������һ����������
��·�𣿡�


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030860a11">
���ͺñȽ𽫵�ǹƥ��
��������ɭ�ϵĵ����𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030870a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���Է��Ǵ�����֮������
���������ںųư�������Ӷ�������ˡ�

�������ֳǵ����ظ�������ʮ���춼��ʮ����ʮ������
�����أ�������ͨ�ù��ɡ���
�����Ҵ��˲���ȥ���������Ϊ���ںͷ�ڵľ���
�������������С�

���������׵ľٶ�����ȡ���׼���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030880a10">
����·�Ѵ򿪡�
����֪�������ڽ��ھ��еķ�ΰݰɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030890a00">
���ǡ���
���������ţ���˵��Դ�ϵ�Ȩ�߲ΰݰ�ᦹ���
Ϊ��л����һ������˲������������˶�����
��̫���׹���ʽ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�����ڲ���������Ŀ��֮�´������еļ�����ʽ����
Ҳ��֪����ô���ˣ���ȻҲδ����Ŀ�ù���
��ƾ��Ҳ�����������ʽ����Ҫ�ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030900a10">
�����ǡ�
�����ң��׹�֮�������ѡ���


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030910a10">
�����µ��ϣ���һ�ѡ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030920a00">
���������£���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030930a10">
����ᦹ��ļ����ж�����
�㲻֪���ɡ�
�������ڱ����󷽵���ε���
������������֮������һ������


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030940a10">
��������߻��ܡ�
��������й����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���������ι�����

�����硢����Ե�������˵�������������
����˵����ˣ��ӹ�ʱ���Ϊ���ڱ���ʱ��Ϊ�ݵ����
�Ǳ��������ã��䱸�˷�����ʩ��

���չⶫ�չ�����һ����õ����ӡ�
����һ��˵���ƣ����������������ǵ����磬����Ϊ��
������;ĩ·�Ƴ�������֮ʱ��Ԥ�������վݵ㡣

����ͬ���չ��ǵ´�һ�ŵ��ػ���һ�㣬��ᦹ�����Դ
�ϵ�������
������Ž�����ĳ�����һ�����ӵ�е��¹��죬����
Ҳ����ʲôֵ�þ��ȵ����顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030950a10">
�������ء�
��Ϊ���¼���ʱ���������Դ�ϳ���
����ͬ��ٽ��С���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030960a00">
�������⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��δ��Ҳ̫��ʱ�����˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0030970a10">
�������԰��̫�������ΪԴ�ϳ�������ִ��
������ķ��ʽ�����Ĵ�ͳ��
����˵�������ʣ�˵��ͱ�Ҳ�ǲ����ܵġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0030980a00">
��������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0030990a11">
����֪������˵ʲô��
������˵��ô���Եľ��û��ᣬ�Է���ô����
���ϼӾ��䣬�԰ɡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031000a00">
���ҵ����������뷨������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031010a11">
����Ȼ���������䡣
������ΪֹҲ���й����������ֻ����
���Ǻ��޷�������


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031020a11">
��ԭ����ᦹ��ھͲ����ܱ�һ��ֱ����������
�ɵľ���������ʽ����ʱ�䱸ɭ�ϣ���˵����
֮�ˣ���һֻè��Ҳ����ȥ��
���Ҵ��챾��Ҳ���ٲ���������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031030a10">
������ʽ֮ǰ��Ȼ�᳹�����Ľǽ����䣬
�����ɴ̿�Ǳ��Ҳ�в�ͨ��
�������ܹ�������ɻ���أ�
�ܹ�������߻��ϵ�Ҳֻ�����ߡ���


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031040a10">
������û���������޵жԵ����ߣ�
��˽�����ǲ����С�
��������Ȼ��������ֹۡ�����������
������ʵ�������ַ��������С���


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031050a10">
���ɴ̿ͺܼ򵥡�ֻҪ��װ��
��ͬ��ٱ�ɡ�
�����ߣ��Ը����߻��ϡ���<RUBY text="��������">ͬΪ����</RUBY>����
������ܡ������ܴ��ڵģ���ᦹ����ߡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031060a00">
������������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031070a11">
���³�֮�󣬿ɴӵ��¼������ѣ�
һ�����������⡣
��ֻҪ���䲻�������п�����������


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031080a11">
��������ֻ���ҵ��������塭��
�����У���֪�����Ϯ����װ�����ᡢ
���Բ��ѵ�<RUBY text="������">������</RUBY>��ͬ��١���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031090a10">
��ʣ�µ�����ֻ�С���
����װ����ͬ�����ν�����
���˶�Ŀ�ش�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031100a00">
��������ô��֮������顭����


//��������
<voice name="����" class="����" src="voice/mb01/0031110a00">
��������η��Σ������������ڰ�ᦹ�������
���ɵ�ìͷ���Ⱦͻ�ָ�򹬵�������
���ֻ��⵽���������׵ı�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
���Դ������˵��������͢��һ�����
�����޷����½��ۡ�����Ҳ���ܶ��������޲�������
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031120a10">
�����赣�ġ�
�������޻�Ϊ����׼�����ڳ�֤���ġ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031130a00">
����������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031140a11">
������̿��ǹ������ɳ��ģ�������
Ҳ�߱����Ա�����������
�����ǣ����������������ˣ�
Ļ��Ҳ�䲻���κκô�����


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031150a11">
����þ������÷�����δȻ�Ĵ�ʩ��
���������ڷ�ΰ��ڼ�Ὣ������ЮΪ
���ʡ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031160a00">
�����ʣ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031170a10">
���ڷ�ΰݵ��죬�����ᱻ�����������֡�
���ԽӴ�������͢�����ķ��ʹ�����塣��


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031180a00">
��������Ϊ��ᦹ��𵱵Ĺ����ºͷ��ʹ��
���μӼ����𣿡�


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031190a10">
��û��
�������ɴ����˳�ϯ����


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031200a10">
���ұ���ͷ��ʹ����һͬ�������ֳ�Ʒ�裬
ֱ���ΰݽ�����
����Χ������Χ��ˮй��ͨ������


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031210a10">
�����ǵ�������˵��
���������С���Դ�������
��ŶŶ��̫�����ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031220a00">
��������������
�������ǡ���Ҳ����˵������


//��������
<voice name="����" class="����" src="voice/mb01/0031230a00">
�����Ǹ㰵ɱ������̱�Ὣ������
�����������վ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
����Ȼ��ȷ�ܹ��𵽲��ڳ�֤����Ч������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031240a10">
���ǵ���һ������
����������ε�����֮������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031250a11">
�����커�Ͻ���ʱ��������
�������������������в�ͬ��
����Ϊʧȥ���ϣ��ض���ζ��������
Ȩ�ܵĶ�ҡ����


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031260a11">
�������ȷ���֤���ܹ�֤����ɱ���ᦹ���
�����������ۣ�������
��������û��֤�ݵ�����¶Թ����½�������
���о�����ػ���䶯ҡ���������Եļ��١���


//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031270a11">
�����������鶼���ǲ������ˣ��ڻ������ʺ�
������Ȩ���Ĺ�������û�еġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
��������������
��������Ϊǣ����������Σ�վٶ�������ЮΪ���ʡ�
Ȼ�������������渶���ж���ȴ���޷�����
���á�������ô������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/mb01/0031280a00">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031290a00">
���˷�������ʵ�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031300a10">
��ֱ���޷���
������������ºܻ��ưɣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031310a00">
�������ǡ�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031320a10">
����ȷ�ܻ��ơ�
������������������û�в����
���ֻ��Ʋ�������


//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031330a10">
������������������
��������Ϊ�������ִ���������ʲô
����֮�٣����ڷ�����������⡭����


{	FwC("cg/fw/fw�H��_Ц��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031340a10">
���Ǻǡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031350a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
����������ˡ�
�����������ֲ�������޵ġ������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031360a11">
����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031370a00">
��ûʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
������ͻȻ��һ�ֿ����޵�֮�ӵĸо���
���Ҳ�ȥ����ð���ı�����

�����ε����磬�ѳ����ҵ���ⷶΧ��
�����������ټ���׷����ȥ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031380a10">
������µ�˵�˰��졣
�������������룬�ղ���˵��
��Ӧ�ö�����ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031390a00">
�������ǡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031400a10">
�����Ǿ���֮ʱ�ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031410a00">
��������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031420a10">
��Ϊ�˸ı�����ʷ�ĺ���������������
֮ʱ�����ˡ���������
��ֻ�����ڡ������ڲ��ж���������ʱ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb01/0031430a00">
������������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031440a11">
��������������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031450a10">
����ľ����ء�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
��һֱ��������ȥ˼�������⡣
�������Ѿ����˱���ȥ��Ե�ʱ���ˡ�

��<RUBY text="����������">��˭��ʵ��</RUBY>��

������������������
���������˾���ҧ���гݡ�

������ı��ͬı�⣬�ܹ����佫�ƻ�ȫ���г��ߣ�Ψ��
ʵ�з����ѡ�
�������������ˣ�Ҳ�����ܻ��Ȩı������������ѯ��
�����˵������

�����������ʵĲ����ҵ������
�������ҵ�����

������ɱ���ǲ�ɱ�������ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//��������
<voice name="����" class="����" src="voice/mb01/0031460a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
���ҷ���ϥ�ϵ��֣�΢΢����������
�����Ǳ������������Ҷ�ô�����ƣ��������á�

��ֻҪ����ɱ�˵��뷨���Ҿ��޷�ֹͣ������

������������⡣
��Ҳ�ܹ���ͬ��

��Ԫ˧��֮������������ʷ��ת�۵㡣
�����������Գɹ���Ȩ����ػὫ��͵������õ�δ
������

����һ���棬����ֻ�������Թ���̬��չ�Ļ�����
�����ǣǣȣѵ�����ȫռ���ͣ����������޳ɹ�����
�ǣȣѶ�ʹ����ר��ͳ�μ�����ʯ��

�����߶�������������������ͼ��

������������Ϊʲô��˵������ʱ����
���ǿ��¡����ǶԵġ�

  ����Դ�͹���<RUBY text="��������">����Ҹ�</RUBY>��Ϊ����
�������϶��ǶԵġ�
�����ܹ���ͬ��

������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/mb01/0031470a00">
��Ҫɱ�𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
���������Ǻ��ް���ϵ��
������<RUBY text="��������������">���������ļ�ֵ</RUBY>��

�����Զ���ĳ���˵����������ô���
���̶�ɱ֮��

���������һ�Ҫ��ɱһ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//�����m��
<voice name="���m" class="���m" src="voice/mb01/0031480a10">
��������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb01/0031490a11">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
���Һ����ǲ�����Ҫ������
�����������Ϊ������֪����ȥִ����ζ��ʲô��

������Ϊ������֮������
��ն��֮�󣬷���ն�ѡ�

����ɱ�����ϣ��������ɱһ�ˡ�
��ɱ˭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearFadeAll(200, true);


}

..//��Ӣ�۾����ȡ���׉�����Ǥι��Х��ꥢ���������ޤ�
..//������ָ��
