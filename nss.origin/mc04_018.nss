//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_018.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mc04_018.nss","RandomMeimetsu_mc04_018",true);
	Conquest("nss/mc04_018.nss","RandomMeimetsuSet_mc04_018",true);
	

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
	#bg044_�о�ʩ�O��_01b=true;
	#ev189_�y�ǺŤγɤ�ι���_a=true;
	#ev189_�y�ǺŤγɤ�ι���_b=true;
	#ev189_�y�ǺŤγɤ�ι���_c=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_019.nss";

}

scene mc04_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_017vsaa.nss"


//�����¤�
//�����ĩ`�󤫤ĩ`���A���¤��
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 15000, "BLACK");
	CreateSE("����", "se����_����_�i��_����_L");
	MusicStart("����", 2000, 1000, 0, 800, null,true);

	Delete("�ϱ���");

	Wait(3000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��¥�ݱ��������Ҫ����

������¥�ݺ�ƽ������ʱ�����Ϊˮƽ��ͨ����
����Ȼ�����˺ܳ�ʱ�䣬����Ӧ�ò�û�н������̫��
�ĵط���

�������˴����������ǲ����뿪�˵���լۡ�ķ�Χ����
�������ҵ����ʣ�˵����ֻ��<RUBY text="������">����Ȧ</RUBY>��
�������Ҹ㲻������������ͼ��

�����˼�����֮��������������һ�����Ƿ���ĵط���


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������о�ʩ�O�����΍u���о����}�����á�
	CreateTextureSP("�}����10", 12, Center, Middle, "cg/bg/bg044_�о�ʩ�O��_01b.jpg");
	Fade("�\Ļ��",1000,0,null,false);
	SetVolume("����", 1000, 0, null);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc04/0180010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������û�й�Դ��
����Ȼ����Ӧ���е�ƣ��������ֺڰ��ĵط������ҳ�
���ء�

����֮���ҿ��˿���Χ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mc04/0180020a01">
��������������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180030a00">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��<RUBY text="����">�ڴ�</RUBY>��

���Ҳ�û���ںڰ��п���ʲô��
��������֪�������������Ƥ���ĸо������������
�ֵ�������ʵ��

�����Ǻž������

�������ұ���Ҫ����δ�����ǵ��ж���
����Ȼ���Ǻ��ڸ���������Ҳ�ͱ�Ȼ���ͻ���
<RUBY text="������">���Գ�</RUBY>��

���������צ���ۺ�ʱϮ���������������������š�
��
�������Լ��侲��������̤����һ����

���ұ��뼫��С�ĵ�̽������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����ʤ�
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180040a07">
����Ҫ���ġ�
���㲻����ô����Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������á�
//���ۥ磻�ȥ�����
	OnSE("se�ճ�_����_�������",1000);
	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",100,1000,null,true);

	CreateTextureSP("�}����10", 12, Center, Middle, "cg/bg/bg044_�о�ʩ�O��_01a.jpg");

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/0180050a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("EV1", 1550, Center, Middle, "cg/ev/resize/ev189_�y�ǺŤγɤ�ι���_am.jpg");
	Request("EV*", Smoothing);
	SetBlur("EV1", true, 3, 500, 60, false);
	Zoom("EV1", 0, 750, 750, null, true);

	Fade("�ե�å����",10000,800,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����������촫��������ͬʱ��
���׹�������ǰը����

�����������������������Ҳ����ǿ��
�������ҵ��۾��Ѿ�ϰ���˺ڰ��������޷�Ӧ������ͻ
Ȼ�ı仯������ʱ��ʧ���ˡ�

���ҵ����������ָ���
�������ҵ�״�����������ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣͣ�����ħ����
//�������ҡ���פ���Դ������������˹�������
//���������奢�åס��ͤ����ä��y������

	Fade("�ե�å����",3000,0,null,false);

	Wait(2700);

	Zoom("EV*", 300, 1000, 1000, Dxl2, false);

	SoundPlay("@mbgm02",0,1000,true);

	SetFwL("cg/fw/fw����_�@��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc04/0180060a00">
������������


{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0180070a01">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��ʲô��
������ʲô��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101a]
��
��������������������Ť���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101b]
���Ҳ��ϵ����ֶ�����
�������ܴ������ֶ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101c]
��
������������������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101d]
�����ֶ��������ܴ�������ʵ֮�С�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101e]
��
����������������������֣�
����������������������������֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101f]
�������ܴ��ڡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101g]
��
����������������������飬
����������������������������е��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101h]
����������ڵ����塣
�����ǲ�Ӧ�ô��ڵ����塣

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101i]
��
����������������������Ŀ�״�
�����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101j]
������ʲô�ء�
�����ǡ�������ʲô�ء�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180080a07">
�������ţ���˵��<RUBY text="����������������">ǰ������</RUBY>��
�����˶���޴���<RUBY text="�ã���">����</RUBY>�����˺�������Ķ�����
��ʵ���������ɡ���


</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩�衣ƽ��
	FadeDelete("EV*", 2000, true);

	StR(1100,@0,@30,"cg/st/st�衩��_ͨ��_˽��.png");
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��һ����Ů����<RUBY text="����">�Ǹ�</RUBY>�����ˡ�
����֪Ϊʲô���������ɡ�

�����������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180090a07">
�����ǰͱ�������


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180100a07">
�������Ϊ����³�����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180110a07">
�������Ѿ�ʲô��û���ˡ�
����Ϊ�Ѿ������ˣ�����ʲô��û�С���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180120a07">
���񲻻ή�١�
�������޳�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180130a07">
��������ʲô�����ء�
�����������������𡣡�


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180140a07">
����Ȼ���ǰ��ɡ�
����ϸ���룬ֻҪ�а����������ϵĸ�������
���ܺ�����ؽ���ɡ���


//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180150a07">
����硣
���ҹ�Ȼ���÷��㲻�ܰ�����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180160a07">
����Ӧ�ð���ץס�İ���
��������Ϊʲôû����ô���ء��������˵Ļ�
Ӧ�û���úܿ��İ�����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180170a07">
���԰ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����Ů�ֿ�˫�֡�����������Ц��
������������Ц�����ƺ������������ڻ��죬��������
���ڵĿն��л��졣

��û�й�ͷû�зθ�û�����࣬�ն�����Ů��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180180a07">
��������Ǹ�������ұ�Թ��
��������߲�����Ҫ�ҵġ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180190a00">
����������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180200a07">
����Ҫ̸��˵������Ҫ����
������ϲ������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180210a00">
��������������


{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180220a07">
������
���㻹û�з����𡣡�


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180230a07">
������˵�����ڴ���ʵ��ǰȫ����ս���Գ��ˣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180240a00">
��������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180250a07">
����硣
������Ŷ��Ҫ��ϸ������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180260a07">
����Ϊ��������ˡ�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0180270a01">
����������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180280a07">
�����ǣ�
��<RUBY text="��������">�������</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֥������档ͫ�Τ褦��ģ�����F���

	CreateTextureEX("�}��", 1600, Center, Middle, "cg/ev/ev189_�y�ǺŤγɤ�ι���_a.jpg");
	Fade("�}��", 1000, 1000, null, true);

	CreateSE("SE01","se���L_����_Ͷ�S�c��");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateTextureSP("EV1", 1550, Center, Middle, "cg/ev/ev189_�y�ǺŤγɤ�ι���_b.jpg");
	FadeDelete("�}��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��
����������������������
�������������������������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc04/0180290a00">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��
����������������������ʶ��
����������������������ʶ�ģ��۾���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mc04/0180300a00">
������������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��
��������������������Ц�š�
����������������������ܿ��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mc04/0180310a00">
����������������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��
�����������������ܼ�����
�������������������Ժܿ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mc04/0180320a00">
������������������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��
������������΢Ц�š�
������������΢Ц�ţ���������ҵ����֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mc04/0180330a00">
����������������������������������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣹��Q���ݤ��Ρ�
	CreateSE("���`��","se����_냇��_���f����");
	MusicStart("���`��",0,800,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��
������������������������<k>
������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�󡣹��Q���ݤ��Ρ�
//��ͫ���޴�
	MusicStart("���`��",0,1000,0,1000,null,true);

	CreateTextureSP("EV2", 1600, Center, Middle, "cg/ev/ev189_�y�ǺŤγɤ�ι���_c.jpg");
	CreateTextureEXadd("�}�֥�`��", 2000, Center, Middle, "cg/ev/ev189_�y�ǺŤγɤ�ι���_c.jpg");
	Zoom("�}�֥�`��", 0, 1500, 1500, Dxl1, true);
	Zoom("�}�֥�`��", 1500, 2000, 2000, Dxl1, false);
	Request("�}�֥�`��", Smoothing);
	Fade("�}ɫ��", 0, 1500, null, true);
	Fade("�}�֥�`��", 0, 1500, null, false);
	Shake("�}�֥�`��", 1500, 50, 50, 0, 0, 1000, Axl2, false);
	SetBlur("�}�֥�`��", 8, true, 400, 200);
	FadeDelete("�}�֥�`��", 1500, false);

	FadeDelete("EV1", 0, true);

	SetFwC("cg/fw/fw����_�ֲ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/mc04/0180340a00">
����������������������������������������
����������������������������������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ˡ����åפ��������ȫ����
	FadeDelete("EV2", 1000, true);
	SetVolume("���`��", 1000, 0, null);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/mc04/0180350a01">
������ĸ������

//��������
<voice name="����" class="��������" src="voice/mc04/0180360a01">
��ĸ�״��ˡ���

//��������
<voice name="����" class="��������" src="voice/mc04/0180370a01">
��ĸ�״��ˡ���


{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180380a00">
�������������ذ���������������������������


//��������
<voice name="����" class="����" src="voice/mc04/0180390a00">
���⡢�⡪���⡪����


//��������
<voice name="����" class="����" src="voice/mc04/0180400a00">
���⣡��


{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180410a00">
���⣡��


//��������
<voice name="����" class="����" src="voice/mc04/0180420a00">
���⡪���⣡����!!��


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180430a07">
������û�дﵽ�ء���


{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180440a07">
��������������Ҫ���ɵ��������ƻ�������
��Ҫ�γ���ȫ�ġ��ڶ�����
������û�дﵽ���̶ֳȰ�����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180450a07">
����ʲô�����ء�
����Ȼ�ǰ��ɡ��ǰ��ɡ��š���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180460a00">
��������������������


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180470a07">
����ô��
���ǣ��͵���Ϊֹ�ɡ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180480a07">
�����Ҫ����Ŷ��
����Ȼ��ֻ���ҵĲ²⣬��������������
����û������°ɣ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180490a00">
����������������


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180500a07">
����������ᱻ������ġ�
��ι����������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0180510a01">
������������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180520a07">
��������Щ����
����Ӧ�������Ǹ���֮�ģ��ڲ�����
���侲��ʱ��֧�����ɣ�
��Ҳ�ǽ��еĹ���������


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180530a07">
������ק������ȥ����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0180540a01">
����������
���㡢����ô�죿��


{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180550a07">
������Ұ�������ĹŶ���
������ߵ������������˽ᡣ��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0180560a01">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0180570a01">
���㡭����


{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180580a07">
�������ˡ�
�����ߡ���


{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180590a07">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͬ��؞�������w

	OnSE("se����_�z_װ��03",1000);
	CreateColorSPadd("�}�ե�", 15000, "#FFFFFF");
	StL(1000,@0,@100,"cg/st/3dͬ��؞�w_����.png");
	FadeStL(300,true);
	WaitKey(1000);
	FadeDelete("�}�ե�", 2000, true);

	SetFwC("cg/fw/fw�衩��_����.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180600a07">
�����û�����˵�����Ҳʧȥ��Ȥ�˰ɡ�
��һ�����𣿡�


{	FwC("cg/fw/fwͬ��؞�w_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180610b39">
������������


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180620a07">
��������������
���˴������֮��������Ҫ������һ�¡���


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180630a07">
����Ȼ�޷�������ȫ���յ���
��������ϣ���ܰ����յûҷ����𡣡�



{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc04/0180640a07">
���ϰɣ�ͬ���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����x����F�˴�تz
//���I��
//inc�ñ����F�˴�تz�Ǥ������F״��CG���o�����ၢ���ݳ����ʤ��ʤ뤫��֪��ʤ��ݳ��ʤΤǥ����ߥ��{���Ϥ��Ƥ��ޤ���
	CreateSE("SEL00","se����_��x_��F�˴�تz�ʂ�_L");
	MusicStart("SEL00",0,1000,0,1000,null,true);

	CreateTextureEX("EF1", 1500, Center, Middle, "cg/ef/ef021_������x�k��a.jpg");
	CreateTextureEX("EF2", 1400, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
	Fade("EF1",500,1000,Dxl3,true);
	Fade("EF2",0,1000,Dxl3,true);

	Delete("�}����10");
	DeleteStA(0, true);

	Fade("EF1",1000,500,Axl3,true);
	Fade("EF1",900,1000,Dxl3,true);
	Fade("EF1",1500,700,Dxl3,true);
	Fade("EF1",1000,500,Axl3,true);
	Fade("EF1",900,1000,Dxl3,true);


	DrawDelete("EF1", 300, 100, "circle_09_00_1", true);

	WaitKey(500);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",1500,1000,null,true);

	CreateTextureSP("EF2", 1500, Center, Middle, "cg/ef/ef046_��a.jpg");
	CreateTextureSPadd("�}�֥�`��", 2000, Center, Middle, "cg/ef/resize/ef028_���û��׷���l.jpg");
	SetBlur("�}�֥�`��", 3, true, 400, 200);

	SetVolume("SEL00", 300, 0, null);

	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se���L_����_���׷���");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeDelete("�ե�å����",100,true);

	Request("�}�֥�`��", Smoothing);
	SetVertex("�}�֥�`��", center, 820);
	Zoom("�}�֥�`��", 1500, 1100, 2000, Dxl1, false);
	Shake("�}�֥�`��", 1500, 2, 50, 0, 0, 1000, Axl2, false);

	Wait(1000);

	Fade("�}�֥�`��", 500, 0, null, false);

	FadeDelete("�}�֥�`��", 1500, true);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	Delete("�}����11");

	CreateTextureEXadd("�}�݄�����", 2010, -910, -50, "cg/ef/resize/ef028_���û��׷���l.jpg");
	Fade("�}�݄�����", 0, 200, null, true);
	DrawEffect("�}�݄�����", 0, "HighWave", 10, 10, null);
	MoveFFP1("@�}�݄�����",10000);

	RandomMeimetsu();

	CreateProcess("�ץ�����", 150, 0, 0, "fire01");
	CreateProcess("�ץ�����", 150, 0, 0, "fire02");
	CreateProcess("�ץ�����", 150, 0, 0, "fire03");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	CreateSE("SEL01","se����_����_��������_L");
	MusicStart("SEL01",0,1000,0,1400,null,true);

	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg044_�о�ʩ�O��_01a.jpg");

	CreatePlainEX("�}��д", 1100);
	Fade("�}��д", 0, 500, null, true);
	MoveFRP1("@�}��д",1000,1,10);
	DrawEffect("�}��д", 0, "HighWave", 20, 20, null);

	CreateColorEX("�}���\��", 900, "#000000");
	Fade("�}���\��", 0, 800, null, true);
	DrawTransition("�}���\��", 0, 0, 200, 1000, null, "cg/data/circle_13_00_1.png", true);

	CreateTextureEXadd("��ǰ���`", 1100, -480, 50, "cg/ef/resize/ef028_���û��׷���l.jpg");
	Zoom("��ǰ���`", 0, 1100, 1100, null, true);
	Fade("��ǰ���`", 0, 300, null, false);
	DrawTransition("��ǰ���`", 0, 0, 180, 1000, null, "cg/data/circle_13_00_0.png", true);
	DrawEffect("��ǰ���`", 0, "HighWave", 20, 20, null);

	Delete("EF2");
	Delete("EF1");
	DrawDelete("�\Ļ��", 300, 1000, "slide_01_02_1", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="��������" src="voice/mc04/0180650a01">
����������!?��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0180660a01">
���������������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180670a00">
��������������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0180680a01">
����֪�����޷��ָ�������
����Ҳ������ǿ����ȥ��������


//��������
<voice name="����" class="��������" src="voice/mc04/0180690a01">
�����ǣ������ж�������
��Ҫʹ��Ҫ���֮����˵����


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0180700a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0180710a01">
�����ܰɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���𤬤ܩ`��
	CreateSE("SE02","se���L_�Ɖ�_���k05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureEX("�}�݄����׸�", 2010, -910, -50, "cg/ef/resize/ef028_���û��׷���l.jpg");
	DrawEffect("�}�݄����׸�", 0, "HighWave", 10, 10, null);
	MoveFFP2("@�}�݄����׸�",10000);

	Fade("�}�݄�����", 2000, 1000, null, true);

	Wait(1000);

	ClearWaitAll(2000, 2000);
}

..//������ָ��
//�Υե����롡"mc04_019.nss"

..����������
function RandomMeimetsu_mc04_018()
{
	CreateProcess("�Х���������", 5000, 0, 0, "RandomMeimetsuSet_mc04_018");
	SetAlias("�Х���������","�Х���������");
	Request("�Х���������", Start);
}

function RandomMeimetsuSet_mc04_018()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@�}�݄�����", $RFTS, 400, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 1000);
	$RFade = Random(4)+2;
	$RF = ($RFade * 50)+600;

	Fade("@�}�݄�����", $RFTS2, $RF, null, true);

	$RWaitSet2 = Random(10) + 10;
	$RWS2 = ($RWaitSet2 * 10) +600;

	Wait($RWS2);

	}

}