//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_035.nss_MAIN
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
	#bg003_�Ĥ�Ұ_02=true;
	#bg004_�ɤӤ���a_02=true;
	#bg002_��a_02=true;
	#ev266_�����������Ц��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_036.nss";

}

scene md06_035.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_034b.nss"

//���դ��ء�Ϧ
//������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 15000, "BLACK");
	OnBG(100, "bg003_�Ĥ�Ұ_02.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	FadeDelete("�\", 1500, true);

	Wait(1000);

	CreateSE("SE01b","se����_������_�������g�仯01");
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");

	MusicStart("SE01b",0,1000,0,700,null,false);
	Fade("�}�ե�", 600, 1000, null, true);

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);

	WaitKey(500);

	FadeDelete("�}�ե�", 1000, true);
	SetVolume("SE*", 1000, 0, null);

	SoundPlay("@mbgm05", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������ΪϺ�ĵ���̬����������ǰ��
���������������˫�ۣ��������ҡ�

��Ӧ��ȫ���������˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md06/0350010a01">
������������
���Ǹ����˱���������ɱ������Ȼ��
��ɱ���ҡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0350020a01">
�������ƶ���ֵ���Լ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350030a00">
���ƺ��ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0350040a01">
�����������Ҳ���������ˡ�����

//��������
<voice name="����" class="��������" src="voice/md06/0350050a01">
����Ϊ���Ҿ���Ҫ���Ҳ��ڣ�
��Ϳ�����ȴս������ȥ�Ļ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350060a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0350070a01">
����ġ���Ҫս���𣿡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0350080a01">
����Ҫ����ս���𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0350090a01">
���������Ϊ����Ҳ�����𣿡�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350100a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ͷ��
���Ѿ���û�а����ԥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md06/0350110a00">
���ҡ���
��Ҫͳ���������һ����������

//��������
<voice name="����" class="����" src="voice/md06/0350120a00">
�����ڶ��塣
����һ�������󣬲�����˭�����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350130a00">
����Ҫʤ�����ˣ�������ҵ�������
��ֻ�ǣ�Ҫ������Ӧ�Ĵ��ۡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350140a00">
�������Ǹ����Լ���
��������ϧ֮�ˡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350150a00">
������Ӧ���ػ��Ķ�����
����Ҳ�ã�����Ҳ�ա���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350160a00">
��ͳͳ���ߣ���Ϊ����ɱ�еĴ��ۡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0350170a01">
������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350180a00">
���ƶ���֡�
����Ҫ������������һ���ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350190a00">
��˭���������⣬�������ǲ�������
ս�������࡭��
��ֱ��������ս������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350200a00">
��ֱ����������ս������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0350210a01">
����������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350220a00">
��������
������ʲô���㣿��

//��������
<voice name="����" class="����" src="voice/md06/0350230a00">
��Ը������һ������ȥ�𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0350240a01">
������������������������������������

//��������
<voice name="����" class="��������" src="voice/md06/0350250a01">
���ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣�\�����̨�~�Τ�
	CreateSE("SE01","se�M��_����_�ե�å���Хå�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 600, 1000, null, true);

	CreateColorSP("�\", 15000, "BLACK");

	Fade("�}ɫ��", 300, 0, null, true);

	SetFwC("cg/fw/fw�ұ�äĿ_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md06/0350260b43">
���۷���ȥ�����塣��

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md06/0350270b43">
���Ҳ�������ʲô���塣
�����ڡ����Ҳ���������

{	FwC("cg/fw/fw�ұ�äĿ_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md06/0350280b43">
�����۷ɵ���������ȡ����ʲô���Ҳ���
֪������

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md06/0350290b43">
�����ǣ����㡭�����������壬�������á�
��<RUBY text="����">����</RUBY>����

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/md06/0350300b43">
����Ϊ����Ϊ�������۷ɵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("�}ɫ��", 300, 1000, null, true);

	Delete("�\");

	FadeDelete("�}ɫ��", 300, true);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md06/0350310a01">
�����ǽ��ƶ���ֵ���Լ��������֮�ϵĴ�����
����ƾ��Ĳٿ�ʤ��һ�еĽ��С���

//��������
<voice name="����" class="��������" src="voice/md06/0350320a01">
��ֻҪ������ҵ��������ض��������𡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0350330a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������������
����������ȥ��

���������д����ᶨ��������

���໥���գ��˴����ġ�

���������յ����ԡ�
��
���г�һ�գ�Ŀ�Ĵ��֮�̡���

�����ǻ��׳����ۡ�

������������Ϊ���ӵġ���
���˴ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//���m��������bg004_Ϧ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ", 25000, "#000000");
	OnBG(100, "bg004_�ɤӤ���a_02.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");
	DrawDelete("�\Ļ", 1000, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm14",0,1000,true);

	StCR(1000, @-60, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	StR(1010, @90, @4,"cg/st/st����_ͨ��_˽��.png");
	Request("@StR*", Smoothing);
	Rotate("@StR*", 0, @0, @180, @0, null,true);

	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�b.png");

	CreateWindow("�}����", 19000, 0, 192, 1024, 192, false);
	SetAlias("�}����","�}����");
	CreateTextureEX("�}����/�}����", 5000, Center, Middle, "cg/bg/bg005_ɽ��_02.jpg");
	Move("�}����/�}����", 0, @0, @10, null, true);
	Zoom("�}����/�}����", 0, 2000, 2000, null, true);
	SetShade("�}����/�}����", HEAVY);
	CreateTextureEX("�}����/�}��", 5100, Center, -340, "cg/st/resize/stѩ܇�_ͨ��_˽��_l.png");

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0350340a12">
����ѽ�������˰�����

{	FadeStCR(300,false);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md06/0350350a03">
���š���

{	FadeStL(300,false);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md06/0350360a02">
������������

{	FadeStR(300,false);
	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/md06/0350370a04">
�������롣��

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0350380a12">
��������ѽ��������������������
�����Ժ���ʲô���㣿��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md06/0350390a03">
��������
�����ҹ����ɡ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md06/0350400a03">
������������ʲô�̶ȡ�
������Ļ�����ʱ�����ԡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/md06/0350410a04">
��������ˡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0350420a12">
����ֹ����أ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md06/0350430a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}����", 19000, 0, 384, 1024, 192, false);
	SetAlias("�}����","�}����");
	CreateTextureEX("�}����/�}����", 5000, Center, Middle, "cg/bg/bg004_�ɤӤ���a_02.jpg");
	Move("�}����/�}����", 0, @10, @0, null, true);
	Zoom("�}����/�}����", 0, 2000, 2000, null, true);
	SetShade("�}����/�}����", HEAVY);

//�����á�
	OnSE("se����_����_�᤺����01", 1000);
	DeleteStL(300,true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0350440a12">
�������٣��١�
����Ȼ��������ȥ�𡭡�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md06/0350450a03">
�������ʱ��ˣ������кδ��㣿��

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0350460a12">
���Ұ�������ظ�Ŷ��
���Ǽһ��Ѿ�������ɳ��׵Ķ���ˡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0350470a12">
���ҿ�û���й���������¡���
����Ҫ�ص���֯�����ҵĹ�������Ļ��
����֮�����ǿ�ν���ֶ����š���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md06/0350480a03">
����������
��������ȫ���Ը��ɡ���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/0350490a12">
���٣��٣��١�����
���ٻᡭ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����/�}��", 5100, 260, -230, "cg/st/resize/st����֦_ͨ��_˽��bl.png");
	CreateWindow("�}����", 19000, 0, 0, 1024, 192, false);
	SetAlias("�}����","�}����");
	CreateTextureEX("�}����/�}��", 5100, -240, -420, "cg/ev/resize/ev268_�䥯���Ȍ��Ť���һ��l.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100a]
�����˷ֵ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

	Move("�}����/�}����", 1000, @0, @-20, DxlAuto, false);
	Move("�}����/�}��", 6000, @0, -420, DxlAuto, false);
	Fade("�}����/*", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100b]
��ѩ���һ���뿪��<k>
{	Move("�}����/�}����", 1000, @-20, @0, DxlAuto, false);
	Move("�}����/�}��", 6000, 340, @0, DxlAuto, false);
	Fade("�}����/*", 1000, 1000, null, true);}
����������֦�ȴ���<k>
{	Move("�}����/�}��", 6000, -320, @0, DxlAuto, false);
	Fade("�}����/*", 1000, 1000, null, true);}
�����һ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 20000, Center, InBottom, "cg/bg/resize/bg002_��a_02.jpg");
	Move("�}����100", 10000, @0, 0, null, false);
	Fade("�}����100", 1500, 1000, null, true);

	Wait(1500);

	ClearFadeAll(3000, true);
	Wait(2000);

//���դ��ء�Ϧ
//����һ�������ڤν}�ϳ����ʤ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	OnBG(100, "bg003_�Ĥ�Ұ_02.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\", 2000, true);

	OnSE("se����_����_һ�i", 1000);

	Waitkey(1000);

	CreateSE("SE01","se�M��_���ߥ���_�L�Ԥ�`");
	MusicStart("SE01",0,1000,0,800,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	//CreateSE("SE01","se��Ȼ_�L_Ұԭ01");
	//MusicStart("SE01",3000,800,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��һ����ӹ���

��������һ˿������������Ƥ����
���һ�ͷ��ȥ��

����Ϥ����Ůվ��ǰ����
����������Ľ��У��ڲ�ãĺɫ֮�¡�

���˿̣������ҵ����������ǡ���

����ŭ��<k>
����̾��<k>
�����о��⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md06/0350500a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����迪�ڣ�����ܵ�����������ս���������⡣
���ҵ���Ƿ���һĨ��ɬ����<k>��Ȼ��ʶ����

�����ԡ�
������������

����ɲ�������ս���Ķ����еı��顣

�����������Ҿ�ҪͶ��������׷���ս���С�
��û������Ϊ�˸е����졣

���������������
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣���������Ц������°��
//�����ä�����Ҋ��Ф����ݳ������顣
//��һ�����g�ʤΤ�б���¤���᤯��褦�����礤�磻
//���פǱ�ʾ�����륦�����ȡ�Ϧ�դ�

//��Ϧ��

//��Ȥ�ȤΤ�� inc�Ѿ�
//	CreateTextureSP("����Ц��", 5000, @0, @0, "cg/ev/ev266_�����������Ц��.jpg");
//	DrawTransition("����Ц��", 100, 0, 1000, 100, AxlAuto, "cg/data/beam_03_00_0.png", true);
//	Wait(2000);
//	FadeDelete("����Ц��",1500,true);
	CreateColorEX("��", 15000, "WHITE");
	Fade("��", 500, 1000, null, true);

	FadeDelete("��", 500, false);
	OnSE("se��Ȼ_�L_Ұԭ02", 1000);

//��������ݳ��������Ϥ�����ؤ�����״������������ä���������ʼ���ţġ������ȥ�(����)����������ꤿ���ä��ΤǤ�᤿��

	CreateTextureSP("����Ц��", 5000, @0, @0, "cg/ev/ev266_�����������Ц��.jpg");
	CreateTextureSP("����Ц����", 4500, @0, @0, "cg/ev/ev266_�����������Ц��.jpg");

	Request("����Ц��", Smoothing);
	Move("����Ц��", 0, @100, @0, null, false);

	Zoom("����Ц��", 0, 2000, 2000, null, false);
	Move("����Ц��", 1500, @0, @100, null, false);
	FadeDelete("����Ц��",1500,true);

	Wait(2000);

	OnBG(100, "bg002_��a_02.jpg");
	FadeBG(0, true);

	FadeDelete("����Ц����",1500,true);

	CreateColorEXadd("��", 15000, "WHITE");
	Fade("��", 0, 1000, null, true);

	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE02",0,1000,0,1250,null,false);

	FadeDelete("��", 500, true);
	WaitKey(1000);
	CreateSE("SE03","se���L_����_�z_̤���z��01");
	MusicStart("SE03",0,1000,0,1250,null,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
������ĵ������װ�ס�
����Ҳ׷�����

������������Լ��
�������Ǹ����֡�

����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥ�����
//��װ�����������`��
	CreateColorEX("��", 15000, "WHITE");
	Fade("��", 1000, 1000, null, true);

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	WaitKey(4000);

	SetVolume("@mbgm*", 3000, 0, null);

	WaitPlay("@m*", null);
	WaitKey(3000);

}

..//������ָ��
//�Υե����롡"md06_036.nss"