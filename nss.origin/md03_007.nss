//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_007.nss_MAIN
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
	#bg057_���ӘS������_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_008.nss";

}

scene md03_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md03_006.nss"


//�����¡���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg057_���ӘS������_01.jpg");
	FadeBG(0, true);


	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ںķ���������Сʱ�����ڽ����ˡ�

�����ų���������������һ��ִ�ڵص㡣
�������ı������һ�˸��档������Ļ�Ÿ��Խ�
��ָʾ���Ѿ��뿪�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md03/0070010a00">
��������������Ȼ����ô˵�ˣ�
����ʵ�ҿɲ�֪���Լ��ܲ��ܴ��й���ְ�񡣡�

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070020a07">
��û�µģ���翴������Ӧ�Ժܺá�
����Ҳ�ᾡ������ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070030a00">
����ȥ�S����ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������˵��ȥ�ι�ʲô������
��������֪�����ܰ�����ȥ��⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070040a07">
�������Ŀǰ��ʨ�Ӻ����½��б��Ƶ�������
�ľ�ս��������
����΢����<RUBY text="����">�ֽ�</RUBY>����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070050a00">
��Ŷ����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070060a07">
������˵������

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070070a00">
���ȵȡ���

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070080a07">
��������

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070090a00">
���������ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070100a07">
���ţ�
����������Ŷ����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070110a07">
�����������Ǽһ
����<RUBY text="����">����</RUBY>���ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070120a00">
������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����霔�

	StL(1000, @0, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	FadeStL(500, true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���Ǹ���ò�������������������������ˡ�
����ϥ��ز�����ص���ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070130b37">
��ܥԽ�н����ˡ�
������ϲӭ���Ĺ�������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070140a07">
���š�
����Ҫ�鷳���ˡ���

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070150b37">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070160a00">
��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070170a07">
�������ý���һ�¡�
����һ�����������ի����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070180a07">
����˵���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");

	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, 100, -144, "cg/bg/bg057_���ӘS������_01.jpg");
	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Zoom("�}�ݷ���/�}�ݱ���", 0, 2000, 2000, null, true);
	SetShade("�}�ݷ���/�}�ݱ���", HEAVY);

	CreateTextureEX("�}�ݷ���/�}���}", 16200, -200, -450, "cg/st/resize/st��霔�_ͨ��_˽��l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);


	Move("�}�ݷ���/�}�ݱ���", 2000, @0, @100, AxlDxl, false);
	Move("�}�ݷ���/�}���}", 2000, @0, @300, AxlDxl, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);

	Wait(1500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ô����û��˵����
  �������Ǵ�ʹ���֮�����˲����ġ�

�����Ĵ�����ִ��֮���и��Ƕ������ꡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw�����AȾ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md03/0070190a00">
����������������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070200a07">
��û��û��
�������Ǿ��ڵ�����<RUBY text="�£ϣӣ�">����</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ڣ���ͳ˵�����������ҵĽ����ӡ�
��������Ļ����Ȼȫ�嶼����һ���򣬵�һ����Ϊ
���ڵ�˽�˾������ʸ�ŨһЩ��

����˵���Ǵ����Ÿ��ּ������˵Ĺ�����
�����Ǿ��ڵ�ָ�ӹ١����������ƶ��ϵĵ�λ���ߣ�
Ǳ�ڵ�Ӱ����Ҳ��Ӧ�൱ǿ��

����Ȼ��ʱ�������������֣��Ͳ�����������

���뵽������Ҫ���ڣ�ȴ���Է�����һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070210b37">
����������������ի��
���ն��������ˡ���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070220b37">
�������е������ܼ���һ�档��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070230a00">
�����������£���

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070240b37">
���ǡ�
���Ҷ������ж��š���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070250a07">
����Ϊ����ڵط��Ͽ��������ء���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070260a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����Щ�ط���
���ܾ��á�����̸֮�°����ܶ����ǳ����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ100", 500, false);
	FadeDelete("�}�ݷ���*", 500, true);
	Delete("�}�ݷ���*");

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070270a07">
�����ý��ܱ�����ء���

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070280b37">
����Ȼ��ˣ����¡�
��������������ܡ���

//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070290b37">
���뽫�ն�����Ҳ�������յļ���������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070300a07">
�����գ���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070310b37">
���ǡ�
��������Ϊ������¶����ġ���

//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070320b37">
�������ں�ɳ�Ļ��ȡ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070330a07">
����ô��æ����
��������ȷ�Ǹ��û��ᡣ��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070340a07">
����磬����������������΢ռ��һ��
���ʱ���𣿡�

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070350a00">
��ȥ�Ķ�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070360a07">
��������
��һȺ��Ȥ���ĵ���Ҫ���ᡣ��

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070370a00">
����ȥ����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070380a07">
�������������йء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070390a00">
��������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070400a07">
����Щ�������������
���Է�Ҳ����㡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070410a00">
�������Ǳ�����𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070420a07">
���š�����ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070430a00">
���Ǿ�û�취�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�������ǹ�ϵ����ı�Ҫ֮�£��Ǿ�û��ѡ�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070440a07">
��̫���ˡ�
��������ȥ�������ǰɣ���������˵
�һ������ȥ����

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070450b37">
��֪���ˡ�
����ô���Ҿʹ˸�ǡ�����

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0070460b37">
�������������ڵ�������

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070470a07">
��Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ȥ��
//�������_��У

	DeleteStL(500,true);

	WaitKey(500);

	OnSE("se����_����_�ߤ�02", 1000);

	StL(1000, @0, @0, "cg/st/st�����_��У_ͨ��_�Ʒ�.png");
	FadeStL(500, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���뾲����ȥ����������ի��������������һλ��У
�����������ǰ��
���ҶԴ��˺���ӡ��

�������ľ��±���������ܥԽ��������
���ƺ��ǲ��������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@OnSE*", 1000, 0, null);


	SetNwC("cg/fw/nwܥԽ܊��У.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������㣯��ʹ��
<voice name="����㣯��ʹ" class="����������" src="voice/md03/0070480e047">
�����£���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070490a07">
����ô�ˣ�
������ô�⻬�������ܻ�ˤ���ġ���

{	NwC("cg/fw/nwܥԽ܊��У.png");}
//������㣯��ʹ��
<voice name="����㣯��ʹ" class="����������" src="voice/md03/0070500e047">
���м�����
������ܥԽ�ݡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070510a07">
��������
�����������ǣ���

{	NwC("cg/fw/nwܥԽ܊��У.png");}
//������㣯��ʹ��
<voice name="����㣯��ʹ" class="����������" src="voice/md03/0070520e047">
���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����У����˾�ݳ�����ͨ���ĵ��ż���
�������ӹ��򿪣����ٵ�����š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070530a07">
������������

//��ꓤ�������
{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070540a07">
��������������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070550a00">
����������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070560a07">
����֪���ˡ�
������������ˡ���

{	NwC("cg/fw/nwܥԽ܊��У.png");}
//������㣯��ʹ��
<voice name="����㣯��ʹ" class="����������" src="voice/md03/0070570e047">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Уȥ��

	DeleteStL(300,false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md03/0070580a00">
����������ʲô���ˣ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070590a07">
������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070600a07">
���������������ˡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0070610a00">
������������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0070620a07">
���쵰����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������ꡣ��������

	OnSE("se�ճ�_��_���򝢤�01", 1000);
	WaitKey(1000);

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md03_008.nss"